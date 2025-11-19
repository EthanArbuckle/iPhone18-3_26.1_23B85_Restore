uint64_t sub_1B61B8D94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000010 && 0x80000001B623F7B0 == a2;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x70736944676E6F6CLL && a2 == 0xEF656D614E79616CLL;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C79616C70736964 && a2 == 0xEC0000006C656261;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x65676175676E616CLL && a2 == 0xE800000000000000;
            if (v10 || (sub_1B6221F24() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
              if (v11 || (sub_1B6221F24() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 6910305 && a2 == 0xE300000000000000)
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

uint64_t sub_1B61B9024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61B8D94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61B904C(uint64_t a1)
{
  v2 = sub_1B6052D0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61B9088(uint64_t a1)
{
  v2 = sub_1B6052D0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AirQualityScale.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927448);
  OUTLINED_FUNCTION_5_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - v7;
  v9 = *(v1 + 24);
  v19[10] = *(v1 + 16);
  v19[9] = v9;
  v10 = *(v1 + 40);
  v19[8] = *(v1 + 32);
  v19[7] = v10;
  v11 = *(v1 + 56);
  v19[6] = *(v1 + 48);
  v19[5] = v11;
  v12 = *(v1 + 72);
  v19[3] = *(v1 + 64);
  v19[4] = v12;
  v13 = *(v1 + 88);
  v19[1] = *(v1 + 80);
  v19[2] = v13;
  v19[0] = *(v1 + 96);
  v29 = *(v1 + 104);
  v14 = *(v1 + 112);
  v15 = *(v1 + 128);
  v16 = *(v1 + 160);
  v27 = *(v1 + 144);
  v28 = v16;
  v25 = v14;
  v26 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6052D0C();
  sub_1B62220F4();
  LOBYTE(v21) = 0;
  v17 = v19[11];
  sub_1B6221E24();
  if (v17)
  {
    return (*(v5 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_3_49(1);
  OUTLINED_FUNCTION_1_65();
  sub_1B6221E24();
  OUTLINED_FUNCTION_3_49(2);
  OUTLINED_FUNCTION_1_65();
  sub_1B6221E24();
  OUTLINED_FUNCTION_3_49(3);
  OUTLINED_FUNCTION_1_65();
  sub_1B6221E24();
  OUTLINED_FUNCTION_3_49(4);
  OUTLINED_FUNCTION_1_65();
  sub_1B6221E24();
  OUTLINED_FUNCTION_3_49(5);
  OUTLINED_FUNCTION_1_65();
  sub_1B6221E24();
  OUTLINED_FUNCTION_3_49(6);
  OUTLINED_FUNCTION_1_65();
  sub_1B6221E64();
  v21 = v25;
  v22 = v26;
  v23 = v27;
  v24 = v28;
  v30 = 7;
  sub_1B605DD30(&v25, v20);
  sub_1B61B9420();
  sub_1B6221E74();
  v20[0] = v21;
  v20[1] = v22;
  v20[2] = v23;
  v20[3] = v24;
  sub_1B6058120(v20);
  return (*(v5 + 8))(v8, v2);
}

unint64_t sub_1B61B9420()
{
  result = qword_1EDAAFE28;
  if (!qword_1EDAAFE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAFE28);
  }

  return result;
}

unint64_t sub_1B61B948C(uint64_t a1)
{
  result = sub_1B6153948();
  *(a1 + 8) = result;
  return result;
}

_BYTE *storeEnumTagSinglePayload for AirQualityScale.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B61B9584()
{
  result = qword_1EB927450;
  if (!qword_1EB927450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927450);
  }

  return result;
}

uint64_t static WeatherComparisonsUnavailableDescriptor.name.setter(uint64_t a1, char *a2)
{
  OUTLINED_FUNCTION_3_5();
  qword_1EB927458 = a1;
  off_1EB927460 = a2;
}

uint64_t (*static WeatherComparisonsUnavailableDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B61B9678@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB927460;
  *a1 = qword_1EB927458;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B61B96C8(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB927458 = v2;
  off_1EB927460 = v1;
  sub_1B6220784();
}

uint64_t *sub_1B61B972C()
{
  if (qword_1EDAB1910 != -1)
  {
    OUTLINED_FUNCTION_0_102();
  }

  return &qword_1EDAB1918;
}

uint64_t static WeatherComparisonsUnavailableDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB1910 != -1)
  {
    OUTLINED_FUNCTION_0_102();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1918 = a1;
  qword_1EDAB1920 = a2;
}

uint64_t (*static WeatherComparisonsUnavailableDescriptor.version.modify())()
{
  if (qword_1EDAB1910 != -1)
  {
    OUTLINED_FUNCTION_0_102();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B61B984C@<X0>(void *a1@<X8>)
{
  sub_1B61B972C();
  swift_beginAccess();
  v2 = qword_1EDAB1920;
  *a1 = qword_1EDAB1918;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B61B98A0(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B61B972C();
  swift_beginAccess();
  qword_1EDAB1918 = v2;
  qword_1EDAB1920 = v1;
}

_BYTE *storeEnumTagSinglePayload for WeatherComparisonsUnavailableDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t static WeatherChangeUnavailableDescriptor.name.setter(uint64_t a1, char *a2)
{
  OUTLINED_FUNCTION_3_5();
  qword_1EB927468 = a1;
  off_1EB927470 = a2;
}

uint64_t (*static WeatherChangeUnavailableDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B61B9A40@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = off_1EB927470;
  *a1 = qword_1EB927468;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B61B9A90(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB927468 = v2;
  off_1EB927470 = v1;
  sub_1B6220784();
}

uint64_t *sub_1B61B9AF4()
{
  if (qword_1EDAB1AA8 != -1)
  {
    OUTLINED_FUNCTION_0_103();
  }

  return &qword_1EDAB1AB0;
}

uint64_t static WeatherChangeUnavailableDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB1AA8 != -1)
  {
    OUTLINED_FUNCTION_0_103();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1AB0 = a1;
  qword_1EDAB1AB8 = a2;
}

uint64_t (*static WeatherChangeUnavailableDescriptor.version.modify())()
{
  if (qword_1EDAB1AA8 != -1)
  {
    OUTLINED_FUNCTION_0_103();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B61B9C14@<X0>(void *a1@<X8>)
{
  sub_1B61B9AF4();
  swift_beginAccess();
  v2 = qword_1EDAB1AB8;
  *a1 = qword_1EDAB1AB0;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B61B9C68(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B61B9AF4();
  swift_beginAccess();
  qword_1EDAB1AB0 = v2;
  qword_1EDAB1AB8 = v1;
}

_BYTE *storeEnumTagSinglePayload for WeatherChangeUnavailableDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t CloudChannelMapProperties.channel.getter()
{
  v1 = *v0;
  sub_1B6220784();
  return v1;
}

uint64_t CloudChannelMapProperties.country.getter()
{
  v1 = *(v0 + 16);
  sub_1B6220784();
  return v1;
}

WeatherDaemon::CloudChannelMapProperties __swiftcall CloudChannelMapProperties.init(channel:country:)(Swift::String_optional channel, Swift::String_optional country)
{
  *v2 = channel;
  v2[1] = country;
  result.country = country;
  result.channel = channel;
  return result;
}

uint64_t sub_1B61B9DD4()
{
  v0 = sub_1B6221CD4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B61B9E4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B61B9DD4();
  *a1 = result;
  return result;
}

uint64_t sub_1B61B9E7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6088614(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B61B9EB0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B61B9DD4();
  *a1 = result;
  return result;
}

uint64_t sub_1B61B9ED8(uint64_t a1)
{
  v2 = sub_1B61BA114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61B9F14(uint64_t a1)
{
  v2 = sub_1B61BA114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CloudChannelMapProperties.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927478);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61BA114();
  sub_1B62220D4();
  if (!v2)
  {
    v21 = 0;
    v11 = sub_1B6221D44();
    v13 = v12;
    v20 = 1;
    v14 = sub_1B6221D44();
    v15 = v10;
    v17 = v16;
    (*(v7 + 8))(v15, v5);
    *a2 = v11;
    a2[1] = v13;
    a2[2] = v14;
    a2[3] = v17;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B61BA114()
{
  result = qword_1EB927480;
  if (!qword_1EB927480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927480);
  }

  return result;
}

uint64_t CloudChannelMapProperties.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927488);
  OUTLINED_FUNCTION_2();
  v12 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v11 - v7;
  v9 = *(v1 + 16);
  v11[1] = *(v1 + 24);
  v11[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61BA114();
  sub_1B62220F4();
  v14 = 0;
  sub_1B6221E24();
  if (!v2)
  {
    v13 = 1;
    sub_1B6221E24();
  }

  return (*(v12 + 8))(v8, v4);
}

uint64_t static CloudChannelMapProperties.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_1B6221F24() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_1B6221F24() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1B61BA380(void *a1)
{
  a1[1] = sub_1B61BA3B8();
  a1[2] = sub_1B61BA40C();
  result = sub_1B61BA460();
  a1[3] = result;
  return result;
}

unint64_t sub_1B61BA3B8()
{
  result = qword_1EB927490;
  if (!qword_1EB927490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927490);
  }

  return result;
}

unint64_t sub_1B61BA40C()
{
  result = qword_1EB927498;
  if (!qword_1EB927498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927498);
  }

  return result;
}

unint64_t sub_1B61BA460()
{
  result = qword_1EB9274A0;
  if (!qword_1EB9274A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9274A0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudChannelMapProperties.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B61BA5D8()
{
  result = qword_1EB9274A8;
  if (!qword_1EB9274A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9274A8);
  }

  return result;
}

unint64_t sub_1B61BA630()
{
  result = qword_1EB9274B0;
  if (!qword_1EB9274B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9274B0);
  }

  return result;
}

unint64_t sub_1B61BA688()
{
  result = qword_1EB9274B8;
  if (!qword_1EB9274B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9274B8);
  }

  return result;
}

uint64_t static MarineLocationDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  *aMarinelocation_2 = a1;
  *&aMarinelocation_2[8] = a2;
}

uint64_t (*static MarineLocationDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B61BA77C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = *&aMarinelocation_2[8];
  *a1 = *aMarinelocation_2;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B61BA7CC(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  *aMarinelocation_2 = v2;
  *&aMarinelocation_2[8] = v1;
  sub_1B6220784();
}

uint64_t *sub_1B61BA830()
{
  if (qword_1EDAB1200 != -1)
  {
    OUTLINED_FUNCTION_0_104();
  }

  return &qword_1EDAB1208;
}

uint64_t static MarineLocationDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB1200 != -1)
  {
    OUTLINED_FUNCTION_0_104();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1208 = a1;
  qword_1EDAB1210 = a2;
}

uint64_t (*static MarineLocationDescriptor.version.modify())()
{
  if (qword_1EDAB1200 != -1)
  {
    OUTLINED_FUNCTION_0_104();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B61BA950@<X0>(void *a1@<X8>)
{
  sub_1B61BA830();
  swift_beginAccess();
  v2 = qword_1EDAB1210;
  *a1 = qword_1EDAB1208;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B61BA9A4(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B61BA830();
  swift_beginAccess();
  qword_1EDAB1208 = v2;
  qword_1EDAB1210 = v1;
}

_BYTE *storeEnumTagSinglePayload for MarineLocationDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t ForecastMinute.precipitationChance.setter()
{
  OUTLINED_FUNCTION_1_66();
  result = type metadata accessor for ForecastMinute();
  *(v0 + *(result + 20)) = v1;
  return result;
}

uint64_t ForecastMinute.precipitationIntensity.setter()
{
  OUTLINED_FUNCTION_1_66();
  result = type metadata accessor for ForecastMinute();
  *(v0 + *(result + 24)) = v1;
  return result;
}

uint64_t ForecastMinute.precipitationIntensityPerceived.setter()
{
  OUTLINED_FUNCTION_1_66();
  result = type metadata accessor for ForecastMinute();
  *(v0 + *(result + 28)) = v1;
  return result;
}

uint64_t ForecastMinute.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9274D0);
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61BAEF4();
  sub_1B62220D4();
  if (!v2)
  {
    v27 = 2;
    sub_1B6221DB4();
    OUTLINED_FUNCTION_1_66();
    v14 = sub_1B621D8F4();
    v26 = 0;
    sub_1B609F140(&qword_1EDAB20F0);
    sub_1B6221D24();
    v25 = 1;
    sub_1B6221DB4();
    v17 = v15;
    v22 = 3;
    sub_1B6221D24();
    (*(v10 + 8))(v13, v8);
    if (v24)
    {
      v18 = v3;
    }

    else
    {
      v18 = v23;
    }

    v19 = v21;
    __swift_storeEnumTagSinglePayload(v21, 1, 1, v14);
    sub_1B603D764(v7, v19);
    v20 = type metadata accessor for ForecastMinute();
    *(v19 + v20[5]) = v17;
    *(v19 + v20[6]) = v3;
    *(v19 + v20[7]) = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B61BAEF4()
{
  result = qword_1EDAB0220;
  if (!qword_1EDAB0220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0220);
  }

  return result;
}

uint64_t sub_1B61BAF48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D69547472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000013 && 0x80000001B623CED0 == a2;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000016 && 0x80000001B623CEF0 == a2;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD00000000000001FLL && 0x80000001B623F7D0 == a2)
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

unint64_t sub_1B61BB0B0(char a1)
{
  result = 0x6D69547472617473;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000013;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B61BB154@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61BAF48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61BB17C(uint64_t a1)
{
  v2 = sub_1B61BAEF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61BB1B8(uint64_t a1)
{
  v2 = sub_1B61BAEF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ForecastMinute.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9274D8);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61BAEF4();
  sub_1B62220F4();
  v10[15] = 0;
  sub_1B621D8F4();
  sub_1B609F140(&unk_1EDAB20F8);
  sub_1B6221E74();
  if (!v1)
  {
    type metadata accessor for ForecastMinute();
    v10[14] = 1;
    OUTLINED_FUNCTION_0_105();
    v10[13] = 2;
    OUTLINED_FUNCTION_0_105();
    v10[12] = 3;
    OUTLINED_FUNCTION_0_105();
  }

  return (*(v5 + 8))(v8, v3);
}

_BYTE *storeEnumTagSinglePayload for ForecastMinute.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B61BB4EC()
{
  result = qword_1EB9274E0;
  if (!qword_1EB9274E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9274E0);
  }

  return result;
}

unint64_t sub_1B61BB544()
{
  result = qword_1EDAB0210;
  if (!qword_1EDAB0210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0210);
  }

  return result;
}

unint64_t sub_1B61BB59C()
{
  result = qword_1EDAB0218;
  if (!qword_1EDAB0218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0218);
  }

  return result;
}

uint64_t static WeatherDataProxyResponse.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB9274F0 = a1;
  return result;
}

uint64_t sub_1B61BB76C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB9274F0;
  return result;
}

uint64_t sub_1B61BB7B8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB9274F0 = v1;
  return result;
}

id WeatherDataProxyResponse.init(responses:)()
{
  OUTLINED_FUNCTION_350();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13WeatherDaemon24WeatherDataProxyResponse_responses] = v0;
  v3 = OBJC_IVAR____TtC13WeatherDaemon24WeatherDataProxyResponse_error;
  v4 = sub_1B6220604();
  __swift_storeEnumTagSinglePayload(&v1[v3], 1, 1, v4);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id WeatherDataProxyResponse.init(error:)()
{
  OUTLINED_FUNCTION_350();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13WeatherDaemon24WeatherDataProxyResponse_responses] = 0;
  v3 = OBJC_IVAR____TtC13WeatherDaemon24WeatherDataProxyResponse_error;
  v4 = sub_1B6220604();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], v0, v4);
  __swift_storeEnumTagSinglePayload(&v1[v3], 0, 1, v4);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(v0, v4);
  return v6;
}

Swift::Void __swiftcall WeatherDataProxyResponse.encode(with:)(NSCoder with)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9270E0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  v6 = *(v1 + OBJC_IVAR____TtC13WeatherDaemon24WeatherDataProxyResponse_responses);
  if (v6)
  {
    sub_1B621D304();
    OUTLINED_FUNCTION_73();
    sub_1B621D2F4();
    v21 = v6;
    sub_1B6220784();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927508);
    sub_1B61BBC14();
    v9 = sub_1B621D2E4();
    v11 = v10;

    v12 = sub_1B621D6F4();
    v13 = sub_1B62211B4();
    [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

    v14 = v9;
    v15 = v11;
  }

  else
  {
    sub_1B6194FF4(v1 + OBJC_IVAR____TtC13WeatherDaemon24WeatherDataProxyResponse_error, v5);
    v7 = sub_1B6220604();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v7);
    sub_1B6195064(v5);
    if (EnumTagSinglePayload == 1)
    {
      return;
    }

    sub_1B621D304();
    OUTLINED_FUNCTION_73();
    sub_1B621D2F4();
    sub_1B61A4E9C();
    v16 = sub_1B621D2E4();
    v18 = v17;

    v19 = sub_1B621D6F4();
    v20 = sub_1B62211B4();
    [(objc_class *)with.super.isa encodeObject:v19 forKey:v20];

    v14 = v16;
    v15 = v18;
  }

  sub_1B60362A8(v14, v15);
}

