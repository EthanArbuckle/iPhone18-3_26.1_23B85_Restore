uint64_t sub_1B60AC8DC()
{
  sub_1B60AD0C0(v0 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_endpoint);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_authenticator);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_configurationProvider);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_scheduler);

  return v0;
}

uint64_t sub_1B60AC978()
{
  sub_1B60AC8DC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t NSURLSession.wds_dataTask(with:completionHandler:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v4 = v3;
  v8 = [v3 configuration];
  v9 = [v8 URLCache];

  if (v9)
  {
  }

  if (qword_1EDAB4B00 != -1)
  {
    swift_once();
  }

  v10 = sub_1B6220B34();
  __swift_project_value_buffer(v10, qword_1EDAC2AC8);
  v11 = sub_1B6220B14();
  v12 = sub_1B62217F4();
  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_8_8();
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    v13[1] = v9 != 0;
    OUTLINED_FUNCTION_5_13();
    _os_log_impl(v14, v15, v16, v17, v18, 8u);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  v19 = sub_1B621D214();
  v23[4] = a1;
  v23[5] = a2;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 1107296256;
  v23[2] = sub_1B60ACBEC;
  v23[3] = &block_descriptor_0;
  v20 = _Block_copy(v23);

  v21 = [v4 dataTaskWithRequest:v19 completionHandler:v20];
  _Block_release(v20);

  result = sub_1B602370C(0, &qword_1EDAB0DC8);
  a3[3] = result;
  a3[4] = &protocol witness table for NSURLSessionDataTask;
  *a3 = v21;
  return result;
}

uint64_t sub_1B60ACBEC(uint64_t a1, void *a2, void *a3, void *a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1B621D714();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v11 = a3;
  v12 = a4;
  v7(v6, v10, a3, a4);

  sub_1B602FF58(v6, v10);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B60ACD40(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 25))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 4)
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

uint64_t sub_1B60ACD80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B60ACDC8(uint64_t result, unsigned int a2)
{
  v2 = a2 - 4;
  if (a2 >= 4)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 4;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t sub_1B60ACDF4(uint64_t a1, _BYTE *a2, uint64_t a3, __int128 *a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v22 = a9;
  v23 = a10;
  __swift_allocate_boxed_opaque_existential_1(&v21);
  OUTLINED_FUNCTION_10_6();
  (*(v17 + 32))();
  LOBYTE(a2) = *a2;
  v18 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_logger;
  sub_1B602370C(0, &qword_1EDAB2128);
  *(a8 + v18) = sub_1B62219D4();
  v19 = (a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_defaultMimeType);
  *v19 = 0xD000000000000010;
  v19[1] = 0x80000001B623C4E0;
  sub_1B602CBCC(a1, a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_endpoint);
  *(a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version) = a2;
  *(a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_session) = a3;
  sub_1B60273A4(a4, a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_authenticator);
  sub_1B60273A4(a5, a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor);
  sub_1B60273A4(a6, a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_configurationProvider);
  sub_1B60273A4(&v21, a8 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_scheduler);
  return a8;
}

uint64_t objectdestroyTm()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E70);
  OUTLINED_FUNCTION_10_6();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1B60AD04C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E70);
  v0 = OUTLINED_FUNCTION_4_8();
  return sub_1B60AC2A8(v0);
}

uint64_t sub_1B60AD0C0(uint64_t a1)
{
  v2 = type metadata accessor for WDSEndpoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Weather.weatherFacts.getter()
{
  *v0 = *(v1 + *(OUTLINED_FUNCTION_25_0() + 68));

  return sub_1B6220784();
}

uint64_t Weather.weatherFacts.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for Weather() + 68);

  *(v1 + v3) = v2;
  return result;
}

WeatherDaemon::Weather::CodingKeys_optional __swiftcall Weather.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B6221CD4();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

WeatherDaemon::Weather::CodingKeys_optional __swiftcall Weather.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  result.value = Weather.CodingKeys.init(rawValue:)(stringValue).value;
  *v2 = v4;
  return result;
}

unint64_t sub_1B60ADB10()
{
  result = 0x696C617551726961;
  switch(*v0)
  {
    case 1:
      result = 0x57746E6572727563;
      break;
    case 2:
    case 3:
      result = 0x7473616365726F66;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0x6E6F697461636F6CLL;
      break;
    case 7:
      result = 0x6F46656E6972616DLL;
      break;
    case 8:
      result = 1937204590;
      break;
    case 9:
      result = 0x6E65764565646974;
      break;
    case 0xA:
      result = 0x4172656874616577;
      break;
    case 0xB:
      result = 0x4372656874616577;
      break;
    case 0xC:
      result = 0xD000000000000015;
      break;
    case 0xD:
      result = 0x4672656874616577;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60ADD08@<X0>(uint64_t *a1@<X8>)
{
  result = Weather.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B60ADD3C(uint64_t a1)
{
  v2 = sub_1B60AE9A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60ADD78(uint64_t a1)
{
  v2 = sub_1B60AE9A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Weather.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924ED8);
  OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  v160 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924ED0);
  OUTLINED_FUNCTION_0(v7);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_0();
  v166 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC8);
  OUTLINED_FUNCTION_0(v10);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_9_0();
  v165 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC0);
  OUTLINED_FUNCTION_0(v13);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_0();
  v164 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB8);
  OUTLINED_FUNCTION_0(v16);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  v163 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB0);
  OUTLINED_FUNCTION_0(v19);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9_0();
  v162 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA8);
  OUTLINED_FUNCTION_0(v22);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_9_0();
  v161 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E98);
  OUTLINED_FUNCTION_0(v25);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_9_0();
  v159 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA0);
  OUTLINED_FUNCTION_0(v28);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_9_0();
  v158 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E90);
  OUTLINED_FUNCTION_0(v31);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_9_0();
  v157 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E88);
  OUTLINED_FUNCTION_0(v34);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_0();
  v37 = v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E80);
  OUTLINED_FUNCTION_0(v38);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9_0();
  v41 = v40;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E78);
  OUTLINED_FUNCTION_0(v42);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_9_0();
  v45 = v44;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EE0);
  OUTLINED_FUNCTION_2();
  v156 = v47;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v141 - v49;
  v51 = a1[3];
  v168 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v51);
  sub_1B60AE9A0();
  v52 = v167;
  sub_1B62220D4();
  if (!v52)
  {
    v53 = type metadata accessor for AirQuality();
    LOBYTE(v170) = 0;
    OUTLINED_FUNCTION_12_4();
    sub_1B60AF138(v54, v55);
    OUTLINED_FUNCTION_6_7();
    v155 = v45;
    OUTLINED_FUNCTION_1_8();
    v56 = v53;
    sub_1B6221D24();
    v57 = type metadata accessor for CurrentWeather();
    LOBYTE(v170) = 1;
    OUTLINED_FUNCTION_21_1();
    sub_1B60AF138(v58, v59);
    OUTLINED_FUNCTION_6_7();
    v154 = v41;
    v152 = v57;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v60 = type metadata accessor for DailyForecast();
    LOBYTE(v170) = 2;
    OUTLINED_FUNCTION_19_1();
    sub_1B60AF138(v61, v62);
    OUTLINED_FUNCTION_6_7();
    v153 = v37;
    v151 = v60;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v63 = type metadata accessor for HourlyForecast();
    LOBYTE(v170) = 3;
    OUTLINED_FUNCTION_18_4();
    sub_1B60AF138(v64, v65);
    OUTLINED_FUNCTION_6_7();
    v150 = v63;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    HourForecast = type metadata accessor for NextHourForecast();
    LOBYTE(v170) = 4;
    OUTLINED_FUNCTION_17_3();
    sub_1B60AF138(v67, v68);
    OUTLINED_FUNCTION_6_7();
    v149 = HourForecast;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v69 = type metadata accessor for PeriodicForecasts();
    LOBYTE(v170) = 5;
    OUTLINED_FUNCTION_16_4();
    sub_1B60AF138(v70, v71);
    OUTLINED_FUNCTION_6_7();
    v148 = v69;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v72 = type metadata accessor for LocationInfo();
    LOBYTE(v170) = 6;
    OUTLINED_FUNCTION_15_2();
    sub_1B60AF138(v73, v74);
    OUTLINED_FUNCTION_6_7();
    v147 = v72;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v75 = type metadata accessor for MarineForecast();
    LOBYTE(v170) = 7;
    OUTLINED_FUNCTION_14_5();
    sub_1B60AF138(v76, v77);
    OUTLINED_FUNCTION_6_7();
    v146 = v75;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v78 = type metadata accessor for News();
    LOBYTE(v170) = 8;
    OUTLINED_FUNCTION_13_3();
    sub_1B60AF138(v79, v80);
    OUTLINED_FUNCTION_6_7();
    v145 = v78;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v81 = type metadata accessor for TideEvents();
    LOBYTE(v170) = 9;
    OUTLINED_FUNCTION_11_6();
    sub_1B60AF138(v82, v83);
    OUTLINED_FUNCTION_6_7();
    v144 = v81;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v84 = type metadata accessor for WeatherAlerts();
    LOBYTE(v170) = 10;
    OUTLINED_FUNCTION_23_0();
    sub_1B60AF138(v85, v86);
    OUTLINED_FUNCTION_6_7();
    v143 = v84;
    OUTLINED_FUNCTION_1_8();
    sub_1B6221D24();
    v87 = type metadata accessor for WeatherChange();
    v167 = 0;
    v88 = v87;
    LOBYTE(v170) = 11;
    OUTLINED_FUNCTION_22_1();
    sub_1B60AF138(v89, v90);
    OUTLINED_FUNCTION_6_7();
    sub_1B6221D24();
    v91 = type metadata accessor for WeatherComparisons();
    LOBYTE(v170) = 12;
    OUTLINED_FUNCTION_20_1();
    sub_1B60AF138(v92, v93);
    OUTLINED_FUNCTION_6_7();
    sub_1B6221D24();
    v169 = 13;
    sub_1B60AE9F4();
    sub_1B6221D24();
    (*(v156 + 8))(v50, v46);
    v156 = v170;
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v94, v95, v96, v56);
    v97 = type metadata accessor for Weather();
    v98 = v97[5];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v99, v100, v101, v152);
    v102 = v97[6];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v103, v104, v105, v151);
    v106 = v97[7];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v107, v108, v109, v150);
    v142 = v97[8];
    v110 = OUTLINED_FUNCTION_2_14(v142);
    __swift_storeEnumTagSinglePayload(v110, v111, v112, v148);
    v113 = v97[9];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v114, v115, v116, v149);
    v141 = v97[10];
    v117 = OUTLINED_FUNCTION_2_14(v141);
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v147);
    v148 = v97[11];
    v120 = OUTLINED_FUNCTION_2_14(v148);
    __swift_storeEnumTagSinglePayload(v120, v121, v122, v146);
    v149 = v97[12];
    v123 = OUTLINED_FUNCTION_2_14(v149);
    __swift_storeEnumTagSinglePayload(v123, v124, v125, v145);
    v152 = v97[13];
    v126 = OUTLINED_FUNCTION_2_14(v152);
    __swift_storeEnumTagSinglePayload(v126, v127, v128, v144);
    v129 = v97[14];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v130, v131, v132, v143);
    v150 = v97[15];
    v133 = OUTLINED_FUNCTION_2_14(v150);
    __swift_storeEnumTagSinglePayload(v133, v134, v135, v88);
    v151 = v97[16];
    v136 = OUTLINED_FUNCTION_2_14(v151);
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v91);
    v139 = v97[17];
    *(a2 + v139) = 0;
    sub_1B603F2AC(v155, a2, &qword_1EB924E78);
    sub_1B603F2AC(v154, a2 + v98, &qword_1EB924E80);
    sub_1B603F2AC(v153, a2 + v102, &qword_1EB924E88);
    sub_1B603F2AC(v157, a2 + v106, &qword_1EB924E90);
    sub_1B603F2AC(v158, a2 + v113, &qword_1EB924EA0);
    sub_1B603F2AC(v159, a2 + v142, &qword_1EB924E98);
    sub_1B603F2AC(v161, a2 + v141, &qword_1EB924EA8);
    sub_1B603F2AC(v162, a2 + v148, &qword_1EB924EB0);
    sub_1B603F2AC(v163, a2 + v149, &qword_1EB924EB8);
    sub_1B603F2AC(v165, a2 + v129, &qword_1EB924EC8);
    sub_1B603F2AC(v164, a2 + v152, &qword_1EB924EC0);
    sub_1B603F2AC(v166, a2 + v150, &qword_1EB924ED0);
    sub_1B603F2AC(v160, a2 + v151, &qword_1EB924ED8);

    *(a2 + v139) = v156;
  }

  return __swift_destroy_boxed_opaque_existential_1(v168);
}

unint64_t sub_1B60AE9A0()
{
  result = qword_1EDAB2028;
  if (!qword_1EDAB2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB2028);
  }

  return result;
}

unint64_t sub_1B60AE9F4()
{
  result = qword_1EDAB1580;
  if (!qword_1EDAB1580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB1580);
  }

  return result;
}

uint64_t Weather.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EE8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v39[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60AE9A0();
  sub_1B62220F4();
  LOBYTE(v40) = 0;
  type metadata accessor for AirQuality();
  OUTLINED_FUNCTION_12_4();
  sub_1B60AF138(v11, v12);
  OUTLINED_FUNCTION_6_7();
  sub_1B6221E74();
  if (!v2)
  {
    v13 = type metadata accessor for Weather();
    OUTLINED_FUNCTION_10_7(1);
    type metadata accessor for CurrentWeather();
    OUTLINED_FUNCTION_21_1();
    sub_1B60AF138(v14, v15);
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_10_7(2);
    type metadata accessor for DailyForecast();
    OUTLINED_FUNCTION_19_1();
    sub_1B60AF138(v16, v17);
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_10_7(3);
    type metadata accessor for HourlyForecast();
    OUTLINED_FUNCTION_18_4();
    sub_1B60AF138(v18, v19);
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_10_7(4);
    type metadata accessor for NextHourForecast();
    OUTLINED_FUNCTION_17_3();
    sub_1B60AF138(v20, v21);
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_10_7(5);
    type metadata accessor for PeriodicForecasts();
    OUTLINED_FUNCTION_16_4();
    sub_1B60AF138(v22, v23);
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_10_7(6);
    type metadata accessor for LocationInfo();
    OUTLINED_FUNCTION_15_2();
    sub_1B60AF138(v24, v25);
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_10_7(7);
    type metadata accessor for MarineForecast();
    OUTLINED_FUNCTION_14_5();
    sub_1B60AF138(v26, v27);
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_10_7(8);
    type metadata accessor for News();
    OUTLINED_FUNCTION_13_3();
    sub_1B60AF138(v28, v29);
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_10_7(9);
    type metadata accessor for TideEvents();
    OUTLINED_FUNCTION_11_6();
    sub_1B60AF138(v30, v31);
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_10_7(10);
    type metadata accessor for WeatherAlerts();
    OUTLINED_FUNCTION_23_0();
    sub_1B60AF138(v32, v33);
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_10_7(11);
    type metadata accessor for WeatherChange();
    OUTLINED_FUNCTION_22_1();
    sub_1B60AF138(v34, v35);
    OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_10_7(12);
    type metadata accessor for WeatherComparisons();
    OUTLINED_FUNCTION_20_1();
    sub_1B60AF138(v36, v37);
    OUTLINED_FUNCTION_0_18();
    v40 = *(v3 + *(v13 + 68));
    v39[7] = 13;
    sub_1B60AEF3C();
    sub_1B6220784();
    sub_1B6221E74();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B60AEF3C()
{
  result = qword_1EDAAEF80;
  if (!qword_1EDAAEF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEF80);
  }

  return result;
}

unint64_t sub_1B60AEF94()
{
  result = qword_1EB924EF0;
  if (!qword_1EB924EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924EF0);
  }

  return result;
}

unint64_t sub_1B60AEFEC()
{
  result = qword_1EDAB2018;
  if (!qword_1EDAB2018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB2018);
  }

  return result;
}

unint64_t sub_1B60AF044()
{
  result = qword_1EDAB2020;
  if (!qword_1EDAB2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB2020);
  }

  return result;
}

uint64_t sub_1B60AF0E0(uint64_t a1)
{
  result = sub_1B60AF138(&qword_1EDAB2010, type metadata accessor for Weather);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B60AF138(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t getEnumTagSinglePayload for Weather.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Weather.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

uint64_t WeatherRequestOptions.countryCode.getter()
{
  type metadata accessor for WeatherRequestOptions();
  sub_1B6220784();
  return OUTLINED_FUNCTION_5_2();
}

void sub_1B60AF34C()
{
  OUTLINED_FUNCTION_44();
  v480 = v0;
  v432 = v1;
  v428 = sub_1B621D944();
  OUTLINED_FUNCTION_2();
  v427 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_22_2(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  v6 = OUTLINED_FUNCTION_0(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_40_0();
  v410 = v18;
  OUTLINED_FUNCTION_21_2();
  v423 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v421 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_22_2(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F40);
  OUTLINED_FUNCTION_0(v29);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9_0();
  v478 = v31;
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F48);
  OUTLINED_FUNCTION_2();
  v477 = v32;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_0();
  v476 = v34;
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F50);
  OUTLINED_FUNCTION_2();
  v425 = v35;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_22_2(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20);
  v39 = OUTLINED_FUNCTION_0(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_22_2(v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18);
  OUTLINED_FUNCTION_0(v42);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_22_2(v44);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10);
  v46 = OUTLINED_FUNCTION_0(v45);
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v47);
  v49 = v387 - v48;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00);
  v51 = OUTLINED_FUNCTION_0(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v53);
  v55 = v387 - v54;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08);
  v57 = OUTLINED_FUNCTION_0(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v58);
  v60 = v387 - v59;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  v62 = OUTLINED_FUNCTION_0(v61);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_1_9();
  MEMORY[0x1EEE9AC00](v63);
  v65 = v387 - v64;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F58);
  OUTLINED_FUNCTION_0(v66);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v67);
  v69 = v387 - v68;
  v70 = sub_1B621D474();
  OUTLINED_FUNCTION_2();
  v72 = v71;
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_14();
  v76 = v75 - v74;
  v77 = type metadata accessor for WeatherRequestOptions();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_22_2(v79);
  sub_1B621D444();

  OUTLINED_FUNCTION_16_5(v69, 1, v70);
  if (v115)
  {
    sub_1B6037288(v69, &qword_1EB924F58);
    OUTLINED_FUNCTION_3_10();
    v83 = v77;
    goto LABEL_320;
  }

  v399 = v77;
  v397 = v72;
  v84 = *(v72 + 32);
  v398 = v70;
  v84(v76, v69, v70);
  sub_1B621DB64();
  v461 = v65;
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  type metadata accessor for WeatherRequestDailyRelativeRange();
  v430[0] = v60;
  OUTLINED_FUNCTION_3_10();
  v391 = v89;
  __swift_storeEnumTagSinglePayload(v90, v91, v92, v89);
  v93 = sub_1B621D364();
  v429 = v55;
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v94, v95, v96, v93);
  type metadata accessor for WeatherRequestHourlyRelativeRange();
  v422 = v49;
  OUTLINED_FUNCTION_3_10();
  v392 = v97;
  __swift_storeEnumTagSinglePayload(v98, v99, v100, v97);
  OUTLINED_FUNCTION_3_10();
  v390 = v93;
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v93);
  type metadata accessor for WeatherRequestPeriodicRelativeRange();
  OUTLINED_FUNCTION_3_10();
  v389 = v104;
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v104);
  v108 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v108);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F60);
  sub_1B6220A24();
  sub_1B621D404();
  v112 = v478;
  v113 = 0;
  sub_1B6220A34();

  v114 = v479;
  OUTLINED_FUNCTION_16_5(v112, 1, v479);
  if (v115)
  {
    sub_1B6037288(v112, &qword_1EB924F40);
    v395 = 0;
    v394 = 0xE000000000000000;
  }

  else
  {
    v239 = v476;
    v240 = v477;
    (*(v477 + 32))(v476, v112, v114);
    swift_getKeyPath();
    sub_1B6220A44();

    v395 = MEMORY[0x1B8C904C0](v481, v482, v483, v484);
    v394 = v241;

    v242 = *(v240 + 8);
    v49 = v240 + 8;
    v242(v239, v114);
  }

  v396 = v76;
  v116 = sub_1B621D3B4();
  if (!v116)
  {
    v468 = 0;
    v434 = 0;
    LODWORD(v471) = 0;
    v476 = 0;
    v477 = 0;
    v472 = 0;
    v473 = 0;
    v479 = 0;
    v480 = 0;
    v474 = 0;
    v475 = 0;
    v478 = 0;
    v225 = 0;
    v226 = 768;
    v469 = MEMORY[0x1E69E7CC0];
    v470 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_47_0();
    v228 = v399;
    goto LABEL_319;
  }

  v388 = v108;
  v387[1] = 0;
  v117 = 0;
  v393 = 0;
  v434 = 0;
  v113 = 0;
  v452 = 0;
  v477 = 0;
  v118 = 0;
  v119 = 0;
  v447 = 0;
  v446 = 0;
  v439 = 0;
  v480 = 0;
  v442 = 0;
  v476 = 0;
  v445 = 0;
  v479 = 0;
  v441 = 0;
  v475 = 0;
  v444 = 0;
  v478 = 0;
  v451 = 0;
  v450 = 0;
  v440 = 0;
  v474 = 0;
  v443 = 0;
  v473 = 0;
  v438 = 0;
  v449 = 0;
  v448 = 0;
  v471 = 0x80000001B623C5C0;
  v472 = 0x80000001B623C5A0;
  v469 = 0x80000001B623C600;
  v470 = 0x80000001B623C5E0;
  v467 = 0x80000001B623C640;
  v468 = 0x80000001B623C620;
  v466 = 0x80000001B623C660;
  v465 = 0x80000001B623C680;
  v464 = 0x80000001B623C6A0;
  OUTLINED_FUNCTION_48_1();
  v120 = v116[2];
  v454 = 1;
  v455 = 2;
  v436 = 2;
  v453 = 1;
  v437 = 2;
  v459 = 1;
  v458 = 1;
  v457 = 1;
  v456 = 1;
  v463 = v116;
  v462 = v120;
  while (v120 != v117)
  {
    if (v117 >= v120)
    {
      __break(1u);
LABEL_322:
      __break(1u);
LABEL_323:
      __break(1u);
LABEL_324:
      __break(1u);
LABEL_325:
      OUTLINED_FUNCTION_6_8();
      goto LABEL_269;
    }

    sub_1B621D3A4();
    if (__OFADD__(v117, 1))
    {
      goto LABEL_322;
    }

    if (sub_1B621D384() == v49 && v121 == 0xE800000000000000)
    {
    }

    else
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_21;
      }
    }

    sub_1B621D394();
    if (v123)
    {
      v49 = v460;
      sub_1B621DB14();

      sub_1B6074568(v49, v461, &qword_1EB924EF8);
    }

