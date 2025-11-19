uint64_t sub_1D9A5F328(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_37;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*(*v4 + *(**v4 + 112)) < *(*v6 + *(**v6 + 112)))
      {
        if (v7 == v6)
        {
          v6 += 8;
          goto LABEL_14;
        }

        v6 += 8;
      }

      else
      {
        if (v7 == v4)
        {
          v4 += 8;
          goto LABEL_14;
        }

        v15 = *v4;
        v4 += 8;
      }

      *v7 = v15;
LABEL_14:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_26:
    v16 = v6 - 8;
    v5 -= 8;
    v17 = v14;
    do
    {
      v18 = v5 + 8;
      v20 = *(v17 - 8);
      v17 -= 8;
      v19 = v20;
      if (*(*v16 + *(**v16 + 112)) < *(v20 + *(*v20 + 112)))
      {
        if (v18 != v6)
        {
          *v5 = *v16;
        }

        if (v14 <= v4 || (v6 -= 8, v16 <= v7))
        {
          v6 = v16;
          goto LABEL_37;
        }

        goto LABEL_26;
      }

      if (v18 != v14)
      {
        *v5 = v19;
      }

      v5 -= 8;
      v14 = v17;
    }

    while (v17 > v4);
    v14 = v17;
  }

LABEL_37:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v21 >> 3));
  }

  return 1;
}

uint64_t sub_1D9A5F58C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1D9C7E50C();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1D9B907B4(v3, 0);
  sub_1D9A1CFE4(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D9A5F620(uint64_t (*a1)(uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = a1(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    v6 = v5 - 1;
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D9A5F6C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D9A5F9A8(a1, *(v2 + 16), **(v2 + 24), *(v2 + 32));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

id sub_1D9A5F6F8(uint64_t a1)
{
  v2 = sub_1D9C7B80C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - v11;
  static Logger.argos.getter(&v25 - v11);
  sub_1D9A3E0E0(v10);
  v13 = *(v7 + 8);
  v13(v12, v6);
  v14 = sub_1D9C7D8BC();
  v15 = sub_1D9C7E09C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = v2;
    v17 = a1;
    v18 = v16;
    *v16 = 0;
    _os_log_impl(&dword_1D9962000, v14, v15, "RunnerCache.createRunner", v16, 2u);
    v19 = v18;
    a1 = v17;
    v2 = v26;
    MEMORY[0x1DA7405F0](v19, -1, -1);
  }

  v13(v10, v6);
  (*(v3 + 16))(v5, *(a1 + 16) + OBJC_IVAR____TtC12VisualLookUp7E5Model_bundleURL, v2);
  v20 = objc_allocWithZone(VIE5Runner);
  v21 = sub_1D9C7B77C();
  v22 = sub_1D9C7DC4C();
  v23 = [v20 initWithBundleURL:v21 mainFunctionName:v22];

  (*(v3 + 8))(v5, v2);
  return v23;
}

id sub_1D9A5F9A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v19[2] = a2;
  v9 = sub_1D9B18574(sub_1D9A5FB1C, v19, v8);
  if (v9)
  {
    v10 = v9;
    sub_1D9C7B8AC();
    *(v10 + *(*v10 + 112)) = v11;
    v12 = *(v10 + *(*v10 + 104));
  }

  else
  {
    v13 = *(a3 + 16) + OBJC_IVAR____TtC12VisualLookUp7E5Model_modelInfo;
    v14 = type metadata accessor for MLModelInfo(0);
    sub_1D99A81F0(*(v13 + *(v14 + 32)), v20);
    v15 = *(a3 + 104);
    type metadata accessor for DurationMeasurement();
    swift_allocObject();

    sub_1D9AFD4B8(v20, v15);

    v16 = sub_1D9A5F6F8(a3);
    v12 = v16;
    if (*(a4 + 16) >= 1 && v16)
    {
      v17 = v16;
      sub_1D9A5DE48(a1, a2, v17);
    }

    sub_1D9AFCCA4();
  }

  return v12;
}

uint64_t sub_1D9A5FB50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D9A5FB98()
{
  result = qword_1EDD354B0;
  if (!qword_1EDD354B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECB52460);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD354B0);
  }

  return result;
}

uint64_t sub_1D9A5FC28@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void, void, void, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, *(v3 + 16), *(v3 + 24), **(v3 + 32), *(v3 + 40));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

