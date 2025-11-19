double static UsoTask_CodegenConverter.convert(task:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v12 = a1[2];
    v13 = a1[3];

    MEMORY[0x1C68DD690](14906, 0xE200000000000000);
    v4 = a1[4];
    v5 = a1[5];

    MEMORY[0x1C68DD690](v4, v5);

    if (qword_1EBE14860 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v6 = qword_1EBE50A30;
    if (*(qword_1EBE50A30 + 16))
    {
      v7 = sub_1C0516A8C(v12, v13);
      if (v8)
      {
        v9 = *(*(v6 + 56) + 8 * v7);
        swift_endAccess();

        v10 = (*(v9 + 88))(a1);
        *(a2 + 24) = type metadata accessor for CodeGenTaskBase();
        *a2 = v10;
        return result;
      }
    }

    swift_endAccess();
  }

  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t getEnumTagSinglePayload for UsoTask_CodegenConverter(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

  return *a1;
}

_WORD *storeEnumTagSinglePayload for UsoTask_CodegenConverter(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t IdentifierNamespace.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x64695F6D657469;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
    case 6uLL:
    case 0x1DuLL:
      v3 = 0xD000000000000014;
      break;
    case 2uLL:
      v3 = 0x6369746E616D6573;
      break;
    case 3uLL:
      v3 = 0x54746361746E6F63;
      break;
    case 4uLL:
    case 0x19uLL:
      v3 = 0xD000000000000015;
      break;
    case 5uLL:
      v3 = 0xD000000000000012;
      break;
    case 7uLL:
      v3 = 0x6D754E656E6F6870;
      break;
    case 8uLL:
      v4 = 1315991649;
      goto LABEL_26;
    case 9uLL:
      v3 = 0x69746E655F707061;
      break;
    case 0xAuLL:
      v3 = 0x69746E655F707061;
      break;
    case 0xBuLL:
      v3 = 0x746365735F707061;
      break;
    case 0xCuLL:
      v3 = 0x747465735F707061;
      break;
    case 0xDuLL:
      v3 = 0x63616465526F7375;
      break;
    case 0xEuLL:
      v3 = 0x614E746E65746E69;
      break;
    case 0xFuLL:
      v3 = 1684632935;
      break;
    case 0x10uLL:
      v3 = 0x656C626D65736E65;
      break;
    case 0x11uLL:
      v3 = 0xD000000000000011;
      break;
    case 0x12uLL:
      v3 = 0xD000000000000012;
      break;
    case 0x13uLL:
      v3 = 0xD000000000000017;
      break;
    case 0x14uLL:
      v3 = 0xD000000000000018;
      break;
    case 0x15uLL:
      v4 = 1316118851;
LABEL_26:
      v3 = v4 | 0x656D6100000000;
      break;
    case 0x16uLL:
      v3 = 0x7355646572616873;
      break;
    case 0x17uLL:
      v3 = 0x646E496E656B6F74;
      break;
    case 0x18uLL:
      v3 = 0x6E695F686374616DLL;
      break;
    case 0x1AuLL:
    case 0x1BuLL:
      v3 = 0xD000000000000010;
      break;
    case 0x1CuLL:
      v3 = 0xD000000000000013;
      break;
    case 0x1EuLL:
      v3 = 0x6E6F697469736F70;
      break;
    case 0x1FuLL:
      v3 = 0x6974756C6F736572;
      break;
    case 0x20uLL:
      v3 = 0x796C6E4F61647544;
      break;
    case 0x21uLL:
      v3 = 0xD000000000000012;
      break;
    case 0x22uLL:
      v3 = 0x6574736567677573;
      break;
    case 0x23uLL:
      v3 = 0x74756374726F6873;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1C0545A24(v1, v2);
  return v3;
}

uint64_t sub_1C0545A24(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x24)
  {
  }

  return result;
}

uint64_t sub_1C0545A38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x64695F6D657469 && a2 == 0xE700000000000000;
  if (v6 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0xD000000000000014 && 0x80000001C09CB990 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0x6369746E616D6573 && v3 == 0xEE0065756C61765FLL || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0x54746361746E6F63 && v3 == 0xEB00000000657079 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 3;
  }

  else if (v4 == 0xD000000000000015 && 0x80000001C09CB970 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 4;
  }

  else if (v4 == 0xD000000000000012 && 0x80000001C09B7480 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 5;
  }

  else if (v4 == 0xD000000000000014 && 0x80000001C09CB950 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 6;
  }

  else if (v4 == 0x6D754E656E6F6870 && v3 == 0xEB00000000726562 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 7;
  }

  else if (v4 == 0x656D614E707061 && v3 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 8;
  }

  else if (v4 == 0x69746E655F707061 && v3 == 0xEA00000000007974 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 9;
  }

  else if (v4 == 0x69746E655F707061 && v3 == 0xEF657079745F7974 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 10;
  }

  else if (v4 == 0x746365735F707061 && v3 == 0xEB000000006E6F69 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 11;
  }

  else if (v4 == 0x747465735F707061 && v3 == 0xEB00000000676E69 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 12;
  }

  else if (v4 == 0x63616465526F7375 && v3 == 0xEE0064496E6F6974 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 13;
  }

  else if (v4 == 0x614E746E65746E69 && v3 == 0xEA0000000000656DLL || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 14;
  }

  else if (v4 == 1684632935 && v3 == 0xE400000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 15;
  }

  else if (v4 == 0x656C626D65736E65 && v3 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 16;
  }

  else if (v4 == 0xD000000000000011 && 0x80000001C09CB930 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 17;
  }

  else if (v4 == 0xD000000000000012 && 0x80000001C09CB910 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 18;
  }

  else if (v4 == 0xD000000000000017 && 0x80000001C09CB8F0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 19;
  }

  else if (v4 == 0xD000000000000018 && 0x80000001C09CB8D0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 20;
  }

  else if (v4 == 0x656D614E726143 && v3 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 21;
  }

  else if (v4 == 0x7355646572616873 && v3 == 0xEC00000064497265 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 22;
  }

  else if (v4 == 0x646E496E656B6F74 && v3 == 0xEA00000000007865 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 23;
  }

  else if (v4 == 0x6E695F686374616DLL && v3 == 0xEA00000000006F66 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 24;
  }

  else if (v4 == 0xD000000000000015 && 0x80000001C09CB8B0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 25;
  }

  else if (v4 == 0xD000000000000010 && 0x80000001C09CB890 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 26;
  }

  else if (v4 == 0xD000000000000010 && 0x80000001C09CB870 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 27;
  }

  else if (v4 == 0xD000000000000013 && 0x80000001C09CB850 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 28;
  }

  else if (v4 == 0xD000000000000014 && 0x80000001C09CB830 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 29;
  }

  else if (v4 == 0x6E6F697469736F70 && v3 == 0xEB0000000064695FLL || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 30;
  }

  else if (v4 == 0x6974756C6F736572 && v3 == 0xEF657079745F6E6FLL || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 31;
  }

  else if (v4 == 0x796C6E4F61647544 && v3 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 32;
  }

  else if (v4 == 0xD000000000000012 && 0x80000001C09CB810 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 33;
  }

  else if (v4 == 0x6574736567677573 && v3 == 0xEF64496D61644164 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 34;
  }

  else if (v4 == 0x74756374726F6873 && v3 == 0xEF676E6974746553 || (result = sub_1C095DF3C(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 35;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

unint64_t IdentifierAppBundle.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x746163696C707041;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v3 = 0x73746361746E6F43;
      break;
    case 2uLL:
      v3 = 0x794D646E6946;
      break;
    case 3uLL:
      v3 = 0x74694B656D6F48;
      break;
    case 4uLL:
      v3 = 0x616C50616964654DLL;
      break;
    case 5uLL:
      v3 = 0x736567617373654DLL;
      break;
    case 6uLL:
      v3 = 0x736F746F6850;
      break;
    case 7uLL:
      v3 = 0x7265646E696D6552;
      break;
    case 8uLL:
      v3 = 0x74756374726F6853;
      break;
    case 9uLL:
      v3 = 0xD000000000000013;
      break;
    case 0xAuLL:
      v3 = 0x626D654D656D6F48;
      break;
    case 0xBuLL:
      v3 = 0x7374736163646F50;
      break;
    case 0xCuLL:
      v3 = 0x7373656E746946;
      break;
    case 0xDuLL:
      v3 = 0x6472616F6279654BLL;
      break;
    case 0xEuLL:
      v3 = 0x74756F5265726F43;
      break;
    case 0xFuLL:
      v3 = 0x7469617274726F50;
      break;
    case 0x10uLL:
      v3 = 0x7261646E656C6143;
      break;
    case 0x11uLL:
      v3 = 0x6F63634172657355;
      break;
    case 0x12uLL:
      v3 = 0x79616C50726143;
      break;
    case 0x13uLL:
      v3 = 0xD000000000000014;
      break;
    case 0x14uLL:
      v3 = 0xD00000000000001CLL;
      break;
    case 0x15uLL:
      v3 = 0xD000000000000014;
      break;
    case 0x16uLL:
      v3 = 0xD000000000000014;
      break;
    case 0x17uLL:
      v3 = 0xD000000000000015;
      break;
    case 0x18uLL:
      v3 = 0x736E656B6F54;
      break;
    case 0x19uLL:
      v3 = 0xD000000000000012;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1C05485DC(v1, v2);
  return v3;
}

uint64_t sub_1C0546934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x746163696C707041 && a2 == 0xEC000000736E6F69;
  if (v6 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0x73746361746E6F43 && v3 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0x794D646E6946 && v3 == 0xE600000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0x74694B656D6F48 && v3 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 3;
  }

  else if (v4 == 0x616C50616964654DLL && v3 == 0xEB00000000726579 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 4;
  }

  else if (v4 == 0x736567617373654DLL && v3 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 5;
  }

  else if (v4 == 0x736F746F6850 && v3 == 0xE600000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 6;
  }

  else if (v4 == 0x7265646E696D6552 && v3 == 0xE900000000000073 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 7;
  }

  else if (v4 == 0x74756374726F6853 && v3 == 0xE900000000000073 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 8;
  }

  else if (v4 == 0xD000000000000013 && 0x80000001C09CBA70 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 9;
  }

  else if (v4 == 0x626D654D656D6F48 && v3 == 0xEE006F666E497265 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 10;
  }

  else if (v4 == 0x7374736163646F50 && v3 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 11;
  }

  else if (v4 == 0x7373656E746946 && v3 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 12;
  }

  else if (v4 == 0x6472616F6279654BLL && v3 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 13;
  }

  else if (v4 == 0x74756F5265726F43 && v3 == 0xEB00000000656E69 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 14;
  }

  else if (v4 == 0x7469617274726F50 && v3 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 15;
  }

  else if (v4 == 0x7261646E656C6143 && v3 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 16;
  }

  else if (v4 == 0x6F63634172657355 && v3 == 0xEB00000000746E75 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 17;
  }

  else if (v4 == 0x79616C50726143 && v3 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 18;
  }

  else if (v4 == 0xD000000000000014 && 0x80000001C09CBA50 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 19;
  }

  else if (v4 == 0xD00000000000001CLL && 0x80000001C09CBA30 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 20;
  }

  else if (v4 == 0xD000000000000014 && 0x80000001C09CBA10 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 21;
  }

  else if (v4 == 0xD000000000000014 && 0x80000001C09CB9F0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 22;
  }

  else if (v4 == 0xD000000000000015 && 0x80000001C09CB9D0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 23;
  }

  else if (v4 == 0x736E656B6F54 && v3 == 0xE600000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 24;
  }

  else if (v4 == 0xD000000000000012 && 0x80000001C09CB9B0 == v3 || (result = sub_1C095DF3C(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 25;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

unint64_t IdentifierValue.rawValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = 0x636E656772656D65;
  switch(v2)
  {
    case 0uLL:
      break;
    case 1uLL:
      v3 = 0xD000000000000012;
      break;
    case 2uLL:
      v3 = 0xD000000000000011;
      break;
    case 3uLL:
      v3 = 0xD00000000000001BLL;
      break;
    case 4uLL:
      v3 = 0xD000000000000012;
      break;
    case 5uLL:
      v3 = 0xD000000000000012;
      break;
    case 6uLL:
      v3 = 0xD000000000000013;
      break;
    case 7uLL:
      v3 = 0xD00000000000001ALL;
      break;
    case 8uLL:
      v3 = 0xD000000000000019;
      break;
    case 9uLL:
    case 0xBuLL:
      v3 = 0xD000000000000015;
      break;
    case 0xAuLL:
      v3 = 0xD000000000000012;
      break;
    case 0xCuLL:
      v3 = 0xD000000000000010;
      break;
    case 0xDuLL:
      v3 = 0x726F68736F747561;
      break;
    case 0xEuLL:
      v3 = 0x796C6E4F61647544;
      break;
    default:
      v3 = v1;
      break;
  }

  sub_1C05485F0(v1, v2);
  return v3;
}

uint64_t sub_1C0547398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a2;
  v4 = a1;
  v6 = a1 == 0x636E656772656D65 && a2 == 0xEF7265626D754E79;
  if (v6 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 0;
  }

  else if (v4 == 0xD000000000000012 && 0x80000001C09CBBF0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 1;
  }

  else if (v4 == 0xD000000000000011 && 0x80000001C09CBBD0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 2;
  }

  else if (v4 == 0xD00000000000001BLL && 0x80000001C09CBBB0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 3;
  }

  else if (v4 == 0xD000000000000012 && 0x80000001C09CBB90 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 4;
  }

  else if (v4 == 0xD000000000000012 && 0x80000001C09CBB70 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 5;
  }

  else if (v4 == 0xD000000000000013 && 0x80000001C09CBB50 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 6;
  }

  else if (v4 == 0xD00000000000001ALL && 0x80000001C09CBB30 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 7;
  }

  else if (v4 == 0xD000000000000019 && 0x80000001C09CBB10 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 8;
  }

  else if (v4 == 0xD000000000000015 && 0x80000001C09CBAF0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 9;
  }

  else if (v4 == 0xD000000000000012 && 0x80000001C09CBAD0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 10;
  }

  else if (v4 == 0xD000000000000015 && 0x80000001C09CBAB0 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 11;
  }

  else if (v4 == 0xD000000000000010 && 0x80000001C09CBA90 == v3 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 12;
  }

  else if (v4 == 0x726F68736F747561 && v3 == 0xEF2F2F3A74756374 || (sub_1C095DF3C() & 1) != 0)
  {

    v4 = 0;
    v3 = 13;
  }

  else if (v4 == 0x796C6E4F61647544 && v3 == 0xE800000000000000 || (result = sub_1C095DF3C(), (result & 1) != 0))
  {

    v4 = 0;
    v3 = 14;
  }

  *a3 = v4;
  a3[1] = v3;
  return result;
}

uint64_t _s12SiriOntology15IdentifierValueO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_40;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_38;
      }

      v12 = 1;
      sub_1C0548834(*a1, 1uLL);
      sub_1C0548834(v4, 1uLL);
      return v12;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_40;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_40;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_40;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 5uLL);
      v6 = v4;
      v7 = 5;
      goto LABEL_40;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
      goto LABEL_40;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_40;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 8uLL);
      v6 = v4;
      v7 = 8;
      goto LABEL_40;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 9uLL);
      v6 = v4;
      v7 = 9;
      goto LABEL_40;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 0xAuLL);
      v6 = v4;
      v7 = 10;
      goto LABEL_40;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 0xBuLL);
      v6 = v4;
      v7 = 11;
      goto LABEL_40;
    case 0xCuLL:
      if (v5 != 12)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 0xCuLL);
      v6 = v4;
      v7 = 12;
      goto LABEL_40;
    case 0xDuLL:
      if (v5 != 13)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 0xDuLL);
      v6 = v4;
      v7 = 13;
      goto LABEL_40;
    case 0xEuLL:
      if (v5 != 14)
      {
        goto LABEL_38;
      }

      sub_1C0548834(*a1, 0xEuLL);
      v6 = v4;
      v7 = 14;
      goto LABEL_40;
    default:
      if (v5 < 0xF)
      {
LABEL_38:
        sub_1C05485F0(*a2, *(a2 + 8));
        sub_1C05485F0(v2, v3);
        sub_1C0548834(v2, v3);
        sub_1C0548834(v4, v5);
        return 0;
      }

      else
      {
        v8 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v10 = sub_1C095DF3C();
          sub_1C05485F0(v4, v5);
          sub_1C05485F0(v2, v3);
          sub_1C0548834(v2, v3);
          sub_1C0548834(v4, v5);
          return v10 & 1;
        }

        sub_1C05485F0(v8, v3);
        sub_1C05485F0(v2, v3);
        sub_1C0548834(v2, v3);
        v6 = v2;
        v7 = v3;
LABEL_40:
        sub_1C0548834(v6, v7);
        return 1;
      }
  }
}

uint64_t _s12SiriOntology19IdentifierAppBundleO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_62;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_55;
      }

      v8 = 1;
      sub_1C0548848(*a1, 1uLL);
      sub_1C0548848(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_62;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_62;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_62;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 5uLL);
      v6 = v4;
      v7 = 5;
      goto LABEL_62;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
      goto LABEL_62;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_62;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 8uLL);
      v6 = v4;
      v7 = 8;
      goto LABEL_62;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 9uLL);
      v6 = v4;
      v7 = 9;
      goto LABEL_62;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0xAuLL);
      v6 = v4;
      v7 = 10;
      goto LABEL_62;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0xBuLL);
      v6 = v4;
      v7 = 11;
      goto LABEL_62;
    case 0xCuLL:
      if (v5 != 12)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0xCuLL);
      v6 = v4;
      v7 = 12;
      goto LABEL_62;
    case 0xDuLL:
      if (v5 != 13)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0xDuLL);
      v6 = v4;
      v7 = 13;
      goto LABEL_62;
    case 0xEuLL:
      if (v5 != 14)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0xEuLL);
      v6 = v4;
      v7 = 14;
      goto LABEL_62;
    case 0xFuLL:
      if (v5 != 15)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0xFuLL);
      v6 = v4;
      v7 = 15;
      goto LABEL_62;
    case 0x10uLL:
      if (v5 != 16)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0x10uLL);
      v6 = v4;
      v7 = 16;
      goto LABEL_62;
    case 0x11uLL:
      if (v5 != 17)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0x11uLL);
      v6 = v4;
      v7 = 17;
      goto LABEL_62;
    case 0x12uLL:
      if (v5 != 18)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0x12uLL);
      v6 = v4;
      v7 = 18;
      goto LABEL_62;
    case 0x13uLL:
      if (v5 != 19)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0x13uLL);
      v6 = v4;
      v7 = 19;
      goto LABEL_62;
    case 0x14uLL:
      if (v5 != 20)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0x14uLL);
      v6 = v4;
      v7 = 20;
      goto LABEL_62;
    case 0x15uLL:
      if (v5 != 21)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0x15uLL);
      v6 = v4;
      v7 = 21;
      goto LABEL_62;
    case 0x16uLL:
      if (v5 != 22)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0x16uLL);
      v6 = v4;
      v7 = 22;
      goto LABEL_62;
    case 0x17uLL:
      if (v5 != 23)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0x17uLL);
      v6 = v4;
      v7 = 23;
      goto LABEL_62;
    case 0x18uLL:
      if (v5 != 24)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0x18uLL);
      v6 = v4;
      v7 = 24;
      goto LABEL_62;
    case 0x19uLL:
      if (v5 != 25)
      {
        goto LABEL_55;
      }

      sub_1C0548848(*a1, 0x19uLL);
      v6 = v4;
      v7 = 25;
      goto LABEL_62;
    default:
      if (v5 >= 0x1A)
      {
        v9 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v11 = sub_1C095DF3C();
          sub_1C05485DC(v4, v5);
          sub_1C05485DC(v2, v3);
          sub_1C0548848(v2, v3);
          sub_1C0548848(v4, v5);
          return v11 & 1;
        }

        sub_1C05485DC(v9, v3);
        sub_1C05485DC(v2, v3);
        sub_1C0548848(v2, v3);
        v6 = v2;
        v7 = v3;
LABEL_62:
        sub_1C0548848(v6, v7);
        return 1;
      }

      else
      {
LABEL_55:
        sub_1C05485DC(*a2, *(a2 + 8));
        sub_1C05485DC(v2, v3);
        sub_1C0548848(v2, v3);
        sub_1C0548848(v4, v5);
        return 0;
      }
  }
}

