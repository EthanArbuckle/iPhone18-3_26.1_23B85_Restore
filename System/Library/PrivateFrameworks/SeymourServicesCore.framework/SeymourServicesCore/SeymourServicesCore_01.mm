uint64_t sub_265BC6A40(uint64_t *a1, uint64_t a2, void **a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  result = sub_265BC3EF4(*a3, a3[1]);
  if (!v3)
  {
    v9 = a3 + *(type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0) + 40);
    v10 = *(v9 + 1);
    return (*v9)(v5, v6, v7, 0);
  }

  return result;
}

uint64_t sub_265BC6ABC(void *a1, void *a2, uint64_t a3, void *a4)
{
  v57 = a4;
  v60 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  v7 = *(*(v60 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v60);
  v10 = (&v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = (&v53 - v11);
  v13 = sub_265BF3240();
  v59 = *(v13 - 8);
  v14 = *(v59 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  v61 = a3;
  sub_265BD2384(a3, v12, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  v17 = a2;
  v18 = a1;
  v19 = sub_265BF3230();
  v20 = sub_265BF34D0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v58 = v13;
    v22 = v21;
    v23 = swift_slowAlloc();
    v54 = v23;
    v55 = swift_slowAlloc();
    v64[0] = v55;
    *v22 = 138543874;
    *(v22 + 4) = v17;
    *v23 = v17;
    *(v22 + 12) = 2082;
    LODWORD(v53) = v20;
    v24 = a1;
    v25 = *v12;
    v26 = v12[1];
    v27 = v17;

    sub_265BD23EC(v12, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    v28 = sub_265BB064C(v25, v26, v64);
    a1 = v24;

    *(v22 + 14) = v28;
    *(v22 + 22) = 2082;
    swift_getErrorValue();
    v29 = MEMORY[0x26676D550](v62, v63);
    v31 = sub_265BB064C(v29, v30, v64);

    *(v22 + 24) = v31;
    _os_log_impl(&dword_265BAD000, v19, v53, "Error in establishing a connection to %{public}@ for (%{public}s): %{public}s", v22, 0x20u);
    v32 = v54;
    sub_265BD2214(v54);
    MEMORY[0x26676DCA0](v32, -1, -1);
    v33 = v55;
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v33, -1, -1);
    MEMORY[0x26676DCA0](v22, -1, -1);

    (*(v59 + 8))(v16, v58);
  }

  else
  {

    sub_265BD23EC(v12, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    (*(v59 + 8))(v16, v13);
  }

  v56 = a1;
  v58 = v57[5];
  v59 = v57[6];
  v57 = __swift_project_boxed_opaque_existential_1(v57 + 2, v58);
  sub_265BD2384(v61, v10, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  sub_265BF3450();
  v34 = v60;
  v36 = v35 - *(v10 + *(v60 + 36));
  swift_getErrorValue();
  v55 = sub_265BF3750();
  v54 = v37;
  swift_getErrorValue();
  v38 = sub_265BF3760();
  v40 = v39;
  v41 = v10[1];
  v53 = *v10;
  v42 = v34[5];

  v43 = sub_265BF2CB0();
  LOBYTE(v64[0]) = v44 & 1;
  v45 = *(v10 + v34[7]);
  v46 = *(v10 + v34[6]);
  sub_265BD23EC(v10, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  v47 = v64[0];
  v64[3] = &type metadata for ConnectionBrokeringFailedAnalyticsEvent;
  v64[4] = sub_265BD1FD0();
  v48 = swift_allocObject();
  v64[0] = v48;
  *(v48 + 16) = v36;
  v49 = v54;
  *(v48 + 24) = v55;
  *(v48 + 32) = v49;
  *(v48 + 40) = v38;
  *(v48 + 48) = v40;
  *(v48 + 56) = v53;
  *(v48 + 64) = v41;
  *(v48 + 72) = v43;
  *(v48 + 80) = v47;
  *(v48 + 81) = v45;
  *(v48 + 82) = v46;
  sub_265BF3010();
  __swift_destroy_boxed_opaque_existential_0Tm(v64);
  v50 = v61 + v34[10];
  v51 = *(v50 + 8);
  return (*v50)(v56, 0, 0, 1);
}

uint64_t sub_265BC7010(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *(a2 + 48);
  v17 = *(a2 + 32);
  v8 = v17;
  v18 = v9;
  v19 = *(a2 + 64);
  v10 = v19;
  v20 = *(a2 + 80);
  v12 = *(a2 + 16);
  v16[0] = *a2;
  v11 = v16[0];
  v16[1] = v12;
  *(v7 + 10) = v20;
  *(v7 + 2) = v8;
  *(v7 + 3) = v9;
  *(v7 + 4) = v10;
  *v7 = v11;
  *(v7 + 1) = v12;
  swift_storeEnumTagMultiPayload();
  v13 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  sub_265BD1ED4(v16, v15);
  sub_265BD2718(v7, a1 + v13);
  return swift_endAccess();
}

uint64_t sub_265BC7110(void *a1)
{
  v138 = sub_265BF2D20();
  v142 = *(v138 - 8);
  v2 = *(v142 + 64);
  MEMORY[0x28223BE20](v138);
  v141 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  v139 = v4;
  v140 = v5;
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v131 = (&v127 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = MEMORY[0x28223BE20](v7);
  v135 = &v127 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v132 = (&v127 - v12);
  MEMORY[0x28223BE20](v11);
  v130 = &v127 - v13;
  v14 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v136 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v127 - v18;
  v20 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v127 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v27 = (&v127 - v26);
  MEMORY[0x28223BE20](v25);
  v29 = &v127 - v28;
  v30 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  v137 = a1;
  v133 = v30;
  sub_265BD2384(a1 + v30, v19, type metadata accessor for RemoteParticipantConnectionBroker.State);
  v134 = v14;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v38 = v132;
    v39 = v24;
    v135 = v29;
    v131 = v20;
    if (EnumCaseMultiPayload)
    {

      v19 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4B0, &unk_265BF5190) + 48);
    }

    v40 = v135;
    v41 = v38;
    sub_265BD244C(v19, v135);
    sub_265BF3130();
    v42 = v27;
    sub_265BD2384(v40, v27, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    v43 = sub_265BF3230();
    v44 = sub_265BF34E0();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      *&v144 = v46;
      *v45 = 136446210;
      v47 = *v27;
      v48 = v27[1];
      v132 = *v42;

      sub_265BD23EC(v42, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      v49 = sub_265BB064C(v132, v48, &v144);

      *(v45 + 4) = v49;
      _os_log_impl(&dword_265BAD000, v43, v44, "Participant connection broker cancelling participant intent %{public}s, discovery expired", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v46);
      MEMORY[0x26676DCA0](v46, -1, -1);
      MEMORY[0x26676DCA0](v45, -1, -1);
    }

    else
    {

      sub_265BD23EC(v27, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    }

    (*(v140 + 8))(v41, v139);
    v92 = v131;
    v93 = v136;
    swift_storeEnumTagMultiPayload();
    v94 = v137;
    v95 = v133;
    swift_beginAccess();
    sub_265BD2718(v93, v94 + v95);
    swift_endAccess();
    v96 = v141;
    v97 = v142;
    v98 = v138;
    (*(v142 + 104))(v141, *MEMORY[0x277D52670], v138);
    v99 = v94[6];
    v139 = v94[5];
    v140 = v99;
    v137 = __swift_project_boxed_opaque_existential_1(v94 + 2, v139);
    v132 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
    sub_265BD2384(v135, v39, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    v136 = sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688]);
    v100 = swift_allocError();
    v101 = *(v97 + 16);
    v133 = v97 + 16;
    v134 = v101;
    v101(v102, v96, v98);
    sub_265BF3450();
    v104 = v103 - *(v39 + v92[9]);
    swift_getErrorValue();
    v105 = sub_265BF3750();
    v130 = v106;
    v131 = v105;
    swift_getErrorValue();
    v107 = sub_265BF3760();
    v128 = v108;
    v129 = v107;
    v109 = v39[1];
    v127 = *v39;
    v110 = v92[5];

    v111 = sub_265BF2CB0();
    v113 = v112;

    LOBYTE(v144) = v113 & 1;
    LOBYTE(v100) = *(v39 + v92[7]);
    v114 = *(v39 + v92[6]);
    v115 = v132;
    sub_265BD23EC(v39, v132);
    v116 = v144;
    *(&v145 + 1) = &type metadata for ConnectionBrokeringFailedAnalyticsEvent;
    *&v146 = sub_265BD1FD0();
    v117 = swift_allocObject();
    *&v144 = v117;
    *(v117 + 16) = v104;
    v118 = v130;
    *(v117 + 24) = v131;
    *(v117 + 32) = v118;
    v119 = v128;
    *(v117 + 40) = v129;
    *(v117 + 48) = v119;
    *(v117 + 56) = v127;
    *(v117 + 64) = v109;
    *(v117 + 72) = v111;
    *(v117 + 80) = v116;
    *(v117 + 81) = v100;
    *(v117 + 82) = v114;
    sub_265BF3010();
    __swift_destroy_boxed_opaque_existential_0Tm(&v144);
    v120 = v135;
    v121 = &v135[v92[10]];
    v123 = *v121;
    v122 = *(v121 + 1);

    sub_265BD23EC(v120, v115);
    v124 = swift_allocError();
    v125 = v141;
    v134(v126, v141, v98);
    v123(v124, 0, 0, 1);

    v36 = *(v142 + 8);
    v37 = v125;
    v91 = v98;
    return v36(v37, v91);
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v32 = v130;
      sub_265BF3130();
      v33 = sub_265BF3230();
      v34 = sub_265BF34E0();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_265BAD000, v33, v34, "Participant connection broker ignoring expired discovery, currently idle", v35, 2u);
        MEMORY[0x26676DCA0](v35, -1, -1);
      }

      v36 = *(v140 + 8);
      v37 = v32;
    }

    else
    {
      v87 = v131;
      sub_265BF3130();
      v88 = sub_265BF3230();
      v89 = sub_265BF34E0();
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        *v90 = 0;
        _os_log_impl(&dword_265BAD000, v88, v89, "Participant connection broker ignoring expired discovery, already complete", v90, 2u);
        MEMORY[0x26676DCA0](v90, -1, -1);
      }

      v36 = *(v140 + 8);
      v37 = v87;
    }

    v91 = v139;
    return v36(v37, v91);
  }

  v50 = *(v19 + 3);
  v146 = *(v19 + 2);
  v147 = v50;
  v148 = *(v19 + 4);
  v149 = *(v19 + 10);
  v51 = *(v19 + 1);
  v144 = *v19;
  v145 = v51;
  v52 = v135;
  sub_265BF3130();
  sub_265BD1ED4(&v144, v143);
  v53 = sub_265BF3230();
  v54 = sub_265BF34E0();
  sub_265BD1F0C(&v144);
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v143[0] = v56;
    *v55 = 136446210;
    v57 = v144;

    v58 = sub_265BB064C(v57, *(&v57 + 1), v143);

    *(v55 + 4) = v58;
    _os_log_impl(&dword_265BAD000, v53, v54, "Participant connection broker cancelling role intent %{public}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v56);
    MEMORY[0x26676DCA0](v56, -1, -1);
    MEMORY[0x26676DCA0](v55, -1, -1);
  }

  (*(v140 + 8))(v52, v139);
  v59 = v136;
  swift_storeEnumTagMultiPayload();
  v60 = v137;
  v61 = v133;
  swift_beginAccess();
  sub_265BD2718(v59, v60 + v61);
  swift_endAccess();
  v62 = v141;
  v63 = v142;
  v64 = v138;
  (*(v142 + 104))(v141, *MEMORY[0x277D52670], v138);
  v65 = v60[6];
  v139 = v60[5];
  v140 = v65;
  v137 = __swift_project_boxed_opaque_existential_1(v60 + 2, v139);
  v136 = sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688]);
  v66 = swift_allocError();
  v67 = *(v63 + 16);
  v134 = (v63 + 16);
  v135 = v67;
  (v67)(v68, v62, v64);
  sub_265BD1ED4(&v144, v143);
  sub_265BF3450();
  v70 = v69 - *(&v146 + 1);
  swift_getErrorValue();
  v71 = sub_265BF3750();
  v132 = v72;
  v133 = v71;
  swift_getErrorValue();
  v73 = sub_265BF3760();
  v75 = v74;

  v76 = v144;

  sub_265BD1F0C(&v144);
  v77 = v145;
  LOBYTE(v143[0]) = 1;
  v78 = BYTE1(v146);
  v79 = v146;
  v143[3] = &type metadata for ConnectionBrokeringFailedAnalyticsEvent;
  v143[4] = sub_265BD1FD0();
  v80 = swift_allocObject();
  v143[0] = v80;
  *(v80 + 16) = v70;
  v81 = v132;
  *(v80 + 24) = v133;
  *(v80 + 32) = v81;
  *(v80 + 40) = v73;
  *(v80 + 48) = v75;
  *(v80 + 56) = v76;
  *(v80 + 72) = v77;
  *(v80 + 80) = 1;
  *(v80 + 81) = v78;
  *(v80 + 82) = v79;
  sub_265BF3010();
  __swift_destroy_boxed_opaque_existential_0Tm(v143);
  v82 = v147;
  v83 = swift_allocError();
  v84 = v141;
  (v135)(v85, v141, v64);
  v82(v83, 0, 0, 1);

  sub_265BD1F0C(&v144);
  return (*(v142 + 8))(v84, v64);
}

uint64_t sub_265BC7D60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(&v228 + 1) = a2;
  *&v228 = a1;
  v214 = sub_265BF2C30();
  v213 = *(v214 - 1);
  v4 = *(v213 + 64);
  v5 = MEMORY[0x28223BE20](v214);
  v209 = v189 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = v6;
  MEMORY[0x28223BE20](v5);
  v223 = v189 - v7;
  v201 = sub_265BF3210();
  v200 = *(v201 - 1);
  v8 = v200[8];
  MEMORY[0x28223BE20](v201);
  v202 = v189 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_265BF31F0();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v199 = v189 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_265BF2F60();
  v210 = *(v211 - 8);
  v13 = *(v210 + 64);
  MEMORY[0x28223BE20](v211);
  v218 = v189 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v229 = *(v224 - 8);
  v15 = v229[8];
  v16 = MEMORY[0x28223BE20](v224);
  v206 = v189 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v207 = v189 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v222 = v189 - v21;
  v204 = v22;
  MEMORY[0x28223BE20](v20);
  v212 = v189 - v23;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v231 = *(v226 - 8);
  v24 = v231[8];
  v25 = MEMORY[0x28223BE20](v226);
  v203 = v189 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v225 = v189 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v215 = v189 - v30;
  v198 = v31;
  MEMORY[0x28223BE20](v29);
  v216 = v189 - v32;
  v221 = sub_265BF2CC0();
  v220 = *(v221 - 8);
  v33 = *(v220 + 64);
  v34 = MEMORY[0x28223BE20](v221);
  v219 = v189 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = v35;
  MEMORY[0x28223BE20](v34);
  v230 = v189 - v36;
  v37 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37);
  v41 = v189 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v43 = v189 - v42;
  v44 = sub_265BF3240();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = MEMORY[0x28223BE20](v44);
  v49 = v189 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = MEMORY[0x28223BE20](v47);
  v197 = v189 - v51;
  v52 = MEMORY[0x28223BE20](v50);
  v217 = v189 - v53;
  v54 = MEMORY[0x28223BE20](v52);
  v56 = v189 - v55;
  MEMORY[0x28223BE20](v54);
  v58 = v189 - v57;
  sub_265BF3130();
  sub_265BF3220();
  v59 = *(v45 + 8);
  v232 = v44;
  v233 = (v45 + 8);
  v59(v58, v44);
  v60 = *(v3 + 144);
  v227 = v3;
  sub_265BF2EA0();
  v234 = v43;
  sub_265BD2384(v43, v41, type metadata accessor for RemoteParticipantConnectionBroker.State);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_265BD23EC(v41, type metadata accessor for RemoteParticipantConnectionBroker.State);
    sub_265BF3130();
    v87 = sub_265BF3230();
    v88 = sub_265BF34E0();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_265BAD000, v87, v88, "Not processing handshake queue, state no longer matches", v89, 2u);
      MEMORY[0x26676DCA0](v89, -1, -1);
    }

    v90 = v49;
    goto LABEL_28;
  }

  v61 = *(v41 + 3);
  v238 = *(v41 + 2);
  v239 = v61;
  v240 = *(v41 + 4);
  v241 = *(v41 + 10);
  v62 = *(v41 + 1);
  v236 = *v41;
  v237 = v62;
  v63 = v236;
  v64 = v228;
  if (v236 != v228 && (sub_265BF36E0() & 1) == 0)
  {
    v96 = v197;
    sub_265BF3130();
    sub_265BD1ED4(&v236, &v235);

    v97 = sub_265BF3230();
    v98 = sub_265BF34E0();
    sub_265BD1F0C(&v236);

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v235 = v100;
      *v99 = 136446466;

      v101 = v59;
      v102 = sub_265BB064C(v63, *(&v63 + 1), &v235);

      *(v99 + 4) = v102;
      *(v99 + 12) = 2082;
      *(v99 + 14) = sub_265BB064C(v64, *(&v64 + 1), &v235);
      _os_log_impl(&dword_265BAD000, v97, v98, "Not processing handshake queue, intent identifiers no longer match (%{public}s != %{public}s)", v99, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v100, -1, -1);
      MEMORY[0x26676DCA0](v99, -1, -1);

      sub_265BD1F0C(&v236);
      v101(v197, v232);
      return sub_265BD23EC(v234, type metadata accessor for RemoteParticipantConnectionBroker.State);
    }

    sub_265BD1F0C(&v236);
    v90 = v96;
LABEL_28:
    v59(v90, v232);
    return sub_265BD23EC(v234, type metadata accessor for RemoteParticipantConnectionBroker.State);
  }

  v65 = v241;
  if (v241 >> 62)
  {
    result = sub_265BF3690();
  }

  else
  {
    result = *((v241 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v67 = v56;
  v68 = v217;
  if (!result)
  {
    sub_265BF3130();
    sub_265BD1ED4(&v236, &v235);
    v91 = sub_265BF3230();
    v92 = sub_265BF34E0();
    sub_265BD1F0C(&v236);
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v235 = v94;
      *v93 = 136446210;

      v95 = sub_265BB064C(v63, *(&v63 + 1), &v235);

      *(v93 + 4) = v95;
      _os_log_impl(&dword_265BAD000, v91, v92, "No devices in handshake queue to process for intent %{public}s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v94);
      MEMORY[0x26676DCA0](v94, -1, -1);
      MEMORY[0x26676DCA0](v93, -1, -1);
    }

    sub_265BD1F0C(&v236);
    v90 = v68;
    goto LABEL_28;
  }

  if ((v65 & 0xC000000000000001) != 0)
  {
    v69 = MEMORY[0x26676D450](0, v65);
LABEL_10:
    v70 = v69;
    sub_265BF3130();
    sub_265BD1ED4(&v236, &v235);
    v71 = v70;
    v72 = sub_265BF3230();
    v73 = sub_265BF34E0();
    sub_265BD1F0C(&v236);

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v235 = v76;
      *v74 = 136446466;

      v77 = sub_265BB064C(v63, *(&v63 + 1), &v235);

      *(v74 + 4) = v77;
      *(v74 + 12) = 2114;
      *(v74 + 14) = v71;
      *v75 = v71;
      v78 = v71;
      _os_log_impl(&dword_265BAD000, v72, v73, "Connecting to next device for handshake (intent: %{public}s): %{public}@", v74, 0x16u);
      sub_265BD2214(v75);
      MEMORY[0x26676DCA0](v75, -1, -1);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      MEMORY[0x26676DCA0](v76, -1, -1);
      MEMORY[0x26676DCA0](v74, -1, -1);
    }

    v59(v67, v232);
    v79 = v203;
    v80 = v237;
    v81 = v71;
    sub_265BB8C58(v81, v80, v230);
    sub_265BF3450();
    v83 = v82;
    v84 = *(v227 + 56);
    v85 = 1;
    if (v80 <= 2)
    {
      v86 = 1;
LABEL_26:
      v103 = BYTE1(v238);
      v104 = v238;
      v105 = swift_allocObject();
      *(v105 + 16) = v84;
      *(v105 + 24) = v81;
      *(v105 + 32) = v103;
      *(v105 + 33) = v85;
      *(v105 + 34) = 0;
      *(v105 + 35) = v86;
      *(v105 + 36) = v104;
      v197 = v81;
      swift_unknownObjectRetain();
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
      v107 = v222;
      v189[1] = v106;
      sub_265BF2DF0();
      sub_265BF3180();
      v108 = sub_265BF2F30();
      v109 = *(v108 + 48);
      v110 = *(v108 + 52);
      swift_allocObject();
      v111 = sub_265BF2F00();
      v112 = v202;
      sub_265BF2F50();

      sub_265BF3200();
      sub_265BF31E0();
      (v200[1])(v112, v201);
      sub_265BF2F50();
      v113 = sub_265BF31C0();
      v114 = *(v113 + 48);
      v115 = *(v113 + 52);
      swift_allocObject();
      v116 = sub_265BF3190();
      v192 = v116;
      v235 = v111;
      v117 = sub_265BF3350();
      v191 = v117;
      v119 = v118;
      sub_265BF2C20();
      v120 = swift_allocObject();
      v193 = v111;
      *(v120 + 16) = v111;
      *(v120 + 24) = v116;
      *(v120 + 32) = v117;
      *(v120 + 40) = v119;
      *(v120 + 48) = "DeviceConnection.connect";
      *(v120 + 56) = 24;
      *(v120 + 64) = 2;

      v121 = v225;
      sub_265BF2DF0();
      v122 = v229;
      v123 = v229[2];
      v232 = v229 + 2;
      v233 = v123;
      v124 = v206;
      v125 = v224;
      v123(v206, v107, v224);
      v126 = v122;
      v217 = *(v122 + 80);
      v190 = &v204[(v217 + 16) & ~v217];
      v127 = (v217 + 16) & ~v217;
      v203 = v127;
      v128 = swift_allocObject();
      v129 = v126[4];
      v202 = (v126 + 4);
      v204 = v129;
      (v129)(v128 + v127, v124, v125);
      v130 = v231;
      v131 = v231[2];
      v200 = v231 + 2;
      v201 = v131;
      v132 = v226;
      v131(v79, v121, v226);
      v133 = *(v130 + 80);
      v134 = v130;
      v199 = v133;
      v135 = (v133 + 16) & ~v133;
      v196 = v135;
      v136 = (v198 + v135 + 7) & 0xFFFFFFFFFFFFFFF8;
      v194 = v136;
      v137 = swift_allocObject();
      v138 = v134[4];
      v195 = v134 + 4;
      v198 = v138;
      v138(v137 + v135, v79, v132);
      v139 = (v137 + v136);
      *v139 = sub_265BD3390;
      v139[1] = v128;
      v140 = v207;
      sub_265BF2DF0();
      v141 = v213;
      v142 = v209;
      v143 = v214;
      (*(v213 + 16))(v209, v223, v214);
      v144 = (*(v141 + 80) + 49) & ~*(v141 + 80);
      v145 = (v208 + v144 + 7) & 0xFFFFFFFFFFFFFFF8;
      v146 = swift_allocObject();
      *(v146 + 16) = v191;
      *(v146 + 24) = v119;
      *(v146 + 32) = "DeviceConnection.connect";
      *(v146 + 40) = 24;
      *(v146 + 48) = 2;
      (*(v141 + 32))(v146 + v144, v142, v143);
      *(v146 + v145) = v192;
      *(v146 + ((v145 + 15) & 0xFFFFFFFFFFFFFFF8)) = v193;
      v147 = v224;
      v233(v124, v140, v224);
      v148 = (v190 + 7) & 0xFFFFFFFFFFFFFFF8;
      v208 = v148;
      v149 = swift_allocObject();
      (v204)(&v203[v149], v124, v147);
      v150 = (v149 + v148);
      *v150 = sub_265BD3364;
      v150[1] = v146;

      v151 = v212;
      sub_265BF2DF0();
      v152 = v229 + 1;
      v153 = v229[1];
      v153(v140, v147);
      v206 = v153;
      v229 = v152;
      v154 = v231[1];
      ++v231;
      v209 = v154;
      (v154)(v225, v226);
      (*(v141 + 8))(v223, v143);
      (*(v210 + 8))(v218, v211);
      v153(v222, v147);

      v155 = v220;
      v223 = *(v220 + 16);
      v156 = v219;
      v157 = v221;
      (v223)(v219, v230, v221);
      v158 = *(v155 + 80);
      v159 = (v158 + 112) & ~v158;
      v218 = (v205 + 7);
      v160 = (v205 + 7 + v159) & 0xFFFFFFFFFFFFFFF8;
      v161 = swift_allocObject();
      v162 = v239;
      *(v161 + 56) = v238;
      *(v161 + 72) = v162;
      *(v161 + 88) = v240;
      v163 = v237;
      *(v161 + 24) = v236;
      *(v161 + 16) = v227;
      *(v161 + 104) = v241;
      *(v161 + 40) = v163;
      v214 = *(v155 + 32);
      (v214)(v161 + v159, v156, v157);
      *(v161 + v160) = v83;
      v164 = v222;
      v165 = v224;
      v233(v222, v151, v224);
      v166 = v208;
      v167 = swift_allocObject();
      (v204)(&v203[v167], v164, v165);
      v168 = (v167 + v166);
      *v168 = sub_265BD2560;
      v168[1] = v161;
      sub_265BD1ED4(&v236, &v235);

      v169 = v215;
      sub_265BF2DF0();
      (v206)(v151, v165);
      v170 = v219;
      v171 = v221;
      (v223)(v219, v230, v221);
      v172 = (v158 + 104) & ~v158;
      v173 = &v218[v172] & 0xFFFFFFFFFFFFFFF8;
      v174 = swift_allocObject();
      v175 = v239;
      *(v174 + 48) = v238;
      *(v174 + 64) = v175;
      *(v174 + 80) = v240;
      *(v174 + 96) = v241;
      v176 = v237;
      *(v174 + 16) = v236;
      *(v174 + 32) = v176;
      (v214)(v174 + v172, v170, v171);
      *(v174 + v173) = v227;
      v177 = (v174 + ((v173 + 15) & 0xFFFFFFFFFFFFFFF8));
      v178 = *(&v228 + 1);
      *v177 = v228;
      v177[1] = v178;
      v179 = swift_allocObject();
      *(v179 + 16) = sub_265BD263C;
      *(v179 + 24) = v174;
      v180 = v225;
      v181 = v226;
      v201(v225, v169, v226);
      v182 = v194;
      v183 = swift_allocObject();
      v198(v183 + v196, v180, v181);
      v184 = (v183 + v182);
      *v184 = sub_265BD3358;
      v184[1] = v179;
      sub_265BD1ED4(&v236, &v235);

      v185 = v216;
      sub_265BF2DF0();
      v186 = v209;
      (v209)(v169, v181);
      v187 = sub_265BF2E40();
      v188 = swift_allocObject();
      *(v188 + 16) = 0;
      *(v188 + 24) = 0;
      v187(sub_265BB8864, v188);

      sub_265BD1F0C(&v236);
      (v186)(v185, v181);
      (*(v220 + 8))(v230, v171);
      return sub_265BD23EC(v234, type metadata accessor for RemoteParticipantConnectionBroker.State);
    }

    if (v80 != 3)
    {
      v86 = 1;
      if (v80 != 4)
      {
        goto LABEL_26;
      }

      v85 = 0;
    }

    v86 = v85;
    v85 = 0;
    goto LABEL_26;
  }

  if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v69 = *(v65 + 32);
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_265BC9644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v69 = a5;
  v64 = sub_265BF2CC0();
  v11 = *(v64 - 1);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v64);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v72 = *(v66 - 8);
  v14 = *(v72 + 64);
  v15 = MEMORY[0x28223BE20](v66);
  v65 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v57 - v17;
  MEMORY[0x28223BE20](v16);
  v67 = &v57 - v19;
  v20 = a1[1];
  v70 = *a1;
  v61 = v20;
  v71 = a1[2];
  v21 = swift_allocObject();
  v68 = a2;
  *(v21 + 16) = a2;
  v22 = *(a3 + 48);
  *(v21 + 56) = *(a3 + 32);
  *(v21 + 72) = v22;
  *(v21 + 88) = *(a3 + 64);
  *(v21 + 104) = *(a3 + 80);
  v23 = *(a3 + 16);
  *(v21 + 24) = *a3;
  *(v21 + 40) = v23;

  sub_265BD1ED4(a3, v73);
  sub_265BF2E00();
  v24 = a4;
  v25 = v64;
  (*(v11 + 16))(v13, v24, v64);
  v26 = (*(v11 + 80) + 104) & ~*(v11 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  v29 = *(a3 + 48);
  *(v28 + 48) = *(a3 + 32);
  *(v28 + 64) = v29;
  *(v28 + 80) = *(a3 + 64);
  *(v28 + 96) = *(a3 + 80);
  v30 = *(a3 + 16);
  *(v28 + 16) = *a3;
  *(v28 + 32) = v30;
  (*(v11 + 32))(v28 + v26, v13, v25);
  v31 = (v28 + v27);
  v32 = v71;
  *v31 = v70;
  v31[1] = v20;
  v31[2] = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_265BD2980;
  *(v33 + 24) = v28;
  v34 = v72;
  v35 = *(v72 + 16);
  v63 = v72 + 16;
  v64 = v35;
  v36 = v65;
  v37 = v66;
  v38 = v18;
  (v35)(v65, v18, v66);
  v39 = *(v34 + 80);
  v62 = v39;
  v40 = (v39 + 16) & ~v39;
  v59 = v40;
  v41 = (v14 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
  v42 = swift_allocObject();
  v43 = v34;
  v58 = *(v34 + 32);
  v60 = v34 + 32;
  v58(v42 + v40, v36, v37);
  v44 = (v42 + v41);
  *v44 = sub_265BD2A28;
  v44[1] = v33;
  sub_265BD1ED4(a3, v73);
  v45 = v70;
  swift_unknownObjectRetain();
  v46 = v67;
  sub_265BF2DF0();
  v47 = *(v43 + 8);
  v72 = v43 + 8;
  v65 = v47;
  (v47)(v38, v37);
  v48 = swift_allocObject();
  v49 = *(a3 + 48);
  *(v48 + 56) = *(a3 + 32);
  *(v48 + 72) = v49;
  *(v48 + 88) = *(a3 + 64);
  v50 = *(a3 + 16);
  *(v48 + 24) = *a3;
  *(v48 + 16) = v68;
  *(v48 + 104) = *(a3 + 80);
  *(v48 + 40) = v50;
  *(v48 + 112) = a6;
  v51 = v61;
  *(v48 + 120) = v45;
  *(v48 + 128) = v51;
  *(v48 + 136) = v71;
  v52 = swift_allocObject();
  *(v52 + 16) = sub_265BD2AD4;
  *(v52 + 24) = v48;
  v53 = swift_allocObject();
  *(v53 + 16) = sub_265BD2B00;
  *(v53 + 24) = v52;
  (v64)(v38, v46, v37);
  v54 = swift_allocObject();
  v58(v54 + v59, v38, v37);
  v55 = (v54 + v41);
  *v55 = sub_265BD335C;
  v55[1] = v53;

  sub_265BD1ED4(a3, v73);
  swift_unknownObjectRetain();
  sub_265BF2DF0();
  return (v65)(v46, v37);
}

uint64_t sub_265BC9C48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v41 = a3;
  v42 = a4;
  v43 = a6;
  v9 = sub_265BF2CC0();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_265BF3240();
  v40 = *(v14 - 8);
  v15 = *(v40 + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  (*(v10 + 16))(v13, a2, v9);
  sub_265BD1ED4(a1, v44);
  v18 = a1;
  v19 = sub_265BF3230();
  v20 = sub_265BF34E0();
  sub_265BD1F0C(v18);
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = a5;
    v22 = v21;
    v38 = swift_slowAlloc();
    v44[0] = v38;
    *v22 = 136446466;
    *(v22 + 4) = sub_265BB064C(*v18, v18[1], v44);
    *(v22 + 12) = 2082;
    sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0]);
    v37 = v14;
    v23 = v18;
    v24 = sub_265BF36D0();
    v36 = v19;
    v26 = v25;
    (*(v10 + 8))(v13, v9);
    v27 = v24;
    v18 = v23;
    v28 = sub_265BB064C(v27, v26, v44);

    *(v22 + 14) = v28;
    v29 = v20;
    v30 = v36;
    _os_log_impl(&dword_265BAD000, v36, v29, "Intent %{public}s Handshaking %{public}s", v22, 0x16u);
    v31 = v38;
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v31, -1, -1);
    v32 = v22;
    a5 = v39;
    MEMORY[0x26676DCA0](v32, -1, -1);

    (*(v40 + 8))(v17, v37);
  }

  else
  {

    (*(v10 + 8))(v13, v9);
    (*(v40 + 8))(v17, v14);
  }

  v33 = v18[8];
  v34 = v18[9];
  return v33(a2, v41, v42, a5);
}

