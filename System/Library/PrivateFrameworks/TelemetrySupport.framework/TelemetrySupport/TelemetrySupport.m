uint64_t Metadata.init(dict:)(uint64_t a1)
{
  result = sub_5BB14();
  v3 = 0;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v3;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (v8 << 10) | (16 * v9);
      v11 = (*(a1 + 48) + v10);
      v12 = *v11;
      v13 = v11[1];
      v14 = (*(a1 + 56) + v10);
      v15 = *v14;
      v16 = v14[1];

      v18._countAndFlagsBits = v15;
      v18._object = v16;
      v19._countAndFlagsBits = v12;
      v19._object = v13;
      sub_5BB24(v18, v19);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1478()
{
  v0 = sub_5C074();
  __swift_allocate_value_buffer(v0, qword_789F8);
  __swift_project_value_buffer(v0, qword_789F8);
  v1 = sub_65E8();
  v2 = *v1;
  v3 = v1[1];

  return sub_5C064();
}

uint64_t sub_1508()
{
  if (qword_789F0 != -1)
  {
    swift_once();
  }

  v0 = sub_5C074();

  return __swift_project_value_buffer(v0, qword_789F8);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t OTLPGRPCClientLogger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_789F0 != -1)
  {
    swift_once();
  }

  v2 = sub_5C074();
  v3 = __swift_project_value_buffer(v2, qword_789F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void OTLPGRPCClientInternalError.hash(into:)()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v2 = 4;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v2 = 5;
LABEL_5:
    sub_5C464(v2);
  }

  sub_5C464(v1);
}

Swift::Int OTLPGRPCClientInternalError.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_5C454();
  if (!v2)
  {
    v3 = 4;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 5;
LABEL_5:
    sub_5C464(v3);
  }

  sub_5C464(v1);
  return sub_5C474();
}

void sub_1724()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    v2 = 4;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    v2 = 5;
LABEL_5:
    sub_5C464(v2);
  }

  sub_5C464(v1);
}

Swift::Int sub_1774()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_5C454();
  if (!v2)
  {
    v3 = 4;
    goto LABEL_5;
  }

  if (v2 == 1)
  {
    v3 = 5;
LABEL_5:
    sub_5C464(v3);
  }

  sub_5C464(v1);
  return sub_5C474();
}

Swift::Int sub_1814(unsigned __int8 a1)
{
  sub_5C454();
  sub_5C464(a1);
  return sub_5C474();
}

Swift::Int sub_1878()
{
  sub_5C454();
  sub_17EC(v2, *v0);
  return sub_5C474();
}

char *OTLPGRPCClient.__allocating_init(transport:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + 48);
  v7 = *(v3 + 52);
  swift_allocObject();
  v8 = sub_566C(a1, a2);
  v10 = *(v3 + 80);
  v9 = *(v3 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v8;
}

char *OTLPGRPCClient.init(transport:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = sub_566C(a1, a2);
  v7 = *(v4 + 80);
  v6 = *(v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v5;
}

uint64_t OTLPGRPCClient.export(request:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B30;

  return OTLPGRPCClient.processExport(request:)(a1);
}

uint64_t sub_1B30()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t OTLPGRPCClient.processExport(request:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v3 = *v1;
  v4 = sub_5C334();
  v2[7] = v4;
  v5 = *(v4 - 8);
  v2[8] = v5;
  v6 = *(v5 + 64) + 15;
  v2[9] = swift_task_alloc();
  v7 = sub_5BC44();
  v2[10] = v7;
  v8 = *(v7 - 8);
  v2[11] = v8;
  v9 = *(v8 + 64) + 15;
  v2[12] = swift_task_alloc();
  v10 = sub_5BC74();
  v2[13] = v10;
  v11 = *(v10 - 8);
  v2[14] = v11;
  v12 = *(v11 + 64) + 15;
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v13 = sub_5BA34();
  v2[19] = v13;
  v14 = *(v13 - 8);
  v2[20] = v14;
  v15 = *(v14 + 64) + 15;
  v2[21] = swift_task_alloc();
  v2[22] = *(v3 + 88);
  v2[23] = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[24] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v2[25] = v17;
  v18 = *(v17 + 64) + 15;
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_1ED0, 0, 0);
}

uint64_t sub_1ED0()
{
  v31 = v0;
  v1 = *(v0 + 48);
  v2 = *(*v1 + 120);
  *(v0 + 224) = v2;
  v3 = v1 + v2;
  v4 = type metadata accessor for OTLPExporterConfiguration();
  *(v0 + 232) = v4;
  v5 = v3 + *(v4 + 20);
  *(v0 + 240) = *v5;
  *(v0 + 248) = *(v5 + 8);
  LOBYTE(v5) = *(v5 + 16);
  *(v0 + 368) = v5;
  if (v5)
  {
    v6 = sub_53CC8();
  }

  else
  {
    static TSDeadLine.now()(&v30);
    v6 = &v29;
    static TSDeadLine.+ infix(_:_:)(&v30, &v29);
  }

  v7 = *(v0 + 176);
  v8 = *(v0 + 48);
  *(v0 + 256) = *v6;
  v9 = *(v4 + 24);
  *(v0 + 264) = *(v7 + 64);
  *(v0 + 272) = (v7 + 64) & 0xFFFFFFFFFFFFLL | 0xCBB9000000000000;
  *(v0 + 280) = *(v3 + v9);
  *(v0 + 288) = *(*v8 + 112);
  *(v0 + 296) = 0;
  v10 = *(v0 + 368);
  v11 = *(v0 + 168);
  sub_5BA24();
  if ((v10 & 1) == 0)
  {
    v12 = *(v0 + 240);
    v13 = *(v0 + 248);
    v14 = *(v0 + 168);
    sub_5BA14();
  }

  v15 = *(v0 + 288);
  v16 = *(v0 + 272);
  v17 = *(v0 + 48);
  v28 = (*(v0 + 264) + **(v0 + 264));
  v18 = *(*(v0 + 264) + 4);
  v19 = swift_task_alloc();
  *(v0 + 304) = v19;
  *v19 = v0;
  v19[1] = sub_20C4;
  v21 = *(v0 + 272);
  v20 = *(v0 + 280);
  v22 = *(v0 + 208);
  v24 = *(v0 + 176);
  v23 = *(v0 + 184);
  v25 = *(v0 + 168);
  v26 = *(v0 + 40);

  return v28(v22, v26, v20, v25, v23, v24);
}

uint64_t sub_20C4()
{
  v2 = *(*v1 + 304);
  v5 = *v1;
  *(*v1 + 312) = v0;

  if (v0)
  {
    v3 = sub_2488;
  }

  else
  {
    v3 = sub_21D8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_21D8()
{
  v1 = v0[26];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];
  (*(v0[20] + 8))(v0[21], v0[19]);
  (*(v4 + 32))(v2, v1, v3);
  if (qword_789F0 != -1)
  {
    swift_once();
  }

  v5 = sub_5C074();
  __swift_project_value_buffer(v5, qword_789F8);
  v6 = sub_5C054();
  v7 = sub_5C2C4();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[37] + 1;
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = v8;
    _os_log_impl(&dword_0, v6, v7, "Publish success. attempt=%{public}ld", v9, 0xCu);
  }

  v10 = v0[39];
  v11 = v0[27];
  v13 = v0[22];
  v12 = v0[23];

  (*(v13 + 56))(v11, v12, v13);
  if (v10)
  {
    (*(v0[25] + 8))(v0[27], v0[24]);
    v15 = v0[26];
    v14 = v0[27];
    v16 = v0[21];
    v18 = v0[17];
    v17 = v0[18];
    v20 = v0[15];
    v19 = v0[16];
    v21 = v0[12];
    v22 = v0[9];
  }

  else
  {
    v24 = v0[26];
    v25 = v0[24];
    v26 = v0[21];
    v28 = v0[17];
    v27 = v0[18];
    v30 = v0[15];
    v29 = v0[16];
    v31 = v0[12];
    v32 = v0[9];
    v33 = v0[27];
    (*(v0[25] + 8))();
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_2488()
{
  v101 = v0;
  v1 = v0[39];
  v2 = v0[18];
  v3 = v0[13];
  (*(v0[20] + 8))(v0[21], v0[19]);
  v0[4] = v1;
  swift_errorRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78000, &qword_5EBF0);
  if (!swift_dynamicCast())
  {
    v38 = v0[4];

    if (qword_789F0 != -1)
    {
      swift_once();
    }

    v39 = v0[39];
    v40 = sub_5C074();
    __swift_project_value_buffer(v40, qword_789F8);
    swift_errorRetain();
    v41 = sub_5C054();
    v42 = sub_5C2B4();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = v0[39];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 138543362;
      swift_errorRetain();
      v46 = _swift_stdlib_bridgeErrorToNSError();
      *(v44 + 4) = v46;
      *v45 = v46;
      _os_log_impl(&dword_0, v41, v42, "Publish failed. error=%{public}@", v44, 0xCu);
      sub_60C4(v45, &qword_78008, &qword_5EBF8);
    }

    v47 = v0[39];

    swift_willThrow();
    v48 = v0[39];
    goto LABEL_16;
  }

  v4 = v0[39];
  v5 = v0[17];
  v6 = v0[18];
  v7 = v0[13];
  v8 = v0[14];
  v10 = v0[11];
  v9 = v0[12];
  v11 = v0[10];

  (*(v8 + 32))(v5, v6, v7);
  sub_5BC54();
  v98 = RPCError.Code.isOTLPRetryable.getter();
  v95 = *(v10 + 8);
  v95(v9, v11);
  if (qword_789F0 != -1)
  {
    swift_once();
  }

  v12 = v0[16];
  v13 = v0[17];
  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[13];
  v17 = sub_5C074();
  v18 = __swift_project_value_buffer(v17, qword_789F8);
  v19 = *(v15 + 16);
  v0[40] = v18;
  v0[41] = v19;
  v0[42] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v19(v12, v13, v16);
  v96 = v19;
  v19(v14, v13, v16);
  v20 = sub_5C054();
  v21 = sub_5C2B4();
  v22 = os_log_type_enabled(v20, v21);
  v23 = v0[16];
  v97 = v0[15];
  v24 = v0[13];
  v25 = v0[14];
  if (v22)
  {
    v26 = v0[12];
    v92 = v0[13];
    v27 = v0[10];
    v28 = swift_slowAlloc();
    v100[0] = swift_slowAlloc();
    *v28 = 136446722;
    log = v20;
    sub_5BC54();
    sub_635C(&qword_78020, &type metadata accessor for RPCError.Code);
    v29 = sub_5C394();
    v93 = v21;
    v31 = v30;
    v95(v26, v27);
    v32 = *(v25 + 8);
    v32(v23, v92);
    v33 = sub_4F84(v29, v31, v100);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = sub_5BC64();
    v36 = v35;
    v32(v97, v92);
    v37 = sub_4F84(v34, v36, v100);

    *(v28 + 14) = v37;
    *(v28 + 22) = 1026;
    *(v28 + 24) = v98 & 1;
    _os_log_impl(&dword_0, log, v93, "gRPC error. grpc_error_code=%{public}s grpc_status_message=%s error_retryable=%{BOOL,public}d", v28, 0x1Cu);
    swift_arrayDestroy();

    v0[43] = v32;
    if ((v98 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  else
  {

    v32 = *(v25 + 8);
    v32(v97, v24);
    v32(v23, v24);
    v0[43] = v32;
    if ((v98 & 1) == 0)
    {
LABEL_14:
      v50 = v0[17];
      v51 = v0[13];
      v52 = v0[14] + 8;
      sub_635C(&qword_78010, &type metadata accessor for RPCError);
      swift_allocError();
      v96(v53, v50, v51);
LABEL_15:
      swift_willThrow();
      v32(v50, v51);
      v54 = v0[4];

LABEL_16:
      v56 = v0[26];
      v55 = v0[27];
      v57 = v0[21];
      v59 = v0[17];
      v58 = v0[18];
      v61 = v0[15];
      v60 = v0[16];
      v62 = v0[12];
      v63 = v0[9];

      v64 = v0[1];

      return v64();
    }
  }

  v49 = v0[37];
  if (v49 == 999)
  {
    goto LABEL_14;
  }

  v66 = v0[32];
  v67 = v0[6] + v0[28];
  v68 = (v67 + *(v0[29] + 32));
  v69 = *v68;
  v70 = v68[1];
  v71 = (v67 + *(v0[29] + 28));
  v72 = *v71;
  v73 = v71[1];
  exp2((v49 + 1));
  v74 = sub_5C4B4();
  v76 = v75;
  if (sub_5C4A4())
  {
    v70 = v76;
  }

  else
  {
    v74 = v69;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78018, &qword_5EC00);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_5EBD0;
  v0[2] = 0x3A66666F6B636162;
  v0[3] = 0xE900000000000020;
  v103._countAndFlagsBits = sub_5C494();
  sub_5C134(v103);

  v78 = v0[2];
  v79 = v0[3];
  *(v77 + 56) = &type metadata for String;
  *(v77 + 32) = v78;
  *(v77 + 40) = v79;
  sub_5C444();

  static TSDeadLine.now()(&v99);
  static TSDeadLine.+ infix(_:_:)(&v99, v100);
  v99 = v66;
  if (!static TSDeadLine.> infix(_:_:)(&v99, v100))
  {
    v50 = v0[17];
    v51 = v0[13];
    v90 = v0[14] + 8;
    sub_635C(&qword_78010, &type metadata accessor for RPCError);
    swift_allocError();
    v96(v91, v50, v51);
    goto LABEL_15;
  }

  v80 = sub_5C054();
  v81 = sub_5C2C4();
  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v100[0] = v83;
    *v82 = 136315138;
    v84 = sub_5C494();
    v86 = sub_4F84(v84, v85, v100);

    *(v82 + 4) = v86;
    _os_log_impl(&dword_0, v80, v81, "Waiting before reattempting request backoff=%s", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v83);
  }

  v87 = v0[9];
  sub_5C3F4();
  v88 = swift_task_alloc();
  v0[44] = v88;
  *v88 = v0;
  v88[1] = sub_2E00;
  v89 = v0[9];

  return sub_4ACC(v74, v70, 0, 0, 1);
}

uint64_t sub_2E00()
{
  v2 = *v1;
  v3 = *(*v1 + 352);
  v4 = *v1;
  *(*v1 + 360) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v5 = sub_30C0;
  }

  else
  {
    v5 = sub_2F68;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_2F68()
{
  v1 = *(v0 + 112) + 8;
  (*(v0 + 344))(*(v0 + 136), *(v0 + 104));
  v2 = *(v0 + 32);

  ++*(v0 + 296);
  v3 = *(v0 + 368);
  v4 = *(v0 + 168);
  sub_5BA24();
  if ((v3 & 1) == 0)
  {
    v5 = *(v0 + 240);
    v6 = *(v0 + 248);
    v7 = *(v0 + 168);
    sub_5BA14();
  }

  v8 = *(v0 + 288);
  v9 = *(v0 + 272);
  v10 = *(v0 + 48);
  v21 = (*(v0 + 264) + **(v0 + 264));
  v11 = *(*(v0 + 264) + 4);
  v12 = swift_task_alloc();
  *(v0 + 304) = v12;
  *v12 = v0;
  v12[1] = sub_20C4;
  v14 = *(v0 + 272);
  v13 = *(v0 + 280);
  v15 = *(v0 + 208);
  v17 = *(v0 + 176);
  v16 = *(v0 + 184);
  v18 = *(v0 + 168);
  v19 = *(v0 + 40);

  return v21(v15, v19, v13, v18, v16, v17);
}

uint64_t sub_30C0()
{
  v1 = v0[45];
  v2 = v0[40];
  swift_errorRetain();
  v3 = sub_5C054();
  v4 = sub_5C2B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&dword_0, v3, v4, "Error thrown whilst waiting to publish. error=%{public}@", v6, 0xCu);
    sub_60C4(v7, &qword_78008, &qword_5EBF8);
  }

  v9 = v0[45];
  v10 = v0[42];
  v11 = v0[43];
  v12 = v0[41];
  v13 = v0[17];
  v14 = v0[13];
  v15 = v0[14];

  sub_635C(&qword_78010, &type metadata accessor for RPCError);
  swift_allocError();
  v12(v16, v13, v14);
  swift_willThrow();

  v11(v13, v14);
  v17 = v0[4];

  v19 = v0[26];
  v18 = v0[27];
  v20 = v0[21];
  v22 = v0[17];
  v21 = v0[18];
  v24 = v0[15];
  v23 = v0[16];
  v25 = v0[12];
  v26 = v0[9];

  v27 = v0[1];

  return v27();
}

uint64_t OTLPGRPCClient.run()()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return _swift_task_switch(sub_335C, 0, 0);
}

