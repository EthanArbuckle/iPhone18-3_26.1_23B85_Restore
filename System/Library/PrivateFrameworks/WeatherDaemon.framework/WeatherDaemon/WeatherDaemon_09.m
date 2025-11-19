void sub_1B60E993C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1EB9244F8 != -1)
  {
    swift_once();
  }

  v5 = sub_1B6220B34();
  __swift_project_value_buffer(v5, qword_1EB942B58);
  sub_1B6220784();
  oslog = sub_1B6220B14();
  v6 = sub_1B62217E4();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 141558275;
    *(v7 + 4) = 1752392040;
    *(v7 + 12) = 2081;
    *(v7 + 14) = sub_1B602EEB0(a2, a3, &v10);
    _os_log_impl(&dword_1B6020000, oslog, v6, "Failed to fetch monthly statistics. key=%{private,mask.hash}s", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1B8C91C90](v8, -1, -1);
    MEMORY[0x1B8C91C90](v7, -1, -1);
  }
}

void sub_1B60E9AA8()
{
  v0 = sub_1B621D8F4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  v4 = sub_1B6220BD4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 8;
  if (sub_1B60A059C())
  {
    sub_1B6220D64();
    v13[3] = v0;
    v13[4] = MEMORY[0x1E69D6130];
    __swift_allocate_boxed_opaque_existential_1(v13);
    type metadata accessor for WeatherClock();
    static WeatherClock.date.getter();
    sub_1B621D854();
    (*(v1 + 8))(v3, v0);
    sub_1B6220CF4();
    __swift_destroy_boxed_opaque_existential_1(v13);
    sub_1B6220DC4();

    (*(v5 + 8))(v7, v4);
    if (qword_1EB9244F8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B6220B34();
    __swift_project_value_buffer(v8, qword_1EB942B58);
    v9 = sub_1B6220B14();
    v10 = sub_1B62217F4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B6020000, v9, v10, "Purged expired monthly weather statistics", v11, 2u);
      MEMORY[0x1B8C91C90](v11, -1, -1);
    }
  }
}

uint64_t sub_1B60E9EF4()
{
  result = sub_1B60A059C();
  if (result)
  {
    sub_1B6220D64();
    sub_1B6220DB4();
  }

  return result;
}

uint64_t sub_1B60EA178(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonthlyWeatherStatistics();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B60EA1DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MonthlyWeatherStatistics();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B60EA240(uint64_t a1)
{
  v2 = type metadata accessor for MonthlyWeatherStatistics();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AirQuality.categoryIndex.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for AirQuality();
  return OUTLINED_FUNCTION_5();
}

uint64_t AirQuality.index.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for AirQuality();
  return OUTLINED_FUNCTION_5();
}

uint64_t AirQuality.isSignificant.setter(char a1)
{
  result = type metadata accessor for AirQuality();
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t AirQuality.isSignificant.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for AirQuality();
  return OUTLINED_FUNCTION_5();
}

uint64_t AirQuality.pollutants.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for AirQuality() + 32);

  *(v1 + v2) = v0;
  return result;
}

uint64_t AirQuality.pollutants.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for AirQuality();
  return OUTLINED_FUNCTION_5();
}

uint64_t AirQuality.previousDayComparison.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(OUTLINED_FUNCTION_9_13() + 36));

  *v5 = v3;
  v5[1] = a2;
  return result;
}

uint64_t AirQuality.previousDayComparison.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for AirQuality();
  return OUTLINED_FUNCTION_5();
}

uint64_t AirQuality.primaryPollutant.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for AirQuality();
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t AirQuality.primaryPollutant.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for AirQuality();
  return OUTLINED_FUNCTION_5();
}

uint64_t AirQuality.scale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(OUTLINED_FUNCTION_9_13() + 44));

  *v5 = v3;
  v5[1] = a2;
  return result;
}

uint64_t AirQuality.scale.modify()
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for AirQuality();
  return OUTLINED_FUNCTION_5();
}

uint64_t AirQuality.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925898);
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v38 - v11;
  v13 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1B60EAA70();
  sub_1B62220D4();
  if (!v2)
  {
    v14 = v9;
    v48 = a2;
    LOBYTE(v53) = 0;
    sub_1B6093DE4(&qword_1EDAB1000);
    sub_1B6221DD4();
    LOBYTE(v53) = 1;
    OUTLINED_FUNCTION_5_21();
    sub_1B6221D24();
    v47 = v58;
    v15 = v59;
    LOBYTE(v53) = 2;
    OUTLINED_FUNCTION_5_21();
    v16 = v49;
    sub_1B6221D24();
    v46 = v56;
    v17 = v57;
    LOBYTE(v53) = 3;
    OUTLINED_FUNCTION_8_15();
    sub_1B6221D24();
    v18 = v63;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9258A0);
    LOBYTE(v53) = 4;
    sub_1B60EB2C0(&qword_1EDAAFC58, sub_1B60EAAC4);
    sub_1B6221DD4();
    v44 = v18;
    v45 = v17;
    v60 = v15;
    v19 = v55;
    LOBYTE(v51) = 5;
    OUTLINED_FUNCTION_8_15();
    sub_1B6221D24();
    v21 = v53;
    v20 = v54;
    LOBYTE(v51) = 6;
    sub_1B60EAB18();
    OUTLINED_FUNCTION_8_15();
    sub_1B6221D84();
    v43 = v62;
    v61 = 7;
    OUTLINED_FUNCTION_8_15();
    sub_1B6221D24();
    (*(v14 + 8))(v12, v16);
    v49 = v51;
    v42 = v52;
    v23 = type metadata accessor for AirQuality();
    v24 = v23[5];
    v25 = v23[6];
    v40 = v19;
    v41 = v20;
    v26 = v48;
    v27 = v48 + v24;
    v28 = v48 + v25;
    v39 = v23[7];
    v29 = v7;
    v30 = v23[10];
    v31 = v21;
    v32 = (v48 + v23[9]);
    *(v48 + v30) = 13;
    v33 = (v26 + v23[11]);
    sub_1B603D8D8(v29, v26);
    *v27 = v47;
    *(v27 + 8) = v60;
    *v28 = v46;
    v34 = v44;
    *(v28 + 8) = v45;
    v35 = v40;
    *(v26 + v39) = v34;
    *(v26 + v23[8]) = v35;
    *(v26 + v30) = v43;
    v36 = v41;
    *v32 = v31;
    v32[1] = v36;
    v37 = v42;
    *v33 = v49;
    v33[1] = v37;
  }

  return __swift_destroy_boxed_opaque_existential_1(v50);
}

unint64_t sub_1B60EAA70()
{
  result = qword_1EDAB0898[0];
  if (!qword_1EDAB0898[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDAB0898);
  }

  return result;
}

unint64_t sub_1B60EAAC4()
{
  result = qword_1EDAB0468;
  if (!qword_1EDAB0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0468);
  }

  return result;
}

unint64_t sub_1B60EAB18()
{
  result = qword_1EDAB0240;
  if (!qword_1EDAB0240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0240);
  }

  return result;
}

uint64_t sub_1B60EAB6C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79726F6765746163 && a2 == 0xED00007865646E49;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x66696E6769537369 && a2 == 0xED0000746E616369;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E6174756C6C6F70 && a2 == 0xEA00000000007374;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x80000001B623D320 == a2;
            if (v10 || (sub_1B6221F24() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD000000000000010 && 0x80000001B623D340 == a2;
              if (v11 || (sub_1B6221F24() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0x656C616373 && a2 == 0xE500000000000000)
              {

                return 7;
              }

              else
              {
                v13 = sub_1B6221F24();

                if (v13)
                {
                  return 7;
                }

                else
                {
                  return 8;
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1B60EAE10(char a1)
{
  result = 0x617461646174656DLL;
  switch(a1)
  {
    case 1:
      result = 0x79726F6765746163;
      break;
    case 2:
      result = 0x7865646E69;
      break;
    case 3:
      result = 0x66696E6769537369;
      break;
    case 4:
      result = 0x6E6174756C6C6F70;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000010;
      break;
    case 7:
      result = 0x656C616373;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60EAF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60EAB6C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60EAF48@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B60EAE08();
  *a1 = result;
  return result;
}

uint64_t sub_1B60EAF70(uint64_t a1)
{
  v2 = sub_1B60EAA70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60EAFAC(uint64_t a1)
{
  v2 = sub_1B60EAA70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AirQuality.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9258A8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60EAA70();
  sub_1B62220F4();
  LOBYTE(v14) = 0;
  type metadata accessor for Metadata();
  sub_1B6093DE4(&qword_1EDAB1008);
  OUTLINED_FUNCTION_3_2();
  sub_1B6221EC4();
  if (!v2)
  {
    v11 = type metadata accessor for AirQuality();
    OUTLINED_FUNCTION_7_9(v3 + v11[5]);
    OUTLINED_FUNCTION_0_39(1);
    sub_1B6221E64();
    OUTLINED_FUNCTION_7_9(v3 + v11[6]);
    OUTLINED_FUNCTION_0_39(2);
    sub_1B6221E64();
    LOBYTE(v14) = 3;
    OUTLINED_FUNCTION_3_2();
    sub_1B6221E34();
    v14 = *(v3 + v11[8]);
    HIBYTE(v13) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9258A0);
    sub_1B60EB2C0(&qword_1EDAB0438, sub_1B60EB338);
    OUTLINED_FUNCTION_3_2();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_0_39(5);
    sub_1B6221E24();
    LOBYTE(v14) = *(v3 + v11[10]);
    HIBYTE(v13) = 6;
    sub_1B60EB38C();
    OUTLINED_FUNCTION_3_2();
    sub_1B6221E74();
    OUTLINED_FUNCTION_0_39(7);
    sub_1B6221E24();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1B60EB2C0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9258A0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B60EB338()
{
  result = qword_1EDAB0470;
  if (!qword_1EDAB0470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0470);
  }

  return result;
}

unint64_t sub_1B60EB38C()
{
  result = qword_1EDAB0778;
  if (!qword_1EDAB0778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0778);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQuality.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
          *result = a2 + 7;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60EB530()
{
  result = qword_1EB9258B0;
  if (!qword_1EB9258B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9258B0);
  }

  return result;
}

unint64_t sub_1B60EB588()
{
  result = qword_1EDAB0888;
  if (!qword_1EDAB0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0888);
  }

  return result;
}

unint64_t sub_1B60EB5E0()
{
  result = qword_1EDAB0890;
  if (!qword_1EDAB0890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0890);
  }

  return result;
}

uint64_t sub_1B60EB644(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1B6221F24();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1B60EB6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60EB644(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B60EB704(uint64_t a1)
{
  v2 = sub_1B60EB91C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60EB740(uint64_t a1)
{
  v2 = sub_1B60EB91C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherCollection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9258C0);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60EB91C();
  sub_1B6220784();
  sub_1B62220F4();
  v11[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9258D0);
  sub_1B60EBB1C(&qword_1EB9258D8, &qword_1EB9258E0);
  sub_1B6221EC4();

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1B60EB91C()
{
  result = qword_1EB9258C8;
  if (!qword_1EB9258C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9258C8);
  }

  return result;
}

uint64_t WeatherCollection.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9258E8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60EB91C();
  sub_1B62220D4();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9258D0);
    sub_1B60EBB1C(&qword_1EB9258F0, &qword_1EDAB2010);
    sub_1B6221DD4();
    (*(v7 + 8))(v10, v5);
    *a2 = v12[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B60EBB1C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9258D0);
    sub_1B60EBBA4(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B60EBBA4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Weather();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B60EBC30(uint64_t a1)
{
  result = sub_1B60EBC58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B60EBC58()
{
  result = qword_1EB9258F8;
  if (!qword_1EB9258F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9258F8);
  }

  return result;
}

uint64_t sub_1B60EBCAC(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1B60EBCEC(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherCollection.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B60EBDE8()
{
  result = qword_1EB925900;
  if (!qword_1EB925900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925900);
  }

  return result;
}

unint64_t sub_1B60EBE40()
{
  result = qword_1EB925908;
  if (!qword_1EB925908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925908);
  }

  return result;
}

unint64_t sub_1B60EBE98()
{
  result = qword_1EB925910;
  if (!qword_1EB925910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925910);
  }

  return result;
}

uint64_t static ForecastSummary.clear(starting:until:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = sub_1B621D8F4();
  (*(*(v9 - 8) + 16))(a3, a1, v9);
  sub_1B6058CE0(a2, v8);
  v10 = type metadata accessor for ForecastSummary();
  v11 = v10[5];
  __swift_storeEnumTagSinglePayload(a3 + v11, 1, 1, v9);
  v12 = a3 + v10[7];
  v13 = a3 + v10[8];
  result = sub_1B603D764(v8, a3 + v11);
  *(a3 + v10[6]) = 0;
  *v12 = 0;
  *(v12 + 8) = 0;
  *v13 = 0;
  *(v13 + 8) = 0;
  return result;
}

uint64_t sub_1B60EC034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v15 = sub_1B621D8F4();
  (*(*(v15 - 8) + 16))(a4, a1, v15);
  sub_1B6058CE0(a2, v14);
  v16 = type metadata accessor for ForecastSummary();
  v17 = v16[5];
  __swift_storeEnumTagSinglePayload(a4 + v17, 1, 1, v15);
  v18 = a4 + v16[7];
  v19 = a4 + v16[8];
  result = sub_1B603D764(v14, a4 + v17);
  *(a4 + v16[6]) = a3;
  *v18 = a5;
  *(v18 + 8) = 0;
  *v19 = a6;
  *(v19 + 8) = 0;
  return result;
}

uint64_t sub_1B60EC178@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

BOOL sub_1B60EC304(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t sub_1B60EC338@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & result;
  if (v3)
  {
    *v2 &= ~result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t sub_1B60EC368@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2;
  *v2 |= result;
  v4 = v3 & result;
  *a2 = v4;
  *(a2 + 8) = v4 == 0;
  return result;
}

WeatherDaemon::WeatherDataCaching::Options sub_1B60EC444@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = WeatherDataCaching.Options.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_1B60EC484@<X0>(uint64_t *a1@<X8>)
{
  result = WeatherDataCaching.Options.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B60EC4D4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C6261736964 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C62616E65 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

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

uint64_t sub_1B60EC59C(char a1)
{
  if (a1)
  {
    return 0x64656C62616E65;
  }

  else
  {
    return 0x64656C6261736964;
  }
}

uint64_t sub_1B60EC5DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60EC4D4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60EC604(uint64_t a1)
{
  v2 = sub_1B60EC9EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60EC640(uint64_t a1)
{
  v2 = sub_1B60EC9EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B60EC67C(uint64_t a1)
{
  v2 = sub_1B60ECA94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60EC6B8(uint64_t a1)
{
  v2 = sub_1B60ECA94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B60EC6F4(uint64_t a1)
{
  v2 = sub_1B60ECA40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60EC730(uint64_t a1)
{
  v2 = sub_1B60ECA40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherDataCaching.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925918);
  OUTLINED_FUNCTION_2();
  v25 = v4;
  v26 = v3;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v22 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925920);
  OUTLINED_FUNCTION_2();
  v22 = v8;
  v23 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925928);
  OUTLINED_FUNCTION_2();
  v14 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v22 - v16;
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60EC9EC();
  sub_1B62220F4();
  v19 = (v14 + 8);
  if (v18)
  {
    v28 = 1;
    sub_1B60ECA40();
    v20 = v24;
    sub_1B6221E14();
    (*(v25 + 8))(v20, v26);
  }

  else
  {
    v27 = 0;
    sub_1B60ECA94();
    sub_1B6221E14();
    (*(v22 + 8))(v11, v23);
  }

  return (*v19)(v17, v12);
}

unint64_t sub_1B60EC9EC()
{
  result = qword_1EB925930;
  if (!qword_1EB925930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925930);
  }

  return result;
}

unint64_t sub_1B60ECA40()
{
  result = qword_1EB925938;
  if (!qword_1EB925938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925938);
  }

  return result;
}

unint64_t sub_1B60ECA94()
{
  result = qword_1EB925940;
  if (!qword_1EB925940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925940);
  }

  return result;
}

uint64_t WeatherDataCaching.hashValue.getter()
{
  v1 = *v0;
  sub_1B6222074();
  MEMORY[0x1B8C912A0](v1);
  return sub_1B62220A4();
}

void WeatherDataCaching.init(from:)(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v42 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925948);
  OUTLINED_FUNCTION_2();
  v41 = v3;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925950);
  OUTLINED_FUNCTION_2();
  v40 = v8;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925958);
  OUTLINED_FUNCTION_2();
  v43 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v14);
  v16 = v37 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60EC9EC();
  v17 = v45;
  sub_1B62220D4();
  if (v17)
  {
    goto LABEL_10;
  }

  v38 = v7;
  v39 = v11;
  v45 = a1;
  v18 = v44;
  v19 = sub_1B6221DF4();
  sub_1B60ED008(v19, 0);
  if (v22 == v23 >> 1)
  {
    v44 = v20;
LABEL_9:
    v33 = sub_1B6221B94();
    swift_allocError();
    v35 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925960);
    *v35 = &type metadata for WeatherDataCaching;
    sub_1B6221D04();
    sub_1B6221B84();
    (*(*(v33 - 8) + 104))(v35, *MEMORY[0x1E69E6AF8], v33);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v43 + 8))(v16, v12);
    a1 = v45;
LABEL_10:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  v37[1] = 0;
  if (v22 >= (v23 >> 1))
  {
    __break(1u);
  }

  else
  {
    v24 = *(v21 + v22);
    v25 = sub_1B60ED504(v22 + 1, v23 >> 1, v20, v21, v22, v23);
    v27 = v26;
    v29 = v28;
    swift_unknownObjectRelease();
    if (v27 != v29 >> 1)
    {
      v44 = v25;
      goto LABEL_9;
    }

    v46 = v24;
    if (v24)
    {
      v48 = 1;
      sub_1B60ECA40();
      v30 = v6;
      OUTLINED_FUNCTION_4_18();
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v41 + 8))(v30, v18);
    }

    else
    {
      v47 = 0;
      sub_1B60ECA94();
      v36 = v39;
      OUTLINED_FUNCTION_4_18();
      v31 = v42;
      v32 = v43;
      swift_unknownObjectRelease();
      (*(v40 + 8))(v36, v38);
    }

    (*(v32 + 8))(v16, v27);
    *v31 = v46;
    __swift_destroy_boxed_opaque_existential_1(v45);
  }
}

