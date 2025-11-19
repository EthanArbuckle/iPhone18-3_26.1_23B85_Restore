uint64_t closure #1 in PegasusInstrumentationUtil.logThirdPartyMapsAppSelectionResult(requestId:pommesId:pommesCandidateId:request:response:delegatedUDA:)@<X0>(uint64_t *a1@<X8>)
{
  v97 = a1;
  v1 = type metadata accessor for BinaryDecodingOptions();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8, v3);
  v88 = &v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Google_Protobuf_Any();
  v86 = *(v87 - 8);
  v5 = *(v86 + 64);
  MEMORY[0x28223BE20](v87, v6);
  v85 = &v81 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVSgMd, &_s10PegasusAPI33Apple_Parsec_Siri_V2alpha_AppInfoVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v90 = &v81 - v11;
  v91 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppInfo();
  v89 = *(v91 - 8);
  v12 = *(v89 + 64);
  MEMORY[0x28223BE20](v91, v13);
  v82 = &v81 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v92 = *(v100 - 8);
  v15 = *(v92 + 64);
  v17 = MEMORY[0x28223BE20](v100, v16);
  v99 = &v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v19);
  v98 = &v81 - v20;
  v95 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v101 = *(v95 - 8);
  v21 = *(v101 + 64);
  v23 = MEMORY[0x28223BE20](v95, v22);
  v94 = &v81 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v83 = &v81 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v84 = &v81 - v29;
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  v34 = MEMORY[0x28223BE20](v30, v33);
  v108 = &v81 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34, v36);
  v107 = &v81 - v37;
  v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v109 = *(v38 - 8);
  v39 = *(v109 + 64);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = &v81 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v41, v44);
  v93 = &v81 - v46;
  MEMORY[0x28223BE20](v45, v47);
  v96 = &v81 - v48;
  result = Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.profileSlices.getter();
  v106 = *(result + 16);
  if (v106)
  {
    v50 = 0;
    v105 = (v109 + 16);
    LODWORD(v104) = *MEMORY[0x277D39708];
    v51 = (v31 + 8);
    v102 = (v109 + 8);
    v103 = (v31 + 104);
    while (1)
    {
      if (v50 >= *(result + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      v52 = result;
      (*(v109 + 16))(v43, result + ((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v50, v38);
      v53 = v107;
      Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
      v54 = v108;
      (*v103)(v108, v104, v30);
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v55 = *v51;
      (*v51)(v54, v30);
      v55(v53, v30);
      if (v110 == v113)
      {
        break;
      }

      ++v50;
      (*v102)(v43, v38);
      result = v52;
      if (v106 == v50)
      {
        goto LABEL_6;
      }
    }

    v56 = *(v109 + 32);
    v57 = v93;
    v56(v93, v43, v38);
    v104 = v38;
    v56(v96, v57, v38);
    result = Apple_Parsec_Siri_V2alpha_ProfileSlice.values.getter();
    v58 = result;
    v59 = v95;
    v60 = v94;
    v109 = *(result + 16);
    if (!v109)
    {
LABEL_12:
      (*v102)(v96, v104);

      goto LABEL_14;
    }

    v61 = 0;
    v62 = v100;
    v107 = (v101 + 16);
    LODWORD(v106) = *MEMORY[0x277D39AE8];
    v105 = (v92 + 104);
    v63 = (v92 + 8);
    v108 = (v101 + 8);
    while (v61 < *(v58 + 16))
    {
      v64 = v58;
      (*(v101 + 16))(v60, v58 + ((*(v101 + 80) + 32) & ~*(v101 + 80)) + *(v101 + 72) * v61, v59);
      v65 = v98;
      Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
      v66 = v99;
      (*v105)(v99, v106, v62);
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel, MEMORY[0x277D39AF8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v67 = *v63;
      (*v63)(v66, v62);
      v67(v65, v62);
      if (v110 == v113)
      {

        v68 = *(v101 + 32);
        v69 = v83;
        v68(v83, v60, v59);
        v70 = v84;
        v68(v84, v69, v59);
        v71 = v85;
        Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.getter();
        Google_Protobuf_Any.value.getter();
        (*(v86 + 8))(v71, v87);
        v112 = 0;
        v110 = 0u;
        v111 = 0u;
        BinaryDecodingOptions.init()();
        _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AppInfo and conformance Apple_Parsec_Siri_V2alpha_AppInfo, MEMORY[0x277D39018]);
        v72 = v90;
        v73 = v91;
        Message.init(serializedData:extensions:partial:options:)();
        v75 = v89;
        (*(v89 + 56))(v72, 0, 1, v73);
        v76 = v82;
        (*(v75 + 32))(v82, v72, v73);
        v77 = Apple_Parsec_Siri_V2alpha_AppInfo.bundleID.getter();
        v79 = v78;
        (*(v75 + 8))(v76, v73);
        (*v108)(v70, v59);
        result = (*v102)(v96, v104);
        v80 = v97;
        *v97 = v77;
        v80[1] = v79;
        return result;
      }

      ++v61;
      result = (*v108)(v60, v59);
      v58 = v64;
      if (v109 == v61)
      {
        goto LABEL_12;
      }
    }

LABEL_17:
    __break(1u);
  }

  else
  {
LABEL_6:

LABEL_14:
    v74 = v97;
    *v97 = 0;
    v74[1] = 0;
  }

  return result;
}

void PegasusInstrumentationUtil.logPegasusKitPegasusRequest(requestId:pommesId:pommesCandidateId:startNetworkSearchFeedback:onDeviceLabels:)(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v47 = a5;
  v48 = a6;
  v49 = a1;
  v50 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v12 = &v44 - v11;
  v13 = type metadata accessor for BinaryDecodingOptions();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8, v15);
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = [objc_allocWithZone(MEMORY[0x277D59FE8]) init];
  if (v22)
  {
    v23 = v22;
    v24 = [objc_allocWithZone(MEMORY[0x277D59FF0]) init];
    if (v24)
    {
      v25 = v24;
      v45 = v6;
      v46 = a3;
      Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.bodyData.getter();
      v53 = 0;
      v51 = 0u;
      v52 = 0u;
      BinaryDecodingOptions.init()();
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusRequest and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusRequest, MEMORY[0x277D38D70]);
      Message.init(serializedData:extensions:partial:options:)();
      (*(v17 + 16))(v12, v21, v16);
      (*(v17 + 56))(v12, 0, 1, v16);
      v35 = specialized static PegasusInstrumentationUtil.requestArguments(from:onDeviceLabels:)(v12, v47, v48);
      outlined destroy of MediaUserStateCenter?(v12, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMR);
      [v23 setPegasusRequestArguments_];

      (*(v17 + 8))(v21, v16);
      v36 = v46;
      while (1)
      {
        started = Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.rawRequestSize.getter();
        if (started >> 42)
        {
          __break(1u);
        }

        else
        {
          [v23 setRawRequestSizeInKB_];
          v38 = Apple_Parsec_Feedback_V2_StartNetworkSearchFeedback.compressedRequestSize.getter();
          if (!(v38 >> 42))
          {
            [v23 setCompressedRequestSizeInKB_];
            [v25 setStartedOrChanged_];
            v39 = specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(v49, v50, v36);
            if (v39)
            {
              v40 = v39;
              [v39 setPegasusKitRequestContext_];
              v41 = [objc_opt_self() processInfo];
              v42 = NSProcessInfo.isRunningUnitTests.getter();

              if (v42)
              {
                v43 = (*(*v45 + 96))();
              }

              else
              {
                v43 = [objc_opt_self() sharedStream];
              }

              [v43 emitMessage_];
              swift_unknownObjectRelease();
            }

            return;
          }
        }

        __break(1u);
        swift_once();
        v26 = type metadata accessor for Logger();
        __swift_project_value_buffer(v26, static Logger.pommes);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        v29 = os_log_type_enabled(v27, v28);
        v36 = v46;
        if (v29)
        {
          v30 = swift_slowAlloc();
          *v30 = 0;
          _os_log_impl(&dword_2232BB000, v27, v28, "Unable to initialize pegasus request with serialized data", v30, 2u);
          MEMORY[0x223DE0F80](v30, -1, -1);
        }
      }
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  __swift_project_value_buffer(v31, static Logger.pommes);
  v50 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_2232BB000, v50, v32, "Failed to initialize POMMESSchemaPOMMESPegasusKitPegasusRequest or POMMESSchemaPOMMESPegasusKitPegasusRequestContext", v33, 2u);
    MEMORY[0x223DE0F80](v33, -1, -1);
  }

  v34 = v50;
}

void PegasusInstrumentationUtil.logPegasusKitPegasusResponse(requestId:pommesId:pommesCandidateId:endNetworkSearchFeedback:)(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = type metadata accessor for Apple_Parsec_Feedback_V2_NetworkTimingData();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x277D59FF8]) init];
  if (v13)
  {
    v14 = v13;
    v37 = a3;
    v15 = [objc_allocWithZone(MEMORY[0x277D59FE0]) init];
    if (v15)
    {
      v16 = v15;
      v36 = [objc_allocWithZone(MEMORY[0x277D59FF0]) init];
      if (v36)
      {
        v35 = v3;
        Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.getter();
        v17 = Apple_Parsec_Feedback_V2_NetworkTimingData.requestStart.getter();
        v18 = *(v8 + 8);
        v18(v12, v7);
        [v16 setRequestStartOffsetInMS_];
        Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.getter();
        v19 = Apple_Parsec_Feedback_V2_NetworkTimingData.requestEnd.getter();
        v18(v12, v7);
        [v16 setRequestEndOffsetInMS_];
        Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.getter();
        v20 = Apple_Parsec_Feedback_V2_NetworkTimingData.responseStart.getter();
        v18(v12, v7);
        [v16 setResponseStartOffsetInMS_];
        Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.timingData.getter();
        v21 = Apple_Parsec_Feedback_V2_NetworkTimingData.responseEnd.getter();
        v18(v12, v7);
        [v16 setResponseEndOffsetInMS_];
        [v14 setTimingData_];
        v22 = Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.decompressedResponseSize.getter();
        if (v22 >> 42)
        {
          __break(1u);
        }

        else
        {
          [v14 setRawResponseSizeInKB_];
          v23 = Apple_Parsec_Feedback_V2_EndNetworkSearchFeedback.rawResponseSize.getter();
          if (!(v23 >> 42))
          {
            [v14 setCompressedResponseSizeInKB_];
            v24 = v36;
            [v36 setEnded_];
            v25 = specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(a1, a2, v37);
            if (v25)
            {
              v26 = v25;
              [v25 setPegasusKitRequestContext_];
              v27 = [objc_opt_self() processInfo];
              v28 = NSProcessInfo.isRunningUnitTests.getter();

              if (v28)
              {
                v29 = (*(*v35 + 96))();
              }

              else
              {
                v29 = [objc_opt_self() sharedStream];
              }

              [v29 emitMessage_];
              swift_unknownObjectRelease();
            }

            return;
          }
        }

        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v14;
    }
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v30 = type metadata accessor for Logger();
  __swift_project_value_buffer(v30, static Logger.pommes);
  v37 = Logger.logObject.getter();
  v31 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_2232BB000, v37, v31, "Failed to initialize POMMESSchemaPOMMESPegasusKitPegasusResponse and POMMESSchemaPOMMESPegasusKitNetworkTimingData and POMMESSchemaPOMMESPegasusKitPegasusRequestContext", v32, 2u);
    MEMORY[0x223DE0F80](v32, -1, -1);
  }

  v33 = v37;
}

void closure #1 in static PegasusInstrumentationUtil.extractQueries(from:onDeviceLabels:)(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v64 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v7 = *(v64 - 8);
  v8 = *(v7 + 64);
  v10 = MEMORY[0x28223BE20](v64, v9);
  v66 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v65 = &v51 - v13;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v68 = *(v14 - 8);
  v69 = v14;
  v15 = *(v68 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v63 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = [objc_allocWithZone(MEMORY[0x277D5A050]) init];
  v19 = v18;
  if (v18)
  {
    v58 = v7;
    v54 = a3;
    v55 = v3;
    v20 = v18;
    v56 = a1;
    v21 = *(Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.rewrittenUtterances.getter() + 16);

    [v20 setHasRewrittenUtterances_];

    v71 = MEMORY[0x277D84F90];
    v22 = *(a2 + 16);
    v67 = v20;
    if (v22)
    {
      v23 = 0;
      v24 = a2 + 40;
      v62 = a2 + 40;
      while (2)
      {
        v25 = (v24 + 16 * v23);
        v26 = v23;
        while (1)
        {
          if (v26 >= v22)
          {
            __break(1u);
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
            return;
          }

          v23 = v26 + 1;
          if (__OFADD__(v26, 1))
          {
            goto LABEL_20;
          }

          v28 = *(v25 - 1);
          v27 = *v25;
          v29 = objc_allocWithZone(MEMORY[0x277D5A060]);

          v30 = [v29 &selRef_statusType];
          if (v30)
          {
            break;
          }

          ++v26;
          v25 += 2;
          if (v23 == v22)
          {
            goto LABEL_13;
          }
        }

        v31 = v30;
        v32 = MEMORY[0x223DDF550](v28, v27);
        [v31 setLabel_];

        MEMORY[0x223DDF820](v33);
        if (*((v71 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v24 = v62;
        if (v23 != v22)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
    v53 = v19;
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for POMMESSchemaPOMMESPegasusSearchQueryUserSpan, 0x277D5A060);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v36 = v67;
    [v67 setUserSpans_];

    v52 = v36;
    v37 = Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.profileSlices.getter();
    v38 = 0;
    v67 = *(v37 + 16);
    v61 = v68 + 16;
    v60 = *MEMORY[0x277D396F0];
    v39 = v58++;
    v59 = (v39 + 13);
    v57 = v68 + 8;
    v62 = v37;
    do
    {
      v40 = v38;
      if (v67 == v38)
      {
        break;
      }

      if (v38 >= *(v37 + 16))
      {
        goto LABEL_21;
      }

      v41 = v68;
      v42 = v63;
      (*(v68 + 16))(v63, v37 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v38++, v69);
      v43 = v65;
      Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
      v44 = v66;
      v45 = v64;
      (*v59)(v66, v60, v64);
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v46 = *v58;
      (*v58)(v44, v45);
      v46(v43, v45);
      (*(v41 + 8))(v42, v69);
      v37 = v62;
    }

    while (v71 != v70);
    v47 = v67 != v40;

    v48 = v52;
    [v52 setHasAudioQueueStateInfo_];

    v49 = v48;
    v50 = closure #3 in closure #1 in static PegasusInstrumentationUtil.extractQueries(from:onDeviceLabels:)(v56);
    [v49 setAmpUserState_];

    a3 = v54;
    v19 = v53;
  }

  *a3 = v19;
}

char *closure #3 in closure #1 in static PegasusInstrumentationUtil.extractQueries(from:onDeviceLabels:)(uint64_t a1)
{
  v188 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  v187 = *(v188 - 8);
  v2 = *(v187 + 64);
  v4 = MEMORY[0x28223BE20](v188, v3);
  v184 = &v160 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v161 = &v160 - v7;
  matched = type metadata accessor for Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus();
  v168 = *(matched - 8);
  v8 = *(v168 + 64);
  v10 = MEMORY[0x28223BE20](matched, v9);
  v167 = &v160 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v166 = &v160 - v13;
  v165 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus();
  v164 = *(v165 - 8);
  v14 = *(v164 + 64);
  v16 = MEMORY[0x28223BE20](v165, v15);
  v163 = &v160 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v162 = &v160 - v19;
  v20 = type metadata accessor for BinaryDecodingOptions();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8, v22);
  v175 = &v160 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for Google_Protobuf_Any();
  v173 = *(v174 - 8);
  v24 = *(v173 + 64);
  MEMORY[0x28223BE20](v174, v25);
  v172 = &v160 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_V2alpha_AmpUserStateVSgMR);
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27 - 8, v29);
  v176 = &v160 - v30;
  v179 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AmpUserState();
  v178 = *(v179 - 8);
  v31 = *(v178 + 64);
  MEMORY[0x28223BE20](v179, v32);
  v170 = &v160 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v191 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel();
  v180 = *(v191 - 8);
  v34 = *(v180 + 64);
  v36 = MEMORY[0x28223BE20](v191, v35);
  v190 = &v160 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v189 = &v160 - v39;
  v183 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceValue();
  v192 = *(v183 - 8);
  v40 = *(v192 + 64);
  v42 = MEMORY[0x28223BE20](v183, v41);
  v171 = &v160 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v42, v44);
  v182 = &v160 - v46;
  MEMORY[0x28223BE20](v45, v47);
  v177 = &v160 - v48;
  v199 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v49 = *(v199 - 8);
  v50 = *(v49 + 64);
  v52 = MEMORY[0x28223BE20](v199, v51);
  v201 = &v160 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52, v54);
  v200 = &v160 - v55;
  v56 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSlice();
  v202 = *(v56 - 8);
  v57 = *(v202 + 8);
  v59 = MEMORY[0x28223BE20](v56, v58);
  v181 = &v160 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = MEMORY[0x28223BE20](v59, v61);
  v64 = &v160 - v63;
  MEMORY[0x28223BE20](v62, v65);
  v185 = &v160 - v66;
  v186 = a1;
  v67 = Apple_Parsec_Siri_V2alpha_PegasusSearchQuery.profileSlices.getter();
  v197 = *(v67 + 16);
  if (v197)
  {
    v68 = 0;
    v198 = v202 + 16;
    LODWORD(v196) = *MEMORY[0x277D396E8];
    v194 = (v49 + 8);
    v195 = (v49 + 104);
    v193 = (v202 + 8);
    v69 = v200;
    while (1)
    {
      if (v68 >= *(v67 + 16))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v70 = v67;
      v71 = *(v202 + 2);
      v71(v64, v67 + ((v202[80] + 32) & ~v202[80]) + *(v202 + 9) * v68, v56);
      Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
      v72 = v201;
      v73 = v199;
      (*v195)(v201, v196, v199);
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v74 = *v194;
      (*v194)(v72, v73);
      v74(v69, v73);
      if (*&v203[0] == v205)
      {
        break;
      }

      ++v68;
      (*v193)(v64, v56);
      v67 = v70;
      if (v197 == v68)
      {
        goto LABEL_6;
      }
    }

    v195 = v71;

    v87 = *(v202 + 4);
    v160 = v56;
    v87(v185, v64, v56);
    v88 = Apple_Parsec_Siri_V2alpha_ProfileSlice.values.getter();
    v89 = v183;
    v90 = v182;
    v201 = *(v88 + 16);
    if (v201)
    {
      v91 = 0;
      v202 = (v192 + 16);
      LODWORD(v199) = *MEMORY[0x277D39AE0];
      v196 = (v180 + 8);
      v197 = (v180 + 104);
      v200 = (v192 + 8);
      while (v91 < *(v88 + 16))
      {
        v92 = v88;
        (*(v192 + 16))(v90, v88 + ((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v91, v89);
        v93 = v189;
        Apple_Parsec_Siri_V2alpha_ProfileSlice.label.getter();
        v94 = v190;
        v95 = v191;
        (*v197)(v190, v199, v191);
        _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceValueLabel, MEMORY[0x277D39AF8]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v96 = *v196;
        (*v196)(v94, v95);
        v96(v93, v95);
        if (*&v203[0] == v205)
        {

          v113 = v177;
          (*(v192 + 32))(v177, v90, v89);
          v114 = v172;
          Apple_Parsec_Siri_V2alpha_ProfileSliceValue.value.getter();
          v115 = Google_Protobuf_Any.value.getter();
          v117 = v116;
          (*(v173 + 8))(v114, v174);
          v205 = v115;
          v206 = v117;
          v204 = 0;
          memset(v203, 0, sizeof(v203));
          BinaryDecodingOptions.init()();
          _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AmpUserState and conformance Apple_Parsec_Siri_V2alpha_AmpUserState, MEMORY[0x277D39450]);
          v118 = v176;
          v119 = v179;
          Message.init<A>(serializedBytes:extensions:partial:options:)();
          v120 = v89;
          v121 = v113;
          v122 = v178;
          (*(v178 + 56))(v118, 0, 1, v119);
          v123 = v170;
          (*(v122 + 32))(v170, v118, v119);
          v124 = [objc_allocWithZone(MEMORY[0x277D5A058]) init];
          v125 = v160;
          v126 = v185;
          if (v124)
          {
            v127 = v162;
            v202 = v124;
            Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.getter();
            v128 = v164;
            v129 = v163;
            v130 = v165;
            (*(v164 + 104))(v163, *MEMORY[0x277D39A18], v165);
            _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus and conformance Apple_Parsec_Siri_V2alpha_AmpSubscriptionStatus, MEMORY[0x277D39A28]);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            v131 = *(v128 + 8);
            v131(v129, v130);
            v131(v127, v130);
            [v202 setHasAmpSubscriptionStatus_];
            v132 = v166;
            Apple_Parsec_Siri_V2alpha_AmpUserState.itunesSubscriptionStatus.getter();
            v133 = v168;
            v134 = v167;
            v135 = matched;
            (*(v168 + 104))(v167, *MEMORY[0x277D39D08], matched);
            _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus and conformance Apple_Parsec_Siri_V2alpha_ITunesMatchSubscriptionStatus, MEMORY[0x277D39D18]);
            dispatch thunk of RawRepresentable.rawValue.getter();
            dispatch thunk of RawRepresentable.rawValue.getter();
            v136 = *(v133 + 8);
            v136(v134, v135);
            v136(v132, v135);
            [v202 setHasItunesSubscriptionStatus_];
            v137 = Apple_Parsec_Siri_V2alpha_AmpUserState.userToken.getter();
            v139 = v138;

            v140 = HIBYTE(v139) & 0xF;
            if ((v139 & 0x2000000000000000) == 0)
            {
              v140 = v137 & 0xFFFFFFFFFFFFLL;
            }

            [v202 setHasUserToken_];
            v141 = Apple_Parsec_Siri_V2alpha_AmpUserState.sharedUserID.getter();
            v143 = v142;

            v144 = HIBYTE(v143) & 0xF;
            if ((v143 & 0x2000000000000000) == 0)
            {
              v144 = v141 & 0xFFFFFFFFFFFFLL;
            }

            [v202 setHasSharedUserId_];
            (*(v122 + 8))(v123, v119);
            (*v200)(v121, v183);
            (*v193)(v185, v160);
            return v202;
          }

          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v146 = type metadata accessor for Logger();
          __swift_project_value_buffer(v146, static Logger.pommes);
          v147 = v187;
          v148 = v161;
          v149 = v188;
          (*(v187 + 16))(v161, v186, v188);
          v150 = Logger.logObject.getter();
          v151 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v150, v151))
          {
            v152 = swift_slowAlloc();
            v153 = swift_slowAlloc();
            *&v203[0] = v153;
            *v152 = 136315138;
            _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PegasusSearchQuery and conformance Apple_Parsec_Siri_V2alpha_PegasusSearchQuery, MEMORY[0x277D38CA8]);
            v154 = Message.debugDescription.getter();
            v155 = v149;
            v156 = v121;
            v158 = v157;
            (*(v147 + 8))(v148, v155);
            v159 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v158, v203);

            *(v152 + 4) = v159;
            _os_log_impl(&dword_2232BB000, v150, v151, "Unable to extract ampUserState requestQuery: %s", v152, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v153);
            MEMORY[0x223DE0F80](v153, -1, -1);
            MEMORY[0x223DE0F80](v152, -1, -1);

            (*(v178 + 8))(v170, v179);
            (*v200)(v156, v183);
            (*v193)(v185, v125);
          }

          else
          {

            (*(v147 + 8))(v148, v149);
            (*(v178 + 8))(v170, v179);
            (*v200)(v121, v120);
            (*v193)(v126, v125);
          }

          return 0;
        }

        ++v91;
        (*v200)(v90, v89);
        v88 = v92;
        if (v201 == v91)
        {
          goto LABEL_15;
        }
      }

      goto LABEL_33;
    }

LABEL_15:

    v97 = v195;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v98 = type metadata accessor for Logger();
    __swift_project_value_buffer(v98, static Logger.pommes);
    v99 = v181;
    v100 = v185;
    v101 = v160;
    v97(v181, v185, v160);
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      *&v203[0] = v105;
      *v104 = 136315138;
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSlice and conformance Apple_Parsec_Siri_V2alpha_ProfileSlice, MEMORY[0x277D39460]);
      v106 = Message.debugDescription.getter();
      v107 = v99;
      v109 = v108;
      v110 = *v193;
      (*v193)(v107, v101);
      v111 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v106, v109, v203);

      *(v104 + 4) = v111;
      _os_log_impl(&dword_2232BB000, v102, v103, "ampUserState: profileSlice has no .valueLabelAmpUser: %s", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v105);
      MEMORY[0x223DE0F80](v105, -1, -1);
      MEMORY[0x223DE0F80](v104, -1, -1);

      v110(v100, v101);
    }

    else
    {

      v112 = *v193;
      (*v193)(v99, v101);
      v112(v100, v101);
    }
  }

  else
  {
LABEL_6:

    if (one-time initialization token for pommes != -1)
    {
LABEL_34:
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.pommes);
    v76 = v187;
    v77 = v184;
    v78 = v188;
    (*(v187 + 16))(v184, v186, v188);
    v79 = Logger.logObject.getter();
    v80 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      *&v203[0] = v82;
      *v81 = 136315138;
      _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_PegasusSearchQuery and conformance Apple_Parsec_Siri_V2alpha_PegasusSearchQuery, MEMORY[0x277D38CA8]);
      v83 = Message.debugDescription.getter();
      v85 = v84;
      (*(v76 + 8))(v77, v78);
      v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v83, v85, v203);

      *(v81 + 4) = v86;
      _os_log_impl(&dword_2232BB000, v79, v80, "ampUserState: requestQuery has no .sliceLabelAmpUsersState: %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x223DE0F80](v82, -1, -1);
      MEMORY[0x223DE0F80](v81, -1, -1);
    }

    else
    {

      (*(v76 + 8))(v77, v78);
    }
  }

  return 0;
}

uint64_t closure #1 in PegasusInstrumentationUtil.buildClientDrivenContext(_:)()
{
  v91 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v0 = *(v91 - 8);
  v1 = v0[8];
  MEMORY[0x28223BE20](v91, v2);
  v90 = v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v106 = v85 - v7;
  v104 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
  v93 = *(v104 - 8);
  v8 = *(v93 + 64);
  v10 = MEMORY[0x28223BE20](v104, v9);
  v92 = v85 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v12);
  v103 = v85 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentV06OneOf_H0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentV06OneOf_H0OSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = v85 - v17;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v19, v22);
  v102 = v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23, v25);
  v100 = v85 - v27;
  MEMORY[0x28223BE20](v26, v28);
  v101 = v85 - v29;
  v99 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v30 = *(v99 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x28223BE20](v99, v32);
  v35 = v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x223DDB8B0](v33);
  v37 = *(v36 + 16);
  if (v37)
  {
    v88 = v36;
    v89 = v0;
    v39 = *(v30 + 16);
    v38 = v30 + 16;
    v40 = v36 + ((*(v38 + 64) + 32) & ~*(v38 + 64));
    v96 = *(v38 + 56);
    v97 = v39;
    v98 = v38;
    v41 = (v38 - 8);
    v42 = (v20 + 48);
    v105 = v20;
    v95 = (v20 + 32);
    v43 = MEMORY[0x277D84F90];
    v94 = v18;
    do
    {
      v44 = v99;
      v97(v35, v40, v99);
      Apple_Parsec_Siri_V2alpha_ClientComponent.component.getter();
      (*v41)(v35, v44);
      if ((*v42)(v18, 1, v19) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v18, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentV06OneOf_H0OSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ClientComponentV06OneOf_H0OSgMR);
      }

      else
      {
        v45 = *v95;
        (*v95)(v100, v18, v19);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v46 = v43;
        }

        else
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43[2] + 1, 1, v43);
        }

        v48 = v46[2];
        v47 = v46[3];
        if (v48 >= v47 >> 1)
        {
          v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v47 > 1, v48 + 1, 1, v46);
        }

        v46[2] = v48 + 1;
        v43 = v46;
        v45(v46 + ((*(v105 + 80) + 32) & ~*(v105 + 80)) + *(v105 + 72) * v48, v100, v19);
        v18 = v94;
      }

      v40 += v96;
      --v37;
    }

    while (v37);

    v20 = v105;
    v0 = v89;
  }

  else
  {

    v43 = MEMORY[0x277D84F90];
  }

  v49 = v43[2];
  v50 = v106;
  if (v49)
  {
    v52 = *(v20 + 16);
    v51 = v20 + 16;
    v100 = v52;
    v53 = (*(v51 + 64) + 32) & ~*(v51 + 64);
    v85[1] = v43;
    v54 = v43 + v53;
    v55 = *(v51 + 56);
    v98 = (v51 + 72);
    v99 = v55;
    LODWORD(v97) = *MEMORY[0x277D39660];
    v88 = (v51 + 80);
    v89 = (v93 + 56);
    v86 = (v0 + 1);
    v87 = (v0 + 4);
    v95 = (v93 + 48);
    v96 = (v51 - 8);
    v94 = (v93 + 32);
    v56 = MEMORY[0x277D84F90];
    v57 = v104;
    v105 = v51;
    do
    {
      v58 = v56;
      v59 = v100;
      v60 = v101;
      (v100)(v101, v54, v19);
      v61 = v102;
      (v59)(v102, v60, v19);
      v62 = (*v98)(v61, v19);
      if (v62 == v97)
      {
        (*v88)(v61, v19);
        v63 = v90;
        v64 = v61;
        v65 = v91;
        (*v87)(v90, v64, v91);
        Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
        v66 = v63;
        v50 = v106;
        (*v86)(v66, v65);
        (*v96)(v60, v19);
      }

      else
      {
        v67 = v61;
        v68 = *v96;
        (*v96)(v60, v19);
        (*v89)(v50, 1, 1, v57);
        v68(v67, v19);
      }

      v56 = v58;
      if ((*v95)(v50, 1, v57) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v50, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
      }

      else
      {
        v69 = v50;
        v70 = *v94;
        (*v94)(v103, v69, v57);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58[2] + 1, 1, v58);
        }

        v72 = v56[2];
        v71 = v56[3];
        if (v72 >= v71 >> 1)
        {
          v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v71 > 1, v72 + 1, 1, v56);
        }

        v56[2] = v72 + 1;
        v73 = v56 + ((*(v93 + 80) + 32) & ~*(v93 + 80)) + *(v93 + 72) * v72;
        v57 = v104;
        v70(v73, v103, v104);
        v50 = v106;
      }

      v54 += v99;
      --v49;
    }

    while (v49);

    v75 = v56[2];
    if (!v75)
    {
      goto LABEL_36;
    }
  }

  else
  {

    v56 = MEMORY[0x277D84F90];
    v75 = *(MEMORY[0x277D84F90] + 16);
    if (!v75)
    {
LABEL_36:

      return 0;
    }
  }

  v76 = 0;
  v105 = v93 + 88;
  v106 = (v93 + 16);
  v77 = *MEMORY[0x277D39A50];
  v78 = *MEMORY[0x277D39A58];
  v79 = *MEMORY[0x277D39A40];
  v80 = (v93 + 8);
  v81 = v104;
  while (v76 < v56[2])
  {
    v82 = v92;
    v83 = v93;
    (*(v93 + 16))(v92, v56 + ((*(v83 + 80) + 32) & ~*(v83 + 80)) + *(v83 + 72) * v76, v81);
    v84 = (*(v83 + 88))(v82, v81);
    if (v84 == v77)
    {

      (*v80)(v92, v104);
      return 1;
    }

    if (v84 == v78)
    {

      (*v80)(v92, v104);
      return 2;
    }

    if (v84 == v79)
    {

      (*v80)(v92, v104);
      return 3;
    }

    ++v76;
    result = (*v80)(v92, v104);
    if (v75 == v76)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

id closure #1 in PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v6 = *(*(v5 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v5 - 8, v7);
  v10 = (&v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v11);
  v94 = &v89 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v14 = *(*(v13 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v13 - 8, v15);
  v92 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v89 - v19;
  v21 = type metadata accessor for UUID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x28223BE20](v21, v24);
  v91 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v89 - v28;
  v30 = [objc_allocWithZone(MEMORY[0x277D59F70]) init];
  if (v30)
  {
    v31 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v93 = v21;
    v32 = a3;
    v33 = v31;
    v34 = v29;
    v35 = v10;
    v36 = a2;
    v37 = v22;
    v38 = v30;
    v39 = v30;
    isa = UUID._bridgeToObjectiveC()().super.isa;
    v41 = [v33 initWithNSUUID_];

    [v39 setPommesId_];
    v30 = v38;
    v22 = v37;
    a2 = v36;
    v10 = v35;
    v29 = v34;

    a3 = v32;
    v21 = v93;
  }

  outlined init with copy of MediaUserStateCenter?(a2, v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v42 = *(v22 + 48);
  if (v42(v20, 1, v21) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v20, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v22 + 32))(v29, v20, v21);
    v43 = AFDeviceSupportsSAE();
    if (v30)
    {
      v44 = v43;
      v45 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v93 = a3;
      v46 = v45;
      v47 = v30;
      v90 = v42;
      v48 = v22;
      v49 = v30;
      v50 = v47;
      v51 = UUID._bridgeToObjectiveC()().super.isa;
      v52 = [v46 initWithNSUUID_];

      v53 = &selRef_setSubRequestId_;
      if (!v44)
      {
        v53 = &selRef_setRequestId_;
      }

      [v50 *v53];

      v30 = v49;
      v22 = v48;
      v42 = v90;

      a3 = v93;
    }

    (*(v22 + 8))(v29, v21);
  }

  v54 = v94;
  outlined init with copy of MediaUserStateCenter?(a3, v94, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v55 = type metadata accessor for PommesCandidateId();
  v56 = *(v55 - 8);
  if ((*(v56 + 48))(v54, 1, v55) == 1)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v57 = type metadata accessor for Logger();
    __swift_project_value_buffer(v57, static Logger.pommes);
    v58 = Logger.logObject.getter();
    v59 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_16;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "PommesCandidateId is nil";
LABEL_15:
    _os_log_impl(&dword_2232BB000, v58, v59, v61, v60, 2u);
    MEMORY[0x223DE0F80](v60, -1, -1);
LABEL_16:

    goto LABEL_37;
  }

  outlined init with copy of MediaUserStateCenter?(v54, v10, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v62 = (*(v56 + 88))(v10, v55);
  if (v62 == *MEMORY[0x277D56618])
  {
    goto LABEL_18;
  }

  if (v62 != *MEMORY[0x277D56620])
  {
    if (v62 != *MEMORY[0x277D56610])
    {
      (*(v56 + 8))(v10, v55);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v77 = type metadata accessor for Logger();
      __swift_project_value_buffer(v77, static Logger.pommes);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v58, v59))
      {
        goto LABEL_16;
      }

      v60 = swift_slowAlloc();
      *v60 = 0;
      v61 = "Unknown PommesCandidateId";
      goto LABEL_15;
    }

