uint64_t WorkoutSignposter.emit(signpost:)(uint64_t a1)
{
  v118 = type metadata accessor for OSSignpostError();
  v112 = *(v118 - 8);
  v3 = *(v112 + 64);
  MEMORY[0x28223BE20](v118);
  v117 = &v112 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v124 = &v112 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v112 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v112 - v16;
  v18 = OBJC_IVAR___WOCoreWorkoutSignposter_lock;
  swift_beginAccess();
  v113 = v18;
  os_unfair_lock_lock((v1 + v18));
  swift_endAccess();
  Current = CFAbsoluteTimeGetCurrent();
  v20 = OBJC_IVAR___WOCoreWorkoutSignposter_signposter;
  v115 = a1;
  v21 = WorkoutSignpost.name.getter(a1);
  static OSSignpostID.exclusive.getter();
  v131 = v1;
  v128 = v20;
  v22 = OSSignposter.logHandle.getter();
  v23 = static os_signpost_type_t.event.getter();
  if (OS_os_log.signpostsEnabled.getter())
  {
    if (!v21)
    {
      goto LABEL_77;
    }

    v24 = swift_slowAlloc();
    *v24 = 0;
    v25 = OSSignpostID.rawValue.getter();
    _os_signpost_emit_with_name_impl(&dword_20AEA4000, v22, v23, v25, v21, "", v24, 2u);
    MEMORY[0x20F2E9420](v24, -1, -1);
  }

  v126 = *(v6 + 8);
  v127 = v6 + 8;
  v126(v17, v5);
  if (one-time initialization token for perf != -1)
  {
    goto LABEL_73;
  }

  while (1)
  {
    v26 = type metadata accessor for Logger();
    v130 = __swift_project_value_buffer(v26, static WOLog.perf);
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v135 = v30;
      *v29 = 136315394;
      WorkoutSignpost.name.getter(v115);
      v31 = StaticString.description.getter();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v135);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2048;
      *(v29 + 14) = Current;
      _os_log_impl(&dword_20AEA4000, v27, v28, "[WorkoutSignpost] event emitted: %s, timestamp: %f", v29, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      MEMORY[0x20F2E9420](v30, -1, -1);
      MEMORY[0x20F2E9420](v29, -1, -1);
    }

    v34 = *(v131 + OBJC_IVAR___WOCoreWorkoutSignposter_beginSignposts);
    v35 = *(v34 + 16);
    v123 = v10;
    if (v35)
    {
      v36 = specialized __RawDictionaryStorage.find<A>(_:)(v115);
      if (v37)
      {
        v17 = *(*(v34 + 56) + 8 * v36);
        if (v17 >> 62)
        {
          goto LABEL_79;
        }

        v38 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v38)
        {
          goto LABEL_11;
        }
      }
    }

LABEL_31:
    v66 = *(v131 + OBJC_IVAR___WOCoreWorkoutSignposter_endSignposts);
    if (!*(v66 + 16))
    {
      break;
    }

    v67 = specialized __RawDictionaryStorage.find<A>(_:)(v115);
    if ((v68 & 1) == 0)
    {
      break;
    }

    v6 = *(*(v66 + 56) + 8 * v67);
    if (v6 >> 62)
    {
      if (v6 < 0)
      {
        v111 = *(*(v66 + 56) + 8 * v67);
      }

      v69 = __CocoaSet.count.getter();
      if (!v69)
      {
        break;
      }
    }

    else
    {
      v69 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v69)
      {
        break;
      }
    }

    v122 = v5;
    v125 = v6 & 0xC000000000000001;
    v120 = v6 & 0xFFFFFFFFFFFFFF8;
    *&v116 = v112 + 88;
    LODWORD(v115) = *MEMORY[0x277D85B00];
    v112 += 8;

    v5 = 0;
    *&v70 = 136315138;
    v114 = v70;
    *&v70 = 136315650;
    v119 = v70;
    v121 = v6;
    v124 = v69;
    while (1)
    {
      if (v125)
      {
        v71 = MEMORY[0x20F2E7A20](v5, v6);
        v72 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v5 >= *(v120 + 16))
        {
          goto LABEL_69;
        }

        v71 = *(v6 + 8 * v5 + 32);

        v72 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_67;
        }
      }

      if (!*(v71 + 72))
      {

        v75 = Logger.logObject.getter();
        v76 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v75, v76))
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          v129 = v72;
          v79 = v78;
          v134 = v78;
          *v77 = v114;
          v80 = *(v71 + 16);
          v81 = *(v71 + 24);
          v82 = *(v71 + 32);

          v10 = v123;
          v135 = StaticString.description.getter();
          v136 = v83;
          MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
          WorkoutSignpost.name.getter(*(v71 + 40));
          v84 = StaticString.description.getter();
          MEMORY[0x20F2E6D80](v84);

          MEMORY[0x20F2E6D80](2108704, 0xE300000000000000);
          WorkoutSignpost.name.getter(*(v71 + 48));
          v85 = StaticString.description.getter();
          MEMORY[0x20F2E6D80](v85);

          MEMORY[0x20F2E6D80](41, 0xE100000000000000);

          v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v136, &v134);

          *(v77 + 4) = v15;
          _os_log_impl(&dword_20AEA4000, v75, v76, "[WorkoutSignpost] endInterval for %s doesn't have a corresponding beginInterval or has already been ended", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v79);
          v86 = v79;
          v72 = v129;
          MEMORY[0x20F2E9420](v86, -1, -1);
          v87 = v77;
          v69 = v124;
          MEMORY[0x20F2E9420](v87, -1, -1);
        }

        goto LABEL_37;
      }

      v129 = v72;
      v73 = *(v71 + 16);
      v15 = *(v71 + 32);

      v17 = OSSignposter.logHandle.getter();
      OSSignpostIntervalState.signpostID.getter();
      v74 = static os_signpost_type_t.end.getter();
      if (OS_os_log.signpostsEnabled.getter())
      {
        break;
      }

LABEL_58:

      v126(v10, v122);
      *(v71 + 64) = Current;
      v93 = *(v71 + 72);
      *(v71 + 72) = 0;

      v94 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v94, v15))
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        v134 = v96;
        *v95 = v119;
        v97 = *(v71 + 16);
        v98 = *(v71 + 24);
        v99 = *(v71 + 32);

        v10 = v123;
        v135 = StaticString.description.getter();
        v136 = v100;
        MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
        WorkoutSignpost.name.getter(*(v71 + 40));
        v101 = StaticString.description.getter();
        MEMORY[0x20F2E6D80](v101);

        MEMORY[0x20F2E6D80](2108704, 0xE300000000000000);
        WorkoutSignpost.name.getter(*(v71 + 48));
        v102 = StaticString.description.getter();
        MEMORY[0x20F2E6D80](v102);

        MEMORY[0x20F2E6D80](41, 0xE100000000000000);

        v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v136, &v134);

        *(v95 + 4) = v103;
        *(v95 + 12) = 2048;
        *(v95 + 14) = Current;
        *(v95 + 22) = 2048;
        v105 = *(v71 + 56);
        v104 = *(v71 + 64);
        if (v105 >= v104)
        {
          v106 = 0.0;
        }

        else
        {
          v106 = v104 - v105;
        }

        *(v95 + 24) = v106;
        _os_log_impl(&dword_20AEA4000, v94, v15, "[WorkoutSignpost] endInterval: %s, timestamp: %f, elapsedTime: %f", v95, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v96);
        MEMORY[0x20F2E9420](v96, -1, -1);
        v107 = v95;
        v6 = v121;
        MEMORY[0x20F2E9420](v107, -1, -1);
      }

      v69 = v124;
      v72 = v129;
LABEL_37:
      ++v5;
      if (v72 == v69)
      {

        goto LABEL_65;
      }
    }

    if (v15)
    {
      if (v73 >> 32)
      {
        goto LABEL_74;
      }

      if ((v73 & 0xFFFFF800) == 0xD800)
      {
        goto LABEL_78;
      }

      if (v73 > 0x10FFFF)
      {
        goto LABEL_75;
      }

      v73 = &v133;
LABEL_55:

      v88 = v117;
      checkForErrorAndConsumeState(state:)();

      v89 = (*v116)(v88, v118);
      v90 = "[Error] Interval already ended";
      if (v89 != v115)
      {
        (*v112)(v117, v118);
        v90 = "";
      }

      v91 = swift_slowAlloc();
      *v91 = 0;
      v92 = OSSignpostID.rawValue.getter();
      _os_signpost_emit_with_name_impl(&dword_20AEA4000, v17, v74, v92, v73, v90, v91, 2u);
      MEMORY[0x20F2E9420](v91, -1, -1);
      v6 = v121;
      goto LABEL_58;
    }

    if (v73)
    {
      goto LABEL_55;
    }

    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
    while (2)
    {
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      v38 = __CocoaSet.count.getter();
      if (!v38)
      {
        goto LABEL_31;
      }

LABEL_11:
      v122 = v17 & 0xC000000000000001;
      *&v114 = v17 & 0xFFFFFFFFFFFFFF8;
      *&v119 = v6 + 16;

      v6 = 0;
      *&v39 = 136315394;
      v116 = v39;
      v125 = v15;
      v120 = v38;
      v121 = v17;
LABEL_13:
      if (v122)
      {
        v40 = MEMORY[0x20F2E7A20](v6, v17);
        v41 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        goto LABEL_19;
      }

      if (v6 >= *(v114 + 16))
      {
        goto LABEL_68;
      }

      v40 = *(v17 + 8 * v6 + 32);

      v41 = v6 + 1;
      if (!__OFADD__(v6, 1))
      {
LABEL_19:
        v129 = v41;
        v42 = *(v40 + 16);
        v43 = *(v40 + 32);
        static OSSignpostID.exclusive.getter();
        v17 = OSSignposter.logHandle.getter();
        v44 = static os_signpost_type_t.begin.getter();
        if (OS_os_log.signpostsEnabled.getter())
        {
          if (v43)
          {
            if (v42 >> 32)
            {
              goto LABEL_70;
            }

            if ((v42 & 0xFFFFF800) == 0xD800)
            {
              continue;
            }

            if (v42 > 0x10FFFF)
            {
              goto LABEL_72;
            }

            v42 = &v132;
          }

          else if (!v42)
          {
            goto LABEL_71;
          }

          v45 = swift_slowAlloc();
          *v45 = 0;
          v46 = v125;
          v47 = OSSignpostID.rawValue.getter();
          _os_signpost_emit_with_name_impl(&dword_20AEA4000, v17, v44, v47, v42, "", v45, 2u);
          v48 = v45;
          v15 = v46;
          MEMORY[0x20F2E9420](v48, -1, -1);
        }

        (*v119)(v124, v15, v5);
        v49 = type metadata accessor for OSSignpostIntervalState();
        v50 = *(v49 + 48);
        v51 = *(v49 + 52);
        swift_allocObject();
        v52 = OSSignpostIntervalState.init(id:isOpen:)();
        v126(v15, v5);
        v53 = *(v40 + 72);
        *(v40 + 72) = v52;

        *(v40 + 56) = Current;

        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v134 = v57;
          *v56 = v116;
          v58 = *(v40 + 16);
          v59 = *(v40 + 24);
          v60 = v5;
          v61 = *(v40 + 32);

          v5 = v60;
          v10 = v123;
          v135 = StaticString.description.getter();
          v136 = v62;
          MEMORY[0x20F2E6D80](10272, 0xE200000000000000);
          WorkoutSignpost.name.getter(*(v40 + 40));
          v63 = StaticString.description.getter();
          MEMORY[0x20F2E6D80](v63);

          MEMORY[0x20F2E6D80](2108704, 0xE300000000000000);
          WorkoutSignpost.name.getter(*(v40 + 48));
          v64 = StaticString.description.getter();
          MEMORY[0x20F2E6D80](v64);

          MEMORY[0x20F2E6D80](41, 0xE100000000000000);

          v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v135, v136, &v134);

          *(v56 + 4) = v65;
          *(v56 + 12) = 2048;
          *(v56 + 14) = Current;
          _os_log_impl(&dword_20AEA4000, v54, v55, "[WorkoutSignpost] beginInterval: %s, timestamp: %f", v56, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v57);
          MEMORY[0x20F2E9420](v57, -1, -1);
          MEMORY[0x20F2E9420](v56, -1, -1);
        }

        v17 = v121;
        ++v6;
        v15 = v125;
        if (v129 == v120)
        {

          goto LABEL_31;
        }

        goto LABEL_13;
      }

      break;
    }

    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    swift_once();
  }

LABEL_65:
  v108 = v131;
  v109 = v113;
  swift_beginAccess();
  os_unfair_lock_unlock((v108 + v109));
  return swift_endAccess();
}

id WorkoutSignposter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WorkoutSignposter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WorkoutSignposter();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = specialized Dictionary._Variant.asNative.modify(v6);
  v6[9] = specialized _NativeDictionary.subscript.modify(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x50uLL);
  }

  v6 = v5;
  *a1 = v5;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[8] = specialized Dictionary._Variant.asNative.modify(v6);
  v6[9] = specialized _NativeDictionary.subscript.modify(v6 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = specialized Dictionary._Variant.asNative.modify(v8);
  v8[9] = specialized _NativeDictionary.subscript.modify(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(uint64_t **a1)
{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 32) = v12 & 1;
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v20 = *v4;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return _NativeDictionary.subscript.modifyspecialized ;
}

{
  v4 = v3;
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 8) = a2;
  *(v8 + 16) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 32) = v12 & 1;
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
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v20 = *v4;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v21 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    type metadata accessor for ExternalProvider();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 24) = v11;
  if (v17)
  {
    v22 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v22 = 0;
  }

  *v9 = v22;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(*(v5 + 56) + 8 * v4) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    specialized _NativeDictionary._delete(at:)(v1[3], *v1[2]);
  }

  v6 = *v1;

  free(v1);
}

{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 32);
  if (v2)
  {
    v4 = v1[3];
    v5 = *v1[2];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v4, v1[1], v2, v5);
    }
  }

  else if ((*a1)[4])
  {
    v6 = v1[3];
    v7 = *v1[2];
    v8 = *(*(v7 + 48) + 8 * v6);

    specialized _NativeDictionary._delete(at:)(v6, v7);
  }

  v9 = *v1;

  free(v1);
}

{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      specialized _NativeDictionary._insert(at:key:value:)(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    v6 = v1[4];
    v7 = *v1[3];
    outlined destroy of String(*(v7 + 48) + 16 * v6);
    specialized _NativeDictionary._delete(at:)(v6, v7);
  }

  v8 = *v1;

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 40) = v14 & 1;
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
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v22 = *v5;
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return _NativeDictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

unint64_t specialized WorkoutSignpost.init(rawValue:)(unint64_t result)
{
  if (result > 0xF)
  {
    return 0;
  }

  return result;
}

uint64_t type metadata accessor for WorkoutSignposter()
{
  result = type metadata singleton initialization cache for WorkoutSignposter;
  if (!type metadata singleton initialization cache for WorkoutSignposter)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutSignpost and conformance WorkoutSignpost()
{
  result = lazy protocol witness table cache variable for type WorkoutSignpost and conformance WorkoutSignpost;
  if (!lazy protocol witness table cache variable for type WorkoutSignpost and conformance WorkoutSignpost)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutSignpost and conformance WorkoutSignpost);
  }

  return result;
}

uint64_t type metadata completion function for WorkoutSignposter()
{
  result = type metadata accessor for OSSignposter();
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

Swift::Double __swiftcall RaceWorkoutConfiguration.raceTimeFrom(_:)(HKWorkout a1)
{
  [(objc_class *)a1.super.super.super.isa fiui_duration];
  v3 = v2;
  v4 = [(objc_class *)a1.super.super.super.isa metadata];
  if (v4)
  {
    v5 = v4;
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v7 = 0.0;
    if (*(v6 + 16))
    {
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002DLL, 0x800000020B4650F0);
      if (v9)
      {
        outlined init with copy of Any(*(v6 + 56) + 32 * v8, v14);
        if (swift_dynamicCast())
        {
          v7 = v13;
        }
      }
    }

    if (*(v6 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000020B465180), (v11 & 1) != 0))
    {
      outlined init with copy of Any(*(v6 + 56) + 32 * v10, v14);

      if (swift_dynamicCast())
      {
        v3 = v13;
      }
    }

    else
    {
    }

    return v3 - v7;
  }

  return v3;
}

Swift::Double_optional __swiftcall RaceWorkoutConfiguration.secondsAheadFrom(_:)(HKWorkout a1)
{
  v1 = [(objc_class *)a1.super.super.super.isa metadata];
  if (v1)
  {
    v3 = v1;
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    if (*(v4 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000020B465230), (v6 & 1) != 0))
    {
      outlined init with copy of Any(*(v4 + 56) + 32 * v5, v8);

      if (swift_dynamicCast())
      {
        LOBYTE(v1) = v7;
        goto LABEL_8;
      }
    }

    else
    {
    }

    LOBYTE(v1) = 0;
  }

