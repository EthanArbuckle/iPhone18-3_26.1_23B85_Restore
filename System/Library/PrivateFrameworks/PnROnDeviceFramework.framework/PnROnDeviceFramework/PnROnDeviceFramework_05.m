uint64_t sub_25E9CD5FC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_25E9CD3D8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_25E9CD71C();
      a2 = v7;
      goto LABEL_12;
    }

    sub_25E9CD85C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = sub_25E9D8380();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_25E9D8320();
  __break(1u);
  return result;
}

void *sub_25E9CD71C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD70, qword_25E9DC130);
  v2 = *v0;
  v3 = sub_25E9D8210();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_25E9CD85C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD70, qword_25E9DC130);
  result = sub_25E9D8220();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = sub_25E9D8380();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_25E9CDA4C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D8A0, &unk_25E9D97E0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v29 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D880, &unk_25E9D97C0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v29 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - v13;
  sub_25E9D79A0();
  v15 = sub_25E9D7A80();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v7, 1, v15) == 1)
  {
    sub_25E981210(v7, &qword_27FD0D880, &unk_25E9D97C0);
    v17 = sub_25E9D7B90();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
LABEL_10:
    v21 = 0;
    goto LABEL_11;
  }

  sub_25E9D7A70();
  (*(v16 + 8))(v7, v15);
  v18 = sub_25E9D7B90();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v14, 1, v18) == 1)
  {
    goto LABEL_10;
  }

  sub_25E9811A8(v14, v12, &qword_27FD0D888, &qword_25E9DBDA0);
  v20 = (*(v19 + 88))(v12, v18);
  if (v20 != *MEMORY[0x277D23588])
  {
    if (v20 == *MEMORY[0x277D23560])
    {
      sub_25E9D79F0();
      v22 = sub_25E9D7C40();
      v23 = *(v22 - 8);
      if ((*(v23 + 48))(v3, 1, v22) == 1)
      {
        sub_25E981210(v3, &qword_27FD0D8A0, &unk_25E9D97E0);
      }

      else
      {
        v25 = sub_25E9D79E0();
        v27 = v26;
        (*(v23 + 8))(v3, v22);
        if (v25 == 0x726F747563657865 && v27 == 0xE800000000000000)
        {

          goto LABEL_5;
        }

        v28 = sub_25E9D8300();

        if (v28)
        {
          goto LABEL_5;
        }
      }
    }

    (*(v19 + 8))(v12, v18);
    goto LABEL_10;
  }

LABEL_5:
  (*(v19 + 8))(v12, v18);
  v21 = 1;
LABEL_11:
  sub_25E981210(v14, &qword_27FD0D888, &qword_25E9DBDA0);
  return v21;
}

uint64_t sub_25E9CDE98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D888, &qword_25E9DBDA0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SELFComponent.turn.getter()
{
  swift_beginAccess();
  v0 = qword_27FD0DD78;
  v1 = qword_27FD0DD78;
  return v0;
}

void static SELFComponent.turn.setter(uint64_t a1)
{
  swift_beginAccess();
  v2 = qword_27FD0DD78;
  qword_27FD0DD78 = a1;
}

void sub_25E9CDFFC(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  v2 = qword_27FD0DD78;
  qword_27FD0DD78 = v1;
  v3 = v1;
}

uint64_t PnRLatencyContextMetrics.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  sub_25E9D8240();
  MEMORY[0x25F8C4910](0xD000000000000012, 0x800000025E9DEB40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD80, "|d");
  v5 = sub_25E9D7FF0();
  MEMORY[0x25F8C4910](v5);

  MEMORY[0x25F8C4910](0xD000000000000010, 0x800000025E9DEB60);
  v6 = sub_25E9D7FF0();
  MEMORY[0x25F8C4910](v6);

  MEMORY[0x25F8C4910](0xD000000000000014, 0x800000025E9DEB80);
  v7 = 0xE300000000000000;
  v8 = 7104878;
  if (v2 != 89 && v4 != 89)
  {
    sub_25E9D80F0();
    v8 = 0;
    v7 = 0xE000000000000000;
  }

  MEMORY[0x25F8C4910](v8, v7);

  MEMORY[0x25F8C4910](32010, 0xE200000000000000);
  return 0;
}

id PnRSiriTurnGrainSummary.createSiriTurnGrainSummarySELFEvent()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1 - 8);
  v309 = &v275 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v3);
  *&v312 = &v275 - v6;
  v7 = MEMORY[0x28223BE20](v5);
  *&v313 = &v275 - v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v275 - v9;
  v321 = sub_25E9D77F0();
  v11 = *(v321 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v321);
  v314 = &v275 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v310 = &v275 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  *&v311 = &v275 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v315 = &v275 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v275 - v21;
  v23 = *v0;
  v24 = v0[1];
  v25 = v0[2];
  v26 = v0[3];
  v27 = v0[5];
  v319 = v0[4];
  v318 = v27;
  v28 = v0[6];
  v29 = *(v0 + 9);
  v339 = *(v0 + 7);
  v340 = v29;
  v30 = *(v0 + 13);
  v341 = *(v0 + 11);
  v342 = v30;
  v316 = v0[15];
  v338 = *(v0 + 8);
  v317 = v0[18];
  v31 = *(v0 + 19);
  v337 = v0[27];
  v32 = *(v0 + 25);
  v335 = *(v0 + 23);
  v336 = v32;
  v33 = *(v0 + 21);
  v333 = v31;
  v334 = v33;
  v34 = [objc_allocWithZone(MEMORY[0x277D59E38]) init];
  if (!v34)
  {
LABEL_9:
    if (qword_280F6FE70 != -1)
    {
      goto LABEL_171;
    }

    goto LABEL_10;
  }

  v307 = v26;
  v320 = v34;
  v35 = [objc_allocWithZone(MEMORY[0x277D59ED0]) init];
  if (!v35)
  {

    goto LABEL_9;
  }

  v36 = v35;
  v284 = v25;
  v37 = [objc_allocWithZone(MEMORY[0x277D59E40]) init];
  if (!v37)
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v44 = sub_25E9D7F10();
    __swift_project_value_buffer(v44, qword_280F6FE78);
    v45 = sub_25E9D7F00();
    v46 = sub_25E9D8120();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_25E971000, v45, v46, "PNRODSchemaPNRODClientEventMetadata init failed!", v47, 2u);
      MEMORY[0x25F8C51A0](v47, -1, -1);
    }

    goto LABEL_163;
  }

  v38 = v37;
  if (!v24)
  {
    goto LABEL_7;
  }

  sub_25E9D77B0();
  v39 = v321;
  if ((*(v11 + 48))(v10, 1, v321) == 1)
  {
    sub_25E9961C4(v10);
LABEL_7:
    [v36 setTurnid_];
    goto LABEL_19;
  }

  (*(v11 + 32))(v22, v10, v39);
  v48 = objc_allocWithZone(MEMORY[0x277D5AC78]);
  v49 = sub_25E9D77D0();
  v50 = [v48 initWithNSUUID_];

  [v36 setTurnid_];
  (*(v11 + 8))(v22, v321);
LABEL_19:
  v283 = v38;
  *&v324 = v284;
  *(&v324 + 1) = v307;
  *&v325 = v319;
  *(&v325 + 1) = v318;
  v51 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
  [v36 setSrt_];

  v332 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_25E9D8290())
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v271 = sub_25E9D7F10();
    __swift_project_value_buffer(v271, qword_280F6FE78);
    v272 = sub_25E9D7F00();
    v273 = sub_25E9D8120();
    if (os_log_type_enabled(v272, v273))
    {
      v274 = swift_slowAlloc();
      *v274 = 0;
      _os_log_impl(&dword_25E971000, v272, v273, "queryDecorationEvent-PNRODSchemaPNRODQueryDecoration init failed!", v274, 2u);
      MEMORY[0x25F8C51A0](v274, -1, -1);
    }

    goto LABEL_163;
  }

  if (!v28)
  {
    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v173 = sub_25E9D7F10();
    __swift_project_value_buffer(v173, qword_280F6FE78);
    v111 = sub_25E9D7F00();
    v112 = sub_25E9D8120();
    v174 = os_log_type_enabled(v111, v112);
    v114 = v283;
    if (!v174)
    {
      goto LABEL_162;
    }

    v115 = swift_slowAlloc();
    *v115 = 0;
    v116 = "Data for queryDecoration Mapping is Missing!";
    goto LABEL_161;
  }

  v277 = v23;
  v282 = v36;
  v52 = v28 + 64;
  v53 = 1 << *(v28 + 32);
  v54 = -1;
  if (v53 < 64)
  {
    v54 = ~(-1 << v53);
  }

  v55 = v54 & *(v28 + 64);
  v56 = (v53 + 63) >> 6;
  v278 = (v11 + 48);
  v276 = (v11 + 32);
  v279 = (v11 + 8);
  v280 = v24;
  v308 = v28;

  v57 = 0;
  v58 = MEMORY[0x277D84F90];
