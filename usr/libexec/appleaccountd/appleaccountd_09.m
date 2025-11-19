uint64_t sub_100102BDC(uint64_t a1, uint64_t a2)
{
  v3[34] = a2;
  v3[35] = v2;
  v3[33] = a1;
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v3[36] = v4;
  v5 = *(v4 - 8);
  v3[37] = v5;
  v6 = *(v5 + 64) + 15;
  v3[38] = swift_task_alloc();
  v7 = type metadata accessor for CustodianRecoveryData();
  v3[39] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v3[40] = swift_task_alloc();
  v9 = *(*(type metadata accessor for CustodianRecoveryInfoRecord() - 8) + 64) + 15;
  v3[41] = swift_task_alloc();
  v10 = *(*(type metadata accessor for CustodianshipInfoRecord() - 8) + 64) + 15;
  v3[42] = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v3[43] = RecoveryRecordsRequest;
  v12 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  v3[44] = swift_task_alloc();
  v13 = *(*(sub_100005814(&qword_1003D8B60, &unk_10033F210) - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v14 = type metadata accessor for UUID();
  v3[47] = v14;
  v15 = *(v14 - 8);
  v3[48] = v15;
  v16 = *(v15 + 64) + 15;
  v3[49] = swift_task_alloc();
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();

  return _swift_task_switch(sub_100102E1C, 0, 0);
}

uint64_t sub_100102E1C()
{
  v1 = (*(v0 + 264) + *(*(v0 + 312) + 52));
  if (v1[1])
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA88);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Error code missing in spake error message", v5, 2u);
    }

    v6 = *(v0 + 272);

    type metadata accessor for AACustodianRecoveryError(0);
    *(v0 + 240) = -9012;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v7 = *(v0 + 88);
    if (v6)
    {
      v8 = *(v0 + 272);
      v9 = v7;
      v10 = _convertErrorToNSError(_:)();
      [v8 updateTaskResultWithError:v10];
    }

    else
    {
      v53 = v7;
    }

    v55 = *(v0 + 296);
    v54 = *(v0 + 304);
    v56 = *(v0 + 288);
    v57 = *(v0 + 272);
    (*(v55 + 16))(v54, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v56);
    Dependency.wrappedValue.getter();
    (*(v55 + 8))(v54, v56);
    v58 = *(v0 + 200);
    swift_getObjectType();
    sub_100246FA8(v57);
    swift_unknownObjectRelease();

LABEL_23:
LABEL_24:
    v60 = *(v0 + 400);
    v59 = *(v0 + 408);
    v61 = *(v0 + 392);
    v63 = *(v0 + 360);
    v62 = *(v0 + 368);
    v64 = *(v0 + 352);
    v66 = *(v0 + 328);
    v65 = *(v0 + 336);
    v67 = *(v0 + 320);
    v68 = *(v0 + 304);

    v69 = *(v0 + 8);

    return v69();
  }

  v11 = *v1;
  type metadata accessor for AACustodianRecoveryError(0);
  *(v0 + 96) = v11;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v12 = *(v0 + 152);
  *(v0 + 416) = v12;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  *(v0 + 424) = sub_100008D04(v13, qword_1003FAA88);
  v7 = v12;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    v18 = _convertErrorToNSError(_:)();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&_mh_execute_header, v14, v15, "Got spake error, with error: %@", v16, 0xCu);
    sub_100008D3C(v17, &unk_1003D9140, &qword_10033E640);
  }

  v19 = *(v0 + 280);
  v20 = *(v0 + 264);

  v21 = sub_100109C50(v20);
  *(v0 + 432) = v21;
  if (!v21)
  {
    v71 = sub_10010B538(*(v0 + 264));
    if (v72)
    {
      v75 = v72;
      v76 = v73;
      v77 = v74;
      v186 = v71;
      v78 = *(v0 + 376);
      v79 = *(v0 + 384);
      v80 = *(v0 + 360);
      UUID.init(uuidString:)();
      if ((*(v79 + 48))(v80, 1, v78) != 1)
      {
        v184 = v76;
        v185 = v77;
        v128 = *(v0 + 392);
        v129 = *(v0 + 280);
        (*(*(v0 + 384) + 32))(v128, *(v0 + 360), *(v0 + 376));
        v130 = *(v129 + 144);
        v131 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock;
        os_unfair_lock_lock(*(v130 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock));
        v132 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_activeSessions;
        swift_beginAccess();
        v133 = *(v130 + v132);
        v134 = swift_task_alloc();
        *(v134 + 16) = v128;

        v135 = sub_10021418C(sub_10010BD18, v134, v133);

        os_unfair_lock_unlock(*(v130 + v131));
        if (v135)
        {
          v137 = *(v0 + 272);
          v136 = *(v0 + 280);
          v138 = (v136 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
          v139 = *(v136 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID + 8);
          *v138 = 0;
          v138[1] = 0;
          v140 = v7;

          v141 = (v136 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
          v142 = *(v136 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
          *v141 = 0;
          v141[1] = 0;

          sub_100116210(v135 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v140, 1);

          if (v137)
          {
            [*(v0 + 272) updateTaskResultWithError:0];
          }

          v143 = *(v0 + 384);
          v187 = *(v0 + 392);
          v144 = *(v0 + 376);
          v146 = *(v0 + 296);
          v145 = *(v0 + 304);
          v147 = *(v0 + 288);
          v148 = *(v0 + 272);
          (*(v146 + 16))(v145, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v147);
          Dependency.wrappedValue.getter();
          (*(v146 + 8))(v145, v147);
          v149 = *(v0 + 184);
          swift_getObjectType();
          sub_100246FA8(v148);
          swift_unknownObjectRelease();

          sub_10010B9E0(v186, v75, v184, v185);

          (*(v143 + 8))(v187, v144);
        }

        else
        {
          v168 = Logger.logObject.getter();
          v169 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v168, v169))
          {
            v170 = swift_slowAlloc();
            *v170 = 0;
            _os_log_impl(&_mh_execute_header, v168, v169, "No active sessions found with spakeID or UUID. nothing more to do here...", v170, 2u);
          }

          v171 = *(v0 + 272);

          *(v0 + 168) = -9009;
          sub_100212324(_swiftEmptyArrayStorage);
          _BridgedStoredNSError.init(_:userInfo:)();
          v172 = *(v0 + 160);
          if (v171)
          {
            v173 = *(v0 + 272);
            v174 = v172;
            v175 = _convertErrorToNSError(_:)();
            [v173 updateTaskResultWithError:v175];
          }

          else
          {
            v176 = v172;
          }

          v177 = *(v0 + 384);
          v188 = *(v0 + 392);
          v178 = *(v0 + 376);
          v179 = *(v0 + 296);
          v180 = *(v0 + 304);
          v181 = *(v0 + 288);
          v182 = *(v0 + 272);
          (*(v179 + 16))(v180, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v181);
          Dependency.wrappedValue.getter();
          (*(v179 + 8))(v180, v181);
          v183 = *(v0 + 176);
          swift_getObjectType();
          sub_100246FA8(v182);
          swift_unknownObjectRelease();

          sub_10010B9E0(v186, v75, v184, v185);
          (*(v177 + 8))(v188, v178);
        }

        goto LABEL_24;
      }

      sub_100008D3C(*(v0 + 360), &qword_1003D8B60, &unk_10033F210);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "Invalid spake ID", v83, 2u);
      }

      v84 = *(v0 + 272);

      *(v0 + 136) = -9022;
      sub_100212324(_swiftEmptyArrayStorage);
      _BridgedStoredNSError.init(_:userInfo:)();
      v85 = *(v0 + 128);
      if (v84)
      {
        v86 = *(v0 + 272);
        v87 = v85;
        v88 = _convertErrorToNSError(_:)();
        [v86 updateTaskResultWithError:v88];
      }

      else
      {
        v162 = v85;
      }

      v164 = *(v0 + 296);
      v163 = *(v0 + 304);
      v165 = *(v0 + 288);
      v166 = *(v0 + 272);
      (*(v164 + 16))(v163, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v165);
      Dependency.wrappedValue.getter();
      (*(v164 + 8))(v163, v165);
      v167 = *(v0 + 144);
      swift_getObjectType();
      sub_100246FA8(v166);
      swift_unknownObjectRelease();

      sub_10010B9E0(v186, v75, v76, v77);
    }

    else
    {
      v120 = Logger.logObject.getter();
      v121 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        *v122 = 0;
        _os_log_impl(&_mh_execute_header, v120, v121, "Malfarmed recovery data", v122, 2u);
      }

      v123 = *(v0 + 272);

      *(v0 + 112) = -9013;
      sub_100212324(_swiftEmptyArrayStorage);
      _BridgedStoredNSError.init(_:userInfo:)();
      v124 = *(v0 + 104);
      if (v123)
      {
        v125 = *(v0 + 272);
        v126 = v124;
        v127 = _convertErrorToNSError(_:)();
        [v125 updateTaskResultWithError:v127];
      }

      else
      {
        v156 = v124;
      }

      v158 = *(v0 + 296);
      v157 = *(v0 + 304);
      v159 = *(v0 + 288);
      v160 = *(v0 + 272);
      (*(v158 + 16))(v157, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v159);
      Dependency.wrappedValue.getter();
      (*(v158 + 8))(v157, v159);
      v161 = *(v0 + 120);
      swift_getObjectType();
      sub_100246FA8(v160);
      swift_unknownObjectRelease();
    }

    goto LABEL_23;
  }

  v22 = v21;
  v23 = v7;
  v24 = _convertErrorToNSError(_:)();

  v25 = [v24 aa_isAACustodianRecoveryErrorWithCode:-9002];
  v7 = v23;
  v26 = Logger.logObject.getter();
  if (!v25)
  {
    v89 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v89))
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *v90 = 138412290;
      v92 = _convertErrorToNSError(_:)();
      *(v90 + 4) = v92;
      *v91 = v92;
      _os_log_impl(&_mh_execute_header, v26, v89, "Asked to terminate recovery session with error: %@", v90, 0xCu);
      sub_100008D3C(v91, &unk_1003D9140, &qword_10033E640);
    }

    v94 = *(v0 + 272);
    v93 = *(v0 + 280);

    v95 = (v93 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
    v96 = *(v93 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID + 8);
    *v95 = 0;
    v95[1] = 0;
    v97 = v7;

    v98 = (v93 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
    v99 = *(v93 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
    *v98 = 0;
    v98[1] = 0;

    v100 = *(v93 + 144);
    sub_100116210(v22 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v97, 1);

    if (v94)
    {
      [*(v0 + 272) updateTaskResultWithError:0];
    }

    v102 = *(v0 + 296);
    v101 = *(v0 + 304);
    v103 = *(v0 + 288);
    v104 = *(v0 + 272);
    (*(v102 + 16))(v101, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v103);
    Dependency.wrappedValue.getter();
    (*(v102 + 8))(v101, v103);
    v105 = *(v0 + 192);
    swift_getObjectType();
    sub_100246FA8(v104);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_24;
  }

  v27 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v7;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&_mh_execute_header, v26, v27, "Error can be retried, idetifying Custodian or owner device: %@", v28, 0xCu);
    sub_100008D3C(v29, &unk_1003D9140, &qword_10033E640);
  }

  v33 = *(v0 + 376);
  v32 = *(v0 + 384);
  v34 = *(v0 + 368);
  v35 = *(v0 + 312);

  v36 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  *(v0 + 440) = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  v37 = v22 + v36;
  swift_beginAccess();
  sub_100012D04(v37 + *(v35 + 28), v34, &qword_1003D8B60, &unk_10033F210);
  if ((*(v32 + 48))(v34, 1, v33) == 1)
  {
    sub_100008D3C(*(v0 + 368), &qword_1003D8B60, &unk_10033F210);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&_mh_execute_header, v38, v39, "Spake Error: Session does not contain custodianship UUID, nothing to do here ...", v40, 2u);
    }

    v42 = *(v0 + 272);
    v41 = *(v0 + 280);

    *(v0 + 216) = -9011;
    sub_100212324(_swiftEmptyArrayStorage);
    _BridgedStoredNSError.init(_:userInfo:)();
    v43 = *(v0 + 208);
    v44 = (v41 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
    v45 = *(v41 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID + 8);
    *v44 = 0;
    v44[1] = 0;
    v46 = v43;

    v47 = (v41 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
    v48 = *(v41 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
    *v47 = 0;
    v47[1] = 0;

    v49 = *(v41 + 144);
    sub_100116210(v22 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v46, 1);

    if (v42)
    {
      v50 = *(v0 + 272);
      v51 = v46;
      v52 = _convertErrorToNSError(_:)();
      [v50 updateTaskResultWithError:v52];
    }

    else
    {
      v150 = v46;
    }

    v152 = *(v0 + 296);
    v151 = *(v0 + 304);
    v153 = *(v0 + 288);
    v154 = *(v0 + 272);
    (*(v152 + 16))(v151, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v153);
    Dependency.wrappedValue.getter();
    (*(v152 + 8))(v151, v153);
    v155 = *(v0 + 224);
    swift_getObjectType();
    sub_100246FA8(v154);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  v106 = *(v0 + 408);
  v107 = *(v0 + 376);
  v108 = *(v0 + 384);
  v110 = *(v0 + 344);
  v109 = *(v0 + 352);
  v111 = *(v0 + 280);
  (*(v108 + 32))(v106, *(v0 + 368), v107);
  v112 = *(v108 + 16);
  *(v0 + 448) = v112;
  *(v0 + 456) = (v108 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v112(v109, v106, v107);
  *(v109 + v110[5]) = 0;
  v113 = v109 + v110[6];
  *v113 = 0;
  *(v113 + 8) = 1;
  *(v109 + v110[7]) = 1;
  v114 = (v109 + v110[8]);
  *v114 = 0;
  v114[1] = 0;
  v115 = (v109 + v110[9]);
  *v115 = 0;
  v115[1] = 0;
  v116 = *sub_1000080F8((v111 + 64), *(v111 + 88));
  v117 = swift_task_alloc();
  *(v0 + 464) = v117;
  *v117 = v0;
  v117[1] = sub_100103FA4;
  v118 = *(v0 + 352);
  v119 = *(v0 + 336);

  return sub_1000268EC(v119, v118);
}

uint64_t sub_100103FA4()
{
  v2 = *(*v1 + 464);
  v5 = *v1;
  *(*v1 + 472) = v0;

  if (v0)
  {
    v3 = sub_100104280;
  }

  else
  {
    v3 = sub_1001040B8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1001040B8()
{
  v1 = *sub_1000080F8((v0[35] + 64), *(v0[35] + 88));
  v2 = swift_task_alloc();
  v0[60] = v2;
  *v2 = v0;
  v2[1] = sub_10010416C;
  v3 = v0[44];
  v4 = v0[41];

  return sub_100021548(v4, v3, 0, 0);
}

uint64_t sub_10010416C()
{
  v2 = *(*v1 + 480);
  v5 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = sub_100104840;
  }

  else
  {
    v3 = sub_100104574;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100104280()
{
  v1 = v0[59];
  v2 = v0[53];
  sub_10010C048(v0[44], type metadata accessor for FetchRecoveryRecordsRequest);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Owner device, returning error to the UI to let the user retry", v5, 2u);
  }

  v6 = v0[54];
  v8 = v0[34];
  v7 = v0[35];

  swift_getErrorValue();
  v9 = v0[5];
  v10 = sub_100256804(-9017, v0[6], v0[7]);
  v11 = (v7 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  v12 = *(v7 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID + 8);
  *v11 = 0;
  v11[1] = 0;

  v13 = (v7 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  v14 = *(v7 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
  *v13 = 0;
  v13[1] = 0;

  v15 = *(v7 + 144);
  sub_100116210(v6 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v10, 1);
  if (v8)
  {
    v16 = v0[34];
    swift_errorRetain();
    v17 = _convertErrorToNSError(_:)();
    [v16 updateTaskResultWithError:v17];
  }

  else
  {
    swift_errorRetain();
  }

  v18 = v0[54];
  v19 = v0[52];
  v39 = v0[51];
  v20 = v0[47];
  v21 = v0[48];
  v23 = v0[37];
  v22 = v0[38];
  v24 = v0[36];
  v25 = v0[34];
  (*(v23 + 16))(v22, v0[35] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v24);
  Dependency.wrappedValue.getter();
  (*(v23 + 8))(v22, v24);
  v26 = v0[31];
  swift_getObjectType();
  sub_100246FA8(v25);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  (*(v21 + 8))(v39, v20);
  v28 = v0[50];
  v27 = v0[51];
  v29 = v0[49];
  v31 = v0[45];
  v30 = v0[46];
  v32 = v0[44];
  v34 = v0[41];
  v33 = v0[42];
  v35 = v0[40];
  v36 = v0[38];

  v37 = v0[1];

  return v37();
}

uint64_t sub_100104574()
{
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 432);
  v4 = *(v0 + 416);
  v5 = *(v0 + 400);
  v6 = *(v0 + 376);
  v7 = *(v0 + 384);
  v9 = *(v0 + 272);
  v8 = *(v0 + 280);
  sub_10010BD38(v3 + *(v0 + 440), *(v0 + 320), type metadata accessor for CustodianRecoveryData);
  v10 = *(v8 + 144);
  v2(v5, v3 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v6);
  v11 = v4;
  sub_100116210(v5, v4, 1);

  v37 = *(v7 + 8);
  v37(v5, v6);
  if (v9)
  {
    [*(v0 + 272) updateTaskResultWithError:0];
  }

  v32 = *(v0 + 432);
  v33 = *(v0 + 416);
  v35 = *(v0 + 376);
  v36 = *(v0 + 408);
  v34 = *(v0 + 352);
  v13 = *(v0 + 328);
  v12 = *(v0 + 336);
  v14 = *(v0 + 320);
  v16 = *(v0 + 296);
  v15 = *(v0 + 304);
  v17 = *(v0 + 288);
  v18 = *(v0 + 272);
  (*(v16 + 16))(v15, *(v0 + 280) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v17);
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v15, v17);
  v19 = *(v0 + 256);
  swift_getObjectType();
  sub_100246FA8(v18);
  swift_unknownObjectRelease();
  sub_100104B50(v14, v12, v13);
  swift_unknownObjectRelease();

  sub_10010C048(v14, type metadata accessor for CustodianRecoveryData);
  sub_10010C048(v13, type metadata accessor for CustodianRecoveryInfoRecord);
  sub_10010C048(v12, type metadata accessor for CustodianshipInfoRecord);
  sub_10010C048(v34, type metadata accessor for FetchRecoveryRecordsRequest);
  v37(v36, v35);
  v21 = *(v0 + 400);
  v20 = *(v0 + 408);
  v22 = *(v0 + 392);
  v24 = *(v0 + 360);
  v23 = *(v0 + 368);
  v25 = *(v0 + 352);
  v27 = *(v0 + 328);
  v26 = *(v0 + 336);
  v28 = *(v0 + 320);
  v29 = *(v0 + 304);

  v30 = *(v0 + 8);

  return v30();
}

uint64_t sub_100104840()
{
  sub_10010C048(v0[42], type metadata accessor for CustodianshipInfoRecord);
  v1 = v0[61];
  v2 = v0[53];
  sub_10010C048(v0[44], type metadata accessor for FetchRecoveryRecordsRequest);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Owner device, returning error to the UI to let the user retry", v5, 2u);
  }

  v6 = v0[54];
  v8 = v0[34];
  v7 = v0[35];

  swift_getErrorValue();
  v9 = v0[5];
  v10 = sub_100256804(-9017, v0[6], v0[7]);
  v11 = (v7 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  v12 = *(v7 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID + 8);
  *v11 = 0;
  v11[1] = 0;

  v13 = (v7 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  v14 = *(v7 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
  *v13 = 0;
  v13[1] = 0;

  v15 = *(v7 + 144);
  sub_100116210(v6 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v10, 1);
  if (v8)
  {
    v16 = v0[34];
    swift_errorRetain();
    v17 = _convertErrorToNSError(_:)();
    [v16 updateTaskResultWithError:v17];
  }

  else
  {
    swift_errorRetain();
  }

  v18 = v0[54];
  v19 = v0[52];
  v39 = v0[51];
  v20 = v0[47];
  v21 = v0[48];
  v23 = v0[37];
  v22 = v0[38];
  v24 = v0[36];
  v25 = v0[34];
  (*(v23 + 16))(v22, v0[35] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v24);
  Dependency.wrappedValue.getter();
  (*(v23 + 8))(v22, v24);
  v26 = v0[31];
  swift_getObjectType();
  sub_100246FA8(v25);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  (*(v21 + 8))(v39, v20);
  v28 = v0[50];
  v27 = v0[51];
  v29 = v0[49];
  v31 = v0[45];
  v30 = v0[46];
  v32 = v0[44];
  v34 = v0[41];
  v33 = v0[42];
  v35 = v0[40];
  v36 = v0[38];

  v37 = v0[1];

  return v37();
}

uint64_t sub_100104B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v59 = a3;
  v60 = a2;
  v64 = a1;
  v5 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v62 = *(v5 - 8);
  v63 = v5;
  v6 = *(v62 + 64);
  __chkstk_darwin(v5);
  v61 = &v57 - v7;
  v8 = type metadata accessor for CustodianRecoveryData();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v58 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_100005814(&unk_1003DDEB0, &qword_100342830);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v57 - v14;
  sub_100012004();
  v16 = kAAAnalyticsEventCustodianKeyExchangeRetry;
  v18 = *(v3 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  v17 = *(v3 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
  v20 = *(v3 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  v19 = *(v3 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID + 8);

  v21 = v16;

  v22 = v19;
  v23 = v64;
  v24 = sub_100245D38(v21, v18, v17, v20, v22);
  if (*(v23 + 40))
  {
    v25 = (v59 + *(type metadata accessor for CustodianRecoveryInfoRecord() + 24));
    v26 = *v25;
    v27 = v25[1];
    sub_10010BD38(v23, v15, type metadata accessor for CustodianRecoveryData);
    (*(v9 + 56))(v15, 0, 1, v8);
    v39 = sub_100107754(v60, v26, v27, v15);
    sub_100008D3C(v15, &unk_1003DDEB0, &qword_100342830);
    v40 = swift_allocObject();
    swift_weakInit();
    v41 = swift_allocObject();
    *(v41 + 16) = v24;
    *(v41 + 24) = v40;
    v42 = kAAAnalyticsEventCustodianKeyExchangeSendMessage;
    v43 = objc_opt_self();
    v44 = v24;

    v45 = [v43 analyticsEventWithName:v42 altDSID:0 flowID:0];
    v46 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
    swift_beginAccess();
    v47 = &v39[v46];
    v48 = v58;
    sub_10010BD38(v47, v58, type metadata accessor for CustodianRecoveryData);
    v49 = sub_10010ABFC(v48, 0);
    sub_10010C048(v48, type metadata accessor for CustodianRecoveryData);
    v50 = sub_1000080F8((v4 + 24), *(v4 + 48));
    v51 = swift_allocObject();
    v51[2] = v45;
    v51[3] = sub_10010BD10;
    v51[4] = v41;
    v52 = *v50;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_10010E5C4;
    *(v53 + 24) = v51;
    aBlock[4] = sub_10010E58C;
    aBlock[5] = v53;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013BB5C;
    aBlock[3] = &unk_1003A99E0;
    v54 = _Block_copy(aBlock);
    v55 = v45;

    [v52 startCustodianRecoveryTransactionWithContext:v49 completion:v54];
    _Block_release(v54);
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA88);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Asked to retry but old session had no code stored... nothing to do here", v31, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    aBlock[6] = -9010;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v32 = aBlock[0];
    if (v24)
    {
      v33 = v24;
      v34 = v32;
      v35 = _convertErrorToNSError(_:)();

      [v33 updateTaskResultWithError:v35];
    }

    v36 = v61;
    v37 = v62;
    v38 = v63;
    (*(v62 + 16))(v61, v4 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v63);
    Dependency.wrappedValue.getter();
    (*(v37 + 8))(v36, v38);
    swift_getObjectType();
    sub_100246FA8(v24);

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1001053F0(uint64_t a1, void *a2)
{
  v4 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  if (a2)
  {
    if (a1)
    {
      v9 = _convertErrorToNSError(_:)();
    }

    else
    {
      v9 = 0;
    }

    [a2 updateTaskResultWithError:v9];
  }

  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100008D04(v10, qword_1003FAA88);
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      v15 = _convertErrorToNSError(_:)();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Custodian transaction failed to be sent to IdMS with error: %@", v13, 0xCu);
      sub_100008D3C(v14, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(v5 + 16))(v8, result + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v4);
    Dependency.wrappedValue.getter();

    (*(v5 + 8))(v8, v4);
    swift_getObjectType();
    sub_100246FA8(a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1001056C8(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  v2[24] = v3;
  v4 = *(v3 - 8);
  v2[25] = v4;
  v5 = *(v4 + 64) + 15;
  v2[26] = swift_task_alloc();
  v6 = *(*(sub_100005814(&unk_1003DDEB0, &qword_100342830) - 8) + 64) + 15;
  v2[27] = swift_task_alloc();
  v7 = type metadata accessor for CustodianRecoveryInfoRecord();
  v2[28] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v2[29] = swift_task_alloc();
  v9 = *(*(type metadata accessor for CustodianshipInfoRecord() - 8) + 64) + 15;
  v2[30] = swift_task_alloc();
  RecoveryRecordsRequest = type metadata accessor for FetchRecoveryRecordsRequest(0);
  v2[31] = RecoveryRecordsRequest;
  v11 = *(*(RecoveryRecordsRequest - 8) + 64) + 15;
  v2[32] = swift_task_alloc();
  v12 = type metadata accessor for UUID();
  v2[33] = v12;
  v13 = *(v12 - 8);
  v2[34] = v13;
  v14 = *(v13 + 64) + 15;
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v15 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  v2[38] = v15;
  v16 = *(v15 - 8);
  v2[39] = v16;
  v17 = *(v16 + 64) + 15;
  v2[40] = swift_task_alloc();

  return _swift_task_switch(sub_100105934, 0, 0);
}

uint64_t sub_100105934()
{
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 304);
  (*(v2 + 16))(v1, *(v0 + 184) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__accountStore, v3);
  Dependency.wrappedValue.getter();
  (*(v2 + 8))(v1, v3);
  v4 = [*(*sub_1000080F8((v0 + 16) *(v0 + 40)) + 16)];
  if (v4 && (v5 = v4, v6 = [v4 aa_altDSID], v5, v6))
  {
    v7 = *(v0 + 176);

    sub_10000839C((v0 + 16));
    v8 = [v7 custodianUUID];
    if (v8)
    {
      v9 = *(v0 + 296);
      v10 = *(v0 + 176);
      v11 = v8;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v12 = [v10 telemetryFlowID];
      if (v12)
      {
        v13 = v12;
        v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      v38 = *(v0 + 176);
      v39 = (*(v0 + 184) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
      v40 = v39[1];
      *v39 = v14;
      v39[1] = v16;

      v41 = [v38 altDSID];
      if (v41)
      {
        v42 = v41;
        v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v45 = v44;
      }

      else
      {
        v43 = 0;
        v45 = 0;
      }

      v46 = (*(v0 + 184) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
      v47 = v46[1];
      *v46 = v43;
      v46[1] = v45;

      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v48 = type metadata accessor for Logger();
      *(v0 + 328) = sub_100008D04(v48, qword_1003FAA88);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        *v51 = 0;
        _os_log_impl(&_mh_execute_header, v49, v50, "Verifying custodianship to generate Code.", v51, 2u);
      }

      v53 = *(v0 + 288);
      v52 = *(v0 + 296);
      v54 = *(v0 + 264);
      v55 = *(v0 + 272);
      v56 = *(v0 + 176);

      v57 = *(v55 + 16);
      *(v0 + 336) = v57;
      *(v0 + 344) = (v55 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v57(v53, v52, v54);
      v58 = [v56 altDSID];
      if (v58)
      {
        v59 = v58;
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;
      }

      else
      {
        v60 = 0;
        v62 = 0;
      }

      v63 = [*(v0 + 176) telemetryFlowID];
      if (v63)
      {
        v64 = v63;
        v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v67 = v66;
      }

      else
      {
        v65 = 0;
        v67 = 0;
      }

      v69 = *(v0 + 248);
      v68 = *(v0 + 256);
      v70 = *(v0 + 184);
      (*(*(v0 + 272) + 32))(v68, *(v0 + 288), *(v0 + 264));
      *(v68 + v69[5]) = 1;
      v71 = v68 + v69[6];
      *v71 = 0;
      *(v71 + 8) = 1;
      *(v68 + v69[7]) = 1;
      v72 = (v68 + v69[8]);
      *v72 = v60;
      v72[1] = v62;
      v73 = (v68 + v69[9]);
      *v73 = v65;
      v73[1] = v67;
      v74 = *sub_1000080F8((v70 + 64), *(v70 + 88));
      v75 = swift_task_alloc();
      *(v0 + 352) = v75;
      *v75 = v0;
      v75[1] = sub_100106044;
      v76 = *(v0 + 256);
      v77 = *(v0 + 240);

      return sub_1000268EC(v77, v76);
    }

    v17 = (v0 + 128);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_100008D04(v34, qword_1003FAA88);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&_mh_execute_header, v35, v36, "Context missing custodian UUID, cannot generate code for empty UUID", v37, 2u);
    }

    type metadata accessor for AACustodianError(0);
    *(v0 + 136) = -7054;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&qword_1003D8140, type metadata accessor for AACustodianError);
  }

  else
  {
    v17 = (v0 + 112);
    sub_10000839C((v0 + 16));
    if (qword_1003D7F50 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAAD0);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Account is nil. Not generating custodian recovery code", v21, 2u);
    }

    type metadata accessor for AAError(0);
    *(v0 + 120) = -4410;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&qword_1003D8370, type metadata accessor for AAError);
  }

  _BridgedStoredNSError.init(_:userInfo:)();
  v22 = *v17;
  swift_willThrow();
  v23 = *(v0 + 320);
  v25 = *(v0 + 288);
  v24 = *(v0 + 296);
  v26 = *(v0 + 280);
  v27 = *(v0 + 256);
  v29 = *(v0 + 232);
  v28 = *(v0 + 240);
  v31 = *(v0 + 208);
  v30 = *(v0 + 216);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_100106044()
{
  v2 = *(*v1 + 352);
  v5 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_100106320;
  }

  else
  {
    v3 = sub_100106158;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100106158()
{
  v1 = *sub_1000080F8((v0[23] + 64), *(v0[23] + 88));
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_10010620C;
  v3 = v0[32];
  v4 = v0[29];

  return sub_100021548(v4, v3, 0, 0);
}

uint64_t sub_10010620C()
{
  v2 = *(*v1 + 368);
  v5 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_100106F30;
  }

  else
  {
    v3 = sub_100106584;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100106320()
{
  sub_10010C048(v0[32], type metadata accessor for FetchRecoveryRecordsRequest);
  v1 = v0[45];
  v2 = v0[41];
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    v7 = _convertErrorToNSError(_:)();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "Generate recovery code failed: %@", v5, 0xCu);
    sub_100008D3C(v6, &unk_1003D9140, &qword_10033E640);
  }

  v8 = v0[37];
  v9 = v0[33];
  v10 = v0[34];
  v12 = v0[25];
  v11 = v0[26];
  v13 = v0[24];
  (*(v12 + 16))(v11, v0[23] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v13);
  Dependency.wrappedValue.getter();
  (*(v12 + 8))(v11, v13);
  v14 = v0[18];
  swift_getObjectType();
  sub_100246FA8(0);
  swift_unknownObjectRelease();
  swift_willThrow();
  (*(v10 + 8))(v8, v9);
  v15 = v0[40];
  v17 = v0[36];
  v16 = v0[37];
  v18 = v0[35];
  v19 = v0[32];
  v21 = v0[29];
  v20 = v0[30];
  v23 = v0[26];
  v22 = v0[27];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100106584()
{
  v108 = v0;
  v1 = *(v0 + 344);
  v2 = *(v0 + 328);
  (*(v0 + 336))(*(v0 + 280), *(v0 + 296), *(v0 + 264));
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 272);
  v6 = *(v0 + 280);
  v8 = *(v0 + 264);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v107 = v104;
    *v9 = 136315138;
    sub_10010BB40(&qword_1003D9150, &type metadata accessor for UUID);
    v10 = dispatch thunk of CustomStringConvertible.description.getter();
    v12 = v11;
    v13 = *(v7 + 8);
    v13(v6, v8);
    v14 = sub_10021145C(v10, v12, &v107);

    *(v9 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v3, v4, "Custodianship %s verified. Generating session with code...", v9, 0xCu);
    sub_10000839C(v104);
  }

  else
  {

    v13 = *(v7 + 8);
    v13(v6, v8);
  }

  *(v0 + 384) = v13;
  v15 = *(v0 + 176);
  v105 = kAAAnalyticsEventFetchRecoverySessionCreatedByOwner;
  v16 = [v15 altDSID];
  if (v16)
  {
    v17 = v16;
    v103 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;
  }

  else
  {
    v103 = 0;
    v19 = 0;
  }

  v20 = [*(v0 + 176) telemetryFlowID];
  if (v20)
  {
    v21 = v20;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;
  }

  else
  {
    v22 = 0;
    v24 = 0;
  }

  v25 = *(v0 + 376);
  v26 = *(v0 + 232);
  v27 = *(v0 + 240);
  v29 = *(v0 + 216);
  v28 = *(v0 + 224);
  v30 = *(v0 + 184);
  sub_100012004();
  v106 = sub_100245D38(v105, v103, v19, v22, v24);
  v31 = (v26 + *(v28 + 24));
  v32 = *v31;
  v33 = v31[1];
  v34 = type metadata accessor for CustodianRecoveryData();
  (*(*(v34 - 8) + 56))(v29, 1, 1, v34);
  v35 = sub_100107754(v27, v32, v33, v29);
  *(v0 + 392) = v35;
  if (v25)
  {
    v37 = *(v0 + 256);
    v39 = *(v0 + 232);
    v38 = *(v0 + 240);
    sub_100008D3C(*(v0 + 216), &unk_1003DDEB0, &qword_100342830);
    sub_10010C048(v38, type metadata accessor for CustodianshipInfoRecord);
    sub_10010C048(v37, type metadata accessor for FetchRecoveryRecordsRequest);
    v40 = v39;
LABEL_12:
    sub_10010C048(v40, type metadata accessor for CustodianRecoveryInfoRecord);
    v41 = *(v0 + 328);
    swift_errorRetain();
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138412290;
      v46 = _convertErrorToNSError(_:)();
      *(v44 + 4) = v46;
      *v45 = v46;
      _os_log_impl(&_mh_execute_header, v42, v43, "Generate recovery code failed: %@", v44, 0xCu);
      sub_100008D3C(v45, &unk_1003D9140, &qword_10033E640);
    }

    if (v106)
    {
      v47 = _convertErrorToNSError(_:)();
      [v106 updateTaskResultWithError:v47];
    }

    v48 = *(v0 + 296);
    v49 = *(v0 + 264);
    v50 = *(v0 + 272);
    v51 = *(v0 + 200);
    v52 = *(v0 + 208);
    v53 = *(v0 + 192);
    (*(v51 + 16))(v52, *(v0 + 184) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v53);
    Dependency.wrappedValue.getter();
    (*(v51 + 8))(v52, v53);
    v54 = *(v0 + 144);
    swift_getObjectType();
    sub_100246FA8(v106);
    swift_unknownObjectRelease();
    swift_willThrow();

    (*(v50 + 8))(v48, v49);
    v55 = *(v0 + 320);
    v56 = *(v0 + 288);
    v57 = *(v0 + 296);
    v58 = *(v0 + 280);
    v59 = *(v0 + 256);
    v61 = *(v0 + 232);
    v60 = *(v0 + 240);
    v63 = *(v0 + 208);
    v62 = *(v0 + 216);

    v64 = *(v0 + 8);

    return v64();
  }

  v66 = v35;
  v67 = v36;
  v68 = *(v0 + 176);
  sub_100008D3C(*(v0 + 216), &unk_1003DDEB0, &qword_100342830);
  ObjectType = swift_getObjectType();
  v70 = [v68 CLIMode];
  v71 = (*(v67 + 48))(v0 + 56, ObjectType, v67);
  *(v72 + *(v34 + 56)) = v70;
  v71(v0 + 56, 0);
  v73 = &v66[OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData];
  swift_beginAccess();
  *(v0 + 400) = *(v73 + 4);
  v74 = *(v73 + 5);
  *(v0 + 408) = v74;
  if (!v74)
  {
    v76 = *(v0 + 328);
    v77 = Logger.logObject.getter();
    v78 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&_mh_execute_header, v77, v78, "failed to generate code, nothing to do here", v79, 2u);
    }

    v80 = *(v0 + 256);
    v81 = *(v0 + 232);
    v82 = *(v0 + 240);

    type metadata accessor for AACustodianError(0);
    *(v0 + 160) = -7030;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&qword_1003D8140, type metadata accessor for AACustodianError);
    _BridgedStoredNSError.init(_:userInfo:)();
    v83 = *(v0 + 152);
    swift_willThrow();
    swift_unknownObjectRelease();
    sub_10010C048(v82, type metadata accessor for CustodianshipInfoRecord);
    sub_10010C048(v80, type metadata accessor for FetchRecoveryRecordsRequest);
    v40 = v81;
    goto LABEL_12;
  }

  if (v106)
  {
    [v106 updateTaskResultWithError:0];
    v75 = v106;
  }

  else
  {
    v75 = 0;
  }

  v84 = *(v0 + 200);
  v85 = *(v0 + 208);
  v86 = *(v0 + 192);
  v87 = *(v0 + 176);
  (*(v84 + 16))(v85, *(v0 + 184) + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v86);
  Dependency.wrappedValue.getter();
  (*(v84 + 8))(v85, v86);
  v88 = *(v0 + 168);
  swift_getObjectType();
  sub_100246FA8(v106);
  swift_unknownObjectRelease();

  v89 = [v87 altDSID];
  if (v89)
  {
    v90 = v89;
    v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;
  }

  else
  {
    v91 = 0;
    v93 = 0;
  }

  *(v0 + 416) = v93;
  v94 = [*(v0 + 176) telemetryFlowID];
  if (v94)
  {
    v95 = v94;
    v96 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v98 = v97;
  }

  else
  {
    v96 = 0;
    v98 = 0;
  }

  *(v0 + 424) = v98;
  v99 = *(v0 + 184);
  v100 = swift_task_alloc();
  *(v0 + 432) = v100;
  *(v100 + 16) = v99;
  *(v100 + 24) = v66;
  *(v100 + 32) = v67;
  *(v100 + 40) = 0;
  *(v100 + 48) = v91;
  *(v100 + 56) = v93;
  *(v100 + 64) = v96;
  *(v100 + 72) = v98;
  v101 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v102 = swift_task_alloc();
  *(v0 + 440) = v102;
  *v102 = v0;
  v102[1] = sub_1001071B4;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v102, 0, 0, 0xD00000000000003BLL, 0x800000010032EA30, sub_10010BB08, v100, &type metadata for () + 8);
}

uint64_t sub_100106F30()
{
  v1 = v0[32];
  sub_10010C048(v0[30], type metadata accessor for CustodianshipInfoRecord);
  sub_10010C048(v1, type metadata accessor for FetchRecoveryRecordsRequest);
  v2 = v0[47];
  v3 = v0[41];
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = _convertErrorToNSError(_:)();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, v4, v5, "Generate recovery code failed: %@", v6, 0xCu);
    sub_100008D3C(v7, &unk_1003D9140, &qword_10033E640);
  }

  v9 = v0[37];
  v10 = v0[33];
  v11 = v0[34];
  v13 = v0[25];
  v12 = v0[26];
  v14 = v0[24];
  (*(v13 + 16))(v12, v0[23] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v14);
  Dependency.wrappedValue.getter();
  (*(v13 + 8))(v12, v14);
  v15 = v0[18];
  swift_getObjectType();
  sub_100246FA8(0);
  swift_unknownObjectRelease();
  swift_willThrow();
  (*(v11 + 8))(v9, v10);
  v16 = v0[40];
  v18 = v0[36];
  v17 = v0[37];
  v19 = v0[35];
  v20 = v0[32];
  v22 = v0[29];
  v21 = v0[30];
  v24 = v0[26];
  v23 = v0[27];

  v25 = v0[1];

  return v25();
}

uint64_t sub_1001071B4()
{
  v2 = *v1;
  v3 = *(*v1 + 440);
  v4 = *v1;
  v2[56] = v0;

  v5 = v2[54];
  v6 = v2[53];
  v7 = v2[52];
  if (v0)
  {
    v8 = v2[51];

    v9 = sub_1001074A8;
  }

  else
  {

    v9 = sub_10010734C;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_10010734C()
{
  v2 = v0[48];
  v1 = v0[49];
  v3 = v0[40];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[34];
  v7 = v0[32];
  v8 = v0[33];
  v9 = v0[29];
  v10 = v0[30];
  v15 = v0[35];
  v16 = v0[27];
  v17 = v0[26];
  swift_unknownObjectRelease();
  sub_10010C048(v10, type metadata accessor for CustodianshipInfoRecord);
  sub_10010C048(v7, type metadata accessor for FetchRecoveryRecordsRequest);
  v2(v4, v8);
  sub_10010C048(v9, type metadata accessor for CustodianRecoveryInfoRecord);

  v11 = v0[1];
  v12 = v0[50];
  v13 = v0[51];

  return v11(v12, v13);
}

uint64_t sub_1001074A8()
{
  v1 = v0[49];
  v2 = v0[32];
  v4 = v0[29];
  v3 = v0[30];
  swift_unknownObjectRelease();
  sub_10010C048(v3, type metadata accessor for CustodianshipInfoRecord);
  sub_10010C048(v2, type metadata accessor for FetchRecoveryRecordsRequest);
  sub_10010C048(v4, type metadata accessor for CustodianRecoveryInfoRecord);
  v5 = v0[56];
  v6 = v0[41];
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    v11 = _convertErrorToNSError(_:)();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v7, v8, "Generate recovery code failed: %@", v9, 0xCu);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);
  }

  v12 = v0[37];
  v13 = v0[33];
  v14 = v0[34];
  v16 = v0[25];
  v15 = v0[26];
  v17 = v0[24];
  (*(v16 + 16))(v15, v0[23] + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter, v17);
  Dependency.wrappedValue.getter();
  (*(v16 + 8))(v15, v17);
  v18 = v0[18];
  swift_getObjectType();
  sub_100246FA8(0);
  swift_unknownObjectRelease();
  swift_willThrow();
  (*(v14 + 8))(v12, v13);
  v19 = v0[40];
  v21 = v0[36];
  v20 = v0[37];
  v22 = v0[35];
  v23 = v0[32];
  v25 = v0[29];
  v24 = v0[30];
  v27 = v0[26];
  v26 = v0[27];

  v28 = v0[1];

  return v28();
}

char *sub_100107754(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v151 = a4;
  v138 = a2;
  v139 = a3;
  v140 = a1;
  v149 = sub_100005814(&qword_1003DDEA8, &qword_100342828);
  v145 = *(v149 - 8);
  v4 = *(v145 + 64);
  __chkstk_darwin(v149);
  v148 = &v131 - v5;
  v6 = sub_100005814(&unk_1003DDEB0, &qword_100342830);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  countAndFlagsBits = &v131 - v8;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v131 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CustodianRecoveryData();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v144 = &v131 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v147 = &v131 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = (&v131 - v22);
  v23[1] = 0u;
  v23[2] = 0u;
  *v23 = 0u;
  v24 = *(v10 + 56);
  v133 = *(v21 + 28);
  v134 = v24;
  v135 = v10 + 56;
  v24(&v131 + v133 - v22, 1, 1, v9);
  v25 = (v23 + v14[8]);
  *v25 = 0;
  v25[1] = 0;
  v132 = v25;
  v26 = (v23 + v14[9]);
  *v26 = 0;
  v26[1] = 0;
  v131 = v26;
  *(v23 + v14[10]) = xmmword_10033F590;
  v143 = (v23 + v14[11]);
  *v143 = xmmword_10033F590;
  *(v23 + v14[12]) = xmmword_10033F590;
  v27 = v23 + v14[13];
  *v27 = 0;
  v27[8] = 1;
  *(v23 + v14[14]) = 0;
  v141 = v14[15];
  *(v23 + v141) = 1;
  v28 = v14[16];
  v156 = v23;
  v29 = (v23 + v28);
  *v29 = 0;
  v29[1] = 0;
  UUID.init()();
  v30 = UUID.uuidString.getter();
  v32 = v31;
  v136 = v10;
  v137 = v9;
  v33 = v9;
  v34 = countAndFlagsBits;
  (*(v10 + 8))(v13, v33);
  sub_100005814(&unk_1003E7730, &unk_1003492E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10033EB30;
  strcpy((inited + 32), "spakeSessionId");
  *(inited + 47) = -18;
  *(inited + 48) = v30;
  *(inited + 56) = v32;

  v152 = sub_100308864(inited);
  swift_setDeallocating();
  sub_100008D3C(inited + 32, &qword_1003DDEC0, &unk_10033E630);

  *&v153 = v32;
  v36 = sub_100170228(v30, v32);
  v155 = v37;
  sub_100012D04(v151, v34, &unk_1003DDEB0, &qword_100342830);
  v38 = (*(v15 + 48))(v34, 1, v14);
  v161 = v36;
  v142 = v30;
  if (v38 == 1)
  {
    sub_100008D3C(v34, &unk_1003DDEB0, &qword_100342830);
    v40 = v145;
    v39 = v146;
    v41 = *(v145 + 16);
    v42 = v148;
    v43 = v149;
    v41(v148, v146 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__spake2Factory, v149);
    Dependency.wrappedValue.getter();
    (*(v40 + 8))(v42, v43);
    v44 = v154;
    v45 = sub_100118898();
    v47 = v44;
    if (v44)
    {
      sub_100012324(v161, v155);

      v96 = v159;
LABEL_20:
      sub_10000839C(v96);
      v55 = v156;
LABEL_21:
      sub_10010C048(v55, type metadata accessor for CustodianRecoveryData);
      return v42;
    }

    v65 = v46;
    v154 = v45;

    sub_10000839C(v159);
    v61 = v155;
  }

  else
  {
    v47 = v154;
    v48 = v34;
    v49 = v147;
    sub_10010C274(v48, v147, type metadata accessor for CustodianRecoveryData);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100008D04(v50, qword_1003FAA88);
    v51 = v144;
    sub_10010BD38(v49, v144, type metadata accessor for CustodianRecoveryData);
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v156;
    if (v54)
    {
      v56 = v156;
      v57 = swift_slowAlloc();
      *v57 = 134217984;
      v58 = v51;
      v59 = v47;
      v60 = *(v58 + v14[15]);
      sub_10010C048(v58, type metadata accessor for CustodianRecoveryData);
      *(v57 + 4) = v60;
      v47 = v59;
      _os_log_impl(&_mh_execute_header, v52, v53, "Current code has been attempted %ld times...", v57, 0xCu);
      v55 = v56;
      v49 = v147;
    }

    else
    {
      sub_10010C048(v51, type metadata accessor for CustodianRecoveryData);
    }

    v61 = v155;

    v62 = *(v49 + v14[15]);
    v63 = v161;
    if (v62 > 4)
    {

      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        *v68 = 0;
        _os_log_impl(&_mh_execute_header, v66, v67, "Too many attempts made on the existing code, failing creating new session ...", v68, 2u);
        v61 = v155;
      }

      type metadata accessor for AACustodianRecoveryError(0);
      v42 = v69;
      v157[0] = -9006;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      sub_100012324(v63, v61);
      sub_10010C048(v49, type metadata accessor for CustodianRecoveryData);
      goto LABEL_21;
    }

    v64 = *(v49 + 40);
    if (v64)
    {
      v154 = *(v49 + 32);

      sub_10010C048(v49, type metadata accessor for CustodianRecoveryData);
      *(v55 + v141) = v62 + 1;
      v65 = v64;
      v39 = v146;
    }

    else
    {
      v98 = v145;
      v99 = v146;
      v42 = v148;
      v100 = v149;
      (*(v145 + 16))(v148, v146 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__spake2Factory, v149);
      Dependency.wrappedValue.getter();
      (*(v98 + 8))(v42, v100);
      v101 = sub_100118898();
      if (v47)
      {
        sub_10010C048(v147, type metadata accessor for CustodianRecoveryData);
        sub_100012324(v63, v61);

        sub_10000839C(v159);
        goto LABEL_21;
      }

      v65 = v102;
      v154 = v101;
      sub_10010C048(v147, type metadata accessor for CustodianRecoveryData);

      sub_10000839C(v159);
      v39 = v99;
    }

    v40 = v145;
    v41 = *(v145 + 16);
  }

  v70 = v39 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__spake2Factory;
  v71 = v148;
  v72 = v149;
  v41(v148, v70, v149);
  Dependency.wrappedValue.getter();
  (*(v40 + 8))(v71, v72);
  v42 = *sub_1000080F8(v157, v158);
  v73 = v161;
  v74 = v154;
  sub_100117FA4(v159);
  if (v47)
  {

    sub_100012324(v73, v61);

    v96 = v157;
    goto LABEL_20;
  }

  sub_10000839C(v157);
  sub_1002D1BFC(v152);

  v75 = sub_100255878();
  v77 = v76;
  v78 = v143;
  sub_100015D58(*v143, v143[1]);
  *v78 = v75;
  v78[1] = v77;
  v79 = v139;
  v80 = v131;
  *v131 = v138;
  v80[1] = v79;
  v81 = type metadata accessor for CustodianshipInfoRecord();
  v82 = v140;
  v83 = (v140 + *(v81 + 24));
  v84 = *v83;
  v85 = v83[1];
  v86 = v132;
  *v132 = v84;
  v86[1] = v85;

  v87 = v156;
  v88 = v133;
  sub_100008D3C(&v156[v133], &qword_1003D8B60, &unk_10033F210);
  v89 = *(v81 + 20);
  v90 = v137;
  (*(v136 + 16))(&v87[v88], v82 + v89, v137);
  v134(&v87[v88], 0, 1, v90);
  *(v87 + 4) = v74;
  *(v87 + 5) = v65;
  v91 = v153;
  *(v87 + 2) = v142;
  *(v87 + 3) = v91;
  v92 = v160;
  sub_1000080F8(v159, v160);
  v93 = *(*(&v92 + 1) + 8);

  v94 = v93(v92, *(&v92 + 1));
  v154 = 0;
  v151 = v95;
  v152 = v94;
  v103 = Data.base64EncodedString(options:)(0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v104 = type metadata accessor for Logger();
  sub_100008D04(v104, qword_1003FAA88);

  v105 = Logger.logObject.getter();
  v106 = static os_log_type_t.debug.getter();

  v107 = os_log_type_enabled(v105, v106);
  countAndFlagsBits = v103._countAndFlagsBits;
  if (v107)
  {
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v157[0] = v109;
    *v108 = 136315138;
    object = v103._object;
    *(v108 + 4) = sub_10021145C(v103._countAndFlagsBits, v103._object, v157);
    _os_log_impl(&_mh_execute_header, v105, v106, "CUSTODIAN MESSAGE 1: %s", v108, 0xCu);
    sub_10000839C(v109);
  }

  else
  {
    object = v103._object;
  }

  v111 = v143;
  v112 = v153;

  v113 = Logger.logObject.getter();
  v114 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v157[0] = v116;
    *v115 = 136315138;
    v117 = v142;
    *(v115 + 4) = sub_10021145C(v142, v112, v157);
    _os_log_impl(&_mh_execute_header, v113, v114, "SPAKE SESSION ID: %s", v115, 0xCu);
    sub_10000839C(v116);
  }

  else
  {

    v117 = v142;
  }

  sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
  v118 = swift_initStackObject();
  *(v118 + 16) = xmmword_10033E5C0;
  strcpy((v118 + 32), "spakeMessage");
  *(v118 + 45) = 0;
  *(v118 + 46) = -5120;
  *(v118 + 48) = countAndFlagsBits;
  *(v118 + 56) = object;
  *(v118 + 72) = &type metadata for String;
  strcpy((v118 + 80), "spakeSessionId");
  *(v118 + 120) = &type metadata for String;
  *(v118 + 95) = -18;
  *(v118 + 96) = v117;
  *(v118 + 104) = v112;
  v119 = sub_100308978(v118);
  swift_setDeallocating();
  sub_100005814(&qword_1003DB0B0, &unk_10033E710);
  swift_arrayDestroy();
  sub_1002D2194(v119);

  v120 = sub_100255878();
  v122 = v121;
  sub_100015D58(*v111, v111[1]);
  *v111 = v120;
  v111[1] = v122;
  v123 = *(v146 + 144);
  v124 = *(v146 + 16);
  type metadata accessor for CustodianSessionManager();
  v125 = v124;
  v126 = v156;
  v42 = sub_100117570(v124, v156);

  v153 = v160;
  v127 = v160;
  v128 = sub_1000080F8(v159, v160);
  v158 = v153;
  v129 = sub_10000DBEC(v157);
  (*(*(v127 - 8) + 16))(v129, v128, v127);
  sub_100012324(v161, v155);
  sub_100012324(v152, v151);
  v130 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
  swift_beginAccess();
  sub_10010BA98(v157, &v42[v130]);
  swift_endAccess();
  sub_10000839C(v159);
  sub_10010C048(v126, type metadata accessor for CustodianRecoveryData);
  return v42;
}

uint64_t sub_1001086D8(uint64_t *a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1003D7F38 != -1)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA88);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v30[0] = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_10021145C(a1, a2, v30);
      _os_log_impl(&_mh_execute_header, v7, v8, "Looking for active sessions with sessionID: %s", v9, 0xCu);
      sub_10000839C(v10);
    }

    v11 = *(v3 + 144);
    v12 = sub_100116ADC(a1, a2);
    v13 = v3;
    v3 = v12[2];
    if (!v3)
    {
      break;
    }

    v28 = v13;
    swift_weakInit();
    swift_beginAccess();
    a2 = 0;
    a1 = v12 + 5;
    while (a2 < v12[2])
    {
      v16 = *(a1 - 1);
      v17 = *a1;
      if (swift_weakLoadStrong())
      {
        type metadata accessor for AACustodianRecoveryError(0);
        sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
        swift_unknownObjectRetain();
        _BridgedStoredNSError.init(_:userInfo:)();
        sub_100108BC8(v16, v17, v29, 5);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      Strong = swift_weakLoadStrong();
      if (Strong)
      {
        v14 = *(Strong + 144);
        swift_unknownObjectRetain();

        v15 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
        type metadata accessor for AACustodianRecoveryError(0);
        sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
        _BridgedStoredNSError.init(_:userInfo:)();
        sub_100116210(v16 + v15, v29, 1);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
      ++a2;
      a1 += 2;
      if (v3 == a2)
      {

        swift_weakDestroy();
        v19 = (v28 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
        v20 = *(v28 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
        *v19 = 0;
        v19[1] = 0;

        v21 = (v28 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
        v22 = *(v28 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID + 8);
        *v21 = 0;
        v21[1] = 0;
      }
    }

    __break(1u);
LABEL_19:
    swift_once();
  }

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_10021145C(a1, a2, v30);
    _os_log_impl(&_mh_execute_header, v24, v25, "No sessions found with given sessionID: %s, nothing to cancel", v26, 0xCu);
    sub_10000839C(v27);
  }

  type metadata accessor for AACustodianError(0);
  v30[4] = -7013;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10010BB40(&qword_1003D8140, type metadata accessor for AACustodianError);
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

void sub_100108BC8(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v86 = a4;
  v85 = a2;
  v6 = type metadata accessor for CustodianRecoveryData();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v87 = (&v78 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for String.Encoding();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _convertErrorToNSError(_:)();
  v15 = [v14 code];

  v90 = v15;
  dispatch thunk of CustomStringConvertible.description.getter();
  static String.Encoding.utf8.getter();
  v16 = String.data(using:allowLossyConversion:)();
  v18 = v17;

  (*(v10 + 8))(v13, v9);
  v89 = v18;
  if (v18 >> 60 != 15)
  {
    v23 = a1;
    ObjectType = swift_getObjectType();
    v25 = v23 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
    swift_beginAccess();
    v26 = *(v25 + 24);
    v82 = v25;
    v83 = v16;
    v80 = ObjectType;
    v81 = a3;
    v84 = v23;
    if (v26)
    {
      v27 = *(v25 + 16);

      v28 = Data.base64EncodedString(options:)(0);
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      inited = swift_initStackObject();
      strcpy((inited + 32), "spakeMessage");
      *(inited + 16) = xmmword_10033E5C0;
      *(inited + 45) = 0;
      *(inited + 46) = -5120;
      *(inited + 48) = v28;
      *(inited + 72) = &type metadata for String;
      strcpy((inited + 80), "spakeSessionId");
      *(inited + 120) = &type metadata for String;
      *(inited + 95) = -18;
      *(inited + 96) = v27;
      *(inited + 104) = v26;
      v30 = sub_100308978(inited);
      swift_setDeallocating();
      sub_100005814(&qword_1003DB0B0, &unk_10033E710);
      swift_arrayDestroy();
      sub_1002D2194(v30);

      v31 = sub_100255878();
      v33 = v32;
      v34 = v6;
      v35 = v85;
      v36 = *(v85 + 48);
      v37 = v80;
      v39 = v36(&v90);
    }

    else
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v79 = v6;
      v40 = type metadata accessor for Logger();
      sub_100008D04(v40, qword_1003FAA88);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Looks like we don't have a spakeSessionID, Owner device failed before receiving custodian data, passing sessionUUID", v43, 2u);
      }

      v44 = Data.base64EncodedString(options:)(0);
      v45 = UUID.uuidString.getter();
      v47 = v46;
      sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
      v48 = swift_initStackObject();
      strcpy((v48 + 32), "spakeMessage");
      *(v48 + 16) = xmmword_10033E5C0;
      *(v48 + 45) = 0;
      *(v48 + 46) = -5120;
      *(v48 + 48) = v44;
      *(v48 + 72) = &type metadata for String;
      strcpy((v48 + 80), "spakeSessionId");
      *(v48 + 120) = &type metadata for String;
      *(v48 + 95) = -18;
      *(v48 + 96) = v45;
      *(v48 + 104) = v47;
      v49 = sub_100308978(v48);
      swift_setDeallocating();
      sub_100005814(&qword_1003DB0B0, &unk_10033E710);
      swift_arrayDestroy();
      sub_1002D2194(v49);

      v31 = sub_100255878();
      v33 = v50;
      v35 = v85;
      v36 = *(v85 + 48);
      v37 = v80;
      v39 = v36(&v90);
      v34 = v79;
    }

    v51 = (v38 + *(v34 + 44));
    v52 = *v51;
    v53 = v51[1];
    *v51 = v31;
    v51[1] = v33;
    sub_100015D58(v52, v53);
    v39(&v90, 0);
    v54 = _convertErrorToNSError(_:)();
    v55 = [v54 code];

    v56 = (v36)(&v90, v37, v35);
    v58 = v57 + *(v34 + 52);
    *v58 = v55;
    *(v58 + 8) = 0;
    v56(&v90, 0);
    v59 = swift_allocObject();
    v90 = 0;
    v91 = 0xE000000000000000;
    _StringGuts.grow(_:)(40);

    v90 = 0xD000000000000026;
    v91 = 0x800000010032EA00;
    v60._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v60);

    String.utf8CString.getter();

    v61 = os_transaction_create();

    *(v59 + 16) = v61;
    v62 = v86;
    if (v86 > 2u)
    {
      v63 = v83;
      if (v86 != 3)
      {
        v64 = v82;
        if (v86 != 4)
        {

          v66 = 5;
LABEL_23:
          v67 = kAAAnalyticsEventCustodianKeyExchangeSendMessage;
          v68 = objc_opt_self();

          v69 = [v68 analyticsEventWithName:v67 altDSID:0 flowID:0];
          v70 = v87;
          sub_10010BD38(v64, v87, type metadata accessor for CustodianRecoveryData);
          v71 = sub_10010ABFC(v70, v66);
          sub_10010C048(v70, type metadata accessor for CustodianRecoveryData);
          v72 = sub_1000080F8((v88 + 24), *(v88 + 48));
          v73 = swift_allocObject();
          v73[2] = v69;
          v73[3] = sub_10010BA64;
          v73[4] = v59;
          v74 = *v72;
          v75 = swift_allocObject();
          *(v75 + 16) = sub_10010BA6C;
          *(v75 + 24) = v73;
          v94 = sub_10010BA78;
          v95 = v75;
          v90 = _NSConcreteStackBlock;
          v91 = 1107296256;
          v92 = sub_10013BB5C;
          v93 = &unk_1003A9878;
          v76 = _Block_copy(&v90);
          v77 = v69;

          [v74 startCustodianRecoveryTransactionWithContext:v71 completion:v76];
          _Block_release(v76);

          sub_100015D58(v63, v89);
          return;
        }

LABEL_20:
        v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v65 & 1 | (v62 > 3u))
        {
          v66 = 5;
        }

        else
        {
          v66 = v62 + 1;
        }

        goto LABEL_23;
      }
    }

    else
    {
      v63 = v83;
    }

    v64 = v82;
    goto LABEL_20;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAA88);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "Unable to convert error to data", v22, 2u);
  }
}

