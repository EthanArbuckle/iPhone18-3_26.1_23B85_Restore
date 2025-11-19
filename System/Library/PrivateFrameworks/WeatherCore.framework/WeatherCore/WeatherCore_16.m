WeatherCore::OpenIntentHelpers::L2KindView_optional __swiftcall OpenIntentHelpers.L2KindView.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t OpenIntentHelpers.L2KindView.rawValue.getter()
{
  result = 0x696C617551726961;
  switch(*v0)
  {
    case 1:
      result = 0x6F46796C72756F68;
      break;
    case 2:
      result = 0x6B694C736C656566;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C95D2670@<X0>(unint64_t *a1@<X8>)
{
  result = OpenIntentHelpers.L2KindView.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t OpenIntentHelpers.init(path:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for OpenIntentHelpers.Path(0);
  OUTLINED_FUNCTION_9_30(a1, v3, v4, v2);
  v6 = (a1 + v5);
  v7 = OUTLINED_FUNCTION_11();
  result = sub_1C95D340C(v7, v8);
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t OpenIntentHelpers.init(path:openedFrom:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for OpenIntentHelpers.Path(0);
  OUTLINED_FUNCTION_9_30(a4, v9, v10, v8);
  v12 = (a4 + v11);
  result = sub_1C95D340C(a1, a4);
  *v12 = a2;
  v12[1] = a3;
  return result;
}

uint64_t static OpenIntentHelpers.openedFromMainBundle(path:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68F0);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  sub_1C9470AA0(a1, &v18 - v6, &qword_1EC3A68F0);
  v8 = [objc_opt_self() mainBundle];
  v9 = sub_1C9493F34(v8);
  v11 = v10;
  v12 = type metadata accessor for OpenIntentHelpers.Path(0);
  OUTLINED_FUNCTION_9_30(a2, v13, v14, v12);
  v16 = (a2 + v15);
  result = sub_1C95D340C(v7, a2);
  *v16 = v9;
  v16[1] = v11;
  return result;
}

uint64_t OpenIntentHelpers.urlComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v81 = a1;
  v75 = sub_1C96A4304();
  OUTLINED_FUNCTION_1();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v74 = v6 - v5;
  v7 = type metadata accessor for Location();
  v8 = OUTLINED_FUNCTION_7(v7);
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v72 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68F0);
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v72 - v15;
  v80 = type metadata accessor for OpenIntentHelpers.Path(0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v72 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v72 - v21;
  v23 = sub_1C96A43B4();
  OUTLINED_FUNCTION_1();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_14();
  v29 = v28 - v27;
  static OpenIntentHelpers.makeUrlComponents()();
  v30 = (v1 + *(type metadata accessor for OpenIntentHelpers(0) + 20));
  if (v30[1])
  {
    v78 = v29;
    v76 = *v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4CD8);
    v77 = v19;
    *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
    v29 = v78;
    sub_1C96A42F4();
    v19 = v77;
    sub_1C96A4324();
  }

  sub_1C9470AA0(v1, v16, &qword_1EC3A68F0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v80) != 1)
  {
    sub_1C95D34E0(v16, v22, type metadata accessor for OpenIntentHelpers.Path);
    sub_1C95D347C(v22, v19);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v31 = v3;
      v32 = *v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68F8);
      OUTLINED_FUNCTION_5_33();
      v34 = v79;
      sub_1C95D34E0(&v19[v33], v79, v35);
      v36 = *(v34 + 48);
      v72 = v22;
      v73 = v23;
      if (v36 == 1)
      {
      }

      else
      {
        v38 = OUTLINED_FUNCTION_8_31();

        if ((v38 & 1) == 0)
        {
          v42 = v79;
          sub_1C956AE80();
          v43 = *(v42 + 32);
          v44 = *(v42 + 40);
          v45 = objc_allocWithZone(MEMORY[0x1E6985C40]);
          sub_1C96A53C4();
          [v45 initWithLatitude:v43 longitude:v44];
          OUTLINED_FUNCTION_13_29();
          v39 = sub_1C9550094(v46, v47, v48, v49);
LABEL_15:
          v80 = v31;
          static OpenIntentHelpers.parseLocation(_:into:)(v39);
          v60 = sub_1C95D2FFC();
          v62 = v61;

          MEMORY[0x1CCA89CF0](v60, v62);
          v23 = v73;
          switch(v32)
          {
            case 0:
            case 1:
            case 3:
              OUTLINED_FUNCTION_11();
              v63 = sub_1C96A7DE4();

              if (v63)
              {
                goto LABEL_21;
              }

              goto LABEL_24;
            case 2:

LABEL_21:
              v65 = sub_1C96A4314();
              if (*v64)
              {
                v66 = v64;
                v67 = v74;
                sub_1C96A42F4();
                sub_1C9522924();
                v68 = *(*v66 + 16);
                sub_1C9522954(v68);
                v69 = *v66;
                *(v69 + 16) = v68 + 1;
                (*(v80 + 32))(v69 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v68, v67, v75);
              }

              v65(v82, 0);
LABEL_24:

              OUTLINED_FUNCTION_6_39();
              sub_1C948E9EC(v79, v70);
              OUTLINED_FUNCTION_4_43();
              v59 = v72;
              break;
            default:
              JUMPOUT(0);
          }

          goto LABEL_25;
        }
      }

      v39 = 0;
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_5_33();
    sub_1C95D34E0(v19, v12, v37);
    MEMORY[0x1CCA89CF0](47, 0xE100000000000000);
    if (*(v12 + 48) == 1)
    {
    }

    else
    {
      v40 = OUTLINED_FUNCTION_8_31();

      if ((v40 & 1) == 0)
      {
        sub_1C956AE80();
        v50 = v12[4];
        v51 = v12[5];
        v52 = objc_allocWithZone(MEMORY[0x1E6985C40]);
        sub_1C96A53C4();
        [v52 initWithLatitude:v50 longitude:v51];
        OUTLINED_FUNCTION_13_29();
        v41 = sub_1C9550094(v53, v54, v55, v56);
        goto LABEL_17;
      }
    }

    v41 = 0;
LABEL_17:
    static OpenIntentHelpers.parseLocation(_:into:)(v41);

    OUTLINED_FUNCTION_6_39();
    sub_1C948E9EC(v12, v57);
    OUTLINED_FUNCTION_4_43();
    v59 = v22;
LABEL_25:
    sub_1C948E9EC(v59, v58);
    return (*(v25 + 32))(v81, v29, v23);
  }

  sub_1C9470AFC(v16, &qword_1EC3A68F0);
  MEMORY[0x1CCA89CF0](47, 0xE100000000000000);
  return (*(v25 + 32))(v81, v29, v23);
}

uint64_t sub_1C95D2FFC()
{
  sub_1C96A53C4();
  v1 = sub_1C96A71D4();
  sub_1C96A7164();
  return v1;
}

uint64_t static OpenIntentHelpers.parseDate(_:into:)(uint64_t a1, uint64_t a2)
{
  v31[1] = a2;
  v3 = sub_1C96A4304();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v31 - v10;
  v12 = sub_1C96A4A54();
  OUTLINED_FUNCTION_1();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  sub_1C9470AA0(a1, v11, &unk_1EC3A5430);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    return sub_1C9470AFC(v11, &unk_1EC3A5430);
  }

  v31[0] = v3;
  (*(v14 + 32))(v18, v11, v12);
  v20 = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  [v20 setFormatOptions_];
  v21 = sub_1C96A4984();
  v22 = [v20 stringFromDate_];

  sub_1C96A7024();
  v24 = sub_1C96A4314();
  if (*v23)
  {
    v25 = v23;
    sub_1C96A42F4();

    sub_1C9522924();
    v26 = *(*v25 + 16);
    sub_1C9522954(v26);
    OUTLINED_FUNCTION_1_46(v26 + 1);
    v29(v27 + v28 * v26, v7, v31[0]);
  }

  else
  {
  }

  v30 = OUTLINED_FUNCTION_10_29();
  v24(v30);

  return (*(v14 + 8))(v18, v12);
}

uint64_t sub_1C95D336C(void *a1)
{
  v1 = [a1 name];
  if (v1)
  {
    v2 = v1;
    sub_1C96A7024();
  }

  return OUTLINED_FUNCTION_11();
}

uint64_t sub_1C95D340C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A68F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95D347C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OpenIntentHelpers.Path(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95D34E0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

unint64_t sub_1C95D3540()
{
  result = qword_1EC3A6900;
  if (!qword_1EC3A6900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6900);
  }

  return result;
}

void sub_1C95D35BC()
{
  sub_1C95D3640();
  if (v0 <= 0x3F)
  {
    sub_1C9461318();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C95D3640()
{
  if (!qword_1EC3A6918)
  {
    type metadata accessor for OpenIntentHelpers.Path(255);
    v0 = sub_1C96A7934();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC3A6918);
    }
  }
}

void sub_1C95D3698()
{
  type metadata accessor for Location();
  if (v0 <= 0x3F)
  {
    sub_1C95D370C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C95D370C()
{
  if (!qword_1EC3A6930)
  {
    type metadata accessor for Location();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC3A6930);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for OpenIntentHelpers.L2KindView(_BYTE *result, unsigned int a2, unsigned int a3)
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

Swift::Bool __swiftcall LocationMatchHelper.isSameLocation(first:second:)(Swift::tuple_name_String_optional_coordinate___C_CLLocationCoordinate2D first, Swift::tuple_name_String_optional_coordinate___C_CLLocationCoordinate2D second)
{
  longitude = second.coordinate.longitude;
  latitude = second.coordinate.latitude;
  object = second.name.value._object;
  countAndFlagsBits = second.name.value._countAndFlagsBits;
  v6 = first.name.value._object;
  v7 = first.name.value._countAndFlagsBits;
  v8 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:first.coordinate.latitude longitude:first.coordinate.longitude];
  v9 = [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:latitude longitude:longitude];
  [v8 distanceFromLocation_];
  v11 = v10;

  v12.value._countAndFlagsBits = v7;
  v12.value._object = v6;
  v13.value._countAndFlagsBits = countAndFlagsBits;
  v13.value._object = object;
  return LocationMatchHelper.isSameLocation(firstName:secondName:distance:)(v12, v13, v11);
}

uint64_t type metadata accessor for PrecipitationNotificationPolicy()
{
  result = qword_1EC3A6938;
  if (!qword_1EC3A6938)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C95D3A0C()
{
  sub_1C95D3A80();
  if (v0 <= 0x3F)
  {
    type metadata accessor for PrecipitationNotificationFetchSchedule();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1C95D3A80()
{
  if (!qword_1EC3A6948)
  {
    type metadata accessor for PrecipitationNotification();
    type metadata accessor for PrecipitationNotificationDeliverySchedule();
    type metadata accessor for PrecipitationNotificationFetchSchedule();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EC3A6948);
    }
  }
}

uint64_t sub_1C95D3B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = a1 == a5 && a2 == a6;
  if (v12 || (v13 = sub_1C96A7DE4(), result = 0, (v13 & 1) != 0))
  {
    if (a3 == a7 && a4 == a8)
    {
      return 1;
    }

    else
    {

      return sub_1C96A7DE4();
    }
  }

  return result;
}

uint64_t sub_1C95D3BAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x5555656369766564 && a2 == 0xEA00000000004449;
  if (v4 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746C615368736168 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C96A7DE4();

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

uint64_t sub_1C95D3C7C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6960);
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C94AA4DC();
  sub_1C96A7F54();
  v16 = 0;
  sub_1C96A7D24();
  if (!v5)
  {
    v15 = 1;
    sub_1C96A7D24();
  }

  return (*(v9 + 8))(v12, v7);
}

uint64_t sub_1C95D3DE8()
{
  sub_1C96A7144();

  return sub_1C96A7144();
}

uint64_t sub_1C95D3E38()
{
  sub_1C96A7EE4();
  sub_1C96A7144();
  sub_1C96A7144();
  return sub_1C96A7F24();
}

uint64_t sub_1C95D3EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95D3BAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95D3ED0(uint64_t a1)
{
  v2 = sub_1C94AA4DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95D3F0C(uint64_t a1)
{
  v2 = sub_1C94AA4DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95D3F80()
{
  sub_1C96A7EE4();
  sub_1C96A7144();
  sub_1C96A7144();
  return sub_1C96A7F24();
}

unint64_t sub_1C95D4004()
{
  result = qword_1EC3A6950;
  if (!qword_1EC3A6950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6950);
  }

  return result;
}

unint64_t sub_1C95D405C()
{
  result = qword_1EC3A6968;
  if (!qword_1EC3A6968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6968);
  }

  return result;
}

uint64_t StubAppConfigurationDataService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0xD000000000001184;
  *(result + 32) = 0x80000001C96CCAF0;
  return result;
}

uint64_t StubAppConfigurationDataService.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xD000000000001184;
  *(v0 + 32) = 0x80000001C96CCAF0;
  return result;
}

uint64_t StubAppConfigurationDataService.fetchConfiguration(with:)()
{
  v1 = sub_1C96A7084();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    sub_1C95D42BC();
    swift_allocError();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5810);
    swift_allocObject();
    return sub_1C96A5694();
  }

  else
  {
    sub_1C96A53C4();
    sub_1C96A7074();
    v6 = sub_1C96A7034();
    v8 = v7;

    result = (*(v2 + 8))(v4, v1);
    if (v8 >> 60 == 15)
    {
      __break(1u);
    }

    else
    {
      v9[0] = v6;
      v9[1] = v8;
      v9[2] = MEMORY[0x1E69E7CC0];
      v9[3] = MEMORY[0x1E69E7CC0];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5810);
      swift_allocObject();
      return sub_1C96A56A4();
    }
  }

  return result;
}

unint64_t sub_1C95D42BC()
{
  result = qword_1EC3A6970;
  if (!qword_1EC3A6970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6970);
  }

  return result;
}

uint64_t StubAppConfigurationDataService.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

_BYTE *storeEnumTagSinglePayload for StubAppConfigurationDataService.ServiceError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C95D4470()
{
  result = qword_1EC3A6978;
  if (!qword_1EC3A6978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6978);
  }

  return result;
}

id sub_1C95D44C4()
{
  v0 = [objc_allocWithZone(type metadata accessor for BeaufortUnitConverter()) init];
  v1 = objc_allocWithZone(MEMORY[0x1E696B078]);
  result = sub_1C95D4A58(7628386, 0xE300000000000000, v0);
  qword_1EDB77D18 = result;
  return result;
}

uint64_t NSUnitSpeed.isMillimetersPerHour.getter()
{
  v2 = [v1 symbol];
  sub_1C96A7024();
  OUTLINED_FUNCTION_3_37();
  if (v1 == 1747938669 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_0_71();
    OUTLINED_FUNCTION_2_50();
    return v1 & 1;
  }
}

uint64_t NSUnitSpeed.isCentimetersPerHour.getter()
{
  v2 = [v1 symbol];
  sub_1C96A7024();
  OUTLINED_FUNCTION_3_37();
  if (v1 == 1747938659 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_0_71();
    OUTLINED_FUNCTION_2_50();
    return v1 & 1;
  }
}

uint64_t NSUnitSpeed.isInchesPerHour.getter()
{
  v2 = [v1 symbol];
  sub_1C96A7024();
  OUTLINED_FUNCTION_3_37();
  if (v1 == 1747938921 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_0_71();
    OUTLINED_FUNCTION_2_50();
    return v1 & 1;
  }
}

id sub_1C95D47B4(double a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E696AFF8]) initWithCoefficient_];
  v7 = objc_allocWithZone(MEMORY[0x1E696B078]);
  result = sub_1C95D4A58(a3, 0xE400000000000000, v6);
  *a4 = result;
  return result;
}

uint64_t NSUnitSpeed.isFeetPerHour.getter()
{
  v2 = [v1 symbol];
  sub_1C96A7024();
  OUTLINED_FUNCTION_3_37();
  if (v1 == 1747940454 && v0 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_117();
    OUTLINED_FUNCTION_0_71();
    OUTLINED_FUNCTION_2_50();
    return v1 & 1;
  }
}

double sub_1C95D48DC(double a1)
{
  v1 = 0.0;
  if (a1 >= 0.0)
  {
    return fmin(pow(a1 / 0.836, 0.666666667), 17.0);
  }

  return v1;
}

double sub_1C95D4944(long double a1)
{
  v1 = 0.0;
  if (a1 >= 0.0)
  {
    if (a1 <= 17.0)
    {
      return pow(a1, 1.5) * 0.836;
    }

    else
    {
      return 58.5975772;
    }
  }

  return v1;
}

id sub_1C95D49FC()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1C95D4A58(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1C96A7004();

  v6 = [v3 initWithSymbol:v5 converter:a3];

  return v6;
}

unint64_t sub_1C95D4AC0()
{
  result = qword_1EC3A69A0;
  if (!qword_1EC3A69A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69A0);
  }

  return result;
}

double sub_1C95D4B28@<D0>(uint64_t a1@<X8>)
{
  v2 = sub_1C96A4C14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDB80318 != -1)
  {
    swift_once();
  }

  UnitManager.refreshUnitsFromStorage()();
  sub_1C96A4BC4();
  v6 = UnitManager.visibility(locale:)();
  v7 = objc_opt_self();
  v8 = v6;
  v9 = [v7 kilometers];
  sub_1C946B5D0(0, &qword_1EDB7FDA0);
  v10 = sub_1C96A78B4();

  if (v10)
  {

    v11 = 1;
  }

  else
  {
    v12 = [v7 miles];
    v13 = sub_1C96A78B4();

    if (v13)
    {
      v11 = 0;
    }

    else
    {
      v11 = 2;
    }
  }

  v24[7] = v11;
  v28.super.super.super.isa = UnitManager.precipitationRainfall(locale:)();
  UnitConfiguration.Precipitation.init(_:)(v28);
  v29.super.super.super.isa = UnitManager.pressure(locale:)();
  UnitConfiguration.Pressure.init(_:)(v29);
  v14 = UnitManager.temperature(locale:)();
  v15 = objc_opt_self();
  v16 = v14;
  v17 = [v15 celsius];
  sub_1C946B5D0(0, &qword_1EDB80068);
  v18 = sub_1C96A78B4();

  if (v18)
  {

    v19 = 1;
  }

  else
  {
    v20 = [v15 fahrenheit];
    v21 = sub_1C96A78B4();

    if (v21)
    {
      v19 = 0;
    }

    else
    {
      v19 = 2;
    }
  }

  v24[4] = v19;
  v30.super.super.super.isa = UnitManager.windSpeed(locale:)();
  UnitConfiguration.WindSpeed.init(_:)(v30);
  sub_1C9683F34(v25);
  (*(v3 + 8))(v5, v2);
  v22 = v25[1];
  *a1 = v25[0];
  *(a1 + 16) = v22;
  result = *&v26;
  *(a1 + 32) = v26;
  *(a1 + 48) = v27;
  return result;
}

uint64_t sub_1C95D4E54()
{
  v17 = v0;
  sub_1C95D4B28(v0 + 16);
  if (qword_1EDB77DC8 != -1)
  {
    swift_once();
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB77DD0);
  sub_1C95D59CC(v0 + 16, v0 + 72);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A7684();
  sub_1C95D5A28(v0 + 16);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v16 = v5;
    *v4 = 136315138;
    sub_1C95D59CC(v0 + 16, v0 + 72);
    v6 = sub_1C9684C40();
    v8 = v7;
    sub_1C95D5A28(v0 + 16);
    v9 = sub_1C9484164(v6, v8, &v16);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1C945E000, v2, v3, "Producing preferred units from entities(for:). Units=%s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1CCA8E3D0](v5, -1, -1);
    MEMORY[0x1CCA8E3D0](v4, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A69E8);
  v10 = swift_allocObject();
  v11 = *(v0 + 16);
  v12 = *(v0 + 32);
  *(v10 + 16) = xmmword_1C96AA1C0;
  *(v10 + 32) = v11;
  v13 = *(v0 + 48);
  *(v10 + 48) = v12;
  *(v10 + 64) = v13;
  *(v10 + 80) = *(v0 + 64);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1C95D5050(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1C95D50E0;

  return sub_1C95D4E40();
}

uint64_t sub_1C95D50E0(uint64_t a1)
{
  OUTLINED_FUNCTION_27();
  v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_15();
  *v7 = v6;

  if (!v1)
  {
    **(v5 + 16) = a1;
  }

  v8 = *(v6 + 8);

  return v8();
}

unint64_t sub_1C95D51EC()
{
  result = qword_1EC3A69A8;
  if (!qword_1EC3A69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69A8);
  }

  return result;
}

unint64_t sub_1C95D5244()
{
  result = qword_1EC3A69B0;
  if (!qword_1EC3A69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69B0);
  }

  return result;
}

unint64_t sub_1C95D529C()
{
  result = qword_1EC3A69B8;
  if (!qword_1EC3A69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69B8);
  }

  return result;
}

uint64_t sub_1C95D52F0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C95D5A84;

  return sub_1C95D4B14();
}

uint64_t sub_1C95D537C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1C95D5978();
  *v5 = v2;
  v5[1] = sub_1C95D5430;

  return MEMORY[0x1EEDB3AE8](a1, a2, v6);
}

uint64_t sub_1C95D5430()
{
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1C95D5518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1C95D55D8;

  return MEMORY[0x1EEDB2EC0](a1, a2, a3, a4);
}

uint64_t sub_1C95D55D8(uint64_t a1)
{
  OUTLINED_FUNCTION_27();
  v4 = *v2;
  OUTLINED_FUNCTION_15();
  *v5 = v4;

  v7 = *(v4 + 8);
  if (!v1)
  {
    v6 = a1;
  }

  return v7(v6);
}

unint64_t sub_1C95D56D0()
{
  result = qword_1EC3A69C0;
  if (!qword_1EC3A69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69C0);
  }

  return result;
}

unint64_t sub_1C95D5724()
{
  result = qword_1EC3A69C8;
  if (!qword_1EC3A69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69C8);
  }

  return result;
}

unint64_t sub_1C95D577C()
{
  result = qword_1EC3A69D0;
  if (!qword_1EC3A69D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A69D8);
    sub_1C95D5724();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69D0);
  }

  return result;
}

uint64_t sub_1C95D5800(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_1C95D4AC0();
  *v5 = v2;
  v5[1] = sub_1C95D5A7C;

  return MEMORY[0x1EEDB2ED8](a1, a2, v6);
}

uint64_t sub_1C95D58B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C95D5430;

  return MEMORY[0x1EEDB3B80](a1, a2, a3);
}

unint64_t sub_1C95D5978()
{
  result = qword_1EC3A69E0;
  if (!qword_1EC3A69E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69E0);
  }

  return result;
}