LABEL_21:
    if (sub_1B621D384() == 0xD000000000000012 && v472 == v124)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    v126 = sub_1B621D394();
    if (v127)
    {
      v448 = sub_1B60C2408(v126);
      v456 = v128;
    }

LABEL_30:
    if (sub_1B621D384() == 0xD000000000000010 && v471 == v129)
    {
    }

    else
    {
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_39;
      }
    }

    v131 = sub_1B621D394();
    if (v132)
    {
      v449 = sub_1B60C2408(v131);
      v457 = v133;
    }

LABEL_39:
    v134 = sub_1B621D384();
    v136 = v135;
    if (v134 == 0x617453796C696164 && v135 == 0xEA00000000007472)
    {
    }

    else
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    sub_1B621D394();
    if (v138)
    {
      OUTLINED_FUNCTION_17_4();

      v443 = v136;
      v473 = v49;
    }

LABEL_48:
    v139 = sub_1B621D384();
    v141 = v140;
    if (v139 == 0x646E45796C696164 && v140 == 0xE800000000000000)
    {
    }

    else
    {
      OUTLINED_FUNCTION_42_1();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    sub_1B621D394();
    if (v143)
    {
      OUTLINED_FUNCTION_17_4();

      v440 = v141;
      v474 = v49;
    }

LABEL_57:
    if (sub_1B621D384() == 0xD000000000000013 && v470 == v144)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    v146 = sub_1B621D394();
    if (v147)
    {
      v450 = sub_1B60C2408(v146);
      v458 = v148;
    }

LABEL_66:
    if (sub_1B621D384() == 0xD000000000000011 && v469 == v149)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_75;
      }
    }

    v151 = sub_1B621D394();
    if (v152)
    {
      v451 = sub_1B60C2408(v151);
      v459 = v153;
    }

LABEL_75:
    if (sub_1B621D384() == 0xD000000000000010 && v468 == v154)
    {
    }

    else
    {
      OUTLINED_FUNCTION_52();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_87;
      }
    }

    sub_1B621D394();
    if (v156)
    {
      v49 = sub_1B6221CD4();

      if (v49 == 1)
      {
        v437 = 1;
      }

      else if (!v49)
      {
        v437 = 0;
      }
    }

LABEL_87:
    v157 = sub_1B621D384();
    v159 = v158;
    if (v157 == 0x7453796C72756F68 && v158 == 0xEB00000000747261)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_96;
      }
    }

    sub_1B621D394();
    if (v161)
    {
      OUTLINED_FUNCTION_17_4();

      v444 = v159;
      v478 = v49;
    }

LABEL_96:
    v162 = sub_1B621D384();
    v164 = v163;
    if (v162 == 0x6E45796C72756F68 && v163 == 0xE900000000000064)
    {
    }

    else
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_105;
      }
    }

    sub_1B621D394();
    if (v166)
    {
      OUTLINED_FUNCTION_17_4();

      v441 = v164;
      v475 = v49;
    }

LABEL_105:
    sub_1B621D384();
    OUTLINED_FUNCTION_19_2();
    if (v169 == (v168 & 0xFFFFFFFFFFFFLL | 0x6369000000000000) && v167 == 0xED00007472617453)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_114;
      }
    }

    sub_1B621D394();
    if (v171)
    {
      OUTLINED_FUNCTION_17_4();

      v445 = v164;
      v479 = v49;
    }

LABEL_114:
    sub_1B621D384();
    OUTLINED_FUNCTION_19_2();
    if (v174 == (v173 & 0xFFFFFFFFFFFFLL | 0x6369000000000000) && v172 == 0xEB00000000646E45)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_123;
      }
    }

    sub_1B621D394();
    if (v176)
    {
      OUTLINED_FUNCTION_17_4();

      v442 = v164;
      v476 = v49;
    }

LABEL_123:
    sub_1B621D384();
    OUTLINED_FUNCTION_19_2();
    if (v179 == (v178 & 0xFFFFFFFFFFFFLL | 0x654C000000000000) && v177 == 0xED0000736874676ELL)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_132;
      }
    }

    sub_1B621D394();
    if (v181)
    {
      OUTLINED_FUNCTION_17_4();

      v439 = v164;
      v480 = v49;
    }

LABEL_132:
    if (sub_1B621D384() == 0xD000000000000019 && v467 == v182)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_141;
      }
    }

    v184 = sub_1B621D394();
    if (v185)
    {
      v446 = sub_1B60C2408(v184);
      v453 = v186;
    }

LABEL_141:
    if (sub_1B621D384() == 0xD000000000000017 && v466 == v187)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_150;
      }
    }

    v189 = sub_1B621D394();
    if (v190)
    {
      v447 = sub_1B60C2408(v189);
      v454 = v191;
    }

LABEL_150:
    if (sub_1B621D384() == 0xD000000000000016 && v465 == v192)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_162;
      }
    }

    sub_1B621D394();
    if (v194)
    {
      v49 = sub_1B6221CD4();

      if (v49 == 1)
      {
        v436 = 1;
      }

      else if (!v49)
      {
        v436 = 0;
      }
    }

LABEL_162:
    if (sub_1B621D384() == 0x7374696E75 && v195 == 0xE500000000000000)
    {
    }

    else
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_174;
      }
    }

    sub_1B621D394();
    if (v197)
    {
      v49 = sub_1B6221CD4();

      if (v49 == 1)
      {
        v438 = 1;
      }

      else if (!v49)
      {
        v438 = 0;
      }
    }

LABEL_174:
    v198 = sub_1B621D384();
    v200 = v199;
    if (v198 == 0x7972746E756F63 && v199 == 0xE700000000000000)
    {
    }

    else
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_183;
      }
    }

    sub_1B621D394();
    if (v202)
    {
      OUTLINED_FUNCTION_17_4();

      v118 = v200;
      v119 = v49;
    }

LABEL_183:
    if (sub_1B621D384() == 0x657372616F63 && v203 == 0xE600000000000000)
    {
    }

    else
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_192;
      }
    }

    sub_1B621D394();
    if (v205)
    {
      v455 = sub_1B62215B4();
    }

LABEL_192:
    v206 = sub_1B621D384();
    v208 = v207;
    if (v206 == 0xD000000000000014 && v464 == v207)
    {
    }

    else
    {
      OUTLINED_FUNCTION_31_1();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_201;
      }
    }

    sub_1B621D394();
    if (v210)
    {
      OUTLINED_FUNCTION_17_4();

      v452 = v208;
      v477 = v49;
    }

LABEL_201:
    if (sub_1B621D384() == 0x7465537472656C61 && v211 == 0xE800000000000000)
    {
    }

    else
    {
      OUTLINED_FUNCTION_42_1();
      OUTLINED_FUNCTION_20_2();
      if ((v49 & 1) == 0)
      {
        goto LABEL_215;
      }
    }

    v213 = sub_1B621D394();
    if (v214)
    {
      if (v213 == 0x656D69746972616DLL && v214 == 0xE800000000000000)
      {

        v113 = 1;
      }

      else
      {
        OUTLINED_FUNCTION_42_1();
        OUTLINED_FUNCTION_20_2();
        v113 = v49 | v113;
      }
    }

LABEL_215:
    v49 = 0x614C656369766564;
    if (sub_1B621D384() != 0x614C656369766564 || v216 != 0xEF7365676175676ELL)
    {
      sub_1B6221F24();
      OUTLINED_FUNCTION_20_2();
LABEL_221:
      ++v117;
      goto LABEL_222;
    }

    v218 = sub_1B621D394();
    if (!v219)
    {
      goto LABEL_221;
    }

    v220 = v218;
    v221 = v219;

    ++v117;
    v393 = v220;
    v434 = v221;
LABEL_222:
    v116 = v463;
    OUTLINED_FUNCTION_48_1();
    v120 = v462;
  }

  v467 = v118;
  LODWORD(v471) = v113;
  v472 = v119;

  if ((v456 | v457))
  {
    OUTLINED_FUNCTION_34();
    v222 = v437;
    if (v473 && v474)
    {
      if (qword_1EDAB2108 != -1)
      {
        OUTLINED_FUNCTION_6_8();
      }

      v223 = sub_1B62211B4();
      v224 = OUTLINED_FUNCTION_28_0(v223);

      v113 = v409;
      if (v224)
      {
        sub_1B621D8C4();
      }

      OUTLINED_FUNCTION_23_1();
      __swift_storeEnumTagSinglePayload(v243, v244, v245, v246);
      v247 = v410;
      sub_1B603D3DC(v113, v410, &qword_1EB924600);
      OUTLINED_FUNCTION_8_9(v247);
      if (v115)
      {
        sub_1B6037288(v247, &qword_1EB924600);
      }

      else
      {
        v113 = v421 + 32;
        v248 = *(v421 + 32);
        v249 = OUTLINED_FUNCTION_33_0(&v442);
        v248(v249);
        v250 = sub_1B62211B4();
        v251 = OUTLINED_FUNCTION_26_2(v250);

        if (v251)
        {
          OUTLINED_FUNCTION_41_0();
        }

        else
        {
          v247 = v404;
        }

        OUTLINED_FUNCTION_23_1();
        __swift_storeEnumTagSinglePayload(v252, v253, v254, v255);
        v256 = v400;
        sub_1B603D3DC(v247, v400, &qword_1EB924600);
        OUTLINED_FUNCTION_8_9(v256);
        if (v115)
        {
          (*(v421 + 8))(v411, v118);
          sub_1B6037288(v256, &qword_1EB924600);
        }

        else
        {
          v257 = OUTLINED_FUNCTION_49_0(&v429);
          v248(v257);
          OUTLINED_FUNCTION_36_0();
          v259 = v411;
          (v247)(*(v258 - 256), v411, v118);
          (v247)(v402, 0x1FB254000, v118);
          v260 = v401;
          v222 = v437;
          sub_1B621D344();
          v261 = OUTLINED_FUNCTION_35_0();
          (v247)(v261);
          (v247)(v259, v118);
          OUTLINED_FUNCTION_47_0();
          v262 = OUTLINED_FUNCTION_36();
          sub_1B6037288(v262, v263);
          OUTLINED_FUNCTION_18();
          __swift_storeEnumTagSinglePayload(v264, v265, v266, v390);
          OUTLINED_FUNCTION_53(v260, v113);
        }

        v119 = v422;
      }

      v116 = v478;
    }
  }

  else
  {
    v229 = v391;
    v230 = v419;
    sub_1B621D8D4();
    v116 = &unk_1B6226610;
    v113 = v430[0];
    v231 = OUTLINED_FUNCTION_36();
    sub_1B6037288(v231, v232);
    v233 = v449;
    *v230 = v448;
    v230[1] = v233;
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v234, v235, v236, v229);
    v237 = OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_53(v237, v238);
    OUTLINED_FUNCTION_34();
    v222 = v437;
  }

  if (((v458 | v459) & 1) == 0 && v222 != 2)
  {
    v267 = v392;
    v113 = v420;
    sub_1B621D8D4();
    sub_1B6037288(v119, &qword_1EB924F10);
    v268 = v451;
    *v113 = v450;
    *(v113 + 8) = v268;
    *(v113 + 16) = v222 & 1;
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v269, v270, v271, v267);
    v272 = v113;
    v273 = v119;
    goto LABEL_247;
  }

  v274 = v479;
  v275 = v480;
  if (!v116 || !v475)
  {
    goto LABEL_265;
  }

  if (qword_1EDAB2108 != -1)
  {
    OUTLINED_FUNCTION_6_8();
  }

  v276 = sub_1B62211B4();
  v277 = OUTLINED_FUNCTION_28_0(v276);

  v113 = v412;
  if (v277)
  {
    sub_1B621D8C4();
  }

  OUTLINED_FUNCTION_23_1();
  __swift_storeEnumTagSinglePayload(v278, v279, v280, v281);
  v282 = v413;
  sub_1B603D3DC(v113, v413, &qword_1EB924600);
  OUTLINED_FUNCTION_8_9(v282);
  if (v115)
  {
    v283 = v282;
LABEL_263:
    sub_1B6037288(v283, &qword_1EB924600);
    goto LABEL_264;
  }

  v113 = v421 + 32;
  v284 = *(v421 + 32);
  v285 = OUTLINED_FUNCTION_33_0(&v445);
  v284(v285);
  v286 = sub_1B62211B4();
  v287 = OUTLINED_FUNCTION_26_2(v286);

  if (v287)
  {
    OUTLINED_FUNCTION_41_0();
  }

  else
  {
    v282 = v405;
  }

  OUTLINED_FUNCTION_23_1();
  __swift_storeEnumTagSinglePayload(v288, v289, v290, v291);
  v292 = v403;
  sub_1B603D3DC(v282, v403, &qword_1EB924600);
  OUTLINED_FUNCTION_8_9(v292);
  if (v115)
  {
    (*(v421 + 8))(v414, v118);
    v283 = v292;
    goto LABEL_263;
  }

  v306 = OUTLINED_FUNCTION_49_0(v430);
  v284(v306);
  OUTLINED_FUNCTION_36_0();
  v308 = v414;
  (v282)(*(v307 - 256), v414, v118);
  (v282)(v402, 0x1FB254000, v118);
  sub_1B621D344();
  v309 = OUTLINED_FUNCTION_35_0();
  (v282)(v309);
  (v282)(v308, v118);
  v113 = v435;
  v310 = OUTLINED_FUNCTION_36();
  sub_1B6037288(v310, v311);
  OUTLINED_FUNCTION_18();
  __swift_storeEnumTagSinglePayload(v312, v313, v314, v390);
  v272 = OUTLINED_FUNCTION_29_1();
LABEL_247:
  OUTLINED_FUNCTION_53(v272, v273);
LABEL_264:
  v274 = v479;
  v275 = v480;
LABEL_265:
  if (!v274 || !v476 || !v275)
  {
    goto LABEL_291;
  }

  if (qword_1EDAB2108 != -1)
  {
    goto LABEL_325;
  }

LABEL_269:
  v293 = sub_1B62211B4();
  v294 = OUTLINED_FUNCTION_28_0(v293);

  if (v294)
  {
    v295 = v416;
    sub_1B621D8C4();

    OUTLINED_FUNCTION_46_0();
  }

  else
  {
    OUTLINED_FUNCTION_46_0();
    v295 = v416;
  }

  OUTLINED_FUNCTION_23_1();
  __swift_storeEnumTagSinglePayload(v296, v297, v298, v299);
  v300 = v417;
  sub_1B603D3DC(v295, v417, &qword_1EB924600);
  OUTLINED_FUNCTION_8_9(v300);
  if (v115)
  {
    sub_1B6037288(v300, &qword_1EB924600);
    goto LABEL_292;
  }

  v301 = *(v421 + 32);
  v302 = OUTLINED_FUNCTION_33_0(&v446);
  v301(v302);
  v303 = sub_1B62211B4();
  v304 = OUTLINED_FUNCTION_26_2(v303);

  if (v304)
  {
    OUTLINED_FUNCTION_41_0();

    v305 = v408;
  }

  else
  {
    v305 = v408;
    v300 = v407;
  }

  OUTLINED_FUNCTION_23_1();
  __swift_storeEnumTagSinglePayload(v315, v316, v317, v318);
  sub_1B603D3DC(v300, v305, &qword_1EB924600);
  OUTLINED_FUNCTION_8_9(v305);
  if (v115)
  {
    OUTLINED_FUNCTION_51();
    v319(v415, v118);
    sub_1B6037288(v305, &qword_1EB924600);
  }

  else
  {
    (v301)(v406, v305, v118);
    v481 = v439;
    v482 = v480;
    OUTLINED_FUNCTION_43_0();
    v320 = OUTLINED_FUNCTION_27_1();
    v321 = 0;
    v118 = *(v320 + 16);
    v322 = MEMORY[0x1E69E7CC0];
LABEL_281:
    v323 = (v320 + 40 + 16 * v321);
    while (v118 != v321)
    {
      if (v321 >= *(v320 + 16))
      {
        goto LABEL_324;
      }

      v321 = (v321 + 1);
      v324 = v323 + 2;
      v113 = *v323;
      sub_1B6220784();
      v325 = OUTLINED_FUNCTION_29_1();
      v326 = sub_1B60C2408(v325);
      v323 = v324;
      if ((v327 & 1) == 0)
      {
        v113 = v326;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B609C2B0();
          v322 = v330;
        }

        v329 = *(v322 + 16);
        v328 = *(v322 + 24);
        if (v329 >= v328 >> 1)
        {
          OUTLINED_FUNCTION_50(v328);
          sub_1B609C2B0();
          v322 = v331;
        }

        *(v322 + 16) = v329 + 1;
        *(v322 + 8 * v329 + 32) = v113;
        goto LABEL_281;
      }
    }

    v332 = v433;
    sub_1B6037288(v433, &qword_1EB924F18);
    v113 = v423;
    (v301)(v332, v415, v423);
    v333 = v389;
    (v301)(v332 + *(v389 + 20), v406, v113);
    *(v332 + *(v333 + 24)) = v322;
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v334, v335, v336, v333);
  }

LABEL_291:
  OUTLINED_FUNCTION_46_0();