uint64_t sub_335C()
{
  v1 = v0[3];
  v2 = *(v0[2] + 16);
  v3 = swift_task_alloc();
  *(v3 + 16) = *(v1 + 80);
  *(v3 + 24) = *(v1 + 88);
  v4 = *(*v2 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v5));
  sub_59EC((v2 + v4));
  os_unfair_lock_unlock((v2 + v5));

  v6 = async function pointer to withThrowingTaskGroup<A, B>(of:returning:isolation:body:)[1];
  v7 = swift_task_alloc();
  v0[4] = v7;
  *v7 = v0;
  v7[1] = sub_3504;
  v8 = v0[2];

  return withThrowingTaskGroup<A, B>(of:returning:isolation:body:)();
}

uint64_t sub_3504()
{
  v2 = *(*v1 + 32);
  v4 = *v1;

  if (v0)
  {
  }

  else
  {

    return _swift_task_switch(sub_3628, 0, 0);
  }
}

uint64_t sub_3628()
{
  sub_368C(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void sub_368C(void *a1)
{
  v1 = a1[2];
  v4 = *(*a1 + 80);
  v2 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v3 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v3));
  sub_6024((v1 + v2));
  os_unfair_lock_unlock((v1 + v3));
}

uint64_t sub_374C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78038, &qword_5EDE8) - 8) + 64) + 15;
  v3[4] = swift_task_alloc();

  return _swift_task_switch(sub_37E8, 0, 0);
}

uint64_t sub_37E8()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  v4 = sub_5C1E4();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v2;

  sub_3EC0(v1, &unk_5EDF8, v6);
  sub_60C4(v1, &qword_78038, &qword_5EDE8);
  v5(v1, 1, 1, v4);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v2;

  sub_3EC0(v1, &unk_5EE08, v7);
  sub_60C4(v1, &qword_78038, &qword_5EDE8);
  v5(v1, 1, 1, v4);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_3EC0(v1, &unk_5EE18, v8);
  sub_60C4(v1, &qword_78038, &qword_5EDE8);
  v9 = async function pointer to ThrowingTaskGroup.next(isolation:)[1];
  v10 = swift_task_alloc();
  v0[5] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78040, &unk_5EE20);
  *v10 = v0;
  v10[1] = sub_3A60;
  v12 = v0[2];

  return ThrowingTaskGroup.next(isolation:)(v0 + 7, 0, 0, v11);
}

uint64_t sub_3A60()
{
  v2 = *(*v1 + 40);
  v5 = *v1;
  *(*v1 + 48) = v0;

  if (v0)
  {
    v3 = sub_3C18;
  }

  else
  {
    v3 = sub_3B74;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3B74()
{
  v1 = *(v0 + 32);
  v2 = **(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78000, &qword_5EBF0);
  sub_5C2A4();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_3C18()
{
  if (qword_789F0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 48);
  v2 = sub_5C074();
  __swift_project_value_buffer(v2, qword_789F8);
  swift_errorRetain();
  v3 = sub_5C054();
  v4 = sub_5C2B4();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 48);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_0, v3, v4, "Child task threw error. error=%{public}@", v7, 0xCu);
    sub_60C4(v8, &qword_78008, &qword_5EBF8);
  }

  else
  {
  }

  v10 = *(v0 + 32);
  v11 = **(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78000, &qword_5EBF0);
  sub_5C2A4();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_3E28()
{
  v1 = *(*(v0 + 16) + 24);
  v2 = async function pointer to GRPCClient.runConnections()[1];
  v3 = swift_task_alloc();
  *(v0 + 24) = v3;
  *v3 = v0;
  v3[1] = sub_65D8;

  return GRPCClient.runConnections()();
}

uint64_t sub_3EC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78038, &qword_5EDE8) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_708C8();
  v9 = v19 - v8;
  sub_628C(a1, v19 - v8);
  v10 = sub_5C1E4();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_60C4(v9, &qword_78038, &qword_5EDE8);
    if (*(a3 + 16))
    {
LABEL_3:
      v12 = *(a3 + 24);
      swift_getObjectType();
      swift_unknownObjectRetain();
      v13 = sub_5C1B4();
      v15 = v14;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_5C1D4();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v13 = 0;
  v15 = 0;
LABEL_6:
  v16 = *v4;
  v17 = (v15 | v13);
  if (v15 | v13)
  {
    v20[0] = 0;
    v20[1] = 0;
    v17 = v20;
    v20[2] = v13;
    v20[3] = v15;
  }

  v19[1] = 1;
  v19[2] = v17;
  v19[3] = v16;
  swift_task_create();
}

uint64_t sub_40C0()
{
  v1 = *(*(v0 + 16) + *(**(v0 + 16) + 128));
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_416C;

  return EventBuffer.run()();
}

uint64_t sub_416C()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_4260(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = *(*a4 + 88);
  v6 = *(*a4 + 80);
  swift_getAssociatedTypeWitness();
  v7 = type metadata accessor for EventBuffer.AsyncIterator();
  v4[4] = v7;
  v8 = *(v7 - 8);
  v4[5] = v8;
  v9 = *(v8 + 64) + 15;
  v4[6] = swift_task_alloc();

  return _swift_task_switch(sub_4368, 0, 0);
}

uint64_t sub_4368()
{
  v1 = v0[6];
  v2 = *(v0[3] + *(*v0[3] + 128));
  EventBuffer.makeAsyncIterator()();
  v3 = v0[4];
  v4 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu[1];
  v5 = swift_task_alloc();
  v0[7] = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_4458;
  v7 = v0[6];
  v8 = v0[4];

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v0 + 2, 0, 0, v8, WitnessTable);
}

uint64_t sub_4458()
{
  v2 = *(*v1 + 56);
  v4 = *v1;

  if (!v0)
  {

    return _swift_task_switch(sub_4568, 0, 0);
  }

  return result;
}

uint64_t sub_4568()
{
  v1 = v0[2];
  v0[8] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[9] = v2;
    *v2 = v0;
    v2[1] = sub_4660;
    v3 = v0[3];

    return OTLPGRPCClient.processExport(request:)(v1);
  }

  else
  {
    (*(v0[5] + 8))(v0[6], v0[4]);

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_4660()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v7 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v4 = *(v2 + 64);

    v5 = sub_4850;
  }

  else
  {
    v5 = sub_477C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_477C()
{
  v1 = v0[8];

  v2 = v0[4];
  v3 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu[1];
  v4 = swift_task_alloc();
  v0[7] = v4;
  WitnessTable = swift_getWitnessTable();
  *v4 = v0;
  v4[1] = sub_4458;
  v6 = v0[6];
  v7 = v0[4];

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(v0 + 2, 0, 0, v7, WitnessTable);
}

uint64_t sub_4850()
{
  (*(v0[5] + 8))(v0[6], v0[4]);

  v1 = v0[1];
  v2 = v0[10];

  return v1();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OTLPGRPCClient.gracefulShutdown()()
{
  v2 = v0;
  v3 = v0[2];
  v7 = *(*v0 + 80);
  v4 = *(*v3 + class metadata base offset for ManagedBuffer + 16);
  v5 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v5));
  sub_5B00((v3 + v4));
  os_unfair_lock_unlock((v3 + v5));
  if (!v1)
  {
    v6 = v2[3];
    sub_5B9D4();
  }
}

char *OTLPGRPCClient.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(v0 + 3);

  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 112)]);
  sub_5B74(&v0[*(*v0 + 120)]);
  v4 = *&v0[*(*v0 + 128)];

  return v0;
}

uint64_t OTLPGRPCClient.__deallocating_deinit()
{
  OTLPGRPCClient.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_4ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_5C324();
  *(v6 + 64) = v12;
  v13 = *(v12 - 8);
  *(v6 + 72) = v13;
  v14 = *(v13 + 64) + 15;
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return _swift_task_switch(sub_4BCC, 0, 0);
}

uint64_t sub_4BCC()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  v6 = sub_5C334();
  v7 = sub_635C(&qword_78050, &type metadata accessor for ContinuousClock);
  sub_5C3D4();
  sub_635C(&qword_78058, &type metadata accessor for ContinuousClock.Instant);
  sub_5C344();
  v8 = *(v4 + 8);
  v0[12] = v8;
  v0[13] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v1, v3);
  v9 = async function pointer to dispatch thunk of Clock.sleep(until:tolerance:)[1];
  v10 = swift_task_alloc();
  v0[14] = v10;
  *v10 = v0;
  v10[1] = sub_4D5C;
  v11 = v0[11];
  v12 = v0[7];

  return dispatch thunk of Clock.sleep(until:tolerance:)(v11, v0 + 2, v6, v7);
}

uint64_t sub_4D5C()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 64);
  v7 = *v1;
  v7[15] = v0;

  v4(v5, v6);
  if (v0)
  {

    return _swift_task_switch(sub_4F18, 0, 0);
  }

  else
  {
    v9 = v7[10];
    v8 = v7[11];

    v10 = v7[1];

    return v10();
  }
}

uint64_t sub_4F18()
{
  v2 = v0[10];
  v1 = v0[11];

  v3 = v0[1];
  v4 = v0[15];

  return v3();
}

