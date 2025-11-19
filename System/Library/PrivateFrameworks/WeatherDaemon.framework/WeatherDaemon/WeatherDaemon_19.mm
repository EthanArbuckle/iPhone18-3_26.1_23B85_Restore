uint64_t sub_1B61CE83C@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v77 = a4;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  v65 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v72 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  v78 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();
  v72 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();

  v71 = sub_1B6220D74();
  v79 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = v73;
  v80 = v74;
  sub_1B6220D94();
  v74 = v39;

  sub_1B62206D4();
  type metadata accessor for DailyForecast();
  sub_1B60715EC(&qword_1EDAB07A0, type metadata accessor for DailyForecast);
  sub_1B60715EC(&qword_1EDAB0798, type metadata accessor for DailyForecast);
  v48 = v76;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v67 = v44;
  if (v48)
  {
    v51 = v77;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v76 = v43;
    v79 = *&v49;
    v80 = v50;
    sub_1B6220D94();

    v54 = sub_1B621D8F4();
    v55 = *(v54 - 8);
    v56 = v66;
    v57 = v77;
    (*(v55 + 16))(v66, v77, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAB0790, type metadata accessor for DailyForecast);
      *&v58 = COERCE_DOUBLE(sub_1B621D2E4());
      v60 = v59;

      v79 = *&v58;
      v80 = v60;
      v61 = v71;
      sub_1B6220D94();
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
    }

    else
    {
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
      v61 = v71;
    }

    v62 = v65;
    v63 = v76;
    *v65 = v78;
    v62[1] = v63;
    v64 = v72;
    v62[2] = v74;
    v62[3] = v64;
    v62[4] = v67;
    v62[5] = v46;
    v62[6] = v61;
  }

  return result;
}

uint64_t sub_1B61CF2D0@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v77 = a4;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  v65 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v72 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  v78 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();
  v72 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();

  v71 = sub_1B6220D74();
  v79 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = v73;
  v80 = v74;
  sub_1B6220D94();
  v74 = v39;

  sub_1B62206D4();
  type metadata accessor for HourlyForecast();
  sub_1B60715EC(&qword_1EDAB0750, type metadata accessor for HourlyForecast);
  sub_1B60715EC(&qword_1EDAB0748, type metadata accessor for HourlyForecast);
  v48 = v76;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v67 = v44;
  if (v48)
  {
    v51 = v77;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v76 = v43;
    v79 = *&v49;
    v80 = v50;
    sub_1B6220D94();

    v54 = sub_1B621D8F4();
    v55 = *(v54 - 8);
    v56 = v66;
    v57 = v77;
    (*(v55 + 16))(v66, v77, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAB0740, type metadata accessor for HourlyForecast);
      *&v58 = COERCE_DOUBLE(sub_1B621D2E4());
      v60 = v59;

      v79 = *&v58;
      v80 = v60;
      v61 = v71;
      sub_1B6220D94();
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
    }

    else
    {
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
      v61 = v71;
    }

    v62 = v65;
    v63 = v76;
    *v65 = v78;
    v62[1] = v63;
    v64 = v72;
    v62[2] = v74;
    v62[3] = v64;
    v62[4] = v67;
    v62[5] = v46;
    v62[6] = v61;
  }

  return result;
}

uint64_t sub_1B61CFD64@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v77 = a4;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  v65 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v72 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  v78 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();
  v72 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();

  v71 = sub_1B6220D74();
  v79 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = v73;
  v80 = v74;
  sub_1B6220D94();
  v74 = v39;

  sub_1B62206D4();
  type metadata accessor for NextHourForecast();
  sub_1B60715EC(&qword_1EDAB0088, type metadata accessor for NextHourForecast);
  sub_1B60715EC(&qword_1EDAB0080, type metadata accessor for NextHourForecast);
  v48 = v76;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v67 = v44;
  if (v48)
  {
    v51 = v77;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v76 = v43;
    v79 = *&v49;
    v80 = v50;
    sub_1B6220D94();

    v54 = sub_1B621D8F4();
    v55 = *(v54 - 8);
    v56 = v66;
    v57 = v77;
    (*(v55 + 16))(v66, v77, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAB0078, type metadata accessor for NextHourForecast);
      *&v58 = COERCE_DOUBLE(sub_1B621D2E4());
      v60 = v59;

      v79 = *&v58;
      v80 = v60;
      v61 = v71;
      sub_1B6220D94();
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
    }

    else
    {
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
      v61 = v71;
    }

    v62 = v65;
    v63 = v76;
    *v65 = v78;
    v62[1] = v63;
    v64 = v72;
    v62[2] = v74;
    v62[3] = v64;
    v62[4] = v67;
    v62[5] = v46;
    v62[6] = v61;
  }

  return result;
}

uint64_t sub_1B61D07F8@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v77 = a4;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  v65 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v72 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  v78 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();
  v72 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();

  v71 = sub_1B6220D74();
  v79 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = v73;
  v80 = v74;
  sub_1B6220D94();
  v74 = v39;

  sub_1B62206D4();
  type metadata accessor for PeriodicForecasts();
  sub_1B60715EC(&qword_1EB927BA8, type metadata accessor for PeriodicForecasts);
  sub_1B60715EC(&qword_1EB927BB0, type metadata accessor for PeriodicForecasts);
  v48 = v76;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v67 = v44;
  if (v48)
  {
    v51 = v77;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v76 = v43;
    v79 = *&v49;
    v80 = v50;
    sub_1B6220D94();

    v54 = sub_1B621D8F4();
    v55 = *(v54 - 8);
    v56 = v66;
    v57 = v77;
    (*(v55 + 16))(v66, v77, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(qword_1EDAAEE98, type metadata accessor for PeriodicForecasts);
      *&v58 = COERCE_DOUBLE(sub_1B621D2E4());
      v60 = v59;

      v79 = *&v58;
      v80 = v60;
      v61 = v71;
      sub_1B6220D94();
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
    }

    else
    {
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
      v61 = v71;
    }

    v62 = v65;
    v63 = v76;
    *v65 = v78;
    v62[1] = v63;
    v64 = v72;
    v62[2] = v74;
    v62[3] = v64;
    v62[4] = v67;
    v62[5] = v46;
    v62[6] = v61;
  }

  return result;
}

uint64_t sub_1B61D128C@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v77 = a4;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  v65 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v72 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  v78 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();
  v72 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();

  v71 = sub_1B6220D74();
  v79 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = v73;
  v80 = v74;
  sub_1B6220D94();
  v74 = v39;

  sub_1B62206D4();
  type metadata accessor for LocationInfo();
  sub_1B60715EC(&qword_1EDAAFAB8, type metadata accessor for LocationInfo);
  sub_1B60715EC(&qword_1EDAAFAB0, type metadata accessor for LocationInfo);
  v48 = v76;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v67 = v44;
  if (v48)
  {
    v51 = v77;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v76 = v43;
    v79 = *&v49;
    v80 = v50;
    sub_1B6220D94();

    v54 = sub_1B621D8F4();
    v55 = *(v54 - 8);
    v56 = v66;
    v57 = v77;
    (*(v55 + 16))(v66, v77, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAAFAA0, type metadata accessor for LocationInfo);
      *&v58 = COERCE_DOUBLE(sub_1B621D2E4());
      v60 = v59;

      v79 = *&v58;
      v80 = v60;
      v61 = v71;
      sub_1B6220D94();
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
    }

    else
    {
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
      v61 = v71;
    }

    v62 = v65;
    v63 = v76;
    *v65 = v78;
    v62[1] = v63;
    v64 = v72;
    v62[2] = v74;
    v62[3] = v64;
    v62[4] = v67;
    v62[5] = v46;
    v62[6] = v61;
  }

  return result;
}

uint64_t sub_1B61D1D20@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>)
{
  v77 = a3;
  v74 = a1;
  v75 = a2;
  v67 = a4;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v68 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v73 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v71 = &v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v70 = &v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v69 = &v66 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v66 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v66 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v72 = &v66 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v66 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v66 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v66 - v37;
  v80 = a7;
  v81 = a8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  v82 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v39);
  swift_allocObject();

  v40 = sub_1B6220D74();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v42 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v43 = *MEMORY[0x1E69D61F8];
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  v45 = *(*(v44 - 8) + 104);
  v45(v27, v43, v44);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v44);
  static WeatherClock.date.getter();
  v45(v24, v43, v44);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();
  v72 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v44);
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v44);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v48 = sub_1B6220D74();
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v49);
  __swift_storeEnumTagSinglePayload(v73, 1, 1, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();

  v73 = sub_1B6220D74();
  v78 = round(a5 * 1000.0) / 1000.0;
  LOBYTE(v79) = 0;
  sub_1B6220D94();

  v78 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v79) = 0;
  sub_1B6220D94();

  v78 = v74;
  v79 = v75;
  sub_1B6220D94();

  sub_1B62206D4();
  type metadata accessor for CLLocationCoordinate2D(0);
  sub_1B60715EC(&qword_1EB927BB8, type metadata accessor for CLLocationCoordinate2D);
  sub_1B60715EC(&qword_1EB927BC0, type metadata accessor for CLLocationCoordinate2D);
  v50 = v76;
  *&v51 = COERCE_DOUBLE(sub_1B62206C4());
  if (v50)
  {

    v53 = sub_1B621D8F4();
    (*(*(v53 - 8) + 8))(v77, v53);
  }

  else
  {
    v75 = v40;
    v78 = *&v51;
    v79 = v52;
    sub_1B6220D94();

    v55 = sub_1B621D8F4();
    v56 = *(v55 - 8);
    v57 = v68;
    v58 = v77;
    (*(v56 + 16))(v68, v77, v55);
    __swift_storeEnumTagSinglePayload(v57, 0, 1, v55);
    v76 = v46;
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EB925E20, type metadata accessor for CLLocationCoordinate2D);
      *&v59 = COERCE_DOUBLE(sub_1B621D2E4());
      v61 = v60;

      v78 = *&v59;
      v79 = v61;
      v62 = v73;
      sub_1B6220D94();
      result = (*(v56 + 8))(v77, v55);
      v63 = v75;
    }

    else
    {
      result = (*(v56 + 8))(v58, v55);
      v63 = v75;
      v62 = v73;
    }

    v64 = v67;
    *v67 = v82;
    v64[1] = v63;
    v65 = v72;
    v64[2] = v42;
    v64[3] = v65;
    v64[4] = v76;
    v64[5] = v48;
    v64[6] = v62;
  }

  return result;
}

uint64_t sub_1B61D2768@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v77 = a4;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  v65 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v72 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  v78 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();
  v72 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();

  v71 = sub_1B6220D74();
  v79 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = v73;
  v80 = v74;
  sub_1B6220D94();
  v74 = v39;

  sub_1B62206D4();
  type metadata accessor for MarineForecast();
  sub_1B60715EC(&qword_1EB927BC8, type metadata accessor for MarineForecast);
  sub_1B60715EC(&qword_1EB927BD0, type metadata accessor for MarineForecast);
  v48 = v76;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v67 = v44;
  if (v48)
  {
    v51 = v77;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v76 = v43;
    v79 = *&v49;
    v80 = v50;
    sub_1B6220D94();

    v54 = sub_1B621D8F4();
    v55 = *(v54 - 8);
    v56 = v66;
    v57 = v77;
    (*(v55 + 16))(v66, v77, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&unk_1EDAAEF88, type metadata accessor for MarineForecast);
      *&v58 = COERCE_DOUBLE(sub_1B621D2E4());
      v60 = v59;

      v79 = *&v58;
      v80 = v60;
      v61 = v71;
      sub_1B6220D94();
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
    }

    else
    {
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
      v61 = v71;
    }

    v62 = v65;
    v63 = v76;
    *v65 = v78;
    v62[1] = v63;
    v64 = v72;
    v62[2] = v74;
    v62[3] = v64;
    v62[4] = v67;
    v62[5] = v46;
    v62[6] = v61;
  }

  return result;
}

uint64_t sub_1B61D31FC@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v77 = a4;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  v65 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v72 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  v78 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();
  v72 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();

  v71 = sub_1B6220D74();
  v79 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = v73;
  v80 = v74;
  sub_1B6220D94();
  v74 = v39;

  sub_1B62206D4();
  type metadata accessor for News();
  sub_1B60715EC(&qword_1EDAAEC10, type metadata accessor for News);
  sub_1B60715EC(&qword_1EDAAEC08, type metadata accessor for News);
  v48 = v76;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v67 = v44;
  if (v48)
  {
    v51 = v77;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v76 = v43;
    v79 = *&v49;
    v80 = v50;
    sub_1B6220D94();

    v54 = sub_1B621D8F4();
    v55 = *(v54 - 8);
    v56 = v66;
    v57 = v77;
    (*(v55 + 16))(v66, v77, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(qword_1EDAAF758, type metadata accessor for News);
      *&v58 = COERCE_DOUBLE(sub_1B621D2E4());
      v60 = v59;

      v79 = *&v58;
      v80 = v60;
      v61 = v71;
      sub_1B6220D94();
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
    }

    else
    {
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
      v61 = v71;
    }

    v62 = v65;
    v63 = v76;
    *v65 = v78;
    v62[1] = v63;
    v64 = v72;
    v62[2] = v74;
    v62[3] = v64;
    v62[4] = v67;
    v62[5] = v46;
    v62[6] = v61;
  }

  return result;
}

uint64_t sub_1B61D3C90@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v77 = a4;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  v65 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v72 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  v78 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();
  v72 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();

  v71 = sub_1B6220D74();
  v79 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = v73;
  v80 = v74;
  sub_1B6220D94();
  v74 = v39;

  sub_1B62206D4();
  type metadata accessor for TideEvents();
  sub_1B60715EC(&qword_1EB927BD8, type metadata accessor for TideEvents);
  sub_1B60715EC(&qword_1EB927BE0, type metadata accessor for TideEvents);
  v48 = v76;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v67 = v44;
  if (v48)
  {
    v51 = v77;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v76 = v43;
    v79 = *&v49;
    v80 = v50;
    sub_1B6220D94();

    v54 = sub_1B621D8F4();
    v55 = *(v54 - 8);
    v56 = v66;
    v57 = v77;
    (*(v55 + 16))(v66, v77, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAAF020, type metadata accessor for TideEvents);
      *&v58 = COERCE_DOUBLE(sub_1B621D2E4());
      v60 = v59;

      v79 = *&v58;
      v80 = v60;
      v61 = v71;
      sub_1B6220D94();
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
    }

    else
    {
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
      v61 = v71;
    }

    v62 = v65;
    v63 = v76;
    *v65 = v78;
    v62[1] = v63;
    v64 = v72;
    v62[2] = v74;
    v62[3] = v64;
    v62[4] = v67;
    v62[5] = v46;
    v62[6] = v61;
  }

  return result;
}

uint64_t sub_1B61D4724@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v77 = a4;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  v65 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v72 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  v78 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();
  v72 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();

  v71 = sub_1B6220D74();
  v79 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = v73;
  v80 = v74;
  sub_1B6220D94();
  v74 = v39;

  sub_1B62206D4();
  type metadata accessor for WeatherAlerts();
  sub_1B60715EC(&qword_1EDAAFB10, type metadata accessor for WeatherAlerts);
  sub_1B60715EC(&qword_1EDAAFB08, type metadata accessor for WeatherAlerts);
  v48 = v76;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v67 = v44;
  if (v48)
  {
    v51 = v77;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v76 = v43;
    v79 = *&v49;
    v80 = v50;
    sub_1B6220D94();

    v54 = sub_1B621D8F4();
    v55 = *(v54 - 8);
    v56 = v66;
    v57 = v77;
    (*(v55 + 16))(v66, v77, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAAFB00, type metadata accessor for WeatherAlerts);
      *&v58 = COERCE_DOUBLE(sub_1B621D2E4());
      v60 = v59;

      v79 = *&v58;
      v80 = v60;
      v61 = v71;
      sub_1B6220D94();
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
    }

    else
    {
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
      v61 = v71;
    }

    v62 = v65;
    v63 = v76;
    *v65 = v78;
    v62[1] = v63;
    v64 = v72;
    v62[2] = v74;
    v62[3] = v64;
    v62[4] = v67;
    v62[5] = v46;
    v62[6] = v61;
  }

  return result;
}

uint64_t sub_1B61D51B8@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v77 = a4;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  v65 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v72 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  v78 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();
  v72 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();

  v71 = sub_1B6220D74();
  v79 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = v73;
  v80 = v74;
  sub_1B6220D94();
  v74 = v39;

  sub_1B62206D4();
  type metadata accessor for WeatherChange();
  sub_1B60715EC(&qword_1EDAB0330, type metadata accessor for WeatherChange);
  sub_1B60715EC(&qword_1EDAB0328, type metadata accessor for WeatherChange);
  v48 = v76;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v67 = v44;
  if (v48)
  {
    v51 = v77;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v76 = v43;
    v79 = *&v49;
    v80 = v50;
    sub_1B6220D94();

    v54 = sub_1B621D8F4();
    v55 = *(v54 - 8);
    v56 = v66;
    v57 = v77;
    (*(v55 + 16))(v66, v77, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAB0320, type metadata accessor for WeatherChange);
      *&v58 = COERCE_DOUBLE(sub_1B621D2E4());
      v60 = v59;

      v79 = *&v58;
      v80 = v60;
      v61 = v71;
      sub_1B6220D94();
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
    }

    else
    {
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
      v61 = v71;
    }

    v62 = v65;
    v63 = v76;
    *v65 = v78;
    v62[1] = v63;
    v64 = v72;
    v62[2] = v74;
    v62[3] = v64;
    v62[4] = v67;
    v62[5] = v46;
    v62[6] = v61;
  }

  return result;
}

uint64_t sub_1B61D5C4C@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v77 = a4;
  v74 = a2;
  v75 = a3;
  v73 = a1;
  v65 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v66 = &v65 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v71 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v70 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v65 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v65 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v72 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v65 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v65 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v65 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  v78 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v36);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v36);
  swift_allocObject();

  v37 = sub_1B6220D74();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v38);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v39 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v40 = *MEMORY[0x1E69D61F8];
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  v42 = *(*(v41 - 8) + 104);
  v42(v24, v40, v41);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v41);
  static WeatherClock.date.getter();
  v42(v21, v40, v41);
  v43 = v37;
  __swift_storeEnumTagSinglePayload(v21, 0, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();
  v72 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v41);
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v41);
  swift_allocObject();
  v44 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();

  v71 = sub_1B6220D74();
  v79 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v80) = 0;
  sub_1B6220D94();

  v79 = v73;
  v80 = v74;
  sub_1B6220D94();
  v74 = v39;

  sub_1B62206D4();
  type metadata accessor for WeatherComparisons();
  sub_1B60715EC(&qword_1EDAAF418, type metadata accessor for WeatherComparisons);
  sub_1B60715EC(&qword_1EDAAF410, type metadata accessor for WeatherComparisons);
  v48 = v76;
  *&v49 = COERCE_DOUBLE(sub_1B62206C4());
  v67 = v44;
  if (v48)
  {
    v51 = v77;

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v51, v52);
    sub_1B620B850();
  }

  else
  {
    v76 = v43;
    v79 = *&v49;
    v80 = v50;
    sub_1B6220D94();

    v54 = sub_1B621D8F4();
    v55 = *(v54 - 8);
    v56 = v66;
    v57 = v77;
    (*(v55 + 16))(v66, v77, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAAFB58, type metadata accessor for WeatherComparisons);
      *&v58 = COERCE_DOUBLE(sub_1B621D2E4());
      v60 = v59;

      v79 = *&v58;
      v80 = v60;
      v61 = v71;
      sub_1B6220D94();
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
    }

    else
    {
      (*(v55 + 8))(v57, v54);
      result = sub_1B620B850();
      v61 = v71;
    }

    v62 = v65;
    v63 = v76;
    *v65 = v78;
    v62[1] = v63;
    v64 = v72;
    v62[2] = v74;
    v62[3] = v64;
    v62[4] = v67;
    v62[5] = v46;
    v62[6] = v61;
  }

  return result;
}

uint64_t sub_1B61D66E0@<X0>(double a1@<X0>, uint64_t a2@<X1>, double a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v76 = a4;
  v73 = a1;
  v74 = a2;
  v66 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v67 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v71 = &v65 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v70 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v69 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v65 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v65 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v68 = &v65 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v65 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v65 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v65 - v35;
  v80 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  v77 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v36, 1, 1, v37);
  __swift_storeEnumTagSinglePayload(v33, 1, 1, v37);
  swift_allocObject();

  v38 = sub_1B6220D74();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v40 = sub_1B6220D74();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v41 = *MEMORY[0x1E69D61F8];
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  v43 = *(*(v42 - 8) + 104);
  v43(v25, v41, v42);
  __swift_storeEnumTagSinglePayload(v25, 0, 1, v42);
  static WeatherClock.date.getter();
  v43(v22, v41, v42);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();
  v44 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v42);
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v42);
  swift_allocObject();
  v68 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v71, 1, 1, v47);
  __swift_storeEnumTagSinglePayload(v72, 1, 1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();

  v48 = sub_1B6220D74();
  v78 = round(a6 * 1000.0) / 1000.0;
  LOBYTE(v79) = 0;
  sub_1B6220D94();

  v78 = round(a7 * 1000.0) / 1000.0;
  LOBYTE(v79) = 0;
  sub_1B6220D94();
  v72 = v38;

  v78 = v73;
  v79 = v74;
  sub_1B6220D94();
  v74 = v40;

  sub_1B62206D4();
  sub_1B620D2D8();
  sub_1B620D32C();
  v49 = v75;
  *&v50 = COERCE_DOUBLE(sub_1B62206C4());
  if (v49)
  {

    v52 = sub_1B621D8F4();
    (*(*(v52 - 8) + 8))(v76, v52);
  }

  else
  {
    v75 = v44;
    v78 = *&v50;
    v79 = v51;
    sub_1B6220D94();

    v54 = sub_1B621D8F4();
    v55 = *(v54 - 8);
    v56 = v67;
    v57 = v76;
    (*(v55 + 16))(v67, v76, v54);
    __swift_storeEnumTagSinglePayload(v56, 0, 1, v54);
    v58 = v68;
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60AEF3C();
      *&v59 = COERCE_DOUBLE(sub_1B621D2E4());
      v61 = v60;
      v73 = v80;

      v78 = *&v59;
      v79 = v61;
      sub_1B6220D94();
      result = (*(v55 + 8))(v76, v54);
    }

    else
    {
      (*(v55 + 8))(v57, v54);
    }

    v62 = v66;
    v63 = v72;
    *v66 = v77;
    v62[1] = v63;
    v64 = v75;
    v62[2] = v74;
    v62[3] = v64;
    v62[4] = v58;
    v62[5] = v46;
    v62[6] = v48;
  }

  return result;
}

void sub_1B61D70BC()
{
  OUTLINED_FUNCTION_85_1();
  v124 = v0;
  v125 = v4;
  v122 = v5;
  v123 = v6;
  OUTLINED_FUNCTION_58();
  v116 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  v117 = &v116 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  v121 = v13;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_40_0();
  v120 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  v17 = OUTLINED_FUNCTION_0(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_3();
  v119 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_40_8(v20, v21, v22, v23, v24, v25, v26, v27, v116);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  v29 = OUTLINED_FUNCTION_0(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_10();
  v32 = v30 - v31;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_75_2();
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  v35 = OUTLINED_FUNCTION_0(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2_3();
  v118 = v36;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_126_1();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  v39 = OUTLINED_FUNCTION_0(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_24_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  OUTLINED_FUNCTION_24_15();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  OUTLINED_FUNCTION_24_15();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  OUTLINED_FUNCTION_249();
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_20_19();
  v126 = sub_1B6220D74();
  OUTLINED_FUNCTION_24_15();
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v53);
  OUTLINED_FUNCTION_24_15();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v57);
  swift_allocObject();
  OUTLINED_FUNCTION_222();

  OUTLINED_FUNCTION_20_19();
  v58 = sub_1B6220D74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v49);
  v62 = v118;
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_176_0();

  OUTLINED_FUNCTION_20_19();
  sub_1B6220D74();
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherClock();
  OUTLINED_FUNCTION_222();

  static WeatherClock.date.getter();
  v66 = *MEMORY[0x1E69D61F8];
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  OUTLINED_FUNCTION_9();
  v69 = *(v68 + 104);
  v69(v1, v66, v67);
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v70, v71, v72, v67);
  static WeatherClock.date.getter();
  v69(v32, v66, v67);
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v73, v74, v75, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v76 = sub_1B6220D74();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v67);
  v80 = OUTLINED_FUNCTION_45_6();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v67);
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v118 = sub_1B6220D74();
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  v84 = OUTLINED_FUNCTION_45_6();
  __swift_storeEnumTagSinglePayload(v84, v85, v86, v83);
  v87 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v87, v88, v89, v83);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v90 = sub_1B6220D74();
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v91);
  v95 = OUTLINED_FUNCTION_45_6();
  __swift_storeEnumTagSinglePayload(v95, v96, v97, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_467();

  OUTLINED_FUNCTION_7_34();
  v98 = sub_1B6220D74();
  OUTLINED_FUNCTION_6_35(v3 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_6_35(v2 * 1000.0);
  sub_1B6220D94();
  v121 = v58;

  v127 = v122;
  v128 = v123;
  sub_1B6220D94();

  sub_1B62206D4();
  sub_1B620D1DC();
  sub_1B620D230();
  v99 = v124;
  v100 = sub_1B62206C4();
  if (v99)
  {

    sub_1B621D8F4();
    OUTLINED_FUNCTION_31();
    (*(v102 + 8))(v125);
  }

  else
  {
    v124 = v76;
    v127 = v100;
    v128 = v101;
    sub_1B6220D94();

    v103 = sub_1B621D8F4();
    v104 = *(v103 - 8);
    v105 = v125;
    (*(v104 + 16))(v117, v125, v103);
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v106, v107, v108, v103);
    v109 = v118;
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B620D284();
      v110 = sub_1B621D2E4();
      v112 = v111;

      v127 = v110;
      v128 = v112;
      sub_1B6220D94();
      (*(v104 + 8))(v125, v103);
    }

    else
    {
      (*(v104 + 8))(v105, v103);
    }

    v113 = v116;
    v114 = v121;
    *v116 = v126;
    v113[1] = v114;
    v115 = v124;
    v113[2] = v62;
    v113[3] = v115;
    v113[4] = v109;
    v113[5] = v90;
    v113[6] = v98;
  }

  OUTLINED_FUNCTION_84_3();
}

