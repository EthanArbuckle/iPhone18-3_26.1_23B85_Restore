uint64_t sub_1D87C0ED8(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1D87C0F90(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D8B12D30();
  swift_allocObject();
  result = sub_1D8B12CF0();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D8B13020();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_1D87C100C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_1D8B12D30();
  swift_allocObject();
  result = sub_1D8B12CF0();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1D87C1090(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63130);
  v10 = sub_1D87C140C();
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1D87C0DFC(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_1D87C1140(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D87C1188()
{
  result = qword_1ECA63108;
  if (!qword_1ECA63108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63108);
  }

  return result;
}

uint64_t sub_1D87C11DC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D87C123C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D87C12A4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D87A1598(a1, a2);
  }

  return a1;
}

unint64_t sub_1D87C12C0()
{
  result = qword_1EE0E3A40;
  if (!qword_1EE0E3A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E3A40);
  }

  return result;
}

unint64_t sub_1D87C1314()
{
  result = qword_1EE0E3730;
  if (!qword_1EE0E3730)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0E3730);
  }

  return result;
}

uint64_t sub_1D87C1360(uint64_t a1, unint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63120);

  return sub_1D87BD8BC(a1, a2, a3);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D87C140C()
{
  result = qword_1ECA63138;
  if (!qword_1ECA63138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63130);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63138);
  }

  return result;
}

