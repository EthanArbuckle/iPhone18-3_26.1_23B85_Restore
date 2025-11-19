uint64_t sub_187E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78078, &qword_5EEE8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Gauge.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Gauge.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Gauge.dimensions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Gauge.unit.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Gauge.unit.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Gauge.startTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Gauge() + 28);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Gauge()
{
  result = qword_79E40;
  if (!qword_79E40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Gauge.startTimeStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Gauge() + 28);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Gauge.lastUpdateTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Gauge() + 32);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Gauge.lastUpdateTimeStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Gauge() + 32);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Gauge.value.setter(double a1)
{
  result = type metadata accessor for Gauge();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t Gauge.init(name:dimensions:unit:value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>, double a7@<D0>)
{
  *a6 = a1;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  v9 = type metadata accessor for Gauge();
  *(a6 + v9[9]) = a7;
  v10 = a6 + v9[7];
  sub_5B9A4();
  v11 = a6 + v9[8];
  return sub_5B9A4();
}

Swift::Void __swiftcall Gauge.set(_:)(Swift::Double a1)
{
  v3 = sub_5B9B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  off_70A10();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Gauge();
  *(v1 + *(v8 + 36)) = a1;
  sub_5B9A4();
  (*(v4 + 40))(v1 + *(v8 + 32), v7, v3);
}

uint64_t Gauge.toOTLPData(serviceName:globalDimensions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v93 = a2;
  v92 = a1;
  v6 = sub_5BD24();
  v103 = *(v6 - 8);
  v104 = v6;
  v7 = *(v103 + 64);
  (off_70A10)();
  v102 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData(0);
  v9 = *(*(v100 - 8) + 64);
  (off_70A10)();
  v101 = (&v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) - 8);
  v11 = *(v99 + 64);
  v12 = (off_70A10)();
  v105 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70A10(v12);
  v15 = &v85 - v14;
  v16 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  v98 = *(v16 - 8);
  v17 = *(v98 + 64);
  off_70A10(v16 - 8);
  v108 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v96 = *(v94 - 8);
  v19 = *(v96 + 64);
  off_70A10(v94);
  v21 = &v85 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0);
  v23 = *(*(v22 - 8) + 64);
  off_70A10(v22 - 8);
  v107 = (&v85 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0);
  v87 = *(v25 - 8);
  v26 = *(v87 + 64);
  off_70A10(v25 - 8);
  v28 = &v85 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v30 = *(*(v29 - 8) + 64);
  v31 = off_70A10(v29 - 8);
  v95 = &v85 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70A10(v31);
  v34 = (&v85 - v33);
  v35 = v4[1];
  v89 = *v4;
  v88 = v35;
  v36 = v4[2];
  v37 = type metadata accessor for Gauge();
  v38 = v37[8];
  v86 = *(v4 + v37[9]);
  v39 = v4[4];
  v91 = v4[3];
  v90 = v39;
  v40 = v37[7];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v110 = a3;
  v42 = v109;
  sub_1814C(v36, sub_18104, 0, isUniquelyReferenced_nonNull_native, &v110);
  v97 = v42;

  v43 = v110;
  v106 = v34;
  Opentelemetry_Proto_Resource_V1_Resource.init()(v34);
  v44 = (v4 + v40);
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

  v44 = (v4 + v38);
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
    v58 = v107;
    Opentelemetry_Proto_Metrics_V1_Gauge.init()(v107);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78238, &unk_5F8D0);
    v59 = *(v87 + 72);
    v60 = (*(v87 + 80) + 32) & ~*(v87 + 80);
    v61 = swift_allocObject();
    *(v61 + 16) = v109;
    sub_199E4(v28, v61 + v60, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
    v62 = *v58;

    *v58 = v61;
    Opentelemetry_Proto_Metrics_V1_Metric.init()(v21);
    v63 = *(v21 + 1);
    v64 = v88;

    *v21 = v89;
    *(v21 + 1) = v64;
    v65 = *(v21 + 5);
    v66 = v90;

    *(v21 + 4) = v91;
    *(v21 + 5) = v66;
    v67 = *(v94 + 28);
    sub_60C4(&v21[v67], &qword_78240, &qword_5FB10);
    sub_199E4(v58, &v21[v67], type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    v68 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v68 - 8) + 56))(&v21[v67], 0, 1, v68);
    v69 = v108;
    Opentelemetry_Proto_Metrics_V1_ScopeMetrics.init()(v108);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78248, &qword_5F8E0);
    v70 = *(v96 + 72);
    v71 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = v109;
    sub_199E4(v21, v72 + v71, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
    v73 = *v69;

    *v69 = v72;
    Opentelemetry_Proto_Metrics_V1_ResourceMetrics.init()(v15);
    v74 = v95;
    sub_199E4(v53, v95, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
    Opentelemetry_Proto_Metrics_V1_ResourceMetrics.resource.setter(v74);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78250, &qword_5F8E8);
    v75 = *(v98 + 72);
    v76 = (*(v98 + 80) + 32) & ~*(v98 + 80);
    v77 = swift_allocObject();
    *(v77 + 16) = v109;
    sub_199E4(v69, v77 + v76, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    v78 = *v15;

    *v15 = v77;
    v34 = v101;
    Opentelemetry_Proto_Metrics_V1_MetricsData.init()(v101);
    sub_199E4(v15, v105, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    v44 = *v34;
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
  *v34 = v44;
  sub_5BD14();
  sub_184B8();
  v83 = sub_5BED4();
  (*(v103 + 8))(v80, v79);
  sub_19A4C(v34, type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData);
  sub_19A4C(v15, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
  sub_19A4C(v108, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
  sub_19A4C(v21, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
  sub_19A4C(v107, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
  sub_19A4C(v28, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
  sub_19A4C(v106, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  return v83;
}

uint64_t sub_19958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_5B9B4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_199E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19A4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_19AC0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_19B80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_19C24()
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

uint64_t Histogram.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Histogram.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Histogram.dimensions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t Histogram.unit.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t Histogram.unit.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Histogram.startTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Histogram() + 28);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Histogram()
{
  result = qword_79E50;
  if (!qword_79E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Histogram.startTimeStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Histogram() + 28);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Histogram.lastUpdateTimeStamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Histogram() + 32);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Histogram.lastUpdateTimeStamp.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Histogram() + 32);
  v4 = sub_5B9B4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Histogram.count.setter(uint64_t a1)
{
  result = type metadata accessor for Histogram();
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t Histogram.sum.setter(double a1)
{
  result = type metadata accessor for Histogram();
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t Histogram.bucketBounds.getter()
{
  v1 = *(v0 + *(type metadata accessor for Histogram() + 44));
}

uint64_t Histogram.bucketBounds.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Histogram() + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

void Histogram.init(name:dimensions:unit:sum:bucketBounds:bucketCounts:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>, double a9@<D0>)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  v13 = type metadata accessor for Histogram();
  v14 = a8 + v13[7];
  sub_5B9A4();
  v15 = a8 + v13[8];
  sub_5B9A4();
  *(a8 + v13[11]) = a6;
  if (a7)
  {
    v16 = *(a6 + 16) + 1;
    if (v16 == *(a7 + 16))
    {
      sub_1B288(0, v16, 0);
      v17 = 32;
      v18 = _swiftEmptyArrayStorage;
      while (1)
      {
        v19 = *(a7 + v17);
        if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          goto LABEL_23;
        }

        if (v19 <= -1.0)
        {
          goto LABEL_24;
        }

        if (v19 >= 1.84467441e19)
        {
          goto LABEL_25;
        }

        v21 = _swiftEmptyArrayStorage[2];
        v20 = _swiftEmptyArrayStorage[3];
        if (v21 >= v20 >> 1)
        {
          sub_1B288((v20 > 1), v21 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v21 + 1;
        _swiftEmptyArrayStorage[v21 + 4] = v19;
        v17 += 8;
        if (!--v16)
        {

          goto LABEL_15;
        }
      }
    }
  }

  else
  {
  }

  v22 = *(a6 + 16);

  v23 = sub_5C164();
  v18 = v23;
  v23[2] = v22 + 1;
  v23[4] = 0;
  if (v22)
  {
    bzero(v23 + 5, 8 * v22);
  }

LABEL_15:
  *(a8 + v13[12]) = v18;
  v24 = v18[2];
  if (!v24)
  {
    v25 = 0;
LABEL_21:
    *(a8 + v13[9]) = v25;
    *(a8 + v13[10]) = a9;
    return;
  }

  v25 = 0;
  v26 = v18 + 4;
  while (1)
  {
    v27 = *v26++;
    v28 = __CFADD__(v25, v27);
    v25 += v27;
    if (v28)
    {
      break;
    }

    if (!--v24)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
}

Swift::Void __swiftcall Histogram.record(_:)(Swift::Double a1)
{
  v3 = sub_5B9B4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  off_70A28();
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_5B9A4();
  v8 = type metadata accessor for Histogram();
  (*(v4 + 40))(v1 + *(v8 + 32), v7, v3);
  v9 = *(v8 + 36);
  v10 = *(v1 + v9);
  v11 = __CFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
    goto LABEL_17;
  }

  *(v1 + v9) = v12;
  *(v1 + *(v8 + 40)) = *(v1 + *(v8 + 40)) + a1;
  v13 = *(v1 + *(v8 + 44));
  v3 = *(v13 + 16);
  if (!v3)
  {
LABEL_17:
    __break(1u);
LABEL_18:
    v8 = sub_1B3AC(v8);
LABEL_5:
    v15 = *(v8 + 16);
    if (v3 >= v15)
    {
      __break(1u);
    }

    else
    {
      v15 = v8 + 32;
      v16 = *(v8 + 32 + 8 * v3);
      v11 = __CFADD__(v16, 1);
      v17 = v16 + 1;
      if (!v11)
      {
        *(v15 + 8 * v3) = v17;
        *(v1 + v7) = v8;
        return;
      }
    }

    __break(1u);
LABEL_21:
    v24 = v8;
    v25 = v15;
    v26 = sub_1B3AC(v24);
    v15 = v25;
    v8 = v26;
LABEL_12:
    if (v15 >= *(v8 + 16))
    {
      __break(1u);
    }

    else
    {
      v21 = v8 + 8 * v7;
      v22 = *(v21 + 24);
      v11 = __CFADD__(v22, 1);
      v23 = v22 + 1;
      if (!v11)
      {
        *(v21 + 24) = v23;
        *(v1 + v3) = v8;
        return;
      }
    }

    __break(1u);
    return;
  }

  v14 = v13 + 32;
  if (*(v14 + 8 * v3 - 8) < a1)
  {
    v7 = *(v8 + 48);
    v8 = *(v1 + v7);
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  v18 = 0;
  while (v3 != v18)
  {
    v7 = v18 + 1;
    v19 = *(v14 + 8 * v18++);
    if (v19 >= a1)
    {
      v3 = *(v8 + 48);
      v8 = *(v1 + v3);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v15 = v7 - 1;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_12;
    }
  }
}

uint64_t Histogram.toOTLPData(serviceName:globalDimensions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v100 = a2;
  v99 = a1;
  v6 = sub_5BD24();
  v111 = *(v6 - 8);
  v112 = v6;
  v7 = *(v111 + 64);
  (off_70A28)();
  v110 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData(0);
  v9 = *(*(v107 - 8) + 64);
  (off_70A28)();
  v109 = (&v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v106 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) - 8);
  v11 = *(v106 + 64);
  v12 = (off_70A28)();
  v113 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70A28(v12);
  v108 = &v91 - v14;
  v15 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  v105 = *(v15 - 8);
  v16 = *(v105 + 64);
  off_70A28(v15 - 8);
  v116 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v103 = *(v101 - 8);
  v18 = *(v103 + 64);
  off_70A28(v101);
  v20 = &v91 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0);
  v22 = *(*(v21 - 8) + 64);
  off_70A28(v21 - 8);
  v115 = &v91 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v96 = *(v24 - 8);
  v25 = *(v96 + 64);
  off_70A28(v24 - 8);
  v27 = (&v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v29 = *(*(v28 - 8) + 64);
  v30 = off_70A28(v28 - 8);
  v102 = &v91 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70A28(v30);
  v33 = &v91 - v32;
  v34 = v4[1];
  v98 = *v4;
  v97 = v34;
  v35 = v4[2];
  v36 = type metadata accessor for Histogram();
  v38 = v36[7];
  v37 = v36[8];
  v39 = v36[12];
  v40 = *(v4 + v36[11]);
  v41 = v36[10];
  v92 = *(v4 + v36[9]);
  v42 = *(v4 + v41);
  v43 = v4[4];
  v95 = v4[3];
  v94 = v43;
  v93 = *(v4 + v39);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v118 = a3;
  v45 = v117;
  sub_1814C(v35, sub_18104, 0, isUniquelyReferenced_nonNull_native, &v118);
  v104 = v45;

  v46 = v118;
  v114 = v33;
  Opentelemetry_Proto_Resource_V1_Resource.init()(v33);
  v47 = (v4 + v38);
  sub_5B994();
  v49 = v48 * 1000000000.0;
  if (COERCE__INT64(fabs(v48 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v49 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v49 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v47 = (v4 + v37);
  sub_5B994();
  v51 = v50 * 1000000000.0;
  if ((*&v51 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v51 <= -1.0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v51 < 1.84467441e19)
  {
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78070, &qword_5EEE0);
    inited = swift_initStackObject();
    v117 = xmmword_5EBD0;
    *(inited + 16) = xmmword_5EBD0;
    strcpy((inited + 32), "service.name");
    *(inited + 72) = &type metadata for String;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = v99;
    *(inited + 56) = v100;

    v54 = sub_981C(inited);
    swift_setDeallocating();
    sub_60C4(inited + 32, &qword_78078, &qword_5EEE8);
    v55 = Array<A>.init(from:)(v54);
    v56 = v114;
    v57 = *v114;

    *v56 = v55;
    Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.init()(v27);
    v27[1] = v49;
    v27[2] = v52;
    v27[3] = v92;
    Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.sum.setter(v42);
    v58 = v27[5];

    v27[5] = v40;
    v59 = v27[4];
    v60 = v93;

    v27[4] = v60;
    v61 = sub_17740(v46);

    v62 = Array<A>.init(from:)(v61);
    v63 = *v27;

    *v27 = v62;
    v64 = v115;
    Opentelemetry_Proto_Metrics_V1_Histogram.init()(v115);
    *(v64 + 8) = 2;
    *(v64 + 16) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78278, &unk_5F9E0);
    v65 = *(v96 + 72);
    v66 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = v117;
    sub_1B4C4(v27, v67 + v66, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint);
    v68 = *v64;

    *v64 = v67;
    Opentelemetry_Proto_Metrics_V1_Metric.init()(v20);
    v69 = *(v20 + 1);
    v70 = v97;

    *v20 = v98;
    *(v20 + 1) = v70;
    v71 = *(v20 + 5);
    v72 = v94;

    *(v20 + 4) = v95;
    *(v20 + 5) = v72;
    v73 = *(v101 + 28);
    sub_60C4(&v20[v73], &qword_78240, &qword_5FB10);
    sub_1B4C4(v64, &v20[v73], type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
    v74 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v74 - 8) + 56))(&v20[v73], 0, 1, v74);
    v75 = v116;
    Opentelemetry_Proto_Metrics_V1_ScopeMetrics.init()(v116);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78248, &qword_5F8E0);
    v76 = *(v103 + 72);
    v77 = (*(v103 + 80) + 32) & ~*(v103 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = v117;
    sub_1B4C4(v20, v78 + v77, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
    v79 = *v75;

    *v75 = v78;
    v33 = v108;
    Opentelemetry_Proto_Metrics_V1_ResourceMetrics.init()(v108);
    v80 = v102;
    sub_1B4C4(v56, v102, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
    Opentelemetry_Proto_Metrics_V1_ResourceMetrics.resource.setter(v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78250, &qword_5F8E8);
    v81 = *(v105 + 72);
    v82 = (*(v105 + 80) + 32) & ~*(v105 + 80);
    v83 = swift_allocObject();
    *(v83 + 16) = v117;
    sub_1B4C4(v75, v83 + v82, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    v84 = *v33;

    *v33 = v83;
    v46 = v109;
    Opentelemetry_Proto_Metrics_V1_MetricsData.init()(v109);
    sub_1B4C4(v33, v113, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    v47 = *v46;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_8;
    }

    goto LABEL_17;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  v47 = sub_17AF4(0, v47[2] + 1, 1, v47);
LABEL_8:
  v85 = v112;
  v86 = v110;
  v88 = v47[2];
  v87 = v47[3];
  if (v88 >= v87 >> 1)
  {
    v47 = sub_17AF4(v87 > 1, v88 + 1, 1, v47);
  }

  v47[2] = v88 + 1;
  sub_18454(v113, v47 + ((*(v106 + 80) + 32) & ~*(v106 + 80)) + *(v106 + 72) * v88);
  *v46 = v47;
  sub_5BD14();
  sub_184B8();
  v89 = sub_5BED4();
  (*(v111 + 8))(v86, v85);
  sub_1B52C(v46, type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData);
  sub_1B52C(v33, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
  sub_1B52C(v116, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
  sub_1B52C(v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
  sub_1B52C(v115, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
  sub_1B52C(v27, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint);
  sub_1B52C(v114, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  return v89;
}

char *sub_1B288(char *a1, int64_t a2, char a3)
{
  result = sub_1B2A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B2A8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78290, qword_5FA60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B3C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78290, qword_5FA60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

uint64_t sub_1B4C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B52C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B5A0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1B660(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1B704()
{
  sub_1878C();
  if (v0 <= 0x3F)
  {
    sub_5B9B4();
    if (v1 <= 0x3F)
    {
      sub_1B7F4(319, &qword_78280);
      if (v2 <= 0x3F)
      {
        sub_1B7F4(319, &qword_78288);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7F4(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_5C1A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

unint64_t Opentelemetry_Proto_Metrics_V1_AggregationTemporality.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

unint64_t sub_1B904@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

void *sub_1B934@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 3uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B95C(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A70();

  return Enum.hash(into:)(a1, a2, v4);
}

unint64_t Opentelemetry_Proto_Metrics_V1_DataPointFlags.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_DataPointFlags.rawValue.getter()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

unint64_t sub_1BA18@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1BA30()
{
  v1 = *v0 == 0;
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

void *sub_1BA5C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result >= 2uLL;
  *a2 = *result;
  v3 = !v2;
  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

void sub_1BA78(void *a1@<X8>)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    v2 = *v1 != 0;
  }

  *a1 = v2;
}

Swift::Int sub_1BA9C()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_5C454();
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_1BB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_393FC();

  return Enum.hash(into:)(a1, a2, v4);
}

Swift::Int sub_1BB58()
{
  v2 = *v0;
  v3 = *(v0 + 8);
  sub_5C454();
  sub_5C104();
  return sub_5C474();
}

BOOL sub_1BBC0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*(a1 + 8))
  {
    v2 = *a1 != 0;
  }

  v3 = *a2 != 0;
  if (!*(a2 + 8))
  {
    v3 = *a2;
  }

  return v2 == v3;
}

uint64_t Opentelemetry_Proto_Metrics_V1_MetricsData.resourceMetrics.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ResourceMetrics.resource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70AC0();
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78298, &qword_5FB00);
  v7 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  Opentelemetry_Proto_Resource_V1_Resource.init()(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_78298, &qword_5FB00);
  }

  return result;
}

uint64_t sub_1BE74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70AC0();
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  sub_A024(a1 + *(v7 + 28), v6, &qword_78298, &qword_5FB00);
  v8 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C814(v6, a2, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  Opentelemetry_Proto_Resource_V1_Resource.init()(a2);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_78298, &qword_5FB00);
  }

  return result;
}

uint64_t sub_1BFCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70AC0();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF34(a1, v8, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  v9 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) + 28);
  sub_60C4(a2 + v9, &qword_78298, &qword_5FB00);
  sub_1C814(v8, a2 + v9, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ResourceMetrics.resource.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) + 28);
  sub_60C4(v1 + v3, &qword_78298, &qword_5FB00);
  sub_1C814(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  v4 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Metrics_V1_ResourceMetrics.resource.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00) - 8) + 64);
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
  v8 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
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
  v14 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) + 28);
  *(v4 + 12) = v14;
  sub_A024(v1 + v14, v7, &qword_78298, &qword_5FB00);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    Opentelemetry_Proto_Resource_V1_Resource.init()(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_78298, &qword_5FB00);
    }
  }

  else
  {
    sub_1C814(v7, v13, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  return sub_1C3C4;
}

void sub_1C3C4(uint64_t **a1, char a2)
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
    sub_1CF34((*a1)[5], v4, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
    sub_60C4(v9 + v3, &qword_78298, &qword_5FB00);
    sub_1C814(v4, v9 + v3, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  else
  {
    sub_60C4(v9 + v3, &qword_78298, &qword_5FB00);
    sub_1C814(v5, v9 + v3, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ScopeMetrics.scope.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70AC0();
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_782A0, &qword_5FB08);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  Opentelemetry_Proto_Common_V1_InstrumentationScope.init()(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_782A0, &qword_5FB08);
  }

  return result;
}

uint64_t sub_1C814(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C87C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70AC0();
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  sub_A024(a1 + *(v7 + 28), v6, &qword_782A0, &qword_5FB08);
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C814(v6, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  Opentelemetry_Proto_Common_V1_InstrumentationScope.init()(a2);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_782A0, &qword_5FB08);
  }

  return result;
}

uint64_t sub_1C9D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70AC0();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF34(a1, v8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  v9 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0) + 28);
  sub_60C4(a2 + v9, &qword_782A0, &qword_5FB08);
  sub_1C814(v8, a2 + v9, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ScopeMetrics.scope.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0) + 28);
  sub_60C4(v1 + v3, &qword_782A0, &qword_5FB08);
  sub_1C814(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Metrics_V1_ScopeMetrics.scope.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08) - 8) + 64);
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
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
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
  v14 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0) + 28);
  *(v4 + 12) = v14;
  sub_A024(v1 + v14, v7, &qword_782A0, &qword_5FB08);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    Opentelemetry_Proto_Common_V1_InstrumentationScope.init()(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_782A0, &qword_5FB08);
    }
  }

  else
  {
    sub_1C814(v7, v13, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  return sub_1CDCC;
}

void sub_1CDCC(uint64_t **a1, char a2)
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
    sub_1CF34((*a1)[5], v4, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
    sub_60C4(v9 + v3, &qword_782A0, &qword_5FB08);
    sub_1C814(v4, v9 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  else
  {
    sub_60C4(v9 + v3, &qword_782A0, &qword_5FB08);
    sub_1C814(v5, v9 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

uint64_t sub_1CF34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CF9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_1D038(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70AC0();
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_A024(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_60C4(v11, a1, a2);
  return v14;
}

uint64_t sub_1D170(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_60C4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ScopeMetrics.schemaURL.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ScopeMetrics.schemaURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_1D2DC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1D378(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1D46C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
{
  *a3 = &_swiftEmptyArrayStorage;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0xE000000000000000;
  v5 = a1(0);
  v6 = &a3[*(v5 + 24)];
  sub_5BCD4();
  v7 = *(v5 + 28);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t sub_1D538@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.description_p.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.description_p.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.unit.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.unit.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.data.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);

  return sub_1D828(a1, v3);
}

uint64_t sub_1D828(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.gauge.getter@<X0>(void *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70AC0();
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78240, &qword_5FB10);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_60C4(v5, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    }

    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a1 = _swiftEmptyArrayStorage;
  v8 = a1 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0) + 20);
  return sub_5BCD4();
}

uint64_t sub_1DA5C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70AC0();
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v7 + 28), v6, &qword_78240, &qword_5FB10);
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_60C4(v6, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      return sub_1C814(v6, a2, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    }

    sub_1CF9C(v6, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a2 = _swiftEmptyArrayStorage;
  v9 = a2 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0) + 20);
  return sub_5BCD4();
}

uint64_t sub_1DC54@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = &_swiftEmptyArrayStorage;
  v2 = a2 + *(a1(0) + 20);
  return sub_5BCD4();
}

void (*Opentelemetry_Proto_Metrics_V1_Metric.gauge.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64);
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
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0);
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
  v12 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  *(v4 + 12) = v12;
  sub_A024(v1 + v12, v7, &qword_78240, &qword_5FB10);
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1C814(v7, v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
      return sub_1DEF0;
    }

    sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *v11 = _swiftEmptyArrayStorage;
  v15 = v11 + *(v8 + 20);
  sub_5BCD4();
  return sub_1DEF0;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.sum.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70AC0();
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78240, &qword_5FB10);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_60C4(v5, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
    }

    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v9 = a1 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0) + 28);
  return sub_5BCD4();
}