void sub_10010962C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (*(a2 + 16))
  {
    swift_beginAccess();
    *(a2 + 16) = 0;
    swift_unknownObjectRelease();
  }

  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA88);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = _convertErrorToNSError(_:)();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "failed to inform session cancel to IdMS with error: %@", v7, 0xCu);
      sub_100008D3C(v8, &unk_1003D9140, &qword_10033E640);
    }

    else
    {
    }
  }
}

uint64_t sub_1001097DC(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2();
  if (v2)
  {
    v5 = AACustodianRecoveryErrorDomain;
    sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10033EB30;
    *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 40) = v7;
    swift_getErrorValue();
    *(inited + 72) = v12;
    v8 = sub_10000DBEC((inited + 48));
    (*(*(v12 - 8) + 16))(v8);
    v9 = v5;
    sub_100308978(inited);
    swift_setDeallocating();
    sub_100008D3C(inited + 32, &qword_1003DB0B0, &unk_10033E710);
    v10 = objc_allocWithZone(NSError);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    [v10 initWithDomain:v9 code:a1 userInfo:isa];

    swift_willThrow();
  }

  return result;
}

uint64_t sub_100109984(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = a1[3];
  v10 = a1[4];
  sub_1000080F8(a1, v9);
  result = (*(v10 + 32))(a4, a5, v9, v10);
  if (!v5)
  {
    v12 = a1[3];
    v13 = a1[4];
    sub_1000080F8(a1, v12);
    result = (*(v13 + 40))(v12, v13);
    if ((result & 1) == 0)
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100008D04(v14, qword_1003FAA88);
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&_mh_execute_header, v15, v16, "SPAKE messages verification failed", v17, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
      _BridgedStoredNSError.init(_:userInfo:)();
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_100109B78@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_1000080F8(a1, v4);
  result = (*(v5 + 8))(v4, v5);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_100109BE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  sub_1000080F8(a1, v4);
  result = (*(v5 + 24))(v4, v5);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v7;
  }

  return result;
}

