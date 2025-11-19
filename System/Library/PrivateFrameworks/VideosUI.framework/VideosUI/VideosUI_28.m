uint64_t sub_1E384BD3C(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x7465736572;
  }

  else
  {
    v3 = 0x65767265736572;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (a2)
  {
    v5 = 0x7465736572;
  }

  else
  {
    v5 = 0x65767265736572;
  }

  if (a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384BDD8(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0xD000000000000013;
  }

  if (v2)
  {
    v4 = "";
  }

  else
  {
    v4 = "defaultActionButton";
  }

  if (a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0xD000000000000013;
  }

  if (a2)
  {
    v6 = "defaultActionButton";
  }

  else
  {
    v6 = "";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384BE7C(unsigned __int8 a1, char a2)
{
  v2 = 1953720684;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1953720684;
  switch(v4)
  {
    case 1:
      v5 = 1685217635;
      break;
    case 2:
      v5 = 0x6E69776F6C6C6F66;
      v3 = 0xE900000000000067;
      break;
    case 3:
      v5 = 0x6F6C6C6F46746F6ELL;
      v3 = 0xEC000000676E6977;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1685217635;
      break;
    case 2:
      v2 = 0x6E69776F6C6C6F66;
      v6 = 0xE900000000000067;
      break;
    case 3:
      v2 = 0x6F6C6C6F46746F6ELL;
      v6 = 0xEC000000676E6977;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384BFC4(char a1, char a2)
{
  v2 = (a1 & 1) == 0;
  if (a1)
  {
    v3 = 0x65766C6F73736964;
  }

  else
  {
    v3 = 1701865847;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (a2)
  {
    v5 = 0x65766C6F73736964;
  }

  else
  {
    v5 = 1701865847;
  }

  if (a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384C05C(unsigned __int8 a1, char a2)
{
  v2 = 0x79616C506F747561;
  v3 = 0xE800000000000000;
  v4 = a1;
  v5 = 0x79616C506F747561;
  switch(v4)
  {
    case 1:
      v3 = 0xE400000000000000;
      v5 = 2036427888;
      break;
    case 2:
      v3 = 0xE600000000000000;
      v5 = 0x7463656C6573;
      break;
    case 3:
      v5 = 0x6867696C68676968;
      v3 = 0xE900000000000074;
      break;
    case 4:
      v5 = 0x4D747865746E6F63;
      v3 = 0xEB00000000756E65;
      break;
    default:
      break;
  }

  v6 = 0xE800000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE400000000000000;
      v2 = 2036427888;
      break;
    case 2:
      v6 = 0xE600000000000000;
      v2 = 0x7463656C6573;
      break;
    case 3:
      v2 = 0x6867696C68676968;
      v6 = 0xE900000000000074;
      break;
    case 4:
      v2 = 0x4D747865746E6F63;
      v6 = 0xEB00000000756E65;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E384C208(__int16 a1)
{
  sub_1E4207B44();
  sub_1E384EE08(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384C284()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384C2F4()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384C3AC()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384C404()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384C45C()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384C4B4()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384C530()
{
  OUTLINED_FUNCTION_71_1();
  v0(v1);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E384C584()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384C5DC()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384C634()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384C6B4()
{
  OUTLINED_FUNCTION_71_1();
  v0(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E384C714()
{
  sub_1E4206014();
}

uint64_t sub_1E384C78C()
{
  sub_1E4206014();
}

uint64_t sub_1E384C7FC()
{
  sub_1E4206014();
}

uint64_t sub_1E384C8C8()
{
  sub_1E4206014();
}

uint64_t sub_1E384C93C()
{
  sub_1E4206014();
}

uint64_t sub_1E384CA5C()
{
  sub_1E4206014();
}

uint64_t sub_1E384CB3C()
{
  sub_1E4206014();
}

uint64_t sub_1E384CBA4()
{
  sub_1E4206014();
}

uint64_t sub_1E384CC94()
{
  sub_1E4206014();
}

uint64_t sub_1E384CD50()
{
  sub_1E4206014();
}

uint64_t sub_1E384CDF0()
{
  sub_1E4206014();
}

uint64_t sub_1E384CE6C()
{
  sub_1E4206014();
}

uint64_t sub_1E384CF44()
{
  sub_1E4206014();
}

uint64_t sub_1E384CFAC()
{
  sub_1E4206014();
}

uint64_t sub_1E384D080()
{
  sub_1E4206014();
}

uint64_t sub_1E384D15C()
{
  sub_1E4206014();
}

uint64_t sub_1E384D218()
{
  sub_1E4206014();
}

uint64_t sub_1E384D334()
{
  sub_1E4206014();
}

uint64_t sub_1E384D3B0()
{
  sub_1E4206014();
}

uint64_t sub_1E384D480()
{
  sub_1E4206014();
}

uint64_t sub_1E384D558()
{
  sub_1E4206014();
}

uint64_t sub_1E384D5C0()
{
  sub_1E4206014();
}

uint64_t sub_1E384D638()
{
  sub_1E4206014();
}

uint64_t sub_1E384D6D0()
{
  sub_1E4206014();
}

uint64_t sub_1E384D754()
{
  sub_1E4206014();
}

uint64_t sub_1E384D7D0()
{
  sub_1E4206014();
}

uint64_t sub_1E384D910(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  sub_1E4206014();
}

uint64_t sub_1E384D968()
{
  sub_1E4206014();
}

uint64_t sub_1E384D9E4()
{
  sub_1E4206014();
}

uint64_t sub_1E384DA4C()
{
  sub_1E4206014();
}

uint64_t sub_1E384DAB4()
{
  sub_1E4206014();
}

uint64_t sub_1E384DB64()
{
  sub_1E4206014();
}

uint64_t sub_1E384DC34(uint64_t a1, __int16 a2)
{
  sub_1E384EE08(a2);
  sub_1E4206014();
}

uint64_t sub_1E384DC88()
{
  sub_1E4206014();
}

uint64_t sub_1E384DD1C()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384DD94(uint64_t a1, __int16 a2)
{
  sub_1E4207B44();
  sub_1E384EE08(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384DDF4()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384DE70()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384DEEC()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384DF7C()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384DFD0()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384E024()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384E0B4()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384E14C()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384E1F8()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384E284()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384E300()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384E354()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384E404()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384E494()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384E540()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384E594()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384E5E8()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384E6A0()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384E74C()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384E7C8()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384E858()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384E90C()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384E960()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384E9B4()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384EA4C()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384EAA0()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384EB1C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_1E4207B44();
  a3(a2);
  OUTLINED_FUNCTION_18_0();

  return sub_1E4207BA4();
}

uint64_t sub_1E384EB70()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384EBF8()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E384EC44(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  sub_1E4207B44();
  a3(v6, a2);
  return sub_1E4207BA4();
}

uint64_t sub_1E384EC90()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E384ED14()
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

VideosUI::ViewModelEvent_optional sub_1E384EDA0@<W0>(Swift::String *a1@<X0>, VideosUI::ViewModelEvent_optional *a2@<X8>)
{
  result.value = ViewModelEvent.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t sub_1E384EDD0@<X0>(uint64_t *a1@<X8>)
{
  result = ViewModelEvent.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_1E384EE08(__int16 a1)
{
  switch(a1)
  {
    case 3:
    case 25:
    case 30:
    case 109:
    case 132:
    case 138:
    case 145:
    case 150:
    case 158:
    case 159:
    case 185:
    case 191:
    case 215:
    case 217:
    case 218:
    case 221:
    case 231:
    case 249:
      OUTLINED_FUNCTION_23();
      break;
    case 13:
      OUTLINED_FUNCTION_62_7(0x746F6D6F7270);
      break;
    case 16:
    case 34:
    case 57:
    case 66:
    case 67:
    case 98:
    case 130:
    case 147:
    case 164:
    case 172:
    case 183:
    case 188:
    case 196:
    case 197:
    case 201:
    case 216:
    case 258:
      OUTLINED_FUNCTION_43_3(16);
      break;
    case 23:
      OUTLINED_FUNCTION_56_0(1819568500);
      break;
    case 35:
      OUTLINED_FUNCTION_54_4();
      break;
    case 36:
      OUTLINED_FUNCTION_56_0(1734631778);
      break;
    case 41:
      OUTLINED_FUNCTION_69_4(0x72676F6E6F6DLL);
      break;
    case 44:
      OUTLINED_FUNCTION_62_7(0x7463656C6573);
      break;
    case 64:
    case 69:
    case 72:
    case 74:
    case 79:
    case 85:
    case 87:
    case 92:
    case 103:
    case 108:
    case 110:
    case 111:
    case 112:
    case 116:
    case 117:
    case 121:
    case 123:
    case 124:
    case 128:
    case 129:
    case 131:
    case 134:
    case 135:
    case 136:
    case 143:
    case 156:
    case 161:
    case 162:
    case 165:
    case 169:
    case 179:
    case 186:
    case 195:
    case 204:
    case 208:
    case 210:
    case 220:
    case 223:
    case 228:
    case 229:
    case 230:
    case 233:
    case 238:
    case 244:
    case 252:
    case 257:
      OUTLINED_FUNCTION_70_1();
      break;
    case 71:
    case 75:
    case 163:
    case 167:
    case 187:
    case 190:
    case 205:
    case 214:
    case 255:
      OUTLINED_FUNCTION_65_5(16);
      break;
    case 80:
      OUTLINED_FUNCTION_7_57(16);
      break;
    case 81:
    case 84:
    case 88:
    case 105:
    case 106:
    case 139:
      OUTLINED_FUNCTION_64_8();
      break;
    case 83:
    case 107:
      OUTLINED_FUNCTION_6_45();
      break;
    case 89:
    case 122:
      OUTLINED_FUNCTION_66_10(16);
      break;
    case 100:
      OUTLINED_FUNCTION_63_6(0x61676976616ELL);
      break;
    case 140:
      OUTLINED_FUNCTION_63_6(0x63656C6C6F63);
      break;
    case 234:
      OUTLINED_FUNCTION_52_9();
      break;
    case 260:
      OUTLINED_FUNCTION_21_14(16);
      break;
    default:
      return;
  }
}

BOOL sub_1E38504C4(unsigned __int16 a1)
{
  v1 = a1;
  result = 1;
  if (v1 > 0x1E || ((1 << v1) & 0x7FCFFFF8) == 0)
  {
    return v1 - 236 < 3;
  }

  return result;
}

uint64_t sub_1E3850594(__int16 a1)
{
  sub_1E384EE08(a1);
  v3 = v2;
  if (v1 == 0xD000000000000016 && 0x80000001E4261AC0 == v2)
  {
    goto LABEL_21;
  }

  v5 = v1;
  v6 = sub_1E42079A4();

  if (v6)
  {
    return 1;
  }

  if (v5 == 0x64616F6C6E776F64 && v3 == 0xEE006E6F74747542)
  {
    goto LABEL_21;
  }

  v8 = sub_1E42079A4();

  if (v8)
  {
    return 1;
  }

  if (v5 == 0xD000000000000014 && 0x80000001E4262680 == v3)
  {
LABEL_21:

    return 1;
  }

  v10 = OUTLINED_FUNCTION_67_8();

  if ((v10 & 1) == 0)
  {
    if (v5 != 0xD000000000000014 || 0x80000001E4262390 != v3)
    {
      v12 = OUTLINED_FUNCTION_67_8();

      return v12 & 1;
    }

    goto LABEL_21;
  }

  return 1;
}

uint64_t sub_1E38506C8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BBA8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E42A3100;
  *(v0 + 32) = "template";
  *(v0 + 40) = 8;
  *(v0 + 48) = 2;
  *(v0 + 56) = "background";
  *(v0 + 64) = 10;
  *(v0 + 72) = 2;
  *(v0 + 80) = "errorView";
  *(v0 + 88) = 9;
  *(v0 + 96) = 2;
  *(v0 + 104) = "availabilityText";
  *(v0 + 112) = 16;
  *(v0 + 120) = 2;
  *(v0 + 128) = "bodyText";
  *(v0 + 136) = 8;
  *(v0 + 144) = 2;
  *(v0 + 152) = "caption";
  *(v0 + 160) = 7;
  *(v0 + 168) = 2;
  *(v0 + 176) = "caption1";
  *(v0 + 184) = 8;
  *(v0 + 192) = 2;
  *(v0 + 200) = "debugText";
  *(v0 + 208) = 9;
  *(v0 + 216) = 2;
  *(v0 + 224) = "debugText1";
  *(v0 + 232) = 10;
  *(v0 + 240) = 2;
  *(v0 + 248) = "description";
  *(v0 + 256) = 11;
  *(v0 + 264) = 2;
  *(v0 + 272) = "detailsText";
  *(v0 + 280) = 11;
  *(v0 + 288) = 2;
  *(v0 + 296) = "disclaimerText";
  *(v0 + 304) = 14;
  *(v0 + 312) = 2;
  *(v0 + 320) = "episodeInfoText";
  *(v0 + 328) = 15;
  *(v0 + 336) = 2;
  *(v0 + 344) = "promotionalText";
  *(v0 + 352) = 15;
  *(v0 + 360) = 2;
  *(v0 + 368) = "subBody";
  *(v0 + 376) = 7;
  *(v0 + 384) = 2;
  *(v0 + 392) = "subtitle";
  *(v0 + 400) = 8;
  *(v0 + 408) = 2;
  *(v0 + 416) = "alternateSubtitle";
  *(v0 + 424) = 17;
  *(v0 + 432) = 2;
  *(v0 + 440) = "text";
  *(v0 + 448) = 4;
  *(v0 + 456) = 2;
  *(v0 + 464) = "text1";
  *(v0 + 472) = 5;
  *(v0 + 480) = 2;
  *(v0 + 488) = "text2";
  *(v0 + 496) = 5;
  *(v0 + 504) = 2;
  *(v0 + 512) = "alternateText";
  *(v0 + 520) = 13;
  *(v0 + 528) = 2;
  *(v0 + 536) = "alternateText1";
  *(v0 + 544) = 14;
  *(v0 + 552) = 2;
  *(v0 + 560) = "headline";
  *(v0 + 568) = 8;
  *(v0 + 576) = 2;
  *(v0 + 584) = "title";
  *(v0 + 592) = 5;
  *(v0 + 600) = 2;
  *(v0 + 608) = "alternateTitle";
  *(v0 + 616) = 14;
  *(v0 + 624) = 2;
  *(v0 + 632) = "abbreviatedTitle";
  *(v0 + 640) = 16;
  *(v0 + 648) = 2;
  *(v0 + 656) = "eyebrow";
  *(v0 + 664) = 7;
  *(v0 + 672) = 2;
  *(v0 + 680) = "askToBuyPrompt";
  *(v0 + 688) = 14;
  *(v0 + 696) = 2;
  *(v0 + 704) = "actionTitle";
  *(v0 + 712) = 11;
  *(v0 + 720) = 2;
  *(v0 + 728) = "cancelTitle";
  *(v0 + 736) = 11;
  *(v0 + 744) = 2;
  *(v0 + 752) = "explainationText";
  *(v0 + 760) = 16;
  *(v0 + 768) = 2;
  *(v0 + 776) = "accessoryImg";
  *(v0 + 784) = 12;
  *(v0 + 792) = 2;
  *(v0 + 800) = "appImage";
  *(v0 + 808) = 8;
  *(v0 + 816) = 2;
  *(v0 + 824) = "alphaImg";
  *(v0 + 832) = 8;
  *(v0 + 840) = 2;
  *(v0 + 848) = "availabilityImage";
  *(v0 + 856) = 17;
  *(v0 + 864) = 2;
  *(v0 + 872) = "backgroundImage";
  *(v0 + 880) = 15;
  *(v0 + 888) = 2;
  *(v0 + 896) = "badge";
  *(v0 + 904) = 5;
  *(v0 + 912) = 2;
  *(v0 + 920) = "fallbackImg";
  *(v0 + 928) = 11;
  *(v0 + 936) = 2;
  *(v0 + 944) = "fullscreenImg";
  *(v0 + 952) = 13;
  *(v0 + 960) = 2;
  *(v0 + 968) = "img";
  *(v0 + 976) = 3;
  *(v0 + 984) = 2;
  *(v0 + 992) = "logo";
  *(v0 + 1000) = 4;
  *(v0 + 1008) = 2;
  *(v0 + 1016) = "monogram";
  *(v0 + 1024) = 8;
  *(v0 + 1032) = 2;
  *(v0 + 1040) = "previewImg";
  *(v0 + 1048) = 10;
  *(v0 + 1056) = 2;
  *(v0 + 1064) = "titleImage";
  *(v0 + 1072) = 10;
  *(v0 + 1080) = 2;
  *(v0 + 1088) = "selectionImage";
  *(v0 + 1096) = 14;
  *(v0 + 1104) = 2;
  *(v0 + 1112) = "headlineImage";
  *(v0 + 1120) = 13;
  *(v0 + 1128) = 2;
  *(v0 + 1136) = "headerLogo";
  *(v0 + 1144) = 10;
  *(v0 + 1152) = 2;
  *(v0 + 1160) = "attributionLogo";
  *(v0 + 1168) = 15;
  *(v0 + 1176) = 2;
  *(v0 + 1184) = "alternateImg";
  *(v0 + 1192) = 12;
  *(v0 + 1200) = 2;
  *(v0 + 1208) = "compositeImage";
  *(v0 + 1216) = 14;
  *(v0 + 1224) = 2;
  *(v0 + 1232) = "newBadge";
  *(v0 + 1240) = 8;
  *(v0 + 1248) = 2;
  *(v0 + 1256) = "editorialBadge";
  *(v0 + 1264) = 14;
  *(v0 + 1272) = 2;
  *(v0 + 1280) = "spotlightBadge";
  *(v0 + 1288) = 14;
  *(v0 + 1296) = 2;
  *(v0 + 1304) = "liveBadge";
  *(v0 + 1312) = 9;
  *(v0 + 1320) = 2;
  *(v0 + 1328) = "timeBadge";
  *(v0 + 1336) = 9;
  *(v0 + 1344) = 2;
  *(v0 + 1352) = "reairBadge";
  *(v0 + 1360) = 10;
  *(v0 + 1368) = 2;
  *(v0 + 1376) = "comingSoonBadge";
  *(v0 + 1384) = 15;
  *(v0 + 1392) = 2;
  *(v0 + 1400) = "rentalExpiryBadge";
  *(v0 + 1408) = 17;
  *(v0 + 1416) = 2;
  *(v0 + 1424) = "ageRatingBadge";
  *(v0 + 1432) = 14;
  *(v0 + 1440) = 2;
  *(v0 + 1448) = "button";
  *(v0 + 1456) = 6;
  *(v0 + 1464) = 2;
  *(v0 + 1472) = "textualButton";
  *(v0 + 1480) = 13;
  *(v0 + 1488) = 2;
  *(v0 + 1496) = "brandLinkButton";
  *(v0 + 1504) = 15;
  *(v0 + 1512) = 2;
  *(v0 + 1520) = "accountSettingsButton";
  *(v0 + 1528) = 21;
  *(v0 + 1536) = 2;
  *(v0 + 1544) = "downloadButton";
  *(v0 + 1552) = 14;
  *(v0 + 1560) = 2;
  *(v0 + 1568) = "remoteDownloadButton";
  *(v0 + 1592) = "upNextButton";
  *(v0 + 1616) = "liveUpdatesButton";
  *(v0 + 1640) = "contextMenuButton";
  *(v0 + 1664) = "countdownButton";
  *(v0 + 1688) = "groupRecommendationsFilterButton";
  *(v0 + 1712) = "pickerButton";
  *(v0 + 1736) = "sportsBridgeButton";
  *(v0 + 1760) = "episodeSectionHeader";
  *(v0 + 1784) = "footer";
  *(v0 + 1808) = "offerSelectionFooter";
  *(v0 + 1832) = "connectedAppFooter";
  *(v0 + 1856) = "showcaseBanner";
  *(v0 + 1880) = "leagueStandingsFooter";
  *(v0 + 1904) = "emptyFooter";
  *(v0 + 1928) = "searchResultDescription";
  *(v0 + 1952) = "liveUpdatesButtonTooltip";
  *(v0 + 1960) = 24;
  *(v0 + 1976) = "castBanner";
  *(v0 + 2000) = "channelBanner";
  *(v0 + 2024) = "canonicalBanner";
  *(v0 + 2240) = "contentAvailability";
  *(v0 + 2312) = "video";
  *(v0 + 2336) = "playbackStatus";
  *(v0 + 2360) = "verticalStack";
  *(v0 + 2384) = "commonSenseRating";
  *(v0 + 2408) = "channelLogo";
  *(v0 + 2432) = "navigationBar";
  *(v0 + 2456) = "leftBarItems";
  *(v0 + 2480) = "rightBarItems";
  *(v0 + 2504) = "largeTitleAccessoryView";
  *(v0 + 2528) = "segmentedPicker";
  *(v0 + 2552) = "listHeader";
  *(v0 + 2576) = "pageHeader";
  *(v0 + 2600) = "canonicalFooter";
  *(v0 + 2624) = "canonicalAiringInfo";
  *(v0 + 2648) = "canonicalSection";
  *(v0 + 2672) = "canonicalSectionHeader";
  *(v0 + 2696) = "canonicalSectionItem";
  *(v0 + 2720) = "canonicalSectionFooter";
  *(v0 + 2744) = "separator";
  *(v0 + 2768) = "dashedSeparator";
  *(v0 + 2792) = "progressBar";
  *(v0 + 2816) = "thickInfiniteSpinner";
  *(v0 + 2840) = "orthogonalCollection";
  *(v0 + 2864) = "gridCollection";
  *(v0 + 2888) = "listCollection";
  *(v0 + 2912) = "nonScrollableListCollection";
  *(v0 + 3728) = "upNextOverlay";
  *(v0 + 4256) = "navBarLockup";
  *(v0 + 1576) = 20;
  *(v0 + 4280) = "itunesExtrasDescriptionLockup";
  *(v0 + 4264) = 12;
  *(v0 + 4272) = 2;
  *(v0 + 4232) = "spotlightLockup";
  *(v0 + 4224) = 2;
  *(v0 + 4240) = 15;
  *(v0 + 4248) = 2;
  *(v0 + 4208) = "flowcaseLockup";
  *(v0 + 4192) = 12;
  *(v0 + 4200) = 2;
  *(v0 + 4216) = 14;
  *(v0 + 1584) = 2;
  *(v0 + 4184) = "featuredCard";
  *(v0 + 4168) = 17;
  *(v0 + 4176) = 2;
  *(v0 + 4136) = "episodeLockup";
  *(v0 + 4144) = 13;
  *(v0 + 4152) = 2;
  *(v0 + 4160) = "episodeInfoLockup";
  *(v0 + 4104) = 2;
  *(v0 + 4112) = "editorialLockup";
  *(v0 + 4120) = 15;
  *(v0 + 4128) = 2;
  *(v0 + 4088) = "decoratedShelfLockup";
  *(v0 + 4080) = 2;
  *(v0 + 4096) = 20;
  *(v0 + 3824) = "editorialOverlay";
  *(v0 + 4056) = 2;
  *(v0 + 4064) = "commonSenseCard";
  *(v0 + 4072) = 15;
  *(v0 + 4040) = "channelOfferLockup";
  *(v0 + 4032) = 2;
  *(v0 + 4048) = 18;
  *(v0 + 4016) = "aboutCard";
  *(v0 + 4000) = 19;
  *(v0 + 4008) = 2;
  *(v0 + 4024) = 9;
  *(v0 + 1600) = 12;
  *(v0 + 3992) = "favoriteTeamOverlay";
  *(v0 + 3976) = 17;
  *(v0 + 3984) = 2;
  *(v0 + 3920) = "spotlightUpsellOverlay";
  *(v0 + 3952) = 18;
  *(v0 + 3960) = 2;
  *(v0 + 3968) = "libEpisodeOverlay";
  *(v0 + 3944) = "liveServiceOverlay";
  *(v0 + 3928) = 22;
  *(v0 + 3936) = 2;
  *(v0 + 3896) = "channelOfferOverlay";
  *(v0 + 3888) = 2;
  *(v0 + 3904) = 19;
  *(v0 + 3912) = 2;
  *(v0 + 3872) = "lockupOverlay";
  *(v0 + 3856) = 16;
  *(v0 + 3864) = 2;
  *(v0 + 3880) = 13;
  *(v0 + 1608) = 2;
  *(v0 + 3848) = "spotlightOverlay";
  *(v0 + 3832) = 16;
  *(v0 + 3840) = 2;
  *(v0 + 3800) = "navbrickOverlay";
  *(v0 + 3792) = 2;
  *(v0 + 3808) = 15;
  *(v0 + 3816) = 2;
  *(v0 + 3776) = "upNextSportsOverlay";
  *(v0 + 3760) = 13;
  *(v0 + 3768) = 2;
  *(v0 + 3784) = 19;
  *(v0 + 1624) = 17;
  *(v0 + 3752) = "sportsOverlay";
  *(v0 + 3736) = 13;
  *(v0 + 3744) = 2;
  *(v0 + 3704) = "overlay";
  *(v0 + 3696) = 2;
  *(v0 + 3712) = 7;
  *(v0 + 3720) = 2;
  *(v0 + 3680) = "section";
  *(v0 + 3664) = 5;
  *(v0 + 3672) = 2;
  *(v0 + 3688) = 7;
  *(v0 + 1632) = 2;
  *(v0 + 3656) = "shelf";
  *(v0 + 3640) = 16;
  *(v0 + 3648) = 2;
  *(v0 + 3608) = "decoratedShelf";
  *(v0 + 3616) = 14;
  *(v0 + 3624) = 2;
  *(v0 + 3632) = "upNextCollection";
  *(v0 + 3576) = 2;
  *(v0 + 3584) = "epicInline";
  *(v0 + 3592) = 10;
  *(v0 + 3600) = 2;
  *(v0 + 3560) = "listSectionHeader";
  *(v0 + 3552) = 2;
  *(v0 + 3568) = 17;
  *(v0 + 3152) = "episodeCollection";
  *(v0 + 3528) = 2;
  *(v0 + 3536) = "askToBuyHeader";
  *(v0 + 3544) = 14;
  *(v0 + 3248) = "searchRecentsCollection";
  *(v0 + 3504) = 2;
  *(v0 + 3512) = "subsetCollection";
  *(v0 + 3520) = 16;
  *(v0 + 3480) = 2;
  *(v0 + 3488) = "collectionHeaderAccessory";
  *(v0 + 3496) = 25;
  *(v0 + 3464) = "searchHistoryListHeader";
  *(v0 + 3456) = 2;
  *(v0 + 3472) = 23;
  *(v0 + 3440) = "searchTopResultsListHeader";
  *(v0 + 3424) = 21;
  *(v0 + 3432) = 2;
  *(v0 + 3448) = 26;
  *(v0 + 1648) = 17;
  *(v0 + 3416) = "collectionGroupHeader";
  *(v0 + 3400) = 15;
  *(v0 + 3408) = 2;
  *(v0 + 3368) = "richHeader";
  *(v0 + 3376) = 10;
  *(v0 + 3384) = 2;
  *(v0 + 3392) = "collectionGroup";
  *(v0 + 3336) = 2;
  *(v0 + 3344) = "collectionHeader";
  *(v0 + 3352) = 16;
  *(v0 + 3360) = 2;
  *(v0 + 3320) = "unifiedMessagingBubbleTip";
  *(v0 + 3312) = 2;
  *(v0 + 3328) = 25;
  *(v0 + 3296) = "unifiedMessagingAccountMessage";
  *(v0 + 3280) = 22;
  *(v0 + 3288) = 2;
  *(v0 + 3304) = 30;
  *(v0 + 1656) = 2;
  *(v0 + 3272) = "unifiedMessagingBanner";
  *(v0 + 3256) = 23;
  *(v0 + 3264) = 2;
  *(v0 + 3224) = "searchTopResultsCollection";
  *(v0 + 3216) = 2;
  *(v0 + 3232) = 26;
  *(v0 + 3240) = 2;
  *(v0 + 3200) = "searchCollection";
  *(v0 + 3184) = 20;
  *(v0 + 3192) = 2;
  *(v0 + 3208) = 16;
  *(v0 + 1672) = 15;
  *(v0 + 3176) = "libEpisodeCollection";
  *(v0 + 3160) = 17;
  *(v0 + 3168) = 2;
  *(v0 + 3128) = "canonicalInfoCollection";
  *(v0 + 3120) = 2;
  *(v0 + 3136) = 23;
  *(v0 + 3144) = 2;
  *(v0 + 3104) = "channelOfferCarousel";
  *(v0 + 3088) = 8;
  *(v0 + 3096) = 2;
  *(v0 + 3112) = 20;
  *(v0 + 1680) = 2;
  *(v0 + 3080) = "flowcase";
  *(v0 + 3064) = 8;
  *(v0 + 3072) = 2;
  *(v0 + 3032) = "flexibleGrid";
  *(v0 + 3040) = 12;
  *(v0 + 3048) = 2;
  *(v0 + 3056) = "carousel";
  *(v0 + 3000) = 2;
  *(v0 + 3008) = "flexibleGridCollection";
  *(v0 + 3016) = 22;
  *(v0 + 3024) = 2;
  *(v0 + 2984) = "mediaShowcaseCollection";
  *(v0 + 2968) = 28;
  *(v0 + 2976) = 2;
  *(v0 + 2992) = 23;
  *(v0 + 2904) = 2;
  *(v0 + 2944) = 30;
  *(v0 + 2952) = 2;
  *(v0 + 2960) = "horizontalMultiRowCollection";
  *(v0 + 2936) = "horizontalMultiGroupCollection";
  *(v0 + 2920) = 27;
  *(v0 + 2928) = 2;
  *(v0 + 1696) = 32;
  *(v0 + 1704) = 2;
  *(v0 + 2856) = 2;
  *(v0 + 2872) = 14;
  *(v0 + 2880) = 2;
  *(v0 + 2896) = 14;
  *(v0 + 1720) = 12;
  *(v0 + 1728) = 2;
  *(v0 + 2808) = 2;
  *(v0 + 2824) = 20;
  *(v0 + 2832) = 2;
  *(v0 + 2848) = 20;
  *(v0 + 1744) = 18;
  *(v0 + 1752) = 2;
  *(v0 + 2760) = 2;
  *(v0 + 2776) = 15;
  *(v0 + 2784) = 2;
  *(v0 + 2800) = 11;
  *(v0 + 1768) = 20;
  *(v0 + 1776) = 2;
  *(v0 + 2712) = 2;
  *(v0 + 2728) = 22;
  *(v0 + 2736) = 2;
  *(v0 + 2752) = 9;
  *(v0 + 1792) = 6;
  *(v0 + 1800) = 2;
  *(v0 + 2664) = 2;
  *(v0 + 2680) = 22;
  *(v0 + 2688) = 2;
  *(v0 + 2704) = 20;
  *(v0 + 1816) = 20;
  *(v0 + 1824) = 2;
  *(v0 + 2616) = 2;
  *(v0 + 2632) = 19;
  *(v0 + 2640) = 2;
  *(v0 + 2656) = 16;
  *(v0 + 1840) = 18;
  *(v0 + 1848) = 2;
  *(v0 + 2568) = 2;
  *(v0 + 2584) = 10;
  *(v0 + 2592) = 2;
  *(v0 + 2608) = 15;
  *(v0 + 1864) = 14;
  *(v0 + 1872) = 2;
  *(v0 + 2520) = 2;
  *(v0 + 2536) = 15;
  *(v0 + 2544) = 2;
  *(v0 + 2560) = 10;
  *(v0 + 1888) = 21;
  *(v0 + 1896) = 2;
  *(v0 + 2472) = 2;
  *(v0 + 2488) = 13;
  *(v0 + 2496) = 2;
  *(v0 + 2512) = 23;
  *(v0 + 1912) = 11;
  *(v0 + 1920) = 2;
  *(v0 + 2424) = 2;
  *(v0 + 2440) = 13;
  *(v0 + 2448) = 2;
  *(v0 + 2464) = 12;
  *(v0 + 1936) = 23;
  *(v0 + 1944) = 2;
  *(v0 + 2376) = 2;
  *(v0 + 2392) = 17;
  *(v0 + 2400) = 2;
  *(v0 + 2416) = 11;
  *(v0 + 1968) = 2;
  *(v0 + 1984) = 10;
  *(v0 + 1992) = 2;
  *(v0 + 2344) = 14;
  *(v0 + 2352) = 2;
  *(v0 + 2368) = 13;
  *(v0 + 2008) = 13;
  *(v0 + 2320) = 5;
  *(v0 + 2304) = 2;
  *(v0 + 2328) = 2;
  *(v0 + 2288) = "roleInfo";
  *(v0 + 2272) = 12;
  *(v0 + 2280) = 2;
  *(v0 + 2296) = 8;
  *(v0 + 2016) = 2;
  *(v0 + 2264) = "rolesSummary";
  *(v0 + 2248) = 19;
  *(v0 + 2256) = 2;
  *(v0 + 2216) = "buttons";
  *(v0 + 2208) = 2;
  *(v0 + 2224) = 7;
  *(v0 + 2232) = 2;
  *(v0 + 2176) = 28;
  *(v0 + 2184) = 2;
  *(v0 + 2192) = "attributionView";
  *(v0 + 2200) = 15;
  *(v0 + 2032) = 15;
  *(v0 + 2152) = 10;
  *(v0 + 2160) = 2;
  *(v0 + 2168) = "searchQueryDescriptionBanner";
  *(v0 + 2120) = "canonicalTitleBanner";
  *(v0 + 2128) = 20;
  *(v0 + 2136) = 2;
  *(v0 + 2144) = "teamBanner";
  *(v0 + 2088) = 2;
  *(v0 + 2096) = "sportsCanonicalBanner";
  *(v0 + 2104) = 21;
  *(v0 + 2112) = 2;
  *(v0 + 2040) = 2;
  *(v0 + 2064) = 2;
  *(v0 + 2072) = "offerSelectionBanner";
  *(v0 + 2080) = 20;
  *(v0 + 2048) = "roomBanner";
  *(v0 + 2056) = 10;
  *(v0 + 4288) = 29;
  *(v0 + 4296) = 2;
  *(v0 + 4304) = "lockup";
  *(v0 + 4312) = 6;
  *(v0 + 4320) = 2;
  *(v0 + 4328) = "standardExtrasLockup";
  *(v0 + 4336) = 20;
  *(v0 + 4344) = 2;
  *(v0 + 4352) = "offerCardLegacy";
  *(v0 + 4360) = 15;
  *(v0 + 4368) = 2;
  *(v0 + 4376) = "offerCard";
  *(v0 + 4384) = 9;
  *(v0 + 4392) = 2;
  *(v0 + 4400) = "offerListLockup";
  *(v0 + 4408) = 15;
  *(v0 + 4416) = 2;
  *(v0 + 4424) = "playHistoryLockup";
  *(v0 + 4432) = 17;
  *(v0 + 4440) = 2;
  *(v0 + 4448) = "sportsCard";
  *(v0 + 4456) = 10;
  *(v0 + 4464) = 2;
  *(v0 + 4472) = "sportsScoreboard";
  *(v0 + 4480) = 16;
  *(v0 + 4488) = 2;
  *(v0 + 4496) = "sportsUpNextScoreboard";
  *(v0 + 4504) = 22;
  *(v0 + 4512) = 2;
  *(v0 + 4520) = "sportsFeaturedCard";
  *(v0 + 4528) = 18;
  *(v0 + 4536) = 2;
  *(v0 + 4544) = "sportsExtraLockup";
  *(v0 + 4552) = 17;
  *(v0 + 4560) = 2;
  *(v0 + 4568) = "sportsLockup";
  *(v0 + 4576) = 12;
  *(v0 + 4584) = 2;
  *(v0 + 4592) = "sportsUpNextLockup";
  *(v0 + 4600) = 18;
  *(v0 + 4608) = 2;
  *(v0 + 4616) = "sportsPlayByPlay";
  *(v0 + 4624) = 16;
  *(v0 + 4632) = 2;
  *(v0 + 4640) = "tomatometerCard";
  *(v0 + 4648) = 15;
  *(v0 + 4656) = 2;
  *(v0 + 4664) = "upNextLockup";
  *(v0 + 4672) = 12;
  *(v0 + 4680) = 2;
  *(v0 + 4688) = "monogramLockup";
  *(v0 + 4696) = 14;
  *(v0 + 4704) = 2;
  *(v0 + 4712) = "sportsFavoriteBanner";
  *(v0 + 4720) = 20;
  *(v0 + 4728) = 2;
  *(v0 + 4736) = "syndicationLockup";
  *(v0 + 4744) = 17;
  *(v0 + 4752) = 2;
  *(v0 + 4760) = "liveServiceLockup";
  *(v0 + 4768) = 17;
  *(v0 + 4776) = 2;
  *(v0 + 4784) = "brandLockup";
  *(v0 + 4792) = 11;
  *(v0 + 4800) = 2;
  *(v0 + 4808) = "hostCell";
  *(v0 + 4816) = 8;
  *(v0 + 4824) = 2;
  *(v0 + 4832) = "ordinalLockup";
  *(v0 + 4840) = 13;
  *(v0 + 4848) = 2;
  *(v0 + 4856) = "ordinalListLockup";
  *(v0 + 4864) = 17;
  *(v0 + 4872) = 2;
  *(v0 + 4880) = "oneupLockup";
  *(v0 + 4888) = 11;
  *(v0 + 4896) = 2;
  *(v0 + 4904) = "showcaseLockup";
  *(v0 + 4912) = 14;
  *(v0 + 4920) = 2;
  *(v0 + 4928) = "playbackPersonLockup";
  *(v0 + 4936) = 20;
  *(v0 + 4944) = 2;
  *(v0 + 4952) = "playbackSongLockup";
  *(v0 + 4960) = 18;
  *(v0 + 4968) = 2;
  *(v0 + 4976) = "teamLockup";
  *(v0 + 4984) = 10;
  *(v0 + 4992) = 2;
  *(v0 + 5000) = "offerListCard";
  *(v0 + 5008) = 13;
  *(v0 + 5016) = 2;
  *(v0 + 5024) = "offerListSelectionCard";
  *(v0 + 5032) = 22;
  *(v0 + 5040) = 2;
  *(v0 + 5048) = "offerTeamCard";
  *(v0 + 5056) = 13;
  *(v0 + 5064) = 2;
  *(v0 + 5072) = "sportsFavoritesDescriptionLockup";
  *(v0 + 5080) = 32;
  *(v0 + 5088) = 2;
  *(v0 + 5096) = "sportsFavoritesLeagueLockup";
  *(v0 + 5104) = 27;
  *(v0 + 5112) = 2;
  *(v0 + 5120) = "sportsFavoritesTeamLockup";
  *(v0 + 5128) = 25;
  *(v0 + 5136) = 2;
  *(v0 + 5144) = "searchLockup";
  *(v0 + 5152) = 12;
  *(v0 + 5160) = 2;
  *(v0 + 5168) = "searchSportsLockup";
  *(v0 + 5176) = 18;
  *(v0 + 5184) = 2;
  *(v0 + 5192) = "searchCastLockup";
  *(v0 + 5200) = 16;
  *(v0 + 5208) = 2;
  *(v0 + 5216) = "searchBrandLockup";
  *(v0 + 5224) = 17;
  *(v0 + 5232) = 2;
  *(v0 + 5240) = "searchTeamLockup";
  *(v0 + 5248) = 16;
  *(v0 + 5256) = 2;
  *(v0 + 5264) = "searchHintLockup";
  *(v0 + 5272) = 16;
  *(v0 + 5280) = 2;
  *(v0 + 5288) = "searchTopResultLockup";
  *(v0 + 5296) = 21;
  *(v0 + 5304) = 2;
  *(v0 + 5312) = "searchRecentlyLockup";
  *(v0 + 5320) = 20;
  *(v0 + 5328) = 2;
  *(v0 + 5336) = "searchListLockup";
  *(v0 + 5344) = 16;
  *(v0 + 5352) = 2;
  *(v0 + 5360) = "mediaTags";
  *(v0 + 5368) = 9;
  *(v0 + 5376) = 2;
  *(v0 + 5384) = "mediaShowcaseLockup";
  *(v0 + 5392) = 19;
  *(v0 + 5400) = 2;
  *(v0 + 5408) = "mediaShowcaseMetadata";
  *(v0 + 5416) = 21;
  *(v0 + 5424) = 2;
  *(v0 + 5432) = "mediaShowcaseBadgeMetadata";
  *(v0 + 5440) = 26;
  *(v0 + 5448) = 2;
  *(v0 + 5456) = "postPlayLockup";
  *(v0 + 5464) = 14;
  *(v0 + 5472) = 2;
  *(v0 + 5480) = "playlistLockup";
  *(v0 + 5488) = 14;
  *(v0 + 5496) = 2;
  *(v0 + 5504) = "catchUpToLiveLockup";
  *(v0 + 5512) = 19;
  *(v0 + 5520) = 2;
  *(v0 + 5528) = "mediaShowcaseScoreboard";
  *(v0 + 5536) = 23;
  *(v0 + 5544) = 2;
  *(v0 + 5552) = "contextMenuPreviewItem";
  *(v0 + 5560) = 22;
  *(v0 + 5568) = 2;
  *(v0 + 5576) = "contextMenuGroup";
  *(v0 + 5584) = 16;
  *(v0 + 5592) = 2;
  *(v0 + 5600) = "contextMenuItem";
  *(v0 + 5608) = 15;
  *(v0 + 5616) = 2;
  *(v0 + 5624) = "downloadStateIndicator";
  *(v0 + 5632) = 22;
  *(v0 + 5640) = 2;
  *(v0 + 5648) = "scoreboard";
  *(v0 + 5656) = 10;
  *(v0 + 5664) = 2;
  *(v0 + 5672) = "scoreRow";
  *(v0 + 5680) = 8;
  *(v0 + 5688) = 2;
  *(v0 + 5696) = "scoreText";
  *(v0 + 5704) = 9;
  *(v0 + 5712) = 2;
  *(v0 + 5720) = "scoreValue";
  *(v0 + 5728) = 10;
  *(v0 + 5736) = 2;
  *(v0 + 5744) = "secondaryScoreValue";
  *(v0 + 5752) = 19;
  *(v0 + 5760) = 2;
  *(v0 + 5768) = "teamTitles";
  *(v0 + 5776) = 10;
  *(v0 + 5784) = 2;
  *(v0 + 5792) = "teamTitle";
  *(v0 + 5800) = 9;
  *(v0 + 5808) = 2;
  *(v0 + 5816) = "sportStats";
  *(v0 + 5824) = 10;
  *(v0 + 5832) = 2;
  *(v0 + 5840) = "teamStats";
  *(v0 + 5848) = 9;
  *(v0 + 5856) = 2;
  *(v0 + 5864) = "playerStats";
  *(v0 + 5872) = 11;
  *(v0 + 5880) = 2;
  *(v0 + 5888) = "leagueStandingsCard";
  *(v0 + 5896) = 19;
  *(v0 + 5904) = 2;
  *(v0 + 5912) = "flexibleGridRow";
  *(v0 + 5920) = 15;
  *(v0 + 5928) = 2;
  *(v0 + 5936) = "flexibleGridEmptyView";
  *(v0 + 5944) = 21;
  *(v0 + 5952) = 2;
  *(v0 + 5960) = "flexibleGridHeaderRow";
  *(v0 + 5968) = 21;
  *(v0 + 5976) = 2;
  *(v0 + 5984) = "emptyStateView";
  *(v0 + 5992) = 14;
  *(v0 + 6000) = 2;
  *(v0 + 6008) = "unitTestTemplate";
  *(v0 + 6016) = 16;
  *(v0 + 6024) = 2;
  *(v0 + 6032) = "unitTestLockup";
  *(v0 + 6040) = 14;
  *(v0 + 6048) = 2;
  *(v0 + 6056) = "unitTestCard";
  *(v0 + 6064) = 12;
  *(v0 + 6072) = 2;
  *(v0 + 6080) = "unitTestCardNoLayout";
  *(v0 + 6088) = 20;
  *(v0 + 6096) = 2;
  *(v0 + 6104) = "mainMenu";
  *(v0 + 6112) = 8;
  *(v0 + 6120) = 2;
  *(v0 + 6128) = "extrasListItem";
  *(v0 + 6136) = 14;
  *(v0 + 6144) = 2;
  *(v0 + 6152) = "extrasPreviewBadge";
  *(v0 + 6160) = 18;
  *(v0 + 6168) = 2;
  *(v0 + 6176) = "libraryLockup";
  *(v0 + 6184) = 13;
  *(v0 + 6192) = 2;
  *(v0 + 6200) = "libraryEpisodeLockup";
  *(v0 + 6208) = 20;
  *(v0 + 6216) = 2;
  *(v0 + 6224) = "libraryListLockup";
  *(v0 + 6232) = 17;
  *(v0 + 6240) = 2;
  *(v0 + 6248) = "leagueLegend";
  *(v0 + 6256) = 12;
  *(v0 + 6264) = 2;
  *(v0 + 6272) = "leagueLegendItem";
  *(v0 + 6280) = 16;
  *(v0 + 6288) = 2;
  *(v0 + 6296) = "leagueRank";
  *(v0 + 6304) = 10;
  *(v0 + 6312) = 2;
  *(v0 + 6320) = "glassContainer";
  *(v0 + 6328) = 14;
  *(v0 + 6336) = 2;
  v1 = sub_1E4207784();

  v2 = v1 - 128;
  if (v1 < 0x80)
  {
    return v1;
  }

  result = 176;
  v1 = 128;
  switch(v2)
  {
    case 0uLL:
      return v1;
    case 1uLL:
      return 129;
    case 2uLL:
      return 130;
    case 3uLL:
      return 131;
    case 4uLL:
      return 132;
    case 5uLL:
      return 133;
    case 6uLL:
      return 134;
    case 7uLL:
      return 135;
    case 8uLL:
      return 136;
    case 9uLL:
      return 137;
    case 0xAuLL:
      return 138;
    case 0xBuLL:
      return 139;
    case 0xCuLL:
      return 140;
    case 0xDuLL:
      return 141;
    case 0xEuLL:
      return 142;
    case 0xFuLL:
      return 143;
    case 0x10uLL:
      return 144;
    case 0x11uLL:
      return 145;
    case 0x12uLL:
      return 146;
    case 0x13uLL:
      return 147;
    case 0x14uLL:
      return 148;
    case 0x15uLL:
      return 149;
    case 0x16uLL:
      return 150;
    case 0x17uLL:
      return 151;
    case 0x18uLL:
      return 152;
    case 0x19uLL:
      return 153;
    case 0x1AuLL:
      return 154;
    case 0x1BuLL:
      return 155;
    case 0x1CuLL:
      return 156;
    case 0x1DuLL:
      return 157;
    case 0x1EuLL:
      return 158;
    case 0x1FuLL:
      return 159;
    case 0x20uLL:
      return 160;
    case 0x21uLL:
      return 161;
    case 0x22uLL:
      return 162;
    case 0x23uLL:
      return 163;
    case 0x24uLL:
      return 164;
    case 0x25uLL:
      return 165;
    case 0x26uLL:
      return 166;
    case 0x27uLL:
      return 167;
    case 0x28uLL:
      return 168;
    case 0x29uLL:
      return 169;
    case 0x2AuLL:
      return 170;
    case 0x2BuLL:
      return 171;
    case 0x2CuLL:
      return 172;
    case 0x2DuLL:
      return 173;
    case 0x2EuLL:
      return 174;
    case 0x2FuLL:
      return 175;
    case 0x30uLL:
      return result;
    case 0x31uLL:
      result = 177;
      break;
    case 0x32uLL:
      result = 178;
      break;
    case 0x33uLL:
      result = 179;
      break;
    case 0x34uLL:
      result = 180;
      break;
    case 0x35uLL:
      result = 181;
      break;
    case 0x36uLL:
      result = 182;
      break;
    case 0x37uLL:
      result = 183;
      break;
    case 0x38uLL:
      result = 184;
      break;
    case 0x39uLL:
      result = 185;
      break;
    case 0x3AuLL:
      result = 186;
      break;
    case 0x3BuLL:
      result = 187;
      break;
    case 0x3CuLL:
      result = 188;
      break;
    case 0x3DuLL:
      result = 189;
      break;
    case 0x3EuLL:
      result = 190;
      break;
    case 0x3FuLL:
      result = 191;
      break;
    default:
      result = 263;
      break;
  }

  return result;
}

uint64_t sub_1E3851EA4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E38506C8();
  *v1 = result;
  return result;
}

void sub_1E3851ECC(void *a1@<X8>)
{
  sub_1E384EE08(*v1);
  *a1 = v3;
  a1[1] = v4;
}

uint64_t sub_1E3851F08()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_59_4();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3852080(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3851F08();
  *v1 = result;
  return result;
}

void sub_1E38520A8()
{
  OUTLINED_FUNCTION_11_15();
  sub_1E3851F44();
  *v0 = v1;
  v0[1] = v2;
}

BOOL sub_1E38520D8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E385216C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E38520D8();
  return OUTLINED_FUNCTION_19_8(v1);
}

uint64_t sub_1E38521B0()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207A04();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0x14)
  {
    return 20;
  }

  else
  {
    return v0;
  }
}

void sub_1E38521F8(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_69_4(0x4E70756F7267);
      break;
    case 2:
      OUTLINED_FUNCTION_17_29(19);
      break;
    case 3:
    case 11:
    case 17:
      OUTLINED_FUNCTION_23();
      break;
    case 4:
      OUTLINED_FUNCTION_6_45();
      break;
    case 5:
      OUTLINED_FUNCTION_56_0(1952543859);
      break;
    case 8:
      OUTLINED_FUNCTION_22_19();
      break;
    case 9:
    case 18:
      OUTLINED_FUNCTION_44_19(19);
      break;
    case 13:
    case 15:
      OUTLINED_FUNCTION_16_30(19);
      break;
    case 16:
      OUTLINED_FUNCTION_42_19(19);
      break;
    default:
      return;
  }
}

uint64_t sub_1E38524A4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E38521B0();
  *v1 = result;
  return result;
}

void sub_1E38524CC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E38521F8(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E38524FC()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_46_10();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E38525AC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E38524FC();
  *v1 = result;
  return result;
}

void sub_1E38525D4()
{
  OUTLINED_FUNCTION_11_15();
  sub_1E3852538();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1E3852604(char a1)
{
  if (a1)
  {
    return 0x7274654D65676170;
  }

  else
  {
    return 0x6E656D6563616C70;
  }
}

uint64_t sub_1E3852670()
{
  OUTLINED_FUNCTION_4_49();
  result = sub_1E3856C34();
  *v0 = result;
  return result;
}

uint64_t sub_1E38526A4()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3852604(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E38526D4()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3852864(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E38526D4();
  *v1 = result;
  return result;
}

void sub_1E385288C()
{
  OUTLINED_FUNCTION_11_15();
  sub_1E3852714();
  *v0 = v1;
  v0[1] = v2;
}

BOOL sub_1E38528BC()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3852918(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E38528BC();
  return OUTLINED_FUNCTION_19_8(v1);
}

BOOL sub_1E385298C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3852A1C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E385298C();
  return OUTLINED_FUNCTION_19_8(v1);
}

uint64_t sub_1E3852A58()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3852A98(char a1)
{
  result = 0x7845737261656C63;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = OUTLINED_FUNCTION_45_13(21);
      break;
    case 3:
      result = 0x69537265646E6572;
      break;
    case 4:
      result = OUTLINED_FUNCTION_54_4();
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    default:
      result = OUTLINED_FUNCTION_16_30(21);
      break;
  }

  return result;
}

uint64_t sub_1E3852C18(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3852A58();
  *v1 = result;
  return result;
}

unint64_t sub_1E3852C40()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3852A98(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1E3852C70()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3852D0C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3852C70();
  return OUTLINED_FUNCTION_19_8(v1);
}

uint64_t sub_1E3852D54()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0x10)
  {
    return 16;
  }

  else
  {
    return v0;
  }
}

void sub_1E3852D94(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_52_9();
      break;
    case 2:
    case 5:
      OUTLINED_FUNCTION_7_57(18);
      break;
    case 4:
    case 10:
      OUTLINED_FUNCTION_23();
      break;
    case 7:
      OUTLINED_FUNCTION_38_10();
      break;
    case 12:
      OUTLINED_FUNCTION_17_29(18);
      break;
    default:
      return;
  }
}

uint64_t sub_1E3852FF4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3852D54();
  *v1 = result;
  return result;
}

void sub_1E385301C()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E3852D94(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E385304C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_46_10();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E38530FC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E385304C();
  *v1 = result;
  return result;
}

void sub_1E3853124()
{
  OUTLINED_FUNCTION_11_15();
  sub_1E3853088();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1E3853154(char a1)
{
  if (a1)
  {
    return 0xD00000000000001BLL;
  }

  else
  {
    return 0x7A69536567646162;
  }
}

uint64_t sub_1E38531B8()
{
  OUTLINED_FUNCTION_4_49();
  result = sub_1E3856C34();
  *v0 = result;
  return result;
}

uint64_t sub_1E38531EC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3853154(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E385321C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v0;
  }
}

void sub_1E385325C(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_17_29(22);
      break;
    case 2:
      OUTLINED_FUNCTION_43_3(22);
      break;
    case 4:
    case 9:
      OUTLINED_FUNCTION_23();
      break;
    case 5:
      OUTLINED_FUNCTION_6_45();
      break;
    case 7:
      OUTLINED_FUNCTION_16_30(22);
      break;
    case 8:
      OUTLINED_FUNCTION_7_57(22);
      break;
    default:
      return;
  }
}

uint64_t sub_1E3853464(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E385321C();
  *v1 = result;
  return result;
}

void sub_1E385348C()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E385325C(v1);
  *v0 = v2;
  v0[1] = v3;
}

BOOL sub_1E38534BC()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3853518(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E38534BC();
  return OUTLINED_FUNCTION_19_8(v1);
}

uint64_t sub_1E385358C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 7)
  {
    return 7;
  }

  else
  {
    return v0;
  }
}

void sub_1E38535CC(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_64_8();
      break;
    case 2:
    case 4:
      OUTLINED_FUNCTION_23();
      break;
    default:
      return;
  }
}

uint64_t sub_1E385371C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E385358C();
  *v1 = result;
  return result;
}