LABEL_18:
    (*(v56 + 96))(v10, v55);
    v63 = v10[1];
    if (v30)
    {
      v64 = *v10;
      v65 = v30;
      v66 = v30;
      v67 = MEMORY[0x223DDF550](v64, v63);

      [v66 setResultCandidateId_];

      v30 = v65;
    }

    else
    {
      v78 = v10[1];
    }

    goto LABEL_37;
  }

  (*(v56 + 96))(v10, v55);
  v69 = *v10;
  v68 = v10[1];
  v70 = v10[3];

  v71 = v92;
  UUID.init(uuidString:)();
  if (v42(v71, 1, v21) == 1)
  {

    outlined destroy of MediaUserStateCenter?(v71, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v72 = type metadata accessor for Logger();
    __swift_project_value_buffer(v72, static Logger.pommes);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    v75 = os_log_type_enabled(v73, v74);
    v54 = v94;
    if (v75)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_2232BB000, v73, v74, "Unable to create UUID from trpId. Returning nil for POMMESSchemaPOMMESClientEvent.", v76, 2u);
      MEMORY[0x223DE0F80](v76, -1, -1);
    }

    v30 = 0;
  }

  else
  {
    v79 = v91;
    (*(v22 + 32))(v91, v71, v21);
    if (v30)
    {
      v80 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v81 = v30;
      v82 = v30;
      v83 = UUID._bridgeToObjectiveC()().super.isa;
      v84 = [v80 initWithNSUUID_];

      [v82 setTrpId_];
      v85 = v82;
      v30 = v81;
      v86 = v85;
      v87 = MEMORY[0x223DDF550](v69, v68);

      [v86 setResultCandidateId_];

      (*(v22 + 8))(v79, v21);
    }

    else
    {
      (*(v22 + 8))(v79, v21);
    }

    v54 = v94;
  }

LABEL_37:
  outlined destroy of MediaUserStateCenter?(v54, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  return v30;
}

uint64_t PegasusInstrumentationUtil.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t PegasusInstrumentationUtil.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void specialized PegasusInstrumentationUtil.roundToTwoSigFigs(_:)(long double a1)
{
  if (a1 != 0.0)
  {
    v1 = ceil(log10(a1));
    if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v1 > -9.22337204e18)
    {
      if (v1 < 9.22337204e18)
      {
        if (!__OFSUB__(2, v1))
        {
          __exp10((2 - v1));
          return;
        }

LABEL_11:
        __break(1u);
        return;
      }

LABEL_10:
      __break(1u);
      goto LABEL_11;
    }

    __break(1u);
    goto LABEL_10;
  }
}

void *specialized PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277D59F68]) init];
  if (v6)
  {
    v7 = v6;
    v8 = closure #1 in PegasusInstrumentationUtil.createEventWrapper(requestId:pommesId:pommesCandidateId:)(a2, a1, a3);
    [v7 setEventMetadata_];
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.pommes);
    v8 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v8, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2232BB000, v8, v10, "Failed to create POMMESSchemaPOMMESClientEvent", v11, 2u);
      MEMORY[0x223DE0F80](v11, -1, -1);
    }

    v7 = 0;
  }

  return v7;
}

void *specialized static PegasusInstrumentationUtil.kfedLatency(from:)()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D5A030]) init];
  if (v0)
  {
    v1 = v0;
    v2 = Latencyinfopb_KfedLatencyInfo.banyanMs.getter();
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!HIDWORD(v2))
    {
      [v1 setBanyanLatencyInMs_];
      v3 = Latencyinfopb_KfedLatencyInfo.overallMs.getter();
      if ((v3 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v3))
        {
          [v1 setOverallLatencyInMs_];
          return v1;
        }

        goto LABEL_15;
      }

LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_14;
  }

  if (one-time initialization token for pommes != -1)
  {
LABEL_16:
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2232BB000, v5, v6, "Unable to initialize POMMESSchemaPOMMESPegasusRequestKfedLatency()", v7, 2u);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  return 0;
}

id partial apply for closure #3 in PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  result = specialized PegasusInstrumentationUtil.buildServerDrivenContext(_:)();
  *a1 = result;
  return result;
}

void partial apply for closure #2 in PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  closure #2 in PegasusInstrumentationUtil.logEndOfPegasusRequest(requestId:pommesId:pommesCandidateId:status:confidenceScore:experience:payloadSizeInKB:pegasusDomain:isRewrittenUtteranceUsed:latencyInfo:)(a1);
}

id specialized PegasusInstrumentationUtil.buildServerDrivenContext(_:)()
{
  v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v0 = *(v54 - 1);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v54, v2);
  v4 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v49 = v46 - v13;
  result = [objc_allocWithZone(MEMORY[0x277D5A048]) init];
  if (result)
  {
    v48 = result;
    v47 = result;
    v15 = MEMORY[0x223DDB9C0]();
    v16 = *(v15 + 16);
    v55 = v5;
    if (v16)
    {
      v56 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
      v17 = v56;
      v18 = v0 + 16;
      v19 = *(v0 + 16);
      v20 = *(v0 + 80);
      v46[1] = v15;
      v21 = v15 + ((v20 + 32) & ~v20);
      v51 = *(v18 + 56);
      v52 = v19;
      v53 = v18;
      v22 = (v18 - 8);
      v50 = v6 + 32;
      do
      {
        v23 = v54;
        v52(v4, v21, v54);
        Apple_Parsec_Siri_V2alpha_ExperienceComponent.renderedDialog.getter();
        (*v22)(v4, v23);
        v56 = v17;
        v25 = *(v17 + 16);
        v24 = *(v17 + 24);
        if (v25 >= v24 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v24 > 1, v25 + 1, 1);
          v17 = v56;
        }

        *(v17 + 16) = v25 + 1;
        v26 = v17 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v25;
        v5 = v55;
        (*(v6 + 32))(v26, v11, v55);
        v21 += v51;
        --v16;
      }

      while (v16);
    }

    else
    {

      v17 = MEMORY[0x277D84F90];
    }

    v27 = *(v17 + 16);
    v28 = v49;
    if (v27)
    {
      v30 = *(v6 + 16);
      v29 = v6 + 16;
      v31 = v17 + ((*(v29 + 64) + 32) & ~*(v29 + 64));
      v53 = *(v29 + 56);
      v54 = v30;
      v32 = (v29 - 8);
      v33 = MEMORY[0x277D84F90];
      (v30)(v49, v31, v5);
      while (1)
      {
        v34 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
        v36 = v35;

        v37 = HIBYTE(v36) & 0xF;
        if ((v36 & 0x2000000000000000) == 0)
        {
          v37 = v34 & 0xFFFFFFFFFFFFLL;
        }

        if (v37)
        {
          v38 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
          v40 = v39;
          (*v32)(v28, v5);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
          }

          v42 = *(v33 + 2);
          v41 = *(v33 + 3);
          if (v42 >= v41 >> 1)
          {
            v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v33);
          }

          *(v33 + 2) = v42 + 1;
          v43 = &v33[16 * v42];
          *(v43 + 4) = v38;
          *(v43 + 5) = v40;
          v5 = v55;
          v28 = v49;
        }

        else
        {
          (*v32)(v28, v5);
        }

        v31 += v53;
        if (!--v27)
        {
          break;
        }

        (v54)(v28, v31, v5);
      }
    }

    isa = Array._bridgeToObjectiveC()().super.isa;

    v45 = v47;
    [v47 setCatIds_];

    return v48;
  }

  return result;
}

uint64_t specialized static PegasusInstrumentationUtil.extractQueries(from:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusSearchQuery();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queries.getter();
  v10 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (v4 + 8);
    v18 = v11 - 1;
    v19 = v4 + 16;
    while (v12 < *(v9 + 16))
    {
      (*(v4 + 16))(v8, v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v3);
      closure #1 in static PegasusInstrumentationUtil.extractQueries(from:onDeviceLabels:)(v8, v20, &v22);
      v14 = (*v13)(v8, v3);
      if (v22)
      {
        MEMORY[0x223DDF820](v14);
        if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v17 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v17 = v12 + 1;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v10 = v23;
        v15 = v18 == v12;
        v12 = v17;
        if (v15)
        {
          goto LABEL_11;
        }
      }

      else if (v11 == ++v12)
      {
        goto LABEL_11;
      }
    }

    __break(1u);

    (*v13)(v8, v3);

    __break(1u);
  }

  else
  {
LABEL_11:

    return v10;
  }

  return result;
}

uint64_t specialized static PegasusInstrumentationUtil.extractQueryMetadata(from:)(uint64_t a1)
{
  v116 = a1;
  v1 = type metadata accessor for Apple_Parsec_Search_V2_PreciseStatus();
  v111 = *(v1 - 8);
  v2 = *(v111 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v106 = &v96 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Apple_Parsec_Search_V2_Location.Source();
  v103 = *(v5 - 8);
  v104 = v5;
  v6 = *(v103 + 64);
  MEMORY[0x28223BE20](v5, v7);
  v110 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.MeasurementSystem();
  v114 = *(v100 - 8);
  v9 = *(v114 + 64);
  MEMORY[0x28223BE20](v100, v10);
  v113 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext.TemperatureUnit();
  v109 = *(v99 - 8);
  v12 = *(v109 + 64);
  MEMORY[0x28223BE20](v99, v13);
  v115 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  v107 = *(v15 - 8);
  v108 = v15;
  v16 = *(v107 + 64);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v96 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for Google_Protobuf_Int32Value();
  v20 = *(v112 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v112, v22);
  v24 = &v96 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v101 = &v96 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v29, v31);
  v34 = &v96 - v33;
  MEMORY[0x28223BE20](v32, v35);
  v37 = &v96 - v36;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v102 = *(Context - 8);
  v38 = *(v102 + 64);
  MEMORY[0x28223BE20](Context, v39);
  v41 = &v96 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = [objc_allocWithZone(MEMORY[0x277D5A000]) init];
  if (!v42)
  {
    if (one-time initialization token for pommes == -1)
    {
LABEL_11:
      v68 = type metadata accessor for Logger();
      __swift_project_value_buffer(v68, static Logger.pommes);
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&dword_2232BB000, v69, v70, "Unable to initialize POMMESSchemaPOMMESPegasusQueryMetadata()", v71, 2u);
        MEMORY[0x223DE0F80](v71, -1, -1);
      }

      return 0;
    }

LABEL_67:
    swift_once();
    goto LABEL_11;
  }

  v43 = v42;
  v96 = v34;
  v97 = v1;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
  v44 = Apple_Parsec_Search_PegasusQueryContext.location.getter();
  v45 = MEMORY[0x223DDA150](v44);
  v46 = *(v26 + 8);
  v46(v37, v25);
  [v43 setHasLatitude_];
  Apple_Parsec_Search_PegasusQueryContext.location.getter();
  Apple_Parsec_Search_V2_Location.longitude.getter();
  v48 = v47;
  v46(v37, v25);
  [v43 setHasLongitude_];
  Apple_Parsec_Search_PegasusQueryContext.location.getter();
  Apple_Parsec_Search_V2_Location.age.getter();
  v98 = v25;
  v46(v37, v25);
  v49 = Google_Protobuf_Int32Value.value.getter();
  (*(v20 + 8))(v24, v112);
  if ((v49 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_65;
  }

  [v43 setLocationAgeInSeconds_];
  v50 = Apple_Parsec_Search_PegasusQueryContext.countryCode.getter();
  v52 = v51;

  v53 = HIBYTE(v52) & 0xF;
  if ((v52 & 0x2000000000000000) == 0)
  {
    v53 = v50 & 0xFFFFFFFFFFFFLL;
  }

  [v43 setHasCountryCode_];
  v54 = Apple_Parsec_Search_PegasusQueryContext.siriLocale.getter();
  v56 = v55;

  v57 = HIBYTE(v56) & 0xF;
  if ((v56 & 0x2000000000000000) == 0)
  {
    v57 = v54 & 0xFFFFFFFFFFFFLL;
  }

  [v43 setHasSiriLocale_];
  Apple_Parsec_Search_PegasusQueryContext.uiScale.getter();
  [v43 setUiScale_];
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  v58 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.isNavigationMode.getter();
  (*(v107 + 8))(v19, v108);
  [v43 setIsNavigationMode_];
  v59 = Apple_Parsec_Search_PegasusQueryContext.installedAppsSignature.getter();
  v61 = v60 >> 62;
  if ((v60 >> 62) > 1)
  {
    v63 = v110;
    v62 = v111;
    v64 = v98;
    v65 = v109;
    if (v61 == 2)
    {
      v73 = *(v59 + 16);
      v72 = *(v59 + 24);
      v59 = outlined consume of Data._Representation(v59, v60);
      v67 = v72 - v73;
      if (__OFSUB__(v72, v73))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    else
    {
      outlined consume of Data._Representation(v59, v60);
      v67 = 0;
    }

LABEL_21:
    v77 = 10 * (v67 / 10);
    if ((v77 & 0x8000000000000000) == 0)
    {
      if (!HIDWORD(v77))
      {
        [v43 setInstalledAppsSignatureLength_];
        v78 = Apple_Parsec_Search_PegasusQueryContext.storeFront.getter();
        v79 = MEMORY[0x223DDF550](v78);

        [v43 setStorefrontValue_];

        [v43 setHeySiriEnabled_];
        v80 = v115;
        Apple_Parsec_Search_PegasusQueryContext.temperatureUnit.getter();
        v81 = v99;
        v82 = (*(v65 + 88))(v80, v99);
        if (v82 == *MEMORY[0x277D38C20])
        {
          [v43 setTemperatureScale_];
          v83 = v104;
        }

        else
        {
          v83 = v104;
          if (v82 == *MEMORY[0x277D38C18])
          {
            [v43 setTemperatureScale_];
          }

          else if (v82 == *MEMORY[0x277D38C10])
          {
            [v43 setTemperatureScale_];
          }

          else
          {
            [v43 setTemperatureScale_];
            (*(v65 + 8))(v115, v81);
          }
        }

        v84 = v113;
        Apple_Parsec_Search_PegasusQueryContext.measurementSystem.getter();
        v85 = v100;
        v86 = (*(v114 + 88))(v84, v100);
        if (v86 == *MEMORY[0x277D38C40])
        {
          [v43 setMeasurementSystem_];
        }

        else if (v86 == *MEMORY[0x277D38C28])
        {
          [v43 setMeasurementSystem_];
        }

        else if (v86 == *MEMORY[0x277D38C38])
        {
          [v43 setMeasurementSystem_];
        }

        else if (v86 == *MEMORY[0x277D38C30])
        {
          [v43 setMeasurementSystem_];
        }

        else
        {
          [v43 setMeasurementSystem_];
          (*(v114 + 8))(v113, v85);
        }

        v87 = v96;
        Apple_Parsec_Search_PegasusQueryContext.location.getter();
        Apple_Parsec_Search_V2_Location.source.getter();
        v46(v87, v64);
        v88 = v103;
        v89 = (*(v103 + 88))(v63, v83);
        if (v89 == *MEMORY[0x277D38F58])
        {
          [v43 setLocationSource_];
          v90 = v62;
          v91 = v106;
        }

        else
        {
          v90 = v62;
          if (v89 == *MEMORY[0x277D38F30])
          {
            [v43 setLocationSource_];
            v91 = v106;
          }

          else
          {
            v91 = v106;
            if (v89 == *MEMORY[0x277D38F28])
            {
              [v43 setLocationSource_];
            }

            else if (v89 == *MEMORY[0x277D38F50])
            {
              [v43 setLocationSource_];
            }

            else if (v89 == *MEMORY[0x277D38F48])
            {
              [v43 setLocationSource_];
            }

            else if (v89 == *MEMORY[0x277D38F38])
            {
              [v43 setLocationSource_];
            }

            else if (v89 == *MEMORY[0x277D38F60])
            {
              [v43 setLocationSource_];
            }

            else if (v89 == *MEMORY[0x277D38F40])
            {
              [v43 setLocationSource_];
            }

            else if (v89 == *MEMORY[0x277D38F20])
            {
              [v43 setLocationSource_];
            }

            else
            {
              [v43 setLocationSource_];
              (*(v88 + 8))(v63, v83);
            }
          }
        }

        v92 = v101;
        Apple_Parsec_Search_PegasusQueryContext.location.getter();
        Apple_Parsec_Search_V2_Location.preciseStatus.getter();
        v46(v92, v64);
        v93 = v97;
        v94 = (*(v90 + 88))(v91, v97);
        if (v94 == *MEMORY[0x277D39250])
        {
          [v43 setLocationPreciseStatus_];
          (*(v102 + 8))(v41, Context);
        }

        else
        {
          v95 = (v102 + 8);
          if (v94 == *MEMORY[0x277D39240])
          {
            [v43 setLocationPreciseStatus_];
            (*v95)(v41, Context);
          }

          else
          {
            [v43 setLocationPreciseStatus_];
            (*v95)(v41, Context);
            (*(v90 + 8))(v91, v93);
          }
        }

        return v43;
      }

      goto LABEL_66;
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v63 = v110;
  v62 = v111;
  v64 = v98;
  v65 = v109;
  if (!v61)
  {
    v66 = BYTE6(v60);
    outlined consume of Data._Representation(v59, v60);
    v67 = v66;
    goto LABEL_21;
  }

LABEL_18:
  v74 = HIDWORD(v59);
  v75 = v59;
  result = outlined consume of Data._Representation(v59, v60);
  LODWORD(v67) = v74 - v75;
  if (!__OFSUB__(v74, v75))
  {
    v67 = v67;
    goto LABEL_21;
  }

  __break(1u);
  return result;
}

void *specialized static PegasusInstrumentationUtil.extractDeviceState(from:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceState();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [objc_allocWithZone(MEMORY[0x277D59F80]) init];
  if (v12)
  {
    v13 = v12;
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusContext.deviceState.getter();
    (*(v1 + 8))(v5, v0);
    v14 = Apple_Parsec_Siri_V2alpha_DeviceState.companionName.getter();
    v15 = MEMORY[0x223DDF550](v14);

    [v13 setCompanionName_];

    [v13 setIsCarDoNotDisturbModeEnabled_];
    [v13 setIsCarPlayEnabled_];
    [v13 setIsEyesFreeEnabled_];
    [v13 setIsLockedWithPasscode_];
    [v13 setIsMultiUserDevice_];
    [v13 setIsTextToSpeechEnabled_];
    [v13 setIsVoiceTriggerEnabled_];
    (*(v7 + 8))(v11, v6);
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.pommes);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_2232BB000, v17, v18, "Unable to initialize POMMESSchemaPOMMESDeviceState()", v19, 2u);
      MEMORY[0x223DE0F80](v19, -1, -1);
    }

    return 0;
  }

  return v13;
}

id specialized static PegasusInstrumentationUtil.extractSiriPegasusMetadata(from:)(uint64_t a1)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RestrictionCategory();
  v115 = *(v2 - 8);
  v3 = *(v115 + 64);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v134 = &v113 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v7);
  v133 = &v113 - v8;
  v132 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Restriction();
  v135 = *(v132 - 8);
  v9 = *(v135 + 64);
  v11 = MEMORY[0x28223BE20](v132, v10);
  v121 = &v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11, v13);
  v122 = &v113 - v15;
  MEMORY[0x28223BE20](v14, v16);
  v123 = &v113 - v17;
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions();
  v130 = *(v18 - 8);
  v131 = v18;
  v19 = *(v130 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v129 = &v113 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext.SiriInteractionType();
  v128 = *(v22 - 8);
  v23 = *(v128 + 64);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusContext();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x28223BE20](v27, v30);
  v33 = &v113 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v31, v34);
  v114 = &v113 - v36;
  v38 = MEMORY[0x28223BE20](v35, v37);
  v124 = &v113 - v39;
  v41 = MEMORY[0x28223BE20](v38, v40);
  v43 = &v113 - v42;
  MEMORY[0x28223BE20](v41, v44);
  v46 = &v113 - v45;
  v118 = [objc_allocWithZone(MEMORY[0x277D5A0E8]) init];
  if (!v118)
  {
    if (one-time initialization token for pommes == -1)
    {
LABEL_5:
      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logger.pommes);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_2232BB000, v56, v57, "Unable to initialize POMMESSchemaPOMMESSiriPegasusMetadata()", v58, 2u);
        MEMORY[0x223DE0F80](v58, -1, -1);
      }

      return 0;
    }

LABEL_34:
    swift_once();
    goto LABEL_5;
  }

  v113 = v33;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.siriInteractionType.getter();
  v47 = *(v28 + 8);
  v125 = v27;
  v126 = v28 + 8;
  v47(v46, v27);
  v48 = v47;
  v49 = v128;
  v50 = (*(v128 + 88))(v26, v22);
  v51 = *MEMORY[0x277D38D50];
  v127 = v2;
  if (v50 == v51)
  {
    v52 = 0;
    v53 = v129;
    v54 = v130;
  }

  else
  {
    v54 = v130;
    if (v50 == *MEMORY[0x277D38D60])
    {
      v52 = 2;
      v53 = v129;
    }

    else
    {
      v60 = v26;
      v53 = v129;
      if (v50 == *MEMORY[0x277D38D58])
      {
        v52 = 1;
      }

      else
      {
        (*(v49 + 8))(v60, v22);
        v52 = 0;
      }
    }
  }

  v61 = v118;
  [v118 setInteractionType_];
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.contentRatingRestrictions.getter();
  v62 = v125;
  v63 = v48(v43, v125);
  v64 = MEMORY[0x223DDBC40](v63);
  v65 = *(v54 + 8);
  v66 = v131;
  v65(v53, v131);
  if ((v64 & 0x80000000) != 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  [v61 setMovieRestriction_];
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusContext.contentRatingRestrictions.getter();
  v48(v43, v62);
  v67 = Apple_Parsec_Siri_V2alpha_MediaContentRatingRestrictions.tvRestriction.getter();
  v65(v53, v66);
  if ((v67 & 0x80000000) != 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v68 = v62;
  [v61 setTvRestriction_];
  v69 = v124;
  v117 = a1;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  v70 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.getter();
  v116 = v48;
  v48(v69, v62);
  v71 = 0;
  v124 = *(v70 + 16);
  v131 = v135 + 16;
  v119 = *MEMORY[0x277D39920];
  v129 = (v115 + 8);
  v130 = v115 + 104;
  v128 = v135 + 8;
  v120 = v70;
  v72 = v123;
  do
  {
    v73 = v71;
    if (v124 == v71)
    {
      break;
    }

    if (v71 >= *(v70 + 16))
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v74 = v135;
    v75 = v132;
    v76 = (*(v135 + 16))(v72, v70 + ((*(v74 + 80) + 32) & ~*(v74 + 80)) + *(v74 + 72) * v71++, v132);
    v77 = v133;
    MEMORY[0x223DDA770](v76);
    v78 = v134;
    v79 = v127;
    (*v130)(v134, v119, v127);
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RestrictionCategory and conformance Apple_Parsec_Siri_V2alpha_RestrictionCategory, MEMORY[0x277D39948]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v80 = *v129;
    (*v129)(v78, v79);
    v81 = v77;
    v68 = v125;
    v80(v81, v79);
    v70 = v120;
    (*(v74 + 8))(v72, v75);
  }

  while (v137 != v136);
  v82 = v124 != v73;

  [v118 setIsInRestrictedSharingMode_];
  v83 = v114;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  v84 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.getter();
  v116(v83, v68);
  v85 = 0;
  v124 = *(v84 + 16);
  LODWORD(v123) = *MEMORY[0x277D39928];
  v86 = v127;
  v120 = v84;
  v87 = v122;
  do
  {
    v88 = v85;
    if (v124 == v85)
    {
      break;
    }

    if (v85 >= *(v84 + 16))
    {
      goto LABEL_30;
    }

    v89 = v135;
    v90 = v132;
    v91 = (*(v135 + 16))(v87, v84 + ((*(v89 + 80) + 32) & ~*(v89 + 80)) + *(v89 + 72) * v85++, v132);
    v92 = v133;
    MEMORY[0x223DDA770](v91);
    v93 = v134;
    (*v130)(v134, v123, v86);
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RestrictionCategory and conformance Apple_Parsec_Siri_V2alpha_RestrictionCategory, MEMORY[0x277D39948]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v94 = *v129;
    v95 = v93;
    v84 = v120;
    (*v129)(v95, v86);
    v94(v92, v86);
    (*(v89 + 8))(v87, v90);
  }

  while (v137 != v136);
  v96 = v124 == v88;

  [v118 setIsExplicitContentAllowed_];
  v97 = v113;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.siriPegasusContext.getter();
  v98 = Apple_Parsec_Siri_V2alpha_SiriPegasusContext.restrictions.getter();
  v116(v97, v125);
  v99 = 0;
  v126 = *(v98 + 16);
  LODWORD(v125) = *MEMORY[0x277D39930];
  v124 = v98;
  v100 = v127;
  do
  {
    v101 = v99;
    if (v126 == v99)
    {
      break;
    }

    if (v99 >= *(v98 + 16))
    {
      goto LABEL_31;
    }

    v102 = v135;
    v103 = v121;
    v104 = v132;
    v105 = (*(v135 + 16))(v121, v98 + ((*(v102 + 80) + 32) & ~*(v102 + 80)) + *(v102 + 72) * v99++, v132);
    v106 = v133;
    MEMORY[0x223DDA770](v105);
    v107 = v134;
    (*v130)(v134, v125, v100);
    _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_RestrictionCategory and conformance Apple_Parsec_Siri_V2alpha_RestrictionCategory, MEMORY[0x277D39948]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v108 = *v129;
    v109 = v107;
    v98 = v124;
    (*v129)(v109, v100);
    v108(v106, v100);
    (*(v102 + 8))(v103, v104);
  }

  while (v137 != v136);
  v110 = v126 != v101;

  v59 = v118;
  [v118 setIsWebContentDisabled_];
  v111 = specialized static PegasusInstrumentationUtil.extractDeviceState(from:)();
  [v59 setDeviceState_];

  return v59;
}

NSObject *specialized static PegasusInstrumentationUtil.extractClientConversationMetadata(from:onDeviceLabels:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_ClientConversationContextInfo();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x277D59F60]) init];
  if (!v9)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.pommes);
    v10 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v10, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_2232BB000, v10, v23, "Unable to initialize POMMESSchemaPOMMESClientConversationMetadata()", v24, 2u);
      MEMORY[0x223DE0F80](v24, -1, -1);
    }

    goto LABEL_21;
  }

  v10 = v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D59FD8]) init];
  if (!v11)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.pommes);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_2232BB000, v32, v33, "Unable to initialize POMMESSchemaPOMMESOnDeviceMetadata()", v34, 2u);
      MEMORY[0x223DE0F80](v34, -1, -1);
    }

LABEL_21:
    return 0;
  }

  v12 = v11;
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.getter();
  v13 = Apple_Parsec_Siri_Context_ClientConversationContextInfo.hasPromptContext.getter();
  v14 = *(v4 + 8);
  v14(v8, v3);
  [v10 setHasPromptContext:v13 & 1];
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.clientConversationContextInfo.getter();
  v15 = Apple_Parsec_Siri_Context_ClientConversationContextInfo.hasClientDisplayHints.getter();
  v14(v8, v3);
  [v10 setHasDisplayHints:v15 & 1];
  if (*(a2 + 16) && (v16 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v17 & 1) != 0))
  {
    v18 = (*(a2 + 56) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];

    v21 = MEMORY[0x223DDF550](v19, v20);
  }

  else
  {
    v21 = 0;
  }

  [v12 setOnScreenAppBundleIdDomain_];

  if (*(a2 + 16) && (v25 = specialized __RawDictionaryStorage.find<A>(_:)(1u), (v26 & 1) != 0))
  {
    v27 = (*(a2 + 56) + 16 * v25);
    v28 = *v27;
    v29 = v27[1];

    v30 = MEMORY[0x223DDF550](v28, v29);
  }

  else
  {
    v30 = 0;
  }

  [v12 setOnScreenUriDomain_];

  [v10 setOnDeviceMetadata:v12];
  return v10;
}

unint64_t specialized static PegasusInstrumentationUtil.requestArguments(from:onDeviceLabels:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_POMMESRequestContext();
  v55 = *(v6 - 8);
  v7 = *(v55 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8, v13);
  v15 = &v54 - v14;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v22;
  outlined init with copy of MediaUserStateCenter?(a1, v15, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMR);
  if ((*(v17 + 48))(v15, 1, v23) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v15, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    __swift_project_value_buffer(v24, static Logger.pommes);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_2232BB000, v25, v26, "No ParsecAlias.SiriPegasusRequest to extract POMMESSchemaPOMMESPegasusRequestArguments from", v27, 2u);
      MEMORY[0x223DE0F80](v27, -1, -1);
    }

    return 0;
  }

  (*(v17 + 32))(v21, v15, v23);
  v28 = [objc_allocWithZone(MEMORY[0x277D5A008]) init];
  if (!v28)
  {
    if (one-time initialization token for pommes == -1)
    {
LABEL_12:
      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.pommes);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_2232BB000, v42, v43, "Unable to initialize POMMESSchemaPOMMESPegasusRequestArguments()", v44, 2u);
        MEMORY[0x223DE0F80](v44, -1, -1);
      }

      (*(v17 + 8))(v21, v23);
      return 0;
    }