void sub_1B60ED008(uint64_t a1, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if ((v4 & 0x8000000000000000) == 0)
  {
    OUTLINED_FUNCTION_2_25();
    return;
  }

LABEL_9:
  __break(1u);
}

unint64_t sub_1B60ED044()
{
  result = qword_1EB925968;
  if (!qword_1EB925968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925968);
  }

  return result;
}

unint64_t sub_1B60ED09C()
{
  result = qword_1EB925970;
  if (!qword_1EB925970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925970);
  }

  return result;
}

unint64_t sub_1B60ED0F4()
{
  result = qword_1EB925978;
  if (!qword_1EB925978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925978);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WeatherDataCaching.Options(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for WeatherDataCaching.Options(uint64_t result, int a2, int a3)
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

_BYTE *sub_1B60ED1A0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60ED2A0()
{
  result = qword_1EB925980;
  if (!qword_1EB925980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925980);
  }

  return result;
}

unint64_t sub_1B60ED2F8()
{
  result = qword_1EB925988;
  if (!qword_1EB925988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925988);
  }

  return result;
}

unint64_t sub_1B60ED350()
{
  result = qword_1EB925990;
  if (!qword_1EB925990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925990);
  }

  return result;
}

unint64_t sub_1B60ED3A8()
{
  result = qword_1EB925998;
  if (!qword_1EB925998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925998);
  }

  return result;
}

unint64_t sub_1B60ED400()
{
  result = qword_1EB9259A0;
  if (!qword_1EB9259A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9259A0);
  }

  return result;
}

unint64_t sub_1B60ED458()
{
  result = qword_1EB9259A8;
  if (!qword_1EB9259A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9259A8);
  }

  return result;
}

unint64_t sub_1B60ED4B0()
{
  result = qword_1EB9259B0;
  if (!qword_1EB9259B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9259B0);
  }

  return result;
}

uint64_t sub_1B60ED504(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t HourlyWeatherStatistics.hours.getter()
{
  type metadata accessor for HourlyWeatherStatistics();

  return sub_1B6220784();
}

uint64_t HourlyWeatherStatistics.baselineStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HourlyWeatherStatistics() + 24);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t HourlyWeatherStatistics.filteringOutLeapDay(_:)@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Metadata();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_14();
  v9 = v8 - v7;
  if ((a1 & 1) == 0)
  {
    return sub_1B60ED85C(v3, a2, type metadata accessor for HourlyWeatherStatistics);
  }

  OUTLINED_FUNCTION_3_20();
  sub_1B60ED85C(v3, v9, v10);
  v23 = type metadata accessor for HourlyWeatherStatistics();
  v24 = a2;
  v11 = *(v3 + *(v23 + 20));
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = (v11 + 64);
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      if (*(v13 - 4) <= 8760)
      {
        v26 = *(v13 - 2);
        v25 = *(v13 - 1);
        v15 = *v13;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B60AA58C(0, *(v14 + 16) + 1, 1);
        }

        v17 = *(v14 + 16);
        v16 = *(v14 + 24);
        v18 = v26;
        if (v17 >= v16 >> 1)
        {
          sub_1B60AA58C(v16 > 1, v17 + 1, 1);
          v18 = v26;
        }

        *(v14 + 16) = v17 + 1;
        v19 = v14 + 40 * v17;
        *(v19 + 32) = v18;
        *(v19 + 48) = v25;
        *(v19 + 64) = v15;
      }

      v13 += 40;
      --v12;
    }

    while (v12);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v21 = *(v23 + 24);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  (*(v22 + 16))(v24 + v21, v3 + v21);
  result = sub_1B603D8D8(v9, v24);
  *(v24 + *(v23 + 20)) = v14;
  return result;
}

uint64_t sub_1B60ED85C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t static HourlyWeatherStatistics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Metadata.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HourlyWeatherStatistics();
  if ((sub_1B6095F6C(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  return sub_1B621D8A4();
}

uint64_t sub_1B60ED940(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7372756F68 && a2 == 0xE500000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656E696C65736162 && a2 == 0xED00007472617453)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B6221F24();

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

uint64_t sub_1B60EDA54(char a1)
{
  if (!a1)
  {
    return 0x617461646174656DLL;
  }

  if (a1 == 1)
  {
    return 0x7372756F68;
  }

  return 0x656E696C65736162;
}

uint64_t sub_1B60EDABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60ED940(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60EDAE4(uint64_t a1)
{
  v2 = sub_1B60EE234();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60EDB20(uint64_t a1)
{
  v2 = sub_1B60EE234();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HourlyWeatherStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9259B8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60EE234();
  sub_1B62220F4();
  v18 = 0;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_1_22();
  sub_1B60EE470(v11, v12);
  OUTLINED_FUNCTION_10_5();
  if (!v2)
  {
    v17 = *(v3 + *(type metadata accessor for HourlyWeatherStatistics() + 20));
    v16[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9259C8);
    sub_1B60EE2DC(&qword_1EB9259D0, sub_1B60EE288);
    OUTLINED_FUNCTION_10_5();
    v16[14] = 2;
    sub_1B621D8F4();
    OUTLINED_FUNCTION_2_26();
    sub_1B60EE470(v13, v14);
    OUTLINED_FUNCTION_10_5();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t HourlyWeatherStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v32 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v35 = v11 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9259E0);
  OUTLINED_FUNCTION_2();
  v34 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for HourlyWeatherStatistics();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  v20 = v19 - v18;
  v21 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B60EE234();
  v36 = v15;
  v22 = v38;
  sub_1B62220D4();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v23 = v34;
  v38 = v8;
  v43 = 0;
  OUTLINED_FUNCTION_1_22();
  sub_1B60EE470(v24, v25);
  v26 = v35;
  sub_1B6221DD4();
  sub_1B603D8D8(v26, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9259C8);
  v42 = 1;
  sub_1B60EE2DC(&qword_1EB9259E8, sub_1B60EE354);
  sub_1B6221DD4();
  *(v20 + *(v16 + 20)) = v40;
  v41 = 2;
  OUTLINED_FUNCTION_2_26();
  sub_1B60EE470(v27, v28);
  v29 = v38;
  sub_1B6221DD4();
  (*(v23 + 8))(v36, v37);
  (*(v32 + 32))(v20 + *(v16 + 24), v29, v3);
  sub_1B60ED85C(v20, v33, type metadata accessor for HourlyWeatherStatistics);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_1B60EE3A8(v20, type metadata accessor for HourlyWeatherStatistics);
}

unint64_t sub_1B60EE234()
{
  result = qword_1EB9259C0;
  if (!qword_1EB9259C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9259C0);
  }

  return result;
}

unint64_t sub_1B60EE288()
{
  result = qword_1EB9259D8;
  if (!qword_1EB9259D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9259D8);
  }

  return result;
}

uint64_t sub_1B60EE2DC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9259C8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B60EE354()
{
  result = qword_1EB9259F0;
  if (!qword_1EB9259F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9259F0);
  }

  return result;
}

uint64_t sub_1B60EE3A8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1B60EE418(uint64_t a1)
{
  result = sub_1B60EE470(&qword_1EB9259F8, type metadata accessor for HourlyWeatherStatistics);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B60EE470(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for HourlyWeatherStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60EE5C0()
{
  result = qword_1EB925A00;
  if (!qword_1EB925A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925A00);
  }

  return result;
}

unint64_t sub_1B60EE618()
{
  result = qword_1EB925A08;
  if (!qword_1EB925A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925A08);
  }

  return result;
}

unint64_t sub_1B60EE670()
{
  result = qword_1EB925A10;
  if (!qword_1EB925A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925A10);
  }

  return result;
}

uint64_t static HistoricalFactsDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  qword_1EB925A18 = a1;
  qword_1EB925A20 = a2;
}

uint64_t (*static HistoricalFactsDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B60EE764@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EB925A20;
  *a1 = qword_1EB925A18;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60EE7B4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB925A18 = v2;
  qword_1EB925A20 = v1;
  sub_1B6220784();
}

uint64_t *sub_1B60EE818()
{
  if (qword_1EDAB11B0 != -1)
  {
    OUTLINED_FUNCTION_0_40();
  }

  return &qword_1EDAB11B8;
}

uint64_t static HistoricalFactsDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB11B0 != -1)
  {
    OUTLINED_FUNCTION_0_40();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB11B8 = a1;
  qword_1EDAB11C0 = a2;
}

uint64_t (*static HistoricalFactsDescriptor.version.modify())()
{
  if (qword_1EDAB11B0 != -1)
  {
    OUTLINED_FUNCTION_0_40();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B60EE938@<X0>(void *a1@<X8>)
{
  sub_1B60EE818();
  swift_beginAccess();
  v2 = qword_1EDAB11C0;
  *a1 = qword_1EDAB11B8;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B60EE98C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B60EE818();
  swift_beginAccess();
  qword_1EDAB11B8 = v2;
  qword_1EDAB11C0 = v1;
}

_BYTE *storeEnumTagSinglePayload for HistoricalFactsDescriptor(_BYTE *result, int a2, int a3)
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

id sub_1B60EEACC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B60EEB04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB925AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B60EEB8C()
{
  result = qword_1EB925B30;
  if (!qword_1EB925B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925B30);
  }

  return result;
}

unint64_t sub_1B60EEBE0(uint64_t a1)
{
  result = sub_1B60EEC08();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B60EEC08()
{
  result = qword_1EB925B38;
  if (!qword_1EB925B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925B38);
  }

  return result;
}

void *sub_1B60EEC5C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925B40);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60EEFA0();
  sub_1B62220D4();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9258D0);
    sub_1B60EEFF4();
    sub_1B6221DD4();
    (*(v5 + 8))(v8, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_1B60EEDD4(uint64_t a1)
{
  v2 = sub_1B60EEFA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60EEE10(uint64_t a1)
{
  v2 = sub_1B60EEFA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1B60EEE4C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = sub_1B60EEC5C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1B60EEE78(uint64_t a1)
{
  v2 = sub_1B621E404();
  OUTLINED_FUNCTION_2();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v8, a1, v2, v6);
  type metadata accessor for WeatherDaemonModelFactory();
  swift_allocObject();
  sub_1B6211F40();

  v9 = *(v4 + 8);
  v9(a1, v2);
  v9(v8, v2);
  return v11[1];
}

unint64_t sub_1B60EEFA0()
{
  result = qword_1EB925B48;
  if (!qword_1EB925B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925B48);
  }

  return result;
}

unint64_t sub_1B60EEFF4()
{
  result = qword_1EB9258F0;
  if (!qword_1EB9258F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9258D0);
    sub_1B60EF078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9258F0);
  }

  return result;
}

unint64_t sub_1B60EF078()
{
  result = qword_1EDAB2010;
  if (!qword_1EDAB2010)
  {
    type metadata accessor for Weather();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB2010);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherBatchResponse.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B60EF1A0()
{
  result = qword_1EB925B50;
  if (!qword_1EB925B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925B50);
  }

  return result;
}

unint64_t sub_1B60EF1F8()
{
  result = qword_1EB925B58;
  if (!qword_1EB925B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925B58);
  }

  return result;
}

unint64_t sub_1B60EF250()
{
  result = qword_1EB925B60;
  if (!qword_1EB925B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925B60);
  }

  return result;
}

uint64_t sub_1B60EF2A4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925B78);
    v1 = sub_1B6221CA4();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v4 = v1;
  v2 = sub_1B6220784();
  sub_1B60F0298(v2, 1, &v4);

  return v4;
}

uint64_t sub_1B60EF358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B6220784();
  sub_1B6220784();
  sub_1B60EF460(a1, a2, a3);
  sub_1B621D304();
  swift_allocObject();
  sub_1B621D2F4();
  sub_1B60EF790();
  v6 = sub_1B621D2E4();

  return v6;
}

uint64_t sub_1B60EF460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for WeatherRequest();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  if (v10)
  {
    v32 = a1;
    v33 = a2;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1B60AA2F4(0, v10, 0);
    v11 = v41;
    v12 = *(v7 + 80);
    v31 = a3;
    v13 = a3 + ((v12 + 32) & ~v12);
    v34 = *(v7 + 72);
    v14 = MEMORY[0x1E69E63C0];
    do
    {
      sub_1B60F06F4(v13, v9);
      v15 = sub_1B603AA90();
      if (v15)
      {
        MEMORY[0x1EEE9AC00](v15);
        *(&v31 - 2) = v9;
        v16 = sub_1B60B3E0C();

        v17 = sub_1B60EF2A4(v16);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925B70);
        v17 = sub_1B6221124();
      }

      v18 = v17;
      v19 = *(v9 + 1);
      v20 = MEMORY[0x1E69E63B0];
      v39 = MEMORY[0x1E69E63B0];
      v40 = v14;
      *&v38 = v19;
      sub_1B60273A4(&v38, v36);
      v21 = *__swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v35 = v18;
      sub_1B60F05A4(0x656475746974616CLL, 0xE800000000000000, v21, isUniquelyReferenced_nonNull_native, &v35);
      v23 = v35;
      __swift_destroy_boxed_opaque_existential_1(v36);
      v24 = *(v9 + 2);
      v39 = v20;
      v40 = v14;
      *&v38 = v24;
      sub_1B60273A4(&v38, v36);
      v25 = *__swift_mutable_project_boxed_opaque_existential_1(v36, v37);
      v26 = swift_isUniquelyReferenced_nonNull_native();
      v35 = v23;
      sub_1B60F05A4(0x64757469676E6F6CLL, 0xE900000000000065, v25, v26, &v35);
      v27 = v35;
      __swift_destroy_boxed_opaque_existential_1(v36);
      sub_1B60F0758(v9);
      v41 = v11;
      v29 = *(v11 + 16);
      v28 = *(v11 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_1B60AA2F4(v28 > 1, v29 + 1, 1);
        v11 = v41;
      }

      *(v11 + 16) = v29 + 1;
      *(v11 + 8 * v29 + 32) = v27;
      v13 += v34;
      --v10;
    }

    while (v10);

    return v32;
  }

  else
  {
  }

  return a1;
}

unint64_t sub_1B60EF790()
{
  result = qword_1EB925B68;
  if (!qword_1EB925B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925B68);
  }

  return result;
}

uint64_t sub_1B60EF7E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7374736575716572 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1B6221F24();

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

uint64_t sub_1B60EF8B4(char a1)
{
  if (a1)
  {
    return 0x7374736575716572;
  }

  else
  {
    return 0x65676175676E616CLL;
  }
}