uint64_t sub_265BC9FA8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v32 = a4;
  v33 = a5;
  v31 = a3;
  v9 = sub_265BF3240();
  v36 = *(v9 - 8);
  v37 = v9;
  v10 = *(v36 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[5];
  v34 = a1[6];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1 + 2, v13);
  sub_265BF3450();
  v15 = v14 - a6;
  v17 = *a2;
  v16 = *(a2 + 8);
  v18 = *(a2 + 16);
  v19 = *(a2 + 33);
  LOBYTE(a1) = *(a2 + 32);
  v40[3] = &type metadata for ConnectionHandshakeSucceededAnalyticsEvent;
  v40[4] = sub_265BD2B28();
  v20 = swift_allocObject();
  v40[0] = v20;
  *(v20 + 16) = v15;
  v35 = v17;
  *(v20 + 24) = v17;
  *(v20 + 32) = v16;
  v21 = v12;
  *(v20 + 40) = v18;
  *(v20 + 41) = v19;
  *(v20 + 42) = a1;

  sub_265BF3010();
  __swift_destroy_boxed_opaque_existential_0Tm(v40);
  sub_265BF3130();
  sub_265BD1ED4(a2, v40);
  v22 = sub_265BF3230();
  v23 = sub_265BF34E0();
  sub_265BD1F0C(a2);
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v40[0] = v25;
    *v24 = 136446210;
    v26 = v35;
    *(v24 + 4) = sub_265BB064C(v35, v16, v40);
    _os_log_impl(&dword_265BAD000, v22, v23, "Intent %{public}s Handshake success, completing", v24, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    MEMORY[0x26676DCA0](v25, -1, -1);
    MEMORY[0x26676DCA0](v24, -1, -1);

    (*(v36 + 8))(v21, v37);
    v27 = v26;
  }

  else
  {

    (*(v36 + 8))(v12, v37);
    v27 = v35;
  }

  v28 = v38;
  result = sub_265BC3EF4(v27, v16);
  if (!v28)
  {
    v30 = *(a2 + 56);
    (*(a2 + 48))(v31, v32, v33, 0);
    return sub_265BCADEC();
  }

  return result;
}

uint64_t sub_265BCA270(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v62 = a5;
  v63 = a4;
  v64 = a6;
  v9 = sub_265BF3100();
  v59 = *(v9 - 8);
  v60 = v9;
  v10 = *(v59 + 64);
  MEMORY[0x28223BE20](v9);
  v58 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265BF2CC0();
  v54 = *(v12 - 8);
  v13 = *(v54 + 64);
  MEMORY[0x28223BE20](v12);
  v53 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_265BF2DE0();
  v56 = *(v57 - 8);
  v15 = *(v56 + 64);
  v16 = MEMORY[0x28223BE20](v57);
  v52 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v55 = &v49 - v18;
  v61 = sub_265BF3240();
  v19 = *(v61 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v61);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BD1ED4(a2, v67);
  v23 = a1;
  v24 = sub_265BF3230();
  v25 = sub_265BF34D0();
  sub_265BD1F0C(a2);

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v50 = v12;
    v27 = v26;
    v28 = swift_slowAlloc();
    v51 = a3;
    v29 = v28;
    v67[0] = v28;
    *v27 = 136446466;
    *(v27 + 4) = sub_265BB064C(*a2, *(a2 + 8), v67);
    *(v27 + 12) = 2082;
    swift_getErrorValue();
    v30 = MEMORY[0x26676D550](v65, v66);
    v32 = sub_265BB064C(v30, v31, v67);

    *(v27 + 14) = v32;
    _os_log_impl(&dword_265BAD000, v24, v25, "Intent %{public}s Failed, processing next device in queue (%{public}s)", v27, 0x16u);
    swift_arrayDestroy();
    v33 = v29;
    a3 = v51;
    MEMORY[0x26676DCA0](v33, -1, -1);
    v34 = v27;
    v12 = v50;
    MEMORY[0x26676DCA0](v34, -1, -1);
  }

  (*(v19 + 8))(v22, v61);
  v35 = a1;
  v36 = sub_265BBF8EC(a1);
  v37 = v63;
  if (v36 != 4)
  {
    (*(v54 + 16))(v53, a3, v12);
    v38 = v55;
    sub_265BF2DD0();
    v40 = v37[11];
    v39 = v37[12];
    swift_getObjectType();
    v41 = v56;
    v42 = v57;
    (*(v56 + 16))(v52, v38, v57);
    v43 = v58;
    sub_265BF30F0();
    v44 = v60;
    sub_265BF2FA0();
    (*(v59 + 8))(v43, v44);
    v36 = (*(v41 + 8))(v38, v42);
  }

  v45 = v37[18];
  MEMORY[0x28223BE20](v36);
  v46 = v62;
  *(&v49 - 4) = v37;
  *(&v49 - 3) = v46;
  v47 = v64;
  *(&v49 - 2) = v64;
  sub_265BF2EA0();
  return sub_265BC7D60(v46, v47);
}

uint64_t sub_265BCA7F0(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v41 = a2;
  v5 = sub_265BF3240();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = *(v42 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v12 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v40 - v17;
  v19 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  sub_265BD2384(a1 + v19, v18, type metadata accessor for RemoteParticipantConnectionBroker.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
LABEL_7:
    sub_265BF3130();

    v24 = sub_265BF3230();
    v25 = sub_265BF34E0();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *&v51 = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_265BB064C(v41, a3, &v51);
      _os_log_impl(&dword_265BAD000, v24, v25, "Not updating handshake queue, state no longer matches for %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v27);
      MEMORY[0x26676DCA0](v27, -1, -1);
      MEMORY[0x26676DCA0](v26, -1, -1);
    }

    return (*(v42 + 8))(v11, v43);
  }

  if (!EnumCaseMultiPayload)
  {
    v22 = type metadata accessor for RemoteParticipantConnectionBroker.State;
    v23 = v18;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4B0, &unk_265BF5190);
    v22 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
    v23 = &v18[*(v21 + 48)];
LABEL_6:
    sub_265BD23EC(v23, v22);
    goto LABEL_7;
  }

  v29 = *(v18 + 3);
  v53 = *(v18 + 2);
  v54 = v29;
  v55 = *(v18 + 4);
  v56 = *(v18 + 10);
  v30 = *(v18 + 1);
  v51 = *v18;
  v52 = v30;
  v31 = v51;
  if (v51 == __PAIR128__(a3, v41) || (sub_265BF36E0() & 1) != 0)
  {
    v46 = v53;
    v47 = v54;
    v48 = v55;
    v49 = v56;
    v44 = v51;
    v45 = v52;
    sub_265BCAD14();

    v33 = v47;
    *(v16 + 2) = v46;
    *(v16 + 3) = v33;
    *(v16 + 4) = v48;
    *(v16 + 10) = v49;
    v34 = v45;
    *v16 = v44;
    *(v16 + 1) = v34;
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_265BD2718(v16, a1 + v19);
    return swift_endAccess();
  }

  else
  {
    sub_265BF3130();

    sub_265BD1ED4(&v51, v50);
    v35 = sub_265BF3230();
    v36 = sub_265BF34E0();
    sub_265BD1F0C(&v51);

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v50[0] = v38;
      *v37 = 136446466;

      v39 = sub_265BB064C(v31, *(&v31 + 1), v50);

      *(v37 + 4) = v39;
      *(v37 + 12) = 2082;
      *(v37 + 14) = sub_265BB064C(v41, a3, v50);
      _os_log_impl(&dword_265BAD000, v35, BYTE8(v31), "Not updating handshake queue, intent identifier changed (%{public}s != %{public}s)", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v38, -1, -1);
      MEMORY[0x26676DCA0](v37, -1, -1);

      sub_265BD1F0C(&v51);
    }

    else
    {
      sub_265BD1F0C(&v51);
    }

    return (*(v42 + 8))(v9, v43);
  }
}

void sub_265BCAD14()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    MEMORY[0x26676D450](0, v1);
    if (!v2)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  if (v1 < 0)
  {
    v4 = *v0;
  }

  else
  {
    v4 = *v0 & 0xFFFFFFFFFFFFFF8;
  }

  if (!sub_265BF3690())
  {
    goto LABEL_20;
  }

  if (!sub_265BF3690())
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_14;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    *(v1 + 32);
    if (!v2)
    {
LABEL_6:
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_16;
    }

LABEL_15:
    v3 = sub_265BF3690();
LABEL_16:
    if (v3)
    {
      sub_265BD287C(0, 1);
      return;
    }

    goto LABEL_19;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t sub_265BCADEC()
{
  v1 = v0;
  v46 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v2 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v50 = *(v5 - 8);
  v6 = v50[8];
  v7 = MEMORY[0x28223BE20](v5);
  v47 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v45 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v45 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v49 = &v45 - v15;
  MEMORY[0x28223BE20](v14);
  v48 = &v45 - v16;
  v17 = sub_265BF3240();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v18 + 8))(v21, v17);
  swift_storeEnumTagMultiPayload();
  v22 = v1[18];
  v51 = v1;
  v52 = v4;
  sub_265BF2EA0();
  sub_265BF2E50();
  sub_265BD23EC(v4, type metadata accessor for RemoteParticipantConnectionBroker.State);
  v23 = v1[9];
  v24 = v1[10];
  ObjectType = swift_getObjectType();
  v26 = *(v24 + 56);
  v45 = v13;
  v26(ObjectType, v24);
  v27 = v50;
  v28 = v50[2];
  v29 = v10;
  v30 = v10;
  v31 = v5;
  v28(v30, v13, v5);
  v32 = (*(v27 + 80) + 16) & ~*(v27 + 80);
  v33 = swift_allocObject();
  v34 = v27[4];
  v35 = v29;
  v36 = v31;
  v34(v33 + v32, v35, v31);
  v37 = v47;
  v28(v47, v49, v36);
  v38 = swift_allocObject();
  v34(v38 + v32, v37, v36);
  v39 = (v38 + ((v32 + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v39 = sub_265BD339C;
  v39[1] = v33;
  v40 = v48;
  sub_265BF2DF0();
  v41 = v50[1];
  v41(v45, v36);
  v41(v49, v36);
  v42 = sub_265BF2E40();
  v43 = swift_allocObject();
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  v42(sub_265BB8864, v43);

  return (v41)(v40, v36);
}

uint64_t sub_265BCB2BC(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  sub_265BD20A0(a2, a1 + v4);
  return swift_endAccess();
}

uint64_t *sub_265BCB328()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[7];
  swift_unknownObjectRelease();
  v2 = v0[9];
  swift_unknownObjectRelease();
  v3 = v0[11];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  v4 = v0[18];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 19);
  v5 = v0[24];
  swift_unknownObjectRelease();
  sub_265BD23EC(v0 + OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state, type metadata accessor for RemoteParticipantConnectionBroker.State);
  v6 = *(v0 + OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_subscriptionToken);

  return v0;
}

uint64_t sub_265BCB3B4()
{
  sub_265BCB328();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_265BCB434()
{
  result = type metadata accessor for RemoteParticipantConnectionBroker.State(319);
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

void sub_265BCB568()
{
  type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(319);
  if (v0 <= 0x3F)
  {
    sub_265BCB63C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_265BCB604(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_265BCB63C()
{
  if (!qword_2810683D0)
  {
    sub_265BBABEC();
    type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2810683D0);
    }
  }
}

uint64_t sub_265BCB6B0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_265BCB6F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_265BCB784()
{
  result = sub_265BF2CC0();
  if (v1 <= 0x3F)
  {
    result = sub_265BCB844();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_265BCB844()
{
  result = qword_2810683C0;
  if (!qword_2810683C0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_2810683C0);
  }

  return result;
}

void sub_265BCB894(uint64_t *a1@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X8>)
{
  v6 = v5;
  LODWORD(v223) = a4;
  LODWORD(v221) = a3;
  LODWORD(v222) = a2;
  v249 = a1;
  v253 = a5;
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v237 = *(v248 - 8);
  v7 = *(v237 + 64);
  v8 = MEMORY[0x28223BE20](v248);
  v230 = &v215 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = v9;
  MEMORY[0x28223BE20](v8);
  v246 = &v215 - v10;
  v247 = sub_265BF2C30();
  v236 = *(v247 - 8);
  v11 = *(v236 + 64);
  v12 = MEMORY[0x28223BE20](v247);
  v232 = &v215 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v231 = v13;
  MEMORY[0x28223BE20](v12);
  v251 = &v215 - v14;
  v225 = sub_265BF3210();
  v224 = *(v225 - 8);
  v15 = *(v224 + 8);
  MEMORY[0x28223BE20](v225);
  v227 = &v215 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_265BF31F0();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17 - 8);
  v226 = &v215 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v235 = sub_265BF2F60();
  v234 = *(v235 - 8);
  v20 = *(v234 + 64);
  MEMORY[0x28223BE20](v235);
  v244 = &v215 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v233 = *(v245 - 8);
  v22 = *(v233 + 64);
  v23 = MEMORY[0x28223BE20](v245);
  v242 = &v215 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v241 = &v215 - v26;
  v228 = v27;
  MEMORY[0x28223BE20](v25);
  v243 = &v215 - v28;
  v29 = sub_265BF2CC0();
  v238 = *(v29 - 8);
  v239 = v29;
  v30 = *(v238 + 64);
  v31 = MEMORY[0x28223BE20](v29);
  v218 = (&v215 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = MEMORY[0x28223BE20](v31);
  v217 = &v215 - v33;
  MEMORY[0x28223BE20](v32);
  v220 = &v215 - v34;
  v35 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x28223BE20](v35);
  v39 = &v215 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v41 = &v215 - v40;
  v42 = sub_265BF3240();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x28223BE20](v42);
  v47 = &v215 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = MEMORY[0x28223BE20](v45);
  v219 = (&v215 - v49);
  v50 = MEMORY[0x28223BE20](v48);
  v52 = &v215 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v215 - v53;
  sub_265BF3130();
  sub_265BF3220();
  v55 = *(v43 + 8);
  v250 = v42;
  v56 = v42;
  v57 = v55;
  v55(v54, v56);
  v58 = *(v6 + 144);
  v240 = v6;
  sub_265BF2EA0();
  v252 = v41;
  sub_265BD2384(v41, v39, type metadata accessor for RemoteParticipantConnectionBroker.State);
  LODWORD(v6) = swift_getEnumCaseMultiPayload();
  sub_265BD23EC(v39, type metadata accessor for RemoteParticipantConnectionBroker.State);
  if (v6 != 3)
  {
    sub_265BF3130();
    v91 = sub_265BF3230();
    v92 = sub_265BF34D0();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      *v93 = 0;
      _os_log_impl(&dword_265BAD000, v91, v92, "Participant connection broker not allowing connection attempt, state is not idle", v93, 2u);
      MEMORY[0x26676DCA0](v93, -1, -1);
    }

    v57(v47, v250);
    v94 = sub_265BF2D20();
    sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688]);
    v95 = swift_allocError();
    (*(*(v94 - 8) + 104))(v96, *MEMORY[0x277D52658], v94);
    *(swift_allocObject() + 16) = v95;
    v97 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
    goto LABEL_10;
  }

  v59 = v249;
  v60 = sub_265BF2CB0();
  if ((v61 & 1) == 0)
  {
    v98 = sub_265BF2D20();
    sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688]);
    v95 = swift_allocError();
    (*(*(v98 - 8) + 104))(v99, *MEMORY[0x277D525E8], v98);
    *(swift_allocObject() + 16) = v95;
    v100 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
LABEL_10:
    sub_265BF2E00();
    sub_265BD23EC(v252, type metadata accessor for RemoteParticipantConnectionBroker.State);

    return;
  }

  v215 = v60;
  v216 = v57;
  v62 = v240;
  v64 = *(v240 + 72);
  v63 = *(v240 + 80);
  ObjectType = swift_getObjectType();
  v66 = (*(v63 + 64))(v59, ObjectType, v63);
  if (!v66)
  {
    v101 = v219;
    sub_265BF3130();
    v102 = v238;
    v103 = v239;
    v104 = *(v238 + 16);
    v105 = v217;
    (v104)(v217, v59, v239);
    v106 = sub_265BF3230();
    v107 = sub_265BF34E0();
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v220 = v104;
      v110 = v109;
      v254 = v109;
      *v108 = 136446210;
      sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0]);
      v111 = sub_265BF36D0();
      v113 = v112;
      (*(v238 + 8))(v105, v239);
      v114 = sub_265BB064C(v111, v113, &v254);
      v103 = v239;

      *(v108 + 4) = v114;
      _os_log_impl(&dword_265BAD000, v106, v107, "No existing devices found for %{public}s", v108, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v110);
      v115 = v110;
      v104 = v220;
      MEMORY[0x26676DCA0](v115, -1, -1);
      v116 = v108;
      v102 = v238;
      MEMORY[0x26676DCA0](v116, -1, -1);

      v117 = v219;
    }

    else
    {

      (*(v102 + 8))(v105, v103);
      v117 = v101;
    }

    v216(v117, v250);
    v166 = v218;
    (v104)(v218, v249, v103);
    v167 = v102;
    v168 = (*(v102 + 80) + 16) & ~*(v102 + 80);
    v169 = swift_allocObject();
    (*(v167 + 32))(v169 + v168, v166, v103);
    v170 = (v169 + v168 + v30);
    *v170 = v222 & 1;
    v170[1] = v221 & 1;
    v170[2] = v223;
    v171 = v169 + ((v168 + v30 + 10) & 0xFFFFFFFFFFFFFFF8);
    *v171 = v240;
    *(v171 + 8) = v215;

    v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
    v172 = v243;
    sub_265BF2DF0();
    sub_265BF3180();
    v173 = sub_265BF2F30();
    v174 = *(v173 + 48);
    v175 = *(v173 + 52);
    swift_allocObject();
    v176 = sub_265BF2F00();
    v177 = v227;
    sub_265BF2F50();

    sub_265BF3200();
    sub_265BF31E0();
    (*(v224 + 1))(v177, v225);
    sub_265BF2F50();
    v178 = sub_265BF31C0();
    v179 = *(v178 + 48);
    v180 = *(v178 + 52);
    swift_allocObject();
    v181 = sub_265BF3190();
    v240 = v181;
    v254 = v176;
    v182 = sub_265BF3350();
    v239 = v182;
    v184 = v183;
    sub_265BF2C20();
    v185 = swift_allocObject();
    v249 = v176;
    *(v185 + 16) = v176;
    *(v185 + 24) = v181;
    *(v185 + 32) = v182;
    *(v185 + 40) = v184;
    v238 = v184;
    *(v185 + 48) = "RemoteParticipantConnectionBroker::connect";
    *(v185 + 56) = 42;
    *(v185 + 64) = 2;

    v186 = v246;
    sub_265BF2DF0();
    v187 = v233;
    v188 = *(v233 + 16);
    v223 = (v233 + 16);
    v227 = v188;
    v189 = v242;
    v190 = v245;
    (v188)(v242, v172, v245);
    v226 = *(v187 + 80);
    v224 = &v228[(v226 + 16) & ~v226];
    v191 = (v226 + 16) & ~v226;
    v225 = v191;
    v192 = swift_allocObject();
    v193 = *(v187 + 32);
    v222 = v187 + 32;
    v228 = v193;
    (v193)(v192 + v191, v189, v190);
    v194 = v237;
    v195 = v230;
    v196 = v248;
    (*(v237 + 16))(v230, v186, v248);
    v197 = (*(v194 + 80) + 16) & ~*(v194 + 80);
    v198 = (v229 + v197 + 7) & 0xFFFFFFFFFFFFFFF8;
    v199 = swift_allocObject();
    (*(v194 + 32))(v199 + v197, v195, v196);
    v200 = (v199 + v198);
    *v200 = sub_265BD3390;
    v200[1] = v192;
    v201 = v241;
    sub_265BF2DF0();
    v202 = v236;
    v203 = v232;
    v204 = v247;
    (*(v236 + 16))(v232, v251, v247);
    v205 = (*(v202 + 80) + 49) & ~*(v202 + 80);
    v206 = (v231 + v205 + 7) & 0xFFFFFFFFFFFFFFF8;
    v207 = swift_allocObject();
    v208 = v238;
    *(v207 + 16) = v239;
    *(v207 + 24) = v208;
    *(v207 + 32) = "RemoteParticipantConnectionBroker::connect";
    *(v207 + 40) = 42;
    *(v207 + 48) = 2;
    (*(v202 + 32))(v207 + v205, v203, v204);
    *(v207 + v206) = v240;
    *(v207 + ((v206 + 15) & 0xFFFFFFFFFFFFFFF8)) = v249;
    v209 = v242;
    v210 = v245;
    (v227)(v242, v201, v245);
    v211 = (v224 + 7) & 0xFFFFFFFFFFFFFFF8;
    v212 = swift_allocObject();
    (v228)(v212 + v225, v209, v210);
    v213 = (v212 + v211);
    *v213 = sub_265BD3364;
    v213[1] = v207;

    sub_265BF2DF0();
    v214 = *(v187 + 8);
    v214(v201, v210);
    (*(v194 + 8))(v246, v248);
    (*(v202 + 8))(v251, v247);
    (*(v234 + 8))(v244, v235);
    v214(v243, v210);
    goto LABEL_23;
  }

  v67 = v66;
  v68 = v52;
  sub_265BF3130();
  v69 = v238;
  v70 = v239;
  v71 = v220;
  (*(v238 + 16))(v220, v59, v239);
  v72 = v67;
  v73 = sub_265BF3230();
  v74 = sub_265BF34E0();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = swift_slowAlloc();
    v249 = v68;
    v76 = v69;
    v77 = v75;
    v78 = swift_slowAlloc();
    v218 = v78;
    v219 = swift_slowAlloc();
    v254 = v219;
    *v77 = 138543618;
    *(v77 + 4) = v72;
    *v78 = v67;
    *(v77 + 12) = 2082;
    sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0]);
    v79 = v72;
    v80 = v220;
    v81 = sub_265BF36D0();
    LODWORD(v217) = v74;
    v82 = v72;
    v83 = v81;
    v85 = v84;
    (*(v76 + 8))(v80, v70);
    v86 = v83;
    v72 = v82;
    v87 = sub_265BB064C(v86, v85, &v254);

    *(v77 + 14) = v87;
    _os_log_impl(&dword_265BAD000, v73, v217, "Found existing discovered device (%{public}@) for %{public}s", v77, 0x16u);
    v88 = v218;
    sub_265BD2214(v218);
    MEMORY[0x26676DCA0](v88, -1, -1);
    v89 = v219;
    __swift_destroy_boxed_opaque_existential_0Tm(v219);
    MEMORY[0x26676DCA0](v89, -1, -1);
    MEMORY[0x26676DCA0](v77, -1, -1);

    v90 = v249;
  }

  else
  {

    (*(v69 + 8))(v71, v70);
    v90 = v68;
  }

  v216(v90, v250);
  v118 = *(v62 + 56);
  v119 = 1;
  if (v215 > 2u)
  {
    if (v215 != 3)
    {
      v120 = 1;
      if (v215 != 4)
      {
        goto LABEL_20;
      }

      v119 = 0;
    }

    v120 = v119;
    v119 = 0;
    goto LABEL_20;
  }

  v120 = 1;