LABEL_29:
    swift_once();
    goto LABEL_12;
  }

  v29 = v28;
  specialized static PegasusInstrumentationUtil.extractQueries(from:onDeviceLabels:)(v21, a2, a3);
  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for POMMESSchemaPOMMESPegasusSearchQuery, 0x277D5A050);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v29 setQueries_];

  v31 = specialized static PegasusInstrumentationUtil.extractQueryMetadata(from:)(v21);
  [v29 setQueryMetadata_];

  v32 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.featureFlag.getter();
  v33 = MEMORY[0x223DDF550](v32);

  [v29 setFeatureFlag_];

  v34 = specialized static PegasusInstrumentationUtil.extractSiriPegasusMetadata(from:)(v21);
  [v29 setSiriPegasusMetadata_];

  [v29 setIsDataOnlyRequest_];
  v35 = specialized static PegasusInstrumentationUtil.extractClientConversationMetadata(from:onDeviceLabels:)(v21, a3);
  [v29 setClientConversationMetadata_];

  result = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.conversationContextBytes.getter();
  v38 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v38 != 2)
    {
      goto LABEL_25;
    }

    v46 = *(result + 16);
    v45 = *(result + 24);
    result = outlined consume of Data._Representation(result, v37);
    v40 = v45 - v46;
    if (!__OFSUB__(v45, v46))
    {
LABEL_22:
      if ((v40 & 0x8000000000000000) == 0)
      {
        if (!HIDWORD(v40))
        {
          goto LABEL_26;
        }

        __break(1u);
LABEL_25:
        outlined consume of Data._Representation(result, v37);
        v40 = 0;
        goto LABEL_26;
      }

      __break(1u);
      goto LABEL_29;
    }

    __break(1u);
  }

  else if (!v38)
  {
    v39 = BYTE6(v37);
    outlined consume of Data._Representation(result, v37);
    v40 = v39;
LABEL_26:
    [v29 setConversationContextBytesLength_];
    v49 = Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.pommesRequestContext.getter();
    v50 = MEMORY[0x223DDB6B0](v49);
    v52 = v51;
    (*(v55 + 8))(v10, v6);
    v53 = MEMORY[0x223DDF550](v50, v52);

    [v29 setPersonalDomainFallback_];

    (*(v17 + 8))(v21, v23);
    return v29;
  }

  v47 = HIDWORD(result);
  v48 = result;
  result = outlined consume of Data._Representation(result, v37);
  if (!__OFSUB__(v47, v48))
  {
    v40 = v47 - v48;
    goto LABEL_22;
  }

  __break(1u);
  return result;
}

uint64_t _s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7RequestVAC21InternalSwiftProtobuf7MessageAAWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *ExperiencesResolver.defaultExperiences(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  v32 = type metadata accessor for Date();
  v7 = *(v32 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v32, v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  if (one-time initialization token for shared != -1)
  {
    v12 = swift_once();
  }

  v31 = &v26;
  v14 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v12, v13);
  v30 = a3;
  v25 = v4;
  Date.init()();
  v15 = (*v14 + 200);
  v27 = *v15;
  v16 = v27;
  v28 = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v29 = a1;
  v18 = v17;
  LOBYTE(v25) = 2;
  v16(&v34, 0xD00000000000002BLL, 0x80000002234DF1D0, 0, v11, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 61, "defaultExperiences(from:with:)", 30, v25, partial apply for closure #1 in ExperiencesResolver.defaultExperiences(from:with:), &v26 - 8, v17);
  v19 = *(v7 + 8);
  v20 = v32;
  v21 = v19(v11, v32);
  v26 = &v26;
  v31 = v34;
  MEMORY[0x28223BE20](v21, v22);
  v25 = v29;
  Date.init()();
  LOBYTE(v25) = 2;
  v27(&v34, 0xD00000000000002ELL, 0x80000002234DF250, 0, v11, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 68, "defaultExperiences(from:with:)", 30, v25, partial apply for closure #2 in ExperiencesResolver.defaultExperiences(from:with:), &v26 - 8, v18);
  v19(v11, v20);
  v23 = v34;
  v34 = v31;
  specialized Array.append<A>(contentsOf:)(v23);
  return v34;
}

uint64_t specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(double *a1, uint64_t a2, uint64_t a3, double a4)
{
  return specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, a2, a4, a3, partial apply for specialized closure #1 in ExperiencesResolver.extractExperiences(from:score:with:with:), closure #3 in ExperiencesResolver.extractExperiences(from:score:with:with:)partial apply, closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:)partial apply, partial apply for specialized closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:));
}

{
  return specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, a2, a4, a3, partial apply for specialized closure #1 in ExperiencesResolver.extractExperiences(from:score:with:with:), closure #3 in ExperiencesResolver.extractExperiences(from:score:with:with:)partial apply, closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:)partial apply, partial apply for specialized closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:));
}

uint64_t specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(double *a1, uint64_t a2, double a3, uint64_t a4, void *a5, uint64_t a6, void *(*a7)(uint64_t *__return_ptr, unint64_t), uint64_t a8)
{
  v458 = a8;
  v465 = a7;
  v477 = a6;
  v508 = a5;
  v461 = *&a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v444 = &v413 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v433 = &v413 - v17;
  v436 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v435 = *(v436 - 8);
  v18 = *(v435 + 64);
  v20 = MEMORY[0x28223BE20](v436, v19);
  v430 = &v413 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v434 = &v413 - v23;
  v419 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v418 = *(v419 - 8);
  v24 = *(v418 + 64);
  v26 = MEMORY[0x28223BE20](v419, v25);
  v415 = &v413 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v420 = &v413 - v29;
  v423 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v422 = *(v423 - 8);
  v30 = *(v422 + 64);
  v32 = MEMORY[0x28223BE20](v423, v31);
  v417 = &v413 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v421 = &v413 - v35;
  v429 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v428 = *(v429 - 8);
  v36 = *(v428 + 64);
  v38 = MEMORY[0x28223BE20](v429, v37);
  v425 = &v413 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v40);
  v427 = &v413 - v41;
  v441 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v440 = *(v441 - 8);
  v42 = *(v440 + 64);
  v44 = MEMORY[0x28223BE20](v441, v43);
  v432 = &v413 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44, v46);
  v445 = &v413 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
  v49 = *(*(v48 - 8) + 64);
  v51 = MEMORY[0x28223BE20](v48 - 8, v50);
  v443 = &v413 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51, v53);
  v453 = &v413 - v54;
  v460 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
  v459 = *(v460 - 8);
  v55 = *(v459 + 64);
  v57 = MEMORY[0x28223BE20](v460, v56);
  v442 = &v413 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v59);
  v446 = &v413 - v60;
  v455 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v454 = *(v455 - 8);
  v61 = *(v454 + 64);
  v63 = MEMORY[0x28223BE20](v455, v62);
  v439 = &v413 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v63, v65);
  v437 = &v413 - v67;
  MEMORY[0x28223BE20](v66, v68);
  v448 = &v413 - v69;
  v466 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v462 = *(v466 - 8);
  v70 = *(v462 + 8);
  v72 = MEMORY[0x28223BE20](v466, v71);
  v438 = &v413 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = MEMORY[0x28223BE20](v72, v74);
  v426 = &v413 - v76;
  v78 = MEMORY[0x28223BE20](v75, v77);
  v414 = &v413 - v79;
  v81 = MEMORY[0x28223BE20](v78, v80);
  v416 = &v413 - v82;
  v84 = MEMORY[0x28223BE20](v81, v83);
  v424 = &v413 - v85;
  v87 = MEMORY[0x28223BE20](v84, v86);
  v431 = &v413 - v88;
  v90 = MEMORY[0x28223BE20](v87, v89);
  v447 = &v413 - v91;
  MEMORY[0x28223BE20](v90, v92);
  v457 = &v413 - v93;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  v95 = *(*(v94 - 8) + 64);
  MEMORY[0x28223BE20](v94 - 8, v96);
  v449 = &v413 - v97;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  v99 = *(*(v98 - 8) + 64);
  MEMORY[0x28223BE20](v98 - 8, v100);
  v456 = &v413 - v101;
  v102 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v103 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102 - 8, v104);
  v467 = &v413 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  v472 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience();
  v452 = *(v472 - 8);
  v106 = *(v452 + 64);
  MEMORY[0x28223BE20](v472, v107);
  v464 = &v413 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  v471 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v470 = *(v471 - 8);
  v109 = *(v470 + 64);
  v111 = MEMORY[0x28223BE20](v471, v110);
  v451 = &v413 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = MEMORY[0x28223BE20](v111, v113);
  v450 = &v413 - v115;
  MEMORY[0x28223BE20](v114, v116);
  v468 = &v413 - v117;
  v475 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v474 = *(v475 - 8);
  v118 = *(v474 + 64);
  MEMORY[0x28223BE20](v475, v119);
  v482 = &v413 - ((v120 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
  v122 = *(*(v121 - 8) + 64);
  MEMORY[0x28223BE20](v121 - 8, v123);
  v125 = &v413 - v124;
  v126 = type metadata accessor for PommesRenderOptions.PromptType();
  v495 = *(v126 - 8);
  v127 = *(v495 + 64);
  MEMORY[0x28223BE20](v126, v128);
  v506 = &v413 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
  v131 = *(*(v130 - 8) + 64);
  MEMORY[0x28223BE20](v130 - 8, v132);
  v476 = &v413 - v133;
  v487 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience();
  v489 = *(v487 - 8);
  v134 = *(v489 + 64);
  v136 = MEMORY[0x28223BE20](v487, v135);
  v473 = &v413 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v136, v138);
  v479 = &v413 - v139;
  v140 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals.PromptType();
  v507 = *(v140 - 8);
  v141 = *(v507 + 64);
  v143 = MEMORY[0x28223BE20](v140, v142);
  v510 = &v413 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v143, v145);
  v509 = &v413 - v146;
  v147 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals();
  v504 = *(v147 - 8);
  v505 = v147;
  v148 = *(v504 + 64);
  MEMORY[0x28223BE20](v147, v149);
  v503 = (&v413 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0));
  v151 = type metadata accessor for Date();
  v501 = *(v151 - 8);
  v502 = v151;
  v152 = *(v501 + 64);
  MEMORY[0x28223BE20](v151, v153);
  v155 = &v413 - ((v154 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v484 = *(v156 - 8);
  v157 = *(v484 + 64);
  v159 = MEMORY[0x28223BE20](v156, v158);
  v469 = &v413 - ((v160 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v159, v161);
  v163 = &v413 - v162;
  v481 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding();
  v480 = *(v481 - 8);
  v164 = *(v480 + 64);
  MEMORY[0x28223BE20](v481, v165);
  v167 = &v413 - ((v166 + 15) & 0xFFFFFFFFFFFFFFF0);
  v490 = a1;
  v168 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverUnderstanding.getter();
  if (one-time initialization token for shared != -1)
  {
    v168 = swift_once();
  }

  v500 = &v413;
  v170 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v168, v169);
  v171 = &v409;
  v411 = v483;
  v412 = v167;
  v478 = v167;
  Date.init()();
  v172 = *(*v170 + 200);
  v485 = v156;
  v411 = &v409;
  v412 = v156;
  LOBYTE(v409) = 2;
  v486 = v163;
  v172(0xD00000000000001ELL, 0x80000002234DF280, 0, v155, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 134, "extractExperiences(from:score:with:with:)", 41, LODWORD(v409), v508);
  v463 = 0;
  (*(v501 + 8))(v155, v502);
  v173 = v503;
  v174 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.userPromptSignals.getter();
  v175 = MEMORY[0x223DDAFD0](v174);
  (*(v504 + 8))(v173, v505);
  v505 = *(v175 + 16);
  if (v505)
  {
    v176 = 0;
    v504 = v175 + ((*(v507 + 80) + 32) & ~*(v507 + 80));
    v502 = v507 + 88;
    v503 = (v507 + 16);
    LODWORD(v501) = *MEMORY[0x277D397A8];
    v494 = *MEMORY[0x277D39798];
    v492 = *MEMORY[0x277D397A0];
    v499 = (v495 + 56);
    v500 = (v507 + 8);
    v488 = *MEMORY[0x277D566C0];
    v496 = (v495 + 104);
    v491 = *MEMORY[0x277D566B8];
    v493 = *MEMORY[0x277D566C8];
    v498 = (v495 + 48);
    v508 = MEMORY[0x277D84F90];
    v497 = (v495 + 32);
    v177 = v509;
    while (1)
    {
      if (v176 >= *(v175 + 16))
      {
        __break(1u);
LABEL_89:

        v338 = *(v125 + 1);
        v508 = ((v125 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v509 = v338;
        (v338)(v177, v176);
        goto LABEL_90;
      }

      v173 = v507;
      v178 = *(v507 + 16);
      v178(v177, v504 + *(v507 + 72) * v176, v140);
      v171 = v177;
      v179 = v510;
      v178(v510, v171, v140);
      v180 = v173[11](v179, v140);
      if (v180 == v501)
      {
        (*v500)(v171, v140);
        (*v496)(v125, v493, v126);
        (*v499)(v125, 0, 1, v126);
        v177 = v171;
      }

      else
      {
        if (v180 == v494)
        {
          v177 = v509;
          (*v500)(v509, v140);
          (*v496)(v125, v491, v126);
        }

        else
        {
          v177 = v509;
          if (v180 != v492)
          {
            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v181 = type metadata accessor for Logger();
            __swift_project_value_buffer(v181, static Logger.pommes);
            v182 = Logger.logObject.getter();
            v183 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v182, v183))
            {
              v184 = swift_slowAlloc();
              *v184 = 0;
              _os_log_impl(&dword_2232BB000, v182, v183, "siriInstruction.userPromptSignals.promptTypes contains unhandled promptType", v184, 2u);
              v185 = v184;
              v177 = v509;
              MEMORY[0x223DE0F80](v185, -1, -1);
            }

            v173 = v500;
            v186 = *v500;
            (*v500)(v177, v140);
            (*v499)(v125, 1, 1, v126);
            v186(v510, v140);
            goto LABEL_20;
          }

          (*v500)(v509, v140);
          (*v496)(v125, v488, v126);
        }

        (*v499)(v125, 0, 1, v126);
      }

LABEL_20:
      if ((*v498)(v125, 1, v126) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v125, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
      }

      else
      {
        v173 = *v497;
        (*v497)(v506, v125, v126);
        v187 = v508;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v187 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v187[2] + 1, 1, v187);
        }

        v189 = v187[2];
        v188 = v187[3];
        v190 = v187;
        if (v189 >= v188 >> 1)
        {
          v190 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v188 > 1, v189 + 1, 1, v187);
        }

        v508 = v190;
        *(v190 + 16) = v189 + 1;
        (v173)(v190 + ((*(v495 + 80) + 32) & ~*(v495 + 80)) + *(v495 + 72) * v189, v506, v126);
        v177 = v509;
      }

      if (v505 == ++v176)
      {
        goto LABEL_27;
      }
    }
  }

  v508 = MEMORY[0x277D84F90];