void sub_1E3853744()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E38535CC(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E3853774()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v0;
  }
}

void sub_1E38537B4(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 5:
    case 8:
    case 11:
    case 13:
      return;
    case 3:
    case 6:
      OUTLINED_FUNCTION_7_57(17);
      break;
    case 4:
      OUTLINED_FUNCTION_65_5(17);
      break;
    case 9:
      OUTLINED_FUNCTION_66_10(17);
      break;
    case 10:
      OUTLINED_FUNCTION_42_19(17);
      break;
    case 12:
      OUTLINED_FUNCTION_45_13(17);
      break;
    default:
      OUTLINED_FUNCTION_23();
      break;
  }
}

uint64_t sub_1E38539F8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3853774();
  *v1 = result;
  return result;
}

void sub_1E3853A20()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E38537B4(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E3853A50()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3853B80(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3853A50();
  *v1 = result;
  return result;
}

void sub_1E3853BA8()
{
  OUTLINED_FUNCTION_11_15();
  sub_1E3853A8C();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1E3853C30()
{
  OUTLINED_FUNCTION_4_49();
  result = sub_1E3856C34();
  *v0 = result;
  return result;
}

void sub_1E3853C64()
{
  OUTLINED_FUNCTION_11_15();
  sub_1E3853BD8();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1E3853C94(char a1)
{
  if (a1)
  {
    return 0x6F4D746165706572;
  }

  else
  {
    return 0x4F6F696475417369;
  }
}

uint64_t sub_1E3853CFC()
{
  OUTLINED_FUNCTION_4_49();
  result = sub_1E3856C34();
  *v0 = result;
  return result;
}

uint64_t sub_1E3853D30()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3853C94(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3853D60()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207A04();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 0x38)
  {
    return 56;
  }

  else
  {
    return v0;
  }
}

void sub_1E3853DA8(char a1)
{
  switch(a1)
  {
    case 1:
    case 8:
    case 9:
    case 15:
    case 17:
    case 18:
    case 19:
    case 21:
    case 23:
    case 24:
    case 30:
    case 34:
    case 35:
    case 37:
    case 40:
    case 41:
    case 45:
    case 47:
    case 54:
      OUTLINED_FUNCTION_60_8();
      break;
    case 2:
    case 10:
      OUTLINED_FUNCTION_41_6(23);
      break;
    case 3:
    case 5:
    case 6:
    case 11:
    case 12:
    case 16:
    case 20:
    case 43:
    case 44:
    case 49:
    case 50:
    case 51:
    case 55:
      return;
    case 4:
      OUTLINED_FUNCTION_62_7(0x74616D696E61);
      break;
    case 7:
    case 31:
      OUTLINED_FUNCTION_17_29(23);
      break;
    case 13:
      OUTLINED_FUNCTION_63_6(0x61726F636564);
      break;
    case 14:
    case 33:
    case 38:
    case 48:
      OUTLINED_FUNCTION_23();
      break;
    case 22:
    case 26:
    case 42:
      OUTLINED_FUNCTION_44_19(23);
      break;
    case 25:
    case 39:
      OUTLINED_FUNCTION_45_13(23);
      break;
    case 27:
      OUTLINED_FUNCTION_56_0(1835362420);
      break;
    case 28:
      OUTLINED_FUNCTION_56_0(1952543859);
      break;
    case 29:
      OUTLINED_FUNCTION_22_19();
      break;
    case 32:
    case 52:
      OUTLINED_FUNCTION_42_19(23);
      break;
    case 46:
      OUTLINED_FUNCTION_64_8();
      break;
    case 53:
      OUTLINED_FUNCTION_69_4(0x7473656D6974);
      break;
    default:
      OUTLINED_FUNCTION_16_30(23);
      break;
  }
}

uint64_t sub_1E38543D0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3853D60();
  *v1 = result;
  return result;
}

void sub_1E38543F8()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E3853DA8(v1);
  *v0 = v2;
  v0[1] = v3;
}