LABEL_20:
  v121 = swift_allocObject();
  *(v121 + 16) = v118;
  *(v121 + 24) = v72;
  *(v121 + 32) = v221 & 1;
  *(v121 + 33) = v119;
  *(v121 + 34) = v223;
  *(v121 + 35) = v120;
  *(v121 + 36) = v222 & 1;
  v249 = v72;
  swift_unknownObjectRetain();
  v250 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
  v122 = v243;
  sub_265BF2DF0();
  sub_265BF3180();
  v123 = sub_265BF2F30();
  v124 = *(v123 + 48);
  v125 = *(v123 + 52);
  swift_allocObject();
  v126 = sub_265BF2F00();
  v127 = v227;
  sub_265BF2F50();

  sub_265BF3200();
  sub_265BF31E0();
  (*(v224 + 1))(v127, v225);
  sub_265BF2F50();
  v128 = sub_265BF31C0();
  v129 = *(v128 + 48);
  v130 = *(v128 + 52);
  swift_allocObject();
  v131 = sub_265BF3190();
  v239 = v131;
  v254 = v126;
  v132 = sub_265BF3350();
  v238 = v132;
  v134 = v133;
  sub_265BF2C20();
  v135 = swift_allocObject();
  v240 = v126;
  *(v135 + 16) = v126;
  *(v135 + 24) = v131;
  *(v135 + 32) = v132;
  *(v135 + 40) = v134;
  v227 = v134;
  *(v135 + 48) = "DeviceConnection.connect";
  *(v135 + 56) = 24;
  *(v135 + 64) = 2;

  v136 = v246;
  sub_265BF2DF0();
  v137 = v233;
  v138 = *(v233 + 16);
  v222 = v233 + 16;
  v226 = v138;
  v139 = v242;
  v140 = v245;
  v138(v242, v122, v245);
  v225 = *(v137 + 80);
  v223 = &v228[(v225 + 16) & ~v225];
  v141 = (v225 + 16) & ~v225;
  v224 = v141;
  v142 = swift_allocObject();
  v143 = *(v137 + 32);
  v221 = v137 + 32;
  v228 = v143;
  (v143)(v142 + v141, v139, v140);
  v144 = v237;
  v145 = v230;
  v146 = v248;
  (*(v237 + 16))(v230, v136, v248);
  v147 = (*(v144 + 80) + 16) & ~*(v144 + 80);
  v148 = (v229 + v147 + 7) & 0xFFFFFFFFFFFFFFF8;
  v149 = swift_allocObject();
  (*(v144 + 32))(v149 + v147, v145, v146);
  v150 = (v149 + v148);
  *v150 = sub_265BD3390;
  v150[1] = v142;
  v151 = v241;
  sub_265BF2DF0();
  v152 = v236;
  v153 = v232;
  v154 = v247;
  (*(v236 + 16))(v232, v251, v247);
  v155 = (*(v152 + 80) + 49) & ~*(v152 + 80);
  v156 = (v231 + v155 + 7) & 0xFFFFFFFFFFFFFFF8;
  v157 = swift_allocObject();
  v158 = v227;
  *(v157 + 16) = v238;
  *(v157 + 24) = v158;
  *(v157 + 32) = "DeviceConnection.connect";
  *(v157 + 40) = 24;
  *(v157 + 48) = 2;
  (*(v152 + 32))(v157 + v155, v153, v154);
  v159 = v240;
  *(v157 + v156) = v239;
  *(v157 + ((v156 + 15) & 0xFFFFFFFFFFFFFFF8)) = v159;
  v160 = v242;
  v161 = v245;
  (v226)(v242, v151, v245);
  v162 = (v223 + 7) & 0xFFFFFFFFFFFFFFF8;
  v163 = swift_allocObject();
  (v228)(&v224[v163], v160, v161);
  v164 = (v163 + v162);
  *v164 = sub_265BD3364;
  v164[1] = v157;

  sub_265BF2DF0();

  v165 = *(v137 + 8);
  v165(v241, v161);
  (*(v144 + 8))(v246, v248);
  (*(v152 + 8))(v251, v247);
  (*(v234 + 8))(v244, v235);
  v165(v243, v161);
LABEL_23:
  sub_265BD23EC(v252, type metadata accessor for RemoteParticipantConnectionBroker.State);
}

uint64_t sub_265BCD2C0(uint64_t a1, uint64_t a2, uint64_t a3, int a4, int a5, int a6, void *a7, int a8)
{
  LODWORD(v131) = a8;
  v139 = a7;
  LODWORD(v124) = a6;
  v119 = a5;
  v118 = a4;
  v116 = a3;
  v123 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v11 = *(*(v123 - 8) + 64);
  MEMORY[0x28223BE20](v123);
  v125 = (&v113 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v140 = *(v136 - 8);
  v13 = v140[8];
  v14 = MEMORY[0x28223BE20](v136);
  v132 = &v113 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v130 = &v113 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v137 = (&v113 - v19);
  v20 = MEMORY[0x28223BE20](v18);
  v133 = (&v113 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v134 = (&v113 - v23);
  v129 = v24;
  MEMORY[0x28223BE20](v22);
  v135 = &v113 - v25;
  v26 = sub_265BF2CC0();
  v115 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v26);
  v117 = &v113 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = sub_265BF3240();
  v121 = *(v122 - 8);
  v30 = *(v121 + 64);
  MEMORY[0x28223BE20](v122);
  v32 = &v113 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  v34 = (v33 - 8);
  v126 = *(v33 - 8);
  v35 = *(v126 + 64);
  v36 = MEMORY[0x28223BE20](v33);
  v128 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v40 = (&v113 - v39);
  v127 = v41;
  MEMORY[0x28223BE20](v38);
  v43 = (&v113 - v42);
  v44 = swift_allocObject();
  *(v44 + 16) = a1;
  *(v44 + 24) = a2;

  v114 = sub_265BF3370();
  v46 = v45;
  v47 = v34[7];
  v120 = v27;
  v48 = *(v27 + 16);
  v48(v43 + v47, a3, v26);
  sub_265BF3450();
  v50 = v49;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_265BD3360;
  *(v51 + 24) = v44;
  v52 = swift_allocObject();
  v53 = v139;
  v52[2] = v139;
  v52[3] = sub_265BD3368;
  v52[4] = v51;
  v54 = v53;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_265BD336C;
  *(v55 + 24) = v52;
  v56 = v43;
  v57 = v117;
  *v56 = v114;
  v56[1] = v46;
  *(v56 + v34[8]) = v118 & 1;
  *(v56 + v34[9]) = v119 & 1;
  *(v56 + v34[10]) = v124;
  *(v56 + v34[11]) = v50;
  v58 = (v56 + v34[12]);
  *v58 = sub_265BD3360;
  v58[1] = v55;
  v124 = v44;
  v59 = v115;

  sub_265BF3130();
  v48(v57, v116, v59);
  v60 = v40;
  sub_265BD2384(v56, v40, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  v61 = v32;
  v62 = sub_265BF3230();
  v63 = sub_265BF34E0();
  v64 = os_log_type_enabled(v62, v63);
  v138 = v56;
  if (v64)
  {
    v65 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v141[0] = v66;
    *v65 = 136446466;
    sub_265BD21C8(&qword_28003C4A8, MEMORY[0x277D515D0]);
    v67 = sub_265BF36D0();
    v69 = v68;
    (*(v120 + 8))(v57, v59);
    v70 = sub_265BB064C(v67, v69, v141);

    *(v65 + 4) = v70;
    *(v65 + 12) = 2082;
    v71 = *v60;
    v72 = v60[1];

    sub_265BD23EC(v60, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    v73 = sub_265BB064C(v71, v72, v141);

    *(v65 + 14) = v73;
    _os_log_impl(&dword_265BAD000, v62, v63, "Connecting to participant %{public}s, intent identifier: %{public}s", v65, 0x16u);
    swift_arrayDestroy();
    v74 = v66;
    v56 = v138;
    MEMORY[0x26676DCA0](v74, -1, -1);
    v75 = v65;
    v54 = v139;
    MEMORY[0x26676DCA0](v75, -1, -1);
  }

  else
  {

    sub_265BD23EC(v60, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
    (*(v120 + 8))(v57, v59);
  }

  (*(v121 + 8))(v61, v122);
  v76 = v125;
  sub_265BD2384(v56, v125, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  v77 = swift_storeEnumTagMultiPayload();
  v78 = v54[18];
  MEMORY[0x28223BE20](v77);
  *(&v113 - 2) = v54;
  *(&v113 - 1) = v76;
  sub_265BF2EA0();
  v79 = v133;
  sub_265BF2E50();
  sub_265BD23EC(v76, type metadata accessor for RemoteParticipantConnectionBroker.State);
  v80 = v54[9];
  v81 = v54[10];
  ObjectType = swift_getObjectType();
  if (qword_281068820 != -1)
  {
    swift_once();
  }

  v83 = v137;
  (*(v81 + 48))(v131, ObjectType, v81, *&qword_281068828);
  v84 = v140;
  v86 = v140 + 2;
  v85 = v140[2];
  v87 = v130;
  v88 = v136;
  v85(v130, v83, v136);
  v131 = v86;
  v125 = v85;
  v89 = (*(v84 + 80) + 16) & ~*(v84 + 80);
  v90 = &v129[v89];
  v123 = *(v84 + 80);
  v121 = swift_allocObject();
  v91 = v84[4];
  v122 = v89;
  v129 = v91;
  (v91)(v121 + v89, v87, v88);
  v92 = v132;
  v85(v132, v79, v88);
  v93 = (v90 + 7) & 0xFFFFFFFFFFFFFFF8;
  v94 = swift_allocObject();
  (v91)(v94 + v89, v92, v88);
  v95 = (v94 + v93);
  v96 = v121;
  *v95 = sub_265BD339C;
  v95[1] = v96;
  v97 = v134;
  sub_265BF2DF0();
  v98 = v140[1];
  v132 = v98;
  ++v140;
  (v98)(v137, v88);
  (v98)(v79, v88);
  v137 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
  v99 = v128;
  sub_265BD2384(v138, v128, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
  v100 = (*(v126 + 80) + 24) & ~*(v126 + 80);
  v101 = (v127 + v100 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = swift_allocObject();
  *(v102 + 16) = v139;
  sub_265BD244C(v99, v102 + v100);
  v103 = (v102 + v101);
  v104 = v124;
  *v103 = sub_265BD3360;
  v103[1] = v104;
  v105 = swift_allocObject();
  *(v105 + 16) = sub_265BD24B0;
  *(v105 + 24) = v102;
  v125(v79, v97, v88);
  v106 = swift_allocObject();
  (v129)(v106 + v122, v79, v88);
  v107 = (v106 + v93);
  *v107 = sub_265BD3358;
  v107[1] = v105;

  v108 = v135;
  sub_265BF2DF0();
  v109 = v132;
  (v132)(v97, v88);
  v110 = sub_265BF2E40();
  v111 = swift_allocObject();
  *(v111 + 16) = 0;
  *(v111 + 24) = 0;
  v110(sub_265BB8864, v111);

  v109(v108, v88);
  return sub_265BD23EC(v138, v137);
}

uint64_t sub_265BCDF04(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t (*a5)(void *))
{
  v6[0] = a1;
  v6[1] = a2;
  v6[2] = a3;
  v7 = a4 & 1;
  return a5(v6);
}

uint64_t sub_265BCDF48(void *a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v87 = a5;
  v84 = a4;
  v90 = a3;
  v92 = a1;
  v6 = sub_265BF3240();
  v94 = *(v6 - 1);
  v95 = v6;
  v7 = v94[8];
  MEMORY[0x28223BE20](v6);
  v93 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v88 = *(v89 - 8);
  v9 = *(v88 + 64);
  v10 = MEMORY[0x28223BE20](v89);
  v85 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v10);
  v91 = &v76 - v12;
  MEMORY[0x28223BE20](v11);
  v86 = &v76 - v13;
  v14 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v76 - v19;
  v21 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  v22 = *(*(v21 - 1) + 64);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = (&v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v27 = (&v76 - v26);
  v28 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  sub_265BD2384(a2 + v28, v20, type metadata accessor for RemoteParticipantConnectionBroker.State);
  if (swift_getEnumCaseMultiPayload())
  {
    v29 = type metadata accessor for RemoteParticipantConnectionBroker.State;
    v30 = v20;
  }

  else
  {
    v81 = v14;
    v82 = v18;
    v83 = v9;
    sub_265BD244C(v20, v27);
    v36 = v90;
    v37 = *v27 == *v90 && v27[1] == v90[1];
    if (v37 || (sub_265BF36E0() & 1) != 0)
    {
      v38 = a2;
      v39 = a2[5];
      v93 = a2[6];
      v94 = v27;
      v80 = __swift_project_boxed_opaque_existential_1(a2 + 2, v39);
      v95 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
      sub_265BD2384(v36, v25, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      sub_265BF3450();
      v41 = v40 - *(v25 + v21[9]);
      swift_getErrorValue();
      v90 = sub_265BF3750();
      v79 = v42;
      swift_getErrorValue();
      v78 = sub_265BF3760();
      v44 = v43;
      v45 = v25[1];
      v77 = *v25;
      v46 = v21[5];

      v47 = sub_265BF2CB0();
      LOBYTE(v97[0]) = v48 & 1;
      v49 = *(v25 + v21[7]);
      v50 = *(v25 + v21[6]);
      sub_265BD23EC(v25, type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent);
      v51 = v97[0];
      v97[3] = &type metadata for ConnectionBrokeringFailedAnalyticsEvent;
      v97[4] = sub_265BD1FD0();
      v52 = swift_allocObject();
      v97[0] = v52;
      *(v52 + 16) = v41;
      v53 = v79;
      *(v52 + 24) = v90;
      *(v52 + 32) = v53;
      *(v52 + 40) = v78;
      *(v52 + 48) = v44;
      *(v52 + 56) = v77;
      *(v52 + 64) = v45;
      *(v52 + 72) = v47;
      *(v52 + 80) = v51;
      *(v52 + 81) = v49;
      *(v52 + 82) = v50;
      sub_265BF3010();
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
      v54 = v82;
      v55 = swift_storeEnumTagMultiPayload();
      v56 = v38[18];
      MEMORY[0x28223BE20](v55);
      *(&v76 - 2) = v38;
      *(&v76 - 1) = v54;
      v57 = v96;
      sub_265BF2EA0();
      v96 = v57;
      v58 = v91;
      sub_265BF2E50();
      sub_265BD23EC(v54, type metadata accessor for RemoteParticipantConnectionBroker.State);
      v59 = swift_allocObject();
      v60 = v87;
      v59[2] = v84;
      v59[3] = v60;
      v61 = v92;
      v59[4] = v92;
      v62 = swift_allocObject();
      *(v62 + 16) = sub_265BD333C;
      *(v62 + 24) = v59;
      v63 = swift_allocObject();
      *(v63 + 16) = sub_265BD33AC;
      *(v63 + 24) = v62;
      v64 = v88;
      v65 = v85;
      v66 = v89;
      (*(v88 + 16))(v85, v58, v89);
      v67 = (*(v64 + 80) + 16) & ~*(v64 + 80);
      v68 = (v83 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
      v69 = swift_allocObject();
      (*(v64 + 32))(v69 + v67, v65, v66);
      v70 = (v69 + v68);
      *v70 = sub_265BD335C;
      v70[1] = v63;

      v71 = v61;
      v72 = v86;
      sub_265BF2DF0();
      v73 = *(v64 + 8);
      v73(v91, v66);
      v74 = sub_265BF2E40();
      v75 = swift_allocObject();
      *(v75 + 16) = 0;
      *(v75 + 24) = 0;
      v74(sub_265BB8864, v75);

      v73(v72, v66);
      return sub_265BD23EC(v94, v95);
    }

    v29 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent;
    v30 = v27;
  }

  sub_265BD23EC(v30, v29);
  v31 = v93;
  sub_265BF3130();
  v32 = sub_265BF3230();
  v33 = sub_265BF34E0();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_265BAD000, v32, v33, "Discovery activation failed, but current state intent no longer matches", v34, 2u);
    MEMORY[0x26676DCA0](v34, -1, -1);
  }

  return (v94[1])(v31, v95);
}

void sub_265BCE790(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v8 = v7;
  v113 = a6;
  v108 = a5;
  LODWORD(v107) = a4;
  LODWORD(v106) = a3;
  v109 = a2;
  LODWORD(v105) = a1;
  v133 = a7;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v125 = *(v134 - 8);
  v9 = *(v125 + 64);
  v10 = MEMORY[0x28223BE20](v134);
  v117 = v11;
  v118 = v104 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v131 = v104 - v12;
  v132 = sub_265BF2C30();
  v124 = *(v132 - 8);
  v13 = *(v124 + 64);
  v14 = MEMORY[0x28223BE20](v132);
  v121 = v104 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v15;
  MEMORY[0x28223BE20](v14);
  v135 = v104 - v16;
  v114 = sub_265BF3210();
  v112 = *(v114 - 8);
  v17 = *(v112 + 64);
  MEMORY[0x28223BE20](v114);
  v115 = v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_265BF31F0();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v111 = (v104 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_265BF2F60();
  v122 = *(v22 - 8);
  v123 = v22;
  v23 = *(v122 + 64);
  MEMORY[0x28223BE20](v22);
  v130 = v104 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v120 = *(v129 - 8);
  v25 = *(v120 + 64);
  v26 = MEMORY[0x28223BE20](v129);
  v126 = v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x28223BE20](v26);
  v116 = v104 - v29;
  v110 = v30;
  MEMORY[0x28223BE20](v28);
  v128 = v104 - v31;
  v32 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = v104 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v38 = v104 - v37;
  v39 = sub_265BF3240();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = MEMORY[0x28223BE20](v39);
  v44 = v104 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v46 = v104 - v45;
  sub_265BF3130();
  sub_265BF3220();
  v47 = *(v40 + 8);
  v47(v46, v39);
  v48 = *(v8 + 144);
  v49 = v8;
  sub_265BF2EA0();
  v127 = v38;
  sub_265BD2384(v38, v36, type metadata accessor for RemoteParticipantConnectionBroker.State);
  LODWORD(v8) = swift_getEnumCaseMultiPayload();
  sub_265BD23EC(v36, type metadata accessor for RemoteParticipantConnectionBroker.State);
  if (v8 == 3)
  {
    v50 = swift_allocObject();
    *(v50 + 16) = v105;
    *(v50 + 24) = v109;
    *(v50 + 32) = v106 & 1;
    *(v50 + 33) = v107 & 1;
    v51 = v108;
    *(v50 + 40) = v49;
    *(v50 + 48) = v51;
    *(v50 + 56) = v113;

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
    v53 = v128;
    v104[1] = v52;
    sub_265BF2DF0();
    sub_265BF3180();
    v54 = sub_265BF2F30();
    v55 = *(v54 + 48);
    v56 = *(v54 + 52);
    swift_allocObject();
    v57 = sub_265BF2F00();
    v58 = v115;
    sub_265BF2F50();

    sub_265BF3200();
    sub_265BF31E0();
    (*(v112 + 8))(v58, v114);
    sub_265BF2F50();
    v59 = sub_265BF31C0();
    v60 = *(v59 + 48);
    v61 = *(v59 + 52);
    swift_allocObject();
    v62 = sub_265BF3190();
    v115 = v62;
    v136 = v57;
    v63 = sub_265BF3350();
    v114 = v63;
    v65 = v64;
    sub_265BF2C20();
    v66 = swift_allocObject();
    v113 = v57;
    *(v66 + 16) = v57;
    *(v66 + 24) = v62;
    *(v66 + 32) = v63;
    *(v66 + 40) = v65;
    v112 = v65;
    *(v66 + 48) = "RemoteParticipantConnectionBroker::connectToAnyParticipant";
    *(v66 + 56) = 58;
    *(v66 + 64) = 2;

    v67 = v131;
    sub_265BF2DF0();
    v68 = v120;
    v69 = *(v120 + 16);
    v109 = v120 + 16;
    v111 = v69;
    v70 = v126;
    v71 = v129;
    v69(v126, v53, v129);
    v108 = *(v68 + 80);
    v106 = &v110[(v108 + 16) & ~v108];
    v72 = (v108 + 16) & ~v108;
    v107 = v72;
    v73 = swift_allocObject();
    v74 = *(v68 + 32);
    v105 = v68 + 32;
    v110 = v74;
    (v74)(v73 + v72, v70, v71);
    v75 = v125;
    v76 = v118;
    v77 = v134;
    (*(v125 + 16))(v118, v67, v134);
    v78 = (*(v75 + 80) + 16) & ~*(v75 + 80);
    v79 = (v117 + v78 + 7) & 0xFFFFFFFFFFFFFFF8;
    v80 = swift_allocObject();
    (*(v75 + 32))(v80 + v78, v76, v77);
    v81 = (v80 + v79);
    *v81 = sub_265BD1BE4;
    v81[1] = v73;
    v82 = v116;
    sub_265BF2DF0();
    v83 = v124;
    v84 = v121;
    v85 = v132;
    (*(v124 + 16))(v121, v135, v132);
    v86 = (*(v83 + 80) + 49) & ~*(v83 + 80);
    v87 = (v119 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
    v88 = swift_allocObject();
    v89 = v112;
    *(v88 + 16) = v114;
    *(v88 + 24) = v89;
    *(v88 + 32) = "RemoteParticipantConnectionBroker::connectToAnyParticipant";
    *(v88 + 40) = 58;
    *(v88 + 48) = 2;
    (*(v83 + 32))(v88 + v86, v84, v85);
    *(v88 + v87) = v115;
    *(v88 + ((v87 + 15) & 0xFFFFFFFFFFFFFFF8)) = v113;
    v90 = v126;
    v91 = v129;
    v111(v126, v82, v129);
    v92 = (v106 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = swift_allocObject();
    (v110)(v93 + v107, v90, v91);
    v94 = (v93 + v92);
    *v94 = sub_265BD1C10;
    v94[1] = v88;

    sub_265BF2DF0();
    v95 = *(v68 + 8);
    v95(v82, v91);
    (*(v75 + 8))(v131, v134);
    (*(v83 + 8))(v135, v132);
    (*(v122 + 8))(v130, v123);
    v95(v128, v91);
    sub_265BD23EC(v127, type metadata accessor for RemoteParticipantConnectionBroker.State);
  }

  else
  {
    v96 = v127;
    sub_265BF3130();
    v97 = sub_265BF3230();
    v98 = sub_265BF34D0();
    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      *v99 = 0;
      _os_log_impl(&dword_265BAD000, v97, v98, "Participant connection broker not allowing connection attempt, state is not idle", v99, 2u);
      MEMORY[0x26676DCA0](v99, -1, -1);
    }

    v47(v44, v39);
    v100 = sub_265BF2D20();
    sub_265BD21C8(&qword_281068900, MEMORY[0x277D52688]);
    v101 = swift_allocError();
    (*(*(v100 - 8) + 104))(v102, *MEMORY[0x277D52658], v100);
    *(swift_allocObject() + 16) = v101;
    v103 = v101;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C348, qword_265BF48B0);
    sub_265BF2E00();
    sub_265BD23EC(v96, type metadata accessor for RemoteParticipantConnectionBroker.State);
  }
}

uint64_t sub_265BCF528(uint64_t a1, uint64_t a2, int a3, uint64_t a4, int a5, int a6, void *a7, uint64_t a8, uint64_t a9)
{
  v100 = a8;
  v108 = a7;
  LODWORD(v94) = a6;
  LODWORD(v93) = a5;
  LODWORD(v104) = a3;
  v92 = a9;
  v97 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v12 = *(*(v97 - 1) + 64);
  MEMORY[0x28223BE20](v97);
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v107 = *(v103 - 8);
  v15 = v107[8];
  v16 = MEMORY[0x28223BE20](v103);
  v101 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v99 = &v91 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v105 = &v91 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v109 = &v91 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v106 = &v91 - v25;
  v98 = v26;
  MEMORY[0x28223BE20](v24);
  v102 = &v91 - v27;
  v28 = sub_265BF3240();
  v95 = *(v28 - 8);
  v96 = v28;
  v29 = *(v95 + 64);
  MEMORY[0x28223BE20](v28);
  v31 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = swift_allocObject();
  *(v32 + 16) = a1;
  *(v32 + 24) = a2;

  v33 = sub_265BF3370();
  v35 = v34;

  sub_265BF3450();
  v37 = v36;
  v38 = swift_allocObject();
  *(v38 + 16) = sub_265BD1C48;
  *(v38 + 24) = v32;
  v39 = swift_allocObject();
  v40 = v108;
  v39[2] = v108;
  v39[3] = sub_265BD1C4C;
  v39[4] = v38;
  v41 = v40;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_265BD1ED0;
  *(v42 + 24) = v39;
  v91 = v33;
  *&v118 = v33;
  *(&v118 + 1) = v35;
  v43 = v104;
  LOBYTE(v119) = v104;
  *(&v119 + 1) = a4;
  LOBYTE(v120) = v93 & 1;
  BYTE1(v120) = v94 & 1;
  *(&v120 + 1) = v37;
  *&v121 = sub_265BD3360;
  *(&v121 + 1) = v42;
  *&v122 = v100;
  *(&v122 + 1) = v92;
  v123 = MEMORY[0x277D84F90];
  v117 = MEMORY[0x277D84F90];
  v114 = v120;
  v115 = v121;
  v116 = v122;
  v112 = v118;
  v113 = v119;
  v100 = v32;

  sub_265BF3130();
  sub_265BD1ED4(&v118, v111);
  v94 = v31;
  v44 = sub_265BF3230();
  v45 = sub_265BF34E0();
  sub_265BD1F0C(&v118);
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v111[0] = v47;
    *v46 = 136446466;
    v110 = v43;
    v48 = sub_265BF3350();
    v50 = sub_265BB064C(v48, v49, v111);

    *(v46 + 4) = v50;
    *(v46 + 12) = 2082;
    v51 = sub_265BB064C(v91, v35, v111);

    *(v46 + 14) = v51;
    _os_log_impl(&dword_265BAD000, v44, v45, "Connecting to any participant with role %{public}s, intent identifier: %{public}s", v46, 0x16u);
    swift_arrayDestroy();
    v52 = v47;
    v41 = v108;
    MEMORY[0x26676DCA0](v52, -1, -1);
    MEMORY[0x26676DCA0](v46, -1, -1);
  }

  else
  {
  }

  (*(v95 + 8))(v94, v96);
  v53 = v115;
  *(v14 + 2) = v114;
  *(v14 + 3) = v53;
  *(v14 + 4) = v116;
  *(v14 + 10) = v117;
  v54 = v113;
  *v14 = v112;
  *(v14 + 1) = v54;
  v55 = swift_storeEnumTagMultiPayload();
  v56 = v41[18];
  MEMORY[0x28223BE20](v55);
  *(&v91 - 2) = v41;
  *(&v91 - 1) = v14;
  sub_265BD1ED4(&v118, v111);
  sub_265BF2EA0();
  sub_265BF2E50();
  sub_265BD23EC(v14, type metadata accessor for RemoteParticipantConnectionBroker.State);
  v57 = v41[9];
  v58 = v41[10];
  ObjectType = swift_getObjectType();
  if (qword_281068820 != -1)
  {
    swift_once();
  }

  v60 = v105;
  (*(v58 + 48))(v104, ObjectType, v58, *&qword_281068828);
  v61 = v107;
  v62 = v107 + 2;
  v63 = v107[2];
  v64 = v99;
  v65 = v103;
  v63(v99, v60, v103);
  v104 = v62;
  v97 = v63;
  v66 = (*(v61 + 80) + 16) & ~*(v61 + 80);
  v67 = v98 + v66;
  v95 = *(v61 + 80);
  v93 = swift_allocObject();
  v94 = v66;
  v68 = v61[4];
  v96 = v68;
  v68(v93 + v66, v64, v65);
  v98 = v61 + 4;
  v69 = v101;
  v63(v101, v109, v65);
  v70 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v71 = swift_allocObject();
  v68(v71 + v66, v69, v65);
  v72 = (v71 + v70);
  v73 = v93;
  *v72 = sub_265BB2424;
  v72[1] = v73;
  sub_265BF2DF0();
  v74 = v107[1];
  v74(v105, v65);
  v75 = v109;
  v76 = v65;
  v74(v109, v65);
  v77 = swift_allocObject();
  v78 = v115;
  *(v77 + 56) = v114;
  *(v77 + 72) = v78;
  *(v77 + 88) = v116;
  v79 = v113;
  *(v77 + 24) = v112;
  *(v77 + 16) = v108;
  v80 = v117;
  *(v77 + 40) = v79;
  *(v77 + 104) = v80;
  *(v77 + 112) = sub_265BD1C48;
  *(v77 + 120) = v100;
  v81 = swift_allocObject();
  *(v81 + 16) = sub_265BD1F58;
  *(v81 + 24) = v77;
  v82 = v75;
  v83 = v75;
  v84 = v106;
  v97(v83, v106, v76);
  v85 = swift_allocObject();
  v96(v85 + v94, v82, v76);
  v86 = (v85 + v70);
  *v86 = sub_265BD1F7C;
  v86[1] = v81;

  sub_265BD1ED4(&v118, v111);
  v87 = v102;
  sub_265BF2DF0();
  v74(v84, v76);
  v88 = sub_265BF2E40();
  v89 = swift_allocObject();
  *(v89 + 16) = 0;
  *(v89 + 24) = 0;
  v88(sub_265BB8654, v89);

  sub_265BD1F0C(&v118);
  return (v74)(v87, v76);
}

uint64_t sub_265BCFEFC(void *a1, void *a2, double *a3, uint64_t a4, uint64_t a5)
{
  v75 = a5;
  v73 = a4;
  v80 = a1;
  v78 = sub_265BF3240();
  v7 = *(v78 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v78);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v77 = *(v11 - 8);
  v12 = *(v77 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v74 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v79 = &v65 - v15;
  MEMORY[0x28223BE20](v14);
  v76 = &v65 - v16;
  v17 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v72 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v65 - v21;
  v23 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  sub_265BD2384(a2 + v23, v22, type metadata accessor for RemoteParticipantConnectionBroker.State);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v24 = *(v22 + 1);
    v85[0] = *v22;
    v25 = *(v22 + 2);
    v26 = *(v22 + 4);
    v85[3] = *(v22 + 3);
    v85[4] = v26;
    v86 = *(v22 + 10);
    v85[1] = v24;
    v85[2] = v25;
    v28 = *a3;
    v27 = *(a3 + 1);
    if (v85[0] == *a3 || (v29 = *a3, v30 = *(a3 + 1), (sub_265BF36E0() & 1) != 0))
    {
      v70 = a2[5];
      v71 = a2[6];
      v69 = __swift_project_boxed_opaque_existential_1(a2 + 2, v70);

      sub_265BF3450();
      v32 = v31 - a3[5];
      swift_getErrorValue();
      v68 = sub_265BF3750();
      v67 = v33;
      swift_getErrorValue();
      v34 = sub_265BF3760();
      v36 = v35;
      v66 = *(a3 + 16);
      LOBYTE(v84[0]) = 1;
      v78 = v11;
      v83 = *(a3 + 33);
      v37 = v83;
      v38 = *(a3 + 32);
      v82 = v38;
      v84[3] = &type metadata for ConnectionBrokeringFailedAnalyticsEvent;
      v84[4] = sub_265BD1FD0();
      v39 = swift_allocObject();
      v84[0] = v39;
      *(v39 + 16) = v32;
      v40 = v67;
      *(v39 + 24) = v68;
      *(v39 + 32) = v40;
      *(v39 + 40) = v34;
      *(v39 + 48) = v36;
      *(v39 + 56) = v28;
      *(v39 + 64) = v27;
      *(v39 + 72) = v66;
      *(v39 + 80) = 1;
      *(v39 + 81) = v37;
      *(v39 + 82) = v38;
      sub_265BF3010();
      __swift_destroy_boxed_opaque_existential_0Tm(v84);
      v41 = v72;
      v42 = swift_storeEnumTagMultiPayload();
      v43 = a2[18];
      MEMORY[0x28223BE20](v42);
      *(&v65 - 2) = a2;
      *(&v65 - 1) = v41;
      v44 = v81;
      sub_265BF2EA0();
      v81 = v44;
      v45 = v79;
      sub_265BF2E50();
      sub_265BD23EC(v41, type metadata accessor for RemoteParticipantConnectionBroker.State);
      v46 = swift_allocObject();
      v47 = v75;
      v46[2] = v73;
      v46[3] = v47;
      v46[4] = v80;
      v48 = swift_allocObject();
      *(v48 + 16) = sub_265BD2024;
      *(v48 + 24) = v46;
      v49 = swift_allocObject();
      *(v49 + 16) = sub_265BD2060;
      *(v49 + 24) = v48;
      v50 = v77;
      v51 = v74;
      v52 = v78;
      (*(v77 + 16))(v74, v45, v78);
      v53 = (*(v50 + 80) + 16) & ~*(v50 + 80);
      v54 = swift_allocObject();
      (*(v50 + 32))(v54 + v53, v51, v52);
      v55 = (v54 + ((v12 + v53 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v55 = sub_265BD2090;
      v55[1] = v49;

      v56 = v80;
      v57 = v76;
      sub_265BF2DF0();
      v58 = *(v50 + 8);
      v58(v79, v52);
      v59 = sub_265BF2E40();
      v60 = swift_allocObject();
      *(v60 + 16) = 0;
      *(v60 + 24) = 0;
      v59(sub_265BB8864, v60);

      sub_265BD1F0C(v85);
      return (v58)(v57, v52);
    }

    sub_265BD1F0C(v85);
  }

  else
  {
    sub_265BD23EC(v22, type metadata accessor for RemoteParticipantConnectionBroker.State);
  }

  sub_265BF3130();
  v62 = sub_265BF3230();
  v63 = sub_265BF34E0();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_265BAD000, v62, v63, "Discovery activation failed, but current state intent no longer matches", v64, 2u);
    MEMORY[0x26676DCA0](v64, -1, -1);
  }

  return (*(v7 + 8))(v10, v78);
}

uint64_t sub_265BD0734()
{
  v1 = *(*v0 + 56);
  v2 = off_287776A70;
  type metadata accessor for DeviceConnectionBroker();
  return v2() & 1;
}

unint64_t sub_265BD078C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265BF3240();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  sub_265BF3130();
  sub_265BF3220();
  (*(v4 + 8))(v7, v3);
  v9 = *(v8 + 56);
  return sub_265BEB774(a1);
}

uint64_t sub_265BD08C0()
{
  v1 = sub_265BF3240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_265BF3130();
  sub_265BF3220();
  (*(v2 + 8))(v5, v1);
  sub_265BCADEC();
  v7 = *(v6 + 56);
  v8 = off_287776A80[0];
  type metadata accessor for DeviceConnectionBroker();
  return v8();
}

uint64_t sub_265BD0A14(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v74 = a7;
  v75 = a8;
  v71 = a2;
  v72 = a5;
  v77 = a1;
  v80 = a11;
  v81 = a12;
  v73 = a9;
  v15 = sub_265BF2C30();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x28223BE20](v15);
  v76 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v70 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v70 - v23;
  v25 = sub_265BF3240();
  v78 = *(v25 - 8);
  v79 = v25;
  v26 = *(v78 + 64);
  v27 = MEMORY[0x28223BE20](v25);
  MEMORY[0x28223BE20](v27);
  v30 = &v70 - v29;
  v31 = (v16 + 16);
  if (a4)
  {
    v32 = a3;
    v33 = v28;
    sub_265BF2F40();
    v34 = v15;
    (*v31)(v22, a10, v15);

    v35 = v77;
    v36 = v71;
    sub_265BD1C3C(v77, v71, v32, 1);
    v70 = v33;
    v37 = sub_265BF3230();
    v38 = sub_265BF34D0();

    sub_265BB8678(v35, v36, v32, 1);
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v83[0] = v71;
      *v39 = 136446978;
      *(v39 + 4) = sub_265BB064C(v72, a6, v83);
      *(v39 + 12) = 2082;
      v40 = sub_265BF3630();
      v42 = v38;
      v43 = sub_265BB064C(v40, v41, v83);

      *(v39 + 14) = v43;
      *(v39 + 22) = 2048;
      v44 = v76;
      sub_265BF2C20();
      sub_265BF2C00();
      v46 = v45;
      v47 = *(v16 + 8);
      v47(v44, v34);
      v47(v22, v34);
      *(v39 + 24) = v46;
      *(v39 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v49 = *(*(v82 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v51 + 16))(&v70 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0));
      v52 = sub_265BF3350();
      v54 = sub_265BB064C(v52, v53, v83);

      *(v39 + 34) = v54;
      _os_log_impl(&dword_265BAD000, v37, v42, "[%{public}s] %{public}s ended in %fs -> %{public}s", v39, 0x2Au);
      v55 = v71;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v55, -1, -1);
      MEMORY[0x26676DCA0](v39, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v22, v34);
    }

    (*(v78 + 8))(v70, v79);
  }

  else
  {
    sub_265BF2F40();
    v56 = v15;
    (*v31)(v24, a10, v15);
    v57 = a6;

    v58 = sub_265BF3230();
    v59 = sub_265BF34E0();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v83[0] = v61;
      *v60 = 136446722;
      *(v60 + 4) = sub_265BB064C(v72, v57, v83);
      *(v60 + 12) = 2082;
      v62 = sub_265BF3630();
      v64 = sub_265BB064C(v62, v63, v83);

      *(v60 + 14) = v64;
      *(v60 + 22) = 2048;
      v65 = v76;
      sub_265BF2C20();
      sub_265BF2C00();
      v67 = v66;
      v68 = *(v16 + 8);
      v68(v65, v56);
      v68(v24, v56);
      *(v60 + 24) = v67;
      _os_log_impl(&dword_265BAD000, v58, v59, "[%{public}s] %{public}s ended in %fs", v60, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v61, -1, -1);
      MEMORY[0x26676DCA0](v60, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v24, v56);
    }

    (*(v78 + 8))(v30, v79);
  }

  sub_265BF31A0();
  return sub_265BF2F10();
}

uint64_t sub_265BD1070(void *a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v66 = a7;
  v64 = a5;
  v65 = a6;
  v63 = a3;
  v68 = a1;
  v71 = a9;
  v72 = a10;
  v13 = sub_265BF2C30();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v67 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v62 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v62 - v21;
  v23 = sub_265BF3240();
  v69 = *(v23 - 8);
  v70 = v23;
  v24 = *(v69 + 64);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v62 - v28;
  v30 = (v14 + 16);
  if (a2)
  {
    sub_265BF2F40();
    (*v30)(v20, a8, v13);

    v31 = v68;
    sub_265BD3314(v68, 1);
    v32 = sub_265BF3230();
    v33 = sub_265BF34D0();

    sub_265BB85E0(v31, 1);
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v74 = v62;
      *v34 = 136446978;
      *(v34 + 4) = sub_265BB064C(v63, a4, &v74);
      *(v34 + 12) = 2082;
      v35 = sub_265BF3630();
      v37 = sub_265BB064C(v35, v36, &v74);

      *(v34 + 14) = v37;
      *(v34 + 22) = 2048;
      v38 = v67;
      sub_265BF2C20();
      sub_265BF2C00();
      v40 = v39;
      v41 = *(v14 + 8);
      v41(v38, v13);
      v41(v20, v13);
      *(v34 + 24) = v40;
      *(v34 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v43 = *(*(v73 - 8) + 64);
      MEMORY[0x28223BE20](ErrorValue);
      (*(v45 + 16))(&v62 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
      v46 = sub_265BF3350();
      v48 = sub_265BB064C(v46, v47, &v74);

      *(v34 + 34) = v48;
      _os_log_impl(&dword_265BAD000, v32, v33, "[%{public}s] %{public}s ended in %fs -> %{public}s", v34, 0x2Au);
      v49 = v62;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v49, -1, -1);
      MEMORY[0x26676DCA0](v34, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v20, v13);
    }

    (*(v69 + 8))(v27, v70);
  }

  else
  {
    sub_265BF2F40();
    (*v30)(v22, a8, v13);

    v50 = sub_265BF3230();
    v51 = sub_265BF34E0();

    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v74 = v53;
      *v52 = 136446722;
      *(v52 + 4) = sub_265BB064C(v63, a4, &v74);
      *(v52 + 12) = 2082;
      v54 = sub_265BF3630();
      v56 = sub_265BB064C(v54, v55, &v74);

      *(v52 + 14) = v56;
      *(v52 + 22) = 2048;
      v57 = v67;
      sub_265BF2C20();
      sub_265BF2C00();
      v59 = v58;
      v60 = *(v14 + 8);
      v60(v57, v13);
      v60(v22, v13);
      *(v52 + 24) = v59;
      _os_log_impl(&dword_265BAD000, v50, v51, "[%{public}s] %{public}s ended in %fs", v52, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v53, -1, -1);
      MEMORY[0x26676DCA0](v52, -1, -1);
    }

    else
    {

      (*(v14 + 8))(v22, v13);
    }

    (*(v69 + 8))(v29, v70);
  }

  sub_265BF31A0();
  return sub_265BF2F10();
}

uint64_t sub_265BD1698(uint64_t a1)
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
    sub_265BF3690();
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
  result = sub_265BF3650();
  *v1 = result;
  return result;
}