void sub_1B61D78A4()
{
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_41_5(v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_52_5(v10, v75);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40_8(v14, v15, v16, v17, v18, v19, v20, v21, v76);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  v23 = OUTLINED_FUNCTION_0(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_51_5(v25, v26, v27, v28, v29, v30, v31, v32, v77);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  v34 = OUTLINED_FUNCTION_0(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_31();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_75_2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  v37 = OUTLINED_FUNCTION_0(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_78_3();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  v40 = OUTLINED_FUNCTION_0(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_61_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  OUTLINED_FUNCTION_11_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  OUTLINED_FUNCTION_249();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_11_25();
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_156_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  OUTLINED_FUNCTION_176_0();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  v46 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_135();

  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_48();

  static WeatherClock.date.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  OUTLINED_FUNCTION_9();
  v50 = *(v49 + 104);
  v51 = OUTLINED_FUNCTION_120_1();
  v50(v51);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  static WeatherClock.date.getter();
  v56 = OUTLINED_FUNCTION_119_1();
  v50(v56);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v61 = OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_19_19(v61);
  OUTLINED_FUNCTION_2_4();
  v62 = OUTLINED_FUNCTION_168_0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  OUTLINED_FUNCTION_26_14(v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_224();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  OUTLINED_FUNCTION_27_13(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_7_34();
  sub_1B6220D74();
  OUTLINED_FUNCTION_6_35(v2 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_6_35(v1 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_223_0();
  sub_1B62206D4();
  OUTLINED_FUNCTION_8_18();
  type metadata accessor for HourlyWeatherStatistics();
  v65 = sub_1B60715EC(&qword_1EB927C18, type metadata accessor for HourlyWeatherStatistics);
  OUTLINED_FUNCTION_145_0(&qword_1EB927C20);
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_196_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_102_2(v66, v67);

    sub_1B621D8F4();
    OUTLINED_FUNCTION_73_4();
    v69 = OUTLINED_FUNCTION_22_12();
    v70(v69);
    OUTLINED_FUNCTION_47_4();
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EB927C28, type metadata accessor for HourlyWeatherStatistics);
      OUTLINED_FUNCTION_100_2();
      sub_1B621D2E4();
      OUTLINED_FUNCTION_189_0();
      if (v65)
      {
        OUTLINED_FUNCTION_112_2();
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_139_0();
      v73 = OUTLINED_FUNCTION_46_6();
      v74(v73);
      OUTLINED_FUNCTION_35_7();
      sub_1B620B850();
    }

    else
    {
      v71 = OUTLINED_FUNCTION_46_6();
      v72(v71);
      OUTLINED_FUNCTION_35_7();
      sub_1B620B850();
    }

    OUTLINED_FUNCTION_16_24();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_195_0();
LABEL_3:

  sub_1B621D8F4();
  OUTLINED_FUNCTION_31();
  (*(v68 + 8))(v62);
  OUTLINED_FUNCTION_35_7();
  sub_1B620B850();

LABEL_10:
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_84_3();
}

void sub_1B61D7F48()
{
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_41_5(v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_52_5(v10, v75);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40_8(v14, v15, v16, v17, v18, v19, v20, v21, v76);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  v23 = OUTLINED_FUNCTION_0(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_51_5(v25, v26, v27, v28, v29, v30, v31, v32, v77);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  v34 = OUTLINED_FUNCTION_0(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_31();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_75_2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  v37 = OUTLINED_FUNCTION_0(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_78_3();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  v40 = OUTLINED_FUNCTION_0(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_61_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  OUTLINED_FUNCTION_11_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  OUTLINED_FUNCTION_249();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_11_25();
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_156_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  OUTLINED_FUNCTION_176_0();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  v46 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_135();

  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_48();

  static WeatherClock.date.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  OUTLINED_FUNCTION_9();
  v50 = *(v49 + 104);
  v51 = OUTLINED_FUNCTION_120_1();
  v50(v51);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  static WeatherClock.date.getter();
  v56 = OUTLINED_FUNCTION_119_1();
  v50(v56);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v61 = OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_19_19(v61);
  OUTLINED_FUNCTION_2_4();
  v62 = OUTLINED_FUNCTION_168_0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  OUTLINED_FUNCTION_26_14(v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_224();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  OUTLINED_FUNCTION_27_13(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_7_34();
  sub_1B6220D74();
  OUTLINED_FUNCTION_6_35(v2 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_6_35(v1 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_223_0();
  sub_1B62206D4();
  OUTLINED_FUNCTION_8_18();
  type metadata accessor for MonthlyWeatherStatistics();
  v65 = sub_1B60715EC(&qword_1EB927C08, type metadata accessor for MonthlyWeatherStatistics);
  OUTLINED_FUNCTION_145_0(&qword_1EB927C10);
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_196_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_102_2(v66, v67);

    sub_1B621D8F4();
    OUTLINED_FUNCTION_73_4();
    v69 = OUTLINED_FUNCTION_22_12();
    v70(v69);
    OUTLINED_FUNCTION_47_4();
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EB927550, type metadata accessor for MonthlyWeatherStatistics);
      OUTLINED_FUNCTION_100_2();
      sub_1B621D2E4();
      OUTLINED_FUNCTION_189_0();
      if (v65)
      {
        OUTLINED_FUNCTION_112_2();
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_139_0();
      v73 = OUTLINED_FUNCTION_46_6();
      v74(v73);
      OUTLINED_FUNCTION_34_8();
      sub_1B620B850();
    }

    else
    {
      v71 = OUTLINED_FUNCTION_46_6();
      v72(v71);
      OUTLINED_FUNCTION_34_8();
      sub_1B620B850();
    }

    OUTLINED_FUNCTION_16_24();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_195_0();
LABEL_3:

  sub_1B621D8F4();
  OUTLINED_FUNCTION_31();
  (*(v68 + 8))(v62);
  OUTLINED_FUNCTION_34_8();
  sub_1B620B850();

LABEL_10:
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_84_3();
}

void sub_1B61D85EC()
{
  OUTLINED_FUNCTION_85_1();
  v110 = v5;
  OUTLINED_FUNCTION_58();
  v103 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_0(v7);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_52_5(v9, v103);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  v11 = OUTLINED_FUNCTION_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_40_8(v13, v14, v15, v16, v17, v18, v19, v20, v104);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  v22 = OUTLINED_FUNCTION_0(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_51_5(v24, v25, v26, v27, v28, v29, v30, v31, v105);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  v33 = OUTLINED_FUNCTION_0(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_92();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_126_1();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  v36 = OUTLINED_FUNCTION_0(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_78_3();
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  v39 = OUTLINED_FUNCTION_0(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_61_1();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  v42 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  v45 = OUTLINED_FUNCTION_33_7();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_20_19();
  v111 = OUTLINED_FUNCTION_156_0();
  v48 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v41);
  v51 = OUTLINED_FUNCTION_33_7();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v41);
  swift_allocObject();

  OUTLINED_FUNCTION_20_19();
  v54 = OUTLINED_FUNCTION_156_0();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v55);
  v59 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v59, v60, v61, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_135();

  OUTLINED_FUNCTION_20_19();
  v62 = OUTLINED_FUNCTION_187_0();
  type metadata accessor for WeatherClock();

  static WeatherClock.date.getter();
  v63 = *MEMORY[0x1E69D61F8];
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  OUTLINED_FUNCTION_9();
  v66 = *(v65 + 104);
  v66(v2, v63, v64);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  static WeatherClock.date.getter();
  v66(v1, v63, v64);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v75 = sub_1B6220D74();
  OUTLINED_FUNCTION_24_15();
  __swift_storeEnumTagSinglePayload(v76, v77, v78, v79);
  OUTLINED_FUNCTION_24_15();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v108 = sub_1B6220D74();
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  v85 = OUTLINED_FUNCTION_45_6();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v84);
  v88 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v88, v89, v90, v84);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v91 = sub_1B6220D74();
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  v93 = OUTLINED_FUNCTION_45_6();
  __swift_storeEnumTagSinglePayload(v93, v94, v95, v92);
  v96 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v96, v97, v98, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_222();

  v109 = sub_1B6220D74();
  OUTLINED_FUNCTION_171_0(v4 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_171_0(v3 * 1000.0);
  sub_1B6220D94();

  sub_1B6220D94();

  sub_1B62206D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB927110);
  sub_1B620DCD8(&qword_1EDAAEAD8);
  sub_1B620DCD8(&qword_1EDAAEAD0);
  sub_1B62206C4();
  if (v0)
  {

    sub_1B621D8F4();
    OUTLINED_FUNCTION_31();
    (*(v99 + 8))(v110);
  }

  else
  {
    sub_1B6220D94();

    sub_1B621D8F4();
    OUTLINED_FUNCTION_73_4();
    v101 = v100;
    (*(v100 + 16))(v107, v110, v75);
    OUTLINED_FUNCTION_47_4();
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B620DD4C();
      sub_1B621D2E4();

      v102 = v109;
      sub_1B6220D94();
      (*(v101 + 8))(v110, v75);
    }

    else
    {
      (*(v101 + 8))(v110, v75);

      v102 = v109;
    }

    *v106 = v111;
    v106[1] = v54;
    v106[2] = v62;
    v106[3] = v75;
    v106[4] = v108;
    v106[5] = v91;
    v106[6] = v102;
  }

  OUTLINED_FUNCTION_84_3();
}

void sub_1B61D8DFC()
{
  OUTLINED_FUNCTION_85_1();
  OUTLINED_FUNCTION_41_5(v3, v4, v5, v6, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_52_5(v10, v75);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_40_8(v14, v15, v16, v17, v18, v19, v20, v21, v76);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  v23 = OUTLINED_FUNCTION_0(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_51_5(v25, v26, v27, v28, v29, v30, v31, v32, v77);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  v34 = OUTLINED_FUNCTION_0(v33);
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_9_31();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_75_2();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  v37 = OUTLINED_FUNCTION_0(v36);
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_78_3();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  v40 = OUTLINED_FUNCTION_0(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_61_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  OUTLINED_FUNCTION_11_25();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  OUTLINED_FUNCTION_249();
  v42 = swift_allocObject();
  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_156_0();
  OUTLINED_FUNCTION_11_25();
  OUTLINED_FUNCTION_151_0();
  OUTLINED_FUNCTION_48();

  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_156_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  OUTLINED_FUNCTION_176_0();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v42);
  v46 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_135();

  OUTLINED_FUNCTION_20_19();
  OUTLINED_FUNCTION_187_0();
  OUTLINED_FUNCTION_225_0();
  OUTLINED_FUNCTION_48();

  static WeatherClock.date.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  OUTLINED_FUNCTION_9();
  v50 = *(v49 + 104);
  v51 = OUTLINED_FUNCTION_120_1();
  v50(v51);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  static WeatherClock.date.getter();
  v56 = OUTLINED_FUNCTION_119_1();
  v50(v56);
  OUTLINED_FUNCTION_63_4();
  __swift_storeEnumTagSinglePayload(v57, v58, v59, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  v61 = OUTLINED_FUNCTION_168_0();
  OUTLINED_FUNCTION_19_19(v61);
  OUTLINED_FUNCTION_2_4();
  v62 = OUTLINED_FUNCTION_168_0();
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  OUTLINED_FUNCTION_26_14(v63);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_2_4();
  OUTLINED_FUNCTION_224();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  OUTLINED_FUNCTION_27_13(v64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_248();

  OUTLINED_FUNCTION_7_34();
  sub_1B6220D74();
  OUTLINED_FUNCTION_6_35(v2 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_6_35(v1 * 1000.0);
  sub_1B6220D94();

  OUTLINED_FUNCTION_104_2();
  OUTLINED_FUNCTION_223_0();
  sub_1B62206D4();
  OUTLINED_FUNCTION_8_18();
  type metadata accessor for DailyWeatherStatistics();
  v65 = sub_1B60715EC(&qword_1EB927C48, type metadata accessor for DailyWeatherStatistics);
  OUTLINED_FUNCTION_145_0(&qword_1EB927C50);
  OUTLINED_FUNCTION_70_3();
  OUTLINED_FUNCTION_196_0();
  if (!v0)
  {
    OUTLINED_FUNCTION_102_2(v66, v67);

    sub_1B621D8F4();
    OUTLINED_FUNCTION_73_4();
    v69 = OUTLINED_FUNCTION_22_12();
    v70(v69);
    OUTLINED_FUNCTION_47_4();
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EB927C58, type metadata accessor for DailyWeatherStatistics);
      OUTLINED_FUNCTION_100_2();
      sub_1B621D2E4();
      OUTLINED_FUNCTION_189_0();
      if (v65)
      {
        OUTLINED_FUNCTION_112_2();
        goto LABEL_3;
      }

      OUTLINED_FUNCTION_146_0();
      OUTLINED_FUNCTION_139_0();
      v73 = OUTLINED_FUNCTION_46_6();
      v74(v73);
      OUTLINED_FUNCTION_31_8();
      sub_1B620B850();
    }

    else
    {
      v71 = OUTLINED_FUNCTION_46_6();
      v72(v71);
      OUTLINED_FUNCTION_31_8();
      sub_1B620B850();
    }

    OUTLINED_FUNCTION_16_24();
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_195_0();
LABEL_3:

  sub_1B621D8F4();
  OUTLINED_FUNCTION_31();
  (*(v68 + 8))(v62);
  OUTLINED_FUNCTION_31_8();
  sub_1B620B850();

LABEL_10:
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_84_3();
}

uint64_t sub_1B61D94D0@<X0>(uint64_t a1@<X0>, char a2@<W1>, __int16 a3@<W3>, void *a4@<X8>)
{
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v80);
  v9 = &v74[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v74[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v74[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74[-v17];
  v81 = sub_1B621D8F4();
  MEMORY[0x1EEE9AC00](v81);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74[-v20];
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  if ((a3 & 0xFF00) == 0x200)
  {
LABEL_11:

    return sub_1B61DD6D8();
  }

  v79 = a4;
  if (a2)
  {
    if (a1)
    {
      v77 = v26;
      v78 = v25;
      if (sub_1B6071488())
      {
        v28 = v15;
        sub_1B6220D84();
        if (qword_1EDAB3D80 != -1)
        {
          swift_once();
        }

        v29 = sub_1B6220B34();
        __swift_project_value_buffer(v29, qword_1EDAC2AB0);
        sub_1B603A944(v15, v12, &qword_1EB924600);
        v30 = sub_1B6220B14();
        v31 = sub_1B62217F4();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v76 = swift_slowAlloc();
          v82 = v76;
          *v32 = 136446722;
          swift_beginAccess();
          v34 = qword_1EB925A18;
          v33 = qword_1EB925A20;
          sub_1B6220784();
          v35 = sub_1B602EEB0(v34, v33, &v82);

          *(v32 + 4) = v35;
          *(v32 + 12) = 2082;
          sub_1B603A944(v12, v9, &qword_1EB924600);
          v36 = sub_1B6221234();
          v38 = v37;
          sub_1B620E044(v12, &qword_1EB924600);
          v39 = sub_1B602EEB0(v36, v38, &v82);

          *(v32 + 14) = v39;
          *(v32 + 22) = 2082;
          type metadata accessor for WeatherClock();
          v40 = v78;
          static WeatherClock.date.getter();
          sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
          v41 = v81;
          v42 = sub_1B6221F04();
          v44 = v43;
          (*(v77 + 8))(v40, v41);
          v45 = sub_1B602EEB0(v42, v44, &v82);

          *(v32 + 24) = v45;
          _os_log_impl(&dword_1B6020000, v30, v31, "Data has expired, returning nil; model=%{public}s, expiration=%{public}s, now=%{public}s", v32, 0x20u);
          v46 = v76;
          swift_arrayDestroy();
          MEMORY[0x1B8C91C90](v46, -1, -1);
          MEMORY[0x1B8C91C90](v32, -1, -1);

          v47 = v28;
        }

        else
        {

          sub_1B620E044(v12, &qword_1EB924600);
          v47 = v15;
        }

        result = sub_1B620E044(v47, &qword_1EB924600);
        *v79 = 0;
        return result;
      }
    }

    goto LABEL_11;
  }

  v80 = v27;
  v48 = &v74[-v24];
  v49 = v26;
  v78 = v25;
  sub_1B6220D84();
  v50 = v81;
  if (__swift_getEnumTagSinglePayload(v18, 1, v81) == 1)
  {
    sub_1B620E044(v18, &qword_1EB924600);
    return sub_1B61DD6D8();
  }

  else
  {
    (*(v49 + 32))(v48, v18, v50);
    v52 = type metadata accessor for WeatherClock();
    v53 = v78;
    v77 = v52;
    static WeatherClock.date.getter();
    sub_1B621D804();
    sub_1B60715EC(&qword_1EDAB0D78, MEMORY[0x1E6969530]);
    v54 = sub_1B6221184();
    v55 = *(v49 + 8);
    v55(v21, v50);
    v55(v53, v50);
    if (v54)
    {
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v56 = sub_1B6220B34();
      __swift_project_value_buffer(v56, qword_1EDAC2AB0);
      v57 = v80;
      (*(v49 + 16))(v80, v48, v50);
      v58 = sub_1B6220B14();
      v59 = sub_1B62217F4();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        v82 = v76;
        *v60 = 136446722;
        v75 = v59;
        swift_beginAccess();
        v62 = qword_1EB925A18;
        v61 = qword_1EB925A20;
        sub_1B6220784();
        v63 = sub_1B602EEB0(v62, v61, &v82);

        *(v60 + 4) = v63;
        *(v60 + 12) = 2082;
        sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
        v64 = sub_1B6221F04();
        v66 = v65;
        v55(v57, v50);
        v67 = sub_1B602EEB0(v64, v66, &v82);

        *(v60 + 14) = v67;
        *(v60 + 22) = 2082;
        v68 = v78;
        static WeatherClock.date.getter();
        v69 = sub_1B6221F04();
        v71 = v70;
        v55(v68, v50);
        v72 = sub_1B602EEB0(v69, v71, &v82);

        *(v60 + 24) = v72;
        _os_log_impl(&dword_1B6020000, v58, v75, "Data exceeds maximum age, returning nil; model=%{public}s, modified=%{public}s, now=%{public}s", v60, 0x20u);
        v73 = v76;
        swift_arrayDestroy();
        MEMORY[0x1B8C91C90](v73, -1, -1);
        MEMORY[0x1B8C91C90](v60, -1, -1);
      }

      else
      {

        v55(v57, v50);
      }

      result = (v55)(v48, v50);
      *v79 = 0;
    }

    else
    {
      sub_1B61DD6D8();
      return (v55)(v48, v50);
    }
  }

  return result;
}

void sub_1B61D9DFC()
{
  OUTLINED_FUNCTION_116();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v88[-v12];
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  v16 = v15;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_61_1();
  v94 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_117_1();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v88[-v20];
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_64_4();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_125_1();
  if ((v5 & 0xFF00) != 0x200)
  {
    if (v7)
    {
      if (!v9)
      {
        goto LABEL_2;
      }

      v92 = v26;
      v93 = v25;
      if ((sub_1B6071488() & 1) == 0)
      {
        goto LABEL_2;
      }

      sub_1B6220D84();
      if (qword_1EDAB3D80 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      v29 = sub_1B6220B34();
      OUTLINED_FUNCTION_225(v29, qword_1EDAC2AB0);
      sub_1B603A944(v16, v13, &qword_1EB924600);
      v30 = sub_1B6220B14();
      sub_1B62217F4();
      OUTLINED_FUNCTION_194_0();
      if (os_log_type_enabled(v30, v31))
      {
        OUTLINED_FUNCTION_8_2();
        swift_slowAlloc();
        v91 = OUTLINED_FUNCTION_152_0();
        v95 = v91;
        *v9 = 136446722;
        OUTLINED_FUNCTION_212();
        v33 = qword_1EB9251F0;
        v32 = off_1EB9251F8;
        sub_1B6220784();
        v34 = OUTLINED_FUNCTION_88_3();
        sub_1B602EEB0(v34, v32, v35);
        OUTLINED_FUNCTION_222();

        *(v9 + 4) = v33;
        v90 = v16;
        *(v9 + 12) = 2082;
        sub_1B603A944(v13, v2, &qword_1EB924600);
        sub_1B6221234();
        OUTLINED_FUNCTION_91_2();
        sub_1B620E044(v13, &qword_1EB924600);
        v36 = OUTLINED_FUNCTION_5_2();
        sub_1B602EEB0(v36, v37, v38);
        OUTLINED_FUNCTION_148_0();
        *(v9 + 14) = v32;
        *(v9 + 22) = 2082;
        type metadata accessor for WeatherClock();
        static WeatherClock.date.getter();
        OUTLINED_FUNCTION_1_71();
        sub_1B60715EC(v39, v40);
        sub_1B6221F04();
        OUTLINED_FUNCTION_91_2();
        v41 = OUTLINED_FUNCTION_51_4();
        v42(v41);
        v43 = OUTLINED_FUNCTION_5_2();
        sub_1B602EEB0(v43, v44, v45);
        OUTLINED_FUNCTION_148_0();
        *(v9 + 24) = v32;
        _os_log_impl(&dword_1B6020000, v30, v3, "Data has expired, returning nil; model=%{public}s, expiration=%{public}s, now=%{public}s", v9, 0x20u);
        OUTLINED_FUNCTION_179_0();
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1B8C91C90]();
        v46 = OUTLINED_FUNCTION_62_0();
        MEMORY[0x1B8C91C90](v46);

        v47 = v90;
        v48 = &qword_1EB924600;
      }

      else
      {

        OUTLINED_FUNCTION_42();
        sub_1B620E044(v86, v87);
        OUTLINED_FUNCTION_42();
      }

      sub_1B620E044(v47, v48);
    }

    else
    {
      v91 = v27;
      v92 = v24;
      v49 = v26;
      v93 = v25;
      sub_1B6220D84();
      v50 = v94;
      OUTLINED_FUNCTION_16_5(v1, 1, v94);
      if (v51)
      {
        sub_1B620E044(v1, &qword_1EB924600);
        sub_1B61DD950();
      }

      else
      {
        v52 = v92;
        (*(v49 + 32))(v92, v1, v50);
        v53 = type metadata accessor for WeatherClock();
        v54 = v93;
        static WeatherClock.date.getter();
        sub_1B621D804();
        OUTLINED_FUNCTION_1_71();
        sub_1B60715EC(v55, v56);
        OUTLINED_FUNCTION_175_0();
        v57 = sub_1B6221184();
        v58 = *(v49 + 8);
        (v58)(v21, v50);
        (v58)(v54, v50);
        if (v57)
        {
          v90 = v53;
          if (qword_1EDAB3D80 != -1)
          {
            OUTLINED_FUNCTION_0_17();
            swift_once();
          }

          v59 = sub_1B6220B34();
          OUTLINED_FUNCTION_225(v59, qword_1EDAC2AB0);
          v61 = v91;
          v60 = v92;
          v62 = OUTLINED_FUNCTION_48_4();
          v63(v62);
          v64 = sub_1B6220B14();
          v65 = sub_1B62217F4();
          if (os_log_type_enabled(v64, v65))
          {
            OUTLINED_FUNCTION_8_2();
            v66 = swift_slowAlloc();
            v95 = OUTLINED_FUNCTION_715();
            *v66 = 136446722;
            OUTLINED_FUNCTION_212();
            v89 = v65;
            v68 = qword_1EB9251F0;
            v67 = off_1EB9251F8;
            sub_1B6220784();
            v69 = OUTLINED_FUNCTION_88_3();
            sub_1B602EEB0(v69, v67, v70);
            OUTLINED_FUNCTION_222();

            *(v66 + 4) = v68;
            *(v66 + 12) = 2082;
            OUTLINED_FUNCTION_1_71();
            v73 = sub_1B60715EC(v71, v72);
            v74 = sub_1B6221F04();
            v76 = v75;
            v77 = OUTLINED_FUNCTION_161_0();
            v58(v77);
            v78 = OUTLINED_FUNCTION_88_3();
            sub_1B602EEB0(v78, v76, v79);
            OUTLINED_FUNCTION_248();

            *(v66 + 14) = v74;
            *(v66 + 22) = 2082;
            static WeatherClock.date.getter();
            OUTLINED_FUNCTION_48_4();
            sub_1B6221F04();
            OUTLINED_FUNCTION_91_2();
            v80 = OUTLINED_FUNCTION_113_2();
            v58(v80);
            v81 = OUTLINED_FUNCTION_5_2();
            sub_1B602EEB0(v81, v82, v83);
            OUTLINED_FUNCTION_148_0();
            *(v66 + 24) = v73;
            _os_log_impl(&dword_1B6020000, v64, v89, "Data exceeds maximum age, returning nil; model=%{public}s, modified=%{public}s, now=%{public}s", v66, 0x20u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_4_0();
            MEMORY[0x1B8C91C90]();
            OUTLINED_FUNCTION_4_0();
            MEMORY[0x1B8C91C90]();

            v84 = v92;
            v85 = v61;
          }

          else
          {

            (v58)(v61, v50);
            v84 = v60;
            v85 = v50;
          }

          (v58)(v84, v85);
        }

        else
        {
          sub_1B61DD950();
          (v58)(v52, v50);
        }
      }
    }

    OUTLINED_FUNCTION_117();
    return;
  }

LABEL_2:
  OUTLINED_FUNCTION_117();

  sub_1B61DD950();
}

uint64_t sub_1B61DA580(uint64_t a1, char a2, uint64_t a3, __int16 a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v80[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v80[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v80[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v80[-v17];
  v86 = sub_1B621D8F4();
  MEMORY[0x1EEE9AC00](v86);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v80[-v20];
  MEMORY[0x1EEE9AC00](v22);
  MEMORY[0x1EEE9AC00](v23);
  if ((a4 & 0xFF00) == 0x200)
  {
    return sub_1B61DDC14();
  }

  if (a2)
  {
    if (a1)
    {
      v84 = v26;
      v85 = v25;
      if (sub_1B6071488())
      {
        sub_1B6220D84();
        if (qword_1EDAB3D80 != -1)
        {
          swift_once();
        }

        v30 = sub_1B6220B34();
        __swift_project_value_buffer(v30, qword_1EDAC2AB0);
        sub_1B603A944(v15, v12, &qword_1EB924600);
        v31 = sub_1B6220B14();
        v32 = sub_1B62217F4();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v83 = swift_slowAlloc();
          v87 = v83;
          *v33 = 136446722;
          swift_beginAccess();
          v35 = *aMarinelocation_2;
          v34 = *&aMarinelocation_2[8];
          sub_1B6220784();
          v36 = sub_1B602EEB0(v35, v34, &v87);

          *(v33 + 4) = v36;
          v82 = v15;
          *(v33 + 12) = 2082;
          sub_1B603A944(v12, v9, &qword_1EB924600);
          v37 = sub_1B6221234();
          v39 = v38;
          sub_1B620E044(v12, &qword_1EB924600);
          v40 = sub_1B602EEB0(v37, v39, &v87);

          *(v33 + 14) = v40;
          *(v33 + 22) = 2082;
          type metadata accessor for WeatherClock();
          v41 = v85;
          static WeatherClock.date.getter();
          sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
          v42 = v86;
          v43 = sub_1B6221F04();
          v45 = v44;
          v84[1](v41, v42);
          v46 = sub_1B602EEB0(v43, v45, &v87);

          *(v33 + 24) = v46;
          _os_log_impl(&dword_1B6020000, v31, v32, "Data has expired, returning nil; model=%{public}s, expiration=%{public}s, now=%{public}s", v33, 0x20u);
          v47 = v83;
          swift_arrayDestroy();
          MEMORY[0x1B8C91C90](v47, -1, -1);
          MEMORY[0x1B8C91C90](v33, -1, -1);

          v48 = v82;
        }

        else
        {

          sub_1B620E044(v12, &qword_1EB924600);
          v48 = v15;
        }

        sub_1B620E044(v48, &qword_1EB924600);
        return 0;
      }
    }
  }

  else
  {
    v83 = v27;
    v84 = &v80[-v24];
    v49 = v26;
    v85 = v25;
    sub_1B6220D84();
    v50 = v86;
    if (__swift_getEnumTagSinglePayload(v18, 1, v86) != 1)
    {
      v51 = v84;
      (v49[4])(v84, v18, v50);
      v52 = type metadata accessor for WeatherClock();
      v53 = v85;
      static WeatherClock.date.getter();
      sub_1B621D804();
      sub_1B60715EC(&qword_1EDAB0D78, MEMORY[0x1E6969530]);
      v54 = sub_1B6221184();
      v55 = v49[1];
      v55(v21, v50);
      v55(v53, v50);
      if ((v54 & 1) == 0)
      {
        v28 = sub_1B61DDC14();
        v55(v51, v50);
        return v28;
      }

      v82 = v52;
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v56 = sub_1B6220B34();
      __swift_project_value_buffer(v56, qword_1EDAC2AB0);
      v58 = v83;
      v57 = v84;
      (v49[2])(v83, v84, v50);
      v59 = sub_1B6220B14();
      v60 = sub_1B62217F4();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = v50;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v87 = v63;
        *v62 = 136446722;
        swift_beginAccess();
        v81 = v60;
        v65 = *aMarinelocation_2;
        v64 = *&aMarinelocation_2[8];
        sub_1B6220784();
        v66 = sub_1B602EEB0(v65, v64, &v87);

        *(v62 + 4) = v66;
        *(v62 + 12) = 2082;
        sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
        v67 = sub_1B6221F04();
        v69 = v68;
        v70 = v58;
        v71 = v61;
        v55(v70, v61);
        v72 = sub_1B602EEB0(v67, v69, &v87);

        *(v62 + 14) = v72;
        *(v62 + 22) = 2082;
        v73 = v85;
        static WeatherClock.date.getter();
        v74 = sub_1B6221F04();
        v76 = v75;
        v55(v73, v71);
        v77 = sub_1B602EEB0(v74, v76, &v87);

        *(v62 + 24) = v77;
        _os_log_impl(&dword_1B6020000, v59, v81, "Data exceeds maximum age, returning nil; model=%{public}s, modified=%{public}s, now=%{public}s", v62, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1B8C91C90](v63, -1, -1);
        MEMORY[0x1B8C91C90](v62, -1, -1);

        v78 = v84;
        v79 = v71;
      }

      else
      {

        v55(v58, v50);
        v78 = v57;
        v79 = v50;
      }

      v55(v78, v79);
      return 0;
    }

    sub_1B620E044(v18, &qword_1EB924600);
  }

  return sub_1B61DDC14();
}

void sub_1B61DAEC0()
{
  OUTLINED_FUNCTION_116();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_31();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v94[-v13];
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16();
  v17 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v94[-v19];
  v101 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_117_1();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v94[-v23];
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_64_4();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_125_1();
  if ((v4 & 0xFF00) != 0x200)
  {
    v99 = v10;
    if ((v6 & 1) == 0)
    {
      v98 = v30;
      v51 = v27;
      v52 = v29;
      v100 = v28;
      sub_1B6220D84();
      v53 = v101;
      OUTLINED_FUNCTION_16_5(v20, 1, v101);
      if (v54)
      {
        sub_1B620E044(v20, &qword_1EB924600);
        sub_1B61DE1E4(v99);
      }

      else
      {
        v57 = OUTLINED_FUNCTION_124_1();
        v58(v57, v20, v53);
        v59 = type metadata accessor for WeatherClock();
        v60 = v100;
        v97 = v59;
        static WeatherClock.date.getter();
        sub_1B621D804();
        OUTLINED_FUNCTION_1_71();
        sub_1B60715EC(v61, v62);
        OUTLINED_FUNCTION_169_0();
        v63 = sub_1B6221184();
        v64 = *(v52 + 8);
        (v64)(v24, v53);
        (v64)(v60, v53);
        if (v63)
        {
          if (qword_1EDAB3D80 != -1)
          {
            OUTLINED_FUNCTION_0_17();
            swift_once();
          }

          v65 = sub_1B6220B34();
          OUTLINED_FUNCTION_225(v65, qword_1EDAC2AB0);
          v67 = *(v52 + 16);
          v66 = v52 + 16;
          v68 = v98;
          v67(v98, v51, v53);
          v69 = sub_1B6220B14();
          v70 = sub_1B62217F4();
          if (os_log_type_enabled(v69, v70))
          {
            OUTLINED_FUNCTION_8_2();
            swift_slowAlloc();
            v96 = OUTLINED_FUNCTION_152_0();
            v102 = v96;
            *v66 = 136446722;
            v95 = v70;
            v71 = off_1EB925D48;
            sub_1B6220784();
            v72 = OUTLINED_FUNCTION_88_3();
            sub_1B602EEB0(v72, v71, v73);
            OUTLINED_FUNCTION_104();

            OUTLINED_FUNCTION_159_0();
            OUTLINED_FUNCTION_1_71();
            sub_1B60715EC(v74, v75);
            sub_1B6221F04();
            v77 = v76;
            v78 = OUTLINED_FUNCTION_100_2();
            v64(v78);
            v79 = OUTLINED_FUNCTION_88_3();
            sub_1B602EEB0(v79, v77, v80);
            OUTLINED_FUNCTION_467();

            OUTLINED_FUNCTION_162_0();
            v81 = v100;
            static WeatherClock.date.getter();
            sub_1B6221F04();
            OUTLINED_FUNCTION_91_2();
            (v64)(v81, v53);
            v82 = OUTLINED_FUNCTION_5_2();
            sub_1B602EEB0(v82, v83, v84);
            OUTLINED_FUNCTION_148_0();
            *(v66 + 24) = v68;
            _os_log_impl(&dword_1B6020000, v69, v95, "Data exceeds maximum age, returning nil; model=%{public}s, modified=%{public}s, now=%{public}s", v66, 0x20u);
            OUTLINED_FUNCTION_179_0();
            OUTLINED_FUNCTION_4_0();
            MEMORY[0x1B8C91C90]();
            v85 = OUTLINED_FUNCTION_62_0();
            MEMORY[0x1B8C91C90](v85);
          }

          else
          {

            v89 = OUTLINED_FUNCTION_100_2();
            v64(v89);
          }

          (v64)(v51, v53);
          type metadata accessor for HourlyWeatherStatistics();
          goto LABEL_25;
        }

        sub_1B61DE1E4(v99);
        v86 = OUTLINED_FUNCTION_100_2();
        v64(v86);
      }

LABEL_26:
      OUTLINED_FUNCTION_117();
      return;
    }

    if (v8)
    {
      v98 = v29;
      v31 = v28;
      if (sub_1B6071488())
      {
        sub_1B6220D84();
        if (qword_1EDAB3D80 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v32 = sub_1B6220B34();
        OUTLINED_FUNCTION_225(v32, qword_1EDAC2AB0);
        sub_1B603A944(v17, v14, &qword_1EB924600);
        v33 = sub_1B6220B14();
        sub_1B62217F4();
        OUTLINED_FUNCTION_194_0();
        if (os_log_type_enabled(v33, v34))
        {
          OUTLINED_FUNCTION_8_2();
          v35 = swift_slowAlloc();
          v97 = OUTLINED_FUNCTION_715();
          v102 = v97;
          *v35 = 136446722;
          v36 = qword_1EB925D40;
          v37 = off_1EB925D48;
          sub_1B6220784();
          v38 = OUTLINED_FUNCTION_88_3();
          sub_1B602EEB0(v38, v37, v39);
          OUTLINED_FUNCTION_104();

          *(v35 + 4) = v36;
          *(v35 + 12) = 2082;
          sub_1B603A944(v14, v0, &qword_1EB924600);
          sub_1B6221234();
          OUTLINED_FUNCTION_91_2();
          sub_1B620E044(v14, &qword_1EB924600);
          v40 = OUTLINED_FUNCTION_5_2();
          sub_1B602EEB0(v40, v41, v42);
          OUTLINED_FUNCTION_148_0();
          *(v35 + 14) = v0;
          *(v35 + 22) = 2082;
          type metadata accessor for WeatherClock();
          static WeatherClock.date.getter();
          OUTLINED_FUNCTION_1_71();
          sub_1B60715EC(v43, v44);
          v45 = v101;
          sub_1B6221F04();
          OUTLINED_FUNCTION_91_2();
          (*(v98 + 8))(v31, v45);
          v46 = OUTLINED_FUNCTION_5_2();
          sub_1B602EEB0(v46, v47, v48);
          OUTLINED_FUNCTION_148_0();
          *(v35 + 24) = v0;
          _os_log_impl(&dword_1B6020000, v33, v2, "Data has expired, returning nil; model=%{public}s, expiration=%{public}s, now=%{public}s", v35, 0x20u);
          OUTLINED_FUNCTION_179_0();
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();

          v49 = v17;
          v50 = &qword_1EB924600;
        }

        else
        {

          OUTLINED_FUNCTION_42();
          sub_1B620E044(v87, v88);
          OUTLINED_FUNCTION_42();
        }

        sub_1B620E044(v49, v50);
        type metadata accessor for HourlyWeatherStatistics();
LABEL_25:
        OUTLINED_FUNCTION_3_10();
        __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
        goto LABEL_26;
      }
    }
  }

  OUTLINED_FUNCTION_117();

  sub_1B61DE1E4(v55);
}

uint64_t sub_1B61DB688@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for DailySummary();
    sub_1B60715EC(&qword_1EB927C30, type metadata accessor for DailySummary);
    sub_1B60715EC(&qword_1EB927C38, type metadata accessor for DailySummary);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DB978@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for CurrentWeather();
    sub_1B60715EC(&qword_1EDAB2060, type metadata accessor for CurrentWeather);
    sub_1B60715EC(&qword_1EDAB2058, type metadata accessor for CurrentWeather);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DBC68@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for DailyForecast();
    sub_1B60715EC(&qword_1EDAB07A0, type metadata accessor for DailyForecast);
    sub_1B60715EC(&qword_1EDAB0798, type metadata accessor for DailyForecast);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DBF58@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for HourlyForecast();
    sub_1B60715EC(&qword_1EDAB0750, type metadata accessor for HourlyForecast);
    sub_1B60715EC(&qword_1EDAB0748, type metadata accessor for HourlyForecast);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DC248@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for PeriodicForecasts();
    sub_1B60715EC(&qword_1EB927BA8, type metadata accessor for PeriodicForecasts);
    sub_1B60715EC(&qword_1EB927BB0, type metadata accessor for PeriodicForecasts);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DC538@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for LocationInfo();
    sub_1B60715EC(&qword_1EDAAFAB8, type metadata accessor for LocationInfo);
    sub_1B60715EC(&qword_1EDAAFAB0, type metadata accessor for LocationInfo);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DC828@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for MarineForecast();
    sub_1B60715EC(&qword_1EB927BC8, type metadata accessor for MarineForecast);
    sub_1B60715EC(&qword_1EB927BD0, type metadata accessor for MarineForecast);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DCB18@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for News();
    sub_1B60715EC(&qword_1EDAAEC10, type metadata accessor for News);
    sub_1B60715EC(&qword_1EDAAEC08, type metadata accessor for News);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DCE08@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for TideEvents();
    sub_1B60715EC(&qword_1EB927BD8, type metadata accessor for TideEvents);
    sub_1B60715EC(&qword_1EB927BE0, type metadata accessor for TideEvents);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DD0F8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for WeatherAlerts();
    sub_1B60715EC(&qword_1EDAAFB10, type metadata accessor for WeatherAlerts);
    sub_1B60715EC(&qword_1EDAAFB08, type metadata accessor for WeatherAlerts);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DD3E8@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for WeatherComparisons();
    sub_1B60715EC(&qword_1EDAAF418, type metadata accessor for WeatherComparisons);
    sub_1B60715EC(&qword_1EDAAF410, type metadata accessor for WeatherComparisons);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DD6D8()
{
  result = sub_1B6220D84();
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    sub_1B620D2D8();
    sub_1B620D32C();
    sub_1B62206A4();
    return sub_1B602FF58(v1, v2);
  }

  return result;
}

uint64_t sub_1B61DD950()
{
  result = sub_1B6220D84();
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB927110);
    sub_1B620DCD8(&qword_1EDAAEAD8);
    sub_1B620DCD8(&qword_1EDAAEAD0);
    sub_1B62206A4();
    sub_1B602FF58(v1, v2);
    return v3;
  }

  return result;
}

uint64_t sub_1B61DDC14()
{
  result = sub_1B6220D84();
  if (v2 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    type metadata accessor for CLLocationCoordinate2D(0);
    sub_1B60715EC(&qword_1EB927BB8, type metadata accessor for CLLocationCoordinate2D);
    sub_1B60715EC(&qword_1EB927BC0, type metadata accessor for CLLocationCoordinate2D);
    sub_1B62206A4();
    sub_1B602FF58(v1, v2);
    return v3;
  }

  return result;
}

uint64_t sub_1B61DDEF4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for DailyWeatherStatistics();
    sub_1B60715EC(&qword_1EB927C48, type metadata accessor for DailyWeatherStatistics);
    sub_1B60715EC(&qword_1EB927C50, type metadata accessor for DailyWeatherStatistics);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DE1E4@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for HourlyWeatherStatistics();
    sub_1B60715EC(&qword_1EB927C18, type metadata accessor for HourlyWeatherStatistics);
    sub_1B60715EC(&qword_1EB927C20, type metadata accessor for HourlyWeatherStatistics);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DE4C0@<X0>(uint64_t a1@<X8>)
{
  result = sub_1B6220D84();
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1B62206B4();
    v3 = type metadata accessor for MonthlyWeatherStatistics();
    sub_1B60715EC(&qword_1EB927C08, type metadata accessor for MonthlyWeatherStatistics);
    sub_1B60715EC(&qword_1EB927C10, type metadata accessor for MonthlyWeatherStatistics);
    sub_1B62206A4();
    sub_1B602FF58(v4, v5);
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
  }

  return result;
}

uint64_t sub_1B61DE7B0(uint64_t a1)
{
  result = MEMORY[0x1B8C90940](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;
    sub_1B6220784();
    sub_1B61052CC(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B61DE870@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v89 = a7;
  v88 = a6;
  v76 = a5;
  v96 = a4;
  v86 = a3;
  v85 = a2;
  v98 = a1;
  v77 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v92 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v90 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v80 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v75 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v75 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  *&v97 = COERCE_DOUBLE(sub_1B6220D74());
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v39);
  swift_allocObject();

  v95 = sub_1B6220D74();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v40);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();

  v94 = sub_1B6220D74();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  v79 = v41;
  v78 = v26;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v41);
  v42 = v80;
  __swift_storeEnumTagSinglePayload(v80, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v93 = sub_1B6220D74();

  sub_1B621D8E4();
  v43 = *MEMORY[0x1E69D61F8];
  v44 = *(*(v40 - 8) + 104);
  v44(v32, v43, v40);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v40);
  sub_1B621D8E4();
  v44(v29, v43, v40);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v40);
  swift_allocObject();
  v84 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v40);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v40);
  swift_allocObject();
  v91 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v81, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v90, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = v79;
  __swift_storeEnumTagSinglePayload(v78, 1, 1, v79);
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v47);
  swift_allocObject();

  v90 = sub_1B6220D74();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v82, 1, 1, v48);
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();
  v83 = sub_1B6220D74();
  v99 = round(a9 * 1000.0) / 1000.0;
  LOBYTE(v100) = 0;
  sub_1B6220D94();

  v99 = round(a10 * 1000.0) / 1000.0;
  LOBYTE(v100) = 0;
  sub_1B6220D94();

  v49 = sub_1B621D8F4();
  v50 = *(v49 - 8);
  v51 = *(v50 + 16);
  v52 = v92;
  v51(v92, v98, v49);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v49);
  sub_1B6220D94();

  v99 = v85;
  v100 = v86;
  sub_1B6220D94();

  sub_1B62206D4();
  v53 = type metadata accessor for DayForecast();
  sub_1B60715EC(&qword_1EDAB0848, type metadata accessor for DayForecast);
  sub_1B60715EC(&qword_1EDAB0840, type metadata accessor for DayForecast);
  v54 = v87;
  *&v55 = COERCE_DOUBLE(sub_1B62206C4());
  if (v54)
  {
    v57 = v89;

    v58 = *(v50 + 8);
    v58(v57, v49);
    sub_1B620B850();
    v58(v98, v49);
    v99 = *&v97;
    v100 = v95;
    v101 = v94;
    v102 = v93;
    v103 = v84;
    v104 = v91;
    v105 = v46;
    v106 = v90;
    v107 = v83;
    return sub_1B620E044(&v99, &qword_1EB924C88);
  }

  else
  {
    v86 = v53;
    v99 = *&v55;
    v100 = v56;
    sub_1B6220D94();
    v87 = v46;

    v99 = v76;
    v100 = v88;
    v60 = v90;
    sub_1B6220D94();
    v61 = v92;
    v62 = v89;
    v51(v92, v89, v49);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v49);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAB0838, type metadata accessor for DayForecast);
      *&v63 = COERCE_DOUBLE(sub_1B621D2E4());
      v64 = v77;
      v66 = *&v63;
      v68 = v67;

      v99 = v66;
      v100 = v68;
      v69 = v83;
      sub_1B6220D94();
      v70 = *(v50 + 8);
      v70(v62, v49);
      sub_1B620B850();
      result = (v70)(v98, v49);
      v60 = v90;
    }

    else
    {
      v65 = *(v50 + 8);
      v65(v62, v49);
      sub_1B620B850();
      result = (v65)(v98, v49);
      v64 = v77;
      v69 = v83;
    }

    v72 = v94;
    v71 = v95;
    *v64 = v97;
    v64[1] = v71;
    v73 = v93;
    v64[2] = v72;
    v64[3] = v73;
    v74 = v91;
    v64[4] = v84;
    v64[5] = v74;
    v64[6] = v87;
    v64[7] = v60;
    v64[8] = v69;
  }

  return result;
}

uint64_t sub_1B61DF508@<X0>(uint64_t a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v89 = a7;
  v88 = a6;
  v76 = a5;
  v96 = a4;
  v86 = a3;
  v85 = a2;
  v98 = a1;
  v77 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v92 = &v75 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926078);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v75 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926080);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v90 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v75 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926090);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v80 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v75 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926088);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v75 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v75 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CA8);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v35 = &v75 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v75 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB0);
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924CB8);
  swift_allocObject();
  *&v97 = COERCE_DOUBLE(sub_1B6220D74());
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v35, 1, 1, v39);
  swift_allocObject();

  v95 = sub_1B6220D74();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A8);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v40);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B0);
  swift_allocObject();

  v94 = sub_1B6220D74();
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926098);
  v79 = v41;
  v78 = v26;
  __swift_storeEnumTagSinglePayload(v26, 1, 1, v41);
  v42 = v80;
  __swift_storeEnumTagSinglePayload(v80, 1, 1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260A0);
  swift_allocObject();

  v93 = sub_1B6220D74();

  sub_1B621D8E4();
  v43 = *MEMORY[0x1E69D61F8];
  v44 = *(*(v40 - 8) + 104);
  v44(v32, v43, v40);
  __swift_storeEnumTagSinglePayload(v32, 0, 1, v40);
  sub_1B621D8E4();
  v44(v29, v43, v40);
  __swift_storeEnumTagSinglePayload(v29, 0, 1, v40);
  swift_allocObject();
  v84 = sub_1B6220D74();
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v40);
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v40);
  swift_allocObject();
  v91 = sub_1B6220D74();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260B8);
  __swift_storeEnumTagSinglePayload(v81, 1, 1, v45);
  __swift_storeEnumTagSinglePayload(v90, 1, 1, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C0);
  swift_allocObject();
  v46 = sub_1B6220D74();
  v47 = v79;
  __swift_storeEnumTagSinglePayload(v78, 1, 1, v79);
  __swift_storeEnumTagSinglePayload(v42, 1, 1, v47);
  swift_allocObject();

  v90 = sub_1B6220D74();
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260C8);
  __swift_storeEnumTagSinglePayload(v82, 1, 1, v48);
  __swift_storeEnumTagSinglePayload(v83, 1, 1, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9260D0);
  swift_allocObject();
  v83 = sub_1B6220D74();
  v99 = round(a9 * 1000.0) / 1000.0;
  LOBYTE(v100) = 0;
  sub_1B6220D94();

  v99 = round(a10 * 1000.0) / 1000.0;
  LOBYTE(v100) = 0;
  sub_1B6220D94();

  v49 = sub_1B621D8F4();
  v50 = *(v49 - 8);
  v51 = *(v50 + 16);
  v52 = v92;
  v51(v92, v98, v49);
  __swift_storeEnumTagSinglePayload(v52, 0, 1, v49);
  sub_1B6220D94();

  v99 = v85;
  v100 = v86;
  sub_1B6220D94();

  sub_1B62206D4();
  v53 = type metadata accessor for HourForecast();
  sub_1B60715EC(&qword_1EDAB07E8, type metadata accessor for HourForecast);
  sub_1B60715EC(&qword_1EDAB07E0, type metadata accessor for HourForecast);
  v54 = v87;
  *&v55 = COERCE_DOUBLE(sub_1B62206C4());
  if (v54)
  {
    v57 = v89;

    v58 = *(v50 + 8);
    v58(v57, v49);
    sub_1B620B850();
    v58(v98, v49);
    v99 = *&v97;
    v100 = v95;
    v101 = v94;
    v102 = v93;
    v103 = v84;
    v104 = v91;
    v105 = v46;
    v106 = v90;
    v107 = v83;
    return sub_1B620E044(&v99, &qword_1EB924C70);
  }

  else
  {
    v86 = v53;
    v99 = *&v55;
    v100 = v56;
    sub_1B6220D94();
    v87 = v46;

    v99 = v76;
    v100 = v88;
    v60 = v90;
    sub_1B6220D94();
    v61 = v92;
    v62 = v89;
    v51(v92, v89, v49);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v49);
    sub_1B6220D94();
    sub_1B62205F4();
    if (sub_1B62205E4())
    {
      sub_1B621D304();
      swift_allocObject();
      sub_1B621D2F4();
      sub_1B60715EC(&qword_1EDAB07D8, type metadata accessor for HourForecast);
      *&v63 = COERCE_DOUBLE(sub_1B621D2E4());
      v64 = v77;
      v66 = *&v63;
      v68 = v67;

      v99 = v66;
      v100 = v68;
      v69 = v83;
      sub_1B6220D94();
      v70 = *(v50 + 8);
      v70(v62, v49);
      sub_1B620B850();
      result = (v70)(v98, v49);
      v60 = v90;
    }

    else
    {
      v65 = *(v50 + 8);
      v65(v62, v49);
      sub_1B620B850();
      result = (v65)(v98, v49);
      v64 = v77;
      v69 = v83;
    }

    v72 = v94;
    v71 = v95;
    *v64 = v97;
    v64[1] = v71;
    v73 = v93;
    v64[2] = v72;
    v64[3] = v73;
    v74 = v91;
    v64[4] = v84;
    v64[5] = v74;
    v64[6] = v87;
    v64[7] = v60;
    v64[8] = v69;
  }

  return result;
}