LABEL_24:
  v281 = v58;
  v59 = v57;
  if (!v55)
  {
    goto LABEL_26;
  }

  do
  {
    v57 = v59;
LABEL_29:
    v60 = __clz(__rbit64(v55)) | (v57 << 6);
    v61 = (*(v308 + 48) + 16 * v60);
    v63 = *v61;
    v62 = v61[1];
    v55 &= v55 - 1;
    v64 = (*(v308 + 56) + 360 * v60);
    v65 = *v64;
    v66 = *(v64 + 4);
    v67 = *(v64 + 6);
    v285 = *(v64 + 2);
    v286 = v67;
    v68 = *(v64 + 10);
    v287 = *(v64 + 14);
    v288 = v68;
    v69 = *(v64 + 18);
    v289 = *(v64 + 22);
    v290 = v69;
    v70 = *(v64 + 26);
    v291 = *(v64 + 30);
    v292 = v70;
    v71 = *(v64 + 34);
    v293 = *(v64 + 38);
    v294 = v71;
    v72 = *(v64 + 42);
    v295 = *(v64 + 46);
    v296 = v72;
    v73 = *(v64 + 50);
    v297 = *(v64 + 54);
    v298 = v73;
    v74 = *(v64 + 58);
    v299 = *(v64 + 62);
    v300 = v74;
    v75 = *(v64 + 66);
    v301 = *(v64 + 70);
    v302 = v75;
    v76 = *(v64 + 74);
    v303 = *(v64 + 78);
    v304 = v76;
    v64 += 82;
    v77 = *v64;
    v305 = *(v64 + 1);
    v306 = v77;
    v78 = objc_allocWithZone(MEMORY[0x277D59EB0]);

    v79 = [v78 init];
    if (v79)
    {
      v80 = v79;
      v81 = v313;
      sub_25E9D77B0();

      v82 = v321;
      if ((*v278)(v81, 1, v321) == 1)
      {
        sub_25E9961C4(v81);
        [v80 setQueryDecorationID_];
        if (qword_280F6FE70 != -1)
        {
          swift_once();
        }

        v83 = sub_25E9D7F10();
        __swift_project_value_buffer(v83, qword_280F6FE78);
        v84 = sub_25E9D7F00();
        v85 = sub_25E9D8120();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          v87 = v84;
          v88 = v86;
          *v86 = 0;
          v89 = v85;
          v90 = v87;
          _os_log_impl(&dword_25E971000, v87, v89, "Data for queryDecorationID Mapping is Missing!", v86, 2u);
          MEMORY[0x25F8C51A0](v88, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        (*v276)(v315, v81, v82);
        v91 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v92 = sub_25E9D77D0();
        v93 = [v91 initWithNSUUID_];

        [v80 setQueryDecorationID_];
        (*v279)(v315, v321);
      }

      if (v66)
      {
        [v80 setQueryDecorationSource_];
        if (qword_280F6FE70 != -1)
        {
          swift_once();
        }

        v94 = sub_25E9D7F10();
        __swift_project_value_buffer(v94, qword_280F6FE78);
        v95 = sub_25E9D7F00();
        v96 = sub_25E9D8120();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          *v97 = 0;
          _os_log_impl(&dword_25E971000, v95, v96, "Data for queryDecorationSource Mapping is Missing!", v97, 2u);
          MEMORY[0x25F8C51A0](v97, -1, -1);
        }
      }

      else
      {
        [v80 setQueryDecorationSource_];
      }

      v324 = v285;
      v325 = v286;
      v98 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
      [v80 setQueryDecorationHandleTime_];

      v324 = v288;
      v325 = v287;
      v99 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
      [v80 setQueryDecorationSpanRetrievalTime_];

      v324 = v290;
      v325 = v289;
      v100 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
      [v80 setQueryDecorationContextRetrievalTime_];

      v324 = v292;
      v325 = v291;
      v101 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
      [v80 setQueryDecorationToolRetrievalTime_];

      v324 = v294;
      v325 = v293;
      v102 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
      [v80 setQueryDecorationRankingTime_];

      v324 = v296;
      v325 = v295;
      v103 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
      [v80 setQueryDecorationOutputBuildingTime_];

      v324 = v298;
      v325 = v297;
      v104 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
      [v80 setQueryDecorationTupleBuildingTime_];

      v324 = v300;
      v325 = v299;
      v105 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
      [v80 setQueryDecorationTupleRankingTime_];

      v324 = v302;
      v325 = v301;
      v106 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
      [v80 setQueryDecorationInputCollectionTime_];

      v324 = v304;
      v325 = v303;
      v107 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
      [v80 setQueryDecorationToolRetrievalContextTime_];

      v324 = v306;
      v325 = v305;
      v108 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
      [v80 setQueryDecorationFetchDynamicEnumerationTime_];

      MEMORY[0x25F8C4950]();
      if (*((v332 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v332 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v109 = *((v332 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25E9D80A0();
      }

      sub_25E9D80C0();
      v58 = v332;
      goto LABEL_24;
    }

    v59 = v57;
  }

  while (v55);
  while (1)
  {
LABEL_26:
    v57 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      __break(1u);
      goto LABEL_169;
    }

    if (v57 >= v56)
    {
      break;
    }

    v55 = *(v52 + 8 * v57);
    ++v59;
    if (v55)
    {
      goto LABEL_29;
    }
  }

  v331 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62 && sub_25E9D8290())
  {

    if (qword_27FD0D5A8 != -1)
    {
      swift_once();
    }

    v110 = sub_25E9D7F10();
    __swift_project_value_buffer(v110, qword_27FD0DB30);
    v111 = sub_25E9D7F00();
    v112 = sub_25E9D8120();
    v113 = os_log_type_enabled(v111, v112);
    v36 = v282;
    v114 = v283;
    if (!v113)
    {
      goto LABEL_162;
    }

    v115 = swift_slowAlloc();
    *v115 = 0;
    v116 = "responseGeneration-PNRODSchemaPNRODResponseGeneration init failed!";
LABEL_161:
    _os_log_impl(&dword_25E971000, v111, v112, v116, v115, 2u);
    MEMORY[0x25F8C51A0](v115, -1, -1);
LABEL_162:

LABEL_163:
    return 0;
  }

  v117 = v316;
  if (!v316)
  {

    if (qword_280F6FE70 != -1)
    {
      swift_once();
    }

    v224 = sub_25E9D7F10();
    __swift_project_value_buffer(v224, qword_280F6FE78);
    v111 = sub_25E9D7F00();
    v112 = sub_25E9D8120();
    v225 = os_log_type_enabled(v111, v112);
    v36 = v282;
    v114 = v283;
    if (!v225)
    {
      goto LABEL_162;
    }

    v115 = swift_slowAlloc();
    *v115 = 0;
    v116 = "Data for responseGeneration Mapping is Missing!";
    goto LABEL_161;
  }

  v118 = v316 + 64;
  v119 = 1 << *(v316 + 32);
  v120 = -1;
  if (v119 < 64)
  {
    v120 = ~(-1 << v119);
  }

  v121 = v120 & *(v316 + 64);
  v122 = (v119 + 63) >> 6;
  v123 = 0x800000025E9DECA0;
  *&v313 = 0x800000025E9DEC80;
  *&v306 = 0x800000025E9DEC60;
  *&v305 = 0x800000025E9DEC40;
  *&v304 = 0x800000025E9DEC10;
  *&v303 = 0x800000025E9DEBF0;
  *&v302 = 0x800000025E9DEBD0;
  *&v301 = 0x800000025E9DEBA0;

  v124 = 0;
  v125 = MEMORY[0x277D84F90];
LABEL_59:
  v315 = v125;
  v126 = v124;
  if (!v121)
  {
    goto LABEL_61;
  }

  do
  {
    v124 = v126;
LABEL_64:
    v127 = __clz(__rbit64(v121));
    v121 &= v121 - 1;
    v128 = v127 | (v124 << 6);
    v129 = (*(v117 + 48) + 16 * v128);
    v131 = *v129;
    v130 = v129[1];
    v132 = (*(v117 + 56) + 240 * v128);
    v134 = v132[1];
    v133 = v132[2];
    v324 = *v132;
    v325 = v134;
    v326 = v133;
    v135 = v132[6];
    v137 = v132[3];
    v136 = v132[4];
    v327[2] = v132[5];
    v327[3] = v135;
    v327[0] = v137;
    v327[1] = v136;
    v138 = v132[10];
    v140 = v132[7];
    v139 = v132[8];
    v329[0] = v132[9];
    v329[1] = v138;
    v327[4] = v140;
    v328 = v139;
    v141 = v132[13];
    v143 = v132[11];
    v142 = v132[12];
    v330 = v132[14];
    v329[3] = v142;
    v329[4] = v141;
    v329[2] = v143;
    v144 = objc_allocWithZone(MEMORY[0x277D59EB8]);

    sub_25E980FDC(&v324, &v322);
    v145 = [v144 init];
    if (v145)
    {
      v146 = v145;
      v315 = v123;
      v147 = v312;
      sub_25E9D77B0();

      v148 = v321;
      if ((*v278)(v147, 1, v321) == 1)
      {
        sub_25E9961C4(v147);
        [v146 setResponseGenerationID_];
        if (qword_27FD0D5A8 != -1)
        {
          swift_once();
        }

        v149 = sub_25E9D7F10();
        __swift_project_value_buffer(v149, qword_27FD0DB30);
        v150 = sub_25E9D7F00();
        v151 = sub_25E9D8120();
        v152 = os_log_type_enabled(v150, v151);
        v123 = v315;
        if (v152)
        {
          v153 = swift_slowAlloc();
          v154 = v150;
          v155 = v153;
          *v153 = 0;
          v156 = v151;
          v157 = v154;
          _os_log_impl(&dword_25E971000, v154, v156, "Data for responseGenerationID Mapping is Missing!", v153, 2u);
          MEMORY[0x25F8C51A0](v155, -1, -1);
        }

        else
        {
        }
      }

      else
      {
        (*v276)(v311, v147, v148);
        v158 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v159 = sub_25E9D77D0();
        v160 = [v158 initWithNSUUID_];

        [v146 setResponseGenerationID_];
        (*v279)(v311, v321);
        v123 = v315;
      }

      v161 = *(&v324 + 1);
      if (*(&v324 + 1))
      {
        v162 = v324;
        if (__PAIR128__(v123, 0xD000000000000015) == v324 || (sub_25E9D8300() & 1) != 0)
        {
          v163 = 1;
LABEL_110:
          [v146 setResponseGenerationType_];
          v322 = v325;
          v323 = v326;
          v165 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v322);
          [v146 setResponseGenerationHandleTime_];

          v322 = v327[0];
          v323 = v327[1];
          v166 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v322);
          [v146 setResponseGenerationOverrideTime_];

          v322 = v327[2];
          v323 = v327[3];
          v167 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v322);
          [v146 setResponseGenerationValidationTime_];

          v322 = v327[4];
          v323 = v328;
          v168 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v322);
          [v146 setResponseGenerationCatalogTime_];

          v322 = v329[0];
          v323 = v329[1];
          v169 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v322);
          [v146 setResponseGenerationInferenceTime_];

          v322 = v329[2];
          v323 = v329[3];
          v170 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v322);
          [v146 setResponseGenerationHallucinationDetectionTime_];

          v322 = v329[4];
          v323 = v330;
          v171 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v322);
          sub_25E99FE4C(&v324);
          [v146 setResponseGenerationGMSCallTime_];

          MEMORY[0x25F8C4950]();
          if (*((v331 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v331 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v172 = *((v331 & 0xFFFFFFFFFFFFFF8) + 0x10);
            sub_25E9D80A0();
            v123 = v315;
          }

          sub_25E9D80C0();
          v125 = v331;
          goto LABEL_59;
        }

        if (v162 == 0xD000000000000019 && v313 == v161 || (sub_25E9D8300() & 1) != 0)
        {
          v163 = 2;
          goto LABEL_110;
        }

        if (v162 == 0xD000000000000019 && v306 == v161 || (sub_25E9D8300() & 1) != 0)
        {
          v163 = 3;
          goto LABEL_110;
        }

        if (v162 == 0xD00000000000001DLL && v305 == v161)
        {
          v163 = 4;
          goto LABEL_110;
        }

        if (sub_25E9D8300())
        {
          v163 = 4;
LABEL_95:
          v117 = v316;
          v123 = v315;
          goto LABEL_110;
        }

        if (v162 == 0xD000000000000021 && v304 == v161 || (sub_25E9D8300() & 1) != 0)
        {
          v163 = 5;
          goto LABEL_95;
        }

        if (v162 == 0xD00000000000001ALL && v303 == v161 || (sub_25E9D8300() & 1) != 0)
        {
          v163 = 6;
          goto LABEL_95;
        }

        if (v162 == 0xD000000000000017 && v302 == v161 || (sub_25E9D8300() & 1) != 0)
        {
          v163 = 7;
          goto LABEL_95;
        }

        if (v162 == 0xD000000000000023 && v301 == v161)
        {
          v163 = 8;
          goto LABEL_95;
        }

        v164 = sub_25E9D8300();
        v117 = v316;
        v123 = v315;
        if (v164)
        {
          v163 = 8;
          goto LABEL_110;
        }
      }

      v163 = 0;
      goto LABEL_110;
    }

    sub_25E99FE4C(&v324);
    v126 = v124;
  }

  while (v121);
LABEL_61:
  while (1)
  {
    v124 = v126 + 1;
    if (__OFADD__(v126, 1))
    {
      break;
    }

    if (v124 >= v122)
    {

      *&v322 = MEMORY[0x277D84F90];
      if (MEMORY[0x277D84F90] >> 62 && sub_25E9D8290())
      {

        if (qword_280F6FE70 != -1)
        {
          swift_once();
        }

        v175 = sub_25E9D7F10();
        __swift_project_value_buffer(v175, qword_280F6FE78);
        v111 = sub_25E9D7F00();
        v112 = sub_25E9D8120();
        v176 = os_log_type_enabled(v111, v112);
        v36 = v282;
        v114 = v283;
        if (v176)
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          v116 = "executorEvent-PNRODSchemaPNRODExecutor init failed!";
          goto LABEL_161;
        }
      }

      else
      {
        v177 = v317;
        if (v317)
        {
          v178 = v317 + 64;
          v179 = 1 << *(v317 + 32);
          v180 = -1;
          if (v179 < 64)
          {
            v180 = ~(-1 << v179);
          }

          v181 = v180 & *(v317 + 64);
          v182 = (v179 + 63) >> 6;

          *&v295 = MEMORY[0x277D84F90];
          v183 = 0;
          if (v181)
          {
            while (1)
            {
              v184 = v183;
LABEL_131:
              v185 = __clz(__rbit64(v181));
              v181 &= v181 - 1;
              v186 = v185 | (v184 << 6);
              v187 = (*(v177 + 48) + 16 * v186);
              v189 = *v187;
              v188 = v187[1];
              v190 = *(v177 + 56) + 232 * v186;
              v191 = *(v190 + 16);
              v296 = *v190;
              v297 = v191;
              v192 = *(v190 + 32);
              v193 = *(v190 + 36);
              v194 = *(v190 + 40);
              v298 = *(v190 + 56);
              v299 = v194;
              v195 = *(v190 + 72);
              v300 = *(v190 + 88);
              v301 = v195;
              v196 = *(v190 + 104);
              v302 = *(v190 + 120);
              v303 = v196;
              v197 = *(v190 + 136);
              v304 = *(v190 + 152);
              v305 = v197;
              v306 = *(v190 + 184);
              v198 = *(v190 + 216);
              v311 = *(v190 + 168);
              v312 = v198;
              v313 = *(v190 + 200);
              v199 = objc_allocWithZone(MEMORY[0x277D59E48]);

              v200 = [v199 init];
              if (v200)
              {
                v201 = v200;
                v202 = v309;
                sub_25E9D77B0();

                v203 = v321;
                if ((*v278)(v202, 1, v321) == 1)
                {
                  sub_25E9961C4(v202);
                  [v201 setExecutorId_];
                  if (qword_280F6FE70 != -1)
                  {
                    swift_once();
                  }

                  v204 = sub_25E9D7F10();
                  __swift_project_value_buffer(v204, qword_280F6FE78);
                  v205 = sub_25E9D7F00();
                  v206 = sub_25E9D8120();
                  if (os_log_type_enabled(v205, v206))
                  {
                    v207 = swift_slowAlloc();
                    v208 = v205;
                    v209 = v207;
                    *v207 = 0;
                    v210 = v206;
                    v211 = v208;
                    _os_log_impl(&dword_25E971000, v208, v210, "Data for executorId Mapping is Missing!", v207, 2u);
                    MEMORY[0x25F8C51A0](v209, -1, -1);
                  }

                  else
                  {
                  }
                }

                else
                {
                  (*v276)(v310, v202, v203);
                  v212 = objc_allocWithZone(MEMORY[0x277D5AC78]);
                  v213 = sub_25E9D77D0();
                  v214 = [v212 initWithNSUUID_];

                  [v201 setExecutorId_];
                  (*v279)(v310, v321);
                }

                v324 = v296;
                v325 = v297;
                v215 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
                [v201 setExecutorAppIntentHandleTime_];

                if (v193)
                {
                  v216 = 0;
                }

                else
                {
                  v216 = v192;
                }

                [v201 setExecutorSearchToolQueryType_];
                v324 = v299;
                v325 = v298;
                v217 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
                [v201 setSearchToolQueryTime_];

                v324 = v301;
                v325 = v300;
                v218 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
                [v201 setPersonQueryTime_];

                v324 = v303;
                v325 = v302;
                v219 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
                [v201 setStringQueryLocationTime_];

                v324 = v305;
                v325 = v304;
                v220 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
                [v201 setStringQueryEntityMatcherTime_];

                v324 = v311;
                v325 = v306;
                v221 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
                [v201 setStringQueryEntityTime_];

                v324 = v313;
                v325 = v312;
                v222 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v324);
                [v201 setIdentifierQueryTime_];

                MEMORY[0x25F8C4950]();
                if (*((v322 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v322 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v223 = *((v322 & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_25E9D80A0();
                }

                sub_25E9D80C0();
                *&v295 = v322;
                v177 = v317;
                v183 = v184;
                if (!v181)
                {
                  break;
                }
              }

              else
              {

                v183 = v184;
                v177 = v317;
                if (!v181)
                {
                  break;
                }
              }
            }
          }

          while (1)
          {
            v184 = v183 + 1;
            if (__OFADD__(v183, 1))
            {
              goto LABEL_170;
            }

            if (v184 >= v182)
            {

              v226 = v314;
              sub_25E9D77E0();
              v227 = objc_allocWithZone(MEMORY[0x277D5AC78]);
              v228 = sub_25E9D77D0();
              v229 = [v227 initWithNSUUID_];

              (*v279)(v226, v321);
              [v283 setPnrodId_];

              sub_25E98F558(0, &qword_27FD0DD88, 0x277D59EB0);
              v230 = sub_25E9D8070();

              v231 = v282;
              [v282 setQueryDecorations_];

              sub_25E98F558(0, &qword_27FD0DD90, 0x277D59EB8);
              v232 = sub_25E9D8070();

              [v231 setResponseGenerations_];

              sub_25E98F558(0, &qword_27FD0DD98, 0x277D59E48);
              v233 = sub_25E9D8070();

              [v231 setExecutors_];

              *(v327 + 8) = v339;
              *(&v327[1] + 8) = v340;
              *(&v327[2] + 8) = v341;
              *(&v327[3] + 8) = v342;
              v328 = v338;
              *(v329 + 8) = v333;
              *(&v329[3] + 8) = v336;
              *(&v329[2] + 8) = v335;
              v234 = v277;
              *&v324 = v277;
              *(&v324 + 1) = v280;
              v235 = v280;
              v236 = v177;
              v237 = v284;
              *&v325 = v284;
              *(&v325 + 1) = v307;
              *&v326 = v319;
              v238 = v319;
              *(&v326 + 1) = v318;
              *&v327[0] = v308;
              *(&v327[4] + 1) = v316;
              v239 = v316;
              *&v329[0] = v236;
              *(&v329[4] + 1) = v337;
              *(&v329[1] + 8) = v334;
              sub_25E9D0EDC();
              sub_25E98F558(0, &qword_27FD0DDA0, 0x277D59EA8);
              v240 = sub_25E9D8070();

              [v231 setPlanResolutions_];

              *(v327 + 8) = v339;
              *(&v327[1] + 8) = v340;
              *(&v327[2] + 8) = v341;
              *(&v327[3] + 8) = v342;
              v328 = v338;
              *(v329 + 8) = v333;
              *(&v329[3] + 8) = v336;
              *(&v329[2] + 8) = v335;
              *&v324 = v234;
              *(&v324 + 1) = v235;
              *&v325 = v237;
              v241 = v307;
              v242 = v308;
              *(&v325 + 1) = v307;
              *&v326 = v238;
              v243 = v318;
              *(&v326 + 1) = v318;
              *&v327[0] = v308;
              *(&v327[4] + 1) = v239;
              v244 = v317;
              *&v329[0] = v317;
              *(&v329[4] + 1) = v337;
              *(&v329[1] + 8) = v334;
              sub_25E9D185C();
              sub_25E98F558(0, &qword_27FD0DDA8, 0x277D59EA0);
              v245 = sub_25E9D8070();

              v246 = v282;
              [v282 setPlanGenerations_];

              *(v327 + 8) = v339;
              *(&v327[1] + 8) = v340;
              *(&v327[2] + 8) = v341;
              *(&v327[3] + 8) = v342;
              v328 = v338;
              *(v329 + 8) = v333;
              *(&v329[3] + 8) = v336;
              *(&v329[2] + 8) = v335;
              *&v324 = v234;
              *(&v324 + 1) = v280;
              *&v325 = v237;
              *(&v325 + 1) = v241;
              *&v326 = v319;
              *(&v326 + 1) = v243;
              *&v327[0] = v242;
              *(&v327[4] + 1) = v316;
              *&v329[0] = v244;
              *(&v329[4] + 1) = v337;
              *(&v329[1] + 8) = v334;
              v247 = v246;
              sub_25E9D2070();
              sub_25E98F558(0, &qword_27FD0DDB0, 0x277D59EC8);
              v248 = sub_25E9D8070();

              [v246 setSearchs_];

              v249 = v283;
              v250 = v320;
              [v320 setEventMetadata_];
              [v250 setPnrodSiriTurnGrainSummary_];
              if (qword_280F6FE70 != -1)
              {
                swift_once();
              }

              v251 = sub_25E9D7F10();
              __swift_project_value_buffer(v251, qword_280F6FE78);
              v252 = v320;
              v253 = sub_25E9D7F00();
              v254 = sub_25E9D8120();

              if (os_log_type_enabled(v253, v254))
              {
                v255 = swift_slowAlloc();
                v256 = swift_slowAlloc();
                *&v324 = v256;
                *v255 = 136315394;
                v257 = [v252 qualifiedMessageName];
                v258 = sub_25E9D7FB0();
                v260 = v259;

                v261 = sub_25E9887EC(v258, v260, &v324);

                *(v255 + 4) = v261;
                *(v255 + 12) = 2080;
                v262 = [v252 formattedJsonBody];
                if (v262)
                {
                  v263 = v262;
                  v264 = sub_25E9D7FB0();
                  v266 = v265;
                }

                else
                {
                  v266 = 0xE500000000000000;
                  v264 = 0x3E4C494E3CLL;
                }

                v270 = sub_25E9887EC(v264, v266, &v324);

                *(v255 + 14) = v270;
                _os_log_impl(&dword_25E971000, v253, v254, "Creating %s\n%s", v255, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x25F8C51A0](v256, -1, -1);
                MEMORY[0x25F8C51A0](v255, -1, -1);

                return v320;
              }

              else
              {

                return v320;
              }
            }

            v181 = *(v178 + 8 * v184);
            ++v183;
            if (v181)
            {
              goto LABEL_131;
            }
          }
        }

        if (qword_280F6FE70 != -1)
        {
          swift_once();
        }

        v267 = sub_25E9D7F10();
        __swift_project_value_buffer(v267, qword_280F6FE78);
        v111 = sub_25E9D7F00();
        v112 = sub_25E9D8120();
        v268 = os_log_type_enabled(v111, v112);
        v36 = v282;
        v114 = v283;
        if (v268)
        {
          v115 = swift_slowAlloc();
          *v115 = 0;
          v116 = "Data for executor Mapping is Missing!";
          goto LABEL_161;
        }
      }

      goto LABEL_162;
    }

    v121 = *(v118 + 8 * v124);
    ++v126;
    if (v121)
    {
      goto LABEL_64;
    }
  }

LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
LABEL_171:
  swift_once();
LABEL_10:
  v40 = sub_25E9D7F10();
  __swift_project_value_buffer(v40, qword_280F6FE78);
  v41 = sub_25E9D7F00();
  v42 = sub_25E9D8120();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_25E971000, v41, v42, "PNROnDeviceProvisionalPnROnDeviceFrameworkWrapper init failed!", v43, 2u);
    MEMORY[0x25F8C51A0](v43, -1, -1);
  }

  return 0;
}