uint64_t sub_1B60EF8E4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925B88);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60F0900();
  sub_1B62220F4();
  v13 = 0;
  sub_1B6221E84();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925B98);
    sub_1B60F0954();
    sub_1B6221EC4();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1B60EFA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60EF7E4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60EFAB8(uint64_t a1)
{
  v2 = sub_1B60F0900();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60EFAF4(uint64_t a1)
{
  v2 = sub_1B60F0900();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B60EFB8C@<X0>(uint64_t *a1@<X8>)
{
  result = nullsub_1();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B60EFBD4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B602630C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B60EFBFC(uint64_t a1)
{
  v2 = sub_1B60F0A2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60EFC38(uint64_t a1)
{
  v2 = sub_1B60F0A2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B60EFC74(void *a1, uint64_t a2)
{
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925BB0);
  v22 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v22 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60F0A2C();
  v24 = v6;
  sub_1B62220F4();
  v7 = a2 + 64;
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 64);
  v11 = (v8 + 63) >> 6;
  v23 = a2;
  result = sub_1B6220784();
  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_9:
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v16 = v15 | (v14 << 6);
      v17 = (*(v23 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      sub_1B602D048(*(v23 + 56) + 40 * v16, v25);
      *&v26 = v19;
      *(&v26 + 1) = v18;
      sub_1B60273A4(v25, &v27);
      sub_1B6220784();
LABEL_10:
      v30 = v26;
      v31[0] = v27;
      v31[1] = v28;
      v32 = v29;
      v20 = *(&v26 + 1);
      if (!*(&v26 + 1))
      {

        return (*(v22 + 8))(v24, v33);
      }

      v21 = v30;
      sub_1B60273A4(v31, &v26);
      __swift_project_boxed_opaque_existential_1(&v26, *(&v27 + 1));
      *&v25[0] = v21;
      *(&v25[0] + 1) = v20;
      sub_1B6221EC4();
      if (v2)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v26);
      if (!v10)
      {
        goto LABEL_5;
      }
    }

    (*(v22 + 8))(v24, v33);
    return __swift_destroy_boxed_opaque_existential_1(&v26);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        v10 = 0;
        v29 = 0;
        v27 = 0u;
        v28 = 0u;
        v26 = 0u;
        goto LABEL_10;
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        v13 = v14;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B60EFF74(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925B78);
  v33 = a2;
  result = sub_1B6221C94();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_32:

LABEL_33:
    *v3 = v7;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 64);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 64);
  v13 = (v10 + 63) >> 6;
  v14 = result + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      sub_1B60F0234(0, (v32 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = (*(v5 + 48) + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v22 = (*(v5 + 56) + 40 * v18);
    if (v33)
    {
      sub_1B60273A4(v22, v34);
    }

    else
    {
      sub_1B602D048(v22, v34);
      sub_1B6220784();
    }

    sub_1B6222074();
    sub_1B62212D4();
    result = sub_1B62220A4();
    v23 = -1 << *(v7 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = (*(v7 + 48) + 16 * v26);
    *v31 = v20;
    v31[1] = v21;
    result = sub_1B60273A4(v34, *(v7 + 56) + 40 * v26);
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_1B60F0234(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1B6226510;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void sub_1B60F0298(uint64_t a1, char a2, void *a3)
{
  v25 = *(a1 + 16);
  if (!v25)
  {

    return;
  }

  v5 = 0;
  for (i = a1 + 32; ; i += 56)
  {
    if (v5 >= *(a1 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      sub_1B6221FD4();
      __break(1u);
      goto LABEL_22;
    }

    sub_1B60F07D0(i, &v30);
    v8 = v30;
    v7 = v31;
    v28 = v30;
    v29 = v31;
    sub_1B60273A4(v32, v27);
    v9 = *a3;
    v11 = sub_1B604EF94(v8, v7);
    v12 = v9[2];
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      goto LABEL_19;
    }

    v15 = v10;
    if (v9[3] < v14)
    {
      break;
    }

    if (a2)
    {
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925B80);
      sub_1B6221C54();
      if (v15)
      {
        goto LABEL_15;
      }
    }

LABEL_11:
    v18 = *a3;
    *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v19 = (v18[6] + 16 * v11);
    *v19 = v8;
    v19[1] = v7;
    sub_1B60273A4(v27, v18[7] + 40 * v11);
    v20 = v18[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_20;
    }

    ++v5;
    v18[2] = v22;
    a2 = 1;
    if (v25 == v5)
    {

      return;
    }
  }

  sub_1B60EFF74(v14, a2 & 1);
  v16 = sub_1B604EF94(v8, v7);
  if ((v15 & 1) != (v17 & 1))
  {
    goto LABEL_21;
  }

  v11 = v16;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_15:
  v23 = swift_allocError();
  swift_willThrow();
  v33 = v23;
  v24 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
  if ((swift_dynamicCast() & 1) == 0)
  {

    __swift_destroy_boxed_opaque_existential_1(v27);

    return;
  }

LABEL_22:
  sub_1B6221B34();
  MEMORY[0x1B8C90530](0xD00000000000001BLL, 0x80000001B623D490);
  sub_1B6221C34();
  MEMORY[0x1B8C90530](39, 0xE100000000000000);
  sub_1B6221C74();
  __break(1u);
}

uint64_t sub_1B60F05A4(uint64_t a1, uint64_t a2, double a3, uint64_t a4, void *a5)
{
  *&v19 = a3;
  v20 = MEMORY[0x1E69E63B0];
  v21 = MEMORY[0x1E69E63C0];
  v8 = *a5;
  v9 = sub_1B604EF94(a1, a2);
  if (__OFADD__(v8[2], (v10 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925B80);
  if ((sub_1B6221C44() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_1B604EF94(a1, a2);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_10:
    result = sub_1B6221FD4();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *a5;
  if (v12)
  {
    v16 = v15[7] + 40 * v11;
    __swift_destroy_boxed_opaque_existential_1(v16);
    return sub_1B60273A4(&v19, v16);
  }

  else
  {
    v18 = __swift_mutable_project_boxed_opaque_existential_1(&v19, MEMORY[0x1E69E63B0]);
    sub_1B60F0840(v11, a1, a2, v15, *v18);
    sub_1B6220784();
    return __swift_destroy_boxed_opaque_existential_1(&v19);
  }
}

uint64_t sub_1B60F06F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherRequest();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B60F0758(uint64_t a1)
{
  v2 = type metadata accessor for WeatherRequest();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B60F07D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924948);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B60F0840(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5)
{
  *&v11 = a5;
  v12 = MEMORY[0x1E69E63B0];
  v13 = MEMORY[0x1E69E63C0];
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a4[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1B60273A4(&v11, a4[7] + 40 * a1);
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

unint64_t sub_1B60F0900()
{
  result = qword_1EB925B90;
  if (!qword_1EB925B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925B90);
  }

  return result;
}

unint64_t sub_1B60F0954()
{
  result = qword_1EB925BA0;
  if (!qword_1EB925BA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925B98);
    sub_1B60F09D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925BA0);
  }

  return result;
}

unint64_t sub_1B60F09D8()
{
  result = qword_1EB925BA8;
  if (!qword_1EB925BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925BA8);
  }

  return result;
}

unint64_t sub_1B60F0A2C()
{
  result = qword_1EB925BB8;
  if (!qword_1EB925BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925BB8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherBatchRequestBody.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60F0B70()
{
  result = qword_1EB925BC0;
  if (!qword_1EB925BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925BC0);
  }

  return result;
}

unint64_t sub_1B60F0BC8()
{
  result = qword_1EB925BC8;
  if (!qword_1EB925BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925BC8);
  }

  return result;
}

unint64_t sub_1B60F0C20()
{
  result = qword_1EB925BD0;
  if (!qword_1EB925BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925BD0);
  }

  return result;
}

unint64_t sub_1B60F0C78()
{
  result = qword_1EB925BD8;
  if (!qword_1EB925BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925BD8);
  }

  return result;
}

unint64_t sub_1B60F0CD0()
{
  result = qword_1EB925BE0;
  if (!qword_1EB925BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925BE0);
  }

  return result;
}

uint64_t sub_1B60F0D74(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 3158384 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 3159408 && a2 == 0xE300000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 3160432 && a2 == 0xE300000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B6221F24();

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

uint64_t sub_1B60F0E90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60F0D74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60F0EB8(uint64_t a1)
{
  v2 = sub_1B60F109C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60F0EF4(uint64_t a1)
{
  v2 = sub_1B60F109C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Quantiles.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925BE8);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60F109C();
  sub_1B62220F4();
  v13 = 0;
  OUTLINED_FUNCTION_0_1();
  if (!v1)
  {
    v12 = 1;
    OUTLINED_FUNCTION_0_1();
    v11 = 2;
    OUTLINED_FUNCTION_0_1();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1B60F109C()
{
  result = qword_1EB925BF0;
  if (!qword_1EB925BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925BF0);
  }

  return result;
}

uint64_t Quantiles.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925BF8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60F109C();
  sub_1B62220D4();
  if (!v2)
  {
    v18[15] = 0;
    OUTLINED_FUNCTION_1_23();
    v12 = v11;
    v18[14] = 1;
    OUTLINED_FUNCTION_1_23();
    v15 = v14;
    v18[13] = 2;
    OUTLINED_FUNCTION_1_23();
    v17 = v16;
    (*(v7 + 8))(v10, v5);
    *a2 = v12;
    a2[1] = v15;
    a2[2] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

_BYTE *storeEnumTagSinglePayload for Quantiles.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60F13F4()
{
  result = qword_1EB925C00;
  if (!qword_1EB925C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925C00);
  }

  return result;
}

unint64_t sub_1B60F144C()
{
  result = qword_1EB925C08;
  if (!qword_1EB925C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925C08);
  }

  return result;
}

unint64_t sub_1B60F14A4()
{
  result = qword_1EB925C10;
  if (!qword_1EB925C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925C10);
  }

  return result;
}

void sub_1B60F14F8(uint64_t a1, uint64_t a2)
{
  v3 = [objc_opt_self() standardUserDefaults];
  if (a2)
  {
    v4 = sub_1B62211B4();
  }

  else
  {
    v4 = 0;
  }

  v5 = sub_1B62211B4();
  [v3 setObject:v4 forKey:v5];

  swift_unknownObjectRelease();
}

uint64_t sub_1B60F15D0()
{
  v1 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  sub_1B62204E4();
  sub_1B621D8E4();
  sub_1B621D754();
  v9 = v8;
  (*(v3 + 8))(v7, v1);
  if (*(v0 + 72) < v9 - *(v0 + 64))
  {
    sub_1B60F14F8(0, 0);
  }

  return sub_1B62204F4();
}

uint64_t sub_1B60F16D0()
{
  sub_1B6220534();

  sub_1B6220884();
}

void sub_1B60F1788()
{
  sub_1B6060374();
  if (v0)
  {
    sub_1B6221394();
    sub_1B60F183C(1);
    v1 = sub_1B6157394();
    v3 = v2;

    sub_1B60F14F8(v1, v3);
  }
}

uint64_t sub_1B60F183C(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    result = sub_1B62212E4();
    if (!__OFSUB__(result, v1))
    {
      sub_1B62212F4();
      v2 = sub_1B62213D4();

      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B60F192C()
{
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v0 = sub_1B6220B34();
  __swift_project_value_buffer(v0, qword_1EDAC2AB0);
  v1 = sub_1B6220B14();
  v2 = sub_1B62217F4();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1B6020000, v1, v2, "Generate new JWT token.", v3, 2u);
    MEMORY[0x1B8C91C90](v3, -1, -1);
  }

  v4 = sub_1B60F1B00();
  MEMORY[0x1EEE9AC00](v4);
  sub_1B62209F4();

  v5 = sub_1B62208D4();
  v6 = sub_1B6220964();

  return v6;
}

uint64_t sub_1B60F1B00()
{
  v0 = sub_1B621D474();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = sub_1B621D634();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B621D244();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    v14 = 0xD00000000000001CLL;
    sub_1B60F2264(v9);
  }

  else
  {
    v23 = v1;
    (*(v11 + 32))(v13, v9, v10);
    v15 = sub_1B621D5F4();
    if (v16)
    {
      v17 = v15;
      v18 = v16;
      v22 = 0x80000001B623D560;
      sub_1B621D614();
      if (v19)
      {
        sub_1B621D464();
        sub_1B621D434();
        MEMORY[0x1B8C8C610](v17, v18);
        sub_1B621D3E4();
        if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
        {
          v14 = 0xD00000000000001CLL;
          (*(v23 + 8))(v3, v0);
          (*(v11 + 8))(v13, v10);
          sub_1B60F2264(v6);
        }

        else
        {
          v14 = sub_1B621D584();
          (*(v23 + 8))(v3, v0);
          v20 = *(v11 + 8);
          v20(v13, v10);
          v20(v6, v10);
        }
      }

      else
      {
        v14 = 0xD00000000000001CLL;

        (*(v11 + 8))(v13, v10);
      }
    }

    else
    {
      v14 = 0xD00000000000001CLL;
      (*(v11 + 8))(v13, v10);
    }
  }

  return v14;
}

uint64_t sub_1B60F1E7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[6];
  v8 = a1[7];
  __swift_project_boxed_opaque_existential_1(a1 + 3, v7);
  return (*(v8 + 8))(a2, a3, a4, v7, v8);
}

uint64_t sub_1B60F1EFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v29 = a3;
  v5 = sub_1B621D8F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v10 = a1[1];
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EDAC2AB0);
  v12 = sub_1B6220B14();
  v13 = sub_1B62217F4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v28 = v5;
    v15 = v9;
    v16 = v14;
    *v14 = 0;
    _os_log_impl(&dword_1B6020000, v12, v13, "Received new JWT token.", v14, 2u);
    v17 = v16;
    v9 = v15;
    v5 = v28;
    MEMORY[0x1B8C91C90](v17, -1, -1);
  }

  sub_1B62204E4();
  sub_1B6220784();
  sub_1B60F14F8(v9, v10);
  sub_1B621D8E4();
  sub_1B621D754();
  v19 = v18;
  (*(v6 + 8))(v8, v5);
  *(a2 + 64) = v19;
  sub_1B62204F4();
  v20 = sub_1B6220B14();
  v21 = sub_1B62217F4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = v9;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_1B6020000, v20, v21, "Stored new JWT token.", v23, 2u);
    v24 = v23;
    v9 = v22;
    MEMORY[0x1B8C91C90](v24, -1, -1);
  }

  v25 = v29;
  *v29 = v9;
  v25[1] = v10;
  return sub_1B6220784();
}

uint64_t sub_1B60F2180()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return v0;
}

uint64_t sub_1B60F21C0()
{
  sub_1B60F2180();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t sub_1B60F2264(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static NSURLSessionConfiguration.makeWeatherSessionConfiguration(serviceType:attributionBundleIdentifier:)(unsigned __int8 *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  v6 = [objc_opt_self() defaultSessionConfiguration];
  v7 = [objc_opt_self() currentProcess];
  v8 = [v7 isApplication];

  if ((v8 & 1) == 0)
  {
    if (qword_1EDAB2250 != -1)
    {
      swift_once();
    }

    v9 = sub_1B6220B34();
    __swift_project_value_buffer(v9, qword_1EDAC2A68);
    v10 = sub_1B6220B14();
    v11 = sub_1B62217F4();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1B6020000, v10, v11, "Current process is not an application - disabling in-memory URLSession caching", v12, 2u);
      MEMORY[0x1B8C91C90](v12, -1, -1);
    }

    [v6 setURLCache_];
    [v6 set:0 alternativeServicesStorage:?];
  }

  if (qword_1EDAB4010 != -1)
  {
    swift_once();
  }

  if (byte_1EDAB2131)
  {
    goto LABEL_13;
  }

  if (qword_1EDAB0418 != -1)
  {
    swift_once();
  }

  if (byte_1EDAAFC4A == 1)
  {
LABEL_13:
    v13 = sub_1B60F27AC();
    if (!v14)
    {
      goto LABEL_22;
    }

    a2 = v13;
    a3 = v14;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_22;
    }

    sub_1B6220784();
  }

  if (qword_1EDAB0460 != -1)
  {
    swift_once();
  }

  v15 = sub_1B6220B34();
  __swift_project_value_buffer(v15, qword_1EDAC2A30);
  sub_1B6220784();
  v16 = sub_1B6220B14();
  v17 = sub_1B62217C4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v31[0] = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_1B602EEB0(a2, a3, v31);
    _os_log_impl(&dword_1B6020000, v16, v17, "Attributing traffic. bundleIdentifier=%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1B8C91C90](v19, -1, -1);
    MEMORY[0x1B8C91C90](v18, -1, -1);
  }

  sub_1B60337E8(a2, a3, v6);
LABEL_22:
  if (v5)
  {
    v20 = 0;
  }

  else
  {
    v20 = 0x4B72656874616557;
  }

  if (v5)
  {
    v21 = 0xE000000000000000;
  }

  else
  {
    v21 = 0xEB000000005F7469;
  }

  v22 = sub_1B60F2950();
  v24 = sub_1B60F2AE0(v20, v21, v22, v23);
  v26 = v25;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925C20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6225510;
  v31[0] = 0x6567412D72657355;
  v31[1] = 0xEA0000000000746ELL;
  v28 = MEMORY[0x1E69E6158];
  sub_1B6221AE4();
  *(inited + 96) = v28;
  *(inited + 72) = v24;
  *(inited + 80) = v26;
  v29 = sub_1B6221124();
  sub_1B602C058(v29, v6);
  return v6;
}

uint64_t NSURLSessionConfiguration.ServiceType.hashValue.getter()
{
  v1 = *v0;
  sub_1B6222074();
  MEMORY[0x1B8C912A0](v1);
  return sub_1B62220A4();
}

unint64_t sub_1B60F27AC()
{
  v0 = [objc_opt_self() currentConnection];
  if (v0)
  {
    v1 = sub_1B60F2DB4(v0);
    if (v2)
    {
      return v1;
    }
  }

  v3 = 0xD000000000000011;
  v4 = objc_opt_self();
  v5 = sub_1B60264F8([v4 mainBundle]);
  if (!v6)
  {
    goto LABEL_10;
  }

  if (v5 == 0xD000000000000012 && v6 == 0x80000001B623D5C0)
  {

    return v3;
  }

  v8 = sub_1B6221F24();

  if ((v8 & 1) == 0)
  {
LABEL_10:
    v9 = sub_1B60264F8([v4 mainBundle]);
    if (!v10)
    {
      goto LABEL_16;
    }

    if (v9 == 0xD000000000000016 && v10 == 0x80000001B623D580)
    {
    }

    else
    {
      v12 = sub_1B6221F24();

      if ((v12 & 1) == 0)
      {
LABEL_16:
        v13 = sub_1B60264F8([v4 mainBundle]);
        if (v14)
        {
          return v13;
        }

        return v3;
      }
    }

    return 0xD00000000000001ALL;
  }

  return v3;
}