void sub_1B61E01A0()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  OUTLINED_FUNCTION_0(v5);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_116_1();
  v7 = sub_1B6220BD4();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  sub_1B6220D44();
  v18[3] = MEMORY[0x1E69E6158];
  v18[4] = MEMORY[0x1E69D62D8];
  v18[0] = v4;
  v18[1] = v2;
  sub_1B6220784();
  OUTLINED_FUNCTION_192_0();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(v18);
  sub_1B6220DD4();
  v14 = OUTLINED_FUNCTION_7_20();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  sub_1B6220D14();

  sub_1B620E044(v0, &qword_1EB924B50);
  (*(v9 + 8))(v13, v7);
  OUTLINED_FUNCTION_13();
}

void sub_1B61E0330()
{
  OUTLINED_FUNCTION_12_0();
  v31 = v3;
  v32 = v4;
  v6 = v5;
  v30 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_116_1();
  v10 = sub_1B6220BD4();
  OUTLINED_FUNCTION_2();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_8_28();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v29 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_24_14();
  v29[1] = sub_1B6220D44();
  v18 = MEMORY[0x1E69E6158];
  v19 = MEMORY[0x1E69D62D8];
  v35 = MEMORY[0x1E69E6158];
  v36 = MEMORY[0x1E69D62D8];
  v33 = v30;
  v34 = v6;
  sub_1B6220784();
  OUTLINED_FUNCTION_192_0();
  sub_1B6220CE4();
  __swift_destroy_boxed_opaque_existential_1(&v33);
  v35 = v18;
  v36 = v19;
  v33 = v31;
  v34 = v32;
  sub_1B6220784();
  OUTLINED_FUNCTION_192_0();
  sub_1B6220C94();
  __swift_destroy_boxed_opaque_existential_1(&v33);
  sub_1B6220CC4();
  v20 = *(v12 + 8);
  v21 = v2;
  v22 = v10;
  v20(v21, v10);
  v20(v16, v10);
  *v0 = 0x73657269707865;
  v0[1] = 0xE700000000000000;
  v23 = *MEMORY[0x1E69D6220];
  v24 = sub_1B6220DD4();
  OUTLINED_FUNCTION_9();
  (*(v25 + 104))(v0, v23, v24);
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v24);
  sub_1B6220D24();

  sub_1B620E044(v0, &qword_1EB924B50);
  v20(v1, v22);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_1B61E05BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v198 = a4;
  v180 = a5;
  v182 = type metadata accessor for WeatherRequestOptions();
  MEMORY[0x1EEE9AC00](v182);
  v178 = (&v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v173 = &v159 - v10;
  v179 = type metadata accessor for MarineForecast();
  MEMORY[0x1EEE9AC00](v179);
  v174 = (&v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = sub_1B621D8F4();
  v175 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v167 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v169 = &v159 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v168 = &v159 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v171 = &v159 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v172 = &v159 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v170 = &v159 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v177 = &v159 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v176 = &v159 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v159 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v159 - v31;
  v33 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v159 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  v37 = a3;
  v38 = a1;
  v39 = a1;
  v40 = a2;
  v41 = sub_1B61778A4(v37, v39, a2);
  v43 = v42;
  v44 = v183;
  sub_1B61E01A0();
  v183 = v44;
  if (v44)
  {
  }

  v164 = v33;
  v163 = v29;
  v159 = v38;
  v160 = v40;
  v165 = v36;
  v161 = v41;
  v166 = v43;
  v162 = v35;
  v46 = v181;
  v47 = v184;
  if (v184)
  {
    v191 = v184;
    v192 = v185;
    v193 = v186;
    v194 = v187;
    v195 = v188;
    v196 = v189;
    v197 = v190;

    v48 = v165 + SHIDWORD(v182[8].isa);
    sub_1B6070D34(*v48, *(v48 + 8), *(v48 + 16), *(v48 + 24) | ((*(v48 + 28) | (*(v48 + 30) << 16)) << 32), sub_1B61DC828, aMarineforecast_11, &aMarineforecast_11[8], type metadata accessor for MarineForecast, v159, v160, v161, v162, v163, v164);
    return sub_1B60729F4(v47);
  }

  v49 = v182;
  v50 = v165;
  if ((*(v165 + SHIDWORD(v182[8].isa) + 24) & 0x100) == 0 && (*(v165 + SLODWORD(v182[8].isa)) & 2) == 0)
  {
    v51 = 0;
    v52 = v166;
    v53 = v163;
LABEL_10:
    v55 = v178;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v56 = sub_1B6220B34();
    __swift_project_value_buffer(v56, qword_1EDAC2AB0);
    sub_1B6036A80(v50, v55);
    sub_1B6220784();
    v57 = sub_1B6220B14();
    v58 = sub_1B62217F4();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v184 = v60;
      *v59 = 136316163;
      *(v59 + 4) = sub_1B602EEB0(0x4620656E6972614DLL, 0xEF7473616365726FLL, &v184);
      *(v59 + 12) = 1024;
      *(v59 + 14) = v51;
      *(v59 + 18) = 1024;
      sub_1B603A944(v55 + SLODWORD(v49[6].isa), v53, &qword_1EB924F20);
      v61 = __swift_getEnumTagSinglePayload(v53, 1, v164) == 1;
      v62 = v53;
      v63 = !v61;
      sub_1B620E044(v62, &qword_1EB924F20);
      sub_1B620B850();
      *(v59 + 20) = v63;
      *(v59 + 24) = 2160;
      *(v59 + 26) = 1752392040;
      *(v59 + 34) = 2081;
      v64 = sub_1B602EEB0(v161, v52, &v184);

      *(v59 + 36) = v64;
      _os_log_impl(&dword_1B6020000, v57, v58, "Could not find a cached entry for %s. allowsFlexibleMarineTimeWindow=%{BOOL}d, hasRelativeRange=%{BOOL}d, identifier=%{private,mask.hash}s", v59, 0x2Cu);
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v60, -1, -1);
      MEMORY[0x1B8C91C90](v59, -1, -1);
    }

    else
    {
      sub_1B620B850();
    }

    v68 = v179;
    v67 = v180;
    v69 = 1;
    return __swift_storeEnumTagSinglePayload(v67, v69, 1, v68);
  }

  sub_1B603A944(v165 + SLODWORD(v182[6].isa), v32, &qword_1EB924F20);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v164);
  v53 = v163;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B620E044(v32, &qword_1EB924F20);
    v51 = 1;
    v52 = v166;
    goto LABEL_10;
  }

  sub_1B605A29C(v32, v162);
  v184 = v159;
  v185 = v160;
  sub_1B6220784();
  MEMORY[0x1B8C90530](46, 0xE100000000000000);
  v65 = v183;
  sub_1B61E0330();
  if (v65)
  {

    return sub_1B620B850();
  }

  v70 = v66;

  v71 = v50 + SHIDWORD(v49[2].isa);
  v72 = v176;
  v73 = v50;
  v74 = v177;
  sub_1B618AFA4(v176, v177, v71);
  v75 = v173;
  sub_1B61E3130(v70, v73, v72, v74, v173);

  v76 = v179;
  if (__swift_getEnumTagSinglePayload(v75, 1, v179) == 1)
  {
    v77 = v72;
    sub_1B620E044(v75, &qword_1EB924EB0);
    v78 = v46;
    v79 = v175;
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v80 = sub_1B6220B34();
    __swift_project_value_buffer(v80, qword_1EDAC2AB0);
    v81 = *(v79 + 16);
    v82 = v170;
    v81(v170, v77, v78);
    v83 = v172;
    v81(v172, v74, v78);
    v84 = v166;
    sub_1B6220784();
    v85 = sub_1B6220B14();
    v86 = sub_1B62217E4();

    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      LODWORD(v183) = v86;
      v88 = v87;
      v198 = swift_slowAlloc();
      v184 = v198;
      *v88 = 136316163;
      *(v88 + 4) = sub_1B602EEB0(0x4620656E6972614DLL, 0xEF7473616365726FLL, &v184);
      *(v88 + 12) = 2080;
      sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
      v182 = v85;
      v89 = sub_1B6221F04();
      v90 = v78;
      v92 = v91;
      v93 = *(v79 + 8);
      v94 = v82;
      v95 = v90;
      v93(v94, v90);
      v96 = sub_1B602EEB0(v89, v92, &v184);

      *(v88 + 14) = v96;
      *(v88 + 22) = 2080;
      v97 = v172;
      v98 = sub_1B6221F04();
      v100 = v99;
      v93(v97, v95);
      v101 = sub_1B602EEB0(v98, v100, &v184);

      *(v88 + 24) = v101;
      *(v88 + 32) = 2160;
      *(v88 + 34) = 1752392040;
      *(v88 + 42) = 2081;
      v102 = sub_1B602EEB0(v161, v84, &v184);

      *(v88 + 44) = v102;
      v103 = v182;
      _os_log_impl(&dword_1B6020000, v182, v183, "Could not find any cached %s appropriate for the request hourly range. rangeStart=%s, rangeEnd=%s, identifier=%{private,mask.hash}s", v88, 0x34u);
      v104 = v198;
      swift_arrayDestroy();
      v105 = v104;
      v106 = v179;
      MEMORY[0x1B8C91C90](v105, -1, -1);
      MEMORY[0x1B8C91C90](v88, -1, -1);

      sub_1B620B850();
      v93(v177, v95);
      v93(v176, v95);
    }

    else
    {

      v135 = *(v79 + 8);
      v135(v83, v78);
      v135(v82, v78);
      sub_1B620B850();
      v135(v74, v78);
      v135(v176, v78);
      v106 = v179;
    }

    v67 = v180;
    v69 = 1;
    v68 = v106;
  }

  else
  {
    v107 = v174;
    v108 = sub_1B605A29C(v75, v174);
    MEMORY[0x1EEE9AC00](v108);
    *(&v159 - 2) = v72;
    *(&v159 - 1) = v109;
    sub_1B6220784();
    sub_1B608E304();
    v111 = v110;
    v183 = 0;

    *v107 = v111;
    v112 = v46;
    v113 = v175;
    if (*(v111 + 16))
    {
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v114 = sub_1B6220B34();
      __swift_project_value_buffer(v114, qword_1EDAC2AB0);
      v115 = *(v113 + 16);
      v115(v171, v72, v112);
      v116 = v168;
      v115(v168, v177, v112);
      sub_1B6220784();
      v117 = sub_1B6220B14();
      v118 = sub_1B62217F4();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v184 = v198;
        *v119 = 136316163;
        *(v119 + 4) = sub_1B602EEB0(0x4620656E6972614DLL, 0xEF7473616365726FLL, &v184);
        *(v119 + 12) = 2080;
        sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
        LODWORD(v182) = v118;
        v120 = v171;
        v121 = sub_1B6221F04();
        v122 = v112;
        v124 = v123;
        v178 = v117;
        v125 = *(v113 + 8);
        v126 = v122;
        v125(v120, v122);
        v127 = sub_1B602EEB0(v121, v124, &v184);

        *(v119 + 14) = v127;
        *(v119 + 22) = 2080;
        v128 = sub_1B6221F04();
        v130 = v129;
        v125(v116, v126);
        v131 = sub_1B602EEB0(v128, v130, &v184);

        *(v119 + 24) = v131;
        *(v119 + 32) = 2160;
        *(v119 + 34) = 1752392040;
        *(v119 + 42) = 2081;
        v132 = sub_1B602EEB0(v161, v166, &v184);

        *(v119 + 44) = v132;
        v133 = v178;
        _os_log_impl(&dword_1B6020000, v178, v182, "Found cached %s that partially matches the requested range. rangeStart=%s, rangeEnd=%s, identifier=%{private,mask.hash}s", v119, 0x34u);
        v134 = v198;
        swift_arrayDestroy();
        v76 = v179;
        MEMORY[0x1B8C91C90](v134, -1, -1);
        MEMORY[0x1B8C91C90](v119, -1, -1);

        sub_1B620B850();
        v125(v177, v126);
        v125(v176, v126);
      }

      else
      {

        v156 = *(v113 + 8);
        v156(v116, v112);
        v156(v171, v112);
        sub_1B620B850();
        v156(v177, v112);
        v156(v72, v112);
      }

      v157 = v180;
      sub_1B605A29C(v174, v180);
      v67 = v157;
      v69 = 0;
    }

    else
    {
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v136 = sub_1B6220B34();
      __swift_project_value_buffer(v136, qword_1EDAC2AB0);
      v137 = *(v113 + 16);
      v137(v169, v72, v112);
      v138 = v167;
      v137(v167, v177, v112);
      sub_1B6220784();
      v139 = sub_1B6220B14();
      v140 = sub_1B62217E4();

      if (os_log_type_enabled(v139, v140))
      {
        v141 = swift_slowAlloc();
        v198 = swift_slowAlloc();
        v184 = v198;
        *v141 = 136316163;
        *(v141 + 4) = sub_1B602EEB0(0x4620656E6972614DLL, 0xEF7473616365726FLL, &v184);
        *(v141 + 12) = 2080;
        sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
        LODWORD(v182) = v140;
        v142 = v169;
        v143 = sub_1B6221F04();
        v178 = v139;
        v144 = v112;
        v146 = v145;
        v147 = *(v113 + 8);
        v147(v142, v144);
        v148 = sub_1B602EEB0(v143, v146, &v184);

        *(v141 + 14) = v148;
        *(v141 + 22) = 2080;
        v149 = sub_1B6221F04();
        v151 = v150;
        v147(v138, v144);
        v152 = sub_1B602EEB0(v149, v151, &v184);

        *(v141 + 24) = v152;
        *(v141 + 32) = 2160;
        *(v141 + 34) = 1752392040;
        *(v141 + 42) = 2081;
        v153 = sub_1B602EEB0(v161, v166, &v184);

        *(v141 + 44) = v153;
        v154 = v178;
        _os_log_impl(&dword_1B6020000, v178, v182, "Found cached %s that partially matches the requested range. But unexpectedly, none of its hours fit within the request range; rangeStart=%s, rangeEnd=%s, identifier=%{private,mask.hash}s", v141, 0x34u);
        v155 = v198;
        swift_arrayDestroy();
        v76 = v179;
        MEMORY[0x1B8C91C90](v155, -1, -1);
        MEMORY[0x1B8C91C90](v141, -1, -1);

        sub_1B620B850();
        sub_1B620B850();
        v147(v177, v144);
        v147(v176, v144);
      }

      else
      {

        v158 = *(v113 + 8);
        v158(v138, v112);
        v158(v169, v112);
        sub_1B620B850();
        sub_1B620B850();
        v158(v177, v112);
        v158(v72, v112);
      }

      v67 = v180;
      v69 = 1;
    }

    v68 = v76;
  }

  return __swift_storeEnumTagSinglePayload(v67, v69, 1, v68);
}