unint64_t sub_1B61BBC14()
{
  result = qword_1EB927510;
  if (!qword_1EB927510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB927508);
    sub_1B61BC068(&qword_1EB927518, &qword_1EB927528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927510);
  }

  return result;
}

id WeatherDataProxyResponse.init(coder:)()
{
  v2 = v1;
  OUTLINED_FUNCTION_350();
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9270E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v23 - v5;
  sub_1B61A5438();
  v7 = sub_1B6221994();
  if (v7)
  {
    v8 = v7;
    v9 = sub_1B621D714();
    v11 = v10;

    sub_1B621D2D4();
    OUTLINED_FUNCTION_73();
    sub_1B621D2C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927520);
    sub_1B61BC068(&qword_1EB927530, &qword_1EB927538);
    sub_1B621D2B4();
    sub_1B60362A8(v9, v11);

    v12 = v23;
  }

  else
  {
    v12 = 0;
  }

  *&v2[OBJC_IVAR____TtC13WeatherDaemon24WeatherDataProxyResponse_responses] = v12;
  v13 = sub_1B6221994();
  if (v13)
  {
    v14 = v13;
    v15 = sub_1B621D714();
    v17 = v16;

    sub_1B621D2D4();
    OUTLINED_FUNCTION_73();
    sub_1B621D2C4();
    v18 = sub_1B6220604();
    sub_1B61BC104(&unk_1EB927128, MEMORY[0x1E69D6440]);
    sub_1B621D2B4();
    sub_1B60362A8(v15, v17);

    __swift_storeEnumTagSinglePayload(v6, 0, 1, v18);
    sub_1B61A54C0(v6, &v2[OBJC_IVAR____TtC13WeatherDaemon24WeatherDataProxyResponse_error]);
  }

  else
  {
    v19 = OBJC_IVAR____TtC13WeatherDaemon24WeatherDataProxyResponse_error;
    v20 = sub_1B6220604();
    __swift_storeEnumTagSinglePayload(&v2[v19], 1, 1, v20);
  }

  v24.receiver = v2;
  v24.super_class = ObjectType;
  v21 = objc_msgSendSuper2(&v24, sel_init);

  return v21;
}

uint64_t sub_1B61BC068(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB927520);
    sub_1B61BC104(a2, type metadata accessor for WeatherDataResponse);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B61BC104(unint64_t *a1, void (*a2)(uint64_t))
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

id WeatherDataProxyResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeatherDataProxyResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WeatherDataProxyResponse()
{
  result = qword_1EDAB0358;
  if (!qword_1EDAB0358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B61BC2C0()
{
  sub_1B61A5794();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

BOOL static WeatherStatisticsCollection.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (static Metadata.== infix(_:_:)())
  {
    v4 = type metadata accessor for MonthlyWeatherStatistics();
    if (sub_1B6095F54(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20))) & 1) != 0 && (sub_1B621D8A4())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B61BC450(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x80000001B623B960 == a2)
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

uint64_t sub_1B61BC4F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61BC450(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1B61BC51C(uint64_t a1)
{
  v2 = sub_1B61BC6EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61BC558(uint64_t a1)
{
  v2 = sub_1B61BC6EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t WeatherStatisticsCollection.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927540);
  OUTLINED_FUNCTION_2();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61BC6EC();
  sub_1B62220F4();
  type metadata accessor for MonthlyWeatherStatistics();
  sub_1B61BC984(&qword_1EB927550);
  sub_1B6221EC4();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_1B61BC6EC()
{
  result = qword_1EB927548;
  if (!qword_1EB927548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927548);
  }

  return result;
}

uint64_t WeatherStatisticsCollection.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = type metadata accessor for MonthlyWeatherStatistics();
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927558);
  OUTLINED_FUNCTION_2();
  v18 = v7;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = type metadata accessor for WeatherStatisticsCollection();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61BC6EC();
  sub_1B62220D4();
  if (!v2)
  {
    v14 = v19;
    sub_1B61BC984(&qword_1EB925C88);
    v15 = v20;
    sub_1B6221DD4();
    (*(v18 + 8))(v10, v6);
    OUTLINED_FUNCTION_0_106();
    sub_1B61BC9C8(v15, v13, v16);
    sub_1B61BC9C8(v13, v14, type metadata accessor for WeatherStatisticsCollection);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B61BC984(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MonthlyWeatherStatistics();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B61BC9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for WeatherStatisticsCollection.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B61BCB3C()
{
  result = qword_1EB927560;
  if (!qword_1EB927560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927560);
  }

  return result;
}

unint64_t sub_1B61BCB94()
{
  result = qword_1EB927568;
  if (!qword_1EB927568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927568);
  }

  return result;
}

unint64_t sub_1B61BCBEC()
{
  result = qword_1EB927570;
  if (!qword_1EB927570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927570);
  }

  return result;
}

uint64_t static PeriodForecastsDescriptor.name.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_5();
  qword_1EB927578 = a1;
  qword_1EB927580 = a2;
}

uint64_t (*static PeriodForecastsDescriptor.name.modify())()
{
  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1B61BCCE0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EB927580;
  *a1 = qword_1EB927578;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B61BCD30(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  swift_beginAccess();
  qword_1EB927578 = v2;
  qword_1EB927580 = v1;
  sub_1B6220784();
}

uint64_t *sub_1B61BCD94()
{
  if (qword_1EDAB1178 != -1)
  {
    OUTLINED_FUNCTION_0_107();
  }

  return &qword_1EDAB1180;
}

uint64_t static PeriodForecastsDescriptor.version.setter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDAB1178 != -1)
  {
    OUTLINED_FUNCTION_0_107();
  }

  OUTLINED_FUNCTION_3_5();
  qword_1EDAB1180 = a1;
  qword_1EDAB1188 = a2;
}

uint64_t (*static PeriodForecastsDescriptor.version.modify())()
{
  if (qword_1EDAB1178 != -1)
  {
    OUTLINED_FUNCTION_0_107();
  }

  OUTLINED_FUNCTION_1_3();
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1B61BCEB4@<X0>(void *a1@<X8>)
{
  sub_1B61BCD94();
  swift_beginAccess();
  v2 = qword_1EDAB1188;
  *a1 = qword_1EDAB1180;
  a1[1] = v2;
  return sub_1B6220784();
}

uint64_t sub_1B61BCF08(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  sub_1B6220784();
  sub_1B61BCD94();
  swift_beginAccess();
  qword_1EDAB1180 = v2;
  qword_1EDAB1188 = v1;
}

_BYTE *storeEnumTagSinglePayload for PeriodForecastsDescriptor(_BYTE *result, int a2, int a3)
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

uint64_t static AirQualityScaleProxyResponse.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB927590 = a1;
  return result;
}

uint64_t sub_1B61BD1B0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB927590;
  return result;
}

uint64_t sub_1B61BD1FC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB927590 = v1;
  return result;
}

uint64_t AirQualityScaleProxyResponse.scale.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC13WeatherDaemon28AirQualityScaleProxyResponse_scale), sizeof(__dst));
  memcpy(a1, (v1 + OBJC_IVAR____TtC13WeatherDaemon28AirQualityScaleProxyResponse_scale), 0xB0uLL);
  return sub_1B603A9E8(__dst, &v4, &unk_1EB9275A0);
}

id AirQualityScaleProxyResponse.init(scale:)()
{
  OUTLINED_FUNCTION_350();
  ObjectType = swift_getObjectType();
  memcpy(__dst, v0, sizeof(__dst));
  nullsub_1(__dst);
  memcpy(&v1[OBJC_IVAR____TtC13WeatherDaemon28AirQualityScaleProxyResponse_scale], __dst, 0xB0uLL);
  v3 = OBJC_IVAR____TtC13WeatherDaemon28AirQualityScaleProxyResponse_error;
  v4 = sub_1B6220604();
  __swift_storeEnumTagSinglePayload(&v1[v3], 1, 1, v4);
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id AirQualityScaleProxyResponse.init(error:)()
{
  OUTLINED_FUNCTION_350();
  ObjectType = swift_getObjectType();
  sub_1B6153AC8(__src);
  memcpy(&v1[OBJC_IVAR____TtC13WeatherDaemon28AirQualityScaleProxyResponse_scale], __src, 0xB0uLL);
  v3 = OBJC_IVAR____TtC13WeatherDaemon28AirQualityScaleProxyResponse_error;
  v4 = sub_1B6220604();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], v0, v4);
  __swift_storeEnumTagSinglePayload(&v1[v3], 0, 1, v4);
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(v0, v4);
  return v6;
}

Swift::Void __swiftcall AirQualityScaleProxyResponse.encode(with:)(NSCoder with)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9270E0);
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19[-v4];
  v6 = OBJC_IVAR____TtC13WeatherDaemon28AirQualityScaleProxyResponse_scale;
  memcpy(v22, (v1 + OBJC_IVAR____TtC13WeatherDaemon28AirQualityScaleProxyResponse_scale), 0xB0uLL);
  if (sub_1B619515C(v22) == 1)
  {
    sub_1B603A9E8(v1 + OBJC_IVAR____TtC13WeatherDaemon28AirQualityScaleProxyResponse_error, v5, &unk_1EB9270E0);
    v8 = sub_1B6220604();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v8);
    sub_1B6037288(v5, &unk_1EB9270E0);
    if (EnumTagSinglePayload == 1)
    {
      return;
    }

    sub_1B621D304();
    OUTLINED_FUNCTION_73();
    sub_1B621D2F4();
    sub_1B61A4E9C();
    v14 = sub_1B621D2E4();
    v16 = v15;

    v17 = sub_1B621D6F4();
    v18 = sub_1B62211B4();
    [(objc_class *)with.super.isa encodeObject:v17 forKey:v18];

    v12 = v14;
    v13 = v16;
  }

  else
  {
    sub_1B621D304();
    OUTLINED_FUNCTION_73();
    sub_1B621D2F4();
    memcpy(v21, (v1 + v6), 0xB0uLL);
    memcpy(v20, (v1 + v6), sizeof(v20));
    sub_1B603A9E8(v21, v19, &unk_1EB9275A0);
    v7 = OUTLINED_FUNCTION_337();
    __swift_instantiateConcreteTypeFromMangledNameV2(v7);
    sub_1B61BD798();
    sub_1B621D2E4();
    OUTLINED_FUNCTION_2_57();
    sub_1B6037288(v19, &unk_1EB9275A0);

    OUTLINED_FUNCTION_337();
    v10 = sub_1B621D6F4();
    v11 = sub_1B62211B4();
    [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

    v12 = OUTLINED_FUNCTION_337();
  }

  sub_1B60362A8(v12, v13);
}

unint64_t sub_1B61BD798()
{
  result = qword_1EB9275C0;
  if (!qword_1EB9275C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB9275A0);
    sub_1B61BD81C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9275C0);
  }

  return result;
}

unint64_t sub_1B61BD81C()
{
  result = qword_1EB9275C8;
  if (!qword_1EB9275C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9275C8);
  }

  return result;
}

id AirQualityScaleProxyResponse.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB9270E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22[-v6];
  sub_1B61A5438();
  v8 = sub_1B6221994();
  if (v8)
  {
    v9 = v8;
    v10 = sub_1B621D714();
    v12 = v11;

    sub_1B621D2D4();
    OUTLINED_FUNCTION_73();
    sub_1B621D2C4();
    sub_1B6153948();
    sub_1B621D2B4();
    sub_1B60362A8(v10, v12);

    OUTLINED_FUNCTION_2_57();
    nullsub_1(v22);
    memcpy(v24, v22, sizeof(v24));
  }

  else
  {
    sub_1B6153AC8(v24);
  }

  memcpy(&v2[OBJC_IVAR____TtC13WeatherDaemon28AirQualityScaleProxyResponse_scale], v24, 0xB0uLL);
  v13 = sub_1B6221994();
  if (v13)
  {
    v14 = v13;
    sub_1B621D714();

    sub_1B621D2D4();
    OUTLINED_FUNCTION_73();
    sub_1B621D2C4();
    v15 = sub_1B6220604();
    sub_1B61A547C(&unk_1EB927128);
    sub_1B621D2B4();
    v16 = OUTLINED_FUNCTION_337();
    sub_1B60362A8(v16, v17);

    __swift_storeEnumTagSinglePayload(v7, 0, 1, v15);
    sub_1B61A54C0(v7, &v2[OBJC_IVAR____TtC13WeatherDaemon28AirQualityScaleProxyResponse_error]);
  }

  else
  {
    v18 = OBJC_IVAR____TtC13WeatherDaemon28AirQualityScaleProxyResponse_error;
    v19 = sub_1B6220604();
    __swift_storeEnumTagSinglePayload(&v2[v18], 1, 1, v19);
  }

  v23.receiver = v2;
  v23.super_class = ObjectType;
  v20 = objc_msgSendSuper2(&v23, sel_init);

  return v20;
}

id AirQualityScaleProxyResponse.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AirQualityScaleProxyResponse.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for AirQualityScaleProxyResponse()
{
  result = qword_1EDAAFD60;
  if (!qword_1EDAAFD60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B61BDD78()
{
  sub_1B61A5794();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t WeatherStatisticsDataStore.__allocating_init()()
{
  v0 = swift_allocObject();
  WeatherStatisticsDataStore.init()();
  return v0;
}

void *WeatherStatisticsDataStore.init()()
{
  v2 = v0;
  v3 = sub_1B6220EC4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB924508 != -1)
  {
    swift_once();
  }

  if (!qword_1EB9275E8)
  {
    if (qword_1EB9244D8 != -1)
    {
      swift_once();
    }

    v8 = sub_1B6220B34();
    __swift_project_value_buffer(v8, qword_1EB942AF8);
    v9 = sub_1B6220B14();
    v10 = sub_1B62217E4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1B6020000, v9, v10, "Failed to create weather statistics database", v11, 2u);
      MEMORY[0x1B8C91C90](v11, -1, -1);
    }

    sub_1B61BECC0();
    swift_allocError();
    swift_willThrow();
    goto LABEL_12;
  }

  v15 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9275F8);
  sub_1B61BED14(&qword_1EB927600, &qword_1EB9275F8);

  v7 = sub_1B6220E74();
  if (v1)
  {

LABEL_12:
    swift_deallocPartialClassInstance();
    return v2;
  }

  v0[3] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927608);
  sub_1B61BED14(&qword_1EB927610, &qword_1EB927608);
  v0[4] = sub_1B6220E74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927618);
  sub_1B61BED14(&qword_1EB927620, &qword_1EB927618);
  v0[2] = sub_1B6220E74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927628);
  sub_1B61BED14(&qword_1EB927630, &qword_1EB927628);
  v0[5] = sub_1B6220E74();
  v13 = v15;
  (*(v15 + 104))(v6, *MEMORY[0x1E69D62C0], v3);
  sub_1B6220F04();
  (*(v13 + 8))(v6, v3);

  return v2;
}

uint64_t sub_1B61BE334()
{
  sub_1B6220D54();
  sub_1B6220DA4();

  if (!v0)
  {
    sub_1B6220D54();
    sub_1B6220DA4();

    sub_1B6220D54();
    sub_1B6220DA4();

    sub_1B6220D54();
    sub_1B6220DA4();
  }

  return result;
}

uint64_t WeatherStatisticsDataStore.deinit()
{

  return v0;
}