uint64_t sub_4F84(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_5050(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_62FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_5050(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_515C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_5C314();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_515C(uint64_t a1, unint64_t a2)
{
  v4 = sub_51A8(a1, a2);
  sub_52D8(&off_70C88);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_51A8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_53C4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_5C314();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_5C144();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_53C4(v10, 0);
        result = sub_5C2E4();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_52D8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_5438(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_53C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78048, &unk_638E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_5438(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78048, &unk_638E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

BOOL _s16TelemetrySupport27OTLPGRPCClientInternalErrorO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return v2 == v3;
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (v4 == 1)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 == 2)
    {
      return v4 == 2 && v3 == 2;
    }

    else
    {
      return v4 == 2 && v3 == 3;
    }
  }

  else
  {
    if (!v2)
    {
      return v4 == 2 && !v3;
    }

    return v4 == 2 && v3 == 1;
  }
}

uint64_t sub_55D8()
{
  type metadata accessor for os_unfair_lock_s();
  sub_5C304();
  return sub_5C2F4();
}

char *sub_566C(uint64_t a1, uint64_t a2)
{
  v24 = a2;
  v3 = v2;
  v23 = a1;
  v4 = *(*v2 + 80);
  v5 = *(v4 - 8);
  v6 = (*(v5 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_708C8();
  v8 = &v22 - v7;
  v10 = *(v9 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_708C8();
  v15 = &v22 - v14;
  v25 = 0;
  type metadata accessor for OTLPGRPCClient.State();
  *(v2 + 2) = sub_55D8();
  swift_getAssociatedConformanceWitness();
  sub_5BA04();
  (*(v12 + 16))(v15, v23, AssociatedTypeWitness);
  *(v2 + 3) = sub_5B9F4();
  v16 = *(v10 + 40);

  v16(v17, v4, v10);
  (*(v5 + 32))(&v3[*(*v3 + 112)], v8, v4);
  v18 = v24;
  sub_63A4(v24, &v3[*(*v3 + 120)]);
  swift_getAssociatedTypeWitness();
  type metadata accessor for EventBuffer();
  v19 = type metadata accessor for OTLPExporterConfiguration();
  v20 = sub_541B4(*(v18 + *(v19 + 36)), *(v18 + *(v19 + 40)), *(v18 + *(v19 + 40) + 8));
  sub_5B74(v18);
  *&v2[*(*v2 + 128)] = v20;
  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

_BYTE *sub_59EC(_BYTE *result)
{
  if (*result)
  {
    if (*result == 1)
    {
      v1 = 2;
    }

    else
    {
      v1 = 0;
    }

    sub_5FD0();
    swift_allocError();
    *v2 = v1;
    *(v2 + 8) = 2;
    return swift_willThrow();
  }

  else
  {
    *result = 2;
  }

  return result;
}

uint64_t sub_5A68(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1B30;

  return sub_374C(v5, a2, v2);
}

_BYTE *sub_5B00(_BYTE *result)
{
  if (*result == 2)
  {
    *result = 1;
  }

  else
  {
    sub_5FD0();
    swift_allocError();
    *v1 = 1;
    *(v1 + 8) = 2;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_5B74(uint64_t a1)
{
  v2 = type metadata accessor for OTLPExporterConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_5BD4()
{
  result = qword_78028;
  if (!qword_78028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78028);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for OTLPGRPCClientInternalError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for OTLPGRPCClientInternalError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_5CCC(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_5CE8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_5D14(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = type metadata accessor for OTLPExporterConfiguration();
    if (v4 <= 0x3F)
    {
      v6 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_5E64(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_5EF4(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_5FD0()
{
  result = qword_78030;
  if (!qword_78030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78030);
  }

  return result;
}

uint64_t sub_6030()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_65E4;

  return sub_3E08(v3, v4, v5, v2);
}

uint64_t sub_60C4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_6124()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_65E4;

  return sub_40A0(v3, v4, v5, v2);
}

uint64_t objectdestroyTm()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_61F8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_65E4;

  return sub_4260(v3, v4, v5, v2);
}

uint64_t sub_628C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78038, &qword_5EDE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_62FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_635C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_63A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OTLPExporterConfiguration();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_78060)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_78060);
    }
  }
}

uint64_t sub_6458@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + class metadata base offset for ManagedBuffer) - 8) + 16))(a2, v3);
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

uint64_t sub_6590(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_65B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 4) = v3;
  return result;
}

uint64_t sub_6624(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OTLPExporterConfiguration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t MetricExporterConfiguration.serviceName.getter()
{
  v1 = (v0 + *(type metadata accessor for MetricExporterConfiguration() + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t type metadata accessor for MetricExporterConfiguration()
{
  result = qword_78D90;
  if (!qword_78D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MetricExporterConfiguration.serviceName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MetricExporterConfiguration() + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t MetricExporterConfiguration.init(OTLPConfiguration:serviceName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_6810(a1, a4);
  result = type metadata accessor for MetricExporterConfiguration();
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t sub_6810(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OTLPExporterConfiguration();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_6888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for OTLPExporterConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_695C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for OTLPExporterConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_6A18()
{
  result = type metadata accessor for OTLPExporterConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t RPCError.Code.isOTLPRetryable.getter()
{
  v1 = v0;
  v2 = sub_5BC44();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (off_708D0)();
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_708D0(v5);
  v9 = &v28 - v8;
  (*(v3 + 16))(&v28 - v8, v1, v2);
  sub_5BC34();
  sub_6F28();
  v10 = sub_5C114();
  v11 = *(v3 + 8);
  v11(v7, v2);
  if (v10)
  {
    goto LABEL_7;
  }

  sub_5BBB4();
  v12 = sub_5C114();
  v11(v7, v2);
  if (v12)
  {
    goto LABEL_7;
  }

  sub_5BBF4();
  v13 = sub_5C114();
  v11(v7, v2);
  if (v13)
  {
    goto LABEL_7;
  }

  sub_5BB44();
  v14 = sub_5C114();
  v11(v7, v2);
  if (v14 & 1) != 0 || (sub_5BB54(), v15 = sub_5C114(), v11(v7, v2), (v15) || (sub_5BC14(), v16 = sub_5C114(), v11(v7, v2), (v16))
  {
LABEL_7:
    v17 = 1;
  }

  else
  {
    sub_5BC04();
    v19 = sub_5C114();
    v11(v7, v2);
    if ((v19 & 1) == 0)
    {
      sub_5BB94();
      v20 = sub_5C114();
      v11(v7, v2);
      if ((v20 & 1) == 0)
      {
        sub_5BC24();
        v21 = sub_5C114();
        v11(v7, v2);
        if ((v21 & 1) == 0)
        {
          sub_5BB64();
          v22 = sub_5C114();
          v11(v7, v2);
          if ((v22 & 1) == 0)
          {
            sub_5BBC4();
            v23 = sub_5C114();
            v11(v7, v2);
            if ((v23 & 1) == 0)
            {
              sub_5BBA4();
              v24 = sub_5C114();
              v11(v7, v2);
              if ((v24 & 1) == 0)
              {
                sub_5BBE4();
                v25 = sub_5C114();
                v11(v7, v2);
                if ((v25 & 1) == 0)
                {
                  sub_5BB84();
                  v26 = sub_5C114();
                  v11(v7, v2);
                  if ((v26 & 1) == 0)
                  {
                    sub_5BB74();
                    v27 = sub_5C114();
                    v11(v7, v2);
                    if ((v27 & 1) == 0)
                    {
                      sub_5BBD4();
                      sub_5C114();
                      v11(v7, v2);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }

    v17 = 0;
  }

  v11(v9, v2);
  return v17;
}

unint64_t sub_6F28()
{
  result = qword_78068;
  if (!qword_78068)
  {
    sub_5BC44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78068);
  }

  return result;
}

uint64_t sub_6F80(uint64_t a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x746C7561666544;
    }

    if (a1 == 1)
    {
      return 1868983881;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x6775626544;
      case 16:
        return 0x726F727245;
      case 17:
        return 0x746C756146;
    }
  }

  return 0x6E776F6E6B6E55;
}

uint64_t sub_7034()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t sub_7040(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t sub_707C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t sub_70AC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_7104()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t sub_7134(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_718C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return v1;
}

uint64_t sub_71BC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 56);

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_7214()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return v1;
}

uint64_t sub_7244(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 72);

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_729C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return v1;
}

uint64_t sub_72CC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 88);

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_7324()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t sub_7330(uint64_t result, char a2)
{
  *(v2 + 96) = result;
  *(v2 + 104) = a2 & 1;
  return result;
}

uint64_t sub_7360()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return v1;
}

uint64_t sub_7390(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 120);

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

uint64_t sub_73E8()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return v1;
}

uint64_t sub_7418(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 136);

  *(v2 + 128) = a1;
  *(v2 + 136) = a2;
  return result;
}

uint64_t sub_7480(uint64_t a1)
{
  v3 = *(v1 + 144);

  *(v1 + 144) = a1;
  return result;
}

uint64_t sub_74CC()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return v1;
}

uint64_t sub_74FC(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 160);

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t sub_7554()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  return v1;
}

uint64_t sub_7584(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 176);

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

uint64_t sub_75DC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return v1;
}

uint64_t sub_760C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 192);

  *(v2 + 184) = a1;
  *(v2 + 192) = a2;
  return result;
}

uint64_t LogEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LogEvent() + 68);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LogEvent()
{
  result = qword_78DA0;
  if (!qword_78DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LogEvent.timestamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for LogEvent() + 68);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_77F0()
{
  v1 = *(v0 + *(type metadata accessor for LogEvent() + 72));
}

uint64_t sub_7824(uint64_t a1)
{
  v3 = *(type metadata accessor for LogEvent() + 72);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_78AC()
{
  v1 = *(v0 + *(type metadata accessor for LogEvent() + 76));
}

uint64_t sub_78E0(uint64_t a1)
{
  v3 = *(type metadata accessor for LogEvent() + 76);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t LogEvent.init(pid:serial:process:threadId:subsystem:category:logType:message:sender:arguments:timestamp:resourceAttributes:source:sourceType:index:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, char a13, __int128 a14, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v28 = type metadata accessor for LogEvent();
  *(a9 + v28[19]) = 0;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 104) = a13 & 1;
  *(a9 + 112) = a14;
  *(a9 + 128) = a15;
  *(a9 + 144) = a16;
  v29 = v28[17];
  v30 = sub_5B9B4();
  v31 = *(v30 - 8);
  (*(v31 + 16))(a9 + v29, a17, v30);
  if (a18)
  {
    v32 = sub_7B2C(a18);
  }

  else
  {
    v32 = 0;
  }

  v33 = v28[18];
  result = (*(v31 + 8))(a17, v30);
  *(a9 + v33) = v32;
  *(a9 + 152) = a19;
  *(a9 + 160) = a20;
  *(a9 + 168) = a21;
  *(a9 + 176) = a22;
  *(a9 + 184) = a23;
  *(a9 + 192) = a24;
  return result;
}

unint64_t sub_7B2C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780F8, &qword_5EF88);
    v2 = sub_5C374();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = (v13 << 10) | (16 * v14);
        v16 = (*(a1 + 48) + v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = (*(a1 + 56) + v15);
        v25 = *v19;
        v26 = v19[1];

        swift_dynamicCast();
        sub_9B3C(&v27, v29);
        sub_9B3C(v29, v30);
        sub_9B3C(v30, &v28);
        result = sub_9094(v18, v17);
        if (v20)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v18;
          v9[1] = v17;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0(v12);
          result = sub_9B3C(&v28, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v21 = (v2[6] + 16 * result);
          *v21 = v18;
          v21[1] = v17;
          result = sub_9B3C(&v28, (v2[7] + 32 * result));
          v22 = v2[2];
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
            goto LABEL_21;
          }

          v2[2] = v24;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t LogEvent.toOTLPData()()
{
  v1 = sub_5BD24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (off_70908)();
  v170 = v165 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0);
  v6 = *(*(v5 - 8) + 64);
  (off_70908)();
  v8 = v165 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource() - 8) + 64);
  (off_70908)();
  v168 = (v165 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) - 8);
  v11 = *(v169 + 64);
  v12 = (off_70908)();
  v178 = v165 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70908(v12);
  v15 = v165 - v14;
  v16 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = off_70908(v16 - 8);
  v181 = v165 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70908(v19);
  v177 = v165 - v21;
  v22 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v23 = *(*(v22 - 8) + 64);
  off_70908(v22 - 8);
  v173 = v165 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  v174 = *(v25 - 8);
  v26 = *(v174 + 64);
  v27 = off_70908(v25 - 8);
  v180 = v165 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70908(v27);
  v30 = (v165 - v29);
  Opentelemetry_Proto_Logs_V1_LogRecord.init()(v165 - v29);
  v183 = type metadata accessor for LogEvent();
  v184 = v0;
  v31 = (v0 + v183[17]);
  sub_5B994();
  v33 = v32 * 1000000000.0;
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_131;
  }

  if (v33 <= -1.0)
  {
    goto LABEL_132;
  }

  if (v33 >= 1.84467441e19)
  {
    goto LABEL_133;
  }

  v172 = v17;
  *v30 = v33;
  v34 = v184;
  v35 = *(v184 + 104);
  v182 = v30;
  if (v35)
  {
    goto LABEL_18;
  }

  v36 = *(v184 + 96);
  if (v36 <= 1)
  {
    if (!v36)
    {
      v37 = 0xE700000000000000;
      v38 = 0x746C7561666544;
      goto LABEL_17;
    }

    if (v36 == 1)
    {
      v37 = 0xE400000000000000;
      v38 = 1868983881;
      goto LABEL_17;
    }

LABEL_16:
    v37 = 0xE700000000000000;
    v38 = 0x6E776F6E6B6E55;
    goto LABEL_17;
  }

  if (v36 == 2)
  {
    v37 = 0xE500000000000000;
    v38 = 0x6775626544;
    goto LABEL_17;
  }

  if (v36 == 16)
  {
    v37 = 0xE500000000000000;
    v38 = 0x726F727245;
    goto LABEL_17;
  }

  if (v36 != 17)
  {
    goto LABEL_16;
  }

  v37 = 0xE500000000000000;
  v38 = 0x746C756146;
LABEL_17:
  v30 = v182;
  v39 = v182[5];

  v30[4] = v38;
  v30[5] = v37;
  v34 = v184;
LABEL_18:
  v165[1] = v5;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78070, &qword_5EEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_5EEC0;
  strcpy((inited + 32), "log.file.path");
  *(inited + 46) = -4864;
  if (*(v34 + 160))
  {
    v41 = *(v34 + 152);
    v42 = &type metadata for String;
    v43 = *(v34 + 160);
  }

  else
  {
    v41 = 0;
    v43 = 0;
    v42 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v41;
  *(inited + 56) = v43;
  *(inited + 72) = v42;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000000065720;
  v44 = *(v34 + 192);
  v166 = v2;
  v167 = v1;
  if (v44)
  {
    v45 = *(v34 + 184);
    v46 = &type metadata for String;
    v47 = v44;
  }

  else
  {
    v45 = 0;
    v47 = 0;
    v46 = 0;
    *(inited + 112) = 0;
  }

  v1 = v34;
  *(inited + 96) = v45;
  *(inited + 104) = v47;
  *(inited + 120) = v46;
  *(inited + 128) = 0xD000000000000015;
  *(inited + 136) = 0x8000000000065740;
  v48 = *(v34 + 176);
  v175 = v15;
  v176 = v8;
  if (v48)
  {
    v49 = *(v34 + 168);
    v50 = &type metadata for String;
    v51 = v48;
  }

  else
  {
    v49 = 0;
    v51 = 0;
    v50 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v49;
  *(inited + 152) = v51;
  *(inited + 168) = v50;
  strcpy((inited + 176), "process.name");
  *(inited + 189) = 0;
  *(inited + 190) = -5120;
  if (*(v34 + 40))
  {
    v52 = *(v34 + 32);
    v53 = &type metadata for String;
    v54 = *(v34 + 40);
  }

  else
  {
    v52 = 0;
    v54 = 0;
    v53 = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v52;
  *(inited + 200) = v54;
  *(inited + 216) = v53;
  *(inited + 224) = 0x2E737365636F7270;
  *(inited + 232) = 0xEB00000000646970;
  if (*(v34 + 8))
  {
    v55 = 0;
    v56 = 0;
    *(inited + 248) = 0;
    *(inited + 256) = 0;
  }

  else
  {
    v55 = *v34;
    v56 = &type metadata for Int;
  }

  *(inited + 240) = v55;
  *(inited + 264) = v56;
  *(inited + 272) = 0xD000000000000017;
  *(inited + 280) = 0x8000000000065760;
  if (*(v34 + 136))
  {
    v57 = *(v34 + 128);
    v58 = &type metadata for String;
    v59 = *(v34 + 136);
  }

  else
  {
    v57 = 0;
    v59 = 0;
    v58 = 0;
    *(inited + 304) = 0;
  }

  *(inited + 288) = v57;
  *(inited + 296) = v59;
  *(inited + 312) = v58;
  *(inited + 320) = 0x692E646165726874;
  *(inited + 328) = 0xE900000000000064;
  v60 = *(v34 + 56);
  if (v60)
  {
    v61 = *(v1 + 48);
    v62 = &type metadata for String;
  }

  else
  {
    v61 = 0;
    v62 = 0;
    *(inited + 352) = 0;
  }

  *(inited + 336) = v61;
  *(inited + 344) = v60;
  *(inited + 360) = v62;
  v63 = inited;

  v31 = sub_981C(v63);
  swift_setDeallocating();
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78078, &qword_5EEE8);
  swift_arrayDestroy();
  v64 = *(v1 + v183[19]);
  if (!v64)
  {
LABEL_68:
    v94 = Array<A>.init(from:)(v31);
    v95 = v30[6];

    v30[6] = v94;
    v96 = swift_allocObject();
    v97 = v96;
    *(v96 + 16) = xmmword_5EED0;
    *(v96 + 32) = 0x6574737973627573;
    *(v96 + 40) = 0xE90000000000006DLL;
    if (*(v1 + 72))
    {
      v98 = *(v1 + 64);
      v99 = &type metadata for String;
      v100 = *(v1 + 72);
    }

    else
    {
      v98 = 0;
      v100 = 0;
      v99 = 0;
      *(v96 + 64) = 0;
    }

    *(v96 + 48) = v98;
    *(v96 + 56) = v100;
    *(v96 + 72) = v99;
    *(v96 + 80) = 0x79726F6765746163;
    *(v96 + 88) = 0xE800000000000000;
    if (*(v1 + 88))
    {
      v101 = *(v1 + 80);
      v102 = &type metadata for String;
      v103 = *(v1 + 88);
    }

    else
    {
      v101 = 0;
      v103 = 0;
      v102 = 0;
      *(v96 + 112) = 0;
    }

    *(v96 + 96) = v101;
    *(v96 + 104) = v103;
    *(v96 + 120) = v102;
    *(v96 + 128) = 0x6567617373656DLL;
    *(v96 + 136) = 0xE700000000000000;
    if (*(v1 + 120))
    {
      v104 = *(v1 + 112);
      v105 = &type metadata for String;
      v106 = *(v1 + 120);
    }

    else
    {
      v104 = 0;
      v106 = 0;
      v105 = 0;
      *(v96 + 160) = 0;
    }

    *(v96 + 144) = v104;
    *(v96 + 152) = v106;
    *(v96 + 168) = v105;
    *(v96 + 176) = 0x746E656D75677261;
    *(v96 + 184) = 0xE900000000000073;
    v107 = *(v1 + 144);
    if (v107)
    {
      v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78098, &qword_5EF00);
    }

    else
    {
      v108 = 0;
      v97[25] = 0;
      v97[26] = 0;
    }

    v97[24] = v107;
    v97[27] = v108;

    v109 = sub_981C(v97);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    *(&v193 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78080, &unk_5EEF0);
    *&v192 = v109;
    v110 = v173;
    Opentelemetry_Proto_Common_V1_AnyValue.init(from:)(&v192, v173);
    Opentelemetry_Proto_Logs_V1_LogRecord.body.setter(v110);
    v15 = v177;
    Opentelemetry_Proto_Logs_V1_ScopeLogs.init()(v177);
    sub_99B4(v30, v180, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    v31 = *v15;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_81;
    }

    goto LABEL_134;
  }

  v15 = (v64 + 64);
  v65 = 1 << *(v64 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v1 = v66 & *(v64 + 64);
  v67 = (v65 + 63) >> 6;
  v185 = v64;

  v68 = 0;
  v186 = v15;
  while (v1)
  {
    v70 = v68;
LABEL_54:
    v73 = __clz(__rbit64(v1));
    v1 &= v1 - 1;
    v74 = v73 | (v70 << 6);
    v75 = (*(v185 + 48) + 16 * v74);
    v77 = *v75;
    v76 = v75[1];
    sub_62FC(*(v185 + 56) + 32 * v74, &v187);
    *&v189 = v77;
    *(&v189 + 1) = v76;
    sub_9B3C(&v187, &v190);

    v72 = v70;
LABEL_55:
    v192 = v189;
    v193 = v190;
    v194 = v191;
    v78 = *(&v189 + 1);
    if (!*(&v189 + 1))
    {

      v30 = v182;
      v1 = v184;
      goto LABEL_68;
    }

    v15 = v192;
    sub_9B3C(&v193, &v189);
    v187 = v189;
    v188 = v190;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v195 = v31;
    v80 = sub_9094(v15, v78);
    v82 = v31[2];
    v83 = (v81 & 1) == 0;
    v84 = __OFADD__(v82, v83);
    v85 = v82 + v83;
    if (v84)
    {
      goto LABEL_127;
    }

    v86 = v81;
    if (v31[3] < v85)
    {
      sub_93A0(v85, isUniquelyReferenced_nonNull_native);
      v80 = sub_9094(v15, v78);
      if ((v86 & 1) != (v87 & 1))
      {
LABEL_135:
        result = sub_5C3C4();
        __break(1u);
        return result;
      }

LABEL_61:
      if (v86)
      {
        goto LABEL_43;
      }

      goto LABEL_62;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_61;
    }

    v93 = v80;
    sub_9668();
    v80 = v93;
    if (v86)
    {
LABEL_43:
      v69 = v80;

      v31 = v195;
      sub_9B4C(&v187, v195[7] + 32 * v69);
      goto LABEL_44;
    }

LABEL_62:
    v31 = v195;
    v195[(v80 >> 6) + 8] |= 1 << v80;
    v88 = (v31[6] + 16 * v80);
    *v88 = v15;
    v88[1] = v78;
    v89 = (v31[7] + 32 * v80);
    v90 = v188;
    *v89 = v187;
    v89[1] = v90;
    v91 = v31[2];
    v84 = __OFADD__(v91, 1);
    v92 = v91 + 1;
    if (v84)
    {
      goto LABEL_129;
    }

    v31[2] = v92;
LABEL_44:
    v68 = v72;
    v15 = v186;
  }

  if (v67 <= v68 + 1)
  {
    v71 = v68 + 1;
  }

  else
  {
    v71 = v67;
  }

  v72 = v71 - 1;
  while (1)
  {
    v70 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v70 >= v67)
    {
      v1 = 0;
      v190 = 0u;
      v191 = 0u;
      v189 = 0u;
      goto LABEL_55;
    }

    v1 = *&v15[8 * v70];
    ++v68;
    if (v1)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
  while (2)
  {
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    v31 = sub_91C4(0, v31[2] + 1, 1, v31, &qword_780F0, &qword_5EF80, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
LABEL_81:
    v112 = v175;
    v111 = v176;
    v113 = v172;
    v115 = v31[2];
    v114 = v31[3];
    if (v115 >= v114 >> 1)
    {
      v31 = sub_91C4(v114 > 1, v115 + 1, 1, v31, &qword_780F0, &qword_5EF80, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    }

    v31[2] = v115 + 1;
    sub_9A1C(v180, v31 + ((*(v174 + 80) + 32) & ~*(v174 + 80)) + *(v174 + 72) * v115, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    *v15 = v31;
    Opentelemetry_Proto_Logs_V1_ResourceLogs.init()(v112);
    sub_99B4(v15, v181, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    v116 = *v112;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v116 = sub_91C4(0, v116[2] + 1, 1, v116, &qword_780E8, &qword_63820, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    }

    v118 = v116[2];
    v117 = v116[3];
    if (v118 >= v117 >> 1)
    {
      v116 = sub_91C4(v117 > 1, v118 + 1, 1, v116, &qword_780E8, &qword_63820, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    }

    v116[2] = v118 + 1;
    sub_9A1C(v181, v116 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + *(v113 + 72) * v118, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    *v112 = v116;
    v119 = swift_initStackObject();
    v120 = v119;
    *(v119 + 16) = xmmword_5EBD0;
    *(v119 + 32) = 0x692E656369766564;
    v121 = v119 + 32;
    *(v119 + 40) = 0xE900000000000064;
    v122 = *(v1 + 24);
    if (v122)
    {
      v123 = *(v1 + 16);
      v124 = &type metadata for String;
    }

    else
    {
      v123 = 0;
      v124 = 0;
      *(v119 + 64) = 0;
    }

    *(v119 + 48) = v123;
    *(v119 + 56) = v122;
    *(v119 + 72) = v124;

    v31 = sub_981C(v120);
    swift_setDeallocating();
    sub_994C(v121);
    v125 = *(v1 + v183[18]);
    if (v125)
    {
      v126 = (v125 + 64);
      v127 = 1 << *(v125 + 32);
      v128 = -1;
      if (v127 < 64)
      {
        v128 = ~(-1 << v127);
      }

      v129 = v128 & *(v125 + 64);
      v1 = (v127 + 63) >> 6;
      v185 = v125;

      v130 = 0;
      if (!v129)
      {
LABEL_97:
        if (v1 <= (v130 + 1))
        {
          v133 = (v130 + 1);
        }

        else
        {
          v133 = v1;
        }

        v134 = (v133 - 1);
        while (1)
        {
          v132 = (v130 + 1);
          if (__OFADD__(v130, 1))
          {
            goto LABEL_126;
          }

          if (v132 >= v1)
          {
            v129 = 0;
            v190 = 0u;
            v191 = 0u;
            v189 = 0u;
            goto LABEL_105;
          }

          v129 = *&v126[8 * v132];
          ++v130;
          if (v129)
          {
            goto LABEL_104;
          }
        }
      }

LABEL_96:
      v132 = v130;
LABEL_104:
      v135 = __clz(__rbit64(v129));
      v129 &= v129 - 1;
      v136 = v135 | (v132 << 6);
      v137 = (*(v185 + 48) + 16 * v136);
      v139 = *v137;
      v138 = v137[1];
      sub_62FC(*(v185 + 56) + 32 * v136, &v187);
      *&v189 = v139;
      *(&v189 + 1) = v138;
      sub_9B3C(&v187, &v190);

      v134 = v132;
LABEL_105:
      v192 = v189;
      v193 = v190;
      v194 = v191;
      v140 = *(&v189 + 1);
      if (!*(&v189 + 1))
      {

        v156 = v170;
        v112 = v175;
        v111 = v176;
        v15 = v177;
        goto LABEL_120;
      }

      v15 = v126;
      v186 = v134;
      v141 = v192;
      sub_9B3C(&v193, &v189);
      v187 = v189;
      v188 = v190;
      v142 = swift_isUniquelyReferenced_nonNull_native();
      v195 = v31;
      v143 = sub_9094(v141, v140);
      v145 = v31[2];
      v146 = (v144 & 1) == 0;
      v84 = __OFADD__(v145, v146);
      v147 = v145 + v146;
      if (v84)
      {
        continue;
      }

      v148 = v144;
      if (v31[3] < v147)
      {
        sub_93A0(v147, v142);
        v143 = sub_9094(v141, v140);
        if ((v148 & 1) != (v149 & 1))
        {
          goto LABEL_135;
        }

        goto LABEL_111;
      }

      if (v142)
      {
LABEL_111:
        v126 = v15;
        if (v148)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v155 = v143;
        sub_9668();
        v143 = v155;
        v126 = v15;
        if (v148)
        {
LABEL_95:
          v131 = v143;

          v31 = v195;
          sub_9B4C(&v187, v195[7] + 32 * v131);
          v130 = v186;
          if (!v129)
          {
            goto LABEL_97;
          }

          goto LABEL_96;
        }
      }

      v31 = v195;
      v195[(v143 >> 6) + 8] |= 1 << v143;
      v150 = (v31[6] + 16 * v143);
      *v150 = v141;
      v150[1] = v140;
      v151 = (v31[7] + 32 * v143);
      v152 = v188;
      *v151 = v187;
      v151[1] = v152;
      v153 = v31[2];
      v84 = __OFADD__(v153, 1);
      v154 = v153 + 1;
      if (v84)
      {
        goto LABEL_130;
      }

      v31[2] = v154;
      v130 = v186;
      if (!v129)
      {
        goto LABEL_97;
      }

      goto LABEL_96;
    }

    break;
  }

  v156 = v170;
LABEL_120:
  v157 = Array<A>.init(from:)(v31);
  v158 = v168;
  Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.getter(v168);
  v159 = *v158;

  *v158 = v157;
  Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.setter(v158);
  Opentelemetry_Proto_Logs_V1_LogsData.init()(v111);
  sub_99B4(v112, v178, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  v160 = *v111;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v160 = sub_91C4(0, v160[2] + 1, 1, v160, &qword_780E0, &unk_5EF70, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  }

  v162 = v160[2];
  v161 = v160[3];
  if (v162 >= v161 >> 1)
  {
    v160 = sub_91C4(v161 > 1, v162 + 1, 1, v160, &qword_780E0, &unk_5EF70, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  }

  v160[2] = v162 + 1;
  sub_9A1C(v178, v160 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v162, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  *v111 = v160;
  sub_5BD14();
  sub_9A84();
  v163 = sub_5BED4();
  (*(v166 + 8))(v156, v167);
  sub_9ADC(v111, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData);
  sub_9ADC(v112, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  sub_9ADC(v15, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
  sub_9ADC(v182, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
  return v163;
}

unint64_t sub_9094(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_5C454();
  sub_5C124();
  v6 = sub_5C474();

  return sub_910C(a1, a2, v6);
}

unint64_t sub_910C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_5C3A4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

size_t sub_91C4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_93A0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780D8, &unk_5F9C0);
  v39 = a2;
  result = sub_5C364();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = v20 | (v9 << 6);
      v24 = (*(v5 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + 32 * v23);
      if (v39)
      {
        v28 = v27[1];
        v40 = *v27;
        v41 = v28;
      }

      else
      {
        sub_A024(v27, &v40, &qword_78090, &unk_5F950);
      }

      v29 = *(v8 + 40);
      sub_5C454();
      sub_5C124();
      result = sub_5C474();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = (*(v8 + 56) + 32 * v16);
      v19 = v41;
      *v18 = v40;
      v18[1] = v19;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero((v5 + 64), ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void *sub_9668()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780D8, &unk_5F9C0);
  v2 = *v0;
  v3 = sub_5C354();
  v4 = v3;
  if (*(v2 + 16))
  {
    v26 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    v11 = *(v2 + 64);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v12 = v10 & v11;
    v13 = (v9 + 63) >> 6;
    if ((v10 & v11) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 32 * v17;
        sub_A024(*(v2 + 56) + 32 * v17, v27, &qword_78090, &unk_5F950);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v25 = v27[1];
        *v24 = v27[0];
        v24[1] = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v26;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

unint64_t sub_981C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780D8, &unk_5F9C0);
    v3 = sub_5C374();
    v4 = a1 + 32;

    while (1)
    {
      sub_A024(v4, &v15, &qword_78078, &qword_5EEE8);
      v5 = v15;
      v6 = v16;
      result = sub_9094(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_994C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78078, &qword_5EEE8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_99B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_9A1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_9A84()
{
  result = qword_78088;
  if (!qword_78088)
  {
    type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78088);
  }

  return result;
}

uint64_t sub_9ADC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *sub_9B3C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_9B4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78090, &unk_5F950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_9BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 24);
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
    v9 = sub_5B9B4();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 68);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_9C9C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 24) = a2;
  }

  else
  {
    v7 = sub_5B9B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 68);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_9D40()
{
  sub_9F38(319, &qword_780A0, &type metadata for Int, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_9F38(319, &qword_780A8, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_9EB8();
      if (v2 <= 0x3F)
      {
        sub_9FD0(319, &qword_780B8, &qword_78098, &qword_5EF00);
        if (v3 <= 0x3F)
        {
          sub_5B9B4();
          if (v4 <= 0x3F)
          {
            sub_9FD0(319, &qword_780C0, &qword_780C8, &unk_5EF40);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_9EB8()
{
  if (!qword_780B0)
  {
    type metadata accessor for OSLogEventLogType(255);
    v0 = sub_5C2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_780B0);
    }
  }
}

void sub_9F38(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_9FD0(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_5C2D4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_A024(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_A0FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.stringValue.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v3 = (&v7 - v2);
  sub_A024(v0, &v7 - v2, &qword_78100, &unk_5EFD0);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_60C4(v3, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      result = *v3;
      v6 = v3[1];
      return result;
    }

    sub_BF1C(v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  return 0;
}

uint64_t sub_A2BC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v6 = (&v11 - v5);
  sub_A024(a1, &v11 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_60C4(v6, &qword_78100, &unk_5EFD0);
  }

  else
  {
    result = swift_getEnumCaseMultiPayload();
    if (!result)
    {
      v9 = *v6;
      v10 = v6[1];
      goto LABEL_6;
    }

    result = sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  v9 = 0;
  v10 = 0xE000000000000000;
LABEL_6:
  *a2 = v9;
  a2[1] = v10;
  return result;
}

uint64_t sub_A400(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];

  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  *a2 = v4;
  a2[1] = v3;
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

void (*Opentelemetry_Proto_Common_V1_AnyValue.stringValue.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[3] = v7;
  sub_A024(v2, v7, &qword_78100, &unk_5EFD0);
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5[4] = v9;
  v10 = *(v9 - 8);
  v5[5] = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      v11 = *v8;
      v12 = v8[1];
      goto LABEL_12;
    }

    sub_BF1C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  v11 = 0;
  v12 = 0xE000000000000000;
LABEL_12:
  *v5 = v11;
  v5[1] = v12;
  return sub_A648;
}

void sub_A648(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {
    v9 = (*a1)[1];

    sub_60C4(v8, &qword_78100, &unk_5EFD0);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
    v10 = v2[1];
  }

  else
  {
    sub_60C4((*a1)[2], &qword_78100, &unk_5EFD0);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
  }

  free(v7);

  free(v2);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.BOOLValue.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v3 = &v6 - v2;
  sub_A024(v0, &v6 - v2, &qword_78100, &unk_5EFD0);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_60C4(v3, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return *v3;
    }

    sub_BF1C(v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  return 0;
}

uint64_t sub_A888@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v6 = &v10 - v5;
  sub_A024(a1, &v10 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_60C4(v6, &qword_78100, &unk_5EFD0);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    result = sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_6;
  }

  v9 = *v6;
LABEL_7:
  *a2 = v9;
  return result;
}

uint64_t sub_A9CC(char *a1, _BYTE *a2)
{
  v3 = *a1;
  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  *a2 = v3;
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.BOOLValue.setter(char a1)
{
  sub_60C4(v1, &qword_78100, &unk_5EFD0);
  *v1 = a1;
  v3 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Opentelemetry_Proto_Common_V1_AnyValue.BOOLValue.modify(void *a1))(_BYTE ***a1)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = v4 + 4;
  v7 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v9 = v8;
  v5[1] = v8;
  sub_A024(v2, v8, &qword_78100, &unk_5EFD0);
  v10 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5[2] = v10;
  v11 = *(v10 - 8);
  v5[3] = v11;
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_60C4(v9, &qword_78100, &unk_5EFD0);
LABEL_12:
    v12 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_BF1C(v9, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_12;
  }

  v12 = *v9;
LABEL_13:
  *v6 = v12;
  return sub_ACA4;
}

void sub_ACA4(_BYTE ***a1)
{
  v1 = *a1;
  v2 = (*a1)[2];
  v3 = (*a1)[3];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = *(*a1 + 32);
  sub_60C4(v5, &qword_78100, &unk_5EFD0);
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 7))(v5, 0, 1, v2);
  free(v4);

  free(v1);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.intValue.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v3 = &v6 - v2;
  sub_A024(v0, &v6 - v2, &qword_78100, &unk_5EFD0);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_60C4(v3, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return *v3;
    }

    sub_BF1C(v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  return 0;
}

uint64_t sub_AE78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v6 = (&v10 - v5);
  sub_A024(a1, &v10 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_60C4(v6, &qword_78100, &unk_5EFD0);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 2)
  {
    result = sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_6;
  }

  v9 = *v6;
LABEL_7:
  *a2 = v9;
  return result;
}

uint64_t sub_AFBC(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  *a2 = v3;
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.intValue.setter(uint64_t a1)
{
  sub_60C4(v1, &qword_78100, &unk_5EFD0);
  *v1 = a1;
  v3 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Opentelemetry_Proto_Common_V1_AnyValue.intValue.modify(uint64_t *a1))(uint64_t **a1)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[2] = v7;
  sub_A024(v2, v7, &qword_78100, &unk_5EFD0);
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_BF1C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_12;
  }

  v11 = *v8;
LABEL_13:
  *v5 = v11;
  return sub_B288;
}

void sub_B288(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = **a1;
  sub_60C4(v5, &qword_78100, &unk_5EFD0);
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v5, 0, 1, v2);
  free(v4);

  free(v1);
}

double Opentelemetry_Proto_Common_V1_AnyValue.doubleValue.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v3 = &v6 - v2;
  sub_A024(v0, &v6 - v2, &qword_78100, &unk_5EFD0);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_60C4(v3, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return *v3;
    }

    sub_BF1C(v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  return 0.0;
}

uint64_t sub_B45C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v6 = (&v10 - v5);
  sub_A024(a1, &v10 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_60C4(v6, &qword_78100, &unk_5EFD0);
LABEL_6:
    v9 = 0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 3)
  {
    result = sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_6;
  }

  v9 = *v6;
LABEL_7:
  *a2 = v9;
  return result;
}

uint64_t sub_B5A0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  *a2 = v3;
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.doubleValue.setter(double a1)
{
  sub_60C4(v1, &qword_78100, &unk_5EFD0);
  *v1 = a1;
  v3 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v4 = *(*(v3 - 8) + 56);

  return v4(v1, 0, 1, v3);
}

void (*Opentelemetry_Proto_Common_V1_AnyValue.doubleValue.modify(uint64_t *a1))(uint64_t **a1)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 8) = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[2] = v7;
  sub_A024(v2, v7, &qword_78100, &unk_5EFD0);
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5[3] = v9;
  v10 = *(v9 - 8);
  v5[4] = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_BF1C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_12;
  }

  v11 = *v8;
LABEL_13:
  *v5 = v11;
  return sub_B87C;
}

void sub_B87C(uint64_t **a1)
{
  v1 = *a1;
  v2 = (*a1)[3];
  v3 = (*a1)[4];
  v5 = (*a1)[1];
  v4 = (*a1)[2];
  v6 = **a1;
  sub_60C4(v5, &qword_78100, &unk_5EFD0);
  *v5 = v6;
  swift_storeEnumTagMultiPayload();
  (*(v3 + 56))(v5, 0, 1, v2);
  free(v4);

  free(v1);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.arrayValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v6 = &v10 - v5;
  sub_A024(v2, &v10 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_60C4(v6, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_C518(v6, a1, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
    }

    sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  *a1 = &_swiftEmptyArrayStorage;
  v9 = a1 + *(type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0) + 20);
  return sub_5BCD4();
}

uint64_t sub_BAA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v6 = &v10 - v5;
  sub_A024(a1, &v10 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_60C4(v6, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_C518(v6, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
    }

    sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  *a2 = &_swiftEmptyArrayStorage;
  v9 = a2 + *(type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0) + 20);
  return sub_5BCD4();
}

void (*Opentelemetry_Proto_Common_V1_AnyValue.arrayValue.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_A024(v1, v7, &qword_78100, &unk_5EFD0);
  v12 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
LABEL_15:
    *v11 = &_swiftEmptyArrayStorage;
    v14 = v11 + *(v8 + 20);
    sub_5BCD4();
    return sub_BED8;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_BF1C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_15;
  }

  sub_C518(v7, v11, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
  return sub_BED8;
}

uint64_t sub_BF1C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.kvlistValue.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v6 = &v10 - v5;
  sub_A024(v2, &v10 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_60C4(v6, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_C518(v6, a1, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
    }

    sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  *a1 = &_swiftEmptyArrayStorage;
  v9 = a1 + *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0) + 20);
  return sub_5BCD4();
}

uint64_t sub_C0F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v6 = &v10 - v5;
  sub_A024(a1, &v10 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    sub_60C4(v6, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      return sub_C518(v6, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
    }

    sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  *a2 = &_swiftEmptyArrayStorage;
  v9 = a2 + *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0) + 20);
  return sub_5BCD4();
}

uint64_t sub_C2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v13 = &v16 - v12;
  sub_C944(a1, &v16 - v12, a6);
  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  sub_C518(v13, a2, a7);
  v14 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v14 - 8) + 56))(a2, 0, 1, v14);
}

uint64_t sub_C3E0(uint64_t a1, uint64_t (*a2)(void))
{
  sub_60C4(v2, &qword_78100, &unk_5EFD0);
  sub_C518(a1, v2, a2);
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

uint64_t sub_C4B0@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1(0) + 20);
  return sub_5BCD4();
}

uint64_t sub_C518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void (*Opentelemetry_Proto_Common_V1_AnyValue.kvlistValue.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0);
  v9 = *(*(v8 - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v4[2] = malloc(*(*(v8 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  v4[3] = v10;
  sub_A024(v1, v7, &qword_78100, &unk_5EFD0);
  v12 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v4[4] = v12;
  v13 = *(v12 - 8);
  v4[5] = v13;
  if ((*(v13 + 48))(v7, 1, v12) == 1)
  {
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
LABEL_15:
    *v11 = &_swiftEmptyArrayStorage;
    v14 = v11 + *(v8 + 20);
    sub_5BCD4();
    return sub_C7A8;
  }

  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_BF1C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_15;
  }

  sub_C518(v7, v11, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
  return sub_C7A8;
}

void sub_C7EC(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = (*a1)[2];
  v11 = (*a1)[3];
  v13 = **a1;
  v12 = (*a1)[1];
  if (a2)
  {
    sub_C944((*a1)[3], v10, a5);
    sub_60C4(v13, &qword_78100, &unk_5EFD0);
    sub_C518(v10, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
    sub_BF1C(v11, a6);
  }

  else
  {
    sub_60C4(**a1, &qword_78100, &unk_5EFD0);
    sub_C518(v11, v13, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13, 0, 1, v8);
  }

  free(v11);
  free(v10);
  free(v12);

  free(v7);
}

uint64_t sub_C944(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.bytesValue.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v3 = (&v7 - v2);
  sub_A024(v0, &v7 - v2, &qword_78100, &unk_5EFD0);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v4 - 8) + 48))(v3, 1, v4) == 1)
  {
    sub_60C4(v3, &qword_78100, &unk_5EFD0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      result = *v3;
      v6 = v3[1];
      return result;
    }

    sub_BF1C(v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  }

  return 0;
}

uint64_t sub_CAE0@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_709D0();
  v6 = (&v10 - v5);
  sub_A024(a1, &v10 - v5, &qword_78100, &unk_5EFD0);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7) == 1)
  {
    result = sub_60C4(v6, &qword_78100, &unk_5EFD0);
LABEL_6:
    v9 = xmmword_5EFA0;
    goto LABEL_7;
  }

  result = swift_getEnumCaseMultiPayload();
  if (result != 6)
  {
    result = sub_BF1C(v6, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_6;
  }

  v9 = *v6;
LABEL_7:
  *a2 = v9;
  return result;
}

uint64_t sub_CC28(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  sub_D038(*a1, v4);
  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  *a2 = v3;
  a2[1] = v4;
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a2, 0, 1, v5);
}

uint64_t sub_CCE4(uint64_t a1, uint64_t a2)
{
  sub_60C4(v2, &qword_78100, &unk_5EFD0);
  *v2 = a1;
  v2[1] = a2;
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(v2, 0, 1, v5);
}

void (*Opentelemetry_Proto_Common_V1_AnyValue.bytesValue.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  v2 = v1;
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 16) = v2;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 24) = v7;
  sub_A024(v2, v7, &qword_78100, &unk_5EFD0);
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  *(v5 + 32) = v9;
  v10 = *(v9 - 8);
  *(v5 + 40) = v10;
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
LABEL_12:
    v11 = xmmword_5EFA0;
    goto LABEL_13;
  }

  if (swift_getEnumCaseMultiPayload() != 6)
  {
    sub_BF1C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    goto LABEL_12;
  }

  v11 = *v8;
LABEL_13:
  *v5 = v11;
  return sub_CF24;
}

void sub_CF24(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  v8 = (*a1)[2];
  v7 = (*a1)[3];
  if (a2)
  {
    sub_D038(**a1, v3);
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
    sub_D08C(*v2, v2[1]);
  }

  else
  {
    sub_60C4((*a1)[2], &qword_78100, &unk_5EFD0);
    *v8 = v4;
    v8[1] = v3;
    swift_storeEnumTagMultiPayload();
    (*(v6 + 56))(v8, 0, 1, v5);
  }

  free(v7);

  free(v2);
}

uint64_t sub_D038(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_D08C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_D1D8(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_5BCE4();
  sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = a1 + *(type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0) + 20);
  return sub_5BCD4();
}

uint64_t Opentelemetry_Proto_Common_V1_ArrayValue.values.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_D380@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_D41C(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.key.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.key.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.value.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  v4 = *(*(v3 - 8) + 64);
  off_709D0(v3 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  sub_A024(v1 + *(v7 + 24), v6, &qword_78110, &qword_61E70);
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_C518(v6, a1, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  v10 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  v11 = a1 + *(v8 + 20);
  sub_5BCD4();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_78110, &qword_61E70);
  }

  return result;
}

uint64_t sub_D7A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  v5 = *(*(v4 - 8) + 64);
  off_709D0(v4 - 8);
  v7 = &v14 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  sub_A024(a1 + *(v8 + 24), v7, &qword_78110, &qword_61E70);
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_C518(v7, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  v11 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  v12 = a2 + *(v9 + 20);
  sub_5BCD4();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_60C4(v7, &qword_78110, &qword_61E70);
  }

  return result;
}

uint64_t sub_D944(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_709D0(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_C944(a1, v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  v9 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0) + 24);
  sub_60C4(a2 + v9, &qword_78110, &qword_61E70);
  sub_C518(v8, a2 + v9, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.value.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0) + 24);
  sub_60C4(v1 + v3, &qword_78110, &qword_61E70);
  sub_C518(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Common_V1_KeyValue.value.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(v5);
  }

  v7 = v6;
  v4[1] = v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v4[2] = v8;
  v9 = *(v8 - 8);
  v10 = v9;
  v4[3] = v9;
  v11 = *(v9 + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[4] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v4[4] = malloc(*(v9 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v4[5] = v12;
  v14 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0) + 24);
  *(v4 + 12) = v14;
  sub_A024(v1 + v14, v7, &qword_78110, &qword_61E70);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    v16 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
    v17 = v13 + *(v8 + 20);
    sub_5BCD4();
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_78110, &qword_61E70);
    }
  }

  else
  {
    sub_C518(v7, v13, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  return sub_DD80;
}

void sub_DD80(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_C944((*a1)[5], v4, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    sub_60C4(v9 + v3, &qword_78110, &qword_61E70);
    sub_C518(v4, v9 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_BF1C(v5, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  else
  {
    sub_60C4(v9 + v3, &qword_78110, &qword_61E70);
    sub_C518(v5, v9 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Opentelemetry_Proto_Common_V1_KeyValue.hasValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  v2 = *(*(v1 - 8) + 64);
  off_709D0(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  sub_A024(v0 + *(v5 + 24), v4, &qword_78110, &qword_61E70);
  v6 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_60C4(v4, &qword_78110, &qword_61E70);
  return v7;
}

Swift::Void __swiftcall Opentelemetry_Proto_Common_V1_KeyValue.clearValue()()
{
  v1 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0) + 24);
  sub_60C4(v0 + v1, &qword_78110, &qword_61E70);
  v2 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v3 = &a1[*(v2 + 20)];
  sub_5BCD4();
  v4 = *(v2 + 24);
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a1[v4], 1, 1, v5);
}

uint64_t sub_E188@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.version.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.version.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.attributes.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0) + 32);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0) + 32);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = _swiftEmptyArrayStorage;
  *(a1 + 40) = 0;
  v1 = a1 + *(type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0) + 32);
  return sub_5BCD4();
}