uint64_t sub_1B61E1B60@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v183 = a4;
  v180 = a5;
  v182 = type metadata accessor for WeatherRequestOptions();
  MEMORY[0x1EEE9AC00](v182);
  v178 = (&v159 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v171 = &v159 - v10;
  v179 = type metadata accessor for TideEvents();
  MEMORY[0x1EEE9AC00](v179);
  v174 = (&v159 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v181 = sub_1B621D8F4();
  v175 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v168 = &v159 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v167 = &v159 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v170 = &v159 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v169 = &v159 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v173 = &v159 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v172 = &v159 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v176 = &v159 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v177 = &v159 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v159 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v159 - v31;
  v33 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v159 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = a3;
  v37 = a3;
  v38 = a1;
  v39 = a1;
  v40 = a2;
  v41 = sub_1B61778A4(v37, v39, a2);
  v43 = v42;
  v44 = v198;
  sub_1B61E01A0();
  v198 = v44;
  if (v44)
  {
  }

  v164 = v33;
  v163 = v29;
  v159 = v38;
  v160 = v40;
  v165 = v36;
  v161 = v41;
  v166 = v43;
  v162 = v35;
  v46 = v181;
  v47 = v184;
  if (v184)
  {
    v191 = v184;
    v192 = v185;
    v193 = v186;
    v194 = v187;
    v195 = v188;
    v196 = v189;
    v197 = v190;

    v48 = v165 + v182[17];
    sub_1B6070D34(*v48, *(v48 + 8), *(v48 + 16), *(v48 + 24) | ((*(v48 + 28) | (*(v48 + 30) << 16)) << 32), sub_1B61DCE08, aTideevents_7, &aTideevents_7[8], type metadata accessor for TideEvents, v159, v160, v161, v162, v163, v164);
    return sub_1B60729F4(v47);
  }

  v49 = v182;
  v50 = v165;
  if ((*(v165 + v182[17] + 24) & 0x100) != 0 || (*(v165 + v182[16]) & 2) != 0)
  {
    sub_1B603A944(v165 + v182[12], v32, &qword_1EB924F20);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v164);
    v52 = v166;
    v53 = v163;
    if (EnumTagSinglePayload == 1)
    {
      sub_1B620E044(v32, &qword_1EB924F20);
      v51 = 1;
      goto LABEL_10;
    }

    sub_1B605A29C(v32, v162);
    v184 = v159;
    v185 = v160;
    sub_1B6220784();
    MEMORY[0x1B8C90530](46, 0xE100000000000000);
    v66 = v198;
    sub_1B61E0330();
    v198 = v66;
    if (v66)
    {

      return sub_1B620B850();
    }

    v68 = v67;

    v69 = v177;
    v70 = v176;
    sub_1B618AFA4(v177, v176, v50 + v49[5]);
    v71 = v171;
    sub_1B61E38B8(v68, v50, v69, v70, v171);

    v72 = v179;
    if (__swift_getEnumTagSinglePayload(v71, 1, v179) == 1)
    {
      sub_1B620E044(v71, &qword_1EB924EC0);
      v73 = v46;
      v74 = v175;
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v75 = sub_1B6220B34();
      __swift_project_value_buffer(v75, qword_1EDAC2AB0);
      v76 = *(v74 + 16);
      v76(v172, v69, v73);
      v76(v173, v70, v73);
      v77 = v166;
      sub_1B6220784();
      v78 = sub_1B6220B14();
      v79 = sub_1B62217E4();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        LODWORD(v182) = v79;
        v81 = v80;
        v183 = swift_slowAlloc();
        v184 = v183;
        *v81 = 136316163;
        *(v81 + 4) = sub_1B602EEB0(0x6576452065646954, 0xEB0000000073746ELL, &v184);
        *(v81 + 12) = 2080;
        sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
        v178 = v78;
        v82 = v172;
        v83 = sub_1B6221F04();
        v84 = v73;
        v86 = v85;
        v87 = *(v74 + 8);
        v87(v82, v84);
        v88 = sub_1B602EEB0(v83, v86, &v184);

        *(v81 + 14) = v88;
        *(v81 + 22) = 2080;
        v89 = v173;
        v90 = sub_1B6221F04();
        v92 = v91;
        v87(v89, v84);
        v93 = sub_1B602EEB0(v90, v92, &v184);

        *(v81 + 24) = v93;
        *(v81 + 32) = 2160;
        *(v81 + 34) = 1752392040;
        *(v81 + 42) = 2081;
        v94 = sub_1B602EEB0(v161, v77, &v184);

        *(v81 + 44) = v94;
        v95 = v178;
        _os_log_impl(&dword_1B6020000, v178, v182, "Could not find any cached %s appropriate for the request hourly range. rangeStart=%s, rangeEnd=%s, identifier=%{private,mask.hash}s", v81, 0x34u);
        v96 = v183;
        swift_arrayDestroy();
        v72 = v179;
        MEMORY[0x1B8C91C90](v96, -1, -1);
        MEMORY[0x1B8C91C90](v81, -1, -1);

        sub_1B620B850();
        v87(v176, v84);
        v87(v177, v84);
      }

      else
      {

        v131 = *(v74 + 8);
        v131(v173, v73);
        v131(v172, v73);
        sub_1B620B850();
        v131(v70, v73);
        v131(v69, v73);
      }
    }

    else
    {
      v97 = v174;
      v98 = sub_1B605A29C(v71, v174);
      MEMORY[0x1EEE9AC00](v98);
      *(&v159 - 2) = v69;
      *(&v159 - 1) = v70;
      sub_1B6220784();
      v99 = v198;
      sub_1B608E5A4();
      v101 = v100;

      v97[1] = v101;
      MEMORY[0x1EEE9AC00](v102);
      *(&v159 - 2) = v69;
      *(&v159 - 1) = v70;
      sub_1B6220784();
      sub_1B608E5F8();
      v104 = v103;
      v198 = v99;

      *v97 = v104;
      v105 = v46;
      v106 = v175;
      if (*(v101 + 16))
      {
        if (qword_1EDAB3D80 != -1)
        {
          swift_once();
        }

        v107 = sub_1B6220B34();
        __swift_project_value_buffer(v107, qword_1EDAC2AB0);
        v108 = *(v106 + 16);
        v109 = v169;
        v108(v169, v177, v105);
        v110 = v170;
        v108(v170, v176, v105);
        v111 = v166;
        sub_1B6220784();
        v112 = sub_1B6220B14();
        v113 = sub_1B62217F4();

        v114 = os_log_type_enabled(v112, v113);
        v72 = v179;
        if (v114)
        {
          v115 = swift_slowAlloc();
          v183 = swift_slowAlloc();
          v184 = v183;
          *v115 = 136316163;
          *(v115 + 4) = sub_1B602EEB0(0x6576452065646954, 0xEB0000000073746ELL, &v184);
          *(v115 + 12) = 2080;
          sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
          LODWORD(v182) = v113;
          v116 = sub_1B6221F04();
          v178 = v112;
          v117 = v105;
          v119 = v118;
          v120 = *(v106 + 8);
          v121 = v109;
          v122 = v117;
          v120(v121, v117);
          v123 = sub_1B602EEB0(v116, v119, &v184);

          *(v115 + 14) = v123;
          *(v115 + 22) = 2080;
          v124 = sub_1B6221F04();
          v126 = v125;
          v120(v110, v122);
          v127 = sub_1B602EEB0(v124, v126, &v184);

          *(v115 + 24) = v127;
          *(v115 + 32) = 2160;
          *(v115 + 34) = 1752392040;
          *(v115 + 42) = 2081;
          v128 = sub_1B602EEB0(v161, v111, &v184);

          *(v115 + 44) = v128;
          v129 = v178;
          _os_log_impl(&dword_1B6020000, v178, v182, "Found cached %s that partially matches the requested range. rangeStart=%s, rangeEnd=%s, identifier=%{private,mask.hash}s", v115, 0x34u);
          v130 = v183;
          swift_arrayDestroy();
          v72 = v179;
          MEMORY[0x1B8C91C90](v130, -1, -1);
          MEMORY[0x1B8C91C90](v115, -1, -1);

          sub_1B620B850();
          v120(v176, v122);
          v120(v177, v122);
        }

        else
        {

          v154 = *(v106 + 8);
          v154(v110, v105);
          v154(v109, v105);
          sub_1B620B850();
          v154(v176, v105);
          v154(v177, v105);
        }

        v155 = v180;
        sub_1B605A29C(v174, v180);
        v156 = v155;
        v157 = 0;
        return __swift_storeEnumTagSinglePayload(v156, v157, 1, v72);
      }

      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v132 = sub_1B6220B34();
      __swift_project_value_buffer(v132, qword_1EDAC2AB0);
      v133 = *(v106 + 16);
      v134 = v167;
      v133(v167, v177, v105);
      v135 = v168;
      v133(v168, v176, v105);
      v136 = v166;
      sub_1B6220784();
      v137 = sub_1B6220B14();
      v138 = sub_1B62217E4();

      v139 = os_log_type_enabled(v137, v138);
      v72 = v179;
      if (v139)
      {
        v140 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        v184 = v183;
        *v140 = 136316163;
        *(v140 + 4) = sub_1B602EEB0(0x6576452065646954, 0xEB0000000073746ELL, &v184);
        *(v140 + 12) = 2080;
        sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
        LODWORD(v182) = v138;
        v141 = sub_1B6221F04();
        v178 = v137;
        v142 = v105;
        v144 = v143;
        v145 = *(v106 + 8);
        v145(v134, v142);
        v146 = sub_1B602EEB0(v141, v144, &v184);

        *(v140 + 14) = v146;
        *(v140 + 22) = 2080;
        v147 = sub_1B6221F04();
        v149 = v148;
        v145(v135, v142);
        v150 = sub_1B602EEB0(v147, v149, &v184);

        *(v140 + 24) = v150;
        *(v140 + 32) = 2160;
        *(v140 + 34) = 1752392040;
        *(v140 + 42) = 2081;
        v151 = sub_1B602EEB0(v161, v136, &v184);

        *(v140 + 44) = v151;
        v152 = v178;
        _os_log_impl(&dword_1B6020000, v178, v182, "Found cached %s that partially matches the requested range. But unexpectedly, none of its hours fit within the request range; rangeStart=%s, rangeEnd=%s, identifier=%{private,mask.hash}s", v140, 0x34u);
        v153 = v183;
        swift_arrayDestroy();
        v72 = v179;
        MEMORY[0x1B8C91C90](v153, -1, -1);
        MEMORY[0x1B8C91C90](v140, -1, -1);

        sub_1B620B850();
        sub_1B620B850();
        v145(v176, v142);
        v145(v177, v142);
      }

      else
      {

        v158 = *(v106 + 8);
        v158(v135, v105);
        v158(v134, v105);
        sub_1B620B850();
        sub_1B620B850();
        v158(v176, v105);
        v158(v177, v105);
      }
    }

    v156 = v180;
    v157 = 1;
    return __swift_storeEnumTagSinglePayload(v156, v157, 1, v72);
  }

  v51 = 0;
  v52 = v166;
  v53 = v163;