BOOL sub_1E3854428()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E38544D4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3854428();
  return OUTLINED_FUNCTION_19_8(v1);
}

uint64_t sub_1E3854524(char a1)
{
  if (a1)
  {
    return 0x6C61646F4D657375;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1E3854590()
{
  OUTLINED_FUNCTION_4_49();
  result = sub_1E3856C34();
  *v0 = result;
  return result;
}

uint64_t sub_1E38545C4()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3854524(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E38545F4()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

void sub_1E3854630(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_41_6(18);
      break;
    case 2:
    case 3:
      return;
    default:
      OUTLINED_FUNCTION_23();
      break;
  }
}

uint64_t sub_1E3854738(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E38545F4();
  *v1 = result;
  return result;
}

void sub_1E3854760()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E3854630(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E3854790()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_46_10();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

void sub_1E38547CC(char a1)
{
  if (!a1)
  {
    OUTLINED_FUNCTION_23();
  }
}

uint64_t sub_1E3854858(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3854790();
  *v1 = result;
  return result;
}

void sub_1E3854880()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E38547CC(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E38548B0()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

void sub_1E38548F0(char a1)
{
  switch(a1)
  {
    case 4:
    case 5:
      OUTLINED_FUNCTION_23();
      break;
    case 6:
      OUTLINED_FUNCTION_44_19(29);
      break;
    default:
      return;
  }
}

uint64_t sub_1E3854AB4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E38548B0();
  *v1 = result;
  return result;
}

void sub_1E3854ADC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E38548F0(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E3854B0C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_59_4();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3854C88(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3854B0C();
  *v1 = result;
  return result;
}

void sub_1E3854CB0()
{
  OUTLINED_FUNCTION_11_15();
  sub_1E3854B48();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1E3854CE0()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

void sub_1E3854D1C(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_23();
      break;
    case 2:
    case 3:
      return;
    default:
      OUTLINED_FUNCTION_7_57(17);
      break;
  }
}

uint64_t sub_1E3854E20(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3854CE0();
  *v1 = result;
  return result;
}

void sub_1E3854E48()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E3854D1C(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E3854ED0()
{
  OUTLINED_FUNCTION_4_49();
  result = sub_1E3856C34();
  *v0 = result;
  return result;
}

void sub_1E3854F04()
{
  OUTLINED_FUNCTION_11_15();
  sub_1E3854E78();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1E3854F34()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_46_10();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3854F70(char a1)
{
  if (!a1)
  {
    return 0x6C5074736F507369;
  }

  if (a1 == 1)
  {
    return 0x6F6E6143776F6873;
  }

  return 0xD000000000000012;
}

uint64_t sub_1E3855000(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3854F34();
  *v1 = result;
  return result;
}

uint64_t sub_1E3855028()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3854F70(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3855058()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_59_4();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E38551C8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3855058();
  *v1 = result;
  return result;
}

void sub_1E38551F0()
{
  OUTLINED_FUNCTION_11_15();
  sub_1E3855094();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1E3855220(char a1)
{
  if (a1)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x74616369646E7973;
  }
}

uint64_t sub_1E385528C()
{
  OUTLINED_FUNCTION_4_49();
  result = sub_1E3856C34();
  *v0 = result;
  return result;
}

uint64_t sub_1E38552C0()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3855220(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E38552F0()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_46_10();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E385532C(char a1)
{
  if (!a1)
  {
    return OUTLINED_FUNCTION_40_15();
  }

  if (a1 == 1)
  {
    return 0x6C72556572616873;
  }

  return 0xD000000000000011;
}

uint64_t sub_1E38553A0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E38552F0();
  *v1 = result;
  return result;
}

unint64_t sub_1E38553C8()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E385532C(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1E38553F8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E38554A4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E38553F8();
  return OUTLINED_FUNCTION_19_8(v1);
}

BOOL sub_1E38554F4()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3855544(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E38554F4();
  return OUTLINED_FUNCTION_19_8(v1);
}

BOOL sub_1E38555B4()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3855604(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E38555B4();
  return OUTLINED_FUNCTION_19_8(v1);
}

BOOL sub_1E3855674()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E38556D0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3855674();
  return OUTLINED_FUNCTION_19_8(v1);
}

BOOL sub_1E3855744()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E38557A0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3855744();
  return OUTLINED_FUNCTION_19_8(v1);
}

uint64_t sub_1E3855814()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

void sub_1E3855850(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_23();
      break;
    case 2:
    case 3:
      return;
    default:
      OUTLINED_FUNCTION_41_6(22);
      break;
  }
}

uint64_t sub_1E3855950(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3855814();
  *v1 = result;
  return result;
}

void sub_1E3855978()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E3855850(v1);
  *v0 = v2;
  v0[1] = v3;
}

uint64_t sub_1E38559A8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_59_4();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

void sub_1E38559E4(char a1)
{
  switch(a1)
  {
    case 1:
    case 2:
    case 4:
      return;
    case 3:
      OUTLINED_FUNCTION_40_15();
      break;
    default:
      OUTLINED_FUNCTION_23();
      break;
  }
}

uint64_t sub_1E3855AE8(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E38559A8();
  *v1 = result;
  return result;
}

void sub_1E3855B10()
{
  v1 = OUTLINED_FUNCTION_11_15();
  sub_1E38559E4(v1);
  *v0 = v2;
  v0[1] = v3;
}

BOOL sub_1E3855B40()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3855BF0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3855B40();
  return OUTLINED_FUNCTION_19_8(v1);
}

uint64_t sub_1E3855C3C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_46_10();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3855C78(unsigned __int8 a1)
{
  result = 0x6157646572616873;
  if (a1 >= 2u)
  {
    return 0xD000000000000013;
  }

  return result;
}

uint64_t sub_1E3855D04(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3855C3C();
  *v1 = result;
  return result;
}

unint64_t sub_1E3855D2C()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3855C78(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3855D5C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_46_10();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3855D98(char a1)
{
  if (!a1)
  {
    return 0x656D614E707061;
  }

  if (a1 == 1)
  {
    return 0x6C646E7542707061;
  }

  return 0x496D616441707061;
}

uint64_t sub_1E3855E20(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3855D5C();
  *v1 = result;
  return result;
}

uint64_t sub_1E3855E48()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3855D98(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3855ED0()
{
  OUTLINED_FUNCTION_4_49();
  result = sub_1E3856C34();
  *v0 = result;
  return result;
}

void sub_1E3855F04()
{
  OUTLINED_FUNCTION_11_15();
  sub_1E3855E78();
  *v0 = v1;
  v0[1] = v2;
}

uint64_t sub_1E3855F34()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E3855F74(char a1)
{
  result = 0x6C50736F65646976;
  switch(a1)
  {
    case 1:
      result = OUTLINED_FUNCTION_43_3(18);
      break;
    case 2:
      return result;
    case 3:
      result = OUTLINED_FUNCTION_63_6(0x63656C6C6F63);
      break;
    case 4:
      result = 0x7473696C79616C70;
      break;
    case 5:
      result = 0xD000000000000012;
      break;
    default:
      result = OUTLINED_FUNCTION_38_10();
      break;
  }

  return result;
}

uint64_t sub_1E38560B0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3855F34();
  *v1 = result;
  return result;
}

unint64_t sub_1E38560D8()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3855F74(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1E3856108()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E38561B0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3856108();
  return OUTLINED_FUNCTION_19_8(v1);
}

uint64_t sub_1E38561F8()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_46_10();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3856234(char a1)
{
  if (!a1)
  {
    return 0x644965756761656CLL;
  }

  if (a1 == 1)
  {
    return 0x6163696E6F6E6163;
  }

  return 0xD000000000000019;
}

uint64_t sub_1E38562BC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E38561F8();
  *v1 = result;
  return result;
}

uint64_t sub_1E38562E4()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3856234(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

BOOL sub_1E3856314()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3856364(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3856314();
  return OUTLINED_FUNCTION_19_8(v1);
}

BOOL sub_1E38563D4()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3856424(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E38563D4();
  return OUTLINED_FUNCTION_19_8(v1);
}

BOOL sub_1E3856494()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  return OUTLINED_FUNCTION_18_20();
}

uint64_t sub_1E3856518(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  v1 = sub_1E3856494();
  return OUTLINED_FUNCTION_19_8(v1);
}

uint64_t sub_1E3856554(char a1)
{
  if (a1)
  {
    return 0x65766C6F73736964;
  }

  else
  {
    return 1701865847;
  }
}

uint64_t sub_1E38565A8()
{
  OUTLINED_FUNCTION_4_49();
  result = sub_1E3856C34();
  *v0 = result;
  return result;
}

uint64_t sub_1E38565DC()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3856554(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3856604(char a1)
{
  if (a1)
  {
    return 0x7465736572;
  }

  else
  {
    return 0x65767265736572;
  }
}

uint64_t sub_1E385665C()
{
  OUTLINED_FUNCTION_4_49();
  result = sub_1E3856C34();
  *v0 = result;
  return result;
}

uint64_t sub_1E3856690()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3856604(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E38566B8(char a1)
{
  if (a1)
  {
    return 0x726579616C70;
  }

  else
  {
    return 0x74616369646E7973;
  }
}

uint64_t sub_1E3856718()
{
  OUTLINED_FUNCTION_4_49();
  result = sub_1E3856C34();
  *v0 = result;
  return result;
}

uint64_t sub_1E385674C()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E38566B8(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3856774()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E38567B0(char a1)
{
  result = 0x656C7469546F6ELL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6C6E4F656C746974;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E38568AC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3856774();
  *v1 = result;
  return result;
}

unint64_t sub_1E38568D4()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E38567B0(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E38568FC(char a1)
{
  if (a1)
  {
    return 0x65736142656D6954;
  }

  else
  {
    return 0x615672656B636950;
  }
}

uint64_t sub_1E3856964()
{
  OUTLINED_FUNCTION_4_49();
  result = sub_1E3856C34();
  *v0 = result;
  return result;
}

uint64_t sub_1E3856998()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E38568FC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E38569C0()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_57_0();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E38569FC(char a1)
{
  result = 1953720684;
  switch(a1)
  {
    case 1:
      result = 1685217635;
      break;
    case 2:
      result = 0x6E69776F6C6C6F66;
      break;
    case 3:
      result = 0x6F6C6C6F46746F6ELL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3856AEC(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E38569C0();
  *v1 = result;
  return result;
}

uint64_t sub_1E3856B14()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E38569FC(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3856B3C()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  OUTLINED_FUNCTION_46_10();
  if (v2)
  {
    return v1;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3856B78(char a1)
{
  if (!a1)
  {
    return 0x6576694C657270;
  }

  if (a1 == 1)
  {
    return 1702259052;
  }

  return 1953722224;
}

uint64_t sub_1E3856BE4(uint64_t a1)
{
  OUTLINED_FUNCTION_0_19(a1);
  result = sub_1E3856B3C();
  *v1 = result;
  return result;
}

uint64_t sub_1E3856C0C()
{
  v1 = OUTLINED_FUNCTION_11_15();
  result = sub_1E3856B78(v1);
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E3856C34()
{
  OUTLINED_FUNCTION_12_8();
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
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

uint64_t sub_1E3856CD0()
{
  OUTLINED_FUNCTION_4_49();
  result = sub_1E3856C34();
  *v0 = result;
  return result;
}

void sub_1E3856D04()
{
  OUTLINED_FUNCTION_11_15();
  sub_1E3856C78();
  *v0 = v1;
  v0[1] = v2;
}

unint64_t sub_1E3856D38()
{
  result = qword_1ECF2BBB0;
  if (!qword_1ECF2BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BBB0);
  }

  return result;
}

unint64_t sub_1E3856D90()
{
  result = qword_1ECF2BBB8;
  if (!qword_1ECF2BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BBB8);
  }

  return result;
}

unint64_t sub_1E3856DE8()
{
  result = qword_1ECF2BBC0;
  if (!qword_1ECF2BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BBC0);
  }

  return result;
}

unint64_t sub_1E3856E40()
{
  result = qword_1ECF2BBC8;
  if (!qword_1ECF2BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BBC8);
  }

  return result;
}

unint64_t sub_1E3856E98()
{
  result = qword_1ECF2BBD0;
  if (!qword_1ECF2BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BBD0);
  }

  return result;
}

unint64_t sub_1E3856EF0()
{
  result = qword_1ECF2BBD8;
  if (!qword_1ECF2BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BBD8);
  }

  return result;
}

unint64_t sub_1E3856F48()
{
  result = qword_1ECF2BBE0;
  if (!qword_1ECF2BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BBE0);
  }

  return result;
}

unint64_t sub_1E3856FA0()
{
  result = qword_1ECF2BBE8;
  if (!qword_1ECF2BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BBE8);
  }

  return result;
}

unint64_t sub_1E3856FF8()
{
  result = qword_1ECF2BBF0;
  if (!qword_1ECF2BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BBF0);
  }

  return result;
}

unint64_t sub_1E3857050()
{
  result = qword_1ECF2BBF8;
  if (!qword_1ECF2BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BBF8);
  }

  return result;
}

unint64_t sub_1E38570A8()
{
  result = qword_1ECF2BC00;
  if (!qword_1ECF2BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC00);
  }

  return result;
}