uint64_t Opentelemetry_Proto_Metrics_V1_Sum.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v1 = a1 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0) + 28);
  return sub_5BCD4();
}

void (*Opentelemetry_Proto_Metrics_V1_Metric.sum.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64);
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
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0);
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
  v12 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  *(v4 + 12) = v12;
  sub_A024(v1 + v12, v7, &qword_78240, &qword_5FB10);
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
LABEL_15:
    *v11 = _swiftEmptyArrayStorage;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    v15 = v11 + *(v8 + 28);
    sub_5BCD4();
    return sub_1E3E8;
  }

  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    goto LABEL_15;
  }

  sub_1C814(v7, v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
  return sub_1E3E8;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.histogram.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70AC0();
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78240, &qword_5FB10);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_60C4(v5, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
    }

    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v9 = a1 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0) + 24);
  return sub_5BCD4();
}

void (*Opentelemetry_Proto_Metrics_V1_Metric.histogram.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64);
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
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0);
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
  v12 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  *(v4 + 12) = v12;
  sub_A024(v1 + v12, v7, &qword_78240, &qword_5FB10);
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
LABEL_15:
    *v11 = _swiftEmptyArrayStorage;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    v15 = v11 + *(v8 + 24);
    sub_5BCD4();
    return sub_1E8B0;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    goto LABEL_15;
  }

  sub_1C814(v7, v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
  return sub_1E8B0;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.exponentialHistogram.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70AC0();
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78240, &qword_5FB10);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_60C4(v5, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
    }

    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v9 = a1 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0) + 24);
  return sub_5BCD4();
}

uint64_t sub_1EB18@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = a2 + *(a1(0) + 24);
  return sub_5BCD4();
}

void (*Opentelemetry_Proto_Metrics_V1_Metric.exponentialHistogram.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64);
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
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0);
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
  v12 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  *(v4 + 12) = v12;
  sub_A024(v1 + v12, v7, &qword_78240, &qword_5FB10);
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
LABEL_15:
    *v11 = _swiftEmptyArrayStorage;
    *(v11 + 8) = 0;
    *(v11 + 16) = 1;
    v15 = v11 + *(v8 + 24);
    sub_5BCD4();
    return sub_1EDC8;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    goto LABEL_15;
  }

  sub_1C814(v7, v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
  return sub_1EDC8;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.summary.getter@<X0>(void *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70AC0();
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78240, &qword_5FB10);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_60C4(v5, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C814(v5, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    }

    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a1 = _swiftEmptyArrayStorage;
  v9 = a1 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0) + 20);
  return sub_5BCD4();
}

uint64_t sub_1EF8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70AC0();
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v7 + 28), v6, &qword_78240, &qword_5FB10);
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) == 1)
  {
    sub_60C4(v6, &qword_78240, &qword_5FB10);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      return sub_1C814(v6, a2, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    }

    sub_1CF9C(v6, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  *a2 = _swiftEmptyArrayStorage;
  v10 = a2 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0) + 20);
  return sub_5BCD4();
}

uint64_t sub_1F154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v11 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70AC0();
  v13 = &v17 - v12;
  sub_1CF34(a1, &v17 - v12, a6);
  v14 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  sub_60C4(a2 + v14, &qword_78240, &qword_5FB10);
  sub_1C814(v13, a2 + v14, a7);
  v15 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v15 - 8) + 56))(a2 + v14, 0, 1, v15);
}

uint64_t sub_1F290(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  sub_60C4(v2 + v5, &qword_78240, &qword_5FB10);
  sub_1C814(a1, v2 + v5, a2);
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  swift_storeEnumTagMultiPayload();
  v7 = *(*(v6 - 8) + 56);

  return v7(v2 + v5, 0, 1, v6);
}

void (*Opentelemetry_Proto_Metrics_V1_Metric.summary.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10) - 8) + 64);
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
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0);
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
  v12 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  *(v4 + 12) = v12;
  sub_A024(v1 + v12, v7, &qword_78240, &qword_5FB10);
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v4[4] = v13;
  v14 = *(v13 - 8);
  v4[5] = v14;
  if ((*(v14 + 48))(v7, 1, v13) == 1)
  {
    sub_60C4(v7, &qword_78240, &qword_5FB10);
LABEL_15:
    *v11 = _swiftEmptyArrayStorage;
    v15 = v11 + *(v8 + 20);
    sub_5BCD4();
    return sub_1F5CC;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
    sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    goto LABEL_15;
  }

  sub_1C814(v7, v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
  return sub_1F5CC;
}

void sub_1F610(uint64_t **a1, char a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v7 = *a1;
  v8 = (*a1)[4];
  v9 = (*a1)[5];
  v10 = *(*a1 + 12);
  v11 = (*a1)[2];
  v12 = (*a1)[3];
  v13 = **a1;
  v15 = (*a1)[1];
  if (a2)
  {
    sub_1CF34(v12, v11, a5);
    sub_60C4(v13 + v10, &qword_78240, &qword_5FB10);
    sub_1C814(v11, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
    sub_1CF9C(v12, a6);
  }

  else
  {
    sub_60C4(v13 + v10, &qword_78240, &qword_5FB10);
    sub_1C814(v12, v13 + v10, a3);
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v13 + v10, 0, 1, v8);
  }

  free(v12);
  free(v11);
  free(v15);

  free(v7);
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.metadata.getter()
{
  v1 = *(v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 32));
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.metadata.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 32);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  *(a1 + 4) = 0;
  *(a1 + 5) = 0xE000000000000000;
  v2 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v3 = v2[7];
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  *&a1[v2[8]] = &_swiftEmptyArrayStorage;
  v5 = &a1[v2[9]];
  return sub_5BCD4();
}

uint64_t sub_1F9F4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1FA90(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

void Opentelemetry_Proto_Metrics_V1_Sum.aggregationTemporality.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Sum.aggregationTemporality.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Sum.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0) + 28);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_Sum.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0) + 28);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

void Opentelemetry_Proto_Metrics_V1_NumberDataPoint.value.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.value.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

double Opentelemetry_Proto_Metrics_V1_NumberDataPoint.asDouble.getter()
{
  result = *(v0 + 24);
  if (*(v0 + 32))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_20008@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *(result + 24);
  if (*(result + 32))
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

void *sub_20024(void *result, uint64_t a2)
{
  *(a2 + 24) = *result;
  *(a2 + 32) = 0;
  return result;
}

void *(*Opentelemetry_Proto_Metrics_V1_NumberDataPoint.asDouble.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  v2 = *(v1 + 24);
  if (*(v1 + 32))
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_2007C;
}

void *sub_2007C(void *result)
{
  v1 = result[1];
  *(v1 + 24) = *result;
  *(v1 + 32) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.asInt.getter()
{
  v1 = *(v0 + 32);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    return 0;
  }

  else
  {
    return *(v0 + 24);
  }
}

uint64_t sub_200AC@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 32);
  if (v2 == 255 || (v2 & 1) == 0)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = *(result + 24);
  }

  return result;
}

void *sub_200D0(void *result, uint64_t a2)
{
  *(a2 + 24) = *result;
  *(a2 + 32) = 1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.asInt.setter(uint64_t result)
{
  *(v1 + 24) = result;
  *(v1 + 32) = 1;
  return result;
}

void *(*Opentelemetry_Proto_Metrics_V1_NumberDataPoint.asInt.modify(void *a1))(void *result)
{
  a1[1] = v1;
  v2 = *(v1 + 32);
  if (v2 == 255 || (v2 & 1) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 24);
  }

  *a1 = v3;
  return sub_20138;
}

void *sub_20138(void *result)
{
  v1 = result[1];
  *(v1 + 24) = *result;
  *(v1 + 32) = 1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.exemplars.setter(uint64_t a1)
{
  v3 = *(v1 + 40);

  *(v1 + 40) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0) + 40);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0) + 40);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = -1;
  *(a1 + 40) = &_swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  v1 = a1 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0) + 40);
  return sub_5BCD4();
}

double Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.sum.getter()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 52);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_2041C@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v5 = a1 + *(result + 52);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20468(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v5 = a2 + *(result + 52);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.sum.setter(double a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v4 = v1 + *(result + 52);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.sum.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 52);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_395A4;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.clearSum()()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 52);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.bucketCounts.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.exemplars.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.min.setter(double a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.min.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 56);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_395A4;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.clearMin()()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 56);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.max.getter()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 60);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_20824@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v5 = a1 + *(result + 60);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_20870(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v5 = a2 + *(result + 60);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.max.setter(double a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v4 = v1 + *(result + 60);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.max.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 60);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_20950;
}