uint64_t sub_1D87C1470(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1D87C14D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D87C1544(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy_category.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

unint64_t visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy_category.description.getter()
{
  result = 0x5F736C616D696E41;
  switch(*v0)
  {
    case 1:
    case 0x14:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 1601466945;
      break;
    case 3:
      result = 0x5F736B6F6F42;
      break;
    case 4:
      result = 0x746E656D75636F44;
      break;
    case 5:
      result = 0x6E6F727463656C45;
      break;
    case 6:
      result = 1685024582;
      break;
    case 7:
      result = 0x6F6F475F656D6F48;
      break;
    case 8:
      result = 0x6E616D7548;
      break;
    case 9:
      result = 0x6B72616D646E614CLL;
      break;
    case 0xA:
      result = 0xD000000000000013;
      break;
    case 0xB:
      result = 0xD000000000000011;
      break;
    case 0xC:
      result = 0x646567616B636150;
      break;
    case 0xD:
      result = 0xD000000000000011;
      break;
    case 0xE:
      result = 0xD000000000000011;
      break;
    case 0xF:
    case 0x13:
      result = 0xD000000000000010;
      break;
    case 0x10:
      result = 0xD000000000000025;
      break;
    case 0x11:
      result = 0x6765722074786574;
      break;
    case 0x12:
      result = 0xD000000000000011;
      break;
    default:
      return result;
  }

  return result;
}

VisualIntelligenceCore::visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy_optional __swiftcall visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.init(rawValue:)(Swift::Int rawValue)
{
  v2 = rawValue - 128;
  if (rawValue >= 0x80)
  {
    v3 = -93;
    LOBYTE(rawValue) = 0x80;
    switch(v2)
    {
      case 0:
        goto LABEL_2;
      case 1:
        LOBYTE(rawValue) = -127;
        *v1 = -127;
        return rawValue;
      case 2:
        LOBYTE(rawValue) = -126;
        *v1 = -126;
        return rawValue;
      case 3:
        LOBYTE(rawValue) = -125;
        *v1 = -125;
        return rawValue;
      case 4:
        LOBYTE(rawValue) = -124;
        *v1 = -124;
        return rawValue;
      case 5:
        LOBYTE(rawValue) = -123;
        *v1 = -123;
        return rawValue;
      case 6:
        LOBYTE(rawValue) = -122;
        *v1 = -122;
        return rawValue;
      case 7:
        LOBYTE(rawValue) = -121;
        *v1 = -121;
        return rawValue;
      case 8:
        LOBYTE(rawValue) = -120;
        *v1 = -120;
        return rawValue;
      case 9:
        LOBYTE(rawValue) = -119;
        *v1 = -119;
        return rawValue;
      case 10:
        LOBYTE(rawValue) = -118;
        *v1 = -118;
        return rawValue;
      case 11:
        LOBYTE(rawValue) = -117;
        *v1 = -117;
        return rawValue;
      case 12:
        LOBYTE(rawValue) = -116;
        *v1 = -116;
        return rawValue;
      case 13:
        LOBYTE(rawValue) = -115;
        *v1 = -115;
        return rawValue;
      case 14:
        LOBYTE(rawValue) = -114;
        *v1 = -114;
        return rawValue;
      case 15:
        LOBYTE(rawValue) = -113;
        *v1 = -113;
        return rawValue;
      case 16:
        LOBYTE(rawValue) = -112;
        *v1 = -112;
        return rawValue;
      case 17:
        LOBYTE(rawValue) = -111;
        *v1 = -111;
        return rawValue;
      case 18:
        LOBYTE(rawValue) = -110;
        *v1 = -110;
        return rawValue;
      case 19:
        LOBYTE(rawValue) = -109;
        *v1 = -109;
        return rawValue;
      case 20:
        LOBYTE(rawValue) = -108;
        *v1 = -108;
        return rawValue;
      case 21:
        LOBYTE(rawValue) = -107;
        *v1 = -107;
        return rawValue;
      case 22:
        LOBYTE(rawValue) = -106;
        *v1 = -106;
        return rawValue;
      case 23:
        LOBYTE(rawValue) = -105;
        *v1 = -105;
        return rawValue;
      case 24:
        LOBYTE(rawValue) = -104;
        *v1 = -104;
        return rawValue;
      case 25:
        LOBYTE(rawValue) = -103;
        *v1 = -103;
        return rawValue;
      case 26:
        LOBYTE(rawValue) = -102;
        *v1 = -102;
        return rawValue;
      case 27:
        LOBYTE(rawValue) = -101;
        *v1 = -101;
        return rawValue;
      case 28:
        LOBYTE(rawValue) = -100;
        *v1 = -100;
        return rawValue;
      case 29:
        LOBYTE(rawValue) = -99;
        *v1 = -99;
        return rawValue;
      case 30:
        LOBYTE(rawValue) = -98;
        *v1 = -98;
        return rawValue;
      case 31:
        LOBYTE(rawValue) = -97;
        *v1 = -97;
        return rawValue;
      case 32:
        LOBYTE(rawValue) = -96;
        *v1 = -96;
        return rawValue;
      case 33:
        LOBYTE(rawValue) = -95;
        *v1 = -95;
        return rawValue;
      case 34:
        LOBYTE(rawValue) = -94;
        *v1 = -94;
        return rawValue;
      case 35:
        goto LABEL_56;
      case 36:
        *v1 = -92;
        return rawValue;
      case 37:
        *v1 = -91;
        return rawValue;
      case 38:
        *v1 = -90;
        return rawValue;
      case 39:
        *v1 = -89;
        return rawValue;
      case 40:
        *v1 = -88;
        return rawValue;
      case 41:
        *v1 = -87;
        return rawValue;
      case 42:
        *v1 = -86;
        return rawValue;
      case 43:
        *v1 = -85;
        return rawValue;
      case 44:
        *v1 = -84;
        return rawValue;
      case 45:
        *v1 = -83;
        return rawValue;
      case 46:
        *v1 = -82;
        return rawValue;
      case 47:
        *v1 = -81;
        return rawValue;
      case 48:
        *v1 = -80;
        return rawValue;
      case 49:
        *v1 = -79;
        return rawValue;
      case 50:
        *v1 = -78;
        return rawValue;
      case 51:
        *v1 = -77;
        return rawValue;
      case 52:
        *v1 = -76;
        return rawValue;
      default:
        v3 = -75;
LABEL_56:
        *v1 = v3;
        break;
    }
  }

  else
  {
LABEL_2:
    *v1 = rawValue;
  }

  return rawValue;
}

uint64_t visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy.description.getter()
{
  result = 0x656E616C70726961;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      return 0x6169626968706D61;
    case 4:
    case 0x59:
      return 0xD000000000000016;
    case 5:
      return 0x636E61696C707061;
    case 6:
      v5 = 1769239137;
      return v5 | 0x6369747300000000;
    case 7:
    case 0x13:
    case 0x49:
    case 0x78:
    case 0x84:
      return 0xD000000000000011;
    case 8:
      return 1936154978;
    case 9:
      return 0x72656E6E6162;
    case 0xA:
      return 0x65646F63726162;
    case 0xB:
      return 0x6863616562;
    case 0xC:
      return 0x7365696E616562;
    case 0xD:
      return 6579554;
    case 0xE:
      return 0x73746C6562;
    case 0xF:
      return 0x656C6379636962;
    case 0x10:
      return 0x72616F626C6C6962;
    case 0x11:
      return 1685219682;
    case 0x12:
      return 0x6820732764726962;
    case 0x14:
      v3 = 0x626B63616C62;
      goto LABEL_94;
    case 0x15:
      v4 = 1970236514;
      return v4 | 0x73657300000000;
    case 0x16:
      return 0x676E696472616F62;
    case 0x17:
      return 1952542562;
    case 0x18:
      return 0x20666F2079646F62;
    case 0x19:
      return 1802465122;
    case 0x1A:
      return 0x676170206B6F6F62;
    case 0x1B:
      return 0x656873206B6F6F62;
    case 0x1C:
      return 0x6F6C20646E617262;
    case 0x1D:
      return 0x656764697262;
    case 0x1E:
      return 0x676E69646C697562;
    case 0x1F:
      return 0x7373656E69737562;
    case 0x20:
      return 0x74656E69626163;
    case 0x21:
      return 0x7261646E656C6163;
    case 0x22:
      v2 = 1768841571;
      goto LABEL_160;
    case 0x23:
      return 0xD000000000000013;
    case 0x24:
      return 7496035;
    case 0x25:
      return 1685217635;
    case 0x26:
      return 0x6E61676964726163;
    case 0x27:
      return 1752392035;
    case 0x28:
      return 0x656C74736163;
    case 0x29:
      return 0x7472616863;
    case 0x2A:
      return 0x6B63656863;
    case 0x2B:
      return 0x686372756863;
    case 0x2C:
      return 0x7374616F63;
    case 0x2D:
      return 0x6567616C6C6F63;
    case 0x2E:
      return 0x656E6961746E6F63;
    case 0x2F:
      return 0x662064656B6F6F63;
    case 0x30:
      return 0x6C61726F63;
    case 0x31:
      return 0x73656D7574736F63;
    case 0x32:
      return 0x726F636564;
    case 0x33:
      return 0x74726573736564;
    case 0x34:
      return 0x6D617267616964;
    case 0x35:
      return 0x617772656E6E6964;
    case 0x36:
      return 0x727561736F6E6964;
    case 0x37:
      return 0xD000000000000015;
    case 0x38:
      return 0x746E656D75636F64;
    case 0x39:
    case 0x3C:
      v5 = 1701670756;
      return v5 | 0x6369747300000000;
    case 0x3A:
      return 0xD000000000000013;
    case 0x3B:
    case 0x3E:
      return 0xD000000000000019;
    case 0x3D:
      return 0xD000000000000013;
    case 0x3F:
      v7 = 2002874980;
      goto LABEL_64;
    case 0x40:
      v4 = 1936028260;
      return v4 | 0x73657300000000;
    case 0x41:
      return 0x6B6E697264;
    case 0x42:
      return 0x20676E6976697264;
    case 0x43:
      return 6583908;
    case 0x44:
      return 0x65706F6C65766E65;
    case 0x45:
      return 0x72616577657965;
    case 0x46:
      v2 = 1768711526;
LABEL_160:
      v6 = v2 & 0xFFFF0000FFFFFFFFLL | 0x656E00000000;
      goto LABEL_161;
    case 0x47:
      return 0xD000000000000013;
    case 0x48:
      return 1752394054;
    case 0x4A:
      return 0x7265776F6C66;
    case 0x4B:
      return 0x7265796C66;
    case 0x4C:
      return 0x6E6961746E756F66;
    case 0x4D:
      return 0x6F6373657266;
    case 0x4E:
      return 0x737469757246;
    case 0x4F:
      return 0x7365766F6C67;
    case 0x50:
      return 0x7320726F62726168;
    case 0x51:
    case 0x58:
      return 0xD000000000000012;
    case 0x52:
      return 0xD000000000000018;
    case 0x53:
      return 0x6E616D7548;
    case 0x54:
      return 0xD000000000000013;
    case 0x55:
    case 0x56:
    case 0x57:
      return 0x2073276E616D7568;
    case 0x5A:
      return 0x61727473756C6C69;
    case 0x5B:
      return 0x6574616D69746E69;
    case 0x5C:
      return 0x6265747265766E69;
    case 0x5D:
      return 0x79726C6577656ALL;
    case 0x5E:
      return 0x5F7972646E75616CLL;
    case 0x5F:
      return 0x746867696CLL;
    case 0x60:
      return 0xD00000000000001CLL;
    case 0x61:
      return 0x736E656E696CLL;
    case 0x62:
      return 0x656E697A6167616DLL;
    case 0x63:
      return 0x6C616D6D616DLL;
    case 0x64:
      v6 = 0x6C616D6D616DLL;
      goto LABEL_161;
    case 0x65:
      return 0xD000000000000013;
    case 0x66:
      return 7364973;
    case 0x67:
      return 0xD000000000000013;
    case 0x68:
      return 0xD000000000000020;
    case 0x69:
      return 0x6D20656E6972616DLL;
    case 0x6A:
    case 0x8D:
    case 0x9B:
      return 0xD000000000000014;
    case 0x6B:
      return 0xD00000000000001ALL;
    case 0x6C:
      return 1970169197;
    case 0x6D:
      return 0x79656B6E6F6DLL;
    case 0x6E:
      v6 = 0x79656B6E6F6DLL;
LABEL_161:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x7327000000000000;
      break;
    case 0x6F:
      result = 0xD000000000000013;
      break;
    case 0x70:
      result = 0x657571736F6DLL;
      break;
    case 0x71:
      result = 0x637963726F746F6DLL;
      break;
    case 0x72:
      result = 0x6E6961746E756F6DLL;
      break;
    case 0x73:
      result = 0x6D6F6F726873756DLL;
      break;
    case 0x74:
      result = 0x657061707377656ELL;
      break;
    case 0x75:
      result = 0x6F6974697274756ELL;
      break;
    case 0x76:
      result = 0x625F65636966666FLL;
      break;
    case 0x77:
      result = 0x6E6167726FLL;
      break;
    case 0x79:
      result = 0x676E69746E696170;
      break;
    case 0x7A:
      result = 0x5F676E696B726170;
      break;
    case 0x7B:
      result = 0x79646F726170;
      break;
    case 0x7C:
      result = 0x74726F7073736170;
      break;
    case 0x7D:
      result = 0x6172676F746F6870;
      break;
    case 0x80:
      result = 0x746E616C70;
      break;
    case 0x81:
      result = 0x657620746E616C70;
      break;
    case 0x82:
      result = 0x6620646574616C70;
      break;
    case 0x83:
      result = 0x7469757379616C70;
      break;
    case 0x85:
      result = 0x726574736F70;
      break;
    case 0x86:
      result = 0x7020646574746F70;
      break;
    case 0x87:
      result = 0x6465726170657270;
      break;
    case 0x88:
      result = 0x6174206563697270;
      break;
    case 0x89:
      result = 0x656375646F7270;
      break;
    case 0x8A:
      result = 0x74706965636572;
      break;
    case 0x8C:
      result = 0x656C6974706572;
      break;
    case 0x8E:
      result = 0x7265766972;
      break;
    case 0x8F:
      result = 1801678706;
      break;
    case 0x90:
      result = 0x726F665F6B636F72;
      break;
    case 0x91:
      result = 1852405106;
      break;
    case 0x92:
      result = 0x727574706C756373;
      break;
    case 0x93:
      v7 = 1952540019;
LABEL_64:
      result = v7 | 0x676E6900000000;
      break;
    case 0x94:
      result = 0x73656F6873;
      break;
    case 0x95:
      result = 0x7374726F6873;
      break;
    case 0x96:
      result = 1852270963;
      break;
    case 0x97:
      result = 0x737472696B73;
      break;
    case 0x98:
      result = 0x656E696C796B73;
      break;
    case 0x99:
      result = 0x7061726373796B73;
      break;
    case 0x9A:
      result = 0x6C69616E73;
      break;
    case 0x9C:
      result = 0x6F726665726F7473;
      break;
    case 0x9D:
      result = 0x726165776D697773;
      break;
    case 0x9E:
      result = 0x656C626174;
      break;
    case 0x9F:
      result = 1751344500;
      break;
    case 0xA0:
      result = 0x6765722074786574;
      break;
    case 0xA1:
      result = 0x20656C6974786574;
      break;
    case 0xA2:
      result = 0x74656B636974;
      break;
    case 0xA3:
      result = 1936025940;
      break;
    case 0xA4:
      result = 0x6E6F7473626D6F74;
      break;
    case 0xA5:
      result = 0x7265776F74;
      break;
    case 0xA6:
      result = 1937338228;
      break;
    case 0xA7:
      result = 0x6E69617274;
      break;
    case 0xA8:
      result = 1701147252;
      break;
    case 0xA9:
      result = 0x73726573756F7274;
      break;
    case 0xAA:
      result = 0x6B63757274;
      break;
    case 0xAC:
      result = 0x79656C6C6176;
      break;
    case 0xAD:
      result = 0x6C62617465676576;
      break;
    case 0xAE:
      result = 0x6C61667265746177;
      break;
    case 0xAF:
      v3 = 0x626574696877;
LABEL_94:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x616F000000000000;
      break;
    case 0xB0:
      result = 0x666E692069666977;
      break;
    case 0xB1:
      result = 0x74616320646C6977;
      break;
    case 0xB2:
      result = 0x676F6420646C6977;
      break;
    case 0xB3:
      result = 0x7370617257;
      break;
    case 0xB4:
      result = 0x7461777473697277;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t sub_1D87C2C40(uint64_t a1)
{
  v2 = type metadata accessor for HighResolutionStillBarrier.ActionExecution();
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D87C5A7C(qword_1EE0E4AE8, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
  result = MEMORY[0x1DA71F530](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D87C5B9C(v8, type metadata accessor for HighResolutionStillBarrier.ActionExecution))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D87C5B34(*(a1 + 48) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    sub_1D87C590C(v10, v5, type metadata accessor for HighResolutionStillBarrier.ActionExecution);
    sub_1D87F8A38(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D87C2E84(uint64_t a1)
{
  result = MEMORY[0x1DA71F530](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1D87F88E8(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D87C2FA0(uint64_t a1)
{
  v2 = sub_1D8B13240();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v25 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D87C5A7C(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1DA71F530](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_1D87FC15C(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D87C3200(uint64_t a1)
{
  v2 = sub_1D8B13240();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v48 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v37 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v37 - v11;
  v13 = sub_1D87C5A7C(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1DA71F530](0, v2, v13);
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v52 = result;
  v49 = (v3 + 56);
  v50 = v12;
  v43 = v3 + 16;
  v44 = v3;
  v19 = (v3 + 48);
  v45 = (v3 + 8);
  v46 = (v3 + 32);
  v38 = a1 + 32;
  v39 = a1;
  v20 = 0xF000000000000007;
  while (1)
  {
    v51 = v20;
    v42 = v15;
    if ((~v20 & 0xF000000000000007) == 0)
    {
      goto LABEL_19;
    }

    v41 = v18;
    v21 = 0;
    v22 = (v15 + 64) >> 6;
    if (!v17)
    {
      break;
    }

    while (1)
    {
      v23 = v21;
      v12 = v50;
LABEL_12:
      v26 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      (*(v44 + 16))(v10, *(v51 + 48) + *(v44 + 72) * (v26 | (v23 << 6)), v2);
      v27 = 0;
      v25 = v23;
LABEL_13:
      (*v49)(v10, v27, 1, v2);
      v28 = *v19;
      if ((*v19)(v10, 1, v2) == 1)
      {
        break;
      }

      sub_1D87C589C(v10, v12);
      if (v28(v12, 1, v2) == 1)
      {
        goto LABEL_27;
      }

      v29 = v48;
      (*v46)(v48, v12, v2);
      v30 = v47;
      sub_1D87FC15C(v47, v29);
      (*v45)(v30, v2);
      v21 = v25;
      if (!v17)
      {
        goto LABEL_5;
      }
    }

    result = sub_1D87A14E4(v10, &qword_1ECA63178);
    v18 = v41;
LABEL_19:
    v31 = *(v39 + 16);
    if (v18 == v31)
    {
      goto LABEL_26;
    }

    if (v18 >= v31)
    {
      __break(1u);
      return result;
    }

    v20 = *(v38 + 8 * v18);
    v32 = v18 + 1;
    v33 = -1 << *(v20 + 32);
    v34 = *(v20 + 56);
    v41 = ~v33;
    v35 = -v33;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v40 = v36 & v34;

    result = sub_1D87C5888(v51);
    v17 = v40;
    v15 = v41;
    v16 = v20 + 56;
    v18 = v32;
  }

LABEL_5:
  if (v22 <= v21 + 1)
  {
    v24 = v21 + 1;
  }

  else
  {
    v24 = v22;
  }

  v25 = v24 - 1;
  v12 = v50;
  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v22)
    {
      v17 = 0;
      v27 = 1;
      goto LABEL_13;
    }

    v17 = *(v16 + 8 * v23);
    ++v21;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  (*v49)(v12, 1, 1, v2);
LABEL_27:

  sub_1D87C5888(v51);
  return v52;
}

uint64_t sub_1D87C3660(uint64_t a1)
{
  result = MEMORY[0x1DA71F530](*(a1 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v3 = 0;
  v11 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = sub_1D87FE178(&v10, *(*(a1 + 48) + ((v8 << 9) | (8 * v9)))))
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v11;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D87C3758(uint64_t a1)
{
  v2 = type metadata accessor for TrackManager.TrackedProcessorState(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D87C5A7C(qword_1EE0E8DC8, type metadata accessor for TrackManager.TrackedProcessorState);
  result = MEMORY[0x1DA71F530](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D87C5B9C(v8, type metadata accessor for TrackManager.TrackedProcessorState))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D87C5B34(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for TrackManager.TrackedProcessorState);
    sub_1D87C590C(v10, v5, type metadata accessor for TrackManager.TrackedProcessorState);
    sub_1D87FE740(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D87C39A0(uint64_t a1)
{
  v2 = type metadata accessor for DetectionRequest.Originator(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C5A7C(qword_1EE0E6A48, type metadata accessor for DetectionRequest.Originator);
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D87C5B34(v12, v6, type metadata accessor for DetectionRequest.Originator);
      sub_1D87FD68C(v8, v6);
      sub_1D87C5B9C(v8, type metadata accessor for DetectionRequest.Originator);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

unint64_t sub_1D87C3B64()
{
  result = qword_1ECA63148;
  if (!qword_1ECA63148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63148);
  }

  return result;
}

unint64_t sub_1D87C3BBC()
{
  result = qword_1ECA63150;
  if (!qword_1ECA63150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63150);
  }

  return result;
}

unint64_t sub_1D87C3C14()
{
  result = qword_1ECA63158;
  if (!qword_1ECA63158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63158);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy_category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy_category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x4C)
  {
    goto LABEL_17;
  }

  if (a2 + 180 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 180) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 180;
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

      return (*a1 | (v4 << 8)) - 180;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 180;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB5;
  v8 = v6 - 181;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for visualgrounding_unfreeze_expose_embedding_v6_1_u3dkyh9ewx_epoch_20_categorynumber181_palettizedTaxonomy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 180 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 180) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x4C)
  {
    v4 = 0;
  }

  if (a2 > 0x4B)
  {
    v5 = ((a2 - 76) >> 8) + 1;
    *result = a2 - 76;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 - 76;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D87C3F18(uint64_t a1)
{
  v2 = type metadata accessor for BuiltInAction(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C5A7C(&qword_1EE0E8868, type metadata accessor for BuiltInAction);
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D87C5B34(v12, v6, type metadata accessor for BuiltInAction);
      sub_1D87F7CD4(v8, v6);
      sub_1D87C5B9C(v8, type metadata accessor for BuiltInAction);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D87C40D8(uint64_t a1)
{
  v2 = type metadata accessor for ActionPin(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C5A7C(qword_1EE0E3CB0, type metadata accessor for ActionPin);
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D87C5B34(v12, v6, type metadata accessor for ActionPin);
      sub_1D87F8448(v8, v6);
      sub_1D87C5B9C(v8, type metadata accessor for ActionPin);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D87C4264(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA71F530](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D87F88E8(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D87C42FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C59C8();
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D87C5AC4(v12, v6);
      sub_1D87F93C8(v8, v6);
      sub_1D87A14E4(v8, &qword_1ECA63188);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D87C4460(uint64_t a1)
{
  v2 = type metadata accessor for CVBundle(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C5A7C(qword_1EE0E4108, type metadata accessor for CVBundle);
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D87C5B34(v12, v6, type metadata accessor for CVBundle);
      sub_1D87F99C4(v8, v6);
      sub_1D87C5B9C(v8, type metadata accessor for CVBundle);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D87C45EC(uint64_t a1)
{
  v2 = type metadata accessor for DetectionRequest.Annotation(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C5A7C(&qword_1EE0E6B20, type metadata accessor for DetectionRequest.Annotation);
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D87C5B34(v12, v6, type metadata accessor for DetectionRequest.Annotation);
      sub_1D87FA2C0(v8, v6);
      sub_1D87C5B9C(v8, type metadata accessor for DetectionRequest.Annotation);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D87C4778(uint64_t a1)
{
  v2 = type metadata accessor for ProcessorState(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C5A7C(qword_1EE0E7CA8, type metadata accessor for ProcessorState);
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D87C5B34(v12, v6, type metadata accessor for ProcessorState);
      sub_1D87FB5F4(v8, v6);
      sub_1D87C5B9C(v8, type metadata accessor for ProcessorState);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

unint64_t sub_1D87C4938()
{
  result = qword_1EE0E91A0;
  if (!qword_1EE0E91A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E91A0);
  }

  return result;
}

uint64_t sub_1D87C498C(uint64_t a1)
{
  v2 = type metadata accessor for DetectionRequest(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C5A7C(qword_1EE0E6980, type metadata accessor for DetectionRequest);
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D87C5B34(v12, v6, type metadata accessor for DetectionRequest);
      sub_1D87FB834(v8, v6);
      sub_1D87C5B9C(v8, type metadata accessor for DetectionRequest);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D87C4B18(uint64_t a1)
{
  v2 = sub_1D8B13240();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C5A7C(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1D87FC15C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D87C4CE8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1DA71F530](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_1D87C4D68(uint64_t a1)
{
  v2 = sub_1D8B15240();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C5A7C(&qword_1EE0E3A90, MEMORY[0x1E69E01E8]);
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1D87FCD50(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D87C4F04(uint64_t a1)
{
  v2 = sub_1D8B152F0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C5A7C(&qword_1EE0E3A70, MEMORY[0x1E69E0248]);
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1D87FCA70(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D87C50A0(uint64_t a1)
{
  v2 = type metadata accessor for BundleClassification.ClassificationType(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C5A7C(qword_1EE0E57F8, type metadata accessor for BundleClassification.ClassificationType);
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D87C5B34(v12, v6, type metadata accessor for BundleClassification.ClassificationType);
      sub_1D87F8208(v8, v6);
      sub_1D87C5B9C(v8, type metadata accessor for BundleClassification.ClassificationType);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D87C522C(uint64_t a1)
{
  v2 = sub_1D8B13AD0();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C5A7C(&qword_1ECA63170, MEMORY[0x1E69E03D8]);
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1D87FDE98(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D87C53C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA71F530](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D87FE178(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D87C543C(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = sub_1D8B16610();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = type metadata accessor for CVTrackedDetection(0);
  v5 = sub_1D87C5A7C(&qword_1EE0E62B8, type metadata accessor for CVTrackedDetection);
  result = MEMORY[0x1DA71F530](v3, v4, v5);
  v12 = result;
  if (!i)
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1DA71FC20](i, a1);
        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v12;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v9 = *(a1 + 8 * i + 32);

        v10 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_1D87FE258(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }
  }

  v8 = result;
  v7 = sub_1D8B16610();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1D87C55A8(uint64_t a1)
{
  v2 = type metadata accessor for CVTrackSnapshot(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D87C5A7C(&qword_1ECA63168, type metadata accessor for CVTrackSnapshot);
  result = MEMORY[0x1DA71F530](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D87C5B34(v12, v6, type metadata accessor for CVTrackSnapshot);
      sub_1D87FD030(v8, v6);
      sub_1D87C5B9C(v8, type metadata accessor for CVTrackSnapshot);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D87C5734(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D87C5834();
  result = MEMORY[0x1DA71F530](v2, &type metadata for CVDetection, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;

      sub_1D87FE4F0(&v7, v6);

      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D87C57C0(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1DA71F530](v2, MEMORY[0x1E69E63B0], MEMORY[0x1E69E63D0]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D87FE64C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1D87C5834()
{
  result = qword_1EE0E9190;
  if (!qword_1EE0E9190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E9190);
  }

  return result;
}

uint64_t sub_1D87C5888(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1D87977A0();
  }

  return result;
}

uint64_t sub_1D87C589C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63178);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D87C590C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D87C5974()
{
  result = qword_1ECA63180;
  if (!qword_1ECA63180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63180);
  }

  return result;
}

unint64_t sub_1D87C59C8()
{
  result = qword_1EE0E8820;
  if (!qword_1EE0E8820)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63188);
    sub_1D87C5A7C(&qword_1EE0E8868, type metadata accessor for BuiltInAction);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E8820);
  }

  return result;
}

uint64_t sub_1D87C5A7C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1D87C5AC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63188);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D87C5B34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D87C5B9C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D87C5BFC()
{
  result = qword_1ECA63190;
  if (!qword_1ECA63190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63190);
  }

  return result;
}

unint64_t sub_1D87C5C50()
{
  result = qword_1ECA63198;
  if (!qword_1ECA63198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63198);
  }

  return result;
}

uint64_t sub_1D87C5CBC()
{
  type metadata accessor for GoogleImageSearchRateLimiter();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v0 + 112) = 60;
  *(v0 + 120) = xmmword_1D8B1E6C0;
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 136) = 0x4024000000000000;
  *(v0 + 144) = v1;
  v2 = OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_blockStartTime;
  v3 = sub_1D8B131D0();
  v4 = *(*(v3 - 8) + 56);
  v4(v0 + v2, 1, 1, v3);
  result = (v4)(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_lastRequestTime, 1, 1, v3);
  qword_1ECA631A0 = v0;
  return result;
}

uint64_t static GoogleImageSearchRateLimiter.shared.getter()
{
  if (qword_1ECA620C0 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D87C5DFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v62 = &v58 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v58 - v8;
  v10 = sub_1D8B131D0();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v65 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v66 = &v58 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v61 = &v58 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v58 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v58 - v24;
  sub_1D8B131C0();
  v26 = OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_blockStartTime;
  swift_beginAccess();
  v63 = v26;
  sub_1D87C65F0(v1 + v26, v9);
  v27 = *(v11 + 48);
  if (v27(v9, 1, v10) == 1)
  {
    v64 = v25;
    sub_1D87C6660(v9);
    goto LABEL_10;
  }

  v60 = v5;
  v59 = *(v11 + 32);
  v59(v23, v9, v10);
  sub_1D8B13110();
  sub_1D87C78C0();
  if (sub_1D8B15820())
  {
    v28 = *(v11 + 8);
    v28(v20, v10);
    v28(v23, v10);
    v28(v25, v10);
    return 0;
  }

  v64 = v25;
  v29 = OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_lastRequestTime;
  swift_beginAccess();
  v30 = v62;
  sub_1D87C65F0(v1 + v29, v62);
  if (v27(v30, 1, v10) == 1)
  {
    v31 = *(v11 + 8);
    v31(v20, v10);
    v31(v23, v10);
    sub_1D87C6660(v30);
  }

  else
  {
    v32 = v61;
    v33 = v30;
    v34 = v59;
    v59(v61, v33, v10);
    sub_1D8B13090();
    v36 = v35;
    v37 = *(v11 + 8);
    v37(v32, v10);
    v37(v20, v10);
    v37(v23, v10);
    if (v36 < 10.0)
    {
      v38 = v60;
      v34(v60, v64, v10);
      (*(v11 + 56))(v38, 0, 1, v10);
      v39 = v63;
      swift_beginAccess();
      sub_1D87C69C8(v38, v1 + v39);
      swift_endAccess();
      return 0;
    }
  }

  v5 = v60;
  (*(v11 + 56))(v60, 1, 1, v10);
  v40 = v63;
  swift_beginAccess();
  sub_1D87C69C8(v5, v1 + v40);
  swift_endAccess();
LABEL_10:
  v41 = v66;
  v42 = v64;
  v43 = sub_1D8B13110();
  v44 = *(v1 + 144);
  MEMORY[0x1EEE9AC00](v43);
  *(&v58 - 2) = v41;

  *(v1 + 144) = sub_1D87C66F8(sub_1D87C66C8, (&v58 - 4), v44);

  v45 = *(v1 + 144);
  v46 = v45[2];
  v47 = *(v11 + 16);
  if (v46 > 0x3B)
  {
    v47(v5, v42, v10);
    v55 = *(v11 + 56);
    v55(v5, 0, 1, v10);
    v56 = v63;
    swift_beginAccess();
    sub_1D87C69C8(v5, v1 + v56);
    swift_endAccess();
    (*(v11 + 32))(v5, v42, v10);
    v55(v5, 0, 1, v10);
    v57 = OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_lastRequestTime;
    swift_beginAccess();
    sub_1D87C69C8(v5, v1 + v57);
    swift_endAccess();
    (*(v11 + 8))(v41, v10);
    return 0;
  }

  v47(v65, v42, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 144) = v45;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v45 = sub_1D87C9FE4(0, v46 + 1, 1, v45, &qword_1ECA63510, &unk_1D8B23100, MEMORY[0x1E6969530]);
    *(v1 + 144) = v45;
  }

  v50 = v45[2];
  v49 = v45[3];
  if (v50 >= v49 >> 1)
  {
    v45 = sub_1D87C9FE4(v49 > 1, v50 + 1, 1, v45, &qword_1ECA63510, &unk_1D8B23100, MEMORY[0x1E6969530]);
  }

  v45[2] = v50 + 1;
  v51 = v45 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v50;
  v52 = *(v11 + 32);
  v52(v51, v65, v10);
  *(v1 + 144) = v45;
  v52(v5, v42, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  v53 = OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_lastRequestTime;
  swift_beginAccess();
  sub_1D87C69C8(v5, v1 + v53);
  swift_endAccess();
  (*(v11 + 8))(v41, v10);
  return 1;
}

uint64_t sub_1D87C65F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D87C6660(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D87C66F8(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_1D8B131D0();
  v7 = MEMORY[0x1EEE9AC00](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x1E69E7CC0];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D87F3E9C(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_1D87F3E9C(v25 > 1, v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_1D87C69C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D87C6AE0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), void (*a6)(BOOL, uint64_t, uint64_t))
{
  v23 = a6;
  v29 = a1;
  v30 = a2;
  v9 = a4(0);
  v28 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v27 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v26 = *(a3 + 16);
  if (v26)
  {
    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v24 = a5;
    v25 = a3;
    while (v15 < *(a3 + 16))
    {
      v17 = (*(v28 + 80) + 32) & ~*(v28 + 80);
      v18 = *(v28 + 72);
      sub_1D87CA870(a3 + v17 + v18 * v15, v14, a5);
      v19 = v29(v14);
      if (v6)
      {
        sub_1D87CA8D8(v14, a5);

        goto LABEL_15;
      }

      if (v19)
      {
        sub_1D87CA938(v14, v27, a5);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v31 = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v23(0, *(v16 + 16) + 1, 1);
          v16 = v31;
        }

        v22 = *(v16 + 16);
        v21 = *(v16 + 24);
        if (v22 >= v21 >> 1)
        {
          v23(v21 > 1, v22 + 1, 1);
          v16 = v31;
        }

        *(v16 + 16) = v22 + 1;
        a5 = v24;
        result = sub_1D87CA938(v27, v16 + v17 + v22 * v18, v24);
        a3 = v25;
      }

      else
      {
        result = sub_1D87CA8D8(v14, a5);
      }

      if (v26 == ++v15)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v16;
  }

  return result;
}

uint64_t sub_1D87C6D88(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x1E69E7CC0];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1D87F3F54(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_1D87F3F54((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t sub_1D87C6F00(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v13 = result;
    while (v7 < *(a3 + 16))
    {
      v14 = *(a3 + 8 * v7 + 32);

      v9 = v6(&v14);
      if (v3)
      {

        return v8;
      }

      v10 = v14;
      if (v9)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v15 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1D87F43E0(0, *(v8 + 16) + 1, 1);
          v8 = v15;
        }

        v12 = *(v8 + 16);
        v11 = *(v8 + 24);
        if (v12 >= v11 >> 1)
        {
          result = sub_1D87F43E0((v11 > 1), v12 + 1, 1);
          v8 = v15;
        }

        *(v8 + 16) = v12 + 1;
        *(v8 + 8 * v12 + 32) = v10;
        v6 = v13;
      }

      else
      {
      }

      if (v5 == ++v7)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v8;
  }

  return result;
}

void *sub_1D87C7118(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1D8B16610();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x1DA71FC20](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1D8B167E0();
          sub_1D8B16820();
          v5 = v14;
          sub_1D8B16830();
          v3 = &v18;
          sub_1D8B167F0();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

uint64_t sub_1D87C72D4(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v6 = result;
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (v7 < *(a3 + 16))
    {
      v11 = *(a3 + 8 * v7 + 32);
      v12 = v11;
      result = v6(&v12);
      if (v3)
      {

        goto LABEL_15;
      }

      if (result)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v13 = v8;
        if ((result & 1) == 0)
        {
          result = sub_1D87F4140(0, *(v8 + 16) + 1, 1);
          v8 = v13;
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          result = sub_1D87F4140((v9 > 1), v10 + 1, 1);
          v8 = v13;
        }

        *(v8 + 16) = v10 + 1;
        *(v8 + 8 * v10 + 32) = v11;
      }

      if (v5 == ++v7)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_15:

    return v8;
  }

  return result;
}

uint64_t sub_1D87C742C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  *(v0 + 144) = MEMORY[0x1E69E7CC0];

  v4 = sub_1D8B131D0();
  v5 = *(*(v4 - 8) + 56);
  v5(v3, 1, 1, v4);
  v6 = OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_blockStartTime;
  swift_beginAccess();
  sub_1D87C69C8(v3, v0 + v6);
  swift_endAccess();
  v5(v3, 1, 1, v4);
  v7 = OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_lastRequestTime;
  swift_beginAccess();
  sub_1D87C69C8(v3, v0 + v7);
  return swift_endAccess();
}

uint64_t sub_1D87C7580()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631A8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_1D8B131D0();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v16 - v9;
  v11 = OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_blockStartTime;
  swift_beginAccess();
  sub_1D87C65F0(v0 + v11, v3);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1D87C6660(v3);
  }

  else
  {
    (*(v5 + 32))(v10, v3, v4);
    sub_1D8B13110();
    sub_1D8B13160();
    v13 = v12;
    v14 = *(v5 + 8);
    v14(v8, v4);
    v14(v10, v4);
    if (v13 > 0.0)
    {
      return *&v13;
    }
  }

  return 0;
}

uint64_t GoogleImageSearchRateLimiter.deinit()
{

  sub_1D87C6660(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_blockStartTime);
  sub_1D87C6660(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_lastRequestTime);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t GoogleImageSearchRateLimiter.__deallocating_deinit()
{

  sub_1D87C6660(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_blockStartTime);
  sub_1D87C6660(v0 + OBJC_IVAR____TtC22VisualIntelligenceCore28GoogleImageSearchRateLimiter_lastRequestTime);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

unint64_t sub_1D87C78C0()
{
  result = qword_1ECA631C0;
  if (!qword_1ECA631C0)
  {
    sub_1D8B131D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA631C0);
  }

  return result;
}

uint64_t type metadata accessor for GoogleImageSearchRateLimiter()
{
  result = qword_1ECA631C8;
  if (!qword_1ECA631C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D87C796C()
{
  sub_1D87C7ACC();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D87C7ACC()
{
  if (!qword_1EE0E98A8)
  {
    sub_1D8B131D0();
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E98A8);
    }
  }
}

char *sub_1D87C7B24(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63468);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87C7C5C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_1D87C7F54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA634B8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87C8060(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63490);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87C8180(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63488);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D87C8284(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63498);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87C8390(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63300);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87C84D8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633A0);
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
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D87C8650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63500);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D87C87E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA632D8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA632E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87C892C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63288);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D87C8AEC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA632E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87C8CCC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63450);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 136);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[136 * v8])
    {
      memmove(v12, v13, 136 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87C8E38(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63438);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87C8F6C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * v12 - 64;
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v13 = v11 + 32;
  v14 = a4 + 32;
  if (v6)
  {
    if (v11 != a4 || v13 >= &v14[v9])
    {
      memmove(v13, v14, v9);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v9);
  }

  return v11;
}

char *sub_1D87C9058(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87C9284(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63340);
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
    if (v10 != a4 || v12 >= &v13[v8])
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

void *sub_1D87C93A0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA633F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63400);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87C94F0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63408);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87C95FC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63328);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87C971C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63308);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_1D87C9838(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63318);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 56 * v8);
  }

  return v10;
}

char *sub_1D87C995C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63320);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 56 * v8);
  }

  return v10;
}

char *sub_1D87C9A94(char *result, int64_t a2, char a3, char *a4, uint64_t *a5)
{
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 3);
    v8 = v7 >> 1;
    if ((v7 >> 1) < a2)
    {
      if (v8 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if ((v7 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v8 = a2;
      }
    }
  }

  else
  {
    v8 = a2;
  }

  v9 = *(a4 + 2);
  if (v8 <= v9)
  {
    v10 = *(a4 + 2);
  }

  else
  {
    v10 = v8;
  }

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 17;
    }

    *(v11 + 2) = v9;
    *(v11 + 3) = 2 * (v13 >> 4);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  v14 = v11 + 32;
  v15 = a4 + 32;
  v16 = 16 * v9;
  if (v6)
  {
    if (v11 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v11;
}

void *sub_1D87C9CB8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63248);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63250);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D87C9E38(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7);
    swift_arrayInitWithCopy();
  }

  return v14;
}

size_t sub_1D87C9FE4(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
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

char *sub_1D87CA1C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA631F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D87CA2CC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63228);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 88 * v8);
  }

  return v10;
}

void *sub_1D87CA3EC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63230);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63238);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1D87CA544(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t a6, uint64_t *a7)
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
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5);
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7) - 8);
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

void *sub_1D87CA72C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63208);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63210);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1D87CA870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D87CA8D8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D87CA938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

CGColorSpaceRef sub_1D87CA9A0(uint64_t a1, uint64_t a2, double a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x1E695F620]) init];
  v7 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCGImage_];
  v8 = [v7 imageByApplyingCGOrientation_];

  [v8 extent];
  Width = CGRectGetWidth(v21);
  [v8 extent];
  Height = CGRectGetHeight(v22);
  CGAffineTransformMakeScale(&v20, 1000000.0 / (Width * Height), 1000000.0 / (Width * Height));
  v11 = [v8 imageByApplyingTransform_];
  v12 = *MEMORY[0x1E696D338];
  result = [v11 colorSpace];
  if (result || (result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0])) != 0)
  {
    v14 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63530);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D8B1AB90;
    *(inited + 32) = v12;
    *(inited + 64) = MEMORY[0x1E69E63B0];
    *(inited + 40) = a3;
    v16 = v12;
    sub_1D893C994(inited);
    swift_setDeallocating();
    sub_1D87CAC2C(inited + 32);
    type metadata accessor for CIImageRepresentationOption(0);
    sub_1D87CAC94();
    v17 = sub_1D8B15710();

    v18 = [v6 JPEGRepresentationOfImage:v11 colorSpace:v14 options:v17];

    if (v18)
    {
      v19 = sub_1D8B13050();
    }

    else
    {

      return 0;
    }

    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D87CAC2C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63538);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D87CAC94()
{
  result = qword_1ECA62488;
  if (!qword_1ECA62488)
  {
    type metadata accessor for CIImageRepresentationOption(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA62488);
  }

  return result;
}

uint64_t ImageSearchContext.requestID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

VisualIntelligenceCore::ImageSearchContext __swiftcall ImageSearchContext.init(entryPoint:interaction:requestID:)(VisualIntelligenceCore::ImageSearchEntrypoint entryPoint, VisualIntelligenceCore::ImageSearchContext::Interaction interaction, Swift::String_optional requestID)
{
  v4 = *interaction;
  *v3 = *entryPoint;
  *(v3 + 24) = v4;
  *(v3 + 8) = requestID;
  *&result.requestID.value._object = requestID;
  LOBYTE(result.requestID.value._countAndFlagsBits) = interaction;
  result.entryPoint = entryPoint;
  return result;
}

uint64_t ImageSearchContext.hash(into:)()
{
  v1 = *(v0 + 2);
  v2 = v0[24];
  MEMORY[0x1DA720210](*v0);
  sub_1D8B16D40();
  if (v1)
  {
    sub_1D8B15A60();
  }

  return MEMORY[0x1DA720210](v2);
}

uint64_t ImageSearchContext.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[24];
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  sub_1D8B16D40();
  if (v2)
  {
    sub_1D8B15A60();
  }

  MEMORY[0x1DA720210](v3);
  return sub_1D8B16D80();
}

uint64_t sub_1D87CAE58()
{
  v1 = *(v0 + 2);
  v2 = v0[24];
  MEMORY[0x1DA720210](*v0);
  sub_1D8B16D40();
  if (v1)
  {
    sub_1D8B15A60();
  }

  return MEMORY[0x1DA720210](v2);
}

uint64_t sub_1D87CAEC4()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[24];
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  sub_1D8B16D40();
  if (v2)
  {
    sub_1D8B15A60();
  }

  MEMORY[0x1DA720210](v3);
  return sub_1D8B16D80();
}