id sub_1D9A5FC6C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1D9A5DBFC(a1, *(v2 + 16), **(v2 + 24), *(v2 + 32), *(v2 + 40));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1D9A5FCD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9C7D8DC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  static Logger.argos.getter(&v16 - v9);
  sub_1D9A3E0E0(v8);
  v11 = *(v5 + 8);
  v11(v10, v4);
  v12 = sub_1D9C7D8BC();
  v13 = sub_1D9C7E09C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D9962000, v12, v13, "RunnerCache.createRunner", v14, 2u);
    MEMORY[0x1DA7405F0](v14, -1, -1);
  }

  v11(v8, v4);
  return sub_1D9B85360(a1, a2);
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_1D9A5FE8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1D9A5FED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9A5FF38@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = _s14DetectedResultVMa();
  v21 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v22 = *a2;
  v14 = sub_1D9A601D8(a1, &v22, a3);
  v15 = v14;
  v16 = *(v14 + 16);
  if (v16)
  {
    v17 = v14 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    result = sub_1D9A62EC0(v17, v13, _s14DetectedResultVMa);
    if (v16 == 1)
    {
LABEL_3:

      sub_1D9A62F88(v13, a4, _s14DetectedResultVMa);
      return (*(v21 + 56))(a4, 0, 1, v8);
    }

    else
    {
      v20 = 1;
      while (v20 < *(v15 + 16))
      {
        sub_1D9A62EC0(v17 + *(v21 + 72) * v20, v11, _s14DetectedResultVMa);
        if (*&v13[*(v8 + 32)] >= *&v11[*(v8 + 32)])
        {
          result = sub_1D9A62F28(v11, _s14DetectedResultVMa);
        }

        else
        {
          sub_1D9A62F28(v13, _s14DetectedResultVMa);
          result = sub_1D9A62F88(v11, v13, _s14DetectedResultVMa);
        }

        if (v16 == ++v20)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {

    v19 = *(v21 + 56);

    return v19(a4, 1, 1, v8);
  }

  return result;
}

uint64_t sub_1D9A601D8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v53 = a1;
  v5 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v48 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v45 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v44 = &v43 - v11;
  v49 = _s14DetectedResultVMa();
  v12 = MEMORY[0x1EEE9AC00](v49);
  v46 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v55 = &v43 - v15;
  v51 = *(a3 + 16);
  if (v51)
  {
    v16 = 0;
    v17 = *a2;
    v18 = *(v14 + 80);
    v52 = *(v14 + 72);
    v43 = (v18 + 32) & ~v18;
    v50 = a3 + v43;
    v47 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1D9A62EC0(v50 + v52 * v16, v55, _s14DetectedResultVMa);
      v19 = *(v53 + 16);
      if (!v19)
      {
LABEL_3:
        sub_1D9A62F28(v55, _s14DetectedResultVMa);
        goto LABEL_4;
      }

      v20 = (v55 + *(v49 + 28));
      v21 = v20[1];
      v54 = *v20;
      v22 = v20[2];
      v23 = v20[3];
      v24 = v53 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
      v25 = *(v48 + 72);
      while (1)
      {
        sub_1D9A62EC0(v24, v8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
        if (v8[20] == 1)
        {
          break;
        }

        if (*(v17 + 16))
        {
          v27 = sub_1D99ED894(*v8, *(v8 + 1));
          if (v28)
          {
            v29 = *(*(v17 + 56) + 8 * v27);
            v30 = *(v29 + 16);
            v32 = *(v29 + 32);
            v31 = *(v29 + 40);
            v59[3] = v23;
            v59[4] = v17;
            v59[0] = v54;
            v59[1] = v21;
            v59[2] = v22;
            v56 = v30;
            v57 = v32;
            v58 = v31;
            if (sub_1D9A375A8(v59, &v56))
            {
              goto LABEL_18;
            }
          }
        }

LABEL_7:
        sub_1D9A62F28(v8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
        v24 += v25;
        if (!--v19)
        {
          goto LABEL_3;
        }
      }

      v26 = *v8 == v22 && *(v8 + 1) == v23;
      if (!v26 && (sub_1D9C7E7DC() & 1) == 0)
      {
        goto LABEL_7;
      }

LABEL_18:
      v33 = v45;
      sub_1D9A62F88(v8, v45, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      v34 = v44;
      sub_1D9A62F88(v33, v44, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      LODWORD(v33) = *(v34 + 21);
      v35 = *(v55 + *(v49 + 32));
      v36 = *(v34 + 16);
      sub_1D9A62F28(v34, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      if (v33 == v35 >= v36)
      {
        goto LABEL_3;
      }

      sub_1D9A62F88(v55, v46, _s14DetectedResultVMa);
      v37 = v47;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v39 = v37;
      v60 = v37;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D99FE238(0, *(v37 + 16) + 1, 1);
        v39 = v60;
      }

      v41 = *(v39 + 16);
      v40 = *(v39 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1D99FE238(v40 > 1, v41 + 1, 1);
        v39 = v60;
      }

      *(v39 + 16) = v41 + 1;
      v47 = v39;
      sub_1D9A62F88(v46, v39 + v43 + v41 * v52, _s14DetectedResultVMa);
LABEL_4:
      if (++v16 == v51)
      {
        return v47;
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D9A606A4@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v7 = _s14DetectedResultVMa();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a2;

  sub_1D9A60D0C(&v36);
  v15 = v36;
  v31 = *(a1 + 16);
  if (v31)
  {
    v29 = v7;
    v30 = a4;
    v16 = 0;
    v17 = v36[2];
    v33 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v32 = *(v12 + 72);
    while (1)
    {
      v34 = v16;
      sub_1D9A62EC0(v33 + v32 * v16, v14, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
      if (v17)
      {
        break;
      }

LABEL_3:
      v16 = v34 + 1;
      sub_1D9A62F28(v14, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);
      if (v16 == v31)
      {

        v7 = v29;
        a4 = v30;
        return (*(v8 + 56))(a4, 1, 1, v7);
      }
    }

    v18 = 0;
    v19 = v15 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    while (v18 < v15[2])
    {
      v20 = sub_1D9A62EC0(&v19[*(v8 + 72) * v18], v10, _s14DetectedResultVMa);
      MEMORY[0x1EEE9AC00](v20);
      *(&v28 - 2) = v10;
      sub_1D9B09188(sub_1D9A62EA8, (&v28 - 4), v35);
      if (v21)
      {
        v22 = v21;
        if (*(v21 + 16) && (v23 = sub_1D99ED894(*v14, *(v14 + 1)), (v24 & 1) != 0))
        {
          v25 = *(*(v22 + 56) + 4 * v23);

          if (*(v14 + 4) < v25)
          {
LABEL_13:
            sub_1D9A62F28(v14, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold);

            v26 = v30;
            sub_1D9A62EC0(v10, v30, _s14DetectedResultVMa);
            (*(v8 + 56))(v26, 0, 1, v29);
            return sub_1D9A62F28(v10, _s14DetectedResultVMa);
          }
        }

        else
        {

          if (*(v14 + 4) < 0.0)
          {
            goto LABEL_13;
          }
        }
      }

      ++v18;
      sub_1D9A62F28(v10, _s14DetectedResultVMa);
      if (v17 == v18)
      {
        goto LABEL_3;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {

    return (*(v8 + 56))(a4, 1, 1, v7);
  }

  return result;
}

uint64_t sub_1D9A60A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a2;
  v28 = a3;
  v6 = type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0) - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = *(a1 + 16);
  if (v24)
  {
    v10 = 0;
    v11 = *(v7 + 80);
    v25 = *(v7 + 72);
    v26 = a1 + ((v11 + 32) & ~v11);
    while (1)
    {
      v12 = sub_1D9A62EC0(v26 + v25 * v10, v9, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
      MEMORY[0x1EEE9AC00](v12);
      v13 = v28;
      *(&v24 - 4) = v27;
      *(&v24 - 3) = v13;
      *(&v24 - 2) = a4;
      *(&v24 - 1) = v9;

      v14 = sub_1D9A19614(sub_1D9A60CD4, (&v24 - 6), a4);
      v15 = v14;
      v16 = *(v14 + 16);
      if (v16)
      {
        break;
      }

      v17 = 0.0;
LABEL_13:

      v23 = *(v9 + 36) ^ (v17 >= v9[8]);
      sub_1D9A62F28(v9, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
      if ((v23 & 1) == 0 && ++v10 != v24)
      {
        continue;
      }

      return v23 & 1;
    }

    v17 = *(v14 + 48);

    v19 = 1;
LABEL_5:
    v20 = (v15 + 48 + 24 * v19);
    while (1)
    {
      if (v16 == v19)
      {

        goto LABEL_13;
      }

      if (v19 >= *(v15 + 16))
      {
        break;
      }

      ++v19;
      v21 = *v20;
      v22 = v17 < *v20;
      v20 += 6;
      if (v22)
      {

        v17 = v21;
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
    v23 = 1;
    return v23 & 1;
  }

  return result;
}

void sub_1D9A60D0C(void **a1)
{
  v2 = *(_s14DetectedResultVMa() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D99E918C(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_1D9A60DB4(v5);
  *a1 = v3;
}

void sub_1D9A60DB4(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D9C7E79C();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        _s14DetectedResultVMa();
        v6 = sub_1D9C7DF5C();
        *(v6 + 16) = v5;
      }

      v7 = *(_s14DetectedResultVMa() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D9A61138(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1D9A60EE0(0, v2, 1, a1);
  }
}

void sub_1D9A60EE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = _s14DetectedResultVMa();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - v16;
  v30 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v35 = v18;
    v29 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v33 = v20;
    v34 = a3;
    v31 = v23;
    v32 = v22;
    while (1)
    {
      sub_1D9A62EC0(v23, v17, _s14DetectedResultVMa);
      sub_1D9A62EC0(v20, v13, _s14DetectedResultVMa);
      v24 = *(v8 + 32);
      v25 = *&v17[v24];
      v26 = *&v13[v24];
      sub_1D9A62F28(v13, _s14DetectedResultVMa);
      sub_1D9A62F28(v17, _s14DetectedResultVMa);
      if (v26 >= v25)
      {
LABEL_4:
        a3 = v34 + 1;
        v20 = v33 + v29;
        v22 = v32 - 1;
        v23 = v31 + v29;
        if (v34 + 1 == v30)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v35)
      {
        break;
      }

      sub_1D9A62F88(v23, v10, _s14DetectedResultVMa);
      swift_arrayInitWithTakeFrontToBack();
      sub_1D9A62F88(v10, v20, _s14DetectedResultVMa);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D9A61138(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = _s14DetectedResultVMa();
  v118 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v113 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v121 = &v107 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v107 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v107 - v16;
  v120 = a3;
  v18 = a3[1];
  if (v18 < 1)
  {
    v20 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_135;
    }

    a4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v102 = a4;
    }

    else
    {
LABEL_129:
      v102 = sub_1D99E8FDC(a4);
    }

    v124 = v102;
    a4 = *(v102 + 2);
    if (a4 >= 2)
    {
      while (*v120)
      {
        v103 = *&v102[16 * a4];
        v104 = v102;
        v105 = *&v102[16 * a4 + 24];
        sub_1D9A61A9C(*v120 + *(v118 + 72) * v103, *v120 + *(v118 + 72) * *&v102[16 * a4 + 16], *v120 + *(v118 + 72) * v105, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v105 < v103)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1D99E8FDC(v104);
        }

        if (a4 - 2 >= *(v104 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v104[16 * a4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v124 = v104;
        sub_1D99E8F50(a4 - 1);
        v102 = v124;
        a4 = *(v124 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v109 = a4;
  v123 = v9;
  while (1)
  {
    v21 = v19;
    v22 = v19 + 1;
    v114 = v20;
    if (v19 + 1 >= v18)
    {
      v18 = v19 + 1;
    }

    else
    {
      v23 = *(v118 + 72);
      v5 = *v120 + v23 * v22;
      v117 = *v120;
      v24 = v117;
      sub_1D9A62EC0(v117 + v23 * v22, v17, _s14DetectedResultVMa);
      v25 = v24 + v23 * v21;
      v26 = v21;
      v27 = v122;
      sub_1D9A62EC0(v25, v122, _s14DetectedResultVMa);
      v28 = *(v9 + 32);
      v29 = *&v17[v28];
      v30 = *(v27 + v28);
      sub_1D9A62F28(v27, _s14DetectedResultVMa);
      sub_1D9A62F28(v17, _s14DetectedResultVMa);
      v108 = v26;
      v31 = v26 + 2;
      v119 = v23;
      v32 = v117 + v23 * (v26 + 2);
      while (v18 != v31)
      {
        sub_1D9A62EC0(v32, v17, _s14DetectedResultVMa);
        v33 = v122;
        sub_1D9A62EC0(v5, v122, _s14DetectedResultVMa);
        v34 = *(v123 + 32);
        v35 = *&v17[v34];
        v36 = *(v33 + v34);
        sub_1D9A62F28(v33, _s14DetectedResultVMa);
        sub_1D9A62F28(v17, _s14DetectedResultVMa);
        ++v31;
        v32 += v119;
        v5 += v119;
        if (v30 < v29 == v36 >= v35)
        {
          v18 = v31 - 1;
          break;
        }
      }

      v21 = v108;
      a4 = v109;
      v9 = v123;
      if (v30 < v29)
      {
        if (v18 < v108)
        {
          goto LABEL_126;
        }

        if (v108 < v18)
        {
          v107 = v6;
          v37 = v119 * (v18 - 1);
          v38 = v18 * v119;
          v39 = v18;
          v40 = v18;
          v41 = v108;
          v42 = v108 * v119;
          do
          {
            if (v41 != --v40)
            {
              v43 = *v120;
              if (!*v120)
              {
                goto LABEL_132;
              }

              v5 = v43 + v42;
              sub_1D9A62F88(v43 + v42, v113, _s14DetectedResultVMa);
              if (v42 < v37 || v5 >= v43 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v42 != v37)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D9A62F88(v113, v43 + v37, _s14DetectedResultVMa);
            }

            ++v41;
            v37 -= v119;
            v38 -= v119;
            v42 += v119;
          }

          while (v41 < v40);
          v6 = v107;
          v21 = v108;
          a4 = v109;
          v9 = v123;
          v18 = v39;
        }
      }
    }

    v44 = v120[1];
    if (v18 < v44)
    {
      if (__OFSUB__(v18, v21))
      {
        goto LABEL_125;
      }

      if (v18 - v21 < a4)
      {
        if (__OFADD__(v21, a4))
        {
          goto LABEL_127;
        }

        if ((v21 + a4) >= v44)
        {
          v45 = v120[1];
        }

        else
        {
          v45 = v21 + a4;
        }

        if (v45 < v21)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v18 != v45)
        {
          break;
        }
      }
    }

    v19 = v18;
    if (v18 < v21)
    {
      goto LABEL_124;
    }

LABEL_33:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = v114;
    }

    else
    {
      v20 = sub_1D99E8FF0(0, *(v114 + 2) + 1, 1, v114);
    }

    a4 = *(v20 + 2);
    v46 = *(v20 + 3);
    v5 = a4 + 1;
    if (a4 >= v46 >> 1)
    {
      v20 = sub_1D99E8FF0((v46 > 1), a4 + 1, 1, v20);
    }

    *(v20 + 2) = v5;
    v47 = &v20[16 * a4];
    *(v47 + 4) = v21;
    *(v47 + 5) = v19;
    v48 = *v110;
    if (!*v110)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v49 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v50 = *(v20 + 4);
          v51 = *(v20 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_52:
          if (v53)
          {
            goto LABEL_113;
          }

          v66 = &v20[16 * v5];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_116;
          }

          v72 = &v20[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_120;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v76 = &v20[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_66:
        if (v71)
        {
          goto LABEL_115;
        }

        v79 = &v20[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_118;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v49 - 1;
        if (v49 - 1 >= v5)
        {
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v120)
        {
          goto LABEL_131;
        }

        v87 = v20;
        v88 = *&v20[16 * a4 + 32];
        v5 = *&v20[16 * v49 + 40];
        sub_1D9A61A9C(*v120 + *(v118 + 72) * v88, *v120 + *(v118 + 72) * *&v20[16 * v49 + 32], *v120 + *(v118 + 72) * v5, v48);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v88)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v89 = v87;
        }

        else
        {
          v89 = sub_1D99E8FDC(v87);
        }

        v9 = v123;
        if (a4 >= *(v89 + 2))
        {
          goto LABEL_110;
        }

        v90 = &v89[16 * a4];
        *(v90 + 4) = v88;
        *(v90 + 5) = v5;
        v124 = v89;
        sub_1D99E8F50(v49);
        v20 = v124;
        v5 = *(v124 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v20[16 * v5 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_111;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_112;
      }

      v61 = &v20[16 * v5];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_114;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_117;
      }

      if (v65 >= v57)
      {
        v83 = &v20[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_121;
        }

        if (v52 < v86)
        {
          v49 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v18 = v120[1];
    a4 = v109;
    if (v19 >= v18)
    {
      goto LABEL_96;
    }
  }

  v107 = v6;
  v108 = v21;
  a4 = *v120;
  v91 = *(v118 + 72);
  v92 = *v120 + v91 * (v18 - 1);
  v93 = -v91;
  v94 = v21 - v18;
  v111 = v91;
  v112 = v45;
  v5 = a4 + v18 * v91;
LABEL_86:
  v119 = v18;
  v115 = v5;
  v116 = v94;
  v117 = v92;
  v95 = v123;
  while (1)
  {
    sub_1D9A62EC0(v5, v17, _s14DetectedResultVMa);
    v96 = v122;
    sub_1D9A62EC0(v92, v122, _s14DetectedResultVMa);
    v97 = *(v95 + 32);
    v98 = *&v17[v97];
    v99 = *(v96 + v97);
    sub_1D9A62F28(v96, _s14DetectedResultVMa);
    sub_1D9A62F28(v17, _s14DetectedResultVMa);
    if (v99 >= v98)
    {
LABEL_85:
      v18 = v119 + 1;
      v19 = v112;
      v92 = v117 + v111;
      v94 = v116 - 1;
      v5 = v115 + v111;
      if (v119 + 1 != v112)
      {
        goto LABEL_86;
      }

      v6 = v107;
      v21 = v108;
      v9 = v123;
      if (v112 < v108)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v100 = v121;
    sub_1D9A62F88(v5, v121, _s14DetectedResultVMa);
    v95 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D9A62F88(v100, v92, _s14DetectedResultVMa);
    v92 += v93;
    v5 += v93;
    if (__CFADD__(v94++, 1))
    {
      goto LABEL_85;
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
}

void sub_1D9A61A9C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v47 = a3;
  v46 = _s14DetectedResultVMa();
  MEMORY[0x1EEE9AC00](v46);
  v45 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v41 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v47 - a2;
  if (v47 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v50 = a1;
  v49 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41[1] = v4;
    v24 = a4 + v17;
    if (v17 < 1)
    {
      v27 = a4 + v17;
    }

    else
    {
      v25 = -v13;
      v26 = a4 + v17;
      v27 = v24;
      v43 = v25;
      v44 = a4;
      do
      {
        v41[0] = v27;
        v28 = a2;
        v29 = a2 + v25;
        while (1)
        {
          v31 = v47;
          if (v28 <= a1)
          {
            v50 = v28;
            v48 = v41[0];
            goto LABEL_59;
          }

          v42 = v27;
          v47 += v25;
          v32 = v26 + v25;
          sub_1D9A62EC0(v32, v11, _s14DetectedResultVMa);
          v33 = v29;
          v34 = v29;
          v35 = v11;
          v36 = v45;
          sub_1D9A62EC0(v34, v45, _s14DetectedResultVMa);
          v37 = *(v46 + 32);
          v38 = *(v35 + v37);
          v39 = *(v36 + v37);
          v40 = v36;
          v11 = v35;
          sub_1D9A62F28(v40, _s14DetectedResultVMa);
          sub_1D9A62F28(v35, _s14DetectedResultVMa);
          if (v39 < v38)
          {
            break;
          }

          v27 = v32;
          if (v31 < v26 || v47 >= v26)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v33;
          }

          else
          {
            v29 = v33;
            if (v31 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v26 = v32;
          v30 = v32 > v44;
          v25 = v43;
          if (!v30)
          {
            a2 = v28;
            goto LABEL_58;
          }
        }

        if (v31 < v28 || v47 >= v28)
        {
          a2 = v33;
          swift_arrayInitWithTakeFrontToBack();
          v27 = v42;
          v25 = v43;
        }

        else
        {
          v27 = v42;
          v25 = v43;
          a2 = v33;
          if (v31 != v28)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v26 > v44);
    }

LABEL_58:
    v50 = a2;
    v48 = v27;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v48 = a4 + v16;
    if (v16 >= 1 && a2 < v47)
    {
      do
      {
        sub_1D9A62EC0(a2, v11, _s14DetectedResultVMa);
        v20 = v45;
        sub_1D9A62EC0(a4, v45, _s14DetectedResultVMa);
        v21 = *(v46 + 32);
        v22 = *&v11[v21];
        v23 = *(v20 + v21);
        sub_1D9A62F28(v20, _s14DetectedResultVMa);
        sub_1D9A62F28(v11, _s14DetectedResultVMa);
        if (v23 >= v22)
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v49 = a4 + v13;
          a4 += v13;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        a1 += v13;
        v50 = a1;
      }

      while (a4 < v18 && a2 < v47);
    }
  }

LABEL_59:
  sub_1D9B01600(&v50, &v49, &v48);
}

uint64_t sub_1D9A61F94(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7D8DC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515A0);
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v34 - v15;
  v17 = a3[1];
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    v20 = a3[3];
    v21 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v21 = a3[2] & 0xFFFFFFFFFFFFLL;
    }

    if (v21)
    {
      v35[0] = a1;
      v35[1] = a2;
      v34[0] = 94;
      v34[1] = 0xE100000000000000;
      MEMORY[0x1DA73DF90](v14);
      MEMORY[0x1DA73DF90](36, 0xE100000000000000);
      v22 = sub_1D9C7B98C();
      (*(*(v22 - 8) + 56))(v16, 1, 1, v22);
      sub_1D99A57F8();
      sub_1D9C7E2EC();
      v24 = v23;
      sub_1D9A623A0(v16);

      v19 = v24 ^ 1;
    }

    else
    {
      static Logger.argos.getter(v12);
      sub_1D9A62EC0(a3, v8, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
      v26 = sub_1D9C7D8BC();
      v27 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v35[0] = v29;
        *v28 = 136315138;
        sub_1D9A62408();
        v30 = sub_1D9C7E7EC();
        v32 = v31;
        sub_1D9A62F28(v8, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
        v33 = sub_1D9A0E224(v30, v32, v35);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_1D9962000, v26, v27, "Invalid classification label threshold: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v29);
        MEMORY[0x1DA7405F0](v29, -1, -1);
        MEMORY[0x1DA7405F0](v28, -1, -1);
      }

      else
      {

        sub_1D9A62F28(v8, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
      }

      (*(v10 + 8))(v12, v9);
      v19 = 0;
    }

    return v19 & 1;
  }

  if (*a3 == a1 && v17 == a2)
  {
    v19 = 1;
    return v19 & 1;
  }

  return sub_1D9C7E7DC();
}

uint64_t sub_1D9A623A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9A62408()
{
  result = qword_1EDD2DD08;
  if (!qword_1EDD2DD08)
  {
    type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2DD08);
  }

  return result;
}

void sub_1D9A62460(uint64_t a1, uint64_t a2)
{
  v91 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB515A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v76 - v4;
  v6 = sub_1D9C7D8DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold(0);
  v83 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v76 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v76 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v78 = &v76 - v18;
  v19 = *(a2 + 16);
  if (!v19)
  {
    v21 = MEMORY[0x1E69E7CC0];
    v71 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v71)
    {
      goto LABEL_55;
    }

    goto LABEL_63;
  }

  v89 = v16;
  v20 = 0;
  v84 = a2 + 32;
  v77 = 0x80000001D9CA3A40;
  v87 = (v7 + 8);
  v88 = (v7 + 16);
  v21 = MEMORY[0x1E69E7CC0];
  *&v17 = 136315138;
  v80 = v17;
  v90 = v6;
  v81 = v5;
  v85 = v19;
  do
  {
    v76 = v21;
    while (1)
    {
      if (v20 >= v19)
      {
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        return;
      }

      if (__OFADD__(v20, 1))
      {
        goto LABEL_65;
      }

      v27 = v84 + 24 * v20;
      v28 = *v27;
      v29 = *(v27 + 8);
      v30 = *(v27 + 16);
      v94 = v20 + 1;
      v95 = v20 + 1;
      v31 = *(v91 + 16);

      if (v31)
      {
        break;
      }

LABEL_5:

      v19 = v85;
      v20 = v95;
      if (v94 == v85)
      {
        v21 = v76;
        goto LABEL_54;
      }
    }

    v32 = v91 + ((*(v83 + 80) + 32) & ~*(v83 + 80));
    v33 = *(v83 + 72);
    v92 = v28;
    v93 = v29;
    v96 = v33;
    while (1)
    {
      sub_1D9A62EC0(v32, v12, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
      v39 = v12[1];
      v40 = HIBYTE(v39) & 0xF;
      if ((v39 & 0x2000000000000000) == 0)
      {
        v40 = *v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v40)
      {
        break;
      }

      v34 = v12[3];
      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v12[2] & 0xFFFFFFFFFFFFLL;
      }

      if (!v35)
      {
        v42 = v9;
        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        if (byte_1EDD354C0 != 1)
        {
          goto LABEL_41;
        }

        v43 = [objc_opt_self() mainBundle];
        v44 = [v43 bundleIdentifier];

        if (v44)
        {
          v45 = sub_1D9C7DC7C();
          v47 = v46;

          if (v45 == 0xD00000000000002BLL && v77 == v47)
          {
          }

          else
          {
            v49 = sub_1D9C7E7DC();

            if ((v49 & 1) == 0)
            {
              goto LABEL_33;
            }
          }

          v50 = &off_1ECB51BA8;
          if (qword_1ECB50988 != -1)
          {
            swift_once();
            v50 = &off_1ECB51BA8;
          }
        }

        else
        {
LABEL_33:
          v50 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v50 = &qword_1EDD355A8;
          }
        }

        v51 = *(*v50 + 32);

        v52 = sub_1D9C7DC4C();
        LODWORD(v51) = [v51 BOOLForKey_];

        v6 = v90;
        if (v51)
        {
          v53 = qword_1EDD2C990;
          if (qword_1EDD2C988 != -1)
          {
            swift_once();
            v53 = qword_1EDD2C990;
          }
        }

        else
        {
LABEL_41:
          v53 = qword_1EDD354D8;
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
            v53 = qword_1EDD354D8;
          }
        }

        v54 = __swift_project_value_buffer(v6, v53);
        (*v88)(v42, v54, v6);
        v55 = v89;
        sub_1D9A62EC0(v12, v89, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
        v56 = v6;
        v57 = sub_1D9C7D8BC();
        v58 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v57, v58))
        {
          v59 = swift_slowAlloc();
          v86 = swift_slowAlloc();
          v99[0] = v86;
          *v59 = v80;
          sub_1D9A62408();
          v60 = sub_1D9C7E7EC();
          v62 = v61;
          sub_1D9A62F28(v55, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
          v63 = sub_1D9A0E224(v60, v62, v99);
          v33 = v96;

          *(v59 + 4) = v63;
          _os_log_impl(&dword_1D9962000, v57, v58, "Invalid classification label threshold: %s", v59, 0xCu);
          v64 = v86;
          __swift_destroy_boxed_opaque_existential_0Tm(v86);
          MEMORY[0x1DA7405F0](v64, -1, -1);
          v65 = v59;
          v5 = v81;
          MEMORY[0x1DA7405F0](v65, -1, -1);

          v6 = v90;
          (*v87)(v42, v90);
        }

        else
        {

          sub_1D9A62F28(v55, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
          (*v87)(v42, v56);
          v6 = v56;
        }

        v9 = v42;
        v28 = v92;
        v29 = v93;
        goto LABEL_14;
      }

      v99[0] = v28;
      v99[1] = v29;
      v97 = 94;
      v98 = 0xE100000000000000;
      MEMORY[0x1DA73DF90]();
      MEMORY[0x1DA73DF90](36, 0xE100000000000000);
      v36 = sub_1D9C7B98C();
      (*(*(v36 - 8) + 56))(v5, 1, 1, v36);
      sub_1D99A57F8();
      sub_1D9C7E2EC();
      v38 = v37;
      sub_1D9A623A0(v5);
      v33 = v96;

      if ((v38 & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_14:
      sub_1D9A62F28(v12, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
      v32 += v33;
      if (!--v31)
      {
        goto LABEL_5;
      }
    }

    v41 = v28 == *v12 && v29 == v39;
    if (!v41 && (sub_1D9C7E7DC() & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_4:
    v22 = v79;
    sub_1D9A62F88(v12, v79, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
    v23 = v22;
    v24 = v78;
    sub_1D9A62F88(v23, v78, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
    v25 = *(v24 + 36);
    v26 = *(v24 + 32);
    sub_1D9A62F28(v24, type metadata accessor for Argos_Protos_Queryflow_ClassificationLabelThreshold);
    if (((v25 ^ (v30 >= v26)) & 1) == 0)
    {
      goto LABEL_5;
    }

    v21 = v76;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v100 = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D99FE278(0, *(v21 + 16) + 1, 1);
      v21 = v100;
    }

    v68 = *(v21 + 16);
    v67 = *(v21 + 24);
    v19 = v85;
    v20 = v95;
    if (v68 >= v67 >> 1)
    {
      sub_1D99FE278((v67 > 1), v68 + 1, 1);
      v21 = v100;
    }

    *(v21 + 16) = v68 + 1;
    v69 = v21 + 24 * v68;
    v70 = v93;
    *(v69 + 32) = v92;
    *(v69 + 40) = v70;
    *(v69 + 48) = v30;
  }

  while (v94 != v19);
LABEL_54:
  v71 = *(v21 + 16);
  if (v71)
  {
LABEL_55:
    v72 = *(v21 + 48);

    v73 = 1;
LABEL_56:
    v74 = 24 * v73;
    while (v71 != v73)
    {
      if (v73 >= *(v21 + 16))
      {
        goto LABEL_66;
      }

      ++v73;
      v75 = *(v21 + v74 + 48);
      v74 += 24;
      if (v72 < v75)
      {

        v72 = v75;
        goto LABEL_56;
      }
    }
  }

LABEL_63:
}

uint64_t sub_1D9A62EC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9A62F28(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9A62F88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unsigned __int8 *sub_1D9A62FF0(unsigned __int8 *result)
{
  v2 = *result;
  v3 = *v1;
  v4 = (*v1 + 40);
  v5 = -*(*v1 + 16);
  v6 = -1;
  while (1)
  {
    v7 = v5 + v6;
    if (v5 + v6 == -1)
    {
      return (v7 != -1);
    }

    if (++v6 >= *(v3 + 16))
    {
      break;
    }

    v8 = v4 + 2;
    v9 = 0xE300000000000000;
    v10 = 7631457;
    switch(v2)
    {
      case 1:
        v9 = 0xE600000000000000;
        v10 = 0x65727574616ELL;
        break;
      case 2:
        v9 = 0xE800000000000000;
        v10 = 0x6B72616D646E616CLL;
        break;
      case 3:
        v9 = 0xEF6B72616D646E61;
        v10 = 0x4C6C61727574616ELL;
        break;
      case 4:
        v9 = 0xE500000000000000;
        v10 = 0x616964656DLL;
        break;
      case 5:
        v9 = 0xE400000000000000;
        v10 = 1802465122;
        break;
      case 6:
        v9 = 0xE500000000000000;
        v10 = 0x6D75626C61;
        break;
      case 7:
        v9 = 0xE400000000000000;
        v10 = 1937006947;
        break;
      case 8:
        v9 = 0xE400000000000000;
        v10 = 1936158564;
        break;
      case 9:
        v9 = 0xE700000000000000;
        v11 = 1835626081;
        goto LABEL_23;
      case 10:
        v9 = 0xE500000000000000;
        v10 = 0x7364726962;
        break;
      case 11:
        v9 = 0xE700000000000000;
        v10 = 0x73746365736E69;
        break;
      case 12:
        v9 = 0xE800000000000000;
        v10 = 0x73656C6974706572;
        break;
      case 13:
        v9 = 0xE700000000000000;
        v11 = 1835884909;
LABEL_23:
        v10 = v11 | 0x736C6100000000;
        break;
      case 14:
        v10 = 0xD000000000000010;
        v9 = 0x80000001D9CA2910;
        break;
      case 15:
        v9 = 0xE700000000000000;
        v10 = 0x6C657261707061;
        break;
      case 16:
        v9 = 0xEB00000000736569;
        v10 = 0x726F737365636361;
        break;
      case 17:
        v9 = 0xE400000000000000;
        v10 = 1685024614;
        break;
      case 18:
        v9 = 0xEA0000000000746ELL;
        v10 = 0x6F726665726F7473;
        break;
      case 19:
        v12 = 1852270963;
        goto LABEL_30;
      case 20:
        v10 = 0xD000000000000011;
        v9 = 0x80000001D9CA2950;
        break;
      case 21:
        v12 = 1869903201;
LABEL_30:
        v10 = v12 | 0x626D795300000000;
        v9 = 0xEA00000000006C6FLL;
        break;
      case 22:
        v9 = 0xEF6C6F626D79536FLL;
        v10 = 0x676F4C646E617262;
        break;
      case 23:
        v9 = 0xE700000000000000;
        v10 = 0x65646F63726162;
        break;
      case 24:
        v9 = 0xE900000000000065;
        v10 = 0x727574706C756373;
        break;
      case 25:
        v9 = 0xE700000000000000;
        v10 = 0x656E696C796B73;
        break;
      case 26:
        v9 = 0xE800000000000000;
        v10 = 0x44327463656A626FLL;
        break;
      default:
        break;
    }

    if (*(v4 - 1) == v10 && *v4 == v9)
    {

      return (v7 != -1);
    }

    v14 = sub_1D9C7E7DC();

    v4 = v8;
    if (v14)
    {
      return (v7 != -1);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A63348(unsigned __int8 *a1, CGFloat *a2, unint64_t *a3, uint64_t a4)
{
  v54 = a2[1];
  v55 = *a2;
  v52 = a2[3];
  v53 = a2[2];
  v5 = *a3;
  v56 = *a1;
  v6 = sub_1D9A62FF0(&v56);
  result = 0;
  if ((v6 & 1) == 0 || v5 < 2)
  {
    return result;
  }

  v46 = *(a4 + 8);
  if (v46 > 0.0)
  {
    v8 = *(v5 + 16);
    if (v8)
    {
      v9 = v8 - 1;
      v10 = (v5 + 80);
      v11 = 0.0;
      while (1)
      {
        v50 = v11;
        v12 = *(v10 - 2);
        v48 = *(v10 - 3);
        v14 = *(v10 - 1);
        v13 = *v10;
        v57.origin.x = v55;
        v57.origin.y = v54;
        v57.size.width = v53;
        v57.size.height = v52;
        Width = CGRectGetWidth(v57);
        v58.origin.x = v55;
        v58.origin.y = v54;
        v58.size.width = v53;
        v58.size.height = v52;
        v16 = Width * CGRectGetHeight(v58);
        v59.origin.x = v48;
        v59.origin.y = v12;
        v59.size.width = v14;
        v59.size.height = v13;
        v17 = CGRectGetWidth(v59);
        v60.origin.x = v48;
        v60.origin.y = v12;
        v60.size.width = v14;
        v60.size.height = v13;
        Height = CGRectGetHeight(v60);
        if (v16 <= 0.0 || (v19 = v17 * Height, v19 <= 0.0) || (v61.origin.y = v54, v61.origin.x = v55, v61.size.height = v52, v61.size.width = v53, v73.origin.x = v48, v73.origin.y = v12, v73.size.width = v14, v73.size.height = v13, v62 = CGRectIntersection(v61, v73), x = v62.origin.x, y = v62.origin.y, v22 = v62.size.width, v23 = v62.size.height, CGRectIsNull(v62)))
        {
          v11 = v50;
          if (v50 < 0.0)
          {
            v11 = 0.0;
            if (!v9)
            {
              break;
            }

            goto LABEL_8;
          }
        }

        else
        {
          v63.origin.x = x;
          v63.origin.y = y;
          v63.size.width = v22;
          v63.size.height = v23;
          v24 = CGRectGetWidth(v63);
          v64.origin.x = x;
          v64.origin.y = y;
          v64.size.width = v22;
          v64.size.height = v23;
          v25 = v24 * CGRectGetHeight(v64);
          if (v19 >= v16)
          {
            v26 = v16;
          }

          else
          {
            v26 = v19;
          }

          v11 = v25 / v26;
          if (v50 >= v11)
          {
            v11 = v50;
          }
        }

        if (!v9)
        {
          if (v46 < v11)
          {
            return 1;
          }

          break;
        }

LABEL_8:
        --v9;
        v10 += 7;
      }
    }
  }

  v47 = *(a4 + 12);
  if (v47 <= 0.0)
  {
    return 0;
  }

  v27 = *(v5 + 16);
  if (!v27)
  {
    return 0;
  }

  v28 = v27 - 1;
  v29 = (v5 + 80);
  v49 = 0.0;
  while (1)
  {
    v30 = *(v29 - 2);
    v51 = *(v29 - 3);
    v31 = *(v29 - 1);
    v32 = *v29;
    v65.origin.x = v55;
    v65.origin.y = v54;
    v65.size.width = v53;
    v65.size.height = v52;
    v33 = CGRectGetWidth(v65);
    v66.origin.x = v55;
    v66.origin.y = v54;
    v66.size.width = v53;
    v66.size.height = v52;
    v34 = v33 * CGRectGetHeight(v66);
    v67.origin.x = v51;
    v67.origin.y = v30;
    v67.size.width = v31;
    v67.size.height = v32;
    v35 = CGRectGetWidth(v67);
    v68.origin.x = v51;
    v68.origin.y = v30;
    v68.size.width = v31;
    v68.size.height = v32;
    v36 = CGRectGetHeight(v68);
    if (v34 > 0.0)
    {
      v37 = v35 * v36;
      if (v35 * v36 > 0.0)
      {
        v69.origin.y = v54;
        v69.origin.x = v55;
        v69.size.height = v52;
        v69.size.width = v53;
        v74.origin.x = v51;
        v74.origin.y = v30;
        v74.size.width = v31;
        v74.size.height = v32;
        v70 = CGRectIntersection(v69, v74);
        v38 = v70.origin.x;
        v39 = v70.origin.y;
        v40 = v70.size.width;
        v41 = v70.size.height;
        if (!CGRectIsNull(v70))
        {
          break;
        }
      }
    }

    if (v49 < 0.0)
    {
      v49 = 0.0;
      if (!v28)
      {
        return 0;
      }
    }

    else if (!v28)
    {
      return v47 < v49;
    }

LABEL_25:
    --v28;
    v29 += 7;
  }

  v71.origin.x = v38;
  v71.origin.y = v39;
  v71.size.width = v40;
  v71.size.height = v41;
  v42 = CGRectGetWidth(v71);
  v72.origin.x = v38;
  v72.origin.y = v39;
  v72.size.width = v40;
  v72.size.height = v41;
  v43 = CGRectGetHeight(v72);
  v44 = v42 * v43 / (v34 + v37 - v42 * v43);
  v45 = v49;
  if (v49 < v44)
  {
    v45 = v44;
  }

  v49 = v45;
  if (v28)
  {
    goto LABEL_25;
  }

  return v47 < v49;
}

uint64_t sub_1D9A636BC(unsigned __int8 *a1, CGFloat *a2, uint64_t *a3, uint64_t a4)
{
  v55 = a2[1];
  v56 = *a2;
  v53 = a2[3];
  v54 = a2[2];
  v6 = *a3;
  v5 = a3[1];
  v57 = *a1;
  if ((sub_1D9A62FF0(&v57) & 1) == 0)
  {
    return 0;
  }

  if (v6 == 1 || v5 == 0)
  {
    return 0;
  }

  v47 = *(a4 + 16);
  if (v47 > 0.0)
  {
    v8 = *(v5 + 16);
    if (v8)
    {
      v9 = v8 - 1;
      v10 = (v5 + 80);
      v11 = 0.0;
      while (1)
      {
        v51 = v11;
        v12 = *(v10 - 2);
        v49 = *(v10 - 3);
        v14 = *(v10 - 1);
        v13 = *v10;
        v58.origin.x = v56;
        v58.origin.y = v55;
        v58.size.width = v54;
        v58.size.height = v53;
        Width = CGRectGetWidth(v58);
        v59.origin.x = v56;
        v59.origin.y = v55;
        v59.size.width = v54;
        v59.size.height = v53;
        v16 = Width * CGRectGetHeight(v59);
        v60.origin.x = v49;
        v60.origin.y = v12;
        v60.size.width = v14;
        v60.size.height = v13;
        v17 = CGRectGetWidth(v60);
        v61.origin.x = v49;
        v61.origin.y = v12;
        v61.size.width = v14;
        v61.size.height = v13;
        Height = CGRectGetHeight(v61);
        if (v16 <= 0.0 || (v19 = v17 * Height, v19 <= 0.0) || (v62.origin.y = v55, v62.origin.x = v56, v62.size.height = v53, v62.size.width = v54, v74.origin.x = v49, v74.origin.y = v12, v74.size.width = v14, v74.size.height = v13, v63 = CGRectIntersection(v62, v74), x = v63.origin.x, y = v63.origin.y, v22 = v63.size.width, v23 = v63.size.height, CGRectIsNull(v63)))
        {
          v11 = v51;
          if (v51 < 0.0)
          {
            v11 = 0.0;
            if (!v9)
            {
              break;
            }

            goto LABEL_11;
          }
        }

        else
        {
          v64.origin.x = x;
          v64.origin.y = y;
          v64.size.width = v22;
          v64.size.height = v23;
          v24 = CGRectGetWidth(v64);
          v65.origin.x = x;
          v65.origin.y = y;
          v65.size.width = v22;
          v65.size.height = v23;
          v25 = v24 * CGRectGetHeight(v65);
          if (v19 >= v16)
          {
            v26 = v16;
          }

          else
          {
            v26 = v19;
          }

          v11 = v25 / v26;
          if (v51 >= v11)
          {
            v11 = v51;
          }
        }

        if (!v9)
        {
          if (v47 < v11)
          {
            return 1;
          }

          break;
        }

LABEL_11:
        --v9;
        v10 += 7;
      }
    }
  }

  v48 = *(a4 + 20);
  if (v48 <= 0.0)
  {
    return 0;
  }

  v27 = *(v5 + 16);
  if (!v27)
  {
    return 0;
  }

  v28 = v27 - 1;
  v29 = (v5 + 80);
  v50 = 0.0;
  while (1)
  {
    v30 = *(v29 - 2);
    v52 = *(v29 - 3);
    v31 = *(v29 - 1);
    v32 = *v29;
    v66.origin.x = v56;
    v66.origin.y = v55;
    v66.size.width = v54;
    v66.size.height = v53;
    v33 = CGRectGetWidth(v66);
    v67.origin.x = v56;
    v67.origin.y = v55;
    v67.size.width = v54;
    v67.size.height = v53;
    v34 = v33 * CGRectGetHeight(v67);
    v68.origin.x = v52;
    v68.origin.y = v30;
    v68.size.width = v31;
    v68.size.height = v32;
    v35 = CGRectGetWidth(v68);
    v69.origin.x = v52;
    v69.origin.y = v30;
    v69.size.width = v31;
    v69.size.height = v32;
    v36 = CGRectGetHeight(v69);
    if (v34 > 0.0)
    {
      v37 = v35 * v36;
      if (v35 * v36 > 0.0)
      {
        v70.origin.y = v55;
        v70.origin.x = v56;
        v70.size.height = v53;
        v70.size.width = v54;
        v75.origin.x = v52;
        v75.origin.y = v30;
        v75.size.width = v31;
        v75.size.height = v32;
        v71 = CGRectIntersection(v70, v75);
        v38 = v71.origin.x;
        v39 = v71.origin.y;
        v40 = v71.size.width;
        v41 = v71.size.height;
        if (!CGRectIsNull(v71))
        {
          break;
        }
      }
    }

    if (v50 < 0.0)
    {
      v50 = 0.0;
      if (!v28)
      {
        return 0;
      }
    }

    else if (!v28)
    {
      return v48 < v50;
    }

LABEL_28:
    --v28;
    v29 += 7;
  }

  v72.origin.x = v38;
  v72.origin.y = v39;
  v72.size.width = v40;
  v72.size.height = v41;
  v42 = CGRectGetWidth(v72);
  v73.origin.x = v38;
  v73.origin.y = v39;
  v73.size.width = v40;
  v73.size.height = v41;
  v43 = CGRectGetHeight(v73);
  v44 = v42 * v43 / (v34 + v37 - v42 * v43);
  v45 = v50;
  if (v50 < v44)
  {
    v45 = v44;
  }

  v50 = v45;
  if (v28)
  {
    goto LABEL_28;
  }

  return v48 < v50;
}

void sub_1D9A63A2C(char *a1, uint64_t *a2, __int128 *a3, uint64_t a4)
{
  v8 = sub_1D9C7D8DC();
  v51 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  v14 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a4 + 40);
  v19 = *(v18 + 16);
  if (v19)
  {
    v50 = v8;
    v20 = 0;
    v21 = *a1;
    v23 = *a2;
    v22 = a2[1];
    v25 = a2[2];
    v24 = a2[3];
    while (v20 < *(v18 + 16))
    {
      sub_1D9A63ECC(v18 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v20, v17);
      v60[0] = v21;
      v56 = v23;
      v57 = v22;
      v58 = v25;
      v59 = v24;
      v26 = a3[1];
      v52 = *a3;
      v53 = v26;
      v27 = a3[3];
      v54 = a3[2];
      v55 = v27;
      if (sub_1D9A63348(v60, &v56, &v52, v17))
      {
        static Logger.argos.getter(v10);
        v30 = sub_1D9C7D8BC();
        v31 = sub_1D9C7E09C();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v56 = v33;
          *v32 = 136315394;
          *&v52 = v23;
          *(&v52 + 1) = v22;
          *&v53 = v25;
          *(&v53 + 1) = v24;
          v34 = NormalizedRect.loggingDescription.getter();
          v36 = sub_1D9A0E224(v34, v35, &v56);

          *(v32 + 4) = v36;
          *(v32 + 12) = 2080;
          v37 = sub_1D9A15C94(v21);
          v39 = sub_1D9A0E224(v37, v38, &v56);

          *(v32 + 14) = v39;
          _os_log_impl(&dword_1D9962000, v30, v31, "%s drops %s due to pets/animals overlaps with human face.", v32, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA7405F0](v33, -1, -1);
          MEMORY[0x1DA7405F0](v32, -1, -1);
        }

        (*(v51 + 8))(v10, v50);
        goto LABEL_14;
      }

      v60[0] = v21;
      v56 = v23;
      v57 = v22;
      v58 = v25;
      v59 = v24;
      v28 = a3[1];
      v52 = *a3;
      v53 = v28;
      v29 = a3[3];
      v54 = a3[2];
      v55 = v29;
      if (sub_1D9A636BC(v60, &v56, &v52, v17))
      {
        static Logger.argos.getter(v13);
        v40 = sub_1D9C7D8BC();
        v41 = sub_1D9C7E09C();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v56 = v43;
          *v42 = 136315394;
          *&v52 = v23;
          *(&v52 + 1) = v22;
          *&v53 = v25;
          *(&v53 + 1) = v24;
          v44 = NormalizedRect.loggingDescription.getter();
          v46 = sub_1D9A0E224(v44, v45, &v56);

          *(v42 + 4) = v46;
          *(v42 + 12) = 2080;
          v47 = sub_1D9A15C94(v21);
          v49 = sub_1D9A0E224(v47, v48, &v56);

          *(v42 + 14) = v49;
          _os_log_impl(&dword_1D9962000, v40, v41, "%s drops %s due to pets/animals overlaps with human body.", v42, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1DA7405F0](v43, -1, -1);
          MEMORY[0x1DA7405F0](v42, -1, -1);
        }

        (*(v51 + 8))(v13, v50);
LABEL_14:
        sub_1D9A63F30(v17);
        return;
      }

      ++v20;
      sub_1D9A63F30(v17);
      if (v19 == v20)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1D9A63ECC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A63F30(uint64_t a1)
{
  v2 = type metadata accessor for Argos_Protos_Queryflow_SafetyConfig.SafeRegionConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9A63F8C(char *a1, CGFloat *a2, unint64_t *a3, uint64_t a4)
{
  v8 = sub_1D9C7D8DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v61 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v61 - v14;
  if (*a4 != 1)
  {
    return 0;
  }

  v62 = v13;
  v16 = *a1;
  v18 = *a2;
  v17 = a2[1];
  v20 = a2[2];
  v19 = a2[3];
  v21 = *a3;
  v22 = a3[1];
  v23 = *(a4 + 8);
  v63 = sub_1D9A15C94(v16);
  v64 = v24;
  MEMORY[0x1EEE9AC00](v63);
  *(&v61 - 2) = &v63;
  LOBYTE(v23) = sub_1D9BC1698(sub_1D99A40D8, (&v61 - 4), v23);

  if ((v23 & 1) == 0)
  {
    return 0;
  }

  v68.origin.x = v18;
  v68.origin.y = v17;
  v68.size.width = v20;
  v68.size.height = v19;
  MidX = CGRectGetMidX(v68);
  v69.origin.x = v18;
  v69.origin.y = v17;
  v69.size.width = v20;
  v69.size.height = v19;
  MidY = CGRectGetMidY(v69);
  v27 = *(a4 + 16);
  v28 = (v27 * 0.5);
  v29 = MidX - v28;
  v30 = MidY - v28;
  v31 = v27;
  if (v21 == 1 || !v22)
  {

    v22 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  v33 = v22 + 80;
  v34 = -*(v22 + 16);
  v35 = -1;
  while (1)
  {
    if (v34 + v35 == -1)
    {

      if (v21 >= 2)
      {
      }

      else
      {

        v21 = MEMORY[0x1E69E7CC0];
      }

      v47 = v21 + 80;
      v48 = -*(v21 + 16);
      v49 = -1;
      do
      {
        if (v48 + v49 == -1)
        {

          return 0;
        }

        if (++v49 >= *(v21 + 16))
        {
          goto LABEL_28;
        }

        v50 = v47 + 56;
        v71.origin.x = v29;
        v71.origin.y = v30;
        v71.size.width = v31;
        v71.size.height = v31;
        result = CGRectIntersectsRect(*(v47 - 24), v71);
        v47 = v50;
      }

      while (!result);

      static Logger.argos.getter(v11);
      v51 = sub_1D9C7D8BC();
      v52 = sub_1D9C7E09C();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v67[0] = v54;
        *v53 = 136315394;
        v63 = *&v18;
        v64 = v17;
        v65 = v20;
        v66 = v19;
        v55 = NormalizedRect.loggingDescription.getter();
        v57 = sub_1D9A0E224(v55, v56, v67);

        *(v53 + 4) = v57;
        *(v53 + 12) = 2080;
        v58 = sub_1D9A15C94(v16);
        v60 = sub_1D9A0E224(v58, v59, v67);

        *(v53 + 14) = v60;
        _os_log_impl(&dword_1D9962000, v51, v52, "Change to corner glyph because face overlap: %s - %s", v53, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v54, -1, -1);
        MEMORY[0x1DA7405F0](v53, -1, -1);
      }

      (*(v9 + 8))(v11, v62);
      return 1;
    }

    if (++v35 >= *(v22 + 16))
    {
      break;
    }

    v36 = v33 + 56;
    v70.origin.x = v29;
    v70.origin.y = v30;
    v70.size.width = v31;
    v70.size.height = v31;
    result = CGRectIntersectsRect(*(v33 - 24), v70);
    v33 = v36;
    if (result)
    {

      static Logger.argos.getter(v15);
      v37 = sub_1D9C7D8BC();
      v38 = sub_1D9C7E09C();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v67[0] = v40;
        *v39 = 136315394;
        v63 = *&v18;
        v64 = v17;
        v65 = v20;
        v66 = v19;
        v41 = NormalizedRect.loggingDescription.getter();
        v43 = sub_1D9A0E224(v41, v42, v67);

        *(v39 + 4) = v43;
        *(v39 + 12) = 2080;
        v44 = sub_1D9A15C94(v16);
        v46 = sub_1D9A0E224(v44, v45, v67);

        *(v39 + 14) = v46;
        _os_log_impl(&dword_1D9962000, v37, v38, "Change to corner glyph because human overlap: %s - %s", v39, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA7405F0](v40, -1, -1);
        MEMORY[0x1DA7405F0](v39, -1, -1);
      }

      (*(v9 + 8))(v15, v62);
      return 1;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

__n128 S2LatLngRect.lat.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

__n128 S2LatLngRect.lng.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  *a1 = result;
  return result;
}

double S2LatLngRect.latLo.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double S2LatLngRect.latHi.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 8);
  *a1 = result;
  return result;
}

double S2LatLngRect.lngLo.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 16);
  *a1 = result;
  return result;
}

double S2LatLngRect.lngHi.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = result;
  return result;
}

double S2LatLngRect.lo.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

double S2LatLngRect.hi.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 8);
  v3 = *(v1 + 24);
  *a1 = result;
  *(a1 + 8) = v3;
  return result;
}

VisualLookUp::S2LatLngRect __swiftcall S2LatLngRect.init(lo:hi:)(VisualLookUp::S2LatLng lo, VisualLookUp::S2LatLng hi)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *v3;
  v8 = v3[1];
  if (v8 == 3.14159265)
  {
    v9 = v2[1];
  }

  else
  {
    v9 = 3.14159265;
  }

  if (v6 != -3.14159265)
  {
    v9 = v2[1];
  }

  if (v6 == 3.14159265)
  {
    v10 = v3[1];
  }

  else
  {
    v10 = 3.14159265;
  }

  if (v8 != -3.14159265)
  {
    v10 = v3[1];
  }

  *v4 = v5;
  v4[1] = v7;
  v4[2] = v9;
  v4[3] = v10;
  result.lng.hi = v8;
  result.lng.lo = v7;
  result.lat.hi = v10;
  result.lat.lo = v5;
  return result;
}

VisualLookUp::S2LatLngRect __swiftcall S2LatLngRect.init(lat:lng:)(VisualLookUp::R1Interval lat, VisualLookUp::S1Interval lng)
{
  v5 = *v2;
  v6 = *v3;
  *v4 = *v2;
  v4[1] = v6;
  result.lng.hi = lng.hi;
  result.lng.lo = lng.lo;
  result.lat.hi = *&v6;
  result.lat.lo = *&v5;
  return result;
}

__n128 static S2LatLngRect.empty.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_1ECB50B20 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = xmmword_1ECB52C88;
  if (qword_1ECB50AC8 != -1)
  {
    v4 = a1;
    v5 = xmmword_1ECB52C88;
    swift_once();
    v1 = v5;
    a1 = v4;
  }

  result = xmmword_1ECB528D0;
  *a1 = v1;
  *(a1 + 16) = result;
  return result;
}

double static S2LatLngRect.full.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ECB50AD0 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  result = -1.57079633;
  v2 = xmmword_1ECB528E0;
  *a1 = xmmword_1D9C8C730;
  a1[1] = v2;
  return result;
}

double static S2LatLngRect.fullLat.getter@<D0>(_OWORD *a1@<X8>)
{
  result = -1.57079633;
  *a1 = xmmword_1D9C8C730;
  return result;
}

double static S2LatLngRect.fullLng.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ECB50AD0 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  result = *&xmmword_1ECB528E0;
  *a1 = xmmword_1ECB528E0;
  return result;
}

uint64_t S2LatLngRect.isValid.getter()
{
  v1 = v0[1];
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vcgeq_f64(vdupq_n_s64(0x3FF921FB54442D18uLL), vabsq_f64(*v0)), vcgeq_f64(vdupq_n_s64(0x400921FB54442D18uLL), vabsq_f64(v1)))))))
  {
    return 0;
  }

  if (v1.f64[0] == -3.14159265 && v1.f64[1] != 3.14159265)
  {
    return 0;
  }

  if (v1.f64[1] != -3.14159265 || v1.f64[0] == 3.14159265)
  {
    return (v0->f64[1] < v0->f64[0]) ^ (v1.f64[0] - v1.f64[1] != 6.28318531);
  }

  return 0;
}

BOOL S2LatLngRect.isFull.getter()
{
  result = 0;
  if (*v0 == -1.57079633 && v0[1] == 1.57079633)
  {
    return v0[3] - v0[2] == 6.28318531;
  }

  return result;
}

VisualLookUp::S2LatLng __swiftcall S2LatLngRect.getVertex(k:)(Swift::Int k)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[3];
  if (k == 1)
  {
    v6 = *v2;
  }

  else
  {
    v6 = v2[1];
  }

  if (k == 1)
  {
    v7 = v2[3];
  }

  else
  {
    v7 = v2[2];
  }

  if (k != 2)
  {
    v4 = v6;
    v5 = v7;
  }

  if (k)
  {
    v3 = v4;
    v8 = v5;
  }

  else
  {
    v8 = v2[2];
  }

  *v1 = v3;
  v1[1] = v8;
  result.lng = *&v8;
  result.lat = *&v3;
  return result;
}

double S2LatLngRect.center.getter@<D0>(double *a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = (v2 + v3) * 0.5;
  if (v3 < v2)
  {
    if (v4 <= 0.0)
    {
      v5 = 3.14159265;
    }

    else
    {
      v5 = -3.14159265;
    }

    v4 = v4 + v5;
  }

  result = (*v1 + v1[1]) * 0.5;
  *a1 = result;
  a1[1] = v4;
  return result;
}

VisualLookUp::S1Angle __swiftcall S2LatLngRect.getDistance(to:)(VisualLookUp::S2LatLng to)
{
  cosval = *v4;
  v8 = *(v4 + 8);
  if (v8 < *v4)
  {
    __break(1u);
    goto LABEL_25;
  }

  v3 = v2;
  v5 = *v1;
  if (fabs(*v1) > 1.57079633)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = v1[1];
  if (fabs(v6) > 3.14159265)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v7 = *(v4 + 16);
  v30.i64[0] = *(v4 + 24);
  if (S1Interval.contains(point:)(v6))
  {
    result.radians = v5 - v8;
    if (v5 - v8 <= cosval - v5)
    {
      result.radians = cosval - v5;
    }

    if (result.radians < 0.0)
    {
      result.radians = 0.0;
    }

    goto LABEL_23;
  }

  if (v7 == *v30.i64 && qword_1ECB50AD0 != -1)
  {
    goto LABEL_30;
  }

  while (1)
  {
    if (S1Interval.contains(point:)(v6))
    {
      v7 = *v30.i64;
    }

    v11 = __sincos_stret(cosval);
    cosval = v11.__cosval;
    v12 = __sincos_stret(v7);
    v13 = __sincos_stret(v8);
    v8 = v13.__cosval;
    v14 = remainder(v7 + -1.57079633, 6.28318531);
    v15 = __sincos_stret(v14);
    v7 = v15.__cosval;
    v17 = __sincos_stret(v5);
    *v16.i64 = v17.__sinval;
    v30 = v16;
    v5 = v17.__cosval;
    v18 = __sincos_stret(v6);
    *v19.i64 = v17.__cosval * v18.__cosval;
    v20 = v17.__cosval * v18.__sinval;
    if (fabs(*v30.i64 * *v30.i64 + *v19.i64 * *v19.i64 + v20 * v20 + -1.0) > 1.0e-15)
    {
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v21 = v11.__cosval * v12.__cosval;
    v22 = v11.__cosval * v12.__sinval;
    if (fabs(v11.__sinval * v11.__sinval + v21 * v21 + v22 * v22 + -1.0) > 1.0e-15)
    {
      goto LABEL_28;
    }

    v23 = v13.__cosval * v12.__cosval;
    v24 = v13.__cosval * v12.__sinval;
    if (fabs(v13.__sinval * v13.__sinval + v23 * v23 + v24 * v24 + -1.0) <= 1.0e-15)
    {
      break;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    swift_once();
  }

  if (v11.__sinval * (*v19.i64 * v15.__sinval - v20 * v15.__cosval) + v21 * (v20 * 0.0 - *v30.i64 * v15.__sinval) + v22 * (*v30.i64 * v15.__cosval - *v19.i64 * 0.0) <= 0.0 || v13.__sinval * (v20 * v15.__cosval - *v19.i64 * v15.__sinval) + v23 * (*v30.i64 * v15.__sinval - v20 * 0.0) + v24 * (*v19.i64 * 0.0 - *v30.i64 * v15.__cosval) <= 0.0)
  {
    v27 = (*v30.i64 - v11.__sinval) * (*v30.i64 - v11.__sinval) + (*v19.i64 - v21) * (*v19.i64 - v21) + (v20 - v22) * (v20 - v22);
    v28 = (*v30.i64 - v13.__sinval) * (*v30.i64 - v13.__sinval) + (*v19.i64 - v23) * (*v19.i64 - v23) + (v20 - v24) * (v20 - v24);
    if (v28 >= v27)
    {
      v28 = v27;
    }

    v29 = asin(fmin(sqrt(v28) * 0.5, 1.0));
    result.radians = v29 + v29;
  }

  else
  {
    v25 = *v19.i64 * v15.__cosval + v20 * v15.__sinval;
    v19.i64[0] = 0;
    v26.f64[0] = NAN;
    v26.f64[1] = NAN;
    result.radians = asin(fmin(fabs(*vbslq_s8(vnegq_f64(v26), v19, v30).i64 + v25) / sqrt(v15.__cosval * v15.__cosval + v15.__sinval * v15.__sinval), 1.0));
  }

LABEL_23:
  *v3 = result.radians;
  return result;
}

VisualLookUp::S1Angle __swiftcall S2LatLngRect.getDistance(other:)(VisualLookUp::S2LatLngRect other)
{
  v4 = *v1;
  v5 = v1[1];
  v6 = *v3;
  v7 = v3[1];
  if (v5 < *v1 || v7 < v6)
  {
    __break(1u);
    goto LABEL_143;
  }

  v9 = v2;
  v10 = v1[2];
  v11 = v1[3];
  v12 = v3[2];
  v13 = v3[3];
  if (!S1Interval.intersects(with:)(other.lat))
  {
    v15 = -3.14159265;
    v72 = v5;
    v68 = v4;
    if (v12 != -3.14159265 || (v16 = 3.14159265, v11 == 3.14159265))
    {
      v15 = -3.14159265;
      if (v11 != -3.14159265 || (v17 = 3.14159265, v12 == 3.14159265))
      {
        *&v18 = -3.14159265;
        v17 = v11;
        v16 = v12;
        if (v13 == -3.14159265)
        {
          v15 = 3.14159265;
          v17 = v11;
          v16 = v12;
          if (v10 != 3.14159265)
          {
            v17 = v11;
            v16 = v12;
            if (v10 != -3.14159265)
            {
              goto LABEL_58;
            }

            v21 = v11 - v12;
LABEL_91:
            v19 = -3.14159265;
            if (v21 >= 0.0)
            {
              goto LABEL_95;
            }

            goto LABEL_92;
          }
        }
      }

      else
      {
        v16 = v12;
        if (v13 == -3.14159265)
        {
          v17 = 3.14159265;
          v16 = v12;
          if (v10 == 3.14159265)
          {
            goto LABEL_58;
          }

          v21 = 3.14159265 - v12;
          v19 = -3.14159265;
          if (v10 != -3.14159265)
          {
            if (v21 < 0.0)
            {
              v21 = v21 + 6.28318531;
              *&v18 = -3.14159265;
              v25 = v10 + -3.14159265;
              if (v21 <= 0.0)
              {
                if (v25 >= 0.0)
                {
                  v19 = v12;
                  if (v25 > -1.0)
                  {
                    goto LABEL_95;
                  }

                  goto LABEL_93;
                }

                if (v25 + 6.28318531 > 0.0 && v25 + 6.28318531 > -1.0)
                {
                  goto LABEL_75;
                }
              }

              else
              {
                if (v25 >= 0.0)
                {
                  goto LABEL_74;
                }

                v25 = v25 + 6.28318531;
                if (v25 > 0.0)
                {
                  goto LABEL_74;
                }
              }

              v19 = -3.14159265;
              *&v18 = v10;
              goto LABEL_95;
            }

            v25 = v10 + -3.14159265;
            if (v10 + -3.14159265 < 0.0)
            {
              v25 = v25 + 6.28318531;
              if (v25 <= 0.0)
              {
                *&v18 = v10;
                goto LABEL_95;
              }
            }

LABEL_74:
            *&v18 = v10;
            v19 = v13;
            if (v21 >= v25)
            {
              goto LABEL_95;
            }

            goto LABEL_75;
          }

          if (v21 >= 0.0)
          {
            *&v18 = -3.14159265;
            v19 = -3.14159265;
            goto LABEL_95;
          }

LABEL_92:
          *&v18 = v11;
          v19 = v12;
          if (v21 + 6.28318531 <= 0.0)
          {
            goto LABEL_95;
          }

LABEL_93:
          *&v18 = v10;
          goto LABEL_94;
        }
      }
    }

    else
    {
      if (v11 == -3.14159265)
      {
        v17 = 3.14159265;
        *&v18 = -3.14159265;
        if (v13 == -3.14159265)
        {
          v16 = 3.14159265;
          if (v10 != 3.14159265)
          {
            v19 = -3.14159265;
            if (v10 != -3.14159265)
            {
              v19 = -3.14159265;
              v20 = v10 + -3.14159265 <= 0.0;
              if (v10 + -3.14159265 < 0.0)
              {
                v20 = v10 + -3.14159265 + 6.28318531 <= 0.0;
              }

              *&v18 = v10;
              if (!v20)
              {
                goto LABEL_75;
              }
            }

LABEL_95:
            v28 = *&v18;
            v29 = __sincos_stret(v6);
            v30 = __sincos_stret(v19);
            v70 = v29.__cosval * v30.__sinval;
            v71 = v29.__cosval * v30.__cosval;
            v31 = __sincos_stret(v7);
            v32 = remainder(v19 + -1.57079633, 6.28318531);
            v33 = __sincos_stret(v32);
            v34 = __sincos_stret(v68);
            v35 = __sincos_stret(v28);
            v36 = __sincos_stret(v72);
            v37 = remainder(v28 + -1.57079633, 6.28318531);
            v38 = __sincos_stret(v37);
            other.lat.lo = -1.0;
            if (fabs(v29.__sinval * v29.__sinval + v71 * v71 + v70 * v70 + -1.0) <= 1.0e-15)
            {
              v39 = v34.__cosval * v35.__cosval;
              v40 = v34.__cosval * v35.__sinval;
              other.lat.lo = fabs(v34.__sinval * v34.__sinval + v39 * v39 + v40 * v40 + -1.0);
              if (other.lat.lo <= 1.0e-15)
              {
                v41 = v36.__cosval * v35.__cosval;
                v42 = v36.__cosval * v35.__sinval;
                other.lat.lo = fabs(v36.__sinval * v36.__sinval + v41 * v41 + v42 * v42 + -1.0);
                if (other.lat.lo <= 1.0e-15)
                {
                  v43 = v31.__cosval * v30.__cosval;
                  v44 = v31.__cosval * v30.__sinval;
                  v69 = v36.__cosval * v35.__sinval;
                  if (v34.__sinval * (v71 * v38.__sinval - v70 * v38.__cosval) + v39 * (v70 * 0.0 - v29.__sinval * v38.__sinval) + v40 * (v29.__sinval * v38.__cosval - v71 * 0.0) <= 0.0 || v36.__sinval * (v70 * v38.__cosval - v71 * v38.__sinval) + v41 * (v29.__sinval * v38.__sinval - v70 * 0.0) + v42 * (v71 * 0.0 - v29.__sinval * v38.__cosval) <= 0.0)
                  {
                    sinval = v38.__sinval;
                    v46 = (v29.__sinval - v34.__sinval) * (v29.__sinval - v34.__sinval) + (v71 - v39) * (v71 - v39) + (v70 - v40) * (v70 - v40);
                    v47 = v29.__sinval - v36.__sinval;
                    if (v47 * v47 + (v71 - v41) * (v71 - v41) + (v70 - v42) * (v70 - v42) < v46)
                    {
                      v46 = v47 * v47 + (v71 - v41) * (v71 - v41) + (v70 - v42) * (v70 - v42);
                    }

                    v48 = asin(fmin(sqrt(v46) * 0.5, 1.0));
                    other.lat.lo = v48 + v48;
                  }

                  else
                  {
                    sinval = v38.__sinval;
                    other.lat.lo = asin(fmin(fabs(v29.__sinval * 0.0 + v71 * v38.__cosval + v70 * v38.__sinval) / sqrt(v38.__cosval * v38.__cosval + v38.__sinval * v38.__sinval), 1.0));
                  }

                  if (fabs(v31.__sinval * v31.__sinval + v43 * v43 + v44 * v44 + -1.0) <= 1.0e-15)
                  {
                    lo = other.lat.lo;
                    if (v34.__sinval * (v43 * sinval - v44 * v38.__cosval) + v39 * (v44 * 0.0 - v31.__sinval * sinval) + v40 * (v31.__sinval * v38.__cosval - v43 * 0.0) <= 0.0 || v36.__sinval * (v44 * v38.__cosval - v43 * sinval) + v41 * (v31.__sinval * sinval - v44 * 0.0) + v69 * (v43 * 0.0 - v31.__sinval * v38.__cosval) <= 0.0)
                    {
                      v51 = (v31.__sinval - v34.__sinval) * (v31.__sinval - v34.__sinval) + (v43 - v39) * (v43 - v39) + (v44 - v40) * (v44 - v40);
                      v52 = v31.__sinval - v36.__sinval;
                      if (v52 * v52 + (v43 - v41) * (v43 - v41) + (v44 - v69) * (v44 - v69) < v51)
                      {
                        v51 = v52 * v52 + (v43 - v41) * (v43 - v41) + (v44 - v69) * (v44 - v69);
                      }

                      v49 = v34.__sinval;
                      v53 = asin(fmin(sqrt(v51) * 0.5, 1.0));
                      v50 = v53 + v53;
                    }

                    else
                    {
                      v49 = v34.__sinval;
                      v50 = asin(fmin(fabs(v31.__sinval * 0.0 + v43 * v38.__cosval + v44 * sinval) / sqrt(v38.__cosval * v38.__cosval + sinval * sinval), 1.0));
                    }

                    if (v29.__sinval * (v39 * v33.__sinval - v40 * v33.__cosval) + v71 * (v40 * 0.0 - v49 * v33.__sinval) + v70 * (v49 * v33.__cosval - v39 * 0.0) <= 0.0 || v31.__sinval * (v40 * v33.__cosval - v39 * v33.__sinval) + v43 * (v49 * v33.__sinval - v40 * 0.0) + v44 * (v39 * 0.0 - v49 * v33.__cosval) <= 0.0)
                    {
                      v59 = (v49 - v29.__sinval) * (v49 - v29.__sinval) + (v39 - v71) * (v39 - v71) + (v40 - v70) * (v40 - v70);
                      v60 = v49 - v31.__sinval;
                      if (v60 * v60 + (v39 - v43) * (v39 - v43) + (v40 - v44) * (v40 - v44) < v59)
                      {
                        v59 = v60 * v60 + (v39 - v43) * (v39 - v43) + (v40 - v44) * (v40 - v44);
                      }

                      v55 = v29.__sinval;
                      v56 = v29.__cosval * v30.__cosval;
                      v57 = v29.__cosval * v30.__sinval;
                      v61 = asin(fmin(sqrt(v59) * 0.5, 1.0));
                      v58 = v61 + v61;
                    }

                    else
                    {
                      v54 = fmin(fabs(v49 * 0.0 + v39 * v33.__cosval + v40 * v33.__sinval) / sqrt(v33.__cosval * v33.__cosval + v33.__sinval * v33.__sinval), 1.0);
                      v55 = v29.__sinval;
                      v56 = v29.__cosval * v30.__cosval;
                      v57 = v29.__cosval * v30.__sinval;
                      v58 = asin(v54);
                    }

                    if (v55 * (v41 * v33.__sinval - v69 * v33.__cosval) + v56 * (v69 * 0.0 - v36.__sinval * v33.__sinval) + v57 * (v36.__sinval * v33.__cosval - v41 * 0.0) <= 0.0 || v31.__sinval * (v69 * v33.__cosval - v41 * v33.__sinval) + v43 * (v36.__sinval * v33.__sinval - v69 * 0.0) + v44 * (v41 * 0.0 - v36.__sinval * v33.__cosval) <= 0.0)
                    {
                      v62 = (v36.__sinval - v55) * (v36.__sinval - v55) + (v41 - v56) * (v41 - v56) + (v69 - v57) * (v69 - v57);
                      v63 = v36.__sinval - v31.__sinval;
                      if (v63 * v63 + (v41 - v43) * (v41 - v43) + (v69 - v44) * (v69 - v44) < v62)
                      {
                        v62 = v63 * v63 + (v41 - v43) * (v41 - v43) + (v69 - v44) * (v69 - v44);
                      }

                      v64 = asin(fmin(sqrt(v62) * 0.5, 1.0));
                      other.lat.lo = v64 + v64;
                    }

                    else
                    {
                      other.lat.lo = asin(fmin(fabs(v36.__sinval * 0.0 + v41 * v33.__cosval + v69 * v33.__sinval) / sqrt(v33.__cosval * v33.__cosval + v33.__sinval * v33.__sinval), 1.0));
                    }

                    if (other.lat.lo >= v58)
                    {
                      other.lat.lo = v58;
                    }

                    if (other.lat.lo >= v50)
                    {
                      other.lat.lo = v50;
                    }

                    if (other.lat.lo >= lo)
                    {
                      other.lat.lo = lo;
                    }

                    goto LABEL_129;
                  }

LABEL_146:
                  __break(1u);
                  return *&other.lat.lo;
                }

LABEL_145:
                __break(1u);
                goto LABEL_146;
              }

LABEL_144:
              __break(1u);
              goto LABEL_145;
            }

LABEL_143:
            __break(1u);
            goto LABEL_144;
          }
        }

        else
        {
          v16 = 3.14159265;
        }

        goto LABEL_51;
      }

      v17 = v11;
      if (v13 == -3.14159265)
      {
        v16 = 3.14159265;
        v17 = v11;
        if (v10 == 3.14159265)
        {
          goto LABEL_58;
        }

        *&v18 = -3.14159265;
        if (v10 != -3.14159265)
        {
          v15 = 3.14159265;
          v17 = v11;
          v16 = 3.14159265;
          goto LABEL_58;
        }

        v21 = v11 + -3.14159265;
        goto LABEL_91;
      }
    }

LABEL_51:
    *&v18 = -3.14159265;
    if (v10 == -3.14159265 && v13 != 3.14159265)
    {
      v21 = v17 - v16;
      if (v21 >= 0.0)
      {
        v25 = 3.14159265 - v13;
        if (3.14159265 - v13 >= 0.0)
        {
          goto LABEL_74;
        }

LABEL_73:
        v25 = v25 + 6.28318531;
        if (v25 > 0.0)
        {
          goto LABEL_74;
        }

LABEL_94:
        v19 = v13;
        goto LABEL_95;
      }

      v21 = v21 + 6.28318531;
      v25 = 3.14159265 - v13;
      if (v21 > 0.0)
      {
        if (v25 >= 0.0)
        {
          goto LABEL_74;
        }

        goto LABEL_73;
      }

      if (v25 < 0.0)
      {
        v27 = v25 + 6.28318531 <= 0.0 || v25 + 6.28318531 <= -1.0;
        v19 = v13;
        if (v27)
        {
          goto LABEL_95;
        }

        goto LABEL_75;
      }

LABEL_83:
      *&v18 = v11;
      v19 = v12;
      if (v25 > -1.0)
      {
        goto LABEL_95;
      }

      goto LABEL_93;
    }

    v15 = v13;
LABEL_58:
    v21 = v17 - v16;
    if (v21 >= 0.0)
    {
      v25 = v10 - v15;
      if (v25 >= 0.0)
      {
        goto LABEL_74;
      }
    }

    else
    {
      v21 = v21 + 6.28318531;
      v25 = v10 - v15;
      if (v21 <= 0.0)
      {
        if (v25 < 0.0)
        {
          v26 = v25 + 6.28318531 <= 0.0 || v25 + 6.28318531 <= -1.0;
          *&v18 = v10;
          v19 = v13;
          if (v26)
          {
            goto LABEL_95;
          }

LABEL_75:
          *&v18 = v11;
          v19 = v12;
          goto LABEL_95;
        }

        goto LABEL_83;
      }

      if (v25 >= 0.0)
      {
        goto LABEL_74;
      }
    }

    v25 = v25 + 6.28318531;
    if (v25 > 0.0)
    {
      goto LABEL_74;
    }

    goto LABEL_93;
  }

  other.lat.lo = 0.0;
  if (v6 <= v4)
  {
    if (v4 <= v5 && v4 <= v7)
    {
      goto LABEL_129;
    }
  }

  else if (v6 <= v5 && v6 <= v7)
  {
    goto LABEL_129;
  }

  if (v5 >= v6)
  {
    v23 = v7;
  }

  else
  {
    v23 = v5;
  }

  if (v5 >= v6)
  {
    v24 = v4;
  }

  else
  {
    v24 = v6;
  }

  other.lat.lo = v24 - v23;
LABEL_129:
  *v9 = other.lat.lo;
  return *&other.lat.lo;
}

double S2LatLngRect.size.getter@<D0>(double *a1@<X8>)
{
  v2 = v1[3] - v1[2];
  v3 = v2 + 6.28318531;
  if (v2 + 6.28318531 <= 0.0)
  {
    v3 = -1.0;
  }

  if (v2 < 0.0)
  {
    v2 = v3;
  }

  result = v1[1] - *v1;
  *a1 = result;
  a1[1] = v2;
  return result;
}

Swift::Bool __swiftcall S2LatLngRect.interiorContains(point:)(VisualLookUp::S2Point point)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *v2;
  v6 = v2[1];
  v7 = atan2(v1[2], sqrt(v3 * v3 + v4 * v4));
  if (v5 < v7 && v7 < v6)
  {
    v10 = atan2(v4, v3);
    return S1Interval.interiorContains(point:)(v10);
  }

  else
  {
    return 0;
  }
}

Swift::Bool __swiftcall S2LatLngRect.contains(other:)(VisualLookUp::S2LatLngRect other)
{
  v3 = *(v1 + 8);
  v5 = (v3 < *v1 || (*v2 <= *v1 ? (v4 = v3 > *(v2 + 8)) : (v4 = 1), !v4)) && S1Interval.contains(interval:)(__PAIR128__(*(v2 + 16), *(v1 + 16)));
  return v5;
}

Swift::Bool __swiftcall S2LatLngRect.interiorContains(other:)(VisualLookUp::S2LatLngRect other)
{
  v3 = *(v1 + 8);
  v5 = (v3 < *v1 || (*v2 < *v1 ? (v4 = v3 < *(v2 + 8)) : (v4 = 0), v4)) && S1Interval.interiorContains(interval:)(__PAIR128__(*(v2 + 16), *(v1 + 16)));
  return v5;
}

Swift::Bool __swiftcall S2LatLngRect.intersects(with:)(VisualLookUp::S2LatLngRect with)
{
  v4 = *v1;
  v3 = *(v1 + 8);
  v6 = *v2;
  v5 = *(v2 + 8);
  if (*v2 <= *v1)
  {
    if (v4 <= v5 && v4 <= v3)
    {
      return S1Interval.intersects(with:)(__PAIR128__(*(v2 + 16), *(v1 + 16)));
    }

    return 0;
  }

  if (v6 > v3 || v6 > v5)
  {
    return 0;
  }

  return S1Interval.intersects(with:)(__PAIR128__(*(v2 + 16), *(v1 + 16)));
}

void S2LatLngRect.intersects(with:)(uint64_t a1)
{
  v3 = *v1;
  v2 = v1[1];
  if (v2 < *v1)
  {
    return;
  }

  v4 = *a1;
  v97 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a1 + 10);
  v7 = *(a1 + 16);
  v8 = v1[2];
  v9 = v1[3];
  *&v99 = *a1;
  S2CellId.rawPoint.getter(&v106);
  v10 = sqrt(v106 * v106 + v107 * v107 + v108 * v108);
  if (v10 != 0.0)
  {
    v10 = 1.0 / v10;
  }

  v11 = v106 * v10;
  v12 = v107 * v10;
  v13 = atan2(v108 * v10, sqrt(v11 * v11 + v12 * v12));
  if (v3 <= v13 && v13 <= v2)
  {
    v15 = atan2(v12, v11);
    v106 = v8;
    v107 = v9;
    if (S1Interval.contains(point:)(v15))
    {
      return;
    }
  }

  v106 = v4;
  LOBYTE(v107) = v97;
  BYTE1(v107) = v5;
  BYTE2(v107) = v6;
  v108 = v7;
  v16 = (v8 + v9) * 0.5;
  if (v9 < v8)
  {
    if (v16 <= 0.0)
    {
      v17 = 3.14159265;
    }

    else
    {
      v17 = -3.14159265;
    }

    v16 = v16 + v17;
  }

  v18 = __sincos_stret((v3 + v2) * 0.5);
  v19 = __sincos_stret(v16);
  v110.y = v18.__cosval * v19.__cosval;
  v110.x = v18.__cosval * v19.__sinval;
  *&v99 = v18.__cosval * v19.__cosval;
  *(&v99 + 1) = v18.__cosval * v19.__sinval;
  *&v100 = v18.__sinval;
  if (S2Cell.contains(point:)(v110))
  {
    return;
  }

  v106 = v3;
  v107 = v2;
  v108 = v8;
  v109 = v9;
  v101 = v4;
  v102 = v97;
  v103 = v5;
  v104 = v6;
  v105 = v7;
  S2Cell.rectBound.getter(&v99);
  *&v111.lat.lo = v99;
  *&v111.lat.hi = v100;
  v98[0] = v99;
  v98[1] = v100;
  if (!S2LatLngRect.intersects(with:)(v111))
  {
    return;
  }

  v20 = 0;
  v21 = v8 > 3.14159265;
  if (v9 >= 3.14159265)
  {
    v21 = 0;
  }

  v93 = v8 - v9;
  v22 = MEMORY[0x1E69E7CC0];
  if (v8 - v9 == 6.28318531)
  {
    v21 = 1;
  }

  v91 = v21;
  v96 = v9;
  v23 = MEMORY[0x1E69E7CC0];
  v94 = v2;
  v95 = v8;
  do
  {
    *&v99 = v4;
    BYTE8(v99) = v97;
    BYTE9(v99) = v5;
    BYTE10(v99) = v6;
    *&v100 = v7;
    S2Cell.getRawVertex(_:)(v20);
    v24 = v106;
    v25 = v107;
    v26 = v108;
    v27 = sqrt(v24 * v24 + v25 * v25 + v26 * v26);
    if (v27 == 0.0)
    {
      v28 = v27;
    }

    else
    {
      v28 = 1.0 / v27;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = sub_1D9AFA570(0, *(v22 + 2) + 1, 1, v22);
    }

    v30 = *(v22 + 2);
    v29 = *(v22 + 3);
    if (v30 >= v29 >> 1)
    {
      v22 = sub_1D9AFA570((v29 > 1), v30 + 1, 1, v22);
    }

    v31 = v24 * v28;
    v32 = v25 * v28;
    *(v22 + 2) = v30 + 1;
    v33 = &v22[24 * v30 + 32];
    *v33 = v24 * v28;
    v33[1] = v25 * v28;
    v33[2] = v26 * v28;
    v34 = atan2(v26 * v28, sqrt(v31 * v31 + v32 * v32));
    v35 = atan2(v32, v31);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D9AFA46C(0, *(v23 + 2) + 1, 1, v23);
    }

    v36 = v95;
    v37 = v96;
    v39 = *(v23 + 2);
    v38 = *(v23 + 3);
    if (v39 >= v38 >> 1)
    {
      v23 = sub_1D9AFA46C((v38 > 1), v39 + 1, 1, v23);
    }

    *(v23 + 2) = v39 + 1;
    v40 = &v23[16 * v39 + 32];
    *v40 = v34;
    v40[1] = v35;
    if (v3 > v34 || v34 > v94)
    {
      goto LABEL_24;
    }

    if (v35 == -3.14159265)
    {
      if (v96 < v95)
      {
        if (!v91)
        {
          goto LABEL_136;
        }

        goto LABEL_24;
      }

      v35 = 3.14159265;
LABEL_50:
      if (v95 <= v35 && v35 <= v96)
      {
        goto LABEL_136;
      }

      goto LABEL_24;
    }

    if (v96 >= v95)
    {
      goto LABEL_50;
    }

    v42 = v35 > v96 && v95 > v35;
    if (!v42 && v93 != 6.28318531)
    {
LABEL_136:

      return;
    }

LABEL_24:
    ++v20;
  }

  while (v20 != 4);
  v43 = __sincos_stret(v3);
  v44 = __sincos_stret(v95);
  v45 = __sincos_stret(v94);
  v92 = v45.__sinval * (v43.__cosval * v44.__sinval) - v43.__sinval * (v45.__cosval * v44.__sinval);
  v88 = v43.__cosval * v44.__cosval * (v45.__cosval * v44.__sinval) - v43.__cosval * v44.__sinval * (v45.__cosval * v44.__cosval);
  v89 = v43.__sinval * (v45.__cosval * v44.__cosval) - v45.__sinval * (v43.__cosval * v44.__cosval);
  v46 = __sincos_stret(v96);
  v47 = 0;
  v87 = v45.__sinval * (v43.__cosval * v46.__sinval) - v43.__sinval * (v45.__cosval * v46.__sinval);
  v85 = v43.__cosval * v46.__cosval * (v45.__cosval * v46.__sinval) - v43.__cosval * v46.__sinval * (v45.__cosval * v46.__cosval);
  v86 = v43.__sinval * (v45.__cosval * v46.__cosval) - v45.__sinval * (v43.__cosval * v46.__cosval);
  v48 = (v23 + 40);
  v49 = (v22 + 48);
  v50 = v93;
  v90 = v3;
  while (v39 + 1 != v47)
  {
    v51 = v47 + 1;
    v52 = (v47 + 1) & 3;
    if (v52 > v39)
    {
      goto LABEL_138;
    }

    v53 = *v48;
    v54 = &v23[16 * v52 + 32];
    v55 = *(v54 + 8);
    if (v55 == 3.14159265)
    {
      v56 = *v48;
    }

    else
    {
      v56 = 3.14159265;
    }

    if (v53 != -3.14159265)
    {
      v56 = *v48;
    }

    if (v53 == 3.14159265)
    {
      v57 = *(v54 + 8);
    }

    else
    {
      v57 = 3.14159265;
    }

    if (v55 != -3.14159265)
    {
      v57 = *(v54 + 8);
    }

    if (v50 != 6.28318531 && v56 - v57 != 6.28318531)
    {
      if (v37 >= v36)
      {
        if (v57 >= v56)
        {
          if (v56 > v37 || v36 > v57)
          {
            goto LABEL_54;
          }
        }

        else if (v56 > v37 && v36 > v57)
        {
          goto LABEL_54;
        }
      }

      else if (v57 >= v56 && v56 > v37 && v36 > v57)
      {
        goto LABEL_54;
      }

      v62 = *(v22 + 2);
      if (v47 >= v62)
      {
        goto LABEL_139;
      }

      if (v52 >= v62)
      {
        goto LABEL_140;
      }

      v63 = *(v49 - 2);
      v64 = *(v49 - 1);
      v65 = *v49;
      v66 = &v22[24 * v52 + 32];
      v68 = *v66;
      v67 = v66[1];
      v69 = v66[2];
      if (v36 == -3.14159265)
      {
        if (v57 >= v56)
        {
          if (v56 > 3.14159265)
          {
            goto LABEL_113;
          }
        }

        else if (v56 <= 3.14159265)
        {
LABEL_110:
          v72 = v64 * v69 - v65 * v67;
          v73 = v65 * v68 - v63 * v69;
          v74 = v63 * v67 - v64 * v68;
          v75 = v92 * v68 + v89 * v67 + v88 * v69;
          if (v75 * (v43.__sinval * v74 + v43.__cosval * v44.__cosval * v72 + v43.__cosval * v44.__sinval * v73) > 0.0)
          {
            v76 = v45.__sinval * v74 + v45.__cosval * v44.__cosval * v72 + v45.__cosval * v44.__sinval * v73;
            if (-(v75 * v76) > 0.0 && (v92 * v63 + v89 * v64 + v88 * v65) * v76 > 0.0)
            {
              goto LABEL_136;
            }
          }

          goto LABEL_113;
        }

        if (v57 >= 3.14159265)
        {
          goto LABEL_110;
        }
      }

      else if (v57 >= v56)
      {
        if (v56 <= v95 && v95 <= v57)
        {
          goto LABEL_110;
        }
      }

      else if (v56 <= v95 || v95 <= v57)
      {
        goto LABEL_110;
      }

LABEL_113:
      if (v96 == -3.14159265)
      {
        if (v57 >= v56)
        {
          if (v56 <= 3.14159265)
          {
            goto LABEL_125;
          }
        }

        else
        {
          if (v56 <= 3.14159265)
          {
LABEL_131:
            v79 = v64 * v69 - v65 * v67;
            v80 = v65 * v68 - v63 * v69;
            v81 = v63 * v67 - v64 * v68;
            v82 = v87 * v68 + v86 * v67 + v85 * v69;
            if (v82 * (v43.__sinval * v81 + v43.__cosval * v46.__cosval * v79 + v43.__cosval * v46.__sinval * v80) > 0.0)
            {
              v83 = v45.__sinval * v81 + v45.__cosval * v46.__cosval * v79 + v45.__cosval * v46.__sinval * v80;
              if (-(v82 * v83) > 0.0 && (v87 * v63 + v86 * v64 + v85 * v65) * v83 > 0.0)
              {
                goto LABEL_136;
              }
            }

            goto LABEL_134;
          }

LABEL_125:
          if (v57 >= 3.14159265)
          {
            goto LABEL_131;
          }
        }
      }

      else if (v57 >= v56)
      {
        if (v56 <= v96 && v96 <= v57)
        {
          goto LABEL_131;
        }
      }

      else if (v56 <= v96 || v96 <= v57)
      {
        goto LABEL_131;
      }

LABEL_134:
      v106 = *(v49 - 2);
      v107 = v64;
      v108 = v65;
      *&v99 = v68;
      *(&v99 + 1) = v67;
      *&v100 = v69;
      v36 = v95;
      v37 = v96;
      *v98 = v95;
      *(v98 + 1) = v96;
      if (sub_1D9A66B10(&v106, &v99, v98, v90))
      {
        goto LABEL_136;
      }

      v106 = v63;
      v107 = v64;
      v108 = v65;
      *&v99 = v68;
      *(&v99 + 1) = v67;
      *&v100 = v69;
      *v98 = v95;
      *(v98 + 1) = v96;
      v84 = sub_1D9A66B10(&v106, &v99, v98, v94);
      v50 = v93;
      if (v84)
      {
        goto LABEL_136;
      }
    }

LABEL_54:
    v48 += 2;
    v49 += 3;
    v47 = v51;
    if (v51 == 4)
    {
      goto LABEL_136;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
}

Swift::Bool __swiftcall S2LatLngRect.contains(point:)(VisualLookUp::S2Point point)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *v2;
  v6 = v2[1];
  v7 = atan2(v1[2], sqrt(v3 * v3 + v4 * v4));
  if (v5 > v7 || v7 > v6)
  {
    return 0;
  }

  else
  {
    v9 = atan2(v4, v3);
    return S1Interval.contains(point:)(v9);
  }
}

Swift::Bool __swiftcall S2LatLngRect.interiorIntersects(other:)(VisualLookUp::S2LatLngRect other)
{
  v3 = *(v1 + 8);
  v4 = *v2;
  v5 = *(v2 + 8);
  return *v1 < v5 && *v1 <= v3 && v4 < v3 && v4 < v5 && S1Interval.interiorIntersects(with:)(__PAIR128__(*(v2 + 16), *(v1 + 16)));
}

VisualLookUp::S2LatLngRect __swiftcall S2LatLngRect.add(point:)(VisualLookUp::S2Point point)
{
  v3 = v2;
  v4 = *v1;
  v5 = v1[1];
  v6 = atan2(v1[2], sqrt(v4 * v4 + v5 * v5));
  v7 = atan2(v5, v4);
  R1Interval.add(point:)(v6);
  hi = S1Interval.add(point:)(v7).hi;
  v11 = *&v12;
  *v3 = v12;
  v3[1] = v12;
  result.lng.hi = v10;
  result.lng.lo = v9;
  result.lat.hi = hi;
  result.lat.lo = v11;
  return result;
}

VisualLookUp::S2LatLngRect __swiftcall S2LatLngRect.add(point:)(VisualLookUp::S2LatLng point)
{
  v3 = v2;
  v4 = v1[1];
  R1Interval.add(point:)(*v1);
  hi = S1Interval.add(point:)(v4).hi;
  v8 = *&v9;
  *v3 = v9;
  v3[1] = v9;
  result.lng.hi = v7;
  result.lng.lo = v6;
  result.lat.hi = hi;
  result.lat.lo = v8;
  return result;
}

VisualLookUp::S2LatLngRect __swiftcall S2LatLngRect.expanded(margin:)(VisualLookUp::S2LatLng margin)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = *(v3 + 16);
  if (v6 >= *v3)
  {
    if (v5 - *v1 > -1.57079633)
    {
      v5 = v5 - *v1;
    }

    else
    {
      v5 = -1.57079633;
    }

    if (v6 + *v1 <= 1.57079633)
    {
      v6 = v6 + *v1;
    }

    else
    {
      v6 = 1.57079633;
    }

    *&margin.lat.radians = *&S1Interval.expanded(radius:)(v1[1]);
    v7 = v10;
  }

  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 16) = v7;
  result.lat.hi = *&v7;
  result.lat.lo = margin.lat.radians;
  result.lng.hi = v9;
  result.lng.lo = v8;
  return result;
}

VisualLookUp::S2LatLngRect __swiftcall S2LatLngRect.union(with:)(VisualLookUp::S2LatLngRect with)
{
  v4 = v2;
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v3 + 8);
  if (v7 >= *v3)
  {
    if (v6 >= v5)
    {
      if (v5 >= *v3)
      {
        v5 = *v3;
      }

      if (v7 > v6)
      {
        v6 = *(v3 + 8);
      }
    }

    else
    {
      v5 = *v3;
      v6 = *(v3 + 8);
    }
  }

  hi = S1Interval.union(with:)(__PAIR128__(*(v3 + 16), *(v1 + 16))).hi;
  *v4 = v5;
  *(v4 + 8) = v6;
  v11 = *&v12;
  *(v4 + 16) = v12;
  result.lng.hi = v10;
  result.lng.lo = v9;
  result.lat.hi = hi;
  result.lat.lo = v11;
  return result;
}

void S2LatLngRect.capBound.getter(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  if (v3 >= *v1)
  {
    v8 = v1[2];
    v7 = v1[3];
    v9 = -v4;
    if (v4 + v3 < 0.0)
    {
      v9 = v1[1];
    }

    v10 = v9 + 1.57079633;
    v11 = 1.0;
    if (v4 + v3 < 0.0)
    {
      v11 = -1.0;
    }

    v38 = v11;
    v12 = sin(v10 * 0.5);
    v6 = v12 * (v12 + v12);
    v13 = remainder(v7 - v8, 6.28318531);
    if (v7 - v8 >= 6.28318531 || v13 < 0.0)
    {
      goto LABEL_41;
    }

    v14 = (v8 + v7) * 0.5;
    v37 = v6;
    if (v7 < v8)
    {
      if (v14 <= 0.0)
      {
        v15 = 3.14159265;
      }

      else
      {
        v15 = -3.14159265;
      }

      v14 = v14 + v15;
    }

    v16 = __sincos_stret((v4 + v3) * 0.5);
    v17 = __sincos_stret(v14);
    v18 = v16.__cosval * v17.__cosval;
    v36 = v16.__cosval * v17.__sinval;
    v19 = __sincos_stret(v4);
    v20 = __sincos_stret(v8);
    v21 = (v16.__sinval - v19.__sinval) * (v16.__sinval - v19.__sinval);
    v22 = (v21 + (v18 - v19.__cosval * v20.__cosval) * (v18 - v19.__cosval * v20.__cosval) + (v36 - v19.__cosval * v20.__sinval) * (v36 - v19.__cosval * v20.__sinval)) * 2.22044605e-16 < 0.0 ? 0.0 : (v21 + (v18 - v19.__cosval * v20.__cosval) * (v18 - v19.__cosval * v20.__cosval) + (v36 - v19.__cosval * v20.__sinval) * (v36 - v19.__cosval * v20.__sinval)) * 2.22044605e-16;
    v23 = __sincos_stret(v7);
    v24 = v18 - v19.__cosval * v23.__cosval;
    v25 = v16.__cosval * v17.__sinval;
    v26 = v22 > (v21 + v24 * v24 + (v36 - v19.__cosval * v23.__sinval) * (v36 - v19.__cosval * v23.__sinval)) * 2.22044605e-16 ? v22 : (v21 + v24 * v24 + (v36 - v19.__cosval * v23.__sinval) * (v36 - v19.__cosval * v23.__sinval)) * 2.22044605e-16;
    v27 = __sincos_stret(v3);
    sinval = v27.__sinval;
    if (v26 >= 0.0)
    {
      v28 = v16.__cosval * v17.__cosval;
      v29 = v16.__sinval;
      v30 = ((v16.__sinval - v27.__sinval) * (v16.__sinval - v27.__sinval) + (v16.__cosval * v17.__cosval - v27.__cosval * v23.__cosval) * (v16.__cosval * v17.__cosval - v27.__cosval * v23.__cosval) + (v36 - v27.__cosval * v23.__sinval) * (v36 - v27.__cosval * v23.__sinval)) * 2.22044605e-16;
      if (v26 > v30)
      {
        v30 = v26;
      }
    }

    else
    {
      v28 = v27.__cosval * v23.__cosval;
      v25 = v27.__cosval * v23.__sinval;
      v29 = v27.__sinval;
      v30 = 0.0;
    }

    if (v30 > ((v29 - v27.__sinval) * (v29 - v27.__sinval) + (v28 - v27.__cosval * v20.__cosval) * (v28 - v27.__cosval * v20.__cosval) + (v25 - v27.__cosval * v20.__sinval) * (v25 - v27.__cosval * v20.__sinval)) * 2.22044605e-16)
    {
      v31 = v30;
    }

    else
    {
      v31 = ((v29 - v27.__sinval) * (v29 - v27.__sinval) + (v28 - v27.__cosval * v20.__cosval) * (v28 - v27.__cosval * v20.__cosval) + (v25 - v27.__cosval * v20.__sinval) * (v25 - v27.__cosval * v20.__sinval)) * 2.22044605e-16;
    }

    v32 = v30 < 0.0;
    if (v30 >= 0.0)
    {
      v33 = v28;
    }

    else
    {
      v33 = v27.__cosval * v20.__cosval;
    }

    if (v30 >= 0.0)
    {
      v34 = v25;
    }

    else
    {
      v34 = v27.__cosval * v20.__sinval;
    }

    if (!v32)
    {
      sinval = v29;
    }

    v35 = 0.0;
    if (!v32)
    {
      v35 = v31;
    }

    v6 = v37;
    if (v35 >= v37)
    {
LABEL_41:
      *a1 = 0;
      *(a1 + 8) = 0;
      sinval = v38;
    }

    else
    {
      *a1 = v33;
      *(a1 + 8) = v34;
      v6 = v35;
    }
  }

  else
  {
    if (qword_1ECB50CC8 != -1)
    {
      swift_once();
    }

    sinval = *&qword_1ECB53A70;
    v6 = unk_1ECB53A78;
    *a1 = xmmword_1ECB53A60;
  }

  *(a1 + 16) = sinval;
  *(a1 + 24) = v6;
}

__n128 S2LatLngRect.rectBound.getter@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

BOOL S2LatLngRect.contains(cell:)(uint64_t *a1)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 10);
  v4 = a1[2];
  v5 = *v1;
  v6 = v1[1];
  v13 = *a1;
  v14 = v2;
  v15 = v3;
  v16 = v4;
  S2Cell.rectBound.getter(&v10);
  v8 = (v11 < v10 || (v5 <= v10 ? (v7 = v11 > v6) : (v7 = 1), !v7)) && S1Interval.contains(interval:)(__PAIR128__(*&v10, v12));
  return v8;
}

BOOL S2LatLngRect.mayIntersect(cell:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 10);
  v5 = a1[2];
  v6 = v1[1];
  v14 = *v1;
  v15 = v6;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  S2Cell.rectBound.getter(&v8);
  *&v16.lat.lo = v8;
  *&v16.lat.hi = v9;
  return S2LatLngRect.intersects(with:)(v16);
}

__n128 sub_1D9A66A24@<Q0>(_OWORD *a1@<X8>)
{
  result = *v1;
  v3 = *(v1 + 16);
  *a1 = *v1;
  a1[1] = v3;
  return result;
}

BOOL sub_1D9A66A34(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 4);
  v4 = *(a1 + 10);
  v5 = a1[2];
  v6 = v1[1];
  v14 = *v1;
  v15 = v6;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  S2Cell.rectBound.getter(&v8);
  *&v16.lat.lo = v8;
  *&v16.lat.hi = v9;
  return S2LatLngRect.intersects(with:)(v16);
}

BOOL _s12VisualLookUp12S2LatLngRectV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a2[1];
  v6 = a2[2];
  v7 = a2[3];
  if ((*a1 != *a2 || v2 != v5) && (v2 >= *a1 || v5 >= *a2))
  {
    return 0;
  }

  if (v3 != v6 || v4 != v7)
  {
    if (v3 - v4 == 6.28318531)
    {
      return v6 - v7 == 6.28318531;
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D9A66B10(double *a1, double *a2, double *a3, long double a4)
{
  v4 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v34 = a3[1];
  v35 = *a3;
  v36 = a1[1];
  v37 = *a1;
  v47 = *a1;
  v48 = v36;
  v38 = v4;
  v39 = v6;
  v49 = v4;
  v40 = v5;
  v41 = v7;
  v44 = v5;
  v45 = v6;
  v46 = *&v7;
  static S2.robustCrossProd(a:b:)(&v47, &v44, &v50);
  v8 = sqrt(v50 * v50 + v51 * v51 + v52 * v52);
  if (v8 != 0.0)
  {
    v8 = 1.0 / v8;
  }

  v9 = v52 * v8;
  if (v52 * v8 >= 0.0)
  {
    v10 = v50 * v8;
  }

  else
  {
    v10 = -(v50 * v8);
  }

  if (v9 >= 0.0)
  {
    v11 = v51 * v8;
  }

  else
  {
    v11 = -(v51 * v8);
  }

  v47 = v10;
  v48 = v11;
  if (v9 >= 0.0)
  {
    v12 = v52 * v8;
  }

  else
  {
    v12 = -(v52 * v8);
  }

  v49 = v12;
  v44 = 0.0;
  v45 = 0.0;
  v46 = 0x3FF0000000000000;
  static S2.robustCrossProd(a:b:)(&v47, &v44, &v50);
  v13 = v52;
  v14 = sqrt(v50 * v50 + v51 * v51 + v13 * v13);
  if (v14 == 0.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1.0 / v14;
  }

  v16 = v50 * v15;
  v17 = v51 * v15;
  v18 = v11 * (v50 * v15) - v10 * (v51 * v15);
  v19 = sin(a4);
  if (v18 <= fabs(v19))
  {
    return 0;
  }

  v20 = v13 * v15;
  v21 = v10 * v20 - v12 * v16;
  v32 = v12 * v17 - v11 * v20;
  v33 = v19 / v18;
  v22 = sqrt(1.0 - v33 * v33);
  __xa = atan2(v22, v33);
  v23 = atan2(v38 * v20 + v37 * v16 + v36 * v17, v38 * v18 + v37 * v32 + v36 * v21);
  v24 = atan2(v41 * v20 + v40 * v16 + v39 * v17, v41 * v18 + v40 * v32 + v39 * v21);
  v25 = 3.14159265;
  if (v24 == 3.14159265)
  {
    v26 = v23;
  }

  else
  {
    v26 = 3.14159265;
  }

  if (v23 == -3.14159265)
  {
    v27 = v26;
  }

  else
  {
    v27 = v23;
  }

  if (v23 == 3.14159265)
  {
    v25 = v24;
  }

  v28 = v24 == -3.14159265 ? v25 : v24;
  v50 = v27;
  v51 = v28;
  if (S1Interval.contains(point:)(__xa))
  {
    v50 = v35;
    v51 = v34;
    v29 = atan2(v21 * v33 + v17 * v22, v32 * v33 + v16 * v22);
    if (S1Interval.contains(point:)(v29))
    {
      return 1;
    }
  }

  v50 = v27;
  v51 = v28;
  if (S1Interval.contains(point:)(-__xa) && (v50 = v35, v51 = v34, v30 = atan2(v21 * v33 - v17 * v22, v32 * v33 - v16 * v22), S1Interval.contains(point:)(v30)))
  {
    return 1;
  }

  else
  {
    return 0;
  }
}

void sub_1D9A66DFC(double *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, NSObject **a4@<X8>)
{
  v5 = v4;
  v55 = a4;
  v59 = *MEMORY[0x1E69E9840];
  v9 = sub_1D9C7D8DC();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v50 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v48 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511F8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v48 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - v16;
  v18 = sub_1D9C7D91C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v49 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57[0] = 0xD00000000000001DLL;
  v57[1] = 0x80000001D9CA47C0;
  v57[2] = "VI: ScenenetClassification";
  v57[3] = 26;
  v58 = 2;
  type metadata accessor for DurationMeasurement();
  swift_allocObject();
  v21 = sub_1D9AFD4B8(v57, 0);
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = v5;
  v22[5] = v21;
  v23 = objc_allocWithZone(MEMORY[0x1E6984668]);
  aBlock[4] = sub_1D9A6874C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D9BD99E0;
  aBlock[3] = &block_descriptor_2;
  v24 = _Block_copy(aBlock);

  v51 = v21;

  v25 = [v23 initWithCompletionHandler_];
  _Block_release(v24);
  v26 = type metadata accessor for SceneClassificationModelFactory.Input();
  sub_1D9A687BC(a1 + *(v26 + 20), v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1D99A6AE0(v17, &qword_1ECB511F8);
  }

  else
  {
    v27 = v49;
    (*(v19 + 32))(v49, v17, v18);
    v28 = v48;
    (*(v19 + 16))(v48, v27, v18);
    (*(v19 + 56))(v28, 0, 1, v18);
    sub_1D9C7E26C();
    sub_1D99A6AE0(v28, &qword_1ECB511F8);
    (*(v19 + 8))(v27, v18);
  }

  [v25 setRegionOfInterest_];
  [v25 setMaximumLeafObservations_];
  [v25 setMaximumHierarchicalObservations_];
  aBlock[0] = 0;
  v29 = v25;
  if ([v29 setRevision:3737841665 error:aBlock])
  {
    v30 = aBlock[0];
    v32 = v53;
    v31 = v54;
    v33 = v52;
  }

  else
  {
    v34 = aBlock[0];
    v35 = sub_1D9C7B70C();

    swift_willThrow();
    static Logger.argos.getter(v50);
    v36 = v35;
    v37 = sub_1D9C7D8BC();
    v38 = sub_1D9C7E09C();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 134218242;
      *(v39 + 4) = 3737841665;
      *(v39 + 12) = 2112;
      v41 = v35;
      v42 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 14) = v42;
      *v40 = v42;
      _os_log_impl(&dword_1D9962000, v37, v38, "Failed to set revision %ld with error %@. Use default revision.", v39, 0x16u);
      sub_1D99A6AE0(v40, &qword_1ECB510E8);
      MEMORY[0x1DA7405F0](v40, -1, -1);
      MEMORY[0x1DA7405F0](v39, -1, -1);
    }

    else
    {
    }

    v33 = v52;
    v32 = v53;
    v31 = v54;
    (*(v53 + 8))(v50, v54);
  }

  static Logger.argos.getter(v33);
  v43 = v29;
  v44 = sub_1D9C7D8BC();
  v45 = sub_1D9C7E09C();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 134217984;
    *(v46 + 4) = [v43 revision];

    _os_log_impl(&dword_1D9962000, v44, v45, "Scenenet revision %ld", v46, 0xCu);
    MEMORY[0x1DA7405F0](v46, -1, -1);
  }

  else
  {

    v44 = v43;
  }

  (*(v32 + 8))(v33, v31);
  v47 = v55;
  v55[3] = &type metadata for VisionModelRequest;
  v47[4] = &off_1F55305B8;

  *v47 = v43;
}

void sub_1D9A67508(void *a1, id a2, void (*a3)(__int128 *))
{
  if (a2)
  {
    v10 = a2;
    v11 = 257;
    v4 = a2;
    a3(&v10);
    v5 = v10;
    v6 = HIBYTE(v11);
    v7 = v11;

    sub_1D99BB0C4(v5, *(&v5 + 1), v7, v6);
  }

  else
  {
    sub_1D9A675E4(a1, &v10);
    v8 = v10;
    v9 = v11;
    a3(&v8);
    sub_1D99BB0C4(v8, *(&v8 + 1), v9, SHIBYTE(v9));
    sub_1D9AFCCA4();
  }
}

unint64_t sub_1D9A675E4@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v136 = a2;
  v146 = sub_1D9C7D8DC();
  v133 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v135 = &v126 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v139 = &v126 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v126 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v126 - v11;
  v129 = a1;
  v13 = [a1 results];
  if (!v13 || (v14 = v13, sub_1D9A68700(), v15 = sub_1D9C7DF2C(), v14, v16 = sub_1D9B80624(v15), , !v16))
  {
    result = 0x80000001D9CA65C0;
    v20 = 0xD000000000000023;
    v120 = 1;
    v121 = 4;
LABEL_103:
    v125 = v136;
    *v136 = v20;
    v125[1] = result;
    *(v125 + 16) = v121;
    *(v125 + 17) = v120;
    return result;
  }

  v18 = v16 & 0xFFFFFFFFFFFFFF8;
  if (v16 >> 62)
  {
    goto LABEL_96;
  }

  for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D9C7E50C())
  {
    v138 = v18;
    v131 = v12;
    v132 = v8;
    v18 = 0;
    v8 = (v16 & 0xC000000000000001);
    v134 = 0x80000001D9CA3A40;
    v140 = (v133 + 16);
    v141 = (v133 + 8);
    v20 = MEMORY[0x1E69E7CC0];
    v21 = &selRef_arrayWithObjects_count_;
    *&v17 = 136446210;
    v127 = v17;
    *&v17 = 136315394;
    v126 = v17;
    __asm { FMOV            V0.2D, #1.0 }

    v130 = _Q0;
    v143 = i;
    v144 = v16;
    v142 = v16 & 0xC000000000000001;
    while (v8)
    {
      v27 = MEMORY[0x1DA73E610](v18, v16);
      v28 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_94;
      }

LABEL_14:
      v29 = v27;
      [v29 v21[22]];
      if (v30 >= 0.01)
      {
        v31 = *(v145 + 16);
        v32 = [v29 identifier];
        v147 = v28;
        if (!v32)
        {
          sub_1D9C7DC7C();
          v32 = sub_1D9C7DC4C();
          v28 = v147;
        }

        v33 = [*(v31 + 16) nodeForName_];

        if (!v33)
        {

          if (qword_1EDD354B8 != -1)
          {
            swift_once();
          }

          if (byte_1EDD354C0 != 1)
          {
            goto LABEL_53;
          }

          v48 = [objc_opt_self() mainBundle];
          v49 = [v48 bundleIdentifier];

          if (v49)
          {
            v50 = sub_1D9C7DC7C();
            v52 = v51;

            if (v50 == 0xD00000000000002BLL && v134 == v52)
            {

LABEL_46:
              v59 = &off_1ECB51BA8;
              if (qword_1ECB50988 != -1)
              {
                swift_once();
                v59 = &off_1ECB51BA8;
              }

LABEL_50:
              v60 = *(*v59 + 32);

              v12 = sub_1D9C7DC4C();
              LODWORD(v60) = [v60 BOOLForKey_];

              v28 = v147;
              if (v60)
              {
                v61 = qword_1EDD2C990;
                if (qword_1EDD2C988 != -1)
                {
                  swift_once();
                  v61 = qword_1EDD2C990;
                }

LABEL_55:
                v62 = v146;
                v63 = __swift_project_value_buffer(v146, v61);
                v64 = v139;
                (*v140)(v139, v63, v62);
                v65 = v29;
                v66 = sub_1D9C7D8BC();
                v67 = sub_1D9C7E0AC();

                if (os_log_type_enabled(v66, v67))
                {
                  v68 = swift_slowAlloc();
                  v69 = swift_slowAlloc();
                  v148[0] = v69;
                  *v68 = v127;
                  v70 = [v65 identifier];
                  v71 = sub_1D9C7DC7C();
                  v73 = v72;

                  v12 = sub_1D9A0E224(v71, v73, v148);
                  v28 = v147;

                  *(v68 + 4) = v12;
                  _os_log_impl(&dword_1D9962000, v66, v67, "Failed to find taxonomy node for %{public}s", v68, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v69);
                  MEMORY[0x1DA7405F0](v69, -1, -1);
                  MEMORY[0x1DA7405F0](v68, -1, -1);

                  (*v141)(v139, v146);
                }

                else
                {

                  (*v141)(v64, v146);
                }

                i = v143;
                v16 = v144;
                v8 = v142;
                v21 = &selRef_arrayWithObjects_count_;
                goto LABEL_7;
              }

LABEL_53:
              v61 = qword_1EDD354D8;
              if (qword_1EDD354D0 != -1)
              {
                swift_once();
                v61 = qword_1EDD354D8;
              }

              goto LABEL_55;
            }

            v58 = sub_1D9C7E7DC();

            if (v58)
            {
              goto LABEL_46;
            }
          }

          v59 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v59 = &qword_1EDD355A8;
          }

          goto LABEL_50;
        }

        [v29 v21[22]];
        v35 = v34;
        [v33 highPrecisionThreshold];
        v37 = v36;
        [v33 highRecallThreshold];
        v39 = v38;
        [v33 searchThreshold];
        if (v39 >= v37)
        {
          v41 = v37;
        }

        else
        {
          v41 = v39;
        }

        if (v40 >= v41)
        {
          v40 = v41;
        }

        v42 = v40;
        if (v35 < v42)
        {

          if (qword_1EDD354B8 != -1)
          {
            swift_once();
          }

          if (byte_1EDD354C0 != 1)
          {
            goto LABEL_67;
          }

          v43 = [objc_opt_self() mainBundle];
          v44 = [v43 bundleIdentifier];

          if (v44)
          {
            v45 = sub_1D9C7DC7C();
            v47 = v46;

            if (v45 == 0xD00000000000002BLL && v134 == v47)
            {

LABEL_60:
              v75 = &off_1ECB51BA8;
              if (qword_1ECB50988 != -1)
              {
                swift_once();
                v75 = &off_1ECB51BA8;
              }

LABEL_64:
              v76 = *(*v75 + 32);

              v12 = sub_1D9C7DC4C();
              LODWORD(v76) = [v76 BOOLForKey_];

              if (v76)
              {
                v77 = qword_1EDD2C990;
                if (qword_1EDD2C988 != -1)
                {
                  swift_once();
                  v77 = qword_1EDD2C990;
                }

                goto LABEL_69;
              }

LABEL_67:
              v77 = qword_1EDD354D8;
              if (qword_1EDD354D0 != -1)
              {
                swift_once();
                v77 = qword_1EDD354D8;
              }

LABEL_69:
              v78 = v146;
              v79 = __swift_project_value_buffer(v146, v77);
              v80 = v132;
              (*v140)(v132, v79, v78);
              v81 = sub_1D9C7D8BC();
              v82 = sub_1D9C7E09C();
              if (os_log_type_enabled(v81, v82))
              {
                v83 = swift_slowAlloc();
                *v83 = 0;
                _os_log_impl(&dword_1D9962000, v81, v82, "Skip low confidence ", v83, 2u);
                MEMORY[0x1DA7405F0](v83, -1, -1);
              }

              else
              {
              }

              (*v141)(v80, v146);
              v16 = v144;
LABEL_91:
              v8 = v142;
              i = v143;
              v21 = &selRef_arrayWithObjects_count_;
              v28 = v147;
              goto LABEL_7;
            }

            v74 = sub_1D9C7E7DC();

            if (v74)
            {
              goto LABEL_60;
            }
          }

          v75 = &qword_1EDD355A8;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v75 = &qword_1EDD355A8;
          }

          goto LABEL_64;
        }

        if (qword_1EDD354B8 != -1)
        {
          swift_once();
        }

        if (byte_1EDD354C0 != 1)
        {
          goto LABEL_81;
        }

        v53 = [objc_opt_self() mainBundle];
        v54 = [v53 bundleIdentifier];

        if (v54)
        {
          v55 = sub_1D9C7DC7C();
          v57 = v56;

          if (v55 == 0xD00000000000002BLL && v134 == v57)
          {

LABEL_74:
            v85 = &off_1ECB51BA8;
            if (qword_1ECB50988 != -1)
            {
              swift_once();
              v85 = &off_1ECB51BA8;
            }

LABEL_78:
            v86 = *(*v85 + 32);

            v87 = sub_1D9C7DC4C();
            LODWORD(v86) = [v86 BOOLForKey_];

            if (v86)
            {
              v12 = v20;
              v88 = qword_1EDD2C990;
              if (qword_1EDD2C988 != -1)
              {
                swift_once();
                v88 = qword_1EDD2C990;
              }

LABEL_83:
              v89 = v146;
              v90 = __swift_project_value_buffer(v146, v88);
              v91 = v131;
              (*v140)(v131, v90, v89);
              v92 = v29;
              v93 = v33;
              v94 = sub_1D9C7D8BC();
              v95 = sub_1D9C7E09C();

              if (os_log_type_enabled(v94, v95))
              {
                v96 = swift_slowAlloc();
                v97 = swift_slowAlloc();
                v137 = v92;
                v98 = v97;
                v148[0] = v97;
                *v96 = v126;
                v99 = [v93 name];
                v128 = v95;
                v100 = v99;
                v101 = sub_1D9C7DC7C();
                v102 = v12;
                v104 = v103;

                v105 = sub_1D9A0E224(v101, v104, v148);
                v12 = v102;

                *(v96 + 4) = v105;
                v106 = &selRef_arrayWithObjects_count_;
                *(v96 + 12) = 2048;
                [v137 confidence];
                *(v96 + 14) = v107;
                _os_log_impl(&dword_1D9962000, v94, v128, "Class %s: %f", v96, 0x16u);
                __swift_destroy_boxed_opaque_existential_0Tm(v98);
                v108 = v98;
                v92 = v137;
                MEMORY[0x1DA7405F0](v108, -1, -1);
                MEMORY[0x1DA7405F0](v96, -1, -1);

                (*v141)(v91, v146);
                v16 = v144;
              }

              else
              {

                (*v141)(v91, v89);
                v16 = v144;
                v106 = &selRef_arrayWithObjects_count_;
              }

              v109 = v106[245];
              v137 = v93;
              v110 = [v93 v109];
              v111 = sub_1D9C7DC7C();
              v113 = v112;

              [v92 confidence];
              v115 = v114;

              v20 = v12;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v20 = sub_1D9AF92E0(0, *(v12 + 2) + 1, 1, v12);
              }

              v117 = *(v20 + 2);
              v116 = *(v20 + 3);
              if (v117 >= v116 >> 1)
              {
                v20 = sub_1D9AF92E0((v116 > 1), v117 + 1, 1, v20);
              }

              *(v20 + 2) = v117 + 1;
              v118 = &v20[56 * v117];
              *(v118 + 4) = v111;
              *(v118 + 5) = v113;
              *(v118 + 12) = v115;
              *(v118 + 7) = 0;
              *(v118 + 8) = 0;
              *(v118 + 72) = v130;
              goto LABEL_91;
            }

LABEL_81:
            v12 = v20;
            v88 = qword_1EDD354D8;
            if (qword_1EDD354D0 != -1)
            {
              swift_once();
              v88 = qword_1EDD354D8;
            }

            goto LABEL_83;
          }

          v84 = sub_1D9C7E7DC();

          if (v84)
          {
            goto LABEL_74;
          }
        }

        v85 = &qword_1EDD355A8;
        if (qword_1EDD355A0 != -1)
        {
          swift_once();
          v85 = &qword_1EDD355A8;
        }

        goto LABEL_78;
      }

LABEL_7:
      ++v18;
      if (v28 == i)
      {

        goto LABEL_98;
      }
    }

    if (v18 >= *(v138 + 16))
    {
      goto LABEL_95;
    }

    v27 = *(v16 + 8 * v18 + 32);
    v28 = v18 + 1;
    if (!__OFADD__(v18, 1))
    {
      goto LABEL_14;
    }

LABEL_94:
    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    ;
  }

  v20 = MEMORY[0x1E69E7CC0];
LABEL_98:
  static Logger.argos.getter(v135);

  v122 = sub_1D9C7D8BC();
  v123 = sub_1D9C7E09C();
  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    *v124 = 134217984;
    *(v124 + 4) = *(v20 + 2);

    _os_log_impl(&dword_1D9962000, v122, v123, "Output %ld annotations", v124, 0xCu);
    MEMORY[0x1DA7405F0](v124, -1, -1);

    (*(v133 + 8))(v135, v146);
  }

  else
  {

    (*(v133 + 8))(v135, v146);
  }

  result = [v129 revision];
  if ((result & 0x8000000000000000) == 0)
  {
    v121 = 0;
    v120 = 0;
    goto LABEL_103;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D9A68700()
{
  result = qword_1ECB52488;
  if (!qword_1ECB52488)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECB52488);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for SceneClassificationModelFactory.Input()
{
  result = qword_1ECB52490;
  if (!qword_1ECB52490)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9A687BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB511F8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9A6882C(uint64_t *a1, int a2)
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

uint64_t sub_1D9A68874(uint64_t result, int a2, int a3)
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

void sub_1D9A688E8()
{
  sub_1D9A68964();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1D9A68964()
{
  if (!qword_1EDD2A868[0])
  {
    sub_1D9C7D91C();
    v0 = sub_1D9C7E27C();
    if (!v1)
    {
      atomic_store(v0, qword_1EDD2A868);
    }
  }
}

void static S2EdgeUtil.getDistance(x:a:b:aCrossB:)(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X3>, double *a5@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  if (fabs(v7 * v7 + v6 * v6 + v8 * v8 + -1.0) > 1.0e-15)
  {
    __break(1u);
    goto LABEL_12;
  }

  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  if (fabs(v9 * v9 + v10 * v10 + v11 * v11 + -1.0) > 1.0e-15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  if (fabs(v12 * v12 + v13 * v13 + v14 * v14 + -1.0) > 1.0e-15)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v15 = a4[1];
  v16 = a4[2];
  v17 = v8 * *a4;
  v18 = v6 * *a4;
  if (v11 * (v7 * v15 - v18) + v9 * (v6 * v16 - v8 * v15) + v10 * (v17 - v7 * v16) <= 0.0 || v14 * (v18 - v7 * v15) + v12 * (v8 * v15 - v6 * v16) + v13 * (v7 * v16 - v17) <= 0.0)
  {
    v20 = (v7 - v9) * (v7 - v9) + (v6 - v10) * (v6 - v10) + (v8 - v11) * (v8 - v11);
    v21 = (v7 - v12) * (v7 - v12) + (v6 - v13) * (v6 - v13) + (v8 - v14) * (v8 - v14);
    if (v21 >= v20)
    {
      v21 = v20;
    }

    v22 = asin(fmin(sqrt(v21) * 0.5, 1.0));
    v19 = v22 + v22;
  }

  else
  {
    v19 = asin(fmin(fabs(v7 * *a4 + v6 * v15 + v8 * v16) / sqrt(*a4 * *a4 + v15 * v15 + v16 * v16), 1.0));
  }

  *a5 = v19;
}

void __swiftcall EdgeCrosser.init(a:b:c:)(VisualLookUp::EdgeCrosser *__return_ptr retstr, VisualLookUp::S2Point a, VisualLookUp::S2Point b, VisualLookUp::S2Point c)
{
  *&v8 = *(v4 + 16);
  v9 = *v5;
  memset(v16 + 8, 0, 24);
  v10 = *&v8 * *v5;
  *(&v8 + 1) = *v5;
  v12 = *v4;
  v13 = v8;
  v14 = *(v5 + 8);
  *&v8 = vmuld_lane_f64(*(&v14 + 1), *v4, 1) - *&v8 * *&v14;
  *&v15 = v8;
  *(&v15 + 1) = v10 - *(&v14 + 1) * *v4;
  *v16 = *&v14 * v12.f64[0] - vmuld_lane_f64(*v5, v12, 1);
  v11 = *v6;
  EdgeCrosser.restartAt(point:)(*(&v8 - 8));
  *&retstr->aCrossB.z = v16[0];
  *&retstr->c.y = v16[1];
  retstr->acb = 0;
  *&retstr->a.x = v12;
  *&retstr->a.z = v13;
  *&retstr->b.y = v14;
  *&retstr->aCrossB.x = v15;
}

Swift::Void __swiftcall EdgeCrosser.restartAt(point:)(VisualLookUp::S2Point point)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  *(v2 + 9) = *v1;
  *(v2 + 10) = v4;
  *(v2 + 11) = v5;
  v6 = v3 * *(v2 + 6) + v4 * *(v2 + 7) + v5 * *(v2 + 8);
  if (v6 <= 1.6e-15)
  {
    if (v6 >= -1.6e-15)
    {
      v8 = *(v2 + 2);
      v9 = *(v2 + 24);
      v10 = *(v2 + 5);
      v14 = *v2;
      v15 = v8;
      v12 = v9;
      v13 = v10;
      v11[0] = v3;
      v11[1] = v4;
      v11[2] = v5;
      v7 = sub_1D9AEF300(&v14, &v12, v11);
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  if (__OFSUB__(0, v7))
  {
    __break(1u);
  }

  else
  {
    *(v2 + 12) = -v7;
  }
}

Swift::Int __swiftcall EdgeCrosser.robustCrossing(point:)(VisualLookUp::S2Point point)
{
  v3 = *result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  v6 = *result * *(v2 + 6) + v4 * *(v2 + 7) + v5 * *(v2 + 8);
  if (v6 <= 1.6e-15)
  {
    if (v6 >= -1.6e-15)
    {
      v8 = *(v2 + 2);
      v9 = *(v2 + 24);
      v10 = *(v2 + 5);
      v15 = *v2;
      *&v16 = v8;
      v23 = v9;
      v24 = v10;
      v22[0] = v3;
      v22[1] = v4;
      v22[2] = v5;
      result = sub_1D9AEF300(&v15, &v23, v22);
      v7 = result;
    }

    else
    {
      v7 = -1;
    }
  }

  else
  {
    v7 = 1;
  }

  v11 = *(v2 + 12);
  if (__OFSUB__(0, v11))
  {
    __break(1u);
  }

  else
  {
    if (v7 && v7 == -v11)
    {
      result = -1;
    }

    else if ((v11 & v7) != 0)
    {
      v12 = v2[5];
      v19 = v2[4];
      v20 = v12;
      v21 = *(v2 + 12);
      v13 = v2[1];
      v15 = *v2;
      v16 = v13;
      v14 = v2[3];
      v17 = v2[2];
      v18 = v14;
      *&v23 = v3;
      *(&v23 + 1) = v4;
      v24 = v5;
      result = sub_1D9A68E70(&v23);
    }

    else
    {
      result = 0;
    }

    *(v2 + 9) = v3;
    *(v2 + 10) = v4;
    *(v2 + 11) = v5;
    if (!__OFSUB__(0, v7))
    {
      *(v2 + 12) = -v7;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9A68E70(double *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = *v1;
  v6 = *(v1 + 8);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 72);
  v12 = *(v1 + 80);
  v13 = *(v1 + 88);
  v14 = *(v1 + 96);
  v15 = v4 * v12 - v3 * v13;
  v16 = *a1 * v13 - v4 * v11;
  v17 = v3 * v11 - *a1 * v12;
  v18 = v10 * v17 + v7 * v15 + v9 * v16;
  if (v18 <= 1.6e-15)
  {
    if (v18 >= -1.6e-15)
    {
      v32 = *(v1 + 72);
      v33 = v12;
      v34 = v13;
      v29 = v2;
      v30 = v3;
      v31 = v4;
      v26 = v7;
      v27 = v9;
      v28 = v10;
      v24 = v3;
      v25 = v2;
      v22 = v6;
      v23 = v5;
      v21 = v8;
      result = sub_1D9AEF300(&v32, &v29, &v26);
      v8 = v21;
      v6 = v22;
      v5 = v23;
      v3 = v24;
      v2 = v25;
    }

    else
    {
      result = -1;
    }
  }

  else
  {
    result = 1;
  }

  if (__OFSUB__(0, result))
  {
    __break(1u);
  }

  else
  {
    if (-result == v14)
    {
      v20 = v8 * v17 + v5 * v15 + v6 * v16;
      if (v20 <= 1.6e-15)
      {
        if (v20 >= -1.6e-15)
        {
          v32 = v11;
          v33 = v12;
          v34 = v13;
          v29 = v2;
          v30 = v3;
          v31 = v4;
          v26 = v5;
          v27 = v6;
          v28 = v8;
          if (sub_1D9AEF300(&v32, &v29, &v26) == v14)
          {
            return 1;
          }
        }

        else if (v14 == -1)
        {
          return 1;
        }
      }

      else if (v14 == 1)
      {
        return 1;
      }
    }

    return -1;
  }

  return result;
}

Swift::Bool __swiftcall EdgeCrosser.edgeOrVertexCrossing(point:)(VisualLookUp::S2Point point)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = *(v2 + 9);
  v7 = *(v2 + 10);
  v8 = *(v2 + 11);
  *&v18 = *v1;
  *(&v18 + 1) = v4;
  v19 = v5;
  v9 = EdgeCrosser.robustCrossing(point:)(point);
  if (v9 < 0)
  {
    return 0;
  }

  else if (v9)
  {
    return 1;
  }

  else
  {
    v11 = *(v2 + 2);
    v18 = *v2;
    v19 = v11;
    v12 = *(v2 + 5);
    v16 = *(v2 + 24);
    v17 = v12;
    v15[0] = v6;
    v15[1] = v7;
    v15[2] = v8;
    v14[0] = v3;
    v14[1] = v4;
    v14[2] = v5;
    return _s12VisualLookUp10S2EdgeUtilV14vertexCrossing1a1b1c1dSbAA0D5PointV_A3JtFZ_0(&v18, &v16, v15, v14);
  }
}

__n128 RectBounder.bound.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 40);
  v3 = *(v1 + 56);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void __swiftcall RectBounder.init()(VisualLookUp::RectBounder *__return_ptr retstr)
{
  if (qword_1ECB50B20 != -1)
  {
    v2 = retstr;
    swift_once();
    retstr = v2;
  }

  v1 = xmmword_1ECB52C88;
  if (qword_1ECB50AC8 != -1)
  {
    v3 = retstr;
    v4 = xmmword_1ECB52C88;
    swift_once();
    v1 = v4;
    retstr = v3;
  }

  retstr->aLatLng.lng.radians = 0.0;
  *&retstr->a.x = 0u;
  *&retstr->a.z = 0u;
  retstr->bound.lat = v1;
  retstr->bound.lng = xmmword_1ECB528D0;
}

Swift::Void __swiftcall RectBounder.add(point:)(VisualLookUp::S2Point point)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = atan2(v5, sqrt(v3 * v3 + v4 * v4));
  v9 = atan2(v4, v3);
  v10 = *(v2 + 48);
  v27 = v6;
  if (v10 >= *(v2 + 40))
  {
    v30 = *(v2 + 40);
    v31 = v10;
    v14 = *(v2 + 24);
    v32 = *(v2 + 56);
    *v33 = v14;
    v35 = S2LatLngRect.init(lo:hi:)(__PAIR128__(v32, v14), __PAIR128__(v8, v7));
    v35.lat.lo = v28[0];
    *&v35.lat.hi = v29;
    S2LatLngRect.union(with:)(v35);
    v15 = *v33;
    v16 = v34;
    *(v2 + 40) = *v33;
    v26 = *&v33[8];
    *(v2 + 48) = *&v33[8];
    *(v2 + 64) = v16;
    v18 = *(v2 + 8);
    v19 = *(v2 + 16);
    v30 = *v2;
    v17 = v30;
    v31 = v18;
    *&v32 = v19;
    v28[0] = v3;
    v28[1] = v4;
    *&v29 = v5;
    static S2.robustCrossProd(a:b:)(&v30, v28, v33);
    v20 = *&v33[8] - *&v33[16] * 0.0;
    v21 = *&v33[16] * 0.0 - *v33;
    v22 = *v33 * 0.0 - *&v33[8] * 0.0;
    v23 = v19 * v22 + v17 * v20 + v18 * v21;
    if (v23 * (v5 * v22 + v3 * v20 + v4 * v21) < 0.0)
    {
      v24 = acos(fabs(*&v33[16] / sqrt(*v33 * *v33 + *&v33[8] * *&v33[8] + *&v33[16] * *&v33[16])));
      v25 = -v24;
      if (v15 < -v24)
      {
        v25 = v15;
      }

      if (v24 <= v26)
      {
        v24 = v26;
      }

      if (v23 >= 0.0)
      {
        v24 = v26;
      }

      else
      {
        v25 = v15;
      }

      *(v2 + 40) = v25;
      *(v2 + 48) = v24;
    }
  }

  else
  {
    v11 = *(v2 + 56);
    v12 = *(v2 + 64);
    R1Interval.add(point:)(v6);
    v30 = v11;
    v31 = v12;
    S1Interval.add(point:)(v9);
    v13 = *v33;
    *(v2 + 40) = *v33;
    *(v2 + 56) = v13;
  }

  *v2 = v3;
  *(v2 + 8) = v4;
  *(v2 + 16) = v5;
  *(v2 + 24) = v27;
  *(v2 + 32) = v9;
}

void __swiftcall XYZPruner.init()(VisualLookUp::XYZPruner *__return_ptr retstr)
{
  retstr->lastVertex.x = 0.0;
  retstr->lastVertex.y = 0.0;
  retstr->boundSet = 0;
  retstr->lastVertex.z = 0.0;
  *&retstr->xmin = 0u;
  *&retstr->zmin = 0u;
  *&retstr->ymax = 0u;
  retstr->maxDeformation = 0.0;
}

Swift::Void __swiftcall XYZPruner.addEdgeToBounds(from:to:)(VisualLookUp::S2Point from, VisualLookUp::S2Point to)
{
  v5 = v2[1].f64[0];
  v6 = *v2;
  v7 = *v3;
  v8 = v3[1].f64[0];
  if (*(v4 + 24) == 1)
  {
    v9 = *(v4 + 32);
    v10 = *(v4 + 48);
  }

  else
  {
    *(v4 + 24) = 1;
    v10 = v5;
    v9 = v6;
  }

  v11 = vbslq_s8(vcgtq_f64(v7, v6), v6, v7);
  *(v4 + 32) = vbslq_s8(vcgtq_f64(v9, v11), v11, v9);
  if (v5 >= v8)
  {
    v12 = v8;
  }

  else
  {
    v12 = v5;
  }

  if (v12 < v10)
  {
    v10 = v12;
  }

  *(v4 + 48) = v10;
  v13 = vbslq_s8(vcgeq_f64(v6, v7), v6, v7);
  *(v4 + 56) = vbslq_s8(vcgeq_f64(v13, *(v4 + 56)), v13, *(v4 + 56));
  v14 = *(v4 + 72);
  if (v8 > v5)
  {
    v15 = v8;
  }

  else
  {
    v15 = v5;
  }

  if (v14 <= v15)
  {
    v14 = v15;
  }

  *(v4 + 72) = v14;
  v16 = vaddvq_f64(vabdq_f64(v6, v7)) + vabdd_f64(v5, v8);
  if (v16 >= 0.025)
  {
    if (v16 >= 1.0)
    {
      *(v4 + 80) = v16 * 0.5;
      return;
    }

    v17 = *(v4 + 80);
    v18 = 0.11;
  }

  else
  {
    v17 = *(v4 + 80);
    v18 = 0.0025;
  }

  v19 = v16 * v18;
  if (v17 > v19)
  {
    v19 = v17;
  }

  *(v4 + 80) = v19;
}

Swift::Void __swiftcall XYZPruner.setFirstIntersectPoint(point:)(VisualLookUp::S2Point point)
{
  v3 = *(v1 + 16);
  v4 = *(v2 + 80);
  *(v2 + 32) = vsubq_f64(*(v2 + 32), vdupq_lane_s64(v4, 0));
  v5 = *&v4 + *(v2 + 56);
  *(v2 + 48) = *(v2 + 48) - *&v4;
  *(v2 + 56) = v5;
  v6 = *(v2 + 72);
  *(v2 + 64) = *&v4 + *(v2 + 64);
  *(v2 + 72) = *&v4 + v6;
  *v2 = *v1;
  *(v2 + 16) = v3;
}

Swift::Bool __swiftcall XYZPruner.intersects(with:)(VisualLookUp::S2Point with)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v2[4];
  result = 0;
  if (*v1 >= v6 || *v2 >= v6)
  {
    v7 = v2[7];
    if (v7 >= v3 || v7 >= *v2)
    {
      v8 = v2[5];
      if (v4 >= v8 || v2[1] >= v8)
      {
        v9 = v2[8];
        if (v9 >= v4 || v9 >= v2[1])
        {
          v10 = v2[6];
          if (v5 >= v10 || v2[2] >= v10)
          {
            v11 = v2[9];
            if (v11 >= v5 || v11 >= v2[2])
            {
              result = 1;
            }
          }
        }
      }
    }
  }

  *v2 = v3;
  v2[1] = v4;
  v2[2] = v5;
  return result;
}

VisualLookUp::LongitudePruner __swiftcall LongitudePruner.init(interval:point:)(VisualLookUp::S1Interval interval, VisualLookUp::S2Point point)
{
  v5 = v4;
  v6 = *v2;
  v7 = v2[1];
  v8 = atan2(v3[1], *v3);
  *v5 = v6;
  *(v5 + 8) = v7;
  *(v5 + 16) = v8;
  result.lng0 = v10;
  result.interval.hi = v9;
  result.interval.lo = v8;
  return result;
}

Swift::Bool __swiftcall LongitudePruner.intersects(with:)(VisualLookUp::S2Point with)
{
  v3 = atan2(v1[1], *v1);
  v4 = *(v2 + 16);
  if (v4 == -3.14159265)
  {
    v4 = 3.14159265;
  }

  if (v3 == -3.14159265)
  {
    v5 = 3.14159265;
  }

  else
  {
    v5 = v3;
  }

  v6 = v5 + 3.14159265 - (v4 + -3.14159265);
  if (v5 - v4 >= 0.0)
  {
    v6 = v5 - v4;
  }

  v7 = v6 > 3.14159265;
  if (v6 <= 3.14159265)
  {
    v8 = v4;
  }

  else
  {
    v8 = v5;
  }

  if (!v7)
  {
    v4 = v5;
  }

  v9 = S1Interval.intersects(with:)(__PAIR128__(*&v8, *&v4));
  *(v2 + 16) = v3;
  return v9;
}

BOOL static S2EdgeUtil.simpleCrossing(a:b:c:d:)(double *a1, double *a2, double *a3, double *a4)
{
  v4 = a1[1];
  v5 = a1[2];
  v6 = a2[1];
  v7 = a2[2];
  v8 = *a3;
  v9 = a3[1];
  v10 = a3[2];
  v11 = *a4;
  v12 = a4[1];
  v13 = a4[2];
  v14 = v4 * v7 - v5 * v6;
  v15 = v5 * *a2 - *a1 * v7;
  v16 = *a1 * v6 - v4 * *a2;
  v17 = *a3 * v14 + v15 * v9 + v16 * v10;
  if (-(v17 * (v14 * *a4 + v15 * v12 + v16 * v13)) <= 0.0)
  {
    return 0;
  }

  v18 = v9 * v13 - v10 * v12;
  v19 = v10 * v11 - v8 * v13;
  v20 = v8 * v12 - v9 * v11;
  return v17 * (v7 * v20 + *a2 * v18 + v6 * v19) > 0.0 && (v5 * v20 + *a1 * v18 + v4 * v19) * -v17 > 0.0;
}

BOOL static S2EdgeUtil.edgeOrVertexCrossing(a:b:c:d:)(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *a2;
  v8 = a2[1];
  v9 = a2[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = *a4;
  v14 = a4[1];
  v15 = a4[2];
  v32 = *a1;
  v33 = v5;
  v34 = v6;
  v29 = v7;
  v30 = v8;
  v31 = v9;
  v26 = v10;
  v27 = v11;
  v21 = v13;
  v22 = v12;
  v28 = v12;
  v23 = v13;
  v24 = v14;
  v19 = v15;
  v20 = v14;
  v25 = v15;
  v16 = _s12VisualLookUp10S2EdgeUtilV14robustCrossing1a1b1c1dSiAA0D5PointV_A3JtFZ_0(&v32, &v29, &v26, &v23);
  if (v16 < 0)
  {
    return 0;
  }

  else if (v16)
  {
    return 1;
  }

  else
  {
    v32 = v4;
    v33 = v5;
    v34 = v6;
    v29 = v7;
    v30 = v8;
    v31 = v9;
    v26 = v10;
    v27 = v11;
    v28 = v22;
    v23 = v21;
    v24 = v20;
    v25 = v19;
    return _s12VisualLookUp10S2EdgeUtilV14vertexCrossing1a1b1c1dSbAA0D5PointV_A3JtFZ_0(&v32, &v29, &v26, &v23);
  }
}

double S2EdgeUtil.CloserResult.vmin.getter@<D0>(uint64_t a1@<X8>)
{
  result = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = result;
  return result;
}

VisualLookUp::S2EdgeUtil::CloserResult __swiftcall S2EdgeUtil.CloserResult.init(dmin2:vmin:)(Swift::Double dmin2, VisualLookUp::S2Point vmin)
{
  v4 = v2[2];
  *v3 = dmin2;
  v5 = *v2;
  *(v3 + 8) = *v2;
  *(v3 + 24) = v4;
  result.vmin.z = vmin.z;
  result.vmin.y = vmin.y;
  result.dmin2 = *&v5;
  result.vmin.x = v4;
  return result;
}

Swift::Void __swiftcall S2EdgeUtil.CloserResult.replaceIfCloser(x:y:)(VisualLookUp::S2Point x, VisualLookUp::S2Point y)
{
  v5 = v3[1].f64[0];
  v6 = *v3;
  v7 = vsubq_f64(*v2, *v3);
  v8 = vaddvq_f64(vmulq_f64(v7, v7)) + (v2[1].f64[0] - v5) * (v2[1].f64[0] - v5);
  if (v8 < *v4 || v8 == *v4 && ((v9 = v4[1], v6.f64[0] < v9) || v9 >= v6.f64[0] && ((v10 = v4[2], v6.f64[1] < v10) || (v10 >= v6.f64[1] ? (v11 = v5 < v4[3]) : (v11 = 0), v11))))
  {
    *v4 = v8;
    *(v4 + 1) = v6;
    v4[3] = v5;
  }
}

void static S2EdgeUtil.getIntersection(a0:a1:b0:b1:)(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X3>, double *a5@<X8>)
{
  v6 = *a1;
  v7 = a1[2];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v14 = *a4;
  v15 = a4[1];
  v16 = a4[2];
  v99 = a1[1];
  v100 = *a1;
  *&v101 = v99;
  *(&v101 + 1) = v7;
  v109 = v8;
  v110 = v9;
  v111 = v10;
  v97 = v11;
  v106 = v11;
  v107 = v12;
  v93 = v13;
  v94 = v12;
  v108 = v13;
  v103 = v14;
  v104 = v15;
  v105 = v16;
  if (_s12VisualLookUp10S2EdgeUtilV14robustCrossing1a1b1c1dSiAA0D5PointV_A3JtFZ_0(&v100, &v109, &v106, &v103) < 1)
  {
    __break(1u);
  }

  else
  {
    v109 = v6;
    v110 = v99;
    v111 = v7;
    v106 = v8;
    v107 = v9;
    v108 = v10;
    static S2.robustCrossProd(a:b:)(&v109, &v106, &v100);
    v17 = sqrt(v100 * v100 + *&v101 * *&v101 + *(&v101 + 1) * *(&v101 + 1));
    v95 = v14;
    v96 = v8;
    v98 = v15;
    x_8 = v16;
    x_16 = v9;
    v89 = v10;
    v18 = v7;
    v19 = v6;
    if (v17 != 0.0)
    {
      v17 = 1.0 / v17;
    }

    v20 = v100 * v17;
    v21 = *&v101 * v17;
    v109 = v97;
    v110 = v94;
    v111 = v93;
    v22 = *(&v101 + 1) * v17;
    v90 = *(&v101 + 1) * v17;
    v106 = v95;
    v107 = v98;
    v108 = x_8;
    static S2.robustCrossProd(a:b:)(&v109, &v106, &v100);
    v23 = sqrt(v100 * v100 + *&v101 * *&v101 + *(&v101 + 1) * *(&v101 + 1));
    if (v23 != 0.0)
    {
      v23 = 1.0 / v23;
    }

    v109 = v20;
    v110 = v21;
    v111 = v22;
    v85 = *(&v101 + 1) * v23;
    v86 = v100 * v23;
    v106 = v100 * v23;
    v107 = *&v101 * v23;
    v87 = *&v101 * v23;
    v108 = *(&v101 + 1) * v23;
    static S2.robustCrossProd(a:b:)(&v109, &v106, &v100);
    v24 = sqrt(v100 * v100 + *&v101 * *&v101 + *(&v101 + 1) * *(&v101 + 1));
    if (v24 != 0.0)
    {
      v24 = 1.0 / v24;
    }

    v25 = (v18 + v10 + v93 + x_8) * (*(&v101 + 1) * v24) + (v6 + v96 + v97 + v95) * (v100 * v24) + (v99 + v9 + v94 + v98) * (*&v101 * v24);
    if (v25 >= 0.0)
    {
      v26 = v100 * v24;
    }

    else
    {
      v26 = -(v100 * v24);
    }

    if (v25 >= 0.0)
    {
      v27 = *&v101 * v24;
    }

    else
    {
      v27 = -(*&v101 * v24);
    }

    v100 = v26;
    *&v101 = v27;
    if (v25 >= 0.0)
    {
      v28 = *(&v101 + 1) * v24;
    }

    else
    {
      v28 = -(*(&v101 + 1) * v24);
    }

    *(&v101 + 1) = v28;
    v109 = v20;
    v110 = v21;
    v111 = v90;
    v106 = v19;
    v107 = v99;
    v108 = v18;
    v29 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v100, &v109, &v106);
    v100 = v96;
    *&v101 = x_16;
    *(&v101 + 1) = v89;
    v109 = v20;
    v110 = v21;
    v111 = v90;
    v106 = v26;
    v107 = v27;
    v108 = v28;
    v30 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v100, &v109, &v106);
    v31 = 1;
    v100 = v19;
    *&v101 = v99;
    if (v29 >= 0)
    {
      v31 = 2;
    }

    *(&v101 + 1) = v18;
    if (v30 >= 0)
    {
      v32 = v31;
    }

    else
    {
      v32 = v29 >= 0;
    }

    v88 = v20;
    v109 = v20;
    v110 = v21;
    v33 = v95;
    v111 = v90;
    v106 = v96;
    v107 = x_16;
    v108 = v89;
    if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v100, &v109, &v106) <= 0)
    {
      v34 = v32;
    }

    else
    {
      v34 = v32 + 1;
    }

    v35 = v97;
    v36 = v93;
    if (v34 < 2)
    {
      goto LABEL_35;
    }

    v100 = v26;
    *&v101 = v27;
    *(&v101 + 1) = v28;
    v109 = v86;
    v110 = v87;
    v111 = v85;
    v106 = v97;
    v107 = v94;
    v108 = v93;
    v37 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v100, &v109, &v106);
    v100 = v95;
    *&v101 = v98;
    *(&v101 + 1) = x_8;
    v109 = v86;
    v110 = v87;
    v111 = v85;
    v106 = v26;
    v107 = v27;
    v108 = v28;
    v38 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v100, &v109, &v106);
    v39 = 1;
    v100 = v97;
    *&v101 = v94;
    if (v37 >= 0)
    {
      v39 = 2;
    }

    *(&v101 + 1) = v93;
    v40 = v38 >= 0 ? v39 : v37 >= 0;
    v109 = v86;
    v110 = v87;
    v33 = v95;
    v111 = v85;
    v106 = v95;
    v107 = v98;
    v108 = x_8;
    v41 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v100, &v109, &v106);
    v36 = v93;
    v35 = v97;
    v42 = v41 <= 0 ? v40 : v40 + 1;
    if (v42 >= 2)
    {
      *a5 = v26;
      a5[1] = v27;
      a5[2] = v28;
    }

    else
    {
LABEL_35:
      v100 = 10.0;
      *&v101 = v26;
      *(&v101 + 1) = v27;
      v102 = v28;
      v109 = v19;
      v110 = v99;
      v111 = v18;
      v106 = v86;
      v107 = v87;
      v108 = v85;
      v103 = v35;
      v104 = v94;
      v105 = v36;
      v43 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v109, &v106, &v103);
      v109 = v33;
      v110 = v98;
      v111 = x_8;
      v106 = v86;
      v107 = v87;
      v108 = v85;
      v103 = v19;
      v104 = v99;
      v105 = v18;
      v44 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v109, &v106, &v103);
      v45 = 1;
      v109 = v97;
      v110 = v94;
      if (v43 >= 0)
      {
        v45 = 2;
      }

      v111 = v93;
      if (v44 >= 0)
      {
        v46 = v45;
      }

      else
      {
        v46 = v43 >= 0;
      }

      v106 = v86;
      v107 = v87;
      v108 = v85;
      v103 = v33;
      v104 = v98;
      v105 = x_8;
      if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v109, &v106, &v103) <= 0)
      {
        v51 = v46;
      }

      else
      {
        v51 = v46 + 1;
      }

      if (v51 >= 2)
      {
        v109 = v26;
        v110 = v27;
        v111 = v28;
        v52 = v19;
        v106 = v19;
        v107 = v99;
        v53 = v18;
        v108 = v18;
        S2EdgeUtil.CloserResult.replaceIfCloser(x:y:)(*(&v47 - 2), *&v48);
      }

      v109 = v96;
      v110 = x_16;
      v111 = v89;
      v106 = v86;
      v107 = v87;
      v108 = v85;
      v103 = v97;
      v104 = v94;
      v105 = v93;
      v54 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v109, &v106, &v103);
      v109 = v95;
      v110 = v98;
      v111 = x_8;
      v106 = v86;
      v107 = v87;
      v108 = v85;
      v103 = v96;
      v104 = x_16;
      v105 = v89;
      v55 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v109, &v106, &v103);
      v56 = 1;
      v109 = v97;
      v110 = v94;
      if (v54 >= 0)
      {
        v56 = 2;
      }

      v111 = v93;
      if (v55 >= 0)
      {
        v57 = v56;
      }

      else
      {
        v57 = v54 >= 0;
      }

      v106 = v86;
      v107 = v87;
      v108 = v85;
      v103 = v95;
      v104 = v98;
      v105 = x_8;
      if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v109, &v106, &v103) <= 0)
      {
        v62 = v57;
      }

      else
      {
        v62 = v57 + 1;
      }

      if (v62 >= 2)
      {
        v108 = v89;
        v109 = v26;
        v63 = v27;
        v110 = v27;
        v111 = v28;
        v64 = v96;
        v106 = v96;
        v107 = x_16;
        S2EdgeUtil.CloserResult.replaceIfCloser(x:y:)(*(&v58 - 2), *&v59);
      }

      v109 = v97;
      v110 = v94;
      v111 = v93;
      v106 = v88;
      v107 = v21;
      v108 = v90;
      v103 = v19;
      v104 = v99;
      v105 = v18;
      v65 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v109, &v106, &v103);
      v109 = v96;
      v110 = x_16;
      v111 = v89;
      v106 = v88;
      v107 = v21;
      v108 = v90;
      v103 = v97;
      v104 = v94;
      v105 = v93;
      v66 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v109, &v106, &v103);
      v67 = 1;
      v109 = v19;
      v110 = v99;
      if (v65 >= 0)
      {
        v67 = 2;
      }

      v111 = v18;
      if (v66 >= 0)
      {
        v68 = v67;
      }

      else
      {
        v68 = v65 >= 0;
      }

      v106 = v88;
      v107 = v21;
      v108 = v90;
      v103 = v96;
      v104 = x_16;
      v105 = v89;
      if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v109, &v106, &v103) <= 0)
      {
        v72 = v68;
      }

      else
      {
        v72 = v68 + 1;
      }

      if (v72 >= 2)
      {
        v109 = v26;
        v110 = v27;
        v111 = v28;
        v112.y = v97;
        v112.x = v93;
        v112.z = v94;
        v106 = v97;
        v107 = v94;
        v108 = v93;
        S2EdgeUtil.CloserResult.replaceIfCloser(x:y:)(v112, *&v69);
      }

      v109 = v95;
      v110 = v98;
      v111 = x_8;
      v106 = v88;
      v107 = v21;
      v108 = v90;
      v103 = v19;
      v104 = v99;
      v105 = v18;
      v73 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v109, &v106, &v103);
      v109 = v96;
      v110 = x_16;
      v111 = v89;
      v106 = v88;
      v107 = v21;
      v108 = v90;
      v103 = v95;
      v104 = v98;
      v105 = x_8;
      v74 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v109, &v106, &v103);
      v75 = 1;
      v109 = v19;
      v110 = v99;
      if (v73 >= 0)
      {
        v75 = 2;
      }

      v111 = v18;
      if (v74 >= 0)
      {
        v76 = v75;
      }

      else
      {
        v76 = v73 >= 0;
      }

      v106 = v88;
      v107 = v21;
      v108 = v90;
      v103 = v96;
      v104 = x_16;
      v105 = v89;
      if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v109, &v106, &v103) <= 0)
      {
        v81 = v76;
      }

      else
      {
        v81 = v76 + 1;
      }

      if (v81 >= 2)
      {
        v109 = v26;
        v110 = v27;
        v111 = v28;
        v82 = v95;
        v106 = v95;
        v107 = v98;
        v83 = x_8;
        v108 = x_8;
        S2EdgeUtil.CloserResult.replaceIfCloser(x:y:)(*(&v77 - 2), *&v78);
      }

      v84 = v102;
      *a5 = v101;
      a5[2] = v84;
    }
  }
}