unint64_t sub_1E3857100()
{
  result = qword_1ECF2BC08;
  if (!qword_1ECF2BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC08);
  }

  return result;
}

unint64_t sub_1E3857158()
{
  result = qword_1ECF2BC10;
  if (!qword_1ECF2BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC10);
  }

  return result;
}

unint64_t sub_1E38571B0()
{
  result = qword_1ECF2BC18;
  if (!qword_1ECF2BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC18);
  }

  return result;
}

unint64_t sub_1E3857208()
{
  result = qword_1ECF2BC20;
  if (!qword_1ECF2BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC20);
  }

  return result;
}

unint64_t sub_1E3857260()
{
  result = qword_1ECF2BC28;
  if (!qword_1ECF2BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC28);
  }

  return result;
}

unint64_t sub_1E38572B8()
{
  result = qword_1ECF2BC30;
  if (!qword_1ECF2BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC30);
  }

  return result;
}

unint64_t sub_1E3857310()
{
  result = qword_1ECF2BC38;
  if (!qword_1ECF2BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC38);
  }

  return result;
}

unint64_t sub_1E3857368()
{
  result = qword_1ECF2BC40;
  if (!qword_1ECF2BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC40);
  }

  return result;
}

unint64_t sub_1E38573C0()
{
  result = qword_1ECF2BC48;
  if (!qword_1ECF2BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC48);
  }

  return result;
}

unint64_t sub_1E3857418()
{
  result = qword_1ECF2BC50;
  if (!qword_1ECF2BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC50);
  }

  return result;
}