LABEL_27:

  MEMORY[0x28223BE20](v191, v192);
  v411 = v508;
  v193 = type metadata accessor for PommesRenderOptions();
  v194 = objc_allocWithZone(v193);
  v195 = PommesRenderOptions.init(_:)();
  v512 = MEMORY[0x277D84F90];
  v196 = v476;
  v197 = v490;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.experience.getter();
  v198 = v487;
  if ((*(v489 + 48))(v196, 1, v487) == 1)
  {

    outlined destroy of MediaUserStateCenter?(v196, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);

    v199 = MEMORY[0x277D84F90];
    v200 = v485;
LABEL_29:
    v126 = v486;
LABEL_66:
    v273 = v481;
    v274 = v480;
    v275 = v478;
    goto LABEL_67;
  }

  v201 = v489;
  v202 = v479;
  (*(v489 + 32))(v479, v196, v198);
  v203 = v473;
  (*(v201 + 16))(v473, v202, v198);
  v204 = (*(v201 + 88))(v203, v198);
  v200 = v485;
  v126 = v486;
  if (v204 == *MEMORY[0x277D38D80])
  {
    v510 = v195;
    (*(v489 + 96))(v203, v198);
    (*(v474 + 32))(v482, v203, v475);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v205 = type metadata accessor for Logger();
    __swift_project_value_buffer(v205, static Logger.pommes);
    v206 = Logger.logObject.getter();
    v207 = static os_log_type_t.debug.getter();
    v208 = os_log_type_enabled(v206, v207);
    v209 = v472;
    v210 = v464;
    if (v208)
    {
      v211 = swift_slowAlloc();
      *v211 = 0;
      _os_log_impl(&dword_2232BB000, v206, v207, "Adding a server driven experience", v211, 2u);
      MEMORY[0x223DE0F80](v211, -1, -1);
    }

    if (Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.hasPrimaryExperience.getter())
    {
      v212 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
      MEMORY[0x223DDAE00](v212);
      v213 = v126;
      v214 = *(v452 + 8);
      v214(v210, v209);
      (*(v484 + 16))(v469, v213, v200);
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
      v215 = objc_allocWithZone(type metadata accessor for GenericExperience());
      v216 = v510;
      v217 = v472;
      v218 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
      LOBYTE(v213) = Apple_Parsec_Siri_V2alpha_SingleExperience.hasResultEntity.getter();
      v214(v210, v217);
      if (v213)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR);
        v219 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity() - 8);
        v220 = *(v219 + 72);
        v221 = (*(v219 + 80) + 32) & ~*(v219 + 80);
        *(swift_allocObject() + 16) = xmmword_2234CF920;
        v222 = v218;
        Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
        v200 = v485;
        Apple_Parsec_Siri_V2alpha_SingleExperience.resultEntity.getter();
        v214(v210, v472);
        dispatch thunk of Experience.associatedEntities.setter();

        v197 = v490;
      }

      if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
      {
        v223 = v456;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
        v224 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
        (*(*(v224 - 8) + 56))(v223, 0, 1, v224);
        dispatch thunk of GenericExperience.serverSuggestions.setter();
      }

      v225 = v218;
      MEMORY[0x223DDF820]();
      v126 = v486;
      v198 = v487;
      if (*((v512 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v512 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v406 = *((v512 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v226 = MEMORY[0x223DDB9D0]();
    MEMORY[0x28223BE20](v226, v227);
    v409 = a3;
    v410 = v126;
    v411 = v197;
    v228 = v510;
    v412 = v510;
    v229 = specialized Sequence.compactMap<A>(_:)(v465, &v407, v226);

    v230 = v482;
    v231 = specialized Array.append<A>(contentsOf:)(v229);
    v232 = *(MEMORY[0x223DDB9C0](v231) + 16);

    if (v232)
    {
      v233 = v483;
      v234 = specialized ExperiencesResolver.isSquawkResponse(serverExp:)();
      v235 = specialized ExperiencesResolver.shouldPreserveResultSpaceIfPossible(for:)();
      MEMORY[0x223DDB9C0]();
      (*(v484 + 16))(v469, v126, v200);
      v236 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
      MEMORY[0x28223BE20](v236, v237);
      v407 = v230;
      LOBYTE(v408) = v234 & 1;
      v409 = v461;
      v410 = v233;
      LOBYTE(v411) = v235 & 1;
      v412 = v508;
      v238 = objc_allocWithZone(v193);
      PommesRenderOptions.init(_:)();

      v239 = objc_allocWithZone(type metadata accessor for GenericExperience());
      v240 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      dispatch thunk of Experience.associatedEntities.setter();
      if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
      {
        v241 = v456;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
        v242 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
        (*(*(v242 - 8) + 56))(v241, 0, 1, v242);
        dispatch thunk of GenericExperience.serverSuggestions.setter();
      }

      v243 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasSageExperience.getter();
      if (v243)
      {
        v244 = v449;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.sageExperience.getter();
        v245 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
        (*(*(v245 - 8) + 56))(v244, 0, 1, v245);
        v243 = dispatch thunk of GenericExperience.sageExperience.setter();
      }

      MEMORY[0x223DDF820](v243);
      v126 = v486;
      v246 = v487;
      v247 = v489;
      v200 = v485;
      v248 = v510;
      if (*((v512 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v512 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v405 = *((v512 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v247 + 8))(v479, v246);
      v230 = v482;
    }

    else
    {
      (*(v489 + 8))(v479, v198);
    }

    v199 = v512;
    (*(v474 + 8))(v230, v475);
    goto LABEL_66;
  }

  v249 = v204;
  v250 = *MEMORY[0x277D38D78];

  if (v249 != v250)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v268 = type metadata accessor for Logger();
    __swift_project_value_buffer(v268, static Logger.pommes);
    v269 = Logger.logObject.getter();
    v270 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v269, v270))
    {
      v271 = swift_slowAlloc();
      *v271 = 0;
      _os_log_impl(&dword_2232BB000, v269, v270, "unexpected experience component", v271, 2u);
      MEMORY[0x223DE0F80](v271, -1, -1);
    }

    v272 = *(v489 + 8);
    v272(v479, v198);
    v272(v203, v198);

    v199 = MEMORY[0x277D84F90];
    goto LABEL_66;
  }

  (*(v489 + 96))(v203, v198);
  v251 = v468;
  (*(v470 + 32))(v468, v203, v471);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v252 = type metadata accessor for Logger();
  v509 = __swift_project_value_buffer(v252, static Logger.pommes);
  v253 = Logger.logObject.getter();
  v254 = static os_log_type_t.debug.getter();
  v255 = os_log_type_enabled(v253, v254);
  v256 = v453;
  if (v255)
  {
    v257 = swift_slowAlloc();
    *v257 = 0;
    _os_log_impl(&dword_2232BB000, v253, v254, "Adding a client driven experience", v257, 2u);
    MEMORY[0x223DE0F80](v257, -1, -1);
  }

  v510 = v195;

  v258 = MEMORY[0x223DDB8B0]();
  v259 = v466;
  if (!*(v258 + 16))
  {

    goto LABEL_69;
  }

  v260 = v454;
  v261 = v448;
  v262 = v455;
  (*(v454 + 16))(v448, v258 + ((*(v260 + 80) + 32) & ~*(v260 + 80)), v455);

  v263 = v447;
  Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
  (*(v260 + 8))(v261, v262);
  v264 = v462;
  v265 = v457;
  (*(v462 + 4))(v457, v263, v259);
  Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
  v266 = v459;
  v267 = v460;
  if ((*(v459 + 48))(v256, 1, v460) == 1)
  {
    v264[1](v265, v259);
    outlined destroy of MediaUserStateCenter?(v256, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
    v198 = v487;
LABEL_69:
    v277 = v470;
    v278 = *(v470 + 16);
    v279 = v450;
    v280 = v471;
    v278(v450, v251, v471);
    v281 = Logger.logObject.getter();
    v282 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v281, v282))
    {
      LODWORD(v507) = v282;
      v283 = swift_slowAlloc();
      *v283 = 67109120;
      v284 = MEMORY[0x223DDB8B0]();
      if (*(v284 + 16))
      {
        v285 = v454;
        v286 = *(v454 + 16);
        v287 = v284 + ((*(v285 + 80) + 32) & ~*(v285 + 80));
        v288 = v437;
        v508 = v278;
        v289 = v455;
        v286(v437, v287, v455);

        v290 = v444;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        v291 = v285;
        v279 = v450;
        v292 = v289;
        v278 = v508;
        (*(v291 + 8))(v288, v292);
        v293 = 0;
        v294 = 1;
      }

      else
      {

        v294 = 0;
        v293 = 1;
        v290 = v444;
      }

      (*(v462 + 7))(v290, v293, 1, v466);
      outlined destroy of MediaUserStateCenter?(v290, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
      v280 = v471;
      v508 = *(v277 + 8);
      (v508)(v279, v471);
      *(v283 + 4) = v294;
      _os_log_impl(&dword_2232BB000, v281, v507, "Has clientComponent? %{BOOL}d", v283, 8u);
      MEMORY[0x223DE0F80](v283, -1, -1);
      v251 = v468;
    }

    else
    {
      v508 = *(v277 + 8);
      (v508)(v279, v280);
    }

    v320 = v451;
    v278(v451, v251, v280);
    v321 = Logger.logObject.getter();
    v322 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v321, v322))
    {
      v323 = swift_slowAlloc();
      *v323 = 67109120;
      v324 = MEMORY[0x223DDB8B0]();
      v325 = v485;
      if (*(v324 + 16))
      {
        v326 = v454;
        v327 = v439;
        v328 = v455;
        (*(v454 + 16))(v439, v324 + ((*(v326 + 80) + 32) & ~*(v326 + 80)), v455);

        v329 = v438;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        (*(v326 + 8))(v327, v328);
        v330 = v443;
        Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
        v331 = v329;
        v320 = v451;
        (*(v462 + 1))(v331, v466);
        v332 = (*(v459 + 48))(v330, 1, v460) != 1;
      }

      else
      {

        v330 = v443;
        (*(v459 + 56))(v443, 1, 1, v460);
        v332 = 0;
      }

      outlined destroy of MediaUserStateCenter?(v330, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
      v336 = v320;
      v337 = v471;
      v334 = v508;
      (v508)(v336, v471);
      *(v323 + 4) = v332;
      v280 = v337;
      _os_log_impl(&dword_2232BB000, v321, v322, "Has domainComponent? %{BOOL}d", v323, 8u);
      MEMORY[0x223DE0F80](v323, -1, -1);
      v335 = v510;
      v200 = v325;
    }

    else
    {
      v333 = v320;
      v334 = v508;
      (v508)(v333, v280);
      v200 = v485;
      v335 = v510;
    }

    v334(v468, v280);
    (*(v489 + 8))(v479, v198);
    v199 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v295 = v446;
  (*(v266 + 32))(v446, v256, v267);
  v296 = v442;
  (*(v266 + 16))(v442, v295, v267);
  v297 = (*(v266 + 88))(v296, v267);
  v298 = v487;
  if (v297 == *MEMORY[0x277D39A50])
  {
    (*(v266 + 96))(v296, v267);
    (*(v440 + 32))(v445, v296, v441);
    v125 = v462;
    v177 = v431;
    v173 = v457;
    v176 = v466;
    (*(v462 + 2))(v431, v457, v466);
    v171 = Logger.logObject.getter();
    v299 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v171, v299))
    {
      goto LABEL_89;
    }

    v300 = swift_slowAlloc();
    v301 = swift_slowAlloc();
    v511 = v301;
    *v300 = 136315138;
    v302 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v304 = v303;
    v305 = *(v125 + 1);
    v508 = ((v125 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
    v509 = v305;
    (v305)(v177, v176);
    v306 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v302, v304, &v511);
    v126 = v486;

    *(v300 + 4) = v306;
    _os_log_impl(&dword_2232BB000, v171, v299, "Adding AudioExperience with identifier %s to PommesResponse", v300, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v301);
    MEMORY[0x223DE0F80](v301, -1, -1);
    v307 = v300;
    v173 = v457;
    MEMORY[0x223DE0F80](v307, -1, -1);

LABEL_90:
    v339 = *&v461;
    v507 = type metadata accessor for AudioExperience();
    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v340 = v440;
    v341 = v441;
    (*(v440 + 16))(v432, v445, v441);
    (*(v484 + 16))(v469, v126, v485);
    outlined init with copy of ClientExperienceSignals?(v339, v433);
    v342 = v173;
    v343 = v510;
    v344 = AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v199 = swift_allocObject();
    *(v199 + 16) = xmmword_2234D0FE0;
    *(v199 + 32) = v344;

    (*(v340 + 8))(v445, v341);
    (*(v459 + 8))(v446, v460);
    v345 = v342;
    goto LABEL_107;
  }

  if (v297 == *MEMORY[0x277D39A58])
  {
    (*(v266 + 96))(v296, v267);
    (*(v435 + 32))(v434, v296, v436);
    v308 = v462;
    v309 = v426;
    v310 = v466;
    (*(v462 + 2))(v426, v457, v466);
    v311 = Logger.logObject.getter();
    v312 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v311, v312))
    {
      v313 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      v511 = v314;
      *v313 = 136315138;
      v315 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v317 = v316;
      v318 = *(v308 + 1);
      v508 = ((v308 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v509 = v318;
      (v318)(v309, v310);
      v319 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v315, v317, &v511);
      v126 = v486;

      *(v313 + 4) = v319;
      _os_log_impl(&dword_2232BB000, v311, v312, "Adding VideoExperience with identifier %s to PommesResponse", v313, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v314);
      MEMORY[0x223DE0F80](v314, -1, -1);
      MEMORY[0x223DE0F80](v313, -1, -1);
    }

    else
    {

      v358 = *(v308 + 1);
      v508 = ((v308 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v509 = v358;
      (v358)(v309, v310);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v359 = v435;
    v360 = v434;
    v361 = v436;
    (*(v435 + 16))(v430, v434, v436);
    (*(v484 + 16))(v469, v126, v485);
    objc_allocWithZone(type metadata accessor for VideoExperience());
    v362 = v510;
    v363 = VideoExperience.init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
LABEL_106:
    v392 = v363;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v199 = swift_allocObject();
    *(v199 + 16) = xmmword_2234D0FE0;
    *(v199 + 32) = v392;

    (*(v359 + 8))(v360, v361);
    (*(v459 + 8))(v446, v460);
    v345 = v457;
LABEL_107:
    (v509)(v345, v466);
    v200 = v485;
    (*(v470 + 8))(v468, v471);
    (*(v489 + 8))(v479, v487);
    goto LABEL_66;
  }

  if (v297 == *MEMORY[0x277D39A40])
  {
    (*(v266 + 96))(v296, v267);
    (*(v428 + 32))(v427, v296, v429);
    v346 = v462;
    v347 = v424;
    v348 = v466;
    (*(v462 + 2))(v424, v457, v466);
    v349 = Logger.logObject.getter();
    v350 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v349, v350))
    {
      v351 = swift_slowAlloc();
      v352 = swift_slowAlloc();
      v511 = v352;
      *v351 = 136315138;
      v353 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v355 = v354;
      v356 = *(v346 + 1);
      v508 = ((v346 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v509 = v356;
      (v356)(v347, v348);
      v357 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v353, v355, &v511);
      v126 = v486;

      *(v351 + 4) = v357;
      _os_log_impl(&dword_2232BB000, v349, v350, "Adding GeoExperience with identifier %s to PommesResponse", v351, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v352);
      MEMORY[0x223DE0F80](v352, -1, -1);
      MEMORY[0x223DE0F80](v351, -1, -1);
    }

    else
    {

      v376 = *(v346 + 1);
      v508 = ((v346 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v509 = v376;
      (v376)(v347, v348);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v359 = v428;
    v360 = v427;
    v361 = v429;
    (*(v428 + 16))(v425, v427, v429);
    (*(v484 + 16))(v469, v126, v485);
    objc_allocWithZone(type metadata accessor for GeoExperience());
    v362 = v510;
    v363 = GeoExperience.init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
    goto LABEL_106;
  }

  if (v297 == *MEMORY[0x277D39A48])
  {
    (*(v266 + 96))(v296, v267);
    (*(v422 + 32))(v421, v296, v423);
    v364 = v462;
    v365 = v416;
    v366 = v466;
    (*(v462 + 2))(v416, v457, v466);
    v367 = Logger.logObject.getter();
    v368 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v367, v368))
    {
      v369 = swift_slowAlloc();
      v370 = swift_slowAlloc();
      v511 = v370;
      *v369 = 136315138;
      v371 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v373 = v372;
      v374 = *(v364 + 1);
      v508 = ((v364 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v509 = v374;
      (v374)(v365, v366);
      v375 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v371, v373, &v511);
      v126 = v486;

      *(v369 + 4) = v375;
      _os_log_impl(&dword_2232BB000, v367, v368, "Adding AppsExperience with identfier %s to PommesResponse", v369, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v370);
      MEMORY[0x223DE0F80](v370, -1, -1);
      MEMORY[0x223DE0F80](v369, -1, -1);
    }

    else
    {

      v391 = *(v364 + 1);
      v508 = ((v364 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v509 = v391;
      (v391)(v365, v366);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v359 = v422;
    v360 = v421;
    v361 = v423;
    (*(v422 + 16))(v417, v421, v423);
    (*(v484 + 16))(v469, v126, v485);
    objc_allocWithZone(type metadata accessor for AppLaunchExperience());
    v362 = v510;
    v363 = AppLaunchExperience.init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
    goto LABEL_106;
  }

  if (v297 == *MEMORY[0x277D39A38])
  {
    (*(v266 + 96))(v296, v267);
    (*(v418 + 32))(v420, v296, v419);
    v377 = v462;
    v378 = v414;
    v379 = v457;
    v380 = v466;
    (*(v462 + 2))(v414, v457, v466);
    v381 = Logger.logObject.getter();
    v382 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v381, v382))
    {
      v383 = swift_slowAlloc();
      v384 = swift_slowAlloc();
      v511 = v384;
      *v383 = 136315138;
      v385 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v387 = v386;
      v388 = *(v377 + 1);
      v508 = ((v377 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v509 = v388;
      (v388)(v378, v380);
      v389 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v385, v387, &v511);
      v126 = v486;

      *(v383 + 4) = v389;
      _os_log_impl(&dword_2232BB000, v381, v382, "Adding DeviceExpertExperience with identifier %s to PommesResponse", v383, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v384);
      MEMORY[0x223DE0F80](v384, -1, -1);
      v390 = v383;
      v379 = v457;
      MEMORY[0x223DE0F80](v390, -1, -1);
    }

    else
    {

      v399 = *(v377 + 1);
      v508 = ((v377 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v509 = v399;
      (v399)(v378, v380);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v400 = v418;
    v401 = v419;
    (*(v418 + 16))(v415, v420, v419);
    (*(v484 + 16))(v469, v126, v485);
    v402 = objc_allocWithZone(type metadata accessor for DeviceExpertExperience());
    v403 = v379;
    v404 = DeviceExpertExperience.init(pluginId:deviceExpertClientComponent:queryConfidenceScore:userDialogAct:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v199 = swift_allocObject();
    *(v199 + 16) = xmmword_2234D0FE0;
    *(v199 + 32) = v404;

    (*(v400 + 8))(v420, v401);
    (*(v459 + 8))(v446, v460);
    (v509)(v403, v466);
    v200 = v485;
    (*(v470 + 8))(v468, v471);
    (*(v489 + 8))(v479, v298);
    goto LABEL_66;
  }

  v393 = Logger.logObject.getter();
  v394 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v393, v394))
  {
    v395 = swift_slowAlloc();
    *v395 = 0;
    _os_log_impl(&dword_2232BB000, v393, v394, "Unexpected DomainComponent encountered when building Client Driven experience", v395, 2u);
    v396 = v395;
    v266 = v459;
    MEMORY[0x223DE0F80](v396, -1, -1);
  }

  v397 = *(v266 + 8);
  v398 = v460;
  v397(v446, v460);
  (*(v462 + 1))(v457, v466);
  (*(v470 + 8))(v468, v471);
  (*(v489 + 8))(v479, v298);
  v397(v296, v398);

  v199 = MEMORY[0x277D84F90];
  v273 = v481;
  v274 = v480;
  v275 = v478;
  v200 = v485;
LABEL_67:
  (*(v484 + 8))(v126, v200);
  (*(v274 + 8))(v275, v273);
  return v199;
}

uint64_t specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(void *a1, uint64_t a2, double a3)
{
  v458 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v490 = &v410 - v8;
  v491 = type metadata accessor for PommesRenderOptions.PromptType();
  v489 = *(v491 - 8);
  v9 = *(v489 + 64);
  MEMORY[0x28223BE20](v491, v10);
  v502 = &v410 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v430 = &v410 - v15;
  v433 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v432 = *(v433 - 8);
  v16 = *(v432 + 64);
  v18 = MEMORY[0x28223BE20](v433, v17);
  v427 = &v410 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v20);
  v431 = &v410 - v21;
  v417 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v416 = *(v417 - 8);
  v22 = *(v416 + 64);
  v24 = MEMORY[0x28223BE20](v417, v23);
  v412 = &v410 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v26);
  v415 = &v410 - v27;
  v420 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v419 = *(v420 - 8);
  v28 = *(v419 + 64);
  v30 = MEMORY[0x28223BE20](v420, v29);
  v414 = &v410 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v418 = &v410 - v33;
  v426 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v425 = *(v426 - 8);
  v34 = *(v425 + 64);
  v36 = MEMORY[0x28223BE20](v426, v35);
  v422 = &v410 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v424 = &v410 - v39;
  v438 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v437 = *(v438 - 8);
  v40 = *(v437 + 64);
  v42 = MEMORY[0x28223BE20](v438, v41);
  v429 = &v410 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v44);
  v442 = &v410 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46 - 8, v48);
  v440 = &v410 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
  v51 = *(*(v50 - 8) + 64);
  v53 = MEMORY[0x28223BE20](v50 - 8, v52);
  v441 = &v410 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v53, v55);
  v451 = &v410 - v56;
  v457 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
  v456 = *(v457 - 8);
  v57 = *(v456 + 64);
  v59 = MEMORY[0x28223BE20](v457, v58);
  v439 = &v410 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59, v61);
  v443 = &v410 - v62;
  v454 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v453 = *(v454 - 8);
  v63 = *(v453 + 64);
  v65 = MEMORY[0x28223BE20](v454, v64);
  v436 = &v410 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x28223BE20](v65, v67);
  v434 = &v410 - v69;
  MEMORY[0x28223BE20](v68, v70);
  v445 = &v410 - v71;
  v459 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v460 = *(v459 - 8);
  v72 = *(v460 + 64);
  v74 = MEMORY[0x28223BE20](v459, v73);
  v423 = &v410 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = MEMORY[0x28223BE20](v74, v76);
  v411 = &v410 - v78;
  v80 = MEMORY[0x28223BE20](v77, v79);
  v413 = &v410 - v81;
  v83 = MEMORY[0x28223BE20](v80, v82);
  v421 = &v410 - v84;
  v86 = MEMORY[0x28223BE20](v83, v85);
  v428 = &v410 - v87;
  v89 = MEMORY[0x28223BE20](v86, v88);
  v435 = &v410 - v90;
  v92 = MEMORY[0x28223BE20](v89, v91);
  v444 = &v410 - v93;
  MEMORY[0x28223BE20](v92, v94);
  v461 = &v410 - v95;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  v97 = *(*(v96 - 8) + 64);
  MEMORY[0x28223BE20](v96 - 8, v98);
  v446 = &v410 - v99;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  v101 = *(*(v100 - 8) + 64);
  MEMORY[0x28223BE20](v100 - 8, v102);
  v455 = &v410 - v103;
  v104 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v105 = *(*(v104 - 8) + 64);
  MEMORY[0x28223BE20](v104 - 8, v106);
  v463 = &v410 - ((v107 + 15) & 0xFFFFFFFFFFFFFFF0);
  v450 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience();
  v449 = *(v450 - 8);
  v108 = *(v449 + 64);
  MEMORY[0x28223BE20](v450, v109);
  v448 = &v410 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  v467 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v466 = *(v467 - 8);
  v111 = *(v466 + 64);
  v113 = MEMORY[0x28223BE20](v467, v112);
  v452 = &v410 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = MEMORY[0x28223BE20](v113, v115);
  v447 = &v410 - v117;
  MEMORY[0x28223BE20](v116, v118);
  v464 = &v410 - v119;
  v469 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v468 = *(v469 - 8);
  v120 = *(v468 + 64);
  MEMORY[0x28223BE20](v469, v121);
  v476 = &v410 - ((v122 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
  v124 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123 - 8, v125);
  v471 = &v410 - v126;
  v479 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience();
  v477 = *(v479 - 8);
  v127 = *(v477 + 64);
  v129 = MEMORY[0x28223BE20](v479, v128);
  v470 = &v410 - ((v130 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v129, v131);
  v473 = &v410 - v132;
  v133 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals.PromptType();
  v503 = *(v133 - 8);
  v134 = *(v503 + 64);
  v136 = MEMORY[0x28223BE20](v133, v135);
  v504 = &v410 - ((v137 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v136, v138);
  v488 = &v410 - v139;
  v505 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals();
  v500 = *(v505 - 1);
  v140 = *(v500 + 8);
  MEMORY[0x28223BE20](v505, v141);
  v143 = &v410 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  isa = type metadata accessor for Date();
  v144 = *(isa - 8);
  v145 = *(v144 + 64);
  MEMORY[0x28223BE20](isa, v146);
  v148 = &v410 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v480 = *(v149 - 8);
  v150 = *(v480 + 64);
  v152 = MEMORY[0x28223BE20](v149, v151);
  v465 = &v410 - ((v153 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v152, v154);
  v156 = &v410 - v155;
  v475 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding();
  v474 = *(v475 - 8);
  v157 = *(v474 + 64);
  MEMORY[0x28223BE20](v475, v158);
  v160 = &v410 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  v483 = a1;
  v161 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverUnderstanding.getter();
  if (one-time initialization token for shared != -1)
  {
    v161 = swift_once();
  }

  v499 = &v410;
  v163 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v161, v162);
  v472 = v160;
  v409 = v160;
  Date.init()();
  v164 = *(*v163 + 200);
  v481 = v149;
  v408 = v407;
  v409 = v149;
  LOBYTE(v407[0]) = 2;
  v478 = v156;
  v164(0xD00000000000001ELL, 0x80000002234DF280, 0, v148, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 134, "extractExperiences(from:score:with:with:)", 41, v407[0], partial apply for specialized closure #1 in ExperiencesResolver.extractExperiences(from:score:with:with:));
  v462 = 0;
  v166 = *(v144 + 8);
  v165 = v144 + 8;
  v166(v148, isa);
  v167 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.userPromptSignals.getter();
  v168 = MEMORY[0x223DDAFD0](v167);
  (*(v500 + 1))(v143, v505);
  isa = v168[2].isa;
  if (isa)
  {
    v169 = 0;
    v500 = v168 + ((*(v503 + 80) + 32) & ~*(v503 + 80));
    v498 = v503 + 88;
    v499 = (v503 + 16);
    v497 = *MEMORY[0x277D397A8];
    v487 = *MEMORY[0x277D39798];
    v485 = *MEMORY[0x277D397A0];
    v496 = (v503 + 8);
    v495 = (v489 + 56);
    v482 = *MEMORY[0x277D566C0];
    v492 = (v489 + 104);
    v484 = *MEMORY[0x277D566B8];
    v486 = *MEMORY[0x277D566C8];
    v494 = (v489 + 48);
    v505 = MEMORY[0x277D84F90];
    v493 = (v489 + 32);
    v171 = v490;
    v170 = v491;
    v172 = v488;
    v173 = (v503 + 16);
    while (1)
    {
      if (v169 >= v168[2].isa)
      {
        __break(1u);
LABEL_90:

        v333 = *(v165 + 8);
        v503 = (v165 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v505 = v333;
        (v333)(v173, v172);
        goto LABEL_91;
      }

      v174 = v168;
      v165 = v503;
      v175 = *(v503 + 16);
      v175(v172, &v500[*(v503 + 72) * v169], v133);
      v176 = v172;
      v177 = v504;
      v175(v504, v176, v133);
      v178 = (*(v165 + 88))(v177, v133);
      if (v178 == v497)
      {
        (*v496)(v176, v133);
        (*v492)(v171, v486, v170);
        (*v495)(v171, 0, 1, v170);
        v172 = v176;
      }

      else
      {
        if (v178 != v487)
        {
          v172 = v488;
          v168 = v174;
          if (v178 == v485)
          {
            (*v496)(v488, v133);
            (*v492)(v171, v482, v170);
            (*v495)(v171, 0, 1, v170);
          }

          else
          {
            if (one-time initialization token for pommes != -1)
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
              _os_log_impl(&dword_2232BB000, v187, v188, "siriInstruction.userPromptSignals.promptTypes contains unhandled promptType", v189, 2u);
              v190 = v189;
              v171 = v490;
              MEMORY[0x223DE0F80](v190, -1, -1);
            }

            v191 = *v496;
            (*v496)(v172, v133);
            v170 = v491;
            (*v495)(v171, 1, 1, v491);
            v191(v504, v133);
          }

          goto LABEL_13;
        }

        v172 = v488;
        (*v496)(v488, v133);
        (*v492)(v171, v484, v170);
        (*v495)(v171, 0, 1, v170);
      }

      v168 = v174;
LABEL_13:
      if ((*v494)(v171, 1, v170) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v171, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
      }

      else
      {
        v179 = v170;
        v180 = *v493;
        (*v493)(v502, v171, v179);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v181 = v505;
        }

        else
        {
          v181 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v505[2] + 1, 1, v505);
        }

        v183 = v181[2];
        v182 = v181[3];
        if (v183 >= v182 >> 1)
        {
          v181 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v182 > 1, v183 + 1, 1, v181);
        }

        v181[2] = v183 + 1;
        v184 = (*(v489 + 80) + 32) & ~*(v489 + 80);
        v505 = v181;
        v185 = v491;
        v180(v181 + v184 + *(v489 + 72) * v183, v502, v491);
        v170 = v185;
        v171 = v490;
      }

      v169 = (v169 + 1);
      if (isa == v169)
      {
        goto LABEL_28;
      }
    }
  }

  v505 = MEMORY[0x277D84F90];
LABEL_28:

  MEMORY[0x28223BE20](v192, v193);
  v408 = v505;
  v194 = type metadata accessor for PommesRenderOptions();
  v195 = objc_allocWithZone(v194);
  v196 = PommesRenderOptions.init(_:)();
  v507 = MEMORY[0x277D84F90];
  v197 = v471;
  v198 = v483;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.experience.getter();
  v171 = v477;
  v199 = v479;
  if ((*(v477 + 48))(v197, 1, v479) == 1)
  {

    outlined destroy of MediaUserStateCenter?(v197, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);

    v200 = MEMORY[0x277D84F90];
    v201 = v481;
    v202 = v478;
LABEL_87:
    v329 = v475;
    v330 = v474;
    v331 = v472;
    goto LABEL_88;
  }

  v203 = v473;
  (*(v171 + 32))(v473, v197, v199);
  v204 = v470;
  (*(v171 + 16))(v470, v203, v199);
  v205 = (*(v171 + 88))(v204, v199);
  v201 = v481;
  v202 = v478;
  if (v205 == *MEMORY[0x277D38D80])
  {
    (*(v171 + 96))(v204, v199);
    (*(v468 + 32))(v476, v204, v469);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v206 = type metadata accessor for Logger();
    __swift_project_value_buffer(v206, static Logger.pommes);
    v207 = Logger.logObject.getter();
    v208 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v207, v208))
    {
      v209 = swift_slowAlloc();
      *v209 = 0;
      _os_log_impl(&dword_2232BB000, v207, v208, "Adding a server driven experience", v209, 2u);
      MEMORY[0x223DE0F80](v209, -1, -1);
    }

    v210 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.hasPrimaryExperience.getter();
    v504 = v196;
    if (v210)
    {
      v503 = v194;
      v211 = v448;
      v212 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
      MEMORY[0x223DDAE00](v212);
      v213 = *(v449 + 8);
      v214 = v202;
      v215 = v450;
      v213(v211, v450);
      (*(v480 + 16))(v465, v214, v201);
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
      v216 = objc_allocWithZone(type metadata accessor for GenericExperience());
      v217 = v196;
      v218 = v215;
      v219 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
      LOBYTE(v214) = Apple_Parsec_Siri_V2alpha_SingleExperience.hasResultEntity.getter();
      v213(v211, v215);
      if (v214)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR);
        v220 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity() - 8);
        v221 = *(v220 + 72);
        v222 = (*(v220 + 80) + 32) & ~*(v220 + 80);
        *(swift_allocObject() + 16) = xmmword_2234CF920;
        v223 = v219;
        Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
        Apple_Parsec_Siri_V2alpha_SingleExperience.resultEntity.getter();
        v213(v211, v218);
        dispatch thunk of Experience.associatedEntities.setter();

        v198 = v483;
      }

      if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
      {
        v224 = v455;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
        v225 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
        (*(*(v225 - 8) + 56))(v224, 0, 1, v225);
        dispatch thunk of GenericExperience.serverSuggestions.setter();
      }

      v226 = v219;
      MEMORY[0x223DDF820]();
      v194 = v503;
      v196 = v504;
      v199 = v479;
      v201 = v481;
      v171 = v477;
      v202 = v478;
      if (*((v507 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v507 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v404 = *((v507 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v227 = MEMORY[0x223DDB9D0]();
    MEMORY[0x28223BE20](v227, v228);
    *v407 = a3;
    v407[1] = v202;
    v408 = v198;
    v409 = v196;
    v229 = specialized Sequence.compactMap<A>(_:)(closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:)partial apply, &v405, v227);

    v230 = v476;
    v231 = specialized Array.append<A>(contentsOf:)(v229);
    v232 = *(MEMORY[0x223DDB9C0](v231) + 16);

    if (v232)
    {
      v233 = v201;
      v234 = specialized ExperiencesResolver.isSquawkResponse(serverExp:)();
      v235 = _s21SiriInformationSearch19ExperiencesResolverPAAE35shouldPreserveResultSpaceIfPossible33_7FAE26C68B95D22123CF4ADCD6DDA6083forSb10PegasusAPI013Apple_Parsec_A31_V2alpha_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt0g5Tm();
      MEMORY[0x223DDB9C0]();
      (*(v480 + 16))(v465, v202, v233);
      v236 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
      MEMORY[0x28223BE20](v236, v237);
      v405 = v230;
      LOBYTE(v406) = v234 & 1;
      v407[0] = v458;
      LOBYTE(v408) = v235 & 1;
      v409 = v505;
      v238 = objc_allocWithZone(v194);
      PommesRenderOptions.init(_:)();

      v239 = objc_allocWithZone(type metadata accessor for GenericExperience());
      v240 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      dispatch thunk of Experience.associatedEntities.setter();
      if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
      {
        v241 = v455;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
        v242 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
        (*(*(v242 - 8) + 56))(v241, 0, 1, v242);
        dispatch thunk of GenericExperience.serverSuggestions.setter();
      }

      v243 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasSageExperience.getter();
      if (v243)
      {
        v244 = v446;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.sageExperience.getter();
        v245 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
        (*(*(v245 - 8) + 56))(v244, 0, 1, v245);
        v243 = dispatch thunk of GenericExperience.sageExperience.setter();
      }

      MEMORY[0x223DDF820](v243);
      v246 = v504;
      v247 = v479;
      v248 = v477;
      v201 = v481;
      if (*((v507 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v507 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v403 = *((v507 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      (*(v248 + 8))(v473, v247);
      v230 = v476;
    }

    else
    {
      (*(v171 + 8))(v473, v199);
    }

    v200 = v507;
    (*(v468 + 8))(v230, v469);
    goto LABEL_87;
  }

  v249 = v205;
  v250 = *MEMORY[0x277D38D78];

  if (v249 != v250)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v269 = type metadata accessor for Logger();
    __swift_project_value_buffer(v269, static Logger.pommes);
    v270 = Logger.logObject.getter();
    v271 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v270, v271))
    {
      v272 = swift_slowAlloc();
      *v272 = 0;
      _os_log_impl(&dword_2232BB000, v270, v271, "unexpected experience component", v272, 2u);
      v273 = v272;
      v204 = v470;
      MEMORY[0x223DE0F80](v273, -1, -1);
    }

    v274 = *(v171 + 8);
    v274(v473, v199);
    v274(v204, v199);

    goto LABEL_86;
  }

  v504 = v196;
  (*(v171 + 96))(v204, v199);
  v251 = v464;
  (*(v466 + 32))(v464, v204, v467);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v252 = type metadata accessor for Logger();
  v505 = __swift_project_value_buffer(v252, static Logger.pommes);
  v253 = Logger.logObject.getter();
  v254 = static os_log_type_t.debug.getter();
  v255 = os_log_type_enabled(v253, v254);
  v256 = v451;
  if (v255)
  {
    v257 = swift_slowAlloc();
    *v257 = 0;
    _os_log_impl(&dword_2232BB000, v253, v254, "Adding a client driven experience", v257, 2u);
    MEMORY[0x223DE0F80](v257, -1, -1);
  }

  v258 = MEMORY[0x223DDB8B0]();
  v259 = v461;
  if (!*(v258 + 16))
  {

    goto LABEL_67;
  }

  v260 = v453;
  v261 = v445;
  v262 = v454;
  (*(v453 + 16))(v445, v258 + ((*(v260 + 80) + 32) & ~*(v260 + 80)), v454);

  v263 = v444;
  Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
  (*(v260 + 8))(v261, v262);
  v264 = v460;
  v265 = v263;
  v266 = v459;
  (*(v460 + 32))(v259, v265, v459);
  Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
  v267 = v456;
  v268 = v457;
  if ((*(v456 + 48))(v256, 1, v457) == 1)
  {
    (*(v264 + 8))(v259, v266);
    outlined destroy of MediaUserStateCenter?(v256, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
LABEL_67:
    v275 = v466;
    v276 = v447;
    v277 = v467;
    v502 = *(v466 + 16);
    (v502)(v447, v251, v467);
    v278 = Logger.logObject.getter();
    v279 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v278, v279))
    {
      v280 = swift_slowAlloc();
      *v280 = 67109120;
      v281 = MEMORY[0x223DDB8B0]();
      if (*(v281 + 16))
      {
        v282 = v453;
        v283 = v434;
        v284 = v454;
        (*(v453 + 16))(v434, v281 + ((*(v282 + 80) + 32) & ~*(v282 + 80)), v454);

        v285 = v440;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        v286 = v284;
        v287 = v447;
        (*(v282 + 8))(v283, v286);
        v288 = 0;
        v289 = 1;
        v290 = v460;
      }

      else
      {
        v287 = v276;

        v289 = 0;
        v288 = 1;
        v290 = v460;
        v285 = v440;
      }

      (*(v290 + 56))(v285, v288, 1, v459);
      outlined destroy of MediaUserStateCenter?(v285, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
      v316 = v287;
      v277 = v467;
      v503 = *(v466 + 8);
      (v503)(v316, v467);
      *(v280 + 4) = v289;
      _os_log_impl(&dword_2232BB000, v278, v279, "Has clientComponent? %{BOOL}d", v280, 8u);
      MEMORY[0x223DE0F80](v280, -1, -1);
      v251 = v464;
    }

    else
    {
      v503 = *(v275 + 8);
      (v503)(v276, v277);
    }

    v317 = v452;
    (v502)(v452, v251, v277);
    v318 = Logger.logObject.getter();
    v319 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v318, v319))
    {
      LODWORD(v505) = v319;
      v320 = swift_slowAlloc();
      *v320 = 67109120;
      v321 = MEMORY[0x223DDB8B0]();
      if (*(v321 + 16))
      {
        v322 = v453;
        v323 = v436;
        v324 = v454;
        (*(v453 + 16))(v436, v321 + ((*(v322 + 80) + 32) & ~*(v322 + 80)), v454);

        v325 = v435;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        (*(v322 + 8))(v323, v324);
        v326 = v441;
        Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
        (*(v460 + 8))(v325, v459);
        v327 = (*(v456 + 48))(v326, 1, v457) != 1;
      }

      else
      {

        v326 = v441;
        (*(v456 + 56))(v441, 1, 1, v457);
        v327 = 0;
      }

      v201 = v481;
      v202 = v478;
      outlined destroy of MediaUserStateCenter?(v326, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
      v277 = v467;
      v328 = v503;
      (v503)(v452, v467);
      *(v320 + 4) = v327;
      _os_log_impl(&dword_2232BB000, v318, v505, "Has domainComponent? %{BOOL}d", v320, 8u);
      MEMORY[0x223DE0F80](v320, -1, -1);
    }

    else
    {
      v328 = v503;
      (v503)(v317, v277);
      v201 = v481;
      v202 = v478;
    }

    v328(v464, v277);
    (*(v171 + 8))(v473, v199);
LABEL_86:
    v200 = MEMORY[0x277D84F90];
    goto LABEL_87;
  }

  v291 = v443;
  (*(v267 + 32))(v443, v256, v268);
  v292 = v439;
  (*(v267 + 16))(v439, v291, v268);
  v293 = (*(v267 + 88))(v292, v268);
  if (v293 == *MEMORY[0x277D39A50])
  {
    (*(v267 + 96))(v292, v268);
    (*(v437 + 32))(v442, v292, v438);
    v165 = v460;
    v173 = v428;
    (*(v460 + 16))(v428, v461, v266);
    v168 = Logger.logObject.getter();
    v172 = v266;
    v294 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v168, v294))
    {
      goto LABEL_90;
    }

    v295 = swift_slowAlloc();
    v296 = swift_slowAlloc();
    v506 = v296;
    *v295 = 136315138;
    v297 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v298 = v172;
    v300 = v299;
    v301 = *(v165 + 8);
    v503 = (v165 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v505 = v301;
    (v301)(v173, v298);
    v302 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v297, v300, &v506);

    *(v295 + 4) = v302;
    _os_log_impl(&dword_2232BB000, v168, v294, "Adding AudioExperience with identifier %s to PommesResponse", v295, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v296);
    MEMORY[0x223DE0F80](v296, -1, -1);
    MEMORY[0x223DE0F80](v295, -1, -1);

LABEL_91:
    v334 = v458;
    type metadata accessor for AudioExperience();
    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v335 = v437;
    v336 = v438;
    (*(v437 + 16))(v429, v442, v438);
    (*(v480 + 16))(v465, v478, v481);
    outlined init with copy of ClientExperienceSignals?(v334, v430);
    v337 = v504;
    v338 = AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v200 = swift_allocObject();
    *(v200 + 16) = xmmword_2234D0FE0;
    *(v200 + 32) = v338;

    (*(v335 + 8))(v442, v336);
    goto LABEL_108;
  }

  if (v293 == *MEMORY[0x277D39A58])
  {
    (*(v267 + 96))(v292, v268);
    (*(v432 + 32))(v431, v292, v433);
    v303 = v460;
    v304 = v423;
    (*(v460 + 16))(v423, v461, v266);
    v305 = Logger.logObject.getter();
    v306 = v266;
    v307 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v305, v307))
    {
      v308 = swift_slowAlloc();
      v309 = swift_slowAlloc();
      v506 = v309;
      *v308 = 136315138;
      v310 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v311 = v304;
      v313 = v312;
      v314 = *(v303 + 8);
      v503 = (v303 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v505 = v314;
      (v314)(v311, v306);
      v315 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v310, v313, &v506);

      *(v308 + 4) = v315;
      _os_log_impl(&dword_2232BB000, v305, v307, "Adding VideoExperience with identifier %s to PommesResponse", v308, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v309);
      MEMORY[0x223DE0F80](v309, -1, -1);
      MEMORY[0x223DE0F80](v308, -1, -1);
    }

    else
    {

      v352 = *(v303 + 8);
      v503 = (v303 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v505 = v352;
      (v352)(v304, v306);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v353 = v432;
    v354 = v431;
    v355 = v433;
    (*(v432 + 16))(v427, v431, v433);
    (*(v480 + 16))(v465, v478, v481);
    objc_allocWithZone(type metadata accessor for VideoExperience());
    v356 = v504;
    v357 = VideoExperience.init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
LABEL_107:
    v389 = v357;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v200 = swift_allocObject();
    *(v200 + 16) = xmmword_2234D0FE0;
    *(v200 + 32) = v389;

    (*(v353 + 8))(v354, v355);
LABEL_108:
    (*(v456 + 8))(v443, v457);
    (v505)(v461, v459);
    v202 = v478;
    v201 = v481;
    (*(v466 + 8))(v464, v467);
    (*(v171 + 8))(v473, v479);
    goto LABEL_87;
  }

  if (v293 == *MEMORY[0x277D39A40])
  {
    (*(v267 + 96))(v292, v268);
    (*(v425 + 32))(v424, v292, v426);
    v339 = v460;
    v340 = v421;
    (*(v460 + 16))(v421, v461, v266);
    v341 = Logger.logObject.getter();
    v342 = v266;
    v343 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v341, v343))
    {
      v344 = swift_slowAlloc();
      v345 = swift_slowAlloc();
      v506 = v345;
      *v344 = 136315138;
      v346 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v347 = v340;
      v349 = v348;
      v350 = *(v339 + 8);
      v503 = (v339 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v505 = v350;
      (v350)(v347, v342);
      v351 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v346, v349, &v506);

      *(v344 + 4) = v351;
      _os_log_impl(&dword_2232BB000, v341, v343, "Adding GeoExperience with identifier %s to PommesResponse", v344, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v345);
      MEMORY[0x223DE0F80](v345, -1, -1);
      MEMORY[0x223DE0F80](v344, -1, -1);
    }

    else
    {

      v371 = *(v339 + 8);
      v503 = (v339 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v505 = v371;
      (v371)(v340, v342);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v353 = v425;
    v354 = v424;
    v355 = v426;
    (*(v425 + 16))(v422, v424, v426);
    (*(v480 + 16))(v465, v478, v481);
    objc_allocWithZone(type metadata accessor for GeoExperience());
    v356 = v504;
    v357 = GeoExperience.init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
    goto LABEL_107;
  }

  if (v293 == *MEMORY[0x277D39A48])
  {
    (*(v267 + 96))(v292, v268);
    (*(v419 + 32))(v418, v292, v420);
    v358 = v460;
    v359 = v413;
    (*(v460 + 16))(v413, v461, v266);
    v360 = Logger.logObject.getter();
    v361 = v266;
    v362 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v360, v362))
    {
      v363 = swift_slowAlloc();
      v364 = swift_slowAlloc();
      v506 = v364;
      *v363 = 136315138;
      v365 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v366 = v359;
      v368 = v367;
      v369 = *(v358 + 8);
      v503 = (v358 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v505 = v369;
      (v369)(v366, v361);
      v370 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v365, v368, &v506);

      *(v363 + 4) = v370;
      _os_log_impl(&dword_2232BB000, v360, v362, "Adding AppsExperience with identfier %s to PommesResponse", v363, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v364);
      MEMORY[0x223DE0F80](v364, -1, -1);
      MEMORY[0x223DE0F80](v363, -1, -1);
    }

    else
    {

      v388 = *(v358 + 8);
      v503 = (v358 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v505 = v388;
      (v388)(v359, v361);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v353 = v419;
    v354 = v418;
    v355 = v420;
    (*(v419 + 16))(v414, v418, v420);
    (*(v480 + 16))(v465, v478, v481);
    objc_allocWithZone(type metadata accessor for AppLaunchExperience());
    v356 = v504;
    v357 = AppLaunchExperience.init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
    goto LABEL_107;
  }

  if (v293 == *MEMORY[0x277D39A38])
  {
    (*(v267 + 96))(v292, v268);
    v372 = v417;
    (*(v416 + 32))(v415, v292, v417);
    v373 = v460;
    v374 = v411;
    (*(v460 + 16))(v411, v461, v266);
    v375 = Logger.logObject.getter();
    v376 = v266;
    v377 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v375, v377))
    {
      v378 = swift_slowAlloc();
      v379 = swift_slowAlloc();
      v506 = v379;
      *v378 = 136315138;
      v380 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v381 = v374;
      v383 = v382;
      v384 = *(v373 + 8);
      v503 = (v373 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v505 = v384;
      (v384)(v381, v459);
      v385 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v380, v383, &v506);
      v386 = v417;

      *(v378 + 4) = v385;
      _os_log_impl(&dword_2232BB000, v375, v377, "Adding DeviceExpertExperience with identifier %s to PommesResponse", v378, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v379);
      MEMORY[0x223DE0F80](v379, -1, -1);
      v387 = v378;
      v372 = v386;
      MEMORY[0x223DE0F80](v387, -1, -1);
    }

    else
    {

      v396 = *(v373 + 8);
      v503 = (v373 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v505 = v396;
      (v396)(v374, v376);
    }

    Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
    v397 = v416;
    v398 = v415;
    (*(v416 + 16))(v412, v415, v372);
    v399 = v478;
    v400 = v481;
    (*(v480 + 16))(v465, v478, v481);
    v401 = objc_allocWithZone(type metadata accessor for DeviceExpertExperience());
    v402 = DeviceExpertExperience.init(pluginId:deviceExpertClientComponent:queryConfidenceScore:userDialogAct:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v200 = swift_allocObject();
    *(v200 + 16) = xmmword_2234D0FE0;
    *(v200 + 32) = v402;

    (*(v397 + 8))(v398, v417);
    (*(v456 + 8))(v443, v457);
    (v505)(v461, v459);
    v202 = v399;
    v201 = v400;
    (*(v466 + 8))(v464, v467);
    (*(v171 + 8))(v473, v199);
    goto LABEL_87;
  }

  v390 = Logger.logObject.getter();
  v391 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v390, v391))
  {
    v392 = swift_slowAlloc();
    *v392 = 0;
    _os_log_impl(&dword_2232BB000, v390, v391, "Unexpected DomainComponent encountered when building Client Driven experience", v392, 2u);
    v393 = v392;
    v267 = v456;
    MEMORY[0x223DE0F80](v393, -1, -1);
  }

  v394 = *(v267 + 8);
  v395 = v457;
  v394(v443, v457);
  (*(v460 + 8))(v461, v266);
  (*(v466 + 8))(v464, v467);
  (*(v171 + 8))(v473, v199);
  v394(v292, v395);

  v200 = MEMORY[0x277D84F90];
  v329 = v475;
  v330 = v474;
  v331 = v472;
  v201 = v481;
LABEL_88:
  (*(v480 + 8))(v202, v201);
  (*(v330 + 8))(v331, v329);
  return v200;
}

