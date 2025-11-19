uint64_t CLI.sendMessage(_:)(uint64_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    v4 = *(v1 + 16);
    swift_unknownObjectRetain();
    v5 = Dictionary<>.encodedXPCObject.getter(v3);
    v6 = xpc_connection_send_message_with_reply_sync(v2, v5);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (*(v1 + 33) == 1)
    {
      v7 = static os_log_type_t.debug.getter();
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v8 = log;
      if (os_log_type_enabled(log, v7))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v17 = v10;
        *v9 = 136315138;
        v11 = [v6 description];
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;

        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v17);

        *(v9 + 4) = v15;
        _os_log_impl(&dword_26C161000, v8, v7, "CLI received [SYNC]: %s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v10);
        MEMORY[0x26D69EAB0](v10, -1, -1);
        MEMORY[0x26D69EAB0](v9, -1, -1);
      }
    }

    swift_getObjectType();
    v16 = OS_xpc_object.xpcMessageDictionary.getter();
    swift_unknownObjectRelease();
    return v16;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::String_optional __swiftcall CLI.getState()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C328DC0;
  *(inited + 32) = 0x5F69757466697773;
  v1 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xEF646E616D6D6F63;
  strcpy((inited + 48), "ctl_getState");
  *(inited + 61) = 0;
  *(inited + 62) = -5120;
  v2 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v1, &_sSS_yptMd, &_sSS_yptMR);
  v3 = CLI.sendMessage(_:)(v2);

  if (!v3)
  {
    v11 = 0u;
    v12 = 0u;
    goto LABEL_10;
  }

  Dictionary<>.daemonResponse.getter(v3, &v11);

  if (!*(&v12 + 1))
  {
LABEL_10:
    outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](&v11, &_sypSgMd, &_sypSgMR);
    v6 = 0;
    v7 = 0;
    goto LABEL_11;
  }

  v4 = swift_dynamicCast();
  v5 = v4 == 0;
  if (v4)
  {
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v7 = 0;
  }

  else
  {
    v7 = v10;
  }

LABEL_11:
  result.value._object = v7;
  result.value._countAndFlagsBits = v6;
  return result;
}

uint64_t CLI.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t CLI.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFAC0A2UIV_Ttg5Tm(void (*a1)(void *, void))
{
  v2 = v1;
  v3 = v1[4];
  if (!*(v3 + 7))
  {
    __break(1u);
    goto LABEL_17;
  }

  v5 = *(v2[3] + 49);
  v6 = *v3;
  v7 = *(v3 + 4);
  if (v7)
  {
    if ((*(v2[3] + 49) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {
    if (v6)
    {
      v8 = 0;
    }

    else
    {
      v8 = *(v2[3] + 49);
    }

    if (v8 == 1)
    {
LABEL_12:
      a1(v2, 0);
      v11 = v2[4];
      if (*(v11 + 56))
      {
        CircularBuffer.Transaction.commit()();
        v12 = v2[1];
        if (v12)
        {
          if (*(v11 + 56))
          {
            v13 = v2[2];
            *v11 = v6;
            *(v11 + 4) = v7 & 1;
            *(v11 + 8) = v12;
            *(v11 + 16) = v13;
            *(v11 + 32) = 0;
            *(v11 + 40) = 0;
            *(v11 + 24) = 0;
            *(v11 + 48) = 0;
            *(v11 + 52) = 2;
            *(v11 + 56) = &type metadata for Trace.Control;
            return;
          }

          goto LABEL_19;
        }

LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }
  }

  CircularBuffer.Transaction.commit()();
  v9 = v2[1];
  if (!v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(v3 + 7))
  {
    v10 = v2[2];
    *v3 = 0;
    *(v3 + 4) = v5 ^ 1;
    *(v3 + 1) = v9;
    *(v3 + 2) = v10;
    *(v3 + 4) = 0;
    *(v3 + 5) = 0;
    *(v3 + 3) = 0;
    v3[12] = 0;
    *(v3 + 52) = 2;
    *(v3 + 7) = &type metadata for Trace.Control;
    goto LABEL_12;
  }

LABEL_21:
  __break(1u);
}

void _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFAE_Ttg5()
{
  v1 = v0;
  v2 = v0[4];
  if (!*(v2 + 7))
  {
    __break(1u);
    goto LABEL_11;
  }

  v3 = *v2;
  v4 = *(v2 + 4);
  if (v4)
  {
LABEL_6:
    _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFyAEzXEfU_AE_Tt2g5(v1, 1);
    v7 = v1[4];
    if (*(v7 + 56))
    {
      CircularBuffer.Transaction.commit()();
      v8 = v1[1];
      if (v8)
      {
        if (*(v7 + 56))
        {
          v9 = v1[2];
          *v7 = v3;
          *(v7 + 4) = v4 & 1;
          *(v7 + 8) = v8;
          *(v7 + 16) = v9;
          *(v7 + 32) = 0;
          *(v7 + 40) = 0;
          *(v7 + 24) = 0;
          *(v7 + 48) = 0;
          *(v7 + 52) = 2;
          *(v7 + 56) = &type metadata for Trace.Control;
          return;
        }

        goto LABEL_13;
      }

LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  CircularBuffer.Transaction.commit()();
  v5 = v1[1];
  if (!v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(v2 + 7))
  {
    v6 = v1[2];
    *v2 = 0;
    *(v2 + 4) = 1;
    *(v2 + 1) = v5;
    *(v2 + 2) = v6;
    *(v2 + 4) = 0;
    *(v2 + 5) = 0;
    *(v2 + 3) = 0;
    v2[12] = 0;
    *(v2 + 52) = 2;
    *(v2 + 7) = &type metadata for Trace.Control;
    goto LABEL_6;
  }

LABEL_15:
  __break(1u);
}

void _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFyAEzXEfU_AC0A2UIV_Tt2g5(uint64_t a1, char a2)
{
  if (a2)
  {
    if (*(*(a1 + 24) + 49))
    {
      specialized T_Header.init()(v112);
      specialized Trace_Handle.write<A>(struct:)(v112);
    }

    else
    {
      specialized T_Header.init()(v112);
      specialized Trace_Handle.write<A>(struct:)(123123123, (v113 << 16) | 1);
    }
  }

  v3 = *(a1 + 24);
  if (*(v3 + 49) == 1)
  {
    v104 = a1;
    static Trace.SwiftUI.types.getter(&v107);
    v4 = v107;
    v5 = v107 + 40;
    v6 = -*(v107 + 16);
    v7 = -1;
    do
    {
      if (v6 + v7 == -1)
      {
        goto LABEL_11;
      }

      if (++v7 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v8 = v5 + 16;
      v9 = *(v5 - 8);
      v10 = (*(*v5 + 24))(v9);
      v5 = v8;
    }

    while (v10 != -1);
    v107 = 0;
    v108 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v3 = v108;
    v107 = v9;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(reflecting:)();
    v13 = v12;

    v107 = v11;
    v108 = v13;
    MEMORY[0x26D69CDB0](0xD00000000000002ALL, 0x800000026C33D810);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_11:

    static Trace.SwiftUI.types.getter(&v111);
    LOBYTE(v106) = *(v3 + 49);
    Evolution_Types.tracepoints(version:)(&v106, &v107);

    v14 = v107;
    v15 = *(v107 + 16);
    v107 = 0;
    v108 = 0;
    v109 = v15;
    v110 = 20;
    if (v15)
    {
      v94 = 0;
      v102 = 0;
      v16 = v14 + 40;
      v17 = v104;
      while (1)
      {
        v18 = *(v16 - 8);
        v19 = *v16;
        v20 = *(*v16 + 8);
        v100 = v20[9](v18, v20);
        v21 = v20[4](v18, v20);
        v23 = v21;
        v24 = v22;
        v25 = *(v17 + 96);
        v26 = *v25;
        if (*(*v25 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22), (v28 & 1) != 0))
        {
          v98 = *(*(v26 + 56) + 4 * v27);
        }

        else
        {
          v29 = specialized Trace_Handle.write<A>(attachment:)(v23, v24);
          v25 = *(v104 + 96);
          v30 = *v25;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v111 = *v25;
          *v25 = 0x8000000000000000;
          v98 = v29;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v23, v24, isUniquelyReferenced_nonNull_native);
          v32 = *v25;
          *v25 = v111;
        }

        v33 = v20[5](v18, v20);
        v35 = v33;
        v36 = v34;
        v37 = *v25;
        if (*(*v25 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34), (v39 & 1) != 0))
        {
          v96 = *(*(v37 + 56) + 4 * v38);

          v17 = v104;
        }

        else
        {
          v40 = v15;
          v41 = v19;
          v42 = specialized Trace_Handle.write<A>(attachment:)(v35, v36);
          v43 = *(v104 + 96);
          v44 = *v43;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v111 = *v43;
          *v43 = 0x8000000000000000;
          v96 = v42;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, v35, v36, v45);
          v46 = *v43;
          *v43 = v111;
          v17 = v104;
          v19 = v41;
          v15 = v40;
        }

        v47 = Trace.Control.writtenOnce(type:lazy:flush:)(v18, 0, 0);
        v48 = (*(v19 + 16))(v18, v19);
        if (v102 == v109 || !v94)
        {
          specialized BufferAttachment.append_slow()();
        }

        v49 = v108;
        if (v108 < 0)
        {
          break;
        }

        v50 = v110;
        if ((v108 * v110) >> 64 != (v108 * v110) >> 63)
        {
          goto LABEL_52;
        }

        v94 = v107;
        v51 = (v107 + v108 * v110);
        *v51 = v100;
        v51[1] = v98;
        v51[2] = v96;
        v51[3] = v47;
        v51[4] = v48;
        v102 = v49 + 1;
        v108 = v49 + 1;
        v16 += 16;
        if (!--v15)
        {

          v52 = v109;
          v53 = v94;
          goto LABEL_29;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return;
    }

    v52 = 0;
    v102 = 0;
    v53 = 0;
    v50 = 20;
    v17 = v104;
LABEL_29:
    v95 = specialized Trace_Handle.write<A>(attachment:)(v53, v102, v52, v50);
    v108 = 0;
    static Trace.SwiftUI.types.getter(&v106);
    v105 = *(*(v17 + 24) + 49);
    Evolution_Types.attachments(version:)(&v105, &v111);

    v54 = *(v111 + 16);
    if (v54)
    {
      v103 = 0;
      v55 = v111 + 40;
      while (1)
      {
        v56 = *(v55 - 8);
        v57 = *(*v55 + 8);
        v101 = v57[9](v56, v57);
        v58 = v57[4](v56, v57);
        v60 = v58;
        v61 = v59;
        v62 = *(v17 + 96);
        v63 = *v62;
        if (!*(*v62 + 16))
        {
          goto LABEL_34;
        }

        v64 = specialized __RawDictionaryStorage.find<A>(_:)(v58, v59);
        if (v65)
        {
          v99 = *(*(v63 + 56) + 4 * v64);
        }

        else
        {
LABEL_34:
          v66 = specialized Trace_Handle.write<A>(attachment:)(v60, v61);
          v62 = *(v104 + 96);
          v67 = *v62;
          v68 = swift_isUniquelyReferenced_nonNull_native();
          v111 = *v62;
          *v62 = 0x8000000000000000;
          v99 = v66;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v66, v60, v61, v68);
          v69 = *v62;
          *v62 = v111;
        }

        v70 = v57[5](v56, v57);
        v72 = v70;
        v73 = v71;
        v74 = *v62;
        if (*(*v62 + 16) && (v75 = specialized __RawDictionaryStorage.find<A>(_:)(v70, v71), (v76 & 1) != 0))
        {
          v97 = *(*(v74 + 56) + 4 * v75);

          v17 = v104;
        }

        else
        {
          v77 = v54;
          v78 = specialized Trace_Handle.write<A>(attachment:)(v72, v73);
          v79 = *(v104 + 96);
          v80 = *v79;
          v81 = swift_isUniquelyReferenced_nonNull_native();
          v111 = *v79;
          *v79 = 0x8000000000000000;
          v97 = v78;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v78, v72, v73, v81);
          v82 = *v79;
          *v79 = v111;
          v17 = v104;
          v54 = v77;
        }

        v83 = Trace.Control.writtenOnce(type:lazy:flush:)(v56, 0, 0);
        if (v103 == v109 || !v53)
        {
          specialized BufferAttachment.append_slow()();
        }

        v84 = v108;
        if (v108 < 0)
        {
          goto LABEL_53;
        }

        v50 = v110;
        if ((v108 * v110) >> 64 != (v108 * v110) >> 63)
        {
          goto LABEL_54;
        }

        v53 = v107;
        v85 = (v107 + v108 * v110);
        *v85 = v101;
        v85[1] = v99;
        v85[2] = v97;
        v85[3] = v83;
        v85[4] = 0;
        v103 = v84 + 1;
        v108 = v84 + 1;
        v55 += 16;
        if (!--v54)
        {

          v52 = v109;
          goto LABEL_47;
        }
      }
    }

    v103 = 0;
LABEL_47:
    v86 = specialized Trace_Handle.write<A>(attachment:)(v53, v103, v52, v50);
    v87 = off_287CE1D80;
    v88 = off_287CE1D80(&type metadata for Trace.SwiftUI, &protocol witness table for Trace.SwiftUI);
    v90 = specialized Trace_Handle.writtenOnce(string:)(v88, v89);

    v91 = v87(&type metadata for Trace.SwiftUI, &protocol witness table for Trace.SwiftUI);
    v93 = specialized Trace_Handle.writtenOnce(string:)(v91, v92);

    specialized Trace_Handle.write<A>(_:omit:)((v90 << 32) | 1, v93 | (v95 << 32), v86);
    if (v53)
    {
      MEMORY[0x26D69EAB0](v53, -1, -1);
    }
  }
}

uint64_t _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFyAEzXEfU_AC5UIKitV_Tt2g5(uint64_t result, char a2)
{
  v2 = result;
  if (a2)
  {
    if (*(*(result + 24) + 49))
    {
      specialized T_Header.init()(v101);
      result = specialized Trace_Handle.write<A>(struct:)(v101);
    }

    else
    {
      specialized T_Header.init()(v101);
      result = specialized Trace_Handle.write<A>(struct:)(123123123, (v102 << 16) | 1);
    }
  }

  if ((*(*(v2 + 24) + 49) & 1) == 0)
  {
    return result;
  }

  v3 = MEMORY[0x277D84F90];
  v100 = MEMORY[0x277D84F90];
  LOBYTE(v95) = 1;
  Evolution_Types.tracepoints(version:)(&v95, &v96);

  v4 = v96;
  v5 = *(v96 + 16);
  v96 = 0;
  v97 = 0;
  v98 = v5;
  v99 = 20;
  v93 = v2;
  if (v5)
  {
    v83 = 0;
    v91 = 0;
    v6 = v4 + 40;
    while (1)
    {
      v7 = *(v6 - 8);
      v8 = *v6;
      v9 = *(*v6 + 8);
      v89 = v9[9](v7, v9);
      v10 = v9[4](v7, v9);
      v12 = v10;
      v13 = v11;
      v14 = *(v2 + 96);
      v15 = *v14;
      if (*(*v14 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(v10, v11), (v17 & 1) != 0))
      {
        v87 = *(*(v15 + 56) + 4 * v16);
      }

      else
      {
        v18 = specialized Trace_Handle.write<A>(attachment:)(v12, v13);
        v14 = *(v93 + 96);
        v19 = *v14;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v100 = *v14;
        *v14 = 0x8000000000000000;
        v87 = v18;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v18, v12, v13, isUniquelyReferenced_nonNull_native);
        v21 = *v14;
        *v14 = v100;
      }

      v22 = v9[5](v7, v9);
      v24 = v22;
      v25 = v23;
      v26 = *v14;
      if (*(*v14 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v22, v23), (v28 & 1) != 0))
      {
        v85 = *(*(v26 + 56) + 4 * v27);

        v2 = v93;
      }

      else
      {
        v29 = v5;
        v30 = v8;
        v31 = specialized Trace_Handle.write<A>(attachment:)(v24, v25);
        v32 = *(v93 + 96);
        v33 = *v32;
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v100 = *v32;
        *v32 = 0x8000000000000000;
        v85 = v31;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v31, v24, v25, v34);
        v35 = *v32;
        *v32 = v100;
        v2 = v93;
        v8 = v30;
        v5 = v29;
      }

      v36 = Trace.Control.writtenOnce(type:lazy:flush:)(v7, 0, 0);
      result = (*(v8 + 16))(v7, v8);
      v37 = result;
      if (v91 == v98 || !v83)
      {
        result = specialized BufferAttachment.append_slow()();
      }

      v38 = v97;
      if (v97 < 0)
      {
        break;
      }

      v39 = v99;
      if ((v97 * v99) >> 64 != (v97 * v99) >> 63)
      {
        goto LABEL_46;
      }

      v83 = v96;
      v40 = (v96 + v97 * v99);
      *v40 = v89;
      v40[1] = v87;
      v40[2] = v85;
      v40[3] = v36;
      v40[4] = v37;
      v91 = v38 + 1;
      v97 = v38 + 1;
      v6 += 16;
      if (!--v5)
      {

        v41 = v98;
        v42 = v83;
        v3 = MEMORY[0x277D84F90];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v41 = 0;
  v91 = 0;
  v42 = 0;
  v39 = 20;
LABEL_24:
  v84 = specialized Trace_Handle.write<A>(attachment:)(v42, v91, v41, v39);
  v97 = 0;
  v95 = v3;
  v94 = *(*(v2 + 24) + 49);
  Evolution_Types.attachments(version:)(&v94, &v100);

  v43 = *(v100 + 16);
  if (v43)
  {
    v92 = 0;
    v44 = v100 + 40;
    while (1)
    {
      v45 = *(v44 - 8);
      v46 = *(*v44 + 8);
      v90 = v46[9](v45, v46);
      v47 = v46[4](v45, v46);
      v49 = v47;
      v50 = v48;
      v51 = *(v2 + 96);
      v52 = *v51;
      if (!*(*v51 + 16))
      {
        goto LABEL_29;
      }

      v53 = specialized __RawDictionaryStorage.find<A>(_:)(v47, v48);
      if (v54)
      {
        v88 = *(*(v52 + 56) + 4 * v53);
      }

      else
      {
LABEL_29:
        v55 = specialized Trace_Handle.write<A>(attachment:)(v49, v50);
        v51 = *(v93 + 96);
        v56 = *v51;
        v57 = swift_isUniquelyReferenced_nonNull_native();
        v100 = *v51;
        *v51 = 0x8000000000000000;
        v88 = v55;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v55, v49, v50, v57);
        v58 = *v51;
        *v51 = v100;
      }

      v59 = v46[5](v45, v46);
      v61 = v59;
      v62 = v60;
      v63 = *v51;
      if (*(*v51 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(v59, v60), (v65 & 1) != 0))
      {
        v86 = *(*(v63 + 56) + 4 * v64);

        v2 = v93;
      }

      else
      {
        v66 = v43;
        v67 = specialized Trace_Handle.write<A>(attachment:)(v61, v62);
        v68 = *(v93 + 96);
        v69 = *v68;
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v100 = *v68;
        *v68 = 0x8000000000000000;
        v86 = v67;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v67, v61, v62, v70);
        v71 = *v68;
        *v68 = v100;
        v2 = v93;
        v43 = v66;
      }

      result = Trace.Control.writtenOnce(type:lazy:flush:)(v45, 0, 0);
      v72 = result;
      if (v92 == v98 || !v42)
      {
        result = specialized BufferAttachment.append_slow()();
      }

      v73 = v97;
      if (v97 < 0)
      {
        break;
      }

      v39 = v99;
      if ((v97 * v99) >> 64 != (v97 * v99) >> 63)
      {
        goto LABEL_48;
      }

      v42 = v96;
      v74 = (v96 + v97 * v99);
      *v74 = v90;
      v74[1] = v88;
      v74[2] = v86;
      v74[3] = v72;
      v74[4] = 0;
      v92 = v73 + 1;
      v97 = v73 + 1;
      v44 += 16;
      if (!--v43)
      {

        v41 = v98;
        goto LABEL_42;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
    return result;
  }

  v92 = 0;
LABEL_42:
  v75 = specialized Trace_Handle.write<A>(attachment:)(v42, v92, v41, v39);
  v76 = off_287CE5DB8;
  v77 = off_287CE5DB8(&type metadata for Trace.UIKit, &protocol witness table for Trace.UIKit);
  v79 = specialized Trace_Handle.writtenOnce(string:)(v77, v78);

  v80 = v76(&type metadata for Trace.UIKit, &protocol witness table for Trace.UIKit);
  v82 = specialized Trace_Handle.writtenOnce(string:)(v80, v81);

  result = specialized Trace_Handle.write<A>(_:omit:)((v79 << 32) | 2, v82 | (v84 << 32), v75);
  if (v42)
  {
    return MEMORY[0x26D69EAB0](v42, -1, -1);
  }

  return result;
}

void _s21SwiftUITracingSupport5TraceV7ControlV5write4modeyxm_tAA0D7_HandleRzlFyAEzXEfU_AE_Tt2g5(uint64_t a1, char a2)
{
  if (a2)
  {
    if (*(*(a1 + 24) + 49))
    {
      specialized T_Header.init()(v111);
      specialized Trace_Handle.write<A>(struct:)(v111);
    }

    else
    {
      specialized T_Header.init()(v111);
      specialized Trace_Handle.write<A>(struct:)(123123123, (v112 << 16) | 1);
    }
  }

  v3 = *(a1 + 24);
  if (*(v3 + 49) == 1)
  {
    v103 = a1;
    static Trace.Control.types.getter(&v106);
    v4 = v106;
    v5 = v106 + 40;
    v6 = -*(v106 + 16);
    v7 = -1;
    do
    {
      if (v6 + v7 == -1)
      {
        goto LABEL_11;
      }

      if (++v7 >= *(v4 + 16))
      {
        __break(1u);
        goto LABEL_51;
      }

      v8 = v5 + 16;
      v9 = *(v5 - 8);
      v10 = (*(*v5 + 24))(v9);
      v5 = v8;
    }

    while (v10 != -1);
    v106 = 0;
    v107 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);
    v3 = v107;
    v106 = v9;
    swift_getMetatypeMetadata();
    v11 = String.init<A>(reflecting:)();
    v13 = v12;

    v106 = v11;
    v107 = v13;
    MEMORY[0x26D69CDB0](0xD00000000000002ALL, 0x800000026C33D810);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
LABEL_11:

    static Trace.Control.types.getter(&v110);
    LOBYTE(v105) = *(v3 + 49);
    Evolution_Types.tracepoints(version:)(&v105, &v106);

    v14 = v106;
    v15 = *(v106 + 16);
    v106 = 0;
    v107 = 0;
    v108 = v15;
    v109 = 20;
    if (v15)
    {
      v94 = 0;
      v101 = 0;
      v16 = v14 + 40;
      v17 = v103;
      while (1)
      {
        v18 = *(v16 - 8);
        v19 = *v16;
        v20 = *(*v16 + 8);
        v99 = v20[9](v18, v20);
        v21 = v20[4](v18, v20);
        v23 = v21;
        v24 = v22;
        v25 = *(v17 + 96);
        v26 = *v25;
        if (*(*v25 + 16) && (v27 = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22), (v28 & 1) != 0))
        {
          v97 = *(*(v26 + 56) + 4 * v27);
        }

        else
        {
          v29 = specialized Trace_Handle.write<A>(attachment:)(v23, v24);
          v25 = *(v103 + 96);
          v30 = *v25;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v110 = *v25;
          *v25 = 0x8000000000000000;
          v97 = v29;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v29, v23, v24, isUniquelyReferenced_nonNull_native);
          v32 = *v25;
          *v25 = v110;
        }

        v33 = v20[5](v18, v20);
        v35 = v33;
        v36 = v34;
        v37 = *v25;
        if (*(*v25 + 16) && (v38 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v34), (v39 & 1) != 0))
        {
          v95 = *(*(v37 + 56) + 4 * v38);

          v17 = v103;
        }

        else
        {
          v40 = v15;
          v41 = v19;
          v42 = specialized Trace_Handle.write<A>(attachment:)(v35, v36);
          v43 = *(v103 + 96);
          v44 = *v43;
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v110 = *v43;
          *v43 = 0x8000000000000000;
          v95 = v42;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v42, v35, v36, v45);
          v46 = *v43;
          *v43 = v110;
          v17 = v103;
          v19 = v41;
          v15 = v40;
        }

        v47 = Trace.Control.writtenOnce(type:lazy:flush:)(v18, 0, 0);
        v48 = (*(v19 + 16))(v18, v19);
        if (v101 == v108 || !v94)
        {
          specialized BufferAttachment.append_slow()();
        }

        v49 = v107;
        if (v107 < 0)
        {
          break;
        }

        v50 = v109;
        if ((v107 * v109) >> 64 != (v107 * v109) >> 63)
        {
          goto LABEL_52;
        }

        v94 = v106;
        v51 = (v106 + v107 * v109);
        *v51 = v99;
        v51[1] = v97;
        v51[2] = v95;
        v51[3] = v47;
        v51[4] = v48;
        v101 = v49 + 1;
        v107 = v49 + 1;
        v16 += 16;
        if (!--v15)
        {

          v52 = v108;
          v53 = v94;
          goto LABEL_29;
        }
      }

LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      return;
    }

    v52 = 0;
    v101 = 0;
    v53 = 0;
    v50 = 20;
    v17 = v103;