LABEL_8:
  result.value = v2;
  result.is_nil = v1;
  return result;
}

Swift::Bool __swiftcall RaceWorkoutConfiguration.shouldShowResultsRow(metadata:)(Swift::OpaquePointer_optional metadata)
{
  if (!metadata.value._rawValue)
  {
    v14 = 0u;
    v15 = 0u;
    outlined destroy of Any?(&v14);
    return 0;
  }

  v2 = v1;
  rawValue = metadata.value._rawValue;
  if (*(metadata.value._rawValue + 2))
  {
    v4 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000027, 0x800000020B454C40);
    if (v5)
    {
      outlined init with copy of Any(rawValue[7] + 32 * v4, &v14);
      if (swift_dynamicCast())
      {
        if (LOBYTE(v13))
        {
          return 0;
        }
      }
    }
  }

  if (rawValue[2])
  {
    v6 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000020B465180);
    if (v7)
    {
      outlined init with copy of Any(rawValue[7] + 32 * v6, &v14);
      outlined destroy of Any?(&v14);
      return 1;
    }
  }

  v14 = 0u;
  v15 = 0u;
  outlined destroy of Any?(&v14);
  if (!rawValue[2])
  {
    return 0;
  }

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000003BLL, 0x800000020B4651F0);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(rawValue[7] + 32 * v9, &v14);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (LOBYTE(v13) == 1)
  {
    v11 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_lastWorkoutDistance;
  }

  else
  {
    v11 = &OBJC_IVAR____TtC11WorkoutCore24RaceWorkoutConfiguration_bestWorkoutDistance;
  }

  v12 = (v2 + *v11);
  swift_beginAccess();
  return v13 / *v12 >= 0.8;
}

uint64_t Apple_Workout_Core_ElapsedTimeMetricsPublisher.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v1 = a1 + *(type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher() + 20);
  return UnknownStorage.init()();
}

uint64_t type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher()
{
  result = type metadata singleton initialization cache for Apple_Workout_Core_ElapsedTimeMetricsPublisher;
  if (!type metadata singleton initialization cache for Apple_Workout_Core_ElapsedTimeMetricsPublisher)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple_Workout_Core_ElapsedTimeMetricsPublisher.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher() + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Workout_Core_ElapsedTimeMetricsPublisher.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher() + 20);
  v4 = type metadata accessor for UnknownStorage();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t static Apple_Workout_Core_ElapsedTimeMetricsPublisher._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_ElapsedTimeMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Apple_Workout_Core_ElapsedTimeMetricsPublisher.decodeMessage<A>(decoder:)()
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

uint64_t Apple_Workout_Core_ElapsedTimeMetricsPublisher.traverse<A>(visitor:)()
{
  if (!*v0 || (result = dispatch thunk of Visitor.visitSingularDoubleField(value:fieldNumber:)(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher() + 20);
    return UnknownStorage.traverse<A>(visitor:)();
  }

  return result;
}

uint64_t static Apple_Workout_Core_ElapsedTimeMetricsPublisher.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher() + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

Swift::Int Apple_Workout_Core_ElapsedTimeMetricsPublisher.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Message.init() in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  v2 = a2 + *(a1 + 20);
  return UnknownStorage.init()();
}

uint64_t protocol witness for Message.unknownFields.getter in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t protocol witness for Message.unknownFields.setter in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = type metadata accessor for UnknownStorage();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t a2))()
{
  result = protocol witness for Message.unknownFields.modify in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t protocol witness for Message.isEqualTo(message:) in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1, uint64_t a2)
{
  v4 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t protocol witness for static _ProtoNameProviding._protobuf_nameMap.getter in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for _protobuf_nameMap != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for _NameMap();
  v3 = __swift_project_value_buffer(v2, static Apple_Workout_Core_ElapsedTimeMetricsPublisher._protobuf_nameMap);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher(uint64_t a1)
{
  v2 = _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);

  return MEMORY[0x28217E428](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher()
{
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(&lazy protocol witness table cache variable for type Apple_Workout_Core_ElapsedTimeMetricsPublisher and conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher, type metadata accessor for Apple_Workout_Core_ElapsedTimeMetricsPublisher);

  return Message.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher()
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Apple_Workout_Core_ElapsedTimeMetricsPublisher(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a3 + 20);
  type metadata accessor for UnknownStorage();
  _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(&lazy protocol witness table cache variable for type UnknownStorage and conformance UnknownStorage, MEMORY[0x277D216C8]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t type metadata completion function for Apple_Workout_Core_ElapsedTimeMetricsPublisher()
{
  result = type metadata accessor for UnknownStorage();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s21InternalSwiftProtobuf14UnknownStorageVACSQAAWlTm_5(unint64_t *a1, void (*a2)(uint64_t))
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

id _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy11WorkoutCore0D23VoiceMuteAnalyticsEventV0H3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLOSo8NSObjectCG_SS_AMts5NeverOTg504_s11d8Core0A23fghi14V0E3Key33_4127klmnopqr7FLLOSo8s36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5t19OIegnrzr_TR04_s11a8v44A23cdef19V05buildeF0SDySSSo8p25CGyFSS_AFtAC0yZ38_4127hijklmnO13FLLO_AFtXEfU_Tf3nnnpf_nTf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v37 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v4 = a1;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v2 = v37;
  v8 = result;
  v9 = 0;
  v36 = *(a1 + 36);
  v31 = a1 + 72;
  v32 = v1;
  v33 = a1 + 64;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v5 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_33;
    }

    if (v36 != *(v4 + 36))
    {
      goto LABEL_34;
    }

    v12 = *(*(v4 + 48) + v8);
    if (v12 <= 1)
    {
      if (!*(*(v4 + 48) + v8))
      {
        v13 = 0x7974697669746361;
        goto LABEL_15;
      }

      v35 = 0xD000000000000013;
      v14 = 0x800000020B454C70;
    }

    else
    {
      if (v12 == 2)
      {
        v34 = 0xE700000000000000;
        v35 = 0x646574754D7369;
        goto LABEL_20;
      }

      if (v12 == 3)
      {
        v13 = 0x6E6F697461636F6CLL;
LABEL_15:
        v34 = 0xEC00000065707954;
        v35 = v13;
        goto LABEL_20;
      }

      v35 = 0xD000000000000011;
      v14 = 0x800000020B454CA0;
    }

    v34 = v14;
LABEL_20:
    v15 = *(*(v4 + 56) + 8 * v8);
    v38 = v2;
    v16 = v4;
    v17 = *(v2 + 16);
    v18 = *(v2 + 24);
    v19 = v2;
    result = v15;
    v2 = v19;
    if (v17 >= v18 >> 1)
    {
      v30 = result;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v17 + 1, 1);
      result = v30;
      v2 = v38;
    }

    *(v2 + 16) = v17 + 1;
    v20 = (v2 + 24 * v17);
    v20[4] = v35;
    v20[5] = v34;
    v20[6] = result;
    v10 = 1 << *(v16 + 32);
    v5 = v33;
    if (v8 >= v10)
    {
      goto LABEL_35;
    }

    v21 = *(v33 + 8 * v11);
    if ((v21 & (1 << v8)) == 0)
    {
      goto LABEL_36;
    }

    v4 = v16;
    if (v36 != *(v16 + 36))
    {
      goto LABEL_37;
    }

    v22 = v21 & (-2 << (v8 & 0x3F));
    if (v22)
    {
      v10 = __clz(__rbit64(v22)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v25 = (v31 + 8 * v11);
      while (v24 < (v10 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          v28 = v2;
          result = outlined consume of [WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey : NSObject].Index._Variant(v8, v36, 0);
          v2 = v28;
          v10 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      v29 = v2;
      result = outlined consume of [WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey : NSObject].Index._Variant(v8, v36, 0);
      v2 = v29;
    }

LABEL_4:
    ++v9;
    v8 = v10;
    if (v9 == v32)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
  return result;
}

uint64_t WorkoutVoiceMuteAnalyticsEvent.buildAnalyticsEvent()()
{
  v1 = v0;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore0C23VoiceMuteAnalyticsEventV0G3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLO_So8NSObjectCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v3 = *(v1 + 16);
  [v3 effectiveTypeIdentifier];
  v4 = _HKWorkoutActivityNameForActivityType();
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    v9._object = 0x800000020B456540;
    v9._countAndFlagsBits = 0xD000000000000015;
    if (String.hasPrefix(_:)(v9))
    {
      v10 = String.count.getter();
      v11 = specialized Collection.dropFirst(_:)(v10, v6, v8);
      v13 = v12;
      v15 = v14;
      v17 = v16;

      v6 = MEMORY[0x20F2E6D00](v11, v13, v15, v17);
      v8 = v18;
    }
  }

  else
  {
    v8 = 0x800000020B456520;
    v6 = 0xD000000000000010;
  }

  v19 = MEMORY[0x20F2E6C00](v6, v8);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v2;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v19, 0, isUniquelyReferenced_nonNull_native);
  v21 = *(v1 + 48);
  if ((*&v21 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v21 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v21 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v22 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v23 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 1, v23);
  v24 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v25 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v24, 2, v25);
  [v3 isIndoor];
  type metadata accessor for NSString();
  v26 = NSString.init(stringLiteral:)();
  v27 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, 3, v27);
  v28 = MEMORY[0x20F2E6C00](*(v1 + 32), *(v1 + 40));
  v29 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v28, 4, v29);
  v30 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy11WorkoutCore0D23VoiceMuteAnalyticsEventV0H3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLOSo8NSObjectCG_SS_AMts5NeverOTg504_s11d8Core0A23fghi14V0E3Key33_4127klmnopqr7FLLOSo8s36CSSAHIgygoo_AF3key_AH5valuetSS_AHts5t19OIegnrzr_TR04_s11a8v44A23cdef19V05buildeF0SDySSSo8p25CGyFSS_AFtAC0yZ38_4127hijklmnO13FLLO_AFtXEfU_Tf3nnnpf_nTf1cn_n(v34);

  if (v30[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSo8NSObjectCGMd, &_ss18_DictionaryStorageCySSSo8NSObjectCGMR);
    v31 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v31 = MEMORY[0x277D84F98];
  }

  v34 = v31;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v32, 1, &v34);

  return v34;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x7974697669746361;
  v4 = 0xE700000000000000;
  v5 = 0x646574754D7369;
  v6 = 0x6E6F697461636F6CLL;
  v7 = 0x800000020B454CA0;
  if (v2 == 3)
  {
    v7 = 0xEC00000065707954;
  }

  else
  {
    v6 = 0xD000000000000011;
  }

  if (v2 != 2)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x800000020B454C70;
  if (*v1)
  {
    v3 = 0xD000000000000013;
  }

  else
  {
    v8 = 0xEC00000065707954;
  }

  if (*v1 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v5;
  }

  if (*v1 <= 1u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v4;
  }

  *a1 = v9;
  a1[1] = v10;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, v5 & 1);
    v18 = *a3;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v22 = v11;
  specialized _NativeDictionary.copy()();
  v11 = v22;
  if (v17)
  {
LABEL_8:
    v20 = swift_allocError();
    swift_willThrow();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v23 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v24 = (v23[6] + 16 * v11);
  *v24 = v7;
  v24[1] = v6;
  *(v23[7] + 8 * v11) = v10;
  v25 = v23[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    MEMORY[0x20F2E6D80](0xD00000000000001BLL, 0x800000020B467020);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  v23[2] = v26;
  if (v41 != 1)
  {
    v5 = (a1 + 9);
    v27 = 1;
    while (v27 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v28 = *v5;
      v29 = *a3;

      v10 = v28;
      v30 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v15 = __OFADD__(v32, v33);
      v34 = v32 + v33;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v31;
      if (v29[3] < v34)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v34, 1);
        v35 = *a3;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v6);
        if ((v17 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v30 >> 6) + 64) |= 1 << v30;
      v38 = (v37[6] + 16 * v30);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v30) = v10;
      v39 = v37[2];
      v15 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v27;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v27)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t getEnumTagSinglePayload for WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for WorkoutVoiceMuteAnalyticsEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for WorkoutVoiceMuteAnalyticsEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey()
{
  result = lazy protocol witness table cache variable for type WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey;
  if (!lazy protocol witness table cache variable for type WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey and conformance WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey);
  }

  return result;
}

unint64_t specialized WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of WorkoutVoiceMuteAnalyticsEvent.AnalyticsKey.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t ChartDataProvider.__allocating_init(startDate:units:timeWindow:maxBuckets:populateAsynchronously:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v31 = a4;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = *(v5 + 48);
  v16 = *(v5 + 52);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D84F90];
  v32 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
  Published.init(initialValue:)();
  v19 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  *(v17 + v19) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(v18);
  v25 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue;
  v24[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v32 = v18;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v26 + 104))(v10, *MEMORY[0x277D85260], v27);
  *(v17 + v25) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v20 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate;
  v21 = type metadata accessor for Date();
  (*(*(v21 - 8) + 32))(v17 + v20, v28, v21);
  v22 = v30;
  *(v17 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units) = v29;
  *(v17 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow) = a5;
  *(v17 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets) = v22;
  *(v17 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) = v31;
  return v17;
}

uint64_t ChartDataProvider.dataElements.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t ChartDataProvider.dataElements.setter()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

void (*ChartDataProvider.dataElements.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = static Published.subscript.modify();
  return ChartDataProvider.dataElements.modify;
}

void ChartDataProvider.dataElements.modify(void *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  v3 = *(*a1 + 32);
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t key path getter for ChartDataProvider.$dataElements : ChartDataProvider(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t key path setter for ChartDataProvider.$dataElements : ChartDataProvider(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t ChartDataProvider.$dataElements.getter()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.getter();
  return swift_endAccess();
}

uint64_t ChartDataProvider.$dataElements.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

void (*ChartDataProvider.$dataElements.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMd, &_s7Combine9PublishedV9PublisherVySay11WorkoutCore0D16ChartDataElementCG_GMR);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  Published.projectedValue.getter();
  swift_endAccess();
  return ChartDataProvider.$dataElements.modify;
}

void ChartDataProvider.$dataElements.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[16];
  v6 = v3[13];
  v13 = v3[14];
  v8 = v3[11];
  v7 = v3[12];
  v10 = v3[9];
  v9 = v3[10];
  if (a2)
  {
    v4(v3[12], v6, v3[10]);
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v11 = *(v8 + 8);
    v11(v6, v9);
    v12 = v13;
    v11(v13, v9);
  }

  else
  {
    swift_beginAccess();
    Published.projectedValue.setter();
    swift_endAccess();
    v12 = v13;
    (*(v8 + 8))(v13, v9);
  }

  free(v12);
  free(v6);
  free(v7);

  free(v3);
}

uint64_t ChartDataProvider.init(startDate:units:timeWindow:maxBuckets:populateAsynchronously:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v6 = v5;
  v35 = a4;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v8 - 8);
  v31 = v8;
  v9 = *(v30 + 64);
  MEMORY[0x28223BE20](v8);
  v29 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for OS_dispatch_queue.Attributes();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v27 - v18;
  v20 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v21 = MEMORY[0x277D84F90];
  v36 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
  Published.init(initialValue:)();
  (*(v16 + 32))(v5 + v20, v19, v15);
  v22 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  *(v5 + v22) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(v21);
  v28 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue;
  type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v36 = v21;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v29, *MEMORY[0x277D85260], v31);
  *(v5 + v28) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v23 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate;
  v24 = type metadata accessor for Date();
  (*(*(v24 - 8) + 32))(v6 + v23, v32, v24);
  v25 = v34;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units) = v33;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow) = a5;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets) = v25;
  *(v6 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) = v35;
  return v6;
}

Swift::Void __swiftcall ChartDataProvider.add(samples:)(Swift::OpaquePointer samples)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) == 1)
  {
    v17 = *(v1 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue);
    v18 = v11;
    v19 = v10;
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2]._rawValue = v14;
    v15[3]._rawValue = samples._rawValue;
    aBlock[4] = partial apply for closure #1 in ChartDataProvider.add(samples:);
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_60;
    v16 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v20 = MEMORY[0x277D84F90];
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v13, v7, v16);
    _Block_release(v16);
    (*(v4 + 8))(v7, v3);
    (*(v18 + 8))(v13, v19);
  }

  else
  {

    ChartDataProvider.notThreadSafe_add(samples:)(samples._rawValue);
  }
}

uint64_t closure #1 in ChartDataProvider.add(samples:)(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    ChartDataProvider.notThreadSafe_add(samples:)(a2);
  }

  return result;
}