uint64_t sub_1B60F2950()
{
  v0 = _CFCopySystemVersionDictionaryValue();
  if (!v0)
  {
    goto LABEL_5;
  }

  v1 = v0;
  v2 = _CFCopySystemVersionDictionaryValue();
  if (!v2)
  {

LABEL_5:
    v5 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v6 = [v5 operatingSystemVersionString];

    v4 = sub_1B62211D4();
    return v4;
  }

  v3 = v2;
  sub_1B6221B34();
  MEMORY[0x1B8C90530](0x206E6F6973726556, 0xE800000000000000);
  type metadata accessor for CFString(0);
  sub_1B6221C34();
  MEMORY[0x1B8C90530](0x20646C6975422820, 0xE800000000000000);
  sub_1B6221C34();
  MEMORY[0x1B8C90530](41, 0xE100000000000000);

  return 0;
}

uint64_t sub_1B60F2AE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v23 = sub_1B621D324();
  v6 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v10 = [v9 processName];
  v11 = sub_1B62211D4();
  v13 = v12;

  v14 = WDOSPlatform();
  v15 = sub_1B62211D4();
  v17 = v16;

  v24 = a1;
  v25 = a2;
  sub_1B6220784();
  MEMORY[0x1B8C90530](v11, v13);

  MEMORY[0x1B8C90530](95, 0xE100000000000000);
  MEMORY[0x1B8C90530](v15, v17);

  MEMORY[0x1B8C90530](95, 0xE100000000000000);
  MEMORY[0x1B8C90530](v21, v22);
  sub_1B621D314();
  sub_1B602C004();
  v18 = sub_1B6221A54();

  (*(v6 + 8))(v8, v23);

  return v18;
}

char *sub_1B60F2CC0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925C30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

uint64_t sub_1B60F2DB4(void *a1)
{
  v2 = [a1 wd_bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1B62211D4();

  return v3;
}

unint64_t sub_1B60F2E28()
{
  result = qword_1EB925C28;
  if (!qword_1EB925C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925C28);
  }

  return result;
}

_BYTE *_s11ServiceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

void *sub_1B60F2F48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * v1 + 24);
  v3 = v2;
  return v2;
}

uint64_t sub_1B60F2F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v5 = v3 - 1;
    v6 = type metadata accessor for HourForecast();
    sub_1B60F51CC(a1 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, a2, type metadata accessor for HourForecast);
    v7 = a2;
    v8 = 0;
    v9 = v6;
  }

  else
  {
    v9 = type metadata accessor for HourForecast();
    v7 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v7, v8, 1, v9);
}