LABEL_10:
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v55 = sub_1B6220B34();
  __swift_project_value_buffer(v55, qword_1EDAC2AB0);
  v56 = v50;
  v57 = v178;
  sub_1B6036A80(v56, v178);
  sub_1B6220784();
  v58 = sub_1B6220B14();
  v59 = sub_1B62217F4();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v184 = v61;
    *v60 = 136316163;
    *(v60 + 4) = sub_1B602EEB0(0x6576452065646954, 0xEB0000000073746ELL, &v184);
    *(v60 + 12) = 1024;
    *(v60 + 14) = v51;
    *(v60 + 18) = 1024;
    sub_1B603A944(v57 + v49[12], v53, &qword_1EB924F20);
    v62 = __swift_getEnumTagSinglePayload(v53, 1, v164) == 1;
    v63 = v53;
    v64 = !v62;
    sub_1B620E044(v63, &qword_1EB924F20);
    sub_1B620B850();
    *(v60 + 20) = v64;
    *(v60 + 24) = 2160;
    *(v60 + 26) = 1752392040;
    *(v60 + 34) = 2081;
    v65 = sub_1B602EEB0(v161, v52, &v184);

    *(v60 + 36) = v65;
    _os_log_impl(&dword_1B6020000, v58, v59, "Could not find a cached entry for %s. allowsFlexibleMarineTimeWindow=%{BOOL}d, hasRelativeRange=%{BOOL}d, identifier=%{private,mask.hash}s", v60, 0x2Cu);
    swift_arrayDestroy();
    MEMORY[0x1B8C91C90](v61, -1, -1);
    MEMORY[0x1B8C91C90](v60, -1, -1);
  }

  else
  {
    sub_1B620B850();
  }

  return __swift_storeEnumTagSinglePayload(v180, 1, 1, v179);
}

uint64_t sub_1B61E3130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v68 = a1;
  v69 = a3;
  v7 = sub_1B621D8F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9255D8);
  MEMORY[0x1EEE9AC00](v67);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v57 - v19;
  v21 = type metadata accessor for MarineForecast();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v64 = (&v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v70 = &v57 - v25;
  v72 = a2;
  sub_1B60B3FBC();
  v71 = v69;
  sub_1B608E64C();
  v27 = v26;
  v69 = v21;
  __swift_storeEnumTagSinglePayload(a5, 1, 1, v21);
  v28 = *(v27 + 16);
  if (v28)
  {
    v60 = v12;
    v29 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v57 = v27;
    v30 = v27 + v29;
    v31 = *(v22 + 72);
    v65 = (v8 + 16);
    v66 = v31;
    v59 = (v8 + 32);
    v63 = (v8 + 8);
    v68 = a5;
    v58 = v17;
    while (1)
    {
      v32 = v70;
      sub_1B6036A80(v30, v70);
      v33 = *v32;
      v34 = *(*v32 + 16);
      if (v34)
      {
        v35 = v34 - 1;
        v36 = *(type metadata accessor for MarineHourForecast() - 8);
        v37 = v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35;
        a5 = v68;
        (*v65)(v20, v37, v7);
        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      __swift_storeEnumTagSinglePayload(v20, v38, 1, v7);
      if (__swift_getEnumTagSinglePayload(a5, 1, v69))
      {
        __swift_storeEnumTagSinglePayload(v17, 1, 1, v7);
      }

      else
      {
        v39 = v64;
        sub_1B6036A80(a5, v64);
        v40 = *v39;
        v41 = *(v40 + 16);
        if (v41)
        {
          v42 = v41 - 1;
          v43 = *(type metadata accessor for MarineHourForecast() - 8);
          v44 = v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42;
          a5 = v68;
          (*v65)(v17, v44, v7);
          v45 = 0;
        }

        else
        {
          v45 = 1;
        }

        __swift_storeEnumTagSinglePayload(v17, v45, 1, v7);
        sub_1B620B850();
      }

      v46 = *(v67 + 48);
      sub_1B603D3DC(v20, v14, &qword_1EB924600);
      sub_1B603D3DC(v17, &v14[v46], &qword_1EB924600);
      if (__swift_getEnumTagSinglePayload(v14, 1, v7) == 1)
      {
        sub_1B620B850();
        if (__swift_getEnumTagSinglePayload(&v14[v46], 1, v7) != 1)
        {
          sub_1B620E044(&v14[v46], &qword_1EB924600);
        }

        goto LABEL_23;
      }

      if (__swift_getEnumTagSinglePayload(&v14[v46], 1, v7) != 1)
      {
        break;
      }

      sub_1B620E044(a5, &qword_1EB924EB0);
      sub_1B605A29C(v70, a5);
      __swift_storeEnumTagSinglePayload(a5, 0, 1, v69);
      (*v63)(v14, v7);
LABEL_23:
      v30 += v66;
      if (!--v28)
      {
      }
    }

    v47 = v60;
    v48 = *v59;
    (*v59)(v60, v14, v7);
    v49 = &v14[v46];
    v50 = v61;
    v48(v61, v49, v7);
    if (sub_1B621D834())
    {
      v51 = sub_1B621D824();
      v52 = v50;
      v53 = v51;
      v54 = *v63;
      (*v63)(v52, v7);
      v54(v47, v7);
      if (v53)
      {
        a5 = v68;
        sub_1B620E044(v68, &qword_1EB924EB0);
        sub_1B605A29C(v70, a5);
        __swift_storeEnumTagSinglePayload(a5, 0, 1, v69);
LABEL_22:
        v17 = v58;
        goto LABEL_23;
      }
    }

    else
    {
      v55 = *v63;
      (*v63)(v50, v7);
      v55(v47, v7);
    }

    sub_1B620B850();
    a5 = v68;
    goto LABEL_22;
  }
}

uint64_t sub_1B61E38B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v62 = a4;
  v68 = a1;
  v69 = a3;
  v7 = sub_1B621D8F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v61 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9255D8);
  MEMORY[0x1EEE9AC00](v67);
  v14 = &v57 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v57 - v19;
  v21 = type metadata accessor for TideEvents();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v64 = &v57 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v70 = &v57 - v25;
  v72 = a2;
  sub_1B60B4284();
  v71 = v69;
  sub_1B608E6A0();
  v27 = v26;
  v69 = v21;
  __swift_storeEnumTagSinglePayload(a5, 1, 1, v21);
  v28 = *(v27 + 16);
  if (v28)
  {
    v60 = v12;
    v29 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v57 = v27;
    v30 = v27 + v29;
    v31 = *(v22 + 72);
    v65 = (v8 + 16);
    v66 = v31;
    v59 = (v8 + 32);
    v63 = (v8 + 8);
    v68 = a5;
    v58 = v17;
    while (1)
    {
      v32 = v70;
      sub_1B6036A80(v30, v70);
      v33 = *(v32 + 8);
      v34 = *(v33 + 16);
      if (v34)
      {
        v35 = v34 - 1;
        v36 = *(type metadata accessor for HourTide() - 8);
        v37 = v33 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v35;
        a5 = v68;
        (*v65)(v20, v37, v7);
        v38 = 0;
      }

      else
      {
        v38 = 1;
      }

      __swift_storeEnumTagSinglePayload(v20, v38, 1, v7);
      if (__swift_getEnumTagSinglePayload(a5, 1, v69))
      {
        __swift_storeEnumTagSinglePayload(v17, 1, 1, v7);
      }

      else
      {
        v39 = v64;
        sub_1B6036A80(a5, v64);
        v40 = *(v39 + 8);
        v41 = *(v40 + 16);
        if (v41)
        {
          v42 = v41 - 1;
          v43 = *(type metadata accessor for HourTide() - 8);
          v44 = v40 + ((*(v43 + 80) + 32) & ~*(v43 + 80)) + *(v43 + 72) * v42;
          a5 = v68;
          (*v65)(v17, v44, v7);
          v45 = 0;
        }

        else
        {
          v45 = 1;
        }

        __swift_storeEnumTagSinglePayload(v17, v45, 1, v7);
        sub_1B620B850();
      }

      v46 = *(v67 + 48);
      sub_1B603D3DC(v20, v14, &qword_1EB924600);
      sub_1B603D3DC(v17, &v14[v46], &qword_1EB924600);
      if (__swift_getEnumTagSinglePayload(v14, 1, v7) == 1)
      {
        sub_1B620B850();
        if (__swift_getEnumTagSinglePayload(&v14[v46], 1, v7) != 1)
        {
          sub_1B620E044(&v14[v46], &qword_1EB924600);
        }

        goto LABEL_23;
      }

      if (__swift_getEnumTagSinglePayload(&v14[v46], 1, v7) != 1)
      {
        break;
      }

      sub_1B620E044(a5, &qword_1EB924EC0);
      sub_1B605A29C(v70, a5);
      __swift_storeEnumTagSinglePayload(a5, 0, 1, v69);
      (*v63)(v14, v7);
LABEL_23:
      v30 += v66;
      if (!--v28)
      {
      }
    }

    v47 = v60;
    v48 = *v59;
    (*v59)(v60, v14, v7);
    v49 = &v14[v46];
    v50 = v61;
    v48(v61, v49, v7);
    if (sub_1B621D834())
    {
      v51 = sub_1B621D824();
      v52 = v50;
      v53 = v51;
      v54 = *v63;
      (*v63)(v52, v7);
      v54(v47, v7);
      if (v53)
      {
        a5 = v68;
        sub_1B620E044(v68, &qword_1EB924EC0);
        sub_1B605A29C(v70, a5);
        __swift_storeEnumTagSinglePayload(a5, 0, 1, v69);
LABEL_22:
        v17 = v58;
        goto LABEL_23;
      }
    }

    else
    {
      v55 = *v63;
      (*v63)(v50, v7);
      v55(v47, v7);
    }

    sub_1B620B850();
    a5 = v68;
    goto LABEL_22;
  }
}

void sub_1B61E4040()
{
  OUTLINED_FUNCTION_138_0();
  v0 = type metadata accessor for WeatherRequestOptions();
  OUTLINED_FUNCTION_111_2(v0);
  OUTLINED_FUNCTION_198_0();
  sub_1B6070D34(v1, v2, v3, v4, v5, v6, v7, v8, v9, v10, v11, v12, v13, v14);
}

uint64_t sub_1B61E40A0(uint64_t *a1, uint64_t a2)
{
  v23[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = sub_1B621D8F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v17 = *a1;
  if (*(*a1 + 16))
  {
    v23[1] = v2;
    v18 = *(type metadata accessor for MarineHourForecast() - 8);
    (*(v8 + 16))(v13, v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v7);
    v19 = *(v8 + 32);
    v19(v16, v13, v7);
    MarineForecast.lastHourDate.getter(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      (*(v8 + 8))(v16, v7);
      sub_1B620E044(v6, &qword_1EB924600);
      v20 = 0;
    }

    else
    {
      v19(v10, v6, v7);
      sub_1B60715EC(&qword_1EDAB0D78, MEMORY[0x1E6969530]);
      if (sub_1B6221184())
      {
        v20 = 0;
      }

      else
      {
        v20 = sub_1B6221184() ^ 1;
      }

      v21 = *(v8 + 8);
      v21(v10, v7);
      v21(v16, v7);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1B61E43AC(uint64_t a1, uint64_t a2)
{
  v23[3] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v7 = sub_1B621D8F4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v23 - v15;
  v17 = *(a1 + 8);
  if (*(v17 + 16))
  {
    v23[1] = v2;
    v18 = *(type metadata accessor for HourTide() - 8);
    (*(v8 + 16))(v13, v17 + ((*(v18 + 80) + 32) & ~*(v18 + 80)), v7);
    v19 = *(v8 + 32);
    v19(v16, v13, v7);
    TideEvents.lastHourDate.getter(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      (*(v8 + 8))(v16, v7);
      sub_1B620E044(v6, &qword_1EB924600);
      v20 = 0;
    }

    else
    {
      v19(v10, v6, v7);
      sub_1B60715EC(&qword_1EDAB0D78, MEMORY[0x1E6969530]);
      if (sub_1B6221184())
      {
        v20 = 0;
      }

      else
      {
        v20 = sub_1B6221184() ^ 1;
      }

      v21 = *(v8 + 8);
      v21(v10, v7);
      v21(v16, v7);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t get_enum_tag_for_layout_string_13WeatherDaemon0A9DataErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1B61E4718(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B61E4770(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

BOOL sub_1B61E48AC()
{
  sub_1B621D8F4();
  sub_1B60715EC(&qword_1EDAB0D78, MEMORY[0x1E6969530]);
  return (sub_1B6221184() & 1) == 0;
}

uint64_t sub_1B61E4940(uint64_t a1, double a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924990);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for WeatherModel();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CurrentWeather();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    goto LABEL_7;
  }

  sub_1B6220784();
  v19 = sub_1B6072A80(1);
  if ((v20 & 1) == 0)
  {

LABEL_7:
    sub_1B6220784();
    sub_1B6220784();
    return a1;
  }

  sub_1B6036A80(*(a1 + 56) + *(v13 + 72) * v19, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    sub_1B620B850();
    goto LABEL_7;
  }

  sub_1B605A29C(v15, v18);
  sub_1B6036A80(v18, v11);
  *&v11[*(v9 + 32)] = a2;
  *&v11[*(v9 + 36)] = a3;
  sub_1B620D7B4(v11, v18);
  v23 = a1;
  sub_1B6036A80(v18, v8);
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v12);
  sub_1B607C050(v8, 1);
  sub_1B620B850();
  a1 = v23;
  sub_1B6220784();
  sub_1B620B850();
  return a1;
}

uint64_t sub_1B61E4C8C(_BYTE *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  *a1 = *a3;
  sub_1B6036A80(a4, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B61E4CFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924990);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - v2;
  v31 = type metadata accessor for WeatherModel();
  v26 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
  v29 = *(v5 - 8);
  v30 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v26 - v9;
  v11 = *(v0 + 8);
  v12 = 1 << *(v11 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v11 + 64);
  v15 = (v12 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  v17 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v18 = v17;
    if (!v14)
    {
      break;
    }

LABEL_8:
    sub_1B603A944(*(v11 + 56) + *(v29 + 72) * (__clz(__rbit64(v14)) | (v17 << 6)), v10, &qword_1EB925000);
    sub_1B603D3DC(v10, v7, &qword_1EB925000);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B620E044(v7, &qword_1EB925000);
      v19 = 1;
    }

    else
    {
      sub_1B605A29C(v7, v3);
      v19 = 0;
    }

    v14 &= v14 - 1;
    v20 = v31;
    __swift_storeEnumTagSinglePayload(v3, v19, 1, v31);
    if (__swift_getEnumTagSinglePayload(v3, 1, v20) == 1)
    {
      result = sub_1B620E044(v3, &qword_1EB924990);
    }

    else
    {
      sub_1B605A29C(v3, v27);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B609C9A8();
        v28 = v24;
      }

      v21 = *(v28 + 16);
      if (v21 >= *(v28 + 24) >> 1)
      {
        sub_1B609C9A8();
        v28 = v25;
      }

      v22 = v27;
      v23 = v28;
      *(v28 + 16) = v21 + 1;
      result = sub_1B605A29C(v22, v23 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v21);
    }
  }

  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v15)
    {

      return v28;
    }

    v14 = *(v11 + 64 + 8 * v17);
    ++v18;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B61E50EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_1B61E5278()
{
  OUTLINED_FUNCTION_11();
  v0[5] = v1;
  v2 = type metadata accessor for WeatherDataManager.CacheProcessingRequest(0);
  v0[6] = v2;
  OUTLINED_FUNCTION_0(v2);
  v0[7] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C60);
  OUTLINED_FUNCTION_0(v3);
  v0[8] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C68);
  v0[9] = v4;
  OUTLINED_FUNCTION_28_1(v4);
  v0[10] = v5;
  v0[11] = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_76_4();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1B61E5390()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925178);
    sub_1B6221674();
    swift_task_alloc();
    OUTLINED_FUNCTION_7_10();
    *(v0 + 104) = v2;
    *v2 = v3;
    v4 = OUTLINED_FUNCTION_71_3(v2);

    return MEMORY[0x1EEE6D9C8](v4);
  }

  else
  {

    OUTLINED_FUNCTION_3_17();

    return v5();
  }
}

uint64_t sub_1B61E54B0()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_76_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B61E5594()
{
  OUTLINED_FUNCTION_11();
  v1 = v0[8];
  v2 = OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_16_5(v2, v3, v4);
  if (v5)
  {
    (*(v0[10] + 8))(v0[11], v0[9]);

    OUTLINED_FUNCTION_3_17();

    return v6();
  }

  else
  {
    sub_1B605A29C(v1, v0[7]);
    v8 = swift_task_alloc();
    v0[14] = v8;
    *v8 = v0;
    v8[1] = sub_1B61E56C4;
    v9 = v0[7];

    return sub_1B61E5834(v9);
  }
}

uint64_t sub_1B61E56C4()
{
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_8_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_76_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B61E57A8()
{
  OUTLINED_FUNCTION_11();
  sub_1B620B850();
  swift_task_alloc();
  OUTLINED_FUNCTION_7_10();
  *(v0 + 104) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_71_3();

  return MEMORY[0x1EEE6D9C8](v3);
}

uint64_t sub_1B61E5834(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1B6220EC4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1B6220A84();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v5 = sub_1B6220B34();
  v2[10] = v5;
  v2[11] = *(v5 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for SignpostInterval();
  v2[14] = swift_task_alloc();
  type metadata accessor for WeatherRequestOptions();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B61E5A08, 0, 0);
}

uint64_t sub_1B61E5A08()
{
  v1 = v0[15];
  v2 = v0[2];
  v3 = sub_1B61E4CFC();
  v0[16] = v3;
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  type metadata accessor for WeatherDataManager.CacheProcessingRequest(0);
  OUTLINED_FUNCTION_29_12();
  sub_1B6036A80(v2 + v6, v1);
  v7 = sub_1B6070128(v1);
  v9 = v8;
  v0[17] = v8;
  v10 = sub_1B6067284();
  v0[18] = v10;
  if (v10)
  {
    v37 = v9;
    v38 = v3;
    v39 = v10;
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v11 = v0[14];
    v12 = v0[11];
    v13 = v0[12];
    v14 = v0[9];
    v15 = v0[8];
    v17 = v0[5];
    v16 = v0[6];
    v35 = v0[7];
    v36 = v0[4];
    __swift_project_value_buffer(v0[10], qword_1EDAC2AB0);
    (*(v12 + 16))(v13);
    sub_1B6220A94();
    sub_1B6220AA4();
    sub_1B6220A64();
    OUTLINED_FUNCTION_164_0();
    sub_1B61EE7AC();
    v19 = v18;
    (*(v15 + 8))(v14, v35);
    *v11 = "processCacheRequest";
    *(v11 + 8) = 19;
    *(v11 + 16) = 2;
    *(v11 + 24) = v19;
    (*(v17 + 104))(v16, *MEMORY[0x1E69D62C0], v36);
    sub_1B6220EE4();
    OUTLINED_FUNCTION_249();
    swift_allocObject();
    OUTLINED_FUNCTION_104();
    v0[19] = sub_1B6220ED4();
    v28 = v0[15];
    v30 = v0[2];
    v29 = v0[3];
    v31 = swift_task_alloc();
    v0[20] = v31;
    v31[2] = v38;
    v31[3] = v29;
    v31[4] = v39;
    v31[5] = v4;
    v31[6] = v5;
    v31[7] = v7;
    v31[8] = v37;
    v31[9] = v28;
    v31[10] = v30;
    v32 = swift_task_alloc();
    v0[21] = v32;
    *v32 = v0;
    v32[1] = sub_1B61E5EE4;

    return MEMORY[0x1EEE6DBF8]();
  }

  else
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    OUTLINED_FUNCTION_225(v0[10], qword_1EDAC2AB0);
    v20 = sub_1B6220B14();
    sub_1B62217E4();
    v21 = OUTLINED_FUNCTION_78_1();
    if (os_log_type_enabled(v21, v22))
    {
      *OUTLINED_FUNCTION_226_0() = 0;
      OUTLINED_FUNCTION_140_0();
      _os_log_impl(v23, v24, v25, v26, v27, 2u);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }

    OUTLINED_FUNCTION_83_2();

    OUTLINED_FUNCTION_3_17();

    return v33();
  }
}