VisualIntelligenceCore::ImageSearchEntrypoint_optional __swiftcall ImageSearchEntrypoint.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1D87CAF80()
{
  v0 = sub_1D8B13350();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1D8B16720();
  v31 = v29;
  v32 = v30;
  MEMORY[0x1DA71EFA0](0xD00000000000001ALL, 0x80000001D8B418B0);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 infoDictionary];

  if (!v5)
  {
    goto LABEL_7;
  }

  v6 = sub_1D8B15730();

  if (!*(v6 + 16) || (v7 = sub_1D87EF838(0xD00000000000001ALL, 0x80000001D8B418D0), (v8 & 1) == 0))
  {

    goto LABEL_7;
  }

  sub_1D87D3E4C(*(v6 + 56) + 32 * v7, &v29);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v10 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E55;
    goto LABEL_8;
  }

  v9 = v28[0];
  v10 = v28[1];
LABEL_8:
  MEMORY[0x1DA71EFA0](v9, v10);

  MEMORY[0x1DA71EFA0](10272, 0xE200000000000000);
  v11 = objc_opt_self();
  v12 = [v11 currentDevice];
  v13 = [v12 systemName];

  v14 = sub_1D8B15970();
  v16 = v15;

  MEMORY[0x1DA71EFA0](v14, v16);

  MEMORY[0x1DA71EFA0](32, 0xE100000000000000);
  v17 = [v11 currentDevice];
  v18 = [v17 systemVersion];

  v19 = sub_1D8B15970();
  v21 = v20;

  MEMORY[0x1DA71EFA0](v19, v21);

  MEMORY[0x1DA71EFA0](8251, 0xE200000000000000);
  sub_1D8B132F0();
  v22 = sub_1D8B13250();
  v24 = v23;
  (*(v1 + 8))(v3, v0);
  MEMORY[0x1DA71EFA0](v22, v24);

  MEMORY[0x1DA71EFA0](8251, 0xE200000000000000);
  v25 = sub_1D87D3A98(0x696863616D2E7768, 0xEA0000000000656ELL);
  MEMORY[0x1DA71EFA0](v25);

  MEMORY[0x1DA71EFA0](0x2F646C697542203BLL, 0xE800000000000000);
  v26 = sub_1D87D3A98(0x76736F2E6E72656BLL, 0xEE006E6F69737265);
  MEMORY[0x1DA71EFA0](v26);

  result = MEMORY[0x1DA71EFA0](41, 0xE100000000000000);
  qword_1ECAA3660 = v31;
  *algn_1ECAA3668 = v32;
  return result;
}