uint64_t specialized ExperiencesResolver.extractExperiences(from:score:with:with:)(uint64_t *a1, uint64_t a2, double a3, uint64_t a4, uint64_t a5)
{
  v460 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v492 = &v413 - v11;
  v493 = type metadata accessor for PommesRenderOptions.PromptType();
  v491 = *(v493 - 8);
  v12 = *(v491 + 64);
  MEMORY[0x28223BE20](v493, v13);
  v504 = &v413 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v432 = &v413 - v18;
  v434 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v433 = *(v434 - 8);
  v19 = *(v433 + 64);
  v21 = MEMORY[0x28223BE20](v434, v20);
  v427 = &v413 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v438 = &v413 - v24;
  v418 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v417 = *(v418 - 8);
  v25 = *(v417 + 64);
  v27 = MEMORY[0x28223BE20](v418, v26);
  v414 = &v413 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v29);
  v419 = &v413 - v30;
  v424 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v420 = *(v424 - 8);
  v31 = *(v420 + 64);
  v33 = MEMORY[0x28223BE20](v424, v32);
  v416 = &v413 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33, v35);
  v423 = &v413 - v36;
  v429 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v426 = *(v429 - 8);
  v37 = *(v426 + 64);
  v39 = MEMORY[0x28223BE20](v429, v38);
  v422 = &v413 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39, v41);
  v428 = &v413 - v42;
  v440 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v439 = *(v440 - 8);
  v43 = *(v439 + 64);
  v45 = MEMORY[0x28223BE20](v440, v44);
  v431 = &v413 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v47);
  v444 = &v413 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
  v50 = *(*(v49 - 8) + 64);
  MEMORY[0x28223BE20](v49 - 8, v51);
  v442 = &v413 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
  v54 = *(*(v53 - 8) + 64);
  v56 = MEMORY[0x28223BE20](v53 - 8, v55);
  v443 = &v413 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56, v58);
  v453 = &v413 - v59;
  v458 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
  v457 = *(v458 - 8);
  v60 = *(v457 + 64);
  v62 = MEMORY[0x28223BE20](v458, v61);
  v441 = &v413 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62, v64);
  v445 = &v413 - v65;
  v455 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v454 = *(v455 - 8);
  v66 = *(v454 + 64);
  v68 = MEMORY[0x28223BE20](v455, v67);
  v437 = &v413 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = MEMORY[0x28223BE20](v68, v70);
  v435 = &v413 - v72;
  MEMORY[0x28223BE20](v71, v73);
  v447 = &v413 - v74;
  v462 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v461 = *(v462 - 8);
  v75 = *(v461 + 64);
  v77 = MEMORY[0x28223BE20](v462, v76);
  v425 = &v413 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = MEMORY[0x28223BE20](v77, v79);
  v413 = &v413 - v81;
  v83 = MEMORY[0x28223BE20](v80, v82);
  v415 = &v413 - v84;
  v86 = MEMORY[0x28223BE20](v83, v85);
  v421 = &v413 - v87;
  v89 = MEMORY[0x28223BE20](v86, v88);
  v430 = &v413 - v90;
  v92 = MEMORY[0x28223BE20](v89, v91);
  v436 = &v413 - v93;
  v95 = MEMORY[0x28223BE20](v92, v94);
  v446 = &v413 - v96;
  MEMORY[0x28223BE20](v95, v97);
  v459 = &v413 - v98;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  v100 = *(*(v99 - 8) + 64);
  MEMORY[0x28223BE20](v99 - 8, v101);
  v448 = &v413 - v102;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  v104 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103 - 8, v105);
  v456 = &v413 - v106;
  v107 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v108 = *(*(v107 - 8) + 64);
  MEMORY[0x28223BE20](v107 - 8, v109);
  v464 = &v413 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  v452 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience();
  v469 = *(v452 - 8);
  v111 = *(v469 + 64);
  MEMORY[0x28223BE20](v452, v112);
  v451 = &v413 - ((v113 + 15) & 0xFFFFFFFFFFFFFFF0);
  v468 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v467 = *(v468 - 8);
  v114 = *(v467 + 64);
  v116 = MEMORY[0x28223BE20](v468, v115);
  v450 = &v413 - ((v117 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = MEMORY[0x28223BE20](v116, v118);
  v449 = &v413 - v120;
  MEMORY[0x28223BE20](v119, v121);
  v465 = &v413 - v122;
  v472 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v471 = *(v472 - 8);
  v123 = *(v471 + 64);
  MEMORY[0x28223BE20](v472, v124);
  v473 = &v413 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
  v127 = *(*(v126 - 8) + 64);
  MEMORY[0x28223BE20](v126 - 8, v128);
  v474 = &v413 - v129;
  v484 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience();
  v479 = *(v484 - 8);
  v130 = *(v479 + 64);
  v132 = MEMORY[0x28223BE20](v484, v131);
  v470 = &v413 - ((v133 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v132, v134);
  v476 = &v413 - v135;
  v136 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals.PromptType();
  v505 = *(v136 - 8);
  v137 = *(v505 + 64);
  v139 = MEMORY[0x28223BE20](v136, v138);
  v506 = &v413 - ((v140 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v139, v141);
  v490 = (&v413 - v142);
  v507 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals();
  isa = v507[-1].isa;
  v143 = *(isa + 64);
  MEMORY[0x28223BE20](v507, v144);
  v146 = &v413 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  v503 = type metadata accessor for Date();
  v147 = *(v503 - 8);
  v148 = *(v147 + 64);
  MEMORY[0x28223BE20](v503, v149);
  v151 = &v413 - ((v150 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v481 = v152[-1].isa;
  v153 = *(v481 + 8);
  v155 = MEMORY[0x28223BE20](v152, v154);
  v466 = &v413 - ((v156 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v155, v157);
  v159 = &v413 - v158;
  v478 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding();
  v477 = *(v478 - 8);
  v160 = *(v477 + 64);
  MEMORY[0x28223BE20](v478, v161);
  v163 = (&v413 - ((v162 + 15) & 0xFFFFFFFFFFFFFFF0));
  v510 = a5;
  v485 = a1;
  v164 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverUnderstanding.getter();
  if (one-time initialization token for shared != -1)
  {
    v164 = swift_once();
  }

  v501 = &v413;
  v166 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v164, v165);
  v411 = &v510;
  v412 = v163;
  v475 = v163;
  Date.init()();
  v167 = *(*v166 + 200);
  v480 = v152;
  v411 = &v409;
  v412 = v152;
  LOBYTE(v409) = 2;
  v482 = v159;
  v167(0xD00000000000001ELL, 0x80000002234DF280, 0, v151, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 134, "extractExperiences(from:score:with:with:)", 41, v409, partial apply for specialized closure #1 in ExperiencesResolver.extractExperiences(from:score:with:with:));
  v463 = 0;
  (*(v147 + 8))(v151, v503);
  v168 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.userPromptSignals.getter();
  v169 = MEMORY[0x223DDAFD0](v168);
  (*(isa + 8))(v146, v507);
  v503 = *(v169 + 16);
  if (v503)
  {
    v170 = 0;
    isa = v169 + ((*(v505 + 80) + 32) & ~*(v505 + 80));
    v500 = v505 + 88;
    v501 = (v505 + 16);
    v499 = *MEMORY[0x277D397A8];
    v489 = *MEMORY[0x277D39798];
    v487 = *MEMORY[0x277D397A0];
    v498 = (v505 + 8);
    v497 = (v491 + 56);
    v483 = *MEMORY[0x277D566C0];
    v494 = (v491 + 104);
    v486 = *MEMORY[0x277D566B8];
    v488 = *MEMORY[0x277D566C8];
    v496 = (v491 + 48);
    v507 = MEMORY[0x277D84F90];
    v495 = (v491 + 32);
    v171 = v492;
    v172 = v493;
    v173 = v490;
    v174 = v505;
    while (1)
    {
      if (v170 >= *(v169 + 16))
      {
        __break(1u);
LABEL_89:

        v332 = v173[1].isa;
        v505 = &v173[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v507 = v332;
        (v332)(v171, v170);
        v306 = v482;
        goto LABEL_90;
      }

      v175 = *(v174 + 16);
      v175(v173, isa + *(v174 + 72) * v170, v136);
      v152 = v173;
      v176 = v506;
      v175(v506, v152, v136);
      v177 = (*(v174 + 88))(v176, v136);
      if (v177 == v499)
      {
        (*v498)(v152, v136);
        (*v494)(v171, v488, v172);
        (*v497)(v171, 0, 1, v172);
        v173 = v152;
      }

      else
      {
        if (v177 == v489)
        {
          v173 = v490;
          (*v498)(v490, v136);
          (*v494)(v171, v486, v172);
        }

        else
        {
          v173 = v490;
          if (v177 != v487)
          {
            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v178 = type metadata accessor for Logger();
            __swift_project_value_buffer(v178, static Logger.pommes);
            v179 = Logger.logObject.getter();
            v180 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v179, v180))
            {
              v181 = swift_slowAlloc();
              *v181 = 0;
              _os_log_impl(&dword_2232BB000, v179, v180, "siriInstruction.userPromptSignals.promptTypes contains unhandled promptType", v181, 2u);
              v182 = v181;
              v171 = v492;
              MEMORY[0x223DE0F80](v182, -1, -1);
            }

            v183 = *v498;
            (*v498)(v173, v136);
            v172 = v493;
            (*v497)(v171, 1, 1, v493);
            v183(v506, v136);
            goto LABEL_20;
          }

          (*v498)(v490, v136);
          (*v494)(v171, v483, v172);
        }

        (*v497)(v171, 0, 1, v172);
      }

LABEL_20:
      if ((*v496)(v171, 1, v172) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v171, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
      }

      else
      {
        v184 = v172;
        v185 = *v495;
        (*v495)(v504, v171, v184);
        v186 = v507;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v186 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v186[2].isa + 1, 1, v186);
        }

        v188 = v186[2].isa;
        v187 = v186[3].isa;
        v507 = v186;
        if (v188 >= v187 >> 1)
        {
          v507 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v187 > 1, v188 + 1, 1, v507);
        }

        v189 = v507;
        v507[2].isa = (v188 + 1);
        v190 = v493;
        v185(v189 + ((*(v491 + 80) + 32) & ~*(v491 + 80)) + *(v491 + 72) * v188, v504, v493);
        v172 = v190;
        v171 = v492;
      }

      if (v503 == ++v170)
      {
        goto LABEL_27;
      }
    }
  }

  v507 = MEMORY[0x277D84F90];
LABEL_27:

  MEMORY[0x28223BE20](v191, v192);
  v411 = v507;
  v193 = type metadata accessor for PommesRenderOptions();
  v194 = objc_allocWithZone(v193);
  v195 = PommesRenderOptions.init(_:)();
  v509 = MEMORY[0x277D84F90];
  v196 = v474;
  v197 = v485;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.experience.getter();
  v174 = v479;
  if ((*(v479 + 48))(v196, 1, v484) != 1)
  {
    v201 = v476;
    v202 = v196;
    v203 = v484;
    (*(v174 + 32))(v476, v202, v484);
    v204 = v470;
    (*(v174 + 16))(v470, v201, v203);
    v205 = (*(v174 + 88))(v204, v203);
    v199 = v480;
    v200 = v482;
    if (v205 == *MEMORY[0x277D38D80])
    {
      (*(v174 + 96))(v204, v484);
      v206 = v473;
      (*(v471 + 32))(v473, v204, v472);
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v207 = type metadata accessor for Logger();
      __swift_project_value_buffer(v207, static Logger.pommes);
      v208 = Logger.logObject.getter();
      v209 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v208, v209))
      {
        v210 = swift_slowAlloc();
        *v210 = 0;
        _os_log_impl(&dword_2232BB000, v208, v209, "Adding a server driven experience", v210, 2u);
        MEMORY[0x223DE0F80](v210, -1, -1);
      }

      v211 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.hasPrimaryExperience.getter();
      v212 = v469;
      v506 = v195;
      if (v211)
      {
        v505 = v193;
        v213 = v197;
        v214 = v451;
        v215 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
        v504 = MEMORY[0x223DDAE00](v215);
        v216 = v200;
        v217 = *(v212 + 8);
        v469 = v212 + 8;
        v218 = v452;
        v217(v214, v452);
        (*(v481 + 2))(v466, v216, v199);
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
        v219 = objc_allocWithZone(type metadata accessor for GenericExperience());
        v220 = v195;
        v221 = v218;
        v222 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
        Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
        LOBYTE(v216) = Apple_Parsec_Siri_V2alpha_SingleExperience.hasResultEntity.getter();
        v504 = v217;
        v217(v214, v218);
        if (v216)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR);
          v223 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity() - 8);
          v224 = *(v223 + 72);
          v225 = (*(v223 + 80) + 32) & ~*(v223 + 80);
          *(swift_allocObject() + 16) = xmmword_2234CF920;
          v226 = v222;
          v227 = v222;
          Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
          v206 = v473;
          Apple_Parsec_Siri_V2alpha_SingleExperience.resultEntity.getter();
          (v504)(v214, v221);
          dispatch thunk of Experience.associatedEntities.setter();

          v222 = v226;
          v213 = v485;
        }

        v197 = v213;
        if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
        {
          v228 = v456;
          Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
          v229 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
          (*(*(v229 - 8) + 56))(v228, 0, 1, v229);
          dispatch thunk of GenericExperience.serverSuggestions.setter();
        }

        v230 = v222;
        MEMORY[0x223DDF820]();
        v200 = v482;
        v174 = v479;
        v193 = v505;
        v195 = v506;
        if (*((v509 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v509 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v406 = *((v509 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      }

      v231 = MEMORY[0x223DDB9D0]();
      MEMORY[0x28223BE20](v231, v232);
      v409 = *&a3;
      v410 = v200;
      v411 = v197;
      v412 = v195;
      v233 = specialized Sequence.compactMap<A>(_:)(closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:)partial apply, &v407, v231);

      v234 = specialized Array.append<A>(contentsOf:)(v233);
      v235 = *(MEMORY[0x223DDB9C0](v234) + 16);

      if (v235)
      {
        v236 = specialized ExperiencesResolver.isSquawkResponse(serverExp:)();
        v237 = _s21SiriInformationSearch19ExperiencesResolverPAAE35shouldPreserveResultSpaceIfPossible33_7FAE26C68B95D22123CF4ADCD6DDA6083forSb10PegasusAPI013Apple_Parsec_A31_V2alpha_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt0g5Tm();
        MEMORY[0x223DDB9C0]();
        (*(v481 + 2))(v466, v200, v199);
        v238 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
        MEMORY[0x28223BE20](v238, v239);
        v407 = v206;
        LOBYTE(v408) = v236 & 1;
        v409 = v460;
        v410 = &v510;
        LOBYTE(v411) = v237 & 1;
        v412 = v507;
        v240 = objc_allocWithZone(v193);
        PommesRenderOptions.init(_:)();

        v241 = objc_allocWithZone(type metadata accessor for GenericExperience());
        v242 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
        dispatch thunk of Experience.associatedEntities.setter();
        if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
        {
          v243 = v456;
          Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
          v244 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
          (*(*(v244 - 8) + 56))(v243, 0, 1, v244);
          dispatch thunk of GenericExperience.serverSuggestions.setter();
        }

        v245 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasSageExperience.getter();
        if (v245)
        {
          v246 = v448;
          Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.sageExperience.getter();
          v247 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
          (*(*(v247 - 8) + 56))(v246, 0, 1, v247);
          v245 = dispatch thunk of GenericExperience.sageExperience.setter();
        }

        MEMORY[0x223DDF820](v245);
        v200 = v482;
        v206 = v473;
        v248 = v479;
        v199 = v480;
        v249 = v506;
        if (*((v509 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v509 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v405 = *((v509 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        (*(v248 + 8))(v476, v484);
      }

      else
      {
        (*(v174 + 8))(v476, v484);
      }

      v198 = v509;
      (*(v471 + 8))(v206, v472);
      goto LABEL_66;
    }

    v250 = v205;
    v251 = *MEMORY[0x277D38D78];

    if (v250 != v251)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v268 = type metadata accessor for Logger();
      __swift_project_value_buffer(v268, static Logger.pommes);
      v269 = Logger.logObject.getter();
      v270 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v269, v270))
      {
        v271 = swift_slowAlloc();
        *v271 = 0;
        _os_log_impl(&dword_2232BB000, v269, v270, "unexpected experience component", v271, 2u);
        MEMORY[0x223DE0F80](v271, -1, -1);
      }

      v272 = *(v174 + 8);
      v273 = v484;
      v272(v476, v484);
      v272(v204, v273);

      v198 = MEMORY[0x277D84F90];
      goto LABEL_66;
    }

    (*(v174 + 96))(v204, v484);
    v252 = v465;
    (*(v467 + 32))(v465, v204, v468);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v253 = type metadata accessor for Logger();
    v507 = __swift_project_value_buffer(v253, static Logger.pommes);
    v254 = Logger.logObject.getter();
    v255 = static os_log_type_t.debug.getter();
    v256 = os_log_type_enabled(v254, v255);
    v173 = v461;
    v257 = v453;
    if (v256)
    {
      v258 = swift_slowAlloc();
      *v258 = 0;
      _os_log_impl(&dword_2232BB000, v254, v255, "Adding a client driven experience", v258, 2u);
      MEMORY[0x223DE0F80](v258, -1, -1);
    }

    v506 = v195;

    v259 = MEMORY[0x223DDB8B0]();
    v260 = v462;
    if (!*(v259 + 16))
    {

      goto LABEL_69;
    }

    v261 = v454;
    v262 = v447;
    v263 = v455;
    (*(v454 + 16))(v447, v259 + ((*(v261 + 80) + 32) & ~*(v261 + 80)), v455);

    v264 = v446;
    Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
    (*(v261 + 8))(v262, v263);
    v265 = v459;
    (v173[4].isa)(v459, v264, v260);
    Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
    v266 = v457;
    v267 = v458;
    if ((*(v457 + 48))(v257, 1, v458) == 1)
    {
      (v173[1].isa)(v265, v260);
      outlined destroy of MediaUserStateCenter?(v257, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
LABEL_69:
      v278 = v467;
      v279 = *(v467 + 16);
      v280 = v449;
      v281 = v468;
      v279(v449, v252, v468);
      v282 = Logger.logObject.getter();
      v283 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v282, v283))
      {
        LODWORD(v504) = v283;
        v505 = v279;
        v284 = swift_slowAlloc();
        *v284 = 67109120;
        v285 = MEMORY[0x223DDB8B0]();
        if (*(v285 + 16))
        {
          v286 = v454;
          v287 = v435;
          v288 = v455;
          (*(v454 + 16))(v435, v285 + ((*(v286 + 80) + 32) & ~*(v286 + 80)), v455);

          v289 = v442;
          Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
          v290 = v286;
          v280 = v449;
          (*(v290 + 8))(v287, v288);
          v291 = 0;
          v292 = 1;
        }

        else
        {

          v292 = 0;
          v291 = 1;
          v289 = v442;
        }

        (*(v461 + 56))(v289, v291, 1, v462);
        outlined destroy of MediaUserStateCenter?(v289, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
        v293 = *(v278 + 8);
        v281 = v468;
        v293(v280, v468);
        *(v284 + 4) = v292;
        _os_log_impl(&dword_2232BB000, v282, v504, "Has clientComponent? %{BOOL}d", v284, 8u);
        MEMORY[0x223DE0F80](v284, -1, -1);
        v252 = v465;
        v279 = v505;
      }

      else
      {
        v293 = *(v278 + 8);
        v293(v280, v281);
      }

      v320 = v450;
      v279(v450, v252, v281);
      v321 = Logger.logObject.getter();
      v322 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v321, v322))
      {
        v323 = swift_slowAlloc();
        *v323 = 67109120;
        v324 = MEMORY[0x223DDB8B0]();
        if (*(v324 + 16))
        {
          v325 = v454;
          v326 = v437;
          v327 = v455;
          (*(v454 + 16))(v437, v324 + ((*(v325 + 80) + 32) & ~*(v325 + 80)), v455);

          v328 = v436;
          Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
          (*(v325 + 8))(v326, v327);
          v329 = v443;
          Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
          v320 = v450;
          (*(v461 + 8))(v328, v462);
          v330 = (*(v457 + 48))(v329, 1, v458) != 1;
        }

        else
        {

          v329 = v443;
          (*(v457 + 56))(v443, 1, 1, v458);
          v330 = 0;
        }

        v199 = v480;
        outlined destroy of MediaUserStateCenter?(v329, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
        v331 = v468;
        v293(v320, v468);
        *(v323 + 4) = v330;
        v281 = v331;
        _os_log_impl(&dword_2232BB000, v321, v322, "Has domainComponent? %{BOOL}d", v323, 8u);
        MEMORY[0x223DE0F80](v323, -1, -1);
      }

      else
      {
        v293(v320, v281);
        v199 = v480;
      }

      v293(v465, v281);
      (*(v174 + 8))(v476, v484);
      v198 = MEMORY[0x277D84F90];
      goto LABEL_29;
    }

    v294 = v445;
    (*(v266 + 32))(v445, v257, v267);
    v295 = v441;
    (*(v266 + 16))(v441, v294, v267);
    v296 = (*(v266 + 88))(v295, v267);
    if (v296 == *MEMORY[0x277D39A50])
    {
      (*(v266 + 96))(v295, v267);
      (*(v439 + 32))(v444, v295, v440);
      v171 = v430;
      (v173[2].isa)(v430, v459, v260);
      v152 = Logger.logObject.getter();
      v170 = v260;
      v297 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v152, v297))
      {
        goto LABEL_89;
      }

      v298 = swift_slowAlloc();
      v299 = v173;
      v300 = swift_slowAlloc();
      v508 = v300;
      *v298 = 136315138;
      v301 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v303 = v302;
      v304 = v299[1].isa;
      v505 = &v299[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v507 = v304;
      (v304)(v171, v170);
      v305 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v301, v303, &v508);
      v306 = v482;

      *(v298 + 4) = v305;
      _os_log_impl(&dword_2232BB000, v152, v297, "Adding AudioExperience with identifier %s to PommesResponse", v298, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v300);
      MEMORY[0x223DE0F80](v300, -1, -1);
      MEMORY[0x223DE0F80](v298, -1, -1);

LABEL_90:
      v504 = type metadata accessor for AudioExperience();
      Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v333 = v439;
      v334 = v440;
      (*(v439 + 16))(v431, v444, v440);
      (*(v481 + 2))(v466, v306, v480);
      outlined init with copy of ClientExperienceSignals?(v460, v432);
      v335 = v506;
      v200 = v306;
      v336 = AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      dispatch thunk of Experience.associatedEntities.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v198 = swift_allocObject();
      *(v198 + 16) = xmmword_2234D0FE0;
      *(v198 + 32) = v336;

      (*(v333 + 8))(v444, v334);
      (*(v457 + 8))(v445, v458);
      (v507)(v459, v462);
      v199 = v480;
      (*(v467 + 8))(v465, v468);
      (*(v174 + 8))(v476, v484);
      goto LABEL_66;
    }

    if (v296 == *MEMORY[0x277D39A58])
    {
      (*(v266 + 96))(v295, v267);
      (*(v433 + 32))(v438, v295, v434);
      v307 = v425;
      (v173[2].isa)(v425, v459, v260);
      v308 = Logger.logObject.getter();
      v309 = v260;
      v310 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v308, v310))
      {
        v311 = swift_slowAlloc();
        v312 = v173;
        v313 = swift_slowAlloc();
        v508 = v313;
        *v311 = 136315138;
        v314 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
        v316 = v315;
        v317 = v312[1].isa;
        v507 = (&v312[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v505 = v317;
        v317(v307, v309);
        v318 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v314, v316, &v508);
        v319 = v482;

        *(v311 + 4) = v318;
        _os_log_impl(&dword_2232BB000, v308, v310, "Adding VideoExperience with identifier %s to PommesResponse", v311, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v313);
        MEMORY[0x223DE0F80](v313, -1, -1);
        MEMORY[0x223DE0F80](v311, -1, -1);
      }

      else
      {

        v348 = v173[1].isa;
        v507 = (&v173[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v505 = v348;
        v348(v307, v309);
        v319 = v482;
      }

      Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v349 = v433;
      v350 = v434;
      (*(v433 + 16))(v427, v438, v434);
      v351 = v319;
      v199 = v480;
      (*(v481 + 2))(v466, v351, v480);
      v352 = objc_allocWithZone(type metadata accessor for VideoExperience());
      v353 = v506;
      v354 = VideoExperience.init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      dispatch thunk of Experience.associatedEntities.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v198 = swift_allocObject();
      *(v198 + 16) = xmmword_2234D0FE0;
      *(v198 + 32) = v354;

      (*(v349 + 8))(v438, v350);
      (*(v457 + 8))(v445, v458);
      (v505)(v459, v462);
      goto LABEL_107;
    }

    if (v296 == *MEMORY[0x277D39A40])
    {
      (*(v266 + 96))(v295, v267);
      (*(v426 + 32))(v428, v295, v429);
      v337 = v421;
      (v173[2].isa)(v421, v459, v260);
      v338 = Logger.logObject.getter();
      v339 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v338, v339))
      {
        v340 = swift_slowAlloc();
        v341 = v173;
        v342 = swift_slowAlloc();
        v508 = v342;
        *v340 = 136315138;
        v343 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
        v345 = v344;
        v507 = v341[1].isa;
        (v507)(v337, v462);
        v346 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v343, v345, &v508);
        v347 = v482;

        *(v340 + 4) = v346;
        _os_log_impl(&dword_2232BB000, v338, v339, "Adding GeoExperience with identifier %s to PommesResponse", v340, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v342);
        MEMORY[0x223DE0F80](v342, -1, -1);
        MEMORY[0x223DE0F80](v340, -1, -1);
      }

      else
      {

        v507 = v173[1].isa;
        (v507)(v337, v462);
        v347 = v482;
      }

      Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v366 = v426;
      (*(v426 + 16))(v422, v428, v429);
      v367 = v347;
      v368 = v480;
      (*(v481 + 2))(v466, v367, v480);
      v369 = objc_allocWithZone(type metadata accessor for GeoExperience());
      v370 = v506;
      v371 = GeoExperience.init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      dispatch thunk of Experience.associatedEntities.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v198 = swift_allocObject();
      *(v198 + 16) = xmmword_2234D0FE0;
      *(v198 + 32) = v371;

      (*(v366 + 8))(v428, v429);
    }

    else
    {
      if (v296 != *MEMORY[0x277D39A48])
      {
        if (v296 != *MEMORY[0x277D39A38])
        {
          v392 = Logger.logObject.getter();
          v393 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v392, v393))
          {
            v394 = swift_slowAlloc();
            *v394 = 0;
            _os_log_impl(&dword_2232BB000, v392, v393, "Unexpected DomainComponent encountered when building Client Driven experience", v394, 2u);
            v395 = v394;
            v266 = v457;
            MEMORY[0x223DE0F80](v395, -1, -1);
          }

          v396 = *(v266 + 8);
          v397 = v458;
          v396(v445, v458);
          (v173[1].isa)(v459, v260);
          (*(v467 + 8))(v465, v468);
          (*(v174 + 8))(v476, v484);
          v396(v295, v397);

          v198 = MEMORY[0x277D84F90];
          v274 = v478;
          v275 = v477;
          v276 = v475;
          v199 = v480;
          goto LABEL_108;
        }

        (*(v266 + 96))(v295, v267);
        (*(v417 + 32))(v419, v295, v418);
        v372 = v413;
        v373 = v459;
        (v173[2].isa)(v413, v459, v260);
        v374 = Logger.logObject.getter();
        v375 = v260;
        v376 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v374, v376))
        {
          v377 = swift_slowAlloc();
          v378 = v173;
          v379 = swift_slowAlloc();
          v508 = v379;
          *v377 = 136315138;
          v380 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
          v382 = v381;
          v383 = v378[1].isa;
          v505 = &v378[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v507 = v383;
          (v383)(v372, v375);
          v384 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v380, v382, &v508);
          v385 = v482;

          *(v377 + 4) = v384;
          _os_log_impl(&dword_2232BB000, v374, v376, "Adding DeviceExpertExperience with identifier %s to PommesResponse", v377, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v379);
          MEMORY[0x223DE0F80](v379, -1, -1);
          v386 = v377;
          v373 = v459;
          MEMORY[0x223DE0F80](v386, -1, -1);
        }

        else
        {

          v398 = v173[1].isa;
          v505 = &v173[1] & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v507 = v398;
          (v398)(v372, v375);
          v385 = v482;
        }

        Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
        v399 = v417;
        v400 = v418;
        (*(v417 + 16))(v414, v419, v418);
        v401 = v385;
        v199 = v480;
        (*(v481 + 2))(v466, v401, v480);
        v402 = objc_allocWithZone(type metadata accessor for DeviceExpertExperience());
        v403 = v373;
        v404 = DeviceExpertExperience.init(pluginId:deviceExpertClientComponent:queryConfidenceScore:userDialogAct:)();
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
        dispatch thunk of Experience.associatedEntities.setter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
        v198 = swift_allocObject();
        *(v198 + 16) = xmmword_2234D0FE0;
        *(v198 + 32) = v404;

        (*(v399 + 8))(v419, v400);
        (*(v457 + 8))(v445, v458);
        (v507)(v403, v462);
LABEL_107:
        (*(v467 + 8))(v465, v468);
        (*(v174 + 8))(v476, v484);
        v274 = v478;
        v275 = v477;
        v276 = v475;
LABEL_108:
        v200 = v482;
        goto LABEL_67;
      }

      (*(v266 + 96))(v295, v267);
      (*(v420 + 32))(v423, v295, v424);
      v355 = v415;
      (v173[2].isa)(v415, v459, v260);
      v356 = Logger.logObject.getter();
      v357 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v356, v357))
      {
        v358 = swift_slowAlloc();
        v359 = v173;
        v360 = swift_slowAlloc();
        v508 = v360;
        *v358 = 136315138;
        v361 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
        v363 = v362;
        v507 = v359[1].isa;
        (v507)(v355, v462);
        v364 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v361, v363, &v508);
        v365 = v482;

        *(v358 + 4) = v364;
        _os_log_impl(&dword_2232BB000, v356, v357, "Adding AppsExperience with identfier %s to PommesResponse", v358, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v360);
        MEMORY[0x223DE0F80](v360, -1, -1);
        MEMORY[0x223DE0F80](v358, -1, -1);
      }

      else
      {

        v507 = v173[1].isa;
        (v507)(v355, v462);
        v365 = v482;
      }

      Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
      v387 = v420;
      (*(v420 + 16))(v416, v423, v424);
      v388 = v365;
      v368 = v480;
      (*(v481 + 2))(v466, v388, v480);
      v389 = objc_allocWithZone(type metadata accessor for AppLaunchExperience());
      v390 = v506;
      v391 = AppLaunchExperience.init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      dispatch thunk of Experience.associatedEntities.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v198 = swift_allocObject();
      *(v198 + 16) = xmmword_2234D0FE0;
      *(v198 + 32) = v391;

      (*(v387 + 8))(v423, v424);
    }

    (*(v457 + 8))(v445, v458);
    (v507)(v459, v462);
    v199 = v368;
    goto LABEL_107;
  }

  outlined destroy of MediaUserStateCenter?(v196, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);

  v198 = MEMORY[0x277D84F90];
  v199 = v480;
LABEL_29:
  v200 = v482;
LABEL_66:
  v274 = v478;
  v275 = v477;
  v276 = v475;
LABEL_67:
  (*(v481 + 1))(v200, v199);
  (*(v275 + 8))(v276, v274);
  return v198;
}