uint64_t _s12SiriOntology19IdentifierNamespaceO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  switch(v3)
  {
    case 0uLL:
      if (v5)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0);
      v6 = v4;
      v7 = 0;
      goto LABEL_82;
    case 1uLL:
      if (v5 != 1)
      {
        goto LABEL_75;
      }

      v8 = 1;
      sub_1C054885C(*a1, 1uLL);
      sub_1C054885C(v4, 1uLL);
      return v8;
    case 2uLL:
      if (v5 != 2)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 2uLL);
      v6 = v4;
      v7 = 2;
      goto LABEL_82;
    case 3uLL:
      if (v5 != 3)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 3uLL);
      v6 = v4;
      v7 = 3;
      goto LABEL_82;
    case 4uLL:
      if (v5 != 4)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 4uLL);
      v6 = v4;
      v7 = 4;
      goto LABEL_82;
    case 5uLL:
      if (v5 != 5)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 5uLL);
      v6 = v4;
      v7 = 5;
      goto LABEL_82;
    case 6uLL:
      if (v5 != 6)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 6uLL);
      v6 = v4;
      v7 = 6;
      goto LABEL_82;
    case 7uLL:
      if (v5 != 7)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 7uLL);
      v6 = v4;
      v7 = 7;
      goto LABEL_82;
    case 8uLL:
      if (v5 != 8)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 8uLL);
      v6 = v4;
      v7 = 8;
      goto LABEL_82;
    case 9uLL:
      if (v5 != 9)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 9uLL);
      v6 = v4;
      v7 = 9;
      goto LABEL_82;
    case 0xAuLL:
      if (v5 != 10)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0xAuLL);
      v6 = v4;
      v7 = 10;
      goto LABEL_82;
    case 0xBuLL:
      if (v5 != 11)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0xBuLL);
      v6 = v4;
      v7 = 11;
      goto LABEL_82;
    case 0xCuLL:
      if (v5 != 12)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0xCuLL);
      v6 = v4;
      v7 = 12;
      goto LABEL_82;
    case 0xDuLL:
      if (v5 != 13)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0xDuLL);
      v6 = v4;
      v7 = 13;
      goto LABEL_82;
    case 0xEuLL:
      if (v5 != 14)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0xEuLL);
      v6 = v4;
      v7 = 14;
      goto LABEL_82;
    case 0xFuLL:
      if (v5 != 15)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0xFuLL);
      v6 = v4;
      v7 = 15;
      goto LABEL_82;
    case 0x10uLL:
      if (v5 != 16)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x10uLL);
      v6 = v4;
      v7 = 16;
      goto LABEL_82;
    case 0x11uLL:
      if (v5 != 17)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x11uLL);
      v6 = v4;
      v7 = 17;
      goto LABEL_82;
    case 0x12uLL:
      if (v5 != 18)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x12uLL);
      v6 = v4;
      v7 = 18;
      goto LABEL_82;
    case 0x13uLL:
      if (v5 != 19)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x13uLL);
      v6 = v4;
      v7 = 19;
      goto LABEL_82;
    case 0x14uLL:
      if (v5 != 20)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x14uLL);
      v6 = v4;
      v7 = 20;
      goto LABEL_82;
    case 0x15uLL:
      if (v5 != 21)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x15uLL);
      v6 = v4;
      v7 = 21;
      goto LABEL_82;
    case 0x16uLL:
      if (v5 != 22)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x16uLL);
      v6 = v4;
      v7 = 22;
      goto LABEL_82;
    case 0x17uLL:
      if (v5 != 23)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x17uLL);
      v6 = v4;
      v7 = 23;
      goto LABEL_82;
    case 0x18uLL:
      if (v5 != 24)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x18uLL);
      v6 = v4;
      v7 = 24;
      goto LABEL_82;
    case 0x19uLL:
      if (v5 != 25)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x19uLL);
      v6 = v4;
      v7 = 25;
      goto LABEL_82;
    case 0x1AuLL:
      if (v5 != 26)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x1AuLL);
      v6 = v4;
      v7 = 26;
      goto LABEL_82;
    case 0x1BuLL:
      if (v5 != 27)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x1BuLL);
      v6 = v4;
      v7 = 27;
      goto LABEL_82;
    case 0x1CuLL:
      if (v5 != 28)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x1CuLL);
      v6 = v4;
      v7 = 28;
      goto LABEL_82;
    case 0x1DuLL:
      if (v5 != 29)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x1DuLL);
      v6 = v4;
      v7 = 29;
      goto LABEL_82;
    case 0x1EuLL:
      if (v5 != 30)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x1EuLL);
      v6 = v4;
      v7 = 30;
      goto LABEL_82;
    case 0x1FuLL:
      if (v5 != 31)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x1FuLL);
      v6 = v4;
      v7 = 31;
      goto LABEL_82;
    case 0x20uLL:
      if (v5 != 32)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x20uLL);
      v6 = v4;
      v7 = 32;
      goto LABEL_82;
    case 0x21uLL:
      if (v5 != 33)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x21uLL);
      v6 = v4;
      v7 = 33;
      goto LABEL_82;
    case 0x22uLL:
      if (v5 != 34)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x22uLL);
      v6 = v4;
      v7 = 34;
      goto LABEL_82;
    case 0x23uLL:
      if (v5 != 35)
      {
        goto LABEL_75;
      }

      sub_1C054885C(*a1, 0x23uLL);
      v6 = v4;
      v7 = 35;
      goto LABEL_82;
    default:
      if (v5 >= 0x24)
      {
        v9 = *a1;
        if (v2 != v4 || v3 != v5)
        {
          v11 = sub_1C095DF3C();
          sub_1C0545A24(v4, v5);
          sub_1C0545A24(v2, v3);
          sub_1C054885C(v2, v3);
          sub_1C054885C(v4, v5);
          return v11 & 1;
        }

        sub_1C0545A24(v9, v3);
        sub_1C0545A24(v2, v3);
        sub_1C054885C(v2, v3);
        v6 = v2;
        v7 = v3;
LABEL_82:
        sub_1C054885C(v6, v7);
        return 1;
      }

      else
      {
LABEL_75:
        sub_1C0545A24(*a2, *(a2 + 8));
        sub_1C0545A24(v2, v3);
        sub_1C054885C(v2, v3);
        sub_1C054885C(v4, v5);
        return 0;
      }
  }
}

uint64_t sub_1C05485DC(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x1A)
  {
  }

  return result;
}

uint64_t sub_1C05485F0(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xF)
  {
  }

  return result;
}

uint64_t sub_1C0548604(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFDB && *(a1 + 16))
  {
    return (*a1 + 2147483612);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 35;
  if (v4 >= 0x25)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C054865C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFDC)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483612;
    if (a3 >= 0x7FFFFFDC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFDC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 35;
    }
  }

  return result;
}

uint64_t sub_1C05486C0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFE5 && *(a1 + 16))
  {
    return (*a1 + 2147483622);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 25;
  if (v4 >= 0x1B)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0548718(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFE6)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483622;
    if (a3 >= 0x7FFFFFE6)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFE6)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 25;
    }
  }

  return result;
}

uint64_t sub_1C0548778(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF1 && *(a1 + 16))
  {
    return (*a1 + 2147483633);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 14;
  if (v4 >= 0x10)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C05487D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF1)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483633;
    if (a3 >= 0x7FFFFFF1)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF1)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 14;
    }
  }

  return result;
}

uint64_t sub_1C0548834(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0xF)
  {
  }

  return result;
}

uint64_t sub_1C0548848(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x1A)
  {
  }

  return result;
}

uint64_t sub_1C054885C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 0x24)
  {
  }

  return result;
}

uint64_t None.init(rawValue:)@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = (*(*(a1 - 8) + 8))();
  *a2 = 1;
  return result;
}

uint64_t Definition.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t Definition.init(name:keyPaths:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = MEMORY[0x1E69E7CC0];
  a4[3] = a3;
  return result;
}

uint64_t Definition.init(name:subtypes:keyPaths:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t Definition.edgeName(for:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(a2 + 16);
  sub_1C095DC6C();

  sub_1C095D70C();

  return v6;
}

void Field.wrappedValue.getter(uint64_t a1)
{
  sub_1C095DC1C();

  v2 = *(a1 + 16);
  v3 = sub_1C095E09C();
  MEMORY[0x1C68DD690](v3);

  MEMORY[0x1C68DD690](0xD000000000000018, 0x80000001C09CBC40);
  sub_1C095DD0C();
  __break(1u);
}

void Field.projectedValue.getter(uint64_t a1)
{
  sub_1C095DC1C();

  v2 = *(a1 + 16);
  v3 = sub_1C095E09C();
  MEMORY[0x1C68DD690](v3);

  MEMORY[0x1C68DD690](0xD000000000000018, 0x80000001C09CBC40);
  sub_1C095DD0C();
  __break(1u);
}

void Field.init(wrappedValue:)()
{
  sub_1C095DC1C();

  v0 = sub_1C095E09C();
  MEMORY[0x1C68DD690](v0);

  MEMORY[0x1C68DD690](0xD000000000000018, 0x80000001C09CBC40);
  sub_1C095DD0C();
  __break(1u);
}

void sub_1C0548CAC(uint64_t a1)
{
  sub_1C095DC1C();

  v2 = *(a1 + 16);
  v3 = sub_1C095E09C();
  MEMORY[0x1C68DD690](v3);

  MEMORY[0x1C68DD690](0xD000000000000018, 0x80000001C09CBC40);
  sub_1C095DD0C();
  __break(1u);
}

void keypath_setTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + a4 - 8);
  v5 = type metadata accessor for Field();
  sub_1C0548CAC(v5);
}

unint64_t sub_1C0548DC0()
{
  result = qword_1EBE16990;
  if (!qword_1EBE16990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBE16998, &qword_1C096E008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE16990);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C0548E8C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C0548EE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C0548F28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_DisplayHint.idValue.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0);
  sub_1C05149F8(v1 + *(v7 + 20), v6, &qword_1EBE16B50, &unk_1C096E0F0);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C055396C(v6, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(v8 + 32);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16B50, &unk_1C096E0F0);
  }

  return result;
}

uint64_t sub_1C054911C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0);
  sub_1C05149F8(a1 + *(v8 + 20), v7, &qword_1EBE16B50, &unk_1C096E0F0);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C055396C(v7, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = MEMORY[0x1E69E7CC0];
  v11 = a2 + *(v9 + 32);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16B50, &unk_1C096E0F0);
  }

  return result;
}

uint64_t sub_1C0549294(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05539D4(a1, v8, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v9 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0) + 20);
  sub_1C05145B4(a2 + v9, &qword_1EBE16B50, &unk_1C096E0F0);
  sub_1C055396C(v8, a2 + v9, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_DisplayHint.idValue.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0) + 20);
  sub_1C05145B4(v1 + v3, &qword_1EBE16B50, &unk_1C096E0F0);
  sub_1C055396C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Com_Apple_Siri_Product_Proto_DisplayHint.idValue.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0) + 20);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16B50, &unk_1C096E0F0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v14[4] = 0;
    v14[5] = 0xE000000000000000;
    v14[6] = MEMORY[0x1E69E7CC0];
    v17 = v14 + *(v9 + 32);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16B50, &unk_1C096E0F0);
    }
  }

  else
  {
    sub_1C055396C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  }

  return sub_1C0554488;
}

BOOL Com_Apple_Siri_Product_Proto_DisplayHint.hasIDValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0);
  sub_1C05149F8(v0 + *(v5 + 20), v4, &qword_1EBE16B50, &unk_1C096E0F0);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C05145B4(v4, &qword_1EBE16B50, &unk_1C096E0F0);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Siri_Product_Proto_DisplayHint.clearIDValue()()
{
  v1 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0) + 20);
  sub_1C05145B4(v0 + v1, &qword_1EBE16B50, &unk_1C096E0F0);
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Siri_Product_Proto_DisplayHint.displayValue.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0);
  sub_1C05149F8(v1 + *(v7 + 24), v6, &qword_1EBE16B50, &unk_1C096E0F0);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1C055396C(v6, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = MEMORY[0x1E69E7CC0];
  v10 = a1 + *(v8 + 32);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16B50, &unk_1C096E0F0);
  }

  return result;
}

uint64_t sub_1C0549994@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0);
  sub_1C05149F8(a1 + *(v8 + 24), v7, &qword_1EBE16B50, &unk_1C096E0F0);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v7, 1, v9) != 1)
  {
    return sub_1C055396C(v7, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  a2[4] = 0;
  a2[5] = 0xE000000000000000;
  a2[6] = MEMORY[0x1E69E7CC0];
  v11 = a2 + *(v9 + 32);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v7, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16B50, &unk_1C096E0F0);
  }

  return result;
}

uint64_t sub_1C0549B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05539D4(a1, v8, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v9 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0) + 24);
  sub_1C05145B4(a2 + v9, &qword_1EBE16B50, &unk_1C096E0F0);
  sub_1C055396C(v8, a2 + v9, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  return (*(v5 + 56))(a2 + v9, 0, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_DisplayHint.displayValue.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0) + 24);
  sub_1C05145B4(v1 + v3, &qword_1EBE16B50, &unk_1C096E0F0);
  sub_1C055396C(a1, v1 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Com_Apple_Siri_Product_Proto_DisplayHint.displayValue.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0) + 24);
  *(v5 + 12) = v15;
  sub_1C05149F8(v1 + v15, v8, &qword_1EBE16B50, &unk_1C096E0F0);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v14[4] = 0;
    v14[5] = 0xE000000000000000;
    v14[6] = MEMORY[0x1E69E7CC0];
    v17 = v14 + *(v9 + 32);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16B50, &unk_1C096E0F0);
    }
  }

  else
  {
    sub_1C055396C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  }

  return sub_1C0549F18;
}

void sub_1C0549F1C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 12);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  v6 = (*a1)[2];
  v7 = (*a1)[3];
  v9 = **a1;
  v8 = (*a1)[1];
  if (a2)
  {
    sub_1C05539D4((*a1)[5], v4, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    sub_1C05145B4(v9 + v3, &qword_1EBE16B50, &unk_1C096E0F0);
    sub_1C055396C(v4, v9 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
    sub_1C0553A3C(v5, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  }

  else
  {
    sub_1C05145B4(v9 + v3, &qword_1EBE16B50, &unk_1C096E0F0);
    sub_1C055396C(v5, v9 + v3, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    (*(v7 + 56))(v9 + v3, 0, 1, v6);
  }

  free(v5);
  free(v4);
  free(v8);

  free(v2);
}

BOOL Com_Apple_Siri_Product_Proto_DisplayHint.hasDisplayValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0);
  sub_1C05149F8(v0 + *(v5 + 24), v4, &qword_1EBE16B50, &unk_1C096E0F0);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v7 = (*(*(v6 - 8) + 48))(v4, 1, v6) != 1;
  sub_1C05145B4(v4, &qword_1EBE16B50, &unk_1C096E0F0);
  return v7;
}

Swift::Void __swiftcall Com_Apple_Siri_Product_Proto_DisplayHint.clearDisplayValue()()
{
  v1 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0) + 24);
  sub_1C05145B4(v0 + v1, &qword_1EBE16B50, &unk_1C096E0F0);
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Com_Apple_Siri_Product_Proto_DisplayHint.init()@<X0>(uint64_t a1@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0);
  v3 = *(v2 + 20);
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v7 = *(*(v4 - 8) + 56);
  (v7)((v4 - 8), a1 + v3, 1, 1, v4);
  v5 = a1 + *(v2 + 24);

  return v7(v5, 1, 1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_AssistantSignalState.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0) + 20);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_AssistantSignalState.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0) + 20);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_AssistantSignalState.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  v1 = &a1[*(type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0) + 20)];
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t Com_Apple_Siri_Product_Proto_Uuid.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0) + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Uuid.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0) + 24);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Com_Apple_Siri_Product_Proto_Uuid.init()@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  *a1 = 0;
  a1[1] = 0;
  v3 = a1 + *(v2 + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C054A658(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1C051EF2C(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 16) = v3;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.dictationPrompt.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 16);
  return sub_1C054A79C;
}

void sub_1C054A79C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1C051EF2C(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 16) = v4;

  free(v1);
}

uint64_t sub_1C054A86C(char *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v5 = *(a2 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();
    v11 = sub_1C051EF2C(v7);

    *(a2 + v4) = v11;
    v7 = v11;
  }

  result = swift_beginAccess();
  *(v7 + 17) = v3;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.strictPrompt.modify(uint64_t *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 84) = *(v6 + 17);
  return sub_1C054A9B0;
}

void sub_1C054A9B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 80);
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 84);
  v5 = *(v3 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v3 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 80);
    v9 = *(v1 + 72);
    v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1C051EF2C(v7);

    *(v9 + v8) = v13;
    v7 = v13;
  }

  swift_beginAccess();
  *(v7 + 17) = v4;

  free(v1);
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.ambiguityTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE16B58, &unk_1C099B6A0);
  v9 = sub_1C095D26C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  if (v11(v6, 1, v9) != 1)
  {
    return (*(v10 + 32))(a1, v6, v9);
  }

  sub_1C095D25C();
  result = (v11)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16B58, &unk_1C099B6A0);
  }

  return result;
}

uint64_t sub_1C054AC08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  v9 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
  swift_beginAccess();
  sub_1C05149F8(v8 + v9, v7, &qword_1EBE16B58, &unk_1C099B6A0);
  v10 = sub_1C095D26C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (v12(v7, 1, v10) != 1)
  {
    return (*(v11 + 32))(a2, v7, v10);
  }

  sub_1C095D25C();
  result = (v12)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16B58, &unk_1C099B6A0);
  }

  return result;
}

uint64_t sub_1C054AD94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = sub_1C095D26C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C051EF2C(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  (*(v9 + 32))(v7, v12, v8);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE16B58, &unk_1C099B6A0);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.ambiguityTarget.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v20 - v6;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C051EF2C(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  v16 = sub_1C095D26C();
  v17 = *(v16 - 8);
  (*(v17 + 32))(v7, a1, v16);
  (*(v17 + 56))(v7, 0, 1, v16);
  v18 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v18, &qword_1EBE16B58, &unk_1C099B6A0);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.ambiguityTarget.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = sub_1C095D26C();
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE16B58, &unk_1C099B6A0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1C095D25C();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16B58, &unk_1C099B6A0);
    }
  }

  else
  {
    (*(v11 + 32))(v14, v8, v9);
  }

  return sub_1C054B37C;
}

void sub_1C054B37C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 128);
  if (a2)
  {
    v4 = *(v2 + 72);
    (*(*(v2 + 104) + 16))(*(v2 + 112), *(v2 + 120), *(v2 + 96));
    v5 = *(v4 + v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v4 + v3);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 128);
      v9 = *(v2 + 72);
      v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
      v11 = *(v10 + 48);
      v12 = *(v10 + 52);
      swift_allocObject();
      v13 = sub_1C051EF2C(v7);

      *(v9 + v8) = v13;
      v7 = v13;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v16 = *(v2 + 96);
    v17 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    (*(v17 + 32))(v19, v15, v16);
    (*(v17 + 56))(v19, 0, 1, v16);
    v20 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
    swift_beginAccess();
    sub_1C051F9D4(v19, v7 + v20, &qword_1EBE16B58, &unk_1C099B6A0);
    swift_endAccess();
    (*(v17 + 8))(v14, v16);
  }

  else
  {
    v21 = *(v2 + 72);
    v22 = *(v21 + v3);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v21 + v3);
    if ((v23 & 1) == 0)
    {
      v25 = *(v2 + 128);
      v26 = *(v2 + 72);
      v27 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_1C051EF2C(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v15 = *(v2 + 112);
    v14 = *(v2 + 120);
    v31 = *(v2 + 96);
    v32 = *(v2 + 104);
    v19 = *(v2 + 80);
    v18 = *(v2 + 88);
    (*(v32 + 32))(v19, v14, v31);
    (*(v32 + 56))(v19, 0, 1, v31);
    v33 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
    swift_beginAccess();
    sub_1C051F9D4(v19, v24 + v33, &qword_1EBE16B58, &unk_1C099B6A0);
    swift_endAccess();
  }

  free(v14);
  free(v15);
  free(v18);
  free(v19);

  free(v2);
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.responseOptions.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__responseOptions;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C054B6F8;
}

uint64_t sub_1C054B704@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  v6 = *a2;
  swift_beginAccess();
  *a3 = *(v5 + v6);
}

uint64_t sub_1C054B770(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);

  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C051EF2C(v11);

    *(a2 + v8) = v15;
    v11 = v15;
  }

  v16 = *a5;
  swift_beginAccess();
  v17 = *(v11 + v16);
  *(v11 + v16) = v7;
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.domainHints.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__domainHints;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C054B8DC;
}

void sub_1C054B8E8(uint64_t *a1, char a2, uint64_t *a3)
{
  v4 = *a1;
  v6 = (*a1 + 72);
  v5 = *v6;
  v7 = *(*a1 + 88);
  v8 = *(*a1 + 80);
  if (a2)
  {
    v9 = *(*a1 + 72);

    v10 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 88);
      v14 = *(v4 + 80);
      v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = sub_1C051EF2C(v12);

      *(v14 + v13) = v18;
      v12 = v18;
    }

    v19 = *a3;
    swift_beginAccess();
    v20 = *(v12 + v19);
    *(v12 + v19) = v5;

    v21 = *v6;
  }

  else
  {
    v22 = *(v8 + v7);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v8 + v7);
    if ((v23 & 1) == 0)
    {
      v25 = *(v4 + 88);
      v26 = *(v4 + 80);
      v27 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_1C051EF2C(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v31 = *a3;
    swift_beginAccess();
    v32 = *(v24 + v31);
    *(v24 + v31) = v5;
  }

  free(v4);
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.promptTargetHints.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__promptTargetHints;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C054BAF8;
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.displayHints.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__displayHints;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C054BBC0;
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.foregroundAppSubscribesToInAppSearch.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__foregroundAppSubscribesToInAppSearch;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1C054BC8C;
}

uint64_t sub_1C054BCA4(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v7 = *a1;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v9 = *(a2 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C051EF2C(v11);

    *(a2 + v8) = v15;
    v11 = v15;
  }

  v16 = *a5;
  result = swift_beginAccess();
  *(v11 + v16) = v7;
  return result;
}

uint64_t sub_1C054BD5C(char a1, uint64_t *a2)
{
  v4 = v2;
  v6 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v7 = *(v2 + v6);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    v13 = sub_1C051EF2C(v9);

    *(v4 + v6) = v13;
    v9 = v13;
  }

  v14 = *a2;
  result = swift_beginAccess();
  *(v9 + v14) = a1 & 1;
  return result;
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.objectDisambiguation.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__objectDisambiguation;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1C054BEB4;
}