void static S2EdgeUtil.getDistanceFraction(x:a0:a1:)(uint64_t a1, double *a2, double *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  if (*a2 == *a3 && v4 == a3[1] && v5 == a3[2])
  {
    __break(1u);
  }

  else
  {
    v3 = *a2;
    v8.x = S2Point.angle(to:)(*(&v4 - 1));
    S2Point.angle(to:)(v8);
  }
}

void static S2EdgeUtil.getDistance(x:a:b:)(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  v20[0] = *a2;
  v20[1] = v9;
  v20[2] = v10;
  v18 = v11;
  v19[0] = v11;
  v19[1] = v12;
  v19[2] = v13;
  static S2.robustCrossProd(a:b:)(v20, v19, &v21);
  if (fabs(v6 * v6 + v5 * v5 + v7 * v7 + -1.0) > 1.0e-15)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (fabs(v8 * v8 + v9 * v9 + v10 * v10 + -1.0) > 1.0e-15)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (fabs(v18 * v18 + v12 * v12 + v13 * v13 + -1.0) > 1.0e-15)
  {
LABEL_13:
    __break(1u);
    return;
  }

  if (v10 * (v6 * v22 - v5 * v21) + v8 * (v5 * v23 - v7 * v22) + v9 * (v7 * v21 - v6 * v23) <= 0.0 || v13 * (v5 * v21 - v6 * v22) + v18 * (v7 * v22 - v5 * v23) + v12 * (v6 * v23 - v7 * v21) <= 0.0)
  {
    v15 = (v6 - v8) * (v6 - v8) + (v5 - v9) * (v5 - v9) + (v7 - v10) * (v7 - v10);
    v16 = v7 - v13;
    if ((v6 - v18) * (v6 - v18) + (v5 - v12) * (v5 - v12) + v16 * v16 < v15)
    {
      v15 = (v6 - v18) * (v6 - v18) + (v5 - v12) * (v5 - v12) + v16 * v16;
    }

    v17 = asin(fmin(sqrt(v15) * 0.5, 1.0));
    v14 = v17 + v17;
  }

  else
  {
    v14 = asin(fmin(fabs(v6 * v21 + v5 * v22 + v7 * v23) / sqrt(v21 * v21 + v22 * v22 + v23 * v23), 1.0));
  }

  *a4 = v14;
}