uint64_t WeatherStatisticsDataStore.__deallocating_deinit()
{
  WeatherStatisticsDataStore.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1B61BE46C()
{
  v0 = sub_1B6220B34();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B6220E84();
  __swift_allocate_value_buffer(v4, qword_1EB9275D0);
  v5 = __swift_project_value_buffer(v4, qword_1EB9275D0);
  if (qword_1EB9244D8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EB942AF8);
  (*(v1 + 16))(v3, v6, v0);
  static Database.Location.protectedLocation(_:logger:)(0xD000000000000015, 0x80000001B623F910, v3, v5);
  return (*(v1 + 8))(v3, v0);
}

uint64_t static WeatherStatisticsDataStore.location.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB924500 != -1)
  {
    OUTLINED_FUNCTION_0_108();
  }

  v2 = sub_1B6220E84();
  v3 = __swift_project_value_buffer(v2, qword_1EB9275D0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static WeatherStatisticsDataStore.location.setter(uint64_t a1)
{
  if (qword_1EB924500 != -1)
  {
    OUTLINED_FUNCTION_0_108();
  }

  v2 = sub_1B6220E84();
  v3 = __swift_project_value_buffer(v2, qword_1EB9275D0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static WeatherStatisticsDataStore.location.modify())()
{
  if (qword_1EB924500 != -1)
  {
    OUTLINED_FUNCTION_0_108();
  }

  v0 = sub_1B6220E84();
  __swift_project_value_buffer(v0, qword_1EB9275D0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t static WeatherStatisticsDataStore.preferredCacheSize.getter@<X0>(void *a1@<X8>)
{
  *a1 = 32;
  v2 = *MEMORY[0x1E69D6298];
  v3 = sub_1B6220EA4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1B61BE870()
{
  v0 = sub_1B6220E24();
  v28 = *(v0 - 8);
  v29 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v27 = v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1B6220E54();
  v24 = *(v2 - 8);
  v25 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B6220E04();
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1B6220EA4();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1B6220C84();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6220E84();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = sub_1B6220EB4();
  if (qword_1EB924500 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_1EB9275D0);
  swift_beginAccess();
  (*(v15 + 16))(v17, v18, v14);
  static AssertionOptions.weatherAssertions.getter();
  *v10 = 32;
  (*(v8 + 104))(v10, *MEMORY[0x1E69D6298], v7);
  (*(v4 + 104))(v6, *MEMORY[0x1E69D6248], v23);
  v19 = v26;
  (*(v24 + 104))(v26, *MEMORY[0x1E69D6270], v25);
  v20 = v27;
  (*(v28 + 104))(v27, *MEMORY[0x1E69D6260], v29);
  v30 = 1;
  result = Database.init(location:assertions:journalingMode:recoveryMode:preferredCacheSize:vacuumMode:busyTimeout:)(v17, v13, v19, v20, v10, v6, 0x100000000);
  qword_1EB9275E8 = result;
  return result;
}

unint64_t sub_1B61BECC0()
{
  result = qword_1EB9275F0;
  if (!qword_1EB9275F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9275F0);
  }

  return result;
}

uint64_t sub_1B61BED14(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherStatisticsDataStore.Errors(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B61BEE98()
{
  result = qword_1EB927638;
  if (!qword_1EB927638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927638);
  }

  return result;
}

uint64_t static SignpostInterval.beginIfInternal(_:_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1B62205F4();
  if (sub_1B62205E4())
  {
    static SignpostInterval.begin(_:_:)();
    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = type metadata accessor for SignpostInterval();

  return __swift_storeEnumTagSinglePayload(a1, v2, 1, v3);
}

uint64_t type metadata accessor for SignpostInterval()
{
  result = qword_1EDAB0AA0;
  if (!qword_1EDAB0AA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void static SignpostInterval.begin(_:_:)()
{
  OUTLINED_FUNCTION_44();
  v45 = v0;
  v46 = v1;
  v3 = v2;
  v5 = v4;
  v44 = v6;
  v42 = sub_1B6220A84();
  OUTLINED_FUNCTION_2();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = sub_1B6220B34();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  v43 = sub_1B6220AB4();
  OUTLINED_FUNCTION_2();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_14();
  v27 = v26 - v25;
  (*(v17 + 16))(v21, v3, v15);
  v28 = v14;
  v29 = v46;
  sub_1B6220A94();
  sub_1B6220AA4();
  sub_1B6220A64();
  v30 = sub_1B6220AA4();
  v31 = sub_1B6221934();
  if ((sub_1B62219C4() & 1) == 0)
  {
    goto LABEL_10;
  }

  v41 = v23;
  if ((v44 & 1) == 0)
  {
    v32 = v45;
    if (v45)
    {
      v33 = v28;
LABEL_9:
      v34 = swift_slowAlloc();
      *v34 = 0;
      v35 = sub_1B6220A74();
      _os_signpost_emit_with_name_impl(&dword_1B6020000, v30, v31, v35, v32, "", v34, 2u);
      v36 = v34;
      v28 = v33;
      MEMORY[0x1B8C91C90](v36, -1, -1);
      v29 = v46;
      v23 = v41;
LABEL_10:

      v37 = v42;
      (*(v8 + 16))(v11, v28, v42);
      sub_1B6220AF4();
      swift_allocObject();
      v38 = sub_1B6220AE4();
      (*(v8 + 8))(v28, v37);
      *v5 = v45;
      *(v5 + 8) = v29;
      *(v5 + 16) = v44;
      *(v5 + 24) = v38;
      v39 = type metadata accessor for SignpostInterval();
      (*(v23 + 32))(v5 + *(v39 + 24), v27, v43);
      OUTLINED_FUNCTION_45();
      return;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v45 >> 32)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v45 & 0xFFFFF800) != 0xD800)
  {
    if (v45 >> 16 <= 0x10)
    {
      v33 = v28;
      v32 = &v47;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
}

Swift::Void __swiftcall SignpostInterval.end()()
{
  OUTLINED_FUNCTION_44();
  v1 = sub_1B6220AC4();
  OUTLINED_FUNCTION_2();
  v21 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_14();
  v6 = v5 - v4;
  v7 = sub_1B6220A84();
  OUTLINED_FUNCTION_2();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14();
  v13 = v12 - v11;
  type metadata accessor for SignpostInterval();
  v14 = *v0;
  v15 = *(v0 + 16);
  v16 = sub_1B6220AA4();
  sub_1B6220AD4();
  v20 = sub_1B6221924();
  if ((sub_1B62219C4() & 1) == 0)
  {
LABEL_13:

    (*(v9 + 8))(v13, v7);
    OUTLINED_FUNCTION_45();
    return;
  }

  if ((v15 & 1) == 0)
  {
    if (v14)
    {
LABEL_9:

      sub_1B6220B04();

      if ((*(v21 + 88))(v6, v1) == *MEMORY[0x1E69E93E8])
      {
        v17 = "[Error] Interval already ended";
      }

      else
      {
        (*(v21 + 8))(v6, v1);
        v17 = "";
      }

      v18 = swift_slowAlloc();
      *v18 = 0;
      v19 = sub_1B6220A74();
      _os_signpost_emit_with_name_impl(&dword_1B6020000, v16, v20, v19, v14, v17, v18, 2u);
      MEMORY[0x1B8C91C90](v18, -1, -1);
      goto LABEL_13;
    }

    __break(1u);
  }

  if (v14 >> 32)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if ((v14 & 0xFFFFF800) != 0xD800)
  {
    if (v14 >> 16 <= 0x10)
    {
      v14 = &v22;
      goto LABEL_9;
    }

    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
}

void static SignpostInterval.beginIfInternal(_:_:beginBlock:)()
{
  OUTLINED_FUNCTION_44();
  v31 = v0;
  v33 = v1;
  v32 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1B6220A84();
  OUTLINED_FUNCTION_2();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_14();
  v15 = v14 - v13;
  v16 = sub_1B6220B34();
  OUTLINED_FUNCTION_2();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_14();
  v22 = v21 - v20;
  sub_1B62205F4();
  if (sub_1B62205E4())
  {
    (*(v18 + 16))(v22, v6, v16);
    v23 = type metadata accessor for SignpostInterval();
    v24 = *(v23 + 24);
    sub_1B6220A94();
    sub_1B6220AA4();
    sub_1B6220A64();
    v25 = v31(v8 + v24, v4, v32, v33, v15);
    (*(v11 + 8))(v15, v9);
    *v8 = v4;
    *(v8 + 8) = v32;
    *(v8 + 16) = v33;
    *(v8 + 24) = v25;
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v23);
    OUTLINED_FUNCTION_45();
  }

  else
  {
    type metadata accessor for SignpostInterval();
    OUTLINED_FUNCTION_45();

    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }
}

void static SignpostInterval.begin(_:_:beginBlock:)()
{
  OUTLINED_FUNCTION_44();
  v24 = v0;
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1B6220A84();
  OUTLINED_FUNCTION_2();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14();
  v17 = v16 - v15;
  sub_1B6220B34();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  (*(v21 + 16))(v20 - v19, v8);
  v22 = *(type metadata accessor for SignpostInterval() + 24);
  sub_1B6220A94();
  sub_1B6220AA4();
  sub_1B6220A64();
  v23 = v24(v10 + v22, v6, v4, v2, v17);
  (*(v13 + 8))(v17, v11);
  *v10 = v6;
  *(v10 + 8) = v4;
  *(v10 + 16) = v2;
  *(v10 + 24) = v23;
  OUTLINED_FUNCTION_45();
}

uint64_t sub_1B61BF9C8()
{
  result = sub_1B6220AF4();
  if (v1 <= 0x3F)
  {
    result = sub_1B6220AB4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_1B61BFA6C()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1B62211B4();

  v2 = [v0 initWithDescription_];

  return v2;
}

id WDSJWTAuthenticatorServiceListener.init(delegate:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = sub_1B62207A4();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OBJC_IVAR____TtC13WeatherDaemon34WDSJWTAuthenticatorServiceListener_authServiceRequestDeduper;
  v11 = MEMORY[0x1E69E7CC0];
  sub_1B61BFC74();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB927650);
  sub_1B602CF5C();
  sub_1B6221AA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927660);
  swift_allocObject();
  *&v2[v7] = sub_1B6220704();
  v8 = &v2[OBJC_IVAR____TtC13WeatherDaemon34WDSJWTAuthenticatorServiceListener_delegate];
  *v8 = a1;
  *(v8 + 1) = a2;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

unint64_t sub_1B61BFC74()
{
  result = qword_1EDAB4B70;
  if (!qword_1EDAB4B70)
  {
    sub_1B62207A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB4B70);
  }

  return result;
}

id WDSJWTAuthenticatorServiceListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WDSJWTAuthenticatorServiceListener.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Bool __swiftcall WDSJWTAuthenticatorServiceListener.listener(_:shouldAcceptNewConnection:)(NSXPCListener _, NSXPCConnection shouldAcceptNewConnection)
{
  v3 = v2;
  v5 = sub_1B6220674();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAB4B00 != -1)
  {
    OUTLINED_FUNCTION_1_67();
  }

  v9 = sub_1B6220B34();
  __swift_project_value_buffer(v9, qword_1EDAC2AC8);
  v10 = sub_1B6220B14();
  v11 = sub_1B62217F4();
  if (os_log_type_enabled(v10, v11))
  {
    v36 = v2;
    v37 = v8;
    v12 = v5;
    v13 = v6;
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v41[0] = v15;
    *v14 = 136446210;
    if (qword_1EDAAFA78 != -1)
    {
      OUTLINED_FUNCTION_0_109();
    }

    v16 = sub_1B6220574();
    __swift_project_value_buffer(v16, qword_1EDAAFA80);
    v17 = sub_1B6220564();
    v19 = sub_1B602EEB0(v17, v18, v41);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1B6020000, v10, v11, "Incoming message on %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();

    v6 = v13;
    v5 = v12;
    v3 = v36;
    v8 = v37;
  }

  else
  {
  }

  sub_1B61C1378(shouldAcceptNewConnection.super.isa);
  if (v20)
  {
    v21 = sub_1B60300F0();

    if (v21)
    {
      v22 = sub_1B6220B14();
      v23 = sub_1B62217F4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = "Calling process is first party process ... accepting the connection";
LABEL_20:
        _os_log_impl(&dword_1B6020000, v22, v23, v25, v24, 2u);
        OUTLINED_FUNCTION_30();
        goto LABEL_21;
      }

      goto LABEL_21;
    }
  }

  v26 = sub_1B62211B4();
  v27 = [(objc_class *)shouldAcceptNewConnection.super.isa wd_valueForEntitlement:v26];

  if (v27)
  {
    sub_1B6221A84();
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  v41[0] = v39;
  v41[1] = v40;
  if (*(&v40 + 1))
  {
    if ((swift_dynamicCast() & 1) != 0 && v38 == 1)
    {
      v22 = sub_1B6220B14();
      v23 = sub_1B62217F4();
      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        *v24 = 0;
        v25 = "Calling process is 3rd party process and has the correct entitlement ... accepting the connection";
        goto LABEL_20;
      }

LABEL_21:

      [(objc_class *)shouldAcceptNewConnection.super.isa setExportedObject:v3];
      if (qword_1EDAAFA78 != -1)
      {
        OUTLINED_FUNCTION_0_109();
      }

      v28 = sub_1B6220574();
      __swift_project_value_buffer(v28, qword_1EDAAFA80);
      sub_1B6220554();
      v29 = sub_1B6220664();
      (*(v6 + 8))(v8, v5);
      [(objc_class *)shouldAcceptNewConnection.super.isa setExportedInterface:v29];

      [(objc_class *)shouldAcceptNewConnection.super.isa activate];
      return 1;
    }
  }

  else
  {
    sub_1B602724C(v41, &qword_1EB927670);
  }

  v31 = sub_1B6220B14();
  v32 = sub_1B62217E4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *&v41[0] = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_1B602EEB0(0xD00000000000001ELL, 0x80000001B623F990, v41);
    _os_log_impl(&dword_1B6020000, v31, v32, "Missing entitlement - exiting. entitlementKey=%{public}s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  return 0;
}

void sub_1B61C0340(void *a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);
  if (qword_1EDAB4B00 != -1)
  {
    swift_once();
  }

  v6 = sub_1B6220B34();
  __swift_project_value_buffer(v6, qword_1EDAC2AC8);
  v7 = a1;
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
    _os_log_impl(&dword_1B6020000, v8, v9, "Received proxy request for generating a jwt token. url=%{public}@", v10, 0xCu);
    sub_1B602724C(v11, &qword_1EB924E68);
    MEMORY[0x1B8C91C90](v11, -1, -1);
    MEMORY[0x1B8C91C90](v10, -1, -1);
  }

  sub_1B61C13DC();
  v13 = sub_1B61BFA6C();
  v14 = [objc_opt_self() currentConnection];
  if (!v14)
  {
    sub_1B61C1420();
    v27 = swift_allocError();
    *v28 = 1;
    v29 = sub_1B621D564();
    (a3)[2](a3, 0, v29);

LABEL_11:

    goto LABEL_13;
  }

  v15 = v14;
  v16 = sub_1B61C1378(v14);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    if (qword_1EDAAEA58 != -1)
    {
      swift_once();
    }

    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v19;
    v20[4] = v7;
    type metadata accessor for WDSJWTAuthenticatorServiceListener();
    v21 = v7;
    sub_1B62209E4();

    v22 = swift_allocObject();
    *(v22 + 16) = sub_1B61C1654;
    *(v22 + 24) = v5;

    v23 = sub_1B62208D4();
    sub_1B6220944();

    v24 = swift_allocObject();
    *(v24 + 16) = sub_1B61C1654;
    *(v24 + 24) = v5;

    v25 = sub_1B62208D4();
    sub_1B6220974();

    *(swift_allocObject() + 16) = v13;
    v26 = v13;
    v13 = sub_1B62208D4();
    sub_1B62209A4();

    goto LABEL_11;
  }

  sub_1B61C1420();
  v30 = swift_allocError();
  *v31 = 0;
  v32 = sub_1B621D564();
  (a3)[2](a3, 0, v32);

  v13 = v15;
LABEL_13:

  _Block_release(a3);
}

void WDSJWTAuthenticatorServiceListener.generateToken(url:completion:)(void *a1, void (*a2)(uint64_t), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  if (qword_1EDAB4B00 != -1)
  {
    OUTLINED_FUNCTION_1_67();
  }

  v7 = sub_1B6220B34();
  __swift_project_value_buffer(v7, qword_1EDAC2AC8);
  v8 = a1;
  v9 = sub_1B6220B14();
  v10 = sub_1B62217F4();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138543362;
    *(v11 + 4) = v8;
    *v12 = v8;
    v13 = v8;
    _os_log_impl(&dword_1B6020000, v9, v10, "Received proxy request for generating a jwt token. url=%{public}@", v11, 0xCu);
    sub_1B602724C(v12, &qword_1EB924E68);
    OUTLINED_FUNCTION_30();
    OUTLINED_FUNCTION_30();
  }

  sub_1B61C13DC();
  v14 = sub_1B61BFA6C();
  v15 = [objc_opt_self() currentConnection];
  if (!v15)
  {
    sub_1B61C1420();
    v27 = swift_allocError();
    *v28 = 1;
    sub_1B621D564();
    v29 = OUTLINED_FUNCTION_3_50();
    a2(v29);

LABEL_11:
    v30 = v14;
    goto LABEL_13;
  }

  v34 = v15;
  v16 = sub_1B61C1378(v15);
  if (v17)
  {
    v18 = v16;
    v19 = v17;
    if (qword_1EDAAEA58 != -1)
    {
      swift_once();
    }

    v20 = swift_allocObject();
    v20[2] = v18;
    v20[3] = v19;
    v20[4] = v8;
    v21 = v8;
    sub_1B62209E4();

    v22 = swift_allocObject();
    *(v22 + 16) = a2;
    *(v22 + 24) = a3;

    v23 = sub_1B62208D4();
    sub_1B6220944();

    v24 = swift_allocObject();
    *(v24 + 16) = a2;
    *(v24 + 24) = a3;

    v25 = sub_1B62208D4();
    sub_1B6220974();

    *(swift_allocObject() + 16) = v14;
    v26 = v14;
    v14 = sub_1B62208D4();
    sub_1B62209A4();

    goto LABEL_11;
  }

  sub_1B61C1420();
  v31 = swift_allocError();
  *v32 = 0;
  sub_1B621D564();
  v33 = OUTLINED_FUNCTION_3_50();
  a2(v33);

  v30 = v34;
LABEL_13:
}

uint64_t sub_1B61C0C88(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for WDSEndpoint();
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1B621D634();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B61C0E3C(a1, v15);
  (*(v13 + 16))(v11, v15, v12);
  v16 = &v11[*(v9 + 28)];
  *v16 = 0;
  *(v16 + 1) = 0;
  v17 = *(a2 + OBJC_IVAR____TtC13WeatherDaemon34WDSJWTAuthenticatorServiceListener_delegate + 8);
  ObjectType = swift_getObjectType();
  v19 = (*(v17 + 8))(a3, a4, v11, ObjectType, v17);
  sub_1B60AD0C0(v11);
  (*(v13 + 8))(v15, v12);
  return v19;
}

uint64_t sub_1B61C0E3C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924690);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v18 - v8);
  sub_1B62211D4();
  sub_1B621D624();

  v10 = sub_1B621D634();
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) != 1)
  {
    goto LABEL_8;
  }

  sub_1B602724C(v9, &qword_1EB924690);
  if (qword_1EDAB4B00 != -1)
  {
    swift_once();
  }

  v11 = sub_1B6220B34();
  __swift_project_value_buffer(v11, qword_1EDAC2AC8);
  v12 = a1;
  v9 = sub_1B6220B14();
  v13 = sub_1B62217E4();

  if (os_log_type_enabled(v9, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138543362;
    *(v14 + 4) = v12;
    *v15 = a1;
    v16 = v12;
    _os_log_impl(&dword_1B6020000, v9, v13, "Failed to create URL from string. urlString=%{public}@", v14, 0xCu);
    sub_1B602724C(v15, &qword_1EB924E68);
    MEMORY[0x1B8C91C90](v15, -1, -1);
    MEMORY[0x1B8C91C90](v14, -1, -1);
  }

  sub_1B621D624();
  if (__swift_getEnumTagSinglePayload(v6, 1, v10) == 1)
  {
    __break(1u);
LABEL_8:
    v6 = v9;
  }

  return (*(*(v10 - 8) + 32))(a2, v6, v10);
}