uint64_t sub_100109C50(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for CustodianRecoveryData();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_10010B538(a1);
  if (!v9)
  {
    return 0;
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100008D04(v16, qword_1003FAA88);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v44 = v17;
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Looking for existing sessions to start message verification", v20, 2u);
  }

  v21 = *(v2 + 144);
  v22 = sub_100116820(v12, v13);
  if (!v22)
  {
    sub_10010B994(v12, v13, v14, v15);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    sub_10010B9E0(v12, v13, v14, v15);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = v15;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45[0] = v36;
      *v35 = 136315138;

      v37 = sub_10021145C(v12, v13, v45);

      *(v35 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v32, v33, "No Active session with spakeID: %s", v35, 0xCu);
      sub_10000839C(v36);

      v38 = v12;
      v39 = v13;
      v40 = v14;
      v41 = v34;
    }

    else
    {

      v38 = v12;
      v39 = v13;
      v40 = v14;
      v41 = v15;
    }

    sub_10010B9E0(v38, v39, v40, v41);
    return 0;
  }

  v24 = v22;
  v25 = v23;
  sub_10010BD38(a1, v7, type metadata accessor for CustodianRecoveryData);
  sub_10010B994(v12, v13, v14, v15);
  v44 = v15;
  sub_100012324(v14, v15);
  v26 = v7[3];

  v7[2] = v12;
  v7[3] = v13;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Updating session with new data", v29, 2u);
  }

  ObjectType = swift_getObjectType();
  v31 = (*(v25 + 48))(v45, ObjectType, v25);
  sub_10010E8E8(v7);
  v31(v45, 0);
  sub_10010B9E0(v12, v13, v14, v44);
  sub_10010C048(v7, type metadata accessor for CustodianRecoveryData);
  return v24;
}

void sub_10010A07C(uint64_t a1, char a2, uint64_t a3, void (*a4)(void))
{
  if (a2)
  {
    a4();
  }

  else
  {
    v5 = objc_allocWithZone(AACustodianRecoveryConfiguration);
    isa = Dictionary._bridgeToObjectiveC()().super.isa;
    v7 = [v5 initWithConfigurationDictionary:isa];

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v9 = *(Strong + 16);
      *(Strong + 16) = v7;
      v10 = v7;
    }

    (a4)(0);
  }
}

uint64_t sub_10010A174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a6;
  v37 = a8;
  v38 = a5;
  v39 = a2;
  v12 = type metadata accessor for CustodianRecoveryData();
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = (&v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v35 - v19;
  (*(v17 + 16))(&v35 - v19, a1, v16);
  v21 = (*(v17 + 80) + 16) & ~*(v17 + 80);
  v22 = swift_allocObject();
  (*(v17 + 32))(v22 + v21, v20, v16);
  sub_100012004();
  v23 = kAAAnalyticsEventCustodianKeyExchangeSendMessage;

  v24 = v23;

  v25 = sub_100245D38(v24, v36, a7, v37, a9);
  v26 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(a3 + v26, v15, type metadata accessor for CustodianRecoveryData);
  v27 = sub_10010ABFC(v15, v38);
  sub_10010C048(v15, type metadata accessor for CustodianRecoveryData);
  v28 = sub_1000080F8((v39 + 24), *(v39 + 48));
  v29 = swift_allocObject();
  v29[2] = v25;
  v29[3] = sub_10010BC1C;
  v29[4] = v22;
  v30 = *v28;
  v31 = swift_allocObject();
  *(v31 + 16) = sub_10010E5C4;
  *(v31 + 24) = v29;
  aBlock[4] = sub_10010E58C;
  aBlock[5] = v31;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013BB5C;
  aBlock[3] = &unk_1003A9918;
  v32 = _Block_copy(aBlock);
  v33 = v25;

  [v30 startCustodianRecoveryTransactionWithContext:v27 completion:v32];
  _Block_release(v32);
}