LABEL_29:
    v54 = specialized Trace_Handle.write<A>(attachment:)(v53, v101, v52, v50);
    v107 = 0;
    static Trace.Control.types.getter(&v105);
    v104 = *(*(v17 + 24) + 49);
    Evolution_Types.attachments(version:)(&v104, &v110);

    v55 = *(v110 + 16);
    if (v55)
    {
      v96 = v54;
      v56 = 0;
      v57 = v110 + 40;
      while (1)
      {
        v100 = v57;
        v58 = *(v57 - 8);
        v59 = *(*v57 + 8);
        v102 = v59[9](v58, v59);
        v60 = v59[4](v58, v59);
        v62 = v60;
        v63 = v61;
        v64 = *(v17 + 96);
        v65 = *v64;
        if (!*(*v64 + 16))
        {
          goto LABEL_34;
        }

        v66 = specialized __RawDictionaryStorage.find<A>(_:)(v60, v61);
        if (v67)
        {
          v98 = *(*(v65 + 56) + 4 * v66);
        }

        else
        {
LABEL_34:
          v68 = v56;
          v69 = v53;
          v70 = specialized Trace_Handle.write<A>(attachment:)(v62, v63);
          v64 = *(v103 + 96);
          v71 = *v64;
          v72 = swift_isUniquelyReferenced_nonNull_native();
          v110 = *v64;
          *v64 = 0x8000000000000000;
          v98 = v70;
          v73 = v70;
          v53 = v69;
          v56 = v68;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v73, v62, v63, v72);
          v74 = *v64;
          *v64 = v110;
        }

        v75 = v59[5](v58, v59);
        v77 = v75;
        v78 = v76;
        v79 = *v64;
        if (*(*v64 + 16) && (v80 = specialized __RawDictionaryStorage.find<A>(_:)(v75, v76), (v81 & 1) != 0))
        {
          v82 = *(*(v79 + 56) + 4 * v80);

          v17 = v103;
        }

        else
        {
          v82 = specialized Trace_Handle.write<A>(attachment:)(v77, v78);
          v83 = *(v103 + 96);
          v84 = *v83;
          v85 = swift_isUniquelyReferenced_nonNull_native();
          v110 = *v83;
          *v83 = 0x8000000000000000;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v82, v77, v78, v85);
          v86 = *v83;
          *v83 = v110;
          v17 = v103;
        }

        v87 = Trace.Control.writtenOnce(type:lazy:flush:)(v58, 0, 0);
        if (v56 == v108 || !v53)
        {
          specialized BufferAttachment.append_slow()();
        }

        v88 = v107;
        if (v107 < 0)
        {
          goto LABEL_53;
        }

        v50 = v109;
        if ((v107 * v109) >> 64 != (v107 * v109) >> 63)
        {
          goto LABEL_54;
        }

        v53 = v106;
        v89 = (v106 + v107 * v109);
        *v89 = v102;
        v89[1] = v98;
        v89[2] = v82;
        v89[3] = v87;
        v89[4] = 0;
        v56 = v88 + 1;
        v107 = v88 + 1;
        v57 = v100 + 16;
        if (!--v55)
        {

          v52 = v108;
          v90 = v56;
          v54 = v96;
          goto LABEL_47;
        }
      }
    }

    v90 = 0;
LABEL_47:
    v91 = specialized Trace_Handle.write<A>(attachment:)(v53, v90, v52, v50);
    v92 = specialized Trace_Handle.writtenOnce(string:)(0x6C61626F6C47, 0xE600000000000000);
    v93 = specialized Trace_Handle.writtenOnce(string:)(1701603654, 0xE400000000000000);
    specialized Trace_Handle.write<A>(_:omit:)(v92 << 32, v93 | (v54 << 32), v91);
    if (v53)
    {
      MEMORY[0x26D69EAB0](v53, -1, -1);
    }
  }
}

void _s21SwiftUITracingSupport14CircularBufferV8consumer5stats4syncACx_SpyAA5StatsVGSbtcAA0E8ConsumerRzlufCAA10ATRCWriterV_Tt3B5(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X8>)
{
  v10 = dispatch_semaphore_create(6);
  v11 = swift_slowAlloc();
  *v11 = v10;
  v12 = closure #1 in CircularBuffer.init<A>(consumer:stats:sync:)();
  v14 = v13;
  v20[3] = &type metadata for ATRCWriter;
  v20[4] = &protocol witness table for ATRCWriter;
  v20[0] = a1;
  v20[1] = a2;
  v15 = swift_slowAlloc();
  *v15 = 0;
  *(v15 + 4) = 0;
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(v15);
  if (*(v15 + 5))
  {
    __break(1u);
    goto LABEL_9;
  }

  outlined init with copy of Aggregate_AccessorProtocol(v20, v15 + 8);
  *(v15 + 5) = 1;
  os_unfair_lock_unlock(v15);
  __swift_destroy_boxed_opaque_existential_1(v20);
  v16 = MEMORY[0x277D84F90];
  if (v14)
  {
    v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SwiftUITracingSupport08CircularC0V0C0V_Tt1g5(v14, 0);
    specialized UnsafeMutableBufferPointer._copyContents(initializing:)(v17 + 4, v14, v12, v14);
    if (v18 == v14)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

  v17 = v16;
LABEL_6:
  v19 = swift_slowAlloc();
  *v19 = 0;
  *(v19 + 4) = 0;
  os_unfair_lock_lock_with_options();
  os_unfair_lock_assert_owner(v19);
  if ((*(v19 + 5) & 1) == 0)
  {
    *(v19 + 8) = v12;
    *(v19 + 16) = v14;
    *(v19 + 24) = v15;
    *(v19 + 32) = a3;
    *(v19 + 40) = v17;
    *(v19 + 48) = v16;
    *(v19 + 56) = v16;
    *(v19 + 64) = 256;
    *(v19 + 66) = a4 & 1;
    *(v19 + 5) = 1;
    os_unfair_lock_unlock(v19);
    *a5 = v11;
    a5[1] = v19;
    return;
  }

LABEL_9:
  __break(1u);
}

uint64_t (*_s21SwiftUITracingSupport5TraceV8accessor8AccessorQzxm_tcAA0D7_HandleRzluiMAC0A2UIV_Ttg5(uint64_t (*result)()))()
{
  v2 = v1;
  v3 = *(v1 + 96);
  if (!*(v3 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v4 = *(v2 + 80);
  v5 = *(v2 + 92);
  result = specialized __RawDictionaryStorage.find<A>(_:)(&type metadata for Trace.SwiftUI);
  if ((v6 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(*(v3 + 56) + 8 * result);
  if (v7 >= v5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (!v4)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = (v4 + 24 * v7);
  if (*v8)
  {
    v9 = v8[2];
    return EventTreeStats.count.modify;
  }

LABEL_11:
  __break(1u);
  return result;
}

void closure #1 in $defer #1 () in closure #1 in Client.gracefulExit()(_xpc_connection_s *a1, uint64_t a2)
{
  xpc_connection_cancel(a1);
  if (*(a2 + 52))
  {
    __break(1u);
  }

  else
  {
    close(*(a2 + 48));
    v3 = *(a2 + 16);
    *(a2 + 16) = 0;
    swift_unknownObjectRelease();
    *(a2 + 48) = 0;
    *(a2 + 52) = 1;
    *(a2 + 32) = 1;
  }
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t result, unint64_t a2, xpc_object_t xdict)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      bytes = result;
      v10 = a2;
      v11 = BYTE2(a2);
      v12 = BYTE3(a2);
      v13 = BYTE4(a2);
      v14 = BYTE5(a2);
      if (BYTE6(a2))
      {
        xpc_dictionary_set_data(xdict, "config", &bytes, BYTE6(a2));
LABEL_9:
        result = swift_unknownObjectRelease();
        v8 = *MEMORY[0x277D85DE8];
        return result;
      }

      __break(1u);
LABEL_11:
      __break(1u);
    }

    v6 = result;
    v7 = result >> 32;
    if (result >> 32 < result)
    {
      goto LABEL_11;
    }

LABEL_8:
    swift_unknownObjectRetain();
    specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v6, v7, a2 & 0x3FFFFFFFFFFFFFFFLL, xdict);
    goto LABEL_9;
  }

  if (v5 == 2)
  {
    v6 = *(result + 16);
    v7 = *(result + 24);
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, xpc_object_t xdict)
{
  bytes[2] = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(bytes, 0, 14);
      v7 = xdict;
      v6 = 0;
      goto LABEL_9;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      bytes[0] = a1;
      LOWORD(bytes[1]) = a2;
      BYTE2(bytes[1]) = BYTE2(a2);
      BYTE3(bytes[1]) = BYTE3(a2);
      BYTE4(bytes[1]) = BYTE4(a2);
      v6 = BYTE6(a2);
      BYTE5(bytes[1]) = BYTE5(a2);
      v7 = xdict;
LABEL_9:
      xpc_dictionary_set_data(v7, "config", bytes, v6);
      goto LABEL_10;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  swift_unknownObjectRetain();
  specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, xdict);
LABEL_10:
  result = swift_unknownObjectRelease();
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_13;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x26D69C520]();
    if (result >= v10)
    {
      v11 = v10;
    }

    else
    {
      v11 = result;
    }

    v12 = &v8[v11];
    if (v8 && v12 - v8 > 0)
    {
      xpc_dictionary_set_data(a4, "config", v8, v12 - v8);
      return swift_unknownObjectRelease();
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

{
  result = __DataStorage._bytes.getter();
  v8 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = MEMORY[0x26D69C520]();
  if (!v8)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  xpc_dictionary_set_data(a4, "config", v8, v11);
  return swift_unknownObjectRelease();
}

uint64_t specialized Data.init(bytes:count:)(_BYTE *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t specialized initializeTempDir #1 () in static SwiftUITrace.processInitialization()()
{
  String.utf8CString.getter();
  v0 = _set_user_dir_suffix();

  if ((v0 & 1) == 0)
  {
    static os_log_type_t.fault.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    return os_log(_:dso:log:_:_:)();
  }

  return result;
}

void outlined consume of SwiftUITrace.Role(unint64_t a1)
{
  v1 = a1 >> 61;
  if ((a1 >> 61) > 1)
  {
    if (v1 == 2 || v1 == 3)
    {
      goto LABEL_4;
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
LABEL_4:
    }
  }

  else
  {
  }
}

unint64_t lazy protocol witness table accessor for type TraceConfig and conformance TraceConfig()
{
  result = lazy protocol witness table cache variable for type TraceConfig and conformance TraceConfig;
  if (!lazy protocol witness table cache variable for type TraceConfig and conformance TraceConfig)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig and conformance TraceConfig);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig and conformance TraceConfig;
  if (!lazy protocol witness table cache variable for type TraceConfig and conformance TraceConfig)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig and conformance TraceConfig);
  }

  return result;
}

unint64_t outlined copy of SwiftUITrace.Role(unint64_t result)
{
  v1 = result >> 61;
  if ((result >> 61) > 1)
  {
    if (v1 == 2 || v1 == 3)
    {
    }
  }

  else if (v1)
  {
    if (v1 == 1)
    {
    }
  }

  else
  {
    return result;
  }

  return result;
}

uint64_t specialized Client.dispatch(_:connection:)(void *a1)
{
  if (*(v1 + 53))
  {
    __break(1u);
    goto LABEL_18;
  }

  if (!xpc_dictionary_get_string(a1, "swiftui_command"))
  {
LABEL_21:
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v4 = String.init(cString:)();
  v6 = v5;
  v7._countAndFlagsBits = v4;
  v7._object = v6;
  v8 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Client.Command.init(rawValue:), v7);

  if (!v8)
  {
    v3 = 0;
    goto LABEL_7;
  }

  if (v8 != 1)
  {
    v18[0] = 0;
    v18[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(18);
    MEMORY[0x26D69CDB0](0xD000000000000010, 0x800000026C33D910);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSPys4Int8VGMd, &_sSPys4Int8VGMR);
    _print_unlocked<A, B>(_:_:)();
    goto LABEL_21;
  }

  v3 = 1;
LABEL_7:
  v2 = static os_log_type_t.default.getter();
  if (one-time initialization token for log != -1)
  {
LABEL_18:
    swift_once();
  }

  v9 = log;
  v10 = os_log_type_enabled(log, v2);
  if (v10)
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18[0] = v12;
    *v11 = 136446210;
    if (v3)
    {
      v13 = 0x6963617254646E65;
    }

    else
    {
      v13 = 0x6172546E69676562;
    }

    if (v3)
    {
      v14 = 0xEA0000000000676ELL;
    }

    else
    {
      v14 = 0xEC000000676E6963;
    }

    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v18);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_26C161000, v9, v2, "invoked command: %{public}s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x26D69EAB0](v12, -1, -1);
    v10 = MEMORY[0x26D69EAB0](v11, -1, -1);
  }

  v16 = MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v16);
  return Transaction.synchronized<A>(_:)();
}