void sub_1B61C10CC(uint64_t a1, void (*a2)(void *, void))
{
  v3 = sub_1B62211B4();
  a2(v3, 0);
}

void sub_1B61C1120(void *a1, void (*a2)(void, void *))
{
  if (qword_1EDAB4B00 != -1)
  {
    swift_once();
  }

  v4 = sub_1B6220B34();
  __swift_project_value_buffer(v4, qword_1EDAC2AC8);
  v5 = a1;
  v6 = sub_1B6220B14();
  v7 = sub_1B62217E4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136446210;
    v10 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924910);
    v11 = sub_1B6221234();
    v13 = sub_1B602EEB0(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1B6020000, v6, v7, "Failed to generate token with error: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1B8C91C90](v9, -1, -1);
    MEMORY[0x1B8C91C90](v8, -1, -1);
  }

  sub_1B61C1420();
  v14 = swift_allocError();
  *v15 = 2;
  v16 = sub_1B621D564();
  a2(0, v16);
}

uint64_t sub_1B61C1378(void *a1)
{
  v1 = [a1 wd_codesigningIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B62211D4();

  return v3;
}

unint64_t sub_1B61C13DC()
{
  result = qword_1EDAAF6C0;
  if (!qword_1EDAAF6C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAAF6C0);
  }

  return result;
}