__n128 PnRLatencyContextMetrics.startEvent.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 PnRLatencyContextMetrics.endEvent.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

double PnRLatencyContextMetrics.metricsValue.getter()
{
  if (*v0 != 89 && *(v0 + 16) != 89)
  {
    return (*(v0 + 24) - *(v0 + 8)) / 1000000000.0;
  }

  return result;
}

double sub_25E9D052C()
{
  if (*v0 != 89 && *(v0 + 16) != 89)
  {
    return (*(v0 + 24) - *(v0 + 8)) / 1000000000.0;
  }

  return result;
}

uint64_t PnRSiriTurnGrainSummary.turnid.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

__n128 PnRSiriTurnGrainSummary.srt.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t PnRSiriTurnGrainSummary.error.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return v1;
}

uint64_t PnRSiriTurnGrainSummary.requestType.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t PnRSiriTurnGrainSummary.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = *(v0 + 32);
  v6 = v0[5];
  v7 = v0[6];
  v52 = v0[7];
  v51 = *(v0 + 64);
  v8 = v0[9];
  v48 = *(v0 + 88);
  v49 = v0[10];
  v50 = v0[12];
  v45 = *(v0 + 112);
  v46 = v0[13];
  v47 = v0[15];
  v42 = *(v0 + 136);
  v43 = v0[16];
  v44 = v0[18];
  v40 = v0[22];
  v41 = v0[23];
  v36 = v0[24];
  v37 = v0[25];
  v38 = v0[26];
  v39 = v0[27];

  sub_25E9D8240();
  MEMORY[0x25F8C4910](0x7574202020200A7BLL, 0xEE00203A64696E72);
  if (v2)
  {
    v9 = v1;
  }

  else
  {
    v9 = 0;
  }

  if (!v2)
  {
    v2 = 0xE000000000000000;
  }

  MEMORY[0x25F8C4910](v9, v2);

  MEMORY[0x25F8C4910](0x7273202020200A2CLL, 0xEB00000000203A74);
  sub_25E9D80F0();
  result = MEMORY[0x25F8C4910](0xD000000000000016, 0x800000025E9DECC0);
  if (!v7)
  {
    __break(1u);
    goto LABEL_31;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DDB8, "td");
  sub_25E9D8310();

  v11 = sub_25E9D7F40();
  v13 = v12;

  MEMORY[0x25F8C4910](v11, v13);

  MEMORY[0x25F8C4910](0xD00000000000001FLL, 0x800000025E9DECE0);
  v14 = sub_25E9D82F0();
  MEMORY[0x25F8C4910](v14);

  result = MEMORY[0x25F8C4910](0xD000000000000015, 0x800000025E9DED00);
  if (!v8)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DDC0, "xd");
  sub_25E9D8310();

  sub_25E9D77F0();
  type metadata accessor for PnRPlanResolutionRecord();
  sub_25E98F5E4();
  v15 = sub_25E9D7F40();
  v17 = v16;

  MEMORY[0x25F8C4910](v15, v17);

  MEMORY[0x25F8C4910](0xD00000000000001CLL, 0x800000025E9DED20);
  v18 = sub_25E9D82F0();
  MEMORY[0x25F8C4910](v18);

  result = MEMORY[0x25F8C4910](0xD000000000000015, 0x800000025E9DED40);
  if (!v50)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DDC8, &qword_25E9DC190);
  sub_25E9D8310();

  v19 = sub_25E9D7F40();
  v21 = v20;

  MEMORY[0x25F8C4910](v19, v21);

  MEMORY[0x25F8C4910](0xD00000000000001CLL, 0x800000025E9DED60);
  v22 = sub_25E9D82F0();
  MEMORY[0x25F8C4910](v22);

  result = MEMORY[0x25F8C4910](0xD000000000000019, 0x800000025E9DED80);
  if (!v47)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DDD0, &qword_25E9DC198);
  sub_25E9D8310();

  v23 = sub_25E9D7F40();
  v25 = v24;

  MEMORY[0x25F8C4910](v23, v25);

  MEMORY[0x25F8C4910](0xD00000000000001CLL, 0x800000025E9DEDA0);
  v26 = sub_25E9D82F0();
  MEMORY[0x25F8C4910](v26);

  result = MEMORY[0x25F8C4910](0x657865202020200ALL, 0xEF203A726F747563);
  if (!v44)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DDD8, &qword_25E9DC1A0);
  sub_25E9D8310();

  v27 = sub_25E9D7F40();
  v29 = v28;

  MEMORY[0x25F8C4910](v27, v29);

  MEMORY[0x25F8C4910](0xD000000000000014, 0x800000025E9DEDC0);
  if (v37)
  {
    v30 = v36;
  }

  else
  {
    v30 = 0;
  }

  if (v37)
  {
    v31 = v37;
  }

  else
  {
    v31 = 0xE000000000000000;
  }

  MEMORY[0x25F8C4910](v30, v31);

  MEMORY[0x25F8C4910](0xD000000000000012, 0x800000025E9DEDE0);
  if (v39)
  {
    v32 = v38;
  }

  else
  {
    v32 = 0;
  }

  if (v39)
  {
    v33 = v39;
  }

  else
  {
    v33 = 0xE000000000000000;
  }

  MEMORY[0x25F8C4910](v32, v33);

  MEMORY[0x25F8C4910](0x727265202020200ALL, 0xEC000000203A726FLL);
  if (v41)
  {
    v34 = v40;
  }

  else
  {
    v34 = 0;
  }

  if (v41)
  {
    v35 = v41;
  }

  else
  {
    v35 = 0xE000000000000000;
  }

  MEMORY[0x25F8C4910](v34, v35);

  MEMORY[0x25F8C4910](32010, 0xE200000000000000);
  return 0;
}

id PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(void *a1)
{
  v1 = *a1;
  v3 = a1[1];
  v2 = a1[2];
  v4 = a1[3];
  v5 = [objc_allocWithZone(MEMORY[0x277D59E90]) init];
  v6 = v5;
  if (!v5)
  {
    return v6;
  }

  v7 = v1 - 89;
  v8 = 0.0;
  if (v2 != 89 && v7 >= 2)
  {
    v8 = (v4 - v3) / 1000000000.0;
  }

  result = [v5 setMetricValue_];
  if (v7 >= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = 0;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    [v6 setStartTimestamp_];
    if (v7 >= 2)
    {
      v12 = qword_25E9DC450[v1];
    }

    else
    {
      v12 = 0;
    }

    [v6 setStartEventIndex_];
    v13 = 0;
    if (v1 != 90 && v2 != 89)
    {
      v13 = qword_25E9DC450[v2];
    }

    [v6 setEndEventIndex_];
    return v6;
  }

  __break(1u);
  return result;
}

void (*sub_25E9D0EDC())(char *, uint64_t, uint64_t)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v82 - v3;
  v95 = type metadata accessor for PnRPlanResolutionRecord();
  v90 = *(v95 - 8);
  v5 = *(v90 + 64);
  v6 = MEMORY[0x28223BE20](v95);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v89 = &v82 - v9;
  v10 = sub_25E9D77F0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v82 - v16;
  MEMORY[0x28223BE20](v15);
  v88 = &v82 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE08, &qword_25E9DC438);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v23 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v82 - v24;
  v26 = *(v0 + 72);
  v27 = MEMORY[0x277D84F90];
  v104 = MEMORY[0x277D84F90];
  if (v26)
  {
    v28 = *(v26 + 64);
    v96 = v26 + 64;
    v29 = 1 << *(v26 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v31 = v30 & v28;
    v83 = (v29 + 63) >> 6;
    v85 = v11 + 16;
    v86 = v11;
    v102 = (v11 + 32);
    v91 = v26;
    v92 = (v11 + 48);
    v98 = (v11 + 8);

    v32 = 0;
    v33 = MEMORY[0x277D84F90];
    v103 = v17;
    v93 = v4;
    v94 = v10;
    v100 = v25;
    v101 = v23;
    v99 = v8;
    while (1)
    {
      v97 = v33;
      if (!v31)
      {
        if (v83 <= v32 + 1)
        {
          v35 = v32 + 1;
        }

        else
        {
          v35 = v83;
        }

        v36 = v35 - 1;
        v37 = &qword_27FD0DE10;
        while (1)
        {
          v34 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v34 >= v83)
          {
            v48 = v10;
            v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE10, &unk_25E9DC440);
            (*(*(v63 - 8) + 56))(v23, 1, 1, v63);
            v31 = 0;
            v32 = v36;
            goto LABEL_16;
          }

          v31 = *(v96 + 8 * v34);
          ++v32;
          if (v31)
          {
            v32 = v34;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v34 = v32;
LABEL_15:
      v38 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v39 = v38 | (v34 << 6);
      v40 = v91;
      v41 = v86;
      v42 = v88;
      (*(v86 + 16))(v88, *(v91 + 48) + *(v86 + 72) * v39, v10);
      v43 = v89;
      sub_25E9D3158(*(v40 + 56) + *(v90 + 72) * v39, v89);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE10, &unk_25E9DC440);
      v45 = *(v44 + 48);
      v46 = *(v41 + 32);
      v23 = v101;
      v47 = v42;
      v48 = v10;
      v46(v101, v47, v10);
      sub_25E9D31BC(v43, &v23[v45]);
      (*(*(v44 - 8) + 56))(v23, 0, 1, v44);
      v25 = v100;
LABEL_16:
      v10 = v103;
      sub_25E9D3220(v23, v25);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE10, &unk_25E9DC440);
      if ((*(*(v49 - 8) + 48))(v25, 1, v49) == 1)
      {

        return v97;
      }

      v50 = *(v49 + 48);
      v51 = *v102;
      (*v102)(v10, v25, v48);
      v8 = v99;
      sub_25E9D31BC(&v25[v50], v99);
      v52 = [objc_allocWithZone(MEMORY[0x277D59EA8]) init];
      if (!v52)
      {
        break;
      }

      v53 = v52;
      v97 = v51;
      v54 = *v8;
      v10 = *(v8 + 8);
      v55 = *(v8 + 16);
      v56 = *(v8 + 24);
      v57 = [objc_allocWithZone(MEMORY[0x277D59E90]) init];
      v58 = v57;
      if (v57)
      {
        v8 = v55;
        v37 = (v54 - 89);
        v59 = 0.0;
        v87 = v55;
        if (v55 != 89 && v37 >= 2)
        {
          v59 = (v56 - v10) / 1000000000.0;
        }

        [v57 setMetricValue_];
        if (v37 >= 2)
        {
          v60 = v10;
        }

        else
        {
          v60 = 0;
        }

        if (v60 < 0)
        {
          goto LABEL_54;
        }

        [v58 setStartTimestamp_];
        if (v37 >= 2)
        {
          v61 = qword_25E9DC450[v54];
        }

        else
        {
          v61 = 0;
        }

        [v58 setStartEventIndex_];
        v62 = 0;
        if (v54 == 90)
        {
          v8 = v99;
        }

        else
        {
          v8 = v99;
          if (v55 != 89)
          {
            v62 = qword_25E9DC450[v87];
          }
        }

        [v58 setEndEventIndex_];
      }

      [v53 setPrTotalHandleTime_];

      v64 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v65 = v103;
      v66 = sub_25E9D77D0();
      v67 = [v64 initWithNSUUID_];

      [v53 setPrId_];
      v68 = v93;
      sub_25E9D32EC(v8 + *(v95 + 28), v93);
      v10 = v94;
      if ((*v92)(v68, 1, v94) == 1)
      {
        sub_25E9961C4(v68);
        [v53 setPlanCycleId_];
      }

      else
      {
        v69 = v84;
        v97(v84, v68, v10);
        v70 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v71 = sub_25E9D77D0();
        v72 = [v70 initWithNSUUID_];

        [v53 setPlanCycleId_];
        v73 = v69;
        v65 = v103;
        (*v98)(v73, v10);
      }

      v23 = v101;
      if (*(v8 + 44))
      {
        v74 = 0;
      }

      else
      {
        v74 = *(v8 + 40);
      }

      [v53 setStatementId_];
      if (*(v8 + 36))
      {
        v75 = 0;
      }

      else
      {
        v75 = *(v8 + 32);
      }

      [v53 setActionStatementId_];
      v76 = v53;
      MEMORY[0x25F8C4950]();
      if (*((v104 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v104 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_25E9D80A0();
      }

      sub_25E9D80C0();

      sub_25E9D3290(v8);
      (*v98)(v65, v10);
      v33 = v104;
      v25 = v100;
    }

    v37 = v48;

    if (qword_280F6FE70 == -1)
    {
      goto LABEL_49;
    }

LABEL_55:
    swift_once();
LABEL_49:
    v77 = sub_25E9D7F10();
    __swift_project_value_buffer(v77, qword_280F6FE78);
    v78 = sub_25E9D7F00();
    v79 = sub_25E9D8120();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_25E971000, v78, v79, "PNRODSchemaPNRODPlanResolution init failed!", v80, 2u);
      MEMORY[0x25F8C51A0](v80, -1, -1);
    }

    sub_25E9D3290(v8);
    (*v98)(v10, v37);
    return MEMORY[0x277D84F90];
  }

  return v27;
}