Swift::Void __swiftcall PredictedLocationsScheduleStoreType.recordRefresh()()
{
  v3 = v1;
  v4 = v0;
  sub_1C96A4A54();
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_72();
  (*(v3 + 32))(v2, v4, v3);
  (*(v6 + 8))();
}

Swift::Void __swiftcall PredictedLocationsScheduleStoreType.recordSuccessfulExecution()()
{
  v3 = v1;
  v4 = v0;
  sub_1C96A4A54();
  OUTLINED_FUNCTION_1_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_0_72();
  (*(v3 + 48))(v2, v4, v3);
  (*(v6 + 8))();
}

uint64_t PredictedLocationsScheduleStore.Feature.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  MEMORY[0x1CCA8D880](v1);
  return sub_1C96A7F24();
}

uint64_t PredictedLocationsScheduleStore.__allocating_init(feature:)(char *a1)
{
  v2 = swift_allocObject();
  PredictedLocationsScheduleStore.init(feature:)(a1);
  return v2;
}

uint64_t PredictedLocationsScheduleStore.init(feature:)(char *a1)
{
  v2 = *a1;
  if (qword_1EDB7AB28 != -1)
  {
    swift_once();
  }

  v3 = qword_1EDB7AB30;
  if (qword_1EDB7AB30)
  {
    v4 = qword_1EDB7AB30;
  }

  else
  {
    if (qword_1EDB80350 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v4 = qword_1EDB80358;
    v3 = 0;
  }

  *(v1 + 16) = v4;
  *(v1 + 24) = v2;
  v5 = v3;
  return v1;
}

unint64_t sub_1C95D5DE4(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = 0xD00000000000001DLL;
    }

    else
    {
      v2 = 0xD000000000000029;
    }

    if (a1 == 1)
    {
      v3 = "ationsSuccessfulExecution";
    }

    else
    {
      v3 = "intentDonations-";
    }
  }

  else
  {
    v3 = "nextPredictedLocationsRefresh";
    v2 = 0xD00000000000001DLL;
  }

  v4 = 0xD000000000000010;
  if (!*(v1 + 24))
  {
    v4 = 0x6163696669746F6ELL;
  }

  v6 = v4;
  sub_1C96A53C4();
  MEMORY[0x1CCA8CB00](v2, v3 | 0x8000000000000000);

  return v6;
}

void PredictedLocationsScheduleStore.recordNextRefresh(at:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = *(v2 + 16);
  sub_1C94D63E8(a1, &v11 - v5);
  v8 = sub_1C96A4A54();
  v9 = 0;
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) != 1)
  {
    v9 = sub_1C96A4984();
    (*(*(v8 - 8) + 8))(v6, v8);
  }

  sub_1C95D5DE4(1);
  v10 = sub_1C96A7004();

  [v7 setObject:v9 forKey:v10];
  swift_unknownObjectRelease();
}

Swift::Void __swiftcall PredictedLocationsScheduleStore.clearNextRefreshRecord()()
{
  v1 = *(v0 + 16);
  sub_1C95D5DE4(1);
  v2 = sub_1C96A7004();

  [v1 removeObjectForKey_];
}

void sub_1C95D6098(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  v5 = sub_1C96A4984();
  sub_1C95D5DE4(a2);
  v6 = sub_1C96A7004();

  [v4 setObject:v5 forKey:v6];
}

uint64_t sub_1C95D613C@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_1C95D5DE4(a1);
  v5 = sub_1C96A7004();

  v6 = [v4 valueForKey_];

  if (v6)
  {
    sub_1C96A79C4();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (*(&v13 + 1))
  {
    v7 = sub_1C96A4A54();
    v8 = swift_dynamicCast() ^ 1;
    v9 = a2;
    v10 = v7;
  }

  else
  {
    sub_1C95BA620(v14);
    v10 = sub_1C96A4A54();
    v9 = a2;
    v8 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v9, v8, 1, v10);
}

uint64_t PredictedLocationsScheduleStore.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 25, 7);
}

unint64_t sub_1C95D639C()
{
  result = qword_1EC3A69F0;
  if (!qword_1EC3A69F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A69F0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsScheduleStore.Feature(_BYTE *result, unsigned int a2, unsigned int a3)
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

WeatherCore::PredictedLocationsNotificationSubscription::Kind sub_1C95D6738@<X0>(Swift::Int *a1@<X0>, uint64_t a2@<X8>)
{
  result.rawValue = PredictedLocationsNotificationSubscription.Kind.init(rawValue:)(*a1).rawValue;
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

BOOL static PredictedLocationsNotificationSubscription.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 != 2)
  {
    return v3 != 2 && ((v3 ^ v2) & 1) == 0;
  }

  return v3 == 2;
}

uint64_t sub_1C95D67C0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x657265766573 && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1C96A7DE4();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1C95D684C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95D67C0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1C95D6878(uint64_t a1)
{
  v2 = sub_1C95D6A18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95D68B4(uint64_t a1)
{
  v2 = sub_1C95D6A18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictedLocationsNotificationSubscription.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A69F8);
  OUTLINED_FUNCTION_2_3();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95D6A18();
  sub_1C96A7F54();
  sub_1C96A7CF4();
  return (*(v4 + 8))(v7, v1);
}

unint64_t sub_1C95D6A18()
{
  result = qword_1EC3A6A00;
  if (!qword_1EC3A6A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A00);
  }

  return result;
}

uint64_t PredictedLocationsNotificationSubscription.hash(into:)()
{
  if (*v0 != 2)
  {
    sub_1C96A7F04();
  }

  return sub_1C96A7F04();
}

uint64_t PredictedLocationsNotificationSubscription.hashValue.getter()
{
  v1 = *v0;
  sub_1C96A7EE4();
  if (v1 != 2)
  {
    sub_1C96A7F04();
  }

  sub_1C96A7F04();
  return sub_1C96A7F24();
}

uint64_t PredictedLocationsNotificationSubscription.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A08);
  OUTLINED_FUNCTION_2_3();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95D6A18();
  sub_1C96A7F44();
  if (!v2)
  {
    v11 = sub_1C96A7C54();
    (*(v7 + 8))(v10, v3);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1C95D6C68()
{
  v1 = *v0;
  sub_1C96A7EE4();
  if (v1 != 2)
  {
    sub_1C96A7F04();
  }

  sub_1C96A7F04();
  return sub_1C96A7F24();
}

uint64_t PredictedLocationsNotificationSubscription.Kind.description.getter()
{
  v1 = 0x6E776F6E6B6E55;
  if (!*v0)
  {
    v1 = 1701736270;
  }

  if (*v0 == 1)
  {
    return 0x657265766553;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_1C95D6D70()
{
  result = qword_1EDB781B8;
  if (!qword_1EDB781B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB781B8);
  }

  return result;
}

unint64_t sub_1C95D6DC8()
{
  result = qword_1EC3A6A10;
  if (!qword_1EC3A6A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A10);
  }

  return result;
}

unint64_t sub_1C95D6E1C()
{
  result = qword_1EDB781C0;
  if (!qword_1EDB781C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB781C0);
  }

  return result;
}

unint64_t sub_1C95D6E74()
{
  result = qword_1EDB781B0;
  if (!qword_1EDB781B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB781B0);
  }

  return result;
}

unint64_t sub_1C95D6ECC()
{
  result = qword_1EC3A6A18;
  if (!qword_1EC3A6A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PredictedLocationsNotificationSubscription(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
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
        goto LABEL_15;
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

LABEL_15:
        v5 = (*a1 | (v4 << 8)) - 3;
        return (v5 + 1);
      }

      v4 = a1[1];
      if (a1[1])
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *a1;
  if (v6 >= 2)
  {
    v5 = ((v6 + 2147483646) & 0x7FFFFFFF) - 1;
  }

  else
  {
    v5 = -2;
  }

  if (v5 < 0)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsNotificationSubscription(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for PredictedLocationsNotificationSubscription.Kind(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PredictedLocationsNotificationSubscription.Kind(uint64_t result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for PredictedLocationsNotificationSubscription.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C95D718C()
{
  result = qword_1EC3A6A20;
  if (!qword_1EC3A6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A20);
  }

  return result;
}

unint64_t sub_1C95D71E4()
{
  result = qword_1EC3A6A28;
  if (!qword_1EC3A6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A28);
  }

  return result;
}

unint64_t sub_1C95D723C()
{
  result = qword_1EC3A6A30;
  if (!qword_1EC3A6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A30);
  }

  return result;
}

uint64_t PrecipitationNotificationConfiguration.now.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t PrecipitationNotificationConfiguration.backoffTimerExpiration.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PrecipitationNotificationConfiguration() + 20);
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for PrecipitationNotificationConfiguration()
{
  result = qword_1EC3A6A38;
  if (!qword_1EC3A6A38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrecipitationNotificationConfiguration.init(now:backoffTimerExpiration:changingConditionInterval:reschedulingInterval:backoffTimerInterval:locationDecimalPrecision:primaryChanceThreshold:secondaryChanceThreshold:intensityThreshold:chanceIntensityMultipleThreshold:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>, double a7@<D2>, double a8@<D3>, double a9@<D4>, double a10@<D5>, double a11@<D6>)
{
  v22 = sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v24 = *(v23 + 32);
  v24(a4, a1, v22);
  v25 = type metadata accessor for PrecipitationNotificationConfiguration();
  result = (v24)(a4 + v25[5], a2, v22);
  *(a4 + v25[6]) = a5;
  *(a4 + v25[7]) = a6;
  *(a4 + v25[8]) = a7;
  *(a4 + v25[9]) = a3;
  *(a4 + v25[10]) = a8;
  *(a4 + v25[11]) = a9;
  *(a4 + v25[12]) = a10;
  *(a4 + v25[13]) = a11;
  return result;
}

uint64_t PrecipitationNotificationConfiguration.reschedulingDate(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = sub_1C96A4A54();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  sub_1C94D63E8(a1, v6);
  if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
  {
    sub_1C9505BC8(v6);
    type metadata accessor for PrecipitationNotificationConfiguration();
    return sub_1C96A4974();
  }

  else
  {
    v15 = *(v8 + 32);
    v15(v13, v6, v7);
    type metadata accessor for PrecipitationNotificationConfiguration();
    sub_1C96A4974();
    sub_1C9508894();
    v16 = sub_1C96A6F74();
    v17 = *(v8 + 8);
    if (v16)
    {
      v17(v13, v7);
      v18 = a2;
      v19 = v10;
    }

    else
    {
      v17(v10, v7);
      v18 = a2;
      v19 = v13;
    }

    return (v15)(v18, v19, v7);
  }
}

uint64_t sub_1C95D7894()
{
  result = sub_1C96A4A54();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void **sub_1C95D7A0C(void *a1)
{
  [a1 activate];
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = (v2 + 16);
  aBlock[4] = sub_1C95D7FE8;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C963E29C;
  aBlock[3] = &block_descriptor_12;
  v4 = _Block_copy(aBlock);
  sub_1C96A3D04();

  v5 = [a1 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v4);
  sub_1C96A79C4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A48);
  if (swift_dynamicCast())
  {
    v3 = v22;
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_73();
      swift_once();
    }

    v6 = sub_1C96A6154();
    __swift_project_value_buffer(v6, qword_1EDB7AC48);
    v7 = sub_1C96A6134();
    v8 = sub_1C96A76A4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1C945E000, v7, v8, "XPC connection successfully received remote proxy object", v9, 2u);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }
  }

  else
  {
    if (qword_1EDB7AC40 != -1)
    {
      OUTLINED_FUNCTION_0_73();
      swift_once();
    }

    v10 = sub_1C96A6154();
    __swift_project_value_buffer(v10, qword_1EDB7AC48);
    v11 = sub_1C96A6134();
    v12 = sub_1C96A7684();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446210;
      if (qword_1EDB7C728 != -1)
      {
        swift_once();
      }

      v15 = sub_1C96A51A4();
      __swift_project_value_buffer(v15, qword_1EDB7C730);
      v16 = sub_1C96A5194();
      v18 = sub_1C9484164(v16, v17, aBlock);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1C945E000, v11, v12, "Remote object proxy interface mismatch for: %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
      OUTLINED_FUNCTION_8_0();
      MEMORY[0x1CCA8E3D0]();
    }

    swift_beginAccess();
    v19 = *v3;
    if (!*v3)
    {
      sub_1C95D8118();
      swift_allocError();
    }

    swift_willThrow();
    v20 = v19;
  }

  return v3;
}

id sub_1C95D7DBC(void *a1, uint64_t a2)
{
  if (qword_1EDB7AC40 != -1)
  {
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC48);
  v5 = a1;
  v6 = sub_1C96A6134();
  v7 = sub_1C96A7684();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136446466;
    if (qword_1EDB7C728 != -1)
    {
      swift_once();
    }

    v10 = sub_1C96A51A4();
    __swift_project_value_buffer(v10, qword_1EDB7C730);
    v11 = sub_1C96A5194();
    v13 = sub_1C9484164(v11, v12, v20);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2082;
    v14 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5380);
    v15 = sub_1C96A70A4();
    v17 = sub_1C9484164(v15, v16, v20);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1C945E000, v6, v7, "Failed to get synchronous remote object proxy for: %{public}s with error: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
    MEMORY[0x1CCA8E3D0](v8, -1, -1);
  }

  swift_beginAccess();
  v18 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

void sub_1C95D8030(uint64_t (*a1)(void), const char *a2)
{
  if (qword_1EDB7AC40 != -1)
  {
    OUTLINED_FUNCTION_0_73();
    swift_once();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC48);
  oslog = sub_1C96A6134();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C945E000, oslog, v5, a2, v6, 2u);
    OUTLINED_FUNCTION_8_0();
    MEMORY[0x1CCA8E3D0]();
  }
}

unint64_t sub_1C95D8118()
{
  result = qword_1EC3A6A50;
  if (!qword_1EC3A6A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A50);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PredictedLocationsServiceConnection.PredictedLocationsServiceConnectionError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C95D8220()
{
  result = qword_1EC3A6A58;
  if (!qword_1EC3A6A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A58);
  }

  return result;
}

uint64_t AppConfigurationSettingsProvider.__allocating_init(appConfigurationManager:)(__int128 *a1)
{
  v2 = swift_allocObject();
  sub_1C94670AC(a1, v2 + 16);
  return v2;
}

uint64_t AppConfigurationSettingsProvider.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 56, 7);
}

uint64_t AppConfiguration.lastRefreshed.getter()
{
  OUTLINED_FUNCTION_40_0();
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v0 = OUTLINED_FUNCTION_11();

  return v1(v0);
}

uint64_t AppConfiguration.lastRefreshed.setter(uint64_t a1)
{
  sub_1C96A4A54();
  OUTLINED_FUNCTION_6();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

void AppConfiguration.appStoreReview.getter()
{
  OUTLINED_FUNCTION_40_0();
  v2 = type metadata accessor for AppConfiguration();
  v3 = OUTLINED_FUNCTION_54_5(v1 + *(v2 + 44));
  *v0 = v4;
  *(v0 + 8) = v3;
  *(v0 + 16) = v5;
  *(v0 + 24) = v6;
}

uint64_t AppConfiguration.endpoints.getter()
{
  type metadata accessor for AppConfiguration();

  return sub_1C96A53C4();
}

uint64_t AppConfiguration.features.getter()
{
  OUTLINED_FUNCTION_40_0();
  result = type metadata accessor for AppConfiguration();
  v3 = (v1 + *(result + 52));
  v4 = *v3;
  LOBYTE(v3) = v3[1];
  *v0 = v4;
  v0[1] = v3;
  return result;
}

uint64_t AppConfiguration.geocode.getter()
{
  OUTLINED_FUNCTION_40_0();
  v2 = (v1 + *(type metadata accessor for AppConfiguration() + 56));
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  *v0 = *v2;
  v0[1] = v3;
  v0[2] = v5;
  v0[3] = v4;
  sub_1C96A53C4();

  return sub_1C96A53C4();
}

uint64_t AppConfiguration.historicalFacts.getter()
{
  OUTLINED_FUNCTION_40_0();
  *v0 = *(v1 + *(type metadata accessor for AppConfiguration() + 60));

  return sub_1C96A53C4();
}

uint64_t AppConfiguration.locationsConfiguration.getter()
{
  OUTLINED_FUNCTION_40_0();
  v2 = type metadata accessor for AppConfiguration();
  return sub_1C948CBE4(v1 + *(v2 + 64), v0);
}

uint64_t AppConfiguration.namedNetworkConfigurations.getter()
{
  type metadata accessor for AppConfiguration();

  return sub_1C96A53C4();
}

uint64_t AppConfiguration.network.getter()
{
  OUTLINED_FUNCTION_40_0();
  v2 = (v1 + *(type metadata accessor for AppConfiguration() + 76));
  v3 = v2[1];
  v8[0] = *v2;
  v8[1] = v3;
  v5 = v2[3];
  v9 = v2[2];
  v4 = v9;
  v10 = v5;
  *v0 = v8[0];
  v0[1] = v3;
  v0[2] = v4;
  v0[3] = v5;
  return sub_1C94B694C(v8, &v7);
}

uint64_t AppConfiguration.notifications.getter()
{
  OUTLINED_FUNCTION_40_0();
  v2 = *(type metadata accessor for AppConfiguration() + 84);
  memcpy(__dst, (v1 + v2), sizeof(__dst));
  memcpy(v0, (v1 + v2), 0x70uLL);
  return sub_1C94BDC2C(__dst, &v4);
}

void *AppConfiguration.predictedLocations.getter()
{
  OUTLINED_FUNCTION_40_0();
  v2 = (v1 + *(type metadata accessor for AppConfiguration() + 92));

  return memcpy(v0, v2, 0x88uLL);
}

double AppConfiguration.widgetPrivacy.getter()
{
  OUTLINED_FUNCTION_40_0();
  v2 = v1 + *(type metadata accessor for AppConfiguration() + 96);
  result = *(v2 + 32);
  v4 = *(v2 + 16);
  *v0 = *v2;
  *(v0 + 16) = v4;
  *(v0 + 32) = result;
  return result;
}

uint64_t AppConfiguration.reportWeather.getter()
{
  OUTLINED_FUNCTION_40_0();
  v2 = (v1 + *(type metadata accessor for AppConfiguration() + 104));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;

  return sub_1C96A53C4();
}

uint64_t AppConfiguration.weatherDataService.getter()
{
  OUTLINED_FUNCTION_40_0();
  v2 = (v1 + *(type metadata accessor for AppConfiguration() + 120));
  v3 = v2[1];
  *v0 = *v2;
  v0[1] = v3;

  return sub_1C96A53C4();
}

__n128 AppConfiguration.weatherMenu.getter()
{
  OUTLINED_FUNCTION_40_0();
  v1 = type metadata accessor for AppConfiguration();
  OUTLINED_FUNCTION_42_7(*(v1 + 124));
  result = *(v2 + 32);
  v4 = *(v2 + 48);
  *(v0 + 32) = result;
  *(v0 + 48) = v4;
  return result;
}

uint64_t AppConfiguration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A70);
  OUTLINED_FUNCTION_1();
  v7 = v6;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v56 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C946DAF8();
  sub_1C96A7F54();
  LOBYTE(v83[0]) = 0;
  sub_1C96A4A54();
  OUTLINED_FUNCTION_26_9();
  sub_1C946E298(v11);
  OUTLINED_FUNCTION_9_31();
  if (!v2)
  {
    v12 = type metadata accessor for AppConfiguration();
    OUTLINED_FUNCTION_7_31(1);
    LOBYTE(v83[0]) = 2;
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D54();
    OUTLINED_FUNCTION_7_31(3);
    OUTLINED_FUNCTION_7_31(4);
    OUTLINED_FUNCTION_7_31(5);
    OUTLINED_FUNCTION_7_31(6);
    v13 = OUTLINED_FUNCTION_54_5(v3 + v12[11]);
    LOBYTE(v83[0]) = v14;
    *&v83[1] = v13;
    v83[2] = v15;
    v83[3] = v16;
    v82[0] = 7;
    sub_1C95D987C();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v83[0] = *(v3 + v12[12]);
    v82[0] = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A78);
    sub_1C95D98D0();
    OUTLINED_FUNCTION_9_31();
    v17 = (v3 + v12[13]);
    v18 = *v17;
    LOBYTE(v17) = v17[1];
    LOBYTE(v83[0]) = v18;
    BYTE1(v83[0]) = v17;
    v82[0] = 9;
    sub_1C95D9984();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v19 = (v3 + v12[14]);
    v20 = *v19;
    v21 = v19[1];
    v22 = v19[2];
    v85 = v19[3];
    v83[0] = v20;
    v83[1] = v21;
    v83[2] = v22;
    v83[3] = v85;
    v82[0] = 10;
    sub_1C95D99D8();
    OUTLINED_FUNCTION_48_5();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();

    v83[0] = *(v3 + v12[15]);
    v82[0] = 11;
    sub_1C95D9A2C();
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();

    v85 = v12[16];
    v84 = 12;
    type metadata accessor for LocationsConfiguration();
    OUTLINED_FUNCTION_18_23();
    sub_1C946E298(v24);
    OUTLINED_FUNCTION_9_31();
    v25 = v12[17];
    memcpy(v83, (v3 + v25), sizeof(v83));
    memcpy(v82, (v3 + v25), sizeof(v82));
    v81[167] = 13;
    sub_1C94B7A74(v83, v81);
    sub_1C95D9A80();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    memcpy(v81, v82, 0xA0uLL);
    sub_1C94BD530(v81);
    v80 = *(v3 + v12[18]);
    v79 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A68);
    sub_1C9478FAC(&unk_1EDB7CEC0);
    OUTLINED_FUNCTION_9_31();
    v78[0] = OUTLINED_FUNCTION_49_5(v12[19]);
    v78[1] = v26;
    v28 = v27[3];
    v30 = *v27;
    v29 = v27[1];
    v78[2] = v27[2];
    v78[3] = v28;
    v74 = v30;
    v75 = v29;
    v31 = v27[3];
    v76 = v27[2];
    v77 = v31;
    v73 = 15;
    sub_1C94B694C(v78, v68);
    sub_1C94F0754();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v72[0] = v74;
    v72[1] = v75;
    v72[2] = v76;
    v72[3] = v77;
    sub_1C94BDA7C(v72);
    v32 = (v3 + v12[20]);
    v33 = *v32;
    v34 = v32[1];
    LOBYTE(v32) = v32[2];
    v71[117] = v33;
    v71[118] = v34;
    v71[119] = v32;
    v71[116] = 16;
    sub_1C95D9B28();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v35 = v12[21];
    memcpy(v71, (v3 + v35), 0x70uLL);
    memcpy(v70, (v3 + v35), sizeof(v70));
    v69[119] = 17;
    sub_1C94BDC2C(v71, v68);
    sub_1C95D9B7C();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    memcpy(v69, v70, 0x70uLL);
    sub_1C94BDE74(v69);
    memcpy(v68, (v3 + v12[23]), 0x88uLL);
    v67 = 18;
    sub_1C95D9BD0();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v63[0] = OUTLINED_FUNCTION_49_5(v12[22]);
    v63[1] = v36;
    v63[2] = *(v37 + 32);
    *(&v63[2] + 10) = *(v37 + 42);
    v58.n128_u8[0] = 19;
    sub_1C95D9C24();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v38 = v3 + v12[24];
    v39 = *(v38 + 32);
    v40 = *(v38 + 16);
    v63[0] = *v38;
    v63[1] = v40;
    *&v63[2] = v39;
    v58.n128_u8[0] = 28;
    sub_1C95D9C78();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v41 = (v3 + v12[25]);
    v42 = *v41;
    v43 = v41[1];
    v44 = v41[2];
    v45 = v41[3];
    LOBYTE(v41) = *(v41 + 32);
    *&v63[0] = v42;
    *(&v63[0] + 1) = v43;
    *&v63[1] = v44;
    *(&v63[1] + 1) = v45;
    LOBYTE(v63[2]) = v41;
    v58.n128_u8[0] = 20;
    sub_1C95D9CCC();
    OUTLINED_FUNCTION_48_5();
    sub_1C96A53C4();
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();

    v46 = (v3 + v12[26]);
    v47 = v46[1];
    *&v63[0] = *v46;
    *(&v63[0] + 1) = v47;
    v58.n128_u8[0] = 21;
    sub_1C95D9D20();
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();

    *&v63[0] = *(v3 + v12[27]);
    v58.n128_u8[0] = 22;
    sub_1C95D9D74();
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_11_27();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();

    LOBYTE(v63[0]) = 23;
    sub_1C948720C();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();
    v63[0] = OUTLINED_FUNCTION_49_5(v12[29]);
    v63[1] = v48;
    v58.n128_u8[0] = 24;
    sub_1C95D9DC8();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v49 = (v3 + v12[30]);
    v50 = v49[1];
    v65 = *v49;
    v66 = v50;
    v64 = 25;
    sub_1C95D9E1C();
    OUTLINED_FUNCTION_48_5();
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D74();

    memcpy(v63, (v3 + v12[32]), sizeof(v63));
    v62 = 27;
    sub_1C95D9E70();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v58 = OUTLINED_FUNCTION_49_5(v12[31]);
    v59 = v51;
    v53 = *(v52 + 48);
    v60 = *(v52 + 32);
    v61 = v53;
    v57 = 26;
    sub_1C95D9EC4();
    OUTLINED_FUNCTION_4_44();
    sub_1C96A7D74();
    v58.n128_u64[0] = *(v3 + v12[33]);
    v57 = 29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A80);
    sub_1C95D9F18();
    OUTLINED_FUNCTION_9_31();
    v58.n128_u8[0] = 30;
    OUTLINED_FUNCTION_10_30();
    sub_1C96A7D24();
    v58.n128_u64[0] = *(v3 + v12[35]);
    v57 = 31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A48);
    OUTLINED_FUNCTION_21_21();
    sub_1C95DA0FC(v54);
    OUTLINED_FUNCTION_9_31();
    v58.n128_u64[0] = *(v3 + v12[36]);
    v57 = 32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4A50);
    OUTLINED_FUNCTION_21_21();
    sub_1C95D9FF0(v55);
    OUTLINED_FUNCTION_9_31();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C95D9484()
{
  v0 = sub_1C96A7E04();

  if (v0 >= 0x21)
  {
    return 33;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1C95D9508@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95D9484();
  *a1 = result;
  return result;
}

uint64_t sub_1C95D9538@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C94755F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1C95D9564@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95D94D8();
  *a1 = result;
  return result;
}