uint64_t sub_E4E8()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_78DB8);
  __swift_project_value_buffer(v0, qword_78DB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_5EEC0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "string_value";
  *(v4 + 8) = 12;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.standard(_:);
  v6 = sub_5C024();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "BOOL_value";
  *(v8 + 8) = 10;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "int_value";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "double_value";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "array_value";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "kvlist_value";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "bytes_value";
  *(v18 + 1) = 11;
  v18[16] = 2;
  v7();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_5BD64();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          sub_E988(a1, v5);
          break;
        case 2:
          sub_EB7C(a1, v5);
          break;
        case 3:
          sub_ED50(a1, v5);
          break;
      }
    }

    else if (result > 5)
    {
      if (result == 6)
      {
        sub_F6C4(v5, a1, a2, a3);
      }

      else if (result == 7)
      {
        sub_FC80(a1, v5);
      }
    }

    else if (result == 4)
    {
      sub_EF2C(a1, v5);
    }

    else
    {
      sub_F108(v5, a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_E988(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v5 = *(*(v4 - 8) + 64);
  off_709D0(v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 0;
  result = sub_5BE44();
  if (v2)
  {
  }

  if (v16)
  {
    v17 = v16;
    v14 = v15;
    sub_A024(a2, v7, &qword_78100, &unk_5EFD0);
    v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
    if (v11 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(a2, &qword_78100, &unk_5EFD0);
    v12 = v17;
    *a2 = v14;
    a2[1] = v12;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_EB7C(uint64_t a1, _BYTE *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v5 = *(*(v4 - 8) + 64);
  off_709D0(v4 - 8);
  v7 = &v14 - v6;
  v16 = 2;
  result = sub_5BD84();
  if (!v2)
  {
    v9 = v16;
    if (v16 != 2)
    {
      v15 = 0;
      sub_A024(a2, v7, &qword_78100, &unk_5EFD0);
      v10 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
      v11 = *(v10 - 8);
      v12 = (*(v11 + 48))(v7, 1, v10);
      sub_60C4(v7, &qword_78100, &unk_5EFD0);
      if (v12 != 1)
      {
        v13 = v15;
        result = sub_5BD74();
        if (v13)
        {
          return result;
        }

        v15 = 0;
      }

      sub_60C4(a2, &qword_78100, &unk_5EFD0);
      *a2 = v9 & 1;
      swift_storeEnumTagMultiPayload();
      return (*(v11 + 56))(a2, 0, 1, v10);
    }
  }

  return result;
}

uint64_t sub_ED50(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v5 = *(*(v4 - 8) + 64);
  off_709D0(v4 - 8);
  v7 = &v13 - v6;
  v15 = 0;
  v16 = 1;
  result = sub_5BDD4();
  if (!v2 && (v16 & 1) == 0)
  {
    v17 = 0;
    v14 = v15;
    sub_A024(a2, v7, &qword_78100, &unk_5EFD0);
    v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
    v10 = *(v9 - 8);
    v11 = (*(v10 + 48))(v7, 1, v9);
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
    if (v11 != 1)
    {
      v12 = v17;
      result = sub_5BD74();
      if (v12)
      {
        return result;
      }

      v17 = 0;
    }

    sub_60C4(a2, &qword_78100, &unk_5EFD0);
    *a2 = v14;
    swift_storeEnumTagMultiPayload();
    return (*(v10 + 56))(a2, 0, 1, v9);
  }

  return result;
}

uint64_t sub_EF2C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v5 = *(*(v4 - 8) + 64);
  off_709D0(v4 - 8);
  v7 = &v14 - v6;
  v16 = 0;
  v17 = 1;
  result = sub_5BE14();
  if (!v2 && (v17 & 1) == 0)
  {
    v15 = 0;
    v9 = v16;
    sub_A024(a2, v7, &qword_78100, &unk_5EFD0);
    v10 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
    v11 = *(v10 - 8);
    v12 = (*(v11 + 48))(v7, 1, v10);
    sub_60C4(v7, &qword_78100, &unk_5EFD0);
    if (v12 != 1)
    {
      v13 = v15;
      result = sub_5BD74();
      if (v13)
      {
        return result;
      }

      v15 = 0;
    }

    sub_60C4(a2, &qword_78100, &unk_5EFD0);
    *a2 = v9;
    swift_storeEnumTagMultiPayload();
    return (*(v11 + 56))(a2, 0, 1, v10);
  }

  return result;
}

uint64_t sub_F108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = off_709D0(v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v12 = *(*(v11 - 8) + 64);
  off_709D0(v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = off_709D0(v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78220, &qword_5F8B8);
  v24 = *(*(v23 - 8) + 64);
  v25 = off_709D0(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_A024(a1, v14, &qword_78100, &unk_5EFD0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_60C4(v14, &qword_78100, &unk_5EFD0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_C518(v14, v22, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    sub_C518(v22, v20, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_60C4(v28, &qword_78220, &qword_5F8B8);
      v35 = v44;
      sub_C518(v20, v44, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
      sub_C518(v35, v28, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_BF1C(v20, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_153A8(&qword_78168, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
  v37 = v47;
  sub_5BEB4();
  if (v37)
  {
    return sub_60C4(v28, &qword_78220, &qword_5F8B8);
  }

  sub_A024(v28, v36, &qword_78220, &qword_5F8B8);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_60C4(v28, &qword_78220, &qword_5F8B8);
    return sub_60C4(v36, &qword_78220, &qword_5F8B8);
  }

  else
  {
    v39 = v43;
    sub_C518(v36, v43, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
    if (v32 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v28, &qword_78220, &qword_5F8B8);
    v40 = v42;
    sub_60C4(v42, &qword_78100, &unk_5EFD0);
    sub_C518(v39, v40, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_F6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = off_709D0(v5);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v8);
  v44 = &v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v12 = *(*(v11 - 8) + 64);
  off_709D0(v11 - 8);
  v14 = &v41 - v13;
  v15 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = off_709D0(v15);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v18);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78228, &qword_5F8C0);
  v24 = *(*(v23 - 8) + 64);
  v25 = off_709D0(v23 - 8);
  v46 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v25);
  v28 = &v41 - v27;
  v45 = v6;
  v29 = *(v6 + 56);
  v48 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v41 - v27, 1, 1, v30);
  v42 = a1;
  sub_A024(a1, v14, &qword_78100, &unk_5EFD0);
  v41 = v16;
  v32 = (*(v16 + 48))(v14, 1, v15);
  if (v32 == 1)
  {
    sub_60C4(v14, &qword_78100, &unk_5EFD0);
    v33 = v48;
    v34 = v15;
  }

  else
  {
    sub_C518(v14, v22, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    sub_C518(v22, v20, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_60C4(v28, &qword_78228, &qword_5F8C0);
      v35 = v44;
      sub_C518(v20, v44, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
      sub_C518(v35, v28, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
      v33 = v48;
      v31(v28, 0, 1, v48);
    }

    else
    {
      sub_BF1C(v20, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      v33 = v48;
    }
  }

  v36 = v46;
  sub_153A8(&qword_78180, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
  v37 = v47;
  sub_5BEB4();
  if (v37)
  {
    return sub_60C4(v28, &qword_78228, &qword_5F8C0);
  }

  sub_A024(v28, v36, &qword_78228, &qword_5F8C0);
  if ((*(v45 + 48))(v36, 1, v33) == 1)
  {
    sub_60C4(v28, &qword_78228, &qword_5F8C0);
    return sub_60C4(v36, &qword_78228, &qword_5F8C0);
  }

  else
  {
    v39 = v43;
    sub_C518(v36, v43, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
    if (v32 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v28, &qword_78228, &qword_5F8C0);
    v40 = v42;
    sub_60C4(v42, &qword_78100, &unk_5EFD0);
    sub_C518(v39, v40, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
    swift_storeEnumTagMultiPayload();
    return (*(v41 + 56))(v40, 0, 1, v34);
  }
}

uint64_t sub_FC80(uint64_t a1, __int128 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v5 = *(*(v4 - 8) + 64);
  off_709D0(v4 - 8);
  v7 = &v14 - v6;
  v16 = xmmword_5EFB0;
  sub_5BDB4();
  v8 = v16;
  if (v2 || *(&v16 + 1) >> 60 == 15)
  {
    return sub_16578(v16, *(&v16 + 1));
  }

  sub_A024(a2, v7, &qword_78100, &unk_5EFD0);
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v15 = *(v9 - 8);
  v10 = *(v15 + 48);
  v17 = v9;
  v11 = v10(v7, 1);
  sub_D038(v8, *(&v8 + 1));
  sub_60C4(v7, &qword_78100, &unk_5EFD0);
  if (v11 != 1)
  {
    sub_5BD74();
  }

  sub_16578(v8, *(&v8 + 1));
  sub_60C4(a2, &qword_78100, &unk_5EFD0);
  *a2 = v8;
  v13 = v17;
  swift_storeEnumTagMultiPayload();
  return (*(v15 + 56))(a2, 0, 1, v13);
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v9 = *(*(v8 - 8) + 64);
  off_709D0(v8 - 8);
  v11 = &v16 - v10;
  sub_A024(v3, &v16 - v10, &qword_78100, &unk_5EFD0);
  v12 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v12 - 8) + 48))(v11, 1, v12) != 1)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          result = sub_10294(v3);
          if (v4)
          {
            return result;
          }
        }

        else
        {
          result = sub_103F8(v3);
          if (v4)
          {
            return result;
          }
        }
      }

      else
      {
        sub_BF1C(v11, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        result = sub_10120(v3);
        if (v4)
        {
          return result;
        }
      }

      goto LABEL_21;
    }

    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        sub_BF1C(v11, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        result = sub_10B30(v3);
        if (v4)
        {
          return result;
        }

        goto LABEL_21;
      }

      sub_108F8(v3, a1, a2, a3);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        result = sub_1055C(v3);
        if (v4)
        {
          return result;
        }

        goto LABEL_21;
      }

      sub_106C0(v3, a1, a2, a3);
    }

    result = sub_BF1C(v11, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    if (v4)
    {
      return result;
    }
  }

LABEL_21:
  v15 = v3 + *(type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0) + 20);
  return sub_5BCC4();
}

uint64_t sub_10120(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v3 = *(*(v2 - 8) + 64);
  off_709D0(v2 - 8);
  v5 = (&v10 - v4);
  sub_A024(a1, &v10 - v4, &qword_78100, &unk_5EFD0);
  v6 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_60C4(v5, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    v7 = *v5;
    v8 = v5[1];
    sub_5BFB4();
  }

  result = sub_BF1C(v5, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_10294(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v3 = *(*(v2 - 8) + 64);
  off_709D0(v2 - 8);
  v5 = &v9 - v4;
  sub_A024(a1, &v9 - v4, &qword_78100, &unk_5EFD0);
  v6 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_60C4(v5, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *v5;
    return sub_5BF44();
  }

  result = sub_BF1C(v5, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_103F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v3 = *(*(v2 - 8) + 64);
  off_709D0(v2 - 8);
  v5 = (&v9 - v4);
  sub_A024(a1, &v9 - v4, &qword_78100, &unk_5EFD0);
  v6 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_60C4(v5, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    v7 = *v5;
    return sub_5BF84();
  }

  result = sub_BF1C(v5, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_1055C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v3 = *(*(v2 - 8) + 64);
  off_709D0(v2 - 8);
  v5 = (&v9 - v4);
  sub_A024(a1, &v9 - v4, &qword_78100, &unk_5EFD0);
  v6 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_60C4(v5, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    v7 = *v5;
    return sub_5BF94();
  }

  result = sub_BF1C(v5, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_106C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v6 = *(*(v5 - 8) + 64);
  off_709D0(v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0);
  v10 = *(*(v9 - 8) + 64);
  off_709D0(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A024(a1, v8, &qword_78100, &unk_5EFD0);
  v13 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_C518(v8, v12, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
    sub_153A8(&qword_78168, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
    sub_5C004();
    return sub_BF1C(v12, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
  }

  result = sub_BF1C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_108F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v6 = *(*(v5 - 8) + 64);
  off_709D0(v5 - 8);
  v8 = v15 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0);
  v10 = *(*(v9 - 8) + 64);
  off_709D0(v9);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_A024(a1, v8, &qword_78100, &unk_5EFD0);
  v13 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v13 - 8) + 48))(v8, 1, v13) == 1)
  {
    sub_60C4(v8, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_C518(v8, v12, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
    sub_153A8(&qword_78180, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
    sub_5C004();
    return sub_BF1C(v12, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
  }

  result = sub_BF1C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_10B30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v3 = *(*(v2 - 8) + 64);
  off_709D0(v2 - 8);
  v5 = (&v10 - v4);
  sub_A024(a1, &v10 - v4, &qword_78100, &unk_5EFD0);
  v6 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  if ((*(*(v6 - 8) + 48))(v5, 1, v6) == 1)
  {
    sub_60C4(v5, &qword_78100, &unk_5EFD0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    v8 = *v5;
    v7 = v5[1];
    sub_5BF74();
    return sub_D08C(v8, v7);
  }

  result = sub_BF1C(v5, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  __break(1u);
  return result;
}

uint64_t sub_10CFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  return sub_5BCD4();
}

uint64_t (*sub_10D94(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_10DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_153A8(&qword_781F8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_10E90(uint64_t a1)
{
  v2 = sub_153A8(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_10F00()
{
  sub_153A8(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);

  return sub_5BF14();
}

uint64_t Opentelemetry_Proto_Common_V1_ArrayValue.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0), sub_153A8(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue), result = sub_5BFD4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0) + 20);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_11188@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 20);
  return sub_5BCD4();
}

uint64_t sub_11200(uint64_t a1, uint64_t a2)
{
  v4 = sub_153A8(&qword_781F0, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_112A0(uint64_t a1)
{
  v2 = sub_153A8(&qword_78168, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1130C()
{
  sub_153A8(&qword_78168, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);

  return sub_5BF14();
}

uint64_t sub_113D4(uint64_t a1, uint64_t *a2)
{
  v3 = sub_5C044();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v5 = *(*v4 + 72);
  v6 = (*(*v4 + 80) + 32) & ~*(*v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_5EBD0;
  v8 = v7 + v6 + v4[14];
  *(v7 + v6) = 1;
  *v8 = "values";
  *(v8 + 8) = 6;
  *(v8 + 16) = 2;
  v9 = enum case for _NameMap.NameDescription.same(_:);
  v10 = sub_5C024();
  (*(*(v10 - 8) + 104))(v8, v9, v10);
  return sub_5C034();
}

uint64_t sub_115E0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  while (1)
  {
    result = sub_5BD64();
    if (v6 || (v11 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_153A8(a5, a6);
      sub_5BE84();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValueList.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0), sub_153A8(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue), result = sub_5BFD4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0) + 20);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_11834(uint64_t a1, uint64_t a2)
{
  v4 = sub_153A8(&qword_781E8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_118D4(uint64_t a1)
{
  v2 = sub_153A8(&qword_78180, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_11940()
{
  sub_153A8(&qword_78180, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);

  return sub_5BF14();
}

uint64_t sub_119D4(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_5BCE4();
  sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_11AA8()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_78E18);
  __swift_project_value_buffer(v0, qword_78E18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        sub_5BE54();
      }

      else if (result == 2)
      {
        v3 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0) + 24);
        type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
        sub_153A8(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        sub_5BEB4();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_KeyValue.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_5BFB4(), !v4))
  {
    result = sub_11E6C(v3, a1, a2, a3);
    if (!v4)
    {
      v12 = v3 + *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0) + 20);
      return sub_5BCC4();
    }
  }

  return result;
}

uint64_t sub_11E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  v6 = *(*(v5 - 8) + 64);
  off_709D0(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  off_709D0(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  sub_A024(a1 + *(v14 + 24), v8, &qword_78110, &qword_61E70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_60C4(v8, &qword_78110, &qword_61E70);
  }

  sub_C518(v8, v13, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_153A8(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_5C004();
  return sub_BF1C(v13, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
}

uint64_t sub_120D4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = &a2[*(a1 + 20)];
  sub_5BCD4();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_12178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_121EC(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_12290(uint64_t a1, uint64_t a2)
{
  v4 = sub_153A8(&qword_781E0, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_12330(uint64_t a1)
{
  v2 = sub_153A8(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_1239C()
{
  sub_153A8(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);

  return sub_5BF14();
}

uint64_t sub_12444()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_78E38);
  __swift_project_value_buffer(v0, qword_78E38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EED0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "version";
  *(v10 + 8) = 7;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "attributes";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "dropped_attributes_count";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t sub_126B8(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = sub_5C044();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t sub_12730@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_5C044();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
          sub_153A8(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
          sub_5BE84();
        }

        else if (result == 4)
        {
          sub_5BE64();
        }
      }

      else if (result == 1 || result == 2)
      {
        sub_5BE54();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_InstrumentationScope.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4 || (result = sub_5BFB4(), !v1))
  {
    v6 = v0[3];
    v7 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v7 = v0[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v7 || (result = sub_5BFB4(), !v1))
    {
      if (*(v0[4] + 16))
      {
        type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
        sub_153A8(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        result = sub_5BFD4();
        if (v1)
        {
          return result;
        }

        if (!*(v0 + 10))
        {
          goto LABEL_15;
        }
      }

      else if (!*(v0 + 10))
      {
LABEL_15:
        v8 = v0 + *(type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0) + 32);
        return sub_5BCC4();
      }

      result = sub_5BFC4();
      if (v1)
      {
        return result;
      }

      goto LABEL_15;
    }
  }

  return result;
}

Swift::Int sub_12ABC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_5C454();
  a1(0);
  sub_153A8(a2, a3);
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_12B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = &_swiftEmptyArrayStorage;
  *(a2 + 40) = 0;
  v2 = a2 + *(a1 + 32);
  return sub_5BCD4();
}

uint64_t sub_12B9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_12C10(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_12C84(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 32);
  return result;
}

uint64_t sub_12CD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_153A8(&qword_781D8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_12D78@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_5C044();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_12E14(uint64_t a1)
{
  v2 = sub_153A8(&qword_781A8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);

  return Message.debugDescription.getter(a1, v2);
}

Swift::Int sub_12E80()
{
  sub_5C454();
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_12ED8()
{
  sub_153A8(&qword_781A8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);

  return sub_5BF14();
}

Swift::Int sub_12F54()
{
  sub_5C454();
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_12FAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  (off_709D0)();
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (off_709D0)();
  v11 = &v59 - v10;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78218, &qword_5F8B0);
  v12 = (*(*(v67 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (off_709D0)();
  v14 = &v59 - v13;
  v71 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v75 = *(v71 - 8);
  v15 = *(v75 + 64);
  (off_709D0)();
  v73 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (off_709D0)();
  v19 = &v59 - v18;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78210, &qword_5F8A8);
  v20 = (*(*(v74 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  (off_709D0)();
  v72 = &v59 - v21;
  v76 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v22 = *(*(v76 - 8) + 64);
  v23 = (off_709D0)();
  v25 = (&v59 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_709D0(v23);
  v28 = (&v59 - v27);
  v29 = *(a1 + 16);
  if (v29 != *(a2 + 16))
  {
LABEL_31:
    v58 = 0;
    return v58 & 1;
  }

  if (!v29 || a1 == a2)
  {
    v58 = 1;
    return v58 & 1;
  }

  v30 = *(a1 + 16);
  v60 = v8;
  v61 = v11;
  v65 = v4;
  v31 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v32 = a1 + v31;
  v33 = a2 + v31;
  v68 = (v75 + 48);
  v69 = &v59 - v27;
  v63 = v14;
  v64 = (v5 + 48);
  v66 = *(v26 + 72);
  v34 = v71;
  v35 = v72;
  v36 = v30;
  v62 = v19;
  v70 = v25;
  while (1)
  {
    result = sub_C944(v32, v28, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
    if (!v36)
    {
      break;
    }

    v75 = v36;
    sub_C944(v33, v25, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
    v38 = *v28 == *v25 && v28[1] == v25[1];
    if (!v38 && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_30;
    }

    v39 = *(v76 + 24);
    v40 = *(v74 + 48);
    sub_A024(v28 + v39, v35, &qword_78110, &qword_61E70);
    sub_A024(v25 + v39, v35 + v40, &qword_78110, &qword_61E70);
    v41 = *v68;
    if ((*v68)(v35, 1, v34) == 1)
    {
      v42 = v41(v35 + v40, 1, v34);
      v25 = v70;
      if (v42 != 1)
      {
        goto LABEL_26;
      }

      sub_60C4(v35, &qword_78110, &qword_61E70);
      v28 = v69;
    }

    else
    {
      sub_A024(v35, v19, &qword_78110, &qword_61E70);
      if (v41(v35 + v40, 1, v34) == 1)
      {
        sub_BF1C(v19, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        v25 = v70;
LABEL_26:
        sub_60C4(v35, &qword_78210, &qword_5F8A8);
        v28 = v69;
        goto LABEL_30;
      }

      v43 = v73;
      sub_C518(v35 + v40, v73, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
      v44 = *(v67 + 48);
      v45 = v63;
      sub_A024(v19, v63, &qword_78100, &unk_5EFD0);
      sub_A024(v43, v45 + v44, &qword_78100, &unk_5EFD0);
      v46 = v65;
      v47 = *v64;
      if ((*v64)(v45, 1, v65) == 1)
      {
        if (v47(v45 + v44, 1, v46) != 1)
        {
          goto LABEL_28;
        }

        sub_60C4(v45, &qword_78100, &unk_5EFD0);
      }

      else
      {
        v48 = v61;
        sub_A024(v45, v61, &qword_78100, &unk_5EFD0);
        if (v47(v45 + v44, 1, v46) == 1)
        {
          sub_BF1C(v48, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
LABEL_28:
          sub_60C4(v45, &qword_78218, &qword_5F8B0);
LABEL_29:
          sub_BF1C(v73, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
          sub_BF1C(v62, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
          sub_60C4(v72, &qword_78110, &qword_61E70);
          v28 = v69;
          v25 = v70;
LABEL_30:
          sub_BF1C(v25, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
          sub_BF1C(v28, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
          goto LABEL_31;
        }

        v49 = v60;
        sub_C518(v45 + v44, v60, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        v50 = _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_AnyValueV06OneOf_H0O2eeoiySbAE_AEtFZ_0(v48, v49);
        sub_BF1C(v49, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        sub_BF1C(v48, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        sub_60C4(v45, &qword_78100, &unk_5EFD0);
        if ((v50 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      v51 = v71;
      v52 = *(v71 + 20);
      sub_5BCE4();
      sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage);
      v53 = v62;
      v54 = v73;
      v55 = sub_5C114();
      v56 = v54;
      v34 = v51;
      sub_BF1C(v56, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
      v19 = v53;
      sub_BF1C(v53, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
      v35 = v72;
      sub_60C4(v72, &qword_78110, &qword_61E70);
      v28 = v69;
      v25 = v70;
      if ((v55 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v57 = *(v76 + 20);
    sub_5BCE4();
    sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage);
    v58 = sub_5C114();
    sub_BF1C(v25, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
    sub_BF1C(v28, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
    if (v58)
    {
      v36 = v75 - 1;
      v33 += v66;
      v32 += v66;
      if (v75 != 1)
      {
        continue;
      }
    }

    return v58 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1386C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_709D0(v4);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v9 = *(*(v8 - 8) + 64);
  off_709D0(v8 - 8);
  v11 = &v41 - v10;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78218, &qword_5F8B0);
  v12 = *(*(v49 - 8) + 64);
  off_709D0(v49);
  v14 = &v41 - v13;
  v48 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v15 = *(*(v48 - 8) + 64);
  v16 = off_709D0(v48);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_709D0(v16);
  v21 = &v41 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_19:
    v38 = 0;
    return v38 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v38 = 1;
    return v38 & 1;
  }

  v43 = &v41 - v20;
  v44 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v26 = (v5 + 48);
  v46 = *(v19 + 72);
  v47 = v4;
  v27 = &qword_78100;
  v42 = v18;
  while (1)
  {
    result = sub_C944(v24, v21, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    if (!v22)
    {
      break;
    }

    v50 = v22;
    sub_C944(v25, v18, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    v29 = *(v49 + 48);
    sub_A024(v21, v14, v27, &unk_5EFD0);
    sub_A024(v18, &v14[v29], v27, &unk_5EFD0);
    v30 = *v26;
    v31 = v27;
    v32 = v47;
    if ((*v26)(v14, 1, v47) == 1)
    {
      if (v30(&v14[v29], 1, v32) != 1)
      {
        sub_BF1C(v18, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        v40 = v21;
        v39 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue;
        goto LABEL_17;
      }

      v27 = v31;
      sub_60C4(v14, v31, &unk_5EFD0);
    }

    else
    {
      v33 = v26;
      v34 = v44;
      sub_A024(v14, v44, v31, &unk_5EFD0);
      if (v30(&v14[v29], 1, v32) == 1)
      {
        sub_BF1C(v42, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        sub_BF1C(v43, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        v39 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value;
        v40 = v34;
LABEL_17:
        sub_BF1C(v40, v39);
        sub_60C4(v14, &qword_78218, &qword_5F8B0);
        goto LABEL_19;
      }

      v35 = v45;
      sub_C518(&v14[v29], v45, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      v36 = _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_AnyValueV06OneOf_H0O2eeoiySbAE_AEtFZ_0(v34, v35);
      sub_BF1C(v35, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      sub_BF1C(v34, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      sub_60C4(v14, v31, &unk_5EFD0);
      v26 = v33;
      v18 = v42;
      v21 = v43;
      v27 = v31;
      if ((v36 & 1) == 0)
      {
        sub_BF1C(v42, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        sub_BF1C(v21, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        goto LABEL_19;
      }
    }

    v37 = *(v48 + 20);
    sub_5BCE4();
    sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage);
    v38 = sub_5C114();
    sub_BF1C(v18, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    sub_BF1C(v21, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    if (v38)
    {
      v22 = v50 - 1;
      v25 += v46;
      v24 += v46;
      if (v50 != 1)
      {
        continue;
      }
    }

    return v38 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_13DF0@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_5B944();
    if (v10)
    {
      v11 = sub_5B964();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_5B954();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_5B944();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_5B964();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_5B954();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_14020(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_141B0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_D08C(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_13DF0(v13, a3, a4, &v12);
  v10 = v4;
  sub_D08C(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_141B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_5B944();
  v11 = result;
  if (result)
  {
    result = sub_5B964();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_5B954();
  sub_13DF0(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_14268(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_D038(a3, a4);
          return sub_14020(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t _s16TelemetrySupport50Opentelemetry_Proto_Common_V1_InstrumentationScopeV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_5C3A4() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_5C3A4() & 1) == 0 || (sub_12FAC(*(a1 + 32), *(a2 + 32)) & 1) == 0 || *(a1 + 40) != *(a2 + 40))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0) + 32);
  sub_5BCE4();
  sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_KeyValueV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_709D0(v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  v10 = *(*(v9 - 8) + 64);
  off_709D0(v9 - 8);
  v12 = &v25 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78210, &qword_5F8A8);
  v14 = *(*(v13 - 8) + 64);
  off_709D0(v13);
  v16 = &v25 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v25 = v8;
  v26 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v17 = *(v26 + 24);
  v18 = *(v13 + 48);
  sub_A024(a1 + v17, v16, &qword_78110, &qword_61E70);
  sub_A024(a2 + v17, &v16[v18], &qword_78110, &qword_61E70);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_60C4(v16, &qword_78110, &qword_61E70);
LABEL_12:
      v23 = *(v26 + 20);
      sub_5BCE4();
      sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage);
      v20 = sub_5C114();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_A024(v16, v12, &qword_78110, &qword_61E70);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_BF1C(v12, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
LABEL_9:
    sub_60C4(v16, &qword_78210, &qword_5F8A8);
    goto LABEL_10;
  }

  v21 = v25;
  sub_C518(&v16[v18], v25, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  v22 = _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_AnyValueV2eeoiySbAC_ACtFZ_0(v12, v21);
  sub_BF1C(v21, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_BF1C(v12, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_60C4(v16, &qword_78110, &qword_61E70);
  if (v22)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_AnyValueV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_709D0(v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v10 = *(*(v9 - 8) + 64);
  off_709D0(v9 - 8);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78218, &qword_5F8B0);
  v14 = *(*(v13 - 8) + 64);
  v15 = off_709D0(v13 - 8);
  v17 = &v24 - v16;
  v18 = *(v15 + 56);
  sub_A024(a1, &v24 - v16, &qword_78100, &unk_5EFD0);
  sub_A024(a2, &v17[v18], &qword_78100, &unk_5EFD0);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) == 1)
  {
    if (v19(&v17[v18], 1, v4) == 1)
    {
      sub_60C4(v17, &qword_78100, &unk_5EFD0);
LABEL_9:
      v22 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0) + 20);
      sub_5BCE4();
      sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage);
      v20 = sub_5C114();
      return v20 & 1;
    }

    goto LABEL_6;
  }

  sub_A024(v17, v12, &qword_78100, &unk_5EFD0);
  if (v19(&v17[v18], 1, v4) == 1)
  {
    sub_BF1C(v12, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
LABEL_6:
    sub_60C4(v17, &qword_78218, &qword_5F8B0);
    goto LABEL_7;
  }

  sub_C518(&v17[v18], v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  v21 = _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_AnyValueV06OneOf_H0O2eeoiySbAE_AEtFZ_0(v12, v8);
  sub_BF1C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  sub_BF1C(v12, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  sub_60C4(v17, &qword_78100, &unk_5EFD0);
  if (v21)
  {
    goto LABEL_9;
  }

LABEL_7:
  v20 = 0;
  return v20 & 1;
}

uint64_t _s16TelemetrySupport38Opentelemetry_Proto_Common_V1_AnyValueV06OneOf_H0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v61 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0);
  v3 = *(*(v61 - 8) + 64);
  off_709D0(v61);
  v63 = (&v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v60 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0);
  v5 = *(*(v60 - 8) + 64);
  off_709D0(v60);
  v62 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = off_709D0(v7);
  v11 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = off_709D0(v9);
  v65 = (&v59 - v13);
  v14 = off_709D0(v12);
  v64 = (&v59 - v15);
  v16 = off_709D0(v14);
  v18 = (&v59 - v17);
  v19 = off_709D0(v16);
  v21 = (&v59 - v20);
  v22 = off_709D0(v19);
  v24 = &v59 - v23;
  off_709D0(v22);
  v26 = (&v59 - v25);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78230, &qword_5F8C8);
  v28 = *(*(v27 - 8) + 64);
  v29 = off_709D0(v27 - 8);
  v31 = &v59 - v30;
  v32 = (&v59 + *(v29 + 56) - v30);
  sub_C944(a1, &v59 - v30, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  sub_C944(v66, v32, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload != 5)
      {
        sub_C944(v31, v11, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        v47 = *v11;
        v48 = v11[1];
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v50 = *v32;
          v49 = v32[1];
          v36 = sub_14268(v47, v48, v50, v49);
          sub_D08C(v50, v49);
          sub_D08C(v47, v48);
LABEL_29:
          sub_BF1C(v31, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
          return v36 & 1;
        }

        sub_D08C(v47, v48);
        goto LABEL_34;
      }

      v37 = v65;
      sub_C944(v31, v65, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v38 = v32;
        v39 = v63;
        sub_C518(v38, v63, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
        if (sub_12FAC(*v37, *v39))
        {
          v40 = *(v61 + 20);
          sub_5BCE4();
          sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage);
          if (sub_5C114())
          {
            v41 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList;
LABEL_26:
            v46 = v41;
            sub_BF1C(v39, v41);
            sub_BF1C(v37, v46);
LABEL_48:
            sub_BF1C(v31, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
            v36 = 1;
            return v36 & 1;
          }
        }

        v56 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList;
        goto LABEL_45;
      }

      v51 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList;
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_C944(v31, v18, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          v34 = *v18 == *v32;
          goto LABEL_19;
        }

        goto LABEL_34;
      }

      v37 = v64;
      sub_C944(v31, v64, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v44 = v32;
        v39 = v62;
        sub_C518(v44, v62, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
        if (sub_1386C(*v37, *v39))
        {
          v45 = *(v60 + 20);
          sub_5BCE4();
          sub_153A8(&qword_78108, &type metadata accessor for UnknownStorage);
          if (sub_5C114())
          {
            v41 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue;
            goto LABEL_26;
          }
        }

        v56 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue;
LABEL_45:
        v57 = v56;
        sub_BF1C(v39, v56);
        sub_BF1C(v37, v57);
        goto LABEL_46;
      }

      v51 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue;
    }

    sub_BF1C(v37, v51);
LABEL_34:
    sub_60C4(v31, &qword_78230, &qword_5F8C8);
LABEL_35:
    v36 = 0;
    return v36 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_C944(v31, v26, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    v43 = *v26;
    v42 = v26[1];
    if (!swift_getEnumCaseMultiPayload())
    {
      if (v43 == *v32 && v42 == v32[1])
      {
        v58 = v32[1];

        goto LABEL_48;
      }

      v54 = v32[1];
      v55 = sub_5C3A4();

      if (v55)
      {
        goto LABEL_48;
      }

LABEL_46:
      sub_BF1C(v31, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_C944(v31, v21, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v34 = *v21 == *v32;
LABEL_19:
      v36 = v34;
      goto LABEL_29;
    }

    goto LABEL_34;
  }

  sub_C944(v31, v24, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_34;
  }

  v35 = *v24 ^ *v32;
  sub_BF1C(v31, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue.OneOf_Value);
  v36 = v35 ^ 1;
  return v36 & 1;
}

uint64_t sub_15370(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_153A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_159A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_5BCE4();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_15AB4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78100, &unk_5EFD0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_5BCE4();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_15C40()
{
  result = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_15D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_16Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_17Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_15F58(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t))
{
  sub_15D48(319, a4, a5, a6);
  if (v6 <= 0x3F)
  {
    sub_5BCE4();
    if (v7 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_15FFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_5BCE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_16140(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_5BCE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_16270()
{
  sub_5BCE4();
  if (v0 <= 0x3F)
  {
    sub_15D48(319, &qword_781D0, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_16348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_5BCE4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_16408(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_164AC()
{
  sub_15D48(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_5BCE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_16578(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_D08C(a1, a2);
  }

  return a1;
}

uint64_t Counter.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Counter.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Counter.dimensions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Counter.unit.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Counter.unit.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Counter.startTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Counter() + 32);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Counter()
{
  result = qword_79E30;
  if (!qword_79E30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Counter.startTimeStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Counter() + 32);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Counter.lastUpdateTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Counter() + 36);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Counter.lastUpdateTimeStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Counter() + 36);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Counter.init(name:dimensions:unit:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, double a7@<D0>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 40) = a7;
  v8 = type metadata accessor for Counter();
  v9 = a6 + *(v8 + 32);
  sub_5B9A4();
  v10 = a6 + *(v8 + 36);
  return sub_5B9A4();
}

Swift::Void __swiftcall Counter.increment()()
{
  v1 = sub_5B9B4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  off_70A08();
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v0 + 40) = *(v0 + 40) + 1.0;
  sub_5B9A4();
  v6 = type metadata accessor for Counter();
  (*(v2 + 40))(v0 + *(v6 + 36), v5, v1);
}

Swift::Void __swiftcall Counter.increment(by:)(Swift::Double by)
{
  v3 = sub_5B9B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  off_70A08();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (by >= 0.0)
  {
    *(v1 + 40) = *(v1 + 40) + by;
    sub_5B9A4();
    v8 = type metadata accessor for Counter();
    (*(v4 + 40))(v1 + *(v8 + 36), v7, v3);
  }
}

uint64_t Counter.toOTLPData(serviceName:globalDimensions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v93 = a2;
  v92 = a1;
  v6 = sub_5BD24();
  v103 = *(v6 - 8);
  v104 = v6;
  v7 = *(v103 + 64);
  (off_70A08)();
  v102 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData(0);
  v9 = *(*(v100 - 8) + 64);
  (off_70A08)();
  v101 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) - 8);
  v11 = *(v99 + 64);
  v12 = (off_70A08)();
  v105 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70A08(v12);
  v108 = &v85 - v14;
  v15 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  v98 = *(v15 - 8);
  v16 = *(v98 + 64);
  off_70A08(v15 - 8);
  v107 = &v85 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v96 = *(v94 - 8);
  v18 = *(v96 + 64);
  off_70A08(v94);
  v20 = &v85 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0);
  v22 = *(*(v21 - 8) + 64);
  off_70A08(v21 - 8);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0);
  v87 = *(v25 - 8);
  v26 = *(v87 + 64);
  off_70A08(v25 - 8);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v30 = *(*(v29 - 8) + 64);
  v31 = off_70A08(v29 - 8);
  v95 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70A08(v31);
  v34 = &v85 - v33;
  v35 = v4[1];
  v89 = *v4;
  v88 = v35;
  v36 = v4[2];
  v91 = v4[3];
  v37 = v4[4];
  v86 = v4[5];
  v90 = v37;
  v38 = type metadata accessor for Counter();
  v39 = *(v38 + 32);
  v40 = *(v38 + 36);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v110 = a3;
  v42 = v109;
  sub_1814C(v36, sub_18104, 0, isUniquelyReferenced_nonNull_native, &v110);
  v97 = v42;

  v43 = v110;
  v106 = v34;
  Opentelemetry_Proto_Resource_V1_Resource.init()(v34);
  v44 = (v4 + v39);
  sub_5B994();
  v46 = v45 * 1000000000.0;
  if (COERCE__INT64(fabs(v45 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v46 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v46 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v44 = (v4 + v40);
  sub_5B994();
  v48 = v47 * 1000000000.0;
  if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v48 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v48 < 1.84467441e19)
  {
    v49 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78070, &qword_5EEE0);
    inited = swift_initStackObject();
    v109 = xmmword_5EBD0;
    *(inited + 16) = xmmword_5EBD0;
    strcpy((inited + 32), "service.name");
    *(inited + 72) = &type metadata for String;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v92;
    *(inited + 56) = v93;

    v51 = sub_981C(inited);
    swift_setDeallocating();
    sub_60C4(inited + 32, &qword_78078, &qword_5EEE8);
    v52 = Array<A>.init(from:)(v51);
    v53 = v106;
    v54 = *v106;

    *v53 = v52;
    Opentelemetry_Proto_Metrics_V1_NumberDataPoint.init()(v28);
    *(v28 + 1) = v46;
    *(v28 + 2) = v49;
    *(v28 + 3) = v86;
    v28[32] = 0;
    v55 = sub_17740(v43);

    v56 = Array<A>.init(from:)(v55);
    v57 = *v28;

    *v28 = v56;
    Opentelemetry_Proto_Metrics_V1_Sum.init()(v24);
    *(v24 + 1) = 2;
    *(v24 + 8) = 257;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78238, &unk_5F8D0);
    v58 = *(v87 + 72);
    v59 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v109;
    sub_183EC(v28, v60 + v59, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
    v61 = *v24;

    *v24 = v60;
    Opentelemetry_Proto_Metrics_V1_Metric.init()(v20);
    v62 = *(v20 + 1);
    v63 = v88;

    *v20 = v89;
    *(v20 + 1) = v63;
    v64 = *(v20 + 5);
    v65 = v90;

    *(v20 + 4) = v91;
    *(v20 + 5) = v65;
    v66 = *(v94 + 28);
    sub_60C4(&v20[v66], &qword_78240, &qword_5FB10);
    sub_183EC(v24, &v20[v66], type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
    v67 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v67 - 8) + 56))(&v20[v66], 0, 1, v67);
    v68 = v107;
    Opentelemetry_Proto_Metrics_V1_ScopeMetrics.init()(v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78248, &qword_5F8E0);
    v69 = *(v96 + 72);
    v70 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v71 = swift_allocObject();
    *(v71 + 16) = v109;
    sub_183EC(v20, v71 + v70, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
    v72 = *v68;

    *v68 = v71;
    v73 = v108;
    Opentelemetry_Proto_Metrics_V1_ResourceMetrics.init()(v108);
    v74 = v95;
    sub_183EC(v53, v95, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
    Opentelemetry_Proto_Metrics_V1_ResourceMetrics.resource.setter(v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78250, &qword_5F8E8);
    v75 = *(v98 + 72);
    v76 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = v109;
    sub_183EC(v68, v77 + v76, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    v78 = *v73;

    *v73 = v77;
    v40 = v101;
    Opentelemetry_Proto_Metrics_V1_MetricsData.init()(v101);
    sub_183EC(v73, v105, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    v44 = *v40;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v44 = sub_17AF4(0, v44[2] + 1, 1, v44);
LABEL_8:
  v79 = v104;
  v80 = v102;
  v82 = v44[2];
  v81 = v44[3];
  if (v82 >= v81 >> 1)
  {
    v44 = sub_17AF4(v81 > 1, v82 + 1, 1, v44);
  }

  v44[2] = v82 + 1;
  sub_18454(v105, v44 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v82);
  *v40 = v44;
  sub_5BD14();
  sub_184B8();
  v83 = sub_5BED4();
  (*(v103 + 8))(v80, v79);
  sub_18510(v40, type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData);
  sub_18510(v108, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
  sub_18510(v107, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
  sub_18510(v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
  sub_18510(v24, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
  sub_18510(v28, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
  sub_18510(v106, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  return v83;
}

unint64_t sub_17740(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780D8, &unk_5F9C0);
    v2 = sub_5C374();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (v12 << 10) | (16 * v13);
        v15 = (*(a1 + 48) + v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = (*(a1 + 56) + v14);
        v26 = *v18;
        v27 = v18[1];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78090, &unk_5F950);
        swift_dynamicCast();
        v31 = v29;
        v32 = v30;
        v28 = v29;
        v29 = v30;
        result = sub_9094(v17, v16);
        if (v19)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v17;
          v9[1] = v16;
          v11 = result;

          result = sub_9B4C(&v28, v2[7] + 32 * v11);
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v20 = (v2[6] + 16 * result);
          *v20 = v17;
          v20[1] = v16;
          v21 = (v2[7] + 32 * result);
          v22 = v29;
          *v21 = v28;
          v21[1] = v22;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v8 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1798C()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_179C4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t sub_179F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 32);
  v5 = sub_5B9B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_17A68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_5B9B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

size_t sub_17AF4(size_t result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (!v9)
  {
    v13 = &_swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78268, &unk_5F940);
  v10 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_17CCC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78270, &unk_5F9D0);
  v40 = a2;
  result = sub_5C364();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      sub_5C454();
      sub_5C124();
      result = sub_5C474();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

void *sub_17F8C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78270, &unk_5F9D0);
  v2 = *v0;
  v3 = sub_5C354();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_18104@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  a2[3] = v4;
}

uint64_t sub_1814C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, uint64_t *a5)
{
  v56 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v50 = a4;
    v14 = v11;
LABEL_14:
    v16 = (v14 << 10) | (16 * __clz(__rbit64(v9)));
    v17 = (*(a1 + 48) + v16);
    v18 = *v17;
    v19 = v17[1];
    v20 = (*(a1 + 56) + v16);
    v21 = *v20;
    v22 = v20[1];
    v55[0] = v18;
    v55[1] = v19;
    v55[2] = v21;
    v55[3] = v22;

    a2(&v51, v55);

    v23 = v51;
    v24 = v52;
    v25 = v53;
    v26 = v54;
    v27 = *v56;
    v29 = sub_9094(v51, v52);
    v30 = *(v27 + 16);
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_25;
    }

    v33 = v28;
    if (*(v27 + 24) >= v32)
    {
      if ((v50 & 1) == 0)
      {
        sub_17F8C();
      }
    }

    else
    {
      v34 = v56;
      sub_17CCC(v32, v50 & 1);
      v35 = *v34;
      v36 = sub_9094(v23, v24);
      if ((v33 & 1) != (v37 & 1))
      {
        goto LABEL_27;
      }

      v29 = v36;
    }

    v9 &= v9 - 1;
    v38 = *v56;
    if (v33)
    {

      v12 = (v38[7] + 16 * v29);
      v13 = v12[1];
      *v12 = v25;
      v12[1] = v26;
    }

    else
    {
      v38[(v29 >> 6) + 8] |= 1 << v29;
      v39 = (v38[6] + 16 * v29);
      *v39 = v23;
      v39[1] = v24;
      v40 = (v38[7] + 16 * v29);
      *v40 = v25;
      v40[1] = v26;
      v41 = v38[2];
      v42 = __OFADD__(v41, 1);
      v43 = v41 + 1;
      if (v42)
      {
        goto LABEL_26;
      }

      v38[2] = v43;
    }

    a4 = 1;
    v11 = v14;
    v10 = v46;
    v6 = v47;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_18858();
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v50 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_5C3C4();
  __break(1u);
  return result;
}

uint64_t sub_183EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18454(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_184B8()
{
  result = qword_78258;
  if (!qword_78258)
  {
    type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78258);
  }

  return result;
}

uint64_t sub_18510(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_5B9B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_18644(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_5B9B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_186E8()
{
  sub_1878C();
  if (v0 <= 0x3F)
  {
    sub_5B9B4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1878C()
{
  if (!qword_78260)
  {
    v0 = sub_5C0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_78260);
    }
  }
}