uint64_t sub_25E9D185C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v72 = &v65 - v3;
  v4 = sub_25E9D77F0();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v67 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 96);
  v9 = MEMORY[0x277D84F90];
  v94 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v10 = v8 + 64;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 64);
  v14 = (v11 + 63) >> 6;
  v68 = (v6 + 48);
  v66 = (v6 + 32);
  v65 = (v6 + 8);

  v16 = 0;
  v70 = v10;
  v69 = v14;
  v71 = v15;
  if (v13)
  {
    while (1)
    {
      v17 = v4;
LABEL_10:
      v19 = __clz(__rbit64(v13)) | (v16 << 6);
      v20 = (*(v15 + 48) + 16 * v19);
      v21 = *v20;
      v22 = v20[1];
      v23 = *(v15 + 56) + 288 * v19;
      v24 = *(v23 + 16);
      v87 = *(v23 + 20);
      v88 = v24;
      v25 = *(v23 + 32);
      v26 = *(v23 + 40);
      v27 = *(v23 + 48);
      v89 = *(v23 + 24);
      v90 = v26;
      v91 = *(v23 + 56);
      v28 = *(v23 + 64);
      v74 = *(v23 + 80);
      v73 = v28;
      v29 = *(v23 + 96);
      v75 = *(v23 + 112);
      v76 = v29;
      v30 = *(v23 + 128);
      v77 = *(v23 + 144);
      v78 = v30;
      v31 = *(v23 + 160);
      v79 = *(v23 + 176);
      v80 = v31;
      v32 = *(v23 + 192);
      v81 = *(v23 + 208);
      v82 = v32;
      v33 = *(v23 + 224);
      v83 = *(v23 + 240);
      v84 = v33;
      v34 = *(v23 + 256);
      v85 = *(v23 + 272);
      v86 = v34;
      v35 = objc_allocWithZone(MEMORY[0x277D59EA0]);

      v36 = [v35 init];
      if (!v36)
      {
        break;
      }

      v37 = v36;
      v38 = v72;
      sub_25E9D77B0();

      v4 = v17;
      if ((*v68)(v38, 1, v17) == 1)
      {
        sub_25E9961C4(v38);
        [v37 setPlanCycleId_];
        if (qword_27FD0D5C0 != -1)
        {
          swift_once();
        }

        v39 = sub_25E9D7F10();
        __swift_project_value_buffer(v39, qword_27FD0DB78);
        v40 = sub_25E9D7F00();
        v41 = sub_25E9D8120();
        v42 = os_log_type_enabled(v40, v41);
        v10 = v70;
        if (v42)
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_25E971000, v40, v41, "PG event planCycleID mapping failed!", v43, 2u);
          MEMORY[0x25F8C51A0](v43, -1, -1);
        }
      }

      else
      {
        v44 = v67;
        (*v66)(v67, v38, v4);
        v45 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v46 = sub_25E9D77D0();
        v47 = [v45 initWithNSUUID_];

        [v37 setPlanCycleId_];
        (*v65)(v44, v4);
        v10 = v70;
      }

      v92 = v73;
      v93 = v74;
      v48 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v92);
      [v37 setPgPlanGenTotalTime_];

      v92 = v76;
      v93 = v75;
      v49 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v92);
      [v37 setPgFullPlannerHandleTime_];

      v92 = v78;
      v93 = v77;
      v50 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v92);
      [v37 setPgModelInferenceTime_];

      v92 = v80;
      v93 = v79;
      v51 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v92);
      [v37 setPgOverridesTime_];

      v92 = v82;
      v93 = v81;
      v52 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v92);
      [v37 setPgPrescribedPlanTime_];

      v92 = v84;
      v93 = v83;
      v53 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v92);
      [v37 setPgFullPlannerPreInferenceTime_];

      v92 = v86;
      v93 = v85;
      v54 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v92);
      [v37 setPgFullPlannerPostInferenceTime_];

      if (v87)
      {
        v55 = 0;
      }

      else
      {
        v55 = v88;
      }

      [v37 setPgModelInterface_];
      v56 = sub_25E9D7FA0();

      [v37 setPgModelIdentifier_];

      v57 = sub_25E9D7FA0();

      [v37 setPgOverridesAssetVersion_];

      [v37 setPgOverridesMatched_];
      v58 = v37;
      MEMORY[0x25F8C4950]();
      if (*((v94 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v59 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25E9D80A0();
      }

      v13 &= v13 - 1;
      sub_25E9D80C0();

      v9 = v94;
      v15 = v71;
      v14 = v69;
      if (!v13)
      {
        goto LABEL_6;
      }
    }

    if (qword_280F6FE70 == -1)
    {
      goto LABEL_28;
    }
  }

  else
  {
LABEL_6:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        return v9;
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v17 = v4;
        v16 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_28:
  v61 = sub_25E9D7F10();
  __swift_project_value_buffer(v61, qword_280F6FE78);
  v62 = sub_25E9D7F00();
  v63 = sub_25E9D8120();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_25E971000, v62, v63, "PNRODSchemaPNRODPlanGeneration init failed!", v64, 2u);
    MEMORY[0x25F8C51A0](v64, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_25E9D2070()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v62 - v3;
  v5 = sub_25E9D77F0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5);
  v65 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 152);
  v10 = MEMORY[0x277D84F90];
  v88 = MEMORY[0x277D84F90];
  if (!v9)
  {
    return v10;
  }

  v11 = v9 + 64;
  v12 = 1 << *(v9 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v9 + 64);
  v15 = (v12 + 63) >> 6;
  v66 = (v7 + 48);
  v63 = (v7 + 32);
  v62 = (v7 + 8);

  v16 = 0;
  v67 = v5;
  v64 = v15;
  if (v14)
  {
LABEL_9:
    while (1)
    {
      v18 = __clz(__rbit64(v14)) | (v16 << 6);
      v19 = (*(v9 + 48) + 16 * v18);
      v20 = *v19;
      v21 = v19[1];
      v22 = (*(v9 + 56) + 304 * v18);
      v23 = v22[1];
      v69 = v22[2];
      v68 = v23;
      v24 = v22[3];
      v70 = v22[4];
      v71 = v24;
      v25 = v22[5];
      v72 = v22[6];
      v73 = v25;
      v26 = v22[7];
      v74 = v22[8];
      v75 = v26;
      v27 = v22[9];
      v76 = v22[10];
      v77 = v27;
      v28 = v22[11];
      v78 = v22[12];
      v79 = v28;
      v29 = v22[13];
      v80 = v22[14];
      v81 = v29;
      v30 = v22[15];
      v82 = v22[16];
      v83 = v30;
      v31 = v22[17];
      v84 = v22[18];
      v85 = v31;
      v32 = objc_allocWithZone(MEMORY[0x277D59EC8]);

      v33 = [v32 init];
      if (!v33)
      {
        break;
      }

      v34 = v33;
      sub_25E9D77B0();

      v35 = v67;
      if ((*v66)(v4, 1, v67) == 1)
      {
        sub_25E9961C4(v4);
        [v34 setSearchToolId_];
        if (qword_280F6FE70 != -1)
        {
          swift_once();
        }

        v36 = sub_25E9D7F10();
        __swift_project_value_buffer(v36, qword_280F6FE78);
        v37 = sub_25E9D7F00();
        v38 = sub_25E9D8120();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_25E971000, v37, v38, "ST event searchToolId mapping failed!", v39, 2u);
          MEMORY[0x25F8C51A0](v39, -1, -1);
        }
      }

      else
      {
        v40 = v9;
        v41 = v65;
        (*v63)(v65, v4, v35);
        v42 = objc_allocWithZone(MEMORY[0x277D5AC78]);
        v43 = sub_25E9D77D0();
        v44 = [v42 initWithNSUUID_];

        [v34 setSearchToolId_];
        v45 = v41;
        v9 = v40;
        v15 = v64;
        (*v62)(v45, v35);
      }

      v86 = v68;
      v87 = v69;
      v46 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v86);
      [v34 setSearchTotalHandleTime_];

      v86 = v71;
      v87 = v70;
      v47 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v86);
      [v34 setAnswerSynthesisTime_];

      v86 = v73;
      v87 = v72;
      v48 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v86);
      [v34 setSpotlightTotalTime_];

      v86 = v75;
      v87 = v74;
      v49 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v86);
      [v34 setSearchGlobalSearchTime_];

      v86 = v77;
      v87 = v76;
      v50 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v86);
      [v34 setSearchHallucinationTime_];

      v86 = v79;
      v87 = v78;
      v51 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v86);
      [v34 setSearchStartToSpotlightEnd_];

      v86 = v81;
      v87 = v80;
      v52 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v86);
      [v34 setSearchStartToGlobalSearchEnd_];

      v86 = v83;
      v87 = v82;
      v53 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v86);
      [v34 setPreSearchTime_];

      v86 = v85;
      v87 = v84;
      v54 = PnRSiriTurnGrainSummary.mapSELFPNRODMetricDuration(contextEvent:)(&v86);
      [v34 setPostSearchTime_];

      v55 = v34;
      MEMORY[0x25F8C4950]();
      if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v88 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v56 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_25E9D80A0();
      }

      v14 &= v14 - 1;
      sub_25E9D80C0();

      v10 = v88;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    if (qword_280F6FE70 == -1)
    {
      goto LABEL_24;
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v17 >= v15)
      {

        return v10;
      }

      v14 = *(v11 + 8 * v17);
      ++v16;
      if (v14)
      {
        v16 = v17;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  swift_once();
LABEL_24:
  v58 = sub_25E9D7F10();
  __swift_project_value_buffer(v58, qword_280F6FE78);
  v59 = sub_25E9D7F00();
  v60 = sub_25E9D8120();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_25E971000, v59, v60, "PNRODSchemaPNRODSearch init failed!", v61, 2u);
    MEMORY[0x25F8C51A0](v61, -1, -1);
  }

  return MEMORY[0x277D84F90];
}

uint64_t type metadata accessor for PnRPlanResolutionRecord()
{
  result = qword_27FD0DDE0;
  if (!qword_27FD0DDE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_25E9D2840(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA7 && a1[32])
  {
    return (*a1 + 167);
  }

  v3 = *a1;
  if (v3 <= 0x59)
  {
    v4 = 89;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 90;
  if (v3 < 0x59)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_25E9D2894(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA6)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 167;
    *(result + 8) = 0;
    if (a3 >= 0xA7)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA7)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2 + 89;
    }
  }

  return result;
}

uint64_t sub_25E9D2900(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA6 && *(a1 + 360))
  {
    return (*a1 + 166);
  }

  v3 = *(a1 + 8);
  if (v3 <= 0x5A)
  {
    v4 = 90;
  }

  else
  {
    v4 = *(a1 + 8);
  }

  v5 = v4 - 91;
  if (v3 < 0x59)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_25E9D2954(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA5)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 166;
    if (a3 >= 0xA6)
    {
      *(result + 360) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA6)
    {
      *(result + 360) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 90;
    }
  }

  return result;
}

uint64_t sub_25E9D2A0C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 288))
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

uint64_t sub_25E9D2A68(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 280) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 288) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void sub_25E9D2B40()
{
  sub_25E9D2BFC(319, &qword_27FD0DDF0);
  if (v0 <= 0x3F)
  {
    sub_25E9D2BFC(319, &qword_27FD0DDF8);
    if (v1 <= 0x3F)
    {
      sub_25E9D2C48();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_25E9D2BFC(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_25E9D81C0();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

void sub_25E9D2C48()
{
  if (!qword_27FD0DE00)
  {
    sub_25E9D77F0();
    v0 = sub_25E9D81C0();
    if (!v1)
    {
      atomic_store(v0, &qword_27FD0DE00);
    }
  }
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_25E9D2CE4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 240))
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

uint64_t sub_25E9D2D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 232) = 0;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 240) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy232_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[13];
  *(a1 + 224) = *(a2 + 28);
  *(a1 + 192) = v11;
  *(a1 + 208) = v12;
  *(a1 + 176) = result;
  return result;
}

