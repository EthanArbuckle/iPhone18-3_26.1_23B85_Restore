uint64_t sub_4D918(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_4D960(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a7 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1B30;

  return v17(a1, a2, a3, a5, a7);
}

uint64_t sub_4DAA8()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_4DB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 32);
  v10 = (*(*(v8 - 8) + 80) + 48) & ~*(*(v8 - 8) + 80);
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_65E4;

  return sub_4D960(a1, a2, a3, v3 + v10, v8, v11, v9);
}

uint64_t sub_4DC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788D8, &qword_62E78);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788E0, &qword_62E80);
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788E8, &unk_62E88);
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_4DDDC, 0, 0);
}

uint64_t sub_4DDDC()
{
  (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
  v1 = async function pointer to ServerRequest.init(stream:)[1];
  v2 = swift_task_alloc();
  v0[18] = v2;
  v3 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  *v2 = v0;
  v2[1] = sub_4DEA0;
  v4 = v0[13];
  v5 = v0[10];

  return ServerRequest.init(stream:)(v4, v5, v3);
}

uint64_t sub_4DEA0()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  v3[19] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_3CCA4, 0, 0);
  }

  else
  {
    v13 = (v3[6] + 16);
    v14 = (*v13 + **v13);
    v4 = (*v13)[1];
    v5 = swift_task_alloc();
    v3[20] = v5;
    *v5 = v3;
    v5[1] = sub_4E09C;
    v6 = v3[17];
    v7 = v3[13];
    v8 = v3[6];
    v9 = v3[7];
    v10 = v3[4];
    v11 = v3[5];

    return v14(v6, v7, v10, v11, v8);
  }
}

uint64_t sub_4E09C()
{
  v2 = *(*v1 + 160);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v8 = *v1;
  *(*v1 + 168) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_3CD30;
  }

  else
  {
    v6 = sub_4E20C;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_4E20C()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[2];
  (*(v3 + 16))(v0[16], v1, v2);
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_5BB04();
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_4E304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *(*(sub_5BB34() - 8) + 64) + 15;
  v6[8] = swift_task_alloc();
  v6[9] = swift_task_alloc();
  v8 = *(*(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0) - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v9 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  v6[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_4E404, 0, 0);
}

uint64_t sub_4E404()
{
  v1 = v0[10];
  v14 = v0[6];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788E0, &qword_62E80);
  sub_5BA64();
  v3 = *(v14 + 16);
  v13 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_4E54C;
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];

  return v13(v6, v7, v10, v11, v8);
}

uint64_t sub_4E54C()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 112) = v0;

  sub_4E67C(v3);
  if (v0)
  {
    v4 = sub_3D210;
  }

  else
  {
    v4 = sub_3D134;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_4E67C(uint64_t a1)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4E6F4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_4F6A0, 0, 0);
}

uint64_t sub_4E714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v12;
  *(v8 + 112) = v13;
  *(v8 + 96) = v11;
  *(v8 + 80) = v10;
  *(v8 + 64) = a7;
  *(v8 + 72) = a8;
  *(v8 + 48) = a5;
  *(v8 + 56) = a6;
  *(v8 + 32) = a3;
  *(v8 + 40) = a4;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  return _swift_task_switch(sub_4E75C, 0, 0);
}

uint64_t sub_4E75C()
{
  if (qword_7F9C8 != -1)
  {
    swift_once();
  }

  v1 = sub_5BAD4();
  v2 = __swift_project_value_buffer(v1, qword_809C8);
  v3 = async function pointer to GRPCClient.unary<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)[1];
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  *v4 = v0;
  v4[1] = sub_3D4A8;
  v5 = *(v0 + 64);
  v6 = *(v0 + 72);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 32);
  v10 = *(v0 + 40);
  v11 = *(v0 + 24);
  v17 = *(v0 + 112);
  v15 = *(v0 + 80);
  v16 = *(v0 + 96);
  v12 = *(v0 + 16);

  return GRPCClient.unary<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)(v12, v11, v2, v9, v10, v7, v8, v5);
}

uint64_t sub_4E884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *v7;
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_65E4;

  return sub_4E714(a1, a2, a3, a4, a5, a6, a7, v12);
}

uint64_t sub_4E99C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_4E9BC, 0, 0);
}

uint64_t sub_4E9BC()
{
  v1 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78918, &unk_63020);
  sub_5BAA4();
  v3 = v0[1];

  return v3();
}

uint64_t sub_4EA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788F0, &qword_62EB8);
  v9[11] = v10;
  v11 = *(v10 - 8);
  v9[12] = v11;
  v12 = *(v11 + 64) + 15;
  v9[13] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788F8, &qword_62EC0);
  v9[14] = v13;
  v14 = *(v13 - 8);
  v9[15] = v14;
  v15 = *(v14 + 64) + 15;
  v9[16] = swift_task_alloc();

  return _swift_task_switch(sub_4EB94, 0, 0);
}

void sub_4EB94()
{
  v1 = v0[16];
  v2 = v0[13];
  v16 = v0[9];
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  sub_4D918(&qword_78850, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);
  sub_5BCA4();
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_4D918(&qword_78868, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
  sub_5BCB4();
  v3 = *(v16 + 8);
  v15 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  sub_3DD98(&qword_78900, &qword_788F8, &qword_62EC0);
  sub_3DD98(&qword_78908, &qword_788F0, &qword_62EB8);
  *v5 = v0;
  v5[1] = sub_3DAFC;
  v6 = v0[16];
  v7 = v0[13];
  v8 = v0[10];
  v9 = v0[8];
  v10 = v0[6];
  v11 = v0[4];
  v12 = v0[5];
  v14 = v0[2];
  v13 = v0[3];
  v20 = v0[7];
  v21 = v0[9];
  v18 = v0[14];
  v19 = v0[11];

  __asm { BRAA            X8, X16 }
}

uint64_t sub_4EE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[10] = v20;
  v9[11] = v8;
  v9[8] = a7;
  v9[9] = a8;
  v9[6] = a5;
  v9[7] = a6;
  v9[4] = a3;
  v9[5] = a4;
  v9[2] = a1;
  v9[3] = a2;
  v10 = sub_5BB34();
  v9[12] = v10;
  v11 = *(v10 - 8);
  v9[13] = v11;
  v12 = *(v11 + 64) + 15;
  v9[14] = swift_task_alloc();
  v13 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  v9[15] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v9[16] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78910, &qword_62ED8);
  v9[17] = v15;
  v16 = *(v15 - 8);
  v9[18] = v16;
  v17 = *(v16 + 64) + 15;
  v9[19] = swift_task_alloc();

  return _swift_task_switch(sub_4EF70, 0, 0);
}

uint64_t sub_4EF70()
{
  v1 = v0[19];
  v2 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[4];
  sub_4F07C(v0[3], v0[16]);
  (*(v4 + 16))(v3, v6, v5);
  sub_5BA44();
  v7 = swift_task_alloc();
  v0[20] = v7;
  *v7 = v0;
  v7[1] = sub_3E084;
  v8 = v0[19];
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  v13 = v0[6];
  v14 = v0[7];
  v15 = v0[5];
  v16 = v0[2];

  return sub_4EA50(v16, v8, v15, v13, v14, v11, v12, v9);
}

uint64_t sub_4F07C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4F110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_65E4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_4F254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_65E4;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_4F398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 16);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1B30;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t sub_4F4DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v18 = *(a14 + 8);
  v22 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  *(v14 + 16) = v20;
  *v20 = v14;
  v20[1] = sub_65E4;

  return v22(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14);
}

uint64_t sub_4F64C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.resourceMetrics.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) + 20);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) + 20);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) + 20);
  return sub_5BCD4();
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.getter@<X0>(void *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B78();
  v5 = &v11 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_4FD40(v1 + *(v6 + 20), v5);
  v7 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_4FDD0(v5, a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v9 = a1 + *(v7 + 24);
  sub_5BCD4();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_78920, &qword_63030);
  }

  return result;
}

uint64_t sub_4F9D8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B78();
  v6 = &v12 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_4FD40(a1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_4FDD0(v6, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v10 = a2 + *(v8 + 24);
  sub_5BCD4();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_78920, &qword_63030);
  }

  return result;
}

uint64_t sub_4FB1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70B78();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_528DC(a1, v8, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
  v9 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) + 20);
  sub_60C4(a2 + v9, &qword_78920, &qword_63030);
  sub_4FDD0(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) + 20);
  sub_60C4(v1 + v3, &qword_78920, &qword_63030);
  sub_4FDD0(a1, v1 + v3);
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0) + 24);
  return sub_5BCD4();
}

uint64_t sub_4FD40(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4FDD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030) - 8) + 64);
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
  v8 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
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
  v14 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) + 20);
  *(v4 + 12) = v14;
  sub_4FD40(v1 + v14, v7);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0xE000000000000000;
    v16 = v13 + *(v8 + 24);
    sub_5BCD4();
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_78920, &qword_63030);
    }
  }

  else
  {
    sub_4FDD0(v7, v13);
  }

  return sub_5002C;
}