LABEL_292:
  v225 = v438;
  v337 = v436;
  if (((v453 | v454) & 1) == 0 && v436 != 2)
  {
    v338 = v388;
    v339 = v418;
    sub_1B621D8D4();
    v340 = OUTLINED_FUNCTION_36();
    sub_1B6037288(v340, v341);
    v342 = v447;
    *v339 = v446;
    *(v339 + 8) = v342;
    *(v339 + 16) = v337 & 1;
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v343, v344, v345, v338);
    v346 = OUTLINED_FUNCTION_29_1();
    OUTLINED_FUNCTION_53(v346, v347);
  }

  if (v455 == 2)
  {
    v348 = 0;
  }

  else
  {
    v348 = 3;
  }

  if (v455 == 2)
  {
    v226 = 768;
  }

  else
  {
    v226 = v455 << 8;
  }

  if (v477)
  {
    v481 = v452;
    v482 = v477;
    OUTLINED_FUNCTION_43_0();
    v349 = OUTLINED_FUNCTION_27_1();
    v350 = 0;
    v351 = *(v349 + 16);
    v352 = MEMORY[0x1E69E7CC0];
LABEL_303:
    v353 = (v349 + 40 + 16 * v350);
    while (v351 != v350)
    {
      if (v350 >= *(v349 + 16))
      {
        goto LABEL_323;
      }

      ++v350;
      v118 = v353 + 2;
      v113 = *v353;
      sub_1B6220784();
      v354 = OUTLINED_FUNCTION_29_1();
      v355 = sub_1B60C2408(v354);
      v353 = v118;
      if ((v356 & 1) == 0)
      {
        v113 = v355;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v357 = v352;
        }

        else
        {
          sub_1B609C29C();
          v357 = v359;
        }

        v118 = *(v357 + 16);
        v358 = *(v357 + 24);
        if (v118 >= v358 >> 1)
        {
          OUTLINED_FUNCTION_50(v358);
          sub_1B609C29C();
          v357 = v360;
        }

        *(v357 + 16) = v118 + 1;
        v352 = v357;
        *(v357 + 8 * v118 + 32) = v113;
        goto LABEL_303;
      }
    }

    OUTLINED_FUNCTION_47_0();
    v225 = v438;
  }

  else
  {
    v352 = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_47_0();
  }

  v468 = v348;
  v469 = v352;
  if (v434)
  {
    v481 = v393;
    v482 = v434;
    OUTLINED_FUNCTION_43_0();
    v470 = OUTLINED_FUNCTION_27_1();
  }

  else
  {
    v434 = 0;
    v470 = MEMORY[0x1E69E7CC0];
  }

  v227 = v461;
  v228 = v399;
  v116 = v467;
LABEL_319:
  v361 = v424;
  v362 = v394;
  *v424 = v395;
  *(v361 + 8) = v362;
  sub_1B603A944(v227, v361 + v228[5], &qword_1EB924EF8);
  sub_1B603A944(v430[0], v361 + v228[9], &qword_1EB924F08);
  *(v361 + v228[6]) = v225 & 1;
  sub_1B603A944(v113, v361 + v228[7], &qword_1EB924F00);
  v363 = v422;
  sub_1B603A944(v422, v361 + v228[10], &qword_1EB924F10);
  sub_1B603A944(v435, v361 + v228[8], &qword_1EB924F00);
  v364 = v433;
  sub_1B603A944(v433, v361 + v228[11], &qword_1EB924F18);
  OUTLINED_FUNCTION_46_0();
  sub_1B603A944(v113, v365, v366);
  type metadata accessor for WeatherInterpolationOptions();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v367, v368, v369, v370);
  v371 = (v361 + v228[14]);
  v372 = v472;
  *v371 = v116;
  v371[1] = v372;
  v373 = v361 + v228[15];
  *v373 = v468;
  *(v373 + 8) = v226;
  *(v361 + v228[16]) = 0;
  LOBYTE(v481) = 1;
  v485 = 1;
  v374 = v361 + v228[17];
  *v374 = 1;
  *(v374 + 8) = 1;
  *(v374 + 16) = 0;
  *(v374 + 30) = 0;
  *(v374 + 28) = 256;
  *(v374 + 24) = 1;
  *(v361 + v228[18]) = v469;
  type metadata accessor for WDSNetworkActivity();
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v375, v376, v377, v378);
  *(v361 + v228[20]) = v471 & 1;
  *(v361 + v228[21]) = v470;
  sub_1B6220784();
  v379 = v426;
  _s13WeatherDaemon0A11DataServiceC16addCacheObserver13configuration8observerAA0F16ObservationTokenVAA0fG13ConfigurationV_yAA0fJ0VctF_0();
  v380 = sub_1B621D904();
  v382 = v381;
  OUTLINED_FUNCTION_51();
  v383(v379, v428);
  OUTLINED_FUNCTION_51();
  v384(v430[1], v431);
  sub_1B6037288(v113, &qword_1EB924F20);
  sub_1B6037288(v364, &qword_1EB924F18);
  sub_1B6037288(v435, &qword_1EB924F00);
  sub_1B6037288(v363, &qword_1EB924F10);
  sub_1B6037288(v429, &qword_1EB924F00);
  sub_1B6037288(v430[0], &qword_1EB924F08);
  OUTLINED_FUNCTION_51();
  v385(v396, v398);

  v386 = (v361 + v228[22]);
  *v386 = v380;
  v386[1] = v382;
  *(v361 + v228[23]) = 0;

  sub_1B6037288(v461, &qword_1EB924EF8);
  sub_1B60787F8(v361, v432, type metadata accessor for WeatherRequestOptions);
  OUTLINED_FUNCTION_18();
  v83 = v228;
LABEL_320:
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  OUTLINED_FUNCTION_45();
}

void sub_1B60B19E8()
{
  OUTLINED_FUNCTION_44();
  v97 = v1;
  v98 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30);
  OUTLINED_FUNCTION_0(v5);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_9_0();
  v96 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F28);
  OUTLINED_FUNCTION_0(v8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v80 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20);
  OUTLINED_FUNCTION_0(v12);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  v101 = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18);
  OUTLINED_FUNCTION_0(v15);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_0();
  v100 = v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10);
  OUTLINED_FUNCTION_0(v18);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_9_0();
  v104 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08);
  OUTLINED_FUNCTION_0(v21);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_9_0();
  v103 = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00);
  v25 = OUTLINED_FUNCTION_0(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_2_3();
  v102 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_40_0();
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  v31 = OUTLINED_FUNCTION_0(v30);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v80 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v80 - v35;
  v37 = v0[1];
  v95 = *v0;
  v38 = OUTLINED_FUNCTION_29_1();
  sub_1B603A944(v38, v39, &qword_1EB924EF8);
  v40 = sub_1B621DB64();
  v41 = OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_16_5(v41, v42, v40);
  v99 = v36;
  v94 = v37;
  if (v43)
  {
    v44 = type metadata accessor for WeatherRequestOptions();
    sub_1B603A944(v0 + *(v44 + 20), v36, &qword_1EB924EF8);
    v45 = OUTLINED_FUNCTION_38_0();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v45, v46, v40);
    sub_1B6220784();
    if (EnumTagSinglePayload != 1)
    {
      sub_1B6037288(v33, &qword_1EB924EF8);
    }
  }

  else
  {
    (*(*(v40 - 8) + 32))(v36, v33, v40);
    OUTLINED_FUNCTION_18();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v40);
    sub_1B6220784();
  }

  v51 = type metadata accessor for WeatherRequestOptions();
  v52 = *(v0 + v51[6]);
  v53 = v29;
  sub_1B603A944(v0 + v51[7], v29, &qword_1EB924F00);
  sub_1B603A944(v0 + v51[8], v102, &qword_1EB924F00);
  sub_1B603A944(v0 + v51[9], v103, &qword_1EB924F08);
  sub_1B603A944(v0 + v51[10], v104, &qword_1EB924F10);
  sub_1B603A944(v0 + v51[11], v100, &qword_1EB924F18);
  sub_1B603A944(v0 + v51[12], v101, &qword_1EB924F20);
  sub_1B603A944(v0 + v51[13], v11, &qword_1EB924F28);
  v93 = v11;
  v54 = v98;
  if (!v98)
  {
    v55 = (v0 + v51[14]);
    v54 = v55[1];
    v97 = *v55;
    sub_1B6220784();
  }

  v56 = v51[16];
  v57 = v0 + v51[15];
  v89 = *v57;
  v88 = *(v57 + 4);
  v58 = *(v0 + v56);
  v59 = v51[18];
  v60 = v0 + v51[17];
  v84 = *v60;
  v83 = *(v60 + 2);
  v61 = *(v60 + 6);
  v60 += 24;
  v87 = v61;
  v86 = *(v60 + 2);
  v62 = *(v0 + v59);
  v63 = v51[19];
  v81 = v60[6];
  v64 = v96;
  sub_1B603A944(v0 + v63, v96, &qword_1EB924F30);
  v65 = v51[21];
  v82 = *(v0 + v51[20]);
  v85 = *(v0 + v65);
  v66 = (v0 + v51[22]);
  v68 = *v66;
  v67 = v66[1];
  v92 = v68;
  v90 = v67;
  v69 = v94;
  *v4 = v95;
  v4[1] = v69;
  sub_1B603A944(v99, v4 + v51[5], &qword_1EB924EF8);
  *(v4 + v51[6]) = v52;
  v70 = v4 + v51[7];
  v91 = v53;
  sub_1B603A944(v53, v70, &qword_1EB924F00);
  sub_1B603A944(v102, v4 + v51[8], &qword_1EB924F00);
  sub_1B603A944(v103, v4 + v51[9], &qword_1EB924F08);
  sub_1B603A944(v104, v4 + v51[10], &qword_1EB924F10);
  v71 = v100;
  sub_1B603A944(v100, v4 + v51[11], &qword_1EB924F18);
  v72 = v101;
  sub_1B603A944(v101, v4 + v51[12], &qword_1EB924F20);
  v73 = v93;
  sub_1B603A944(v93, v4 + v51[13], &qword_1EB924F28);
  v74 = (v4 + v51[14]);
  *v74 = v97;
  v74[1] = v54;
  v75 = v4 + v51[15];
  *v75 = v89;
  *(v75 + 4) = v88;
  *(v4 + v51[16]) = v58;
  v76 = v4 + v51[17];
  *v76 = v84;
  *(v76 + 2) = v83;
  v76[30] = v81;
  v77 = v87;
  *(v76 + 14) = v86;
  *(v76 + 6) = v77;
  *(v4 + v51[18]) = v62;
  sub_1B603A944(v64, v4 + v51[19], &qword_1EB924F30);
  *(v4 + v51[20]) = v82;
  *(v4 + v51[21]) = v85;
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();
  v78 = v90;
  sub_1B6220784();
  sub_1B6037288(v64, &qword_1EB924F30);
  sub_1B6037288(v73, &qword_1EB924F28);
  sub_1B6037288(v72, &qword_1EB924F20);
  sub_1B6037288(v71, &qword_1EB924F18);
  sub_1B6037288(v104, &qword_1EB924F10);
  sub_1B6037288(v103, &qword_1EB924F08);
  sub_1B6037288(v102, &qword_1EB924F00);
  sub_1B6037288(v91, &qword_1EB924F00);
  sub_1B6037288(v99, &qword_1EB924EF8);
  v79 = (v4 + v51[22]);
  *v79 = v92;
  v79[1] = v78;
  *(v4 + v51[23]) = 0;
  OUTLINED_FUNCTION_45();
}

uint64_t URLRequest.addValue(_:for:)()
{
  sub_1B621D254();
}

uint64_t URLRequest.Header.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B6221CD4();

  v4 = 6;
  if (v2 < 6)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

unint64_t URLRequest.Header.rawValue.getter()
{
  result = 0x747065636341;
  switch(*v0)
  {
    case 1:
      result = 0x7A69726F68747541;
      break;
    case 2:
      result = 0x746E756F436F6547;
      break;
    case 3:
      result = 0x7365757165522D58;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x2D746E65746E6F43;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B60B2494@<X0>(unint64_t *a1@<X8>)
{
  result = URLRequest.Header.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

Swift::Void __swiftcall URLRequest.addAcceptedMimeTypes(_:)(Swift::OpaquePointer a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68);
  sub_1B60358B4();
  sub_1B6221174();
  sub_1B621D254();
}

unint64_t sub_1B60B254C()
{
  result = qword_1EB924F70;
  if (!qword_1EB924F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB924F70);
  }

  return result;
}

_BYTE *_s6HeaderOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1B60B267C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250B8);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for DayForecast();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB9250B8);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B6053F58();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B6053F58();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_47_1();
      sub_1B602F074();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B2844()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250B0);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for HourForecast();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB9250B0);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B6054BD4();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B6054BD4();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_46_1();
      sub_1B602F074();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B2A0C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250A0);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for ForecastCondition();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB9250A0);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B6055F3C();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B6055F3C();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B2BDC()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925098);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for ForecastSummary();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB925098);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609B86C();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609B86C();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B2DAC()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925090);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for ForecastMinute();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB925090);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B60563E8();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B60563E8();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B2F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67();
  v16 = MEMORY[0x1E69E7CC0];
  v24 = v17;
  for (i = v17; ; ++i)
  {
    if (v15 == i)
    {
      goto LABEL_15;
    }

    if (v15 < v24)
    {
      break;
    }

    if (i >= v15)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_38_2();
    v19();
    if (v12)
    {

LABEL_15:
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_114();
      return;
    }

    if (a12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_5();
        sub_1B609B948();
        v16 = v22;
      }

      OUTLINED_FUNCTION_65();
      if (v20)
      {
        OUTLINED_FUNCTION_32_2();
        sub_1B609B948();
        v16 = v23;
      }

      *(v16 + 16) = v14;
      v21 = v16 + 16 * v13;
      *(v21 + 32) = a11;
      *(v21 + 40) = a12;
    }

    else
    {
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1B60B306C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925080);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for MarineHourForecast();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB925080);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609BA14();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609BA14();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B323C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67();
  v16 = MEMORY[0x1E69E7CC0];
  v24 = v17;
  for (i = v17; ; ++i)
  {
    if (v15 == i)
    {
      goto LABEL_15;
    }

    if (v15 < v24)
    {
      break;
    }

    if (i >= v15)
    {
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_38_2();
    v19();
    if (v12)
    {

LABEL_15:
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_114();
      return;
    }

    if (a11)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_5();
        sub_1B609BAF0();
        v16 = v22;
      }

      OUTLINED_FUNCTION_65();
      if (v20)
      {
        OUTLINED_FUNCTION_32_2();
        sub_1B609BAF0();
        v16 = v23;
      }

      *(v16 + 16) = v14;
      v21 = v16 + 16 * v13;
      *(v21 + 32) = a11;
      *(v21 + 40) = a12;
    }

    else
    {
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1B60B332C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925068);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for TideEvent();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB925068);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609BBBC();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609BBBC();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B34FC()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925060);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for HourTide();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB925060);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609BC98();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609BC98();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B36CC()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925058);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for WeatherAlert();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB925058);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609BD74();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609BD74();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B389C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925050);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for TrendDeviation();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB925050);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609BE50();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609BE50();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B3A6C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925048);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for WeatherComparison();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB925048);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609BF2C();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609BF2C();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B3C3C()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250C0);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for Weather();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB9250C0);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609C008();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609C008();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1B60B3E0C()
{
  OUTLINED_FUNCTION_27_2();
  v3 = 0;
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  while (v5 != v3)
  {
    v7 = sub_1B621D3A4();
    OUTLINED_FUNCTION_28_1(v7);
    v2(v22, v1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v9 + 72) * v3);
    if (v0)
    {

      return OUTLINED_FUNCTION_66();
    }

    if (*(&v22[0] + 1))
    {
      v18 = v22[0];
      v19 = v22[1];
      v20 = v22[2];
      v21 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_5();
        sub_1B609C1B0();
        v6 = v15;
      }

      v10 = v6;
      v11 = *(v6 + 16);
      v12 = v10;
      v13 = v11 + 1;
      if (v11 >= *(v10 + 24) >> 1)
      {
        v24 = v11 + 1;
        sub_1B609C1B0();
        v13 = v24;
        v12 = v16;
      }

      ++v3;
      *(v12 + 16) = v13;
      v14 = v12 + 56 * v11;
      v6 = v12;
      *(v14 + 80) = v21;
      *(v14 + 48) = v19;
      *(v14 + 64) = v20;
      *(v14 + 32) = v18;
    }

    else
    {
      sub_1B6037288(v22, &qword_1EB9250C8);
      ++v3;
    }
  }

  return OUTLINED_FUNCTION_66();
}

void sub_1B60B3FBC()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_103(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EB0);
  OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59();
  v19 = type metadata accessor for MarineForecast();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_101(v8);
  if (v9)
  {
    while (1)
    {
      OUTLINED_FUNCTION_69(v9);

      v10 = OUTLINED_FUNCTION_99();
      v11(v10);
      if (v1)
      {
        break;
      }

      OUTLINED_FUNCTION_119();

      OUTLINED_FUNCTION_16_5(v0, 1, v19);
      if (v12)
      {
        sub_1B6037288(v0, &qword_1EB924EB0);
      }

      else
      {
        v0 = v18;
        sub_1B602F074();
        sub_1B602F074();
        v13 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_14_7();
          sub_1B609C398();
          v13 = v16;
        }

        v15 = *(v13 + 16);
        if (v15 >= *(v13 + 24) >> 1)
        {
          sub_1B609C398();
          v13 = v17;
        }

        *(v13 + 16) = v15 + 1;
        OUTLINED_FUNCTION_16_6();
        sub_1B602F074();
      }

      v9 = v20 - 1;
      v2 += 56;
      if (v20 == 1)
      {
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_83();
  }

LABEL_14:
  OUTLINED_FUNCTION_13();
}

void sub_1B60B4284()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_103(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC0);
  OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59();
  v19 = type metadata accessor for TideEvents();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_101(v8);
  if (v9)
  {
    while (1)
    {
      OUTLINED_FUNCTION_69(v9);

      v10 = OUTLINED_FUNCTION_99();
      v11(v10);
      if (v1)
      {
        break;
      }

      OUTLINED_FUNCTION_119();

      OUTLINED_FUNCTION_16_5(v0, 1, v19);
      if (v12)
      {
        sub_1B6037288(v0, &qword_1EB924EC0);
      }

      else
      {
        v0 = v18;
        sub_1B602F074();
        sub_1B602F074();
        v13 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_14_7();
          sub_1B609C474();
          v13 = v16;
        }

        v15 = *(v13 + 16);
        if (v15 >= *(v13 + 24) >> 1)
        {
          sub_1B609C474();
          v13 = v17;
        }

        *(v13 + 16) = v15 + 1;
        OUTLINED_FUNCTION_16_6();
        sub_1B602F074();
      }

      v9 = v20 - 1;
      v2 += 56;
      if (v20 == 1)
      {
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_83();
  }

LABEL_14:
  OUTLINED_FUNCTION_13();
}

uint64_t sub_1B60B454C(void (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925118);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v24 - v7;
  v9 = type metadata accessor for WeatherRequest();
  v24[2] = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v24[3] = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v24[1] = v24 - v12;
  v13 = 0;
  v14 = *(a3 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v14 == v13)
    {
      return v25;
    }

    v15 = *(type metadata accessor for WeatherServiceRequestLocation() - 8);
    a1(a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13);
    if (v3)
    {
      break;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1B6037288(v8, &qword_1EB925118);
      ++v13;
    }

    else
    {
      v24[0] = type metadata accessor for WeatherRequest;
      sub_1B602F074();
      sub_1B602F074();
      v16 = v25;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B609C62C();
        v16 = v20;
      }

      v17 = v16;
      v18 = *(v16 + 16);
      v25 = v17;
      v19 = v18 + 1;
      if (v18 >= *(v17 + 24) >> 1)
      {
        v24[0] = v18 + 1;
        sub_1B609C62C();
        v19 = v24[0];
        v25 = v21;
      }

      ++v13;
      *(v25 + 16) = v19;
      sub_1B602F074();
    }
  }

  v22 = v25;

  return v22;
}

void sub_1B60B4868()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19_3();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250E0);
  OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9249D8);
  OUTLINED_FUNCTION_2();
  v28 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_3();
  v29 = v11;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_40_0();
  v27 = v13;
  v14 = 0;
  v15 = *(v1 + 16);
  v30 = MEMORY[0x1E69E7CC0];
  while (v15 != v14)
  {
    v16 = type metadata accessor for WeatherServiceRequestLocation();
    OUTLINED_FUNCTION_28_1(v16);
    v3(v1 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v18 + 72) * v14);
    if (v0)
    {
      OUTLINED_FUNCTION_89();

      break;
    }

    OUTLINED_FUNCTION_16_5(v7, 1, v8);
    if (v19)
    {
      sub_1B6037288(v7, &qword_1EB9250E0);
      ++v14;
    }

    else
    {
      sub_1B60BFF1C();
      sub_1B60BFF1C();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_14_7();
        sub_1B609C7E4();
        v30 = v23;
      }

      v21 = *(v30 + 16);
      v22 = v21 + 1;
      if (v21 >= *(v30 + 24) >> 1)
      {
        v25[1] = *(v30 + 16);
        v26 = v21 + 1;
        sub_1B609C7E4();
        v22 = v26;
        v30 = v24;
      }

      ++v14;
      *(v30 + 16) = v22;
      OUTLINED_FUNCTION_16_6();
      sub_1B60BFF1C();
    }
  }

  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_13();
}