uint64_t specialized Host.state.didset()
{
  if (one-time initialization token for registrationToken != -1)
  {
    swift_once();
  }

  if (*(v0 + 152))
  {
    if (*(v0 + 152) != 1)
    {
      goto LABEL_16;
    }

    v1 = 0;
  }

  else
  {
    v1 = 1;
  }

  notify_set_state(static SwiftUITrace.registrationToken, v1);
  if (*(v0 + 152))
  {
    v9 = 0u;
    v10 = 0u;
LABEL_14:
    swift_beginAccess();
    outlined assign with take of Any?(&v9, v0 + 120);
    return swift_endAccess();
  }

  v2 = String.utf8CString.getter();
  notify_post((v2 + 32));

  v3 = *(v0 + 160);
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (!v4)
  {
    *(v0 + 160) = v5;
    ObjectType = os_transaction_create();
    v7 = ObjectType;
    if (ObjectType)
    {
      ObjectType = swift_getObjectType();
    }

    else
    {
      *(&v9 + 1) = 0;
      *&v10 = 0;
    }

    *&v9 = v7;
    *(&v10 + 1) = ObjectType;
    goto LABEL_14;
  }

  __break(1u);
LABEL_16:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized CLI.dispatch(_:connection:)(uint64_t result, const char *a2, int8x8_t a3)
{
  if (*(v3 + 33) == 1)
  {
    v6 = result;
    v7 = static os_log_type_t.debug.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v8 = log;
    result = os_log_type_enabled(log, v7);
    if (result)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = vuzp1_s8(a3, v11).u32[0];
      v12 = [v6 description];
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;

      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v15, &v17);

      *(v9 + 4) = v16;
      _os_log_impl(&dword_26C161000, v8, v7, a2, v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x26D69EAB0](v10, -1, -1);
      return MEMORY[0x26D69EAB0](v9, -1, -1);
    }
  }

  return result;
}

uint64_t specialized Tracer.endTracingImpl(block:)(uint64_t a1, char *a2)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state;
  if (*(a1 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state))
  {
    goto LABEL_30;
  }

  v4 = a2;
  *(a1 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_state) = 1;
  v3 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection;
  v5 = *(a1 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection);
  if (!v5)
  {
    goto LABEL_28;
  }

  v6 = *(a1 + OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_connection);
  swift_unknownObjectRetain();
  v7 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v7, "swiftui_command", "endTracing");
  v8 = xpc_connection_send_message_with_reply_sync(v5, v7);
  v9 = xpc_dictionary_get_array(v8, "swiftui_clients");
  if (v9)
  {
    v10 = v9;
    count = xpc_array_get_count(v9);
    if ((count & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      connection = v5;
      v36 = v3;
      v37 = v2;
      if (!count)
      {
LABEL_24:
        xpc_connection_cancel(connection);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v31 = *(v37 + v36);
        *(v37 + v36) = 0;
        return swift_unknownObjectRelease();
      }

      v12 = 0;
      v2 = OBJC_IVAR____TtC21SwiftUITracingSupport6Tracer_traceClients;
      v38 = count;
      v39 = v10;
      while (1)
      {
        v13 = xpc_array_get_dictionary(v10, v12);
        if (!v13)
        {
          break;
        }

        v14 = v13;
        v43 = xpc_dictionary_dup_fd(v13, "swiftui_fd");
        int64 = xpc_dictionary_get_int64(v14, "bytes_written");
        v15 = xpc_dictionary_get_int64(v14, "bytes_written_compressed");
        v4 = v15;
        if (v15 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = 0;
        }

        else
        {
          v16 = v15;
        }

        v40 = v16;
        string = xpc_dictionary_get_string(v14, "binary_name");
        xpc_dictionary_get_int64(v14, "pid");
        v18 = static os_log_type_t.default.getter();
        if (one-time initialization token for log != -1)
        {
          swift_once();
        }

        v19 = log;
        if (os_log_type_enabled(log, v18))
        {
          swift_unknownObjectRetain();
          v20 = swift_slowAlloc();
          *v20 = 67240960;
          *(v20 + 4) = v43;
          *(v20 + 8) = 2050;
          *(v20 + 10) = xpc_dictionary_get_int64(v14, "pid");
          swift_unknownObjectRelease();
          *(v20 + 18) = 2050;
          *(v20 + 20) = v4;
          *(v20 + 28) = 2050;
          *(v20 + 30) = int64;
          _os_log_impl(&dword_26C161000, v19, v18, "writing fd: %{public}d, client: %{public}lld, compressed: %{public}ld, uncompressed: %{public}ld", v20, 0x26u);
          MEMORY[0x26D69EAB0](v20, -1, -1);
        }

        if (string)
        {
          v21 = String.init(cString:)();
          v23 = v22;
        }

        else
        {
          v23 = 0xE300000000000000;
          v21 = 7104878;
        }

        MEMORY[0x26D69CDB0](v21, v23);

        MEMORY[0x26D69CDB0](10272, 0xE200000000000000);
        v24 = dispatch thunk of CustomStringConvertible.description.getter();
        MEMORY[0x26D69CDB0](v24);

        MEMORY[0x26D69CDB0](41, 0xE100000000000000);
        v3 = 0;
        swift_beginAccess();
        v25 = *&a2[v2];
        if (!v25)
        {
          goto LABEL_27;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&a2[v2] = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v25[2] + 1, 1, v25);
          *&a2[v2] = v25;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v25);
        }

        v25[2] = v28 + 1;
        v29 = &v25[6 * v28];
        *(v29 + 8) = v43;
        ++v12;
        v30 = v4 == 0x7FFFFFFFFFFFFFFFLL;
        v4 = a2;
        v29[5] = int64;
        v29[6] = v40;
        *(v29 + 56) = v30;
        v29[8] = 0;
        v29[9] = 0xE000000000000000;
        *&a2[v2] = v25;
        swift_endAccess();
        swift_unknownObjectRelease();

        v10 = v39;
        if (v38 == v12)
        {
          goto LABEL_24;
        }
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:

    __break(1u);
  }

  __break(1u);
LABEL_30:
  _StringGuts.grow(_:)(41);

  if (*(v2 + v3))
  {
    v33 = 1701736295;
    if (*(v2 + v3) == 1)
    {
      v33 = 1701736302;
    }

    v34 = 0xE400000000000000;
  }

  else
  {
    v34 = 0xE700000000000000;
    v33 = 0x676E6963617274;
  }

  MEMORY[0x26D69CDB0](v33, v34);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_26C2A82CC()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26C2A830C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined consume of TraceConfig?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes()
{
  result = lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes;
  if (!lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SwiftUITrace.XPCKeys and conformance SwiftUITrace.XPCKeys()
{
  result = lazy protocol witness table cache variable for type SwiftUITrace.XPCKeys and conformance SwiftUITrace.XPCKeys;
  if (!lazy protocol witness table cache variable for type SwiftUITrace.XPCKeys and conformance SwiftUITrace.XPCKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SwiftUITrace.XPCKeys and conformance SwiftUITrace.XPCKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TraceModality and conformance TraceModality()
{
  result = lazy protocol witness table cache variable for type TraceModality and conformance TraceModality;
  if (!lazy protocol witness table cache variable for type TraceModality and conformance TraceModality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceModality and conformance TraceModality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Host.Command and conformance Host.Command()
{
  result = lazy protocol witness table cache variable for type Host.Command and conformance Host.Command;
  if (!lazy protocol witness table cache variable for type Host.Command and conformance Host.Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Host.Command and conformance Host.Command);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Client.ConnectionError and conformance Client.ConnectionError()
{
  result = lazy protocol witness table cache variable for type Client.ConnectionError and conformance Client.ConnectionError;
  if (!lazy protocol witness table cache variable for type Client.ConnectionError and conformance Client.ConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Client.ConnectionError and conformance Client.ConnectionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Client.ConnectionError and conformance Client.ConnectionError;
  if (!lazy protocol witness table cache variable for type Client.ConnectionError and conformance Client.ConnectionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Client.ConnectionError and conformance Client.ConnectionError);
  }

  return result;
}

uint64_t sub_26C2A857C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = static SwiftUITrace.allowRegister;
  return result;
}

uint64_t sub_26C2A85C8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  static SwiftUITrace.allowRegister = v1;
  return result;
}

void type metadata completion function for Tracer()
{
  type metadata accessor for ModalityStorage?(319, &lazy cache variable for type metadata for ModalityStorage?, type metadata accessor for ModalityStorage);
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t getEnumTagSinglePayload for Host.Command(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Host.Command(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_26C2A8A0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *sub_26C2A8ADC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for Host.ClientConnection()
{
  type metadata accessor for OS_xpc_object();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Int32?(319, &lazy cache variable for type metadata for Int32?);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Int32?(319, &lazy cache variable for type metadata for Int64?);
      if (v2 <= 0x3F)
      {
        type metadata accessor for ModalityStorage?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t type metadata accessor for OS_xpc_object()
{
  result = lazy cache variable for type metadata for OS_xpc_object;
  if (!lazy cache variable for type metadata for OS_xpc_object)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_xpc_object);
  }

  return result;
}

void type metadata accessor for Int32?(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = type metadata accessor for Optional();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void type metadata accessor for ModalityStorage?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void type metadata completion function for ModalityStorage()
{
  type metadata accessor for (fd_list: [Int32], interval: Interval)();
  if (v0 <= 0x3F)
  {
    type metadata accessor for (trace: OpaquePointer, fd: Int32, url: URL)();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (fd_list: [Int32], interval: Interval)()
{
  if (!lazy cache variable for type metadata for (fd_list: [Int32], interval: Interval))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSays5Int32VGMd, &_sSays5Int32VGMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (fd_list: [Int32], interval: Interval));
    }
  }
}

void type metadata accessor for (trace: OpaquePointer, fd: Int32, url: URL)()
{
  if (!lazy cache variable for type metadata for (trace: OpaquePointer, fd: Int32, url: URL))
  {
    type metadata accessor for URL();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (trace: OpaquePointer, fd: Int32, url: URL));
    }
  }
}

unint64_t lazy protocol witness table accessor for type TracingState and conformance TracingState()
{
  result = lazy protocol witness table cache variable for type TracingState and conformance TracingState;
  if (!lazy protocol witness table cache variable for type TracingState and conformance TracingState)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TracingState and conformance TracingState);
  }

  return result;
}

uint64_t partial apply for specialized closure #1 in XPCDispatch.handle_connection(object:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  return specialized XPCDispatch.handle_event(event:connection:)(a1, *(v1 + 24));
}

{
  v2 = *(v1 + 16);
  return specialized XPCDispatch.handle_event(event:connection:)(a1, *(v1 + 24));
}

{
  v2 = *(v1 + 16);
  return specialized XPCDispatch.handle_event(event:connection:)(a1, *(v1 + 24));
}

{
  return specialized closure #1 in XPCDispatch.handle_connection(object:)(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t objectdestroy_167Tm()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t outlined init with take of ModalityStorage?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport15ModalityStorageOSgMd, &_s21SwiftUITracingSupport15ModalityStorageOSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in Client.dispatch(_:connection:)()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v1 + 32);
  if (v2)
  {
    return Client.onEndTracing_sync(_:)(v4);
  }

  else
  {
    return Client.onBeginTracing_sync(_:)(v4);
  }
}

uint64_t partial apply for closure #1 in synchronized(_:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t outlined copy of TraceConfig?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

void partial apply for specialized closure #1 in XPCDispatch.connect()(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 16);
  specialized XPCDispatch.handle_event(event:connection:)(a1, v2);
}

uint64_t outlined init with copy of Host.ClientConnection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Host.ClientConnection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Host.ClientConnection(uint64_t a1)
{
  v2 = type metadata accessor for Host.ClientConnection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Host.ClientConnection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Host.ClientConnection(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Host.ClientConnection(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Host.ClientConnection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_149Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));

  return MEMORY[0x2821FE8E8](v2, 32, 7);
}

uint64_t sub_26C2A9640()
{
  v1 = v0[2];

  v2 = v0[3];
  swift_unknownObjectRelease();
  v3 = v0[4];
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type Trace.UIKit and conformance Trace.UIKit()
{
  result = lazy protocol witness table cache variable for type Trace.UIKit and conformance Trace.UIKit;
  if (!lazy protocol witness table cache variable for type Trace.UIKit and conformance Trace.UIKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Trace.UIKit and conformance Trace.UIKit);
  }

  return result;
}

uint64_t specialized Collection.firstIndex(where:)(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  for (i = a3 + 32; ; i += 120)
  {
    v8 = a1(i);
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVyS2S_GTt0g5(uint64_t a1)
{
  result = MEMORY[0x26D69D0C0](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    specialized Set._Variant.insert(_:)(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

SwiftUITracingSupport::TraceConfig::Version_optional __swiftcall TraceConfig.Version.init(rawValue:)(Swift::UInt16 rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *v1 = v3;
  return rawValue;
}

uint64_t String.BOOL.getter(uint64_t a1, unint64_t a2)
{
  v4 = String.lowercased()();
  if (v4._countAndFlagsBits == 1702195828 && v4._object == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v4._countAndFlagsBits == 116 && v4._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v4._countAndFlagsBits == 7562617 && v4._object == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v4._countAndFlagsBits == 121 && v4._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  if (v4._countAndFlagsBits == 0x65736C6166 && v4._object == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v4._countAndFlagsBits == 102 && v4._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v4._countAndFlagsBits == 28526 && v4._object == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || v4._countAndFlagsBits == 110 && v4._object == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || !v4._countAndFlagsBits && v4._object == 0xE000000000000000)
  {

    return 0;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = 0;
  if ((v6 & 1) == 0)
  {
    v7 = HIBYTE(a2) & 0xF;
    v8 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v9 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v9 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v9)
    {
      return 2;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {

      v11 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
      v30 = v29;

      if (v30)
      {
        return 2;
      }

      return v11 != 0;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v31[0] = a1;
      v31[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v7)
        {
          if (--v7)
          {
            v11 = 0;
            v21 = v31 + 1;
            while (1)
            {
              v22 = *v21 - 48;
              if (v22 > 9)
              {
                break;
              }

              v23 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                break;
              }

              v11 = v23 + v22;
              if (__OFADD__(v23, v22))
              {
                break;
              }

              ++v21;
              if (!--v7)
              {
                goto LABEL_92;
              }
            }
          }

          goto LABEL_91;
        }

LABEL_100:
        __break(1u);
        return result;
      }

      if (a1 != 45)
      {
        if (v7)
        {
          v11 = 0;
          v26 = v31;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v7)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_91;
      }

      if (v7)
      {
        if (--v7)
        {
          v11 = 0;
          v15 = v31 + 1;
          while (1)
          {
            v16 = *v15 - 48;
            if (v16 > 9)
            {
              break;
            }

            v17 = 10 * v11;
            if ((v11 * 10) >> 64 != (10 * v11) >> 63)
            {
              break;
            }

            v11 = v17 - v16;
            if (__OFSUB__(v17, v16))
            {
              break;
            }

            ++v15;
            if (!--v7)
            {
              goto LABEL_92;
            }
          }
        }

        goto LABEL_91;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v10 = *result;
      if (v10 == 43)
      {
        if (v8 >= 1)
        {
          v7 = v8 - 1;
          if (v8 != 1)
          {
            v11 = 0;
            if (result)
            {
              v18 = (result + 1);
              while (1)
              {
                v19 = *v18 - 48;
                if (v19 > 9)
                {
                  goto LABEL_91;
                }

                v20 = 10 * v11;
                if ((v11 * 10) >> 64 != (10 * v11) >> 63)
                {
                  goto LABEL_91;
                }

                v11 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_91;
                }

                ++v18;
                if (!--v7)
                {
                  goto LABEL_92;
                }
              }
            }

            goto LABEL_83;
          }

          goto LABEL_91;
        }

        goto LABEL_99;
      }

      if (v10 != 45)
      {
        if (v8)
        {
          v11 = 0;
          if (result)
          {
            while (1)
            {
              v24 = *result - 48;
              if (v24 > 9)
              {
                goto LABEL_91;
              }

              v25 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_91;
              }

              v11 = v25 + v24;
              if (__OFADD__(v25, v24))
              {
                goto LABEL_91;
              }

              ++result;
              if (!--v8)
              {
                goto LABEL_83;
              }
            }
          }

          goto LABEL_83;
        }

LABEL_91:
        v11 = 0;
        LOBYTE(v7) = 1;
LABEL_92:
        v32 = v7;
        if (v7)
        {
          return 2;
        }

        return v11 != 0;
      }

      if (v8 >= 1)
      {
        v7 = v8 - 1;
        if (v8 != 1)
        {
          v11 = 0;
          if (result)
          {
            v12 = (result + 1);
            while (1)
            {
              v13 = *v12 - 48;
              if (v13 > 9)
              {
                goto LABEL_91;
              }

              v14 = 10 * v11;
              if ((v11 * 10) >> 64 != (10 * v11) >> 63)
              {
                goto LABEL_91;
              }

              v11 = v14 - v13;
              if (__OFSUB__(v14, v13))
              {
                goto LABEL_91;
              }

              ++v12;
              if (!--v7)
              {
                goto LABEL_92;
              }
            }
          }

LABEL_83:
          LOBYTE(v7) = 0;
          goto LABEL_92;
        }

        goto LABEL_91;
      }

      __break(1u);
    }

    __break(1u);
LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  return result;
}

unint64_t String.int32.getter(unint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    LOBYTE(v3) = 1;
LABEL_65:
    LOBYTE(v26[0]) = v3;
    return v5 | (v3 << 32);
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v25 = result;

    v7 = specialized _parseInteger<A, B>(ascii:radix:)(v25, a2, 10);

    v3 = (v7 >> 32) & 1;
LABEL_63:
    v5 = v7;
    if (v3)
    {
      v5 = 0;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v6 = *result;
    if (v6 == 43)
    {
      if (v4 >= 1)
      {
        v3 = v4 - 1;
        if (v4 != 1)
        {
          LODWORD(v7) = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_61;
              }

              v16 = 10 * v7;
              if (v16 != v16)
              {
                goto LABEL_61;
              }

              LODWORD(v7) = v16 + v15;
              if (__OFADD__(v16, v15))
              {
                goto LABEL_61;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_71;
    }

    if (v6 != 45)
    {
      if (v4)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          while (1)
          {
            v20 = *result - 48;
            if (v20 > 9)
            {
              goto LABEL_61;
            }

            v21 = 10 * v7;
            if (v21 != v21)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v21 + v20;
            if (__OFADD__(v21, v20))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v4)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      LODWORD(v7) = 0;
      LOBYTE(v3) = 1;
      goto LABEL_62;
    }

    if (v4 >= 1)
    {
      v3 = v4 - 1;
      if (v4 != 1)
      {
        LODWORD(v7) = 0;
        if (result)
        {
          v8 = (result + 1);
          while (1)
          {
            v9 = *v8 - 48;
            if (v9 > 9)
            {
              goto LABEL_61;
            }

            v10 = 10 * v7;
            if (v10 != v10)
            {
              goto LABEL_61;
            }

            LODWORD(v7) = v10 - v9;
            if (__OFSUB__(v10, v9))
            {
              goto LABEL_61;
            }

            ++v8;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v3) = 0;
LABEL_62:
        v27 = v3;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v26[0] = result;
  v26[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v3)
      {
        LODWORD(v7) = 0;
        v22 = v26;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v7;
          if (v24 != v24)
          {
            break;
          }

          LODWORD(v7) = v24 + v23;
          if (__OFADD__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v3)
    {
      if (--v3)
      {
        LODWORD(v7) = 0;
        v11 = v26 + 1;
        while (1)
        {
          v12 = *v11 - 48;
          if (v12 > 9)
          {
            break;
          }

          v13 = 10 * v7;
          if (v13 != v13)
          {
            break;
          }

          LODWORD(v7) = v13 - v12;
          if (__OFSUB__(v13, v12))
          {
            break;
          }

          ++v11;
          if (!--v3)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_70;
  }

  if (v3)
  {
    if (--v3)
    {
      LODWORD(v7) = 0;
      v17 = v26 + 1;
      while (1)
      {
        v18 = *v17 - 48;
        if (v18 > 9)
        {
          break;
        }

        v19 = 10 * v7;
        if (v19 != v19)
        {
          break;
        }

        LODWORD(v7) = v19 + v18;
        if (__OFADD__(v19, v18))
        {
          break;
        }

        ++v17;
        if (!--v3)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_72:
  __break(1u);
  return result;
}

uint64_t TraceConfig.Option.init(stringValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for options != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v6 = static TraceConfig.options;
    v7 = *(static TraceConfig.options + 16);
    if (!v7)
    {
      break;
    }

    v8 = 0;
    v9 = static TraceConfig.options + 32;
    while (v8 < *(v6 + 16))
    {
      outlined init with copy of TraceConfig.Option(v9, v12);
      v10 = *&v12[0] == a1 && *(&v12[0] + 1) == a2;
      if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v14[5] = v12[5];
        v14[6] = v12[6];
        v14[0] = v12[0];
        v14[1] = v12[1];
        v14[2] = v12[2];
        v15 = v13;
        v14[3] = v12[3];
        v14[4] = v12[4];
        outlined init with copy of TraceConfig.Option(v14, a3);
        return outlined destroy of TraceConfig.Option(v14);
      }

      ++v8;
      outlined destroy of TraceConfig.Option(v12);
      v9 += 120;
      if (v7 == v8)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

LABEL_11:

  *(a3 + 112) = 0;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return result;
}

double TraceConfig.Option.init(intValue:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 0u;
  v7 = 0u;
  if (one-time initialization token for options == -1)
  {
    if (a1 < 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v4 = a1;
    swift_once();
    a1 = v4;
    if (v4 < 0)
    {
      goto LABEL_6;
    }
  }

  if (*(static TraceConfig.options + 16) > a1)
  {
    outlined init with copy of TraceConfig.Option(static TraceConfig.options + 120 * a1 + 32, v5);
    outlined init with copy of TraceConfig.Option(v5, a2);
    outlined destroy of TraceConfig.Option(v5);
    return result;
  }

LABEL_6:
  *(a2 + 112) = 0;
  result = 0.0;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11TraceConfigV7VersionOSgMd, &_s21SwiftUITracingSupport11TraceConfigV7VersionOSgMR);

  return closure #22 in variable initialization expression of static TraceConfig.options(a1, a2, a3);
}

unint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgSgMd, &_ss5Int32VSgSgMR);
  result = String.int32.getter(a1, a2);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  *(a3 + 5) = 0;
  return result;
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgSgMd, &_sSSSgSgMR);
  *a3 = a1;
  a3[1] = a2;
}

uint64_t _sSSxSgIeggr_SSypIeggr_SeRzlTRSb_Tg577_s21SwiftUITracingSupport11TraceConfigV7optionsSayAC6OptionVGvpZfiSbSgSScfU2_Tf3nnpf_n_0@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  result = String.BOOL.getter(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.intValue.getter in conformance TraceConfig.Option(uint64_t a1)
{
  if (one-time initialization token for options != -1)
  {
    a1 = swift_once();
  }

  MEMORY[0x28223BE20](a1);
  v4[2] = v1;
  return specialized Collection.firstIndex(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v4, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TraceConfig.Option(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TraceConfig.Option and conformance TraceConfig.Option();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TraceConfig.Option(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TraceConfig.Option and conformance TraceConfig.Option();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t one-time initialization function for options()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11TraceConfigV6OptionVGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport11TraceConfigV6OptionVGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_26C337460;
  KeyPath = swift_getKeyPath();
  *(v0 + 104) = 0;
  *(v0 + 112) = 0;
  *(v0 + 32) = 0x73736572706D6F63;
  *(v0 + 40) = 0xEB000000006E6F69;
  *(v0 + 48) = KeyPath;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
  *(v0 + 80) = v2;
  *(v0 + 56) = 0;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0u;

  *(v0 + 120) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 128) = 0;
  v3 = MEMORY[0x277D839B0];
  v4 = MEMORY[0x277D839D0];
  *(v0 + 136) = MEMORY[0x277D839B0];
  *(v0 + 144) = v4;
  v5 = swift_getKeyPath();
  *(v0 + 224) = 0;
  *(v0 + 232) = 0;
  *(v0 + 152) = 0x746567726174;
  *(v0 + 160) = 0xE600000000000000;
  *(v0 + 168) = v5;
  *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgSgMd, &_sSSSgSgMR);
  *(v0 + 176) = 0;
  *(v0 + 184) = 0;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0u;

  *(v0 + 240) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 248) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v7 = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type String? and conformance <A> A?, &_sSSSgMd, &_sSSSgMR);
  *(v0 + 256) = v6;
  *(v0 + 264) = v7;
  v8 = swift_getKeyPath();
  *(v0 + 344) = 0;
  *(v0 + 352) = 0;
  *(v0 + 272) = 0x6950746567726174;
  *(v0 + 280) = 0xE900000000000064;
  *(v0 + 288) = v8;
  *(v0 + 320) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgSgMd, &_ss5Int32VSgSgMR);
  *(v0 + 296) = 0;
  *(v0 + 300) = 1;
  *(v0 + 328) = 0u;
  *(v0 + 344) = 0u;

  *(v0 + 360) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 368) = 0;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Int32VSgMd, &_ss5Int32VSgMR);
  v10 = lazy protocol witness table accessor for type String? and conformance <A> A?(&lazy protocol witness table cache variable for type Int32? and conformance <A> A?, &_ss5Int32VSgMd, &_ss5Int32VSgMR);
  *(v0 + 376) = v9;
  *(v0 + 384) = v10;
  v11 = swift_getKeyPath();
  *(v0 + 392) = 0xD000000000000010;
  *(v0 + 400) = 0x800000026C33DC80;
  *(v0 + 408) = v11;
  *(v0 + 440) = v2;
  *(v0 + 416) = 0;
  *(v0 + 448) = 0u;
  *(v0 + 464) = 0u;

  *(v0 + 480) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 488) = 0;
  *(v0 + 496) = v3;
  *(v0 + 504) = v4;
  v12 = swift_getKeyPath();
  *(v0 + 512) = 0xD000000000000010;
  *(v0 + 520) = 0x800000026C33DCA0;
  *(v0 + 528) = v12;
  *(v0 + 560) = v2;
  *(v0 + 536) = 0;
  *(v0 + 568) = 0u;
  *(v0 + 584) = 0u;

  *(v0 + 600) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 608) = 0;
  *(v0 + 616) = v3;
  *(v0 + 624) = v4;
  v13 = swift_getKeyPath();
  *(v0 + 632) = 0xD000000000000016;
  *(v0 + 640) = 0x800000026C33DCC0;
  *(v0 + 648) = v13;
  *(v0 + 680) = v2;
  *(v0 + 656) = 0;
  *(v0 + 688) = 0u;
  *(v0 + 704) = 0u;

  *(v0 + 720) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 728) = 0;
  *(v0 + 736) = v3;
  *(v0 + 744) = v4;
  v14 = swift_getKeyPath();
  strcpy((v0 + 752), "_crashOnNull");
  *(v0 + 765) = 0;
  *(v0 + 766) = -5120;
  *(v0 + 768) = v14;
  *(v0 + 800) = v2;
  *(v0 + 776) = 0;
  *(v0 + 808) = 0u;
  *(v0 + 824) = 0u;

  *(v0 + 840) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 848) = 0;
  *(v0 + 856) = v3;
  *(v0 + 864) = v4;
  v15 = swift_getKeyPath();
  strcpy((v0 + 872), "hashBacktraces");
  *(v0 + 887) = -18;
  *(v0 + 888) = v15;
  *(v0 + 920) = v2;
  *(v0 + 896) = 1;
  *(v0 + 928) = 0u;
  *(v0 + 944) = 0u;

  *(v0 + 960) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 968) = 0;
  *(v0 + 976) = v3;
  *(v0 + 984) = v4;
  v16 = swift_getKeyPath();
  *(v0 + 992) = 0xD000000000000010;
  *(v0 + 1000) = 0x800000026C33DC20;
  *(v0 + 1008) = v16;
  *(v0 + 1040) = v2;
  *(v0 + 1016) = 1;
  *(v0 + 1048) = 0u;
  *(v0 + 1064) = 0u;

  *(v0 + 1080) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1088) = 0;
  *(v0 + 1096) = v3;
  *(v0 + 1104) = v4;
  v17 = swift_getKeyPath();
  *(v0 + 1112) = 0x6576456573756572;
  *(v0 + 1120) = 0xEB0000000073746ELL;
  *(v0 + 1128) = v17;
  *(v0 + 1160) = v2;
  *(v0 + 1136) = 0;
  *(v0 + 1168) = 0u;
  *(v0 + 1184) = 0u;

  *(v0 + 1200) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1208) = 0;
  *(v0 + 1216) = v3;
  *(v0 + 1224) = v4;
  v18 = swift_getKeyPath();
  *(v0 + 1232) = 0xD000000000000011;
  *(v0 + 1240) = 0x800000026C33DCE0;
  *(v0 + 1248) = v18;
  *(v0 + 1280) = v2;
  *(v0 + 1256) = 1;
  *(v0 + 1288) = 0u;
  *(v0 + 1304) = 0u;

  *(v0 + 1320) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1328) = 0;
  *(v0 + 1336) = v3;
  *(v0 + 1344) = v4;
  v19 = swift_getKeyPath();
  *(v0 + 1352) = 0xD000000000000010;
  *(v0 + 1360) = 0x800000026C33DC00;
  *(v0 + 1368) = v19;
  *(v0 + 1400) = v2;
  *(v0 + 1376) = 0;
  *(v0 + 1408) = 0u;
  *(v0 + 1424) = 0u;

  *(v0 + 1440) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1448) = 0;
  *(v0 + 1456) = v3;
  *(v0 + 1464) = v4;
  v20 = swift_getKeyPath();
  *(v0 + 1472) = 0xD000000000000012;
  *(v0 + 1480) = 0x800000026C33DD00;
  *(v0 + 1488) = v20;
  *(v0 + 1520) = v2;
  *(v0 + 1496) = 1;
  *(v0 + 1528) = 0u;
  *(v0 + 1544) = 0u;

  *(v0 + 1560) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1568) = 0;
  *(v0 + 1576) = v3;
  *(v0 + 1584) = v4;
  v21 = swift_getKeyPath();
  *(v0 + 1592) = 0xD000000000000010;
  *(v0 + 1600) = 0x800000026C33DD20;
  *(v0 + 1608) = v21;
  *(v0 + 1640) = v2;
  *(v0 + 1616) = 1;
  *(v0 + 1648) = 0u;
  *(v0 + 1664) = 0u;

  *(v0 + 1680) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1688) = 0;
  *(v0 + 1696) = v3;
  *(v0 + 1704) = v4;
  v22 = swift_getKeyPath();
  *(v0 + 1712) = 0xD000000000000012;
  *(v0 + 1720) = 0x800000026C33DD40;
  *(v0 + 1728) = v22;
  *(v0 + 1760) = v2;
  *(v0 + 1736) = 1;
  *(v0 + 1768) = 0u;
  *(v0 + 1784) = 0u;

  *(v0 + 1800) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1808) = 0;
  *(v0 + 1816) = v3;
  *(v0 + 1824) = v4;
  v23 = swift_getKeyPath();
  strcpy((v0 + 1832), "actionTracing");
  *(v0 + 1846) = -4864;
  *(v0 + 1848) = v23;
  *(v0 + 1880) = v2;
  *(v0 + 1856) = 1;
  *(v0 + 1888) = 0u;
  *(v0 + 1904) = 0u;

  *(v0 + 1920) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 1928) = 0;
  *(v0 + 1936) = v3;
  *(v0 + 1944) = v4;
  v24 = swift_getKeyPath();
  *(v0 + 1952) = 0xD000000000000015;
  *(v0 + 1960) = 0x800000026C33DD60;
  *(v0 + 1968) = v24;
  *(v0 + 2000) = v2;
  *(v0 + 1976) = 1;
  *(v0 + 2008) = 0u;
  *(v0 + 2024) = 0u;

  *(v0 + 2040) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 2048) = 0;
  *(v0 + 2056) = v3;
  *(v0 + 2064) = v4;
  v25 = swift_getKeyPath();
  *(v0 + 2072) = 0xD000000000000016;
  *(v0 + 2080) = 0x800000026C33DD80;
  *(v0 + 2088) = v25;
  *(v0 + 2120) = v2;
  *(v0 + 2096) = 1;
  *(v0 + 2128) = 0u;
  *(v0 + 2144) = 0u;

  *(v0 + 2160) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 2168) = 0;
  *(v0 + 2176) = v3;
  *(v0 + 2184) = v4;
  v26 = swift_getKeyPath();
  *(v0 + 2192) = 0x6172546775626564;
  *(v0 + 2200) = 0xEF73656C69466563;
  *(v0 + 2208) = v26;
  *(v0 + 2240) = v2;
  *(v0 + 2216) = 0;
  *(v0 + 2248) = 0u;
  *(v0 + 2264) = 0u;

  *(v0 + 2280) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 2288) = 0;
  *(v0 + 2296) = v3;
  *(v0 + 2304) = v4;
  v27 = swift_getKeyPath();
  *(v0 + 2312) = 0x65727574706163;
  *(v0 + 2320) = 0xE700000000000000;
  *(v0 + 2328) = v27;
  *(v0 + 2360) = v2;
  *(v0 + 2336) = 1;
  *(v0 + 2368) = 0u;
  *(v0 + 2384) = 0u;

  *(v0 + 2400) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 2408) = 0;
  *(v0 + 2416) = v3;
  *(v0 + 2424) = v4;
  v28 = swift_getKeyPath();
  *(v0 + 2432) = 0x6565725477656976;
  *(v0 + 2440) = 0xE800000000000000;
  *(v0 + 2448) = v28;
  *(v0 + 2480) = v2;
  *(v0 + 2456) = 1;
  *(v0 + 2488) = 0u;
  *(v0 + 2504) = 0u;

  *(v0 + 2520) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 2528) = 0;
  *(v0 + 2536) = v3;
  *(v0 + 2544) = v4;
  v29 = swift_getKeyPath();
  *(v0 + 2624) = 0;
  *(v0 + 2632) = 0;
  *(v0 + 2552) = 0x6E6F6973726576;
  *(v0 + 2560) = 0xE700000000000000;
  *(v0 + 2568) = v29;
  *(v0 + 2600) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport11TraceConfigV7VersionOSgMd, &_s21SwiftUITracingSupport11TraceConfigV7VersionOSgMR);
  *(v0 + 2576) = 1;
  *(v0 + 2608) = 0u;
  *(v0 + 2624) = 0u;

  *(v0 + 2640) = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  *(v0 + 2648) = 0;
  result = lazy protocol witness table accessor for type TraceConfig.Version and conformance TraceConfig.Version();
  *(v0 + 2656) = &type metadata for TraceConfig.Version;
  *(v0 + 2664) = result;
  static TraceConfig.options = v0;
  return result;
}