void sub_10010A4E0(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA88);
  swift_errorRetain();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    if (a1)
    {
      swift_errorRetain();
      v11 = _swift_stdlib_bridgeErrorToNSError();
      v12 = v11;
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    *(v9 + 4) = v11;
    *v10 = v12;
    _os_log_impl(&_mh_execute_header, v7, v8, "Custodian transaction sent to IdMS completed with error: %@", v9, 0xCu);
    sub_100008D3C(v10, &unk_1003D9140, &qword_10033E640);
  }

  if (a2)
  {
    if (a1)
    {
      v13 = _convertErrorToNSError(_:)();
    }

    else
    {
      v13 = 0;
    }

    [a2 updateTaskResultWithError:v13];
  }

  v14 = [objc_allocWithZone(type metadata accessor for AnalyticsRTCReporter()) init];
  sub_1000FABC8(a2);

  if (a3)
  {

    a3(a1);

    sub_100083B0C(a3);
  }
}

uint64_t sub_10010A6FC()
{
  sub_10000839C((v0 + 24));
  sub_10000839C((v0 + 64));
  sub_10000839C((v0 + 104));
  v1 = *(v0 + 144);
  swift_unknownObjectRelease();
  v2 = OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__spake2Factory;
  v3 = sub_100005814(&qword_1003DDEA8, &qword_100342828);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__accountStore;
  v5 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsEventFactory;
  v7 = sub_100005814(&qword_1003DA0D0, &qword_10033F1C0);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController__analyticsRTCReporter;
  v9 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = *(v0 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);

  v11 = *(v0 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID + 8);

  return v0;
}

uint64_t sub_10010A89C()
{
  sub_10010A6FC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianRecoveryController()
{
  result = qword_1003DDBD8;
  if (!qword_1003DDBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010A948()
{
  sub_10000DAB8(319, &qword_1003DDBE8, &unk_1003DDBF0, &qword_1003427F0);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_10000DAB8(319, qword_1003DA6C0, &unk_1003DA2A0, &unk_10033BDA0);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_10000DAB8(319, qword_1003DB290, &unk_1003D9810, &unk_10033EFC0);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_10000DAB8(319, qword_1003D8A50, &qword_1003D9AE0, &qword_10033E8A0);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_10010AB24(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_10010AB44(uint64_t a1, uint64_t a2)
{
  v3 = (*v2 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  v4 = v3[1];
  *v3 = a1;
  v3[1] = a2;
}

uint64_t sub_10010AB64(uint64_t a1, uint64_t a2, void *a3)
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

id sub_10010ABFC(uint64_t *a1, int a2)
{
  v53 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v52[-v5];
  v7 = type metadata accessor for CustodianRecoveryData();
  v8 = *(*(v7 - 1) + 64);
  __chkstk_darwin(v7);
  v10 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100008D04(v11, qword_1003FAA88);
  sub_10010BD38(a1, v10, type metadata accessor for CustodianRecoveryData);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v54 = v15;
    *v14 = 136315138;
    v16 = sub_10011038C();
    v18 = v17;
    sub_10010C048(v10, type metadata accessor for CustodianRecoveryData);
    v19 = sub_10021145C(v16, v18, &v54);

    *(v14 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v12, v13, "Generating context generated with data: %s", v14, 0xCu);
    sub_10000839C(v15);
  }

  else
  {

    sub_10010C048(v10, type metadata accessor for CustodianRecoveryData);
  }

  v20 = [objc_allocWithZone(AKCustodianContext) init];
  v21 = (a1 + v7[11]);
  v22 = v53;
  if (v21[1] >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v24 = *v21;
    isa = Data._bridgeToObjectiveC()().super.isa;
  }

  [v20 setAaData:isa];

  v25 = a1 + v7[13];
  if (v25[8])
  {
    v26 = 0;
  }

  else
  {
    v26 = *v25;
  }

  [v20 setClientErrorCode:v26];
  sub_100012D04(a1 + v7[7], v6, &qword_1003D8B60, &unk_10033F210);
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v29 = 0;
  if ((*(v28 + 48))(v6, 1, v27) != 1)
  {
    v29 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v28 + 8))(v6, v27);
  }

  [v20 setCustodianUUID:v29];

  v30 = (a1 + v7[12]);
  if (v30[1] >> 60 == 15)
  {
    v31 = 0;
  }

  else
  {
    v32 = *v30;
    v31 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v20 setIdmsData:v31];

  v33 = (a1 + v7[8]);
  if (v33[1])
  {
    v34 = *v33;
    v35 = String._bridgeToObjectiveC()();
  }

  else
  {
    v35 = 0;
  }

  [v20 setOwnerAppleID:v35];

  v36 = (a1 + v7[9]);
  if (v36[1])
  {
    v37 = *v36;
    v38 = String._bridgeToObjectiveC()();
  }

  else
  {
    v38 = 0;
  }

  [v20 setOwnerCustodianAltDSID:v38];

  if (a1[1])
  {
    v39 = *a1;
    v40 = String._bridgeToObjectiveC()();
  }

  else
  {
    v40 = 0;
  }

  [v20 setRecoverySessionID:v40];

  v41 = String._bridgeToObjectiveC()();

  [v20 setRecoveryStep:v41];

  if (v22 != 1)
  {
    v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v43 & 1) == 0)
    {
      if (v22 == 3)
      {
        v42 = 1;
        goto LABEL_35;
      }

      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v44 & 1) == 0)
      {
        if (v53 > 4u)
        {
          v42 = 1;
        }

        else
        {
          v42 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_35;
      }
    }

    v42 = 1;
    goto LABEL_36;
  }

  v42 = 1;
LABEL_35:

LABEL_36:
  [v20 setOwnerDevice:v42 & 1];
  [v20 set_cliMode:*(a1 + v7[14])];
  v45 = (a1 + v7[10]);
  if (v45[1] >> 60 == 15)
  {
    v46 = 0;
  }

  else
  {
    v47 = *v45;
    v46 = Data._bridgeToObjectiveC()().super.isa;
  }

  [v20 setEncryptedPRKC:v46];

  if ([v20 respondsToSelector:Selector.init(_:)()])
  {
    v48 = (a1 + v7[16]);
    if (v48[1])
    {
      v49 = *v48;
      v50 = String._bridgeToObjectiveC()();
    }

    else
    {
      v50 = 0;
    }

    [v20 setRecordBuildVersion:v50];
  }

  return v20;
}

uint64_t sub_10010B538(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for CustodianRecoveryData() + 44);
  v2 = *(v1 + 8);
  if (v2 >> 60 == 15)
  {
    goto LABEL_15;
  }

  v3 = *v1;
  sub_100015D6C(*v1, *(v1 + 8));
  sub_100015D6C(v3, v2);
  v4 = sub_100255E08(v3, v2);
  if (!v4)
  {
    goto LABEL_14;
  }

  v5 = v4;
  strcpy(v25, "spakeSessionId");
  HIBYTE(v25[1]) = -18;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_10031B060(v26), (v7 & 1) == 0))
  {
    sub_100015D58(v3, v2);
LABEL_12:

    sub_1000526B0(v26);
LABEL_15:
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&_mh_execute_header, v15, v16, "Unable to parse AAData, bad spake message?", v17, 2u);
    }

    return 0;
  }

  sub_10000DB1C(*(v5 + 56) + 32 * v6, v27);
  sub_1000526B0(v26);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_13:

LABEL_14:
    sub_100015D58(v3, v2);
    goto LABEL_15;
  }

  v8 = v25[0];
  strcpy(v25, "spakeMessage");
  BYTE5(v25[1]) = 0;
  HIWORD(v25[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v9 = sub_10031B060(v26), (v10 & 1) == 0))
  {
    sub_100015D58(v3, v2);

    goto LABEL_12;
  }

  sub_10000DB1C(*(v5 + 56) + 32 * v9, v27);
  sub_1000526B0(v26);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_13;
  }

  v12 = v25[0];
  v11 = v25[1];
  Data.init(base64Encoded:options:)();
  if (v13 >> 60 == 15)
  {

    goto LABEL_13;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100008D04(v19, qword_1003FAA88);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v26[0] = v23;
    *v22 = 136315138;
    v24 = sub_10021145C(v12, v11, v26);

    *(v22 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v20, v21, "Received Verifier Message: %s", v22, 0xCu);
    sub_10000839C(v23);

    sub_100015D58(v3, v2);
  }

  else
  {
    sub_100015D58(v3, v2);
  }

  return v8;
}

void sub_10010B994(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100015D6C(a3, a4);
  }
}

void sub_10010B9E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_100012324(a3, a4);
  }
}

uint64_t sub_10010BA2C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10010BA80(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10010BA98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DE300, &qword_100342838);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10010BB40(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10010BB88()
{
  v1 = sub_100005814(&qword_1003DABC0, &unk_100342840);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v2 + 64);
  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v3 + v4);
}

uint64_t sub_10010BC1C(uint64_t a1)
{
  v2 = *(*(sub_100005814(&qword_1003DABC0, &unk_100342840) - 8) + 80);

  return sub_10007D4A8(a1);
}

uint64_t sub_10010BC98()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10010BCD0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10010BD38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10010BDA0()
{
  v1 = type metadata accessor for CustodianRecoveryKeys();
  v2 = (*(*(v1 - 8) + 80) + 48) & ~*(*(v1 - 8) + 80);
  v3 = *(*(v1 - 8) + 64);
  v4 = *(v0 + 16);

  v5 = *(v0 + 24);
  swift_unknownObjectRelease();

  v6 = v0 + v2;
  sub_100012324(*(v0 + v2), *(v0 + v2 + 8));
  v7 = *(v0 + v2 + 24);
  if (v7 >> 60 != 15)
  {
    sub_100012324(*(v6 + 16), v7);
  }

  v8 = *(v6 + 40);

  v9 = *(v1 + 28);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v6 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = *(v6 + *(v1 + 32) + 8);

  return _swift_deallocObject(v0, v2 + v3);
}

uint64_t sub_10010BF1C(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecoveryKeys() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1 + ((*(v3 + 80) + 48) & ~*(v3 + 80));

  return sub_1001023B4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_10010BF94()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  v3 = *(v0 + 32);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56);
}

uint64_t sub_10010BFF8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10010C038(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_10010C048(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10010C0A8()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  swift_unownedRelease();

  v7 = *(v0 + 32);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);
  sub_10000839C((v0 + v4));
  v8 = *(v0 + v5 + 8);

  sub_100012324(*(v0 + v5 + 16), *(v0 + v5 + 24));

  return _swift_deallocObject(v0, v5 + 32);
}

uint64_t sub_10010C1B4(uint64_t a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8));
  v8 = v6[3];
  return sub_1000FF02C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, (v1 + v5), *v6, v6[1]);
}

uint64_t sub_10010C274(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10010C2DC(uint64_t a1, uint64_t a2, int a3)
{
  v6 = type metadata accessor for CustodianRecoveryData();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (a1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData);
  swift_beginAccess();
  sub_10010BD38(v10, v9, type metadata accessor for CustodianRecoveryData);
  v11 = sub_10010B538(v9);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_10010C048(v9, type metadata accessor for CustodianRecoveryData);
  if (v13)
  {
    v61 = a3;
    v18 = v10[1];
    if (v18)
    {
      v60 = v3;
      v19 = v11;
      v20 = *v10;
      v21 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
      swift_beginAccess();
      sub_100012D04(a1 + v21, &v62, &qword_1003DE300, &qword_100342838);
      if (v63)
      {
        sub_10003E950(&v62, v64);
        v22 = qword_1003D7F38;

        if (v22 != -1)
        {
          swift_once();
        }

        v23 = type metadata accessor for Logger();
        sub_100008D04(v23, qword_1003FAA88);

        sub_10010B994(v19, v13, v15, v17);
        v24 = v15;
        v25 = Logger.logObject.getter();
        v26 = static os_log_type_t.default.getter();

        v59 = v24;
        sub_10010B9E0(v19, v13, v24, v17);
        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v28 = swift_slowAlloc();
          v58 = v17;
          *&v62 = v28;
          *v27 = 136315394;
          v29 = sub_10021145C(v20, v18, &v62);

          *(v27 + 4) = v29;
          *(v27 + 12) = 2080;

          v30 = sub_10021145C(v19, v13, &v62);

          *(v27 + 14) = v30;
          _os_log_impl(&_mh_execute_header, v25, v26, "Verifying message for session with RecoveryID: %s, SpakeID: %s", v27, 0x16u);
          swift_arrayDestroy();
          v17 = v58;
        }

        else
        {
        }

        v44 = v59;
        if (v61 - 2 < 2)
        {
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&_mh_execute_header, v50, v51, "verifying message 2", v52, 2u);
          }

          __chkstk_darwin(v53);
          *(&v57 - 6) = v64;
          *(&v57 - 5) = v19;
          *(&v57 - 4) = v13;
          *(&v57 - 3) = v44;
          *(&v57 - 2) = v17;
          v49 = sub_10010E3C4;
        }

        else
        {
          if (v61 > 1u)
          {
            v54 = Logger.logObject.getter();
            v55 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v54, v55))
            {
              v56 = swift_slowAlloc();
              *v56 = 0;
              _os_log_impl(&_mh_execute_header, v54, v55, "Wrong step sent to verify message method", v56, 2u);
            }

            type metadata accessor for AACustodianRecoveryError(0);
            v64[10] = -9023;
            sub_100212324(_swiftEmptyArrayStorage);
            sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
            _BridgedStoredNSError.init(_:userInfo:)();
            swift_willThrow();
            sub_10010B9E0(v19, v13, v44, v17);
            goto LABEL_34;
          }

          v45 = Logger.logObject.getter();
          v46 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&_mh_execute_header, v45, v46, "verifying message 1", v47, 2u);
          }

          __chkstk_darwin(v48);
          *(&v57 - 6) = v64;
          *(&v57 - 5) = v19;
          *(&v57 - 4) = v13;
          *(&v57 - 3) = v44;
          *(&v57 - 2) = v17;
          v49 = sub_10010E3E8;
        }

        sub_1001097DC(-9002, v49);
        sub_10010B9E0(v19, v13, v44, v17);
LABEL_34:
        sub_10000839C(v64);
        return;
      }

      sub_100008D3C(&v62, &qword_1003DE300, &qword_100342838);
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v40 = type metadata accessor for Logger();
      sub_100008D04(v40, qword_1003FAA88);
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&_mh_execute_header, v41, v42, "Missing verifier", v43, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      *&v62 = -9014;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      v39 = v19;
    }

    else
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_100008D04(v35, qword_1003FAA88);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&_mh_execute_header, v36, v37, "Recovery session id missing in recovery data", v38, 2u);
      }

      type metadata accessor for AACustodianRecoveryError(0);
      *&v62 = -9008;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
      _BridgedStoredNSError.init(_:userInfo:)();
      swift_willThrow();
      v39 = v11;
    }

    sub_10010B9E0(v39, v13, v15, v17);
    return;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  sub_100008D04(v31, qword_1003FAA88);
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Malformed recovery data", v34, 2u);
  }

  type metadata accessor for AACustodianRecoveryError(0);
  *&v62 = -9013;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
  _BridgedStoredNSError.init(_:userInfo:)();
  swift_willThrow();
}

uint64_t *sub_10010CC84(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = type metadata accessor for CustodianRecoveryData();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
  swift_beginAccess();
  sub_10010BD38(a1 + v10, v9, type metadata accessor for CustodianRecoveryData);
  v11 = sub_10010B538(v9);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  sub_10010C048(v9, type metadata accessor for CustodianRecoveryData);
  if (v13)
  {
    v65 = v15;
    v18 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
    swift_beginAccess();
    sub_100012D04(a1 + v18, &v66, &qword_1003DE300, &qword_100342838);
    if (v67)
    {
      sub_10003E950(&v66, v68);
      if (a3 - 1 >= 2)
      {
        v19 = v65;
        if (a3)
        {
          if (qword_1003D7F38 != -1)
          {
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          sub_100008D04(v55, qword_1003FAA88);
          v56 = Logger.logObject.getter();
          v57 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            *v58 = 0;
            _os_log_impl(&_mh_execute_header, v56, v57, "Wrong step sent to get message method", v58, 2u);
          }

          type metadata accessor for AACustodianRecoveryError(0);
          v24 = v59;
          v69 = -9024;
          sub_100212324(_swiftEmptyArrayStorage);
          sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
          _BridgedStoredNSError.init(_:userInfo:)();
          swift_willThrow();
          sub_10010B9E0(v11, v13, v19, v17);
LABEL_38:
          sub_10000839C(v68);
          return v24;
        }

        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v38 = type metadata accessor for Logger();
        sub_100008D04(v38, qword_1003FAA88);
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          *v41 = 0;
          _os_log_impl(&_mh_execute_header, v39, v40, "Generating message 1", v41, 2u);
        }

        v24 = &v61;
        __chkstk_darwin(v42);
        *(&v61 - 2) = v68;
        v26 = sub_10010E3A8;
        v27 = -9026;
      }

      else
      {
        v19 = v65;
        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v20 = type metadata accessor for Logger();
        sub_100008D04(v20, qword_1003FAA88);
        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          *v23 = 0;
          _os_log_impl(&_mh_execute_header, v21, v22, "Generating message 2", v23, 2u);
        }

        v24 = &v61;
        __chkstk_darwin(v25);
        *(&v61 - 2) = v68;
        v26 = sub_10010E38C;
        v27 = -9027;
      }

      sub_1001097DC(v27, v26);
      if (v3)
      {
        sub_10010B9E0(v11, v13, v19, v17);
      }

      else
      {
        v61 = v11;
        v62 = *(&v66 + 1);
        v63 = v66;
        v43 = Data.base64EncodedString(options:)(0);
        if (qword_1003D7F38 != -1)
        {
          swift_once();
        }

        v64 = v17;
        v44 = type metadata accessor for Logger();
        sub_100008D04(v44, qword_1003FAA88);

        v45 = Logger.logObject.getter();
        v46 = static os_log_type_t.debug.getter();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *&v66 = v48;
          *v47 = 136315138;
          *(v47 + 4) = sub_10021145C(v43._countAndFlagsBits, v43._object, &v66);
          _os_log_impl(&_mh_execute_header, v45, v46, "message created with message: %s", v47, 0xCu);
          sub_10000839C(v48);
        }

        sub_100005814(&unk_1003DB0A0, &qword_10033EC60);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10033E5C0;
        strcpy((inited + 32), "spakeMessage");
        *(inited + 45) = 0;
        *(inited + 46) = -5120;
        *(inited + 48) = v43;
        *(inited + 72) = &type metadata for String;
        strcpy((inited + 80), "spakeSessionId");
        *(inited + 120) = &type metadata for String;
        v50 = v61;
        *(inited + 95) = -18;
        *(inited + 96) = v50;
        *(inited + 104) = v13;

        v51 = sub_100308978(inited);
        swift_setDeallocating();
        sub_100005814(&qword_1003DB0B0, &unk_10033E710);
        swift_arrayDestroy();
        sub_1002D2194(v51);

        v52 = sub_100255878();
        if (v53 >> 60 != 15)
        {
          v24 = v52;
          sub_10010B9E0(v50, v13, v65, v64);
          sub_100012324(v63, v62);
          sub_10000839C(v68);
          return v24;
        }

        type metadata accessor for AACustodianRecoveryError(0);
        v24 = v54;
        v69 = -9025;
        sub_100212324(_swiftEmptyArrayStorage);
        sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
        _BridgedStoredNSError.init(_:userInfo:)();
        swift_willThrow();
        sub_10010B9E0(v50, v13, v65, v64);
        sub_100012324(v63, v62);
      }

      goto LABEL_38;
    }

    sub_100008D3C(&v66, &qword_1003DE300, &qword_100342838);
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA88);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "Session missing verifier", v36, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v24 = v37;
    *&v66 = -9014;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    sub_10010B9E0(v11, v13, v65, v17);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA88);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Malformed recovery data", v31, 2u);
    }

    type metadata accessor for AACustodianRecoveryError(0);
    v24 = v32;
    *&v66 = -9013;
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10010BB40(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
  }

  return v24;
}

void sub_10010D708(void *a1, void *a2, const void *a3)
{
  v6 = type metadata accessor for CustodianRecoveryData();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1000080F0;
  *(v11 + 24) = v10;
  _Block_copy(a3);
  _Block_copy(a3);

  v12 = [a1 recoverySessionID];
  if (!v12)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA88);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&_mh_execute_header, v29, v30, "Recovery request context does not contain recovery session ID to validate code", v31, 2u);
    }

    type metadata accessor for AACustodianError(0);
    v32 = -7052;
    goto LABEL_18;
  }

  v13 = v12;
  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  v17 = [a1 recoveryCode];
  if (!v17)
  {
LABEL_14:

    if (qword_1003D7F38 == -1)
    {
LABEL_15:
      v33 = type metadata accessor for Logger();
      sub_100008D04(v33, qword_1003FAA88);
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Recovery request context does not contain recovery code to validate code", v36, 2u);
      }

      type metadata accessor for AACustodianError(0);
      v32 = -7053;
LABEL_18:
      v95 = v32;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10010BB40(&qword_1003D8140, type metadata accessor for AACustodianError);
      _BridgedStoredNSError.init(_:userInfo:)();
      v37 = v94;
      _Block_copy(a3);
      sub_100056DB0(v37, 1, a3);
      _Block_release(a3);

      v38 = a3;
      goto LABEL_19;
    }

