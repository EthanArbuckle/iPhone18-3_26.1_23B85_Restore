uint64_t PrecipitationCornerContentView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v31[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C6C8);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v31 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C6D0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v31 - v6;
  v31[0] = type metadata accessor for PrecipitationCornerContentView.Content(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = type metadata accessor for PrecipitationComplicationDataStatus();
  MEMORY[0x1EEE9AC00](v12 - 8);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = type metadata accessor for PrecipitationComplicationViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = type metadata accessor for PrecipitationCornerContentView(0);
  v22 = OUTLINED_FUNCTION_1_70(v21);
  sub_1BCCF4C98(v22, v15, v23);
  if (__swift_getEnumTagSinglePayload(v15, 2, v16))
  {
    sub_1BCCF4CF8(v15, type metadata accessor for PrecipitationComplicationDataStatus);
    v24 = sub_1BCCF4BE4();
    sub_1BCE1C7E0();
    (*(v2 + 16))(v7, v4, v1);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_75();
    sub_1BCCF605C(v25, v26);
    v32 = &type metadata for PrecipitationCornerContentView.Placeholder;
    v33 = v24;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_10();
    sub_1BCE1BF60();
    return (*(v2 + 8))(v4, v1);
  }

  else
  {
    sub_1BCCF4C38(v15, v20, type metadata accessor for PrecipitationComplicationViewModel);
    sub_1BCCF4C98(v20, v11, type metadata accessor for PrecipitationComplicationViewModel);
    sub_1BCCF4C98(v11, v7, type metadata accessor for PrecipitationCornerContentView.Content);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_75();
    sub_1BCCF605C(v28, v29);
    v30 = sub_1BCCF4BE4();
    v32 = &type metadata for PrecipitationCornerContentView.Placeholder;
    v33 = v30;
    OUTLINED_FUNCTION_3_3();
    OUTLINED_FUNCTION_10();
    sub_1BCE1BF60();
    sub_1BCCF4CF8(v11, type metadata accessor for PrecipitationCornerContentView.Content);
    return sub_1BCCF4CF8(v20, type metadata accessor for PrecipitationComplicationViewModel);
  }
}

unint64_t sub_1BCCF4BE4()
{
  result = qword_1EBD0C6D8;
  if (!qword_1EBD0C6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C6D8);
  }

  return result;
}

uint64_t sub_1BCCF4C38(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1BCCF4C98(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1BCCF4CF8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t sub_1BCCF4D98()
{
  result = qword_1EBD0C6F8;
  if (!qword_1EBD0C6F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C700);
    sub_1BCCF605C(&qword_1EBD0C6E0, type metadata accessor for PrecipitationCornerContentView.Content);
    sub_1BCCF4BE4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C6F8);
  }

  return result;
}

uint64_t sub_1BCCF4EA8()
{
  result = type metadata accessor for PrecipitationComplicationViewModel();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1BCCF4F40@<X0>(uint64_t a1@<X8>)
{
  v46 = a1;
  v1 = sub_1BCE1C100();
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A348);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v39 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C718);
  v42 = *(v7 - 8);
  v43 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C720);
  MEMORY[0x1EEE9AC00](v45);
  v41 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v44 = &v39 - v12;
  v13 = sub_1BCE1CBA0();
  v14 = sub_1BCE1C340();
  KeyPath = swift_getKeyPath();
  v16 = (v6 + *(v4 + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09430) + 28);
  v18 = *MEMORY[0x1E69816C0];
  v19 = sub_1BCE1CC00();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v6 = v13;
  v6[1] = KeyPath;
  v6[2] = v14;
  sub_1BCE1C0D0();
  v20 = sub_1BCB8CC0C();
  sub_1BCE1C930();
  (*(v39 + 8))(v3, v40);
  sub_1BCCF5EFC(v6);
  if (qword_1EDA17720 != -1)
  {
    swift_once();
  }

  v47 = qword_1EDA2EE70;
  v48 = *algn_1EDA2EE78;
  v49 = v4;
  v50 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v21 = MEMORY[0x1E69E6158];
  v22 = v41;
  v23 = v43;
  sub_1BCE1C8E0();
  (*(v42 + 8))(v9, v23);
  type metadata accessor for PrecipitationComplicationViewModel();
  v25 = sub_1BCE19B70();
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    if (qword_1EDA1EFB0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v27 = qword_1EDA1EFB8;
    sub_1BCE18B60();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07880);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_1BCE3E030;
    v29 = sub_1BCB4F6E0();
    v31 = v30;
    *(v28 + 56) = v21;
    v32 = sub_1BC9804E0();
    *(v28 + 64) = v32;
    *(v28 + 32) = v29;
    *(v28 + 40) = v31;
    v33 = sub_1BCB4F930();
    *(v28 + 96) = v21;
    *(v28 + 104) = v32;
    *(v28 + 72) = v33;
    *(v28 + 80) = v34;
    v25 = sub_1BCE1D2B0();
    v26 = v35;
  }

  v49 = v25;
  v50 = v26;
  v36 = v44;
  sub_1BCE1B880();

  v37 = sub_1BC9BBDE4(v22);
  MEMORY[0x1EEE9AC00](v37);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C750);
  sub_1BCCF5F64();
  sub_1BCCF61E8();
  sub_1BCE1C740();
  return sub_1BC9BBDE4(v36);
}

uint64_t sub_1BCCF553C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BCE1E060();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(a1 + *(type metadata accessor for PrecipitationComplicationViewModel() + 40));
  (*(v5 + 104))(v7, *MEMORY[0x1E69E7038], v4);
  v9 = Double.nearestMultiple(of:roundingRule:)(v7, 0.05, v8);
  (*(v5 + 8))(v7, v4);
  v17 = v9;
  v18 = 0;
  v15 = a1;
  v16 = 0x3FF0000000000000;
  sub_1BC96ABEC();
  sub_1BCE1B550();
  v10 = sub_1BCE1CA80();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C750);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v10;
  return result;
}

uint64_t sub_1BCCF56F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1BCE19280();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07BE8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v19 - v7;
  v9 = sub_1BCE1E060();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a1 + *(type metadata accessor for PrecipitationComplicationViewModel() + 40));
  (*(v10 + 104))(v12, *MEMORY[0x1E69E7038], v9);
  v14 = Double.nearestMultiple(of:roundingRule:)(v12, 0.05, v13);
  (*(v10 + 8))(v12, v9);
  *v19 = v14;
  sub_1BCE19150();
  sub_1BC96ABEC();
  sub_1BCE18CB0();
  sub_1BC957184(&qword_1EDA1EC00, &qword_1EBD07BE8);
  sub_1BCE1D0F0();
  (*(v6 + 8))(v8, v5);
  v19[0] = v19[2];
  v19[1] = v19[3];
  sub_1BC970820();
  result = sub_1BCE1C6A0();
  *a2 = result;
  *(a2 + 8) = v16;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v18;
  return result;
}

uint64_t sub_1BCCF59D0@<X0>(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_1BCE1C100();
  v27 = *(v1 - 8);
  v28 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A348);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v26 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C718);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C720);
  MEMORY[0x1EEE9AC00](v32);
  v26 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v31 = &v26 - v12;
  v13 = sub_1BCE1CBA0();
  v14 = sub_1BCE1C340();
  KeyPath = swift_getKeyPath();
  v16 = (v6 + *(v4 + 36));
  v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09430) + 28);
  v18 = *MEMORY[0x1E69816C0];
  v19 = sub_1BCE1CC00();
  (*(*(v19 - 8) + 104))(v16 + v17, v18, v19);
  *v16 = swift_getKeyPath();
  *v6 = v13;
  v6[1] = KeyPath;
  v6[2] = v14;
  sub_1BCE1C0D0();
  v20 = sub_1BCB8CC0C();
  sub_1BCE1C930();
  (*(v27 + 8))(v3, v28);
  sub_1BCCF5EFC(v6);
  if (qword_1EDA17720 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDA2EE70;
  v37 = *algn_1EDA2EE78;
  v34 = v4;
  v35 = v20;
  swift_getOpaqueTypeConformance2();
  sub_1BC970820();
  v21 = v26;
  v22 = v30;
  sub_1BCE1C8E0();
  (*(v29 + 8))(v9, v22);
  v23 = v21;
  if (qword_1EBD07118 != -1)
  {
    swift_once();
  }

  v36 = qword_1EBD2A1D0;
  v37 = *algn_1EBD2A1D8;
  v24 = v31;
  sub_1BCE1B880();
  sub_1BC9BBDE4(v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C728);
  sub_1BCCF5F64();
  sub_1BCCF60A4();
  sub_1BCE1C740();
  return sub_1BC9BBDE4(v24);
}

uint64_t sub_1BCCF5E64@<X0>(uint64_t a1@<X8>)
{
  sub_1BC96ABEC();
  sub_1BCE1B560();
  v2 = sub_1BCE1CA80();
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C728);
  v5 = (a1 + *(result + 36));
  *v5 = KeyPath;
  v5[1] = v2;
  return result;
}

uint64_t sub_1BCCF5EFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0A348);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BCCF5F64()
{
  result = qword_1EBD0C730;
  if (!qword_1EBD0C730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C720);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0A348);
    sub_1BCB8CC0C();
    swift_getOpaqueTypeConformance2();
    sub_1BCCF605C(&qword_1EDA1EE68, MEMORY[0x1E697CBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C730);
  }

  return result;
}

uint64_t sub_1BCCF605C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1BCCF60A4()
{
  result = qword_1EBD0C738;
  if (!qword_1EBD0C738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C728);
    sub_1BC957184(&qword_1EBD0C740, &qword_1EBD0C748);
    sub_1BC957184(&qword_1EDA1B6A0, &qword_1EBD07AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C738);
  }

  return result;
}

uint64_t sub_1BCCF6188@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1BCE1BBF0();
  *a1 = result;
  return result;
}

unint64_t sub_1BCCF61E8()
{
  result = qword_1EBD0C758;
  if (!qword_1EBD0C758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C750);
    sub_1BC957184(&qword_1EBD0C760, &qword_1EBD0C768);
    sub_1BC957184(&qword_1EDA1B6A0, &qword_1EBD07AA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C758);
  }

  return result;
}

uint64_t get_witness_table_qd0__7SwiftUI4ViewHD3_AaBP9WidgetKitE11widgetLabel5labelQrqd__yXE_tAaBRd__lFQOyAA15ModifiedContentVyAcAE20accessibilityElement8childrenQrAA26AccessibilityChildBehaviorV_tFQOyAHyAHyAA5ImageVAA30_EnvironmentKeyWritingModifierVyAA4FontVSgGGAPyAN5ScaleOGG_Qo_AA0n10AttachmentU0VG_AHyAA08ProgressC0VyAA05EmptyC0VA5_GAPyAA5ColorVSgGGQo_HOTm(uint64_t a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C720);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
  sub_1BCCF5F64();
  a4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1BCCF636C()
{
  sub_1BCE1A830();
  type metadata accessor for WeatherPlatterViewModelUpdater();
  sub_1BCE1A8F0();

  sub_1BCE1A840();
  sub_1BCE1A8E0();
}

uint64_t sub_1BCCF6410(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C770);
  result = sub_1BCE1A800();
  if (!v13)
  {
    __break(1u);
    goto LABEL_6;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCE19BD0();
  result = sub_1BCE1A7F0();
  if (!result)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v3 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCE19890();
  result = sub_1BCE1A7F0();
  if (result)
  {
    v4 = result;
    v5 = __swift_mutable_project_boxed_opaque_existential_1(v12, v13);
    v6 = MEMORY[0x1EEE9AC00](v5);
    v8 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
    (*(v9 + 16))(v8, v6);
    v10 = sub_1BCCF6A5C(*v8, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v12);
    return v10;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1BCCF65BC()
{
  sub_1BCE19890();
  sub_1BCE1A8F0();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C770);
  sub_1BCE1A900();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C778);
  sub_1BCE1A900();

  sub_1BCE19BD0();
  sub_1BCE1A8F0();
}

uint64_t sub_1BCCF66D0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09490);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v8 - v3;
  v5 = sub_1BCE19AF0();
  MEMORY[0x1EEE9AC00](v5 - 8);
  sub_1BCE18E30();
  v6 = sub_1BCE18E40();
  result = __swift_getEnumTagSinglePayload(v4, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1BCE19AE0();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C778);
    result = sub_1BCE1A800();
    if (v8[4])
    {
      sub_1BCE19890();
      return sub_1BCE19870();
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCCF6848@<X0>(void *a1@<X8>)
{
  type metadata accessor for CurrentObservationsHeaderViewModelFactory();
  v2 = swift_allocObject();
  type metadata accessor for HourlyForecastViewModelFactory();
  v3 = swift_allocObject();
  type metadata accessor for AirQualityViewModelFactory();
  v4 = swift_allocObject();
  v5 = sub_1BCCF6C6C(v2, v3, v4);
  result = type metadata accessor for WeatherPlatterViewModelFactory();
  a1[3] = result;
  a1[4] = &off_1F3B50C68;
  *a1 = v5;
  return result;
}

uint64_t sub_1BCCF68E0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCE19BD0();
  result = sub_1BCE1A7F0();
  if (result)
  {
    v4 = sub_1BCE19750();
    swift_allocObject();
    result = sub_1BCE19740();
    v5 = MEMORY[0x1E6984BA8];
    a2[3] = v4;
    a2[4] = v5;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BCCF6974()
{
  sub_1BCE19BF0();
  swift_allocObject();
  sub_1BCE19BE0();
  sub_1BCE19BD0();
  swift_allocObject();
  return sub_1BCE19BC0();
}

uint64_t sub_1BCCF69E8()
{
  sub_1BCE19B40();
  swift_allocObject();
  return sub_1BCE19B30();
}

uint64_t sub_1BCCF6A5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WeatherPlatterViewModelFactory();
  v29[3] = v6;
  v29[4] = &off_1F3B50C68;
  v29[0] = a1;
  type metadata accessor for WeatherPlatterViewModelUpdater();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v29, v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11, v9);
  v13 = *v11;
  v27 = v6;
  v28 = &off_1F3B50C68;
  *&v26 = v13;
  if (qword_1EBD072B0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_1EBD2A3A0, sizeof(__dst));
  memcpy(v17, &qword_1EBD2A3A0, sizeof(v17));
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  sub_1BCCF6F50(__dst, &v16);
  sub_1BCE1B410();
  sub_1BC947AB4(&v26, v7 + OBJC_IVAR____TtC9WeatherUI30WeatherPlatterViewModelUpdater_modelFactory);
  *(v7 + OBJC_IVAR____TtC9WeatherUI30WeatherPlatterViewModelUpdater_geocodeManager) = a2;
  *(v7 + OBJC_IVAR____TtC9WeatherUI30WeatherPlatterViewModelUpdater_weatherService) = a3;
  __swift_destroy_boxed_opaque_existential_1(v29);
  return v7;
}

void *sub_1BCCF6C6C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;
  v7 = type metadata accessor for CurrentObservationsHeaderViewModelFactory();
  v36[3] = v7;
  v36[4] = &off_1F3B5A4D8;
  v36[0] = a1;
  v8 = type metadata accessor for HourlyForecastViewModelFactory();
  v34 = v8;
  v35 = &off_1F3B516E0;
  v33[0] = a2;
  v31 = v6;
  v32 = &off_1F3B5C158;
  v30[0] = a3;
  type metadata accessor for WeatherPlatterViewModelFactory();
  v9 = swift_allocObject();
  v10 = __swift_mutable_project_boxed_opaque_existential_1(v36, v7);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v30[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13, v11);
  v15 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v30[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18, v16);
  v20 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = (&v30[-1] - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23, v21);
  v25 = *v13;
  v26 = *v18;
  v27 = *v23;
  v9[5] = v7;
  v9[6] = &off_1F3B5A4D8;
  v9[7] = v26;
  v9[2] = v25;
  v9[10] = v8;
  v9[11] = &off_1F3B516E0;
  v9[15] = v6;
  v9[16] = &off_1F3B5C158;
  v9[12] = v27;
  __swift_destroy_boxed_opaque_existential_1(v30);
  __swift_destroy_boxed_opaque_existential_1(v33);
  __swift_destroy_boxed_opaque_existential_1(v36);
  return v9;
}

uint64_t ConditionsComplicationHourlyViewModel.conditionAccessibilityDescription.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
  OUTLINED_FUNCTION_14(v1);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - v3;
  v5 = type metadata accessor for ConditionsComplicationHourlyViewModel();
  sub_1BC952B1C(v0 + *(v5 + 24), v4, &qword_1EBD08688);
  v6 = sub_1BCE199D0();
  if (__swift_getEnumTagSinglePayload(v4, 1, v6) == 1)
  {
    sub_1BC94C05C(v4, &qword_1EBD08688);
    return 0;
  }

  else
  {
    v7 = sub_1BCE19930();
    (*(*(v6 - 8) + 8))(v4, v6);
  }

  return v7;
}