uint64_t ExperiencesResolver.extractExperiences(from:score:with:with:)(NSObject *a1, uint64_t a2, double a3, uint64_t a4, char *a5, char *a6)
{
  v494 = a6;
  v493 = a5;
  v475 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v457 = &v427 - v11;
  v448 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent();
  v447 = *(v448 - 8);
  v12 = *(v447 + 64);
  v14 = MEMORY[0x28223BE20](v448, v13);
  v442 = &v427 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14, v16);
  v452 = &v427 - v17;
  v433 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent();
  v432 = *(v433 - 8);
  v18 = *(v432 + 64);
  v20 = MEMORY[0x28223BE20](v433, v19);
  v428 = &v427 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v431 = &v427 - v23;
  v435 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent();
  v434 = *(v435 - 8);
  v24 = *(v434 + 64);
  v26 = MEMORY[0x28223BE20](v435, v25);
  v430 = &v427 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v438 = &v427 - v29;
  v441 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v440 = *(v441 - 8);
  v30 = *(v440 + 64);
  v32 = MEMORY[0x28223BE20](v441, v31);
  v437 = &v427 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v34);
  v443 = &v427 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v37 = *(*(v36 - 8) + 64);
  MEMORY[0x28223BE20](v36 - 8, v38);
  v446 = &v427 - v39;
  v454 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent();
  v453 = *(v454 - 8);
  v40 = *(v453 + 64);
  v42 = MEMORY[0x28223BE20](v454, v41);
  v445 = &v427 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v44);
  v458 = &v427 - v45;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
  v47 = *(*(v46 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v46 - 8, v48);
  v456 = &v427 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49, v51);
  v462 = &v427 - v52;
  v474 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent();
  v473 = *(v474 - 8);
  v53 = *(v473 + 64);
  v55 = MEMORY[0x28223BE20](v474, v54);
  v455 = &v427 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v55, v57);
  v459 = &v427 - v58;
  v470 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent();
  v469 = *(v470 - 8);
  v59 = *(v469 + 64);
  v61 = MEMORY[0x28223BE20](v470, v60);
  v451 = &v427 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = MEMORY[0x28223BE20](v61, v63);
  v449 = &v427 - v65;
  MEMORY[0x28223BE20](v64, v66);
  v461 = &v427 - v67;
  v477 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent();
  v476 = *(v477 - 8);
  v68 = *(v476 + 64);
  v70 = MEMORY[0x28223BE20](v477, v69);
  v450 = &v427 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x28223BE20](v70, v72);
  v439 = &v427 - v74;
  v76 = MEMORY[0x28223BE20](v73, v75);
  v427 = &v427 - v77;
  v79 = MEMORY[0x28223BE20](v76, v78);
  v429 = &v427 - v80;
  v82 = MEMORY[0x28223BE20](v79, v81);
  v436 = &v427 - v83;
  v85 = MEMORY[0x28223BE20](v82, v84);
  v444 = &v427 - v86;
  v88 = MEMORY[0x28223BE20](v85, v87);
  v460 = &v427 - v89;
  MEMORY[0x28223BE20](v88, v90);
  v472 = &v427 - v91;
  v482 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience();
  v483 = *(v482 - 8);
  v92 = *(v483 + 64);
  v94 = MEMORY[0x28223BE20](v482, v93);
  v465 = &v427 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = MEMORY[0x28223BE20](v94, v96);
  v464 = &v427 - v98;
  MEMORY[0x28223BE20](v97, v99);
  v480 = &v427 - v100;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  v102 = *(*(v101 - 8) + 64);
  MEMORY[0x28223BE20](v101 - 8, v103);
  v463 = &v427 - v104;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  v106 = *(*(v105 - 8) + 64);
  MEMORY[0x28223BE20](v105 - 8, v107);
  v471 = &v427 - v108;
  v109 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v110 = *(*(v109 - 8) + 64);
  MEMORY[0x28223BE20](v109 - 8, v111);
  v479 = &v427 - ((v112 + 15) & 0xFFFFFFFFFFFFFFF0);
  v468 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience();
  v467 = *(v468 - 8);
  v113 = *(v467 + 64);
  MEMORY[0x28223BE20](v468, v114);
  v466 = &v427 - ((v115 + 15) & 0xFFFFFFFFFFFFFFF0);
  v485 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v484 = *(v485 - 8);
  v116 = *(v484 + 64);
  MEMORY[0x28223BE20](v485, v117);
  v492 = &v427 - ((v118 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
  v120 = *(*(v119 - 8) + 64);
  MEMORY[0x28223BE20](v119 - 8, v121);
  v123 = &v427 - v122;
  v124 = type metadata accessor for PommesRenderOptions.PromptType();
  v507 = *(v124 - 8);
  v125 = *(v507 + 64);
  MEMORY[0x28223BE20](v124, v126);
  v518 = &v427 - ((v127 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);
  v129 = *(*(v128 - 8) + 64);
  MEMORY[0x28223BE20](v128 - 8, v130);
  v488 = &v427 - v131;
  v497 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience();
  v499 = *(v497 - 8);
  v132 = *(v499 + 64);
  v134 = MEMORY[0x28223BE20](v497, v133);
  v486 = &v427 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v134, v136);
  v487 = &v427 - v137;
  v138 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals.PromptType();
  v519 = *(v138 - 8);
  isa = v519[8].isa;
  v141 = MEMORY[0x28223BE20](v138, v140);
  v522 = &v427 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v141, v143);
  v521 = &v427 - v144;
  v520 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals();
  v517 = v520[-1].isa;
  v145 = *(v517 + 8);
  MEMORY[0x28223BE20](v520, v146);
  v516 = (&v427 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = type metadata accessor for Date();
  v514 = *(v148 - 8);
  v515 = v148;
  v149 = v514[8].isa;
  MEMORY[0x28223BE20](v148, v150);
  v152 = &v427 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v498 = *(v153 - 8);
  v154 = *(v498 + 64);
  v156 = MEMORY[0x28223BE20](v153, v155);
  v481 = &v427 - ((v157 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v156, v158);
  v160 = &v427 - v159;
  v491 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding();
  v490 = *(v491 - 8);
  v161 = *(v490 + 64);
  MEMORY[0x28223BE20](v491, v162);
  v164 = (&v427 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0));
  v502 = a1;
  v165 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverUnderstanding.getter();
  if (one-time initialization token for shared != -1)
  {
    v165 = swift_once();
  }

  v513 = &v427;
  v167 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v165, v166);
  v423 = v493;
  v424 = v494;
  v425 = v495;
  v426 = v164;
  v489 = v164;
  Date.init()();
  v168 = *(*v167 + 200);
  v500 = v153;
  v425 = &v421;
  v426 = v153;
  LOBYTE(v423) = 2;
  v496 = v160;
  v168(0xD00000000000001ELL, 0x80000002234DF280, 0, v152, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 134, "extractExperiences(from:score:with:with:)", 41, v423, partial apply for closure #1 in ExperiencesResolver.extractExperiences(from:score:with:with:));
  v478 = 0;
  (v514[1].isa)(v152, v515);
  v169 = v516;
  v170 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.userPromptSignals.getter();
  v171 = MEMORY[0x223DDAFD0](v170);
  (*(v517 + 1))(v169, v520);
  v517 = *(v171 + 16);
  if (v517)
  {
    v172 = 0;
    v516 = (v171 + ((LOBYTE(v519[10].isa) + 32) & ~LOBYTE(v519[10].isa)));
    v514 = v519 + 11;
    v515 = v519 + 2;
    LODWORD(v513) = *MEMORY[0x277D397A8];
    v506 = *MEMORY[0x277D39798];
    v504 = *MEMORY[0x277D397A0];
    v511 = (v507 + 56);
    v512 = v519 + 1;
    v501 = *MEMORY[0x277D566C0];
    v508 = (v507 + 104);
    v503 = *MEMORY[0x277D566B8];
    v505 = *MEMORY[0x277D566C8];
    v510 = (v507 + 48);
    v520 = MEMORY[0x277D84F90];
    v509 = (v507 + 32);
    v173 = v521;
    while (1)
    {
      if (v172 >= *(v171 + 16))
      {
        __break(1u);
LABEL_88:

        v339 = *(v171 + 8);
        v520 = ((v171 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
        v521 = v339;
        (v339)(v173, v123);
        goto LABEL_89;
      }

      v169 = v171;
      v174 = v519;
      v175 = v519[2].isa;
      (v175)(v173, v516 + v519[9].isa * v172, v138);
      v176 = v173;
      v177 = v522;
      (v175)(v522, v176, v138);
      v178 = (v174[11].isa)(v177, v138);
      if (v178 == v513)
      {
        (v512->isa)(v176, v138);
        (*v508)(v123, v505, v124);
        (*v511)(v123, 0, 1, v124);
        v173 = v176;
      }

      else
      {
        if (v178 != v506)
        {
          v173 = v521;
          v171 = v169;
          if (v178 == v504)
          {
            (v512->isa)(v521, v138);
            (*v508)(v123, v501, v124);
            (*v511)(v123, 0, 1, v124);
          }

          else
          {
            if (one-time initialization token for pommes != -1)
            {
              swift_once();
            }

            v183 = type metadata accessor for Logger();
            __swift_project_value_buffer(v183, static Logger.pommes);
            v184 = Logger.logObject.getter();
            v185 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v184, v185))
            {
              v186 = swift_slowAlloc();
              *v186 = 0;
              _os_log_impl(&dword_2232BB000, v184, v185, "siriInstruction.userPromptSignals.promptTypes contains unhandled promptType", v186, 2u);
              v187 = v186;
              v173 = v521;
              MEMORY[0x223DE0F80](v187, -1, -1);
            }

            v169 = v512;
            v188 = v512->isa;
            (v512->isa)(v173, v138);
            (*v511)(v123, 1, 1, v124);
            v188(v522, v138);
          }

          goto LABEL_13;
        }

        v173 = v521;
        (v512->isa)(v521, v138);
        (*v508)(v123, v503, v124);
        (*v511)(v123, 0, 1, v124);
      }

      v171 = v169;
LABEL_13:
      if ((*v510)(v123, 1, v124) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v123, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMd, &_s21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOSgMR);
      }

      else
      {
        v179 = *v509;
        (*v509)(v518, v123, v124);
        v169 = v520;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v169 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v169[2].isa + 1, 1, v169);
        }

        v181 = v169[2].isa;
        v180 = v169[3].isa;
        v182 = v169;
        if (v181 >= v180 >> 1)
        {
          v182 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v180 > 1, v181 + 1, 1, v169);
        }

        v520 = v182;
        *(v182 + 16) = v181 + 1;
        v179((v182 + ((*(v507 + 80) + 32) & ~*(v507 + 80)) + *(v507 + 72) * v181), v518, v124);
        v173 = v521;
      }

      if (v517 == ++v172)
      {
        goto LABEL_27;
      }
    }
  }

  v520 = MEMORY[0x277D84F90];
LABEL_27:

  MEMORY[0x28223BE20](v189, v190);
  v425 = v520;
  v191 = type metadata accessor for PommesRenderOptions();
  v192 = objc_allocWithZone(v191);
  v193 = PommesRenderOptions.init(_:)();
  v524 = MEMORY[0x277D84F90];
  v194 = v488;
  v195 = v502;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.experience.getter();
  v196 = v499;
  v197 = v497;
  if ((*(v499 + 48))(v194, 1, v497) == 1)
  {

    outlined destroy of MediaUserStateCenter?(v194, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionV16OneOf_ExperienceOSgMR);

    v198 = MEMORY[0x277D84F90];
    v199 = v500;
    v200 = v496;
    goto LABEL_86;
  }

  v201 = v487;
  (*(v196 + 32))(v487, v194, v197);
  v202 = v486;
  (*(v196 + 16))(v486, v201, v197);
  v203 = (*(v196 + 88))(v202, v197);
  v199 = v500;
  v200 = v496;
  if (v203 != *MEMORY[0x277D38D80])
  {
    v248 = v203;
    v249 = *MEMORY[0x277D38D78];

    if (v248 != v249)
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v271 = type metadata accessor for Logger();
      __swift_project_value_buffer(v271, static Logger.pommes);
      v272 = Logger.logObject.getter();
      v273 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v272, v273))
      {
        v274 = swift_slowAlloc();
        *v274 = 0;
        _os_log_impl(&dword_2232BB000, v272, v273, "unexpected experience component", v274, 2u);
        v275 = v274;
        v202 = v486;
        MEMORY[0x223DE0F80](v275, -1, -1);
      }

      v276 = *(v196 + 8);
      v276(v487, v197);
      v276(v202, v197);

      goto LABEL_85;
    }

    (*(v196 + 96))(v202, v197);
    v250 = v483;
    v251 = v480;
    (*(v483 + 32))(v480, v202, v482);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v252 = type metadata accessor for Logger();
    v253 = __swift_project_value_buffer(v252, static Logger.pommes);
    v254 = Logger.logObject.getter();
    v255 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v254, v255))
    {
      v256 = swift_slowAlloc();
      *v256 = 0;
      _os_log_impl(&dword_2232BB000, v254, v255, "Adding a client driven experience", v256, 2u);
      v257 = v256;
      v250 = v483;
      MEMORY[0x223DE0F80](v257, -1, -1);
    }

    v258 = MEMORY[0x223DDB8B0]();
    v259 = *(v258 + 16);
    v521 = v253;
    v522 = v193;
    if (v259)
    {
      v260 = v469;
      v261 = v461;
      v262 = v470;
      (*(v469 + 16))(v461, v258 + ((*(v260 + 80) + 32) & ~*(v260 + 80)), v470);

      v263 = v460;
      Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
      (*(v260 + 8))(v261, v262);
      v264 = v476;
      v265 = v472;
      v266 = v263;
      v267 = v477;
      (*(v476 + 32))(v472, v266, v477);
      v268 = v462;
      Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
      v269 = v473;
      v270 = v474;
      if ((*(v473 + 48))(v268, 1, v474) != 1)
      {
        v292 = v459;
        (*(v269 + 32))(v459, v268, v270);
        v293 = v455;
        (*(v269 + 16))(v455, v292, v270);
        v294 = (*(v269 + 88))(v293, v270);
        if (v294 == *MEMORY[0x277D39A50])
        {
          (*(v269 + 96))(v293, v270);
          (*(v453 + 32))(v458, v293, v454);
          v171 = v476;
          v173 = v444;
          v123 = v477;
          (*(v476 + 16))(v444, v472, v477);
          v169 = Logger.logObject.getter();
          v295 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v169, v295))
          {
            goto LABEL_88;
          }

          v296 = swift_slowAlloc();
          v297 = swift_slowAlloc();
          v523 = v297;
          *v296 = 136315138;
          v298 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
          v299 = v173;
          v301 = v300;
          v302 = *(v171 + 8);
          v520 = ((v171 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
          v521 = v302;
          (v302)(v299, v123);
          v303 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v298, v301, &v523);

          *(v296 + 4) = v303;
          _os_log_impl(&dword_2232BB000, v169, v295, "Adding AudioExperience with identifier %s to PommesResponse", v296, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v297);
          MEMORY[0x223DE0F80](v297, -1, -1);
          MEMORY[0x223DE0F80](v296, -1, -1);

LABEL_89:
          v340 = v499;
          type metadata accessor for AudioExperience();
          Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
          v341 = v453;
          v342 = v454;
          (*(v453 + 16))(v445, v458, v454);
          (*(v498 + 16))(v481, v496, v500);
          outlined init with copy of ClientExperienceSignals?(v475, v446);
          v343 = v522;
          v344 = AudioExperience.__allocating_init(pluginId:audioClientComponent:queryConfidenceScore:userDialogAct:clientExperienceSignals:renderOptions:)();
          Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
          dispatch thunk of Experience.associatedEntities.setter();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v198 = swift_allocObject();
          *(v198 + 16) = xmmword_2234D0FE0;
          *(v198 + 32) = v344;

          (*(v341 + 8))(v458, v342);
          (*(v473 + 8))(v459, v474);
          v345 = v472;
        }

        else
        {
          if (v294 == *MEMORY[0x277D39A58])
          {
            (*(v269 + 96))(v293, v270);
            (*(v447 + 32))(v452, v293, v448);
            v304 = v476;
            v305 = v439;
            v306 = v472;
            v307 = v477;
            (*(v476 + 16))(v439, v472, v477);
            v308 = Logger.logObject.getter();
            v309 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v308, v309))
            {
              v310 = v307;
              v311 = swift_slowAlloc();
              v312 = swift_slowAlloc();
              v523 = v312;
              *v311 = 136315138;
              v313 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
              v314 = v305;
              v316 = v315;
              v317 = *(v304 + 8);
              v520 = ((v304 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              v521 = v317;
              (v317)(v314, v310);
              v318 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v313, v316, &v523);

              *(v311 + 4) = v318;
              _os_log_impl(&dword_2232BB000, v308, v309, "Adding VideoExperience with identifier %s to PommesResponse", v311, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v312);
              v306 = v472;
              MEMORY[0x223DE0F80](v312, -1, -1);
              MEMORY[0x223DE0F80](v311, -1, -1);
            }

            else
            {

              v360 = *(v304 + 8);
              v520 = ((v304 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              v521 = v360;
              (v360)(v305, v307);
            }

            v340 = v499;
            Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
            v361 = v447;
            v362 = v448;
            (*(v447 + 16))(v442, v452, v448);
            (*(v498 + 16))(v481, v496, v500);
            v363 = objc_allocWithZone(type metadata accessor for VideoExperience());
            v364 = v522;
            v365 = VideoExperience.init(pluginId:videoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
            Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
            dispatch thunk of Experience.associatedEntities.setter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v198 = swift_allocObject();
            *(v198 + 16) = xmmword_2234D0FE0;
            *(v198 + 32) = v365;

            (*(v361 + 8))(v452, v362);
          }

          else if (v294 == *MEMORY[0x277D39A40])
          {
            (*(v269 + 96))(v293, v270);
            (*(v440 + 32))(v443, v293, v441);
            v346 = v476;
            v347 = v436;
            v306 = v472;
            v348 = v477;
            (*(v476 + 16))(v436, v472, v477);
            v349 = Logger.logObject.getter();
            v350 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v349, v350))
            {
              v351 = v348;
              v352 = swift_slowAlloc();
              v353 = swift_slowAlloc();
              v523 = v353;
              *v352 = 136315138;
              v354 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
              v355 = v347;
              v357 = v356;
              v358 = *(v346 + 8);
              v520 = ((v346 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              v521 = v358;
              (v358)(v355, v351);
              v359 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v354, v357, &v523);

              *(v352 + 4) = v359;
              _os_log_impl(&dword_2232BB000, v349, v350, "Adding GeoExperience with identifier %s to PommesResponse", v352, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v353);
              v306 = v472;
              MEMORY[0x223DE0F80](v353, -1, -1);
              MEMORY[0x223DE0F80](v352, -1, -1);
            }

            else
            {

              v380 = *(v346 + 8);
              v520 = ((v346 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              v521 = v380;
              (v380)(v347, v348);
            }

            v340 = v499;
            Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
            v381 = v440;
            v382 = v441;
            (*(v440 + 16))(v437, v443, v441);
            (*(v498 + 16))(v481, v496, v500);
            v383 = objc_allocWithZone(type metadata accessor for GeoExperience());
            v384 = v522;
            v385 = GeoExperience.init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
            Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
            dispatch thunk of Experience.associatedEntities.setter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v198 = swift_allocObject();
            *(v198 + 16) = xmmword_2234D0FE0;
            *(v198 + 32) = v385;

            (*(v381 + 8))(v443, v382);
          }

          else
          {
            if (v294 != *MEMORY[0x277D39A48])
            {
              if (v294 == *MEMORY[0x277D39A38])
              {
                (*(v269 + 96))(v293, v270);
                (*(v432 + 32))(v431, v293, v433);
                v386 = v476;
                v387 = v427;
                v388 = v477;
                (*(v476 + 16))(v427, v472, v477);
                v389 = Logger.logObject.getter();
                v390 = static os_log_type_t.debug.getter();
                if (os_log_type_enabled(v389, v390))
                {
                  v391 = swift_slowAlloc();
                  v392 = swift_slowAlloc();
                  v523 = v392;
                  *v391 = 136315138;
                  v393 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
                  v395 = v394;
                  v396 = *(v386 + 8);
                  v520 = ((v386 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                  v521 = v396;
                  (v396)(v387, v388);
                  v397 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v393, v395, &v523);

                  *(v391 + 4) = v397;
                  _os_log_impl(&dword_2232BB000, v389, v390, "Adding DeviceExpertExperience with identifier %s to PommesResponse", v391, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1(v392);
                  MEMORY[0x223DE0F80](v392, -1, -1);
                  MEMORY[0x223DE0F80](v391, -1, -1);
                }

                else
                {

                  v411 = *(v386 + 8);
                  v520 = ((v386 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
                  v521 = v411;
                  (v411)(v387, v388);
                }

                v412 = v499;
                Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
                v413 = v432;
                v414 = v431;
                v415 = v433;
                (*(v432 + 16))(v428, v431, v433);
                v416 = v500;
                (*(v498 + 16))(v481, v496, v500);
                v417 = objc_allocWithZone(type metadata accessor for DeviceExpertExperience());
                v418 = DeviceExpertExperience.init(pluginId:deviceExpertClientComponent:queryConfidenceScore:userDialogAct:)();
                Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
                dispatch thunk of Experience.associatedEntities.setter();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
                v198 = swift_allocObject();
                *(v198 + 16) = xmmword_2234D0FE0;
                *(v198 + 32) = v418;

                (*(v413 + 8))(v414, v415);
                (*(v473 + 8))(v459, v474);
                (v521)(v472, v477);
                v200 = v496;
                v199 = v416;
                (*(v483 + 8))(v480, v482);
                (*(v412 + 8))(v487, v197);
                goto LABEL_86;
              }

              v404 = Logger.logObject.getter();
              v405 = static os_log_type_t.error.getter();
              v406 = os_log_type_enabled(v404, v405);
              v407 = v522;
              if (v406)
              {
                v408 = swift_slowAlloc();
                *v408 = 0;
                _os_log_impl(&dword_2232BB000, v404, v405, "Unexpected DomainComponent encountered when building Client Driven experience", v408, 2u);
                v269 = v473;
                MEMORY[0x223DE0F80](v408, -1, -1);
              }

              v409 = *(v269 + 8);
              v410 = v474;
              v409(v459, v474);
              (*(v476 + 8))(v472, v477);
              (*(v483 + 8))(v480, v482);
              (*(v499 + 8))(v487, v197);
              v409(v293, v410);

LABEL_85:
              v198 = MEMORY[0x277D84F90];
              goto LABEL_86;
            }

            (*(v269 + 96))(v293, v270);
            (*(v434 + 32))(v438, v293, v435);
            v366 = v476;
            v367 = v429;
            v306 = v472;
            v368 = v477;
            (*(v476 + 16))(v429, v472, v477);
            v369 = Logger.logObject.getter();
            v370 = static os_log_type_t.debug.getter();
            if (os_log_type_enabled(v369, v370))
            {
              v371 = v368;
              v372 = swift_slowAlloc();
              v373 = swift_slowAlloc();
              v523 = v373;
              *v372 = 136315138;
              v374 = Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
              v375 = v367;
              v377 = v376;
              v378 = *(v366 + 8);
              v520 = ((v366 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              v521 = v378;
              (v378)(v375, v371);
              v379 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v374, v377, &v523);

              *(v372 + 4) = v379;
              _os_log_impl(&dword_2232BB000, v369, v370, "Adding AppsExperience with identfier %s to PommesResponse", v372, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v373);
              v306 = v472;
              MEMORY[0x223DE0F80](v373, -1, -1);
              MEMORY[0x223DE0F80](v372, -1, -1);
            }

            else
            {

              v398 = *(v366 + 8);
              v520 = ((v366 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
              v521 = v398;
              (v398)(v367, v368);
            }

            v340 = v499;
            Apple_Parsec_Siri_V2alpha_DomainClientComponent.identifier.getter();
            v399 = v434;
            v400 = v435;
            (*(v434 + 16))(v430, v438, v435);
            (*(v498 + 16))(v481, v496, v500);
            v401 = objc_allocWithZone(type metadata accessor for AppLaunchExperience());
            v402 = v522;
            v403 = AppLaunchExperience.init(pluginId:appsClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)();
            Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
            dispatch thunk of Experience.associatedEntities.setter();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
            v198 = swift_allocObject();
            *(v198 + 16) = xmmword_2234D0FE0;
            *(v198 + 32) = v403;

            (*(v399 + 8))(v438, v400);
          }

          (*(v473 + 8))(v459, v474);
          v345 = v306;
        }

        (v521)(v345, v477);
        v200 = v496;
        v199 = v500;
        (*(v483 + 8))(v480, v482);
        (*(v340 + 8))(v487, v497);
        goto LABEL_86;
      }

      (*(v264 + 8))(v265, v267);
      outlined destroy of MediaUserStateCenter?(v268, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
      v193 = v522;
      v250 = v483;
      v196 = v499;
    }

    else
    {
    }

    v277 = v464;
    v278 = v482;
    v520 = *(v250 + 16);
    v518 = (v250 + 16);
    (v520)(v464, v251, v482);
    v279 = Logger.logObject.getter();
    v280 = v250;
    v281 = static os_log_type_t.debug.getter();
    v519 = v279;
    if (os_log_type_enabled(v279, v281))
    {
      LODWORD(v517) = v281;
      v282 = swift_slowAlloc();
      *v282 = 67109120;
      v283 = MEMORY[0x223DDB8B0]();
      if (*(v283 + 16))
      {
        v284 = v469;
        v285 = v449;
        v286 = v470;
        (*(v469 + 16))(v449, v283 + ((*(v284 + 80) + 32) & ~*(v284 + 80)), v470);
        v277 = v464;

        v287 = v457;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        (*(v284 + 8))(v285, v286);
        v288 = 0;
        v289 = 1;
      }

      else
      {

        v289 = 0;
        v288 = 1;
        v287 = v457;
      }

      (*(v476 + 56))(v287, v288, 1, v477);
      outlined destroy of MediaUserStateCenter?(v287, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentVSgMR);
      v290 = *(v483 + 8);
      v278 = v482;
      v290(v277, v482);
      *(v282 + 4) = v289;
      v291 = v519;
      _os_log_impl(&dword_2232BB000, v519, v517, "Has clientComponent? %{BOOL}d", v282, 8u);
      MEMORY[0x223DE0F80](v282, -1, -1);
      v251 = v480;
    }

    else
    {
      v290 = *(v280 + 8);
      v290(v277, v278);
      v291 = v519;
    }

    v319 = v465;
    (v520)(v465, v251, v278);
    v320 = Logger.logObject.getter();
    v321 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v320, v321))
    {
      LODWORD(v520) = v321;
      v521 = v290;
      v322 = swift_slowAlloc();
      *v322 = 67109120;
      v323 = MEMORY[0x223DDB8B0]();
      v199 = v500;
      v200 = v496;
      if (*(v323 + 16))
      {
        v324 = v469;
        v325 = v451;
        v326 = v470;
        (*(v469 + 16))(v451, v323 + ((*(v324 + 80) + 32) & ~*(v324 + 80)), v470);

        v327 = v450;
        Apple_Parsec_Siri_V2alpha_ClientComponent.domainComponent.getter();
        (*(v324 + 8))(v325, v326);
        v328 = v456;
        Apple_Parsec_Siri_V2alpha_DomainClientComponent.domainComponent.getter();
        v329 = v327;
        v319 = v465;
        (*(v476 + 8))(v329, v477);
        v330 = (*(v473 + 48))(v328, 1, v474) != 1;
      }

      else
      {

        v328 = v456;
        (*(v473 + 56))(v456, 1, 1, v474);
        v330 = 0;
      }

      outlined destroy of MediaUserStateCenter?(v328, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainClientComponentV06OneOf_gI0OSgMR);
      v332 = v319;
      v331 = v482;
      v333 = v521;
      (v521)(v332, v482);
      *(v322 + 4) = v330;
      _os_log_impl(&dword_2232BB000, v320, v520, "Has domainComponent? %{BOOL}d", v322, 8u);
      v334 = v322;
      v290 = v333;
      MEMORY[0x223DE0F80](v334, -1, -1);
      v193 = v522;
    }

    else
    {
      v290(v319, v278);
      v331 = v278;
      v199 = v500;
      v200 = v496;
    }

    v290(v480, v331);
    (*(v196 + 8))(v487, v197);
    goto LABEL_85;
  }

  (*(v196 + 96))(v202, v197);
  (*(v484 + 32))(v492, v202, v485);
  if (one-time initialization token for pommes != -1)
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
    _os_log_impl(&dword_2232BB000, v205, v206, "Adding a server driven experience", v207, 2u);
    MEMORY[0x223DE0F80](v207, -1, -1);
  }

  v208 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.hasPrimaryExperience.getter();
  v522 = v193;
  if (v208)
  {
    v521 = v191;
    v209 = v466;
    v210 = Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
    MEMORY[0x223DDAE00](v210);
    v211 = *(v467 + 8);
    v212 = v200;
    v213 = v468;
    v211(v209, v468);
    (*(v498 + 16))(v481, v212, v199);
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
    v214 = objc_allocWithZone(type metadata accessor for GenericExperience());
    v215 = v193;
    v216 = v213;
    v217 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
    Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
    LOBYTE(v212) = Apple_Parsec_Siri_V2alpha_SingleExperience.hasResultEntity.getter();
    v211(v209, v213);
    if (v212)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR);
      v218 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity() - 8);
      v219 = *(v218 + 72);
      v220 = (*(v218 + 80) + 32) & ~*(v218 + 80);
      *(swift_allocObject() + 16) = xmmword_2234CF920;
      v221 = v217;
      Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.primaryExperience.getter();
      Apple_Parsec_Siri_V2alpha_SingleExperience.resultEntity.getter();
      v211(v209, v216);
      dispatch thunk of Experience.associatedEntities.setter();

      v195 = v502;
    }

    if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
    {
      v222 = v471;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
      v223 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
      (*(*(v223 - 8) + 56))(v222, 0, 1, v223);
      dispatch thunk of GenericExperience.serverSuggestions.setter();
    }

    v224 = v217;
    MEMORY[0x223DDF820]();
    v191 = v521;
    v193 = v522;
    v197 = v497;
    v199 = v500;
    v196 = v499;
    v200 = v496;
    if (*((v524 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v524 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v420 = *((v524 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v225 = MEMORY[0x223DDB9D0]();
  MEMORY[0x28223BE20](v225, v226);
  v423 = *&a3;
  v424 = v200;
  v425 = v195;
  v426 = v193;
  v227 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:), &v421, v225);

  v228 = v492;
  v229 = specialized Array.append<A>(contentsOf:)(v227);
  v230 = *(MEMORY[0x223DDB9C0](v229) + 16);

  if (v230)
  {
    v231 = v199;
    v232 = specialized ExperiencesResolver.isSquawkResponse(serverExp:)();
    v233 = _s21SiriInformationSearch19ExperiencesResolverPAAE35shouldPreserveResultSpaceIfPossible33_7FAE26C68B95D22123CF4ADCD6DDA6083forSb10PegasusAPI013Apple_Parsec_A31_V2alpha_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt0g5Tm();
    MEMORY[0x223DDB9C0]();
    (*(v498 + 16))(v481, v200, v231);
    v234 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
    MEMORY[0x28223BE20](v234, v235);
    v236 = v494;
    *(&v427 - 8) = v493;
    *(&v427 - 7) = v236;
    v421 = v228;
    LOBYTE(v422) = v232 & 1;
    v423 = v475;
    v424 = v495;
    LOBYTE(v425) = v233 & 1;
    v426 = v520;
    v237 = objc_allocWithZone(v191);
    PommesRenderOptions.init(_:)();

    v238 = objc_allocWithZone(type metadata accessor for GenericExperience());
    v239 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    dispatch thunk of Experience.associatedEntities.setter();
    if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter())
    {
      v240 = v471;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
      v241 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
      (*(*(v241 - 8) + 56))(v240, 0, 1, v241);
      dispatch thunk of GenericExperience.serverSuggestions.setter();
    }

    v242 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasSageExperience.getter();
    if (v242)
    {
      v243 = v463;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.sageExperience.getter();
      v244 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
      (*(*(v244 - 8) + 56))(v243, 0, 1, v244);
      v242 = dispatch thunk of GenericExperience.sageExperience.setter();
    }

    MEMORY[0x223DDF820](v242);
    v245 = v522;
    v246 = v497;
    v247 = v499;
    v199 = v500;
    if (*((v524 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v524 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v419 = *((v524 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    (*(v247 + 8))(v487, v246);
    v228 = v492;
  }

  else
  {
    (*(v196 + 8))(v487, v197);
  }

  v198 = v524;
  (*(v484 + 8))(v228, v485);
LABEL_86:
  v335 = v491;
  v336 = v490;
  v337 = v489;
  (*(v498 + 8))(v200, v199);
  (*(v336 + 8))(v337, v335);
  return v198;
}

uint64_t closure #1 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X2>, char *a2@<X3>, char *a3@<X4>, uint64_t *a4@<X8>, double a5@<D0>)
{
  v24 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v24 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v22 = ExperiencesResolver.extractExperiences(from:score:with:with:)(v19, a1, a5, v21, a2, a3);
  outlined destroy of MediaUserStateCenter?(v13, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  result = (*(v15 + 8))(v19, v14);
  *v24 = v22;
  return result;
}

uint64_t closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>)
{
  v12 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.getter();
  v15[2] = a3;
  v15[3] = a4;
  v15[4] = a1;
  *&v15[5] = a6;
  v15[6] = a2;
  v13 = specialized Sequence.flatMap<A>(_:)(partial apply for closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:), v15, v12);

  *a5 = v13;
  return result;
}

uint64_t closure #1 in closure #2 in ExperiencesResolver.defaultExperiences(from:with:)@<X0>(NSObject *a1@<X0>, uint64_t a2@<X2>, char *a3@<X3>, char *a4@<X4>, uint64_t *a5@<X8>, double a6@<D0>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v21 - v15;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  v19 = ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, a2, a6, v18, a3, a4);
  result = outlined destroy of MediaUserStateCenter?(v16, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMd, &_s10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextVSgMR);
  *a5 = v19;
  return result;
}

uint64_t specialized ExperiencesResolver.isSquawkResponse(serverExp:)()
{
  v65 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams();
  v0 = *(v65 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v65, v2);
  v64 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v8 = &v61 - v7;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v93 = *(v9 - 8);
  v10 = *(v93 + 64);
  v12 = MEMORY[0x28223BE20](v9, v11);
  v86 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v91 = &v61 - v15;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8, v24);
  v26 = &v61 - v25;
  v72 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v27 = *(v72 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v72, v29);
  v71 = &v61 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v31 = *(v73 - 8);
  v32 = *(v31 + 64);
  v34 = MEMORY[0x28223BE20](v73, v33);
  v88 = &v61 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x223DDB9C0](v34);
  v79 = *(result + 16);
  if (!v79)
  {
LABEL_21:

    return 0;
  }

  v37 = 0;
  v78 = result + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v77 = v31 + 16;
  v70 = *MEMORY[0x277D398F8];
  v76 = (v31 + 8);
  v69 = (v27 + 32);
  v90 = v17 + 8;
  v89 = (v93 + 48);
  v85 = (v93 + 32);
  v84 = (v93 + 16);
  v83 = (v93 + 88);
  v82 = *MEMORY[0x277D38D40];
  v81 = (v93 + 8);
  v63 = (v93 + 96);
  v62 = (v0 + 32);
  v61 = (v0 + 8);
  v66 = (v27 + 8);
  v38 = v73;
  v67 = v26;
  v74 = v31;
  v75 = result;
  v68 = v17 + 16;
  v80 = v21;
  while (1)
  {
    if (v37 >= *(result + 16))
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v39 = *(v31 + 72);
    v87 = v37;
    v40 = v88;
    (*(v31 + 16))(v88, v78 + v39 * v37, v38);
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
    v41 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
    v42 = v38;
    v43 = *(v41 - 8);
    if ((*(v43 + 48))(v26, 1, v41) != 1)
    {
      break;
    }

    (*v76)(v40, v42);
    outlined destroy of MediaUserStateCenter?(v26, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
LABEL_4:
    v38 = v42;
LABEL_5:
    v37 = v87 + 1;
    v31 = v74;
    result = v75;
    if (v87 + 1 == v79)
    {
      goto LABEL_21;
    }
  }

  v44 = (*(v43 + 88))(v26, v41);
  if (v44 != v70)
  {
    v42 = v73;
    (*v76)(v88, v73);
    (*(v43 + 8))(v26, v41);
    goto LABEL_4;
  }

  (*(v43 + 96))(v26, v41);
  v45 = (*v69)(v71, v26, v72);
  result = MEMORY[0x223DDB910](v45);
  v46 = result;
  v47 = v88;
  v93 = *(result + 16);
  if (!v93)
  {
LABEL_18:

    (*v66)(v71, v72);
    v38 = v73;
    (*v76)(v47, v73);
    v26 = v67;
    goto LABEL_5;
  }

  v48 = 0;
  v92 = result + ((*(v17 + 80) + 32) & ~*(v17 + 80));
  while (1)
  {
    if (v48 >= *(v46 + 16))
    {
      __break(1u);
      goto LABEL_24;
    }

    (*(v17 + 16))(v21, v92 + *(v17 + 72) * v48, v16);
    Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
    (*(v17 + 8))(v21, v16);
    if ((*v89)(v8, 1, v9) != 1)
    {
      break;
    }

    result = outlined destroy of MediaUserStateCenter?(v8, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
LABEL_12:
    if (v93 == ++v48)
    {
      goto LABEL_18;
    }
  }

  v49 = v91;
  (*v85)(v91, v8, v9);
  v50 = v86;
  (*v84)(v86, v49, v9);
  v51 = (*v83)(v50, v9);
  if (v51 != v82)
  {
    v52 = v17;
    v53 = v16;
    v54 = v8;
    v55 = v50;
    v56 = *v81;
    (*v81)(v91, v9);
    v57 = v55;
    v8 = v54;
    v16 = v53;
    v17 = v52;
    result = (v56)(v57, v9);
    v21 = v80;
    v47 = v88;
    goto LABEL_12;
  }

  (*v63)(v50, v9);
  v58 = v64;
  v59 = v65;
  (*v62)(v64, v50, v65);
  v60 = Apple_Parsec_Siri_V2alpha_SayItBuilderParams.hasAudioData.getter();
  (*v61)(v58, v59);
  (*v81)(v91, v9);
  (*v66)(v71, v72);
  v38 = v73;
  (*v76)(v88, v73);
  v21 = v80;
  v26 = v67;
  if ((v60 & 1) == 0)
  {
    goto LABEL_5;
  }

  return 1;
}

uint64_t Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.containsDelayedActionComponent(where:)(uint64_t (*a1)(char *), uint64_t a2)
{
  v39 = a1;
  v40 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v6 = &v34 - v5;
  v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v7 = *(v38 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v38, v9);
  v37 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x223DDB9C0](v15);
  v19 = result;
  v20 = *(result + 16);
  if (v20)
  {
    v21 = 0;
    v22 = result + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v43 = v12 + 16;
    v41 = *MEMORY[0x277D398F8];
    v42 = (v12 + 8);
    v34 = (v7 + 8);
    v35 = (v7 + 32);
    v36 = v22;
    while (v21 < *(v19 + 16))
    {
      (*(v12 + 16))(v17, v22 + *(v12 + 72) * v21, v11);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v6, 1, v23) == 1)
      {
        (*v42)(v17, v11);
        result = outlined destroy of MediaUserStateCenter?(v6, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      }

      else
      {
        v25 = (*(v24 + 88))(v6, v23);
        if (v25 == v41)
        {
          (*(v24 + 96))(v6, v23);
          v26 = v12;
          v27 = v11;
          v28 = v19;
          v29 = v20;
          v31 = v37;
          v30 = v38;
          (*v35)(v37, v6, v38);
          v32 = v39(v31);
          v33 = v31;
          v20 = v29;
          v19 = v28;
          v11 = v27;
          v12 = v26;
          v22 = v36;
          (*v34)(v33, v30);
          result = (*v42)(v17, v11);
          if (v32)
          {

            return 1;
          }
        }

        else
        {
          (*v42)(v17, v11);
          result = (*(v24 + 8))(v6, v23);
        }
      }

      if (v20 == ++v21)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    return 0;
  }

  return result;
}

uint64_t specialized ExperiencesResolver.extractSwitchProfile(serverExp:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v105 = &v67 - v5;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v98 = &v67 - v13;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v104 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v19 = *(v82 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v82, v21);
  v81 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v74 = &v67 - v26;
  v75 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
  v27 = *(v75 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v75, v29);
  v73 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v83 = &v67 - v33;
  v92 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v34 = *(v92 - 8);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x28223BE20](v92, v36);
  v91 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x223DDB9C0](v37);
  v85 = *(result + 16);
  if (v85)
  {
    v97 = v11;
    v68 = a1;
    v40 = 0;
    v90 = result + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v88 = v34 + 8;
    v89 = v34 + 16;
    v87 = (v27 + 48);
    v80 = (v27 + 32);
    v79 = (v27 + 16);
    v78 = (v27 + 88);
    v77 = *MEMORY[0x277D398F8];
    v76 = (v27 + 8);
    v72 = (v27 + 96);
    v71 = (v19 + 32);
    v102 = v15 + 8;
    v103 = v15 + 16;
    v101 = (v69 + 48);
    v96 = (v69 + 32);
    v95 = (v69 + 88);
    v94 = *MEMORY[0x277D38D20];
    v93 = (v69 + 8);
    v70 = (v19 + 8);
    v41 = v75;
    v42 = v74;
    v43 = v73;
    v84 = v34;
    v86 = result;
    while (v40 < *(result + 16))
    {
      v44 = *(v34 + 72);
      v100 = v40;
      v45 = v91;
      v46 = v92;
      (*(v34 + 16))(v91, v90 + v44 * v40, v92);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      (*(v34 + 8))(v45, v46);
      if ((*v87)(v42, 1, v41) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v42, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      }

      else
      {
        v47 = v83;
        (*v80)(v83, v42, v41);
        (*v79)(v43, v47, v41);
        v48 = (*v78)(v43, v41);
        if (v48 == v77)
        {
          (*v72)(v43, v41);
          v49 = (*v71)(v81, v43, v82);
          result = MEMORY[0x223DDB910](v49);
          v50 = result;
          v51 = *(result + 16);
          if (v51)
          {
            v52 = 0;
            v53 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
            v99 = result;
            while (v52 < *(v50 + 16))
            {
              v54 = v104;
              (*(v15 + 16))(v104, v53 + *(v15 + 72) * v52, v14);
              v55 = v105;
              Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
              (*(v15 + 8))(v54, v14);
              if ((*v101)(v55, 1, v6) == 1)
              {
                result = outlined destroy of MediaUserStateCenter?(v105, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
              }

              else
              {
                v56 = v15;
                v57 = v14;
                v58 = *v96;
                v59 = v98;
                (*v96)(v98, v105, v6);
                v60 = v97;
                v58(v97, v59, v6);
                v61 = (*v95)(v60, v6);
                if (v61 == v94)
                {

                  (*v70)(v81, v82);
                  (*v76)(v83, v75);
                  (*(v69 + 96))(v60, v6);
                  v63 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
                  v64 = *(v63 - 8);
                  v65 = v68;
                  (*(v64 + 32))(v68, v60, v63);
                  return (*(v64 + 56))(v65, 0, 1, v63);
                }

                result = (*v93)(v60, v6);
                v14 = v57;
                v15 = v56;
                v50 = v99;
              }

              if (v51 == ++v52)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            break;
          }

LABEL_17:

          (*v70)(v81, v82);
          v41 = v75;
          (*v76)(v83, v75);
          v42 = v74;
          v43 = v73;
        }

        else
        {
          v62 = *v76;
          (*v76)(v47, v41);
          v62(v43, v41);
        }
      }

      v34 = v84;
      v40 = v100 + 1;
      result = v86;
      if (v100 + 1 == v85)
      {

        a1 = v68;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
    return (*(*(v66 - 8) + 56))(a1, 1, 1, v66);
  }

  return result;
}

uint64_t _s21SiriInformationSearch19ExperiencesResolverPAAE20extractSwitchProfile33_7FAE26C68B95D22123CF4ADCD6DDA608LL9serverExp10PegasusAPI013Apple_Parsec_a9_V2alpha_gH13BuilderParamsVSgAG0t1_u1_a1_V23_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt1g5Tm@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v105 = &v67 - v5;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
  v69 = *(v6 - 8);
  v7 = *(v69 + 64);
  v9 = MEMORY[0x28223BE20](v6, v8);
  v11 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v98 = &v67 - v13;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14, v17);
  v104 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v19 = *(v82 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v82, v21);
  v81 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8, v25);
  v74 = &v67 - v26;
  v75 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
  v27 = *(v75 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v75, v29);
  v73 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30, v32);
  v83 = &v67 - v33;
  v92 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v34 = *(v92 - 8);
  v35 = *(v34 + 64);
  v37 = MEMORY[0x28223BE20](v92, v36);
  v91 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x223DDB9C0](v37);
  v85 = *(result + 16);
  if (v85)
  {
    v97 = v11;
    v68 = a1;
    v40 = 0;
    v90 = result + ((*(v34 + 80) + 32) & ~*(v34 + 80));
    v88 = v34 + 8;
    v89 = v34 + 16;
    v87 = (v27 + 48);
    v80 = (v27 + 32);
    v79 = (v27 + 16);
    v78 = (v27 + 88);
    v77 = *MEMORY[0x277D398F8];
    v76 = (v27 + 8);
    v72 = (v27 + 96);
    v71 = (v19 + 32);
    v102 = v15 + 8;
    v103 = v15 + 16;
    v101 = (v69 + 48);
    v96 = (v69 + 32);
    v95 = (v69 + 88);
    v94 = *MEMORY[0x277D38D20];
    v93 = (v69 + 8);
    v70 = (v19 + 8);
    v41 = v75;
    v42 = v74;
    v43 = v73;
    v84 = v34;
    v86 = result;
    while (v40 < *(result + 16))
    {
      v44 = *(v34 + 72);
      v100 = v40;
      v45 = v91;
      v46 = v92;
      (*(v34 + 16))(v91, v90 + v44 * v40, v92);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      (*(v34 + 8))(v45, v46);
      if ((*v87)(v42, 1, v41) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v42, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      }

      else
      {
        v47 = v83;
        (*v80)(v83, v42, v41);
        (*v79)(v43, v47, v41);
        v48 = (*v78)(v43, v41);
        if (v48 == v77)
        {
          (*v72)(v43, v41);
          v49 = (*v71)(v81, v43, v82);
          result = MEMORY[0x223DDB910](v49);
          v50 = result;
          v51 = *(result + 16);
          if (v51)
          {
            v52 = 0;
            v53 = result + ((*(v15 + 80) + 32) & ~*(v15 + 80));
            v99 = result;
            while (v52 < *(v50 + 16))
            {
              v54 = v104;
              (*(v15 + 16))(v104, v53 + *(v15 + 72) * v52, v14);
              v55 = v105;
              Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
              (*(v15 + 8))(v54, v14);
              if ((*v101)(v55, 1, v6) == 1)
              {
                result = outlined destroy of MediaUserStateCenter?(v105, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
              }

              else
              {
                v56 = v15;
                v57 = v14;
                v58 = *v96;
                v59 = v98;
                (*v96)(v98, v105, v6);
                v60 = v97;
                v58(v97, v59, v6);
                v61 = (*v95)(v60, v6);
                if (v61 == v94)
                {

                  (*v70)(v81, v82);
                  (*v76)(v83, v75);
                  (*(v69 + 96))(v60, v6);
                  v63 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
                  v64 = *(v63 - 8);
                  v65 = v68;
                  (*(v64 + 32))(v68, v60, v63);
                  return (*(v64 + 56))(v65, 0, 1, v63);
                }

                result = (*v93)(v60, v6);
                v14 = v57;
                v15 = v56;
                v50 = v99;
              }

              if (v51 == ++v52)
              {
                goto LABEL_17;
              }
            }

            __break(1u);
            break;
          }

LABEL_17:

          (*v70)(v81, v82);
          v41 = v75;
          (*v76)(v83, v75);
          v42 = v74;
          v43 = v73;
        }

        else
        {
          v62 = *v76;
          (*v76)(v47, v41);
          v62(v43, v41);
        }
      }

      v34 = v84;
      v40 = v100 + 1;
      result = v86;
      if (v100 + 1 == v85)
      {

        a1 = v68;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    v66 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
    return (*(*(v66 - 8) + 56))(a1, 1, 1, v66);
  }

  return result;
}

uint64_t specialized ExperiencesResolver.shouldPreserveResultSpaceIfPossible(for:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v25 - v3;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v28, v7);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.preserveResultSpaceIfPossible.getter())
  {
    return 1;
  }

  result = MEMORY[0x223DDB9C0]();
  v16 = result;
  v32 = *(result + 16);
  if (v32)
  {
    v17 = 0;
    v31 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v30 = v10 + 16;
    v29 = *MEMORY[0x277D398F8];
    v18 = (v10 + 8);
    v25 = (v5 + 8);
    v26 = (v5 + 32);
    while (v17 < *(v16 + 16))
    {
      (*(v10 + 16))(v14, v31 + *(v10 + 72) * v17, v9);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v4, 1, v19) == 1)
      {
        (*v18)(v14, v9);
        result = outlined destroy of MediaUserStateCenter?(v4, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      }

      else
      {
        v21 = (*(v20 + 88))(v4, v19);
        if (v21 == v29)
        {
          (*(v20 + 96))(v4, v19);
          v22 = v27;
          v23 = v28;
          (*v26)(v27, v4, v28);
          v24 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.preserveResultSpaceIfPossible.getter();
          (*v25)(v22, v23);
          result = (*v18)(v14, v9);
          if (v24)
          {

            return 1;
          }
        }

        else
        {
          (*v18)(v14, v9);
          result = (*(v20 + 8))(v4, v19);
        }
      }

      if (v32 == ++v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    return 0;
  }

  return result;
}

uint64_t _s21SiriInformationSearch19ExperiencesResolverPAAE35shouldPreserveResultSpaceIfPossible33_7FAE26C68B95D22123CF4ADCD6DDA608LL3forSb10PegasusAPI013Apple_Parsec_A31_V2alpha_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt0g5Tm()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8, v2);
  v4 = &v25 - v3;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v5 = *(v28 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v28, v7);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.preserveResultSpaceIfPossible.getter())
  {
    return 1;
  }

  result = MEMORY[0x223DDB9C0]();
  v16 = result;
  v32 = *(result + 16);
  if (v32)
  {
    v17 = 0;
    v31 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v30 = v10 + 16;
    v29 = *MEMORY[0x277D398F8];
    v18 = (v10 + 8);
    v25 = (v5 + 8);
    v26 = (v5 + 32);
    while (v17 < *(v16 + 16))
    {
      (*(v10 + 16))(v14, v31 + *(v10 + 72) * v17, v9);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
      v20 = *(v19 - 8);
      if ((*(v20 + 48))(v4, 1, v19) == 1)
      {
        (*v18)(v14, v9);
        result = outlined destroy of MediaUserStateCenter?(v4, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, _s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      }

      else
      {
        v21 = (*(v20 + 88))(v4, v19);
        if (v21 == v29)
        {
          (*(v20 + 96))(v4, v19);
          v22 = v27;
          v23 = v28;
          (*v26)(v27, v4, v28);
          v24 = Apple_Parsec_Siri_V2alpha_DelayedActionComponent.preserveResultSpaceIfPossible.getter();
          (*v25)(v22, v23);
          result = (*v18)(v14, v9);
          if (v24)
          {

            return 1;
          }
        }

        else
        {
          (*v18)(v14, v9);
          result = (*(v20 + 8))(v4, v19);
        }
      }

      if (v32 == ++v17)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    return 0;
  }

  return result;
}

uint64_t _s21SiriInformationSearch19ExperiencesResolverPAAE13userDialogAct33_7FAE26C68B95D22123CF4ADCD6DDA608LL4from0A8NLUTypes0a18_Nlu_External_UsergH0V10PegasusAPI013Apple_Parsec_A28_V2alpha_ServerUnderstandingV_tFZAA07DefaultdE0V_Tt1g5Tm@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44 = a1;
  v3 = type metadata accessor for Date();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v42 - v12;
  v14 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.getter();
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v18 = *(v14 + 16);
      v19 = *(v14 + 24);
      outlined consume of Data._Representation(v14, v15);
      if (v18 == v19)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    outlined consume of Data._Representation(v14, v15);
  }

  else
  {
    if (!v16)
    {
      v17 = v15;
      outlined consume of Data._Representation(v14, v15);
      if ((v17 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      v21 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.getter();
      goto LABEL_12;
    }

    v20 = v14;
    outlined consume of Data._Representation(v14, v15);
    if (v20 != v20 >> 32)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v21 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogAct.getter();
LABEL_12:
  v23 = v21;
  v24 = v22;
  v25 = v22 >> 62;
  if ((v22 >> 62) > 1)
  {
    if (v25 != 2 || *(v21 + 16) == *(v21 + 24))
    {
      goto LABEL_27;
    }
  }

  else if (v25)
  {
    if (v21 == v21 >> 32)
    {
LABEL_27:
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      __swift_project_value_buffer(v35, static Logger.pommes);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_2232BB000, v36, v37, "Empty UDA data in server understanding.", v38, 2u);
        MEMORY[0x223DE0F80](v38, -1, -1);
      }

      Siri_Nlu_External_UserDialogAct.init()();

      return outlined consume of Data._Representation(v23, v24);
    }
  }

  else if ((v22 & 0xFF000000000000) == 0)
  {
    goto LABEL_27;
  }

  v42 = v4;
  v43 = a2;
  if (one-time initialization token for shared != -1)
  {
    v21 = swift_once();
  }

  v26 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v21, v22);
  v40 = v23;
  v41 = v24;
  Date.init()();
  v27 = *(*v26 + 200);
  v40 = &v39;
  v41 = v9;
  LOBYTE(v39) = 2;
  v27(0xD000000000000030, 0x80000002234DF2D0, 0, v8, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 405, "userDialogAct(from:)", 20, v39, v44);
  (*(v42 + 8))(v8, v3);
  v28 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v29 = *(v28 - 8);
  if ((*(v29 + 48))(v13, 1, v28) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v13, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.pommes);
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_2232BB000, v31, v32, "Unable to deserialize UserDialogAct from ServerUnderstanding", v33, 2u);
      MEMORY[0x223DE0F80](v33, -1, -1);
    }

    Siri_Nlu_External_UserDialogAct.init()();
    return outlined consume of Data._Representation(v23, v24);
  }

  else
  {
    outlined consume of Data._Representation(v23, v24);
    return (*(v29 + 32))(v43, v13, v28);
  }
}