void sub_1B60B4B20()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_19_3();
  v21 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250D8);
  OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_1();
  v6 = type metadata accessor for WeatherServiceRequestLocation();
  v7 = OUTLINED_FUNCTION_3_11(v6);
  v9 = v8;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_40_0();
  v11 = 0;
  v12 = *(v1 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  while (v12 != v11)
  {
    v21(v1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v11);
    if (v0)
    {

      break;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v2, &qword_1EB9250D8);
      ++v11;
    }

    else
    {
      sub_1B602F074();
      sub_1B602F074();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_14_7();
        sub_1B609C708();
        v20 = v17;
      }

      v15 = *(v20 + 16);
      v16 = v15 + 1;
      if (v15 >= *(v20 + 24) >> 1)
      {
        v19 = v15 + 1;
        sub_1B609C708();
        v16 = v19;
        v20 = v18;
      }

      ++v11;
      *(v20 + 16) = v16;
      sub_1B602F074();
    }
  }

  OUTLINED_FUNCTION_37_1();
  OUTLINED_FUNCTION_13();
}

void sub_1B60B4D64()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925088);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for DayPartForecast();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB925088);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609CD68();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609CD68();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B4F34()
{
  OUTLINED_FUNCTION_27_2();
  v4 = HIDWORD(v3);
  v5 = MEMORY[0x1E69E7CC0];
  v6 = v1;
  v12 = v7;
  while (1)
  {
    if (v4 == v6)
    {
      goto LABEL_14;
    }

    if (v4 < v1)
    {
      break;
    }

    if (v6 >= v4)
    {
      goto LABEL_16;
    }

    *(&v13 + 1) = v6;
    v2(&v13, &v13 + 1);
    if (v0)
    {

LABEL_14:
      OUTLINED_FUNCTION_66();
      return;
    }

    v8 = v13;
    if (v13 != 9)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_5();
        sub_1B609CE44();
        v5 = v10;
      }

      v9 = *(v5 + 16);
      if (v9 >= *(v5 + 24) >> 1)
      {
        OUTLINED_FUNCTION_32_2();
        sub_1B609CE44();
        v5 = v11;
      }

      *(v5 + 16) = v9 + 1;
      *(v5 + v9 + 32) = v8;
      v2 = v12;
    }

    ++v6;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1B60B5044()
{
  OUTLINED_FUNCTION_12_0();
  OUTLINED_FUNCTION_6_9();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250A8);
  OUTLINED_FUNCTION_0(v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_1();
  v8 = type metadata accessor for PrecipitationConditionParameter();
  v9 = OUTLINED_FUNCTION_3_11(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_15(v10, v16);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_23_2();
  OUTLINED_FUNCTION_40_2();
  while (1)
  {
    if (v5 == v4)
    {
      goto LABEL_16;
    }

    if (v5 < v1)
    {
      break;
    }

    if (v4 >= v5)
    {
      goto LABEL_18;
    }

    v12 = OUTLINED_FUNCTION_11_7();
    v2(v12);
    if (v0)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_8_10();
    if (v13)
    {
      sub_1B6037288(v3, &qword_1EB9250A8);
    }

    else
    {
      sub_1B602F074();
      OUTLINED_FUNCTION_34_0();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609CF18();
      }

      OUTLINED_FUNCTION_22_3();
      if (v15)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609CF18();
      }

      OUTLINED_FUNCTION_1_10();
      OUTLINED_FUNCTION_74();
      v2 = v17;
      v1 = v18;
    }

    ++v4;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

void sub_1B60B5214()
{
  OUTLINED_FUNCTION_27_2();
  v4 = HIDWORD(v3);
  v5 = MEMORY[0x1E69E7CC0];
  for (i = v1; ; ++i)
  {
    if (v4 == i)
    {
      goto LABEL_15;
    }

    if (v4 < v1)
    {
      break;
    }

    if (i >= v4)
    {
      goto LABEL_17;
    }

    v13 = i;
    v2(__src, &v13);
    if (v0)
    {

LABEL_15:
      OUTLINED_FUNCTION_66();
      return;
    }

    if (__src[1])
    {
      memcpy(__dst, __src, sizeof(__dst));
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_5();
        sub_1B609CFF4();
        v5 = v8;
      }

      v7 = *(v5 + 16);
      if (v7 >= *(v5 + 24) >> 1)
      {
        sub_1B609CFF4();
        v5 = v9;
      }

      memcpy(v10, __dst, sizeof(v10));
      *(v5 + 16) = v7 + 1;
      memcpy((v5 + 72 * v7 + 32), v10, 0x48uLL);
    }

    else
    {
      memcpy(__dst, __src, sizeof(__dst));
      sub_1B6037288(__dst, &qword_1EB925070);
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
}

void sub_1B60B537C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_67();
  v16 = MEMORY[0x1E69E7CC0];
  v24 = v17;
  for (i = v17; ; ++i)
  {
    if (v15 == i)
    {
      goto LABEL_14;
    }

    if (v15 < v24)
    {
      break;
    }

    if (i >= v15)
    {
      goto LABEL_16;
    }

    OUTLINED_FUNCTION_38_2();
    v19();
    if (v12)
    {

LABEL_14:
      OUTLINED_FUNCTION_66();
      OUTLINED_FUNCTION_114();
      return;
    }

    if (a12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12_5();
        sub_1B609B5D8();
        v16 = v22;
      }

      OUTLINED_FUNCTION_65();
      if (v20)
      {
        OUTLINED_FUNCTION_32_2();
        sub_1B609B5D8();
        v16 = v23;
      }

      *(v16 + 16) = v14;
      v21 = v16 + 16 * v13;
      *(v21 + 32) = a11;
      *(v21 + 40) = a12;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1B60B545C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  OUTLINED_FUNCTION_12_0();
  a20 = v23;
  a21 = v24;
  v26 = v25;
  v28 = v27;
  v29 = HIDWORD(v25);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925078);
  OUTLINED_FUNCTION_0(v30);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_9_1();
  v32 = sub_1B621D944();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_15(v34, v50);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_40_0();
  v51 = v36;
  v55 = (v37 + 32);
  v38 = MEMORY[0x1E69E7CC0];
  v39 = v26;
  v53 = v28;
  v54 = v26;
  v52 = v40;
  while (1)
  {
    if (v29 == v39)
    {
      goto LABEL_16;
    }

    if (v29 < v26)
    {
      break;
    }

    if (v39 >= v29)
    {
      goto LABEL_18;
    }

    a11 = v39;
    v28(&a11);
    if (v21)
    {

LABEL_16:
      OUTLINED_FUNCTION_21_3();
      OUTLINED_FUNCTION_13();
      return;
    }

    OUTLINED_FUNCTION_16_5(v22, 1, v32);
    if (v41)
    {
      sub_1B6037288(v22, &qword_1EB925078);
    }

    else
    {
      v42 = *v55;
      (*v55)(v51, v22, v32);
      v42(v56, v51, v32);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_4_9();
        sub_1B609D0D4();
        v38 = v48;
      }

      v44 = *(v38 + 16);
      if (v44 >= *(v38 + 24) >> 1)
      {
        OUTLINED_FUNCTION_20_3();
        sub_1B609D0D4();
        v38 = v49;
      }

      *(v38 + 16) = v44 + 1;
      OUTLINED_FUNCTION_16_6();
      v47 = v38 + v45 + *(v46 + 72) * v44;
      v32 = v52;
      v42(v47, v56, v52);
      v28 = v53;
      v26 = v54;
    }

    ++v39;
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_1B60B56B0(uint64_t result, uint64_t *a2)
{
  v2 = 0;
  v3 = *(result + 16);
  while (v3 != v2)
  {
    sub_1B621D3A4();
    if (sub_1B621D384() == 0x7374655361746164 && v4 == 0xE800000000000000)
    {
    }

    else
    {
      v6 = sub_1B6221F24();

      if ((v6 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    result = sub_1B621D394();
    if (v7)
    {
      sub_1B602C004();
      v8 = sub_1B6221A44();

      sub_1B60B5838(v8, a2);
    }

LABEL_12:
    ++v2;
  }

  return result;
}

uint64_t sub_1B60B5838(uint64_t result, uint64_t *a2)
{
  v3 = *(result + 16);
  for (i = (result + 40); v3; --v3)
  {
    v6 = *(i - 1);
    v5 = *i;
    swift_bridgeObjectRetain_n();
    v7._countAndFlagsBits = v6;
    v7._object = v5;
    WeatherProduct.init(rawValue:)(v7);
    if (v13 != 16)
    {
      v8 = *a2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1B6073B94();
        v8 = v11;
        *a2 = v11;
      }

      v10 = *(v8 + 16);
      if (v10 >= *(v8 + 24) >> 1)
      {
        sub_1B6073B94();
        v8 = v12;
        *a2 = v12;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = v13;
    }

    i += 2;
  }

  return result;
}

uint64_t sub_1B60B5948()
{

  sub_1B6220864();

  return v1;
}

uint64_t sub_1B60B5990()
{
  v0 = sub_1B6220544();
  MEMORY[0x1EEE9AC00](v0);
  sub_1B602CB84(&qword_1EDAB3F58, MEMORY[0x1E69D6420]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924FD0);
  sub_1B602CAF4(&qword_1EDAB3D78, &qword_1EB924FD0);
  sub_1B6221AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925130);
  swift_allocObject();
  result = sub_1B6220874();
  qword_1EB924F78 = result;
  return result;
}

void *sub_1B60B5B04@<X0>(void *a1@<X8>)
{
  type metadata accessor for WeatherStatisticsDataStore();
  swift_allocObject();
  result = WeatherStatisticsDataStore.init()();
  *a1 = result;
  return result;
}

id sub_1B60B5D4C()
{
  OUTLINED_FUNCTION_129();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v20 = v8;
  v10 = v9;
  v11 = type metadata accessor for WDSEndpoint();
  v12 = OUTLINED_FUNCTION_0(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_1();
  sub_1B602E848();
  sub_1B602E8A0(v7, v26);
  sub_1B602E8A0(v5, v25);
  sub_1B602E8A0(v3, v24);
  type metadata accessor for WDSClient();
  v13 = OUTLINED_FUNCTION_73();
  v22 = &type metadata for DefaultTaskScheduler;
  v23 = &protocol witness table for DefaultTaskScheduler;
  v14 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_logger;
  sub_1B602370C(0, &qword_1EDAB2128);
  OUTLINED_FUNCTION_100();
  *(v13 + v14) = sub_1B62219D4();
  v15 = (v13 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_defaultMimeType);
  *v15 = 0xD000000000000010;
  v15[1] = 0x80000001B623C4E0;
  OUTLINED_FUNCTION_25_1();
  sub_1B602F074();
  *(v13 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version) = 0;
  *(v13 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_session) = v20;
  sub_1B60273A4(v26, v13 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_authenticator);
  sub_1B60273A4(v25, v13 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor);
  sub_1B60273A4(v24, v13 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_configurationProvider);
  sub_1B60273A4(&v21, v13 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_scheduler);
  v1(0);
  OUTLINED_FUNCTION_84();
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *v10 = v16;
  OUTLINED_FUNCTION_48_0();

  return v17;
}

uint64_t objectdestroyTm_0()
{
  type metadata accessor for WDSEndpoint();
  OUTLINED_FUNCTION_57();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  sub_1B621D634();
  OUTLINED_FUNCTION_9();
  (*(v5 + 8))(v1 + v4);
  OUTLINED_FUNCTION_81();
  if (v6)
  {
  }

  OUTLINED_FUNCTION_68();
  __swift_destroy_boxed_opaque_existential_1(v1 + v0);
  __swift_destroy_boxed_opaque_existential_1(v1 + v1 + v4);
  __swift_destroy_boxed_opaque_existential_1(v1 + v4);

  return MEMORY[0x1EEE6BDD0](v1, v4 + 40, v3 | 7);
}

id sub_1B60B6078()
{
  v0 = type metadata accessor for WDSEndpoint();
  OUTLINED_FUNCTION_28_1(v0);
  OUTLINED_FUNCTION_51_0();
  return sub_1B60B5D4C();
}

uint64_t objectdestroy_5Tm()
{
  type metadata accessor for WDSEndpoint();
  OUTLINED_FUNCTION_57();
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  sub_1B621D634();
  OUTLINED_FUNCTION_9();
  (*(v5 + 8))(v1 + v4);
  OUTLINED_FUNCTION_81();
  if (v6)
  {
  }

  OUTLINED_FUNCTION_68();
  __swift_destroy_boxed_opaque_existential_1(v1 + v0);
  __swift_destroy_boxed_opaque_existential_1(v1 + v1 + v4);
  __swift_destroy_boxed_opaque_existential_1(v1 + v4);

  return MEMORY[0x1EEE6BDD0](v1, v4 + 41, v3 | 7);
}

void sub_1B60B6248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(void), uint64_t (*a22)(void), uint64_t (*a23)(__int128 *, uint64_t, uint64_t), uint64_t a24)
{
  OUTLINED_FUNCTION_44();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v38 = type metadata accessor for WDSEndpoint();
  v39 = OUTLINED_FUNCTION_0(v38);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_24_1();
  sub_1B602E848();
  sub_1B602E8A0(v31, v54);
  sub_1B602E8A0(v29, v53);
  sub_1B602E8A0(v27, v52);
  type metadata accessor for WDSClient();
  v40 = OUTLINED_FUNCTION_73();
  v50 = &type metadata for DefaultTaskScheduler;
  v51 = &protocol witness table for DefaultTaskScheduler;
  v41 = OBJC_IVAR____TtC13WeatherDaemon9WDSClient_logger;
  sub_1B602370C(0, &qword_1EDAB2128);
  OUTLINED_FUNCTION_100();
  *(v40 + v41) = sub_1B62219D4();
  v42 = (v40 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_defaultMimeType);
  *v42 = 0xD000000000000010;
  v42[1] = 0x80000001B623C4E0;
  OUTLINED_FUNCTION_25_1();
  sub_1B602F074();
  *(v40 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version) = v35;
  *(v40 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_session) = v33;
  sub_1B60273A4(v54, v40 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_authenticator);
  sub_1B60273A4(v53, v40 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_networkMonitor);
  sub_1B60273A4(v52, v40 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_configurationProvider);
  sub_1B60273A4(&v49, v40 + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_scheduler);
  a21(0);
  OUTLINED_FUNCTION_84();
  v43 = swift_allocObject();
  *(v43 + 16) = v40;
  LOBYTE(v54[0]) = v25 & 1;
  v44 = qword_1EB924410;
  v45 = v33;

  if (v44 != -1)
  {
    swift_once();
  }

  v46 = qword_1EB924F78;
  v47 = a22(0);
  swift_allocObject();

  v48 = a23(v54, v43, v46);
  v37[3] = v47;
  v37[4] = a24;

  *v37 = v48;
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B60B6528(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    if (qword_1EDAB3D80 != -1)
    {
      swift_once();
    }

    v8 = sub_1B6220B34();
    __swift_project_value_buffer(v8, qword_1EDAC2AB0);
    v9 = sub_1B6220B14();
    v10 = sub_1B62217F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B6020000, v9, v10, "Empty request - returning empty response array", v11, 2u);
      MEMORY[0x1B8C91C90](v11, -1, -1);
    }

    return MEMORY[0x1E69E7CC0];
  }

  v1 = sub_1B6221504();
  v2 = *(v1 + 16);
  if (!v2)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v13 = MEMORY[0x1E69E7CC0];
  sub_1B6035220(0, v2, 0);
  v3 = 32;
  v4 = v13;
  do
  {
    v5 = byte_1B622695A[*(v1 + v3)];
    v7 = *(v13 + 16);
    v6 = *(v13 + 24);
    if (v7 >= v6 >> 1)
    {
      sub_1B6035220(v6 > 1, v7 + 1, 1);
    }

    *(v13 + 16) = v7 + 1;
    *(v13 + v7 + 32) = v5;
    ++v3;
    --v2;
  }

  while (v2);

  return v4;
}

unint64_t sub_1B60B6710@<X0>(char *a1@<X0>, unint64_t *a2@<X8>)
{
  result = WeatherDataRequest.rawValue.getter(*a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1B60B673C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1B621D944();
  v72 = *(v4 - 8);
  v73 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v70 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F28);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v75 = &v51 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v74 = &v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = &v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v77 = &v51 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v78 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v51 - v24;
  v26 = a1[1];
  v61 = *a1;
  v76 = v26;
  v27 = type metadata accessor for WeatherDataRequestOptions();
  v67 = v25;
  sub_1B603A990();
  v64 = *(a1 + v27[6]);
  v66 = v22;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v28 = type metadata accessor for WeatherInterpolationOptions();
  v29 = v68;
  __swift_storeEnumTagSinglePayload(v68, 1, 1, v28);
  v30 = v27[8];
  v31 = (a1 + v27[7]);
  v32 = *v31;
  v59 = v31[1];
  v60 = v32;
  v63 = *(a1 + v30);
  v62 = *(a1 + v30 + 8);
  v33 = v27[10];
  v54 = *(a1 + v27[9]);
  v34 = a1 + v27[21];
  v53 = *v34;
  v52 = *(v34 + 2);
  v35 = *(v34 + 6);
  v34 += 24;
  v58 = v35;
  v55 = *(v34 + 2);
  v57 = *(a1 + v33);
  v51 = v34[6];
  v36 = v70;
  sub_1B603A990();
  v56 = *(a1 + v27[18]);
  v37 = *(a1 + v27[20]);
  v69 = *(a1 + v27[22]);
  v38 = v76;
  *a2 = v61;
  a2[1] = v38;
  v39 = type metadata accessor for WeatherRequestOptions();
  sub_1B603A990();
  *(a2 + v39[6]) = v64;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v40 = v65;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v41 = (a2 + v39[14]);
  v42 = v59;
  *v41 = v60;
  v41[1] = v42;
  v43 = a2 + v39[15];
  *v43 = v63;
  *(v43 + 4) = v62;
  *(a2 + v39[16]) = v54;
  v44 = a2 + v39[17];
  *v44 = v53;
  *(v44 + 2) = v52;
  v44[30] = v51;
  *(v44 + 14) = v55;
  *(v44 + 6) = v58;
  *(a2 + v39[18]) = v57;
  sub_1B603A990();
  *(a2 + v39[20]) = v56;
  *(a2 + v39[21]) = v37;
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();
  v45 = v71;
  _s13WeatherDaemon0A11DataServiceC16addCacheObserver13configuration8observerAA0F16ObservationTokenVAA0fG13ConfigurationV_yAA0fJ0VctF_0();
  v46 = sub_1B621D904();
  v48 = v47;
  (*(v72 + 8))(v45, v73);
  sub_1B6037288(v36, &qword_1EB924F30);
  sub_1B6037288(v29, &qword_1EB924F28);
  sub_1B6037288(v75, &qword_1EB924F20);
  sub_1B6037288(v74, &qword_1EB924F18);
  sub_1B6037288(v40, &qword_1EB924F10);
  sub_1B6037288(v77, &qword_1EB924F08);
  sub_1B6037288(v78, &qword_1EB924F00);
  sub_1B6037288(v66, &qword_1EB924F00);
  result = sub_1B6037288(v67, &qword_1EB924EF8);
  v50 = (a2 + v39[22]);
  *v50 = v46;
  v50[1] = v48;
  *(a2 + v39[23]) = v69;
  return result;
}

uint64_t sub_1B60B6FD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>)
{
  v9 = sub_1B60B6528(a1);
  v10 = type metadata accessor for WeatherRequest();
  result = sub_1B60B673C(a2, (a3 + *(v10 + 24)));
  *a3 = v9;
  *(a3 + 8) = a4;
  *(a3 + 16) = a5;
  v12 = (a3 + *(v10 + 28));
  *v12 = 0;
  v12[1] = 0;
  return result;
}

id WeatherDataServiceProxy.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeatherDataServiceProxy.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void WeatherDataServiceProxy.performRequests(with:completion:)()
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_60();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v1 = sub_1B6220B34();
  __swift_project_value_buffer(v1, qword_1EDAC2AB0);
  v2 = v0;
  v3 = sub_1B6220B14();
  sub_1B62217F4();

  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_9_3();
    swift_slowAlloc();
    v4 = OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_94(v4, 5.8381e-34);
    OUTLINED_FUNCTION_53_0(&dword_1B6020000, v5, v6, "Received XPC message for fetching requests: %{public}@");
    sub_1B6037288(v4, &qword_1EB924E68);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_102_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927520);
  sub_1B62209F4();
  OUTLINED_FUNCTION_90();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_63(v8);
  v9 = sub_1B62208D4();
  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_90();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_63(v10);
  v11 = sub_1B62208D4();
  OUTLINED_FUNCTION_92_0();

  OUTLINED_FUNCTION_48_0();
}