uint64_t sub_1C95D958C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95D94DC();
  *a1 = result;
  return result;
}

uint64_t sub_1C95D95B4(uint64_t a1)
{
  v2 = sub_1C946DAF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95D95F0(uint64_t a1)
{
  v2 = sub_1C946DAF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C95D96C0(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6A98);
  OUTLINED_FUNCTION_7(v3);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = sub_1C96A7B74();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  sub_1C96A7B64();
  result = OUTLINED_FUNCTION_23_1(v6, 1, v7);
  if (!v10)
  {
    return (*(*(v7 - 8) + 32))(v8, v6, v7);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C95D97E4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C96A7B74();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

unint64_t sub_1C95D987C()
{
  result = qword_1EDB7D908;
  if (!qword_1EDB7D908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D908);
  }

  return result;
}

unint64_t sub_1C95D98D0()
{
  result = qword_1EDB7CEE0;
  if (!qword_1EDB7CEE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6A78);
    sub_1C946E298(&unk_1EDB7E3F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CEE0);
  }

  return result;
}

unint64_t sub_1C95D9984()
{
  result = qword_1EDB7E330;
  if (!qword_1EDB7E330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E330);
  }

  return result;
}

unint64_t sub_1C95D99D8()
{
  result = qword_1EDB7E870;
  if (!qword_1EDB7E870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E870);
  }

  return result;
}

unint64_t sub_1C95D9A2C()
{
  result = qword_1EDB7D888;
  if (!qword_1EDB7D888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D888);
  }

  return result;
}

unint64_t sub_1C95D9A80()
{
  result = qword_1EDB7EE30;
  if (!qword_1EDB7EE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EE30);
  }

  return result;
}

unint64_t sub_1C95D9AD4()
{
  result = qword_1EDB7DB70;
  if (!qword_1EDB7DB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7DB70);
  }

  return result;
}

unint64_t sub_1C95D9B28()
{
  result = qword_1EDB7EDD8;
  if (!qword_1EDB7EDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7EDD8);
  }

  return result;
}

unint64_t sub_1C95D9B7C()
{
  result = qword_1EDB7D980;
  if (!qword_1EDB7D980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D980);
  }

  return result;
}

unint64_t sub_1C95D9BD0()
{
  result = qword_1EDB7D5C8;
  if (!qword_1EDB7D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5C8);
  }

  return result;
}

unint64_t sub_1C95D9C24()
{
  result = qword_1EDB7E820;
  if (!qword_1EDB7E820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E820);
  }

  return result;
}

unint64_t sub_1C95D9C78()
{
  result = qword_1EDB7D958;
  if (!qword_1EDB7D958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D958);
  }

  return result;
}

unint64_t sub_1C95D9CCC()
{
  result = qword_1EDB7D4A8;
  if (!qword_1EDB7D4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D4A8);
  }

  return result;
}

unint64_t sub_1C95D9D20()
{
  result = qword_1EDB7FC60;
  if (!qword_1EDB7FC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC60);
  }

  return result;
}

unint64_t sub_1C95D9D74()
{
  result = qword_1EDB7D5F0;
  if (!qword_1EDB7D5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7D5F0);
  }

  return result;
}

unint64_t sub_1C95D9DC8()
{
  result = qword_1EDB7FC38;
  if (!qword_1EDB7FC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC38);
  }

  return result;
}

unint64_t sub_1C95D9E1C()
{
  result = qword_1EDB7FBD0;
  if (!qword_1EDB7FBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FBD0);
  }

  return result;
}

unint64_t sub_1C95D9E70()
{
  result = qword_1EDB7E998;
  if (!qword_1EDB7E998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E998);
  }

  return result;
}

unint64_t sub_1C95D9EC4()
{
  result = qword_1EDB7FC10;
  if (!qword_1EDB7FC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7FC10);
  }

  return result;
}

unint64_t sub_1C95D9F18()
{
  result = qword_1EDB7CED0;
  if (!qword_1EDB7CED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A6A80);
    sub_1C95D9F9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7CED0);
  }

  return result;
}

unint64_t sub_1C95D9F9C()
{
  result = qword_1EDB7E308;
  if (!qword_1EDB7E308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7E308);
  }

  return result;
}

unint64_t sub_1C95D9FF0(uint64_t a1)
{
  result = OUTLINED_FUNCTION_55_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A4A50);
    result = OUTLINED_FUNCTION_67_4();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1C95DA048(uint64_t a1)
{
  v2 = type metadata accessor for EndpointConfiguration();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1C95DA0A8()
{
  result = qword_1EC3A6A90;
  if (!qword_1EC3A6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6A90);
  }

  return result;
}

unint64_t sub_1C95DA0FC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_55_3(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC3A4A48);
    result = OUTLINED_FUNCTION_67_4();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_39_4()
{

  return sub_1C96A7C74();
}

uint64_t OUTLINED_FUNCTION_68_1@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  *a1 = v11;
  a1[1] = v12;
  a1[2] = a11;
  a1[3] = v13;
}

uint64_t sub_1C95DA1D8()
{
  v0 = sub_1C96A45A4();
  __swift_allocate_value_buffer(v0, qword_1EDB94A40);
  v1 = __swift_project_value_buffer(v0, qword_1EDB94A40);
  *v1 = type metadata accessor for BundleLookup();
  v2 = *MEMORY[0x1E6968E00];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_1C95DA274@<X0>(double a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v54 = a2;
  v55 = a3;
  v53 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5430);
  OUTLINED_FUNCTION_7(v9);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v52 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6340);
  OUTLINED_FUNCTION_7(v13);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AB8);
  v21 = OUTLINED_FUNCTION_7(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v24 = OUTLINED_FUNCTION_7(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  *a4 = sub_1C96A6344();
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a4[1] = sub_1C96A6344();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v40);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v44, v45, v46, v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a4[2] = sub_1C96A6344();
  v56 = v53;
  v57 = v54;
  sub_1C96A3D04();
  sub_1C96A6364();

  v56 = a5;
  v57 = a6;
  type metadata accessor for CLLocationCoordinate2D(0);
  sub_1C95DBBC4(&unk_1EDB7CD80);
  sub_1C95DBBC4(&qword_1EDB7AB18);
  sub_1C96A6284();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6348);
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v47);
  sub_1C96A6364();

  v48 = sub_1C96A4A54();
  v49 = *(v48 - 8);
  v50 = v55;
  (*(v49 + 16))(v12, v55, v48);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v48);
  sub_1C96A6364();

  return (*(v49 + 8))(v50, v48);
}

uint64_t static CurrentLocationRawEntity.version.getter()
{
  swift_beginAccess();
  v0 = *a001_2;
  sub_1C96A53C4();
  return v0;
}

uint64_t static CurrentLocationRawEntity.version.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *a001_2 = a1;
  qword_1EC3A6AB0 = a2;
}

uint64_t sub_1C95DA864@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EC3A6AB0;
  *a1 = *a001_2;
  a1[1] = v2;
  return sub_1C96A53C4();
}

uint64_t sub_1C95DA8B4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *a001_2 = v2;
  qword_1EC3A6AB0 = v1;
  sub_1C96A53C4();
}

uint64_t CurrentLocationRawEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v3 = OUTLINED_FUNCTION_7(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AB8);
  v6 = OUTLINED_FUNCTION_7(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  *a1 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC0);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  a1[1] = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  result = sub_1C96A6344();
  a1[2] = result;
  return result;
}

uint64_t sub_1C95DABC4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x616E6964726F6F63 && a2 == 0xEA00000000006574;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1702125924 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C96A7DE4();

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

uint64_t sub_1C95DACD4(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x616E6964726F6F63;
  }

  return 1702125924;
}

uint64_t sub_1C95DAD24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95DABC4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95DAD4C(uint64_t a1)
{
  v2 = sub_1C95DB004();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95DAD88(uint64_t a1)
{
  v2 = sub_1C95DB004();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CurrentLocationRawEntity.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AD0);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v11 = *v1;
  v10 = v1[1];
  v21 = v1[2];
  v22 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95DB004();
  sub_1C96A3D04();
  sub_1C96A7F54();
  v24 = v11;
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_4_0();
  sub_1C9469CB4(v12, v13);
  OUTLINED_FUNCTION_8_5();
  sub_1C96A7D74();

  if (!v2)
  {
    v14 = v21;
    v24 = v22;
    v23 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC8);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v15, v16);
    OUTLINED_FUNCTION_8_5();
    sub_1C96A7D74();
    v24 = v14;
    v23 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
    OUTLINED_FUNCTION_4_0();
    sub_1C9469CB4(v17, v18);
    OUTLINED_FUNCTION_8_5();
    sub_1C96A7D74();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1C95DB004()
{
  result = qword_1EC3A6AD8;
  if (!qword_1EC3A6AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6AD8);
  }

  return result;
}

uint64_t CurrentLocationRawEntity.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AE8);
  OUTLINED_FUNCTION_1();
  v51 = v4;
  v52 = v3;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v9 = OUTLINED_FUNCTION_7(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AB8);
  v12 = OUTLINED_FUNCTION_7(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10_1();
  MEMORY[0x1EEE9AC00](v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v17);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v17);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_7_3();
  v56 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC0);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6AC8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  v54 = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  OUTLINED_FUNCTION_0();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_0();
  sub_1C96A6344();
  v40 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v40);
  sub_1C95DB004();
  v41 = v53;
  sub_1C96A7F44();
  if (!v41)
  {
    v42 = v51;
    v57 = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    OUTLINED_FUNCTION_11_9();
    v43 = v7;
    sub_1C96A7CB4();

    v45 = v58;
    v57 = 1;
    OUTLINED_FUNCTION_5(&qword_1EC3A6AF0, &qword_1EC3A6AC8);
    OUTLINED_FUNCTION_11_9();
    sub_1C96A7CB4();

    v46 = v58;
    v57 = 2;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    OUTLINED_FUNCTION_11_9();
    v47 = v52;
    sub_1C96A7CB4();
    (*(v42 + 8))(v43, v47);

    v48 = v58;
    v49 = v50;
    *v50 = v45;
    v49[1] = v46;
    v49[2] = v48;
    sub_1C96A3D04();
    sub_1C96A3D04();
    sub_1C96A3D04();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
}

unint64_t sub_1C95DB570()
{
  result = qword_1EDB7BB90;
  if (!qword_1EDB7BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BB90);
  }

  return result;
}

unint64_t sub_1C95DB5C8()
{
  result = qword_1EDB7BBA8;
  if (!qword_1EDB7BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BBA8);
  }

  return result;
}

unint64_t sub_1C95DB620()
{
  result = qword_1EDB7BB80;
  if (!qword_1EDB7BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BB80);
  }

  return result;
}

unint64_t sub_1C95DB674()
{
  result = qword_1EDB7BB88;
  if (!qword_1EDB7BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BB88);
  }

  return result;
}

unint64_t sub_1C95DB6CC()
{
  result = qword_1EDB7BBA0;
  if (!qword_1EDB7BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BBA0);
  }

  return result;
}

unint64_t sub_1C95DB748()
{
  result = qword_1EDB7BB98;
  if (!qword_1EDB7BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7BB98);
  }

  return result;
}

uint64_t sub_1C95DB79C(uint64_t a1)
{
  v2 = sub_1C95A6260();

  return MEMORY[0x1EEE438E0](a1, v2);
}

uint64_t sub_1C95DB7E8(uint64_t a1)
{
  v2 = sub_1C95A6260();

  return MEMORY[0x1EEE438F0](a1, v2);
}

uint64_t sub_1C95DB834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95A6260();

  return MEMORY[0x1EEE438E8](a1, a2, a3, v6);
}

uint64_t sub_1C95DB8CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C95A6260();

  return MEMORY[0x1EEE43908](a1, a2, v4);
}

uint64_t sub_1C95DB918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C95A6260();

  return MEMORY[0x1EEE43900](a1, a2, a3, v6);
}

uint64_t sub_1C95DB96C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C95A6260();

  return MEMORY[0x1EEE438F8](a1, a2, a3, a4, v8);
}

_BYTE *storeEnumTagSinglePayload for CurrentLocationRawEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C95DBAC0()
{
  result = qword_1EC3A6AF8;
  if (!qword_1EC3A6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6AF8);
  }

  return result;
}

unint64_t sub_1C95DBB18()
{
  result = qword_1EC3A6B00;
  if (!qword_1EC3A6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B00);
  }

  return result;
}

unint64_t sub_1C95DBB70()
{
  result = qword_1EC3A6B08;
  if (!qword_1EC3A6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B08);
  }

  return result;
}

uint64_t sub_1C95DBBC4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CLLocationCoordinate2D(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C95DBC10()
{
  v0 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C96A45A4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1C96A45C4();
  __swift_allocate_value_buffer(v6, qword_1EC3C3D60);
  __swift_project_value_buffer(v6, qword_1EC3C3D60);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v7 = __swift_project_value_buffer(v1, qword_1EDB94A40);
  (*(v2 + 16))(v4, v7, v1);
  sub_1C96A4BC4();
  return sub_1C96A45D4();
}

uint64_t sub_1C95DBE28()
{
  v0 = sub_1C96A3B84();
  __swift_allocate_value_buffer(v0, qword_1EC3C3D78);
  __swift_project_value_buffer(v0, qword_1EC3C3D78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5C00);
  *(swift_allocObject() + 16) = xmmword_1C96AA1C0;
  sub_1C96A3B74();
  sub_1C95E0D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C50);
  sub_1C9469CB4(&qword_1EC3A6C58, &qword_1EC3A6C50);
  return sub_1C96A79E4();
}

uint64_t sub_1C95DBF80()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BF0);
  v2 = sub_1C95E0D48();
  v3 = sub_1C9469CB4(&qword_1EC3A6BF8, &qword_1EC3A6BF0);

  return MEMORY[0x1EEDB4008](KeyPath, sub_1C95DC070, 0, v1, v2, v3);
}

uint64_t sub_1C95DC070@<X0>(uint64_t a1@<X8>)
{
  v28 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C00);
  v2 = *(v1 - 8);
  v26 = v1;
  v27 = v2;
  MEMORY[0x1EEE9AC00](v1);
  v24 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v19 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C08);
  v29 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v23 = &v19 - v10;
  v30 = 5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C10);
  v21 = sub_1C95E0D48();
  sub_1C95E090C();
  sub_1C9469CB4(&qword_1EC3A6C18, &qword_1EC3A6C10);
  v22 = v11;
  sub_1C96A4094();
  sub_1C9469CB4(&qword_1EC3A6C20, &qword_1EC3A6C08);
  v12 = v6;
  sub_1C96A3FF4();
  v20 = *(v29 + 8);
  v29 += 8;
  v20(v8, v6);
  v13 = v24;
  sub_1C96A40D4();
  sub_1C9469CB4(&qword_1EC3A6C28, &qword_1EC3A6C00);
  v14 = v25;
  v15 = v26;
  sub_1C96A3FF4();
  v16 = *(v27 + 8);
  v16(v13, v15);
  v17 = v23;
  sub_1C96A3FE4();
  v16(v14, v15);
  return (v20)(v17, v12);
}

uint64_t sub_1C95DC454@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C38);
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  sub_1C95E0D48();
  sub_1C96A3F44();
  sub_1C96A3F34();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C40);
  sub_1C96A3F24();

  sub_1C96A3F34();
  sub_1C96A3F54();
  sub_1C96A3F14();
  v10 = sub_1C9469CB4(&qword_1EC3A6C18, &qword_1EC3A6C10);
  MEMORY[0x1CCA89910](v6, &unk_1F49064C0, v3, v10);
  v11 = *(v4 + 8);
  v11(v6, v3);
  MEMORY[0x1CCA89900](v9, &unk_1F49064C0, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_1C95DC73C@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C38);
  MEMORY[0x1EEE9AC00](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C10);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v13 - v8;
  sub_1C95E0D48();
  sub_1C96A3F44();
  sub_1C96A3F34();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C40);
  sub_1C96A3F24();

  sub_1C96A3F34();
  sub_1C96A3F54();
  sub_1C96A3F14();
  v10 = sub_1C9469CB4(&qword_1EC3A6C18, &qword_1EC3A6C10);
  MEMORY[0x1CCA89910](v6, &unk_1F49064C0, v3, v10);
  v11 = *(v4 + 8);
  v11(v6, v3);
  MEMORY[0x1CCA89900](v9, &unk_1F49064C0, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_1C95DCA80()
{
  v35 = sub_1C96A3F64();
  OUTLINED_FUNCTION_1();
  v33 = v0;
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  v34 = v3 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5B40);
  v5 = OUTLINED_FUNCTION_7(v4);
  MEMORY[0x1EEE9AC00](v5);
  v32 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  v13 = sub_1C96A4C14();
  v14 = OUTLINED_FUNCTION_7(v13);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v15 = sub_1C96A45A4();
  OUTLINED_FUNCTION_1();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  v22 = sub_1C96A6FF4();
  v23 = OUTLINED_FUNCTION_7(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_14();
  v24 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v30[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE8);
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v25 = __swift_project_value_buffer(v15, qword_1EDB94A40);
  v26 = *(v17 + 16);
  v26(v21, v25, v15);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_7_32();
  sub_1C96A45D4();
  sub_1C96A6FA4();
  v26(v21, v25, v15);
  sub_1C96A4BC4();
  OUTLINED_FUNCTION_7_32();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v24);
  v36 = 0;
  v27 = sub_1C96A3B94();
  __swift_storeEnumTagSinglePayload(v31, 1, 1, v27);
  __swift_storeEnumTagSinglePayload(v32, 1, 1, v27);
  (*(v33 + 104))(v34, *MEMORY[0x1E695A500], v35);
  sub_1C95E0A0C();
  v28 = sub_1C96A3C94();
  sub_1C954DDE0();
  return v28;
}

uint64_t sub_1C95DCED0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C95DCEF0, 0, 0);
}