uint64_t static ExperiencesResolver.userDialogAct(from:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v41 - v11;
  v13 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.getter();
  v15 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v15 == 2)
    {
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      outlined consume of Data._Representation(v13, v14);
      if (v18 == v17)
      {
        goto LABEL_11;
      }

      goto LABEL_9;
    }

    outlined consume of Data._Representation(v13, v14);
  }

  else
  {
    if (!v15)
    {
      v16 = v14;
      outlined consume of Data._Representation(v13, v14);
      if ((v16 & 0xFF000000000000) == 0)
      {
        goto LABEL_11;
      }

LABEL_9:
      v20 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogActOverride.getter();
      goto LABEL_12;
    }

    v19 = v13;
    outlined consume of Data._Representation(v13, v14);
    if (v19 != v19 >> 32)
    {
      goto LABEL_9;
    }
  }

LABEL_11:
  v20 = Apple_Parsec_Siri_V2alpha_ServerUnderstanding.userDialogAct.getter();
LABEL_12:
  v22 = v20;
  v23 = v21;
  v24 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v24 != 2 || *(v20 + 16) == *(v20 + 24))
    {
      goto LABEL_27;
    }
  }

  else if (v24)
  {
    if (v20 == v20 >> 32)
    {
LABEL_27:
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v34 = type metadata accessor for Logger();
      __swift_project_value_buffer(v34, static Logger.pommes);
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&dword_2232BB000, v35, v36, "Empty UDA data in server understanding.", v37, 2u);
        MEMORY[0x223DE0F80](v37, -1, -1);
      }

      Siri_Nlu_External_UserDialogAct.init()();

      return outlined consume of Data._Representation(v22, v23);
    }
  }

  else if ((v21 & 0xFF000000000000) == 0)
  {
    goto LABEL_27;
  }

  v42 = v3;
  v43 = a1;
  if (one-time initialization token for shared != -1)
  {
    v20 = swift_once();
  }

  v25 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v20, v21);
  v39 = v22;
  v40 = v23;
  Date.init()();
  v26 = *(*v25 + 200);
  v39 = &v38;
  v40 = v8;
  LOBYTE(v38) = 2;
  v26(0xD000000000000030, 0x80000002234DF2D0, 0, v7, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 405, "userDialogAct(from:)", 20, v38, closure #1 in static ExperiencesResolver.userDialogAct(from:)partial apply);
  (*(v42 + 8))(v7, v2);
  v27 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v28 = *(v27 - 8);
  if ((*(v28 + 48))(v12, 1, v27) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v12, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
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
      _os_log_impl(&dword_2232BB000, v30, v31, "Unable to deserialize UserDialogAct from ServerUnderstanding", v32, 2u);
      MEMORY[0x223DE0F80](v32, -1, -1);
    }

    Siri_Nlu_External_UserDialogAct.init()();
    return outlined consume of Data._Representation(v22, v23);
  }

  else
  {
    outlined consume of Data._Representation(v22, v23);
    return (*(v28 + 32))(v43, v12, v27);
  }
}

uint64_t closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:)@<X0>(uint64_t a1@<X1>, void *a2@<X3>, void *a3@<X8>)
{
  v30 = a3;
  v29 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v28 = &v28 - v7;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8, v10);
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x223DDAE00](v15);
  (*(v12 + 16))(v17, a1, v11);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.instructionIntent.getter();
  v18 = objc_allocWithZone(type metadata accessor for GenericExperience());
  v19 = v29;
  v20 = GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)();
  if (Apple_Parsec_Siri_V2alpha_SingleExperience.hasResultEntity.getter())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR);
    v21 = *(type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity() - 8);
    v22 = *(v21 + 72);
    v23 = (*(v21 + 80) + 32) & ~*(v21 + 80);
    *(swift_allocObject() + 16) = xmmword_2234CF920;
    v24 = v20;
    Apple_Parsec_Siri_V2alpha_SingleExperience.resultEntity.getter();
    dispatch thunk of Experience.associatedEntities.setter();
  }

  result = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.hasServerSuggestion.getter();
  if (result)
  {
    v26 = v28;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverSuggestion.getter();
    v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
    (*(*(v27 - 8) + 56))(v26, 0, 1, v27);
    result = dispatch thunk of GenericExperience.serverSuggestions.setter();
  }

  *v30 = v20;
  return result;
}

uint64_t specialized closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v18 - v13;
  Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.isImmersiveExperience.getter();
  PommesRenderOptions.Builder.isImmersiveExperience.setter();
  PommesRenderOptions.Builder.isSquawkResponse.setter();
  outlined init with copy of ClientExperienceSignals?(a4, v14);
  v15 = type metadata accessor for ClientExperienceSignals();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v14, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  }

  else
  {
    ClientExperienceSignals.isPhoneCallActive.getter();
    (*(v16 + 8))(v14, v15);
  }

  PommesRenderOptions.Builder.isPhoneCallActive.setter();
  specialized ExperiencesResolver.extractSwitchProfile(serverExp:)(v9);
  PommesRenderOptions.Builder.switchProfile.setter();
  PommesRenderOptions.Builder.preserveResultSpaceIfPossible.setter();

  return PommesRenderOptions.Builder.promptTypes.setter();
}

{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8, v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v14 = &v18 - v13;
  Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.isImmersiveExperience.getter();
  PommesRenderOptions.Builder.isImmersiveExperience.setter();
  PommesRenderOptions.Builder.isSquawkResponse.setter();
  outlined init with copy of ClientExperienceSignals?(a4, v14);
  v15 = type metadata accessor for ClientExperienceSignals();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v14, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  }

  else
  {
    ClientExperienceSignals.isPhoneCallActive.getter();
    (*(v16 + 8))(v14, v15);
  }

  PommesRenderOptions.Builder.isPhoneCallActive.setter();
  _s21SiriInformationSearch19ExperiencesResolverPAAE20extractSwitchProfile33_7FAE26C68B95D22123CF4ADCD6DDA6089serverExp10PegasusAPI013Apple_Parsec_a9_V2alpha_gH13BuilderParamsVSgAG0t1_u1_a1_V23_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt1g5Tm(v9);
  PommesRenderOptions.Builder.switchProfile.setter();
  PommesRenderOptions.Builder.preserveResultSpaceIfPossible.setter();

  return PommesRenderOptions.Builder.promptTypes.setter();
}

uint64_t closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8)
{
  v22 = a8;
  v23 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8, v11);
  v13 = &v22 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v22 - v17;
  Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.isImmersiveExperience.getter();
  PommesRenderOptions.Builder.isImmersiveExperience.setter();
  PommesRenderOptions.Builder.isSquawkResponse.setter();
  outlined init with copy of ClientExperienceSignals?(a4, v18);
  v19 = type metadata accessor for ClientExperienceSignals();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v18, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  }

  else
  {
    ClientExperienceSignals.isPhoneCallActive.getter();
    (*(v20 + 8))(v18, v19);
  }

  PommesRenderOptions.Builder.isPhoneCallActive.setter();
  _s21SiriInformationSearch19ExperiencesResolverPAAE20extractSwitchProfile33_7FAE26C68B95D22123CF4ADCD6DDA6089serverExp10PegasusAPI013Apple_Parsec_a9_V2alpha_gH13BuilderParamsVSgAG0t1_u1_a1_V23_ServerDrivenExperienceV_tFAA09PhoneCalldE0V_Tt1g5Tm(v13);
  PommesRenderOptions.Builder.switchProfile.setter();
  PommesRenderOptions.Builder.preserveResultSpaceIfPossible.setter();

  return PommesRenderOptions.Builder.promptTypes.setter();
}

uint64_t closure #1 in static ExperiencesResolver.userDialogAct(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  outlined copy of Data._Representation(a1, a2);
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct();
  Message.init(serializedData:extensions:partial:options:)();
  if (v3)
  {

    v11 = 1;
  }

  else
  {
    v11 = 0;
  }

  return (*(*(v10 - 8) + 56))(a3, v11, 1, v10);
}

uint64_t partial apply for closure #1 in ExperiencesResolver.extractExperiences(from:score:with:with:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  swift_getDynamicType();
  return static ExperiencesResolver.userDialogAct(from:)(a1);
}

uint64_t partial apply for closure #3 in ExperiencesResolver.extractExperiences(from:score:with:with:)()
{
  v1 = *(v0 + 16);

  return PommesRenderOptions.Builder.promptTypes.setter();
}

uint64_t outlined init with copy of ClientExperienceSignals?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:)@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  return closure #4 in ExperiencesResolver.extractExperiences(from:score:with:with:)(*(v1 + 24), *(v1 + 40), a1);
}

uint64_t partial apply for specialized closure #1 in ExperiencesResolver.extractExperiences(from:score:with:with:)@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  return _s21SiriInformationSearch19ExperiencesResolverPAAE13userDialogAct33_7FAE26C68B95D22123CF4ADCD6DDA6084from0A8NLUTypes0a18_Nlu_External_UsergH0V10PegasusAPI013Apple_Parsec_A28_V2alpha_ServerUnderstandingV_tFZAA07DefaultdE0V_Tt1g5Tm(partial apply for closure #1 in static ExperiencesResolver.userDialogAct(from:), a1);
}

{
  v2 = *(v1 + 24);
  return _s21SiriInformationSearch19ExperiencesResolverPAAE13userDialogAct33_7FAE26C68B95D22123CF4ADCD6DDA6084from0A8NLUTypes0a18_Nlu_External_UsergH0V10PegasusAPI013Apple_Parsec_A28_V2alpha_ServerUnderstandingV_tFZAA07DefaultdE0V_Tt1g5Tm(closure #1 in static ExperiencesResolver.userDialogAct(from:)partial apply, a1);
}

unint64_t lazy protocol witness table accessor for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct()
{
  result = lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct;
  if (!lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct)
  {
    type metadata accessor for Siri_Nlu_External_UserDialogAct();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct);
  }

  return result;
}

uint64_t partial apply for specialized closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 56);
  return specialized closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

{
  v2 = *(v1 + 48);
  v3 = *(v1 + 56);
  return specialized closure #5 in ExperiencesResolver.extractExperiences(from:score:with:with:)(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32));
}