unint64_t sub_1B61C1420()
{
  result = qword_1EDAAEC30;
  if (!qword_1EDAAEC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEC30);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WDSJWTAuthenticatorServiceListener.Errors(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B61C1600()
{
  result = qword_1EB927678;
  if (!qword_1EB927678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927678);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B61C16F0@<X0>(uint64_t a1@<X8>)
{
  sub_1B6220784();
  switch(sub_1B6211FC0())
  {
    case 1u:
      v2 = MEMORY[0x1E69E2060];
      goto LABEL_8;
    case 2u:
      v2 = MEMORY[0x1E69E2048];
      goto LABEL_8;
    case 3u:
      v2 = MEMORY[0x1E69E2040];
      goto LABEL_8;
    case 4u:
      v2 = MEMORY[0x1E69E2050];
      goto LABEL_8;
    case 5u:
      v2 = MEMORY[0x1E69E2038];
      goto LABEL_8;
    case 6u:
      v7 = sub_1B6220184();
      v5 = a1;
      v6 = 1;
      goto LABEL_9;
    default:
      v2 = MEMORY[0x1E69E2058];
LABEL_8:
      v3 = *v2;
      v4 = sub_1B6220184();
      (*(*(v4 - 8) + 104))(a1, v3, v4);
      v5 = a1;
      v6 = 0;
      v7 = v4;
LABEL_9:

      return __swift_storeEnumTagSinglePayload(v5, v6, 1, v7);
  }
}

uint64_t MarineForecast.encode(using:)()
{
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24_14();
  type metadata accessor for MarineForecast();
  OUTLINED_FUNCTION_84_2();
  sub_1B621F5D4();
  MEMORY[0x1B8C8F3D0](v0);
  OUTLINED_FUNCTION_31_6();
  sub_1B62201E4();
  OUTLINED_FUNCTION_51_4();
  sub_1B62201C4();
  OUTLINED_FUNCTION_28_10();
  sub_1B621DD04();
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_6_6();
  v5(v6);
  v7 = OUTLINED_FUNCTION_48_4();
  return (v5)(v7);
}

uint64_t News.encode(using:)()
{
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24_14();
  OUTLINED_FUNCTION_84_2();
  sub_1B621F5D4();
  MEMORY[0x1B8C8F4E0](v0);
  OUTLINED_FUNCTION_31_6();
  sub_1B62202F4();
  OUTLINED_FUNCTION_51_4();
  sub_1B62202E4();
  OUTLINED_FUNCTION_28_10();
  sub_1B621DD04();
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_6_6();
  v5(v6);
  v7 = OUTLINED_FUNCTION_48_4();
  return (v5)(v7);
}

void TideEvents.encode(using:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_92();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_75_2();
  type metadata accessor for TideEvents();
  Metadata.encode(using:)();
  sub_1B621F5D4();
  sub_1B621F5D4();
  MEMORY[0x1B8C8E5F0](v0);
  OUTLINED_FUNCTION_86_1();
  sub_1B621F414();
  sub_1B621F3F4();
  OUTLINED_FUNCTION_51_4();
  sub_1B621F3E4();
  OUTLINED_FUNCTION_28_10();
  sub_1B621DD04();
  v6 = *(v2 + 8);
  v7 = OUTLINED_FUNCTION_6_6();
  v6(v7);
  v8 = OUTLINED_FUNCTION_48_4();
  v6(v8);
  v9 = OUTLINED_FUNCTION_64_3();
  v6(v9);
  OUTLINED_FUNCTION_45();
}

void WeatherAlerts.encode(using:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_93_1();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927680);
  v6 = OUTLINED_FUNCTION_0(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_92();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_96_0();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_78_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34_6();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_75_2();
  Metadata.encode(using:)();
  type metadata accessor for WeatherAlerts();
  OUTLINED_FUNCTION_85_0();
  if (v14)
  {
    sub_1B6221244();
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v15, 1, v8);
  sub_1B621F5D4();
  sub_1B621E584();
  OUTLINED_FUNCTION_64_3();
  sub_1B621E5C4();
  sub_1B621E5A4();
  sub_1B60430B8(v0, v1, &qword_1EB927680);
  OUTLINED_FUNCTION_16_5(v1, 1, v8);
  if (v16)
  {
    sub_1B60372E0(v1, &qword_1EB927680);
  }

  else
  {
    (*(v10 + 32))(v4, v1, v8);
    sub_1B621E5B4();
    (*(v10 + 8))(v4, v8);
  }

  OUTLINED_FUNCTION_66_3();
  sub_1B621E574();
  v17 = *(v10 + 8);
  v17(v3, v8);
  sub_1B60372E0(v0, &qword_1EB927680);
  v17(v2, v8);
  OUTLINED_FUNCTION_45();
}

void WeatherComparisons.encode(using:)()
{
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_52_4();
  OUTLINED_FUNCTION_2();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_24_14();
  type metadata accessor for WeatherComparisons();
  OUTLINED_FUNCTION_84_2();
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_40_6();
  sub_1B60432DC(v5, v6);
  sub_1B6042190(&qword_1EB927780, type metadata accessor for WeatherComparison);
  OUTLINED_FUNCTION_30_8();
  MEMORY[0x1B8C8F330](v0);
  OUTLINED_FUNCTION_31_6();
  sub_1B6220154();
  OUTLINED_FUNCTION_51_4();
  sub_1B6220124();
  OUTLINED_FUNCTION_28_10();
  sub_1B621DD04();
  v7 = *(v2 + 8);
  v8 = OUTLINED_FUNCTION_6_6();
  v7(v8);
  v9 = OUTLINED_FUNCTION_48_4();
  v7(v9);
  OUTLINED_FUNCTION_45();
}

uint64_t PrecipitationConditionParameter.encode(using:)()
{
  OUTLINED_FUNCTION_93_1();
  sub_1B6220294();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_45_0();
  MEMORY[0x1B8C8F450](v0);
  v2 = OUTLINED_FUNCTION_88_2();
  v3(v2);
  OUTLINED_FUNCTION_6_6();
  sub_1B6220254();
  v4 = OUTLINED_FUNCTION_10_0();
  v5(v4);
  type metadata accessor for PrecipitationConditionParameter();
  sub_1B6043060();
  sub_1B6220244();
  OUTLINED_FUNCTION_66_3();
  return sub_1B621DD04();
}

uint64_t PrecipitationAmountRange.encode(using:)()
{
  OUTLINED_FUNCTION_93_1();
  MEMORY[0x1B8C8F090]();
  sub_1B621FEF4();
  sub_1B621FED4();
  sub_1B621FEC4();
  sub_1B621FEE4();
  OUTLINED_FUNCTION_66_3();

  return sub_1B621DD04();
}

void ForecastSummary.encode(using:)()
{
  OUTLINED_FUNCTION_44();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_0(v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_94_2();
  v6 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v29 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_14();
  v11 = v10 - v9;
  v12 = sub_1B621FE54();
  OUTLINED_FUNCTION_2();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_14();
  v18 = v17 - v16;
  MEMORY[0x1B8C8F260](v3);
  sub_1B6043060();
  sub_1B62200B4();
  v19 = type metadata accessor for ForecastSummary();
  v20 = MEMORY[0x1E69E2000];
  v21 = v19;
  switch(*(v0 + *(v19 + 24)))
  {
    case 1:
      v20 = MEMORY[0x1E69E2008];
      goto LABEL_8;
    case 2:
      v20 = MEMORY[0x1E69E1FE0];
      goto LABEL_8;
    case 3:
      v20 = MEMORY[0x1E69E1FF0];
      goto LABEL_8;
    case 4:
      v20 = MEMORY[0x1E69E1FF8];
      goto LABEL_8;
    case 5:
      v20 = MEMORY[0x1E69E2010];
      goto LABEL_8;
    case 6:
      v20 = MEMORY[0x1E69E1FE8];
      goto LABEL_8;
    case 7:
      goto LABEL_23;
    default:
LABEL_8:
      (*(v14 + 104))(v18, *v20, v12);
      OUTLINED_FUNCTION_36();
      sub_1B62200A4();
      (*(v14 + 8))(v18, v12);
      sub_1B60430B8(v0 + *(v21 + 20), v1, &qword_1EB924600);
      OUTLINED_FUNCTION_16_5(v1, 1, v6);
      if (v22)
      {
        sub_1B60372E0(v1, &qword_1EB924600);
      }

      else
      {
        (*(v29 + 32))(v11, v1, v6);
        v23 = sub_1B6043060();
        OUTLINED_FUNCTION_5_40(v23);
        sub_1B6220094();
        (*(v29 + 8))(v11, v6);
      }

      OUTLINED_FUNCTION_37_6();
      if (v24)
      {
        goto LABEL_17;
      }

      OUTLINED_FUNCTION_76_3();
      if (v22)
      {
        __break(1u);
        goto LABEL_21;
      }

      if (v25 <= -129.0)
      {
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      OUTLINED_FUNCTION_15_22();
      if (!v27)
      {
LABEL_22:
        __break(1u);
LABEL_23:
        OUTLINED_FUNCTION_23_16();
        OUTLINED_FUNCTION_22_11();
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_35_5(v26);
      sub_1B6220074();
LABEL_17:
      OUTLINED_FUNCTION_37_6();
      if ((v28 & 1) == 0)
      {
        OUTLINED_FUNCTION_18_18();
        sub_1B6220084();
      }

      sub_1B621DD04();
      OUTLINED_FUNCTION_45();
      return;
  }
}

void TrendDeviation.encode(using:)()
{
  OUTLINED_FUNCTION_44();
  v3 = v1;
  v61 = v5;
  v62 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927798);
  v7 = OUTLINED_FUNCTION_0(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2_3();
  v60 = v8;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_25_5();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_6_16();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = sub_1B621F8C4();
  OUTLINED_FUNCTION_2();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_3();
  v59 = v18;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16();
  v58 = v20;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_16();
  v57 = v22;
  OUTLINED_FUNCTION_8();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v57 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB924600);
  OUTLINED_FUNCTION_0(v26);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v57 - v28;
  sub_1B60430B8(v3, &v57 - v28, &qword_1EB924600);
  v30 = sub_1B621D8F4();
  OUTLINED_FUNCTION_16_5(v29, 1, v30);
  if (v31)
  {
    sub_1B60372E0(v29, &qword_1EB924600);
  }

  else
  {
    sub_1B6043060();
    OUTLINED_FUNCTION_10_6();
    (*(v32 + 8))(v29, v30);
  }

  v33 = type metadata accessor for TrendDeviation();
  v34 = MEMORY[0x1E69E1EF8];
  v35 = v33;
  switch(*(v3 + *(v33 + 20)))
  {
    case 4:
      OUTLINED_FUNCTION_63_3(v13);
      v36 = *v34;
      v37 = *(v16 + 104);
      v37(v25, v36, v14);
      break;
    default:
      v37 = *(v16 + 104);
      v38 = OUTLINED_FUNCTION_88_2();
      (v37)(v38);
      OUTLINED_FUNCTION_42_6(v13);
      OUTLINED_FUNCTION_102();
      v39();
      break;
  }

  switch(*(v3 + v35[6]))
  {
    case 4:
      OUTLINED_FUNCTION_63_3(v2);
      v40 = OUTLINED_FUNCTION_88_2();
      (v37)(v40);
      break;
    default:
      v41 = OUTLINED_FUNCTION_45_5();
      (v37)(v41);
      OUTLINED_FUNCTION_42_6(v2);
      v42 = OUTLINED_FUNCTION_51_4();
      v43(v42);
      break;
  }

  v44 = MEMORY[0x1E69E1EF8];
  switch(*(v3 + v35[7]))
  {
    case 1:
      v44 = MEMORY[0x1E69E1EF0];
      goto LABEL_14;
    case 2:
      v44 = MEMORY[0x1E69E1EE8];
      goto LABEL_14;
    case 4:
      OUTLINED_FUNCTION_63_3(v0);
      v45 = v58;
      v46 = OUTLINED_FUNCTION_45_5();
      (v37)(v46);
      goto LABEL_15;
    default:
LABEL_14:
      v37(v0, *v44, v14);
      OUTLINED_FUNCTION_42_6(v0);
      v45 = v58;
      v47 = OUTLINED_FUNCTION_36();
      v48(v47);
LABEL_15:
      v49 = v35[8];
      v50 = MEMORY[0x1E69E1EF8];
      v51 = v59;
      switch(*(v3 + v49))
      {
        case 1:
          v50 = MEMORY[0x1E69E1EF0];
          goto LABEL_19;
        case 2:
          v50 = MEMORY[0x1E69E1EE8];
          goto LABEL_19;
        case 4:
          OUTLINED_FUNCTION_63_3(v60);
          v37(v51, *v50, v14);
          goto LABEL_20;
        default:
LABEL_19:
          v52 = *v50;
          v53 = v60;
          v37(v60, v52, v14);
          OUTLINED_FUNCTION_42_6(v53);
          v54(v51, v53, v14);
LABEL_20:
          sub_1B621F844();
          v55 = *(v16 + 8);
          v55(v51, v14);
          v55(v45, v14);
          v56 = OUTLINED_FUNCTION_10_0();
          (v55)(v56);
          v55(v25, v14);
          OUTLINED_FUNCTION_45();
          return;
      }
  }
}

void WeatherComparison.encode(using:)()
{
  OUTLINED_FUNCTION_116();
  v1 = sub_1B6220194();
  OUTLINED_FUNCTION_2();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14();
  v7 = v6 - v5;
  v8 = sub_1B621F0E4();
  OUTLINED_FUNCTION_2();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14();
  v14 = v13 - v12;
  v15 = sub_1B621FF24();
  OUTLINED_FUNCTION_2();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_14();
  v21 = v20 - v19;
  (*(v17 + 104))(v20 - v19, **(&unk_1E7C30078 + *v0), v15);
  OUTLINED_FUNCTION_83_1();
  v22(v14);
  (*(v3 + 104))(v7, *MEMORY[0x1E69E2068], v1);
  type metadata accessor for WeatherComparison();
  sub_1B6043060();
  sub_1B621FF74();
  v23 = OUTLINED_FUNCTION_48_4();
  v24(v23);
  (*(v10 + 8))(v14, v8);
  (*(v17 + 8))(v21, v15);
  OUTLINED_FUNCTION_117();
}

uint64_t OUTLINED_FUNCTION_98_2()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0);
}

uint64_t sub_1B61C2CA8()
{
  v0 = sub_1B6221CD4();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1B61C2D18@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B61C2CA8();
  *a1 = result;
  return result;
}

uint64_t sub_1B61C2D48@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B61C2D74(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B61C2D74(char a1)
{
  if (!a1)
  {
    return 0x617453796C696164;
  }

  if (a1 == 1)
  {
    return 0x6D7553796C696164;
  }

  return 0xD000000000000011;
}

_BYTE *storeEnumTagSinglePayload for WeatherStatisticsProduct(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B61C2ED0()
{
  result = qword_1EB9277A0;
  if (!qword_1EB9277A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9277A0);
  }

  return result;
}

uint64_t sub_1B61C2F24()
{
  v0 = sub_1B621DC24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B621DC14();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Settings.MemoryTesting();
  (*(v5 + 104))(v7, *MEMORY[0x1E69D6E90], v4);
  if (qword_1EDAB4AA8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EDAB4AB0);
  (*(v1 + 16))(v3, v8, v0);
  result = sub_1B621DBB4();
  qword_1EDAAF558 = result;
  return result;
}

uint64_t sub_1B61C3130()
{
  v0 = sub_1B621DC14();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1B621DC24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9277C0);
  v10[15] = 0;
  if (qword_1EDAB4AA8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_1EDAB4AB0);
  (*(v5 + 16))(v7, v8, v4);
  (*(v1 + 104))(v3, *MEMORY[0x1E69D6E90], v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9277C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9277D0);
  *(swift_allocObject() + 16) = xmmword_1B6223880;
  v10[14] = 2;
  sub_1B621DC34();
  v10[13] = 4;
  sub_1B621DC34();
  v10[12] = 5;
  sub_1B621DC34();
  sub_1B61C3AF4();
  result = sub_1B621DC44();
  qword_1EB9277A8 = result;
  return result;
}

uint64_t Settings.MemoryTesting.Kind.init(rawValue:)@<X0>(char *a1@<X8>)
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

unint64_t Settings.MemoryTesting.Kind.rawValue.getter()
{
  result = 1701736302;
  switch(*v0)
  {
    case 1:
      result = 1701602409;
      break;
    case 2:
      result = 0xD000000000000022;
      break;
    case 3:
      result = 0x6573616261746164;
      break;
    case 4:
      result = 0xD00000000000001CLL;
      break;
    case 5:
      result = 0xD00000000000001FLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1B61C3600@<X0>(unint64_t *a1@<X8>)
{
  result = Settings.MemoryTesting.Kind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B61C3628(uint64_t a1)
{
  v2 = sub_1B61C3AA0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1B61C367C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B61C3AA0();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1B61C36D8(uint64_t a1)
{
  v2 = sub_1B61C3AA0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t Settings.MemoryTesting.__allocating_init(key:defaultValue:access:)()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_14_0();
  v1 = swift_allocObject();
  v2 = OUTLINED_FUNCTION_16_0();
  v3(v2);
  OUTLINED_FUNCTION_23_10();
  v4 = OUTLINED_FUNCTION_21_0();
  v5(v4);
  return v1;
}

uint64_t Settings.MemoryTesting.init(key:defaultValue:access:)()
{
  OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_5_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_14_0();
  v2 = OUTLINED_FUNCTION_16_0();
  v3(v2);
  OUTLINED_FUNCTION_23_10();
  v4 = OUTLINED_FUNCTION_21_0();
  v5(v4);
  return v0;
}

uint64_t Settings.MemoryTesting.__deallocating_deinit()
{
  v0 = _s11TeaSettings0B0C13WeatherDaemonE0D0V11PerformanceCfd_0();

  return MEMORY[0x1EEE6BDC0](v0, 16, 7);
}

unint64_t sub_1B61C38DC()
{
  result = qword_1EB9277B0;
  if (!qword_1EB9277B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9277B0);
  }

  return result;
}

uint64_t type metadata accessor for Settings.MemoryTesting()
{
  result = qword_1EDAAF588;
  if (!qword_1EDAAF588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

_BYTE *_s13MemoryTestingC4KindOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B61C3AA0()
{
  result = qword_1EB9277B8;
  if (!qword_1EB9277B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9277B8);
  }

  return result;
}

unint64_t sub_1B61C3AF4()
{
  result = qword_1EB9277D8;
  if (!qword_1EB9277D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9277D8);
  }

  return result;
}

unint64_t sub_1B61C3B6C()
{
  result = qword_1EB9277F0;
  if (!qword_1EB9277F0)
  {
    type metadata accessor for MonthlyWeatherStatistics();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9277F0);
  }

  return result;
}

uint64_t TideEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t TideEvent.date.setter()
{
  OUTLINED_FUNCTION_3();
  sub_1B621D8F4();
  OUTLINED_FUNCTION_9();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t TideEvent.eventType.setter(char a1)
{
  result = type metadata accessor for TideEvent();
  *(v1 + *(result + 20)) = a1 & 1;
  return result;
}

uint64_t (*TideEvent.eventType.modify())(void)
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for TideEvent();
  return nullsub_1;
}

uint64_t TideEvent.height.setter(double a1)
{
  result = type metadata accessor for TideEvent();
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t (*TideEvent.height.modify())(void)
{
  OUTLINED_FUNCTION_3();
  type metadata accessor for TideEvent();
  return nullsub_1;
}

BOOL static TideEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1B621D8A4() & 1) != 0 && (v4 = type metadata accessor for TideEvent(), (sub_1B60E1F48(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20)))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B61C3E44(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x707954746E657665 && a2 == 0xE900000000000065;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
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

uint64_t sub_1B61C3F58(char a1)
{
  if (!a1)
  {
    return 1702125924;
  }

  if (a1 == 1)
  {
    return 0x707954746E657665;
  }

  return 0x746867696568;
}

uint64_t sub_1B61C3FB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61C3E44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61C3FD8(uint64_t a1)
{
  v2 = sub_1B61C4230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C4014(uint64_t a1)
{
  v2 = sub_1B61C4230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TideEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9277F8);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61C4230();
  sub_1B62220F4();
  v12[15] = 0;
  sub_1B621D8F4();
  sub_1B609F140(&unk_1EDAB20F8);
  sub_1B6221EC4();
  if (!v2)
  {
    v12[14] = *(v3 + *(type metadata accessor for TideEvent() + 20));
    v12[13] = 1;
    sub_1B61C4284();
    sub_1B6221EC4();
    v12[12] = 2;
    sub_1B6221EA4();
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t sub_1B61C4230()
{
  result = qword_1EB927800;
  if (!qword_1EB927800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927800);
  }

  return result;
}

unint64_t sub_1B61C4284()
{
  result = qword_1EB927808;
  if (!qword_1EB927808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927808);
  }

  return result;
}

uint64_t TideEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1B621D8F4();
  OUTLINED_FUNCTION_2();
  v23 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927810);
  OUTLINED_FUNCTION_2();
  v24 = v9;
  v25 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = type metadata accessor for TideEvent();
  OUTLINED_FUNCTION_9();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61C4230();
  sub_1B62220D4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v23;
  v30 = 0;
  sub_1B609F140(&qword_1EDAB20F0);
  sub_1B6221DD4();
  v15 = *(v14 + 32);
  v16 = v26;
  v26 = v4;
  v15(v13, v16, v4);
  v28 = 1;
  sub_1B61C4624();
  sub_1B6221DD4();
  v13[*(v10 + 20)] = v29;
  v27 = 2;
  sub_1B6221DB4();
  v18 = v17;
  v19 = OUTLINED_FUNCTION_2_59();
  v20(v19);
  *&v13[*(v10 + 24)] = v18;
  sub_1B61C4678(v13, v22);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B61C46DC(v13);
}

unint64_t sub_1B61C4624()
{
  result = qword_1EB927818;
  if (!qword_1EB927818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927818);
  }

  return result;
}

uint64_t sub_1B61C4678(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TideEvent();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B61C46DC(uint64_t a1)
{
  v2 = type metadata accessor for TideEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

WeatherDaemon::TideEvent::EventType_optional __swiftcall TideEvent.EventType.init(rawValue:)(Swift::String rawValue)
{
  v1 = sub_1B6221CD4();

  if (v1 == 1)
  {
    v2.value = WeatherDaemon_TideEvent_EventType_high;
  }

  else
  {
    v2.value = WeatherDaemon_TideEvent_EventType_unknownDefault;
  }

  if (v1)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t TideEvent.EventType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 1751607656;
  }

  else
  {
    return 7827308;
  }
}

unint64_t sub_1B61C47EC()
{
  result = qword_1EB927820;
  if (!qword_1EB927820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927820);
  }

  return result;
}

WeatherDaemon::TideEvent::EventType_optional sub_1B61C4858@<W0>(Swift::String *a1@<X0>, WeatherDaemon::TideEvent::EventType_optional *a2@<X8>)
{
  result.value = TideEvent.EventType.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1B61C4888@<X0>(uint64_t *a1@<X8>)
{
  result = TideEvent.EventType.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

_BYTE *storeEnumTagSinglePayload for TideEvent.EventType(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for TideEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B61C4B54()
{
  result = qword_1EB927828;
  if (!qword_1EB927828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927828);
  }

  return result;
}

unint64_t sub_1B61C4BAC()
{
  result = qword_1EB927830;
  if (!qword_1EB927830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927830);
  }

  return result;
}

unint64_t sub_1B61C4C04()
{
  result = qword_1EB927838;
  if (!qword_1EB927838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927838);
  }

  return result;
}

unint64_t sub_1B61C4C58()
{
  result = qword_1EB927840;
  if (!qword_1EB927840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927840);
  }

  return result;
}

uint64_t sub_1B61C4DB4()
{
  sub_1B6222074();
  sub_1B62212D4();
  return sub_1B62220A4();
}

uint64_t sub_1B61C4FCC()
{
  OUTLINED_FUNCTION_2_60();
  v0(v1);
  sub_1B62212D4();

  return sub_1B62220A4();
}

uint64_t sub_1B61C5058()
{
  sub_1B6222074();
  sub_1B62212D4();

  return sub_1B62220A4();
}

uint64_t sub_1B61C5108()
{
  OUTLINED_FUNCTION_2_60();
  v0(v3, v1);
  return sub_1B62220A4();
}

WeatherDaemon::Placement __swiftcall Placement.init(articles:location:)(WeatherDaemon::Placement articles, WeatherDaemon::PlacementLocation location)
{
  v3 = *location;
  *v2 = articles.articles._rawValue;
  *(v2 + 8) = v3;
  articles.location = location;
  return articles;
}

uint64_t Placement.articles.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Placement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927848);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61C539C();
  sub_1B62220D4();
  if (!v2)
  {
    v17 = 0;
    sub_1B61C53F0();
    OUTLINED_FUNCTION_0_111();
    v11 = sub_1B6221D14();
    v15 = 1;
    sub_1B61C5444();
    OUTLINED_FUNCTION_0_111();
    sub_1B6221DD4();
    (*(v7 + 8))(v10, v5);
    v12 = v16;
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B61C539C()
{
  result = qword_1EDAAEB80;
  if (!qword_1EDAAEB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEB80);
  }

  return result;
}

unint64_t sub_1B61C53F0()
{
  result = qword_1EDAAEBD0;
  if (!qword_1EDAAEBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEBD0);
  }

  return result;
}

unint64_t sub_1B61C5444()
{
  result = qword_1EDAAEE80;
  if (!qword_1EDAAEE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEE80);
  }

  return result;
}

uint64_t sub_1B61C5498()
{
  v0 = sub_1B6221CD4();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B61C5510@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B61C5498();
  *a1 = result;
  return result;
}

uint64_t sub_1B61C5540@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1B6088C8C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1B61C5574@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1B61C5498();
  *a1 = result;
  return result;
}

uint64_t sub_1B61C559C(uint64_t a1)
{
  v2 = sub_1B61C539C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C55D8(uint64_t a1)
{
  v2 = sub_1B61C539C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Placement.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927850);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  v10 = *v1;
  v13 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61C539C();
  sub_1B6220784();
  sub_1B62220F4();
  v17 = v10;
  v16 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927858);
  sub_1B61C57D0();
  sub_1B6221EC4();

  if (!v2)
  {
    v15 = v13;
    v14 = 1;
    sub_1B61C58A8();
    sub_1B6221EC4();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1B61C57D0()
{
  result = qword_1EDAAEAE0;
  if (!qword_1EDAAEAE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB927858);
    sub_1B61C5854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEAE0);
  }

  return result;
}

unint64_t sub_1B61C5854()
{
  result = qword_1EDAAEBD8;
  if (!qword_1EDAAEBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEBD8);
  }

  return result;
}

unint64_t sub_1B61C58A8()
{
  result = qword_1EDAAEE90;
  if (!qword_1EDAAEE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEE90);
  }

  return result;
}

uint64_t sub_1B61C595C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_1B61C599C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Placement.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B61C5ACC()
{
  result = qword_1EB927860;
  if (!qword_1EB927860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927860);
  }

  return result;
}

unint64_t sub_1B61C5B24()
{
  result = qword_1EDAAEB70;
  if (!qword_1EDAAEB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEB70);
  }

  return result;
}

unint64_t sub_1B61C5B7C()
{
  result = qword_1EDAAEB78;
  if (!qword_1EDAAEB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAAEB78);
  }

  return result;
}

uint64_t static WeatherDataProxyRequest.supportsSecureCoding.setter(char a1)
{
  result = swift_beginAccess();
  byte_1EB927870 = a1;
  return result;
}

uint64_t sub_1B61C5D38@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1EB927870;
  return result;
}

uint64_t sub_1B61C5D84(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1EB927870 = v1;
  return result;
}

id WeatherDataProxyRequest.init(requests:location:options:)()
{
  OUTLINED_FUNCTION_1_68();
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13WeatherDaemon23WeatherDataProxyRequest_requests] = v2;
  v6 = &v1[OBJC_IVAR____TtC13WeatherDaemon23WeatherDataProxyRequest_location];
  *v6 = v4;
  *(v6 + 1) = v3;
  sub_1B60E4560(v0, &v1[OBJC_IVAR____TtC13WeatherDaemon23WeatherDataProxyRequest_options]);
  v9.receiver = v1;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  sub_1B60E45C4(v0);
  return v7;
}