uint64_t sub_1D87CB35C()
{
  result = sub_1D87D3A98(0x76736F2E6E72656BLL, 0xEE006E6F69737265);
  qword_1EE0ED6B0 = result;
  *algn_1EE0ED6B8 = v1;
  return result;
}

uint64_t ImageSearchShoppingBadge.priceFromMicros.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  MEMORY[0x1DA71F930](v2);
  MEMORY[0x1DA71F910](1000000);
  return sub_1D8B16440();
}

uint64_t sub_1D87CB428()
{
  v1 = type metadata accessor for ImageSearchProductAd();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Lens_ProductAd(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8B16D20();
  sub_1D87D3EA8(v0, v3, type metadata accessor for ImageSearchProductAd);
  sub_1D87D3F10(v3, v6, type metadata accessor for Lens_ProductAd);
  swift_beginAccess();

  sub_1D87D3F78(v6, type metadata accessor for Lens_ProductAd);
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87CB590(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Lens_ProductAd(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87D3EA8(v1, v3, type metadata accessor for ImageSearchProductAd);
  sub_1D87D3F10(v3, v7, type metadata accessor for Lens_ProductAd);
  v8 = *&v7[*(v5 + 28)];
  swift_beginAccess();
  v9 = *(v8 + 32);

  sub_1D87D3F78(v7, type metadata accessor for Lens_ProductAd);
  return v9;
}

uint64_t sub_1D87CB6CC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Lens_ProductAd(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87D3EA8(v1, v3, type metadata accessor for ImageSearchProductAd);
  sub_1D87D3F10(v3, v7, type metadata accessor for Lens_ProductAd);
  v8 = *&v7[*(v5 + 28)];
  swift_beginAccess();
  v9 = *(v8 + 16);

  sub_1D87D3F78(v7, type metadata accessor for Lens_ProductAd);
  return v9;
}

uint64_t sub_1D87CB808(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Lens_ProductAd(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87D3EA8(v1, v3, type metadata accessor for ImageSearchProductAd);
  sub_1D87D3F10(v3, v7, type metadata accessor for Lens_ProductAd);
  v8 = *&v7[*(v5 + 28)];
  swift_beginAccess();
  v9 = *(v8 + 48);

  sub_1D87D3F78(v7, type metadata accessor for Lens_ProductAd);
  return v9;
}

uint64_t sub_1D87CB974(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Lens_ProductAd(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87D3EA8(v3, v6, type metadata accessor for ImageSearchProductAd);
  v10 = sub_1D87D3F10(v6, v9, type metadata accessor for Lens_ProductAd);
  a3(v10);
  return sub_1D87D3F78(v9, type metadata accessor for Lens_ProductAd);
}

uint64_t sub_1D87CBA98@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Lens_ProductAd(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87D3EA8(v2, v9, type metadata accessor for ImageSearchProductAd);
  sub_1D87D3F10(v9, v12, type metadata accessor for Lens_ProductAd);
  swift_beginAccess();

  sub_1D8B12FD0();

  v13 = sub_1D8B13000();
  v14 = *(v13 - 8);
  result = (*(v14 + 48))(v7, 1, v13);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v14 + 32))(a1, v7, v13);
    return sub_1D87D3F78(v12, type metadata accessor for Lens_ProductAd);
  }

  return result;
}

uint64_t sub_1D87CBCC0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Lens_ProductAd(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87D3EA8(v1, v3, type metadata accessor for ImageSearchProductAd);
  sub_1D87D3F10(v3, v6, type metadata accessor for Lens_ProductAd);
  v7 = sub_1D87BABCC();
  sub_1D87D3F78(v6, type metadata accessor for Lens_ProductAd);
  return v7;
}

uint64_t sub_1D87CBDDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Lens_ProductAd(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87D3EA8(v2, v5, type metadata accessor for ImageSearchProductAd);
  sub_1D87D3F10(v5, v8, type metadata accessor for Lens_ProductAd);
  sub_1D87BAFEC(a2);
  return sub_1D87D3F78(v8, type metadata accessor for Lens_ProductAd);
}

uint64_t sub_1D87CBEF0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Lens_ProductAd(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87D3EA8(v2, v5, type metadata accessor for ImageSearchProductAd);
  sub_1D87D3F10(v5, v9, type metadata accessor for Lens_ProductAd);
  v10 = *&v9[*(v7 + 28)];
  swift_beginAccess();
  v12 = *(v10 + 32);
  v11 = *(v10 + 40);

  result = sub_1D87D3F78(v9, type metadata accessor for Lens_ProductAd);
  *a2 = v12;
  a2[1] = v11;
  return result;
}

uint64_t sub_1D87CC038(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Lens_ProductAd(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D87D3EA8(v1, v3, type metadata accessor for ImageSearchProductAd);
  sub_1D87D3F10(v3, v6, type metadata accessor for Lens_ProductAd);
  swift_beginAccess();

  sub_1D87D3F78(v6, type metadata accessor for Lens_ProductAd);
  sub_1D8B15A60();
}

uint64_t sub_1D87CC190(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = &v8[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for Lens_ProductAd(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D8B16D20();
  sub_1D87D3EA8(v1, v3, type metadata accessor for ImageSearchProductAd);
  sub_1D87D3F10(v3, v6, type metadata accessor for Lens_ProductAd);
  swift_beginAccess();

  sub_1D87D3F78(v6, type metadata accessor for Lens_ProductAd);
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87CC2FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635B0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v10 - v6;
  v8 = *(v5 + 56);
  sub_1D87D3EA8(a1, &v10 - v6, type metadata accessor for ImageSearchProductAd);
  sub_1D87D3EA8(a2, &v7[v8], type metadata accessor for ImageSearchProductAd);
  LOBYTE(a2) = sub_1D87AD96C(v7, &v7[v8]);
  sub_1D87D3F78(&v7[v8], type metadata accessor for Lens_ProductAd);
  sub_1D87D3F78(v7, type metadata accessor for Lens_ProductAd);
  return a2 & 1;
}

uint64_t ImageSearchProvider.providerName.getter()
{
  v1 = v0[1];
  if (v1)
  {
    v7[0] = *v0;
    v7[1] = v1;
    v2 = &off_1F5429C08;
    v3 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v2 = &off_1F542A738;
    v3 = &type metadata for ImageSearchProviderUnavailable;
  }

  v7[3] = v3;
  v7[4] = v2;
  __swift_project_boxed_opaque_existential_1(v7, v3);
  v4 = v2[1];

  v5 = v4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t ImageSearchProvider.providerDisplayName.getter()
{
  v1 = v0[1];
  if (v1)
  {
    v7[0] = *v0;
    v7[1] = v1;
    v2 = &off_1F5429C08;
    v3 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v2 = &off_1F542A738;
    v3 = &type metadata for ImageSearchProviderUnavailable;
  }

  v7[3] = v3;
  v7[4] = v2;
  __swift_project_boxed_opaque_existential_1(v7, v3);
  v4 = v2[2];

  v5 = v4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

unint64_t ImageSearchProvider.providerDefaultURLString.getter()
{
  v1 = v0[1];
  if (v1)
  {
    v7[0] = *v0;
    v7[1] = v1;
    v2 = &off_1F5429C08;
    v3 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v2 = &off_1F542A738;
    v3 = &type metadata for ImageSearchProviderUnavailable;
  }

  v7[3] = v3;
  v7[4] = v2;
  __swift_project_boxed_opaque_existential_1(v7, v3);
  v4 = v2[3];

  v5 = v4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

unint64_t ImageSearchProvider.providerTermOfServiceURL.getter()
{
  v1 = v0[1];
  if (v1)
  {
    v7[0] = *v0;
    v7[1] = v1;
    v2 = &off_1F5429C08;
    v3 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v2 = &off_1F542A738;
    v3 = &type metadata for ImageSearchProviderUnavailable;
  }

  v7[3] = v3;
  v7[4] = v2;
  __swift_project_boxed_opaque_existential_1(v7, v3);
  v4 = v2[4];

  v5 = v4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

unint64_t ImageSearchProvider.providerPrivacyPolicyURL.getter()
{
  v1 = v0[1];
  if (v1)
  {
    v7[0] = *v0;
    v7[1] = v1;
    v2 = &off_1F5429C08;
    v3 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v2 = &off_1F542A738;
    v3 = &type metadata for ImageSearchProviderUnavailable;
  }

  v7[3] = v3;
  v7[4] = v2;
  __swift_project_boxed_opaque_existential_1(v7, v3);
  v4 = v2[5];

  v5 = v4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

CGColorSpaceRef ImageSearchProvider.dataFor(image:orientation:)(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  if (v5)
  {
    v11[0] = *v2;
    v11[1] = v5;
    v6 = &off_1F5429C08;
    v7 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v6 = &off_1F542A738;
    v7 = &type metadata for ImageSearchProviderUnavailable;
  }

  v11[3] = v7;
  v11[4] = v6;
  __swift_project_boxed_opaque_existential_1(v11, v7);
  v8 = v6[6];

  v9 = v8(a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t ImageSearchProvider.search(imageData:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 88) = a1;
  *(v4 + 96) = a2;
  *(v4 + 81) = *a3;
  *(v4 + 104) = *(a3 + 8);
  *(v4 + 82) = *(a3 + 24);
  *(v4 + 120) = *v3;
  return MEMORY[0x1EEE6DFA0](sub_1D87CC90C, 0, 0);
}

uint64_t sub_1D87CC90C()
{
  v1 = *(v0 + 128);
  if (v1)
  {
    *(v0 + 16) = *(v0 + 120);
    *(v0 + 24) = v1;
    v2 = &off_1F5429C08;
    v3 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v2 = &off_1F542A738;
    v3 = &type metadata for ImageSearchProviderUnavailable;
  }

  v4 = *(v0 + 82);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 81);
  *(v0 + 40) = v3;
  *(v0 + 48) = v2;
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *(v0 + 56) = v7;
  *(v0 + 64) = v6;
  *(v0 + 72) = v5;
  *(v0 + 80) = v4;
  v8 = v2[7];

  v13 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v0 + 136) = v9;
  *v9 = v0;
  v9[1] = sub_1D87CCAB4;
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);

  return (v13)(v11, v10, v0 + 56, v3, v2);
}

uint64_t sub_1D87CCAB4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_1D87CCC44;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_1D87CCBDC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D87CCBDC()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);
  v2 = *(v0 + 152);

  return v1(v2);
}

uint64_t sub_1D87CCC44()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = *(v0 + 8);

  return v1();
}

void static ImageSearchProvider.getImageSearchProvider()(uint64_t *a1@<X8>)
{
  v2 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D8B15930();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1D8B14060();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE0E54C0 != -1)
  {
    swift_once();
  }

  if (sub_1D8B0AAA4())
  {
    goto LABEL_7;
  }

  if (qword_1EE0E9958 != -1)
  {
    swift_once();
  }

  v17 = qword_1EE0E9960;
  v18 = word_1EE0E9968;
  v19 = byte_1EE0E996A;
  v16 = 3;
  (*(v5 + 104))(v7, *MEMORY[0x1E69A12A0], v4);

  v8 = GreymatterAvailability.isAvailable(_:languageOption:)(&v16, v7);
  (*(v5 + 8))(v7, v4);

  if (v8)
  {
LABEL_7:
    sub_1D8B158D0();
    sub_1D87D1F20();
    if (!sub_1D8B163E0())
    {
      v9 = [objc_opt_self() mainBundle];
    }

    sub_1D8B132F0();
    *a1 = sub_1D8B159D0();
    a1[1] = v10;
  }

  else
  {
    if (qword_1EE0E4538 != -1)
    {
      swift_once();
    }

    v11 = sub_1D8B151E0();
    __swift_project_value_buffer(v11, qword_1EE0E4540);
    v12 = sub_1D8B151C0();
    v13 = sub_1D8B16210();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D8783000, v12, v13, "Image search not available due to GMS use case availability", v14, 2u);
      MEMORY[0x1DA721330](v14, -1, -1);
    }

    *a1 = 0;
    a1[1] = 0;
  }
}

uint64_t sub_1D87CD030()
{
  v1 = v0[1];
  if (v1)
  {
    v7[0] = *v0;
    v7[1] = v1;
    v2 = &off_1F5429C08;
    v3 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v2 = &off_1F542A738;
    v3 = &type metadata for ImageSearchProviderUnavailable;
  }

  v7[3] = v3;
  v7[4] = v2;
  __swift_project_boxed_opaque_existential_1(v7, v3);
  v4 = v2[1];

  v5 = v4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

uint64_t sub_1D87CD0E8()
{
  v1 = v0[1];
  if (v1)
  {
    v7[0] = *v0;
    v7[1] = v1;
    v2 = &off_1F5429C08;
    v3 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v2 = &off_1F542A738;
    v3 = &type metadata for ImageSearchProviderUnavailable;
  }

  v7[3] = v3;
  v7[4] = v2;
  __swift_project_boxed_opaque_existential_1(v7, v3);
  v4 = v2[2];

  v5 = v4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

unint64_t sub_1D87CD1A0()
{
  v1 = v0[1];
  if (v1)
  {
    v7[0] = *v0;
    v7[1] = v1;
    v2 = &off_1F5429C08;
    v3 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v2 = &off_1F542A738;
    v3 = &type metadata for ImageSearchProviderUnavailable;
  }

  v7[3] = v3;
  v7[4] = v2;
  __swift_project_boxed_opaque_existential_1(v7, v3);
  v4 = v2[3];

  v5 = v4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

unint64_t sub_1D87CD258()
{
  v1 = v0[1];
  if (v1)
  {
    v7[0] = *v0;
    v7[1] = v1;
    v2 = &off_1F5429C08;
    v3 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v2 = &off_1F542A738;
    v3 = &type metadata for ImageSearchProviderUnavailable;
  }

  v7[3] = v3;
  v7[4] = v2;
  __swift_project_boxed_opaque_existential_1(v7, v3);
  v4 = v2[4];

  v5 = v4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

unint64_t sub_1D87CD310()
{
  v1 = v0[1];
  if (v1)
  {
    v7[0] = *v0;
    v7[1] = v1;
    v2 = &off_1F5429C08;
    v3 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v2 = &off_1F542A738;
    v3 = &type metadata for ImageSearchProviderUnavailable;
  }

  v7[3] = v3;
  v7[4] = v2;
  __swift_project_boxed_opaque_existential_1(v7, v3);
  v4 = v2[5];

  v5 = v4();
  __swift_destroy_boxed_opaque_existential_1(v7);
  return v5;
}

CGColorSpaceRef sub_1D87CD3C8(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];
  if (v5)
  {
    v11[0] = *v2;
    v11[1] = v5;
    v6 = &off_1F5429C08;
    v7 = &type metadata for GoogleImageSearch;
  }

  else
  {
    v6 = &off_1F542A738;
    v7 = &type metadata for ImageSearchProviderUnavailable;
  }

  v11[3] = v7;
  v11[4] = v6;
  __swift_project_boxed_opaque_existential_1(v11, v7);
  v8 = v6[6];

  v9 = v8(a1, a2);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v9;
}

uint64_t sub_1D87CD498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D87C0B2C;

  return ImageSearchProvider.search(imageData:context:)(a1, a2, a3);
}

uint64_t sub_1D87CD5AC()
{
  sub_1D87C1188();
  swift_allocError();
  *v1 = 4;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t static ImageSearchItem.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 8))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D8B16BA0();
  }

  return v12 & 1;
}

uint64_t ImageSearchItem.id.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t ImageSearchItem.hash(into:)()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  sub_1D8B15A60();
}