uint64_t ChartDataProvider.notThreadSafe_add(samples:)(uint64_t a1)
{
  v2 = v1;
  v98 = type metadata accessor for DispatchWorkItemFlags();
  v97 = *(v98 - 8);
  v4 = *(v97 + 64);
  MEMORY[0x28223BE20](v98);
  v95 = &v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for DispatchQoS();
  v94 = *(v96 - 8);
  v6 = *(v94 + 64);
  MEMORY[0x28223BE20](v96);
  v93 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = type metadata accessor for DateInterval();
  v8 = *(v109 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v109);
  v108 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v15 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v99 = &v93 - v16;
  v17 = type metadata accessor for Date();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v17);
  v110 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v107 = &v93 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v115 = &v93 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v93 - v27;
  MEMORY[0x28223BE20](v26);
  v100 = &v93 - v29;
  v30 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate;
  v31 = *(v2 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow);
  v32 = *(v2 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets);
  v116 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  swift_beginAccess();
  v33 = *(a1 + 16);
  v117 = v17;
  v101 = v18;
  v111 = v2;
  if (v33)
  {
    v106 = v30;
    v105 = v15;
    v34 = v31 / v32;
    v103 = *(v2 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_units);
    v113 = (v18 + 8);
    v102 = (v8 + 8);
    v35 = a1 + 32;
    v114 = v33;
    v104 = v35;
    do
    {
      outlined init with copy of ChartableSample(v35, aBlock);
      v49 = v119;
      v48 = v120;
      __swift_project_boxed_opaque_existential_1(aBlock, v119);
      (*(v48 + 1))(v49, v48);
      result = Date.timeIntervalSince(_:)();
      v52 = v51 / v34;
      if ((*&v52 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        return result;
      }

      if (v52 <= -9.22337204e18)
      {
        goto LABEL_32;
      }

      if (v52 >= 9.22337204e18)
      {
        goto LABEL_33;
      }

      Date.addingTimeInterval(_:)();
      v112 = *v113;
      v112(v115, v17);
      v53 = v119;
      v54 = v120;
      __swift_project_boxed_opaque_existential_1(aBlock, v119);
      (*(v54 + 1))(v53, v54);
      v55 = v119;
      v56 = v120;
      __swift_project_boxed_opaque_existential_1(aBlock, v119);
      (*(v56 + 2))(v55, v56);
      v57 = v108;
      DateInterval.init(start:end:)();
      DateInterval.duration.getter();
      v44 = v58;
      (*v102)(v57, v109);
      v59 = *(v2 + v116);
      if (*(v59 + 16))
      {
        v60 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
        v37 = v104;
        if (v61)
        {
          v36 = *(*(v59 + 56) + 8 * v60);
        }

        else
        {
          type metadata accessor for WorkoutDataBucket();
          v36 = swift_allocObject();
          *(v36 + 16) = 0;
          *(v36 + 24) = 0;
        }
      }

      else
      {
        type metadata accessor for WorkoutDataBucket();
        v36 = swift_allocObject();
        *(v36 + 16) = 0;
        *(v36 + 24) = 0;
        v37 = v104;
      }

      v38 = v112;
      v40 = v119;
      v39 = v120;
      __swift_project_boxed_opaque_existential_1(aBlock, v119);
      LOBYTE(v39) = v39[4](v40, v39);
      v41 = v119;
      v42 = v120;
      __swift_project_boxed_opaque_existential_1(aBlock, v119);
      v43 = (*(v42 + 3))(v103, v41, v42);
      if ((v39 & 1) == 0)
      {
        v44 = 1.0;
      }

      swift_beginAccess();
      *(v36 + 16) = v43 + *(v36 + 16);
      swift_beginAccess();
      *(v36 + 24) = v44 + *(v36 + 24);
      v2 = v111;
      v45 = v116;
      v46 = *(v111 + v116);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v122 = *(v2 + v45);
      *(v2 + v45) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, v28, isUniquelyReferenced_nonNull_native);
      *(v2 + v45) = v122;
      v17 = v117;
      v38(v28, v117);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      v35 += 40;
      --v33;
    }

    while (v33);
    swift_endAccess();
    v62 = (v101 + 56);
    v63 = (v101 + 48);
    v64 = (v101 + 32);
    v65 = MEMORY[0x277D84F90];
    do
    {
      outlined init with copy of ChartableSample(v37, aBlock);
      v66 = v119;
      v67 = v120;
      __swift_project_boxed_opaque_existential_1(aBlock, v119);
      v68 = *(v67 + 2);
      v69 = v67;
      v70 = v105;
      v68(v66, v69);
      v71 = v117;
      (*v62)(v70, 0, 1, v117);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
      if ((*v63)(v70, 1, v71) == 1)
      {
        outlined destroy of (key: Date, value: WorkoutDataBucket)(v70, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v72 = *v64;
        (*v64)(v110, v70, v71);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
        }

        v74 = *(v65 + 2);
        v73 = *(v65 + 3);
        if (v74 >= v73 >> 1)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v73 > 1, v74 + 1, 1, v65);
        }

        *(v65 + 2) = v74 + 1;
        v72(&v65[((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v74], v110, v117);
      }

      v37 += 40;
      --v114;
    }

    while (v114);
  }

  else
  {
    swift_endAccess();
    v65 = MEMORY[0x277D84F90];
  }

  v75 = v99;
  specialized Sequence<>.max()(v65, v99);

  v76 = v101;
  v77 = *(v101 + 48);
  v78 = v117;
  if (v77(v75, 1, v117) == 1)
  {
    v79 = v100;
    Date.init()();
    v80 = v77(v75, 1, v78);
    v81 = v111;
    if (v80 != 1)
    {
      outlined destroy of (key: Date, value: WorkoutDataBucket)(v75, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    }
  }

  else
  {
    v79 = v100;
    (*(v76 + 32))(v100, v75, v78);
    v81 = v111;
  }

  ChartDataProvider.trimBucketsFromRollingStart(to:)();
  v82 = *(v81 + v116);

  v84 = ChartDataProvider.dataElements(for:)(v83);

  if (*(v81 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously))
  {
    v85 = MEMORY[0x277D84F90];
    type metadata accessor for OS_dispatch_queue();
    v86 = static OS_dispatch_queue.main.getter();
    v87 = swift_allocObject();
    swift_weakInit();
    v88 = swift_allocObject();
    *(v88 + 16) = v87;
    *(v88 + 24) = v84;
    v120 = partial apply for closure #3 in ChartDataProvider.notThreadSafe_add(samples:);
    v121 = v88;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
    v119 = &block_descriptor_21_1;
    v89 = _Block_copy(aBlock);

    v90 = v93;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = v85;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_5(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v91 = v95;
    v92 = v98;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x20F2E7580](0, v90, v91, v89);
    _Block_release(v89);

    (*(v97 + 8))(v91, v92);
    (*(v94 + 8))(v90, v96);
    return (*(v76 + 8))(v100, v78);
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock[0] = v84;

    static Published.subscript.setter();
    return (*(v76 + 8))(v79, v78);
  }
}

uint64_t specialized Sequence<>.max()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](*(v4 - 8));
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v23 - v10;
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = *(v9 + 16);
    v14 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v26 = v9;
    v24 = a2;
    v25 = v13;
    v13(&v23 - v10, v14, v4);
    result = v26;
    if (v12 == 1)
    {
LABEL_3:
      v16 = v24;
      (*(result + 32))(v24, v11, v4);
      return (*(v26 + 56))(v16, 0, 1, v4);
    }

    else
    {
      v18 = (v26 + 32);
      v19 = 1;
      while (1)
      {
        v20 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          break;
        }

        v25(v8, v14 + *(result + 72) * v19, v4);
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);
        v21 = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *(v26 + 8);
        if (v21)
        {
          v22(v11, v4);
          (*v18)(v11, v8, v4);
        }

        else
        {
          v22(v8, v4);
        }

        ++v19;
        result = v26;
        if (v20 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a2, 1, 1, v4);
  }

  return result;
}

uint64_t closure #3 in ChartDataProvider.notThreadSafe_add(samples:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t ChartDataProvider.trimBucketsFromRollingStart(to:)()
{
  v1 = v0;
  v41 = type metadata accessor for Date();
  v43 = *(v41 - 8);
  v2 = *(v43 + 64);
  v3 = MEMORY[0x28223BE20](v41);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v38 - v6;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v0 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) == 1)
  {
    v13 = v7;
    v14 = *(v0 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue);
    *v12 = v14;
    (*(v9 + 104))(v12, *MEMORY[0x277D85200], v8);
    v15 = v14;
    v7 = v13;
    LOBYTE(v13) = _dispatchPreconditionTest(_:)();
    result = (*(v9 + 8))(v12, v8);
    if ((v13 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v17 = *(v0 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow);
  static Date.- infix(_:_:)();
  v18 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets;
  result = swift_beginAccess();
  v19 = *(v0 + v18);
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC10Foundation4DateV_Tt1g5(*(v19 + 16), 0);
    v42 = specialized Sequence._copySequenceContents(initializing:)(v45, (v21 + ((*(v43 + 80) + 32) & ~*(v43 + 80))), v20, v19);
    v39 = v45[2];
    v40 = v45[0];

    result = outlined consume of [Date : WorkoutDataBucket].Iterator._Variant();
    if (v42 != v20)
    {
      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }
  }

  MEMORY[0x28223BE20](result);
  *(&v38 - 2) = v7;
  v23 = specialized _ArrayProtocol.filter(_:)(partial apply for closure #1 in ChartDataProvider.trimBucketsFromRollingStart(to:), (&v38 - 4), v22);
  v24 = *(v23 + 16);
  v25 = v41;
  if (v24)
  {
    v39 = v7;
    v40 = v23;
    v42 = *(v43 + 16);
    v43 += 16;
    v26 = v23 + ((*(v43 + 64) + 32) & ~*(v43 + 64));
    v27 = *(v43 + 56);
    v28 = (v43 - 8);
    v38 = (v43 - 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v5, v26, v41);
    while (1)
    {
      swift_beginAccess();
      v31 = *(v1 + v18);
      v32 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v33)
      {
        v34 = v32;
        v35 = *(v1 + v18);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v37 = *(v1 + v18);
        v44 = v37;
        *(v1 + v18) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          specialized _NativeDictionary.copy()();
          v37 = v44;
        }

        v25 = v41;
        (*v28)(*(v37 + 48) + v34 * v27, v41);
        v29 = *(*(v37 + 56) + 8 * v34);

        specialized _NativeDictionary._delete(at:)(v34, v37);
        *(v1 + v18) = v37;
      }

      swift_endAccess();
      v30 = *v28;
      (*v28)(v5, v25);
      v26 += v27;
      if (!--v24)
      {
        break;
      }

      v42(v5, v26, v25);
    }

    v7 = v39;
  }

  else
  {

    v30 = *(v43 + 8);
  }

  return (v30)(v7, v25);
}