Swift::Void __swiftcall WeatherDataProxyRequest.encode(with:)(NSCoder with)
{
  v2 = v1;
  sub_1B621D304();
  swift_allocObject();
  sub_1B621D2F4();
  sub_1B6220784();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927888);
  sub_1B61C677C(&qword_1EB927890, sub_1B61C6198);
  v3 = sub_1B621D2E4();
  v5 = v4;

  v6 = sub_1B621D6F4();
  v7 = sub_1B62211B4();
  v8 = OUTLINED_FUNCTION_0_112();
  [v8 v9];

  sub_1B60362A8(v3, v5);
  v10 = v2 + OBJC_IVAR____TtC13WeatherDaemon23WeatherDataProxyRequest_location;
  v11 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v12 = sub_1B62211B4();
  v13 = OUTLINED_FUNCTION_0_112();
  [v13 v14];

  v15 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v16 = sub_1B62211B4();
  v17 = OUTLINED_FUNCTION_0_112();
  [v17 v18];

  swift_allocObject();
  sub_1B621D2F4();
  type metadata accessor for WeatherDataRequestOptions();
  sub_1B619DAA8(&qword_1EB926DE0);
  v19 = sub_1B621D2E4();
  v21 = v20;

  v22 = sub_1B621D6F4();
  v23 = sub_1B62211B4();
  v24 = OUTLINED_FUNCTION_0_112();
  [v24 v25];

  sub_1B60362A8(v19, v21);
}

unint64_t sub_1B61C6198()
{
  result = qword_1EB927898;
  if (!qword_1EB927898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927898);
  }

  return result;
}

id WeatherDataProxyRequest.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB926DE8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v37 - v6;
  v8 = type metadata accessor for WeatherDataRequestOptions();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B602370C(0, &qword_1EB927120);
  v11 = sub_1B6221994();
  if (!v11)
  {

LABEL_12:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v12 = v11;
  v43 = v10;
  v44 = v7;
  v13 = sub_1B621D714();
  v15 = v14;

  sub_1B621D2D4();
  swift_allocObject();
  sub_1B621D2C4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927888);
  sub_1B61C677C(&qword_1EB9278A8, sub_1B61C67F4);
  sub_1B621D2B4();
  v41 = v15;
  v42 = ObjectType;

  v16 = OBJC_IVAR____TtC13WeatherDaemon23WeatherDataProxyRequest_requests;
  *&v2[OBJC_IVAR____TtC13WeatherDaemon23WeatherDataProxyRequest_requests] = v46;
  sub_1B602370C(0, &qword_1EDAAE9A0);
  v17 = sub_1B6221994();
  if (!v17)
  {
    sub_1B60362A8(v13, v41);

LABEL_11:

    goto LABEL_12;
  }

  v39 = v16;
  v40 = v17;
  v18 = sub_1B6221994();
  if (!v18)
  {
    OUTLINED_FUNCTION_2_61();

    goto LABEL_11;
  }

  v19 = v18;
  v20 = v40;
  [v40 doubleValue];
  v22 = v21;
  [v19 doubleValue];
  v23 = &v2[OBJC_IVAR____TtC13WeatherDaemon23WeatherDataProxyRequest_location];
  *v23 = v22;
  *(v23 + 1) = v24;
  v25 = sub_1B6221994();
  v26 = v19;
  v27 = v42;
  if (!v25)
  {

    OUTLINED_FUNCTION_2_61();
    goto LABEL_11;
  }

  v28 = v25;
  v38 = v26;
  v29 = sub_1B621D714();
  v31 = v30;

  v32 = v31;
  swift_allocObject();
  sub_1B621D2C4();
  sub_1B619DAA8(&unk_1EB926DF0);
  v33 = v44;
  sub_1B621D2B4();

  __swift_storeEnumTagSinglePayload(v33, 0, 1, v8);
  v35 = v43;
  sub_1B619DB54(v33, v43);
  sub_1B60E4560(v35, &v2[OBJC_IVAR____TtC13WeatherDaemon23WeatherDataProxyRequest_options]);
  v45.receiver = v2;
  v45.super_class = v27;
  v36 = objc_msgSendSuper2(&v45, sel_init);
  OUTLINED_FUNCTION_2_61();

  sub_1B60362A8(v29, v32);
  sub_1B60E45C4(v35);
  return v36;
}

uint64_t sub_1B61C677C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB927888);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B61C67F4()
{
  result = qword_1EB9278B0;
  if (!qword_1EB9278B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9278B0);
  }

  return result;
}

id WeatherDataProxyRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WeatherDataProxyRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for WeatherDataProxyRequest()
{
  result = qword_1EB9278C0;
  if (!qword_1EB9278C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B61C69BC()
{
  result = type metadata accessor for WeatherDataRequestOptions();
  if (v1 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

WeatherDaemon::Pollutant __swiftcall Pollutant.init(pollutantType:amount:units:)(WeatherDaemon::PollutantType pollutantType, Swift::Double amount, WeatherDaemon::PollutantUnits units)
{
  v4 = *units;
  *v3 = *pollutantType;
  *(v3 + 8) = amount;
  *(v3 + 16) = v4;
  result.amount = amount;
  result.units = units;
  result.pollutantType = pollutantType;
  return result;
}

uint64_t Pollutant.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9278D0);
  OUTLINED_FUNCTION_2();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61C6D3C();
  sub_1B62220D4();
  if (!v2)
  {
    v16[14] = 0;
    sub_1B60EAB18();
    OUTLINED_FUNCTION_1_69();
    v11 = v16[15];
    v16[13] = 1;
    sub_1B6221DB4();
    v14 = v13;
    v16[11] = 2;
    sub_1B61C6D90();
    OUTLINED_FUNCTION_1_69();
    (*(v7 + 8))(v10, v5);
    v15 = v16[12];
    *a2 = v11;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1B61C6D3C()
{
  result = qword_1EDAB0498;
  if (!qword_1EDAB0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0498);
  }

  return result;
}

unint64_t sub_1B61C6D90()
{
  result = qword_1EDAB0710;
  if (!qword_1EDAB0710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0710);
  }

  return result;
}

uint64_t sub_1B61C6DE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6174756C6C6F70 && a2 == 0xED00006570795474;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x746E756F6D61 && a2 == 0xE600000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x7374696E75 && a2 == 0xE500000000000000)
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

uint64_t sub_1B61C6EF4(char a1)
{
  if (!a1)
  {
    return 0x6E6174756C6C6F70;
  }

  if (a1 == 1)
  {
    return 0x746E756F6D61;
  }

  return 0x7374696E75;
}

uint64_t sub_1B61C6F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61C6DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61C6F80(uint64_t a1)
{
  v2 = sub_1B61C6D3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C6FBC(uint64_t a1)
{
  v2 = sub_1B61C6D3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Pollutant.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9278D8);
  OUTLINED_FUNCTION_2();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  v10 = *v1;
  HIDWORD(v13) = v1[16];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B61C6D3C();
  sub_1B62220F4();
  v18 = v10;
  v17 = 0;
  sub_1B60EB38C();
  sub_1B6221EC4();
  if (!v2)
  {
    v11 = BYTE4(v13);
    v16 = 1;
    sub_1B6221EA4();
    v15 = v11;
    v14 = 2;
    sub_1B61C71C0();
    sub_1B6221EC4();
  }

  return (*(v6 + 8))(v9, v4);
}

unint64_t sub_1B61C71C0()
{
  result = qword_1EDAB0720;
  if (!qword_1EDAB0720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0720);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Pollutant(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 17))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 16);
      v4 = v3 >= 2;
      v2 = v3 - 2;
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

uint64_t storeEnumTagSinglePayload for Pollutant(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Pollutant.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B61C73BC()
{
  result = qword_1EB9278E0;
  if (!qword_1EB9278E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9278E0);
  }

  return result;
}

unint64_t sub_1B61C7414()
{
  result = qword_1EDAB0488;
  if (!qword_1EDAB0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0488);
  }

  return result;
}

unint64_t sub_1B61C746C()
{
  result = qword_1EDAB0490;
  if (!qword_1EDAB0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDAB0490);
  }

  return result;
}

uint64_t sub_1B61C74EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x614365726F6E6769 && a2 == 0xEB00000000656863;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6568636143657375 && a2 == 0xE800000000000000)
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

uint64_t sub_1B61C75B8(char a1)
{
  if (a1)
  {
    return 0x6568636143657375;
  }

  else
  {
    return 0x614365726F6E6769;
  }
}

uint64_t sub_1B61C760C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61C74EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61C7634(uint64_t a1)
{
  v2 = sub_1B61C7AE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C7670(uint64_t a1)
{
  v2 = sub_1B61C7AE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B61C76AC(uint64_t a1)
{
  v2 = sub_1B61C7BE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C76E8(uint64_t a1)
{
  v2 = sub_1B61C7BE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B61C7728(uint64_t a1)
{
  v2 = sub_1B61C7B3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C7764(uint64_t a1)
{
  v2 = sub_1B61C7B3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WeatherDataCacheReadPolicy.encode(to:)()
{
  OUTLINED_FUNCTION_12_0();
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9278E8);
  OUTLINED_FUNCTION_2();
  v20 = v6;
  v21 = v5;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v19 = v8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9278F0);
  OUTLINED_FUNCTION_2();
  v17 = v9;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13_23();
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9278F8);
  OUTLINED_FUNCTION_2();
  v12 = v11;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_2_62();
  v14 = *(v0 + 24);
  OUTLINED_FUNCTION_25_14(v4, v4[3]);
  sub_1B61C7AE8();
  OUTLINED_FUNCTION_40_7();
  if ((v14 & 0xFF00) == 0x200)
  {
    sub_1B61C7BE4();
    sub_1B6221E14();
    (*(v17 + 8))(v2, v18);
    (*(v12 + 8))(v1, v22);
  }

  else
  {
    sub_1B61C7B3C();
    OUTLINED_FUNCTION_11_15();
    sub_1B6221E14();
    sub_1B61C7B90();
    sub_1B6221EC4();
    (*(v20 + 8))(v19, v21);
    v15 = OUTLINED_FUNCTION_27_12();
    v16(v15);
  }

  OUTLINED_FUNCTION_13();
}

unint64_t sub_1B61C7AE8()
{
  result = qword_1EB927900;
  if (!qword_1EB927900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927900);
  }

  return result;
}

unint64_t sub_1B61C7B3C()
{
  result = qword_1EB927908;
  if (!qword_1EB927908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927908);
  }

  return result;
}

unint64_t sub_1B61C7B90()
{
  result = qword_1EB927910;
  if (!qword_1EB927910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927910);
  }

  return result;
}

unint64_t sub_1B61C7BE4()
{
  result = qword_1EB927918;
  if (!qword_1EB927918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927918);
  }

  return result;
}

void WeatherDataCacheReadPolicy.init(from:)()
{
  OUTLINED_FUNCTION_12_0();
  v2 = v1;
  v46 = v3;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927920);
  OUTLINED_FUNCTION_2();
  v45 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_62();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927928);
  OUTLINED_FUNCTION_2();
  v44 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v41 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927930);
  OUTLINED_FUNCTION_2();
  v47 = v11;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_14(v2, v2[3]);
  sub_1B61C7AE8();
  sub_1B62220D4();
  if (!v0)
  {
    v42 = v6;
    v43 = v10;
    v54 = v2;
    v13 = sub_1B6221DF4();
    sub_1B60ED58C(v13, 0);
    if (v15 != v14 >> 1)
    {
      OUTLINED_FUNCTION_10_25();
      OUTLINED_FUNCTION_34_7();
      if (v18 == v19)
      {
        __break(1u);
        return;
      }

      HIDWORD(v41) = *(v17 + v16);
      sub_1B60ED584(v16 + 1);
      v21 = v20;
      v23 = v22;
      swift_unknownObjectRelease();
      if (v21 == v23 >> 1)
      {
        if ((v41 & 0x100000000) != 0)
        {
          LOBYTE(v49) = 1;
          sub_1B61C7B3C();
          OUTLINED_FUNCTION_20_18();
          sub_1B6221CF4();
          v24 = v46;
          sub_1B61CAFB8();
          sub_1B6221DD4();
          swift_unknownObjectRelease();
          v34 = OUTLINED_FUNCTION_33_6();
          v35(v34);
          v36 = OUTLINED_FUNCTION_27_12();
          v37(v36);
          v38 = v49;
          v39 = v50;
          v40 = v51 | ((v52 | (v53 << 16)) << 32);
        }

        else
        {
          LOBYTE(v49) = 0;
          sub_1B61C7BE4();
          v31 = v43;
          OUTLINED_FUNCTION_20_18();
          sub_1B6221CF4();
          v24 = v46;
          swift_unknownObjectRelease();
          (*(v44 + 8))(v31, v42);
          v32 = OUTLINED_FUNCTION_7_33();
          v33(v32);
          v39 = 0;
          v38 = 0uLL;
          v40 = 512;
        }

        *v24 = v38;
        *(v24 + 16) = v39;
        *(v24 + 24) = v40;
        *(v24 + 30) = BYTE6(v40);
        *(v24 + 28) = WORD2(v40);
        v30 = v54;
        goto LABEL_10;
      }
    }

    sub_1B6221B94();
    OUTLINED_FUNCTION_127();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925960);
    *v26 = &type metadata for WeatherDataCacheReadPolicy;
    sub_1B6221D04();
    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_10_6();
    (*(v27 + 104))(v26);
    swift_willThrow();
    swift_unknownObjectRelease();
    v28 = OUTLINED_FUNCTION_7_33();
    v29(v28);
    v2 = v54;
  }

  v30 = v2;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v30);
  OUTLINED_FUNCTION_13();
}

uint64_t sub_1B61C8188(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x654E726566657270 && a2 == 0xEC00000072657261;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B623FC00 == a2)
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

uint64_t sub_1B61C825C(char a1)
{
  if (a1)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x654E726566657270;
  }
}

uint64_t sub_1B61C82A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61C8188(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61C82D0(uint64_t a1)
{
  v2 = sub_1B61CB00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C830C(uint64_t a1)
{
  v2 = sub_1B61CB00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B61C8348(uint64_t a1)
{
  v2 = sub_1B61CB060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C8384(uint64_t a1)
{
  v2 = sub_1B61CB060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B61C83C0(uint64_t a1)
{
  v2 = sub_1B61CB0B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C83FC(uint64_t a1)
{
  v2 = sub_1B61CB0B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WeatherDataCacheFitnessPolicy.encode(to:)()
{
  OUTLINED_FUNCTION_12_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927940);
  OUTLINED_FUNCTION_2();
  v23 = v3;
  v24 = v2;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_9_0();
  v22 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927948);
  OUTLINED_FUNCTION_2();
  v20 = v7;
  v21 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_23();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927950);
  OUTLINED_FUNCTION_2();
  v11 = v10;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = *v0;
  v16 = OUTLINED_FUNCTION_35_6();
  OUTLINED_FUNCTION_25_14(v16, v17);
  sub_1B61CB00C();
  sub_1B62220F4();
  v18 = (v11 + 8);
  if (v15)
  {
    OUTLINED_FUNCTION_15();
    sub_1B61CB060();
    v19 = v22;
    OUTLINED_FUNCTION_11_15();
    sub_1B6221E14();
    (*(v23 + 8))(v19, v24);
  }

  else
  {
    sub_1B61CB0B4();
    OUTLINED_FUNCTION_11_15();
    sub_1B6221E14();
    (*(v20 + 8))(v1, v21);
  }

  (*v18)(v14, v9);
  OUTLINED_FUNCTION_13();
}

uint64_t WeatherDataCacheFitnessPolicy.hashValue.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_41_4();
  MEMORY[0x1B8C912A0](v1);
  return sub_1B62220A4();
}

void WeatherDataCacheFitnessPolicy.init(from:)()
{
  OUTLINED_FUNCTION_12_0();
  v51 = v0;
  v4 = v3;
  v48 = v5;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927970);
  OUTLINED_FUNCTION_2();
  v47 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927978);
  OUTLINED_FUNCTION_2();
  v46 = v11;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_62();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927980);
  OUTLINED_FUNCTION_2();
  v49 = v14;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_12_22();
  OUTLINED_FUNCTION_25_14(v4, v4[3]);
  sub_1B61CB00C();
  v16 = v51;
  sub_1B62220D4();
  if (v16)
  {
    goto LABEL_12;
  }

  v44 = v10;
  v45 = v2;
  v51 = v4;
  v17 = v50;
  v18 = sub_1B6221DF4();
  v19 = sub_1B60ED58C(v18, 0);
  if (v21 != v20 >> 1)
  {
    OUTLINED_FUNCTION_10_25();
    v43 = 0;
    OUTLINED_FUNCTION_34_7();
    if (v24 == v25)
    {
      __break(1u);
      return;
    }

    v26 = *(v23 + v22);
    v27 = sub_1B60ED584(v22 + 1);
    v29 = v28;
    v31 = v30;
    swift_unknownObjectRelease();
    if (v29 != v31 >> 1)
    {
      v50 = v27;
      goto LABEL_11;
    }

    if (v26)
    {
      OUTLINED_FUNCTION_15();
      sub_1B61CB060();
      v32 = v9;
      v33 = v13;
      OUTLINED_FUNCTION_20_18();
      v34 = v43;
      sub_1B6221CF4();
      v35 = v48;
      v36 = v49;
      if (!v34)
      {
        swift_unknownObjectRelease();
        (*(v47 + 8))(v32, v17);
LABEL_17:
        (*(v36 + 8))(v1, v33);
        *v35 = v26;
        __swift_destroy_boxed_opaque_existential_1(v51);
        goto LABEL_13;
      }
    }

    else
    {
      sub_1B61CB0B4();
      v40 = v45;
      v33 = v13;
      OUTLINED_FUNCTION_20_18();
      v41 = v43;
      sub_1B6221CF4();
      v35 = v48;
      v36 = v49;
      if (!v41)
      {
        swift_unknownObjectRelease();
        (*(v46 + 8))(v40, v44);
        goto LABEL_17;
      }
    }

    (*(v36 + 8))(v1, v33);
    swift_unknownObjectRelease();
    v4 = v51;
    goto LABEL_12;
  }

  v50 = v19;
LABEL_11:
  sub_1B6221B94();
  OUTLINED_FUNCTION_127();
  v38 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925960);
  *v38 = &type metadata for WeatherDataCacheFitnessPolicy;
  sub_1B6221D04();
  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_10_6();
  (*(v39 + 104))(v38);
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v49 + 8))(v1, v13);
  v4 = v51;