uint64_t ImageSearchItem.title.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t ImageSearchItem.thumbnail.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t ImageSearchItem.websiteURL.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t ImageSearchItem.accessibilityLabel.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t ImageSearchItem.websiteIconURL.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t ImageSearchItem.websiteIconData.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t ImageSearchItem.domainName.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t ImageSearchItem.shoppingBadge.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t ImageSearchItem.hashValue.getter()
{
  sub_1D8B16D20();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87CDB44(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 8))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D8B16BA0();
  }

  return v12 & 1;
}

uint64_t sub_1D87CDC20()
{
  sub_1D8B16D20();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87CDCB0()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  sub_1D8B15A60();
}

uint64_t sub_1D87CDD34()
{
  sub_1D8B16D20();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87CDDC0@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_1D87CDE1C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1D87CDE70()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1D87CDEC4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1D87CDF20()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t sub_1D87CDF7C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 40))(v1, v2);
}

uint64_t sub_1D87CDFD0()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_1D87CE02C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 56))(v1, v2);
}

uint64_t sub_1D87CE080()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 64))(v1, v2);
}

uint64_t sub_1D87CE0D4()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t _s22VisualIntelligenceCore15ImageSearchItemV4withACx_tcAA0deF8ProtocolRzlufC_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t static ImageSearchRelatedSearches.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 8))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D8B16BA0();
  }

  return v12 & 1;
}