void static S2EdgeUtil.getClosestPoint(x:a:b:)(double *a1@<X0>, double *a2@<X1>, double *a3@<X2>, double *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  if (fabs(v5 * v5 + v6 * v6 + v7 * v7 + -1.0) > 1.0e-15)
  {
    __break(1u);
    goto LABEL_20;
  }

  v8 = *a2;
  v9 = a2[1];
  v10 = a2[2];
  if (fabs(v8 * v8 + v9 * v9 + v10 * v10 + -1.0) > 1.0e-15)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v11 = *a3;
  v12 = a3[1];
  v13 = a3[2];
  if (fabs(v11 * v11 + v12 * v12 + v13 * v13 + -1.0) > 1.0e-15)
  {
LABEL_21:
    __break(1u);
    return;
  }

  v29[0] = *a2;
  v29[1] = v9;
  v29[2] = v10;
  v28[0] = v11;
  v28[1] = v12;
  v28[2] = v13;
  v27 = v13;
  static S2.robustCrossProd(a:b:)(v29, v28, &v30);
  v14 = (v5 * v30 + v6 * v31 + v7 * v32) / (v30 * v30 + v31 * v31 + v32 * v32);
  v15 = v31 * v14;
  v16 = v32 * v14;
  v17 = v5 - v30 * v14;
  v18 = v6 - v15;
  v19 = v7 - v16;
  if (v10 * (v31 * v17 - v30 * v18) + v8 * (v32 * v18 - v31 * v19) + v9 * (v30 * v19 - v32 * v17) <= 0.0 || v27 * (v30 * v18 - v31 * v17) + v11 * (v31 * v19 - v32 * v18) + v12 * (v32 * v17 - v30 * (v7 - v16)) <= 0.0)
  {
    v24 = (v5 - v8) * (v5 - v8) + (v6 - v9) * (v6 - v9) + (v7 - v10) * (v7 - v10);
    v25 = (v5 - v11) * (v5 - v11) + (v6 - v12) * (v6 - v12) + (v7 - v27) * (v7 - v27);
    v26 = v24 > v25;
    if (v24 > v25)
    {
      v21 = v11;
    }

    else
    {
      v21 = v8;
    }

    if (v26)
    {
      v22 = v12;
    }

    else
    {
      v22 = v9;
    }

    if (v26)
    {
      v23 = v27;
    }

    else
    {
      v23 = v10;
    }
  }

  else
  {
    v20 = sqrt(v19 * v19 + v17 * v17 + v18 * v18);
    if (v20 != 0.0)
    {
      v20 = 1.0 / v20;
    }

    v21 = v17 * v20;
    v22 = v18 * v20;
    v23 = v19 * v20;
  }

  *a4 = v21;
  a4[1] = v22;
  a4[2] = v23;
}