LABEL_12:
  __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_13:
  OUTLINED_FUNCTION_13();
}

uint64_t WeatherDataCacheReadConfig.age.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t WeatherDataCacheReadConfig.location.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

void WeatherDataCacheReadConfig.init(age:location:allowsFlexibleMarineTimeWindow:allowsMissingProducts:allowsFewerHours:allowsFewerDays:fitnessPolicy:)(char a1@<W2>, char a2@<W3>, char a3@<W4>, char a4@<W5>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_14_23(a1, a2, a3, a4, a5);
  *(v5 + 29) = v6;
  *(v5 + 30) = 0;
  OUTLINED_FUNCTION_11_24();
}

void WeatherDataCacheReadConfig.init(age:location:allowsFlexibleMarineTimeWindow:allowsMissingProducts:allowsFewerHours:allowsFewerDays:fitnessPolicy:interpolateCurrentWeather:)(char a1@<W2>, char a2@<W3>, char a3@<W4>, char a4@<W5>, uint64_t a5@<X8>)
{
  OUTLINED_FUNCTION_14_23(a1, a2, a3, a4, a5);
  *(v5 + 29) = v6;
  *(v5 + 30) = v7;
  OUTLINED_FUNCTION_11_24();
}

uint64_t sub_1B61C8DAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6645601 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD00000000000001ELL && 0x80000001B623FC20 == a2;
      if (v7 || (sub_1B6221F24() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x80000001B623FC40 == a2;
        if (v8 || (sub_1B6221F24() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000010 && 0x80000001B623FC60 == a2;
          if (v9 || (sub_1B6221F24() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x654673776F6C6C61 && a2 == 0xEF73796144726577;
            if (v10 || (sub_1B6221F24() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x507373656E746966 && a2 == 0xED00007963696C6FLL;
              if (v11 || (sub_1B6221F24() & 1) != 0)
              {

                return 6;
              }

              else if (a1 == 0xD000000000000019 && 0x80000001B623FC80 == a2)
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

unint64_t sub_1B61C903C(char a1)
{
  result = 6645601;
  switch(a1)
  {
    case 1:
      result = 0x6E6F697461636F6CLL;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
      v3 = 5;
      goto LABEL_7;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x654673776F6C6C61;
      break;
    case 6:
      result = 0x507373656E746966;
      break;
    case 7:
      v3 = 9;
LABEL_7:
      result = v3 | 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B61C9150@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61C8DAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61C9178(uint64_t a1)
{
  v2 = sub_1B61CB108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C91B4(uint64_t a1)
{
  v2 = sub_1B61CB108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WeatherDataCacheReadConfig.encode(to:)()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927988);
  OUTLINED_FUNCTION_2();
  v5 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = *v0;
  v10 = *(v0 + 8);
  v24 = v0[2];
  v27 = *(v0 + 24);
  v11 = *(v0 + 25);
  v22 = *(v0 + 26);
  v23 = v11;
  v12 = *(v0 + 27);
  v20 = *(v0 + 28);
  v21 = v12;
  v13 = *(v0 + 29);
  v18 = *(v0 + 30);
  v19 = v13;
  v14 = v3[3];
  v15 = v3;
  v17 = v16;
  OUTLINED_FUNCTION_25_14(v15, v14);
  sub_1B61CB108();
  sub_1B62220F4();
  v25 = v9;
  v26 = v10;
  sub_1B61CB15C();
  OUTLINED_FUNCTION_1_70();
  sub_1B6221EC4();
  if (!v1)
  {
    v25 = v24;
    v26 = v27;
    OUTLINED_FUNCTION_15();
    sub_1B61CB1B0();
    OUTLINED_FUNCTION_1_70();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_26_13(2);
    OUTLINED_FUNCTION_1_70();
    sub_1B6221E94();
    OUTLINED_FUNCTION_26_13(3);
    OUTLINED_FUNCTION_1_70();
    sub_1B6221E94();
    OUTLINED_FUNCTION_26_13(4);
    OUTLINED_FUNCTION_1_70();
    sub_1B6221E94();
    OUTLINED_FUNCTION_26_13(5);
    OUTLINED_FUNCTION_1_70();
    sub_1B6221E94();
    LOBYTE(v25) = v19;
    sub_1B61CB204();
    OUTLINED_FUNCTION_1_70();
    sub_1B6221EC4();
    OUTLINED_FUNCTION_26_13(7);
    OUTLINED_FUNCTION_1_70();
    sub_1B6221E94();
  }

  (*(v5 + 8))(v8, v17);
  OUTLINED_FUNCTION_13();
}

void WeatherDataCacheReadConfig.init(from:)()
{
  OUTLINED_FUNCTION_12_0();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9279B0);
  OUTLINED_FUNCTION_2();
  v8 = v7;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12_22();
  OUTLINED_FUNCTION_25_14(v3, v3[3]);
  sub_1B61CB108();
  sub_1B62220D4();
  if (!v0)
  {
    sub_1B61CB258();
    OUTLINED_FUNCTION_8_27();
    OUTLINED_FUNCTION_15();
    sub_1B61CB2AC();
    OUTLINED_FUNCTION_8_27();
    v14 = OUTLINED_FUNCTION_3_52(2);
    v10 = OUTLINED_FUNCTION_3_52(3);
    v13 = OUTLINED_FUNCTION_3_52(4);
    v12 = OUTLINED_FUNCTION_3_52(5);
    sub_1B61CB300();
    OUTLINED_FUNCTION_8_27();
    v11 = OUTLINED_FUNCTION_3_52(7);
    (*(v8 + 8))(v1, v6);
    *v5 = v15;
    *(v5 + 8) = v16;
    *(v5 + 16) = v15;
    *(v5 + 24) = v16;
    *(v5 + 25) = v14 & 1;
    *(v5 + 26) = v10 & 1;
    *(v5 + 27) = v13 & 1;
    *(v5 + 28) = v12 & 1;
    *(v5 + 29) = v15;
    *(v5 + 30) = v11 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1(v3);
  OUTLINED_FUNCTION_13();
}

void sub_1B61C9714()
{
  *&xmmword_1EDAAF1F8 = 1;
  BYTE8(xmmword_1EDAAF1F8) = 1;
  qword_1EDAAF208 = 0;
  LOBYTE(dword_1EDAAF210) = 1;
  *(&dword_1EDAAF210 + 1) = 0;
  *(&word_1EDAAF214 + 1) = 1;
  OUTLINED_FUNCTION_11_24();
}

double static WeatherDataCacheReadConfig.unexpiredExactMatches.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1EDAAF1F0 != -1)
  {
    swift_once();
  }

  *a1 = xmmword_1EDAAF1F8;
  result = *(&xmmword_1EDAAF1F8 + 15);
  *(a1 + 15) = *(&xmmword_1EDAAF1F8 + 15);
  return result;
}

void WeatherDataCacheReadConfig.init(age:location:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_15_23(a1, a2, a3);
  *(v3 + 25) = 0;
  OUTLINED_FUNCTION_5_41(v3);
}

void WeatherDataCacheReadConfig.init(age:location:allowsFewerHours:allowsFewerDays:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_15_23(a1, a2, a3);
  *(v3 + 25) = 0;
  *(v3 + 27) = v4;
  *(v3 + 28) = v5;
  OUTLINED_FUNCTION_5_41(v3);
}

uint64_t sub_1B61C97F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7958113 && a2 == 0xE300000000000000;
  if (v3 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6572697078656E75 && a2 == 0xE900000000000064;
    if (v6 || (sub_1B6221F24() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x416D756D6978616DLL && a2 == 0xEA00000000006567)
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

uint64_t sub_1B61C9918(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_41_4();
  MEMORY[0x1B8C912A0](a1);
  return sub_1B62220A4();
}

uint64_t sub_1B61C9958(char a1)
{
  if (!a1)
  {
    return 7958113;
  }

  if (a1 == 1)
  {
    return 0x6572697078656E75;
  }

  return 0x416D756D6978616DLL;
}

uint64_t sub_1B61C99B0(uint64_t a1)
{
  v2 = sub_1B61CB450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C99EC(uint64_t a1)
{
  v2 = sub_1B61CB450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B61C9A30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61C97F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61C9A58(uint64_t a1)
{
  v2 = sub_1B61CB354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C9A94(uint64_t a1)
{
  v2 = sub_1B61CB354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B61C9AD0(uint64_t a1)
{
  v2 = sub_1B61CB3A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C9B0C(uint64_t a1)
{
  v2 = sub_1B61CB3A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B61C9B48(uint64_t a1)
{
  v2 = sub_1B61CB3FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61C9B84(uint64_t a1)
{
  v2 = sub_1B61CB3FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WeatherDataAgePredicate.encode(to:)()
{
  OUTLINED_FUNCTION_676();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9279D0);
  OUTLINED_FUNCTION_2();
  v31 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9279D8);
  OUTLINED_FUNCTION_2();
  v29 = v7;
  v30 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_9_0();
  v28 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9279E0);
  OUTLINED_FUNCTION_2();
  v26 = v11;
  v27 = v10;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_0();
  v25 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9279E8);
  OUTLINED_FUNCTION_2();
  v16 = v15;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_62();
  v18 = *v0;
  v19 = *(v0 + 8);
  OUTLINED_FUNCTION_25_14(v3, v3[3]);
  sub_1B61CB354();
  sub_1B62220F4();
  if (v19 == 1)
  {
    if (v18)
    {
      sub_1B61CB3FC();
      v20 = v28;
      OUTLINED_FUNCTION_19_18();
      v22 = v29;
      v21 = v30;
    }

    else
    {
      sub_1B61CB450();
      v20 = v25;
      OUTLINED_FUNCTION_19_18();
      v22 = v26;
      v21 = v27;
    }

    (*(v22 + 8))(v20, v21);
    (*(v16 + 8))(v1, v14);
  }

  else
  {
    sub_1B61CB3A8();
    OUTLINED_FUNCTION_19_18();
    sub_1B6221EA4();
    v23 = OUTLINED_FUNCTION_6_34();
    v24(v23, v31);
    (*(v16 + 8))(v1, v14);
  }

  OUTLINED_FUNCTION_677();
}

void WeatherDataAgePredicate.init(from:)()
{
  OUTLINED_FUNCTION_676();
  v4 = v3;
  v48 = v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927A10);
  OUTLINED_FUNCTION_2();
  v49 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_0();
  v50 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927A18);
  OUTLINED_FUNCTION_2();
  v46 = v10;
  v47 = v9;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_62();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927A20);
  OUTLINED_FUNCTION_2();
  v44 = v13;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_23();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927A28);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_12_22();
  OUTLINED_FUNCTION_25_14(v4, v4[3]);
  sub_1B61CB354();
  sub_1B62220D4();
  if (!v0)
  {
    v51 = v4;
    v17 = sub_1B6221DF4();
    sub_1B60ED008(v17, 0);
    if (v19 != v18 >> 1)
    {
      OUTLINED_FUNCTION_10_25();
      OUTLINED_FUNCTION_34_7();
      if (v22 == v23)
      {
        __break(1u);
        return;
      }

      v24 = *(v21 + v20);
      sub_1B60ED584(v20 + 1);
      v26 = v25;
      v28 = v27;
      swift_unknownObjectRelease();
      if (v26 == v28 >> 1)
      {
        if (v24)
        {
          if (v24 != 1)
          {
            sub_1B61CB3A8();
            sub_1B6221CF4();
            v38 = v48;
            sub_1B6221DB4();
            v32 = v41;
            swift_unknownObjectRelease();
            (*(v49 + 8))(v50, v45);
            v42 = OUTLINED_FUNCTION_6_34();
            v43(v42, v15);
            v31 = 0;
LABEL_15:
            *v38 = v32;
            *(v38 + 8) = v31;
            __swift_destroy_boxed_opaque_existential_1(v4);
            goto LABEL_11;
          }

          sub_1B61CB3FC();
          OUTLINED_FUNCTION_39_4();
          swift_unknownObjectRelease();
          (*(v46 + 8))(v1, v47);
          v29 = OUTLINED_FUNCTION_21_15();
          v30(v29);
          v31 = 1;
          v32 = 1;
        }

        else
        {
          sub_1B61CB450();
          OUTLINED_FUNCTION_39_4();
          swift_unknownObjectRelease();
          (*(v44 + 8))(v2, v12);
          v39 = OUTLINED_FUNCTION_21_15();
          v40(v39);
          v31 = 1;
          v32 = 0;
        }

        v38 = v48;
        goto LABEL_15;
      }
    }

    sub_1B6221B94();
    OUTLINED_FUNCTION_127();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925960);
    *v34 = &type metadata for WeatherDataAgePredicate;
    sub_1B6221D04();
    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_10_6();
    (*(v35 + 104))(v34);
    swift_willThrow();
    swift_unknownObjectRelease();
    v36 = OUTLINED_FUNCTION_38_7();
    v37(v36);
    v4 = v51;
  }

  __swift_destroy_boxed_opaque_existential_1(v4);
LABEL_11:
  OUTLINED_FUNCTION_677();
}

uint64_t sub_1B61CA480(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463617865 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B6221F24() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69446E6968746977 && a2 == 0xEE0065636E617473)
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

uint64_t sub_1B61CA54C(char a1)
{
  OUTLINED_FUNCTION_41_4();
  MEMORY[0x1B8C912A0](a1 & 1);
  return sub_1B62220A4();
}

uint64_t sub_1B61CA58C(char a1)
{
  if (a1)
  {
    return 0x69446E6968746977;
  }

  else
  {
    return 0x7463617865;
  }
}

uint64_t sub_1B61CA5CC(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t sub_1B61CA63C()
{
  OUTLINED_FUNCTION_41_4();
  MEMORY[0x1B8C912A0](0);
  return sub_1B62220A4();
}

uint64_t sub_1B61CA6B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B61CA480(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B61CA6D8(uint64_t a1)
{
  v2 = sub_1B61CB4A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61CA714(uint64_t a1)
{
  v2 = sub_1B61CB4A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B61CA750(uint64_t a1)
{
  v2 = sub_1B61CB54C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61CA78C(uint64_t a1)
{
  v2 = sub_1B61CB54C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B61CA7C8(uint64_t a1)
{
  v2 = sub_1B61CB4F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B61CA804(uint64_t a1)
{
  v2 = sub_1B61CB4F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void WeatherDataLocationPredicate.encode(to:)()
{
  OUTLINED_FUNCTION_676();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927A30);
  OUTLINED_FUNCTION_2();
  v17 = v4;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_9_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927A38);
  OUTLINED_FUNCTION_2();
  v15 = v7;
  v16 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_23();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927A40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_62();
  v10 = *(v0 + 8);
  OUTLINED_FUNCTION_25_14(v3, v3[3]);
  sub_1B61CB4A4();
  OUTLINED_FUNCTION_40_7();
  if (v10)
  {
    sub_1B61CB54C();
    OUTLINED_FUNCTION_11_15();
    sub_1B6221E14();
    (*(v15 + 8))(v1, v16);
  }

  else
  {
    sub_1B61CB4F8();
    OUTLINED_FUNCTION_11_15();
    sub_1B6221E14();
    sub_1B6221EA4();
    v13 = OUTLINED_FUNCTION_6_34();
    v14(v13, v17);
  }

  v11 = OUTLINED_FUNCTION_27_12();
  v12(v11);
  OUTLINED_FUNCTION_677();
}

void WeatherDataLocationPredicate.init(from:)()
{
  OUTLINED_FUNCTION_676();
  v4 = v3;
  v40 = v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927A60);
  OUTLINED_FUNCTION_2();
  v41 = v6;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_12_22();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927A68);
  OUTLINED_FUNCTION_2();
  v39 = v9;
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_62();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB927A70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_25_14(v4, v4[3]);
  sub_1B61CB4A4();
  sub_1B62220D4();
  if (!v0)
  {
    v38 = v1;
    v13 = sub_1B6221DF4();
    sub_1B60ED58C(v13, 0);
    if (v15 != v14 >> 1)
    {
      OUTLINED_FUNCTION_10_25();
      OUTLINED_FUNCTION_34_7();
      if (v18 == v19)
      {
        __break(1u);
        return;
      }

      v20 = *(v17 + v16);
      sub_1B60ED584(v16 + 1);
      v22 = v21;
      v24 = v23;
      swift_unknownObjectRelease();
      if (v22 == v24 >> 1)
      {
        if (v20)
        {
          sub_1B61CB4F8();
          OUTLINED_FUNCTION_20_18();
          sub_1B6221CF4();
          v25 = v40;
          sub_1B6221DB4();
          v35 = v34;
          swift_unknownObjectRelease();
          (*(v41 + 8))(v38, v42);
          v36 = OUTLINED_FUNCTION_35_6();
          v37(v36);
        }

        else
        {
          sub_1B61CB54C();
          OUTLINED_FUNCTION_20_18();
          sub_1B6221CF4();
          v25 = v40;
          swift_unknownObjectRelease();
          (*(v39 + 8))(v2, v8);
          v32 = OUTLINED_FUNCTION_7_33();
          v33(v32);
          v35 = 0;
        }

        *v25 = v35;
        *(v25 + 8) = v20 ^ 1;
        v31 = v4;
        goto LABEL_10;
      }
    }

    sub_1B6221B94();
    OUTLINED_FUNCTION_127();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB925960);
    *v27 = &type metadata for WeatherDataLocationPredicate;
    sub_1B6221D04();
    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_10_6();
    (*(v28 + 104))(v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    v29 = OUTLINED_FUNCTION_6_34();
    v30(v29, v11);
  }

  v31 = v4;
LABEL_10:
  __swift_destroy_boxed_opaque_existential_1(v31);
  OUTLINED_FUNCTION_677();
}

unint64_t sub_1B61CAFB8()
{
  result = qword_1EB927938;
  if (!qword_1EB927938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927938);
  }

  return result;
}

unint64_t sub_1B61CB00C()
{
  result = qword_1EB927958;
  if (!qword_1EB927958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927958);
  }

  return result;
}

unint64_t sub_1B61CB060()
{
  result = qword_1EB927960;
  if (!qword_1EB927960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927960);
  }

  return result;
}

unint64_t sub_1B61CB0B4()
{
  result = qword_1EB927968;
  if (!qword_1EB927968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927968);
  }

  return result;
}

unint64_t sub_1B61CB108()
{
  result = qword_1EB927990;
  if (!qword_1EB927990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927990);
  }

  return result;
}

unint64_t sub_1B61CB15C()
{
  result = qword_1EB927998;
  if (!qword_1EB927998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927998);
  }

  return result;
}

unint64_t sub_1B61CB1B0()
{
  result = qword_1EB9279A0;
  if (!qword_1EB9279A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9279A0);
  }

  return result;
}

unint64_t sub_1B61CB204()
{
  result = qword_1EB9279A8;
  if (!qword_1EB9279A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9279A8);
  }

  return result;
}

unint64_t sub_1B61CB258()
{
  result = qword_1EB9279B8;
  if (!qword_1EB9279B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9279B8);
  }

  return result;
}

unint64_t sub_1B61CB2AC()
{
  result = qword_1EB9279C0;
  if (!qword_1EB9279C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9279C0);
  }

  return result;
}

unint64_t sub_1B61CB300()
{
  result = qword_1EB9279C8;
  if (!qword_1EB9279C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9279C8);
  }

  return result;
}

unint64_t sub_1B61CB354()
{
  result = qword_1EB9279F0;
  if (!qword_1EB9279F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9279F0);
  }

  return result;
}

unint64_t sub_1B61CB3A8()
{
  result = qword_1EB9279F8;
  if (!qword_1EB9279F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9279F8);
  }

  return result;
}