uint64_t ImageSearchRelatedSearches.id.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t ImageSearchRelatedSearches.hash(into:)()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  sub_1D8B15A60();
}

uint64_t ImageSearchRelatedSearches.query.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t ImageSearchRelatedSearches.relatedSearchURL.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t ImageSearchRelatedSearches.thumbnail.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t ImageSearchRelatedSearches.hashValue.getter()
{
  sub_1D8B16D20();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87CE4EC(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = (*(v4 + 8))(v3, v4);
  v7 = v6;
  v8 = a2[3];
  v9 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v8);
  if (v5 == (*(v9 + 8))(v8, v9) && v7 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1D8B16BA0();
  }

  return v12 & 1;
}

uint64_t sub_1D87CE5C8()
{
  sub_1D8B16D20();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87CE658()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  sub_1D8B15A60();
}

uint64_t sub_1D87CE6DC()
{
  sub_1D8B16D20();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(v1, v2);
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t sub_1D87CE768()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1D87CE7BC()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1D87CE810()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1D87CE86C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t ImageSearchAdSection.sectionIndex.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t ImageSearchAdSection.disclosureURL.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t ImageSearchAdSection.hash(into:)()
{
  v1 = sub_1D8B13000();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  v12 = v0[3];
  v11 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v12);
  v13 = (*(v11 + 32))(v12, v11);
  MEMORY[0x1DA720210](v13);
  v14 = v0[3];
  v15 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v14);
  (*(v15 + 16))(v14, v15);
  sub_1D87A0E38(v10, v8, &qword_1ECA630C0);
  if ((*(v2 + 48))(v8, 1, v1) == 1)
  {
    sub_1D8B16D40();
  }

  else
  {
    (*(v2 + 32))(v4, v8, v1);
    sub_1D8B16D40();
    sub_1D87D4148(&qword_1ECA64C80, MEMORY[0x1E6968FB0]);
    sub_1D8B157A0();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1D87A14E4(v10, &qword_1ECA630C0);
}

uint64_t ImageSearchAdSection.adItems.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t ImageSearchAdSection.disclosureLabel.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t ImageSearchAdSection.hashValue.getter()
{
  sub_1D8B16D20();
  ImageSearchAdSection.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D87CECFC()
{
  sub_1D8B16D20();
  ImageSearchAdSection.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D87CED40()
{
  sub_1D8B16D20();
  ImageSearchAdSection.hash(into:)();
  return sub_1D8B16D80();
}

uint64_t sub_1D87CED7C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 8))(v1, v2);
}

uint64_t sub_1D87CEDD0()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t sub_1D87CEE2C()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 24))(v1, v2);
}

uint64_t sub_1D87CEE80()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  return (*(v2 + 32))(v1, v2);
}

uint64_t ImageSearchState.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1 == 1)
  {
    v4 = 2;
    return MEMORY[0x1DA720210](v4);
  }

  if (!v3)
  {
    v4 = 0;
    return MEMORY[0x1DA720210](v4);
  }

  v6 = v1[2];
  v7 = v1[3];
  MEMORY[0x1DA720210](1);
  sub_1D87D0D88(a1, v3);
  sub_1D8B16D40();
  sub_1D87D0CC4(a1, v6);
  sub_1D87D09BC(a1, v7);
  sub_1D8B15A60();
  sub_1D8B15A60();

  return sub_1D8B15A60();
}

uint64_t ImageSearchState.hashValue.getter()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  sub_1D8B16D20();
  if (v1 == 1)
  {
    v4 = 2;
  }

  else
  {
    if (v1)
    {
      MEMORY[0x1DA720210](1);
      sub_1D87D0D88(v6, v1);
      sub_1D8B16D40();
      sub_1D87D0CC4(v6, v3);
      sub_1D87D09BC(v6, v2);
      sub_1D8B15A60();
      sub_1D8B15A60();
      sub_1D8B15A60();
      return sub_1D8B16D80();
    }

    v4 = 0;
  }

  MEMORY[0x1DA720210](v4);
  return sub_1D8B16D80();
}

uint64_t sub_1D87CF0F4(uint64_t a1)
{
  v3 = *v1;
  if (*v1 == 1)
  {
    v4 = 2;
    return MEMORY[0x1DA720210](v4);
  }

  if (!v3)
  {
    v4 = 0;
    return MEMORY[0x1DA720210](v4);
  }

  v6 = v1[2];
  v7 = v1[3];
  MEMORY[0x1DA720210](1);
  sub_1D87D0D88(a1, v3);
  sub_1D8B16D40();
  sub_1D87D0CC4(a1, v6);
  sub_1D87D09BC(a1, v7);
  sub_1D8B15A60();
  sub_1D8B15A60();

  return sub_1D8B15A60();
}

uint64_t sub_1D87CF208()
{
  v1 = *v0;
  v3 = v0[2];
  v2 = v0[3];
  sub_1D8B16D20();
  if (v1 == 1)
  {
    v4 = 2;
  }

  else
  {
    if (v1)
    {
      MEMORY[0x1DA720210](1);
      sub_1D87D0D88(v6, v1);
      sub_1D8B16D40();
      sub_1D87D0CC4(v6, v3);
      sub_1D87D09BC(v6, v2);
      sub_1D8B15A60();
      sub_1D8B15A60();
      sub_1D8B15A60();
      return sub_1D8B16D80();
    }

    v4 = 0;
  }

  MEMORY[0x1DA720210](v4);
  return sub_1D8B16D80();
}