LABEL_45:
    swift_once();
    goto LABEL_15;
  }

  v90 = v14;
  v91 = v16;
  v18 = v17;
  v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  v22 = HIBYTE(v21) & 0xF;
  v93 = v19;
  if ((v21 & 0x2000000000000000) == 0)
  {
    v22 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {

    goto LABEL_14;
  }

  v92 = a2;
  v88 = v10;
  v23 = [a1 altDSID];
  if (v23)
  {
    v24 = v23;
    v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0;
  }

  v39 = (v92 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID);
  v40 = *(v92 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryAltDSID + 8);
  *v39 = v25;
  v39[1] = v27;
  v86 = v39;

  v41 = [a1 telemetryFlowID];
  if (v41)
  {
    v42 = v41;
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;
  }

  else
  {
    v43 = 0;
    v45 = 0;
  }

  v46 = (v92 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID);
  v47 = *(v92 + OBJC_IVAR____TtC13appleaccountd27CustodianRecoveryController_activeTelemetryFlowID + 8);
  *v46 = v43;
  v46[1] = v45;

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v87 = v6;
  v89 = a3;
  v48 = type metadata accessor for Logger();
  sub_100008D04(v48, qword_1003FAA88);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&_mh_execute_header, v49, v50, "Looking for matching sessions to start code verification", v51, 2u);
  }

  v52 = v92[18];
  v53 = sub_100116ADC(v90, v91);
  a3 = v53[2];
  if (a3)
  {

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      *v56 = 0;
      _os_log_impl(&_mh_execute_header, v54, v55, "There are are already sessions with this identifier. Starting verification", v56, 2u);
    }

    v57 = swift_allocObject();
    v58 = v92;
    swift_weakInit();
    v59 = swift_allocObject();
    v60 = v93;
    v59[2] = v53;
    v59[3] = v60;
    v59[4] = v21;
    v59[5] = v57;
    v59[6] = sub_10010E4FC;
    v59[7] = v11;
    v59[8] = a1;
    if (v58[2])
    {
      v61 = a1;
      v62 = v11;

      v63 = 0;
      while (v63 < v53[2])
      {
        v64 = v59;
        v65 = (v63 + 1);
        v94 = *&v53[2 * v63 + 4];
        swift_unknownObjectRetain();
        sub_1000FC3A0(&v94, v93, v21, v57, sub_10010E4FC, v62, v61);
        swift_unknownObjectRelease();
        v63 = v65;
        v66 = a3 == v65;
        v59 = v64;
        if (v66)
        {

          goto LABEL_41;
        }
      }

      __break(1u);
      goto LABEL_45;
    }

    sub_1000080F8(v58 + 3, v58[6]);
    v79 = *v46;
    v80 = v46[1];
    v81 = v86[1];
    v93 = *v86;
    v82 = swift_allocObject();
    swift_weakInit();
    v83 = swift_allocObject();
    v83[2] = v82;
    v83[3] = sub_10010E560;
    v83[4] = v59;

    v84 = a1;

    sub_10011A4E8(v79, v80, v93, v81, sub_10010E5E0, v83);

LABEL_41:

    v38 = v89;
  }

  else
  {

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "We have a code but have not received yet a Push with Spake Begin, Creating session and waiting for push", v69, 2u);
    }

    *(v9 + 2) = 0;
    *(v9 + 3) = 0;
    v70 = v87;
    v71 = v87[7];
    v72 = type metadata accessor for UUID();
    (*(*(v72 - 8) + 56))(&v9[v71], 1, 1, v72);
    v73 = &v9[v70[8]];
    *v73 = 0;
    *(v73 + 1) = 0;
    v74 = &v9[v70[9]];
    *v74 = 0;
    *(v74 + 1) = 0;
    *&v9[v70[10]] = xmmword_10033F590;
    *&v9[v70[11]] = xmmword_10033F590;
    *&v9[v70[12]] = xmmword_10033F590;
    v75 = &v9[v70[13]];
    *v75 = 0;
    v75[8] = 1;
    v76 = v70[14];
    *&v9[v70[15]] = 1;
    v77 = &v9[v70[16]];
    *v77 = 0;
    *(v77 + 1) = 0;
    *(v9 + 4) = v93;
    *(v9 + 5) = v21;
    v78 = v91;
    *v9 = v90;
    *(v9 + 1) = v78;
    v9[v76] = [a1 CLIMode];
    sub_100116014(v9, sub_10010E4FC, v11);
    swift_unknownObjectRelease();
    sub_10010C048(v9, type metadata accessor for CustodianRecoveryData);

    v38 = v89;
  }

LABEL_19:
  _Block_release(v38);
}

uint64_t sub_10010E128()
{
  v1 = type metadata accessor for CustodianRecoveryData();
  v2 = (*(*(v1 - 1) + 80) + 24) & ~*(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = *(v0 + 16);

  v5 = v0 + v2;
  v6 = *(v0 + v2 + 8);

  v7 = *(v0 + v2 + 24);

  v8 = *(v0 + v2 + 40);

  v9 = v1[7];
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v2 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v12 = *(v5 + v1[8] + 8);

  v13 = *(v5 + v1[9] + 8);

  v14 = (v5 + v1[10]);
  v15 = v14[1];
  if (v15 >> 60 != 15)
  {
    sub_100012324(*v14, v15);
  }

  v16 = (v5 + v1[11]);
  v17 = v16[1];
  if (v17 >> 60 != 15)
  {
    sub_100012324(*v16, v17);
  }

  v18 = (v5 + v1[12]);
  v19 = v18[1];
  if (v19 >> 60 != 15)
  {
    sub_100012324(*v18, v19);
  }

  v20 = *(v5 + v1[16] + 8);

  return _swift_deallocObject(v0, v2 + v3);
}

void sub_10010E304(uint64_t a1)
{
  v3 = *(type metadata accessor for CustodianRecoveryData() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  sub_1000FE214(a1, v4, v5);
}

uint64_t sub_10010E3E8()
{
  v1 = v0[2];
  v3 = v0[5];
  v2 = v0[6];
  v4 = v1[3];
  v5 = v1[4];
  sub_1000080F8(v1, v4);
  return (*(v5 + 16))(v3, v2, v4, v5);
}

uint64_t sub_10010E47C()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 32);
  }

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_10010E4C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_10010E508()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  v4 = *(v0 + 56);

  return _swift_deallocObject(v0, 72);
}

uint64_t sub_10010E5F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_10010E6D4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CustodianRecoveryData()
{
  result = qword_1003DDF28;
  if (!qword_1003DDF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010E7D0()
{
  sub_1000EEDD4(319, &qword_1003DB130);
  if (v0 <= 0x3F)
  {
    sub_1000F2A94();
    if (v1 <= 0x3F)
    {
      sub_1000EEDD4(319, &qword_1003DD7C0);
      if (v2 <= 0x3F)
      {
        sub_1000EEDD4(319, &unk_1003DD690);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_10010E8E8(void *a1)
{
  v2 = v1;
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v86 = &v83 - v6;
  v7 = type metadata accessor for UUID();
  v87 = *(v7 - 8);
  v8 = *(v87 + 64);
  __chkstk_darwin(v7);
  v85 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CustodianRecoveryData();
  v11 = *(*(v10 - 1) + 64);
  __chkstk_darwin(v10);
  v13 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100008D04(v14, qword_1003FAA88);
  sub_100110BB8(a1, v13);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v84 = v7;
    v18 = v17;
    v19 = swift_slowAlloc();
    v88 = v19;
    *v18 = 136315138;
    v20 = sub_10011038C();
    v22 = v21;
    sub_100110B5C(v13);
    v23 = sub_10021145C(v20, v22, &v88);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Updating recovery data with data: %s", v18, 0xCu);
    sub_10000839C(v19);

    v7 = v84;
  }

  else
  {

    sub_100110B5C(v13);
  }

  v24 = a1[1];
  v26 = v86;
  v25 = v87;
  if (v24)
  {
    v27 = *a1;
    v28 = *(v2 + 1);
    v29 = a1[1];

    *v2 = v27;
    *(v2 + 1) = v24;
  }

  v30 = a1[3];
  if (v30)
  {
    v31 = a1[2];
    v32 = *(v2 + 3);
    v33 = a1[3];

    *(v2 + 2) = v31;
    *(v2 + 3) = v30;
  }

  v34 = a1[5];
  if (v34)
  {
    v35 = a1[4];
    v36 = *(v2 + 5);
    v37 = a1[5];

    *(v2 + 4) = v35;
    *(v2 + 5) = v34;
  }

  sub_1000F2504(a1 + v10[7], v26);
  if ((*(v25 + 48))(v26, 1, v7) == 1)
  {
    result = sub_1000F76CC(v26);
  }

  else
  {
    v39 = *(v25 + 32);
    v40 = v85;
    v39(v85, v26, v7);
    v41 = v10[7];
    sub_1000F76CC(&v2[v41]);
    v39(&v2[v41], v40, v7);
    result = (*(v25 + 56))(&v2[v41], 0, 1, v7);
  }

  v42 = v10[8];
  v43 = *(a1 + v42 + 8);
  if (v43)
  {
    v44 = *(a1 + v42);
    v45 = &v2[v42];
    v46 = *&v2[v42 + 8];
    v47 = *(a1 + v42 + 8);

    *v45 = v44;
    *(v45 + 1) = v43;
  }

  v48 = v10[9];
  v49 = *(a1 + v48 + 8);
  if (v49)
  {
    v50 = *(a1 + v48);
    v51 = &v2[v48];
    v52 = *&v2[v48 + 8];
    v53 = *(a1 + v48 + 8);

    *v51 = v50;
    *(v51 + 1) = v49;
  }

  v54 = v10[11];
  v55 = (a1 + v54);
  v56 = *(a1 + v54 + 8);
  if (v56 >> 60 != 15)
  {
    v57 = *v55;
    v58 = &v2[v54];
    v59 = *&v2[v54];
    v60 = *&v2[v54 + 8];
    sub_100015D6C(*v55, *(a1 + v54 + 8));
    result = sub_100015D58(v59, v60);
    *v58 = v57;
    v58[1] = v56;
  }

  v61 = v10[12];
  v62 = (a1 + v61);
  v63 = *(a1 + v61 + 8);
  if (v63 >> 60 != 15)
  {
    v64 = *v62;
    v65 = &v2[v61];
    v66 = *&v2[v61];
    v67 = *&v2[v61 + 8];
    sub_100015D6C(*v62, *(a1 + v61 + 8));
    result = sub_100015D58(v66, v67);
    *v65 = v64;
    v65[1] = v63;
  }

  v68 = v10[13];
  if ((*(a1 + v68 + 8) & 1) == 0)
  {
    v69 = *(a1 + v68);
    v70 = &v2[v68];
    *v70 = v69;
    v70[8] = 0;
  }

  v71 = v10[10];
  v72 = (a1 + v71);
  v73 = *(a1 + v71 + 8);
  if (v73 >> 60 != 15)
  {
    v74 = *v72;
    v75 = &v2[v71];
    v76 = *&v2[v71];
    v77 = *&v2[v71 + 8];
    sub_100015D6C(*v72, *(a1 + v71 + 8));
    result = sub_100015D58(v76, v77);
    *v75 = v74;
    v75[1] = v73;
  }

  v78 = v10[16];
  v79 = *(a1 + v78 + 8);
  if (v79)
  {
    v80 = *(a1 + v78);
    v81 = &v2[v78];
    v82 = *&v2[v78 + 8];

    *v81 = v80;
    *(v81 + 1) = v79;
  }

  return result;
}

uint64_t sub_10010EE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v66 - v6;
  v8 = type metadata accessor for CustodianRecoveryData();
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v9 = v8[7];
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 56);
  v70 = v9;
  v11(a2 + v9, 1, 1, v10);
  *(a2 + v8[10]) = xmmword_10033F590;
  v12 = a2 + v8[11];
  *v12 = xmmword_10033F590;
  v13 = a2 + v8[12];
  *v13 = xmmword_10033F590;
  *(a2 + v8[14]) = 0;
  *(a2 + v8[15]) = 1;
  v14 = (a2 + v8[16]);
  *v14 = 0;
  v14[1] = 0;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100008D04(v15, qword_1003FAA88);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v69 = v14;
    v67 = v19;
    v72[0] = v19;
    *v18 = 136315138;
    v20 = Dictionary.description.getter();
    v68 = v7;
    v22 = a1;
    v23 = a2;
    v24 = v8;
    v25 = v12;
    v26 = sub_10021145C(v20, v21, v72);
    v7 = v68;

    *(v18 + 4) = v26;
    v12 = v25;
    v8 = v24;
    a2 = v23;
    a1 = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "Got push with user info: %s", v18, 0xCu);
    sub_10000839C(v67);
    v14 = v69;
  }

  v73[0] = 0xD000000000000011;
  v73[1] = 0x800000010032D480;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v27 = sub_10031B060(v72), (v28 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v27, v73);
    sub_1000526B0(v72);
    v29 = swift_dynamicCast();
    v30 = v71[0];
    v31 = v71[1];
    if (!v29)
    {
      v30 = 0;
      v31 = 0;
    }
  }

  else
  {
    sub_1000526B0(v72);
    v30 = 0;
    v31 = 0;
  }

  *a2 = v30;
  *(a2 + 8) = v31;
  strcpy(v71, "custodianUUID");
  HIWORD(v71[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v32 = sub_10031B060(v72), (v33 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v32, v73);
    sub_1000526B0(v72);
    if (swift_dynamicCast())
    {
      UUID.init(uuidString:)();

      sub_1000F244C(v7, a2 + v70);
    }
  }

  else
  {
    sub_1000526B0(v72);
  }

  strcpy(v73, "ownerAppleId");
  BYTE5(v73[1]) = 0;
  HIWORD(v73[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v34 = sub_10031B060(v72), (v35 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v34, v73);
    sub_1000526B0(v72);
    v36 = swift_dynamicCast();
    v37 = v71[0];
    v38 = v71[1];
    if (!v36)
    {
      v37 = 0;
      v38 = 0;
    }
  }

  else
  {
    sub_1000526B0(v72);
    v37 = 0;
    v38 = 0;
  }

  v39 = (a2 + v8[8]);
  *v39 = v37;
  v39[1] = v38;
  v73[0] = 0xD000000000000015;
  v73[1] = 0x800000010032E8D0;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v40 = sub_10031B060(v72), (v41 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v40, v73);
    sub_1000526B0(v72);
    v42 = swift_dynamicCast();
    v43 = v71[0];
    v44 = v71[1];
    if (!v42)
    {
      v43 = 0;
      v44 = 0;
    }
  }

  else
  {
    sub_1000526B0(v72);
    v43 = 0;
    v44 = 0;
  }

  v45 = (a2 + v8[9]);
  *v45 = v43;
  v45[1] = v44;
  v71[0] = 0x617461646161;
  v71[1] = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v46 = sub_10031B060(v72), (v47 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v46, v73);
    sub_1000526B0(v72);
    if (swift_dynamicCast())
    {
      v48 = Data.init(base64Encoded:options:)();
      v50 = v49;

      sub_100015D58(*v12, *(v12 + 8));
      *v12 = v48;
      *(v12 + 8) = v50;
    }
  }

  else
  {
    sub_1000526B0(v72);
  }

  strcpy(v71, "idmsdata");
  BYTE1(v71[1]) = 0;
  WORD1(v71[1]) = 0;
  HIDWORD(v71[1]) = -402653184;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v51 = sub_10031B060(v72), (v52 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v51, v73);
    sub_1000526B0(v72);
    if (swift_dynamicCast())
    {
      v53 = Data.init(base64Encoded:options:)();
      v55 = v54;

      sub_100015D58(*v13, *(v13 + 8));
      *v13 = v53;
      *(v13 + 8) = v55;
    }
  }

  else
  {
    sub_1000526B0(v72);
  }

  v73[0] = 25445;
  v73[1] = 0xE200000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v56 = sub_10031B060(v72), (v57 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v56, v73);
    sub_1000526B0(v72);
    v58 = swift_dynamicCast();
    v59 = v71[0];
    if (!v58)
    {
      v59 = 0;
    }

    v60 = v58 ^ 1;
  }

  else
  {
    sub_1000526B0(v72);
    v59 = 0;
    v60 = 1;
  }

  v61 = a2 + v8[13];
  *v61 = v59;
  *(v61 + 8) = v60;
  v71[0] = 0xD000000000000012;
  v71[1] = 0x800000010032D430;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v62 = sub_10031B060(v72), (v63 & 1) != 0))
  {
    sub_10000DB1C(*(a1 + 56) + 32 * v62, v73);
    sub_1000526B0(v72);

    result = swift_dynamicCast();
    if (result)
    {
      v65 = v71[1];
      *v14 = v71[0];
      v14[1] = v65;
    }
  }

  else
  {

    return sub_1000526B0(v72);
  }

  return result;
}

unint64_t sub_10010F6A8(char a1)
{
  result = 0x736553656B617073;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x797265766F636572;
      break;
    case 3:
      result = 0x6169646F74737563;
      break;
    case 4:
      result = 0x70704172656E776FLL;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x6574707972636E65;
      break;
    case 7:
      result = 0x617461446161;
      break;
    case 8:
      result = 0x61746144736D6469;
      break;
    case 9:
      result = 0x646F43726F727265;
      break;
    case 10:
      result = 0x6973736553696C63;
      break;
    case 11:
      result = 0x7374706D65747461;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_10010F884(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003DDFA0, &qword_100342908);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v40 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_100110B08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v42) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    LOBYTE(v42) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = v3[4];
    v16 = v3[5];
    LOBYTE(v42) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = type metadata accessor for CustodianRecoveryData();
    v18 = v17[7];
    LOBYTE(v42) = 3;
    type metadata accessor for UUID();
    sub_100110C1C(&unk_1003DDA80);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = (v3 + v17[8]);
    v20 = *v19;
    v21 = v19[1];
    LOBYTE(v42) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = (v3 + v17[9]);
    v23 = *v22;
    v24 = v22[1];
    LOBYTE(v42) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = (v3 + v17[10]);
    v26 = v25[1];
    v42 = *v25;
    v43 = v26;
    v41 = 6;
    sub_100052704(v42, v26);
    sub_1000EE774();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v42, v43);
    v27 = (v3 + v17[11]);
    v28 = v27[1];
    v42 = *v27;
    v43 = v28;
    v41 = 7;
    sub_100052704(v42, v28);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v42, v43);
    v29 = (v3 + v17[12]);
    v30 = v29[1];
    v42 = *v29;
    v43 = v30;
    v41 = 8;
    sub_100052704(v42, v30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v42, v43);
    v31 = v3 + v17[13];
    v32 = *v31;
    v33 = v31[8];
    LOBYTE(v42) = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v34 = *(v3 + v17[14]);
    LOBYTE(v42) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v35 = *(v3 + v17[15]);
    LOBYTE(v42) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v36 = (v3 + v17[16]);
    v37 = *v36;
    v38 = v36[1];
    LOBYTE(v42) = 12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10010FCA0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v73 = &v60 - v5;
  v74 = sub_100005814(&qword_1003DDF90, &qword_100342900);
  v72 = *(v74 - 8);
  v6 = *(v72 + 64);
  __chkstk_darwin(v74);
  v78 = &v60 - v7;
  v8 = type metadata accessor for CustodianRecoveryData();
  v9 = (v8 - 8);
  v10 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v12 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 1) = 0u;
  *(v12 + 2) = 0u;
  *v12 = 0u;
  v13 = v9[9];
  v14 = type metadata accessor for UUID();
  v15 = *(*(v14 - 8) + 56);
  v70 = v13;
  v71 = v14;
  v15(&v12[v13], 1, 1);
  v16 = &v12[v9[10]];
  *v16 = 0;
  v16[1] = 0;
  v17 = &v12[v9[11]];
  *v17 = 0;
  v17[1] = 0;
  v18 = &v12[v9[12]];
  *v18 = xmmword_10033F590;
  v69 = &v12[v9[13]];
  *v69 = xmmword_10033F590;
  v68 = &v12[v9[14]];
  *v68 = xmmword_10033F590;
  v19 = &v12[v9[15]];
  *v19 = 0;
  *(v19 + 8) = 1;
  v67 = v9[16];
  v12[v67] = 0;
  v20 = v9[17];
  *&v12[v20] = 1;
  v21 = v9[18];
  v77 = v12;
  v22 = &v12[v21];
  *v22 = 0;
  v22[1] = 0;
  v23 = a1;
  v24 = a1[3];
  v25 = v23[4];
  v76 = v23;
  sub_1000080F8(v23, v24);
  sub_100110B08();
  v26 = v75;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v26)
  {
    v30 = v77;
    sub_10000839C(v76);
    v59 = v30;
  }

  else
  {
    v75 = v16;
    v64 = v18;
    v65 = v17;
    v62 = v20;
    v63 = v19;
    v61 = v22;
    v28 = v72;
    v27 = v73;
    LOBYTE(v79) = 0;
    v29 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32 = v77;
    *v77 = v29;
    v32[1] = v33;
    LOBYTE(v79) = 1;
    v32[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32[3] = v34;
    LOBYTE(v79) = 2;
    v32[4] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v32[5] = v35;
    LOBYTE(v79) = 3;
    sub_100110C1C(&unk_1003DD720);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000F244C(v27, v32 + v70);
    LOBYTE(v79) = 4;
    v36 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v37 = v75;
    *v75 = v36;
    v37[1] = v38;
    LOBYTE(v79) = 5;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = v65;
    *v65 = v39;
    v40[1] = v41;
    v81 = 6;
    sub_1000EE61C();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v42 = v79;
    v43 = v80;
    v44 = v64;
    sub_100015D58(*v64, *(v64 + 1));
    *v44 = v42;
    v44[1] = v43;
    v81 = 7;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v45 = v79;
    v46 = v80;
    v47 = v69;
    sub_100015D58(*v69, *(v69 + 1));
    *v47 = v45;
    *(v47 + 1) = v46;
    v81 = 8;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v48 = v79;
    v49 = v80;
    v50 = v68;
    sub_100015D58(*v68, *(v68 + 1));
    *v50 = v48;
    *(v50 + 1) = v49;
    LOBYTE(v79) = 9;
    v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v52 = v63;
    *v63 = v51;
    *(v52 + 8) = v53 & 1;
    LOBYTE(v79) = 10;
    *(v77 + v67) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v79) = 11;
    *(v77 + v62) = KeyedDecodingContainer.decode(_:forKey:)();
    LOBYTE(v79) = 12;
    v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v56 = v55;
    (*(v28 + 8))(v78, v74);
    v57 = v61;
    *v61 = v54;
    v57[1] = v56;
    v58 = v77;
    sub_100110BB8(v77, v66);
    sub_10000839C(v76);
    v59 = v58;
  }

  return sub_100110B5C(v59);
}