uint64_t type metadata accessor for ConditionsComplicationHourlyViewModel()
{
  result = qword_1EBD0C7B0;
  if (!qword_1EBD0C7B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ConditionsComplicationHourlyViewModel.id.getter()
{
  OUTLINED_FUNCTION_19_1();
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v4 = *(v3 + 16);

  return v4(v0, v1, v2);
}

uint64_t ConditionsComplicationHourlyViewModel.id.setter(uint64_t a1)
{
  sub_1BCE19090();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t ConditionsComplicationHourlyViewModel.temperature.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = type metadata accessor for ConditionsComplicationHourlyViewModel();
  return sub_1BC952B1C(v1 + *(v2 + 20), v0, &qword_1EBD08690);
}

uint64_t ConditionsComplicationHourlyViewModel.condition.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = type metadata accessor for ConditionsComplicationHourlyViewModel();
  return sub_1BC952B1C(v1 + *(v2 + 24), v0, &qword_1EBD08688);
}

uint64_t ConditionsComplicationHourlyViewModel.time.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = *(type metadata accessor for ConditionsComplicationHourlyViewModel() + 36);
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t ConditionsComplicationHourlyViewModel.timeZone.getter()
{
  OUTLINED_FUNCTION_19_1();
  v2 = *(type metadata accessor for ConditionsComplicationHourlyViewModel() + 40);
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t ConditionsComplicationHourlyViewModel.init(temperature:condition:isDaytime:now:time:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  sub_1BCE19080();
  v14 = type metadata accessor for ConditionsComplicationHourlyViewModel();
  sub_1BC9643D8(a1, a7 + v14[5], &qword_1EBD08690);
  sub_1BC9643D8(a2, a7 + v14[6], &qword_1EBD08688);
  *(a7 + v14[7]) = a3;
  *(a7 + v14[8]) = a4;
  v15 = v14[9];
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  (*(v16 + 32))(a7 + v15, a5);
  v17 = v14[10];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  v19 = *(v18 + 32);

  return v19(a7 + v17, a6);
}

uint64_t static ConditionsComplicationHourlyViewModel.make(now:time:timeZone:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for ConditionsComplicationHourlyViewModel();
  v9 = v8[5];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  __swift_storeEnumTagSinglePayload(a4 + v9, 1, 1, v10);
  v11 = v8[6];
  v12 = sub_1BCE199D0();
  __swift_storeEnumTagSinglePayload(a4 + v11, 1, 1, v12);
  v13 = v8[9];
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  (*(v14 + 16))(a4 + v13, a2);
  v15 = v8[10];
  sub_1BCE19470();
  OUTLINED_FUNCTION_4();
  (*(v16 + 16))(a4 + v15, a3);
  result = sub_1BCE19080();
  *(a4 + v8[7]) = 1;
  *(a4 + v8[8]) = a1;
  return result;
}

uint64_t static ConditionsComplicationHourlyViewModel.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCE199D0();
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v55 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
  OUTLINED_FUNCTION_14(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v51 - v11;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0B948);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  v58 = &v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  OUTLINED_FUNCTION_2();
  v16 = v15;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v51 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08690);
  OUTLINED_FUNCTION_14(v20);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v51 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD090F8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v51 - v26;
  if ((sub_1BCE19070() & 1) == 0)
  {
    goto LABEL_19;
  }

  v51 = v6;
  v53 = v4;
  v52 = type metadata accessor for ConditionsComplicationHourlyViewModel();
  v28 = *(v52 + 20);
  v29 = *(v24 + 48);
  v54 = a1;
  sub_1BC952B1C(a1 + v28, v27, &qword_1EBD08690);
  v30 = a2 + v28;
  v31 = a2;
  sub_1BC952B1C(v30, &v27[v29], &qword_1EBD08690);
  OUTLINED_FUNCTION_8_0(v27);
  if (v32)
  {
    OUTLINED_FUNCTION_8_0(&v27[v29]);
    if (v32)
    {
      sub_1BC94C05C(v27, &qword_1EBD08690);
      goto LABEL_12;
    }

LABEL_10:
    v33 = &qword_1EBD090F8;
LABEL_18:
    sub_1BC94C05C(v27, v33);
    goto LABEL_19;
  }

  sub_1BC952B1C(v27, v23, &qword_1EBD08690);
  OUTLINED_FUNCTION_8_0(&v27[v29]);
  if (v32)
  {
    (*(v16 + 8))(v23, v14);
    goto LABEL_10;
  }

  (*(v16 + 32))(v19, &v27[v29], v14);
  sub_1BCAFEB90(&qword_1EDA1BF98);
  v34 = sub_1BCE1D210();
  v35 = *(v16 + 8);
  v35(v19, v14);
  v35(v23, v14);
  sub_1BC94C05C(v27, &qword_1EBD08690);
  if ((v34 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_12:
  v36 = v52;
  v37 = *(v52 + 24);
  v27 = v58;
  v38 = *(v57 + 48);
  v39 = v54;
  sub_1BC952B1C(v54 + v37, v58, &qword_1EBD08688);
  sub_1BC952B1C(v31 + v37, &v27[v38], &qword_1EBD08688);
  v40 = v53;
  if (__swift_getEnumTagSinglePayload(v27, 1, v53) != 1)
  {
    v41 = v56;
    sub_1BC952B1C(v27, v56, &qword_1EBD08688);
    if (__swift_getEnumTagSinglePayload(&v27[v38], 1, v40) != 1)
    {
      v44 = v51;
      v45 = &v27[v38];
      v46 = v55;
      (*(v51 + 32))(v55, v45, v40);
      OUTLINED_FUNCTION_2_76();
      sub_1BCCF8C58(v47, v48);
      v49 = sub_1BCE1D210();
      v50 = *(v44 + 8);
      v50(v46, v40);
      v50(v41, v40);
      sub_1BC94C05C(v27, &qword_1EBD08688);
      if ((v49 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    (*(v51 + 8))(v41, v40);
    goto LABEL_17;
  }

  if (__swift_getEnumTagSinglePayload(&v27[v38], 1, v40) != 1)
  {
LABEL_17:
    v33 = &qword_1EBD0B948;
    goto LABEL_18;
  }

  sub_1BC94C05C(v27, &qword_1EBD08688);
LABEL_22:
  if (*(v39 + v36[7]) == *(v31 + v36[7]) && *(v39 + v36[8]) == *(v31 + v36[8]) && (sub_1BCE19010() & 1) != 0)
  {
    v42 = MEMORY[0x1BFB2BB80](v39 + v36[10], v31 + v36[10]);
    return v42 & 1;
  }

LABEL_19:
  v42 = 0;
  return v42 & 1;
}

uint64_t sub_1BCCF7C48(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D69747961447369 && a2 == 0xE900000000000065;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 7827310 && a2 == 0xE300000000000000;
          if (v9 || (sub_1BCE1E090() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 1701669236 && a2 == 0xE400000000000000;
            if (v10 || (sub_1BCE1E090() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_1BCE1E090();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BCCF7E80(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x74617265706D6574;
      break;
    case 2:
      result = 0x6F697469646E6F63;
      break;
    case 3:
      result = 0x6D69747961447369;
      break;
    case 4:
      result = 7827310;
      break;
    case 5:
      result = 1701669236;
      break;
    case 6:
      result = 0x656E6F5A656D6974;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCCF7F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCCF7C48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCCF7F74(uint64_t a1)
{
  v2 = sub_1BCCF8310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCCF7FB0(uint64_t a1)
{
  v2 = sub_1BCCF8310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ConditionsComplicationHourlyViewModel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C780);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCCF8310();
  sub_1BCE1E170();
  v18[15] = 0;
  sub_1BCE19090();
  OUTLINED_FUNCTION_5_56();
  sub_1BCCF8C58(v9, v10);
  OUTLINED_FUNCTION_4_3();
  sub_1BCE1E020();
  if (!v1)
  {
    type metadata accessor for ConditionsComplicationHourlyViewModel();
    v18[14] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
    sub_1BCAFEB90(&qword_1EBD09188);
    OUTLINED_FUNCTION_4_3();
    sub_1BCE1DFC0();
    v18[13] = 2;
    sub_1BCE199D0();
    OUTLINED_FUNCTION_2_76();
    sub_1BCCF8C58(v11, v12);
    OUTLINED_FUNCTION_4_3();
    sub_1BCE1DFC0();
    v18[12] = 3;
    sub_1BCE1DFE0();
    v18[11] = 4;
    sub_1BCE1DFE0();
    v18[10] = 5;
    sub_1BCE19060();
    OUTLINED_FUNCTION_7_55();
    sub_1BCCF8C58(v13, v14);
    OUTLINED_FUNCTION_4_3();
    sub_1BCE1E020();
    v18[9] = 6;
    sub_1BCE19470();
    OUTLINED_FUNCTION_6_52();
    sub_1BCCF8C58(v15, v16);
    OUTLINED_FUNCTION_4_3();
    sub_1BCE1E020();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1BCCF8310()
{
  result = qword_1EBD0C788;
  if (!qword_1EBD0C788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C788);
  }

  return result;
}

uint64_t ConditionsComplicationHourlyViewModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = sub_1BCE19470();
  OUTLINED_FUNCTION_2();
  v50 = v3;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5_1();
  v53 = v5;
  v60 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v58 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_1();
  v54 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08688);
  OUTLINED_FUNCTION_14(v9);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08690);
  OUTLINED_FUNCTION_14(v13);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v50 - v15;
  v17 = sub_1BCE19090();
  OUTLINED_FUNCTION_2();
  v59 = v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C790);
  OUTLINED_FUNCTION_2();
  v55 = v22;
  v56 = v23;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v50 - v25;
  v63 = type metadata accessor for ConditionsComplicationHourlyViewModel();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_5_1();
  v29 = v28;
  v30 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  sub_1BCCF8310();
  v57 = v26;
  v31 = v61;
  sub_1BCE1E160();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v61 = v12;
  v70 = 0;
  OUTLINED_FUNCTION_5_56();
  sub_1BCCF8C58(v32, v33);
  sub_1BCE1DF70();
  v34 = v29;
  (*(v59 + 32))(v29, v21, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  v69 = 1;
  sub_1BCAFEB90(&qword_1EBD091C0);
  OUTLINED_FUNCTION_13_36();
  v35 = v63;
  sub_1BC9643D8(v16, v29 + *(v63 + 20), &qword_1EBD08690);
  sub_1BCE199D0();
  v68 = 2;
  OUTLINED_FUNCTION_2_76();
  sub_1BCCF8C58(v36, v37);
  v38 = v61;
  OUTLINED_FUNCTION_13_36();
  sub_1BC9643D8(v38, v29 + v35[6], &qword_1EBD08688);
  v67 = 3;
  *(v29 + v35[7]) = sub_1BCE1DF30() & 1;
  v66 = 4;
  *(v29 + v35[8]) = sub_1BCE1DF30() & 1;
  v65 = 5;
  OUTLINED_FUNCTION_7_55();
  sub_1BCCF8C58(v39, v40);
  v41 = v54;
  v42 = v60;
  sub_1BCE1DF70();
  (*(v58 + 32))(v29 + v35[9], v41, v42);
  v64 = 6;
  OUTLINED_FUNCTION_6_52();
  sub_1BCCF8C58(v43, v44);
  v46 = v52;
  v45 = v53;
  sub_1BCE1DF70();
  v47 = OUTLINED_FUNCTION_9_45();
  v48(v47);
  (*(v50 + 32))(v34 + v35[10], v45, v46);
  sub_1BCAA384C(v34, v51);
  __swift_destroy_boxed_opaque_existential_1(v62);
  return sub_1BCCF8AD0(v34);
}

uint64_t sub_1BCCF8AD0(uint64_t a1)
{
  v2 = type metadata accessor for ConditionsComplicationHourlyViewModel();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCCF8B3C(void *a1)
{
  a1[1] = sub_1BCCF8C58(&qword_1EBD0C798, type metadata accessor for ConditionsComplicationHourlyViewModel);
  a1[2] = sub_1BCCF8C58(&qword_1EBD0C7A0, type metadata accessor for ConditionsComplicationHourlyViewModel);
  a1[3] = sub_1BCCF8C58(&qword_1EBD0C7A8, type metadata accessor for ConditionsComplicationHourlyViewModel);
  result = sub_1BCCF8C58(&qword_1EBD09770, type metadata accessor for ConditionsComplicationHourlyViewModel);
  a1[4] = result;
  return result;
}

uint64_t sub_1BCCF8C58(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BCCF8D00()
{
  sub_1BCE19090();
  if (v0 <= 0x3F)
  {
    sub_1BCAFED54();
    if (v1 <= 0x3F)
    {
      sub_1BCCF8DDC();
      if (v2 <= 0x3F)
      {
        sub_1BCE19060();
        if (v3 <= 0x3F)
        {
          sub_1BCE19470();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BCCF8DDC()
{
  if (!qword_1EDA1EB68)
  {
    sub_1BCE199D0();
    v0 = sub_1BCE1DB10();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDA1EB68);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for ConditionsComplicationHourlyViewModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BCCF8F14()
{
  result = qword_1EBD0C7C0;
  if (!qword_1EBD0C7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C7C0);
  }

  return result;
}

unint64_t sub_1BCCF8F6C()
{
  result = qword_1EBD0C7C8;
  if (!qword_1EBD0C7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C7C8);
  }

  return result;
}

unint64_t sub_1BCCF8FC4()
{
  result = qword_1EBD0C7D0;
  if (!qword_1EBD0C7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C7D0);
  }

  return result;
}

uint64_t MoonRiseSetEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = type metadata accessor for MoonRiseSetEvent();
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MoonRiseSet();
  v9 = OUTLINED_FUNCTION_14(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_71();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  sub_1BCCF917C(v1, v7);
  sub_1BCB07110(v7, v12);
  sub_1BCB07110(v12, v2);
  sub_1BCE19060();
  OUTLINED_FUNCTION_4();
  return (*(v13 + 32))(a1, v2);
}

uint64_t type metadata accessor for MoonRiseSetEvent()
{
  result = qword_1EDA1A8C0;
  if (!qword_1EDA1A8C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BCCF917C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoonRiseSetEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static MoonRiseSetEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = type metadata accessor for MoonRiseSet();
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = type metadata accessor for MoonRiseSetEvent();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_1_71();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C7D8);
  v23 = OUTLINED_FUNCTION_14(v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v37 - v24;
  v27 = *(v26 + 56);
  sub_1BCCF917C(a1, &v37 - v24);
  sub_1BCCF917C(v38, &v25[v27]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1BCCF917C(v25, v18);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1BCB07110(&v25[v27], v10);
        static MoonRiseSet.== infix(_:_:)(v18, v10);
        OUTLINED_FUNCTION_0_69();
        v30 = v29;
        sub_1BCCF9558(v10, v29);
        v31 = v18;
LABEL_12:
        v34 = v30;
        goto LABEL_13;
      }

      v2 = v18;
    }

    else
    {
      sub_1BCCF917C(v25, v2);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_1BCB07110(&v25[v27], v7);
        static MoonRiseSet.== infix(_:_:)(v2, v7);
        OUTLINED_FUNCTION_0_69();
        v33 = v32;
        sub_1BCCF9558(v7, v32);
        v31 = v2;
        v34 = v33;
LABEL_13:
        sub_1BCCF9558(v31, v34);
        sub_1BCCF9558(v25, type metadata accessor for MoonRiseSetEvent);
        return v14 & 1;
      }
    }
  }

  else
  {
    sub_1BCCF917C(v25, v21);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1BCB07110(&v25[v27], v13);
      static MoonRiseSet.== infix(_:_:)(v21, v13);
      OUTLINED_FUNCTION_0_69();
      v30 = v35;
      sub_1BCCF9558(v13, v35);
      v31 = v21;
      goto LABEL_12;
    }

    v2 = v21;
  }

  sub_1BCCF9558(v2, type metadata accessor for MoonRiseSet);
  sub_1BCCF94F0(v25);
  v14 = 0;
  return v14 & 1;
}

uint64_t sub_1BCCF94F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C7D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCCF9558(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1BCCF95B4()
{
  result = type metadata accessor for MoonRiseSet();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static GeoHandler.getElevation(for:timeZone:on:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07868);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = sub_1BCE19060();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2_0();
  v17 = v16 - v15;
  v18 = Date.exactTimeOfDay(in:)();
  sub_1BC950114();
  v20 = v19;
  sub_1BC9502D8(a1, v17, a3, a4, v18);
  (*(v13 + 16))(v10, v17, v11);
  __swift_storeEnumTagSinglePayload(v10, 0, 1, v11);
  v21 = objc_allocWithZone(MEMORY[0x1E69A1DF0]);
  v22 = sub_1BC951B1C(v10, 0);
  v23 = v22;
  if (v22)
  {
    [v22 altitude];
    v25 = v24;
  }

  else
  {
    v25 = 0xC066800000000000;
  }

  v26 = sub_1BC951E44(a3, a4);
  CGFloat.wrappedHour(shiftedBy:)(-v20, v26);
  v28 = v27;

  result = (*(v13 + 8))(v17, v11);
  *a2 = v25;
  *(a2 + 8) = v28 <= v18;
  return result;
}

_BYTE *storeEnumTagSinglePayload for GeoHandler(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BCCF98D8()
{
  result = qword_1EDA1BF08;
  if (!qword_1EDA1BF08)
  {
    sub_1BCE19060();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA1BF08);
  }

  return result;
}

__n128 sub_1BCCF9930@<Q0>(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA111D0();
  v4 = v3;
  sub_1BCA111D0();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3AF000000000000;
  *(a1 + 80) = xmmword_1BCE3EB50;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3EB60;
  *(a1 + 240) = 0x41C8000040E85A1DLL;
  *(a1 + 248) = 1138819072;
  *(a1 + 256) = 0x3E4CCCCD3DF5C28FLL;
  *(a1 + 264) = 0x4000000041200000;
  *(a1 + 272) = 1084227584;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x446D800041880000;
  *(a1 + 328) = 0x3E19999A3DCCCCCDLL;
  *(a1 + 336) = 0x3F80000041000000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B449BA63F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3EB70;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F6666663E99999ALL;
  *(a1 + 720) = 0x4182A3D741600000;
  *(a1 + 728) = 1066369312;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3EB80;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F19999A3F000000;
  *(a1 + 848) = 0x4198000041600000;
  *(a1 + 856) = 1093664768;
  *(a1 + 864) = 1;
  *(a1 + 872) = 6;
  *(a1 + 880) = xmmword_1BCE3EB90;
  *(a1 + 896) = 0x2073756C756D7543;
  *(a1 + 904) = 0xEB000000004C202DLL;
  *(a1 + 912) = 0x5F73756C756D7543;
  *(a1 + 920) = 0xEF4C656C676E6953;
  *(a1 + 928) = 10;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 976) = 0x4120000041000000;
  *(a1 + 984) = 1083393800;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3EBA0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x40A9999940975C29;
  *(a1 + 1112) = 1066171200;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 6;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF4C202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE798E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE3E0C0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3E851EB83E428F5CLL;
  *(a1 + 1296) = 0x4248000041F9999ALL;
  *(a1 + 1304) = 1086001775;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0x3FCCCCCD40C66666;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 5;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V1.2S, #-30.0 }

  *(a1 + 1616) = -_D1;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1637) = 0;
  *(a1 + 1631) = 0;
  *(v2 + 209) = 0x300000100000101;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 13;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3EBB0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1056964608;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1110704128;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3EBC0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3DF5C28F3DA3D70ALL;
  *(a1 + 2128) = 0x405EB8523FC00000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1049582633;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

uint64_t sub_1BCCFA0DC()
{
  result = sub_1BCE1CA80();
  qword_1EDA2EFA0 = result;
  return result;
}

void sub_1BCCFA0FC(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCB1CDC0();
  v4 = v3;
  sub_1BCB1CDC0();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC37A000000000000;
  *(a1 + 80) = xmmword_1BCE4FAD0;
  *(a1 + 96) = xmmword_1BCE4FAE0;
  *(a1 + 112) = 0x3E8F5C293E3851ECLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE4FAF0;
  *(a1 + 160) = xmmword_1BCE4FB00;
  *(a1 + 176) = 1169915904;
  *(a1 + 184) = 0x3E19999A3D4CCCCDLL;
  *(a1 + 192) = xmmword_1BCE40310;
  *(a1 + 208) = xmmword_1BCE42B10;
  *(a1 + 224) = xmmword_1BCE44E70;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE3BF30;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = _Q0;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = _Q0;
  *(a1 + 544) = _Q0;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x4100000040A00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = vdup_n_s32(0x3FA66666u);
  *(a1 + 720) = vdup_n_s32(0x41840000u);
  *(a1 + 728) = 1084227584;
  *(a1 + 736) = 1;
  *(a1 + 744) = 6;
  *(a1 + 752) = xmmword_1BCE4FB10;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = vdup_n_s32(0x3FCCCCCDu);
  *(a1 + 848) = 0x4168000041280000;
  *(a1 + 856) = 1077936128;
  *(a1 + 864) = 1;
  *(a1 + 872) = 5;
  *(a1 + 880) = xmmword_1BCE4FB20;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF4C202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE798E0;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x4000000040000000;
  *(a1 + 976) = 0x4168000041480000;
  *(a1 + 984) = 1065353216;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE4FB30;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF53202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE792E0;
  *(a1 + 1056) = 6;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 1084503840;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE61C80;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x3FAA3D703F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE4FB50;
  *(a1 + 1568) = 0x42B875C2424FCCCCLL;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE4FB60;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 16777472;
  *(a1 + 1638) = 0;
  *(a1 + 1632) = 0;
  *(a1 + 1646) = 16843009;
  *(a1 + 1650) = 1;
  *(a1 + 1651) = 256;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1064397920;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE499B0;
  *(a1 + 1696) = xmmword_1BCE4AA70;
  *(a1 + 1712) = xmmword_1BCE4AA80;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 10;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1106247680;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3E700;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F4CCCCD3E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E051EB83D23D70ALL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4059999A40466666;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1063675494;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

__n128 sub_1BCCFA8A0@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCABBA14();
  v4 = v3;
  sub_1BCABD910();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 3;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 25;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC348000000000000;
  *(a1 + 80) = xmmword_1BCE3DE90;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE3DEA0;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3D860;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4190000041200000;
  *(a1 + 664) = 0x400CCCCD3E99999ALL;
  *(a1 + 672) = 0x408000003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F8000003F000000;
  *(a1 + 848) = 0x400000003FC00000;
  *(a1 + 856) = 0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3D890;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF53202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE792E0;
  *(a1 + 928) = 6;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F000000;
  *(a1 + 976) = 0x411970A44106E147;
  *(a1 + 984) = 1083022496;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF53202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE792E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE3BFA0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(a1 + 1634) = 16843009;
  *(a1 + 1637) = 16843009;
  *(a1 + 1656) = 0;
  *(a1 + 1641) = 0;
  *(a1 + 1649) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3D8D0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1106247680;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE61CA0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F3333333E4CCCCDLL;
  *(a1 + 2008) = 0x3F4000003F19999ALL;
  *(a1 + 2016) = xmmword_1BCE3C080;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

__n128 sub_1BCCFAF9C@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCCFB720();
  v4 = v3;
  sub_1BCCFD788();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 2;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 30;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC3D4800000000000;
  *(a1 + 80) = xmmword_1BCE3E530;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3AC49BA63F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3C680;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x402000003E99999ALL;
  *(a1 + 672) = 0x40A000003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3E4CCCCD3E3851ECLL;
  *(a1 + 720) = 0x41A0000041600000;
  *(a1 + 728) = 1102714503;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3C6C0;
  *(a1 + 768) = 0xD000000000000010;
  *(a1 + 776) = 0x80000001BCE79320;
  *(a1 + 784) = 0xD000000000000014;
  *(a1 + 792) = 0x80000001BCE79340;
  *(a1 + 800) = 9;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3E99999A3E800000;
  *(a1 + 848) = 0x41BFD70A41900000;
  *(a1 + 856) = 0xBFFCEC2041349DF0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 3;
  *(a1 + 880) = xmmword_1BCE3C6E0;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF4C202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE798E0;
  *(a1 + 928) = 9;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E99999ALL;
  *(a1 + 976) = 0x41999999417947AELL;
  *(a1 + 984) = 1077621264;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 3;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x617274736F746C41;
  *(a1 + 1032) = 0xEF53202D20737574;
  *(a1 + 1040) = 0xD000000000000013;
  *(a1 + 1048) = 0x80000001BCE792E0;
  *(a1 + 1056) = 9;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x404F5C293FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x2073756C756D7543;
  *(a1 + 1160) = 0xEB0000000053202DLL;
  *(a1 + 1168) = 0x5F73756C756D7543;
  *(a1 + 1176) = 0xEF53656C676E6953;
  *(a1 + 1184) = 5;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE3E540;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE61CB0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(v2 + 198) = xmmword_1BCE3E560;
  *(a1 + 1650) = 1;
  *(a1 + 1652) = 0;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 1;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C7B0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1109917696;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 1;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 1065353216;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE3C7D0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x417D020C3F4CCCCDLL;
  *(a1 + 2224) = xmmword_1BCE3C7F0;
  *(a1 + 2240) = xmmword_1BCE3C800;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

__n128 sub_1BCCFB720()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE3C830;
  *(v0 + 64) = 0x432A000042480000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE45B80;
  *(v0 + 96) = xmmword_1BCE3D340;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V19.2D, #0.5 }

  *(v0 + 208) = _Q19;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = result;
  *(v0 + 256) = result;
  *(v0 + 272) = result;
  *(v0 + 288) = result;
  *(v0 + 304) = result;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = result;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = result;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = result;
  *(v0 + 448) = result;
  *(v0 + 464) = result;
  *(v0 + 480) = result;
  *(v0 + 496) = result;
  *(v0 + 512) = result;
  *(v0 + 528) = result;
  *(v0 + 544) = result;
  *(v0 + 560) = result;
  *(v0 + 576) = result;
  *(v0 + 592) = result;
  *(v0 + 608) = result;
  *(v0 + 624) = result;
  *(v0 + 640) = result;
  *(v0 + 656) = result;
  *(v0 + 672) = result;
  *(v0 + 688) = result;
  *(v0 + 704) = result;
  *(v0 + 720) = result;
  *(v0 + 736) = result;
  *(v0 + 752) = result;
  *(v0 + 768) = result;
  *(v0 + 784) = result;
  *(v0 + 800) = result;
  *(v0 + 816) = result;
  *(v0 + 832) = result;
  *(v0 + 848) = result;
  *(v0 + 864) = result;
  *(v0 + 880) = result;
  *(v0 + 896) = result;
  *(v0 + 912) = result;
  *(v0 + 928) = result;
  *(v0 + 944) = result;
  *(v0 + 960) = result;
  *(v0 + 976) = result;
  *(v0 + 992) = result;
  *(v0 + 1008) = result;
  *(v0 + 1024) = result;
  *(v0 + 1040) = result;
  *(v0 + 1056) = result;
  *(v0 + 1072) = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = result;
  *(v0 + 1152) = result;
  *(v0 + 1168) = 0x4170000000000000;
  *(v0 + 1176) = 0x3FF0000000000000;
  *(v0 + 1184) = result;
  *(v0 + 1200) = result;
  *(v0 + 1216) = result;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v10;
  *(v0 + 1260) = *&v10[3];
  *(v0 + 1264) = xmmword_1BCE3C830;
  *(v0 + 1280) = 0x432A000042480000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3C840;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = _Q19;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = result;
  *(v0 + 1472) = result;
  *(v0 + 1488) = result;
  *(v0 + 1504) = result;
  *(v0 + 1520) = result;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = result;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = result;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = result;
  *(v0 + 1664) = result;
  *(v0 + 1680) = result;
  *(v0 + 1696) = result;
  *(v0 + 1712) = result;
  *(v0 + 1728) = result;
  *(v0 + 1744) = result;
  *(v0 + 1760) = result;
  *(v0 + 1776) = result;
  *(v0 + 1792) = result;
  *(v0 + 1808) = result;
  *(v0 + 1824) = result;
  *(v0 + 1840) = result;
  *(v0 + 1856) = result;
  *(v0 + 1872) = result;
  *(v0 + 1888) = result;
  *(v0 + 1904) = result;
  *(v0 + 1920) = result;
  *(v0 + 1936) = result;
  *(v0 + 1952) = result;
  *(v0 + 1968) = result;
  *(v0 + 1984) = result;
  *(v0 + 2000) = result;
  *(v0 + 2016) = result;
  *(v0 + 2032) = result;
  *(v0 + 2048) = result;
  *(v0 + 2064) = result;
  *(v0 + 2080) = result;
  *(v0 + 2096) = result;
  *(v0 + 2112) = result;
  *(v0 + 2128) = result;
  *(v0 + 2144) = result;
  *(v0 + 2160) = result;
  *(v0 + 2176) = result;
  *(v0 + 2192) = result;
  *(v0 + 2208) = result;
  *(v0 + 2224) = result;
  *(v0 + 2240) = result;
  *(v0 + 2256) = result;
  *(v0 + 2272) = result;
  *(v0 + 2288) = vdupq_n_s64(0x3FCF6CD7E0000000uLL);
  *(v0 + 2304) = xmmword_1BCE3C940;
  *(v0 + 2320) = xmmword_1BCE3C950;
  *(v0 + 2336) = xmmword_1BCE3C960;
  *(v0 + 2352) = result;
  *(v0 + 2368) = result;
  *(v0 + 2384) = 0x4170000000000000;
  *(v0 + 2392) = 0x3FF0000000000000;
  *(v0 + 2400) = result;
  *(v0 + 2416) = result;
  *(v0 + 2432) = result;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2473) = *v11;
  *(v0 + 2476) = *&v11[3];
  *(v0 + 2480) = xmmword_1BCE3C780;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2528) = result;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = result;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = _Q19;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = result;
  *(v0 + 2688) = result;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2816) = 0x3F3333333F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = result;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = result;
  *(v0 + 2880) = result;
  *(v0 + 2896) = result;
  *(v0 + 2912) = result;
  *(v0 + 2928) = result;
  *(v0 + 2944) = result;
  *(v0 + 2960) = result;
  *(v0 + 2976) = result;
  *(v0 + 2992) = result;
  *(v0 + 3008) = result;
  *(v0 + 3024) = result;
  *(v0 + 3040) = result;
  *(v0 + 3056) = result;
  *(v0 + 3072) = result;
  *(v0 + 3088) = result;
  *(v0 + 3104) = result;
  *(v0 + 3120) = result;
  *(v0 + 3136) = result;
  *(v0 + 3152) = result;
  *(v0 + 3168) = result;
  *(v0 + 3184) = result;
  *(v0 + 3200) = result;
  *(v0 + 3216) = result;
  *(v0 + 3232) = result;
  *(v0 + 3248) = result;
  *(v0 + 3264) = result;
  *(v0 + 3280) = result;
  *(v0 + 3296) = result;
  *(v0 + 3312) = result;
  *(v0 + 3328) = result;
  *(v0 + 3344) = result;
  *(v0 + 3360) = result;
  *(v0 + 3376) = result;
  *(v0 + 3392) = result;
  *(v0 + 3408) = result;
  *(v0 + 3424) = result;
  *(v0 + 3440) = result;
  *(v0 + 3456) = result;
  *(v0 + 3472) = result;
  *(v0 + 3488) = result;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = result;
  *(v0 + 3584) = result;
  *(v0 + 3600) = 0x4170000000000000;
  *(v0 + 3608) = 0x3FF0000000000000;
  *(v0 + 3616) = result;
  *(v0 + 3632) = result;
  *(v0 + 3648) = result;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v12;
  *(v0 + 3692) = *&v12[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 4904) = 0;
  *(v0 + 4905) = *v13;
  *(v0 + 4908) = *&v13[3];
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4936) = 1061997773;
  *(v0 + 4640) = result;
  *(v0 + 4832) = result;
  *(v0 + 4848) = result;
  *(v0 + 4864) = result;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4656) = result;
  *(v0 + 4800) = result;
  *(v0 + 4816) = 0x4170000000000000;
  *(v0 + 4824) = 0x3FF0000000000000;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = result;
  *(v0 + 4672) = result;
  *(v0 + 4688) = result;
  *(v0 + 4704) = result;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4544) = result;
  *(v0 + 4560) = result;
  *(v0 + 4576) = result;
  *(v0 + 4592) = result;
  *(v0 + 4608) = result;
  *(v0 + 4624) = result;
  *(v0 + 4448) = result;
  *(v0 + 4464) = result;
  *(v0 + 4480) = result;
  *(v0 + 4496) = result;
  *(v0 + 4512) = result;
  *(v0 + 4528) = result;
  *(v0 + 4352) = result;
  *(v0 + 4368) = result;
  *(v0 + 4384) = result;
  *(v0 + 4400) = result;
  *(v0 + 4416) = result;
  *(v0 + 4432) = result;
  *(v0 + 4256) = result;
  *(v0 + 4272) = result;
  *(v0 + 4288) = result;
  *(v0 + 4304) = result;
  *(v0 + 4320) = result;
  *(v0 + 4336) = result;
  *(v0 + 4176) = result;
  *(v0 + 4192) = result;
  *(v0 + 4208) = result;
  *(v0 + 4224) = result;
  *(v0 + 4240) = result;
  *(v0 + 4112) = result;
  *(v0 + 4128) = result;
  *(v0 + 4144) = result;
  *(v0 + 4160) = result;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = result;
  *(v0 + 4096) = result;
  *(v0 + 4048) = xmmword_1BCE3CAF0;
  *(v0 + 4064) = 0;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFBFBFC0000000;
  *(v0 + 3712) = 0x447A000044160000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3920) = result;
  *(v0 + 3936) = result;
  *(v0 + 3952) = result;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3888) = result;
  *(v0 + 3904) = result;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3840) = xmmword_1BCE3CAC0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE3CAB0;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3744) = result;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE45B90;
  *(v0 + 5024) = xmmword_1BCE45BA0;
  *(v0 + 5040) = result;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5232) = xmmword_1BCE3CC00;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6448) = xmmword_1BCE3CCF0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE45BB0;
  *(v0 + 7440) = xmmword_1BCE45BC0;
  *(v0 + 7456) = xmmword_1BCE3DEF0;
  *(v0 + 7552) = result;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 9840) = xmmword_1BCE58FD0;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1148846080;
  *(v0 + 11008) = 1148846080;
  *(v0 + 8624) = xmmword_1BCE44780;
  *(v0 + 11056) = xmmword_1BCE44780;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 9856) = xmmword_1BCE3C9D0;
  *(v0 + 11072) = xmmword_1BCE3C9D0;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  v7 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v7;
  *(v0 + 10096) = v7;
  *(v0 + 11312) = v7;
  *(v0 + 10816) = xmmword_1BCE447D0;
  *(v0 + 12032) = xmmword_1BCE447D0;
  *(v0 + 10800) = xmmword_1BCE447C0;
  *(v0 + 10832) = xmmword_1BCE447C0;
  *(v0 + 12016) = xmmword_1BCE447C0;
  *(v0 + 12048) = xmmword_1BCE447C0;
  *(v0 + 10848) = xmmword_1BCE447E0;
  *(v0 + 12064) = xmmword_1BCE447E0;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A00000447A0000;
  *(v0 + 12224) = 0x41A00000447A0000;
  v8 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v8;
  *(v0 + 8592) = v8;
  *(v0 + 9808) = v8;
  *(v0 + 11024) = v8;
  *(v0 + 12240) = v8;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 9600) = xmmword_1BCE447A0;
  *(v0 + 13248) = xmmword_1BCE447A0;
  *(v0 + 9584) = xmmword_1BCE44790;
  *(v0 + 9616) = xmmword_1BCE44790;
  *(v0 + 13232) = xmmword_1BCE44790;
  *(v0 + 13264) = xmmword_1BCE44790;
  *(v0 + 9632) = xmmword_1BCE447B0;
  *(v0 + 13280) = xmmword_1BCE447B0;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 6400) = xmmword_1BCE3CCC0;
  *(v0 + 7616) = xmmword_1BCE3CCC0;
  *(v0 + 8832) = xmmword_1BCE3CCC0;
  *(v0 + 10048) = xmmword_1BCE3CCC0;
  *(v0 + 12480) = xmmword_1BCE3CCC0;
  *(v0 + 13696) = xmmword_1BCE3CCC0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 5056) = xmmword_1BCE3CBA0;
  *(v0 + 5072) = result;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = result;
  *(v0 + 5120) = result;
  *(v0 + 5136) = result;
  *(v0 + 5152) = result;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = result;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = result;
  *(v0 + 5312) = result;
  *(v0 + 5328) = result;
  *(v0 + 5344) = result;
  *(v0 + 5360) = result;
  *(v0 + 5376) = result;
  *(v0 + 5392) = result;
  *(v0 + 5408) = result;
  *(v0 + 5424) = result;
  *(v0 + 5440) = result;
  *(v0 + 5456) = result;
  *(v0 + 5472) = result;
  *(v0 + 5488) = result;
  *(v0 + 5504) = result;
  *(v0 + 5520) = result;
  *(v0 + 5536) = result;
  *(v0 + 5552) = result;
  *(v0 + 5568) = result;
  *(v0 + 5584) = result;
  *(v0 + 5600) = result;
  *(v0 + 5616) = result;
  *(v0 + 5632) = result;
  *(v0 + 5648) = result;
  *(v0 + 5664) = result;
  *(v0 + 5680) = result;
  *(v0 + 5696) = result;
  *(v0 + 5712) = result;
  *(v0 + 5728) = result;
  *(v0 + 5744) = result;
  *(v0 + 5760) = result;
  *(v0 + 5776) = result;
  *(v0 + 5792) = result;
  *(v0 + 5808) = result;
  *(v0 + 5824) = result;
  *(v0 + 5840) = result;
  *(v0 + 5856) = result;
  *(v0 + 5872) = result;
  *(v0 + 5888) = result;
  *(v0 + 5904) = result;
  *(v0 + 5920) = result;
  *(v0 + 6000) = result;
  *(v0 + 6016) = result;
  *(v0 + 6032) = 0x4170000000000000;
  *(v0 + 6040) = 0x3FF0000000000000;
  *(v0 + 6048) = result;
  *(v0 + 6064) = result;
  *(v0 + 6080) = result;
  *(v0 + 6121) = *v14;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6124) = *&v14[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = result;
  *(v0 + 6272) = result;
  *(v0 + 6288) = result;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = result;
  *(v0 + 6336) = result;
  *(v0 + 6352) = result;
  *(v0 + 6368) = result;
  *(v0 + 6384) = xmmword_1BCE3CCB0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = result;
  *(v0 + 6528) = result;
  *(v0 + 6544) = result;
  *(v0 + 6560) = result;
  *(v0 + 6576) = result;
  *(v0 + 6592) = result;
  *(v0 + 6608) = result;
  *(v0 + 6624) = result;
  *(v0 + 6640) = result;
  *(v0 + 6656) = result;
  *(v0 + 6672) = result;
  *(v0 + 6688) = result;
  *(v0 + 6704) = result;
  *(v0 + 6720) = result;
  *(v0 + 6736) = result;
  *(v0 + 6752) = result;
  *(v0 + 6768) = result;
  *(v0 + 6784) = result;
  *(v0 + 6800) = result;
  *(v0 + 6816) = result;
  *(v0 + 6832) = result;
  *(v0 + 6848) = result;
  *(v0 + 6864) = result;
  *(v0 + 6880) = result;
  *(v0 + 6896) = result;
  *(v0 + 6912) = result;
  *(v0 + 6928) = result;
  *(v0 + 6944) = result;
  *(v0 + 6960) = result;
  *(v0 + 6976) = result;
  *(v0 + 6992) = result;
  *(v0 + 7008) = result;
  *(v0 + 7024) = result;
  *(v0 + 7040) = result;
  *(v0 + 7056) = result;
  *(v0 + 7072) = result;
  *(v0 + 7088) = result;
  *(v0 + 7104) = result;
  *(v0 + 7120) = result;
  *(v0 + 7136) = result;
  *(v0 + 7216) = result;
  *(v0 + 7232) = result;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FF0000000000000;
  *(v0 + 7264) = result;
  *(v0 + 7280) = result;
  *(v0 + 7296) = result;
  *(v0 + 7337) = *v15;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7340) = *&v15[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7472) = result;
  *(v0 + 7488) = result;
  *(v0 + 7504) = result;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = result;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14896) = xmmword_1BCE3D020;
  *(v0 + 14912) = xmmword_1BCE3D030;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14960) = xmmword_1BCE3D050;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 16000) = xmmword_1BCE3CBA0;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 7600) = xmmword_1BCE3CCB0;
  *(v0 + 8816) = xmmword_1BCE3CCB0;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 12464) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16112) = xmmword_1BCE3D120;
  *(v0 + 16128) = xmmword_1BCE3D130;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 16176) = xmmword_1BCE3D140;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D445C8321;
  *(v0 + 17104) = xmmword_1BCE3D1A0;
  *(v0 + 17120) = xmmword_1BCE3D1B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE3D200;
  *(v0 + 17216) = xmmword_1BCE3CAC0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE3D210;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18288) = xmmword_1BCE3C780;
  *(v0 + 18304) = 0x4396000042C80000;
  *(v0 + 18320) = xmmword_1BCE3D270;
  *(v0 + 18352) = xmmword_1BCE3D280;
  *(v0 + 18368) = xmmword_1BCE3D290;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE3D2A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3D2D0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3F3333333F4CCCCDLL;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19632) = xmmword_1BCE3E590;
  __asm { FMOV            V1.2D, #0.25 }

  *(v0 + 20528) = _Q1;
  *(v0 + 20560) = xmmword_1BCE3D300;
  *(v0 + 19504) = xmmword_1BCE3C830;
  *(v0 + 20720) = xmmword_1BCE3C830;
  *(v0 + 19520) = 0x432A000042480000;
  *(v0 + 20736) = 0x432A000042480000;
  *(v0 + 19536) = xmmword_1BCE3C840;
  *(v0 + 20752) = xmmword_1BCE3C840;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 18448) = _Q19;
  *(v0 + 19664) = _Q19;
  *(v0 + 20880) = _Q19;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 19840) = 0x3F3333333F800000;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 21056) = 0x3F3333333F800000;
  *(v0 + 21744) = vdupq_n_s64(0x3FCFEB6B80000000uLL);
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 20576) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 21776) = xmmword_1BCE3D310;
  *(v0 + 21792) = xmmword_1BCE3D320;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 18192) = 0x4170000000000000;
  *(v0 + 19408) = 0x4170000000000000;
  *(v0 + 20624) = 0x4170000000000000;
  *(v0 + 21840) = 0x4170000000000000;
  *(v0 + 7568) = result;
  *(v0 + 7584) = result;
  *(v0 + 7728) = result;
  *(v0 + 7744) = result;
  *(v0 + 7760) = result;
  *(v0 + 7776) = result;
  *(v0 + 7792) = result;
  *(v0 + 7808) = result;
  *(v0 + 7824) = result;
  *(v0 + 7840) = result;
  *(v0 + 7856) = result;
  *(v0 + 7872) = result;
  *(v0 + 18080) = result;
  *(v0 + 17984) = result;
  *(v0 + 18000) = result;
  *(v0 + 18016) = result;
  *(v0 + 18032) = result;
  *(v0 + 18048) = result;
  *(v0 + 18064) = result;
  *(v0 + 17888) = result;
  *(v0 + 17904) = result;
  *(v0 + 17920) = result;
  *(v0 + 17936) = result;
  *(v0 + 17952) = result;
  *(v0 + 17968) = result;
  *(v0 + 17792) = result;
  *(v0 + 17808) = result;
  *(v0 + 17824) = result;
  *(v0 + 17840) = result;
  *(v0 + 17856) = result;
  *(v0 + 17872) = result;
  *(v0 + 17696) = result;
  *(v0 + 17712) = result;
  *(v0 + 17728) = result;
  *(v0 + 17744) = result;
  *(v0 + 17760) = result;
  *(v0 + 17776) = result;
  *(v0 + 17600) = result;
  *(v0 + 17616) = result;
  *(v0 + 17632) = result;
  *(v0 + 17648) = result;
  *(v0 + 17664) = result;
  *(v0 + 17680) = result;
  *(v0 + 17504) = result;
  *(v0 + 17520) = result;
  *(v0 + 17536) = result;
  *(v0 + 17552) = result;
  *(v0 + 17568) = result;
  *(v0 + 17584) = result;
  *(v0 + 7888) = result;
  *(v0 + 7904) = result;
  *(v0 + 17456) = result;
  *(v0 + 17472) = result;
  *(v0 + 17488) = result;
  *(v0 + 7920) = result;
  *(v0 + 7936) = result;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 7952) = result;
  *(v0 + 7968) = result;
  *(v0 + 7984) = result;
  *(v0 + 17296) = result;
  *(v0 + 17312) = result;
  *(v0 + 17328) = result;
  *(v0 + 8000) = result;
  *(v0 + 8016) = result;
  *(v0 + 8032) = result;
  *(v0 + 8048) = result;
  *(v0 + 17264) = result;
  *(v0 + 17280) = result;
  *(v0 + 8064) = result;
  *(v0 + 8080) = result;
  *(v0 + 8096) = result;
  *(v0 + 8112) = result;
  *(v0 + 8128) = result;
  *(v0 + 8144) = result;
  *(v0 + 8160) = result;
  *(v0 + 8176) = result;
  *(v0 + 16992) = result;
  *(v0 + 17065) = *v23;
  *(v0 + 17068) = *&v23[3];
  *(v0 + 17096) = 1050388079;
  *(v0 + 17008) = result;
  *(v0 + 17024) = result;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 0x2000) = result;
  *(v0 + 8208) = result;
  *(v0 + 8224) = result;
  *(v0 + 16944) = result;
  *(v0 + 16960) = result;
  *(v0 + 16984) = 0x3FF0000000000000;
  *(v0 + 8240) = result;
  *(v0 + 8256) = result;
  *(v0 + 16816) = result;
  *(v0 + 16832) = result;
  *(v0 + 16848) = result;
  *(v0 + 16864) = result;
  *(v0 + 16720) = result;
  *(v0 + 16736) = result;
  *(v0 + 16752) = result;
  *(v0 + 16768) = result;
  *(v0 + 16784) = result;
  *(v0 + 16800) = result;
  *(v0 + 16624) = result;
  *(v0 + 16640) = result;
  *(v0 + 16656) = result;
  *(v0 + 16672) = result;
  *(v0 + 16688) = result;
  *(v0 + 16704) = result;
  *(v0 + 16528) = result;
  *(v0 + 16544) = result;
  *(v0 + 16560) = result;
  *(v0 + 16576) = result;
  *(v0 + 16592) = result;
  *(v0 + 16608) = result;
  *(v0 + 16432) = result;
  *(v0 + 16448) = result;
  *(v0 + 16464) = result;
  *(v0 + 16480) = result;
  *(v0 + 16496) = result;
  *(v0 + 16512) = result;
  *(v0 + 16336) = result;
  *(v0 + 16352) = result;
  *(v0 + 16368) = result;
  *(v0 + 0x4000) = result;
  *(v0 + 16400) = result;
  *(v0 + 16416) = result;
  *(v0 + 8272) = result;
  *(v0 + 16256) = result;
  *(v0 + 16272) = result;
  *(v0 + 16288) = result;
  *(v0 + 16304) = result;
  *(v0 + 16320) = result;
  *(v0 + 8288) = result;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = result;
  *(v0 + 8304) = result;
  *(v0 + 8320) = result;
  *(v0 + 8336) = result;
  *(v0 + 8352) = result;
  *(v0 + 8432) = result;
  *(v0 + 16096) = result;
  *(v0 + 8448) = result;
  *(v0 + 8472) = 0x3FF0000000000000;
  *(v0 + 8480) = result;
  *(v0 + 16016) = result;
  *(v0 + 16048) = result;
  *(v0 + 16064) = result;
  *(v0 + 8496) = result;
  *(v0 + 8512) = result;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 15984) = result;
  *(v0 + 8552) = 0;
  *(v0 + 8553) = *v16;
  *(v0 + 8556) = *&v16[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 8640) = result;
  *(v0 + 15848) = 1;
  *(v0 + 15849) = *v22;
  *(v0 + 15852) = *&v22[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 15768) = 0x3FF0000000000000;
  *(v0 + 15776) = result;
  *(v0 + 15792) = result;
  *(v0 + 15808) = result;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 8656) = result;
  *(v0 + 8672) = result;
  *(v0 + 8688) = result;
  *(v0 + 8704) = result;
  *(v0 + 15728) = result;
  *(v0 + 15744) = result;
  *(v0 + 8720) = result;
  *(v0 + 15584) = result;
  *(v0 + 15600) = result;
  *(v0 + 15616) = result;
  *(v0 + 15632) = result;
  *(v0 + 15648) = result;
  *(v0 + 15488) = result;
  *(v0 + 15504) = result;
  *(v0 + 15520) = result;
  *(v0 + 15536) = result;
  *(v0 + 15552) = result;
  *(v0 + 15568) = result;
  *(v0 + 15392) = result;
  *(v0 + 15408) = result;
  *(v0 + 15424) = result;
  *(v0 + 15440) = result;
  *(v0 + 15456) = result;
  *(v0 + 15472) = result;
  *(v0 + 15296) = result;
  *(v0 + 15312) = result;
  *(v0 + 15328) = result;
  *(v0 + 15344) = result;
  *(v0 + 15360) = result;
  *(v0 + 15376) = result;
  *(v0 + 15200) = result;
  *(v0 + 15216) = result;
  *(v0 + 15232) = result;
  *(v0 + 15248) = result;
  *(v0 + 15264) = result;
  *(v0 + 15280) = result;
  *(v0 + 15104) = result;
  *(v0 + 15120) = result;
  *(v0 + 15136) = result;
  *(v0 + 15152) = result;
  *(v0 + 15168) = result;
  *(v0 + 15184) = result;
  *(v0 + 8752) = result;
  *(v0 + 15024) = result;
  *(v0 + 15040) = result;
  *(v0 + 15056) = result;
  *(v0 + 15072) = result;
  *(v0 + 15088) = result;
  *(v0 + 8768) = result;
  *(v0 + 8784) = result;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 8800) = result;
  *(v0 + 8864) = result;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 14880) = result;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = result;
  *(v0 + 14784) = result;
  *(v0 + 14800) = result;
  *(v0 + 14832) = result;
  *(v0 + 14848) = result;
  *(v0 + 8960) = result;
  *(v0 + 8976) = result;
  *(v0 + 8992) = result;
  *(v0 + 9008) = result;
  *(v0 + 9024) = result;
  *(v0 + 14768) = result;
  *(v0 + 9040) = result;
  *(v0 + 9056) = result;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 14633) = *v21;
  *(v0 + 14636) = *&v21[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 9072) = result;
  *(v0 + 14552) = 0x3FF0000000000000;
  *(v0 + 14560) = result;
  *(v0 + 14576) = result;
  *(v0 + 14592) = result;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 9088) = result;
  *(v0 + 9104) = result;
  *(v0 + 9120) = result;
  *(v0 + 9136) = result;
  *(v0 + 14512) = result;
  *(v0 + 14528) = result;
  *(v0 + 14352) = result;
  *(v0 + 14368) = result;
  *(v0 + 14384) = result;
  *(v0 + 14400) = result;
  *(v0 + 14416) = result;
  *(v0 + 14432) = result;
  *(v0 + 14256) = result;
  *(v0 + 14272) = result;
  *(v0 + 14288) = result;
  *(v0 + 14304) = result;
  *(v0 + 14320) = result;
  *(v0 + 14336) = result;
  *(v0 + 14160) = result;
  *(v0 + 14176) = result;
  *(v0 + 14192) = result;
  *(v0 + 14208) = result;
  *(v0 + 14224) = result;
  *(v0 + 14240) = result;
  *(v0 + 14064) = result;
  *(v0 + 14080) = result;
  *(v0 + 14096) = result;
  *(v0 + 14112) = result;
  *(v0 + 14128) = result;
  *(v0 + 14144) = result;
  *(v0 + 13968) = result;
  *(v0 + 13984) = result;
  *(v0 + 14000) = result;
  *(v0 + 14016) = result;
  *(v0 + 14032) = result;
  *(v0 + 14048) = result;
  *(v0 + 13872) = result;
  *(v0 + 13888) = result;
  *(v0 + 13904) = result;
  *(v0 + 13920) = result;
  *(v0 + 13936) = result;
  *(v0 + 13952) = result;
  *(v0 + 9152) = result;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = result;
  *(v0 + 13824) = result;
  *(v0 + 13840) = result;
  *(v0 + 13856) = result;
  *(v0 + 9168) = result;
  *(v0 + 9184) = result;
  *(v0 + 9200) = result;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 9216) = result;
  *(v0 + 9232) = result;
  *(v0 + 13632) = result;
  *(v0 + 13648) = result;
  *(v0 + 13664) = result;
  *(v0 + 13680) = result;
  *(v0 + 9248) = result;
  *(v0 + 9264) = result;
  *(v0 + 13552) = result;
  *(v0 + 13568) = result;
  *(v0 + 13584) = result;
  *(v0 + 13616) = result;
  *(v0 + 9280) = result;
  *(v0 + 9296) = result;
  *(v0 + 9312) = result;
  *(v0 + 9328) = result;
  *(v0 + 9344) = result;
  *(v0 + 9360) = result;
  *(v0 + 9376) = result;
  *(v0 + 9392) = result;
  *(v0 + 13336) = 0x3FF0000000000000;
  *(v0 + 13416) = 1;
  *(v0 + 13417) = *v20;
  *(v0 + 13420) = *&v20[3];
  *(v0 + 13448) = 1060320051;
  *(v0 + 13344) = result;
  *(v0 + 13360) = result;
  *(v0 + 13376) = result;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 9408) = result;
  *(v0 + 9424) = result;
  *(v0 + 9440) = result;
  *(v0 + 9456) = result;
  *(v0 + 13296) = result;
  *(v0 + 13312) = result;
  *(v0 + 9472) = result;
  *(v0 + 13152) = result;
  *(v0 + 13168) = result;
  *(v0 + 13184) = result;
  *(v0 + 13200) = result;
  *(v0 + 13216) = result;
  *(v0 + 13056) = result;
  *(v0 + 13072) = result;
  *(v0 + 13088) = result;
  *(v0 + 13104) = result;
  *(v0 + 13120) = result;
  *(v0 + 13136) = result;
  *(v0 + 12960) = result;
  *(v0 + 12976) = result;
  *(v0 + 12992) = result;
  *(v0 + 13008) = result;
  *(v0 + 13024) = result;
  *(v0 + 13040) = result;
  *(v0 + 12864) = result;
  *(v0 + 12880) = result;
  *(v0 + 12896) = result;
  *(v0 + 12912) = result;
  *(v0 + 12928) = result;
  *(v0 + 12944) = result;
  *(v0 + 12768) = result;
  *(v0 + 12784) = result;
  *(v0 + 12800) = result;
  *(v0 + 12816) = result;
  *(v0 + 12832) = result;
  *(v0 + 12848) = result;
  *(v0 + 12672) = result;
  *(v0 + 12688) = result;
  *(v0 + 12704) = result;
  *(v0 + 12720) = result;
  *(v0 + 12736) = result;
  *(v0 + 12752) = result;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = result;
  *(v0 + 12608) = result;
  *(v0 + 12624) = result;
  *(v0 + 12640) = result;
  *(v0 + 12656) = result;
  *(v0 + 9488) = result;
  *(v0 + 9504) = result;
  *(v0 + 9520) = result;
  *(v0 + 12512) = result;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 9536) = result;
  *(v0 + 9552) = result;
  *(v0 + 12416) = result;
  *(v0 + 12432) = result;
  *(v0 + 12448) = result;
  *(v0 + 12496) = result;
  *(v0 + 9568) = result;
  *(v0 + 12320) = result;
  *(v0 + 12336) = result;
  *(v0 + 12352) = result;
  *(v0 + 12368) = result;
  *(v0 + 12400) = result;
  *(v0 + 9648) = result;
  *(v0 + 9664) = result;
  *(v0 + 9688) = 0x3FF0000000000000;
  *(v0 + 9696) = result;
  *(v0 + 12288) = result;
  *(v0 + 12304) = result;
  *(v0 + 9712) = result;
  *(v0 + 12201) = *v19;
  *(v0 + 12232) = 1061158912;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 12204) = *&v19[3];
  *(v0 + 9728) = result;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 12120) = 0x3FF0000000000000;
  *(v0 + 12128) = result;
  *(v0 + 12144) = result;
  *(v0 + 12160) = result;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 9768) = 0;
  *(v0 + 12096) = result;
  *(v0 + 9769) = *v17;
  *(v0 + 9772) = *&v17[3];
  *(v0 + 12000) = result;
  *(v0 + 12080) = result;
  *(v0 + 11904) = result;
  *(v0 + 11920) = result;
  *(v0 + 11936) = result;
  *(v0 + 11952) = result;
  *(v0 + 11968) = result;
  *(v0 + 11984) = result;
  *(v0 + 11808) = result;
  *(v0 + 11824) = result;
  *(v0 + 11840) = result;
  *(v0 + 11856) = result;
  *(v0 + 11872) = result;
  *(v0 + 11888) = result;
  *(v0 + 11712) = result;
  *(v0 + 11728) = result;
  *(v0 + 11744) = result;
  *(v0 + 11760) = result;
  *(v0 + 11776) = result;
  *(v0 + 11792) = result;
  *(v0 + 11616) = result;
  *(v0 + 11632) = result;
  *(v0 + 11648) = result;
  *(v0 + 11664) = result;
  *(v0 + 11680) = result;
  *(v0 + 11696) = result;
  *(v0 + 11520) = result;
  *(v0 + 11536) = result;
  *(v0 + 11552) = result;
  *(v0 + 11568) = result;
  *(v0 + 11584) = result;
  *(v0 + 11600) = result;
  *(v0 + 11424) = result;
  *(v0 + 11440) = result;
  *(v0 + 11456) = result;
  *(v0 + 11472) = result;
  *(v0 + 11488) = result;
  *(v0 + 11504) = result;
  *(v0 + 9800) = 1061997773;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 11376) = result;
  *(v0 + 11392) = result;
  *(v0 + 11408) = result;
  *(v0 + 9904) = result;
  *(v0 + 9920) = result;
  *(v0 + 9936) = result;
  *(v0 + 9968) = result;
  *(v0 + 11296) = result;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 9984) = result;
  *(v0 + 10000) = result;
  *(v0 + 11184) = result;
  *(v0 + 11200) = result;
  *(v0 + 11216) = result;
  *(v0 + 11232) = result;
  *(v0 + 10016) = result;
  *(v0 + 10080) = result;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 11120) = result;
  *(v0 + 11136) = result;
  *(v0 + 11152) = result;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = result;
  *(v0 + 10176) = result;
  *(v0 + 10192) = result;
  *(v0 + 10985) = *v18;
  *(v0 + 10988) = *&v18[3];
  *(v0 + 11016) = 1061997773;
  *(v0 + 10912) = result;
  *(v0 + 10928) = result;
  *(v0 + 10944) = result;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10208) = result;
  *(v0 + 10224) = result;
  *(v0 + 10240) = result;
  *(v0 + 10864) = result;
  *(v0 + 10880) = result;
  *(v0 + 10904) = 0x3FF0000000000000;
  *(v0 + 10256) = result;
  *(v0 + 10272) = result;
  *(v0 + 10736) = result;
  *(v0 + 10752) = result;
  *(v0 + 10768) = result;
  *(v0 + 10784) = result;
  *(v0 + 10640) = result;
  *(v0 + 10656) = result;
  *(v0 + 10672) = result;
  *(v0 + 10688) = result;
  *(v0 + 10704) = result;
  *(v0 + 10720) = result;
  *(v0 + 10544) = result;
  *(v0 + 10560) = result;
  *(v0 + 10576) = result;
  *(v0 + 10592) = result;
  *(v0 + 10608) = result;
  *(v0 + 10624) = result;
  *(v0 + 10448) = result;
  *(v0 + 10464) = result;
  *(v0 + 10480) = result;
  *(v0 + 10496) = result;
  *(v0 + 10512) = result;
  *(v0 + 10528) = result;
  *(v0 + 10352) = result;
  *(v0 + 10368) = result;
  *(v0 + 10384) = result;
  *(v0 + 10400) = result;
  *(v0 + 10416) = result;
  *(v0 + 10432) = result;
  *(v0 + 10288) = result;
  *(v0 + 10304) = result;
  *(v0 + 10320) = result;
  *(v0 + 10336) = result;
  *(v0 + 18160) = result;
  *(v0 + 18176) = result;
  *(v0 + 18208) = result;
  *(v0 + 18224) = result;
  *(v0 + 18240) = result;
  *(v0 + 18336) = result;
  *(v0 + 18400) = result;
  *(v0 + 18480) = result;
  *(v0 + 18496) = result;
  *(v0 + 18640) = result;
  *(v0 + 18672) = result;
  *(v0 + 18688) = result;
  *(v0 + 18704) = result;
  *(v0 + 18720) = result;
  *(v0 + 18736) = result;
  *(v0 + 18752) = result;
  *(v0 + 18768) = result;
  *(v0 + 18784) = result;
  *(v0 + 18800) = result;
  *(v0 + 18816) = result;
  *(v0 + 18832) = result;
  *(v0 + 18848) = result;
  *(v0 + 18864) = result;
  *(v0 + 18880) = result;
  *(v0 + 18896) = result;
  *(v0 + 18912) = result;
  *(v0 + 18928) = result;
  *(v0 + 18944) = result;
  *(v0 + 18960) = result;
  *(v0 + 18976) = result;
  *(v0 + 18992) = result;
  *(v0 + 19008) = result;
  *(v0 + 19024) = result;
  *(v0 + 19040) = result;
  *(v0 + 19056) = result;
  *(v0 + 19072) = result;
  *(v0 + 19088) = result;
  *(v0 + 19104) = result;
  *(v0 + 19120) = result;
  *(v0 + 19136) = result;
  *(v0 + 19152) = result;
  *(v0 + 19168) = result;
  *(v0 + 19184) = result;
  *(v0 + 19200) = result;
  *(v0 + 19216) = result;
  *(v0 + 19232) = result;
  *(v0 + 19248) = result;
  *(v0 + 19264) = result;
  *(v0 + 19280) = result;
  *(v0 + 19296) = result;
  *(v0 + 19376) = result;
  *(v0 + 19392) = result;
  *(v0 + 19424) = result;
  *(v0 + 19440) = result;
  *(v0 + 19456) = result;
  *(v0 + 19696) = result;
  *(v0 + 19712) = result;
  *(v0 + 19728) = result;
  *(v0 + 19744) = result;
  *(v0 + 19760) = result;
  *(v0 + 19808) = result;
  *(v0 + 19856) = result;
  *(v0 + 19888) = result;
  *(v0 + 19904) = result;
  *(v0 + 19920) = result;
  *(v0 + 19936) = result;
  *(v0 + 19952) = result;
  *(v0 + 19968) = result;
  *(v0 + 19984) = result;
  *(v0 + 20000) = result;
  *(v0 + 20016) = result;
  *(v0 + 20032) = result;
  *(v0 + 20048) = result;
  *(v0 + 20064) = result;
  *(v0 + 20080) = result;
  *(v0 + 20096) = result;
  *(v0 + 20112) = result;
  *(v0 + 20128) = result;
  *(v0 + 20144) = result;
  *(v0 + 20160) = result;
  *(v0 + 20176) = result;
  *(v0 + 20192) = result;
  *(v0 + 20208) = result;
  *(v0 + 20224) = result;
  *(v0 + 20240) = result;
  *(v0 + 20256) = result;
  *(v0 + 20272) = result;
  *(v0 + 20288) = result;
  *(v0 + 20304) = result;
  *(v0 + 20320) = result;
  *(v0 + 20336) = result;
  *(v0 + 20352) = result;
  *(v0 + 20368) = result;
  *(v0 + 20384) = result;
  *(v0 + 20400) = result;
  *(v0 + 20416) = result;
  *(v0 + 20432) = result;
  *(v0 + 20448) = result;
  *(v0 + 20464) = result;
  *(v0 + 20480) = result;
  *(v0 + 20496) = result;
  *(v0 + 20512) = result;
  *(v0 + 20592) = result;
  *(v0 + 20608) = result;
  *(v0 + 20640) = result;
  *(v0 + 20656) = result;
  *(v0 + 20672) = result;
  *(v0 + 20912) = result;
  *(v0 + 20928) = result;
  *(v0 + 20944) = result;
  *(v0 + 20960) = result;
  *(v0 + 20976) = result;
  *(v0 + 21024) = result;
  *(v0 + 21072) = result;
  *(v0 + 21104) = result;
  *(v0 + 21120) = result;
  *(v0 + 21136) = result;
  *(v0 + 21152) = result;
  *(v0 + 21168) = result;
  *(v0 + 21184) = result;
  *(v0 + 21200) = result;
  *(v0 + 21216) = result;
  *(v0 + 21232) = result;
  *(v0 + 21248) = result;
  *(v0 + 21264) = result;
  *(v0 + 21280) = result;
  *(v0 + 21296) = result;
  *(v0 + 21312) = result;
  *(v0 + 21328) = result;
  *(v0 + 21344) = result;
  *(v0 + 21360) = result;
  *(v0 + 21376) = result;
  *(v0 + 21392) = result;
  *(v0 + 21408) = result;
  *(v0 + 21424) = result;
  *(v0 + 21440) = result;
  *(v0 + 21456) = result;
  *(v0 + 21472) = result;
  *(v0 + 21488) = result;
  *(v0 + 21504) = result;
  *(v0 + 21520) = result;
  *(v0 + 21536) = result;
  *(v0 + 21552) = result;
  *(v0 + 21568) = result;
  *(v0 + 21584) = result;
  *(v0 + 21600) = result;
  *(v0 + 21616) = result;
  *(v0 + 21632) = result;
  *(v0 + 21648) = result;
  *(v0 + 21664) = result;
  *(v0 + 21680) = result;
  *(v0 + 21696) = result;
  *(v0 + 21712) = result;
  *(v0 + 21728) = result;
  *(v0 + 21808) = result;
  *(v0 + 21824) = result;
  *(v0 + 21856) = result;
  *(v0 + 21872) = result;
  *(v0 + 21888) = result;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FF0000000000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v24;
  *(v0 + 18284) = *&v24[3];
  *(v0 + 18312) = 1036831948;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FF0000000000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v25;
  *(v0 + 19500) = *&v25[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FF0000000000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v26;
  *(v0 + 20716) = *&v26[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FF0000000000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

double sub_1BCCFD788()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07858);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1BCE3C820;
  *(v0 + 32) = 0xC056800000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = xmmword_1BCE45BD0;
  *(v0 + 64) = 0x432A000043160000;
  *(v0 + 72) = 1040242952;
  *(v0 + 80) = xmmword_1BCE3DCE0;
  *(v0 + 96) = xmmword_1BCE3C850;
  *(v0 + 112) = xmmword_1BCE3C860;
  *(v0 + 128) = xmmword_1BCE3C870;
  *(v0 + 144) = xmmword_1BCE3C880;
  *(v0 + 160) = xmmword_1BCE3C890;
  *(v0 + 176) = xmmword_1BCE3C8A0;
  *(v0 + 192) = xmmword_1BCE3C8B0;
  __asm { FMOV            V29.2D, #0.5 }

  *(v0 + 208) = _Q29;
  *(v0 + 224) = xmmword_1BCE3D910;
  __asm { FMOV            V0.2D, #1.0 }

  *(v0 + 240) = _Q0;
  *(v0 + 256) = _Q0;
  *(v0 + 272) = _Q0;
  *(v0 + 288) = _Q0;
  *(v0 + 304) = _Q0;
  *(v0 + 320) = xmmword_1BCE3C8C0;
  *(v0 + 336) = xmmword_1BCE3C8F0;
  *(v0 + 352) = _Q0;
  *(v0 + 368) = xmmword_1BCE3C900;
  *(v0 + 384) = 0x3F3333333F800000;
  *(v0 + 392) = 0x3FF0000000000000;
  *(v0 + 400) = _Q0;
  *(v0 + 416) = 0;
  *(v0 + 424) = 1065353216;
  *(v0 + 432) = _Q0;
  *(v0 + 448) = _Q0;
  *(v0 + 464) = _Q0;
  *(v0 + 480) = _Q0;
  *(v0 + 496) = _Q0;
  *(v0 + 512) = _Q0;
  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  *(v0 + 560) = _Q0;
  *(v0 + 576) = _Q0;
  *(v0 + 592) = _Q0;
  *(v0 + 608) = _Q0;
  *(v0 + 624) = _Q0;
  *(v0 + 640) = _Q0;
  *(v0 + 656) = _Q0;
  *(v0 + 672) = _Q0;
  *(v0 + 688) = _Q0;
  *(v0 + 704) = _Q0;
  *(v0 + 720) = _Q0;
  *(v0 + 736) = _Q0;
  *(v0 + 752) = _Q0;
  *(v0 + 768) = _Q0;
  *(v0 + 784) = _Q0;
  *(v0 + 800) = _Q0;
  *(v0 + 816) = _Q0;
  *(v0 + 832) = _Q0;
  *(v0 + 848) = _Q0;
  *(v0 + 864) = _Q0;
  *(v0 + 880) = _Q0;
  *(v0 + 896) = _Q0;
  *(v0 + 912) = _Q0;
  *(v0 + 928) = _Q0;
  *(v0 + 944) = _Q0;
  *(v0 + 960) = _Q0;
  *(v0 + 976) = _Q0;
  *(v0 + 992) = _Q0;
  *(v0 + 1008) = _Q0;
  *(v0 + 1024) = _Q0;
  *(v0 + 1040) = _Q0;
  *(v0 + 1056) = _Q0;
  v7 = vdupq_n_s64(0x3FCF82F740000000uLL);
  *(v0 + 1072) = v7;
  *(v0 + 1088) = xmmword_1BCE3C910;
  *(v0 + 1104) = xmmword_1BCE3C920;
  *(v0 + 1120) = xmmword_1BCE3C930;
  *(v0 + 1136) = xmmword_1BCE3D350;
  *(v0 + 1152) = _Q0;
  *(v0 + 1168) = 0x4100000042FA0000;
  *(v0 + 1176) = 0x3FEB89F080000000;
  *(v0 + 1184) = xmmword_1BCE3D360;
  *(v0 + 1200) = _Q0;
  *(v0 + 1216) = xmmword_1BCE3D370;
  *(v0 + 1232) = 0x3FF0000000000000;
  *(v0 + 1248) = 0xC04E000000000000;
  *(v0 + 1256) = 0;
  *(v0 + 1257) = *v11;
  *(v0 + 1260) = *&v11[3];
  *(v0 + 1264) = xmmword_1BCE45BD0;
  *(v0 + 1280) = 0x432A000043160000;
  *(v0 + 1288) = 1040242952;
  *(v0 + 1296) = xmmword_1BCE3DCE0;
  *(v0 + 1312) = xmmword_1BCE3C850;
  *(v0 + 1328) = xmmword_1BCE3C860;
  *(v0 + 1344) = xmmword_1BCE3C870;
  *(v0 + 1360) = xmmword_1BCE3C880;
  *(v0 + 1376) = xmmword_1BCE3C890;
  *(v0 + 1392) = xmmword_1BCE3C8A0;
  *(v0 + 1408) = xmmword_1BCE3C8B0;
  *(v0 + 1424) = _Q29;
  *(v0 + 1440) = xmmword_1BCE3D910;
  *(v0 + 1456) = _Q0;
  *(v0 + 1472) = _Q0;
  *(v0 + 1488) = _Q0;
  *(v0 + 1504) = _Q0;
  *(v0 + 1520) = _Q0;
  *(v0 + 1536) = xmmword_1BCE3C8C0;
  *(v0 + 1552) = xmmword_1BCE3C8F0;
  *(v0 + 1568) = _Q0;
  *(v0 + 1584) = xmmword_1BCE3C900;
  *(v0 + 1600) = 0x3F3333333F800000;
  *(v0 + 1608) = 0x3FF0000000000000;
  *(v0 + 1616) = _Q0;
  *(v0 + 1632) = 0;
  *(v0 + 1640) = 1065353216;
  *(v0 + 1648) = _Q0;
  *(v0 + 1664) = _Q0;
  *(v0 + 1680) = _Q0;
  *(v0 + 1696) = _Q0;
  *(v0 + 1712) = _Q0;
  *(v0 + 1728) = _Q0;
  *(v0 + 1744) = _Q0;
  *(v0 + 1760) = _Q0;
  *(v0 + 1776) = _Q0;
  *(v0 + 1792) = _Q0;
  *(v0 + 1808) = _Q0;
  *(v0 + 1824) = _Q0;
  *(v0 + 1840) = _Q0;
  *(v0 + 1856) = _Q0;
  *(v0 + 1872) = _Q0;
  *(v0 + 1888) = _Q0;
  *(v0 + 1904) = _Q0;
  *(v0 + 1920) = _Q0;
  *(v0 + 1936) = _Q0;
  *(v0 + 1952) = _Q0;
  *(v0 + 1968) = _Q0;
  *(v0 + 1984) = _Q0;
  *(v0 + 2000) = _Q0;
  *(v0 + 2016) = _Q0;
  *(v0 + 2032) = _Q0;
  *(v0 + 2048) = _Q0;
  *(v0 + 2064) = _Q0;
  *(v0 + 2400) = xmmword_1BCE3D380;
  *(v0 + 2432) = xmmword_1BCE3D390;
  *(v0 + 2496) = 0x4396000042C80000;
  *(v0 + 2608) = xmmword_1BCE3C9B0;
  *(v0 + 2704) = xmmword_1BCE3D3C0;
  *(v0 + 2720) = xmmword_1BCE3D3D0;
  *(v0 + 2736) = xmmword_1BCE3C9E0;
  *(v0 + 3504) = vdupq_n_s64(0x3FCF992720000000uLL);
  *(v0 + 3520) = xmmword_1BCE3CA20;
  *(v0 + 3536) = xmmword_1BCE3CA30;
  *(v0 + 3552) = xmmword_1BCE3CA40;
  *(v0 + 3568) = xmmword_1BCE3D3E0;
  *(v0 + 3600) = 0x4100000042B40000;
  *(v0 + 3608) = 0x3FE9EB8500000000;
  *(v0 + 3648) = xmmword_1BCE3D400;
  *(v0 + 3680) = 0xC018000000000000;
  *(v0 + 3688) = 0;
  *(v0 + 3689) = *v13;
  *(v0 + 3692) = *&v13[3];
  *(v0 + 3696) = xmmword_1BCE3CA50;
  *(v0 + 3712) = 0x447A000044480000;
  *(v0 + 3720) = 1061997773;
  *(v0 + 3728) = xmmword_1BCE3CA60;
  *(v0 + 3744) = _Q0;
  *(v0 + 3760) = xmmword_1BCE3CA70;
  *(v0 + 3776) = xmmword_1BCE3CA80;
  *(v0 + 3792) = xmmword_1BCE3CA90;
  *(v0 + 3808) = xmmword_1BCE3CAA0;
  *(v0 + 3824) = xmmword_1BCE3CAB0;
  *(v0 + 3840) = xmmword_1BCE3CAC0;
  *(v0 + 3856) = vdupq_n_s64(0x3FE88B6D00000000uLL);
  *(v0 + 3872) = xmmword_1BCE3D960;
  *(v0 + 3888) = _Q0;
  *(v0 + 3904) = _Q0;
  *(v0 + 3920) = _Q0;
  *(v0 + 3936) = _Q0;
  *(v0 + 3952) = _Q0;
  *(v0 + 3968) = xmmword_1BCE3C8C0;
  *(v0 + 3984) = xmmword_1BCE3CAD0;
  *(v0 + 4000) = xmmword_1BCE3CA00;
  *(v0 + 4016) = xmmword_1BCE3CAE0;
  *(v0 + 4032) = 1062836634;
  *(v0 + 4040) = 0x3FEFBFBFC0000000;
  *(v0 + 4048) = xmmword_1BCE3CAF0;
  *(v0 + 4064) = 0;
  *(v0 + 4072) = 0;
  *(v0 + 4080) = _Q0;
  *(v0 + 4096) = _Q0;
  *(v0 + 4112) = _Q0;
  *(v0 + 4128) = _Q0;
  *(v0 + 4144) = _Q0;
  *(v0 + 4160) = _Q0;
  *(v0 + 4176) = _Q0;
  *(v0 + 4192) = _Q0;
  *(v0 + 4208) = _Q0;
  *(v0 + 4224) = _Q0;
  *(v0 + 4240) = _Q0;
  *(v0 + 4256) = _Q0;
  *(v0 + 4272) = _Q0;
  *(v0 + 4288) = _Q0;
  *(v0 + 4304) = _Q0;
  *(v0 + 4320) = _Q0;
  *(v0 + 4336) = _Q0;
  *(v0 + 4352) = _Q0;
  *(v0 + 4368) = _Q0;
  *(v0 + 4384) = _Q0;
  *(v0 + 4400) = _Q0;
  *(v0 + 4416) = _Q0;
  *(v0 + 4432) = _Q0;
  *(v0 + 4448) = _Q0;
  *(v0 + 4464) = _Q0;
  *(v0 + 4480) = _Q0;
  *(v0 + 4496) = _Q0;
  *(v0 + 4512) = _Q0;
  *(v0 + 4528) = _Q0;
  *(v0 + 4544) = _Q0;
  *(v0 + 4560) = _Q0;
  *(v0 + 4576) = _Q0;
  *(v0 + 4592) = _Q0;
  *(v0 + 4608) = _Q0;
  *(v0 + 4624) = _Q0;
  *(v0 + 4640) = _Q0;
  *(v0 + 4656) = _Q0;
  *(v0 + 4672) = _Q0;
  *(v0 + 4688) = _Q0;
  *(v0 + 4704) = _Q0;
  *(v0 + 4720) = xmmword_1BCE3CB00;
  *(v0 + 4736) = xmmword_1BCE3CB10;
  *(v0 + 4752) = xmmword_1BCE3CB20;
  *(v0 + 4768) = xmmword_1BCE3CB10;
  *(v0 + 4784) = xmmword_1BCE3D410;
  *(v0 + 4800) = _Q0;
  *(v0 + 4816) = 0x4100000041F00000;
  *(v0 + 4824) = 0x3FE8000000000000;
  *(v0 + 4832) = xmmword_1BCE3E5A0;
  *(v0 + 4848) = xmmword_1BCE3D430;
  *(v0 + 4864) = xmmword_1BCE3D440;
  *(v0 + 4880) = 0x3FF0000000000000;
  *(v0 + 4896) = 0;
  *(v0 + 4904) = 0;
  *(v0 + 4928) = 0x44C8000044160000;
  *(v0 + 4944) = xmmword_1BCE3CB40;
  *(v0 + 4960) = xmmword_1BCE3CB50;
  *(v0 + 4976) = xmmword_1BCE3CB60;
  *(v0 + 4992) = xmmword_1BCE3CB70;
  *(v0 + 5008) = xmmword_1BCE3CB80;
  *(v0 + 5024) = xmmword_1BCE3CB90;
  *(v0 + 5168) = xmmword_1BCE3CBD0;
  *(v0 + 5184) = xmmword_1BCE3CBE0;
  *(v0 + 5232) = xmmword_1BCE3CC00;
  *(v0 + 5936) = xmmword_1BCE3CC10;
  *(v0 + 5968) = xmmword_1BCE3CC30;
  *(v0 + 5952) = xmmword_1BCE3CC20;
  *(v0 + 5984) = xmmword_1BCE3CC20;
  *(v0 + 5056) = xmmword_1BCE3CBA0;
  *(v0 + 4905) = *v14;
  *(v0 + 4908) = *&v14[3];
  *(v0 + 5040) = _Q0;
  *(v0 + 6000) = xmmword_1BCE3D410;
  *(v0 + 6032) = 0x4170000041A00000;
  *(v0 + 4912) = xmmword_1BCE3CB30;
  *(v0 + 4936) = 1061997773;
  *(v0 + 6048) = xmmword_1BCE3E5A0;
  *(v0 + 6080) = xmmword_1BCE3D460;
  *(v0 + 6128) = xmmword_1BCE3CC40;
  *(v0 + 6144) = 0x44480000443B8000;
  *(v0 + 6160) = xmmword_1BCE3CC50;
  *(v0 + 6176) = xmmword_1BCE3CC60;
  *(v0 + 6192) = xmmword_1BCE3CC70;
  *(v0 + 6208) = xmmword_1BCE3CC80;
  *(v0 + 6224) = xmmword_1BCE3CC90;
  *(v0 + 6240) = xmmword_1BCE3CCA0;
  *(v0 + 6416) = xmmword_1BCE3CCD0;
  *(v0 + 6432) = xmmword_1BCE3CCE0;
  *(v0 + 6448) = xmmword_1BCE3CCF0;
  *(v0 + 6480) = xmmword_1BCE3CD00;
  *(v0 + 7152) = xmmword_1BCE3CD10;
  *(v0 + 7184) = xmmword_1BCE3CD30;
  *(v0 + 7168) = xmmword_1BCE3CD20;
  *(v0 + 7200) = xmmword_1BCE3CD20;
  *(v0 + 7264) = xmmword_1BCE3E5B0;
  *(v0 + 7280) = xmmword_1BCE3D480;
  *(v0 + 7296) = xmmword_1BCE3D490;
  *(v0 + 7344) = xmmword_1BCE3CD40;
  *(v0 + 7408) = xmmword_1BCE3CD60;
  *(v0 + 7552) = _Q0;
  *(v0 + 7632) = xmmword_1BCE3CD90;
  *(v0 + 7648) = xmmword_1BCE3CDA0;
  *(v0 + 7664) = xmmword_1BCE3CDB0;
  *(v0 + 7696) = xmmword_1BCE3CDC0;
  *(v0 + 8368) = xmmword_1BCE3CDD0;
  *(v0 + 8400) = xmmword_1BCE3CDE0;
  *(v0 + 8480) = xmmword_1BCE3D4A0;
  *(v0 + 8512) = xmmword_1BCE3D4C0;
  *(v0 + 8560) = xmmword_1BCE3CDF0;
  *(v0 + 9696) = xmmword_1BCE3D4D0;
  *(v0 + 9728) = xmmword_1BCE3D4F0;
  *(v0 + 8624) = xmmword_1BCE58FD0;
  *(v0 + 9840) = xmmword_1BCE58FD0;
  *(v0 + 7424) = xmmword_1BCE3C9D0;
  *(v0 + 8640) = xmmword_1BCE3C9D0;
  *(v0 + 9856) = xmmword_1BCE3C9D0;
  *(v0 + 10944) = xmmword_1BCE3D500;
  *(v0 + 9776) = xmmword_1BCE3CE40;
  *(v0 + 10992) = xmmword_1BCE3CE40;
  *(v0 + 9792) = 1148846080;
  *(v0 + 11008) = 1148846080;
  *(v0 + 11056) = xmmword_1BCE3CE50;
  *(v0 + 11072) = xmmword_1BCE3CE60;
  *(v0 + 9872) = xmmword_1BCE3CE70;
  *(v0 + 11088) = xmmword_1BCE3CE70;
  *(v0 + 9888) = xmmword_1BCE3CE80;
  *(v0 + 11104) = xmmword_1BCE3CE80;
  v8 = vdupq_n_s32(0x3F666666u);
  *(v0 + 8880) = v8;
  *(v0 + 10096) = v8;
  *(v0 + 11312) = v8;
  *(v0 + 10816) = xmmword_1BCE447D0;
  *(v0 + 12032) = xmmword_1BCE447D0;
  *(v0 + 10800) = xmmword_1BCE447C0;
  *(v0 + 10832) = xmmword_1BCE447C0;
  *(v0 + 12016) = xmmword_1BCE447C0;
  *(v0 + 12048) = xmmword_1BCE447C0;
  *(v0 + 10848) = xmmword_1BCE447E0;
  *(v0 + 12064) = xmmword_1BCE447E0;
  *(v0 + 12160) = xmmword_1BCE3D510;
  *(v0 + 12208) = xmmword_1BCE3CEC0;
  *(v0 + 8576) = 0x41A00000447A0000;
  *(v0 + 12224) = 0x41A00000447A0000;
  v9 = vdupq_n_s64(0x3FECBCBCC0000000uLL);
  *(v0 + 7376) = v9;
  *(v0 + 8592) = v9;
  *(v0 + 9808) = v9;
  *(v0 + 11024) = v9;
  *(v0 + 12240) = v9;
  *(v0 + 7392) = xmmword_1BCE3CD50;
  *(v0 + 8608) = xmmword_1BCE3CD50;
  *(v0 + 9824) = xmmword_1BCE3CD50;
  *(v0 + 11040) = xmmword_1BCE3CD50;
  *(v0 + 12256) = xmmword_1BCE3CD50;
  *(v0 + 12272) = xmmword_1BCE3CED0;
  *(v0 + 12528) = xmmword_1BCE3CEF0;
  *(v0 + 8912) = xmmword_1BCE3CE10;
  *(v0 + 10128) = xmmword_1BCE3CE10;
  *(v0 + 11344) = xmmword_1BCE3CE10;
  *(v0 + 12560) = xmmword_1BCE3CE10;
  *(v0 + 9600) = xmmword_1BCE447A0;
  *(v0 + 13248) = xmmword_1BCE447A0;
  *(v0 + 9584) = xmmword_1BCE44790;
  *(v0 + 9616) = xmmword_1BCE44790;
  *(v0 + 13232) = xmmword_1BCE44790;
  *(v0 + 13264) = xmmword_1BCE44790;
  *(v0 + 9632) = xmmword_1BCE447B0;
  *(v0 + 13280) = xmmword_1BCE447B0;
  *(v0 + 13376) = xmmword_1BCE3D520;
  *(v0 + 13424) = xmmword_1BCE3CF00;
  *(v0 + 7360) = 1147207680;
  *(v0 + 13440) = 1147207680;
  *(v0 + 13456) = vdupq_n_s64(0x3FEC9CDC00000000uLL);
  *(v0 + 13472) = xmmword_1BCE3CF10;
  *(v0 + 13488) = xmmword_1BCE3CF20;
  *(v0 + 13504) = xmmword_1BCE3CF30;
  *(v0 + 13520) = xmmword_1BCE3CF40;
  *(v0 + 13536) = xmmword_1BCE3CF50;
  *(v0 + 6400) = xmmword_1BCE3CCC0;
  *(v0 + 7616) = xmmword_1BCE3CCC0;
  *(v0 + 8832) = xmmword_1BCE3CCC0;
  *(v0 + 10048) = xmmword_1BCE3CCC0;
  *(v0 + 12480) = xmmword_1BCE3CCC0;
  *(v0 + 13696) = xmmword_1BCE3CCC0;
  *(v0 + 13712) = xmmword_1BCE3CF60;
  *(v0 + 13744) = xmmword_1BCE3CF70;
  *(v0 + 13776) = xmmword_1BCE3CF80;
  *(v0 + 14448) = xmmword_1BCE3CEB0;
  *(v0 + 8384) = xmmword_1BCE3CBB0;
  *(v0 + 14464) = xmmword_1BCE3CBB0;
  *(v0 + 14480) = xmmword_1BCE3CF90;
  *(v0 + 14560) = xmmword_1BCE3E5C0;
  *(v0 + 14592) = xmmword_1BCE3D540;
  *(v0 + 14640) = xmmword_1BCE3CFA0;
  *(v0 + 14656) = 0x441EC000443B8000;
  *(v0 + 14672) = xmmword_1BCE3CFB0;
  *(v0 + 3616) = xmmword_1BCE3D610;
  *(v0 + 3632) = xmmword_1BCE3CBC0;
  *(v0 + 3664) = 0x3FF0000000000000;
  *(v0 + 2080) = _Q0;
  *(v0 + 2096) = _Q0;
  *(v0 + 2112) = _Q0;
  *(v0 + 2128) = _Q0;
  *(v0 + 2144) = _Q0;
  *(v0 + 3584) = _Q0;
  *(v0 + 3408) = _Q0;
  *(v0 + 3424) = _Q0;
  *(v0 + 3440) = _Q0;
  *(v0 + 3456) = _Q0;
  *(v0 + 3472) = _Q0;
  *(v0 + 3488) = _Q0;
  *(v0 + 3312) = _Q0;
  *(v0 + 3328) = _Q0;
  *(v0 + 3344) = _Q0;
  *(v0 + 3360) = _Q0;
  *(v0 + 3376) = _Q0;
  *(v0 + 3392) = _Q0;
  *(v0 + 3216) = _Q0;
  *(v0 + 3232) = _Q0;
  *(v0 + 3248) = _Q0;
  *(v0 + 3264) = _Q0;
  *(v0 + 3280) = _Q0;
  *(v0 + 3296) = _Q0;
  *(v0 + 3120) = _Q0;
  *(v0 + 3136) = _Q0;
  *(v0 + 3152) = _Q0;
  *(v0 + 3168) = _Q0;
  *(v0 + 3184) = _Q0;
  *(v0 + 3200) = _Q0;
  *(v0 + 3040) = _Q0;
  *(v0 + 3056) = _Q0;
  *(v0 + 3072) = _Q0;
  *(v0 + 3088) = _Q0;
  *(v0 + 3104) = _Q0;
  *(v0 + 2960) = _Q0;
  *(v0 + 2976) = _Q0;
  *(v0 + 2992) = _Q0;
  *(v0 + 3008) = _Q0;
  *(v0 + 3024) = _Q0;
  *(v0 + 2768) = xmmword_1BCE3C9F0;
  *(v0 + 2880) = _Q0;
  *(v0 + 2896) = _Q0;
  *(v0 + 2912) = _Q0;
  *(v0 + 2928) = _Q0;
  *(v0 + 2944) = _Q0;
  *(v0 + 2784) = xmmword_1BCE3CA00;
  *(v0 + 2848) = 0;
  *(v0 + 2856) = 1065353216;
  *(v0 + 2864) = _Q0;
  *(v0 + 2800) = xmmword_1BCE3CA10;
  *(v0 + 2816) = 0x3F3333333F4CCCCDLL;
  *(v0 + 2824) = 0x3FF0000000000000;
  *(v0 + 2832) = _Q0;
  *(v0 + 2160) = _Q0;
  *(v0 + 2176) = _Q0;
  *(v0 + 2192) = _Q0;
  *(v0 + 2208) = _Q0;
  *(v0 + 2224) = _Q0;
  *(v0 + 2752) = xmmword_1BCE3C8C0;
  *(v0 + 2640) = _Q29;
  *(v0 + 2656) = xmmword_1BCE3DCB0;
  *(v0 + 2672) = _Q0;
  *(v0 + 2688) = _Q0;
  *(v0 + 2240) = _Q0;
  *(v0 + 2473) = *v12;
  *(v0 + 2624) = xmmword_1BCE3C8C0;
  *(v0 + 2476) = *&v12[3];
  *(v0 + 2528) = _Q0;
  *(v0 + 2576) = xmmword_1BCE3C9A0;
  *(v0 + 2592) = _Q0;
  *(v0 + 2544) = xmmword_1BCE3C980;
  *(v0 + 2560) = xmmword_1BCE3C990;
  *(v0 + 2480) = xmmword_1BCE45BD0;
  *(v0 + 2504) = 1036831949;
  *(v0 + 2512) = xmmword_1BCE3C970;
  *(v0 + 2256) = _Q0;
  *(v0 + 2416) = _Q0;
  *(v0 + 2448) = 0x3FF0000000000000;
  *(v0 + 2464) = 0xC028000000000000;
  *(v0 + 2472) = 0;
  *(v0 + 2336) = xmmword_1BCE3C930;
  *(v0 + 2352) = xmmword_1BCE3D350;
  *(v0 + 2368) = _Q0;
  *(v0 + 2384) = 0x4100000042FA0000;
  *(v0 + 2392) = 0x3FEBA9FBE0000000;
  *(v0 + 2272) = _Q0;
  *(v0 + 2288) = v7;
  *(v0 + 2304) = xmmword_1BCE3C910;
  *(v0 + 2320) = xmmword_1BCE3C920;
  *(v0 + 5072) = _Q0;
  *(v0 + 5088) = xmmword_1BCE3DA70;
  *(v0 + 5104) = _Q0;
  *(v0 + 5120) = _Q0;
  *(v0 + 5136) = _Q0;
  *(v0 + 5152) = _Q0;
  *(v0 + 5200) = xmmword_1BCE3CBF0;
  *(v0 + 5216) = xmmword_1BCE3CA00;
  *(v0 + 5248) = 1063675494;
  *(v0 + 5256) = 0x3FF0000000000000;
  *(v0 + 5264) = _Q0;
  *(v0 + 5280) = 0;
  *(v0 + 5288) = 0;
  *(v0 + 5296) = _Q0;
  *(v0 + 5312) = _Q0;
  *(v0 + 5328) = _Q0;
  *(v0 + 5344) = _Q0;
  *(v0 + 5360) = _Q0;
  *(v0 + 5376) = _Q0;
  *(v0 + 5392) = _Q0;
  *(v0 + 5408) = _Q0;
  *(v0 + 5424) = _Q0;
  *(v0 + 5440) = _Q0;
  *(v0 + 5456) = _Q0;
  *(v0 + 5472) = _Q0;
  *(v0 + 5488) = _Q0;
  *(v0 + 5504) = _Q0;
  *(v0 + 5520) = _Q0;
  *(v0 + 5536) = _Q0;
  *(v0 + 5552) = _Q0;
  *(v0 + 5568) = _Q0;
  *(v0 + 5584) = _Q0;
  *(v0 + 5600) = _Q0;
  *(v0 + 5616) = _Q0;
  *(v0 + 5632) = _Q0;
  *(v0 + 5648) = _Q0;
  *(v0 + 5664) = _Q0;
  *(v0 + 5680) = _Q0;
  *(v0 + 5696) = _Q0;
  *(v0 + 5712) = _Q0;
  *(v0 + 5728) = _Q0;
  *(v0 + 5744) = _Q0;
  *(v0 + 5760) = _Q0;
  *(v0 + 5776) = _Q0;
  *(v0 + 5792) = _Q0;
  *(v0 + 5808) = _Q0;
  *(v0 + 5824) = _Q0;
  *(v0 + 5840) = _Q0;
  *(v0 + 5856) = _Q0;
  *(v0 + 5872) = _Q0;
  *(v0 + 5888) = _Q0;
  *(v0 + 5904) = _Q0;
  *(v0 + 5920) = _Q0;
  *(v0 + 6016) = _Q0;
  *(v0 + 6040) = 0x3FE6666680000000;
  *(v0 + 6064) = _Q0;
  *(v0 + 6096) = 0x3FF0000000000000;
  *(v0 + 6112) = 0x4017FFFFFFFFFFFALL;
  *(v0 + 6120) = 0;
  *(v0 + 6121) = *v15;
  *(v0 + 6124) = *&v15[3];
  *(v0 + 6152) = 1060739482;
  *(v0 + 6256) = _Q0;
  *(v0 + 6272) = _Q0;
  *(v0 + 6288) = _Q0;
  *(v0 + 6304) = xmmword_1BCE3DAE0;
  *(v0 + 6320) = _Q0;
  *(v0 + 6336) = _Q0;
  *(v0 + 6352) = _Q0;
  *(v0 + 6368) = _Q0;
  *(v0 + 6384) = xmmword_1BCE3CCB0;
  *(v0 + 6464) = 1063675494;
  *(v0 + 6472) = 0x3FEF857180000000;
  *(v0 + 6496) = 0x3FE0000000000000;
  *(v0 + 6504) = 0;
  *(v0 + 6512) = _Q0;
  *(v0 + 6528) = _Q0;
  *(v0 + 6544) = _Q0;
  *(v0 + 6560) = _Q0;
  *(v0 + 6576) = _Q0;
  *(v0 + 6592) = _Q0;
  *(v0 + 6608) = _Q0;
  *(v0 + 6624) = _Q0;
  *(v0 + 6640) = _Q0;
  *(v0 + 6656) = _Q0;
  *(v0 + 6672) = _Q0;
  *(v0 + 6688) = _Q0;
  *(v0 + 6704) = _Q0;
  *(v0 + 6720) = _Q0;
  *(v0 + 6736) = _Q0;
  *(v0 + 6752) = _Q0;
  *(v0 + 6768) = _Q0;
  *(v0 + 6784) = _Q0;
  *(v0 + 6800) = _Q0;
  *(v0 + 6816) = _Q0;
  *(v0 + 6832) = _Q0;
  *(v0 + 6848) = _Q0;
  *(v0 + 6864) = _Q0;
  *(v0 + 6880) = _Q0;
  *(v0 + 6896) = _Q0;
  *(v0 + 6912) = _Q0;
  *(v0 + 6928) = _Q0;
  *(v0 + 6944) = _Q0;
  *(v0 + 6960) = _Q0;
  *(v0 + 6976) = _Q0;
  *(v0 + 6992) = _Q0;
  *(v0 + 7008) = _Q0;
  *(v0 + 7024) = _Q0;
  *(v0 + 7040) = _Q0;
  *(v0 + 7056) = _Q0;
  *(v0 + 7072) = _Q0;
  *(v0 + 7088) = _Q0;
  *(v0 + 7104) = _Q0;
  *(v0 + 7120) = _Q0;
  *(v0 + 7136) = _Q0;
  *(v0 + 7216) = _Q0;
  *(v0 + 7232) = _Q0;
  *(v0 + 7248) = 0x4170000000000000;
  *(v0 + 7256) = 0x3FE206D360000000;
  *(v0 + 7312) = 0x3FF0000000000000;
  *(v0 + 7328) = 0x4027FFFFFFFFFFFALL;
  *(v0 + 7336) = 0;
  *(v0 + 7337) = *v16;
  *(v0 + 7340) = *&v16[3];
  *(v0 + 7368) = 1059481190;
  *(v0 + 7440) = _Q0;
  *(v0 + 7456) = _Q0;
  *(v0 + 7472) = _Q0;
  *(v0 + 7488) = _Q0;
  *(v0 + 7504) = _Q0;
  *(v0 + 7520) = xmmword_1BCE3DAE0;
  *(v0 + 7536) = _Q0;
  *(v0 + 14688) = xmmword_1BCE3CFC0;
  *(v0 + 14704) = xmmword_1BCE3CFD0;
  *(v0 + 14720) = xmmword_1BCE3CFE0;
  *(v0 + 14736) = xmmword_1BCE3CFF0;
  *(v0 + 14752) = xmmword_1BCE3D000;
  *(v0 + 8736) = xmmword_1BCE3DAE0;
  *(v0 + 12384) = xmmword_1BCE3DAE0;
  *(v0 + 13600) = xmmword_1BCE3DAE0;
  *(v0 + 14816) = xmmword_1BCE3DAE0;
  *(v0 + 14864) = xmmword_1BCE3D010;
  *(v0 + 14896) = xmmword_1BCE3D020;
  *(v0 + 14912) = xmmword_1BCE3D030;
  *(v0 + 14928) = xmmword_1BCE3D040;
  *(v0 + 14960) = xmmword_1BCE3D050;
  *(v0 + 14992) = xmmword_1BCE3D060;
  *(v0 + 15664) = xmmword_1BCE3D070;
  *(v0 + 15680) = xmmword_1BCE3D080;
  *(v0 + 15696) = xmmword_1BCE3D090;
  *(v0 + 15712) = xmmword_1BCE3D0A0;
  *(v0 + 15776) = xmmword_1BCE3E5D0;
  *(v0 + 9712) = xmmword_1BCE3D4E0;
  *(v0 + 10928) = xmmword_1BCE3D4E0;
  *(v0 + 12144) = xmmword_1BCE3D4E0;
  *(v0 + 13360) = xmmword_1BCE3D4E0;
  *(v0 + 15792) = xmmword_1BCE3D4E0;
  *(v0 + 15808) = xmmword_1BCE3D560;
  *(v0 + 15856) = xmmword_1BCE3D0B0;
  *(v0 + 15872) = 0x449EC00044160000;
  *(v0 + 15888) = xmmword_1BCE3D0C0;
  *(v0 + 15904) = xmmword_1BCE3D0D0;
  *(v0 + 15920) = xmmword_1BCE3D0E0;
  *(v0 + 15936) = xmmword_1BCE3D0F0;
  *(v0 + 15952) = xmmword_1BCE3D100;
  *(v0 + 15968) = xmmword_1BCE3D110;
  *(v0 + 16000) = xmmword_1BCE3CBA0;
  *(v0 + 9952) = xmmword_1BCE3DA70;
  *(v0 + 11168) = xmmword_1BCE3DA70;
  *(v0 + 16032) = xmmword_1BCE3DA70;
  *(v0 + 7600) = xmmword_1BCE3CCB0;
  *(v0 + 8816) = xmmword_1BCE3CCB0;
  *(v0 + 8848) = xmmword_1BCE3CCB0;
  *(v0 + 10032) = xmmword_1BCE3CCB0;
  *(v0 + 10064) = xmmword_1BCE3CCB0;
  *(v0 + 11248) = xmmword_1BCE3CCB0;
  *(v0 + 11280) = xmmword_1BCE3CCB0;
  *(v0 + 12464) = xmmword_1BCE3CCB0;
  *(v0 + 16080) = xmmword_1BCE3CCB0;
  *(v0 + 16112) = xmmword_1BCE3D120;
  *(v0 + 16128) = xmmword_1BCE3D130;
  *(v0 + 16144) = xmmword_1BCE3CBF0;
  *(v0 + 16176) = xmmword_1BCE3D140;
  *(v0 + 7680) = 1063675494;
  *(v0 + 8896) = 1063675494;
  *(v0 + 10112) = 1063675494;
  *(v0 + 11328) = 1063675494;
  *(v0 + 12544) = 1063675494;
  *(v0 + 13760) = 1063675494;
  *(v0 + 14976) = 1063675494;
  *(v0 + 16192) = 1063675494;
  *(v0 + 16208) = xmmword_1BCE3D150;
  *(v0 + 16880) = xmmword_1BCE3D160;
  *(v0 + 16896) = xmmword_1BCE3D170;
  *(v0 + 16912) = xmmword_1BCE3D180;
  *(v0 + 16928) = xmmword_1BCE3D190;
  *(v0 + 16944) = xmmword_1BCE3D570;
  *(v0 + 16960) = xmmword_1BCE3D580;
  *(v0 + 8464) = 0x4170000000000000;
  *(v0 + 9680) = 0x4170000000000000;
  *(v0 + 10896) = 0x4170000000000000;
  *(v0 + 12112) = 0x4170000000000000;
  *(v0 + 13328) = 0x4170000000000000;
  *(v0 + 14544) = 0x4170000000000000;
  *(v0 + 15760) = 0x4170000000000000;
  *(v0 + 16976) = 0x4170000000000000;
  *(v0 + 16992) = xmmword_1BCE3E5E0;
  *(v0 + 17024) = xmmword_1BCE3D5A0;
  *(v0 + 17072) = xmmword_1BCE3CB30;
  *(v0 + 17088) = 0x4483CC9D44160000;
  *(v0 + 17104) = xmmword_1BCE3D5B0;
  *(v0 + 17136) = xmmword_1BCE3D1C0;
  *(v0 + 17152) = xmmword_1BCE3D1D0;
  *(v0 + 17168) = xmmword_1BCE3D1E0;
  *(v0 + 17184) = xmmword_1BCE3D1F0;
  *(v0 + 17200) = xmmword_1BCE3D200;
  *(v0 + 17216) = xmmword_1BCE3CAC0;
  *(v0 + 17232) = vdupq_n_s64(0x3FE8F90420000000uLL);
  *(v0 + 17248) = xmmword_1BCE3DC60;
  *(v0 + 17360) = xmmword_1BCE3CAD0;
  *(v0 + 17392) = xmmword_1BCE3D210;
  *(v0 + 17408) = 1062836634;
  *(v0 + 17424) = xmmword_1BCE3D220;
  *(v0 + 18096) = xmmword_1BCE3D230;
  *(v0 + 18112) = xmmword_1BCE3D240;
  *(v0 + 18128) = xmmword_1BCE3D250;
  *(v0 + 18144) = xmmword_1BCE3D260;
  *(v0 + 18160) = xmmword_1BCE3D5C0;
  *(v0 + 18176) = xmmword_1BCE3D5D0;
  *(v0 + 18192) = 0x4100000041A00000;
  *(v0 + 18208) = xmmword_1BCE3E5F0;
  *(v0 + 8496) = xmmword_1BCE3D4B0;
  *(v0 + 14576) = xmmword_1BCE3D4B0;
  *(v0 + 18224) = xmmword_1BCE3D4B0;
  *(v0 + 18240) = xmmword_1BCE3D5F0;
  *(v0 + 18288) = xmmword_1BCE3D330;
  *(v0 + 18304) = vdup_n_s32(0x43960000u);
  *(v0 + 18320) = xmmword_1BCE3C970;
  *(v0 + 18352) = xmmword_1BCE3C980;
  *(v0 + 18368) = xmmword_1BCE3C990;
  *(v0 + 18384) = xmmword_1BCE3C9A0;
  *(v0 + 18416) = xmmword_1BCE3D2A0;
  *(v0 + 18464) = xmmword_1BCE3DCB0;
  *(v0 + 18512) = xmmword_1BCE3D2B0;
  *(v0 + 18528) = xmmword_1BCE3D2C0;
  *(v0 + 18544) = xmmword_1BCE3D2D0;
  *(v0 + 18576) = xmmword_1BCE3C9F0;
  *(v0 + 13728) = xmmword_1BCE3CA00;
  *(v0 + 14944) = xmmword_1BCE3CA00;
  *(v0 + 16160) = xmmword_1BCE3CA00;
  *(v0 + 17376) = xmmword_1BCE3CA00;
  *(v0 + 18592) = xmmword_1BCE3CA00;
  *(v0 + 18608) = xmmword_1BCE3CA10;
  *(v0 + 18624) = 0x3F3333333F4CCCCDLL;
  *(v0 + 19312) = xmmword_1BCE3D2E0;
  *(v0 + 19344) = xmmword_1BCE3D2F0;
  *(v0 + 19376) = xmmword_1BCE3D600;
  *(v0 + 19408) = 0x4120000042B40000;
  *(v0 + 19424) = xmmword_1BCE3D610;
  *(v0 + 8416) = xmmword_1BCE3CBC0;
  *(v0 + 14496) = xmmword_1BCE3CBC0;
  *(v0 + 17008) = xmmword_1BCE3CBC0;
  *(v0 + 19440) = xmmword_1BCE3CBC0;
  *(v0 + 19456) = xmmword_1BCE3D620;
  *(v0 + 20640) = xmmword_1BCE3D630;
  *(v0 + 20672) = xmmword_1BCE3D640;
  *(v0 + 19504) = xmmword_1BCE45BD0;
  *(v0 + 20720) = xmmword_1BCE45BD0;
  *(v0 + 19520) = 0x432A000043160000;
  *(v0 + 20736) = 0x432A000043160000;
  *(v0 + 19536) = xmmword_1BCE3DCE0;
  *(v0 + 20752) = xmmword_1BCE3DCE0;
  *(v0 + 19552) = xmmword_1BCE3C850;
  *(v0 + 20768) = xmmword_1BCE3C850;
  *(v0 + 19568) = xmmword_1BCE3C860;
  *(v0 + 20784) = xmmword_1BCE3C860;
  *(v0 + 19584) = xmmword_1BCE3C870;
  *(v0 + 20800) = xmmword_1BCE3C870;
  *(v0 + 19600) = xmmword_1BCE3C880;
  *(v0 + 20816) = xmmword_1BCE3C880;
  *(v0 + 19616) = xmmword_1BCE3C890;
  *(v0 + 20832) = xmmword_1BCE3C890;
  *(v0 + 19632) = xmmword_1BCE3C8A0;
  *(v0 + 20848) = xmmword_1BCE3C8A0;
  *(v0 + 19648) = xmmword_1BCE3C8B0;
  *(v0 + 20864) = xmmword_1BCE3C8B0;
  *(v0 + 10912) = _Q29;
  *(v0 + 12128) = _Q29;
  *(v0 + 13344) = _Q29;
  *(v0 + 18448) = _Q29;
  *(v0 + 19664) = _Q29;
  *(v0 + 20880) = _Q29;
  *(v0 + 19680) = xmmword_1BCE3D910;
  *(v0 + 20896) = xmmword_1BCE3D910;
  *(v0 + 18000) = _Q0;
  *(v0 + 18016) = _Q0;
  *(v0 + 18032) = _Q0;
  *(v0 + 18048) = _Q0;
  *(v0 + 18064) = _Q0;
  *(v0 + 18080) = _Q0;
  *(v0 + 17904) = _Q0;
  *(v0 + 17920) = _Q0;
  *(v0 + 17936) = _Q0;
  *(v0 + 17952) = _Q0;
  *(v0 + 17968) = _Q0;
  *(v0 + 17984) = _Q0;
  *(v0 + 17808) = _Q0;
  *(v0 + 17824) = _Q0;
  *(v0 + 17840) = _Q0;
  *(v0 + 17856) = _Q0;
  *(v0 + 17872) = _Q0;
  *(v0 + 17888) = _Q0;
  *(v0 + 17712) = _Q0;
  *(v0 + 17728) = _Q0;
  *(v0 + 17744) = _Q0;
  *(v0 + 17760) = _Q0;
  *(v0 + 17776) = _Q0;
  *(v0 + 17792) = _Q0;
  *(v0 + 17616) = _Q0;
  *(v0 + 17632) = _Q0;
  *(v0 + 17648) = _Q0;
  *(v0 + 17664) = _Q0;
  *(v0 + 17680) = _Q0;
  *(v0 + 17696) = _Q0;
  *(v0 + 17520) = _Q0;
  *(v0 + 17536) = _Q0;
  *(v0 + 17552) = _Q0;
  *(v0 + 17568) = _Q0;
  *(v0 + 17584) = _Q0;
  *(v0 + 17600) = _Q0;
  *(v0 + 11264) = xmmword_1BCE3C8C0;
  *(v0 + 17344) = xmmword_1BCE3C8C0;
  *(v0 + 17472) = _Q0;
  *(v0 + 17488) = _Q0;
  *(v0 + 17504) = _Q0;
  *(v0 + 17416) = 0x3FEF23CF40000000;
  *(v0 + 17440) = 0;
  *(v0 + 17448) = 665496235;
  *(v0 + 17456) = _Q0;
  *(v0 + 18432) = xmmword_1BCE3C8C0;
  *(v0 + 18560) = xmmword_1BCE3C8C0;
  *(v0 + 19776) = xmmword_1BCE3C8C0;
  *(v0 + 20992) = xmmword_1BCE3C8C0;
  *(v0 + 17312) = _Q0;
  *(v0 + 17328) = _Q0;
  *(v0 + 19792) = xmmword_1BCE3C8F0;
  *(v0 + 21008) = xmmword_1BCE3C8F0;
  *(v0 + 19824) = xmmword_1BCE3C900;
  *(v0 + 21040) = xmmword_1BCE3C900;
  *(v0 + 17264) = _Q0;
  *(v0 + 17280) = _Q0;
  *(v0 + 17296) = _Q0;
  *(v0 + 19840) = 0x3F3333333F800000;
  *(v0 + 21056) = 0x3F3333333F800000;
  *(v0 + 20528) = v7;
  *(v0 + 21744) = v7;
  *(v0 + 17096) = 1050388079;
  *(v0 + 17120) = _Q0;
  *(v0 + 19328) = xmmword_1BCE3C910;
  *(v0 + 19360) = xmmword_1BCE3C910;
  *(v0 + 20544) = xmmword_1BCE3C910;
  *(v0 + 21760) = xmmword_1BCE3C910;
  *(v0 + 20560) = xmmword_1BCE3C920;
  *(v0 + 21776) = xmmword_1BCE3C920;
  *(v0 + 17065) = *v24;
  *(v0 + 17040) = 0x3FF0000000000000;
  *(v0 + 17056) = 0xC017FFFFFFFFFFE8;
  *(v0 + 17064) = 1;
  *(v0 + 17068) = *&v24[3];
  *(v0 + 20576) = xmmword_1BCE3C930;
  *(v0 + 21792) = xmmword_1BCE3C930;
  *(v0 + 20592) = xmmword_1BCE3D350;
  *(v0 + 21808) = xmmword_1BCE3D350;
  *(v0 + 16984) = 0x3FE8000000000000;
  *(v0 + 20624) = 0x4100000042FA0000;
  *(v0 + 21840) = 0x4100000042FA0000;
  *(v0 + 21856) = xmmword_1BCE3D360;
  *(v0 + 16848) = _Q0;
  *(v0 + 16864) = _Q0;
  *(v0 + 16752) = _Q0;
  *(v0 + 16768) = _Q0;
  *(v0 + 16784) = _Q0;
  *(v0 + 16800) = _Q0;
  *(v0 + 16816) = _Q0;
  *(v0 + 16832) = _Q0;
  *(v0 + 16656) = _Q0;
  *(v0 + 16672) = _Q0;
  *(v0 + 16688) = _Q0;
  *(v0 + 16704) = _Q0;
  *(v0 + 16720) = _Q0;
  *(v0 + 16736) = _Q0;
  *(v0 + 16560) = _Q0;
  *(v0 + 16576) = _Q0;
  *(v0 + 16592) = _Q0;
  *(v0 + 16608) = _Q0;
  *(v0 + 16624) = _Q0;
  *(v0 + 16640) = _Q0;
  *(v0 + 16464) = _Q0;
  *(v0 + 16480) = _Q0;
  *(v0 + 16496) = _Q0;
  *(v0 + 16512) = _Q0;
  *(v0 + 16528) = _Q0;
  *(v0 + 16544) = _Q0;
  *(v0 + 16368) = _Q0;
  *(v0 + 0x4000) = _Q0;
  *(v0 + 16400) = _Q0;
  *(v0 + 16416) = _Q0;
  *(v0 + 16432) = _Q0;
  *(v0 + 16448) = _Q0;
  *(v0 + 16272) = _Q0;
  *(v0 + 16288) = _Q0;
  *(v0 + 16304) = _Q0;
  *(v0 + 16320) = _Q0;
  *(v0 + 16336) = _Q0;
  *(v0 + 16352) = _Q0;
  *(v0 + 7568) = _Q0;
  *(v0 + 7584) = _Q0;
  *(v0 + 16224) = 0;
  *(v0 + 16232) = 0;
  *(v0 + 16240) = _Q0;
  *(v0 + 16256) = _Q0;
  *(v0 + 7728) = _Q0;
  *(v0 + 7744) = _Q0;
  *(v0 + 7760) = _Q0;
  *(v0 + 7776) = _Q0;
  *(v0 + 16200) = 0x3FEE6AC340000000;
  *(v0 + 7792) = _Q0;
  *(v0 + 7808) = _Q0;
  *(v0 + 7824) = _Q0;
  *(v0 + 16048) = _Q0;
  *(v0 + 16064) = _Q0;
  *(v0 + 16096) = _Q0;
  *(v0 + 7840) = _Q0;
  *(v0 + 7856) = _Q0;
  *(v0 + 7872) = _Q0;
  *(v0 + 7888) = _Q0;
  *(v0 + 15984) = _Q0;
  *(v0 + 16016) = _Q0;
  *(v0 + 7904) = _Q0;
  *(v0 + 7920) = _Q0;
  *(v0 + 7936) = _Q0;
  *(v0 + 7952) = _Q0;
  *(v0 + 7968) = _Q0;
  *(v0 + 15849) = *v23;
  *(v0 + 15852) = *&v23[3];
  *(v0 + 15880) = 1061997773;
  *(v0 + 7984) = _Q0;
  *(v0 + 8000) = _Q0;
  *(v0 + 8016) = _Q0;
  *(v0 + 15824) = 0x3FF0000000000000;
  *(v0 + 15840) = 0;
  *(v0 + 15848) = 1;
  *(v0 + 8032) = _Q0;
  *(v0 + 8048) = _Q0;
  *(v0 + 15728) = _Q0;
  *(v0 + 15744) = _Q0;
  *(v0 + 15768) = 0x3FE4CCCCC0000000;
  *(v0 + 8064) = _Q0;
  *(v0 + 8080) = _Q0;
  *(v0 + 8096) = _Q0;
  *(v0 + 15616) = _Q0;
  *(v0 + 15632) = _Q0;
  *(v0 + 15648) = _Q0;
  *(v0 + 15520) = _Q0;
  *(v0 + 15536) = _Q0;
  *(v0 + 15552) = _Q0;
  *(v0 + 15568) = _Q0;
  *(v0 + 15584) = _Q0;
  *(v0 + 15600) = _Q0;
  *(v0 + 15424) = _Q0;
  *(v0 + 15440) = _Q0;
  *(v0 + 15456) = _Q0;
  *(v0 + 15472) = _Q0;
  *(v0 + 15488) = _Q0;
  *(v0 + 15504) = _Q0;
  *(v0 + 15328) = _Q0;
  *(v0 + 15344) = _Q0;
  *(v0 + 15360) = _Q0;
  *(v0 + 15376) = _Q0;
  *(v0 + 15392) = _Q0;
  *(v0 + 15408) = _Q0;
  *(v0 + 15232) = _Q0;
  *(v0 + 15248) = _Q0;
  *(v0 + 15264) = _Q0;
  *(v0 + 15280) = _Q0;
  *(v0 + 15296) = _Q0;
  *(v0 + 15312) = _Q0;
  *(v0 + 15136) = _Q0;
  *(v0 + 15152) = _Q0;
  *(v0 + 15168) = _Q0;
  *(v0 + 15184) = _Q0;
  *(v0 + 15200) = _Q0;
  *(v0 + 15216) = _Q0;
  *(v0 + 8112) = _Q0;
  *(v0 + 15056) = _Q0;
  *(v0 + 15072) = _Q0;
  *(v0 + 15088) = _Q0;
  *(v0 + 15104) = _Q0;
  *(v0 + 15120) = _Q0;
  *(v0 + 14984) = 0x3FEDEF5480000000;
  *(v0 + 15008) = 0x3FE0000000000000;
  *(v0 + 15016) = 0;
  *(v0 + 15024) = _Q0;
  *(v0 + 15040) = _Q0;
  *(v0 + 8128) = _Q0;
  *(v0 + 8144) = _Q0;
  *(v0 + 8160) = _Q0;
  *(v0 + 8176) = _Q0;
  *(v0 + 0x2000) = _Q0;
  *(v0 + 8208) = _Q0;
  *(v0 + 8224) = _Q0;
  *(v0 + 8240) = _Q0;
  *(v0 + 14800) = _Q0;
  *(v0 + 14832) = _Q0;
  *(v0 + 14848) = _Q0;
  *(v0 + 14880) = _Q0;
  *(v0 + 8256) = _Q0;
  *(v0 + 8272) = _Q0;
  *(v0 + 8288) = _Q0;
  *(v0 + 14768) = _Q0;
  *(v0 + 14784) = _Q0;
  *(v0 + 8304) = _Q0;
  *(v0 + 8320) = _Q0;
  *(v0 + 8336) = _Q0;
  *(v0 + 14633) = *v22;
  *(v0 + 8352) = _Q0;
  *(v0 + 8432) = _Q0;
  *(v0 + 14636) = *&v22[3];
  *(v0 + 14664) = 1061158912;
  *(v0 + 8448) = _Q0;
  *(v0 + 8472) = 0x3FE0000000000000;
  *(v0 + 14608) = 0x3FF0000000000000;
  *(v0 + 14624) = 0x4018000000000010;
  *(v0 + 14632) = 1;
  *(v0 + 8528) = 0x3FF0000000000000;
  *(v0 + 8544) = 0x4032000000000001;
  *(v0 + 8552) = 0;
  *(v0 + 14552) = 0x3FE0000000000000;
  *(v0 + 8553) = *v17;
  *(v0 + 14512) = _Q0;
  *(v0 + 14528) = _Q0;
  *(v0 + 8556) = *&v17[3];
  *(v0 + 8584) = 1061158912;
  *(v0 + 14384) = _Q0;
  *(v0 + 14400) = _Q0;
  *(v0 + 14416) = _Q0;
  *(v0 + 14432) = _Q0;
  *(v0 + 14288) = _Q0;
  *(v0 + 14304) = _Q0;
  *(v0 + 14320) = _Q0;
  *(v0 + 14336) = _Q0;
  *(v0 + 14352) = _Q0;
  *(v0 + 14368) = _Q0;
  *(v0 + 14192) = _Q0;
  *(v0 + 14208) = _Q0;
  *(v0 + 14224) = _Q0;
  *(v0 + 14240) = _Q0;
  *(v0 + 14256) = _Q0;
  *(v0 + 14272) = _Q0;
  *(v0 + 14096) = _Q0;
  *(v0 + 14112) = _Q0;
  *(v0 + 14128) = _Q0;
  *(v0 + 14144) = _Q0;
  *(v0 + 14160) = _Q0;
  *(v0 + 14176) = _Q0;
  *(v0 + 14000) = _Q0;
  *(v0 + 14016) = _Q0;
  *(v0 + 14032) = _Q0;
  *(v0 + 14048) = _Q0;
  *(v0 + 14064) = _Q0;
  *(v0 + 14080) = _Q0;
  *(v0 + 13904) = _Q0;
  *(v0 + 13920) = _Q0;
  *(v0 + 13936) = _Q0;
  *(v0 + 13952) = _Q0;
  *(v0 + 13968) = _Q0;
  *(v0 + 13984) = _Q0;
  *(v0 + 8656) = _Q0;
  *(v0 + 13824) = _Q0;
  *(v0 + 13840) = _Q0;
  *(v0 + 13856) = _Q0;
  *(v0 + 13872) = _Q0;
  *(v0 + 13888) = _Q0;
  *(v0 + 8672) = _Q0;
  *(v0 + 13768) = 0x3FED73E5C0000000;
  *(v0 + 13792) = 0x3FF0000000000000;
  *(v0 + 13800) = 0;
  *(v0 + 13808) = _Q0;
  *(v0 + 8688) = _Q0;
  *(v0 + 8704) = _Q0;
  *(v0 + 8720) = _Q0;
  *(v0 + 8752) = _Q0;
  *(v0 + 13664) = _Q0;
  *(v0 + 13680) = _Q0;
  *(v0 + 8768) = _Q0;
  *(v0 + 8784) = _Q0;
  *(v0 + 13584) = _Q0;
  *(v0 + 13616) = _Q0;
  *(v0 + 13632) = _Q0;
  *(v0 + 13648) = _Q0;
  *(v0 + 8800) = _Q0;
  *(v0 + 8864) = _Q0;
  *(v0 + 8904) = 0x3FEB9B9BC0000000;
  *(v0 + 13552) = _Q0;
  *(v0 + 13568) = _Q0;
  *(v0 + 8928) = 0x3FF0000000000000;
  *(v0 + 8936) = 0;
  *(v0 + 8944) = _Q0;
  *(v0 + 8960) = _Q0;
  *(v0 + 8976) = _Q0;
  *(v0 + 8992) = _Q0;
  *(v0 + 13417) = *v21;
  *(v0 + 13448) = 1060320051;
  *(v0 + 13392) = 0x3FF0000000000000;
  *(v0 + 13408) = 0x4028000000000010;
  *(v0 + 13416) = 1;
  *(v0 + 13420) = *&v21[3];
  *(v0 + 9008) = _Q0;
  *(v0 + 9024) = _Q0;
  *(v0 + 9040) = _Q0;
  *(v0 + 13296) = _Q0;
  *(v0 + 13312) = _Q0;
  *(v0 + 13336) = 0x3FE0000000000000;
  *(v0 + 9056) = _Q0;
  *(v0 + 9072) = _Q0;
  *(v0 + 9088) = _Q0;
  *(v0 + 9104) = _Q0;
  *(v0 + 13200) = _Q0;
  *(v0 + 13216) = _Q0;
  *(v0 + 13104) = _Q0;
  *(v0 + 13120) = _Q0;
  *(v0 + 13136) = _Q0;
  *(v0 + 13152) = _Q0;
  *(v0 + 13168) = _Q0;
  *(v0 + 13184) = _Q0;
  *(v0 + 13008) = _Q0;
  *(v0 + 13024) = _Q0;
  *(v0 + 13040) = _Q0;
  *(v0 + 13056) = _Q0;
  *(v0 + 13072) = _Q0;
  *(v0 + 13088) = _Q0;
  *(v0 + 12912) = _Q0;
  *(v0 + 12928) = _Q0;
  *(v0 + 12944) = _Q0;
  *(v0 + 12960) = _Q0;
  *(v0 + 12976) = _Q0;
  *(v0 + 12992) = _Q0;
  *(v0 + 12816) = _Q0;
  *(v0 + 12832) = _Q0;
  *(v0 + 12848) = _Q0;
  *(v0 + 12864) = _Q0;
  *(v0 + 12880) = _Q0;
  *(v0 + 12896) = _Q0;
  *(v0 + 12720) = _Q0;
  *(v0 + 12736) = _Q0;
  *(v0 + 12752) = _Q0;
  *(v0 + 12768) = _Q0;
  *(v0 + 12784) = _Q0;
  *(v0 + 12800) = _Q0;
  *(v0 + 12624) = _Q0;
  *(v0 + 12640) = _Q0;
  *(v0 + 12656) = _Q0;
  *(v0 + 12672) = _Q0;
  *(v0 + 12688) = _Q0;
  *(v0 + 12704) = _Q0;
  *(v0 + 9120) = _Q0;
  *(v0 + 12552) = 0x3FEB9B9BC0000000;
  *(v0 + 12576) = 0x3FF0000000000000;
  *(v0 + 12584) = 0;
  *(v0 + 12592) = _Q0;
  *(v0 + 12608) = _Q0;
  *(v0 + 9136) = _Q0;
  *(v0 + 9152) = _Q0;
  *(v0 + 9168) = _Q0;
  *(v0 + 9184) = _Q0;
  *(v0 + 12496) = _Q0;
  *(v0 + 12512) = _Q0;
  *(v0 + 9200) = _Q0;
  *(v0 + 12368) = _Q0;
  *(v0 + 12400) = _Q0;
  *(v0 + 12416) = _Q0;
  *(v0 + 12432) = _Q0;
  *(v0 + 12448) = _Q0;
  *(v0 + 9216) = _Q0;
  *(v0 + 12288) = _Q0;
  *(v0 + 12304) = _Q0;
  *(v0 + 12320) = _Q0;
  *(v0 + 12336) = _Q0;
  *(v0 + 12352) = _Q0;
  *(v0 + 9232) = _Q0;
  *(v0 + 9248) = _Q0;
  *(v0 + 9264) = _Q0;
  *(v0 + 9280) = _Q0;
  *(v0 + 9296) = _Q0;
  *(v0 + 12201) = *v20;
  *(v0 + 12204) = *&v20[3];
  *(v0 + 12232) = 1061158912;
  *(v0 + 9312) = _Q0;
  *(v0 + 9328) = _Q0;
  *(v0 + 12176) = 0x3FF0000000000000;
  *(v0 + 12192) = 0x4031FFFFFFFFFFF6;
  *(v0 + 12200) = 1;
  *(v0 + 9344) = _Q0;
  *(v0 + 9360) = _Q0;
  *(v0 + 9376) = _Q0;
  *(v0 + 12080) = _Q0;
  *(v0 + 12096) = _Q0;
  *(v0 + 12120) = 0x3FE0000000000000;
  *(v0 + 9392) = _Q0;
  *(v0 + 9408) = _Q0;
  *(v0 + 11952) = _Q0;
  *(v0 + 11968) = _Q0;
  *(v0 + 11984) = _Q0;
  *(v0 + 12000) = _Q0;
  *(v0 + 11856) = _Q0;
  *(v0 + 11872) = _Q0;
  *(v0 + 11888) = _Q0;
  *(v0 + 11904) = _Q0;
  *(v0 + 11920) = _Q0;
  *(v0 + 11936) = _Q0;
  *(v0 + 11760) = _Q0;
  *(v0 + 11776) = _Q0;
  *(v0 + 11792) = _Q0;
  *(v0 + 11808) = _Q0;
  *(v0 + 11824) = _Q0;
  *(v0 + 11840) = _Q0;
  *(v0 + 11664) = _Q0;
  *(v0 + 11680) = _Q0;
  *(v0 + 11696) = _Q0;
  *(v0 + 11712) = _Q0;
  *(v0 + 11728) = _Q0;
  *(v0 + 11744) = _Q0;
  *(v0 + 11568) = _Q0;
  *(v0 + 11584) = _Q0;
  *(v0 + 11600) = _Q0;
  *(v0 + 11616) = _Q0;
  *(v0 + 11632) = _Q0;
  *(v0 + 11648) = _Q0;
  *(v0 + 11472) = _Q0;
  *(v0 + 11488) = _Q0;
  *(v0 + 11504) = _Q0;
  *(v0 + 11520) = _Q0;
  *(v0 + 11536) = _Q0;
  *(v0 + 11552) = _Q0;
  *(v0 + 11376) = _Q0;
  *(v0 + 11392) = _Q0;
  *(v0 + 11408) = _Q0;
  *(v0 + 11424) = _Q0;
  *(v0 + 11440) = _Q0;
  *(v0 + 11456) = _Q0;
  *(v0 + 9424) = _Q0;
  *(v0 + 9440) = _Q0;
  *(v0 + 9456) = _Q0;
  *(v0 + 11336) = 0x3FEB9B9BC0000000;
  *(v0 + 11360) = 0x3FF0000000000000;
  *(v0 + 11368) = 0;
  *(v0 + 9472) = _Q0;
  *(v0 + 9488) = _Q0;
  *(v0 + 9504) = _Q0;
  *(v0 + 11216) = _Q0;
  *(v0 + 11232) = _Q0;
  *(v0 + 11296) = _Q0;
  *(v0 + 9520) = _Q0;
  *(v0 + 11120) = _Q0;
  *(v0 + 11136) = _Q0;
  *(v0 + 11152) = _Q0;
  *(v0 + 11184) = _Q0;
  *(v0 + 11200) = _Q0;
  *(v0 + 9536) = _Q0;
  *(v0 + 9552) = _Q0;
  *(v0 + 9568) = _Q0;
  *(v0 + 9648) = _Q0;
  *(v0 + 9664) = _Q0;
  *(v0 + 9688) = 0x3FD9999980000000;
  *(v0 + 9744) = 0x3FF0000000000000;
  *(v0 + 9760) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 11016) = 1061997773;
  *(v0 + 9768) = 0;
  *(v0 + 10985) = *v19;
  *(v0 + 9769) = *v18;
  *(v0 + 10976) = 0x403DFFFFFFFFFFFELL;
  *(v0 + 10984) = 1;
  *(v0 + 10988) = *&v19[3];
  *(v0 + 9772) = *&v18[3];
  *(v0 + 9800) = 1061997773;
  *(v0 + 9904) = _Q0;
  *(v0 + 10904) = 0x3FE0000000000000;
  *(v0 + 10960) = 0x3FF0000000000000;
  *(v0 + 9920) = _Q0;
  *(v0 + 9936) = _Q0;
  *(v0 + 9968) = _Q0;
  *(v0 + 9984) = _Q0;
  *(v0 + 10864) = _Q0;
  *(v0 + 10880) = _Q0;
  *(v0 + 10704) = _Q0;
  *(v0 + 10720) = _Q0;
  *(v0 + 10736) = _Q0;
  *(v0 + 10752) = _Q0;
  *(v0 + 10768) = _Q0;
  *(v0 + 10784) = _Q0;
  *(v0 + 10608) = _Q0;
  *(v0 + 10624) = _Q0;
  *(v0 + 10640) = _Q0;
  *(v0 + 10656) = _Q0;
  *(v0 + 10672) = _Q0;
  *(v0 + 10688) = _Q0;
  *(v0 + 10512) = _Q0;
  *(v0 + 10528) = _Q0;
  *(v0 + 10544) = _Q0;
  *(v0 + 10560) = _Q0;
  *(v0 + 10576) = _Q0;
  *(v0 + 10592) = _Q0;
  *(v0 + 10416) = _Q0;
  *(v0 + 10432) = _Q0;
  *(v0 + 10448) = _Q0;
  *(v0 + 10464) = _Q0;
  *(v0 + 10480) = _Q0;
  *(v0 + 10496) = _Q0;
  *(v0 + 10320) = _Q0;
  *(v0 + 10336) = _Q0;
  *(v0 + 10352) = _Q0;
  *(v0 + 10368) = _Q0;
  *(v0 + 10384) = _Q0;
  *(v0 + 10400) = _Q0;
  *(v0 + 10224) = _Q0;
  *(v0 + 10240) = _Q0;
  *(v0 + 10256) = _Q0;
  *(v0 + 10272) = _Q0;
  *(v0 + 10288) = _Q0;
  *(v0 + 10304) = _Q0;
  *(v0 + 10144) = 0x3FF0000000000000;
  *(v0 + 10152) = 0;
  *(v0 + 10160) = _Q0;
  *(v0 + 10176) = _Q0;
  *(v0 + 10192) = _Q0;
  *(v0 + 10208) = _Q0;
  *(v0 + 10000) = _Q0;
  *(v0 + 10016) = _Q0;
  *(v0 + 10080) = _Q0;
  *(v0 + 10120) = 0x3FEB9B9BC0000000;
  *(v0 + 18336) = _Q0;
  *(v0 + 18400) = _Q0;
  *(v0 + 18480) = _Q0;
  *(v0 + 18496) = _Q0;
  *(v0 + 18640) = _Q0;
  *(v0 + 18672) = _Q0;
  *(v0 + 18688) = _Q0;
  *(v0 + 18704) = _Q0;
  *(v0 + 18720) = _Q0;
  *(v0 + 18736) = _Q0;
  *(v0 + 18752) = _Q0;
  *(v0 + 18768) = _Q0;
  *(v0 + 18784) = _Q0;
  *(v0 + 18800) = _Q0;
  *(v0 + 18816) = _Q0;
  *(v0 + 18832) = _Q0;
  *(v0 + 18848) = _Q0;
  *(v0 + 18864) = _Q0;
  *(v0 + 18880) = _Q0;
  *(v0 + 18896) = _Q0;
  *(v0 + 18912) = _Q0;
  *(v0 + 18928) = _Q0;
  *(v0 + 18944) = _Q0;
  *(v0 + 18960) = _Q0;
  *(v0 + 18976) = _Q0;
  *(v0 + 18992) = _Q0;
  *(v0 + 19008) = _Q0;
  *(v0 + 19024) = _Q0;
  *(v0 + 19040) = _Q0;
  *(v0 + 19056) = _Q0;
  *(v0 + 19072) = _Q0;
  *(v0 + 19088) = _Q0;
  *(v0 + 19104) = _Q0;
  *(v0 + 19120) = _Q0;
  *(v0 + 19136) = _Q0;
  *(v0 + 19152) = _Q0;
  *(v0 + 19168) = _Q0;
  *(v0 + 19184) = _Q0;
  *(v0 + 19200) = _Q0;
  *(v0 + 19216) = _Q0;
  *(v0 + 19232) = _Q0;
  *(v0 + 19248) = _Q0;
  *(v0 + 19264) = _Q0;
  *(v0 + 19280) = _Q0;
  *(v0 + 19296) = _Q0;
  *(v0 + 19392) = _Q0;
  *(v0 + 19696) = _Q0;
  *(v0 + 19712) = _Q0;
  *(v0 + 19728) = _Q0;
  *(v0 + 19744) = _Q0;
  *(v0 + 19760) = _Q0;
  *(v0 + 19808) = _Q0;
  *(v0 + 19856) = _Q0;
  *(v0 + 19888) = _Q0;
  *(v0 + 19904) = _Q0;
  *(v0 + 19920) = _Q0;
  *(v0 + 19936) = _Q0;
  *(v0 + 19952) = _Q0;
  *(v0 + 19968) = _Q0;
  *(v0 + 19984) = _Q0;
  *(v0 + 20000) = _Q0;
  *(v0 + 20016) = _Q0;
  *(v0 + 20032) = _Q0;
  *(v0 + 20048) = _Q0;
  *(v0 + 20064) = _Q0;
  *(v0 + 20080) = _Q0;
  *(v0 + 20096) = _Q0;
  *(v0 + 20112) = _Q0;
  *(v0 + 20128) = _Q0;
  *(v0 + 20144) = _Q0;
  *(v0 + 20160) = _Q0;
  *(v0 + 20176) = _Q0;
  *(v0 + 20192) = _Q0;
  *(v0 + 20208) = _Q0;
  *(v0 + 20224) = _Q0;
  *(v0 + 20240) = _Q0;
  *(v0 + 20256) = _Q0;
  *(v0 + 20272) = _Q0;
  *(v0 + 20288) = _Q0;
  *(v0 + 20304) = _Q0;
  *(v0 + 20320) = _Q0;
  *(v0 + 20336) = _Q0;
  *(v0 + 20352) = _Q0;
  *(v0 + 20368) = _Q0;
  *(v0 + 20384) = _Q0;
  *(v0 + 20400) = _Q0;
  *(v0 + 20416) = _Q0;
  *(v0 + 20432) = _Q0;
  *(v0 + 20448) = _Q0;
  *(v0 + 20464) = _Q0;
  *(v0 + 20480) = _Q0;
  *(v0 + 20496) = _Q0;
  *(v0 + 20512) = _Q0;
  *(v0 + 20608) = _Q0;
  *(v0 + 20656) = _Q0;
  *(v0 + 20912) = _Q0;
  *(v0 + 20928) = _Q0;
  *(v0 + 20944) = _Q0;
  *(v0 + 20960) = _Q0;
  *(v0 + 20976) = _Q0;
  *(v0 + 21024) = _Q0;
  *(v0 + 21072) = _Q0;
  *(v0 + 21104) = _Q0;
  *(v0 + 21120) = _Q0;
  *(v0 + 21136) = _Q0;
  *(v0 + 21152) = _Q0;
  *(v0 + 21168) = _Q0;
  *(v0 + 21184) = _Q0;
  *(v0 + 21200) = _Q0;
  *(v0 + 21216) = _Q0;
  *(v0 + 21232) = _Q0;
  *(v0 + 21248) = _Q0;
  *(v0 + 21264) = _Q0;
  *(v0 + 21280) = _Q0;
  *(v0 + 21296) = _Q0;
  *(v0 + 21312) = _Q0;
  *(v0 + 21328) = _Q0;
  *(v0 + 21344) = _Q0;
  *(v0 + 21360) = _Q0;
  *(v0 + 21376) = _Q0;
  *(v0 + 21392) = _Q0;
  *(v0 + 21408) = _Q0;
  *(v0 + 21424) = _Q0;
  *(v0 + 21440) = _Q0;
  *(v0 + 21456) = _Q0;
  *(v0 + 21472) = _Q0;
  *(v0 + 21488) = _Q0;
  *(v0 + 21504) = _Q0;
  *(v0 + 21520) = _Q0;
  *(v0 + 21536) = _Q0;
  *(v0 + 21552) = _Q0;
  *(v0 + 21568) = _Q0;
  *(v0 + 21584) = _Q0;
  *(v0 + 21600) = _Q0;
  *(v0 + 21616) = _Q0;
  *(v0 + 21632) = _Q0;
  *(v0 + 21648) = _Q0;
  *(v0 + 21664) = _Q0;
  *(v0 + 21680) = _Q0;
  *(v0 + 21696) = _Q0;
  *(v0 + 21712) = _Q0;
  *(v0 + 21728) = _Q0;
  *(v0 + 21824) = _Q0;
  *(v0 + 21872) = _Q0;
  result = 0.799999952;
  *(v0 + 21888) = xmmword_1BCE3D370;
  *(v0 + 7688) = 0x3FEF0AE2E0000000;
  *(v0 + 7712) = 0x3FF0000000000000;
  *(v0 + 7720) = 0;
  *(v0 + 18200) = 0x3FE99999A0000000;
  *(v0 + 18256) = 0x3FF0000000000000;
  *(v0 + 18272) = 0xC028000000000000;
  *(v0 + 18280) = 1;
  *(v0 + 18281) = *v25;
  *(v0 + 18284) = *&v25[3];
  *(v0 + 18312) = 1036831949;
  *(v0 + 18632) = 0x3FF0000000000000;
  *(v0 + 18656) = 0;
  *(v0 + 18664) = 1065353216;
  *(v0 + 19416) = 0x3FE93332C0000000;
  *(v0 + 19472) = 0x3FF0000000000000;
  *(v0 + 19488) = 0xC04E000000000002;
  *(v0 + 19496) = 1;
  *(v0 + 19497) = *v26;
  *(v0 + 19500) = *&v26[3];
  *(v0 + 19528) = 1040242952;
  *(v0 + 19848) = 0x3FF0000000000000;
  *(v0 + 19872) = 0;
  *(v0 + 19880) = 1065353216;
  *(v0 + 20632) = 0x3FEB89F0C0000000;
  *(v0 + 20688) = 0x3FF0000000000000;
  *(v0 + 20704) = 0xC056800000000000;
  *(v0 + 20712) = 1;
  *(v0 + 20713) = *v27;
  *(v0 + 20716) = *&v27[3];
  *(v0 + 20744) = 1040242952;
  *(v0 + 21064) = 0x3FF0000000000000;
  *(v0 + 21088) = 0;
  *(v0 + 21096) = 1065353216;
  *(v0 + 21848) = 0x3FEB89F080000000;
  *(v0 + 21904) = 0x3FF0000000000000;
  return result;
}

uint64_t sub_1BCCFF9BC(void (*a1)(char *), uint64_t a2)
{
  v38 = a1;
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09C20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07978);
  v33 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v34 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v31 - v8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CB8);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CC8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v31 - v16;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CD0);
  v35 = *(v41 - 8);
  v18 = MEMORY[0x1EEE9AC00](v41);
  v20 = &v31 - v19;
  (*(v15 + 16))(v17, v36, v14, v18);
  sub_1BC957184(&qword_1EDA1EC18, &qword_1EBD08CC8);
  sub_1BCE1D4B0();
  sub_1BC957184(&qword_1EDA1EC20, &qword_1EBD08CD0);
  v36 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1BCE1DB30();
    if (__swift_getEnumTagSinglePayload(v13, 1, v40) == 1)
    {
      (*(v35 + 8))(v20, v41);
      return v36;
    }

    sub_1BC9643D8(v13, v10, &qword_1EBD08CB8);
    v38(v10);
    if (v2)
    {
      break;
    }

    sub_1BC94C05C(v10, &qword_1EBD08CB8);
    if (__swift_getEnumTagSinglePayload(v5, 1, v37) == 1)
    {
      sub_1BC94C05C(v5, &qword_1EBD09C20);
    }

    else
    {
      v21 = v32;
      sub_1BC9643D8(v5, v32, &qword_1EBD07978);
      sub_1BC9643D8(v21, v34, &qword_1EBD07978);
      v22 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BCB65050();
        v22 = v27;
      }

      v24 = v22;
      v25 = *(v22 + 16);
      v36 = v24;
      if (v25 >= *(v24 + 24) >> 1)
      {
        sub_1BCB65050();
        v36 = v28;
      }

      v26 = v36;
      *(v36 + 16) = v25 + 1;
      sub_1BC9643D8(v34, v26 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v25, &qword_1EBD07978);
    }
  }

  sub_1BC94C05C(v10, &qword_1EBD08CB8);
  (*(v35 + 8))(v20, v41);
  v29 = v36;

  return v29;
}