BOOL _s12VisualLookUp10S2EdgeUtilV14vertexCrossing1a1b1c1dSbAA0D5PointV_A3JtFZ_0(double *a1, double *a2, double *a3, double *a4)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  if (*a1 == *a2 && v4 == v7 && v6 == v9)
  {
    return 0;
  }

  v12 = *a3;
  v13 = a3[1];
  v14 = a3[2];
  v15 = *a4;
  v16 = a4[1];
  v17 = a4[2];
  v18 = *a3 == *a4 && v13 == v16;
  if (v18 && v14 == v17)
  {
    return 0;
  }

  if (v5 == v15 && v4 == v16 && v6 == v17)
  {
    v75 = *a1;
    v76 = v4;
    v77 = v6;
    v30 = v6;
    v61 = v9;
    v31 = v7;
    v32 = v8;
    S2Point.ortho.getter(&v72);
    v51 = v73;
    v55 = v72;
    v59 = v74;
    v69 = v12;
    v70 = v13;
    v71 = v14;
    v66 = v5;
    v67 = v4;
    v68 = v30;
    v63 = v72;
    v64 = v73;
    v65 = v74;
    v33 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v69, &v66, &v63);
    v69 = v32;
    v70 = v31;
    v71 = v61;
    v66 = v5;
    v67 = v4;
    v68 = v30;
    v63 = v12;
    v64 = v13;
    v65 = v14;
    v34 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v69, &v66, &v63);
    v35 = 1;
    v69 = v55;
    v70 = v51;
    if (v33 >= 0)
    {
      v35 = 2;
    }

    v71 = v59;
    if (v34 >= 0)
    {
      v28 = v35;
    }

    else
    {
      v28 = v33 >= 0;
    }

    v66 = v5;
    v67 = v4;
    v68 = v30;
    v63 = v32;
    v64 = v31;
  }

  else
  {
    if (v8 == v12 && v7 == v13 && v9 == v14)
    {
      v75 = *a2;
      v76 = v7;
      v77 = v9;
      v61 = v6;
      v22 = v9;
      v23 = v7;
      v24 = v8;
      S2Point.ortho.getter(&v72);
      v50 = v73;
      v54 = v72;
      v58 = v74;
      v69 = v15;
      v70 = v16;
      v71 = v17;
      v66 = v24;
      v67 = v23;
      v68 = v22;
      v63 = v72;
      v64 = v73;
      v65 = v74;
      v25 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v69, &v66, &v63);
      v69 = v5;
      v70 = v4;
      v71 = v61;
      v66 = v24;
      v67 = v23;
      v68 = v22;
      v63 = v15;
      v64 = v16;
      v65 = v17;
      v26 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v69, &v66, &v63);
      v27 = 1;
      v69 = v54;
      v70 = v50;
      if (v25 >= 0)
      {
        v27 = 2;
      }

      v71 = v58;
      if (v26 >= 0)
      {
        v28 = v27;
      }

      else
      {
        v28 = v25 >= 0;
      }

      v66 = v24;
      v67 = v23;
      v68 = v22;
    }

    else
    {
      v60 = a2[1];
      if (v5 == v12 && v4 == v13 && v6 == v14)
      {
        v75 = *a1;
        v76 = v4;
        v77 = v6;
        v37 = v6;
        v38 = v9;
        v39 = v8;
        v49 = v8;
        S2Point.ortho.getter(&v72);
        v52 = v73;
        v56 = v72;
        v62 = v74;
        v63 = v72;
        v69 = v15;
        v70 = v16;
        v71 = v17;
        v66 = v5;
        v67 = v4;
        v68 = v37;
        v64 = v73;
        v65 = v74;
        v40 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v69, &v66, &v63);
        v68 = v37;
        v69 = v39;
        v70 = v60;
        v71 = v38;
        v66 = v5;
        v67 = v4;
        v63 = v15;
        v64 = v16;
        v65 = v17;
        v41 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v69, &v66, &v63);
        v42 = 1;
        v69 = v56;
        v70 = v52;
        if (v40 >= 0)
        {
          v42 = 2;
        }

        v71 = v62;
        if (v41 >= 0)
        {
          v28 = v42;
        }

        else
        {
          v28 = v40 >= 0;
        }

        v66 = v5;
        v67 = v4;
        v68 = v37;
        v63 = v49;
        v64 = v60;
        v65 = v38;
        goto LABEL_40;
      }

      result = 0;
      if (v8 != v15 || v60 != v16 || v9 != v17)
      {
        return result;
      }

      v75 = *a2;
      v76 = v60;
      v77 = v9;
      v61 = v6;
      v43 = v9;
      v44 = v8;
      S2Point.ortho.getter(&v72);
      v48 = v73;
      v53 = v72;
      v57 = v74;
      v69 = v12;
      v70 = v13;
      v71 = v14;
      v66 = v44;
      v67 = v60;
      v68 = v43;
      v63 = v72;
      v64 = v73;
      v65 = v74;
      v45 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v69, &v66, &v63);
      v69 = v5;
      v70 = v4;
      v71 = v61;
      v66 = v44;
      v67 = v60;
      v68 = v43;
      v63 = v12;
      v64 = v13;
      v65 = v14;
      v46 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v69, &v66, &v63);
      v47 = 1;
      v69 = v53;
      v70 = v48;
      if (v45 >= 0)
      {
        v47 = 2;
      }

      v71 = v57;
      if (v46 >= 0)
      {
        v28 = v47;
      }

      else
      {
        v28 = v45 >= 0;
      }

      v66 = v44;
      v67 = v60;
      v68 = v43;
    }

    v63 = v5;
    v64 = v4;
  }

  v65 = v61;