uint64_t sub_1001102BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100110D78(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001102E4(uint64_t a1)
{
  v2 = sub_100110B08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100110320(uint64_t a1)
{
  v2 = sub_100110B08();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10011038C()
{
  v1 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v53 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(70);
  v10._countAndFlagsBits = 0xD000000000000030;
  v10._object = 0x800000010032EA90;
  String.append(_:)(v10);
  if (v0[1])
  {
    v11 = *v0;
    v12 = v0[1];
  }

  else
  {
    v11 = 7104878;
    v12 = 0xE300000000000000;
  }

  v13._countAndFlagsBits = v11;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD000000000000012;
  v14._object = 0x800000010032EAD0;
  String.append(_:)(v14);
  if (v0[3])
  {
    v15 = v0[2];
    v16 = v0[3];
  }

  else
  {
    v15 = 7104878;
    v16 = 0xE300000000000000;
  }

  v17._countAndFlagsBits = v15;
  v17._object = v16;
  String.append(_:)(v17);

  v18 = v0[5];
  if (v18)
  {
    v19 = v0[4];
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v55._countAndFlagsBits = 0xD000000000000010;
    v55._object = 0x800000010032EBB0;
    v20._countAndFlagsBits = v19;
    v20._object = v18;
    String.append(_:)(v20);
    String.append(_:)(v55);
  }

  v21 = type metadata accessor for CustodianRecoveryData();
  sub_1000F2504(v0 + v21[7], v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1000F76CC(v4);
  }

  else
  {
    (*(v6 + 32))(v9, v4, v5);
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    _StringGuts.grow(_:)(19);

    v55._countAndFlagsBits = 0xD000000000000011;
    v55._object = 0x800000010032EB90;
    sub_100110C1C(&qword_1003D9150);
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    String.append(_:)(v55);

    (*(v6 + 8))(v9, v5);
  }

  v23 = (v0 + v21[8]);
  v24 = v23[1];
  if (v24)
  {
    v25 = *v23;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    v55._countAndFlagsBits = 0xD000000000000010;
    v55._object = 0x800000010032EB70;
    v26._countAndFlagsBits = v25;
    v26._object = v24;
    String.append(_:)(v26);
    String.append(_:)(v55);
  }

  v27 = (v0 + v21[9]);
  v28 = v27[1];
  if (v28)
  {
    v29 = *v27;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    _StringGuts.grow(_:)(27);

    v55._countAndFlagsBits = 0xD000000000000019;
    v55._object = 0x800000010032EB50;
    v30._countAndFlagsBits = v29;
    v30._object = v28;
    String.append(_:)(v30);
    String.append(_:)(v55);
  }

  v31 = (v0 + v21[11]);
  v32 = v31[1];
  if (v32 >> 60 != 15)
  {
    v33 = *v31;
    strcpy(&v55, "\n aaData: ");
    BYTE3(v55._object) = 0;
    HIDWORD(v55._object) = -369098752;
    sub_100052704(v33, v32);
    v34._countAndFlagsBits = Data.description.getter();
    String.append(_:)(v34);

    String.append(_:)(v55);

    sub_100015D58(v33, v32);
  }

  v35 = (v0 + v21[12]);
  v36 = v35[1];
  if (v36 >> 60 != 15)
  {
    v37 = *v35;
    strcpy(&v55, "\n IdMSData: ");
    BYTE5(v55._object) = 0;
    HIWORD(v55._object) = -5120;
    sub_100052704(v37, v36);
    v38._countAndFlagsBits = Data.description.getter();
    String.append(_:)(v38);

    String.append(_:)(v55);

    sub_100015D58(v37, v36);
  }

  v39 = (v0 + v21[10]);
  v40 = v39[1];
  if (v40 >> 60 != 15)
  {
    v41 = *v39;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    sub_100015D6C(v41, v40);
    _StringGuts.grow(_:)(19);

    v55._countAndFlagsBits = 0xD000000000000011;
    v55._object = 0x800000010032EB30;
    v42._countAndFlagsBits = Data.description.getter();
    String.append(_:)(v42);

    String.append(_:)(v55);

    sub_100015D58(v41, v40);
  }

  v43 = v0 + v21[13];
  if ((v43[8] & 1) == 0)
  {
    v44 = *v43;
    strcpy(&v55, "\n errorCode: ");
    HIWORD(v55._object) = -4864;
    v54 = v44;
    v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v45);

    String.append(_:)(v55);
  }

  if (*(v0 + v21[14]) == 1)
  {
    v46._countAndFlagsBits = 0x736553696C43200ALL;
    v46._object = 0xEC0000006E6F6973;
    String.append(_:)(v46);
  }

  v47 = (v0 + v21[16]);
  v48 = v47[1];
  if (v48)
  {
    v49 = *v47;
    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    _StringGuts.grow(_:)(24);

    v55._countAndFlagsBits = 0xD000000000000016;
    v55._object = 0x800000010032EB10;
    v50._countAndFlagsBits = v49;
    v50._object = v48;
    String.append(_:)(v50);
    String.append(_:)(v55);
  }

  v55._countAndFlagsBits = 0;
  v55._object = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v55._countAndFlagsBits = 0xD000000000000019;
  v55._object = 0x800000010032EAF0;
  v54 = *(v0 + v21[15]);
  v51._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v51);

  String.append(_:)(v55);

  return v56;
}

unint64_t sub_100110B08()
{
  result = qword_1003DDF98;
  if (!qword_1003DDF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDF98);
  }

  return result;
}

uint64_t sub_100110B5C(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecoveryData();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100110BB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoveryData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100110C1C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100110C74()
{
  result = qword_1003DDFA8;
  if (!qword_1003DDFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDFA8);
  }

  return result;
}

unint64_t sub_100110CCC()
{
  result = qword_1003DDFB0;
  if (!qword_1003DDFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDFB0);
  }

  return result;
}

unint64_t sub_100110D24()
{
  result = qword_1003DDFB8;
  if (!qword_1003DDFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DDFB8);
  }

  return result;
}

uint64_t sub_100110D78(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000010032E8F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736553656B617073 && a2 == 0xEE0044496E6F6973 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797265766F636572 && a2 == 0xEC00000065646F43 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6169646F74737563 && a2 == 0xED0000444955556ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x70704172656E776FLL && a2 == 0xEC0000004449656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x800000010032E8D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6574707972636E65 && a2 == 0xED0000434B525064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x617461446161 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x61746144736D6469 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x646F43726F727265 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6973736553696C63 && a2 == 0xEA00000000006E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x7374706D65747461 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010032D430 == a2)
  {

    return 12;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

void sub_1001111C0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100008D04(v10, qword_1003FAA88);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v13 = 136315650;
    v14 = Dictionary.description.getter();
    v16 = sub_10021145C(v14, v15, v41);

    *(v13 + 4) = v16;
    *(v13 + 12) = 2080;
    *(v13 + 14) = sub_10021145C(a2, a3, v41);
    *(v13 + 22) = 2080;
    *(v13 + 24) = sub_10021145C(a4, a5, v41);
    _os_log_impl(&_mh_execute_header, v11, v12, "Asked to verify CFU item: %s \n with IdMS Info: %s altDISD: %s", v13, 0x20u);
    swift_arrayDestroy();

    v6 = v5;
  }

  v36 = [objc_allocWithZone(ACAccountStore) init];
  v17 = [v36 aa_primaryAppleAccount];
  if (v17)
  {

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&_mh_execute_header, v18, v19, "There is already a primary account on this device, ignoring Notification", v20, 2u);
    }

    v21 = [objc_allocWithZone(AKCustodianContext) init];
    if (*(a1 + 16))
    {
      v22 = sub_1003084DC(0x6E6F697373657372, 0xEA00000000006449);
      if (v23)
      {
        sub_10000DB1C(*(a1 + 56) + 32 * v22, v41);
        if (swift_dynamicCast())
        {
          v24 = String._bridgeToObjectiveC()();

          [v21 setRecoverySessionID:v24];
        }
      }
    }

    v25 = String._bridgeToObjectiveC()();
    [v21 setTransactionID:v25];

    v26 = String._bridgeToObjectiveC()();
    [v21 setAltDSID:v26];

    [v21 setNotificationAction:0];
    if (*(a1 + 16) && (v27 = sub_1003084DC(0x79654B6C72556266, 0xE800000000000000), (v28 & 1) != 0))
    {
      sub_10000DB1C(*(a1 + 56) + 32 * v27, v41);
      v29 = swift_dynamicCast();
      if (v29)
      {
        v30 = v39;
      }

      else
      {
        v30 = 0;
      }

      if (v29)
      {
        v31 = v40;
      }

      else
      {
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
      v31 = 0;
    }

    sub_1000080F8((v6 + 56), *(v6 + 80));
    sub_10011B6B0(v21, v30, v31, sub_100112D08, 0);
  }

  else
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "We don't have an account, Looking for custodian information ", v34, 2u);
    }

    v35 = swift_allocObject();
    swift_weakInit();

    sub_100112FE4(a1, v6, v35, a1, a2, a3, a4, a5);
  }
}

uint64_t sub_100111760(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100008D04(v14, qword_1003FAA88);
    swift_errorRetain();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    sub_10010C038(a1, a2, 1);
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v17 = 138412290;
      v19 = _convertErrorToNSError(_:)();
      *(v17 + 4) = v19;
      *v18 = v19;
      _os_log_impl(&_mh_execute_header, v15, v16, "Ignoring CFU Item as we failed to get CRToken with error: %@", v17, 0xCu);
      sub_100083380(v18);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v21 = result;
      v22 = [objc_allocWithZone(AKCustodianContext) init];
      if (*(a5 + 16))
      {
        v23 = sub_1003084DC(0x6E6F697373657372, 0xEA00000000006449);
        if (v24)
        {
          sub_10000DB1C(*(a5 + 56) + 32 * v23, &v53);
          if (swift_dynamicCast())
          {
            v25 = String._bridgeToObjectiveC()();

            [v22 setRecoverySessionID:v25];
          }
        }
      }

      v26 = String._bridgeToObjectiveC()();
      [v22 setTransactionID:v26];

      v27 = String._bridgeToObjectiveC()();
      [v22 setAltDSID:v27];

      [v22 setNotificationAction:0];
      if (*(a5 + 16) && (v28 = sub_1003084DC(0x79654B6C72556266, 0xE800000000000000), (v29 & 1) != 0))
      {
        sub_10000DB1C(*(a5 + 56) + 32 * v28, &v53);
        v30 = swift_dynamicCast();
        if (v30)
        {
          v31 = v51;
        }

        else
        {
          v31 = 0;
        }

        if (v30)
        {
          v32 = v52;
        }

        else
        {
          v32 = 0;
        }
      }

      else
      {
        v31 = 0;
        v32 = 0;
      }

      sub_1000080F8((v21 + 56), *(v21 + 80));
      sub_10011B6B0(v22, v31, v32, sub_100112D08, 0);
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    sub_100008D04(v33, qword_1003FAA88);
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&_mh_execute_header, v34, v35, "We have a CRT stored. Posting CFU... ", v36, 2u);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v37 = result;
      v54 = &type metadata for String;
      *&v53 = a8;
      *(&v53 + 1) = a9;
      sub_100070AF0(&v53, v50);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1002CF8B4(v50, 0x44495344746C61, 0xE700000000000000, isUniquelyReferenced_nonNull_native);
      v48 = v37[15];
      v39 = a1;
      v40 = v37[16];
      sub_1000080F8(v37 + 12, v48);
      v47 = AAFollowUpIdentifierCustodianEmbargo;
      v46 = sub_1002D2194(a5);

      v41 = swift_allocObject();
      swift_weakInit();
      v42 = swift_allocObject();
      v43 = a8;
      v44 = v42;
      v42[2] = a5;
      v42[3] = v41;
      v42[4] = a6;
      v42[5] = a7;
      v42[6] = v43;
      v42[7] = a9;
      v42[8] = v39;
      v42[9] = a2;
      v45 = *(v40 + 8);

      sub_100113704(v39, a2, 0);
      v45(v47, v46, sub_1001136D0, v44, v48, v40);
    }
  }

  return result;
}

void sub_100111D30(char a1, uint64_t a2)
{
  if (a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100008D04(v2, qword_1003FAA88);
    oslog = Logger.logObject.getter();
    v3 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v3, "Successfully dismissed followups for custodian emabrgo", v4, 2u);
    }

    goto LABEL_13;
  }

  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100008D04(v6, qword_1003FAA88);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Unable to dismiss followups for custodian embargo", v9, 2u);
  }

  if (a2)
  {
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = _convertErrorToNSError(_:)();
      *(v11 + 4) = v13;
      *v12 = v13;
      _os_log_impl(&_mh_execute_header, oslog, v10, "Failed to dismiss CFU with error: %@", v11, 0xCu);
      sub_100083380(v12);

LABEL_13:

      return;
    }
  }
}

uint64_t sub_100111FE8(char a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100008D04(v3, qword_1003FAA88);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v47[0] = v43;
      *v6 = 136315138;
      v7 = Dictionary.description.getter();
      v9 = sub_10021145C(v7, v8, v47);

      *(v6 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v4, v5, "Successfully posted CFU for Item: %s", v6, 0xCu);
      sub_10000839C(v43);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v11 = result;
      v12 = [objc_allocWithZone(AKCustodianContext) init];
      if (*(a3 + 16))
      {
        v13 = sub_1003084DC(0x6E6F697373657372, 0xEA00000000006449);
        if (v14)
        {
          sub_10000DB1C(*(a3 + 56) + 32 * v13, v47);
          if (swift_dynamicCast())
          {
            v15 = String._bridgeToObjectiveC()();

            [v12 setRecoverySessionID:v15];
          }
        }
      }

      v16 = String._bridgeToObjectiveC()();
      [v12 setCustodianRecoveryToken:v16];

      v17 = String._bridgeToObjectiveC()();
      [v12 setTransactionID:v17];

      v18 = String._bridgeToObjectiveC()();
      [v12 setAltDSID:v18];

      [v12 setNotificationAction:1];
LABEL_28:
      if (*(a3 + 16) && (v38 = sub_1003084DC(0x79654B6C72556266, 0xE800000000000000), (v39 & 1) != 0))
      {
        sub_10000DB1C(*(a3 + 56) + 32 * v38, v47);
        v40 = swift_dynamicCast();
        if (v40)
        {
          v41 = v45;
        }

        else
        {
          v41 = 0;
        }

        if (v40)
        {
          v42 = v46;
        }

        else
        {
          v42 = 0;
        }
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      sub_1000080F8((v11 + 56), *(v11 + 80));
      sub_10011B6B0(v12, v41, v42, sub_100112D08, 0);
    }
  }

  else
  {
    if (a2)
    {
      swift_errorRetain();
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_100008D04(v19, qword_1003FAA88);
      swift_errorRetain();
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        *v22 = 138412290;
        v24 = _convertErrorToNSError(_:)();
        *(v22 + 4) = v24;
        *v23 = v24;
        _os_log_impl(&_mh_execute_header, v20, v21, "Failed to post CFU with error: %@", v22, 0xCu);
        sub_100083380(v23);
      }

      else
      {
      }
    }

    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v47[0] = v29;
      *v28 = 136315138;
      v30 = Dictionary.description.getter();
      v32 = sub_10021145C(v30, v31, v47);

      *(v28 + 4) = v32;
      _os_log_impl(&_mh_execute_header, v26, v27, "Failed to post CFU item %s", v28, 0xCu);
      sub_10000839C(v29);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v11 = result;
      v12 = [objc_allocWithZone(AKCustodianContext) init];
      if (*(a3 + 16))
      {
        v33 = sub_1003084DC(0x6E6F697373657372, 0xEA00000000006449);
        if (v34)
        {
          sub_10000DB1C(*(a3 + 56) + 32 * v33, v47);
          if (swift_dynamicCast())
          {
            v35 = String._bridgeToObjectiveC()();

            [v12 setRecoverySessionID:v35];
          }
        }
      }

      v36 = String._bridgeToObjectiveC()();
      [v12 setTransactionID:v36];

      v37 = String._bridgeToObjectiveC()();
      [v12 setAltDSID:v37];

      [v12 setNotificationAction:0];
      goto LABEL_28;
    }
  }

  return result;
}

uint64_t sub_1001127F0(uint64_t a1, uint64_t a2, unint64_t a3, void (*a4)(uint64_t, void, uint64_t), uint64_t a5)
{
  v10 = type metadata accessor for CustodianRecoverySessionRecord();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14);
  v17 = (v42 - v16);
  sub_100113548(a1, v42 - v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v18 = *v17;
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA88);
    swift_errorRetain();
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138412290;
      v24 = _convertErrorToNSError(_:)();
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&_mh_execute_header, v20, v21, "Failed to get recovery record with error: %@", v22, 0xCu);
      sub_100083380(v23);
    }

    swift_errorRetain();
    a4(v18, 0, 1);
  }

  else
  {
    sub_1001135B8(v17, v13);
    v26 = &v13[*(v10 + 44)];
    v27 = *(v26 + 1);
    if (v27)
    {
      v28 = *v26;
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      sub_100008D04(v29, qword_1003FAA88);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v42[1] = a5;
        v33 = a4;
        v34 = v32;
        v35 = swift_slowAlloc();
        v43 = v35;
        *v34 = 136315138;
        *(v34 + 4) = sub_10021145C(a2, a3, &v43);
        _os_log_impl(&_mh_execute_header, v30, v31, "Found recovery record for sessionID: %s, posting CFU", v34, 0xCu);
        sub_10000839C(v35);

        a4 = v33;
      }

      a4(v28, v27, 0);
    }

    else
    {
      if (qword_1003D7F38 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100008D04(v36, qword_1003FAA88);

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v43 = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_10021145C(a2, a3, &v43);
        _os_log_impl(&_mh_execute_header, v37, v38, "Found recovery record for sessionID: %s, but does not contain recovery token, failing...", v39, 0xCu);
        sub_10000839C(v40);
      }

      type metadata accessor for AACustodianError(0);
      v42[2] = -7005;
      sub_100212324(_swiftEmptyArrayStorage);
      sub_10003A9C0();
      _BridgedStoredNSError.init(_:userInfo:)();
      v41 = v43;
      a4(v43, 0, 1);
    }

    return sub_10011361C(v13);
  }
}

void sub_100112D08(uint64_t a1)
{
  if (!a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100008D04(v6, qword_1003FAA88);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "Successfully sent cfu feedback to IdMS", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _convertErrorToNSError(_:)();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "Encountered error while sending cfu feedback to IdMS: %@", v3, 0xCu);
    sub_100083380(v4);

LABEL_10:

    return;
  }
}

uint64_t sub_100112F40()
{
  sub_10000839C(v0 + 2);
  sub_10000839C(v0 + 7);
  sub_10000839C(v0 + 12);

  return swift_deallocClassInstance();
}

uint64_t sub_100112FAC()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

void sub_100112FE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  v16[5] = a6;
  v16[6] = a7;
  v16[7] = a8;
  v17 = *(a1 + 16);

  if (v17 && (v18 = sub_1003084DC(0x6E6F697373657372, 0xEA00000000006449), (v19 & 1) != 0) && (sub_10000DB1C(*(a1 + 56) + 32 * v18, v44), swift_dynamicCast()))
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100008D04(v20, qword_1003FAA88);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44[0] = v24;
      *v23 = 136315138;
      *(v23 + 4) = sub_10021145C(v42, v43, v44);
      _os_log_impl(&_mh_execute_header, v21, v22, "Asked to post CFU for sessionID: %s, fetching session data", v23, 0xCu);
      sub_10000839C(v24);
    }

    v25 = sub_1000080F8((a2 + 16), *(a2 + 40));
    v26 = swift_allocObject();
    v26[2] = v42;
    v26[3] = v43;
    v26[4] = sub_1001134C8;
    v26[5] = v16;
    v27 = *v25;

    sub_10002CD28(v42, v43, sub_10011353C, v26);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v41 = a3;
    v28 = type metadata accessor for Logger();
    sub_100008D04(v28, qword_1003FAA88);

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44[0] = v40;
      *v31 = 136315138;
      v32 = Dictionary.description.getter();
      v34 = a8;
      v35 = a4;
      v36 = a5;
      v37 = a7;
      v38 = sub_10021145C(v32, v33, v44);

      *(v31 + 4) = v38;
      a7 = v37;
      a5 = v36;
      a4 = v35;
      a8 = v34;
      _os_log_impl(&_mh_execute_header, v29, v30, "Unable to find sessionID on CFU Item: %s", v31, 0xCu);
      sub_10000839C(v40);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    v39 = v44[0];
    sub_100111760(v44[0], 0, 1, v41, a4, a5, a6, a7, a8);
  }
}

uint64_t sub_100113478()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  return _swift_deallocObject(v0, 64);
}