void sub_1BCCFFF44(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BCE18900();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  if ((a1 & 1) == 0)
  {
    v19 = OUTLINED_FUNCTION_6_53();
    v20(v19);
    sub_1BCD000A8(v14);
    goto LABEL_7;
  }

  if (a2)
  {
    v15 = OUTLINED_FUNCTION_6_53();
    v16(v15);
    sub_1BCD0049C(v14);
    (*(v10 + 8))(v14, v8);
  }

  if (a4)
  {
    v17 = OUTLINED_FUNCTION_6_53();
    v18(v17);
    sub_1BCD00DE8(v14, a3, a4);
LABEL_7:
    (*(v10 + 8))(v14, v8);
  }
}

uint64_t sub_1BCD000A8(uint64_t a1)
{
  v35 = a1;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CC8);
  OUTLINED_FUNCTION_2();
  v3 = v2;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v33 - v5;
  v7 = sub_1BCE18A70();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v13 = v12 - v11;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CC0);
  OUTLINED_FUNCTION_14(v14);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09C20);
  OUTLINED_FUNCTION_14(v18);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07978);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  v33 = &v33 - v24;
  v34 = v1;
  sub_1BCE18A90();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_72();
  sub_1BCD016B8(v25, v26);
  sub_1BCE18A80();

  (*(v9 + 8))(v13, v7);
  v37 = v35;
  sub_1BCAD0C20();
  (*(v3 + 8))(v6, v36);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CB8);
  if (__swift_getEnumTagSinglePayload(v17, 1, v27) == 1)
  {
    sub_1BC94C05C(v17, &qword_1EBD08CC0);
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v22);
  }

  else
  {
    sub_1BC9643D8(&v17[*(v27 + 48)], v21, &qword_1EBD07978);
    __swift_storeEnumTagSinglePayload(v21, 0, 1, v22);
    sub_1BC94C05C(v17, &qword_1EBD09C18);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) != 1)
    {
      sub_1BC9643D8(v21, v33, &qword_1EBD07978);
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_55();
      sub_1BC957184(v30, v31);
      sub_1BCE18980();
      OUTLINED_FUNCTION_55();
      return sub_1BC94C05C(v29, v28);
    }
  }

  v28 = &qword_1EBD09C20;
  v29 = v21;
  return sub_1BC94C05C(v29, v28);
}