uint64_t sub_265BD1738(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = a1;

  v7 = a1;

  return sub_265BF2DF0();
}

void sub_265BD17DC(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr, uint64_t), uint64_t a4, uint64_t a5)
{
  a3(&v7, a5);
  v6 = v7;
  v8 = 0;
  a1(&v7);

  sub_265BB85E0(v6, 0);
}

uint64_t sub_265BD1870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v9 = sub_265BF2E40();
  v10 = swift_allocObject();
  v10[2] = a1;
  v10[3] = a2;
  v10[4] = a4;
  v10[5] = a5;

  v9(sub_265BD1FAC, v10);
}

uint64_t sub_265BD1944(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *), uint64_t a4, void (*a5)(uint64_t))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v18 - v13;
  if (a2)
  {
    a5(a1);
    v15 = sub_265BF2E40();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;

    v15(sub_265BB8864, v16);

    return (*(v11 + 8))(v14, v10);
  }

  else
  {
    v18 = a1;
    v19 = 0;
    return a3(&v18);
  }
}

uint64_t sub_265BD1B2C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

id sub_265BD1C3C(id a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    return a1;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_265BD1C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 16);
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  *(v7 + 32) = *a1;
  *(v7 + 48) = v6;

  swift_unknownObjectRetain();

  return sub_265BF2DF0();
}

void sub_265BD1D10(void (*a1)(__int128 *), uint64_t a2, void (*a3)(void **__return_ptr, __int128 *), uint64_t a4, __int128 *a5)
{
  v6 = *(a5 + 2);
  v8 = *a5;
  v9 = v6;
  a3(&v10, &v8);
  v7 = v10;
  *&v8 = v10;
  BYTE8(v8) = 0;
  a1(&v8);

  sub_265BB85E0(v7, 0);
}

uint64_t sub_265BD1DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  return sub_265BF2DF0();
}

void sub_265BD1E40(void (*a1)(void **), uint64_t a2, void (*a3)(void **__return_ptr))
{
  a3(&v5);
  v4 = v5;
  v6 = 0;
  a1(&v5);

  sub_265BB85E0(v4, 0);
}

unint64_t sub_265BD1FD0()
{
  result = qword_2810683D8[0];
  if (!qword_2810683D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810683D8);
  }

  return result;
}

uint64_t sub_265BD2060()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_265BD20A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BD2104(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_265BF2CC0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = (v7 + 10) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v2 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = v2 + v8;
  v13 = *v12;
  v14 = v9[2];
  v15 = *(v12 + 8);

  return sub_265BCD2C0(a1, a2, v2 + v6, v10, v11, v14, v13, v15);
}

uint64_t sub_265BD21C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_265BD2214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4A0, &qword_265BF5020);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_265BD227C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
}

uint64_t objectdestroy_48Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_265BD22F4(__int128 *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v7 = *a1;
  v8 = v4;
  v9 = v5;
  return v2(&v7);
}

uint64_t sub_265BD2340(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v9 = a4 & 1;
  return v5(v8);
}

uint64_t sub_265BD2384(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_265BD23EC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_265BD244C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BD24B0(void *a1)
{
  v3 = *(type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_265BCDF48(a1, *(v1 + 16), (v1 + v4), *v5, v5[1]);
}

uint64_t sub_265BD2560@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_265BF2CC0() - 8);
  v6 = (*(v5 + 80) + 112) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_265BC9644(a1, v7, v2 + 24, v2 + v6, a2, v8);
}

uint64_t sub_265BD263C(void *a1)
{
  v3 = *(sub_265BF2CC0() - 8);
  v4 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265BCA270(a1, v1 + 16, v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_265BD2718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteParticipantConnectionBroker.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BD277C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_265BBABEC();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_265BF3690();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_265BF3690();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_265BD287C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_265BF3690();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_265BF3690();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_265BD1698(result);

  return sub_265BD277C(v4, v2, 0);
}

uint64_t sub_265BD2954()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  return sub_265BC3EF4(v1, v2);
}

uint64_t sub_265BD2980@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_265BF2CC0() - 8);
  v4 = (*(v3 + 80) + 104) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];

  return sub_265BC9C48(v1 + 16, v1 + v4, v6, v7, v8, a1);
}

uint64_t sub_265BD2A28()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t objectdestroy_60Tm(void (*a1)(void), uint64_t a2)
{
  v5 = v2[2];

  v6 = v2[4];

  v7 = v2[6];

  v8 = v2[10];

  v9 = v2[12];

  v10 = v2[13];

  a1(v2[15]);

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_265BD2B00()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_265BD2B28()
{
  result = qword_28003C4B8;
  if (!qword_28003C4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C4B8);
  }

  return result;
}

unint64_t sub_265BD2B7C()
{
  result = qword_28003C4C0;
  if (!qword_28003C4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C4C0);
  }

  return result;
}

unint64_t sub_265BD2BEC()
{
  result = qword_28003C4C8;
  if (!qword_28003C4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C4C8);
  }

  return result;
}

uint64_t objectdestroy_137Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 37, 7);
}

uint64_t objectdestroy_27Tm_0()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

void sub_265BD2D24(void (*a1)(void), uint64_t a2)
{
  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  sub_265BE2EC8(a1, a2, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40));
}

uint64_t objectdestroy_30Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = *(v4 + 80);
  v6 = (v5 + 16) & ~v5;
  v7 = *(v4 + 64);
  (*(v4 + 8))(v2 + v6, v3);

  return MEMORY[0x2821FE8E8](v2, v6 + v7, v5 | 7);
}

uint64_t sub_265BD2DDC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C310, &qword_265BF5950);
  v4 = *(v3 - 8);
  v5 = *(v4 + 16);
  v6 = v1 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return v5(a1, v6, v3);
}