uint64_t specialized Sequence.flatMap<A>(_:)(void (*a1)(unint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v35 = *(a3 + 16);
  if (!v35)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = 0;
  v7 = *(type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction() - 8);
  v34 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v8 = MEMORY[0x277D84F90];
  v33 = *(v7 + 72);
  while (1)
  {
    v10 = v4;
    a1(&v40, v34 + v33 * v6);
    if (v4)
    {

      return v8;
    }

    v11 = v40;
    v12 = v40 >> 62;
    v13 = v40 >> 62 ? __CocoaSet.count.getter() : *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v14 = v8 >> 62;
    if (v8 >> 62)
    {
      v31 = __CocoaSet.count.getter();
      v16 = v31 + v13;
      if (__OFADD__(v31, v13))
      {
LABEL_35:
        __break(1u);
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      v15 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v16 = v15 + v13;
      if (__OFADD__(v15, v13))
      {
        goto LABEL_35;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v38 = v13;
    if (result)
    {
      if (v14)
      {
        goto LABEL_17;
      }

      v17 = v8 & 0xFFFFFFFFFFFFFF8;
      if (v16 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v14)
      {
LABEL_17:
        __CocoaSet.count.getter();
        goto LABEL_18;
      }

      v17 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v18 = *(v17 + 16);
LABEL_18:
    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v8 = result;
    v17 = result & 0xFFFFFFFFFFFFFF8;
LABEL_19:
    v19 = *(v17 + 16);
    v20 = *(v17 + 24);
    if (v12)
    {
      break;
    }

    v21 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_3;
    }

LABEL_23:
    if (((v20 >> 1) - v19) < v38)
    {
      goto LABEL_40;
    }

    v37 = v8;
    v23 = v17 + 8 * v19 + 32;
    v32 = v17;
    if (v12)
    {
      if (v21 < 1)
      {
        goto LABEL_42;
      }

      lazy protocol witness table accessor for type [Experience] and conformance [A]();
      for (i = 0; i != v21; ++i)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
        v25 = specialized protocol witness for Collection.subscript.read in conformance [A](v39, i, v11);
        v27 = *v26;
        (v25)(v39, 0);
        *(v23 + 8 * i) = v27;
      }
    }

    else
    {
      type metadata accessor for Experience();
      swift_arrayInitWithCopy();
    }

    v4 = v10;
    v8 = v37;
    if (v38 > 0)
    {
      v28 = *(v32 + 16);
      v29 = __OFADD__(v28, v38);
      v30 = v28 + v38;
      if (v29)
      {
        goto LABEL_41;
      }

      *(v32 + 16) = v30;
    }

LABEL_4:
    if (++v6 == v35)
    {
      return v8;
    }
  }

  v22 = v17;
  result = __CocoaSet.count.getter();
  v17 = v22;
  v21 = result;
  if (result)
  {
    goto LABEL_23;
  }

LABEL_3:

  if (v38 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

unint64_t specialized ExperiencesResolver.defaultExperiences(from:with:)(uint64_t a1, uint64_t a2)
{
  return specialized ExperiencesResolver.defaultExperiences(from:with:)(a1, a2, partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:), partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:));
}

{
  return specialized ExperiencesResolver.defaultExperiences(from:with:)(a1, a2, partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:), partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:));
}

unint64_t specialized ExperiencesResolver.defaultExperiences(from:with:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v38 = a4;
  v36 = a3;
  v5 = v4;
  v39 = type metadata accessor for Date();
  v37 = *(v39 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x28223BE20](v39, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1;
  v13 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  v16 = v15;
  if (one-time initialization token for shared != -1)
  {
    v13 = swift_once();
  }

  v35 = &v32;
  v17 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v13, v14);
  v28 = v5;
  v29 = v12;
  v30 = v16;
  v31 = a2;
  Date.init()();
  v18 = (*v17 + 200);
  v33 = *v18;
  v19 = v33;
  v34 = v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v30 = &v27;
  v31 = v20;
  LOBYTE(v28) = 2;
  v19(&v40, 0xD00000000000002BLL, 0x80000002234DF1D0, 0, v11, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 61, "defaultExperiences(from:with:)", 30, v28, v36);
  v21 = *(v37 + 8);
  v22 = v21(v11, v39);
  v36 = &v32;
  v37 = v40;
  MEMORY[0x28223BE20](v22, v23);
  LODWORD(v28) = v24;
  Date.init()();
  v30 = &v27;
  v31 = v20;
  LOBYTE(v28) = 2;
  v33(&v40, 0xD00000000000002ELL, 0x80000002234DF250, 0, v11, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 68, "defaultExperiences(from:with:)", 30, v28, v38);
  v21(v11, v39);
  v25 = v40;
  v40 = v37;
  specialized Array.append<A>(contentsOf:)(v25);
  return v40;
}

void *specialized ExperiencesResolver.defaultExperiences(from:with:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  v13 = v12;
  if (one-time initialization token for shared != -1)
  {
    v10 = swift_once();
  }

  v30 = v29;
  v14 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v10, v11);
  v26 = a1;
  v27 = v13;
  v28 = a2;
  Date.init()();
  v15 = (*v14 + 200);
  v29[0] = *v15;
  v16 = v29[0];
  v29[1] = v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v29[2] = a2;
  v18 = v17;
  v27 = &v24;
  v28 = v17;
  LOBYTE(v25) = 2;
  v16(&v31, 0xD00000000000002BLL, 0x80000002234DF1D0, 0, v9, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 61, "defaultExperiences(from:with:)", 30, v25, partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:));
  v19 = *(v5 + 8);
  v20 = v19(v9, v4);
  v30 = v31;
  MEMORY[0x28223BE20](v20, v21);
  v25 = a1;
  Date.init()();
  v27 = &v24;
  v28 = v18;
  LOBYTE(v25) = 2;
  (v29[0])(&v31, 0xD00000000000002ELL, 0x80000002234DF250, 0, v9, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 68, "defaultExperiences(from:with:)", 30, v25, partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:));
  v19(v9, v4);
  v22 = v31;
  v31 = v30;
  specialized Array.append<A>(contentsOf:)(v22);
  return v31;
}

uint64_t *specialized ExperiencesResolver.defaultExperiences(from:with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = a3;
  v12 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
  v15 = v14;
  if (one-time initialization token for shared != -1)
  {
    v12 = swift_once();
  }

  v35 = &v31;
  v16 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v12, v13);
  v27 = &v37;
  v28 = a1;
  v29 = v15;
  v30 = a2;
  Date.init()();
  v17 = (*v16 + 200);
  v32 = *v17;
  v18 = v32;
  v33 = v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v34 = a2;
  v20 = v19;
  v29 = &v26;
  v30 = v19;
  LOBYTE(v27) = 2;
  v18(&v36, 0xD00000000000002BLL, 0x80000002234DF1D0, 0, v11, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 61, "defaultExperiences(from:with:)", 30, v27, partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:));
  v21 = *(v7 + 8);
  v22 = v21(v11, v6);
  v35 = v36;
  MEMORY[0x28223BE20](v22, v23);
  LODWORD(v27) = a1;
  Date.init()();
  v29 = &v26;
  v30 = v20;
  LOBYTE(v27) = 2;
  v32(&v36, 0xD00000000000002ELL, 0x80000002234DF250, 0, v11, "SiriInformationSearch/ExperiencesResolver.swift", 47, 2, 68, "defaultExperiences(from:with:)", 30, v27, partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:));
  v21(v11, v6);
  v24 = v36;
  v36 = v35;
  specialized Array.append<A>(contentsOf:)(v24);
  return v36;
}

uint64_t _s21SiriInformationSearch28SportsPersonalizationMetricsO6submit3for11instruction6loggeryAA0dE9SelectionOyxG_10PegasusAPI013Apple_Parsec_a9_V2alpha_aL8ResponseV0A11InstructionVSg2os6LoggerVtAA0dE12ResultMetricRzlFZAA013Disambiguatedd11ExperiencesU0O_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v98 = a3;
  v101 = a1;
  v4 = type metadata accessor for SportsResolverMetrics();
  v95 = *(v4 - 8);
  v5 = *(v95 + 64);
  MEMORY[0x28223BE20](v4, v6);
  v99 = &v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8, v10);
  v93 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v97 = &v86 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v16 = *(*(v15 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v15 - 8, v17);
  v90 = &v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18, v20);
  v100 = &v86 - v22;
  MEMORY[0x28223BE20](v21, v23);
  v25 = &v86 - v24;
  v26 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v89 = *(v26 - 8);
  v27 = *(v89 + 64);
  v29 = MEMORY[0x28223BE20](v26, v28);
  v87 = &v86 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v86 - v32;
  v96 = type metadata accessor for SportsResolverConfig();
  v94 = *(v96 - 8);
  v34 = *(v94 + 64);
  v36 = MEMORY[0x28223BE20](v96, v35);
  v92 = &v86 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v38);
  v102 = &v86 - v39;
  outlined init with copy of MediaUserStateCenter?(a2, v25, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v40 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v43 = v42(v25, 1, v40);
  v88 = v26;
  if (v43 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v25, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  }

  else
  {
    v44 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    (*(v41 + 8))(v25, v40);
    if (*(v44 + 16))
    {
      v91 = v4;
      v45 = a2;
      v46 = v89;
      (*(v89 + 16))(v33, v44 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v26);

      Apple_Parsec_Siri_Context_ResultEntity.name.getter();
      v47 = v46;
      a2 = v45;
      v4 = v91;
      (*(v47 + 8))(v33, v26);
    }

    else
    {
    }
  }

  SportsResolverConfig.init(intentTypeName:bundleId:)();
  v48 = v100;
  outlined init with copy of MediaUserStateCenter?(a2, v100, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v49 = v101;
  outlined copy of SportsPersonalizationSelection<DisambiguatedSportsExperiencesResult>(v101);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.debug.getter();
  outlined consume of SportsPersonalizationSelection<DisambiguatedSportsExperiencesResult>(v49);
  if (os_log_type_enabled(v50, v51))
  {
    v91 = v4;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v103[0] = v53;
    *v52 = 136315394;
    v54 = v48;
    v55 = v90;
    outlined init with copy of MediaUserStateCenter?(v54, v90, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    if (v42(v55, 1, v40) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v55, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
      v56 = 0xE700000000000000;
      v58 = v95;
      v57 = v96;
      v59 = v97;
      v60 = v101;
      v61 = 0x6E776F6E6B6E75;
    }

    else
    {
      v64 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      (*(v41 + 8))(v55, v40);
      v61 = 0x6E776F6E6B6E75;
      if (*(v64 + 16))
      {
        v65 = v88;
        v66 = v89;
        v67 = v87;
        (*(v89 + 16))(v87, v64 + ((*(v66 + 80) + 32) & ~*(v66 + 80)), v88);

        v61 = Apple_Parsec_Siri_Context_ResultEntity.name.getter();
        v56 = v68;
        (*(v66 + 8))(v67, v65);
      }

      else
      {

        v56 = 0xE700000000000000;
      }

      v58 = v95;
      v57 = v96;
      v59 = v97;
      v60 = v101;
    }

    outlined destroy of MediaUserStateCenter?(v100, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v56, v103);

    *(v52 + 4) = v69;
    *(v52 + 12) = 2080;
    v70 = specialized SportsPersonalizationSelection<A>.debugDescription.getter(v60);
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v71, v103);

    *(v52 + 14) = v72;
    _os_log_impl(&dword_2232BB000, v50, v51, "Logging sports personalization metrics: intent=%s selection=%s", v52, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v53, -1, -1);
    MEMORY[0x223DE0F80](v52, -1, -1);

    v4 = v91;
    v63 = v93;
    v62 = v99;
  }

  else
  {

    outlined destroy of MediaUserStateCenter?(v48, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v58 = v95;
    v57 = v96;
    v62 = v99;
    v59 = v97;
    v63 = v93;
    v60 = v101;
  }

  v73 = v94;
  if (v60 == 1)
  {
    v74 = 1;
  }

  else
  {
    (*(v94 + 16))(v92, v102, v57);
    SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)();
    v74 = 0;
  }

  (*(v58 + 56))(v59, v74, 1, v4);
  outlined init with copy of MediaUserStateCenter?(v59, v63, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  if ((*(v58 + 48))(v63, 1, v4) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v59, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
    (*(v73 + 8))(v102, v57);
    return outlined destroy of MediaUserStateCenter?(v63, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  }

  (*(v58 + 32))(v62, v63, v4);
  SportsResolverMetrics.logSportsMetric()();
  if (v76)
  {
    v77 = v76;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v103[0] = v81;
      *v80 = 136315138;
      swift_getErrorValue();
      v82 = Error.localizedDescription.getter();
      v84 = v73;
      v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, v103);

      *(v80 + 4) = v85;
      _os_log_impl(&dword_2232BB000, v78, v79, "Logging sports metrics failed with: %s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      MEMORY[0x223DE0F80](v81, -1, -1);
      MEMORY[0x223DE0F80](v80, -1, -1);

      (*(v58 + 8))(v99, v4);
      outlined destroy of MediaUserStateCenter?(v97, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
      return (*(v84 + 8))(v102, v96);
    }

    (*(v58 + 8))(v99, v4);
  }

  else
  {
    (*(v58 + 8))(v62, v4);
  }

  outlined destroy of MediaUserStateCenter?(v59, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  return (*(v73 + 8))(v102, v57);
}

uint64_t specialized SportsPersonalizationSelection<A>.debugDescription.getter(uint64_t a1)
{
  if (a1 == 1)
  {
    return 0x63696C7070616E69;
  }

  if (a1 == 2)
  {
    return 0x756769626D616E75;
  }

  _StringGuts.grow(_:)(33);

  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v3, v4);

  MEMORY[0x223DDF6D0](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

unint64_t SportsPersonalizationExperiencesResolver.buildExperiences(from:with:)(uint64_t a1, uint64_t a2)
{
  v98 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8, v5);
  v105 = &v92 - v6;
  v104 = type metadata accessor for PerformanceUtil.Ticket(0);
  v7 = *(*(v104 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v104, v8);
  v103 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v100 = &v92 - v12;
  v13 = type metadata accessor for OSSignpostID();
  v101 = *(v13 - 8);
  v102 = v13;
  v14 = *(v101 + 64);
  MEMORY[0x28223BE20](v13, v15);
  v114 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for OSSignposter();
  v113 = *(v111 - 8);
  v17 = *(v113 + 64);
  MEMORY[0x28223BE20](v111, v18);
  v112 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v20, v23);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v107 = *(v26 - 8);
  v108 = v26;
  v27 = *(v107 + 64);
  MEMORY[0x28223BE20](v26, v28);
  v106 = &v92 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  if (one-time initialization token for shared != -1)
  {
    v30 = swift_once();
  }

  v32 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v30, v31);
  v110 = a1;
  v90 = a1;
  Date.init()();
  v33 = *(*v32 + 200);
  v34 = *v32 + 200;
  v90 = &v89;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontGSgMd, &_sSay13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontGSgMR);
  LOBYTE(v89) = 2;
  v99 = v34;
  v33(v115, 0xD000000000000030, 0x80000002234DF330, 0, v25, "SiriInformationSearch/SportsPersonalizationExperiencesResolver.swift", 68, 2, 44, "buildExperiences(from:with:)", 28, v89, partial apply for closure #1 in SportsPersonalizationExperiencesResolver.buildExperiences(from:with:));
  v35 = *(v21 + 8);
  v35(v25, v20);
  if (v115[0])
  {
    v94 = v35;
    v96 = v33;
    v97 = v20;
    v103 = v115[0];
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    v95 = __swift_project_value_buffer(v36, static Logger.pommes);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v111;
    if (v39)
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&dword_2232BB000, v37, v38, "Got a request that is applicable for sports personalization via alternative selection. Will attempt to select an alternative", v41, 2u);
      MEMORY[0x223DE0F80](v41, -1, -1);
    }

    v42 = v109;

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v43 = __swift_project_value_buffer(v40, static Signposter.pommes);
    (*(v113 + 16))(v112, v43, v40);
    static OSSignpostID.exclusive.getter();
    v44 = swift_slowAlloc();
    *v44 = 0;
    v45 = OSSignposter.logHandle.getter();
    v46 = static os_signpost_type_t.begin.getter();
    v47 = OSSignpostID.rawValue.getter();
    v92 = v45;
    v93 = v44;
    _os_signpost_emit_with_name_impl(&dword_2232BB000, v45, v46, v47, "selectSportsAlternative", "", v44, 2u);
    MEMORY[0x28223BE20](v48, v49);
    v89 = v42;
    Date.init()();
    v90 = &v88;
    v91 = &type metadata for DisambiguatedSportsExperiencesResult;
    LOBYTE(v89) = 2;
    v96(v115, 0xD000000000000021, 0x80000002234DF440, 0, v25, "SiriInformationSearch/SportsPersonalizationExperiencesResolver.swift", 68, 2, 64, "buildExperiences(from:with:)", 28, v89, partial apply for closure #1 in closure #2 in SportsPersonalizationExperiencesResolver.buildExperiences(from:with:));
    v94(v25, v97);
    v50 = v115[0];
    v51 = v100;
    Date.init()();
    v52 = v104;
    v53 = &v51[*(v104 + 20)];
    *v53 = "SiriInformationSearch/SportsPersonalizationExperiencesResolver.swift";
    *(v53 + 1) = 68;
    v53[16] = 2;
    *&v51[v52[6]] = 68;
    v54 = &v51[v52[7]];
    *v54 = "buildExperiences(from:with:)";
    *(v54 + 1) = 28;
    v55 = v51;
    v54[16] = 2;
    v56 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000003CLL);
    v57 = &v51[v52[8]];
    *v57 = v56;
    v57[1] = v58;
    v59 = v106;
    v60 = v107;
    v61 = v105;
    v62 = v108;
    (*(v107 + 16))(v105, v106, v108);
    (*(v60 + 56))(v61, 0, 1, v62);

    _s21SiriInformationSearch28SportsPersonalizationMetricsO6submit3for11instruction6loggeryAA0dE9SelectionOyxG_10PegasusAPI013Apple_Parsec_a9_V2alpha_aL8ResponseV0A11InstructionVSg2os6LoggerVtAA0dE12ResultMetricRzlFZAA013Disambiguatedd11ExperiencesU0O_Tt2g5(v63, v61, v95);

    outlined destroy of MediaUserStateCenter?(v61, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    (*(*v32 + 184))(v55, 0);
    if (!v50)
    {
      v50 = specialized ExperiencesResolver.defaultExperiences(from:with:)(v110, v98, partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:), partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:));
    }

    outlined destroy of PerformanceUtil.Ticket(v55);
    v64 = static os_signpost_type_t.end.getter();
    v65 = v114;
    v66 = OSSignpostID.rawValue.getter();
    v67 = v64;
    v68 = v92;
    v69 = v93;
    _os_signpost_emit_with_name_impl(&dword_2232BB000, v92, v67, v66, "selectSportsAlternative", "", v93, 2u);

    MEMORY[0x223DE0F80](v69, -1, -1);

    (*(v101 + 8))(v65, v102);
    (*(v113 + 8))(v112, v111);
  }

  else
  {
    v60 = v107;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v70 = type metadata accessor for Logger();
    v71 = __swift_project_value_buffer(v70, static Logger.pommes);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.debug.getter();
    v74 = os_log_type_enabled(v72, v73);
    v75 = v110;
    v62 = v108;
    if (v74)
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_2232BB000, v72, v73, "Request doesn't have a supported (SportsEntity -> Instruction) mapping. Not performing sports personalization...", v76, 2u);
      MEMORY[0x223DE0F80](v76, -1, -1);
    }

    v77 = v103;
    Date.init()();
    v78 = v104;
    v79 = v77 + *(v104 + 20);
    *v79 = "SiriInformationSearch/SportsPersonalizationExperiencesResolver.swift";
    *(v79 + 8) = 68;
    *(v79 + 16) = 2;
    *(v77 + v78[6]) = 51;
    v80 = v77 + v78[7];
    *v80 = "buildExperiences(from:with:)";
    *(v80 + 8) = 28;
    *(v80 + 16) = 2;
    v81 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(0xD00000000000003CLL);
    v82 = (v77 + v78[8]);
    *v82 = v81;
    v82[1] = v83;
    v85 = v105;
    v84 = v106;
    (*(v60 + 16))(v105, v106, v62);
    (*(v60 + 56))(v85, 0, 1, v62);
    _s21SiriInformationSearch28SportsPersonalizationMetricsO6submit3for11instruction6loggeryAA0dE9SelectionOyxG_10PegasusAPI013Apple_Parsec_a9_V2alpha_aL8ResponseV0A11InstructionVSg2os6LoggerVtAA0dE12ResultMetricRzlFZAA013Disambiguatedd11ExperiencesU0O_Tt2g5(0, v85, v71);
    outlined destroy of MediaUserStateCenter?(v85, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    (*(*v32 + 184))(v77, 0);
    v86 = v75;
    v59 = v84;
    v50 = specialized ExperiencesResolver.defaultExperiences(from:with:)(v86, v98, partial apply for specialized closure #1 in ExperiencesResolver.defaultExperiences(from:with:), partial apply for specialized closure #2 in ExperiencesResolver.defaultExperiences(from:with:));
    outlined destroy of PerformanceUtil.Ticket(v77);
  }

  (*(v60 + 8))(v59, v62);
  return v50;
}

uint64_t partial apply for closure #1 in SportsPersonalizationExperiencesResolver.buildExperiences(from:with:)@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.alternateSiriInstructions.getter();
  v5 = specialized static SportsPersonalizationExperiencesResolver.makeEntityInstructionMapping(alternatives:)(v4);

  *a1 = v5;
  return result;
}

uint64_t SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:)(uint64_t a1, uint64_t a2)
{
  v137 = a1;
  v124 = a2;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v134 = *(v2 - 8);
  v135 = v2;
  v3 = *(v134 + 64);
  MEMORY[0x28223BE20](v2, v4);
  v132 = &v111 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
  v128 = *(v6 - 8);
  v129 = v6;
  v7 = *(v128 + 64);
  MEMORY[0x28223BE20](v6, v8);
  v123 = &v111 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontSgMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontSgMR);
  v11 = *(*(v10 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v10 - 8, v12);
  v127 = &v111 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v126 = &v111 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v18 = *(*(v17 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v17 - 8, v19);
  v130 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v131 = &v111 - v23;
  v136 = type metadata accessor for Date();
  v24 = *(v136 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v136, v26);
  v28 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29, v31);
  v33 = &v111 - v32;
  v34 = type metadata accessor for SportsItem();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v38 = MEMORY[0x28223BE20](v34, v37);
  v119 = &v111 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x28223BE20](v38, v40);
  v125 = &v111 - v42;
  v44 = MEMORY[0x28223BE20](v41, v43);
  v133 = &v111 - v46;
  if (one-time initialization token for shared != -1)
  {
    v44 = swift_once();
  }

  v47 = static PerformanceUtil.shared;
  MEMORY[0x28223BE20](v44, v45);
  v109 = v138;
  v110 = v137;
  Date.init()();
  v48 = *(*v47 + 200);
  v49 = *v47 + 200;
  v109 = &v108;
  v110 = v29;
  LOBYTE(v108) = 2;
  v122 = v47;
  v121 = v48;
  v120 = v49;
  (v48)(0xD000000000000045, 0x80000002234DF470, 0, v28, "SiriInformationSearch/SportsPersonalizationExperiencesResolver.swift", 68, 2, 110, "personalizedSelection(from:with:)", 33, v108, partial apply for closure #1 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:));
  v52 = *(v24 + 8);
  v51 = v24 + 8;
  v50 = v52;
  v52(v28, v136);
  if ((*(v35 + 48))(v33, 1, v34) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v33, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v53 = type metadata accessor for Logger();
    __swift_project_value_buffer(v53, static Logger.pommes);
    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&dword_2232BB000, v54, v55, "Inference was unable to recommend an alternative. Will use original instruction", v56, 2u);
      MEMORY[0x223DE0F80](v56, -1, -1);
    }

    return 0;
  }

  v57 = v34;
  v116 = 0;
  v113 = v50;
  v114 = v28;
  v115 = v51;
  v58 = v133;
  (*(v35 + 32))(v133, v33, v57);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  __swift_project_value_buffer(v59, static Logger.pommes);
  v60 = v35;
  v61 = *(v35 + 16);
  v62 = v125;
  v61(v125, v58, v57);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.debug.getter();
  v65 = os_log_type_enabled(v63, v64);
  v118 = v57;
  v117 = v60;
  if (v65)
  {
    v66 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v139[0] = v112;
    *v66 = 136315138;
    v61(v119, v62, v57);
    v67 = String.init<A>(describing:)();
    v68 = v62;
    v69 = v67;
    v71 = v70;
    v125 = *(v60 + 8);
    (v125)(v68, v57);
    v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v69, v71, v139);

    *(v66 + 4) = v72;
    _os_log_impl(&dword_2232BB000, v63, v64, "Got a recommended alternative entity: %s", v66, 0xCu);
    v73 = v112;
    __swift_destroy_boxed_opaque_existential_1(v112);
    MEMORY[0x223DE0F80](v73, -1, -1);
    v74 = v66;
    v58 = v133;
    MEMORY[0x223DE0F80](v74, -1, -1);
  }

  else
  {

    v125 = *(v60 + 8);
    v75 = (v125)(v62, v57);
  }

  v78 = v131;
  v77 = v132;
  v79 = v129;
  MEMORY[0x28223BE20](v75, v76);
  v109 = v58;
  v80 = v126;
  specialized Sequence.first(where:)(partial apply for closure #2 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:), v81, v126);
  v82 = v127;
  outlined init with take of PommesSearchReason?(v80, v127, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontSgMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontSgMR);
  v83 = 1;
  v84 = (*(v128 + 48))(v82, 1, v79);
  v85 = v138;
  if (v84 != 1)
  {
    v86 = v82;
    v87 = v123;
    outlined init with take of PommesSearchReason?(v86, v123, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMd, &_s13SiriInference27SportsPersonalizationEntityV6entity_10PegasusAPI013Apple_Parsec_a9_V2alpha_aG8ResponseV0A11InstructionV11instructiontMR);
    (*(v134 + 32))(v78, v87 + *(v79 + 48), v135);
    v88 = type metadata accessor for SportsPersonalizationEntity();
    (*(*(v88 - 8) + 8))(v87, v88);
    v83 = 0;
  }

  v89 = v134;
  v90 = v135;
  (*(v134 + 56))(v78, v83, 1, v135);
  v91 = v130;
  outlined init with copy of MediaUserStateCenter?(v78, v130, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  if ((*(v89 + 48))(v91, 1, v90) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v91, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      *v94 = 0;
      _os_log_impl(&dword_2232BB000, v92, v93, "Unable to map the recommended sports item back to an alternative. This is unexpected. Will continue with original instruction", v94, 2u);
      MEMORY[0x223DE0F80](v94, -1, -1);
    }

    outlined destroy of MediaUserStateCenter?(v78, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    (v125)(v58, v118);
    return 0;
  }

  v96 = v134;
  v97 = v58;
  v98 = v135;
  (*(v134 + 32))(v77, v91, v135);
  v99 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.modify();
  v101 = *v100;
  *v100 = MEMORY[0x277D84F90];

  v102 = v99(v139, 0);
  MEMORY[0x28223BE20](v102, v103);
  v108 = v85;
  v104 = v114;
  Date.init()();
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v109 = &v107;
  v110 = v105;
  LOBYTE(v108) = 2;
  v121(v139, 0xD000000000000049, 0x80000002234DF4C0, 0, v104, "SiriInformationSearch/SportsPersonalizationExperiencesResolver.swift", 68, 2, 137, "personalizedSelection(from:with:)", 33, v108, partial apply for closure #4 in SportsPersonalizationExperiencesResolver.personalizedSelection(from:with:));
  v113(v104, v136);
  outlined destroy of MediaUserStateCenter?(v78, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v106 = v139[0];
  (*(v96 + 8))(v77, v98);
  (v125)(v97, v118);
  return v106;
}

BOOL static SportsPersonalizationExperiencesResolver.hasPersonalizationInstruction(_:)()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  v7 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6 - 8, v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v12);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8, v17);
  v19 = &v25 - v18;
  v20 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
  if (*(v20 + 16))
  {
    (*(v1 + 16))(v14, v20 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v0);

    (*(v1 + 56))(v14, 0, 1, v0);
  }

  else
  {

    (*(v1 + 56))(v14, 1, 1, v0);
  }

  outlined init with copy of MediaUserStateCenter?(v14, v11, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  if ((*(v1 + 48))(v11, 1, v0) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v14, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
    v21 = type metadata accessor for SportsPersonalizationEntity();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
  }

  else
  {
    (*(v1 + 32))(v5, v11, v0);
    static SportsPersonalizationExperiencesResolver.makeSportsEntity(entity:)(v5, v19);
    (*(v1 + 8))(v5, v0);
    outlined destroy of MediaUserStateCenter?(v14, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  }

  v22 = type metadata accessor for SportsPersonalizationEntity();
  v23 = (*(*(v22 - 8) + 48))(v19, 1, v22) != 1;
  outlined destroy of MediaUserStateCenter?(v19, &_s13SiriInference27SportsPersonalizationEntityVSgMd, &_s13SiriInference27SportsPersonalizationEntityVSgMR);
  return v23;
}

uint64_t static SportsPersonalizationExperiencesResolver.makeSportsEntity(entity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v4 - 8, v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for SportsItem();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v50 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v18 - 8, v20);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v24);
  v26 = &v41 - v25;
  if (one-time initialization token for pommes != -1)
  {
LABEL_37:
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  v28 = __swift_project_value_buffer(v27, static Logger.pommes);
  v29 = specialized static UsoEntity_common_SportsItem.from(resultEntity:logger:)(a1, v28);
  if (v29)
  {
    v48 = v29;
    v49 = v23;
    v30 = dispatch thunk of UsoEntity_common_SportsItem.associatedSportsItems.getter();
    if (v30)
    {
      v31 = v30;
      SportsItem.init(sport:league:team:athlete:sportQId:leagueQId:teamQId:athleteQId:)();
      v23 = (v31 & 0xFFFFFFFFFFFFFF8);
      v46 = v12;
      v47 = a2;
      v44 = v26;
      v45 = v9;
      v42 = v14;
      v43 = v13;
      if (v31 >> 62)
      {
        a1 = __CocoaSet.count.getter();
        v26 = (v31 & 0xFFFFFFFFFFFFFF8);
        if (a1)
        {
          goto LABEL_6;
        }
      }

      else
      {
        a1 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v26 = (v31 & 0xFFFFFFFFFFFFFF8);
        if (a1)
        {
LABEL_6:
          v14 = 0;
          v51 = v31 & 0xC000000000000001;
          do
          {
            if (v51)
            {
              v12 = MEMORY[0x223DDFF80](v14, v31);
              v32 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
LABEL_31:
                __break(1u);
                goto LABEL_32;
              }
            }

            else
            {
              if (v14 >= *(v26 + 2))
              {
                __break(1u);
                goto LABEL_37;
              }

              v12 = *(v31 + 8 * v14 + 32);

              v32 = v14 + 1;
              if (__OFADD__(v14, 1))
              {
                goto LABEL_31;
              }
            }

            dispatch thunk of CodeGenListEntry.entry.getter();
            v23 = v52;
            if (!v52)
            {
              goto LABEL_7;
            }

            v13 = specialized static SportsProperty.from(entity:)();
            v9 = v33;
            a2 = v34;

            if (a2 <= 3u)
            {
              if (a2 > 1u)
              {
                if (a2 == 2)
                {
                  outlined copy of SportsProperty(v13, v9, 2u);
                  v23 = v50;
                  SportsItem.league.setter();

                  outlined consume of SportsProperty?(v13, v9, 2u);
                }

                else
                {
                  outlined copy of SportsProperty(v13, v9, 3u);
                  v23 = v50;
                  SportsItem.leagueQId.setter();

                  outlined consume of SportsProperty?(v13, v9, 3u);
                }
              }

              else if (a2)
              {
                outlined copy of SportsProperty(v13, v9, 1u);
                v23 = v50;
                SportsItem.teamQId.setter();

                outlined consume of SportsProperty?(v13, v9, 1u);
              }

              else
              {
                outlined copy of SportsProperty(v13, v9, 0);
                v23 = v50;
                SportsItem.team.setter();

                outlined consume of SportsProperty?(v13, v9, 0);
              }

              goto LABEL_8;
            }

            if (a2 <= 5u)
            {
              if (a2 == 4)
              {
                outlined copy of SportsProperty(v13, v9, 4u);
                v23 = v50;
                SportsItem.sport.setter();

                outlined consume of SportsProperty?(v13, v9, 4u);
              }

              else
              {
                outlined copy of SportsProperty(v13, v9, 5u);
                v23 = v50;
                SportsItem.sportQId.setter();

                outlined consume of SportsProperty?(v13, v9, 5u);
              }

              goto LABEL_8;
            }

            if (a2 == 6)
            {
              outlined copy of SportsProperty(v13, v9, 6u);
              v23 = v50;
              SportsItem.athlete.setter();

              outlined consume of SportsProperty?(v13, v9, 6u);
              goto LABEL_8;
            }

            if (a2 == 7)
            {
              outlined copy of SportsProperty(v13, v9, 7u);
              v23 = v50;
              SportsItem.athleteQId.setter();

              outlined consume of SportsProperty?(v13, v9, 7u);
            }

            else
            {
LABEL_7:
            }

LABEL_8:
            ++v14;
          }

          while (v32 != a1);
        }
      }

      v39 = v42;
      v38 = v43;
      v26 = v44;
      (*(v42 + 32))(v44, v50, v43);
      (*(v39 + 56))(v26, 0, 1, v38);
      v12 = v46;
      a2 = v47;
      v9 = v45;
    }

    else
    {
      (*(v14 + 56))(v26, 1, 1, v13);
    }

    static PersonalizationLevel.from(uso:)(v12);
    outlined init with copy of MediaUserStateCenter?(v26, v49, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    outlined init with copy of MediaUserStateCenter?(v12, v9, &_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
    SportsPersonalizationEntity.init(sportsItem:personalizationLevel:)();

    outlined destroy of MediaUserStateCenter?(v12, &_s13SiriInference20PersonalizationLevelOSgMd, &_s13SiriInference20PersonalizationLevelOSgMR);
    outlined destroy of MediaUserStateCenter?(v26, &_s13SiriInference10SportsItemVSgMd, &_s13SiriInference10SportsItemVSgMR);
    v40 = type metadata accessor for SportsPersonalizationEntity();
    return (*(*(v40 - 8) + 56))(a2, 0, 1, v40);
  }

  else
  {
LABEL_32:
    v35 = type metadata accessor for SportsPersonalizationEntity();
    v36 = *(*(v35 - 8) + 56);

    return v36(a2, 1, 1, v35);
  }
}