uint64_t WeatherDataInterpolator.interpolatedCurrentWeather(from:location:date:timeZone:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v221 = a3;
  v237 = a2;
  v232 = sub_1B621D8F4();
  v234 = *(v232 - 1);
  MEMORY[0x1EEE9AC00](v232);
  OUTLINED_FUNCTION_14();
  v233 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250B0);
  v11 = OUTLINED_FUNCTION_0(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_10();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v206 - v16;
  v236 = type metadata accessor for HourForecast();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10();
  v230 = v19 - v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v21);
  v229 = &v206 - v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v23);
  v231 = &v206 - v24;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v25);
  v235 = &v206 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  v28 = OUTLINED_FUNCTION_0(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_10();
  v227 = v29 - v30;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v31);
  v226 = &v206 - v32;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v33);
  v225 = &v206 - v34;
  v35 = type metadata accessor for Metadata();
  v36 = OUTLINED_FUNCTION_0(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_10();
  v224 = v37 - v38;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v39);
  v228 = &v206 - v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925C38);
  v42 = OUTLINED_FUNCTION_0(v41);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v206 - v43;
  v45 = type metadata accessor for WeatherDataInterpolator.CubicBoundingBox();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_14();
  v49 = v48 - v47;
  v50 = type metadata accessor for HourlyForecast();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_14();
  v54 = v53 - v52;
  v55 = *v5;
  if ((sub_1B60F4284() & 1) == 0)
  {
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v62 = sub_1B6220B34();
    __swift_project_value_buffer(v62, qword_1EDAC2AB0);
    v63 = sub_1B6220B14();
    v64 = sub_1B62217F4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = OUTLINED_FUNCTION_39();
      v239 = v66;
      OUTLINED_FUNCTION_7_14(7.2225e-34);
      v67 = OUTLINED_FUNCTION_17_10();
      v69 = sub_1B602EEB0(v67, v68, &v239);

      *(v65 + 14) = v69;
      _os_log_impl(&dword_1B6020000, v63, v64, "Can't interpolate: there is some precipitation; location=%{private,mask.hash}s", v65, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v66);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    goto LABEL_30;
  }

  v223 = a4;
  v56 = a1;
  sub_1B60F51CC(a1, v54, type metadata accessor for HourlyForecast);
  v57 = *(v50 + 20);
  v222 = v54;
  v58 = *(v54 + v57);
  v238 = v58;
  sub_1B6220784();
  sub_1B60F50CC(&v238);
  v59 = v238;
  v238 = v55;
  v60 = v237;
  sub_1B60F43E0(v44);
  if (__swift_getEnumTagSinglePayload(v44, 1, v45) == 1)
  {
    sub_1B6037288(v44, &qword_1EB925C38);
    sub_1B6091EBC(v59, v17);
    v61 = v236;
    if (__swift_getEnumTagSinglePayload(v17, 1, v236) == 1)
    {
    }

    else
    {
      OUTLINED_FUNCTION_4_20();
      v107 = v235;
      sub_1B60F65F4(v17, v235, v108);
      sub_1B60F2F88(v59, v14);

      if (__swift_getEnumTagSinglePayload(v14, 1, v61) != 1)
      {
        OUTLINED_FUNCTION_4_20();
        v118 = v231;
        sub_1B60F65F4(v14, v231, v119);
        if (qword_1EDAB3D80 != -1)
        {
          OUTLINED_FUNCTION_0_0();
        }

        v120 = sub_1B6220B34();
        __swift_project_value_buffer(v120, qword_1EDAC2AB0);
        v121 = v229;
        sub_1B60F51CC(v107, v229, type metadata accessor for HourForecast);
        v122 = v230;
        sub_1B60F51CC(v118, v230, type metadata accessor for HourForecast);
        v124 = v233;
        v123 = v234;
        v125 = v60;
        v126 = v118;
        v127 = v232;
        (*(v234 + 16))(v233, v125, v232);
        OUTLINED_FUNCTION_15_9();
        swift_bridgeObjectRetain_n();
        v128 = sub_1B6220B14();
        v129 = sub_1B62217F4();
        if (os_log_type_enabled(v128, v129))
        {
          v130 = swift_slowAlloc();
          v237 = swift_slowAlloc();
          v239 = v237;
          OUTLINED_FUNCTION_8_16(7.2229e-34);
          v131 = OUTLINED_FUNCTION_17_10();
          LODWORD(v236) = v129;
          v133 = sub_1B602EEB0(v131, v132, &v239);

          *(v130 + 14) = v133;
          *(v130 + 22) = 2048;
          v134 = *(v58 + 16);

          *(v130 + 24) = v134;

          *(v130 + 32) = 2080;
          sub_1B60F5174();
          v135 = sub_1B6221F04();
          v136 = v126;
          v137 = v127;
          v139 = v138;
          sub_1B60F6654(v121, type metadata accessor for HourForecast);
          v140 = sub_1B602EEB0(v135, v139, &v239);

          *(v130 + 34) = v140;
          *(v130 + 42) = 2080;
          v141 = sub_1B6221F04();
          v143 = v142;
          sub_1B60F6654(v122, type metadata accessor for HourForecast);
          v144 = sub_1B602EEB0(v141, v143, &v239);

          *(v130 + 44) = v144;
          *(v130 + 52) = 2080;
          v145 = v233;
          v146 = sub_1B6221F04();
          v148 = v147;
          (*(v234 + 8))(v145, v137);
          v149 = sub_1B602EEB0(v146, v148, &v239);

          *(v130 + 54) = v149;
          _os_log_impl(&dword_1B6020000, v128, v236, "Can't interpolate: not enough data points; location=%{private,mask.hash}s, hours.count=%ld, firstHour.date=%s, lastHour.date=%s, referenceDate=%s", v130, 0x3Eu);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_30();
          OUTLINED_FUNCTION_30();

          sub_1B60F6654(v136, type metadata accessor for HourForecast);
          v150 = v235;
        }

        else
        {

          OUTLINED_FUNCTION_15_9();
          swift_bridgeObjectRelease_n();
          (*(v123 + 8))(v124, v127);
          sub_1B60F6654(v122, type metadata accessor for HourForecast);
          sub_1B60F6654(v121, type metadata accessor for HourForecast);
          sub_1B60F6654(v126, type metadata accessor for HourForecast);
          v150 = v107;
        }

        sub_1B60F6654(v150, type metadata accessor for HourForecast);
        goto LABEL_44;
      }

      sub_1B60F6654(v107, type metadata accessor for HourForecast);
      v17 = v14;
    }

    sub_1B6037288(v17, &qword_1EB9250B0);
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v109 = sub_1B6220B34();
    __swift_project_value_buffer(v109, qword_1EDAC2AB0);
    OUTLINED_FUNCTION_15_9();
    swift_bridgeObjectRetain_n();
    v110 = sub_1B6220B14();
    v111 = sub_1B62217F4();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = OUTLINED_FUNCTION_39();
      v113 = OUTLINED_FUNCTION_39();
      v239 = v113;
      OUTLINED_FUNCTION_7_14(7.2226e-34);
      v114 = OUTLINED_FUNCTION_17_10();
      v116 = sub_1B602EEB0(v114, v115, &v239);

      *(v112 + 14) = v116;
      *(v112 + 22) = 2048;
      v117 = *(v58 + 16);

      *(v112 + 24) = v117;

      _os_log_impl(&dword_1B6020000, v110, v111, "Can't interpolate: not enough data points; location=%{private,mask.hash}s, hours.count=%ld", v112, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v113);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    else
    {

      OUTLINED_FUNCTION_15_9();
      swift_bridgeObjectRelease_n();
    }

LABEL_44:
    OUTLINED_FUNCTION_2_27();
    sub_1B60F6654(v151, v152);
    type metadata accessor for CurrentWeather();
    goto LABEL_45;
  }

  sub_1B60F65F4(v44, v49, type metadata accessor for WeatherDataInterpolator.CubicBoundingBox);
  v70 = OUTLINED_FUNCTION_12_12(0);
  if (v71 & 1) != 0 || (v72 = v70, v73 = OUTLINED_FUNCTION_12_12(1), (v74) || (v75 = v73, v76 = OUTLINED_FUNCTION_0_43(2), (v77) || (v78 = v76, v79 = OUTLINED_FUNCTION_0_43(3), (v80) || (v81 = v79, v82 = OUTLINED_FUNCTION_0_43(4), (v83) || (v84 = v82, v235 = OUTLINED_FUNCTION_0_43(5), (v85) || (v233 = OUTLINED_FUNCTION_0_43(6), (v86) || (v231 = OUTLINED_FUNCTION_0_43(7), (v87) || (v230 = OUTLINED_FUNCTION_0_43(8), (v88) || (v229 = OUTLINED_FUNCTION_0_43(9), (v89) || (v220 = OUTLINED_FUNCTION_0_43(10), (v90) || (v219 = OUTLINED_FUNCTION_0_43(11), (v91) || (v218 = OUTLINED_FUNCTION_0_43(12), LODWORD(v217) = v92, v93 = OUTLINED_FUNCTION_0_43(13), sub_1B60F4BC4(v218, v217 & 1, v93, v94 & 1), v218 = v95, (v96) || (v217 = OUTLINED_FUNCTION_0_43(14), (v97))
  {

LABEL_25:
    if (qword_1EDAB3D80 != -1)
    {
      OUTLINED_FUNCTION_0_0();
    }

    v98 = sub_1B6220B34();
    __swift_project_value_buffer(v98, qword_1EDAC2AB0);
    v99 = sub_1B6220B14();
    v100 = sub_1B62217F4();
    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = OUTLINED_FUNCTION_39();
      v239 = v102;
      OUTLINED_FUNCTION_8_16(7.2225e-34);
      v103 = OUTLINED_FUNCTION_17_10();
      v105 = sub_1B602EEB0(v103, v104, &v239);

      *(v101 + 14) = v105;
      _os_log_impl(&dword_1B6020000, v99, v100, "Can't interpolate: could not interplate all data points; location=%{private,mask.hash}s", v101, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v102);
      OUTLINED_FUNCTION_30();
      OUTLINED_FUNCTION_30();
    }

    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_2_27();
    sub_1B60F6654(v222, v106);
LABEL_30:
    type metadata accessor for CurrentWeather();
LABEL_45:
    OUTLINED_FUNCTION_3_10();
    return __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
  }

  v216 = v84;
  v215 = v81;
  v214 = v78;
  v213 = v75;
  v212 = v72;
  v211 = OUTLINED_FUNCTION_0_43(15);
  v159 = v158;

  if (v159)
  {
    goto LABEL_25;
  }

  v160 = *&v220;
  v161 = v49 + *(v45 + 24);
  v162 = v228;
  sub_1B60F51CC(v222, v228, type metadata accessor for Metadata);
  v163 = v234;
  v164 = v237;
  v165 = v232;
  (*(v234 + 24))(v162, v237, v232);
  v238 = v55;
  v166 = type metadata accessor for InterpolationInputProducts();
  v221 = sub_1B60F4C98(v56 + *(v166 + 20), v164, v221);
  v168 = v167;
  v170 = v169;
  sub_1B60F51CC(v162, v224, type metadata accessor for Metadata);
  v171 = v225;
  (*(v163 + 16))(v225, v164, v165);
  __swift_storeEnumTagSinglePayload(v171, 0, 1, v165);
  v172 = v236[10];
  v209 = *(v161 + v236[9]);
  v210 = *(v161 + v172);
  LODWORD(v220) = *(v161 + v236[17]);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v173, v174, v175, v165);
  OUTLINED_FUNCTION_3_10();
  __swift_storeEnumTagSinglePayload(v176, v177, v178, v165);
  LODWORD(v237) = v170;
  v179 = v221;
  if (v170)
  {
    v179 = 0;
  }

  v236 = v179;
  if (v170)
  {
    v180 = 0;
  }

  else
  {
    v180 = v168;
  }

  v234 = v180;
  v181 = round(v160);
  OUTLINED_FUNCTION_5_22();
  if ((*&v181 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_57;
  }

  if (v181 <= -9.22337204e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v181 < 9.22337204e18)
  {
    v221 = v181;
    v182 = type metadata accessor for CurrentWeather();
    v183 = v182[5];
    v184 = v223;
    OUTLINED_FUNCTION_3_10();
    v185 = v232;
    __swift_storeEnumTagSinglePayload(v186, v187, v188, v232);
    v189 = v182[28];
    v190 = v184 + v182[27];
    *(v184 + v189) = 3;
    v208 = v182[35];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v191, v192, v193, v185);
    v207 = v182[36];
    OUTLINED_FUNCTION_3_10();
    __swift_storeEnumTagSinglePayload(v194, v195, v196, v185);
    v197 = v184 + v182[38];
    v198 = v184 + v182[39];
    v199 = v184 + v182[40];
    v200 = v184 + v182[41];
    v201 = v184 + v182[44];
    v232 = (v184 + v182[45]);
    sub_1B60F65F4(v224, v184, type metadata accessor for Metadata);
    sub_1B603D764(v225, v184 + v183);
    OUTLINED_FUNCTION_14_13(&v240);
    OUTLINED_FUNCTION_14_13(&v241);
    OUTLINED_FUNCTION_14_13(&v242);
    OUTLINED_FUNCTION_14_13(&v243);
    *(v184 + v182[10]) = v209;
    *(v184 + v182[11]) = v210;
    OUTLINED_FUNCTION_14_13(&v244);
    *(v184 + v182[13]) = 0;
    *(v184 + v182[14]) = 0;
    *(v184 + v182[15]) = 0;
    *(v184 + v182[16]) = 0;
    *(v184 + v182[17]) = 0;
    *(v184 + v182[18]) = 0;
    v202 = MEMORY[0x1E69E7CC0];
    *(v184 + v182[19]) = MEMORY[0x1E69E7CC0];
    *(v184 + v182[20]) = v202;
    *(v184 + v182[21]) = v202;
    *(v184 + v182[22]) = v202;
    *(v184 + v182[23]) = v202;
    *(v184 + v182[24]) = v202;
    *(v184 + v182[25]) = v235;
    *(v184 + v182[26]) = 0;
    *v190 = v233;
    *(v190 + 8) = 0;
    *(v184 + v189) = v220;
    *(v184 + v182[29]) = 0;
    *(v184 + v182[30]) = 0;
    *(v184 + v182[31]) = 0;
    *(v184 + v182[32]) = 0;
    *(v184 + v182[33]) = 0;
    *(v184 + v182[34]) = 0;
    sub_1B603D764(v226, v184 + v208);
    sub_1B603D764(v227, v184 + v207);
    v203 = v230;
    *(v184 + v182[37]) = v231;
    *v197 = v203;
    *(v197 + 8) = 0;
    *v198 = v229;
    *(v198 + 8) = 0;
    *v199 = v234;
    LOBYTE(v203) = v237 & 1;
    *(v199 + 8) = v237 & 1;
    *v200 = v236;
    *(v200 + 8) = v203;
    *(v184 + v182[42]) = v221;
    *(v184 + v182[43]) = v219;
    *v201 = v218;
    *(v201 + 8) = 0;
    v204 = v232;
    *v232 = v217;
    *(v204 + 8) = 0;
    *(v184 + v182[46]) = v211;
    OUTLINED_FUNCTION_2_27();
    sub_1B60F6654(v222, v205);
    __swift_storeEnumTagSinglePayload(v184, 0, 1, v182);
    return sub_1B60F6654(v228, type metadata accessor for Metadata);
  }

LABEL_58:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t type metadata accessor for WeatherDataInterpolator.CubicBoundingBox()
{
  result = qword_1EDAAF308;
  if (!qword_1EDAAF308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B60F4284()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  HourForecast = type metadata accessor for NextHourForecast();
  MEMORY[0x1EEE9AC00](HourForecast);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for InterpolationInputProducts();
  sub_1B60F6584(v0 + *(v7 + 24), v3);
  if (__swift_getEnumTagSinglePayload(v3, 1, HourForecast) == 1)
  {
    sub_1B6037288(v3, &qword_1EB924EA0);
    Hour = 1;
  }

  else
  {
    sub_1B60F65F4(v3, v6, type metadata accessor for NextHourForecast);
    Hour = NextHourForecast.isAllClear.getter();
    sub_1B60F6654(v6, type metadata accessor for NextHourForecast);
  }

  return Hour & 1;
}

uint64_t sub_1B60F43E0@<X0>(uint64_t a1@<X8>)
{
  sub_1B6220784();
  sub_1B608E6F4();
  v3 = sub_1B608E79C(2, v2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  if (v8)
  {
    sub_1B6221F84();
    swift_unknownObjectRetain_n();
    v11 = swift_dynamicCastClass();
    if (!v11)
    {
      swift_unknownObjectRelease();
      v11 = MEMORY[0x1E69E7CC0];
    }

    v12 = *(v11 + 16);

    if (__OFSUB__(v9 >> 1, v7))
    {
      __break(1u);
      goto LABEL_25;
    }

    if (v12 != (v9 >> 1) - v7)
    {
      goto LABEL_26;
    }

    v5 = swift_dynamicCastClass();
    v13 = swift_unknownObjectRelease();
    if (v5)
    {
      goto LABEL_10;
    }

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  while (1)
  {
    sub_1B608EDA8(v3, v5, v7, v9);
    v5 = v10;
LABEL_9:
    v13 = swift_unknownObjectRelease();
LABEL_10:
    MEMORY[0x1EEE9AC00](v13);
    sub_1B6220784();
    sub_1B608E6F4();
    v15 = sub_1B608E8A8(2, v14);
    v17 = v16;
    v19 = v18;
    v3 = v20;
    if ((v20 & 1) == 0)
    {
      goto LABEL_11;
    }

    v7 = sub_1B6221F84();
    swift_unknownObjectRetain_n();
    v23 = swift_dynamicCastClass();
    if (!v23)
    {
      swift_unknownObjectRelease();
      v23 = MEMORY[0x1E69E7CC0];
    }

    v9 = *(v23 + 16);

    if (!__OFSUB__(v3 >> 1, v19))
    {
      break;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    swift_unknownObjectRelease();
  }

  if (v9 != (v3 >> 1) - v19)
  {
    swift_unknownObjectRelease();
LABEL_11:
    sub_1B608EDA8(v15, v17, v19, v3);
    v22 = v21;
    goto LABEL_18;
  }

  v22 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (v22)
  {
    goto LABEL_19;
  }

  v22 = MEMORY[0x1E69E7CC0];
LABEL_18:
  swift_unknownObjectRelease();
LABEL_19:
  if (*(v5 + 16) == 2 && *(v22 + 16) == 2)
  {
    v24 = *(type metadata accessor for HourForecast() - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    sub_1B60F51CC(v5 + v25, a1, type metadata accessor for HourForecast);
    v26 = type metadata accessor for WeatherDataInterpolator.CubicBoundingBox();
    v27 = *(v24 + 72);
    sub_1B60F51CC(v5 + v25 + v27, a1 + v26[5], type metadata accessor for HourForecast);
    sub_1B60F51CC(v22 + v25, a1 + v26[6], type metadata accessor for HourForecast);
    sub_1B60F51CC(v22 + v25 + v27, a1 + v26[7], type metadata accessor for HourForecast);
    sub_1B608F3D0(v22);
    *(a1 + v26[8]) = v5;
    return __swift_storeEnumTagSinglePayload(a1, 0, 1, v26);
  }

  else
  {
    v29 = type metadata accessor for WeatherDataInterpolator.CubicBoundingBox();
    __swift_storeEnumTagSinglePayload(a1, 1, 1, v29);
  }
}

uint64_t sub_1B60F4778(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v25 = a1;
  v5 = type metadata accessor for InterpolationElement();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v10 = *(a2 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  while (v10 != v9)
  {
    v12 = *(type metadata accessor for HourForecast() - 8);
    v13 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v9;
    sub_1B60F4F24(v25, v13);
    v15 = v14;
    v16 = *(v5 + 20);
    v17 = sub_1B621D8F4();
    (*(*(v17 - 8) + 16))(&v8[v16], v13, v17);
    *v8 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B609B360();
      v11 = v19;
    }

    v18 = *(v11 + 16);
    if (v18 >= *(v11 + 24) >> 1)
    {
      sub_1B609B360();
      v11 = v20;
    }

    *(v11 + 16) = v18 + 1;
    sub_1B60F65F4(v8, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, type metadata accessor for InterpolationElement);
    ++v9;
  }

  LOBYTE(v26) = 0;
  MidpointInterpolator.interpolationValue(data:date:interpolationMode:)(v11, v24, &v26);
  v22 = v21;

  return v22;
}

void sub_1B60F4BC4(uint64_t a1, char a2, uint64_t a3, char a4)
{
  if ((a2 & 1) == 0 && (a4 & 1) == 0 && (~a1 & 0x7FF0000000000000) != 0 && (a3 & 0x7FF0000000000000) != 0x7FF0000000000000)
  {
    v4 = round(atan2(COERCE_LONG_DOUBLE(a3 ^ 0x8000000000000000), -*&a1) * 180.0 / 3.14159265) + 180.0;
    if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v4 > -9.22337204e18)
    {
      if (v4 < 9.22337204e18)
      {
        return;
      }

LABEL_12:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_1B60F4C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DayForecast();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20[-v12];
  v14 = sub_1B621DB04();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v20[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  static Calendar.currentCalendar(with:)(a3, v17);
  type metadata accessor for DailyForecast();
  v21 = v17;
  v22 = a2;
  sub_1B608E12C();
  sub_1B60F5334(v13, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v5) == 1)
  {
    sub_1B6037288(v10, &qword_1EB9250B8);
    v18 = 0;
  }

  else
  {
    sub_1B60F65F4(v10, v7, type metadata accessor for DayForecast);
    v18 = *&v7[*(v5 + 116)];
    sub_1B60F6654(v7, type metadata accessor for DayForecast);
  }

  (*(v15 + 8))(v17, v14);
  return v18;
}

void sub_1B60F4F24(char a1, uint64_t a2)
{
  v4 = type metadata accessor for HourForecast();
  switch(a1)
  {
    case 6:
      v5 = v4[16];
      goto LABEL_10;
    case 8:
      v5 = v4[20];
      goto LABEL_10;
    case 9:
      v5 = v4[21];
      goto LABEL_10;
    case 12:
      v6 = a2 + v4[24];
      if (*(v6 + 8))
      {
        goto LABEL_11;
      }

      cos(*v6 * 3.14159265 / 180.0);
      break;
    case 13:
      v7 = a2 + v4[24];
      if (*(v7 + 8))
      {
        goto LABEL_11;
      }

      sin(*v7 * 3.14159265 / 180.0);
      break;
    case 14:
      v5 = v4[25];
LABEL_10:
      if (*(a2 + v5 + 8))
      {
LABEL_11:
        sub_1B60F53A4();
        swift_allocError();
        *v8 = a1;
        swift_willThrow();
      }

      break;
    default:
      return;
  }
}

void sub_1B60F50CC(uint64_t *a1)
{
  v2 = *(type metadata accessor for HourForecast() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1B607A2BC();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1B60F5458(v6);
  *a1 = v3;
}

unint64_t sub_1B60F5174()
{
  result = qword_1EDAB0D70;
  if (!qword_1EDAB0D70)
  {
    sub_1B621D8F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0D70);
  }

  return result;
}

uint64_t sub_1B60F51CC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

void sub_1B60F5278()
{
  type metadata accessor for HourForecast();
  if (v0 <= 0x3F)
  {
    sub_1B602ABB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B60F5334(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250B8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B60F53A4()
{
  result = qword_1EDAAF2A8;
  if (!qword_1EDAAF2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAF2A8);
  }

  return result;
}

void sub_1B60F5458(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1B6221EF4();
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
        type metadata accessor for HourForecast();
        v6 = sub_1B6221534();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for HourForecast() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1B60F57D0(v8, v9, a1, v4);
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
    sub_1B60F5588(0, v2, 1, a1);
  }
}

void sub_1B60F5588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = type metadata accessor for HourForecast();
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v25 - v15;
  v27 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v32 = v17;
    v26 = v18;
    v22 = v17 + v18 * a3;
    while (2)
    {
      v30 = v19;
      v31 = a3;
      v28 = v22;
      v29 = v21;
      do
      {
        sub_1B60F51CC(v22, v16, type metadata accessor for HourForecast);
        sub_1B60F51CC(v19, v12, type metadata accessor for HourForecast);
        v23 = sub_1B621D834();
        sub_1B60F6654(v12, type metadata accessor for HourForecast);
        sub_1B60F6654(v16, type metadata accessor for HourForecast);
        if ((v23 & 1) == 0)
        {
          break;
        }

        if (!v32)
        {
          __break(1u);
          return;
        }

        sub_1B60F65F4(v22, v9, type metadata accessor for HourForecast);
        swift_arrayInitWithTakeFrontToBack();
        sub_1B60F65F4(v9, v19, type metadata accessor for HourForecast);
        v19 += v20;
        v22 += v20;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v31 + 1;
      v19 = v30 + v26;
      v21 = v29 - 1;
      v22 = v28 + v26;
      if (v31 + 1 != v27)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1B60F57D0(uint64_t *a1, uint64_t a2, uint64_t *a3, int64_t a4)
{
  v6 = v4;
  v101 = a1;
  v115 = type metadata accessor for HourForecast();
  v110 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v105 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v114 = &v98 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v116 = &v98 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v98 - v15;
  v112 = a3;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = MEMORY[0x1E69E7CC0];
LABEL_101:
    v5 = *v101;
    if (!*v101)
    {
      goto LABEL_142;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_103:
      v91 = v19 + 16;
      v92 = *(v19 + 2);
      for (i = v19; v92 >= 2; v19 = i)
      {
        if (!*v112)
        {
          goto LABEL_139;
        }

        v93 = &v19[16 * v92];
        v94 = *v93;
        v95 = &v91[2 * v92];
        v96 = *(v95 + 1);
        sub_1B60F60D8(*v112 + *(v110 + 72) * *v93, *v112 + *(v110 + 72) * *v95, *v112 + *(v110 + 72) * v96, v5);
        if (v6)
        {
          break;
        }

        if (v96 < v94)
        {
          goto LABEL_127;
        }

        if (v92 - 2 >= *v91)
        {
          goto LABEL_128;
        }

        *v93 = v94;
        *(v93 + 1) = v96;
        v97 = *v91 - v92;
        if (*v91 < v92)
        {
          goto LABEL_129;
        }

        v92 = *v91 - 1;
        sub_1B61B174C(v95 + 16, v97, v95);
        *v91 = v92;
      }

LABEL_111:

      return;
    }

LABEL_136:
    v19 = sub_1B61B1734();
    goto LABEL_103;
  }

  v100 = a4;
  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v106 = &v98 - v15;
  while (1)
  {
    v20 = v18++;
    i = v19;
    v102 = v20;
    if (v18 < v17)
    {
      v21 = *v112;
      v5 = *(v110 + 72);
      v22 = v20;
      v23 = *v112 + v5 * v18;
      v109 = v17;
      sub_1B60F51CC(v23, v16, type metadata accessor for HourForecast);
      v24 = v116;
      sub_1B60F51CC(v21 + v5 * v22, v116, type metadata accessor for HourForecast);
      LODWORD(v108) = sub_1B621D834();
      sub_1B60F6654(v24, type metadata accessor for HourForecast);
      sub_1B60F6654(v16, type metadata accessor for HourForecast);
      v25 = v109;
      v26 = v22 + 2;
      v111 = v5;
      v27 = v21 + v5 * (v22 + 2);
      while (1)
      {
        v28 = v26;
        if (++v18 >= v25)
        {
          break;
        }

        sub_1B60F51CC(v27, v16, type metadata accessor for HourForecast);
        v5 = v116;
        sub_1B60F51CC(v23, v116, type metadata accessor for HourForecast);
        v29 = sub_1B621D834() & 1;
        sub_1B60F6654(v5, type metadata accessor for HourForecast);
        sub_1B60F6654(v16, type metadata accessor for HourForecast);
        v27 += v111;
        v23 += v111;
        v26 = v28 + 1;
        v25 = v109;
        if ((v108 & 1) != v29)
        {
          goto LABEL_9;
        }
      }

      v18 = v25;
LABEL_9:
      if (v108)
      {
        v20 = v102;
        if (v18 < v102)
        {
          goto LABEL_133;
        }

        if (v102 >= v18)
        {
          v19 = i;
          goto LABEL_32;
        }

        v99 = v6;
        if (v25 >= v28)
        {
          v30 = v28;
        }

        else
        {
          v30 = v25;
        }

        v31 = v111 * (v30 - 1);
        v32 = v102;
        v33 = v111 * v30;
        v34 = v102 * v111;
        v35 = v18;
        v19 = i;
        do
        {
          if (v32 != --v35)
          {
            v5 = *v112;
            if (!*v112)
            {
              goto LABEL_140;
            }

            sub_1B60F65F4(v5 + v34, v105, type metadata accessor for HourForecast);
            v36 = v34 < v31 || v5 + v34 >= v5 + v33;
            if (v36)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v34 != v31)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1B60F65F4(v105, v5 + v31, type metadata accessor for HourForecast);
            v19 = i;
          }

          ++v32;
          v31 -= v111;
          v33 -= v111;
          v34 += v111;
        }

        while (v32 < v35);
        v6 = v99;
      }

      else
      {
        v19 = i;
      }

      v20 = v102;
    }

LABEL_32:
    v37 = v112[1];
    if (v18 < v37)
    {
      if (__OFSUB__(v18, v20))
      {
        goto LABEL_132;
      }

      if (v18 - v20 < v100)
      {
        break;
      }
    }

LABEL_48:
    if (v18 < v20)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1B609B43C();
      v19 = v89;
    }

    v47 = *(v19 + 2);
    v48 = v47 + 1;
    if (v47 >= *(v19 + 3) >> 1)
    {
      sub_1B609B43C();
      v19 = v90;
    }

    *(v19 + 2) = v48;
    v49 = v19 + 32;
    v50 = &v19[16 * v47 + 32];
    *v50 = v102;
    *(v50 + 1) = v18;
    v111 = *v101;
    if (!v111)
    {
      goto LABEL_141;
    }

    v51 = v16;
    if (v47)
    {
      i = v19;
      while (1)
      {
        v52 = v48 - 1;
        v53 = &v49[16 * v48 - 16];
        v54 = &v19[16 * v48];
        if (v48 >= 4)
        {
          break;
        }

        if (v48 == 3)
        {
          v55 = *(v19 + 4);
          v56 = *(v19 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_69:
          if (v58)
          {
            goto LABEL_118;
          }

          v70 = *v54;
          v69 = *(v54 + 1);
          v71 = __OFSUB__(v69, v70);
          v72 = v69 - v70;
          v73 = v71;
          if (v71)
          {
            goto LABEL_121;
          }

          v74 = *(v53 + 1);
          v75 = v74 - *v53;
          if (__OFSUB__(v74, *v53))
          {
            goto LABEL_124;
          }

          if (__OFADD__(v72, v75))
          {
            goto LABEL_126;
          }

          if (v72 + v75 >= v57)
          {
            if (v57 < v75)
            {
              v52 = v48 - 2;
            }

            goto LABEL_91;
          }

          goto LABEL_84;
        }

        if (v48 < 2)
        {
          goto LABEL_120;
        }

        v77 = *v54;
        v76 = *(v54 + 1);
        v65 = __OFSUB__(v76, v77);
        v72 = v76 - v77;
        v73 = v65;
LABEL_84:
        if (v73)
        {
          goto LABEL_123;
        }

        v79 = *v53;
        v78 = *(v53 + 1);
        v65 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v65)
        {
          goto LABEL_125;
        }

        if (v80 < v72)
        {
          goto LABEL_98;
        }

LABEL_91:
        if (v52 - 1 >= v48)
        {
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
LABEL_128:
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
          __break(1u);
          goto LABEL_135;
        }

        if (!*v112)
        {
          goto LABEL_138;
        }

        v84 = &v49[16 * v52 - 16];
        v85 = *v84;
        v5 = v52;
        v86 = &v49[16 * v52];
        v87 = *(v86 + 1);
        sub_1B60F60D8(*v112 + *(v110 + 72) * *v84, *v112 + *(v110 + 72) * *v86, *v112 + *(v110 + 72) * v87, v111);
        if (v6)
        {
          goto LABEL_111;
        }

        if (v87 < v85)
        {
          goto LABEL_113;
        }

        v6 = *(i + 2);
        if (v5 > v6)
        {
          goto LABEL_114;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        if (v5 >= v6)
        {
          goto LABEL_115;
        }

        v48 = v6 - 1;
        sub_1B61B174C(v86 + 16, v6 - 1 - v5, v86);
        v19 = i;
        *(i + 2) = v6 - 1;
        v88 = v6 > 2;
        v6 = 0;
        v51 = v106;
        if (!v88)
        {
          goto LABEL_98;
        }
      }

      v59 = &v49[16 * v48];
      v60 = *(v59 - 8);
      v61 = *(v59 - 7);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_116;
      }

      v64 = *(v59 - 6);
      v63 = *(v59 - 5);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_117;
      }

      v66 = *(v54 + 1);
      v67 = v66 - *v54;
      if (__OFSUB__(v66, *v54))
      {
        goto LABEL_119;
      }

      v65 = __OFADD__(v57, v67);
      v68 = v57 + v67;
      if (v65)
      {
        goto LABEL_122;
      }

      if (v68 >= v62)
      {
        v82 = *v53;
        v81 = *(v53 + 1);
        v65 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v65)
        {
          goto LABEL_130;
        }

        if (v57 < v83)
        {
          v52 = v48 - 2;
        }

        goto LABEL_91;
      }

      goto LABEL_69;
    }

LABEL_98:
    v17 = v112[1];
    v16 = v51;
    if (v18 >= v17)
    {
      goto LABEL_101;
    }
  }

  v38 = v20 + v100;
  if (__OFADD__(v20, v100))
  {
    goto LABEL_134;
  }

  if (v38 >= v37)
  {
    v38 = v112[1];
  }

  if (v38 < v20)
  {
LABEL_135:
    __break(1u);
    goto LABEL_136;
  }

  if (v18 == v38)
  {
    goto LABEL_48;
  }

  v99 = v6;
  v39 = *v112;
  v40 = *(v110 + 72);
  v5 = *v112 + v40 * (v18 - 1);
  v41 = -v40;
  v42 = v20 - v18;
  v103 = v40;
  v104 = v38;
  v43 = v39 + v18 * v40;
LABEL_41:
  v111 = v18;
  v107 = v43;
  v108 = v42;
  v109 = v5;
  while (1)
  {
    sub_1B60F51CC(v43, v16, type metadata accessor for HourForecast);
    v44 = v116;
    sub_1B60F51CC(v5, v116, type metadata accessor for HourForecast);
    v45 = sub_1B621D834();
    sub_1B60F6654(v44, type metadata accessor for HourForecast);
    sub_1B60F6654(v16, type metadata accessor for HourForecast);
    if ((v45 & 1) == 0)
    {
LABEL_46:
      v18 = v111 + 1;
      v5 = v109 + v103;
      v42 = v108 - 1;
      v43 = v107 + v103;
      if (v111 + 1 == v104)
      {
        v18 = v104;
        v6 = v99;
        v19 = i;
        v20 = v102;
        goto LABEL_48;
      }

      goto LABEL_41;
    }

    if (!v39)
    {
      break;
    }

    v46 = v114;
    sub_1B60F65F4(v43, v114, type metadata accessor for HourForecast);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B60F65F4(v46, v5, type metadata accessor for HourForecast);
    v5 += v41;
    v43 += v41;
    v36 = __CFADD__(v42++, 1);
    if (v36)
    {
      goto LABEL_46;
    }
  }

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
}

void sub_1B60F60D8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v54 = type metadata accessor for HourForecast();
  MEMORY[0x1EEE9AC00](v54);
  v55 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return;
  }

  v14 = a2 - a1;
  v15 = a2 - a1 == 0x8000000000000000 && v13 == -1;
  if (v15)
  {
    goto LABEL_60;
  }

  v16 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v18 = v14 / v13;
  v58 = a1;
  v57 = a4;
  v19 = v16 / v13;
  if (v14 / v13 >= v16 / v13)
  {
    sub_1B609D438(a2, v16 / v13, a4);
    v28 = a4 + v19 * v13;
    v29 = -v13;
    v30 = v28;
    v50 = a1;
    v51 = v29;
LABEL_36:
    v31 = a2 + v29;
    v32 = a3;
    v48 = v30;
    v52 = a2 + v29;
    v53 = a2;
    while (1)
    {
      if (v28 <= a4)
      {
        v58 = v53;
        v56 = v30;
        goto LABEL_58;
      }

      if (v53 <= a1)
      {
        break;
      }

      v49 = v30;
      v33 = a4;
      v34 = v32 + v29;
      v35 = v28 + v29;
      v36 = v28;
      v37 = v32;
      sub_1B60F51CC(v28 + v29, v11, type metadata accessor for HourForecast);
      v38 = v11;
      v39 = v55;
      sub_1B60F51CC(v31, v55, type metadata accessor for HourForecast);
      v40 = sub_1B621D834();
      v41 = v39;
      v11 = v38;
      sub_1B60F6654(v41, type metadata accessor for HourForecast);
      sub_1B60F6654(v38, type metadata accessor for HourForecast);
      if (v40)
      {
        v43 = v37 < v53 || v34 >= v53;
        a4 = v33;
        if (v43)
        {
          v44 = v52;
          swift_arrayInitWithTakeFrontToBack();
          v30 = v49;
          a1 = v50;
          a3 = v34;
          a2 = v44;
          v29 = v51;
          v28 = v36;
        }

        else
        {
          v30 = v49;
          v15 = v37 == v53;
          v29 = v51;
          v45 = v52;
          a3 = v34;
          a2 = v52;
          v28 = v36;
          a1 = v50;
          if (!v15)
          {
            v46 = v49;
            swift_arrayInitWithTakeBackToFront();
            v28 = v36;
            a2 = v45;
            v30 = v46;
          }
        }

        goto LABEL_36;
      }

      v42 = v37 < v36 || v34 >= v36;
      a4 = v33;
      if (v42)
      {
        swift_arrayInitWithTakeFrontToBack();
        v32 = v34;
        v28 = v35;
        v30 = v35;
        v29 = v51;
        v31 = v52;
        a1 = v50;
      }

      else
      {
        v30 = v35;
        v15 = v36 == v37;
        v32 = v34;
        v28 = v35;
        v29 = v51;
        v31 = v52;
        a1 = v50;
        if (!v15)
        {
          swift_arrayInitWithTakeBackToFront();
          v32 = v34;
          v28 = v35;
          v30 = v35;
        }
      }
    }

    v58 = v53;
    v56 = v48;
  }

  else
  {
    sub_1B609D438(a1, v14 / v13, a4);
    v53 = a4 + v18 * v13;
    v56 = v53;
    while (a4 < v53 && a2 < a3)
    {
      v21 = a3;
      sub_1B60F51CC(a2, v11, type metadata accessor for HourForecast);
      v22 = a2;
      v23 = v55;
      sub_1B60F51CC(a4, v55, type metadata accessor for HourForecast);
      v24 = sub_1B621D834();
      sub_1B60F6654(v23, type metadata accessor for HourForecast);
      sub_1B60F6654(v11, type metadata accessor for HourForecast);
      if (v24)
      {
        a2 = v22 + v13;
        v25 = a1 < v22 || a1 >= a2;
        v26 = v22;
        if (v25)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v21;
        }

        else
        {
          a3 = v21;
          if (a1 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      else
      {
        if (a1 < a4 || a1 >= a4 + v13)
        {
          swift_arrayInitWithTakeFrontToBack();
          a2 = v22;
          a3 = v21;
        }

        else
        {
          a2 = v22;
          a3 = v21;
          if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v57 = a4 + v13;
        a4 += v13;
      }

      a1 += v13;
      v58 = a1;
    }
  }

LABEL_58:
  sub_1B620D0E8(&v58, &v57, &v56);
}

uint64_t sub_1B60F6584(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B60F65F4(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1B60F6654(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *sub_1B60F66BC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF0)
  {
    v6 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
          *result = a2 + 15;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60F679C()
{
  result = qword_1EB925C40;
  if (!qword_1EB925C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925C40);
  }

  return result;
}

uint64_t MonthlyWeatherStatistics.months.getter()
{
  type metadata accessor for MonthlyWeatherStatistics();

  return sub_1B6220784();
}

uint64_t MonthlyWeatherStatistics.baselineStart.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MonthlyWeatherStatistics() + 24);
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t static MonthlyWeatherStatistics.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Metadata.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for MonthlyWeatherStatistics();
  if ((sub_1B6095F54(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) == 0)
  {
    return 0;
  }

  return sub_1B621D8A4();
}

uint64_t sub_1B60F6958(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7368746E6F6DLL && a2 == 0xE600000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x656E696C65736162 && a2 == 0xED00007472617453)
    {

      return 2;
    }

    else
    {
      v8 = sub_1B6221F24();

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

uint64_t sub_1B60F6A6C(char a1)
{
  if (!a1)
  {
    return 0x617461646174656DLL;
  }

  if (a1 == 1)
  {
    return 0x7368746E6F6DLL;
  }

  return 0x656E696C65736162;
}

uint64_t sub_1B60F6AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60F6958(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60F6AFC(uint64_t a1)
{
  v2 = sub_1B60F6FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60F6B38(uint64_t a1)
{
  v2 = sub_1B60F6FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MonthlyWeatherStatistics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v32 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14();
  v8 = v7 - v6;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_14();
  v35 = v11 - v10;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925C48);
  OUTLINED_FUNCTION_2();
  v34 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  v16 = type metadata accessor for MonthlyWeatherStatistics();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_14();
  v20 = v19 - v18;
  v21 = a1[3];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B60F6FEC();
  v36 = v15;
  v22 = v38;
  sub_1B62220D4();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v23 = v34;
  v38 = v8;
  v43 = 0;
  OUTLINED_FUNCTION_1_24();
  sub_1B60F74E8(v24, v25);
  v26 = v35;
  sub_1B6221DD4();
  sub_1B603D8D8(v26, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925C58);
  v42 = 1;
  sub_1B60F737C(&qword_1EB925C60, sub_1B60F7040);
  sub_1B6221DD4();
  *(v20 + *(v16 + 20)) = v40;
  v41 = 2;
  OUTLINED_FUNCTION_2_28();
  sub_1B60F74E8(v27, v28);
  v29 = v38;
  sub_1B6221DD4();
  (*(v23 + 8))(v36, v37);
  (*(v32 + 32))(v20 + *(v16 + 24), v29, v3);
  sub_1B60F7094(v20, v33, type metadata accessor for MonthlyWeatherStatistics);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_1B60F70F4(v20, type metadata accessor for MonthlyWeatherStatistics);
}

unint64_t sub_1B60F6FEC()
{
  result = qword_1EB925C50;
  if (!qword_1EB925C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925C50);
  }

  return result;
}

unint64_t sub_1B60F7040()
{
  result = qword_1EB925C68;
  if (!qword_1EB925C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925C68);
  }

  return result;
}

uint64_t sub_1B60F7094(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_9();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1B60F70F4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_9();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t MonthlyWeatherStatistics.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925C70);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60F6FEC();
  sub_1B62220F4();
  v18 = 0;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_1_24();
  sub_1B60F74E8(v11, v12);
  OUTLINED_FUNCTION_10_5();
  if (!v2)
  {
    v17 = *(v3 + *(type metadata accessor for MonthlyWeatherStatistics() + 20));
    v16[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925C58);
    sub_1B60F737C(&qword_1EB925C78, sub_1B60F73F4);
    OUTLINED_FUNCTION_10_5();
    v16[14] = 2;
    sub_1B621D8F4();
    OUTLINED_FUNCTION_2_28();
    sub_1B60F74E8(v13, v14);
    OUTLINED_FUNCTION_10_5();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1B60F737C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB925C58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B60F73F4()
{
  result = qword_1EB925C80;
  if (!qword_1EB925C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925C80);
  }

  return result;
}

uint64_t sub_1B60F7490(uint64_t a1)
{
  result = sub_1B60F74E8(&qword_1EB925C88, type metadata accessor for MonthlyWeatherStatistics);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B60F74E8(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for MonthlyWeatherStatistics.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60F7638()
{
  result = qword_1EB925C90;
  if (!qword_1EB925C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925C90);
  }

  return result;
}

unint64_t sub_1B60F7690()
{
  result = qword_1EB925C98;
  if (!qword_1EB925C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925C98);
  }

  return result;
}

unint64_t sub_1B60F76E8()
{
  result = qword_1EB925CA0;
  if (!qword_1EB925CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925CA0);
  }

  return result;
}

uint64_t Array<A>.contains(_:)(uint64_t a1, double a2, double a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  v7 = a1 + 32;
LABEL_2:
  while (2)
  {
    v8 = v5;
    if (v5 == v6)
    {
      return v8 != v6;
    }

    v9 = *(v7 + 8 * v5++);
    v10 = *(v9 + 16);
    if (!v10)
    {
      continue;
    }

    break;
  }

  sub_1B6220784();
  v11 = sub_1B6220784();
  v12 = sub_1B60F7978(v11, a2, a3);

  if ((v12 & 1) == 0)
  {
    goto LABEL_55;
  }

  v14 = *(v9 + 16);
  if (v14 <= 1)
  {
LABEL_56:

    return v8 != v6;
  }

  if (v14 < v10)
  {
    goto LABEL_60;
  }

  v15 = 1;
  while (1)
  {
LABEL_8:
    if (v15 == v10)
    {
      goto LABEL_56;
    }

    v16 = *(v9 + 32 + 8 * v15++);
    v17 = v16[2];
    if (v17 >= 4)
    {
      v18 = v16[4];
      v19 = v16[v17 + 3];
      v20 = *(v18 + 16);
      if (v20 == *(v19 + 16))
      {
        break;
      }
    }
  }

  if (!v20)
  {
    goto LABEL_61;
  }

  if (v18 == v19)
  {
LABEL_17:
    if (v20 == 1)
    {
      goto LABEL_61;
    }

    v24 = 0;
    v26 = *(v18 + 32);
    v25 = *(v18 + 40);
    v27 = v17 - 1;
    v28 = v16 + 5;
    while (1)
    {
      v29 = *v28;
      if (*(*v28 + 16) < 2uLL)
      {
        __break(1u);
        goto LABEL_59;
      }

      v31 = *(v29 + 32);
      v30 = *(v29 + 40);
      if (v30 == v25 && v31 == v26)
      {
        v31 = v26;
        v30 = v25;
      }

      else
      {
        v33 = v25 > a2 && v30 < a2;
        if (!v33 && (v25 < a2 ? (v34 = v30 <= a2) : (v34 = 1), v34) || (v31 <= a3 ? (v35 = v26 <= a3) : (v35 = 0), v35))
        {
          if (v25 != a2 || v30 >= a2 || v26 <= a3)
          {
            v38 = v30 == a2;
            if (v25 >= a2)
            {
              v38 = 0;
            }

            if (v31 <= a3)
            {
              v38 = 0;
            }

            v24 ^= v38;
            goto LABEL_53;
          }
        }

        else if (v26 + (v31 - v26) * ((a2 - v25) / (v30 - v25)) <= a3)
        {
          goto LABEL_53;
        }

        v24 ^= 1u;
      }

LABEL_53:
      ++v28;
      v26 = v31;
      v25 = v30;
      if (!--v27)
      {
        if ((v24 & 1) == 0)
        {
          goto LABEL_8;
        }

LABEL_55:

        goto LABEL_2;
      }
    }
  }

  v21 = (v18 + 32);
  v22 = (v19 + 32);
  v23 = *(v18 + 16);
  while (v23)
  {
    if (*v21 != *v22)
    {
      goto LABEL_8;
    }

    ++v21;
    ++v22;
    if (!--v23)
    {
      goto LABEL_17;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
  return result;
}

unint64_t sub_1B60F7978(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (v3 < 4)
  {
LABEL_12:
    LOBYTE(v19) = 0;
    return v19 & 1;
  }

  v8 = (a1 + 32);
  v7 = *(a1 + 32);
  v9 = *(a1 + 32 + 8 * v3 - 8);
  sub_1B6220784();
  result = sub_1B6220784();
  if (v7)
  {
    if (v9)
    {
      v11 = sub_1B60950A0(v7, v9);

      if ((v11 & 1) == 0)
      {
        goto LABEL_12;
      }

      v12 = *v8;
      goto LABEL_9;
    }

LABEL_7:

    goto LABEL_12;
  }

  if (v9)
  {
    goto LABEL_7;
  }

  v12 = 0;
LABEL_9:
  if (*(v12 + 16) < 2uLL)
  {
    goto LABEL_53;
  }

  v14 = *(v12 + 32);
  v13 = *(v12 + 40);
  result = sub_1B60F7D28(1uLL, v3, a1);
  v18 = (v17 >> 1) - v16;
  if (v17 >> 1 == v16)
  {
    swift_unknownObjectRelease();
    goto LABEL_12;
  }

  if ((v17 >> 1) <= v16)
  {
    goto LABEL_54;
  }

  v19 = 0;
  v20 = (v15 + 8 * v16);
  while (1)
  {
    v21 = *v20;
    if (*(*v20 + 16) < 2uLL)
    {
      break;
    }

    v23 = *(v21 + 32);
    v22 = *(v21 + 40);
    if (v22 == v13 && v23 == v14)
    {
      v23 = v14;
      v22 = v13;
    }

    else
    {
      v25 = v13 > a2 && v22 < a2;
      if (!v25 && (v13 < a2 ? (v26 = v22 <= a2) : (v26 = 1), v26) || (v23 <= a3 ? (v27 = v14 <= a3) : (v27 = 0), v27))
      {
        if (v13 != a2 || v22 >= a2 || v14 <= a3)
        {
          v30 = v22 == a2;
          if (v13 >= a2)
          {
            v30 = 0;
          }

          if (v23 <= a3)
          {
            v30 = 0;
          }

          v19 ^= v30;
          goto LABEL_50;
        }
      }

      else if (v14 + (v23 - v14) * ((a2 - v13) / (v22 - v13)) <= a3)
      {
        goto LABEL_50;
      }

      v19 ^= 1u;
    }

LABEL_50:
    ++v20;
    v14 = v23;
    v13 = v22;
    if (!--v18)
    {
      swift_unknownObjectRelease();
      return v19 & 1;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

unint64_t Array<A>.contains(_:)(uint64_t a1, double a2, double a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v3;
  }

  v7 = sub_1B6220784();
  v8 = sub_1B60F7978(v7, a2, a3);

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  if (v3 == 1)
  {
    return v3;
  }

  result = sub_1B60F7D28(1uLL, v3, a1);
  v11 = v10;
  v13 = v12 >> 1;
  while (1)
  {
    v3 = v13 == v11;
    if (v13 == v11)
    {
LABEL_10:
      swift_unknownObjectRelease();
      return v3;
    }

    if (v11 >= v13)
    {
      break;
    }

    v14 = sub_1B6220784();
    v15 = sub_1B60F7978(v14, a2, a3);

    if (v15)
    {
      goto LABEL_10;
    }

    ++v11;
  }

  __break(1u);
  return result;
}

unint64_t sub_1B60F7C7C(unint64_t result, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a3 + 16);
  if (v4 < result || v4 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    a4(0);
    return sub_1B6220784();
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_1B60F7D28(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = *(a3 + 16);
  if (v3 < result || v3 < a2)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return sub_1B6220784();
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1B60F7D98()
{
  v1 = sub_1B621D3A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v40 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v37 - v8;
  v10 = *v0;
  sub_1B621D374();
  sub_1B605C810();
  v12 = *(v11 + 16);
  v13 = v11;
  if (v12 >= *(v11 + 24) >> 1)
  {
    sub_1B605C810();
    v13 = v34;
  }

  *(v13 + 16) = v12 + 1;
  v14 = v13;
  v17 = *(v2 + 32);
  v16 = v2 + 32;
  v15 = v17;
  v42 = (*(v16 + 48) + 32) & ~*(v16 + 48);
  v41 = *(v16 + 40);
  v17(v13 + v42 + v41 * v12, v9, v1);
  sub_1B621D374();
  v18 = *(v14 + 16);
  if (v18 >= *(v14 + 24) >> 1)
  {
    sub_1B605C810();
    v14 = v35;
  }

  *(v14 + 16) = v18 + 1;
  v39 = v15;
  v15(v14 + v42 + v18 * v41, v6, v1);
  v19 = *(v10 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v37[0] = v14;
    v37[1] = v16;
    v38 = v1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1B603C6EC(0, v19, 0);
    v20 = v43;
    v21 = (v10 + 32);
    v22 = 16 * *(v43 + 16);
    OUTLINED_FUNCTION_0_44();
    v25 = 0x74617265706D6574;
    do
    {
      if (*v21)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      if (*v21)
      {
        v27 = 0xEB00000000657275;
      }

      else
      {
        v27 = 0xED00006E6F697461;
      }

      v43 = v20;
      v28 = *(v20 + 24);
      v29 = v23 + 1;
      if (v23 >= v28 >> 1)
      {
        sub_1B603C6EC(v28 > 1, v23 + 1, 1);
        OUTLINED_FUNCTION_0_44();
        v20 = v43;
      }

      *(v20 + 16) = v29;
      v30 = v20 + v22;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      v22 += 16;
      ++v21;
      v23 = v29;
      --v19;
    }

    while (v19);
    v1 = v38;
    v14 = v37[0];
  }

  v43 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68);
  sub_1B60358B4();
  sub_1B6221174();

  v31 = v40;
  sub_1B621D374();

  v32 = *(v14 + 16);
  if (v32 >= *(v14 + 24) >> 1)
  {
    sub_1B605C810();
    v14 = v36;
  }

  *(v14 + 16) = v32 + 1;
  v39(v14 + v42 + v32 * v41, v31, v1);
  return v14;
}

uint64_t sub_1B60F8180(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1B60F81C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TelemetryActivity.MetaData.init(iterationIndex:wasRacingRequest:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1B60F8240@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TelemetryActivity();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B60F8EC0(v2, v6);
  if (swift_getEnumCaseMultiPayload() == 18)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925CB0);

    v10 = *(v9 + 64);
    v11 = sub_1B6220814();
    (*(*(v11 - 8) + 32))(a1, v6, v11);
    return sub_1B60F8F24(&v6[v10]);
  }

  else
  {
    v7 = sub_1B6220814();
    return (*(*(v7 - 8) + 32))(a1, v6, v7);
  }
}

void (*sub_1B60F83D4(void (*a1)(uint64_t)))(uint64_t)
{
  sub_1B6220814();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_1_25();
  v4 = sub_1B60F8240(v1);
  a1(v4);
  v5 = OUTLINED_FUNCTION_3_21();
  v6(v5);
  return a1;
}

uint64_t TelemetryActivity.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1_25();
  v7 = sub_1B6220814();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  sub_1B60F8240(v12 - v11);
  v14 = sub_1B6220804();
  (*(v9 + 8))(v13, v7);
  if (v14)
  {
    v15 = [v14 fetchStartDate];
    if (v15)
    {
      v16 = v15;
      sub_1B621D8C4();

      return (*(v5 + 32))(a1, v1, v3);
    }
  }

  return sub_1B621D8E4();
}

double sub_1B60F8664(SEL *a1, SEL *a2)
{
  v35 = a2;
  v37 = a1;
  v5 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v36 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_6_16();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_7_15();
  OUTLINED_FUNCTION_2();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_14();
  v19 = v18 - v17;
  sub_1B60F8240(v18 - v17);
  v20 = sub_1B6220804();
  (*(v15 + 8))(v19, v13);
  v21 = 0.0;
  if (v20)
  {
    v22 = [v20 *v37];
    if (v22)
    {
      v23 = v22;
      sub_1B621D8C4();

      v24 = v36;
      v25 = *(v36 + 32);
      v25(v3, v11, v5);
      v26 = [v20 *v35];
      if (v26)
      {
        v27 = v26;
        sub_1B621D8C4();

        v25(v2, v4, v5);
        sub_1B621D7D4();
        v21 = v28;

        v29 = *(v24 + 8);
        v29(v2, v5);
        v30 = OUTLINED_FUNCTION_5_23();
        (v29)(v30);
        return v21;
      }

      v31 = OUTLINED_FUNCTION_5_23();
      v32(v31);
    }
  }

  return v21;
}

double TelemetryActivity.taskDuration.getter()
{
  v3 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v33 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6_16();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_7_15();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  sub_1B60F8240(v16 - v15);
  v18 = sub_1B6220804();
  (*(v13 + 8))(v17, v11);
  v19 = 0.0;
  if (v18)
  {
    v20 = [v18 responseEndDate];
    if (v20)
    {
      v21 = v20;
      sub_1B621D8C4();

      v22 = v33;
      v23 = *(v33 + 32);
      v23(v1, v9, v3);
      v24 = [v18 fetchStartDate];
      if (v24)
      {
        v25 = v24;
        sub_1B621D8C4();

        v23(v0, v2, v3);
        sub_1B621D7D4();
        v19 = v26;

        v27 = *(v22 + 8);
        v27(v0, v3);
        v28 = OUTLINED_FUNCTION_5_23();
        (v27)(v28);
        return v19;
      }

      v29 = OUTLINED_FUNCTION_5_23();
      v30(v29);
    }
  }

  return v19;
}

char *TelemetryActivity.responseSize.getter()
{
  sub_1B6220814();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_25();
  sub_1B60F8240(v1);
  sub_1B6220804();
  v3 = OUTLINED_FUNCTION_3_21();
  v4(v3);
  if (!v0)
  {
    return 0;
  }

  v5 = [v0 countOfResponseBodyBytesReceived];
  v6 = [v0 countOfResponseHeaderBytesReceived];

  result = &v6[v5];
  if (__OFADD__(v5, v6))
  {
    __break(1u);
    return 0;
  }

  return result;
}

id TelemetryActivity.isProxyConnection.getter()
{
  sub_1B6220814();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_25();
  sub_1B60F8240(v1);
  sub_1B6220804();
  v3 = OUTLINED_FUNCTION_3_21();
  v4(v3);
  if (!v0)
  {
    return 0;
  }

  v5 = [v0 isProxyConnection];

  return v5;
}

void *TelemetryActivity.cdnServer.getter()
{
  sub_1B6220814();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_1_25();
  sub_1B60F8240(v1);
  sub_1B62207F4();
  v3 = OUTLINED_FUNCTION_3_21();
  v4(v3);
  if (v0)
  {
    v5 = sub_1B62211B4();
    v6 = [v0 valueForHTTPHeaderField_];

    if (v6)
    {
      v0 = sub_1B62211D4();
    }

    else
    {
      return 0;
    }
  }

  return v0;
}

uint64_t getEnumTagSinglePayload for TelemetryActivity.MetaData(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 8);
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TelemetryActivity.MetaData(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1B60F8EC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TelemetryActivity();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B60F8F24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9250C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WeatherRequestDailyRelativeRange.RelativeTo.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_1B6221CD4();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_1B60F900C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617473 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6581861 && a2 == 0xE300000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x65766974616C6572 && a2 == 0xEA00000000006F54;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 7827310 && a2 == 0xE300000000000000)
      {

        return 3;
      }

      else
      {
        v9 = sub_1B6221F24();

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

uint64_t sub_1B60F9168(char a1)
{
  result = 0x7472617473;
  switch(a1)
  {
    case 1:
      result = 6581861;
      break;
    case 2:
      result = 0x65766974616C6572;
      break;
    case 3:
      result = 7827310;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B60F92C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B60F900C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B60F92EC(uint64_t a1)
{
  v2 = sub_1B60F9548();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60F9328(uint64_t a1)
{
  v2 = sub_1B60F9548();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherRequestDailyRelativeRange.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925CB8);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60F9548();
  sub_1B62220F4();
  v10[15] = 0;
  OUTLINED_FUNCTION_4();
  sub_1B6221EB4();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_4();
    sub_1B6221EB4();
    v10[13] = 2;
    sub_1B60F959C();
    OUTLINED_FUNCTION_4();
    sub_1B6221EC4();
    type metadata accessor for WeatherRequestDailyRelativeRange();
    v10[12] = 3;
    sub_1B621D8F4();
    sub_1B609F140(&unk_1EDAB20F8);
    OUTLINED_FUNCTION_4();
    sub_1B6221EC4();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1B60F9548()
{
  result = qword_1EB925CC0;
  if (!qword_1EB925CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925CC0);
  }

  return result;
}

unint64_t sub_1B60F959C()
{
  result = qword_1EB925CC8;
  if (!qword_1EB925CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925CC8);
  }

  return result;
}

uint64_t WeatherRequestDailyRelativeRange.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v22 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925CD0);
  OUTLINED_FUNCTION_2();
  v24 = v10;
  v25 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = type metadata accessor for WeatherRequestDailyRelativeRange();
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B60F9548();
  sub_1B62220D4();
  if (!v2)
  {
    v17 = v15;
    v30 = 0;
    v18 = v24;
    OUTLINED_FUNCTION_1_26();
    *v17 = sub_1B6221DC4();
    v29 = 1;
    OUTLINED_FUNCTION_1_26();
    v17[1] = sub_1B6221DC4();
    v28 = 2;
    sub_1B60F990C();
    OUTLINED_FUNCTION_1_26();
    sub_1B6221DD4();
    v27 = 3;
    sub_1B609F140(&qword_1EDAB20F0);
    v21 = v8;
    v20 = v25;
    OUTLINED_FUNCTION_1_26();
    sub_1B6221DD4();
    (*(v18 + 8))(v12, v20);
    (*(v22 + 32))(v17 + *(v13 + 28), v21, v4);
    sub_1B60F9960(v17, v23);
  }

  return __swift_destroy_boxed_opaque_existential_1(v26);
}

unint64_t sub_1B60F990C()
{
  result = qword_1EB925CD8;
  if (!qword_1EB925CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925CD8);
  }

  return result;
}

uint64_t sub_1B60F9960(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WeatherRequestDailyRelativeRange();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B60F99C8()
{
  result = qword_1EB925CE0;
  if (!qword_1EB925CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925CE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherRequestDailyRelativeRange.RelativeTo(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherRequestDailyRelativeRange.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B60F9BC8()
{
  result = qword_1EB925CE8;
  if (!qword_1EB925CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925CE8);
  }

  return result;
}

unint64_t sub_1B60F9C20()
{
  result = qword_1EB925CF0;
  if (!qword_1EB925CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925CF0);
  }

  return result;
}

unint64_t sub_1B60F9C78()
{
  result = qword_1EB925CF8;
  if (!qword_1EB925CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925CF8);
  }

  return result;
}

unint64_t sub_1B60F9CCC()
{
  result = qword_1EB925D00;
  if (!qword_1EB925D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925D00);
  }

  return result;
}

uint64_t sub_1B60F9D20()
{

  return v0;
}

uint64_t sub_1B60F9D50()
{
  sub_1B60F9D20();

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t sub_1B60F9DA8()
{
  v0 = sub_1B6221854();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6221944();
  MEMORY[0x1EEE9AC00](v4);
  v6[0] = sub_1B602370C(0, &qword_1EDAAEA30);
  v6[1] = MEMORY[0x1E69E7CC0];
  sub_1B6037DC8(&unk_1EDAAEA38, 255, MEMORY[0x1E69E8110]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925D30);
  sub_1B602CAA0(&qword_1EDAAEAA8, &qword_1EB925D30);
  sub_1B6221AA4();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8098], v0);
  result = sub_1B6221954();
  qword_1EDAAEA50 = result;
  return result;
}

uint64_t sub_1B60FA040()
{
  OUTLINED_FUNCTION_7_16();
  if (!v0)
  {
    swift_once();
  }

  return sub_1B6221984();
}

uint64_t static LocIntelActor.shared.getter()
{
  type metadata accessor for LocIntelActor.Actor();

  return swift_initStaticObject();
}

uint64_t sub_1B60FA130()
{
  sub_1B6221834();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  v10 = sub_1B6221034();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  sub_1B602370C(0, &qword_1EDAB4020);
  sub_1B6221004();
  sub_1B6037DC8(&qword_1EDAB4028, 255, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924AE0);
  sub_1B602CAA0(qword_1EDAB4030, &qword_1EB924AE0);
  OUTLINED_FUNCTION_6_17();
  OUTLINED_FUNCTION_13_10(21);
  static OS_dispatch_queue.schedulingQueue(named:attributes:qualityOfService:)();
  v7 = OUTLINED_FUNCTION_12_13();
  v8(v7);
  result = (*(v2 + 8))(v6, v10);
  qword_1EDAAEA60 = &qword_1EB924AE0;
  return result;
}

uint64_t sub_1B60FA350()
{
  v0 = sub_1B6221964();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6221034();
  v4 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v6 = v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = sub_1B602370C(0, &qword_1EDAB4020);
  sub_1B6221024();
  v11 = MEMORY[0x1E69E7CC0];
  sub_1B6037DC8(&qword_1EDAAF690, 255, MEMORY[0x1E69E8120]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925D28);
  sub_1B602CAA0(&qword_1EDAAF6D0, &qword_1EB925D28);
  sub_1B6221AA4();
  v7 = static OS_dispatch_queue.serialSchedulingQueue(named:attributes:qualityOfService:)();
  (*(v1 + 8))(v3, v0);
  result = (*(v4 + 8))(v6, v10);
  qword_1EDAAF6A8 = v7;
  return result;
}

id sub_1B60FA5D0()
{
  OUTLINED_FUNCTION_7_16();
  if (!v1)
  {
    swift_once();
  }

  v2 = *v0;

  return v2;
}

uint64_t sub_1B60FA61C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {
    v5 = _s13ConfigurationVMa();
    if (sub_1B6221014() & 1) != 0 && (sub_1B62211A4())
    {
      v6 = *(v5 + 44);
      v7 = *(a1 + v6);
      v8 = *(a2 + v6);
      if (v7)
      {
        if (v8)
        {
          sub_1B602370C(0, &qword_1EDAB4020);
          v9 = v8;
          v10 = v7;
          v11 = sub_1B62219A4();

          if (v11)
          {
            return 1;
          }
        }
      }

      else if (!v8)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1B60FA728()
{
  sub_1B6222074();
  sub_1B60FA614();
  return sub_1B62220A4();
}

uint64_t sub_1B60FA778()
{
  sub_1B6222074();
  sub_1B60FA614();
  return sub_1B62220A4();
}

_BYTE *sub_1B60FA8C8(_BYTE *result, int a2, int a3)
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

uint64_t sub_1B60FA9B0(int *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1B6221034();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(a3 + 16);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  if (v8 <= v11)
  {
    result = v11;
  }

  else
  {
    result = v8;
  }

  if (result <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  else
  {
    v13 = result;
  }

  v14 = *(v7 + 80);
  v15 = *(*(v6 - 8) + 64);
  v16 = *(v10 + 80);
  v17 = *(v10 + 64);
  if (!a2)
  {
    return 0;
  }

  if (v13 >= a2)
  {
LABEL_28:
    if ((result & 0x80000000) != 0)
    {
      v27 = (a1 + v14 + 16) & ~v14;
      if (v8 == v13)
      {
        v9 = v6;
      }

      else
      {
        v27 = (v27 + v15 + v16) & ~v16;
        v8 = v11;
      }

      return __swift_getEnumTagSinglePayload(v27, v8, v9);
    }

    else
    {
      v26 = *(a1 + 1);
      if (v26 >= 0xFFFFFFFF)
      {
        LODWORD(v26) = -1;
      }

      return (v26 + 1);
    }
  }

  else
  {
    v18 = ((v17 + ((v15 + ((v14 + 16) & ~v14) + v16) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v19 = v18 & 0xFFFFFFF8;
    if ((v18 & 0xFFFFFFF8) != 0)
    {
      v20 = 2;
    }

    else
    {
      v20 = a2 - v13 + 1;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    switch(v22)
    {
      case 1:
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 2:
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_28;
        }

        goto LABEL_25;
      case 3:
        __break(1u);
        return result;
      case 4:
        v23 = *(a1 + v18);
        if (!v23)
        {
          goto LABEL_28;
        }

LABEL_25:
        v24 = v23 - 1;
        if (v19)
        {
          v24 = 0;
          v25 = *a1;
        }

        else
        {
          v25 = 0;
        }

        result = v13 + (v25 | v24) + 1;
        break;
      default:
        goto LABEL_28;
    }
  }

  return result;
}

void sub_1B60FABD8(uint64_t *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1B6221034();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(a4 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v10 <= v13)
  {
    v14 = *(v12 + 84);
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(v9 + 80);
  v17 = *(*(v8 - 8) + 64);
  v18 = *(v12 + 80);
  v19 = ((*(v12 + 64) + ((v17 + ((v16 + 16) & ~v16) + v18) & ~v18) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v15 >= a3)
  {
    v22 = 0;
  }

  else
  {
    if (((*(v12 + 64) + ((v17 + ((v16 + 16) & ~v16) + v18) & ~v18) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v20 = a3 - v15 + 1;
    }

    else
    {
      v20 = 2;
    }

    if (v20 >= 0x10000)
    {
      v21 = 4;
    }

    else
    {
      v21 = 2;
    }

    if (v20 < 0x100)
    {
      v21 = 1;
    }

    if (v20 >= 2)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  if (a2 <= v15)
  {
    switch(v22)
    {
      case 1:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 2:
        *(a1 + v19) = 0;
        if (a2)
        {
          goto LABEL_35;
        }

        break;
      case 3:
LABEL_48:
        __break(1u);
        break;
      case 4:
        *(a1 + v19) = 0;
        goto LABEL_34;
      default:
LABEL_34:
        if (a2)
        {
LABEL_35:
          if ((v14 & 0x80000000) != 0)
          {
            v25 = (a1 + v16 + 16) & ~v16;
            if (v10 == v15)
            {
              v26 = a2;
              v11 = v8;
            }

            else
            {
              v25 = (v25 + v17 + v18) & ~v18;
              v26 = a2;
              v10 = v13;
            }

            __swift_storeEnumTagSinglePayload(v25, v26, v10, v11);
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *a1 = a2 & 0x7FFFFFFF;
            a1[1] = 0;
          }

          else
          {
            a1[1] = (a2 - 1);
          }
        }

        break;
    }
  }

  else
  {
    if (v19)
    {
      v23 = 1;
    }

    else
    {
      v23 = a2 - v15;
    }

    if (v19)
    {
      v24 = ~v15 + a2;
      bzero(a1, v19);
      *a1 = v24;
    }

    switch(v22)
    {
      case 1:
        *(a1 + v19) = v23;
        break;
      case 2:
        *(a1 + v19) = v23;
        break;
      case 3:
        goto LABEL_48;
      case 4:
        *(a1 + v19) = v23;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1B60FAE78(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B60FAEB8(uint64_t result, int a2, int a3)
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

uint64_t static AppGroup.weather.getter()
{
  if (qword_1EDAB3C50 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1B60FAF58()
{
  v1 = sub_1B621D3A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v40 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v37 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v37 - v8;
  v10 = *v0;
  sub_1B621D374();
  sub_1B605C810();
  v12 = *(v11 + 16);
  v13 = v11;
  if (v12 >= *(v11 + 24) >> 1)
  {
    sub_1B605C810();
    v13 = v34;
  }

  *(v13 + 16) = v12 + 1;
  v14 = v13;
  v17 = *(v2 + 32);
  v16 = v2 + 32;
  v15 = v17;
  v42 = (*(v16 + 48) + 32) & ~*(v16 + 48);
  v41 = *(v16 + 40);
  v17(v13 + v42 + v41 * v12, v9, v1);
  sub_1B621D374();
  v18 = *(v14 + 16);
  if (v18 >= *(v14 + 24) >> 1)
  {
    sub_1B605C810();
    v14 = v35;
  }

  *(v14 + 16) = v18 + 1;
  v39 = v15;
  v15(v14 + v42 + v18 * v41, v6, v1);
  v19 = *(v10 + 16);
  v20 = MEMORY[0x1E69E7CC0];
  if (v19)
  {
    v37[0] = v14;
    v37[1] = v16;
    v38 = v1;
    v43 = MEMORY[0x1E69E7CC0];
    sub_1B603C6EC(0, v19, 0);
    v20 = v43;
    v21 = (v10 + 32);
    v22 = 16 * *(v43 + 16);
    OUTLINED_FUNCTION_0_44();
    v25 = 0x74617265706D6574;
    do
    {
      if (*v21)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      if (*v21)
      {
        v27 = 0xEB00000000657275;
      }

      else
      {
        v27 = 0xED00006E6F697461;
      }

      v43 = v20;
      v28 = *(v20 + 24);
      v29 = v23 + 1;
      if (v23 >= v28 >> 1)
      {
        sub_1B603C6EC(v28 > 1, v23 + 1, 1);
        OUTLINED_FUNCTION_0_44();
        v20 = v43;
      }

      *(v20 + 16) = v29;
      v30 = v20 + v22;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      v22 += 16;
      ++v21;
      v23 = v29;
      --v19;
    }

    while (v19);
    v1 = v38;
    v14 = v37[0];
  }

  v43 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924F68);
  sub_1B60358B4();
  sub_1B6221174();

  v31 = v40;
  sub_1B621D374();

  v32 = *(v14 + 16);
  if (v32 >= *(v14 + 24) >> 1)
  {
    sub_1B605C810();
    v14 = v36;
  }

  *(v14 + 16) = v32 + 1;
  v39(v14 + v42 + v32 * v41, v31, v1);
  return v14;
}

uint64_t NSFileManager.deleteSqliteDatabase(_:in:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v25 = *MEMORY[0x1E69E9840];
  v6 = sub_1B621D634();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924AD8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B6226520;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v23 = a1;
  v24 = a2;
  swift_bridgeObjectRetain_n();
  MEMORY[0x1B8C90530](1835561773, 0xE400000000000000);
  v11 = v24;
  *(inited + 48) = v23;
  *(inited + 56) = v11;
  v23 = a1;
  v24 = a2;
  sub_1B6220784();
  MEMORY[0x1B8C90530](1818326829, 0xE400000000000000);
  v12 = v24;
  *(inited + 64) = v23;
  *(inited + 72) = v12;
  v23 = a1;
  v24 = a2;
  sub_1B6220784();
  MEMORY[0x1B8C90530](0x6C616E72756F6A2DLL, 0xE800000000000000);
  v13 = 0;
  v14 = v24;
  *(inited + 80) = v23;
  *(inited + 88) = v14;
  v15 = (v7 + 8);
  do
  {
    sub_1B6220784();
    sub_1B621D5C4();

    v16 = sub_1B621D5A4();
    (*v15)(v9, v6);
    v23 = 0;
    v17 = [v3 removeItemAtURL:v16 error:&v23];

    if (v17)
    {
      v18 = v23;
    }

    else
    {
      v19 = v23;
      v20 = sub_1B621D574();

      swift_willThrow();
    }

    v13 += 16;
  }

  while (v13 != 64);
  swift_setDeallocating();
  return sub_1B60FB5BC();
}

uint64_t sub_1B60FB5BC()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t sub_1B60FB610()
{
  v0 = qword_1EB9243F0;
  v1 = off_1EB9243F8;
  sub_1B6220784();
  MEMORY[0x1B8C90530](v0, v1);

  qword_1EB942A60 = 0x2E322E312E30;
  *algn_1EB942A68 = 0xE600000000000000;
  return result;
}

uint64_t sub_1B60FB68C()
{
  v0 = qword_1EB925D40;
  sub_1B6220784();
  return v0;
}

uint64_t sub_1B60FB6C4()
{
  if (qword_1EB924428 != -1)
  {
    swift_once();
  }

  v0 = qword_1EB942A60;
  sub_1B6220784();
  return v0;
}

uint64_t WeatherAlerts.detailsUrl.getter()
{
  v1 = *(v0 + *(type metadata accessor for WeatherAlerts() + 20));
  sub_1B6220784();
  return v1;
}

uint64_t WeatherAlerts.detailsUrl.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for WeatherAlerts() + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*WeatherAlerts.detailsUrl.modify())(void)
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlerts();
  return nullsub_1;
}

uint64_t WeatherAlerts.alerts.getter()
{
  type metadata accessor for WeatherAlerts();

  return sub_1B6220784();
}

uint64_t WeatherAlerts.alerts.setter()
{
  OUTLINED_FUNCTION_3();
  v2 = *(type metadata accessor for WeatherAlerts() + 24);

  *(v1 + v2) = v0;
  return result;
}

uint64_t (*WeatherAlerts.alerts.modify())(void)
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for WeatherAlerts();
  return nullsub_1;
}

uint64_t WeatherAlerts.init(metadata:detailsUrl:alerts:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for WeatherAlerts();
  v11 = (a5 + *(v10 + 20));
  OUTLINED_FUNCTION_2_30();
  result = sub_1B604CB24(a1, a5);
  *v11 = a2;
  v11[1] = a3;
  *(a5 + *(v10 + 24)) = a4;
  return result;
}

uint64_t WeatherAlerts.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925D50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60FBC24();
  sub_1B62220D4();
  if (!v2)
  {
    LOBYTE(v17) = 0;
    OUTLINED_FUNCTION_1_27();
    sub_1B60FC458(v6, v7);
    sub_1B6221DD4();
    sub_1B6221D24();
    type metadata accessor for WeatherAlert();
    sub_1B60FC458(&qword_1EDAAFB30, type metadata accessor for WeatherAlert);
    v9 = sub_1B6221D14();
    v10 = OUTLINED_FUNCTION_7_17();
    v11(v10, v16);
    v12 = type metadata accessor for WeatherAlerts();
    v13 = (a2 + *(v12 + 20));
    OUTLINED_FUNCTION_2_30();
    sub_1B604CB24(v14, a2);
    *v13 = v17;
    v13[1] = v18;
    *(a2 + *(v12 + 24)) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B60FBC24()
{
  result = qword_1EDAAFB28;
  if (!qword_1EDAAFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFB28);
  }

  return result;
}

uint64_t sub_1B60FBC78(uint64_t a1)
{
  v2 = sub_1B60FBC24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B60FBCB4(uint64_t a1)
{
  v2 = sub_1B60FBC24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherAlerts.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925D58);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B60FBC24();
  sub_1B62220F4();
  v18 = 0;
  type metadata accessor for Metadata();
  OUTLINED_FUNCTION_1_27();
  sub_1B60FC458(v11, v12);
  OUTLINED_FUNCTION_2_2();
  if (!v2)
  {
    v13 = type metadata accessor for WeatherAlerts();
    v17 = 1;
    sub_1B6221E24();
    v16 = *(v3 + *(v13 + 24));
    v15[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925318);
    sub_1B60CF43C();
    OUTLINED_FUNCTION_2_2();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1B60FBF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925D68);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21[-v5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924EC8);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21[-v8];
  v10 = type metadata accessor for WeatherAlerts();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  v16 = *(v15 + 20);
  v22 = a2;
  v17 = (a2 + v16);
  type metadata accessor for WeatherDaemonModelFactory();
  *v17 = 0;
  v17[1] = 0;
  swift_initStackObject();
  OUTLINED_FUNCTION_8_18();
  v18 = sub_1B621E5F4();
  v19 = *(v18 - 8);
  (*(v19 + 16))(v6, a1, v18);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v18);
  sub_1B605734C();
  sub_1B6037288(v6, &qword_1EB925D68);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    sub_1B6037288(v9, &qword_1EB924EC8);
    sub_1B60FC684();
    swift_allocError();
    swift_willThrow();
    return (*(v19 + 8))(a1, v18);
  }

  else
  {
    (*(v19 + 8))(a1, v18);
    sub_1B604CB24(v9, v14);
    return sub_1B604CB24(v14, v22);
  }
}

uint64_t WeatherAlerts.init(flatbufferData:)@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v2 = sub_1B621F484();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v4 = sub_1B621E5F4();
  OUTLINED_FUNCTION_2();
  v27[0] = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v27 - v10;
  v12 = OUTLINED_FUNCTION_1_3();
  sub_1B604D8AC(v12, v13);
  OUTLINED_FUNCTION_1_3();
  v27[1] = sub_1B621EEA4();
  v27[2] = v14;
  v27[3] = v15;
  sub_1B621F474();
  sub_1B621F464();
  if (v1)
  {
    v16 = OUTLINED_FUNCTION_1_3();
    sub_1B60362A8(v16, v17);
    v18 = OUTLINED_FUNCTION_7_17();
    v20 = v2;
  }

  else
  {
    v21 = OUTLINED_FUNCTION_7_17();
    v22(v21, v2);
    v23 = v27[0];
    (*(v27[0] + 16))(v8, v11, v4);
    sub_1B60FBF20(v8, v28);
    v24 = OUTLINED_FUNCTION_1_3();
    sub_1B60362A8(v24, v25);
    v19 = *(v23 + 8);
    v18 = v11;
    v20 = v4;
  }

  v19(v18, v20);
}

uint64_t sub_1B60FC400(uint64_t a1)
{
  result = sub_1B60FC458(qword_1EDAB1840, type metadata accessor for WeatherAlerts);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B60FC458(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for WeatherAlerts.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1B60FC580()
{
  result = qword_1EB925D60;
  if (!qword_1EB925D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925D60);
  }

  return result;
}

unint64_t sub_1B60FC5D8()
{
  result = qword_1EDAAFB18;
  if (!qword_1EDAAFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFB18);
  }

  return result;
}

unint64_t sub_1B60FC630()
{
  result = qword_1EDAAFB20;
  if (!qword_1EDAAFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFB20);
  }

  return result;
}

unint64_t sub_1B60FC684()
{
  result = qword_1EB925D70;
  if (!qword_1EB925D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925D70);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherAlertsFlatbufferError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B60FC788()
{
  result = qword_1EB925D78;
  if (!qword_1EB925D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB925D78);
  }

  return result;
}