uint64_t sub_20950(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.clearMax()()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 60);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 48);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 48);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = _swiftEmptyArrayStorage;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  *(a1 + 48) = _swiftEmptyArrayStorage;
  *(a1 + 56) = 0;
  v2 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v3 = a1 + v2[12];
  result = sub_5BCD4();
  v5 = a1 + v2[13];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = a1 + v2[14];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1 + v2[15];
  *v7 = 0;
  *(v7 + 8) = 1;
  return result;
}

double sub_20C28(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 56);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_20C80@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, double *a3@<X8>)
{
  result = a2(0);
  v6 = a1 + *(result + 56);
  v7 = *v6;
  if (*(v6 + 8))
  {
    v7 = 0.0;
  }

  *a3 = v7;
  return result;
}

uint64_t sub_20CE8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  result = a5(0);
  v8 = a2 + *(result + 56);
  *v8 = v6;
  *(v8 + 8) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.sum.setter(double a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.sum.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 56);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_395A4;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.clearSum()()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 56);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.positive.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  v4 = *(*(v3 - 8) + 64);
  off_70AC0(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(v1 + *(v7 + 60), v6, &qword_782A8, &qword_5FB18);
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C814(v6, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  *a1 = 0;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  v10 = a1 + *(v8 + 24);
  sub_5BCD4();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_782A8, &qword_5FB18);
  }

  return result;
}

uint64_t sub_20FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  v5 = *(*(v4 - 8) + 64);
  off_70AC0(v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(a1 + *(v8 + 60), v7, &qword_782A8, &qword_5FB18);
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C814(v7, a2, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  *a2 = 0;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  v11 = a2 + *(v9 + 24);
  sub_5BCD4();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_60C4(v7, &qword_782A8, &qword_5FB18);
  }

  return result;
}

uint64_t sub_21160(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70AC0(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF34(a1, v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  v9 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 60);
  sub_60C4(a2 + v9, &qword_782A8, &qword_5FB18);
  sub_1C814(v8, a2 + v9, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.positive.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 60);
  sub_60C4(v1 + v3, &qword_782A8, &qword_5FB18);
  sub_1C814(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0) + 24);
  return sub_5BCD4();
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.positive.modify(void *a1))()
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18) - 8) + 64);
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
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
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
  v14 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 60);
  *(v4 + 12) = v14;
  sub_A024(v1 + v14, v7, &qword_782A8, &qword_5FB18);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = _swiftEmptyArrayStorage;
    v16 = v13 + *(v8 + 24);
    sub_5BCD4();
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_782A8, &qword_5FB18);
    }
  }

  else
  {
    sub_1C814(v7, v13, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  return sub_39584;
}

BOOL Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.hasPositive.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  v2 = *(*(v1 - 8) + 64);
  off_70AC0(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(v0 + *(v5 + 60), v4, &qword_782A8, &qword_5FB18);
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_60C4(v4, &qword_782A8, &qword_5FB18);
  return v7;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.clearPositive()()
{
  v1 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 60);
  sub_60C4(v0 + v1, &qword_782A8, &qword_5FB18);
  v2 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.negative.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  v4 = *(*(v3 - 8) + 64);
  off_70AC0(v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(v1 + *(v7 + 64), v6, &qword_782A8, &qword_5FB18);
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C814(v6, a1, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  *a1 = 0;
  *(a1 + 8) = _swiftEmptyArrayStorage;
  v10 = a1 + *(v8 + 24);
  sub_5BCD4();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_782A8, &qword_5FB18);
  }

  return result;
}

uint64_t sub_21898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  v5 = *(*(v4 - 8) + 64);
  off_70AC0(v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(a1 + *(v8 + 64), v7, &qword_782A8, &qword_5FB18);
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C814(v7, a2, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  *a2 = 0;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  v11 = a2 + *(v9 + 24);
  sub_5BCD4();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_60C4(v7, &qword_782A8, &qword_5FB18);
  }

  return result;
}

uint64_t sub_21A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70AC0(v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF34(a1, v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  v9 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 64);
  sub_60C4(a2 + v9, &qword_782A8, &qword_5FB18);
  sub_1C814(v8, a2 + v9, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.negative.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 64);
  sub_60C4(v1 + v3, &qword_782A8, &qword_5FB18);
  sub_1C814(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.negative.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18) - 8) + 64);
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
  v8 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
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
  v14 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 64);
  *(v4 + 12) = v14;
  sub_A024(v1 + v14, v7, &qword_782A8, &qword_5FB18);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    *v13 = 0;
    *(v13 + 8) = _swiftEmptyArrayStorage;
    v16 = v13 + *(v8 + 24);
    sub_5BCD4();
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_782A8, &qword_5FB18);
    }
  }

  else
  {
    sub_1C814(v7, v13, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  return sub_21E10;
}

void sub_21E10(uint64_t **a1, char a2)
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
    sub_1CF34((*a1)[5], v4, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
    sub_60C4(v9 + v3, &qword_782A8, &qword_5FB18);
    sub_1C814(v4, v9 + v3, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1CF9C(v5, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  }

  else
  {
    sub_60C4(v9 + v3, &qword_782A8, &qword_5FB18);
    sub_1C814(v5, v9 + v3, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.hasNegative.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  v2 = *(*(v1 - 8) + 64);
  off_70AC0(v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(v0 + *(v5 + 64), v4, &qword_782A8, &qword_5FB18);
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_60C4(v4, &qword_782A8, &qword_5FB18);
  return v7;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.clearNegative()()
{
  v1 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 64);
  sub_60C4(v0 + v1, &qword_782A8, &qword_5FB18);
  v2 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.exemplars.setter(uint64_t a1)
{
  v3 = *(v1 + 56);

  *(v1 + 56) = a1;
  return result;
}

double Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.min.getter()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 68);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_221A4@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v5 = a1 + *(result + 68);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_221F0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v5 = a2 + *(result + 68);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.min.setter(double a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v4 = v1 + *(result + 68);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.min.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 68);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_395A4;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.clearMin()()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 68);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.max.getter()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 72);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_22368@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v5 = a1 + *(result + 72);
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0.0;
  }

  *a2 = v6;
  return result;
}

uint64_t sub_223B4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v5 = a2 + *(result + 72);
  *v5 = v3;
  *(v5 + 8) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.max.setter(double a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v4 = v1 + *(result + 72);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.max.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 72);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_395A4;
}

Swift::Void __swiftcall Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.clearMax()()
{
  v1 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 72);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 52);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 52);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets.bucketCounts.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = _swiftEmptyArrayStorage;
  *(a1 + 64) = 0;
  v2 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v3 = a1 + v2[13];
  sub_5BCD4();
  v4 = a1 + v2[14];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = v2[15];
  v6 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v7 = *(*(v6 - 8) + 56);
  v7(a1 + v5, 1, 1, v6);
  result = (v7)(a1 + v2[16], 1, 1, v6);
  v9 = a1 + v2[17];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v2[18];
  *v10 = 0;
  *(v10 + 8) = 1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0) + 44);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0) + 44);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return sub_5BCD4();
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = _swiftEmptyArrayStorage;
  *(a1 + 48) = 0;
  v1 = a1 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0) + 44);
  return sub_5BCD4();
}

void Opentelemetry_Proto_Metrics_V1_Exemplar.value.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.value.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

double Opentelemetry_Proto_Metrics_V1_Exemplar.asDouble.getter()
{
  result = *(v0 + 16);
  if (*(v0 + 24))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_22CE8@<X0>(uint64_t result@<X0>, double *a2@<X8>)
{
  v2 = *(result + 16);
  if (*(result + 24))
  {
    v2 = 0.0;
  }

  *a2 = v2;
  return result;
}

void *sub_22D04(void *result, uint64_t a2)
{
  *(a2 + 16) = *result;
  *(a2 + 24) = 0;
  return result;
}

void *(*Opentelemetry_Proto_Metrics_V1_Exemplar.asDouble.modify(uint64_t a1))(void *result)
{
  *(a1 + 8) = v1;
  v2 = *(v1 + 16);
  if (*(v1 + 24))
  {
    v2 = 0.0;
  }

  *a1 = v2;
  return sub_22D5C;
}

void *sub_22D5C(void *result)
{
  v1 = result[1];
  *(v1 + 16) = *result;
  *(v1 + 24) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.asInt.getter()
{
  v1 = *(v0 + 24);
  if (v1 == 255 || (v1 & 1) == 0)
  {
    return 0;
  }

  else
  {
    return *(v0 + 16);
  }
}

uint64_t sub_22D8C@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  if (v2 == 255 || (v2 & 1) == 0)
  {
    *a2 = 0;
  }

  else
  {
    *a2 = *(result + 16);
  }

  return result;
}

void *sub_22DB0(void *result, uint64_t a2)
{
  *(a2 + 16) = *result;
  *(a2 + 24) = 1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.asInt.setter(uint64_t result)
{
  *(v1 + 16) = result;
  *(v1 + 24) = 1;
  return result;
}

void *(*Opentelemetry_Proto_Metrics_V1_Exemplar.asInt.modify(void *a1))(void *result)
{
  a1[1] = v1;
  v2 = *(v1 + 24);
  if (v2 == 255 || (v2 & 1) == 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v1 + 16);
  }

  *a1 = v3;
  return sub_22E18;
}

void *sub_22E18(void *result)
{
  v1 = result[1];
  *(v1 + 16) = *result;
  *(v1 + 24) = 1;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.spanID.getter()
{
  v1 = *(v0 + 32);
  sub_D038(v1, *(v0 + 40));
  return v1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.spanID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_D08C(*(v2 + 32), *(v2 + 40));
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.traceID.getter()
{
  v1 = *(v0 + 48);
  sub_D038(v1, *(v0 + 56));
  return v1;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.traceID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_D08C(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_22F68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 36);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_23004(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 36);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_230D0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if ((*(a1 + 8) & 1) == 0)
  {
    return (*(a2 + 8) & 1) == 0 && (v5 = *a1, v6 = *a2, v2 == v3);
  }

  if (*&v2 == *&v3)
  {
    return *(a2 + 8);
  }

  else
  {
    return 0;
  }
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.init()@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = _swiftEmptyArrayStorage;
  *(a1 + 24) = -1;
  *(a1 + 32) = xmmword_5EFA0;
  *(a1 + 48) = xmmword_5EFA0;
  v1 = a1 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0) + 36);
  return sub_5BCD4();
}

uint64_t sub_23170()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79E68);
  __swift_project_value_buffer(v0, qword_79E68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5FAB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AGGREGATION_TEMPORALITY_UNSPECIFIED";
  *(v6 + 8) = 35;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "AGGREGATION_TEMPORALITY_DELTA";
  *(v10 + 1) = 29;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "AGGREGATION_TEMPORALITY_CUMULATIVE";
  *(v11 + 8) = 34;
  *(v11 + 16) = 2;
  v9();
  return sub_5C034();
}