void WeatherDataServiceProxy.fetchAvailableDataSets(with:completion:)()
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_60();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v1 = sub_1B6220B34();
  __swift_project_value_buffer(v1, qword_1EDAC2AB0);
  v2 = v0;
  v3 = sub_1B6220B14();
  sub_1B62217F4();

  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_9_3();
    swift_slowAlloc();
    v4 = OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_94(v4, 5.8381e-34);
    OUTLINED_FUNCTION_53_0(&dword_1B6020000, v5, v6, "Received XPC message for fetching requests: %{public}@");
    sub_1B6037288(v4, &qword_1EB924E68);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_102_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB927110);
  sub_1B62209F4();
  OUTLINED_FUNCTION_90();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_63(v8);
  v9 = sub_1B62208D4();
  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_90();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_63(v10);
  v11 = sub_1B62208D4();
  OUTLINED_FUNCTION_92_0();

  OUTLINED_FUNCTION_48_0();
}

void sub_1B60B7744(uint64_t a1, void (*a2)(id), uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(uint64_t))
{
  objc_allocWithZone(a4(0));
  v7 = sub_1B6220784();
  v8 = a5(v7);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v9 = sub_1B6220B34();
  __swift_project_value_buffer(v9, qword_1EDAC2AB0);
  v10 = v8;
  v11 = sub_1B6220B14();
  v12 = sub_1B62217F4();

  if (os_log_type_enabled(v11, v12))
  {
    OUTLINED_FUNCTION_9_3();
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138543362;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&dword_1B6020000, v11, v12, "Calling XPC completion with responses: %{public}@", v13, 0xCu);
    sub_1B6037288(v14, &qword_1EB924E68);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  a2(v10);
}

void sub_1B60B78C8()
{
  OUTLINED_FUNCTION_44();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1B6220604();
  v9 = OUTLINED_FUNCTION_0(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v12 = v11 - v10;
  v13 = v7;
  sub_1B6220614();
  v14 = objc_allocWithZone(v3(0));
  v15 = v1(v12);
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v16 = sub_1B6220B34();
  __swift_project_value_buffer(v16, qword_1EDAC2AB0);
  v17 = v7;
  v18 = sub_1B6220B14();
  sub_1B62217E4();

  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_9_3();
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136446210;
    v21 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
    v22 = sub_1B6221234();
    v24 = sub_1B602EEB0(v22, v23, &v31);

    *(v19 + 4) = v24;
    OUTLINED_FUNCTION_53_0(&dword_1B6020000, v25, v26, "Calling XPC completion with error: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v20);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90](v27, v28);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90](v29, v30);
  }

  v5(v15);
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B60B7AD4(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  OUTLINED_FUNCTION_84();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

void WeatherDataServiceProxy.fetchAirQualityScale(with:completion:)()
{
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_60();
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v1 = sub_1B6220B34();
  __swift_project_value_buffer(v1, qword_1EDAC2AB0);
  v2 = v0;
  v3 = sub_1B6220B14();
  sub_1B62217F4();

  if (OUTLINED_FUNCTION_126())
  {
    OUTLINED_FUNCTION_9_3();
    swift_slowAlloc();
    v4 = OUTLINED_FUNCTION_93();
    OUTLINED_FUNCTION_94(v4, 5.8381e-34);
    OUTLINED_FUNCTION_53_0(&dword_1B6020000, v5, v6, "Received XPC message for fetching air quality scale: %{public}@");
    sub_1B6037288(v4, &qword_1EB924E68);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  MEMORY[0x1EEE9AC00](v7);
  sub_1B62209F4();
  OUTLINED_FUNCTION_90();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_63(v8);
  v9 = sub_1B62208D4();
  OUTLINED_FUNCTION_91();

  OUTLINED_FUNCTION_90();
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_63(v10);
  v11 = sub_1B62208D4();
  OUTLINED_FUNCTION_92_0();

  OUTLINED_FUNCTION_48_0();
}

uint64_t sub_1B60B7D5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtC13WeatherDaemon27AirQualityScaleProxyRequest_name);
  v3 = *(a2 + OBJC_IVAR____TtC13WeatherDaemon27AirQualityScaleProxyRequest_name + 8);
  v4 = *(a2 + OBJC_IVAR____TtC13WeatherDaemon27AirQualityScaleProxyRequest_options);
  v5 = *(a2 + OBJC_IVAR____TtC13WeatherDaemon27AirQualityScaleProxyRequest_options + 8);
  sub_1B60B5948();
  sub_1B60DC480(v2, v3, v4, v5);
  v7 = v6;

  return v7;
}

uint64_t WeatherDataServiceProxy.fetchAirQualityScale(named:with:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  sub_1B60B5948();
  v6 = OUTLINED_FUNCTION_104();
  sub_1B60DC480(v6, a2, v4, v5);
  v8 = v7;

  return v8;
}

void sub_1B60B7E5C(void *__src, void (*a2)(id))
{
  memcpy(__dst, __src, sizeof(__dst));
  memcpy(v14, __src, sizeof(v14));
  v4 = objc_allocWithZone(type metadata accessor for AirQualityScaleProxyResponse());
  sub_1B60BFF80(__dst, &v13);
  v5 = AirQualityScaleProxyResponse.init(scale:)();
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v6 = sub_1B6220B34();
  __swift_project_value_buffer(v6, qword_1EDAC2AB0);
  v7 = v5;
  v8 = sub_1B6220B14();
  v9 = sub_1B62217F4();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 138543362;
    *(v10 + 4) = v7;
    *v11 = v7;
    v12 = v7;
    _os_log_impl(&dword_1B6020000, v8, v9, "Calling XPC completion with responses: %{public}@", v10, 0xCu);
    sub_1B6037288(v11, &qword_1EB924E68);
    MEMORY[0x1B8C91C90](v11, -1, -1);
    MEMORY[0x1B8C91C90](v10, -1, -1);
  }

  a2(v7);
}

uint64_t sub_1B60B8054()
{
  v1 = sub_1B621D3A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!sub_1B603AA90())
  {
    return sub_1B605F170();
  }

  v5 = sub_1B6221504();

  v6 = *(v5 + 16);
  if (v6)
  {
    v29[2] = v0;
    v36 = MEMORY[0x1E69E7CC0];
    sub_1B603C6EC(0, v6, 0);
    v7 = v36;
    v8 = v2 + 16;
    v9 = *(v2 + 16);
    v10 = *(v2 + 80);
    v29[1] = v5;
    v11 = v5 + ((v10 + 32) & ~v10);
    v31 = *(v8 + 56);
    v32 = v9;
    v33 = v8;
    v30 = (v8 - 8);
    do
    {
      v32(v4, v11, v1);
      v12 = sub_1B621D394();
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        v34 = sub_1B621D384();
        v35 = v16;
        MEMORY[0x1B8C90530](61, 0xE100000000000000);
        MEMORY[0x1B8C90530](v14, v15);

        v17 = v34;
        v18 = v35;
      }

      else
      {
        v17 = sub_1B621D384();
        v18 = v19;
      }

      v20 = v1;
      (*v30)(v4, v1);
      v36 = v7;
      v22 = *(v7 + 16);
      v21 = *(v7 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B603C6EC(v21 > 1, v22 + 1, 1);
        v7 = v36;
      }

      *(v7 + 16) = v22 + 1;
      v23 = v7 + 16 * v22;
      *(v23 + 32) = v17;
      *(v23 + 40) = v18;
      v11 += v31;
      --v6;
      v1 = v20;
    }

    while (v6);
  }

  else
  {

    v7 = MEMORY[0x1E69E7CC0];
  }

  v34 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68);
  sub_1B602CAF4(&qword_1EDAB2168, &qword_1EB924F68);
  v25 = sub_1B6221174();
  v27 = v26;

  v34 = sub_1B605F170();
  v35 = v28;
  MEMORY[0x1B8C90530](63, 0xE100000000000000);
  MEMORY[0x1B8C90530](v25, v27);

  return v34;
}

uint64_t sub_1B60B8384(double a1, double a2, uint64_t a3, char *a4)
{
  sub_1B603CAC0();
  __swift_project_boxed_opaque_existential_1(v25, v26);
  DynamicType = swift_getDynamicType();
  v8 = v27;
  __swift_destroy_boxed_opaque_existential_1(v25);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v9 = sub_1B6220B34();
  __swift_project_value_buffer(v9, qword_1EDAC2AB0);
  v10 = sub_1B6220B14();
  v11 = sub_1B62217F4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25[0] = v13;
    *v12 = 136315138;
    v14 = sub_1B6222144();
    v16 = sub_1B602EEB0(v14, v15, v25);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_1B6020000, v10, v11, "About to fetch products via %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1B8C91C90](v13, -1, -1);
    MEMORY[0x1B8C91C90](v12, -1, -1);
  }

  sub_1B603CAC0();
  v17 = v26;
  v18 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  v19 = *a4;
  v20 = type metadata accessor for WeatherRequest();
  (*(v18 + 16))(v19, &a4[*(v20 + 24)], v17, v18, a1, a2);
  v21 = swift_allocObject();
  *(v21 + 16) = DynamicType;
  *(v21 + 24) = v8;
  v22 = sub_1B62208D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927520);
  v23 = sub_1B6220934();

  __swift_destroy_boxed_opaque_existential_1(v25);
  return v23;
}

uint64_t sub_1B60B8618(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for WeatherModel();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
  v56 = *(v6 - 8);
  v57 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925010);
  v9 = MEMORY[0x1EEE9AC00](v54);
  v65 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v53 = &v46 - v11;
  v12 = type metadata accessor for WeatherDataResponse();
  v51 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = *a1;
  if (qword_1EDAB3D80 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v15 = sub_1B6220B34();
    __swift_project_value_buffer(v15, qword_1EDAC2AB0);
    v16 = sub_1B6220B14();
    v17 = sub_1B62217F4();
    v18 = os_log_type_enabled(v16, v17);
    v55 = v8;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v66 = v20;
      *v19 = 136315138;
      v21 = sub_1B6222144();
      v23 = sub_1B602EEB0(v21, v22, &v66);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1B6020000, v16, v17, "Finished fetching products via %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1B8C91C90](v20, -1, -1);
      MEMORY[0x1B8C91C90](v19, -1, -1);
    }

    v24 = *(v58 + 16);
    v25 = MEMORY[0x1E69E7CC0];
    if (!v24)
    {
      break;
    }

    v64 = v2;
    v66 = MEMORY[0x1E69E7CC0];
    sub_1B605B7F4(0, v24, 0);
    v26 = v58;
    v25 = v66;
    v8 = sub_1B605B84C();
    v29 = 0;
    v30 = v26 + 64;
    v48 = v27;
    v49 = v24;
    v47 = v26 + 72;
    v50 = v26 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v26 + 32))
    {
      if ((*(v30 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_30;
      }

      if (*(v26 + 36) != v27)
      {
        goto LABEL_31;
      }

      v62 = 1 << v8;
      v63 = v8 >> 6;
      v60 = v29;
      v61 = v27;
      v59 = v28;
      v31 = *(*(v26 + 48) + v8);
      v32 = v53;
      *v53 = v31;
      v2 = &qword_1EB925000;
      sub_1B603A990();
      *v65 = *v32;
      sub_1B60BFF1C();
      sub_1B603A990();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        swift_willThrow();
LABEL_27:
        sub_1B6037288(v65, &qword_1EB925010);
      }

      v33 = v52;
      sub_1B602F074();
      v34 = v64;
      sub_1B605B89C(v33, v14);
      v64 = v34;
      if (v34)
      {
        goto LABEL_27;
      }

      sub_1B6037288(v65, &qword_1EB925010);
      v66 = v25;
      v36 = *(v25 + 16);
      v35 = *(v25 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_1B605B7F4(v35 > 1, v36 + 1, 1);
        v25 = v66;
      }

      *(v25 + 16) = v36 + 1;
      sub_1B602F074();
      v26 = v58;
      v37 = 1 << *(v58 + 32);
      if (v8 >= v37)
      {
        goto LABEL_32;
      }

      v30 = v50;
      v38 = *(v50 + 8 * v63);
      if ((v38 & v62) == 0)
      {
        goto LABEL_33;
      }

      if (*(v58 + 36) != v61)
      {
        goto LABEL_34;
      }

      v39 = v38 & (-2 << (v8 & 0x3F));
      if (v39)
      {
        v37 = __clz(__rbit64(v39)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v40 = v49;
      }

      else
      {
        v2 = (v63 << 6);
        v41 = v63 + 1;
        v42 = (v47 + 8 * v63);
        v40 = v49;
        while (v41 < (v37 + 63) >> 6)
        {
          v44 = *v42++;
          v43 = v44;
          v2 += 64;
          ++v41;
          if (v44)
          {
            sub_1B60BFF74(v8, v61, v59 & 1);
            v37 = &v2[__clz(__rbit64(v43))];
            goto LABEL_24;
          }
        }

        sub_1B60BFF74(v8, v61, v59 & 1);
      }

LABEL_24:
      v28 = 0;
      v29 = v60 + 1;
      v8 = v37;
      v27 = v48;
      if (v60 + 1 == v40)
      {
        goto LABEL_28;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_28:
  v66 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925120);
  swift_allocObject();
  return sub_1B6220994();
}

void WeatherDataServiceProxy.perform(requests:for:with:)()
{
  OUTLINED_FUNCTION_44();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for WeatherRequestOptions();
  v8 = OUTLINED_FUNCTION_0(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = (v10 - v9);
  v36 = v0;
  v37 = v6;
  v38 = v2;
  v12 = sub_1B60B454C(sub_1B60BE64C, v35, v4);
  if (*(v12 + 16) == *(v4 + 16))
  {
    v13 = sub_1B60B6528(v6);
    sub_1B60B673C(v2, v11);
    v14 = *v11;
    v15 = v11[1];
    sub_1B6220784();
    v16 = sub_1B60B9000(v14, v15, v12);
    v18 = v17;

    v39[0] = v16;
    v39[1] = v18;
    MEMORY[0x1EEE9AC00](v19);
    *&v35[-32] = v0;
    *&v35[-24] = v4;
    *&v35[-16] = v13;
    *&v35[-8] = v11;
    sub_1B6220784();
    sub_1B6220714();
    swift_bridgeObjectRelease_n();

    OUTLINED_FUNCTION_13_5();
    sub_1B602FC9C(v11, v20);
  }

  else
  {

    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v21 = sub_1B6220B34();
    __swift_project_value_buffer(v21, qword_1EDAC2AB0);
    sub_1B6220784();
    v22 = sub_1B6220B14();
    v23 = sub_1B62217E4();

    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_110();
      swift_slowAlloc();
      OUTLINED_FUNCTION_64();
      v24 = swift_slowAlloc();
      v39[0] = v24;
      OUTLINED_FUNCTION_26(7.2225e-34);
      v25 = type metadata accessor for WeatherServiceRequestLocation();
      v26 = MEMORY[0x1B8C906E0](v4, v25);
      v28 = sub_1B602EEB0(v26, v27, v39);

      *(v11 + 14) = v28;
      OUTLINED_FUNCTION_56();
      _os_log_impl(v29, v30, v31, v32, v33, v34);
      __swift_destroy_boxed_opaque_existential_1(v24);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }

    v39[0] = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924FF8);
    OUTLINED_FUNCTION_73();
    sub_1B6220994();
  }

  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B60B8FA0@<X0>(double *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  sub_1B60B6FD0(a2, a3, a4, *a1, a1[1]);
  v5 = type metadata accessor for WeatherRequest();
  return __swift_storeEnumTagSinglePayload(a4, 0, 1, v5);
}

uint64_t sub_1B60B9000(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for WeatherRequest() - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = a3 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    v12 = 0xE000000000000000;
    do
    {
      sub_1B602E848();
      v13 = sub_1B60B8054();
      v15 = v14;
      v18 = v9;
      v19 = v12;
      sub_1B6220784();
      MEMORY[0x1B8C90530](v13, v15);

      v9 = v18;
      v12 = v19;
      sub_1B602FC9C(v7, type metadata accessor for WeatherRequest);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  v16 = sub_1B6221294();

  return v16;
}

uint64_t sub_1B60B9194(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1B603CAC0();
  __swift_project_boxed_opaque_existential_1(v32, v33);
  DynamicType = swift_getDynamicType();
  v8 = v34;
  __swift_destroy_boxed_opaque_existential_1(v32);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v9 = sub_1B6220B34();
  __swift_project_value_buffer(v9, qword_1EDAC2AB0);
  sub_1B6220784();
  v10 = sub_1B6220B14();
  v11 = sub_1B62217F4();

  if (os_log_type_enabled(v10, v11))
  {
    v30 = a4;
    v31 = a3;
    v12 = swift_slowAlloc();
    v13 = v8;
    v14 = swift_slowAlloc();
    v32[0] = v14;
    *v12 = 136315651;
    v15 = sub_1B6222144();
    v17 = sub_1B602EEB0(v15, v16, v32);

    *(v12 + 4) = v17;
    *(v12 + 12) = 2160;
    *(v12 + 14) = 1752392040;
    *(v12 + 22) = 2081;
    v18 = type metadata accessor for WeatherServiceRequestLocation();
    v19 = MEMORY[0x1B8C906E0](a2, v18);
    v21 = sub_1B602EEB0(v19, v20, v32);

    *(v12 + 24) = v21;
    _os_log_impl(&dword_1B6020000, v10, v11, "About to fetch products via %s, locations=%{private,mask.hash}s", v12, 0x20u);
    swift_arrayDestroy();
    v22 = v14;
    v8 = v13;
    MEMORY[0x1B8C91C90](v22, -1, -1);
    v23 = v12;
    a4 = v30;
    a3 = v31;
    MEMORY[0x1B8C91C90](v23, -1, -1);
  }

  sub_1B603CAC0();
  v24 = v33;
  v25 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v25 + 24))(a3, a2, a4, v24, v25);
  v26 = swift_allocObject();
  *(v26 + 16) = DynamicType;
  *(v26 + 24) = v8;
  v27 = sub_1B62208D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925110);
  v28 = sub_1B6220934();

  __swift_destroy_boxed_opaque_existential_1(v32);
  return v28;
}

uint64_t sub_1B60B9488(uint64_t *a1)
{
  v2 = *a1;
  if (qword_1EDAB3D80 != -1)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v3 = sub_1B6220B34();
    __swift_project_value_buffer(v3, qword_1EDAC2AB0);
    v4 = sub_1B6220B14();
    v5 = sub_1B62217F4();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v26 = v7;
      *v6 = 136315138;
      v8 = sub_1B6222144();
      v10 = sub_1B602EEB0(v8, v9, &v26);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1B6020000, v4, v5, "Finished fetching products via %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1B8C91C90](v7, -1, -1);
      MEMORY[0x1B8C91C90](v6, -1, -1);
    }

    v11 = *(v2 + 16);
    v12 = MEMORY[0x1E69E7CC0];
    if (!v11)
    {
      break;
    }

    v26 = MEMORY[0x1E69E7CC0];
    sub_1B60AA4BC(0, v11, 0);
    v13 = 0;
    v12 = v26;
    v14 = v2 + 48;
    while (v13 < *(v2 + 16))
    {
      v15 = sub_1B6220784();
      v16 = sub_1B60B970C(v15);
      if (v1)
      {
      }

      v19 = v17;
      v20 = v18;
      v21 = v16;

      v26 = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1B60AA4BC((v22 > 1), v23 + 1, 1);
        v12 = v26;
      }

      ++v13;
      *(v12 + 16) = v23 + 1;
      v24 = (v12 + 24 * v23);
      v24[4] = v19;
      v24[5] = v20;
      v24[6] = v21;
      v14 += 24;
      if (v11 == v13)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_14:
    swift_once();
  }