uint64_t sub_1B61E5EE4()
{
  OUTLINED_FUNCTION_8_12();
  v1 = *v0;
  OUTLINED_FUNCTION_1_17();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_76_4();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1B61E6028()
{

  SignpostInterval.end()();

  OUTLINED_FUNCTION_14_24();
  sub_1B620B850();
  OUTLINED_FUNCTION_83_2();

  OUTLINED_FUNCTION_3_17();

  return v0();
}

void sub_1B61E60DC()
{
  OUTLINED_FUNCTION_116();
  v98 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_58();
  v91 = type metadata accessor for InterpolationInputProducts();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v92 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA0);
  OUTLINED_FUNCTION_0(v7);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v94 = v90 - v9;
  OUTLINED_FUNCTION_21_2();
  v10 = type metadata accessor for DailyForecast();
  v11 = OUTLINED_FUNCTION_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v93 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924990);
  v15 = OUTLINED_FUNCTION_0(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_3();
  v95 = v16;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_24_14();
  v18 = type metadata accessor for HourlyForecast();
  v19 = OUTLINED_FUNCTION_0(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v96 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  OUTLINED_FUNCTION_0(v22);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = v90 - v24;
  v26 = sub_1B621DB64();
  OUTLINED_FUNCTION_2();
  v99 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_14();
  v97 = v30 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F28);
  OUTLINED_FUNCTION_0(v31);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v90 - v33;
  v35 = type metadata accessor for WeatherInterpolationOptions();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_14();
  v39 = (v38 - v37);
  v40 = type metadata accessor for WeatherRequestOptions();
  sub_1B603A944(v3 + *(v40 + 52), v34, &qword_1EB924F28);
  v41 = OUTLINED_FUNCTION_3_29();
  OUTLINED_FUNCTION_16_5(v41, v42, v35);
  if (!v51)
  {
    v49 = OUTLINED_FUNCTION_302();
    sub_1B605A29C(v49, v50);
    sub_1B603A944(v3 + *(v40 + 20), v25, &qword_1EB924EF8);
    OUTLINED_FUNCTION_16_5(v25, 1, v26);
    if (v51)
    {
      sub_1B620E044(v25, &qword_1EB924EF8);
      if (qword_1EDAB3D80 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      v52 = sub_1B6220B34();
      OUTLINED_FUNCTION_225(v52, qword_1EDAC2AB0);
      v53 = sub_1B6220B14();
      sub_1B62217E4();
      v54 = OUTLINED_FUNCTION_78_1();
      if (os_log_type_enabled(v54, v55))
      {
        *OUTLINED_FUNCTION_226_0() = 0;
        OUTLINED_FUNCTION_140_0();
        _os_log_impl(v56, v57, v58, v59, v60, 2u);
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1B8C91C90]();
      }

      sub_1B60BE750();
      swift_allocError();
      OUTLINED_FUNCTION_160_0();
      *v61 = v62;
      v61[1] = 0x80000001B623CB80;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8);
      OUTLINED_FUNCTION_249();
      swift_allocObject();
      OUTLINED_FUNCTION_222();
      sub_1B6220984();
      goto LABEL_25;
    }

    v63 = v3;
    v64 = v97;
    (*(v99 + 32))(v97, v25, v26);
    v65 = OUTLINED_FUNCTION_17_2();
    v68 = sub_1B60668B4(v66, v63, v65, v67);
    v70 = v69;
    sub_1B60C4DE8(3, v68, v1);
    v71 = type metadata accessor for WeatherModel();
    OUTLINED_FUNCTION_16_5(v1, 1, v71);
    if (!v72)
    {
      OUTLINED_FUNCTION_48_4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 3)
      {
LABEL_22:

        sub_1B620B850();
        goto LABEL_23;
      }

      v90[1] = v70;
      sub_1B605A29C(v1, v96);
      v1 = v95;
      sub_1B60C4DE8(2, v68, v95);
      OUTLINED_FUNCTION_16_5(v1, 1, v71);
      if (!v51)
      {
        OUTLINED_FUNCTION_48_4();
        v79 = swift_getEnumCaseMultiPayload();
        if (v79 == 2)
        {
          v80 = v93;
          sub_1B605A29C(v1, v93);
          v81 = v94;
          sub_1B61E6CE0(v68, v94);

          v82 = v92;
          sub_1B6036A80(v96, v92);
          v83 = v91;
          sub_1B6036A80(v80, v82 + *(v91 + 20));
          sub_1B603A944(v81, v82 + *(v83 + 24), &qword_1EB924EA0);
          v84 = OUTLINED_FUNCTION_17_2();
          v87 = sub_1B61E6E38(v82, v39, v85, v64, v84, v86);
          sub_1B620B850();
          if (v87)
          {
            v100 = v87;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8);
            OUTLINED_FUNCTION_249();
            swift_allocObject();
            sub_1B6220994();
          }

          else
          {
            sub_1B60BE750();
            swift_allocError();
            OUTLINED_FUNCTION_160_0();
            *v89 = v88 + 39;
            v89[1] = 0x80000001B623CC00;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8);
            OUTLINED_FUNCTION_249();
            swift_allocObject();
            OUTLINED_FUNCTION_222();
            sub_1B6220984();
          }

          sub_1B620E044(v81, &qword_1EB924EA0);
          sub_1B620B850();
          OUTLINED_FUNCTION_32_12();
          sub_1B620B850();
          goto LABEL_24;
        }

        OUTLINED_FUNCTION_32_12();
        sub_1B620B850();
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_32_12();
      sub_1B620B850();
    }

    sub_1B620E044(v1, &qword_1EB924990);
LABEL_23:
    v74 = OUTLINED_FUNCTION_17_2();
    sub_1B61E69E4(v63, v39, v75, v64, v74, v76);
LABEL_24:
    v77 = OUTLINED_FUNCTION_51_4();
    v78(v77);
LABEL_25:
    sub_1B620B850();
    goto LABEL_26;
  }

  sub_1B620E044(v34, &qword_1EB924F28);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v43 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v43, qword_1EDAC2AB0);
  v44 = sub_1B6220B14();
  v45 = sub_1B62217E4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = OUTLINED_FUNCTION_226_0();
    *v46 = 0;
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  sub_1B60BE750();
  swift_allocError();
  OUTLINED_FUNCTION_160_0();
  *v48 = v47 + 5;
  v48[1] = 0x80000001B623CB50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D8);
  OUTLINED_FUNCTION_249();
  swift_allocObject();
  OUTLINED_FUNCTION_222();
  sub_1B6220984();
LABEL_26:
  OUTLINED_FUNCTION_117();
}

uint64_t sub_1B61E69E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v26 = a3;
  v27 = a4;
  v28 = *v6;
  v11 = sub_1B621DB64();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = type metadata accessor for WeatherInterpolationOptions();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = v6;
  v30 = a5;
  v31 = a6;
  v32 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251D0);
  v25 = sub_1B62209F4();
  sub_1B6036A80(a2, v17);
  sub_1B602D048(v26, v33);
  (*(v12 + 16))(&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v27, v11);
  v18 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v19 = (v16 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = (*(v12 + 80) + v19 + 40) & ~*(v12 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = a5;
  *(v21 + 24) = a6;
  sub_1B605A29C(v17, v21 + v18);
  sub_1B60273A4(v33, v21 + v19);
  (*(v12 + 32))(v21 + v20, &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v11);
  v22 = sub_1B62208D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250F0);
  v23 = sub_1B6220954();

  return v23;
}

uint64_t sub_1B61E6CE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for WeatherModel();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v8 = sub_1B6072A80(4);
    if (v9)
    {
      sub_1B6036A80(*(a1 + 56) + *(v5 + 72) * v8, v7);
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        return sub_1B603D3DC(v7, a2, &qword_1EB924EA0);
      }

      sub_1B620B850();
    }
  }

  HourForecast = type metadata accessor for NextHourForecast();
  return __swift_storeEnumTagSinglePayload(a2, 1, 1, HourForecast);
}

uint64_t sub_1B61E6E38(NSObject *a1, void *a2, NSObject *a3, uint64_t a4, double a5, double a6)
{
  v234 = a4;
  v235 = a2;
  v232 = a3;
  v233 = a1;
  v8 = sub_1B621D364();
  v226 = *(v8 - 8);
  v227 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v218 = &v206 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v217 = &v206 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v221 = &v206 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v220 = &v206 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v225 = &v206 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v224 = &v206 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v206 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E80);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v206 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v223 = (&v206 - v27);
  v28 = type metadata accessor for CurrentWeather();
  v230 = *(v28 - 8);
  v231 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v228 = &v206 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v206 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v229 = &v206 - v34;
  v35 = sub_1B621D8F4();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v206 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v236 = &v206 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v222 = &v206 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v219 = &v206 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v206 - v46;
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v206 - v49;
  v51 = type metadata accessor for WeatherInterpolationOptions();
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v206 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6036A80(v235, v53);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v237 = v35;
    v235 = v36;
    v54 = &v53[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925108) + 48)];
    v55 = *v54;
    v56 = v54[8];
    v57 = v226;
    (*(v226 + 32))(v22, v53, v227);
    if (qword_1EDAB3D80 != -1)
    {
LABEL_39:
      swift_once();
    }

    v222 = v55;
    v58 = sub_1B6220B34();
    v59 = __swift_project_value_buffer(v58, qword_1EDAC2AB0);
    v60 = *(v57 + 16);
    v61 = v227;
    v60(v224, v22, v227);
    v214 = v57 + 16;
    v213 = v60;
    v60(v225, v22, v61);
    v215 = v59;
    v62 = sub_1B6220B14();
    v63 = sub_1B62217F4();
    v64 = os_log_type_enabled(v62, v63);
    v229 = v38;
    LODWORD(v219) = v56;
    v216 = v22;
    if (v64)
    {
      v65 = swift_slowAlloc();
      v210 = v63;
      v66 = v65;
      v211 = swift_slowAlloc();
      v240 = v211;
      *v66 = 141559043;
      *(v66 + 4) = 1752392040;
      *(v66 + 12) = 2081;
      v238 = a5;
      v239 = a6;
      type metadata accessor for CLLocationCoordinate2D(0);
      v67 = sub_1B6221234();
      v209 = v62;
      v69 = sub_1B602EEB0(v67, v68, &v240);

      v212 = v66;
      *(v66 + 14) = v69;
      *(v66 + 22) = 2080;
      v70 = v236;
      v71 = v224;
      sub_1B621D354();
      v208 = sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
      v72 = v237;
      v73 = sub_1B6221F04();
      v75 = v74;
      v207 = v235[1];
      v207(v70, v72);
      v223 = *(v226 + 8);
      v223(v71, v227);
      v76 = sub_1B602EEB0(v73, v75, &v240);

      v77 = v212;
      *(v212 + 24) = v76;
      *(v77 + 32) = 2080;
      v78 = v225;
      sub_1B621D334();
      v79 = sub_1B6221F04();
      v81 = v80;
      v82 = v70;
      v83 = v219;
      v207(v82, v72);
      v22 = v216;
      v223(v78, v227);
      v38 = v229;
      v84 = sub_1B602EEB0(v79, v81, &v240);

      v85 = v212;
      *(v212 + 34) = v84;
      *(v85 + 42) = 2080;
      v86 = v222;
      v238 = *&v222;
      LOBYTE(v239) = v83;
      v87 = WeatherInterpolationOptions.Stride.description.getter();
      v89 = sub_1B602EEB0(v87, v88, &v240);

      *(v85 + 44) = v89;
      v90 = v209;
      _os_log_impl(&dword_1B6020000, v209, v210, "Attempting to interpolate current weather; location=%{private,mask.hash}s, DateInterval.start: %s, DateInterval.end: %s, stride: %s", v85, 0x34u);
      v91 = v211;
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v91, -1, -1);
      MEMORY[0x1B8C91C90](v85, -1, -1);

      v92 = v235;
    }

    else
    {

      v107 = *(v57 + 8);
      v107(v225, v61);
      v223 = v107;
      v107(v224, v61);
      v92 = v235;
      v86 = v222;
      v83 = v56;
    }

    sub_1B621D354();
    v235 = v92 + 1;
    v56 = v83 | ((v86 * 60) >> 64 == (60 * v86) >> 63);
    v108 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v109 = v236;
      v110 = v22;
      sub_1B621D334();
      v111 = sub_1B621D834();
      v112 = *v235;
      (*v235)(v109, v237);
      if ((v111 & 1) == 0)
      {
        break;
      }

      isa = v232[3].isa;
      v114 = v232[4].isa;
      __swift_project_boxed_opaque_existential_1(v232, isa);
      (*(v114 + 1))(v233, v38, v234, isa, v114, a5, a6);
      if (__swift_getEnumTagSinglePayload(v25, 1, v231) == 1)
      {
        sub_1B620E044(v25, &qword_1EB924E80);
        break;
      }

      sub_1B605A29C(v25, v32);
      v55 = v228;
      sub_1B6036A80(v32, v228);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B609C550();
        v108 = v115;
      }

      v22 = v110;
      v38 = v229;
      v57 = *(v108 + 16);
      if (v57 >= *(v108 + 24) >> 1)
      {
        sub_1B609C550();
        v108 = v116;
      }

      *(v108 + 16) = v57 + 1;
      sub_1B605A29C(v55, v108 + ((*(v230 + 80) + 32) & ~*(v230 + 80)) + *(v230 + 72) * v57);
      if ((v56 & 1) == 0)
      {
        __break(1u);
        goto LABEL_39;
      }

      sub_1B621D8B4();
      sub_1B620B850();
    }

    if (*(v108 + 16))
    {
      v147 = v220;
      v148 = v227;
      v149 = v213;
      v213(v220, v110, v227);
      v150 = v221;
      v149(v221, v110, v148);
      v151 = sub_1B6220B14();
      v152 = sub_1B62217F4();
      v153 = os_log_type_enabled(v151, v152);
      v154 = v237;
      if (v153)
      {
        v155 = swift_slowAlloc();
        v234 = swift_slowAlloc();
        v240 = v234;
        *v155 = 136315650;
        v233 = v151;
        v156 = v236;
        LODWORD(v232) = v152;
        sub_1B621D354();
        v231 = sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
        v157 = sub_1B6221F04();
        v159 = v158;
        v112(v156, v154);
        v223(v147, v148);
        v160 = sub_1B602EEB0(v157, v159, &v240);

        *(v155 + 4) = v160;
        *(v155 + 12) = 2080;
        v161 = v221;
        sub_1B621D334();
        v162 = v237;
        v163 = sub_1B6221F04();
        v165 = v164;
        v112(v156, v162);
        v166 = v161;
        v167 = v223;
        v223(v166, v148);
        v168 = sub_1B602EEB0(v163, v165, &v240);

        *(v155 + 14) = v168;
        *(v155 + 22) = 2080;
        v238 = *&v222;
        LOBYTE(v239) = v219;
        v169 = WeatherInterpolationOptions.Stride.description.getter();
        v171 = sub_1B602EEB0(v169, v170, &v240);

        *(v155 + 24) = v171;
        v172 = v233;
        _os_log_impl(&dword_1B6020000, v233, v232, "Successfully interpolated for dateInterval.start: %s, dateInterval.end: %s, stride: %s", v155, 0x20u);
        v173 = v234;
        swift_arrayDestroy();
        MEMORY[0x1B8C91C90](v173, -1, -1);
        MEMORY[0x1B8C91C90](v155, -1, -1);

        v112(v229, v237);
        v167(v216, v148);
      }

      else
      {

        v201 = v223;
        v223(v150, v148);
        v201(v147, v148);
        v112(v229, v154);
        v201(v110, v148);
      }

      return v108;
    }

    v174 = v217;
    v175 = v110;
    v176 = v227;
    v177 = v213;
    v213(v217, v110, v227);
    v178 = v218;
    v177(v218, v110, v176);
    v179 = sub_1B6220B14();
    v180 = sub_1B62217E4();
    v181 = os_log_type_enabled(v179, v180);
    v182 = v237;
    if (v181)
    {
      v183 = swift_slowAlloc();
      v234 = swift_slowAlloc();
      v240 = v234;
      *v183 = 136315650;
      v184 = v236;
      LODWORD(v233) = v180;
      sub_1B621D354();
      v231 = sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
      v232 = v179;
      v185 = sub_1B6221F04();
      v187 = v186;
      v112(v184, v182);
      v188 = v223;
      v223(v174, v176);
      v189 = sub_1B602EEB0(v185, v187, &v240);

      *(v183 + 4) = v189;
      *(v183 + 12) = 2080;
      sub_1B621D334();
      v190 = v237;
      v191 = sub_1B6221F04();
      v193 = v192;
      v112(v184, v190);
      v188(v178, v176);
      v194 = v188;
      v195 = sub_1B602EEB0(v191, v193, &v240);

      *(v183 + 14) = v195;
      *(v183 + 22) = 2080;
      v238 = *&v222;
      LOBYTE(v239) = v219;
      v196 = WeatherInterpolationOptions.Stride.description.getter();
      v198 = sub_1B602EEB0(v196, v197, &v240);

      *(v183 + 24) = v198;
      v199 = v232;
      _os_log_impl(&dword_1B6020000, v232, v233, "Failed to interpolate for dateInterval.start: %s, dateInterval.end: %s, stride: %s", v183, 0x20u);
      v200 = v234;
      swift_arrayDestroy();
      MEMORY[0x1B8C91C90](v200, -1, -1);
      MEMORY[0x1B8C91C90](v183, -1, -1);

      v112(v229, v190);
      v194(v216, v176);
    }

    else
    {

      v204 = v223;
      v223(v178, v176);
      v204(v174, v176);
      v112(v229, v182);
      v204(v175, v176);
    }

    return 0;
  }

  (v36[4])(v50, v53, v35);
  v93 = v36;
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v94 = sub_1B6220B34();
  __swift_project_value_buffer(v94, qword_1EDAC2AB0);
  v228 = v36[2];
  (v228)(v47, v50, v35);
  v95 = sub_1B6220B14();
  v96 = sub_1B62217F4();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v227 = v50;
    v235 = v93;
    v99 = v98;
    v240 = v98;
    *v97 = 141558531;
    *(v97 + 4) = 1752392040;
    *(v97 + 12) = 2081;
    v238 = a5;
    v239 = a6;
    type metadata accessor for CLLocationCoordinate2D(0);
    v100 = sub_1B6221234();
    v102 = sub_1B602EEB0(v100, v101, &v240);

    *(v97 + 14) = v102;
    *(v97 + 22) = 2080;
    sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
    v103 = sub_1B6221F04();
    v105 = v104;
    v236 = v235[1];
    (v236)(v47, v35);
    v106 = sub_1B602EEB0(v103, v105, &v240);

    *(v97 + 24) = v106;
    _os_log_impl(&dword_1B6020000, v95, v96, "Attempting to interpolate current weather; location=%{private,mask.hash}s, date: %s", v97, 0x20u);
    swift_arrayDestroy();
    v50 = v227;
    MEMORY[0x1B8C91C90](v99, -1, -1);
    MEMORY[0x1B8C91C90](v97, -1, -1);
  }

  else
  {

    v236 = v93[1];
    (v236)(v47, v35);
  }

  v117 = v232[3].isa;
  v118 = v232[4].isa;
  __swift_project_boxed_opaque_existential_1(v232, v117);
  v119 = v223;
  (*(v118 + 1))(v233, v50, v234, v117, v118, a5, a6);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v119, 1, v231);
  v121 = v222;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B620E044(v119, &qword_1EB924E80);
    (v228)(v121, v50, v35);
    v122 = sub_1B6220B14();
    v123 = sub_1B62217E4();
    if (os_log_type_enabled(v122, v123))
    {
      v124 = swift_slowAlloc();
      v125 = swift_slowAlloc();
      v238 = *&v125;
      *v124 = 136315138;
      sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
      v126 = sub_1B6221F04();
      v127 = v35;
      v129 = v128;
      v130 = v121;
      v131 = v236;
      (v236)(v130, v127);
      v132 = sub_1B602EEB0(v126, v129, &v238);

      *(v124 + 4) = v132;
      _os_log_impl(&dword_1B6020000, v122, v123, "Failed to interpolate for date: %s", v124, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v125);
      MEMORY[0x1B8C91C90](v125, -1, -1);
      MEMORY[0x1B8C91C90](v124, -1, -1);

      v131(v50, v127);
    }

    else
    {

      v202 = v236;
      (v236)(v121, v35);
      v202(v50, v35);
    }

    return 0;
  }

  sub_1B605A29C(v119, v229);
  v133 = v219;
  (v228)(v219, v50, v35);
  v134 = sub_1B6220B14();
  v135 = sub_1B62217F4();
  if (os_log_type_enabled(v134, v135))
  {
    v136 = swift_slowAlloc();
    v137 = v35;
    v138 = swift_slowAlloc();
    v238 = *&v138;
    *v136 = 136315138;
    sub_1B60715EC(&qword_1EDAB0D70, MEMORY[0x1E6969530]);
    v139 = sub_1B6221F04();
    v141 = v140;
    v142 = v133;
    v143 = v236;
    (v236)(v142, v137);
    v144 = sub_1B602EEB0(v139, v141, &v238);

    *(v136 + 4) = v144;
    _os_log_impl(&dword_1B6020000, v134, v135, "Successfuly interpolated for date: %s", v136, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v138);
    v145 = v138;
    v35 = v137;
    MEMORY[0x1B8C91C90](v145, -1, -1);
    MEMORY[0x1B8C91C90](v136, -1, -1);

    v146 = v143;
  }

  else
  {

    v146 = v236;
    (v236)(v133, v35);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924950);
  v203 = (*(v230 + 80) + 32) & ~*(v230 + 80);
  v108 = swift_allocObject();
  *(v108 + 16) = xmmword_1B6225510;
  sub_1B605A29C(v229, v108 + v203);
  v146(v50, v35);
  return v108;
}

uint64_t sub_1B61E8684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for WeatherRequestOptions();
  v38 = *(v8 - 8);
  v9 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EDAC2AB0);
  sub_1B6220784();
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v37 = a1;
    v15 = v14;
    v16 = swift_slowAlloc();
    v35 = a3;
    v36 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    v34 = v16;
    v39 = v16;
    *v15 = 141558275;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    v17 = type metadata accessor for WeatherServiceRequestLocation();
    v18 = MEMORY[0x1B8C906E0](a2, v17);
    v20 = sub_1B602EEB0(v18, v19, &v39);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_1B6020000, v12, v13, "Fetching from WDS; locations=%{private,mask.hash}s", v15, 0x16u);
    v21 = v34;
    __swift_destroy_boxed_opaque_existential_1(v34);
    a3 = v35;
    v10 = v36;
    MEMORY[0x1B8C91C90](v21, -1, -1);
    v22 = v15;
    a1 = v37;
    MEMORY[0x1B8C91C90](v22, -1, -1);
  }

  sub_1B621DC04();
  sub_1B621DBF4();
  if (qword_1EDAB2090 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  if (v39)
  {
    sub_1B60BE750();
    swift_allocError();
    *v24 = xmmword_1B6239C90;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E50);
    swift_allocObject();
    return sub_1B6220984();
  }

  if (!*(a2 + 16))
  {
    v30 = sub_1B6220B14();
    v31 = sub_1B62217F4();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1B6020000, v30, v31, "Fetching from WDS; Location is Empty", v32, 2u);
      MEMORY[0x1B8C91C90](v32, -1, -1);
    }

    v39 = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E50);
    swift_allocObject();
    return sub_1B6220994();
  }

  MEMORY[0x1EEE9AC00](v23);
  *(&v34 - 4) = a3;
  *(&v34 - 3) = a2;
  *(&v34 - 2) = v4;
  *(&v34 - 1) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251C8);
  sub_1B62209F4();
  sub_1B6036A80(a3, v10);
  v26 = (*(v38 + 80) + 24) & ~*(v38 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = a1;
  sub_1B605A29C(v10, v27 + v26);
  sub_1B6220784();
  v28 = sub_1B62208D4();
  v29 = sub_1B6220954();

  return v29;
}

uint64_t sub_1B61E8B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for WeatherServiceRequestLocation();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*a1 + 16))
  {
    *a3 = *(*a1 + 48);
    return sub_1B6220784();
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v10 = sub_1B6220B34();
    __swift_project_value_buffer(v10, qword_1EDAC2AB0);
    sub_1B6036A80(a2, v8);
    v11 = sub_1B6220B14();
    v12 = sub_1B62217E4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v13 = 141558275;
      *(v13 + 4) = 1752392040;
      *(v13 + 12) = 2081;
      v15 = CLLocationCoordinate2D.id.getter();
      v17 = v16;
      sub_1B620B850();
      v18 = sub_1B602EEB0(v15, v17, &v20);

      *(v13 + 14) = v18;
      _os_log_impl(&dword_1B6020000, v11, v12, "Unexpected empty results when fetching products for location. location=%{private,mask.hash}s", v13, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x1B8C91C90](v14, -1, -1);
      MEMORY[0x1B8C91C90](v13, -1, -1);
    }

    else
    {

      sub_1B620B850();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
    sub_1B604D954();
    result = sub_1B6221124();
    *a3 = result;
  }

  return result;
}