uint64_t sub_1C95DCEF0()
{
  v8 = v0;
  sub_1C96A3C64();
  switch(*(v0 + 32))
  {
    case 1:
      if (qword_1EDB80318 != -1)
      {
        OUTLINED_FUNCTION_16();
      }

      v7 = 2;
      UnitManager.setPreferredDistanceUnit(_:)(&v7);
      break;
    case 2:
      if (qword_1EDB80318 != -1)
      {
        OUTLINED_FUNCTION_16();
      }

      v6 = 2;
      UnitManager.setPreferredPrecipitationUnit(_:)(&v6);
      break;
    case 3:
      if (qword_1EDB80318 != -1)
      {
        OUTLINED_FUNCTION_16();
      }

      v5 = 5;
      UnitManager.setPreferredPressureUnit(_:)(&v5);
      break;
    case 4:
      if (qword_1EDB80318 != -1)
      {
        OUTLINED_FUNCTION_16();
      }

      v3 = 5;
      UnitManager.setPreferredWindSpeedUnit(_:)(&v3);
      break;
    case 5:
      if (qword_1EDB80318 != -1)
      {
        OUTLINED_FUNCTION_16();
      }

      UnitManager.resetPreferredUnits()();
      break;
    default:
      if (qword_1EDB80318 != -1)
      {
        OUTLINED_FUNCTION_16();
      }

      v4 = 2;
      UnitManager.setPreferredTemperatureUnit(_:)(&v4);
      break;
  }

  sub_1C9488854();
  static NSUserDefaults.postSettingsUpdatedNotification()();
  static WidgetUtilities.reloadWidget(reason:)(0xD000000000000020, 0x80000001C96D39C0);
  sub_1C96A3BB4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C95DD15C@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v7 = a2(0);
  v8 = __swift_project_value_buffer(v7, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_1C95DD204(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1C94B9278;

  return sub_1C95DCED0(a1, v4);
}

uint64_t sub_1C95DD2A4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C95DCA80();
  *a1 = result;
  return result;
}

uint64_t sub_1C95DD2CC(uint64_t a1)
{
  v2 = sub_1C95E0D48();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1C95DD308()
{
  sub_1C96A3E14();
  OUTLINED_FUNCTION_1();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14();
  sub_1C95DCA80();
  sub_1C95E0D48();
  OUTLINED_FUNCTION_3_39();
  v18 = sub_1C96A3E04();
  v3 = *(v1 + 8);
  v4 = OUTLINED_FUNCTION_117();
  v3(v4);
  sub_1C95DCA80();
  OUTLINED_FUNCTION_3_39();
  v5 = sub_1C96A3E04();
  v6 = OUTLINED_FUNCTION_117();
  v3(v6);
  sub_1C95DCA80();
  OUTLINED_FUNCTION_3_39();
  v7 = sub_1C96A3E04();
  v8 = OUTLINED_FUNCTION_117();
  v3(v8);
  sub_1C95DCA80();
  OUTLINED_FUNCTION_3_39();
  v9 = sub_1C96A3E04();
  v10 = OUTLINED_FUNCTION_117();
  v3(v10);
  sub_1C95DCA80();
  OUTLINED_FUNCTION_3_39();
  v11 = sub_1C96A3E04();
  v12 = OUTLINED_FUNCTION_117();
  v3(v12);
  sub_1C95DCA80();
  OUTLINED_FUNCTION_3_39();
  v13 = sub_1C96A3E04();
  v14 = OUTLINED_FUNCTION_117();
  v3(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BC0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C96BA7C0;
  *(v15 + 32) = v18;
  *(v15 + 40) = v5;
  *(v15 + 48) = v7;
  *(v15 + 56) = v9;
  *(v15 + 64) = v11;
  *(v15 + 72) = v13;
  v16 = sub_1C96A3DF4();

  return v16;
}

uint64_t sub_1C95DD5F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD0);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = sub_1C96A3D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD8);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C95E0D48();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v23 = *MEMORY[0x1E695A1E0];
  v25 = *(v5 + 104);
  v25(v7);
  sub_1C96A3DA4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v13 = sub_1C96A3D34();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_1C96A3D24();

  return v16;
}

uint64_t sub_1C95DDA8C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C95DCA24();
  *a1 = v3;
  return result;
}

uint64_t sub_1C95DDB08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD0);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = sub_1C96A3D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD8);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C95E0D48();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v23 = *MEMORY[0x1E695A1E0];
  v25 = *(v5 + 104);
  v25(v7);
  sub_1C96A3DA4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v13 = sub_1C96A3D34();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_1C96A3D24();

  return v16;
}

uint64_t sub_1C95DDFB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD0);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = sub_1C96A3D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD8);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C95E0D48();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v23 = *MEMORY[0x1E695A1E0];
  v25 = *(v5 + 104);
  v25(v7);
  sub_1C96A3DA4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v13 = sub_1C96A3D34();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_1C96A3D24();

  return v16;
}

uint64_t sub_1C95DE46C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD0);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = sub_1C96A3D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD8);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C95E0D48();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v23 = *MEMORY[0x1E695A1E0];
  v25 = *(v5 + 104);
  v25(v7);
  sub_1C96A3DA4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v13 = sub_1C96A3D34();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_1C96A3D24();

  return v16;
}

uint64_t sub_1C95DE918()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD0);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = sub_1C96A3D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD8);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C95E0D48();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v23 = *MEMORY[0x1E695A1E0];
  v25 = *(v5 + 104);
  v25(v7);
  sub_1C96A3DA4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v13 = sub_1C96A3D34();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_1C96A3D24();

  return v16;
}

uint64_t sub_1C95DEDCC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD0);
  v1 = *(v0 - 8);
  v26 = v0;
  v27 = v1;
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v18 - v2;
  v4 = sub_1C96A3D14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BD8);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C95E0D48();
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  v23 = *MEMORY[0x1E695A1E0];
  v25 = *(v5 + 104);
  v25(v7);
  sub_1C96A3DA4();
  v9 = *(v5 + 8);
  v20 = v5 + 8;
  v24 = v9;
  v9(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v22 = sub_1C96A3D34();
  v10 = v26;
  v19 = *(v27 + 8);
  v27 += 8;
  v19(v3, v26);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v21 = sub_1C96A3D34();
  v11 = v10;
  v12 = v19;
  v19(v3, v11);
  sub_1C96A3DD4();
  sub_1C96A3DC4();
  (v25)(v7, v23, v4);
  sub_1C96A3DA4();
  v24(v7, v4);
  sub_1C96A3DC4();
  sub_1C96A3DE4();
  v13 = sub_1C96A3D34();
  v12(v3, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6BE0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C96AB910;
  v15 = v21;
  *(v14 + 32) = v22;
  *(v14 + 40) = v15;
  *(v14 + 48) = v13;
  v16 = sub_1C96A3D24();

  return v16;
}

uint64_t sub_1C95DF260()
{
  v0 = sub_1C96A3D94();
  OUTLINED_FUNCTION_1();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  swift_getKeyPath();
  sub_1C95E090C();
  sub_1C96A3D04();

  sub_1C95E0D48();
  sub_1C96A3D84();
  v7 = sub_1C96A3D74();
  (*(v2 + 8))(v6, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BD0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C96AA1C0;
  *(v8 + 32) = v7;
  v9 = sub_1C96A3D64();

  return v9;
}

uint64_t sub_1C95DF3C0()
{
  sub_1C96A3CF4();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14();
  sub_1C95E0D48();
  sub_1C96A3CE4();
  v1 = sub_1C96A3CD4();
  v2 = OUTLINED_FUNCTION_117();
  v3(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C96AA1C0;
  *(v4 + 32) = v1;
  v5 = sub_1C96A3CC4();

  return v5;
}

uint64_t sub_1C95DF4F4()
{
  v0 = sub_1C96A3D54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5BB8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1C96AA1C0;
  *(v1 + 32) = v0;
  v2 = sub_1C96A3D44();

  return v2;
}

uint64_t sub_1C95DF568()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1C96A3FD4();
  __swift_allocate_value_buffer(v4, qword_1EC3A6B10);
  __swift_project_value_buffer(v4, qword_1EC3A6B10);
  sub_1C96A4594();
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v3);
  return sub_1C96A3FC4();
}

uint64_t sub_1C95DF694()
{
  if (qword_1EC3A46F8 != -1)
  {
    OUTLINED_FUNCTION_1_48();
  }

  v0 = sub_1C96A3FD4();

  return __swift_project_value_buffer(v0, qword_1EC3A6B10);
}

uint64_t static UnitKind.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC3A46F8 != -1)
  {
    OUTLINED_FUNCTION_1_48();
  }

  v2 = sub_1C96A3FD4();
  v3 = __swift_project_value_buffer(v2, qword_1EC3A6B10);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static UnitKind.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_1EC3A46F8 != -1)
  {
    OUTLINED_FUNCTION_1_48();
  }

  v2 = sub_1C96A3FD4();
  v3 = __swift_project_value_buffer(v2, qword_1EC3A6B10);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static UnitKind.typeDisplayRepresentation.modify())()
{
  if (qword_1EC3A46F8 != -1)
  {
    OUTLINED_FUNCTION_1_48();
  }

  v0 = sub_1C96A3FD4();
  __swift_project_value_buffer(v0, qword_1EC3A6B10);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C95DF900@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1C95DF694();
  swift_beginAccess();
  v3 = sub_1C96A3FD4();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_1C95DF97C(uint64_t a1)
{
  v2 = sub_1C95DF694();
  swift_beginAccess();
  v3 = sub_1C96A3FD4();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t sub_1C95DFA00()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5700);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v52 = v40 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5708);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v40 - v3;
  v5 = sub_1C96A4C14();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_1C96A45A4();
  v53 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v45 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A6FF4();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1C96A45C4();
  MEMORY[0x1EEE9AC00](v56);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C60);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C68);
  v15 = (*(*(v14 - 8) + 80) + 32) & ~*(*(v14 - 8) + 80);
  v50 = *(*(v14 - 8) + 72);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C96BA7C0;
  v17 = v16 + v15;
  v54 = v14;
  v43 = *(v14 + 48);
  v44 = v16;
  *(v16 + v15) = 0;
  sub_1C96A6FA4();
  if (qword_1EDB7AAF0 != -1)
  {
    swift_once();
  }

  v18 = v55;
  v47 = __swift_project_value_buffer(v55, qword_1EDB94A40);
  v19 = v53 + 16;
  v51 = *(v53 + 16);
  v20 = v45;
  v51(v45, v47, v18);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v56);
  v48 = sub_1C96A3E84();
  v21 = v52;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v48);
  sub_1C96A3EA4();
  v53 = v19;
  v49 = v17;
  v43 = *(v54 + 48);
  *(v17 + v50) = 1;
  sub_1C96A6FA4();
  v22 = v47;
  v51(v20, v47, v18);
  v46 = v7;
  sub_1C96A4BC4();
  v40[0] = v13;
  sub_1C96A45D4();
  v41 = v4;
  v23 = v56;
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v56);
  v24 = v48;
  __swift_storeEnumTagSinglePayload(v21, 1, 1, v48);
  sub_1C96A3EA4();
  v26 = v49;
  v25 = v50;
  v27 = *(v54 + 48);
  v42 = (v49 + 2 * v50);
  v43 = v27;
  *v42 = 2;
  v40[1] = v11;
  sub_1C96A6FA4();
  v28 = v51;
  v51(v20, v22, v55);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  v29 = v41;
  __swift_storeEnumTagSinglePayload(v41, 1, 1, v23);
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v24);
  sub_1C96A3EA4();
  v30 = (v26 + 3 * v25);
  v31 = v54;
  v43 = *(v54 + 48);
  *v30 = 3;
  sub_1C96A6FA4();
  v32 = v45;
  v33 = v47;
  v28(v45, v47, v55);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  v34 = v56;
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v56);
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v48);
  sub_1C96A3EA4();
  v35 = v50;
  v43 = *(v31 + 48);
  *(v49 + 4 * v50) = 4;
  sub_1C96A6FA4();
  v36 = v55;
  v51(v32, v33, v55);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v34);
  v37 = v52;
  v38 = v48;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v48);
  sub_1C96A3EA4();
  *(v49 + 5 * v35) = 5;
  sub_1C96A6FA4();
  v51(v32, v47, v36);
  sub_1C96A4BC4();
  sub_1C96A45D4();
  __swift_storeEnumTagSinglePayload(v29, 1, 1, v56);
  __swift_storeEnumTagSinglePayload(v37, 1, 1, v38);
  sub_1C96A3EA4();
  sub_1C96A3EB4();
  sub_1C95E0B60();
  result = sub_1C96A6F04();
  qword_1EC3A6B28 = result;
  return result;
}

uint64_t *sub_1C95E0268()
{
  if (qword_1EC3A4700 != -1)
  {
    OUTLINED_FUNCTION_2_51();
  }

  return &qword_1EC3A6B28;
}

uint64_t static UnitKind.caseDisplayRepresentations.getter()
{
  if (qword_1EC3A4700 != -1)
  {
    OUTLINED_FUNCTION_2_51();
  }

  swift_beginAccess();
  return sub_1C96A53C4();
}

uint64_t static UnitKind.caseDisplayRepresentations.setter(uint64_t a1)
{
  if (qword_1EC3A4700 != -1)
  {
    OUTLINED_FUNCTION_2_51();
  }

  swift_beginAccess();
  qword_1EC3A6B28 = a1;
}

uint64_t (*static UnitKind.caseDisplayRepresentations.modify())()
{
  if (qword_1EC3A4700 != -1)
  {
    OUTLINED_FUNCTION_2_51();
  }

  OUTLINED_FUNCTION_117();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1C95E03F4@<X0>(void *a1@<X8>)
{
  sub_1C95E0268();
  swift_beginAccess();
  *a1 = qword_1EC3A6B28;
  return sub_1C96A53C4();
}

uint64_t sub_1C95E0448(uint64_t *a1)
{
  v1 = *a1;
  sub_1C96A53C4();
  sub_1C95E0268();
  swift_beginAccess();
  qword_1EC3A6B28 = v1;
}

WeatherCore::UnitKind_optional __swiftcall UnitKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C96A7BE4();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t UnitKind.rawValue.getter()
{
  result = 0x74617265706D6574;
  switch(*v0)
  {
    case 1:
      result = 0x65636E6174736964;
      break;
    case 2:
      result = 0x7469706963657270;
      break;
    case 3:
      result = 0x6572757373657270;
      break;
    case 4:
      result = 1684957559;
      break;
    case 5:
      result = 7105633;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C95E05C4()
{
  result = qword_1EC3A6B30;
  if (!qword_1EC3A6B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B30);
  }

  return result;
}

unint64_t sub_1C95E061C()
{
  result = qword_1EC3A6B38;
  if (!qword_1EC3A6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B38);
  }

  return result;
}

unint64_t sub_1C95E06B8()
{
  result = qword_1EC3A6B40;
  if (!qword_1EC3A6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B40);
  }

  return result;
}

uint64_t sub_1C95E0730@<X0>(uint64_t *a1@<X8>)
{
  result = UnitKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1C95E075C()
{
  result = qword_1EC3A6B48;
  if (!qword_1EC3A6B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B48);
  }

  return result;
}

unint64_t sub_1C95E07B4()
{
  result = qword_1EC3A6B50;
  if (!qword_1EC3A6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B50);
  }

  return result;
}

unint64_t sub_1C95E080C()
{
  result = qword_1EC3A6B58;
  if (!qword_1EC3A6B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B58);
  }

  return result;
}

unint64_t sub_1C95E0864()
{
  result = qword_1EC3A6B60;
  if (!qword_1EC3A6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B60);
  }

  return result;
}

unint64_t sub_1C95E08B8()
{
  result = qword_1EC3A6B68;
  if (!qword_1EC3A6B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B68);
  }

  return result;
}

unint64_t sub_1C95E090C()
{
  result = qword_1EC3A6B70;
  if (!qword_1EC3A6B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B70);
  }

  return result;
}

unint64_t sub_1C95E0964()
{
  result = qword_1EC3A6B78;
  if (!qword_1EC3A6B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B78);
  }

  return result;
}

unint64_t sub_1C95E0A0C()
{
  result = qword_1EC3A6B80;
  if (!qword_1EC3A6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B80);
  }

  return result;
}

uint64_t sub_1C95E0A60(uint64_t a1)
{
  v2 = sub_1C95E0A0C();

  return MEMORY[0x1EEDB2C20](a1, v2);
}

unint64_t sub_1C95E0AB0()
{
  result = qword_1EC3A6B88;
  if (!qword_1EC3A6B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B88);
  }

  return result;
}

unint64_t sub_1C95E0B08()
{
  result = qword_1EC3A6B90;
  if (!qword_1EC3A6B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B90);
  }

  return result;
}

unint64_t sub_1C95E0B60()
{
  result = qword_1EC3A6B98;
  if (!qword_1EC3A6B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6B98);
  }

  return result;
}

uint64_t sub_1C95E0BB8(uint64_t a1)
{
  v2 = sub_1C95E0964();

  return MEMORY[0x1EEDB3D68](a1, v2);
}

_BYTE *storeEnumTagSinglePayload for UnitKind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C95E0D48()
{
  result = qword_1EC3A6BC8;
  if (!qword_1EC3A6BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6BC8);
  }

  return result;
}

unint64_t sub_1C95E0D9C()
{
  result = qword_1EC3A6C48;
  if (!qword_1EC3A6C48)
  {
    sub_1C96A3B84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6C48);
  }

  return result;
}

uint64_t PredictedLocationsAuthorizationManager.__allocating_init()()
{
  v0 = swift_allocObject();
  PredictedLocationsAuthorizationManager.init()();
  return v0;
}

uint64_t sub_1C95E0E50()
{
  if (qword_1EDB7AC40 != -1)
  {
    OUTLINED_FUNCTION_0_75();
  }

  v1 = sub_1C96A6154();
  *(v0 + 16) = __swift_project_value_buffer(v1, qword_1EDB7AC48);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C945E000, v2, v3, "Will await routine manager continuation", v4, 2u);
    OUTLINED_FUNCTION_26();
  }

  v5 = swift_task_alloc();
  *(v0 + 24) = v5;
  *v5 = v0;
  v5[1] = sub_1C95E0FC8;
  v6 = MEMORY[0x1E69E6370];

  return MEMORY[0x1EEE6DDE0](v0 + 32, 0, 0, 0xD00000000000001FLL, 0x80000001C96D3B70, sub_1C95E117C, 0, v6);
}

uint64_t sub_1C95E0FC8()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1C95E10B4, 0, 0);
}

uint64_t sub_1C95E10B4()
{
  v1 = *(v0 + 32);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1C945E000, v2, v3, "Did finish await for routine manager continuation", v4, 2u);
    OUTLINED_FUNCTION_26();
  }

  v5 = *(v0 + 8);

  return v5(v1);
}

void sub_1C95E117C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C80);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - v4;
  if (qword_1EDB7AC40 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A6154();
  __swift_project_value_buffer(v6, qword_1EDB7AC48);
  v7 = sub_1C96A6134();
  v8 = sub_1C96A76A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C945E000, v7, v8, "Will call routine manager", v9, 2u);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
  }

  v10 = [objc_opt_self() defaultManager];
  (*(v3 + 16))(v5, a1, v2);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = swift_allocObject();
  (*(v3 + 32))(v12 + v11, v5, v2);
  aBlock[4] = sub_1C95E2888;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C95E1744;
  aBlock[3] = &block_descriptor_22_0;
  v13 = _Block_copy(aBlock);

  [v10 fetchRoutineStateWithHandler_];
  _Block_release(v13);
}

uint64_t sub_1C95E1404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5090);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v15 = a1 == 2 && a2 == 0;
  if (qword_1EDB7AC40 != -1)
  {
    swift_once();
  }

  v16 = sub_1C96A6154();
  __swift_project_value_buffer(v16, qword_1EDB7AC48);
  v17 = sub_1C96A6134();
  v18 = sub_1C96A76A4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 67109120;
    *(v19 + 4) = v15;
    _os_log_impl(&dword_1C945E000, v17, v18, "Routine manager supplied state %{BOOL}d", v19, 8u);
    MEMORY[0x1CCA8E3D0](v19, -1, -1);
  }

  v20 = sub_1C96A7414();
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v20);
  (*(v7 + 16))(v10, a3, v6);
  v21 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  (*(v7 + 32))(v22 + v21, v10, v6);
  *(v22 + v21 + v8) = v15;
  sub_1C951C258();
}

uint64_t sub_1C95E16A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 25) = a5;
  *(v5 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C95E16C4, 0, 0);
}

uint64_t sub_1C95E16C4()
{
  OUTLINED_FUNCTION_18();
  *(v0 + 24) = *(v0 + 25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C80);
  sub_1C96A7394();
  OUTLINED_FUNCTION_17();

  return v1();
}

void sub_1C95E1744(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  sub_1C96A3D04();
  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1C95E17BC()
{
  v29 = sub_1C96A6624();
  v0 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v2 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v28 - v4;
  if (qword_1EDB7AC40 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A6154();
  v28[1] = __swift_project_value_buffer(v6, qword_1EDB7AC48);
  v7 = sub_1C96A6134();
  v8 = sub_1C96A76A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1C945E000, v7, v8, "Will sync await routine manager continuation", v9, 2u);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
  }

  v10 = dispatch_semaphore_create(0);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = [objc_opt_self() defaultManager];
  v13 = swift_allocObject();
  *(v13 + 16) = v11;
  *(v13 + 24) = v10;
  aBlock[4] = sub_1C95E2880;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C95E1744;
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);
  sub_1C96A3D04();
  v15 = v10;

  [v12 fetchRoutineStateWithHandler_];
  _Block_release(v14);

  sub_1C96A6614();
  sub_1C96A6684();
  v16 = *(v0 + 8);
  v17 = v29;
  v16(v2, v29);
  v18 = sub_1C96A7814();
  v16(v5, v17);
  v19 = sub_1C96A6134();
  v20 = sub_1C96A76A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock[0] = v22;
    *v21 = 136446210;
    v30 = v18 & 1;
    v23 = sub_1C96A70A4();
    v25 = sub_1C9484164(v23, v24, aBlock);

    *(v21 + 4) = v25;
    _os_log_impl(&dword_1C945E000, v19, v20, "Did finish waiting for routine manager, timeoutResult=%{public}s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x1CCA8E3D0](v22, -1, -1);
    MEMORY[0x1CCA8E3D0](v21, -1, -1);
  }

  swift_beginAccess();
  v26 = *(v11 + 16);

  return v26;
}

uint64_t sub_1C95E1BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1 == 2 && a2 == 0;
  swift_beginAccess();
  *(a3 + 16) = v5;
  if (qword_1EDB7AC40 != -1)
  {
    swift_once();
  }

  v6 = sub_1C96A6154();
  __swift_project_value_buffer(v6, qword_1EDB7AC48);
  sub_1C96A3D04();
  v7 = sub_1C96A6134();
  v8 = sub_1C96A76A4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    swift_beginAccess();
    *(v9 + 4) = *(a3 + 16);

    _os_log_impl(&dword_1C945E000, v7, v8, "Routine manager supplied state %{BOOL}d", v9, 8u);
    MEMORY[0x1CCA8E3D0](v9, -1, -1);
  }

  else
  {
  }

  return sub_1C96A7834();
}