LABEL_11:
  v26 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924FF8);
  swift_allocObject();
  return sub_1B6220994();
}

unint64_t sub_1B60B970C(uint64_t a1)
{
  v3 = type metadata accessor for WeatherModel();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v42 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v36 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925010);
  MEMORY[0x1EEE9AC00](v44);
  v56 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v43 = &v36 - v10;
  v11 = type metadata accessor for WeatherDataResponse();
  v40 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (!v15)
  {
    return v16;
  }

  v55 = v1;
  v57 = MEMORY[0x1E69E7CC0];
  v48 = v12;
  sub_1B605B7F4(0, v15, 0);
  v16 = v57;
  result = sub_1B605B84C();
  v20 = v48;
  v21 = 0;
  v54 = v48 + 64;
  v38 = v18;
  v37 = v48 + 72;
  v41 = v7;
  v39 = v15;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(v20 + 32))
  {
    if ((*(v54 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_27;
    }

    if (*(v20 + 36) != v18)
    {
      goto LABEL_28;
    }

    v51 = 1 << result;
    v52 = result >> 6;
    v49 = v21;
    v50 = v18;
    v47 = v19;
    v22 = v14;
    v23 = v43;
    *v43 = *(*(v20 + 48) + result);
    v53 = result;
    sub_1B603A990();
    *v56 = *v23;
    sub_1B60BFF1C();
    sub_1B603A990();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      swift_willThrow();
LABEL_24:
      sub_1B6037288(v56, &qword_1EB925010);

      return v16;
    }

    v24 = v42;
    sub_1B602F074();
    v14 = v22;
    v25 = v55;
    sub_1B605B89C(v24, v22);
    v55 = v25;
    if (v25)
    {
      goto LABEL_24;
    }

    sub_1B6037288(v56, &qword_1EB925010);
    v57 = v16;
    v27 = *(v16 + 16);
    v26 = *(v16 + 24);
    if (v27 >= v26 >> 1)
    {
      sub_1B605B7F4(v26 > 1, v27 + 1, 1);
      v16 = v57;
    }

    *(v16 + 16) = v27 + 1;
    sub_1B602F074();
    v20 = v48;
    v28 = 1 << *(v48 + 32);
    result = v53;
    if (v53 >= v28)
    {
      goto LABEL_29;
    }

    v29 = *(v54 + 8 * v52);
    if ((v29 & v51) == 0)
    {
      goto LABEL_30;
    }

    if (*(v48 + 36) != v50)
    {
      goto LABEL_31;
    }

    v30 = v29 & (-2 << (v53 & 0x3F));
    if (v30)
    {
      v28 = __clz(__rbit64(v30)) | v53 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v52 << 6;
      v32 = v52 + 1;
      v33 = (v37 + 8 * v52);
      while (v32 < (v28 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          sub_1B60BFF74(v53, v50, v47 & 1);
          v20 = v48;
          v28 = __clz(__rbit64(v34)) + v31;
          goto LABEL_21;
        }
      }

      sub_1B60BFF74(v53, v50, v47 & 1);
      v20 = v48;
    }

LABEL_21:
    v19 = 0;
    v21 = v49 + 1;
    result = v28;
    v18 = v38;
    if (v49 + 1 == v39)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

void WeatherDataServiceProxy.fetchWeatherAlert(with:for:timezone:)()
{
  OUTLINED_FUNCTION_129();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  sub_1B60B5948();
  sub_1B610A890(v11, v9, v7, v5, v3, v1);

  OUTLINED_FUNCTION_48_0();
}

uint64_t WeatherDataServiceProxy.fetchInstantWeather(spanning:stride:for:with:)()
{
  OUTLINED_FUNCTION_58();
  CLLocationCoordinate2D.id.getter();
  v0 = sub_1B6220724();

  return v0;
}

uint64_t sub_1B60B9DC4(uint64_t *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, double a6, double a7)
{
  v91 = a5;
  v87 = a4;
  v84 = a2;
  v85 = a3;
  v10 = sub_1B621D944();
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v88 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v86 = &v69 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F28);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v93 = &v69 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v92 = &v69 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v83 = &v69 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v96 = &v69 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v69 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v69 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = v27;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v69 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v95 = &v69 - v32;
  v33 = type metadata accessor for WeatherRequestOptions();
  v34 = (v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = (&v69 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = a1[1];
  v82 = *a1;
  v80 = v37;
  v38 = type metadata accessor for WeatherDataRequestOptions();
  sub_1B603A990();
  v79 = *(a1 + v38[6]);
  v39 = sub_1B621D364();
  v81 = v30;
  __swift_storeEnumTagSinglePayload(v30, 1, 1, v39);
  __swift_storeEnumTagSinglePayload(v27, 1, 1, v39);
  v40 = type metadata accessor for WeatherRequestDailyRelativeRange();
  v78 = v24;
  __swift_storeEnumTagSinglePayload(v24, 1, 1, v40);
  v41 = type metadata accessor for WeatherRequestHourlyRelativeRange();
  __swift_storeEnumTagSinglePayload(v96, 1, 1, v41);
  v42 = v83;
  sub_1B603A990();
  v43 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  __swift_storeEnumTagSinglePayload(v92, 1, 1, v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925108);
  v45 = &v93[*(v44 + 48)];
  v46 = v93;
  (*(*(v39 - 8) + 16))();
  *v45 = v85;
  v45[8] = v87 & 1;
  v47 = type metadata accessor for WeatherInterpolationOptions();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v47);
  v48 = v38[9];
  v49 = a1 + v38[8];
  v75 = *v49;
  v74 = *(v49 + 4);
  v84 = *(a1 + v48);
  v50 = a1 + v38[21];
  v77 = *v50;
  v76 = *(v50 + 2);
  v51 = *(v50 + 6);
  v50 += 24;
  v85 = v51;
  v73 = *(v50 + 2);
  v70 = v50[6];
  v52 = type metadata accessor for WDSNetworkActivity();
  v53 = v86;
  __swift_storeEnumTagSinglePayload(v86, 1, 1, v52);
  v72 = *(a1 + v38[18]);
  v71 = *(a1 + v38[20]);
  v87 = *(a1 + v38[22]);
  v54 = v80;
  *v36 = v82;
  v36[1] = v54;
  sub_1B603A990();
  *(v36 + v34[8]) = v79;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v55 = v92;
  sub_1B603A990();
  v56 = v93;
  sub_1B603A990();
  v57 = (v36 + v34[16]);
  *v57 = 0;
  v57[1] = 0;
  v58 = v36 + v34[17];
  *v58 = v75;
  *(v58 + 4) = v74;
  *(v36 + v34[18]) = v84;
  v59 = v36 + v34[19];
  *v59 = v77;
  *(v59 + 2) = v76;
  v59[30] = v70;
  *(v59 + 14) = v73;
  *(v59 + 6) = v85;
  *(v36 + v34[20]) = MEMORY[0x1E69E7CC0];
  sub_1B603A990();
  *(v36 + v34[22]) = v72;
  *(v36 + v34[23]) = v71;
  sub_1B6220784();
  sub_1B6220784();
  v60 = v88;
  _s13WeatherDaemon0A11DataServiceC16addCacheObserver13configuration8observerAA0F16ObservationTokenVAA0fG13ConfigurationV_yAA0fJ0VctF_0();
  v61 = sub_1B621D904();
  v85 = v62;
  (*(v89 + 8))(v60, v90);
  sub_1B6037288(v53, &qword_1EB924F30);
  sub_1B6037288(v56, &qword_1EB924F28);
  sub_1B6037288(v55, &qword_1EB924F20);
  sub_1B6037288(v42, &qword_1EB924F18);
  sub_1B6037288(v96, &qword_1EB924F10);
  sub_1B6037288(v78, &qword_1EB924F08);
  sub_1B6037288(v94, &qword_1EB924F00);
  sub_1B6037288(v81, &qword_1EB924F00);
  sub_1B6037288(v95, &qword_1EB924EF8);
  v63 = (v36 + v34[24]);
  v64 = v85;
  *v63 = v61;
  v63[1] = v64;
  *(v36 + v34[25]) = v87;
  sub_1B603CAC0();
  v65 = v98;
  v66 = v99;
  __swift_project_boxed_opaque_existential_1(v97, v98);
  v67 = (*(v66 + 8))(v36, v65, v66, a6, a7);
  sub_1B602FC9C(v36, type metadata accessor for WeatherRequestOptions);
  __swift_destroy_boxed_opaque_existential_1(v97);
  return v67;
}

uint64_t WeatherDataServiceProxy.fetchInstantWeather(at:for:with:)()
{
  OUTLINED_FUNCTION_58();
  CLLocationCoordinate2D.id.getter();
  v0 = sub_1B6220724();

  return v0;
}

uint64_t sub_1B60BA834(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v92 = a3;
  v84 = a2;
  v8 = sub_1B621D944();
  v90 = *(v8 - 8);
  v91 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v89 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v85 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F28);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v97 = &v68 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v95 = &v68 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v94 = &v68 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v93 = &v68 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v68 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v68 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v68 - v30;
  v32 = type metadata accessor for WeatherRequestOptions();
  v33 = (v32 - 8);
  v88 = *(v32 - 8);
  v87 = *(v88 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v86 = &v68 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = (&v68 - v36);
  v38 = a1[1];
  v81 = *a1;
  v96 = v38;
  v39 = type metadata accessor for WeatherDataRequestOptions();
  v83 = v31;
  sub_1B603A990();
  v80 = *(a1 + v39[6]);
  v40 = sub_1B621D364();
  v82 = v28;
  __swift_storeEnumTagSinglePayload(v28, 1, 1, v40);
  __swift_storeEnumTagSinglePayload(v25, 1, 1, v40);
  v41 = type metadata accessor for WeatherRequestDailyRelativeRange();
  v79 = v22;
  __swift_storeEnumTagSinglePayload(v22, 1, 1, v41);
  v42 = type metadata accessor for WeatherRequestHourlyRelativeRange();
  __swift_storeEnumTagSinglePayload(v93, 1, 1, v42);
  sub_1B603A990();
  v43 = type metadata accessor for WeatherRequestMarineHourlyRelativeRange();
  __swift_storeEnumTagSinglePayload(v95, 1, 1, v43);
  v44 = sub_1B621D8F4();
  v45 = v97;
  (*(*(v44 - 8) + 16))(v97, v84, v44);
  v46 = type metadata accessor for WeatherInterpolationOptions();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v45, 0, 1, v46);
  v47 = v39[9];
  v48 = a1 + v39[8];
  v74 = *v48;
  v73 = *(v48 + 4);
  v77 = *(a1 + v47);
  v49 = a1 + v39[21];
  v76 = *v49;
  v75 = *(v49 + 2);
  v50 = *(v49 + 6);
  v49 += 24;
  v78 = v50;
  v72 = *(v49 + 2);
  v69 = v49[6];
  v51 = type metadata accessor for WDSNetworkActivity();
  v52 = v85;
  __swift_storeEnumTagSinglePayload(v85, 1, 1, v51);
  v71 = *(a1 + v39[18]);
  v70 = *(a1 + v39[20]);
  LODWORD(v84) = *(a1 + v39[22]);
  v53 = v96;
  *v37 = v81;
  v37[1] = v53;
  sub_1B603A990();
  *(v37 + v33[8]) = v80;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v54 = v94;
  sub_1B603A990();
  v55 = v95;
  sub_1B603A990();
  v56 = v97;
  sub_1B603A990();
  v57 = (v37 + v33[16]);
  *v57 = 0;
  v57[1] = 0;
  v58 = v37 + v33[17];
  *v58 = v74;
  *(v58 + 4) = v73;
  *(v37 + v33[18]) = v77;
  v59 = v37 + v33[19];
  *v59 = v76;
  *(v59 + 2) = v75;
  v59[30] = v69;
  *(v59 + 14) = v72;
  *(v59 + 6) = v78;
  *(v37 + v33[20]) = MEMORY[0x1E69E7CC0];
  sub_1B603A990();
  *(v37 + v33[22]) = v71;
  *(v37 + v33[23]) = v70;
  sub_1B6220784();
  sub_1B6220784();
  v60 = v89;
  _s13WeatherDaemon0A11DataServiceC16addCacheObserver13configuration8observerAA0F16ObservationTokenVAA0fG13ConfigurationV_yAA0fJ0VctF_0();
  v61 = sub_1B621D904();
  v96 = v62;
  (*(v90 + 8))(v60, v91);
  sub_1B6037288(v52, &qword_1EB924F30);
  sub_1B6037288(v56, &qword_1EB924F28);
  sub_1B6037288(v55, &qword_1EB924F20);
  sub_1B6037288(v54, &qword_1EB924F18);
  sub_1B6037288(v93, &qword_1EB924F10);
  sub_1B6037288(v79, &qword_1EB924F08);
  sub_1B6037288(v98, &qword_1EB924F00);
  sub_1B6037288(v82, &qword_1EB924F00);
  sub_1B6037288(v83, &qword_1EB924EF8);
  v63 = (v37 + v33[24]);
  v64 = v96;
  *v63 = v61;
  v63[1] = v64;
  *(v37 + v33[25]) = v84;
  v99 = v92;
  v100 = a4;
  v101 = a5;
  v102 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250F0);
  sub_1B62209F4();
  sub_1B602E848();
  swift_allocObject();
  sub_1B602F074();
  v65 = sub_1B62208D4();
  type metadata accessor for CurrentWeather();
  v66 = sub_1B6220934();

  sub_1B602FC9C(v37, type metadata accessor for WeatherRequestOptions);
  return v66;
}

uint64_t sub_1B60BB304(double a1, double a2, uint64_t a3, uint64_t a4)
{
  sub_1B603CAC0();
  v7 = v12;
  v8 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v9 = (*(v8 + 8))(a4, v7, v8, a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_1B60BB3B8(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924E80);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = type metadata accessor for CurrentWeather();
  MEMORY[0x1EEE9AC00](v5);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  sub_1B6091EE8(*a1, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    sub_1B6037288(v4, &qword_1EB924E80);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1B6221B34();
    MEMORY[0x1B8C90530](0xD000000000000035, 0x80000001B623CA20);
    type metadata accessor for WeatherRequestOptions();
    sub_1B6221C34();
    v9 = v14;
    v10 = v15;
    sub_1B60BFEAC();
    swift_allocError();
    *v11 = v9;
    v11[1] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925100);
    swift_allocObject();
    return sub_1B6220984();
  }

  else
  {
    sub_1B602F074();
    sub_1B602E848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925100);
    swift_allocObject();
    v12 = sub_1B6220994();
    sub_1B602FC9C(v8, type metadata accessor for CurrentWeather);
  }

  return v12;
}

void WeatherDataServiceProxy.cached(_:for:with:)()
{
  OUTLINED_FUNCTION_116();
  v139 = v0;
  v3 = v2;
  OUTLINED_FUNCTION_58();
  v138 = v4;
  v141 = type metadata accessor for WeatherModel();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v150 = (v7 - v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925000);
  OUTLINED_FUNCTION_2();
  v153 = v9;
  v154 = v8;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  v152 = v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925008);
  OUTLINED_FUNCTION_0(v12);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  v149 = v14;
  OUTLINED_FUNCTION_21_2();
  v148 = type metadata accessor for WeatherDataResponse();
  OUTLINED_FUNCTION_2();
  v118[2] = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2_3();
  v118[3] = v17;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_22_2(v19);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925010);
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_9_0();
  v156 = v21;
  OUTLINED_FUNCTION_21_2();
  v137 = sub_1B621D944();
  OUTLINED_FUNCTION_2();
  v136 = v22;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_22_2(v25 - v24);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F30);
  OUTLINED_FUNCTION_0(v26);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_22_2(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F28);
  OUTLINED_FUNCTION_0(v29);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_9_0();
  v144 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F20);
  OUTLINED_FUNCTION_0(v32);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_22_2(v34);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F18);
  OUTLINED_FUNCTION_0(v35);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_22_2(v37);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F10);
  OUTLINED_FUNCTION_0(v38);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_9_0();
  v155 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F08);
  OUTLINED_FUNCTION_0(v41);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v42);
  v146 = v118 - v43;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F00);
  v45 = OUTLINED_FUNCTION_0(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_10();
  v147 = v46 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v50 = v118 - v49;
  v51 = OUTLINED_FUNCTION_112();
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(v51);
  OUTLINED_FUNCTION_0(v52);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9_1();
  v54 = type metadata accessor for WeatherRequestOptions();
  v55 = (v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_14();
  v58 = (v57 - v56);
  v59 = v3[1];
  v140 = *v3;
  v145 = v59;
  v60 = type metadata accessor for WeatherDataRequestOptions();
  v132 = v1;
  sub_1B603A990();
  LODWORD(v130) = *(v3 + v60[6]);
  v131 = v50;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v61 = type metadata accessor for WeatherInterpolationOptions();
  __swift_storeEnumTagSinglePayload(v144, 1, 1, v61);
  v62 = v60[8];
  v63 = (v3 + v60[7]);
  v65 = *v63;
  v64 = v63[1];
  v128 = v65;
  v127 = v64;
  v66 = v3 + v62;
  v129 = *(v3 + v62);
  v67 = v60[10];
  v68 = *(v3 + v60[9]);
  v69 = v3 + v60[21];
  v123 = *v69;
  v122 = *(v69 + 2);
  v70 = *(v69 + 6);
  v69 += 24;
  v126 = v70;
  v119 = *(v66 + 4);
  v124 = *(v69 + 2);
  v125 = *(v3 + v67);
  v120 = v69[6];
  v71 = type metadata accessor for WDSNetworkActivity();
  v72 = v134;
  __swift_storeEnumTagSinglePayload(v134, 1, 1, v71);
  v121 = *(v3 + v60[18]);
  v73 = *(v3 + v60[20]);
  v133 = *(v3 + v60[22]);
  v74 = v145;
  *v58 = v140;
  v58[1] = v74;
  sub_1B603A990();
  *(v58 + v55[8]) = v130;
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  sub_1B603A990();
  v75 = v142;
  sub_1B603A990();
  sub_1B603A990();
  v76 = v144;
  sub_1B603A990();
  v77 = (v58 + v55[16]);
  v78 = v127;
  *v77 = v128;
  v77[1] = v78;
  v79 = v58 + v55[17];
  *v79 = v129;
  *(v79 + 4) = v119;
  v80 = v55[18];
  v130 = v68;
  *(v58 + v80) = v68;
  v81 = v58 + v55[19];
  *v81 = v123;
  *(v81 + 2) = v122;
  v81[30] = v120;
  *(v81 + 14) = v124;
  v140 = v81;
  *(v81 + 6) = v126;
  *(v58 + v55[20]) = v125;
  sub_1B603A990();
  *(v58 + v55[22]) = v121;
  *(v58 + v55[23]) = v73;
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();
  sub_1B6220784();
  v82 = v135;
  _s13WeatherDaemon0A11DataServiceC16addCacheObserver13configuration8observerAA0F16ObservationTokenVAA0fG13ConfigurationV_yAA0fJ0VctF_0();
  v83 = sub_1B621D904();
  v85 = v84;
  (*(v136 + 8))(v82, v137);
  sub_1B6037288(v72, &qword_1EB924F30);
  sub_1B6037288(v76, &qword_1EB924F28);
  sub_1B6037288(v143, &qword_1EB924F20);
  sub_1B6037288(v75, &qword_1EB924F18);
  sub_1B6037288(v155, &qword_1EB924F10);
  sub_1B6037288(v146, &qword_1EB924F08);
  sub_1B6037288(v147, &qword_1EB924F00);
  sub_1B6037288(v131, &qword_1EB924F00);
  sub_1B6037288(v132, &qword_1EB924EF8);
  v86 = (v58 + v55[24]);
  *v86 = v83;
  v86[1] = v85;
  *(v58 + v55[25]) = v133;
  v87 = *(v138 + 16);
  if (v87)
  {
    v88 = v138;
    v157[0] = MEMORY[0x1E69E7CC0];
    sub_1B6035220(0, v87, 0);
    v89 = v157[0];
    v90 = (v88 + 32);
    do
    {
      v91 = *v90++;
      v92 = byte_1B622695A[v91];
      v157[0] = v89;
      v94 = *(v89 + 16);
      v93 = *(v89 + 24);
      if (v94 >= v93 >> 1)
      {
        sub_1B6035220(v93 > 1, v94 + 1, 1);
        v89 = v157[0];
      }

      *(v89 + 16) = v94 + 1;
      *(v89 + v94 + 32) = v92;
      --v87;
    }

    while (v87);
  }

  sub_1B603CAC0();
  v95 = __swift_project_boxed_opaque_existential_1(v157, v157[3]);
  v96 = OUTLINED_FUNCTION_17_2();
  v97(v96);
  OUTLINED_FUNCTION_104();

  v155 = v95;
  if (v95)
  {
    __swift_destroy_boxed_opaque_existential_1(v157);
    v98 = v155 + 8;
    v99 = 1 << *(v155 + 32);
    v100 = -1;
    if (v99 < 64)
    {
      v100 = ~(-1 << v99);
    }

    v101 = v100 & v155[8];
    v102 = (v99 + 63) >> 6;
    sub_1B6220784();
    v103 = 0;
    v147 = MEMORY[0x1E69E7CC0];
    v146 = v130 & 4;
    v104 = v156;
    while (v101)
    {
      v105 = v103;
LABEL_15:
      v106 = *(v155[6] + (__clz(__rbit64(v101)) | (v105 << 6)));
      sub_1B603A990();
      *v104 = v106;
      v107 = v152;
      sub_1B603A990();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v108 = *v107;
        v109 = ((*(v140 + 6) | ((*(v140 + 14) | (v140[30] << 16)) << 32)) >> 16) & 1;
        if ((*(v140 + 6) & 0xFF00) == 0x200)
        {
          LOBYTE(v109) = 0;
        }

        if ((v109 & 1) == 0 && !v146)
        {
          swift_willThrow();

          sub_1B6037288(v156, &qword_1EB925010);

          goto LABEL_35;
        }

        v110 = 1;
        v112 = v148;
        v111 = v149;
      }

      else
      {
        sub_1B602F074();
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v112 = v148;
        v111 = v149;
        switch(EnumCaseMultiPayload)
        {
          case 1:
          case 2:
          case 3:
          case 5:
          case 7:
            OUTLINED_FUNCTION_42_2();
            sub_1B602F074();
            break;
          case 6:
            *v149 = *v150;
            break;
          default:
            OUTLINED_FUNCTION_42_2();
            sub_1B60BFF1C();
            break;
        }

        OUTLINED_FUNCTION_112();
        swift_storeEnumTagMultiPayload();
        v110 = 0;
      }

      v101 &= v101 - 1;
      __swift_storeEnumTagSinglePayload(v111, v110, 1, v112);
      sub_1B6037288(v156, &qword_1EB925010);
      if (__swift_getEnumTagSinglePayload(v111, 1, v112) == 1)
      {
        sub_1B6037288(v111, &qword_1EB925008);
        v103 = v105;
      }

      else
      {
        sub_1B602F074();
        sub_1B602F074();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_14_7();
          sub_1B609C8CC();
          v147 = v115;
        }

        v114 = *(v147 + 16);
        if (v114 >= *(v147 + 24) >> 1)
        {
          sub_1B609C8CC();
          v147 = v116;
        }

        *(v147 + 16) = v114 + 1;
        OUTLINED_FUNCTION_16_6();
        sub_1B602F074();
        v103 = v105;
      }
    }

    while (1)
    {
      v105 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      if (v105 >= v102)
      {

        goto LABEL_35;
      }

      v101 = v98[v105];
      ++v103;
      if (v101)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v157);
LABEL_35:
    OUTLINED_FUNCTION_13_5();
    sub_1B602FC9C(v58, v117);
    OUTLINED_FUNCTION_117();
  }
}