uint64_t ChartDataProvider.dataElements(for:)(uint64_t a1)
{
  v54 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV3key_11WorkoutCore0D10DataBucketC5valuetMd, &_s10Foundation4DateV3key_11WorkoutCore0D10DataBucketC5valuetMR);
  v2 = *(*(v50 - 8) + 64);
  MEMORY[0x28223BE20](v50);
  v4 = &v46 - v3;
  v5 = type metadata accessor for Date();
  v52 = *(v5 - 8);
  v6 = v52[8];
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v46 - v10;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = (&v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(v1 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_populateAsynchronously) != 1)
  {
    goto LABEL_3;
  }

  v16 = *(v1 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_processingQueue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11);
  v17 = v16;
  v18 = _dispatchPreconditionTest(_:)();
  v20 = *(v12 + 8);
  v19 = (v12 + 8);
  v20(v15, v11);
  if (v18)
  {
LABEL_3:
    Date.init()();
    v21 = *(v1 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_timeWindow) / *(v1 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_maxBuckets) * 0.5;
    static Date.- infix(_:_:)();
    v23 = v52 + 1;
    v22 = v52[1];
    v46 = v9;
    v48 = v22;
    v22(v9, v5);
    v19 = (v54 + 64);
    v24 = *(v54 + 64);
    v47 = MEMORY[0x277D84F90];
    v56 = MEMORY[0x277D84F90];
    v25 = 1 << *(v54 + 32);
    v26 = -1;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    v27 = v26 & v24;
    v28 = (v25 + 63) >> 6;
    v49 = v23;
    v51 = v23 + 1;

    v29 = 0;
    while (1)
    {
      v30 = v29;
      if (!v27)
      {
        break;
      }

LABEL_10:
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
      v32 = v31 | (v29 << 6);
      v33 = v54;
      v34 = v52[2];
      v34(v4, *(v54 + 48) + v52[9] * v32, v5);
      v35 = *(*(v33 + 56) + 8 * v32);
      *&v4[*(v50 + 48)] = v35;
      _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_5(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578]);

      if (dispatch thunk of static Comparable.< infix(_:_:)())
      {
        outlined destroy of (key: Date, value: WorkoutDataBucket)(v4, &_s10Foundation4DateV3key_11WorkoutCore0D10DataBucketC5valuetMd, &_s10Foundation4DateV3key_11WorkoutCore0D10DataBucketC5valuetMR);
      }

      else
      {
        v34(v46, v4, v5);
        swift_beginAccess();
        v36 = *(v35 + 16);
        swift_beginAccess();
        v37 = v36 / *(v35 + 24);
        v38 = type metadata accessor for WorkoutChartDataElement();
        v39 = objc_allocWithZone(v38);
        v40 = v46;
        v34(&v39[OBJC_IVAR___WOWorkoutChartDataElement_date], v46, v5);
        *&v39[OBJC_IVAR___WOWorkoutChartDataElement_value] = v37;
        v55.receiver = v39;
        v55.super_class = v38;
        objc_msgSendSuper2(&v55, sel_init);
        v48(v40, v5);
        v41 = outlined destroy of (key: Date, value: WorkoutDataBucket)(v4, &_s10Foundation4DateV3key_11WorkoutCore0D10DataBucketC5valuetMd, &_s10Foundation4DateV3key_11WorkoutCore0D10DataBucketC5valuetMR);
        MEMORY[0x20F2E6F30](v41);
        if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v42 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v47 = v56;
      }
    }

    while (1)
    {
      v29 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v29 >= v28)
      {

        v56 = specialized Array._copyToContiguousArray()(v43);
        specialized MutableCollection<>.sort(by:)(&v56);

        v44 = v56;
        v48(v53, v5);
        return v44;
      }

      v27 = v19[v29];
      ++v30;
      if (v27)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t ChartDataProvider.deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets);

  v4 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t ChartDataProvider.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider__dataElements;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMd, &_s7Combine9PublishedVySay11WorkoutCore0C16ChartDataElementCGGMR);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_dataBuckets);

  v4 = OBJC_IVAR____TtC11WorkoutCore17ChartDataProvider_startDate;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  v6 = *(*v0 + 48);
  v7 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ChartDataProvider@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ChartDataProvider();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(void ***a1, uint64_t a2, unint64_t a3, int64_t a4)
{
  v5 = v4;
  v124 = a1;
  v134 = type metadata accessor for Date();
  v8 = *(*(v134 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v134);
  v136 = &v121 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v135 = &v121 - v12;
  v130 = a3;
  v13 = *(a3 + 8);
  if (v13 < 1)
  {
    v15 = MEMORY[0x277D84F90];
LABEL_87:
    v14 = *v124;
    if (!*v124)
    {
      goto LABEL_126;
    }

    a3 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v116 = a3;
    }

    else
    {
LABEL_120:
      v116 = specialized _ArrayBuffer._consumeAndCreateNew()(a3);
    }

    v138 = v116;
    a3 = *(v116 + 2);
    if (a3 >= 2)
    {
      while (*v130)
      {
        v117 = *&v116[16 * a3];
        v118 = v116;
        v119 = *&v116[16 * a3 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v130 + 8 * v117), (*v130 + 8 * *&v116[16 * a3 + 16]), (*v130 + 8 * v119), v14);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v119 < v117)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = specialized _ArrayBuffer._consumeAndCreateNew()(v118);
        }

        if (a3 - 2 >= *(v118 + 2))
        {
          goto LABEL_114;
        }

        v120 = &v118[16 * a3];
        *v120 = v117;
        *(v120 + 1) = v119;
        v138 = v118;
        specialized Array.remove(at:)(a3 - 1);
        v116 = v138;
        a3 = *(v138 + 2);
        if (a3 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v14 = 0;
  v133 = (v11 + 16);
  v132 = (v11 + 8);
  v15 = MEMORY[0x277D84F90];
  v123 = a4;
  while (1)
  {
    v16 = v14++;
    v125 = v16;
    if (v14 < v13)
    {
      v129 = v13;
      v122 = v5;
      v121 = v15;
      v17 = *v130;
      v18 = *(*v130 + 8 * v14);
      v126 = 8 * v16;
      v19 = (v17 + 8 * v16);
      v21 = *v19;
      v20 = v19 + 2;
      v22 = OBJC_IVAR___WOWorkoutChartDataElement_date;
      swift_beginAccess();
      v23 = *v133;
      v24 = v135;
      v25 = v134;
      (*v133)(v135, &v18[v22], v134);
      v26 = OBJC_IVAR___WOWorkoutChartDataElement_date;
      swift_beginAccess();
      v27 = &v21[v26];
      v28 = v136;
      v128 = v23;
      v23(v136, v27, v25);
      v29 = v18;
      v30 = v21;
      LODWORD(v131) = static Date.< infix(_:_:)();
      v31 = *v132;
      (*v132)(v28, v25);
      v127 = v31;
      (v31)(v24, v25);

      a3 = v125 + 2;
      while (1)
      {
        v14 = v129;
        if (v129 == a3)
        {
          break;
        }

        v33 = *(v20 - 1);
        v32 = *v20;
        v34 = OBJC_IVAR___WOWorkoutChartDataElement_date;
        swift_beginAccess();
        v35 = v135;
        v36 = v134;
        v137 = v20;
        v37 = v128;
        v128(v135, &v32[v34], v134);
        v38 = OBJC_IVAR___WOWorkoutChartDataElement_date;
        swift_beginAccess();
        v39 = v136;
        v37(v136, &v33[v38], v36);
        v40 = v137;
        v41 = v32;
        v42 = v33;
        LODWORD(v32) = static Date.< infix(_:_:)() & 1;
        v43 = v39;
        v44 = v127;
        (v127)(v43, v36);
        v44(v35, v36);

        ++a3;
        v20 = v40 + 1;
        if ((v131 & 1) != v32)
        {
          v14 = a3 - 1;
          break;
        }
      }

      v15 = v121;
      a4 = v123;
      v5 = v122;
      v16 = v125;
      v45 = v126;
      if (v131)
      {
        if (v14 < v125)
        {
          goto LABEL_117;
        }

        if (v125 < v14)
        {
          v46 = 8 * v14 - 8;
          v47 = v14;
          v48 = v125;
          do
          {
            if (v48 != --v47)
            {
              v50 = *v130;
              if (!*v130)
              {
                goto LABEL_123;
              }

              v49 = *(v50 + v45);
              *(v50 + v45) = *(v50 + v46);
              *(v50 + v46) = v49;
            }

            ++v48;
            v46 -= 8;
            v45 += 8;
          }

          while (v48 < v47);
        }
      }
    }

    v51 = v130[1];
    if (v14 < v51)
    {
      if (__OFSUB__(v14, v16))
      {
        goto LABEL_116;
      }

      if (v14 - v16 < a4)
      {
        v52 = (v16 + a4);
        if (__OFADD__(v16, a4))
        {
          goto LABEL_118;
        }

        if (v52 >= v51)
        {
          v52 = v130[1];
        }

        if (v52 < v16)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v14 != v52)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v14 < v16)
    {
      goto LABEL_115;
    }

    v69 = v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = v69;
    }

    else
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v69 + 2) + 1, 1, v69);
    }

    a3 = *(v15 + 2);
    v70 = *(v15 + 3);
    v71 = a3 + 1;
    if (a3 >= v70 >> 1)
    {
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v70 > 1), a3 + 1, 1, v15);
    }

    *(v15 + 2) = v71;
    v72 = &v15[16 * a3];
    *(v72 + 4) = v125;
    *(v72 + 5) = v14;
    v73 = *v124;
    if (!*v124)
    {
      goto LABEL_125;
    }

    if (a3)
    {
      while (1)
      {
        v74 = v71 - 1;
        if (v71 >= 4)
        {
          break;
        }

        if (v71 == 3)
        {
          v75 = *(v15 + 4);
          v76 = *(v15 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_55:
          if (v78)
          {
            goto LABEL_104;
          }

          v91 = &v15[16 * v71];
          v93 = *v91;
          v92 = *(v91 + 1);
          v94 = __OFSUB__(v92, v93);
          v95 = v92 - v93;
          v96 = v94;
          if (v94)
          {
            goto LABEL_107;
          }

          v97 = &v15[16 * v74 + 32];
          v99 = *v97;
          v98 = *(v97 + 1);
          v85 = __OFSUB__(v98, v99);
          v100 = v98 - v99;
          if (v85)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v95, v100))
          {
            goto LABEL_111;
          }

          if (v95 + v100 >= v77)
          {
            if (v77 < v100)
            {
              v74 = v71 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v101 = &v15[16 * v71];
        v103 = *v101;
        v102 = *(v101 + 1);
        v85 = __OFSUB__(v102, v103);
        v95 = v102 - v103;
        v96 = v85;
LABEL_69:
        if (v96)
        {
          goto LABEL_106;
        }

        v104 = &v15[16 * v74];
        v106 = *(v104 + 4);
        v105 = *(v104 + 5);
        v85 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v85)
        {
          goto LABEL_109;
        }

        if (v107 < v95)
        {
          goto LABEL_3;
        }

LABEL_76:
        a3 = v74 - 1;
        if (v74 - 1 >= v71)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_119;
        }

        if (!*v130)
        {
          goto LABEL_122;
        }

        v112 = v15;
        v113 = *&v15[16 * a3 + 32];
        v114 = *&v15[16 * v74 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v130 + 8 * v113), (*v130 + 8 * *&v15[16 * v74 + 32]), (*v130 + 8 * v114), v73);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v114 < v113)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v112 = specialized _ArrayBuffer._consumeAndCreateNew()(v112);
        }

        if (a3 >= *(v112 + 2))
        {
          goto LABEL_101;
        }

        v115 = &v112[16 * a3];
        *(v115 + 4) = v113;
        *(v115 + 5) = v114;
        v138 = v112;
        specialized Array.remove(at:)(v74);
        v15 = v138;
        v71 = *(v138 + 2);
        if (v71 <= 1)
        {
          goto LABEL_3;
        }
      }

      v79 = &v15[16 * v71 + 32];
      v80 = *(v79 - 64);
      v81 = *(v79 - 56);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_102;
      }

      v84 = *(v79 - 48);
      v83 = *(v79 - 40);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_103;
      }

      v86 = &v15[16 * v71];
      v88 = *v86;
      v87 = *(v86 + 1);
      v85 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v85)
      {
        goto LABEL_105;
      }

      v85 = __OFADD__(v77, v89);
      v90 = v77 + v89;
      if (v85)
      {
        goto LABEL_108;
      }

      if (v90 >= v82)
      {
        v108 = &v15[16 * v74 + 32];
        v110 = *v108;
        v109 = *(v108 + 1);
        v85 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v85)
        {
          goto LABEL_112;
        }

        if (v77 < v111)
        {
          v74 = v71 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v13 = v130[1];
    a4 = v123;
    if (v14 >= v13)
    {
      goto LABEL_87;
    }
  }

  v121 = v15;
  v122 = v5;
  v131 = *v130;
  a3 = v131 + 8 * v14 - 8;
  v53 = (v16 - v14);
  v126 = v52;
LABEL_28:
  v129 = v14;
  v54 = *(v131 + 8 * v14);
  v127 = v53;
  v55 = v53;
  v128 = a3;
  while (1)
  {
    v137 = v55;
    v56 = *a3;
    v57 = OBJC_IVAR___WOWorkoutChartDataElement_date;
    swift_beginAccess();
    v58 = *v133;
    v59 = v135;
    v60 = v134;
    (*v133)(v135, &v54[v57], v134);
    v61 = OBJC_IVAR___WOWorkoutChartDataElement_date;
    swift_beginAccess();
    v62 = v136;
    v58(v136, &v56[v61], v60);
    v63 = v54;
    v64 = v56;
    LOBYTE(v61) = static Date.< infix(_:_:)();
    v65 = *v132;
    (*v132)(v62, v60);
    v65(v59, v60);

    if ((v61 & 1) == 0)
    {
LABEL_27:
      v14 = v129 + 1;
      a3 = v128 + 8;
      v53 = v127 - 1;
      if ((v129 + 1) != v126)
      {
        goto LABEL_28;
      }

      v14 = v126;
      v5 = v122;
      v15 = v121;
      v16 = v125;
      goto LABEL_35;
    }

    v66 = v137;
    if (!v131)
    {
      break;
    }

    v67 = *a3;
    v54 = *(a3 + 8);
    *a3 = v54;
    *(a3 + 8) = v67;
    a3 -= 8;
    v68 = __CFADD__(v66, 1);
    v55 = (v66 + 1);
    if (v68)
    {
      goto LABEL_27;
    }
  }

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
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

size_t specialized _ContiguousArrayBuffer._consumeAndCreateNew()(void *a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2], 0, a1);
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore21CyclingPowerZonesSizeO_SayAC0eF4ZoneCGTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore21CyclingPowerZonesSizeOSayAC0eF4ZoneCGGMd, &_ss18_DictionaryStorageCy11WorkoutCore21CyclingPowerZonesSizeOSayAC0eF4ZoneCGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DateV_11WorkoutCore0E10DataBucketCTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateV_11WorkoutCore0C10DataBucketCtMd, &_s10Foundation4DateV_11WorkoutCore0C10DataBucketCtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4DateV11WorkoutCore0E10DataBucketCGMd, &_ss18_DictionaryStorageCy10Foundation4DateV11WorkoutCore0E10DataBucketCGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v10, v6, &_s10Foundation4DateV_11WorkoutCore0C10DataBucketCtMd, &_s10Foundation4DateV_11WorkoutCore0C10DataBucketCtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Date();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t type metadata accessor for ChartDataProvider()
{
  result = type metadata singleton initialization cache for ChartDataProvider;
  if (!type metadata singleton initialization cache for ChartDataProvider)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ChartDataProvider()
{
  type metadata accessor for Published<[WorkoutChartDataElement]>();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    v2 = type metadata accessor for Date();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Published<[WorkoutChartDataElement]>()
{
  if (!lazy cache variable for type metadata for Published<[WorkoutChartDataElement]>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay11WorkoutCore0A16ChartDataElementCGMd, &_sSay11WorkoutCore0A16ChartDataElementCGMR);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Published<[WorkoutChartDataElement]>);
    }
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSdGMd, &_ss18_DictionaryStorageCySiSdGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVtMd, &_sSS_11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVGMd, &_ss18_DictionaryStorageCySS11WorkoutCore06Apple_c1_D22_ActivityMetadataValueVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v10, v6, &_sSS_11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVtMd, &_sSS_11WorkoutCore06Apple_a1_B22_ActivityMetadataValueVtMR);
      v12 = *v6;
      v13 = v6[1];
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
      result = outlined init with take of Apple_Workout_Core_ActivityMetadataValue(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore0C23VoiceMuteAnalyticsEventV0G3Key33_4127D63F4DC680E88BE216D6EBFE3D5FLLO_So8NSObjectCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 8);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs5Int32V_SdTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys5Int32VSdGMd, &_ss18_DictionaryStorageCys5Int32VSdGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore15KnownPublishersO_s6UInt32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore15KnownPublishersOs6UInt32VGMd, &_ss18_DictionaryStorageCy11WorkoutCore15KnownPublishersOs6UInt32VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 4);
      v6 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s10AnyKeyPathCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs10AnyKeyPathCGMd, &_ss18_DictionaryStorageCySSs10AnyKeyPathCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSbGMd, &_ss18_DictionaryStorageCySSSbGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSd_11WorkoutCore26MeanDistributionByPositionC6BucketCTt0g5Tf4g_nTm(double *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 2);
  if (!v3)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v6 = a1[4];
  v7 = *(a1 + 5);
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = a1 + 7;
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 8 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 1);
    v17 = *v12;

    v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6);
    v12 = v16;
    result = *&v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8MusicKit7StationV0cD8InternalE4MoodO_SSTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7StationV0aB8InternalE4MoodO_SStMd, &_s8MusicKit7StationV0aB8InternalE4MoodO_SStMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOSSGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOSSGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v10, v6, &_s8MusicKit7StationV0aB8InternalE4MoodO_SStMd, &_s8MusicKit7StationV0aB8InternalE4MoodO_SStMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Station.Mood();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8MusicKit7StationV0cD8InternalE4MoodO_10Foundation4DateVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7StationV0aB8InternalE4MoodO_10Foundation4DateVtMd, &_s8MusicKit7StationV0aB8InternalE4MoodO_10Foundation4DateVtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodO10Foundation4DateVGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodO10Foundation4DateVGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v10, v6, &_s8MusicKit7StationV0aB8InternalE4MoodO_10Foundation4DateVtMd, &_s8MusicKit7StationV0aB8InternalE4MoodO_10Foundation4DateVtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Station.Mood();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for Date();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC8MusicKit7StationV0cD8InternalE4MoodO_ScTySSSgs5NeverOGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8MusicKit7StationV0aB8InternalE4MoodO_ScTySSSgs5NeverOGtMd, &_s8MusicKit7StationV0aB8InternalE4MoodO_ScTySSSgs5NeverOGtMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOScTySSSgs5NeverOGGMd, &_ss18_DictionaryStorageCy8MusicKit7StationV0cD8InternalE4MoodOScTySSSgs5NeverOGGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v10, v6, &_s8MusicKit7StationV0aB8InternalE4MoodO_ScTySSSgs5NeverOGtMd, &_s8MusicKit7StationV0aB8InternalE4MoodO_ScTySSSgs5NeverOGtMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Station.Mood();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v4, v13, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = outlined init with take of Any(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *_sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo21HKWorkoutActivityTypeV_SaySdGTt0g5Tf4g_n(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo21HKWorkoutActivityTypeVSaySdGGMd, &_ss18_DictionaryStorageCySo21HKWorkoutActivityTypeVSaySdGGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = a1[4];
  v5 = a1[5];
  v6 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_10Foundation4DataVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      outlined copy of Data._Representation(v7, v8);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore10TargetZoneCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore10TargetZoneCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo8NSNumberC_11WorkoutCore0D9AlertZoneCTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMd, &_ss18_DictionaryStorageCySo8NSNumberC11WorkoutCore0D9AlertZoneCGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s11AnyHashableVTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSs11AnyHashableVGMd, &_ss18_DictionaryStorageCySSs11AnyHashableVGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v4, &v16, &_sSS_s11AnyHashableVtMd, &_sSS_s11AnyHashableVtMR);
      v5 = v16;
      v6 = v17;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore16ExternalProviderC_SayAC0C13ConfigurationCGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v10 = *(i - 1);
      v9 = *i;

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSs11AnyHashableVGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_SiTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SitMd, &_s10Foundation4UUIDV_SitMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSiGMR);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v10, v6, &_s10Foundation4UUIDV_SitMd, &_s10Foundation4UUIDV_SitMR);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4UUIDV_11WorkoutCore0E13ConfigurationCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  v11 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      outlined init with copy of (Station.Mood, Task<String?, Never>)(v17, v13, a2, v28);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for UUID();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo14HKQuantityTypeC_SaySo0C6SampleCGTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(id))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *i;
      v10 = *(i - 1);

      result = a4(v10);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v10;
      *(v7[7] + 8 * result) = v9;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC11WorkoutCore06Apple_c1_D13_PublisherKeyO_s6UInt32VTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy11WorkoutCore06Apple_c1_D13_PublisherKeyOs6UInt32VGMd, &_ss18_DictionaryStorageCy11WorkoutCore06Apple_c1_D13_PublisherKeyOs6UInt32VGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 44); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 4);
      v7 = *i;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = v3[6] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      *(v3[7] + 4 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So8NSObjectCTt0g5Tf4g_nTm(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t outlined init with copy of ChartableSample(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t outlined destroy of (key: Date, value: WorkoutDataBucket)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t objectdestroy_4Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for closure #3 in ChartDataProvider.notThreadSafe_add(samples:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return closure #3 in ChartDataProvider.notThreadSafe_add(samples:)();
}

uint64_t outlined init with take of Apple_Workout_Core_ActivityMetadataValue(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Workout_Core_ActivityMetadataValue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of (Station.Mood, Task<String?, Never>)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

Swift::Int DataLinkActivePairedWatchCapability.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance DataLinkActivePairedWatchCapability()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance DataLinkActivePairedWatchCapability()
{
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](0);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for NAPILI_ALIGNED_UUID()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  __swift_allocate_value_buffer(v0, static DataLinkBackwardCompatibilityUtility.NAPILI_ALIGNED_UUID);
  __swift_project_value_buffer(v0, static DataLinkBackwardCompatibilityUtility.NAPILI_ALIGNED_UUID);
  return UUID.init(uuidString:)();
}

BOOL specialized static DataLinkBackwardCompatibilityUtility.activePairedWatch(supports:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - v2;
  v4 = FIGetActivePairedDevice();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (one-time initialization token for NAPILI_ALIGNED_UUID != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, static DataLinkBackwardCompatibilityUtility.NAPILI_ALIGNED_UUID);
  outlined init with copy of UUID?(v6, v3);
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  isa = 0;
  if ((*(v8 + 48))(v3, 1, v7) != 1)
  {
    isa = UUID._bridgeToObjectiveC()().super.isa;
    (*(v8 + 8))(v3, v7);
  }

  v10 = [v5 supportsCapability_];

  return (v10 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type DataLinkActivePairedWatchCapability and conformance DataLinkActivePairedWatchCapability()
{
  result = lazy protocol witness table cache variable for type DataLinkActivePairedWatchCapability and conformance DataLinkActivePairedWatchCapability;
  if (!lazy protocol witness table cache variable for type DataLinkActivePairedWatchCapability and conformance DataLinkActivePairedWatchCapability)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DataLinkActivePairedWatchCapability and conformance DataLinkActivePairedWatchCapability);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataLinkActivePairedWatchCapability(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DataLinkActivePairedWatchCapability(_WORD *result, int a2, int a3)
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

void FastSyncHKKeyValueDomain.setData(_:forKey:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v8 = *v4;
  v7 = *(v4 + 8);
  if (a2 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  v10 = MEMORY[0x20F2E6C00](a3, a4);
  aBlock[0] = 0;
  v11 = [v8 setData:isa forKey:v10 error:aBlock];

  v12 = aBlock[0];
  if (v11)
  {
    aBlock[4] = closure #1 in FastSyncHKKeyValueDomain.forceSync();
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
    aBlock[3] = &block_descriptor_3_5;
    v13 = _Block_copy(aBlock);
    v14 = v12;
    [v7 forceNanoSyncWithOptions:0 completion:v13];
    _Block_release(v13);
  }

  else
  {
    v15 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  v16 = *MEMORY[0x277D85DE8];
}

void FastSyncHKKeyValueDomain.data(forKey:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x20F2E6C00]();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_6_6;
  v9 = _Block_copy(v10);

  [v7 dataForKey:v8 completion:v9];
  _Block_release(v9);
}

void FastSyncHKKeyValueDomain.number(forKey:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x20F2E6C00]();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_9_7;
  v9 = _Block_copy(v10);

  [v7 numberForKey:v8 completion:v9];
  _Block_release(v9);
}

void closure #1 in FastSyncHKKeyValueDomain.forceSync()(char a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for core != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static WOLog.core);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v7, v8))
    {

      if (a1)
      {
        return;
      }

      goto LABEL_9;
    }

    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = a2;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v12;
    *v10 = v12;
    _os_log_impl(&dword_20AEA4000, v7, v8, "Received an error forcing a HK sync: %@", v9, 0xCu);
    outlined destroy of NSObject?(v10);
    MEMORY[0x20F2E9420](v10, -1, -1);
    MEMORY[0x20F2E9420](v9, -1, -1);
  }

  if (a1)
  {
    return;
  }

LABEL_9:
  if (one-time initialization token for core != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static WOLog.core);
  oslog = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_20AEA4000, oslog, v14, "Failed to force an HK sync.", v15, 2u);
    MEMORY[0x20F2E9420](v15, -1, -1);
  }
}

void FastSyncHKKeyValueDomain.removeValue(forKey:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20B423A90;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of String(inited + 32);
  isa = Set._bridgeToObjectiveC()().super.isa;

  v12 = swift_allocObject();
  *(v12 + 16) = a3;
  *(v12 + 24) = a4;
  v14[4] = partial apply for closure #1 in FastSyncHKKeyValueDomain.removeValue(forKey:completion:);
  v14[5] = v12;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@unowned Bool, @guaranteed Error?) -> ();
  v14[3] = &block_descriptor_12_3;
  v13 = _Block_copy(v14);

  [v9 removeValuesForKeys:isa completion:v13];
  _Block_release(v13);
}