unint64_t sub_1E3857470()
{
  result = qword_1ECF2BC58;
  if (!qword_1ECF2BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC58);
  }

  return result;
}

unint64_t sub_1E38574C8()
{
  result = qword_1ECF2BC60;
  if (!qword_1ECF2BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC60);
  }

  return result;
}

unint64_t sub_1E3857520()
{
  result = qword_1ECF2BC68;
  if (!qword_1ECF2BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC68);
  }

  return result;
}

unint64_t sub_1E3857578()
{
  result = qword_1ECF2BC70;
  if (!qword_1ECF2BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC70);
  }

  return result;
}

unint64_t sub_1E38575D0()
{
  result = qword_1ECF2BC78;
  if (!qword_1ECF2BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC78);
  }

  return result;
}

unint64_t sub_1E3857628()
{
  result = qword_1ECF2BC80;
  if (!qword_1ECF2BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC80);
  }

  return result;
}

unint64_t sub_1E3857680()
{
  result = qword_1ECF2BC88;
  if (!qword_1ECF2BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC88);
  }

  return result;
}

unint64_t sub_1E38576D8()
{
  result = qword_1ECF2BC90;
  if (!qword_1ECF2BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC90);
  }

  return result;
}

unint64_t sub_1E3857730()
{
  result = qword_1ECF2BC98;
  if (!qword_1ECF2BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BC98);
  }

  return result;
}

unint64_t sub_1E3857788()
{
  result = qword_1ECF2BCA0;
  if (!qword_1ECF2BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BCA0);
  }

  return result;
}

unint64_t sub_1E38577E0()
{
  result = qword_1ECF2BCA8;
  if (!qword_1ECF2BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BCA8);
  }

  return result;
}

unint64_t sub_1E3857838()
{
  result = qword_1ECF2BCB0;
  if (!qword_1ECF2BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BCB0);
  }

  return result;
}

unint64_t sub_1E3857890()
{
  result = qword_1ECF2BCB8;
  if (!qword_1ECF2BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BCB8);
  }

  return result;
}

unint64_t sub_1E38578E8()
{
  result = qword_1ECF2BCC0;
  if (!qword_1ECF2BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BCC0);
  }

  return result;
}

unint64_t sub_1E3857940()
{
  result = qword_1ECF2BCC8;
  if (!qword_1ECF2BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BCC8);
  }

  return result;
}

unint64_t sub_1E3857998()
{
  result = qword_1ECF2BCD0;
  if (!qword_1ECF2BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BCD0);
  }

  return result;
}

unint64_t sub_1E38579F0()
{
  result = qword_1ECF2BCD8;
  if (!qword_1ECF2BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BCD8);
  }

  return result;
}

unint64_t sub_1E3857A48()
{
  result = qword_1ECF2BCE0;
  if (!qword_1ECF2BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BCE0);
  }

  return result;
}

unint64_t sub_1E3857AA0()
{
  result = qword_1ECF2BCE8;
  if (!qword_1ECF2BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BCE8);
  }

  return result;
}

unint64_t sub_1E3857AF8()
{
  result = qword_1ECF2BCF0;
  if (!qword_1ECF2BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BCF0);
  }

  return result;
}

unint64_t sub_1E3857B50()
{
  result = qword_1ECF2BCF8;
  if (!qword_1ECF2BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BCF8);
  }

  return result;
}

unint64_t sub_1E3857BA8()
{
  result = qword_1ECF2BD00;
  if (!qword_1ECF2BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD00);
  }

  return result;
}

unint64_t sub_1E3857C00()
{
  result = qword_1ECF2BD08;
  if (!qword_1ECF2BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD08);
  }

  return result;
}

unint64_t sub_1E3857C58()
{
  result = qword_1ECF2BD10;
  if (!qword_1ECF2BD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD10);
  }

  return result;
}

unint64_t sub_1E3857CB0()
{
  result = qword_1ECF2BD18;
  if (!qword_1ECF2BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD18);
  }

  return result;
}

unint64_t sub_1E3857D08()
{
  result = qword_1ECF2BD20;
  if (!qword_1ECF2BD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD20);
  }

  return result;
}

unint64_t sub_1E3857D60()
{
  result = qword_1ECF2BD28;
  if (!qword_1ECF2BD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD28);
  }

  return result;
}

unint64_t sub_1E3857DB8()
{
  result = qword_1ECF2BD30;
  if (!qword_1ECF2BD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD30);
  }

  return result;
}

unint64_t sub_1E3857E10()
{
  result = qword_1ECF2BD38;
  if (!qword_1ECF2BD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD38);
  }

  return result;
}

unint64_t sub_1E3857E68()
{
  result = qword_1ECF2BD40;
  if (!qword_1ECF2BD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD40);
  }

  return result;
}

unint64_t sub_1E3857EC0()
{
  result = qword_1ECF2BD48;
  if (!qword_1ECF2BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD48);
  }

  return result;
}

unint64_t sub_1E3857F18()
{
  result = qword_1EE25D788[0];
  if (!qword_1EE25D788[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE25D788);
  }

  return result;
}

unint64_t sub_1E3857F70()
{
  result = qword_1ECF2BD50;
  if (!qword_1ECF2BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD50);
  }

  return result;
}

unint64_t sub_1E3857FC8()
{
  result = qword_1ECF2BD58;
  if (!qword_1ECF2BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD58);
  }

  return result;
}

unint64_t sub_1E3858020()
{
  result = qword_1ECF2BD60;
  if (!qword_1ECF2BD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD60);
  }

  return result;
}

unint64_t sub_1E3858078()
{
  result = qword_1ECF2BD68;
  if (!qword_1ECF2BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD68);
  }

  return result;
}

uint64_t sub_1E38580EC(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xFEFA)
  {
    goto LABEL_17;
  }

  if (a2 + 262 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 262 < 0xFF0000)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 16)) - 263);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 16)) - 263);
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 16)) - 263);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x107;
  v8 = v6 - 263;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

uint64_t sub_1E3858170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 262 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 262 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFEFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFEF9)
  {
    v6 = ((a2 - 65274) >> 16) + 1;
    *result = a2 + 262;
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
          *result = a2 + 262;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3858284(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 20);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 20);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 20);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E3858308(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xED)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEC)
  {
    v6 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 19);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E385842C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 16);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 16);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 16);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E38584B0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 15);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3858590(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 12);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 12);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 12);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E3858614(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 11);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E38586F0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 6);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E38587B8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 14);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 14);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 14);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E385883C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 13);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3858928(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xC9)
  {
    goto LABEL_17;
  }

  if (a2 + 55 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 55) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 56);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 56);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 56);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x38;
  v8 = v6 - 56;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E38589AC(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 55 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 55) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xC9)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xC8)
  {
    v6 = ((a2 - 201) >> 8) + 1;
    *result = a2 + 55;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 55);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3858AA4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 9);
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

      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 9);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_17_7((*a1 | (v4 << 8)) - 9);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v8);
}

_BYTE *sub_1E3858B28(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
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
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
    switch(v5)
    {
      case 1:
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 8);
        }

        break;
    }
  }

  return result;
}

_BYTE *_s8VideosUI14ViewModelEventOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 4);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3858D8C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 5);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1E3858E78(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_18();
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

  return OUTLINED_FUNCTION_14_20(a1);
}

_BYTE *sub_1E3858EC0(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1E3858FB4(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E3859084(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_1E385914C(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_5_13(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_2_22(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        result = OUTLINED_FUNCTION_3_21(result, v6);
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
          result = OUTLINED_FUNCTION_15(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

__n128 sub_1E38592BC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a2;
  v4 = *(a2 + 16);
  *(a3 + 8) = *a2;
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v7 = *(a2 + 41) & 1;
  *a3 = a1;
  *(a3 + 24) = v4;
  *(a3 + 40) = v5;
  *(a3 + 48) = v6;
  *(a3 + 49) = v7;
  return result;
}

id sub_1E38592F8()
{
  v1 = sub_1E41FFBF4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = VUISignpostLogObject();
  sub_1E41FFBC4();
  sub_1E4206BA4();
  v6 = VUISignpostLogObject();
  OUTLINED_FUNCTION_2_48();

  v7 = 0.0;
  if ((*(v0 + 49) & 1) == 0)
  {
    if (*(v0 + 24))
    {
      v7 = 0.0;
    }

    else
    {
      v7 = *(v0 + 8);
    }
  }

  type metadata accessor for LeagueStandingsLegendView();
  v8 = sub_1E38594C4(*v0, 0, v7);
  LODWORD(v9) = 1148846080;
  [v8 setContentHuggingPriority:0 forAxis:v9];
  LODWORD(v10) = 1148846080;
  [v8 setContentHuggingPriority:1 forAxis:v10];
  sub_1E4206B94();
  v11 = VUISignpostLogObject();
  OUTLINED_FUNCTION_2_48();

  (*(v2 + 8))(v4, v1);
  return v8;
}

id sub_1E38594C4(uint64_t a1, void *a2, double a3)
{
  if (a2 && (type metadata accessor for LeagueStandingsLegendView(), (v6 = swift_dynamicCastClass()) != 0))
  {
    v7 = v6;
    v8 = a2;
  }

  else
  {
    v7 = [objc_allocWithZone(type metadata accessor for LeagueStandingsLegendView()) initWithFrame_];
  }

  sub_1E3859A04(a1, a3);
  [v7 setIsAccessibilityElement_];
  return v7;
}

id sub_1E385956C(void *a1)
{
  [a1 layoutIfNeeded];
  [a1 intrinsicContentSize];
  [a1 frame];

  return [a1 setFrame_];
}

uint64_t sub_1E385963C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E385A714();

  return sub_1E3E36D18(a1, a2, v4);
}

uint64_t sub_1E3859688()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E385A714();
  v0 = OUTLINED_FUNCTION_3_5();

  return sub_1E3E36D2C(v0, v1, v2, v3);
}

uint64_t sub_1E385975C()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E385A600();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDAA28](v0);
}

uint64_t sub_1E38597B0()
{
  OUTLINED_FUNCTION_5_3();
  sub_1E385A600();
  v0 = OUTLINED_FUNCTION_3_5();

  return MEMORY[0x1EEDDA9B8](v0);
}

void sub_1E3859804()
{
  sub_1E385A600();
  sub_1E4201F04();
  __break(1u);
}

id sub_1E385982C()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_legendLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_stackItems) = MEMORY[0x1E69E7CC0];
  v1 = v0 + OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_containerWidth;
  *v1 = 0;
  *(v1 + 8) = 1;
  v6 = type metadata accessor for LeagueStandingsLegendView();
  v2 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v3, v4, v2, v0, v6);
}

uint64_t sub_1E38598D8(void *a1)
{
  *(v1 + OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_viewModel) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_legendLayout) = 0;
  v2 = OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_stackItems;

  *(v1 + v2) = MEMORY[0x1E69E7CC0];
  v3 = v1 + OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_containerWidth;
  *v3 = 0;
  *(v3 + 8) = 1;

  type metadata accessor for LeagueStandingsLegendView();
  swift_deallocPartialClassInstance();
  return 0;
}

void sub_1E3859A04(uint64_t a1, double a2)
{
  v3 = v2;
  *&v3[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_viewModel] = a1;

  v7 = &v3[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_containerWidth];
  *v7 = a2;
  *(v7 + 8) = 0;
  *&v3[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_legendLayout] = (*(*a1 + 392))(v6);

  v8 = OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_stackItems;
  swift_beginAccess();
  v9 = *&v3[v8];
  v10 = sub_1E32AE9B0(v9);

  for (i = 0; v10 != i; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1E6911E60](i, v9);
    }

    else
    {
      if (i >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v12 = *(v9 + 8 * i + 32);
    }

    v13 = v12;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      return;
    }

    [v12 removeFromSuperview];
  }

  *&v3[v8] = MEMORY[0x1E69E7CC0];

  v15 = (*(*a1 + 464))(v14);
  if (v15)
  {
    v16 = v15;
    v17 = sub_1E32AE9B0(v15);
    for (j = 0; v17 != j; ++j)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v19 = MEMORY[0x1E6911E60](j, v16);
      }

      else
      {
        if (j >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_37;
        }

        v19 = *(v16 + 8 * j + 32);
      }

      if (__OFADD__(j, 1))
      {
        goto LABEL_36;
      }

      type metadata accessor for UIFactory();
      v20 = sub_1E373C4DC();
      memset(v28, 0, sizeof(v28));
      v29 = 0;
      v21 = sub_1E393D92C(v19, 0, v28, 0, v20);
      sub_1E373C624(v28);
      if (v21)
      {
        swift_beginAccess();
        v22 = v21;
        MEMORY[0x1E6910BF0]();
        if (*((*&v3[v8] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v3[v8] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E42062F4();
        }

        sub_1E4206324();
        swift_endAccess();
      }
    }
  }

  v23 = *&v3[v8];
  v24 = sub_1E32AE9B0(v23);

  for (k = 0; v24 != k; ++k)
  {
    if ((v23 & 0xC000000000000001) != 0)
    {
      v26 = MEMORY[0x1E6911E60](k, v23);
    }

    else
    {
      if (k >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v26 = *(v23 + 8 * k + 32);
    }

    v27 = v26;
    if (__OFADD__(k, 1))
    {
      goto LABEL_34;
    }

    [v3 addSubview_];
  }

  [v3 vui_setNeedsLayout];
}

id sub_1E3859DB0()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LeagueStandingsLegendView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  [v0 bounds];
  return [v0 vui:0 layoutSubviews:v1 computationOnly:v2];
}

void sub_1E3859E58(char a1, double a2, double a3)
{
  v4 = v3;
  v76.receiver = v3;
  v76.super_class = type metadata accessor for LeagueStandingsLegendView();
  objc_msgSendSuper2(&v76, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (*&v3[OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_legendLayout])
  {
    type metadata accessor for LeagueStandingsLegendLayout();
    v8 = swift_dynamicCastClass();
    if (v8)
    {
      v9 = v8;
      v10 = *(*v8 + 176);

      v12 = v77;
      v10(v77, v11);
      if (v78)
      {
        v12 = MEMORY[0x1E69DDCE0];
        v14 = *(MEMORY[0x1E69DDCE0] + 8);
        v13 = *(MEMORY[0x1E69DDCE0] + 16);
        v15 = *(MEMORY[0x1E69DDCE0] + 24);
      }

      else
      {
        v14 = *&v77[1];
        v13 = *&v77[2];
        v15 = *&v77[3];
      }

      v16 = *v12;
      sub_1E3793CAC();
      max<A>(_:_:)();
      v17 = OUTLINED_FUNCTION_4_50();
      v19 = sub_1E3952BE0(v17, v18, v13, v15);
      v20 = OUTLINED_FUNCTION_4_50();
      v73 = v15;
      v74 = v13;
      v22 = a3 - sub_1E3952BD8(v20, v21, v13);
      v23 = 0.0;
      if (v22 > 0.0)
      {
        v24 = v22;
      }

      else
      {
        v24 = 0.0;
      }

      v25 = (*(*v9 + 1760))();
      v26 = OBJC_IVAR____TtC8VideosUI25LeagueStandingsLegendView_stackItems;
      swift_beginAccess();
      v27 = *&v4[v26];
      v28 = sub_1E32AE9B0(v27);
      if (v28)
      {
        v29 = v28;
        v71 = v4;
        v72 = v14;
        if (v28 < 1)
        {
LABEL_58:
          __break(1u);
          return;
        }

        v30 = v75 - v19;

        v31 = 0;
        v32 = MEMORY[0x1E69E7CC0];
        do
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x1E6911E60](v31, v27);
          }

          else
          {
            v33 = *(v27 + 8 * v31 + 32);
          }

          v34 = v33;
          [v33 vui:a1 & 1 layoutSubviews:v30 computationOnly:v24];
          v36 = v35;
          v38 = v37;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v32 = sub_1E385A4A0(0, v32[2] + 1, 1, v32);
          }

          v40 = v32[2];
          v39 = v32[3];
          if (v40 >= v39 >> 1)
          {
            v32 = sub_1E385A4A0((v39 > 1), v40 + 1, 1, v32);
          }

          v32[2] = v40 + 1;
          v41 = &v32[3 * v40];
          v41[4] = v34;
          ++v31;
          v41[5] = v36;
          v41[6] = v38;
        }

        while (v29 != v31);

        v14 = v72;
        v4 = v71;
      }

      else
      {
        v32 = MEMORY[0x1E69E7CC0];
      }

      v42 = v32[2];
      v43 = 5;
      for (i = v42; i; --i)
      {
        v23 = v23 + *&v32[v43];
        v43 += 3;
      }

      if (a2 != 0.0 && v25 * (v42 - 1) + v23 > a2)
      {
        v54 = 0.0;
        v55 = 6;
        v56 = v32[2];
        if (v42)
        {
          do
          {
            v54 = v54 + *&v32[v55];
            v55 += 3;
            --v56;
          }

          while (v56);
        }

        v57 = 0.0;
        v58 = 5;
        v59 = v32[2];
        if (v42)
        {
          do
          {
            if (v57 <= *&v32[v58])
            {
              v57 = *&v32[v58];
            }

            v58 += 3;
            --v59;
          }

          while (v59);
        }

        if ((a1 & 1) == 0 && v42)
        {
          v60 = (v32 + 6);
          v61 = v16;
          do
          {
            v62 = *v60;
            [*(v60 - 2) setFrame_];
            v61 = v25 + v61 + v62;
            v60 += 3;
            --v42;
          }

          while (v42);
        }
      }

      else
      {
        v46 = *&v4[v26];
        v47 = sub_1E32AE9B0(v46);

        v48 = 0;
        v49 = 0.0;
        while (v47 != v48)
        {
          if ((v46 & 0xC000000000000001) != 0)
          {
            v50 = MEMORY[0x1E6911E60](v48, v46);
          }

          else
          {
            if (v48 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v50 = *(v46 + 8 * v48 + 32);
          }

          v51 = v50;
          if (__OFADD__(v48, 1))
          {
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          [v50 vui:1 layoutSubviews:0.0 computationOnly:0.0];
          v53 = v52;

          if (v49 <= v53)
          {
            v49 = v53;
          }

          ++v48;
        }

        if ((a1 & 1) == 0)
        {
          v63 = v32[2];
          if (v63)
          {
            v64 = (v32 + 6);
            v65 = v14;
            do
            {
              v66 = *(v64 - 1);
              [*(v64 - 2) setFrame_];
              v65 = v25 + v65 + v66;
              v64 += 3;
              --v63;
            }

            while (v63);
          }
        }
      }

      v67 = OUTLINED_FUNCTION_4_50();
      sub_1E3952BE0(v67, v68, v74, v73);
      v69 = OUTLINED_FUNCTION_4_50();
      sub_1E3952BD8(v69, v70, v74);
    }
  }
}