uint64_t sub_1BCD0049C(uint64_t a1)
{
  v47 = a1;
  v43 = sub_1BCE18C10();
  OUTLINED_FUNCTION_2();
  v41 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_0();
  v48 = v5 - v4;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07978);
  OUTLINED_FUNCTION_2();
  v40 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  sub_1BCE18AF0();
  OUTLINED_FUNCTION_2();
  v44 = v11;
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_0();
  v14 = v13 - v12;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CC8);
  OUTLINED_FUNCTION_2();
  v16 = v15;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v39 - v18;
  v20 = sub_1BCE18A70();
  OUTLINED_FUNCTION_2();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = v25 - v24;
  v27 = v1;
  sub_1BCE18A90();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_72();
  sub_1BCD016B8(v28, v29);
  sub_1BCE18A80();

  (*(v22 + 8))(v26, v20);
  v50 = v47;
  v30 = sub_1BCCFF9BC(sub_1BCD01314, v49);
  (*(v16 + 8))(v19, v46);
  sub_1BCE18AE0();
  v31 = *(v30 + 16);
  if (v31)
  {
    v32 = *(v40 + 80);
    v39 = v30;
    v33 = v30 + ((v32 + 32) & ~v32);
    v34 = (v41 + 8);
    v46 = *(v40 + 72);
    v47 = v14;
    v35 = v43;
    do
    {
      sub_1BC952B1C(v33, v9, &qword_1EBD07978);
      OUTLINED_FUNCTION_2_49();
      sub_1BC957184(&qword_1EDA1C1D8, &qword_1EBD07978);
      sub_1BCE18B50();
      sub_1BC94C05C(v9, &qword_1EBD07978);
      sub_1BCD016B8(&qword_1EDA1BF60, MEMORY[0x1E6968968]);
      sub_1BCE18AA0();
      (*v34)(v48, v35);
      v33 += v46;
      --v31;
    }

    while (v31);

    v14 = v47;
  }

  else
  {
  }

  v37 = v44;
  v36 = v45;
  (*(v44 + 8))(v27, v45);
  return (*(v37 + 32))(v27, v14, v36);
}