void protocol witness for FastSyncHKKeyValueDomainProtocol.number(forKey:completion:) in conformance FastSyncHKKeyValueDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x20F2E6C00]();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSNumber?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_18_4;
  v9 = _Block_copy(v10);

  [v7 numberForKey:v8 completion:v9];
  _Block_release(v9);
}

void protocol witness for FastSyncHKKeyValueDomainProtocol.data(forKey:completion:) in conformance FastSyncHKKeyValueDomain(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *v4;
  v8 = MEMORY[0x20F2E6C00]();
  v10[4] = a3;
  v10[5] = a4;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Error?) -> ();
  v10[3] = &block_descriptor_15_5;
  v9 = _Block_copy(v10);

  [v7 dataForKey:v8 completion:v9];
  _Block_release(v9);
}

uint64_t partial apply for closure #1 in FastSyncHKKeyValueDomain.removeValue(forKey:completion:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t getEnumTagSinglePayload for FastSyncHKKeyValueDomain(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for FastSyncHKKeyValueDomain(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

double CyclingCadenceAccumulator.currentCadence.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadence;
  swift_beginAccess();
  return *(v0 + v1);
}

void CyclingCadenceAccumulator.currentCadence.setter(double a1)
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadence;
  swift_beginAccess();
  *&v1[v3] = a1;
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(partial apply for closure #1 in CyclingCadenceAccumulator.currentCadence.didset, v4);

  v5 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  v1[v5] = 0;
  v6 = [v1 updateHandler];
  if (v6)
  {
    v7 = v6;
    (*(v6 + 2))();
    _Block_release(v7);
  }
}

void closure #1 in CyclingCadenceAccumulator.currentCadence.didset()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadence;
    swift_beginAccess();
    *&v1[v2] = 0;
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();

    specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in CyclingCadenceAccumulator.currentCadence.didsetpartial apply, v3);

    v4 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
    swift_beginAccess();
    v1[v4] = 0;
    v5 = [v1 updateHandler];
    if (v5)
    {
      v6 = v5;
      (*(v5 + 2))();
      _Block_release(v6);
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
    v9 = v7;
    swift_beginAccess();
    v9[v8] = 1;
  }

  swift_beginAccess();
  v10 = swift_unknownObjectWeakLoadStrong();
  if (v10)
  {
    v11 = v10;
    v12 = [v10 updateHandler];

    if (v12)
    {
      v12[2](v12);
      _Block_release(v12);
    }
  }
}

void (*CyclingCadenceAccumulator.currentCadence.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return CyclingCadenceAccumulator.currentCadence.modify;
}

void CyclingCadenceAccumulator.currentCadence.modify(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = *(a1 + 24);
    v5 = swift_allocObject();
    swift_unknownObjectWeakInit();

    specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in CyclingCadenceAccumulator.currentCadence.didsetpartial apply, v5);

    v6 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
    swift_beginAccess();
    v4[v6] = 0;
    v7 = [v4 updateHandler];
    if (v7)
    {
      v8 = v7;
      (*(v7 + 2))();

      _Block_release(v8);
    }
  }
}

uint64_t CyclingCadenceAccumulator.currentCadenceStale.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CyclingCadenceAccumulator.currentCadenceStale.setter(char a1)
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double CyclingCadenceAccumulator.averageCadence.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_averageCadence;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t CyclingCadenceAccumulator.averageCadence.setter(double a1)
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_averageCadence;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void key path setter for CyclingCadenceAccumulator.invalidationTimer : CyclingCadenceAccumulator(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

void *CyclingCadenceAccumulator.invalidationTimer.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void CyclingCadenceAccumulator.invalidationTimer.setter(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

Swift::Void __swiftcall CyclingCadenceAccumulator.update(with:duration:)(HKStatistics with, Swift::Double duration)
{
  v3 = v2;
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [(objc_class *)with.super.isa mostRecentQuantity];
  if (!v11)
  {
    if (one-time initialization token for app == -1)
    {
LABEL_17:
      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static WOLog.app);
      v43 = with.super.isa;
      v82 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v82, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *v45 = 138412290;
        *(v45 + 4) = v43;
        *v46 = v43;
        v47 = v43;
        _os_log_impl(&dword_20AEA4000, v82, v44, "[CyclingCadenceAccumulator] cannot get mostRecentQuantity from statistics: %@", v45, 0xCu);
        outlined destroy of NSObject?(v46);
        MEMORY[0x20F2E9420](v46, -1, -1);
        MEMORY[0x20F2E9420](v45, -1, -1);
      }

      v48 = v82;

      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_17;
  }

  v12 = *&v2[OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_countPerMinuteUnit];
  v13 = v11;
  [v11 doubleValueForUnit_];
  v15 = v14;

  v16 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadence;
  swift_beginAccess();
  *&v3[v16] = v15;
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();

  specialized InvalidationTimerProtocol.restartInvalidationTimer(completion:)(closure #1 in CyclingCadenceAccumulator.currentCadence.didsetpartial apply, v17);

  v18 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  v3[v18] = 0;
  v19 = [v3 updateHandler];
  if (v19)
  {
    v20 = v19;
    (*(v19 + 2))();
    _Block_release(v20);
  }

  v21 = [(objc_class *)with.super.isa averageQuantity];
  if (v21)
  {
    v22 = v21;
    [v21 doubleValueForUnit_];
    v24 = v23;

    v25 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_averageCadence;
    swift_beginAccess();
    *&v3[v25] = v24;
    v26 = [(objc_class *)with.super.isa sources];
    v79 = v10;
    if (v26)
    {
      v27 = v26;
      type metadata accessor for HKSource();
      v28 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

      if (v28 >> 62)
      {
        v29 = __CocoaSet.count.getter();
        if (v29)
        {
LABEL_8:
          v75 = v7;
          v76 = v6;
          isa = with.super.isa;
          v78 = v3;
          v30 = 0;
          v31 = 0;
          v80 = v28 & 0xFFFFFFFFFFFFFF8;
          v81 = v28 & 0xC000000000000001;
          v32 = 0xE000000000000000;
          while (1)
          {
            if (v81)
            {
              v33 = MEMORY[0x20F2E7A20](v30, v28);
            }

            else
            {
              if (v30 >= *(v80 + 16))
              {
                goto LABEL_29;
              }

              v33 = *(v28 + 8 * v30 + 32);
            }

            v34 = v33;
            v35 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            v83 = v31;
            v84 = v32;

            v82 = v32;
            v36 = v29;
            MEMORY[0x20F2E6D80](32, 0xE100000000000000);
            v37 = v83;
            v38 = v84;
            v39 = [v34 name];
            with.super.isa = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v41 = v40;

            v83 = v37;
            v84 = v38;

            MEMORY[0x20F2E6D80](with.super.isa, v41);
            v29 = v36;

            v31 = v83;
            v32 = v84;
            ++v30;
            if (v35 == v29)
            {
              v3 = v78;
              with.super.isa = isa;
              v6 = v76;
              v7 = v75;
              goto LABEL_33;
            }
          }

          __break(1u);
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }
      }

      else
      {
        v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v29)
        {
          goto LABEL_8;
        }
      }

      v31 = 0;
      v32 = 0xE000000000000000;
LABEL_33:
    }

    else
    {
      v31 = 0;
      v32 = 0;
    }

    static Date.timeIntervalSinceReferenceDate.getter();
    v57 = v56;
    v58 = [(objc_class *)with.super.isa endDate];
    v59 = v79;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    Date.timeIntervalSinceReferenceDate.getter();
    v61 = v60;
    (*(v7 + 8))(v59, v6);
    v62 = v57 - v61;
    v63 = v3;
    v64 = *&v3[OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_latencyAnalytics];
    dispatch thunk of WKPercentileAnalytics.addSample(_:)();
    if (one-time initialization token for app != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static WOLog.app);

    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v84 = v32;
      v85 = v69;
      *v68 = 134219010;
      *(v68 + 4) = v15;
      *(v68 + 12) = 2048;
      *(v68 + 14) = v24;
      *(v68 + 22) = 2048;
      *(v68 + 24) = duration;
      *(v68 + 32) = 2048;
      *(v68 + 34) = v62;
      *(v68 + 42) = 2080;
      v83 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v70 = Optional.description.getter();
      v72 = v71;

      v73 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, &v85);

      *(v68 + 44) = v73;
      _os_log_impl(&dword_20AEA4000, v66, v67, "[CyclingCadenceAccumulator] received cadence (current: %f, average: %f), duration: %f, CyclingCadence-delay: %f s, sources: %s", v68, 0x34u);
      __swift_destroy_boxed_opaque_existential_0(v69);
      MEMORY[0x20F2E9420](v69, -1, -1);
      MEMORY[0x20F2E9420](v68, -1, -1);
    }

    else
    {
    }

    [v63 update];
    return;
  }

  if (one-time initialization token for app != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  __swift_project_value_buffer(v49, static WOLog.app);
  v50 = with.super.isa;
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    *v53 = 138412290;
    *(v53 + 4) = v50;
    *v54 = v50;
    v55 = v50;
    _os_log_impl(&dword_20AEA4000, v51, v52, "[CyclingCadenceAccumulator] cannot get mostRecentQuantity from statistics: %@", v53, 0xCu);
    outlined destroy of NSObject?(v54);
    MEMORY[0x20F2E9420](v54, -1, -1);
    MEMORY[0x20F2E9420](v53, -1, -1);
  }
}

id CyclingCadenceAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id CyclingCadenceAccumulator.init(builder:)(void *a1)
{
  v2 = specialized CyclingCadenceAccumulator.init(builder:)(a1);

  return v2;
}

id CyclingCadenceAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CyclingCadenceAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *protocol witness for InvalidationTimerProtocol.invalidationTimer.getter in conformance CyclingCadenceAccumulator()
{
  v1 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void protocol witness for InvalidationTimerProtocol.invalidationTimer.setter in conformance CyclingCadenceAccumulator(uint64_t a1)
{
  v3 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

unint64_t type metadata accessor for HKSource()
{
  result = lazy cache variable for type metadata for HKSource;
  if (!lazy cache variable for type metadata for HKSource)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for HKSource);
  }

  return result;
}

id specialized CyclingCadenceAccumulator.init(builder:)(uint64_t a1)
{
  v2 = v1;
  *&v1[OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadence] = 0;
  v1[OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_currentCadenceStale] = 1;
  *&v1[OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_averageCadence] = 0;
  v4 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_countPerMinuteUnit;
  *&v2[v4] = [objc_opt_self() _countPerMinuteUnit];
  *&v2[OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_invalidationTimer] = 0;
  v5 = OBJC_IVAR___NLSessionActivityCyclingCadenceAccumulator_latencyAnalytics;
  v6 = type metadata accessor for WKPercentileAnalytics();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  *&v2[v5] = WKPercentileAnalytics.init()();
  v10.receiver = v2;
  v10.super_class = type metadata accessor for CyclingCadenceAccumulator();
  return objc_msgSendSuper2(&v10, sel_initWithBuilder_, a1);
}

double keypath_getTm_7@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

double IntervalCadenceAccumulator.currentCadence.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence;
  swift_beginAccess();
  return *(v0 + v1);
}

double IntervalCadenceAccumulator.averageCadence.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t IntervalCadenceAccumulator.currentCadenceStale.getter()
{
  v1 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale;
  swift_beginAccess();
  return *(v0 + v1);
}

id IntervalCadenceAccumulator.__allocating_init(builder:activityType:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence] = 0;
  *&v5[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence] = 0;
  v5[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale] = 0;
  *&v5[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_activityType] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_initWithBuilder_, a1);

  return v6;
}

id IntervalCadenceAccumulator.init(builder:activityType:)(void *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence] = 0;
  *&v2[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence] = 0;
  v2[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadenceStale] = 0;
  *&v2[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_activityType] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for IntervalCadenceAccumulator();
  v4 = objc_msgSendSuper2(&v6, sel_initWithBuilder_, a1);

  return v4;
}

Swift::Void __swiftcall IntervalCadenceAccumulator.update(with:duration:)(HKStatistics with, Swift::Double duration)
{
  v5 = [(objc_class *)with.super.isa mostRecentQuantity];
  if (v5)
  {
    v6 = v5;
    if (*&v2[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_activityType] == 13)
    {
      v7 = [objc_opt_self() _countPerMinuteUnit];
      [v6 doubleValueForUnit_];
      v9 = v8;
    }

    else if (duration == 0.0)
    {

      v9 = 0.0;
    }

    else
    {
      v10 = [objc_opt_self() countUnit];
      [v6 doubleValueForUnit_];
      v12 = v11;

      v9 = v12 / duration * 60.0;
    }

    v13 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_currentCadence;
    swift_beginAccess();
    *&v2[v13] = v9;
  }

  if (*&v2[OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_activityType] == 13)
  {
    v14 = [(objc_class *)with.super.isa averageQuantity];
    if (v14)
    {
      v15 = v14;
      v16 = [objc_opt_self() _countPerMinuteUnit];
      [v15 doubleValueForUnit_];
      v18 = v17;

LABEL_15:
      v24 = OBJC_IVAR___NLSessionActivityIntervalCadenceAccumulator_averageCadence;
      swift_beginAccess();
      *&v2[v24] = v18;
    }
  }

  else
  {
    v19 = [(objc_class *)with.super.isa sumQuantity];
    if (v19)
    {
      if (duration == 0.0)
      {

        v18 = 0.0;
      }

      else
      {
        v20 = v19;
        v21 = [objc_opt_self() countUnit];
        [v20 doubleValueForUnit_];
        v23 = v22;

        v18 = v23 / duration * 60.0;
      }

      goto LABEL_15;
    }
  }

  [v2 update];
}