uint64_t WeatherDataServiceProxy.addCacheObserver(configuration:observer:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *(a1 + 24);
  v9 = *(a1 + 25);
  sub_1B603CAC0();
  v10 = v17;
  v11 = v18;
  __swift_project_boxed_opaque_existential_1(v16, v17);
  v13[0] = v5;
  v13[1] = v6;
  v13[2] = v7;
  v14 = v8;
  v15 = v9;
  (*(v11 + 56))(v13, a2, a3, v10, v11);
  return __swift_destroy_boxed_opaque_existential_1(v16);
}

uint64_t WeatherDataServiceProxy.removeCacheObserver(token:)(uint64_t a1)
{
  sub_1B603CAC0();
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 64))(a1, v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

uint64_t WeatherDataServiceProxy.removeCacheObservers(with:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = *(a1 + 24);
  v5 = *(a1 + 25);
  sub_1B603CAC0();
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v9[0] = v1;
  v9[1] = v2;
  v9[2] = v3;
  v10 = v4;
  v11 = v5;
  (*(v7 + 72))(v9, v6, v7);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

void WeatherDataServiceProxy.fetchDailySummary(_:for:start:end:with:)()
{
  OUTLINED_FUNCTION_116();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  OUTLINED_FUNCTION_58();
  v9 = v8;
  v11 = *(v10 + 8);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_17_2();
  CLLocationCoordinate2D.id.getter();

  OUTLINED_FUNCTION_77();
  MEMORY[0x1B8C90530](v7, v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1B8C90530](v3, v1);
  OUTLINED_FUNCTION_77();
  v12 = sub_1B6195268(v9);
  MEMORY[0x1B8C90530](v12);

  OUTLINED_FUNCTION_77();
  if (v11)
  {
    v13 = 0xE300000000000000;
    v14 = 7104878;
  }

  else
  {
    v14 = sub_1B6221F04();
    v13 = v15;
  }

  MEMORY[0x1B8C90530](v14, v13);

  OUTLINED_FUNCTION_77();
  v16 = sub_1B60701A0();
  MEMORY[0x1B8C90530](v16);

  MEMORY[0x1EEE9AC00](v17);
  sub_1B6220724();

  OUTLINED_FUNCTION_117();
}

uint64_t sub_1B60BCAD8(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  sub_1B603CAC0();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  v21 = a9;
  v22 = a10 & 1;
  v19 = sub_1B60A0718(a4, a5, a6, a7, a8, &v21, a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return v19;
}

uint64_t sub_1B60BCBC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(double))
{
  OUTLINED_FUNCTION_58();
  sub_1B603CAC0();
  __swift_project_boxed_opaque_existential_1(v12, v12[3]);
  v9 = OUTLINED_FUNCTION_17_2();
  v10 = a8(v9);
  __swift_destroy_boxed_opaque_existential_1(v12);
  return v10;
}

void sub_1B60BCCA0()
{
  OUTLINED_FUNCTION_116();
  OUTLINED_FUNCTION_58();
  v1 = v0;
  v3 = *(v2 + 8);
  OUTLINED_FUNCTION_118();
  OUTLINED_FUNCTION_17_2();
  CLLocationCoordinate2D.id.getter();

  OUTLINED_FUNCTION_77();
  v4 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v4);

  OUTLINED_FUNCTION_77();
  v5 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v5);

  OUTLINED_FUNCTION_77();
  v6 = sub_1B6195268(v1);
  MEMORY[0x1B8C90530](v6);

  OUTLINED_FUNCTION_77();
  if (v3)
  {
    v7 = 0xE300000000000000;
    v8 = 7104878;
  }

  else
  {
    v8 = sub_1B6221F04();
    v7 = v9;
  }

  MEMORY[0x1B8C90530](v8, v7);

  OUTLINED_FUNCTION_77();
  v10 = sub_1B60701A0();
  MEMORY[0x1B8C90530](v10);

  MEMORY[0x1EEE9AC00](v11);
  sub_1B6220724();

  OUTLINED_FUNCTION_117();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> WeatherDataServiceProxy.insertIntoCache(requestUrl:responseJson:)(Swift::String requestUrl, Swift::String responseJson)
{
  v121 = responseJson;
  object = requestUrl._object;
  countAndFlagsBits = requestUrl._countAndFlagsBits;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925018);
  OUTLINED_FUNCTION_0(v3);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  v125 = v5;
  OUTLINED_FUNCTION_21_2();
  v123 = type metadata accessor for WeatherRequestOptions();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_22_2(v8 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925020);
  OUTLINED_FUNCTION_0(v9);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  v129 = v11;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925028);
  OUTLINED_FUNCTION_2();
  v126 = v12;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_0();
  v127 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925030);
  OUTLINED_FUNCTION_2();
  v132 = v15;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = v120 - v17;
  v19 = sub_1B621D474();
  OUTLINED_FUNCTION_2();
  v128 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_14();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F58);
  v26 = OUTLINED_FUNCTION_0(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_10();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v32 = v120 - v31;
  v124 = countAndFlagsBits;
  sub_1B621D444();
  v141 = MEMORY[0x1E69E7CC0];
  v133 = v32;
  sub_1B603A990();
  OUTLINED_FUNCTION_16_5(v29, 1, v19);
  if (v33)
  {
    sub_1B6037288(v29, &qword_1EB924F58);
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v34 = sub_1B6220B34();
    __swift_project_value_buffer(v34, qword_1EDAC2AB0);
    v35 = sub_1B6220B14();
    v36 = sub_1B62217F4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1B6020000, v35, v36, "insertIntoCache: Could not parse request components", v37, 2u);
      OUTLINED_FUNCTION_4_0();
      MEMORY[0x1B8C91C90]();
    }

    sub_1B60BE750();
    OUTLINED_FUNCTION_127();
    *v38 = 0;
    v38[1] = 0;
    swift_willThrow();
    goto LABEL_19;
  }

  (*(v128 + 32))(v24, v29, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925038);
  sub_1B6220A24();
  v122 = v24;
  sub_1B621D404();
  v39 = v129;
  v120[1] = v18;
  v40 = v130;
  sub_1B6220A34();
  v130 = v19;
  if (v40)
  {

    __swift_storeEnumTagSinglePayload(v39, 1, 1, v131);
LABEL_12:
    sub_1B6037288(v39, &qword_1EB925020);
    goto LABEL_13;
  }

  v18 = v131;
  OUTLINED_FUNCTION_16_5(v39, 1, v131);
  if (v33)
  {
    goto LABEL_12;
  }

  v60 = v126;
  (*(v126 + 32))(v127, v39, v18);
  swift_getKeyPath();
  OUTLINED_FUNCTION_80();
  sub_1B6220A44();

  if (!((v136 ^ *&v135) >> 14))
  {
    (*(v60 + 8))(v127, v18);

    goto LABEL_13;
  }

  v61 = OUTLINED_FUNCTION_86();
  sub_1B60BF824(v61, v62, v63, v64, v65);
  v129 = 0;
  if ((v66 & 0x100) == 0)
  {
    v67 = v66;

    if ((v67 & 1) == 0)
    {
      goto LABEL_24;
    }

LABEL_27:
    (*(v60 + 8))(v127, v18);
    goto LABEL_13;
  }

  v71 = OUTLINED_FUNCTION_86();
  sub_1B60BE7A4(v71, v72, v73, v74, v75);
  v77 = v76;

  if (v77)
  {
    goto LABEL_27;
  }

LABEL_24:
  swift_getKeyPath();
  OUTLINED_FUNCTION_80();
  v68 = v127;
  sub_1B6220A44();

  *&v69 = COERCE_DOUBLE(sub_1B6221714());
  if (v70)
  {
    (*(v60 + 8))(v68, v18);
  }

  else
  {
    v78 = *&v69;
    swift_getKeyPath();
    OUTLINED_FUNCTION_80();
    sub_1B6220A44();

    *&v79 = COERCE_DOUBLE(sub_1B6221714());
    v81 = v80;
    (*(v60 + 8))(v68, v18);
    if ((v81 & 1) == 0)
    {
      v82 = sub_1B621D3B4();
      if (v82)
      {
        v83 = v129;
        sub_1B60B56B0(v82, &v141);

        sub_1B6220784();
        v84 = v125;
        sub_1B60AF34C();
        OUTLINED_FUNCTION_16_5(v84, 1, v123);
        if (!v33)
        {
          v111 = *&v79;
          v112 = v120[3];
          sub_1B602F074();
          sub_1B603CAC0();
          v113 = v138;
          v114 = v139;
          __swift_project_boxed_opaque_existential_1(&v135, v138);
          (*(v114 + 48))(v141, v112, v121._countAndFlagsBits, v121._object, v113, v114, v78, v111);
          OUTLINED_FUNCTION_13_5();
          sub_1B602FC9C(v112, v115);
          v116 = OUTLINED_FUNCTION_88();
          v117(v116);
          v118 = OUTLINED_FUNCTION_82();
          v119(v118);
          sub_1B6037288(v133, &qword_1EB924F58);
          __swift_destroy_boxed_opaque_existential_1(&v135);
          goto LABEL_20;
        }

        sub_1B6037288(v84, &qword_1EB925018);
        if (qword_1EDAB3D80 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v85 = sub_1B6220B34();
        __swift_project_value_buffer(v85, qword_1EDAC2AB0);
        v86 = sub_1B6220B14();
        v87 = sub_1B62217F4();
        if (OUTLINED_FUNCTION_95(v87))
        {
          OUTLINED_FUNCTION_110();
          swift_slowAlloc();
          OUTLINED_FUNCTION_64();
          v88 = swift_slowAlloc();
          v140[0] = v88;
          OUTLINED_FUNCTION_26(7.2225e-34);
          v135 = v78;
          v136 = v79;
          type metadata accessor for CLLocationCoordinate2D(0);
          v89 = sub_1B6221234();
          v91 = sub_1B602EEB0(v89, v90, v140);

          *(v83 + 14) = v91;
          OUTLINED_FUNCTION_56();
          _os_log_impl(v92, v93, v94, v95, v96, v97);
          __swift_destroy_boxed_opaque_existential_1(v88);
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();
        }

        sub_1B60BE750();
        OUTLINED_FUNCTION_127();
        v55 = xmmword_1B62264F0;
      }

      else
      {
        if (qword_1EDAB3D80 != -1)
        {
          OUTLINED_FUNCTION_0_17();
          swift_once();
        }

        v98 = sub_1B6220B34();
        __swift_project_value_buffer(v98, qword_1EDAC2AB0);
        v99 = sub_1B6220B14();
        v100 = sub_1B62217F4();
        if (OUTLINED_FUNCTION_95(v100))
        {
          OUTLINED_FUNCTION_110();
          swift_slowAlloc();
          OUTLINED_FUNCTION_64();
          v101 = swift_slowAlloc();
          v140[0] = v101;
          OUTLINED_FUNCTION_26(7.2225e-34);
          v135 = v78;
          v136 = v79;
          type metadata accessor for CLLocationCoordinate2D(0);
          v102 = sub_1B6221234();
          v104 = sub_1B602EEB0(v102, v103, v140);

          *(v18 + 14) = v104;
          OUTLINED_FUNCTION_56();
          _os_log_impl(v105, v106, v107, v108, v109, v110);
          __swift_destroy_boxed_opaque_existential_1(v101);
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();
          OUTLINED_FUNCTION_4_0();
          MEMORY[0x1B8C91C90]();
        }

        sub_1B60BE750();
        OUTLINED_FUNCTION_127();
        v55 = xmmword_1B6226500;
      }

      goto LABEL_18;
    }
  }

LABEL_13:
  if (qword_1EDAB3D80 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v41 = sub_1B6220B34();
  __swift_project_value_buffer(v41, qword_1EDAC2AB0);
  v42 = sub_1B6220B14();
  v43 = sub_1B62217F4();
  if (OUTLINED_FUNCTION_95(v43))
  {
    OUTLINED_FUNCTION_110();
    swift_slowAlloc();
    OUTLINED_FUNCTION_64();
    v44 = swift_slowAlloc();
    v140[0] = v44;
    OUTLINED_FUNCTION_26(7.2225e-34);
    v135 = 0.0;
    v136 = 0;
    LOBYTE(v137) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925040);
    v45 = sub_1B6221234();
    v47 = sub_1B602EEB0(v45, v46, v140);

    *(v18 + 14) = v47;
    OUTLINED_FUNCTION_56();
    _os_log_impl(v48, v49, v50, v51, v52, v53);
    __swift_destroy_boxed_opaque_existential_1(v44);
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
    OUTLINED_FUNCTION_4_0();
    MEMORY[0x1B8C91C90]();
  }

  sub_1B60BE750();
  OUTLINED_FUNCTION_127();
  v55 = xmmword_1B6226510;
LABEL_18:
  *v54 = v55;
  swift_willThrow();
  v56 = OUTLINED_FUNCTION_112();
  v57(v56);
  v58 = OUTLINED_FUNCTION_82();
  v59(v58);
LABEL_19:
  sub_1B6037288(v133, &qword_1EB924F58);
LABEL_20:
}

Swift::Void __swiftcall WeatherDataServiceProxy.cleanupCaches()()
{
  sub_1B603CAC0();
  v0 = v3;
  v1 = v4;
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v1 + 80))(v0, v1);
  __swift_destroy_boxed_opaque_existential_1(v2);
}

void sub_1B60BDD04()
{
  OUTLINED_FUNCTION_44();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  OUTLINED_FUNCTION_0(v1);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v2);
  v4 = v26 - v3;
  v5 = sub_1B621DB64();
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_59();
  v9 = sub_1B621DB04();
  v10 = OUTLINED_FUNCTION_3_11(v9);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v15 = v14 - v13;
  v16 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  sub_1B621DB44();
  OUTLINED_FUNCTION_71();
  if (__swift_getEnumTagSinglePayload(v23, v24, v25) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v7 + 32))(v0, v4, v5);
    static Calendar.currentCalendar(with:)(v0, v15);
    (*(v7 + 8))(v0, v5);
    sub_1B621DA74();
    (*(v12 + 8))(v15, v26[1]);
    sub_1B621D894();
    sub_1B62216F4();
    (*(v18 + 8))(v22, v16);
    OUTLINED_FUNCTION_5_2();
    OUTLINED_FUNCTION_45();
  }
}

void sub_1B60BDF5C()
{
  OUTLINED_FUNCTION_44();
  v50 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_0(v2);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47 - v4;
  v6 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v54 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v52 = v10 - v9;
  OUTLINED_FUNCTION_21_2();
  v53 = sub_1B621D4F4();
  OUTLINED_FUNCTION_2();
  v51 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v15 = v14 - v13;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EF8);
  OUTLINED_FUNCTION_0(v16);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  v20 = sub_1B621DB64();
  OUTLINED_FUNCTION_2();
  v22 = v21;
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_59();
  sub_1B621DB04();
  OUTLINED_FUNCTION_2();
  v48 = v25;
  v49 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v28 = v27 - v26;
  sub_1B621DB44();
  if (__swift_getEnumTagSinglePayload(v19, 1, v20) == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v22 + 32))(v1, v19, v20);
    static Calendar.currentCalendar(with:)(v1, v28);
    (*(v22 + 8))(v1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250D0);
    v29 = sub_1B621DAF4();
    OUTLINED_FUNCTION_2();
    v31 = v30;
    v33 = *(v32 + 72);
    v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1B6226520;
    v36 = v35 + v34;
    v37 = *(v31 + 104);
    v37(v36, *MEMORY[0x1E6969A68], v29);
    v37(v36 + v33, *MEMORY[0x1E6969A78], v29);
    v37(v36 + 2 * v33, *MEMORY[0x1E6969A48], v29);
    v37(v36 + 3 * v33, *MEMORY[0x1E6969A58], v29);
    sub_1B605954C(v35);
    v38 = v50;
    sub_1B621DA94();

    sub_1B621DAA4();
    OUTLINED_FUNCTION_71();
    if (__swift_getEnumTagSinglePayload(v39, v40, v41) == 1)
    {
      v42 = v54;
      v43 = v52;
      (*(v54 + 16))(v52, v38, v6);
      OUTLINED_FUNCTION_71();
      if (__swift_getEnumTagSinglePayload(v44, v45, v46) != 1)
      {
        sub_1B6037288(v5, &qword_1EB924600);
      }
    }

    else
    {
      v42 = v54;
      v43 = v52;
      (*(v54 + 32))(v52, v5, v6);
    }

    sub_1B621D894();
    sub_1B62216F4();
    (*(v42 + 8))(v43, v6);
    (*(v51 + 8))(v15, v53);
    (*(v48 + 8))(v28, v49);
    OUTLINED_FUNCTION_45();
  }
}

uint64_t sub_1B60BE450@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B621D384();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1B60BE750()
{
  result = qword_1EDAAF030;
  if (!qword_1EDAAF030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF030);
  }

  return result;
}

