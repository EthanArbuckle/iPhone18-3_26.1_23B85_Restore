uint64_t _s16TelemetrySupport51Opentelemetry_Proto_Metrics_V1_ExponentialHistogramV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  if ((sub_30D5C(*a1, *a2, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint, _s16TelemetrySupport60Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPointV2eeoiySbAC_ACtFZ_0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }

LABEL_8:
      v6 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0) + 24);
      sub_5BCE4();
      sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
      return sub_5C114() & 1;
    }

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4 == v5)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t _s16TelemetrySupport47Opentelemetry_Proto_Metrics_V1_SummaryDataPointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || (sub_30408(*(a1 + 40), *(a2 + 40)) & 1) == 0 || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  v4 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint(0) + 44);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t _s16TelemetrySupport46Opentelemetry_Proto_Metrics_V1_NumberDataPointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 255)
    {
      return 0;
    }

    v6 = *(a1 + 24);
    v7 = *(a2 + 24);
    if (v4)
    {
      if ((v5 & 1) == 0 || *&v6 != *&v7)
      {
        return 0;
      }
    }

    else
    {
      if (v5)
      {
        return 0;
      }

      v8 = *(a1 + 24);
      v9 = *(a2 + 24);
      if (v6 != v7)
      {
        return 0;
      }
    }
  }

  if ((sub_2F858(*(a1 + 40), *(a2 + 40)) & 1) != 0 && *(a1 + 48) == *(a2 + 48))
  {
    v10 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint(0) + 40);
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
    return sub_5C114() & 1;
  }

  return 0;
}

uint64_t _s16TelemetrySupport49Opentelemetry_Proto_Metrics_V1_HistogramDataPointV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint(0);
  v5 = v4[13];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 8);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  if ((sub_30350(*(a1 + 32), *(a2 + 32)) & 1) == 0 || (sub_303AC(*(a1 + 40), *(a2 + 40)) & 1) == 0 || (sub_2F858(*(a1 + 48), *(a2 + 48)) & 1) == 0 || *(a1 + 56) != *(a2 + 56))
  {
    return 0;
  }

  v10 = v4[14];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 8);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 8);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[15];
  v16 = (a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = *(a2 + v15 + 8);
  if (v17)
  {
    if (!v19)
    {
      return 0;
    }
  }

  else
  {
    if (*v16 != *v18)
    {
      LOBYTE(v19) = 1;
    }

    if (v19)
    {
      return 0;
    }
  }

  v21 = v4[12];
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t _s16TelemetrySupport40Opentelemetry_Proto_Metrics_V1_HistogramV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  if ((sub_30D5C(*a1, *a2, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint, _s16TelemetrySupport49Opentelemetry_Proto_Metrics_V1_HistogramDataPointV2eeoiySbAC_ACtFZ_0, type metadata accessor for Opentelemetry_Proto_Metrics_V1_HistogramDataPoint) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }

LABEL_8:
      v6 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0) + 24);
      sub_5BCE4();
      sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
      return sub_5C114() & 1;
    }

    if (!v4)
    {
      goto LABEL_8;
    }
  }

  else if (v4 == v5)
  {
    goto LABEL_8;
  }

  return 0;
}

uint64_t _s16TelemetrySupport39Opentelemetry_Proto_Metrics_V1_ExemplarV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 24);
  v5 = *(a2 + 24);
  if (v4 == 255)
  {
    if (v5 != 255)
    {
      return 0;
    }
  }

  else
  {
    if (v5 == 255)
    {
      return 0;
    }

    v6 = *(a1 + 16);
    v7 = *(a2 + 16);
    if (v4)
    {
      if ((v5 & 1) == 0 || *&v6 != *&v7)
      {
        return 0;
      }
    }

    else
    {
      if (v5)
      {
        return 0;
      }

      v8 = *(a1 + 16);
      v9 = *(a2 + 16);
      if (v6 != v7)
      {
        return 0;
      }
    }
  }

  if (sub_14268(*(a1 + 32), *(a1 + 40), *(a2 + 32), *(a2 + 40)) & 1) != 0 && (sub_14268(*(a1 + 48), *(a1 + 56), *(a2 + 48), *(a2 + 56)))
  {
    v10 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar(0) + 36);
    sub_5BCE4();
    sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
    return sub_5C114() & 1;
  }

  return 0;
}