id sub_1E385A414()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LeagueStandingsLegendView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1E385A4A0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD80);
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
    if (v10 != a4 || &a4[3 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD88);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E385A5D8(uint64_t a1)
{
  result = sub_1E385A600();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E385A600()
{
  result = qword_1ECF2BD70;
  if (!qword_1ECF2BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD70);
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1E385A674(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 50))
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

uint64_t sub_1E385A6B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E385A714()
{
  result = qword_1ECF2BD78;
  if (!qword_1ECF2BD78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2BD78);
  }

  return result;
}

uint64_t sub_1E385A790(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1E385A830(char a1)
{
  result = OUTLINED_FUNCTION_14_0();
  *(v1 + 17) = a1;
  return result;
}

uint64_t sub_1E385A8A8()
{
  OUTLINED_FUNCTION_15_0();
  v1 = *(v0 + 24);
  sub_1E34AF604(v1);
  return v1;
}

uint64_t sub_1E385A8EC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0();
  v5 = *(v2 + 24);
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return sub_1E34AF594(v5);
}

uint64_t sub_1E385A9C8(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1E385AA08(a1);
  return v2;
}

uint64_t sub_1E385AA08(uint64_t a1)
{
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  *(v1 + 16) = 258;
  swift_beginAccess();
  *(v1 + 32) = 0;
  *(v1 + 24) = 0;
  return v1;
}

uint64_t sub_1E385AA60(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  (*(*v5 + 264))(1);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = *(*v5 + 472);

  v7(sub_1E385AB50, v6);
}

uint64_t sub_1E385AB50(uint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = *(v2 + 16);
  if (a2)
  {
    if (a2 >> 62)
    {
      type metadata accessor for ViewModel();

      v7 = sub_1E42076C4();

      v3 = v7;
    }

    else
    {

      sub_1E42079D4();
      type metadata accessor for ViewModel();
    }
  }

  type metadata accessor for CollectionViewModelFragment();

  sub_1E4038B5C(v5, v3);

  sub_1E3B9E8EC(0, v8);
  v4(v8[0], v8[1], 0);
}

uint64_t sub_1E385AC60()
{
  sub_1E34AF594(*(v0 + 24));

  return v0;
}

uint64_t sub_1E385AC88()
{
  sub_1E385AC60();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

const char *sub_1E385AEC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E70556863746546 && a2 == 0xEB00000000747865;
  if (v4 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSFetchUpNext";
  }

  v6 = a1 == 0x6E61436863746546 && a2 == 0xEB00000000736176;
  if (v6 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSFetchCanvas";
  }

  OUTLINED_FUNCTION_23();
  v8 = a1 == 0xD000000000000013 && v7 == a2;
  if (v8 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSFetchCanvasWatchNow";
  }

  OUTLINED_FUNCTION_23();
  v10 = a1 == 0xD000000000000010 && v9 == a2;
  if (v10 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSFetchCanvasStore";
  }

  OUTLINED_FUNCTION_23();
  v12 = a1 == 0xD000000000000013 && v11 == a2;
  if (v12 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSFetchCanvasFragment";
  }

  OUTLINED_FUNCTION_23();
  v14 = a1 == 0xD000000000000017 && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSWatchNowCreateViewModel";
  }

  OUTLINED_FUNCTION_23();
  v16 = a1 == 0xD000000000000015 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSCanvasCreateViewModel";
  }

  OUTLINED_FUNCTION_23();
  v18 = a1 == 0xD00000000000001DLL && v17 == a2;
  if (v18 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSCanvasFragmentCreateViewModel";
  }

  OUTLINED_FUNCTION_23();
  v20 = a1 == 0xD000000000000014 && v19 == a2;
  if (v20 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSWatchNowGenerateJSON";
  }

  OUTLINED_FUNCTION_23();
  v22 = a1 == 0xD000000000000012 && v21 == a2;
  if (v22 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSCanvasGenerateJSON";
  }

  OUTLINED_FUNCTION_23();
  v24 = a1 == 0xD00000000000001ALL && v23 == a2;
  if (v24 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSCanvasFragmentGenerateJSON";
  }

  OUTLINED_FUNCTION_23();
  v26 = a1 == 0xD000000000000014 && v25 == a2;
  if (v26 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSStoreCreateViewModel";
  }

  OUTLINED_FUNCTION_23();
  v28 = a1 == 0xD000000000000011 && v27 == a2;
  if (v28 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSStoreGenerateJSON";
  }

  OUTLINED_FUNCTION_23();
  v30 = a1 == 0xD000000000000018 && v29 == a2;
  if (v30 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSTVShowCanonicalFetchData";
  }

  OUTLINED_FUNCTION_23();
  v32 = a1 == 0xD00000000000001ELL && v31 == a2;
  if (v32 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSTVShowCanonicalCreateViewModel";
  }

  OUTLINED_FUNCTION_23();
  v34 = a1 == 0xD00000000000001BLL && v33 == a2;
  if (v34 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSTVShowCanonicalGenerateJSON";
  }

  OUTLINED_FUNCTION_23();
  v36 = a1 == 0xD000000000000017 && v35 == a2;
  if (v36 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSMovieCanonicalFetchData";
  }

  OUTLINED_FUNCTION_23();
  v38 = a1 == 0xD00000000000001DLL && v37 == a2;
  if (v38 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSMovieCanonicalCreateViewModel";
  }

  OUTLINED_FUNCTION_23();
  v40 = a1 == 0xD00000000000001ALL && v39 == a2;
  if (v40 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSMovieCanonicalGenerateJSON";
  }

  OUTLINED_FUNCTION_23();
  v42 = a1 == 0xD000000000000019 && v41 == a2;
  if (v42 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSEpisodeCanonicalFetchData";
  }

  OUTLINED_FUNCTION_23();
  v44 = a1 == 0xD00000000000001FLL && v43 == a2;
  if (v44 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSEpisodeCanonicalCreateViewModel";
  }

  OUTLINED_FUNCTION_23();
  v46 = a1 == 0xD00000000000001CLL && v45 == a2;
  if (v46 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSEpisodeCanonicalGenerateJSON";
  }

  OUTLINED_FUNCTION_23();
  v48 = a1 == 0xD000000000000017 && v47 == a2;
  if (v48 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSSportCanonicalFetchData";
  }

  OUTLINED_FUNCTION_23();
  v50 = a1 == 0xD00000000000001DLL && v49 == a2;
  if (v50 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSSportCanonicalCreateViewModel";
  }

  OUTLINED_FUNCTION_23();
  v52 = a1 == 0xD00000000000001ALL && v51 == a2;
  if (v52 || (OUTLINED_FUNCTION_0_54() & 1) != 0)
  {
    return "ViewModelJSSportCanonicalGenerateJSON";
  }

  OUTLINED_FUNCTION_23();
  if (a1 == 0xD000000000000019 && v53 == a2)
  {
    return "ViewModelJSCollectionCreateViewModel";
  }

  if (OUTLINED_FUNCTION_0_54())
  {
    return "ViewModelJSCollectionCreateViewModel";
  }

  return "ViewModelJSUnknown";
}

uint64_t sub_1E385B49C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_2_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4206BA4();
  v14 = VUISignpostLogObject();
  sub_1E385AEC8(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1E4297BE0;
  *(v15 + 56) = MEMORY[0x1E69E6158];
  *(v15 + 64) = sub_1E3283528();
  *(v15 + 32) = a3;
  *(v15 + 40) = a4;

  sub_1E41FFBE4();
  sub_1E41FFB94();

  return (*(v10 + 8))(v13, v4);
}

uint64_t sub_1E385B6C8(uint64_t a1, uint64_t a2, void (*a3)(__n128))
{
  sub_1E41FFBF4();
  OUTLINED_FUNCTION_2_10();
  v8 = v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  a3(v10);
  v13 = VUISignpostLogObject();
  sub_1E385AEC8(a1, a2);
  sub_1E41FFBE4();
  sub_1E41FFBA4();

  return (*(v8 + 8))(v12, v3);
}

uint64_t sub_1E385B804(void *a1)
{
  sub_1E4205F14();
  v2 = a1;
  v3 = OUTLINED_FUNCTION_3_48();
  sub_1E385B6C8(v3, v4, v5);
}

id sub_1E385B864(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithAppContext_];

  return v3;
}

id sub_1E385B8A8(void *a1)
{
  v5.receiver = v1;
  v5.super_class = swift_getObjectType();
  v3 = objc_msgSendSuper2(&v5, sel_initWithAppContext_, a1);

  return v3;
}

uint64_t type metadata accessor for SportsPlayPeriod()
{
  result = qword_1ECF4E100;
  if (!qword_1ECF4E100)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E385B9C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E385BA30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E385BAA0()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v46 = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v43 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD98);
  OUTLINED_FUNCTION_17_2(v9);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  v19 = v17 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = type metadata accessor for SportsPlayPeriod();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v25 = sub_1E4205534();
  if (v26)
  {
    sub_1E4205BF4();
    OUTLINED_FUNCTION_2();
    (*(v27 + 8))(v2);

LABEL_5:
    v30 = 1;
    v31 = v46;
    goto LABEL_10;
  }

  v28 = v25;
  v44 = v2;
  sub_1E4205514();
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    sub_1E4205BF4();
    OUTLINED_FUNCTION_2();
    (*(v29 + 8))(v44);

    sub_1E325F6F0(v12, &qword_1ECF2BD98);
    goto LABEL_5;
  }

  (*(v15 + 32))(v22, v12, v13);
  *v0 = v28;
  (*(v15 + 16))(v0 + v23[5], v22, v13);
  (*(v15 + 104))(v19, *MEMORY[0x1E69D3BD8], v13);
  OUTLINED_FUNCTION_5_55();
  v34 = sub_1E385BEE4(v22, v19, v32, v33, MEMORY[0x1E69D3C00]);
  v35 = *(v15 + 8);
  v35(v19, v13);
  if (v34)
  {
    v36 = v45;
    sub_1E4205504();

    v37 = OUTLINED_FUNCTION_17_11();
    (v35)(v37);
  }

  else
  {
    v38 = OUTLINED_FUNCTION_17_11();
    (v35)(v38);

    v39 = sub_1E4205B24();
    v36 = v45;
    __swift_storeEnumTagSinglePayload(v45, 1, 1, v39);
  }

  v40 = v44;
  sub_1E385BA30(v36, v0 + v23[6]);
  v41 = v23[7];
  sub_1E4205BF4();
  OUTLINED_FUNCTION_2();
  (*(v42 + 32))(v0 + v41, v40);
  v31 = v46;
  sub_1E385BE80(v0, v46);
  v30 = 0;
LABEL_10:
  __swift_storeEnumTagSinglePayload(v31, v30, 1, v23);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E385BE80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsPlayPeriod();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E385BEE4(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  a3(0);
  sub_1E385D720(a4, a5);
  sub_1E4206254();
  sub_1E4206254();
  if (v12 == v10 && v13 == v11)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

void sub_1E385BFBC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v3 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90);
  v8 = OUTLINED_FUNCTION_17_2(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_21_30();
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v19 = v18 - v17;
  v20 = [objc_opt_self() sharedInstance];
  if (v20)
  {
    v57 = v20;
    v21 = type metadata accessor for SportsPlayPeriod();
    (*(v15 + 16))(v19, v0 + v21[5], v13);
    v22 = OUTLINED_FUNCTION_17_11();
    v24 = v23(v22);
    if (v24 == *MEMORY[0x1E69D3BE0])
    {
      v25 = 0x80000001E4263880;
      v26 = OUTLINED_FUNCTION_7_58(*v0);
      v27 = 0xD000000000000019;
LABEL_6:
      v58 = v27;
      MEMORY[0x1E69109E0](v26);

      v28 = v58;
      v29 = v25;
LABEL_7:
      v30 = v57;
LABEL_8:
      v31 = sub_1E38469F4(v28, v29, v30);
      if (!v31)
      {

        goto LABEL_41;
      }

      v32 = v31;
      sub_1E4205F14();
      OUTLINED_FUNCTION_145();

      goto LABEL_10;
    }

    if (v24 == *MEMORY[0x1E69D3BD0])
    {
      v25 = 0x80000001E4263860;
      v26 = OUTLINED_FUNCTION_7_58(*v0);
      v27 = 0xD000000000000016;
      goto LABEL_6;
    }

    if (v24 == *MEMORY[0x1E69D3BD8])
    {
      sub_1E385B9C0(v0 + v21[6], v0);
      v33 = sub_1E4205B24();
      if (__swift_getEnumTagSinglePayload(v0, 1, v33) == 1)
      {

LABEL_15:
        sub_1E325F6F0(v0, &qword_1ECF2BD90);
        goto LABEL_41;
      }

      sub_1E385B9C0(v0, v11);
      v38 = OUTLINED_FUNCTION_53();
      v40 = v39(v38);
      if (v40 == *MEMORY[0x1E69D3CC0])
      {
        OUTLINED_FUNCTION_15_42();
      }

      else if (v40 != *MEMORY[0x1E69D3CB0])
      {

        v55 = OUTLINED_FUNCTION_53();
        v56(v55);
        goto LABEL_15;
      }

      sub_1E325F6F0(v0, &qword_1ECF2BD90);
      sub_1E42074B4();

      OUTLINED_FUNCTION_4_51();
      v59 = v44;
      v60 = v43 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      v45 = OUTLINED_FUNCTION_53();
      MEMORY[0x1E69109E0](v45);

      MEMORY[0x1E69109E0](0xD000000000000011, 0x80000001E4263840);
      v46 = sub_1E385C68C(*v0, 0);
      v48 = v47;

      MEMORY[0x1E69109E0](v46, v48);

      v42 = sub_1E38469F4(v59, v60, v57);
      if (v42)
      {
LABEL_27:
        v32 = v42;
        sub_1E4205F14();
        OUTLINED_FUNCTION_145();

LABEL_10:
        goto LABEL_41;
      }

LABEL_40:

      goto LABEL_41;
    }

    if (v24 != *MEMORY[0x1E69D3BF0])
    {
      if (v24 != *MEMORY[0x1E69D3BF8])
      {

        v49 = OUTLINED_FUNCTION_17_11();
        v50(v49);
        goto LABEL_41;
      }

      v28 = 0xD00000000000001ALL;
      v29 = 0x80000001E42637B0;
      goto LABEL_7;
    }

    v34 = v21[7];
    (*(v5 + 104))(v1, *MEMORY[0x1E69D3D78], v3);
    OUTLINED_FUNCTION_1_75();
    LOBYTE(v34) = sub_1E385BEE4(v2 + v34, v1, v35, v36, MEMORY[0x1E69D3D90]);
    (*(v5 + 8))(v1, v3);
    if ((v34 & 1) == 0)
    {
      v41 = *v2;
      if (*v2 == 1)
      {
        v42 = sub_1E38469F4(0xD000000000000019, 0x80000001E4263800, v57);
        if (v42)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_1E3741090(0xD000000000000021, 0x80000001E42637D0, v57);
        OUTLINED_FUNCTION_145();
        if (v51)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30870);
          v52 = swift_allocObject();
          v53 = MEMORY[0x1E69E6530];
          *(v52 + 16) = xmmword_1E4297BE0;
          v54 = MEMORY[0x1E69E65A8];
          *(v52 + 56) = v53;
          *(v52 + 64) = v54;
          *(v52 + 32) = v41;
          OUTLINED_FUNCTION_57();
          sub_1E4205F44();

          sub_1E32822E0();
          sub_1E42071D4();
          OUTLINED_FUNCTION_145();
        }
      }

      goto LABEL_40;
    }

    v30 = v57;
    if (*v2 == 2)
    {
      v37 = OUTLINED_FUNCTION_11_37();
    }

    else
    {
      if (*v2 != 1)
      {
LABEL_39:
        v28 = 0xD000000000000014;
        v29 = 0x80000001E4263820;
        goto LABEL_8;
      }

      v37 = OUTLINED_FUNCTION_12_37();
    }

    MEMORY[0x1E69109E0](v37);
    goto LABEL_39;
  }

LABEL_41:
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E385C68C(uint64_t a1, char a2)
{
  v2 = a1 - 1;
  result = 0x7473726946;
  switch(v2)
  {
    case 0:
      return result;
    case 1:
      return 0x646E6F636553;
    case 2:
      return 0x6472696854;
    case 3:
      v7 = 1920298822;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 4:
      v6 = 1952868678;
      return v6 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 5:
      v6 = 1954048339;
      return v6 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 6:
      v5 = 0x746E65766553;
      return v5 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 7:
      v7 = 1751607621;
      return v7 & 0xFFFF0000FFFFFFFFLL | 0x687400000000;
    case 8:
      return 0x68746E694ELL;
    case 9:
      v6 = 1953391956;
      return v6 & 0xFFFF0000FFFFFFFFLL | 0x6800000000;
    case 10:
      return 0x68746E6576656C45;
    case 11:
      v5 = 0x74666C657754;
      return v5 & 0xFFFFFFFFFFFFLL | 0x68000000000000;
    case 12:
      if (a2)
      {
        return 0x6E65697472696854;
      }

      else
      {
        return 0x6E65657472696854;
      }

    case 13:
      v8 = 1920298822;
      return v8 | 0x6E65657400000000;
    case 14:
      v4 = 1952868678;
      return v4 | 0x746E656500000000;
    case 15:
      v4 = 1954048339;
      return v4 | 0x746E656500000000;
    case 16:
      return 0x6565746E65766553;
    case 17:
      v8 = 1751607621;
      return v8 | 0x6E65657400000000;
    case 18:
      v8 = 1701734734;
      return v8 | 0x6E65657400000000;
    case 19:
      v9 = 1852143444;
      goto LABEL_36;
    case 20:
    case 23:
      return 0x462D79746E657754;
    case 21:
    case 25:
    case 26:
      return 0x532D79746E657754;
    case 22:
      return 0x542D79746E657754;
    case 24:
      return 0x462D79746E657754;
    case 27:
      return 0x452D79746E657754;
    case 28:
      return 0x4E2D79746E657754;
    case 29:
      v9 = 1919510612;
LABEL_36:
      result = v9 | 0x7465697400000000;
      break;
    default:
      result = 0x6172747845;
      break;
  }

  return result;
}