uint64_t sub_233EC()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79E88);
  __swift_project_value_buffer(v0, qword_79E88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "DATA_POINT_FLAGS_DO_NOT_USE";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DATA_POINT_FLAGS_NO_RECORDED_VALUE_MASK";
  *(v10 + 1) = 39;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_MetricsData.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0), sub_35A28(&qword_782B0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics), result = sub_5BFD4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData(0) + 20);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_23814(void *a1, void *a2, uint64_t (*a3)(void, void), uint64_t (*a4)(void))
{
  if ((a3(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v5 = *(a4(0) + 20);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_23960(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785F8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_23A00(uint64_t a1)
{
  v2 = sub_35A28(&qword_78258, type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_23A6C()
{
  sub_35A28(&qword_78258, type metadata accessor for Opentelemetry_Proto_Metrics_V1_MetricsData);

  return sub_5BF14();
}

uint64_t sub_23B28()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79EC8);
  __swift_project_value_buffer(v0, qword_79EC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5FAB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "resource";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "scope_metrics";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "schema_url";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_ResourceMetrics.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_5BE54();
          break;
        case 2:
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
          sub_35A28(&qword_782C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
          sub_5BE84();
          break;
        case 1:
          v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) + 28);
          type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
          sub_35A28(&qword_78658, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
          sub_5BEB4();
          break;
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ResourceMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_24044(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
      sub_35A28(&qword_782C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
      sub_5BFD4();
    }

    v8 = v5[2];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v5[1] & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_5BFB4();
    }

    v10 = v5 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0) + 24);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_24044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  v6 = *(*(v5 - 8) + 64);
  off_70AC0(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  off_70AC0(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  sub_A024(a1 + *(v14 + 28), v8, &qword_78298, &qword_5FB00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_60C4(v8, &qword_78298, &qword_5FB00);
  }

  sub_1C814(v8, v13, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  sub_35A28(&qword_78658, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  sub_5C004();
  return sub_1CF9C(v13, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
}

uint64_t (*sub_242E0(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_24334(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785F0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_243D4(uint64_t a1)
{
  v2 = sub_35A28(&qword_782B0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_24440()
{
  sub_35A28(&qword_782B0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);

  return sub_5BF14();
}

uint64_t sub_244E8()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79EE8);
  __swift_project_value_buffer(v0, qword_79EE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5FAB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "scope";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "metrics";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "schema_url";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_ScopeMetrics.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_5BE54();
          break;
        case 2:
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
          sub_35A28(&qword_782D0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
          sub_5BE84();
          break;
        case 1:
          v3 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0) + 28);
          type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
          sub_35A28(&qword_781A8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
          sub_5BEB4();
          break;
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ScopeMetrics.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_24A00(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
      sub_35A28(&qword_782D0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
      sub_5BFD4();
    }

    v8 = v5[2];
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = v5[1] & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
      sub_5BFB4();
    }

    v10 = v5 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0) + 24);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_24A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  v6 = *(*(v5 - 8) + 64);
  off_70AC0(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  off_70AC0(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  sub_A024(a1 + *(v14 + 28), v8, &qword_782A0, &qword_5FB08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_60C4(v8, &qword_782A0, &qword_5FB08);
  }

  sub_1C814(v8, v13, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  sub_35A28(&qword_781A8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  sub_5C004();
  return sub_1CF9C(v13, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
}

uint64_t sub_24C80@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = _swiftEmptyArrayStorage;
  *(a3 + 1) = 0;
  *(a3 + 2) = 0xE000000000000000;
  v6 = &a3[*(a1 + 24)];
  sub_5BCD4();
  v7 = *(a1 + 28);
  v8 = a2(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a3[v7], 1, 1, v8);
}

uint64_t sub_24D78(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785E8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_24E18(uint64_t a1)
{
  v2 = sub_35A28(&qword_782C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_24E84()
{
  sub_35A28(&qword_782C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);

  return sub_5BF14();
}

uint64_t sub_24F2C()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79F08);
  __swift_project_value_buffer(v0, qword_79F08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_5FAC0;
  v4 = v24 + v3;
  v5 = v24 + v3 + v1[14];
  *(v24 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_5C024();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "description";
  *(v9 + 8) = 11;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "unit";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "gauge";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 7;
  *v15 = "sum";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 9;
  *v17 = "histogram";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 10;
  *v19 = "exponential_histogram";
  *(v19 + 1) = 21;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 11;
  *v21 = "summary";
  *(v21 + 1) = 7;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 12;
  *v22 = "metadata";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_5BD64();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 6)
      {
        if (result > 2)
        {
          if (result == 3)
          {
            goto LABEL_4;
          }

          if (result == 5)
          {
            sub_254F4(v5, a1, a2, a3);
          }
        }

        else if (result == 1 || result == 2)
        {
LABEL_4:
          sub_5BE54();
        }
      }

      else if (result <= 9)
      {
        if (result == 7)
        {
          sub_25ABC(v5, a1, a2, a3);
        }

        else if (result == 9)
        {
          sub_26084(v5, a1, a2, a3);
        }
      }

      else
      {
        switch(result)
        {
          case 10:
            sub_2664C(v5, a1, a2, a3);
            break;
          case 11:
            sub_26C14(v5, a1, a2, a3);
            break;
          case 12:
            v11 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 32);
            type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
            sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_5BE84();
            break;
        }
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t sub_254F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = off_70AC0(v5);
  v49 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v8);
  v48 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v12 = *(*(v11 - 8) + 64);
  off_70AC0(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = off_70AC0(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78618, &qword_61A30);
  v24 = *(*(v23 - 8) + 64);
  v25 = off_70AC0(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  v47 = a1;
  v45 = v32;
  sub_A024(a1 + v32, v14, &qword_78240, &qword_5FB10);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_60C4(v14, &qword_78240, &qword_5FB10);
    v34 = v15;
    v35 = v53;
  }

  else
  {
    sub_1C814(v14, v22, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    sub_1C814(v22, v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1CF9C(v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
      v35 = v53;
    }

    else
    {
      sub_60C4(v28, &qword_78618, &qword_61A30);
      v36 = v20;
      v37 = v48;
      sub_1C814(v36, v48, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
      sub_1C814(v37, v28, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
      v35 = v53;
      v31(v28, 0, 1, v53);
    }
  }

  v38 = v51;
  sub_35A28(&qword_78418, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
  v39 = v52;
  sub_5BEB4();
  if (v39)
  {
    return sub_60C4(v28, &qword_78618, &qword_61A30);
  }

  sub_A024(v28, v38, &qword_78618, &qword_61A30);
  if ((*(v50 + 48))(v38, 1, v35) == 1)
  {
    sub_60C4(v28, &qword_78618, &qword_61A30);
    return sub_60C4(v38, &qword_78618, &qword_61A30);
  }

  else
  {
    v41 = v49;
    sub_1C814(v38, v49, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    if (v33 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v28, &qword_78618, &qword_61A30);
    v42 = v47;
    v43 = v45;
    sub_60C4(v47 + v45, &qword_78240, &qword_5FB10);
    sub_1C814(v41, v42 + v43, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_25ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = off_70AC0(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v12 = *(*(v11 - 8) + 64);
  off_70AC0(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = off_70AC0(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78620, &qword_61A38);
  v24 = *(*(v23 - 8) + 64);
  v25 = off_70AC0(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  v47 = a1;
  v45 = v32;
  sub_A024(a1 + v32, v14, &qword_78240, &qword_5FB10);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_60C4(v14, &qword_78240, &qword_5FB10);
    v34 = v15;
  }

  else
  {
    sub_1C814(v14, v22, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    sub_1C814(v22, v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_60C4(v28, &qword_78620, &qword_61A38);
      v35 = v20;
      v36 = v49;
      sub_1C814(v35, v49, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
      sub_1C814(v36, v28, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_1CF9C(v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_35A28(&qword_78430, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
  v39 = v52;
  sub_5BEB4();
  if (v39)
  {
    return sub_60C4(v28, &qword_78620, &qword_61A38);
  }

  sub_A024(v28, v38, &qword_78620, &qword_61A38);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_60C4(v28, &qword_78620, &qword_61A38);
    return sub_60C4(v38, &qword_78620, &qword_61A38);
  }

  else
  {
    v41 = v48;
    sub_1C814(v38, v48, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
    if (v33 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v28, &qword_78620, &qword_61A38);
    v42 = v47;
    v43 = v45;
    sub_60C4(v47 + v45, &qword_78240, &qword_5FB10);
    sub_1C814(v41, v42 + v43, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_26084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = off_70AC0(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v12 = *(*(v11 - 8) + 64);
  off_70AC0(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = off_70AC0(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78628, &qword_61A40);
  v24 = *(*(v23 - 8) + 64);
  v25 = off_70AC0(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  v47 = a1;
  v45 = v32;
  sub_A024(a1 + v32, v14, &qword_78240, &qword_5FB10);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_60C4(v14, &qword_78240, &qword_5FB10);
    v34 = v15;
  }

  else
  {
    sub_1C814(v14, v22, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    sub_1C814(v22, v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_60C4(v28, &qword_78628, &qword_61A40);
      v35 = v20;
      v36 = v49;
      sub_1C814(v35, v49, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
      sub_1C814(v36, v28, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_1CF9C(v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_35A28(&qword_78448, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
  v39 = v52;
  sub_5BEB4();
  if (v39)
  {
    return sub_60C4(v28, &qword_78628, &qword_61A40);
  }

  sub_A024(v28, v38, &qword_78628, &qword_61A40);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_60C4(v28, &qword_78628, &qword_61A40);
    return sub_60C4(v38, &qword_78628, &qword_61A40);
  }

  else
  {
    v41 = v48;
    sub_1C814(v38, v48, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
    if (v33 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v28, &qword_78628, &qword_61A40);
    v42 = v47;
    v43 = v45;
    sub_60C4(v47 + v45, &qword_78240, &qword_5FB10);
    sub_1C814(v41, v42 + v43, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_2664C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = off_70AC0(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v12 = *(*(v11 - 8) + 64);
  off_70AC0(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = off_70AC0(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78630, &qword_61A48);
  v24 = *(*(v23 - 8) + 64);
  v25 = off_70AC0(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  v47 = a1;
  v45 = v32;
  sub_A024(a1 + v32, v14, &qword_78240, &qword_5FB10);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_60C4(v14, &qword_78240, &qword_5FB10);
    v34 = v15;
  }

  else
  {
    sub_1C814(v14, v22, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    sub_1C814(v22, v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_60C4(v28, &qword_78630, &qword_61A48);
      v35 = v20;
      v36 = v49;
      sub_1C814(v35, v49, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
      sub_1C814(v36, v28, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_1CF9C(v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_35A28(&qword_78460, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
  v39 = v52;
  sub_5BEB4();
  if (v39)
  {
    return sub_60C4(v28, &qword_78630, &qword_61A48);
  }

  sub_A024(v28, v38, &qword_78630, &qword_61A48);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_60C4(v28, &qword_78630, &qword_61A48);
    return sub_60C4(v38, &qword_78630, &qword_61A48);
  }

  else
  {
    v41 = v48;
    sub_1C814(v38, v48, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
    if (v33 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v28, &qword_78630, &qword_61A48);
    v42 = v47;
    v43 = v45;
    sub_60C4(v47 + v45, &qword_78240, &qword_5FB10);
    sub_1C814(v41, v42 + v43, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t sub_26C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v56 = a4;
  v54 = a2;
  v55 = a3;
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = off_70AC0(v5);
  v48 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v8);
  v49 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v12 = *(*(v11 - 8) + 64);
  off_70AC0(v11 - 8);
  v14 = &v44 - v13;
  v15 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = off_70AC0(v15);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v18);
  v22 = &v44 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78638, &unk_61A50);
  v24 = *(*(v23 - 8) + 64);
  v25 = off_70AC0(v23 - 8);
  v51 = &v44 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v25);
  v28 = &v44 - v27;
  v50 = v6;
  v29 = *(v6 + 56);
  v53 = v5;
  v30 = v5;
  v31 = v29;
  v29(&v44 - v27, 1, 1, v30);
  v32 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0) + 28);
  v47 = a1;
  v45 = v32;
  sub_A024(a1 + v32, v14, &qword_78240, &qword_5FB10);
  v46 = v16;
  v33 = (*(v16 + 48))(v14, 1, v15);
  if (v33 == 1)
  {
    sub_60C4(v14, &qword_78240, &qword_5FB10);
    v34 = v15;
  }

  else
  {
    sub_1C814(v14, v22, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    sub_1C814(v22, v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    v34 = v15;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_60C4(v28, &qword_78638, &unk_61A50);
      v35 = v20;
      v36 = v49;
      sub_1C814(v35, v49, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
      sub_1C814(v36, v28, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
      v37 = v53;
      v31(v28, 0, 1, v53);
      goto LABEL_7;
    }

    sub_1CF9C(v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  }

  v37 = v53;
LABEL_7:
  v38 = v51;
  sub_35A28(&qword_78478, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
  v39 = v52;
  sub_5BEB4();
  if (v39)
  {
    return sub_60C4(v28, &qword_78638, &unk_61A50);
  }

  sub_A024(v28, v38, &qword_78638, &unk_61A50);
  if ((*(v50 + 48))(v38, 1, v37) == 1)
  {
    sub_60C4(v28, &qword_78638, &unk_61A50);
    return sub_60C4(v38, &qword_78638, &unk_61A50);
  }

  else
  {
    v41 = v48;
    sub_1C814(v38, v48, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    if (v33 != 1)
    {
      sub_5BD74();
    }

    sub_60C4(v28, &qword_78638, &unk_61A50);
    v42 = v47;
    v43 = v45;
    sub_60C4(v47 + v45, &qword_78240, &qword_5FB10);
    sub_1C814(v41, v42 + v43, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    swift_storeEnumTagMultiPayload();
    return (*(v46 + 56))(v42 + v43, 0, 1, v34);
  }
}

uint64_t Opentelemetry_Proto_Metrics_V1_Metric.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v9 = *(*(v8 - 8) + 64);
  off_70AC0(v8 - 8);
  v11 = &v24 - v10;
  v12 = *v3;
  v13 = v3[1];
  v14 = HIBYTE(v13) & 0xF;
  if ((v13 & 0x2000000000000000) == 0)
  {
    v14 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v14 || (result = sub_5BFB4(), !v4))
  {
    v16 = v3[3];
    v17 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v17 = v3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (!v17 || (result = sub_5BFB4(), !v4))
    {
      v18 = v3[5];
      v19 = HIBYTE(v18) & 0xF;
      if ((v18 & 0x2000000000000000) == 0)
      {
        v19 = v3[4] & 0xFFFFFFFFFFFFLL;
      }

      if (!v19 || (result = sub_5BFB4(), !v4))
      {
        v20 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
        sub_A024(v3 + v20[7], v11, &qword_78240, &qword_5FB10);
        v21 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
        if ((*(*(v21 - 8) + 48))(v11, 1, v21) == 1)
        {
          goto LABEL_29;
        }

        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload <= 1)
        {
          if (EnumCaseMultiPayload)
          {
            sub_27730(v3, a1, a2, a3);
          }

          else
          {
            sub_274F0(v3, a1, a2, a3);
          }
        }

        else if (EnumCaseMultiPayload == 2)
        {
          sub_27974(v3, a1, a2, a3);
        }

        else if (EnumCaseMultiPayload == 3)
        {
          sub_27BB8(v3, a1, a2, a3);
        }

        else
        {
          sub_27DFC(v3, a1, a2, a3);
        }

        result = sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
        if (!v4)
        {
LABEL_29:
          if (!*(*(v3 + v20[8]) + 16) || (type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0), sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue), result = sub_5BFD4(), !v4))
          {
            v23 = v3 + v20[9];
            return sub_5BCC4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_274F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v6 = *(*(v5 - 8) + 64);
  off_70AC0(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0);
  v10 = *(*(v9 - 8) + 64);
  off_70AC0(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v13 + 28), v8, &qword_78240, &qword_5FB10);
  v14 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_60C4(v8, &qword_78240, &qword_5FB10);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C814(v8, v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    sub_35A28(&qword_78418, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    sub_5C004();
    return sub_1CF9C(v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
  }

  result = sub_1CF9C(v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_27730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v6 = *(*(v5 - 8) + 64);
  off_70AC0(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0);
  v10 = *(*(v9 - 8) + 64);
  off_70AC0(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v13 + 28), v8, &qword_78240, &qword_5FB10);
  v14 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_60C4(v8, &qword_78240, &qword_5FB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C814(v8, v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
    sub_35A28(&qword_78430, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
    sub_5C004();
    return sub_1CF9C(v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
  }

  result = sub_1CF9C(v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_27974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v6 = *(*(v5 - 8) + 64);
  off_70AC0(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0);
  v10 = *(*(v9 - 8) + 64);
  off_70AC0(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v13 + 28), v8, &qword_78240, &qword_5FB10);
  v14 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_60C4(v8, &qword_78240, &qword_5FB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C814(v8, v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
    sub_35A28(&qword_78448, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
    sub_5C004();
    return sub_1CF9C(v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
  }

  result = sub_1CF9C(v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_27BB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v6 = *(*(v5 - 8) + 64);
  off_70AC0(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0);
  v10 = *(*(v9 - 8) + 64);
  off_70AC0(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v13 + 28), v8, &qword_78240, &qword_5FB10);
  v14 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_60C4(v8, &qword_78240, &qword_5FB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C814(v8, v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
    sub_35A28(&qword_78460, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
    sub_5C004();
    return sub_1CF9C(v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
  }

  result = sub_1CF9C(v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_27DFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v6 = *(*(v5 - 8) + 64);
  off_70AC0(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0);
  v10 = *(*(v9 - 8) + 64);
  off_70AC0(v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  sub_A024(a1 + *(v13 + 28), v8, &qword_78240, &qword_5FB10);
  v14 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    sub_60C4(v8, &qword_78240, &qword_5FB10);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C814(v8, v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    sub_35A28(&qword_78478, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    sub_5C004();
    return sub_1CF9C(v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
  }

  result = sub_1CF9C(v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  __break(1u);
  return result;
}

uint64_t sub_2808C@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0xE000000000000000;
  v4 = a1[7];
  v5 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[9];
  *&a2[a1[8]] = _swiftEmptyArrayStorage;
  return sub_5BCD4();
}

uint64_t (*sub_28148(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 36);
  return result;
}

uint64_t sub_2819C(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785E0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2823C(uint64_t a1)
{
  v2 = sub_35A28(&qword_782D0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_282A8()
{
  sub_35A28(&qword_782D0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);

  return sub_5BF14();
}

uint64_t Opentelemetry_Proto_Metrics_V1_Gauge.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0), sub_35A28(&qword_782E8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint), result = sub_5BFD4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0) + 20);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_28584(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785D8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_28624(uint64_t a1)
{
  v2 = sub_35A28(&qword_78418, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_28690()
{
  sub_35A28(&qword_78418, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);

  return sub_5BF14();
}

uint64_t sub_2874C()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79F48);
  __swift_project_value_buffer(v0, qword_79F48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5FAB0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data_points";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "aggregation_temporality";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "is_monotonic";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_Sum.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 3:
          sub_5BD94();
          break;
        case 2:
          sub_35A70();
          sub_5BDA4();
          break;
        case 1:
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0);
          sub_35A28(&qword_782E8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
          sub_5BE84();
          break;
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Sum.traverse<A>(visitor:)()
{
  v2 = v1;
  if (*(*v0 + 16))
  {
    type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0);
    sub_35A28(&qword_782E8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
    result = sub_5BFD4();
    if (v1)
    {
      return result;
    }

    v2 = 0;
  }

  if (*(v0 + 8))
  {
    v6 = *(v0 + 8);
    v7 = *(v0 + 16);
    sub_35A70();
    v4 = v2;
    result = sub_5BF54();
    if (v2)
    {
      return result;
    }
  }

  else
  {
    v4 = v2;
  }

  if (*(v0 + 17) != 1 || (result = sub_5BF44(), !v4))
  {
    v5 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0) + 28);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_28C8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = a2 + *(a1 + 28);
  return sub_5BCD4();
}

uint64_t sub_28CDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_28D50(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_28DC4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_28E18(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785D0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_28EB8(uint64_t a1)
{
  v2 = sub_35A28(&qword_78430, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_28F24()
{
  sub_35A28(&qword_78430, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);

  return sub_5BF14();
}

uint64_t sub_28FCC()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79F68);
  __swift_project_value_buffer(v0, qword_79F68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data_points";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "aggregation_temporality";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_Histogram.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0), sub_35A28(&qword_78308, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint), result = sub_5BFD4(), !v1))
  {
    if (!*(v0 + 8) || (v4 = *(v0 + 8), v5 = *(v0 + 16), sub_35A70(), result = sub_5BF54(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0) + 24);
      return sub_5BCC4();
    }
  }

  return result;
}

uint64_t sub_29404(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785C8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_294A4(uint64_t a1)
{
  v2 = sub_35A28(&qword_78448, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_29510()
{
  sub_35A28(&qword_78448, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);

  return sub_5BF14();
}

uint64_t sub_295B8()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79F88);
  __swift_project_value_buffer(v0, qword_79F88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "data_points";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "aggregation_temporality";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t sub_29824(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
{
  result = sub_5BD64();
  if (!v6)
  {
    while ((v11 & 1) == 0)
    {
      if (result == 1)
      {
        a4(0);
        sub_35A28(a5, a6);
        sub_5BE84();
      }

      else if (result == 2)
      {
        sub_35A70();
        sub_5BDA4();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogram.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0), sub_35A28(&qword_78318, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint), result = sub_5BFD4(), !v1))
  {
    if (!*(v0 + 8) || (v4 = *(v0 + 8), v5 = *(v0 + 16), sub_35A70(), result = sub_5BF54(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0) + 24);
      return sub_5BCC4();
    }
  }

  return result;
}

uint64_t sub_29AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v2 = a2 + *(a1 + 24);
  return sub_5BCD4();
}

uint64_t sub_29B68(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_29C08(uint64_t a1)
{
  v2 = sub_35A28(&qword_78460, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_29C74()
{
  sub_35A28(&qword_78460, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);

  return sub_5BF14();
}

uint64_t sub_29D34(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_5C044();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_5EBD0;
  v12 = v11 + v10 + v8[14];
  *(v11 + v10) = 1;
  *v12 = a3;
  *(v12 + 8) = a4;
  *(v12 + 16) = 2;
  v13 = enum case for _NameMap.NameDescription.standard(_:);
  v14 = sub_5C024();
  (*(*(v14 - 8) + 104))(v12, v13, v14);
  return sub_5C034();
}

uint64_t sub_29F44(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), unint64_t *a5, void (*a6)(uint64_t))
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
      sub_35A28(a5, a6);
      sub_5BE84();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Summary.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0), sub_35A28(&qword_78328, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint), result = sub_5BFD4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0) + 20);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_2A198(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785B8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2A238(uint64_t a1)
{
  v2 = sub_35A28(&qword_78478, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2A2A4()
{
  sub_35A28(&qword_78478, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);

  return sub_5BF14();
}

uint64_t sub_2A338(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if ((a5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_2A40C()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79FC8);
  __swift_project_value_buffer(v0, qword_79FC8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_5EEC0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 7;
  *v4 = "attributes";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = sub_5C024();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "start_time_unix_nano";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "time_unix_nano";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "as_double";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "as_int";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "exemplars";
  *(v16 + 1) = 9;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "flags";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result == 2 || result == 3)
        {
          sub_5BEA4();
        }

        else if (result == 4)
        {
          sub_5BE14();
        }
      }

      else if (result > 6)
      {
        if (result == 7)
        {
          v3 = v0;
          type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
          sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
          goto LABEL_5;
        }

        if (result == 8)
        {
          sub_5BE64();
        }
      }

      else
      {
        if (result == 5)
        {
          v3 = v0;
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
          sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
LABEL_5:
          v0 = v3;
          sub_5BE84();
          goto LABEL_6;
        }

        sub_5BEC4();
      }

LABEL_6:
      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_NumberDataPoint.traverse<A>(visitor:)()
{
  if (!*(v0 + 8) || (result = sub_5BFF4(), !v1))
  {
    result = *(v0 + 16);
    if (!result || (result = sub_5BFF4(), !v1))
    {
      v3 = *(v0 + 24);
      v4 = *(v0 + 32);
      if (v4 != 255 && (v4 & 1) == 0)
      {
        v5 = *(v0 + 24);
        result = sub_5BF94();
      }

      if (!v1)
      {
        if (*(*(v0 + 40) + 16))
        {
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
          sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
          sub_5BFD4();
          v6 = *(v0 + 24);
          v4 = *(v0 + 32);
          if (v4 == 255)
          {
            goto LABEL_16;
          }
        }

        else if (v4 == 255)
        {
LABEL_16:
          if (*(*v0 + 16))
          {
            type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
            sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_5BFD4();
          }

          if (*(v0 + 48))
          {
            sub_5BFC4();
          }

          v7 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0) + 40);
          return sub_5BCC4();
        }

        if (v4)
        {
          sub_5C014();
        }

        goto LABEL_16;
      }
    }
  }

  return result;
}

uint64_t sub_2AC48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = -1;
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = 0;
  v2 = a2 + *(a1 + 40);
  return sub_5BCD4();
}

uint64_t sub_2ACA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2AD18(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2AD8C(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t sub_2ADE0(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785B0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2AE80(uint64_t a1)
{
  v2 = sub_35A28(&qword_782E8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2AEEC()
{
  sub_35A28(&qword_782E8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);

  return sub_5BF14();
}

uint64_t sub_2AF94()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_79FE8);
  __swift_project_value_buffer(v0, qword_79FE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_5FAD0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 9;
  *v5 = "attributes";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_5C024();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "start_time_unix_nano";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "time_unix_nano";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "count";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sum";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "bucket_counts";
  *(v17 + 1) = 13;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "explicit_bounds";
  *(v19 + 1) = 15;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "exemplars";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 10;
  *v22 = "flags";
  *(v22 + 8) = 5;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 11;
  *v24 = "min";
  *(v24 + 1) = 3;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "max";
  *(v26 + 1) = 3;
  v26[16] = 2;
  v8();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 6)
      {
        if (result > 3)
        {
          if (result == 4)
          {
            goto LABEL_4;
          }

          if (result != 5)
          {
            sub_5BE74();
            goto LABEL_5;
          }

          v3 = v0;
          v5 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 52);
LABEL_27:
          v0 = v3;
          sub_5BE14();
          goto LABEL_5;
        }

        if (result == 2 || result == 3)
        {
LABEL_4:
          sub_5BEA4();
        }
      }

      else if (result > 9)
      {
        if (result != 10)
        {
          if (result == 11)
          {
            v3 = v0;
            v6 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 56);
          }

          else
          {
            if (result != 12)
            {
              goto LABEL_5;
            }

            v3 = v0;
            v4 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0) + 60);
          }

          goto LABEL_27;
        }

        sub_5BE64();
      }

      else if (result == 7)
      {
        sub_5BDF4();
      }

      else
      {
        if (result == 8)
        {
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
          sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
        }

        else
        {
          type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
          sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        }

        sub_5BE84();
      }

LABEL_5:
      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_HistogramDataPoint.traverse<A>(visitor:)()
{
  if (!*(v0 + 8) || (result = sub_5BFF4(), !v1))
  {
    if (!*(v0 + 16) || (result = sub_5BFF4(), !v1))
    {
      if (!*(v0 + 24) || (result = sub_5BFF4(), !v1))
      {
        result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
        v3 = result;
        v4 = v0 + *(result + 52);
        if (*(v4 + 8))
        {
          if (v1)
          {
            return result;
          }
        }

        else
        {
          v5 = *v4;
          result = sub_5BF94();
          if (v1)
          {
            return result;
          }
        }

        if (*(*(v0 + 32) + 16))
        {
          sub_5BF64();
        }

        if (*(*(v0 + 40) + 16))
        {
          sub_5BF24();
        }

        if (*(*(v0 + 48) + 16))
        {
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
          sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
          sub_5BFD4();
        }

        if (*(*v0 + 16))
        {
          type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
          sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
          sub_5BFD4();
        }

        if (*(v0 + 56))
        {
          sub_5BFC4();
        }

        sub_2B8D8(v0);
        sub_2B950(v0);
        v6 = v0 + *(v3 + 48);
        return sub_5BCC4();
      }
    }
  }

  return result;
}

uint64_t sub_2B8D8(uint64_t a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v3 = (a1 + *(result + 56));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_5BF94();
  }

  return result;
}

uint64_t sub_2B950(uint64_t a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v3 = (a1 + *(result + 60));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_5BF94();
  }

  return result;
}

uint64_t sub_2BA14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = _swiftEmptyArrayStorage;
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 56) = 0;
  v4 = a2 + a1[12];
  result = sub_5BCD4();
  v6 = a1[14];
  v7 = a2 + a1[13];
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a2 + v6;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = a2 + a1[15];
  *v9 = 0;
  *(v9 + 8) = 1;
  return result;
}

uint64_t sub_2BAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 48);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2BB20(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2BB94(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 48);
  return result;
}

uint64_t sub_2BBE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785A8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2BC88(uint64_t a1)
{
  v2 = sub_35A28(&qword_78308, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2BCF4()
{
  sub_35A28(&qword_78308, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint);

  return sub_5BF14();
}

uint64_t sub_2BD9C()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7A008);
  __swift_project_value_buffer(v0, qword_7A008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_5FAE0;
  v4 = v34 + v3;
  v5 = v34 + v3 + v1[14];
  *(v34 + v3) = 1;
  *v5 = "attributes";
  *(v5 + 8) = 10;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_5C024();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "start_time_unix_nano";
  *(v9 + 8) = 20;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "time_unix_nano";
  *(v11 + 1) = 14;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "count";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sum";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "scale";
  *(v17 + 1) = 5;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "zero_count";
  *(v19 + 1) = 10;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "positive";
  *(v21 + 1) = 8;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "negative";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "flags";
  *(v24 + 1) = 5;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "exemplars";
  *(v26 + 1) = 9;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "min";
  *(v28 + 1) = 3;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "max";
  *(v30 + 1) = 3;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "zero_threshold";
  *(v32 + 1) = 14;
  v32[16] = 2;
  v8();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      switch(result)
      {
        case 1:
          v3 = v0;
          type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
          sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
          goto LABEL_18;
        case 2:
        case 3:
        case 4:
        case 7:
          sub_5BEA4();
          break;
        case 5:
          v4 = v0;
          v6 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 56);
          goto LABEL_12;
        case 6:
          sub_5BE34();
          break;
        case 8:
          v8 = v0;
          v9 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 60);
          goto LABEL_20;
        case 9:
          v8 = v0;
          v10 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 64);
LABEL_20:
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
          sub_35A28(&qword_784C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
          v0 = v8;
          sub_5BEB4();
          break;
        case 10:
          sub_5BE64();
          break;
        case 11:
          v3 = v0;
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
          sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
LABEL_18:
          v0 = v3;
          sub_5BE84();
          break;
        case 12:
          v4 = v0;
          v5 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 68);
          goto LABEL_12;
        case 13:
          v4 = v0;
          v7 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0) + 72);
LABEL_12:
          v0 = v4;
          sub_5BE14();
          break;
        case 14:
          sub_5BE24();
          break;
        default:
          break;
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0), sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue), result = sub_5BFD4(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_5BFF4(), !v4))
    {
      if (!*(v3 + 16) || (result = sub_5BFF4(), !v4))
      {
        if (!*(v3 + 24) || (result = sub_5BFF4(), !v4))
        {
          result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
          v9 = result;
          v10 = v3 + *(result + 56);
          if (*(v10 + 8))
          {
            if (v4)
            {
              return result;
            }
          }

          else
          {
            v11 = *v10;
            result = sub_5BF94();
            if (v4)
            {
              return result;
            }
          }

          if (*(v3 + 32))
          {
            sub_5BFA4();
          }

          if (*(v3 + 40))
          {
            sub_5BFF4();
          }

          sub_2C860(v3, a1, a2, a3);
          sub_2CA7C(v3, a1, a2, a3);
          if (*(v3 + 48))
          {
            sub_5BFC4();
          }

          if (*(*(v3 + 56) + 16))
          {
            type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
            sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
            sub_5BFD4();
          }

          sub_2CC98(v3);
          sub_2CD10(v3);
          if (*(v3 + 64))
          {
            sub_5BF94();
          }

          v12 = v3 + *(v9 + 52);
          return sub_5BCC4();
        }
      }
    }
  }

  return result;
}

uint64_t sub_2C860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  v6 = *(*(v5 - 8) + 64);
  off_70AC0(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  off_70AC0(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(a1 + *(v14 + 60), v8, &qword_782A8, &qword_5FB18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_60C4(v8, &qword_782A8, &qword_5FB18);
  }

  sub_1C814(v8, v13, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  sub_35A28(&qword_784C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  sub_5C004();
  return sub_1CF9C(v13, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
}

uint64_t sub_2CA7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  v6 = *(*(v5 - 8) + 64);
  off_70AC0(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  off_70AC0(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  sub_A024(a1 + *(v14 + 64), v8, &qword_782A8, &qword_5FB18);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_60C4(v8, &qword_782A8, &qword_5FB18);
  }

  sub_1C814(v8, v13, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  sub_35A28(&qword_784C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  sub_5C004();
  return sub_1CF9C(v13, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
}

uint64_t sub_2CC98(uint64_t a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v3 = (a1 + *(result + 68));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_5BF94();
  }

  return result;
}

uint64_t sub_2CD10(uint64_t a1)
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v3 = (a1 + *(result + 72));
  if ((v3[1] & 1) == 0)
  {
    v4 = *v3;
    return sub_5BF94();
  }

  return result;
}

uint64_t sub_2CDD4@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  *(a2 + 56) = _swiftEmptyArrayStorage;
  *(a2 + 64) = 0;
  v4 = a2 + a1[13];
  sub_5BCD4();
  v5 = a1[15];
  v6 = a2 + a1[14];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v8 = *(*(v7 - 8) + 56);
  v8(a2 + v5, 1, 1, v7);
  result = (v8)(a2 + a1[16], 1, 1, v7);
  v10 = a1[18];
  v11 = a2 + a1[17];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 8) = 1;
  return result;
}

uint64_t sub_2CEEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2CF60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2CFD4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_2D028(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_785A0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2D0C8(uint64_t a1)
{
  v2 = sub_35A28(&qword_78318, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2D134()
{
  sub_35A28(&qword_78318, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint);

  return sub_5BF14();
}

void sub_2D1B4()
{
  v0._countAndFlagsBits = 0x7374656B6375422ELL;
  v0._object = 0xE800000000000000;
  sub_5C134(v0);
  qword_7A028 = 0xD00000000000003CLL;
  unk_7A030 = 0x8000000000065B40;
}

uint64_t *sub_2D220()
{
  if (qword_7A020 != -1)
  {
    swift_once();
  }

  return &qword_7A028;
}

uint64_t sub_2D298()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7A040);
  __swift_project_value_buffer(v0, qword_7A040);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "offset";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bucket_counts";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets.decodeMessage<A>(decoder:)()
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
      sub_5BE34();
    }

    else if (result == 2)
    {
      sub_5BE04();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_5BFA4(), !v1))
  {
    if (!*(*(v0 + 8) + 16) || (result = sub_5BF34(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0) + 24);
      return sub_5BCC4();
    }
  }

  return result;
}

uint64_t sub_2D630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = _swiftEmptyArrayStorage;
  v2 = a2 + *(a1 + 24);
  return sub_5BCD4();
}

uint64_t sub_2D6B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_78598, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2D758(uint64_t a1)
{
  v2 = sub_35A28(&qword_784C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2D7C4()
{
  sub_35A28(&qword_784C0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);

  return sub_5BF14();
}

uint64_t sub_2D840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*a1 != *a2 || (sub_30350(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 24);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_2D920()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7A060);
  __swift_project_value_buffer(v0, qword_7A060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_5EEC0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 7;
  *v4 = "attributes";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = enum case for _NameMap.NameDescription.same(_:);
  v6 = sub_5C024();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "start_time_unix_nano";
  *(v8 + 8) = 20;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "time_unix_nano";
  *(v10 + 1) = 14;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "count";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "sum";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "quantile_values";
  *(v16 + 1) = 15;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 8;
  *v18 = "flags";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result <= 4)
      {
        if (result == 2 || result == 3 || result == 4)
        {
          sub_5BEA4();
        }
      }

      else
      {
        if (result <= 6)
        {
          if (result == 5)
          {
            sub_5BE24();
            goto LABEL_5;
          }

          v3 = v0;
          type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0);
          sub_35A28(&qword_78360, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
          goto LABEL_20;
        }

        if (result == 7)
        {
          v3 = v0;
          type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
          sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
LABEL_20:
          v0 = v3;
          sub_5BE84();
          goto LABEL_5;
        }

        if (result == 8)
        {
          sub_5BE64();
        }
      }

LABEL_5:
      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.traverse<A>(visitor:)()
{
  if (!*(v0 + 8) || (result = sub_5BFF4(), !v1))
  {
    if (!*(v0 + 16) || (result = sub_5BFF4(), !v1))
    {
      if (!*(v0 + 24) || (result = sub_5BFF4(), !v1))
      {
        if (!*(v0 + 32) || (result = sub_5BF94(), !v1))
        {
          v3 = v1;
          if (*(*(v0 + 40) + 16))
          {
            type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0);
            sub_35A28(&qword_78360, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
            result = sub_5BFD4();
            if (v1)
            {
              return result;
            }

            v3 = 0;
          }

          if (*(*v0 + 16))
          {
            type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
            sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            v4 = v3;
            result = sub_5BFD4();
            if (v3)
            {
              return result;
            }
          }

          else
          {
            v4 = v3;
          }

          if (!*(v0 + 48) || (result = sub_5BFC4(), !v4))
          {
            v5 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0) + 44);
            return sub_5BCC4();
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2E094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = _swiftEmptyArrayStorage;
  *(a2 + 48) = 0;
  v2 = a2 + *(a1 + 44);
  return sub_5BCD4();
}

uint64_t sub_2E0F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2E164(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 44);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_2E1D8(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 44);
  return result;
}

uint64_t sub_2E22C(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_78590, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2E2CC(uint64_t a1)
{
  v2 = sub_35A28(&qword_78328, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2E338()
{
  sub_35A28(&qword_78328, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);

  return sub_5BF14();
}

void sub_2E3B8()
{
  v0._object = 0x8000000000065C40;
  v0._countAndFlagsBits = 0xD000000000000010;
  sub_5C134(v0);
  qword_7A080 = 0xD00000000000002FLL;
  *algn_7A088 = 0x8000000000065B80;
}

uint64_t *sub_2E42C()
{
  if (qword_7A078 != -1)
  {
    swift_once();
  }

  return &qword_7A080;
}

uint64_t sub_2E4A4(void *a1, void *a2, void *a3)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a3;
    swift_once();
    a2 = v6;
    a3 = v7;
  }

  v3 = *a2;
  v4 = *a3;

  return v3;
}

uint64_t sub_2E500()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7A098);
  __swift_project_value_buffer(v0, qword_7A098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "quantile";
  *(v6 + 8) = 8;
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

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_5BD64();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_5BE24();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_5BF94(), !v1))
  {
    if (!v0[1] || (result = sub_5BF94(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0) + 24);
      return sub_5BCC4();
    }
  }

  return result;
}

uint64_t static Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile.== infix(_:_:)(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0) + 24);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_2E940@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a2 + *(a1 + 24);
  return sub_5BCD4();
}

uint64_t sub_2E98C(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  if (*a3 != -1)
  {
    v8 = a5;
    v9 = a4;
    swift_once();
    a4 = v9;
    a5 = v8;
  }

  v5 = *a4;
  v6 = *a5;

  return v5;
}

uint64_t sub_2E9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2EA60(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2EB04(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_78588, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2EBA4(uint64_t a1)
{
  v2 = sub_35A28(&qword_78360, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2EC10()
{
  sub_35A28(&qword_78360, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);

  return sub_5BF14();
}

uint64_t sub_2EC8C(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_2ED68()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7A0B8);
  __swift_project_value_buffer(v0, qword_7A0B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5FAF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 7;
  *v6 = "filtered_attributes";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.standard(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time_unix_nano";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "as_double";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "as_int";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "span_id";
  *(v16 + 1) = 7;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "trace_id";
  *(v18 + 1) = 8;
  v18[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while (1)
    {
      if (v2)
      {
        return result;
      }

      if (result > 4)
      {
        switch(result)
        {
          case 5:
            goto LABEL_16;
          case 6:
            sub_5BEC4();
            break;
          case 7:
            type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
            sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_5BE84();
            break;
        }
      }

      else
      {
        if (result == 2)
        {
          sub_5BEA4();
          goto LABEL_5;
        }

        if (result != 3)
        {
          if (result != 4)
          {
            goto LABEL_5;
          }

LABEL_16:
          sub_5BDC4();
          goto LABEL_5;
        }

        sub_5BE14();
      }

LABEL_5:
      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Metrics_V1_Exemplar.traverse<A>(visitor:)()
{
  result = *(v0 + 8);
  if (!result || (result = sub_5BFF4(), !v1))
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    if (v4 != 255 && (v4 & 1) == 0)
    {
      v5 = *(v0 + 16);
      result = sub_5BF94();
    }

    if (!v1)
    {
      v6 = *(v0 + 32);
      v7 = *(v0 + 40);
      v8 = v7 >> 62;
      if ((v7 >> 62) > 1)
      {
        if (v8 != 2)
        {
          goto LABEL_17;
        }

        v9 = *(v6 + 16);
        v10 = *(v6 + 24);
      }

      else
      {
        if (!v8)
        {
          if ((v7 & 0xFF000000000000) == 0)
          {
LABEL_17:
            v11 = *(v0 + 48);
            v12 = *(v0 + 56);
            v13 = v12 >> 62;
            if ((v12 >> 62) > 1)
            {
              if (v13 != 2)
              {
                goto LABEL_26;
              }

              v14 = *(v11 + 16);
              v15 = *(v11 + 24);
            }

            else
            {
              if (!v13)
              {
                if ((v12 & 0xFF000000000000) == 0)
                {
LABEL_26:
                  if (v4 != 255 && (v4 & 1) != 0)
                  {
                    sub_5C014();
                  }

                  if (*(*v0 + 16))
                  {
                    type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
                    sub_35A28(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
                    sub_5BFD4();
                  }

                  v16 = v0 + *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0) + 36);
                  return sub_5BCC4();
                }

LABEL_25:
                sub_5BF74();
                goto LABEL_26;
              }

              v14 = v11;
              v15 = v11 >> 32;
            }

            if (v14 == v15)
            {
              goto LABEL_26;
            }

            goto LABEL_25;
          }

LABEL_16:
          sub_5BF74();
          goto LABEL_17;
        }

        v9 = v6;
        v10 = v6 >> 32;
      }

      if (v9 == v10)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  return result;
}

Swift::Int sub_2F4CC(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_5C454();
  a1(0);
  sub_35A28(a2, a3);
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_2F554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 24) = -1;
  *(a2 + 32) = xmmword_5EFA0;
  *(a2 + 48) = xmmword_5EFA0;
  v2 = a2 + *(a1 + 36);
  return sub_5BCD4();
}

uint64_t sub_2F5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_2F628(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_2F6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_35A28(&qword_78580, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_2F76C(uint64_t a1)
{
  v2 = sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_2F7D8()
{
  sub_35A28(&qword_78338, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);

  return sub_5BF14();
}

uint64_t sub_2F858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v5 = *(v4 - 8);
  v106 = v4;
  v107 = v5;
  v6 = *(v5 + 64);
  v7 = (off_70AC0)();
  v9 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v7);
  v11 = &v97 - v10;
  v12 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = off_70AC0(v12);
  v105 = &v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v14);
  v18 = &v97 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (v19 && a1 != a2)
    {
      v20 = 0;
      v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v22 = a1 + v21;
      v101 = a2 + v21;
      v102 = 0;
      v23 = *(v16 + 72);
      v99 = v19;
      v100 = v12;
      v104 = &v97 - v17;
      v97 = v23;
      v98 = v22;
      while (1)
      {
        sub_1CF34(v22 + v23 * v20, v18, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
        if (v20 == v19)
        {
          goto LABEL_132;
        }

        v103 = v20;
        v24 = v105;
        sub_1CF34(v101 + v23 * v20, v105, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
        v25 = *v18;
        v26 = *v24;
        v27 = *(*v18 + 16);
        if (v27 != *(*v24 + 16))
        {
          goto LABEL_127;
        }

        if (v27 && v25 != v26)
        {
          v28 = 0;
          v29 = (*(v107 + 80) + 32) & ~*(v107 + 80);
          v30 = v25 + v29;
          v31 = v26 + v29;
          while (v28 < *(v25 + 16))
          {
            v32 = *(v107 + 72) * v28;
            sub_1CF34(v30 + v32, v11, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            if (v28 >= *(v26 + 16))
            {
              goto LABEL_131;
            }

            sub_1CF34(v31 + v32, v9, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_35A28(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            v33 = sub_5C114();
            sub_1CF9C(v9, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            if ((v33 & 1) == 0)
            {
              goto LABEL_127;
            }

            if (v27 == ++v28)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
        }

LABEL_14:
        if (*(v104 + 1) != *(v105 + 8))
        {
          goto LABEL_127;
        }

        v34 = v104[24];
        v35 = *(v105 + 24);
        if (v34 == 255)
        {
          if (v35 != 255)
          {
            goto LABEL_127;
          }
        }

        else
        {
          if (v35 == 255)
          {
            goto LABEL_127;
          }

          v36 = *(v104 + 2);
          v37 = *(v105 + 16);
          if (v34)
          {
            if ((v35 & 1) == 0 || *&v36 != *&v37)
            {
              goto LABEL_127;
            }
          }

          else if ((v35 & 1) != 0 || (v38 = *(v104 + 2), v39 = *(v105 + 16), v36 != v37))
          {
LABEL_127:
            sub_1CF9C(v105, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
            sub_1CF9C(v104, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
            goto LABEL_128;
          }
        }

        v40 = *(v104 + 4);
        v41 = *(v104 + 5);
        v42 = *(v105 + 32);
        v43 = *(v105 + 40);
        v44 = v41 >> 62;
        v45 = v43 >> 62;
        if (v41 >> 62 == 3)
        {
          break;
        }

        if (v44 > 1)
        {
          if (v44 == 2)
          {
            v52 = *(v40 + 16);
            v51 = *(v40 + 24);
            v49 = __OFSUB__(v51, v52);
            v46 = v51 - v52;
            if (v49)
            {
              goto LABEL_138;
            }

            goto LABEL_41;
          }

          v46 = 0;
          if (v45 <= 1)
          {
            goto LABEL_42;
          }
        }

        else if (v44)
        {
          LODWORD(v46) = HIDWORD(v40) - v40;
          if (__OFSUB__(HIDWORD(v40), v40))
          {
            goto LABEL_137;
          }

          v46 = v46;
          if (v45 <= 1)
          {
LABEL_42:
            if (v45)
            {
              LODWORD(v50) = HIDWORD(v42) - v42;
              if (__OFSUB__(HIDWORD(v42), v42))
              {
                goto LABEL_133;
              }

              v50 = v50;
            }

            else
            {
              v50 = BYTE6(v43);
            }

            goto LABEL_48;
          }
        }

        else
        {
          v46 = BYTE6(v41);
          if (v45 <= 1)
          {
            goto LABEL_42;
          }
        }

LABEL_35:
        if (v45 != 2)
        {
          if (v46)
          {
            goto LABEL_127;
          }

          goto LABEL_74;
        }

        v48 = *(v42 + 16);
        v47 = *(v42 + 24);
        v49 = __OFSUB__(v47, v48);
        v50 = v47 - v48;
        if (v49)
        {
          goto LABEL_134;
        }

LABEL_48:
        if (v46 != v50)
        {
          goto LABEL_127;
        }

        if (v46 < 1)
        {
          goto LABEL_74;
        }

        if (v44 > 1)
        {
          if (v44 != 2)
          {
            memset(v109, 0, 14);
            sub_D038(v42, v43);
LABEL_69:
            v66 = v102;
            sub_13DF0(v109, v42, v43, &v108);
            v102 = v66;
            sub_D08C(v42, v43);
            if (!v108)
            {
              goto LABEL_127;
            }

            goto LABEL_74;
          }

          v53 = *(v40 + 16);
          v54 = *(v40 + 24);
          sub_D038(*(v105 + 32), *(v105 + 40));
          v55 = sub_5B944();
          if (v55)
          {
            v56 = sub_5B964();
            if (__OFSUB__(v53, v56))
            {
              goto LABEL_145;
            }

            v55 += v53 - v56;
          }

          if (__OFSUB__(v54, v53))
          {
            goto LABEL_142;
          }

          sub_5B954();
          v57 = v55;
          v58 = v42;
          v59 = v43;
          v60 = v102;
        }

        else
        {
          if (!v44)
          {
            v109[0] = *(v104 + 4);
            LOWORD(v109[1]) = v41;
            BYTE2(v109[1]) = BYTE2(v41);
            BYTE3(v109[1]) = BYTE3(v41);
            BYTE4(v109[1]) = BYTE4(v41);
            BYTE5(v109[1]) = BYTE5(v41);
            sub_D038(v42, v43);
            goto LABEL_69;
          }

          v61 = v40;
          if (v40 >> 32 < v40)
          {
            goto LABEL_141;
          }

          sub_D038(*(v105 + 32), *(v105 + 40));
          v62 = sub_5B944();
          if (v62)
          {
            v63 = v62;
            v64 = sub_5B964();
            if (__OFSUB__(v61, v64))
            {
              goto LABEL_146;
            }

            v65 = v61 - v64 + v63;
          }

          else
          {
            v65 = 0;
          }

          v60 = v102;
          sub_5B954();
          v57 = v65;
          v58 = v42;
          v59 = v43;
        }

        sub_13DF0(v57, v58, v59, v109);
        v102 = v60;
        sub_D08C(v42, v43);
        if ((v109[0] & 1) == 0)
        {
          goto LABEL_127;
        }

LABEL_74:
        v67 = *(v104 + 6);
        v68 = *(v104 + 7);
        v69 = *(v105 + 48);
        v70 = *(v105 + 56);
        v71 = v68 >> 62;
        v72 = v70 >> 62;
        if (v68 >> 62 == 3)
        {
          v73 = 0;
          if (!v67 && v68 == 0xC000000000000000 && v70 >> 62 == 3)
          {
            v73 = 0;
            if (!v69 && v70 == 0xC000000000000000)
            {
              goto LABEL_123;
            }
          }

LABEL_90:
          if (v72 > 1)
          {
            goto LABEL_84;
          }

          goto LABEL_91;
        }

        if (v71 > 1)
        {
          if (v71 == 2)
          {
            v78 = *(v67 + 16);
            v77 = *(v67 + 24);
            v49 = __OFSUB__(v77, v78);
            v73 = v77 - v78;
            if (v49)
            {
              goto LABEL_140;
            }

            goto LABEL_90;
          }

          v73 = 0;
          if (v72 > 1)
          {
            goto LABEL_84;
          }
        }

        else if (v71)
        {
          LODWORD(v73) = HIDWORD(v67) - v67;
          if (__OFSUB__(HIDWORD(v67), v67))
          {
            goto LABEL_139;
          }

          v73 = v73;
          if (v72 > 1)
          {
LABEL_84:
            if (v72 != 2)
            {
              if (v73)
              {
                goto LABEL_127;
              }

              goto LABEL_123;
            }

            v75 = *(v69 + 16);
            v74 = *(v69 + 24);
            v49 = __OFSUB__(v74, v75);
            v76 = v74 - v75;
            if (v49)
            {
              goto LABEL_135;
            }

            goto LABEL_97;
          }
        }

        else
        {
          v73 = BYTE6(v68);
          if (v72 > 1)
          {
            goto LABEL_84;
          }
        }

LABEL_91:
        if (v72)
        {
          LODWORD(v76) = HIDWORD(v69) - v69;
          if (__OFSUB__(HIDWORD(v69), v69))
          {
            goto LABEL_136;
          }

          v76 = v76;
        }

        else
        {
          v76 = BYTE6(v70);
        }

LABEL_97:
        if (v73 != v76)
        {
          goto LABEL_127;
        }

        if (v73 >= 1)
        {
          if (v71 > 1)
          {
            if (v71 == 2)
            {
              v79 = *(v67 + 16);
              v80 = *(v67 + 24);
              sub_D038(*(v105 + 48), *(v105 + 56));
              v81 = sub_5B944();
              if (v81)
              {
                v82 = sub_5B964();
                if (__OFSUB__(v79, v82))
                {
                  goto LABEL_147;
                }

                v81 += v79 - v82;
              }

              if (__OFSUB__(v80, v79))
              {
                goto LABEL_144;
              }

              sub_5B954();
              v83 = v81;
              v84 = v69;
              v85 = v70;
              v86 = v102;
              goto LABEL_122;
            }

            memset(v109, 0, 14);
            sub_D038(v69, v70);
          }

          else
          {
            if (v71)
            {
              v87 = v67;
              if (v67 >> 32 < v67)
              {
                goto LABEL_143;
              }

              sub_D038(*(v105 + 48), *(v105 + 56));
              v88 = sub_5B944();
              if (v88)
              {
                v89 = v88;
                v90 = sub_5B964();
                if (__OFSUB__(v87, v90))
                {
                  goto LABEL_148;
                }

                v91 = v87 - v90 + v89;
              }

              else
              {
                v91 = 0;
              }

              v86 = v102;
              sub_5B954();
              v83 = v91;
              v84 = v69;
              v85 = v70;
LABEL_122:
              sub_13DF0(v83, v84, v85, v109);
              v102 = v86;
              sub_D08C(v69, v70);
              if ((v109[0] & 1) == 0)
              {
                goto LABEL_127;
              }

              goto LABEL_123;
            }

            v109[0] = *(v104 + 6);
            LOWORD(v109[1]) = v68;
            BYTE2(v109[1]) = BYTE2(v68);
            BYTE3(v109[1]) = BYTE3(v68);
            BYTE4(v109[1]) = BYTE4(v68);
            BYTE5(v109[1]) = BYTE5(v68);
            sub_D038(v69, v70);
          }

          v92 = v102;
          sub_13DF0(v109, v69, v70, &v108);
          v102 = v92;
          sub_D08C(v69, v70);
          if (!v108)
          {
            goto LABEL_127;
          }
        }

LABEL_123:
        v93 = *(v100 + 36);
        sub_5BCE4();
        sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
        v18 = v104;
        v94 = v105;
        v95 = sub_5C114();
        sub_1CF9C(v94, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
        sub_1CF9C(v18, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar);
        if (v95)
        {
          v20 = v103 + 1;
          v22 = v98;
          v19 = v99;
          v23 = v97;
          if (v103 + 1 != v99)
          {
            continue;
          }
        }

        return v95 & 1;
      }

      v46 = 0;
      if (!v40 && v41 == 0xC000000000000000 && v43 >> 62 == 3)
      {
        v46 = 0;
        if (!v42 && v43 == 0xC000000000000000)
        {
          goto LABEL_74;
        }
      }

LABEL_41:
      if (v45 <= 1)
      {
        goto LABEL_42;
      }

      goto LABEL_35;
    }

    v95 = 1;
  }

  else
  {
LABEL_128:
    v95 = 0;
  }

  return v95 & 1;
}

uint64_t sub_30350(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_303AC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_30408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = off_70AC0(v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70AC0(v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_12:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1CF34(v14, v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
      sub_1CF34(v15, v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
      if (*v11 != *v8 || v11[1] != v8[1])
      {
        break;
      }

      v17 = *(v4 + 24);
      sub_5BCE4();
      sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
      v18 = sub_5C114();
      sub_1CF9C(v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
      sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1CF9C(v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
    sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
    goto LABEL_12;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_3066C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = off_70AC0(v4);
  v9 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70AC0(v7);
  v11 = (&v56 - v10);
  v69 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v71 = *(v69 - 8);
  v12 = *(v71 + 64);
  v13 = off_70AC0(v69);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v13);
  v17 = &v56 - v16;
  v18 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = off_70AC0(v18);
  v70 = &v56 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = off_70AC0(v20);
  v25 = (&v56 - v24);
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
LABEL_33:
    v55 = 0;
    return v55 & 1;
  }

  if (!v26 || a1 == a2)
  {
    v55 = 1;
    return v55 & 1;
  }

  v66 = v9;
  v67 = v11;
  v65 = v4;
  v27 = 0;
  v28 = (*(v23 + 80) + 32) & ~*(v23 + 80);
  v29 = a1 + v28;
  v30 = a2 + v28;
  v31 = *(v23 + 72);
  v57 = v5;
  v58 = v31;
  v68 = &v56 - v24;
  v60 = a1 + v28;
  v61 = v22;
  v63 = v26;
  v59 = v30;
  while (1)
  {
    result = sub_1CF34(v29 + v31 * v27, v25, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);
    if (v27 == v63)
    {
      break;
    }

    v62 = v27;
    v33 = v70;
    result = sub_1CF34(v30 + v31 * v27, v70, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);
    v34 = *v25;
    v35 = *v33;
    v36 = *(v34 + 16);
    if (v36 != *(*v33 + 16))
    {
      goto LABEL_32;
    }

    if (v36 && v34 != v35)
    {
      v37 = 0;
      v38 = (*(v71 + 80) + 32) & ~*(v71 + 80);
      v39 = v34 + v38;
      v40 = v35 + v38;
      while (v37 < *(v34 + 16))
      {
        v41 = *(v71 + 72) * v37;
        result = sub_1CF34(v39 + v41, v17, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if (v37 >= *(v35 + 16))
        {
          goto LABEL_36;
        }

        sub_1CF34(v40 + v41, v15, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_35A28(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        v42 = sub_5C114();
        sub_1CF9C(v15, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        result = sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if ((v42 & 1) == 0)
        {
          goto LABEL_32;
        }

        if (v36 == ++v37)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_36:
      __break(1u);
      __break(1u);
      break;
    }

LABEL_14:
    if (*(v68 + 8) != *(v70 + 8))
    {
      goto LABEL_32;
    }

    if (*(v68 + 16) != *(v70 + 16))
    {
      goto LABEL_32;
    }

    if (*(v68 + 24) != *(v70 + 24))
    {
      goto LABEL_32;
    }

    if (*(v68 + 32) != *(v70 + 32))
    {
      goto LABEL_32;
    }

    v43 = *(v68 + 40);
    v44 = *(v70 + 40);
    v45 = *(v43 + 16);
    if (v45 != *(v44 + 16))
    {
      goto LABEL_32;
    }

    if (v45 && v43 != v44)
    {
      v46 = (*(v57 + 80) + 32) & ~*(v57 + 80);
      v47 = v43 + v46;
      v48 = v44 + v46;
      v64 = *(v57 + 72);
      while (1)
      {
        v49 = v67;
        sub_1CF34(v47, v67, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
        v50 = v66;
        sub_1CF34(v48, v66, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
        if (*v49 != *v50 || v49[1] != v50[1])
        {
          break;
        }

        v51 = *(v65 + 24);
        sub_5BCE4();
        sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
        v52 = sub_5C114();
        sub_1CF9C(v50, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
        sub_1CF9C(v49, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
        if ((v52 & 1) == 0)
        {
          goto LABEL_32;
        }

        v48 += v64;
        v47 += v64;
        if (!--v45)
        {
          goto LABEL_26;
        }
      }

      sub_1CF9C(v50, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
      sub_1CF9C(v49, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile);
LABEL_32:
      sub_1CF9C(v70, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);
      sub_1CF9C(v68, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);
      goto LABEL_33;
    }

LABEL_26:
    if (*(v68 + 48) != *(v70 + 48))
    {
      goto LABEL_32;
    }

    v53 = *(v61 + 44);
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
    v25 = v68;
    v54 = v70;
    v55 = sub_5C114();
    sub_1CF9C(v54, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);
    sub_1CF9C(v25, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint);
    if (v55)
    {
      v27 = v62 + 1;
      v30 = v59;
      v29 = v60;
      v31 = v58;
      if (v62 + 1 != v63)
      {
        continue;
      }
    }

    return v55 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_30D5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = off_70AC0(v11 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v13);
  v18 = &v26 - v17;
  v19 = *(a1 + 16);
  if (v19 == *(a2 + 16))
  {
    if (!v19 || a1 == a2)
    {
      v24 = 1;
    }

    else
    {
      v20 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v21 = a1 + v20;
      v22 = a2 + v20;
      v23 = *(v16 + 72);
      do
      {
        sub_1CF34(v21, v18, a4);
        sub_1CF34(v22, v15, a4);
        v24 = a5(v18, v15);
        sub_1CF9C(v15, a6);
        sub_1CF9C(v18, a6);
        if ((v24 & 1) == 0)
        {
          break;
        }

        v22 += v23;
        v21 += v23;
        --v19;
      }

      while (v19);
    }
  }

  else
  {
    v24 = 0;
  }

  return v24 & 1;
}

uint64_t sub_30EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v50 = *(v4 - 8);
  v5 = *(v50 + 64);
  v6 = off_70AC0(v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v6);
  v10 = &v44 - v9;
  v11 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = off_70AC0(v11);
  v51 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v13);
  v17 = &v44 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
LABEL_31:
    v43 = 0;
    return v43 & 1;
  }

  if (!v18 || a1 == a2)
  {
    v43 = 1;
    return v43 & 1;
  }

  v19 = 0;
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = a1 + v20;
  v47 = v11;
  v48 = a2 + v20;
  v22 = *(v15 + 72);
  v45 = v21;
  v46 = v18;
  v44 = v22;
  while (1)
  {
    v23 = v22 * v19;
    result = sub_1CF34(v21 + v22 * v19, v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
    if (v19 == v18)
    {
      break;
    }

    v49 = v19;
    v25 = v48 + v23;
    v26 = v51;
    sub_1CF34(v25, v51, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
    v27 = *v17;
    v28 = *v26;
    v29 = *(*v17 + 16);
    if (v29 != *(*v26 + 16))
    {
      goto LABEL_30;
    }

    if (v29 && v27 != v28)
    {
      v30 = (*(v50 + 80) + 32) & ~*(v50 + 80);
      v31 = v27 + v30;
      v32 = v28 + v30;
      v33 = *(v50 + 72);
      while (1)
      {
        sub_1CF34(v31, v10, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_1CF34(v32, v8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_35A28(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        v34 = sub_5C114();
        sub_1CF9C(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_1CF9C(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if ((v34 & 1) == 0)
        {
          break;
        }

        v32 += v33;
        v31 += v33;
        if (!--v29)
        {
          goto LABEL_12;
        }
      }

LABEL_30:
      sub_1CF9C(v51, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
      sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
      goto LABEL_31;
    }

LABEL_12:
    if (*(v17 + 1) != *(v51 + 8) || *(v17 + 2) != *(v51 + 16))
    {
      goto LABEL_30;
    }

    v35 = v17[32];
    v36 = *(v51 + 32);
    if (v35 == 255)
    {
      if (v36 != 255)
      {
        goto LABEL_30;
      }
    }

    else
    {
      if (v36 == 255)
      {
        goto LABEL_30;
      }

      v37 = *(v17 + 3);
      v38 = *(v51 + 24);
      if (v35)
      {
        if ((v36 & 1) == 0 || *&v37 != *&v38)
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v36)
        {
          goto LABEL_30;
        }

        v39 = *(v17 + 3);
        v40 = *(v51 + 24);
        if (v37 != v38)
        {
          goto LABEL_30;
        }
      }
    }

    if ((sub_2F858(*(v17 + 5), *(v51 + 40)) & 1) == 0 || *(v17 + 12) != *(v51 + 48))
    {
      goto LABEL_30;
    }

    v41 = *(v47 + 40);
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
    v42 = v51;
    v43 = sub_5C114();
    sub_1CF9C(v42, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
    sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint);
    if (v43)
    {
      v19 = v49 + 1;
      v21 = v45;
      v18 = v46;
      v22 = v44;
      if (v49 + 1 != v46)
      {
        continue;
      }
    }

    return v43 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_313CC(uint64_t a1, uint64_t a2)
{
  v50 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v4 = *(v50 - 8);
  v5 = *(v4 + 64);
  off_70AC0(v50);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  v9 = *(*(v8 - 8) + 64);
  off_70AC0(v8 - 8);
  v11 = &v40 - v10;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78640, &unk_628E0);
  v12 = *(*(v46 - 8) + 64);
  off_70AC0(v46);
  v14 = &v40 - v13;
  v51 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  v15 = *(*(v51 - 8) + 64);
  v16 = off_70AC0(v51);
  v18 = (&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70AC0(v16);
  v21 = (&v40 - v20);
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_22:
    v39 = 0;
    return v39 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v39 = 1;
    return v39 & 1;
  }

  v41 = v7;
  v42 = v11;
  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v44 = v18;
  v45 = (v4 + 48);
  v43 = *(v19 + 72);
  v26 = &qword_782A0;
  v27 = v50;
  while (1)
  {
    result = sub_1CF34(v24, v21, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    if (!v22)
    {
      break;
    }

    v48 = v25;
    v49 = v24;
    sub_1CF34(v25, v18, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    v29 = *(v51 + 28);
    v30 = *(v46 + 48);
    sub_A024(v21 + v29, v14, v26, &qword_5FB08);
    sub_A024(v18 + v29, &v14[v30], v26, &qword_5FB08);
    v31 = v26;
    v32 = *v45;
    v33 = (*v45)(v14, 1, v27);
    v47 = v22;
    if (v33 == 1)
    {
      v34 = v27;
      if (v32(&v14[v30], 1, v27) != 1)
      {
        goto LABEL_20;
      }

      sub_60C4(v14, v26, &qword_5FB08);
      v18 = v44;
    }

    else
    {
      v35 = v42;
      sub_A024(v14, v42, v26, &qword_5FB08);
      if (v32(&v14[v30], 1, v27) == 1)
      {
        sub_1CF9C(v35, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
LABEL_20:
        sub_60C4(v14, &qword_78640, &unk_628E0);
        v18 = v44;
LABEL_21:
        sub_1CF9C(v18, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
        sub_1CF9C(v21, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
        goto LABEL_22;
      }

      v36 = v41;
      sub_1C814(&v14[v30], v41, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_35A28(&qword_781B0, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      v37 = sub_5C114();
      v34 = v50;
      sub_1CF9C(v36, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_1CF9C(v35, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_60C4(v14, v31, &qword_5FB08);
      v26 = v31;
      v18 = v44;
      if ((v37 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    if ((sub_31970(*v21, *v18) & 1) == 0 || (v21[1] != v18[1] || v21[2] != v18[2]) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_21;
    }

    v38 = *(v51 + 24);
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
    v39 = sub_5C114();
    sub_1CF9C(v18, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    sub_1CF9C(v21, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    if (v39)
    {
      v25 = v48 + v43;
      v24 = v49 + v43;
      v27 = v34;
      v22 = v47 - 1;
      if (v47 != 1)
      {
        continue;
      }
    }

    return v39 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_31970(uint64_t a1, uint64_t a2)
{
  v72 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v74 = *(v72 - 8);
  v4 = *(v74 + 64);
  v5 = off_70AC0(v72);
  v7 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v5);
  v9 = &v59 - v8;
  v10 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  off_70AC0(v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v16 = *(*(v15 - 8) + 64);
  off_70AC0(v15 - 8);
  v18 = &v59 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78610, &qword_61A28);
  v20 = *(*(v19 - 8) + 64);
  off_70AC0(v19);
  v22 = &v59 - v21;
  v70 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v23 = *(*(v70 - 1) + 64);
  v24 = off_70AC0(v70);
  v73 = (&v59 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70AC0(v24);
  v71 = (&v59 - v27);
  v28 = *(a1 + 16);
  if (v28 != *(a2 + 16))
  {
LABEL_37:
    v58 = 0;
    return v58 & 1;
  }

  if (!v28 || a1 == a2)
  {
    v58 = 1;
    return v58 & 1;
  }

  v62 = v19;
  v63 = v22;
  v59 = v14;
  v60 = v18;
  v29 = 0;
  v30 = (*(v26 + 80) + 32) & ~*(v26 + 80);
  v64 = v10;
  v65 = a2 + v30;
  v61 = (v11 + 48);
  v66 = *(v26 + 72);
  v67 = a1 + v30;
  v31 = v71;
  v69 = v28;
  while (1)
  {
    v32 = v66 * v29;
    result = sub_1CF34(v67 + v66 * v29, v31, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
    if (v29 == v69)
    {
      break;
    }

    v68 = v29;
    v34 = v65 + v32;
    v35 = v73;
    sub_1CF34(v34, v73, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
    v36 = *v31 == *v35 && v31[1] == v35[1];
    if (!v36 && (sub_5C3A4() & 1) == 0 || (v71[2] != v73[2] || v71[3] != v73[3]) && (sub_5C3A4() & 1) == 0 || (v71[4] != v73[4] || v71[5] != v73[5]) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_36;
    }

    v37 = v70[7];
    v38 = v63;
    v39 = *(v62 + 48);
    sub_A024(v71 + v37, v63, &qword_78240, &qword_5FB10);
    sub_A024(v73 + v37, v38 + v39, &qword_78240, &qword_5FB10);
    v40 = *v61;
    v41 = v64;
    if ((*v61)(v38, 1, v64) == 1)
    {
      if (v40(v38 + v39, 1, v41) != 1)
      {
        goto LABEL_35;
      }

      result = sub_60C4(v38, &qword_78240, &qword_5FB10);
    }

    else
    {
      v42 = v60;
      sub_A024(v38, v60, &qword_78240, &qword_5FB10);
      if (v40(v38 + v39, 1, v41) == 1)
      {
        sub_1CF9C(v42, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
LABEL_35:
        sub_60C4(v38, &qword_78610, &qword_61A28);
LABEL_36:
        sub_1CF9C(v73, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
        sub_1CF9C(v71, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
        goto LABEL_37;
      }

      v43 = v38 + v39;
      v44 = v59;
      sub_1C814(v43, v59, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
      v45 = _s16TelemetrySupport37Opentelemetry_Proto_Metrics_V1_MetricV10OneOf_DataO2eeoiySbAE_AEtFZ_0(v42, v44);
      sub_1CF9C(v44, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
      sub_1CF9C(v42, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
      result = sub_60C4(v38, &qword_78240, &qword_5FB10);
      if ((v45 & 1) == 0)
      {
        goto LABEL_36;
      }
    }

    v46 = v70[8];
    v47 = *(v71 + v46);
    v48 = *(v73 + v46);
    v49 = *(v47 + 16);
    if (v49 != *(v48 + 16))
    {
      goto LABEL_36;
    }

    if (v49 && v47 != v48)
    {
      v50 = 0;
      v51 = (*(v74 + 80) + 32) & ~*(v74 + 80);
      v52 = v47 + v51;
      v53 = v48 + v51;
      while (v50 < *(v47 + 16))
      {
        v54 = *(v74 + 72) * v50;
        result = sub_1CF34(v52 + v54, v9, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if (v50 >= *(v48 + 16))
        {
          goto LABEL_40;
        }

        sub_1CF34(v53 + v54, v7, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_35A28(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        v55 = sub_5C114();
        sub_1CF9C(v7, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        result = sub_1CF9C(v9, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if ((v55 & 1) == 0)
        {
          goto LABEL_36;
        }

        if (v49 == ++v50)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      break;
    }

LABEL_30:
    v56 = v70[9];
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
    v31 = v71;
    v57 = v73;
    v58 = sub_5C114();
    sub_1CF9C(v57, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
    sub_1CF9C(v31, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
    if (v58)
    {
      v29 = v68 + 1;
      if (v68 + 1 != v69)
      {
        continue;
      }
    }

    return v58 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_320FC(uint64_t a1, uint64_t a2)
{
  v179 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v182 = *(v179 - 8);
  v4 = *(v182 + 64);
  v5 = off_70AC0(v179);
  v178 = &v134 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v5);
  v8 = &v134 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v160 = *(v9 - 8);
  v10 = *(v160 + 64);
  off_70AC0(v9);
  v12 = &v134 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v14 = *(*(v13 - 8) + 64);
  off_70AC0(v13 - 8);
  v16 = &v134 - v15;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78610, &qword_61A28);
  v17 = *(*(v166 - 8) + 64);
  off_70AC0(v166);
  v167 = &v134 - v18;
  v174 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v170 = *(v174 - 1);
  v19 = *(v170 + 64);
  v20 = off_70AC0(v174);
  v180 = (&v134 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70AC0(v20);
  v181 = (&v134 - v22);
  v165 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v23 = *(v165 - 8);
  v24 = *(v23 + 64);
  off_70AC0(v165);
  v159 = &v134 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  v27 = *(*(v26 - 8) + 64);
  off_70AC0(v26 - 8);
  v29 = &v134 - v28;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78640, &unk_628E0);
  v30 = *(*(v163 - 8) + 64);
  off_70AC0(v163);
  v164 = &v134 - v31;
  v32 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  v171 = *(v32 - 8);
  v172 = v32;
  v33 = *(v171 + 64);
  v34 = off_70AC0(v32);
  v173 = &v134 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v34);
  v176 = (&v134 - v36);
  v169 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v37 = *(v169 - 8);
  v38 = *(v37 + 64);
  off_70AC0(v169);
  v161 = &v134 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  v41 = *(*(v40 - 8) + 64);
  off_70AC0(v40 - 8);
  v162 = &v134 - v42;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78648, &qword_61A60);
  v43 = *(*(v168 - 8) + 64);
  off_70AC0(v168);
  v45 = &v134 - v44;
  v46 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = off_70AC0(v46);
  v177 = (&v134 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = off_70AC0(v48);
  v175 = &v134 - v52;
  v53 = *(a1 + 16);
  if (v53 != *(a2 + 16))
  {
LABEL_71:
    v132 = 0;
    return v132 & 1;
  }

  if (!v53 || a1 == a2)
  {
    v132 = 1;
    return v132 & 1;
  }

  v157 = v50;
  v136 = v12;
  v54 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v55 = a1 + v54;
  v153 = a2 + v54;
  v152 = (v37 + 48);
  v56 = 0;
  v149 = (v160 + 48);
  v57 = *(v51 + 72);
  v137 = v29;
  v58 = v175;
  v150 = v9;
  v138 = v16;
  v156 = v53;
  v142 = a1 + v54;
  v148 = (v23 + 48);
  v141 = v57;
  while (1)
  {
    v59 = v57 * v56;
    result = sub_1CF34(v55 + v57 * v56, v58, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    if (v56 == v156)
    {
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
      goto LABEL_80;
    }

    v154 = v56;
    v61 = v177;
    sub_1CF34(v153 + v59, v177, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    v62 = *(v157 + 28);
    v63 = *(v168 + 48);
    sub_A024(v58 + v62, v45, &qword_78298, &qword_5FB00);
    sub_A024(v61 + v62, &v45[v63], &qword_78298, &qword_5FB00);
    v64 = *v152;
    v65 = v169;
    if ((*v152)(v45, 1, v169) == 1)
    {
      if (v64(&v45[v63], 1, v65) != 1)
      {
        goto LABEL_65;
      }

      result = sub_60C4(v45, &qword_78298, &qword_5FB00);
      v66 = v173;
    }

    else
    {
      v67 = v162;
      sub_A024(v45, v162, &qword_78298, &qword_5FB00);
      if (v64(&v45[v63], 1, v65) == 1)
      {
        sub_1CF9C(v67, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
LABEL_65:
        sub_60C4(v45, &qword_78648, &qword_61A60);
LABEL_70:
        sub_1CF9C(v177, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
        sub_1CF9C(v58, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
        goto LABEL_71;
      }

      v68 = &v45[v63];
      v69 = v161;
      sub_1C814(v68, v161, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_35A28(&qword_78650, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      v70 = sub_5C114();
      sub_1CF9C(v69, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_1CF9C(v67, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      result = sub_60C4(v45, &qword_78298, &qword_5FB00);
      v66 = v173;
      if ((v70 & 1) == 0)
      {
        goto LABEL_70;
      }
    }

    v71 = *v58;
    v72 = *(*v58 + 16);
    v160 = *v177;
    if (v72 != *(v160 + 16))
    {
      goto LABEL_70;
    }

    if (v72 && v71 != v160)
    {
      break;
    }

LABEL_57:
    if ((v58[1] != v177[1] || v58[2] != v177[2]) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_70;
    }

    v130 = *(v157 + 24);
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
    v131 = v177;
    v132 = sub_5C114();
    v133 = v131;
    v58 = v175;
    sub_1CF9C(v133, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    sub_1CF9C(v58, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics);
    if (v132)
    {
      v56 = v154 + 1;
      v55 = v142;
      v57 = v141;
      if (v154 + 1 != v156)
      {
        continue;
      }
    }

    return v132 & 1;
  }

  v73 = 0;
  v74 = (*(v171 + 80) + 32) & ~*(v171 + 80);
  v146 = v71 + v74;
  v145 = v160 + v74;
  v155 = v45;
  v135 = v71;
  v134 = v72;
  while (v73 < *(v71 + 16))
  {
    v75 = v66;
    v76 = v73;
    v77 = *(v171 + 72) * v73;
    v78 = v176;
    result = sub_1CF34(v146 + v77, v176, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    v79 = *(v160 + 16);
    v147 = v76;
    if (v76 >= v79)
    {
      goto LABEL_81;
    }

    v66 = v75;
    sub_1CF34(v145 + v77, v75, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    v80 = v78;
    v81 = *(v172 + 28);
    v82 = v164;
    v83 = *(v163 + 48);
    sub_A024(v80 + v81, v164, &qword_782A0, &qword_5FB08);
    sub_A024(v75 + v81, v82 + v83, &qword_782A0, &qword_5FB08);
    v84 = *v148;
    v85 = v165;
    if ((*v148)(v82, 1, v165) == 1)
    {
      if (v84(v82 + v83, 1, v85) != 1)
      {
        goto LABEL_74;
      }

      result = sub_60C4(v82, &qword_782A0, &qword_5FB08);
      v45 = v155;
    }

    else
    {
      v86 = v137;
      sub_A024(v82, v137, &qword_782A0, &qword_5FB08);
      if (v84(v82 + v83, 1, v85) == 1)
      {
        sub_1CF9C(v86, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
        v58 = v175;
LABEL_74:
        sub_60C4(v82, &qword_78640, &unk_628E0);
LABEL_69:
        sub_1CF9C(v66, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
        sub_1CF9C(v176, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
        goto LABEL_70;
      }

      v87 = v82 + v83;
      v88 = v159;
      sub_1C814(v87, v159, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_35A28(&qword_781B0, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      v89 = sub_5C114();
      sub_1CF9C(v88, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_1CF9C(v86, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      result = sub_60C4(v82, &qword_782A0, &qword_5FB08);
      v58 = v175;
      v45 = v155;
      if ((v89 & 1) == 0)
      {
        goto LABEL_69;
      }
    }

    v90 = *v176;
    v91 = *(*v176 + 16);
    v158 = *v75;
    if (v91 != *(v158 + 16))
    {
      goto LABEL_69;
    }

    if (v91 && v90 != v158)
    {
      v92 = 0;
      v93 = (*(v170 + 80) + 32) & ~*(v170 + 80);
      v144 = v90 + v93;
      v143 = v158 + v93;
      v140 = v90;
      v139 = v91;
      while (v92 < *(v90 + 16))
      {
        v94 = *(v170 + 72) * v92;
        v95 = v92;
        v96 = v181;
        result = sub_1CF34(v144 + v94, v181, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
        v97 = *(v158 + 16);
        v151 = v95;
        if (v95 >= v97)
        {
          goto LABEL_79;
        }

        v98 = v143 + v94;
        v99 = v180;
        sub_1CF34(v98, v180, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
        if ((*v96 != *v99 || v96[1] != v99[1]) && (sub_5C3A4() & 1) == 0 || (v181[2] != v180[2] || v181[3] != v180[3]) && (sub_5C3A4() & 1) == 0 || (v181[4] != v180[4] || v181[5] != v180[5]) && (sub_5C3A4() & 1) == 0)
        {
          goto LABEL_68;
        }

        v100 = v174[7];
        v101 = v167;
        v102 = *(v166 + 48);
        sub_A024(v181 + v100, v167, &qword_78240, &qword_5FB10);
        sub_A024(v180 + v100, v101 + v102, &qword_78240, &qword_5FB10);
        v103 = *v149;
        v104 = v150;
        if ((*v149)(v101, 1, v150) == 1)
        {
          if (v103(v101 + v102, 1, v104) != 1)
          {
            goto LABEL_67;
          }

          result = sub_60C4(v101, &qword_78240, &qword_5FB10);
        }

        else
        {
          v105 = v138;
          sub_A024(v101, v138, &qword_78240, &qword_5FB10);
          if (v103(v101 + v102, 1, v104) == 1)
          {
            sub_1CF9C(v105, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
LABEL_67:
            sub_60C4(v101, &qword_78610, &qword_61A28);
LABEL_68:
            sub_1CF9C(v180, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
            sub_1CF9C(v181, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
            v66 = v173;
            v58 = v175;
            goto LABEL_69;
          }

          v106 = v101 + v102;
          v107 = v136;
          sub_1C814(v106, v136, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
          v108 = _s16TelemetrySupport37Opentelemetry_Proto_Metrics_V1_MetricV10OneOf_DataO2eeoiySbAE_AEtFZ_0(v105, v107);
          sub_1CF9C(v107, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
          sub_1CF9C(v105, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
          result = sub_60C4(v101, &qword_78240, &qword_5FB10);
          if ((v108 & 1) == 0)
          {
            goto LABEL_68;
          }
        }

        v109 = v174[8];
        v110 = *(v181 + v109);
        v111 = *(v180 + v109);
        v112 = *(v110 + 16);
        if (v112 != *(v111 + 16))
        {
          goto LABEL_68;
        }

        if (v112 && v110 != v111)
        {
          v113 = 0;
          v114 = (*(v182 + 80) + 32) & ~*(v182 + 80);
          v115 = v110 + v114;
          v116 = v111 + v114;
          while (v113 < *(v110 + 16))
          {
            v117 = *(v182 + 72) * v113;
            result = sub_1CF34(v115 + v117, v8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            if (v113 >= *(v111 + 16))
            {
              goto LABEL_76;
            }

            v118 = v8;
            v119 = v178;
            sub_1CF34(v116 + v117, v178, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_35A28(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            v120 = sub_5C114();
            v121 = v119;
            v8 = v118;
            sub_1CF9C(v121, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            result = sub_1CF9C(v118, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            if ((v120 & 1) == 0)
            {
              goto LABEL_68;
            }

            if (v112 == ++v113)
            {
              goto LABEL_50;
            }
          }

          __break(1u);
LABEL_76:
          __break(1u);
          goto LABEL_77;
        }

LABEL_50:
        v122 = v174[9];
        sub_5BCE4();
        sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
        v123 = v180;
        v124 = v181;
        v125 = sub_5C114();
        sub_1CF9C(v123, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
        result = sub_1CF9C(v124, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric);
        v66 = v173;
        v58 = v175;
        v45 = v155;
        v90 = v140;
        if ((v125 & 1) == 0)
        {
          goto LABEL_69;
        }

        v92 = v151 + 1;
        if (v151 + 1 == v139)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_78;
    }

LABEL_52:
    if ((v176[1] != *(v66 + 8) || v176[2] != *(v66 + 16)) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_69;
    }

    v126 = *(v172 + 24);
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
    v127 = v176;
    v128 = sub_5C114();
    sub_1CF9C(v66, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    v129 = v127;
    v58 = v175;
    result = sub_1CF9C(v129, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics);
    v71 = v135;
    if ((v128 & 1) == 0)
    {
      goto LABEL_70;
    }

    v73 = v147 + 1;
    if (v147 + 1 == v134)
    {
      goto LABEL_57;
    }
  }

LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
  return result;
}

uint64_t _s16TelemetrySupport60Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPointV7BucketsV2eeoiySbAE_AEtFZ_0(uint64_t result, uint64_t a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  v2 = *(result + 8);
  v3 = *(a2 + 8);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_11:
    v8 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0) + 24);
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
    return sub_5C114() & 1;
  }

  else
  {
    v6 = (v2 + 32);
    v7 = (v3 + 32);
    while (v4)
    {
      if (*v6 != *v7)
      {
        return 0;
      }

      ++v6;
      ++v7;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t _s16TelemetrySupport60Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70AC0(v4);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
  v10 = *(*(v9 - 8) + 64);
  v11 = off_70AC0(v9 - 8);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v11);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78608, &qword_61A20);
  v17 = *(*(v16 - 8) + 64);
  v18 = off_70AC0(v16);
  v20 = &v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AC0(v18);
  v22 = &v50 - v21;
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    goto LABEL_27;
  }

  v23 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint(0);
  v24 = *(v23 + 56);
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 8);
  if (v26)
  {
    if (!v28)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v25 != *v27)
    {
      LOBYTE(v28) = 1;
    }

    if (v28)
    {
      goto LABEL_27;
    }
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40))
  {
    goto LABEL_27;
  }

  v29 = *(v23 + 60);
  v51 = v23;
  v52 = v29;
  v53 = *(v16 + 48);
  sub_A024(v29 + a1, v22, &qword_782A8, &qword_5FB18);
  sub_A024(v52 + a2, &v22[v53], &qword_782A8, &qword_5FB18);
  v52 = *(v5 + 48);
  if (v52(v22, 1, v4) == 1)
  {
    if (v52(&v22[v53], 1, v4) == 1)
    {
      sub_60C4(v22, &qword_782A8, &qword_5FB18);
      goto LABEL_20;
    }

LABEL_18:
    v30 = v22;
LABEL_26:
    sub_60C4(v30, &qword_78608, &qword_61A20);
    goto LABEL_27;
  }

  sub_A024(v22, v15, &qword_782A8, &qword_5FB18);
  if (v52(&v22[v53], 1, v4) == 1)
  {
    sub_1CF9C(v15, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
    goto LABEL_18;
  }

  sub_1C814(&v22[v53], v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  LODWORD(v53) = _s16TelemetrySupport60Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPointV7BucketsV2eeoiySbAE_AEtFZ_0(v15, v8);
  v50 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets;
  sub_1CF9C(v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
  sub_1CF9C(v15, v50);
  sub_60C4(v22, &qword_782A8, &qword_5FB18);
  if ((v53 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_20:
  v31 = v51[16];
  v32 = *(v16 + 48);
  sub_A024(a1 + v31, v20, &qword_782A8, &qword_5FB18);
  v33 = a2 + v31;
  v34 = v32;
  sub_A024(v33, &v20[v32], &qword_782A8, &qword_5FB18);
  v35 = v52;
  if (v52(v20, 1, v4) != 1)
  {
    sub_A024(v20, v13, &qword_782A8, &qword_5FB18);
    if (v35(&v20[v34], 1, v4) != 1)
    {
      sub_1C814(&v20[v34], v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
      v38 = _s16TelemetrySupport60Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPointV7BucketsV2eeoiySbAE_AEtFZ_0(v13, v8);
      sub_1CF9C(v8, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
      sub_1CF9C(v13, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
      sub_60C4(v20, &qword_782A8, &qword_5FB18);
      if ((v38 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_30;
    }

    sub_1CF9C(v13, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets);
    goto LABEL_25;
  }

  if (v35(&v20[v34], 1, v4) != 1)
  {
LABEL_25:
    v30 = v20;
    goto LABEL_26;
  }

  sub_60C4(v20, &qword_782A8, &qword_5FB18);
LABEL_30:
  if (*(a1 + 48) != *(a2 + 48) || (sub_2F858(*(a1 + 56), *(a2 + 56)) & 1) == 0)
  {
    goto LABEL_27;
  }

  v39 = v51[17];
  v40 = (a1 + v39);
  v41 = *(a1 + v39 + 8);
  v42 = (a2 + v39);
  v43 = *(a2 + v39 + 8);
  if (v41)
  {
    if (!v43)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v40 != *v42)
    {
      LOBYTE(v43) = 1;
    }

    if (v43)
    {
      goto LABEL_27;
    }
  }

  v44 = v51[18];
  v45 = (a1 + v44);
  v46 = *(a1 + v44 + 8);
  v47 = (a2 + v44);
  v48 = *(a2 + v44 + 8);
  if (v46)
  {
    if (!v48)
    {
      goto LABEL_27;
    }
  }

  else
  {
    if (*v45 != *v47)
    {
      LOBYTE(v48) = 1;
    }

    if (v48)
    {
      goto LABEL_27;
    }
  }

  if (*(a1 + 64) == *(a2 + 64))
  {
    v49 = v51[13];
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
    v36 = sub_5C114();
    return v36 & 1;
  }

LABEL_27:
  v36 = 0;
  return v36 & 1;
}