uint64_t sub_1BCD00928@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v34 = a3;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CB8);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v29 - v4;
  v5 = sub_1BCE18900();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v29 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09C10);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09C18);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v29 - v17;
  v32 = v6;
  (*(v6 + 16))(&v29 - v17, v33, v5, v16);
  __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  v19 = *(v9 + 56);
  v33 = a1;
  sub_1BC952B1C(a1, v11, &qword_1EBD09C18);
  sub_1BC952B1C(v18, &v11[v19], &qword_1EBD09C18);
  if (__swift_getEnumTagSinglePayload(v11, 1, v5) != 1)
  {
    sub_1BC952B1C(v11, v14, &qword_1EBD09C18);
    if (__swift_getEnumTagSinglePayload(&v11[v19], 1, v5) != 1)
    {
      v22 = v32;
      v23 = v29;
      (*(v32 + 32))(v29, &v11[v19], v5);
      sub_1BCD016B8(&qword_1EDA1EC58, MEMORY[0x1E6968400]);
      v24 = sub_1BCE1D210();
      v25 = *(v22 + 8);
      v25(v23, v5);
      sub_1BC94C05C(v18, &qword_1EBD09C18);
      v25(v14, v5);
      sub_1BC94C05C(v11, &qword_1EBD09C18);
      if (v24)
      {
        goto LABEL_9;
      }

LABEL_7:
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07978);
      return __swift_storeEnumTagSinglePayload(v34, 1, 1, v20);
    }

    sub_1BC94C05C(v18, &qword_1EBD09C18);
    (*(v32 + 8))(v14, v5);