unint64_t sub_1B61CB3FC()
{
  result = qword_1EB927A00;
  if (!qword_1EB927A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927A00);
  }

  return result;
}

unint64_t sub_1B61CB450()
{
  result = qword_1EB927A08;
  if (!qword_1EB927A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927A08);
  }

  return result;
}

unint64_t sub_1B61CB4A4()
{
  result = qword_1EB927A48;
  if (!qword_1EB927A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927A48);
  }

  return result;
}

unint64_t sub_1B61CB4F8()
{
  result = qword_1EB927A50;
  if (!qword_1EB927A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927A50);
  }

  return result;
}

unint64_t sub_1B61CB54C()
{
  result = qword_1EB927A58;
  if (!qword_1EB927A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927A58);
  }

  return result;
}

unint64_t sub_1B61CB5A4()
{
  result = qword_1EB927A78;
  if (!qword_1EB927A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927A78);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for WeatherDataCacheReadPolicy(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy31_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for WeatherDataCacheReadPolicy(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 31))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 25);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  if (v5 + 1 >= 2)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for WeatherDataCacheReadPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 23) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 31) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 31) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1B61CB6DC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 31))
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *(a1 + 25);
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

uint64_t sub_1B61CB728(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 30) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 31) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 31) = 0;
    }

    if (a2)
    {
      *(result + 25) = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for WeatherDataAgePredicate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for WeatherDataCacheReadConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B61CB9C0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_31_7(-1);
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_31_7((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_31_7((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_31_7((*a1 | (v4 << 8)) - 2);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_31_7(v8);
}

_BYTE *sub_1B61CBA44(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1B61CBB30(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_7_4();
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

  return OUTLINED_FUNCTION_29(a1);
}

_BYTE *sub_1B61CBB78(_BYTE *result, int a2, int a3)
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

unint64_t sub_1B61CBC28()
{
  result = qword_1EB927A80;
  if (!qword_1EB927A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927A80);
  }

  return result;
}

unint64_t sub_1B61CBC80()
{
  result = qword_1EB927A88;
  if (!qword_1EB927A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927A88);
  }

  return result;
}

unint64_t sub_1B61CBCD8()
{
  result = qword_1EB927A90;
  if (!qword_1EB927A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927A90);
  }

  return result;
}

unint64_t sub_1B61CBD30()
{
  result = qword_1EB927A98;
  if (!qword_1EB927A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927A98);
  }

  return result;
}

unint64_t sub_1B61CBD88()
{
  result = qword_1EB927AA0;
  if (!qword_1EB927AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927AA0);
  }

  return result;
}

unint64_t sub_1B61CBDE0()
{
  result = qword_1EB927AA8;
  if (!qword_1EB927AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927AA8);
  }

  return result;
}

unint64_t sub_1B61CBE38()
{
  result = qword_1EB927AB0;
  if (!qword_1EB927AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927AB0);
  }

  return result;
}

unint64_t sub_1B61CBE90()
{
  result = qword_1EB927AB8;
  if (!qword_1EB927AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927AB8);
  }

  return result;
}

unint64_t sub_1B61CBEE8()
{
  result = qword_1EB927AC0;
  if (!qword_1EB927AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927AC0);
  }

  return result;
}

unint64_t sub_1B61CBF40()
{
  result = qword_1EB927AC8;
  if (!qword_1EB927AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927AC8);
  }

  return result;
}

unint64_t sub_1B61CBF98()
{
  result = qword_1EB927AD0;
  if (!qword_1EB927AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927AD0);
  }

  return result;
}

unint64_t sub_1B61CBFF0()
{
  result = qword_1EB927AD8;
  if (!qword_1EB927AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927AD8);
  }

  return result;
}

unint64_t sub_1B61CC048()
{
  result = qword_1EB927AE0;
  if (!qword_1EB927AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927AE0);
  }

  return result;
}

unint64_t sub_1B61CC0A0()
{
  result = qword_1EB927AE8;
  if (!qword_1EB927AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927AE8);
  }

  return result;
}

unint64_t sub_1B61CC0F8()
{
  result = qword_1EB927AF0;
  if (!qword_1EB927AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927AF0);
  }

  return result;
}

unint64_t sub_1B61CC150()
{
  result = qword_1EB927AF8;
  if (!qword_1EB927AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927AF8);
  }

  return result;
}

unint64_t sub_1B61CC1A8()
{
  result = qword_1EB927B00;
  if (!qword_1EB927B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B00);
  }

  return result;
}

unint64_t sub_1B61CC200()
{
  result = qword_1EB927B08;
  if (!qword_1EB927B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B08);
  }

  return result;
}

unint64_t sub_1B61CC258()
{
  result = qword_1EB927B10;
  if (!qword_1EB927B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B10);
  }

  return result;
}

unint64_t sub_1B61CC2B0()
{
  result = qword_1EB927B18;
  if (!qword_1EB927B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B18);
  }

  return result;
}

unint64_t sub_1B61CC308()
{
  result = qword_1EB927B20;
  if (!qword_1EB927B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B20);
  }

  return result;
}

unint64_t sub_1B61CC360()
{
  result = qword_1EB927B28;
  if (!qword_1EB927B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B28);
  }

  return result;
}

unint64_t sub_1B61CC3B8()
{
  result = qword_1EB927B30;
  if (!qword_1EB927B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B30);
  }

  return result;
}

unint64_t sub_1B61CC410()
{
  result = qword_1EB927B38;
  if (!qword_1EB927B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B38);
  }

  return result;
}

unint64_t sub_1B61CC468()
{
  result = qword_1EB927B40;
  if (!qword_1EB927B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B40);
  }

  return result;
}

unint64_t sub_1B61CC4C0()
{
  result = qword_1EB927B48;
  if (!qword_1EB927B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B48);
  }

  return result;
}

unint64_t sub_1B61CC518()
{
  result = qword_1EB927B50;
  if (!qword_1EB927B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B50);
  }

  return result;
}

unint64_t sub_1B61CC570()
{
  result = qword_1EB927B58;
  if (!qword_1EB927B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B58);
  }

  return result;
}

unint64_t sub_1B61CC5C8()
{
  result = qword_1EB927B60;
  if (!qword_1EB927B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B60);
  }

  return result;
}

unint64_t sub_1B61CC620()
{
  result = qword_1EB927B68;
  if (!qword_1EB927B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B68);
  }

  return result;
}

unint64_t sub_1B61CC678()
{
  result = qword_1EB927B70;
  if (!qword_1EB927B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B70);
  }

  return result;
}

unint64_t sub_1B61CC6D0()
{
  result = qword_1EB927B78;
  if (!qword_1EB927B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B78);
  }

  return result;
}

unint64_t sub_1B61CC728()
{
  result = qword_1EB927B80;
  if (!qword_1EB927B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B80);
  }

  return result;
}

unint64_t sub_1B61CC780()
{
  result = qword_1EB927B88;
  if (!qword_1EB927B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B88);
  }

  return result;
}

unint64_t sub_1B61CC7D8()
{
  result = qword_1EB927B90;
  if (!qword_1EB927B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B90);
  }

  return result;
}

unint64_t sub_1B61CC830()
{
  result = qword_1EB927B98;
  if (!qword_1EB927B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB927B98);
  }

  return result;
}

uint64_t sub_1B61CC8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v11 = *a4;
  v12 = *(a4 + 8);
  if (qword_1EDAB3D80 != -1)
  {
    swift_once();
  }

  v13 = sub_1B6220B34();
  __swift_project_value_buffer(v13, qword_1EDAC2AB0);
  v14 = sub_1B6220B14();
  v15 = sub_1B62217F4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v11;
    v17 = swift_slowAlloc();
    v31[0] = v17;
    *v16 = 141558275;
    *(v16 + 4) = 1752392040;
    *(v16 + 12) = 2081;
    v18 = CLLocationCoordinate2D.id.getter();
    v20 = sub_1B602EEB0(v18, v19, v31);

    *(v16 + 14) = v20;
    _os_log_impl(&dword_1B6020000, v14, v15, "Fetching hourly weather statistics for location: %{private,mask.hash}s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v17);
    v21 = v17;
    v11 = v30;
    MEMORY[0x1B8C91C90](v21, -1, -1);
    MEMORY[0x1B8C91C90](v16, -1, -1);
  }

  v22 = sub_1B61CCAD8(a2);
  v24 = v23;
  v25 = sub_1B61CCAD8(a3);
  v31[0] = a1;
  *&v31[1] = a5;
  *&v31[2] = a6;
  v31[3] = v22;
  v31[4] = v24;
  v31[5] = v25;
  v31[6] = v26;
  v31[7] = v11;
  v32 = v12;
  sub_1B6220784();
  sub_1B610CAC0();
  v28 = v27;
  sub_1B6152938(v31);
  return v28;
}

uint64_t sub_1B61CCAD8(uint64_t result)
{
  if (*(*(v1 + 16) + OBJC_IVAR____TtC13WeatherDaemon9WDSClient_version))
  {
    return sub_1B6221F04();
  }

  if (__OFSUB__(result, 1))
  {
    __break(1u);
    goto LABEL_10;
  }

  v2 = (result - 1) / 24;
  sub_1B6038AC8();
  v3 = sub_1B62213B4();
  v5 = v4;
  if (sub_1B62212E4() <= 1)
  {
    result = sub_1B62212E4();
    if (!__OFSUB__(2, result))
    {
      v7 = sub_1B62213A4();
      v9 = v6;
      sub_1B6220784();
      MEMORY[0x1B8C90530](v3, v5);

      v3 = v7;
      v5 = v9;
      goto LABEL_7;
    }

LABEL_10:
    __break(1u);
    return result;
  }

LABEL_7:
  type metadata accessor for DailyStatisticsService();
  v8 = sub_1B610ACC4(v2 + 1);
  MEMORY[0x1B8C90530](84, 0xE100000000000000);
  MEMORY[0x1B8C90530](v3, v5);

  MEMORY[0x1B8C90530](3158074, 0xE300000000000000);
  return v8;
}

void sub_1B61CCC70()
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
  type metadata accessor for DailySummary();
  v65 = sub_1B60715EC(&qword_1EB927C30, type metadata accessor for DailySummary);
  OUTLINED_FUNCTION_145_0(&qword_1EB927C38);
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
      sub_1B60715EC(&qword_1EB927C40, type metadata accessor for DailySummary);
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
      OUTLINED_FUNCTION_30_9();
      sub_1B620B850();
    }

    else
    {
      v71 = OUTLINED_FUNCTION_46_6();
      v72(v71);
      OUTLINED_FUNCTION_30_9();
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
  OUTLINED_FUNCTION_30_9();
  sub_1B620B850();

LABEL_10:
  OUTLINED_FUNCTION_190_0();
  OUTLINED_FUNCTION_84_3();
}

uint64_t sub_1B61CD314@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
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
  type metadata accessor for AirQuality();
  sub_1B60715EC(&qword_1EDAB0880, type metadata accessor for AirQuality);
  sub_1B60715EC(&qword_1EDAB0878, type metadata accessor for AirQuality);
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
      sub_1B60715EC(&qword_1EDAB0870, type metadata accessor for AirQuality);
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

uint64_t sub_1B61CDDA8@<X0>(double a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
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
  type metadata accessor for CurrentWeather();
  sub_1B60715EC(&qword_1EDAB2060, type metadata accessor for CurrentWeather);
  sub_1B60715EC(&qword_1EDAB2058, type metadata accessor for CurrentWeather);
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
      sub_1B60715EC(&qword_1EDAB2050, type metadata accessor for CurrentWeather);
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