void sub_5002C(uint64_t **a1, char a2)
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
    sub_528DC((*a1)[5], v4, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
    sub_60C4(v9 + v3, &qword_78920, &qword_63030);
    sub_4FDD0(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_52944(v5, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
  }

  else
  {
    sub_60C4(v9 + v3, &qword_78920, &qword_63030);
    sub_4FDD0(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.hasPartialSuccess.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B78();
  v3 = &v8 - v2;
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_4FD40(v0 + *(v4 + 20), v3);
  v5 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_60C4(v3, &qword_78920, &qword_63030);
  return v6;
}

Swift::Void __swiftcall Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.clearPartialSuccess()()
{
  v1 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) + 20);
  sub_60C4(v0 + v1, &qword_78920, &qword_63030);
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_5BCE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.unknownFields.setter(uint64_t a1)
{
  v3 = sub_5BCE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.init()@<X0>(uint64_t a1@<X8>)
{
  sub_5BCD4();
  v2 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) + 20);
  v3 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_5044C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.errorMessage.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.errorMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0) + 24);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0) + 24);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
        sub_51A88(&qword_782B0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
        sub_5BE84();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0), sub_51A88(&qword_782B0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics), result = sub_5BFD4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) + 20);
    return sub_5BCC4();
  }

  return result;
}