void sub_1C054BEC0(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  v7 = *(*a1 + 84);
  v8 = *(v6 + v5);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v4 + 80);
    v12 = *(v4 + 72);
    v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_1C051EF2C(v10);

    *(v12 + v11) = v16;
    v10 = v16;
  }

  v17 = *a3;
  swift_beginAccess();
  *(v10 + v17) = v7;

  free(v4);
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.alertDomainHints.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__alertDomainHints;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C054C060;
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.backgroundDomainHints.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__backgroundDomainHints;
  swift_beginAccess();
  *(v4 + 72) = *(v6 + v7);

  return sub_1C054C134;
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.previousDomainName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousDomainName);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1C054C1F4;
}

uint64_t sub_1C054C20C@<X0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20)) + *a2);
  swift_beginAccess();
  v5 = v4[1];
  *a3 = *v4;
  a3[1] = v5;
}

uint64_t sub_1C054C27C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);

  v10 = *(a2 + v9);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();
    v16 = sub_1C051EF2C(v12);

    *(a2 + v9) = v16;
    v12 = v16;
  }

  v17 = (v12 + *a5);
  swift_beginAccess();
  v18 = v17[1];
  *v17 = v8;
  v17[1] = v7;
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.previousNldomainName.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousNldomainName);
  swift_beginAccess();
  v7 = v6[1];
  *(v4 + 72) = *v6;
  *(v4 + 80) = v7;

  return sub_1C054C404;
}

void sub_1C054C410(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {
    v9 = *(*a1 + 80);

    v10 = *(v8 + v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 96);
      v14 = *(v4 + 88);
      v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
      v16 = *(v15 + 48);
      v17 = *(v15 + 52);
      swift_allocObject();
      v18 = sub_1C051EF2C(v12);

      *(v14 + v13) = v18;
      v12 = v18;
    }

    v19 = (v12 + *a3);
    swift_beginAccess();
    v20 = v19[1];
    *v19 = v5;
    v19[1] = v7;

    v21 = *(v4 + 80);
  }

  else
  {
    v22 = *(v8 + v6);
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v8 + v6);
    if ((v23 & 1) == 0)
    {
      v25 = *(v4 + 96);
      v26 = *(v4 + 88);
      v27 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = sub_1C051EF2C(v24);

      *(v26 + v25) = v30;
      v24 = v30;
    }

    v31 = (v24 + *a3);
    swift_beginAccess();
    v32 = v31[1];
    *v31 = v5;
    v31[1] = v7;
  }

  free(v4);
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.listenAfterSpeaking.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__listenAfterSpeaking;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1C054C620;
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.assistantSignalState.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B60, &qword_1C096E100);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__assistantSignalState;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE16B60, &qword_1C096E100);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C055396C(v6, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
  }

  *a1 = 0;
  v11 = &a1[*(v9 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16B60, &qword_1C096E100);
  }

  return result;
}

uint64_t sub_1C054C7AC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B60, &qword_1C096E100);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v14 - v6;
  v8 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  v9 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__assistantSignalState;
  swift_beginAccess();
  sub_1C05149F8(v8 + v9, v7, &qword_1EBE16B60, &qword_1C096E100);
  v10 = type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0);
  v11 = *(*(v10 - 8) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_1C055396C(v7, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
  }

  *a2 = 0;
  v12 = &a2[*(v10 + 20)];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_1C05145B4(v7, &qword_1EBE16B60, &qword_1C096E100);
  }

  return result;
}

uint64_t sub_1C054C930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B60, &qword_1C096E100);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05539D4(a1, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C051EF2C(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1C055396C(v12, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__assistantSignalState;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE16B60, &qword_1C096E100);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.assistantSignalState.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B60, &qword_1C096E100);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C051EF2C(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1C055396C(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__assistantSignalState;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE16B60, &qword_1C096E100);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.assistantSignalState.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B60, &qword_1C096E100) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__assistantSignalState;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE16B60, &qword_1C096E100);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v19 = &v14[*(v9 + 20)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16B60, &qword_1C096E100);
    }
  }

  else
  {
    sub_1C055396C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
  }

  return sub_1C054CEF4;
}

BOOL sub_1C054CF54(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v18 - v11;
  v13 = *(v4 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  v14 = *a3;
  swift_beginAccess();
  sub_1C05149F8(v13 + v14, v12, a1, a2);
  v15 = a4(0);
  v16 = (*(*(v15 - 8) + 48))(v12, 1, v15) != 1;
  sub_1C05145B4(v12, a1, a2);
  return v16;
}

uint64_t sub_1C054D09C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v25 - v12;
  v14 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v19 = *(v18 + 48);
    v20 = *(v18 + 52);
    swift_allocObject();
    v21 = sub_1C051EF2C(v17);

    *(v9 + v14) = v21;
    v17 = v21;
  }

  v22 = a3(0);
  (*(*(v22 - 8) + 56))(v13, 1, 1, v22);
  v23 = *a4;
  swift_beginAccess();
  sub_1C051F9D4(v13, v17 + v23, a1, a2);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.overridePromptingOnSpeechFailure.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__overridePromptingOnSpeechFailure;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1C054D2B8;
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.disableAutoPunctuation.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__disableAutoPunctuation;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1C054D384;
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.currentTaskVerb.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(v1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  v8 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__currentTaskVerb;
  swift_beginAccess();
  sub_1C05149F8(v7 + v8, v6, &qword_1EBE16B50, &unk_1C096E0F0);
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v10 = *(*(v9 - 8) + 48);
  if (v10(v6, 1, v9) != 1)
  {
    return sub_1C055396C(v6, a1, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = MEMORY[0x1E69E7CC0];
  v11 = a1 + *(v9 + 32);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v10)(v6, 1, v9);
  if (result != 1)
  {
    return sub_1C05145B4(v6, &qword_1EBE16B50, &unk_1C096E0F0);
  }

  return result;
}

uint64_t sub_1C054D528(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05539D4(a1, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C051EF2C(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1C055396C(v12, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__currentTaskVerb;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE16B50, &unk_1C096E0F0);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.currentTaskVerb.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C051EF2C(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1C055396C(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__currentTaskVerb;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE16B50, &unk_1C096E0F0);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.currentTaskVerb.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__currentTaskVerb;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE16B50, &unk_1C096E0F0);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v14[4] = 0;
    v14[5] = 0xE000000000000000;
    v14[6] = MEMORY[0x1E69E7CC0];
    v19 = v14 + *(v9 + 32);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16B50, &unk_1C096E0F0);
    }
  }

  else
  {
    sub_1C055396C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  }

  return sub_1C054DB04;
}

uint64_t sub_1C054DBA0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B68, &qword_1C096E108);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05539D4(a1, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C051EF2C(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1C055396C(v12, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__taskID;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE16B68, &qword_1C096E108);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.taskID.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B68, &qword_1C096E108);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C051EF2C(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1C055396C(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__taskID;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE16B68, &qword_1C096E108);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.taskID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B68, &qword_1C096E108) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__taskID;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE16B68, &qword_1C096E108);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v19 = v14 + *(v9 + 24);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16B68, &qword_1C096E108);
    }
  }

  else
  {
    sub_1C055396C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  }

  return sub_1C054E164;
}

uint64_t sub_1C054E200@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B68, &qword_1C096E108);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v15 - v7;
  v9 = *(v2 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  v10 = *a1;
  swift_beginAccess();
  sub_1C05149F8(v9 + v10, v8, &qword_1EBE16B68, &qword_1C096E108);
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  v12 = *(*(v11 - 8) + 48);
  if (v12(v8, 1, v11) != 1)
  {
    return sub_1C055396C(v8, a2, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  }

  *a2 = 0;
  a2[1] = 0;
  v13 = a2 + *(v11 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v12)(v8, 1, v11);
  if (result != 1)
  {
    return sub_1C05145B4(v8, &qword_1EBE16B68, &qword_1C096E108);
  }

  return result;
}

uint64_t sub_1C054E380@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B68, &qword_1C096E108);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v10 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  v11 = *a2;
  swift_beginAccess();
  sub_1C05149F8(v10 + v11, v9, &qword_1EBE16B68, &qword_1C096E108);
  v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  v13 = *(*(v12 - 8) + 48);
  if (v13(v9, 1, v12) != 1)
  {
    return sub_1C055396C(v9, a3, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  }

  *a3 = 0;
  a3[1] = 0;
  v14 = a3 + *(v12 + 24);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  result = (v13)(v9, 1, v12);
  if (result != 1)
  {
    return sub_1C05145B4(v9, &qword_1EBE16B68, &qword_1C096E108);
  }

  return result;
}

uint64_t sub_1C054E504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B68, &qword_1C096E108);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05539D4(a1, v12, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  v13 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v14 = *(a2 + v13);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a2 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v18 = *(v17 + 48);
    v19 = *(v17 + 52);
    swift_allocObject();
    v20 = sub_1C051EF2C(v16);

    *(a2 + v13) = v20;
    v16 = v20;
  }

  sub_1C055396C(v12, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  (*(v9 + 56))(v7, 0, 1, v8);
  v21 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__systemDialogActID;
  swift_beginAccess();
  sub_1C051F9D4(v7, v16 + v21, &qword_1EBE16B68, &qword_1C096E108);
  return swift_endAccess();
}

uint64_t Com_Apple_Siri_Product_Proto_PromptContext.systemDialogActID.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B68, &qword_1C096E108);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v19 - v6;
  v8 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v9 = *(v1 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v1 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
    v13 = *(v12 + 48);
    v14 = *(v12 + 52);
    swift_allocObject();
    v15 = sub_1C051EF2C(v11);

    *(v2 + v8) = v15;
    v11 = v15;
  }

  sub_1C055396C(a1, v7, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
  v17 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__systemDialogActID;
  swift_beginAccess();
  sub_1C051F9D4(v7, v11 + v17, &qword_1EBE16B68, &qword_1C096E108);
  return swift_endAccess();
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.systemDialogActID.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B68, &qword_1C096E108) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__systemDialogActID;
  swift_beginAccess();
  sub_1C05149F8(v16 + v17, v8, &qword_1EBE16B68, &qword_1C096E108);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    v19 = v14 + *(v9 + 24);
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    if (v18(v8, 1, v9) != 1)
    {
      sub_1C05145B4(v8, &qword_1EBE16B68, &qword_1C096E108);
    }
  }

  else
  {
    sub_1C055396C(v8, v14, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  }

  return sub_1C054EAC8;
}

void sub_1C054EAF8(uint64_t *a1, char a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  v8 = *a1;
  v9 = *(*a1 + 128);
  if (a2)
  {
    v10 = *(v8 + 72);
    sub_1C05539D4(*(v8 + 120), *(v8 + 112), a3);
    v11 = *(v10 + v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = *(v8 + 128);
      v15 = *(v8 + 72);
      v16 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
      v17 = *(v16 + 48);
      v18 = *(v16 + 52);
      swift_allocObject();
      v19 = sub_1C051EF2C(v13);

      *(v15 + v14) = v19;
      v13 = v19;
    }

    v21 = *(v8 + 112);
    v20 = *(v8 + 120);
    v22 = *(v8 + 96);
    v23 = *(v8 + 104);
    v25 = *(v8 + 80);
    v24 = *(v8 + 88);
    sub_1C055396C(v21, v25, a3);
    (*(v23 + 56))(v25, 0, 1, v22);
    v26 = *a4;
    swift_beginAccess();
    sub_1C051F9D4(v25, v13 + v26, a5, a6);
    swift_endAccess();
    sub_1C0553A3C(v20, a3);
  }

  else
  {
    v27 = *(v8 + 72);
    v28 = *(v27 + v9);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v27 + v9);
    if ((v29 & 1) == 0)
    {
      v31 = *(v8 + 128);
      v32 = *(v8 + 72);
      v33 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
      v34 = *(v33 + 48);
      v35 = *(v33 + 52);
      swift_allocObject();
      v36 = sub_1C051EF2C(v30);

      *(v32 + v31) = v36;
      v30 = v36;
    }

    v21 = *(v8 + 112);
    v20 = *(v8 + 120);
    v37 = *(v8 + 96);
    v38 = *(v8 + 104);
    v25 = *(v8 + 80);
    v24 = *(v8 + 88);
    sub_1C055396C(v20, v25, a3);
    (*(v38 + 56))(v25, 0, 1, v37);
    v39 = *a4;
    swift_beginAccess();
    sub_1C051F9D4(v25, v30 + v39, a5, a6);
    swift_endAccess();
  }

  free(v20);
  free(v21);
  free(v24);
  free(v25);

  free(v8);
}

void (*Com_Apple_Siri_Product_Proto_PromptContext.usePlaceholderTaskVerb.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 72) = v1;
  v5 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  *(v4 + 80) = v5;
  v6 = *(v1 + v5);
  v7 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__usePlaceholderTaskVerb;
  swift_beginAccess();
  *(v4 + 84) = *(v6 + v7);
  return sub_1C054EE3C;
}

uint64_t _s12SiriOntology010Com_Apple_A26_Product_Proto_DisplayHintV13unknownFields0aB8Protobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C095D38C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s12SiriOntology010Com_Apple_A26_Product_Proto_DisplayHintV13unknownFields0aB8Protobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_1C095D38C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Com_Apple_Siri_Product_Proto_DisplayHint.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C054F02C();
    }

    else if (result == 2)
    {
      sub_1C054F0E0();
    }
  }

  return result;
}

uint64_t sub_1C054F02C()
{
  v0 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0) + 20);
  type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  sub_1C051FAFC(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  return sub_1C095D55C();
}

uint64_t sub_1C054F0E0()
{
  v0 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0) + 24);
  type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  sub_1C051FAFC(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  return sub_1C095D55C();
}