uint64_t sub_1001134FC()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_100113548(uint64_t a1, uint64_t a2)
{
  v4 = sub_100005814(&qword_1003DA0F0, qword_100342AC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001135B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoverySessionRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10011361C(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecoverySessionRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100113678()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  v5 = v0[9];

  return _swift_deallocObject(v0, 80);
}

uint64_t sub_1001136D0(char a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  v6 = v2[6];
  v7 = v2[7];
  v9 = v2[8];
  v10 = v2[9];
  return sub_100111FE8(a1, a2, v2[2]);
}

uint64_t sub_100113704(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_errorRetain();
  }

  else
  {
  }
}

uint64_t sub_100113728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 40);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_100113804(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 40) = a2;
  }

  else
  {
    v7 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for CustodianRecoveryKeys()
{
  result = qword_1003DE0F0;
  if (!qword_1003DE0F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100113900()
{
  sub_1000EEDD4(319, &qword_1003DD7C0);
  if (v0 <= 0x3F)
  {
    sub_1000EEDD4(319, &qword_1003DB130);
    if (v1 <= 0x3F)
    {
      sub_1000F2A94();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1001139C8(void *a1)
{
  v3 = v1;
  v5 = sub_100005814(&qword_1003DE148, &qword_100342B50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000080F8(a1, a1[3]);
  sub_100114218();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v3[1];
  v23 = *v3;
  v24 = v11;
  v22 = 0;
  sub_100015D6C(v23, v11);
  sub_1000EE774();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    sub_100012324(v23, v24);
  }

  else
  {
    sub_100012324(v23, v24);
    v12 = v3[3];
    v23 = v3[2];
    v24 = v12;
    v22 = 1;
    sub_100052704(v23, v12);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100015D58(v23, v24);
    v13 = v3[4];
    v14 = v3[5];
    LOBYTE(v23) = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = type metadata accessor for CustodianRecoveryKeys();
    v16 = *(v15 + 28);
    LOBYTE(v23) = 3;
    type metadata accessor for UUID();
    sub_100110C1C(&unk_1003DDA80);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = (v3 + *(v15 + 32));
    v18 = *v17;
    v19 = v17[1];
    LOBYTE(v23) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100113C44@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100005814(&qword_1003D8B60, &unk_10033F210);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v32 - v5;
  v7 = sub_100005814(&qword_1003DE138, &qword_100342B48);
  v33 = *(v7 - 8);
  v34 = v7;
  v8 = *(v33 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = type metadata accessor for CustodianRecoveryKeys();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 1) = xmmword_10033F590;
  v16 = *(v13 + 28);
  v17 = type metadata accessor for UUID();
  v18 = *(*(v17 - 8) + 56);
  v37 = v16;
  v18(&v15[v16], 1, 1, v17);
  v20 = a1[3];
  v19 = a1[4];
  v36 = a1;
  sub_1000080F8(a1, v20);
  sub_100114218();
  v21 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    sub_10000839C(v36);
    sub_100015D58(*(v15 + 2), *(v15 + 3));

    return sub_1000F76CC(&v15[v37]);
  }

  else
  {
    v35 = v6;
    v39 = 0;
    sub_1000EE61C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v15 = v38;
    v39 = 1;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v22 = v38;
    sub_100015D58(*(v15 + 2), *(v15 + 3));
    *(v15 + 1) = v22;
    v23 = v34;
    LOBYTE(v38) = 2;
    *(v15 + 4) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v15 + 5) = v24;
    LOBYTE(v38) = 3;
    sub_100110C1C(&unk_1003DD720);
    v25 = v35;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000F244C(v25, &v15[v37]);
    LOBYTE(v38) = 4;
    v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v28 = v27;
    v29 = v23;
    v30 = &v15[*(v11 + 32)];
    (*(v33 + 8))(v10, v29);
    *v30 = v26;
    v30[1] = v28;
    sub_10011426C(v15, v32);
    sub_10000839C(v36);
    return sub_1001142D0(v15);
  }
}

unint64_t sub_100114088()
{
  v1 = *v0;
  v2 = 0x5064657070617277;
  v3 = 0xD000000000000016;
  v4 = 0x646F74737543746FLL;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5264657070617277;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100114148@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100114444(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100114170(uint64_t a1)
{
  v2 = sub_100114218();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001141AC(uint64_t a1)
{
  v2 = sub_100114218();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100114218()
{
  result = qword_1003DE140;
  if (!qword_1003DE140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DE140);
  }

  return result;
}

uint64_t sub_10011426C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoveryKeys();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001142D0(uint64_t a1)
{
  v2 = type metadata accessor for CustodianRecoveryKeys();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100114340()
{
  result = qword_1003DE150;
  if (!qword_1003DE150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DE150);
  }

  return result;
}

unint64_t sub_100114398()
{
  result = qword_1003DE158;
  if (!qword_1003DE158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DE158);
  }

  return result;
}

unint64_t sub_1001143F0()
{
  result = qword_1003DE160;
  if (!qword_1003DE160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DE160);
  }

  return result;
}

uint64_t sub_100114444(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5064657070617277 && a2 == 0xEB00000000434B52;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5264657070617277 && a2 == 0xEA0000000000434BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000010032E910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646F74737543746FLL && a2 == 0xED000044496E6169 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000010032D430 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100114618(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_terminateTask) = 0;
  v8 = (v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion);
  *v8 = 0;
  v8[1] = 0;
  v9 = v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  v10 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_lock;
  v11 = swift_slowAlloc();
  *v11 = 0;
  *(v1 + v10) = v11;
  *(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_transaction) = 0;
  UUID.init()();
  (*(v4 + 32))(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v7, v3);
  sub_100114F50(a1, v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData);
  return v1;
}

uint64_t sub_100114764(uint64_t result)
{
  v1 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_transaction;
  if (*(result + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_transaction))
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    _StringGuts.grow(_:)(34);

    v3._countAndFlagsBits = UUID.uuidString.getter();
    String.append(_:)(v3);

    String.utf8CString.getter();

    v4 = os_transaction_create();

    v5 = *(v2 + v1);
    *(v2 + v1) = v4;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_100114848()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v35[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v35[-v8];
  v10 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID;
  v11 = v3[2];
  v11(&v35[-v8], v0 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v2);
  v12 = (v0 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData);
  swift_beginAccess();
  v13 = v12[1];
  v42 = v12;
  if (v13)
  {
    v41 = *v12;
    v14 = v13;
  }

  else
  {
    v14 = 0xE500000000000000;
    v41 = 0x3E6C696E3CLL;
  }

  v15 = qword_1003D7F38;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_100008D04(v16, qword_1003FAA88);
  v11(v7, v9, v2);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  v19 = v9;
  if (os_log_type_enabled(v17, v18))
  {
    v20 = swift_slowAlloc();
    v40 = v10;
    v21 = v20;
    v38 = swift_slowAlloc();
    v43 = v38;
    *v21 = 136315394;
    sub_10011501C(&qword_1003D9150, &type metadata accessor for UUID);
    v39 = v9;
    v22 = dispatch thunk of CustomStringConvertible.description.getter();
    v37 = v17;
    v24 = v23;
    v25 = v3[1];
    v36 = v18;
    v25(v7, v2);
    v26 = sub_10021145C(v22, v24, &v43);

    *(v21 + 4) = v26;
    *(v21 + 12) = 2080;
    v27 = sub_10021145C(v41, v14, &v43);

    *(v21 + 14) = v27;
    v28 = v37;
    _os_log_impl(&_mh_execute_header, v37, v36, "Custodian recovery session object destroyed, sessionID: %s, recoverySessionID: %s", v21, 0x16u);
    swift_arrayDestroy();

    v10 = v40;

    v29 = v39;
  }

  else
  {

    v25 = v3[1];
    v25(v7, v2);
    v29 = v19;
  }

  v25(v29, v2);
  v30 = v42;
  v25((v1 + v10), v2);
  sub_100110B5C(v30);
  v31 = *(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_terminateTask);

  v32 = *(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion + 8);
  sub_100083B0C(*(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion));
  sub_100114FB4(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_verifier);
  v33 = *(v1 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_transaction);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_100114C44()
{
  sub_100114848();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianRecoverySession()
{
  result = qword_1003DE1A8;
  if (!qword_1003DE1A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100114CF0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for CustodianRecoveryData();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

Swift::Int sub_100114E90()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = ObjectIdentifier.hashValue.getter();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100114EDC()
{
  v1 = *v0;
  v2 = ObjectIdentifier.hashValue.getter();
  Hasher._combine(_:)(v2);
}

Swift::Int sub_100114F0C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = ObjectIdentifier.hashValue.getter();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_100114F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CustodianRecoveryData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100114FB4(uint64_t a1)
{
  v2 = sub_100005814(&qword_1003DE300, &qword_100342838);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10011501C(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int sub_100115064()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_10011518C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001152C4()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1001153DC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001154EC(*a1);
  *a2 = result;
  return result;
}

void sub_10011540C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000006E69;
  v4 = 0x676542656B617073;
  v5 = 0x6E6946656B617073;
  v6 = 0xED00006574656C70;
  v7 = 0x6D6F43656B617073;
  if (v2 != 4)
  {
    v7 = 0x727245656B617073;
    v6 = 0xEA0000000000726FLL;
  }

  if (v2 == 3)
  {
    v6 = 0xEA00000000006C61;
  }

  else
  {
    v5 = v7;
  }

  v8 = 0x800000010032C1A0;
  v9 = 0xD000000000000015;
  if (v2 != 1)
  {
    v9 = 0xD000000000000011;
    v8 = 0x800000010032C1C0;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v6;
  }

  *a1 = v10;
  a1[1] = v11;
}

unint64_t sub_1001154EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1003A3808, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_10011554C()
{
  result = qword_1003DE308;
  if (!qword_1003DE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003DE308);
  }

  return result;
}

uint64_t sub_1001155A0()
{
  v0 = type metadata accessor for CustodianSessionManager();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_1001171C4();
  qword_1003FA820 = v3;
  return result;
}

uint64_t sub_1001155E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v97 = a5;
  v98 = a3;
  v99 = a4;
  v8 = type metadata accessor for DispatchTime();
  v103 = *(v8 - 8);
  v9 = *(v103 + 64);
  v10 = __chkstk_darwin(v8);
  v100 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v102 = &v89 - v12;
  v95 = type metadata accessor for DispatchWorkItemFlags();
  v13 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v96 = &v89 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for UUID();
  v108 = *(v101 - 8);
  v15 = *(v108 + 64);
  v16 = __chkstk_darwin(v101);
  v107 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = v17;
  __chkstk_darwin(v16);
  v19 = &v89 - v18;
  v20 = type metadata accessor for CustodianRecoveryData();
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v89 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v89 - v25;
  v106 = v5;
  v92 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock;
  os_unfair_lock_lock(*(v5 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock));
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100008D04(v27, qword_1003FAA88);
  sub_100110BB8(a2, v26);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.debug.getter();
  v30 = os_log_type_enabled(v28, v29);
  v104 = v8;
  v94 = v19;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v105 = a2;
    v33 = a1;
    v34 = v32;
    aBlock[0] = v32;
    *v31 = 136315138;
    v35 = sub_10011038C();
    v37 = v36;
    sub_100110B5C(v26);
    v38 = sub_10021145C(v35, v37, aBlock);

    *(v31 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v28, v29, "Generating recovery session with data: %s", v31, 0xCu);
    sub_10000839C(v34);
    a1 = v33;
    a2 = v105;
  }

  else
  {

    sub_100110B5C(v26);
  }

  sub_100110BB8(a2, v24);
  v39 = type metadata accessor for CustodianRecoverySession();
  v40 = *(v39 + 48);
  v41 = *(v39 + 52);
  swift_allocObject();
  v42 = sub_100114618(v24);
  v43 = *(v42 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_lock);
  os_unfair_lock_lock(v43);
  sub_100114764(v42);
  os_unfair_lock_unlock(v43);
  v44 = v106;
  swift_beginAccess();

  sub_1002FACD8(&v110, v42);
  swift_endAccess();

  if (a1)
  {
    v45 = a1;
    if ([v45 maxSessionTime] < 1 || objc_msgSend(v45, "maxSessionTime") > 7199)
    {
      v46 = 900;
    }

    else
    {
      v46 = [v45 maxSessionTime];
    }

    v105 = v46;
  }

  else
  {
    v105 = 900;
  }

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v91 = swift_slowAlloc();
    aBlock[0] = v91;
    *v49 = 136315394;
    v50 = v108;
    v51 = *(v108 + 16);
    v52 = v94;
    v90 = v48;
    v53 = v101;
    v51(v94, v42 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v101);
    sub_100117F5C(&qword_1003D9150, &type metadata accessor for UUID);
    v54 = dispatch thunk of CustomStringConvertible.description.getter();
    v89 = v47;
    v55 = v54;
    v57 = v56;
    v58 = v53;
    v59 = v53;
    v60 = v51;
    (*(v50 + 8))(v52, v59);
    v61 = sub_10021145C(v55, v57, aBlock);

    *(v49 + 4) = v61;
    *(v49 + 12) = 2048;
    *(v49 + 14) = v105;
    v62 = v89;
    _os_log_impl(&_mh_execute_header, v89, v90, "Starting countdown for session with Id: %s of %ld seconds", v49, 0x16u);
    sub_10000839C(v91);

    v44 = v106;

    v63 = v107;
  }

  else
  {

    v63 = v107;
    v50 = v108;
    v60 = *(v108 + 16);
    v58 = v101;
    v52 = v94;
  }

  v64 = v58;
  v60(v63, v42 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_sessionID, v58);
  v65 = swift_allocObject();
  swift_weakInit();
  v60(v52, v63, v64);
  v66 = (*(v50 + 80) + 24) & ~*(v50 + 80);
  v67 = (v93 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  *(v68 + 16) = v65;
  (*(v50 + 32))(v68 + v66, v52, v64);
  v69 = v97;
  *(v68 + v67) = v97;
  aBlock[4] = sub_100117EB4;
  aBlock[5] = v68;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100031EF0;
  aBlock[3] = &unk_1003AA0A0;
  _Block_copy(aBlock);
  v110 = _swiftEmptyArrayStorage;
  sub_100117F5C(&qword_1003D9120, &type metadata accessor for DispatchWorkItemFlags);

  v70 = v69;
  sub_100005814(&unk_1003DABE0, &unk_10033EC20);
  sub_1000834A8(&qword_1003D9130, &unk_1003DABE0, &unk_10033EC20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v71 = type metadata accessor for DispatchWorkItem();
  v72 = *(v71 + 48);
  v73 = *(v71 + 52);
  swift_allocObject();
  v74 = DispatchWorkItem.init(flags:block:)();

  v75 = OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_terminateTask;
  v76 = *(v42 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_terminateTask);
  *(v42 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_terminateTask) = v74;

  v77 = (v42 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion);
  v78 = *(v42 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion);
  v79 = *(v42 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion + 8);
  v80 = v98;
  v81 = v99;
  *v77 = v98;
  v77[1] = v81;
  sub_100083AA0(v80);
  sub_100083B0C(v78);
  v82 = *(v44 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_managerQueue);
  v83 = v100;
  static DispatchTime.now()();
  v84 = v102;
  + infix(_:_:)();
  v85 = v104;
  v86 = *(v103 + 8);
  result = v86(v83, v104);
  if (*(v42 + v75))
  {
    v88 = *(v42 + v75);

    OS_dispatch_queue.asyncAfter(deadline:execute:)();

    v86(v84, v85);
    os_unfair_lock_unlock(*(v44 + v92));
    (*(v108 + 8))(v107, v64);
    return v42;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100115F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100116210(a2, a3, 1);
  }

  return result;
}

uint64_t sub_100116014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_100005814(&qword_1003DE4C8, qword_100342EA8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v18 - v11;
  v13 = [objc_allocWithZone(AACustodianRecoveryConfiguration) init];
  (*(v9 + 16))(v12, v4 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager__constants, v8);
  Dependency.wrappedValue.getter();
  (*(v9 + 8))(v12, v8);
  [v13 setMaxSessionTime:v19];
  type metadata accessor for AACustodianRecoveryError(0);
  v18 = -9002;
  v14 = v13;
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100117F5C(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v15 = v19;
  v16 = sub_1001155E0(v13, a1, a2, a3, v19);

  return v16;
}

void sub_100116210(uint64_t a1, uint64_t a2, int a3)
{
  v4 = v3;
  LODWORD(v5) = a3;
  v45 = a2;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock;
  os_unfair_lock_lock(*(v4 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock));
  v16 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_activeSessions;
  swift_beginAccess();
  v46 = v16;
  v17 = *(v4 + v16);
  v48 = a1;

  v18 = sub_10021418C(sub_100117D60, v47, v17);

  os_unfair_lock_unlock(*(v4 + v15));
  if (v18)
  {
    v44 = v15;
    os_unfair_lock_lock(*(v4 + v15));
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA88);
    (*(v8 + 16))(v14, a1, v7);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v43 = v5;
      v23 = v22;
      v42 = swift_slowAlloc();
      v49[0] = v42;
      *v23 = 136315138;
      sub_100117F5C(&qword_1003D9150, &type metadata accessor for UUID);
      v24 = dispatch thunk of CustomStringConvertible.description.getter();
      v5 = v25;
      (*(v8 + 8))(v14, v7);
      v26 = sub_10021145C(v24, v5, v49);

      *(v23 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v20, v21, "Terminating session with ID: %s", v23, 0xCu);
      sub_10000839C(v42);

      LOBYTE(v5) = v43;
    }

    else
    {

      (*(v8 + 8))(v14, v7);
    }

    v36 = *(v18 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_lock);
    os_unfair_lock_lock(v36);
    v37 = v44;
    if (*(v18 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_transaction))
    {
      *(v18 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_transaction) = 0;
      swift_unknownObjectRelease();
      os_unfair_lock_unlock(v36);
      if (*(v18 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_terminateTask))
      {
        v38 = *(v18 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_terminateTask);

        dispatch thunk of DispatchWorkItem.cancel()();
      }

      v39 = *(v18 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion);
      if (v39)
      {
        v40 = *(v18 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_validationCompletion + 8);

        v39(v45, v5 & 1);
        sub_100083B0C(v39);
      }

      swift_beginAccess();
      sub_100117900(v18);
      swift_endAccess();

      os_unfair_lock_unlock(*(v4 + v37));
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v27 = type metadata accessor for Logger();
    sub_100008D04(v27, qword_1003FAA88);
    (*(v8 + 16))(v12, a1, v7);
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49[0] = v31;
      *v30 = 136315138;
      sub_100117F5C(&qword_1003D9150, &type metadata accessor for UUID);
      v32 = dispatch thunk of CustomStringConvertible.description.getter();
      v34 = v33;
      (*(v8 + 8))(v12, v7);
      v35 = sub_10021145C(v32, v34, v49);

      *(v30 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v28, v29, "Asked to terminate a session that was already terminated or not found: %s", v30, 0xCu);
      sub_10000839C(v31);
    }

    else
    {

      (*(v8 + 8))(v12, v7);
    }
  }
}

uint64_t sub_100116820(uint64_t a1, uint64_t a2)
{
  v25 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock;
  os_unfair_lock_lock(*(v2 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock));
  v4 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_activeSessions;
  swift_beginAccess();
  v26 = v2;
  v5 = *(v2 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CustodianRecoverySession();
    sub_100117F5C(&qword_1003DE4B8, type metadata accessor for CustodianRecoverySession);
    result = Set.Iterator.init(_cocoa:)();
    v8 = v29;
    v7 = v30;
    v9 = v31;
    v10 = v32;
    v11 = v33;
  }

  else
  {
    v12 = -1 << *(v5 + 32);
    v7 = v5 + 56;
    v13 = ~v12;
    v14 = -v12;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v11 = v15 & *(v5 + 56);
    v8 = v5;
    result = swift_bridgeObjectRetain_n();
    v9 = v13;
    v10 = 0;
  }

  v16 = (v9 + 64) >> 6;
  while (v8 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
LABEL_25:
      v21 = 0;
LABEL_26:
      sub_10005A1DC();

      os_unfair_lock_unlock(*(v26 + v25));
      return v21;
    }

    type metadata accessor for CustodianRecoverySession();
    swift_dynamicCast();
    v21 = v28;
    v19 = v10;
    v20 = v11;
    if (!v28)
    {
      goto LABEL_26;
    }

LABEL_18:
    v22 = v21 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData;
    swift_beginAccess();
    v23 = *(v22 + 24);
    if (v23)
    {
      v24 = *(v22 + 16) == a1 && v23 == a2;
      if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_26;
      }
    }

    v10 = v19;
    v11 = v20;
  }

  v17 = v10;
  v18 = v11;
  v19 = v10;
  if (v11)
  {
LABEL_14:
    v20 = (v18 - 1) & v18;
    v21 = *(*(v8 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

    if (!v21)
    {
      goto LABEL_26;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v19 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v19 >= v16)
    {
      goto LABEL_25;
    }

    v18 = *(v7 + 8 * v19);
    ++v17;
    if (v18)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *sub_100116ADC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock;
  os_unfair_lock_lock(*(v2 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock));
  if (qword_1003D7F38 != -1)
  {
LABEL_40:
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100008D04(v5, qword_1003FAA88);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v35 = v4;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    v9 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_activeSessions;
    swift_beginAccess();
    v10 = *(v3 + v9);
    if ((v10 & 0xC000000000000001) != 0)
    {
      if (v10 < 0)
      {
        v11 = *(v3 + v9);
      }

      v12 = *(v3 + v9);

      v13 = __CocoaSet.count.getter();
    }

    else
    {
      v13 = *(v10 + 16);
    }

    *(v8 + 4) = v13;

    _os_log_impl(&_mh_execute_header, v6, v7, "Active sessions count %ld", v8, 0xCu);
  }

  else
  {
  }

  v14 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_activeSessions;
  swift_beginAccess();
  v36 = v3;
  v15 = *(v3 + v14);
  if ((v15 & 0xC000000000000001) != 0)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for CustodianRecoverySession();
    sub_100117F5C(&qword_1003DE4B8, type metadata accessor for CustodianRecoverySession);
    Set.Iterator.init(_cocoa:)();
    v15 = v40;
    v16 = v41;
    v4 = v42;
    v3 = v43;
    v17 = v44;
  }

  else
  {
    v18 = -1 << *(v15 + 32);
    v16 = v15 + 56;
    v4 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = v20 & *(v15 + 56);

    v3 = 0;
  }

  v21 = (v4 + 64) >> 6;
  while ((v15 & 0x8000000000000000) == 0)
  {
    v22 = v3;
    v23 = v17;
    v24 = v3;
    if (!v17)
    {
      while (1)
      {
        v24 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v24 >= v21)
        {
          goto LABEL_35;
        }

        v23 = *(v16 + 8 * v24);
        ++v22;
        if (v23)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_24:
    v4 = (v23 - 1) & v23;
    v25 = *(*(v15 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));

    if (!v25)
    {
      goto LABEL_35;
    }

LABEL_28:
    v26 = (v25 + OBJC_IVAR____TtC13appleaccountd24CustodianRecoverySession_recoveryData);
    swift_beginAccess();
    v27 = v26[1];
    if (v27 && (*v26 == a1 ? (v28 = v27 == a2) : (v28 = 0), v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v29 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v3 = v24;
    v17 = v4;
  }

  if (__CocoaSet.Iterator.next()())
  {
    type metadata accessor for CustodianRecoverySession();
    swift_dynamicCast();
    v25 = v39;
    v24 = v3;
    v4 = v17;
    if (v39)
    {
      goto LABEL_28;
    }
  }

LABEL_35:
  sub_10005A1DC();
  v30 = sub_100256D5C(_swiftEmptyArrayStorage);

  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = v30[2];

    _os_log_impl(&_mh_execute_header, v31, v32, "Filtered sessions count %ld", v33, 0xCu);
  }

  else
  {
  }

  os_unfair_lock_unlock(*(v36 + v35));
  return v30;
}

uint64_t sub_100116FA0()
{
  v1 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager__constants;
  v2 = sub_100005814(&qword_1003DE4C8, qword_100342EA8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_activeSessions);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianSessionManager()
{
  result = qword_1003DE358;
  if (!qword_1003DE358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001170BC()
{
  sub_100117174();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100117174()
{
  if (!qword_1003DE368)
  {
    v0 = type metadata accessor for Dependency();
    if (!v1)
    {
      atomic_store(v0, &qword_1003DE368);
    }
  }
}

uint64_t sub_1001171C4()
{
  v1 = v0;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v2 = *(v16 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v16);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  Dependency.init(dependencyId:config:)();
  *(v0 + OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_activeSessions) = &_swiftEmptySetSingleton;
  v15 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_managerQueue;
  v10 = sub_100071C74();
  v14[1] = "essions";
  v14[2] = v10;
  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  sub_100117F5C(&qword_1003DAB90, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100005814(&unk_1003E6290, &qword_10033F570);
  sub_1000834A8(&qword_1003DABA0, &unk_1003E6290, &qword_10033F570);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v2 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v16);
  *(v0 + v15) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v11 = OBJC_IVAR____TtC13appleaccountd23CustodianSessionManager_unfairLock;
  v12 = swift_slowAlloc();
  *v12 = 0;
  *(v1 + v11) = v12;
  return v1;
}

uint64_t sub_10011747C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for AACustodianRecoveryError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100117F5C(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v8 = sub_1001155E0(a1, a2, a3, a4, v10);

  return v8;
}

uint64_t sub_100117570(void *a1, uint64_t a2)
{
  type metadata accessor for AACustodianRecoveryError(0);
  sub_100212324(_swiftEmptyArrayStorage);
  sub_100117F5C(&unk_1003DA100, type metadata accessor for AACustodianRecoveryError);
  _BridgedStoredNSError.init(_:userInfo:)();
  v4 = sub_1001155E0(a1, a2, 0, 0, v6);

  return v4;
}

Swift::Int sub_100117654(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100005814(&qword_1003DE4C0, &qword_100342EA0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v17 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for CustodianRecoverySession();
      do
      {
        swift_dynamicCast();
        v11 = *(v2 + 16);
        if (*(v2 + 24) <= v11)
        {
          sub_1002FB534(v11 + 1);
        }

        v2 = v17;
        v3 = *(v17 + 40);
        Hasher.init(_seed:)();
        v4 = ObjectIdentifier.hashValue.getter();
        Hasher._combine(_:)(v4);
        result = Hasher._finalize()();
        v6 = v17 + 56;
        v7 = -1 << *(v17 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v17 + 56 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v12 = 0;
          v13 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v13 && (v12 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v14 = v9 == v13;
            if (v9 == v13)
            {
              v9 = 0;
            }

            v12 |= v14;
            v15 = *(v6 + 8 * v9);
          }

          while (v15 == -1);
          v10 = __clz(__rbit64(~v15)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v17 + 48) + 8 * v10) = v16;
        ++*(v17 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

unint64_t sub_100117858(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = ObjectIdentifier.hashValue.getter();
  Hasher._combine(_:)(v5);
  Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_100117900(uint64_t a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = *v1;

    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_100117A74(v4, a1);

      return v7;
    }

    return 0;
  }

  v9 = *(v3 + 40);
  Hasher.init(_seed:)();
  v10 = ObjectIdentifier.hashValue.getter();
  Hasher._combine(_:)(v10);
  v11 = Hasher._finalize()();
  v12 = -1 << *(v3 + 32);
  v13 = v11 & ~v12;
  if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    return 0;
  }

  v14 = ~v12;
  while (*(*(v3 + 48) + 8 * v13) != a1)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v3 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v1;
  v19 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1002FC538();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v13);
  sub_100117BA4(v13);
  result = v18;
  *v1 = v19;
  return result;
}

unint64_t sub_100117A74(uint64_t a1, uint64_t a2)
{
  v4 = *v2;

  v5 = __CocoaSet.count.getter();
  v6 = swift_unknownObjectRetain();
  v7 = sub_100117654(v6, v5);
  v16 = v7;
  v8 = *(v7 + 40);
  Hasher.init(_seed:)();

  v9 = ObjectIdentifier.hashValue.getter();
  Hasher._combine(_:)(v9);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    while (*(*(v7 + 48) + 8 * v12) != a2)
    {
      v12 = (v12 + 1) & v13;
      if (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v7 + 48) + 8 * v12);
  result = sub_100117BA4(v12);
  if (v14 == a2)
  {
    *v2 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100117BA4(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        Hasher.init(_seed:)();

        v13 = ObjectIdentifier.hashValue.getter();
        Hasher._combine(_:)(v13);
        v14 = Hasher._finalize()();

        v15 = v14 & v7;
        if (v2 >= v10)
        {
          if (v15 < v10)
          {
            goto LABEL_5;
          }
        }

        else if (v15 >= v10)
        {
          goto LABEL_11;
        }

        if (v2 >= v15)
        {
LABEL_11:
          v16 = *(v3 + 48);
          v17 = (v16 + 8 * v2);
          v18 = (v16 + 8 * v6);
          if (v2 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v2 = v6;
          }
        }

LABEL_5:
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

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_100117D60(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return static UUID.== infix(_:_:)() & 1;
}

uint64_t sub_100117DA4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24);
}

uint64_t sub_100117DDC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);

  (*(v2 + 8))(v0 + v3, v1);

  return _swift_deallocObject(v0, v4 + 8);
}

uint64_t sub_100117EB4()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_100115F9C(v3, v0 + v2, v4);
}

uint64_t sub_100117F44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100117F5C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_100117FA4(void *a1@<X8>)
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Initializing verifier", v4, 2u);
  }

  v17 = 0;
  v5 = objc_allocWithZone(SPAKE2Verifier);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 initWithSalt:isa code:v7 error:&v17];

  v9 = v17;
  if (v17)
  {
    v10 = v17;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v9;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "SPAKE verifier creation failed with error: %@", v13, 0xCu);
      sub_100083380(v14);
    }

    swift_willThrow();
  }

  else
  {
    a1[3] = sub_100016034(0, &qword_1003DE588, SPAKE2Verifier_ptr);
    a1[4] = &off_1003AA0C8;
    a1[5] = &off_1003AA108;
    *a1 = v8;
  }
}

void sub_100118250(void *a1@<X8>)
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100008D04(v1, qword_1003FAA88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Initializing prover", v4, 2u);
  }

  v17 = 0;
  v5 = objc_allocWithZone(SPAKE2Prover);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v7 = String._bridgeToObjectiveC()();
  v8 = [v5 initWithSalt:isa code:v7 error:&v17];

  v9 = v17;
  if (v17)
  {
    v10 = v17;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      *(v13 + 4) = v10;
      *v14 = v9;
      v15 = v10;
      _os_log_impl(&_mh_execute_header, v11, v12, "SPAKE prover creation failed with error: %@", v13, 0xCu);
      sub_100083380(v14);
    }

    swift_willThrow();
  }

  else
  {
    a1[3] = sub_100016034(0, &qword_1003DE580, SPAKE2Prover_ptr);
    a1[4] = &off_1003AA120;
    *a1 = v8;
  }
}

void *sub_100118574(SEL *a1)
{
  v6 = 0;
  v2 = [v1 *a1];
  v3 = v6;
  if (v2)
  {
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = v3;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

id sub_100118664(uint64_t a1, uint64_t a2, SEL *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v8 = 0;
  LODWORD(a3) = [v3 *a3];

  if (a3)
  {
    return v8;
  }

  v7 = v8;
  _convertNSErrorToError(_:)();

  return swift_willThrow();
}

void *sub_1001187C0(uint64_t a1, uint64_t a2, SEL *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v10 = 0;
  v6 = [v3 *a3];

  v7 = v10;
  if (v6)
  {
    v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v8 = v7;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v8;
}

uint64_t sub_100118898()
{
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100008D04(v0, qword_1003FAA88);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Generating code", v3, 2u);
  }

  v15 = 0;
  v4 = [objc_opt_self() generateCodeWithError:&v15];
  v5 = v15;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v5;

  if (v7)
  {

    v8 = v7;
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      *(v11 + 4) = v8;
      *v12 = v5;
      v13 = v8;
      _os_log_impl(&_mh_execute_header, v9, v10, "SPAKE verifier code creation failed with error: %@", v11, 0xCu);
      sub_100083380(v12);
    }

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_100118B70(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = a1;
  v5[4] = a2;

  sub_1002DBEF4(sub_1001190D0, v5);
}

uint64_t sub_100118BFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = sub_100005814(&qword_1003D9110, &qword_10033EC10);
  v8 = *(v30 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v30);
  v11 = &v28 - v10;
  v12 = type metadata accessor for URL();
  v28 = *(v12 - 8);
  v29 = v12;
  v13 = *(v28 + 64);
  v14 = __chkstk_darwin(v12);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v28 - v17;
  v19 = sub_1000080F8((v4 + OBJC_IVAR____TtC13appleaccountd22CustodianFamilyManager_custodianStorage), *(v4 + OBJC_IVAR____TtC13appleaccountd22CustodianFamilyManager_custodianStorage + 24));
  v20 = swift_allocObject();
  v20[2] = v4;
  v20[3] = a1;
  v20[4] = a2;
  v20[5] = a3;
  v21 = sub_1000080F8((*v19 + 16), *(*v19 + 40));
  type metadata accessor for LocalCache();

  sub_100307F40();
  URL.appendingPathComponent(_:isDirectory:)();
  v22 = *(v28 + 8);
  v23 = v16;
  v24 = v29;
  v22(v23, v29);
  v25 = v30;
  (*(v8 + 16))(v11, *v21 + OBJC_IVAR____TtC13appleaccountd17StorageController__localStorage, v30);
  Dependency.wrappedValue.getter();
  (*(v8 + 8))(v11, v25);
  v26 = *sub_1000080F8(v31, v31[3]);
  sub_1000324D8(v18, sub_100119384, v20);

  v22(v18, v24);
  return sub_10000839C(v31);
}

uint64_t sub_100118EEC()
{
  sub_10000839C(v0 + 2);
  v1 = OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__analyticsReporter;
  v2 = sub_100005814(&unk_1003D8B50, &unk_10033F600);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13appleaccountd19DaemonFamilyManager__accountStore;
  v4 = sub_100005814(&unk_1003D97F0, &unk_10033EFA0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_10000839C((v0 + OBJC_IVAR____TtC13appleaccountd22CustodianFamilyManager_custodianStorage));
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CustodianFamilyManager()
{
  result = qword_1003DE5C0;
  if (!qword_1003DE5C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100119090()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40);
}

uint64_t sub_1001190D0(uint64_t a1, char a2)
{
  v4 = v2[3];
  v3 = v2[4];
  if (a2)
  {
    v5 = v2[4];
    return v4(a1, 1);
  }

  else
  {
    v7 = v2[2];
    return sub_100118BFC(a1, v4, v3);
  }
}

uint64_t sub_100119114(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), unint64_t a6)
{
  v11 = type metadata accessor for CustodianRecord();
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v18 = v29 - v17;
  if (a2)
  {
    return a5(a1, 1);
  }

  v29[0] = a4;
  v29[1] = a6;
  v30 = a5;
  v20 = *(a1 + 16);
  if (v20)
  {
    v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v22 = *(v16 + 72);
    v23 = a1 + v21;
    v24 = _swiftEmptyArrayStorage;
    do
    {
      sub_100012050(v23, v18);
      if ((*&v18[*(v11 + 36)] - 1) > 2)
      {
        sub_1000120B4(v18);
      }

      else
      {
        sub_100012378(v18, v15);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1002E0288(0, v24[2] + 1, 1);
          v24 = v31;
        }

        v27 = v24[2];
        v26 = v24[3];
        if (v27 >= v26 >> 1)
        {
          sub_1002E0288(v26 > 1, v27 + 1, 1);
          v24 = v31;
        }

        v24[2] = v27 + 1;
        sub_100012378(v15, v24 + v21 + v27 * v22);
      }

      v23 += v22;
      --v20;
    }

    while (v20);
  }

  else
  {
    v24 = _swiftEmptyArrayStorage;
  }

  v28 = sub_100119394(v29[0], v24);

  v30(v28, 0);
}

uint64_t sub_10011933C()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return _swift_deallocObject(v0, 48);
}

void *sub_100119394(unint64_t a1, uint64_t a2)
{
  v35 = a2;
  v34 = type metadata accessor for CustodianRecord();
  v3 = *(v34 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v34);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = a1 & 0xC000000000000001;
    v28 = a1 + 32;
    v29 = i;
    v30 = a1;
    while (1)
    {
LABEL_6:
      if (v32)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v31 + 16))
        {
          goto LABEL_26;
        }

        v9 = *(v28 + 8 * v8);
      }

      v10 = v9;
      v11 = __OFADD__(v8, 1);
      v12 = v8 + 1;
      if (v11)
      {
        break;
      }

      v33 = v12;
      v13 = 0;
      v14 = *(v35 + 16);
      while (v14 != v13)
      {
        sub_100012050(v35 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v13, v6);
        v15 = &v6[*(v34 + 24)];
        v16 = *v15;
        v17 = *(v15 + 1);
        v18 = [v10 handle];
        v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v21 = v20;

        if (v16 == v19 && v17 == v21)
        {

          sub_1000120B4(v6);
LABEL_5:

          a1 = v30;
          v8 = v33;
          if (v33 != v29)
          {
            goto LABEL_6;
          }

          return v36;
        }

        ++v13;
        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        sub_1000120B4(v6);
        if (v23)
        {
          goto LABEL_5;
        }
      }

      v24 = [v10 isChild];
      v8 = v33;
      if (v24)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v25 = v36[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      a1 = v30;
      if (v8 == v29)
      {
        return v36;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return _swiftEmptyArrayStorage;
}

void sub_100119640(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Setting up custodian with idMS", v11, 2u);
  }

  v12 = *v4;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v15[4] = sub_10011BA9C;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_100015858;
  v15[3] = &unk_1003AA338;
  v14 = _Block_copy(v15);

  [v12 initiateCustodianSetupWithContext:a1 completion:v14];
  _Block_release(v14);
}

void sub_100119EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Finalizing custodianship with idMS", v11, 2u);
  }

  v12 = *v4;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v15[4] = sub_10011BA54;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10020E828;
  v15[3] = &unk_1003AA298;
  v14 = _Block_copy(v15);

  [v12 finalizeCustodianSetupWithContext:a1 completion:v14];
  _Block_release(v14);
}

void sub_10011A0A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Revoking custodianship with idMS", v11, 2u);
  }

  v12 = *v4;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v15[4] = sub_10011BAA4;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10020E828;
  v15[3] = &unk_1003AA388;
  v14 = _Block_copy(v15);

  [v12 revokeCustodianWithContext:a1 completion:v14];
  _Block_release(v14);
}

void sub_10011A258(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1003D7F38 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100008D04(v8, qword_1003FAA88);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Updating recovery key with idMS", v11, 2u);
  }

  v12 = *v4;
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  v15[4] = sub_10011BA78;
  v15[5] = v13;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = sub_10020E828;
  v15[3] = &unk_1003AA2E8;
  v14 = _Block_copy(v15);

  [v12 updateCustodianRecoveryKeyWithContext:a1 completion:v14];
  _Block_release(v14);
}

uint64_t sub_10011A43C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a2)
  {
    v6 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v6 = 0;
  }

  v7 = a3;
  v5(v6, a3);
}