uint64_t sub_1E385C974()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90);
  v3 = OUTLINED_FUNCTION_17_2(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4_6();
  v6 = v4 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_21_30();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v12 = [objc_opt_self() sharedInstance];
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  v14 = type metadata accessor for SportsPlayPeriod();
  (*(v10 + 16))(v1, v0 + *(v14 + 20), v8);
  v15 = OUTLINED_FUNCTION_124();
  if (v16(v15) != *MEMORY[0x1E69D3BD8])
  {

    v18 = OUTLINED_FUNCTION_124();
    v19(v18);
    return 0;
  }

  sub_1E385B9C0(v0 + *(v14 + 24), v0);
  v17 = sub_1E4205B24();
  if (__swift_getEnumTagSinglePayload(v0, 1, v17) == 1)
  {

LABEL_5:
    sub_1E325F6F0(v0, &qword_1ECF2BD90);
    return 0;
  }

  sub_1E385B9C0(v0, v6);
  v22 = *(v17 - 8);
  v23 = (*(v22 + 88))(v6, v17);
  if (v23 == *MEMORY[0x1E69D3CC0])
  {
    OUTLINED_FUNCTION_15_42();
  }

  else if (v23 != *MEMORY[0x1E69D3CB0])
  {

    (*(v22 + 8))(v6, v17);
    goto LABEL_5;
  }

  sub_1E325F6F0(v0, &qword_1ECF2BD90);
  sub_1E42074B4();

  OUTLINED_FUNCTION_4_51();
  v32 = v25;
  v33 = v24 | 0xEE002E646E450000;
  v26 = OUTLINED_FUNCTION_53();
  MEMORY[0x1E69109E0](v26);

  MEMORY[0x1E69109E0](0xD000000000000011, 0x80000001E4263840);
  v27 = sub_1E385C68C(*v0, 0);
  v29 = v28;

  MEMORY[0x1E69109E0](v27, v29);

  v30 = sub_1E38469F4(v32, v33, v13);
  if (v30)
  {
    v31 = v30;
    v20 = sub_1E4205F14();

    return v20;
  }

  return 0;
}

void sub_1E385CD18()
{
  OUTLINED_FUNCTION_31_1();
  v2 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E4205784();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_9_12();
  v13 = [objc_opt_self() sharedInstance];
  if (v13)
  {
    v14 = v13;
    v15 = type metadata accessor for SportsPlayPeriod();
    (*(v11 + 16))(v1, v0 + *(v15 + 20), v9);
    v16 = OUTLINED_FUNCTION_124();
    v18 = v17(v16);
    if (v18 == *MEMORY[0x1E69D3BE0])
    {
      v19 = 0x80000001E4263940;
      v20 = OUTLINED_FUNCTION_7_58(*v0);
      v21 = 0xD000000000000012;
    }

    else
    {
      if (v18 == *MEMORY[0x1E69D3BD0])
      {
        OUTLINED_FUNCTION_7_58(*v0);
        OUTLINED_FUNCTION_4_51();
        v34 = v23;
        v35 = v22 | 0xEF2E666C61480000;
        goto LABEL_7;
      }

      if (v18 != *MEMORY[0x1E69D3BD8])
      {
        if (v18 != *MEMORY[0x1E69D3BF0])
        {
          if (v18 != *MEMORY[0x1E69D3BF8])
          {

            v32 = OUTLINED_FUNCTION_124();
            v33(v32);
            goto LABEL_12;
          }

          v24 = 0xD00000000000001ELL;
          v25 = 0x80000001E42638A0;
          goto LABEL_9;
        }

        v28 = *(v15 + 28);
        (*(v4 + 104))(v8, *MEMORY[0x1E69D3D78], v2);
        OUTLINED_FUNCTION_1_75();
        LOBYTE(v28) = sub_1E385BEE4(v0 + v28, v8, v29, v30, MEMORY[0x1E69D3D90]);
        (*(v4 + 8))(v8, v2);
        if (v28)
        {
          v34 = 0xD00000000000001FLL;
          v35 = 0x80000001E4263900;
          if (*v0 == 2)
          {
            v31 = OUTLINED_FUNCTION_11_37();
          }

          else
          {
            if (*v0 != 1)
            {
              goto LABEL_8;
            }

            v31 = OUTLINED_FUNCTION_12_37();
          }

          MEMORY[0x1E69109E0](v31);
          goto LABEL_8;
        }

        if (*v0 == 1)
        {
          v25 = 0x80000001E42638E0;
          v24 = 0xD000000000000012;
LABEL_9:
          v26 = sub_1E38469F4(v24, v25, v14);
          if (v26)
          {
            v27 = v26;
            sub_1E4205F14();
            OUTLINED_FUNCTION_145();
          }

          else
          {
          }

          goto LABEL_12;
        }

        v20 = OUTLINED_FUNCTION_7_58(*v0);
        v34 = 0xD000000000000019;
        v35 = 0x80000001E42638C0;
LABEL_7:
        MEMORY[0x1E69109E0](v20);

LABEL_8:
        v24 = v34;
        v25 = v35;
        goto LABEL_9;
      }

      v19 = 0x80000001E4263920;
      v20 = OUTLINED_FUNCTION_7_58(*v0);
      v21 = 0xD000000000000019;
    }

    v34 = v21;
    v35 = v19;
    goto LABEL_7;
  }

LABEL_12:
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E385D0F0()
{
  v1 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  v8 = [objc_opt_self() sharedInstance];
  if (v8)
  {
    v9 = v8;
    v10 = 0xD000000000000012;
    v11 = type metadata accessor for SportsPlayPeriod();
    (*(v3 + 16))(v7, v0 + *(v11 + 28), v1);
    if ((*(v3 + 88))(v7, v1) == *MEMORY[0x1E69D3D88])
    {
      v12 = "TV.Scores.Ordinal.";
      v10 = 0xD000000000000025;
    }

    else
    {
      (*(v3 + 8))(v7, v1);
      v12 = "TV.Scores.Quarter.";
    }

    v13 = v12 | 0x8000000000000000;
    v14 = sub_1E385C68C(*v0, 1);
    v16 = v15;

    MEMORY[0x1E69109E0](v14, v16);

    v17 = sub_1E38469F4(v10, v13, v9);
    if (v17)
    {
      v18 = v17;
      sub_1E4205F14();
      OUTLINED_FUNCTION_145();
    }

    else
    {
    }
  }

  return OUTLINED_FUNCTION_57();
}

void sub_1E385D2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = sub_1E4205B24();
  OUTLINED_FUNCTION_0_10();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_5();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BD90);
  OUTLINED_FUNCTION_17_2(v34);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_9_12();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &a9 - v38;
  if (*v26 != *v24)
  {
    goto LABEL_12;
  }

  v40 = type metadata accessor for SportsPlayPeriod();
  OUTLINED_FUNCTION_5_55();
  if ((sub_1E385BEE4(v26 + v41, v24 + v41, v42, v43, MEMORY[0x1E69D3C00]) & 1) == 0)
  {
    goto LABEL_12;
  }

  v44 = *(v40 + 24);
  v45 = *(v36 + 48);
  sub_1E385B9C0(v26 + v44, v39);
  sub_1E385B9C0(v24 + v44, &v39[v45]);
  OUTLINED_FUNCTION_23_25(v39);
  if (v46)
  {
    OUTLINED_FUNCTION_23_25(&v39[v45]);
    if (v46)
    {
      sub_1E325F6F0(v39, &qword_1ECF2BD90);
LABEL_14:
      OUTLINED_FUNCTION_1_75();
      sub_1E385BEE4(v26 + v49, v24 + v49, v50, v51, MEMORY[0x1E69D3D90]);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  sub_1E385B9C0(v39, v20);
  OUTLINED_FUNCTION_23_25(&v39[v45]);
  if (v46)
  {
    (*(v29 + 8))(v20, v27);
LABEL_11:
    sub_1E325F6F0(v39, &qword_1ECF2BDA0);
    goto LABEL_12;
  }

  (*(v29 + 32))(v33, &v39[v45], v27);
  sub_1E385D720(&qword_1ECF2BDA8, MEMORY[0x1E69D3CC8]);
  v47 = sub_1E4205E84();
  v48 = *(v29 + 8);
  v48(v33, v27);
  v48(v20, v27);
  sub_1E325F6F0(v39, &qword_1ECF2BD90);
  if (v47)
  {
    goto LABEL_14;
  }

LABEL_12:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E385D61C()
{
  sub_1E4205784();
  if (v0 <= 0x3F)
  {
    sub_1E385D6C8();
    if (v1 <= 0x3F)
    {
      sub_1E4205BF4();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E385D6C8()
{
  if (!qword_1ECF2BDB0)
  {
    sub_1E4205B24();
    v0 = sub_1E4207104();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF2BDB0);
    }
  }
}

uint64_t sub_1E385D720(unint64_t *a1, void (*a2)(uint64_t))
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

int *sub_1E385D788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  result = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  *(a5 + result[5]) = a1;
  *(a5 + result[6]) = a2;
  *(a5 + result[7]) = a3;
  *(a5 + result[8]) = a4;
  return result;
}

void sub_1E385D824()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = type metadata accessor for SportsCanonicalBannerScoreboardView(0);
  v4 = *(v0 + v3[5]);
  v5 = *(v0 + v3[7]);
  v6 = *(v0 + v3[8]);
  *v2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  v7 = type metadata accessor for ClockScoresView(0);
  v8 = (v2 + v7[5]);
  type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
  OUTLINED_FUNCTION_1_76();
  sub_1E38683E4(v9, v10);

  *v8 = sub_1E42010C4();
  v8[1] = v11;
  v12 = (v2 + v7[7]);
  type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(0);
  OUTLINED_FUNCTION_19_25();
  sub_1E38683E4(v13, v14);

  *v12 = sub_1E42010C4();
  v12[1] = v15;
  v16 = (*(*v4 + 1144))();
  sub_1E32772D8(v16);
  sub_1E3CFEA54();
  type metadata accessor for FavoriteTeams(0);
  v17 = swift_allocObject();

  sub_1E3866760();
  *(v2 + v7[6]) = v17;
  *(v2 + v7[8]) = v5;
  *(v2 + v7[9]) = v6;
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E385DA24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TextBadge();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  OUTLINED_FUNCTION_36();
  (*(v9 + 1856))();
  OUTLINED_FUNCTION_25_13();
  if (v10)
  {
    if (a1)
    {
      goto LABEL_8;
    }
  }

  else if (a1)
  {
    v11 = sub_1E3F11040();
    if (v11)
    {
      a1 = v11;
LABEL_9:

      OUTLINED_FUNCTION_18();
      sub_1E3FC96D0(a1, a2, v8);
      v12 = OUTLINED_FUNCTION_8_6();
      sub_1E3867678(v12, v13, v14);
      OUTLINED_FUNCTION_114();
      return __swift_storeEnumTagSinglePayload(v15, v16, v17, v4);
    }

LABEL_8:

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_32_2();

  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v4);
}

void sub_1E385DB90(uint64_t a1@<X8>)
{
  v2 = sub_1E4201B24();
  v3 = sub_1E392CEFC();
  (*(*v3 + 152))(v13);
  v4 = v13[0];
  v5 = v13[1];
  v6 = v13[2];
  v7 = v13[3];

  v11 = v14;
  v12.n128_u64[0] = 0;
  if ((v14 & 1) == 0)
  {
    v8.n128_u64[0] = v4;
    v12.n128_u64[0] = v5;
    v9.n128_u64[0] = v6;
    v10.n128_u64[0] = v7;
    j_nullsub_1(v8, v12, v9, v10);
  }

  *a1 = v2;
  *(a1 + 8) = v12.n128_u64[0];
  *(a1 + 16) = v11 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDC0);
  sub_1E385DC74();
}

void sub_1E385DC74()
{
  OUTLINED_FUNCTION_9_4();
  v3 = v2;
  v142 = v4;
  v132 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v131 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v8 - v7);
  v125 = type metadata accessor for SportsClockView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v11 - v10);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF90);
  OUTLINED_FUNCTION_0_10();
  v128 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v14);
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C220);
  OUTLINED_FUNCTION_0_10();
  v126 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v17);
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF98);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_2_5();
  v122 = v19;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v21);
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_44();
  v135 = v23;
  v24 = OUTLINED_FUNCTION_138();
  v134 = type metadata accessor for BaseballClockView(v24);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v27 - v26);
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_44();
  v136 = v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFA8);
  v31 = OUTLINED_FUNCTION_17_2(v30);
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_5();
  v141 = v32;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_25_3();
  v140 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C228);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v121 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C230);
  OUTLINED_FUNCTION_0_10();
  v40 = v39;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_49_2();
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C238);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v43);
  OUTLINED_FUNCTION_2_5();
  v138 = v44;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_25_3();
  v143 = v47;
  sub_1E385E7E4();
  v48 = *(v3 + 40);
  sub_1E3868DE8();
  View.accessibilityIdentifier(key:location:)();
  sub_1E325F6F0(v37, &qword_1ECF2C228);
  if (v3[4] && (OUTLINED_FUNCTION_8(), (*(v49 + 152))(v147), (v148 & 1) == 0))
  {
    v52.n128_u64[0] = v147[2];
    v53.n128_u64[0] = v147[3];
    v50.n128_u64[0] = v147[0];
    v51.n128_u64[0] = v147[1];
    j_nullsub_1(v50, v51, v52, v53);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  OUTLINED_FUNCTION_3();
  v54 = sub_1E4202734();
  (*(v40 + 32))(v0, v1, v38);
  v55 = (v0 + *(v42 + 36));
  *v55 = v54;
  OUTLINED_FUNCTION_11_4(v55);
  sub_1E3741EA0(v0, v143, &qword_1ECF2C238);
  v56 = *v3;
  if (!*v3)
  {
    goto LABEL_10;
  }

  v57 = static SportsAccessibilityIdentifier.Location.__derived_enum_equals(_:_:)(v48, 4);
  v58 = (*(*v56 + 1184))();
  if ((v57 & 1) == 0 || (v58 & 1) == 0)
  {
    if ((v58 & ~v57 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_12:
    type metadata accessor for SportsBaseballScoreboardViewModel();
    v61 = swift_dynamicCastClass();
    if (v61)
    {
      v62 = v61;
      LOBYTE(v145) = v48;
      v144 = 4;
      sub_1E3762E70();

      if ((OUTLINED_FUNCTION_131_2() & 1) == 0)
      {
        OUTLINED_FUNCTION_47_0();
        v132 = (*(v90 + 2432))();
        v91 = *(*v62 + 1520);

        v93 = v91(v92);
        v95 = v94;
        v97 = v96;

        v98 = sub_1E392CEFC();
        LOBYTE(v145) = v48;
        v144 = 4;
        v99 = OUTLINED_FUNCTION_131_2();
        v100 = v121;
        sub_1E3DF3424(v93, v95, v97, v48, 1, v98, (v99 & 1) == 0, v121);
        OUTLINED_FUNCTION_47_11();
        sub_1E3869000(v100, v135, v101);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_7_59();
        sub_1E38683E4(v102, v103);
        sub_1E3867790();
        v87 = v136;
        sub_1E4201F44();

        OUTLINED_FUNCTION_46_11();
        sub_1E3868194(v100, v104);
        goto LABEL_17;
      }
    }

    (*(*v56 + 1520))(v61);
    static SportsAccessibilityIdentifier.Location.__derived_enum_equals(_:_:)(v48, 4);
    sub_1E392CEFC();
    static SportsAccessibilityIdentifier.Location.__derived_enum_equals(_:_:)(v48, 4);
    v63 = v123;
    sub_1E3B476D4();
    OUTLINED_FUNCTION_52_10();
    v66 = sub_1E38683E4(v64, v65);
    v67 = v124;
    v68 = v125;
    View.accessibilityIdentifier(key:location:)();
    OUTLINED_FUNCTION_51_10();
    sub_1E3868194(v63, v69);
    v70 = v130;
    sub_1E4202464();
    v145 = v68;
    v146 = v66;
    OUTLINED_FUNCTION_8_16();
    swift_getOpaqueTypeConformance2();
    v71 = v129;
    sub_1E4203224();
    (*(v131 + 8))(v70, v132);
    (*(v128 + 8))(v67, v71);

    v72 = sub_1E3FEA350();
    v74 = v73;
    v75 = v122;
    v76 = OUTLINED_FUNCTION_34();
    v77(v76);
    v78 = (v75 + *(v137 + 36));
    *v78 = v72;
    v78[1] = v74;
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v79, v80, v81);
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v82, v83, v84);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_7_59();
    sub_1E38683E4(v85, v86);
    sub_1E3867790();
    v87 = v136;
    sub_1E4201F44();

    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v88, v89);
LABEL_17:
    v60 = v140;
    sub_1E3741EA0(v87, v140, &qword_1ECF2BFA0);
    v59 = 0;
    goto LABEL_18;
  }

  if ((*(*v56 + 1192))())
  {
    goto LABEL_12;
  }

LABEL_9:

LABEL_10:
  v59 = 1;
  v60 = v140;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v60, v59, 1, v139);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v105, v106, v107);
  OUTLINED_FUNCTION_96_2();
  sub_1E3743538(v108, v109, v110);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v111, v112, v113);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C270);
  OUTLINED_FUNCTION_76_4(v114);
  OUTLINED_FUNCTION_107_2(v60);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v115, v116);
  v117 = OUTLINED_FUNCTION_8_6();
  sub_1E325F6F0(v117, v118);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v119, v120);
  OUTLINED_FUNCTION_10_3();
}