uint64_t objectdestroy_36Tm()
{
  v1 = sub_265BF2C30();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v0 + 24);

  (*(v2 + 8))(v0 + v4, v1);
  v8 = *(v0 + v5);

  v9 = *(v0 + v6);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_265BD2F4C(uint64_t a1)
{
  v3 = *(sub_265BF2C30() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_265BD0A14(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_265BD30C4(void *a1)
{
  v3 = *(type metadata accessor for RemoteParticipantConnectionBroker.ParticipantConnectionIntent(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  return sub_265BC6ABC(a1, *(v1 + 16), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_265BD3170(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t objectdestroy_79Tm(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + 24);

  a1(*(v2 + 32));

  return MEMORY[0x2821FE8E8](v2, a2, 7);
}

uint64_t sub_265BD32A0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19SeymourServicesCore33RemoteParticipantConnectionBroker_state;
  swift_beginAccess();
  return sub_265BD2384(v1 + v3, a1, type metadata accessor for RemoteParticipantConnectionBroker.State);
}

id sub_265BD3314(id result, char a2)
{
  if (a2)
  {
    return result;
  }

  return result;
}

uint64_t RemoteParticipantHandshake.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_265BF2D90();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t RemoteParticipantHandshake.response.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemoteParticipantHandshake() + 20);

  return sub_265BD34BC(v3, a1);
}

uint64_t type metadata accessor for RemoteParticipantHandshake()
{
  result = qword_281068700;
  if (!qword_281068700)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_265BD34BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C4D0, &qword_265BF51A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RemoteParticipantHandshake.init(request:response:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_265BF2D90();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for RemoteParticipantHandshake() + 20);

  return sub_265BD35BC(a2, v7);
}

uint64_t sub_265BD35BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C4D0, &qword_265BF51A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_265BD3654()
{
  sub_265BF2D90();
  if (v0 <= 0x3F)
  {
    sub_265BD36D8();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265BD36D8()
{
  if (!qword_2810688F8)
  {
    sub_265BF2DA0();
    v0 = sub_265BF35A0();
    if (!v1)
    {
      atomic_store(v0, &qword_2810688F8);
    }
  }
}

uint64_t sub_265BD3760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_265BE4A38(a1, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  else
  {
    v11 = *v3;
    v12 = sub_265BE38DC(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v19 = *v4;
      if (!v15)
      {
        sub_265BE4F74();
        v16 = v19;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      result = sub_265BE457C(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_265BD3858(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *(a1 + 8);
  if (v7)
  {
    v8 = *(a1 + 16);
    v24[0] = *a1;
    v24[1] = v7;
    v24[2] = v8;
    v25 = *(a1 + 24);
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v3;
    sub_265BE4BB0(v24, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v23;
  }

  else
  {
    v12 = *v3;
    v13 = sub_265BE38DC(a2, a3);
    LOBYTE(v12) = v14;

    if (v12)
    {
      v15 = *v4;
      v16 = swift_isUniquelyReferenced_nonNull_native();
      v17 = *v4;
      v24[0] = *v4;
      if (!v16)
      {
        sub_265BE50E0();
        v17 = v24[0];
      }

      v18 = *(*(v17 + 48) + 16 * v13 + 8);

      v19 = (*(v17 + 56) + 40 * v13);
      v21 = v19[1];
      v20 = v19[2];
      v22 = v19[4];
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();
      result = sub_265BE472C(v13, v17);
      *v4 = v17;
    }
  }

  return result;
}

uint64_t TransactionCoordinator.init(delay:timerProvider:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v17 = a1;
  v16 = sub_265BF3510();
  v5 = *(v16 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_265BF34F0();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = sub_265BF32A0();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C4E0, &qword_265BF5240);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = MEMORY[0x277D84F98];
  *a2 = v13;
  sub_265BC3598();
  sub_265BF3290();
  v18 = MEMORY[0x277D84F90];
  sub_265BD3BE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C4F8, &qword_265BF5248);
  sub_265BD3C38();
  sub_265BF35C0();
  (*(v5 + 104))(v8, *MEMORY[0x277D85260], v16);
  *(a2 + 8) = sub_265BF3530();
  *(a2 + 16) = a3;
  return sub_265BB4A90(v17, a2 + 24);
}

unint64_t sub_265BD3BE0()
{
  result = qword_28003C4F0;
  if (!qword_28003C4F0)
  {
    sub_265BF34F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C4F0);
  }

  return result;
}

unint64_t sub_265BD3C38()
{
  result = qword_28003C500;
  if (!qword_28003C500)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_28003C4F8, &qword_265BF5248);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C500);
  }

  return result;
}

uint64_t sub_265BD3C9C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_265BF3240();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*v3 + 6);
  v18 = 0;
  v19 = 0xE000000000000000;
  sub_265BF3620();

  v18 = 0xD000000000000012;
  v19 = 0x8000000265BFA030;
  MEMORY[0x26676D1B0](a1, a2);
  sub_265BF3380();

  v12 = os_transaction_create();

  if (v12)
  {
  }

  else
  {
    sub_265BF3120();

    v14 = sub_265BF3230();
    v15 = sub_265BF34D0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = v17;
      *v16 = 141558274;
      *(v16 + 4) = 1752392040;
      *(v16 + 12) = 2080;
      *(v16 + 14) = sub_265BB064C(a1, a2, &v18);
      _os_log_impl(&dword_265BAD000, v14, v15, "Unable to acquire transaction for %{mask.hash}s", v16, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
      MEMORY[0x26676DCA0](v17, -1, -1);
      MEMORY[0x26676DCA0](v16, -1, -1);
    }

    result = (*(v8 + 8))(v11, v7);
    a1 = 0;
    a2 = 0;
    v12 = 0;
  }

  *a3 = a1;
  a3[1] = a2;
  a3[3] = 0;
  a3[4] = 0;
  a3[2] = v12;
  return result;
}

Swift::Int_optional __swiftcall TransactionCoordinator.queryTransactionCount(label:)(Swift::String label)
{
  v2 = *v1;
  os_unfair_lock_lock(*v1 + 6);
  sub_265BD4024(&v2[4], &v5);
  os_unfair_lock_unlock(v2 + 6);
  v3 = v5;
  v4 = v6;
  result.value = v3;
  result.is_nil = v4;
  return result;
}

unint64_t sub_265BD3F64@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *result;
  if (*(*result + 16))
  {
    result = sub_265BE38DC(a2, a3);
    if (v6)
    {
      v7 = (*(v5 + 56) + 40 * result);
      v8 = *v7;
      v9 = v7[1];
      v11 = v7[2];
      v10 = v7[3];
      v12 = v7[4];
      swift_unknownObjectRetain();

      swift_unknownObjectRetain();
      result = sub_265BD54E8(v8, v9);
      v13 = 0;
    }

    else
    {
      v10 = 0;
      v13 = 1;
    }
  }

  else
  {
    v10 = 0;
    v13 = 1;
  }

  *a4 = v10;
  *(a4 + 8) = v13;
  return result;
}

void TransactionCoordinator.beginTransaction(label:sourceLocation:)()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_265BD46D8(&v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_265BD4098(void *a1, uint64_t a2, unint64_t a3, void *a4, _OWORD *a5)
{
  v10 = sub_265BF3240();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v66 = (&v61 - v16);
  v17 = *a1;
  v18 = *(*a1 + 16);
  v70 = a2;
  if (v18 && (v19 = sub_265BE38DC(a2, a3), (v20 & 1) != 0))
  {
    v21 = (*(v17 + 56) + 40 * v19);
    v22 = a1;
    v23 = v15;
    v24 = a3;
    v25 = a4;
    v26 = a5;
    v27 = v11;
    v28 = v10;
    v29 = v21[1];
    v30 = v21[2];
    v31 = v21[3];
    v68 = v21[4];
    swift_unknownObjectRetain();

    v67 = v30;
    v10 = v28;
    v11 = v27;
    a5 = v26;
    a4 = v25;
    a3 = v24;
    v15 = v23;
    a1 = v22;
    a2 = v70;
    result = swift_unknownObjectRetain();
  }

  else
  {
    result = sub_265BD3C9C(a2, a3, &v71);
    v29 = v72;
    if (!v72)
    {
      return result;
    }

    v31 = v74;
    v67 = v73;
    v68 = v75;
  }

  v69 = v29;
  if (v31 < 1)
  {
    v66 = v11;
    sub_265BF3120();
    v43 = *a5;
    v76 = *(a5 + 24);
    v77 = v43;

    sub_265BD53D8(&v77, &v78);
    sub_265BD53D8(&v76, &v78);
    v44 = sub_265BF3230();
    v45 = v15;
    v46 = sub_265BF34E0();

    sub_265BD5434(&v77);
    sub_265BD5434(&v76);
    if (os_log_type_enabled(v44, v46))
    {
      v47 = swift_slowAlloc();
      v65 = a1;
      v48 = v47;
      v49 = swift_slowAlloc();
      v78 = v49;
      *v48 = 141558786;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2080;
      *(v48 + 14) = sub_265BB064C(v70, a3, &v78);
      *(v48 + 22) = 2160;
      *(v48 + 24) = 1752392040;
      *(v48 + 32) = 2080;
      v50 = sub_265BF2F70();
      v52 = sub_265BB064C(v50, v51, &v78);

      *(v48 + 34) = v52;
      _os_log_impl(&dword_265BAD000, v44, v46, "Beginning Transaction: %{mask.hash}s. Source: %{mask.hash}s", v48, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v49, -1, -1);
      v53 = v48;
      a2 = v70;
      a1 = v65;
      MEMORY[0x26676DCA0](v53, -1, -1);
    }

    v66[1](v45, v10);
    v78 = a2;
    v79 = a3;
    v80 = v67;
    v81 = xmmword_265BF5230;

    swift_unknownObjectRetain();
    v54 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v82 = *a1;
    sub_265BE4BB0(&v78, a2, a3, isUniquelyReferenced_nonNull_native);
    swift_unknownObjectRelease();

    result = swift_unknownObjectRelease();
    *a1 = v82;
  }

  else
  {
    v64 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      __break(1u);
    }

    else
    {
      v63 = a4;
      v65 = a1;
      v33 = v66;
      sub_265BF3120();
      v34 = *a5;
      v76 = *(a5 + 24);
      v77 = v34;

      sub_265BD53D8(&v77, &v78);
      sub_265BD53D8(&v76, &v78);
      v35 = sub_265BF3230();
      v36 = sub_265BF34E0();

      sub_265BD5434(&v77);
      sub_265BD5434(&v76);
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v62 = v10;
        v39 = v38;
        v78 = v38;
        *v37 = 134218754;
        *(v37 + 4) = v64;
        *(v37 + 12) = 2080;
        *(v37 + 14) = sub_265BB064C(v70, a3, &v78);
        *(v37 + 22) = 2160;
        *(v37 + 24) = 1752392040;
        *(v37 + 32) = 2080;
        v40 = sub_265BF2F70();
        v42 = sub_265BB064C(v40, v41, &v78);

        *(v37 + 34) = v42;
        _os_log_impl(&dword_265BAD000, v35, v36, "Beginning Transaction (%ld): %s. Source: %{mask.hash}s", v37, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v39, -1, -1);
        MEMORY[0x26676DCA0](v37, -1, -1);

        (*(v11 + 1))(v33, v62);
      }

      else
      {

        (*(v11 + 1))(v33, v10);
      }

      v56 = v65;
      if (v68)
      {
        v57 = v63[7];
        __swift_project_boxed_opaque_existential_1(v63 + 3, v63[6]);
        swift_unknownObjectRetain();
        sub_265BF3090();
        swift_unknownObjectRelease();
      }

      v58 = v70;
      v78 = v70;
      v79 = a3;
      v80 = v67;
      v81 = v64;

      swift_unknownObjectRetain();
      v59 = *v56;
      v60 = swift_isUniquelyReferenced_nonNull_native();
      v82 = *v56;
      sub_265BE4BB0(&v78, v58, a3, v60);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      *v56 = v82;
    }
  }

  return result;
}

void TransactionCoordinator.endTransaction(label:sourceLocation:)()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_265BD4E34(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_265BD4750(uint64_t *a1, uint64_t a2, unint64_t a3, void *a4, __int128 *a5)
{
  v11 = sub_265BF3240();
  v72 = *(v11 - 8);
  v12 = *(v72 + 64);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v63[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = MEMORY[0x28223BE20](v13);
  v18 = &v63[-v17];
  v73 = a1;
  v19 = *a1;
  if (*(v19 + 16))
  {
    result = sub_265BE38DC(a2, a3);
    if (v20)
    {
      v67 = a2;
      v21 = (*(v19 + 56) + 40 * result);
      v22 = v21[2];
      v24 = v21[3];
      v23 = v21[4];
      v70 = v21[1];
      v71 = v5;
      v68 = v23;
      v69 = v22;
      if (v24 < 2)
      {
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        sub_265BF3120();
        sub_265BD53A0(a4, &v75);
        v36 = *a5;
        v79 = *(a5 + 24);
        v80[0] = v36;

        sub_265BD53D8(v80, v74);
        sub_265BD53D8(&v79, v74);
        v37 = sub_265BF3230();
        v38 = sub_265BF34E0();

        sub_265BD5434(v80);
        sub_265BD5434(&v79);
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v65 = v37;
          v40 = v39;
          v66 = swift_slowAlloc();
          v74[0] = v66;
          *v40 = 141559042;
          v64 = v38;
          *(v40 + 4) = 1752392040;
          *(v40 + 12) = 2080;
          v41 = v67;
          *(v40 + 14) = sub_265BB064C(v67, a3, v74);
          *(v40 + 22) = 2048;
          v42 = v76;
          sub_265BD5488(&v75);
          *(v40 + 24) = v42;
          *(v40 + 32) = 2160;
          *(v40 + 34) = 1752392040;
          *(v40 + 42) = 2080;
          v43 = sub_265BF2F70();
          v45 = sub_265BB064C(v43, v44, v74);

          *(v40 + 44) = v45;
          v46 = v65;
          _os_log_impl(&dword_265BAD000, v65, v64, "Ending Transaction: %{mask.hash}s at zero. Delaying cleanup by %f seconds. Source: %{mask.hash}s", v40, 0x34u);
          v47 = v66;
          swift_arrayDestroy();
          MEMORY[0x26676DCA0](v47, -1, -1);
          MEMORY[0x26676DCA0](v40, -1, -1);

          (*(v72 + 8))(v15, v11);
        }

        else
        {

          sub_265BD5488(&v75);
          (*(v72 + 8))(v15, v11);
          v41 = v67;
        }

        v51 = a4[7];
        __swift_project_boxed_opaque_existential_1(a4 + 3, a4[6]);
        v52 = a4[2];
        v53 = a4[1];
        sub_265BD53A0(a4, &v75);
        v54 = swift_allocObject();
        v55 = v76;
        *(v54 + 16) = v75;
        *(v54 + 32) = v55;
        v56 = v78;
        *(v54 + 48) = v77;
        *(v54 + 64) = v56;
        *(v54 + 80) = v41;
        *(v54 + 88) = a3;
        v57 = a5[1];
        *(v54 + 96) = *a5;
        *(v54 + 112) = v57;
        *(v54 + 128) = *(a5 + 4);
        swift_bridgeObjectRetain_n();
        v58 = v41;
        v59 = v69;
        swift_unknownObjectRetain();
        sub_265BD53D8(v80, v74);
        sub_265BD53D8(&v79, v74);
        v60 = sub_265BF3070();

        *&v75 = v58;
        *(&v75 + 1) = a3;
        v76 = v59;
        *&v77 = v60;
        v48 = v73;
        v61 = *v73;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74[0] = *v48;
        sub_265BE4BB0(&v75, v58, a3, isUniquelyReferenced_nonNull_native);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      else
      {
        v25 = v24 - 1;
        swift_unknownObjectRetain();

        swift_unknownObjectRetain();
        sub_265BF3120();
        v26 = *a5;
        v79 = *(a5 + 24);
        v80[0] = v26;

        sub_265BD53D8(v80, &v75);
        sub_265BD53D8(&v79, &v75);
        v27 = sub_265BF3230();
        v28 = sub_265BF34E0();

        sub_265BD5434(v80);
        sub_265BD5434(&v79);
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v30 = swift_slowAlloc();
          *&v75 = v30;
          *v29 = 134218754;
          *(v29 + 4) = v25;
          LODWORD(v65) = v28;
          *(v29 + 12) = 2080;
          v66 = v25;
          v31 = v67;
          *(v29 + 14) = sub_265BB064C(v67, a3, &v75);
          *(v29 + 22) = 2160;
          *(v29 + 24) = 1752392040;
          *(v29 + 32) = 2080;
          v32 = sub_265BF2F70();
          v34 = sub_265BB064C(v32, v33, &v75);

          *(v29 + 34) = v34;
          _os_log_impl(&dword_265BAD000, v27, v65, "Ending Transaction (%ld): %s. Source: %{mask.hash}s", v29, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x26676DCA0](v30, -1, -1);
          MEMORY[0x26676DCA0](v29, -1, -1);

          (*(v72 + 8))(v18, v11);
          v35 = v66;
        }

        else
        {

          (*(v72 + 8))(v18, v11);
          v35 = v25;
          v31 = v67;
        }

        *&v75 = v31;
        *(&v75 + 1) = a3;
        *&v76 = v69;
        *(&v76 + 1) = v35;
        *&v77 = 0;
        swift_unknownObjectRetain();

        v48 = v73;
        v49 = *v73;
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v74[0] = *v48;
        sub_265BE4BB0(&v75, v31, a3, v50);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      *v48 = v74[0];
    }
  }

  return result;
}

void sub_265BD4E54(os_unfair_lock_s **a1)
{
  v1 = *a1;
  os_unfair_lock_lock(*a1 + 6);
  sub_265BD54C8(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_265BD4EAC(uint64_t a1, uint64_t a2, unint64_t a3, __int128 *a4)
{
  v29 = a2;
  v24 = sub_265BF3240();
  v8 = *(v24 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v24);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3120();
  v12 = *a4;
  v25 = *(a4 + 24);
  v26 = v12;

  sub_265BD53D8(&v26, v27);
  sub_265BD53D8(&v25, v27);
  v13 = sub_265BF3230();
  v14 = sub_265BF34E0();

  sub_265BD5434(&v26);
  sub_265BD5434(&v25);
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v23[2] = v4;
    v16 = v15;
    v17 = swift_slowAlloc();
    v23[1] = a1;
    v18 = v17;
    *&v27[0] = v17;
    *v16 = 141558786;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_265BB064C(v29, a3, v27);
    *(v16 + 22) = 2160;
    *(v16 + 24) = 1752392040;
    *(v16 + 32) = 2080;
    v19 = sub_265BF2F70();
    v21 = sub_265BB064C(v19, v20, v27);

    *(v16 + 34) = v21;
    _os_log_impl(&dword_265BAD000, v13, v14, "Ended Transaction: %{mask.hash}s. Source: %{mask.hash}s", v16, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v18, -1, -1);
    MEMORY[0x26676DCA0](v16, -1, -1);
  }

  (*(v8 + 8))(v11, v24);
  v28 = 0;
  memset(v27, 0, sizeof(v27));

  return sub_265BD3858(v27, v29, a3);
}

uint64_t sub_265BD5134()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_265BD5568(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 6);
  return v3;
}

void sub_265BD5194()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_265BD5550(&v1[4]._os_unfair_lock_opaque);
  os_unfair_lock_unlock(v1 + 6);
}

void sub_265BD51EC()
{
  v1 = *v0;
  os_unfair_lock_lock(*v0 + 6);
  sub_265BD5538(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_265BD5258(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_265BD52A0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_265BD5300(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_265BD5348(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_265BD54B8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_265BD4E54((v0 + 16));
}

uint64_t sub_265BD54E8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {

    swift_unknownObjectRelease();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t BluetoothScannerProvider.makeAggressiveScanner()@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D54C68]) init];
  [v2 setDiscoveryFlags_];
  [v2 setScanRate_];
  result = sub_265BB5350(0, &qword_28003C508, 0x277D54C68);
  a1[3] = result;
  a1[4] = &protocol witness table for SFDeviceDiscovery;
  *a1 = v2;
  return result;
}

uint64_t BluetoothScannerProvider.makePassiveScanner(role:)@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  [v4 setFlags_];
  [v4 setControlFlags_];
  [v4 setRssiThreshold_];
  result = sub_265BB5350(0, &qword_28003C510, 0x277D44160);
  a2[3] = result;
  a2[4] = &protocol witness table for RPCompanionLinkClient;
  *a2 = v4;
  return result;
}

uint64_t sub_265BD56D0@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D54C68]) init];
  [v2 setDiscoveryFlags_];
  [v2 setScanRate_];
  result = sub_265BB5350(0, &qword_28003C508, 0x277D54C68);
  a1[3] = result;
  a1[4] = &protocol witness table for SFDeviceDiscovery;
  *a1 = v2;
  return result;
}

uint64_t sub_265BD5760@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x277D44160]) init];
  [v4 setFlags_];
  [v4 setControlFlags_];
  [v4 setRssiThreshold_];
  result = sub_265BB5350(0, &qword_28003C510, 0x277D44160);
  a2[3] = result;
  a2[4] = &protocol witness table for RPCompanionLinkClient;
  *a2 = v4;
  return result;
}

void sub_265BD5854(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4(a2);
}

Swift::Void __swiftcall RPCompanionLinkClient.activate()()
{
  v1 = v0;
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v3 + 8))(v6, v2);
  aBlock[4] = sub_265BD5A3C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_265BD5854;
  aBlock[3] = &block_descriptor_6;
  v7 = _Block_copy(aBlock);
  [v1 activateWithCompletion_];
  _Block_release(v7);
}

uint64_t sub_265BD5A3C(void *a1)
{
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_265BF3130();
    v9 = a1;
    v10 = sub_265BF3230();
    v11 = sub_265BF34D0();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v18 = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = MEMORY[0x26676D550](v17[2], v17[3]);
      v16 = sub_265BB064C(v14, v15, &v18);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_265BAD000, v10, v11, "Error activating passive scanner: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v13);
      MEMORY[0x26676DCA0](v13, -1, -1);
      MEMORY[0x26676DCA0](v12, -1, -1);
    }

    else
    {
    }

    return (*(v3 + 8))(v7, v2);
  }

  return result;
}

uint64_t Collection<>.matchingParticipant(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*(a2 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  (*(v9 + 16))(&v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v3, a2);
  v13 = a1;
  v10 = *(a3 + 8);
  return sub_265BF33D0();
}

BOOL sub_265BD5D78(void *a1)
{
  v2 = sub_265BF2D60();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  v4 = MEMORY[0x28223BE20](v2);
  v31 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v31 - v6;
  v8 = sub_265BF2C90();
  v10 = v9;
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  v13 = (*(v12 + 32))(v11, v12);
  if (!v10)
  {
    if (!v14)
    {
      return 1;
    }

    goto LABEL_10;
  }

  if (!v14)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v8 == v13 && v10 == v14)
  {

    return 1;
  }

  v16 = sub_265BF36E0();

  if (v16)
  {
    return 1;
  }

LABEL_11:
  v17 = sub_265BF2CA0();
  v19 = v18;
  v20 = a1[3];
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v20);
  v22 = (*(v21 + 48))(v20, v21);
  if (!v19)
  {
    if (!v23)
    {
      goto LABEL_23;
    }

LABEL_20:

    return 0;
  }

  if (!v23)
  {
    goto LABEL_20;
  }

  if (v17 == v22 && v19 == v23)
  {
  }

  else
  {
    v25 = sub_265BF36E0();

    if ((v25 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_23:
  sub_265BF2C80();
  v27 = v31;
  v26 = v32;
  (*(v32 + 104))(v31, *MEMORY[0x277D53368], v2);
  sub_265BD6220();
  v28 = sub_265BF3320();
  v29 = *(v26 + 8);
  v29(v27, v2);
  v29(v7, v2);
  return (v28 & 1) == 0;
}

uint64_t sub_265BD6094()
{
  v1 = [*v0 deviceIRKData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_265BF2BD0();

  return v3;
}

uint64_t sub_265BD6130(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_265BF3340();

  return v6;
}

unint64_t sub_265BD6220()
{
  result = qword_28003C518;
  if (!qword_28003C518)
  {
    sub_265BF2D60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C518);
  }

  return result;
}

unint64_t sub_265BD6278()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C358, &qword_265BF4C08);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_265BF4BC0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000265BFA090;
  *(inited + 48) = sub_265BF3440();
  *(inited + 56) = 0xD000000000000010;
  *(inited + 64) = 0x8000000265BF9950;
  *(inited + 72) = sub_265BF3330();
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x8000000265BF9970;
  sub_265BF3670();
  v1 = sub_265BF3330();

  *(inited + 96) = v1;
  *(inited + 104) = 0x65636976726573;
  *(inited + 112) = 0xE700000000000000;
  sub_265BF3670();
  v2 = sub_265BF3330();

  *(inited + 120) = v2;
  *(inited + 128) = 0x6369706F74;
  *(inited + 136) = 0xE500000000000000;
  sub_265BF3670();
  v3 = sub_265BF3330();

  *(inited + 144) = v3;
  v4 = sub_265BE5464(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C368, &qword_265BF54A0);
  swift_arrayDestroy();
  return v4;
}

unint64_t sub_265BD64D4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 24);
  *(v0 + 25);
  *(v0 + 26);
  return sub_265BD6278();
}

__n128 __swift_memcpy27_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 11) = *(a2 + 11);
  *a1 = result;
  return result;
}

uint64_t sub_265BD6520(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 27))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265BD6568(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 26) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 27) = 1;
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

    *(result + 27) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_265BD65D8()
{
  result = sub_265BF3460();
  qword_281068828 = v1;
  return result;
}

uint64_t sub_265BD6620()
{
  result = sub_265BF3460();
  qword_28003C520 = v1;
  return result;
}

uint64_t sub_265BD6668()
{
  result = sub_265BF3460();
  qword_281068818 = v1;
  return result;
}

double sub_265BD66B0(void *a1, uint64_t a2)
{
  if (*a1 == -1)
  {
    return *a2;
  }

  swift_once();
  return *a2;
}

uint64_t sub_265BD6710(char a1)
{
  if ((a1 & 4) != 0)
  {
    v1 = 4;
  }

  else
  {
    v1 = 3;
  }

  if (a1)
  {
    v2 = 2;
  }

  else
  {
    v2 = v1;
  }

  if ((a1 & 2) != 0)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if ((a1 & 8) != 0)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t RPDeviceChangeFlags.logOutput.getter(__int16 a1)
{
  strcpy(v3, "ChangeFlags: ");
  HIWORD(v3[1]) = -4864;
  if (a1)
  {
    MEMORY[0x26676D1B0](1986281760, 0xE400000000000000);
    if ((a1 & 2) == 0)
    {
LABEL_3:
      if ((a1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_16;
    }
  }

  else if ((a1 & 2) == 0)
  {
    goto LABEL_3;
  }

  MEMORY[0x26676D1B0](0x7274744120, 0xE500000000000000);
  if ((a1 & 4) == 0)
  {
LABEL_4:
    if ((a1 & 8) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

LABEL_16:
  MEMORY[0x26676D1B0](0x7473694420, 0xE500000000000000);
  if ((a1 & 8) != 0)
  {
LABEL_5:
    MEMORY[0x26676D1B0](0x45496946695720, 0xE700000000000000);
  }

LABEL_6:
  if ((a1 & 0x10) != 0)
  {
    MEMORY[0x26676D1B0](7163424, 0xE300000000000000);
    if ((a1 & 0x20) == 0)
    {
LABEL_8:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_20;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_8;
  }

  MEMORY[0x26676D1B0](0x4953535220, 0xE500000000000000);
  if ((a1 & 0x40) == 0)
  {
LABEL_9:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

LABEL_20:
  MEMORY[0x26676D1B0](0x4449535320, 0xE500000000000000);
  if ((a1 & 0x80) == 0)
  {
LABEL_10:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_11;
    }

LABEL_22:
    MEMORY[0x26676D1B0](0x636F4C655220, 0xE600000000000000);
    if ((a1 & 0x200) == 0)
    {
      return v3[0];
    }

    goto LABEL_12;
  }

LABEL_21:
  MEMORY[0x26676D1B0](0x786F725020, 0xE500000000000000);
  if ((a1 & 0x100) != 0)
  {
    goto LABEL_22;
  }

LABEL_11:
  if ((a1 & 0x200) != 0)
  {
LABEL_12:
    MEMORY[0x26676D1B0](7164448, 0xE300000000000000);
  }

  return v3[0];
}

uint64_t sub_265BD68EC@<X0>(uint64_t *a1@<X8>)
{
  if (([v1 statusFlags] & 0x80000) != 0)
  {
    v8 = MEMORY[0x277D53360];
  }

  else if (([v1 statusFlags] & 0x4000) != 0 && (v3 = objc_msgSend(v1, sel_accountID)) != 0)
  {
    v4 = v3;
    v5 = sub_265BF3340();
    v7 = v6;

    *a1 = v5;
    a1[1] = v7;
    v8 = MEMORY[0x277D53370];
  }

  else if (([v1 statusFlags] & 0x1000000000) != 0 && (v9 = objc_msgSend(v1, sel_accountID)) != 0)
  {
    v10 = v9;
    v11 = sub_265BF3340();
    v13 = v12;

    *a1 = v11;
    a1[1] = v13;
    v8 = MEMORY[0x277D53378];
  }

  else
  {
    v8 = MEMORY[0x277D53368];
  }

  v14 = *v8;
  v15 = sub_265BF2D60();
  v16 = *(*(v15 - 8) + 104);

  return v16(a1, v14, v15);
}

uint64_t DataProtectionMonitor.__allocating_init(eventHub:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 40) = -1;
  *(v4 + 44) = 4;
  v5 = sub_265BF2EC0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v4 + 16) = sub_265BF2EB0();
  *(v4 + 24) = a1;
  *(v4 + 32) = a2;
  return v4;
}

uint64_t DataProtectionMonitor.init(eventHub:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = -1;
  *(v2 + 44) = 4;
  v5 = sub_265BF2EC0();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  *(v2 + 16) = sub_265BF2EB0();
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return v2;
}

uint64_t DataProtectionMonitor.deinit()
{
  v1 = v0;
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v3 + 8))(v6, v2);
  v7 = *(v1 + 16);
  sub_265BF2EA0();

  v8 = *(v1 + 24);
  swift_unknownObjectRelease();
  return v1;
}

Swift::Void __swiftcall DataProtectionMonitor.endDataProtectionMonitoring()()
{
  v1 = v0;
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v3 + 8))(v6, v2);
  v7 = *(v1 + 16);
  sub_265BF2EA0();
}

uint64_t DataProtectionMonitor.__deallocating_deinit()
{
  DataProtectionMonitor.deinit();

  return MEMORY[0x2821FE8D8](v0, 45, 7);
}

uint64_t sub_265BD6DB0(uint64_t *a1)
{
  v3 = *a1;
  v4 = sub_265BF3240();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v29 - v10;
  if (*(a1 + 44) == 4)
  {
    sub_265BF3130();
    v12 = sub_265BF3230();
    v13 = sub_265BF34D0();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_265BAD000, v12, v13, "Received notifyd notification when monitor is inactive!", v14, 2u);
      MEMORY[0x26676DCA0](v14, -1, -1);
    }

    return (*(v5 + 8))(v11, v4);
  }

  else
  {
    sub_265BF3130();

    v16 = sub_265BF3230();
    v17 = sub_265BF34E0();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v31 = v1;
      v19 = v18;
      v30 = swift_slowAlloc();
      v33 = v30;
      *v19 = 136446466;
      v32 = a1;

      v20 = sub_265BF3350();
      v22 = sub_265BB064C(v20, v21, &v33);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_265BB064C(0xD000000000000024, 0x8000000265BFA1C0, &v33);
      _os_log_impl(&dword_265BAD000, v16, v17, "%{public}s Received notifyd notification name: %{public}s", v19, 0x16u);
      v23 = v30;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v23, -1, -1);
      MEMORY[0x26676DCA0](v19, -1, -1);
    }

    (*(v5 + 8))(v9, v4);
    v24 = MKBGetDeviceLockState();
    v25 = 2;
    v26 = MKBDeviceUnlockedSinceBoot();
    if (v24 != 3 && v24)
    {
      v25 = v26 == 1;
    }

    *(a1 + 44) = v25;
    v28 = a1[3];
    v27 = a1[4];
    swift_getObjectType();
    LOBYTE(v33) = v25;
    sub_265BD82DC();
    return sub_265BF2FA0();
  }
}

Swift::Void __swiftcall DataProtectionMonitor.beginDataProtectionMonitoring()()
{
  v1 = v0;
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3130();
  sub_265BF3220();
  (*(v3 + 8))(v6, v2);
  v7 = *(v1 + 16);
  sub_265BF2EA0();
}