id IntervalCadenceAccumulator.__allocating_init(builder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithBuilder_];

  return v3;
}

id IntervalCadenceAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for IntervalCadenceAccumulator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double keypath_getTm_8@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, double *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  result = *(v4 + v5);
  *a3 = result;
  return result;
}

uint64_t keypath_setTm_8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void key path setter for ManagedConfigurationsDataSource.observers : ManagedConfigurationsDataSource(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id ManagedConfigurationsDataSource.observers.getter()
{
  v1 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void ManagedConfigurationsDataSource.observers.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

id ManagedConfigurationsDataSource.__allocating_init(occurrenceStore:reducedActivityTypesProvider:)(void *a1)
{
  v2 = objc_allocWithZone(type metadata accessor for ManagedConfigurationsDataSource());
  v3 = ManagedConfigurationsDataSource.init(occurrenceStore:)(a1);
  swift_unknownObjectRelease();
  return v3;
}

id ManagedConfigurationsDataSource.init(occurrenceStore:)(void *a1)
{
  *&v1[OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_occurrenceStore] = a1;
  v3 = objc_opt_self();
  v4 = a1;
  v5 = [v3 weakObjectsHashTable];
  *&v1[OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers] = v5;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for ManagedConfigurationsDataSource();
  v6 = objc_msgSendSuper2(&v17, sel_init);
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 defaultCenter];
  if (one-time initialization token for managedConfigurationsDidUpdate != -1)
  {
    swift_once();
  }

  v10 = static NSNotificationName.managedConfigurationsDidUpdate;
  v11 = [objc_opt_self() mainQueue];
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16[4] = partial apply for closure #1 in ManagedConfigurationsDataSource.init(occurrenceStore:);
  v16[5] = v12;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 1107296256;
  v16[2] = thunk for @escaping @callee_guaranteed @Sendable (@in_guaranteed Notification) -> ();
  v16[3] = &block_descriptor_62;
  v13 = _Block_copy(v16);

  v14 = [v9 addObserverForName:v10 object:0 queue:v11 usingBlock:v13];
  _Block_release(v13);

  swift_unknownObjectRelease();
  return v8;
}

void closure #1 in ManagedConfigurationsDataSource.init(occurrenceStore:)()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    ManagedConfigurationsDataSource.updateObservers()();
  }
}

Swift::Void __swiftcall ManagedConfigurationsDataSource.updateObservers()()
{
  v1 = ManagedConfigurationsDataSource.queryActivityPickerItems()();
  v2 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  v3 = [*(v0 + v2) allObjects];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:

    return;
  }

  v5 = __CocoaSet.count.getter();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x20F2E7A20](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
        swift_unknownObjectRetain();
      }

      swift_getObjectType();
      v8 = swift_conformsToProtocol2();
      if (v8)
      {
        if (v7)
        {
          v9 = v8;
          ObjectType = swift_getObjectType();
          (*(v9 + 8))(v1, 1, ObjectType, v9);
        }
      }

      swift_unknownObjectRelease();
    }

    goto LABEL_13;
  }

  __break(1u);
}

id ManagedConfigurationsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ManagedConfigurationsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedConfigurationsDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t ManagedConfigurationsDataSource.queryActivityPickerItems()()
{
  v1 = *(v0 + OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_occurrenceStore);
  v2 = WorkoutConfigurationOccurrenceStore.managedConfigurationsStore.getter();
  swift_beginAccess();
  v3 = *(v2 + 136);

  v4 = 1 << *(v3 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v3 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    if (!v6)
    {
      break;
    }

LABEL_8:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = (v9 << 9) | (8 * v12);
    v14 = *(*(v3 + 48) + v13);
    v15 = *(*(v3 + 56) + v13);
    v16 = type metadata accessor for ManagedConfigurationsViewModel();
    v17 = *(v16 + 48);
    v18 = *(v16 + 52);
    swift_allocObject();
    swift_bridgeObjectRetain_n();

    v19 = ManagedConfigurationsViewModel.init(configurations:previousDaysCount:futureDaysCount:)(v15, 7, 7);
    if (ManagedConfigurationsViewModel.hasVisibleConfigurations.getter())
    {
      v26 = v10;
      v20 = type metadata accessor for ManagedConfigurationSourcePickerItem();
      v21 = objc_allocWithZone(v20);
      v21[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_type] = 4;
      *&v21[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_provider] = v14;
      *&v21[OBJC_IVAR____TtC11WorkoutCore36ManagedConfigurationSourcePickerItem_viewModel] = v19;
      v27.receiver = v21;
      v27.super_class = v20;
      v10 = v26;

      v22 = objc_msgSendSuper2(&v27, sel_init);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, v26);
      }

      v24 = v10[2];
      v23 = v10[3];
      if (v24 >= v23 >> 1)
      {
        v10 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1, v10);
      }

      result = lazy protocol witness table accessor for type ManagedConfigurationSourcePickerItem and conformance ManagedConfigurationSourcePickerItem();
      v10[2] = v24 + 1;
      v25 = &v10[2 * v24];
      v25[4] = v22;
      v25[5] = result;
    }

    else
    {
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v9 >= v7)
    {

      return v10;
    }

    v6 = *(v3 + 64 + 8 * v9);
    ++v11;
    if (v6)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

id ManagedConfigurationsDataSource.addObserver(_:)(uint64_t a1, uint64_t a2, SEL *a3)
{
  v6 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  return [*(v3 + v6) *a3];
}

id protocol witness for ActivityItemsDataSourceObservable.observers.getter in conformance ManagedConfigurationsDataSource()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  v3 = *(v1 + v2);

  return v3;
}

id protocol witness for ActivityItemsDataSourceObservable.addObserver(_:) in conformance ManagedConfigurationsDataSource(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = *v5;
  v9 = OBJC_IVAR____TtC11WorkoutCore31ManagedConfigurationsDataSource_observers;
  swift_beginAccess();
  return [*(v8 + v9) *a5];
}

char *HealthDatabaseAccessAssertionManager.__allocating_init(workoutController:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  swift_allocObject();
  v5 = specialized HealthDatabaseAccessAssertionManager.init(workoutController:)(a1);

  return v5;
}

uint64_t HealthDatabaseAccessAssertionManager.deinit()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    [Strong removeObserver_];
  }

  v4 = *(v1 + 16);

  UnlockedDeviceMonitor.stopMonitoring()();

  v5 = *(v1 + 16);

  MEMORY[0x20F2E9510](v1 + 32);
  v6 = *(v1 + 40);

  _s10Foundation4UUIDVSgWOhTm_4(v1 + OBJC_IVAR____TtC11WorkoutCore36HealthDatabaseAccessAssertionManager_currentWorkoutUUID, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  return v1;
}

uint64_t HealthDatabaseAccessAssertionManager.__deallocating_deinit()
{
  HealthDatabaseAccessAssertionManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:)(uint64_t a1)
{
  v2[25] = a1;
  v2[26] = v1;
  v3 = type metadata accessor for UUID();
  v2[27] = v3;
  v4 = *(v3 - 8);
  v2[28] = v4;
  v5 = *(v4 + 64) + 15;
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  v2[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:), 0, 0);
}

uint64_t HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:)()
{
  v32 = v0;
  if (one-time initialization token for assertion != -1)
  {
    swift_once();
  }

  v1 = v0 + 24;
  v2 = v0[31];
  v3 = v0[27];
  v4 = v0[28];
  v5 = v0[25];
  v6 = type metadata accessor for Logger();
  v0[32] = __swift_project_value_buffer(v6, static WOLog.assertion);
  v7 = *(v4 + 16);
  v0[33] = v7;
  v0[34] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v3);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[31];
  v12 = v0[27];
  v13 = v0[28];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v31 = v30;
    *v14 = 136315138;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    v18 = *(v13 + 8);
    v18(v11, v12);
    v19 = v15;
    v1 = v0 + 24;
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v17, &v31);

    *(v14 + 4) = v20;
    _os_log_impl(&dword_20AEA4000, v8, v9, "Requesting health database accessibility assertion for workout uuid=%s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x20F2E9420](v30, -1, -1);
    MEMORY[0x20F2E9420](v14, -1, -1);
  }

  else
  {

    v18 = *(v13 + 8);
    v18(v11, v12);
  }

  v0[35] = v18;
  v21 = *(v0[26] + 24);
  v22 = [objc_opt_self() mainBundle];
  v23 = [v22 bundleIdentifier];

  if (v23)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v26 = 0x800000020B45A580;
    v24 = 0xD000000000000011;
  }

  v27 = MEMORY[0x20F2E6C00](v24, v26);
  v0[36] = v27;

  v0[2] = v0;
  v0[7] = v1;
  v0[3] = HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:);
  v28 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo32HKDatabaseAccessibilityAssertionCs5Error_pGMd, &_sSccySo32HKDatabaseAccessibilityAssertionCs5Error_pGMR);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned HKDatabaseAccessibilityAssertion?, @unowned NSError?) -> () with result type HKDatabaseAccessibilityAssertion;
  v0[13] = &block_descriptor_63;
  v0[14] = v28;
  [v21 requestDatabaseAccessibilityAssertionForOwnerIdentifier:v27 contextType:2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 296) = v2;
  if (v2)
  {
    v3 = HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:);
  }

  else
  {
    v3 = HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v57 = v0;
  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);
  v5 = *(v0 + 216);
  v7 = *(v0 + 192);
  v6 = *(v0 + 200);

  v2(v4, v6, v5);
  v8 = v7;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 280);
  v13 = *(v0 + 240);
  v15 = *(v0 + 216);
  v14 = *(v0 + 224);
  if (v11)
  {
    v16 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v56 = v54;
    *v16 = 136315394;
    _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    v52 = v10;
    v19 = v18;
    v12(v13, v15);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, &v56);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v8;
    *v53 = v8;
    v21 = v8;
    _os_log_impl(&dword_20AEA4000, v9, v52, "Health database accessibility assertion success for workout uuid=%s assertion=%@", v16, 0x16u);
    _s10Foundation4UUIDVSgWOhTm_4(v53, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v53, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x20F2E9420](v54, -1, -1);
    MEMORY[0x20F2E9420](v16, -1, -1);
  }

  else
  {

    v12(v13, v15);
  }

  v22 = *(v0 + 208);
  swift_beginAccess();
  if (*(*(v22 + 40) + 16) && (v23 = *(v0 + 200), v24 = *(v22 + 40), , specialized __RawDictionaryStorage.find<A>(_:)(v23), LOBYTE(v23) = v25, , (v23 & 1) != 0))
  {
    v55 = v8;
    v26 = *(v0 + 272);
    v27 = *(v0 + 256);
    (*(v0 + 264))(*(v0 + 232), *(v0 + 200), *(v0 + 216));
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();
    v30 = os_log_type_enabled(v28, v29);
    v31 = *(v0 + 280);
    v33 = *(v0 + 224);
    v32 = *(v0 + 232);
    v34 = *(v0 + 216);
    if (v30)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v56 = v36;
      *v35 = 136315138;
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v38 = v31;
      v39 = v37;
      v41 = v40;
      v38(v32, v34);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v41, &v56);

      *(v35 + 4) = v42;
      _os_log_impl(&dword_20AEA4000, v28, v29, "Health database accessibility assertion already taken for workout uuid=%s, invalidating extra assertion", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x20F2E9420](v36, -1, -1);
      MEMORY[0x20F2E9420](v35, -1, -1);
    }

    else
    {

      v31(v32, v34);
    }

    v8 = v55;
    [v55 invalidate];
  }

  else
  {
    v43 = *(v0 + 200);
    swift_beginAccess();
    v44 = v8;
    v45 = *(v22 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v22 + 40);
    *(v22 + 40) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v44, v43, isUniquelyReferenced_nonNull_native);
    *(v22 + 40) = v56;
    swift_endAccess();
  }

  v47 = *(v0 + 240);
  v48 = *(v0 + 248);
  v49 = *(v0 + 232);

  v50 = *(v0 + 8);

  return v50();
}

{
  v2 = v0[36];
  v1 = v0[37];
  v3 = v0[30];
  v4 = v0[31];
  v5 = v0[29];
  swift_willThrow();

  v6 = v0[1];
  v7 = v0[37];

  return v6();
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned HKDatabaseAccessibilityAssertion?, @unowned NSError?) -> () with result type HKDatabaseAccessibilityAssertion(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return MEMORY[0x282200958](v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return MEMORY[0x282200950](v5);
  }
}

void HealthDatabaseAccessAssertionManager.invalidateAssertion(workoutUUID:)(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v37[-v9];
  swift_beginAccess();
  v11 = *(v1 + 40);
  if (*(v11 + 16))
  {
    v12 = *(v1 + 40);

    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v14)
    {
      v15 = *(*(v11 + 56) + 8 * v13);

      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static WOLog.assertion);
      (*(v4 + 16))(v10, a1, v3);
      v17 = v15;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v41[0] = v40;
        *v20 = 136315394;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v38 = v19;
        v21 = dispatch thunk of CustomStringConvertible.description.getter();
        v23 = v22;
        (*(v4 + 8))(v10, v3);
        v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, v41);

        *(v20 + 4) = v24;
        *(v20 + 12) = 2112;
        *(v20 + 14) = v17;
        v25 = v39;
        *v39 = v17;
        v26 = v17;
        _os_log_impl(&dword_20AEA4000, v18, v38, "Invalidating health database accessibility assertion for workout uuid=%s assertion=%@", v20, 0x16u);
        _s10Foundation4UUIDVSgWOhTm_4(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x20F2E9420](v25, -1, -1);
        v27 = v40;
        __swift_destroy_boxed_opaque_existential_0(v40);
        MEMORY[0x20F2E9420](v27, -1, -1);
        MEMORY[0x20F2E9420](v20, -1, -1);
      }

      else
      {

        (*(v4 + 8))(v10, v3);
      }

      [v17 invalidate];
      swift_beginAccess();
      v29 = specialized Dictionary.removeValue(forKey:)(a1);
      swift_endAccess();

      goto LABEL_15;
    }
  }

  if (one-time initialization token for assertion != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static WOLog.assertion);
  (*(v4 + 16))(v8, a1, v3);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v29, v30))
  {

    (*(v4 + 8))(v8, v3);
    return;
  }

  v31 = swift_slowAlloc();
  v32 = swift_slowAlloc();
  v41[0] = v32;
  *v31 = 136315138;
  _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  v33 = dispatch thunk of CustomStringConvertible.description.getter();
  v35 = v34;
  (*(v4 + 8))(v8, v3);
  v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, v41);

  *(v31 + 4) = v36;
  _os_log_impl(&dword_20AEA4000, v29, v30, "Assertion doesn't exist for workout uuid=%s when invalidating health database accessibility assertion", v31, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v32);
  MEMORY[0x20F2E9420](v32, -1, -1);
  MEMORY[0x20F2E9420](v31, -1, -1);
LABEL_15:
}

Swift::Void __swiftcall HealthDatabaseAccessAssertionManager.unlocked(_:)(Swift::Bool a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v41 - v10;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v41 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - v20;
  if (a1)
  {
    v22 = *(v2 + 16);
    UnlockedDeviceMonitor.stopMonitoring()();
    v23 = OBJC_IVAR____TtC11WorkoutCore36HealthDatabaseAccessAssertionManager_currentWorkoutUUID;
    swift_beginAccess();
    outlined init with copy of UUID?(v2 + v23, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_4(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v24 = type metadata accessor for Logger();
      __swift_project_value_buffer(v24, static WOLog.assertion);
      v25 = Logger.logObject.getter();
      v26 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_20AEA4000, v25, v26, "Device unlocked but no current workout uuid", v27, 2u);
        MEMORY[0x20F2E9420](v27, -1, -1);
      }
    }

    else
    {
      v51 = *(v13 + 32);
      v52 = v13 + 32;
      v51(v21, v11, v12);
      if (one-time initialization token for assertion != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static WOLog.assertion);
      v50 = *(v13 + 16);
      v50(v19, v21, v12);
      v29 = Logger.logObject.getter();
      v47 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v29, v47))
      {
        v30 = swift_slowAlloc();
        v44 = v7;
        v31 = v30;
        v45 = swift_slowAlloc();
        v53 = v45;
        *v31 = 136315138;
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v43 = v29;
        v42 = dispatch thunk of CustomStringConvertible.description.getter();
        v33 = v32;
        v46 = v13 + 16;
        v48 = *(v13 + 8);
        v49 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v48(v19, v12);
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v33, &v53);

        v35 = v31;
        v41 = v31;
        v36 = v43;
        v7 = v44;
        *(v35 + 1) = v34;
        _os_log_impl(&dword_20AEA4000, v36, v47, "Device unlocked, will request health database accessibility assertion for workout uuid=%s", v35, 0xCu);
        v37 = v45;
        __swift_destroy_boxed_opaque_existential_0(v45);
        MEMORY[0x20F2E9420](v37, -1, -1);
        MEMORY[0x20F2E9420](v41, -1, -1);
      }

      else
      {

        v48 = *(v13 + 8);
        v49 = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v48(v19, v12);
      }

      v38 = type metadata accessor for TaskPriority();
      (*(*(v38 - 8) + 56))(v7, 1, 1, v38);
      v50(v16, v21, v12);
      v39 = (*(v13 + 80) + 40) & ~*(v13 + 80);
      v40 = swift_allocObject();
      *(v40 + 2) = 0;
      *(v40 + 3) = 0;
      *(v40 + 4) = v2;
      v51(&v40[v39], v16, v12);

      _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:), v40);

      v48(v21, v12);
    }
  }
}