void sub_1B61E8E14()
{
  OUTLINED_FUNCTION_116();
  v153 = v0;
  v2 = v1;
  v4 = v3;
  v151 = v5;
  v176 = type metadata accessor for WeatherServiceRequestLocation();
  OUTLINED_FUNCTION_2();
  v179 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  v168 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  v169 = v10;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_40_0();
  v164 = v12;
  OUTLINED_FUNCTION_21_2();
  v173 = sub_1B621DB64();
  v13 = OUTLINED_FUNCTION_28_1(v173);
  v15 = v14;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_14();
  v163 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  v19 = OUTLINED_FUNCTION_0(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2_3();
  v156 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v151 - v22;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E08);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_3();
  v155 = v25;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_40_0();
  v180 = v27;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249D8);
  OUTLINED_FUNCTION_2();
  v160 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2_3();
  v170 = v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_40_0();
  v159 = v32;
  OUTLINED_FUNCTION_21_2();
  v33 = *(type metadata accessor for WeatherRequestOptions() + 64);
  v152 = v2;
  v34 = *(v2 + v33);
  v35 = &unk_1B6225000;
  if ((v34 & 1) == 0)
  {
    if (qword_1EDAB3D80 != -1)
    {
      goto LABEL_115;
    }

    goto LABEL_3;
  }

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v46 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v46, qword_1EDAC2AB0);
  sub_1B6220784();
  v37 = sub_1B6220B14();
  v38 = sub_1B62217F4();

  if (os_log_type_enabled(v37, v38))
  {
    OUTLINED_FUNCTION_110();
    v39 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v40 = swift_slowAlloc();
    v181[0] = v40;
    *v39 = 141558275;
    OUTLINED_FUNCTION_37_5();
    OUTLINED_FUNCTION_183_0(v47);
    v50 = sub_1B602EEB0(v48, v49, v181);

    *(v39 + 14) = v50;
    v45 = "Attempting to read weather data from cache (policy allows expired data); locations=%{private,mask.hash}s";
LABEL_9:
    _os_log_impl(&dword_1B6020000, v37, v38, v45, v39, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

LABEL_10:

  if ((v34 & 8) != 0)
  {
LABEL_96:
    OUTLINED_FUNCTION_136_0();
    OUTLINED_FUNCTION_117();

    sub_1B61E8684(v126, v127, v128);
    return;
  }

  MEMORY[0x1EEE9AC00](v51);
  v52 = v151;
  *(&v151 - 4) = v153;
  *(&v151 - 3) = v52;
  *(&v151 - 2) = v152;
  sub_1B60B4868();
  v54 = v53;
  v158 = *(v53 + 16);
  v162 = v15 + 32;
  v167 = (v15 + 8);
  sub_1B6220784();
  v55 = 0;
  v56 = &qword_1EB924EF8;
  v171 = v23;
  v35 = v170;
  v157 = v54;
LABEL_12:
  v178 = v4;
  if (v55 != v158)
  {
    if (v55 >= *(v54 + 16))
    {
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v57 = v159;
    sub_1B603A944(v54 + ((*(v160 + 80) + 32) & ~*(v160 + 80)) + *(v160 + 72) * v55, v159, &qword_1EB9249D8);
    v165 = v55 + 1;
    v58 = *(v161 + 48);
    v177 = *(v57 + v58);
    OUTLINED_FUNCTION_101_2();
    v59 = OUTLINED_FUNCTION_302();
    sub_1B605A29C(v59, v60);
    v61 = 0;
    *(v35 + v58) = v177;
    v4 = v178;
    v62 = v179;
    v63 = v178[2];
    v64 = 1;
    *&v177 = v63;
    while (1)
    {
      if (v63 == v61)
      {
        v23 = v4[2];
        v61 = v23;
        goto LABEL_39;
      }

      v34 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v15 = *(v62 + 72);
      v65 = v4 + v34 + v15 * v61;
      v66 = *v35;
      if (*v65 == *v35)
      {
        v67 = v35[1];
        if (*(v65 + 8) == v67)
        {
          v68 = *(v65 + 24);
          v70 = *(v35 + 2);
          v69 = *(v35 + 3);
          if (v68)
          {
            if (!v69)
            {
              goto LABEL_37;
            }

            v71 = *(v65 + 16) == v70 && v68 == v69;
            if (!v71)
            {
              v72 = *(v62 + 72);
              v73 = (*(v62 + 80) + 32) & ~*(v62 + 80);
              v74 = v56;
              v75 = *(v35 + 3);
              v76 = sub_1B6221F24();
              v63 = v177;
              v69 = v75;
              v56 = v74;
              v34 = v73;
              v15 = v72;
              v62 = v179;
              if ((v76 & 1) == 0)
              {
                goto LABEL_37;
              }
            }
          }

          else if (v69)
          {
            goto LABEL_37;
          }

          v174 = v70;
          v175 = v69;
          v77 = *(v176 + 24);
          v78 = *(v172 + 48);
          v79 = v65 + v77;
          v80 = v180;
          sub_1B603A944(v79, v180, v56);
          sub_1B603A944(v35 + v77, v80 + v78, v56);
          v81 = OUTLINED_FUNCTION_3_29();
          v82 = v173;
          OUTLINED_FUNCTION_16_5(v81, v83, v173);
          if (v71)
          {
            OUTLINED_FUNCTION_6_1(v180 + v78);
            if (v71)
            {
              sub_1B620E044(v180, v56);
              v4 = v178;
LABEL_56:
              v166 = v77;
              v23 = v61 + 1;
              if (__OFADD__(v61, 1))
              {
                goto LABEL_114;
              }

              v102 = v34 + v15 * v64;
              v103 = v164;
              while (2)
              {
                v104 = v4[2];
                if (v23 != v104)
                {
                  if (v23 >= v104)
                  {
                    __break(1u);
LABEL_106:
                    __break(1u);
LABEL_107:
                    __break(1u);
LABEL_108:
                    __break(1u);
LABEL_109:
                    __break(1u);
                    goto LABEL_110;
                  }

                  OUTLINED_FUNCTION_36_8();
                  sub_1B6036A80(v4 + v102, v103);
                  if (*v103 == v66 && *(v103 + 8) == v67)
                  {
                    v105 = *(v103 + 24);
                    if (v105)
                    {
                      if (!v175)
                      {
                        goto LABEL_80;
                      }

                      v106 = *(v103 + 16) == v174 && v105 == v175;
                      if (!v106 && (sub_1B6221F24() & 1) == 0)
                      {
                        goto LABEL_80;
                      }
                    }

                    else if (v175)
                    {
                      goto LABEL_80;
                    }

                    *&v177 = v102;
                    v178 = v4;
                    v107 = *(v172 + 48);
                    v108 = v56;
                    v109 = v155;
                    OUTLINED_FUNCTION_203_0();
                    sub_1B603A944(v110, v111, v112);
                    sub_1B603A944(v35 + v166, v109 + v107, v108);
                    v113 = v173;
                    OUTLINED_FUNCTION_16_5(v109, 1, v173);
                    if (v71)
                    {
                      OUTLINED_FUNCTION_6_1(v109 + v107);
                      v4 = v178;
                      if (v71)
                      {
                        v114 = v109;
                        v56 = &qword_1EB924EF8;
                        sub_1B620E044(v114, &qword_1EB924EF8);
                        OUTLINED_FUNCTION_15_24();
                        sub_1B620B850();
                        v102 = v177;
LABEL_90:
                        ++v23;
                        v102 += v15;
                        continue;
                      }
                    }

                    else
                    {
                      sub_1B603A944(v109, v156, v108);
                      OUTLINED_FUNCTION_6_1(v109 + v107);
                      if (!v115)
                      {
                        OUTLINED_FUNCTION_170_0();
                        v120(*(v119 - 256));
                        OUTLINED_FUNCTION_99_2();
                        sub_1B60715EC(&qword_1EDAB0400, v121);
                        v122 = v156;
                        OUTLINED_FUNCTION_42();
                        v154 = sub_1B62211A4();
                        v123 = *v167;
                        (*v167)(v163, v113);
                        v123(v122, v113);
                        v35 = v170;
                        v124 = v109;
                        v56 = &qword_1EB924EF8;
                        sub_1B620E044(v124, &qword_1EB924EF8);
                        OUTLINED_FUNCTION_15_24();
                        sub_1B620B850();
                        v4 = v178;
                        v102 = v177;
                        if (v154)
                        {
                          goto LABEL_90;
                        }

LABEL_81:
                        if (v23 != v61)
                        {
                          if (v61 < 0)
                          {
                            goto LABEL_106;
                          }

                          v116 = v4[2];
                          if (v61 >= v116)
                          {
                            goto LABEL_107;
                          }

                          OUTLINED_FUNCTION_36_8();
                          sub_1B6036A80(v117 + v61 * v15, v169);
                          if (v23 >= v116)
                          {
                            goto LABEL_108;
                          }

                          OUTLINED_FUNCTION_36_8();
                          sub_1B6036A80(v4 + v102, v168);
                          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                          {
                            sub_1B620D970();
                            v4 = v125;
                          }

                          v103 = v164;
                          OUTLINED_FUNCTION_95_2();
                          sub_1B620D984(v168, v118 + v61 * v15);
                          if (v23 >= v4[2])
                          {
                            goto LABEL_109;
                          }

                          OUTLINED_FUNCTION_95_2();
                          sub_1B620D984(v169, v4 + v102);
                        }

                        ++v61;
                        goto LABEL_90;
                      }

                      (*v167)(v156, v113);
                      v4 = v178;
                    }

                    sub_1B620E044(v109, &qword_1EB925E08);
                    v56 = &qword_1EB924EF8;
                    v102 = v177;
                  }

LABEL_80:
                  OUTLINED_FUNCTION_15_24();
                  sub_1B620B850();
                  goto LABEL_81;
                }

                break;
              }

              if (v23 < v61)
              {
                goto LABEL_111;
              }

              if (v61 < 0)
              {
                __break(1u);
                goto LABEL_96;
              }

LABEL_39:
              v35 = v4;
              v95 = v61 - v23;
              v4 = v61;
              if (__OFADD__(v23, v61 - v23))
              {
                goto LABEL_112;
              }

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) != 0 && v61 <= *(v35 + 3) >> 1)
              {
                v4 = v35;
              }

              else
              {
                sub_1B609C708();
                v4 = v96;
              }

              v97 = v4 + ((*(v179 + 80) + 32) & ~*(v179 + 80));
              v15 = *(v179 + 72);
              v34 = v15 * v61;
              v35 = &v97[v15 * v61];
              swift_arrayDestroy();
              v71 = v23 == v61;
              v55 = v165;
              if (!v71)
              {
                if (v34 < (v15 * v23) || v35 >= &v97[v15 * v23 + (v4[2] - v23) * v15])
                {
                  swift_arrayInitWithTakeFrontToBack();
                }

                else if (v34 != v15 * v23)
                {
                  swift_arrayInitWithTakeBackToFront();
                }

                v99 = v4[2];
                v100 = __OFADD__(v99, v95);
                v101 = v99 + v95;
                if (!v100)
                {
                  v4[2] = v101;
                  goto LABEL_55;
                }

LABEL_113:
                __break(1u);
LABEL_114:
                __break(1u);
LABEL_115:
                OUTLINED_FUNCTION_0_17();
                swift_once();
LABEL_3:
                v36 = sub_1B6220B34();
                OUTLINED_FUNCTION_225(v36, qword_1EDAC2AB0);
                sub_1B6220784();
                v37 = sub_1B6220B14();
                v38 = sub_1B62217F4();

                if (os_log_type_enabled(v37, v38))
                {
                  OUTLINED_FUNCTION_110();
                  v39 = swift_slowAlloc();
                  OUTLINED_FUNCTION_8_2();
                  v40 = swift_slowAlloc();
                  v181[0] = v40;
                  *v39 = *(v35 + 40);
                  OUTLINED_FUNCTION_37_5();
                  OUTLINED_FUNCTION_183_0(v41);
                  v44 = sub_1B602EEB0(v42, v43, v181);

                  *(v39 + 14) = v44;
                  v45 = "Attempting to read weather data from cache (policy disallows expired data); locations=%{private,mask.hash}s";
                  goto LABEL_9;
                }

                goto LABEL_10;
              }

LABEL_55:
              v35 = v170;
              sub_1B620E044(v170, &qword_1EB9249D8);
              v54 = v157;
              v56 = &qword_1EB924EF8;
              goto LABEL_12;
            }

            goto LABEL_35;
          }

          v84 = v56;
          v85 = v180;
          v86 = v171;
          sub_1B603A944(v180, v171, v84);
          OUTLINED_FUNCTION_6_1(v85 + v78);
          if (v87)
          {
            (*v167)(v86, v82);
            v56 = &qword_1EB924EF8;
            v35 = v170;
LABEL_35:
            sub_1B620E044(v180, &qword_1EB925E08);
            v4 = v178;
            v62 = v179;
            v63 = v177;
            goto LABEL_37;
          }

          OUTLINED_FUNCTION_170_0();
          v89 = *(v88 - 256);
          v90(v89);
          OUTLINED_FUNCTION_99_2();
          sub_1B60715EC(&qword_1EDAB0400, v91);
          LODWORD(v166) = sub_1B62211A4();
          v92 = *v167;
          (*v167)(v89, v82);
          v92(v171, v82);
          v56 = &qword_1EB924EF8;
          OUTLINED_FUNCTION_203_0();
          sub_1B620E044(v93, v94);
          v4 = v178;
          v62 = v179;
          v35 = v170;
          v63 = v177;
          if (v166)
          {
            goto LABEL_56;
          }
        }
      }

LABEL_37:
      ++v61;
      ++v64;
    }
  }

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v130 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v130, qword_1EDAC2AB0);
  swift_bridgeObjectRetain_n();
  v131 = sub_1B6220B14();
  sub_1B62217F4();
  v132 = OUTLINED_FUNCTION_78_1();
  if (os_log_type_enabled(v132, v133))
  {
    OUTLINED_FUNCTION_8_2();
    v134 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v135 = swift_slowAlloc();
    v181[0] = v135;
    OUTLINED_FUNCTION_37_7(7.2226e-34);
    v136 = sub_1B6220784();
    v137 = MEMORY[0x1B8C906E0](v136, v176);
    v139 = v138;

    v140 = sub_1B602EEB0(v137, v139, v181);

    *(v134 + 14) = v140;
    *(v134 + 22) = 2048;
    v141 = *(v54 + 16);

    *(v134 + 24) = v141;

    OUTLINED_FUNCTION_140_0();
    _os_log_impl(v142, v143, v144, v145, v146, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v135);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  sub_1B6220784();
  v147 = OUTLINED_FUNCTION_136_0();
  sub_1B61E8684(v147, v148, v149);
  OUTLINED_FUNCTION_222();

  *(swift_allocObject() + 16) = v54;
  v150 = sub_1B62208D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9251C8);
  sub_1B6220944();

  OUTLINED_FUNCTION_117();
}

uint64_t sub_1B61E9CF0@<X0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for WeatherRequestOptions();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v10 = a1[1];
  type metadata accessor for WeatherServiceRequestLocation();
  sub_1B60B19E8();
  v11 = sub_1B60668B4(a2, v8, v9, v10);
  v13 = v12;
  sub_1B620B850();
  LOBYTE(v8) = sub_1B60800F4(v11, v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249D8);
  v15 = v14;
  if (v8)
  {
    v16 = (a3 + *(v14 + 48));
    sub_1B6036A80(a1, a3);
    *v16 = v11;
    v16[1] = v13;
    return __swift_storeEnumTagSinglePayload(a3, 0, 1, v15);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(a3, 1, 1, v14);
  }
}

void sub_1B61E9E80(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249D8);
  v6 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v8 = (&v24 - v7);
  v9 = *a1;
  v10 = *(a2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v25 = *a1;
    v26 = a3;
    v30 = MEMORY[0x1E69E7CC0];
    sub_1B60AA5D0(0, v10, 0);
    v11 = v30;
    v12 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v27 = *(v6 + 72);
    do
    {
      sub_1B603A944(v12, v8, &qword_1EB9249D8);
      v13 = *v8;
      v14 = v8[1];
      type metadata accessor for WeatherModel();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
      sub_1B604D954();
      v15 = v29;
      v16 = sub_1B6221114();
      v29 = v15;
      sub_1B620E044(v8, &qword_1EB9249D8);
      v30 = v11;
      v18 = *(v11 + 16);
      v17 = *(v11 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B60AA5D0((v17 > 1), v18 + 1, 1);
        v11 = v30;
      }

      *(v11 + 16) = v18 + 1;
      v19 = (v11 + 24 * v18);
      v19[4] = v13;
      v19[5] = v14;
      v19[6] = v16;
      v12 += v27;
      --v10;
    }

    while (v10);
    v9 = v25;
    a3 = v26;
  }

  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v20 = sub_1B6220B34();
  __swift_project_value_buffer(v20, qword_1EDAC2AB0);
  sub_1B6220784();
  sub_1B6220784();
  v21 = sub_1B6220B14();
  v22 = sub_1B62217F4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 134218240;
    *(v23 + 4) = *(v11 + 16);

    *(v23 + 12) = 2048;
    *(v23 + 14) = *(v9 + 16);

    _os_log_impl(&dword_1B6020000, v21, v22, "Got batch location data from server, merging. cacheEntries=%ld, serverEntries=%ld", v23, 0x16u);
    MEMORY[0x1B8C91C90](v23, -1, -1);
  }

  else
  {
  }

  v30 = v9;
  sub_1B6220784();
  sub_1B608F5C0(v11);
  *a3 = v30;
}

uint64_t sub_1B61EA1F0(uint64_t a1, void *a2)
{
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_3();
  v5 = type metadata accessor for WeatherRequestOptions();
  if (*(a2 + *(v5 + 64)))
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v18 = sub_1B6220B34();
    OUTLINED_FUNCTION_225(v18, qword_1EDAC2AB0);
    v7 = sub_1B6220B14();
    v8 = sub_1B62217F4();
    v19 = OUTLINED_FUNCTION_78_1();
    if (os_log_type_enabled(v19, v20))
    {
      OUTLINED_FUNCTION_110();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v12 = swift_slowAlloc();
      v82[0] = v12;
      *v11 = 141558275;
      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_184_0(v21);
      v22 = OUTLINED_FUNCTION_186_0();
      v24 = sub_1B602EEB0(v22, v23, v82);

      *(v11 + 14) = v24;
      v17 = "About to attempt retrieving cached data (policy allows expired data); location=%{private,mask.hash}s";
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v6 = sub_1B6220B34();
    OUTLINED_FUNCTION_225(v6, qword_1EDAC2AB0);
    v7 = sub_1B6220B14();
    v8 = sub_1B62217F4();
    v9 = OUTLINED_FUNCTION_78_1();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_110();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v12 = swift_slowAlloc();
      v82[0] = v12;
      *v11 = 141558275;
      OUTLINED_FUNCTION_37_5();
      OUTLINED_FUNCTION_184_0(v13);
      v14 = OUTLINED_FUNCTION_186_0();
      v16 = sub_1B602EEB0(v14, v15, v82);

      *(v11 + 14) = v16;
      v17 = "About to attempt retrieving cached data (policy disallows expired data); location=%{private,mask.hash}s";
LABEL_10:
      _os_log_impl(&dword_1B6020000, v7, v8, v17, v11, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v12);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      v25 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1B8C91C90](v25);
    }
  }

  if (*(a2 + *(v5 + 80)) == 1)
  {
    OUTLINED_FUNCTION_17_2();
    v26 = sub_1B6070128(a2);
    v28 = v27;
    if (qword_1EDAAF1F0 != -1)
    {
      swift_once();
    }

    v77 = xmmword_1EDAAF1F8;
    v78 = qword_1EDAAF208;
    v81 = byte_1EDAAF216;
    v80 = word_1EDAAF214;
    v79 = dword_1EDAAF210;
    v29 = sub_1B61EA864(v26, v28, &v77);
    v31 = v30;
    v33 = v32;

    if (v33)
    {
      if (qword_1EDAB3D80 != -1)
      {
        OUTLINED_FUNCTION_0_17();
        swift_once();
      }

      v34 = sub_1B6220B34();
      OUTLINED_FUNCTION_225(v34, qword_1EDAC2AB0);
      v35 = sub_1B6220B14();
      v36 = sub_1B62217E4();
      if (os_log_type_enabled(v35, v36))
      {
        OUTLINED_FUNCTION_110();
        v37 = swift_slowAlloc();
        OUTLINED_FUNCTION_8_2();
        v38 = swift_slowAlloc();
        v82[0] = v38;
        *v37 = 141558275;
        OUTLINED_FUNCTION_37_5();
        *(v37 + 4) = v39;
        *(v37 + 12) = 2081;
        *&v77 = v3;
        *(&v77 + 1) = v2;
        type metadata accessor for CLLocationCoordinate2D(0);
        v40 = OUTLINED_FUNCTION_186_0();
        v42 = sub_1B602EEB0(v40, v41, v82);

        *(v37 + 14) = v42;
        OUTLINED_FUNCTION_209(&dword_1B6020000, v43, v44, "Couldn't retrieve cached data requiring marine data because no cached marine location could be found; location=%{private,mask.hash}s");
        __swift_destroy_boxed_opaque_existential_1(v38);
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1B8C91C90]();
        OUTLINED_FUNCTION_4_0();
        MEMORY[0x1B8C91C90]();
      }

      return 0;
    }

    v3 = v29;
    v2 = v31;
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v45 = sub_1B6220B34();
    OUTLINED_FUNCTION_225(v45, qword_1EDAC2AB0);
    v46 = sub_1B6220B14();
    v47 = sub_1B62217F4();
    v48 = OUTLINED_FUNCTION_78_1();
    if (os_log_type_enabled(v48, v49))
    {
      OUTLINED_FUNCTION_110();
      v50 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v51 = swift_slowAlloc();
      v82[0] = v51;
      *v50 = 141558275;
      OUTLINED_FUNCTION_37_5();
      *(v50 + 4) = v52;
      *(v50 + 12) = 2081;
      *&v77 = v29;
      *(&v77 + 1) = v31;
      type metadata accessor for CLLocationCoordinate2D(0);
      v53 = OUTLINED_FUNCTION_186_0();
      v55 = sub_1B602EEB0(v53, v54, v82);

      *(v50 + 14) = v55;
      _os_log_impl(&dword_1B6020000, v46, v47, "Using cached marine location for cache request; location=%{private,mask.hash}s", v50, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v51);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }
  }

  v56 = OUTLINED_FUNCTION_17_2();
  v59 = sub_1B60668B4(v57, a2, v56, v58);
  if ((sub_1B60800F4(v59, v60) & 1) == 0)
  {

    return 0;
  }

  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v61 = sub_1B6220B34();
  OUTLINED_FUNCTION_225(v61, qword_1EDAC2AB0);
  v62 = sub_1B6220B14();
  sub_1B62217F4();
  v63 = OUTLINED_FUNCTION_78_1();
  if (os_log_type_enabled(v63, v64))
  {
    OUTLINED_FUNCTION_110();
    v65 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v66 = swift_slowAlloc();
    v82[0] = v66;
    OUTLINED_FUNCTION_37_7(7.2225e-34);
    *&v77 = v3;
    *(&v77 + 1) = v2;
    type metadata accessor for CLLocationCoordinate2D(0);
    v67 = OUTLINED_FUNCTION_186_0();
    sub_1B602EEB0(v67, v68, v82);
    OUTLINED_FUNCTION_204_0();

    *(v65 + 14) = &unk_1EDAB3000;
    OUTLINED_FUNCTION_140_0();
    _os_log_impl(v69, v70, v71, v72, v73, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v66);
    v74 = OUTLINED_FUNCTION_62_0();
    MEMORY[0x1B8C91C90](v74);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  v75 = type metadata accessor for WeatherModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
  sub_1B604D954();
  OUTLINED_FUNCTION_87_1();
  sub_1B6221114();
  OUTLINED_FUNCTION_467();

  return v75;
}

uint64_t sub_1B61EA864(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - v7;
  v51 = sub_1B6220BD4();
  v9 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v49 = *(a3 + 8);
  v50 = v12;
  v48 = *(a3 + 16);
  LODWORD(v47) = *(a3 + 30);
  LODWORD(v46) = *(a3 + 28);
  v45 = *(a3 + 24);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v52 = a1;
  v13 = sub_1B6220B34();
  __swift_project_value_buffer(v13, qword_1EDAC2AB0);
  sub_1B6220784();
  v14 = sub_1B6220B14();
  v15 = sub_1B62217F4();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v44 = v9;
    v17 = v16;
    v18 = swift_slowAlloc();
    v60 = v18;
    *v17 = 141558275;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2081;
    v19 = a2;
    *(v17 + 14) = sub_1B602EEB0(v52, a2, &v60);
    _os_log_impl(&dword_1B6020000, v14, v15, "Attempting to retrieve marineLocation from cache; identifier=%{private,mask.hash}s", v17, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v18);
    MEMORY[0x1B8C91C90](v18, -1, -1);
    v9 = v44;
    MEMORY[0x1B8C91C90](v17, -1, -1);
  }

  else
  {
    v19 = a2;
  }

  v20 = sub_1B6067284();
  if (!v20)
  {
    v24 = sub_1B6220B14();
    v25 = sub_1B62217F4();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_1B6020000, v24, v25, "Cannot retrieve cached marineLocation due to missing store", v26, 2u);
      MEMORY[0x1B8C91C90](v26, -1, -1);
    }

    return 0;
  }

  v21 = v20;
  sub_1B6220D44();
  v63 = MEMORY[0x1E69E6158];
  v64 = MEMORY[0x1E69D62D8];
  v60 = v52;
  v61 = v19;
  v22 = v19;
  sub_1B6220784();
  sub_1B6220CD4();
  __swift_destroy_boxed_opaque_existential_1(&v60);
  v23 = sub_1B6220DD4();
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v23);
  sub_1B6220D14();

  sub_1B620E044(v8, &qword_1EB924B50);
  (*(v9 + 8))(v11, v51);
  v27 = v53;
  if (!v53)
  {
    sub_1B6220784();
    v35 = sub_1B6220B14();
    v36 = sub_1B62217F4();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v60 = v38;
      *v37 = 141558275;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      *(v37 + 14) = sub_1B602EEB0(v52, v22, &v60);
      _os_log_impl(&dword_1B6020000, v35, v36, "Could not find marineLocation data in cache; identifier=%{private,mask.hash}s", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1B8C91C90](v38, -1, -1);
      MEMORY[0x1B8C91C90](v37, -1, -1);
    }

    return 0;
  }

  v44 = v21;
  v28 = v54;
  v30 = v56;
  v29 = v57;
  v31 = v58;
  v60 = v53;
  v61 = v54;
  v47 = v55;
  v62 = v55;
  v63 = v56;
  v64 = v57;
  v65 = v58;
  v51 = v59;
  v66 = v59;
  v32 = sub_1B61DA580(v50, v49, v48, v45);
  if (v33)
  {
    sub_1B60729F4(v27);
  }

  else
  {
    v45 = v28;
    v46 = v30;
    v48 = v27;
    v49 = v29;
    v50 = v31;
    sub_1B6220784();
    v39 = sub_1B6220B14();
    v40 = sub_1B62217F4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v53 = v42;
      *v41 = 141558275;
      *(v41 + 4) = 1752392040;
      *(v41 + 12) = 2081;
      *(v41 + 14) = sub_1B602EEB0(v52, v22, &v53);
      _os_log_impl(&dword_1B6020000, v39, v40, "Successfully retrieved marineLocation from cache; identifier=%{private,mask.hash}s", v41, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1B8C91C90](v42, -1, -1);
      MEMORY[0x1B8C91C90](v41, -1, -1);
    }

    sub_1B60729F4(v48);
  }

  return v32;
}