LABEL_40:
  if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v69, &v66, &v63) <= 0)
  {
    v36 = v28;
  }

  else
  {
    v36 = v28 + 1;
  }

  return v36 > 1;
}

BOOL _s12VisualLookUp13WedgeContainsV4test2a03ab12a22b02b2SiAA7S2PointV_A4KtFZ_0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = *a1;
  v24 = a1[2];
  v25 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v29 = a3[1];
  v31 = a3[2];
  v32 = *a3;
  v30 = v32;
  v9 = *a4;
  v8 = a4[1];
  v26 = *a4;
  v27 = a4[2];
  v11 = a5[1];
  v12 = a5[2];
  v38 = *a5;
  v10 = v38;
  v39 = v11;
  v40 = v12;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v33 = v29;
  v34 = v31;
  v13 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v38, &v35, &v32);
  v38 = v9;
  v39 = v8;
  v40 = v27;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v14 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v38, &v35, &v32);
  v15 = 1;
  v38 = v30;
  v39 = v29;
  if (v13 >= 0)
  {
    v15 = 2;
  }

  v40 = v31;
  if (v14 >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13 >= 0;
  }

  v35 = v5;
  v36 = v6;
  v37 = v7;
  v32 = v26;
  v33 = v8;
  v34 = v27;
  if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v38, &v35, &v32) <= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if (v17 < 2)
  {
    return 0;
  }

  v38 = v28;
  v39 = v25;
  v40 = v24;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v32 = v26;
  v33 = v8;
  v34 = v27;
  v19 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v38, &v35, &v32);
  v38 = v30;
  v39 = v29;
  v40 = v31;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v32 = v28;
  v33 = v25;
  v34 = v24;
  v20 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v38, &v35, &v32);
  v21 = 1;
  v38 = v26;
  v39 = v8;
  if (v19 >= 0)
  {
    v21 = 2;
  }

  v40 = v27;
  if (v20 >= 0)
  {
    v22 = v21;
  }

  else
  {
    v22 = v19 >= 0;
  }

  v35 = v5;
  v36 = v6;
  v37 = v7;
  v32 = v30;
  v33 = v29;
  v34 = v31;
  if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v38, &v35, &v32) <= 0)
  {
    v23 = v22;
  }

  else
  {
    v23 = v22 + 1;
  }

  return v23 > 1;
}