uint64_t sub_25E9D2E2C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xA6 && a1[232])
  {
    return (*a1 + 166);
  }

  v3 = *a1;
  if (v3 <= 0x5A)
  {
    v4 = 90;
  }

  else
  {
    v4 = *a1;
  }

  v5 = v4 - 91;
  if (v3 < 0x59)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_25E9D2E80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA5)
  {
    *(result + 200) = 0u;
    *(result + 216) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 166;
    if (a3 >= 0xA6)
    {
      *(result + 232) = 1;
    }
  }

  else
  {
    if (a3 >= 0xA6)
    {
      *(result + 232) = 0;
    }

    if (a2)
    {
      *result = a2 + 90;
    }
  }

  return result;
}

uint64_t sub_25E9D2F14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 304))
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

uint64_t sub_25E9D2F70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 304) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_25E9D3060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 224))
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

uint64_t sub_25E9D30BC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 224) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_25E9D3158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PnRPlanResolutionRecord();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E9D31BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PnRPlanResolutionRecord();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E9D3220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE08, &qword_25E9DC438);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25E9D3290(uint64_t a1)
{
  v2 = type metadata accessor for PnRPlanResolutionRecord();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25E9D32EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_25E9D3374(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  if (!qword_27FD0DD78)
  {
    goto LABEL_12;
  }

  v2 = qword_27FD0DD78;
  v3 = sub_25E9D7ED0();

  if (!v3)
  {
    goto LABEL_12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE18, &qword_25E9DC718);
  sub_25E9D3534();
  sub_25E9D3580();
  v4 = sub_25E9D8040();

  if (!(v4 >> 62))
  {
    if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!sub_25E9D8290())
  {
LABEL_11:

LABEL_12:
    v9 = 0;
    v10 = 89;
    goto LABEL_13;
  }

LABEL_5:
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x25F8C4B40](0, v4);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_16;
    }

    v5 = *(v4 + 32);
  }

  v6 = v5;

  v7 = sub_25E9D7850();
  if (v7)
  {
    v8 = v7;
    v9 = sub_25E9D7870();

    v10 = 12;
LABEL_13:
    *a1 = v10;
    a1[1] = v9;
    return;
  }

LABEL_16:
  __break(1u);
}

unint64_t sub_25E9D3534()
{
  result = qword_27FD0DE20;
  if (!qword_27FD0DE20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0DE20);
  }

  return result;
}

unint64_t sub_25E9D3580()
{
  result = qword_27FD0DE28;
  if (!qword_27FD0DE28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD0DE18, &qword_25E9DC718);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD0DE28);
  }

  return result;
}

uint64_t SELFComponent.Executor.__allocating_init()()
{
  v0 = swift_allocObject();
  SELFComponent.Executor.init()();
  return v0;
}

void *SELFComponent.Executor.init()()
{
  v1 = MEMORY[0x277D84F90];
  v0[2] = MEMORY[0x277D84F90];
  v0[3] = sub_25E97FF64(v1);
  v0[4] = sub_25E97F328(v1);
  v0[5] = sub_25E97F328(v1);
  v0[6] = sub_25E97F328(v1);
  v0[7] = sub_25E97F328(v1);
  v0[8] = sub_25E97F328(v1);
  v0[9] = sub_25E97F328(v1);
  v0[10] = sub_25E97F328(v1);
  v0[11] = sub_25E97F328(v1);
  v0[12] = sub_25E97F328(v1);
  v0[13] = sub_25E97F328(v1);
  v0[14] = sub_25E97F328(v1);
  v0[15] = sub_25E97F328(v1);
  v0[16] = sub_25E97F328(v1);
  v0[17] = sub_25E97F328(v1);
  return v0;
}

void sub_25E9D3770()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0D7D8, &qword_25E9D9BC0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v355 = &v354 - v4;
  swift_beginAccess();
  v5 = qword_27FD0DD78;
  v365 = v0;
  if (!qword_27FD0DD78)
  {
    if (qword_27FD0D5B0 != -1)
    {
      swift_once();
    }

    v17 = sub_25E9D7F10();
    __swift_project_value_buffer(v17, qword_27FD0DB48);
    v18 = sub_25E9D7F00();
    v19 = sub_25E9D8120();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_25E971000, v18, v19, "ExecutorSiriSchemaExecutorClientEvent: Failed to init", v20, 2u);
      MEMORY[0x25F8C51A0](v20, -1, -1);
    }

LABEL_149:
    v234 = MEMORY[0x277D84F90];
LABEL_150:
    v235 = v1[2];
    v1[2] = v234;
    v357 = v234;

    if (qword_27FD0D5B0 != -1)
    {
      swift_once();
    }

    v236 = sub_25E9D7F10();
    v369 = __swift_project_value_buffer(v236, qword_27FD0DB48);
    v237 = sub_25E9D7F00();
    v238 = sub_25E9D8120();
    if (os_log_type_enabled(v237, v238))
    {
      v239 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v371[0] = v240;
      *v239 = 136315138;

      v242 = MEMORY[0x25F8C4980](v241, MEMORY[0x277D837D0]);
      v244 = v243;

      v245 = sub_25E9887EC(v242, v244, v371);
      v1 = v365;

      *(v239 + 4) = v245;
      _os_log_impl(&dword_25E971000, v237, v238, "executorIds: %s", v239, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v240);
      MEMORY[0x25F8C51A0](v240, -1, -1);
      MEMORY[0x25F8C51A0](v239, -1, -1);
    }

    v246 = sub_25E9D7F00();
    v247 = sub_25E9D8120();

    if (os_log_type_enabled(v246, v247))
    {
      v248 = swift_slowAlloc();
      v249 = swift_slowAlloc();
      v371[0] = v249;
      *v248 = 136315394;
      swift_beginAccess();
      v250 = v1[4];

      v251 = sub_25E9D7F40();
      v253 = v252;

      v254 = sub_25E9887EC(v251, v253, v371);

      *(v248 + 4) = v254;
      *(v248 + 12) = 2080;
      swift_beginAccess();
      v255 = v365[5];

      v256 = sub_25E9D7F40();
      v258 = v257;

      v259 = sub_25E9887EC(v256, v258, v371);
      v1 = v365;

      *(v248 + 14) = v259;
      _os_log_impl(&dword_25E971000, v246, v247, "executorAppIntentCallContext Start Event Dict: %s, End Event Dict: %s", v248, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v249, -1, -1);
      MEMORY[0x25F8C51A0](v248, -1, -1);
    }

    v260 = sub_25E9D7F00();
    v261 = sub_25E9D8120();

    if (os_log_type_enabled(v260, v261))
    {
      v262 = swift_slowAlloc();
      v263 = swift_slowAlloc();
      v371[0] = v263;
      *v262 = 136315138;
      swift_beginAccess();
      v264 = v1[3];
      type metadata accessor for ExecutorSiriSchemaExecutorSearchToolQueryType(0);

      v265 = sub_25E9D7F40();
      v267 = v266;

      v268 = sub_25E9887EC(v265, v267, v371);
      v1 = v365;

      *(v262 + 4) = v268;
      _os_log_impl(&dword_25E971000, v260, v261, "executorSearchToolQueryType Dict: %s", v262, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v263);
      MEMORY[0x25F8C51A0](v263, -1, -1);
      MEMORY[0x25F8C51A0](v262, -1, -1);
    }

    v269 = sub_25E9D7F00();
    v270 = sub_25E9D8120();

    if (os_log_type_enabled(v269, v270))
    {
      v271 = swift_slowAlloc();
      v272 = swift_slowAlloc();
      v371[0] = v272;
      *v271 = 136315394;
      swift_beginAccess();
      v273 = v1[6];

      v274 = sub_25E9D7F40();
      v276 = v275;

      v277 = sub_25E9887EC(v274, v276, v371);

      *(v271 + 4) = v277;
      *(v271 + 12) = 2080;
      swift_beginAccess();
      v278 = v365[7];

      v279 = sub_25E9D7F40();
      v281 = v280;

      v282 = sub_25E9887EC(v279, v281, v371);
      v1 = v365;

      *(v271 + 14) = v282;
      _os_log_impl(&dword_25E971000, v269, v270, "executorSearchToolQueryCallContext Start Event Dict: %s, End Event Dict: %s", v271, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v272, -1, -1);
      MEMORY[0x25F8C51A0](v271, -1, -1);
    }

    v283 = sub_25E9D7F00();
    v284 = sub_25E9D8120();

    if (os_log_type_enabled(v283, v284))
    {
      v285 = swift_slowAlloc();
      v286 = swift_slowAlloc();
      v371[0] = v286;
      *v285 = 136315394;
      swift_beginAccess();
      v287 = v1[6];

      v288 = sub_25E9D7F40();
      v290 = v289;

      v291 = sub_25E9887EC(v288, v290, v371);

      *(v285 + 4) = v291;
      *(v285 + 12) = 2080;
      swift_beginAccess();
      v292 = v365[7];

      v293 = sub_25E9D7F40();
      v295 = v294;

      v296 = sub_25E9887EC(v293, v295, v371);
      v1 = v365;

      *(v285 + 14) = v296;
      _os_log_impl(&dword_25E971000, v283, v284, "executorSearchToolQueryCallContext Start Event Dict: %s, End Event Dict: %s", v285, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v286, -1, -1);
      MEMORY[0x25F8C51A0](v285, -1, -1);
    }

    v297 = sub_25E9D7F00();
    v298 = sub_25E9D8120();

    if (os_log_type_enabled(v297, v298))
    {
      v299 = swift_slowAlloc();
      v300 = swift_slowAlloc();
      v371[0] = v300;
      *v299 = 136315394;
      swift_beginAccess();
      v301 = v1[8];

      v302 = sub_25E9D7F40();
      v304 = v303;

      v305 = sub_25E9887EC(v302, v304, v371);

      *(v299 + 4) = v305;
      *(v299 + 12) = 2080;
      swift_beginAccess();
      v306 = v365[9];

      v307 = sub_25E9D7F40();
      v309 = v308;

      v310 = sub_25E9887EC(v307, v309, v371);
      v1 = v365;

      *(v299 + 14) = v310;
      _os_log_impl(&dword_25E971000, v297, v298, "executorPersonQueryCallContextStart Event Dict: %s, End Event Dict: %s", v299, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v300, -1, -1);
      MEMORY[0x25F8C51A0](v299, -1, -1);
    }

    v311 = sub_25E9D7F00();
    v312 = sub_25E9D8120();

    if (os_log_type_enabled(v311, v312))
    {
      v313 = swift_slowAlloc();
      v314 = swift_slowAlloc();
      v371[0] = v314;
      *v313 = 136315394;
      swift_beginAccess();
      v315 = v1[12];

      v316 = sub_25E9D7F40();
      v318 = v317;

      v319 = sub_25E9887EC(v316, v318, v371);

      *(v313 + 4) = v319;
      *(v313 + 12) = 2080;
      swift_beginAccess();
      v320 = v365[13];

      v321 = sub_25E9D7F40();
      v323 = v322;

      v324 = sub_25E9887EC(v321, v323, v371);
      v1 = v365;

      *(v313 + 14) = v324;
      _os_log_impl(&dword_25E971000, v311, v312, "executorStringQueryEntityMatcherCallContext Start Event Dict: %s, End Event Dict: %s", v313, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v314, -1, -1);
      MEMORY[0x25F8C51A0](v313, -1, -1);
    }

    v325 = sub_25E9D7F00();
    v326 = sub_25E9D8120();

    if (os_log_type_enabled(v325, v326))
    {
      v327 = swift_slowAlloc();
      v328 = swift_slowAlloc();
      v371[0] = v328;
      *v327 = 136315394;
      swift_beginAccess();
      v329 = v1[14];

      v330 = sub_25E9D7F40();
      v332 = v331;

      v333 = sub_25E9887EC(v330, v332, v371);

      *(v327 + 4) = v333;
      *(v327 + 12) = 2080;
      swift_beginAccess();
      v334 = v365[15];

      v335 = sub_25E9D7F40();
      v337 = v336;

      v338 = sub_25E9887EC(v335, v337, v371);
      v1 = v365;

      *(v327 + 14) = v338;
      _os_log_impl(&dword_25E971000, v325, v326, "executorStringQueryEntityCallContext Start Event Dict: %s, End Event Dict: %s", v327, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v328, -1, -1);
      MEMORY[0x25F8C51A0](v327, -1, -1);
    }

    v339 = sub_25E9D7F00();
    v340 = sub_25E9D8120();

    if (os_log_type_enabled(v339, v340))
    {
      v341 = swift_slowAlloc();
      v342 = swift_slowAlloc();
      v372 = v342;
      *v341 = 136315394;
      swift_beginAccess();
      v343 = v1[16];

      v344 = sub_25E9D7F40();
      v345 = v1;
      v347 = v346;

      v348 = sub_25E9887EC(v344, v347, &v372);

      *(v341 + 4) = v348;
      *(v341 + 12) = 2080;
      swift_beginAccess();
      v349 = v345[17];

      v350 = sub_25E9D7F40();
      v352 = v351;

      v353 = sub_25E9887EC(v350, v352, &v372);

      *(v341 + 14) = v353;
      _os_log_impl(&dword_25E971000, v339, v340, "executorIdentifierQueryCallContext Start Event Dict: %s, End Event Dict: %s", v341, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8C51A0](v342, -1, -1);
      MEMORY[0x25F8C51A0](v341, -1, -1);
    }

    return;
  }

  sub_25E9D75F4();
  v6 = v5;
  v7 = sub_25E9D7E70();

  if (qword_27FD0D5B0 != -1)
  {
LABEL_146:
    swift_once();
  }

  v8 = sub_25E9D7F10();
  v9 = __swift_project_value_buffer(v8, qword_27FD0DB48);

  v10 = sub_25E9D7F00();
  v11 = sub_25E9D8120();
  v12 = os_log_type_enabled(v10, v11);
  v13 = v7 >> 62;
  v364 = v9;
  if (v12)
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    if (v13)
    {
      v15 = sub_25E9D8290();
    }

    else
    {
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v14 + 4) = v15;

    _os_log_impl(&dword_25E971000, v10, v11, "executorClientEvent length %ld", v14, 0xCu);
    MEMORY[0x25F8C51A0](v14, -1, -1);
  }

  else
  {
  }

  if (v13)
  {
    v22 = sub_25E9D8290();
    v21 = v7;
    if (v22)
    {
      goto LABEL_15;
    }

    goto LABEL_148;
  }

  v21 = v7;
  v22 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