void sub_1B61EB068()
{
  OUTLINED_FUNCTION_116();
  v1 = v0;
  OUTLINED_FUNCTION_58();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v53 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924B50);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v53 - v10;
  v12 = sub_1B6220BD4();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  v19 = sub_1B6067284();
  if (v19)
  {
    v20 = v19;
    sub_1B6220D44();
    OUTLINED_FUNCTION_17_2();
    v21 = CLLocationCoordinate2D.cacheKey.getter();
    v62 = MEMORY[0x1E69E6158];
    v63 = MEMORY[0x1E69D62D8];
    v60 = v21;
    v61 = v22;
    OUTLINED_FUNCTION_192_0();
    sub_1B6220CD4();
    __swift_destroy_boxed_opaque_existential_1(&v60);
    sub_1B6220DD4();
    v23 = OUTLINED_FUNCTION_33_7();
    __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
    v56 = sub_1B6220D24();
    v53[0] = v7;
    v53[1] = v20;
    v53[2] = v3;

    sub_1B620E044(v11, &qword_1EB924B50);
    (*(v14 + 8))(v18, v12);
    v31 = *(v1 + 16);
    v32 = MEMORY[0x1E69E7CC0];
    if (v31)
    {
      v60 = MEMORY[0x1E69E7CC0];
      sub_1B603C6EC(0, v31, 0);
      v33 = (v1 + 32);
      v32 = v60;
      v34 = 0x80000001B623B170;
      v35 = 0x80000001B623B130;
      do
      {
        v36 = *v33++;
        v37 = 0xEA00000000007974;
        v38 = 0x696C617551726961;
        switch(v36)
        {
          case 1:
            v38 = 0x57746E6572727563;
            v37 = 0xEE00726568746165;
            break;
          case 2:
            v38 = 0x7473616365726F66;
            v37 = 0xED0000796C696144;
            break;
          case 3:
            v38 = 0x7473616365726F66;
            v37 = 0xEE00796C72756F48;
            break;
          case 4:
            v38 = 0xD000000000000010;
            v37 = 0x80000001B623B110;
            break;
          case 5:
            v38 = 0xD000000000000010;
            v37 = v35;
            break;
          case 6:
            v38 = 0x6E6F697461636F6CLL;
            v37 = 0xEC0000006F666E49;
            break;
          case 7:
            v38 = 0x6F46656E6972616DLL;
            v37 = 0xEE00747361636572;
            break;
          case 8:
            v37 = 0xE400000000000000;
            v38 = 1937204590;
            break;
          case 9:
            v38 = 0x4172656874616577;
            v37 = 0xED0000737472656CLL;
            break;
          case 10:
            v38 = 0x4372656874616577;
            v37 = 0xED000065676E6168;
            break;
          case 11:
            v38 = 0x4372656874616577;
            v37 = 0xEE007365676E6168;
            break;
          case 12:
            v38 = 0x6E65764565646974;
            v37 = 0xEA00000000007374;
            break;
          case 13:
            v38 = 0x6D6F43646E657274;
            v37 = 0xEF6E6F7369726170;
            break;
          case 14:
            v38 = 0xD000000000000015;
            v37 = v34;
            break;
          case 15:
            v38 = 0x6369726F74736968;
            v37 = 0xEF73746361466C61;
            break;
          default:
            break;
        }

        v60 = v32;
        v40 = *(v32 + 16);
        v39 = *(v32 + 24);
        if (v40 >= v39 >> 1)
        {
          v54 = v35;
          v55 = v34;
          sub_1B603C6EC(v39 > 1, v40 + 1, 1);
          v35 = v54;
          v34 = v55;
          v32 = v60;
        }

        *(v32 + 16) = v40 + 1;
        v41 = v32 + 16 * v40;
        *(v41 + 32) = v38;
        *(v41 + 40) = v37;
        --v31;
      }

      while (v31);
    }

    v42 = sub_1B61DE7B0(v32);
    v43 = 0;
    v44 = v56;
    v54 = *(v56 + 16);
    v55 = v42;
    for (i = v56 + 64; ; i += 40)
    {
      if (v54 == v43)
      {

        sub_1B621D8F4();
        goto LABEL_4;
      }

      if (v43 >= *(v44 + 16))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v46 = *(i - 8);

      sub_1B6220D84();
      if (!v61)
      {
        goto LABEL_37;
      }

      v59[0] = v60;
      v59[1] = v61;
      v57 = 44;
      v58 = 0xE100000000000000;
      sub_1B602C004();
      sub_1B6221A44();
      OUTLINED_FUNCTION_248();

      v47 = sub_1B61DE7B0(v59);
      v48 = sub_1B61030FC(v47, v55);

      if (v48)
      {
        break;
      }

      ++v43;
      v44 = v56;
    }

    sub_1B6220D84();
    sub_1B621D8F4();
    v49 = OUTLINED_FUNCTION_104();
    OUTLINED_FUNCTION_6_1(v49);
    if (!v50)
    {

      OUTLINED_FUNCTION_10_6();
      v51 = OUTLINED_FUNCTION_175_0();
      v52(v51);
      OUTLINED_FUNCTION_18();
      v30 = v46;
      goto LABEL_5;
    }

LABEL_38:
    __break(1u);
  }

  else
  {
    sub_1B621D8F4();
    OUTLINED_FUNCTION_144_0();
LABEL_4:
    OUTLINED_FUNCTION_3_10();
LABEL_5:
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_117();
  }
}

void sub_1B61EB85C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_58();
  sub_1B614A528();
  if (!v2)
  {
    v5 = OUTLINED_FUNCTION_17_2();
    sub_1B61EB9FC(v6, v7, a2, v5, v8);

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v9 = sub_1B6220B34();
    __swift_project_value_buffer(v9, qword_1EDAC2AB0);
    v10 = sub_1B6220B14();
    v11 = sub_1B62217F4();
    v12 = OUTLINED_FUNCTION_78_1();
    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_110();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v15 = swift_slowAlloc();
      v22 = v15;
      *v14 = 141558275;
      OUTLINED_FUNCTION_37_5();
      *(v14 + 4) = v16;
      *(v14 + 12) = 2081;
      type metadata accessor for CLLocationCoordinate2D(0);
      v17 = sub_1B6221234();
      sub_1B602EEB0(v17, v18, &v22);
      OUTLINED_FUNCTION_204_0();

      *(v14 + 14) = v3;
      _os_log_impl(&dword_1B6020000, v10, v11, "insertIntoCache: %{private,mask.hash}s: Inserted successfully", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v15);
      v19 = OUTLINED_FUNCTION_62_0();
      MEMORY[0x1B8C91C90](v19);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90](v20, v21);
    }
  }
}

uint64_t sub_1B61EB9FC(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927BA0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v14 = type metadata accessor for WeatherDataManager.CacheProcessingRequest(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v22 - v18;
  sub_1B6036A80(a3, &v22 + *(v20 + 36) - v18);
  *v19 = a1;
  *(v19 + 1) = a2;
  *(v19 + 2) = a4;
  *(v19 + 3) = a5;
  if (*(a3 + *(type metadata accessor for WeatherRequestOptions() + 92)) == 1)
  {
    sub_1B6036A80(v19, v16);
    sub_1B6220784();
    sub_1B6220784();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925170);
    sub_1B6221664();
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    sub_1B6220784();
    sub_1B6220784();
    sub_1B61EE0B8(v19);
  }

  return sub_1B620B850();
}

uint64_t sub_1B61EBC30@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 2);
  v5 = *(a1 + 24);
  v6 = *(a1 + 25);
  v8 = *a1;
  v9 = v4;
  v10 = v5;
  v11 = v6;
  return sub_1B60FFD84(&v8, a2, a3, a4);
}

uint64_t sub_1B61EBCB4(__int128 *a1)
{
  v1 = *(a1 + 2);
  v2 = *(a1 + 24);
  v3 = *(a1 + 25);
  v5 = *a1;
  v6 = v1;
  v7 = v2;
  v8 = v3;
  return sub_1B6100664(&v5);
}

void sub_1B61EBD0C()
{
  if (sub_1B6067284())
  {
    WeatherDataStore.purgeExpiredData()();
  }

  else
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v0 = sub_1B6220B34();
    OUTLINED_FUNCTION_225(v0, qword_1EDAC2AB0);
    oslog = sub_1B6220B14();
    v1 = sub_1B62217F4();
    if (os_log_type_enabled(oslog, v1))
    {
      v2 = OUTLINED_FUNCTION_226_0();
      *v2 = 0;
      _os_log_impl(&dword_1B6020000, oslog, v1, "Cannot purge expired data due to missing store", v2, 2u);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }
  }
}

void sub_1B61EBE0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherRequestOptions();
  if (*(a1 + *(v4 + 80)) == 1)
  {
    MEMORY[0x1EEE9AC00](v4);
    sub_1B60B4B20();
    if (*(v5 + 16) == *(a2 + 16))
    {
      sub_1B6147E38();
    }

    else
    {

      sub_1B6147E38();
    }
  }

  else
  {
    sub_1B6147E38();
  }
}

uint64_t sub_1B61EBF50@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = sub_1B6070128(a2);
  v7 = v6;
  if (qword_1EDAAF1F0 != -1)
  {
    swift_once();
  }

  v18 = xmmword_1EDAAF1F8;
  v19 = qword_1EDAAF208;
  v22 = byte_1EDAAF216;
  v21 = word_1EDAAF214;
  v20 = dword_1EDAAF210;
  v8 = sub_1B61EA864(v5, v7, &v18);
  v10 = v9;
  v12 = v11;

  if (v12)
  {
    v13 = type metadata accessor for WeatherServiceRequestLocation();
    return __swift_storeEnumTagSinglePayload(a3, 1, 1, v13);
  }

  else
  {
    v16 = *(a1 + 16);
    v15 = *(a1 + 24);
    v17 = type metadata accessor for WeatherServiceRequestLocation();
    sub_1B603A944(a1 + *(v17 + 24), a3 + *(v17 + 24), &qword_1EB924EF8);
    *a3 = v8;
    a3[1] = v10;
    a3[2] = v16;
    a3[3] = v15;
    __swift_storeEnumTagSinglePayload(a3, 0, 1, v17);
    return sub_1B6220784();
  }
}

void sub_1B61EC0B0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v70 = a3;
  v76 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
  v80 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v6 = (&v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927C00);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v87 = &v67 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v72 = *a1;
  v68 = v72[2];
  if (!v68)
  {
LABEL_31:
    v88 = v72;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925E50);
    swift_allocObject();
    sub_1B6220784();
    sub_1B6220994();
    return;
  }

  v14 = 0;
  v69 = v72 + 4;
  v13.n128_u64[0] = 136446723;
  v77 = v13;
  v85 = &v67 - v12;
  v86 = v6;
  while (2)
  {
    if (v14 < v72[2])
    {
      v15 = &v69[3 * v14];
      v16 = *v15;
      v17 = v15[1];
      v18 = *(v15 + 2);
      v73 = v14 + 1;
      sub_1B6220784();
      sub_1B61EB9FC(v70, v18, v71, *&v16, v17);
      v19 = 0;
      v21 = v18 + 64;
      v20 = *(v18 + 64);
      v82 = v18 + 64;
      v83 = v18;
      v22 = 1 << *(v18 + 32);
      if (v22 < 64)
      {
        v23 = ~(-1 << v22);
      }

      else
      {
        v23 = -1;
      }

      v24 = v23 & v20;
      v25 = (v22 + 63) >> 6;
      v26 = v87;
      v81 = v25;
      while (1)
      {
        if (!v24)
        {
          while (1)
          {
            v27 = v19 + 1;
            if (__OFADD__(v19, 1))
            {
              break;
            }

            if (v27 >= v25)
            {
              v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925010);
              __swift_storeEnumTagSinglePayload(v26, 1, 1, v66);
              v24 = 0;
              goto LABEL_15;
            }

            v24 = *(v21 + 8 * v27);
            ++v19;
            if (v24)
            {
              v19 = v27;
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_33;
        }

        v27 = v19;
LABEL_14:
        v28 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
        v29 = v28 | (v27 << 6);
        v30 = *(*(v83 + 48) + v29);
        v31 = v79;
        sub_1B603A944(*(v83 + 56) + *(v80 + 72) * v29, v79, &qword_1EB925000);
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925010);
        v33 = *(v32 + 48);
        v34 = v87;
        *v87 = v30;
        v26 = v34;
        sub_1B603D3DC(v31, &v34[v33], &qword_1EB925000);
        __swift_storeEnumTagSinglePayload(v26, 0, 1, v32);
        v25 = v81;
        v21 = v82;
LABEL_15:
        v35 = v26;
        v36 = v85;
        sub_1B603D3DC(v35, v85, &qword_1EB927C00);
        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925010);
        if (__swift_getEnumTagSinglePayload(v36, 1, v37) == 1)
        {
          break;
        }

        v38 = v36;
        v39 = *v36;
        v40 = v86;
        sub_1B603D3DC(&v38[*(v37 + 48)], v86, &qword_1EB925000);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v88 = *v40;
          v41 = v88;
          v42 = v88;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
          if (swift_dynamicCast())
          {
            LODWORD(v43) = v90;
            if (qword_1EDAB3D80 != -1)
            {
              swift_once();
            }

            v44 = sub_1B6220B34();
            __swift_project_value_buffer(v44, qword_1EDAC2AB0);
            v45 = sub_1B6220B14();
            v46 = sub_1B62217E4();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v75 = swift_slowAlloc();
              v90 = v75;
              *v47 = v77.n128_u32[0];
              LOBYTE(v88) = v43;
              v48 = sub_1B6221234();
              v74 = v46;
              v50 = sub_1B602EEB0(v48, v49, &v90);
              LODWORD(v78) = v43;
              v51 = v50;

              *(v47 + 4) = v51;
              *(v47 + 12) = 2160;
              *(v47 + 14) = 1752392040;
              *(v47 + 22) = 2081;
              v88 = v16;
              v89 = v17;
              type metadata accessor for CLLocationCoordinate2D(0);
              v52 = sub_1B6221234();
              v43 = sub_1B602EEB0(v52, v53, &v90);

              *(v47 + 24) = v43;
              LOBYTE(v43) = v78;
              _os_log_impl(&dword_1B6020000, v45, v74, "Invalid weather data from WDS; clearing cache; error=%{public}s; location=%{private,mask.hash}s", v47, 0x20u);
              v54 = v75;
              swift_arrayDestroy();
              MEMORY[0x1B8C91C90](v54, -1, -1);
              MEMORY[0x1B8C91C90](v47, -1, -1);
            }

            v26 = v87;
            LOBYTE(v88) = v43;
            sub_1B61EC8B8(&v88);
          }

          else
          {

            v26 = v87;
          }
        }

        else
        {
          if (qword_1EDAB3D80 != -1)
          {
            swift_once();
          }

          v55 = sub_1B6220B34();
          __swift_project_value_buffer(v55, qword_1EDAC2AB0);
          v56 = sub_1B6220B14();
          v57 = sub_1B62217F4();
          if (os_log_type_enabled(v56, v57))
          {
            v58 = swift_slowAlloc();
            v78 = swift_slowAlloc();
            v90 = v78;
            *v58 = v77.n128_u32[0];
            LOBYTE(v88) = v39;
            v59 = sub_1B6221234();
            v61 = sub_1B602EEB0(v59, v60, &v90);

            *(v58 + 4) = v61;
            *(v58 + 12) = 2160;
            *(v58 + 14) = 1752392040;
            *(v58 + 22) = 2081;
            v88 = v16;
            v89 = v17;
            type metadata accessor for CLLocationCoordinate2D(0);
            v62 = sub_1B6221234();
            v64 = sub_1B602EEB0(v62, v63, &v90);

            *(v58 + 24) = v64;
            _os_log_impl(&dword_1B6020000, v56, v57, "Weather data fetched from WDS and stored in cache; product=%{public}s; location=%{private,mask.hash}s", v58, 0x20u);
            v65 = v78;
            swift_arrayDestroy();
            MEMORY[0x1B8C91C90](v65, -1, -1);
            MEMORY[0x1B8C91C90](v58, -1, -1);
          }

          v26 = v87;
          sub_1B620B850();
        }
      }

      v14 = v73;
      if (v73 != v68)
      {
        continue;
      }

      goto LABEL_31;
    }

    break;
  }

LABEL_33:
  __break(1u);
}

void sub_1B61EC8B8(_BYTE *a1)
{
  switch(*a1)
  {
    case 0:
      if (sub_1B6067284())
      {
        sub_1B61A66A4();
        break;
      }

      return;
    case 1:
      if (sub_1B6067284())
      {
        sub_1B61A6800();
        break;
      }

      return;
    case 2:
      v1 = sub_1B61A695C;
      v2 = 1;
      goto LABEL_20;
    case 3:
      v1 = sub_1B61A6BB8;
      v2 = 0;
LABEL_20:
      sub_1B620AE9C(v1, v2, sub_1B61A7A50);
      return;
    case 4:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A70CC();
      break;
    case 6:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A6E14();
      break;
    case 8:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A6F70();
      break;
    case 9:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A7228();
      break;
    case 0xA:
    case 0xB:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A7384();
      break;
    case 0xD:
    case 0xE:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A74E0();
      break;
    case 0xF:
      if (!sub_1B6067284())
      {
        return;
      }

      sub_1B61A763C();
      break;
    default:
      if (qword_1EDAB3D80 != -1)
      {
        swift_once();
      }

      v3 = sub_1B6220B34();
      __swift_project_value_buffer(v3, qword_1EDAC2AB0);
      oslog = sub_1B6220B14();
      v4 = sub_1B62217F4();
      if (os_log_type_enabled(oslog, v4))
      {
        v5 = swift_slowAlloc();
        v6 = swift_slowAlloc();
        v11 = v6;
        *v5 = 141558275;
        *(v5 + 4) = 1752392040;
        *(v5 + 12) = 2081;
        v7 = sub_1B6221234();
        v9 = sub_1B602EEB0(v7, v8, &v11);

        *(v5 + 14) = v9;
        _os_log_impl(&dword_1B6020000, oslog, v4, "Unknown default; skipping clear cache; error=%{private,mask.hash}s", v5, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v6);
        MEMORY[0x1B8C91C90](v6, -1, -1);
        MEMORY[0x1B8C91C90](v5, -1, -1);
      }

      else
      {
      }

      return;
  }
}

uint64_t sub_1B61ECBB8(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v9 = sub_1B621D8F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B6220BD4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v64 = &v50 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v67 = &v50 - v20;
  result = sub_1B6067284();
  if (result)
  {
    v22 = result;
    v56 = v14;
    v57 = v13;
    v58 = v12;
    v59 = v10;
    v60 = v9;
    v23 = *(v4 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_cacheObservationManager);
    sub_1B6100728(a1, a2, a3, a4);
    v24 = CLLocationCoordinate2D.cacheKey.getter();
    v65 = v25;
    v66 = v24;
    v26 = MEMORY[0x1E69E6158];
    v27 = sub_1B6221504();
    v28 = *(v27 + 16);
    v62 = a2;
    v63 = a1;
    v61 = v23;
    if (v28)
    {
      v54 = v16;
      v55 = v22;
      *&v71 = MEMORY[0x1E69E7CC0];
      sub_1B603C6EC(0, v28, 0);
      v29 = 0x4372656874616577;
      v30 = v71;
      v31 = 0x80000001B623B170;
      v32 = 0x80000001B623B130;
      v33 = 0x80000001B623B110;
      v34 = 32;
      do
      {
        v35 = 0xEA00000000007974;
        v36 = 0x696C617551726961;
        switch(*(v27 + v34))
        {
          case 1:
            v36 = 0x57746E6572727563;
            v35 = 0xEE00726568746165;
            break;
          case 2:
            v36 = 0x7473616365726F66;
            v35 = 0xED0000796C696144;
            break;
          case 3:
            v36 = 0x7473616365726F66;
            v35 = 0xEE00796C72756F48;
            break;
          case 4:
            v36 = 0xD000000000000010;
            v35 = v33;
            break;
          case 5:
            v36 = 0xD000000000000010;
            v35 = v32;
            break;
          case 6:
            v36 = 0x6E6F697461636F6CLL;
            v35 = 0xEC0000006F666E49;
            break;
          case 7:
            v36 = 0x6F46656E6972616DLL;
            v35 = 0xEE00747361636572;
            break;
          case 8:
            v35 = 0xE400000000000000;
            v36 = 1937204590;
            break;
          case 9:
            v36 = 0x4172656874616577;
            v35 = 0xED0000737472656CLL;
            break;
          case 0xA:
            v36 = v29;
            v35 = 0xED000065676E6168;
            break;
          case 0xB:
            v36 = v29;
            v35 = 0xEE007365676E6168;
            break;
          case 0xC:
            v36 = 0x6E65764565646974;
            v35 = 0xEA00000000007374;
            break;
          case 0xD:
            v36 = 0x6D6F43646E657274;
            v35 = 0xEF6E6F7369726170;
            break;
          case 0xE:
            v36 = 0xD000000000000015;
            v35 = v31;
            break;
          case 0xF:
            v36 = 0x6369726F74736968;
            v35 = 0xEF73746361466C61;
            break;
          default:
            break;
        }

        *&v71 = v30;
        v38 = *(v30 + 16);
        v37 = *(v30 + 24);
        if (v38 >= v37 >> 1)
        {
          v40 = v29;
          v53 = v31;
          v52 = v32;
          v51 = v33;
          sub_1B603C6EC(v37 > 1, v38 + 1, 1);
          v33 = v51;
          v32 = v52;
          v31 = v53;
          v29 = v40;
          v30 = v71;
        }

        *(v30 + 16) = v38 + 1;
        v39 = v30 + 16 * v38;
        *(v39 + 32) = v36;
        *(v39 + 40) = v35;
        ++v34;
        --v28;
      }

      while (v28);

      v16 = v54;
      v26 = MEMORY[0x1E69E6158];
    }

    else
    {

      v30 = MEMORY[0x1E69E7CC0];
    }

    *&v71 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68);
    sub_1B60358B4();
    v41 = sub_1B6221174();
    v43 = v42;

    sub_1B6220D64();
    v44 = MEMORY[0x1E69D62D8];
    *(&v72 + 1) = v26;
    v73 = MEMORY[0x1E69D62D8];
    *&v71 = v66;
    *(&v71 + 1) = v65;
    sub_1B6220784();
    v45 = v64;
    sub_1B6220CD4();
    __swift_destroy_boxed_opaque_existential_1(&v71);
    *(&v72 + 1) = v26;
    v73 = v44;
    *&v71 = v41;
    *(&v71 + 1) = v43;
    sub_1B6220784();
    sub_1B6220CD4();
    __swift_destroy_boxed_opaque_existential_1(&v71);
    sub_1B6220CC4();
    v46 = *(v56 + 8);
    v47 = v57;
    v46(v16, v57);
    v46(v45, v47);
    sub_1B6220DC4();
    v48 = v62;

    v46(v67, v47);
    sub_1B6220D34();
    v49 = v58;
    (*(v59 + 16))(v58, v48, v60);
    sub_1B61A19CC(v66, v65, v49, v41, v43, &v71, a3, a4);
    v68 = v71;
    v69 = v72;
    v70 = v73;
    sub_1B6220D04();

    sub_1B6101088();
  }

  return result;
}