uint64_t sub_1C95E1D10()
{
  sub_1C96A4EE4();
  sub_1C96A4EC4();
  if (qword_1EDB7CC10 != -1)
  {
    swift_once();
  }

  sub_1C96A4EB4();

  return v1;
}

unint64_t sub_1C95E1D94()
{
  result = qword_1EDB7ACD8;
  if (!qword_1EDB7ACD8)
  {
    sub_1C96A5B14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7ACD8);
  }

  return result;
}

uint64_t sub_1C95E1DEC()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_27();
  v1 = *v0;
  OUTLINED_FUNCTION_15();
  *v2 = v1;

  sub_1C96A5B14();
  sub_1C95E1D94();
  v4 = sub_1C96A7374();

  return MEMORY[0x1EEE6DFA0](sub_1C95E1F10, v4, v3);
}

uint64_t sub_1C95E1F10()
{
  v16 = v0;

  v2 = *(v0 + 48);
  if (qword_1EDB7AC40 != -1)
  {
    OUTLINED_FUNCTION_0_75();
  }

  v3 = sub_1C96A6154();
  __swift_project_value_buffer(v3, qword_1EDB7AC48);
  v4 = sub_1C96A6134();
  v5 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136446210;
    v8 = OUTLINED_FUNCTION_5_35();
    switch(v2)
    {
      case 1:
        v8 = 0xD000000000000012;
        v1 = 0x80000001C96D3AA0;
        break;
      case 2:
        v8 = OUTLINED_FUNCTION_8_33();
        break;
      case 3:
        OUTLINED_FUNCTION_1_49();
        v8 = v10 + 6;
        break;
      case 4:
        OUTLINED_FUNCTION_1_49();
        v8 = v9 + 7;
        break;
      default:
        break;
    }

    v11 = sub_1C9484164(v8, v1, &v15);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1C945E000, v4, v5, "Did async fetch predicted locations authorization: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  v12 = *(v0 + 24);
  **(v0 + 16) = v2;
  os_unfair_lock_lock((v12 + 16));

  *(v12 + 24) = 0;
  os_unfair_lock_unlock((v12 + 16));
  OUTLINED_FUNCTION_17();

  return v13();
}

uint64_t sub_1C95E20F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = sub_1C96A5B24();
  sub_1C96A5B14();
  sub_1C95E1D94();
  v5 = sub_1C96A7374();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C95E2190, v5, v4);
}

uint64_t sub_1C95E2190()
{
  OUTLINED_FUNCTION_18();
  if (qword_1EDB7B0E0 != -1)
  {
    OUTLINED_FUNCTION_4_45();
  }

  if (byte_1EDB7B0E9 == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 64) = v1;
    *v1 = v0;
    v1[1] = sub_1C95E228C;

    return sub_1C95E0E34();
  }

  else
  {

    **(v0 + 16) = 1;
    OUTLINED_FUNCTION_17();

    return v3();
  }
}

uint64_t sub_1C95E228C()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  *(*v0 + 72) = v2;

  v3 = *(v1 + 56);
  v4 = *(v1 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1C95E23B0, v4, v3);
}

uint64_t sub_1C95E23B0()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 72);

  if (v1 == 1)
  {
    if (sub_1C95E1D10())
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }
  }

  else
  {
    v2 = 3;
  }

  **(v0 + 16) = v2;
  OUTLINED_FUNCTION_17();

  return v3();
}

WeatherCore::PredictedLocationsAuthorization __swiftcall PredictedLocationsAuthorizationManager.syncFetchAuthorization()()
{
  v2 = v0;
  sub_1C95E2604(&v15);
  v3 = v15;
  if (qword_1EDB7AC40 != -1)
  {
    OUTLINED_FUNCTION_0_75();
  }

  v4 = sub_1C96A6154();
  __swift_project_value_buffer(v4, qword_1EDB7AC48);
  v5 = sub_1C96A6134();
  v6 = sub_1C96A76A4();
  if (OUTLINED_FUNCTION_14_7(v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14 = v8;
    *v7 = 136446210;
    v9 = OUTLINED_FUNCTION_5_35();
    switch(v3)
    {
      case 1:
        v9 = 0xD000000000000012;
        v1 = 0x80000001C96D3AA0;
        break;
      case 2:
        v9 = OUTLINED_FUNCTION_8_33();
        break;
      case 3:
        OUTLINED_FUNCTION_1_49();
        v9 = v11 + 6;
        break;
      case 4:
        OUTLINED_FUNCTION_1_49();
        v9 = v10 + 7;
        break;
      default:
        break;
    }

    v12 = sub_1C9484164(v9, v1, &v14);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1C945E000, v5, v6, "Did sync fetch predicted locations authorization: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  *v2 = v3;
  return result;
}

void sub_1C95E2604(char *a1@<X8>)
{
  if (qword_1EDB7B0E0 != -1)
  {
    swift_once();
  }

  if (byte_1EDB7B0E9 == 1)
  {
    if (sub_1C95E17BC())
    {
      if (sub_1C95E1D10())
      {
        v2 = 2;
      }

      else
      {
        v2 = 4;
      }
    }

    else
    {
      v2 = 3;
    }
  }

  else
  {
    v2 = 1;
  }

  *a1 = v2;
}

Swift::Bool __swiftcall PredictedLocationsAuthorizationManager.isFeatureAvailable()()
{
  if (qword_1EDB7B0E0 != -1)
  {
    OUTLINED_FUNCTION_4_45();
  }

  return byte_1EDB7B0E9;
}

uint64_t PredictedLocationsAuthorizationManager.__deallocating_deinit()
{
  sub_1C95E27B0(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 33, 7);
}

uint64_t sub_1C95E27B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C95E2888(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C80) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1C95E1404(a1, a2, v6);
}

uint64_t sub_1C95E2914()
{
  OUTLINED_FUNCTION_39();
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C80) - 8);
  v2 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
  v3 = *(v2 + *(v1 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_17_1(v4);
  *v5 = v6;
  v7 = OUTLINED_FUNCTION_9_32(v5);

  return sub_1C95E16A0(v7, v8, v9, v2, v3);
}

uint64_t sub_1C95E2A24(uint64_t result)
{
  v2 = *(result + 16);
  v3 = (result + 40);
  if (v2)
  {
    while (1)
    {
      v4 = *v3;
      v5[0] = *(v3 - 1);
      v5[1] = v4;
      sub_1C96A53C4();
      sub_1C95E647C(v5);
      if (v1)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1C95E2AB4(uint64_t a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    (*(v4 + 8))(a1, ObjectType, v4);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C95E2B3C()
{
  sub_1C94FB1A8(v0 + 16);
  v1 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

void sub_1C95E2B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = (v4 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID);
  *v9 = a1;
  v9[1] = a2;
  sub_1C96A53C4();

  v10 = v4[2];
  v11 = v4[3];
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;
  sub_1C94AA668(v10, v11);
  sub_1C96A4204();
  swift_allocObject();
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C96A41F4();
  v24[0] = a1;
  v24[1] = a2;
  v24[2] = a3;
  v24[3] = a4;
  sub_1C95EB0D8();
  v12 = sub_1C96A41E4();
  v14 = v13;

  sub_1C96A4874();
  v15 = sub_1C96A46E4();
  sub_1C95E76AC(v15);

  if (qword_1EDB7ABF8 != -1)
  {
    OUTLINED_FUNCTION_0_76();
  }

  v16 = sub_1C96A6154();
  __swift_project_value_buffer(v16, qword_1EDB7AC00);
  sub_1C96A3D04();
  v17 = sub_1C96A6134();
  v18 = sub_1C96A76A4();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v24[0] = v20;
    *v19 = 141558275;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2081;
    v21 = sub_1C96A4744();
    v23 = sub_1C9484164(v21, v22, v24);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1C945E000, v17, v18, "Saved data protection data to file %{private,mask.hash}s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
    OUTLINED_FUNCTION_26();
    OUTLINED_FUNCTION_26();
  }

  sub_1C9482F3C(v12, v14);

  sub_1C95E7818();
  OUTLINED_FUNCTION_18_3();
}

void sub_1C95E2F64(uint64_t a1, void (*a2)(uint64_t, void), uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  sub_1C96A3D04();
  sub_1C96A50E4();
  v7 = *(a1 + 24);
  v8 = OUTLINED_FUNCTION_17_25();
  sub_1C94AA6AC(v8, v9);
  sub_1C96A50F4();
  if (v7)
  {
    v10 = OUTLINED_FUNCTION_17_25();
    sub_1C94AA668(v10, v11);
    a2(1, 0);

    OUTLINED_FUNCTION_18_3();
  }

  else
  {
    v13 = sub_1C94AA700();
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    v15[2] = v14;
    v15[3] = sub_1C95EB194;
    v15[4] = v6;
    OUTLINED_FUNCTION_4_46();
    OUTLINED_FUNCTION_5_36();
    v18[2] = v16;
    v18[3] = &block_descriptor_61;
    v17 = _Block_copy(v18);
    sub_1C96A3D04();

    [v13 wc:v17 synchronizeWithCompletionHandler:?];
    _Block_release(v17);

    OUTLINED_FUNCTION_18_3();
  }
}

uint64_t sub_1C95E3118(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C96A6564();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C96A65E4();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(result + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_iCloudUpdateQueue);

    v16 = swift_allocObject();
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a4;
    v16[5] = a1;
    aBlock[4] = sub_1C95EB1F8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C946FCF8;
    aBlock[3] = &block_descriptor_67;
    v17 = _Block_copy(aBlock);
    sub_1C96A3D04();
    sub_1C96A3D04();
    v18 = a1;
    sub_1C96A6594();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C946F908(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
    sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370);
    sub_1C96A79E4();
    v19 = v20;
    MEMORY[0x1CCA8D100](0, v14, v11, v17);
    _Block_release(v17);

    (*(v9 + 8))(v11, v8);
    (*(v12 + 8))(v14, v21);
  }

  return result;
}

void sub_1C95E3444(uint64_t a1, void (*a2)(_BOOL8, void *), uint64_t a3, void *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34[-1] - v7;
  v9 = type metadata accessor for DataProtectionData();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (a4)
    {
      if (qword_1EDB7ABF8 != -1)
      {
        swift_once();
      }

      v14 = sub_1C96A6154();
      __swift_project_value_buffer(v14, qword_1EDB7AC00);
      v15 = a4;
      v16 = sub_1C96A6134();
      v17 = sub_1C96A7684();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v33 = a4;
        v34[0] = v19;
        *v18 = 136446210;
        v20 = a4;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51A8);
        v21 = sub_1C96A70A4();
        v23 = sub_1C9484164(v21, v22, v34);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_1C945E000, v16, v17, "Failed to update heart beat and clean up orphan data due to %{public}s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1CCA8E3D0](v19, -1, -1);
        MEMORY[0x1CCA8E3D0](v18, -1, -1);
      }

      sub_1C95EB204();
      v24 = swift_allocError();
      *v25 = 0;
      goto LABEL_8;
    }

    sub_1C96A3D04();
    sub_1C96A50E4();

    v28 = *(v13 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID + 8);
    if (!v28)
    {
      sub_1C96A3D04();
      sub_1C96A50F4();

      sub_1C95EB204();
      v24 = swift_allocError();
      *v32 = 2;
LABEL_8:
      a2(0, v24);

      return;
    }

    v29 = *(v13 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID);
    sub_1C96A53C4();
    sub_1C95E8678(v11);
    v34[0] = v29;
    v34[1] = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120);
    sub_1C96A6C04();

    v30 = type metadata accessor for DataProtectionValue();
    v31 = __swift_getEnumTagSinglePayload(v8, 1, v30) != 1;
    sub_1C9470AFC(v8, &qword_1EC3A6C98);
    sub_1C96A3D04();
    sub_1C96A50F4();

    a2(v31, 0);

    sub_1C95EAF44(v11, type metadata accessor for DataProtectionData);
  }

  else
  {
    sub_1C95EB204();
    v26 = swift_allocError();
    *v27 = 1;
    a2(0, v26);
  }
}

void sub_1C95E386C()
{
  sub_1C96A50E4();
  if (qword_1EDB7ABF8 != -1)
  {
    OUTLINED_FUNCTION_0_76();
  }

  v1 = sub_1C96A6154();
  __swift_project_value_buffer(v1, qword_1EDB7AC00);
  v2 = sub_1C96A6134();
  v3 = sub_1C96A76A4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = OUTLINED_FUNCTION_29();
    *v4 = 0;
    _os_log_impl(&dword_1C945E000, v2, v3, "Update heat beat and clean up orphan data", v4, 2u);
    OUTLINED_FUNCTION_26();
  }

  v5 = *(v0 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID + 8);
  if (v5)
  {
    v6 = *(v0 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID);
    sub_1C96A53C4();
    sub_1C96A50F4();
    v7 = sub_1C94AA700();
    v8 = swift_allocObject();
    swift_weakInit();
    v9 = swift_allocObject();
    v9[2] = v8;
    v9[3] = v6;
    v9[4] = v5;
    OUTLINED_FUNCTION_4_46();
    OUTLINED_FUNCTION_5_36();
    v15[2] = v10;
    v15[3] = &block_descriptor_14;
    v11 = _Block_copy(v15);

    [v7 wc:v11 synchronizeWithCompletionHandler:?];
    _Block_release(v11);
  }

  else
  {
    v12 = sub_1C96A6134();
    v13 = sub_1C96A7684();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_29();
      *v14 = 0;
      _os_log_impl(&dword_1C945E000, v12, v13, "Can't update heart beat due to missing deviceUUID", v14, 2u);
      OUTLINED_FUNCTION_26();
    }

    sub_1C96A50F4();
  }
}

uint64_t sub_1C95E3A88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1C96A6564();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C96A65E4();
  v12 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v20 = *(result + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_iCloudUpdateQueue);

    v16 = swift_allocObject();
    v16[2] = a1;
    v16[3] = a2;
    v16[4] = a3;
    v16[5] = a4;
    aBlock[4] = sub_1C95EAEB8;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C946FCF8;
    aBlock[3] = &block_descriptor_24_1;
    v17 = _Block_copy(aBlock);
    v18 = a1;
    sub_1C96A3D04();
    sub_1C96A53C4();
    sub_1C96A6594();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C946F908(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
    sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370);
    sub_1C96A79E4();
    v19 = v20;
    MEMORY[0x1CCA8D100](0, v14, v11, v17);
    _Block_release(v17);

    (*(v9 + 8))(v11, v8);
    (*(v12 + 8))(v14, v21);
  }

  return result;
}

void sub_1C95E3DB4(void *a1, void *a2, uint64_t a3, unint64_t a4)
{
  v147 = a4;
  v146 = *&a3;
  v148 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5130);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v132 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5128);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v155 = &v132 - v9;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120);
  v144 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v145 = &v132 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5150);
  v153 = *(v11 - 8);
  v154 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v156 = (&v132 - v12);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C90);
  v13 = MEMORY[0x1EEE9AC00](v143);
  v142 = &v132 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v150 = &v132 - v15;
  v16 = sub_1C96A4A54();
  v149 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v132 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v132 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v132 - v23;
  v25 = type metadata accessor for DataProtectionValue();
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = &v132 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v132 - v29;
  v31 = type metadata accessor for DataProtectionData();
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  MEMORY[0x1EEE9AC00](v32);
  if (*&a1 != 0.0)
  {
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v35 = sub_1C96A6154();
    __swift_project_value_buffer(v35, qword_1EDB7AC00);
    v36 = a1;
    v156 = sub_1C96A6134();
    v37 = sub_1C96A7684();

    if (os_log_type_enabled(v156, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v161 = v39;
      *v38 = 136446210;
      v158 = *&a1;
      v40 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51A8);
      v41 = sub_1C96A70A4();
      v43 = sub_1C9484164(v41, v42, &v161);

      *(v38 + 4) = v43;
      _os_log_impl(&dword_1C945E000, v156, v37, "Failed to update heart beat and clean up orphan data due to %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x1CCA8E3D0](v39, -1, -1);
      MEMORY[0x1CCA8E3D0](v38, -1, -1);
    }

    else
    {
      v55 = v156;
    }

    return;
  }

  v140 = &v132 - v33;
  v135 = v28;
  v44 = v22;
  v136 = v24;
  v137 = v30;
  v139 = v18;
  v138 = v16;
  v152 = v25;
  v141 = v34;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v46 = Strong;
  v134 = OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_lock;
  sub_1C96A3D04();
  sub_1C96A50E4();

  sub_1C95E8678(v140);
  v158 = v146;
  v159 = v147;
  sub_1C96A6C04();
  v47 = v152;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v152);
  v148 = v46;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C9470AFC(v22, &qword_1EC3A6C98);
    v49 = v46[3];
    v50 = v137;
    if (!v49)
    {
      v114 = v136;
      __swift_storeEnumTagSinglePayload(v136, 1, 1, v47);
      sub_1C9470AFC(v114, &qword_1EC3A6C98);
      if (qword_1EDB7ABF8 != -1)
      {
        swift_once();
      }

      v115 = sub_1C96A6154();
      __swift_project_value_buffer(v115, qword_1EDB7AC00);
      v116 = sub_1C96A6134();
      v117 = sub_1C96A76A4();
      v118 = os_log_type_enabled(v116, v117);
      v74 = v153;
      v60 = v138;
      v76 = v139;
      if (v118)
      {
        v119 = swift_slowAlloc();
        *v119 = 0;
        _os_log_impl(&dword_1C945E000, v116, v117, "Skip heart beat update due to missing dataProtectionValue", v119, 2u);
        v120 = v119;
        v72 = v150;
        MEMORY[0x1CCA8E3D0](v120, -1, -1);

        v73 = v154;
        v66 = v149;
      }

      else
      {

        v73 = v154;
        v66 = v149;
        v72 = v150;
      }

      goto LABEL_26;
    }

    v133 = v5;
    v52 = v46[4];
    v51 = v46[5];
    v53 = v148[2];
    sub_1C96A53C4();
    sub_1C96A53C4();
    v54 = v136;
    sub_1C9570100(v53, v49, v52, v51, v136);
  }

  else
  {
    v133 = v5;
    v56 = v135;
    sub_1C95EAFF8(v44, v135, type metadata accessor for DataProtectionValue);
    v54 = v136;
    sub_1C95EAFF8(v56, v136, type metadata accessor for DataProtectionValue);
    v50 = v137;
  }

  __swift_storeEnumTagSinglePayload(v54, 0, 1, v47);
  sub_1C95EAFF8(v54, v50, type metadata accessor for DataProtectionValue);
  v57 = v139;
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  sub_1C96A49E4();
  v59 = v58;
  v60 = v138;
  (*(v149 + 8))(v57, v138);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160);
  sub_1C96A66E4();
  if (v59 - v158 <= 86400.0)
  {
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v77 = sub_1C96A6154();
    __swift_project_value_buffer(v77, qword_1EDB7AC00);
    v78 = sub_1C96A6134();
    v79 = sub_1C96A76A4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = v50;
      v82 = swift_slowAlloc();
      v157[0] = v82;
      *v80 = 136446210;
      swift_beginAccess();
      sub_1C96A66E4();
      swift_endAccess();
      v83 = sub_1C96A7514();
      v85 = sub_1C9484164(v83, v84, v157);

      *(v80 + 4) = v85;
      _os_log_impl(&dword_1C945E000, v78, v79, "Skip heart beat update due to last update is %{public}s", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x1CCA8E3D0](v82, -1, -1);
      MEMORY[0x1CCA8E3D0](v80, -1, -1);

      v86 = v81;
    }

    else
    {

      v86 = v50;
    }

    sub_1C95EAF44(v86, type metadata accessor for DataProtectionValue);
    v72 = v150;
    v5 = v133;
    v74 = v153;
    v73 = v154;
    v66 = v149;
    v76 = v139;
  }

  else
  {
    v158 = v59;
    sub_1C96A66F4();
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v61 = sub_1C96A6154();
    __swift_project_value_buffer(v61, qword_1EDB7AC00);
    v62 = v147;
    sub_1C96A53C4();
    v63 = sub_1C96A6134();
    v64 = sub_1C96A76A4();

    v65 = os_log_type_enabled(v63, v64);
    v66 = v149;
    if (v65)
    {
      v67 = swift_slowAlloc();
      *&v68 = COERCE_DOUBLE(swift_slowAlloc());
      v158 = *&v68;
      *v67 = 136446466;
      *(v67 + 4) = sub_1C9484164(*&v146, v62, &v158);
      *(v67 + 12) = 2082;
      v69 = sub_1C96A7514();
      v71 = sub_1C9484164(v69, v70, &v158);

      *(v67 + 14) = v71;
      _os_log_impl(&dword_1C945E000, v63, v64, "Update heart beat %{public}s with timestamp %{public}s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v68, -1, -1);
      MEMORY[0x1CCA8E3D0](v67, -1, -1);
    }

    v72 = v150;
    v74 = v153;
    v73 = v154;
    v75 = v137;
    sub_1C95E5304(v137);
    sub_1C95EAF44(v75, type metadata accessor for DataProtectionValue);
    v5 = v133;
    v76 = v139;
    v60 = v138;
  }

LABEL_26:
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  sub_1C96A49E4();
  v88 = v87;
  (*(v66 + 8))(v76, v60);
  v89 = v141;
  sub_1C95E8678(v141);
  v90 = v143;
  *v72 = sub_1C95E6188(&v72[*(v143 + 48)], v89) & 1;
  v91 = v142;
  sub_1C9470AA0(v72, v142, &qword_1EC3A6C90);
  LODWORD(v147) = *v91;
  sub_1C95EAF44(&v91[*(v90 + 48)], type metadata accessor for DataProtectionData);
  sub_1C9470AA0(v72, v91, &qword_1EC3A6C90);
  sub_1C95EAEC4(&v91[*(v90 + 48)], v89);
  (*(v144 + 16))(v145, v89, v151);
  sub_1C9469CB4(&qword_1EDB7ABA8, &qword_1EC3A5120);
  sub_1C96A71F4();
  sub_1C9469CB4(&qword_1EDB7ABB8, &qword_1EC3A5150);
  v149 = MEMORY[0x1E69E7CC0];
LABEL_27:
  v92 = v155;
  while (1)
  {
    sub_1C96A7944();
    if (__swift_getEnumTagSinglePayload(v92, 1, v5) == 1)
    {
      break;
    }

    sub_1C951A67C(v92, v7);
    v93 = *v7;
    v94 = v7[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160);
    sub_1C96A66E4();
    if (v158 + 31536000.0 < v88)
    {
      sub_1C96A53C4();
      sub_1C9470AFC(v7, &qword_1EC3A5130);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v95 = v149;
      }

      else
      {
        sub_1C94FB3F4();
        v95 = v99;
      }

      v96 = *(v95 + 16);
      v97 = v96 + 1;
      v74 = v153;
      if (v96 >= *(v95 + 24) >> 1)
      {
        v149 = v96 + 1;
        sub_1C94FB3F4();
        v97 = v149;
        v95 = v100;
      }

      *(v95 + 16) = v97;
      v149 = v95;
      v98 = v95 + 16 * v96;
      *(v98 + 32) = v93;
      *(v98 + 40) = v94;
      v73 = v154;
      goto LABEL_27;
    }

    sub_1C9470AFC(v7, &qword_1EC3A5130);
    v73 = v154;
    v92 = v155;
    v74 = v153;
  }

  (*(v74 + 8))(v156, v73);
  if ((*(v149 + 16) != 0) | v147 & 1)
  {
    v101 = v140;
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v102 = sub_1C96A6154();
    __swift_project_value_buffer(v102, qword_1EDB7AC00);
    v103 = sub_1C96A6134();
    v104 = sub_1C96A76A4();
    if (os_log_type_enabled(v103, v104))
    {
      v105 = swift_slowAlloc();
      *&v106 = COERCE_DOUBLE(swift_slowAlloc());
      v158 = *&v106;
      *v105 = 136446210;
      v107 = v141;
      swift_beginAccess();
      v160 = sub_1C96A6BA4();
      v108 = sub_1C96A7DB4();
      v110 = sub_1C9484164(v108, v109, &v158);

      *(v105 + 4) = v110;
      _os_log_impl(&dword_1C945E000, v103, v104, "Data count before remove expired device uuid %{public}s", v105, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v106);
      MEMORY[0x1CCA8E3D0](v106, -1, -1);
      MEMORY[0x1CCA8E3D0](v105, -1, -1);
    }

    else
    {

      v107 = v141;
    }

    sub_1C95E2A24(v149);

    v112 = *(v148 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider + 32);
    v113 = __swift_project_boxed_opaque_existential_1((v148 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider), *(v148 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider + 24));
    MEMORY[0x1EEE9AC00](v113);
    *(&v132 - 2) = v107;
    (*(v112 + 24))(&v158, sub_1C95EAF28);
    v121 = *&v158;
    v122 = v159;
    v123 = sub_1C94AA700();
    sub_1C95E68D0(v121, v122);

    sub_1C9482F3C(v121, v122);
    v124 = sub_1C96A6134();
    v125 = sub_1C96A76A4();
    if (os_log_type_enabled(v124, v125))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v160 = v128;
      *v127 = 136446210;
      swift_beginAccess();
      v157[3] = sub_1C96A6BA4();
      v129 = sub_1C96A7DB4();
      v131 = sub_1C9484164(v129, v130, &v160);

      *(v127 + 4) = v131;
      _os_log_impl(&dword_1C945E000, v124, v125, "Data count after remove expired device uuid %{public}s", v127, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v128);
      MEMORY[0x1CCA8E3D0](v128, -1, -1);
      MEMORY[0x1CCA8E3D0](v127, -1, -1);
    }

    v111 = v150;
  }

  else
  {

    v111 = v150;
    v101 = v140;
  }

  sub_1C96A50F4();
  sub_1C9470AFC(v111, &qword_1EC3A6C90);
  sub_1C95EAF44(v101, type metadata accessor for DataProtectionData);

  sub_1C95EAF44(v141, type metadata accessor for DataProtectionData);
}