uint64_t closure #22 in variable initialization expression of static TraceConfig.options@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = result;
  if (result == 49 && a2 == 0xE100000000000000)
  {
    goto LABEL_6;
  }

  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  if ((result & 1) != 0 || v4 == 12662 && a2 == 0xE200000000000000)
  {
    goto LABEL_6;
  }

  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  v8 = v4 == 12630 && a2 == 0xE200000000000000;
  v6 = 1;
  if ((result & 1) != 0 || v8)
  {
    goto LABEL_7;
  }

  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  if (result)
  {
LABEL_6:
    v6 = 1;
LABEL_7:
    *a3 = v6;
    return result;
  }

  if (v4 == 48 && a2 == 0xE100000000000000)
  {
    goto LABEL_19;
  }

  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  v6 = 0;
  v10 = v4 == 12406 && a2 == 0xE200000000000000;
  if ((result & 1) != 0 || v10)
  {
    goto LABEL_7;
  }

  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  v6 = 0;
  v11 = v4 == 12374 && a2 == 0xE200000000000000;
  v12 = v11;
  if ((result & 1) != 0 || v12)
  {
    goto LABEL_7;
  }

  result = _stringCompareWithSmolCheck(_:_:expecting:)();
  if (result)
  {
LABEL_19:
    v6 = 0;
    goto LABEL_7;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t TraceConfig.Version.describe(state:)()
{
  if (*v0)
  {
    return 12662;
  }

  else
  {
    return 12406;
  }
}

uint64_t TraceConfig.Version.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance TraceConfig.Version()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance TraceConfig.Version()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance TraceConfig.Version()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

unsigned __int16 *protocol witness for RawRepresentable.init(rawValue:) in conformance TraceConfig.Version@<X0>(unsigned __int16 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 1)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance TraceConfig.Version(__int16 *a1@<X8>)
{
  if (*v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TraceConfig.MinorVersion.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6156776172 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TraceConfig.MinorVersion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TraceConfig.MinorVersion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TraceConfig.MinorVersion.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport11TraceConfigV12MinorVersionV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport11TraceConfigV12MinorVersionV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys);
  }

  return result;
}

uint64_t TraceConfig.MinorVersion.init(from:)@<X0>(uint64_t *a1@<X0>, _WORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport11TraceConfigV12MinorVersionV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport11TraceConfigV12MinorVersionV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance TraceConfig.MinorVersion(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport11TraceConfigV12MinorVersionV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport11TraceConfigV12MinorVersionV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TraceConfig.MinorVersion.CodingKeys and conformance TraceConfig.MinorVersion.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t TraceConfig.processFilterRegex.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t TraceConfig.processFilterRegex.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t TraceConfig.targetPid.setter(uint64_t result)
{
  *(v1 + 40) = result;
  *(v1 + 44) = BYTE4(result) & 1;
  return result;
}

double TraceConfig.init(version:compression:viewTree:sync:)@<D0>(char *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  TraceConfig.init(_:)(v8, v12);
  v9 = v13;
  *a4 = *v12;
  *(a4 + 7) = *&v12[7];
  *(a4 + 11) = a2 & 1;
  *(a4 + 12) = a3 & 1;
  *(a4 + 13) = v9;
  *(a4 + 15) = 0;
  result = *&v14;
  v11 = v15;
  *(a4 + 16) = v14;
  *(a4 + 32) = v11;
  *(a4 + 48) = v16;
  *(a4 + 49) = v7;
  return result;
}

uint64_t TraceConfig.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v27 = *MEMORY[0x277D85DE8];

  v7 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVyS2S_GTt0g5(v6);
  if (one-time initialization token for options != -1)
  {
    swift_once();
  }

  v8 = static TraceConfig.options;
  v9 = *(static TraceConfig.options + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9, 0);
    v10 = v23;
    v11 = v8 + 32;
    do
    {
      outlined init with copy of TraceConfig.Option(v11, v25);
      v12 = v25[0];

      outlined destroy of TraceConfig.Option(v25);
      v14 = *(v23 + 16);
      v13 = *(v23 + 24);
      if (v14 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
      }

      *(v23 + 16) = v14 + 1;
      *(v23 + 16 * v14 + 32) = v12;
      v11 += 120;
      --v9;
    }

    while (v9);
    v3 = v2;
  }

  v15 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v10);

  if (*(v15 + 16) <= *(v7 + 16) >> 3)
  {
    goto LABEL_14;
  }

  v16 = specialized _NativeSet.subtracting<A>(_:)(v15, v7);

  if (*(v16 + 16))
  {
    while (1)
    {

      a1 = *(v16 + 16);
      if (!a1)
      {
        break;
      }

      v17 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(*(v16 + 16), 0);
      v18 = specialized Sequence._copySequenceContents(initializing:)(v25, v17 + 4, a1, v16);
      outlined consume of Set<AGSubgraphRef>.Iterator._Variant();
      if (v18 == a1)
      {
        goto LABEL_18;
      }

      __break(1u);
LABEL_14:
      *&v25[0] = v7;
      specialized Set._subtract<A>(_:)(v15);

      v16 = *&v25[0];
      if (!*(*&v25[0] + 16))
      {
        goto LABEL_15;
      }
    }

    v17 = MEMORY[0x277D84F90];
LABEL_18:
    lazy protocol witness table accessor for type TraceConfig.InvalidOptions and conformance TraceConfig.InvalidOptions();
    swift_allocError();
    *v21 = v17;
    result = swift_willThrow();
    goto LABEL_19;
  }