LABEL_6:
    sub_1BC94C05C(v11, &qword_1EBD09C10);
    goto LABEL_7;
  }

  sub_1BC94C05C(v18, &qword_1EBD09C18);
  if (__swift_getEnumTagSinglePayload(&v11[v19], 1, v5) != 1)
  {
    goto LABEL_6;
  }

  sub_1BC94C05C(v11, &qword_1EBD09C18);
LABEL_9:
  v26 = v31;
  sub_1BC952B1C(v33, v31, &qword_1EBD08CB8);
  v27 = v34;
  sub_1BC9643D8(v26 + *(v30 + 48), v34, &qword_1EBD07978);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07978);
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v28);
  return sub_1BC94C05C(v26, &qword_1EBD09C18);
}

uint64_t sub_1BCD00DE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  v48[2] = a2;
  v55 = a1;
  v4 = sub_1BCE18B80();
  v5 = OUTLINED_FUNCTION_14(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_0();
  v48[1] = v7 - v6;
  sub_1BCE18AF0();
  OUTLINED_FUNCTION_2();
  v51 = v9;
  v52 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_0();
  v49 = v11 - v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CC8);
  OUTLINED_FUNCTION_2();
  v13 = v12;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v48 - v15;
  v17 = sub_1BCE18A70();
  OUTLINED_FUNCTION_2();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CC0);
  OUTLINED_FUNCTION_14(v24);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = v48 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09C20);
  OUTLINED_FUNCTION_14(v28);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v29);
  v31 = v48 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07978);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v33);
  v48[0] = v48 - v34;
  v53 = v3;
  sub_1BCE18A90();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  OUTLINED_FUNCTION_1_72();
  sub_1BCD016B8(v35, v36);
  sub_1BCE18A80();

  (*(v19 + 8))(v23, v17);
  v56 = v55;
  sub_1BCAD0C20();
  (*(v13 + 8))(v16, v54);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD08CB8);
  OUTLINED_FUNCTION_8_51();
  if (__swift_getEnumTagSinglePayload(v38, v39, v40) == 1)
  {
    sub_1BC94C05C(v27, &qword_1EBD08CC0);
    __swift_storeEnumTagSinglePayload(v31, 1, 1, v32);
  }

  else
  {
    sub_1BC9643D8(&v27[*(v37 + 48)], v31, &qword_1EBD07978);
    __swift_storeEnumTagSinglePayload(v31, 0, 1, v32);
    sub_1BC94C05C(v27, &qword_1EBD09C18);
    if (__swift_getEnumTagSinglePayload(v31, 1, v32) != 1)
    {
      sub_1BC9643D8(v31, v48[0], &qword_1EBD07978);

      sub_1BCE18B70();
      v43 = v49;
      sub_1BCE18B00();
      OUTLINED_FUNCTION_2_49();
      OUTLINED_FUNCTION_55();
      sub_1BC957184(v44, v45);
      sub_1BCD016B8(&qword_1EDA1EC08, MEMORY[0x1E6968848]);
      v46 = v52;
      sub_1BCE18990();
      (*(v51 + 8))(v43, v46);
      OUTLINED_FUNCTION_55();
      return sub_1BC94C05C(v42, v41);
    }
  }

  v41 = &qword_1EBD09C20;
  v42 = v31;
  return sub_1BC94C05C(v42, v41);
}

uint64_t sub_1BCD01330(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v3 = sub_1BCE18900();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  v37 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09C10) - 8;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09C18);
  v14 = OUTLINED_FUNCTION_14(v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v36 - v19;
  v38 = v5;
  (*(v5 + 16))(&v36 - v19, a2, v3, v18);
  __swift_storeEnumTagSinglePayload(v20, 0, 1, v3);
  v21 = *(v9 + 56);
  sub_1BC952B1C(v39, v12, &qword_1EBD09C18);
  sub_1BC952B1C(v20, &v12[v21], &qword_1EBD09C18);
  OUTLINED_FUNCTION_8_51();
  if (__swift_getEnumTagSinglePayload(v22, v23, v24) != 1)
  {
    sub_1BC952B1C(v12, v16, &qword_1EBD09C18);
    OUTLINED_FUNCTION_8_51();
    if (__swift_getEnumTagSinglePayload(v29, v30, v31) != 1)
    {
      v32 = v37;
      v33 = v38;
      (*(v38 + 32))(v37, &v12[v21], v3);
      sub_1BCD016B8(&qword_1EDA1EC58, MEMORY[0x1E6968400]);
      v28 = sub_1BCE1D210();
      v34 = *(v33 + 8);
      v34(v32, v3);
      sub_1BC94C05C(v20, &qword_1EBD09C18);
      v34(v16, v3);
      sub_1BC94C05C(v12, &qword_1EBD09C18);
      return v28 & 1;
    }

    sub_1BC94C05C(v20, &qword_1EBD09C18);
    (*(v38 + 8))(v16, v3);
    goto LABEL_6;
  }

  sub_1BC94C05C(v20, &qword_1EBD09C18);
  OUTLINED_FUNCTION_8_51();
  if (__swift_getEnumTagSinglePayload(v25, v26, v27) != 1)
  {
LABEL_6:
    sub_1BC94C05C(v12, &qword_1EBD09C10);
    v28 = 0;
    return v28 & 1;
  }

  sub_1BC94C05C(v12, &qword_1EBD09C18);
  v28 = 1;
  return v28 & 1;
}