LABEL_148:

    goto LABEL_149;
  }

LABEL_15:
  v369 = 0;
  v361 = v21 & 0xC000000000000001;
  v356 = v21 & 0xFFFFFFFFFFFFFF8;
  v357 = MEMORY[0x277D84F90];
  *&v16 = 136315138;
  v363 = v16;
  v359 = v22;
  v360 = v21;
  while (1)
  {
    if (v361)
    {
      v23 = MEMORY[0x25F8C4B40](v369);
    }

    else
    {
      if (v369 >= *(v356 + 16))
      {
        goto LABEL_145;
      }

      v23 = *(v21 + 8 * v369 + 32);
    }

    v24 = v369 + 1;
    if (__OFADD__(v369, 1))
    {
      __break(1u);
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    v25 = v23;
    v26 = sub_25E9D7F00();
    v7 = sub_25E9D8120();

    v27 = os_log_type_enabled(v26, v7);
    v366 = v24;
    v367 = v25;
    if (v27)
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v371[0] = v29;
      *v28 = v363;
      v30 = [v25 debugDescription];
      v31 = sub_25E9D7FB0();
      v33 = v32;

      v34 = sub_25E9887EC(v31, v33, v371);

      *(v28 + 4) = v34;
      _os_log_impl(&dword_25E971000, v26, v7, "pnrOrderedEvent value %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x25F8C51A0](v29, -1, -1);
      MEMORY[0x25F8C51A0](v28, -1, -1);
    }

    v35 = sub_25E9D7840();
    if (v35)
    {
      v36 = v35;
      objc_opt_self();
      v37 = swift_dynamicCastObjCClass();
      if (!v37)
      {
      }
    }

    else
    {
      v37 = 0;
    }

    v38 = v37;
    v39 = sub_25E9D7F00();
    v40 = sub_25E9D8120();
    v368 = v38;

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v371[0] = v42;
      *v41 = v363;
      v370 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE38, &qword_25E9DC750);
      v43 = sub_25E9D81B0();
      v7 = sub_25E9887EC(v43, v44, v371);

      *(v41 + 4) = v7;
      _os_log_impl(&dword_25E971000, v39, v40, "executor Client Event value %s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x25F8C51A0](v42, -1, -1);
      MEMORY[0x25F8C51A0](v41, -1, -1);
    }

    v1 = v365;
    if (!v37)
    {
      goto LABEL_36;
    }

    v45 = [v368 eventMetadata];
    if (!v45)
    {
      goto LABEL_36;
    }

    v46 = v45;
    v47 = [v45 executorId];

    if (!v47)
    {
      goto LABEL_36;
    }

    v48 = v355;
    sub_25E9D8100();

    v49 = v48;
    v50 = sub_25E9D77F0();
    v51 = *(v50 - 8);
    if ((*(v51 + 48))(v49, 1, v50) == 1)
    {
      sub_25E9961C4(v49);
LABEL_36:
      v52 = sub_25E9D7F00();
      v53 = sub_25E9D8120();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_25E971000, v52, v53, "Empty executorId", v54, 2u);
        MEMORY[0x25F8C51A0](v54, -1, -1);
      }

      goto LABEL_17;
    }

    v55 = v1;
    v56 = sub_25E9D77C0();
    v58 = v57;
    (*(v51 + 8))(v49, v50);

    v59 = sub_25E9D7F00();
    v60 = sub_25E9D8120();
    v362 = v58;

    v61 = os_log_type_enabled(v59, v60);
    v358 = v56;
    if (v61)
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v371[0] = v63;
      *v62 = v363;
      v64 = sub_25E9D8000();
      v66 = sub_25E9887EC(v64, v65, v371);

      *(v62 + 4) = v66;
      v1 = v365;
      _os_log_impl(&dword_25E971000, v59, v60, "executorId value %s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x25F8C51A0](v63, -1, -1);
      MEMORY[0x25F8C51A0](v62, -1, -1);

      v7 = v367;
    }

    else
    {

      v7 = v367;
      v1 = v55;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v67 = v357;
    }

    else
    {
      v67 = sub_25E983A64(0, *(v357 + 2) + 1, 1, v357);
    }

    v69 = *(v67 + 2);
    v68 = *(v67 + 3);
    v70 = v358;
    if (v69 >= v68 >> 1)
    {
      v67 = sub_25E983A64((v68 > 1), v69 + 1, 1, v67);
      v70 = v358;
    }

    *(v67 + 2) = v69 + 1;
    v357 = v67;
    v71 = &v67[16 * v69];
    *(v71 + 4) = v70;
    *(v71 + 5) = v362;
    v72 = [v368 executorAppIntentCallContext];
    if (v72)
    {
      v73 = v72;
      v74 = [v72 startedOrChanged];

      if (v74)
      {
        break;
      }
    }

    v83 = [v368 executorAppIntentCallContext];
    if (v83)
    {
      v84 = v83;
      v85 = [v83 ended];

      if (v85)
      {

        v86 = sub_25E9D7F00();
        v87 = sub_25E9D8120();
        if (os_log_type_enabled(v86, v87))
        {
          v88 = swift_slowAlloc();
          *v88 = 0;
          _os_log_impl(&dword_25E971000, v86, v87, "executorAppIntentCallContext: ended", v88, 2u);
          v7 = v367;
          MEMORY[0x25F8C51A0](v88, -1, -1);
        }

        v89 = sub_25E9D7850();
        if (!v89)
        {
          goto LABEL_179;
        }

        v90 = v89;
        v91 = sub_25E9D7870();

        swift_beginAccess();
        v92 = v1[5];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v370 = v1[5];
        v1[5] = 0x8000000000000000;
        sub_25E993FE0(64, v91, v358, v362, isUniquelyReferenced_nonNull_native);
        v1[5] = v370;
        goto LABEL_57;
      }
    }

LABEL_58:
    v94 = [v368 executorSearchToolQueryCallContext];
    if (v94)
    {
      v95 = v94;
      v96 = [v94 startedOrChanged];

      if (v96)
      {

        v97 = sub_25E9D7F00();
        v98 = sub_25E9D8120();
        if (os_log_type_enabled(v97, v98))
        {
          v99 = swift_slowAlloc();
          *v99 = 0;
          _os_log_impl(&dword_25E971000, v97, v98, "executorSearchToolQueryCallContext: startedOrChanged", v99, 2u);
          MEMORY[0x25F8C51A0](v99, -1, -1);
        }

        v100 = [v368 executorSearchToolQueryCallContext];
        if (v100)
        {
          v101 = v100;
          v102 = [v100 startedOrChanged];

          if (v102)
          {
            v103 = [v102 executorSearchToolQueryType];

            v104 = 0;
            v102 = v103;
LABEL_73:
            swift_beginAccess();
            v116 = v362;

            LOBYTE(v370) = v104;
            v117 = v102 | (v104 << 32);
            v118 = v358;
            sub_25E98FA04(v117, v358, v116);
            swift_endAccess();
            v7 = v367;
            v119 = sub_25E9D7850();
            if (!v119)
            {
              goto LABEL_173;
            }

            v120 = v119;
            v121 = sub_25E9D7870();

            swift_beginAccess();
            v122 = v1[6];
            v123 = swift_isUniquelyReferenced_nonNull_native();
            v370 = v1[6];
            v1[6] = 0x8000000000000000;
            sub_25E993FE0(65, v121, v118, v362, v123);
            v1[6] = v370;
            goto LABEL_75;
          }
        }

        else
        {
          v102 = 0;
        }

        v104 = 1;
        goto LABEL_73;
      }
    }

    v105 = [v368 executorSearchToolQueryCallContext];
    if (v105)
    {
      v106 = v105;
      v107 = [v105 ended];

      if (v107)
      {

        v108 = sub_25E9D7F00();
        v109 = sub_25E9D8120();
        if (os_log_type_enabled(v108, v109))
        {
          v110 = swift_slowAlloc();
          *v110 = 0;
          _os_log_impl(&dword_25E971000, v108, v109, "executorSearchToolQueryCallContext: ended", v110, 2u);
          v7 = v367;
          MEMORY[0x25F8C51A0](v110, -1, -1);
        }

        v111 = sub_25E9D7850();
        if (!v111)
        {
          goto LABEL_180;
        }

        v112 = v111;
        v113 = sub_25E9D7870();

        swift_beginAccess();
        v114 = v1[7];
        v115 = swift_isUniquelyReferenced_nonNull_native();
        v370 = v1[7];
        v1[7] = 0x8000000000000000;
        sub_25E993FE0(66, v113, v358, v362, v115);
        v1[7] = v370;
LABEL_75:
        swift_endAccess();
      }
    }

    v124 = [v368 executorPersonQueryCallContext];
    if (v124)
    {
      v125 = v124;
      v126 = [v124 startedOrChanged];

      if (v126)
      {

        v127 = sub_25E9D7F00();
        v128 = sub_25E9D8120();
        if (os_log_type_enabled(v127, v128))
        {
          v129 = swift_slowAlloc();
          *v129 = 0;
          _os_log_impl(&dword_25E971000, v127, v128, "executorPersonQueryCallContext: startedOrChanged", v129, 2u);
          v7 = v367;
          MEMORY[0x25F8C51A0](v129, -1, -1);
        }

        v130 = sub_25E9D7850();
        if (!v130)
        {
          goto LABEL_174;
        }

        v131 = v130;
        v132 = sub_25E9D7870();

        swift_beginAccess();
        v133 = v1[8];
        v134 = swift_isUniquelyReferenced_nonNull_native();
        v370 = v1[8];
        v1[8] = 0x8000000000000000;
        sub_25E993FE0(67, v132, v358, v362, v134);
        v1[8] = v370;
        goto LABEL_88;
      }
    }

    v135 = [v368 executorPersonQueryCallContext];
    if (v135)
    {
      v136 = v135;
      v137 = [v135 ended];

      if (v137)
      {

        v138 = sub_25E9D7F00();
        v139 = sub_25E9D8120();
        if (os_log_type_enabled(v138, v139))
        {
          v140 = swift_slowAlloc();
          *v140 = 0;
          _os_log_impl(&dword_25E971000, v138, v139, "executorPersonQueryCallContext: ended", v140, 2u);
          v7 = v367;
          MEMORY[0x25F8C51A0](v140, -1, -1);
        }

        v141 = sub_25E9D7850();
        if (!v141)
        {
          goto LABEL_181;
        }

        v142 = v141;
        v143 = sub_25E9D7870();

        swift_beginAccess();
        v144 = v1[9];
        v145 = swift_isUniquelyReferenced_nonNull_native();
        v370 = v1[9];
        v1[9] = 0x8000000000000000;
        sub_25E993FE0(68, v143, v358, v362, v145);
        v1[9] = v370;
LABEL_88:
        swift_endAccess();
      }
    }

    v146 = [v368 executorStringQueryLocationCallContext];
    if (v146)
    {
      v147 = v146;
      v148 = [v146 startedOrChanged];

      if (v148)
      {

        v149 = sub_25E9D7F00();
        v150 = sub_25E9D8120();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          *v151 = 0;
          _os_log_impl(&dword_25E971000, v149, v150, "executorStringQueryLocationCallContext: startedOrChanged", v151, 2u);
          v7 = v367;
          MEMORY[0x25F8C51A0](v151, -1, -1);
        }

        v152 = sub_25E9D7850();
        if (!v152)
        {
          goto LABEL_175;
        }

        v153 = v152;
        v154 = sub_25E9D7870();

        swift_beginAccess();
        v155 = v1[10];
        v156 = swift_isUniquelyReferenced_nonNull_native();
        v370 = v1[10];
        v1[10] = 0x8000000000000000;
        sub_25E993FE0(69, v154, v358, v362, v156);
        v1[10] = v370;
        goto LABEL_101;
      }
    }

    v157 = [v368 executorStringQueryLocationCallContext];
    if (v157)
    {
      v158 = v157;
      v159 = [v157 ended];

      if (v159)
      {

        v160 = sub_25E9D7F00();
        v161 = sub_25E9D8120();
        if (os_log_type_enabled(v160, v161))
        {
          v162 = swift_slowAlloc();
          *v162 = 0;
          _os_log_impl(&dword_25E971000, v160, v161, "executorStringQueryLocationCallContext: ended", v162, 2u);
          v7 = v367;
          MEMORY[0x25F8C51A0](v162, -1, -1);
        }

        v163 = sub_25E9D7850();
        if (!v163)
        {
          goto LABEL_182;
        }

        v164 = v163;
        v165 = sub_25E9D7870();

        swift_beginAccess();
        v166 = v1[11];
        v167 = swift_isUniquelyReferenced_nonNull_native();
        v370 = v1[11];
        v1[11] = 0x8000000000000000;
        sub_25E993FE0(70, v165, v358, v362, v167);
        v1[11] = v370;
LABEL_101:
        swift_endAccess();
      }
    }

    v168 = [v368 executorStringQueryEntityMatcherCallContext];
    if (v168)
    {
      v169 = v168;
      v170 = [v168 startedOrChanged];

      if (v170)
      {

        v171 = sub_25E9D7F00();
        v172 = sub_25E9D8120();
        if (os_log_type_enabled(v171, v172))
        {
          v173 = swift_slowAlloc();
          *v173 = 0;
          _os_log_impl(&dword_25E971000, v171, v172, "executorStringQueryEntityMatcherCallContext: startedOrChanged", v173, 2u);
          v7 = v367;
          MEMORY[0x25F8C51A0](v173, -1, -1);
        }

        v174 = sub_25E9D7850();
        if (!v174)
        {
          goto LABEL_176;
        }

        v175 = v174;
        v176 = sub_25E9D7870();

        swift_beginAccess();
        v177 = v1[12];
        v178 = swift_isUniquelyReferenced_nonNull_native();
        v370 = v1[12];
        v1[12] = 0x8000000000000000;
        sub_25E993FE0(71, v176, v358, v362, v178);
        v1[12] = v370;
        goto LABEL_114;
      }
    }

    v179 = [v368 executorStringQueryEntityMatcherCallContext];
    if (v179)
    {
      v180 = v179;
      v181 = [v179 ended];

      if (v181)
      {

        v182 = sub_25E9D7F00();
        v183 = sub_25E9D8120();
        if (os_log_type_enabled(v182, v183))
        {
          v184 = swift_slowAlloc();
          *v184 = 0;
          _os_log_impl(&dword_25E971000, v182, v183, "executorStringQueryEntityMatcherCallContext: ended", v184, 2u);
          v7 = v367;
          MEMORY[0x25F8C51A0](v184, -1, -1);
        }

        v185 = sub_25E9D7850();
        if (!v185)
        {
          goto LABEL_183;
        }

        v186 = v185;
        v187 = sub_25E9D7870();

        swift_beginAccess();
        v188 = v1[13];
        v189 = swift_isUniquelyReferenced_nonNull_native();
        v370 = v1[13];
        v1[13] = 0x8000000000000000;
        sub_25E993FE0(72, v187, v358, v362, v189);
        v1[13] = v370;
LABEL_114:
        swift_endAccess();
      }
    }

    v190 = [v368 executorStringQueryEntityCallContext];
    if (v190)
    {
      v191 = v190;
      v192 = [v190 startedOrChanged];

      if (v192)
      {

        v193 = sub_25E9D7F00();
        v194 = sub_25E9D8120();
        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          *v195 = 0;
          _os_log_impl(&dword_25E971000, v193, v194, "executorStringQueryEntityCallContext: startedOrChanged", v195, 2u);
          v7 = v367;
          MEMORY[0x25F8C51A0](v195, -1, -1);
        }

        v196 = sub_25E9D7850();
        if (!v196)
        {
          goto LABEL_177;
        }

        v197 = v196;
        v198 = sub_25E9D7870();

        swift_beginAccess();
        v199 = v1[14];
        v200 = swift_isUniquelyReferenced_nonNull_native();
        v370 = v1[14];
        v1[14] = 0x8000000000000000;
        sub_25E993FE0(73, v198, v358, v362, v200);
        v1[14] = v370;
        goto LABEL_127;
      }
    }

    v201 = [v368 executorStringQueryEntityCallContext];
    if (v201)
    {
      v202 = v201;
      v203 = [v201 ended];

      if (v203)
      {

        v204 = sub_25E9D7F00();
        v205 = sub_25E9D8120();
        if (os_log_type_enabled(v204, v205))
        {
          v206 = swift_slowAlloc();
          *v206 = 0;
          _os_log_impl(&dword_25E971000, v204, v205, "executorStringQueryEntityCallContext: ended", v206, 2u);
          v7 = v367;
          MEMORY[0x25F8C51A0](v206, -1, -1);
        }

        v207 = sub_25E9D7850();
        if (!v207)
        {
          goto LABEL_184;
        }

        v208 = v207;
        v209 = sub_25E9D7870();

        swift_beginAccess();
        v210 = v1[15];
        v211 = swift_isUniquelyReferenced_nonNull_native();
        v370 = v1[15];
        v1[15] = 0x8000000000000000;
        sub_25E993FE0(74, v209, v358, v362, v211);
        v1[15] = v370;
LABEL_127:
        swift_endAccess();
      }
    }

    v212 = [v368 executorIdentifierQueryCallContext];
    if (v212 && (v213 = v212, v214 = [v212 startedOrChanged], v213, v214))
    {

      v215 = sub_25E9D7F00();
      v216 = sub_25E9D8120();
      if (os_log_type_enabled(v215, v216))
      {
        v217 = swift_slowAlloc();
        *v217 = 0;
        _os_log_impl(&dword_25E971000, v215, v216, "executorIdentifierQueryCallContext: startedOrChanged", v217, 2u);
        v7 = v367;
        MEMORY[0x25F8C51A0](v217, -1, -1);
      }

      v218 = sub_25E9D7850();
      if (!v218)
      {
        goto LABEL_178;
      }

      v219 = v218;
      v220 = sub_25E9D7870();

      swift_beginAccess();
      v221 = v1[16];
      v222 = swift_isUniquelyReferenced_nonNull_native();
      v370 = v1[16];
      v1[16] = 0x8000000000000000;
      sub_25E993FE0(75, v220, v358, v362, v222);

      v1[16] = v370;
    }

    else
    {
      v223 = [v368 executorIdentifierQueryCallContext];
      if (!v223 || (v224 = v223, v225 = [v223 ended], v224, !v225))
      {

        goto LABEL_17;
      }

      v226 = sub_25E9D7F00();
      v227 = sub_25E9D8120();
      if (os_log_type_enabled(v226, v227))
      {
        v228 = swift_slowAlloc();
        *v228 = 0;
        _os_log_impl(&dword_25E971000, v226, v227, "executorIdentifierQueryCallContext: ended", v228, 2u);
        v7 = v367;
        MEMORY[0x25F8C51A0](v228, -1, -1);
      }

      v229 = sub_25E9D7850();
      if (!v229)
      {
        goto LABEL_185;
      }

      v230 = v229;
      v231 = sub_25E9D7870();

      swift_beginAccess();
      v232 = v1[17];
      v233 = swift_isUniquelyReferenced_nonNull_native();
      v370 = v1[17];
      v1[17] = 0x8000000000000000;
      sub_25E993FE0(76, v231, v358, v362, v233);

      v1[17] = v370;
    }

    swift_endAccess();