uint64_t _s16TelemetrySupport37Opentelemetry_Proto_Metrics_V1_MetricV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70AC0(v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
  v10 = *(*(v9 - 8) + 64);
  off_70AC0(v9 - 8);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78610, &qword_61A28);
  v14 = *(*(v13 - 8) + 64);
  off_70AC0(v13);
  v16 = &v26 - v15;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_5C3A4() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (sub_5C3A4() & 1) == 0 || (a1[4] != a2[4] || a1[5] != a2[5]) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_19;
  }

  v26 = v8;
  v27 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 48);
  sub_A024(a1 + v17, v16, &qword_78240, &qword_5FB10);
  sub_A024(a2 + v17, &v16[v18], &qword_78240, &qword_5FB10);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      sub_60C4(v16, &qword_78240, &qword_5FB10);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  sub_A024(v16, v12, &qword_78240, &qword_5FB10);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    sub_1CF9C(v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
LABEL_15:
    sub_60C4(v16, &qword_78610, &qword_61A28);
LABEL_19:
    v24 = 0;
    return v24 & 1;
  }

  v20 = v26;
  sub_1C814(&v16[v18], v26, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  v21 = _s16TelemetrySupport37Opentelemetry_Proto_Metrics_V1_MetricV10OneOf_DataO2eeoiySbAE_AEtFZ_0(v12, v20);
  sub_1CF9C(v20, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  sub_1CF9C(v12, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  sub_60C4(v16, &qword_78240, &qword_5FB10);
  if ((v21 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  v22 = v27;
  if ((sub_12FAC(*(a1 + *(v27 + 32)), *(a2 + *(v27 + 32))) & 1) == 0)
  {
    goto LABEL_19;
  }

  v23 = *(v22 + 36);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
  v24 = sub_5C114();
  return v24 & 1;
}

uint64_t _s16TelemetrySupport34Opentelemetry_Proto_Metrics_V1_SumV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_30EFC(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  if (*(a2 + 16) != 1)
  {
    if (v4 != v5)
    {
      return 0;
    }

    goto LABEL_12;
  }

  if (!v5)
  {
    if (!v4)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v5 != 1)
  {
    if (v4 == 2)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v4 != 1)
  {
    return 0;
  }

LABEL_12:
  if (*(a1 + 17) != *(a2 + 17))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0) + 28);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t _s16TelemetrySupport039Opentelemetry_Proto_Metrics_V1_ResourceE0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70AC0(v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  v9 = *(*(v8 - 8) + 64);
  off_70AC0(v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78648, &qword_61A60);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  off_70AC0(v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ResourceMetrics(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_A024(a1 + v17, v16, &qword_78298, &qword_5FB00);
  sub_A024(a2 + v17, &v16[v18], &qword_78298, &qword_5FB00);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_A024(v16, v11, &qword_78298, &qword_5FB00);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_1C814(&v16[v18], v28, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_35A28(&qword_78650, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      v21 = sub_5C114();
      sub_1CF9C(v20, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_60C4(v16, &qword_78298, &qword_5FB00);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
LABEL_6:
    sub_60C4(v16, &qword_78648, &qword_61A60);
    goto LABEL_13;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_60C4(v16, &qword_78298, &qword_5FB00);
LABEL_8:
  v22 = v29;
  if ((sub_313CC(*v29, *a2) & 1) == 0 || (v22[1] != a2[1] || v22[2] != a2[2]) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(v27 + 24);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
  v24 = sub_5C114();
  return v24 & 1;
}

uint64_t _s16TelemetrySupport036Opentelemetry_Proto_Metrics_V1_ScopeE0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70AC0(v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  v9 = *(*(v8 - 8) + 64);
  off_70AC0(v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78640, &unk_628E0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  off_70AC0(v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ScopeMetrics(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_A024(a1 + v17, v16, &qword_782A0, &qword_5FB08);
  sub_A024(a2 + v17, &v16[v18], &qword_782A0, &qword_5FB08);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_A024(v16, v11, &qword_782A0, &qword_5FB08);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_1C814(&v16[v18], v28, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_35A28(&qword_781B0, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      v21 = sub_5C114();
      sub_1CF9C(v20, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_60C4(v16, &qword_782A0, &qword_5FB08);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    sub_1CF9C(v11, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
LABEL_6:
    sub_60C4(v16, &qword_78640, &unk_628E0);
    goto LABEL_13;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_60C4(v16, &qword_782A0, &qword_5FB08);
LABEL_8:
  v22 = v29;
  if ((sub_31970(*v29, *a2) & 1) == 0 || (v22[1] != a2[1] || v22[2] != a2[2]) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(v27 + 24);
  sub_5BCE4();
  sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
  v24 = sub_5C114();
  return v24 & 1;
}

uint64_t _s16TelemetrySupport37Opentelemetry_Proto_Metrics_V1_MetricV10OneOf_DataO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  v60 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(0);
  v2 = *(*(v60 - 8) + 64);
  off_70AC0(v60);
  v63 = (&v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(0);
  v5 = *(*(v4 - 8) + 64);
  off_70AC0(v4 - 8);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(0);
  v8 = *(*(v7 - 8) + 64);
  off_70AC0(v7 - 8);
  v61 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(0);
  v11 = *(*(v10 - 8) + 64);
  off_70AC0(v10 - 8);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(0);
  v15 = *(*(v14 - 8) + 64);
  off_70AC0(v14);
  v17 = (&v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data(0);
  v19 = *(*(v18 - 8) + 64);
  v20 = off_70AC0(v18);
  v65 = (&v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = off_70AC0(v20);
  v64 = (&v60 - v23);
  v24 = off_70AC0(v22);
  v26 = (&v60 - v25);
  v27 = off_70AC0(v24);
  v29 = &v60 - v28;
  off_70AC0(v27);
  v31 = (&v60 - v30);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78660, &qword_61A68);
  v33 = *(*(v32 - 8) + 64);
  v34 = off_70AC0(v32 - 8);
  v36 = &v60 - v35;
  v37 = *(v34 + 56);
  sub_1CF34(v66, &v60 - v35, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  sub_1CF34(v67, &v36[v37], type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1CF34(v36, v29, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v54 = v13;
        sub_1C814(&v36[v37], v13, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
        v41 = _s16TelemetrySupport34Opentelemetry_Proto_Metrics_V1_SumV2eeoiySbAC_ACtFZ_0(v29, v13);
        sub_1CF9C(v54, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum);
        v43 = v29;
        v48 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum;
        goto LABEL_18;
      }

      v45 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum;
      v46 = v29;
      goto LABEL_23;
    }

    v44 = v31;
    sub_1CF34(v36, v31, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    if (swift_getEnumCaseMultiPayload())
    {
      v45 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge;
      v46 = v31;
LABEL_23:
      sub_1CF9C(v46, v45);
      sub_60C4(v36, &qword_78660, &qword_61A68);
LABEL_24:
      v41 = 0;
      return v41 & 1;
    }

    sub_1C814(&v36[v37], v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    if (sub_30EFC(*v31, *v17))
    {
      v58 = *(v14 + 20);
      sub_5BCE4();
      sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
      v59 = sub_5C114();
      sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
      if (v59)
      {
        v53 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge;
        v52 = v44;
        goto LABEL_30;
      }
    }

    else
    {
      sub_1CF9C(v17, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge);
    }

    v57 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge;
    v56 = v44;
LABEL_33:
    sub_1CF9C(v56, v57);
    sub_1CF9C(v36, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1CF34(v36, v26, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v47 = v61;
      sub_1C814(&v36[v37], v61, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
      v41 = _s16TelemetrySupport40Opentelemetry_Proto_Metrics_V1_HistogramV2eeoiySbAC_ACtFZ_0(v26, v47);
      v42 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram;
      sub_1CF9C(v47, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram);
      v43 = v26;
      goto LABEL_11;
    }

    v45 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram;
    v46 = v26;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v49 = v65;
    sub_1CF34(v36, v65, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
    if (swift_getEnumCaseMultiPayload() != 4)
    {
      v45 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary;
      v46 = v49;
      goto LABEL_23;
    }

    v50 = v63;
    sub_1C814(&v36[v37], v63, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    if (sub_3066C(*v49, *v50))
    {
      v51 = *(v60 + 20);
      sub_5BCE4();
      sub_35A28(&qword_78108, &type metadata accessor for UnknownStorage);
      if (sub_5C114())
      {
        sub_1CF9C(v50, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
        v52 = v49;
        v53 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary;
LABEL_30:
        sub_1CF9C(v52, v53);
        sub_1CF9C(v36, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
        v41 = 1;
        return v41 & 1;
      }
    }

    sub_1CF9C(v50, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary);
    v56 = v49;
    v57 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary;
    goto LABEL_33;
  }

  v39 = v64;
  sub_1CF34(v36, v64, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v45 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram;
    v46 = v39;
    goto LABEL_23;
  }

  v40 = v62;
  sub_1C814(&v36[v37], v62, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
  v41 = _s16TelemetrySupport51Opentelemetry_Proto_Metrics_V1_ExponentialHistogramV2eeoiySbAC_ACtFZ_0(v39, v40);
  v42 = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram;
  sub_1CF9C(v40, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram);
  v43 = v39;
LABEL_11:
  v48 = v42;
LABEL_18:
  sub_1CF9C(v43, v48);
  sub_1CF9C(v36, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data);
  return v41 & 1;
}

uint64_t sub_35A28(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_35A70()
{
  result = qword_782F8;
  if (!qword_782F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_782F8);
  }

  return result;
}

unint64_t sub_35AC8()
{
  result = qword_78380;
  if (!qword_78380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78380);
  }

  return result;
}

unint64_t sub_35B20()
{
  result = qword_78388;
  if (!qword_78388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78388);
  }

  return result;
}

unint64_t sub_35BA8()
{
  result = qword_783A0;
  if (!qword_783A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_783A0);
  }

  return result;
}

unint64_t sub_35C00()
{
  result = qword_783A8;
  if (!qword_783A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_783A8);
  }

  return result;
}

unint64_t sub_35C58()
{
  result = qword_783B0;
  if (!qword_783B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_783B0);
  }

  return result;
}

uint64_t sub_35CDC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_35D34()
{
  result = qword_783C8;
  if (!qword_783C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_783C8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Opentelemetry_Proto_Metrics_V1_DataPointFlags(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Opentelemetry_Proto_Metrics_V1_DataPointFlags(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_36FE8(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_37004(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

void sub_37110(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t __swift_get_extra_inhabitant_index_39Tm(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v6) = -1;
    }

    return (v6 + 1);
  }

  else
  {
    v12 = sub_5BCE4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a2)
    {
      v14 = v12;
      v15 = *(v13 + 48);
      v16 = a1 + *(a3 + 24);

      return v15(v16, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = *(*(v17 - 8) + 48);
      v19 = a1 + *(a3 + 28);

      return v18(v19, a2, v17);
    }
  }
}

void *__swift_store_extra_inhabitant_index_40Tm(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v12 = sub_5BCE4();
    v13 = *(v12 - 8);
    if (*(v13 + 84) == a3)
    {
      v14 = v12;
      v15 = *(v13 + 56);
      v16 = v7 + *(a4 + 24);

      return v15(v16, a2, a2, v14);
    }

    else
    {
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v18 = *(*(v17 - 8) + 56);
      v19 = v7 + *(a4 + 28);

      return v18(v19, a2, a2, v17);
    }
  }

  return result;
}

void sub_37480(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_37110(319, a4, a5, &type metadata accessor for Array);
  if (v9 <= 0x3F)
  {
    sub_5BCE4();
    if (v10 <= 0x3F)
    {
      sub_37110(319, a6, a7, &type metadata accessor for Optional);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_37580(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 28);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_5BCE4();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 36);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_376C4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78240, &qword_5FB10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 28);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_5BCE4();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 36);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_377F4()
{
  sub_37110(319, &qword_78528, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Metric.OneOf_Data, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_37110(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_5BCE4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_37908()
{
  result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Gauge(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Sum(319);
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Histogram(319);
      if (v3 <= 0x3F)
      {
        result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogram(319);
        if (v4 <= 0x3F)
        {
          result = type metadata accessor for Opentelemetry_Proto_Metrics_V1_Summary(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_37A14(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_37AD4(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_37B78()
{
  sub_37110(319, &qword_78530, type metadata accessor for Opentelemetry_Proto_Metrics_V1_NumberDataPoint, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_5BCE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_91Tm(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_92Tm(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_37E2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_37110(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    sub_5BCE4();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_37F1C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_37110(319, a4, a5, &type metadata accessor for Array);
  if (v5 <= 0x3F)
  {
    sub_5BCE4();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_37FD0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_38090(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_38134()
{
  sub_37110(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_392F4(319, &qword_78550, &type metadata for Opentelemetry_Proto_Metrics_V1_NumberDataPoint.OneOf_Value, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_37110(319, &qword_78558, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_5BCE4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_382A8(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

void *sub_38368(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3840C()
{
  sub_37110(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_392F4(319, &qword_78288, &type metadata for UInt64, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_392F4(319, &qword_78280, &type metadata for Double, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_37110(319, &qword_78558, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &type metadata accessor for Array);
        if (v3 <= 0x3F)
        {
          sub_5BCE4();
          if (v4 <= 0x3F)
          {
            sub_392F4(319, &qword_78560, &type metadata for Double, &type metadata accessor for Optional);
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

uint64_t sub_385E4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 52);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

void *sub_38728(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_5BCE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 52);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A8, &qword_5FB18);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_38858()
{
  sub_37110(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_37110(319, &qword_78558, type metadata accessor for Opentelemetry_Proto_Metrics_V1_Exemplar, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_5BCE4();
      if (v2 <= 0x3F)
      {
        sub_392F4(319, &qword_78560, &type metadata for Double, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_37110(319, &qword_78568, type metadata accessor for Opentelemetry_Proto_Metrics_V1_ExponentialHistogramDataPoint.Buckets, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_38A28(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_38AE8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_38B8C()
{
  sub_392F4(319, &qword_78288, &type metadata for UInt64, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_5BCE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_38C58(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_38D18(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_38DBC()
{
  sub_37110(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_37110(319, &qword_78570, type metadata accessor for Opentelemetry_Proto_Metrics_V1_SummaryDataPoint.ValueAtQuantile, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_5BCE4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_38EF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = sub_5BCE4();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_38F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 24);
  v7 = sub_5BCE4();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_38FF8()
{
  result = sub_5BCE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_39088(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

void *sub_39148(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_391EC()
{
  sub_37110(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_392F4(319, &qword_78578, &type metadata for Opentelemetry_Proto_Metrics_V1_Exemplar.OneOf_Value, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_5BCE4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_392F4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_39348(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_39394(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_393FC()
{
  result = qword_78600;
  if (!qword_78600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78600);
  }

  return result;
}

uint64_t Opentelemetry_Proto_Common_V1_AnyValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = *(type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0) - 8);
  v4 = *(v69 + 64);
  v5 = (off_70AD0)();
  v70 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AD0(v5);
  v8 = &v62 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList(0);
  v10 = *(*(v9 - 8) + 64);
  v11 = off_70AD0(v9 - 8);
  v68 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AD0(v11);
  v71 = (&v62 - v13);
  v14 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue(0);
  v15 = *(*(v14 - 8) + 64);
  v16 = off_70AD0(v14 - 8);
  v18 = &v62 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70AD0(v16);
  v20 = (&v62 - v19);
  v21 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v22 = v21 - 8;
  v23 = *(v21 - 8);
  v24 = *(v23 + 64);
  v25 = off_70AD0(v21);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = off_70AD0(v25);
  v30 = &v62 - v29;
  off_70AD0(v28);
  v32 = &v62 - v31;
  sub_A08C(a2);
  v33 = a2 + *(v22 + 28);
  sub_D0E0();
  Opentelemetry_Proto_Common_V1_AnyValue.init()(v32);
  sub_62FC(a1, v73);
  if (swift_dynamicCast())
  {
    Opentelemetry_Proto_Common_V1_AnyValue.stringValue.setter(*&v72[0], *(&v72[0] + 1));
    goto LABEL_9;
  }

  sub_62FC(a1, v73);
  if (swift_dynamicCast())
  {
    Opentelemetry_Proto_Common_V1_AnyValue.doubleValue.setter(*v72);
    goto LABEL_9;
  }

  sub_62FC(a1, v73);
  if (swift_dynamicCast())
  {
    Opentelemetry_Proto_Common_V1_AnyValue.intValue.setter(*&v72[0]);
    goto LABEL_9;
  }

  sub_62FC(a1, v73);
  if (swift_dynamicCast())
  {
    Opentelemetry_Proto_Common_V1_AnyValue.BOOLValue.setter(v72[0]);
    goto LABEL_9;
  }

  sub_62FC(a1, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78668, &qword_61A70);
  if (swift_dynamicCast())
  {
    v64 = a1;
    v65 = a2;
    v37 = *&v72[0];
    Opentelemetry_Proto_Common_V1_ArrayValue.init()(v20);
    v38 = v37[2];
    if (v38)
    {
      v39 = *v20;
      v71 = v37;
      v40 = (v37 + 4);
      do
      {
        sub_62FC(v40, v73);
        Opentelemetry_Proto_Common_V1_AnyValue.init(from:)(v73);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = sub_3A1A4(0, v39[2] + 1, 1, v39, &qword_78670, &qword_61A78, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        }

        v42 = v39[2];
        v41 = v39[3];
        if (v42 >= v41 >> 1)
        {
          v39 = sub_3A1A4(v41 > 1, v42 + 1, 1, v39, &qword_78670, &qword_61A78, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        }

        v39[2] = v42 + 1;
        sub_3A13C(v30, v39 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v42, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
        v40 += 32;
        --v38;
      }

      while (v38);

      *v20 = v39;
    }

    else
    {
    }

    sub_3A380(v20, v18, type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue);
    Opentelemetry_Proto_Common_V1_AnyValue.arrayValue.setter(v18);
    __swift_destroy_boxed_opaque_existential_0(v64);
    a2 = v65;
    sub_3A3E8(v65, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    v34 = type metadata accessor for Opentelemetry_Proto_Common_V1_ArrayValue;
    v35 = v20;
    goto LABEL_10;
  }

  sub_62FC(a1, v73);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78080, &unk_5EEF0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    __swift_destroy_boxed_opaque_existential_0(a1);
    v34 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue;
    v35 = a2;
LABEL_10:
    sub_3A3E8(v35, v34);
    return sub_3A13C(v32, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  v64 = a1;
  v65 = a2;
  v43 = *&v72[0];
  result = Opentelemetry_Proto_Common_V1_KeyValueList.init()(v71);
  v44 = 0;
  v46 = v43 + 64;
  v45 = *(v43 + 64);
  v63 = v43;
  v47 = 1 << *(v43 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & v45;
  v50 = (v47 + 63) >> 6;
  if ((v48 & v45) != 0)
  {
LABEL_30:
    while (1)
    {
      v52 = __clz(__rbit64(v49)) | (v44 << 6);
      v53 = (*(v63 + 48) + 16 * v52);
      v54 = *v53;
      v55 = v53[1];
      sub_39E64(*(v63 + 56) + 32 * v52, v73);
      v66 = v73[0];
      v67 = v73[1];

      if (!v55)
      {
        break;
      }

      v49 &= v49 - 1;
      v72[1] = v67;
      v72[0] = v66;
      if (*(&v67 + 1))
      {
        sub_9B3C(v72, v73);
        Opentelemetry_Proto_Common_V1_KeyValue.init()(v8);
        v56 = *(v8 + 1);

        *v8 = v54;
        *(v8 + 1) = v55;
        sub_62FC(v73, v72);
        Opentelemetry_Proto_Common_V1_AnyValue.init(from:)(v72);
        Opentelemetry_Proto_Common_V1_KeyValue.value.setter(v27);
        sub_3A380(v8, v70, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        v57 = *v71;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v57 = sub_3A1A4(0, v57[2] + 1, 1, v57, &qword_78678, &unk_61A80, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        }

        v59 = v57[2];
        v58 = v57[3];
        if (v59 >= v58 >> 1)
        {
          v57 = sub_3A1A4(v58 > 1, v59 + 1, 1, v57, &qword_78678, &unk_61A80, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        }

        __swift_destroy_boxed_opaque_existential_0(v73);
        v57[2] = v59 + 1;
        sub_3A13C(v70, v57 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v59, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        *v71 = v57;
        result = sub_3A3E8(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if (!v49)
        {
          goto LABEL_26;
        }
      }

      else
      {

        result = sub_39ED4(v72);
        if (!v49)
        {
          goto LABEL_26;
        }
      }
    }

LABEL_38:

    v60 = v71;
    v61 = v68;
    sub_3A380(v71, v68, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList);
    Opentelemetry_Proto_Common_V1_AnyValue.kvlistValue.setter(v61);
    __swift_destroy_boxed_opaque_existential_0(v64);
    a2 = v65;
    sub_3A3E8(v65, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    v34 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValueList;
    v35 = v60;
    goto LABEL_10;
  }

LABEL_26:
  while (1)
  {
    v51 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      break;
    }

    if (v51 >= v50)
    {
      goto LABEL_38;
    }

    v49 = *(v46 + 8 * v51);
    ++v44;
    if (v49)
    {
      v44 = v51;
      goto LABEL_30;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_39E64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78090, &unk_5F950);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_39ED4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78090, &unk_5F950);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Array<A>.init(from:)(uint64_t a1)
{
  v2 = sub_3A7B0(_swiftEmptyArrayStorage);
  v28 = *(a1 + 16);
  if (!v28)
  {
LABEL_16:

    v26 = sub_17740(v2);

    return _sSa16TelemetrySupportAA38Opentelemetry_Proto_Common_V1_KeyValueVRszlE4fromSayACGSDySSypSgG_tcfC_0(v26);
  }

  v3 = 0;
  v4 = (a1 + 56);
  while (v3 < *(a1 + 16))
  {
    v9 = *(v4 - 3);
    v8 = *(v4 - 2);
    v11 = *(v4 - 1);
    v10 = *v4;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = sub_9094(v9, v8);
    v15 = v2[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      goto LABEL_20;
    }

    v19 = v14;
    if (v2[3] < v18)
    {
      sub_17CCC(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_9094(v9, v8);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_22;
      }

LABEL_11:
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v25 = v13;
    sub_17F8C();
    v13 = v25;
    if (v19)
    {
LABEL_3:
      v5 = v13;

      v6 = (v2[7] + 16 * v5);
      v7 = v6[1];
      *v6 = v11;
      v6[1] = v10;

      goto LABEL_4;
    }

LABEL_12:
    v2[(v13 >> 6) + 8] |= 1 << v13;
    v21 = (v2[6] + 16 * v13);
    *v21 = v9;
    v21[1] = v8;
    v22 = (v2[7] + 16 * v13);
    *v22 = v11;
    v22[1] = v10;
    v23 = v2[2];
    v17 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v17)
    {
      goto LABEL_21;
    }

    v2[2] = v24;
LABEL_4:
    ++v3;
    v4 += 4;
    if (v28 == v3)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  result = sub_5C3C4();
  __break(1u);
  return result;
}

uint64_t sub_3A13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

size_t sub_3A1A4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

uint64_t sub_3A380(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3A3E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _sSa16TelemetrySupportAA38Opentelemetry_Proto_Common_V1_KeyValueVRszlE4fromSayACGSDySSypSgG_tcfC_0(uint64_t a1)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v3 = *(*(v2 - 8) + 64);
  off_70AD0(v2 - 8);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  v7 = off_70AD0(v5 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = off_70AD0(v7);
  v12 = &v28 - v11;
  v13 = 0;
  v14 = 1 << *(a1 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(a1 + 64);
  v17 = (v14 + 63) >> 6;
  v18 = _swiftEmptyArrayStorage;
  while (1)
  {
    v19 = v13;
    if (!v16)
    {
      break;
    }

LABEL_8:
    v20 = __clz(__rbit64(v16)) | (v13 << 6);
    v21 = (*(a1 + 48) + 16 * v20);
    v22 = *v21;
    v23 = v21[1];
    sub_39E64(*(a1 + 56) + 32 * v20, v33);
    v30 = v33[0];
    v31 = v33[1];

    if (!v23)
    {
LABEL_16:

      return v18;
    }

    v16 &= v16 - 1;
    v32[0] = v30;
    v32[1] = v31;
    if (*(&v31 + 1))
    {
      sub_9B3C(v32, v33);
      Opentelemetry_Proto_Common_V1_KeyValue.init()(v12);
      v24 = *(v12 + 1);

      *v12 = v22;
      *(v12 + 1) = v23;
      sub_62FC(v33, v32);
      v25 = v29;
      Opentelemetry_Proto_Common_V1_AnyValue.init(from:)(v32, v29);
      Opentelemetry_Proto_Common_V1_KeyValue.value.setter(v25);
      sub_3A380(v12, v9, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_3A1A4(0, v18[2] + 1, 1, v18, &qword_78678, &unk_61A80, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
      }

      v27 = v18[2];
      v26 = v18[3];
      if (v27 >= v26 >> 1)
      {
        v18 = sub_3A1A4(v26 > 1, v27 + 1, 1, v18, &qword_78678, &unk_61A80, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
      }

      __swift_destroy_boxed_opaque_existential_0(v33);
      v18[2] = v27 + 1;
      sub_3A13C(v9, v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v27, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
      result = sub_3A3E8(v12, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
    }

    else
    {

      result = sub_39ED4(v32);
    }
  }

  while (1)
  {
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v13 >= v17)
    {
      goto LABEL_16;
    }

    v16 = *(a1 + 64 + 8 * v13);
    ++v19;
    if (v16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_3A7B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78270, &unk_5F9D0);
    v3 = sub_5C374();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_9094(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t Opentelemetry_Proto_Resource_V1_Resource.attributes.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Resource_V1_Resource.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource() + 24);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource()
{
  result = qword_7DC80;
  if (!qword_7DC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Opentelemetry_Proto_Resource_V1_Resource.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource() + 24);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Resource_V1_Resource.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  *(a1 + 8) = 0;
  v1 = a1 + *(type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource() + 24);
  return sub_5BCD4();
}

uint64_t sub_3AB40()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7D968);
  __swift_project_value_buffer(v0, qword_7D968);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "attributes";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "dropped_attributes_count";
  *(v10 + 1) = 24;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t sub_3AD10()
{
  if (qword_7D960 != -1)
  {
    swift_once();
  }

  v0 = sub_5C044();

  return __swift_project_value_buffer(v0, qword_7D968);
}

uint64_t static Opentelemetry_Proto_Resource_V1_Resource._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_7D960 != -1)
  {
    swift_once();
  }

  v2 = sub_5C044();
  v3 = __swift_project_value_buffer(v2, qword_7D968);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Opentelemetry_Proto_Resource_V1_Resource.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
        sub_3B880(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_5BE84();
      }

      else if (result == 2)
      {
        sub_5BE64();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Resource_V1_Resource.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0), sub_3B880(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue), result = sub_5BFD4(), !v1))
  {
    if (!v0[2] || (result = sub_5BFC4(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource() + 24);
      return sub_5BCC4();
    }
  }

  return result;
}

uint64_t static Opentelemetry_Proto_Resource_V1_Resource.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource() + 24);
  sub_5BCE4();
  sub_3B880(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

Swift::Int Opentelemetry_Proto_Resource_V1_Resource.hashValue.getter()
{
  sub_5C454();
  type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  sub_3B880(&qword_78680, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_3B160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = _swiftEmptyArrayStorage;
  *(a2 + 8) = 0;
  v2 = a2 + *(a1 + 24);
  return sub_5BCD4();
}

uint64_t sub_3B1DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_3B880(&qword_78690, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_3B258@<X0>(uint64_t a1@<X8>)
{
  if (qword_7D960 != -1)
  {
    swift_once();
  }

  v2 = sub_5C044();
  v3 = __swift_project_value_buffer(v2, qword_7D968);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_3B300(uint64_t a1)
{
  v2 = sub_3B880(&qword_78658, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_3B36C()
{
  sub_3B880(&qword_78658, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);

  return sub_5BF14();
}

uint64_t sub_3B3E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_12FAC(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v6 = *(a3 + 24);
  sub_5BCE4();
  sub_3B880(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_3B5D4(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_3B694(void *result, uint64_t a2, int a3, uint64_t a4)
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
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_3B738()
{
  sub_3B7C4();
  if (v0 <= 0x3F)
  {
    sub_5BCE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_3B7C4()
{
  if (!qword_781C8)
  {
    type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(255);
    v0 = sub_5C1A4();
    if (!v1)
    {
      atomic_store(v0, &qword_781C8);
    }
  }
}

uint64_t sub_3B81C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3B880(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3B8C8(uint64_t a1)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3B9A0()
{
  v0 = *(*(sub_5BAF4() - 8) + 64);
  off_70B48();
  v1 = sub_5BAD4();
  __swift_allocate_value_buffer(v1, qword_80978);
  __swift_project_value_buffer(v1, qword_80978);
  sub_5BAE4();
  return sub_5BAC4();
}

uint64_t sub_3BAE4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78710, &qword_61E48);
  v0 = sub_5BAD4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EBD0;
  if (qword_7DC98 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_80978);
  result = (*(v1 + 16))(v4 + v3, v5, v0);
  qword_80990 = v4;
  return result;
}

uint64_t *sub_3BC00()
{
  if (qword_7DCA0 != -1)
  {
    swift_once();
  }

  return &qword_80990;
}

uint64_t sub_3BC50()
{
  if (qword_7DCA0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_3BCB8(uint64_t a1, uint64_t *a2)
{
  v3 = sub_5BAF4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_5BAE4();
}

uint64_t sub_3BD50(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

uint64_t sub_3BDE8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_3BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a5;
  v31 = a1;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  off_70B48();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78698, &qword_61C60);
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B48();
  v15 = v25 - v14;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786A0, &qword_61C68);
  v26 = *(v28 - 8);
  v16 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B48();
  v18 = v25 - v17;
  if (qword_7DC98 != -1)
  {
    swift_once();
  }

  v19 = sub_5BAD4();
  v25[1] = __swift_project_value_buffer(v19, qword_80978);
  v25[0] = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  sub_3C2B8(&qword_786A8, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);
  sub_5BCB4();
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_3C2B8(&qword_786B0, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
  sub_5BCA4();
  (*(v10 + 16))(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a2);
  v20 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = a3;
  *(v21 + 4) = a4;
  *(v21 + 5) = v27;
  (*(v10 + 32))(&v21[v20], v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_5BC94();
  sub_3DD98(&qword_786B8, &qword_786A0, &qword_61C68);
  sub_3DD98(&qword_786C0, &qword_78698, &qword_61C60);
  v22 = v30;
  v23 = v28;
  sub_5BC84();

  (*(v29 + 8))(v15, v22);
  return (*(v26 + 8))(v18, v23);
}

uint64_t sub_3C2B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3C300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
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

uint64_t sub_3C448()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_3C4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 32);
  v10 = (*(*(v8 - 8) + 80) + 48) & ~*(*(v8 - 8) + 80);
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_65E4;

  return sub_3C300(a1, a2, a3, v3 + v10, v8, v11, v9);
}

uint64_t sub_3C5CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786C8, &qword_61C88);
  v6[8] = v7;
  v8 = *(v7 - 8);
  v6[9] = v8;
  v9 = *(v8 + 64) + 15;
  v6[10] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786D0, &qword_61C90);
  v6[11] = v10;
  v11 = *(v10 - 8);
  v6[12] = v11;
  v12 = *(v11 + 64) + 15;
  v6[13] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786D8, &unk_61C98);
  v6[14] = v13;
  v14 = *(v13 - 8);
  v6[15] = v14;
  v15 = *(v14 + 64) + 15;
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();

  return _swift_task_switch(sub_3C77C, 0, 0);
}

uint64_t sub_3C77C()
{
  (*(v0[9] + 16))(v0[10], v0[3], v0[8]);
  v1 = async function pointer to ServerRequest.init(stream:)[1];
  v2 = swift_task_alloc();
  v0[18] = v2;
  v3 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  *v2 = v0;
  v2[1] = sub_3C840;
  v4 = v0[13];
  v5 = v0[10];

  return ServerRequest.init(stream:)(v4, v5, v3);
}

uint64_t sub_3C840()
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
    v5[1] = sub_3CA3C;
    v6 = v3[17];
    v7 = v3[13];
    v8 = v3[6];
    v9 = v3[7];
    v10 = v3[4];
    v11 = v3[5];

    return v14(v6, v7, v10, v11, v8);
  }
}

uint64_t sub_3CA3C()
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
    v6 = sub_3CBAC;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_3CBAC()
{
  v1 = v0[17];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[13];
  v5 = v0[10];
  v6 = v0[2];
  (*(v3 + 16))(v0[16], v1, v2);
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_5BB04();
  (*(v3 + 8))(v1, v2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_3CCA4()
{
  v1 = v0[19];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_3CD30()
{
  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[13];
  v5 = v0[10];

  v6 = v0[1];

  return v6();
}

uint64_t sub_3CDBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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
  v8 = *(*(type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0) - 8) + 64) + 15;
  v6[10] = swift_task_alloc();
  v9 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  v6[11] = v9;
  v10 = *(*(v9 - 8) + 64) + 15;
  v6[12] = swift_task_alloc();

  return _swift_task_switch(sub_3CEBC, 0, 0);
}

uint64_t sub_3CEBC()
{
  v1 = v0[10];
  v14 = v0[6];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786D0, &qword_61C90);
  sub_5BA64();
  v3 = *(v14 + 16);
  v13 = (v3 + *v3);
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_3D004;
  v6 = v0[12];
  v7 = v0[10];
  v8 = v0[6];
  v9 = v0[7];
  v10 = v0[4];
  v11 = v0[5];

  return v13(v6, v7, v10, v11, v8);
}

uint64_t sub_3D004()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 80);
  v6 = *v1;
  *(*v1 + 112) = v0;

  sub_3D29C(v3);
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

uint64_t sub_3D134()
{
  v1 = v0[11];
  v2 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[2];
  sub_5BB14();
  sub_5BB14();
  sub_5BAB4();

  v7 = v0[1];

  return v7();
}

uint64_t sub_3D210()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];

  v5 = v0[1];
  v6 = v0[14];

  return v5();
}

uint64_t sub_3D29C(uint64_t a1)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_3D318(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_3E8F8, 0, 0);
}

uint64_t sub_3D338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  return _swift_task_switch(sub_3D380, 0, 0);
}

uint64_t sub_3D380()
{
  if (qword_7DC98 != -1)
  {
    swift_once();
  }

  v1 = sub_5BAD4();
  v2 = __swift_project_value_buffer(v1, qword_80978);
  v3 = async function pointer to GRPCClient.unary<A, B, C, D, E>(request:descriptor:serializer:deserializer:options:onResponse:)[1];
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
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

uint64_t sub_3D4A8()
{
  v1 = *(*v0 + 120);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_3D59C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *v7;
  v13 = swift_task_alloc();
  *(v8 + 16) = v13;
  *v13 = v8;
  v13[1] = sub_65E4;

  return sub_3D338(a1, a2, a3, a4, a5, a6, a7, v12);
}

uint64_t sub_3D6B4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_3D6D4, 0, 0);
}

uint64_t sub_3D6D4()
{
  v1 = v0[2];
  v2 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78708, &qword_61E40);
  sub_5BAA4();
  v3 = v0[1];

  return v3();
}

uint64_t sub_3D768(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786E0, &qword_61CC8);
  v9[11] = v10;
  v11 = *(v10 - 8);
  v9[12] = v11;
  v12 = *(v11 + 64) + 15;
  v9[13] = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_786E8, &qword_61CD0);
  v9[14] = v13;
  v14 = *(v13 - 8);
  v9[15] = v14;
  v15 = *(v14 + 64) + 15;
  v9[16] = swift_task_alloc();

  return _swift_task_switch(sub_3D8AC, 0, 0);
}

void sub_3D8AC()
{
  v1 = v0[16];
  v2 = v0[13];
  v16 = v0[9];
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  sub_3C2B8(&qword_786A8, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest);
  sub_5BCA4();
  type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse(0);
  sub_3C2B8(&qword_786B0, type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceResponse);
  sub_5BCB4();
  v3 = *(v16 + 8);
  v15 = v3 + *v3;
  v4 = v3[1];
  v5 = swift_task_alloc();
  v0[17] = v5;
  sub_3DD98(&qword_786F0, &qword_786E8, &qword_61CD0);
  sub_3DD98(&qword_786F8, &qword_786E0, &qword_61CC8);
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

uint64_t sub_3DAFC()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 112);
  v7 = *(*v1 + 104);
  v8 = *(*v1 + 96);
  v9 = *(*v1 + 88);
  v10 = *v1;
  *(*v1 + 144) = v0;

  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  if (v0)
  {

    return _swift_task_switch(sub_3DD28, 0, 0);
  }

  else
  {
    v11 = *(v2 + 128);
    v12 = *(v2 + 104);

    v13 = *(v10 + 8);

    return v13();
  }
}

uint64_t sub_3DD28()
{
  v1 = v0[16];
  v2 = v0[13];

  v3 = v0[1];
  v4 = v0[18];

  return v3();
}

uint64_t sub_3DD98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_3DE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v13 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  v9[15] = v13;
  v14 = *(*(v13 - 8) + 64) + 15;
  v9[16] = swift_task_alloc();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78700, &qword_61CE8);
  v9[17] = v15;
  v16 = *(v15 - 8);
  v9[18] = v16;
  v17 = *(v16 + 64) + 15;
  v9[19] = swift_task_alloc();

  return _swift_task_switch(sub_3DF78, 0, 0);
}

uint64_t sub_3DF78()
{
  v1 = v0[19];
  v2 = v0[15];
  v4 = v0[13];
  v3 = v0[14];
  v5 = v0[12];
  v6 = v0[4];
  sub_3E2D0(v0[3], v0[16]);
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

  return sub_3D768(v16, v8, v15, v13, v14, v11, v12, v9);
}

uint64_t sub_3E084()
{
  v2 = *(*v1 + 160);
  v5 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = sub_3E234;
  }

  else
  {
    v3 = sub_3E198;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3E198()
{
  v1 = v0[16];
  v2 = v0[14];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_3E234()
{
  v1 = v0[16];
  v2 = v0[14];
  (*(v0[18] + 8))(v0[19], v0[17]);

  v3 = v0[1];
  v4 = v0[21];

  return v3();
}

uint64_t sub_3E2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Metrics_V1_ExportMetricsServiceRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_3E364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_3E4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_3E5EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
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

uint64_t sub_3E730(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
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

uint64_t sub_3E8A0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t Opentelemetry_Proto_Logs_V1_SeverityNumber.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 0x19;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_3E954@<X0>(uint64_t *a1@<X8>)
{
  result = Opentelemetry_Proto_Logs_V1_SeverityNumber.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_3E97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_48BD8();

  return Enum.hash(into:)(a1, a2, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecordFlags.init(rawValue:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result == 255)
  {
    v2 = 1;
  }

  else
  {
    v2 = result;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  if (result)
  {
    v3 = result == 255;
  }

  else
  {
    v3 = 1;
  }

  *(a2 + 8) = v3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecordFlags.rawValue.getter()
{
  v1 = 255;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_3EA58@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = result == 0;
  if (result == 255)
  {
    v3 = 1;
  }

  else
  {
    v3 = result;
  }

  *a2 = v3;
  if (result == 255)
  {
    v2 = 1;
  }

  *(a2 + 8) = v2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_3EA84()
{
  v1 = 255;
  if (!*v0)
  {
    v1 = 0;
  }

  if (v0[8])
  {
    return v1;
  }

  else
  {
    return *v0;
  }
}

uint64_t *sub_3EAB4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result == 0;
  v4 = *result == 255;
  if (*result == 255)
  {
    v2 = 1;
  }

  *a2 = v2;
  v5 = v4 || v3;
  *(a2 + 8) = v5;
  *(a2 + 9) = 0;
  return result;
}

void sub_3EAE4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 255;
  if (!*v1)
  {
    v3 = 0;
  }

  if (*(v1 + 8))
  {
    v2 = v3;
  }

  *a1 = v2;
}

uint64_t sub_3EB08(uint64_t a1, uint64_t a2)
{
  v4 = sub_49B94();

  return Enum.hash(into:)(a1, a2, v4);
}

BOOL sub_3EB54(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = 255;
  }

  else
  {
    v3 = 0;
  }

  if (*(a1 + 8))
  {
    v2 = v3;
  }

  if (*a2)
  {
    v4 = 255;
  }

  else
  {
    v4 = 0;
  }

  if (!*(a2 + 8))
  {
    v4 = *a2;
  }

  return v2 == v4;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogsData.resourceLogs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogsData.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0) + 20);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogsData.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0) + 20);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogsData.init()@<X0>(void *a1@<X8>)
{
  *a1 = &_swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0) + 20);
  return sub_5BCD4();
}

uint64_t Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50();
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_78298, &qword_5FB00);
  v7 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_405A4(v5, a1, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  Opentelemetry_Proto_Resource_V1_Resource.init()(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_78298, &qword_5FB00);
  }

  return result;
}

uint64_t sub_3EEFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50();
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  sub_A024(a1 + *(v7 + 28), v6, &qword_78298, &qword_5FB00);
  v8 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_405A4(v6, a2, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  Opentelemetry_Proto_Resource_V1_Resource.init()(a2);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_78298, &qword_5FB00);
  }

  return result;
}

uint64_t sub_3F054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70B50();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3FCFC(a1, v8, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  v9 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) + 28);
  sub_60C4(a2 + v9, &qword_78298, &qword_5FB00);
  sub_405A4(v8, a2 + v9, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) + 28);
  sub_60C4(v1 + v3, &qword_78298, &qword_5FB00);
  sub_405A4(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  v4 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Logs_V1_ResourceLogs.resource.modify(void *a1))(uint64_t **a1, char a2)
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
  v14 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) + 28);
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
    sub_405A4(v7, v13, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  }

  return sub_3F44C;
}

uint64_t Opentelemetry_Proto_Logs_V1_ScopeLogs.scope.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50();
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  sub_A024(v1 + *(v6 + 28), v5, &qword_782A0, &qword_5FB08);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_405A4(v5, a1, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  Opentelemetry_Proto_Common_V1_InstrumentationScope.init()(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_782A0, &qword_5FB08);
  }

  return result;
}

uint64_t sub_3F770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50();
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  sub_A024(a1 + *(v7 + 28), v6, &qword_782A0, &qword_5FB08);
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_405A4(v6, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  Opentelemetry_Proto_Common_V1_InstrumentationScope.init()(a2);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_782A0, &qword_5FB08);
  }

  return result;
}

uint64_t sub_3F8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70B50();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3FCFC(a1, v8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  v9 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0) + 28);
  sub_60C4(a2 + v9, &qword_782A0, &qword_5FB08);
  sub_405A4(v8, a2 + v9, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_ScopeLogs.scope.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0) + 28);
  sub_60C4(v1 + v3, &qword_782A0, &qword_5FB08);
  sub_405A4(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Logs_V1_ScopeLogs.scope.modify(void *a1))(uint64_t **a1, char a2)
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
  v14 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0) + 28);
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
    sub_405A4(v7, v13, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  }

  return sub_3FCC0;
}

uint64_t sub_3FCFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_3FD64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

BOOL sub_3FE00(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(a1, a2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50();
  v11 = &v16 - v10;
  v12 = a3(0);
  sub_A024(v4 + *(v12 + 28), v11, a1, a2);
  v13 = a4(0);
  v14 = (*(*(v13 - 8) + 48))(v11, 1, v13) != 1;
  sub_60C4(v11, a1, a2);
  return v14;
}

uint64_t sub_3FF38(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_60C4(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Opentelemetry_Proto_Logs_V1_ScopeLogs.schemaURL.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Opentelemetry_Proto_Logs_V1_ScopeLogs.schemaURL.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_400A4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_40140(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_40234@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, char *a3@<X8>)
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

void Opentelemetry_Proto_Logs_V1_LogRecord.severityNumber.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.severityNumber.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.severityText.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.severityText.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50();
  v5 = &v10 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  sub_A024(v1 + *(v6 + 60), v5, &qword_78110, &qword_61E70);
  v7 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_405A4(v5, a1, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  Opentelemetry_Proto_Common_V1_AnyValue.init()(a1);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_78110, &qword_61E70);
  }

  return result;
}

uint64_t sub_405A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_4060C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50();
  v6 = &v11 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  sub_A024(a1 + *(v7 + 60), v6, &qword_78110, &qword_61E70);
  v8 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_405A4(v6, a2, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  Opentelemetry_Proto_Common_V1_AnyValue.init()(a2);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_78110, &qword_61E70);
  }

  return result;
}

uint64_t sub_40764(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70B50();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_3FCFC(a1, v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  v9 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 60);
  sub_60C4(a2 + v9, &qword_78110, &qword_61E70);
  sub_405A4(v8, a2 + v9, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.body.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 60);
  sub_60C4(v1 + v3, &qword_78110, &qword_61E70);
  sub_405A4(a1, v1 + v3, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Opentelemetry_Proto_Logs_V1_LogRecord.body.modify(void *a1))(uint64_t **a1, char a2)
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
  v14 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 60);
  *(v4 + 12) = v14;
  sub_A024(v1 + v14, v7, &qword_78110, &qword_61E70);
  v15 = *(v10 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    Opentelemetry_Proto_Common_V1_AnyValue.init()(v13);
    if (v15(v7, 1, v8) != 1)
    {
      sub_60C4(v7, &qword_78110, &qword_61E70);
    }
  }

  else
  {
    sub_405A4(v7, v13, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  }

  return sub_40B5C;
}

void sub_40B98(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  v9 = *a1;
  v10 = *(*a1 + 12);
  v11 = (*a1)[4];
  v12 = (*a1)[5];
  v13 = (*a1)[2];
  v14 = (*a1)[3];
  v15 = **a1;
  v17 = (*a1)[1];
  if (a2)
  {
    sub_3FCFC(v12, v11, a6);
    sub_60C4(v15 + v10, a3, a4);
    sub_405A4(v11, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
    sub_3FD64(v12, a6);
  }

  else
  {
    sub_60C4(v15 + v10, a3, a4);
    sub_405A4(v12, v15 + v10, a5);
    (*(v14 + 56))(v15 + v10, 0, 1, v13);
  }

  free(v12);
  free(v11);
  free(v17);

  free(v9);
}

BOOL Opentelemetry_Proto_Logs_V1_LogRecord.hasBody.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50();
  v3 = &v8 - v2;
  v4 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  sub_A024(v0 + *(v4 + 60), v3, &qword_78110, &qword_61E70);
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_60C4(v3, &qword_78110, &qword_61E70);
  return v6;
}

Swift::Void __swiftcall Opentelemetry_Proto_Logs_V1_LogRecord.clearBody()()
{
  v1 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 60);
  sub_60C4(v0 + v1, &qword_78110, &qword_61E70);
  v2 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.attributes.setter(uint64_t a1)
{
  v3 = *(v1 + 48);

  *(v1 + 48) = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.traceID.getter()
{
  v1 = *(v0 + 64);
  sub_D038(v1, *(v0 + 72));
  return v1;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.traceID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_D08C(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.spanID.getter()
{
  v1 = *(v0 + 80);
  sub_D038(v1, *(v0 + 88));
  return v1;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.spanID.setter(uint64_t a1, uint64_t a2)
{
  result = sub_D08C(*(v2 + 80), *(v2 + 88));
  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.eventName.getter()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return v1;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.eventName.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 104);

  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 56);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 56);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 48) = &_swiftEmptyArrayStorage;
  *(a1 + 72) = xmmword_61E50;
  *(a1 + 88) = xmmword_61E50;
  *(a1 + 104) = 0xE000000000000000;
  v2 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  v3 = a1 + *(v2 + 56);
  sub_5BCD4();
  v4 = *(v2 + 60);
  v5 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a1 + v4, 1, 1, v5);
}

uint64_t sub_412C4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v3 = a1(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a2, 1, 1, v3);
}

uint64_t sub_41338()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7DD38);
  __swift_project_value_buffer(v0, qword_7DD38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v55 = swift_allocObject();
  *(v55 + 16) = xmmword_61E60;
  v4 = v55 + v3;
  v5 = v55 + v3 + v1[14];
  *(v55 + v3) = 0;
  *v5 = "SEVERITY_NUMBER_UNSPECIFIED";
  *(v5 + 8) = 27;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.same(_:);
  v7 = sub_5C024();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v55 + v3 + v2 + v1[14];
  *(v4 + v2) = 1;
  *v9 = "SEVERITY_NUMBER_TRACE";
  *(v9 + 8) = 21;
  *(v9 + 16) = 2;
  v8();
  v10 = (v55 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "SEVERITY_NUMBER_TRACE2";
  *(v11 + 1) = 22;
  v11[16] = 2;
  v8();
  v12 = (v55 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "SEVERITY_NUMBER_TRACE3";
  *(v13 + 1) = 22;
  v13[16] = 2;
  v8();
  v14 = (v55 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "SEVERITY_NUMBER_TRACE4";
  *(v15 + 1) = 22;
  v15[16] = 2;
  v8();
  v16 = (v55 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "SEVERITY_NUMBER_DEBUG";
  *(v17 + 1) = 21;
  v17[16] = 2;
  v8();
  v18 = (v55 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 6;
  *v19 = "SEVERITY_NUMBER_DEBUG2";
  *(v19 + 1) = 22;
  v19[16] = 2;
  v8();
  v20 = (v55 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 7;
  *v21 = "SEVERITY_NUMBER_DEBUG3";
  *(v21 + 1) = 22;
  v21[16] = 2;
  v8();
  v22 = v55 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 8;
  *v22 = "SEVERITY_NUMBER_DEBUG4";
  *(v22 + 8) = 22;
  *(v22 + 16) = 2;
  v8();
  v23 = (v55 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "SEVERITY_NUMBER_INFO";
  *(v24 + 1) = 20;
  v24[16] = 2;
  v8();
  v25 = (v55 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "SEVERITY_NUMBER_INFO2";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v8();
  v27 = (v55 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "SEVERITY_NUMBER_INFO3";
  *(v28 + 1) = 21;
  v28[16] = 2;
  v8();
  v29 = (v55 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "SEVERITY_NUMBER_INFO4";
  *(v30 + 1) = 21;
  v30[16] = 2;
  v8();
  v31 = (v55 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "SEVERITY_NUMBER_WARN";
  *(v32 + 1) = 20;
  v32[16] = 2;
  v8();
  v33 = (v55 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "SEVERITY_NUMBER_WARN2";
  *(v34 + 1) = 21;
  v34[16] = 2;
  v8();
  v35 = (v55 + v3 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "SEVERITY_NUMBER_WARN3";
  *(v36 + 1) = 21;
  v36[16] = 2;
  v8();
  v37 = v55 + v3 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 16;
  *v37 = "SEVERITY_NUMBER_WARN4";
  *(v37 + 8) = 21;
  *(v37 + 16) = 2;
  v8();
  v38 = (v55 + v3 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "SEVERITY_NUMBER_ERROR";
  *(v39 + 1) = 21;
  v39[16] = 2;
  v8();
  v40 = (v55 + v3 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "SEVERITY_NUMBER_ERROR2";
  *(v41 + 1) = 22;
  v41[16] = 2;
  v8();
  v42 = (v55 + v3 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "SEVERITY_NUMBER_ERROR3";
  *(v43 + 1) = 22;
  v43[16] = 2;
  v8();
  v44 = (v55 + v3 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "SEVERITY_NUMBER_ERROR4";
  *(v45 + 1) = 22;
  v45[16] = 2;
  v8();
  v46 = (v55 + v3 + 21 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "SEVERITY_NUMBER_FATAL";
  *(v47 + 1) = 21;
  v47[16] = 2;
  v8();
  v48 = (v55 + v3 + 22 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "SEVERITY_NUMBER_FATAL2";
  *(v49 + 1) = 22;
  v49[16] = 2;
  v8();
  v50 = (v55 + v3 + 23 * v2);
  v51 = v50 + v1[14];
  *v50 = 23;
  *v51 = "SEVERITY_NUMBER_FATAL3";
  *(v51 + 1) = 22;
  v51[16] = 2;
  v8();
  v52 = (v55 + v3 + 24 * v2);
  v53 = v52 + v1[14];
  *v52 = 24;
  *v53 = "SEVERITY_NUMBER_FATAL4";
  *(v53 + 1) = 22;
  v53[16] = 2;
  v8();
  return sub_5C034();
}

uint64_t sub_41AC4()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7DD58);
  __swift_project_value_buffer(v0, qword_7DD58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "LOG_RECORD_FLAGS_DO_NOT_USE";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = enum case for _NameMap.NameDescription.same(_:);
  v8 = sub_5C024();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 255;
  *v10 = "LOG_RECORD_FLAGS_TRACE_FLAGS_MASK";
  *(v10 + 1) = 33;
  v10[16] = 2;
  v9();
  return sub_5C034();
}

uint64_t sub_41D20()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7DD78);
  __swift_project_value_buffer(v0, qword_7DD78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EBD0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "resource_logs";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_5C024();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Logs_V1_LogsData.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
        sub_47EAC(&qword_78718, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
        sub_5BE84();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogsData.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0), sub_47EAC(&qword_78718, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs), result = sub_5BFD4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0) + 20);
    return sub_5BCC4();
  }

  return result;
}

uint64_t static Opentelemetry_Proto_Logs_V1_LogsData.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_4613C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData(0) + 20);
  sub_5BCE4();
  sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_421D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_47EAC(&qword_78818, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_42278(uint64_t a1)
{
  v2 = sub_47EAC(&qword_78088, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_422E4()
{
  sub_47EAC(&qword_78088, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogsData);

  return sub_5BF14();
}

uint64_t sub_42360(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_4613C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_5BCE4();
  sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_42430()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7DD98);
  __swift_project_value_buffer(v0, qword_7DD98);
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
  *v10 = "scope_logs";
  *(v10 + 1) = 10;
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

uint64_t Opentelemetry_Proto_Logs_V1_ResourceLogs.decodeMessage<A>(decoder:)()
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
          type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
          sub_47EAC(&qword_78728, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
          sub_5BE84();
          break;
        case 1:
          v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) + 28);
          type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
          sub_47EAC(&qword_78658, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
          sub_5BEB4();
          break;
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_ResourceLogs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_42948(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
      sub_47EAC(&qword_78728, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
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

    v10 = v5 + *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0) + 24);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_42948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  v6 = *(*(v5 - 8) + 64);
  off_70B50(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  off_70B50(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  sub_A024(a1 + *(v14 + 28), v8, &qword_78298, &qword_5FB00);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_60C4(v8, &qword_78298, &qword_5FB00);
  }

  sub_405A4(v8, v13, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  sub_47EAC(&qword_78658, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
  sub_5C004();
  return sub_3FD64(v13, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
}

uint64_t sub_42BFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_47EAC(&qword_78810, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_42C9C(uint64_t a1)
{
  v2 = sub_47EAC(&qword_78718, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_42D08()
{
  sub_47EAC(&qword_78718, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);

  return sub_5BF14();
}

uint64_t sub_42DB0()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7DDB8);
  __swift_project_value_buffer(v0, qword_7DDB8);
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
  *v10 = "log_records";
  *(v10 + 1) = 11;
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

uint64_t Opentelemetry_Proto_Logs_V1_ScopeLogs.decodeMessage<A>(decoder:)()
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
          type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
          sub_47EAC(&qword_78738, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
          sub_5BE84();
          break;
        case 1:
          v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0) + 28);
          type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
          sub_47EAC(&qword_781A8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
          sub_5BEB4();
          break;
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_ScopeLogs.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_432CC(v3, a1, a2, a3);
  if (!v4)
  {
    v7 = *v3;
    if (*(*v5 + 16))
    {
      type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
      sub_47EAC(&qword_78738, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
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

    v10 = v5 + *(type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0) + 24);
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_432CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  v6 = *(*(v5 - 8) + 64);
  off_70B50(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  off_70B50(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  sub_A024(a1 + *(v14 + 28), v8, &qword_782A0, &qword_5FB08);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_60C4(v8, &qword_782A0, &qword_5FB08);
  }

  sub_405A4(v8, v13, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  sub_47EAC(&qword_781A8, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
  sub_5C004();
  return sub_3FD64(v13, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
}

uint64_t sub_43580(uint64_t a1, uint64_t a2)
{
  v4 = sub_47EAC(&qword_78808, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_43620(uint64_t a1)
{
  v2 = sub_47EAC(&qword_78728, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_4368C()
{
  sub_47EAC(&qword_78728, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);

  return sub_5BF14();
}

uint64_t sub_43734()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7DDD8);
  __swift_project_value_buffer(v0, qword_7DDD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_5FAD0;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "time_unix_nano";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = enum case for _NameMap.NameDescription.standard(_:);
  v7 = sub_5C024();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v28 + v3 + v2 + v1[14];
  *(v4 + v2) = 11;
  *v9 = "observed_time_unix_nano";
  *(v9 + 8) = 23;
  *(v9 + 16) = 2;
  v8();
  v10 = (v28 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 2;
  *v11 = "severity_number";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v28 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "severity_text";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v28 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "body";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v28 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "attributes";
  *(v17 + 1) = 10;
  v17[16] = 2;
  v8();
  v18 = (v28 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dropped_attributes_count";
  *(v19 + 1) = 24;
  v19[16] = 2;
  v8();
  v20 = (v28 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "flags";
  *(v21 + 1) = 5;
  v21[16] = 2;
  v8();
  v22 = v28 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "trace_id";
  *(v22 + 8) = 8;
  *(v22 + 16) = 2;
  v8();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "span_id";
  *(v24 + 1) = 7;
  v24[16] = 2;
  v8();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 12;
  *v26 = "event_name";
  *(v26 + 1) = 10;
  v26[16] = 2;
  v8();
  return sub_5C034();
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.decodeMessage<A>(decoder:)()
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
        if (result <= 2)
        {
          if (result == 1)
          {
LABEL_26:
            sub_5BEA4();
            goto LABEL_5;
          }

          if (result == 2)
          {
            sub_48BD8();
            sub_5BDA4();
          }
        }

        else
        {
          switch(result)
          {
            case 3:
              goto LABEL_27;
            case 5:
              v3 = *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 60);
              type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
              sub_47EAC(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
              sub_5BEB4();
              break;
            case 6:
              type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
              sub_47EAC(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
              sub_5BE84();
              break;
          }
        }
      }

      else
      {
        if (result > 9)
        {
          if (result != 10)
          {
            if (result == 11)
            {
              goto LABEL_26;
            }

            if (result != 12)
            {
              goto LABEL_5;
            }

LABEL_27:
            sub_5BE54();
            goto LABEL_5;
          }
        }

        else
        {
          if (result == 7)
          {
            sub_5BE64();
            goto LABEL_5;
          }

          if (result == 8)
          {
            sub_5BE94();
            goto LABEL_5;
          }
        }

        sub_5BDC4();
      }

LABEL_5:
      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Logs_V1_LogRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_5BFF4(), !v4))
  {
    if (!*(v3 + 16) || (v24 = *(v3 + 16), v25 = *(v3 + 24), sub_48BD8(), result = sub_5BF54(), !v4))
    {
      v9 = *(v3 + 40);
      v10 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v10 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v10 || (result = sub_5BFB4(), !v4))
      {
        result = sub_4410C(v3, a1, a2, a3);
        if (!v4)
        {
          if (*(*(v3 + 48) + 16))
          {
            type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
            sub_47EAC(&qword_78130, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_5BFD4();
          }

          if (*(v3 + 56))
          {
            sub_5BFC4();
          }

          if (*(v3 + 60))
          {
            sub_5BFE4();
          }

          v11 = *(v3 + 64);
          v12 = *(v3 + 72);
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
                v16 = *(v3 + 80);
                v17 = *(v3 + 88);
                v18 = v17 >> 62;
                if ((v17 >> 62) > 1)
                {
                  if (v18 != 2)
                  {
                    goto LABEL_35;
                  }

                  v19 = *(v16 + 16);
                  v20 = *(v16 + 24);
                }

                else
                {
                  if (!v18)
                  {
                    if ((v17 & 0xFF000000000000) == 0)
                    {
                      goto LABEL_35;
                    }

                    goto LABEL_34;
                  }

                  v19 = v16;
                  v20 = v16 >> 32;
                }

                if (v19 != v20)
                {
LABEL_34:
                  sub_5BF74();
                }

LABEL_35:
                if (*(v3 + 8))
                {
                  sub_5BFF4();
                }

                v21 = *(v3 + 104);
                v22 = HIBYTE(v21) & 0xF;
                if ((v21 & 0x2000000000000000) == 0)
                {
                  v22 = *(v3 + 96) & 0xFFFFFFFFFFFFLL;
                }

                if (v22)
                {
                  sub_5BFB4();
                }

                v23 = v3 + *(type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0) + 56);
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
      }
    }
  }

  return result;
}

uint64_t sub_4410C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[3] = a4;
  v16[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  v6 = *(*(v5 - 8) + 64);
  off_70B50(v5 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  off_70B50(v9);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  sub_A024(a1 + *(v14 + 60), v8, &qword_78110, &qword_61E70);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_60C4(v8, &qword_78110, &qword_61E70);
  }

  sub_405A4(v8, v13, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_47EAC(&qword_78120, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_5C004();
  return sub_3FD64(v13, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
}

Swift::Int sub_44374(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_5C454();
  a1(0);
  sub_47EAC(a2, a3);
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_443FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = _swiftEmptyArrayStorage;
  *(a2 + 72) = xmmword_61E50;
  *(a2 + 88) = xmmword_61E50;
  *(a2 + 104) = 0xE000000000000000;
  v4 = a2 + *(a1 + 56);
  sub_5BCD4();
  v5 = *(a1 + 60);
  v6 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_444D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 56);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_44548(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 56);
  v5 = sub_5BCE4();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_445BC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 56);
  return result;
}

uint64_t sub_44610(uint64_t a1, uint64_t a2)
{
  v4 = sub_47EAC(&qword_78800, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_446B0(uint64_t a1)
{
  v2 = sub_47EAC(&qword_78738, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_4471C()
{
  sub_47EAC(&qword_78738, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);

  return sub_5BF14();
}

uint64_t sub_4479C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v5 = *(v4 - 8);
  v205 = v4;
  v206 = v5;
  v6 = *(v5 + 64);
  v7 = off_70B50(v4);
  v9 = &v174 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70B50(v7);
  v11 = &v174 - v10;
  v12 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  off_70B50(v12);
  v16 = &v174 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  v18 = *(*(v17 - 8) + 64);
  off_70B50(v17 - 8);
  v20 = &v174 - v19;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78210, &qword_5F8A8);
  v21 = *(*(v198 - 8) + 64);
  off_70B50(v198);
  v23 = &v174 - v22;
  v201 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  v195 = *(v201 - 8);
  v24 = *(v195 + 64);
  v25 = off_70B50(v201);
  v207 = &v174 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70B50(v25);
  v208 = &v174 - v27;
  v199 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v28 = *(v199 - 8);
  v29 = *(v28 + 64);
  off_70B50(v199);
  v196 = &v174 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  v32 = *(*(v31 - 8) + 64);
  off_70B50(v31 - 8);
  v197 = &v174 - v33;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78640, &unk_628E0);
  v34 = *(*(v200 - 8) + 64);
  off_70B50(v200);
  v204 = &v174 - v35;
  v36 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = off_70B50(v36);
  v203 = &v174 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = off_70B50(v38);
  v202 = &v174 - v42;
  v43 = *(a1 + 16);
  if (v43 != *(a2 + 16))
  {
    goto LABEL_254;
  }

  if (!v43 || a1 == a2)
  {
    v172 = 1;
    return v172 & 1;
  }

  v188 = v9;
  v194 = v40;
  v180 = 0;
  v44 = (*(v41 + 80) + 32) & ~*(v41 + 80);
  v45 = a1 + v44;
  v46 = 0;
  v191 = a2 + v44;
  v190 = (v28 + 48);
  v184 = (v13 + 48);
  v47 = *(v41 + 72);
  v186 = v12;
  v177 = v16;
  v179 = v20;
  v185 = v23;
  v48 = v199;
  v50 = v202;
  v49 = v203;
  v51 = v204;
  v193 = v43;
  v182 = v45;
  v181 = v47;
  v189 = v11;
  while (1)
  {
    v52 = v47 * v46;
    sub_3FCFC(v45 + v47 * v46, v50, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    if (v46 == v193)
    {
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
LABEL_260:
      __break(1u);
LABEL_261:
      __break(1u);
LABEL_262:
      __break(1u);
LABEL_263:
      __break(1u);
LABEL_264:
      __break(1u);
LABEL_265:
      __break(1u);
LABEL_266:
      __break(1u);
LABEL_267:
      __break(1u);
LABEL_268:
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __break(1u);
LABEL_286:
      __break(1u);
    }

    sub_3FCFC(v191 + v52, v49, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    v53 = *(v194 + 28);
    v54 = *(v200 + 48);
    sub_A024(v50 + v53, v51, &qword_782A0, &qword_5FB08);
    sub_A024(v49 + v53, v51 + v54, &qword_782A0, &qword_5FB08);
    v55 = *v190;
    v56 = (*v190)(v51, 1, v48);
    v192 = v46;
    if (v56 == 1)
    {
      if (v55(v51 + v54, 1, v48) != 1)
      {
        goto LABEL_249;
      }

      sub_60C4(v51, &qword_782A0, &qword_5FB08);
      v57 = v189;
    }

    else
    {
      v58 = v197;
      sub_A024(v51, v197, &qword_782A0, &qword_5FB08);
      if (v55(v51 + v54, 1, v48) == 1)
      {
        sub_3FD64(v58, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
LABEL_249:
        sub_60C4(v51, &qword_78640, &unk_628E0);
        goto LABEL_253;
      }

      v59 = v51 + v54;
      v60 = v196;
      sub_405A4(v59, v196, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_47EAC(&qword_781B0, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      v61 = sub_5C114();
      sub_3FD64(v60, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      v51 = v204;
      sub_3FD64(v58, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_60C4(v51, &qword_782A0, &qword_5FB08);
      v57 = v189;
      if ((v61 & 1) == 0)
      {
        goto LABEL_253;
      }
    }

    v62 = *v50;
    v63 = *v49;
    v64 = *(*v50 + 16);
    if (v64 != *(*v49 + 16))
    {
      goto LABEL_253;
    }

    if (v64 && v62 != v63)
    {
      break;
    }

LABEL_241:
    if ((v50[1] != v49[1] || v50[2] != v49[2]) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_253;
    }

    v171 = *(v194 + 24);
    sub_5BCE4();
    sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage);
    v172 = sub_5C114();
    sub_3FD64(v49, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    sub_3FD64(v50, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
    if (v172)
    {
      v46 = v192 + 1;
      v45 = v182;
      v47 = v181;
      if (v192 + 1 != v193)
      {
        continue;
      }
    }

    return v172 & 1;
  }

  v65 = 0;
  v66 = (*(v195 + 80) + 32) & ~*(v195 + 80);
  v67 = v62 + v66;
  v183 = v63 + v66;
  v68 = *(v195 + 72);
  v178 = v64;
  v176 = v67;
  v175 = v68;
  while (1)
  {
    v69 = v68 * v65;
    v70 = v208;
    sub_3FCFC(v67 + v68 * v65, v208, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    if (v65 == v64)
    {
      goto LABEL_259;
    }

    v187 = v65;
    v71 = v183 + v69;
    v72 = v207;
    sub_3FCFC(v71, v207, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    v73 = v188;
    if (*v70 != *v72 || *(v208 + 8) != *(v207 + 8))
    {
      goto LABEL_252;
    }

    v74 = *(v208 + 16);
    v75 = *(v207 + 16);
    if (*(v207 + 24) == 1)
    {
      switch(v75)
      {
        case 1:
          if (v74 != 1)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 2:
          if (v74 != 2)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 3:
          if (v74 != 3)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 4:
          if (v74 != 4)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 5:
          if (v74 != 5)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 6:
          if (v74 != 6)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 7:
          if (v74 != 7)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 8:
          if (v74 != 8)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 9:
          if (v74 != 9)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 10:
          if (v74 != 10)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 11:
          if (v74 != 11)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 12:
          if (v74 != 12)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 13:
          if (v74 != 13)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 14:
          if (v74 != 14)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 15:
          if (v74 != 15)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 16:
          if (v74 != 16)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 17:
          if (v74 != 17)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 18:
          if (v74 != 18)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 19:
          if (v74 != 19)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 20:
          if (v74 != 20)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 21:
          if (v74 != 21)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 22:
          if (v74 != 22)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 23:
          if (v74 != 23)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        case 24:
          if (v74 != 24)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
        default:
          if (v74)
          {
            goto LABEL_252;
          }

          goto LABEL_23;
      }
    }

    if (v74 != v75)
    {
      goto LABEL_252;
    }

LABEL_23:
    if ((*(v208 + 32) != *(v207 + 32) || *(v208 + 40) != *(v207 + 40)) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_252;
    }

    v76 = *(v201 + 60);
    v77 = *(v198 + 48);
    v78 = v185;
    sub_A024(v208 + v76, v185, &qword_78110, &qword_61E70);
    sub_A024(v207 + v76, v78 + v77, &qword_78110, &qword_61E70);
    v79 = *v184;
    v80 = v186;
    if ((*v184)(v78, 1, v186) == 1)
    {
      if (v79(v78 + v77, 1, v80) != 1)
      {
        goto LABEL_251;
      }

      sub_60C4(v78, &qword_78110, &qword_61E70);
      goto LABEL_31;
    }

    v81 = v179;
    sub_A024(v78, v179, &qword_78110, &qword_61E70);
    if (v79(v78 + v77, 1, v80) == 1)
    {
      break;
    }

    v82 = v78 + v77;
    v83 = v177;
    sub_405A4(v82, v177, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    sub_47EAC(&qword_78158, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    v84 = sub_5C114();
    sub_3FD64(v83, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    sub_3FD64(v81, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
    sub_60C4(v78, &qword_78110, &qword_61E70);
    if ((v84 & 1) == 0)
    {
      goto LABEL_252;
    }

LABEL_31:
    v85 = *(v208 + 48);
    v86 = *(v207 + 48);
    v87 = *(v85 + 16);
    if (v87 != *(v86 + 16))
    {
      goto LABEL_252;
    }

    if (v87 && v85 != v86)
    {
      v88 = 0;
      v89 = (*(v206 + 80) + 32) & ~*(v206 + 80);
      v90 = v85 + v89;
      v91 = v86 + v89;
      while (v88 < *(v85 + 16))
      {
        v92 = *(v206 + 72) * v88;
        sub_3FCFC(v90 + v92, v57, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if (v88 >= *(v86 + 16))
        {
          goto LABEL_257;
        }

        sub_3FCFC(v91 + v92, v73, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_47EAC(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        v93 = sub_5C114();
        sub_3FD64(v73, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        sub_3FD64(v57, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
        if ((v93 & 1) == 0)
        {
          goto LABEL_252;
        }

        if (v87 == ++v88)
        {
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_257:
      __break(1u);
      goto LABEL_258;
    }

LABEL_39:
    if (*(v208 + 56) != *(v207 + 56) || *(v208 + 60) != *(v207 + 60))
    {
      goto LABEL_252;
    }

    v94 = *(v208 + 64);
    v95 = *(v208 + 72);
    v96 = *(v207 + 64);
    v97 = *(v207 + 72);
    v98 = v95 >> 62;
    v99 = v97 >> 62;
    if (v95 >> 62 == 3)
    {
      v100 = 0;
      if (!v94 && v95 == 0xC000000000000000 && v97 >> 62 == 3)
      {
        v100 = 0;
        if (!v96 && v97 == 0xC000000000000000)
        {
          goto LABEL_118;
        }
      }

LABEL_63:
      if (v99 <= 1)
      {
        goto LABEL_64;
      }

      goto LABEL_51;
    }

    if (v98 <= 1)
    {
      if (!v98)
      {
        v100 = BYTE6(v95);
        if (v99 <= 1)
        {
          goto LABEL_64;
        }

        goto LABEL_51;
      }

      LODWORD(v100) = HIDWORD(v94) - v94;
      if (__OFSUB__(HIDWORD(v94), v94))
      {
        goto LABEL_264;
      }

      v100 = v100;
      goto LABEL_63;
    }

    if (v98 == 2)
    {
      v106 = *(v94 + 16);
      v105 = *(v94 + 24);
      v103 = __OFSUB__(v105, v106);
      v100 = v105 - v106;
      if (v103)
      {
        goto LABEL_265;
      }

      goto LABEL_63;
    }

    v100 = 0;
    if (v99 <= 1)
    {
LABEL_64:
      if (v99)
      {
        LODWORD(v104) = HIDWORD(v96) - v96;
        if (__OFSUB__(HIDWORD(v96), v96))
        {
          goto LABEL_261;
        }

        v104 = v104;
      }

      else
      {
        v104 = BYTE6(v97);
      }

      goto LABEL_68;
    }

LABEL_51:
    if (v99 != 2)
    {
      if (v100)
      {
        goto LABEL_252;
      }

      goto LABEL_118;
    }

    v102 = *(v96 + 16);
    v101 = *(v96 + 24);
    v103 = __OFSUB__(v101, v102);
    v104 = v101 - v102;
    if (v103)
    {
      goto LABEL_260;
    }

LABEL_68:
    if (v100 != v104)
    {
      goto LABEL_252;
    }

    if (v100 < 1)
    {
      goto LABEL_118;
    }

    if (v98 > 1)
    {
      if (v98 == 2)
      {
        v114 = *(v94 + 16);
        v115 = *(v94 + 24);
        v116 = sub_5B944();
        if (v116)
        {
          v117 = sub_5B964();
          if (__OFSUB__(v114, v117))
          {
            goto LABEL_272;
          }

          v116 += v114 - v117;
        }

        if (__OFSUB__(v115, v114))
        {
          goto LABEL_269;
        }

        goto LABEL_92;
      }

      memset(__s1, 0, 14);
      if (!v99)
      {
LABEL_102:
        v209 = v96;
        v210 = v97;
        v211 = BYTE2(v97);
        v212 = BYTE3(v97);
        v213 = BYTE4(v97);
        v125 = BYTE6(v97);
        v214 = BYTE5(v97);
        v126 = &v209;
        goto LABEL_117;
      }

      if (v99 == 2)
      {
        v122 = *(v96 + 16);
        v123 = *(v96 + 24);
        v112 = sub_5B944();
        if (v112)
        {
          v124 = sub_5B964();
          if (__OFSUB__(v122, v124))
          {
            goto LABEL_285;
          }

          v112 += v122 - v124;
        }

        v103 = __OFSUB__(v123, v122);
        v108 = v123 - v122;
        if (v103)
        {
          goto LABEL_279;
        }

        v113 = sub_5B954();
        if (!v112)
        {
          goto LABEL_289;
        }
      }

      else
      {
        v130 = v96;
        v108 = (v96 >> 32) - v96;
        if (v96 >> 32 < v96)
        {
          goto LABEL_277;
        }

        v131 = sub_5B944();
        if (!v131)
        {
          sub_5B954();
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          sub_5B954();
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:

          __break(1u);
          JUMPOUT(0x45F30);
        }

        v132 = v131;
        v133 = sub_5B964();
        if (__OFSUB__(v130, v133))
        {
          goto LABEL_281;
        }

        v112 = v130 - v133 + v132;
        v113 = sub_5B954();
        if (!v112)
        {
          goto LABEL_288;
        }
      }
    }

    else
    {
      if (v98)
      {
        v118 = v94;
        if (v94 >> 32 < v94)
        {
          goto LABEL_268;
        }

        v116 = sub_5B944();
        if (v116)
        {
          v119 = sub_5B964();
          if (__OFSUB__(v118, v119))
          {
            goto LABEL_273;
          }

          v116 += v118 - v119;
        }

LABEL_92:
        sub_5B954();
        v120 = v96;
        v121 = v180;
        sub_13DF0(v116, v120, v97, __s1);
        v180 = v121;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_252;
        }

        goto LABEL_118;
      }

      __s1[0] = *(v208 + 64);
      LOWORD(__s1[1]) = v95;
      BYTE2(__s1[1]) = BYTE2(v95);
      BYTE3(__s1[1]) = BYTE3(v95);
      BYTE4(__s1[1]) = BYTE4(v95);
      BYTE5(__s1[1]) = BYTE5(v95);
      if (!v99)
      {
        goto LABEL_102;
      }

      if (v99 == 1)
      {
        v107 = v96;
        v108 = (v96 >> 32) - v96;
        if (v96 >> 32 < v96)
        {
          goto LABEL_276;
        }

        v109 = sub_5B944();
        if (!v109)
        {
          goto LABEL_292;
        }

        v110 = v109;
        v111 = sub_5B964();
        if (__OFSUB__(v107, v111))
        {
          goto LABEL_280;
        }

        v112 = v107 - v111 + v110;
        v113 = sub_5B954();
        if (!v112)
        {
          goto LABEL_291;
        }
      }

      else
      {
        v127 = *(v96 + 16);
        v128 = *(v96 + 24);
        v112 = sub_5B944();
        if (v112)
        {
          v129 = sub_5B964();
          if (__OFSUB__(v127, v129))
          {
            goto LABEL_284;
          }

          v112 += v127 - v129;
        }

        v103 = __OFSUB__(v128, v127);
        v108 = v128 - v127;
        if (v103)
        {
          goto LABEL_278;
        }

        v113 = sub_5B954();
        if (!v112)
        {
          goto LABEL_290;
        }
      }
    }

    if (v113 >= v108)
    {
      v125 = v108;
    }

    else
    {
      v125 = v113;
    }

    v126 = v112;
LABEL_117:
    if (memcmp(__s1, v126, v125))
    {
      goto LABEL_252;
    }

LABEL_118:
    v134 = *(v208 + 80);
    v135 = *(v208 + 88);
    v136 = *(v207 + 80);
    v137 = *(v207 + 88);
    v138 = v135 >> 62;
    v139 = v137 >> 62;
    if (v135 >> 62 == 3)
    {
      v140 = 0;
      if (!v134 && v135 == 0xC000000000000000 && v137 >> 62 == 3)
      {
        v140 = 0;
        if (!v136 && v137 == 0xC000000000000000)
        {
          goto LABEL_187;
        }
      }

LABEL_140:
      if (v139 > 1)
      {
        goto LABEL_128;
      }

      goto LABEL_141;
    }

    if (v138 <= 1)
    {
      if (!v138)
      {
        v140 = BYTE6(v135);
        if (v139 > 1)
        {
          goto LABEL_128;
        }

        goto LABEL_141;
      }

      LODWORD(v140) = HIDWORD(v134) - v134;
      if (__OFSUB__(HIDWORD(v134), v134))
      {
        goto LABEL_267;
      }

      v140 = v140;
      goto LABEL_140;
    }

    if (v138 == 2)
    {
      v145 = *(v134 + 16);
      v144 = *(v134 + 24);
      v103 = __OFSUB__(v144, v145);
      v140 = v144 - v145;
      if (v103)
      {
        goto LABEL_266;
      }

      goto LABEL_140;
    }

    v140 = 0;
    if (v139 > 1)
    {
LABEL_128:
      if (v139 != 2)
      {
        if (v140)
        {
          goto LABEL_252;
        }

        goto LABEL_187;
      }

      v142 = *(v136 + 16);
      v141 = *(v136 + 24);
      v103 = __OFSUB__(v141, v142);
      v143 = v141 - v142;
      if (v103)
      {
        goto LABEL_263;
      }

      goto LABEL_145;
    }

LABEL_141:
    if (v139)
    {
      LODWORD(v143) = HIDWORD(v136) - v136;
      if (__OFSUB__(HIDWORD(v136), v136))
      {
        goto LABEL_262;
      }

      v143 = v143;
    }

    else
    {
      v143 = BYTE6(v137);
    }

LABEL_145:
    if (v140 != v143)
    {
      goto LABEL_252;
    }

    if (v140 >= 1)
    {
      if (v138 > 1)
      {
        if (v138 != 2)
        {
          memset(__s1, 0, 14);
          if (!v139)
          {
LABEL_171:
            v209 = v136;
            v210 = v137;
            v211 = BYTE2(v137);
            v212 = BYTE3(v137);
            v213 = BYTE4(v137);
            v160 = BYTE6(v137);
            v214 = BYTE5(v137);
            v161 = &v209;
LABEL_186:
            if (memcmp(__s1, v161, v160))
            {
              goto LABEL_252;
            }

            goto LABEL_187;
          }

          if (v139 != 2)
          {
            v162 = v136;
            v163 = (v136 >> 32) - v136;
            if (v136 >> 32 < v136)
            {
              goto LABEL_283;
            }

            v164 = sub_5B944();
            if (v164)
            {
              v165 = sub_5B964();
              if (__OFSUB__(v162, v165))
              {
                goto LABEL_286;
              }

              v164 = (v164 + v162 - v165);
            }

            v166 = sub_5B954();
            if (v166 >= v163)
            {
              v160 = v163;
            }

            else
            {
              v160 = v166;
            }

            if (!v164)
            {
              goto LABEL_293;
            }

            if (__s1 == v164)
            {
              goto LABEL_187;
            }

            v161 = v164;
            goto LABEL_186;
          }

          v156 = *(v136 + 16);
          v157 = *(v136 + 24);
          v158 = v180;
          v159 = sub_47EF4(v156, v157, v137 & 0x3FFFFFFFFFFFFFFFLL, __s1);
          goto LABEL_174;
        }

        v148 = *(v134 + 16);
        v149 = *(v134 + 24);
        v150 = sub_5B944();
        if (v150)
        {
          v151 = sub_5B964();
          if (__OFSUB__(v148, v151))
          {
            goto LABEL_274;
          }

          v150 += v148 - v151;
        }

        if (__OFSUB__(v149, v148))
        {
          goto LABEL_271;
        }
      }

      else
      {
        if (!v138)
        {
          __s1[0] = *(v208 + 80);
          LOWORD(__s1[1]) = v135;
          BYTE2(__s1[1]) = BYTE2(v135);
          BYTE3(__s1[1]) = BYTE3(v135);
          BYTE4(__s1[1]) = BYTE4(v135);
          BYTE5(__s1[1]) = BYTE5(v135);
          if (!v139)
          {
            goto LABEL_171;
          }

          if (v139 == 1)
          {
            v146 = v136;
            v147 = v136 >> 32;
            if (v136 >> 32 < v136)
            {
              goto LABEL_282;
            }
          }

          else
          {
            v146 = *(v136 + 16);
            v147 = *(v136 + 24);
          }

          v158 = v180;
          v159 = sub_47EF4(v146, v147, v137 & 0x3FFFFFFFFFFFFFFFLL, __s1);
          if (v158)
          {
            goto LABEL_294;
          }

LABEL_174:
          v180 = v158;
          if ((v159 & 1) == 0)
          {
            goto LABEL_252;
          }

          goto LABEL_187;
        }

        v152 = v134;
        if (v134 >> 32 < v134)
        {
          goto LABEL_270;
        }

        v150 = sub_5B944();
        if (v150)
        {
          v153 = sub_5B964();
          if (__OFSUB__(v152, v153))
          {
            goto LABEL_275;
          }

          v150 += v152 - v153;
        }
      }

      sub_5B954();
      v154 = v136;
      v155 = v180;
      sub_13DF0(v150, v154, v137, __s1);
      v180 = v155;
      if ((__s1[0] & 1) == 0)
      {
        goto LABEL_252;
      }
    }

LABEL_187:
    if ((*(v208 + 96) != *(v207 + 96) || *(v208 + 104) != *(v207 + 104)) && (sub_5C3A4() & 1) == 0)
    {
      goto LABEL_252;
    }

    v167 = *(v201 + 56);
    sub_5BCE4();
    sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage);
    v168 = v207;
    v169 = v208;
    v170 = sub_5C114();
    sub_3FD64(v168, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    sub_3FD64(v169, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
    v48 = v199;
    v50 = v202;
    v49 = v203;
    v51 = v204;
    v64 = v178;
    if ((v170 & 1) == 0)
    {
      goto LABEL_253;
    }

    v65 = v187 + 1;
    v67 = v176;
    v68 = v175;
    if (v187 + 1 == v178)
    {
      goto LABEL_241;
    }
  }

  sub_3FD64(v81, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
LABEL_251:
  sub_60C4(v78, &qword_78210, &qword_5F8A8);
LABEL_252:
  sub_3FD64(v207, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
  sub_3FD64(v208, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
  v50 = v202;
  v49 = v203;
LABEL_253:
  sub_3FD64(v49, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
  sub_3FD64(v50, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
LABEL_254:
  v172 = 0;
  return v172 & 1;
}

uint64_t sub_45F94(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = off_70B50(v4 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70B50(v6);
  v11 = &v19 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v17 = 1;
    }

    else
    {
      v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
      v14 = a1 + v13;
      v15 = a2 + v13;
      v16 = *(v9 + 72);
      do
      {
        sub_3FCFC(v14, v11, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        sub_3FCFC(v15, v8, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        v17 = _s16TelemetrySupport37Opentelemetry_Proto_Logs_V1_LogRecordV2eeoiySbAC_ACtFZ_0(v11, v8);
        sub_3FD64(v8, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        sub_3FD64(v11, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        if ((v17 & 1) == 0)
        {
          break;
        }

        v15 += v16;
        v14 += v16;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_4613C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue(0);
  v5 = *(v4 - 8);
  v239 = v4;
  v240 = v5;
  v6 = *(v5 + 64);
  v7 = (off_70B50)();
  v238 = &v194 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70B50(v7);
  v10 = &v194 - v9;
  v11 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  off_70B50(v11);
  v15 = &v194 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  v17 = (*(*(v16 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50(v16 - 8);
  v19 = &v194 - v18;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78210, &qword_5F8A8);
  v20 = (*(*(v224 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50(v224);
  v225 = &v194 - v21;
  v228 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  v229 = *(v228 - 8);
  v22 = *(v229 + 64);
  v23 = off_70B50(v228);
  v243 = &v194 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  off_70B50(v23);
  v244 = &v194 - v25;
  v227 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v26 = *(v227 - 8);
  v27 = *(v26 + 64);
  off_70B50(v227);
  v220 = &v194 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  v30 = (*(*(v29 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50(v29 - 8);
  v221 = &v194 - v31;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78640, &unk_628E0);
  v32 = (*(*(v226 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50(v226);
  v233 = &v194 - v33;
  v235 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  v232 = *(v235 - 8);
  v34 = *(v232 + 64);
  v35 = off_70B50(v235);
  v237 = (&v194 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
  off_70B50(v35);
  v236 = (&v194 - v37);
  v231 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v38 = *(v231 - 8);
  v39 = *(v38 + 64);
  off_70B50(v231);
  v222 = &v194 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  v42 = (*(*(v41 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50(v41 - 8);
  v223 = &v194 - v43;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78648, &qword_61A60);
  v44 = (*(*(v230 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B50(v230);
  v234 = &v194 - v45;
  v46 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = off_70B50(v46);
  v242 = (&v194 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = off_70B50(v48);
  v241 = &v194 - v52;
  v53 = *(a1 + 16);
  if (v53 == *(a2 + 16))
  {
    if (v53 && a1 != a2)
    {
      v219 = v50;
      v205 = 0;
      v54 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v55 = a1 + v54;
      v216 = a2 + v54;
      v56 = 0;
      v215 = (v38 + 48);
      v207 = (v12 + 48);
      v57 = *(v51 + 72);
      v208 = v11;
      v199 = v15;
      v200 = v19;
      v58 = v241;
      v59 = v234;
      v218 = v53;
      v210 = v55;
      v214 = (v26 + 48);
      v209 = v57;
      while (1)
      {
        v60 = v57 * v56;
        sub_3FCFC(v55 + v57 * v56, v58, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
        if (v56 == v218)
        {
          goto LABEL_258;
        }

        v217 = v56;
        v61 = v10;
        v62 = v242;
        sub_3FCFC(v216 + v60, v242, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
        v63 = *(v219 + 28);
        v64 = *(v230 + 48);
        sub_A024(v58 + v63, v59, &qword_78298, &qword_5FB00);
        sub_A024(v62 + v63, v59 + v64, &qword_78298, &qword_5FB00);
        v65 = *v215;
        v66 = v231;
        if ((*v215)(v59, 1, v231) == 1)
        {
          v67 = v65(v59 + v64, 1, v66);
          v68 = v241;
          if (v67 != 1)
          {
            goto LABEL_246;
          }

          sub_60C4(v59, &qword_78298, &qword_5FB00);
        }

        else
        {
          v69 = v59;
          v70 = v59;
          v71 = v223;
          sub_A024(v69, v223, &qword_78298, &qword_5FB00);
          if (v65(v70 + v64, 1, v66) == 1)
          {
            sub_3FD64(v71, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
            v68 = v241;
            v59 = v70;
LABEL_246:
            sub_60C4(v59, &qword_78648, &qword_61A60);
            goto LABEL_253;
          }

          v72 = v222;
          sub_405A4(v70 + v64, v222, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
          sub_47EAC(&qword_78650, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
          v73 = sub_5C114();
          sub_3FD64(v72, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
          sub_3FD64(v71, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
          sub_60C4(v70, &qword_78298, &qword_5FB00);
          v68 = v241;
          v10 = v61;
          v59 = v70;
          if ((v73 & 1) == 0)
          {
            goto LABEL_253;
          }
        }

        v74 = *v68;
        v75 = *v242;
        v76 = *(*v68 + 16);
        if (v76 != *(*v242 + 16))
        {
          goto LABEL_253;
        }

        if (v76 && v74 != v75)
        {
          break;
        }

LABEL_238:
        if ((v68[1] != v242[1] || v68[2] != v242[2]) && (sub_5C3A4() & 1) == 0)
        {
          goto LABEL_253;
        }

        v190 = *(v219 + 24);
        sub_5BCE4();
        sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage);
        v191 = v242;
        v192 = sub_5C114();
        v58 = v241;
        sub_3FD64(v191, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
        sub_3FD64(v58, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
        if (v192)
        {
          v56 = v217 + 1;
          v55 = v210;
          v57 = v209;
          if (v217 + 1 != v218)
          {
            continue;
          }
        }

        return v192 & 1;
      }

      v77 = 0;
      v78 = (*(v232 + 80) + 32) & ~*(v232 + 80);
      v212 = v74 + v78;
      v211 = v75 + v78;
      v202 = v75;
      v201 = v76;
      while (1)
      {
        if (v77 >= *(v74 + 16))
        {
          goto LABEL_259;
        }

        v79 = v10;
        v80 = v77;
        v81 = *(v232 + 72) * v77;
        v82 = v236;
        sub_3FCFC(v212 + v81, v236, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
        v83 = *(v75 + 16);
        v213 = v80;
        if (v80 >= v83)
        {
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
LABEL_270:
          __break(1u);
LABEL_271:
          __break(1u);
LABEL_272:
          __break(1u);
LABEL_273:
          __break(1u);
LABEL_274:
          __break(1u);
LABEL_275:
          __break(1u);
LABEL_276:
          __break(1u);
LABEL_277:
          __break(1u);
LABEL_278:
          __break(1u);
LABEL_279:
          __break(1u);
LABEL_280:
          __break(1u);
LABEL_281:
          __break(1u);
LABEL_282:
          __break(1u);
LABEL_283:
          __break(1u);
        }

        v84 = v237;
        sub_3FCFC(v211 + v81, v237, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
        v85 = *(v235 + 28);
        v86 = *(v226 + 48);
        v87 = v82 + v85;
        v88 = v233;
        sub_A024(v87, v233, &qword_782A0, &qword_5FB08);
        sub_A024(v84 + v85, v88 + v86, &qword_782A0, &qword_5FB08);
        v89 = *v214;
        v90 = v227;
        if ((*v214)(v88, 1, v227) == 1)
        {
          v91 = v89(v88 + v86, 1, v90);
          v68 = v241;
          if (v91 != 1)
          {
            goto LABEL_248;
          }

          v10 = v79;
          sub_60C4(v88, &qword_782A0, &qword_5FB08);
          v92 = v236;
        }

        else
        {
          v93 = v221;
          sub_A024(v88, v221, &qword_782A0, &qword_5FB08);
          if (v89(v88 + v86, 1, v90) == 1)
          {
            sub_3FD64(v93, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
            v68 = v241;
LABEL_248:
            sub_60C4(v88, &qword_78640, &unk_628E0);
            v92 = v236;
            goto LABEL_252;
          }

          v10 = v79;
          v94 = v220;
          sub_405A4(v88 + v86, v220, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
          sub_47EAC(&qword_781B0, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
          v95 = sub_5C114();
          sub_3FD64(v94, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
          sub_3FD64(v93, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
          sub_60C4(v233, &qword_782A0, &qword_5FB08);
          v92 = v236;
          v59 = v234;
          v68 = v241;
          if ((v95 & 1) == 0)
          {
            goto LABEL_252;
          }
        }

        v96 = *v92;
        v97 = *v237;
        v98 = *(*v92 + 16);
        if (v98 != *(*v237 + 16))
        {
          goto LABEL_252;
        }

        if (v98 && v96 != v97)
        {
          break;
        }

LABEL_233:
        if ((v92[1] != v237[1] || v92[2] != v237[2]) && (sub_5C3A4() & 1) == 0)
        {
          goto LABEL_252;
        }

        v188 = *(v235 + 24);
        sub_5BCE4();
        sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage);
        v189 = v237;
        LOBYTE(v188) = sub_5C114();
        sub_3FD64(v189, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
        sub_3FD64(v92, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
        v75 = v202;
        if ((v188 & 1) == 0)
        {
LABEL_253:
          sub_3FD64(v242, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
          sub_3FD64(v68, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
          goto LABEL_254;
        }

        v77 = v213 + 1;
        if (v213 + 1 == v201)
        {
          goto LABEL_238;
        }
      }

      v99 = 0;
      v100 = (*(v229 + 80) + 32) & ~*(v229 + 80);
      v204 = v96 + v100;
      v203 = v97 + v100;
      v198 = v74;
      v197 = v96;
      v196 = v97;
      v195 = v98;
      while (1)
      {
        if (v99 >= *(v96 + 16))
        {
          goto LABEL_261;
        }

        v101 = v99;
        v102 = *(v229 + 72) * v99;
        v103 = v244;
        sub_3FCFC(v204 + v102, v244, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        v104 = *(v97 + 16);
        v206 = v101;
        if (v101 >= v104)
        {
          goto LABEL_262;
        }

        v105 = v203 + v102;
        v106 = v243;
        sub_3FCFC(v105, v243, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        if (*v103 != *v106 || *(v244 + 8) != *(v243 + 8))
        {
          goto LABEL_251;
        }

        v107 = *(v244 + 16);
        v108 = *(v243 + 16);
        if (*(v243 + 24) == 1)
        {
          switch(v108)
          {
            case 1:
              if (v107 != 1)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 2:
              if (v107 != 2)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 3:
              if (v107 != 3)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 4:
              if (v107 != 4)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 5:
              if (v107 != 5)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 6:
              if (v107 != 6)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 7:
              if (v107 != 7)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 8:
              if (v107 != 8)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 9:
              if (v107 != 9)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 10:
              if (v107 != 10)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 11:
              if (v107 != 11)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 12:
              if (v107 != 12)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 13:
              if (v107 != 13)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 14:
              if (v107 != 14)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 15:
              if (v107 != 15)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 16:
              if (v107 != 16)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 17:
              if (v107 != 17)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 18:
              if (v107 != 18)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 19:
              if (v107 != 19)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 20:
              if (v107 != 20)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 21:
              if (v107 != 21)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 22:
              if (v107 != 22)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 23:
              if (v107 != 23)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            case 24:
              if (v107 != 24)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
            default:
              if (v107)
              {
                goto LABEL_251;
              }

              goto LABEL_35;
          }
        }

        if (v107 != v108)
        {
          goto LABEL_251;
        }

LABEL_35:
        if ((*(v244 + 32) != *(v243 + 32) || *(v244 + 40) != *(v243 + 40)) && (sub_5C3A4() & 1) == 0)
        {
          goto LABEL_251;
        }

        v109 = *(v228 + 60);
        v110 = *(v224 + 48);
        v111 = v225;
        sub_A024(v244 + v109, v225, &qword_78110, &qword_61E70);
        sub_A024(v243 + v109, v111 + v110, &qword_78110, &qword_61E70);
        v112 = *v207;
        v113 = v208;
        if ((*v207)(v111, 1, v208) == 1)
        {
          if (v112(v111 + v110, 1, v113) != 1)
          {
            goto LABEL_250;
          }

          sub_60C4(v111, &qword_78110, &qword_61E70);
        }

        else
        {
          v114 = v200;
          sub_A024(v111, v200, &qword_78110, &qword_61E70);
          if (v112(v111 + v110, 1, v113) == 1)
          {
            sub_3FD64(v114, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
LABEL_250:
            sub_60C4(v111, &qword_78210, &qword_5F8A8);
LABEL_251:
            sub_3FD64(v243, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
            sub_3FD64(v244, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
            v92 = v236;
            v68 = v241;
LABEL_252:
            sub_3FD64(v237, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
            sub_3FD64(v92, type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs);
            goto LABEL_253;
          }

          v115 = v199;
          sub_405A4(v111 + v110, v199, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
          sub_47EAC(&qword_78158, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
          v116 = sub_5C114();
          sub_3FD64(v115, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
          sub_3FD64(v114, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
          sub_60C4(v111, &qword_78110, &qword_61E70);
          if ((v116 & 1) == 0)
          {
            goto LABEL_251;
          }
        }

        v117 = *(v244 + 48);
        v118 = *(v243 + 48);
        v119 = *(v117 + 16);
        if (v119 != *(v118 + 16))
        {
          goto LABEL_251;
        }

        if (v119 && v117 != v118)
        {
          v120 = 0;
          v121 = (*(v240 + 80) + 32) & ~*(v240 + 80);
          v122 = v117 + v121;
          v123 = v118 + v121;
          while (v120 < *(v117 + 16))
          {
            v124 = *(v240 + 72) * v120;
            sub_3FCFC(v122 + v124, v10, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            if (v120 >= *(v118 + 16))
            {
              goto LABEL_257;
            }

            v125 = v238;
            sub_3FCFC(v123 + v124, v238, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_47EAC(&qword_78198, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            v126 = sub_5C114();
            sub_3FD64(v125, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            sub_3FD64(v10, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue);
            if ((v126 & 1) == 0)
            {
              goto LABEL_251;
            }

            if (v119 == ++v120)
            {
              goto LABEL_51;
            }
          }

          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
          goto LABEL_260;
        }

LABEL_51:
        if (*(v244 + 56) != *(v243 + 56) || *(v244 + 60) != *(v243 + 60))
        {
          goto LABEL_251;
        }

        v127 = *(v244 + 64);
        v128 = *(v244 + 72);
        v129 = *(v243 + 64);
        v130 = *(v243 + 72);
        v131 = v128 >> 62;
        v132 = v130 >> 62;
        if (v128 >> 62 == 3)
        {
          v133 = 0;
          if (!v127 && v128 == 0xC000000000000000 && v130 >> 62 == 3)
          {
            v133 = 0;
            if (!v129 && v130 == 0xC000000000000000)
            {
              goto LABEL_121;
            }
          }
        }

        else if (v131 > 1)
        {
          if (v131 == 2)
          {
            v135 = *(v127 + 16);
            v134 = *(v127 + 24);
            v136 = __OFSUB__(v134, v135);
            v133 = v134 - v135;
            if (v136)
            {
              goto LABEL_268;
            }
          }

          else
          {
            v133 = 0;
          }
        }

        else if (v131)
        {
          LODWORD(v133) = HIDWORD(v127) - v127;
          if (__OFSUB__(HIDWORD(v127), v127))
          {
            goto LABEL_267;
          }

          v133 = v133;
        }

        else
        {
          v133 = BYTE6(v128);
        }

        if (v132 > 1)
        {
          if (v132 != 2)
          {
            if (v133)
            {
              goto LABEL_251;
            }

            goto LABEL_121;
          }

          v139 = *(v129 + 16);
          v138 = *(v129 + 24);
          v136 = __OFSUB__(v138, v139);
          v137 = v138 - v139;
          if (v136)
          {
            goto LABEL_263;
          }
        }

        else if (v132)
        {
          LODWORD(v137) = HIDWORD(v129) - v129;
          if (__OFSUB__(HIDWORD(v129), v129))
          {
            goto LABEL_264;
          }

          v137 = v137;
        }

        else
        {
          v137 = BYTE6(v130);
        }

        if (v133 != v137)
        {
          goto LABEL_251;
        }

        if (v133 < 1)
        {
          goto LABEL_121;
        }

        if (v131 <= 1)
        {
          break;
        }

        if (v131 == 2)
        {
          v142 = *(v127 + 16);
          v143 = *(v127 + 24);
          v144 = sub_5B944();
          if (v144)
          {
            v145 = sub_5B964();
            if (__OFSUB__(v142, v145))
            {
              goto LABEL_275;
            }

            v144 += v142 - v145;
          }

          if (__OFSUB__(v143, v142))
          {
            goto LABEL_272;
          }

          goto LABEL_100;
        }

        memset(__s1, 0, 14);
        if (!v132)
        {
          goto LABEL_105;
        }

        if (v132 == 2)
        {
          v150 = *(v129 + 16);
          v151 = *(v129 + 24);
          v152 = v205;
          v153 = sub_47EF4(v150, v151, v130 & 0x3FFFFFFFFFFFFFFFLL, __s1);
LABEL_108:
          v205 = v152;
          if ((v153 & 1) == 0)
          {
            goto LABEL_251;
          }

          goto LABEL_121;
        }

        v156 = v129;
        v136 = __OFSUB__(v129 >> 32, v129);
        v157 = (v129 >> 32) - v129;
        if (v157 < 0 != v136)
        {
          goto LABEL_279;
        }

        v158 = sub_5B944();
        if (v158)
        {
          v159 = sub_5B964();
          if (__OFSUB__(v156, v159))
          {
            goto LABEL_283;
          }

          v158 = (v158 + v156 - v159);
        }

        v160 = sub_5B954();
        if (v160 >= v157)
        {
          v154 = v157;
        }

        else
        {
          v154 = v160;
        }

        if (!v158)
        {
          __break(1u);
LABEL_285:

          __break(1u);
          JUMPOUT(0x47E48);
        }

        if (__s1 != v158)
        {
          p_s2 = v158;
          goto LABEL_120;
        }

LABEL_121:
        v161 = *(v244 + 80);
        v162 = *(v244 + 88);
        v163 = *(v243 + 80);
        v164 = *(v243 + 88);
        v165 = v162 >> 62;
        v166 = v164 >> 62;
        if (v162 >> 62 == 3)
        {
          v167 = 0;
          if (!v161 && v162 == 0xC000000000000000 && v164 >> 62 == 3)
          {
            v167 = 0;
            if (!v163 && v164 == 0xC000000000000000)
            {
              goto LABEL_179;
            }
          }
        }

        else if (v165 > 1)
        {
          if (v165 == 2)
          {
            v169 = *(v161 + 16);
            v168 = *(v161 + 24);
            v136 = __OFSUB__(v168, v169);
            v167 = v168 - v169;
            if (v136)
            {
              goto LABEL_269;
            }
          }

          else
          {
            v167 = 0;
          }
        }

        else if (v165)
        {
          LODWORD(v167) = HIDWORD(v161) - v161;
          if (__OFSUB__(HIDWORD(v161), v161))
          {
            goto LABEL_270;
          }

          v167 = v167;
        }

        else
        {
          v167 = BYTE6(v162);
        }

        if (v166 > 1)
        {
          if (v166 != 2)
          {
            if (v167)
            {
              goto LABEL_251;
            }

            goto LABEL_179;
          }

          v172 = *(v163 + 16);
          v171 = *(v163 + 24);
          v136 = __OFSUB__(v171, v172);
          v170 = v171 - v172;
          if (v136)
          {
            goto LABEL_266;
          }
        }

        else if (v166)
        {
          LODWORD(v170) = HIDWORD(v163) - v163;
          if (__OFSUB__(HIDWORD(v163), v163))
          {
            goto LABEL_265;
          }

          v170 = v170;
        }

        else
        {
          v170 = BYTE6(v164);
        }

        if (v167 != v170)
        {
          goto LABEL_251;
        }

        if (v167 >= 1)
        {
          if (v165 > 1)
          {
            if (v165 != 2)
            {
              memset(__s1, 0, 14);
              if (v166 == 2)
              {
                goto LABEL_174;
              }

              if (v166 == 1)
              {
                v173 = v163;
                v174 = v163 >> 32;
                if (v163 >> 32 < v163)
                {
                  goto LABEL_281;
                }

                goto LABEL_175;
              }

              goto LABEL_178;
            }

            v175 = *(v161 + 16);
            v176 = *(v161 + 24);
            v177 = sub_5B944();
            if (v177)
            {
              v178 = sub_5B964();
              if (__OFSUB__(v175, v178))
              {
                goto LABEL_277;
              }

              v177 += v175 - v178;
            }

            if (__OFSUB__(v176, v175))
            {
              goto LABEL_274;
            }
          }

          else
          {
            if (!v165)
            {
              __s1[0] = *(v244 + 80);
              LOWORD(__s1[1]) = v162;
              BYTE2(__s1[1]) = BYTE2(v162);
              BYTE3(__s1[1]) = BYTE3(v162);
              BYTE4(__s1[1]) = BYTE4(v162);
              BYTE5(__s1[1]) = BYTE5(v162);
              if (v166)
              {
                if (v166 == 1)
                {
                  v173 = v163;
                  v174 = v163 >> 32;
                  if (v163 >> 32 < v163)
                  {
                    goto LABEL_282;
                  }
                }

                else
                {
LABEL_174:
                  v173 = *(v163 + 16);
                  v174 = *(v163 + 24);
                }

LABEL_175:
                v183 = v205;
                v184 = sub_47EF4(v173, v174, v164 & 0x3FFFFFFFFFFFFFFFLL, __s1);
                if (v183)
                {
                  goto LABEL_285;
                }

                v205 = 0;
                if ((v184 & 1) == 0)
                {
                  goto LABEL_251;
                }

                goto LABEL_179;
              }

LABEL_178:
              __s2 = v163;
              v246 = v164;
              v247 = BYTE2(v164);
              v248 = BYTE3(v164);
              v249 = BYTE4(v164);
              v250 = BYTE5(v164);
              if (memcmp(__s1, &__s2, BYTE6(v164)))
              {
                goto LABEL_251;
              }

              goto LABEL_179;
            }

            v179 = v161;
            if (v161 >> 32 < v161)
            {
              goto LABEL_273;
            }

            v177 = sub_5B944();
            if (v177)
            {
              v180 = sub_5B964();
              if (__OFSUB__(v179, v180))
              {
                goto LABEL_278;
              }

              v177 += v179 - v180;
            }
          }

          sub_5B954();
          v181 = v163;
          v182 = v205;
          sub_13DF0(v177, v181, v164, __s1);
          v205 = v182;
          if ((__s1[0] & 1) == 0)
          {
            goto LABEL_251;
          }
        }

LABEL_179:
        if ((*(v244 + 96) != *(v243 + 96) || *(v244 + 104) != *(v243 + 104)) && (sub_5C3A4() & 1) == 0)
        {
          goto LABEL_251;
        }

        v185 = *(v228 + 56);
        sub_5BCE4();
        sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage);
        v186 = v243;
        v187 = v244;
        LOBYTE(v185) = sub_5C114();
        sub_3FD64(v186, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        sub_3FD64(v187, type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord);
        v92 = v236;
        v68 = v241;
        v59 = v234;
        v74 = v198;
        v96 = v197;
        v97 = v196;
        if ((v185 & 1) == 0)
        {
          goto LABEL_252;
        }

        v99 = v206 + 1;
        if (v206 + 1 == v195)
        {
          goto LABEL_233;
        }
      }

      if (v131)
      {
        v146 = v127;
        if (v127 >> 32 < v127)
        {
          goto LABEL_271;
        }

        v144 = sub_5B944();
        if (v144)
        {
          v147 = sub_5B964();
          if (__OFSUB__(v146, v147))
          {
            goto LABEL_276;
          }

          v144 += v146 - v147;
        }

LABEL_100:
        sub_5B954();
        v148 = v129;
        v149 = v205;
        sub_13DF0(v144, v148, v130, __s1);
        v205 = v149;
        if ((__s1[0] & 1) == 0)
        {
          goto LABEL_251;
        }

        goto LABEL_121;
      }

      __s1[0] = *(v244 + 64);
      LOWORD(__s1[1]) = v128;
      BYTE2(__s1[1]) = BYTE2(v128);
      BYTE3(__s1[1]) = BYTE3(v128);
      BYTE4(__s1[1]) = BYTE4(v128);
      BYTE5(__s1[1]) = BYTE5(v128);
      if (v132)
      {
        if (v132 == 1)
        {
          v140 = v129;
          v141 = v129 >> 32;
          if (v129 >> 32 < v129)
          {
            goto LABEL_280;
          }
        }

        else
        {
          v140 = *(v129 + 16);
          v141 = *(v129 + 24);
        }

        v152 = v205;
        v153 = sub_47EF4(v140, v141, v130 & 0x3FFFFFFFFFFFFFFFLL, __s1);
        if (v152)
        {
          goto LABEL_285;
        }

        goto LABEL_108;
      }

LABEL_105:
      __s2 = v129;
      v246 = v130;
      v247 = BYTE2(v130);
      v248 = BYTE3(v130);
      v249 = BYTE4(v130);
      v154 = BYTE6(v130);
      v250 = BYTE5(v130);
      p_s2 = &__s2;
LABEL_120:
      if (memcmp(__s1, p_s2, v154))
      {
        goto LABEL_251;
      }

      goto LABEL_121;
    }

    v192 = 1;
  }

  else
  {
LABEL_254:
    v192 = 0;
  }

  return v192 & 1;
}

uint64_t sub_47EAC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_47EF4(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_5B944();
  v8 = result;
  if (result)
  {
    result = sub_5B964();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_5B954();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  return v8 == a4 || memcmp(a4, v8, v11) == 0;
}

uint64_t _s16TelemetrySupport37Opentelemetry_Proto_Logs_V1_LogRecordV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70B50(v4);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
  v10 = *(*(v9 - 8) + 64);
  off_70B50(v9 - 8);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78210, &qword_5F8A8);
  v14 = *(*(v13 - 8) + 64);
  v15 = off_70B50(v13);
  v17 = &v28 - v16;
  if (*a1 != *a2)
  {
    goto LABEL_23;
  }

  if (*(a1 + 8) != *(a2 + 8))
  {
    goto LABEL_23;
  }

  v18 = v15;
  v19 = *(a2 + 24);
  if (!sub_3E9E4(*(a1 + 16), *(a1 + 24), *(a2 + 16)))
  {
    goto LABEL_23;
  }

  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_23;
  }

  v28 = type metadata accessor for Opentelemetry_Proto_Logs_V1_LogRecord(0);
  v20 = *(v28 + 60);
  v21 = *(v18 + 48);
  sub_A024(a1 + v20, v17, &qword_78110, &qword_61E70);
  v29 = v21;
  sub_A024(a2 + v20, &v17[v21], &qword_78110, &qword_61E70);
  v22 = *(v5 + 48);
  if (v22(v17, 1, v4) == 1)
  {
    if (v22(&v17[v29], 1, v4) == 1)
    {
      sub_60C4(v17, &qword_78110, &qword_61E70);
      goto LABEL_14;
    }

    goto LABEL_12;
  }

  sub_A024(v17, v12, &qword_78110, &qword_61E70);
  v23 = v29;
  if (v22(&v17[v29], 1, v4) == 1)
  {
    sub_3FD64(v12, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
LABEL_12:
    sub_60C4(v17, &qword_78210, &qword_5F8A8);
LABEL_23:
    v26 = 0;
    return v26 & 1;
  }

  sub_405A4(&v17[v23], v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_47EAC(&qword_78158, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  v24 = sub_5C114();
  sub_3FD64(v8, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_3FD64(v12, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue);
  sub_60C4(v17, &qword_78110, &qword_61E70);
  if ((v24 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_14:
  if ((sub_12FAC(*(a1 + 48), *(a2 + 48)) & 1) == 0 || *(a1 + 56) != *(a2 + 56) || *(a1 + 60) != *(a2 + 60) || (sub_14268(*(a1 + 64), *(a1 + 72), *(a2 + 64), *(a2 + 72)) & 1) == 0 || (sub_14268(*(a1 + 80), *(a1 + 88), *(a2 + 80), *(a2 + 88)) & 1) == 0 || (*(a1 + 96) != *(a2 + 96) || *(a1 + 104) != *(a2 + 104)) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_23;
  }

  v25 = *(v28 + 56);
  sub_5BCE4();
  sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage);
  v26 = sub_5C114();
  return v26 & 1;
}

uint64_t _s16TelemetrySupport036Opentelemetry_Proto_Logs_V1_ResourceE0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70B50(v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78298, &qword_5FB00);
  v9 = *(*(v8 - 8) + 64);
  off_70B50(v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78648, &qword_61A60);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  off_70B50(v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_A024(a1 + v17, v16, &qword_78298, &qword_5FB00);
  sub_A024(a2 + v17, &v16[v18], &qword_78298, &qword_5FB00);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_A024(v16, v11, &qword_78298, &qword_5FB00);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_405A4(&v16[v18], v28, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_47EAC(&qword_78650, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      v21 = sub_5C114();
      sub_3FD64(v20, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_3FD64(v11, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
      sub_60C4(v16, &qword_78298, &qword_5FB00);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    sub_3FD64(v11, type metadata accessor for Opentelemetry_Proto_Resource_V1_Resource);
LABEL_6:
    sub_60C4(v16, &qword_78648, &qword_61A60);
    goto LABEL_13;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_60C4(v16, &qword_78298, &qword_5FB00);
LABEL_8:
  v22 = v29;
  if ((sub_4479C(*v29, *a2) & 1) == 0 || (v22[1] != a2[1] || v22[2] != a2[2]) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(v27 + 24);
  sub_5BCE4();
  sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage);
  v24 = sub_5C114();
  return v24 & 1;
}

uint64_t _s16TelemetrySupport033Opentelemetry_Proto_Logs_V1_ScopeE0V2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70B50(v4);
  v28 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_782A0, &qword_5FB08);
  v9 = *(*(v8 - 8) + 64);
  off_70B50(v8 - 8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78640, &unk_628E0);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  off_70B50(v12);
  v16 = &v26 - v15;
  v27 = type metadata accessor for Opentelemetry_Proto_Logs_V1_ScopeLogs(0);
  v17 = *(v27 + 28);
  v18 = *(v13 + 56);
  v29 = a1;
  sub_A024(a1 + v17, v16, &qword_782A0, &qword_5FB08);
  sub_A024(a2 + v17, &v16[v18], &qword_782A0, &qword_5FB08);
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) != 1)
  {
    sub_A024(v16, v11, &qword_782A0, &qword_5FB08);
    if (v19(&v16[v18], 1, v4) != 1)
    {
      v20 = v28;
      sub_405A4(&v16[v18], v28, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_47EAC(&qword_781B0, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      v21 = sub_5C114();
      sub_3FD64(v20, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_3FD64(v11, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
      sub_60C4(v16, &qword_782A0, &qword_5FB08);
      if (v21)
      {
        goto LABEL_8;
      }

LABEL_13:
      v24 = 0;
      return v24 & 1;
    }

    sub_3FD64(v11, type metadata accessor for Opentelemetry_Proto_Common_V1_InstrumentationScope);
LABEL_6:
    sub_60C4(v16, &qword_78640, &unk_628E0);
    goto LABEL_13;
  }

  if (v19(&v16[v18], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_60C4(v16, &qword_782A0, &qword_5FB08);
LABEL_8:
  v22 = v29;
  if ((sub_45F94(*v29, *a2) & 1) == 0 || (v22[1] != a2[1] || v22[2] != a2[2]) && (sub_5C3A4() & 1) == 0)
  {
    goto LABEL_13;
  }

  v23 = *(v27 + 24);
  sub_5BCE4();
  sub_47EAC(&qword_78108, &type metadata accessor for UnknownStorage);
  v24 = sub_5C114();
  return v24 & 1;
}

unint64_t sub_48BD8()
{
  result = qword_78748;
  if (!qword_78748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78748);
  }

  return result;
}

unint64_t sub_48C30()
{
  result = qword_78758;
  if (!qword_78758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78758);
  }

  return result;
}

unint64_t sub_48C88()
{
  result = qword_78760;
  if (!qword_78760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78760);
  }

  return result;
}

unint64_t sub_48D10()
{
  result = qword_78778;
  if (!qword_78778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78778);
  }

  return result;
}

unint64_t sub_48D68()
{
  result = qword_78780;
  if (!qword_78780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78780);
  }

  return result;
}

unint64_t sub_48DC0()
{
  result = qword_78788;
  if (!qword_78788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78788);
  }

  return result;
}

unint64_t sub_48E48()
{
  result = qword_787A0;
  if (!qword_787A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_787A0);
  }

  return result;
}

uint64_t sub_49350(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_49410(void *result, uint64_t a2, int a3, uint64_t a4)
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

void sub_494B4()
{
  sub_495F4(319, &qword_787E8, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_5BCE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_495F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_496E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), unint64_t *a6, uint64_t (*a7)(uint64_t))
{
  sub_495F4(319, a4, a5, &type metadata accessor for Array);
  if (v9 <= 0x3F)
  {
    sub_5BCE4();
    if (v10 <= 0x3F)
    {
      sub_495F4(319, a6, a7, &type metadata accessor for Optional);
      if (v11 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_497E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 40);
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
      v12 = a1 + *(a3 + 56);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 60);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_49928(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 40) = (a2 - 1);
  }

  else
  {
    v8 = sub_5BCE4();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 56);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78110, &qword_61E70);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 60);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_49A58()
{
  sub_495F4(319, &qword_781C8, type metadata accessor for Opentelemetry_Proto_Common_V1_KeyValue, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_5BCE4();
    if (v1 <= 0x3F)
    {
      sub_495F4(319, &qword_781D0, type metadata accessor for Opentelemetry_Proto_Common_V1_AnyValue, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_49B94()
{
  result = qword_78820;
  if (!qword_78820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_78820);
  }

  return result;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.resourceLogs.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0) + 20);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0) + 20);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = _swiftEmptyArrayStorage;
  v1 = a1 + *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0) + 20);
  return sub_5BCD4();
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.getter@<X0>(void *a1@<X8>)
{
  v3 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B58();
  v5 = &v11 - v4;
  v6 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_4A2A4(v1 + *(v6 + 20), v5);
  v7 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_4A334(v5, a1);
  }

  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v9 = a1 + *(v7 + 24);
  sub_5BCD4();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_60C4(v5, &qword_78828, &qword_628F0);
  }

  return result;
}

uint64_t sub_49F3C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B58();
  v6 = &v12 - v5;
  v7 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_4A2A4(a1 + *(v7 + 20), v6);
  v8 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_4A334(v6, a2);
  }

  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v10 = a2 + *(v8 + 24);
  sub_5BCD4();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_60C4(v6, &qword_78828, &qword_628F0);
  }

  return result;
}

uint64_t sub_4A080(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70B58();
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4CFC0(a1, v8, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
  v9 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) + 20);
  sub_60C4(a2 + v9, &qword_78828, &qword_628F0);
  sub_4A334(v8, a2 + v9);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) + 20);
  sub_60C4(v1 + v3, &qword_78828, &qword_628F0);
  sub_4A334(a1, v1 + v3);
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0) + 24);
  return sub_5BCD4();
}

uint64_t sub_4A2A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4A334(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void (*Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.partialSuccess.modify(void *a1))(uint64_t **a1, char a2)
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
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0) - 8) + 64);
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
  v8 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
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
  v14 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) + 20);
  *(v4 + 12) = v14;
  sub_4A2A4(v1 + v14, v7);
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
      sub_60C4(v7, &qword_78828, &qword_628F0);
    }
  }

  else
  {
    sub_4A334(v7, v13);
  }

  return sub_4A590;
}

void sub_4A590(uint64_t **a1, char a2)
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
    sub_4CFC0((*a1)[5], v4, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
    sub_60C4(v9 + v3, &qword_78828, &qword_628F0);
    sub_4A334(v4, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_4D028(v5, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
  }

  else
  {
    sub_60C4(v9 + v3, &qword_78828, &qword_628F0);
    sub_4A334(v5, v9 + v3);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.hasPartialSuccess.getter()
{
  v1 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B58();
  v3 = &v8 - v2;
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_4A2A4(v0 + *(v4 + 20), v3);
  v5 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_60C4(v3, &qword_78828, &qword_628F0);
  return v6;
}

Swift::Void __swiftcall Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.clearPartialSuccess()()
{
  v1 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) + 20);
  sub_60C4(v0 + v1, &qword_78828, &qword_628F0);
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_5BCE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.unknownFields.setter(uint64_t a1)
{
  v3 = sub_5BCE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.init()@<X0>(uint64_t a1@<X8>)
{
  sub_5BCD4();
  v2 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) + 20);
  v3 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v4 = *(*(v3 - 8) + 56);

  return v4(a1 + v2, 1, 1, v3);
}

uint64_t sub_4A9B0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.errorMessage.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.errorMessage.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0) + 24);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0) + 24);
  v4 = sub_5BCE4();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0);
        sub_4C0E8(&qword_78718, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs);
        sub_5BE84();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.traverse<A>(visitor:)()
{
  if (!*(*v0 + 16) || (type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs(0), sub_4C0E8(&qword_78718, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs), result = sub_5BFD4(), !v1))
  {
    v3 = v0 + *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0) + 20);
    return sub_5BCC4();
  }

  return result;
}

uint64_t static Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_4613C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v2 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0) + 20);
  sub_5BCE4();
  sub_4C0E8(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_4AFA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_4C0E8(&qword_788A8, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_4B040(uint64_t a1)
{
  v2 = sub_4C0E8(&qword_78850, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_4B0AC()
{
  sub_4C0E8(&qword_78850, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);

  return sub_5BF14();
}

uint64_t sub_4B128(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_4613C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_5BCE4();
  sub_4C0E8(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.decodeMessage<A>(decoder:)()
{
  result = sub_5BD64();
  if (!v0)
  {
    while ((v2 & 1) == 0)
    {
      if (result == 1)
      {
        v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) + 20);
        type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
        sub_4C0E8(&qword_78880, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
        sub_5BEB4();
      }

      result = sub_5BD64();
    }
  }

  return result;
}

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse.traverse<A>(visitor:)()
{
  result = sub_4B39C(v0);
  if (!v1)
  {
    return sub_5BCC4();
  }

  return result;
}

uint64_t sub_4B39C(uint64_t a1)
{
  v2 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B58();
  v4 = v12 - v3;
  v5 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  off_70B58();
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_4A2A4(a1 + *(v10 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_60C4(v4, &qword_78828, &qword_628F0);
  }

  sub_4A334(v4, v9);
  sub_4C0E8(&qword_78880, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
  sub_5C004();
  return sub_4D028(v9, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
}

uint64_t sub_4B5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_5BCD4();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_4B670@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_5BCE4();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_4B6D8(uint64_t a1)
{
  v3 = sub_5BCE4();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_4B770(uint64_t a1, uint64_t a2)
{
  v4 = sub_4C0E8(&qword_788A0, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_4B810(uint64_t a1)
{
  v2 = sub_4C0E8(&qword_78868, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_4B87C()
{
  sub_4C0E8(&qword_78868, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);

  return sub_5BF14();
}

uint64_t sub_4B924()
{
  v0 = sub_5C044();
  __swift_allocate_value_buffer(v0, qword_7F078);
  __swift_project_value_buffer(v0, qword_7F078);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78200, &unk_61A10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78208, &qword_5F8A0) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EFC0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rejected_log_records";
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

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.decodeMessage<A>(decoder:)()
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

uint64_t Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.traverse<A>(visitor:)()
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
      v5 = v0 + *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0) + 24);
      return sub_5BCC4();
    }
  }

  return result;
}

uint64_t static Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess.== infix(_:_:)(void *a1, void *a2)
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

  v3 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0) + 24);
  sub_5BCE4();
  sub_4C0E8(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

Swift::Int sub_4BD8C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_5C454();
  a1(0);
  sub_4C0E8(a2, a3);
  sub_5C104();
  return sub_5C474();
}

uint64_t sub_4BE14@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0xE000000000000000;
  v2 = a2 + *(a1 + 24);
  return sub_5BCD4();
}

uint64_t sub_4BE8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_4C0E8(&qword_78898, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);

  return _MessageImplementationBase.isEqualTo(message:)(a1, a2, v4);
}

uint64_t sub_4BF2C(uint64_t a1)
{
  v2 = sub_4C0E8(&qword_78880, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);

  return Message.debugDescription.getter(a1, v2);
}

uint64_t sub_4BF98()
{
  sub_4C0E8(&qword_78880, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);

  return sub_5BF14();
}

uint64_t sub_4C014(void *a1, void *a2, uint64_t a3)
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
  sub_4C0E8(&qword_78108, &type metadata accessor for UnknownStorage);
  return sub_5C114() & 1;
}

uint64_t sub_4C0E8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s16TelemetrySupport044Opentelemetry_Proto_Collector_Logs_V1_ExportF15ServiceResponseV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  off_70B58();
  v8 = (&v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B58();
  v11 = (&v26 - v10);
  v12 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_788B0, &unk_62E40) - 8);
  v13 = (*(*v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B58();
  v15 = &v26 - v14;
  v16 = *(type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0) + 20);
  v17 = v12[14];
  sub_4A2A4(a1 + v16, v15);
  sub_4A2A4(a2 + v16, &v15[v17]);
  v18 = *(v5 + 48);
  if (v18(v15, 1, v4) != 1)
  {
    sub_4A2A4(v15, v11);
    if (v18(&v15[v17], 1, v4) != 1)
    {
      sub_4A334(&v15[v17], v8);
      if (*v11 == *v8)
      {
        v22 = v11[1] == v8[1] && v11[2] == v8[2];
        if (v22 || (sub_5C3A4() & 1) != 0)
        {
          v23 = *(v4 + 24);
          sub_5BCE4();
          sub_4C0E8(&qword_78108, &type metadata accessor for UnknownStorage);
          v24 = sub_5C114();
          sub_4D028(v8, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
          sub_4D028(v11, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
          sub_60C4(v15, &qword_78828, &qword_628F0);
          if (v24)
          {
            goto LABEL_4;
          }

LABEL_18:
          v19 = 0;
          return v19 & 1;
        }
      }

      sub_4D028(v8, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
      sub_4D028(v11, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
      v20 = &qword_78828;
      v21 = &qword_628F0;
LABEL_17:
      sub_60C4(v15, v20, v21);
      goto LABEL_18;
    }

    sub_4D028(v11, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess);
LABEL_7:
    v20 = &qword_788B0;
    v21 = &unk_62E40;
    goto LABEL_17;
  }

  if (v18(&v15[v17], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_60C4(v15, &qword_78828, &qword_628F0);
LABEL_4:
  sub_5BCE4();
  sub_4C0E8(&qword_78108, &type metadata accessor for UnknownStorage);
  v19 = sub_5C114();
  return v19 & 1;
}

uint64_t sub_4C868(uint64_t *a1, uint64_t a2, uint64_t a3)
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

void *sub_4C928(void *result, uint64_t a2, int a3, uint64_t a4)
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

void sub_4C9CC()
{
  sub_4CD60(319, &qword_787E8, type metadata accessor for Opentelemetry_Proto_Logs_V1_ResourceLogs, &type metadata accessor for Array);
  if (v0 <= 0x3F)
  {
    sub_5BCE4();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_4CA94(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_4CBA4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78828, &qword_628F0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_4CCAC()
{
  sub_5BCE4();
  if (v0 <= 0x3F)
  {
    sub_4CD60(319, &qword_78890, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsPartialSuccess, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_4CD60(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_4CDD8(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_4CE98(uint64_t result, uint64_t a2, int a3, uint64_t a4)
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

uint64_t sub_4CF3C()
{
  result = sub_5BCE4();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_4CFC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_4D028(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_4D104()
{
  v0 = *(*(sub_5BAF4() - 8) + 64);
  off_70B70();
  v1 = sub_5BAD4();
  __swift_allocate_value_buffer(v1, qword_809C8);
  __swift_project_value_buffer(v1, qword_809C8);
  sub_5BAE4();
  return sub_5BAC4();
}

uint64_t sub_4D248()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_78710, &qword_61E48);
  v0 = sub_5BAD4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_5EBD0;
  if (qword_7F9C8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_809C8);
  result = (*(v1 + 16))(v4 + v3, v5, v0);
  qword_809E0 = v4;
  return result;
}

uint64_t *sub_4D364()
{
  if (qword_7F9D0 != -1)
  {
    swift_once();
  }

  return &qword_809E0;
}

uint64_t sub_4D3B4()
{
  if (qword_7F9D0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_4D41C(uint64_t a1, uint64_t *a2)
{
  v3 = sub_5BAF4();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_5BAE4();
}

uint64_t sub_4D4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v27 = a5;
  v31 = a1;
  v10 = *(a2 - 8);
  v11 = *(v10 + 64);
  off_70B70();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788B8, &qword_62E50);
  v29 = *(v12 - 8);
  v30 = v12;
  v13 = (*(v29 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B70();
  v15 = v25 - v14;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_788C0, &qword_62E58);
  v26 = *(v28 - 8);
  v16 = (*(v26 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  off_70B70();
  v18 = v25 - v17;
  if (qword_7F9C8 != -1)
  {
    swift_once();
  }

  v19 = sub_5BAD4();
  v25[1] = __swift_project_value_buffer(v19, qword_809C8);
  v25[0] = type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest(0);
  sub_4D918(&qword_78850, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest);
  sub_5BCB4();
  type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse(0);
  sub_4D918(&qword_78868, type metadata accessor for Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse);
  sub_5BCA4();
  (*(v10 + 16))(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a2);
  v20 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = a2;
  *(v21 + 3) = a3;
  *(v21 + 4) = a4;
  *(v21 + 5) = v27;
  (*(v10 + 32))(&v21[v20], v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  sub_5BC94();
  sub_3DD98(&qword_788C8, &qword_788C0, &qword_62E58);
  sub_3DD98(&qword_788D0, &qword_788B8, &qword_62E50);
  v22 = v30;
  v23 = v28;
  sub_5BC84();

  (*(v29 + 8))(v15, v22);
  return (*(v26 + 8))(v18, v23);
}