uint64_t _s12VisualLookUp15WedgeIntersectsV4test2a03ab12a22b02b2SiAA7S2PointV_A4KtFZ_0(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v29 = a1[1];
  v30 = *a1;
  v31 = a1[2];
  v5 = *a2;
  v6 = a2[1];
  v7 = a2[2];
  v24 = a3[2];
  v25 = a3[1];
  v9 = *a4;
  v8 = a4[1];
  v26 = *a4;
  v27 = a4[2];
  v28 = *a3;
  v11 = a5[1];
  v12 = a5[2];
  v38 = *a5;
  v10 = v38;
  v39 = v11;
  v40 = v12;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v32 = v30;
  v33 = v29;
  v34 = v31;
  v13 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v38, &v35, &v32);
  v38 = v9;
  v39 = v8;
  v40 = v27;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v14 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v38, &v35, &v32);
  v15 = 1;
  v38 = v30;
  v39 = v29;
  if (v13 >= 0)
  {
    v15 = 2;
  }

  v40 = v31;
  if (v14 >= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13 >= 0;
  }

  v35 = v5;
  v36 = v6;
  v37 = v7;
  v32 = v26;
  v33 = v8;
  v34 = v27;
  if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v38, &v35, &v32) <= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v16 + 1;
  }

  if (v17 < 2)
  {
    return -1;
  }

  v38 = v28;
  v39 = v25;
  v40 = v24;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v32 = v26;
  v33 = v8;
  v34 = v27;
  v18 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v38, &v35, &v32);
  v38 = v30;
  v39 = v29;
  v40 = v31;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v32 = v28;
  v33 = v25;
  v34 = v24;
  v19 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v38, &v35, &v32);
  v20 = 1;
  v38 = v26;
  v39 = v8;
  if (v18 >= 0)
  {
    v20 = 2;
  }

  v40 = v27;
  v21 = v19 >= 0 ? v20 : v18 >= 0;
  v35 = v5;
  v36 = v6;
  v37 = v7;
  v32 = v30;
  v33 = v29;
  v34 = v31;
  v22 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v38, &v35, &v32) <= 0 ? v21 : v21 + 1;
  if (v22 > 1)
  {
    return 0;
  }

  else
  {
    return -1;
  }
}

uint64_t _s12VisualLookUp25WedgeContainsOrIntersectsV4test2a03ab12a22b02b2SiAA7S2PointV_A4KtFZ_0(double *a1, uint64_t *a2, double *a3, double *a4, double *a5)
{
  v34 = a1[1];
  v5 = a1[2];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v10 = *a3;
  v9 = a3[1];
  v11 = a3[2];
  v36 = *a4;
  v37 = a4[1];
  v31 = a4[2];
  v13 = *a5;
  v12 = a5[1];
  v38 = *a5;
  v39 = *a1;
  v35 = v39;
  v32 = a5[2];
  v33 = v5;
  v45 = v10;
  v46 = v9;
  v47 = v11;
  v42 = v7;
  v43 = v6;
  v44 = v8;
  v40 = v34;
  v41 = v5;
  v14 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39);
  v45 = v13;
  v46 = v12;
  v47 = v32;
  v42 = v7;
  v43 = v6;
  v44 = v8;
  v39 = v10;
  v40 = v9;
  v41 = v11;
  v15 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39);
  v16 = 1;
  v45 = v35;
  v46 = v34;
  if (v14 >= 0)
  {
    v16 = 2;
  }

  v47 = v33;
  if (v15 >= 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = v14 >= 0;
  }

  v42 = v7;
  v43 = v6;
  v44 = v8;
  v39 = v38;
  v40 = v12;
  v41 = v32;
  if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39) <= 0)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  if (v18 >= 2)
  {
    v45 = v36;
    v46 = v37;
    v47 = v31;
    v42 = v7;
    v43 = v6;
    v44 = v8;
    v39 = v38;
    v40 = v12;
    v41 = v32;
    v25 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39);
    v26 = v25 >= 0;
    v45 = v35;
    v46 = v34;
    v47 = v33;
    v42 = v7;
    v43 = v6;
    v44 = v8;
    v39 = v36;
    v40 = v37;
    v41 = v31;
    v27 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39);
    v45 = v38;
    v46 = v12;
    if (v25 < 0)
    {
      v28 = 1;
    }

    else
    {
      v28 = 2;
    }

    v47 = v32;
    if (v27 >= 0)
    {
      v26 = v28;
    }

    v42 = v7;
    v43 = v6;
    v44 = v8;
    v39 = v35;
    v40 = v34;
    v41 = v33;
    if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39) <= 0)
    {
      v29 = v26;
    }

    else
    {
      v29 = v26 + 1;
    }

    if (v29 > 1)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  else
  {
    v45 = v36;
    v46 = v37;
    v47 = v31;
    v42 = v7;
    v43 = v6;
    v44 = v8;
    v39 = v10;
    v40 = v9;
    v41 = v11;
    v19 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39);
    v45 = v38;
    v46 = v12;
    v47 = v32;
    v42 = v7;
    v43 = v6;
    v44 = v8;
    v39 = v36;
    v40 = v37;
    v41 = v31;
    v20 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39);
    v21 = 1;
    v45 = v10;
    v46 = v9;
    if (v19 >= 0)
    {
      v21 = 2;
    }

    v47 = v11;
    if (v20 >= 0)
    {
      v22 = v21;
    }

    else
    {
      v22 = v19 >= 0;
    }

    v42 = v7;
    v43 = v6;
    v44 = v8;
    v39 = v38;
    v40 = v12;
    v41 = v32;
    if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39) <= 0)
    {
      v23 = v22;
    }

    else
    {
      v23 = v22 + 1;
    }

    if (v23 >= 2)
    {
      LODWORD(v30) = v10 != v36;
      if (v9 != v37)
      {
        LODWORD(v30) = 1;
      }

      if (v11 == v31)
      {
        v30 = v30;
      }

      else
      {
        v30 = 1;
      }

      return v30 << 63 >> 63;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t _s12VisualLookUp22WedgeContainsOrCrossesV4test2a03ab12a22b02b2SiAA7S2PointV_A4KtFZ_0(double *a1, uint64_t *a2, double *a3, double *a4, double *a5)
{
  v37 = a1[1];
  v38 = *a1;
  v36 = a1[2];
  v31 = a2[1];
  v32 = *a2;
  v5 = a2[2];
  v6 = a3[1];
  v8 = a3[2];
  v33 = *a4;
  v34 = a4[1];
  v35 = a4[2];
  v10 = *a5;
  v9 = a5[1];
  v11 = a5[2];
  v45 = *a3;
  v7 = v45;
  v46 = v6;
  v47 = v8;
  v42 = v32;
  v43 = v31;
  v44 = v5;
  v39 = v38;
  v40 = v37;
  v41 = v36;
  v12 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39);
  v45 = v10;
  v46 = v9;
  v47 = v11;
  v41 = v8;
  v42 = v32;
  v43 = v31;
  v44 = v5;
  v39 = v7;
  v40 = v6;
  v13 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39);
  v14 = 1;
  v45 = v38;
  v46 = v37;
  if (v12 >= 0)
  {
    v14 = 2;
  }

  v47 = v36;
  if (v13 >= 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = v12 >= 0;
  }

  v42 = v32;
  v43 = v31;
  v44 = v5;
  v39 = v10;
  v40 = v9;
  v41 = v11;
  if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39) <= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 1;
  }

  if (v16 >= 2)
  {
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v42 = v32;
    v43 = v31;
    v44 = v5;
    v39 = v10;
    v40 = v9;
    v41 = v11;
    v23 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39);
    v24 = v23 >= 0;
    v45 = v38;
    v46 = v37;
    v47 = v36;
    v42 = v32;
    v43 = v31;
    v44 = v5;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v25 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39);
    v26 = v23 < 0;
    v22 = 1;
    v45 = v10;
    v46 = v9;
    if (v26)
    {
      v27 = 1;
    }

    else
    {
      v27 = 2;
    }

    v47 = v11;
    if (v25 >= 0)
    {
      v24 = v27;
    }

    v42 = v32;
    v43 = v31;
    v44 = v5;
    v39 = v38;
    v40 = v37;
    v41 = v36;
    if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39) <= 0)
    {
      v28 = v24;
    }

    else
    {
      v28 = v24 + 1;
    }

    if (v28 <= 1)
    {
      LODWORD(v29) = v7 != v10;
      if (v6 != v9)
      {
        LODWORD(v29) = 1;
      }

      if (v8 == v11)
      {
        v29 = v29;
      }

      else
      {
        v29 = 1;
      }

      return v29 << 63 >> 63;
    }
  }

  else
  {
    v45 = v33;
    v46 = v34;
    v47 = v35;
    v42 = v32;
    v43 = v31;
    v44 = v5;
    v39 = v38;
    v40 = v37;
    v41 = v36;
    v17 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39);
    v45 = v7;
    v46 = v6;
    v47 = v8;
    v42 = v32;
    v43 = v31;
    v44 = v5;
    v39 = v33;
    v40 = v34;
    v41 = v35;
    v18 = _s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39);
    v19 = 1;
    v45 = v38;
    v46 = v37;
    if (v17 >= 0)
    {
      v19 = 2;
    }

    v47 = v36;
    if (v18 >= 0)
    {
      v20 = v19;
    }

    else
    {
      v20 = v17 >= 0;
    }

    v42 = v32;
    v43 = v31;
    v44 = v5;
    v39 = v7;
    v40 = v6;
    v41 = v8;
    if (_s12VisualLookUp2S2V9robustCCW1a1b1cSiAA0D5PointV_A2ItFZ_0(&v45, &v42, &v39) <= 0)
    {
      v21 = v20;
    }

    else
    {
      v21 = v20 + 1;
    }

    if (v21 >= 2)
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }

  return v22;
}

uint64_t _s12VisualLookUp10S2EdgeUtilV14robustCrossing1a1b1c1dSiAA0D5PointV_A3JtFZ_0(double *a1, double *a2, double *a3, double *a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v10 = *a3;
  v11 = a3[1];
  v12 = a3[2];
  v13 = *a4;
  v14 = a4[1];
  v15 = a4[2];
  v16 = v5 * v9 - v6 * v7;
  v17 = v6 * *a2 - *a1 * v9;
  v18 = *a1 * v7 - v5 * *a2;
  v19 = *a3 * v16 + v17 * v11 + v18 * v12;
  if (v19 <= 1.6e-15)
  {
    if (v19 >= -1.6e-15)
    {
      v65 = *a1;
      v66 = v5;
      v67 = v6;
      v62 = v8;
      v63 = v7;
      v64 = v9;
      v59 = v10;
      v60 = v11;
      v61 = v12;
      v43 = v14;
      v44 = v6;
      v47 = v13;
      v50 = v5;
      v53 = v4;
      v56 = v11;
      v21 = v10;
      v22 = v12;
      v45 = v15;
      v20 = sub_1D9AEF300(&v65, &v62, &v59);
      v4 = v53;
      v15 = v45;
      v13 = v47;
      v12 = v22;
      v11 = v56;
      v10 = v21;
      v5 = v50;
      v14 = v43;
      v6 = v44;
    }

    else
    {
      v20 = -1;
    }
  }

  else
  {
    v20 = 1;
  }

  v23 = __OFSUB__(0, v20);
  result = -v20;
  if (v23)
  {
    __break(1u);
LABEL_35:
    __break(1u);
    return result;
  }

  v25 = v16 * v13 + v17 * v14 + v18 * v15;
  if (v25 > 1.6e-15)
  {
    if (result)
    {
      if (result != 1)
      {
        return -1;
      }

      goto LABEL_17;
    }

    return 0;
  }

  if (v25 < -1.6e-15)
  {
    if (result != -1)
    {
      if (!result)
      {
        return result;
      }

      return -1;
    }

    goto LABEL_17;
  }

  v51 = v12;
  v54 = v4;
  v57 = v11;
  v48 = v10;
  v65 = v4;
  v66 = v5;
  v67 = v6;
  v62 = v8;
  v63 = v7;
  v64 = v9;
  v26 = v13;
  v59 = v13;
  v60 = v14;
  v27 = v14;
  v28 = v15;
  v61 = v15;
  v29 = result;
  v30 = sub_1D9AEF300(&v65, &v62, &v59);
  if ((v30 & v29) == 0)
  {
    return 0;
  }

  result = v29;
  v4 = v54;
  v11 = v57;
  v10 = v48;
  v12 = v51;
  v13 = v26;
  v14 = v27;
  v15 = v28;
  if (v30 != v29)
  {
    return -1;
  }

LABEL_17:
  v31 = v11 * v15 - v12 * v14;
  v32 = v12 * v13 - v10 * v15;
  v33 = v10 * v14 - v11 * v13;
  v34 = v9 * v33 + v8 * v31 + v7 * v32;
  if (v34 <= 1.6e-15)
  {
    if (v34 >= -1.6e-15)
    {
      v65 = v10;
      v66 = v11;
      v67 = v12;
      v62 = v13;
      v63 = v14;
      v64 = v15;
      v59 = v8;
      v60 = v7;
      v61 = v9;
      v36 = result;
      v49 = v13;
      v52 = v5;
      v55 = v4;
      v58 = v11;
      v37 = v10;
      v38 = v12;
      v39 = v14;
      v46 = v15;
      v40 = sub_1D9AEF300(&v65, &v62, &v59);
      v15 = v46;
      v13 = v49;
      v14 = v39;
      v12 = v38;
      v4 = v55;
      v11 = v58;
      v10 = v37;
      v5 = v52;
      v35 = v40;
      result = v36;
    }

    else
    {
      v35 = -1;
    }
  }

  else
  {
    v35 = 1;
  }

  v23 = __OFSUB__(0, v35);
  v41 = -v35;
  if (v23)
  {
    goto LABEL_35;
  }

  if (v41 == result)
  {
    v42 = v6 * v33 + v4 * v31 + v5 * v32;
    if (v42 > 1.6e-15)
    {
      if (result == 1)
      {
        return result;
      }

      return -1;
    }

    if (v42 >= -1.6e-15)
    {
      v65 = v10;
      v66 = v11;
      v67 = v12;
      v62 = v13;
      v63 = v14;
      v64 = v15;
      v59 = v4;
      v60 = v5;
      v61 = v6;
      if (sub_1D9AEF300(&v65, &v62, &v59) != result)
      {
        return -1;
      }
    }

    else if (result != -1)
    {
      return -1;
    }

    return 1;
  }

  return -1;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D9A6B9A4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9A6B9C4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 104) = v3;
  return result;
}

uint64_t sub_1D9A6BA18(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9A6BA38(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1D9A6BAA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 88))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D9A6BAFC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 88) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 88) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for S2Point(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for S2Point(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

void *sub_1D9A6BC34()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51510);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = (&v24 - v1);
  v3 = type metadata accessor for ObjectKnowledge();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v31 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v24 - v7;
  v29 = sub_1D9C7C87C();
  v8 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7CBFC();
  v12 = *(v11 + 16);
  if (v12)
  {
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v15 = *(v13 + 64);
    v24 = v11;
    v25 = v4;
    v16 = v11 + ((v15 + 32) & ~v15);
    v27 = *(v13 + 56);
    v28 = v14;
    v17 = (v4 + 48);
    v18 = MEMORY[0x1E69E7CC0];
    v26 = v3;
    do
    {
      v19 = v29;
      v28(v10, v16, v29);
      sub_1D9A6BF7C(v10, v2);
      (*(v13 - 8))(v10, v19);
      if ((*v17)(v2, 1, v3) == 1)
      {
        sub_1D99A6AE0(v2, &qword_1ECB51510);
      }

      else
      {
        v20 = v30;
        sub_1D99FEFC8(v2, v30);
        sub_1D9A702A8(v20, v31);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1D9AF9700(0, v18[2] + 1, 1, v18);
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          v18 = sub_1D9AF9700(v21 > 1, v22 + 1, 1, v18);
        }

        sub_1D9A7030C(v30);
        v18[2] = v22 + 1;
        sub_1D99FEFC8(v31, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22);
        v3 = v26;
      }

      v16 += v27;
      --v12;
    }

    while (v12);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v18;
}

uint64_t sub_1D9A6BF7C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v68 = a2;
  v49 = sub_1D9C7BD8C();
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9C7BE0C();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1D9C7BEAC();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9C7BDAC();
  v60 = *(v7 - 8);
  v61 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v59 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9C7BD1C();
  v57 = *(v9 - 8);
  v58 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9C7BF3C();
  v65 = *(v11 - 8);
  v66 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v64 = &v47 - v15;
  v16 = sub_1D9C7BB9C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v63 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v47 - v23;
  v67 = a1;
  sub_1D9C7C86C();
  v25 = *(v17 + 104);
  v62 = *MEMORY[0x1E69BCE30];
  v25(v22);
  sub_1D9A70368();
  sub_1D9C7DEDC();
  sub_1D9C7DEDC();
  v69 = *(v17 + 8);
  v69(v22, v16);
  if (v71 != v70)
  {
    (v25)(v22, *MEMORY[0x1E69BCE28], v16);
    sub_1D9C7DEDC();
    sub_1D9C7DEDC();
    v69(v22, v16);
    if (v71 != v70)
    {
      (v25)(v22, *MEMORY[0x1E69BCE38], v16);
      sub_1D9C7DEDC();
      sub_1D9C7DEDC();
      v69(v22, v16);
      if (v71 != v70)
      {
        (v25)(v22, *MEMORY[0x1E69BCE20], v16);
        sub_1D9C7DEDC();
        sub_1D9C7DEDC();
        v26 = v69;
        v69(v22, v16);
        if (v71 != v70)
        {
          v26(v24, v16);
          goto LABEL_16;
        }
      }
    }
  }

  v27 = sub_1D9C7C85C();
  if (!*(v27 + 16))
  {

LABEL_15:
    v69(v24, v16);
LABEL_16:
    v43 = type metadata accessor for ObjectKnowledge();
    return (*(*(v43 - 8) + 56))(v68, 1, 1, v43);
  }

  v29 = v65;
  v28 = v66;
  (*(v65 + 16))(v14, v27 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v66);

  v30 = v64;
  (*(v29 + 32))(v64, v14, v28);
  sub_1D9C7BF1C();
  v32 = v31;
  v33 = v63;
  (*(v17 + 16))(v63, v24, v16);
  v34 = (*(v17 + 88))(v33, v16);
  if (v34 == v62)
  {
    v35 = v59;
    sub_1D9C7BEEC();
    v36 = sub_1D9C7BD9C();
    (*(v60 + 8))(v35, v61);
    if (*(v36 + 16))
    {
      v37 = v56;
      v38 = v57;
      v39 = v58;
      (*(v57 + 16))(v56, v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80)), v58);

      sub_1D9B58BD8(v68, v32);
      (*(v29 + 8))(v30, v28);
      v69(v24, v16);
      return (*(v38 + 8))(v37, v39);
    }

    (*(v29 + 8))(v30, v28);
    goto LABEL_15;
  }

  if (v34 == *MEMORY[0x1E69BCE38])
  {
    v41 = v53;
    sub_1D9C7BF0C();
    sub_1D9B87B30(v68, v32);
    (*(v54 + 8))(v41, v55);
LABEL_20:
    (*(v29 + 8))(v30, v28);
    return (v69)(v24, v16);
  }

  if (v34 == *MEMORY[0x1E69BCE28])
  {
    v42 = v50;
    sub_1D9C7BF2C();
    sub_1D9A750A0(v68, v32);
    (*(v51 + 8))(v42, v52);
    goto LABEL_20;
  }

  if (v34 == *MEMORY[0x1E69BCE20])
  {
    v44 = v47;
    sub_1D9C7BEFC();
    sub_1D9B63FB8(v68, v32);
    (*(v48 + 8))(v44, v49);
    goto LABEL_20;
  }

  (*(v29 + 8))(v30, v28);
  v45 = v69;
  v69(v24, v16);
  v46 = type metadata accessor for ObjectKnowledge();
  (*(*(v46 - 8) + 56))(v68, 1, 1, v46);
  return v45(v33, v16);
}

id sub_1D9A6C974(uint64_t a1, Class *a2)
{
  v4 = MEMORY[0x1E69E7CC0];
  v50 = MEMORY[0x1E69E7CC0];
  v5 = *(a1 + 16);
  if (!v5)
  {
    v8 = a2;
    goto LABEL_16;
  }

  v6 = 0;
  v7 = a1 + 40;
  do
  {
    v47 = v4;
    v4 = (v7 + 16 * v6);
    v8 = v6;
    while (1)
    {
      if (v8 >= v5)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v6 = (v8 + 1);
      if (__OFADD__(v8, 1))
      {
        goto LABEL_58;
      }

      v9 = *(v4 - 1);
      v10 = *v4;
      v2 = objc_allocWithZone(MEMORY[0x1E69CA5E0]);
      sub_1D99AF2FC(v9, v10);
      v11 = sub_1D9C7B86C();
      v3 = [v2 initWithData_];

      if (v3)
      {
        break;
      }

      sub_1D99A5748(v9, v10);
LABEL_5:
      v8 = (v8 + 1);
      v4 += 2;
      if (v6 == v5)
      {
        v8 = a2;
        v4 = v47;
        goto LABEL_16;
      }
    }

    v2 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) initWithProtobuf_];

    v12 = sub_1D99A5748(v9, v10);
    if (!v2)
    {
      goto LABEL_5;
    }

    MEMORY[0x1DA73E0E0](v12);
    if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D9C7DF4C();
    }

    sub_1D9C7DF6C();
    v4 = v50;
    v8 = a2;
  }

  while (v6 != v5);
LABEL_16:
  v50 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_62:
    v13 = sub_1D9C7E50C();
    if (!v13)
    {
      goto LABEL_63;
    }