uint64_t closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:);

  return HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:)(a5);
}

uint64_t closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:)()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  if (one-time initialization token for assertion != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.assertion);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_20AEA4000, v4, v5, "requestHealthDatabaseAccessAssertion failed with error=%@ after device was unlocked", v8, 0xCu);
    _s10Foundation4UUIDVSgWOhTm_4(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v9, -1, -1);
    MEMORY[0x20F2E9420](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  v7 = swift_task_alloc();
  *(v5 + 24) = v7;
  *v7 = v5;
  v7[1] = closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:);

  return HealthDatabaseAccessAssertionManager.requestHealthDatabaseAccessAssertion(workoutUUID:)(a5);
}

uint64_t closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  if (one-time initialization token for assertion != -1)
  {
    swift_once();
  }

  v1 = v0[4];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static WOLog.assertion);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_20AEA4000, v4, v5, "requestHealthDatabaseAccessAssertion failed with error=%@. Monitoring device unlock to request health database accessibility assertion.", v7, 0xCu);
    _s10Foundation4UUIDVSgWOhTm_4(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x20F2E9420](v8, -1, -1);
    MEMORY[0x20F2E9420](v7, -1, -1);
  }

  v11 = v0[4];
  v12 = v0[2];

  v13 = *(v12 + 16);
  UnlockedDeviceMonitor.startMonitoring()();

  v14 = v0[1];

  return v14();
}

uint64_t partial apply for closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:);

  return closure #1 in HealthDatabaseAccessAssertionManager.unlocked(_:)(a1, v6, v7, v8, v1 + v5);
}

void specialized HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v34 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - v12;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v34 - v19;
  if (!v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v34 = v6;
  v21 = [v18 workout];
  if (!v21)
  {
LABEL_11:
    __break(1u);
    return;
  }

  v22 = v21;
  v23 = [v21 identifier];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  (*(v8 + 56))(v20, 0, 1, v7);
  v24 = OBJC_IVAR____TtC11WorkoutCore36HealthDatabaseAccessAssertionManager_currentWorkoutUUID;
  swift_beginAccess();
  outlined assign with take of UUID?(v20, v1 + v24);
  swift_endAccess();
  outlined init with copy of UUID?(v1 + v24, v17);
  if ((*(v8 + 48))(v17, 1, v7) == 1)
  {
    _s10Foundation4UUIDVSgWOhTm_4(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for assertion != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static WOLog.assertion);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_20AEA4000, v26, v27, "currentWorkoutUUID nil when workout started in HealthDatabaseAccessAssertionManager", v28, 2u);
      MEMORY[0x20F2E9420](v28, -1, -1);
    }
  }

  else
  {
    v29 = *(v8 + 32);
    v29(v13, v17, v7);
    v30 = type metadata accessor for TaskPriority();
    v31 = v34;
    (*(*(v30 - 8) + 56))(v34, 1, 1, v30);
    (*(v8 + 16))(v11, v13, v7);
    v32 = (*(v8 + 80) + 40) & ~*(v8 + 80);
    v33 = swift_allocObject();
    *(v33 + 2) = 0;
    *(v33 + 3) = 0;
    *(v33 + 4) = v1;
    v29(&v33[v32], v11, v7);

    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v31, &async function pointer to partial apply for closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:), v33);

    (*(v8 + 8))(v13, v7);
  }
}

uint64_t specialized HealthDatabaseAccessAssertionManager.workoutController(_:transitionedWorkout:toState:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v37[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v37[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x28223BE20](v10);
  v44 = &v37[-v14];
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37[-v16];
  MEMORY[0x28223BE20](v15);
  v19 = &v37[-v18];
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  result = MEMORY[0x28223BE20](v20);
  v25 = &v37[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2 == 6)
  {
    v43 = v12;
    if (!a1)
    {
      __break(1u);
      return result;
    }

    v26 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v27 = v45;
    HealthDatabaseAccessAssertionManager.invalidateAssertion(workoutUUID:)(v25);
    v41 = *(v21 + 8);
    v42 = v21 + 8;
    v41(v25, v20);
    v28 = OBJC_IVAR____TtC11WorkoutCore36HealthDatabaseAccessAssertionManager_currentWorkoutUUID;
    swift_beginAccess();
    v40 = v28;
    outlined init with copy of UUID?(v27 + v28, v19);
    v29 = [a1 identifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = *(v21 + 56);
    v39(v17, 0, 1, v20);
    v30 = *(v4 + 48);
    outlined init with copy of UUID?(v19, v7);
    outlined init with copy of UUID?(v17, &v7[v30]);
    v31 = *(v21 + 48);
    if (v31(v7, 1, v20) == 1)
    {
      _s10Foundation4UUIDVSgWOhTm_4(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      _s10Foundation4UUIDVSgWOhTm_4(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if (v31(&v7[v30], 1, v20) == 1)
      {
        _s10Foundation4UUIDVSgWOhTm_4(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v32 = v43;
LABEL_10:
        v39(v32, 1, 1, v20);
        v35 = v45;
        v36 = v40;
        swift_beginAccess();
        outlined assign with take of UUID?(v32, v35 + v36);
        return swift_endAccess();
      }
    }

    else
    {
      outlined init with copy of UUID?(v7, v44);
      if (v31(&v7[v30], 1, v20) != 1)
      {
        (*(v21 + 32))(v25, &v7[v30], v20);
        _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_2(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
        v33 = v44;
        v38 = dispatch thunk of static Equatable.== infix(_:_:)();
        v34 = v41;
        v41(v25, v20);
        _s10Foundation4UUIDVSgWOhTm_4(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        _s10Foundation4UUIDVSgWOhTm_4(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v34(v33, v20);
        result = _s10Foundation4UUIDVSgWOhTm_4(v7, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        v32 = v43;
        if ((v38 & 1) == 0)
        {
          return result;
        }

        goto LABEL_10;
      }

      _s10Foundation4UUIDVSgWOhTm_4(v17, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      _s10Foundation4UUIDVSgWOhTm_4(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v41(v44, v20);
    }

    return _s10Foundation4UUIDVSgWOhTm_4(v7, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  }

  return result;
}

uint64_t type metadata accessor for HealthDatabaseAccessAssertionManager()
{
  result = type metadata singleton initialization cache for HealthDatabaseAccessAssertionManager;
  if (!type metadata singleton initialization cache for HealthDatabaseAccessAssertionManager)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s10Foundation4UUIDVSgWOhTm_4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm_7()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)(uint64_t a1)
{
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:);

  return closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)(a1, v6, v7, v8, v1 + v5);
}

uint64_t partial apply for closure #1 in HealthDatabaseAccessAssertionManager.workoutController(_:startSource:sessionControl:)()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void FIUIFormattingManager.paceMagnitude(distance:duration:paceFormat:distanceType:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  if (a2 == 4)
  {

    [v5 speedPerHourWithDistance:a1 overDuration:4 paceFormat:a3 distanceType:?];
  }

  else
  {
    v10 = [v5 unitManager];
    if (v10)
    {
      v11 = v10;
      [v10 paceWithDistance:a1 overDuration:a2 paceFormat:a3 distanceType:a4];
    }

    else
    {
      __break(1u);
    }
  }
}

void specialized RawRepresentable<>.hash(into:)()
{
  type metadata accessor for NSString();
  v0 = NSString.init(stringLiteral:)();
  NSObject.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PowerZonesAlertZoneType.AutomaticCodingKeys()
{
  if (*v0)
  {
    result = 0x5A746C7561666564;
  }

  else
  {
    result = 0xD000000000000010;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PowerZonesAlertZoneType.AutomaticCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000020B454030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5A746C7561666564 && a2 == 0xEC00000073656E6FLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PowerZonesAlertZoneType.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PowerZonesAlertZoneType.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerZonesAlertZoneType.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerZonesAlertZoneType.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PowerZonesAlertZoneType.CodingKeys()
{
  v1 = 0x746567726174;
  v2 = 0x6D6F74737563;
  if (*v0 != 2)
  {
    v2 = 6710895;
  }

  if (*v0)
  {
    v1 = 0x6974616D6F747561;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PowerZonesAlertZoneType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized PowerZonesAlertZoneType.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PowerZonesAlertZoneType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PowerZonesAlertZoneType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PowerZonesAlertZoneType.CustomCodingKeys()
{
  if (*v0)
  {
    result = 1701080941;
  }

  else
  {
    result = 0x65676E6172;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PowerZonesAlertZoneType.CustomCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65676E6172 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PowerZonesAlertZoneType.CustomCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PowerZonesAlertZoneType.CustomCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PowerZonesAlertZoneType.OffCodingKeys@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PowerZonesAlertZoneType.OffCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PowerZonesAlertZoneType.OffCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerZonesAlertZoneType.AutomaticCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerZonesAlertZoneType.AutomaticCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x20F2E7FF0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PowerZonesAlertZoneType.TargetCodingKeys()
{
  if (*v0)
  {
    result = 1701080941;
  }

  else
  {
    result = 0x65756C6176;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PowerZonesAlertZoneType.TargetCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PowerZonesAlertZoneType.TargetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PowerZonesAlertZoneType.TargetCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PowerZonesAlertZoneType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO13OffCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO13OffCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v41 = *(v3 - 8);
  v42 = v3;
  v4 = *(v41 + 64);
  MEMORY[0x28223BE20](v3);
  v40 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16CustomCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16CustomCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v46 = *(v6 - 8);
  v47 = v6;
  v7 = *(v46 + 64);
  MEMORY[0x28223BE20](v6);
  v45 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO19AutomaticCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO19AutomaticCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v39 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16TargetCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16TargetCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v39 = *(v13 - 8);
  v14 = *(v39 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO10CodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedEncodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO10CodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v18 = *(v17 - 8);
  v49 = v17;
  v50 = v18;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v20 = *v1;
  v48 = v1[1];
  v21 = *(v1 + 16);
  v23 = a1[3];
  v22 = a1[4];
  v24 = a1;
  v26 = &v39 - v25;
  __swift_project_boxed_opaque_existential_1(v24, v23);
  lazy protocol witness table accessor for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = v21 >> 6;
  if (v21 >> 6 > 1)
  {
    if (v27 != 2)
    {
      LOBYTE(v53) = 3;
      lazy protocol witness table accessor for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys();
      v37 = v40;
      v38 = v49;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v41 + 8))(v37, v42);
      return (*(v50 + 8))(v26, v38);
    }

    LOBYTE(v53) = 2;
    lazy protocol witness table accessor for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys();
    v31 = v45;
    v32 = v49;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v53 = v20;
    v54 = v48;
    v52 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdGMd, &_sSnySdGMR);
    lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>);
    v33 = v47;
    v34 = v51;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    if (!v34)
    {
      LOBYTE(v53) = v21 & 0x3F;
      v52 = 1;
      lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    (*(v46 + 8))(v31, v33);
    return (*(v50 + 8))(v26, v32);
  }

  if (v27)
  {
    LOBYTE(v53) = 1;
    lazy protocol witness table accessor for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys();
    v32 = v49;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v53) = 0;
    v35 = v44;
    v36 = v51;
    KeyedEncodingContainer.encode(_:forKey:)();
    if (!v36)
    {
      v53 = v48;
      v52 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore16CyclingPowerZoneCGMd, &_sSay11WorkoutCore16CyclingPowerZoneCGMR);
      lazy protocol witness table accessor for type [CyclingPowerZone] and conformance <A> [A](&lazy protocol witness table cache variable for type [CyclingPowerZone] and conformance <A> [A], &lazy protocol witness table cache variable for type CyclingPowerZone and conformance Zone);
      KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    }

    (*(v43 + 8))(v12, v35);
    return (*(v50 + 8))(v26, v32);
  }

  LOBYTE(v53) = 0;
  lazy protocol witness table accessor for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys();
  v28 = v49;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  LOBYTE(v53) = 0;
  v29 = v51;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v29)
  {
    LOBYTE(v53) = v48;
    v52 = 1;
    lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  (*(v39 + 8))(v16, v13);
  return (*(v50 + 8))(v26, v28);
}

void PowerZonesAlertZoneType.hash(into:)(uint64_t a1)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = v5 >> 6;
  if (v5 >> 6 > 1)
  {
    if (v6 != 2)
    {
      MEMORY[0x20F2E7FF0](3);
      return;
    }

    v8 = *v1;
    v9 = *(v1 + 8);
    MEMORY[0x20F2E7FF0](2);
    specialized Range<>.hash(into:)(v4, v3);
    goto LABEL_9;
  }

  if (!v6)
  {
    MEMORY[0x20F2E7FF0](0);
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0.0;
    }

    MEMORY[0x20F2E8020](*&v7);
LABEL_9:
    String.hash(into:)();

    return;
  }

  MEMORY[0x20F2E7FF0](1);
  MEMORY[0x20F2E7FF0](*&v4);
  if (v3 == 0.0)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    specialized Array<A>.hash(into:)(a1, *&v3);
  }
}

Swift::Int PowerZonesAlertZoneType.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  PowerZonesAlertZoneType.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t PowerZonesAlertZoneType.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO13OffCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO13OffCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v55 = *(v3 - 8);
  v56 = v3;
  v4 = *(v55 + 64);
  MEMORY[0x28223BE20](v3);
  v62 = &v52 - v5;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16CustomCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16CustomCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v59 = *(v57 - 8);
  v6 = *(v59 + 64);
  MEMORY[0x28223BE20](v57);
  v61 = &v52 - v7;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO19AutomaticCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO19AutomaticCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v58 = *(v60 - 8);
  v8 = *(v58 + 64);
  MEMORY[0x28223BE20](v60);
  v10 = &v52 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16TargetCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO16TargetCodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v54 = *(v11 - 8);
  v12 = *(v54 + 64);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO10CodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMd, &_ss22KeyedDecodingContainerVy11WorkoutCore23PowerZonesAlertZoneTypeO10CodingKeys33_A156AB01E27706298D37DB9BED8AC64ELLOGMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  v20 = a1[3];
  v21 = a1[4];
  v65 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys();
  v22 = v64;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v22)
  {
    v52 = v11;
    v53 = v14;
    v23 = v61;
    v24 = v62;
    v25 = v60;
    v64 = v16;
    v26 = v63;
    v27 = KeyedDecodingContainer.allKeys.getter();
    v28 = (2 * *(v27 + 16)) | 1;
    v70 = v27;
    v71 = v27 + 32;
    v72 = 0;
    v73 = v28;
    v29 = specialized Collection<>.popFirst()();
    if (v29 == 4 || v72 != v73 >> 1)
    {
      v35 = type metadata accessor for DecodingError();
      swift_allocError();
      v37 = v36;
      v38 = v19;
      v39 = v15;
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v37 = &type metadata for PowerZonesAlertZoneType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v35 - 8) + 104))(v37, *MEMORY[0x277D84160], v35);
      swift_willThrow();
      (*(v64 + 8))(v38, v39);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v29 > 1u)
      {
        if (v29 == 2)
        {
          LOBYTE(v68) = 2;
          lazy protocol witness table accessor for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v42 = v64;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySdGMd, &_sSnySdGMR);
          v67 = 0;
          lazy protocol witness table accessor for type Range<Double> and conformance <> Range<A>(&lazy protocol witness table cache variable for type Range<Double> and conformance <> Range<A>);
          v43 = v57;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v51 = v68;
          v62 = v69;
          v66 = 1;
          lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v59 + 8))(v23, v43);
          (*(v42 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v49 = v67 | 0x80;
          v31 = v26;
          v50 = v62;
        }

        else
        {
          LOBYTE(v68) = 3;
          lazy protocol witness table accessor for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v45 = v64;
          (*(v55 + 8))(v24, v56);
          (*(v45 + 8))(v19, v15);
          swift_unknownObjectRelease();
          v51 = 0;
          v50 = 0;
          v49 = -64;
          v31 = v26;
        }
      }

      else
      {
        v30 = v19;
        v31 = v26;
        if (v29)
        {
          LOBYTE(v68) = 1;
          lazy protocol witness table accessor for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys();
          v44 = v10;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          LOBYTE(v68) = 0;
          v46 = v25;
          v51 = KeyedDecodingContainer.decode(_:forKey:)();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore16CyclingPowerZoneCGMd, &_sSay11WorkoutCore16CyclingPowerZoneCGMR);
          v67 = 1;
          lazy protocol witness table accessor for type [CyclingPowerZone] and conformance <A> [A](&lazy protocol witness table cache variable for type [CyclingPowerZone] and conformance <A> [A], &lazy protocol witness table cache variable for type CyclingPowerZone and conformance Zone);
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          (*(v58 + 8))(v44, v46);
          (*(v64 + 8))(v30, v15);
          swift_unknownObjectRelease();
          v50 = v68;
          v49 = 64;
        }

        else
        {
          LOBYTE(v68) = 0;
          lazy protocol witness table accessor for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys();
          v32 = v53;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          LOBYTE(v68) = 0;
          v33 = v52;
          KeyedDecodingContainer.decode(_:forKey:)();
          v34 = v64;
          v48 = v47;
          v67 = 1;
          lazy protocol witness table accessor for type TargetZone.ZoneType and conformance TargetZone.ZoneType();
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v54 + 8))(v32, v33);
          (*(v34 + 8))(v30, v15);
          swift_unknownObjectRelease();
          v49 = 0;
          v50 = v68;
          v51 = v48;
        }
      }

      *v31 = v51;
      *(v31 + 8) = v50;
      *(v31 + 16) = v49;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v65);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PowerZonesAlertZoneType()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  PowerZonesAlertZoneType.hash(into:)(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PowerZonesAlertZoneType()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  Hasher.init(_seed:)();
  PowerZonesAlertZoneType.hash(into:)(v3);
  return Hasher._finalize()();
}

unint64_t PowerZonesAlertZoneType.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16) >> 6;
  if (v3 <= 1)
  {
    if (v3)
    {
      _StringGuts.grow(_:)(55);
      MEMORY[0x20F2E6D80](0xD000000000000029, 0x800000020B467470);
      v5 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x20F2E6D80](v5);

      MEMORY[0x20F2E6D80](0x3A65676E6172202CLL, 0xE900000000000020);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay11WorkoutCore16CyclingPowerZoneCGSgMd, &_sSay11WorkoutCore16CyclingPowerZoneCGSgMR);
      v6 = Optional.description.getter();
      MEMORY[0x20F2E6D80](v6);

      goto LABEL_8;
    }

    v4 = *v0;
    _StringGuts.grow(_:)(51);
    MEMORY[0x20F2E6D80](0xD000000000000026, 0x800000020B4674A0);
    Double.write<A>(to:)();
    MEMORY[0x20F2E6D80](0x203A65646F6D202CLL, 0xE800000000000000);