LABEL_17:
    v21 = v360;
    ++v369;
    if (v366 == v359)
    {

      v234 = v357;
      goto LABEL_150;
    }
  }

  v75 = sub_25E9D7F00();
  v76 = sub_25E9D8120();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_25E971000, v75, v76, "executorAppIntentCallContext: startedOrChanged", v77, 2u);
    v7 = v367;
    MEMORY[0x25F8C51A0](v77, -1, -1);
  }

  v78 = sub_25E9D7850();
  if (v78)
  {
    v79 = v78;
    v80 = sub_25E9D7870();

    swift_beginAccess();
    v81 = v1[4];
    v82 = swift_isUniquelyReferenced_nonNull_native();
    v370 = v1[4];
    v1[4] = 0x8000000000000000;
    sub_25E993FE0(63, v80, v358, v362, v82);
    v1[4] = v370;
LABEL_57:
    swift_endAccess();
    goto LABEL_58;
  }

  __break(1u);
LABEL_173:
  __break(1u);
LABEL_174:
  __break(1u);
LABEL_175:
  __break(1u);
LABEL_176:
  __break(1u);
LABEL_177:
  __break(1u);
LABEL_178:
  __break(1u);
LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
}

void sub_25E9D6004(void *a1)
{
  v3 = v2;
  v4 = v1;
  if (qword_27FD0D5B0 != -1)
  {
    goto LABEL_123;
  }

  while (1)
  {
    v147 = sub_25E9D7F10();
    __swift_project_value_buffer(v147, qword_27FD0DB48);
    v6 = sub_25E9D7F00();
    v7 = sub_25E9D8120();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_25E971000, v6, v7, "Enter computeExecutorMetrics", v8, 2u);
      MEMORY[0x25F8C51A0](v8, -1, -1);
    }

    sub_25E9D3770();
    if (v3)
    {
      break;
    }

    v3 = v4[2];
    v141 = *(v3 + 16);
    if (!v141)
    {
LABEL_118:
      v136 = *a1;

      return;
    }

    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    if (!*(v3 + 16))
    {
      goto LABEL_122;
    }

    v9 = 0;
    v140 = v3 + 32;
    v138 = v4;
    v139 = a1;
    v137 = v3;
    while (2)
    {
      v10 = (v140 + 16 * v9);
      v148 = v10[1];
      v149 = *v10;
      v142 = v9 + 1;

      v143 = sub_25E98006C(MEMORY[0x277D84F90]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE40, &qword_25E9DC758);
      v11 = swift_allocObject();
      v12 = v4[5];
      v11[4] = v4[4];
      v11[5] = v12;
      v11[6] = 0xD00000000000001BLL;
      v14 = v4[6];
      v13 = v4[7];
      v11[7] = 0x800000025E9DEE30;
      v11[8] = v14;
      v11[9] = v13;
      v11[10] = 0xD000000000000013;
      v16 = v4[8];
      v15 = v4[9];
      v11[11] = 0x800000025E9DEE50;
      v11[12] = v16;
      v11[13] = v15;
      v11[14] = 0x75516E6F73726570;
      v17 = v4;
      v18 = v4[10];
      v19 = v17[11];
      v20 = v17[12];
      v11[15] = 0xEF656D6954797265;
      v11[16] = v18;
      v11[17] = v19;
      v11[18] = 0xD000000000000017;
      v22 = v17[13];
      v21 = v17[14];
      v11[19] = 0x800000025E9DEE70;
      v11[20] = v20;
      v11[21] = v22;
      v11[22] = 0xD00000000000001CLL;
      v24 = v17[15];
      v23 = v17[16];
      v11[23] = 0x800000025E9DEE90;
      v11[24] = v21;
      v11[25] = v24;
      v11[26] = 0xD000000000000015;
      v25 = v17[17];
      v11[27] = 0x800000025E9DEEB0;
      v11[28] = v23;
      v11[29] = v25;
      v11[30] = 0xD000000000000013;
      v228 = v11;
      v11[31] = 0x800000025E9DEED0;

      v26 = v148;

      v27 = v149;

      for (i = 0; i != 28; i += 4)
      {
        v3 = v228[i + 4];
        v29 = v228[i + 5];
        v31 = v228[i + 6];
        v30 = v228[i + 7];
        v32 = *(v3 + 16);

        if (v32)
        {
          sub_25E978F5C(v27, v26);
          if (v33)
          {
            if (*(v29 + 16))
            {
              sub_25E978F5C(v27, v26);
              if (v34)
              {
                if (*(v3 + 16) && (v35 = sub_25E978F5C(v27, v26), (v36 & 1) != 0))
                {
                  v37 = (*(v3 + 56) + 16 * v35);
                  v145 = *v37;
                  v38 = *(v37 + 1);

                  if (!*(v29 + 16))
                  {
                    goto LABEL_18;
                  }

LABEL_33:
                  v39 = v31;
                  v62 = sub_25E978F5C(v149, v26);
                  v4 = v38;
                  if (v63)
                  {
                    v64 = (*(v29 + 56) + 16 * v62);
                    v65 = *v64;
                    a1 = *(v64 + 1);

                    goto LABEL_36;
                  }
                }

                else
                {

                  v38 = 0;
                  v145 = 89;
                  if (*(v29 + 16))
                  {
                    goto LABEL_33;
                  }

LABEL_18:
                  v4 = v38;
                  v39 = v31;
                }

                a1 = 0;
                v65 = 89;
LABEL_36:
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&__dst = v143;
                v67 = sub_25E978F5C(v39, v30);
                v69 = *(v143 + 16);
                v70 = (v68 & 1) == 0;
                v71 = __OFADD__(v69, v70);
                v72 = v69 + v70;
                if (v71)
                {
                  __break(1u);
LABEL_121:
                  __break(1u);
                  goto LABEL_122;
                }

                v3 = v68;
                if (*(v143 + 24) < v72)
                {
                  sub_25E97BFCC(v72, isUniquelyReferenced_nonNull_native);
                  v67 = sub_25E978F5C(v39, v30);
                  if ((v3 & 1) != (v73 & 1))
                  {
                    sub_25E9D8330();
                    __break(1u);
                    return;
                  }

                  goto LABEL_41;
                }

                if (isUniquelyReferenced_nonNull_native)
                {
LABEL_41:
                  v74 = v145;
                  if ((v3 & 1) == 0)
                  {
                    goto LABEL_44;
                  }
                }

                else
                {
                  v77 = v67;
                  sub_25E97EF0C();
                  v67 = v77;
                  v74 = v145;
                  if ((v3 & 1) == 0)
                  {
LABEL_44:
                    v78 = __dst;
                    *(__dst + 8 * (v67 >> 6) + 64) |= 1 << v67;
                    v79 = (v78[6] + 16 * v67);
                    *v79 = v39;
                    v79[1] = v30;
                    v80 = (v78[7] + 32 * v67);
                    *v80 = v74;
                    v80[1] = v4;
                    v80[2] = v65;
                    v80[3] = a1;
                    v81 = v78[2];
                    v71 = __OFADD__(v81, 1);
                    v82 = v81 + 1;
                    if (v71)
                    {
                      goto LABEL_121;
                    }

                    v143 = v78;
                    v78[2] = v82;
                    goto LABEL_31;
                  }
                }

                v75 = v67;

                v143 = __dst;
                v76 = (*(__dst + 56) + 32 * v75);
                *v76 = v74;
                v76[1] = v4;
                v76[2] = v65;
                v76[3] = a1;
                goto LABEL_31;
              }
            }
          }
        }

        if (qword_280F6FE70 != -1)
        {
          swift_once();
        }

        __swift_project_value_buffer(v147, qword_280F6FE78);

        v40 = sub_25E9D7F00();
        v41 = sub_25E9D8120();

        if (!os_log_type_enabled(v40, v41))
        {

          continue;
        }

        v146 = v41;
        v42 = v31;
        v43 = v27;
        v44 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        *&v208 = v144;
        *v44 = 136315906;
        v45 = sub_25E9887EC(v42, v30, &v208);

        *(v44 + 4) = v45;
        *(v44 + 12) = 2080;
        *(v44 + 14) = sub_25E9887EC(v43, v26, &v208);
        *(v44 + 22) = 2080;
        if (*(v3 + 16) && (v46 = sub_25E978F5C(v43, v26), (v47 & 1) != 0))
        {
          v48 = (*(v3 + 56) + 16 * v46);
          v49 = *v48;
          v50 = *(v48 + 1);
        }

        else
        {

          v50 = 0;
          v49 = 89;
        }

        *&__dst = v49;
        *(&__dst + 1) = v50;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DD80, "|d");
        v51 = sub_25E9D7FF0();
        v53 = sub_25E9887EC(v51, v52, &v208);

        *(v44 + 24) = v53;
        *(v44 + 32) = 2080;
        if (*(v29 + 16) && (v54 = sub_25E978F5C(v149, v148), (v55 & 1) != 0))
        {
          v56 = (*(v29 + 56) + 16 * v54);
          v57 = *v56;
          v58 = *(v56 + 1);
        }

        else
        {

          v58 = 0;
          v57 = 89;
        }

        *&__dst = v57;
        *(&__dst + 1) = v58;
        v59 = sub_25E9D7FF0();
        v61 = sub_25E9887EC(v59, v60, &v208);

        *(v44 + 34) = v61;
        _os_log_impl(&dword_25E971000, v40, v146, "%s: Start and/or End event missing for executorId %s. Start: %s, End: %s", v44, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x25F8C51A0](v144, -1, -1);
        MEMORY[0x25F8C51A0](v44, -1, -1);

LABEL_31:
        v26 = v148;
        v27 = v149;
      }

      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD0DE48, &qword_25E9DC760);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      a1 = v139;
      v83 = *v139;
      if (*(*v139 + 16))
      {
        v84 = sub_25E978F5C(v27, v26);
        v4 = v138;
        v85 = v143;
        if (v86)
        {
          memmove(&__dst, (*(v83 + 56) + 232 * v84), 0xE8uLL);
          nullsub_1(&__dst);
        }

        else
        {
          sub_25E98B498(&v208);
          *&v225[144] = v219;
          *&v225[160] = v220;
          *&v225[176] = v221;
          *&v225[192] = v222;
          *&v225[80] = v215;
          *&v225[96] = v216;
          *&v225[112] = v217;
          *&v225[128] = v218;
          *&v225[16] = v211;
          *&v225[32] = v212;
          *&v225[48] = v213;
          *&v225[64] = v214;
          __dst = v208;
          v224 = v209;
          *v225 = v210;
        }
      }

      else
      {
        sub_25E98B498(&v208);
        *&v225[144] = v219;
        *&v225[160] = v220;
        *&v225[176] = v221;
        *&v225[192] = v222;
        *&v225[80] = v215;
        *&v225[96] = v216;
        *&v225[112] = v217;
        *&v225[128] = v218;
        *&v225[16] = v211;
        *&v225[32] = v212;
        *&v225[48] = v213;
        *&v225[64] = v214;
        __dst = v208;
        v224 = v209;
        *v225 = v210;
        v4 = v138;
        v85 = v143;
      }

      v219 = *&v225[144];
      v220 = *&v225[160];
      v221 = *&v225[176];
      v222 = *&v225[192];
      v215 = *&v225[80];
      v216 = *&v225[96];
      v217 = *&v225[112];
      v218 = *&v225[128];
      v211 = *&v225[16];
      v212 = *&v225[32];
      v213 = *&v225[48];
      v214 = *&v225[64];
      v208 = __dst;
      v209 = v224;
      v210 = *v225;
      if (sub_25E9D7640(&v208) == 1)
      {
        LOBYTE(v191[0]) = 1;
        v193 = 0x5AuLL;
        v194 = 0uLL;
        LODWORD(v195) = 0;
        BYTE4(v195) = 1;
        *&v197 = 0;
        v196 = 0uLL;
        *(&v195 + 1) = 90;
        *(&v197 + 1) = 90;
        *&v199 = 0;
        v198 = 0uLL;
        v200 = 0uLL;
        *&v201 = 0;
        *(&v199 + 1) = 90;
        *(&v201 + 1) = 90;
        *&v203 = 0;
        v202 = 0uLL;
        *&v205 = 0;
        v204 = 0uLL;
        *(&v203 + 1) = 90;
        *(&v205 + 1) = 90;
        v207 = 0;
        v206 = 0uLL;
        nullsub_1(&v193);
        *&v225[144] = v204;
        *&v225[160] = v205;
        *&v225[176] = v206;
        *&v225[192] = v207;
        *&v225[80] = v200;
        *&v225[96] = v201;
        *&v225[112] = v202;
        *&v225[128] = v203;
        *&v225[16] = v196;
        *&v225[32] = v197;
        *&v225[48] = v198;
        *&v225[64] = v199;
        __dst = v193;
        v224 = v194;
        *v225 = v195;
      }

      v204 = *&v225[144];
      v205 = *&v225[160];
      v206 = *&v225[176];
      v207 = *&v225[192];
      v200 = *&v225[80];
      v201 = *&v225[96];
      v202 = *&v225[112];
      v203 = *&v225[128];
      v196 = *&v225[16];
      v197 = *&v225[32];
      v198 = *&v225[48];
      v199 = *&v225[64];
      v193 = __dst;
      v194 = v224;
      v195 = *v225;
      if (sub_25E9D7640(&v193) != 1)
      {
        v87 = 0uLL;
        if (*(v85 + 16))
        {
          v88 = sub_25E978F5C(0xD00000000000001BLL, 0x800000025E9DEE30);
          v87 = 0uLL;
          v89 = xmmword_25E9DC740;
          if (v90)
          {
            v91 = (*(v85 + 56) + 32 * v88);
            v89 = *v91;
            v87 = v91[1];
          }
        }

        else
        {
          v89 = xmmword_25E9DC740;
        }

        __dst = v89;
        v224 = v87;
      }

      v191[11] = *&v225[144];
      v191[12] = *&v225[160];
      v191[13] = *&v225[176];
      v192 = *&v225[192];
      v191[7] = *&v225[80];
      v191[8] = *&v225[96];
      v191[9] = *&v225[112];
      v191[10] = *&v225[128];
      v191[3] = *&v225[16];
      v191[4] = *&v225[32];
      v191[5] = *&v225[48];
      v191[6] = *&v225[64];
      v191[0] = __dst;
      v191[1] = v224;
      v191[2] = *v225;
      if (sub_25E9D7640(v191) != 1)
      {
        v92 = 0uLL;
        if (*(v85 + 16))
        {
          v93 = sub_25E978F5C(0xD000000000000013, 0x800000025E9DEE50);
          v92 = 0uLL;
          v94 = xmmword_25E9DC740;
          if (v95)
          {
            v96 = (*(v85 + 56) + 32 * v93);
            v94 = *v96;
            v92 = v96[1];
          }
        }

        else
        {
          v94 = xmmword_25E9DC740;
        }

        *&v225[8] = v94;
        *&v225[24] = v92;
      }

      v189[11] = *&v225[144];
      v189[12] = *&v225[160];
      v189[13] = *&v225[176];
      v189[7] = *&v225[80];
      v189[8] = *&v225[96];
      v189[9] = *&v225[112];
      v189[10] = *&v225[128];
      v189[3] = *&v225[16];
      v189[4] = *&v225[32];
      v189[5] = *&v225[48];
      v189[6] = *&v225[64];
      v189[0] = __dst;
      v189[1] = v224;
      v190 = *&v225[192];
      v189[2] = *v225;
      if (sub_25E9D7640(v189) != 1)
      {
        v97 = 0uLL;
        if (*(v85 + 16))
        {
          v98 = sub_25E978F5C(0x75516E6F73726570, 0xEF656D6954797265);
          v97 = 0uLL;
          v99 = xmmword_25E9DC740;
          if (v100)
          {
            v101 = (*(v85 + 56) + 32 * v98);
            v99 = *v101;
            v97 = v101[1];
          }
        }

        else
        {
          v99 = xmmword_25E9DC740;
        }

        *&v225[40] = v99;
        *&v225[56] = v97;
      }

      v187[11] = *&v225[144];
      v187[12] = *&v225[160];
      v187[13] = *&v225[176];
      v187[7] = *&v225[80];
      v187[8] = *&v225[96];
      v187[9] = *&v225[112];
      v187[10] = *&v225[128];
      v187[3] = *&v225[16];
      v187[4] = *&v225[32];
      v187[5] = *&v225[48];
      v187[6] = *&v225[64];
      v187[0] = __dst;
      v187[1] = v224;
      v188 = *&v225[192];
      v187[2] = *v225;
      if (sub_25E9D7640(v187) != 1)
      {
        v102 = 0uLL;
        if (*(v85 + 16))
        {
          v103 = sub_25E978F5C(0xD000000000000017, 0x800000025E9DEE70);
          v102 = 0uLL;
          v104 = xmmword_25E9DC740;
          if (v105)
          {
            v106 = (*(v85 + 56) + 32 * v103);
            v104 = *v106;
            v102 = v106[1];
          }
        }

        else
        {
          v104 = xmmword_25E9DC740;
        }

        *&v225[72] = v104;
        *&v225[88] = v102;
      }

      v185[11] = *&v225[144];
      v185[12] = *&v225[160];
      v185[13] = *&v225[176];
      v185[7] = *&v225[80];
      v185[8] = *&v225[96];
      v185[9] = *&v225[112];
      v185[10] = *&v225[128];
      v186 = *&v225[192];
      v185[5] = *&v225[48];
      v185[6] = *&v225[64];
      v185[0] = __dst;
      v185[1] = v224;
      v185[3] = *&v225[16];
      v185[4] = *&v225[32];
      v185[2] = *v225;
      if (sub_25E9D7640(v185) != 1)
      {
        v107 = 0uLL;
        if (*(v85 + 16))
        {
          v108 = sub_25E978F5C(0xD00000000000001CLL, 0x800000025E9DEE90);
          v107 = 0uLL;
          v109 = xmmword_25E9DC740;
          if (v110)
          {
            v111 = (*(v85 + 56) + 32 * v108);
            v109 = *v111;
            v107 = v111[1];
          }
        }

        else
        {
          v109 = xmmword_25E9DC740;
        }

        *&v225[104] = v109;
        *&v225[120] = v107;
      }

      v183[12] = *&v225[160];
      v183[13] = *&v225[176];
      v184 = *&v225[192];
      v183[8] = *&v225[96];
      v183[9] = *&v225[112];
      v183[10] = *&v225[128];
      v183[11] = *&v225[144];
      v183[4] = *&v225[32];
      v183[5] = *&v225[48];
      v183[6] = *&v225[64];
      v183[7] = *&v225[80];
      v183[0] = __dst;
      v183[1] = v224;
      v183[2] = *v225;
      v183[3] = *&v225[16];
      if (sub_25E9D7640(v183) != 1)
      {
        v112 = 0uLL;
        if (*(v85 + 16))
        {
          v113 = sub_25E978F5C(0xD000000000000015, 0x800000025E9DEEB0);
          v112 = 0uLL;
          v114 = xmmword_25E9DC740;
          if (v115)
          {
            v116 = (*(v85 + 56) + 32 * v113);
            v114 = *v116;
            v112 = v116[1];
          }
        }

        else
        {
          v114 = xmmword_25E9DC740;
        }

        *&v225[136] = v114;
        *&v225[152] = v112;
      }

      v181[12] = *&v225[160];
      v181[13] = *&v225[176];
      v182 = *&v225[192];
      v181[8] = *&v225[96];
      v181[9] = *&v225[112];
      v181[10] = *&v225[128];
      v181[11] = *&v225[144];
      v181[4] = *&v225[32];
      v181[5] = *&v225[48];
      v181[6] = *&v225[64];
      v181[7] = *&v225[80];
      v181[0] = __dst;
      v181[1] = v224;
      v181[2] = *v225;
      v181[3] = *&v225[16];
      if (sub_25E9D7640(v181) != 1)
      {
        v117 = 0uLL;
        if (*(v85 + 16))
        {
          v118 = sub_25E978F5C(0xD000000000000013, 0x800000025E9DEED0);
          v117 = 0uLL;
          v119 = xmmword_25E9DC740;
          if (v120)
          {
            v121 = (*(v85 + 56) + 32 * v118);
            v119 = *v121;
            v117 = v121[1];
          }
        }

        else
        {
          v119 = xmmword_25E9DC740;
        }

        *&v225[168] = v119;
        *&v225[184] = v117;
      }

      if (*(v4[3] + 16))
      {
        v122 = v4[3];

        sub_25E978F5C(v149, v148);
        if (v123)
        {

          v178 = *&v225[160];
          v179 = *&v225[176];
          v180 = *&v225[192];
          v174 = *&v225[96];
          v175 = *&v225[112];
          v176 = *&v225[128];
          v177 = *&v225[144];
          v170 = *&v225[32];
          v171 = *&v225[48];
          v172 = *&v225[64];
          v173 = *&v225[80];
          v166 = __dst;
          v167 = v224;
          v168 = *v225;
          v169 = *&v225[16];
          if (sub_25E9D7640(&v166) != 1)
          {
            v124 = v4[3];
            if (*(v124 + 16))
            {
              v125 = v4[3];

              v126 = sub_25E978F5C(v149, v148);
              if (v127)
              {
                v128 = *(*(v124 + 56) + 4 * v126);
              }

              else
              {
                v128 = 0;
              }

              v135 = v127 ^ 1;
            }

            else
            {
              v128 = 0;
              v135 = 1;
            }

            *v225 = v128;
            v225[4] = v135 & 1;
          }

          goto LABEL_107;
        }
      }

      if (qword_280F6FE70 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v147, qword_280F6FE78);

      v129 = sub_25E9D7F00();
      v130 = sub_25E9D8120();

      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *&v166 = v132;
        *v131 = 136315138;
        *(v131 + 4) = sub_25E9887EC(v149, v148, &v166);
        _os_log_impl(&dword_25E971000, v129, v130, "executorSearchToolQueryType not found for executorId %s", v131, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v132);
        MEMORY[0x25F8C51A0](v132, -1, -1);
        MEMORY[0x25F8C51A0](v131, -1, -1);
      }