unsigned __int8 *sub_1B60BE7A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1B60BF994();
  sub_1B6220784();
  result = sub_1B62213C4();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1B60C1FF8();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1B6221BA4();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1B60BED38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v43 = a5;
  v55 = a4;
  v56 = a2;
  v50 = a3;
  v54 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925160);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v53 = &v40 - v8;
  v51 = sub_1B6220544();
  MEMORY[0x1EEE9AC00](v51);
  v52 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6221834();
  v48 = *(v10 - 8);
  v49 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B6221034();
  v45 = *(v12 - 8);
  v46 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925168);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925170);
  v18 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v20 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925178);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v40 - v23;
  v58[3] = &type metadata for WeatherDataInterpolator;
  v58[4] = &protocol witness table for WeatherDataInterpolator;
  *v58 = a6;
  v25 = OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_cacheProcessingStream;
  v41 = OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_cacheProcessingContinuation;
  type metadata accessor for WeatherDataManager.CacheProcessingRequest(0);
  (*(v15 + 104))(v17, *MEMORY[0x1E69E8650], v14);
  v26 = v43;
  sub_1B6221654();
  (*(v15 + 8))(v17, v14);
  (*(v22 + 32))(v26 + v25, v24, v21);
  (*(v18 + 32))(v26 + v41, v20, v42);
  v27 = OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_purgeCacheAfterFetch;
  sub_1B621DC04();
  sub_1B621DBF4();
  if (qword_1EDAB20B8 != -1)
  {
    swift_once();
  }

  sub_1B621DBE4();

  *(v26 + v27) = (v57 & 1) == 0;
  v42 = OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_fetchQueue;
  sub_1B602370C(0, &qword_1EDAB4020);
  v28 = v44;
  sub_1B6221024();
  v57 = MEMORY[0x1E69E7CC0];
  sub_1B602CB84(&qword_1EDAB4028, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924AE0);
  sub_1B602CAF4(qword_1EDAB4030, &qword_1EB924AE0);
  v29 = v47;
  v30 = v49;
  sub_1B6221AA4();
  v31 = static OS_dispatch_queue.schedulingQueue(named:attributes:qualityOfService:)();
  (*(v48 + 8))(v29, v30);
  (*(v45 + 8))(v28, v46);
  *(v26 + v42) = v31;
  *(v26 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_service) = v54;
  *(v26 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_marineService) = v56;
  sub_1B602E8A0(v58, v26 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_interpolator);
  v32 = swift_allocObject();
  v33 = v55;
  *(v32 + 16) = v50;
  *(v32 + 24) = v33;
  v57 = MEMORY[0x1E69E7CC0];
  sub_1B602CB84(&qword_1EDAB3F58, MEMORY[0x1E69D6420]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924FD0);
  sub_1B602CAF4(&qword_1EDAB3D78, &qword_1EB924FD0);
  sub_1B6221AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925180);
  swift_allocObject();
  *(v26 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_lazyStore) = sub_1B6220874();
  type metadata accessor for WeatherDataCacheObservationManager();
  swift_allocObject();
  v34 = swift_retain_n();
  *(v26 + OBJC_IVAR____TtC13WeatherDaemon18WeatherDataManager_cacheObservationManager) = sub_1B60659E4(v34);
  sub_1B6062D74();
  v35 = v53;
  sub_1B6221624();
  v36 = sub_1B6221644();
  __swift_storeEnumTagSinglePayload(v35, 0, 1, v36);
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v37;
  sub_1B6101560(0xD000000000000026, 0x80000001B623CA90, v35, &unk_1B62268D8, v38);

  __swift_destroy_boxed_opaque_existential_1(v58);
  return v26;
}

void *sub_1B60BF5DC(uint64_t a1, uint64_t a2, void *a3, double a4)
{
  v8 = sub_1B6220514();
  MEMORY[0x1EEE9AC00](v8);
  v11 = &type metadata for WeatherDataInterpolator;
  v12 = &protocol witness table for WeatherDataInterpolator;
  *&v10 = a4;
  sub_1B621D8F4();
  a3[9] = sub_1B6221124();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925150);
  *(swift_allocObject() + 16) = xmmword_1B6225510;
  sub_1B6220504();
  sub_1B602CB84(&unk_1EDAB3C40, MEMORY[0x1E69D6388]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925158);
  sub_1B602CAF4(&qword_1EDAB2228, &qword_1EB925158);
  sub_1B6221AA4();
  sub_1B6220534();
  swift_allocObject();
  a3[10] = sub_1B6220524();
  a3[2] = a1;
  a3[3] = a2;
  sub_1B60273A4(&v10, (a3 + 4));
  return a3;
}

uint64_t sub_1B60BF824(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_1B6221BA4();
  }

  result = sub_1B60BF9E8(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t type metadata accessor for WeatherDataServiceProxy()
{
  result = qword_1EDAB4810;
  if (!qword_1EDAB4810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1B60BF994()
{
  result = qword_1EB9250E8;
  if (!qword_1EB9250E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9250E8);
  }

  return result;
}

uint64_t sub_1B60BF9E8(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_1B6176C54(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_1B6221364();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_1B6176C54(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_1B6176C54(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_1B6221364();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
              }

              v34 = -87;
            }

            else
            {
              v34 = -55;
            }
          }

          else
          {
            v34 = -48;
          }

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_1B60BFE48()
{
  v0 = type metadata accessor for WeatherRequestOptions();
  OUTLINED_FUNCTION_0(v0);
  v1 = OUTLINED_FUNCTION_66();
  return sub_1B60BB3B8(v1);
}

unint64_t sub_1B60BFEAC()
{
  result = qword_1EB9250F8;
  if (!qword_1EB9250F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9250F8);
  }

  return result;
}

uint64_t sub_1B60BFF1C()
{
  OUTLINED_FUNCTION_37();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1);
  OUTLINED_FUNCTION_9();
  v2 = OUTLINED_FUNCTION_5_2();
  v3(v2);
  return v0;
}

uint64_t sub_1B60BFF74(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t objectdestroy_53Tm()
{
  type metadata accessor for WDSEndpoint();
  OUTLINED_FUNCTION_57();
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v5 = *(v4 + 64);
  sub_1B621D634();
  OUTLINED_FUNCTION_9();
  (*(v6 + 8))(v0 + v3);
  OUTLINED_FUNCTION_81();
  if (v7)
  {
  }

  v8 = (v3 + v5) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 47) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_1(v0 + v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + v10);
  __swift_destroy_boxed_opaque_existential_1(v0 + ((v10 + 47) & 0xFFFFFFFFFFFFFFF8));

  return MEMORY[0x1EEE6BDD0](v0, ((v10 + 95) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1B60C0334()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B6049918;

  return sub_1B61E5278();
}

uint64_t sub_1B60C03F0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B60C0440(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1B60C0494(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B60C04AC(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_74()
{

  return sub_1B602F074();
}

uint64_t OUTLINED_FUNCTION_92_0()
{

  return sub_1B6220974();
}

uint64_t OUTLINED_FUNCTION_119()
{
}

uint64_t OUTLINED_FUNCTION_121()
{

  return sub_1B6037288(v1 - 304, v0);
}

uint64_t OUTLINED_FUNCTION_123()
{

  return sub_1B603A990();
}

void *OUTLINED_FUNCTION_125(void *a1)
{

  return memcpy(a1, v1, 0x48uLL);
}

uint64_t sub_1B60C05E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925160);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22[-1] - v10;
  v22[5] = a4;
  v22[6] = a5;
  sub_1B6061BAC(a3, &v22[-1] - v10);
  v12 = sub_1B6221644();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    sub_1B6060FD8(v11);
  }

  else
  {
    sub_1B6221634();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B62215C4();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B6221254();
      sub_1B60C08B4(v18 + 32, v22);

      v19 = v22[0];
      sub_1B6060FD8(a3);

      return v19;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1B6060FD8(a3);
  if (v17 | v15)
  {
    v22[1] = 0;
    v22[2] = 0;
    v22[3] = v15;
    v22[4] = v17;
  }

  return swift_task_create();
}

_BYTE *storeEnumTagSinglePayload for DefaultTaskScheduler(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B60C08B4@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {

    result = swift_task_create();
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B60C0970(uint64_t result, unint64_t a2)
{
  v3 = HIBYTE(a2) & 0xF;
  v4 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = v3;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (result == 43)
      {
        if (v3)
        {
          if (v3 != 1)
          {
            OUTLINED_FUNCTION_3_12();
            while (1)
            {
              OUTLINED_FUNCTION_1_11();
              if (!v9 & v8)
              {
                break;
              }

              OUTLINED_FUNCTION_0_19();
              if (!v9)
              {
                break;
              }

              v7 = (v18 + v17);
              if (__OFADD__(v18, v17))
              {
                break;
              }

              OUTLINED_FUNCTION_5_14();
              if (v9)
              {
                goto LABEL_72;
              }
            }
          }

          goto LABEL_71;
        }

LABEL_82:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v3)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_11();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_0_19();
            if (!v9)
            {
              break;
            }

            v7 = (v24 + v23);
            if (__OFADD__(v24, v23))
            {
              break;
            }

            OUTLINED_FUNCTION_5_14();
            if (v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }

      if (v3)
      {
        if (v3 != 1)
        {
          OUTLINED_FUNCTION_3_12();
          while (1)
          {
            OUTLINED_FUNCTION_1_11();
            if (!v9 & v8)
            {
              break;
            }

            OUTLINED_FUNCTION_0_19();
            if (!v9)
            {
              break;
            }

            v7 = (v14 - v13);
            if (__OFSUB__(v14, v13))
            {
              break;
            }

            OUTLINED_FUNCTION_5_14();
            if (v9)
            {
              goto LABEL_72;
            }
          }
        }

        goto LABEL_71;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1B6221BA4();
      }

      v6 = *result;
      if (v6 == 43)
      {
        if (v4 >= 1)
        {
          if (v4 != 1)
          {
            v7 = 0;
            if (result)
            {
              OUTLINED_FUNCTION_14_8();
              while (1)
              {
                OUTLINED_FUNCTION_1_11();
                if (!v9 & v8)
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_0_19();
                if (!v9)
                {
                  goto LABEL_71;
                }

                v7 = (v16 + v15);
                if (__OFADD__(v16, v15))
                {
                  goto LABEL_71;
                }

                OUTLINED_FUNCTION_5_14();
                if (v9)
                {
                  goto LABEL_72;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_71;
        }

        goto LABEL_81;
      }

      if (v6 != 45)
      {
        if (v4)
        {
          v7 = 0;
          if (result)
          {
            while (*result - 48 <= 9)
            {
              OUTLINED_FUNCTION_15_3();
              if (!v9)
              {
                break;
              }

              v7 = (v22 + v21);
              if (__OFADD__(v22, v21))
              {
                break;
              }

              result = v19 + 1;
              if (v20 == 1)
              {
                goto LABEL_62;
              }
            }

            goto LABEL_71;
          }

          goto LABEL_62;
        }

LABEL_71:
        v7 = 0;
        v12 = 1;
        goto LABEL_72;
      }

      if (v4 >= 1)
      {
        if (v4 != 1)
        {
          v7 = 0;
          if (result)
          {
            OUTLINED_FUNCTION_14_8();
            while (1)
            {
              OUTLINED_FUNCTION_1_11();
              if (!v9 & v8)
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_0_19();
              if (!v9)
              {
                goto LABEL_71;
              }

              v7 = (v11 - v10);
              if (__OFSUB__(v11, v10))
              {
                goto LABEL_71;
              }

              OUTLINED_FUNCTION_5_14();
              if (v9)
              {
                goto LABEL_72;
              }
            }
          }

LABEL_62:
          v12 = 0;
LABEL_72:
          v25 = v12;
          goto LABEL_73;
        }

        goto LABEL_71;
      }

      __break(1u);
    }

    __break(1u);
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v7 = sub_1B60C1AE8(result, a2, 10);
  v25 = v26;
LABEL_73:

  if (v25)
  {
    return 0;
  }

  else
  {
    return v7;
  }
}

uint64_t sub_1B60C0BC4()
{
  sub_1B60C1A1C();
  sub_1B60C1A60();
  v1 = v0;
  v2 = sub_1B6221F14();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v3 = swift_allocError();
    *v4 = v1;
  }

  v5 = sub_1B621D564();

  v6 = [v5 domain];
  v7 = sub_1B62211D4();
  v9 = v8;

  if (v7 == sub_1B62211D4() && v9 == v10)
  {
  }

  else
  {
    v12 = sub_1B6221F24();

    if ((v12 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ([v5 code] != -1001 && objc_msgSend(v5, sel_code) != -1005)
  {
LABEL_14:
    v14 = [v5 userInfo];
    v15 = sub_1B6221104();

    v16 = sub_1B62211D4();
    sub_1B60C4D84(v16, v17, v15, &v20);

    if (v21)
    {
      if (swift_dynamicCast())
      {
        v13 = sub_1B60C0BC4();

        return v13 & 1;
      }
    }

    else
    {

      sub_1B60C19B4(&v20);
    }

    v13 = 0;
    return v13 & 1;
  }

  v13 = 1;
  return v13 & 1;
}

uint64_t sub_1B60C0DFC()
{
  OUTLINED_FUNCTION_7_7();
  MEMORY[0x1EEE9AC00](v1);
  v10 = OUTLINED_FUNCTION_4_10(v2, v3, v4, v5, v6, v7, v8, v9, v31);
  v11(v10);
  OUTLINED_FUNCTION_36();
  v12 = sub_1B6221F14();
  if (v12)
  {
    v0 = v12;
    v13 = OUTLINED_FUNCTION_36();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_16_7();
    v13 = OUTLINED_FUNCTION_11_8(v15, v16);
  }

  v14(v13);
  v17 = sub_1B621D564();

  v18 = [v17 domain];
  v19 = sub_1B62211D4();
  v21 = v20;

  if (v19 == sub_1B62211D4() && v21 == v22)
  {
  }

  else
  {
    v24 = sub_1B6221F24();

    if ((v24 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if ([v17 code] != -1001 && objc_msgSend(v17, sel_code) != -1005)
  {
LABEL_14:
    v26 = [v17 userInfo];
    v27 = sub_1B6221104();

    v28 = sub_1B62211D4();
    sub_1B60C4D84(v28, v29, v27, &v33);

    if (v34)
    {
      sub_1B60C1A1C();
      if (swift_dynamicCast())
      {
        v25 = sub_1B60C0BC4();

        return v25 & 1;
      }
    }

    else
    {

      sub_1B60C19B4(&v33);
    }

    v25 = 0;
    return v25 & 1;
  }

  v25 = 1;
  return v25 & 1;
}

uint64_t sub_1B60C107C()
{
  OUTLINED_FUNCTION_7_7();
  MEMORY[0x1EEE9AC00](v1);
  v10 = OUTLINED_FUNCTION_4_10(v2, v3, v4, v5, v6, v7, v8, v9, v26);
  v11(v10);
  OUTLINED_FUNCTION_36();
  v12 = sub_1B6221F14();
  if (v12)
  {
    v0 = v12;
    v13 = OUTLINED_FUNCTION_36();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_16_7();
    v13 = OUTLINED_FUNCTION_11_8(v15, v16);
  }

  v14(v13);
  v17 = sub_1B621D564();

  v18 = [v17 localizedDescription];
  v19 = sub_1B62211D4();

  v27 = v19;
  MEMORY[0x1B8C90530](10272, 0xE200000000000000);
  v20 = [v17 domain];
  v21 = sub_1B62211D4();
  v23 = v22;

  MEMORY[0x1B8C90530](v21, v23);

  MEMORY[0x1B8C90530](32, 0xE100000000000000);
  [v17 code];
  v24 = sub_1B6221F04();
  MEMORY[0x1B8C90530](v24);

  MEMORY[0x1B8C90530](41, 0xE100000000000000);

  return v27;
}

void sub_1B60C1244()
{
  switch(*(v0 + 24))
  {
    case 1:
      sub_1B60C12AC();
      break;
    default:
      return;
  }
}

void sub_1B60C12AC()
{
  if ([v0 statusCode] != 503)
  {
    return;
  }

  v1 = sub_1B62211B4();
  v2 = [v0 valueForHTTPHeaderField_];

  if (!v2)
  {
    return;
  }

  v3 = sub_1B62211D4();
  v5 = v4;

  v6 = HIBYTE(v5) & 0xF;
  v7 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    return;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      if (v3 == 43)
      {
        if (v6)
        {
          if (v6 != 1)
          {
            OUTLINED_FUNCTION_3_12();
            while (1)
            {
              OUTLINED_FUNCTION_1_11();
              if (!v13 & v12)
              {
                break;
              }

              OUTLINED_FUNCTION_0_19();
              if (!v13)
              {
                break;
              }

              v11 = v22 + v21;
              if (__OFADD__(v22, v21))
              {
                break;
              }

              OUTLINED_FUNCTION_5_14();
              if (v13)
              {
                goto LABEL_74;
              }
            }
          }

          goto LABEL_73;
        }

LABEL_85:
        __break(1u);
        return;
      }

      if (v3 != 45)
      {
        if (v6)
        {
          while (1)
          {
            OUTLINED_FUNCTION_1_11();
            if (!v13 & v12)
            {
              break;
            }

            OUTLINED_FUNCTION_0_19();
            if (!v13)
            {
              break;
            }

            v11 = v28 + v27;
            if (__OFADD__(v28, v27))
            {
              break;
            }

            OUTLINED_FUNCTION_5_14();
            if (v13)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }

      if (v6)
      {
        if (v6 != 1)
        {
          OUTLINED_FUNCTION_3_12();
          while (1)
          {
            OUTLINED_FUNCTION_1_11();
            if (!v13 & v12)
            {
              break;
            }

            OUTLINED_FUNCTION_0_19();
            if (!v13)
            {
              break;
            }

            v11 = v18 - v17;
            if (__OFSUB__(v18, v17))
            {
              break;
            }

            OUTLINED_FUNCTION_5_14();
            if (v13)
            {
              goto LABEL_74;
            }
          }
        }

        goto LABEL_73;
      }
    }

    else
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v9 = sub_1B6221BA4();
      }

      v10 = *v9;
      if (v10 == 43)
      {
        if (v7 >= 1)
        {
          if (v7 != 1)
          {
            v11 = 0;
            if (v9)
            {
              OUTLINED_FUNCTION_14_8();
              while (1)
              {
                OUTLINED_FUNCTION_1_11();
                if (!v13 & v12)
                {
                  goto LABEL_73;
                }

                OUTLINED_FUNCTION_0_19();
                if (!v13)
                {
                  goto LABEL_73;
                }

                v11 = v20 + v19;
                if (__OFADD__(v20, v19))
                {
                  goto LABEL_73;
                }

                OUTLINED_FUNCTION_5_14();
                if (v13)
                {
                  goto LABEL_74;
                }
              }
            }

            goto LABEL_64;
          }

          goto LABEL_73;
        }

        goto LABEL_84;
      }

      if (v10 != 45)
      {
        if (v7)
        {
          v11 = 0;
          if (v9)
          {
            while (*v9 - 48 <= 9)
            {
              OUTLINED_FUNCTION_15_3();
              if (!v13)
              {
                break;
              }

              v11 = v26 + v25;
              if (__OFADD__(v26, v25))
              {
                break;
              }

              v9 = (v23 + 1);
              if (v24 == 1)
              {
                goto LABEL_64;
              }
            }

            goto LABEL_73;
          }

          goto LABEL_64;
        }

LABEL_73:
        v11 = 0;
        v16 = 1;
        goto LABEL_74;
      }

      if (v7 >= 1)
      {
        if (v7 != 1)
        {
          v11 = 0;
          if (v9)
          {
            OUTLINED_FUNCTION_14_8();
            while (1)
            {
              OUTLINED_FUNCTION_1_11();
              if (!v13 & v12)
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_0_19();
              if (!v13)
              {
                goto LABEL_73;
              }

              v11 = v15 - v14;
              if (__OFSUB__(v15, v14))
              {
                goto LABEL_73;
              }

              OUTLINED_FUNCTION_5_14();
              if (v13)
              {
                goto LABEL_74;
              }
            }
          }

LABEL_64:
          v16 = 0;
LABEL_74:
          v29 = v16;
          goto LABEL_75;
        }

        goto LABEL_73;
      }

      __break(1u);
    }

    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v11 = sub_1B60C1AE8(v3, v5, 10);
  v29 = v30;
LABEL_75:

  if ((v29 & 1) == 0 && v11 >= 1)
  {
    sub_1B60C1AB8(v11);
  }
}