uint64_t sub_265BD723C(uint64_t a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v3 = sub_265BF3280();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_265BF3240();
  v9 = *(v8 - 8);
  v10 = v9[8];
  v11 = MEMORY[0x28223BE20](v8);
  v12 = MEMORY[0x28223BE20](v11);
  result = MEMORY[0x28223BE20](v12);
  v17 = &v44 - v16;
  if (*(a1 + 40) == -1)
  {
    v44 = v15;
    v45 = v14;
    v47 = v1;
    sub_265BF3130();
    v18 = sub_265BF3230();
    v19 = sub_265BF34E0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v46 = v9;
      v21 = v8;
      v22 = a1;
      v23 = v20;
      *v20 = 0;
      _os_log_impl(&dword_265BAD000, v18, v19, "Registering for data protection notifications", v20, 2u);
      v24 = v23;
      a1 = v22;
      v8 = v21;
      v9 = v46;
      MEMORY[0x26676DCA0](v24, -1, -1);
    }

    v46 = v9[1];
    (v46)(v17, v8);
    out_token = -1;
    sub_265BC3598();
    (*(v4 + 104))(v7, *MEMORY[0x277D851C8], v3);
    v25 = sub_265BF3540();
    (*(v4 + 8))(v7, v3);
    v26 = swift_allocObject();
    v27 = a1;
    swift_weakInit();
    aBlock[4] = sub_265BD82B0;
    aBlock[5] = v26;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_265BD791C;
    aBlock[3] = &block_descriptor_7;
    v28 = _Block_copy(aBlock);

    v29 = sub_265BF3380();
    v30 = notify_register_dispatch((v29 + 32), &out_token, v25, v28);

    _Block_release(v28);

    if (v30 || out_token == -1)
    {
      v36 = v8;
      v37 = v44;
      sub_265BF3130();
      v38 = sub_265BF3230();
      v39 = sub_265BF34D0();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 67240192;
        *(v40 + 4) = v30;
        _os_log_impl(&dword_265BAD000, v38, v39, "Error registering for data protection notifications, result: %{public}u", v40, 8u);
        MEMORY[0x26676DCA0](v40, -1, -1);
      }

      (v46)(v37, v36);
    }

    else
    {
      v31 = v45;
      sub_265BF3130();
      v32 = sub_265BF3230();
      v33 = sub_265BF34E0();
      if (os_log_type_enabled(v32, v33))
      {
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        aBlock[0] = v35;
        *v34 = 136446210;
        *(v34 + 4) = sub_265BB064C(0xD000000000000024, 0x8000000265BFA1C0, aBlock);
        _os_log_impl(&dword_265BAD000, v32, v33, "Registered for data protection notifications for name: %{public}s", v34, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v35);
        MEMORY[0x26676DCA0](v35, -1, -1);
        MEMORY[0x26676DCA0](v34, -1, -1);
      }

      (v46)(v31, v8);
      *(v27 + 40) = out_token;
    }

    v41 = MKBGetDeviceLockState();
    v42 = 2;
    result = MKBDeviceUnlockedSinceBoot();
    if (v41 != 3 && v41)
    {
      v42 = result == 1;
    }

    *(v27 + 44) = v42;
  }

  v43 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_265BD77B8()
{
  v0 = sub_265BF3240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_265BF3130();
    sub_265BF3220();
    (*(v1 + 8))(v4, v0);
    v7 = *(v6 + 16);
    sub_265BF2EA0();
  }

  return result;
}

uint64_t sub_265BD791C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

BOOL DataProtectionMonitor.queryDataProtectionAvailability()()
{
  v1 = v0;
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v25[-v9];
  MEMORY[0x28223BE20](v8);
  v12 = &v25[-v11];
  sub_265BF3130();
  sub_265BF3220();
  v13 = *(v3 + 8);
  v13(v12, v2);
  v14 = *(v1 + 16);
  sub_265BF2EA0();
  v15 = v26;
  if (v26 == 4)
  {
    sub_265BF3130();
    v16 = sub_265BF3230();
    v17 = sub_265BF34C0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_265BAD000, v16, v17, "Data Protection Monitor is inactive, querying mobile key bag", v18, 2u);
      MEMORY[0x26676DCA0](v18, -1, -1);
    }

    v13(v10, v2);
    v19 = MKBGetDeviceLockState();
    v15 = 2;
    v20 = MKBDeviceUnlockedSinceBoot();
    if (v19 && v19 != 3)
    {
      return v20 == 1;
    }
  }

  else
  {
    sub_265BF3130();
    v21 = sub_265BF3230();
    v22 = sub_265BF34C0();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_265BAD000, v21, v22, "Data Protection Monitor is active, returning cached data protection", v23, 2u);
      MEMORY[0x26676DCA0](v23, -1, -1);
    }

    v13(v7, v2);
  }

  return v15;
}

uint64_t sub_265BD7C44(uint64_t a1)
{
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x28223BE20](v2);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 40) != -1)
  {
    sub_265BF3130();
    v8 = sub_265BF3230();
    v9 = sub_265BF34E0();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_265BAD000, v8, v9, "Deregistering for data protection notifications", v10, 2u);
      MEMORY[0x26676DCA0](v10, -1, -1);
    }

    (*(v3 + 8))(v7, v2);
    result = notify_cancel(*(a1 + 40));
    *(a1 + 40) = -1;
    *(a1 + 44) = 4;
  }

  return result;
}

uint64_t sub_265BD7DF4()
{
  v1 = sub_265BF3240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_265BF3130();
  sub_265BF3220();
  (*(v2 + 8))(v5, v1);
  v7 = *(v6 + 16);
  return sub_265BF2EA0();
}

uint64_t sub_265BD7F54()
{
  v1 = sub_265BF3240();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  sub_265BF3130();
  sub_265BF3220();
  (*(v2 + 8))(v5, v1);
  v7 = *(v6 + 16);
  return sub_265BF2EA0();
}

uint64_t getEnumTagSinglePayload for DataProtectionMonitor.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 4;
  v9 = v7 - 4;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataProtectionMonitor.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_265BD827C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_265BD8290(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_265BD82DC()
{
  result = qword_28003C528;
  if (!qword_28003C528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C528);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceConnectionService(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceConnectionService(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_265BD84C8()
{
  result = qword_28003C530;
  if (!qword_28003C530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C530);
  }

  return result;
}

uint64_t sub_265BD8534()
{
  v1 = *v0;
  sub_265BF37B0();
  MEMORY[0x26676D5D0](v1);
  return sub_265BF37E0();
}

uint64_t sub_265BD85A8()
{
  v1 = *v0;
  sub_265BF37B0();
  MEMORY[0x26676D5D0](v1);
  return sub_265BF37E0();
}

uint64_t DeviceConnectionDestination.hashValue.getter(unsigned __int8 a1)
{
  sub_265BF37B0();
  MEMORY[0x26676D5D0](a1);
  return sub_265BF37E0();
}

unint64_t sub_265BD8694()
{
  result = qword_28003C538;
  if (!qword_28003C538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28003C538);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceConnectionAuthentication(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceConnectionAuthentication(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_265BD8848(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C578, &qword_265BF5968);
    v2 = sub_265BF36C0();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_265BB08F0(*(a1 + 56) + 32 * v13, v36);
    *&v35 = v16;
    *(&v35 + 1) = v15;
    v33[2] = v35;
    v34[0] = v36[0];
    v34[1] = v36[1];
    v33[0] = v35;

    swift_dynamicCast();
    sub_265BB87C8(v34, v28);
    v29 = v25;
    v30 = v26;
    v31 = v27;
    sub_265BB87C8(v28, v32);
    v25 = v29;
    v26 = v30;
    v27 = v31;
    sub_265BB87C8(v32, v33);
    v17 = *(v2 + 40);
    result = sub_265BF35E0();
    v18 = -1 << *(v2 + 32);
    v19 = result & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v7 + 8 * (v19 >> 6))) == 0)
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
        v24 = *(v7 + 8 * v20);
        if (v24 != -1)
        {
          v10 = __clz(__rbit64(~v24)) + (v20 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v19) & ~*(v7 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v25;
    *(v11 + 16) = v26;
    *(v11 + 32) = v27;
    result = sub_265BB87C8(v33, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_265BD8B10(uint64_t a1, char a2, uint64_t (*a3)(uint64_t *))
{
  v4 = a1;
  v5 = a2 & 1;
  return a3(&v4);
}

uint64_t sub_265BD8B50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v62 = a6;
  v63 = a5;
  LODWORD(v59) = a4;
  v66 = a7;
  v65 = sub_265BF2E60();
  v67 = *(v65 - 8);
  v10 = *(v67 + 64);
  MEMORY[0x28223BE20](v65);
  v70 = &v52 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v64 = *(v71 - 8);
  v12 = *(v64 + 64);
  MEMORY[0x28223BE20](v71);
  v69 = &v52 - v13;
  v14 = sub_265BF2C30();
  v60 = *(v14 - 8);
  v61 = v14;
  v57 = *(v60 + 64);
  v15 = MEMORY[0x28223BE20](v14);
  v58 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v68 = &v52 - v17;
  v18 = sub_265BF3210();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_265BF31F0();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_265BF2F30();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  v28 = a2;
  v29 = sub_265BF2F00();
  sub_265BF2F50();

  sub_265BF3200();
  sub_265BF31E0();
  (*(v19 + 8))(v22, v18);
  sub_265BF2F50();
  v30 = sub_265BF31C0();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v54 = a1;
  v55 = v28;
  v56 = a3;
  v33 = sub_265BF3190();
  v72 = v29;
  v34 = sub_265BF3350();
  v59 = v34;
  v36 = v35;
  v37 = v68;
  sub_265BF2C20();
  v38 = swift_allocObject();
  *(v38 + 16) = v29;
  *(v38 + 24) = v33;
  *(v38 + 32) = v34;
  *(v38 + 40) = v36;
  v53 = v36;
  *(v38 + 48) = a1;
  *(v38 + 56) = v28;
  *(v38 + 64) = a3;

  sub_265BF2DF0();
  v39 = v62;
  sub_265BF2E30();
  v40 = v60;
  v41 = v58;
  v42 = v37;
  v43 = v61;
  (*(v60 + 16))(v58, v42, v61);
  v44 = (*(v40 + 80) + 57) & ~*(v40 + 80);
  v45 = (v57 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  v47 = v59;
  *(v46 + 16) = v39;
  *(v46 + 24) = v47;
  v48 = v54;
  *(v46 + 32) = v53;
  *(v46 + 40) = v48;
  *(v46 + 48) = v55;
  *(v46 + 56) = v56;
  (*(v40 + 32))(v46 + v44, v41, v43);
  *(v46 + v45) = v33;
  *(v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) = v29;

  v49 = v65;
  v50 = v70;
  sub_265BF2E20();

  (*(v67 + 8))(v50, v49);
  (*(v64 + 8))(v69, v71);
  (*(v40 + 8))(v68, v43);
}

uint64_t DeviceConnection.__allocating_init(link:destination:topic:service:analyticsReporter:preferredCompression:transportPriority:queue:)(void *a1, uint64_t a2, char a3, char a4, char a5, uint64_t a6, uint64_t a7, char a8, void *a9)
{
  v18 = *(v9 + 48);
  v19 = *(v9 + 52);
  v20 = swift_allocObject();
  *(v20 + 88) = 0;
  *(v20 + 96) = 0;
  v41 = a6;
  sub_265BB9CAC(a6, v20 + 16);
  *(v20 + 56) = a3;
  *(v20 + 64) = a1;
  *(v20 + 72) = a2;
  sub_265BD9C50(a7, v20 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression);
  *(v20 + 59) = a8 & 1;
  *(v20 + 58) = a5 & 1;
  *(v20 + 57) = a4 & 1;
  aBlock = 0;
  v43 = 0xE000000000000000;
  swift_unknownObjectRetain();
  v21 = a9;
  sub_265BF3620();
  MEMORY[0x26676D1B0](0xD000000000000012, 0x8000000265BFA210);
  sub_265BF3670();
  MEMORY[0x26676D1B0](124, 0xE100000000000000);
  sub_265BF3670();
  MEMORY[0x26676D1B0](124, 0xE100000000000000);
  v48 = a3;
  sub_265BF3670();
  v22 = sub_265BF30D0();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v20 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService) = sub_265BF30C0();
  v25 = sub_265BF2EC0();
  v26 = *(v25 + 48);
  v27 = *(v25 + 52);
  swift_allocObject();
  *(v20 + 80) = sub_265BF2EB0();
  sub_265BD9CB4();
  v28 = sub_265BF3330();

  if (a3 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C540, &qword_265BF57B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265BF5780;
    v30 = *MEMORY[0x277D44280];
    sub_265BF3340();
    sub_265BF3600();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    sub_265BE5574(inited);
    swift_setDeallocating();
    sub_265BB0750(inited + 32, &qword_28003C548, &unk_265BF5D20);
    v31 = sub_265BF32E0();

    v46 = nullsub_1;
    v47 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_265BDAB80;
    v45 = &block_descriptor_8;
    v32 = _Block_copy(&aBlock);
    [a1 registerEventID:v28 options:v31 handler:v32];
    _Block_release(v32);
  }

  else
  {
    v33 = swift_allocObject();
    swift_weakInit();
    v46 = sub_265BD9E58;
    v47 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_265BD9EF4;
    v45 = &block_descriptor_8;
    v34 = _Block_copy(&aBlock);

    [a1 registerRequestID:v28 options:0 handler:v34];
    _Block_release(v34);

    sub_265BD9CB4();
    v31 = sub_265BF3330();

    v35 = swift_allocObject();
    swift_weakInit();

    v46 = sub_265BDA150;
    v47 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v43 = 1107296256;
    v44 = sub_265BDAB80;
    v45 = &block_descriptor_4;
    v36 = _Block_copy(&aBlock);

    [a1 registerEventID:v31 options:0 handler:v36];
    _Block_release(v36);
  }

  ObjectType = swift_getObjectType();
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = *(a2 + 248);

  v39(sub_265BDAFC0, v38, ObjectType, a2);

  swift_unknownObjectRelease();
  sub_265BDAFC8(a7);
  __swift_destroy_boxed_opaque_existential_0Tm(v41);

  return v20;
}

uint64_t DeviceConnection.init(link:destination:topic:service:analyticsReporter:preferredCompression:transportPriority:queue:)(void *a1, uint64_t a2, unsigned __int8 a3, char a4, char a5, uint64_t *a6, uint64_t a7, char a8, void *a9)
{
  v10 = v9;
  *(v10 + 88) = 0;
  *(v10 + 96) = 0;
  v18 = a3;
  sub_265BB9CAC(a6, v10 + 16);
  *(v10 + 56) = a3;
  *(v10 + 64) = a1;
  *(v10 + 72) = a2;
  v39 = a7;
  sub_265BD9C50(a7, v10 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression);
  *(v10 + 59) = a8 & 1;
  *(v10 + 58) = a5 & 1;
  *(v10 + 57) = a4 & 1;
  aBlock = 0;
  v42 = 0xE000000000000000;
  swift_unknownObjectRetain();
  v19 = a9;
  sub_265BF3620();
  MEMORY[0x26676D1B0](0xD000000000000012, 0x8000000265BFA210);
  sub_265BF3670();
  MEMORY[0x26676D1B0](124, 0xE100000000000000);
  sub_265BF3670();
  MEMORY[0x26676D1B0](124, 0xE100000000000000);
  v47 = a3;
  sub_265BF3670();
  v20 = sub_265BF30D0();
  v21 = *(v20 + 48);
  v22 = *(v20 + 52);
  swift_allocObject();
  *(v10 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService) = sub_265BF30C0();
  v23 = sub_265BF2EC0();
  v24 = *(v23 + 48);
  v25 = *(v23 + 52);
  swift_allocObject();
  *(v10 + 80) = sub_265BF2EB0();
  sub_265BD9CB4();
  v26 = sub_265BF3330();

  if (v18 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C540, &qword_265BF57B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265BF5780;
    v28 = *MEMORY[0x277D44280];
    sub_265BF3340();
    sub_265BF3600();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    sub_265BE5574(inited);
    swift_setDeallocating();
    sub_265BB0750(inited + 32, &qword_28003C548, &unk_265BF5D20);
    v29 = sub_265BF32E0();

    v45 = nullsub_1;
    v46 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_265BDAB80;
    v44 = &block_descriptor_23;
    v30 = _Block_copy(&aBlock);
    [a1 registerEventID:v26 options:v29 handler:v30];
    _Block_release(v30);
  }

  else
  {
    v31 = swift_allocObject();
    swift_weakInit();
    v45 = sub_265BE7988;
    v46 = v31;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_265BD9EF4;
    v44 = &block_descriptor_13;
    v32 = _Block_copy(&aBlock);

    [a1 registerRequestID:v26 options:0 handler:v32];
    _Block_release(v32);

    sub_265BD9CB4();
    v29 = sub_265BF3330();

    v33 = swift_allocObject();
    swift_weakInit();

    v45 = sub_265BE79B0;
    v46 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_265BDAB80;
    v44 = &block_descriptor_18_0;
    v34 = _Block_copy(&aBlock);

    [a1 registerEventID:v29 options:0 handler:v34];
    _Block_release(v34);
  }

  ObjectType = swift_getObjectType();
  v36 = swift_allocObject();
  swift_weakInit();
  v37 = *(a2 + 248);

  v37(sub_265BE798C, v36, ObjectType, a2);

  swift_unknownObjectRelease();
  sub_265BDAFC8(v39);
  __swift_destroy_boxed_opaque_existential_0Tm(a6);

  return v10;
}

uint64_t sub_265BD9C50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DeviceConnectionCompression();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265BD9CB4()
{
  v1 = 112;
  if (!v0[56])
  {
    v1 = 25456;
  }

  v5 = v1;

  MEMORY[0x26676D1B0](46, 0xE100000000000000);

  if (v0[57])
  {
    v2 = 115;
  }

  else
  {
    v2 = 100;
  }

  MEMORY[0x26676D1B0](v2, 0xE100000000000000);

  MEMORY[0x26676D1B0](46, 0xE100000000000000);

  if (v0[58])
  {
    v3 = 115;
  }

  else
  {
    v3 = 100;
  }

  MEMORY[0x26676D1B0](v3, 0xE100000000000000);

  return v5;
}

uint64_t sub_265BD9DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v8 = result;

    sub_265BE62C0(a1, v8, a3, a4);
  }

  return result;
}

uint64_t sub_265BD9E60(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_265BD8848(a1);
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_265BD8848(v6);
  }

LABEL_4:
  a4(v7, v6, a3);
}

uint64_t sub_265BD9EF4(uint64_t a1, uint64_t a2, uint64_t a3, const void *a4)
{
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  v8 = sub_265BF32F0();
  if (a3)
  {
    a3 = sub_265BF32F0();
  }

  v9 = _Block_copy(a4);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;

  v7(v8, a3, sub_265BE781C, v10);
}

void sub_265BDA008(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  if (a1)
  {
    v7 = sub_265BF32E0();
    if (!v6)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a2)
  {
LABEL_3:
    v6 = sub_265BF32E0();
  }

LABEL_4:
  if (a3)
  {
    v8 = sub_265BF2B80();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v7, v6);
}

uint64_t sub_265BDA0F0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_265BDA158(a1);
  }

  return result;
}

uint64_t sub_265BDA158(uint64_t a1)
{
  v2 = v1;
  v4 = sub_265BF3240();
  v61 = *(v4 - 8);
  v62 = v4;
  v5 = *(v61 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v59 = v55 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v55 - v15;
  v17 = sub_265BF2CF0();
  v60 = *(v17 - 8);
  v18 = *(v60 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v20 = MEMORY[0x28223BE20](v19);
  MEMORY[0x28223BE20](v20);
  v22 = v55 - v21;
  v63 = 0x746E657665;
  v64 = 0xE500000000000000;
  sub_265BF3600();
  if (*(a1 + 16) && (v23 = sub_265BE3898(&v65), (v24 & 1) != 0))
  {
    sub_265BB08F0(*(a1 + 56) + 32 * v23, &v67);
    sub_265BE5F24(&v65);
    if (swift_dynamicCast())
    {
      v58 = v63;
      v67 = 0x64616F6C796170;
      v68 = 0xE700000000000000;
      sub_265BF3600();
      if (*(a1 + 16) && (v25 = sub_265BE3898(&v65), (v26 & 1) != 0))
      {
        sub_265BB08F0(*(a1 + 56) + 32 * v25, &v67);
        sub_265BE5F24(&v65);
        v27 = swift_dynamicCast();
        if (v27)
        {
          v28 = v63;
        }

        else
        {
          v28 = 0;
        }

        if (v27)
        {
          v29 = v64;
        }

        else
        {
          v29 = 0xF000000000000000;
        }
      }

      else
      {
        sub_265BE5F24(&v65);
        v28 = 0;
        v29 = 0xF000000000000000;
      }

      v67 = 31333;
      v68 = 0xE200000000000000;
      sub_265BF3600();
      if (*(a1 + 16) && (v57 = v2, v42 = sub_265BE3898(&v65), v2 = v57, (v43 & 1) != 0))
      {
        sub_265BB08F0(*(a1 + 56) + 32 * v42, &v67);
        sub_265BE5F24(&v65);
        swift_dynamicCast();
      }

      else
      {
        sub_265BE5F24(&v65);
      }

      sub_265BF2CD0();
      v44 = v60;
      if ((*(v60 + 48))(v16, 1, v17) == 1)
      {
        sub_265BB0750(v16, &qword_28003C550, &qword_265BF5D30);
        v45 = v29;
        v46 = *(v2 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService);
        sub_265BF30A0();
        return sub_265BBC0A4(v28, v45);
      }

      else
      {
        v47 = (*(v44 + 32))(v22, v16, v17);
        v48 = MEMORY[0x26676D6B0](v47);
        v49 = v28;
        v56 = v29;
        v57 = v28;
        v50 = v29;
        if (v29 >> 60 != 15)
        {
          v51 = v48;
          v52 = *(v44 + 16);
          v55[2] = v44 + 16;
          v55[3] = v52;
          v52(v14, v22, v17);
          (*(v44 + 56))(v14, 0, 1, v17);
          v49 = sub_265BF2BC0();
          v50 = v53;
          sub_265BB0750(v14, &qword_28003C550, &qword_265BF5D30);
          v48 = v51;
          v44 = v60;
        }

        objc_autoreleasePoolPop(v48);
        v54 = *(v2 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService);
        sub_265BF30A0();
        sub_265BBC0A4(v49, v50);
        sub_265BBC0A4(v57, v56);
        return (*(v44 + 8))(v22, v17);
      }
    }
  }

  else
  {
    sub_265BE5F24(&v65);
  }

  sub_265BF3150();

  v30 = sub_265BF3230();
  v31 = sub_265BF34D0();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v67 = v33;
    *v32 = 136446466;
    v65 = v1;
    v34 = sub_265BF3350();
    v36 = v35;
    v65 = 0;
    v66 = 0xE000000000000000;
    sub_265BF3620();

    v65 = 0xD000000000000011;
    v66 = 0x8000000265BFA340;
    MEMORY[0x26676D1B0](v34, v36);

    MEMORY[0x26676D1B0](58, 0xE100000000000000);
    v37 = sub_265BB064C(v65, v66, &v67);

    *(v32 + 4) = v37;
    *(v32 + 12) = 2082;
    v38 = sub_265BF3300();
    v40 = sub_265BB064C(v38, v39, &v67);

    *(v32 + 14) = v40;
    _os_log_impl(&dword_265BAD000, v30, v31, "%{public}s Event missing from rapport dictionary: %{public}s", v32, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v33, -1, -1);
    MEMORY[0x26676DCA0](v32, -1, -1);
  }

  return (*(v61 + 8))(v8, v62);
}

uint64_t sub_265BDAB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = sub_265BF32F0();
  if (a3)
  {
    a3 = sub_265BF32F0();
  }

  v5(v6, a3);
}

uint64_t sub_265BDAC40()
{
  v0 = sub_265BF3240();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265BF3150();

  v5 = sub_265BF3230();
  v6 = sub_265BF34E0();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v29 = v28;
    *v7 = 136446466;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v30 = Strong;
      v27 = Strong;
      v9 = sub_265BF3350();
      v11 = v10;
      v30 = 0;
      v31 = 0xE000000000000000;
      sub_265BF3620();

      v30 = 0xD000000000000011;
      v31 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v9, v11);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);

      v12 = v30;
      v13 = v31;
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    v30 = v12;
    v31 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5B0, &qword_265BF5978);
    v14 = sub_265BF3590();
    v16 = v15;

    v17 = sub_265BB064C(v14, v16, &v29);

    *(v7 + 4) = v17;
    *(v7 + 12) = 2082;
    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5B8, &qword_265BF5980);
    v18 = sub_265BF3590();
    v20 = v19;

    v21 = sub_265BB064C(v18, v20, &v29);

    *(v7 + 14) = v21;
    _os_log_impl(&dword_265BAD000, v5, v6, "%{public}s disconnect: %{public}s", v7, 0x16u);
    v22 = v28;
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v22, -1, -1);
    MEMORY[0x26676DCA0](v7, -1, -1);
  }

  (*(v1 + 8))(v4, v0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v24 = *(result + 88);
    if (v24)
    {
      v25 = *(result + 96);
      sub_265BC3A70(*(result + 88));

      v24(v26);
      return sub_265BBE62C(v24);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_265BDAFC8(uint64_t a1)
{
  v2 = type metadata accessor for DeviceConnectionCompression();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t DeviceConnection.deinit()
{
  v1 = v0;
  v2 = sub_265BF3240();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v43 - v8;
  sub_265BF3150();

  v10 = sub_265BF3230();
  v11 = sub_265BF34E0();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v44 = v43;
    *v12 = 136446210;
    v13 = DeviceConnection.description.getter();
    v15 = v7;
    v16 = v2;
    v17 = v3;
    v18 = sub_265BB064C(v13, v14, &v44);

    *(v12 + 4) = v18;
    v3 = v17;
    v2 = v16;
    v7 = v15;
    _os_log_impl(&dword_265BAD000, v10, v11, "Cleaning up %{public}s...", v12, 0xCu);
    v19 = v43;
    __swift_destroy_boxed_opaque_existential_0Tm(v43);
    MEMORY[0x26676DCA0](v19, -1, -1);
    MEMORY[0x26676DCA0](v12, -1, -1);
  }

  v20 = v3[1];
  v20(v9, v2);
  if (*(v1 + 56) == 1)
  {
    sub_265BF3150();

    v21 = sub_265BF3230();
    v22 = sub_265BF34E0();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v44 = v24;
      *v23 = 136446466;
      v25 = sub_265BD9CB4();
      v27 = sub_265BB064C(v25, v26, &v44);
      v43 = v3;
      v28 = v27;

      *(v23 + 4) = v28;
      *(v23 + 12) = 2082;
      v29 = DeviceConnection.description.getter();
      v31 = sub_265BB064C(v29, v30, &v44);

      *(v23 + 14) = v31;
      _os_log_impl(&dword_265BAD000, v21, v22, "Deregistering eventID %{public}s on %{public}s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v24, -1, -1);
      MEMORY[0x26676DCA0](v23, -1, -1);
    }

    v20(v7, v2);
    v32 = *(v1 + 64);
    swift_unknownObjectRetain();
    sub_265BD9CB4();
    v33 = sub_265BF3330();

    [v32 deregisterEventID_];
    swift_unknownObjectRelease();
  }

  v34 = *(v1 + 64);
  v35 = *(v1 + 72);
  ObjectType = swift_getObjectType();
  v37 = *(v35 + 272);
  swift_unknownObjectRetain();
  v37(ObjectType, v35);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 16));
  v38 = *(v1 + 64);
  swift_unknownObjectRelease();
  v39 = *(v1 + 80);

  v40 = *(v1 + 96);
  sub_265BBE62C(*(v1 + 88));
  sub_265BDAFC8(v1 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression);
  v41 = *(v1 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_dispatchService);

  return v1;
}