LABEL_107:
      v163 = *&v225[160];
      v164 = *&v225[176];
      v159 = *&v225[96];
      v160 = *&v225[112];
      v161 = *&v225[128];
      v162 = *&v225[144];
      v155 = *&v225[32];
      v156 = *&v225[48];
      v157 = *&v225[64];
      v158 = *&v225[80];
      v151 = __dst;
      v152 = v224;
      v153 = *v225;
      v154 = *&v225[16];
      v178 = *&v225[160];
      v179 = *&v225[176];
      v174 = *&v225[96];
      v175 = *&v225[112];
      v176 = *&v225[128];
      v177 = *&v225[144];
      v170 = *&v225[32];
      v171 = *&v225[48];
      v172 = *&v225[64];
      v173 = *&v225[80];
      v166 = __dst;
      v167 = v224;
      v165 = *&v225[192];
      v180 = *&v225[192];
      v168 = *v225;
      v169 = *&v225[16];
      if (sub_25E9D7640(&v166) == 1)
      {
        sub_25E9890C8(v149, v148, v150);
      }

      else
      {
        v226[12] = v163;
        v226[13] = v164;
        v227 = v165;
        v226[8] = v159;
        v226[9] = v160;
        v226[10] = v161;
        v226[11] = v162;
        v226[4] = v155;
        v226[5] = v156;
        v226[6] = v157;
        v226[7] = v158;
        v226[0] = v151;
        v226[1] = v152;
        v226[2] = v153;
        v226[3] = v154;
        v133 = *v139;
        v134 = swift_isUniquelyReferenced_nonNull_native();
        *&v150[0] = *v139;
        sub_25E994A5C(v226, v149, v148, v134);

        *v139 = *&v150[0];
      }

      v9 = v142;
      v3 = v137;
      if (v142 == v141)
      {

        goto LABEL_118;
      }

      if (v142 < *(v137 + 16))
      {
        continue;
      }

      break;
    }

LABEL_122:
    __break(1u);
LABEL_123:
    swift_once();
  }
}

void *SELFComponent.Executor.deinit()
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

  v16 = v0[17];

  return v0;
}

uint64_t SELFComponent.Executor.__deallocating_deinit()
{
  SELFComponent.Executor.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_25E9D75F4()
{
  result = qword_27FD0DE30;
  if (!qword_27FD0DE30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27FD0DE30);
  }

  return result;
}

uint64_t sub_25E9D7640(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x5A)
  {
    v2 = 90;
  }

  else
  {
    v2 = *a1;
  }

  v3 = v2 - 90;
  if (v1 >= 0x59)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}