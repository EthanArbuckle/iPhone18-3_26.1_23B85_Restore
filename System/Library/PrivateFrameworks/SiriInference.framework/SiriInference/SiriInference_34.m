_BYTE *storeEnumTagSinglePayload for StreetName.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5E48E8()
{
  result = qword_1ECCDFB18;
  if (!qword_1ECCDFB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB18);
  }

  return result;
}

unint64_t sub_1DD5E4940()
{
  result = qword_1ECCDFB20;
  if (!qword_1ECCDFB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB20);
  }

  return result;
}

unint64_t sub_1DD5E4998()
{
  result = qword_1ECCDFB28;
  if (!qword_1ECCDFB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB28);
  }

  return result;
}

unint64_t sub_1DD5E49EC()
{
  result = qword_1ECCDFB30;
  if (!qword_1ECCDFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB30);
  }

  return result;
}

unint64_t sub_1DD5E4A40()
{
  result = qword_1ECCDFB38;
  if (!qword_1ECCDFB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB38);
  }

  return result;
}

SiriInference::StreetNumber::Prefix_optional __swiftcall StreetNumber.Prefix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StreetNumber.Prefix.rawValue.getter()
{
  result = 0x7265626D756ELL;
  switch(*v0)
  {
    case 1:
      result = 0x7954746565727473;
      break;
    case 2:
      result = 28265;
      break;
    case 3:
      result = 1918985582;
      break;
    case 4:
      result = 28271;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5E4BA8@<X0>(uint64_t *a1@<X8>)
{
  result = StreetNumber.Prefix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t StreetNumber.value.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static StreetNumber.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (v4 || (v5 = sub_1DD640CD8(), result = 0, (v5 & 1) != 0))
  {
    result = v3 == 5 && (v2 == 5);
    if (v2 != 5 && v3 != 5)
    {

      return sub_1DD3B12CC(v2, v3);
    }
  }

  return result;
}

uint64_t sub_1DD5E4D58(uint64_t a1)
{
  v2 = sub_1DD5E515C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5E4D94(uint64_t a1)
{
  v2 = sub_1DD5E515C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreetNumber.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFB40, &qword_1DD662BB8);
  v5 = OUTLINED_FUNCTION_0(v4);
  v16 = v6;
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = *v1;
  v12 = v1[1];
  v17 = *(v1 + 16);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E515C();
  sub_1DD640EF8();
  v20 = 0;
  sub_1DD640C18();
  if (!v2)
  {
    v19 = v17;
    v18 = 1;
    sub_1DD5E51B0();
    sub_1DD640C08();
  }

  return (*(v16 + 8))(v10, v4);
}

uint64_t StreetNumber.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFB58, &qword_1DD662BC0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E515C();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = sub_1DD640B28();
  v12 = v11;
  sub_1DD5E5204();
  sub_1DD640B18();
  v13 = OUTLINED_FUNCTION_41();
  v14(v13);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD5E515C()
{
  result = qword_1ECCDFB48;
  if (!qword_1ECCDFB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB48);
  }

  return result;
}

unint64_t sub_1DD5E51B0()
{
  result = qword_1ECCDFB50;
  if (!qword_1ECCDFB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB50);
  }

  return result;
}

unint64_t sub_1DD5E5204()
{
  result = qword_1ECCDFB60;
  if (!qword_1ECCDFB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB60);
  }

  return result;
}

unint64_t sub_1DD5E525C()
{
  result = qword_1ECCDFB68;
  if (!qword_1ECCDFB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetNumber.Prefix(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetNumber.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5E547C()
{
  result = qword_1ECCDFB70;
  if (!qword_1ECCDFB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB70);
  }

  return result;
}

unint64_t sub_1DD5E54D4()
{
  result = qword_1ECCDFB78;
  if (!qword_1ECCDFB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB78);
  }

  return result;
}

unint64_t sub_1DD5E552C()
{
  result = qword_1ECCDFB80;
  if (!qword_1ECCDFB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB80);
  }

  return result;
}

unint64_t sub_1DD5E5580()
{
  result = qword_1ECCDFB88;
  if (!qword_1ECCDFB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB88);
  }

  return result;
}

SiriInference::StreetType::Value_optional __swiftcall StreetType.Value.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640D18();

  v5 = v3 - 128;
  if (v3 >= 0x80)
  {
    v6 = -94;
    LOBYTE(v3) = 0x80;
    switch(v5)
    {
      case 0uLL:
        goto LABEL_2;
      case 1uLL:
        LOBYTE(v3) = -127;
        goto LABEL_2;
      case 2uLL:
        LOBYTE(v3) = -126;
        goto LABEL_2;
      case 3uLL:
        LOBYTE(v3) = -125;
        goto LABEL_2;
      case 4uLL:
        LOBYTE(v3) = -124;
        goto LABEL_2;
      case 5uLL:
        LOBYTE(v3) = -123;
        goto LABEL_2;
      case 6uLL:
        LOBYTE(v3) = -122;
        goto LABEL_2;
      case 7uLL:
        LOBYTE(v3) = -121;
        goto LABEL_2;
      case 8uLL:
        LOBYTE(v3) = -120;
        goto LABEL_2;
      case 9uLL:
        LOBYTE(v3) = -119;
        goto LABEL_2;
      case 0xAuLL:
        LOBYTE(v3) = -118;
        goto LABEL_2;
      case 0xBuLL:
        LOBYTE(v3) = -117;
        goto LABEL_2;
      case 0xCuLL:
        LOBYTE(v3) = -116;
        goto LABEL_2;
      case 0xDuLL:
        LOBYTE(v3) = -115;
        goto LABEL_2;
      case 0xEuLL:
        LOBYTE(v3) = -114;
        goto LABEL_2;
      case 0xFuLL:
        LOBYTE(v3) = -113;
        goto LABEL_2;
      case 0x10uLL:
        LOBYTE(v3) = -112;
        goto LABEL_2;
      case 0x11uLL:
        LOBYTE(v3) = -111;
        goto LABEL_2;
      case 0x12uLL:
        LOBYTE(v3) = -110;
        goto LABEL_2;
      case 0x13uLL:
        LOBYTE(v3) = -109;
        goto LABEL_2;
      case 0x14uLL:
        LOBYTE(v3) = -108;
        goto LABEL_2;
      case 0x15uLL:
        LOBYTE(v3) = -107;
        goto LABEL_2;
      case 0x16uLL:
        LOBYTE(v3) = -106;
        goto LABEL_2;
      case 0x17uLL:
        LOBYTE(v3) = -105;
        goto LABEL_2;
      case 0x18uLL:
        LOBYTE(v3) = -104;
        goto LABEL_2;
      case 0x19uLL:
        LOBYTE(v3) = -103;
        goto LABEL_2;
      case 0x1AuLL:
        LOBYTE(v3) = -102;
        goto LABEL_2;
      case 0x1BuLL:
        LOBYTE(v3) = -101;
        goto LABEL_2;
      case 0x1CuLL:
        LOBYTE(v3) = -100;
        goto LABEL_2;
      case 0x1DuLL:
        LOBYTE(v3) = -99;
        goto LABEL_2;
      case 0x1EuLL:
        LOBYTE(v3) = -98;
        goto LABEL_2;
      case 0x1FuLL:
        LOBYTE(v3) = -97;
        goto LABEL_2;
      case 0x20uLL:
        LOBYTE(v3) = -96;
        goto LABEL_2;
      case 0x21uLL:
        LOBYTE(v3) = -95;
        goto LABEL_2;
      case 0x22uLL:
        break;
      case 0x23uLL:
        v6 = -93;
        break;
      case 0x24uLL:
        v6 = -92;
        break;
      case 0x25uLL:
        v6 = -91;
        break;
      case 0x26uLL:
        v6 = -90;
        break;
      case 0x27uLL:
        v6 = -89;
        break;
      case 0x28uLL:
        v6 = -88;
        break;
      case 0x29uLL:
        v6 = -87;
        break;
      case 0x2AuLL:
        v6 = -86;
        break;
      case 0x2BuLL:
        v6 = -85;
        break;
      case 0x2CuLL:
        v6 = -84;
        break;
      case 0x2DuLL:
        v6 = -83;
        break;
      case 0x2EuLL:
        v6 = -82;
        break;
      case 0x2FuLL:
        v6 = -81;
        break;
      case 0x30uLL:
        v6 = -80;
        break;
      case 0x31uLL:
        v6 = -79;
        break;
      case 0x32uLL:
        v6 = -78;
        break;
      case 0x33uLL:
        v6 = -77;
        break;
      default:
        v6 = -76;
        break;
    }
  }

  else
  {
LABEL_2:
    v6 = v3;
  }

  *v2 = v6;
  return result;
}

uint64_t StreetType.Value.rawValue.getter()
{
  result = 0x79656C6C61;
  switch(*v0)
  {
    case 1:
      return 0x78656E6E61;
    case 2:
      return 0x6164696E657661;
    case 3:
      return 0x65756E657661;
    case 4:
      v3 = 1870225762;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
    case 5:
      v15 = 1667327330;
      return v15 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      return 1684956514;
    case 7:
      return 0x6666756C62;
    case 8:
      v20 = 1718971490;
      return v20 & 0xFFFF0000FFFFFFFFLL | 0x736600000000;
    case 9:
      return 0x6D6F74746F62;
    case 0xA:
      return 0x726176656C756F62;
    case 0xB:
      return 0x68636E617262;
    case 0xC:
      return 0x656764697262;
    case 0xD:
      v2 = 1869574754;
      return v2 & 0xFFFF0000FFFFFFFFLL | 0x6B00000000;
    case 0xE:
      return 0x736B6F6F7262;
    case 0xF:
      return 1735554402;
    case 0x10:
      v11 = 1735554402;
      goto LABEL_204;
    case 0x11:
      return 0x737361707962;
    case 0x12:
      v4 = 1819042147;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x13:
      return 0x6F6E696D6163;
    case 0x14:
      return 1886216547;
    case 0x15:
      return 0x6E6F796E6163;
    case 0x16:
      return 1701863779;
    case 0x17:
      v10 = 0x776573756163;
      return v10 & 0xFFFFFFFFFFFFLL | 0x7961000000000000;
    case 0x18:
      return 0x7265746E6563;
    case 0x19:
      v6 = 0x7265746E6563;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x1A:
      return 0x656C63726963;
    case 0x1B:
      v6 = 0x656C63726963;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x1C:
      return 0x6666696C63;
    case 0x1D:
      v20 = 1718185059;
      return v20 & 0xFFFF0000FFFFFFFFLL | 0x736600000000;
    case 0x1E:
      return 1651862627;
    case 0x1F:
      return 0x6E6F6D6D6F63;
    case 0x20:
      v6 = 0x6E6F6D6D6F63;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x21:
      return 0x72656E726F63;
    case 0x22:
      return 0x657372756F63;
    case 0x23:
      v7 = 1920298851;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 0x24:
      v14 = 1920298851;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x737400000000;
    case 0x25:
      return 1702260579;
    case 0x26:
      v11 = 1702260579;
      goto LABEL_204;
    case 0x27:
      v2 = 1701147235;
      return v2 & 0xFFFF0000FFFFFFFFLL | 0x6B00000000;
    case 0x28:
      return 0x746E656373657263;
    case 0x29:
      v7 = 1936028259;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 0x2A:
      return 0x676E6973736F7263;
    case 0x2B:
      return 0x616F7273736F7263;
    case 0x2C:
      v4 = 1987212643;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x2D:
      return 1701601636;
    case 0x2E:
      return 7168356;
    case 0x2F:
      return 0x656469766964;
    case 0x30:
      v4 = 1986622052;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x31:
      v17 = 1986622052;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
    case 0x32:
      return 0x657461747365;
    case 0x33:
      v6 = 0x657461747365;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x34:
      return 0x7773736572707865;
    case 0x35:
      return 0x6F69736E65747865;
    case 0x36:
      return 0x6F69736E65747865;
    case 0x37:
      return 0x646C656966;
    case 0x38:
      v5 = 1818585446;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x736400000000;
    case 0x39:
      return 1952541798;
    case 0x3A:
      v11 = 1952541798;
      goto LABEL_204;
    case 0x3B:
      return 1685221222;
    case 0x3C:
      v11 = 1685221222;
      goto LABEL_204;
    case 0x3D:
      return 0x747365726F66;
    case 0x3E:
      v4 = 1735552870;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x3F:
      v17 = 1735552870;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
    case 0x40:
      return 1802661734;
    case 0x41:
      v11 = 1802661734;
      goto LABEL_204;
    case 0x42:
      return 1953656678;
    case 0x43:
      v8 = 1701147238;
      return v8 | 0x79617700000000;
    case 0x44:
      return 0x6E6564726167;
    case 0x45:
      v6 = 0x6E6564726167;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x46:
      v8 = 1702125927;
      return v8 | 0x79617700000000;
    case 0x47:
      return 1852140647;
    case 0x48:
      v11 = 1852140647;
      goto LABEL_204;
    case 0x49:
      v9 = 1701147239;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x4A:
      v12 = 1701147239;
      return v12 & 0xFFFF0000FFFFFFFFLL | 0x736E00000000;
    case 0x4B:
      v4 = 1987015271;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x4C:
      v17 = 1987015271;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
    case 0x4D:
      return 0x726F62726168;
    case 0x4E:
      v6 = 0x726F62726168;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x4F:
      v9 = 1702257000;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x50:
      v6 = 0x746867696568;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x51:
      v8 = 1751607656;
      return v8 | 0x79617700000000;
    case 0x52:
      return 1819044200;
    case 0x53:
      return 0x736C6C6968;
    case 0x54:
      v23 = 1819045736;
      return v23 & 0xFFFF0000FFFFFFFFLL | 0x776F00000000;
    case 0x55:
      v7 = 1701604969;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 0x56:
      return 0x6E6F6974636E756ALL;
    case 0x57:
      return 0x6E6F6974636E756ALL;
    case 0x58:
      return 7955819;
    case 0x59:
      return 1937335659;
    case 0x5A:
      v16 = 1819242091;
      return v16 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
    case 0x5B:
      v13 = 1819242091;
      return v13 & 0xFFFF0000FFFFFFFFLL | 0x736C00000000;
    case 0x5C:
      return 1701536108;
    case 0x5D:
      v11 = 1701536108;
      goto LABEL_204;
    case 0x5E:
      return 0x676E69646E616CLL;
    case 0x5F:
      return 1701732716;
    case 0x60:
      v7 = 1751607660;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 0x61:
      v14 = 1751607660;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x737400000000;
    case 0x62:
      return 1717661548;
    case 0x63:
      return 1801678700;
    case 0x64:
      v11 = 1801678700;
      goto LABEL_204;
    case 0x65:
      return 0x6567646F6CLL;
    case 0x66:
      return 1886351212;
    case 0x67:
      v22 = 1869504877;
      return v22 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    case 0x68:
      return 0x73726F6E616DLL;
    case 0x69:
      v23 = 1684104557;
      return v23 & 0xFFFF0000FFFFFFFFLL | 0x776F00000000;
    case 0x6A:
      v6 = 0x776F6461656DLL;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x6B:
      return 1819044205;
    case 0x6C:
      return 0x736C6C696DLL;
    case 0x6D:
      v10 = 0x77726F746F6DLL;
      return v10 & 0xFFFFFFFFFFFFLL | 0x7961000000000000;
    case 0x6E:
      return 0x6E6961746E756F6DLL;
    case 0x6F:
      return 0x6E6961746E756F6DLL;
    case 0x70:
      v7 = 1853189997;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 0x71:
      return 1801676142;
    case 0x72:
      return 0x6472616863726FLL;
    case 0x73:
      return 0x737361707265766FLL;
    case 0x74:
      v8 = 1802658160;
      return v8 | 0x79617700000000;
    case 0x75:
      return 0x737961776B726170;
    case 0x76:
      v3 = 1702060400;
      return v3 & 0xFFFF0000FFFFFFFFLL | 0x6F00000000;
    case 0x77:
      v19 = 1936941424;
      goto LABEL_114;
    case 0x78:
      return 1701734768;
    case 0x79:
      v11 = 1701734768;
      goto LABEL_204;
    case 0x7A:
      v4 = 1667329136;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x7B:
      v9 = 1767992432;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0x7C:
      v12 = 1767992432;
      return v12 & 0xFFFF0000FFFFFFFFLL | 0x736E00000000;
    case 0x7D:
      v21 = 2053205104;
      return v21 & 0xFFFF0000FFFFFFFFLL | 0x6100000000;
    case 0x7E:
      v7 = 1852403568;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x7400000000;
    case 0x7F:
      v14 = 1852403568;
      return v14 & 0xFFFF0000FFFFFFFFLL | 0x737400000000;
    case 0x80:
      return 1953656688;
    case 0x81:
      v11 = 1953656688;
      goto LABEL_204;
    case 0x82:
      v18 = 0x697269617270;
      return v18 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x83:
      return 0x6C6169646172;
    case 0x84:
      v15 = 1668178290;
      return v15 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 0x85:
      return 0x6469706172;
    case 0x86:
      v5 = 1768972658;
      return v5 & 0xFFFF0000FFFFFFFFLL | 0x736400000000;
    case 0x87:
      return 1953719666;
    case 0x88:
      v4 = 1734633842;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x89:
      v17 = 1734633842;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
    case 0x8A:
      v22 = 1702259058;
      return v22 & 0xFFFF0000FFFFFFFFLL | 0x7200000000;
    case 0x8B:
      return 1684107122;
    case 0x8C:
      v11 = 1684107122;
      goto LABEL_204;
    case 0x8D:
      v4 = 1953853298;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x8E:
      return 6649202;
    case 0x8F:
      v16 = 1634691187;
      return v16 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
    case 0x90:
      v13 = 1634691187;
      return v13 & 0xFFFF0000FFFFFFFFLL | 0x736C00000000;
    case 0x91:
      v4 = 1919903859;
      return v4 & 0xFFFF0000FFFFFFFFLL | 0x6500000000;
    case 0x92:
      v17 = 1919903859;
      return v17 & 0xFFFF0000FFFFFFFFLL | 0x736500000000;
    case 0x93:
      return 0x796177796B73;
    case 0x94:
      return 0x676E69727073;
    case 0x95:
      v6 = 0x676E69727073;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x96:
      return 0x657261757173;
    case 0x97:
      v6 = 0x657261757173;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x98:
      return 0x6E6F6974617473;
    case 0x99:
      return 0x756E657661727473;
    case 0x9A:
      return 0x6D6165727473;
    case 0x9B:
      v6 = 0x746565727473;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0x9C:
      return 0x746565727473;
    case 0x9D:
      return 0x74696D6D7573;
    case 0x9E:
      v18 = 0x636172726574;
      return v18 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0x9F:
      return 0x776867756F726874;
    case 0xA0:
      return 0x6563617274;
    case 0xA1:
      v2 = 1667330676;
      return v2 & 0xFFFF0000FFFFFFFFLL | 0x6B00000000;
    case 0xA2:
      return 0x7763696666617274;
    case 0xA3:
      v16 = 1767993972;
      return v16 & 0xFFFF0000FFFFFFFFLL | 0x6C00000000;
    case 0xA4:
      return 0x6C656E6E7574;
    case 0xA5:
      return 0x656B69706E727574;
    case 0xA6:
      return 0x7361707265646E75;
    case 0xA7:
      v12 = 1869180533;
      return v12 & 0xFFFF0000FFFFFFFFLL | 0x736E00000000;
    case 0xA8:
      v9 = 1869180533;
      return v9 & 0xFFFF0000FFFFFFFFLL | 0x6E00000000;
    case 0xA9:
      v6 = 0x79656C6C6176;
      return v6 & 0xFFFFFFFFFFFFLL | 0x73000000000000;
    case 0xAA:
      return 0x79656C6C6176;
    case 0xAB:
      v11 = 2003134838;
      goto LABEL_204;
    case 0xAC:
      return 2003134838;
    case 0xAD:
      return 0x736567616C6C6976;
    case 0xAE:
      v19 = 1819044214;
LABEL_114:
      v18 = v19 & 0xFFFF0000FFFFFFFFLL | 0x676100000000;
      return v18 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
    case 0xAF:
      return 0x656C6C6976;
    case 0xB0:
      v21 = 1953720694;
      return v21 & 0xFFFF0000FFFFFFFFLL | 0x6100000000;
    case 0xB1:
      return 7954807;
    case 0xB2:
      v11 = 1819043191;
LABEL_204:
      result = v11 & 0xFFFF0000FFFFFFFFLL | 0x7300000000;
      break;
    case 0xB3:
      result = 1819043191;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5E64FC@<X0>(uint64_t *a1@<X8>)
{
  result = StreetType.Value.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

SiriInference::StreetType::Suffix_optional __swiftcall StreetType.Suffix.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DD640AA8();

  v5 = 8;
  if (v3 < 8)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StreetType.Suffix.rawValue.getter()
{
  result = 0x7361456874756F53;
  switch(*v0)
  {
    case 1:
      v2 = 1953656654;
      goto LABEL_9;
    case 2:
      return 1953719639;
    case 3:
      v3 = 1953853267;
      goto LABEL_6;
    case 4:
      v3 = 1953656654;
LABEL_6:
      result = v3 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
      break;
    case 5:
      v2 = 1953853267;
LABEL_9:
      result = v2 | 0x7365576800000000;
      break;
    case 6:
      result = 1953718597;
      break;
    case 7:
      result = 0x7361456874726F4ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5E66FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = *a1;
  return sub_1DD3B1754();
}

uint64_t sub_1DD5E672C@<X0>(uint64_t *a1@<X8>)
{
  result = StreetType.Suffix.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t static StreetType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1DD3B173C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  result = v3 == 8 && v2 == 8;
  if (v2 != 8 && v3 != 8)
  {

    return sub_1DD3B1754();
  }

  return result;
}

uint64_t sub_1DD5E6898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x786966667573 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1DD640CD8();

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

uint64_t sub_1DD5E6958(char a1)
{
  if (a1)
  {
    return 0x786966667573;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_1DD5E6990@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD5E6898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD5E69B8(uint64_t a1)
{
  v2 = sub_1DD5E6DA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD5E69F4(uint64_t a1)
{
  v2 = sub_1DD5E6DA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreetType.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFB90, &qword_1DD662EA8);
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v15 - v10;
  v12 = *v1;
  v16 = v1[1];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E6DA4();
  sub_1DD640EF8();
  v20 = v12;
  v19 = 0;
  sub_1DD5E6DF8();
  sub_1DD640C68();
  if (!v2)
  {
    v18 = v16;
    v17 = 1;
    sub_1DD5E6E4C();
    sub_1DD640C08();
  }

  return (*(v7 + 8))(v11, v4);
}

uint64_t StreetType.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFBB0, &qword_1DD662EB0);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD5E6DA4();
  sub_1DD640ED8();
  if (!v2)
  {
    v20 = 0;
    sub_1DD5E6EA0();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B78();
    v14 = v21;
    v18 = 1;
    sub_1DD5E6EF4();
    OUTLINED_FUNCTION_32_0();
    sub_1DD640B18();
    (*(v8 + 8))(v12, v5);
    v15 = v19;
    *a2 = v14;
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DD5E6DA4()
{
  result = qword_1ECCDFB98;
  if (!qword_1ECCDFB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFB98);
  }

  return result;
}

unint64_t sub_1DD5E6DF8()
{
  result = qword_1ECCDFBA0;
  if (!qword_1ECCDFBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBA0);
  }

  return result;
}

unint64_t sub_1DD5E6E4C()
{
  result = qword_1ECCDFBA8;
  if (!qword_1ECCDFBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBA8);
  }

  return result;
}

unint64_t sub_1DD5E6EA0()
{
  result = qword_1ECCDFBB8;
  if (!qword_1ECCDFBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBB8);
  }

  return result;
}

unint64_t sub_1DD5E6EF4()
{
  result = qword_1ECCDFBC0;
  if (!qword_1ECCDFBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBC0);
  }

  return result;
}

unint64_t sub_1DD5E6F4C()
{
  result = qword_1ECCDFBC8;
  if (!qword_1ECCDFBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBC8);
  }

  return result;
}