uint64_t sub_1C95E5304(uint64_t a1)
{
  v3 = type metadata accessor for DataProtectionValue();
  v4 = MEMORY[0x1EEE9AC00](v3);
  v111 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v106 = &v101 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v110 = &v101 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v105 = &v101 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v107 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v104 = &v101 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v103 = &v101 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v101 - v18;
  v20 = type metadata accessor for DataProtectionData();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C95E8678(v22);
  v108 = v1;
  v23 = sub_1C95E78FC();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
  sub_1C96A66E4();
  v25 = v116;
  v26 = v117;
  v27 = a1;
  sub_1C96A66E4();
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120);
  v112 = v22;
  v28 = v3;
  sub_1C96A6C04();

  if (__swift_getEnumTagSinglePayload(v19, 1, v3))
  {
    sub_1C9470AFC(v19, &qword_1EC3A6C98);

    v29 = a1;
LABEL_3:
    v30 = v110;
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v31 = sub_1C96A6154();
    v32 = __swift_project_value_buffer(v31, qword_1EDB7AC00);
    v33 = v105;
    sub_1C95EAF9C(v29, v105, type metadata accessor for DataProtectionValue);
    sub_1C95EAF9C(v29, v30, type metadata accessor for DataProtectionValue);
    v113 = v32;
    v34 = sub_1C96A6134();
    v35 = sub_1C96A76A4();
    v36 = os_log_type_enabled(v34, v35);
    v109 = v24;
    if (v36)
    {
      v102 = v35;
      v37 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      v115[0] = v101;
      *v37 = 141558787;
      *(v37 + 4) = 1752392040;
      *(v37 + 12) = 2081;
      sub_1C96A66E4();
      sub_1C95EAF44(v33, type metadata accessor for DataProtectionValue);
      v38 = sub_1C9484164(v116, v117, v115);

      *(v37 + 14) = v38;
      *(v37 + 22) = 2160;
      *(v37 + 24) = 1752392040;
      *(v37 + 32) = 2081;
      sub_1C96A66E4();
      v40 = v116;
      v39 = v117;
      swift_beginAccess();
      v118 = v40;
      v119 = v39;
      v41 = v103;
      sub_1C96A6C04();

      if (__swift_getEnumTagSinglePayload(v41, 1, v28))
      {
        sub_1C9470AFC(v41, &qword_1EC3A6C98);
        swift_endAccess();
        v42 = 0;
        v43 = 0;
      }

      else
      {
        sub_1C96A66E4();
        v42 = v118;
        v43 = v119;
        sub_1C9470AFC(v41, &qword_1EC3A6C98);
        swift_endAccess();
      }

      v116 = v42;
      v117 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A6430);
      v55 = sub_1C96A70A4();
      v57 = v56;
      sub_1C95EAF44(v110, type metadata accessor for DataProtectionValue);
      v58 = sub_1C9484164(v55, v57, v115);

      *(v37 + 34) = v58;
      _os_log_impl(&dword_1C945E000, v34, v102, "HashSalt or last access date is different, update the protection date. salt: %{private,mask.hash}s - %{private,mask.hash}s", v37, 0x2Au);
      v59 = v101;
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v59, -1, -1);
      MEMORY[0x1CCA8E3D0](v37, -1, -1);
    }

    else
    {

      sub_1C95EAF44(v30, type metadata accessor for DataProtectionValue);
      sub_1C95EAF44(v33, type metadata accessor for DataProtectionValue);
    }

    v60 = v112;
    v61 = v106;
    sub_1C95EAF9C(v29, v106, type metadata accessor for DataProtectionValue);
    v62 = v111;
    sub_1C95EAF9C(v29, v111, type metadata accessor for DataProtectionValue);
    v63 = sub_1C96A6134();
    v64 = sub_1C96A76A4();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      v115[0] = v112;
      *v65 = 141558787;
      *(v65 + 4) = 1752392040;
      *(v65 + 12) = 2081;
      v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160);
      sub_1C96A66E4();
      v66 = sub_1C96A7514();
      v68 = v67;
      sub_1C95EAF44(v61, type metadata accessor for DataProtectionValue);
      v69 = sub_1C9484164(v66, v68, v115);

      *(v65 + 14) = v69;
      *(v65 + 22) = 2160;
      *(v65 + 24) = 1752392040;
      *(v65 + 32) = 2081;
      sub_1C96A66E4();
      v71 = v116;
      v70 = v117;
      v72 = v60;
      swift_beginAccess();
      v118 = v71;
      v119 = v70;
      v73 = v104;
      sub_1C96A6C04();
      v74 = v73;

      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v73, 1, v28);
      v76 = v28;
      if (EnumTagSinglePayload)
      {
        sub_1C9470AFC(v74, &qword_1EC3A6C98);
        swift_endAccess();
        v77 = 0;
      }

      else
      {
        v79 = v74;
        sub_1C96A66E4();
        v77 = v118;
        sub_1C9470AFC(v79, &qword_1EC3A6C98);
        swift_endAccess();
      }

      v78 = v108;
      v116 = v77;
      LOBYTE(v117) = EnumTagSinglePayload != 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A57C0);
      v80 = sub_1C96A70A4();
      v82 = v81;
      sub_1C95EAF44(v111, type metadata accessor for DataProtectionValue);
      v83 = sub_1C9484164(v80, v82, v115);

      *(v65 + 34) = v83;
      _os_log_impl(&dword_1C945E000, v63, v64, "HashSalt or last access date is different, update the protection date. accessDate: %{private,mask.hash}s - %{private,mask.hash}s", v65, 0x2Au);
      v84 = v112;
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v84, -1, -1);
      MEMORY[0x1CCA8E3D0](v65, -1, -1);

      v28 = v76;
    }

    else
    {

      sub_1C95EAF44(v62, type metadata accessor for DataProtectionValue);
      sub_1C95EAF44(v61, type metadata accessor for DataProtectionValue);
      v78 = v108;
      v72 = v60;
    }

    sub_1C96A66E4();
    v85 = v116;
    v86 = v117;
    v87 = v107;
    sub_1C95EAF9C(v29, v107, type metadata accessor for DataProtectionValue);
    __swift_storeEnumTagSinglePayload(v87, 0, 1, v28);
    v118 = v85;
    v119 = v86;
    swift_beginAccess();
    sub_1C96A6C14();
    swift_endAccess();
    v88 = *(v78 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider + 32);
    v89 = __swift_project_boxed_opaque_existential_1((v78 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider), *(v78 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider + 24));
    MEMORY[0x1EEE9AC00](v89);
    *(&v101 - 2) = v72;
    (*(v88 + 24))(&v116, sub_1C95EB274);
    v90 = v116;
    v91 = v117;
    sub_1C94874C0(v116, v117);
    v92 = sub_1C96A6134();
    v93 = sub_1C96A76A4();
    sub_1C9482F3C(v90, v91);
    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v116 = v95;
      *v94 = 136446210;
      v118 = MEMORY[0x1CCA8A1F0](v90, v91);
      v96 = sub_1C96A7DB4();
      v98 = sub_1C9484164(v96, v97, &v116);

      *(v94 + 4) = v98;
      _os_log_impl(&dword_1C945E000, v92, v93, "Merged data size %{public}s bytes", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v95);
      MEMORY[0x1CCA8E3D0](v95, -1, -1);
      MEMORY[0x1CCA8E3D0](v94, -1, -1);
    }

    v99 = sub_1C94AA700();
    sub_1C95E68D0(v90, v91);

    sub_1C9482F3C(v90, v91);
    v54 = v72;
    return sub_1C95EAF44(v54, type metadata accessor for DataProtectionData);
  }

  sub_1C96A66E4();
  v45 = v116;
  v44 = v117;
  sub_1C9470AFC(v19, &qword_1EC3A6C98);
  if (v25 == v45 && v26 == v44)
  {

    v29 = v27;
    if (v23)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v47 = sub_1C96A7DE4();

    v29 = v27;
    if (v23 || (v47 & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  v48 = v112;
  if (qword_1EDB7ABF8 != -1)
  {
    swift_once();
  }

  v49 = sub_1C96A6154();
  __swift_project_value_buffer(v49, qword_1EDB7AC00);
  v50 = sub_1C96A6134();
  v51 = sub_1C96A76A4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v116 = v53;
    *v52 = 141558275;
    *(v52 + 4) = 1752392040;
    *(v52 + 12) = 2081;
    *(v52 + 14) = sub_1C9484164(0x65736C6166, 0xE500000000000000, &v116);
    _os_log_impl(&dword_1C945E000, v50, v51, "Skip merge with ubiquitous key value store due to no hashSalt, or lastAccessDate is too close. with shouldUpdateTimestamp: %{private,mask.hash}s", v52, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x1CCA8E3D0](v53, -1, -1);
    MEMORY[0x1CCA8E3D0](v52, -1, -1);
  }

  v54 = v48;
  return sub_1C95EAF44(v54, type metadata accessor for DataProtectionData);
}

uint64_t sub_1C95E6188(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for DataProtectionData();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = 0;
  v13 = sub_1C95E6954(v3, a2, &v25);
  if (v13)
  {
    sub_1C95EAF9C(a2, v12, type metadata accessor for DataProtectionData);
    sub_1C95E6E88(v9);
    (*(v7 + 40))(v12, v9, v6);
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v14 = sub_1C96A6154();
    __swift_project_value_buffer(v14, qword_1EDB7AC00);
    v15 = sub_1C96A6134();
    v16 = sub_1C96A76A4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v24 = v18;
      *v17 = 136446210;
      swift_beginAccess();
      v23 = v25;
      v19 = sub_1C96A7DB4();
      v21 = sub_1C9484164(v19, v20, &v24);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1C945E000, v15, v16, "Prune data protection data from size %{public}s bytes", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1CCA8E3D0](v18, -1, -1);
      MEMORY[0x1CCA8E3D0](v17, -1, -1);
    }

    sub_1C95EAFF8(v12, a1, type metadata accessor for DataProtectionData);
  }

  else
  {
    sub_1C95EAF9C(a2, a1, type metadata accessor for DataProtectionData);
  }

  return v13 & 1;
}

uint64_t sub_1C95E647C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v30[-v6];
  v8 = type metadata accessor for DataProtectionValue();
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v30[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30[-v12];
  v15 = *a1;
  v14 = a1[1];
  swift_beginAccess();
  v35 = v15;
  v36 = v15;
  v37 = v14;
  sub_1C96A53C4();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120);
  sub_1C96A6C04();

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    sub_1C9470AFC(v7, &qword_1EC3A6C98);
    return swift_endAccess();
  }

  else
  {
    v34 = v5;
    sub_1C95EAFF8(v7, v13, type metadata accessor for DataProtectionValue);
    swift_endAccess();
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v18 = sub_1C96A6154();
    __swift_project_value_buffer(v18, qword_1EDB7AC00);
    sub_1C95EAF9C(v13, v11, type metadata accessor for DataProtectionValue);
    sub_1C96A53C4();
    v19 = sub_1C96A6134();
    v20 = sub_1C96A76A4();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v33 = v16;
      v22 = v21;
      v32 = swift_slowAlloc();
      v38[0] = v32;
      *v22 = 136446466;
      v23 = v35;
      *(v22 + 4) = sub_1C9484164(v35, v14, v38);
      *(v22 + 12) = 2082;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160);
      v31 = v20;
      sub_1C96A66E4();
      v24 = sub_1C96A7514();
      v26 = v25;
      sub_1C95EAF44(v11, type metadata accessor for DataProtectionValue);
      v27 = sub_1C9484164(v24, v26, v38);

      *(v22 + 14) = v27;
      _os_log_impl(&dword_1C945E000, v19, v31, "Remove expired device uuid %{public}s, last access timestamp: %{public}s", v22, 0x16u);
      v28 = v32;
      swift_arrayDestroy();
      MEMORY[0x1CCA8E3D0](v28, -1, -1);
      MEMORY[0x1CCA8E3D0](v22, -1, -1);
    }

    else
    {

      sub_1C95EAF44(v11, type metadata accessor for DataProtectionValue);
      v23 = v35;
    }

    v36 = v23;
    v37 = v14;
    swift_beginAccess();
    v29 = v34;
    sub_1C96A6B74();
    swift_endAccess();
    sub_1C9470AFC(v29, &qword_1EC3A6C98);
    return sub_1C95EAF44(v13, type metadata accessor for DataProtectionValue);
  }
}

void sub_1C95E68D0(uint64_t a1, unint64_t a2)
{
  sub_1C94874C0(a1, a2);
  v3 = sub_1C96A7E24();
  v4 = sub_1C96A7004();
  [v2 setObject:v3 forKey:{v4, a1, a2}];
  swift_unknownObjectRelease();
}

uint64_t sub_1C95E6954(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = (a1 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v20[2] = a2;
  (*(v7 + 24))(&v22, sub_1C95EB054, v20, MEMORY[0x1E6969080], v6, v7);
  v9 = v22;
  v8 = v23;
  v10 = MEMORY[0x1CCA8A1F0](v22, v23);
  swift_beginAccess();
  *a3 = v10;
  if (MEMORY[0x1CCA8A1F0](v9, v8) <= 10000)
  {
    sub_1C9482F3C(v9, v8);
    return 0;
  }

  else
  {
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v11 = sub_1C96A6154();
    __swift_project_value_buffer(v11, qword_1EDB7AC00);
    v12 = sub_1C96A6134();
    v13 = sub_1C96A76A4();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136446210;
      swift_beginAccess();
      v20[3] = *a3;
      v16 = sub_1C96A7DB4();
      v18 = sub_1C9484164(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1C945E000, v12, v13, "Data protection data size %{public}s bytes, skip pruning", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      MEMORY[0x1CCA8E3D0](v15, -1, -1);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
    }

    sub_1C9482F3C(v9, v8);

    return 1;
  }
}

uint64_t sub_1C95E6CFC@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1C96A6C24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v6, *MEMORY[0x1E6995280], v3);
  type metadata accessor for DataProtectionData();
  sub_1C946F908(&qword_1EDB7CA48, type metadata accessor for DataProtectionData);
  v7 = sub_1C96A6D14();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v10 = v7;
  v11 = v8;
  result = (*(v4 + 8))(v6, v3);
  *a1 = v10;
  a1[1] = v11;
  return result;
}

uint64_t sub_1C95E6E88@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v25 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5130);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v25 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v25 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5128);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = (v25 - v15);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5150);
  v25[0] = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v18 = v25 - v17;
  v19 = type metadata accessor for DataProtectionValue();
  sub_1C946F908(&qword_1EDB7C160, type metadata accessor for DataProtectionValue);
  v26 = v19;
  v27 = a1;
  sub_1C96A6BE4();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120);
  v28 = v18;
  v25[1] = v20;
  sub_1C96A6B84();
  while (1)
  {
    sub_1C96A6BB4();
    if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
    {
      break;
    }

    v21 = *(v5 + 48);
    v22 = v16[1];
    *v13 = *v16;
    v13[1] = v22;
    sub_1C95EAFF8(v16 + v21, v13 + v21, type metadata accessor for DataProtectionValue);
    sub_1C9470AA0(v13, v11, &qword_1EC3A5130);
    v23 = *(v5 + 48);
    sub_1C9470AA0(v13, v8, &qword_1EC3A5130);
    sub_1C95EAFF8(&v8[*(v5 + 48)], v4, type metadata accessor for DataProtectionValue);
    __swift_storeEnumTagSinglePayload(v4, 0, 1, v26);
    sub_1C96A6C14();
    sub_1C9470AFC(v13, &qword_1EC3A5130);

    sub_1C95EAF44(&v11[v23], type metadata accessor for DataProtectionValue);
  }

  return (*(v25[0] + 8))(v28, v29);
}

uint64_t CRDTDictionary.shallowCopy()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C96A7934();
  OUTLINED_FUNCTION_7(v5);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v42 - v7;
  v8 = *(a1 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v42 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v48 = &v42 - v17;
  OUTLINED_FUNCTION_15_4();
  v18 = sub_1C96A7934();
  OUTLINED_FUNCTION_7(v18);
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v58 = *(a1 + 32);
  v22 = *(a1 + 48);
  *&v23 = v8;
  *(&v23 + 1) = v4;
  v60 = v23;
  v61 = v58;
  v62 = v22;
  v56 = sub_1C96A6BC4();
  OUTLINED_FUNCTION_1();
  v42 = v24;
  OUTLINED_FUNCTION_71();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v42 - v26;
  v53 = a2;
  sub_1C96A6BE4();
  v54 = a1;
  v55 = v27;
  sub_1C96A6B84();
  v59 = v8;
  v46 = v8 - 8;
  v52 = v4;
  v45 = v4 - 8;
  v44 = v11 + 16;
  v43 = (v11 + 8);
  v47 = v21;
  v28 = (v11 + 16);
  while (1)
  {
    sub_1C96A6BB4();
    if (__swift_getEnumTagSinglePayload(v21, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v29 = *(TupleTypeMetadata2 + 48);
    *&v58 = *(v59 - 8);
    v30 = TupleTypeMetadata2;
    v31 = v48;
    (*(v58 + 32))(v48, v21, v59);
    v32 = v52;
    v33 = *(v52 - 8);
    v34 = *(v33 + 32);
    v34(&v31[v29], &v21[v29], v52);
    v35 = *v28;
    v36 = v49;
    (*v28)(v49, v31, v30);
    v57 = *(v30 + 48);
    v37 = v50;
    v35(v50, v31, v30);
    v38 = v51;
    v34(v51, &v37[*(v30 + 48)], v32);
    __swift_storeEnumTagSinglePayload(v38, 0, 1, v32);
    sub_1C96A6C14();
    v39 = v31;
    TupleTypeMetadata2 = v30;
    (*v43)(v39, v30);
    v40 = v37;
    v21 = v47;
    (*(v58 + 8))(v40, v59);
    (*(v33 + 8))(&v36[v57], v32);
  }

  return (*(v42 + 8))(v55, v56);
}

id sub_1C95E76AC(void *a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1C96A7364();
  if (!*MEMORY[0x1E695E300])
  {
    __break(1u);
  }

  sub_1C96A7024();
  v3 = sub_1C96A7004();

  v12[0] = 0;
  v4 = [a1 setResourceValue:v2 forKey:v3 error:v12];

  v5 = v12[0];
  if (!v4)
  {
LABEL_6:
    v11 = v5;
    sub_1C96A4584();

    return swift_willThrow();
  }

  v6 = v12[0];
  v7 = sub_1C96A7364();
  result = *MEMORY[0x1E695E308];
  if (*MEMORY[0x1E695E308])
  {
    sub_1C96A7024();
    v9 = sub_1C96A7004();

    v12[0] = 0;
    v10 = [a1 setResourceValue:v7 forKey:v9 error:v12];

    v5 = v12[0];
    if (v10)
    {
      return v12[0];
    }

    goto LABEL_6;
  }

  __break(1u);
  return result;
}

void sub_1C95E7818()
{
  v0 = sub_1C94AA700();
  v1 = swift_allocObject();
  swift_weakInit();
  v3[4] = sub_1C95EB12C;
  v3[5] = v1;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 1107296256;
  v3[2] = sub_1C9539FC4;
  v3[3] = &block_descriptor_42;
  v2 = _Block_copy(v3);

  [v0 wc:v2 synchronizeWithCompletionHandler:?];
  _Block_release(v2);
}

BOOL sub_1C95E78FC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
  sub_1C96A66E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120);
  sub_1C96A6C04();

  v3 = type metadata accessor for DataProtectionValue();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3))
  {
    sub_1C9470AFC(v2, &qword_1EC3A6C98);
    return 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160);
    sub_1C96A66E4();
    v5 = v6;
    sub_1C9470AFC(v2, &qword_1EC3A6C98);
    sub_1C96A66E4();
    return v6 - v5 > 86400.0;
  }
}