LABEL_15:

  closure #2 in TraceConfig.init(_:)(v24, a1, v25);

  if (!v3)
  {
    v20 = v25[1];
    *a2 = v25[0];
    *(a2 + 16) = v20;
    *(a2 + 32) = v25[2];
    *(a2 + 48) = v26;
LABEL_19:
    v22 = *MEMORY[0x277D85DE8];
    return result;
  }

  result = swift_willThrow();
  __break(1u);
  return result;
}

uint64_t TraceConfig.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a1;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport11TraceConfigV6OptionVGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport11TraceConfigV6OptionVGMR);
  v4 = *(v20 - 8);
  v5 = v4[8];
  MEMORY[0x28223BE20](v20);
  v7 = &v17 - v6;
  v8 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  TraceConfig.init(_:)(v8, v26);
  if (v2)
  {
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
    v28 = v26[0];
    v29 = v26[1];
    v30 = v26[2];
    v31 = v27;
    if (one-time initialization token for options != -1)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v17 = a2;
      a2 = static TraceConfig.options;
      v19 = *(static TraceConfig.options + 16);
      if (!v19)
      {
        break;
      }

      v9 = 0;
      v10 = static TraceConfig.options + 32;
      v18 = (v4 + 1);
      while (v9 < *(a2 + 16))
      {
        outlined init with copy of TraceConfig.Option(v10, v23);
        v11 = v32[4];
        v4 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
        lazy protocol witness table accessor for type TraceConfig.Option and conformance TraceConfig.Option();
        dispatch thunk of Decoder.container<A>(keyedBy:)();
        project #1 <A>(_:) in TraceConfig.init(from:)(v25, v7, v23, &v28, v25);
        (*v18)(v7, v20);
        ++v9;
        outlined destroy of TraceConfig.Option(v23);
        v10 += 120;
        if (v19 == v9)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
LABEL_9:
      swift_once();
    }

LABEL_7:
    v12 = v29;
    v21[0] = v28;
    v21[1] = v29;
    v13 = v30;
    v21[2] = v30;
    v14 = v31;
    v22 = v31;
    v15 = v17;
    *v17 = v28;
    v15[1] = v12;
    v15[2] = v13;
    *(v15 + 24) = v14;
    outlined init with copy of TraceConfig(v21, v23);
    __swift_destroy_boxed_opaque_existential_1(v32);
    v23[0] = v28;
    v23[1] = v29;
    v23[2] = v30;
    v24 = v31;
    return outlined destroy of TraceConfig(v23);
  }

  return result;
}

uint64_t project #1 <A>(_:) in TraceConfig.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[1] = a4;
  v8 = type metadata accessor for Optional();
  v23[0] = *(v8 - 8);
  v9 = *(v23[0] + 64);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v24 = *(a5 - 8);
  v13 = *(v24 + 64);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v23 - v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21SwiftUITracingSupport11TraceConfigV6OptionVGMd, &_ss22KeyedDecodingContainerVy21SwiftUITracingSupport11TraceConfigV6OptionVGMR);
  result = KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  if (!v5)
  {
    v20 = v23[0];
    if ((*(v24 + 48))(v12, 1, a5) == 1)
    {
      return (*(v20 + 8))(v12, v8);
    }

    else
    {
      v21 = v24;
      (*(v24 + 32))(v18, v12, a5);
      v22 = *(a3 + 16);
      type metadata accessor for WritableKeyPath();
      swift_dynamicCastClassUnconditional();
      (*(v21 + 16))(v16, v18, a5);
      swift_setAtWritableKeyPath();
      return (*(v21 + 8))(v18, a5);
    }
  }

  return result;
}

uint64_t closure #2 in TraceConfig.init(_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v4 = result;
  if (one-time initialization token for options != -1)
  {
    result = swift_once();
  }

  v6 = *(static TraceConfig.options + 16);
  if (v6)
  {
    v7 = static TraceConfig.options + 32;
    do
    {
      outlined init with copy of TraceConfig.Option(v7, &v20);
      if (*(a2 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v20, *(&v20 + 1)), (v9 & 1) != 0))
      {
        v10 = (*(a2 + 56) + 16 * v8);
        v11 = *v10;
        v12 = v10[1];
        v13 = v23;

        v13(v19, v11, v12);
      }

      else
      {
        outlined init with copy of Any(v21 + 8, v19);
      }

      outlined init with take of Any(v19, v18);
      specialized project #1 <A>(_:) in closure #2 in TraceConfig.init(_:)(v24, v18, v4, &v20, v24);
      __swift_destroy_boxed_opaque_existential_1(v18);
      result = outlined destroy of TraceConfig.Option(&v20);
      v7 += 120;
      --v6;
    }

    while (v6);
  }

  if (v4)
  {
    v14 = *v4;
    v15 = *(v4 + 16);
    v16 = *(v4 + 32);
    v22 = *(v4 + 48);
    v21[0] = v15;
    v21[1] = v16;
    v20 = v14;
    v17 = *(v4 + 16);
    *a3 = *v4;
    *(a3 + 16) = v17;
    *(a3 + 32) = *(v4 + 32);
    *(a3 + 48) = *(v4 + 48);
    return outlined init with copy of TraceConfig(&v20, v18);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t TraceConfig.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6B63614268736168;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      return 0xD000000000000017;
    case 3:
    case 5:
      return 0xD000000000000018;
    case 4:
      return 0xD000000000000016;
    case 6:
      return 0xD000000000000013;
    case 7:
      v3 = 11;
      goto LABEL_15;
    case 8:
      return 0xD00000000000001CLL;
    case 9:
      return 0x6172546775626564;
    case 10:
      return 0xD000000000000010;
    case 11:
      return 0x73736572706D6F63;
    case 12:
      return 0x6565725477656976;
    case 13:
      return 0x74794265756C6176;
    case 14:
      return 0x6576456573756572;
    case 15:
      return 1668184435;
    case 16:
      return 0xD000000000000010;
    case 18:
      return 0x6950746567726174;
    case 19:
      v4 = 0x747265737361;
      goto LABEL_24;
    case 20:
      v4 = 0x676E6F727473;
LABEL_24:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x7553000000000000;
      break;
    case 21:
      v3 = 5;
LABEL_15:
      result = v3 | 0xD000000000000010;
      break;
    case 22:
      result = 0x4E6E4F6873617263;
      break;
    case 23:
      result = 0x6E6F6973726576;
      break;
    default:
      result = 0xD000000000000012;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TraceConfig.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized TraceConfig.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TraceConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TraceConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TraceConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21SwiftUITracingSupport11TraceConfigV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMd, &_ss22KeyedEncodingContainerVy21SwiftUITracingSupport11TraceConfigV10CodingKeys33_F7F108D3C0AAB2D7CEC10502E90C74E3LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v28 - v6;
  v8 = *v1;
  LODWORD(v51) = v1[1];
  v9 = v1[2];
  v53 = v1[3];
  v49 = v1[4];
  LODWORD(v50) = v9;
  v10 = v1[5];
  v11 = v1[6];
  v45 = v1[7];
  v46 = v11;
  v12 = v1[8];
  v43 = v1[9];
  v44 = v12;
  v47 = v1[10];
  v48 = v10;
  v13 = v1[11];
  v41 = v1[12];
  v42 = v13;
  v14 = v1[13];
  v39 = v1[14];
  v40 = v14;
  v15 = v1[15];
  v37 = v1[16];
  v38 = v15;
  v16 = *(v1 + 4);
  v32 = *(v1 + 3);
  v33 = v16;
  v31 = *(v1 + 10);
  v30 = v1[44];
  LODWORD(v16) = v1[46];
  v34 = v1[45];
  v35 = v16;
  v36 = v1[47];
  v17 = v1[48];
  v18 = v1[49];
  v20 = a1[3];
  v19 = a1[4];
  v21 = a1;
  v23 = v22;
  __swift_project_boxed_opaque_existential_1(v21, v20);
  lazy protocol witness table accessor for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v55 = 0;
  v24 = v52;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v24)
  {
    return (*(v4 + 8))(v7, v23);
  }

  LODWORD(v52) = v17;
  v29 = v18;
  v55 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 2;
  v51 = v7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 5;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 6;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 7;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 8;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 9;
  v50 = v23;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 10;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 11;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 12;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 13;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 14;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 15;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 16;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 17;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v55 = 18;
  v54 = v30;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v55 = 19;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 20;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 21;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = 22;
  KeyedEncodingContainer.encode(_:forKey:)();
  v55 = v29;
  v54 = 23;
  lazy protocol witness table accessor for type TraceConfig.Version and conformance TraceConfig.Version();
  v26 = v50;
  v27 = v51;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v27, v26);
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