LABEL_18:
    if (v13 < 1)
    {
      __break(1u);
      goto LABEL_73;
    }

    v45 = 0;
    v14 = 0;
    v15 = v4 & 0xC000000000000001;
    v49 = v4 & 0xFFFFFFFFFFFFFF8;
    v46 = MEMORY[0x1E69E7CC0];
    v48 = v4;
    v16 = &off_1E858B000;
    v43 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v17 = MEMORY[0x1DA73E610](v14, v4);
      }

      else
      {
        if (v14 >= *(v49 + 16))
        {
          goto LABEL_60;
        }

        v17 = v4[v14 + 4];
      }

      v2 = v17;
      v18 = [v17 v16[339]];
      if (!v18)
      {
        goto LABEL_21;
      }

      v3 = v18;
      sub_1D9A0835C(0, &qword_1ECB524A0);
      v19 = sub_1D9C7DF2C();

      if (v19 >> 62)
      {
        if (!sub_1D9C7E50C())
        {
LABEL_52:

          goto LABEL_22;
        }
      }

      else if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_52;
      }

      if ((v19 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x1DA73E610](0, v19);
      }

      else
      {
        if (!*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_59;
        }

        v20 = *(v19 + 32);
      }

      v3 = v20;

      objc_opt_self();
      v21 = swift_dynamicCastObjCClass();
      if (!v21)
      {

        goto LABEL_22;
      }

      v22 = v21;
      v23 = [v21 v16[339]];
      if (!v23)
      {
        break;
      }

      v24 = v23;
      v25 = sub_1D9C7DF2C();

      if (v25 >> 62)
      {
        v16 = &off_1E858B000;
        if (!sub_1D9C7E50C())
        {
LABEL_55:

          goto LABEL_22;
        }
      }

      else
      {
        v16 = &off_1E858B000;
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_55;
        }
      }

      if ((v25 & 0xC000000000000001) != 0)
      {
        v26 = MEMORY[0x1DA73E610](0, v25);
      }

      else
      {
        if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_61;
        }

        v26 = *(v25 + 32);
      }

      v27 = v26;

      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        v45 = [v22 separatorStyle];
        v30 = v27;
        MEMORY[0x1DA73E0E0]();
        if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D9C7DF4C();
        }

        sub_1D9C7DF6C();
        v46 = v50;
        v31 = [v2 fbr];
        if (v31)
        {
          v32 = v31;
          sub_1D9C7DC7C();

          if (qword_1ECB50CC0 != -1)
          {
            swift_once();
          }

          v33 = off_1ECB538C0;
          os_unfair_lock_lock(off_1ECB538C0 + 6);
          v34 = *(v33 + 2);
          v35 = sub_1D9C7DC4C();
          [v34 setObject:v35 forKey:v29];

          os_unfair_lock_unlock(v33 + 6);

          v8 = a2;
        }

        else
        {
        }

        v4 = v48;
        v15 = v43;
        v16 = &off_1E858B000;
      }

      else
      {

        v4 = v48;
        v15 = v43;
      }

LABEL_22:
      if (v13 == ++v14)
      {
        goto LABEL_64;
      }
    }

LABEL_21:
    goto LABEL_22;
  }

  v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v13)
  {
    goto LABEL_18;
  }

LABEL_63:
  v45 = 0;
  v46 = MEMORY[0x1E69E7CC0];
LABEL_64:

  if (v46 >> 62)
  {
    if (!sub_1D9C7E50C())
    {
      goto LABEL_70;
    }

LABEL_66:
    v3 = &selRef_arrayWithObjects_count_;
    v2 = [objc_allocWithZone(*v8) init];
    if (!(v46 >> 62))
    {

      sub_1D9C7E7FC();
      sub_1D9A0835C(0, &qword_1ECB524A0);
LABEL_68:

      sub_1D9A0835C(0, &qword_1ECB524A0);
      v36 = sub_1D9C7DF1C();

      [v2 setCardSections_];

      v37 = v2;
      [v37 setSeparatorStyle_];
      v38 = [objc_allocWithZone(MEMORY[0x1E69C9F00]) v3[148]];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB512E8);
      v39 = swift_allocObject();
      *(v39 + 16) = xmmword_1D9C88F90;
      *(v39 + 32) = v37;
      v40 = sub_1D9C7DF1C();

      [v38 setCardSections_];

      v41 = [objc_allocWithZone(MEMORY[0x1E69CA3E8]) v3[148]];
      [v41 setType_];
      [v41 setInlineCard_];

      return v41;
    }

LABEL_73:
    sub_1D9A0835C(0, &qword_1ECB524A0);

    sub_1D9C7E4FC();

    goto LABEL_68;
  }

  if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_66;
  }

LABEL_70:

  return 0;
}

uint64_t sub_1D9A6D108()
{
  v280 = sub_1D9C7D32C();
  v309 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v279 = &v227 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v300 = sub_1D9C7C2DC();
  v306 = *(v300 - 8);
  MEMORY[0x1EEE9AC00](v300);
  v299 = &v227 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v278 = sub_1D9C7C4DC();
  v305 = *(v278 - 8);
  MEMORY[0x1EEE9AC00](v278);
  v277 = &v227 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB524C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v227 - v4;
  v6 = sub_1D9C7C58C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v298 = &v227 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v304 = &v227 - v10;
  v308 = sub_1D9C7C5CC();
  v247 = *(v308 - 8);
  MEMORY[0x1EEE9AC00](v308);
  v307 = &v227 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_1D9C7CB3C();
  v303 = *(v246 - 8);
  MEMORY[0x1EEE9AC00](v246);
  v261 = &v227 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9C7D8DC();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v249 = &v227 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v252 = &v227 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v243 = &v227 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v244 = &v227 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v242 = &v227 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v250 = &v227 - v25;
  v26 = sub_1D9C7C90C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v269 = &v227 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v267 = sub_1D9C7C78C();
  v29 = *(v267 - 8);
  MEMORY[0x1EEE9AC00](v267);
  v268 = &v227 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_1D9C7CA8C();
  v31 = *(v230 - 8);
  MEMORY[0x1EEE9AC00](v230);
  v239 = &v227 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v317 = MEMORY[0x1E69E7CC0];
  result = sub_1D9C7CF8C();
  v235 = *(result + 16);
  if (!v235)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v35 = 0;
  v270 = 0;
  v36 = v31;
  v234 = result + ((*(v31 + 80) + 32) & ~*(v31 + 80));
  v233 = v31 + 16;
  v254 = v29 + 16;
  v265 = (v27 + 8);
  v251 = 0x80000001D9CA3A40;
  v264 = (v14 + 16);
  v262 = (v14 + 8);
  v245 = (v303 + 8);
  v303 = v247 + 16;
  v302 = (v7 + 48);
  v297 = (v7 + 32);
  v296 = (v7 + 16);
  v295 = (v7 + 88);
  v294 = *MEMORY[0x1E69BD3B8];
  v276 = *MEMORY[0x1E69BD3C0];
  v293 = (v7 + 8);
  v282 = (v7 + 96);
  v272 = (v305 + 32);
  v271 = (v305 + 8);
  v275 = (v306 + 32);
  v274 = v309 + 8;
  v273 = (v306 + 8);
  v301 = (v247 + 8);
  v259 = v29;
  v253 = (v29 + 8);
  *&v34 = 136315138;
  v237 = v34;
  *&v34 = 138412290;
  v240 = v34;
  v231 = (v31 + 8);
  v248 = MEMORY[0x1E69E7CC0];
  v241 = MEMORY[0x1E69E7CC0];
  v229 = MEMORY[0x1E69E7CC0];
  v281 = v5;
  v283 = v6;
  v255 = v13;
  v266 = v26;
  v37 = v269;
  v38 = v268;
  v39 = v230;
  v40 = v239;
  v228 = v36;
  v232 = result;
  while (1)
  {
    if (v35 >= *(result + 16))
    {
      goto LABEL_167;
    }

    v41 = *(v36 + 72);
    v238 = v35;
    v42 = v40;
    (*(v36 + 16))(v40, v234 + v41 * v35, v39);
    v43 = sub_1D9A95728(v42);
    if (v43)
    {
      break;
    }

    (*v231)(v42, v39);
LABEL_4:
    v35 = v238 + 1;
    v40 = v239;
    result = v232;
    if (v238 + 1 == v235)
    {

      return v229;
    }
  }

  v44 = v43;
  MEMORY[0x1DA73E0E0]();
  v45 = v259;
  if (*((v317 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v317 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D9C7DF4C();
  }

  v236 = v44;
  sub_1D9C7DF6C();
  v229 = v317;
  result = sub_1D9C7CA5C();
  v258 = *(result + 16);
  if (!v258)
  {

    v309 = MEMORY[0x1E69E7CC0];
LABEL_157:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = v230;
    if (isUniquelyReferenced_nonNull_native)
    {
      v222 = v241;
    }

    else
    {
      v222 = sub_1D9AF9728(0, *(v241 + 2) + 1, 1, v241);
    }

    v224 = *(v222 + 2);
    v223 = *(v222 + 3);
    v225 = v236;
    if (v224 >= v223 >> 1)
    {
      v241 = sub_1D9AF9728((v223 > 1), v224 + 1, 1, v222);
      v225 = v236;
    }

    else
    {
      v241 = v222;
    }

    (*v231)(v239, v39);
    v226 = v241;
    *(v241 + 2) = v224 + 1;
    *&v226[8 * v224 + 32] = v309;
    v36 = v228;
    goto LABEL_4;
  }

  v46 = 0;
  v256 = result + ((*(v45 + 80) + 32) & ~*(v45 + 80));
  v309 = MEMORY[0x1E69E7CC0];
  v257 = result;
  while (v46 < *(result + 16))
  {
    v47 = v13;
    v48 = *(v45 + 72);
    v263 = v46;
    (*(v45 + 16))(v38, v256 + v48 * v46, v267);
    sub_1D9C7C76C();
    v49 = sub_1D9C7C8EC();
    v50 = *v265;
    v51 = v266;
    (*v265)(v37, v266);
    v52 = *(v49 + 16);

    v306 = v50;
    if (!v52)
    {
      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      v61 = byte_1EDD354C0;
      if (byte_1EDD354C0 != 1)
      {
        goto LABEL_74;
      }

      v62 = [objc_opt_self() mainBundle];
      v63 = [v62 bundleIdentifier];

      if (v63)
      {
        v64 = sub_1D9C7DC7C();
        v66 = v65;

        if (v64 == 0xD00000000000002BLL && v251 == v66)
        {

LABEL_66:
          v102 = &off_1ECB51BA8;
          if (qword_1ECB50988 != -1)
          {
            swift_once();
            v102 = &off_1ECB51BA8;
          }

LABEL_70:
          v103 = *(*v102 + 32);

          v104 = sub_1D9C7DC4C();
          LODWORD(v103) = [v103 BOOLForKey_];

          if (v103)
          {
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
            }

            v105 = __swift_project_value_buffer(v47, qword_1EDD2C990);
            v106 = *v264;
            (*v264)(v250, v105, v47);
            goto LABEL_77;
          }

LABEL_74:
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
          }

          v107 = __swift_project_value_buffer(v47, qword_1EDD354D8);
          v106 = *v264;
          (*v264)(v250, v107, v47);
          if ((v61 & 1) == 0)
          {
            goto LABEL_88;
          }

LABEL_77:
          v108 = [objc_opt_self() mainBundle];
          v109 = [v108 bundleIdentifier];

          if (v109)
          {
            v110 = sub_1D9C7DC7C();
            v112 = v111;

            if (v110 == 0xD00000000000002BLL && v251 == v112)
            {

LABEL_82:
              v114 = &off_1ECB51BA8;
              v100 = v307;
              if (qword_1ECB50988 != -1)
              {
                swift_once();
                v114 = &off_1ECB51BA8;
              }

LABEL_86:
              v115 = *(*v114 + 32);

              v116 = sub_1D9C7DC4C();
              LODWORD(v115) = [v115 BOOLForKey_];

              if (v115)
              {
                v117 = v47;
                v118 = v242;
                v106(v242, v250, v117);
LABEL_91:
                v120 = *v262;
                (*v262)(v250, v117);
                v121 = sub_1D9C7D8BC();
                v122 = sub_1D9C7E08C();
                if (os_log_type_enabled(v121, v122))
                {
                  v123 = swift_slowAlloc();
                  *v123 = 0;
                  _os_log_impl(&dword_1D9962000, v121, v122, "No result entities found for this section, skip visual domain conversion", v123, 2u);
                  MEMORY[0x1DA7405F0](v123, -1, -1);
                }

                v120(v118, v117);
                goto LABEL_94;
              }

LABEL_88:
              if (qword_1EDD354D0 != -1)
              {
                swift_once();
              }

              v117 = v47;
              v119 = __swift_project_value_buffer(v47, qword_1EDD354D8);
              v118 = v242;
              v106(v242, v119, v117);
              v100 = v307;
              goto LABEL_91;
            }

            v113 = sub_1D9C7E7DC();

            if (v113)
            {
              goto LABEL_82;
            }
          }

          v114 = &qword_1EDD355A8;
          v100 = v307;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v114 = &qword_1EDD355A8;
          }

          goto LABEL_86;
        }

        v101 = sub_1D9C7E7DC();

        if (v101)
        {
          goto LABEL_66;
        }
      }

      v102 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v102 = &qword_1EDD355A8;
      }

      goto LABEL_70;
    }

    sub_1D9C7C76C();
    sub_1D9C7C8FC();
    v50(v37, v51);
    v53 = v270;
    sub_1D9AB8524(&v310);
    v270 = v53;
    if (!v53)
    {
      LODWORD(v305) = v310;
      if (qword_1EDD354B8 != -1)
      {
        swift_once();
      }

      v67 = byte_1EDD354C0;
      if (byte_1EDD354C0 != 1)
      {
        goto LABEL_104;
      }

      v68 = [objc_opt_self() mainBundle];
      v69 = [v68 bundleIdentifier];

      if (v69)
      {
        v70 = sub_1D9C7DC7C();
        v72 = v71;

        if (v70 == 0xD00000000000002BLL && v251 == v72)
        {

LABEL_96:
          v127 = &off_1ECB51BA8;
          if (qword_1ECB50988 != -1)
          {
            swift_once();
            v127 = &off_1ECB51BA8;
          }

LABEL_100:
          v128 = *(*v127 + 32);

          v129 = sub_1D9C7DC4C();
          LODWORD(v128) = [v128 BOOLForKey_];

          if (v128)
          {
            if (qword_1EDD2C988 != -1)
            {
              swift_once();
            }

            v130 = __swift_project_value_buffer(v47, qword_1EDD2C990);
            v131 = *v264;
            (*v264)(v244, v130, v47);
            goto LABEL_107;
          }

LABEL_104:
          if (qword_1EDD354D0 != -1)
          {
            swift_once();
          }

          v132 = __swift_project_value_buffer(v47, qword_1EDD354D8);
          v131 = *v264;
          (*v264)(v244, v132, v47);
          if ((v67 & 1) == 0)
          {
            goto LABEL_118;
          }

LABEL_107:
          v133 = [objc_opt_self() mainBundle];
          v134 = [v133 bundleIdentifier];

          if (v134)
          {
            v135 = sub_1D9C7DC7C();
            v137 = v136;

            if (v135 == 0xD00000000000002BLL && v251 == v137)
            {

LABEL_112:
              v139 = &off_1ECB51BA8;
              v140 = v243;
              if (qword_1ECB50988 != -1)
              {
                swift_once();
                v139 = &off_1ECB51BA8;
              }

LABEL_116:
              v141 = *(*v139 + 32);

              v142 = sub_1D9C7DC4C();
              LODWORD(v141) = [v141 BOOLForKey_];

              if (v141)
              {
                v143 = v140;
                v144 = v244;
LABEL_121:
                v131(v143, v144, v47);
                v145 = *v262;
                (*v262)(v244, v47);
                v146 = sub_1D9C7D8BC();
                v147 = sub_1D9C7E08C();
                if (os_log_type_enabled(v146, v147))
                {
                  v148 = swift_slowAlloc();
                  v149 = swift_slowAlloc();
                  *&v310 = v149;
                  *v148 = v237;
                  v150 = sub_1D9A15C94(v305);
                  v152 = sub_1D9A0E224(v150, v151, &v310);

                  *(v148 + 4) = v152;
                  _os_log_impl(&dword_1D9962000, v146, v147, "Section Result visual domain: %s", v148, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0Tm(v149);
                  MEMORY[0x1DA7405F0](v149, -1, -1);
                  MEMORY[0x1DA7405F0](v148, -1, -1);

                  v145(v243, v47);
                }

                else
                {

                  v145(v140, v47);
                }

                v100 = v307;
                v153 = v248;
                v154 = swift_isUniquelyReferenced_nonNull_native();
                v125 = v266;
                v124 = v306;
                if ((v154 & 1) == 0)
                {
                  v153 = sub_1D9AF8AB8(0, *(v153 + 2) + 1, 1, v153);
                }

                v248 = v153;
                v156 = *(v153 + 2);
                v155 = *(v153 + 3);
                if (v156 >= v155 >> 1)
                {
                  v248 = sub_1D9AF8AB8((v155 > 1), v156 + 1, 1, v248);
                }

                (*v245)(v261, v246);
                v157 = v248;
                *(v248 + 2) = v156 + 1;
                v157[v156 + 32] = v305;
                goto LABEL_129;
              }

LABEL_118:
              if (qword_1EDD354D0 != -1)
              {
                swift_once();
              }

              v144 = __swift_project_value_buffer(v47, qword_1EDD354D8);
              v140 = v243;
              v143 = v243;
              goto LABEL_121;
            }

            v138 = sub_1D9C7E7DC();

            if (v138)
            {
              goto LABEL_112;
            }
          }

          v139 = &qword_1EDD355A8;
          v140 = v243;
          if (qword_1EDD355A0 != -1)
          {
            swift_once();
            v139 = &qword_1EDD355A8;
          }

          goto LABEL_116;
        }

        v126 = sub_1D9C7E7DC();

        if (v126)
        {
          goto LABEL_96;
        }
      }

      v127 = &qword_1EDD355A8;
      if (qword_1EDD355A0 != -1)
      {
        swift_once();
        v127 = &qword_1EDD355A8;
      }

      goto LABEL_100;
    }

    v54 = v47;
    if (qword_1EDD354B8 != -1)
    {
      swift_once();
    }

    v55 = byte_1EDD354C0;
    if (byte_1EDD354C0 != 1)
    {
      goto LABEL_45;
    }

    v56 = [objc_opt_self() mainBundle];
    v57 = [v56 bundleIdentifier];

    if (v57)
    {
      v58 = sub_1D9C7DC7C();
      v60 = v59;

      if (v58 == 0xD00000000000002BLL && v251 == v60)
      {

LABEL_37:
        v74 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v74 = &off_1ECB51BA8;
        }

        goto LABEL_41;
      }

      v73 = sub_1D9C7E7DC();

      if (v73)
      {
        goto LABEL_37;
      }
    }

    v74 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v74 = &qword_1EDD355A8;
    }

LABEL_41:
    v75 = *(*v74 + 32);

    v76 = sub_1D9C7DC4C();
    LODWORD(v75) = [v75 BOOLForKey_];

    if (v75)
    {
      if (qword_1EDD2C988 != -1)
      {
        swift_once();
      }

      v77 = __swift_project_value_buffer(v47, qword_1EDD2C990);
      v78 = *v264;
      (*v264)(v252, v77, v47);
      goto LABEL_48;
    }

LABEL_45:
    if (qword_1EDD354D0 != -1)
    {
      swift_once();
    }

    v79 = __swift_project_value_buffer(v47, qword_1EDD354D8);
    v78 = *v264;
    (*v264)(v252, v79, v47);
    if ((v55 & 1) == 0)
    {
LABEL_59:
      if (qword_1EDD354D0 != -1)
      {
        swift_once();
      }

      v90 = __swift_project_value_buffer(v47, qword_1EDD354D8);
      v89 = v249;
      goto LABEL_62;
    }

LABEL_48:
    v80 = [objc_opt_self() mainBundle];
    v81 = [v80 bundleIdentifier];

    if (v81)
    {
      v82 = sub_1D9C7DC7C();
      v84 = v83;

      if (v82 == 0xD00000000000002BLL && v251 == v84)
      {

LABEL_53:
        v86 = &off_1ECB51BA8;
        if (qword_1ECB50988 != -1)
        {
          swift_once();
          v86 = &off_1ECB51BA8;
        }

        goto LABEL_57;
      }

      v85 = sub_1D9C7E7DC();

      if (v85)
      {
        goto LABEL_53;
      }
    }

    v86 = &qword_1EDD355A8;
    if (qword_1EDD355A0 != -1)
    {
      swift_once();
      v86 = &qword_1EDD355A8;
    }

LABEL_57:
    v87 = *(*v86 + 32);

    v88 = sub_1D9C7DC4C();
    LODWORD(v87) = [v87 BOOLForKey_];

    if (!v87)
    {
      goto LABEL_59;
    }

    v89 = v249;
    v90 = v252;
LABEL_62:
    v78(v89, v90, v47);
    v91 = *v262;
    (*v262)(v252, v47);
    v92 = v270;
    v93 = v270;
    v94 = sub_1D9C7D8BC();
    v95 = sub_1D9C7E0AC();

    if (os_log_type_enabled(v94, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      *v96 = v240;
      v98 = v92;
      v99 = _swift_stdlib_bridgeErrorToNSError();
      *(v96 + 4) = v99;
      *v97 = v99;
      _os_log_impl(&dword_1D9962000, v94, v95, "Section Result visual domain conversion non-critical error: %@", v96, 0xCu);
      sub_1D99A6AE0(v97, &qword_1ECB510E8);
      MEMORY[0x1DA7405F0](v97, -1, -1);
      MEMORY[0x1DA7405F0](v96, -1, -1);
    }

    v91(v249, v54);
    (*v245)(v261, v246);
    v270 = 0;
    v100 = v307;
LABEL_94:
    v124 = v306;
    v125 = v266;
LABEL_129:
    v158 = v269;
    sub_1D9C7C76C();
    v159 = sub_1D9C7C8EC();
    v124(v158, v125);
    v160 = *(v159 + 16);
    if (v160)
    {
      v161 = (*(v247 + 80) + 32) & ~*(v247 + 80);
      v260 = v159;
      v162 = v159 + v161;
      v306 = *(v247 + 72);
      v305 = *(v247 + 16);
      (v305)(v100, v159 + v161, v308);
      while (1)
      {
        sub_1D9C7C59C();
        if ((*v302)(v5, 1, v6) == 1)
        {
          sub_1D99A6AE0(v5, &qword_1ECB524C0);
        }

        else
        {
          v188 = v304;
          (*v297)(v304, v5, v6);
          v189 = v298;
          (*v296)(v298, v188, v6);
          v190 = (*v295)(v189, v6);
          if (v190 == v294)
          {
            (*v282)(v189, v6);
            (*v275)(v299, v189, v300);
            v292 = sub_1D9C7C2AC();
            v291 = v191;
            v290 = sub_1D9C7C5AC();
            v289 = v192;
            v288 = sub_1D9C7C2BC();
            v287 = v193;
            v286 = sub_1D9C7C26C();
            v285 = v194;
            v284 = sub_1D9C7C2CC();
            v196 = v195;
            v197 = sub_1D9C7C29C();
            v199 = v198;
            v200 = sub_1D9C7C28C();
            v202 = v201;
            v203 = v279;
            sub_1D9C7C27C();
            sub_1D9C7D31C();
            v205 = v204;
            (*v274)(v203, v280);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v309 = sub_1D9AF9834(0, *(v309 + 2) + 1, 1, v309);
            }

            v207 = *(v309 + 2);
            v206 = *(v309 + 3);
            if (v207 >= v206 >> 1)
            {
              v309 = sub_1D9AF9834((v206 > 1), v207 + 1, 1, v309);
            }

            *&v310 = v292;
            *(&v310 + 1) = v291;
            *&v311 = v290;
            *(&v311 + 1) = v289;
            *&v312 = v288;
            *(&v312 + 1) = v287;
            *&v313 = v286;
            *(&v313 + 1) = v285;
            *&v314 = v284;
            *(&v314 + 1) = v196;
            *&v315 = v197;
            *(&v315 + 1) = v199;
            *v316 = v200;
            *&v316[8] = v202;
            *&v316[16] = v205;
            sub_1D9A30668(&v310);
            (*v273)(v299, v300);
            v6 = v283;
            (*v293)(v304, v283);
            v163 = v309;
            *(v309 + 2) = v207 + 1;
LABEL_132:
            v164 = &v163[128 * v207];
            v165 = v310;
            v166 = v311;
            v167 = v313;
            *(v164 + 4) = v312;
            *(v164 + 5) = v167;
            *(v164 + 2) = v165;
            *(v164 + 3) = v166;
            v168 = v314;
            v169 = v315;
            v170 = *v316;
            *(v164 + 137) = *&v316[9];
            *(v164 + 7) = v169;
            *(v164 + 8) = v170;
            *(v164 + 6) = v168;
            v171 = v307;
            (*v301)(v307, v308);
            v5 = v281;
            goto LABEL_133;
          }

          if (v190 == v276)
          {
            (*v282)(v189, v6);
            (*v272)(v277, v189, v278);
            v292 = sub_1D9C7C2AC();
            v291 = v208;
            v209 = sub_1D9C7C5AC();
            v211 = v210;
            v212 = sub_1D9C7C2BC();
            v214 = v213;
            v215 = sub_1D9C7C26C();
            v217 = v216;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v309 = sub_1D9AF9834(0, *(v309 + 2) + 1, 1, v309);
            }

            v207 = *(v309 + 2);
            v218 = *(v309 + 3);
            if (v207 >= v218 >> 1)
            {
              v309 = sub_1D9AF9834((v218 > 1), v207 + 1, 1, v309);
            }

            *&v310 = v292;
            *(&v310 + 1) = v291;
            *&v311 = v209;
            *(&v311 + 1) = v211;
            *&v312 = v212;
            *(&v312 + 1) = v214;
            *&v313 = v215;
            *(&v313 + 1) = v217;
            sub_1D9A306C8(&v310);
            (*v271)(v277, v278);
            v219 = v283;
            (*v293)(v304, v283);
            v163 = v309;
            *(v309 + 2) = v207 + 1;
            v6 = v219;
            goto LABEL_132;
          }

          v220 = *v293;
          (*v293)(v304, v6);
          v220(v189, v6);
        }

        v172 = sub_1D9C7C5BC();
        v174 = v173;
        v175 = sub_1D9C7C5AC();
        v177 = v176;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v309 = sub_1D9AF9834(0, *(v309 + 2) + 1, 1, v309);
        }

        v179 = *(v309 + 2);
        v178 = *(v309 + 3);
        if (v179 >= v178 >> 1)
        {
          v309 = sub_1D9AF9834((v178 > 1), v179 + 1, 1, v309);
        }

        *&v310 = v172;
        *(&v310 + 1) = v174;
        *&v311 = v175;
        *(&v311 + 1) = v177;
        sub_1D9A30728(&v310);
        v171 = v307;
        (*v301)(v307, v308);
        v180 = v309;
        *(v309 + 2) = v179 + 1;
        v181 = &v180[128 * v179];
        v182 = v310;
        v183 = v311;
        v184 = v313;
        *(v181 + 4) = v312;
        *(v181 + 5) = v184;
        *(v181 + 2) = v182;
        *(v181 + 3) = v183;
        v185 = v314;
        v186 = v315;
        v187 = *v316;
        *(v181 + 137) = *&v316[9];
        *(v181 + 7) = v186;
        *(v181 + 8) = v187;
        *(v181 + 6) = v185;
LABEL_133:
        v162 += v306;
        if (!--v160)
        {
          break;
        }

        (v305)(v171, v162, v308);
      }
    }

    v46 = v263 + 1;
    v38 = v268;
    (*v253)(v268, v267);
    v13 = v255;
    v37 = v269;
    v45 = v259;
    result = v257;
    if (v46 == v258)
    {

      goto LABEL_157;
    }
  }

  __break(1u);
LABEL_167:
  __break(1u);
  return result;
}