uint64_t sub_1BCD016B8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BCD0173C(uint64_t a1@<X8>)
{
  v2 = a1 + 1436;
  sub_1BCA170F0();
  v4 = v3;
  sub_1BCA170F0();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 5;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 48;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42C8000042480000;
  *(a1 + 72) = 0xC422800000000000;
  *(a1 + 80) = xmmword_1BCE3E630;
  *(a1 + 96) = xmmword_1BCE3F420;
  *(a1 + 112) = 0x3EB851EB3E428F5CLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3F430;
  *(a1 + 160) = xmmword_1BCE3F440;
  *(a1 + 176) = 1148152459;
  *(a1 + 184) = 0x3E3851EC3E0F5C29;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE49190;
  *(a1 + 240) = 0x4348000040B00000;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0x3F19999A3ECCCCCDLL;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = _Q0;
  *(a1 + 320) = 0x43E1000042F00000;
  *(a1 + 328) = 0x3F4CCCCD3ECCCCCDLL;
  *(a1 + 336) = 0x3FB5C28F00000000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3CA3D70A3F800000;
  *(a1 + 400) = xmmword_1BCE3BF20;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 10;
  *(a1 + 432) = xmmword_1BCE61D30;
  *(a1 + 448) = 0x3F3851EC3ECCCCCDLL;
  *(a1 + 464) = xmmword_1BCE3F460;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x4396000040400000;
  *(a1 + 504) = 1119748096;
  *(a1 + 512) = 0x3E4CCCCD3E19999ALL;
  *(a1 + 528) = xmmword_1BCE3F470;
  *(a1 + 544) = xmmword_1BCE3F480;
  *(a1 + 560) = 0x42B4000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C7C0;
  *(a1 + 592) = xmmword_1BCE3F490;
  *(a1 + 608) = 0x40E0000040C00000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x4220000041200000;
  *(a1 + 664) = 0x3FC000003E99999ALL;
  *(a1 + 672) = 0x40C0000040400000;
  *(a1 + 688) = _Q0;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F0000003E99999ALL;
  *(a1 + 720) = 0x41D0000041A00000;
  *(a1 + 728) = 1090848520;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF4C202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE798E0;
  *(a1 + 800) = 9;
  *(a1 + 816) = _Q0;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F4CCCCD3ECCCCCDLL;
  *(a1 + 848) = 0x41A5999A418A0000;
  *(a1 + 856) = 1089680179;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3F4B0;
  *(a1 + 896) = 0xD000000000000010;
  *(a1 + 904) = 0x80000001BCE79860;
  *(a1 + 912) = 0xD000000000000014;
  *(a1 + 920) = 0x80000001BCE79880;
  *(a1 + 928) = 6;
  *(a1 + 944) = _Q0;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3ECCCCCD3E99999ALL;
  *(a1 + 976) = 0x4180000041400000;
  *(a1 + 984) = 1080047440;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3F4C0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004C202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4C656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = _Q0;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F3333333F19999ALL;
  *(a1 + 1104) = 0x4140000040A00000;
  *(a1 + 1112) = 1079971488;
  *(a1 + 1120) = 0;
  *(a1 + 1128) = 5;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x7970736957;
  *(a1 + 1160) = 0xE500000000000000;
  strcpy((a1 + 1168), "Wispy_Single");
  *(a1 + 1181) = 0;
  *(a1 + 1182) = -5120;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = _Q0;
  *(a1 + 1216) = xmmword_1BCE61D40;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x73757461727453;
  *(a1 + 1248) = 0xE700000000000000;
  *(a1 + 1256) = 0x5F73757461727453;
  *(a1 + 1264) = 0xEF74656B6E616C42;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400C28F63F88F5C2;
  *(a1 + 1296) = 0x41A0000042B40000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = _Q0;
  *(a1 + 1328) = _Q0;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 2;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x42DC000042B40000;
  *(a1 + 1472) = _Q0;
  *(a1 + 1488) = _Q0;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = _Q0;
  *(a1 + 1552) = xmmword_1BCE3F4F0;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V2.2S, #-30.0 }

  *(a1 + 1616) = -_D2;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1628) = 0;
  *(a1 + 1630) = 1;
  *(a1 + 1639) = 0;
  *(a1 + 1631) = 0;
  *(a1 + 1641) = 1;
  *(v2 + 206) = 0;
  *(v2 + 210) = 65793;
  *(a1 + 1650) = 257;
  *(a1 + 1652) = 2;
  *(a1 + 1656) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1744) = 0u;
  *(a1 + 1760) = 9;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE3C060;
  *(a1 + 1844) = 1040187392;
  *(a1 + 1848) = 0x4100000041700000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 0x40000000;
  *(a1 + 1872) = 0x408000003F400000;
  *(a1 + 1880) = 1109393408;
  *(a1 + 1888) = _Q0;
  *(a1 + 1904) = 0x3DCCCCCD00000000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107820544;
  *(a1 + 1936) = _Q0;
  *(a1 + 1952) = 1077936128;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE403A0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x407333333FB33333;
  *(a1 + 2008) = 0x408000004019999ALL;
  *(a1 + 2016) = xmmword_1BCE3C7E0;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3F4CCCCD3F19999ALL;
  *(a1 + 2128) = 0x404CCCCD3FA3D70ALL;
  *(a1 + 2136) = 0x4122666640F8F5C2;
  *(a1 + 2144) = -1039453911;
  *(a1 + 2160) = _Q0;
  *(a1 + 2176) = _Q0;
  *(a1 + 2192) = 1048712505;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = _Q0;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
}

uint64_t WeatherDescription.init(format:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_22_23(a1, a2, a3);
  OUTLINED_FUNCTION_107();
  v9 = sub_1BC9807F0(v5, v4, v3);
  v11 = v10;

  *v6 = v7;
  v6[1] = v8;
  v6[2] = v9;
  v6[3] = v11;
  return result;
}

WeatherUI::WeatherDescription __swiftcall WeatherDescription.init(stringLiteral:)(Swift::String stringLiteral)
{
  object = stringLiteral._object;
  countAndFlagsBits = stringLiteral._countAndFlagsBits;
  v4 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD078E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BCE3E050;
  *(inited + 32) = countAndFlagsBits;
  *(inited + 40) = object;
  *(inited + 48) = 0;
  *(inited + 56) = 0;
  *(inited + 64) = 1;
  v6 = OUTLINED_FUNCTION_17_26();
  v8 = sub_1BC97FC70(v6, v7, inited);
  v10 = v9;
  v11 = OUTLINED_FUNCTION_17_26();
  v13 = sub_1BC9807F0(v11, v12, inited);
  v15 = v14;
  swift_setDeallocating();
  v16 = sub_1BC9811E0();
  *v4 = v8;
  v4[1] = v10;
  v4[2] = v13;
  v4[3] = v15;
  result.markdown._object = v19;
  result.markdown._countAndFlagsBits = v18;
  result.string._object = v17;
  result.string._countAndFlagsBits = v16;
  return result;
}

uint64_t static WeatherDescription.Argument.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v76[0] = *a1;
  v76[1] = v3;
  v76[2] = v5;
  v76[3] = v4;
  v77 = v6;
  v78 = v7;
  v79 = v8;
  v80 = v10;
  v81 = v9;
  v82 = v11;
  switch(v6)
  {
    case 1:
      if (v11 != 1)
      {
        goto LABEL_38;
      }

      if (v2 != v7 || v3 != v8)
      {
        OUTLINED_FUNCTION_62();
        v14 = OUTLINED_FUNCTION_11_36();
        v30 = OUTLINED_FUNCTION_3_70();
        sub_1BCD03FD4(v30, v31, v32, v33, 1u);
        v19 = OUTLINED_FUNCTION_2_77();
        v23 = 1;
        goto LABEL_24;
      }

      v12 = 1;
      OUTLINED_FUNCTION_62();
      OUTLINED_FUNCTION_8_52();
      sub_1BCD03FD4(v64, v65, v66, v67, 1u);
      v68 = OUTLINED_FUNCTION_2_77();
      sub_1BCD03FD4(v68, v69, v70, v71, 1u);
      sub_1BC94C0B4(v76, &qword_1EBD0C7E0);
      return v12;
    case 2:
      if (v11 != 2)
      {
        goto LABEL_38;
      }

      if (v2 != v7 || v3 != v8)
      {
        v14 = OUTLINED_FUNCTION_11_36();
        v15 = OUTLINED_FUNCTION_3_70();
        sub_1BCD03FD4(v15, v16, v17, v18, 2u);
        v19 = OUTLINED_FUNCTION_2_77();
        v23 = 2;
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_8_52();
      sub_1BCD03FD4(v51, v52, v53, v54, 2u);
      v55 = OUTLINED_FUNCTION_2_77();
      v59 = 2;
      goto LABEL_47;
    case 3:
      if (v11 != 3)
      {
        goto LABEL_38;
      }

      if (v2 == v7 && v3 == v8)
      {
        OUTLINED_FUNCTION_8_52();
        sub_1BCD03FD4(v60, v61, v62, v63, 3u);
        v55 = OUTLINED_FUNCTION_2_77();
        v59 = 3;
        goto LABEL_47;
      }

      v14 = OUTLINED_FUNCTION_11_36();
      v25 = OUTLINED_FUNCTION_3_70();
      sub_1BCD03FD4(v25, v26, v27, v28, 3u);
      v19 = OUTLINED_FUNCTION_2_77();
      v23 = 3;
LABEL_24:
      sub_1BCD03FD4(v19, v20, v21, v22, v23);
      sub_1BC94C0B4(v76, &qword_1EBD0C7E0);
      return v14 & 1;
    case 4:
      if (v11 == 4)
      {
        goto LABEL_5;
      }

      goto LABEL_39;
    case 5:
      if (v11 != 5)
      {

LABEL_38:

LABEL_39:
        v46 = OUTLINED_FUNCTION_3_70();
        v50 = v11;
        goto LABEL_40;
      }

      if (v2 != v7 || v3 != v8)
      {
        OUTLINED_FUNCTION_62();
        if ((OUTLINED_FUNCTION_11_36() & 1) == 0)
        {
          v72 = OUTLINED_FUNCTION_3_70();
          sub_1BCD03FD4(v72, v73, v74, v75, 5u);
          v46 = OUTLINED_FUNCTION_2_77();
          v50 = 5;
LABEL_40:
          sub_1BCD03FD4(v46, v47, v48, v49, v50);
          sub_1BC94C0B4(v76, &qword_1EBD0C7E0);
          return 0;
        }
      }

      if (v5 == v10 && v4 == v9)
      {
        sub_1BCD03FD4(v7, v8, v5, v4, 5u);
        v55 = OUTLINED_FUNCTION_2_77();
        v59 = 5;
LABEL_47:
        sub_1BCD03FD4(v55, v56, v57, v58, v59);
        sub_1BC94C0B4(v76, &qword_1EBD0C7E0);
        return 1;
      }

      OUTLINED_FUNCTION_8_52();
      v37 = sub_1BCE1E090();
      v38 = OUTLINED_FUNCTION_3_70();
      sub_1BCD03FD4(v38, v39, v40, v41, 5u);
      v42 = OUTLINED_FUNCTION_2_77();
      sub_1BCD03FD4(v42, v43, v44, v45, 5u);
      sub_1BC94C0B4(v76, &qword_1EBD0C7E0);
      return (v37 & 1) != 0;
    default:
      if (v11)
      {
        goto LABEL_39;
      }

LABEL_5:
      sub_1BC94C0B4(v76, &qword_1EBD0C7E0);
      return v2 == v7;
  }
}

uint64_t static WeatherDescription.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_1BCE1E090(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1BCE1E090();
    }
  }

  return result;
}

uint64_t sub_1BCD02418(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x75526C6172756C70 && a2 == 0xEA0000000000656CLL;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6D6572757361656DLL && a2 == 0xEB00000000746E65;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1701669236 && a2 == 0xE400000000000000;
        if (v8 || (sub_1BCE1E090() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x72656765746E69 && a2 == 0xE700000000000000;
          if (v9 || (sub_1BCE1E090() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69)
          {

            return 5;
          }

          else
          {
            v11 = sub_1BCE1E090();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1BCD0260C(char a1)
{
  result = 0x75526C6172756C70;
  switch(a1)
  {
    case 1:
      result = 0x676E69727473;
      break;
    case 2:
      result = 0x6D6572757361656DLL;
      break;
    case 3:
      result = 1701669236;
      break;
    case 4:
      result = 0x72656765746E69;
      break;
    case 5:
      result = 0x7470697263736564;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCD026D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCD02418(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCD026F8(uint64_t a1)
{
  v2 = sub_1BCD0403C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD02734(uint64_t a1)
{
  v2 = sub_1BCD0403C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD02770(uint64_t a1)
{
  v2 = sub_1BCD04090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD027AC(uint64_t a1)
{
  v2 = sub_1BCD04090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD027E8(uint64_t a1)
{
  v2 = sub_1BCD04138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD02824(uint64_t a1)
{
  v2 = sub_1BCD04138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD02860(uint64_t a1)
{
  v2 = sub_1BCD041E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD0289C(uint64_t a1)
{
  v2 = sub_1BCD041E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD028D8(uint64_t a1)
{
  v2 = sub_1BCD04288();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD02914(uint64_t a1)
{
  v2 = sub_1BCD04288();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD02950(uint64_t a1)
{
  v2 = sub_1BCD04234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD0298C(uint64_t a1)
{
  v2 = sub_1BCD04234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD029C8(uint64_t a1)
{
  v2 = sub_1BCD0418C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD02A04(uint64_t a1)
{
  v2 = sub_1BCD0418C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WeatherDescription.Argument.encode(to:)()
{
  OUTLINED_FUNCTION_18_0();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C7E8);
  OUTLINED_FUNCTION_2();
  v56 = v4;
  v57 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_16();
  v55 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C7F0);
  OUTLINED_FUNCTION_2();
  v53 = v8;
  v54 = v7;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_16();
  v52 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C7F8);
  OUTLINED_FUNCTION_2();
  v50 = v12;
  v51 = v11;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_16();
  v49 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C800);
  OUTLINED_FUNCTION_2();
  v47 = v16;
  v48 = v15;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_10_16();
  v46 = v18;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C808);
  OUTLINED_FUNCTION_2();
  v44 = v19;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C810);
  OUTLINED_FUNCTION_2();
  v43 = v24;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v41 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C818);
  OUTLINED_FUNCTION_2();
  v60 = v29;
  v61 = v28;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v41 - v31;
  v33 = *v0;
  v58 = v0[1];
  v59 = v33;
  v34 = v0[3];
  v42 = v0[2];
  v41 = v34;
  v35 = *(v0 + 32);
  v36 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BCD0403C();
  sub_1BCE1E170();
  switch(v35)
  {
    case 1:
      LOBYTE(v62) = 1;
      sub_1BCD04234();
      OUTLINED_FUNCTION_4_60();
      v40 = v45;
      sub_1BCE1DFD0();
      (*(v44 + 8))(v22, v40);
      break;
    case 2:
      LOBYTE(v62) = 2;
      sub_1BCD041E0();
      v37 = v46;
      OUTLINED_FUNCTION_4_60();
      v38 = v48;
      OUTLINED_FUNCTION_18_23();
      sub_1BCE1DFD0();
      v39 = v47;
      goto LABEL_8;
    case 3:
      LOBYTE(v62) = 3;
      sub_1BCD0418C();
      v37 = v49;
      OUTLINED_FUNCTION_4_60();
      v38 = v51;
      OUTLINED_FUNCTION_18_23();
      sub_1BCE1DFD0();
      v39 = v50;
      goto LABEL_8;
    case 4:
      LOBYTE(v62) = 4;
      sub_1BCD04138();
      v37 = v52;
      OUTLINED_FUNCTION_4_60();
      v38 = v54;
      OUTLINED_FUNCTION_18_23();
      sub_1BCE1E010();
      v39 = v53;
      goto LABEL_8;
    case 5:
      LOBYTE(v62) = 5;
      sub_1BCD04090();
      v37 = v55;
      OUTLINED_FUNCTION_4_60();
      v62 = v59;
      v63 = v58;
      v64 = v42;
      v65 = v41;
      sub_1BCD040E4();
      v38 = v57;
      OUTLINED_FUNCTION_18_23();
      sub_1BCE1E020();
      v39 = v56;
LABEL_8:
      (*(v39 + 8))(v37, v38);
      break;
    default:
      LOBYTE(v62) = 0;
      sub_1BCD04288();
      OUTLINED_FUNCTION_4_60();
      sub_1BCE1E010();
      (*(v43 + 8))(v27, v23);
      break;
  }

  (*(v60 + 8))(v32, v36);
  OUTLINED_FUNCTION_17_1();
}

void WeatherDescription.Argument.init(from:)()
{
  OUTLINED_FUNCTION_18_0();
  v2 = v1;
  v85 = v3;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C860);
  OUTLINED_FUNCTION_2();
  v82 = v4;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_16();
  v88 = v6;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C868);
  OUTLINED_FUNCTION_2();
  v81 = v7;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_16();
  v87 = v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C870);
  OUTLINED_FUNCTION_2();
  v80 = v10;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10_16();
  v84 = v12;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C878);
  OUTLINED_FUNCTION_2();
  v79 = v13;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_10_16();
  v83 = v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C880);
  OUTLINED_FUNCTION_2();
  v78 = v16;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68[-v18];
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C888);
  OUTLINED_FUNCTION_2();
  v77 = v21;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v68[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C890);
  OUTLINED_FUNCTION_2();
  v27 = v26;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v68[-v29];
  v31 = v2[3];
  v89 = v2;
  __swift_project_boxed_opaque_existential_1(v2, v31);
  sub_1BCD0403C();
  sub_1BCE1E160();
  if (v0)
  {
    goto LABEL_8;
  }

  v71 = v24;
  v70 = v20;
  v72 = v19;
  v32 = v86;
  v94 = v27;
  v33 = sub_1BCE1DF80();
  v37 = sub_1BCA24D28(v33, 0);
  if (v35 == v36 >> 1)
  {
LABEL_7:
    v45 = sub_1BCE1DD90();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07C50);
    *v47 = &type metadata for WeatherDescription.Argument;
    sub_1BCE1DEE0();
    sub_1BCE1DD80();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    v48 = OUTLINED_FUNCTION_1_73();
    v49(v48);
LABEL_8:
    __swift_destroy_boxed_opaque_existential_1(v89);
LABEL_9:
    OUTLINED_FUNCTION_17_1();
    return;
  }

  if (v35 < (v36 >> 1))
  {
    v38 = 0;
    v69 = *(v34 + v35);
    v39 = sub_1BCA24D24(v35 + 1, v36 >> 1, v37, v34, v35, v36);
    v41 = v40;
    v43 = v42;
    swift_unknownObjectRelease();
    if (v41 == v43 >> 1)
    {
      v44 = v85;
      switch(v69)
      {
        case 1:
          LOBYTE(v90) = 1;
          sub_1BCD04234();
          v32 = v72;
          OUTLINED_FUNCTION_6_54();
          v38 = 0;
          sub_1BCE1DF20();
          OUTLINED_FUNCTION_12_42();
          OUTLINED_FUNCTION_107();
          swift_unknownObjectRelease();
          v60 = OUTLINED_FUNCTION_9_46();
          v61(v60);
          (*(v94 + 8))(v30, v25);
          v62 = 0;
          v63 = 0;
          v39 = v89;
          goto LABEL_17;
        case 2:
          LOBYTE(v90) = 2;
          sub_1BCD041E0();
          v32 = v83;
          OUTLINED_FUNCTION_6_54();
          OUTLINED_FUNCTION_15_32();
          sub_1BCE1DF20();
          OUTLINED_FUNCTION_12_42();
          OUTLINED_FUNCTION_107();
          swift_unknownObjectRelease();
          goto LABEL_15;
        case 3:
          LOBYTE(v90) = 3;
          sub_1BCD0418C();
          OUTLINED_FUNCTION_6_54();
          OUTLINED_FUNCTION_15_32();
          sub_1BCE1DF20();
          OUTLINED_FUNCTION_12_42();
          OUTLINED_FUNCTION_107();
          swift_unknownObjectRelease();
LABEL_15:
          v51 = OUTLINED_FUNCTION_9_46();
          v52(v51);
          v53 = OUTLINED_FUNCTION_1_73();
          v54(v53);
          v62 = 0;
          v63 = 0;
          goto LABEL_17;
        case 4:
          LOBYTE(v90) = 4;
          sub_1BCD04138();
          OUTLINED_FUNCTION_6_54();
          OUTLINED_FUNCTION_15_32();
          OUTLINED_FUNCTION_20_22();
          sub_1BCE1DF60();
          OUTLINED_FUNCTION_12_42();
          v38 = v50;
          swift_unknownObjectRelease();
          goto LABEL_16;
        case 5:
          v87 = v39;
          LOBYTE(v90) = 5;
          sub_1BCD04090();
          sub_1BCE1DED0();
          OUTLINED_FUNCTION_15_32();
          sub_1BCD042DC();
          sub_1BCE1DF70();
          OUTLINED_FUNCTION_12_42();
          swift_unknownObjectRelease();
          v64 = OUTLINED_FUNCTION_21_22();
          v65(v64);
          v66 = OUTLINED_FUNCTION_1_73();
          v67(v66);
          v38 = v90;
          v32 = v91;
          v62 = v92;
          v63 = v93;
          goto LABEL_17;
        default:
          LOBYTE(v90) = 0;
          sub_1BCD04288();
          OUTLINED_FUNCTION_6_54();
          OUTLINED_FUNCTION_15_32();
          OUTLINED_FUNCTION_20_22();
          sub_1BCE1DF60();
          OUTLINED_FUNCTION_12_42();
          v38 = v55;
          swift_unknownObjectRelease();
LABEL_16:
          v56 = OUTLINED_FUNCTION_18_1();
          v57(v56);
          v58 = OUTLINED_FUNCTION_1_73();
          v59(v58);
          v32 = 0;
          v62 = 0;
          v63 = 0;
          v44 = v85;
LABEL_17:
          *v44 = v38;
          *(v44 + 8) = v32;
          *(v44 + 16) = v62;
          *(v44 + 24) = v63;
          *(v44 + 32) = v69;
          __swift_destroy_boxed_opaque_existential_1(v39);
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

WeatherUI::WeatherDescription __swiftcall WeatherDescription.init(format:arguments:)(Swift::String format, Swift::OpaquePointer arguments)
{
  *v5 = OUTLINED_FUNCTION_22_23(format._countAndFlagsBits, format._object, arguments._rawValue);
  v5[1] = v6;
  v7 = sub_1BC9807F0(v4, v3, v2);
  v9 = v8;

  v5[2] = v7;
  v5[3] = v9;
  result.markdown._object = v13;
  result.markdown._countAndFlagsBits = v12;
  result.string._object = v11;
  result.string._countAndFlagsBits = v10;
  return result;
}

uint64_t sub_1BCD03A94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v4 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E776F646B72616DLL && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1BCE1E090();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1BCD03B58(char a1)
{
  if (a1)
  {
    return 0x6E776F646B72616DLL;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t sub_1BCD03B94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCD03A94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCD03BBC(uint64_t a1)
{
  v2 = sub_1BCD04330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD03BF8(uint64_t a1)
{
  v2 = sub_1BCD04330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WeatherDescription.encode(to:)()
{
  OUTLINED_FUNCTION_18_0();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C8A0);
  OUTLINED_FUNCTION_2();
  v11 = v5;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v10 - v7;
  v9 = *(v0 + 16);
  v10[1] = *(v0 + 24);
  v10[2] = v9;
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  sub_1BCD04330();
  sub_1BCE1E170();
  sub_1BCE1DFD0();
  if (!v1)
  {
    sub_1BCE1DFD0();
  }

  (*(v11 + 8))(v8, v4);
  OUTLINED_FUNCTION_17_1();
}

void WeatherDescription.init(from:)()
{
  OUTLINED_FUNCTION_18_0();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C8B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1BCD04330();
  sub_1BCE1E160();
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  else
  {
    OUTLINED_FUNCTION_20_22();
    v6 = sub_1BCE1DF20();
    v8 = v7;
    OUTLINED_FUNCTION_20_22();
    v9 = sub_1BCE1DF20();
    v11 = v10;
    v14 = v9;
    v12 = OUTLINED_FUNCTION_18_1();
    v13(v12);
    *v4 = v6;
    v4[1] = v8;
    v4[2] = v14;
    v4[3] = v11;

    __swift_destroy_boxed_opaque_existential_1(v2);
  }

  OUTLINED_FUNCTION_17_1();
}

uint64_t WeatherDescription.description.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1BCD03FD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 >= 3)
  {
    if (a5 != 5)
    {
      return result;
    }
  }
}

unint64_t sub_1BCD0403C()
{
  result = qword_1EBD0C820;
  if (!qword_1EBD0C820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C820);
  }

  return result;
}

unint64_t sub_1BCD04090()
{
  result = qword_1EBD0C828;
  if (!qword_1EBD0C828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C828);
  }

  return result;
}

unint64_t sub_1BCD040E4()
{
  result = qword_1EBD0C830;
  if (!qword_1EBD0C830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C830);
  }

  return result;
}

unint64_t sub_1BCD04138()
{
  result = qword_1EBD0C838;
  if (!qword_1EBD0C838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C838);
  }

  return result;
}

unint64_t sub_1BCD0418C()
{
  result = qword_1EBD0C840;
  if (!qword_1EBD0C840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C840);
  }

  return result;
}

unint64_t sub_1BCD041E0()
{
  result = qword_1EBD0C848;
  if (!qword_1EBD0C848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C848);
  }

  return result;
}

unint64_t sub_1BCD04234()
{
  result = qword_1EBD0C850;
  if (!qword_1EBD0C850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C850);
  }

  return result;
}

unint64_t sub_1BCD04288()
{
  result = qword_1EBD0C858;
  if (!qword_1EBD0C858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C858);
  }

  return result;
}

unint64_t sub_1BCD042DC()
{
  result = qword_1EBD0C898;
  if (!qword_1EBD0C898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C898);
  }

  return result;
}

unint64_t sub_1BCD04330()
{
  result = qword_1EBD0C8A8;
  if (!qword_1EBD0C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C8A8);
  }

  return result;
}

unint64_t sub_1BCD04388()
{
  result = qword_1EBD0C8B8;
  if (!qword_1EBD0C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C8B8);
  }

  return result;
}

unint64_t sub_1BCD043EC()
{
  result = qword_1EBD0C8C0;
  if (!qword_1EBD0C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C8C0);
  }

  return result;
}

uint64_t sub_1BCD04458(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 33))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BCD04498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDescription.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDescription.Argument.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1BCD046F0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BCD047A0()
{
  result = qword_1EBD0C8C8;
  if (!qword_1EBD0C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C8C8);
  }

  return result;
}

unint64_t sub_1BCD047F8()
{
  result = qword_1EBD0C8D0;
  if (!qword_1EBD0C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C8D0);
  }

  return result;
}

unint64_t sub_1BCD04850()
{
  result = qword_1EBD0C8D8;
  if (!qword_1EBD0C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C8D8);
  }

  return result;
}

unint64_t sub_1BCD048A8()
{
  result = qword_1EBD0C8E0;
  if (!qword_1EBD0C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C8E0);
  }

  return result;
}

unint64_t sub_1BCD04900()
{
  result = qword_1EBD0C8E8;
  if (!qword_1EBD0C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C8E8);
  }

  return result;
}

unint64_t sub_1BCD04958()
{
  result = qword_1EBD0C8F0;
  if (!qword_1EBD0C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C8F0);
  }

  return result;
}

unint64_t sub_1BCD049B0()
{
  result = qword_1EBD0C8F8;
  if (!qword_1EBD0C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C8F8);
  }

  return result;
}

unint64_t sub_1BCD04A08()
{
  result = qword_1EBD0C900;
  if (!qword_1EBD0C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C900);
  }

  return result;
}

unint64_t sub_1BCD04A60()
{
  result = qword_1EBD0C908;
  if (!qword_1EBD0C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C908);
  }

  return result;
}

unint64_t sub_1BCD04AB8()
{
  result = qword_1EBD0C910;
  if (!qword_1EBD0C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C910);
  }

  return result;
}

unint64_t sub_1BCD04B10()
{
  result = qword_1EBD0C918;
  if (!qword_1EBD0C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C918);
  }

  return result;
}

unint64_t sub_1BCD04B68()
{
  result = qword_1EBD0C920;
  if (!qword_1EBD0C920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C920);
  }

  return result;
}

unint64_t sub_1BCD04BC0()
{
  result = qword_1EBD0C928;
  if (!qword_1EBD0C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C928);
  }

  return result;
}

unint64_t sub_1BCD04C18()
{
  result = qword_1EBD0C930;
  if (!qword_1EBD0C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C930);
  }

  return result;
}

unint64_t sub_1BCD04C70()
{
  result = qword_1EBD0C938;
  if (!qword_1EBD0C938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C938);
  }

  return result;
}

unint64_t sub_1BCD04CC8()
{
  result = qword_1EBD0C940;
  if (!qword_1EBD0C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C940);
  }

  return result;
}

unint64_t sub_1BCD04D20()
{
  result = qword_1EBD0C948;
  if (!qword_1EBD0C948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C948);
  }

  return result;
}

unint64_t sub_1BCD04D78()
{
  result = qword_1EBD0C950;
  if (!qword_1EBD0C950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C950);
  }

  return result;
}

unint64_t sub_1BCD04DD0()
{
  result = qword_1EBD0C958;
  if (!qword_1EBD0C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C958);
  }

  return result;
}

unint64_t sub_1BCD04E28()
{
  result = qword_1EBD0C960;
  if (!qword_1EBD0C960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C960);
  }

  return result;
}

unint64_t sub_1BCD04E80()
{
  result = qword_1EBD0C968;
  if (!qword_1EBD0C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C968);
  }

  return result;
}

unint64_t sub_1BCD04ED8()
{
  result = qword_1EBD0C970;
  if (!qword_1EBD0C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C970);
  }

  return result;
}

unint64_t sub_1BCD04F30()
{
  result = qword_1EBD0C978;
  if (!qword_1EBD0C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C978);
  }

  return result;
}

unint64_t sub_1BCD04F88()
{
  result = qword_1EBD0C980;
  if (!qword_1EBD0C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C980);
  }

  return result;
}

uint64_t sub_1BCD04FDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 >= 3)
  {
    if (a5 != 5)
    {
      return result;
    }
  }
}

WeatherUI::SkyGradientTableType_optional __swiftcall SkyGradientTableType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BCE1DEC0();

  v5 = 15;
  if (v3 < 0xF)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SkyGradientTableType.rawValue.getter()
{
  result = 0x5F746C7561666564;
  switch(*v0)
  {
    case 3:
      result = 1953723748;
      break;
    case 4:
      result = 1702519144;
      break;
    case 5:
      result = 0x6E61636972727568;
      break;
    case 6:
    case 7:
    case 8:
      result = 0x747361637265766FLL;
      break;
    case 9:
      result = 1852399986;
      break;
    case 0xA:
      v2 = 1852399986;
      goto LABEL_11;
    case 0xB:
      result = 0x796B6F6D73;
      break;
    case 0xC:
      result = 2003791475;
      break;
    case 0xD:
      v2 = 2003791475;
LABEL_11:
      result = v2 | 0x7661656800000000;
      break;
    case 0xE:
      result = 0x6F64616E726F74;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCD0523C@<X0>(uint64_t *a1@<X8>)
{
  result = SkyGradientTableType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BCD05328()
{
  result = qword_1EBD0C988;
  if (!qword_1EBD0C988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C988);
  }

  return result;
}

unint64_t sub_1BCD05380()
{
  result = qword_1EBD0C990;
  if (!qword_1EBD0C990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD0C998);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C990);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SkyGradientTableType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF2)
  {
    if (a2 + 14 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 14) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 15;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v5 = v6 - 15;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SkyGradientTableType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF2)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF1)
  {
    v6 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 14;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BCD05548()
{
  result = qword_1EBD0C9A0;
  if (!qword_1EBD0C9A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C9A0);
  }

  return result;
}