uint64_t sub_1D87CF304(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_1D87CF350(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA720210](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v8 = *(v5 - 1);
      if (*v5)
      {
        if (*v5 != 1)
        {
          if (v8)
          {
            v9 = 2;
          }

          else
          {
            v9 = 1;
          }

          result = MEMORY[0x1DA720210](v9);
          goto LABEL_8;
        }

        v6 = 3;
      }

      else
      {
        v6 = 0;
      }

      MEMORY[0x1DA720210](v6);
      if ((v8 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v7 = v8;
      }

      else
      {
        v7 = 0;
      }

      result = MEMORY[0x1DA720250](v7);
LABEL_8:
      v5 += 16;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D87CF3E8(__int128 *a1, uint64_t a2)
{
  v22 = type metadata accessor for BuiltInAction(0);
  v4 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ActionPin.Pill.Source(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ActionPin.Pill(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a2 + 16);
  result = MEMORY[0x1DA720210](v14);
  if (v14)
  {
    v16 = *(v10 + 36);
    v17 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v20 = *(v11 + 72);
    v21 = v16;
    v18 = (v4 + 48);
    do
    {
      sub_1D87D3EA8(v17, v13, type metadata accessor for ActionPin.Pill);
      sub_1D8B15A60();
      sub_1D8B15A60();
      sub_1D8B15A60();
      if (*(v13 + 7))
      {
        sub_1D8B16D40();
        sub_1D8B15A60();
      }

      else
      {
        sub_1D8B16D40();
      }

      MEMORY[0x1DA720210](*(v13 + 8));
      sub_1D87D3EA8(&v13[v21], v9, type metadata accessor for ActionPin.Pill.Source);
      if ((*v18)(v9, 1, v22) == 1)
      {
        MEMORY[0x1DA720210](1);
      }

      else
      {
        sub_1D87D3F10(v9, v6, type metadata accessor for BuiltInAction);
        MEMORY[0x1DA720210](0);
        BuiltInAction.hash(into:)(a1);
        sub_1D87D3F78(v6, type metadata accessor for BuiltInAction);
      }

      result = sub_1D87D3F78(v13, type metadata accessor for ActionPin.Pill);
      v17 += v20;
      --v14;
    }

    while (v14);
  }

  return result;
}

uint64_t sub_1D87CF700(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D8B13E40();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D8B13E30();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a2 + 16);
  result = MEMORY[0x1DA720210](v11);
  if (v11)
  {
    v13 = v8 + 16;
    v14 = *(v8 + 16);
    v15 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v19 = *(v8 + 72);
    v20 = v14;
    v16 = (v4 + 8);
    v21 = v13;
    v17 = (v13 - 8);
    do
    {
      v20(v10, v15, v7);
      sub_1D8B13E10();
      sub_1D87D4148(&qword_1ECA635D8, MEMORY[0x1E699C610]);
      sub_1D8B157A0();
      (*v16)(v6, v3);
      sub_1D8B13DF0();
      sub_1D8B15A60();

      sub_1D8B13DE0();
      sub_1D8B15A60();

      result = (*v17)(v10, v7);
      v15 += v19;
      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t sub_1D87CF97C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for CVBundle(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1DA720210](v8);
  if (v8)
  {
    v10 = v4[5];
    v11 = v4[6];
    v12 = v4[7];
    v13 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v14 = *(v5 + 72);
    do
    {
      sub_1D87D3EA8(v13, v7, type metadata accessor for CVBundle);
      sub_1D891CA54(a1);
      sub_1D87CF97C(a1, *&v7[v10]);
      sub_1D87CF97C(a1, *&v7[v11]);
      sub_1D893983C(a1, *&v7[v12]);
      result = sub_1D87D3F78(v7, type metadata accessor for CVBundle);
      v13 += v14;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1D87CFAE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D8B13830();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for VisualUnderstandingContainer(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a2 + 16);
  result = MEMORY[0x1DA720210](v13);
  if (v13)
  {
    v15 = *(v9 + 20);
    v25 = v12 + *(v9 + 24);
    v26 = v15;
    v16 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = (v4 + 48);
    v18 = *(v10 + 72);
    v22 = (v4 + 8);
    v23 = (v4 + 32);
    do
    {
      sub_1D87D3EA8(v16, v12, type metadata accessor for VisualUnderstandingContainer);
      v19 = *v12;
      if (*v12 == 0.0)
      {
        v19 = 0.0;
      }

      MEMORY[0x1DA720250](*&v19);
      sub_1D87A0E38(v12 + v26, v8, &qword_1ECA635E8);
      if ((*v17)(v8, 1, v3) == 1)
      {
        sub_1D8B16D40();
      }

      else
      {
        v20 = v24;
        (*v23)(v24, v8, v3);
        sub_1D8B16D40();
        sub_1D87D4148(&qword_1ECA635F0, MEMORY[0x1E69E0330]);
        sub_1D8B157A0();
        (*v22)(v20, v3);
      }

      if (*(v25 + 1) >> 60 == 15)
      {
        sub_1D8B16D40();
      }

      else
      {
        sub_1D8B16D40();
        sub_1D8B13060();
      }

      result = sub_1D87D3F78(v12, type metadata accessor for VisualUnderstandingContainer);
      v16 += v18;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_1D87CFE70(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for DetectionRequest(0);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1DA720210](v8);
  if (v8)
  {
    v10 = v4[6];
    v11 = v4[7];
    v12 = v4[8];
    v13 = &v7[v11];
    v14 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v15 = *(v5 + 72);
    do
    {
      sub_1D87D3EA8(v14, v7, type metadata accessor for DetectionRequest);
      MEMORY[0x1DA720210](*v7);
      DetectionRequest.Originator.hash(into:)(a1);
      sub_1D8818BD0(a1, *&v7[v10]);
      sub_1D88911A0(*v13, v13[1], v13[2], v13[3]);
      v16 = *&v7[v12];
      if (v16 == 0.0)
      {
        v16 = 0.0;
      }

      MEMORY[0x1DA720250](*&v16);
      result = sub_1D87D3F78(v7, type metadata accessor for DetectionRequest);
      v14 += v15;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1D87D0004(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750);
  v5 = *(v4 - 1);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40 - v6;
  v8 = *(a2 + 16);
  result = MEMORY[0x1DA720210](v8);
  v49 = v8;
  if (v8)
  {
    v10 = 0;
    v11 = v4[9];
    v12 = &v7[v4[10]];
    v13 = v4[12];
    v47 = v4[11];
    v48 = v11;
    v14 = v4[13];
    v42 = v4[14];
    v43 = v14;
    v41 = v4[15];
    v45 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v46 = v13;
    v44 = *(v5 + 72);
    while (1)
    {
      sub_1D87A0E38(v45 + v44 * v10, v7, &qword_1ECA67750);
      sub_1D8B13240();
      sub_1D87D4148(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      sub_1D8B157A0();
      sub_1D8B16D60();
      v17 = *v12;
      v18 = v12[1];
      v19 = v12[2];
      v20 = v12[3];
      v21 = v12[4];
      v22 = v12[5];
      v24 = v12[6];
      v23 = v12[7];
      if (*v12 == 0.0)
      {
        v17 = 0.0;
      }

      MEMORY[0x1DA720250](*&v17);
      v25 = 0.0;
      if (v18 != 0.0)
      {
        v25 = v18;
      }

      MEMORY[0x1DA720250](*&v25);
      if (v19 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v19;
      }

      MEMORY[0x1DA720250](*&v26);
      if (v20 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v20;
      }

      MEMORY[0x1DA720250](*&v27);
      if (v21 == 0.0)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v21;
      }

      MEMORY[0x1DA720250](*&v28);
      if (v22 == 0.0)
      {
        v29 = 0.0;
      }

      else
      {
        v29 = v22;
      }

      MEMORY[0x1DA720250](*&v29);
      if (v24 == 0.0)
      {
        v30 = 0.0;
      }

      else
      {
        v30 = v24;
      }

      MEMORY[0x1DA720250](*&v30);
      if (v23 == 0.0)
      {
        v31 = 0.0;
      }

      else
      {
        v31 = v23;
      }

      MEMORY[0x1DA720250](*&v31);
      v32 = *&v7[v47];
      MEMORY[0x1DA720210](*(v32 + 16));
      v33 = *(v32 + 16);
      if (v33)
      {
        v34 = v32 + 40;
        do
        {
          v35 = *(v34 - 8);
          v34 += 16;
          MEMORY[0x1DA720210](v35);
          sub_1D8B16D60();
          --v33;
        }

        while (v33);
      }

      v36 = *&v7[v46];
      v37 = *(v36 + 16);
      result = MEMORY[0x1DA720210](v37);
      if (v37)
      {
        break;
      }

LABEL_3:
      v15 = *&v7[v43];
      if (v15 == 0.0)
      {
        v15 = 0.0;
      }

      MEMORY[0x1DA720250](*&v15);
      v16 = *&v7[v42];
      if (v16 == 0.0)
      {
        v16 = 0.0;
      }

      ++v10;
      MEMORY[0x1DA720250](*&v16);
      sub_1D87D0004(a1, *&v7[v41]);
      result = sub_1D87A14E4(v7, &qword_1ECA67750);
      if (v10 == v49)
      {
        return result;
      }
    }

    v38 = 0;
    while (v38 < *(v36 + 16))
    {
      v39 = v38 + 1;
      result = sub_1D8B16D50();
      v38 = v39;
      if (v37 == v39)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D87D0390(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA720210](v3);
  if (v3)
  {
    v5 = a2 + 40;
    do
    {
      v6 = *(v5 - 8);
      v5 += 16;
      MEMORY[0x1DA720210](v6);
      result = sub_1D8B16D60();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D87D0400(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA720210](v3);
  if (v3)
  {
    v5 = a2 + 64;
    do
    {
      sub_1D8B16D60();

      sub_1D8B15A60();
      sub_1D8B15A60();

      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

void sub_1D87D04C4(uint64_t a1, uint64_t a2)
{
  v27 = sub_1D8B13000();
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v26 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for GeoLookupResultBusiness.Action(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = (&v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  MEMORY[0x1DA720210](v12);
  if (v12)
  {
    v13 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v22 = (v3 + 8);
    v23 = (v3 + 32);
    v24 = v14;
    v25 = v5;
    do
    {
      sub_1D87D3EA8(v13, v11, type metadata accessor for GeoLookupResultBusiness.Action);
      sub_1D87D3EA8(v11, v9, type metadata accessor for GeoLookupResultBusiness.Action);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v28 = v9[2];
          v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635F8);
          v19 = v26;
          v18 = v27;
          (*v23)(v26, v9 + *(v17 + 64), v27);
          MEMORY[0x1DA720210](2);
          sub_1D8B15A60();

          sub_1D8B15A60();

          sub_1D87D4148(&qword_1ECA64C80, MEMORY[0x1E6968FB0]);
          sub_1D8B157A0();
          v20 = v19;
          v14 = v24;
          (*v22)(v20, v18);
        }

        else
        {
          MEMORY[0x1DA720210](0);
        }

        sub_1D87D3F78(v11, type metadata accessor for GeoLookupResultBusiness.Action);
      }

      else
      {
        v15 = *v9;
        MEMORY[0x1DA720210](1);
        sub_1D8B16410();
        sub_1D87D3F78(v11, type metadata accessor for GeoLookupResultBusiness.Action);
      }

      v13 += v14;
      --v12;
    }

    while (v12);
  }
}

void sub_1D87D0814(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1DA720210](v3);
  if (v3)
  {
    v4 = 0;
    v5 = a2 + 32;
    v19 = v3;
    do
    {
      v6 = v5 + 40 * v4;
      v7 = *v6;
      v8 = *(v6 + 24);
      v9 = *(v6 + 32);

      v10 = v7;

      sub_1D8B16410();
      sub_1D8B15A60();
      if (v8 == 0.0)
      {
        v11 = 0.0;
      }

      else
      {
        v11 = v8;
      }

      MEMORY[0x1DA720250](*&v11);
      if (v9)
      {
        sub_1D8B16D40();
        MEMORY[0x1DA720210](*(v9 + 16));
        v12 = *(v9 + 16);
        if (v12)
        {
          v13 = v5;
          v14 = (v9 + 40);
          while (1)
          {
            v17 = *(v14 - 1);
            if (*v14)
            {
              if (*v14 != 1)
              {
                if (v17)
                {
                  v18 = 2;
                }

                else
                {
                  v18 = 1;
                }

                MEMORY[0x1DA720210](v18);
                goto LABEL_16;
              }

              v15 = 3;
            }

            else
            {
              v15 = 0;
            }

            MEMORY[0x1DA720210](v15);
            if ((v17 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v16 = v17;
            }

            else
            {
              v16 = 0;
            }

            MEMORY[0x1DA720250](v16);
LABEL_16:
            v14 += 16;
            if (!--v12)
            {

              v5 = v13;
              v3 = v19;
              goto LABEL_4;
            }
          }
        }
      }

      else
      {
        sub_1D8B16D40();
      }

LABEL_4:

      ++v4;
    }

    while (v4 != v3);
  }
}

uint64_t sub_1D87D09BC(uint64_t a1, uint64_t a2)
{
  v35 = sub_1D8B13000();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v33 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v12 = *(a2 + 16);
  v36 = a1;
  result = MEMORY[0x1DA720210](v12);
  if (v12)
  {
    v14 = a2 + 32;
    v34 = (v4 + 48);
    v31 = (v4 + 8);
    v32 = (v4 + 32);
    v15 = &qword_1ECA630C0;
    v16 = &unk_1D8B24530;
    do
    {
      sub_1D87D3FD8(v14, v37);
      v17 = v16;
      v18 = v15;
      v19 = v38;
      v20 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      v21 = (*(v20 + 32))(v19, v20);
      MEMORY[0x1DA720210](v21);
      v22 = v38;
      v23 = v39;
      __swift_project_boxed_opaque_existential_1(v37, v38);
      v24 = *(v23 + 16);
      v25 = v22;
      v16 = v17;
      v26 = v23;
      v15 = v18;
      v24(v25, v26);
      sub_1D87A0E38(v11, v9, v18);
      v27 = v35;
      if ((*v34)(v9, 1, v35) == 1)
      {
        sub_1D8B16D40();
      }

      else
      {
        v28 = v33;
        (*v32)(v33, v9, v27);
        sub_1D8B16D40();
        sub_1D87D4148(&qword_1ECA64C80, MEMORY[0x1E6968FB0]);
        sub_1D8B157A0();
        v29 = v28;
        v16 = v17;
        (*v31)(v29, v27);
      }

      sub_1D87A14E4(v11, v15);
      result = sub_1D87D4010(v37);
      v14 += 40;
      --v12;
    }

    while (v12);
  }

  return result;
}

uint64_t sub_1D87D0CC4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA720210](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      sub_1D87D4040(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 8))(v6, v7);
      sub_1D8B15A60();

      result = sub_1D87D4078(v8);
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D87D0D88(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1DA720210](v3);
  if (v3)
  {
    v5 = a2 + 32;
    do
    {
      sub_1D87D40A8(v5, v8);
      v6 = v9;
      v7 = v10;
      __swift_project_boxed_opaque_existential_1(v8, v9);
      (*(v7 + 8))(v6, v7);
      sub_1D8B15A60();

      result = sub_1D87D40E0(v8);
      v5 += 40;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D87D0E4C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionPin(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1DA720210](v8);
  if (v8)
  {
    v10 = &v7[*(v4 + 20)];
    v29 = *(v4 + 28);
    v11 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v12 = *(v5 + 72);
    do
    {
      sub_1D87D3EA8(v11, v7, type metadata accessor for ActionPin);
      sub_1D8B13240();
      sub_1D87D4148(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
      sub_1D8B157A0();
      v13 = *v10;
      v14 = v10[1];
      v15 = v10[2];
      v16 = v10[3];
      v17 = v10[4];
      v18 = v10[5];
      v19 = v10[6];
      v20 = v10[7];
      if (*v10 == 0.0)
      {
        v13 = 0.0;
      }

      MEMORY[0x1DA720250](*&v13);
      if (v14 == 0.0)
      {
        v21 = 0.0;
      }

      else
      {
        v21 = v14;
      }

      MEMORY[0x1DA720250](*&v21);
      if (v15 == 0.0)
      {
        v22 = 0.0;
      }

      else
      {
        v22 = v15;
      }

      MEMORY[0x1DA720250](*&v22);
      if (v16 == 0.0)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v16;
      }

      MEMORY[0x1DA720250](*&v23);
      if (v17 == 0.0)
      {
        v24 = 0.0;
      }

      else
      {
        v24 = v17;
      }

      MEMORY[0x1DA720250](*&v24);
      if (v18 == 0.0)
      {
        v25 = 0.0;
      }

      else
      {
        v25 = v18;
      }

      MEMORY[0x1DA720250](*&v25);
      if (v19 == 0.0)
      {
        v26 = 0.0;
      }

      else
      {
        v26 = v19;
      }

      MEMORY[0x1DA720250](*&v26);
      if (v20 == 0.0)
      {
        v27 = 0.0;
      }

      else
      {
        v27 = v20;
      }

      MEMORY[0x1DA720250](*&v27);
      sub_1D8B15A60();
      sub_1D87CF3E8(a1, *&v7[v29]);
      sub_1D8B16D40();
      result = sub_1D87D3F78(v7, type metadata accessor for ActionPin);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t sub_1D87D10C4(__int128 *a1, uint64_t a2)
{
  v77 = sub_1D8B13E40();
  v100 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1D8B13E30();
  v78 = *(v81 - 8);
  v5 = MEMORY[0x1EEE9AC00](v81);
  v73 = v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v71 = v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635B8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v75 = v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v79 = v69 - v11;
  v12 = type metadata accessor for ActionPin.PermanentPill(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v89 = v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v93 = v69 - v15;
  v102 = sub_1D8B14E80();
  v16 = *(v102 - 8);
  v17 = MEMORY[0x1EEE9AC00](v102);
  v92 = v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = v69 - v19;
  v86 = sub_1D8B13240();
  v20 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v85 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for BundleClassification.ClassificationType(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v84 = v69 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action(0);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = v69 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = v69 - v29;
  v31 = *(a2 + 16);
  result = MEMORY[0x1DA720210](v31);
  v101 = v31;
  if (v31)
  {
    v33 = a2;
    v34 = 0;
    v99 = v33 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v98 = *(v25 + 72);
    v90 = (v16 + 32);
    v91 = (v16 + 8);
    v72 = (v78 + 48);
    v69[0] = v78 + 32;
    v80 = (v100 + 8);
    v74 = (v78 + 8);
    v97 = v78 + 16;
    v82 = (v20 + 8);
    v83 = (v20 + 32);
    v88 = v24;
    v94 = v28;
    v100 = v30;
    do
    {
      sub_1D87D3EA8(v99 + v98 * v34, v30, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      sub_1D87D3EA8(v30, v28, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 1)
        {
          v42 = v87;
          v43 = v102;
          (*v90)(v87, v28, v102);
          MEMORY[0x1DA720210](1);
          sub_1D87D4148(&qword_1ECA635C8, MEMORY[0x1E69DFB08]);
          sub_1D8B157A0();
          (*v91)(v42, v43);
          v30 = v100;
        }

        else
        {
          v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635C0) + 48);
          (*v90)(v92, v28, v102);
          v45 = v93;
          sub_1D87D3F10(&v28[v44], v93, type metadata accessor for ActionPin.PermanentPill);
          MEMORY[0x1DA720210](2);
          sub_1D87D4148(&qword_1ECA635C8, MEMORY[0x1E69DFB08]);
          sub_1D8B157A0();
          v46 = v45;
          v47 = v89;
          sub_1D87D3EA8(v46, v89, type metadata accessor for ActionPin.PermanentPill);
          v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635D0);
          v49 = (*(*(v48 - 8) + 48))(v47, 6, v48);
          if (v49 <= 2)
          {
            v51 = v81;
            v52 = v80;
            if (v49)
            {
              MEMORY[0x1DA720210](v49 != 1);
            }

            else
            {
              v53 = *(v89 + *(v48 + 48));
              v54 = v79;
              sub_1D87D39DC(v89, v79);
              MEMORY[0x1DA720210](5);
              v55 = v75;
              sub_1D87A0E38(v54, v75, &qword_1ECA635B8);
              if ((*v72)(v55, 1, v51) == 1)
              {
                sub_1D8B16D40();
              }

              else
              {
                v56 = v71;
                (*v69[0])(v71, v55, v51);
                sub_1D8B16D40();
                v57 = v76;
                sub_1D8B13E10();
                sub_1D87D4148(&qword_1ECA635D8, MEMORY[0x1E699C610]);
                v58 = v53;
                v59 = v77;
                sub_1D8B157A0();
                v60 = v59;
                v53 = v58;
                (*v52)(v57, v60);
                sub_1D8B13DF0();
                sub_1D8B15A60();

                sub_1D8B13DE0();
                sub_1D8B15A60();

                (*v74)(v56, v51);
              }

              MEMORY[0x1DA720210](*(v53 + 16));
              v61 = *(v53 + 16);
              if (v61)
              {
                v70 = v34;
                v62 = (*(v78 + 80) + 32) & ~*(v78 + 80);
                v63 = v52;
                v69[1] = v53;
                v64 = v53 + v62;
                v65 = v73;
                v96 = *(v78 + 72);
                v66 = v77;
                v67 = v76;
                v95 = *(v78 + 16);
                v68 = v74;
                do
                {
                  v95(v65, v64, v51);
                  sub_1D8B13E10();
                  sub_1D87D4148(&qword_1ECA635D8, MEMORY[0x1E699C610]);
                  sub_1D8B157A0();
                  (*v63)(v67, v66);
                  sub_1D8B13DF0();
                  sub_1D8B15A60();

                  sub_1D8B13DE0();
                  sub_1D8B15A60();

                  (*v68)(v65, v51);
                  v64 += v96;
                  --v61;
                }

                while (v61);

                v34 = v70;
              }

              else
              {
              }

              sub_1D87A14E4(v79, &qword_1ECA635B8);
            }

            sub_1D87D3F78(v93, type metadata accessor for ActionPin.PermanentPill);
            (*v91)(v92, v102);
            v28 = v94;
            v30 = v100;
          }

          else
          {
            if (v49 > 4)
            {
              v30 = v100;
              if (v49 == 5)
              {
                v50 = 4;
              }

              else
              {
                v50 = 6;
              }
            }

            else
            {
              v30 = v100;
              if (v49 == 3)
              {
                v50 = 2;
              }

              else
              {
                v50 = 3;
              }
            }

            MEMORY[0x1DA720210](v50);
            sub_1D87D3F78(v93, type metadata accessor for ActionPin.PermanentPill);
            (*v91)(v92, v102);
          }
        }
      }

      else
      {
        v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E0) + 48);
        v36 = v28;
        v37 = v84;
        sub_1D87D3F10(v36, v84, type metadata accessor for BundleClassification.ClassificationType);
        v39 = v85;
        v38 = v86;
        (*v83)(v85, &v94[v35], v86);
        MEMORY[0x1DA720210](0);
        BundleClassification.ClassificationType.hash(into:)(a1);
        sub_1D87D4148(&qword_1EE0E98A0, MEMORY[0x1E69695A8]);
        sub_1D8B157A0();
        sub_1D8B15A60();
        v30 = v100;

        (*v82)(v39, v38);
        v40 = v37;
        v28 = v94;
        sub_1D87D3F78(v40, type metadata accessor for BundleClassification.ClassificationType);
      }

      result = sub_1D87D3F78(v30, type metadata accessor for ActionPredictor.BundleActionPredictionResult.Action);
      ++v34;
    }

    while (v34 != v101);
  }

  return result;
}

void sub_1D87D1DA8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1D8B16610();
    MEMORY[0x1DA720210](v8);
    v3 = sub_1D8B16610();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1DA720210](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1DA71FC20](i, a2);
      sub_1D8B16410();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1D8B16410();

      --v3;
    }

    while (v3);
  }
}

BOOL _s22VisualIntelligenceCore18ImageSearchContextV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 2);
  v4 = a1[24];
  v5 = *(a2 + 2);
  v6 = a2[24];
  if (v3)
  {
    if (v5)
    {
      v7 = *(a1 + 1) == *(a2 + 1) && v3 == v5;
      if (v7 || (sub_1D8B16BA0() & 1) != 0)
      {
        return v4 == v6;
      }
    }
  }

  else if (!v5)
  {
    return v4 == v6;
  }

  return 0;
}

unint64_t sub_1D87D1F20()
{
  result = qword_1EE0E36B0;
  if (!qword_1EE0E36B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0E36B0);
  }

  return result;
}

uint64_t _s22VisualIntelligenceCore20ImageSearchAdSectionV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D8B13000();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63608);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v36 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA630C0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v37 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v36 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  v19 = (*(v18 + 32))(v17, v18);
  v21 = a2[3];
  v20 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v21);
  if (v19 != (*(v20 + 32))(v21, v20))
  {
    v30 = 0;
    return v30 & 1;
  }

  v22 = a1[3];
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v22);
  (*(v23 + 16))(v22, v23);
  v24 = a2[3];
  v25 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v24);
  (*(v25 + 16))(v24, v25);
  v26 = *(v6 + 48);
  sub_1D87A0E38(v16, v8, &qword_1ECA630C0);
  sub_1D87A0E38(v14, &v8[v26], &qword_1ECA630C0);
  v28 = v38;
  v27 = v39;
  v29 = *(v38 + 48);
  if (v29(v8, 1, v39) != 1)
  {
    v31 = v37;
    sub_1D87A0E38(v8, v37, &qword_1ECA630C0);
    if (v29(&v8[v26], 1, v27) != 1)
    {
      v32 = v36;
      (*(v28 + 32))(v36, &v8[v26], v27);
      sub_1D87D4148(&qword_1ECA63610, MEMORY[0x1E6968FB0]);
      v33 = v31;
      v30 = sub_1D8B158C0();
      v34 = *(v28 + 8);
      v34(v32, v27);
      sub_1D87A14E4(v14, &qword_1ECA630C0);
      sub_1D87A14E4(v16, &qword_1ECA630C0);
      v34(v33, v27);
      sub_1D87A14E4(v8, &qword_1ECA630C0);
      return v30 & 1;
    }

    sub_1D87A14E4(v14, &qword_1ECA630C0);
    sub_1D87A14E4(v16, &qword_1ECA630C0);
    (*(v28 + 8))(v31, v27);
    goto LABEL_8;
  }

  sub_1D87A14E4(v14, &qword_1ECA630C0);
  sub_1D87A14E4(v16, &qword_1ECA630C0);
  if (v29(&v8[v26], 1, v27) != 1)
  {
LABEL_8:
    sub_1D87A14E4(v8, &qword_1ECA63608);
    v30 = 0;
    return v30 & 1;
  }

  sub_1D87A14E4(v8, &qword_1ECA630C0);
  v30 = 1;
  return v30 & 1;
}

uint64_t _s22VisualIntelligenceCore16ImageSearchStateO2eeoiySbAC_ACtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v33 = a1[2];
  v34 = v2;
  v4 = a1[3];
  v35 = a1[4];
  v5 = a1[1];
  v31 = *a1;
  v32 = v5;
  v6 = a2[3];
  v7 = a2[1];
  v38 = a2[2];
  v39 = v6;
  v8 = a2[3];
  v40 = a2[4];
  v9 = a2[1];
  v36 = *a2;
  v37 = v9;
  v41[2] = v33;
  v41[3] = v4;
  v41[0] = v31;
  v41[1] = v3;
  v41[4] = a1[4];
  v41[5] = v36;
  v10 = a2[4];
  v41[8] = v8;
  v41[9] = v10;
  v41[6] = v7;
  v41[7] = v38;
  v11 = v31;
  v12 = v36;
  if (v31 != 1)
  {
    if (v31)
    {
      if (v36 >= 2)
      {
        v15 = BYTE8(v31);
        v16 = v32;
        v28 = *(&v33 + 1);
        v29 = v33;
        v26 = *(&v34 + 1);
        v27 = v34;
        v22 = *(&v35 + 1);
        v23 = v35;
        v17 = BYTE8(v36);
        v18 = v37;
        v19 = v38;
        v24 = *(&v39 + 1);
        v25 = v39;
        v20 = *(&v40 + 1);
        v21 = v40;
        sub_1D87D4110(&v36, v30);
        sub_1D87D4110(&v31, v30);
        if (sub_1D88E37BC(v11, v12) & 1) != 0 && ((v15 ^ v17) & 1) == 0 && (sub_1D88E3934(v16, v18) & 1) != 0 && (sub_1D88E3AAC(*(&v16 + 1), *(&v18 + 1)) & 1) != 0 && (__PAIR128__(v28, v29) == v19 || (sub_1D8B16BA0()) && (v27 == v25 && v26 == v24 || (sub_1D8B16BA0()))
        {
          if (v23 != v21 || v22 != v20)
          {
            v13 = sub_1D8B16BA0();
            goto LABEL_10;
          }

          goto LABEL_6;
        }

LABEL_9:
        v13 = 0;
        goto LABEL_10;
      }
    }

    else if (!v36)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1D87D4110(&v36, v30);
    sub_1D87D4110(&v31, v30);
    goto LABEL_9;
  }

  if (v36 != 1)
  {
    goto LABEL_8;
  }

LABEL_6:
  v13 = 1;
LABEL_10:
  sub_1D87A14E4(v41, &qword_1ECA63600);
  return v13 & 1;
}

unint64_t sub_1D87D2658()
{
  result = qword_1ECA63540;
  if (!qword_1ECA63540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63540);
  }

  return result;
}

unint64_t sub_1D87D26B0()
{
  result = qword_1ECA63548;
  if (!qword_1ECA63548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63548);
  }

  return result;
}

unint64_t sub_1D87D2708()
{
  result = qword_1ECA63550;
  if (!qword_1ECA63550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63550);
  }

  return result;
}

unint64_t sub_1D87D2760()
{
  result = qword_1ECA63558;
  if (!qword_1ECA63558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63558);
  }

  return result;
}

unint64_t sub_1D87D27B8()
{
  result = qword_1ECA63560;
  if (!qword_1ECA63560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63560);
  }

  return result;
}

unint64_t sub_1D87D2810()
{
  result = qword_1ECA63568;
  if (!qword_1ECA63568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA63570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63568);
  }

  return result;
}

unint64_t sub_1D87D2878()
{
  result = qword_1ECA63578;
  if (!qword_1ECA63578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63578);
  }

  return result;
}

unint64_t sub_1D87D28D0()
{
  result = qword_1ECA63580;
  if (!qword_1ECA63580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63580);
  }

  return result;
}

unint64_t sub_1D87D2928()
{
  result = qword_1ECA63588;
  if (!qword_1ECA63588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63588);
  }

  return result;
}

unint64_t sub_1D87D2980()
{
  result = qword_1ECA63590;
  if (!qword_1ECA63590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA63590);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1D87D29E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 25))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D87D2A44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageSearchContext.Interaction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageSearchContext.Interaction(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ImageSearchEntrypoint(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ImageSearchEntrypoint(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GreymatterAvailability.UseCaseIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GreymatterAvailability.UseCaseIdentifier(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D87D3384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D87D34C4;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_1D87D34C4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1D87D35C0(uint64_t a1, unsigned int a2)
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

uint64_t sub_1D87D3610(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1D87D3664(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1D87D367C(void *result, int a2)
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

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D87D36E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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