unint64_t sub_1DD5E6FA4()
{
  result = qword_1ECCDFBD0;
  if (!qword_1ECCDFBD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDFBD8, &qword_1DD662F58);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBD0);
  }

  return result;
}

unint64_t sub_1DD5E700C()
{
  result = qword_1ECCDFBE0;
  if (!qword_1ECCDFBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBE0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreetType(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 65288 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65288 < 0xFF0000)
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
        v4 = a1[1];
        if (!a1[1])
        {
          goto LABEL_17;
        }

LABEL_15:
        v5 = (*a1 | (v4 << 16)) - 65289;
        return (v5 + 1);
      }

      v4 = *(a1 + 2);
      if (*(a1 + 2))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  if (v6 <= 8)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(a1 + 1);
  }

  v8 = v7 - 9;
  if (v6 < 8)
  {
    v5 = -1;
  }

  else
  {
    v5 = v8;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for StreetType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65288 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65288 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 16) + 1;
    *result = a2 - 248;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *(result + 1) = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StreetType.Value(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0x4D)
  {
    if (a2 + 179 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 179) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 180;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB4;
  v5 = v6 - 180;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for StreetType.Value(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 179 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 179) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x4D)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x4C)
  {
    v6 = ((a2 - 77) >> 8) + 1;
    *result = a2 - 77;
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
          *result = a2 - 77;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreetType.Suffix(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for StreetType.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5E74EC()
{
  result = qword_1ECCDFBE8;
  if (!qword_1ECCDFBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBE8);
  }

  return result;
}

unint64_t sub_1DD5E7544()
{
  result = qword_1ECCDFBF0;
  if (!qword_1ECCDFBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBF0);
  }

  return result;
}

unint64_t sub_1DD5E759C()
{
  result = qword_1ECCDFBF8;
  if (!qword_1ECCDFBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFBF8);
  }

  return result;
}

unint64_t sub_1DD5E75F0()
{
  result = qword_1ECCDFC00;
  if (!qword_1ECCDFC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFC00);
  }

  return result;
}

unint64_t sub_1DD5E7644()
{
  result = qword_1ECCDFC08;
  if (!qword_1ECCDFC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFC08);
  }

  return result;
}

uint64_t sub_1DD5E7698(uint64_t result, uint64_t a2, uint64_t a3)
{
  v13 = 0;
  v3 = 0;
  v4 = *(result + 16);
  v5 = result + 40;
  v12 = result + 40;
LABEL_2:
  v6 = (v5 + 16 * v3);
  while (1)
  {
    if (v4 == v3)
    {
      return v13;
    }

    if (v3 >= v4)
    {
      break;
    }

    v7 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      goto LABEL_20;
    }

    if (*(v6 - 1) == a2 && *v6 == a3)
    {
      return 2;
    }

    v9 = *(v6 - 1);
    v10 = *v6;
    if (sub_1DD640CD8())
    {
      return 2;
    }

    sub_1DD3B7F10();

    if (OUTLINED_FUNCTION_0_140())
    {

LABEL_15:
      v13 = 1;
      v5 = v12;
      v3 = v7;
      goto LABEL_2;
    }

    v11 = OUTLINED_FUNCTION_0_140();

    ++v3;
    v6 += 2;
    if (v11)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1DD5E77D4(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  v3 = a1;

  return v3;
}

uint64_t sub_1DD5E7828(void (*a1)(uint64_t *__return_ptr, char *), uint64_t a2)
{
  v30 = a1;
  v31 = a2;
  v4 = sub_1DD63DAE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDE650, &unk_1DD658720);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v26 - v11;
  v32 = v2;
  sub_1DD63DA58();
  v13 = MEMORY[0x1E69B2880];
  sub_1DD5E9928(&qword_1EE165CB0, MEMORY[0x1E69B2880]);

  sub_1DD640068();
  sub_1DD5E9928(&qword_1EE165CA8, v13);
  v14 = (v5 + 32);
  v15 = (v5 + 8);
  v29 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1DD640628();
    if (__swift_getEnumTagSinglePayload(v12, 1, v4) == 1)
    {

      return v29;
    }

    (*v14)(v8, v12, v4);
    v30(&v32, v8);
    if (v3)
    {
      break;
    }

    (*v15)(v8, v4);
    v16 = v33;
    if (v33)
    {
      v28 = v32;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = *(v29 + 16);
        sub_1DD3BE2A4();
        v29 = v22;
      }

      v17 = *(v29 + 16);
      v18 = v17 + 1;
      if (v17 >= *(v29 + 24) >> 1)
      {
        v26 = *(v29 + 16);
        v27 = v17 + 1;
        sub_1DD3BE2A4();
        v17 = v26;
        v18 = v27;
        v29 = v23;
      }

      v19 = v29;
      *(v29 + 16) = v18;
      v20 = v19 + 16 * v17;
      *(v20 + 32) = v28;
      *(v20 + 40) = v16;
    }
  }

  (*v15)(v8, v4);
  v24 = v29;

  return v24;
}

uint64_t sub_1DD5E7B34(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC10, &unk_1DD664BA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v33 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v9 = OUTLINED_FUNCTION_0(v35);
  v33 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_4();
  v34 = v13 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v33 - v16;
  v18 = *(a3 + 16);
  v19 = (a3 + 64);
  v20 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    while (1)
    {
      v21 = *(v19 - 3);
      v22 = *(v19 - 2);
      v23 = *v19;
      v24 = *(v19 - 2);
      v36[0] = *(v19 - 4);
      v36[1] = v21;
      v36[2] = v22;
      v37 = v24;
      v38 = v23;

      v39(v36);
      if (v3)
      {
        break;
      }

      if (__swift_getEnumTagSinglePayload(v8, 1, v35) == 1)
      {
        sub_1DD3ADFD0(v8, &qword_1ECCDFC10, &unk_1DD664BA0);
      }

      else
      {
        sub_1DD3C69D0(v8, v17);
        sub_1DD3C69D0(v17, v34);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = *(v20 + 16);
          OUTLINED_FUNCTION_12();
          sub_1DD3BEC44();
          v20 = v30;
        }

        v25 = *(v20 + 16);
        if (v25 >= *(v20 + 24) >> 1)
        {
          sub_1DD3BEC44();
          v20 = v31;
        }

        *(v20 + 16) = v25 + 1;
        OUTLINED_FUNCTION_18_3();
        sub_1DD3C69D0(v28, v20 + v26 + *(v27 + 72) * v25);
      }

      v19 += 5;
      if (!--v18)
      {
        return v20;
      }
    }
  }

  return v20;
}

void sub_1DD5E7DC8(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = a3 + 56;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  if (v7)
  {
LABEL_8:
    while (1)
    {
      v12 = (*(a3 + 48) + 24 * (__clz(__rbit64(v7)) | (v9 << 6)));
      v13 = v12[1];
      v14 = v12[2];
      v28[0] = *v12;
      v28[1] = v13;
      v28[2] = v14;

      a1(&v25, v28);
      if (v3)
      {
        break;
      }

      v15 = v26;
      if (v26)
      {
        v22 = v25;
        v16 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = *(v10 + 16);
          OUTLINED_FUNCTION_12();
          sub_1DD3BF1BC();
          v10 = v20;
        }

        v17 = *(v10 + 16);
        if (v17 >= *(v10 + 24) >> 1)
        {
          sub_1DD3BF1BC();
          v10 = v21;
        }

        *(v10 + 16) = v17 + 1;
        v18 = (v10 + 24 * v17);
        v18[4] = v22;
        v18[5] = v15;
        v18[6] = v16;
      }

      v7 &= v7 - 1;
      if (!v7)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v11 >= v8)
      {

        return;
      }

      v7 = *(v4 + 8 * v11);
      ++v9;
      if (v7)
      {
        v9 = v11;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DD5E7FBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_68(a1, a2, a3);
  v7 = (v6 + 40);
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    while (1)
    {
      v9 = *v7;
      v16[0] = *(v7 - 1);
      v16[1] = v9;

      v4(&v17, v16);
      if (v3)
      {
        break;
      }

      v10 = v17;
      if (v17)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = *(v8 + 16);
          OUTLINED_FUNCTION_12();
          sub_1DD3BFB54();
          v8 = v13;
        }

        v11 = *(v8 + 16);
        if (v11 >= *(v8 + 24) >> 1)
        {
          sub_1DD3BFB54();
          v8 = v14;
        }

        *(v8 + 16) = v11 + 1;
        *(v8 + 8 * v11 + 32) = v10;
      }

      v7 += 2;
      if (!--v5)
      {
        return v8;
      }
    }
  }

  return v8;
}

uint64_t sub_1DD5E80D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_7_68(a1, a2, a3);
  v7 = (v6 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    while (1)
    {
      v16 = *v7;

      v4(&v15, &v16);
      if (v3)
      {
        break;
      }

      v9 = v15;
      if (v15)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = *(v8 + 16);
          OUTLINED_FUNCTION_12();
          sub_1DD3BFB30();
          v8 = v12;
        }

        v10 = *(v8 + 16);
        if (v10 >= *(v8 + 24) >> 1)
        {
          sub_1DD3BFB30();
          v8 = v13;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 8 * v10 + 32) = v9;
      }

      ++v7;
      if (!--v5)
      {
        return v8;
      }
    }
  }

  return v8;
}

uint64_t sub_1DD5E81F4(void *(*a1)(uint64_t *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v12 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  v7 = (a3 + 32);
  if (v6)
  {
    while (1)
    {
      v11 = *v7;
      v8 = a1(&v10, &v11);
      if (v3)
      {
        break;
      }

      if (v10)
      {
        MEMORY[0x1E12B23F0](v8);
        if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD640138();
        }

        sub_1DD640168();
        v5 = v12;
      }

      ++v7;
      if (!--v6)
      {
        return v5;
      }
    }
  }

  return v5;
}

id sub_1DD5E82F0(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC18, &qword_1DD6635E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - v8;
  v10 = sub_1DD63D8D8();
  v11 = OUTLINED_FUNCTION_0(v10);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_74();
  MEMORY[0x1EEE9AC00](v16);
  v31 = &v30 - v17;
  result = sub_1DD3CC020(a3);
  v19 = 0;
  v38 = a3 & 0xC000000000000001;
  v39 = result;
  v37 = a3 & 0xFFFFFFFFFFFFFF8;
  v32 = v13;
  v35 = (v13 + 32);
  v20 = MEMORY[0x1E69E7CC0];
  v33 = a1;
  v34 = a3;
  while (1)
  {
    if (v39 == v19)
    {
      return v20;
    }

    if (v38)
    {
      result = MEMORY[0x1E12B2C10](v19, a3);
    }

    else
    {
      if (v19 >= *(v37 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v19 + 32);
    }

    v21 = result;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    v40 = result;
    a1(&v40);
    if (v3)
    {

      return v20;
    }

    if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
    {
      result = sub_1DD3ADFD0(v9, &qword_1ECCDFC18, &qword_1DD6635E8);
    }

    else
    {
      v22 = *v35;
      v23 = v31;
      (*v35)(v31, v9, v10);
      v22(v36, v23, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = *(v20 + 16);
        OUTLINED_FUNCTION_12();
        sub_1DD3C05D4();
        v20 = v28;
      }

      v24 = *(v20 + 16);
      if (v24 >= *(v20 + 24) >> 1)
      {
        sub_1DD3C05D4();
        v20 = v29;
      }

      *(v20 + 16) = v24 + 1;
      OUTLINED_FUNCTION_18_3();
      result = (v22)(v20 + v25 + *(v26 + 72) * v24, v36, v10);
      a1 = v33;
      a3 = v34;
    }

    ++v19;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

id sub_1DD5E85CC(void (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v34 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC10, &unk_1DD664BA0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v9 = OUTLINED_FUNCTION_0(v33);
  v30 = v10;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1_4();
  OUTLINED_FUNCTION_6_74();
  MEMORY[0x1EEE9AC00](v13);
  v29 = &v28 - v14;
  result = sub_1DD3CC020(a3);
  v16 = result;
  v17 = 0;
  v35 = a3 & 0xC000000000000001;
  v18 = a3 & 0xFFFFFFFFFFFFFF8;
  v19 = MEMORY[0x1E69E7CC0];
  v31 = a3;
  while (1)
  {
    if (v16 == v17)
    {
      return v19;
    }

    if (v35)
    {
      result = MEMORY[0x1E12B2C10](v17, a3);
    }

    else
    {
      if (v17 >= *(v18 + 16))
      {
        goto LABEL_20;
      }

      result = *(a3 + 8 * v17 + 32);
    }

    v20 = result;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    v36 = result;
    v34(&v36);
    if (v3)
    {

      return v19;
    }

    if (__swift_getEnumTagSinglePayload(v8, 1, v33) == 1)
    {
      result = sub_1DD3ADFD0(v8, &qword_1ECCDFC10, &unk_1DD664BA0);
    }

    else
    {
      v21 = v29;
      sub_1DD3C69D0(v8, v29);
      sub_1DD3C69D0(v21, v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v25 = *(v19 + 16);
        OUTLINED_FUNCTION_12();
        sub_1DD3BEC44();
        v19 = v26;
      }

      v22 = *(v19 + 16);
      if (v22 >= *(v19 + 24) >> 1)
      {
        sub_1DD3BEC44();
        v19 = v27;
      }

      *(v19 + 16) = v22 + 1;
      OUTLINED_FUNCTION_18_3();
      result = sub_1DD3C69D0(v32, v19 + v23 + *(v24 + 72) * v22);
      a3 = v31;
    }

    ++v17;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t StringTokenizer.tokenize(_:useMorphun:removeEmojis:)(uint64_t a1, unint64_t a2, char a3, char a4)
{
  v6 = a2;
  v7 = a1;
  if (a4)
  {
    v19 = 0;
    v20 = 0xE000000000000000;
    v8 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v8 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v18[5] = a1;
    v18[6] = a2;
    v18[7] = 0;
    v18[8] = v8;

    while (1)
    {
      v9 = sub_1DD63FF88();
      if (!v10)
      {
        break;
      }

      v11 = v9;
      v12 = v10;
      if ((sub_1DD63FD38() & 1) == 0)
      {
        MEMORY[0x1E12B2250](v11, v12);
      }
    }

    v7 = v19;
    v6 = v20;
  }

  else
  {
  }

  if (*v4 && (a3 & 1) != 0)
  {
    v13 = *v4;

    sub_1DD63DAF8();

    MEMORY[0x1EEE9AC00](v16);
    v18[2] = v4;
    v17 = sub_1DD5E7828(sub_1DD5E97BC, v18);
  }

  else
  {
    sub_1DD5E90CC(v7, v6);
    v17 = v14;
  }

  return v17;
}

uint64_t StringTokenizer.init(locale:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DD63D168();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v5);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v12, a1, v4, v10);
  if (sub_1DD4F9BB8())
  {
    v13 = 1;
  }

  else
  {
    v16[2] = sub_1DD63D118();
    v16[3] = v14;
    v16[0] = 24938;
    v16[1] = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    v13 = sub_1DD63FD48();
  }

  sub_1DD5E8D74(v12, v13 & 1, a2);
  return (*(v7 + 8))(a1, v4);
}

uint64_t sub_1DD5E8CF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StringTokenizer() + 20);
  v4 = sub_1DD63D168();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1DD5E8D74@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_1DD63D168();
  v7 = OUTLINED_FUNCTION_0(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_1_4();
  MEMORY[0x1EEE9AC00](v12);
  v14 = 0;
  if (a2)
  {
    (*(v9 + 16))(&v20 - v13, a1, v6);
    v15 = sub_1DD63DB18();
    v16 = *(v15 + 48);
    v17 = *(v15 + 52);
    swift_allocObject();
    v14 = sub_1DD63DB08();
  }

  *a3 = v14;
  v18 = type metadata accessor for StringTokenizer();
  return (*(v9 + 32))(a3 + *(v18 + 20), a1, v6);
}

void sub_1DD5E90CC(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v28 - v7;
  v29 = a1;
  v30 = a2;
  v9 = *(type metadata accessor for StringTokenizer() + 20);
  v10 = sub_1DD63D168();
  (*(*(v10 - 8) + 16))(v8, v2 + v9, v10);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v10);
  sub_1DD3B7F10();
  v11 = sub_1DD640648();
  v13 = v12;
  sub_1DD3ADFD0(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);
  v14 = sub_1DD5E9470(0x7FFFFFFFFFFFFFFFLL, 1, v11, v13);
  v15 = *(v14 + 16);
  if (v15)
  {
    v29 = MEMORY[0x1E69E7CC0];
    sub_1DD42A2D4();
    v16 = 0;
    v17 = v29;
    v18 = (v14 + 56);
    while (v16 < *(v14 + 16))
    {
      v19 = *(v18 - 3);
      v20 = *(v18 - 2);
      v21 = *(v18 - 1);
      v22 = *v18;

      v23 = MEMORY[0x1E12B2190](v19, v20, v21, v22);
      v25 = v24;

      v29 = v17;
      v26 = *(v17 + 16);
      if (v26 >= *(v17 + 24) >> 1)
      {
        sub_1DD42A2D4();
        v17 = v29;
      }

      ++v16;
      *(v17 + 16) = v26 + 1;
      v27 = v17 + 16 * v26;
      *(v27 + 32) = v23;
      *(v27 + 40) = v25;
      v18 += 4;
      if (v15 == v16)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
  }
}

uint64_t sub_1DD5E930C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v15 - v6;
  result = sub_1DD63DAD8();
  if (result)
  {
    v15[0] = sub_1DD63DAC8();
    v15[1] = v9;
    v10 = *(type metadata accessor for StringTokenizer() + 20);
    v11 = sub_1DD63D168();
    (*(*(v11 - 8) + 16))(v7, a1 + v10, v11);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v11);
    sub_1DD3B7F10();
    v12 = sub_1DD640648();
    v14 = v13;
    sub_1DD3ADFD0(v7, &qword_1ECCDC3F0, &unk_1DD64AF50);
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  *a2 = v12;
  a2[1] = v14;
  return result;
}

uint64_t sub_1DD5E9470(uint64_t a1, char a2, uint64_t a3, unint64_t a4)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v6 = a3;
  v10 = HIBYTE(a4) & 0xF;
  if (!a1 || ((a4 & 0x2000000000000000) != 0 ? (v11 = HIBYTE(a4) & 0xF) : (v11 = a3 & 0xFFFFFFFFFFFFLL), !v11))
  {
    if ((a4 & 0x2000000000000000) == 0)
    {
      v10 = a3 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v6 = sub_1DD640058();
    v7 = v27;
    v8 = v28;
    v9 = v29;

    sub_1DD3BE928();
    v12 = v30;
    v4 = *(v30 + 16);
    v31 = *(v30 + 24);
LABEL_34:
    v5 = v4 + 1;
    if (v4 < v31 >> 1)
    {
LABEL_35:
      *(v12 + 16) = v5;
      v35 = (v12 + 32 * v4);
      v35[4] = v6;
      v35[5] = v7;
      v35[6] = v8;
      v35[7] = v9;
      return v12;
    }

LABEL_38:
    sub_1DD3BE928();
    v12 = v36;
    goto LABEL_35;
  }

  v7 = 4 * v11;
  v12 = MEMORY[0x1E69E7CC0];
  v13 = 15;
  while (1)
  {
    for (i = v13; ; i = sub_1DD63FF18())
    {
      v8 = i >> 14;
      if (i >> 14 == v7)
      {
        goto LABEL_27;
      }

      sub_1DD640038();
      v9 = v15;
      v16 = sub_1DD63FD08();

      if (v16)
      {
        break;
      }
    }

    v18 = (v13 >> 14 == v8) & a2;
    if (v18)
    {
      goto LABEL_19;
    }

    if (v8 < v13 >> 14)
    {
      break;
    }

    v19 = sub_1DD640058();
    v40 = v21;
    v41 = v20;
    v39 = v22;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v24 = *(v12 + 16);
      sub_1DD3BE928();
      v12 = v25;
    }

    v8 = *(v12 + 16);
    v9 = v8 + 1;
    if (v8 >= *(v12 + 24) >> 1)
    {
      sub_1DD3BE928();
      v12 = v26;
    }

    *(v12 + 16) = v9;
    v23 = (v12 + 32 * v8);
    v23[4] = v19;
    v23[5] = v41;
    v23[6] = v40;
    v23[7] = v39;
LABEL_19:
    v13 = sub_1DD63FF18();
    if ((v18 & 1) == 0 && *(v12 + 16) == a1)
    {
LABEL_27:
      if (v13 >> 14 == v7 && (a2 & 1) != 0)
      {

        return v12;
      }

      if (v7 < v13 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_1DD640058();
        v7 = v32;
        v8 = v33;
        v9 = v34;

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_33:
          v4 = *(v12 + 16);
          v31 = *(v12 + 24);
          goto LABEL_34;
        }
      }

      v37 = *(v12 + 16);
      sub_1DD3BE928();
      v12 = v38;
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for StringTokenizer()
{
  result = qword_1EE1665E0;
  if (!qword_1EE1665E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DD5E984C()
{
  sub_1DD5E98D0();
  if (v0 <= 0x3F)
  {
    sub_1DD63D168();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DD5E98D0()
{
  if (!qword_1EE1637A8)
  {
    sub_1DD63DB18();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1637A8);
    }
  }
}

uint64_t sub_1DD5E9928(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DD5E9970@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v39[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v39 - v9);
  sub_1DD4BF298(a1, v39 - v9);
  v11 = v10[4];
  OUTLINED_FUNCTION_0_141(v10[3]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v12)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v13 = v42;
  v10[3] = v41;
  v10[4] = v13;
  v14 = v10[8];
  OUTLINED_FUNCTION_0_141(v10[7]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v15)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v16 = v42;
  v10[7] = v41;
  v10[8] = v16;
  v17 = v10[10];
  OUTLINED_FUNCTION_0_141(v10[9]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v18)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v19 = v42;
  v10[9] = v41;
  v10[10] = v19;
  v20 = v10[12];
  OUTLINED_FUNCTION_0_141(v10[11]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v21)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v22 = v42;
  v10[11] = v41;
  v10[12] = v22;
  v23 = v10[6];
  OUTLINED_FUNCTION_0_141(v10[5]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v24)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v25 = v42;
  v10[5] = v41;
  v10[6] = v25;
  v26 = v10[16];
  OUTLINED_FUNCTION_0_141(v10[15]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v27)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v28 = v42;
  v10[15] = v41;
  v10[16] = v28;
  v29 = v10[18];
  OUTLINED_FUNCTION_0_141(v10[17]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v30)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v31 = v42;
  v10[17] = v41;
  v10[18] = v31;
  v32 = v10[20];
  OUTLINED_FUNCTION_0_141(v10[19]);
  while (1)
  {
    sub_1DD63FF88();
    if (!v33)
    {
      break;
    }

    OUTLINED_FUNCTION_1_125();
    if ((a2() & 1) == 0)
    {
      OUTLINED_FUNCTION_2_110();
    }
  }

  v34 = v42;
  v10[19] = v41;
  v10[20] = v34;
  if ((static ContactQuery.== infix(_:_:)(a1, v10) & 1) != 0 && static ContactResolver.SignalSet.== infix(_:_:)((a1 + *(v7 + 36)), (v10 + *(v7 + 36))))
  {
    sub_1DD5C224C(v10);
    v35 = a4;
    v36 = 1;
  }

  else
  {
    v37 = *(v7 + 36);
    v40 = 1;
    swift_setAtWritableKeyPath();
    sub_1DD5C22B4(v10, a4);
    v35 = a4;
    v36 = 0;
  }

  return __swift_storeEnumTagSinglePayload(v35, v36, 1, v7);
}

uint64_t sub_1DD5E9D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC3F0, &unk_1DD64AF50);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v95[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v95[-v11];
  sub_1DD4BF298(a1, &v95[-v11]);
  v14 = v12[3];
  v13 = v12[4];
  OUTLINED_FUNCTION_0_142();
  if (v15)
  {
    v16 = OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126(v16);
    v18 = *(v17 + 16);
    v19 = OUTLINED_FUNCTION_4_91();
    v20(v19);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v14 && v2 == v13)
    {

      LOBYTE(v15) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v15) = v14 ^ 1;
    }

    v12[3] = a1;
    v12[4] = v2;
  }

  v95[56] = v15 & 1;
  v23 = v12[5];
  v22 = v12[6];
  OUTLINED_FUNCTION_0_142();
  if (v24)
  {
    v25 = OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126(v25);
    v27 = *(v26 + 16);
    v28 = OUTLINED_FUNCTION_4_91();
    v29(v28);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v23 && v2 == v22)
    {

      LOBYTE(v24) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v24) = v23 ^ 1;
    }

    v12[5] = a1;
    v12[6] = v2;
  }

  v95[57] = v24 & 1;
  v32 = v12[7];
  v31 = v12[8];
  OUTLINED_FUNCTION_0_142();
  if (v33)
  {
    v34 = OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126(v34);
    v36 = *(v35 + 16);
    v37 = OUTLINED_FUNCTION_4_91();
    v38(v37);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v32 && v2 == v31)
    {

      LOBYTE(v33) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v33) = v32 ^ 1;
    }

    v12[7] = a1;
    v12[8] = v2;
  }

  v95[58] = v33 & 1;
  v41 = v12[9];
  v40 = v12[10];
  OUTLINED_FUNCTION_0_142();
  if (v42)
  {
    v43 = OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126(v43);
    v45 = *(v44 + 16);
    v46 = OUTLINED_FUNCTION_4_91();
    v47(v46);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v41 && v2 == v40)
    {

      LOBYTE(v42) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v42) = v41 ^ 1;
    }

    v12[9] = a1;
    v12[10] = v2;
  }

  v95[59] = v42 & 1;
  v50 = v12[11];
  v49 = v12[12];
  OUTLINED_FUNCTION_0_142();
  if (v51)
  {
    v52 = OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126(v52);
    v54 = *(v53 + 16);
    v55 = OUTLINED_FUNCTION_4_91();
    v56(v55);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v50 && v2 == v49)
    {

      LOBYTE(v51) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v51) = v50 ^ 1;
    }

    v12[11] = a1;
    v12[12] = v2;
  }

  v95[60] = v51 & 1;
  v59 = v12[15];
  v58 = v12[16];
  OUTLINED_FUNCTION_0_142();
  if (v60)
  {
    v61 = OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126(v61);
    v63 = *(v62 + 16);
    v64 = OUTLINED_FUNCTION_4_91();
    v65(v64);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v59 && v2 == v58)
    {

      LOBYTE(v60) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v60) = v59 ^ 1;
    }

    v12[15] = a1;
    v12[16] = v2;
  }

  v95[61] = v60 & 1;
  v68 = v12[17];
  v67 = v12[18];
  OUTLINED_FUNCTION_0_142();
  if (v69)
  {
    v70 = OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126(v70);
    v72 = *(v71 + 16);
    v73 = OUTLINED_FUNCTION_4_91();
    v74(v73);
    OUTLINED_FUNCTION_3_95();
    OUTLINED_FUNCTION_9_59();
    OUTLINED_FUNCTION_5_87();
    sub_1DD6406C8();
    OUTLINED_FUNCTION_6_75();
    sub_1DD3ADFD0(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (a1 == v68 && v2 == v67)
    {

      LOBYTE(v69) = 0;
    }

    else
    {
      OUTLINED_FUNCTION_2_111();
      OUTLINED_FUNCTION_8_71();
      LOBYTE(v69) = v68 ^ 1;
    }

    v12[17] = a1;
    v12[18] = v2;
  }

  v95[62] = v69 & 1;
  v77 = v12[19];
  v76 = v12[20];
  OUTLINED_FUNCTION_0_142();
  if (v78)
  {
    v79 = OUTLINED_FUNCTION_7_69();
    OUTLINED_FUNCTION_1_126(v79);
    v81 = *(v80 + 16);
    v82 = OUTLINED_FUNCTION_4_91();
    v83(v82);
    OUTLINED_FUNCTION_3_95();

    OUTLINED_FUNCTION_5_87();
    v84 = sub_1DD6406C8();
    v86 = v85;
    sub_1DD3ADFD0(v8, &qword_1ECCDC3F0, &unk_1DD64AF50);

    if (v84 == v77 && v86 == v76)
    {

      LOBYTE(v78) = 0;
    }

    else
    {
      v88 = sub_1DD640CD8();

      LOBYTE(v78) = v88 ^ 1;
    }

    v12[19] = v84;
    v12[20] = v86;
  }

  v95[63] = v78 & 1;
  v89 = 32;
  while (v89 != 40)
  {
    v90 = v95[v89++ + 24];
    if (v90)
    {
      v91 = v12 + *(v9 + 36);
      v91[*(type metadata accessor for ContactResolver.SignalSet(0) + 152)] = 1;
      sub_1DD5C22B4(v12, a2);
      v92 = 0;
      return __swift_storeEnumTagSinglePayload(a2, v92, 1, v9);
    }
  }

  v93 = v12 + *(v9 + 36);
  v92 = 1;
  v93[*(type metadata accessor for ContactResolver.SignalSet(0) + 152)] = 1;
  sub_1DD3ADFD0(v12, &qword_1ECCDBC18, &unk_1DD6459A0);
  return __swift_storeEnumTagSinglePayload(a2, v92, 1, v9);
}