void sub_1E385E7E4()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  type metadata accessor for TextBadge();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = v5 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C278);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_2();
  v37 = *v2;
  if (v37)
  {
    v8 = v2[2];
    v9 = v2[3];
    OUTLINED_FUNCTION_132_1();
    OUTLINED_FUNCTION_132_1();
    type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
    OUTLINED_FUNCTION_1_76();
    sub_1E38683E4(v10, v11);

    OUTLINED_FUNCTION_114_1();
    v12 = sub_1E42010C4();
    *v0 = v8;
    v0[1] = v9;
    v0[2] = v12;
    v0[3] = v13;
    OUTLINED_FUNCTION_34();
    swift_storeEnumTagMultiPayload();
    sub_1E3868FAC();
    OUTLINED_FUNCTION_9_37();
    sub_1E38683E4(v14, v15);

    sub_1E4201F44();
    sub_1E325F6F0(&v37, &qword_1ECF29420);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C260);
LABEL_5:
    OUTLINED_FUNCTION_114();
    __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v16 = v2[2];
  v36 = v16;
  if (v16)
  {
    v17 = v2[3];
    OUTLINED_FUNCTION_158();
    sub_1E3743538(v18, v19, v20);
    OUTLINED_FUNCTION_158();
    sub_1E3743538(v21, v22, v23);

    OUTLINED_FUNCTION_18();
    sub_1E3FC96D0(v16, v17, v6);
    sub_1E3869000(v6, v0, type metadata accessor for TextBadge);
    OUTLINED_FUNCTION_34();
    swift_storeEnumTagMultiPayload();
    sub_1E3868FAC();
    OUTLINED_FUNCTION_9_37();
    sub_1E38683E4(v24, v25);
    sub_1E4201F44();
    sub_1E325F6F0(&v36, &qword_1ECF2BB28);
    OUTLINED_FUNCTION_54_5();
    sub_1E3868194(v6, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C260);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C260);
  OUTLINED_FUNCTION_32_2();
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
}

uint64_t sub_1E385EB44@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6;
  return result;
}

uint64_t sub_1E385EB60()
{
  sub_1E38684A0();
  result = sub_1E4201B94();
  qword_1EE28B518 = result;
  return result;
}

uint64_t sub_1E385EB90(uint64_t a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E385EBB8(uint64_t a1, char a2)
{
  sub_1E4207B44();
  MEMORY[0x1E69124B0](a2 & 1);
  return sub_1E4207BA4();
}

uint64_t sub_1E385EBFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E385EB90(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1E385EC28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E385EBA8(*v1);
  *a1 = result;
  return result;
}

void sub_1E385EC74(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDE8);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_19_2();
  sub_1E385ED94();
  OUTLINED_FUNCTION_45_14();
  OUTLINED_FUNCTION_8();
  (*(v5 + 176))(v12);
  if (v13)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v8.n128_u64[0] = v12[2];
    v9.n128_u64[0] = v12[3];
    v6.n128_u64[0] = v12[0];
    v7.n128_u64[0] = v12[1];
    j_nullsub_1(v6, v7, v8, v9);
  }

  OUTLINED_FUNCTION_3();
  v10 = sub_1E4202734();
  sub_1E3741EA0(v1, a1, &qword_1ECF2BDE8);
  v11 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDF0) + 36));
  *v11 = v10;
  OUTLINED_FUNCTION_11_4(v11);
}

void sub_1E385ED94()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BDF8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_5();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21_3();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE10);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE18);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v10 = OUTLINED_FUNCTION_138();
  v11 = type metadata accessor for ScoreboardErrorView(v10);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE20);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_71_6();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_25_3();
  OUTLINED_FUNCTION_17_3(v18);
  v19 = type metadata accessor for ClockScoresView(0);
  OUTLINED_FUNCTION_40_16();
  if (((*(v20 + 2120))() & 1) == 0 || (sub_1E3F95854(), OUTLINED_FUNCTION_25_13(), v22))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v23 + 2000))())
    {
      sub_1E392D7D8();
      OUTLINED_FUNCTION_18();
      sub_1E3F23370();

      KeyPath = swift_getKeyPath();
      v25 = (v1 + *(v65 + 36));
      *v25 = KeyPath;
      OUTLINED_FUNCTION_122_3(v25);
      OUTLINED_FUNCTION_114_1();
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v26, v27, v28);
      swift_storeEnumTagMultiPayload();
      sub_1E3867198();
      sub_1E3867268();
      sub_1E4201F44();
    }

    else
    {
      sub_1E385F3FC();
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v29, v30, v31);
      swift_storeEnumTagMultiPayload();
      sub_1E3867198();
      sub_1E3867268();
      sub_1E4201F44();
    }

    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v32, v33);
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v34, v35, v36);
    swift_storeEnumTagMultiPayload();
    sub_1E3867490();
    sub_1E3867594();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v37, v38);
  }

  else
  {
    v39 = v21;
    v40 = *(v3 + *(v19 + 28) + 8);
    *(v15 + *(v11 + 24)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
    swift_storeEnumTagMultiPayload();
    *(v15 + *(v11 + 28)) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
    swift_storeEnumTagMultiPayload();
    *v15 = v40;
    *(v15 + 8) = v39;
    OUTLINED_FUNCTION_8();
    v42 = *(v41 + 224);

    v44 = v42(v43);
    v46 = v45;
    OUTLINED_FUNCTION_8();
    v48 = (*(v47 + 248))();
    v50 = v49;
    sub_1E4203DB4();
    v51 = *&v44;
    if (v46)
    {
      v51 = -INFINITY;
    }

    v52 = *&v48;
    if (v50)
    {
      v52 = v51;
    }

    if (v51 > v52)
    {
      sub_1E4206804();
      v53 = sub_1E42026D4();
      OUTLINED_FUNCTION_108();
    }

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_80_2();
    OUTLINED_FUNCTION_97_6();
    v54 = OUTLINED_FUNCTION_8_6();
    sub_1E3867678(v54, v55, v56);
    memcpy((v0 + *(v66 + 36)), v67, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v57, v58, v59);
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v60, v61, v62);
    swift_storeEnumTagMultiPayload();
    sub_1E3867490();
    sub_1E3867594();
    OUTLINED_FUNCTION_75();
    sub_1E4201F44();
    OUTLINED_FUNCTION_21_1();
    sub_1E325F6F0(v63, v64);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E385F3FC()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE90);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_49_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BEA8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE60);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_14_5();
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BE50);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_23_8();
  OUTLINED_FUNCTION_45_14();
  v8 = sub_1E392B158();
  if (sub_1E392AFBC(v8) == 2)
  {
    nullsub_1(v9, v10);
    sub_1E3861644();
    OUTLINED_FUNCTION_8();
    v12 = (*(v11 + 224))();
    v14 = v13;
    OUTLINED_FUNCTION_8();
    v16 = (*(v15 + 248))();
    v18 = v17;
    sub_1E4203DB4();
    v19 = *&v12;
    if (v14)
    {
      v19 = -INFINITY;
    }

    v20 = *&v16;
    if (v18)
    {
      v20 = v19;
    }

    if (v19 > v20)
    {
      sub_1E4206804();
      v21 = sub_1E42026D4();
      OUTLINED_FUNCTION_108();
    }

    OUTLINED_FUNCTION_27_17();
    OUTLINED_FUNCTION_80_2();
    OUTLINED_FUNCTION_97_6();
    v22 = OUTLINED_FUNCTION_114_1();
    sub_1E3741EA0(v22, v23, v24);
    memcpy((v1 + *(v40 + 36)), v41, 0x70uLL);
    OUTLINED_FUNCTION_19_1();
    sub_1E3741EA0(v25, v26, v27);
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v28, v29, v30);
    swift_storeEnumTagMultiPayload();
    sub_1E3867320();
    OUTLINED_FUNCTION_9_0();
    sub_1E32752B0(v31, v32);
    OUTLINED_FUNCTION_75();
    sub_1E4201F44();
  }

  else
  {
    if (_MergedGlobals_162 != -1)
    {
      OUTLINED_FUNCTION_11_38();
    }

    *v0 = qword_1EE28B518;
    *(v0 + 8) = 0;
    *(v0 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BEB0);
    sub_1E3863AD0();
    OUTLINED_FUNCTION_12_12();
    sub_1E3743538(v33, v34, v35);
    OUTLINED_FUNCTION_74();
    swift_storeEnumTagMultiPayload();
    sub_1E3867320();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21_1();
    sub_1E32752B0(v36, v37);
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v38, v39);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E385F7E8()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v58 = type metadata accessor for CompetitorScoreView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF68);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_25_3();
  v16 = OUTLINED_FUNCTION_138();
  v17 = type metadata accessor for ClockScoresView(v16);
  v18 = **(v2 + *(v17 + 20) + 8);
  v57 = v6 & 1;
  if (v4)
  {
    v19 = (*(v18 + 1472))();
  }

  else
  {
    v19 = (*(v18 + 1424))();
  }

  v59[14] = v19;
  v59[0] = v6 & 1;
  LOBYTE(v59[1]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8);
  OUTLINED_FUNCTION_46();
  sub_1E32752B0(v20, v21);
  sub_1E38D2054(v59, &v60);

  v22 = v60;
  v23 = sub_1E392B158();
  sub_1E392AFBC(v23);
  if (!v22)
  {
    goto LABEL_11;
  }

  v56 = v22;
  v24 = *(v2 + *(v17 + 20) + 8);
  OUTLINED_FUNCTION_47_0();
  if (((*(v25 + 1088))() & 1) == 0)
  {

LABEL_11:
    v36 = 1;
    goto LABEL_16;
  }

  v55 = v8;
  OUTLINED_FUNCTION_47_0();
  v27 = *(v26 + 2288);

  v29 = v27(v28);
  v54 = v30;
  v53 = (*(*v24 + 1712))();
  v31 = *(v2 + *(v17 + 20) + 8);
  v32 = (*(*v31 + 1216))();
  LOBYTE(v33) = 1;
  if (v32)
  {
    v52 = v1;
    v34 = (*v31 + 1568);
    v35 = *v34;
    if (((*v34)() & 1) != 0 || (v35() & 0x100) != 0)
    {
      v59[0] = v31;
      v37 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
      v38 = sub_1E383ACA0(v57, v37, &off_1F5D8FCF0);
      v39 = v35();
      LOBYTE(v33) = v39;
      if ((v38 & 1) == 0)
      {
        v33 = (v39 >> 8) & 1;
      }
    }

    else
    {
      LOBYTE(v33) = 1;
    }

    v1 = v52;
  }

  v40 = v33;
  v59[0] = v24;
  v41 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel();
  v42 = sub_1E383ACA0(v57, v41, &off_1F5D8FCF0);
  *(v12 + *(v58 + 40)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18);
  swift_storeEnumTagMultiPayload();
  *(v12 + *(v58 + 44)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SportsCanonicalBannerScoreboardViewLayout(0);
  OUTLINED_FUNCTION_19_25();
  sub_1E38683E4(v43, v44);
  *v12 = sub_1E42010C4();
  *(v12 + 8) = v45;
  *(v12 + 16) = v29;
  *(v12 + 24) = v54;
  *(v12 + 32) = v56;
  *(v12 + 40) = v53 & 1;
  *(v12 + 41) = v40 & 1;
  *(v12 + 42) = v42 & 1;
  sub_1E4203DA4();
  OUTLINED_FUNCTION_14_8();
  OUTLINED_FUNCTION_99_1();
  sub_1E3867678(v12, v1, type metadata accessor for CompetitorScoreView);
  memcpy((v1 + *(v13 + 36)), v59, 0x70uLL);
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v46, v47, v48);
  v8 = v55;
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v49, v50, v51);
  v36 = 0;
LABEL_16:
  __swift_storeEnumTagSinglePayload(v8, v36, 1, v13);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E385FDD0(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF70);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_26_2();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_19_2();
  OUTLINED_FUNCTION_45_14();
  OUTLINED_FUNCTION_40_16();
  v9 = (*(v8 + 1152))();
  v11 = v10;
  *v2 = sub_1E4201D44();
  *(v2 + 8) = v9;
  *(v2 + 16) = v11 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF80);
  sub_1E3860090();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_80_2();
  OUTLINED_FUNCTION_99_1();
  v12 = OUTLINED_FUNCTION_74();
  sub_1E3741EA0(v12, v13, v14);
  memcpy((v1 + *(v6 + 36)), __src, 0x70uLL);
  OUTLINED_FUNCTION_36();
  v16 = *(v15 + 304);

  v16(v17);

  sub_1E4203DA4();
  OUTLINED_FUNCTION_59();
  sub_1E4200D94();
  sub_1E3741EA0(v1, a1, &qword_1ECF2BF78);
  v18 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BEC8) + 36));
  v19 = v22;
  *v18 = v21;
  v18[1] = v19;
  v18[2] = v23;
  OUTLINED_FUNCTION_54_0();
}

void sub_1E3860090()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  type metadata accessor for BaseballClockView(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v86 = (v5 - v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF88);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v88 = v7;
  OUTLINED_FUNCTION_138();
  sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v84 = v9;
  v85 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v82 = v11 - v10;
  v12 = OUTLINED_FUNCTION_138();
  type metadata accessor for SportsClockView(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF90);
  OUTLINED_FUNCTION_0_10();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_20_1();
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BF98);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  v83 = v19;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFA0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFA8);
  v22 = OUTLINED_FUNCTION_17_2(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2_5();
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_23_8();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFB0);
  v25 = OUTLINED_FUNCTION_17_2(v24);
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_68_1();
  MEMORY[0x1EEE9AC00](v26);
  sub_1E3860820();
  v27 = *(v2 + *(type metadata accessor for ClockScoresView(0) + 20) + 8);
  if ((*(*v27 + 1184))())
  {
    type metadata accessor for SportsBaseballScoreboardViewModel();
    v28 = swift_dynamicCastClass();
    if (v28)
    {
      v29 = *(*v28 + 2432);

      v29(v30);
      OUTLINED_FUNCTION_36();
      v32 = *(v31 + 1520);

      v34 = v32(v33);
      v36 = v35;
      LOBYTE(v32) = v37;

      v38 = sub_1E392B158();
      v39 = sub_1E392AFBC(v38);
      v40 = sub_1E392CEFC();
      v41 = OUTLINED_FUNCTION_51_1();
      sub_1E3DF3424(v34, v36, v32, 1, v39, v40, v41 & 1, v86);
      OUTLINED_FUNCTION_47_11();
      sub_1E3869000(v86, v88, v42);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_59();
      sub_1E38683E4(v43, v44);
      sub_1E3867790();
      OUTLINED_FUNCTION_117_1();
      sub_1E4201F44();

      OUTLINED_FUNCTION_46_11();
      sub_1E3868194(v86, v45);
    }

    else
    {
      (*(*v27 + 1520))();
      v47 = sub_1E392B158();
      sub_1E392AFBC(v47);
      sub_1E392CEFC();
      OUTLINED_FUNCTION_18();
      sub_1E3B476D4();
      OUTLINED_FUNCTION_52_10();
      sub_1E38683E4(v48, v49);
      OUTLINED_FUNCTION_41_0();
      View.accessibilityIdentifier(key:location:)();
      OUTLINED_FUNCTION_51_10();
      sub_1E3868194(v16, v50);
      sub_1E4202464();
      OUTLINED_FUNCTION_8_16();
      swift_getOpaqueTypeConformance2();
      sub_1E4203224();
      (*(v84 + 8))(v82, v85);
      v51 = OUTLINED_FUNCTION_8_6();
      v52(v51);

      v53 = sub_1E3FEA350();
      v54 = (v83 + *(v87 + 36));
      *v54 = v53;
      v54[1] = v55;
      OUTLINED_FUNCTION_12_12();
      sub_1E3743538(v56, v57, v58);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_7_59();
      sub_1E38683E4(v59, v60);
      sub_1E3867790();
      sub_1E4201F44();
      OUTLINED_FUNCTION_21_1();
      sub_1E325F6F0(v61, v62);
    }

    v63 = OUTLINED_FUNCTION_146();
    sub_1E3741EA0(v63, v64, v65);
    v46 = 0;
  }

  else
  {
    v46 = 1;
  }

  __swift_storeEnumTagSinglePayload(v0, v46, 1, v89);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v66, v67, v68);
  OUTLINED_FUNCTION_96_2();
  sub_1E3743538(v69, v70, v71);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v72, v73, v74);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFB8);
  OUTLINED_FUNCTION_76_4(v75);
  OUTLINED_FUNCTION_107_2(v0);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v76, v77);
  v78 = OUTLINED_FUNCTION_8_6();
  sub_1E325F6F0(v78, v79);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v80, v81);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3860820()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFD0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_26_2();
  type metadata accessor for TextBadge();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFD8);
  OUTLINED_FUNCTION_0_10();
  v29 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_19_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFE0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_8_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BFE8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_31_2();
  v16 = type metadata accessor for ClockScoresView(0);
  OUTLINED_FUNCTION_40_16();
  (*(v17 + 1856))();
  OUTLINED_FUNCTION_25_13();
  if (!v18 && *(v5 + *(v16 + 32)) && (v19 = sub_1E3F11040()) != 0)
  {
    v20 = v19;
  }

  else
  {
    v20 = *(v5 + *(v16 + 32));

    if (!v20)
    {
      *v3 = sub_1E42036E4();
      swift_storeEnumTagMultiPayload();
      sub_1E3867914();
      sub_1E4201F44();
      goto LABEL_11;
    }
  }

  v21 = sub_1E392B158();
  if (sub_1E392AFBC(v21) == 2)
  {

    OUTLINED_FUNCTION_18();
    sub_1E3FC96D0(v20, 0, v10);
    OUTLINED_FUNCTION_9_37();
    sub_1E38683E4(v22, v23);
    OUTLINED_FUNCTION_41_0();
    View.accessibilityIdentifier(key:location:)();
    OUTLINED_FUNCTION_54_5();
    sub_1E3868194(v10, v24);
    v25 = OUTLINED_FUNCTION_74();
    v26(v25);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_8_16();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_125();
    sub_1E4201F44();
    (*(v29 + 8))(v0, v11);
  }

  else
  {
    *v1 = sub_1E42036E4();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_9_37();
    sub_1E38683E4(v27, v28);
    OUTLINED_FUNCTION_8_16();
    swift_getOpaqueTypeConformance2();
    OUTLINED_FUNCTION_125();
    sub_1E4201F44();
  }

  sub_1E3743538(v2, v3, &qword_1ECF2BFE0);
  swift_storeEnumTagMultiPayload();
  sub_1E3867914();
  sub_1E4201F44();

  OUTLINED_FUNCTION_45_3(v2);
LABEL_11:
  OUTLINED_FUNCTION_25_2();
}