uint64_t sub_1C95E7A94@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = sub_1C96A6C24();
  OUTLINED_FUNCTION_1();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  type metadata accessor for DataProtectionData();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v15 = v14 - v13;
  swift_beginAccess();
  sub_1C95EAF9C(a1, v15, type metadata accessor for DataProtectionData);
  (*(v7 + 104))(v11, *MEMORY[0x1E6995280], v5);
  sub_1C946F908(&qword_1EDB7CA48, type metadata accessor for DataProtectionData);
  v16 = sub_1C96A6D14();
  if (v2)
  {
    (*(v7 + 8))(v11, v5);
    return OUTLINED_FUNCTION_7_33();
  }

  else
  {
    v19 = v16;
    v20 = v17;
    (*(v7 + 8))(v11, v5);
    result = OUTLINED_FUNCTION_7_33();
    *a2 = v19;
    a2[1] = v20;
  }

  return result;
}

uint64_t sub_1C95E7C88(void *a1, uint64_t a2)
{
  v4 = sub_1C96A6564();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C96A65E4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = *(result + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_iCloudUpdateQueue);

    v13 = swift_allocObject();
    *(v13 + 16) = a1;
    *(v13 + 24) = a2;
    aBlock[4] = sub_1C95EB184;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C946FCF8;
    aBlock[3] = &block_descriptor_48_0;
    v14 = _Block_copy(aBlock);
    v15 = a1;
    sub_1C96A3D04();
    sub_1C96A6594();
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C946F908(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
    v17 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
    sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370);
    sub_1C96A79E4();
    v16 = v18;
    MEMORY[0x1CCA8D100](0, v11, v7, v14);
    _Block_release(v14);

    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v17);
  }

  return result;
}

void sub_1C95E7FA4(void *a1)
{
  v2 = sub_1C96A6564();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C96A65E4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v10 = sub_1C96A6154();
    __swift_project_value_buffer(v10, qword_1EDB7AC00);
    v11 = a1;
    v24 = sub_1C96A6134();
    v12 = sub_1C96A7684();

    if (os_log_type_enabled(v24, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446210;
      aBlock[6] = a1;
      v15 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51A8);
      v16 = sub_1C96A70A4();
      v18 = sub_1C9484164(v16, v17, aBlock);

      *(v13 + 4) = v18;
      _os_log_impl(&dword_1C945E000, v24, v12, "Failed merge data due to %{public}s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
      MEMORY[0x1CCA8E3D0](v13, -1, -1);
    }

    else
    {
      v21 = v24;
    }
  }

  else
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v24 = *(Strong + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_iCloudUpdateQueue);
      aBlock[4] = sub_1C95EB18C;
      aBlock[5] = Strong;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C946FCF8;
      aBlock[3] = &block_descriptor_51;
      v23 = _Block_copy(aBlock);
      sub_1C96A3D04();
      sub_1C96A6594();
      v25 = MEMORY[0x1E69E7CC0];
      v22[1] = sub_1C946F908(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
      sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370);
      sub_1C96A79E4();
      v20 = v23;
      MEMORY[0x1CCA8D100](0, v9, v5, v23);
      _Block_release(v20);
      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
    }
  }
}

uint64_t sub_1C95E8414(void *a1)
{
  v2 = sub_1C96A4A54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DataProtectionValue();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C96A50E4();
  v9 = a1[3];
  if (v9)
  {
    v11 = a1[4];
    v10 = a1[5];
    v12 = a1[2];
    *&v8[*(v6 + 28)] = MEMORY[0x1E69E7CC8];
    v19 = v12;
    v20 = v9;
    sub_1C94AA6AC(v12, v9);
    sub_1C96A53C4();
    sub_1C96A66C4();
    v18 = v2;
    v19 = v11;
    v20 = v10;
    sub_1C96A53C4();
    sub_1C96A66C4();

    _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
    sub_1C96A49E4();
    v14 = v13;
    (*(v3 + 8))(v5, v18);
    v19 = v14;
    sub_1C96A66C4();
    sub_1C95E5304(v8);
    sub_1C95EAF44(v8, type metadata accessor for DataProtectionValue);
  }

  v15 = sub_1C94AA700();
  [v15 synchronize];

  return sub_1C96A50F4();
}

uint64_t sub_1C95E8678@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = type metadata accessor for DataProtectionData();
  MEMORY[0x1EEE9AC00](v1);
  v3 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C94AA700();
  v5 = sub_1C96A7004();
  v6 = [v4 dataForKey_];

  if (v6)
  {
    v7 = sub_1C96A4854();
    v9 = v8;

    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v10 = sub_1C96A6154();
    v11 = __swift_project_value_buffer(v10, qword_1EDB7AC00);
    sub_1C94874C0(v7, v9);
    v12 = sub_1C96A6134();
    v13 = sub_1C96A76A4();
    sub_1C9482F3C(v7, v9);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26[1] = v11;
      v16 = v15;
      v29 = v15;
      *v14 = 136446210;
      v28 = MEMORY[0x1CCA8A1F0](v7, v9);
      v17 = sub_1C96A7DB4();
      v19 = sub_1C9484164(v17, v18, &v29);

      *(v14 + 4) = v19;
      _os_log_impl(&dword_1C945E000, v12, v13, "DataProtectionData from encryptedStore with data size: %{public}s bytes", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1CCA8E3D0](v16, -1, -1);
      MEMORY[0x1CCA8E3D0](v14, -1, -1);
    }

    sub_1C94874C0(v7, v9);
    sub_1C946F908(&qword_1EDB7CA48, type metadata accessor for DataProtectionData);
    sub_1C96A6D24();
    sub_1C9482F3C(v7, v9);
    return sub_1C95EAFF8(v3, v27, type metadata accessor for DataProtectionData);
  }

  else
  {
    if (qword_1EDB7ABF8 != -1)
    {
      swift_once();
    }

    v20 = sub_1C96A6154();
    __swift_project_value_buffer(v20, qword_1EDB7AC00);
    v21 = sub_1C96A6134();
    v22 = sub_1C96A76A4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1C945E000, v21, v22, "There is no data in encryptedStore, create a default data", v23, 2u);
      MEMORY[0x1CCA8E3D0](v23, -1, -1);
    }

    type metadata accessor for DataProtectionValue();
    sub_1C946F908(&qword_1EDB7C160, type metadata accessor for DataProtectionValue);
    v24 = v27;
    result = sub_1C96A6BE4();
    *(v24 + *(v1 + 20)) = MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1C95E8C28(uint64_t a1)
{
  v2 = sub_1C96A6564();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C96A65E4();
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C96A42E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = sub_1C96A42D4();
  if (!v12)
  {
    v33 = 0u;
    v34 = 0u;
    goto LABEL_12;
  }

  v13 = v12;
  aBlock[6] = sub_1C96A7024();
  aBlock[7] = v14;
  sub_1C96A7A34();
  sub_1C94FA794(aBlock, v13);

  sub_1C950C50C(aBlock);
  if (!*(&v34 + 1))
  {
LABEL_12:
    sub_1C9470AFC(&v33, &qword_1EC3A4A90);
    goto LABEL_13;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5FC0);
  if (swift_dynamicCast())
  {
    v28 = v3;
    if (*(aBlock[0] + 16) == 1)
    {
      v15 = *(aBlock[0] + 40);
      v27 = *(aBlock[0] + 32);
      sub_1C96A53C4();

      if (v27 == 0xD000000000000011 && 0x80000001C96D3D80 == v15)
      {

LABEL_20:
        v27 = *(v29 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_iCloudUpdateQueue);
        v22 = swift_allocObject();
        swift_weakInit();
        (*(v10 + 16))(&v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
        v23 = (*(v10 + 80) + 24) & ~*(v10 + 80);
        v24 = swift_allocObject();
        *(v24 + 16) = v22;
        (*(v10 + 32))(v24 + v23, &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
        aBlock[4] = sub_1C95EB070;
        aBlock[5] = v24;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1C946FCF8;
        aBlock[3] = &block_descriptor_31;
        v25 = _Block_copy(aBlock);
        sub_1C96A3D04();
        sub_1C96A6594();
        *&v33 = MEMORY[0x1E69E7CC0];
        sub_1C946F908(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
        sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370);
        sub_1C96A79E4();
        MEMORY[0x1CCA8D100](0, v8, v5, v25);
        _Block_release(v25);
        (*(v28 + 8))(v5, v2);
        (*(v30 + 8))(v8, v31);

        return;
      }

      v17 = sub_1C96A7DE4();

      if (v17)
      {
        goto LABEL_20;
      }
    }

    else
    {
    }
  }

LABEL_13:
  if (qword_1EDB7ABF8 != -1)
  {
    swift_once();
  }

  v18 = sub_1C96A6154();
  __swift_project_value_buffer(v18, qword_1EDB7AC00);
  v19 = sub_1C96A6134();
  v20 = sub_1C96A76A4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_1C945E000, v19, v20, "Skip UBKVS update, unrelated", v21, 2u);
    MEMORY[0x1CCA8E3D0](v21, -1, -1);
  }
}

void sub_1C95E9200()
{
  v0 = objc_autoreleasePoolPush();
  sub_1C95E9260();

  objc_autoreleasePoolPop(v0);
}

uint64_t sub_1C95E9260()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C95E92D4();
  }

  return result;
}

uint64_t sub_1C95E92D4()
{
  v1 = v0;
  v2 = sub_1C96A6564();
  v127 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v125 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_1C96A65E4();
  v124 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v123 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6C98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v122 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5128);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v122 - v9;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5120);
  v137 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v138 = &v122 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5150);
  v139 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v154 = &v122 - v13;
  v135 = sub_1C96A4A54();
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v133 = &v122 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v153 = type metadata accessor for DataProtectionValue();
  MEMORY[0x1EEE9AC00](v153);
  v129 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v143 = &v122 - v17;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5130);
  MEMORY[0x1EEE9AC00](v155);
  v150 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v152 = (&v122 - v20);
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6CA0);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132);
  v22 = &v122 - v21;
  v142 = 0;
  v23 = type metadata accessor for DataProtectionData();
  MEMORY[0x1EEE9AC00](v23 - 8);
  v136 = &v122 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v147 = &v122 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v145 = &v122 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v122 - v30;
  v144 = *(v0 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_lock);
  sub_1C96A50E4();
  if (qword_1EDB7ABF8 != -1)
  {
    swift_once();
  }

  v140 = v12;
  v141 = v10;
  v146 = v7;
  v32 = sub_1C96A6154();
  v149 = __swift_project_value_buffer(v32, qword_1EDB7AC00);
  v33 = sub_1C96A6134();
  v34 = sub_1C96A76A4();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_1C945E000, v33, v34, "DataProtectionInformationManager receives NSUbiquitousKeyValueStoreExternallyNotification", v35, 2u);
    MEMORY[0x1CCA8E3D0](v35, -1, -1);
  }

  sub_1C95E8678(v31);
  v36 = sub_1C9469CB4(&qword_1EDB7ABA0, &qword_1EC3A5120);
  v37 = v148;
  v38 = sub_1C96A75D4();
  v39 = MEMORY[0x1E69E7CC0];
  v128 = v2;
  if (v38)
  {
    v40 = v38;
    v163 = MEMORY[0x1E69E7CC0];
    sub_1C94D5558(0, v38 & ~(v38 >> 63), 0);
    v39 = v163;
    v41 = v22;
    v42 = v31;
    sub_1C96A75C4();
    if (v40 < 0)
    {
      __break(1u);
LABEL_39:

      sub_1C9470AFC(v42, &qword_1EC3A5130);
      result = (*(v139 + 8))(v154, v37);
      __break(1u);
      return result;
    }

    v130 = v1;
    v151 = v36;
    do
    {
      v43 = sub_1C96A7624();
      v44 = v152;
      sub_1C9470AA0(v45, v152, &qword_1EC3A5130);
      v43(&aBlock, 0);
      aBlock = 0;
      v158 = 0xE000000000000000;
      MEMORY[0x1CCA8CB00](*v44, v44[1]);
      MEMORY[0x1CCA8CB00](2112032, 0xE300000000000000);
      sub_1C96A7B54();
      MEMORY[0x1CCA8CB00](10, 0xE100000000000000);
      v47 = aBlock;
      v46 = v158;
      sub_1C9470AFC(v44, &qword_1EC3A5130);
      v163 = v39;
      v49 = *(v39 + 16);
      v48 = *(v39 + 24);
      if (v49 >= v48 >> 1)
      {
        sub_1C94D5558((v48 > 1), v49 + 1, 1);
        v39 = v163;
      }

      *(v39 + 16) = v49 + 1;
      v50 = v39 + 16 * v49;
      *(v50 + 32) = v47;
      *(v50 + 40) = v46;
      sub_1C96A7604();
      --v40;
    }

    while (v40);
    (*(v131 + 8))(v41, v132);
    v1 = v130;
  }

  v51 = v153;
  v52 = v145;
  sub_1C95EAF9C(v31, v145, type metadata accessor for DataProtectionData);
  sub_1C96A53C4();
  v53 = sub_1C96A6134();
  v54 = sub_1C96A76A4();

  v55 = os_log_type_enabled(v53, v54);
  v153 = v39;
  if (v55)
  {
    v56 = v1;
    v57 = v51;
    v58 = v52;
    v59 = swift_slowAlloc();
    v152 = swift_slowAlloc();
    aBlock = v152;
    *v59 = 136446723;
    v163 = sub_1C96A6BA4();
    v60 = sub_1C96A7DB4();
    v61 = v31;
    v63 = v62;
    v64 = v58;
    v51 = v57;
    v1 = v56;
    sub_1C95EAF44(v64, type metadata accessor for DataProtectionData);
    v65 = sub_1C9484164(v60, v63, &aBlock);

    *(v59 + 4) = v65;
    *(v59 + 12) = 2160;
    *(v59 + 14) = 1752392040;
    *(v59 + 22) = 2081;
    v66 = MEMORY[0x1CCA8CC40](v39, MEMORY[0x1E69E6158]);
    v68 = sub_1C9484164(v66, v67, &aBlock);

    *(v59 + 24) = v68;
    v31 = v61;
    _os_log_impl(&dword_1C945E000, v53, v54, "Data protection content[%{public}s]: %{private,mask.hash}s", v59, 0x20u);
    v69 = v152;
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v69, -1, -1);
    MEMORY[0x1CCA8E3D0](v59, -1, -1);
  }

  else
  {

    sub_1C95EAF44(v52, type metadata accessor for DataProtectionData);
  }

  v70 = v1[3];
  if (v70)
  {
    v72 = v1[4];
    v71 = v1[5];
    v73 = v1[2];
    v74 = v143;
    *(v143 + *(v51 + 28)) = MEMORY[0x1E69E7CC8];
    aBlock = v73;
    v158 = v70;
    sub_1C94AA6AC(v73, v70);
    sub_1C96A53C4();
    sub_1C96A66C4();
    aBlock = v72;
    v158 = v71;
    sub_1C96A53C4();
    sub_1C96A66C4();

    v75 = v133;
    _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
    sub_1C96A49E4();
    v77 = v76;
    (*(v134 + 8))(v75, v135);
    aBlock = v77;
    sub_1C96A66C4();
    sub_1C95E5304(v74);
    sub_1C95EAF44(v74, type metadata accessor for DataProtectionValue);
    v78 = v147;
    sub_1C95E8678(v147);
    v79 = v136;
    sub_1C95EAF9C(v78, v136, type metadata accessor for DataProtectionData);
    v80 = sub_1C96A6134();
    v81 = sub_1C96A76A4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      aBlock = v83;
      *v82 = 141558275;
      *(v82 + 4) = 1752392040;
      *(v82 + 12) = 2081;
      v84 = v148;
      v163 = sub_1C96A6BA4();
      v85 = sub_1C96A7DB4();
      v86 = v79;
      v87 = v31;
      v89 = v88;
      sub_1C95EAF44(v86, type metadata accessor for DataProtectionData);
      v90 = sub_1C9484164(v85, v89, &aBlock);
      v31 = v87;

      *(v82 + 14) = v90;
      _os_log_impl(&dword_1C945E000, v80, v81, "Updated data protection data contains: %{private,mask.hash}s entries:", v82, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v83);
      MEMORY[0x1CCA8E3D0](v83, -1, -1);
      MEMORY[0x1CCA8E3D0](v82, -1, -1);

      v2 = v142;
    }

    else
    {

      sub_1C95EAF44(v79, type metadata accessor for DataProtectionData);
      v2 = v142;
      v84 = v148;
    }

    v91 = v141;
    (*(v137 + 16))(v138, v147, v84);
    sub_1C9469CB4(&qword_1EDB7ABA8, &qword_1EC3A5120);
    sub_1C96A71F4();
    sub_1C9469CB4(&qword_1EDB7ABB8, &qword_1EC3A5150);
    v37 = v140;
    while (1)
    {
      sub_1C96A7944();
      if (__swift_getEnumTagSinglePayload(v91, 1, v155) == 1)
      {
        break;
      }

      v42 = v150;
      sub_1C951A67C(v91, v150);
      sub_1C95EA908(v42);
      if (v2)
      {
        goto LABEL_39;
      }

      sub_1C9470AFC(v42, &qword_1EC3A5130);
    }

    (*(v139 + 8))(v154, v37);
    sub_1C95EAF44(v147, type metadata accessor for DataProtectionData);
  }

  else
  {
  }

  v92 = *(v1 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID + 8);
  v93 = v146;
  if (!v92 || v1[3])
  {
    sub_1C96A50F4();
    v94 = sub_1C96A6134();
    v95 = sub_1C96A76A4();
    if (!os_log_type_enabled(v94, v95))
    {
LABEL_30:

      return sub_1C95EAF44(v31, type metadata accessor for DataProtectionData);
    }

    v96 = swift_slowAlloc();
    *v96 = 0;
    v97 = "dataProtectionEntry already exist skip update.";
LABEL_29:
    _os_log_impl(&dword_1C945E000, v94, v95, v97, v96, 2u);
    MEMORY[0x1CCA8E3D0](v96, -1, -1);
    goto LABEL_30;
  }

  aBlock = *(v1 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_deviceUUID);
  v158 = v92;
  sub_1C96A6C04();
  if (__swift_getEnumTagSinglePayload(v93, 1, v51) == 1)
  {
    sub_1C9470AFC(v93, &qword_1EC3A6C98);
    sub_1C96A50F4();
    v94 = sub_1C96A6134();
    v95 = sub_1C96A76A4();
    if (!os_log_type_enabled(v94, v95))
    {
      goto LABEL_30;
    }

    v96 = swift_slowAlloc();
    *v96 = 0;
    v97 = "NSUbiquitousKeyValueStore doesn't contain data protection value for this device, skip update.";
    goto LABEL_29;
  }

  v155 = v31;
  v99 = v129;
  sub_1C95EAFF8(v93, v129, type metadata accessor for DataProtectionValue);
  v100 = v143;
  sub_1C95EAF9C(v99, v143, type metadata accessor for DataProtectionValue);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5158);
  sub_1C96A66E4();
  v102 = aBlock;
  v101 = v158;
  sub_1C96A66E4();
  sub_1C95EAF44(v100, type metadata accessor for DataProtectionValue);
  v104 = aBlock;
  v103 = v158;
  v105 = v1[2];
  v106 = v1[3];
  v1[2] = v102;
  v1[3] = v101;
  v1[4] = v104;
  v1[5] = v103;
  sub_1C96A53C4();
  sub_1C96A53C4();
  sub_1C94AA668(v105, v106);
  v107 = OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_observers;
  swift_beginAccess();
  v108 = *(v1 + v107);
  sub_1C96A53C4();
  sub_1C95E2B70(v102, v101, v104, v103);
  sub_1C96A53C4();
  sub_1C96A53C4();
  v109 = sub_1C96A6134();
  v110 = sub_1C96A76A4();

  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    v112 = swift_slowAlloc();
    v156 = v112;
    aBlock = v102;
    *v111 = 141558275;
    *(v111 + 4) = 1752392040;
    *(v111 + 12) = 2081;
    v158 = v101;
    v159 = v104;
    v160 = v103;
    v113 = sub_1C96A70A4();
    v115 = sub_1C9484164(v113, v114, &v156);

    *(v111 + 14) = v115;
    _os_log_impl(&dword_1C945E000, v109, v110, "Updated data protection entry:%{private,mask.hash}s", v111, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v112);
    MEMORY[0x1CCA8E3D0](v112, -1, -1);
    MEMORY[0x1CCA8E3D0](v111, -1, -1);
  }

  else
  {
  }

  sub_1C96A50F4();
  v116 = swift_allocObject();
  swift_weakInit();
  v117 = swift_allocObject();
  *(v117 + 16) = v116;
  *(v117 + 24) = v108;
  v161 = sub_1C95EB0D0;
  v162 = v117;
  aBlock = MEMORY[0x1E69E9820];
  v158 = 1107296256;
  v159 = sub_1C946FCF8;
  v160 = &block_descriptor_38;
  v118 = _Block_copy(&aBlock);
  sub_1C96A3D04();
  v119 = v123;
  sub_1C96A6594();
  v156 = MEMORY[0x1E69E7CC0];
  sub_1C946F908(&qword_1EDB7CF40, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC3A5370);
  sub_1C9469CB4(&qword_1EDB7CE80, &unk_1EC3A5370);
  v120 = v125;
  v121 = v128;
  sub_1C96A79E4();
  MEMORY[0x1CCA8D100](0, v119, v120, v118);
  _Block_release(v118);
  (*(v127 + 8))(v120, v121);
  (*(v124 + 8))(v119, v126);
  sub_1C95EAF44(v129, type metadata accessor for DataProtectionValue);
  sub_1C95EAF44(v155, type metadata accessor for DataProtectionData);
}