uint64_t specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v69 = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {

    v5 = MEMORY[0x277D84FA0];
LABEL_53:
    v50 = *MEMORY[0x277D85DE8];
    return v5;
  }

  v56 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v60 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v64 = (a2 + 56);

  v15 = 0;
  v62 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_55;
      }

      if (v17 >= v12)
      {
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v63 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    v23 = *(v5 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    v24 = Hasher._finalize()();
    v25 = -1 << *(v5 + 32);
    v2 = v24 & ~v25;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v62;
    v15 = v63;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v25;
  while (1)
  {
    v26 = (*(v5 + 48) + 16 * v2);
    v27 = *v26 == v22 && v26[1] == v21;
    if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v64[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v62;
  v28 = v63;
  v66 = v60;
  v67 = v63;
  v68 = v11;
  v65[0] = v62;
  v65[1] = v7;

  v30 = *(v5 + 32);
  v57 = ((1 << v30) + 63) >> 6;
  v14 = 8 * v57;
  if ((v30 & 0x3Fu) > 0xD)
  {
    goto LABEL_56;
  }

  while (1)
  {
    v58 = &v56;
    MEMORY[0x28223BE20](v29);
    v2 = &v56 - ((v31 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v64, v31);
    v32 = *(v2 + 8 * v8) & ~v4;
    v33 = *(v5 + 16);
    v61 = v2;
    *(v2 + 8 * v8) = v32;
    v34 = v33 - 1;
LABEL_23:
    v59 = v34;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v36 = v28;
    while (1)
    {
      v37 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (v37 >= v12)
      {
        v5 = specialized _NativeSet.extractSubset(using:count:)(v61, v57, v59, v5);
        goto LABEL_52;
      }

      v11 = *(v7 + 8 * v37);
      ++v36;
      if (v11)
      {
        v28 = v37;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v38 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v39 = *(v3 + 48);
            v63 = v28;
            v40 = (v39 + ((v28 << 10) | (16 * v38)));
            v41 = *v40;
            v4 = v40[1];
            v42 = *(v5 + 40);
            Hasher.init(_seed:)();

            String.hash(into:)();
            v43 = Hasher._finalize()();
            v44 = -1 << *(v5 + 32);
            v8 = v43 & ~v44;
            v2 = v8 >> 6;
            v45 = 1 << v8;
            if (((1 << v8) & v64[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v28 = v63;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v46 = (*(v5 + 48) + 16 * v8);
          if (*v46 != v41 || v46[1] != v4)
          {
            v48 = ~v44;
            while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              v8 = (v8 + 1) & v48;
              v2 = v8 >> 6;
              v45 = 1 << v8;
              if (((1 << v8) & v64[v8 >> 6]) == 0)
              {
                v3 = v62;
                goto LABEL_45;
              }

              v49 = (*(v5 + 48) + 16 * v8);
              if (*v49 == v41 && v49[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v62;
          v35 = v61[v2];
          v61[v2] = v35 & ~v45;
          v27 = (v35 & v45) == 0;
          v28 = v63;
          if (!v27)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v34 = v59 - 1;
        if (__OFSUB__(v59, 1))
        {
          __break(1u);
        }

        if (v59 == 1)
        {

          v5 = MEMORY[0x277D84FA0];
          goto LABEL_52;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    v52 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v28 = v63;
  }

  v53 = swift_slowAlloc();
  memcpy(v53, v64, v52);
  v54 = v56;
  v55 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(v53, v57, v5, v2, v65);

  if (!v54)
  {

    MEMORY[0x26D69EAB0](v53, -1, -1);
    v60 = v66;
    v5 = v55;
LABEL_52:
    outlined consume of Set<AGSubgraphRef>.Iterator._Variant();
    goto LABEL_53;
  }

  result = MEMORY[0x26D69EAB0](v53, -1, -1);
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in _NativeSet.subtracting<A>(_:)(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v32 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v31 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v29 = v11 + 1;
          }

          else
          {
            v29 = (a5[2] + 64) >> 6;
          }

          a5[3] = v29 - 1;
          a5[4] = 0;

          return specialized _NativeSet.extractSubset(using:count:)(v32, a2, v31, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        v19 = *(a3 + 40);
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = -1 << *(a3 + 32);
        v22 = v20 & ~v21;
        v23 = v22 >> 6;
        v24 = 1 << v22;
        if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v25 = (*(a3 + 48) + 16 * v22);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v21;
        while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          v22 = (v22 + 1) & v27;
          v23 = v22 >> 6;
          v24 = 1 << v22;
          if (((1 << v22) & *(v9 + 8 * (v22 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v28 = (*(a3 + 48) + 16 * v22);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v32[v23];
      v32[v23] = v10 & ~v24;
    }

    while ((v10 & v24) == 0);
    v8 = v31 - 1;
    if (__OFSUB__(v31, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v31 != 1)
      {
        continue;
      }

      return MEMORY[0x277D84FA0];
    }

    return result;
  }
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v30 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    v19 = *(v9 + 40);
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    v28 = (*(v9 + 48) + 16 * v23);
    *v28 = v17;
    v28[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v30;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC21SwiftUITracingSupport7TreeRefV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type TreeRef and conformance TreeRef();
  result = MEMORY[0x26D69D0C0](v2, &type metadata for TreeRef, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      specialized Set._Variant.insert(_:)(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x26D69D0C0](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      specialized Set._Variant.insert(_:)(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TraceConfig.InvalidOptions and conformance TraceConfig.InvalidOptions()
{
  result = lazy protocol witness table cache variable for type TraceConfig.InvalidOptions and conformance TraceConfig.InvalidOptions;
  if (!lazy protocol witness table cache variable for type TraceConfig.InvalidOptions and conformance TraceConfig.InvalidOptions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.InvalidOptions and conformance TraceConfig.InvalidOptions);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TraceConfig.Option and conformance TraceConfig.Option()
{
  result = lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option;
  if (!lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option;
  if (!lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option;
  if (!lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Option and conformance TraceConfig.Option);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys;
  if (!lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.CodingKeys and conformance TraceConfig.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TraceConfig.Version and conformance TraceConfig.Version()
{
  result = lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version;
  if (!lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version;
  if (!lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version;
  if (!lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version;
  if (!lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TraceConfig.Version and conformance TraceConfig.Version);
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for TraceConfig(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 50))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TraceConfig(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 50) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TraceConfig.MinorVersion(unsigned __int16 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if ((a2 + 0xFFFF) < 0xFF0000)
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
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else if (v3 == 2)
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        return (*a1 | (v4 << 16)) - 0xFFFF;
      }
    }
  }

  return 0;
}

_WORD *storeEnumTagSinglePayload for TraceConfig.MinorVersion(_WORD *result, int a2, int a3)
{
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if ((a3 + 0xFFFF) < 0xFF0000)
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
    v5 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TraceConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TraceConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TraceConfig.Option(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for TraceConfig.Option(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t specialized project #1 <A>(_:) in closure #2 in TraceConfig.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v36 = a4;
  v37 = a2;
  v38 = a3;
  v6 = *(a5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v35 - v11;
  v13 = type metadata accessor for Optional();
  v14 = type metadata accessor for Optional();
  v35 = *(v14 - 8);
  v15 = *(v35 + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v35 - v17;
  v19 = *(v13 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v16);
  v23 = &v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v35 - v24;
  outlined init with copy of Any(v37, v39);
  v26 = swift_dynamicCast();
  v27 = *(v19 + 56);
  if (v26)
  {
    v27(v18, 0, 1, v13);
    (*(v19 + 32))(v25, v18, v13);
    (*(v19 + 16))(v23, v25, v13);
    if ((*(v6 + 48))(v23, 1, a5) == 1)
    {
      v34 = *(v19 + 8);
      v34(v25, v13);
      v34(v23, v13);
      goto LABEL_10;
    }

    (*(v6 + 32))(v12, v23, a5);
    v28 = v38;
    if (v38)
    {
      v29 = *(v36 + 16);
      type metadata accessor for WritableKeyPath();
      v14 = swift_dynamicCastClassUnconditional();
      v30 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
      if ((v31 & 1) == 0)
      {
        v32 = v30;
        (*(v6 + 16))(v10, v12, a5);
        _sSpsRi_zrlE10initialize2toyxn_tF(v10, v28 + v32, a5);
        (*(v6 + 8))(v12, a5);
        return (*(v19 + 8))(v25, v13);
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  v27(v18, 1, 1, v13);
  (*(v35 + 8))(v18, v14);
LABEL_10:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC21SwiftUITracingSupport7TreeRefV_AD11UnsafeArrayVyAFGTt0g5Tf4x_n(Swift::Int *a1, unsigned int a2)
{
  v4 = a2;
  v5 = lazy protocol witness table accessor for type TreeRef and conformance TreeRef();
  result = MEMORY[0x26D69D0C0](v4, &type metadata for TreeRef, v5);
  v9 = result;
  if (a2)
  {
    if (a1)
    {
      do
      {
        v7 = *a1++;
        specialized Set._Variant.insert(_:)(&v8, v7);
        --v4;
      }

      while (v4);
      return v9;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t specialized TraceConfig.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000012 && 0x800000026C33DB00 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6B63614268736168 && a2 == 0xEE00736563617274 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x800000026C33DB20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026C33DB40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000026C33DB60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x800000026C33DB80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000013 && 0x800000026C33DBA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD00000000000001BLL && 0x800000026C33DBC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x800000026C33DBE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6172546775626564 && a2 == 0xEF73656C69466563 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C33DC00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x73736572706D6F63 && a2 == 0xEB000000006E6F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6565725477656976 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x74794265756C6176 && a2 == 0xEF676E6972745365 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6576456573756572 && a2 == 0xEB0000000073746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 1668184435 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C33DC20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x800000026C33DC40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6950746567726174 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x7553747265737361 && a2 == 0xEF73687061726762 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x7553676E6F727473 && a2 == 0xEF73687061726762 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000015 && 0x800000026C33DC60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x4E6E4F6873617263 && a2 == 0xEB000000006C6C75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 23;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t MachO.installName.getter()
{
  v1 = (v0 + *(type metadata accessor for MachO() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for MachO()
{
  result = type metadata singleton initialization cache for MachO;
  if (!type metadata singleton initialization cache for MachO)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MachO.installName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MachO() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MachO.Section.segmentName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t MachO.Section.segmentName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t MachO.Section.sectionName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t MachO.Section.sectionName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t MachO.Section.pointer.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t MachO.Section.pointer.setter(uint64_t result, uint64_t a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2;
  return result;
}

uint64_t UnsafeRawPointer.section.getter(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  if (dyld_process_create_for_current_task())
  {
    if (dyld_process_snapshot_create_for_process())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5MachOVSgMd, &_s21SwiftUITracingSupport5MachOVSgMR);
      v6 = swift_allocBox();
      v8 = v7;
      v9 = type metadata accessor for MachO();
      (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_26C337DE0;
      *(v10 + 32) = 0u;
      *(v10 + 48) = 0u;
      v11 = swift_allocObject();
      v11[2] = a3;
      v11[3] = v6;
      v11[4] = v10;
      aBlock[4] = partial apply for closure #1 in UnsafeRawPointer.section.getter;
      aBlock[5] = v11;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?) -> ();
      aBlock[3] = &block_descriptor_6;
      v12 = _Block_copy(aBlock);

      dyld_process_snapshot_for_each_image();
      _Block_release(v12);
      swift_beginAccess();
      outlined init with copy of ResourceSet<Interpreter, ()>(v8, a1, &_s21SwiftUITracingSupport5MachOVSgMd, &_s21SwiftUITracingSupport5MachOVSgMR);
      swift_beginAccess();
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = *(v10 + 40);
      v17 = *(v10 + 48);
      v18 = *(v10 + 56);
      *a2 = v13;
      a2[1] = v14;
      a2[2] = v15;
      a2[3] = v16;
      a2[4] = v17;
      a2[5] = v18;
      outlined copy of MachO.Section?(v13, v14);

      dyld_process_snapshot_dispose();
    }

    else
    {
      v21 = static os_log_type_t.fault.getter();
      if (one-time initialization token for log != -1)
      {
        swift_once();
      }

      v22 = log;
      if (os_log_type_enabled(log, v21))
      {
        v23 = swift_slowAlloc();
        *v23 = 67240192;
        swift_beginAccess();
        *(v23 + 4) = 0;
        _os_log_impl(&dword_26C161000, v22, v21, "dyld error: %{public}d;", v23, 8u);
        MEMORY[0x26D69EAB0](v23, -1, -1);
      }

      v24 = type metadata accessor for MachO();
      (*(*(v24 - 8) + 56))(a1, 1, 1, v24);
      *a2 = xmmword_26C337DE0;
      *(a2 + 1) = 0u;
      *(a2 + 2) = 0u;
    }

    result = dyld_process_dispose();
  }

  else
  {
    static os_log_type_t.fault.getter();
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    v19 = type metadata accessor for MachO();
    result = (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
    *a2 = xmmword_26C337DE0;
    *(a2 + 1) = 0u;
    *(a2 + 2) = 0u;
  }

  v25 = *MEMORY[0x277D85DE8];
  return result;
}

void closure #1 in UnsafeRawPointer.section.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a1;
  v8[4] = a3;
  v8[5] = a4;
  v10[4] = partial apply for closure #1 in closure #1 in UnsafeRawPointer.section.getter;
  v10[5] = v8;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>?, @unowned UnsafePointer<Int8>?, @unowned UInt64, @unowned UInt64) -> ();
  v10[3] = &block_descriptor_16;
  v9 = _Block_copy(v10);

  dyld_image_for_each_section_info();
  _Block_release(v9);
}

uint64_t closure #1 in closure #1 in UnsafeRawPointer.section.getter(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v74 = a6;
  v75 = a1;
  v76 = a2;
  v77 = *MEMORY[0x277D85DE8];
  v12 = type metadata accessor for URL.DirectoryHint();
  v72 = *(v12 - 8);
  v73 = v12;
  v13 = *(v72 + 64);
  MEMORY[0x28223BE20](v12);
  v71 = v65 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v15 - 8);
  v70 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport5MachOVSgMd, &_s21SwiftUITracingSupport5MachOVSgMR);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v24 = v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v27);
  v32 = v65 - v31;
  MEMORY[0x28223BE20](v30);
  v34 = v65 - v33;
  result = swift_projectBox();
  if (!a3)
  {
    if ((a4 & 0x8000000000000000) == 0)
    {
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (a4 < 0)
  {
    __break(1u);
  }

  if (a3 <= a5 && a3 + a4 > a5)
  {
    v67 = a3;
    v68 = a3 + a4;
    v69 = result;
    v36 = type metadata accessor for UUID();
    v37 = *(*(v36 - 8) + 56);
    v37(v34, 1, 1, v36);
    if (dyld_image_copy_uuid())
    {
      UUID.init(uuid:)();
      outlined destroy of UUID?(v34);
      v37(v32, 0, 1, v36);
      outlined init with take of UUID?(v32, v34, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    outlined init with copy of ResourceSet<Interpreter, ()>(v34, v29, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (dyld_image_get_installname())
    {
      v38 = String.init(cString:)();
      v40 = v39;
LABEL_12:
      v66 = v34;
      if (dyld_image_get_file_path())
      {
        v65[2] = String.init(cString:)();
        v65[1] = v41;
        v42 = type metadata accessor for URL();
        v43 = *(v42 - 8);
        v74 = v38;
        v44 = *(v43 + 56);
        v44(v70, 1, 1, v42);
        (*(v72 + 104))(v71, *MEMORY[0x277CC91D8], v73);
        URL.init(filePath:directoryHint:relativeTo:)();
        v44(v20, 0, 1, v42);
        v38 = v74;
      }

      else
      {
        v45 = type metadata accessor for URL();
        (*(*(v45 - 8) + 56))(v20, 1, 1, v45);
      }

      v47 = v67;
      v46 = v68;
      outlined init with take of UUID?(v29, v24, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v48 = type metadata accessor for MachO();
      v49 = &v24[*(v48 + 20)];
      *v49 = v38;
      v49[1] = v40;
      outlined init with take of UUID?(v20, &v24[*(v48 + 24)], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      (*(*(v48 - 8) + 56))(v24, 0, 1, v48);
      v50 = v69;
      swift_beginAccess();
      outlined assign with take of URL?(v24, v50, &_s21SwiftUITracingSupport5MachOVSgMd, &_s21SwiftUITracingSupport5MachOVSgMR);
      if (v75)
      {
        v51 = String.init(cString:)();
        v53 = v52;
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }

      v54 = v66;
      if (v76)
      {
        v55 = String.init(cString:)();
        v57 = v56;
      }

      else
      {
        v55 = 0;
        v57 = 0;
      }

      outlined destroy of UUID?(v54);
      swift_beginAccess();
      v58 = a8[2];
      v59 = a8[3];
      v60 = a8[4];
      v61 = a8[5];
      v62 = a8[6];
      v63 = a8[7];
      a8[2] = v51;
      a8[3] = v53;
      a8[4] = v55;
      a8[5] = v57;
      a8[6] = v47;
      a8[7] = v46;
      result = outlined consume of MachO.Section?(v58, v59);
      goto LABEL_22;
    }

LABEL_11:
    v38 = 0;
    v40 = 0;
    goto LABEL_12;
  }

LABEL_22:
  v64 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned UnsafePointer<Int8>?, @unowned UnsafePointer<Int8>?, @unowned UInt64, @unowned UInt64) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v10(a2, a3, a4, a5);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer?) -> ()(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_26C2B0540()
{
  if (*(v0 + 24) != 1)
  {

    v1 = *(v0 + 40);
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_26C2B0588()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined copy of MachO.Section?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_26C2B0648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 2147483646)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v13 = *(*(v12 - 8) + 48);
    v14 = a1 + *(a3 + 24);

    return v13(v14, a2, v12);
  }
}

uint64_t sub_26C2B07A8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void type metadata completion function for MachO()
{
  type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for String?();
    if (v1 <= 0x3F)
    {
      type metadata accessor for UUID?(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
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

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t getEnumTagSinglePayload for MachO.Section(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for MachO.Section(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_26C2B0B2C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined consume of MachO.Section?(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double static TestingSupport.TraceHandle.types.getter@<D0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport9Evolution_pXpGMR);
  v2 = swift_allocObject();
  *&result = 2;
  *(v2 + 16) = xmmword_26C32F2A0;
  *(v2 + 32) = &type metadata for TestingSupport.TestEvent;
  *(v2 + 40) = &protocol witness table for TestingSupport.TestEvent;
  *(v2 + 48) = &type metadata for TestingSupport.TestEventWBacktrace;
  *(v2 + 56) = &protocol witness table for TestingSupport.TestEventWBacktrace;
  *a1 = v2;
  return result;
}

__n128 TestingSupport.TraceHandle.storage.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  v3 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v3;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  result = *(v1 + 32);
  v6 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 TestingSupport.TraceHandle.storage.setter(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v2;
  v3 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v3;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v6;
  return result;
}

double TestingSupport.TraceHandle.init()@<D0>(_OWORD *a1@<X8>)
{
  Trace_Handle_Storage.init()(v7);
  v2 = v11;
  a1[4] = v10;
  a1[5] = v2;
  v3 = v13;
  a1[6] = v12;
  a1[7] = v3;
  v4 = v7[1];
  *a1 = v7[0];
  a1[1] = v4;
  result = *&v8;
  v6 = v9;
  a1[2] = v8;
  a1[3] = v6;
  return result;
}

__n128 protocol witness for Trace_Handle.storage.getter in conformance TestingSupport.TraceHandle@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 80);
  *(a1 + 64) = *(v1 + 64);
  *(a1 + 80) = v2;
  v3 = *(v1 + 112);
  *(a1 + 96) = *(v1 + 96);
  *(a1 + 112) = v3;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  result = *(v1 + 32);
  v6 = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

__n128 protocol witness for Trace_Handle.storage.setter in conformance TestingSupport.TraceHandle(uint64_t a1)
{
  v2 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v2;
  v3 = *(a1 + 112);
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = v3;
  v4 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v4;
  result = *(a1 + 32);
  v6 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v6;
  return result;
}

void specialized Trace_Handle.write<A>(_:omit:)(char a1)
{
  v45 = *MEMORY[0x277D85DE8];
  if (*v1 != 1)
  {
    goto LABEL_53;
  }

  v5 = v1;
  v7 = *(v1 + 112);
  if (*(*(v1 + 24) + 49) == 1 && (a1 & 4) == 0)
  {
    *&v38 = -1;
    pthread_threadid_np(0, &v38);
    v9 = v38;
    if (v38 == -1)
    {
      __break(1u);
      goto LABEL_55;
    }

    if ((*(v1 + 72) & 1) != 0 || v38 != *(v1 + 64))
    {
      *(v1 + 64) = v38;
      *(v1 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v9);
    }
  }

  if (*(*(v1 + 24) + 49) == 1 && (a1 & 2) == 0)
  {
    v2 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v2 = 0;
  }

  if (tracepointAssertion.value._rawValue)
  {
    v3 = *(v1 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v38 = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(60, 2u, v3, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v38;
  }

  if ((*(*(v1 + 24) + 49) & 1) == 0)
  {
    specialized Trace_Handle.write<A>(struct:)(1006632960);
LABEL_45:
    if ((*(v5[3] + 49) & 1) == 0)
    {
      v33 = swift_conformsToProtocol2();
      if (v33)
      {
        if ((*(v33 + 24))(&type metadata for TestingSupport.TestEventWBacktrace, v33))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
          if (swift_dynamicCast())
          {
            outlined init with take of Inspectable(v43, &v38);
            v34 = v40;
            v35 = __swift_project_boxed_opaque_existential_1(&v38, v40);
            v36 = lazy protocol witness table accessor for type TestingSupport.TraceHandle and conformance TestingSupport.TraceHandle();
            project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v35, v5, &type metadata for TestingSupport.TraceHandle, &type metadata for TestingSupport.TestEventWBacktrace, v34, v36);
            __swift_destroy_boxed_opaque_existential_1(&v38);
LABEL_52:
            ++v5[7];
LABEL_53:
            v37 = *MEMORY[0x277D85DE8];
            return;
          }

          v44 = 0;
          memset(v43, 0, sizeof(v43));
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v43, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
        }
      }
    }

    specialized Trace_Handle.write<A>(struct:)();
    goto LABEL_52;
  }

  v12 = *(v1 + 112);
  if (v7 < v12)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v4 = *(v1 + 56);
  if ((a1 & 1) != 0 && v7 != v12)
  {
    goto LABEL_57;
  }

  specialized T_TracepointID.Size.init(raw:)();
  if ((a1 & 2) != 0)
  {
    v14 = 60;
  }

  else
  {
    v14 = 2108;
  }

  LODWORD(v3) = v14 & 0xFFF00FFF | (v13 << 12);
  if (!readingDebug)
  {
    goto LABEL_30;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v15 = readingDebugLog;
    v16 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v43[0] = v18;
      *v17 = 134218498;
      *(v17 + 4) = v4;
      *(v17 + 12) = 2080;
      v38 = xmmword_26C32DAD0;
      v39 = 1;
      v40 = 0;
      v41 = 0;
      v42 = 512;
      v19 = T_TracepointID.describe(state:)(&v38, v3);
      v4 = v20;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v43);

      *(v17 + 14) = v21;
      *(v17 + 22) = 1024;
      *(v17 + 24) = v2;
      _os_log_impl(&dword_26C161000, v15, v16, "w %ld: %s, back: %u", v17, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x26D69EAB0](v18, -1, -1);
      MEMORY[0x26D69EAB0](v17, -1, -1);
    }

LABEL_30:
    v22 = v5[4];
    if (!*(v22 + 56))
    {
      break;
    }

    if (*(v22 + 52) == 2)
    {
      goto LABEL_39;
    }

    v23 = *(v22 + 32);
    LODWORD(v24) = *(v22 + 48);
    v25 = v24 | (*(v22 + 52) << 32);
    if (!v23)
    {
      if (*(v22 + 48))
      {
        goto LABEL_60;
      }

LABEL_38:
      CircularBuffer.Transaction.commit()();
LABEL_39:
      v29 = CircularBuffer.Transaction.begin()() + 4;
      v24 = *(v22 + 48);
      v25 = v24 | (*(v22 + 52) << 32);
      goto LABEL_40;
    }

    v26 = *(v22 + 40) - v23;
    v27 = v26 < v24;
    v28 = v26 - v24;
    if (v27)
    {
      __break(1u);
LABEL_60:
      __break(1u);
    }

    if (v28 < 17)
    {
      goto LABEL_38;
    }

    v29 = 4;
LABEL_40:
    if (BYTE4(v25) == 2)
    {
      goto LABEL_62;
    }

    *(*(v22 + 32) + v24) = v3;
    *(v22 + 48) = v24 + 4;
    if (!v2)
    {
      goto LABEL_44;
    }

    if (*(v22 + 52) == 2)
    {
      goto LABEL_63;
    }

    v30 = *(v22 + 48);
    *(*(v22 + 32) + v30) = v2;
    *(v22 + 48) = v30 + 4;
    v31 = __OFADD__(v29, 4);
    v29 += 4;
    if (!v31)
    {
LABEL_44:
      v32 = v5[15] + v29;
      v5[14] = v7;
      v5[15] = v32;
      goto LABEL_45;
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    swift_once();
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t a1)
{
  if (*v1 == 1)
  {
    v4 = v1;
    v5 = v1[3];
    if (*(v5 + 49))
    {
      v6 = v1[14];
      if (prepareTrace)
      {
        v7 = v1[14];
      }

      else
      {
        v7 = v1[14];
        if ((a1 & 1) == 0)
        {
          v8 = a1;
          if (kdebug_using_continuous_time())
          {
            v9 = mach_continuous_time();
          }

          else
          {
            v9 = mach_absolute_time();
          }

          v7 = v9;
          a1 = v8;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v2 = v4[7];
        v3 = a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v38 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(65, 1u, v2, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v38;

        LOBYTE(a1) = v3;
      }

      v11 = v7 - v6;
      if (*(v5 + 49))
      {
        if (v7 >= v6)
        {
          v2 = v4[7];
          if ((a1 & 1) == 0 || !v11)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v3 = v12;
            LOBYTE(v5) = v13;
            LODWORD(v6) = (v13 << 12) | 0x41;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v14 = readingDebugLog;
              v15 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v14, v15))
              {
                v37 = v3;
                v16 = swift_slowAlloc();
                v17 = swift_slowAlloc();
                *&v43[0] = v17;
                *v16 = 134218498;
                *(v16 + 4) = v2;
                *(v16 + 12) = 2080;
                v38 = xmmword_26C32DAD0;
                v39 = 1;
                v40 = 0;
                v41 = 0;
                v42 = 512;
                v18 = T_TracepointID.describe(state:)(&v38, v6);
                v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v43);

                *(v16 + 14) = v20;
                *(v16 + 22) = 1024;
                *(v16 + 24) = 0;
                _os_log_impl(&dword_26C161000, v14, v15, "w %ld: %s, back: %u", v16, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v17);
                MEMORY[0x26D69EAB0](v17, -1, -1);
                v21 = v16;
                v3 = v37;
                MEMORY[0x26D69EAB0](v21, -1, -1);
              }

LABEL_20:
              v22 = v4[4];
              if (*(v22 + 56))
              {
                if (*(v22 + 52) == 2)
                {
LABEL_33:
                  v29 = CircularBuffer.Transaction.begin()() + 4;
                  v24 = *(v22 + 48);
                  v25 = v24 | (*(v22 + 52) << 32);
LABEL_34:
                  if (BYTE4(v25) != 2)
                  {
                    *(*(v22 + 32) + v24) = v6;
                    *(v22 + 48) = v24 + 4;
                    v4[15] += CircularBuffer.Transaction.write(size:)(v3, v5) + v29;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v23 = *(v22 + 32);
                LODWORD(v24) = *(v22 + 48);
                v25 = v24 | (*(v22 + 52) << 32);
                if (v23)
                {
                  v26 = *(v22 + 40) - v23;
                  v27 = v26 < v24;
                  v28 = v26 - v24;
                  if (!v27)
                  {
                    if (v28 >= 17)
                    {
                      v29 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v22 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v7 >= v6)
      {
        if (v11 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v7, type metadata accessor for T_TimeSync);
          v30 = 1090519040;
        }

        else
        {
          v30 = v11 | 0x41000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v30, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v4[14] = v7;
        if ((*(v4[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_EndTreeWrite(0);
          v32 = v31;
          v33 = swift_conformsToProtocol2();
          if (v33)
          {
            if (v32 && (*(v33 + 24))(v32, v33))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v43, &v38);
                v34 = v40;
                v35 = __swift_project_boxed_opaque_existential_1(&v38, v40);
                v36 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v35, v4, &type metadata for Trace.SwiftUI, v32, v34, v36);
                __swift_destroy_boxed_opaque_existential_1(&v38);
                goto LABEL_38;
              }

              v44 = 0;
              memset(v43, 0, sizeof(v43));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v43, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(type metadata accessor for T_EndTreeWrite);
LABEL_38:
        ++v4[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v1 == 1)
  {
    v4 = v1;
    v5 = v1[3];
    if (*(v5 + 49))
    {
      v6 = v1[14];
      if (prepareTrace)
      {
        v7 = v1[14];
      }

      else
      {
        v7 = v1[14];
        if ((a1 & 1) == 0)
        {
          v8 = a1;
          if (kdebug_using_continuous_time())
          {
            v9 = mach_continuous_time();
          }

          else
          {
            v9 = mach_absolute_time();
          }

          v7 = v9;
          a1 = v8;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v2 = v4[7];
        v3 = a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v38 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(64, 1u, v2, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v38;

        LOBYTE(a1) = v3;
      }

      v11 = v7 - v6;
      if (*(v5 + 49))
      {
        if (v7 >= v6)
        {
          v2 = v4[7];
          if ((a1 & 1) == 0 || !v11)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v3 = v12;
            LOBYTE(v5) = v13;
            LODWORD(v6) = (v13 << 12) | 0x40;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v14 = readingDebugLog;
              v15 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v14, v15))
              {
                v37 = v3;
                v16 = swift_slowAlloc();
                v17 = swift_slowAlloc();
                *&v43[0] = v17;
                *v16 = 134218498;
                *(v16 + 4) = v2;
                *(v16 + 12) = 2080;
                v38 = xmmword_26C32DAD0;
                v39 = 1;
                v40 = 0;
                v41 = 0;
                v42 = 512;
                v18 = T_TracepointID.describe(state:)(&v38, v6);
                v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v43);

                *(v16 + 14) = v20;
                *(v16 + 22) = 1024;
                *(v16 + 24) = 0;
                _os_log_impl(&dword_26C161000, v14, v15, "w %ld: %s, back: %u", v16, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v17);
                MEMORY[0x26D69EAB0](v17, -1, -1);
                v21 = v16;
                v3 = v37;
                MEMORY[0x26D69EAB0](v21, -1, -1);
              }

LABEL_20:
              v22 = v4[4];
              if (*(v22 + 56))
              {
                if (*(v22 + 52) == 2)
                {
LABEL_33:
                  v29 = CircularBuffer.Transaction.begin()() + 4;
                  v24 = *(v22 + 48);
                  v25 = v24 | (*(v22 + 52) << 32);
LABEL_34:
                  if (BYTE4(v25) != 2)
                  {
                    *(*(v22 + 32) + v24) = v6;
                    *(v22 + 48) = v24 + 4;
                    v4[15] += CircularBuffer.Transaction.write(size:)(v3, v5) + v29;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v23 = *(v22 + 32);
                LODWORD(v24) = *(v22 + 48);
                v25 = v24 | (*(v22 + 52) << 32);
                if (v23)
                {
                  v26 = *(v22 + 40) - v23;
                  v27 = v26 < v24;
                  v28 = v26 - v24;
                  if (!v27)
                  {
                    if (v28 >= 17)
                    {
                      v29 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v22 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v7 >= v6)
      {
        if (v11 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v7, type metadata accessor for T_TimeSync);
          v30 = 0x40000000;
        }

        else
        {
          v30 = v11 | 0x40000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v30, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v4[14] = v7;
        if ((*(v4[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_BeginTreeWrite(0);
          v32 = v31;
          v33 = swift_conformsToProtocol2();
          if (v33)
          {
            if (v32 && (*(v33 + 24))(v32, v33))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v43, &v38);
                v34 = v40;
                v35 = __swift_project_boxed_opaque_existential_1(&v38, v40);
                v36 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v35, v4, &type metadata for Trace.SwiftUI, v32, v34, v36);
                __swift_destroy_boxed_opaque_existential_1(&v38);
                goto LABEL_38;
              }

              v44 = 0;
              memset(v43, 0, sizeof(v43));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v43, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(type metadata accessor for T_BeginTreeWrite);
LABEL_38:
        ++v4[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

{
  if (*v1 == 1)
  {
    v4 = v1;
    v5 = v1[3];
    if (*(v5 + 49))
    {
      v6 = v1[14];
      if (prepareTrace)
      {
        v7 = v1[14];
      }

      else
      {
        v7 = v1[14];
        if ((a1 & 1) == 0)
        {
          v8 = a1;
          if (kdebug_using_continuous_time())
          {
            v9 = mach_continuous_time();
          }

          else
          {
            v9 = mach_absolute_time();
          }

          v7 = v9;
          a1 = v8;
        }
      }

      if (tracepointAssertion.value._rawValue)
      {
        v2 = v4[7];
        v3 = a1;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v38 = tracepointAssertion.value._rawValue;
        tracepointAssertion.value._rawValue = 0x8000000000000000;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(62, 1u, v2, isUniquelyReferenced_nonNull_native);
        tracepointAssertion.value._rawValue = v38;

        LOBYTE(a1) = v3;
      }

      v11 = v7 - v6;
      if (*(v5 + 49))
      {
        if (v7 >= v6)
        {
          v2 = v4[7];
          if ((a1 & 1) == 0 || !v11)
          {
            specialized T_TracepointID.Size.init(raw:)();
            v3 = v12;
            LOBYTE(v5) = v13;
            LODWORD(v6) = (v13 << 12) | 0x3E;
            if (!readingDebug)
            {
              goto LABEL_20;
            }

            if (one-time initialization token for readingDebugLog == -1)
            {
LABEL_18:
              v14 = readingDebugLog;
              v15 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v14, v15))
              {
                v37 = v3;
                v16 = swift_slowAlloc();
                v17 = swift_slowAlloc();
                *&v43[0] = v17;
                *v16 = 134218498;
                *(v16 + 4) = v2;
                *(v16 + 12) = 2080;
                v38 = xmmword_26C32DAD0;
                v39 = 1;
                v40 = 0;
                v41 = 0;
                v42 = 512;
                v18 = T_TracepointID.describe(state:)(&v38, v6);
                v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, v43);

                *(v16 + 14) = v20;
                *(v16 + 22) = 1024;
                *(v16 + 24) = 0;
                _os_log_impl(&dword_26C161000, v14, v15, "w %ld: %s, back: %u", v16, 0x1Cu);
                __swift_destroy_boxed_opaque_existential_1(v17);
                MEMORY[0x26D69EAB0](v17, -1, -1);
                v21 = v16;
                v3 = v37;
                MEMORY[0x26D69EAB0](v21, -1, -1);
              }

LABEL_20:
              v22 = v4[4];
              if (*(v22 + 56))
              {
                if (*(v22 + 52) == 2)
                {
LABEL_33:
                  v29 = CircularBuffer.Transaction.begin()() + 4;
                  v24 = *(v22 + 48);
                  v25 = v24 | (*(v22 + 52) << 32);
LABEL_34:
                  if (BYTE4(v25) != 2)
                  {
                    *(*(v22 + 32) + v24) = v6;
                    *(v22 + 48) = v24 + 4;
                    v4[15] += CircularBuffer.Transaction.write(size:)(v3, v5) + v29;
                    goto LABEL_36;
                  }

LABEL_53:
                  __break(1u);
                  return;
                }

                v23 = *(v22 + 32);
                LODWORD(v24) = *(v22 + 48);
                v25 = v24 | (*(v22 + 52) << 32);
                if (v23)
                {
                  v26 = *(v22 + 40) - v23;
                  v27 = v26 < v24;
                  v28 = v26 - v24;
                  if (!v27)
                  {
                    if (v28 >= 17)
                    {
                      v29 = 4;
                      goto LABEL_34;
                    }

                    goto LABEL_32;
                  }

                  __break(1u);
                }

                else if (!*(v22 + 48))
                {
LABEL_32:
                  CircularBuffer.Transaction.commit()();
                  goto LABEL_33;
                }

                __break(1u);
              }

              __break(1u);
              goto LABEL_53;
            }

LABEL_49:
            swift_once();
            goto LABEL_18;
          }

LABEL_48:
          __break(1u);
          goto LABEL_49;
        }

        __break(1u);
      }

      else if (v7 >= v6)
      {
        if (v11 >> 22)
        {
          specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
          specialized Trace_Handle.write<A>(struct:)(v7, type metadata accessor for T_TimeSync);
          v30 = 1040187392;
        }

        else
        {
          v30 = v11 | 0x3E000000;
        }

        specialized Trace_Handle.write<A>(struct:)(v30, type metadata accessor for T_TracepointIDV0);
LABEL_36:
        v4[14] = v7;
        if ((*(v4[3] + 49) & 1) == 0)
        {
          type metadata accessor for T_PassedDeadline(0);
          v32 = v31;
          v33 = swift_conformsToProtocol2();
          if (v33)
          {
            if (v32 && (*(v33 + 24))(v32, v33))
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport12V0Tracepoint_pMd, &_s21SwiftUITracingSupport12V0Tracepoint_pMR);
              if (swift_dynamicCast())
              {
                outlined init with take of Inspectable(v43, &v38);
                v34 = v40;
                v35 = __swift_project_boxed_opaque_existential_1(&v38, v40);
                v36 = lazy protocol witness table accessor for type Trace.SwiftUI and conformance Trace.SwiftUI();
                project #1 <A><A1><A2>(_:) in Trace_Handle.write<A>(_:omit:)(v35, v4, &type metadata for Trace.SwiftUI, v32, v34, v36);
                __swift_destroy_boxed_opaque_existential_1(&v38);
                goto LABEL_38;
              }

              v44 = 0;
              memset(v43, 0, sizeof(v43));
              outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v43, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMd, &_s21SwiftUITracingSupport12V0Tracepoint_pSgMR);
            }
          }
        }

        specialized Trace_Handle.write<A>(struct:)(type metadata accessor for T_PassedDeadline);
LABEL_38:
        ++v4[7];
        return;
      }

      __break(1u);
      goto LABEL_48;
    }
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (*v4 == 1)
  {
    v6 = v4;
    v10 = *(v4 + 3);
    v11 = *(v4 + 14);
    if (prepareTrace)
    {
      v12 = *(v4 + 14);
    }

    else
    {
      v12 = *(v4 + 14);
      if ((a4 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v13 = mach_continuous_time();
        }

        else
        {
          v13 = mach_absolute_time();
        }

        v12 = v13;
      }
    }

    v14 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v5 = *(v4 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v40 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v4 = &v40;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(10, 1u, v5, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v40;
    }

    v16 = v12 - v11;
    if (*(v10 + 49))
    {
      if (v12 >= v11)
      {
        v4 = *(v6 + 7);
        if ((a4 & 1) == 0 || !v16)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v14 = v17;
          LOBYTE(v5) = v18;
          LODWORD(v10) = (v18 << 12) | 0xA;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v19 = readingDebugLog;
            v20 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v19, v20))
            {
              v37 = v19;
              v21 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              v45 = v36;
              *v21 = 134218498;
              *(v21 + 4) = v4;
              *(v21 + 12) = 2080;
              v40 = xmmword_26C32DAD0;
              v41 = 1;
              v42 = 0;
              v43 = 0;
              v44 = 512;
              v22 = T_TracepointID.describe(state:)(&v40, v10);
              v38 = v14;
              v24 = v20;
              v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v45);

              *(v21 + 14) = v25;
              *(v21 + 22) = 1024;
              *(v21 + 24) = 0;
              v26 = v24;
              v14 = v38;
              _os_log_impl(&dword_26C161000, v37, v26, "w %ld: %s, back: %u", v21, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v36);
              MEMORY[0x26D69EAB0](v36, -1, -1);
              MEMORY[0x26D69EAB0](v21, -1, -1);
            }

LABEL_19:
            v27 = *(v6 + 4);
            if (*(v27 + 56))
            {
              if (*(v27 + 52) == 2)
              {
LABEL_32:
                v34 = CircularBuffer.Transaction.begin()() + 4;
                v29 = *(v27 + 48);
                v30 = v29 | (*(v27 + 52) << 32);
LABEL_33:
                if (BYTE4(v30) != 2)
                {
                  *(*(v27 + 32) + v29) = v10;
                  *(v27 + 48) = v29 + 4;
                  *(v6 + 15) += CircularBuffer.Transaction.write(size:)(v14, v5) + v34;
LABEL_35:
                  *(v6 + 14) = v12;
                  specialized Trace_Handle.write<A>(struct:)(a1, a2, a3, type metadata accessor for T_BeginTrace);
                  ++*(v6 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v28 = *(v27 + 32);
              LODWORD(v29) = *(v27 + 48);
              v30 = v29 | (*(v27 + 52) << 32);
              if (v28)
              {
                v31 = *(v27 + 40) - v28;
                v32 = v31 < v29;
                v33 = v31 - v29;
                if (!v32)
                {
                  if (v33 >= 41)
                  {
                    v34 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v27 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v12 >= v11)
    {
      if (v16 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v12, type metadata accessor for T_TimeSync);
        v35 = 167772160;
      }

      else
      {
        v35 = v16 | 0xA000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v4 == 1)
  {
    v6 = v4;
    v10 = *(v4 + 3);
    v11 = *(v4 + 14);
    if (prepareTrace)
    {
      v12 = *(v4 + 14);
    }

    else
    {
      v12 = *(v4 + 14);
      if ((a4 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v13 = mach_continuous_time();
        }

        else
        {
          v13 = mach_absolute_time();
        }

        v12 = v13;
      }
    }

    v14 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v5 = *(v4 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v40 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v4 = &v40;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(11, 1u, v5, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v40;
    }

    v16 = v12 - v11;
    if (*(v10 + 49))
    {
      if (v12 >= v11)
      {
        v4 = *(v6 + 7);
        if ((a4 & 1) == 0 || !v16)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v14 = v17;
          LOBYTE(v5) = v18;
          LODWORD(v10) = (v18 << 12) | 0xB;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v19 = readingDebugLog;
            v20 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v19, v20))
            {
              v37 = v19;
              v21 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              v45 = v36;
              *v21 = 134218498;
              *(v21 + 4) = v4;
              *(v21 + 12) = 2080;
              v40 = xmmword_26C32DAD0;
              v41 = 1;
              v42 = 0;
              v43 = 0;
              v44 = 512;
              v22 = T_TracepointID.describe(state:)(&v40, v10);
              v38 = v14;
              v24 = v20;
              v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v45);

              *(v21 + 14) = v25;
              *(v21 + 22) = 1024;
              *(v21 + 24) = 0;
              v26 = v24;
              v14 = v38;
              _os_log_impl(&dword_26C161000, v37, v26, "w %ld: %s, back: %u", v21, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v36);
              MEMORY[0x26D69EAB0](v36, -1, -1);
              MEMORY[0x26D69EAB0](v21, -1, -1);
            }

LABEL_19:
            v27 = *(v6 + 4);
            if (*(v27 + 56))
            {
              if (*(v27 + 52) == 2)
              {
LABEL_32:
                v34 = CircularBuffer.Transaction.begin()() + 4;
                v29 = *(v27 + 48);
                v30 = v29 | (*(v27 + 52) << 32);
LABEL_33:
                if (BYTE4(v30) != 2)
                {
                  *(*(v27 + 32) + v29) = v10;
                  *(v27 + 48) = v29 + 4;
                  *(v6 + 15) += CircularBuffer.Transaction.write(size:)(v14, v5) + v34;
LABEL_35:
                  *(v6 + 14) = v12;
                  specialized Trace_Handle.write<A>(struct:)(a1, a2, a3, type metadata accessor for T_EndTrace);
                  ++*(v6 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v28 = *(v27 + 32);
              LODWORD(v29) = *(v27 + 48);
              v30 = v29 | (*(v27 + 52) << 32);
              if (v28)
              {
                v31 = *(v27 + 40) - v28;
                v32 = v31 < v29;
                v33 = v31 - v29;
                if (!v32)
                {
                  if (v33 >= 41)
                  {
                    v34 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v27 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v12 >= v11)
    {
      if (v16 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v12, type metadata accessor for T_TimeSync);
        v35 = 184549376;
      }

      else
      {
        v35 = v16 | 0xB000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v35, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t a1, int a2, char a3)
{
  if (*v3 == 1)
  {
    v5 = v3;
    v9 = *(v3 + 3);
    v10 = *(v3 + 14);
    if (prepareTrace)
    {
      v11 = *(v3 + 14);
    }

    else
    {
      v11 = *(v3 + 14);
      if ((a3 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v12 = mach_continuous_time();
        }

        else
        {
          v12 = mach_absolute_time();
        }

        v11 = v12;
      }
    }

    v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v4 = *(v3 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v3 = &v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(12, 1u, v4, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v36;
    }

    v15 = v11 - v10;
    if (*(v9 + 49))
    {
      if (v11 >= v10)
      {
        v3 = *(v5 + 7);
        if ((a3 & 1) == 0 || !v15)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v13 = v16;
          LOBYTE(v4) = v17;
          LODWORD(v9) = (v17 << 12) | 0xC;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v18 = readingDebugLog;
            v19 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v18, v19))
            {
              v35 = v13;
              v20 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v41 = v34;
              *v20 = 134218498;
              *(v20 + 4) = v3;
              *(v20 + 12) = 2080;
              v36 = xmmword_26C32DAD0;
              v37 = 1;
              v38 = 0;
              v39 = 0;
              v40 = 512;
              v21 = T_TracepointID.describe(state:)(&v36, v9);
              v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

              *(v20 + 14) = v23;
              *(v20 + 22) = 1024;
              *(v20 + 24) = 0;
              _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v34);
              MEMORY[0x26D69EAB0](v34, -1, -1);
              v24 = v20;
              v13 = v35;
              MEMORY[0x26D69EAB0](v24, -1, -1);
            }

LABEL_19:
            v25 = *(v5 + 4);
            if (*(v25 + 56))
            {
              if (*(v25 + 52) == 2)
              {
LABEL_32:
                v32 = CircularBuffer.Transaction.begin()() + 4;
                v27 = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
                if (BYTE4(v28) != 2)
                {
                  *(*(v25 + 32) + v27) = v9;
                  *(v25 + 48) = v27 + 4;
                  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
                  *(v5 + 14) = v11;
                  specialized Trace_Handle.write<A>(struct:)(a1, a2, type metadata accessor for T_BeginSubgraphUpdate);
                  ++*(v5 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v26 = *(v25 + 32);
              LODWORD(v27) = *(v25 + 48);
              v28 = v27 | (*(v25 + 52) << 32);
              if (v26)
              {
                v29 = *(v25 + 40) - v26;
                v30 = v29 < v27;
                v31 = v29 - v27;
                if (!v30)
                {
                  if (v31 >= 29)
                  {
                    v32 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v25 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 201326592;
      }

      else
      {
        v33 = v15 | 0xC000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v3 == 1)
  {
    v5 = v3;
    v9 = *(v3 + 3);
    v10 = *(v3 + 14);
    if (prepareTrace)
    {
      v11 = *(v3 + 14);
    }

    else
    {
      v11 = *(v3 + 14);
      if ((a3 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v12 = mach_continuous_time();
        }

        else
        {
          v12 = mach_absolute_time();
        }

        v11 = v12;
      }
    }

    v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v4 = *(v3 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v3 = &v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(21, 1u, v4, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v36;
    }

    v15 = v11 - v10;
    if (*(v9 + 49) == 1)
    {
      if (v11 >= v10)
      {
        v3 = *(v5 + 7);
        if ((a3 & 1) == 0 || !v15)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v13 = v16;
          LOBYTE(v4) = v17;
          LODWORD(v9) = (v17 << 12) | 0x15;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v18 = readingDebugLog;
            v19 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v18, v19))
            {
              v35 = v13;
              v20 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v41 = v34;
              *v20 = 134218498;
              *(v20 + 4) = v3;
              *(v20 + 12) = 2080;
              v36 = xmmword_26C32DAD0;
              v37 = 1;
              v38 = 0;
              v39 = 0;
              v40 = 512;
              v21 = T_TracepointID.describe(state:)(&v36, v9);
              v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

              *(v20 + 14) = v23;
              *(v20 + 22) = 1024;
              *(v20 + 24) = 0;
              _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v34);
              MEMORY[0x26D69EAB0](v34, -1, -1);
              v24 = v20;
              v13 = v35;
              MEMORY[0x26D69EAB0](v24, -1, -1);
            }

LABEL_19:
            v25 = *(v5 + 4);
            if (*(v25 + 56))
            {
              if (*(v25 + 52) == 2)
              {
LABEL_32:
                v32 = CircularBuffer.Transaction.begin()() + 4;
                v27 = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
                if (BYTE4(v28) != 2)
                {
                  *(*(v25 + 32) + v27) = v9;
                  *(v25 + 48) = v27 + 4;
                  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
                  *(v5 + 14) = v11;
                  specialized Trace_Handle.write<A>(struct:)(a1, a2, type metadata accessor for T_BeginGraphInvalidation);
                  ++*(v5 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v26 = *(v25 + 32);
              LODWORD(v27) = *(v25 + 48);
              v28 = v27 | (*(v25 + 52) << 32);
              if (v26)
              {
                v29 = *(v25 + 40) - v26;
                v30 = v29 < v27;
                v31 = v29 - v27;
                if (!v30)
                {
                  if (v31 >= 29)
                  {
                    v32 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v25 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 352321536;
      }

      else
      {
        v33 = v15 | 0x15000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v3 == 1)
  {
    v5 = v3;
    v9 = *(v3 + 3);
    v10 = *(v3 + 14);
    if (prepareTrace)
    {
      v11 = *(v3 + 14);
    }

    else
    {
      v11 = *(v3 + 14);
      if ((a3 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v12 = mach_continuous_time();
        }

        else
        {
          v12 = mach_absolute_time();
        }

        v11 = v12;
      }
    }

    v13 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v4 = *(v3 + 7);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v36 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      v3 = &v36;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(22, 1u, v4, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v36;
    }

    v15 = v11 - v10;
    if (*(v9 + 49) == 1)
    {
      if (v11 >= v10)
      {
        v3 = *(v5 + 7);
        if ((a3 & 1) == 0 || !v15)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v13 = v16;
          LOBYTE(v4) = v17;
          LODWORD(v9) = (v17 << 12) | 0x16;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v18 = readingDebugLog;
            v19 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v18, v19))
            {
              v35 = v13;
              v20 = swift_slowAlloc();
              v34 = swift_slowAlloc();
              v41 = v34;
              *v20 = 134218498;
              *(v20 + 4) = v3;
              *(v20 + 12) = 2080;
              v36 = xmmword_26C32DAD0;
              v37 = 1;
              v38 = 0;
              v39 = 0;
              v40 = 512;
              v21 = T_TracepointID.describe(state:)(&v36, v9);
              v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, &v41);

              *(v20 + 14) = v23;
              *(v20 + 22) = 1024;
              *(v20 + 24) = 0;
              _os_log_impl(&dword_26C161000, v18, v19, "w %ld: %s, back: %u", v20, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v34);
              MEMORY[0x26D69EAB0](v34, -1, -1);
              v24 = v20;
              v13 = v35;
              MEMORY[0x26D69EAB0](v24, -1, -1);
            }

LABEL_19:
            v25 = *(v5 + 4);
            if (*(v25 + 56))
            {
              if (*(v25 + 52) == 2)
              {
LABEL_32:
                v32 = CircularBuffer.Transaction.begin()() + 4;
                v27 = *(v25 + 48);
                v28 = v27 | (*(v25 + 52) << 32);
LABEL_33:
                if (BYTE4(v28) != 2)
                {
                  *(*(v25 + 32) + v27) = v9;
                  *(v25 + 48) = v27 + 4;
                  *(v5 + 15) += CircularBuffer.Transaction.write(size:)(v13, v4) + v32;
LABEL_35:
                  *(v5 + 14) = v11;
                  specialized Trace_Handle.write<A>(struct:)(a1, a2, type metadata accessor for T_EndGraphInvalidation);
                  ++*(v5 + 7);
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v26 = *(v25 + 32);
              LODWORD(v27) = *(v25 + 48);
              v28 = v27 | (*(v25 + 52) << 32);
              if (v26)
              {
                v29 = *(v25 + 40) - v26;
                v30 = v29 < v27;
                v31 = v29 - v27;
                if (!v30)
                {
                  if (v31 >= 29)
                  {
                    v32 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v25 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v11 >= v10)
    {
      if (v15 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v11, type metadata accessor for T_TimeSync);
        v33 = 369098752;
      }

      else
      {
        v33 = v15 | 0x16000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v33, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

void specialized Trace_Handle.write<A>(_:omit:)(uint64_t a1, char a2)
{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(14, 1u, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0xE;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_EndSubgraphUpdate);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 25)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 234881024;
      }

      else
      {
        v32 = v14 | 0xE000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(15, 1u, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0xF;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_BeginNodeUpdate);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 21)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 251658240;
      }

      else
      {
        v32 = v14 | 0xF000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(17, 1u, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x11;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_BeginValueUpdate);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 21)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 285212672;
      }

      else
      {
        v32 = v14 | 0x11000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(18, 1u, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x12;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(a1 & 0xFFFFFFFFFFLL, type metadata accessor for T_EndValueUpdate);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 22)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 301989888;
      }

      else
      {
        v32 = v14 | 0x12000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(19, 1u, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x13;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_BeginGraphUpdate);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 25)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 318767104;
      }

      else
      {
        v32 = v14 | 0x13000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  v50[1] = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    goto LABEL_56;
  }

  v7 = v2;
  v10 = *(v2 + 112);
  if (*(*(v2 + 24) + 49) == 1 && (a2 & 4) == 0)
  {
    v45[0] = -1;
    pthread_threadid_np(0, v45);
    v12 = v45[0];
    if (v45[0] == -1)
    {
      __break(1u);
      goto LABEL_58;
    }

    if ((*(v2 + 72) & 1) != 0 || v45[0] != *(v2 + 64))
    {
      *(v2 + 64) = v45[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v12);
    }
  }

  if (!prepareTrace && (a2 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v13 = mach_continuous_time();
    }

    else
    {
      v13 = mach_absolute_time();
    }

    v10 = v13;
  }

  if (*(*(v2 + 24) + 49) == 1 && (a2 & 2) == 0)
  {
    v6 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v6 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v3 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(23, 1u, v3, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v45[0];
  }

  v16 = *(v2 + 112);
  v17 = v10 - v16;
  v18 = v10 < v16;
  if (*(*(v2 + 24) + 49) != 1)
  {
    if (v18)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v17 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
      v37 = 385875968;
    }

    else
    {
      v37 = v17 | 0x17000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v37, type metadata accessor for T_TracepointIDV0);
LABEL_55:
    v7[14] = v10;
    specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_BeginModifyNode);
    ++v7[7];
LABEL_56:
    v41 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v3 = *(v2 + 56);
  if ((a2 & 1) != 0 && v17)
  {
    goto LABEL_61;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v44 = v20;
  LOBYTE(v4) = v19;
  if ((a2 & 2) != 0)
  {
    v21 = 23;
  }

  else
  {
    v21 = 2071;
  }

  v5 = v21 & 0xFFF00FFF | (v19 << 12);
  if (!readingDebug)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v22 = readingDebugLog;
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v43 = v6;
      v24 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v50[0] = v42;
      *v24 = 134218498;
      *(v24 + 4) = v3;
      *(v24 + 12) = 2080;
      *v45 = xmmword_26C32DAD0;
      v46 = 1;
      v47 = 0;
      v48 = 0;
      v49 = 512;
      v25 = T_TracepointID.describe(state:)(v45, v5);
      v3 = v26;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v50);

      *(v24 + 14) = v27;
      *(v24 + 22) = 1024;
      *(v24 + 24) = v43;
      _os_log_impl(&dword_26C161000, v22, v23, "w %ld: %s, back: %u", v24, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x26D69EAB0](v42, -1, -1);
      v28 = v24;
      v6 = v43;
      MEMORY[0x26D69EAB0](v28, -1, -1);
    }

LABEL_36:
    v29 = v7[4];
    if (!*(v29 + 56))
    {
      break;
    }

    if (*(v29 + 52) == 2)
    {
      goto LABEL_49;
    }

    v30 = *(v29 + 32);
    LODWORD(v31) = *(v29 + 48);
    v32 = v31 | (*(v29 + 52) << 32);
    if (!v30)
    {
      if (*(v29 + 48))
      {
        goto LABEL_64;
      }

LABEL_48:
      CircularBuffer.Transaction.commit()();
LABEL_49:
      v36 = CircularBuffer.Transaction.begin()() + 4;
      v31 = *(v29 + 48);
      v32 = v31 | (*(v29 + 52) << 32);
      goto LABEL_50;
    }

    v33 = *(v29 + 40) - v30;
    v34 = v33 < v31;
    v35 = v33 - v31;
    if (v34)
    {
      __break(1u);
LABEL_64:
      __break(1u);
    }

    if (v35 < 21)
    {
      goto LABEL_48;
    }

    v36 = 4;
LABEL_50:
    if (BYTE4(v32) == 2)
    {
      goto LABEL_66;
    }

    *(*(v29 + 32) + v31) = v5;
    *(v29 + 48) = v31 + 4;
    v38 = CircularBuffer.Transaction.write(size:)(v44, v4) + v36;
    if (!v6)
    {
      goto LABEL_54;
    }

    if (*(v29 + 52) == 2)
    {
      goto LABEL_67;
    }

    v39 = *(v29 + 48);
    *(*(v29 + 32) + v39) = v6;
    *(v29 + 48) = v39 + 4;
    v40 = __OFADD__(v38, 4);
    v38 += 4;
    if (!v40)
    {
LABEL_54:
      v7[15] += v38;
      goto LABEL_55;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(24, 1u, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49) == 1)
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x18;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_EndModifyNode);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 21)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 402653184;
      }

      else
      {
        v32 = v14 | 0x18000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(45, 1u, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x2D;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_ProfileMark);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 21)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 754974720;
      }

      else
      {
        v32 = v14 | 0x2D000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(16, 1u, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49))
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x10;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(a1 & 0xFFFFFFFFFFFFLL);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 23)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 0x10000000;
      }

      else
      {
        v32 = v14 | 0x10000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  if (*v2 == 1)
  {
    v5 = v2;
    v8 = v2[3];
    v9 = v2[14];
    if (prepareTrace)
    {
      v10 = v2[14];
    }

    else
    {
      v10 = v2[14];
      if ((a2 & 1) == 0)
      {
        if (kdebug_using_continuous_time())
        {
          v11 = mach_continuous_time();
        }

        else
        {
          v11 = mach_absolute_time();
        }

        v10 = v11;
      }
    }

    v12 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
    if (tracepointAssertion.value._rawValue)
    {
      v3 = v2[7];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v35 = tracepointAssertion.value._rawValue;
      tracepointAssertion.value._rawValue = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(31, 1u, v3, isUniquelyReferenced_nonNull_native);
      tracepointAssertion.value._rawValue = v35;
    }

    v14 = v10 - v9;
    if (*(v8 + 49) == 1)
    {
      if (v10 >= v9)
      {
        v4 = v2[7];
        if ((a2 & 1) == 0 || !v14)
        {
          specialized T_TracepointID.Size.init(raw:)();
          v12 = v15;
          LOBYTE(v3) = v16;
          LODWORD(v8) = (v16 << 12) | 0x1F;
          if (!readingDebug)
          {
            goto LABEL_19;
          }

          if (one-time initialization token for readingDebugLog == -1)
          {
LABEL_17:
            v17 = readingDebugLog;
            v18 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v34 = v12;
              v19 = swift_slowAlloc();
              v33 = swift_slowAlloc();
              v40 = v33;
              *v19 = 134218498;
              *(v19 + 4) = v4;
              *(v19 + 12) = 2080;
              v35 = xmmword_26C32DAD0;
              v36 = 1;
              v37 = 0;
              v38 = 0;
              v39 = 512;
              v20 = T_TracepointID.describe(state:)(&v35, v8);
              v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v40);

              *(v19 + 14) = v22;
              *(v19 + 22) = 1024;
              *(v19 + 24) = 0;
              _os_log_impl(&dword_26C161000, v17, v18, "w %ld: %s, back: %u", v19, 0x1Cu);
              __swift_destroy_boxed_opaque_existential_1(v33);
              MEMORY[0x26D69EAB0](v33, -1, -1);
              v23 = v19;
              v12 = v34;
              MEMORY[0x26D69EAB0](v23, -1, -1);
            }

LABEL_19:
            v24 = v5[4];
            if (*(v24 + 56))
            {
              if (*(v24 + 52) == 2)
              {
LABEL_32:
                v31 = CircularBuffer.Transaction.begin()() + 4;
                v26 = *(v24 + 48);
                v27 = v26 | (*(v24 + 52) << 32);
LABEL_33:
                if (BYTE4(v27) != 2)
                {
                  *(*(v24 + 32) + v26) = v8;
                  *(v24 + 48) = v26 + 4;
                  v5[15] += CircularBuffer.Transaction.write(size:)(v12, v3) + v31;
LABEL_35:
                  v5[14] = v10;
                  specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_SubgraphDestroy);
                  ++v5[7];
                  return;
                }

LABEL_44:
                __break(1u);
                return;
              }

              v25 = *(v24 + 32);
              LODWORD(v26) = *(v24 + 48);
              v27 = v26 | (*(v24 + 52) << 32);
              if (v25)
              {
                v28 = *(v24 + 40) - v25;
                v29 = v28 < v26;
                v30 = v28 - v26;
                if (!v29)
                {
                  if (v30 >= 25)
                  {
                    v31 = 4;
                    goto LABEL_33;
                  }

                  goto LABEL_31;
                }

                __break(1u);
              }

              else if (!*(v24 + 48))
              {
LABEL_31:
                CircularBuffer.Transaction.commit()();
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
            goto LABEL_44;
          }

LABEL_40:
          swift_once();
          goto LABEL_17;
        }

LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      __break(1u);
    }

    else if (v10 >= v9)
    {
      if (v14 >> 22)
      {
        specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
        specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
        v32 = 520093696;
      }

      else
      {
        v32 = v14 | 0x1F000000;
      }

      specialized Trace_Handle.write<A>(struct:)(v32, type metadata accessor for T_TracepointIDV0);
      goto LABEL_35;
    }

    __break(1u);
    goto LABEL_39;
  }
}

{
  v50[1] = *MEMORY[0x277D85DE8];
  if (*v2 != 1)
  {
    goto LABEL_56;
  }

  v7 = v2;
  v10 = *(v2 + 112);
  if (*(*(v2 + 24) + 49) == 1 && (a2 & 4) == 0)
  {
    v45[0] = -1;
    pthread_threadid_np(0, v45);
    v12 = v45[0];
    if (v45[0] == -1)
    {
      __break(1u);
      goto LABEL_58;
    }

    if ((*(v2 + 72) & 1) != 0 || v45[0] != *(v2 + 64))
    {
      *(v2 + 64) = v45[0];
      *(v2 + 72) = 0;
      specialized Trace_Handle.write<A>(_:omit:)(v12);
    }
  }

  if (!prepareTrace && (a2 & 1) == 0)
  {
    if (kdebug_using_continuous_time())
    {
      v13 = mach_continuous_time();
    }

    else
    {
      v13 = mach_absolute_time();
    }

    v10 = v13;
  }

  if (*(*(v2 + 24) + 49) == 1 && (a2 & 2) == 0)
  {
    v6 = specialized Trace_Handle.writtenBacktrace()();
  }

  else
  {
    v6 = 0;
  }

  v4 = &lazy protocol witness table cache variable for type NSFileAttributeKey and conformance NSFileAttributeKey;
  if (tracepointAssertion.value._rawValue)
  {
    v3 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45[0] = tracepointAssertion.value._rawValue;
    tracepointAssertion.value._rawValue = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(40, 1u, v3, isUniquelyReferenced_nonNull_native);
    tracepointAssertion.value._rawValue = v45[0];
  }

  v16 = *(v2 + 112);
  v17 = v10 - v16;
  v18 = v10 < v16;
  if (*(*(v2 + 24) + 49) != 1)
  {
    if (v18)
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    if (v17 >> 22)
    {
      specialized Trace_Handle.write<A>(struct:)(0x2000000, type metadata accessor for T_TracepointIDV0);
      specialized Trace_Handle.write<A>(struct:)(v10, type metadata accessor for T_TimeSync);
      v37 = 671088640;
    }

    else
    {
      v37 = v17 | 0x28000000;
    }

    specialized Trace_Handle.write<A>(struct:)(v37, type metadata accessor for T_TracepointIDV0);
LABEL_55:
    v7[14] = v10;
    specialized Trace_Handle.write<A>(struct:)(a1, type metadata accessor for T_NodeSetValue);
    ++v7[7];
LABEL_56:
    v41 = *MEMORY[0x277D85DE8];
    return;
  }

  if (v18)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v3 = *(v2 + 56);
  if ((a2 & 1) != 0 && v17)
  {
    goto LABEL_61;
  }

  specialized T_TracepointID.Size.init(raw:)();
  v44 = v20;
  LOBYTE(v4) = v19;
  if ((a2 & 2) != 0)
  {
    v21 = 40;
  }

  else
  {
    v21 = 2088;
  }

  v5 = v21 & 0xFFF00FFF | (v19 << 12);
  if (!readingDebug)
  {
    goto LABEL_36;
  }

  if (one-time initialization token for readingDebugLog != -1)
  {
    goto LABEL_62;
  }

  while (1)
  {
    v22 = readingDebugLog;
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v43 = v6;
      v24 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v50[0] = v42;
      *v24 = 134218498;
      *(v24 + 4) = v3;
      *(v24 + 12) = 2080;
      *v45 = xmmword_26C32DAD0;
      v46 = 1;
      v47 = 0;
      v48 = 0;
      v49 = 512;
      v25 = T_TracepointID.describe(state:)(v45, v5);
      v3 = v26;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v50);

      *(v24 + 14) = v27;
      *(v24 + 22) = 1024;
      *(v24 + 24) = v43;
      _os_log_impl(&dword_26C161000, v22, v23, "w %ld: %s, back: %u", v24, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x26D69EAB0](v42, -1, -1);
      v28 = v24;
      v6 = v43;
      MEMORY[0x26D69EAB0](v28, -1, -1);
    }

LABEL_36:
    v29 = v7[4];
    if (!*(v29 + 56))
    {
      break;
    }

    if (*(v29 + 52) == 2)
    {
      goto LABEL_49;
    }

    v30 = *(v29 + 32);
    LODWORD(v31) = *(v29 + 48);
    v32 = v31 | (*(v29 + 52) << 32);
    if (!v30)
    {
      if (*(v29 + 48))
      {
        goto LABEL_64;
      }

LABEL_48:
      CircularBuffer.Transaction.commit()();
LABEL_49:
      v36 = CircularBuffer.Transaction.begin()() + 4;
      v31 = *(v29 + 48);
      v32 = v31 | (*(v29 + 52) << 32);
      goto LABEL_50;
    }

    v33 = *(v29 + 40) - v30;
    v34 = v33 < v31;
    v35 = v33 - v31;
    if (v34)
    {
      __break(1u);
LABEL_64:
      __break(1u);
    }

    if (v35 < 21)
    {
      goto LABEL_48;
    }

    v36 = 4;
LABEL_50:
    if (BYTE4(v32) == 2)
    {
      goto LABEL_66;
    }

    *(*(v29 + 32) + v31) = v5;
    *(v29 + 48) = v31 + 4;
    v38 = CircularBuffer.Transaction.write(size:)(v44, v4) + v36;
    if (!v6)
    {
      goto LABEL_54;
    }

    if (*(v29 + 52) == 2)
    {
      goto LABEL_67;
    }

    v39 = *(v29 + 48);
    *(*(v29 + 32) + v39) = v6;
    *(v29 + 48) = v39 + 4;
    v40 = __OFADD__(v38, 4);
    v38 += 4;
    if (!v40)
    {
LABEL_54:
      v7[15] += v38;
      goto LABEL_55;
    }

LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    swift_once();
  }

  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
}