uint64_t type metadata accessor for StripDiacriticsQueryExpander()
{
  result = qword_1EE160E08;
  if (!qword_1EE160E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD5EA474()
{
  result = sub_1DD63D168();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t OUTLINED_FUNCTION_3_95()
{
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v0);

  return sub_1DD3B7F10();
}

_BYTE *storeEnumTagSinglePayload for SuggestedContactsFilter(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1DD5EA5F0(int a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = sub_1DD640EA8();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  *v22 = a1;
  *&v22[8] = a2;
  *&v22[16] = a3;
  v22[26] = BYTE2(a4);
  *&v22[24] = a4;
  v21 = &type metadata for PICSRuntimeMetrics;
  v13 = swift_allocObject();
  v20 = v13;
  v23[0] = *v22;
  v14 = *&v22[11];
  *(v23 + 11) = *&v22[11];
  *(v13 + 16) = *v22;
  *(v13 + 27) = v14;
  sub_1DD5F1244(v23, v19);
  sub_1DD640E88();
  sub_1DD640E98();
  v15 = OUTLINED_FUNCTION_20_35();
  v16(v15);
  sub_1DD395950();
  v17 = sub_1DD63FC88();
  OUTLINED_FUNCTION_25_25(v17);
  OUTLINED_FUNCTION_11_52();
  return v4;
}

uint64_t sub_1DD5EA774()
{
  v2 = sub_1DD640EA8();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v8 = v0[1];
  v20 = *v0;
  v21 = v8;
  v22 = *(v0 + 4);
  v19 = &type metadata for SportsResolverMetrics;
  v9 = swift_allocObject();
  v18 = v9;
  v10 = v0[1];
  v23[0] = *v0;
  v23[1] = v10;
  v24 = *(v0 + 4);
  v11 = v24;
  *(v9 + 16) = v23[0];
  *(v9 + 32) = v10;
  *(v9 + 48) = v11;
  sub_1DD5F1310(v23, v17);
  sub_1DD640E88();
  sub_1DD640E98();
  v12 = *(v5 + 8);
  v13 = OUTLINED_FUNCTION_40();
  v14(v13);
  sub_1DD395950();
  v15 = sub_1DD63FC88();
  sub_1DD46D298(v15, sub_1DD5F136C);
  OUTLINED_FUNCTION_11_52();
  return v1;
}

uint64_t sub_1DD5EA8F4()
{
  v1 = sub_1DD640EA8();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_0();
  memcpy(v13, v0, sizeof(v13));
  v12 = &type metadata for BaseContactResolverMetric;
  v11 = swift_allocObject();
  memcpy(__dst, v0, 0x89uLL);
  memcpy((v11 + 16), v0, 0x89uLL);
  sub_1DD5F14A8(__dst, &v10);
  sub_1DD640E88();
  sub_1DD640E98();
  v5 = OUTLINED_FUNCTION_16_51();
  v6(v5);
  sub_1DD395950();
  v7 = sub_1DD63FC88();
  v8 = OUTLINED_FUNCTION_24_25(v7);

  return v8;
}

uint64_t sub_1DD5EAA80()
{
  v1 = sub_1DD640EA8();
  v2 = OUTLINED_FUNCTION_0(v1);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_10_0();
  memcpy(v13, v0, sizeof(v13));
  v12 = &type metadata for CancellableStitcherMetric;
  v11 = swift_allocObject();
  memcpy(__dst, v0, 0x51uLL);
  memcpy((v11 + 16), v0, 0x51uLL);
  sub_1DD5F1520(__dst, &v10);
  sub_1DD640E88();
  sub_1DD640E98();
  v5 = OUTLINED_FUNCTION_16_51();
  v6(v5);
  sub_1DD395950();
  v7 = sub_1DD63FC88();
  v8 = OUTLINED_FUNCTION_24_25(v7);

  return v8;
}

uint64_t sub_1DD5EAC0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_1DD640EA8();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  *&v22 = a1;
  *(&v22 + 1) = a2;
  *&v23 = a3;
  *(&v23 + 1) = a4;
  v21 = &type metadata for ContactResolverTaskMetrics;
  v13 = swift_allocObject();
  v20 = v13;
  v14 = v23;
  v24[0] = v22;
  v24[1] = v23;
  *(v13 + 16) = v22;
  *(v13 + 32) = v14;
  sub_1DD5F13DC(v24, v19);
  sub_1DD640E88();
  sub_1DD640E98();
  v15 = OUTLINED_FUNCTION_20_35();
  v16(v15);
  sub_1DD395950();
  v17 = sub_1DD63FC88();
  OUTLINED_FUNCTION_25_25(v17);
  OUTLINED_FUNCTION_11_52();
  return v4;
}

uint64_t sub_1DD5EAD78()
{
  v1 = sub_1DD640EA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v0[1];
  v18[0] = *v0;
  v18[1] = v6;
  v19 = *(v0 + 4);
  v17 = &type metadata for FIASuggestedContactsMetric;
  v7 = swift_allocObject();
  v16 = v7;
  v8 = *v0;
  v20 = v0[1];
  v9 = v20;
  v21 = v8;
  *(v7 + 16) = v8;
  *(v7 + 32) = v9;
  *(v7 + 48) = *(v0 + 4);
  sub_1DD406EC4(&v21, v15);
  sub_1DD406EC4(&v20, v15);
  sub_1DD640E88();
  sub_1DD640E98();
  (*(v2 + 8))(v5, v1);
  sub_1DD395950();
  v10 = sub_1DD63FC88();
  v14 = v18;
  v11 = sub_1DD46D298(v10, sub_1DD5F11D4);

  return v11;
}

uint64_t sub_1DD5EAF24()
{
  v2 = OUTLINED_FUNCTION_13_48();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_0();
  v14 = &type metadata for ContactResolverSearchMetrics;
  v13 = swift_allocObject();
  memcpy((v13 + 16), v1, 0x58uLL);
  sub_1DD640E88();
  sub_1DD640E98();
  v6 = OUTLINED_FUNCTION_7_70();
  v7(v6);
  sub_1DD395950();
  v16 = sub_1DD63FC88();
  sub_1DD6409E8();
  while (1)
  {
    sub_1DD640A88();
    if (!v15)
    {

      return v16;
    }

    v8 = OUTLINED_FUNCTION_2_112();
    sub_1DD5EF5D0(v8, v9, v10);
    if (v0)
    {
      break;
    }

    OUTLINED_FUNCTION_15_50();
  }

  sub_1DD390754(v12, &qword_1ECCDCFE0, &unk_1DD64CDB0);
}

uint64_t sub_1DD5EB0C0()
{
  v2 = OUTLINED_FUNCTION_13_48();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_0();
  v14 = &unk_1F58B5200;
  v13 = swift_allocObject();
  memcpy((v13 + 16), v1, 0x52uLL);
  sub_1DD640E88();
  sub_1DD640E98();
  v6 = OUTLINED_FUNCTION_7_70();
  v7(v6);
  sub_1DD395950();
  v16 = sub_1DD63FC88();
  sub_1DD6409E8();
  while (1)
  {
    sub_1DD640A88();
    if (!v15)
    {

      return v16;
    }

    v8 = OUTLINED_FUNCTION_2_112();
    sub_1DD5EFE64(v8, v9, v10);
    if (v0)
    {
      break;
    }

    OUTLINED_FUNCTION_15_50();
  }

  sub_1DD390754(v12, &qword_1ECCDCFE0, &unk_1DD64CDB0);
}

uint64_t sub_1DD5EB25C()
{
  v2 = OUTLINED_FUNCTION_13_48();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_10_0();
  v16 = &unk_1F58B4A50;
  v6 = swift_allocObject();
  v15 = v6;
  v7 = v1[1];
  v6[1] = *v1;
  v6[2] = v7;
  *(v6 + 42) = *(v1 + 26);
  sub_1DD640E88();
  sub_1DD640E98();
  v8 = OUTLINED_FUNCTION_7_70();
  v9(v8);
  sub_1DD395950();
  v18 = sub_1DD63FC88();
  sub_1DD6409E8();
  while (1)
  {
    sub_1DD640A88();
    if (!v17)
    {

      return v18;
    }

    v10 = OUTLINED_FUNCTION_2_112();
    sub_1DD5F06F8(v10, v11, v12);
    if (v0)
    {
      break;
    }

    OUTLINED_FUNCTION_15_50();
  }

  sub_1DD390754(v14, &qword_1ECCDCFE0, &unk_1DD64CDB0);
}

uint64_t sub_1DD5EB3F8(uint64_t a1)
{
  v3 = 0;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v4 = OUTLINED_FUNCTION_0(v109);
  v117 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v8);
  v116 = &v104 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC30, &unk_1DD663650);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v12);
  v111 = &v104 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC10, &unk_1DD664BA0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v114 = &v104 - v16;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v17 = OUTLINED_FUNCTION_0(v115);
  v121 = v18;
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_1_17();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v104 - v26;
  v28 = *v1;
  v29 = a1;
  v30 = *(a1 + 16);
  v113 = 0;
  v31 = MEMORY[0x1E69E7CC0];
  while (v30 != v3)
  {
    v32 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v33 = *(v121 + 72);
    sub_1DD4DDC08(v29 + v32 + v33 * v3, v27, &qword_1ECCDBBE8, &qword_1DD644470);
    if (v27[*(type metadata accessor for Contact() + 84)])
    {
      sub_1DD390754(v27, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v3;
    }

    else
    {
      sub_1DD4DDCBC(v27, v118, &qword_1ECCDBBE8, &qword_1DD644470);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      __dst[0] = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_14_45();
        v31 = __dst[0];
      }

      v35 = v31[2];
      v36 = v35 + 1;
      if (v35 >= v31[3] >> 1)
      {
        v106 = v35 + 1;
        v105 = v35;
        sub_1DD42B4F8();
        v36 = v106;
        v35 = v105;
        v31 = __dst[0];
      }

      ++v3;
      v31[2] = v36;
      sub_1DD4DDCBC(v118, v31 + v32 + v35 * v33, &qword_1ECCDBBE8, &qword_1DD644470);
    }
  }

  if (v31[2])
  {
    return v31;
  }

  v37 = 0;
  for (i = MEMORY[0x1E69E7CC0]; ; sub_1DD4DDCBC(v120, i + v41 + v48 * v42, &qword_1ECCDBBE8, &qword_1DD644470))
  {
    v39 = v37;
    v40 = v119;
LABEL_13:
    if (v39 == v30)
    {
      break;
    }

    v41 = (*(v121 + 80) + 32) & ~*(v121 + 80);
    v42 = *(v121 + 72);
    v37 = v39 + 1;
    sub_1DD4DDC08(v29 + v41 + v42 * v39, v40, &qword_1ECCDBBE8, &qword_1DD644470);
    v43 = *(v40 + *(type metadata accessor for Contact() + 80));
    v44 = (v43 + 48);
    v45 = *(v43 + 16) + 1;
    do
    {
      if (!--v45)
      {
        sub_1DD390754(v40, &qword_1ECCDBBE8, &qword_1DD644470);
        v39 = v37;
        goto LABEL_13;
      }

      v46 = *v44;
      v44 += 80;
    }

    while (v46 != v28);
    sub_1DD4DDCBC(v40, v120, &qword_1ECCDBBE8, &qword_1DD644470);
    v47 = swift_isUniquelyReferenced_nonNull_native();
    __dst[0] = i;
    if ((v47 & 1) == 0)
    {
      OUTLINED_FUNCTION_14_45();
      i = __dst[0];
    }

    v48 = *(i + 16);
    if (v48 >= *(i + 24) >> 1)
    {
      sub_1DD42B4F8();
      i = __dst[0];
    }

    *(i + 16) = v48 + 1;
  }

  v49 = v114;
  sub_1DD558E30(v29, v114);
  if (__swift_getEnumTagSinglePayload(v49, 1, v115) == 1)
  {
    v50 = &qword_1ECCDFC10;
    v51 = &unk_1DD664BA0;
    v52 = v49;
LABEL_33:
    sub_1DD390754(v52, v50, v51);
    v62 = *(i + 16);

    OUTLINED_FUNCTION_1_41();
    if (v62)
    {
      v64 = v63;
    }

    else
    {
      v64 = 0xE700000000000000;
    }

    OUTLINED_FUNCTION_19_37();
    __dst[0] = v65;
    __dst[1] = v66;
    __dst[2] = v67;
    __dst[3] = v64;
    __dst[4] = v62;
    v123 = v68;
    v124 = 0x80000001DD66CE50;
    v69 = qword_1ECCDFC20;

    v70 = OUTLINED_FUNCTION_11_0();
    MEMORY[0x1E12B2260](v70);

    OUTLINED_FUNCTION_26_28();
    if (v69)
    {
    }

    else
    {
      OUTLINED_FUNCTION_40();
      v71 = sub_1DD63FDA8();

      sub_1DD395950();
      v72 = sub_1DD63FC48();

      OUTLINED_FUNCTION_11_0();
      AnalyticsSendEvent();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v53 = v112;
  sub_1DD4DDCBC(v49, v112, &qword_1ECCDBBE8, &qword_1DD644470);
  if (*(i + 16) != 1)
  {
    v50 = &qword_1ECCDBBE8;
    v51 = &qword_1DD644470;
    v52 = v53;
    goto LABEL_33;
  }

  v54 = type metadata accessor for Contact();
  v55 = *(v53 + *(v54 + 80));
  v56 = *(v55 + 16);
  v57 = (v55 + 32);
  if (v56)
  {
    while (1)
    {
      memcpy(__dst, v57, 0x4AuLL);
      if (LOBYTE(__dst[2]) == v28)
      {
        break;
      }

      v57 += 80;
      if (!--v56)
      {
        goto LABEL_30;
      }
    }

    v73 = *(v53 + *(v115 + 36) + 272);
    v74 = *(v73 + 16);
    result = sub_1DD3C6A40(__dst, &v123);
    v76 = 0;
    for (j = v116; ; result = sub_1DD390754(j, &qword_1ECCDBBD8, &unk_1DD645A90))
    {
      if (v74 == v76)
      {
        v78 = 1;
        v79 = v111;
        goto LABEL_46;
      }

      if (v76 >= *(v73 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1DD4DDC08(v73 + ((*(v117 + 80) + 32) & ~*(v117 + 80)) + *(v117 + 72) * v76, j, &qword_1ECCDBBD8, &unk_1DD645A90);
      if (*(j + 16) == v28)
      {
        break;
      }

      ++v76;
    }

    v79 = v111;
    sub_1DD4DDCBC(j, v111, &qword_1ECCDBBD8, &unk_1DD645A90);
    v78 = 0;
LABEL_46:
    v80 = v109;
    __swift_storeEnumTagSinglePayload(v79, v78, 1, v109);
    v81 = v108;
    sub_1DD4DDC08(v79, v108, &qword_1ECCDFC30, &unk_1DD663650);
    if (__swift_getEnumTagSinglePayload(v81, 1, v80) != 1)
    {
      sub_1DD4DDCBC(v81, v110, &qword_1ECCDBBD8, &unk_1DD645A90);
      v123 = 0x73736563637573;
      v124 = 0xE700000000000000;
      v125[0] = 1701736302;
      v125[1] = 0xE400000000000000;
      v126 = 0;
      OUTLINED_FUNCTION_1_41();
      OUTLINED_FUNCTION_18_39(v86);
      v87 = qword_1ECCDFC20;
      v88 = off_1ECCDFC28;

      MEMORY[0x1E12B2260](v87, v88);

      v89 = v122;
      OUTLINED_FUNCTION_12_47();
      if (v88)
      {
      }

      else
      {
        v93 = sub_1DD63FDA8();

        sub_1DD395950();
        v88 = sub_1DD63FC48();

        AnalyticsSendEvent();
      }

      v94 = v107;
      sub_1DD4DDC08(v53, v107, &qword_1ECCDBBE8, &qword_1DD644470);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC40, &unk_1DD647D60);
      v31 = swift_allocObject();
      v120 = xmmword_1DD643F90;
      *(v31 + 1) = xmmword_1DD643F90;
      memcpy(v31 + 4, __dst, 0x4AuLL);
      v95 = *(v54 + 80);
      v96 = *(v94 + v95);

      *(v94 + v95) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE0, &qword_1DD663660);
      v97 = OUTLINED_FUNCTION_9_60(&v128);
      OUTLINED_FUNCTION_21_35(v97);
      v99 = v110;
      sub_1DD4DDC08(v110, v98 + v89, &qword_1ECCDBBD8, &unk_1DD645A90);
      v100 = v94 + *(v115 + 36);
      v101 = *(v100 + 272);

      *(v100 + 272) = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBF0, &qword_1DD644038);
      v102 = OUTLINED_FUNCTION_9_60(&v129);
      OUTLINED_FUNCTION_21_35(v102);
      sub_1DD4DDCBC(v94, v103 + v100, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v99, &qword_1ECCDBBD8, &unk_1DD645A90);
      sub_1DD390754(v79, &qword_1ECCDFC30, &unk_1DD663650);
      sub_1DD390754(v53, &qword_1ECCDBBE8, &qword_1DD644470);
      return v31;
    }

    sub_1DD3C6A9C(__dst);
    sub_1DD390754(v81, &qword_1ECCDFC30, &unk_1DD663650);
    OUTLINED_FUNCTION_19_37();
    v123 = v82;
    v124 = 0xE700000000000000;
    strcpy(v125, "missingSignal");
    HIWORD(v125[1]) = -4864;
    v126 = 0;
    OUTLINED_FUNCTION_1_41();
    OUTLINED_FUNCTION_18_39(v83);
    v84 = qword_1ECCDFC20;
    v85 = off_1ECCDFC28;

    MEMORY[0x1E12B2260](v84, v85);

    OUTLINED_FUNCTION_12_47();
    if (v85)
    {
    }

    else
    {
      OUTLINED_FUNCTION_40();
      v92 = sub_1DD63FDA8();

      sub_1DD395950();
      v85 = sub_1DD63FC48();

      AnalyticsSendEvent();
    }

    sub_1DD390754(v79, &qword_1ECCDFC30, &unk_1DD663650);
  }

  else
  {
LABEL_30:
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_1DD6408D8();
    LOBYTE(v123) = v28;
    sub_1DD6409F8();
    MEMORY[0x1E12B2260](0xD000000000000011, 0x80000001DD674950);
    v58 = __dst[0];
    v59 = __dst[1];
    __dst[0] = 0x6572756C696166;
    __dst[1] = 0xE700000000000000;
    __dst[2] = v58;
    __dst[3] = v59;
    __dst[4] = 0;
    v123 = 0xD000000000000019;
    v124 = 0x80000001DD66CE50;
    v60 = qword_1ECCDFC20;

    v61 = OUTLINED_FUNCTION_11_0();
    MEMORY[0x1E12B2260](v61);

    OUTLINED_FUNCTION_26_28();
    if (v60)
    {
    }

    else
    {
      OUTLINED_FUNCTION_40();
      v90 = sub_1DD63FDA8();

      sub_1DD395950();
      v91 = sub_1DD63FC48();

      OUTLINED_FUNCTION_11_0();
      AnalyticsSendEvent();
    }
  }

  sub_1DD390754(v53, &qword_1ECCDBBE8, &qword_1DD644470);
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1DD5EC144(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  *v48 = a3;
  *&v48[8] = a4;
  *&v48[16] = a5;
  *&v48[24] = a6;
  v48[26] = BYTE2(a6);
  sub_1DD4DDC08(a2, v46, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v10 = *&v46[8];
  if (!*&v46[8])
  {
    __break(1u);
    goto LABEL_41;
  }

  v6 = *v46;
  __swift_destroy_boxed_opaque_existential_1(&v46[16]);
  sub_1DD4DDC08(a2, v46, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&v46[16], v45);
  sub_1DD395720(v45, v46);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    v12 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *v46 = *a1;
    sub_1DD396778();

    *a1 = *v46;
LABEL_10:
    v13 = v45;
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  sub_1DD395720(v45, v46);
  if (swift_dynamicCast())
  {
    v11 = *&v42[0];
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v45, v46);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v45, v46);
  if (swift_dynamicCast())
  {
    v11 = LOBYTE(v42[0]);
    goto LABEL_6;
  }

  sub_1DD395720(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(v42, v46);
    v15 = *&v46[24];
    v16 = v47;
    __swift_project_boxed_opaque_existential_1(v46, *&v46[24]);
    (*(v16 + 8))(v15, v16);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    v19 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v42[0] = *a1;
    sub_1DD396778();

    *a1 = *&v42[0];
    __swift_destroy_boxed_opaque_existential_1(v45);
    v13 = v46;
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_1DD390754(v42, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(v42, v46);
    v17 = *&v46[24];
    v18 = v47;
    __swift_project_boxed_opaque_existential_1(v46, *&v46[24]);
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v43 = 0;
  memset(v42, 0, sizeof(v42));
  sub_1DD390754(v42, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v45, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v42[1] + 1))
  {
    v7 = v48;
    sub_1DD390754(v42, &qword_1ECCDB980, &unk_1DD643DC0);
    *v46 = *v48;
    *&v46[11] = *&v48[11];
    sub_1DD5F1244(v48, v42);
    if (sub_1DD63FE38() == 7104878 && v20 == 0xE300000000000000)
    {
    }

    else
    {
      v22 = sub_1DD640CD8();

      if ((v22 & 1) == 0)
      {
        sub_1DD395720(v45, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(v42, v46);
          __swift_project_boxed_opaque_existential_1(v46, *&v46[24]);
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v43 = 0;
        memset(v42, 0, sizeof(v42));
        sub_1DD390754(v42, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v29 = sub_1DD63F9F8();
          __swift_project_value_buffer(v29, qword_1EE16F068);
          sub_1DD395720(v45, v46);
          sub_1DD5F1244(v48, v42);

          v30 = sub_1DD63F9D8();
          v31 = sub_1DD640378();

          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            v33 = swift_slowAlloc();
            v44[0] = v33;
            *v32 = 136315650;
            v34 = sub_1DD39565C(v6, v10, v44);

            *(v32 + 4) = v34;
            *(v32 + 12) = 2080;
            sub_1DD395720(v46, v42);
            v35 = sub_1DD63FE38();
            v37 = v36;
            __swift_destroy_boxed_opaque_existential_1(v46);
            v38 = sub_1DD39565C(v35, v37, v44);

            *(v32 + 14) = v38;
            *(v32 + 22) = 2080;
            v42[0] = *v48;
            *(v42 + 11) = *(v7 + 11);
            v39 = sub_1DD63FE38();
            v41 = sub_1DD39565C(v39, v40, v44);

            *(v32 + 24) = v41;
            _os_log_impl(&dword_1DD38D000, v30, v31, "cannot log key=%s value=%s in %s", v32, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v33, -1, -1);
            MEMORY[0x1E12B3DA0](v32, -1, -1);
          }

          else
          {

            sub_1DD5F12BC(v48);

            __swift_destroy_boxed_opaque_existential_1(v46);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v23 = sub_1DD63F9F8();
    __swift_project_value_buffer(v23, qword_1EE16F068);

    v24 = sub_1DD63F9D8();
    v25 = sub_1DD640368();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v46 = v27;
      *v26 = 136315138;
      v28 = sub_1DD39565C(v6, v10, v46);

      *(v26 + 4) = v28;
      _os_log_impl(&dword_1DD38D000, v24, v25, "nil value for key=%s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E12B3DA0](v27, -1, -1);
      MEMORY[0x1E12B3DA0](v26, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v45);

  return sub_1DD390754(v42, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5ECA0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_1DD4DDC08(a2, &v46, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v7 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = v46;
  __swift_destroy_boxed_opaque_existential_1(&v47);
  sub_1DD4DDC08(a2, &v46, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&v47, v45);
  sub_1DD395720(v45, &v46);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    v9 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v46 = *a1;
    sub_1DD396778();

    *a1 = v46;
LABEL_10:
    v10 = v45;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  sub_1DD395720(v45, &v46);
  if (swift_dynamicCast())
  {
    v8 = v41;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v45, &v46);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v45, &v46);
  if (swift_dynamicCast())
  {
    v8 = v41;
    goto LABEL_6;
  }

  sub_1DD395720(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v41, &v46);
    v12 = *(&v47 + 1);
    v13 = v48;
    __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    (*(v13 + 8))(v12, v13);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    v16 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v41 = *a1;
    sub_1DD396778();

    *a1 = v41;
    __swift_destroy_boxed_opaque_existential_1(v45);
    v10 = &v46;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1DD390754(&v41, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v41, &v46);
    v14 = *(&v47 + 1);
    v15 = v48;
    __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1DD390754(&v41, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v45, &v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v42 + 1))
  {
    sub_1DD390754(&v41, &qword_1ECCDB980, &unk_1DD643DC0);
    v17 = *(a3 + 16);
    v46 = *a3;
    v47 = v17;
    v48 = *(a3 + 32);
    sub_1DD5F1310(a3, &v41);
    if (sub_1DD63FE38() == 7104878 && v18 == 0xE300000000000000)
    {
    }

    else
    {
      v20 = sub_1DD640CD8();

      if ((v20 & 1) == 0)
      {
        sub_1DD395720(v45, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v41, &v46);
          __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v43 = 0;
        v41 = 0u;
        v42 = 0u;
        sub_1DD390754(&v41, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v27 = sub_1DD63F9F8();
          __swift_project_value_buffer(v27, qword_1EE16F068);
          sub_1DD395720(v45, &v41);
          sub_1DD5F1310(a3, &v46);

          v28 = sub_1DD63F9D8();
          v29 = sub_1DD640378();

          if (os_log_type_enabled(v28, v29))
          {
            v30 = swift_slowAlloc();
            v31 = swift_slowAlloc();
            v44[0] = v31;
            *v30 = 136315650;
            v32 = sub_1DD39565C(v3, v7, v44);

            *(v30 + 4) = v32;
            *(v30 + 12) = 2080;
            sub_1DD395720(&v41, &v46);
            v33 = sub_1DD63FE38();
            v35 = v34;
            __swift_destroy_boxed_opaque_existential_1(&v41);
            v36 = sub_1DD39565C(v33, v35, v44);

            *(v30 + 14) = v36;
            *(v30 + 22) = 2080;
            v37 = *(a3 + 16);
            v46 = *a3;
            v47 = v37;
            v48 = *(a3 + 32);
            v38 = sub_1DD63FE38();
            v40 = sub_1DD39565C(v38, v39, v44);

            *(v30 + 24) = v40;
            _os_log_impl(&dword_1DD38D000, v28, v29, "cannot log key=%s value=%s in %s", v30, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v31, -1, -1);
            MEMORY[0x1E12B3DA0](v30, -1, -1);
          }

          else
          {

            sub_1DD5F1388(a3);

            __swift_destroy_boxed_opaque_existential_1(&v41);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v21 = sub_1DD63F9F8();
    __swift_project_value_buffer(v21, qword_1EE16F068);

    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640368();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v46 = v25;
      *v24 = 136315138;
      v26 = sub_1DD39565C(v3, v7, &v46);

      *(v24 + 4) = v26;
      _os_log_impl(&dword_1DD38D000, v22, v23, "nil value for key=%s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E12B3DA0](v25, -1, -1);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v45);

  return sub_1DD390754(&v41, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5ED2C0(uint64_t *a1, uint64_t a2, const void *a3)
{
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v7 = *(&__dst[0] + 1);
  if (!*(&__dst[0] + 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = *&__dst[0];
  __swift_destroy_boxed_opaque_existential_1(&__dst[1]);
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&__dst[1], v44);
  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    v9 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&__dst[0] = *a1;
    sub_1DD396778();

    *a1 = *&__dst[0];
LABEL_10:
    v10 = v44;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    v8 = v39;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    v8 = v39;
    goto LABEL_6;
  }

  sub_1DD395720(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v39, __dst);
    v12 = *(&__dst[1] + 1);
    v13 = *&__dst[2];
    __swift_project_boxed_opaque_existential_1(__dst, *(&__dst[1] + 1));
    (*(v13 + 8))(v12, v13);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    v16 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v39 = *a1;
    sub_1DD396778();

    *a1 = v39;
    __swift_destroy_boxed_opaque_existential_1(v44);
    v10 = __dst;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1DD390754(&v39, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v39, __dst);
    v14 = *(&__dst[1] + 1);
    v15 = *&__dst[2];
    __swift_project_boxed_opaque_existential_1(__dst, *(&__dst[1] + 1));
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1DD390754(&v39, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v44, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v40 + 1))
  {
    sub_1DD390754(&v39, &qword_1ECCDB980, &unk_1DD643DC0);
    memcpy(__dst, a3, 0x89uLL);
    sub_1DD5F14A8(a3, &v39);
    if (sub_1DD63FE38() == 7104878 && v17 == 0xE300000000000000)
    {
    }

    else
    {
      v19 = sub_1DD640CD8();

      if ((v19 & 1) == 0)
      {
        sub_1DD395720(v44, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v39, __dst);
          __swift_project_boxed_opaque_existential_1(__dst, *(&__dst[1] + 1));
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        sub_1DD390754(&v39, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v26 = sub_1DD63F9F8();
          __swift_project_value_buffer(v26, qword_1EE16F068);
          sub_1DD395720(v44, &v39);
          sub_1DD5F14A8(a3, __dst);

          v27 = sub_1DD63F9D8();
          v28 = sub_1DD640378();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v43[0] = v30;
            *v29 = 136315650;
            v31 = sub_1DD39565C(v3, v7, v43);

            *(v29 + 4) = v31;
            *(v29 + 12) = 2080;
            sub_1DD395720(&v39, __dst);
            v32 = sub_1DD63FE38();
            v34 = v33;
            __swift_destroy_boxed_opaque_existential_1(&v39);
            v35 = sub_1DD39565C(v32, v34, v43);

            *(v29 + 14) = v35;
            *(v29 + 22) = 2080;
            memcpy(__dst, a3, 0x89uLL);
            v36 = sub_1DD63FE38();
            v38 = sub_1DD39565C(v36, v37, v43);

            *(v29 + 24) = v38;
            _os_log_impl(&dword_1DD38D000, v27, v28, "cannot log key=%s value=%s in %s", v29, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v30, -1, -1);
            MEMORY[0x1E12B3DA0](v29, -1, -1);
          }

          else
          {

            sub_1DD45735C(a3);

            __swift_destroy_boxed_opaque_existential_1(&v39);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);

    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640368();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&__dst[0] = v24;
      *v23 = 136315138;
      v25 = sub_1DD39565C(v3, v7, __dst);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1DD38D000, v21, v22, "nil value for key=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v44);

  return sub_1DD390754(&v39, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5EDB74(uint64_t *a1, uint64_t a2, const void *a3)
{
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v7 = *&__dst[8];
  if (!*&__dst[8])
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = *__dst;
  __swift_destroy_boxed_opaque_existential_1(&__dst[16]);
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&__dst[16], v44);
  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    v9 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *__dst = *a1;
    sub_1DD396778();

    *a1 = *__dst;
LABEL_10:
    v10 = v44;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    v8 = v39;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    v8 = v39;
    goto LABEL_6;
  }

  sub_1DD395720(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v39, __dst);
    v12 = *&__dst[24];
    v13 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    (*(v13 + 8))(v12, v13);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    v16 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v39 = *a1;
    sub_1DD396778();

    *a1 = v39;
    __swift_destroy_boxed_opaque_existential_1(v44);
    v10 = __dst;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1DD390754(&v39, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v39, __dst);
    v14 = *&__dst[24];
    v15 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v41 = 0;
  v39 = 0u;
  v40 = 0u;
  sub_1DD390754(&v39, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v44, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v40 + 1))
  {
    sub_1DD390754(&v39, &qword_1ECCDB980, &unk_1DD643DC0);
    memcpy(__dst, a3, sizeof(__dst));
    sub_1DD5F1520(a3, &v39);
    if (sub_1DD63FE38() == 7104878 && v17 == 0xE300000000000000)
    {
    }

    else
    {
      v19 = sub_1DD640CD8();

      if ((v19 & 1) == 0)
      {
        sub_1DD395720(v44, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v39, __dst);
          __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v41 = 0;
        v39 = 0u;
        v40 = 0u;
        sub_1DD390754(&v39, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v26 = sub_1DD63F9F8();
          __swift_project_value_buffer(v26, qword_1EE16F068);
          sub_1DD395720(v44, &v39);
          sub_1DD5F1520(a3, __dst);

          v27 = sub_1DD63F9D8();
          v28 = sub_1DD640378();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v43[0] = v30;
            *v29 = 136315650;
            v31 = sub_1DD39565C(v3, v7, v43);

            *(v29 + 4) = v31;
            *(v29 + 12) = 2080;
            sub_1DD395720(&v39, __dst);
            v32 = sub_1DD63FE38();
            v34 = v33;
            __swift_destroy_boxed_opaque_existential_1(&v39);
            v35 = sub_1DD39565C(v32, v34, v43);

            *(v29 + 14) = v35;
            *(v29 + 22) = 2080;
            memcpy(__dst, a3, sizeof(__dst));
            v36 = sub_1DD63FE38();
            v38 = sub_1DD39565C(v36, v37, v43);

            *(v29 + 24) = v38;
            _os_log_impl(&dword_1DD38D000, v27, v28, "cannot log key=%s value=%s in %s", v29, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v30, -1, -1);
            MEMORY[0x1E12B3DA0](v29, -1, -1);
          }

          else
          {

            sub_1DD3E61D8(a3);

            __swift_destroy_boxed_opaque_existential_1(&v39);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);

    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640368();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *__dst = v24;
      *v23 = 136315138;
      v25 = sub_1DD39565C(v3, v7, __dst);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1DD38D000, v21, v22, "nil value for key=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v44);

  return sub_1DD390754(&v39, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5EE428(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v49 = a3;
  *(&v49 + 1) = a4;
  *&v50 = a5;
  *(&v50 + 1) = a6;
  sub_1DD4DDC08(a2, &v46, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v9 = *(&v46 + 1);
  if (!*(&v46 + 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v6 = v46;
  __swift_destroy_boxed_opaque_existential_1(&v47);
  sub_1DD4DDC08(a2, &v46, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&v47, v45);
  sub_1DD395720(v45, &v46);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    v11 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v46 = *a1;
    sub_1DD396778();

    *a1 = v46;
LABEL_10:
    v12 = v45;
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  sub_1DD395720(v45, &v46);
  if (swift_dynamicCast())
  {
    v10 = v41;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v45, &v46);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v45, &v46);
  if (swift_dynamicCast())
  {
    v10 = v41;
    goto LABEL_6;
  }

  sub_1DD395720(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v41, &v46);
    v14 = *(&v47 + 1);
    v15 = v48;
    __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    (*(v15 + 8))(v14, v15);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    v18 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v41 = *a1;
    sub_1DD396778();

    *a1 = v41;
    __swift_destroy_boxed_opaque_existential_1(v45);
    v12 = &v46;
    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1DD390754(&v41, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v45, v44);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v41, &v46);
    v16 = *(&v47 + 1);
    v17 = v48;
    __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v43 = 0;
  v41 = 0u;
  v42 = 0u;
  sub_1DD390754(&v41, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v45, &v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v42 + 1))
  {
    sub_1DD390754(&v41, &qword_1ECCDB980, &unk_1DD643DC0);
    v46 = v49;
    v47 = v50;
    sub_1DD5F13DC(&v49, &v41);
    if (sub_1DD63FE38() == 7104878 && v19 == 0xE300000000000000)
    {
    }

    else
    {
      v21 = sub_1DD640CD8();

      if ((v21 & 1) == 0)
      {
        sub_1DD395720(v45, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v41, &v46);
          __swift_project_boxed_opaque_existential_1(&v46, *(&v47 + 1));
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v43 = 0;
        v41 = 0u;
        v42 = 0u;
        sub_1DD390754(&v41, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v28 = sub_1DD63F9F8();
          __swift_project_value_buffer(v28, qword_1EE16F068);
          sub_1DD395720(v45, &v46);
          sub_1DD5F13DC(&v49, &v41);

          v29 = sub_1DD63F9D8();
          v30 = sub_1DD640378();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v44[0] = v32;
            *v31 = 136315650;
            v33 = sub_1DD39565C(v6, v9, v44);

            *(v31 + 4) = v33;
            *(v31 + 12) = 2080;
            sub_1DD395720(&v46, &v41);
            v34 = sub_1DD63FE38();
            v36 = v35;
            __swift_destroy_boxed_opaque_existential_1(&v46);
            v37 = sub_1DD39565C(v34, v36, v44);

            *(v31 + 14) = v37;
            *(v31 + 22) = 2080;
            v41 = v49;
            v42 = v50;
            v38 = sub_1DD63FE38();
            v40 = sub_1DD39565C(v38, v39, v44);

            *(v31 + 24) = v40;
            _os_log_impl(&dword_1DD38D000, v29, v30, "cannot log key=%s value=%s in %s", v31, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v32, -1, -1);
            MEMORY[0x1E12B3DA0](v31, -1, -1);
          }

          else
          {

            sub_1DD5F1454(&v49);

            __swift_destroy_boxed_opaque_existential_1(&v46);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v22 = sub_1DD63F9F8();
    __swift_project_value_buffer(v22, qword_1EE16F068);

    v23 = sub_1DD63F9D8();
    v24 = sub_1DD640368();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v46 = v26;
      *v25 = 136315138;
      v27 = sub_1DD39565C(v6, v9, &v46);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_1DD38D000, v23, v24, "nil value for key=%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E12B3DA0](v26, -1, -1);
      MEMORY[0x1E12B3DA0](v25, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v45);

  return sub_1DD390754(&v41, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5EECD0(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  sub_1DD4DDC08(a2, &v48, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v8 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = v48;
  __swift_destroy_boxed_opaque_existential_1(&v49);
  sub_1DD4DDC08(a2, &v48, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&v49, v47);
  sub_1DD395720(v47, &v48);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    v10 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v48 = *a1;
    sub_1DD396778();

    *a1 = v48;
LABEL_10:
    v11 = v47;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  sub_1DD395720(v47, &v48);
  if (swift_dynamicCast())
  {
    v9 = v43;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v47, &v48);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v47, &v48);
  if (swift_dynamicCast())
  {
    v9 = v43;
    goto LABEL_6;
  }

  sub_1DD395720(v47, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v43, &v48);
    v13 = *(&v49 + 1);
    v14 = v50;
    __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
    (*(v14 + 8))(v13, v14);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    v17 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v43 = *a1;
    sub_1DD396778();

    *a1 = v43;
    __swift_destroy_boxed_opaque_existential_1(v47);
    v11 = &v48;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1DD390754(&v43, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v47, v46);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v43, &v48);
    v15 = *(&v49 + 1);
    v16 = v50;
    __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  sub_1DD390754(&v43, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v47, &v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v44 + 1))
  {
    v4 = &v48;
    sub_1DD390754(&v43, &qword_1ECCDB980, &unk_1DD643DC0);
    v18 = *a3;
    v51 = a3[1];
    v52[0] = v18;
    v48 = v18;
    v49 = v51;
    v50 = *(a3 + 4);
    sub_1DD406EC4(v52, &v43);
    sub_1DD406EC4(&v51, &v43);
    if (sub_1DD63FE38() == 7104878 && v19 == 0xE300000000000000)
    {
    }

    else
    {
      v21 = sub_1DD640CD8();

      if ((v21 & 1) == 0)
      {
        sub_1DD395720(v47, v46);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v43, &v48);
          __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v45 = 0;
        v43 = 0u;
        v44 = 0u;
        sub_1DD390754(&v43, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v28 = sub_1DD63F9F8();
          __swift_project_value_buffer(v28, qword_1EE16F068);
          sub_1DD395720(v47, &v43);
          sub_1DD406EC4(v52, &v48);
          sub_1DD406EC4(&v51, &v48);

          v29 = sub_1DD63F9D8();
          v30 = sub_1DD640378();

          sub_1DD406F20(v52);
          sub_1DD406F20(&v51);
          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v42 = v32;
            *v31 = 136315650;
            v33 = sub_1DD39565C(v3, v8, &v42);

            *(v31 + 4) = v33;
            *(v31 + 12) = 2080;
            sub_1DD395720(&v43, &v48);
            v34 = sub_1DD63FE38();
            v36 = v35;
            __swift_destroy_boxed_opaque_existential_1(&v43);
            v37 = sub_1DD39565C(v34, v36, &v42);

            *(v31 + 14) = v37;
            *(v31 + 22) = 2080;
            v38 = a3[1];
            v48 = *a3;
            v4[1] = v38;
            v50 = *(a3 + 4);
            sub_1DD406EC4(v52, v46);
            sub_1DD406EC4(&v51, v46);
            v39 = sub_1DD63FE38();
            v41 = sub_1DD39565C(v39, v40, &v42);

            *(v31 + 24) = v41;
            _os_log_impl(&dword_1DD38D000, v29, v30, "cannot log key=%s value=%s in %s", v31, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v32, -1, -1);
            MEMORY[0x1E12B3DA0](v31, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v43);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v22 = sub_1DD63F9F8();
    __swift_project_value_buffer(v22, qword_1EE16F068);

    v23 = sub_1DD63F9D8();
    v24 = sub_1DD640368();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v48 = v26;
      *v25 = 136315138;
      v27 = sub_1DD39565C(v3, v8, &v48);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_1DD38D000, v23, v24, "nil value for key=%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E12B3DA0](v26, -1, -1);
      MEMORY[0x1E12B3DA0](v25, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v47);

  return sub_1DD390754(&v43, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5EF5D0(uint64_t *a1, uint64_t a2, const void *a3)
{
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v7 = *&__dst[8];
  if (!*&__dst[8])
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = *__dst;
  __swift_destroy_boxed_opaque_existential_1(&__dst[16]);
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&__dst[16], v44);
  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    v9 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *__dst = *a1;
    sub_1DD396778();

    *a1 = *__dst;
LABEL_10:
    v10 = v44;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    v8 = v40;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    v8 = v40;
    goto LABEL_6;
  }

  sub_1DD395720(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v40, __dst);
    v12 = *&__dst[24];
    v13 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    (*(v13 + 8))(v12, v13);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    v16 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v40 = *a1;
    sub_1DD396778();

    *a1 = v40;
    __swift_destroy_boxed_opaque_existential_1(v44);
    v10 = __dst;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_1DD390754(&v40, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v40, __dst);
    v14 = *&__dst[24];
    v15 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_1DD390754(&v40, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v44, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v41 + 1))
  {
    sub_1DD390754(&v40, &qword_1ECCDB980, &unk_1DD643DC0);
    memcpy(__dst, a3, sizeof(__dst));
    if (sub_1DD63FE38() == 7104878 && v17 == 0xE300000000000000)
    {
    }

    else
    {
      v19 = sub_1DD640CD8();

      if ((v19 & 1) == 0)
      {
        sub_1DD395720(v44, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v40, __dst);
          __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v42 = 0;
        v40 = 0u;
        v41 = 0u;
        sub_1DD390754(&v40, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v26 = sub_1DD63F9F8();
          __swift_project_value_buffer(v26, qword_1EE16F068);
          sub_1DD395720(v44, &v40);

          v27 = sub_1DD63F9D8();
          v28 = sub_1DD640378();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v43[0] = v30;
            *v29 = 136315650;
            v31 = sub_1DD39565C(v3, v7, v43);

            *(v29 + 4) = v31;
            *(v29 + 12) = 2080;
            sub_1DD395720(&v40, __dst);
            v32 = sub_1DD63FE38();
            v34 = v33;
            __swift_destroy_boxed_opaque_existential_1(&v40);
            v35 = sub_1DD39565C(v32, v34, v43);

            *(v29 + 14) = v35;
            *(v29 + 22) = 2080;
            memcpy(__dst, a3, sizeof(__dst));
            v36 = sub_1DD63FE38();
            v38 = sub_1DD39565C(v36, v37, v43);

            *(v29 + 24) = v38;
            _os_log_impl(&dword_1DD38D000, v27, v28, "cannot log key=%s value=%s in %s", v29, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v30, -1, -1);
            MEMORY[0x1E12B3DA0](v29, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v40);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);

    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640368();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *__dst = v24;
      *v23 = 136315138;
      v25 = sub_1DD39565C(v3, v7, __dst);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1DD38D000, v21, v22, "nil value for key=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v44);

  return sub_1DD390754(&v40, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5EFE64(uint64_t *a1, uint64_t a2, const void *a3)
{
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v7 = *&__dst[8];
  if (!*&__dst[8])
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = *__dst;
  __swift_destroy_boxed_opaque_existential_1(&__dst[16]);
  sub_1DD4DDC08(a2, __dst, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(&__dst[16], v44);
  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    v9 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *__dst = *a1;
    sub_1DD396778();

    *a1 = *__dst;
LABEL_10:
    v10 = v44;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    v8 = v40;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v44, __dst);
  if (swift_dynamicCast())
  {
    v8 = v40;
    goto LABEL_6;
  }

  sub_1DD395720(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v40, __dst);
    v12 = *&__dst[24];
    v13 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    (*(v13 + 8))(v12, v13);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    v16 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v40 = *a1;
    sub_1DD396778();

    *a1 = v40;
    __swift_destroy_boxed_opaque_existential_1(v44);
    v10 = __dst;
    return __swift_destroy_boxed_opaque_existential_1(v10);
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_1DD390754(&v40, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v44, v43);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v40, __dst);
    v14 = *&__dst[24];
    v15 = *&__dst[32];
    __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  sub_1DD390754(&v40, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v44, __dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v41 + 1))
  {
    sub_1DD390754(&v40, &qword_1ECCDB980, &unk_1DD643DC0);
    memcpy(__dst, a3, sizeof(__dst));
    if (sub_1DD63FE38() == 7104878 && v17 == 0xE300000000000000)
    {
    }

    else
    {
      v19 = sub_1DD640CD8();

      if ((v19 & 1) == 0)
      {
        sub_1DD395720(v44, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v40, __dst);
          __swift_project_boxed_opaque_existential_1(__dst, *&__dst[24]);
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v42 = 0;
        v40 = 0u;
        v41 = 0u;
        sub_1DD390754(&v40, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v26 = sub_1DD63F9F8();
          __swift_project_value_buffer(v26, qword_1EE16F068);
          sub_1DD395720(v44, &v40);

          v27 = sub_1DD63F9D8();
          v28 = sub_1DD640378();

          if (os_log_type_enabled(v27, v28))
          {
            v29 = swift_slowAlloc();
            v30 = swift_slowAlloc();
            v43[0] = v30;
            *v29 = 136315650;
            v31 = sub_1DD39565C(v3, v7, v43);

            *(v29 + 4) = v31;
            *(v29 + 12) = 2080;
            sub_1DD395720(&v40, __dst);
            v32 = sub_1DD63FE38();
            v34 = v33;
            __swift_destroy_boxed_opaque_existential_1(&v40);
            v35 = sub_1DD39565C(v32, v34, v43);

            *(v29 + 14) = v35;
            *(v29 + 22) = 2080;
            memcpy(__dst, a3, sizeof(__dst));
            v36 = sub_1DD63FE38();
            v38 = sub_1DD39565C(v36, v37, v43);

            *(v29 + 24) = v38;
            _os_log_impl(&dword_1DD38D000, v27, v28, "cannot log key=%s value=%s in %s", v29, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v30, -1, -1);
            MEMORY[0x1E12B3DA0](v29, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v40);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v20 = sub_1DD63F9F8();
    __swift_project_value_buffer(v20, qword_1EE16F068);

    v21 = sub_1DD63F9D8();
    v22 = sub_1DD640368();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *__dst = v24;
      *v23 = 136315138;
      v25 = sub_1DD39565C(v3, v7, __dst);

      *(v23 + 4) = v25;
      _os_log_impl(&dword_1DD38D000, v21, v22, "nil value for key=%s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
      MEMORY[0x1E12B3DA0](v23, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v44);

  return sub_1DD390754(&v40, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5F06F8(uint64_t *a1, uint64_t a2, __int128 *a3)
{
  sub_1DD4DDC08(a2, &v47, &qword_1ECCDCFE0, &unk_1DD64CDB0);
  v8 = *(&v47 + 1);
  if (!*(&v47 + 1))
  {
    __break(1u);
    goto LABEL_41;
  }

  v3 = v47;
  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_1DD4DDC08(a2, &v47, &qword_1ECCDCFE0, &unk_1DD64CDB0);

  sub_1DD400AE4(v48, v46);
  sub_1DD395720(v46, &v47);
  if (swift_dynamicCast())
  {
    sub_1DD63FDA8();

LABEL_9:
    v10 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v47 = *a1;
    sub_1DD396778();

    *a1 = v47;
LABEL_10:
    v11 = v46;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  sub_1DD395720(v46, &v47);
  if (swift_dynamicCast())
  {
    v9 = v42;
LABEL_6:
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_9;
  }

  sub_1DD395720(v46, &v47);
  if (swift_dynamicCast())
  {
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    goto LABEL_9;
  }

  sub_1DD395720(v46, &v47);
  if (swift_dynamicCast())
  {
    v9 = v42;
    goto LABEL_6;
  }

  sub_1DD395720(v46, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC38, &qword_1DD663668);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v42, &v47);
    v13 = *&v48[8];
    v14 = *&v48[16];
    __swift_project_boxed_opaque_existential_1(&v47, *&v48[8]);
    (*(v14 + 8))(v13, v14);
LABEL_16:
    sub_1DD63FDA8();

LABEL_19:
    v17 = *a1;
    swift_isUniquelyReferenced_nonNull_native();
    *&v42 = *a1;
    sub_1DD396778();

    *a1 = v42;
    __swift_destroy_boxed_opaque_existential_1(v46);
    v11 = &v47;
    return __swift_destroy_boxed_opaque_existential_1(v11);
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  sub_1DD390754(&v42, &qword_1ECCDFC40, &qword_1DD663670);
  sub_1DD395720(v46, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC48, &qword_1DD663678);
  if (swift_dynamicCast())
  {
    sub_1DD3AA4A8(&v42, &v47);
    v15 = *&v48[8];
    v16 = *&v48[16];
    __swift_project_boxed_opaque_existential_1(&v47, *&v48[8]);
    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    goto LABEL_19;
  }

  v44 = 0;
  v42 = 0u;
  v43 = 0u;
  sub_1DD390754(&v42, &qword_1ECCDFC50, &unk_1DD663680);
  sub_1DD395720(v46, &v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB980, &unk_1DD643DC0);
  swift_dynamicCast();
  if (*(&v43 + 1))
  {
    v4 = &v47;
    sub_1DD390754(&v42, &qword_1ECCDB980, &unk_1DD643DC0);
    v18 = a3[1];
    v47 = *a3;
    *v48 = v18;
    *&v48[10] = *(a3 + 26);
    if (sub_1DD63FE38() == 7104878 && v19 == 0xE300000000000000)
    {
    }

    else
    {
      v21 = sub_1DD640CD8();

      if ((v21 & 1) == 0)
      {
        sub_1DD395720(v46, v45);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC58, &qword_1DD663690);
        if (swift_dynamicCast())
        {
          sub_1DD3AA4A8(&v42, &v47);
          __swift_project_boxed_opaque_existential_1(&v47, *&v48[8]);
          sub_1DD640CB8();
          goto LABEL_16;
        }

        v44 = 0;
        v42 = 0u;
        v43 = 0u;
        sub_1DD390754(&v42, &qword_1ECCDFC60, &qword_1DD663698);
        if (qword_1EE165FB0 == -1)
        {
LABEL_36:
          v28 = sub_1DD63F9F8();
          __swift_project_value_buffer(v28, qword_1EE16F068);
          sub_1DD395720(v46, &v42);

          v29 = sub_1DD63F9D8();
          v30 = sub_1DD640378();

          if (os_log_type_enabled(v29, v30))
          {
            v31 = swift_slowAlloc();
            v32 = swift_slowAlloc();
            v45[0] = v32;
            *v31 = 136315650;
            v33 = sub_1DD39565C(v3, v8, v45);

            *(v31 + 4) = v33;
            *(v31 + 12) = 2080;
            sub_1DD395720(&v42, &v47);
            v34 = sub_1DD63FE38();
            v36 = v35;
            __swift_destroy_boxed_opaque_existential_1(&v42);
            v37 = sub_1DD39565C(v34, v36, v45);

            *(v31 + 14) = v37;
            *(v31 + 22) = 2080;
            v38 = a3[1];
            v47 = *a3;
            *v48 = v38;
            *(v4 + 26) = *(a3 + 26);
            v39 = sub_1DD63FE38();
            v41 = sub_1DD39565C(v39, v40, v45);

            *(v31 + 24) = v41;
            _os_log_impl(&dword_1DD38D000, v29, v30, "cannot log key=%s value=%s in %s", v31, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1E12B3DA0](v32, -1, -1);
            MEMORY[0x1E12B3DA0](v31, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(&v42);
          }

          sub_1DD5F11F0();
          swift_allocError();
          swift_willThrow();
          goto LABEL_10;
        }

LABEL_41:
        swift_once();
        goto LABEL_36;
      }
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v22 = sub_1DD63F9F8();
    __swift_project_value_buffer(v22, qword_1EE16F068);

    v23 = sub_1DD63F9D8();
    v24 = sub_1DD640368();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v47 = v26;
      *v25 = 136315138;
      v27 = sub_1DD39565C(v3, v8, &v47);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_1DD38D000, v23, v24, "nil value for key=%s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E12B3DA0](v26, -1, -1);
      MEMORY[0x1E12B3DA0](v25, -1, -1);
    }

    else
    {
    }

    goto LABEL_10;
  }

  __swift_destroy_boxed_opaque_existential_1(v46);

  return sub_1DD390754(&v42, &qword_1ECCDB980, &unk_1DD643DC0);
}

uint64_t sub_1DD5F0F94(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 1))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFFFFFE | *a3 & 1;
  if (*(a3 + 2))
  {
    v5 = 0x10000;
  }

  else
  {
    v5 = 0;
  }

  if (*(a3 + 25))
  {
    v6 = 256;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 & 0xFFFFFFFE | *(a3 + 24) & 1;
  if (*(a3 + 26))
  {
    v8 = 0x10000;
  }

  else
  {
    v8 = 0;
  }

  return sub_1DD5EC144(a1, a2, v4 | v5, *(a3 + 8), *(a3 + 16), v7 | v8);
}

uint64_t sub_1DD5F1000(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v3;
  v6 = *(a3 + 32);
  return sub_1DD5ECA0C(a1, a2, v5);
}

uint64_t sub_1DD5F10EC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a3;
  v4 = 256;
  if ((*(a3 + 25) & 1) == 0)
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFFFFFFFFFFELL | *(a3 + 24) & 1;
  v6 = 0x10000;
  if ((*(a3 + 26) & 1) == 0)
  {
    v6 = 0;
  }

  v7 = 0x1000000;
  if ((*(a3 + 27) & 1) == 0)
  {
    v7 = 0;
  }

  v8 = v5 | v6 | v7;
  v9 = 0x100000000;
  if ((*(a3 + 28) & 1) == 0)
  {
    v9 = 0;
  }

  v10 = 0x10000000000;
  if ((*(a3 + 29) & 1) == 0)
  {
    v10 = 0;
  }

  v11 = 0x1000000000000;
  if ((*(a3 + 30) & 1) == 0)
  {
    v11 = 0;
  }

  v12 = v9 | v10;
  v13 = 0x100000000000000;
  if ((*(a3 + 31) & 1) == 0)
  {
    v13 = 0;
  }

  return sub_1DD5EE428(a1, a2, *a3, *(a3 + 8), *(a3 + 16), v8 | v12 | v11 | v13);
}

uint64_t sub_1DD5F11A0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v5[0] = *a3;
  v5[1] = v3;
  v6 = *(a3 + 32);
  return sub_1DD5EECD0(a1, a2, v5);
}

unint64_t sub_1DD5F11F0()
{
  result = qword_1ECCDFC68;
  if (!qword_1ECCDFC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFC68);
  }

  return result;
}

uint64_t sub_1DD5F1598(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
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

uint64_t sub_1DD5F15D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_52()
{
}

uint64_t OUTLINED_FUNCTION_12_47()
{
  v2 = *(v0 - 264);
  v3 = *(v0 - 360);

  return sub_1DD5EAD78();
}

uint64_t OUTLINED_FUNCTION_13_48()
{

  return sub_1DD640EA8();
}

void OUTLINED_FUNCTION_14_45()
{
  v2 = *(v0 + 16) + 1;

  sub_1DD42B4F8();
}

uint64_t OUTLINED_FUNCTION_24_25(uint64_t a1)
{

  return sub_1DD46D298(a1, v1);
}

uint64_t OUTLINED_FUNCTION_26_28()
{
  v3 = *(v0 - 256);
  v2 = *(v0 - 248);
  v4 = *(v0 - 360);

  return sub_1DD5EAD78();
}

uint64_t sub_1DD5F1704()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = xmmword_1DD644500;
  *(inited + 48) = 0;
  type metadata accessor for DateTime.Date();
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(1, 12);
  type metadata accessor for DateTime();
  swift_allocObject();
  v1 = OUTLINED_FUNCTION_34();
  v2 = DateTime.init(withDate:)(v1);
  swift_allocObject();
  DateTime.Date.init(withDay:month:)(1, 3);
  OUTLINED_FUNCTION_1_11();
  v3 = OUTLINED_FUNCTION_34();
  v4 = DateTime.init(withDate:)(v3);
  type metadata accessor for DateTime.DateTimeRange();
  swift_allocObject();
  DateTime.DateTimeRange.init(withStartDateTime:endDateTime:)(v2, v4);
  OUTLINED_FUNCTION_1_11();
  v5 = OUTLINED_FUNCTION_34();
  *(inited + 56) = DateTime.init(occurringIn:)(v5);
  *(inited + 64) = xmmword_1DD644510;
  *(inited + 80) = 1;
  type metadata accessor for DateTime.Date.Holiday();
  v6 = swift_allocObject();
  OUTLINED_FUNCTION_5_2(v6, 0x80000001DD668D30, 0xD000000000000011, 0x80000001DD66A480, v7, v8, v9, v10, v28, *v30, *&v30[4], v30[6], 2);
  OUTLINED_FUNCTION_2_10();
  v11 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v11);
  OUTLINED_FUNCTION_1_11();
  v12 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v12);
  OUTLINED_FUNCTION_3_15();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x757165686372616DLL, 0xEC000000786F6E69, 0x714520686372614DLL, 0xED0000786F6E6975, &v34);
  OUTLINED_FUNCTION_2_10();
  v13 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v13);
  OUTLINED_FUNCTION_1_11();
  v14 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v14);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v15 = OUTLINED_FUNCTION_34();
  v16 = DateTime.init(occurringIn:)(v15);
  *(inited + 96) = 0;
  *(inited + 104) = 0;
  *(inited + 88) = v16;
  *(inited + 112) = 1;
  OUTLINED_FUNCTION_3_15();
  DateTime.Date.Holiday.init(with:name:calendarSystem:)(0x736C6F73656E756ALL, 0xEC00000065636974, 0x6C6F5320656E754ALL, 0xED00006563697473, &v34);
  OUTLINED_FUNCTION_2_10();
  v17 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v17);
  OUTLINED_FUNCTION_1_11();
  v18 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v18);
  v19 = OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_5_2(v19, 0x80000001DD668D10, 0xD000000000000011, 0x80000001DD66A460, v20, v21, v22, v23, v29, v31, v32, v33, v34);
  OUTLINED_FUNCTION_2_10();
  v24 = OUTLINED_FUNCTION_34();
  DateTime.Date.init(withHoliday:)(v24);
  OUTLINED_FUNCTION_1_11();
  v25 = OUTLINED_FUNCTION_34();
  DateTime.init(withDate:)(v25);
  OUTLINED_FUNCTION_4_9();
  OUTLINED_FUNCTION_6_8();
  OUTLINED_FUNCTION_1_11();
  v26 = OUTLINED_FUNCTION_34();
  *(inited + 120) = DateTime.init(occurringIn:)(v26);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD5F1A20()
{
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  sub_1DD3B7F10();
  v1 = sub_1DD640638();
  v2 = sub_1DD43C2BC(v1);
  v4 = v3;

  if (v4)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

uint64_t type metadata accessor for TaskMetadata()
{
  result = qword_1EE163270;
  if (!qword_1EE163270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD5F1B20()
{
  result = sub_1DD63D078();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1DD5F1B9C(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1DD640CD8() & 1) == 0)
  {
    return 0;
  }

  v6 = *(type metadata accessor for TaskMetadata() + 24);

  return sub_1DD63D028();
}

_BYTE *storeEnumTagSinglePayload for StreamIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5F1D1C()
{
  result = qword_1ECCDFC70;
  if (!qword_1ECCDFC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFC70);
  }

  return result;
}

uint64_t sub_1DD5F1D70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDCA48, &qword_1DD649EF0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1DD6444F0;
  *(v0 + 56) = &type metadata for RemindersLocationTaskSuccessEvaluable;
  *(v0 + 64) = &off_1F58BEC00;
  OUTLINED_FUNCTION_15_51();
  v1 = swift_allocObject();
  *(v0 + 32) = v1;
  strcpy((v1 + 16), "AddTasksIntent");
  *(v1 + 31) = -18;
  *(v1 + 32) = 0x6E6F697461636F6CLL;
  *(v1 + 40) = 0xE800000000000000;
  *(v1 + 48) = 256;
  *(v0 + 96) = &type metadata for RemindersDateTimeTaskSuccessEvaluable;
  *(v0 + 104) = &off_1F58BEB48;
  OUTLINED_FUNCTION_15_51();
  v2 = swift_allocObject();
  *(v0 + 72) = v2;
  strcpy((v2 + 16), "AddTasksIntent");
  *(v2 + 31) = -18;
  *(v2 + 32) = 0x656D695465746164;
  *(v2 + 40) = 0xE800000000000000;
  *(v2 + 48) = 256;
  *(v0 + 136) = &type metadata for AlarmsDateTimeTaskSuccessEvaluable;
  *(v0 + 144) = &off_1F58B02C0;
  OUTLINED_FUNCTION_15_51();
  result = swift_allocObject();
  *(v0 + 112) = result;
  *(result + 16) = 0xD000000000000011;
  *(result + 24) = 0x80000001DD674970;
  *(result + 32) = 0x656D695465746164;
  *(result + 40) = 0xE800000000000000;
  *(result + 48) = 257;
  qword_1EE16EF40 = v0;
  return result;
}

uint64_t sub_1DD5F1ED4(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for TaskMetadata();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  OUTLINED_FUNCTION_15_25();
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v7 = sub_1DD63F9F8();
  __swift_project_value_buffer(v7, qword_1EE16F0C8);
  sub_1DD5F3734(a2, v2, type metadata accessor for TaskMetadata);
  sub_1DD3C2388(a1, &v45);
  v8 = sub_1DD63F9D8();
  v9 = sub_1DD640368();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v10 = 136315394;
    v43 = *(v2 + 16);
    v44 = *(v2 + 24);
    sub_1DD3B7F10();
    v11 = sub_1DD640638();
    v12 = sub_1DD43C2BC(v11);
    v14 = v13;

    if (v14)
    {
      v15 = v14;
    }

    else
    {
      v12 = 0;
      v15 = 0xE000000000000000;
    }

    sub_1DD5F3794(v2, type metadata accessor for TaskMetadata);
    v16 = sub_1DD39565C(v12, v15, &v49);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    v17 = v48;
    __swift_project_boxed_opaque_existential_1(&v45, v47);
    v18 = OUTLINED_FUNCTION_9_61(v17);
    v20 = v19(v18, v17);
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_1(&v45);
    v23 = sub_1DD39565C(v20, v22, &v49);

    *(v10 + 14) = v23;
    _os_log_impl(&dword_1DD38D000, v8, v9, "taskMetadata.typeRoot = %s, evaluable.taskType: %s", v10, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {

    sub_1DD5F3794(v2, type metadata accessor for TaskMetadata);
    __swift_destroy_boxed_opaque_existential_1(&v45);
  }

  v24 = sub_1DD5F1A20();
  v26 = v25;
  v27 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v28 = OUTLINED_FUNCTION_9_61(v27);
  if (v24 == v29(v28, v27) && v26 == v30)
  {
    goto LABEL_20;
  }

  v32 = sub_1DD640CD8();

  if ((v32 & 1) == 0)
  {
    v34 = sub_1DD5F1A20();
    v36 = v35;
    v37 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v38 = OUTLINED_FUNCTION_9_61(v37);
    v40 = v39(v38, v37);
    v45 = 20041;
    v46 = 0xE200000000000000;
    MEMORY[0x1E12B2260](v40);

    if (v34 != v45 || v36 != v46)
    {
      v33 = sub_1DD640CD8();
LABEL_21:

      return v33 & 1;
    }

LABEL_20:
    v33 = 1;
    goto LABEL_21;
  }

  v33 = 1;
  return v33 & 1;
}

uint64_t sub_1DD5F22C0(uint64_t (*a1)(void, void, unint64_t), uint64_t a2)
{
  v92 = a1;
  v93 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC78, &qword_1DD6637E0);
  v3 = OUTLINED_FUNCTION_0(v91);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  OUTLINED_FUNCTION_25(v78 - v8);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC80, &qword_1DD6637E8);
  v9 = OUTLINED_FUNCTION_0(v95);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  OUTLINED_FUNCTION_25(v78 - v14);
  v15 = type metadata accessor for TaskSuccessEvaluator();
  v16 = OUTLINED_FUNCTION_0(v15);
  v88 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_40();
  v86 = v20;
  v87 = v21;
  v85 = sub_1DD63D078();
  v22 = OUTLINED_FUNCTION_0(v85);
  v94 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_18_40();
  v83 = v26;
  v84 = v27;
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_25(v78 - v8);
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_25(v78 - v14);
  v89 = v15;
  v90 = v2;
  v30 = *(v2 + *(v15 + 20));
  v31 = *(v30 + 16);
  if (v31 || (result = v92(MEMORY[0x1E69E7CC0], 0, 0xE000000000000000), (v31 = *(v30 + 16)) != 0))
  {
    v33 = v30 + 32;
    v82 = v94 + 16;
    v81 = v94 + 32;
    v80 = (v5 + 8);
    v79 = (v11 + 8);
    do
    {
      sub_1DD3C2388(v33, v96);
      v34 = v98;
      __swift_project_boxed_opaque_existential_1(v96, v97);
      v35 = *(v34 + 24);
      v36 = OUTLINED_FUNCTION_10_55();
      v38 = v37(v36);
      v39 = v98;
      if (v38)
      {
        v40 = *(v89 + 28);
        __swift_project_boxed_opaque_existential_1(v96, v97);
        v41 = *(v39 + 16);
        v42 = OUTLINED_FUNCTION_10_55();
        v44 = v43(v42);
        v46 = *(OUTLINED_FUNCTION_14_46(v44, v45) + 24);
        v47 = v90;
        sub_1DD63CF48();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC88, &unk_1DD6637F0);
        OUTLINED_FUNCTION_6_76();
        sub_1DD3FAC5C(&qword_1ECCDFC90, &qword_1ECCDFC88, &unk_1DD6637F0);
        v48 = v47 + v40;
        v49 = v78[3];
        sub_1DD63DA38();
        v50 = v94;
        v51 = v47 + v46;
        v52 = v83;
        v53 = v85;
        (*(v94 + 16))(v83, v51, v85);
        OUTLINED_FUNCTION_1_127();
        v54 = v47;
        v55 = v86;
        sub_1DD5F3734(v54, v86, v56);
        OUTLINED_FUNCTION_5_88();
        v57 = swift_allocObject();
        (*(v50 + 32))(v57 + v48, v52, v53);
        sub_1DD5F2DEC(v55, v57 + v40);
        OUTLINED_FUNCTION_8_72();
        sub_1DD3FAC5C(&qword_1ECCDFCA0, &qword_1ECCDFC80, &qword_1DD6637E8);
        OUTLINED_FUNCTION_19_38(&v100);
        sub_1DD63D4C8();

        *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
        v58 = swift_allocObject();
        OUTLINED_FUNCTION_3_96(v58);
        sub_1DD3FAC5C(&qword_1ECCDFCA8, &qword_1ECCDFC78, &qword_1DD6637E0);
        swift_retain_n();

        v60 = OUTLINED_FUNCTION_11_53(sub_1DD5F3284, v59, sub_1DD5F3288);
        v61 = v49;
      }

      else
      {
        v62 = *(v89 + 24);
        __swift_project_boxed_opaque_existential_1(v96, v97);
        v63 = *(v39 + 16);
        v64 = OUTLINED_FUNCTION_10_55();
        v66 = v65(v64);
        v40 = *(OUTLINED_FUNCTION_14_46(v66, v67) + 24);
        v68 = v90;
        sub_1DD63CF48();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
        OUTLINED_FUNCTION_6_76();
        sub_1DD3FAC5C(&qword_1EE1637B8, &qword_1ECCDFC98, &unk_1DD6639C0);
        v69 = v68 + v62;
        v61 = v78[1];
        sub_1DD63DA38();
        v70 = v94;
        v55 = v83;
        v71 = v85;
        (*(v94 + 16))(v83, v68 + v40, v85);
        OUTLINED_FUNCTION_1_127();
        v72 = v68;
        v73 = v86;
        sub_1DD5F3734(v72, v86, v74);
        OUTLINED_FUNCTION_5_88();
        v75 = swift_allocObject();
        (*(v70 + 32))(v75 + v69, v55, v71);
        sub_1DD5F2DEC(v73, v75 + v40);
        OUTLINED_FUNCTION_8_72();
        sub_1DD3FAC5C(&qword_1EE1637C8, &qword_1ECCDFC80, &qword_1DD6637E8);
        OUTLINED_FUNCTION_19_38(&v99);
        sub_1DD63D4C8();

        *(swift_allocObject() + 16) = MEMORY[0x1E69E7CC0];
        v76 = swift_allocObject();
        OUTLINED_FUNCTION_3_96(v76);
        sub_1DD3FAC5C(&unk_1EE1637D0, &qword_1ECCDFC78, &qword_1DD6637E0);
        swift_retain_n();

        v60 = OUTLINED_FUNCTION_11_53(sub_1DD5F3BF0, v77, sub_1DD5F3BF4);
      }

      (*v80)(v55, v40);
      (*v79)(v61, v95);

      result = __swift_destroy_boxed_opaque_existential_1(v96);
      v33 += 40;
      --v31;
    }

    while (v31);
  }

  return result;
}

uint64_t type metadata accessor for TaskSuccessEvaluator()
{
  result = qword_1EE161D50;
  if (!qword_1EE161D50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD5F2A88(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = 0;
  v8 = *(v5 + *(type metadata accessor for TaskSuccessEvaluator() + 20));
  v9 = *(v8 + 16);
  result = v8 + 32;
  v35 = v9;
  v36 = a4;
  while (1)
  {
    if (v9 == v7)
    {
      sub_1DD5F36E0();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
      return v4;
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    v37 = result;
    sub_1DD3C2388(result, &v42);
    if (qword_1EE166510 != -1)
    {
      OUTLINED_FUNCTION_0_17();
      swift_once();
    }

    v11 = sub_1DD63F9F8();
    __swift_project_value_buffer(v11, qword_1EE16F0C8);
    sub_1DD3C2388(&v42, v39);

    v12 = sub_1DD63F9D8();
    v13 = sub_1DD640368();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v14 = 136315394;
      v15 = v8;
      v16 = v7;
      v18 = v40;
      v17 = v41;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      v19 = v18;
      v8 = v15;
      v20 = (*(v17 + 16))(v19, v17);
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_1(v39);
      v23 = sub_1DD39565C(v20, v22, &v49);
      v7 = v16;
      a4 = v36;

      *(v14 + 4) = v23;
      *(v14 + 12) = 2080;
      v9 = v35;
      *(v14 + 14) = sub_1DD39565C(a3, v36, &v49);
      _os_log_impl(&dword_1DD38D000, v12, v13, "[postSiriActivityType] evaluable.entityType = %s, entityType: %s", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    v24 = v43;
    v25 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    v26 = (*(v25 + 16))(v24, v25);
    v4 = v27;
    if (v26 == a3 && v27 == a4)
    {

LABEL_17:
      sub_1DD3FAED4(&v42, v45);
      sub_1DD3FAED4(v45, v46);
      v31 = v47;
      v32 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v4 = (*(v32 + 40))(a1, a2, v31, v32);
      __swift_destroy_boxed_opaque_existential_1(v46);
      return v4;
    }

    v29 = sub_1DD640CD8();

    if (v29)
    {
      goto LABEL_17;
    }

    __swift_destroy_boxed_opaque_existential_1(&v42);
    result = v37 + 40;
    ++v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD5F2DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskSuccessEvaluator();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1DD5F2E54(void *a1, uint64_t a2, uint64_t a3)
{
  v53 = a1;
  v51 = type metadata accessor for TaskSuccessEvaluator();
  v6 = OUTLINED_FUNCTION_7(v51);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_15_25();
  v9 = sub_1DD63D078();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v55 = &v48 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  if (qword_1EE166510 != -1)
  {
    OUTLINED_FUNCTION_0_17();
    swift_once();
  }

  v22 = sub_1DD63F9F8();
  __swift_project_value_buffer(v22, qword_1EE16F0C8);
  v23 = *(v12 + 16);
  v23(v21, a2, v9);
  v54 = a2;
  v23(v55, a2, v9);
  OUTLINED_FUNCTION_1_127();
  v52 = a3;
  sub_1DD5F3734(a3, v3, v24);
  v25 = v53;
  v26 = sub_1DD63F9D8();
  v27 = sub_1DD640368();

  v28 = &selRef_setIsFamilyNameMatch_;
  if (os_log_type_enabled(v26, v27))
  {
    v29 = swift_slowAlloc();
    v53 = v25;
    v30 = v29;
    *v29 = 134218496;
    sub_1DD63CF48();
    v32 = v31;
    v33 = *(v12 + 8);
    v49 = v3;
    v50 = v27;
    v33(v21, v9);
    *(v30 + 1) = v32;
    *(v30 + 6) = 2048;
    [v53 timestamp];
    *(v30 + 14) = v34;
    *(v30 + 11) = 2048;
    v35 = v51;
    v36 = *(v3 + *(v51 + 32));
    v37 = v55;
    sub_1DD63CF98();
    sub_1DD63CF48();
    v28 = &selRef_setIsFamilyNameMatch_;
    v39 = v38;
    v33(v16, v9);
    OUTLINED_FUNCTION_7_71();
    sub_1DD5F3794(v49, v40);
    v33(v37, v9);
    *(v30 + 3) = v39;
    _os_log_impl(&dword_1DD38D000, v26, v50, "lastCachedAt: %f biomeEvent.timestamp: %f, timeLimit: %f", v30, 0x20u);
    v25 = v53;
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  else
  {

    OUTLINED_FUNCTION_7_71();
    sub_1DD5F3794(v3, v41);
    v33 = *(v12 + 8);
    v33(v55, v9);
    v33(v21, v9);
    v35 = v51;
  }

  [v25 v28[120]];
  v43 = v42;
  v44 = *(v52 + *(v35 + 32));
  sub_1DD63CF98();
  sub_1DD63CF48();
  v46 = v45;
  v33(v16, v9);
  return v43 <= v46;
}

uint64_t sub_1DD5F3200(uint64_t a1, void (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  v10 = *(a4 + 16);

  a2(v11, a5, a6);
}

uint64_t objectdestroyTm_1()
{
  v1 = sub_1DD63D078();
  OUTLINED_FUNCTION_0(v1);
  v3 = v2;
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = (type metadata accessor for TaskSuccessEvaluator() - 8);
  v9 = *(*v8 + 80);
  v10 = (v5 + v7 + v9) & ~v9;
  v11 = *(*v8 + 64);
  v12 = v4 | v9;
  v13 = *(v3 + 8);
  v13(v0 + v5, v1);
  v14 = *(v0 + v10 + 8);

  v15 = *(v0 + v10 + 24);

  v16 = type metadata accessor for TaskMetadata();
  v13(v0 + v10 + *(v16 + 24), v1);
  v17 = *(v0 + v10 + v8[7]);

  v18 = v8[8];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
  OUTLINED_FUNCTION_7(v19);
  (*(v20 + 8))(v0 + v10 + v18);
  v21 = v8[9];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC88, &unk_1DD6637F0);
  OUTLINED_FUNCTION_7(v22);
  (*(v23 + 8))(v0 + v10 + v21);

  return MEMORY[0x1EEE6BDD0](v0, v10 + v11, v12 | 7);
}

BOOL sub_1DD5F3484(void *a1)
{
  v3 = *(sub_1DD63D078() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for TaskSuccessEvaluator() - 8);
  return sub_1DD5F2E54(a1, v1 + v4, v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)));
}

uint64_t objectdestroy_5Tm()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void sub_1DD5F35A8(void *a1, uint64_t a2)
{
  v3 = [a1 eventBody];
  if (v3)
  {
    v13 = v3;
    v4 = [v3 serialize];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1DD63CF28();
      v8 = v7;

      sub_1DD3D01B4(v6, v8);
      v9 = [v13 dataVersion];
      swift_beginAccess();
      sub_1DD3BE06C();
      v10 = *(*(a2 + 16) + 16);
      sub_1DD3BE22C(v10);
      v11 = *(a2 + 16);
      *(v11 + 16) = v10 + 1;
      v12 = v11 + 24 * v10;
      *(v12 + 32) = v6;
      *(v12 + 40) = v8;
      *(v12 + 48) = v9;
      *(a2 + 16) = v11;
      swift_endAccess();

      sub_1DD3AD790(v6, v8);
    }

    else
    {
    }
  }
}

unint64_t sub_1DD5F36E0()
{
  result = qword_1ECCDFCB0;
  if (!qword_1ECCDFCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFCB0);
  }

  return result;
}

uint64_t sub_1DD5F3734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5F3794(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t objectdestroy_16Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  OUTLINED_FUNCTION_15_51();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

_BYTE *storeEnumTagSinglePayload for TaskSuccessEvaluationError(_BYTE *result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy20_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DD5F3918(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 20))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1DD5F3964(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 20) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 20) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

void sub_1DD5F39EC()
{
  type metadata accessor for TaskMetadata();
  if (v0 <= 0x3F)
  {
    sub_1DD5F3AD8();
    if (v1 <= 0x3F)
    {
      sub_1DD5F3B3C(319, &qword_1EE1637B0, &qword_1EE160230, 0x1E698F2B0);
      if (v2 <= 0x3F)
      {
        sub_1DD5F3B3C(319, &qword_1EE1637C0, &qword_1EE160240, 0x1E698F248);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD5F3AD8()
{
  if (!qword_1EE1602E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCA50, &qword_1DD649EF8);
    v0 = sub_1DD640178();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE1602E8);
    }
  }
}

void sub_1DD5F3B3C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1DD39638C(255, a3, a4);
    v5 = sub_1DD63DA18();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1DD5F3B98()
{
  result = qword_1ECCDFCB8;
  if (!qword_1ECCDFCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFCB8);
  }

  return result;
}

void *OUTLINED_FUNCTION_3_96(void *result)
{
  v3 = *(v2 - 168);
  result[2] = *(v2 - 176);
  result[3] = v3;
  v4 = *(v2 - 288);
  result[4] = v1;
  result[5] = v4;
  result[6] = *(v2 - 296);
  return result;
}

uint64_t OUTLINED_FUNCTION_11_53(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v6 - 184);

  return MEMORY[0x1EEDF0598](a1, v5, a3, v4, v8, v3);
}

uint64_t OUTLINED_FUNCTION_14_46(uint64_t a1, uint64_t a2)
{
  *(v2 - 288) = a1;
  *(v2 - 296) = a2;

  return type metadata accessor for TaskMetadata();
}

uint64_t sub_1DD5F3CA4(uint64_t result)
{
  v1 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v2 = *(result + 16);
  v3 = result + 48;
  v12 = result + 48;
LABEL_2:
  v4 = (v3 + 24 * v1);
  while (1)
  {
    if (v2 == v1)
    {
      return v13;
    }

    if (v1 >= v2)
    {
      break;
    }

    v5 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_12;
    }

    v6 = *v4;
    v8 = *(v4 - 2);
    v7 = *(v4 - 1);
    v9 = objc_opt_self();
    sub_1DD3D01B4(v8, v7);
    v10 = sub_1DD63CF08();
    v11 = [v9 eventWithData:v10 dataVersion:v6];

    result = sub_1DD3AD790(v8, v7);
    ++v1;
    v4 += 6;
    if (v11)
    {
      MEMORY[0x1E12B23F0](result);
      if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1DD640138();
      }

      result = sub_1DD640168();
      v13 = v14;
      v1 = v5;
      v3 = v12;
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1DD5F3E04(void *a1)
{
  v1 = [a1 intentResponse];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
LABEL_11:

    return 0;
  }

  v4 = sub_1DD5F413C(v3);
  v5 = v4;
  if (!v4)
  {

    return v5;
  }

  if (!sub_1DD3CC020(v4))
  {

    goto LABEL_11;
  }

  sub_1DD408BFC(0);
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = MEMORY[0x1E12B2C10](0, v5);
  }

  else
  {
    v6 = *(v5 + 32);
  }

  v7 = v6;

  v8 = [v7 identifier];

  if (!v8)
  {
    goto LABEL_11;
  }

  v5 = sub_1DD63FDD8();

  return v5;
}

uint64_t sub_1DD5F3F18(uint64_t result)
{
  v1 = 0;
  v23 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v2 = result + 48;
  v3 = *(result + 16);
  v22 = result + 48;
  v24 = v3;
LABEL_2:
  for (i = (v2 + 24 * v1); ; i += 6)
  {
    if (v3 == v1)
    {
      return v23;
    }

    if (v1 >= v3)
    {
      break;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_17;
    }

    v5 = *(i - 2);
    v6 = *(i - 1);
    v7 = *i;
    v8 = objc_opt_self();
    v9 = OUTLINED_FUNCTION_15_1();
    sub_1DD3D01B4(v9, v10);
    OUTLINED_FUNCTION_15_1();
    v11 = sub_1DD63CF08();
    v12 = [v8 eventWithData:v11 dataVersion:v7];

    if (v12)
    {
      v13 = [v12 interaction];
      v14 = sub_1DD63CF28();
      v16 = v15;

      sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
      sub_1DD39638C(0, &qword_1EE166248, 0x1E696E8B8);
      v19 = sub_1DD6403D8();

      sub_1DD3AD790(v14, v16);
      v20 = OUTLINED_FUNCTION_15_1();
      result = sub_1DD3AD790(v20, v21);
      if (v19)
      {
        MEMORY[0x1E12B23F0](result);
        v3 = v24;
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1DD640138();
        }

        result = sub_1DD640168();
        v23 = v25;
        ++v1;
        v2 = v22;
        goto LABEL_2;
      }

      v3 = v24;
    }

    else
    {
      v17 = OUTLINED_FUNCTION_15_1();
      result = sub_1DD3AD790(v17, v18);
    }

    ++v1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_1DD5F413C(void *a1)
{
  v1 = [a1 addedTasks];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1DD39638C(0, &qword_1ECCDFCC0, 0x1E696EA98);
  v3 = sub_1DD640118();

  return v3;
}

id sub_1DD5F41AC()
{
  v1 = v0;
  v2 = type metadata accessor for TaskSuccessMetricsPublisher();
  v3 = v2 - 8;
  v51 = *(v2 - 8);
  v4 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v56 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v51 - v6;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC78, &qword_1DD6637E0);
  v8 = OUTLINED_FUNCTION_0(v52);
  v57 = v9;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v51 - v12;
  v14 = sub_1DD63D078();
  v15 = OUTLINED_FUNCTION_0(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v21 = &v51 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC80, &qword_1DD6637E8);
  v23 = OUTLINED_FUNCTION_0(v22);
  v54 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v28 = &v51 - v27;
  sub_1DD63CF58();
  sub_1DD63CF48();
  (*(v17 + 8))(v21, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
  sub_1DD3FAC5C(&qword_1EE1637B8, &qword_1ECCDFC98, &unk_1DD6639C0);
  sub_1DD63DA38();
  sub_1DD3FAC5C(&qword_1EE1637C8, &qword_1ECCDFC80, &qword_1DD6637E8);
  v55 = v22;
  v53 = v28;
  sub_1DD63D4C8();
  v29 = *(v1 + *(v3 + 40));
  sub_1DD628CE8();
  sub_1DD5F657C(v1, v7, type metadata accessor for TaskSuccessMetricsPublisher);
  v30 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v31 = swift_allocObject();
  sub_1DD5F65DC(v7, v31 + v30, type metadata accessor for TaskSuccessMetricsPublisher);
  v32 = v1;
  v33 = v56;
  sub_1DD5F657C(v32, v56, type metadata accessor for TaskSuccessMetricsPublisher);
  v34 = v52;
  v35 = swift_allocObject();
  sub_1DD5F65DC(v33, v35 + v30, type metadata accessor for TaskSuccessMetricsPublisher);
  sub_1DD3FAC5C(&unk_1EE1637D0, &qword_1ECCDFC78, &qword_1DD6637E0);
  v56 = v13;
  v36 = sub_1DD63D4D8();

  swift_unknownObjectRelease();
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v37 = sub_1DD63F9F8();
  __swift_project_value_buffer(v37, qword_1EE16F0C8);
  v38 = v36;
  v39 = sub_1DD63F9D8();
  v40 = sub_1DD640368();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v58 = v43;
    *v41 = 136315394;
    v44 = [v38 debugDescription];
    v45 = sub_1DD63FDD8();
    v47 = v46;

    v48 = sub_1DD39565C(v45, v47, &v58);

    *(v41 + 4) = v48;
    *(v41 + 12) = 2112;
    v49 = [v38 status];
    *(v41 + 14) = v49;
    *v42 = v49;
    _os_log_impl(&dword_1DD38D000, v39, v40, "Biome: Created Sink: %s, Sink Status: %@", v41, 0x16u);
    sub_1DD3CBE0C(v42);
    MEMORY[0x1E12B3DA0](v42, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v43);
    MEMORY[0x1E12B3DA0](v43, -1, -1);
    MEMORY[0x1E12B3DA0](v41, -1, -1);
  }

  (*(v57 + 8))(v56, v34);
  (*(v54 + 8))(v53, v55);
  return v38;
}

uint64_t type metadata accessor for TaskSuccessMetricsPublisher()
{
  result = qword_1EE1610D8;
  if (!qword_1EE1610D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_1DD5F483C(void *a1)
{
  v1 = [a1 eventBody];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 donatedBySiri];

  return v3;
}

void sub_1DD5F4894(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v5 = sub_1DD63F9F8();
  __swift_project_value_buffer(v5, qword_1EE16F0C8);
  v6 = a1;
  v7 = sub_1DD63F9D8();
  v8 = sub_1DD640368();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_1DD38D000, v7, v8, "TaskSuccessMetricsPublisher completion: %@", v9, 0xCu);
    sub_1DD3CBE0C(v10);
    MEMORY[0x1E12B3DA0](v10, -1, -1);
    MEMORY[0x1E12B3DA0](v9, -1, -1);
  }

  v12 = type metadata accessor for TaskSuccessMetricsPublisher();
  v13 = *(a3 + *(v12 + 32));
  v14 = swift_unknownObjectRetain();
  sub_1DD6291C4(v14);
  v15 = a3 + *(v12 + 28);
  v16 = *v15;
  if (*v15)
  {
    v17 = *(v15 + 8);

    v16(v18);

    sub_1DD39E698(v16);
  }

  else
  {
    oslog = sub_1DD63F9D8();
    v19 = sub_1DD640368();
    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_1DD38D000, oslog, v19, "no sinkCompletion provided, returning", v20, 2u);
      MEMORY[0x1E12B3DA0](v20, -1, -1);
    }
  }
}

void sub_1DD5F4AD4(void *a1, uint64_t a2)
{
  v4 = MEMORY[0x1E12B3350]();
  sub_1DD5F4B34(a1, a2);

  objc_autoreleasePoolPop(v4);
}

void sub_1DD5F4B34(void *a1, uint64_t a2)
{
  v135 = a2;
  v133 = type metadata accessor for TaskSuccessMetricsPublisher();
  v129 = *(v133 - 8);
  v4 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v133);
  v134 = type metadata accessor for TaskSuccessEvaluator();
  v126 = *(v134 - 8);
  v5 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v134);
  v127 = v6;
  v128 = &v112[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v112[-v8];
  v136 = type metadata accessor for TaskMetadata();
  v125 = *(v136 - 8);
  v10 = *(v125 + 64);
  MEMORY[0x1EEE9AC00](v136);
  v123 = &v112[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v112[-v12];
  MEMORY[0x1EEE9AC00](v14);
  v132 = &v112[-v15];
  MEMORY[0x1EEE9AC00](v16);
  v131 = &v112[-v17];
  MEMORY[0x1EEE9AC00](v18);
  v130 = &v112[-v19];
  *&v21 = MEMORY[0x1EEE9AC00](v20).n128_u64[0];
  v23 = &v112[-v22];
  v24 = [a1 eventBody];
  if (!v24)
  {
    goto LABEL_4;
  }

  v25 = v24;
  v119 = v4;
  v120 = &v112[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v121 = v9;
  v122 = v13;
  v124 = v23;
  sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  sub_1DD39638C(0, &qword_1EE166248, 0x1E696E8B8);
  v26 = [v25 interaction];
  v27 = sub_1DD63CF28();
  v28 = v25;
  v30 = v29;

  v31 = sub_1DD6403D8();
  if (v2)
  {

    sub_1DD3AD790(v27, v30);
LABEL_4:
    if (qword_1EE166510 != -1)
    {
      swift_once();
    }

    v32 = sub_1DD63F9F8();
    __swift_project_value_buffer(v32, qword_1EE16F0C8);
    v33 = a1;
    v34 = sub_1DD63F9D8();
    v35 = sub_1DD640368();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v137[0] = v37;
      *v36 = 136315138;
      v38 = v33;
      v39 = [v38 description];
      v40 = sub_1DD63FDD8();
      v42 = v41;

      v43 = sub_1DD39565C(v40, v42, v137);

      *(v36 + 4) = v43;
      _os_log_impl(&dword_1DD38D000, v34, v35, "event: %s is ineligible for task success evaluation, returning", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1E12B3DA0](v37, -1, -1);
      MEMORY[0x1E12B3DA0](v36, -1, -1);
    }

    return;
  }

  v44 = v31;
  v118 = v28;
  sub_1DD3AD790(v27, v30);
  if (!v44)
  {

    goto LABEL_4;
  }

  v117 = 0;
  v116 = v44;
  v45 = sub_1DD5F64EC([v44 intent]);
  if (v46)
  {
    v47 = v45;
  }

  else
  {
    v47 = 0;
  }

  v48 = 0xE000000000000000;
  if (v46)
  {
    v49 = v46;
  }

  else
  {
    v49 = 0xE000000000000000;
  }

  v50 = sub_1DD3D00A4(v118);
  if (v51)
  {
    v52 = v50;
  }

  else
  {
    v52 = 0;
  }

  if (v51)
  {
    v48 = v51;
  }

  [a1 timestamp];
  v53 = v124;
  v54 = v124 + *(v136 + 24);
  sub_1DD63CF38();
  *v53 = v47;
  v53[1] = v49;
  v53[2] = v52;
  v53[3] = v48;
  if (qword_1EE166510 != -1)
  {
    swift_once();
  }

  v55 = sub_1DD63F9F8();
  v56 = __swift_project_value_buffer(v55, qword_1EE16F0C8);
  v57 = v130;
  sub_1DD5F657C(v53, v130, type metadata accessor for TaskMetadata);
  v58 = v131;
  sub_1DD5F657C(v53, v131, type metadata accessor for TaskMetadata);
  v59 = v132;
  sub_1DD5F657C(v53, v132, type metadata accessor for TaskMetadata);
  v115 = v56;
  v60 = sub_1DD63F9D8();
  v61 = sub_1DD640368();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v122;
  if (v62)
  {
    v64 = v58;
    v65 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v137[0] = v114;
    *v65 = 136315650;
    v113 = v61;
    v66 = *v57;
    v67 = v57[1];

    sub_1DD5F679C(v57, type metadata accessor for TaskMetadata);
    v68 = sub_1DD39565C(v66, v67, v137);

    *(v65 + 4) = v68;
    *(v65 + 12) = 2080;
    v69 = *(v64 + 16);
    v70 = *(v64 + 24);

    sub_1DD5F679C(v64, type metadata accessor for TaskMetadata);
    v71 = sub_1DD39565C(v69, v70, v137);

    *(v65 + 14) = v71;
    *(v65 + 22) = 2048;
    v72 = &v59[*(v136 + 24)];
    sub_1DD63CF48();
    v74 = v73;
    v53 = v124;
    sub_1DD5F679C(v59, type metadata accessor for TaskMetadata);
    *(v65 + 24) = v74;
    _os_log_impl(&dword_1DD38D000, v60, v113, "taskMetadata: id:%s type: %s, beganAt: %f", v65, 0x20u);
    v75 = v114;
    swift_arrayDestroy();
    MEMORY[0x1E12B3DA0](v75, -1, -1);
    MEMORY[0x1E12B3DA0](v65, -1, -1);
  }

  else
  {

    sub_1DD5F679C(v59, type metadata accessor for TaskMetadata);
    sub_1DD5F679C(v58, type metadata accessor for TaskMetadata);
    sub_1DD5F679C(v57, type metadata accessor for TaskMetadata);
  }

  v76 = v117;
  v77 = v135;
  sub_1DD5F657C(v53, v63, type metadata accessor for TaskMetadata);
  v78 = v134;
  v79 = *(v134 + 24);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
  v81 = v63;
  v82 = v121;
  (*(*(v80 - 8) + 16))(&v121[v79], v77, v80);
  v83 = *(v133 + 20);
  v84 = v78[7];
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC88, &unk_1DD6637F0);
  (*(*(v85 - 8) + 16))(v82 + v84, v77 + v83, v85);
  if (qword_1EE161D68 != -1)
  {
    swift_once();
  }

  v86 = sub_1DD5F657C(v81, v82, type metadata accessor for TaskMetadata);
  MEMORY[0x1EEE9AC00](v86);
  *&v112[-16] = v81;

  sub_1DD3EC25C();
  v88 = v87;
  v117 = v76;
  *(v82 + v78[5]) = v87;
  *(v82 + v78[8]) = 0x4072C00000000000;
  sub_1DD5F679C(v81, type metadata accessor for TaskMetadata);
  if (*(v88 + 16))
  {
    v89 = v128;
    sub_1DD5F657C(v82, v128, type metadata accessor for TaskSuccessEvaluator);
    v90 = v120;
    sub_1DD5F657C(v77, v120, type metadata accessor for TaskSuccessMetricsPublisher);
    sub_1DD5F657C(v124, v81, type metadata accessor for TaskMetadata);
    v91 = (*(v126 + 80) + 16) & ~*(v126 + 80);
    v92 = (v127 + v91 + 7) & 0xFFFFFFFFFFFFFFF8;
    v93 = (*(v129 + 80) + v92 + 8) & ~*(v129 + 80);
    v94 = (v119 + *(v125 + 80) + v93) & ~*(v125 + 80);
    v95 = swift_allocObject();
    sub_1DD5F65DC(v89, v95 + v91, type metadata accessor for TaskSuccessEvaluator);
    v96 = v116;
    *(v95 + v92) = v116;
    sub_1DD5F65DC(v90, v95 + v93, type metadata accessor for TaskSuccessMetricsPublisher);
    sub_1DD5F65DC(v122, v95 + v94, type metadata accessor for TaskMetadata);
    v97 = v96;
    sub_1DD5F22C0(sub_1DD5F663C, v95);

    sub_1DD5F679C(v124, type metadata accessor for TaskMetadata);
    v98 = v82;
  }

  else
  {
    v99 = v82;
    v100 = v123;
    v101 = v124;
    sub_1DD5F657C(v124, v123, type metadata accessor for TaskMetadata);
    v102 = sub_1DD63F9D8();
    v103 = sub_1DD640368();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      v105 = swift_slowAlloc();
      v137[0] = v105;
      *v104 = 136315138;
      sub_1DD5F657C(v100, v81, type metadata accessor for TaskMetadata);
      v106 = sub_1DD63FE38();
      v107 = v100;
      v108 = v106;
      v110 = v109;
      sub_1DD5F679C(v107, type metadata accessor for TaskMetadata);
      v111 = sub_1DD39565C(v108, v110, v137);

      *(v104 + 4) = v111;
      _os_log_impl(&dword_1DD38D000, v102, v103, "Task %s is not eligible for task success evaluation", v104, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v105);
      MEMORY[0x1E12B3DA0](v105, -1, -1);
      MEMORY[0x1E12B3DA0](v104, -1, -1);
    }

    else
    {

      sub_1DD5F679C(v100, type metadata accessor for TaskMetadata);
    }

    sub_1DD5F679C(v101, type metadata accessor for TaskMetadata);
    v98 = v99;
  }

  sub_1DD5F679C(v98, type metadata accessor for TaskSuccessEvaluator);
}

void sub_1DD5F5AD8(char a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v5 = v4;
  v63 = a3;
  v9 = type metadata accessor for TaskMetadata();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v63 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v63 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v63 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v63 - v23;
  switch(a1)
  {
    case 1:
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v51 = sub_1DD63F9F8();
      __swift_project_value_buffer(v51, qword_1EE16F0C8);
      sub_1DD5F657C(a4, v24, type metadata accessor for TaskMetadata);
      v52 = sub_1DD63F9D8();
      v53 = sub_1DD640368();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v64 = v55;
        *v54 = 136315138;
        sub_1DD5F657C(v24, v21, type metadata accessor for TaskMetadata);
        v56 = sub_1DD63FE38();
        v58 = v57;
        sub_1DD5F679C(v24, type metadata accessor for TaskMetadata);
        v59 = sub_1DD39565C(v56, v58, &v64);

        *(v54 + 4) = v59;
        _os_log_impl(&dword_1DD38D000, v52, v53, "Logging success for .none activityType for task: %s", v54, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v55);
        MEMORY[0x1E12B3DA0](v55, -1, -1);
        MEMORY[0x1E12B3DA0](v54, -1, -1);
      }

      else
      {

        sub_1DD5F679C(v24, type metadata accessor for TaskMetadata);
      }

      v62 = type metadata accessor for TaskSuccessMetricsPublisher();
      __swift_project_boxed_opaque_existential_1((v5 + *(v62 + 24)), *(v5 + *(v62 + 24) + 24));
      sub_1DD5A7890(a4, a2, v63);
      break;
    case 2:
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v34 = sub_1DD63F9F8();
      __swift_project_value_buffer(v34, qword_1EE16F0C8);
      sub_1DD5F657C(a4, v18, type metadata accessor for TaskMetadata);
      v35 = sub_1DD63F9D8();
      v36 = sub_1DD640368();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v64 = v38;
        *v37 = 136315138;
        sub_1DD5F657C(v18, v21, type metadata accessor for TaskMetadata);
        v39 = sub_1DD63FE38();
        v41 = v40;
        sub_1DD5F679C(v18, type metadata accessor for TaskMetadata);
        v42 = sub_1DD39565C(v39, v41, &v64);

        *(v37 + 4) = v42;
        _os_log_impl(&dword_1DD38D000, v35, v36, "Logging failure for .update activityType for task: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        v43 = v38;
        goto LABEL_14;
      }

      v60 = v18;
      goto LABEL_21;
    case 3:
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v44 = sub_1DD63F9F8();
      __swift_project_value_buffer(v44, qword_1EE16F0C8);
      sub_1DD5F657C(a4, v15, type metadata accessor for TaskMetadata);
      v35 = sub_1DD63F9D8();
      v45 = sub_1DD640368();
      if (os_log_type_enabled(v35, v45))
      {
        v37 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v64 = v46;
        *v37 = 136315138;
        sub_1DD5F657C(v15, v21, type metadata accessor for TaskMetadata);
        v47 = sub_1DD63FE38();
        v49 = v48;
        sub_1DD5F679C(v15, type metadata accessor for TaskMetadata);
        v50 = sub_1DD39565C(v47, v49, &v64);

        *(v37 + 4) = v50;
        _os_log_impl(&dword_1DD38D000, v35, v45, "Logging failure for .delete activityType for task: %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        v43 = v46;
LABEL_14:
        MEMORY[0x1E12B3DA0](v43, -1, -1);
        MEMORY[0x1E12B3DA0](v37, -1, -1);
      }

      else
      {

        v60 = v15;
LABEL_21:
        sub_1DD5F679C(v60, type metadata accessor for TaskMetadata);
      }

      v61 = type metadata accessor for TaskSuccessMetricsPublisher();
      __swift_project_boxed_opaque_existential_1((v5 + *(v61 + 24)), *(v5 + *(v61 + 24) + 24));
      sub_1DD5A795C(a4, a2, v63);
      break;
    default:
      if (qword_1EE166510 != -1)
      {
        swift_once();
      }

      v25 = sub_1DD63F9F8();
      __swift_project_value_buffer(v25, qword_1EE16F0C8);
      sub_1DD5F657C(a4, v12, type metadata accessor for TaskMetadata);
      v26 = sub_1DD63F9D8();
      v27 = sub_1DD640368();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v64 = v29;
        *v28 = 136315138;
        sub_1DD5F657C(v12, v21, type metadata accessor for TaskMetadata);
        v30 = sub_1DD63FE38();
        v32 = v31;
        sub_1DD5F679C(v12, type metadata accessor for TaskMetadata);
        v33 = sub_1DD39565C(v30, v32, &v64);

        *(v28 + 4) = v33;
        _os_log_impl(&dword_1DD38D000, v26, v27, "Not logging success metrics for .notApplication activityType for task: %s", v28, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v29);
        MEMORY[0x1E12B3DA0](v29, -1, -1);
        MEMORY[0x1E12B3DA0](v28, -1, -1);
      }

      else
      {

        sub_1DD5F679C(v12, type metadata accessor for TaskMetadata);
      }

      break;
  }
}

void sub_1DD5F62B0(void *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TaskSuccessMetricsPublisher() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1DD5F4894(a1, a2, v6);
}

uint64_t objectdestroyTm_2()
{
  v2 = type metadata accessor for TaskSuccessMetricsPublisher();
  OUTLINED_FUNCTION_2_113(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC98, &unk_1DD6639C0);
  OUTLINED_FUNCTION_7(v8);
  (*(v9 + 8))(v1 + v5);
  v10 = v0[5];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDFC88, &unk_1DD6637F0);
  OUTLINED_FUNCTION_7(v11);
  (*(v12 + 8))(v1 + v5 + v10);
  __swift_destroy_boxed_opaque_existential_1((v1 + v5 + v0[6]));
  v13 = (v1 + v5 + v0[7]);
  if (*v13)
  {
    v14 = v13[1];
  }

  v15 = *(v1 + v5 + v0[8]);
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, v5 + v7, v4 | 7);
}

void sub_1DD5F647C(void *a1)
{
  v3 = *(type metadata accessor for TaskSuccessMetricsPublisher() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  sub_1DD5F4AD4(a1, v4);
}

uint64_t sub_1DD5F64EC(void *a1)
{
  v2 = [a1 intentId];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD5F657C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1DD5F65DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_7(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

void sub_1DD5F663C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = *(type metadata accessor for TaskSuccessEvaluator() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for TaskSuccessMetricsPublisher() - 8);
  v11 = (v9 + *(v10 + 80) + 8) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(type metadata accessor for TaskMetadata() - 8);
  v14 = *(v3 + v9);
  v15 = (v3 + ((v11 + v12 + *(v13 + 80)) & ~*(v13 + 80)));

  sub_1DD5F5854(a1, a2, a3, v3 + v8, v14, v3 + v11, v15);
}

uint64_t sub_1DD5F679C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_1DD5F681C()
{
  sub_1DD5F3B3C(319, &qword_1EE1637B0, &qword_1EE160230, 0x1E698F2B0);
  if (v0 <= 0x3F)
  {
    sub_1DD5F3B3C(319, &qword_1EE1637C0, &qword_1EE160240, 0x1E698F248);
    if (v1 <= 0x3F)
    {
      sub_1DD5F69A4(319, &qword_1EE1623E8);
      if (v2 <= 0x3F)
      {
        sub_1DD5F6940();
        if (v3 <= 0x3F)
        {
          sub_1DD5F69A4(319, qword_1EE161CB8);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1DD5F6940()
{
  if (!qword_1EE160128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDCFB0, &qword_1DD6639F0);
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE160128);
    }
  }
}

uint64_t sub_1DD5F69A4(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t TerminalElement.TemporalIntent.toTemporalIntent()@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1DD63DFE8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v9, v2, v4, v7);
  result = (*(v5 + 88))(v9, v4);
  if (result == *MEMORY[0x1E69D1848])
  {
    *a1 = 0;
    return result;
  }

  if (result == *MEMORY[0x1E69D1858])
  {
    v11 = 1;
LABEL_7:
    *a1 = v11;
    return result;
  }

  if (result == *MEMORY[0x1E69D1850])
  {
    v11 = 2;
    goto LABEL_7;
  }

  *a1 = 4;
  return (*(v5 + 8))(v9, v4);
}

uint64_t DateTime.TemporalIntent.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1DD640AA8();

  v4 = 4;
  if (v2 < 4)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t DateTime.TemporalIntent.rawValue.getter()
{
  result = 1953718640;
  switch(*v0)
  {
    case 1:
      result = 0x746E6573657270;
      break;
    case 2:
      result = 0x657275747566;
      break;
    case 3:
      result = 0x6E776F6E6B6E75;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DD5F6C50@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return DateTime.TemporalIntent.init(rawValue:)(a1);
}

uint64_t sub_1DD5F6C5C@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.TemporalIntent.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1DD5F6D38()
{
  result = qword_1ECCDFCC8;
  if (!qword_1ECCDFCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFCC8);
  }

  return result;
}

_BYTE *_s14TemporalIntentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD5F6E68()
{
  result = qword_1ECCDFCD0;
  if (!qword_1ECCDFCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDFCD0);
  }

  return result;
}

void sub_1DD5F6EF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (**a6)(void))
{
  v46 = a3;
  v9 = sub_1DD63D078();
  v10 = OUTLINED_FUNCTION_0(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v39 - v14;
  v45 = sub_1DD63C868();
  v16 = OUTLINED_FUNCTION_0(v45);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 48) == 4)
  {
    if (*(a1 + 24) == 2)
    {
      v39 = a6;
      v40 = v6;
      v30 = *a6;
      v47 = MEMORY[0x1E69E7CC0];
      v44 = sub_1DD3CC020(v30);
      v31 = 0;
      OUTLINED_FUNCTION_0_143();
      while (v44 != v31)
      {
        if (v42)
        {
          MEMORY[0x1E12B2C10](v31, v43);
        }

        else
        {
          if (v31 >= *(v41 + 16))
          {
            goto LABEL_31;
          }

          OUTLINED_FUNCTION_6_77();
        }

        if (__OFADD__(v31, 1))
        {
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
          return;
        }

        v32 = OUTLINED_FUNCTION_2_114();
        v33(v32);
        sub_1DD63C848();
        v34 = OUTLINED_FUNCTION_3_97();
        v35(v34);
        v36 = OUTLINED_FUNCTION_1_128();
        v37(v36);
        sub_1DD63CFB8();
        v38 = OUTLINED_FUNCTION_4_92();
        v30(v38);
        (v30)(v15, v9);
        if (v20)
        {
          sub_1DD640958();
          v30 = *(v47 + 16);
          sub_1DD640998();
          sub_1DD6409A8();
          sub_1DD640968();
        }

        else
        {
        }

        ++v31;
      }
    }

    else
    {
      if (*(a1 + 24))
      {
        return;
      }

      v39 = a6;
      v40 = v6;
      v21 = *a6;
      v47 = MEMORY[0x1E69E7CC0];
      v44 = sub_1DD3CC020(v21);
      v22 = 0;
      OUTLINED_FUNCTION_0_143();
      while (v44 != v22)
      {
        if (v42)
        {
          MEMORY[0x1E12B2C10](v22, v43);
        }

        else
        {
          if (v22 >= *(v41 + 16))
          {
            goto LABEL_30;
          }

          OUTLINED_FUNCTION_6_77();
        }

        if (__OFADD__(v22, 1))
        {
          __break(1u);
          goto LABEL_29;
        }

        v23 = OUTLINED_FUNCTION_2_114();
        v24(v23);
        sub_1DD63C848();
        v25 = OUTLINED_FUNCTION_3_97();
        v26(v25);
        v27 = OUTLINED_FUNCTION_1_128();
        v28(v27);
        sub_1DD63CFC8();
        v29 = OUTLINED_FUNCTION_4_92();
        v21(v29);
        (v21)(v15, v9);
        if (v20)
        {
          sub_1DD640958();
          v21 = *(v47 + 16);
          sub_1DD640998();
          sub_1DD6409A8();
          sub_1DD640968();
        }

        else
        {
        }

        ++v22;
      }
    }

    *v39 = v47;
  }
}

uint64_t sub_1DD5F7328(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC140, &unk_1DD655030);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v20 - v5;
  v7 = sub_1DD63D188();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC148, &qword_1DD645290);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = v20 - v15;
  (*(v8 + 104))(v11, *MEMORY[0x1E6969868], v7, v14);
  sub_1DD63D198();
  (*(v8 + 8))(v11, v7);
  v17 = sub_1DD63D2D8();
  __swift_storeEnumTagSinglePayload(v16, 0, 1, v17);
  v18 = sub_1DD63D328();
  (*(*(v18 - 8) + 16))(v6, a2, v18);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v18);
  return sub_1DD63CB68();
}

uint64_t sub_1DD5F765C()
{
  result = type metadata accessor for SiriVocabularySearcher(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for StringTokenizer();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DD5F7708()
{
  result = sub_1DD63D168();
  if (v1 <= 0x3F)
  {
    result = sub_1DD39638C(319, &qword_1EE1601C0, 0x1E6997E98);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1DD5F779C(uint64_t a1, uint64_t *a2)
{
  v157 = a2;
  v155 = a1;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v2 = OUTLINED_FUNCTION_0(v145);
  v150 = v3;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_2_1();
  v149 = v6;
  OUTLINED_FUNCTION_8_1();
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v140 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v152 = &v140 - v11;
  OUTLINED_FUNCTION_8_1();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v140 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v154 = (&v140 - v16);
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v17);
  v158 = &v140 - v18;
  v19 = type metadata accessor for Contact();
  v20 = OUTLINED_FUNCTION_0(v19);
  v159 = v21;
  v160 = v20;
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_2_1();
  v147 = v24;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v25);
  v151 = &v140 - v26;
  v27 = type metadata accessor for Signpost();
  v28 = OUTLINED_FUNCTION_7(v27);
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    goto LABEL_87;
  }

  while (1)
  {
    v33 = qword_1EE16F0C0;
    v34 = (v32 + *(v27 + 20));
    *v34 = "ContactResolver.3PMatcher";
    *(v34 + 1) = 25;
    v34[16] = 2;
    v35 = v33;
    sub_1DD63F9B8();
    *(v32 + *(v27 + 24)) = v35;
    v36 = v35;
    sub_1DD6404D8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_1DD643F90;
    v38 = sub_1DD6408F8();
    v40 = v39;
    *(v37 + 56) = MEMORY[0x1E69E6158];
    *(v37 + 64) = sub_1DD392BD8();
    *(v37 + 32) = v38;
    *(v37 + 40) = v40;
    v139 = v37;
    LOBYTE(v138) = 2;
    v137 = 22;
    v142 = v36;
    v143 = v32;
    sub_1DD63F998();

    if (qword_1EE165FB0 != -1)
    {
      OUTLINED_FUNCTION_0_5();
    }

    v41 = sub_1DD63F9F8();
    v42 = __swift_project_value_buffer(v41, qword_1EE16F068);
    v43 = v157;

    v156 = v42;
    v44 = sub_1DD63F9D8();
    v45 = sub_1DD640368();

    v46 = os_log_type_enabled(v44, v45);
    v47 = v151;
    if (v46)
    {
      v48 = OUTLINED_FUNCTION_54();
      v49 = OUTLINED_FUNCTION_62();
      v163[0] = v49;
      *v48 = 136315138;
      v50 = sub_1DD640278();
      v52 = sub_1DD39565C(v50, v51, v163);
      v43 = v157;

      *(v48 + 4) = v52;
      _os_log_impl(&dword_1DD38D000, v44, v45, "finding 3p contact matches in %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v49);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v163[0] = MEMORY[0x1E69E7CD0];
    MEMORY[0x1EEE9AC00](v53);
    v137 = v54;
    v138 = v163;
    v139 = v43;
    sub_1DD583330(sub_1DD5FA8A8, (&v140 - 6), v155);
    v56 = v55;
    v144 = sub_1DD5F9AC8();

    v57 = sub_1DD63F9D8();
    v58 = sub_1DD640368();

    v59 = os_log_type_enabled(v57, v58);
    v153 = v10;
    v148 = v56;
    if (v59)
    {
      LODWORD(v157) = v58;
      v60 = OUTLINED_FUNCTION_54();
      v146 = OUTLINED_FUNCTION_62();
      v162[0] = v146;
      v155 = v60;
      *v60 = 136315138;
      v61 = *(v56 + 16);
      v62 = MEMORY[0x1E69E7CC0];
      if (v61)
      {
        v141 = v57;
        v161 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_19_39();
        v62 = v161;
        OUTLINED_FUNCTION_18_3();
        v64 = v56 + v63;
        v66 = *(v65 + 72);
        do
        {
          OUTLINED_FUNCTION_16_52();
          sub_1DD3C4EB4();
          OUTLINED_FUNCTION_3_98();
          sub_1DD5FA998();
          sub_1DD390754(v60, &qword_1ECCDBBE8, &qword_1DD644470);
          v161 = v62;
          v67 = v47;
          v69 = *(v62 + 16);
          v68 = *(v62 + 24);
          v60 = (v69 + 1);
          if (v69 >= v68 >> 1)
          {
            v72 = OUTLINED_FUNCTION_1_0(v68);
            sub_1DD42B5EC(v72, v69 + 1, 1);
            v62 = v161;
          }

          *(v62 + 16) = v60;
          OUTLINED_FUNCTION_18_3();
          sub_1DD3C95D4(v67, v62 + v70 + *(v71 + 72) * v69);
          v64 += v66;
          --v61;
          v47 = v67;
        }

        while (v61);
        v10 = v153;
        v56 = v148;
        v57 = v141;
      }

      v73 = MEMORY[0x1E12B2430](v62, v160);
      v75 = v74;

      v76 = sub_1DD39565C(v73, v75, v162);

      v77 = v155;
      *(v155 + 1) = v76;
      _os_log_impl(&dword_1DD38D000, v57, v157, "std 3p matches: %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v146);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v78 = v144;

    v79 = sub_1DD63F9D8();
    v80 = sub_1DD640368();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = OUTLINED_FUNCTION_54();
      v157 = OUTLINED_FUNCTION_62();
      v162[0] = v157;
      *v81 = 136315138;
      v82 = *(v78 + 16);
      v83 = MEMORY[0x1E69E7CC0];
      if (v82)
      {
        v151 = v81;
        LODWORD(v155) = v80;
        v156 = v79;
        v161 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_19_39();
        v83 = v161;
        OUTLINED_FUNCTION_18_3();
        v85 = v78 + v84;
        v87 = *(v86 + 72);
        v88 = v147;
        do
        {
          OUTLINED_FUNCTION_16_52();
          sub_1DD3C4EB4();
          OUTLINED_FUNCTION_3_98();
          sub_1DD5FA998();
          sub_1DD390754(v78, &qword_1ECCDBBE8, &qword_1DD644470);
          v161 = v83;
          v90 = *(v83 + 16);
          v89 = *(v83 + 24);
          v78 = v90 + 1;
          if (v90 >= v89 >> 1)
          {
            v93 = OUTLINED_FUNCTION_1_0(v89);
            sub_1DD42B5EC(v93, v90 + 1, 1);
            v83 = v161;
          }

          *(v83 + 16) = v78;
          OUTLINED_FUNCTION_18_3();
          sub_1DD3C95D4(v88, v83 + v91 + *(v92 + 72) * v90);
          v85 += v87;
          --v82;
        }

        while (v82);
        v10 = v153;
        v56 = v148;
        v79 = v156;
        LOBYTE(v80) = v155;
        v81 = v151;
      }

      v94 = MEMORY[0x1E12B2430](v83, v160);
      v96 = v95;

      v97 = sub_1DD39565C(v94, v96, v162);

      *(v81 + 4) = v97;
      _os_log_impl(&dword_1DD38D000, v79, v80, "nlx 3p matches: %s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v157);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v147 = *(v56 + 16);
    if (!v147)
    {
      break;
    }

    v27 = 0;
    v151 = ((*(v150 + 80) + 32) & ~*(v150 + 80));
    v146 = &v151[v56];
    v32 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v27 >= *(v56 + 16))
      {
        goto LABEL_83;
      }

      v98 = *(v150 + 72);
      v155 = v27;
      sub_1DD3C4EB4();
      v27 = v32;
      v99 = *(v32 + 16);
      if (v99)
      {
        break;
      }

LABEL_55:
      v99 = v154;
      sub_1DD3C4EB4();
      v32 = v27;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v114 = *(v27 + 16);
        sub_1DD3BEC44();
        v32 = v115;
      }

      v27 = v155;
      v113 = *(v32 + 16);
      v112 = *(v32 + 24);
      v10 = v153;
      if (v113 >= v112 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v112);
        sub_1DD3BEC44();
        v32 = v116;
      }

      v56 = v148;
      *(v32 + 16) = v113 + 1;
      sub_1DD447808();
LABEL_60:
      ++v27;
      sub_1DD390754(v99, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v27 == v147)
      {

        goto LABEL_64;
      }
    }

    v100 = 0;
    v32 = *v154;
    v10 = v154[1];
    v101 = v154[5];
    v156 = v154[6];
    v157 = v101;
    v102 = (v154 + *(v160 + 88));
    v103 = *v102;
    v56 = v102[1];
    v104 = &v151[v27];
    v105 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v105 = v32 & 0xFFFFFFFFFFFFLL;
    }

    v158 = v105;
    v159 = v103;
    while (v100 < *(v27 + 16))
    {
      sub_1DD3C4EB4();
      v106 = *v15 == v32 && *(v15 + 1) == v10;
      if (!v106 && (sub_1DD640CD8() & 1) == 0 && v158)
      {
        goto LABEL_53;
      }

      v107 = &v15[*(v160 + 88)];
      v108 = *(v107 + 1);
      if (v108)
      {
        if (!v56)
        {

LABEL_53:
          sub_1DD390754(v15, &qword_1ECCDBBE8, &qword_1DD644470);
          goto LABEL_54;
        }

        v109 = *v107 == v159 && v108 == v56;
        if (!v109 && (sub_1DD640CD8() & 1) == 0)
        {
          goto LABEL_53;
        }
      }

      else
      {

        if (v56)
        {
          goto LABEL_53;
        }
      }

      if (*(v15 + 5) == v157 && *(v15 + 6) == v156)
      {
        sub_1DD390754(v15, &qword_1ECCDBBE8, &qword_1DD644470);
        OUTLINED_FUNCTION_15_52();
        goto LABEL_60;
      }

      v111 = sub_1DD640CD8();
      sub_1DD390754(v15, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v111)
      {
        OUTLINED_FUNCTION_15_52();
        goto LABEL_60;
      }

LABEL_54:
      ++v100;
      v104 += v98;
      if (v99 == v100)
      {
        goto LABEL_55;
      }
    }

    __break(1u);
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    OUTLINED_FUNCTION_4_2();
  }

  v32 = MEMORY[0x1E69E7CC0];
LABEL_64:
  v117 = *(v144 + 16);
  if (v117)
  {
    v118 = v32;
    OUTLINED_FUNCTION_18_3();
    v160 = v119;
    v121 = v120 + v119;
    v123 = *(v122 + 72);
    v159 = v10 + 344;
    do
    {
      sub_1DD3C4EB4();
      v15 = v118;
      v124 = sub_1DD5FA120(v10, v118);
      if (v125)
      {
        sub_1DD3C4EB4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v131 = *(v118 + 16);
          sub_1DD3BEC44();
          v118 = v132;
        }

        v127 = *(v118 + 16);
        v126 = *(v118 + 24);
        if (v127 >= v126 >> 1)
        {
          OUTLINED_FUNCTION_1_0(v126);
          sub_1DD3BEC44();
          v118 = v133;
        }

        sub_1DD390754(v10, &qword_1ECCDBBE8, &qword_1DD644470);
        *(v118 + 16) = v127 + 1;
        sub_1DD447808();
      }

      else
      {
        v27 = v124;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1DD586A18(v118);
          v118 = v134;
        }

        v128 = v145;
        if ((v27 & 0x8000000000000000) != 0)
        {
          goto LABEL_84;
        }

        if (v27 >= *(v118 + 16))
        {
          goto LABEL_85;
        }

        v15 = (v118 + v160 + v27 * v123);
        v15[*(v145 + 36) + 339] = 1;
        v129 = *(v159 + *(v128 + 36));
        v130 = v10;
        v10 = v128;
        sub_1DD390754(v130, &qword_1ECCDBBE8, &qword_1DD644470);
        if (v27 >= *(v118 + 16))
        {
          goto LABEL_86;
        }

        *&v15[*(v10 + 36) + 344] = v129;
        v10 = v153;
      }

      v121 += v123;
      --v117;
    }

    while (v117);

    v32 = v118;
  }

  else
  {
  }

  sub_1DD6404C8();
  v135 = v143;
  sub_1DD63F9A8();
  sub_1DD41BFFC(v135);
  return v32;
}