uint64_t WeatherConditionBackgroundOptions.DisplayLocation.hashValue.getter()
{
  v1 = *v0;
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

BOOL WeatherConditionBackgroundOptions.DisplayLocation.canDisplayForegroundEffects.getter()
{
  if (*v0)
  {
    v1 = *v0 == 3;
  }

  else
  {
    v1 = 1;
  }

  return !v1;
}

unint64_t sub_1BCD0567C()
{
  result = qword_1EBD0C9A8;
  if (!qword_1EBD0C9A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C9A8);
  }

  return result;
}

uint64_t sub_1BCD056D8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 89))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BCD05718(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 89) = 1;
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

    *(result + 89) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherConditionBackgroundOptions.DisplayLocation(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BCD05880(uint64_t a1)
{
  sub_1BCE1E100();
  sub_1BC98C988(v3, a1);
  return sub_1BCE1E150();
}

void Measurement.formatted<A>(_:placeholder:unitManager:tag:)(char *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X7>, uint64_t a5@<X8>, uint64_t a6)
{
  v16 = a2;
  v17 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A48);
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  v13 = *a1;
  v19[1] = *a1;
  sub_1BCA18428();
  v14 = sub_1BCE18AF0();
  if (__swift_getEnumTagSinglePayload(v12, 1, v14) == 1)
  {
    sub_1BCD05A60(v12);
    v19[0] = v13;
    (*(a6 + 32))(v6, v19, v16, v17, a4, a6);
    v18 = v13;
    sub_1BCA18628();
  }

  else
  {
    (*(*(v14 - 8) + 32))(a5, v12, v14);
  }
}

uint64_t sub_1BCD05A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD09A48);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCD05AC8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6144656C62756F64 && a2 == 0xEA00000000006873;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E45656C62756F64 && a2 == 0xEC00000068736144;
      if (v7 || (sub_1BCE1E090() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6B6E616C62 && a2 == 0xE500000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1BCE1E090();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

uint64_t sub_1BCD05C28(char a1)
{
  result = 1701736302;
  switch(a1)
  {
    case 1:
      result = 0x6144656C62756F64;
      break;
    case 2:
      result = 0x6E45656C62756F64;
      break;
    case 3:
      result = 0x6B6E616C62;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BCD05CAC(uint64_t a1)
{
  v2 = sub_1BCD06344();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD05CE8(uint64_t a1)
{
  v2 = sub_1BCD06344();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD05D2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCD05AC8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCD05D54(uint64_t a1)
{
  v2 = sub_1BCD062F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD05D90(uint64_t a1)
{
  v2 = sub_1BCD062F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD05DCC(uint64_t a1)
{
  v2 = sub_1BCD063EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD05E08(uint64_t a1)
{
  v2 = sub_1BCD063EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD05E44(uint64_t a1)
{
  v2 = sub_1BCD06398();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD05E80(uint64_t a1)
{
  v2 = sub_1BCD06398();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BCD05EBC(uint64_t a1)
{
  v2 = sub_1BCD06440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD05EF8(uint64_t a1)
{
  v2 = sub_1BCD06440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherFormatPlaceholder.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C9B0);
  OUTLINED_FUNCTION_2();
  v40 = v4;
  v41 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_16();
  v39 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C9B8);
  OUTLINED_FUNCTION_2();
  v37 = v8;
  v38 = v7;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_10_16();
  v36 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C9C0);
  OUTLINED_FUNCTION_2();
  v34 = v12;
  v35 = v11;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_10_16();
  v33 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C9C8);
  OUTLINED_FUNCTION_2();
  v31 = v16;
  v32 = v15;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0C9D0);
  OUTLINED_FUNCTION_2();
  v22 = v21;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v31 - v24;
  v26 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCD062F0();
  sub_1BCE1E170();
  switch(v26)
  {
    case 1:
      v43 = 1;
      sub_1BCD063EC();
      v27 = v33;
      OUTLINED_FUNCTION_3_71();
      v29 = v34;
      v28 = v35;
      goto LABEL_6;
    case 2:
      v44 = 2;
      sub_1BCD06398();
      v27 = v36;
      OUTLINED_FUNCTION_3_71();
      v29 = v37;
      v28 = v38;
      goto LABEL_6;
    case 3:
      v45 = 3;
      sub_1BCD06344();
      v27 = v39;
      OUTLINED_FUNCTION_3_71();
      v29 = v40;
      v28 = v41;
LABEL_6:
      (*(v29 + 8))(v27, v28);
      break;
    default:
      v42 = 0;
      sub_1BCD06440();
      sub_1BCE1DF90();
      (*(v31 + 8))(v19, v32);
      break;
  }

  return (*(v22 + 8))(v25, v20);
}

unint64_t sub_1BCD062F0()
{
  result = qword_1EBD0C9D8;
  if (!qword_1EBD0C9D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C9D8);
  }

  return result;
}

unint64_t sub_1BCD06344()
{
  result = qword_1EBD0C9E0;
  if (!qword_1EBD0C9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C9E0);
  }

  return result;
}

unint64_t sub_1BCD06398()
{
  result = qword_1EBD0C9E8;
  if (!qword_1EBD0C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C9E8);
  }

  return result;
}

unint64_t sub_1BCD063EC()
{
  result = qword_1EBD0C9F0;
  if (!qword_1EBD0C9F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C9F0);
  }

  return result;
}

unint64_t sub_1BCD06440()
{
  result = qword_1EBD0C9F8;
  if (!qword_1EBD0C9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0C9F8);
  }

  return result;
}

uint64_t WeatherFormatPlaceholder.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v65 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CA00);
  OUTLINED_FUNCTION_2();
  v64 = v3;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_16();
  v67 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CA08);
  OUTLINED_FUNCTION_2();
  v61 = v7;
  v62 = v6;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_10_16();
  v63 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CA10);
  OUTLINED_FUNCTION_2();
  v59 = v11;
  v60 = v10;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CA18);
  OUTLINED_FUNCTION_2();
  v58 = v16;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD0CA20);
  OUTLINED_FUNCTION_2();
  v66 = v21;
  OUTLINED_FUNCTION_7_0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v52 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BCD062F0();
  v25 = v69;
  sub_1BCE1E160();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v55 = v15;
  v56 = v19;
  v57 = v14;
  v26 = v67;
  v27 = v68;
  v69 = a1;
  v28 = v24;
  v29 = sub_1BCE1DF80();
  result = sub_1BCA24D28(v29, 0);
  if (v32 == v33 >> 1)
  {
    goto LABEL_8;
  }

  v54 = 0;
  if (v32 >= (v33 >> 1))
  {
    __break(1u);
    return result;
  }

  v34 = *(v31 + v32);
  sub_1BCA24D24(v32 + 1, v33 >> 1, result, v31, v32, v33);
  v36 = v35;
  v38 = v37;
  swift_unknownObjectRelease();
  if (v36 != v38 >> 1)
  {
LABEL_8:
    v44 = v66;
    v45 = sub_1BCE1DD90();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07C50);
    *v47 = &type metadata for WeatherFormatPlaceholder;
    sub_1BCE1DEE0();
    sub_1BCE1DD80();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v44 + 8))(v28, v20);
    a1 = v69;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v39 = v65;
  v40 = v66;
  v53 = v34;
  v41 = v34;
  v42 = v64;
  switch(v41)
  {
    case 1:
      v71 = 1;
      sub_1BCD063EC();
      v48 = v57;
      OUTLINED_FUNCTION_2_78();
      swift_unknownObjectRelease();
      v50 = v59;
      v49 = v60;
      goto LABEL_18;
    case 2:
      v72 = 2;
      sub_1BCD06398();
      v48 = v63;
      OUTLINED_FUNCTION_2_78();
      swift_unknownObjectRelease();
      v50 = v61;
      v49 = v62;
LABEL_18:
      (*(v50 + 8))(v48, v49);
      goto LABEL_19;
    case 3:
      v73 = 3;
      sub_1BCD06344();
      v51 = v54;
      sub_1BCE1DED0();
      if (v51)
      {
        (*(v40 + 8))(v28, v20);
        swift_unknownObjectRelease();
        a1 = v69;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      swift_unknownObjectRelease();
      (*(v42 + 8))(v26, v27);
LABEL_19:
      (*(v40 + 8))(v28, v20);
      *v39 = v53;
      result = __swift_destroy_boxed_opaque_existential_1(v69);
      break;
    default:
      v70 = 0;
      sub_1BCD06440();
      v43 = v56;
      OUTLINED_FUNCTION_2_78();
      swift_unknownObjectRelease();
      (*(v58 + 8))(v43, v55);
      goto LABEL_19;
  }

  return result;
}

uint64_t sub_1BCD06AF4()
{
  v1 = *v0;
  sub_1BCE1E100();
  MEMORY[0x1BFB30850](v1);
  return sub_1BCE1E150();
}

unint64_t sub_1BCD06B40()
{
  result = qword_1EBD0CA28;
  if (!qword_1EBD0CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CA28);
  }

  return result;
}

unint64_t sub_1BCD06B98()
{
  result = qword_1EBD0CA30;
  if (!qword_1EBD0CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CA30);
  }

  return result;
}

_BYTE *sub_1BCD06C00(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BCD06D20()
{
  result = qword_1EBD0CA38;
  if (!qword_1EBD0CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CA38);
  }

  return result;
}

unint64_t sub_1BCD06D78()
{
  result = qword_1EBD0CA40;
  if (!qword_1EBD0CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CA40);
  }

  return result;
}

unint64_t sub_1BCD06DD0()
{
  result = qword_1EBD0CA48;
  if (!qword_1EBD0CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CA48);
  }

  return result;
}

unint64_t sub_1BCD06E28()
{
  result = qword_1EBD0CA50;
  if (!qword_1EBD0CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CA50);
  }

  return result;
}

unint64_t sub_1BCD06E80()
{
  result = qword_1EBD0CA58;
  if (!qword_1EBD0CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CA58);
  }

  return result;
}

unint64_t sub_1BCD06ED8()
{
  result = qword_1EBD0CA60;
  if (!qword_1EBD0CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CA60);
  }

  return result;
}

unint64_t sub_1BCD06F30()
{
  result = qword_1EBD0CA68;
  if (!qword_1EBD0CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CA68);
  }

  return result;
}

unint64_t sub_1BCD06F88()
{
  result = qword_1EBD0CA70;
  if (!qword_1EBD0CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CA70);
  }

  return result;
}

unint64_t sub_1BCD06FE0()
{
  result = qword_1EBD0CA78;
  if (!qword_1EBD0CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CA78);
  }

  return result;
}

unint64_t sub_1BCD07038()
{
  result = qword_1EBD0CA80;
  if (!qword_1EBD0CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CA80);
  }

  return result;
}

unint64_t sub_1BCD07090()
{
  result = qword_1EBD0CA88;
  if (!qword_1EBD0CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD0CA88);
  }

  return result;
}

uint64_t sub_1BCD07104()
{
  v0 = type metadata accessor for ConditionsComplicationViewModel();
  __swift_allocate_value_buffer(v0, qword_1EBD0CA90);
  v1 = __swift_project_value_buffer(v0, qword_1EBD0CA90);
  return sub_1BCD07150(v1);
}

uint64_t sub_1BCD07150@<X0>(_BYTE *a1@<X8>)
{
  v66 = a1;
  v62 = type metadata accessor for WeatherConditionGradientModel();
  MEMORY[0x1EEE9AC00](v62);
  v68 = &v60 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1BCE19470();
  v79 = *(v2 - 8);
  v80 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v78 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07A80);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v60 - v7;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD07CA8);
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v76 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v74 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v73 = &v60 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  v22 = sub_1BCE199D0();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v60 - v27;
  v29 = *MEMORY[0x1E6984C18];
  v71 = v30;
  (*(v30 + 104))(&v60 - v27, v29, v22, v26);
  v31 = objc_opt_self();
  v32 = [v31 fahrenheit];
  sub_1BCA301DC();
  v33 = v15;
  sub_1BCE185D0();
  v34 = [v31 fahrenheit];
  v75 = v18;
  sub_1BCE185D0();
  v35 = [v31 fahrenheit];
  sub_1BCE185D0();
  if (qword_1EDA1B380 != -1)
  {
    swift_once();
  }

  v36 = v62;
  v60 = __swift_project_value_buffer(v62, qword_1EDA1B388);
  v37 = v77;
  sub_1BCD079F8(v60, v77, type metadata accessor for WeatherConditionGradientModel);
  __swift_storeEnumTagSinglePayload(v37, 0, 1, v36);
  v38 = *(v71 + 16);
  v70 = v24;
  v39 = v24;
  v40 = v38;
  v64 = v28;
  v61 = v22;
  v38(v39, v28, v22);
  v41 = *(v72 + 16);
  v65 = v21;
  v42 = v21;
  v43 = v69;
  v41(v73, v42, v69);
  v41(v74, v75, v43);
  v67 = v33;
  v41(v76, v33, v43);
  v44 = v78;
  sub_1BCE19460();
  v45 = v66;
  *v66 = 1;
  *(v45 + 1) = 0;
  *(v45 + 2) = 0xE000000000000000;
  v46 = type metadata accessor for ConditionsComplicationViewModel();
  (*(v79 + 16))(&v45[v46[6]], v44, v80);
  v45[v46[7]] = 1;
  v47 = v63;
  sub_1BCA2FC44(v37, v63);
  if (__swift_getEnumTagSinglePayload(v47, 1, v36) == 1)
  {
    v48 = v68;
    sub_1BCD079F8(v60, v68, type metadata accessor for WeatherConditionGradientModel);
    if (__swift_getEnumTagSinglePayload(v47, 1, v36) != 1)
    {
      sub_1BCA30000(v47);
    }
  }

  else
  {
    v48 = v68;
    sub_1BCACDD54(v47, v68);
  }

  sub_1BCACDD54(v48, &v45[v46[8]]);
  v49 = v61;
  v40(&v45[v46[9]], v70, v61);
  v50 = v73;
  v51 = v69;
  v41(&v45[v46[10]], v73, v69);
  v52 = v74;
  v41(&v45[v46[11]], v74, v51);
  v53 = v76;
  v41(&v45[v46[12]], v76, v51);
  v54 = v78;
  sub_1BCA2EEE4();
  v56 = v55;
  (*(v79 + 8))(v54, v80);
  v57 = *(v72 + 8);
  v57(v53, v51);
  v57(v52, v51);
  v57(v50, v51);
  v58 = *(v71 + 8);
  v58(v70, v49);
  sub_1BCA30000(v77);
  v57(v67, v51);
  v57(v75, v51);
  v57(v65, v51);
  result = (v58)(v64, v49);
  *&v45[v46[13]] = v56;
  return result;
}

uint64_t static ConditionsComplicationViewModel.demo.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBD072C0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for ConditionsComplicationViewModel();
  v3 = __swift_project_value_buffer(v2, qword_1EBD0CA90);
  return sub_1BCD079F8(v3, a1, type metadata accessor for ConditionsComplicationViewModel);
}

double static Elevation.demoElevation.getter@<D0>(uint64_t a1@<X8>)
{
  if (qword_1EDA16E08 != -1)
  {
    OUTLINED_FUNCTION_0_70();
  }

  result = *&qword_1EDA16E10;
  v3 = byte_1EDA16E18;
  *a1 = qword_1EDA16E10;
  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_1BCD079F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BCD07A7C(double a1, uint64_t a2, uint64_t *a3, unsigned int *a4)
{
  v7 = sub_1BCE199D0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for WeatherConditionGradientModel();
  __swift_allocate_value_buffer(v11, a3);
  v12 = __swift_project_value_buffer(v11, a3);
  (*(v8 + 104))(v10, *a4, v7);
  if (qword_1EDA16E08 != -1)
  {
    OUTLINED_FUNCTION_0_70();
  }

  v13 = qword_1EDA16E10;
  v14 = byte_1EDA16E18;
  result = (*(v8 + 32))(v12, v10, v7);
  v16 = v12 + v11[5];
  *v16 = v13;
  *(v16 + 8) = v14;
  *(v12 + v11[6]) = 1;
  *(v12 + v11[7]) = 0x80;
  *(v12 + v11[8]) = a1;
  *(v12 + v11[9]) = 0;
  return result;
}

uint64_t sub_1BCD07C24@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for WeatherConditionGradientModel();
  v6 = __swift_project_value_buffer(v5, a2);
  return sub_1BCD079F8(v6, a3, type metadata accessor for WeatherConditionGradientModel);
}

__n128 sub_1BCD07C8C@<Q0>(uint64_t a1@<X8>)
{
  v2 = (a1 + 1436);
  sub_1BCA0330C();
  v4 = v3;
  sub_1BCA0525C();
  *a1 = 0x4006666666666666;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0x3FF0000000000000;
  *(a1 + 24) = 25;
  *(a1 + 32) = xmmword_1BCE3BED0;
  *(a1 + 48) = xmmword_1BCE3BED0;
  *(a1 + 64) = 0x42D2000042480000;
  *(a1 + 72) = 0xC37A000000000000;
  *(a1 + 80) = xmmword_1BCE4B020;
  *(a1 + 96) = xmmword_1BCE3BEF0;
  *(a1 + 112) = 0x3E8000003DF5C28FLL;
  *(a1 + 128) = xmmword_1BCE3C7C0;
  *(a1 + 144) = xmmword_1BCE3D840;
  *(a1 + 160) = xmmword_1BCE3BF00;
  *(a1 + 176) = 1153138688;
  *(a1 + 184) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 192) = xmmword_1BCE3C7C0;
  *(a1 + 208) = xmmword_1BCE3C700;
  *(a1 + 224) = xmmword_1BCE3C660;
  *(a1 + 240) = 0x4140000040A00000;
  *(a1 + 248) = 1132068864;
  *(a1 + 256) = 0x3E4CCCCD3DE147AELL;
  *(a1 + 264) = 0x40A0000041700000;
  *(a1 + 272) = 1101004800;
  __asm { FMOV            V0.4S, #1.0 }

  *(a1 + 288) = xmmword_1BCE3C7C0;
  *(a1 + 304) = result;
  *(a1 + 320) = 0x4348000040C00000;
  *(a1 + 328) = 0x3E99999A3E19999ALL;
  *(a1 + 336) = 0x3F00000040A00000;
  *(a1 + 352) = xmmword_1BCE3C7C0;
  *(a1 + 368) = xmmword_1BCE3C700;
  *(a1 + 384) = 0;
  *(a1 + 388) = 0x3B03126F3F800000;
  *(a1 + 400) = xmmword_1BCE3C670;
  *(a1 + 416) = 0x3F0000003F000000;
  *(a1 + 424) = 30;
  *(a1 + 432) = xmmword_1BCE3D860;
  *(a1 + 448) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 464) = result;
  *(a1 + 480) = xmmword_1BCE3D870;
  *(a1 + 496) = 0x43FA000040400000;
  *(a1 + 504) = 1116471296;
  *(a1 + 512) = 0x3E8000003DF5C28FLL;
  *(a1 + 528) = result;
  *(a1 + 544) = result;
  *(a1 + 560) = 0x4248000044BB8000;
  *(a1 + 568) = 0x3E4CCCCD3DA3D70ALL;
  *(a1 + 576) = xmmword_1BCE3C700;
  *(a1 + 592) = xmmword_1BCE3D880;
  *(a1 + 608) = 0x40C0000040800000;
  *(a1 + 624) = xmmword_1BCE3C700;
  *(a1 + 640) = xmmword_1BCE3D880;
  *(a1 + 656) = 0x419DAE1441200000;
  *(a1 + 664) = 0x401CCCCD3E99999ALL;
  *(a1 + 672) = 0x409800003F800000;
  *(a1 + 688) = result;
  *(a1 + 704) = 1065353216;
  *(a1 + 712) = 0x3F8000003F000000;
  *(a1 + 720) = 0x400000003FC00000;
  *(a1 + 728) = 0;
  *(a1 + 736) = 1;
  *(a1 + 744) = 4;
  *(a1 + 752) = xmmword_1BCE3BF40;
  *(a1 + 768) = 0x617274736F746C41;
  *(a1 + 776) = 0xEF53202D20737574;
  *(a1 + 784) = 0xD000000000000013;
  *(a1 + 792) = 0x80000001BCE792E0;
  *(a1 + 800) = 6;
  *(a1 + 816) = result;
  *(a1 + 832) = 1065353216;
  *(a1 + 840) = 0x3F8000003F000000;
  *(a1 + 848) = 0x400000003FC00000;
  *(a1 + 856) = 0;
  *(a1 + 864) = 1;
  *(a1 + 872) = 4;
  *(a1 + 880) = xmmword_1BCE3D890;
  *(a1 + 896) = 0x617274736F746C41;
  *(a1 + 904) = 0xEF53202D20737574;
  *(a1 + 912) = 0xD000000000000013;
  *(a1 + 920) = 0x80000001BCE792E0;
  *(a1 + 928) = 6;
  *(a1 + 944) = result;
  *(a1 + 960) = 1065353216;
  *(a1 + 968) = 0x3F8000003F000000;
  *(a1 + 976) = 0x411970A44106E147;
  *(a1 + 984) = 1083022496;
  *(a1 + 992) = 1;
  *(a1 + 1000) = 4;
  *(a1 + 1008) = xmmword_1BCE3C6F0;
  *(a1 + 1024) = 0x2073756C756D7543;
  *(a1 + 1032) = 0xEB000000004D202DLL;
  *(a1 + 1040) = 0x5F73756C756D7543;
  *(a1 + 1048) = 0xEF4D656C676E6953;
  *(a1 + 1056) = 10;
  *(a1 + 1072) = result;
  *(a1 + 1088) = 1065353216;
  *(a1 + 1096) = 0x3F8000003F000000;
  *(a1 + 1104) = 0x400000003FC00000;
  *(a1 + 1112) = 0;
  *(a1 + 1120) = 1;
  *(a1 + 1128) = 4;
  *(a1 + 1136) = xmmword_1BCE3D8A0;
  *(a1 + 1152) = 0x617274736F746C41;
  *(a1 + 1160) = 0xEF53202D20737574;
  *(a1 + 1168) = 0xD000000000000013;
  *(a1 + 1176) = 0x80000001BCE792E0;
  *(a1 + 1184) = 6;
  *(a1 + 1200) = result;
  *(a1 + 1216) = xmmword_1BCE3BFA0;
  *(a1 + 1232) = 0;
  *(a1 + 1236) = 1;
  *(a1 + 1240) = 0x617274736F746C41;
  *(a1 + 1248) = 0xEB00000000737574;
  *(a1 + 1256) = 0xD000000000000013;
  *(a1 + 1264) = 0x80000001BCE79300;
  *(a1 + 1272) = 8;
  *(a1 + 1280) = 0;
  *(a1 + 1288) = 0x400000003F800000;
  *(a1 + 1296) = 0x41C8000042C80000;
  *(a1 + 1304) = 0;
  *(a1 + 1312) = result;
  *(a1 + 1328) = result;
  *(a1 + 1344) = 0;
  *(a1 + 1352) = 0x40000000;
  *(a1 + 1360) = 0;
  *(a1 + 1368) = 1;
  *(a1 + 1408) = 0u;
  *(a1 + 1392) = 0u;
  *(a1 + 1376) = 0u;
  *(a1 + 1424) = 0x3F99999A3ECCCCCDLL;
  *(a1 + 1432) = 1;
  *v2 = xmmword_1BCE3BFC0;
  *(a1 + 1456) = 0x41D3333341BD3333;
  *(a1 + 1472) = result;
  *(a1 + 1488) = result;
  *(a1 + 1504) = 1097859072;
  *(a1 + 1512) = 0x736168506E6F6F6DLL;
  *(a1 + 1520) = 0xEA00000000003065;
  *(a1 + 1528) = 1112014848;
  *(a1 + 1536) = result;
  *(a1 + 1552) = xmmword_1BCE3C770;
  *(a1 + 1568) = 0x4248000042200000;
  *(a1 + 1584) = 0u;
  *(a1 + 1600) = xmmword_1BCE3D880;
  __asm { FMOV            V3.2S, #-30.0 }

  *(a1 + 1616) = -_D3;
  *(a1 + 1624) = 0x40000000;
  *(a1 + 1632) = 0;
  *(a1 + 1628) = 0;
  *(a1 + 1634) = 16843009;
  *(a1 + 1637) = 16843009;
  *(a1 + 1656) = 0;
  *(a1 + 1641) = 0;
  *(a1 + 1649) = 0;
  *(a1 + 1657) = v12;
  *(a1 + 1659) = v13;
  *(a1 + 1660) = 1066611507;
  *(a1 + 1664) = 0x40C0000040A00000;
  *(a1 + 1672) = 3;
  *(a1 + 1680) = xmmword_1BCE3C000;
  *(a1 + 1696) = xmmword_1BCE3C010;
  *(a1 + 1712) = xmmword_1BCE3C020;
  *(a1 + 1728) = 0x3F0000003EB33333;
  *(a1 + 1736) = 0x3E800000453B8000;
  *(a1 + 1760) = 0;
  *(a1 + 1744) = 0u;
  *(a1 + 1776) = xmmword_1BCE3D8B0;
  *(a1 + 1792) = xmmword_1BCE3D8C0;
  *(a1 + 1808) = xmmword_1BCE3C7A0;
  *(a1 + 1824) = 1;
  *(a1 + 1828) = xmmword_1BCE47CC0;
  *(a1 + 1844) = 1036831949;
  *(a1 + 1848) = 0x4100000041200000;
  *(a1 + 1856) = 3;
  *(a1 + 1864) = 1041865114;
  *(a1 + 1872) = 0x400AE1483F970A3DLL;
  *(a1 + 1880) = 1106247680;
  *(a1 + 1888) = result;
  *(a1 + 1904) = 0x3E4CCCCD40A00000;
  *(a1 + 1912) = 1101004800;
  *(a1 + 1920) = 0;
  *(a1 + 1928) = 1107296256;
  *(a1 + 1936) = result;
  *(a1 + 1952) = 0x40000000;
  *(a1 + 1960) = 0x420C000041C80000;
  *(a1 + 1968) = xmmword_1BCE47CD0;
  *(a1 + 1984) = 0x3F80000000000000;
  *(a1 + 1992) = 1061158912;
  *(a1 + 2000) = 0x3F6666663E4CCCCDLL;
  *(a1 + 2008) = 0x3F6666663F333333;
  *(a1 + 2016) = xmmword_1BCE3F500;
  *(a1 + 2096) = 0u;
  *(a1 + 2080) = 0u;
  *(a1 + 2064) = 0u;
  *(a1 + 2048) = 0u;
  *(a1 + 2032) = 0u;
  *(a1 + 2112) = 1056964608;
  *(a1 + 2120) = 0x3E4CCCCD3DCCCCCDLL;
  *(a1 + 2128) = 0x400000003F800000;
  *(a1 + 2136) = 0x4040000040000000;
  *(a1 + 2144) = -1046478848;
  *(a1 + 2160) = result;
  *(a1 + 2176) = result;
  *(a1 + 2192) = 1061997773;
  *(a1 + 2200) = 10;
  *(a1 + 2208) = 0x40A000003FC00000;
  *(a1 + 2224) = xmmword_1BCE3C090;
  *(a1 + 2240) = xmmword_1BCE3C0A0;
  *(a1 + 2256) = result;
  *(a1 + 2304) = 0;
  *(a1 + 2288) = 0u;
  *(a1 + 2272) = 0u;
  *(a1 + 2312) = v4;
  *(a1 + 2320) = v11;
  return result;
}

WeatherUI::CloudAltitudeKind __swiftcall CloudAltitudeKind.init(low:mid:high:)(Swift::Double low, Swift::Double mid, Swift::Double high)
{
  if (mid < low && high < low)
  {
    v7 = 0;
  }

  else if (low < mid && high < mid)
  {
    v7 = 1;
  }

  else if (low < high && mid < high)
  {
    v7 = 2;
  }

  else
  {
    v7 = low < mid;
    if (mid != high)
    {
      v7 = 0;
    }
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1BCD083EC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7827308 && a2 == 0xE300000000000000;
  if (v3 || (sub_1BCE1E090() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6580589 && a2 == 0xE300000000000000;
    if (v6 || (sub_1BCE1E090() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1751607656 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BCE1E090();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BCD08504(char a1)
{
  if (!a1)
  {
    return 7827308;
  }

  if (a1 == 1)
  {
    return 6580589;
  }

  return 1751607656;
}

uint64_t sub_1BCD0854C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BCD083EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BCD08574(uint64_t a1)
{
  v2 = sub_1BCD08A5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BCD085B0(uint64_t a1)
{
  v2 = sub_1BCD08A5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}