uint64_t static Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_320FC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) + 20);
  sub_5BCE4();
  sub_51A88(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_50A3C(uint64_t a1, uint64_t a2)
{
  v4 = sub_51A88(&qword_78990, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_50ADC(uint64_t a1)
{
  v2 = sub_51A88(&qword_786A8, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_50B48()
{
  sub_51A88(&qword_786A8, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);

  return sub_5BF14();
}

uint64_t sub_50BC4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_320FC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_5BCE4();
  sub_51A88(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) + 20);
        type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
        sub_51A88(&qword_78968, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
        sub_5BEB4();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.traverse<A>(visitor:)()
{
  result = sub_50E38(v0);
  if (!v1)
  {
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_50E38(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B78();
  v4 = v12 - v3;
  v5 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  off_70B78();
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_4FD40(a1 + *(v10 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_60C4(v4, &qword_78920, &qword_63030);
  }

  sub_4FDD0(v4, v9);
  sub_51A88(&qword_78968, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
  sub_5C004();
  return sub_52944(v9, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
}

uint64_t sub_51078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_5BCD4();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_5113C(uint64_t a1, uint64_t a2)
{
  v4 = sub_51A88(&qword_78988, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_511DC(uint64_t a1)
{
  v2 = sub_51A88(&qword_786B0, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_51248()
{
  sub_51A88(&qword_786B0, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);

  return sub_5BF14();
}

uint64_t sub_512F0()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7FAA8);
  __swift_project_value_buffer(v0, qword_7FAA8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rejected_data_points";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "error_message";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_5BD64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_5BDE4();
    }

    else if (result == 2)
    {
      sub_5BE54();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_5BF84(), !v1))
  {
    v3 = v0[2];
    v4 = HIBYTE(v3) & 0xF;
    if ((v3 & 0x2000000000000000) == 0)
    {
      v4 = v0[1] & 0xFFFFFFFFFFFFLL;
    }

    if (!v4 || (result = sub_5BFB4(), !v1))
    {
      v5 = v0 + *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0) + 24);
      return sub_5BCC4();
    }
  }

  return result;
}

uint64_t static Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v2 && (sub_5C3A4() & 1) == 0)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0) + 24);
  sub_5BCE4();
  sub_51A88(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

Swift::Int sub_51758(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_5C454();
  a1(0);
  sub_51A88(a2, a3);
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_5182C(uint64_t a1, uint64_t a2)
{
  v4 = sub_51A88(&qword_78980, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_518CC(uint64_t a1)
{
  v2 = sub_51A88(&qword_78968, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_51938()
{
  sub_51A88(&qword_78968, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);

  return sub_5BF14();
}

uint64_t sub_519B4(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    v4 = a3;
    v5 = a2[1];
    v6 = sub_5C3A4();
    a3 = v4;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a3 + 24);
  sub_5BCE4();
  sub_51A88(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_51A88(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s16TelemetrySupport047Opentelemetry_Proto_Collector_Metrics_V1_ExportF15ServiceResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70B78();
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B78();
  v11 = (&v26 - v10);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78998, &qword_635A8) - 8);
  v13 = (*(*v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B78();
  v15 = &v26 - v14;
  v16 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) + 20);
  v17 = v12[14];
  sub_4FD40(a1 + v16, v15);
  sub_4FD40(a2 + v16, &v15[v17]);
  v18 = *(v5 + 48);
  if (v18(v15, 1, v4) != 1)
  {
    sub_4FD40(v15, v11);
    if (v18(&v15[v17], 1, v4) != 1)
    {
      sub_4FDD0(&v15[v17], v8);
      if (*v11 == *v8)
      {
        v22 = v11[1] == v8[1] && v11[2] == v8[2];
        if (v22 || (sub_5C3A4() & 1) != 0)
        {
          v23 = *(v4 + 24);
          sub_5BCE4();
          sub_51A88(&qword_78108, &type metadata accessor for UnknownStorage);
          v24 = sub_5C114();
          sub_52944(v8, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
          sub_52944(v11, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
          sub_60C4(v15, &qword_78920, &qword_63030);
          if (v24)
          {
            goto LABEL_4;
          }

LABEL_18:
          v19 = 0;
          return v19 & 1;
        }
      }

      sub_52944(v8, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
      sub_52944(v11, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
      v20 = &qword_78920;
      v21 = &qword_63030;
LABEL_17:
      sub_60C4(v15, v20, v21);
      goto LABEL_18;
    }

    sub_52944(v11, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
LABEL_7:
    v20 = &qword_78998;
    v21 = &qword_635A8;
    goto LABEL_17;
  }

  if (v18(&v15[v17], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_60C4(v15, &qword_78920, &qword_63030);
LABEL_4:
  sub_5BCE4();
  sub_51A88(&qword_78108, &type metadata accessor for UnknownStorage);
  v19 = sub_5C114();
  return v19 & 1;
}

uint64_t sub_52208(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_522C8(void *result, uint64_t a2, int a3, uint64_t a4)
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

void sub_5236C()
{
  sub_52700(319, &qword_78500, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_5BCE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_52434(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5BCE4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_52544(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_5BCE4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78920, &qword_63030);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_5264C()
{
  sub_5BCE4();
  if (v0 <= 0x3F)
  {
    sub_52700(319, &qword_78978, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_52700(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_52778(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_52838(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_5BCE4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_528DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_52944(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_529B0()
{
  v0 = [objc_opt_self() sharedSession];

  return v0;
}

void *MetricExporter.__allocating_init(config:globalDimensions:urlSession:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v9 = *(*(type metadata accessor for MetricExporterConfiguration() - 8) + 64);
  off_70BA8();
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v5 + 48);
  v13 = *(v5 + 52);
  v14 = swift_allocObject();
  v15 = OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config;
  sub_53C28(a1, v14 + OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config, type metadata accessor for MetricExporterConfiguration);
  v14[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789A0, &qword_635B0);
  sub_53C28(a1, v11, type metadata accessor for MetricExporterConfiguration);
  v16 = sub_53688(v11, a3);

  sub_5398C(a1);
  if (v4)
  {
    v17 = v14[3];

    sub_5398C(v14 + v15);
    v18 = *(*v14 + 48);
    v19 = *(*v14 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14[2] = v16;
  }

  return v14;
}

void *MetricExporter.init(config:globalDimensions:urlSession:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v9 = *v5;
  v10 = *(*(type metadata accessor for MetricExporterConfiguration() - 8) + 64);
  off_70BA8();
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config;
  sub_53C28(a1, v5 + OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config, type metadata accessor for MetricExporterConfiguration);
  v5[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789A0, &qword_635B0);
  sub_53C28(a1, v12, type metadata accessor for MetricExporterConfiguration);
  v14 = sub_53688(v12, a3);

  sub_5398C(a1);
  if (v4)
  {
    v15 = v5[3];

    sub_5398C(v5 + v13);
    v16 = *(*v5 + 48);
    v17 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v5[2] = v14;
  }

  return v5;
}

uint64_t OTLPGRPCClient<>.init(configuration:urlSession:)(uint64_t a1, void *a2)
{
  v3 = sub_53688(a1, a2);

  return v3;
}

{
  v3 = sub_5A738(a1, a2);

  return v3;
}

uint64_t sub_52D70()
{
  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_416C;

  return OTLPGRPCClient.run()();
}

uint64_t MetricExporter.export(metrics:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_5BD04() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();

  return _swift_task_switch(sub_52EF4, 0, 0);
}

uint64_t sub_52EF4()
{
  v1 = v0;
  v2 = v0[2];
  v3 = *(v2 + 16);
  if (v3)
  {
    v32 = v0[6];
    v33 = v0;
    v4 = v0[3];
    v5 = v4 + OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config;
    v6 = (v5 + *(type metadata accessor for MetricExporterConfiguration() + 20));
    v8 = *v6;
    v7 = v6[1];
    v34 = *(v4 + 24);
    v1 = v33;
    v9 = (v2 + 32);
    v10 = _swiftEmptyArrayStorage;
    v31 = v7;
    do
    {
      v11 = v9[3];
      v12 = v9[4];
      __swift_project_boxed_opaque_existential_1(v9, v11);
      v13 = (*(v12 + 48))(v8, v7, v34, v11, v12);
      v15 = v14;
      v16 = v1;
      v17 = v10;
      v18 = v8;
      v19 = v16[7];
      v21 = v16[4];
      v20 = v16[5];
      sub_D038(v13, v14);
      sub_5BCF4();
      sub_53A2C();
      sub_5BEE4();
      v10 = v17;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_534B0(0, v17[2] + 1, 1, v17);
      }

      v1 = v33;
      v23 = v10[2];
      v22 = v10[3];
      if (v23 >= v22 >> 1)
      {
        v10 = sub_534B0(v22 > 1, v23 + 1, 1, v10);
      }

      v24 = v33[7];
      sub_D08C(v13, v15);
      v10[2] = v23 + 1;
      sub_53A84(v24, v10 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v23);
      v8 = v18;
      v7 = v31;
      v9 += 5;
      --v3;
    }

    while (v3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v1[8] = v10;
  if (v10[2])
  {
    v25 = *(v1[3] + 16);
    v26 = swift_task_alloc();
    v1[9] = v26;
    *v26 = v1;
    v26[1] = sub_53214;

    return OTLPGRPCClient.export(request:)(v10);
  }

  else
  {
    v28 = v1[7];
    v29 = v1[4];

    v30 = v1[1];

    return v30();
  }
}

uint64_t sub_53214()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_53368, 0, 0);
  }

  else
  {
    v5 = v3[7];
    v4 = v3[8];
    v6 = v3[4];

    v7 = v3[1];

    return v7();
  }
}

uint64_t sub_53368()
{
  v1 = v0[8];

  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[4];

  v5 = v0[1];

  return v5();
}

uint64_t MetricExporter.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  sub_5398C(v0 + OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config);
  return v0;
}

uint64_t MetricExporter.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  sub_5398C(v0 + OBJC_IVAR____TtC16TelemetrySupport14MetricExporter_config);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

size_t sub_534B0(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789A8, &qword_63610);
  v10 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) - 8);
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
  v15 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) - 8);
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

uint64_t sub_53688(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(*(type metadata accessor for OTLPExporterConfiguration() - 8) + 64);
  off_70BA8();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_5C094() - 8) + 64);
  off_70BA8();
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_789B0, &qword_63618) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70BA8();
  v12 = &v25 - v11;
  v13 = *(*(sub_5BA94() - 8) + 64);
  off_70BA8();
  v14 = *(*(sub_5B984() - 8) + 64);
  off_70BA8();
  (*(v16 + 16))(&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v17 = sub_5BA84();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = a2;
  sub_5BA74();
  sub_5C084();
  v19 = sub_5C0B4();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v26 = sub_5C0A4();
  sub_53C28(a1, v8, type metadata accessor for OTLPExporterConfiguration);
  v22 = *(v3 + 136);

  v23 = v22(&v26, v8);
  sub_5398C(a1);

  return v23;
}

uint64_t sub_5398C(uint64_t a1)
{
  v2 = type metadata accessor for MetricExporterConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_53A2C()
{
  result = qword_786A8;
  if (!qword_786A8)
  {
    type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_786A8);
  }

  return result;
}

uint64_t sub_53A84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MetricExporter()
{
  result = qword_803F8;
  if (!qword_803F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_53B3C()
{
  result = type metadata accessor for MetricExporterConfiguration();
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

uint64_t sub_53C28(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t static TSDeadLine.now()@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_5C0E4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  off_70BB0();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5C0D4();
  v7 = sub_5C0C4();
  result = (*(v3 + 8))(v6, v2);
  *a1 = v7;
  return result;
}

uint64_t static TSDeadLine.+ infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_5C484();
  v6 = 1000000000 * result + v5 / 1000000000;
  v7 = __OFADD__(1000000000 * result, v5 / 1000000000);
  if ((result * 1000000000) >> 64 != (1000000000 * result) >> 63 || v7)
  {
    v9 = v3 - 1;
    if (!v3)
    {
LABEL_11:
      *a2 = v9;
      return result;
    }

LABEL_10:
    v9 = -1;
    goto LABEL_11;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = __CFADD__(v3, v6);
    v9 = v3 + v6;
    if (!v8)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

Swift::UInt64 __swiftcall Duration.nanoSeconds()()
{
  v0 = sub_5C484();
  v1 = (v0 * 1000000000) >> 64 != (1000000000 * v0) >> 63;
  v3 = 1000000000 * v0 + v2 / 1000000000;
  v4 = __OFADD__(1000000000 * v0, v2 / 1000000000);
  result = -1;
  if (!v1 && !v4)
  {
    result = v3;
    if ((v3 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t static TSDeadLine.>= infix(_:_:)(unint64_t *a1)
{
  v1 = *a1;
  result = sub_5C484();
  v4 = __OFADD__(1000000000 * result, v3 / 1000000000);
  v5 = -1;
  if ((result * 1000000000) >> 64 != (1000000000 * result) >> 63)
  {
    return v1 >= v5;
  }

  if (v4)
  {
    return v1 >= v5;
  }

  v5 = 1000000000 * result + v3 / 1000000000;
  if ((v5 & 0x8000000000000000) == 0)
  {
    return v1 >= v5;
  }

  __break(1u);
  return result;
}

uint64_t getEnumTagSinglePayload for TSDeadLine(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TSDeadLine(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_53FD0()
{
  v0 = sub_65E8();
  v1 = *v0;
  v2 = v0[1];

  return sub_5C064();
}

uint64_t sub_54050()
{
  result = *(v0 + qword_80A08);
  v2 = *(v0 + qword_80A08 + 8);
  return result;
}

uint64_t sub_54064@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 80);
  sub_5C1A4();
  v5 = sub_5C274();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v1 + v3, v5);
}

uint64_t sub_5410C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 80);
  sub_5C1A4();
  v5 = sub_5C234();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v1 + v3, v5);
}

uint64_t sub_541B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  sub_5420C(a1, a2, a3);
  return v9;
}

char *sub_5420C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v32 = a3;
  v29 = a1;
  v30 = a2;
  v26 = *(*v3 + 80);
  sub_5C1A4();
  v27 = sub_5C214();
  v4 = *(v27 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70C40();
  v7 = &v24 - v6;
  v31 = sub_5C234();
  v28 = *(v31 - 8);
  v8 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70C40();
  v10 = &v24 - v9;
  v25 = sub_5C274();
  v11 = *(v25 - 8);
  v12 = (*(v11 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70C40();
  v14 = &v24 - v13;
  v15 = sub_65E8();
  v17 = *v15;
  v16 = v15[1];

  sub_5C064();
  v33 = sub_5C154();
  v18 = sub_55D8();

  *(v3 + 2) = v18;
  v19 = v30;
  *&v3[qword_80A00] = v29;
  v20 = &v3[qword_80A08];
  v21 = v32;
  *v20 = v19;
  *(v20 + 1) = v21;
  v22 = v27;
  (*(v4 + 104))(v7, enum case for AsyncStream.Continuation.BufferingPolicy.unbounded<A>(_:), v27);
  sub_5C1F4();
  (*(v4 + 8))(v7, v22);
  (*(v11 + 32))(&v3[*(*v3 + 120)], v14, v25);
  (*(v28 + 32))(&v3[*(*v3 + 128)], v10, v31);
  return v3;
}

Swift::Void __swiftcall EventBuffer.flush()()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  sub_5C1A4();
  v3 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v4));
  sub_55764((v1 + v3));

  os_unfair_lock_unlock((v1 + v4));
}

void sub_545F8(uint64_t *a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  sub_5C1A4();
  v5 = sub_5C204();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70C40();
  v9 = v12 - v8;
  v10 = *a1;
  if (sub_5C174() >= 1)
  {
    v11 = *(*a2 + 128);
    v12[1] = v10;
    sub_5C234();

    sub_5C224();
    (*(v6 + 8))(v9, v5);
    swift_checkMetadataState();
    sub_5C194(0);
  }
}

void EventBuffer.process(event:)()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  sub_5C1A4();
  v3 = *(*v1 + class metadata base offset for ManagedBuffer + 16);
  v4 = (*(*v1 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v1 + v4));
  sub_55790((v1 + v3));
  os_unfair_lock_unlock((v1 + v4));
}

void sub_54824(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a3 + 80);
  sub_5C1A4();
  v7 = sub_5C204();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = (off_70C40)();
  v12 = v18 - v11;
  v13 = (*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70C40(v10);
  (*(v15 + 16))(v18 - v14, a2, v6);
  swift_checkMetadataState();
  sub_5C184();
  v16 = *a1;
  if (sub_5C174() >= *(a3 + qword_80A00))
  {
    v17 = *(*a3 + 128);
    v18[1] = v16;
    sub_5C234();

    sub_5C224();
    (*(v8 + 8))(v12, v7);
    sub_5C194(0);
  }
}

uint64_t sub_54A64()
{
  v1 = async function pointer to withTaskCancellationHandler<A>(operation:onCancel:isolation:)[1];
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_54B38;
  v3 = *(v0 + 16);

  return withTaskCancellationHandler<A>(operation:onCancel:isolation:)();
}

uint64_t sub_54B38()
{
  v2 = *(*v1 + 24);
  v5 = *v1;
  *(*v1 + 32) = v0;

  if (v0)
  {
    v3 = sub_54C64;
  }

  else
  {
    v3 = sub_54C4C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_54C9C()
{
  v1 = (v0[2] + qword_80A08);
  v0[3] = *v1;
  v0[4] = v1[1];
  v2 = Duration.nanoSeconds()();
  v3 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_54D58;

  return static Task<>.sleep(nanoseconds:)(v2);
}

uint64_t sub_54D58()
{
  v2 = *(*v1 + 40);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_54E88, 0, 0);
  }
}

uint64_t sub_54E88()
{
  v1 = v0[2];
  EventBuffer.flush()();
  v2 = v0[3];
  v3 = v0[4];
  v4 = Duration.nanoSeconds()();
  v5 = async function pointer to static Task<>.sleep(nanoseconds:)[1];
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_54D58;

  return static Task<>.sleep(nanoseconds:)(v4);
}

char *EventBuffer.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = qword_80410;
  v4 = sub_5C074();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  v5 = *(*v0 + 120);
  v6 = *(v1 + 80);
  sub_5C1A4();
  v7 = sub_5C274();
  (*(*(v7 - 8) + 8))(&v0[v5], v7);
  v8 = *(*v0 + 128);
  v9 = sub_5C234();
  (*(*(v9 - 8) + 8))(&v0[v8], v9);
  return v0;
}

uint64_t EventBuffer.__deallocating_deinit()
{
  EventBuffer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t EventBuffer.makeAsyncIterator()()
{
  v1 = *v0;
  v2 = *(*v0 + 80);
  sub_5C1A4();
  v3 = sub_5C274();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70C40();
  v7 = &v9 - v6;
  (*(v4 + 16))(&v9 - v6, v0 + *(v1 + 120), v3);
  sub_5C244();
  return (*(v4 + 8))(v7, v3);
}

uint64_t EventBuffer.AsyncIterator.next()(uint64_t a1)
{
  v3 = async function pointer to AsyncStream.Iterator.next()[1];
  v4 = swift_task_alloc();
  *(v1 + 24) = v4;
  v5 = *(a1 + 16);
  sub_5C1A4();
  v6 = sub_5C264();
  *v4 = v1;
  v4[1] = sub_552A4;

  return AsyncStream.Iterator.next()(v1 + 16, v6);
}

uint64_t sub_552A4()
{
  v1 = *(*v0 + 24);
  v3 = *v0;

  return _swift_task_switch(sub_553A0, 0, 0);
}

uint64_t sub_553B8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_55450;

  return EventBuffer.AsyncIterator.next()(a2);
}

uint64_t sub_55450(uint64_t a1)
{
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v7 = *v1;

  *v4 = a1;
  v5 = *(v7 + 8);

  return v5();
}

uint64_t sub_55564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKFTu[1];
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_55630;

  return _sScIsE4next9isolation7ElementQzSgScA_pSgYi_tYa7FailureQzYKF(a1, a2, a3, a5, a6);
}

uint64_t sub_55630()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_5572C()
{
  v1 = *v0;
  EventBuffer.makeAsyncIterator()();
}

uint64_t sub_557BC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1B30;

  return sub_54C7C(v2, v0);
}

uint64_t sub_55878(uint64_t a1)
{
  result = sub_5C074();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    sub_5C1A4();
    result = sub_5C274();
    if (v5 <= 0x3F)
    {
      v8 = *(result - 8) + 64;
      result = sub_5C234();
      if (v6 <= 0x3F)
      {
        v9 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_559EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_5C1A4();
  result = sub_5C264();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_55A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  sub_5C1A4();
  v6 = sub_5C264();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_55B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  sub_5C1A4();
  v7 = sub_5C264();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t sub_55BAC(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t sub_55BD8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_55C08(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_55C60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_55CB8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t sub_55CE8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_55D40()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t sub_55D70(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t sub_55DC8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for JSONEvent() + 36);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for JSONEvent()
{
  result = qword_80620;
  if (!qword_80620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_55E90(uint64_t a1)
{
  v3 = *(type metadata accessor for JSONEvent() + 36);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_55F54()
{
  v1 = *(v0 + *(type metadata accessor for JSONEvent() + 40));
}

uint64_t sub_55F88(uint64_t a1)
{
  v3 = *(type metadata accessor for JSONEvent() + 40);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_56010()
{
  v1 = *(v0 + *(type metadata accessor for JSONEvent() + 44));
}

uint64_t sub_56044(uint64_t a1)
{
  v3 = *(type metadata accessor for JSONEvent() + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t JSONEvent.init(event:serial:source:sourceType:splunkIndex:resourceAttributes:attributes:timestamp:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v22 = type metadata accessor for JSONEvent();
  v26 = v22[11];
  v27 = v22[10];
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  *(a9 + 7) = a8;
  *(a9 + 8) = a10;
  v23 = v22[9];
  v24 = sub_5B9B4();
  result = (*(*(v24 - 8) + 32))(&a9[v23], a13, v24);
  *&a9[v27] = a11;
  *&a9[v26] = a12;
  return result;
}

uint64_t JSONEvent.toOTLPData()()
{
  v1 = sub_5BD24();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  (off_70C48)();
  v132 = &v126 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0);
  v5 = *(*(v131 - 8) + 64);
  (off_70C48)();
  v7 = &v126 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource() - 8) + 64);
  (off_70C48)();
  v130 = (&v126 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) - 8);
  v11 = *(v10 + 64);
  v12 = (off_70C48)();
  v142 = &v126 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70C48(v12);
  v15 = (&v126 - v14);
  v16 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  v137 = *(v16 - 8);
  v17 = *(v137 + 64);
  v18 = off_70C48(v16 - 8);
  v136 = &v126 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70C48(v18);
  v21 = &v126 - v20;
  v22 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v23 = *(*(v22 - 8) + 64);
  off_70C48(v22 - 8);
  v134 = &v126 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  v135 = *(v25 - 8);
  v26 = *(v135 + 64);
  v27 = off_70C48(v25 - 8);
  v143 = &v126 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70C48(v27);
  v30 = &v126 - v29;
  Opentelemetry_Proto_Logs_V1_LogRecord.init()(&v126 - v29);
  v144 = type metadata accessor for JSONEvent();
  v145 = v0;
  v31 = (v0 + v144[9]);
  sub_5B994();
  v33 = v32 * 1000000000.0;
  if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_94;
  }

  if (v33 <= -1.0)
  {
    goto LABEL_95;
  }

  if (v33 >= 1.84467441e19)
  {
    goto LABEL_96;
  }

  v127 = v10;
  v128 = v2;
  v139 = v21;
  v140 = v15;
  v141 = v7;
  v129 = v1;
  v138 = v30;
  *v30 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78070, &qword_5EEE0);
  inited = swift_initStackObject();
  v36 = inited;
  *(inited + 16) = xmmword_5FAB0;
  *(inited + 32) = 0x656C69662E676F6CLL;
  v10 = inited + 32;
  *(inited + 40) = 0xED0000687461702ELL;
  v37 = v145;
  if (v145[4])
  {
    v38 = v145[3];
    v39 = &type metadata for String;
    v40 = v145[4];
  }

  else
  {
    v38 = 0;
    v40 = 0;
    v39 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v38;
  *(inited + 56) = v40;
  *(inited + 72) = v39;
  *(inited + 80) = 0xD000000000000010;
  *(inited + 88) = 0x8000000000065720;
  v41 = v37[8];
  v133 = v34;
  if (v41)
  {
    v42 = v37[7];
    v43 = &type metadata for String;
    v44 = v41;
  }

  else
  {
    v42 = 0;
    v44 = 0;
    v43 = 0;
    v36[14] = 0;
  }

  v36[12] = v42;
  v36[13] = v44;
  v36[15] = v43;
  v36[16] = 0xD000000000000015;
  v36[17] = 0x8000000000065740;
  v45 = v37[6];
  if (v45)
  {
    v46 = v37[5];
    v47 = &type metadata for String;
  }

  else
  {
    v46 = 0;
    v47 = 0;
    v36[20] = 0;
  }

  v36[18] = v46;
  v36[19] = v45;
  v36[21] = v47;

  v31 = sub_981C(v36);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78078, &qword_5EEE8);
  swift_arrayDestroy();
  v48 = *(v37 + v144[11]);
  if (!v48)
  {
    v21 = v140;
    v15 = v141;
    v10 = v138;
    v30 = v139;
LABEL_44:
    v74 = Array<A>.init(from:)(v31);
    v75 = *(v10 + 48);

    *(v10 + 48) = v74;
    v76 = *v37;
    *(&v155 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780C8, &unk_5EF40);
    *&v154 = v76;

    v77 = v134;
    Opentelemetry_Proto_Common_V1_AnyValue.init(from:)(&v154, v134);
    Opentelemetry_Proto_Logs_V1_LogRecord.body.setter(v77);
    Opentelemetry_Proto_Logs_V1_ScopeLogs.init()(v30);
    sub_99B4(v10, v143, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    v31 = *v30;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = v136;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_45;
    }

    goto LABEL_97;
  }

  v30 = v48 + 64;
  v49 = 1 << *(v48 + 32);
  v50 = -1;
  if (v49 < 64)
  {
    v50 = ~(-1 << v49);
  }

  v7 = v50 & *(v48 + 64);
  v51 = (v49 + 63) >> 6;
  v146 = *(v37 + v144[11]);

  v52 = 0;
  v147 = v51;
  v148 = v30;
  while (v7)
  {
    v53 = v52;
LABEL_28:
    v55 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v56 = v55 | (v53 << 6);
    v57 = (*(v146 + 48) + 16 * v56);
    v59 = *v57;
    v58 = v57[1];
    sub_62FC(*(v146 + 56) + 32 * v56, &v149);
    *&v151 = v59;
    *(&v151 + 1) = v58;
    sub_9B3C(&v149, &v152);

    v21 = v53;
LABEL_29:
    v154 = v151;
    v155 = v152;
    v156 = v153;
    v10 = *(&v151 + 1);
    if (!*(&v151 + 1))
    {

      v21 = v140;
      v15 = v141;
      v10 = v138;
      v30 = v139;
      v37 = v145;
      goto LABEL_44;
    }

    v15 = v154;
    sub_9B3C(&v155, &v151);
    v149 = v151;
    v150 = v152;
    v60 = swift_isUniquelyReferenced_nonNull_native();
    v157 = v31;
    v30 = sub_9094(v15, v10);
    v62 = v31[2];
    v63 = (v61 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_90;
    }

    v65 = v61;
    if (v31[3] >= v64)
    {
      if (v60)
      {
        if (v61)
        {
          goto LABEL_17;
        }
      }

      else
      {
        sub_9668();
        if (v65)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      sub_93A0(v64, v60);
      v66 = sub_9094(v15, v10);
      if ((v65 & 1) != (v67 & 1))
      {
LABEL_98:
        result = sub_5C3C4();
        __break(1u);
        return result;
      }

      v30 = v66;
      if (v65)
      {
LABEL_17:

        v31 = v157;
        sub_9B4C(&v149, v157[7] + 32 * v30);
        goto LABEL_18;
      }
    }

    v31 = v157;
    v157[(v30 >> 6) + 8] |= 1 << v30;
    v68 = (v31[6] + 16 * v30);
    *v68 = v15;
    v68[1] = v10;
    v69 = (v31[7] + 32 * v30);
    v70 = v150;
    *v69 = v149;
    v69[1] = v70;
    v71 = v31[2];
    v72 = __OFADD__(v71, 1);
    v73 = v71 + 1;
    if (v72)
    {
      goto LABEL_92;
    }

    v31[2] = v73;
LABEL_18:
    v52 = v21;
    v51 = v147;
    v30 = v148;
  }

  if (v51 <= v52 + 1)
  {
    v54 = v52 + 1;
  }

  else
  {
    v54 = v51;
  }

  v21 = v54 - 1;
  while (1)
  {
    v53 = v52 + 1;
    if (__OFADD__(v52, 1))
    {
      break;
    }

    if (v53 >= v51)
    {
      v7 = 0;
      v152 = 0u;
      v153 = 0u;
      v151 = 0u;
      goto LABEL_29;
    }

    v7 = *(v30 + 8 * v53);
    ++v52;
    if (v7)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
  while (1)
  {
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    v31 = sub_91C4(0, v31[2] + 1, 1, v31, &qword_780F0, &qword_5EF80, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
LABEL_45:
    v80 = v31[2];
    v79 = v31[3];
    if (v80 >= v79 >> 1)
    {
      v31 = sub_91C4(v79 > 1, v80 + 1, 1, v31, &qword_780F0, &qword_5EF80, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    }

    v31[2] = v80 + 1;
    sub_9A1C(v143, v31 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v80, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    *v30 = v31;
    Opentelemetry_Proto_Logs_V1_ResourceLogs.init()(v21);
    sub_99B4(v30, v7, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    v81 = *v21;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_91C4(0, v81[2] + 1, 1, v81, &qword_780E8, &qword_63820, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    }

    v83 = v81[2];
    v82 = v81[3];
    if (v83 >= v82 >> 1)
    {
      v81 = sub_91C4(v82 > 1, v83 + 1, 1, v81, &qword_780E8, &qword_63820, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    }

    v81[2] = v83 + 1;
    sub_9A1C(v7, v81 + ((*(v137 + 80) + 32) & ~*(v137 + 80)) + *(v137 + 72) * v83, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    *v21 = v81;
    v84 = swift_initStackObject();
    v85 = v84;
    *(v84 + 16) = xmmword_5EBD0;
    *(v84 + 32) = 0x692E656369766564;
    v86 = v84 + 32;
    *(v84 + 40) = 0xE900000000000064;
    v87 = v145;
    v88 = v145[2];
    if (v88)
    {
      v89 = v145[1];
      v90 = &type metadata for String;
    }

    else
    {
      v89 = 0;
      v90 = 0;
      *(v84 + 64) = 0;
    }

    *(v84 + 48) = v89;
    *(v84 + 56) = v88;
    *(v84 + 72) = v90;

    v31 = sub_981C(v85);
    swift_setDeallocating();
    sub_994C(v86);
    v91 = *(v87 + v144[10]);
    if (!v91)
    {
      goto LABEL_83;
    }

    v21 = v91 + 64;
    v92 = 1 << *(v91 + 32);
    v93 = -1;
    if (v92 < 64)
    {
      v93 = ~(-1 << v92);
    }

    v94 = v93 & *(v91 + 64);
    v30 = (v92 + 63) >> 6;
    v147 = *(v87 + v144[10]);

    v95 = 0;
    if (v94)
    {
      break;
    }

LABEL_61:
    if (v30 <= v95 + 1)
    {
      v97 = v95 + 1;
    }

    else
    {
      v97 = v30;
    }

    v98 = v97 - 1;
    while (1)
    {
      v7 = v95 + 1;
      if (__OFADD__(v95, 1))
      {
        break;
      }

      if (v7 >= v30)
      {
        v94 = 0;
        v152 = 0u;
        v153 = 0u;
        v151 = 0u;
        goto LABEL_69;
      }

      v94 = *(v21 + 8 * v7);
      ++v95;
      if (v94)
      {
        goto LABEL_68;
      }
    }
  }

  while (2)
  {
    v7 = v95;
LABEL_68:
    v99 = __clz(__rbit64(v94));
    v94 &= v94 - 1;
    v100 = v99 | (v7 << 6);
    v101 = (*(v147 + 48) + 16 * v100);
    v103 = *v101;
    v102 = v101[1];
    sub_62FC(*(v147 + 56) + 32 * v100, &v149);
    *&v151 = v103;
    *(&v151 + 1) = v102;
    sub_9B3C(&v149, &v152);

    v98 = v7;
LABEL_69:
    v154 = v151;
    v155 = v152;
    v156 = v153;
    v7 = *(&v151 + 1);
    if (*(&v151 + 1))
    {
      v10 = v21;
      v148 = v98;
      v15 = v154;
      sub_9B3C(&v155, &v151);
      v149 = v151;
      v150 = v152;
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v157 = v31;
      v104 = sub_9094(v15, v7);
      v106 = v31[2];
      v107 = (v105 & 1) == 0;
      v72 = __OFADD__(v106, v107);
      v108 = v106 + v107;
      if (v72)
      {
        goto LABEL_91;
      }

      v109 = v105;
      if (v31[3] < v108)
      {
        sub_93A0(v108, v21);
        v104 = sub_9094(v15, v7);
        if ((v109 & 1) != (v110 & 1))
        {
          goto LABEL_98;
        }

        goto LABEL_75;
      }

      if (v21)
      {
LABEL_75:
        v21 = v10;
        if (v109)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v116 = v104;
        sub_9668();
        v104 = v116;
        v21 = v10;
        if (v109)
        {
LABEL_59:
          v96 = v104;

          v31 = v157;
          sub_9B4C(&v149, v157[7] + 32 * v96);
          v95 = v148;
          if (!v94)
          {
            goto LABEL_61;
          }

          continue;
        }
      }

      v31 = v157;
      v157[(v104 >> 6) + 8] |= 1 << v104;
      v111 = (v31[6] + 16 * v104);
      *v111 = v15;
      v111[1] = v7;
      v112 = (v31[7] + 32 * v104);
      v113 = v150;
      *v112 = v149;
      v112[1] = v113;
      v114 = v31[2];
      v72 = __OFADD__(v114, 1);
      v115 = v114 + 1;
      if (v72)
      {
        goto LABEL_93;
      }

      v31[2] = v115;
      v95 = v148;
      if (!v94)
      {
        goto LABEL_61;
      }

      continue;
    }

    break;
  }

  v21 = v140;
  v15 = v141;
  v10 = v138;
  v30 = v139;
LABEL_83:
  v117 = Array<A>.init(from:)(v31);
  v118 = v130;
  Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.getter(v130);
  v119 = *v118;

  *v118 = v117;
  Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.setter(v118);
  Opentelemetry_Proto_Logs_V1_LogsData.init()(v15);
  sub_99B4(v21, v142, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  v120 = *v15;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v120 = sub_91C4(0, v120[2] + 1, 1, v120, &qword_780E0, &unk_5EF70, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  }

  v122 = v120[2];
  v121 = v120[3];
  if (v122 >= v121 >> 1)
  {
    v120 = sub_91C4(v121 > 1, v122 + 1, 1, v120, &qword_780E0, &unk_5EF70, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  }

  v120[2] = v122 + 1;
  sub_9A1C(v142, v120 + ((*(v127 + 80) + 32) & ~*(v127 + 80)) + *(v127 + 72) * v122, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  *v15 = v120;
  v123 = v132;
  sub_5BD14();
  sub_9A84();
  v124 = sub_5BED4();
  (*(v128 + 8))(v123, v129);
  sub_9ADC(v15, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData);
  sub_9ADC(v21, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
  sub_9ADC(v30, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
  sub_9ADC(v10, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
  return v124;
}

uint64_t sub_57134(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_5B9B4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_571F4(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_5B9B4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_57298()
{
  sub_57350();
  if (v0 <= 0x3F)
  {
    sub_573B4();
    if (v1 <= 0x3F)
    {
      sub_5B9B4();
      if (v2 <= 0x3F)
      {
        sub_57404();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_57350()
{
  if (!qword_789B8)
  {
    v0 = sub_5C0F4();
    if (!v1)
    {
      atomic_store(v0, &qword_789B8);
    }
  }
}

void sub_573B4()
{
  if (!qword_780A8)
  {
    v0 = sub_5C2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_780A8);
    }
  }
}

void sub_57404()
{
  if (!qword_780C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_780C8, &unk_5EF40);
    v0 = sub_5C2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_780C0);
    }
  }
}

uint64_t MetricsService.init(wrapping:)@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1();
  *a1 = result;
  return result;
}

uint64_t static MetricsService.request(fromUTF8Data:)(uint64_t a1, unint64_t a2)
{
  v4 = *(*(sub_5BD04() - 8) + 64);
  off_70C58();
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  sub_D038(a1, a2);
  sub_53A2C();
  sub_5BCF4();
  return sub_5BEE4();
}

uint64_t static MetricsService.handle(response:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0) - 8) + 64);
  v3 = (off_70C58)();
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70C58(v3);
  v7 = &v57 - v6;
  v8 = sub_5C074();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = off_70C58(v8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = off_70C58(v11);
  v59 = &v57 - v15;
  off_70C58(v14);
  v17 = &v57 - v16;
  v18 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = off_70C58(v18 - 8);
  v22 = (&v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70C58(v20);
  v24 = (&v57 - v23);
  if (Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.hasPartialSuccess.getter())
  {
    Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.getter(v24);
    v25 = *v24;
    sub_5849C(v24, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
    if (v25 < 1)
    {
      Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.getter(v22);
      v42 = v22[1];
      v41 = v22[2];

      sub_5849C(v22, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
      if (v42)
      {
        v43 = 0;
      }

      else
      {
        v43 = v41 == 0xE000000000000000;
      }

      if (v43)
      {
      }

      else
      {
        v44 = sub_5C3A4();

        if ((v44 & 1) == 0)
        {
          v45 = sub_1508();
          v46 = v59;
          (*(v9 + 16))(v59, v45, v8);
          sub_584FC(a1, v5, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
          v47 = sub_5C054();
          v48 = sub_5C2B4();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v58 = v8;
            v50 = v49;
            v51 = swift_slowAlloc();
            v61 = v51;
            *v50 = 136446210;
            Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.getter(v24);
            sub_5849C(v5, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
            v52 = v46;
            v53 = v24[1];
            v54 = v24[2];

            sub_5849C(v24, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
            v55 = sub_4F84(v53, v54, &v61);

            *(v50 + 4) = v55;
            _os_log_impl(&dword_0, v47, v48, "Publish accepted data but sent warning. warning=%{public}s", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v51);

            return (*(v9 + 8))(v52, v58);
          }

          else
          {

            sub_5849C(v5, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
            return (*(v9 + 8))(v46, v8);
          }
        }
      }
    }

    else
    {
      v26 = sub_1508();
      (*(v9 + 16))(v17, v26, v8);
      sub_584FC(a1, v7, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
      v27 = sub_5C054();
      v28 = sub_5C2B4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v58 = v8;
        v30 = v29;
        v31 = swift_slowAlloc();
        v60 = v25;
        v32 = v31;
        v61 = v31;
        *v30 = 134218242;
        *(v30 + 4) = v60;
        *(v30 + 12) = 2082;
        Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse.partialSuccess.getter(v24);
        sub_5849C(v7, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
        v33 = v24[1];
        v34 = v24[2];

        sub_5849C(v24, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsPartialSuccess);
        v35 = sub_4F84(v33, v34, &v61);

        *(v30 + 14) = v35;
        _os_log_impl(&dword_0, v27, v28, "Publish rejected data points. rejected_data_points=%ld error=%{public}s", v30, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v32);
        v25 = v60;

        (*(v9 + 8))(v17, v58);
      }

      else
      {

        sub_5849C(v7, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
        (*(v9 + 8))(v17, v8);
      }

      sub_5FD0();
      swift_allocError();
      *v56 = v25;
      *(v56 + 8) = 1;
      return swift_willThrow();
    }
  }

  else
  {
    v36 = sub_1508();
    (*(v9 + 16))(v13, v36, v8);
    v37 = sub_5C054();
    v38 = sub_5C2C4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "Publish completed", v39, 2u);
    }

    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

uint64_t MetricsService.export(_:metadata:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a4;
  v6[7] = a5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v7 = sub_5BB34();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = *(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = *v5;
  v6[15] = v14;
  v6[16] = v15;

  return _swift_task_switch(sub_57DC4, 0, 0);
}

uint64_t sub_57DC4()
{
  v1 = v0[4];
  Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest.init()(v0[15]);
  v36 = *(v1 + 16);
  if (v36)
  {
    v2 = 0;
    v3 = v0[13];
    v32 = v0[11];
    v33 = *(v3 + 72);
    v34 = v0[4] + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    do
    {
      v5 = v0[14];
      sub_584FC(v34 + v2 * v33, v5, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);
      v6 = *v5;

      sub_5849C(v5, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = *v0[15];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_17AF4(0, v8[2] + 1, 1, v8);
        }

        v9 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v10 = v6 + v9;
        v11 = *(v32 + 72);
        do
        {
          sub_584FC(v10, v0[12], type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
          v13 = v8[2];
          v12 = v8[3];
          if (v13 >= v12 >> 1)
          {
            v8 = sub_17AF4(v12 > 1, v13 + 1, 1, v8);
          }

          v14 = v0[12];
          v8[2] = v13 + 1;
          sub_18454(v14, v8 + v9 + v13 * v11);
          v10 += v11;
          --v7;
        }

        while (v7);
        v4 = v0[15];

        *v4 = v8;
      }

      else
      {
      }

      ++v2;
    }

    while (v2 != v36);
  }

  v15 = v0[10];
  v16 = v0[7];
  v17 = v0[5];
  v0[2] = v0[16];

  Metadata.init(dict:)(v18);
  v19 = *(v16 + 16);
  v20 = *(v16 + 24);
  v21 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_MetricsService.Client();
  v22 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  v23 = sub_3DDEC();
  v25 = v24;
  v0[17] = v24;
  v26 = swift_task_alloc();
  v0[18] = v26;
  *v26 = v0;
  v26[1] = sub_58098;
  v27 = v0[15];
  v28 = v0[10];
  v29 = v0[6];
  v30 = v0[3];

  return sub_3DE08(v30, v27, v28, v29, v23, v25, v21, v22);
}

uint64_t sub_58098()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v8 = sub_582F4;
  }

  else
  {
    v8 = sub_58248;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_58248()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  sub_5849C(v0[15], type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);

  v4 = v0[1];

  return v4();
}

uint64_t sub_582F4()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  sub_5849C(v0[15], type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_583D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B30;

  return MetricsService.export(_:metadata:options:)(a1, a2, a3, a4, a5);
}

uint64_t sub_5849C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_584FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_5856C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_58650(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_58698(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t LogsService.init(wrapping:)@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1();
  *a1 = result;
  return result;
}

uint64_t static LogsService.request(fromUTF8Data:)(uint64_t a1, unint64_t a2)
{
  v4 = *(*(sub_5BD04() - 8) + 64);
  off_70C68();
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  sub_D038(a1, a2);
  sub_587EC();
  sub_5BCF4();
  return sub_5BEE4();
}

unint64_t sub_587EC()
{
  result = qword_78850;
  if (!qword_78850)
  {
    type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78850);
  }

  return result;
}

uint64_t static LogsService.handle(response:)(uint64_t a1)
{
  v2 = *(*(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) - 8) + 64);
  v3 = (off_70C68)();
  v5 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70C68(v3);
  v7 = &v57 - v6;
  v8 = sub_5C074();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = off_70C68(v8);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = off_70C68(v11);
  v59 = &v57 - v15;
  off_70C68(v14);
  v17 = &v57 - v16;
  v18 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = off_70C68(v18 - 8);
  v22 = (&v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70C68(v20);
  v24 = (&v57 - v23);
  if (Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.hasPartialSuccess.getter())
  {
    Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.getter(v24);
    v25 = *v24;
    sub_59944(v24, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
    if (v25 < 1)
    {
      Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.getter(v22);
      v42 = v22[1];
      v41 = v22[2];

      sub_59944(v22, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
      if (v42)
      {
        v43 = 0;
      }

      else
      {
        v43 = v41 == 0xE000000000000000;
      }

      if (v43)
      {
      }

      else
      {
        v44 = sub_5C3A4();

        if ((v44 & 1) == 0)
        {
          v45 = sub_1508();
          v46 = v59;
          (*(v9 + 16))(v59, v45, v8);
          sub_599A4(a1, v5, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
          v47 = sub_5C054();
          v48 = sub_5C2B4();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            v58 = v8;
            v50 = v49;
            v51 = swift_slowAlloc();
            v61 = v51;
            *v50 = 136446210;
            Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.getter(v24);
            sub_59944(v5, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
            v52 = v46;
            v53 = v24[1];
            v54 = v24[2];

            sub_59944(v24, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
            v55 = sub_4F84(v53, v54, &v61);

            *(v50 + 4) = v55;
            _os_log_impl(&dword_0, v47, v48, "Publish accepted data but sent warning. warning=%{public}s", v50, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v51);

            return (*(v9 + 8))(v52, v58);
          }

          else
          {

            sub_59944(v5, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
            return (*(v9 + 8))(v46, v8);
          }
        }
      }
    }

    else
    {
      v26 = sub_1508();
      (*(v9 + 16))(v17, v26, v8);
      sub_599A4(a1, v7, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
      v27 = sub_5C054();
      v28 = sub_5C2B4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v58 = v8;
        v30 = v29;
        v31 = swift_slowAlloc();
        v60 = v25;
        v32 = v31;
        v61 = v31;
        *v30 = 134218242;
        *(v30 + 4) = v60;
        *(v30 + 12) = 2082;
        Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.getter(v24);
        sub_59944(v7, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
        v33 = v24[1];
        v34 = v24[2];

        sub_59944(v24, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
        v35 = sub_4F84(v33, v34, &v61);

        *(v30 + 14) = v35;
        _os_log_impl(&dword_0, v27, v28, "Publish rejected log records rejected_log_records=%ld error=%{public}s", v30, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v32);
        v25 = v60;

        (*(v9 + 8))(v17, v58);
      }

      else
      {

        sub_59944(v7, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
        (*(v9 + 8))(v17, v8);
      }

      sub_5FD0();
      swift_allocError();
      *v56 = v25;
      *(v56 + 8) = 0;
      return swift_willThrow();
    }
  }

  else
  {
    v36 = sub_1508();
    (*(v9 + 16))(v13, v36, v8);
    v37 = sub_5C054();
    v38 = sub_5C2C4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_0, v37, v38, "Publish completed", v39, 2u);
    }

    return (*(v9 + 8))(v13, v8);
  }

  return result;
}

uint64_t LogsService.export(_:metadata:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a4;
  v6[7] = a5;
  v6[4] = a2;
  v6[5] = a3;
  v6[3] = a1;
  v7 = sub_5BB34();
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) - 8);
  v6[11] = v10;
  v11 = *(v10 + 64) + 15;
  v6[12] = swift_task_alloc();
  v12 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0) - 8);
  v6[13] = v12;
  v13 = *(v12 + 64) + 15;
  v6[14] = swift_task_alloc();
  v14 = swift_task_alloc();
  v15 = *v5;
  v6[15] = v14;
  v6[16] = v15;

  return _swift_task_switch(sub_59094, 0, 0);
}

uint64_t sub_59094()
{
  v1 = v0[4];
  Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.init()(v0[15]);
  v36 = *(v1 + 16);
  if (v36)
  {
    v2 = 0;
    v3 = v0[13];
    v32 = v0[11];
    v33 = *(v3 + 72);
    v34 = v0[4] + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    do
    {
      v5 = v0[14];
      sub_599A4(v34 + v2 * v33, v5, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);
      v6 = *v5;

      sub_59944(v5, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);
      v7 = *(v6 + 16);
      if (v7)
      {
        v8 = *v0[15];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_5976C(0, v8[2] + 1, 1, v8);
        }

        v9 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v10 = v6 + v9;
        v11 = *(v32 + 72);
        do
        {
          sub_599A4(v10, v0[12], type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
          v13 = v8[2];
          v12 = v8[3];
          if (v13 >= v12 >> 1)
          {
            v8 = sub_5976C(v12 > 1, v13 + 1, 1, v8);
          }

          v14 = v0[12];
          v8[2] = v13 + 1;
          sub_59A0C(v14, v8 + v9 + v13 * v11);
          v10 += v11;
          --v7;
        }

        while (v7);
        v4 = v0[15];

        *v4 = v8;
      }

      else
      {
      }

      ++v2;
    }

    while (v2 != v36);
  }

  v15 = v0[10];
  v16 = v0[7];
  v17 = v0[5];
  v0[2] = v0[16];

  Metadata.init(dict:)(v18);
  v19 = *(v16 + 16);
  v20 = *(v16 + 24);
  v21 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_LogsService.Client();
  v22 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  v23 = sub_4EDE4();
  v25 = v24;
  v0[17] = v24;
  v26 = swift_task_alloc();
  v0[18] = v26;
  *v26 = v0;
  v26[1] = sub_59368;
  v27 = v0[15];
  v28 = v0[10];
  v29 = v0[6];
  v30 = v0[3];

  return sub_4EE00(v30, v27, v28, v29, v23, v25, v21, v22);
}

uint64_t sub_59368()
{
  v2 = *(*v1 + 144);
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 80);
  v6 = *(*v1 + 72);
  v7 = *(*v1 + 64);
  v10 = *v1;
  *(*v1 + 152) = v0;

  (*(v6 + 8))(v5, v7);

  if (v0)
  {
    v8 = sub_595C4;
  }

  else
  {
    v8 = sub_59518;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_59518()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  sub_59944(v0[15], type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);

  v4 = v0[1];

  return v4();
}

uint64_t sub_595C4()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[10];
  sub_59944(v0[15], type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);

  v4 = v0[1];
  v5 = v0[19];

  return v4();
}

uint64_t sub_596A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B30;

  return LogsService.export(_:metadata:options:)(a1, a2, a3, a4, a5);
}

size_t sub_5976C(size_t result, int64_t a2, char a3, void *a4)
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
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_780E0, &unk_5EF70);
  v10 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) - 8);
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
  v15 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) - 8);
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

uint64_t sub_59944(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_599A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_59A0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_59A70()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Int sub_59ACC()
{
  sub_5C454();
  sub_5C464(0);
  return sub_5C474();
}

Swift::Int sub_59B38()
{
  sub_5C454();
  sub_5C464(0);
  return sub_5C474();
}

uint64_t LogExporter.__allocating_init(config:urlSession:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  LogExporter.init(config:urlSession:)(a1, a2);
  return v4;
}

void *LogExporter.init(config:urlSession:)(uint64_t a1, void *a2)
{
  v4 = v2;
  v7 = *v2;
  v8 = *(*(type metadata accessor for OTLPExporterConfiguration() - 8) + 64);
  v9 = (off_70C80)();
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70C80(v9);
  v13 = &v20 - v12;
  v14 = type metadata accessor for LogExporterConfiguration();
  v15 = *(*(v14 - 8) + 64);
  off_70C80(v14 - 8);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_59E50(a1, v17, type metadata accessor for LogExporterConfiguration);
  sub_6810(v17, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789C0, &qword_63990);
  sub_59E50(v13, v11, type metadata accessor for OTLPExporterConfiguration);
  v18 = sub_5A738(v11, a2);

  sub_5AA50(a1, type metadata accessor for LogExporterConfiguration);
  sub_5AA50(v13, type metadata accessor for OTLPExporterConfiguration);
  if (v3)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v4[2] = v18;
  }

  return v4;
}

uint64_t type metadata accessor for LogExporterConfiguration()
{
  result = qword_80830;
  if (!qword_80830)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_59E50(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t LogExporter.export(jsonEvent:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_5BD04() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_59FB8, 0, 0);
}

uint64_t sub_59FB8()
{
  v1 = v0[2];
  v5 = JSONEvent.toOTLPData()();
  v7 = v6;
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  sub_D038(v5, v6);
  sub_5BCF4();
  sub_587EC();
  sub_5BEE4();
  if (*(v0[3] + 16))
  {
    v12 = v0[6];
    OTLPGRPCClient.enqueue(request:)();
  }

  sub_5AA50(v0[6], type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);
  sub_D08C(v5, v7);
  v2 = v0[6];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t LogExporter.export(logEvent:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_5BD04() - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  v2[5] = v4;
  v5 = *(*(v4 - 8) + 64) + 15;
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_5A1F4, 0, 0);
}

uint64_t sub_5A1F4()
{
  v1 = v0[2];
  v5 = LogEvent.toOTLPData()();
  v7 = v6;
  v9 = v0[5];
  v8 = v0[6];
  v10 = v0[4];
  sub_D038(v5, v6);
  sub_5BCF4();
  sub_587EC();
  sub_5BEE4();
  if (*(v0[3] + 16))
  {
    v12 = v0[6];
    OTLPGRPCClient.enqueue(request:)();
  }

  sub_5AA50(v0[6], type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);
  sub_D08C(v5, v7);
  v2 = v0[6];
  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_5A390()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[3] = v1;
    *v1 = v0;
    v1[1] = sub_416C;

    return OTLPGRPCClient.run()();
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> LogExporter.gracefulShutdown()()
{
  if (*(v0 + 16))
  {
    OTLPGRPCClient.gracefulShutdown()();
  }
}

uint64_t LogExporter.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t LogExporter.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t default argument 1 of OTLPGRPCClient<>.init(inProcessTransport:configuration:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789C8, &qword_639B0);
  v3 = *(*(v2 - 8) + 64);
  off_70C80(v2 - 8);
  v5 = &v18 - v4;
  sub_5B974();
  v6 = sub_5B984();
  result = (*(*(v6 - 8) + 48))(v5, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v8 = sub_529A4();
    v9 = sub_5B3A0();
    v11 = v10;
    v12 = sub_5B3B4();
    v14 = v13;
    v15 = sub_5B3C8();
    v16 = sub_5B3B4();
    return OTLPExporterConfiguration.init(endpoint:timeout:metadata:defaultBackoff:maxBackoff:maxBufferSize:bufferFlushTimeout:)(v5, 0, 0, 1, v8, v9, v11, v12, a1, v14, v15, v16, v17);
  }

  return result;
}

uint64_t OTLPGRPCClient<>.init(inProcessTransport:configuration:)(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for OTLPExporterConfiguration();
  v6 = *(*(v5 - 8) + 64);
  off_70C80(v5 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  sub_59E50(a2, v8, type metadata accessor for OTLPExporterConfiguration);
  v9 = *(v2 + 136);

  v10 = v9(&v13, v8);
  sub_5AA50(a2, type metadata accessor for OTLPExporterConfiguration);

  return v10;
}

uint64_t sub_5A738(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = *(*(type metadata accessor for OTLPExporterConfiguration() - 8) + 64);
  off_70C80();
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_5C094() - 8) + 64);
  off_70C80();
  v10 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_789B0, &qword_63618) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70C80();
  v12 = &v25 - v11;
  v13 = *(*(sub_5BA94() - 8) + 64);
  off_70C80();
  v14 = *(*(sub_5B984() - 8) + 64);
  off_70C80();
  (*(v16 + 16))(&v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v17 = sub_5BA84();
  (*(*(v17 - 8) + 56))(v12, 1, 1, v17);
  v18 = a2;
  sub_5BA74();
  sub_5C084();
  v19 = sub_5C0B4();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  swift_allocObject();
  v26 = sub_5C0A4();
  sub_59E50(a1, v8, type metadata accessor for OTLPExporterConfiguration);
  v22 = *(v3 + 136);

  v23 = v22(&v26, v8);
  sub_5AA50(a1, type metadata accessor for OTLPExporterConfiguration);

  return v23;
}

uint64_t sub_5AA50(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_5AAB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789D0, qword_639B8);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_5AB28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_789D0, qword_639B8);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_5ABB0(uint64_t a1)
{
  sub_5AC68();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for OTLPExporterConfiguration();
    v3 = v5;
    if (v6 <= 0x3F)
    {
      *(*(a1 - 8) + 84) = *(*(v5 - 8) + 84);
      return 0;
    }
  }

  return v3;
}

void sub_5AC68()
{
  if (!qword_789D8)
  {
    v0 = type metadata accessor for OTLPExporterConfiguration();
    if (!v1)
    {
      atomic_store(v0, &qword_789D8);
    }
  }
}

uint64_t getEnumTagSinglePayload for LogExporter.ExporterType(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for LogExporter.ExporterType(_WORD *result, int a2, int a3)
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

unint64_t sub_5ADF8()
{
  result = qword_80840[0];
  if (!qword_80840[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_80840);
  }

  return result;
}

uint64_t sub_5AE4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_5B984();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_5AEB4(uint64_t a1)
{
  v3 = sub_5B984();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_5AF2C()
{
  v1 = (v0 + *(type metadata accessor for OTLPExporterConfiguration() + 20));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t type metadata accessor for OTLPExporterConfiguration()
{
  result = qword_80950;
  if (!qword_80950)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_5AFA4(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for OTLPExporterConfiguration();
  v8 = v3 + *(result + 20);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t sub_5B038()
{
  v1 = *(v0 + *(type metadata accessor for OTLPExporterConfiguration() + 24));
}

uint64_t sub_5B06C(uint64_t a1)
{
  v3 = *(type metadata accessor for OTLPExporterConfiguration() + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_5B0F4()
{
  v1 = (v0 + *(type metadata accessor for OTLPExporterConfiguration() + 28));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_5B11C(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for OTLPExporterConfiguration();
  v6 = (v2 + *(result + 28));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_5B1A4()
{
  v1 = (v0 + *(type metadata accessor for OTLPExporterConfiguration() + 32));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_5B1CC(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for OTLPExporterConfiguration();
  v6 = (v2 + *(result + 32));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_5B278(uint64_t a1)
{
  result = type metadata accessor for OTLPExporterConfiguration();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t sub_5B2F0()
{
  v1 = (v0 + *(type metadata accessor for OTLPExporterConfiguration() + 40));
  result = *v1;
  v3 = v1[1];
  return result;
}

uint64_t sub_5B318(uint64_t a1, uint64_t a2)
{
  result = type metadata accessor for OTLPExporterConfiguration();
  v6 = (v2 + *(result + 40));
  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t OTLPExporterConfiguration.init(endpoint:timeout:metadata:defaultBackoff:maxBackoff:maxBufferSize:bufferFlushTimeout:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = type metadata accessor for OTLPExporterConfiguration();
  v20 = a9 + v19[5];
  v21 = sub_5B984();
  result = (*(*(v21 - 8) + 32))(a9, a1, v21);
  *v20 = a2;
  *(v20 + 8) = a3;
  *(v20 + 16) = a4 & 1;
  *(a9 + v19[6]) = a5;
  v23 = (a9 + v19[7]);
  *v23 = a6;
  v23[1] = a7;
  v24 = (a9 + v19[8]);
  *v24 = a8;
  v24[1] = a10;
  *(a9 + v19[9]) = a11;
  v25 = (a9 + v19[10]);
  *v25 = a12;
  v25[1] = a13;
  return result;
}

uint64_t sub_5B504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_5B984();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_5B5D4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_5B984();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

void sub_5B68C()
{
  sub_5B984();
  if (v0 <= 0x3F)
  {
    sub_5B744();
    if (v1 <= 0x3F)
    {
      sub_1878C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_5B744()
{
  if (!qword_789E0)
  {
    v0 = sub_5C2D4();
    if (!v1)
    {
      atomic_store(v0, &qword_789E0);
    }
  }
}

uint64_t dispatch thunk of OTLPServiceProtocol.export(_:metadata:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 64);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_1B30;

  return v17(a1, a2, a3, a4, a5, a6);
}