uint64_t Com_Apple_Siri_Product_Proto_DisplayHint.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v29 = a1;
  v30 = a3;
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v26 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0);
  v19 = *(v18 + 20);
  v27 = v3;
  sub_1C05149F8(v3 + v19, v10, &qword_1EBE16B50, &unk_1C096E0F0);
  v20 = *(v12 + 48);
  if (v20(v10, 1, v11) == 1)
  {
    sub_1C05145B4(v10, &qword_1EBE16B50, &unk_1C096E0F0);
  }

  else
  {
    sub_1C055396C(v10, v17, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    sub_1C051FAFC(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    v21 = v31;
    sub_1C095D6AC();
    result = sub_1C0553A3C(v17, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    if (v21)
    {
      return result;
    }

    v31 = 0;
  }

  sub_1C05149F8(v27 + *(v18 + 24), v8, &qword_1EBE16B50, &unk_1C096E0F0);
  if (v20(v8, 1, v11) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE16B50, &unk_1C096E0F0);
  }

  else
  {
    v23 = v26;
    sub_1C055396C(v8, v26, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    sub_1C051FAFC(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    v24 = v31;
    sub_1C095D6AC();
    result = sub_1C0553A3C(v23, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    if (v24)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C054F56C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 20);
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1C054F690(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C051FAFC(&qword_1EBE16BF8, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C054F730(uint64_t a1)
{
  v2 = sub_1C051FAFC(&unk_1EBE15238, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C054F79C()
{
  sub_1C051FAFC(&unk_1EBE15238, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);

  return sub_1C095D5AC();
}

uint64_t sub_1C054F838()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE16B20);
  __swift_project_value_buffer(v0, qword_1EBE16B20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0C0;
  v5 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v5 = "hasHomeSignal";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  (*(*(v7 - 8) + 104))(v5, v6, v7);
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_AssistantSignalState.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C095D44C();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_AssistantSignalState.traverse<A>(visitor:)()
{
  if (*v0 != 1 || (result = sub_1C095D5FC(), !v1))
  {
    v3 = &v0[*(type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0) + 20)];
    return sub_1C095D36C();
  }

  return result;
}

uint64_t static Com_Apple_Siri_Product_Proto_AssistantSignalState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0) + 20);
  sub_1C095D38C();
  sub_1C051FAFC(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C054FBC4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v2 = &a2[*(a1 + 20)];
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C054FC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C054FC78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 20);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C054FCEC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 20);
  return result;
}

uint64_t sub_1C054FD40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C051FAFC(&qword_1EBE16BF0, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C054FDE0(uint64_t a1)
{
  v2 = sub_1C051FAFC(&qword_1EBE16BA8, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C054FE4C()
{
  sub_1C051FAFC(&qword_1EBE16BA8, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);

  return sub_1C095D5AC();
}

uint64_t sub_1C054FEC8(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a3 + 20);
  sub_1C095D38C();
  sub_1C051FAFC(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C054FFA8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v7, a2);
  __swift_project_value_buffer(v7, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v8 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v9 = *(*v8 + 72);
  v10 = (*(*v8 + 80) + 32) & ~*(*v8 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C096E0D0;
  v12 = (v11 + v10);
  v13 = v11 + v10 + v8[14];
  *v12 = 1;
  *v13 = a3;
  *(v13 + 8) = 7;
  *(v13 + 16) = 2;
  v14 = *MEMORY[0x1E69D26E0];
  v15 = sub_1C095D6BC();
  v16 = *(*(v15 - 8) + 104);
  (v16)(v13, v14, v15);
  v17 = v12 + v9 + v8[14];
  *(v12 + v9) = 2;
  *v17 = a4;
  *(v17 + 1) = a5;
  v17[16] = 2;
  v16();
  return sub_1C095D6CC();
}

uint64_t Com_Apple_Siri_Product_Proto_Uuid.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1C095D4AC();
    }
  }

  return result;
}

uint64_t Com_Apple_Siri_Product_Proto_Uuid.traverse<A>(visitor:)()
{
  if (!*v0 || (result = sub_1C095D63C(), !v1))
  {
    if (!v0[1] || (result = sub_1C095D63C(), !v1))
    {
      v3 = v0 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0) + 24);
      return sub_1C095D36C();
    }
  }

  return result;
}

uint64_t static Com_Apple_Siri_Product_Proto_Uuid.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0) + 24);
  sub_1C095D38C();
  sub_1C051FAFC(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C05503AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  v2 = a2 + *(a1 + 24);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C05503EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0550460(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_1C05504D4(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t sub_1C0550528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C051FAFC(&qword_1EBE16BE8, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05505C8(uint64_t a1)
{
  v2 = sub_1C051FAFC(&qword_1EBE16BC0, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0550634()
{
  sub_1C051FAFC(&qword_1EBE16BC0, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);

  return sub_1C095D5AC();
}

uint64_t sub_1C05506B0(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v3 = *(a3 + 24);
  sub_1C095D38C();
  sub_1C051FAFC(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C055077C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1ED5BD9C8);
  __swift_project_value_buffer(v0, qword_1ED5BD9C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_1C096E0E0;
  v4 = v47 + v3;
  v5 = v47 + v3 + v1[14];
  *(v47 + v3) = 1;
  *v5 = "dictationPrompt";
  *(v5 + 8) = 15;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "strictPrompt";
  *(v9 + 8) = 12;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ambiguityTarget";
  *(v11 + 1) = 15;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "responseOptions";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "domainHints";
  *(v15 + 1) = 11;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "promptTargetHints";
  *(v17 + 1) = 17;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "displayHints";
  *(v19 + 1) = 12;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "foregroundAppSubscribesToInAppSearch";
  *(v21 + 1) = 36;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "objectDisambiguation";
  *(v22 + 8) = 20;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "alertDomainHints";
  *(v24 + 1) = 16;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "backgroundDomainHints";
  *(v26 + 1) = 21;
  v26[16] = 2;
  v8();
  v27 = (v4 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 12;
  *v28 = "previousDomainName";
  *(v28 + 1) = 18;
  v28[16] = 2;
  v8();
  v29 = (v4 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 13;
  *v30 = "previousNLDomainName";
  *(v30 + 1) = 20;
  v30[16] = 2;
  v8();
  v31 = (v4 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 14;
  *v32 = "listenAfterSpeaking";
  *(v32 + 1) = 19;
  v32[16] = 2;
  v8();
  v33 = (v4 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 15;
  *v34 = "assistantSignalState";
  *(v34 + 1) = 20;
  v34[16] = 2;
  v8();
  v35 = (v4 + 15 * v2);
  v36 = v35 + v1[14];
  *v35 = 16;
  *v36 = "overridePromptingOnSpeechFailure";
  *(v36 + 1) = 32;
  v36[16] = 2;
  v8();
  v37 = v4 + 16 * v2 + v1[14];
  *(v4 + 16 * v2) = 17;
  *v37 = "disableAutoPunctuation";
  *(v37 + 8) = 22;
  *(v37 + 16) = 2;
  v8();
  v38 = (v4 + 17 * v2);
  v39 = v38 + v1[14];
  *v38 = 18;
  *v39 = "currentTaskVerb";
  *(v39 + 1) = 15;
  v39[16] = 2;
  v8();
  v40 = (v4 + 18 * v2);
  v41 = v40 + v1[14];
  *v40 = 19;
  *v41 = "taskId";
  *(v41 + 1) = 6;
  v41[16] = 2;
  v8();
  v42 = (v4 + 19 * v2);
  v43 = v42 + v1[14];
  *v42 = 20;
  *v43 = "systemDialogActId";
  *(v43 + 1) = 17;
  v43[16] = 2;
  v8();
  v44 = (v4 + 20 * v2);
  v45 = v44 + v1[14];
  *v44 = 21;
  *v45 = "usePlaceholderTaskVerb";
  *(v45 + 1) = 22;
  v45[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C0550DFC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1C095D6EC();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t sub_1C0550E94()
{
  v0 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_1C0550ED4();
  qword_1ED5BDDC0 = result;
  return result;
}

uint64_t sub_1C0550ED4()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
  v2 = sub_1C095D26C();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__responseOptions) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__domainHints) = v3;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__promptTargetHints) = v3;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__displayHints) = v3;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__foregroundAppSubscribesToInAppSearch) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__objectDisambiguation) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__alertDomainHints) = v3;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__backgroundDomainHints) = v3;
  v4 = (v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousDomainName);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = (v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousNldomainName);
  *v5 = 0;
  v5[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__listenAfterSpeaking) = 0;
  v6 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__assistantSignalState;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__overridePromptingOnSpeechFailure) = 0;
  *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__disableAutoPunctuation) = 0;
  v8 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__currentTaskVerb;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  (*(*(v9 - 8) + 56))(v0 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__taskID;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  v12 = *(*(v11 - 8) + 56);
  v12(v0 + v10, 1, 1, v11);
  v12(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__systemDialogActID, 1, 1, v11);
  *(v0 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__usePlaceholderTaskVerb) = 0;
  return v0;
}

uint64_t sub_1C055110C()
{
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C0551190()
{
  swift_beginAccess();
  sub_1C095D26C();
  sub_1C051FAFC(&qword_1EBE16C28, MEMORY[0x1E69D2638]);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C055126C()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0);
  sub_1C051FAFC(&unk_1EBE15238, type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint);
  sub_1C095D54C();
  return swift_endAccess();
}

uint64_t sub_1C0551348()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0);
  sub_1C051FAFC(&qword_1EBE16BA8, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0551424()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  sub_1C051FAFC(&qword_1EBE15188, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0551500()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  sub_1C051FAFC(&qword_1EBE16BC0, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05515DC()
{
  swift_beginAccess();
  type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  sub_1C051FAFC(&qword_1EBE16BC0, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C05516B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a5;
  swift_beginAccess();
  sub_1C095D44C();
  return swift_endAccess();
}

uint64_t sub_1C0551744(uint64_t a1, uint64_t a2)
{
  v191 = type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid(0);
  v184 = *(v191 - 8);
  v4 = *(v184 + 64);
  v5 = MEMORY[0x1EEE9AC00](v191);
  v179 = (&v177 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v182 = (&v177 - v7);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C00, &unk_1C096E800);
  v8 = *(*(v185 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v185);
  v11 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v192 = &v177 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B68, &qword_1C096E108);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v180 = (&v177 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v15);
  v181 = &v177 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v186 = (&v177 - v20);
  MEMORY[0x1EEE9AC00](v19);
  v187 = &v177 - v21;
  v194 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v190 = *(v194 - 8);
  v22 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v194);
  v183 = &v177 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C08, &unk_1C0970520);
  v24 = *(*(v188 - 8) + 64);
  MEMORY[0x1EEE9AC00](v188);
  v195 = &v177 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v189 = &v177 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v193 = &v177 - v30;
  v31 = type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState(0);
  v198 = *(v31 - 8);
  v199 = v31;
  v32 = *(v198 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v196 = &v177 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C10, &unk_1C096E810);
  v34 = *(*(v197 - 8) + 64);
  MEMORY[0x1EEE9AC00](v197);
  v201 = &v177 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B60, &qword_1C096E100);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v200 = &v177 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v202 = &v177 - v40;
  v41 = sub_1C095D26C();
  v205 = *(v41 - 8);
  v42 = *(v205 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v203 = &v177 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C18, &unk_1C0970490);
  v45 = *(*(v44 - 8) + 64);
  MEMORY[0x1EEE9AC00](v44);
  v47 = &v177 - v46;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v49 = *(*(v48 - 8) + 64);
  v50 = MEMORY[0x1EEE9AC00](v48 - 8);
  v52 = &v177 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v50);
  v54 = &v177 - v53;
  swift_beginAccess();
  v55 = *(a1 + 16);
  swift_beginAccess();
  if (v55 != *(a2 + 16))
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  v56 = *(a1 + 17);
  swift_beginAccess();
  if (v56 != *(a2 + 17))
  {
    goto LABEL_26;
  }

  v178 = v11;
  v204 = a2;
  v57 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
  swift_beginAccess();
  v58 = a1;
  sub_1C05149F8(a1 + v57, v54, &qword_1EBE16B58, &unk_1C099B6A0);
  v59 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__ambiguityTarget;
  swift_beginAccess();
  v60 = *(v44 + 48);
  sub_1C05149F8(v54, v47, &qword_1EBE16B58, &unk_1C099B6A0);
  v61 = v204 + v59;
  v62 = v204;
  sub_1C05149F8(v61, &v47[v60], &qword_1EBE16B58, &unk_1C099B6A0);
  v63 = *(v205 + 48);
  if (v63(v47, 1, v41) == 1)
  {

    sub_1C05145B4(v54, &qword_1EBE16B58, &unk_1C099B6A0);
    if (v63(&v47[v60], 1, v41) == 1)
    {
      sub_1C05145B4(v47, &qword_1EBE16B58, &unk_1C099B6A0);
      goto LABEL_10;
    }

LABEL_8:
    sub_1C05145B4(v47, &qword_1EBE16C18, &unk_1C0970490);
    goto LABEL_25;
  }

  sub_1C05149F8(v47, v52, &qword_1EBE16B58, &unk_1C099B6A0);
  if (v63(&v47[v60], 1, v41) == 1)
  {

    sub_1C05145B4(v54, &qword_1EBE16B58, &unk_1C099B6A0);
    (*(v205 + 8))(v52, v41);
    goto LABEL_8;
  }

  v64 = v205;
  v65 = &v47[v60];
  v66 = v203;
  (*(v205 + 32))(v203, v65, v41);
  sub_1C051FAFC(&qword_1EBE16C20, MEMORY[0x1E69D2638]);

  v67 = sub_1C095D73C();
  v68 = *(v64 + 8);
  v68(v66, v41);
  sub_1C05145B4(v54, &qword_1EBE16B58, &unk_1C099B6A0);
  v68(v52, v41);
  v62 = v204;
  sub_1C05145B4(v47, &qword_1EBE16B58, &unk_1C099B6A0);
  if ((v67 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_10:
  v69 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__responseOptions;
  swift_beginAccess();
  v70 = *(v58 + v69);
  v71 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__responseOptions;
  swift_beginAccess();
  v72 = *(v62 + v71);

  v73 = sub_1C0562A48(v70, v72);

  if ((v73 & 1) == 0)
  {
    goto LABEL_25;
  }

  v74 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__domainHints;
  swift_beginAccess();
  v75 = *(v58 + v74);
  v76 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__domainHints;
  swift_beginAccess();
  if ((sub_1C055B098(v75, *(v62 + v76)) & 1) == 0)
  {
    goto LABEL_25;
  }

  v77 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__promptTargetHints;
  swift_beginAccess();
  v78 = *(v58 + v77);
  v79 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__promptTargetHints;
  swift_beginAccess();
  if ((sub_1C055B098(v78, *(v62 + v79)) & 1) == 0)
  {
    goto LABEL_25;
  }

  v80 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__displayHints;
  swift_beginAccess();
  v81 = *(v58 + v80);
  v82 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__displayHints;
  swift_beginAccess();
  v83 = *(v62 + v82);

  v84 = sub_1C0562D6C(v81, v83);

  if ((v84 & 1) == 0)
  {
    goto LABEL_25;
  }

  v85 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__foregroundAppSubscribesToInAppSearch;
  swift_beginAccess();
  LODWORD(v85) = *(v58 + v85);
  v86 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__foregroundAppSubscribesToInAppSearch;
  swift_beginAccess();
  if (v85 != *(v62 + v86))
  {
    goto LABEL_25;
  }

  v87 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__objectDisambiguation;
  swift_beginAccess();
  LODWORD(v87) = *(v58 + v87);
  v88 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__objectDisambiguation;
  swift_beginAccess();
  if (v87 != *(v62 + v88))
  {
    goto LABEL_25;
  }

  v89 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__alertDomainHints;
  swift_beginAccess();
  v90 = *(v58 + v89);
  v91 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__alertDomainHints;
  swift_beginAccess();
  if ((sub_1C055B098(v90, *(v62 + v91)) & 1) == 0)
  {
    goto LABEL_25;
  }

  v92 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__backgroundDomainHints;
  swift_beginAccess();
  v93 = *(v58 + v92);
  v94 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__backgroundDomainHints;
  swift_beginAccess();
  if ((sub_1C055B098(v93, *(v62 + v94)) & 1) == 0)
  {
    goto LABEL_25;
  }

  v95 = (v58 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousDomainName);
  swift_beginAccess();
  v96 = *v95;
  v97 = v95[1];
  v98 = (v204 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousDomainName);
  swift_beginAccess();
  if ((v96 != *v98 || v97 != v98[1]) && (sub_1C095DF3C() & 1) == 0)
  {
    goto LABEL_25;
  }

  v99 = (v58 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousNldomainName);
  swift_beginAccess();
  v100 = *v99;
  v101 = v99[1];
  v102 = v204;
  v103 = (v204 + OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__previousNldomainName);
  swift_beginAccess();
  if ((v100 != *v103 || v101 != v103[1]) && (sub_1C095DF3C() & 1) == 0)
  {
    goto LABEL_25;
  }

  v104 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__listenAfterSpeaking;
  swift_beginAccess();
  LODWORD(v104) = *(v58 + v104);
  v105 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__listenAfterSpeaking;
  swift_beginAccess();
  if (v104 != *(v102 + v105))
  {
    goto LABEL_25;
  }

  v108 = v102;
  v109 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__assistantSignalState;
  swift_beginAccess();
  v110 = v202;
  sub_1C05149F8(v58 + v109, v202, &qword_1EBE16B60, &qword_1C096E100);
  v111 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__assistantSignalState;
  swift_beginAccess();
  v112 = *(v197 + 48);
  v113 = v110;
  v114 = v201;
  sub_1C05149F8(v113, v201, &qword_1EBE16B60, &qword_1C096E100);
  sub_1C05149F8(v108 + v111, v114 + v112, &qword_1EBE16B60, &qword_1C096E100);
  v115 = v199;
  v116 = *(v198 + 48);
  if (v116(v114, 1, v199) == 1)
  {
    sub_1C05145B4(v202, &qword_1EBE16B60, &qword_1C096E100);
    if (v116(v114 + v112, 1, v115) == 1)
    {
      sub_1C05145B4(v114, &qword_1EBE16B60, &qword_1C096E100);
      goto LABEL_31;
    }

LABEL_38:
    v131 = &qword_1EBE16C10;
    v132 = &unk_1C096E810;
    v133 = v114;
LABEL_66:
    sub_1C05145B4(v133, v131, v132);
    goto LABEL_25;
  }

  sub_1C05149F8(v114, v200, &qword_1EBE16B60, &qword_1C096E100);
  if (v116(v114 + v112, 1, v115) == 1)
  {
    sub_1C05145B4(v202, &qword_1EBE16B60, &qword_1C096E100);
    sub_1C0553A3C(v200, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
    v114 = v201;
    goto LABEL_38;
  }

  v134 = v196;
  sub_1C055396C(v201 + v112, v196, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
  if (*v200 != *v134)
  {
    sub_1C0553A3C(v196, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
    v135 = &qword_1EBE16B60;
    v136 = &qword_1C096E100;
    sub_1C05145B4(v202, &qword_1EBE16B60, &qword_1C096E100);
    sub_1C0553A3C(v200, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
    v133 = v201;
LABEL_41:
    v131 = v135;
    v132 = v136;
    goto LABEL_66;
  }

  v137 = *(v199 + 20);
  sub_1C095D38C();
  sub_1C051FAFC(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v138 = v200;
  v139 = v196;
  v140 = sub_1C095D73C();
  sub_1C0553A3C(v139, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
  sub_1C05145B4(v202, &qword_1EBE16B60, &qword_1C096E100);
  sub_1C0553A3C(v138, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
  sub_1C05145B4(v201, &qword_1EBE16B60, &qword_1C096E100);
  if ((v140 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_31:
  v117 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__overridePromptingOnSpeechFailure;
  swift_beginAccess();
  LODWORD(v117) = *(v58 + v117);
  v118 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__overridePromptingOnSpeechFailure;
  v119 = v204;
  swift_beginAccess();
  if (v117 != *(v119 + v118))
  {
    goto LABEL_25;
  }

  v120 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__disableAutoPunctuation;
  swift_beginAccess();
  LODWORD(v120) = *(v58 + v120);
  v121 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__disableAutoPunctuation;
  v122 = v204;
  swift_beginAccess();
  if (v120 != *(v122 + v121))
  {
    goto LABEL_25;
  }

  v123 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__currentTaskVerb;
  swift_beginAccess();
  v124 = v193;
  sub_1C05149F8(v58 + v123, v193, &qword_1EBE16B50, &unk_1C096E0F0);
  v125 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__currentTaskVerb;
  v126 = v204;
  swift_beginAccess();
  v127 = *(v188 + 48);
  v128 = v124;
  v129 = v195;
  sub_1C05149F8(v128, v195, &qword_1EBE16B50, &unk_1C096E0F0);
  sub_1C05149F8(v126 + v125, v129 + v127, &qword_1EBE16B50, &unk_1C096E0F0);
  v130 = *(v190 + 48);
  if (v130(v129, 1, v194) == 1)
  {
    sub_1C05145B4(v193, &qword_1EBE16B50, &unk_1C096E0F0);
    if (v130(v195 + v127, 1, v194) == 1)
    {
      sub_1C05145B4(v195, &qword_1EBE16B50, &unk_1C096E0F0);
      goto LABEL_48;
    }

LABEL_46:
    v131 = &qword_1EBE16C08;
    v132 = &unk_1C0970520;
    v133 = v195;
    goto LABEL_66;
  }

  v141 = v195;
  sub_1C05149F8(v195, v189, &qword_1EBE16B50, &unk_1C096E0F0);
  if (v130(v141 + v127, 1, v194) == 1)
  {
    sub_1C05145B4(v193, &qword_1EBE16B50, &unk_1C096E0F0);
    sub_1C0553A3C(v189, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    goto LABEL_46;
  }

  v142 = v195;
  v143 = v195 + v127;
  v144 = v183;
  sub_1C055396C(v143, v183, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v145 = v189;
  v146 = static Com_Apple_Siri_Product_Proto_SemanticValue.== infix(_:_:)(v189, v144);
  sub_1C0553A3C(v144, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C05145B4(v193, &qword_1EBE16B50, &unk_1C096E0F0);
  sub_1C0553A3C(v145, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C05145B4(v142, &qword_1EBE16B50, &unk_1C096E0F0);
  if ((v146 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_48:
  v147 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__taskID;
  swift_beginAccess();
  v148 = v187;
  sub_1C05149F8(v58 + v147, v187, &qword_1EBE16B68, &qword_1C096E108);
  v149 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__taskID;
  v150 = v204;
  swift_beginAccess();
  v151 = *(v185 + 48);
  v152 = v148;
  v153 = v192;
  sub_1C05149F8(v152, v192, &qword_1EBE16B68, &qword_1C096E108);
  sub_1C05149F8(v150 + v149, v153 + v151, &qword_1EBE16B68, &qword_1C096E108);
  v154 = *(v184 + 48);
  if (v154(v153, 1, v191) == 1)
  {
    sub_1C05145B4(v187, &qword_1EBE16B68, &qword_1C096E108);
    if (v154(v192 + v151, 1, v191) == 1)
    {
      sub_1C05145B4(v192, &qword_1EBE16B68, &qword_1C096E108);
      goto LABEL_51;
    }

LABEL_57:
    v131 = &qword_1EBE16C00;
    v132 = &unk_1C096E800;
    v133 = v192;
    goto LABEL_66;
  }

  v165 = v192;
  sub_1C05149F8(v192, v186, &qword_1EBE16B68, &qword_1C096E108);
  if (v154(v165 + v151, 1, v191) == 1)
  {
    sub_1C05145B4(v187, &qword_1EBE16B68, &qword_1C096E108);
    sub_1C0553A3C(v186, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
    goto LABEL_57;
  }

  v166 = v182;
  sub_1C055396C(v192 + v151, v182, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  if (*v186 != *v166 || v186[1] != v182[1])
  {
    sub_1C0553A3C(v182, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
    v135 = &qword_1EBE16B68;
    v136 = &qword_1C096E108;
    sub_1C05145B4(v187, &qword_1EBE16B68, &qword_1C096E108);
    sub_1C0553A3C(v186, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
    v133 = v192;
    goto LABEL_41;
  }

  v167 = *(v191 + 24);
  sub_1C095D38C();
  sub_1C051FAFC(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v168 = v186;
  v169 = v182;
  v170 = sub_1C095D73C();
  sub_1C0553A3C(v169, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  sub_1C05145B4(v187, &qword_1EBE16B68, &qword_1C096E108);
  sub_1C0553A3C(v168, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  sub_1C05145B4(v192, &qword_1EBE16B68, &qword_1C096E108);
  if ((v170 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_51:
  v155 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__systemDialogActID;
  swift_beginAccess();
  v156 = v181;
  sub_1C05149F8(v58 + v155, v181, &qword_1EBE16B68, &qword_1C096E108);
  v157 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__systemDialogActID;
  v158 = v204;
  swift_beginAccess();
  v159 = *(v185 + 48);
  v160 = v156;
  v161 = v178;
  sub_1C05149F8(v160, v178, &qword_1EBE16B68, &qword_1C096E108);
  sub_1C05149F8(v158 + v157, v161 + v159, &qword_1EBE16B68, &qword_1C096E108);
  if (v154(v161, 1, v191) == 1)
  {
    sub_1C05145B4(v181, &qword_1EBE16B68, &qword_1C096E108);
    if (v154(&v178[v159], 1, v191) == 1)
    {
      sub_1C05145B4(v178, &qword_1EBE16B68, &qword_1C096E108);
LABEL_54:
      v162 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__usePlaceholderTaskVerb;
      swift_beginAccess();
      LOBYTE(v162) = *(v58 + v162);

      v163 = OBJC_IVAR____TtCV12SiriOntology42Com_Apple_Siri_Product_Proto_PromptContextP33_F2EBD59D06BFCF934A5518689A06A10D13_StorageClass__usePlaceholderTaskVerb;
      v164 = v204;
      swift_beginAccess();
      LOBYTE(v163) = *(v164 + v163);

      v106 = v162 ^ v163 ^ 1;
      return v106 & 1;
    }

    goto LABEL_65;
  }

  v171 = v178;
  sub_1C05149F8(v178, v180, &qword_1EBE16B68, &qword_1C096E108);
  if (v154(v171 + v159, 1, v191) == 1)
  {
    sub_1C05145B4(v181, &qword_1EBE16B68, &qword_1C096E108);
    sub_1C0553A3C(v180, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
LABEL_65:
    v131 = &qword_1EBE16C00;
    v132 = &unk_1C096E800;
    v133 = v178;
    goto LABEL_66;
  }

  v172 = v179;
  sub_1C055396C(&v178[v159], v179, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  if (*v180 != *v172 || v180[1] != v179[1])
  {
    sub_1C0553A3C(v179, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
    v135 = &qword_1EBE16B68;
    v136 = &qword_1C096E108;
    sub_1C05145B4(v181, &qword_1EBE16B68, &qword_1C096E108);
    sub_1C0553A3C(v180, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
    v133 = v178;
    goto LABEL_41;
  }

  v173 = *(v191 + 24);
  sub_1C095D38C();
  sub_1C051FAFC(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  v174 = v179;
  v175 = v180;
  v176 = sub_1C095D73C();
  sub_1C0553A3C(v174, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  sub_1C05145B4(v181, &qword_1EBE16B68, &qword_1C096E108);
  sub_1C0553A3C(v175, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
  sub_1C05145B4(v178, &qword_1EBE16B68, &qword_1C096E108);
  if (v176)
  {
    goto LABEL_54;
  }

LABEL_25:

LABEL_26:
  v106 = 0;
  return v106 & 1;
}

uint64_t sub_1C05530A0(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1C095DFEC();
  a1(0);
  sub_1C051FAFC(a2, a3);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C0553144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C051FAFC(&qword_1EBE16BE0, type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C05531C0(uint64_t a1)
{
  v2 = sub_1C051FAFC(&qword_1EBE16BD0, type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C055322C()
{
  sub_1C095DFEC();
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C0553284()
{
  sub_1C051FAFC(&qword_1EBE16BD0, type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext);

  return sub_1C095D5AC();
}

uint64_t sub_1C0553300()
{
  sub_1C095DFEC();
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t _s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {
    v7 = *(a1 + v4);

    v8 = sub_1C0551744(v5, v6);

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C095D38C();
  sub_1C051FAFC(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology010Com_Apple_A26_Product_Proto_DisplayHintV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v35 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v34 = (&v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v34 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C08, &unk_1C0970520);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v37 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  v36 = type metadata accessor for Com_Apple_Siri_Product_Proto_DisplayHint(0);
  v20 = *(v36 + 20);
  v21 = *(v14 + 48);
  v38 = a1;
  sub_1C05149F8(a1 + v20, v19, &qword_1EBE16B50, &unk_1C096E0F0);
  v39 = a2;
  sub_1C05149F8(a2 + v20, &v19[v21], &qword_1EBE16B50, &unk_1C096E0F0);
  v22 = *(v5 + 48);
  if (v22(v19, 1, v4) != 1)
  {
    sub_1C05149F8(v19, v13, &qword_1EBE16B50, &unk_1C096E0F0);
    if (v22(&v19[v21], 1, v4) != 1)
    {
      v24 = v35;
      sub_1C055396C(&v19[v21], v35, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      v25 = _s12SiriOntology010Com_Apple_A28_Product_Proto_SemanticValueV2eeoiySbAC_ACtFZ_0(v13, v24);
      sub_1C0553A3C(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C0553A3C(v13, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C05145B4(v19, &qword_1EBE16B50, &unk_1C096E0F0);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1C0553A3C(v13, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_6:
    v23 = v19;
LABEL_14:
    sub_1C05145B4(v23, &qword_1EBE16C08, &unk_1C0970520);
    goto LABEL_15;
  }

  if (v22(&v19[v21], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C05145B4(v19, &qword_1EBE16B50, &unk_1C096E0F0);
LABEL_8:
  v26 = v37;
  v27 = *(v36 + 24);
  v28 = *(v14 + 48);
  sub_1C05149F8(v38 + v27, v37, &qword_1EBE16B50, &unk_1C096E0F0);
  sub_1C05149F8(v39 + v27, v26 + v28, &qword_1EBE16B50, &unk_1C096E0F0);
  if (v22(v26, 1, v4) == 1)
  {
    if (v22((v26 + v28), 1, v4) == 1)
    {
      sub_1C05145B4(v26, &qword_1EBE16B50, &unk_1C096E0F0);
LABEL_18:
      sub_1C095D38C();
      sub_1C051FAFC(&qword_1EBE16B78, MEMORY[0x1E69D26B8]);
      v30 = sub_1C095D73C();
      return v30 & 1;
    }

    goto LABEL_13;
  }

  v29 = v34;
  sub_1C05149F8(v26, v34, &qword_1EBE16B50, &unk_1C096E0F0);
  if (v22((v26 + v28), 1, v4) == 1)
  {
    sub_1C0553A3C(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
LABEL_13:
    v23 = v26;
    goto LABEL_14;
  }

  v32 = v35;
  sub_1C055396C(v26 + v28, v35, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  v33 = _s12SiriOntology010Com_Apple_A28_Product_Proto_SemanticValueV2eeoiySbAC_ACtFZ_0(v29, v32);
  sub_1C0553A3C(v32, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C0553A3C(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
  sub_1C05145B4(v26, &qword_1EBE16B50, &unk_1C096E0F0);
  if (v33)
  {
    goto LABEL_18;
  }

LABEL_15:
  v30 = 0;
  return v30 & 1;
}

uint64_t sub_1C055396C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C05539D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C0553A3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t keypath_get_31Tm@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext(0) + 20));
  v6 = *a2;
  result = swift_beginAccess();
  *a3 = *(v5 + v6);
  return result;
}

void sub_1C0553FAC()
{
  sub_1C095D38C();
  if (v0 <= 0x3F)
  {
    sub_1C05543BC(319, qword_1ED5BD8D0, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C055404C()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C05540C8()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1C0554144()
{
  result = sub_1C095D38C();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C05541D0()
{
  sub_1C05543BC(319, &qword_1ED5BCFF8, MEMORY[0x1E69D2638]);
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    sub_1C05543BC(319, qword_1ED5BD838, type metadata accessor for Com_Apple_Siri_Product_Proto_AssistantSignalState);
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1C05543BC(319, qword_1ED5BD8D0, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1C05543BC(319, qword_1ED5BDE38, type metadata accessor for Com_Apple_Siri_Product_Proto_Uuid);
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1C05543BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C095DB0C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1C0554498(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v15 = *(a4 + 8);
  v15(&v16, v9, a4);

  v20 = a1;
  sub_1C095DC6C();

  sub_1C095D70C();

  if (v22)
  {
    sub_1C06FBB24(v21, v22, a2, a3, &v16);

    v10 = v18;
    if (v18)
    {
      v11 = v19;
      __swift_project_boxed_opaque_existential_1(&v16, v18);
      v10 = (*(v11 + 24))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(&v16);
    }

    else
    {
      sub_1C05145B4(&v16, &qword_1EBE16C40, &qword_1C09932B0);
    }

    return v10;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1C095DC1C();
    v21 = v16;
    v22 = v17;
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    v16 = a1;
    v13 = *(v8 + *MEMORY[0x1E69E77B0] + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v15(&v16, v9, a4);
    v14 = v18;

    v20 = v14;
    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C05547B0(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *a1;
  v11 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v12 = *(a6 + 8);
  v12(&v39, v11, a6);

  *&v30 = a1;
  sub_1C095DC6C();

  sub_1C095D70C();

  v13 = v38;
  if (v38)
  {
    v14 = v37;
    if (a3)
    {
      v15 = qword_1ED5D7CA0;

      if (v15 != -1)
      {
        swift_once();
      }

      v16 = xmmword_1ED5D7CA8;
      v17 = xmmword_1ED5D7CB8;
      v18 = qword_1ED5D7CC8;

      v30 = v16;
      v31 = v17;
      *&v32 = v18;
      *(&v32 + 1) = a2;
      v33 = a3;
      LOBYTE(v34) = 1;
      *(&v34 + 1) = MEMORY[0x1E69E7CC0];
      *&v35 = MEMORY[0x1E69E7CC0];
      *(&v35 + 1) = MEMORY[0x1E69E7CC0];
      v36 = MEMORY[0x1E69E7CC0];
      if (*(&v16 + 1))
      {
        v19 = swift_allocObject();
        *(v19 + 16) = v16;
        v20 = v34;
        *(v19 + 64) = v33;
        *(v19 + 80) = v20;
        *(v19 + 96) = v35;
        *(v19 + 112) = v36;
        v21 = v32;
        *(v19 + 32) = v31;
        *(v19 + 48) = v21;
        v22 = &off_1F3FA1508;
        v23 = &type metadata for BuilderNode;
LABEL_9:
        v29[0] = v19;
        v29[3] = v23;
        v29[4] = v22;
        sub_1C05583F8(&v30, v28);
        sub_1C06FBBE8(v29, v14, v13, a4, a5);
        sub_1C05145B4(&v30, &qword_1EBE16C48, &qword_1C096E828);

        return sub_1C05145B4(v29, &qword_1EBE16C40, &qword_1C09932B0);
      }
    }

    else
    {
      v36 = 0;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v30 = 0u;
      v31 = 0u;
    }

    v19 = 0;
    v23 = 0;
    v22 = 0;
    v29[1] = 0;
    v29[2] = 0;
    goto LABEL_9;
  }

  *&v30 = 0;
  *(&v30 + 1) = 0xE000000000000000;
  sub_1C095DC1C();
  v28[0] = v30;
  MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
  *&v30 = a1;
  v25 = *(v10 + *MEMORY[0x1E69E77B0] + 8);
  sub_1C095E06C();
  sub_1C095DF1C();
  MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
  v12(&v30, v11, a6);

  sub_1C095D6FC();
  swift_getWitnessTable();
  sub_1C095DF2C();

  result = sub_1C095DD0C();
  __break(1u);
  return result;
}

uint64_t sub_1C0554BAC@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t sub_1C0554E54(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v15 = *(a4 + 8);
  v15(&v16, v9, a4);

  v20 = a1;
  sub_1C095DC6C();

  sub_1C095D70C();

  if (v22)
  {
    sub_1C06FBB24(v21, v22, a2, a3, &v16);

    v10 = v18;
    if (v18)
    {
      v11 = v19;
      __swift_project_boxed_opaque_existential_1(&v16, v18);
      v10 = (*(v11 + 32))(v10, v11);
      __swift_destroy_boxed_opaque_existential_1(&v16);
    }

    else
    {
      sub_1C05145B4(&v16, &qword_1EBE16C40, &qword_1C09932B0);
    }

    return v10;
  }

  else
  {
    v16 = 0;
    v17 = 0xE000000000000000;
    sub_1C095DC1C();
    v21 = v16;
    v22 = v17;
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    v16 = a1;
    v13 = *(v8 + *MEMORY[0x1E69E77B0] + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v15(&v16, v9, a4);
    v14 = v18;

    v20 = v14;
    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C055516C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v13 = *(a6 + 8);
  v22 = *a1;
  v23 = v13;
  v13(&v27, v12, a6);

  v24 = a1;
  sub_1C095DC6C();

  sub_1C095D70C();

  if (v26)
  {
    MEMORY[0x1EEE9AC00](v14);
    v18[2] = a2;
    v19 = a3 & 1;
    v20 = v15;
    v21 = v26;
    sub_1C06FBC30(sub_1C05583E8, v18, a4, a5);
  }

  else
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1C095DC1C();
    v25 = v27;
    v26 = v28;
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    v27 = a1;
    v17 = *(v22 + *MEMORY[0x1E69E77B0] + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v23(&v27, v12, a6);

    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0555458(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a3)
  {
    return sub_1C06FC7C0(a4, a5);
  }

  if (qword_1ED5BDED8 != -1)
  {
    swift_once();
  }

  v10 = xmmword_1ED5BDEE0;
  v11 = xmmword_1ED5BDEF0;
  v12 = qword_1ED5BDF00;

  result = sub_1C06FC7C0(a4, a5);
  if (*(&v10 + 1))
  {
    v13 = *(a1 + 88);

    result = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 88) = v13;
    if ((result & 1) == 0)
    {
      result = sub_1C0577E98(0, v13[2] + 1, 1, v13);
      v13 = result;
      *(a1 + 88) = result;
    }

    v15 = v13[2];
    v14 = v13[3];
    if (v15 >= v14 >> 1)
    {
      result = sub_1C0577E98((v14 > 1), v15 + 1, 1, v13);
      v13 = result;
    }

    v13[2] = v11 + 1;
    v16 = &v13[15 * v11];
    v16[4] = a4;
    v16[5] = a5;
    *(v16 + 3) = v10;
    *(v16 + 4) = v11;
    v16[10] = v12;
    v16[11] = 0;
    v16[12] = 0;
    v16[13] = a2;
    v17 = MEMORY[0x1E69E7CC0];
    v16[14] = 0;
    v16[15] = v17;
    v16[16] = v17;
    v16[17] = v17;
    v16[18] = v17;
    *(a1 + 88) = v13;
  }

  return result;
}

uint64_t sub_1C05555EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v25 = *(a4 + 8);
  v25(&v26, v9, a4);

  v30 = a1;
  sub_1C095DC6C();

  sub_1C095D70C();

  if (v32)
  {
    v10 = sub_1C06FBDDC(v31, v32, a2, a3);

    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 32;
      v13 = MEMORY[0x1E69E7CC0];
      do
      {
        sub_1C0526080(v12, &v26);
        v15 = v28;
        v16 = v29;
        __swift_project_boxed_opaque_existential_1(&v26, v28);
        v17 = (*(v16 + 24))(v15, v16);
        v19 = v18;
        __swift_destroy_boxed_opaque_existential_1(&v26);
        if (v19)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v13 = sub_1C051B0D4(0, *(v13 + 2) + 1, 1, v13);
          }

          v21 = *(v13 + 2);
          v20 = *(v13 + 3);
          if (v21 >= v20 >> 1)
          {
            v13 = sub_1C051B0D4((v20 > 1), v21 + 1, 1, v13);
          }

          *(v13 + 2) = v21 + 1;
          v14 = &v13[16 * v21];
          *(v14 + 4) = v17;
          *(v14 + 5) = v19;
        }

        v12 += 40;
        --v11;
      }

      while (v11);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }

    return v13;
  }

  else
  {
    v26 = 0;
    v27 = 0xE000000000000000;
    sub_1C095DC1C();
    v31 = v26;
    v32 = v27;
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    v26 = a1;
    v23 = *(v8 + *MEMORY[0x1E69E77B0] + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v25(&v26, v9, a4);
    v24 = v28;

    v30 = v24;
    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0555990(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = MEMORY[0x1E69E77B0];
  v10 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v11 = *(a5 + 8);
  v11(v35, v10, a5);

  sub_1C095DC6C();

  sub_1C095D70C();

  if (v34)
  {
    v12 = v33;
    v13 = *(a2 + 16);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v28 = v33;
      v35[0] = MEMORY[0x1E69E7CC0];
      sub_1C0600B40(0, v13, 0);
      v14 = v35[0];
      v15 = (a2 + 40);
      do
      {
        v16 = *v15;
        v32 = *(v15 - 1);
        v17 = qword_1ED5D7CA0;

        if (v17 != -1)
        {
          swift_once();
        }

        v18 = xmmword_1ED5D7CA8;
        v19 = *(&xmmword_1ED5D7CB8 + 1);
        v31 = xmmword_1ED5D7CB8;
        v20 = qword_1ED5D7CC8;
        LOBYTE(v33) = 1;

        v35[0] = v14;
        v22 = *(v14 + 16);
        v21 = *(v14 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_1C0600B40((v21 > 1), v22 + 1, 1);
          v14 = v35[0];
        }

        *(v14 + 16) = v22 + 1;
        v23 = v14 + 104 * v22;
        *(v23 + 32) = v18;
        *(v23 + 48) = v31;
        *(v23 + 56) = v19;
        *(v23 + 64) = v20;
        *(v23 + 72) = v32;
        *(v23 + 80) = v16;
        *(v23 + 88) = 0;
        *(v23 + 96) = 1;
        *(v23 + 97) = v33;
        *(v23 + 100) = *(&v33 + 3);
        v24 = MEMORY[0x1E69E7CC0];
        *(v23 + 104) = MEMORY[0x1E69E7CC0];
        *(v23 + 112) = v24;
        *(v23 + 120) = v24;
        *(v23 + 128) = v24;
        v15 += 2;
        --v13;
      }

      while (v13);
      v12 = v28;
    }

    v25 = sub_1C077CEA8(v14);

    sub_1C06FBEA4(v25, v12, v34, a3, a4);
  }

  else
  {
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    sub_1C095DC1C();
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    v35[0] = a1;
    v27 = *(v8 + *v9 + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v11(v35, v10, a5);

    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0555D90@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = *a1;
  v11 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v15 = *(a5 + 8);
  v15(&v20, v11, a5);

  v22 = a1;
  sub_1C095DC6C();

  sub_1C095D70C();

  if (*(&v18 + 1))
  {
    sub_1C06FBB24(v18, *(&v18 + 1), a2, a3, &v18);

    if (v19)
    {
      sub_1C0531D80(&v18, &v20);
      sub_1C0526080(&v20, &v18);
      sub_1C0821558(&v18, *(*(v17 + *MEMORY[0x1E69E77B0] + 8) + 16), a4, a6);
      return __swift_destroy_boxed_opaque_existential_1(&v20);
    }

    else
    {
      result = sub_1C05145B4(&v18, &qword_1EBE16C40, &qword_1C09932B0);
      *(a6 + 32) = 0;
      *a6 = 0u;
      *(a6 + 16) = 0u;
    }
  }

  else
  {
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    sub_1C095DC1C();
    v18 = v20;
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    *&v20 = a1;
    v13 = *(v17 + *MEMORY[0x1E69E77B0] + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v15(&v20, v11, a5);
    v14 = v21;

    v22 = v14;
    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C05560BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v11 = *a1;
  v12 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v18 = *(a6 + 8);
  v18(&v23, v12, a6);

  v20 = a1;
  sub_1C095DC6C();

  sub_1C095D70C();

  if (v22)
  {
    MEMORY[0x1EEE9AC00](v13);
    v17[2] = a3;
    v17[3] = *(*(v11 + *MEMORY[0x1E69E77B0] + 8) + 16);
    v17[4] = a4;
    v17[5] = v19;
    v17[6] = a6;
    v17[7] = a2;
    v17[8] = v14;
    v17[9] = v22;
    sub_1C06FBC30(sub_1C0558354, v17, a3, a4);
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1C095DC1C();
    v21 = v23;
    v22 = v24;
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    v23 = a1;
    v16 = *(v11 + *MEMORY[0x1E69E77B0] + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v18(&v23, v12, a6);

    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

__n128 sub_1C05563C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v23[2] = a5;
  v23[3] = a6;
  v23[4] = a7;
  v23[5] = a8;
  v23[6] = a9;
  type metadata accessor for Entity();
  sub_1C095DB0C();
  sub_1C0554BAC(sub_1C0558568, v23, MEMORY[0x1E69E73E0], &type metadata for BuilderNode, v12, &v24);
  v13 = v24;
  v33 = v27;
  v34 = v28;
  v35 = v29;
  v36 = v30;
  v31 = v25;
  v32 = v26;
  sub_1C06FC7C0(a3, a4);
  if (v13.n128_u64[1])
  {
    v15 = *(a1 + 88);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 88) = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_1C0577E98(0, v15[2] + 1, 1, v15);
      *(a1 + 88) = v15;
    }

    v18 = v15[2];
    v17 = v15[3];
    if (v18 >= v17 >> 1)
    {
      v15 = sub_1C0577E98((v17 > 1), v18 + 1, 1, v15);
    }

    v29.n128_u64[0] = v36;
    v27 = v34;
    v28 = v35;
    v25 = v32;
    v26 = v33;
    v24 = v31;
    v15[2] = v18 + 1;
    v19 = &v15[15 * v18];
    v19[2].n128_u64[0] = a3;
    v19[2].n128_u64[1] = a4;
    v19[3] = v13;
    v20 = v25;
    v19[4] = v24;
    v19[5] = v20;
    result = v26;
    v21 = v27;
    v22 = v28;
    v19[9].n128_u64[0] = v29.n128_u64[0];
    v19[7] = v21;
    v19[8] = v22;
    v19[6] = result;
    *(a1 + 88) = v15;
  }

  return result;
}

uint64_t sub_1C055657C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a1;
  v10 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v17 = *(a5 + 8);
  v17(v20, v10, a5);

  sub_1C095DC6C();

  sub_1C095D70C();

  if (v19)
  {
    v11 = sub_1C06FBDDC(v18, v19, a2, a3);

    v20[0] = v11;
    MEMORY[0x1EEE9AC00](v12);
    v16 = *(*(v9 + *MEMORY[0x1E69E77B0] + 8) + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C50, &unk_1C096E830);
    type metadata accessor for Entity();
    sub_1C0558518(&qword_1EBE16C60);
    v13 = sub_1C095D8FC();

    return v13;
  }

  else
  {
    v20[0] = 0;
    v20[1] = 0xE000000000000000;
    sub_1C095DC1C();
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    v20[0] = a1;
    v15 = *(v9 + *MEMORY[0x1E69E77B0] + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v17(v20, v10, a5);

    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0556904(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v11 = *a1;
  v12 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v18 = *(a6 + 8);
  v18(&v23, v12, a6);

  v20 = a1;
  sub_1C095DC6C();

  sub_1C095D70C();

  if (v22)
  {
    MEMORY[0x1EEE9AC00](v13);
    v17[2] = a3;
    v17[3] = *(*(v11 + *MEMORY[0x1E69E77B0] + 8) + 16);
    v17[4] = a4;
    v17[5] = v19;
    v17[6] = a6;
    v17[7] = a2;
    v17[8] = v14;
    v17[9] = v22;
    sub_1C06FBC30(sub_1C05582D4, v17, a3, a4);
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1C095DC1C();
    v21 = v23;
    v22 = v24;
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    v23 = a1;
    v16 = *(v11 + *MEMORY[0x1E69E77B0] + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v18(&v23, v12, a6);

    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0556C08(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16[9] = a2;
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  v16[5] = a8;
  v16[6] = a9;
  type metadata accessor for Entity();
  v11 = sub_1C095D9FC();
  WitnessTable = swift_getWitnessTable();
  v14 = sub_1C0801A08(sub_1C0558308, v16, v11, &type metadata for BuilderNode, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v13);
  sub_1C06FC654(v14, a3, a4);
}

uint64_t sub_1C0556CF4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v15 = *(a4 + 8);
  v16 = *a1;
  v15(&v19, v10, a4);

  v21 = a1;
  sub_1C095DC6C();

  sub_1C095D70C();

  if (*(&v17 + 1))
  {
    sub_1C06FBB24(v17, *(&v17 + 1), a2, a3, &v17);

    if (v18)
    {
      sub_1C0531D80(&v17, &v19);
      sub_1C0531D80(&v19, &v17);
      v11 = *(*(*(v16 + *MEMORY[0x1E69E77B0] + 8) + 16) + 16);
      return sub_1C06FADF8(&v17, a5);
    }

    else
    {
      result = sub_1C05145B4(&v17, &qword_1EBE16C40, &qword_1C09932B0);
      *(a5 + 32) = 0;
      *a5 = 0u;
      *(a5 + 16) = 0u;
    }
  }

  else
  {
    *&v19 = 0;
    *(&v19 + 1) = 0xE000000000000000;
    sub_1C095DC1C();
    v17 = v19;
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    *&v19 = a1;
    v13 = *(v16 + *MEMORY[0x1E69E77B0] + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v15(&v19, v10, a4);
    v14 = v20;

    v21 = v14;
    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0557014(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  v11 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v17 = *(a5 + 8);
  v17(&v21, v11, a5);

  v18 = a1;
  sub_1C095DC6C();

  sub_1C095D70C();

  if (v20)
  {
    MEMORY[0x1EEE9AC00](v12);
    v16[2] = a3;
    v16[3] = *(*(*(v10 + *MEMORY[0x1E69E77B0] + 8) + 16) + 16);
    v16[4] = a4;
    v16[5] = a5;
    v16[6] = a2;
    v16[7] = v13;
    v16[8] = v20;
    sub_1C06FBC30(sub_1C055755C, v16, a3, a4);
  }

  else
  {
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1C095DC1C();
    v19 = v21;
    v20 = v22;
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    v21 = a1;
    v15 = *(v10 + *MEMORY[0x1E69E77B0] + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v17(&v21, v11, a5);

    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0557318(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for Metadata();
  v9 = sub_1C095DB0C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v30, a2, v9);
  if (v31)
  {
    sub_1C0526080(v30, v27);
    (*(*(v8 - 8) + 8))(v30, v8);
    v11 = v28;
    v12 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v12 + 72))(v25, v11, v12);
    v23 = v25[1];
    v24 = v25[0];
    v21 = v25[3];
    v22 = v25[2];
    v19 = v25[5];
    v20 = v25[4];
    v13 = v26;
    __swift_destroy_boxed_opaque_existential_1(v27);
    result = sub_1C06FC7C0(a3, a4);
    if (*(&v24 + 1))
    {
      v15 = *(a1 + 88);

      result = swift_isUniquelyReferenced_nonNull_native();
      *(a1 + 88) = v15;
      if ((result & 1) == 0)
      {
        result = sub_1C0577E98(0, v15[2] + 1, 1, v15);
        v15 = result;
        *(a1 + 88) = result;
      }

      v17 = v15[2];
      v16 = v15[3];
      if (v17 >= v16 >> 1)
      {
        result = sub_1C0577E98((v16 > 1), v17 + 1, 1, v15);
        v15 = result;
      }

      v15[2] = v17 + 1;
      v18 = &v15[15 * v17];
      v18[4] = a3;
      v18[5] = a4;
      *(v18 + 3) = v24;
      *(v18 + 4) = v23;
      *(v18 + 5) = v22;
      *(v18 + 6) = v21;
      *(v18 + 7) = v20;
      *(v18 + 8) = v19;
      v18[18] = v13;
      *(a1 + 88) = v15;
    }
  }

  else
  {
    (*(v10 + 8))(v30, v9);
    return sub_1C06FC7C0(a3, a4);
  }

  return result;
}

uint64_t sub_1C055755C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1C0557318(a1, v1[6], v1[7], v1[8]);
}

uint64_t sub_1C0557570(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v20 = *(a4 + 8);
  v20(&v24, v9, a4);

  v21 = a1;
  sub_1C095DC6C();

  sub_1C095D70C();

  if (v23)
  {
    v10 = sub_1C06FBDDC(v22, v23, a2, a3);

    v24 = v10;
    MEMORY[0x1EEE9AC00](v11);
    v19[2] = a2;
    v19[3] = *(*(*(v8 + *MEMORY[0x1E69E77B0] + 8) + 16) + 16);
    v19[4] = a3;
    v19[5] = a4;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C50, &unk_1C096E830);
    v13 = type metadata accessor for Metadata();
    v14 = sub_1C0558518(&qword_1EBE16C58);
    v16 = sub_1C0801A08(sub_1C0558468, v19, v12, v13, MEMORY[0x1E69E73E0], v14, MEMORY[0x1E69E7410], v15);

    return v16;
  }

  else
  {
    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1C095DC1C();
    v22 = v24;
    v23 = v25;
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    v24 = a1;
    v18 = *(v8 + *MEMORY[0x1E69E77B0] + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v20(&v24, v9, a4);

    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0557904@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = *a1;
  v8 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v9 = *(a4 + 8);
  v18 = *(v9 + 8);
  v18(&v23, v8, v9);

  v27 = a1;
  sub_1C095DC6C();

  sub_1C095D70C();

  if (v22)
  {
    sub_1C06FBB24(v21, v22, a2, a3, &v23);

    v10 = v25;
    if (v25)
    {
      v11 = v26;
      __swift_project_boxed_opaque_existential_1(&v23, v25);
      (*(v11 + 16))(&v21, v10, v11);
      v12 = v21;
      v13 = v22;

      __swift_destroy_boxed_opaque_existential_1(&v23);
      v14 = *(*(v20 + *MEMORY[0x1E69E77B0] + 8) + 16);
      v23 = v12;
      v24 = v13;
      swift_getAssociatedConformanceWitness();
      return sub_1C095D92C();
    }

    else
    {
      sub_1C05145B4(&v23, &qword_1EBE16C40, &qword_1C09932B0);
      return (*(*(*(*(v20 + *MEMORY[0x1E69E77B0] + 8) + 16) - 8) + 56))(a5, 1, 1);
    }
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1C095DC1C();
    v21 = v23;
    v22 = v24;
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    v23 = a1;
    v16 = *(v20 + *MEMORY[0x1E69E77B0] + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v18(&v23, v8, v9);
    v17 = v25;

    v27 = v17;
    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

uint64_t sub_1C0557CCC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v11 = *(a5 + 8);
  v12 = *(v11 + 8);
  v18 = *a1;
  v19 = v12;
  v12(&v23, v10, v11);

  v20 = a1;
  sub_1C095DC6C();

  sub_1C095D70C();

  if (v22)
  {
    MEMORY[0x1EEE9AC00](v13);
    v17[2] = a3;
    v17[3] = a4;
    v17[4] = a5;
    v17[5] = a2;
    v17[6] = v14;
    v17[7] = v22;
    sub_1C06FBC30(sub_1C0558320, v17, a3, a4);
  }

  else
  {
    v23 = 0;
    v24 = 0xE000000000000000;
    sub_1C095DC1C();
    v21 = v23;
    v22 = v24;
    MEMORY[0x1C68DD690](0xD000000000000017, 0x80000001C09CC290);
    v23 = a1;
    v16 = *(v18 + *MEMORY[0x1E69E77B0] + 8);
    sub_1C095E06C();
    sub_1C095DF1C();
    MEMORY[0x1C68DD690](0xD000000000000015, 0x80000001C09CC2B0);
    v19(&v23, v10, v11);

    sub_1C095D6FC();
    swift_getWitnessTable();
    sub_1C095DF2C();

    result = sub_1C095DD0C();
    __break(1u);
  }

  return result;
}

__n128 sub_1C0557FB4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v21[2] = a5;
  v21[3] = a6;
  v21[4] = a7;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1C095DB0C();
  sub_1C0554BAC(sub_1C0558330, v21, MEMORY[0x1E69E73E0], &type metadata for BuilderNode, v10, &v22);
  v11 = v22;
  v31 = v25;
  v32 = v26;
  v33 = v27;
  v34 = v28;
  v29 = v23;
  v30 = v24;
  sub_1C06FC7C0(a3, a4);
  if (v11.n128_u64[1])
  {
    v13 = *(a1 + 88);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 88) = v13;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = sub_1C0577E98(0, v13[2] + 1, 1, v13);
      *(a1 + 88) = v13;
    }

    v16 = v13[2];
    v15 = v13[3];
    if (v16 >= v15 >> 1)
    {
      v13 = sub_1C0577E98((v15 > 1), v16 + 1, 1, v13);
    }

    v27.n128_u64[0] = v34;
    v25 = v32;
    v26 = v33;
    v23 = v30;
    v24 = v31;
    v22 = v29;
    v13[2] = v16 + 1;
    v17 = &v13[15 * v16];
    v17[2].n128_u64[0] = a3;
    v17[2].n128_u64[1] = a4;
    v17[3] = v11;
    v18 = v23;
    v17[4] = v22;
    v17[5] = v18;
    result = v24;
    v19 = v25;
    v20 = v26;
    v17[9].n128_u64[0] = v27.n128_u64[0];
    v17[7] = v19;
    v17[8] = v20;
    v17[6] = result;
    *(a1 + 88) = v13;
  }

  return result;
}

double sub_1C05581A8@<D0>(uint64_t a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1C095D91C();
  *a1 = v4;
  *(a1 + 8) = v5;
  strcpy((a1 + 16), "DefinedValue");
  *(a1 + 29) = 0;
  *(a1 + 30) = -5120;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 1;
  *(a1 + 65) = *v6;
  v3 = MEMORY[0x1E69E7CC0];
  *(a1 + 68) = *&v6[3];
  *(a1 + 72) = v3;
  *(a1 + 80) = v3;
  *(a1 + 88) = v3;
  *(a1 + 96) = v3;
  return result;
}

double sub_1C0558330@<D0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1C05581A8(a1);
}

uint64_t sub_1C0558388(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t sub_1C05583F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C48, &qword_1C096E828);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0558468@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  sub_1C0526080(a1, v6);
  return sub_1C06FADF8(v6, a2);
}

double sub_1C05584BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *(v2 + 40);
  sub_1C0526080(a1, v7);
  return sub_1C0821558(v7, v4, v5, a2);
}

uint64_t sub_1C0558518(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE16C50, &unk_1C096E830);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t TerminalIntentNode.ontologyNodeName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SiriOntology::TerminalIntentNode __swiftcall TerminalIntentNode.init(name:elements:resultIDs:)(Swift::String name, Swift::OpaquePointer elements, Swift::OpaquePointer resultIDs)
{
  *v3 = name;
  *(v3 + 16) = resultIDs;
  *(v3 + 24) = elements;
  result.ontologyNodeName = name;
  result.elements = resultIDs;
  result.resultIDs = elements;
  return result;
}

void *TerminalIntentNode.init(name:value:semanticTags:)@<X0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, void *a5@<X8>)
{
  memcpy(__dst, __src, 0x20AuLL);
  sub_1C0558714(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C68, &unk_1C096E840);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C096E0C0;
  memcpy((v9 + 32), __dst, 0x210uLL);
  *(v9 + 560) = a4;
  result = memcpy((v9 + 568), v11, 0x309uLL);
  *(v9 + 1352) = 0;
  *(v9 + 1368) = 0;
  *(v9 + 1360) = 0;
  *a5 = a2;
  a5[1] = a3;
  a5[2] = MEMORY[0x1E69E7CC0];
  a5[3] = v9;
  return result;
}

__n128 TerminalElement.init(value:semanticTags:origin:originalValue:)@<Q0>(void *__src@<X0>, uint64_t a2@<X1>, const void *a3@<X2>, __n128 *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a4[1].n128_u64[0];
  memcpy(a5, __src, 0x20AuLL);
  *(a5 + 528) = a2;
  memcpy((a5 + 536), a3, 0x309uLL);
  result = *a4;
  *(a5 + 1320) = *a4;
  *(a5 + 1336) = v9;
  return result;
}

double sub_1C0558714(uint64_t a1)
{
  bzero(a1, 0x220uLL);
  *(a1 + 544) = 0xFFFFFFFE0000;
  result = 0.0;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 648) = 0u;
  *(a1 + 664) = 0u;
  *(a1 + 680) = 0u;
  *(a1 + 696) = 0u;
  *(a1 + 712) = 0u;
  *(a1 + 728) = 0u;
  *(a1 + 744) = 0u;
  *(a1 + 760) = 0u;
  *(a1 + 776) = 0;
  return result;
}

uint64_t TerminalElement.value.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, v1, 0x20AuLL);
  memcpy(a1, v1, 0x20AuLL);
  return sub_1C05149F8(__dst, v4, &qword_1EBE16C70, &unk_1C099BB20);
}

uint64_t TerminalElement.origin.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 536), 0x309uLL);
  memcpy(a1, (v1 + 536), 0x309uLL);
  return sub_1C05149F8(__dst, v4, &qword_1EBE16C78, &qword_1C096E850);
}

uint64_t TerminalElement.originalValue.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 1336);
  *a1 = *(v1 + 1320);
  *(a1 + 16) = v2;
}

uint64_t TerminalElement.SemanticValue.javaPojoName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

SiriOntology::TerminalElement::SemanticValue __swiftcall TerminalElement.SemanticValue.init(_:javaPojoName:)(Swift::String _, Swift::String_optional javaPojoName)
{
  *v2 = javaPojoName;
  v2[1].value = _;
  result.value = javaPojoName.value;
  result.javaPojoName.value = _;
  return result;
}

uint64_t TerminalElement.ScalarValue.value.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x20AuLL);
  memcpy(a1, (v1 + 16), 0x20AuLL);
  return sub_1C05149F8(__dst, v4, &qword_1EBE16C70, &unk_1C099BB20);
}

uint64_t TerminalElement.ScalarValue.unit.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[68];
  v3 = v1[69];
  v4 = v1[70];
  v5 = v1[71];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1C0558910(v2, v3, v4, v5);
}

uint64_t sub_1C0558910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

_OWORD *TerminalElement.ScalarValue.__allocating_init(value:unit:)(const void *a1, _OWORD *a2)
{
  v4 = swift_allocObject();
  memcpy(v4 + 1, a1, 0x20AuLL);
  v5 = a2[1];
  v4[34] = *a2;
  v4[35] = v5;
  return v4;
}

_OWORD *TerminalElement.ScalarValue.init(value:unit:)(void *__src, _OWORD *a2)
{
  memcpy(v2 + 1, __src, 0x20AuLL);
  v4 = a2[1];
  v2[34] = *a2;
  v2[35] = v4;
  return v2;
}

uint64_t *TerminalElement.ScalarValue.deinit()
{
  memcpy(v2, v0 + 2, 0x20AuLL);
  sub_1C05145B4(v2, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C0558A50(v0[68], v0[69], v0[70], v0[71]);
  return v0;
}

uint64_t sub_1C0558A50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

uint64_t TerminalElement.ScalarValue.__deallocating_deinit()
{
  memcpy(v2, v0 + 2, 0x20AuLL);
  sub_1C05145B4(v2, &qword_1EBE16C70, &unk_1C099BB20);
  sub_1C0558A50(v0[68], v0[69], v0[70], v0[71]);
  return swift_deallocClassInstance();
}

uint64_t TerminalElement.Origin.originDetail.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 8), 0x301uLL);
  memcpy(a1, (v1 + 8), 0x301uLL);
  return sub_1C05149F8(__dst, v4, &qword_1EBE16C80, &qword_1C096E858);
}

SiriOntology::TerminalElement::OriginType_optional __swiftcall TerminalElement.OriginType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1C095DD6C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t TerminalElement.OriginType.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x746E6F4372657375;
    v7 = 0x65666E4972657375;
    if (v1 != 2)
    {
      v7 = 0x666544746E656761;
    }

    if (*v0)
    {
      v6 = 0x7272754372657375;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x666E49746E656761;
    v3 = 0x726544746E656761;
    if (v1 != 7)
    {
      v3 = 0x6C6552746E656761;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x766544746E656761;
    if (v1 != 4)
    {
      v4 = 0x6F7244746E656761;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1C0558D54()
{
  v1 = *v0;
  sub_1C095DFEC();
  sub_1C0559784();
  return sub_1C095E03C();
}

uint64_t sub_1C0558DA4()
{
  sub_1C095D7BC();
}

uint64_t sub_1C0558EAC()
{
  sub_1C095D7BC();
}

uint64_t sub_1C0558FA8()
{
  sub_1C095D7BC();
}

uint64_t sub_1C05590EC()
{
  sub_1C095D7BC();
}

uint64_t sub_1C05591F4()
{
  sub_1C095D7BC();
}

uint64_t sub_1C055931C()
{
  sub_1C095D7BC();
}

uint64_t sub_1C055941C()
{
  sub_1C095D7BC();
}

uint64_t sub_1C055955C()
{
  sub_1C095D7BC();
}

uint64_t sub_1C055967C()
{
  sub_1C095D7BC();
}

uint64_t sub_1C0559784()
{
  sub_1C095D7BC();
}

uint64_t sub_1C055990C()
{
  sub_1C095D7BC();
}

uint64_t sub_1C0559A38()
{
  sub_1C095D7BC();
}

uint64_t sub_1C0559B48()
{
  sub_1C095D7BC();
}

uint64_t sub_1C0559CA4()
{
  v1 = *v0;
  sub_1C095DFEC();
  sub_1C0559784();
  return sub_1C095E03C();
}

uint64_t sub_1C0559CF4@<X0>(uint64_t *a1@<X8>)
{
  result = TerminalElement.OriginType.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t TerminalElement.DerivedOrigin.adjustmentReason.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1C0559D40(v2, v3);
}

uint64_t sub_1C0559D40(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

__n128 TerminalElement.DerivedOrigin.init(adjustmentReason:derivedFrom:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = *a1;
  v4 = *(a1 + 16);
  *a3 = *a1;
  *(a3 + 16) = v4;
  *(a3 + 32) = a2;
  return result;
}

uint64_t TerminalElement.MatchingSpan.label.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t TerminalElement.MatchingSpan.value.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 16), 0x20AuLL);
  memcpy(a1, (v1 + 16), 0x20AuLL);
  return sub_1C05149F8(__dst, v4, &qword_1EBE16C70, &unk_1C099BB20);
}

uint64_t TerminalElement.MatchingSpan.input.getter()
{
  v1 = *(v0 + 544);
  v2 = *(v0 + 552);

  return v1;
}

uint64_t TerminalElement.MatchingSpan.matchedTerm.getter()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 568);

  return v1;
}

uint64_t TerminalElement.MatchingSpan.locale.getter()
{
  v1 = *(v0 + 648);
  v2 = *(v0 + 656);

  return v1;
}

uint64_t TerminalElement.MatchingSpan.appId.getter()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 688);

  return v1;
}

uint64_t TerminalElement.MatchingSpan.metadata.getter()
{
  result = *(v0 + 728);
  v2 = *(v0 + 736);
  return result;
}

uint64_t TerminalElement.MatchingSpan.preITNPhrasesStartTime.getter()
{
  result = *(v0 + 744);
  v2 = *(v0 + 752);
  return result;
}

uint64_t TerminalElement.MatchingSpan.preITNPhrasesEndTime.getter()
{
  result = *(v0 + 760);
  v2 = *(v0 + 768);
  return result;
}

__n128 TerminalElement.MatchingSpan.init(label:value:input:matchedTerm:prefix:suffix:startIndex:endIndex:startIndexWithoutPrefix:endIndexWithoutSuffix:confidence:prefixSuffixConfidence:isExplicit:isSuffixVariableMatch:isPrefixVariableMatch:isPayloadVariableMatch:locale:numberOfWords:matchType:appId:matcherNames:tags:alternateInterpretationConfidences:alternateInterpretationPhoneSequences:metadata:preITNPhrasesStartTime:preITNPhrasesEndTime:)@<Q0>(void *__src@<X2>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, uint64_t a13, char a14, char a15, char a16, char a17, __int128 a18, uint64_t a19, char *a20, __int128 a21, __int128 a22, __int128 a23, uint64_t a24, char a25, uint64_t a26, char a27, uint64_t a28, char a29)
{
  v32 = *a20;
  *a9 = a2;
  *(a9 + 8) = a3;
  memcpy((a9 + 16), __src, 0x20AuLL);
  *(a9 + 544) = a4;
  *(a9 + 552) = a5;
  *(a9 + 560) = a6;
  *(a9 + 568) = a7;
  *(a9 + 576) = a8;
  *(a9 + 584) = a10;
  *(a9 + 600) = a11;
  *(a9 + 616) = a12;
  *(a9 + 632) = a13;
  *(a9 + 640) = a14;
  *(a9 + 641) = a15;
  *(a9 + 642) = a16;
  *(a9 + 643) = a17;
  *(a9 + 648) = a18;
  *(a9 + 664) = a19;
  *(a9 + 672) = v32;
  *(a9 + 680) = a21;
  result = a23;
  *(a9 + 696) = a22;
  *(a9 + 712) = a23;
  *(a9 + 728) = a24;
  *(a9 + 736) = a25 & 1;
  *(a9 + 744) = a26;
  *(a9 + 752) = a27 & 1;
  *(a9 + 760) = a28;
  *(a9 + 768) = a29 & 1;
  return result;
}

uint64_t TerminalElement.MatchType.hashValue.getter()
{
  v1 = *v0;
  sub_1C095DFEC();
  MEMORY[0x1C68DDE90](v1);
  return sub_1C095E03C();
}

uint64_t _s12SiriOntology15TerminalElementV14CalendarSystemO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1C095DFEC();
  MEMORY[0x1C68DDE90](v1);
  return sub_1C095E03C();
}

uint64_t sub_1C055A254()
{
  v1 = *v0;
  sub_1C095DFEC();
  MEMORY[0x1C68DDE90](v1);
  return sub_1C095E03C();
}

uint64_t TerminalElement.AdjustmentReason.sourceClass.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

SiriOntology::TerminalElement::AdjustmentReason __swiftcall TerminalElement.AdjustmentReason.init(explanation:sourceClass:)(Swift::String_optional explanation, Swift::String_optional sourceClass)
{
  *v2 = explanation;
  v2[1] = sourceClass;
  result.sourceClass = sourceClass;
  result.explanation = explanation;
  return result;
}

uint64_t TerminalElement.OriginalValue.input.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

SiriOntology::TerminalElement::OriginalValue __swiftcall TerminalElement.OriginalValue.init(isFresh:input:)(Swift::Bool isFresh, Swift::String input)
{
  *v2 = isFresh;
  *(v2 + 8) = input;
  result.input = input;
  result.isFresh = isFresh;
  return result;
}

uint64_t static TerminalIntentNode.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_1C095DF3C() & 1) == 0 || (sub_1C055B098(v2, v5) & 1) == 0)
  {
    return 0;
  }

  return sub_1C055B128(v3, v4);
}

uint64_t sub_1C055A3AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = *(a1 + 48);
    v69 = *(a1 + 32);
    *v70 = v3;
    v4 = *(a1 + 80);
    *&v70[16] = *(a1 + 64);
    v71 = v4;
    v5 = *(a2 + 48);
    v72 = *(a2 + 32);
    *v73 = v5;
    v6 = *(a2 + 80);
    *&v73[16] = *(a2 + 64);
    v74 = v6;
    if (v69 == v72)
    {
      v7 = (a1 + 96);
      v8 = (a2 + 96);
      do
      {
        if (*(&v69 + 1) != *(&v72 + 1))
        {
          return 0;
        }

        if (*v70 != *v73)
        {
          return 0;
        }

        v9 = *&v70[24];
        v10 = v71;
        v11 = *&v73[24];
        v12 = v74;
        if (*&v70[8] != *&v73[8] && (sub_1C095DF3C() & 1) == 0)
        {
          return 0;
        }

        if ((v9 != v11 || v10 != v12) && (sub_1C095DF3C() & 1) == 0)
        {
          return 0;
        }

        if (*(&v10 + 1))
        {
          if (!*(&v12 + 1))
          {
            return 0;
          }

          v13 = *(*(&v10 + 1) + 16);
          v14 = *(*(&v10 + 1) + 32);
          v15 = *(*(&v10 + 1) + 64);
          v66 = *(*(&v10 + 1) + 48);
          v67 = v15;
          v64 = v13;
          v65 = v14;
          v16 = *(*(&v12 + 1) + 16);
          v17 = *(*(&v12 + 1) + 32);
          v18 = *(*(&v12 + 1) + 64);
          v68[2] = *(*(&v12 + 1) + 48);
          v68[3] = v18;
          v68[0] = v16;
          v68[1] = v17;
          v61 = v65;
          v62 = v66;
          v63 = v67;
          v19 = *(*(&v12 + 1) + 48);
          v58 = *(*(&v12 + 1) + 32);
          v59 = v19;
          v60 = *(*(&v12 + 1) + 64);
          if (*(&v64 + 1))
          {
            v49 = v64;
            v51 = v66;
            v52 = v67;
            v50 = v65;
            v43 = *(&v65 + 1);
            v40 = *(&v67 + 1);
            if (!*(&v16 + 1))
            {
              v32 = v64;
              v33 = v16;
              v34 = *(&v64 + 1);
              sub_1C0514AC4(&v69, v48);
              sub_1C0514AC4(&v72, v48);
              sub_1C0514AC4(&v69, v48);
              sub_1C0514AC4(&v72, v48);

              sub_1C05149F8(&v64, v48, &qword_1EBE16D80, &qword_1C0970448);
              sub_1C05149F8(v68, v48, &qword_1EBE16D80, &qword_1C0970448);
              sub_1C05149F8(&v49, v48, &qword_1EBE16D80, &qword_1C0970448);

              v35 = 0;
LABEL_40:
              *&v49 = v32;
              *(&v49 + 1) = v34;
              v50 = v61;
              v51 = v62;
              v52 = v63;
              v53 = v33;
              v54 = v35;
              v55 = v58;
              v56 = v59;
              v57 = v60;
              sub_1C05145B4(&v49, &qword_1EBE16D88, &qword_1C0970450);

              sub_1C0514A70(&v72);
              sub_1C0514A70(&v69);
              sub_1C0514A70(&v72);
              sub_1C0514A70(&v69);
              return 0;
            }

            v20 = v50;
            v21 = v51;
            v38 = v52;
            v39 = *(&v51 + 1);
            v48[0] = v16;
            v48[2] = v59;
            v48[3] = v60;
            v48[1] = v58;
            v22 = v58;
            v23 = v59;
            v36 = *(&v60 + 1);
            v37 = v60;
            v41 = *(&v64 + 1);
            v42 = v64;
            if (v64 == v16 || (sub_1C095DF3C()) && (__PAIR128__(v43, v20) == v22 || (sub_1C095DF3C()) && (__PAIR128__(v39, v21) == v23 || (sub_1C095DF3C()))
            {
              if (v38 == v37 && v40 == v36)
              {
                sub_1C0514AC4(&v69, v44);
                sub_1C0514AC4(&v72, v44);
                sub_1C0514AC4(&v69, v44);
                sub_1C0514AC4(&v72, v44);

                sub_1C05149F8(&v64, v44, &qword_1EBE16D80, &qword_1C0970448);
                sub_1C05149F8(v68, v44, &qword_1EBE16D80, &qword_1C0970448);
                sub_1C05149F8(&v49, v44, &qword_1EBE16D80, &qword_1C0970448);
                v24 = 1;
              }

              else
              {
                v24 = sub_1C095DF3C();
                sub_1C0514AC4(&v69, v44);
                sub_1C0514AC4(&v72, v44);
                sub_1C0514AC4(&v69, v44);
                sub_1C0514AC4(&v72, v44);

                sub_1C05149F8(&v64, v44, &qword_1EBE16D80, &qword_1C0970448);
                sub_1C05149F8(v68, v44, &qword_1EBE16D80, &qword_1C0970448);
                sub_1C05149F8(&v49, v44, &qword_1EBE16D80, &qword_1C0970448);
              }
            }

            else
            {
              sub_1C0514AC4(&v69, v44);
              sub_1C0514AC4(&v72, v44);
              sub_1C0514AC4(&v69, v44);
              sub_1C0514AC4(&v72, v44);

              sub_1C05149F8(&v64, v44, &qword_1EBE16D80, &qword_1C0970448);
              sub_1C05149F8(v68, v44, &qword_1EBE16D80, &qword_1C0970448);
              sub_1C05149F8(&v49, v44, &qword_1EBE16D80, &qword_1C0970448);
              v24 = 0;
            }

            sub_1C05145B4(v48, &qword_1EBE16D80, &qword_1C0970448);

            v44[0] = v42;
            v44[1] = v41;
            v45 = v61;
            v46 = v62;
            v47 = v63;
            sub_1C05145B4(v44, &qword_1EBE16D80, &qword_1C0970448);

            sub_1C0514A70(&v72);
            sub_1C0514A70(&v69);
            sub_1C0514A70(&v72);
            sub_1C0514A70(&v69);
            if ((v24 & 1) == 0)
            {
              return 0;
            }
          }

          else
          {
            if (*(&v16 + 1))
            {
              v32 = v64;
              v33 = v16;
              v34 = *(&v64 + 1);
              v35 = *(&v16 + 1);
              sub_1C0514AC4(&v69, &v49);
              sub_1C0514AC4(&v72, &v49);
              sub_1C0514AC4(&v69, &v49);
              sub_1C0514AC4(&v72, &v49);

              sub_1C05149F8(&v64, &v49, &qword_1EBE16D80, &qword_1C0970448);
              sub_1C05149F8(v68, &v49, &qword_1EBE16D80, &qword_1C0970448);
              goto LABEL_40;
            }

            v49 = v64;
            v50 = v65;
            v51 = v66;
            v52 = v67;
            sub_1C05149F8(&v64, v48, &qword_1EBE16D80, &qword_1C0970448);
            sub_1C05149F8(v68, v48, &qword_1EBE16D80, &qword_1C0970448);
            sub_1C05145B4(&v49, &qword_1EBE16D80, &qword_1C0970448);
          }
        }

        else if (*(&v12 + 1))
        {
          return 0;
        }

        if (!--v2)
        {
          return 1;
        }

        v25 = v7[1];
        v69 = *v7;
        *v70 = v25;
        v26 = v7[2];
        v27 = v7[3];
        v7 += 4;
        *&v70[16] = v26;
        v71 = v27;
        v28 = v8[1];
        v72 = *v8;
        *v73 = v28;
        v29 = v8[2];
        v30 = v8[3];
        v8 += 4;
        *&v73[16] = v29;
        v74 = v30;
      }

      while (v69 == v72);
    }
  }

  return 0;
}

uint64_t sub_1C055AB4C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v39 = v2;
  v40 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v28 = v5[2];
    v29 = v8;
    v30[0] = v5[4];
    v9 = v30[0];
    *(v30 + 9) = *(v5 + 73);
    v10 = v5[1];
    v27[0] = *v5;
    v27[1] = v10;
    *(v26 + 9) = *(v30 + 9);
    v24 = v28;
    v25 = v8;
    v26[0] = v9;
    v22 = v27[0];
    v23 = v10;
    v11 = v6[3];
    v32 = v6[2];
    v33 = v11;
    v34[0] = v6[4];
    v12 = v34[0];
    *(v34 + 9) = *(v6 + 73);
    v13 = v6[1];
    v31[0] = *v6;
    v31[1] = v13;
    *(v21 + 9) = *(v34 + 9);
    v19 = v32;
    v20 = v11;
    v21[0] = v12;
    v17 = v31[0];
    v18 = v13;
    v14 = _s12SiriOntology13UsoIdentifierV2eeoiySbAC_ACtFZ_0(&v22, &v17);
    v35[2] = v19;
    v35[3] = v20;
    v36[0] = v21[0];
    *(v36 + 9) = *(v21 + 9);
    v35[0] = v17;
    v35[1] = v18;
    sub_1C0518B04(v27, v16);
    sub_1C0518B04(v31, v16);
    sub_1C0518B60(v35);
    v37[2] = v24;
    v37[3] = v25;
    v38[0] = v26[0];
    *(v38 + 9) = *(v26 + 9);
    v37[0] = v22;
    v37[1] = v23;
    sub_1C0518B60(v37);
    if (!v14)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 6;
    v5 += 6;
  }

  return 1;
}

uint64_t sub_1C055ACCC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = result + 32;
  while (v3 != v2)
  {
    v5 = v4 + 16 * v3;
    v6 = a2 + 32 + 16 * v3;
    if (*v5 != *v6)
    {
      return 0;
    }

    v7 = *(v5 + 8);
    v8 = *(v6 + 8);
    v9 = *(v7 + 16);
    if (v9 != *(v8 + 16))
    {
      return 0;
    }

    if (v9)
    {
      v10 = v7 == v8;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = (v7 + 52);
      v12 = (v8 + 52);
      while (v9)
      {
        result = 0;
        if ((vminv_u16(vmovn_s32(vceqq_s32(*(v11 - 5), *(v12 - 5)))) & 1) == 0)
        {
          return result;
        }

        if (*(v11 - 1) != *(v12 - 1) || *v11 != *v12)
        {
          return result;
        }

        v11 += 6;
        v12 += 6;
        if (!--v9)
        {
          goto LABEL_5;
        }
      }

      __break(1u);
      break;
    }

LABEL_5:
    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C055ADC8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v79 = v2;
  v80 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[9];
    v9 = v5[7];
    v62 = v5[8];
    v63 = v8;
    v10 = v5[9];
    v64[0] = v5[10];
    *(v64 + 9) = *(v5 + 169);
    v11 = v5[5];
    v12 = v5[3];
    v58 = v5[4];
    v59 = v11;
    v13 = v5[5];
    v14 = v5[7];
    v60 = v5[6];
    v61 = v14;
    v15 = v5[1];
    v55[0] = *v5;
    v55[1] = v15;
    v16 = v5[3];
    v18 = *v5;
    v17 = v5[1];
    v56 = v5[2];
    v57 = v16;
    v52 = v62;
    v53 = v10;
    v54[0] = v5[10];
    *(v54 + 9) = *(v5 + 169);
    v48 = v58;
    v49 = v13;
    v50 = v60;
    v51 = v9;
    v44 = v18;
    v45 = v17;
    v46 = v56;
    v47 = v12;
    v19 = v6[9];
    v20 = v6[7];
    v72 = v6[8];
    v73 = v19;
    v21 = v6[9];
    v74[0] = v6[10];
    *(v74 + 9) = *(v6 + 169);
    v22 = v6[5];
    v23 = v6[3];
    v68 = v6[4];
    v69 = v22;
    v24 = v6[5];
    v25 = v6[7];
    v70 = v6[6];
    v71 = v25;
    v26 = v6[1];
    v65[0] = *v6;
    v65[1] = v26;
    v27 = v6[3];
    v29 = *v6;
    v28 = v6[1];
    v66 = v6[2];
    v67 = v27;
    v41 = v72;
    v42 = v21;
    v43[0] = v6[10];
    *(v43 + 9) = *(v6 + 169);
    v37 = v68;
    v38 = v24;
    v39 = v70;
    v40 = v20;
    v33 = v29;
    v34 = v28;
    v35 = v66;
    v36 = v23;
    sub_1C0521E78(v55, v32);
    sub_1C0521E78(v65, v32);
    v30 = _s12SiriOntology13UsoEntitySpanV2eeoiySbAC_ACtFZ_0(&v44, &v33);
    v75[8] = v41;
    v75[9] = v42;
    v76[0] = v43[0];
    *(v76 + 9) = *(v43 + 9);
    v75[5] = v38;
    v75[6] = v39;
    v75[7] = v40;
    v75[0] = v33;
    v75[1] = v34;
    v75[2] = v35;
    v75[3] = v36;
    v75[4] = v37;
    sub_1C05755CC(v75);
    v77[8] = v52;
    v77[9] = v53;
    v78[0] = v54[0];
    *(v78 + 9) = *(v54 + 9);
    v77[4] = v48;
    v77[5] = v49;
    v77[6] = v50;
    v77[7] = v51;
    v77[0] = v44;
    v77[1] = v45;
    v77[2] = v46;
    v77[3] = v47;
    sub_1C05755CC(v77);
    if ((v30 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 12;
    v5 += 12;
  }

  return 1;
}

uint64_t sub_1C055B00C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 52);
  v4 = (a2 + 52);
  while (v2)
  {
    v5 = vminv_u16(vmovn_s32(vceqq_s32(*(v3 - 5), *(v4 - 5)))) & (*(v3 - 1) == *(v4 - 1));
    if (*v3 == *v4)
    {
      result = v5;
    }

    else
    {
      result = 0;
    }

    v6 = result != 1 || v2-- == 1;
    v3 += 6;
    v4 += 6;
    if (v6)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C055B098(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1C095DF3C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C055B128(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 16);
  v8 = *(a2 + 16);
  if (v7 != v8)
  {
    return 0;
  }

  if (!v7 || a1 == a2)
  {
    return 1;
  }

  v22[174] = v5;
  v22[175] = v6;
  v22[166] = v8;
  v22[167] = v2;
  v22[164] = v3;
  v22[165] = v4;
  v9 = (MEMORY[0x1EEE9AC00](a1) + 32);
  v11 = (v10 + 32);
  for (i = v12 - 1; ; --i)
  {
    memcpy(__dst, v9, sizeof(__dst));
    memcpy(v18, v9, sizeof(v18));
    memcpy(v20, v11, sizeof(v20));
    memcpy(__src, v11, sizeof(__src));
    sub_1C0575738(__dst, &v16);
    sub_1C0575738(v20, &v16);
    v14 = _s12SiriOntology15TerminalElementV2eeoiySbAC_ACtFZ_0(v18);
    memcpy(v21, __src, sizeof(v21));
    sub_1C0575770(v21);
    memcpy(v22, v18, 0x540uLL);
    sub_1C0575770(v22);
    if (!v14)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v11 += 1344;
    v9 += 1344;
  }

  return 1;
}

uint64_t sub_1C055B298(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v3 = *(result + 16);
  if (v3 != *(v2 + 16))
  {
    return 0;
  }

  if (!v3 || result == v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = result + 32;
  v27 = v2 + 32;
  while (v4 != v3)
  {
    v6 = (v5 + 32 * v4);
    result = *v6;
    v7 = v6[1];
    v8 = v6[2];
    v9 = v6[3];
    v10 = (v27 + 32 * v4);
    v11 = v10[2];
    v12 = v10[3];
    if (result != *v10 || v7 != v10[1])
    {
      v14 = v10[1];
      result = sub_1C095DF3C();
      if ((result & 1) == 0)
      {
        return 0;
      }
    }

    v15 = v11;
    v16 = *(v8 + 16);
    if (v16 != *(v15 + 16))
    {
      return 0;
    }

    if (v16)
    {
      v17 = v8 == v15;
    }

    else
    {
      v17 = 1;
    }

    if (!v17)
    {
      v23 = (v8 + 40);
      v24 = (v15 + 40);
      while (v16)
      {
        result = *(v23 - 1);
        if (result != *(v24 - 1) || *v23 != *v24)
        {
          result = sub_1C095DF3C();
          if ((result & 1) == 0)
          {
            return 0;
          }
        }

        v23 += 2;
        v24 += 2;
        if (!--v16)
        {
          goto LABEL_20;
        }
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

LABEL_20:
    v18 = *(v9 + 16);
    if (v18 != *(v12 + 16))
    {
      return 0;
    }

    if (v18 && v9 != v12)
    {
      v26 = v5;

      if (!*(v9 + 16))
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v19 = 0;
      v20 = v18 - 1;
      v21 = 32;
      while (1)
      {
        memcpy(__dst, (v9 + v21), sizeof(__dst));
        result = memcpy(v30, (v9 + v21), sizeof(v30));
        if (v19 >= *(v12 + 16))
        {
          break;
        }

        memcpy(v32, (v12 + v21), sizeof(v32));
        memcpy(__src, (v12 + v21), sizeof(__src));
        sub_1C0575738(__dst, v28);
        sub_1C0575738(v32, v28);
        v22 = _s12SiriOntology15TerminalElementV2eeoiySbAC_ACtFZ_0(v30, __src);
        memcpy(v33, __src, sizeof(v33));
        sub_1C0575770(v33);
        memcpy(v34, v30, 0x540uLL);
        result = sub_1C0575770(v34);
        if ((v22 & 1) == 0)
        {

          return 0;
        }

        if (v20 == v19)
        {

          v5 = v26;
          goto LABEL_7;
        }

        v21 += 1344;
        if (++v19 >= *(v9 + 16))
        {
          goto LABEL_41;
        }
      }

LABEL_43:
      __break(1u);
      break;
    }

LABEL_7:
    ++v4;
    result = 1;
    if (v4 == v3)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C055B5AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 33);
    v4 = (a2 + 33);
    do
    {
      v5 = *(v3 - 1);
      v6 = *v3;
      v7 = *(v4 - 1);
      v8 = *v4;
      if (v5 == 2)
      {
        if (v7 != 2)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v7 == 2 || ((v7 ^ v5) & 1) != 0)
        {
          return result;
        }
      }

      if (v6 == 53)
      {
        if (v8 != 53)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if (v8 == 53 || v6 != v8)
        {
          return result;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1C055B65C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C055B6B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2)
  {
    v3 = a2;
    v4 = a1;
    if (a1 != a2)
    {
      for (i = 0; ; i += 48)
      {
        v7 = *(v4 + i + 48);
        v8 = *(v4 + i + 56);
        v24 = *(v4 + i + 64);
        v9 = *(v4 + i + 68);
        v10 = *(v4 + i + 72);
        v11 = *(v4 + i + 76);
        v13 = *(v3 + i + 48);
        v12 = *(v3 + i + 56);
        v23 = *(v3 + i + 64);
        v14 = *(v3 + i + 68);
        v15 = *(v3 + i + 72);
        v16 = *(v3 + i + 76);
        if (*(v4 + i + 32) != *(v3 + i + 32) || *(v4 + i + 40) != *(v3 + i + 40))
        {
          v17 = sub_1C095DF3C();
          v4 = a1;
          v3 = a2;
          if ((v17 & 1) == 0)
          {
            break;
          }
        }

        if (v8)
        {
          if (!v12)
          {
            return 0;
          }

          if (v7 != v13 || v8 != v12)
          {
            v18 = sub_1C095DF3C();
            v4 = a1;
            v3 = a2;
            if ((v18 & 1) == 0)
            {
              return 0;
            }
          }
        }

        else if (v12)
        {
          return 0;
        }

        if (v9)
        {
          if (!v14)
          {
            return 0;
          }
        }

        else
        {
          if (v24 == v23)
          {
            v19 = v14;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            return 0;
          }
        }

        if (v11)
        {
          if (!v16)
          {
            return 0;
          }
        }

        else
        {
          if (v10 == v15)
          {
            v6 = v16;
          }

          else
          {
            v6 = 1;
          }

          if (v6)
          {
            return 0;
          }
        }

        if (!--v2)
        {
          return 1;
        }
      }

      return 0;
    }
  }

  return 1;
}

uint64_t sub_1C055B824(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 24)
    {
      v7 = *(a1 + i + 48);
      v8 = *(a1 + i + 52);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 52);
      v11 = *(a1 + i + 32) == *(a2 + i + 32) && *(a1 + i + 40) == *(a2 + i + 40);
      if (!v11 && (sub_1C095DF3C() & 1) == 0)
      {
        break;
      }

      if (v8)
      {
        if (!v10)
        {
          return 0;
        }
      }

      else
      {
        if (v7 == v9)
        {
          v6 = v10;
        }

        else
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1C055B8F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v60 = &v49 - v11;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DE8, &qword_1C09704C0);
  v12 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v14 = &v49 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v49 - v21;
  v23 = *(a1 + 16);
  if (v23 != *(a2 + 16))
  {
LABEL_47:
    v48 = 0;
    return v48 & 1;
  }

  if (!v23 || a1 == a2)
  {
    v48 = 1;
    return v48 & 1;
  }

  v50 = v8;
  v24 = 0;
  v25 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v26 = a1 + v25;
  v56 = a2 + v25;
  v57 = v23;
  v54 = v4;
  v55 = (v5 + 48);
  v27 = *(v20 + 72);
  v28 = &qword_1EBE17400;
  v29 = v60;
  v51 = v27;
  v52 = v26;
  v53 = v15;
  while (1)
  {
    v58 = v24;
    v30 = v27 * v24;
    result = sub_1C0575968(v26 + v27 * v24, v22, type metadata accessor for Siri_Nl_Core_Protocol_Span);
    if (v58 == v57)
    {
      break;
    }

    sub_1C0575968(v56 + v30, v19, type metadata accessor for Siri_Nl_Core_Protocol_Span);
    v32 = *v22 == *v19 && *(v22 + 1) == *(v19 + 1);
    if (!v32 && (sub_1C095DF3C() & 1) == 0 || (*(v22 + 2) != *(v19 + 2) || *(v22 + 3) != *(v19 + 3)) && (sub_1C095DF3C() & 1) == 0 || *(v22 + 8) != *(v19 + 8) || *(v22 + 9) != *(v19 + 9))
    {
      goto LABEL_46;
    }

    v33 = *(v15 + 44);
    v34 = *(v59 + 48);
    sub_1C05149F8(&v22[v33], v14, v28, &unk_1C0970CA0);
    sub_1C05149F8(&v19[v33], &v14[v34], v28, &unk_1C0970CA0);
    v35 = v28;
    v36 = *v55;
    if ((*v55)(v14, 1, v4) == 1)
    {
      if (v36(&v14[v34], 1, v4) != 1)
      {
        goto LABEL_45;
      }

      sub_1C05145B4(v14, v28, &unk_1C0970CA0);
      v15 = v53;
      v4 = v54;
    }

    else
    {
      sub_1C05149F8(v14, v29, v28, &unk_1C0970CA0);
      if (v36(&v14[v34], 1, v4) == 1)
      {
        sub_1C0575908(v29, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
LABEL_45:
        sub_1C05145B4(v14, &qword_1EBE16DE8, &qword_1C09704C0);
LABEL_46:
        sub_1C0575908(v19, type metadata accessor for Siri_Nl_Core_Protocol_Span);
        sub_1C0575908(v22, type metadata accessor for Siri_Nl_Core_Protocol_Span);
        goto LABEL_47;
      }

      v37 = v50;
      sub_1C0575688(&v14[v34], v50, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      v38 = static Siri_Nl_Core_Protocol_UsoGraph.== infix(_:_:)(v60, v37);
      v29 = v60;
      sub_1C0575908(v37, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      sub_1C0575908(v29, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      sub_1C05145B4(v14, v35, &unk_1C0970CA0);
      v28 = v35;
      v15 = v53;
      v4 = v54;
      if ((v38 & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    if (*(v22 + 5) != *(v19 + 5))
    {
      goto LABEL_46;
    }

    v39 = *(v22 + 6);
    v40 = *(v19 + 6);
    v41 = *(v39 + 16);
    if (v41 != *(v40 + 16))
    {
      goto LABEL_46;
    }

    if (v41 && v39 != v40)
    {
      v42 = (v39 + 32);
      v43 = (v40 + 40);
      do
      {
        v45 = *v42;
        v42 += 2;
        v44 = v45;
        v46 = *(v43 - 1);
        if (*v43 == 1)
        {
          if (v46 > 1)
          {
            if (v46 == 2)
            {
              if (v44 != 2)
              {
                goto LABEL_46;
              }
            }

            else if (v44 != 3)
            {
              goto LABEL_46;
            }
          }

          else if (v46)
          {
            if (v44 != 1)
            {
              goto LABEL_46;
            }
          }

          else if (v44)
          {
            goto LABEL_46;
          }
        }

        else if (v44 != v46)
        {
          goto LABEL_46;
        }

        v43 += 16;
        --v41;
      }

      while (v41);
    }

    v47 = *(v15 + 40);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v48 = sub_1C095D73C();
    sub_1C0575908(v19, type metadata accessor for Siri_Nl_Core_Protocol_Span);
    sub_1C0575908(v22, type metadata accessor for Siri_Nl_Core_Protocol_Span);
    if (v48)
    {
      v24 = v58 + 1;
      v27 = v51;
      v26 = v52;
      if (v58 + 1 != v57)
      {
        continue;
      }
    }

    return v48 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C055BF38(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = (&v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v11 = (&v20 - v10);
  v12 = *(a1 + 16);
  if (v12 != *(a2 + 16))
  {
LABEL_16:
    v18 = 0;
    return v18 & 1;
  }

  if (v12 && a1 != a2)
  {
    v13 = (*(v9 + 80) + 32) & ~*(v9 + 80);
    v14 = a1 + v13;
    v15 = a2 + v13;
    v16 = *(v9 + 72);
    while (1)
    {
      sub_1C0575968(v14, v11, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
      sub_1C0575968(v15, v8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
      if (*v11 != *v8 || v11[1] != v8[1] || v11[2] != v8[2] || v11[3] != v8[3] || v11[4] != v8[4] || v11[5] != v8[5])
      {
        break;
      }

      v17 = *(v4 + 40);
      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
      v18 = sub_1C095D73C();
      sub_1C0575908(v8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
      sub_1C0575908(v11, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
      if (v18)
      {
        v15 += v16;
        v14 += v16;
        if (--v12)
        {
          continue;
        }
      }

      return v18 & 1;
    }

    sub_1C0575908(v8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
    sub_1C0575908(v11, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceSpan);
    goto LABEL_16;
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1C055C234(uint64_t a1, uint64_t a2)
{
  v66 = sub_1C095D32C();
  v4 = *(v66 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v66);
  v56 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v57 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v53 - v11;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v12 = *(*(v62 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v62);
  v58 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v53 - v15;
  v61 = type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  v16 = *(*(v61 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v61);
  v64 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
LABEL_26:
    v51 = 0;
    return v51 & 1;
  }

  if (!v22 || a1 == a2)
  {
    v51 = 1;
    return v51 & 1;
  }

  v23 = (*(v19 + 80) + 32) & ~*(v19 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v54 = (v4 + 32);
  v55 = (v4 + 8);
  v53 = *(v19 + 72);
  v26 = &unk_1C09933C0;
  v63 = &v53 - v20;
  v60 = (v4 + 48);
  while (1)
  {
    result = sub_1C0575968(v24, v21, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation);
    if (!v22)
    {
      break;
    }

    v28 = v64;
    sub_1C0575968(v25, v64, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation);
    v29 = *(v61 + 20);
    v30 = *(v62 + 48);
    v31 = v26;
    v32 = v65;
    sub_1C05149F8(&v21[v29], v65, &qword_1EBE16D68, v31);
    v33 = v28 + v29;
    v34 = v60;
    sub_1C05149F8(v33, v32 + v30, &qword_1EBE16D68, v31);
    v35 = *v34;
    if ((*v34)(v32, 1, v66) == 1)
    {
      if (v35(v65 + v30, 1, v66) != 1)
      {
        goto LABEL_24;
      }

      v26 = &unk_1C09933C0;
      sub_1C05145B4(v65, &qword_1EBE16D68, &unk_1C09933C0);
    }

    else
    {
      v36 = v65;
      sub_1C05149F8(v65, v59, &qword_1EBE16D68, v31);
      if (v35(v36 + v30, 1, v66) == 1)
      {
        goto LABEL_22;
      }

      v37 = v59;
      v38 = v56;
      (*v54)(v56, v65 + v30, v66);
      sub_1C0575584(&qword_1EBE16D78, 255, MEMORY[0x1E69D2680]);
      v39 = sub_1C095D73C();
      v40 = *v55;
      (*v55)(v38, v66);
      v40(v37, v66);
      sub_1C05145B4(v65, &qword_1EBE16D68, v31);
      v26 = v31;
      if ((v39 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    v41 = *(v61 + 24);
    v42 = *(v62 + 48);
    v43 = v58;
    sub_1C05149F8(&v63[v41], v58, &qword_1EBE16D68, v26);
    sub_1C05149F8(v64 + v41, v43 + v42, &qword_1EBE16D68, v26);
    if (v35(v43, 1, v66) == 1)
    {
      if (v35(v43 + v42, 1, v66) != 1)
      {
        v65 = v43;
LABEL_24:
        sub_1C05145B4(v65, &qword_1EBE16D70, &qword_1C0970440);
LABEL_25:
        sub_1C0575908(v64, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation);
        sub_1C0575908(v63, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation);
        goto LABEL_26;
      }

      sub_1C05145B4(v43, &qword_1EBE16D68, v26);
    }

    else
    {
      sub_1C05149F8(v43, v57, &qword_1EBE16D68, v26);
      if (v35(v43 + v42, 1, v66) == 1)
      {
        v59 = v57;
        v65 = v43;
LABEL_22:
        (*v55)(v59, v66);
        goto LABEL_24;
      }

      v44 = v56;
      (*v54)(v56, v43 + v42, v66);
      sub_1C0575584(&qword_1EBE16D78, 255, MEMORY[0x1E69D2680]);
      v45 = v57;
      v46 = sub_1C095D73C();
      v47 = *v55;
      (*v55)(v44, v66);
      v48 = v45;
      v26 = &unk_1C09933C0;
      v47(v48, v66);
      sub_1C05145B4(v43, &qword_1EBE16D68, &unk_1C09933C0);
      if ((v46 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v50 = v63;
    v49 = v64;
    v51 = sub_1C095D73C();
    sub_1C0575908(v49, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation);
    sub_1C0575908(v50, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation);
    if (v51)
    {
      v25 += v53;
      v24 += v53;
      v52 = v22-- == 1;
      v21 = v63;
      if (!v52)
      {
        continue;
      }
    }

    return v51 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C055C9E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier(0);
  v162 = *(v4 - 8);
  v5 = *(v162 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v184 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v187 = &v139 - v8;
  v178 = sub_1C095D26C();
  v9 = *(v178 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v178);
  v164 = &v139 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B58, &unk_1C099B6A0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v181 = &v139 - v14;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C18, &unk_1C0970490);
  v15 = *(*(v170 - 8) + 64);
  MEMORY[0x1EEE9AC00](v170);
  v171 = &v139 - v16;
  v177 = sub_1C095D2AC();
  v17 = *(v177 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v177);
  v165 = &v139 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC0, &unk_1C0997A50);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v183 = &v139 - v22;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DC8, &unk_1C09704A0);
  v23 = *(*(v172 - 8) + 64);
  MEMORY[0x1EEE9AC00](v172);
  v173 = &v139 - v24;
  v176 = sub_1C095D32C();
  v25 = *(v176 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v176);
  v166 = &v139 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v167 = &v139 - v30;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v31 = *(*(v174 - 8) + 64);
  MEMORY[0x1EEE9AC00](v174);
  v175 = &v139 - v32;
  v185 = type metadata accessor for Siri_Nl_Core_Protocol_UsoNode(0);
  v163 = *(v185 - 1);
  v33 = *(v163 + 64);
  v34 = MEMORY[0x1EEE9AC00](v185);
  v188 = (&v139 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v189 = &v139 - v36;
  v180 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
  v37 = *(v180 - 8);
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v180);
  v168 = (&v139 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0));
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD0, &unk_1C0997A40);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x1EEE9AC00](v40 - 8);
  v169 = (&v139 - v42);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DD8, &unk_1C09704B0);
  v44 = *(*(v43 - 8) + 64);
  MEMORY[0x1EEE9AC00](v43);
  v179 = &v139 - v45;
  v46 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v47 = *(*(v46 - 8) + 64);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v186 = (&v139 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  v50 = MEMORY[0x1EEE9AC00](v48);
  v53 = (&v139 - v52);
  v54 = *(a1 + 16);
  if (v54 != *(a2 + 16))
  {
LABEL_82:
    v134 = 0;
    return v134 & 1;
  }

  if (!v54 || a1 == a2)
  {
    v134 = 1;
    return v134 & 1;
  }

  v160 = v50;
  v55 = (*(v51 + 80) + 32) & ~*(v51 + 80);
  v56 = a1 + v55;
  v158 = a2 + v55;
  v157 = (v37 + 48);
  v150 = (v25 + 32);
  v151 = (v25 + 8);
  v161 = (v17 + 48);
  v148 = (v17 + 32);
  v149 = (v17 + 8);
  v57 = 0;
  v154 = (v9 + 48);
  v146 = (v9 + 32);
  v147 = (v9 + 8);
  v58 = *(v51 + 72);
  v182 = (&v139 - v52);
  v145 = v43;
  v159 = v54;
  v144 = a1 + v55;
  v155 = (v25 + 48);
  v143 = v58;
  while (1)
  {
    result = sub_1C0575968(v56 + v58 * v57, v53, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v57 == v159)
    {
      break;
    }

    v60 = v43;
    v61 = v186;
    sub_1C0575968(v158 + v58 * v57, v186, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v62 = *(v160 + 36);
    v63 = *(v60 + 48);
    v64 = v179;
    sub_1C05149F8(v53 + v62, v179, &qword_1EBE16DD0, &unk_1C0997A40);
    sub_1C05149F8(v61 + v62, v64 + v63, &qword_1EBE16DD0, &unk_1C0997A40);
    v65 = *v157;
    v66 = v180;
    v67 = (*v157)(v64, 1, v180);
    v153 = v57;
    if (v67 == 1)
    {
      if (v65(v64 + v63, 1, v66) != 1)
      {
        goto LABEL_71;
      }

      sub_1C05145B4(v64, &qword_1EBE16DD0, &unk_1C0997A40);
    }

    else
    {
      v68 = v169;
      sub_1C05149F8(v64, v169, &qword_1EBE16DD0, &unk_1C0997A40);
      if (v65(v64 + v63, 1, v66) == 1)
      {
        sub_1C0575908(v68, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
LABEL_71:
        v135 = &qword_1EBE16DD8;
        v136 = &unk_1C09704B0;
        goto LABEL_72;
      }

      v69 = v168;
      sub_1C0575688(v64 + v63, v168, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
      if (*v68 != *v69 || v68[1] != v69[1] || v68[2] != v69[2])
      {
        sub_1C0575908(v69, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
        sub_1C0575908(v68, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
        v135 = &qword_1EBE16DD0;
        v136 = &unk_1C0997A40;
LABEL_72:
        sub_1C05145B4(v64, v135, v136);
LABEL_81:
        sub_1C0575908(v186, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
        sub_1C0575908(v53, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
        goto LABEL_82;
      }

      v70 = *(v66 + 28);
      sub_1C095D38C();
      sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
      v71 = sub_1C095D73C();
      sub_1C0575908(v69, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
      sub_1C0575908(v68, type metadata accessor for Siri_Nl_Core_Protocol_SemVer);
      sub_1C05145B4(v64, &qword_1EBE16DD0, &unk_1C0997A40);
      if ((v71 & 1) == 0)
      {
        goto LABEL_81;
      }
    }

    v72 = *v53;
    v73 = *v186;
    v74 = *(*v53 + 16);
    if (v74 != *(*v186 + 16))
    {
      goto LABEL_81;
    }

    if (v74 && v72 != v73)
    {
      v75 = 0;
      v76 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v77 = v72 + v76;
      v152 = v73 + v76;
      v78 = *(v163 + 72);
      v142 = v74;
      v141 = v72 + v76;
      v140 = v78;
      do
      {
        result = sub_1C0575968(v77 + v78 * v75, v189, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
        if (v75 == v74)
        {
          goto LABEL_85;
        }

        v156 = v75;
        v79 = v188;
        sub_1C0575968(v152 + v78 * v75, v188, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
        v80 = *v79;
        v81 = v177;
        v82 = v178;
        v83 = v161;
        if (*v189 != v80)
        {
          goto LABEL_80;
        }

        v84 = v185[9];
        v85 = v175;
        v86 = *(v174 + 48);
        sub_1C05149F8(v189 + v84, v175, &qword_1EBE16D68, &unk_1C09933C0);
        sub_1C05149F8(v188 + v84, v85 + v86, &qword_1EBE16D68, &unk_1C09933C0);
        v87 = *v155;
        v88 = v176;
        if ((*v155)(v85, 1, v176) == 1)
        {
          v116 = v87(v85 + v86, 1, v88) == 1;
          v89 = v85;
          if (!v116)
          {
            goto LABEL_74;
          }

          sub_1C05145B4(v85, &qword_1EBE16D68, &unk_1C09933C0);
          v53 = v182;
          v90 = v183;
        }

        else
        {
          v91 = v167;
          sub_1C05149F8(v85, v167, &qword_1EBE16D68, &unk_1C09933C0);
          if (v87(v85 + v86, 1, v88) == 1)
          {
            (*v151)(v91, v88);
            v89 = v85;
LABEL_74:
            sub_1C05145B4(v89, &qword_1EBE16D70, &qword_1C0970440);
            v53 = v182;
            goto LABEL_80;
          }

          v92 = v166;
          (*v150)(v166, v85 + v86, v88);
          sub_1C0575584(&qword_1EBE16D78, 255, MEMORY[0x1E69D2680]);
          v93 = sub_1C095D73C();
          v94 = *v151;
          (*v151)(v92, v88);
          v94(v91, v88);
          sub_1C05145B4(v85, &qword_1EBE16D68, &unk_1C09933C0);
          v53 = v182;
          v90 = v183;
          v83 = v161;
          if ((v93 & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        v95 = v185[10];
        v96 = v173;
        v97 = *(v172 + 48);
        sub_1C05149F8(v189 + v95, v173, &qword_1EBE16DC0, &unk_1C0997A50);
        sub_1C05149F8(v188 + v95, v96 + v97, &qword_1EBE16DC0, &unk_1C0997A50);
        v98 = *v83;
        if ((*v83)(v96, 1, v81) == 1)
        {
          v116 = v98(v96 + v97, 1, v81) == 1;
          v99 = v96;
          if (!v116)
          {
            goto LABEL_76;
          }

          sub_1C05145B4(v96, &qword_1EBE16DC0, &unk_1C0997A50);
        }

        else
        {
          sub_1C05149F8(v96, v90, &qword_1EBE16DC0, &unk_1C0997A50);
          if (v98(v96 + v97, 1, v81) == 1)
          {
            (*v149)(v90, v81);
            v99 = v96;
LABEL_76:
            v137 = &qword_1EBE16DC8;
            v138 = &unk_1C09704A0;
            goto LABEL_79;
          }

          v100 = v165;
          (*v148)(v165, v96 + v97, v81);
          sub_1C0575584(&qword_1EBE16DE0, 255, MEMORY[0x1E69D2650]);
          v101 = sub_1C095D73C();
          v102 = *v149;
          (*v149)(v100, v81);
          v102(v183, v81);
          sub_1C05145B4(v96, &qword_1EBE16DC0, &unk_1C0997A50);
          if ((v101 & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        v103 = v185[11];
        v104 = v171;
        v105 = *(v170 + 48);
        sub_1C05149F8(v189 + v103, v171, &qword_1EBE16B58, &unk_1C099B6A0);
        sub_1C05149F8(v188 + v103, v104 + v105, &qword_1EBE16B58, &unk_1C099B6A0);
        v106 = *v154;
        if ((*v154)(v104, 1, v82) == 1)
        {
          v116 = v106(v104 + v105, 1, v82) == 1;
          v99 = v104;
          if (!v116)
          {
            goto LABEL_78;
          }

          sub_1C05145B4(v104, &qword_1EBE16B58, &unk_1C099B6A0);
        }

        else
        {
          v107 = v181;
          sub_1C05149F8(v104, v181, &qword_1EBE16B58, &unk_1C099B6A0);
          if (v106(v104 + v105, 1, v82) == 1)
          {
            (*v147)(v107, v82);
            v99 = v104;
LABEL_78:
            v137 = &qword_1EBE16C18;
            v138 = &unk_1C0970490;
LABEL_79:
            sub_1C05145B4(v99, v137, v138);
LABEL_80:
            sub_1C0575908(v188, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
            sub_1C0575908(v189, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
            goto LABEL_81;
          }

          v108 = v164;
          (*v146)(v164, v104 + v105, v82);
          sub_1C0575584(&qword_1EBE16C20, 255, MEMORY[0x1E69D2638]);
          v109 = sub_1C095D73C();
          v110 = *v147;
          (*v147)(v108, v82);
          v110(v181, v82);
          sub_1C05145B4(v104, &qword_1EBE16B58, &unk_1C099B6A0);
          if ((v109 & 1) == 0)
          {
            goto LABEL_80;
          }
        }

        if ((*(v189 + 8) != *(v188 + 1) || *(v189 + 16) != *(v188 + 2)) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_80;
        }

        if ((*(v189 + 24) != *(v188 + 3) || *(v189 + 32) != *(v188 + 4)) && (sub_1C095DF3C() & 1) == 0)
        {
          goto LABEL_80;
        }

        v111 = *(v189 + 40);
        v112 = *(v188 + 5);
        v113 = *(v111 + 16);
        if (v113 != *(v112 + 16))
        {
          goto LABEL_80;
        }

        if (v113 && v111 != v112)
        {
          v114 = (v111 + 40);
          v115 = (v112 + 40);
          do
          {
            v116 = *(v114 - 1) == *(v115 - 1) && *v114 == *v115;
            if (!v116 && (sub_1C095DF3C() & 1) == 0)
            {
              goto LABEL_80;
            }

            v114 += 2;
            v115 += 2;
          }

          while (--v113);
        }

        v117 = v185[8];
        sub_1C095D38C();
        sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
        v118 = v188;
        v119 = v189;
        v120 = sub_1C095D73C();
        sub_1C0575908(v118, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
        sub_1C0575908(v119, type metadata accessor for Siri_Nl_Core_Protocol_UsoNode);
        v74 = v142;
        if ((v120 & 1) == 0)
        {
          goto LABEL_81;
        }

        v75 = v156 + 1;
        v77 = v141;
        v78 = v140;
      }

      while (v156 + 1 != v142);
    }

    if ((sub_1C055F644(v53[1], v186[1]) & 1) == 0)
    {
      goto LABEL_81;
    }

    v121 = v53[2];
    v122 = v186[2];
    v123 = *(v121 + 16);
    if (v123 != *(v122 + 16))
    {
      goto LABEL_81;
    }

    if (v123 && v121 != v122)
    {
      v124 = (*(v162 + 80) + 32) & ~*(v162 + 80);
      v125 = v121 + v124;
      v126 = v122 + v124;
      v127 = *(v162 + 72);
      do
      {
        sub_1C0575968(v125, v187, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
        v128 = v184;
        sub_1C0575968(v126, v184, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
        v129 = v187;
        v130 = _s12SiriOntology0A37_Nl_Core_Protocol_UsoEntityIdentifierV2eeoiySbAC_ACtFZ_0(v187, v128);
        sub_1C0575908(v128, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
        v131 = v129;
        v53 = v182;
        sub_1C0575908(v131, type metadata accessor for Siri_Nl_Core_Protocol_UsoEntityIdentifier);
        if ((v130 & 1) == 0)
        {
          goto LABEL_81;
        }

        v126 += v127;
        v125 += v127;
      }

      while (--v123);
    }

    if ((sub_1C056013C(v53[3], v186[3]) & 1) == 0)
    {
      goto LABEL_81;
    }

    v132 = *(v160 + 32);
    sub_1C095D38C();
    sub_1C0575584(&qword_1EBE16B78, 255, MEMORY[0x1E69D26B8]);
    v133 = v186;
    v134 = sub_1C095D73C();
    sub_1C0575908(v133, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0575908(v53, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v134)
    {
      v57 = v153 + 1;
      v43 = v145;
      v56 = v144;
      v58 = v143;
      if (v153 + 1 != v159)
      {
        continue;
      }
    }

    return v134 & 1;
  }

  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}