uint64_t DeviceConnection.__deallocating_deinit()
{
  DeviceConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void sub_265BDB48C(void *a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v137 = a7;
  v138 = a6;
  v130 = a4;
  v140 = a3;
  v139 = a2;
  v135 = sub_265BF2FD0();
  v134 = *(v135 - 8);
  v9 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v132 = v10;
  v133 = &v118[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v126 = sub_265BF3240();
  v125 = *(v126 - 8);
  v11 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v128 = &v118[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = sub_265BF2CF0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v124 = &v118[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x28223BE20](v16);
  v127 = &v118[-v19];
  MEMORY[0x28223BE20](v18);
  v129 = &v118[-v20];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v22 = *(*(v21 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v21 - 8);
  v25 = &v118[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v118[-v27];
  MEMORY[0x28223BE20](v26);
  v30 = &v118[-v29];
  v131 = a1;
  v31 = sub_265BF2FC0();
  v32 = MEMORY[0x277D83B88];
  v144 = MEMORY[0x277D83B88];
  *&aBlock = v31;
  sub_265BB87C8(&aBlock, &v148);
  v33 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v147 = v33;
  sub_265BE48E8(&v148, 7431538, 0xE300000000000000, isUniquelyReferenced_nonNull_native);
  v149 = v147;
  sub_265BE7900(a5, v30, &qword_28003C550, &qword_265BF5D30);
  v35 = *(v14 + 48);
  if (v35(v30, 1, v13) == 1)
  {
    v36 = v14;
    sub_265BB0750(v30, &qword_28003C550, &qword_265BF5D30);
    sub_265BE3954(8024946, 0xE300000000000000, &aBlock);
    sub_265BB0750(&aBlock, &qword_28003C558, &unk_265BF57B8);
  }

  else
  {
    v37 = sub_265BF2CE0();
    v144 = v32;
    *&aBlock = v37;
    v36 = v14;
    (*(v14 + 8))(v30, v13);
    sub_265BB87C8(&aBlock, &v148);
    v38 = v149;
    v39 = swift_isUniquelyReferenced_nonNull_native();
    v147 = v38;
    sub_265BE48E8(&v148, 8024946, 0xE300000000000000, v39);
    v149 = v147;
  }

  v40 = v140;
  v41 = v141;
  if (v140 >> 60 == 15)
  {
    v136 = 0;
    goto LABEL_20;
  }

  v42 = v140 >> 62;
  if ((v140 >> 62) > 1)
  {
    if (v42 != 2)
    {
      v136 = 0;
      goto LABEL_19;
    }

    v44 = v139[2];
    v43 = v139[3];
    v45 = v43 - v44;
    if (!__OFSUB__(v43, v44))
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v42)
  {
    v136 = BYTE6(v140);
LABEL_19:
    v46 = v139;
    v144 = MEMORY[0x277CC9318];
    *&aBlock = v139;
    *(&aBlock + 1) = v40;
    sub_265BB87C8(&aBlock, &v148);
    sub_265BBB4D0(v46, v40);
    v47 = v149;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v147 = v47;
    sub_265BE48E8(&v148, 0x64616F6C796170, 0xE700000000000000, v48);
    sub_265BBC0A4(v46, v40);
    v149 = v147;
    goto LABEL_20;
  }

  if (__OFSUB__(HIDWORD(v139), v139))
  {
    __break(1u);
    goto LABEL_39;
  }

  v45 = HIDWORD(v139) - v139;
LABEL_15:
  sub_265BBB4D0(v139, v40);
  v136 = v45;
  if (v45 < 1000)
  {
    goto LABEL_19;
  }

  sub_265BE7900(v130, v28, &qword_28003C550, &qword_265BF5D30);
  if (v35(v28, 1, v13) == 1)
  {
    sub_265BB0750(v28, &qword_28003C550, &qword_265BF5D30);
    goto LABEL_19;
  }

  v75 = v129;
  v76 = (*(v36 + 32))(v129, v28, v13);
  v130 = MEMORY[0x26676D6B0](v76);
  v77 = *(v36 + 16);
  v77(v25, v75, v13);
  (*(v36 + 56))(v25, 0, 1, v13);
  v78 = sub_265BF2BB0();
  v80 = v79;
  v81 = v36;
  v82 = v36 + 16;
  v83 = v78;
  sub_265BB0750(v25, &qword_28003C550, &qword_265BF5D30);
  objc_autoreleasePoolPop(v130);
  v84 = v80 >> 62;
  v85 = v80;
  v123 = v82;
  v122 = v77;
  if ((v80 >> 62) <= 1)
  {
    v86 = v128;
    v87 = v129;
    v88 = v127;
    if (!v84)
    {
      v89 = BYTE6(v85);
      goto LABEL_34;
    }

    goto LABEL_32;
  }

  v86 = v128;
  v87 = v129;
  v88 = v127;
  if (v84 != 2)
  {
    v130 = 0;
    goto LABEL_35;
  }

  v91 = *(v83 + 16);
  v90 = *(v83 + 24);
  v92 = __OFSUB__(v90, v91);
  v89 = v90 - v91;
  if (v92)
  {
    __break(1u);
LABEL_32:
    LODWORD(v89) = HIDWORD(v83) - v83;
    if (!__OFSUB__(HIDWORD(v83), v83))
    {
      v89 = v89;
      goto LABEL_34;
    }

LABEL_39:
    __break(1u);
    return;
  }

LABEL_34:
  v130 = v89;
LABEL_35:
  v93 = v81;
  v94 = v87;
  v95 = sub_265BF2CE0();
  v144 = MEMORY[0x277D83B88];
  *&aBlock = v95;
  sub_265BB87C8(&aBlock, &v148);
  v96 = v149;
  v97 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v96;
  sub_265BE48E8(&v148, 8024434, 0xE300000000000000, v97);
  v98 = v147;
  v144 = MEMORY[0x277CC9318];
  *&aBlock = v83;
  *(&aBlock + 1) = v85;
  sub_265BB87C8(&aBlock, &v148);
  sub_265BBB4D0(v83, v85);
  v99 = swift_isUniquelyReferenced_nonNull_native();
  v147 = v98;
  sub_265BE48E8(&v148, 0x64616F6C796170, 0xE700000000000000, v99);
  v149 = v147;
  sub_265BF3150();
  v100 = v94;
  v122(v88, v94, v13);

  v101 = sub_265BF3230();
  v102 = sub_265BF34B0();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v121 = v83;
    v104 = v93;
    v120 = v85;
    v105 = v103;
    v106 = swift_slowAlloc();
    *&v148 = v106;
    *v105 = 136446978;
    *&aBlock = v41;
    v107 = sub_265BF3350();
    v109 = v108;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    v119 = v102;
    sub_265BF3620();

    *&aBlock = 0xD000000000000011;
    *(&aBlock + 1) = 0x8000000265BFA340;
    MEMORY[0x26676D1B0](v107, v109);

    MEMORY[0x26676D1B0](58, 0xE100000000000000);
    v110 = sub_265BB064C(aBlock, *(&aBlock + 1), &v148);

    *(v105 + 4) = v110;
    *(v105 + 12) = 2048;
    *(v105 + 14) = v136;
    *(v105 + 22) = 2048;
    *(v105 + 24) = v130;
    *(v105 + 32) = 2082;
    v111 = v127;
    v122(v124, v127, v13);
    v112 = sub_265BF3350();
    v114 = v113;
    v115 = *(v104 + 8);
    v115(v111, v13);
    v116 = sub_265BB064C(v112, v114, &v148);

    *(v105 + 34) = v116;
    _os_log_impl(&dword_265BAD000, v101, v119, "%{public}s Request was %ld bytes compressed to %ld bytes using %{public}s", v105, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x26676DCA0](v106, -1, -1);
    MEMORY[0x26676DCA0](v105, -1, -1);

    sub_265BBB1D0(v121, v120);
    sub_265BBC0A4(v139, v140);
    (*(v125 + 8))(v128, v126);
    v115(v129, v13);
  }

  else
  {

    sub_265BBB1D0(v83, v85);
    sub_265BBC0A4(v139, v140);
    v117 = *(v93 + 8);
    v117(v88, v13);
    (*(v125 + 8))(v86, v126);
    v117(v100, v13);
  }

LABEL_20:
  v49 = v131;
  v50 = v132;
  sub_265BF3450();
  v52 = v51;
  v53 = *(v41 + 64);
  sub_265BD9CB4();
  v54 = sub_265BF3330();

  sub_265BD8848(v149);

  v140 = sub_265BF32E0();

  v55 = **(&unk_279BBA9F0 + *(v41 + 56));
  sub_265BF3340();
  v56 = sub_265BF3330();

  v57 = *(v41 + 59);
  v139 = v54;
  v132 = v53;
  v131 = v56;
  v58 = v137;
  if (v57)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C540, &qword_265BF57B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265BF5780;
    v60 = *MEMORY[0x277D44268];
    *&aBlock = sub_265BF3340();
    *(&aBlock + 1) = v61;
    sub_265BF3600();
    *(inited + 96) = MEMORY[0x277D839B0];
    *(inited + 72) = 1;
    sub_265BE5574(inited);
    swift_setDeallocating();
    sub_265BB0750(inited + 32, &qword_28003C548, &unk_265BF5D20);
  }

  else
  {
    sub_265BE5574(MEMORY[0x277D84F90]);
  }

  v62 = sub_265BF32E0();

  v63 = v134;
  v64 = v133;
  v65 = v49;
  v66 = v135;
  (*(v134 + 16))(v133, v65, v135);
  v67 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v68 = (v50 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  *(v69 + 16) = v141;
  *(v69 + 24) = v52;
  (*(v63 + 32))(v69 + v67, v64, v66);
  *(v69 + v68) = v136;
  v70 = (v69 + ((v68 + 15) & 0xFFFFFFFFFFFFFFF8));
  *v70 = v138;
  v70[1] = v58;
  v145 = sub_265BE607C;
  v146 = v69;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  v143 = sub_265BDDAD0;
  v144 = &block_descriptor_93;
  v71 = _Block_copy(&aBlock);

  v72 = v139;
  v73 = v140;
  v74 = v131;
  [v132 sendRequestID:v139 request:v140 destinationID:v131 options:v62 responseHandler:v71];
  _Block_release(v71);
}

void sub_265BDC4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void (*a6)(uint64_t, unint64_t, uint64_t *), uint64_t a7, double a8)
{
  v9 = v8;
  v185 = a7;
  v186 = a6;
  v177 = a5;
  v184 = a4;
  v194 = a3;
  v193 = type metadata accessor for TransportRequestAnalyticsEvent();
  v13 = *(v193[-1].isa + 8);
  v14 = MEMORY[0x28223BE20](v193);
  v16 = &v167 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v174 = &v167 - v17;
  v18 = sub_265BF2FD0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v18);
  v175 = &v167 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v189 = &v167 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v181 = &v167 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v176 = &v167 - v28;
  MEMORY[0x28223BE20](v27);
  v179 = (&v167 - v29);
  v183 = sub_265BF3240();
  v182 = *(v183 - 8);
  v30 = v182[8];
  v31 = MEMORY[0x28223BE20](v183);
  v178 = &v167 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v180 = &v167 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v173 = &v167 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v36);
  v187 = &v167 - v39;
  MEMORY[0x28223BE20](v38);
  v41 = &v167 - v40;
  v196 = v18;
  v190 = v19;
  if (!a1)
  {
    v204 = 0u;
    v205 = 0u;
    sub_265BB0750(&v204, &qword_28003C558, &unk_265BF57B8);
    v204 = 0u;
    v205 = 0u;
    v18 = v196;
    sub_265BB0750(&v204, &qword_28003C558, &unk_265BF57B8);
    v197 = 0;
    v204 = 0u;
    v205 = 0u;
    v54 = 0xF000000000000000;
    v51 = 0.0;
    LODWORD(v195) = 1;
    goto LABEL_28;
  }

  v198 = 0x64616F6C796170;
  v199 = 0xE700000000000000;
  sub_265BF3600();
  if (!*(a1 + 16) || (v42 = sub_265BE3898(&v200), (v43 & 1) == 0))
  {
    sub_265BE5F24(&v200);
    v204 = 0u;
    v205 = 0u;
    goto LABEL_12;
  }

  sub_265BB08F0(*(a1 + 56) + 32 * v42, &v204);
  sub_265BE5F24(&v200);
  if (!*(&v205 + 1))
  {
LABEL_12:
    sub_265BB0750(&v204, &qword_28003C558, &unk_265BF57B8);
    v45 = 0.0;
    v46 = 0xF000000000000000;
    goto LABEL_13;
  }

  v44 = swift_dynamicCast();
  if (v44)
  {
    v45 = v200;
  }

  else
  {
    v45 = 0.0;
  }

  if (v44)
  {
    v46 = v201;
  }

  else
  {
    v46 = 0xF000000000000000;
  }

LABEL_13:
  v198 = 0x656D6954736572;
  v199 = 0xE700000000000000;
  sub_265BF3600();
  v47 = *(a1 + 16);
  v197 = *&v45;
  if (!v47 || (v48 = sub_265BE3898(&v200), (v49 & 1) == 0))
  {
    sub_265BE5F24(&v200);
    v204 = 0u;
    v205 = 0u;
    goto LABEL_20;
  }

  sub_265BB08F0(*(a1 + 56) + 32 * v48, &v204);
  sub_265BE5F24(&v200);
  if (!*(&v205 + 1))
  {
LABEL_20:
    sub_265BB0750(&v204, &qword_28003C558, &unk_265BF57B8);
    v51 = 0.0;
    LODWORD(v195) = 1;
    goto LABEL_21;
  }

  v50 = swift_dynamicCast();
  LODWORD(v195) = v50 ^ 1;
  if (v50)
  {
    v51 = v200;
  }

  else
  {
    v51 = 0.0;
  }

LABEL_21:
  v198 = 8024946;
  v199 = 0xE300000000000000;
  sub_265BF3600();
  if (!*(a1 + 16) || (v52 = sub_265BE3898(&v200), (v53 & 1) == 0))
  {
    sub_265BE5F24(&v200);
    v204 = 0u;
    v205 = 0u;
    goto LABEL_26;
  }

  sub_265BB08F0(*(a1 + 56) + 32 * v52, &v204);
  sub_265BE5F24(&v200);
  if (!*(&v205 + 1))
  {
LABEL_26:
    v54 = v46;
    v19 = v190;
LABEL_28:
    sub_265BB0750(&v204, &qword_28003C558, &unk_265BF57B8);
    goto LABEL_29;
  }

  swift_dynamicCast();
  v54 = v46;
  v19 = v190;
LABEL_29:
  v55 = sub_265BF2CD0();
  v191 = v54;
  v192 = v41;
  if ((v195 & 1) == 0 && v54 >> 60 != 15)
  {
    v171 = v16;
    v188 = v8;
    v56 = v197;
    sub_265BBB4D0(v197, v54);
    sub_265BF3450();
    v58 = v57;
    v59 = v180;
    sub_265BF3150();
    v60 = v41;
    v61 = v187;
    sub_265BE7900(v60, v187, &qword_28003C550, &qword_265BF5D30);
    v62 = *(v19 + 16);
    v63 = v179;
    v169 = v19 + 16;
    v168 = v62;
    v62(v179, v194, v18);
    sub_265BBB4BC(v56, v54);
    sub_265BBB4BC(v56, v54);

    v64 = sub_265BF3230();
    v65 = sub_265BF34B0();
    v172 = *&a2;

    v170 = v65;
    if (!os_log_type_enabled(v64, v65))
    {
      sub_265BBC0A4(v56, v54);

      sub_265BBC0A4(v56, v54);
      sub_265BBC0A4(v56, v54);
      (*(v19 + 8))(v63, v196);
      sub_265BB0750(v61, &qword_28003C550, &qword_265BF5D30);
      v82 = (v182[1])(v59, v183);
      *&a2 = v172;
LABEL_50:
      v81 = MEMORY[0x26676D6B0](v82);
      v9 = v188;
      v16 = v171;
      goto LABEL_51;
    }

    v167 = v64;
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v204 = v67;
    *v66 = 136447490;
    *&a2 = v172;
    v200 = v172;
    v68 = sub_265BF3350();
    v70 = v69;
    v200 = 0.0;
    v201 = 0xE000000000000000;
    sub_265BF3620();

    v200 = -2.31584178e77;
    v201 = 0x8000000265BFA340;
    MEMORY[0x26676D1B0](v68, v70);
    v71 = v191;

    MEMORY[0x26676D1B0](58, 0xE100000000000000);
    v72 = sub_265BB064C(*&v200, v201, &v204);

    *(v66 + 4) = v72;
    *(v66 + 12) = 2048;
    v73 = v71 >> 62;
    if ((v71 >> 62) <= 1)
    {
      v74 = v187;
      v19 = v190;
      v75 = v173;
      if (!v73)
      {
        sub_265BBC0A4(v56, v71);
        v76 = BYTE6(v71);
LABEL_46:
        v88 = v58 - a8 - v51;
        *(v66 + 14) = v76;
        sub_265BBC0A4(v56, v71);
        *(v66 + 22) = 2080;
        sub_265BE7900(v74, v75, &qword_28003C550, &qword_265BF5D30);
        v89 = sub_265BF2CF0();
        v90 = *(v89 - 8);
        v91 = (*(v90 + 48))(v75, 1, v89);
        if (v91 == 1)
        {
          sub_265BB0750(v75, &qword_28003C550, &qword_265BF5D30);
          *&v92 = 0.0;
        }

        else
        {
          *&v92 = COERCE_DOUBLE(sub_265BF2CE0());
          (*(v90 + 8))(v75, v89);
        }

        v200 = *&v92;
        LOBYTE(v201) = v91 == 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C598, &qword_265BF5970);
        v93 = sub_265BF3590();
        v95 = v94;
        sub_265BB0750(v187, &qword_28003C550, &qword_265BF5D30);
        v96 = sub_265BB064C(v93, v95, &v204);

        *(v66 + 24) = v96;
        *(v66 + 32) = 2048;
        *(v66 + 34) = v88;
        *(v66 + 42) = 2048;
        *(v66 + 44) = v51;
        *(v66 + 52) = 2082;
        v97 = v179;
        v98 = v196;
        v168(v176, v179, v196);
        v99 = sub_265BF3350();
        v101 = v100;
        (*(v19 + 8))(v97, v98);
        v102 = sub_265BB064C(v99, v101, &v204);

        *(v66 + 54) = v102;
        v103 = v167;
        _os_log_impl(&dword_265BAD000, v167, v170, "%{public}s Response was %ld bytes compressed using %s. Total inflight time of %fs with %fs spent processing %{public}s", v66, 0x3Eu);
        swift_arrayDestroy();
        MEMORY[0x26676DCA0](v67, -1, -1);
        MEMORY[0x26676DCA0](v66, -1, -1);

        sub_265BBC0A4(v197, v191);
        v82 = (v182[1])(v180, v183);
        goto LABEL_50;
      }

      v86 = HIDWORD(v197);
      sub_265BBC0A4(v197, v71);
      v87 = __OFSUB__(v86, v197);
      LODWORD(v76) = v86 - v197;
      v56 = v197;
      if (!v87)
      {
        v76 = v76;
        goto LABEL_46;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v19 = v190;
    v75 = v173;
    v83 = v56;
    if (v73 == 2)
    {
      v84 = *(v56 + 24);
      v85 = *(v83 + 16);
      sub_265BBC0A4(v83, v71);
      v76 = v84 - v85;
      if (__OFSUB__(v84, v85))
      {
        __break(1u);
        goto LABEL_79;
      }

      v56 = v197;
    }

    else
    {
      sub_265BBC0A4(v56, v71);
      v76 = 0;
    }

    v74 = v187;
    goto LABEL_46;
  }

  v77 = MEMORY[0x26676D6B0](v55);
  if (v54 >> 60 == 15)
  {
    v78 = v19;
    v188 = v8;
    objc_autoreleasePoolPop(v77);
    v187 = 0;
    v79 = v54;
    v80 = v197;
LABEL_70:
    v155 = *(a2 + 40);
    v183 = *(a2 + 48);
    v156 = a2;
    v182 = __swift_project_boxed_opaque_existential_1((a2 + 16), v155);
    (*(v78 + 16))(v189, v194, v196);
    sub_265BF3450();
    v158 = v157;
    v202 = v193;
    v203 = sub_265BE61A4(&qword_28003C590, type metadata accessor for TransportRequestAnalyticsEvent);
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v200);
    v160 = v158 - a8;
    v161 = v177;
    if (v177)
    {
      swift_getErrorValue();
      *(v16 + 1) = sub_265BF3750();
      *(v16 + 2) = v162;
      swift_getErrorValue();
      v163 = sub_265BF3760();
    }

    else
    {
      v163 = 0;
      v164 = 0xE000000000000000;
      *(v16 + 1) = 0;
      *(v16 + 2) = 0xE000000000000000;
    }

    *(v16 + 3) = v163;
    *(v16 + 4) = v164;
    *v16 = v156[56];
    v165 = v193;
    (*(v78 + 32))(&v16[SHIDWORD(v193[3].isa)], v189, v196);
    *&v16[v165[8]] = v184;
    *&v16[v165[9]] = v187;
    v166 = 0.0;
    if (!v195)
    {
      v166 = v51;
    }

    *&v16[v165[10]] = v166;
    *&v16[v165[11]] = v160;
    v16[v165[12]] = v156[58];
    v16[v165[13]] = v156[57];
    sub_265BE6140(v16, boxed_opaque_existential_0);
    sub_265BF3010();
    __swift_destroy_boxed_opaque_existential_0Tm(&v200);
    v186(v80, v79, v161);
    sub_265BBC0A4(v197, v191);
    sub_265BBC0A4(v80, v79);
    goto LABEL_76;
  }

  v81 = v77;
LABEL_51:
  v104 = v9;
  v105 = sub_265BF2BC0();
  if (v9)
  {
    objc_autoreleasePoolPop(v81);
    v180 = *(a2 + 40);
    v187 = *(a2 + 48);
    v179 = __swift_project_boxed_opaque_existential_1((a2 + 16), v180);
    v108 = *(v19 + 16);
    v107 = v19 + 16;
    v189 = v108;
    v109 = v196;
    (v108)(v181, v194, v196);
    v110 = v9;
    sub_265BF3450();
    v112 = v111;
    v113 = v193;
    v202 = v193;
    v203 = sub_265BE61A4(&qword_28003C590, type metadata accessor for TransportRequestAnalyticsEvent);
    v177 = __swift_allocate_boxed_opaque_existential_0(&v200);
    v114 = v112 - a8;
    swift_getErrorValue();
    v115 = v9;
    v116 = v9;
    v117 = sub_265BF3750();
    v119 = v118;

    v120 = v174;
    *(v174 + 1) = v117;
    *(v120 + 16) = v119;
    swift_getErrorValue();
    v121 = v9;
    v122 = sub_265BF3760();
    v124 = v123;

    *(v120 + 24) = v122;
    *(v120 + 32) = v124;
    v125 = v109;
    v126 = v190;
    *v120 = *(a2 + 56);
    (*(v126 + 32))(v120 + v113[7], v181, v109);
    *(v120 + v113[8]) = v184;
    *(v120 + v113[9]) = 0;
    v127 = 0.0;
    if (!v195)
    {
      v127 = v51;
    }

    *(v120 + v113[10]) = v127;
    *(v120 + v113[11]) = v114;
    *(v120 + v113[12]) = *(a2 + 58);
    *(v120 + v113[13]) = *(a2 + 57);
    sub_265BE6140(v120, v177);
    sub_265BF3010();
    __swift_destroy_boxed_opaque_existential_0Tm(&v200);
    v128 = v178;
    sub_265BF3150();
    v129 = v175;
    v195 = v107;
    (v189)(v175, v194, v125);

    v130 = v104;
    v131 = sub_265BF3230();
    v132 = sub_265BF34D0();

    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v193 = v131;
      v134 = v129;
      v135 = v126;
      LODWORD(v187) = v132;
      v136 = v133;
      v194 = swift_slowAlloc();
      *&v204 = v194;
      *v136 = 136446978;
      v200 = *&a2;
      v137 = sub_265BF3350();
      v139 = v138;
      v200 = 0.0;
      v201 = 0xE000000000000000;
      sub_265BF3620();

      v200 = -2.31584178e77;
      v201 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v137, v139);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);
      v140 = sub_265BB064C(*&v200, v201, &v204);

      *(v136 + 4) = v140;
      *(v136 + 12) = 2160;
      *(v136 + 14) = 1752392040;
      *(v136 + 22) = 2080;
      (v189)(v176, v134, v125);
      v141 = sub_265BF3350();
      v143 = v142;
      (*(v135 + 8))(v134, v125);
      v144 = sub_265BB064C(v141, v143, &v204);

      *(v136 + 24) = v144;
      *(v136 + 32) = 2082;
      v200 = *&v104;
      v145 = v104;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
      v146 = sub_265BF3350();
      v148 = sub_265BB064C(v146, v147, &v204);

      *(v136 + 34) = v148;
      v149 = v193;
      _os_log_impl(&dword_265BAD000, v193, v187, "%{public}s Failed to process %{mask.hash}s response: %{public}s", v136, 0x2Au);
      v150 = v194;
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v150, -1, -1);
      MEMORY[0x26676DCA0](v136, -1, -1);

      (v182[1])(v178, v183);
    }

    else
    {

      (*(v126 + 8))(v129, v125);
      (v182[1])(v128, v183);
    }

    v186(0, 0xF000000000000000, v104);

    sub_265BBC0A4(v197, v191);
LABEL_76:
    sub_265BB0750(v192, &qword_28003C550, &qword_265BF5D30);
    return;
  }

  v80 = v105;
  v79 = v106;
  objc_autoreleasePoolPop(v81);
  v188 = 0;
  if (v79 >> 60 == 15)
  {
    v78 = v19;
LABEL_58:
    v187 = 0;
    goto LABEL_70;
  }

  v151 = v79 >> 62;
  if ((v79 >> 62) > 1)
  {
    if (v151 != 2)
    {
      v78 = v19;
      sub_265BBC0A4(v80, v79);
      goto LABEL_58;
    }

    v154 = *(v80 + 16);
    v153 = *(v80 + 24);
    v87 = __OFSUB__(v153, v154);
    v152 = v153 - v154;
    if (!v87)
    {
      v78 = v19;
      goto LABEL_69;
    }

    goto LABEL_80;
  }

  if (!v151)
  {
    v78 = v19;
    sub_265BBC0A4(v80, v79);
    v152 = BYTE6(v79);
LABEL_69:
    v187 = v152;
    goto LABEL_70;
  }

  LODWORD(v152) = HIDWORD(v80) - v80;
  if (!__OFSUB__(HIDWORD(v80), v80))
  {
    v78 = v19;
    v152 = v152;
    goto LABEL_69;
  }