LABEL_6:
    _print_unlocked<A, B>(_:_:)();
LABEL_8:
    MEMORY[0x20F2E6D80](41, 0xE100000000000000);
    return 0;
  }

  if (v3 == 2)
  {
    _StringGuts.grow(_:)(51);
    MEMORY[0x20F2E6D80](0xD000000000000026, 0x800000020B467440);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](3943982, 0xE300000000000000);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x20F2E6D80](0, 0xE000000000000000);

    MEMORY[0x20F2E6D80](0x203A65646F6D202CLL, 0xE800000000000000);
    goto LABEL_6;
  }

  return 0xD00000000000001BLL;
}

unint64_t PowerZonesAlertZoneType.analyticsKey.getter()
{
  v1 = 0xD000000000000017;
  v2 = *(v0 + 16) >> 6;
  v3 = 0xD000000000000014;
  if (v2 == 2)
  {
    v3 = 0xD000000000000017;
  }

  if (v2)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*(v0 + 16) >> 6 <= 1u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *(v0 + 16);
  return result;
}

BOOL specialized static PowerZonesAlertZoneType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = v4 >> 6;
  if (v4 >> 6 > 1)
  {
    if (v8 == 2)
    {
      if ((v7 & 0xC0) == 0x80)
      {
        v13 = *a1;
        v14 = *a2;
        if (*&v2 == *&v6)
        {
          v15 = *(a1 + 8);
          v16 = *(a2 + 8);
          if (*&v3 == *&v5)
          {
            LOBYTE(v11) = v4 & 0x3F;
            LOBYTE(v12) = v7 & 0x3F;
            goto LABEL_11;
          }
        }

        goto LABEL_28;
      }
    }

    else
    {
      v21 = v7 >= 0xC0 && (v5 | v6) == 0;
      if (v21 && v7 == 192)
      {
        outlined consume of PowerZonesAlertZoneType(*a1, v3, v4);
        outlined consume of PowerZonesAlertZoneType(0, 0, 192);
        return 1;
      }
    }

    goto LABEL_26;
  }

  if (!v8)
  {
    if (v7 < 0x40)
    {
      v9 = *a1;
      v10 = *a2;
      if (*&v2 == *&v6)
      {
        v11 = *(a1 + 8);
        v12 = *(a2 + 8);
LABEL_11:
        v17 = specialized == infix<A>(_:_:)(v11, v12);
        outlined consume of PowerZonesAlertZoneType(v2, v3, v4);
        outlined consume of PowerZonesAlertZoneType(v6, v5, v7);
        return v17 & 1;
      }

      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if ((v7 & 0xC0) != 0x40)
  {
    v22 = *(a1 + 8);

LABEL_26:
    v23 = v6;
    v24 = v5;
    v25 = v7;
LABEL_27:
    outlined copy of PowerZonesAlertZoneType(v23, v24, v25);
LABEL_28:
    outlined consume of PowerZonesAlertZoneType(v2, v3, v4);
    v26 = v6;
LABEL_29:
    outlined consume of PowerZonesAlertZoneType(v26, v5, v7);
    return 0;
  }

  if (v2 != v6)
  {
    outlined copy of PowerZonesAlertZoneType(*a2, *(a2 + 8), v7);
    v23 = v2;
    v24 = v3;
    v25 = v4;
    goto LABEL_27;
  }

  if (*&v3 == 0.0)
  {
    v27 = *(a2 + 8);

    outlined copy of PowerZonesAlertZoneType(v2, v5, v7);
    outlined copy of PowerZonesAlertZoneType(v2, 0, v4);
    outlined consume of PowerZonesAlertZoneType(v2, 0, v4);
    outlined consume of PowerZonesAlertZoneType(v2, v5, v7);
    if (*&v5 == 0.0)
    {
      return 1;
    }

LABEL_35:
    v26 = v2;
    goto LABEL_29;
  }

  v19 = *a1;
  if (*&v5 == 0.0)
  {
    outlined copy of PowerZonesAlertZoneType(v19, 0, v7);
    outlined copy of PowerZonesAlertZoneType(v2, 0, v7);
    outlined copy of PowerZonesAlertZoneType(v2, v3, v4);
    outlined consume of PowerZonesAlertZoneType(v2, v3, v4);
    goto LABEL_35;
  }

  outlined copy of PowerZonesAlertZoneType(v19, v3, v4);
  outlined copy of PowerZonesAlertZoneType(v2, v5, v7);
  outlined copy of PowerZonesAlertZoneType(v2, v3, v4);
  v20 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11WorkoutCore16CyclingPowerZoneC_Tt1g5(v3, v5);
  outlined consume of PowerZonesAlertZoneType(v2, v3, v4);
  outlined consume of PowerZonesAlertZoneType(v2, v5, v7);
  outlined consume of PowerZonesAlertZoneType(v2, v3, v4);
  return (v20 & 1) != 0;
}

unint64_t lazy protocol witness table accessor for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CodingKeys and conformance PowerZonesAlertZoneType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys()
{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.OffCodingKeys and conformance PowerZonesAlertZoneType.OffCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys()
{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.CustomCodingKeys and conformance PowerZonesAlertZoneType.CustomCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys()
{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.AutomaticCodingKeys and conformance PowerZonesAlertZoneType.AutomaticCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys()
{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys;
  if (!lazy protocol witness table cache variable for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PowerZonesAlertZoneType.TargetCodingKeys and conformance PowerZonesAlertZoneType.TargetCodingKeys);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CyclingPowerZone and conformance Zone(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CyclingPowerZone();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11WorkoutCore23PowerZonesAlertZoneTypeO(uint64_t a1)
{
  v1 = *(a1 + 16) >> 6;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PowerZonesAlertZoneType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1D && *(a1 + 17))
  {
    return (*a1 + 29);
  }

  v3 = ((*(a1 + 16) >> 1) & 0x1C | (*(a1 + 16) >> 6)) ^ 0x1F;
  if (v3 >= 0x1C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for PowerZonesAlertZoneType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1C)
  {
    *(result + 16) = 0;
    *result = a2 - 29;
    *(result + 8) = 0;
    if (a3 >= 0x1D)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1D)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 2) & 7) - 8 * a2);
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for PowerZonesAlertZoneType(uint64_t result, unsigned int a2)
{
  if (a2 < 3)
  {
    *(result + 16) = *(result + 16) & 7 | (a2 << 6);
  }

  else
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    *(result + 16) = -64;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PowerZonesAlertZoneType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for PowerZonesAlertZoneType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PowerZonesAlertZoneType.TargetCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PowerZonesAlertZoneType.TargetCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized PowerZonesAlertZoneType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746567726174 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6974616D6F747561 && a2 == 0xE900000000000063 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 6710895 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t BlastDoorConfigurationValidator.deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return v0;
}

uint64_t BlastDoorConfigurationValidator.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t Double.tenths.getter(int8x16_t a1, int8x16_t a2)
{
  *a2.i64 = *a1.i64 - trunc(*a1.i64);
  v2.f64[0] = NAN;
  v2.f64[1] = NAN;
  v3 = *vbslq_s8(vnegq_f64(v2), a2, a1).i64 * 10.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v3 < 9.22337204e18)
  {
    return v3;
  }

LABEL_7:
  __break(1u);
  return result;
}

void Double.hundredths.getter(long double a1)
{
  v1 = fmod(a1, 0.1) * 100.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_7:
    __break(1u);
  }
}

Swift::Double_optional __swiftcall Double.safeValueForFormatting()()
{
  if ((*&v0 & 0x7FF0000000000000) == 0x7FF0000000000000)
  {
    v1 = 0;
  }

  else
  {
    v1 = LOBYTE(v0);
  }

  result.value = v0;
  result.is_nil = v1;
  return result;
}

void FakeCMSkiTracker.startTimer()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 16);
  type metadata accessor for OS_dispatch_queue();
  *v6 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
  v7 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v8 = swift_allocObject();
    *(v8 + 16) = v1;
    aBlock[4] = partial apply for closure #1 in FakeCMSkiTracker.startTimer();
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSTimer) -> ();
    aBlock[3] = &block_descriptor_64;
    v9 = _Block_copy(aBlock);
    v10 = objc_opt_self();
    v11 = v1;
    v12 = [v10 timerWithTimeInterval:1 repeats:v9 block:5.0];
    _Block_release(v9);

    v13 = OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_timer;
    swift_beginAccess();
    [*&v11[v13] invalidate];
    swift_beginAccess();
    v14 = *&v11[v13];
    *&v11[v13] = 0;

    *&v11[OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_updateCount] = 0;
    *&v11[v13] = v12;
    swift_endAccess();
    v15 = objc_opt_self();
    v16 = v12;
    v17 = [v15 mainRunLoop];
    [v17 addTimer:v16 forMode:*MEMORY[0x277CBE640]];
  }

  else
  {
    __break(1u);
  }
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned CMLiveSkiData?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

Swift::Void __swiftcall FakeCMSkiTracker.stopLiveUpdates()()
{
  v1 = (v0 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_handler);
  v2 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_handler);
  v3 = *(v0 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_handler + 8);
  *v1 = 0;
  v1[1] = 0;
  outlined consume of (@escaping @callee_guaranteed (@guaranteed CMLiveSkiData?, @guaranteed Error?) -> ())?(v2);
  v4 = OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_timer;
  swift_beginAccess();
  [*(v0 + v4) invalidate];
  v5 = *(v0 + v4);
  *(v0 + v4) = 0;

  *(v0 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_updateCount) = 0;
}

void FakeCMSkiTracker.updateMetrics()(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_updateCount;
  v3 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_updateCount);
  v4 = __CFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_14;
  }

  *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_updateCount) = v5;
  v6 = specialized static BinaryFloatingPoint<>.random<A>(in:using:)(a1, 6.5, 7.0);
  v7 = OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_averageSpeed;
  *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_averageSpeed) = v8;
  specialized static BinaryFloatingPoint<>.random<A>(in:using:)(v6, 11.176, 15.6464);
  v10 = OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_maximumSpeed;
  if (v9 <= *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_maximumSpeed))
  {
    v9 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_maximumSpeed);
  }

  *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_maximumSpeed) = v9;
  v11 = OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_distance;
  *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_distance) = *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_distance) + *(v1 + v7) * 5.0;
  v12 = OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_descent;
  *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_descent) = *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_descent) + 10.97;
  if (__ROR8__(0xAAAAAAAAAAAAAAABLL * *(v1 + v2), 2) <= 0x1555555555555555uLL)
  {
    v13 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_runCount);
    v4 = __CFADD__(v13, 1);
    v14 = v13 + 1;
    if (v4)
    {
LABEL_15:
      __break(1u);
      return;
    }

    *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_runCount) = v14;
  }

  v18 = [objc_allocWithZone(type metadata accessor for FakeCMLiveSkiData()) init];
  [v18 setAverageSpeed_];
  [v18 setDistance_];
  [v18 setVerticalDescent_];
  if ((*(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_runCount) & 0x8000000000000000) != 0)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  [v18 setRunCount_];
  [v18 setMaximumSpeed_];
  v15 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_handler);
  if (v15)
  {
    v16 = *(v1 + OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_handler + 8);
    outlined copy of (@escaping @callee_guaranteed (@guaranteed CMLiveSkiData?, @guaranteed Error?) -> ())?(v15);
    v17 = v18;
    v15(v18, 0);

    outlined consume of (@escaping @callee_guaranteed (@guaranteed CMLiveSkiData?, @guaranteed Error?) -> ())?(v15);
  }
}

id FakeCMSkiTracker.init()()
{
  *&v0[OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_updateCount] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_timer] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_distance] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_averageSpeed] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_maximumSpeed] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_descent] = 0;
  *&v0[OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_runCount] = 1;
  v1 = &v0[OBJC_IVAR____TtC11WorkoutCore16FakeCMSkiTracker_handler];
  v2 = type metadata accessor for FakeCMSkiTracker();
  *v1 = 0;
  *(v1 + 1) = 0;
  v4.receiver = v0;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_init);
}

id FakeCMSkiTracker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FakeCMSkiTracker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t outlined copy of (@escaping @callee_guaranteed (@guaranteed CMLiveSkiData?, @guaranteed Error?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t outlined consume of (@escaping @callee_guaranteed (@guaranteed CMLiveSkiData?, @guaranteed Error?) -> ())?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t WorkoutDevicesProviderTester.testWatch.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[4];
  v9 = v1[3];
  v10 = v2;
  v11 = v1[5];
  v3 = v11;
  v4 = v1[2];
  v8[0] = v1[1];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of WorkoutDevice(v8, &v7);
}

uint64_t WorkoutDevicesProviderTester.testAirPods.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[9];
  v9 = v1[8];
  v10 = v2;
  v11 = v1[10];
  v3 = v11;
  v4 = v1[7];
  v8[0] = v1[6];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of WorkoutDevice(v8, &v7);
}

uint64_t WorkoutDevicesProviderTester.testPowerbeats.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[14];
  v9 = v1[13];
  v10 = v2;
  v11 = v1[15];
  v3 = v11;
  v4 = v1[12];
  v8[0] = v1[11];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of WorkoutDevice(v8, &v7);
}

uint64_t WorkoutDevicesProviderTester.testHeartRateMonitor.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[19];
  v9 = v1[18];
  v10 = v2;
  v11 = v1[20];
  v3 = v11;
  v4 = v1[17];
  v8[0] = v1[16];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return outlined init with copy of WorkoutDevice(v8, &v7);
}

uint64_t WorkoutDevicesProviderTester.deinit()
{
  v1 = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(v1, v0);

  v2 = *(v0 + 24);
  v3 = *(v0 + 40);
  v4 = *(v0 + 64);
  v5 = *(v0 + 88);

  v6 = *(v0 + 104);
  v7 = *(v0 + 120);
  v8 = *(v0 + 144);
  v9 = *(v0 + 168);

  v10 = *(v0 + 184);
  v11 = *(v0 + 200);
  v12 = *(v0 + 224);
  v13 = *(v0 + 248);

  v14 = *(v0 + 264);
  v15 = *(v0 + 280);
  v16 = *(v0 + 304);
  v17 = *(v0 + 328);

  return v0;
}