void sub_10011A4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  sub_100012004();
  v14 = kAAAnalyticsEventCustodianFetchRecoveryConfiguration;

  v15 = v14;

  v16 = sub_100245D38(v15, a3, a4, a1, a2);
  v17 = *v7;
  LODWORD(a4) = *(type metadata accessor for CustodianIDMSRequestManager() + 20);
  sub_100005814(&unk_1003D8B50, &unk_10033F600);
  Dependency.wrappedValue.getter();
  v18 = v22[0];
  v19 = swift_allocObject();
  v19[2] = v16;
  v19[3] = v18;
  v19[4] = a5;
  v19[5] = a6;
  v22[4] = sub_10011BA48;
  v22[5] = v19;
  v22[0] = _NSConcreteStackBlock;
  v22[1] = 1107296256;
  v22[2] = sub_10011A43C;
  v22[3] = &unk_1003AA248;
  v20 = _Block_copy(v22);
  v21 = v16;

  [v17 fetchCustodianRecoveryCodeConfigurationWithCompletion:v20];
  _Block_release(v20);
}

void sub_10011A688(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(void, void))
{
  if (a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100008D04(v8, qword_1003FAA88);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = a5;
      v13 = swift_slowAlloc();
      v32 = v13;
      *v11 = 136315138;
      v14 = Dictionary.description.getter();
      v16 = sub_10021145C(v14, v15, &v32);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Call to IdMS to fetch recovery configuration completed with result: %s", v11, 0xCu);
      sub_10000839C(v13);
      a5 = v12;
    }

    if (a3)
    {
      [a3 updateTaskResultWithError:0];
    }

    swift_getObjectType();
    sub_100246FA8(a3);
    a5(a1, 0);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    sub_100008D04(v18, qword_1003FAA88);
    swift_errorRetain();
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      v23 = _convertErrorToNSError(_:)();
      *(v21 + 4) = v23;
      *v22 = v23;
      _os_log_impl(&_mh_execute_header, v19, v20, "Call to IdMS to fetch recovery configuration failed with error: %@", v21, 0xCu);
      sub_100083380(v22);
    }

    if (a3)
    {
      v24 = _convertErrorToNSError(_:)();
      [a3 updateTaskResultWithError:v24];
    }

    swift_getObjectType();
    sub_100246FA8(a3);
    swift_errorRetain();
    a5(a2, 1);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_100008D04(v25, qword_1003FAA88);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "No Response was obtained from startCustodianRecoveryRequest", v28, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    if (a3)
    {
      v29 = v32;
      v30 = _convertErrorToNSError(_:)();

      [a3 updateTaskResultWithError:v30];
    }

    swift_getObjectType();
    sub_100246FA8(a3);
    v31 = v32;
    a5(v32, 1);
  }
}

void sub_10011AB94(char a1, uint64_t a2, void (*a3)())
{
  if (a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100008D04(v4, qword_1003FAA88);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Call to IdMS for recovery transaction completed with success!", v7, 2u);
    }

    (a3)(0);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100008D04(v9, qword_1003FAA88);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      v14 = _convertErrorToNSError(_:)();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v10, v11, "Call to IdMS for recovery transaction completed with error: %@", v12, 0xCu);
      sub_100083380(v13);
    }

    swift_errorRetain();
    (a3)(a2);
  }

  else
  {
    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    a3();
  }
}

void sub_10011AE60(uint64_t a1, unint64_t a2, uint64_t a3, void (*a4)(uint64_t, unint64_t, uint64_t))
{
  if (a2)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA88);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v23 = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_10021145C(a1, a2, &v23);
      _os_log_impl(&_mh_execute_header, v8, v9, "Spake flow verified successfully! obtained new token: %s", v10, 0xCu);
      sub_10000839C(v11);
    }

    a4(a1, a2, 0);
  }

  else if (a3)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100008D04(v13, qword_1003FAA88);
    swift_errorRetain();
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      v18 = _convertErrorToNSError(_:)();
      *(v16 + 4) = v18;
      *v17 = v18;
      _os_log_impl(&_mh_execute_header, v14, v15, "Call to IdMS to verify Spake and fetch new token failed with error: %@", v16, 0xCu);
      sub_100083380(v17);
    }

    swift_errorRetain();
    a4(a3, 0, 1);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_100008D04(v19, qword_1003FAA88);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "No Response was obtained from verifyRecoveryTransaction", v22, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    a4(v23, 0, 1);
  }
}

void sub_10011B288(void *a1, void *a2, void (*a3)(id, uint64_t), uint64_t a4, uint64_t (*a5)(void), const char *a6, const char *a7, const char *a8)
{
  if (a1)
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100008D04(v12, qword_1003FAA88);

    v13 = Logger.logObject.getter();
    v14 = a5();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33 = v16;
      *v15 = 136315138;
      v17 = Dictionary.description.getter();
      v19 = sub_10021145C(v17, v18, &v33);

      *(v15 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v13, v14, a6, v15, 0xCu);
      sub_10000839C(v16);
    }

    a3(a1, 0);
  }

  else if (a2)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_100008D04(v22, qword_1003FAA88);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412290;
      v27 = _convertErrorToNSError(_:)();
      *(v25 + 4) = v27;
      *v26 = v27;
      _os_log_impl(&_mh_execute_header, v23, v24, a7, v25, 0xCu);
      sub_100083380(v26);
    }

    swift_errorRetain();
    a3(a2, 1);
  }

  else
  {
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100008D04(v29, qword_1003FAA88);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, a8, v32, 2u);
    }

    type metadata accessor for AACustodianError(0);
    sub_100212324(_swiftEmptyArrayStorage);
    sub_10003A9C0();
    _BridgedStoredNSError.init(_:userInfo:)();
    a3(v33, 1);
  }
}

void sub_10011B6B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *v5;
  if (a3)
  {
    v10 = String._bridgeToObjectiveC()();
  }

  else
  {
    v10 = 0;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  v13[4] = sub_10011B978;
  v13[5] = v11;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 1107296256;
  v13[2] = sub_10020E828;
  v13[3] = &unk_1003AA1F8;
  v12 = _Block_copy(v13);

  [v9 sendEmbargoEndNotificationFeedbackWithContext:a1 urlKey:v10 completion:v12];
  _Block_release(v12);
}

uint64_t sub_10011B7C8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t a3, const char *a4)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1003D7F38 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100008D04(v7, qword_1003FAA88);
    swift_errorRetain();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = _convertErrorToNSError(_:)();
      *(v10 + 4) = v12;
      *v11 = v12;
      _os_log_impl(&_mh_execute_header, v8, v9, a4, v10, 0xCu);
      sub_100083380(v11);
    }

    else
    {
    }
  }

  return a2(a1);
}

uint64_t sub_10011B940()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32);
}

uint64_t sub_10011B99C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for CustodianIDMSRequestManager()
{
  result = qword_1003DE748;
  if (!qword_1003DE748)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10011BA00()
{
  v1 = *(v0 + 24);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48);
}

uint64_t sub_10011BAC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10011BB10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}