LABEL_81:
  __break(1u);
}

uint64_t sub_265BDDAD0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  v6 = *(a1 + 40);
  if (a2)
  {
    v8 = sub_265BF32F0();
    if (!v5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = 0;
  if (a3)
  {
LABEL_3:
    v5 = sub_265BF32F0();
  }

LABEL_4:

  v9 = a4;
  v7(v8, v5, a4);
}

void sub_265BDDBB4(void (**a1)(void, void), uint64_t a2, unint64_t a3, void (*a4)(void, unint64_t, void *), uint64_t a5)
{
  v6 = v5;
  v63 = a4;
  v64 = a5;
  v58 = a2;
  v59 = a3;
  v62 = a1;
  v7 = sub_265BF3240();
  v8 = *(v7 - 8);
  v9 = v8[8];
  MEMORY[0x28223BE20](v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_265BF2FD0();
  v12 = *(v61 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v61);
  v60 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v17 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v54 - v19;
  if (*(v6 + 56) == 2)
  {
    v62 = v8;
    sub_265BF3150();

    v21 = sub_265BF3230();
    v22 = sub_265BF34D0();
    v23 = v6;
    v24 = v22;
    v25 = v23;

    if (os_log_type_enabled(v21, v24))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v67 = v27;
      *v26 = 136446466;
      v65 = v25;
      v28 = sub_265BF3350();
      v30 = v29;
      v65 = 0;
      v66 = 0xE000000000000000;
      sub_265BF3620();

      v65 = 0xD000000000000011;
      v66 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v28, v30);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);
      v31 = sub_265BB064C(v65, v66, &v67);

      *(v26 + 4) = v31;
      *(v26 + 12) = 2082;
      LOBYTE(v65) = 2;
      v32 = sub_265BE6028();
      v33 = MEMORY[0x26676CC90](&type metadata for DeviceConnectionDestination, v32);
      v35 = sub_265BB064C(v33, v34, &v67);

      *(v26 + 14) = v35;
      _os_log_impl(&dword_265BAD000, v21, v24, "%{public}s Destination does not support outgoing requests: %{public}s", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v27, -1, -1);
      MEMORY[0x26676DCA0](v26, -1, -1);
    }

    (v62)[1](v11, v7);
    v36 = sub_265BF2C50();
    sub_265BE61A4(&qword_28003C580, MEMORY[0x277D50940]);
    v37 = swift_allocError();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D50910], v36);
    v63(0, 0xF000000000000000, v37);
  }

  else
  {
    v39 = (v6 + OBJC_IVAR____TtC19SeymourServicesCore16DeviceConnection_preferredCompression);
    v40 = v18;
    v41 = *(type metadata accessor for DeviceConnectionCompression() + 20);
    v56 = v39;
    v57 = v41;
    sub_265BE7900(v39, v20, &qword_28003C550, &qword_265BF5D30);
    (*(v12 + 16))(v60, v62, v61);
    sub_265BE7900(v39 + v41, v17, &qword_28003C550, &qword_265BF5D30);
    v42 = *(v40 + 80);
    v43 = (v42 + 32) & ~v42;
    v44 = (v15 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = *(v12 + 80);
    v55 = v6;
    v46 = (v45 + v44 + 8) & ~v45;
    v47 = (v13 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = (v42 + v47 + 16) & ~v42;
    v49 = swift_allocObject();
    v50 = v64;
    *(v49 + 16) = v63;
    *(v49 + 24) = v50;
    sub_265BE5FB4(v20, v49 + v43);
    *(v49 + v44) = v55;
    (*(v12 + 32))(v49 + v46, v60, v61);
    v51 = (v49 + v47);
    v53 = v58;
    v52 = v59;
    *v51 = v58;
    v51[1] = v52;
    sub_265BE5FB4(v17, v49 + v48);

    sub_265BBB4BC(v53, v52);
    sub_265BDB48C(v62, v53, v52, v56, v56 + v57, sub_265BE6024, v49);
  }
}

void sub_265BDE1A4(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t, void *), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, unint64_t a10, uint64_t a11)
{
  v108 = a8;
  v109 = a7;
  v110 = a4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16 - 8);
  v20 = v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v18);
  v23 = v89 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v89 - v24;
  v26 = sub_265BF2FD0();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v99 = v89 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v107 = v89 - v31;
  v32 = sub_265BF3240();
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32);
  v37 = v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v92 = a1;
    v101 = a2;
    v102 = v27;
    v103 = v26;
    v91 = v23;
    v105 = v25;
    v106 = v37;
    v95 = v35;
    v96 = v34;
    v97 = v20;
    v104 = a5;
    v38 = sub_265BF2CF0();
    v98 = *(v38 - 8);
    v39 = *(v98 + 48);
    v93 = a6;
    v94 = v38;
    v90 = v39;
    v89[1] = v98 + 48;
    LODWORD(v100) = (v39)(a6, 1);
    swift_getErrorValue();
    v40 = sub_265BF31D0();
    v114 = v40;
    v115 = sub_265BE61A4(&qword_28003C5A0, MEMORY[0x277D216F0]);
    v41 = __swift_allocate_boxed_opaque_existential_0(&v112);
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D216E8], v40);
    v42 = a3;
    v43 = sub_265BF3730();
    __swift_destroy_boxed_opaque_existential_0Tm(&v112);
    swift_getErrorValue();
    v44 = sub_265BF2C50();
    v114 = v44;
    v45 = sub_265BE61A4(&qword_28003C5A8, MEMORY[0x277D50940]);
    v115 = v45;
    v46 = __swift_allocate_boxed_opaque_existential_0(&v112);
    v47 = *(*(v44 - 8) + 104);
    v47(v46, *MEMORY[0x277D50918], v44);
    v48 = sub_265BF3730();
    __swift_destroy_boxed_opaque_existential_0Tm(&v112);
    swift_getErrorValue();
    v114 = v44;
    v115 = v45;
    v49 = __swift_allocate_boxed_opaque_existential_0(&v112);
    v47(v49, *MEMORY[0x277D50920], v44);
    v50 = sub_265BF3730();
    __swift_destroy_boxed_opaque_existential_0Tm(&v112);
    if (v48 & 1) != 0 || (v50)
    {
      v52 = v109;
      v53 = v110;
      v54 = v108;
      v55 = v106;
      v56 = v103;
      v57 = v102;
      v58 = v107;
      v59 = v101;
      if (v100 == 1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v51 = ((v100 != 1) & v43) == 1;
      v52 = v109;
      v53 = v110;
      v54 = v108;
      v55 = v106;
      v56 = v103;
      v57 = v102;
      v58 = v107;
      v59 = v101;
      if (!v51)
      {
LABEL_5:
        v60 = a3;
        v53(v92, v59, a3);

        return;
      }
    }

    v107 = a11;
    v103 = a10;
    v102 = a9;
    sub_265BF3150();
    v100 = *(v57 + 16);
    v100(v58, v54, v56);
    sub_265BE7900(v93, v105, &qword_28003C550, &qword_265BF5D30);
    v61 = a3;

    v62 = sub_265BF3230();
    v63 = sub_265BF34B0();

    LODWORD(v101) = v63;
    if (os_log_type_enabled(v62, v63))
    {
      v93 = v62;
      v64 = v58;
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v111 = v66;
      *v65 = 136446978;
      v112 = v52;
      v67 = sub_265BF3350();
      v69 = v68;
      v112 = 0;
      v113 = 0xE000000000000000;
      sub_265BF3620();

      v112 = 0xD000000000000011;
      v113 = 0x8000000265BFA340;
      MEMORY[0x26676D1B0](v67, v69);

      MEMORY[0x26676D1B0](58, 0xE100000000000000);
      v70 = sub_265BB064C(v112, v113, &v111);

      *(v65 + 4) = v70;
      *(v65 + 12) = 2082;
      v100(v99, v64, v56);
      v71 = sub_265BF3350();
      v73 = v72;
      (*(v57 + 8))(v64, v56);
      v74 = sub_265BB064C(v71, v73, &v111);

      *(v65 + 14) = v74;
      *(v65 + 22) = 2080;
      v75 = v91;
      sub_265BE7900(v105, v91, &qword_28003C550, &qword_265BF5D30);
      v76 = v94;
      v77 = v90(v75, 1, v94);
      if (v77 == 1)
      {
        sub_265BB0750(v75, &qword_28003C550, &qword_265BF5D30);
        v78 = 0;
      }

      else
      {
        v78 = sub_265BF2CE0();
        (*(v98 + 8))(v75, v76);
      }

      v79 = v97;
      v80 = v93;
      v112 = v78;
      LOBYTE(v113) = v77 == 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C598, &qword_265BF5970);
      v81 = sub_265BF3590();
      v83 = v82;
      sub_265BB0750(v105, &qword_28003C550, &qword_265BF5D30);
      v84 = sub_265BB064C(v81, v83, &v111);

      *(v65 + 24) = v84;
      *(v65 + 32) = 2082;
      v112 = a3;
      v85 = a3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C300, &qword_265BF4730);
      v86 = sub_265BF3350();
      v88 = sub_265BB064C(v86, v87, &v111);

      *(v65 + 34) = v88;
      _os_log_impl(&dword_265BAD000, v80, v101, "%{public}s Retrying request %{public}s without compression %s because of %{public}s", v65, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x26676DCA0](v66, -1, -1);
      MEMORY[0x26676DCA0](v65, -1, -1);

      (*(v95 + 8))(v106, v96);
      v54 = v108;
    }

    else
    {

      sub_265BB0750(v105, &qword_28003C550, &qword_265BF5D30);
      (*(v57 + 8))(v58, v56);
      (*(v95 + 8))(v55, v96);
      v79 = v97;
      v76 = v94;
    }

    (*(v98 + 56))(v79, 1, 1, v76);
    sub_265BDB48C(v54, v102, v103, v79, v107, v110, v104);

    sub_265BB0750(v79, &qword_28003C550, &qword_265BF5D30);
  }

  else
  {
    v110(a1, a2, 0);
  }
}

void sub_265BDEC80(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(unint64_t, void, uint64_t, __n128), uint64_t a7, double a8)
{
  v103 = a5;
  v105 = a4;
  v14 = sub_265BF3240();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v101 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v102 = &v90 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C550, &qword_265BF5D30);
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x28223BE20](v20 - 8);
  v24 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v90 - v25;
  v27 = sub_265BF2CF0();
  v106 = *(v27 - 8);
  v107 = v27;
  v28 = *(v106 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v100 = &v90 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v104 = &v90 - v31;
  v32.n128_f64[0] = CFAbsoluteTimeGetCurrent();
  if (a2 >> 60 == 15)
  {
    v33 = MEMORY[0x277D84F98];
LABEL_13:
    a6(v33, 0, a3, v32);

    return;
  }

  v108 = a1;
  v34 = v32.n128_f64[0] - a8;
  v35 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v35)
    {
      v99 = a3;
      if (!__OFSUB__(HIDWORD(v108), v108))
      {
        v36 = v15;
        v37 = v14;
        v38 = a7;
        v39 = a6;
        v40 = HIDWORD(v108) - v108;
        goto LABEL_9;
      }

      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

LABEL_12:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5C0, &qword_265BF5988);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265BF57A0;
    *(inited + 32) = 0x64616F6C796170;
    v50 = MEMORY[0x277CC9318];
    v51 = v108;
    *(inited + 40) = 0xE700000000000000;
    *(inited + 48) = v51;
    *(inited + 56) = a2;
    *(inited + 72) = v50;
    *(inited + 80) = 0x656D6954736572;
    *(inited + 88) = 0xE700000000000000;
    *(inited + 120) = MEMORY[0x277D839F8];
    *(inited + 96) = v34;
    v33 = sub_265BE5320(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5C8, &qword_265BF5990);
    swift_arrayDestroy();
    goto LABEL_13;
  }

  if (v35 != 2)
  {
    goto LABEL_12;
  }

  v99 = a3;
  v36 = v15;
  v37 = v14;
  v38 = a7;
  v39 = a6;
  v42 = *(v108 + 16);
  v41 = *(v108 + 24);
  v40 = v41 - v42;
  if (__OFSUB__(v41, v42))
  {
    goto LABEL_35;
  }

LABEL_9:
  sub_265BBB4D0(v108, a2);
  v43 = v40 < 1000;
  a6 = v39;
  v44 = v38;
  v45 = v37;
  v46 = v36;
  a3 = v99;
  if (v43)
  {
    goto LABEL_12;
  }

  v97 = v45;
  v98 = a6;
  sub_265BE7900(v105, v26, &qword_28003C550, &qword_265BF5D30);
  v48 = v106;
  v47 = v107;
  if ((*(v106 + 48))(v26, 1, v107) == 1)
  {
    sub_265BB0750(v26, &qword_28003C550, &qword_265BF5D30);
    a6 = v98;
    goto LABEL_12;
  }

  v105 = v46;
  v52 = v104;
  v53 = (*(v48 + 32))(v104, v26, v47);
  if (v35 == 2)
  {
    v55 = *(v108 + 16);
    v54 = *(v108 + 24);
    v56 = __OFSUB__(v54, v55);
    v57 = v54 - v55;
    if (!v56)
    {
      goto LABEL_20;
    }

    __break(1u);
  }

  LODWORD(v57) = HIDWORD(v108) - v108;
  if (__OFSUB__(HIDWORD(v108), v108))
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  v57 = v57;
LABEL_20:
  v93 = v57;
  v58 = v106;
  v96 = MEMORY[0x26676D6B0](v53);
  v94 = *(v58 + 16);
  v94(v24, v52, v47);
  (*(v58 + 56))(v24, 0, 1, v47);
  v59 = sub_265BF2BB0();
  v95 = v44;
  v60 = v94;
  v91 = a2;
  v92 = v59;
  v102 = v61;
  sub_265BB0750(v24, &qword_28003C550, &qword_265BF5D30);
  objc_autoreleasePoolPop(v96);
  v62 = v102 >> 62;
  if ((v102 >> 62) > 1)
  {
    v63 = v107;
    v64 = v104;
    v66 = v100;
    v65 = v101;
    if (v62 != 2)
    {
      v67 = 0;
      goto LABEL_30;
    }

    v69 = *(v92 + 16);
    v68 = *(v92 + 24);
    v67 = v68 - v69;
    if (!__OFSUB__(v68, v69))
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
    v63 = v107;
    v64 = v104;
    v66 = v100;
    v65 = v101;
    if (!v62)
    {
      v67 = BYTE6(v102);
LABEL_30:
      sub_265BF3150();
      v60(v66, v64, v63);
      v70 = v103;

      v71 = sub_265BF3230();
      v72 = sub_265BF34B0();

      LODWORD(v100) = v72;
      if (os_log_type_enabled(v71, v72))
      {
        v73 = v71;
        v74 = v66;
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v111 = v76;
        *v75 = 136446978;
        v109 = v70;
        v77 = sub_265BF3350();
        v103 = v67;
        v78 = v77;
        v80 = v79;
        v109 = 0;
        v110 = 0xE000000000000000;
        sub_265BF3620();

        v109 = 0xD000000000000011;
        v110 = 0x8000000265BFA340;
        MEMORY[0x26676D1B0](v78, v80);

        MEMORY[0x26676D1B0](58, 0xE100000000000000);
        v81 = sub_265BB064C(v109, v110, &v111);

        *(v75 + 4) = v81;
        *(v75 + 12) = 2048;
        *(v75 + 14) = v93;
        *(v75 + 22) = 2048;
        v82 = sub_265BF2CE0();
        v106 = *(v106 + 8);
        (v106)(v74, v63);
        *(v75 + 24) = v82;
        *(v75 + 32) = 2048;
        *(v75 + 34) = v103;
        _os_log_impl(&dword_265BAD000, v73, v100, "%{public}s Compressing %ld byte response payload with %ld to %ld bytes", v75, 0x2Au);
        __swift_destroy_boxed_opaque_existential_0Tm(v76);
        MEMORY[0x26676DCA0](v76, -1, -1);
        MEMORY[0x26676DCA0](v75, -1, -1);

        (*(v105 + 8))(v101, v97);
      }

      else
      {
        v106 = *(v106 + 8);
        (v106)(v66, v63);

        (*(v105 + 8))(v65, v97);
      }

      a6 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5C0, &qword_265BF5988);
      v83 = swift_initStackObject();
      *(v83 + 32) = 0x64616F6C796170;
      *(v83 + 16) = xmmword_265BF5790;
      v84 = MEMORY[0x277CC9318];
      v85 = v92;
      *(v83 + 40) = 0xE700000000000000;
      *(v83 + 48) = v85;
      v86 = v102;
      *(v83 + 56) = v102;
      *(v83 + 72) = v84;
      *(v83 + 80) = 8024946;
      *(v83 + 88) = 0xE300000000000000;
      sub_265BBB4D0(v85, v86);
      v87 = v104;
      v88 = sub_265BF2CE0();
      v89 = MEMORY[0x277D83B88];
      *(v83 + 96) = v88;
      *(v83 + 120) = v89;
      *(v83 + 128) = 0x656D6954736572;
      *(v83 + 136) = 0xE700000000000000;
      *(v83 + 168) = MEMORY[0x277D839F8];
      *(v83 + 144) = v34;
      v33 = sub_265BE5320(v83);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28003C5C8, &qword_265BF5990);
      swift_arrayDestroy();
      sub_265BBB1D0(v85, v86);
      sub_265BBC0A4(v108, v91);
      (v106)(v87, v107);
      goto LABEL_13;
    }
  }

  if (!__OFSUB__(HIDWORD(v92), v92))
  {
    v67 = HIDWORD(v92) - v92;
    goto LABEL_30;
  }

LABEL_37:
  __break(1u);
}

uint64_t DeviceConnection.sendRequest(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v96 = a2;
  v5 = sub_265BF2C30();
  v92 = *(v5 - 8);
  v93 = v5;
  v91 = *(v92 + 64);
  v6 = MEMORY[0x28223BE20](v5);
  v90 = v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v102 = v78 - v8;
  v9 = sub_265BF3210();
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = *(v86 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_265BF31F0();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_265BF2F60();
  v94 = *(v15 - 8);
  v95 = v15;
  v16 = *(v94 + 64);
  MEMORY[0x28223BE20](v15);
  v100 = v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_265BF2FD0();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v99 = *(v88 - 8);
  v84 = v99[8];
  v21 = MEMORY[0x28223BE20](v88);
  v89 = v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v98 = v78 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v101 = v78 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v97 = v78 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = v78 - v29;
  (*(v19 + 16))(v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v18);
  v31 = (*(v19 + 80) + 24) & ~*(v19 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v3;
  (*(v19 + 32))(v32 + v31, v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v18);

  v33 = v30;
  v85 = v30;
  sub_265BF2DF0();
  sub_265BF3180();
  v34 = sub_265BF2F30();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = sub_265BF2F00();
  sub_265BF2F50();

  sub_265BF3200();
  sub_265BF31E0();
  (*(v86 + 8))(v12, v87);
  sub_265BF2F50();
  v38 = sub_265BF31C0();
  v39 = *(v38 + 48);
  v40 = *(v38 + 52);
  swift_allocObject();
  v41 = sub_265BF3190();
  v87 = v41;
  v103 = v37;
  v42 = sub_265BF3350();
  v86 = v42;
  v44 = v43;
  sub_265BF2C20();
  v45 = swift_allocObject();
  v83 = v37;
  *(v45 + 16) = v37;
  *(v45 + 24) = v41;
  *(v45 + 32) = v42;
  *(v45 + 40) = v44;
  v82 = v44;
  *(v45 + 48) = "DeviceConnection::sendRequest";
  *(v45 + 56) = 29;
  *(v45 + 64) = 2;

  v46 = v97;
  sub_265BF2DF0();
  v48 = v98;
  v47 = v99;
  v49 = v99 + 2;
  v50 = v99[2];
  v51 = v33;
  v52 = v88;
  v50(v98, v51, v88);
  v81 = v50;
  v80 = v49;
  v53 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v54 = v84 + v53;
  v78[1] = *(v47 + 80);
  v78[0] = swift_allocObject();
  v55 = v47[4];
  v79 = v53;
  v55(v78[0] + v53, v48, v52);
  v84 = v55;
  v56 = v89;
  v50(v89, v46, v52);
  v57 = (v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v58 = swift_allocObject();
  v59 = v52;
  v55(v58 + v53, v56, v52);
  v60 = (v58 + v57);
  v61 = v78[0];
  *v60 = sub_265BB2424;
  v60[1] = v61;
  sub_265BF2DF0();
  v63 = v92;
  v62 = v93;
  v64 = v90;
  (*(v92 + 16))(v90, v102, v93);
  v65 = (*(v63 + 80) + 49) & ~*(v63 + 80);
  v66 = (v91 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v67 = swift_allocObject();
  v68 = v82;
  *(v67 + 16) = v86;
  *(v67 + 24) = v68;
  *(v67 + 32) = "DeviceConnection::sendRequest";
  *(v67 + 40) = 29;
  *(v67 + 48) = 2;
  (*(v63 + 32))(v67 + v65, v64, v62);
  *(v67 + v66) = v87;
  *(v67 + ((v66 + 15) & 0xFFFFFFFFFFFFFFF8)) = v83;
  v69 = v98;
  v70 = v101;
  v71 = v59;
  v81(v98, v101, v59);
  v72 = swift_allocObject();
  v73 = v69;
  v74 = v71;
  v84(v72 + v79, v73, v71);
  v75 = (v72 + v57);
  *v75 = sub_265BE5734;
  v75[1] = v67;

  sub_265BF2DF0();
  v76 = v99[1];
  v76(v70, v74);
  v76(v97, v74);
  (*(v63 + 8))(v102, v62);
  (*(v94 + 8))(v100, v95);
  v76(v85, v74);
}

uint64_t sub_265BE0100(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  sub_265BE6D78(a4, 0, 0xF000000000000000, a3, sub_265BE79BC, v8, &unk_287776750, &unk_287776778, sub_265BE79C0, sub_265BE7984);
}

uint64_t DeviceConnection.sendRequest<A>(_:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X8>)
{
  v91 = a5;
  v90 = a4;
  v105 = a6;
  v9 = sub_265BF2C30();
  v101 = *(v9 - 8);
  v102 = v9;
  v100 = *(v101 + 64);
  v10 = MEMORY[0x28223BE20](v9);
  v99 = v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v112 = v88 - v12;
  v98 = sub_265BF3210();
  v96 = *(v98 - 8);
  v13 = *(v96 + 64);
  MEMORY[0x28223BE20](v98);
  v94 = v88 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_265BF31F0();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = (v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = sub_265BF2F60();
  v103 = *(v18 - 8);
  v104 = v18;
  v19 = *(v103 + 64);
  MEMORY[0x28223BE20](v18);
  v110 = v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_265BF2FD0();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v25 = v88 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a3 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v24);
  v28 = v88 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_28003C470, &qword_265BF4740);
  v109 = *(v95 - 8);
  v89 = v109[8];
  v29 = MEMORY[0x28223BE20](v95);
  v97 = v88 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v108 = v88 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v111 = v88 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v107 = v88 - v36;
  MEMORY[0x28223BE20](v35);
  v106 = v88 - v37;
  (*(v26 + 16))(v28, a2, a3);
  (*(v22 + 16))(v25, a1, v21);
  v38 = (*(v26 + 80) + 40) & ~*(v26 + 80);
  v39 = (v27 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v22 + 80) + v39 + 8) & ~*(v22 + 80);
  v41 = swift_allocObject();
  v42 = v90;
  *(v41 + 2) = a3;
  *(v41 + 3) = v42;
  *(v41 + 4) = v91;
  (*(v26 + 32))(&v41[v38], v28, a3);
  *&v41[v39] = v93;
  (*(v22 + 32))(&v41[v40], v25, v21);

  v43 = v106;
  sub_265BF2DF0();
  sub_265BF3180();
  v44 = sub_265BF2F30();
  v45 = *(v44 + 48);
  v46 = *(v44 + 52);
  swift_allocObject();
  v47 = sub_265BF2F00();
  v48 = v94;
  sub_265BF2F50();

  sub_265BF3200();
  sub_265BF31E0();
  (*(v96 + 8))(v48, v98);
  sub_265BF2F50();
  v49 = sub_265BF31C0();
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  swift_allocObject();
  v52 = sub_265BF3190();
  v98 = v52;
  v113 = v47;
  v53 = sub_265BF3350();
  v96 = v53;
  v55 = v54;
  sub_265BF2C20();
  v56 = swift_allocObject();
  v93 = v47;
  v94 = v55;
  *(v56 + 16) = v47;
  *(v56 + 24) = v52;
  *(v56 + 32) = v53;
  *(v56 + 40) = v55;
  *(v56 + 48) = "DeviceConnection::sendRequest:Payload";
  *(v56 + 56) = 37;
  *(v56 + 64) = 2;

  v57 = v107;
  sub_265BF2DF0();
  v59 = v108;
  v58 = v109;
  v60 = v109 + 2;
  v61 = v109[2];
  v62 = v95;
  v61(v108, v43, v95);
  v92 = v61;
  v91 = v60;
  v63 = (*(v58 + 80) + 16) & ~*(v58 + 80);
  v64 = v89 + v63;
  v88[1] = *(v58 + 80);
  v88[0] = swift_allocObject();
  v65 = v58[4];
  v90 = v63;
  v65(v88[0] + v63, v59, v62);
  v89 = v65;
  v66 = v97;
  v61(v97, v57, v62);
  v67 = (v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v69 = v62;
  v65(v68 + v63, v66, v62);
  v70 = (v68 + v67);
  v71 = v88[0];
  *v70 = sub_265BD339C;
  v70[1] = v71;
  sub_265BF2DF0();
  v73 = v101;
  v72 = v102;
  v74 = v99;
  (*(v101 + 16))(v99, v112, v102);
  v75 = (*(v73 + 80) + 49) & ~*(v73 + 80);
  v76 = (v100 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  v78 = v94;
  *(v77 + 16) = v96;
  *(v77 + 24) = v78;
  *(v77 + 32) = "DeviceConnection::sendRequest:Payload";
  *(v77 + 40) = 37;
  *(v77 + 48) = 2;
  (*(v73 + 32))(v77 + v75, v74, v72);
  *(v77 + v76) = v98;
  *(v77 + ((v76 + 15) & 0xFFFFFFFFFFFFFFF8)) = v93;
  v79 = v108;
  v80 = v111;
  v81 = v69;
  v92(v108, v111, v69);
  v82 = swift_allocObject();
  v83 = v79;
  v84 = v81;
  v89(v82 + v90, v83, v81);
  v85 = (v82 + v67);
  *v85 = sub_265BE79AC;
  v85[1] = v77;

  sub_265BF2DF0();
  v86 = v109[1];
  v86(v80, v84);
  v86(v107, v84);
  (*(v73 + 8))(v112, v72);
  (*(v103 + 8))(v110, v104);
  v86(v106, v84);
}

uint64_t sub_265BE0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;

  v10 = sub_265BF2D30();
  v12 = v11;

  sub_265BE6D78(a5, v10, v12, a4, sub_265BE62BC, v9, &unk_2877766B0, &unk_2877766D8, sub_265BE73FC, sub_265BE7984);

  return sub_265BBC0A4(v10, v12);
}