void sub_1C95EA908(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5130);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = v25 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v25 - v10;
  if (qword_1EDB7ABF8 != -1)
  {
    swift_once();
  }

  v12 = sub_1C96A6154();
  __swift_project_value_buffer(v12, qword_1EDB7AC00);
  sub_1C9470AA0(a1, v11, &qword_1EC3A5130);
  sub_1C9470AA0(a1, v8, &qword_1EC3A5130);
  v13 = sub_1C96A6134();
  v14 = sub_1C96A76A4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v25[0] = swift_slowAlloc();
    v26 = v25[0];
    *v15 = 141558531;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2081;
    sub_1C951A67C(v11, v5);
    v25[1] = v1;
    v16 = *v5;
    v17 = v5[1];
    sub_1C95EAF44(v5 + *(v3 + 48), type metadata accessor for DataProtectionValue);
    v18 = sub_1C9484164(v16, v17, &v26);

    *(v15 + 14) = v18;
    *(v15 + 22) = 2082;
    sub_1C9470AA0(v8, v5, &qword_1EC3A5130);

    v19 = v5 + *(v3 + 48);
    type metadata accessor for DataProtectionValue();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A5160);
    sub_1C96A66E4();
    sub_1C95EAF44(v19, type metadata accessor for DataProtectionValue);
    v20 = sub_1C96A7514();
    v22 = v21;
    sub_1C9470AFC(v8, &qword_1EC3A5130);
    v23 = sub_1C9484164(v20, v22, &v26);

    *(v15 + 24) = v23;
    _os_log_impl(&dword_1C945E000, v13, v14, "Device ID: %{private,mask.hash}s - timestamp: %{public}s)", v15, 0x20u);
    v24 = v25[0];
    swift_arrayDestroy();
    MEMORY[0x1CCA8E3D0](v24, -1, -1);
    MEMORY[0x1CCA8E3D0](v15, -1, -1);
  }

  else
  {

    sub_1C9470AFC(v8, &qword_1EC3A5130);
    sub_1C9470AFC(v11, &qword_1EC3A5130);
  }
}

uint64_t sub_1C95EAC90(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    result = sub_1C946D04C();
    v5 = result;
    for (i = 0; ; ++i)
    {
      if (v5 == i)
      {
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        result = MEMORY[0x1CCA8D440](i, a2);
      }

      else
      {
        if (i >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        result = sub_1C96A3D04();
      }

      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_1C95E2AB4(v4);
    }

    __break(1u);
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_1C95EAD7C()
{
  sub_1C94AA668(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_storeURL;
  sub_1C96A4764();
  OUTLINED_FUNCTION_6();
  (*(v2 + 8))(v0 + v1);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + OBJC_IVAR____TtC11WeatherCore32DataProtectionInformationManager_coherenceContextProvider);

  return v0;
}

uint64_t sub_1C95EAE4C()
{
  sub_1C95EAD7C();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C95EAEC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataProtectionData();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C95EAF44(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_6();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C95EAF9C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

uint64_t sub_1C95EAFF8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_6();
  v4 = OUTLINED_FUNCTION_11();
  v5(v4);
  return a2;
}

void sub_1C95EB070()
{
  v0 = sub_1C96A42E4();
  OUTLINED_FUNCTION_7(v0);

  sub_1C95E9200();
}

unint64_t sub_1C95EB0D8()
{
  result = qword_1EC3A6CA8;
  if (!qword_1EC3A6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6CA8);
  }

  return result;
}

uint64_t objectdestroy_34Tm(void (*a1)(void), void (*a2)(void))
{
  a1(*(v2 + 16));
  a2(*(v2 + 24));
  v4 = OUTLINED_FUNCTION_10_0();

  return MEMORY[0x1EEE6BDD0](v4, v5, v6);
}

uint64_t objectdestroy_17Tm(void (*a1)(void))
{

  a1(*(v1 + 32));

  return MEMORY[0x1EEE6BDD0](v1, 40, 7);
}

unint64_t sub_1C95EB204()
{
  result = qword_1EC3A6CB0;
  if (!qword_1EC3A6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6CB0);
  }

  return result;
}

uint64_t static WeatherAlertEntity.version.getter()
{
  swift_beginAccess();
  sub_1C96A53C4();
  return OUTLINED_FUNCTION_117();
}

uint64_t static WeatherAlertEntity.version.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *a004_1 = a1;
  qword_1EC3A6CC0 = a2;
}

uint64_t (*static WeatherAlertEntity.version.modify())()
{
  OUTLINED_FUNCTION_117();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C95EB3CC@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EC3A6CC0;
  *a1 = *a004_1;
  a1[1] = v2;
  return sub_1C96A53C4();
}

uint64_t sub_1C95EB41C(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *a004_1 = v2;
  qword_1EC3A6CC0 = v1;
  sub_1C96A53C4();
}

uint64_t WeatherAlertEntity.boundingBox.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A51E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1C96AC330;
  result = sub_1C96A6354();
  if (v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  *(v0 + 32) = v8;
  result = sub_1C96A6354();
  if (v7)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  *(v0 + 40) = v6;
  result = sub_1C96A6354();
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  *(v0 + 48) = v4;
  result = sub_1C96A6354();
  if ((v3 & 1) == 0)
  {
    *(v0 + 56) = v2;
    return v0;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t WeatherAlertEntity.init()@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B0);
  v4 = OUTLINED_FUNCTION_7(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2();
  v68[1] = v5 - v6;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v68[0] = v68 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B8);
  v10 = OUTLINED_FUNCTION_7(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v68 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v15 = OUTLINED_FUNCTION_7(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_41_1();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v18 = OUTLINED_FUNCTION_7(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_13_32();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  *a1 = OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_13_32();
  OUTLINED_FUNCTION_34_0();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[1] = OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_13_32();
  OUTLINED_FUNCTION_34_0();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[2] = OUTLINED_FUNCTION_39_5();
  OUTLINED_FUNCTION_13_32();
  OUTLINED_FUNCTION_34_0();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[3] = OUTLINED_FUNCTION_39_5();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v20 = *MEMORY[0x1E69D61F8];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  (*(v22 + 104))(v1, v20, v21);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v21);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[4] = sub_1C96A6344();
  *v13 = 0xC066800000000000;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C0);
  OUTLINED_FUNCTION_6();
  v31 = *(v30 + 104);
  v32 = OUTLINED_FUNCTION_28_12();
  v31(v32);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v29);
  v36 = OUTLINED_FUNCTION_21_0();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a1[5] = OUTLINED_FUNCTION_19_18();
  *v13 = 0xC056800000000000;
  v39 = OUTLINED_FUNCTION_28_12();
  v31(v39);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v29);
  v43 = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_18_4(v43, v44, v45);
  OUTLINED_FUNCTION_1_1();
  a1[6] = OUTLINED_FUNCTION_19_18();
  *v13 = 0x4066800000000000;
  v46 = OUTLINED_FUNCTION_28_12();
  v31(v46);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v29);
  v50 = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_18_4(v50, v51, v52);
  OUTLINED_FUNCTION_1_1();
  a1[7] = OUTLINED_FUNCTION_19_18();
  *v13 = 0x4056800000000000;
  v53 = OUTLINED_FUNCTION_28_12();
  v31(v53);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v29);
  v57 = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_18_4(v57, v58, v59);
  OUTLINED_FUNCTION_1_1();
  a1[8] = OUTLINED_FUNCTION_19_18();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v61, v62, v63, v60);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v64, v65, v66, v60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  result = sub_1C96A6344();
  a1[9] = result;
  return result;
}

uint64_t WeatherAlertEntity.init(alertIdentifier:messageIdentifier:channelIdentifier:boundingBox:relevant:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>)
{
  v103 = a8;
  v112 = a7;
  v113 = a1;
  v117 = a5;
  v118 = a6;
  v115 = a3;
  v116 = a4;
  v114 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B0);
  v11 = OUTLINED_FUNCTION_7(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v111 = v12 - v13;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v14);
  v110 = &v102[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B8);
  v17 = OUTLINED_FUNCTION_7(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v102[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v22 = OUTLINED_FUNCTION_7(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  v105 = v23 - v24;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v102[-v26];
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v29 = OUTLINED_FUNCTION_7(v28);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_41_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_15_26();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  v31 = OUTLINED_FUNCTION_42_8();
  *a9 = v31;
  v109 = v31;
  OUTLINED_FUNCTION_15_26();
  OUTLINED_FUNCTION_40_1();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  v32 = OUTLINED_FUNCTION_42_8();
  a9[1] = v32;
  v108 = v32;
  OUTLINED_FUNCTION_15_26();
  OUTLINED_FUNCTION_40_1();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  v33 = OUTLINED_FUNCTION_42_8();
  a9[2] = v33;
  v107 = v33;
  OUTLINED_FUNCTION_15_26();
  OUTLINED_FUNCTION_40_1();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  v106 = OUTLINED_FUNCTION_42_8();
  a9[3] = v106;
  sub_1C96A3D04();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v34 = *MEMORY[0x1E69D61F8];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  (*(v36 + 104))(v27, v34, v35);
  OUTLINED_FUNCTION_11_28();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v41, v42, v43, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  a9[4] = sub_1C96A6344();
  *v20 = 0xC066800000000000;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C0);
  OUTLINED_FUNCTION_6();
  v47 = *(v46 + 104);
  (v47)(v20, v34, v45);
  OUTLINED_FUNCTION_11_28();
  __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_99();
  v56 = sub_1C96A6344();
  a9[5] = v56;
  v57 = OUTLINED_FUNCTION_26_10(0xC056800000000000);
  v47(v57);
  OUTLINED_FUNCTION_11_28();
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v62, v63, v64, v65);
  OUTLINED_FUNCTION_34_8();
  v105 = v56;
  sub_1C96A3D04();
  OUTLINED_FUNCTION_2_52();
  v66 = sub_1C96A6344();
  a9[6] = v66;
  v67 = OUTLINED_FUNCTION_26_10(0x4066800000000000);
  v47(v67);
  OUTLINED_FUNCTION_11_28();
  __swift_storeEnumTagSinglePayload(v68, v69, v70, v71);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v72, v73, v74, v75);
  OUTLINED_FUNCTION_34_8();
  v104 = v66;
  sub_1C96A3D04();
  OUTLINED_FUNCTION_2_52();
  a9[7] = sub_1C96A6344();
  v76 = OUTLINED_FUNCTION_26_10(0x4056800000000000);
  v47(v76);
  OUTLINED_FUNCTION_11_28();
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v80);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v81, v82, v83, v84);
  OUTLINED_FUNCTION_34_8();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_2_52();
  a9[8] = sub_1C96A6344();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D0);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  sub_1C96A3D04();
  OUTLINED_FUNCTION_1_0();
  a9[9] = sub_1C96A6344();
  v93 = objc_allocWithZone(MEMORY[0x1E696AFB0]);
  sub_1C96A3D04();
  v94 = [v93 init];
  v95 = [v94 UUIDString];

  v96 = sub_1C96A7024();
  v98 = v97;

  v119 = v96;
  v120 = v98;
  v99 = v112;
  sub_1C96A6364();

  v119 = v113;
  v120 = v114;
  sub_1C96A6364();

  v119 = v115;
  v120 = v116;
  sub_1C96A6364();

  v119 = v117;
  v120 = v118;
  sub_1C96A6364();

  if (!v99[2])
  {
    __break(1u);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_16_24(v99[4]);
  sub_1C96A6364();

  if (v99[2] < 2uLL)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_16_24(v99[5]);
  sub_1C96A6364();

  if (v99[2] < 3uLL)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_16_24(v99[6]);
  sub_1C96A6364();

  if (v99[2] >= 4uLL)
  {
    v101 = v99[7];

    v119 = v101;
    LOBYTE(v120) = 0;
    sub_1C96A6364();

    LOBYTE(v119) = v103 & 1;
    sub_1C96A6364();
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1C95EC190(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C96A7DE4() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6564497472656C61 && a2 == 0xEF7265696669746ELL;
    if (v6 || (sub_1C96A7DE4() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001C96CC4E0 == a2;
      if (v7 || (sub_1C96A7DE4() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000011 && 0x80000001C96D3DA0 == a2;
        if (v8 || (sub_1C96A7DE4() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x64657461657263 && a2 == 0xE700000000000000;
          if (v9 || (sub_1C96A7DE4() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x74614C6E696DLL && a2 == 0xE600000000000000;
            if (v10 || (sub_1C96A7DE4() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x676E6F4C6E696DLL && a2 == 0xE700000000000000;
              if (v11 || (sub_1C96A7DE4() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x74614C78616DLL && a2 == 0xE600000000000000;
                if (v12 || (sub_1C96A7DE4() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x676E6F4C78616DLL && a2 == 0xE700000000000000;
                  if (v13 || (sub_1C96A7DE4() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x746E6176656C6572 && a2 == 0xE800000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1C96A7DE4();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_1C95EC4A0(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      return 0x6564497472656C61;
    case 2:
      return 0xD000000000000011;
    case 3:
      return 0xD000000000000011;
    case 4:
      return 0x64657461657263;
    case 5:
      v3 = 1282304365;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x746100000000;
    case 6:
      v4 = 1282304365;
      goto LABEL_13;
    case 7:
      v3 = 1282957677;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x746100000000;
    case 8:
      v4 = 1282957677;
LABEL_13:
      result = v4 | 0x676E6F00000000;
      break;
    case 9:
      result = 0x746E6176656C6572;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C95EC5A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C95EC190(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C95EC5D0(uint64_t a1)
{
  v2 = sub_1C95ECA0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C95EC60C(uint64_t a1)
{
  v2 = sub_1C95ECA0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherAlertEntity.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6CC8);
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v2);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C95ECA0C();
  sub_1C96A3D04();
  sub_1C96A7F54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_0_8();
  sub_1C9469CB4(v3, &qword_1EC3A4AD8);
  sub_1C96A7D74();
  if (v12)
  {

    v4 = OUTLINED_FUNCTION_117();
    return v5(v4);
  }

  else
  {

    OUTLINED_FUNCTION_4_47(1);
    sub_1C96A7D74();
    OUTLINED_FUNCTION_4_47(2);
    sub_1C96A7D74();
    OUTLINED_FUNCTION_4_47(3);
    sub_1C96A7D74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
    OUTLINED_FUNCTION_0_8();
    sub_1C9469CB4(v7, &qword_1EC3A4D70);
    OUTLINED_FUNCTION_35_0();
    sub_1C96A7D74();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C8);
    OUTLINED_FUNCTION_0_8();
    sub_1C9469CB4(v8, &qword_1EC3A54C8);
    OUTLINED_FUNCTION_35_0();
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_47(6);
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_47(7);
    OUTLINED_FUNCTION_41_8();
    OUTLINED_FUNCTION_4_47(8);
    OUTLINED_FUNCTION_41_8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D8);
    OUTLINED_FUNCTION_0_8();
    sub_1C9469CB4(v9, &qword_1EC3A54D8);
    OUTLINED_FUNCTION_35_0();
    sub_1C96A7D74();
    v10 = OUTLINED_FUNCTION_117();
    return v11(v10);
  }
}

unint64_t sub_1C95ECA0C()
{
  result = qword_1EC3A6CD0;
  if (!qword_1EC3A6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3A6CD0);
  }

  return result;
}

uint64_t WeatherAlertEntity.init(from:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v131 = a1;
  v129[0] = a2;
  v129[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A6CD8);
  OUTLINED_FUNCTION_1();
  v129[2] = v3;
  MEMORY[0x1EEE9AC00](v4);
  v140 = v129 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B0);
  v7 = OUTLINED_FUNCTION_7(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v129[5] = (v8 - v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v129[4] = v129 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54B8);
  v13 = OUTLINED_FUNCTION_7(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_41_1();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D60);
  v16 = OUTLINED_FUNCTION_7(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v17);
  v19 = v129 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AC8);
  v21 = OUTLINED_FUNCTION_7(v20);
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD0);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v23);
  v27 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v23);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4AD8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_6_2();
  OUTLINED_FUNCTION_99();
  v130 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v23);
  v33 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v23);
  OUTLINED_FUNCTION_40_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_99();
  v139 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v23);
  v39 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v23);
  OUTLINED_FUNCTION_40_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_99();
  v138 = sub_1C96A6344();
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v23);
  v45 = OUTLINED_FUNCTION_19_0();
  __swift_storeEnumTagSinglePayload(v45, v46, v47, v23);
  OUTLINED_FUNCTION_40_1();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  OUTLINED_FUNCTION_99();
  v136 = sub_1C96A6344();
  _s11WeatherCore11SystemClockV4time10Foundation4DateVvg_0();
  v48 = *MEMORY[0x1E69D61F8];
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D68);
  OUTLINED_FUNCTION_6();
  (*(v50 + 104))(v19, v48, v49);
  OUTLINED_FUNCTION_48();
  __swift_storeEnumTagSinglePayload(v51, v52, v53, v49);
  OUTLINED_FUNCTION_3();
  __swift_storeEnumTagSinglePayload(v54, v55, v56, v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A4D70);
  OUTLINED_FUNCTION_9_2();
  v129[1] = v57;
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v58 = sub_1C96A6344();
  OUTLINED_FUNCTION_35_6(v58, &v157);
  *v2 = v59 & 0xFFFFFFFFFFFFLL | 0xC066000000000000;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C0);
  OUTLINED_FUNCTION_6();
  v62 = *(v61 + 104);
  v62(v2, v48, v60);
  OUTLINED_FUNCTION_11_28();
  __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v67, v68, v69, v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54C8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v71 = OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_35_6(v71, &v156);
  v73 = OUTLINED_FUNCTION_27_13(v72 & 0xFFFFFFFFFFFFLL | 0xC056000000000000);
  (v62)(v73);
  OUTLINED_FUNCTION_11_28();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v81);
  OUTLINED_FUNCTION_34_0();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v82 = OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_35_6(v82, &v155);
  v84 = OUTLINED_FUNCTION_27_13(v83 & 0xFFFFFFFFFFFFLL | 0x4066000000000000);
  (v62)(v84);
  OUTLINED_FUNCTION_11_28();
  __swift_storeEnumTagSinglePayload(v85, v86, v87, v88);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v92);
  OUTLINED_FUNCTION_34_0();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v93 = OUTLINED_FUNCTION_43_10();
  OUTLINED_FUNCTION_35_6(v93, &v154);
  v95 = OUTLINED_FUNCTION_27_13(v94 & 0xFFFFFFFFFFFFLL | 0x4056000000000000);
  (v62)(v95);
  v96 = v131;
  OUTLINED_FUNCTION_11_28();
  __swift_storeEnumTagSinglePayload(v97, v98, v99, v100);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v101, v102, v103, v104);
  OUTLINED_FUNCTION_34_0();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v132 = OUTLINED_FUNCTION_43_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D0);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v105, v106, v107, v108);
  OUTLINED_FUNCTION_12_1();
  __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC3A54D8);
  OUTLINED_FUNCTION_9_2();
  swift_allocObject();
  OUTLINED_FUNCTION_1_1();
  v113 = sub_1C96A6344();
  __swift_project_boxed_opaque_existential_1(v96, v96[3]);
  sub_1C95ECA0C();
  v114 = v129[6];
  sub_1C96A7F44();
  if (v114)
  {
    v115 = v130;
    v116 = v136;
    __swift_destroy_boxed_opaque_existential_1Tm(v96);
    v143 = v115;
    v144 = v139;
    v145 = v138;
    v146 = v116;
    v147 = v137;
    v148 = v135;
    v149 = v134;
    v150 = v133;
    v151 = v132;
    v152 = v113;
  }

  else
  {
    LOBYTE(__src[0]) = 0;
    OUTLINED_FUNCTION_5(&qword_1EC3A4B18, &qword_1EC3A4AD8);
    OUTLINED_FUNCTION_6_41();
    sub_1C96A7CB4();

    v118 = v143;
    LOBYTE(__src[0]) = 1;
    OUTLINED_FUNCTION_6_41();
    sub_1C96A7CB4();

    v139 = v143;
    LOBYTE(__src[0]) = 2;
    OUTLINED_FUNCTION_6_41();
    OUTLINED_FUNCTION_22_18();

    v138 = v143;
    LOBYTE(__src[0]) = 3;
    OUTLINED_FUNCTION_6_41();
    OUTLINED_FUNCTION_22_18();

    v119 = v143;
    LOBYTE(__src[0]) = 4;
    OUTLINED_FUNCTION_5(&qword_1EC3A4E00, &qword_1EC3A4D70);
    OUTLINED_FUNCTION_22_18();
    v136 = v119;

    v137 = v143;
    LOBYTE(__src[0]) = 5;
    OUTLINED_FUNCTION_5(&qword_1EC3A5508, &qword_1EC3A54C8);
    OUTLINED_FUNCTION_7_34();

    v135 = v143;
    LOBYTE(__src[0]) = 6;
    OUTLINED_FUNCTION_7_34();

    v134 = v143;
    LOBYTE(__src[0]) = 7;
    OUTLINED_FUNCTION_7_34();

    v133 = v143;
    LOBYTE(__src[0]) = 8;
    OUTLINED_FUNCTION_7_34();

    v132 = v143;
    v142 = 9;
    OUTLINED_FUNCTION_5(&qword_1EC3A5510, &qword_1EC3A54D8);
    OUTLINED_FUNCTION_22_18();
    v120 = OUTLINED_FUNCTION_18_24();
    v121(v120);

    v140 = v153;
    v122 = v139;
    __src[0] = v118;
    __src[1] = v139;
    v123 = v138;
    v124 = v136;
    __src[2] = v138;
    __src[3] = v136;
    v125 = v137;
    v126 = v135;
    __src[4] = v137;
    __src[5] = v135;
    v127 = v134;
    v128 = v133;
    __src[6] = v134;
    __src[7] = v133;
    __src[8] = v132;
    __src[9] = v153;
    memcpy(v129[0], __src, 0x50uLL);
    sub_1C95ED524(__src, &v143);
    __swift_destroy_boxed_opaque_existential_1Tm(v131);
    v143 = v118;
    v144 = v122;
    v145 = v123;
    v146 = v124;
    v147 = v125;
    v148 = v126;
    v149 = v127;
    v150 = v128;
    v151 = v132;
    v152 = v140;
  }

  return sub_1C95ED4F4(&v143);
}

unint64_t sub_1C95ED560()
{
  result = qword_1EDB7C980;
  if (!qword_1EDB7C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C980);
  }

  return result;
}

unint64_t sub_1C95ED5B8()
{
  result = qword_1EDB7C998[0];
  if (!qword_1EDB7C998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB7C998);
  }

  return result;
}

unint64_t sub_1C95ED610()
{
  result = qword_1EDB7C970;
  if (!qword_1EDB7C970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C970);
  }

  return result;
}

unint64_t sub_1C95ED664()
{
  result = qword_1EDB7C978;
  if (!qword_1EDB7C978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB7C978);
  }

  return result;
}