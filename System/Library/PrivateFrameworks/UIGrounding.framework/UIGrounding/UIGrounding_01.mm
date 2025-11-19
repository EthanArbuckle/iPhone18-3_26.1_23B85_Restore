uint64_t storeEnumTagSinglePayload for UIGroundingElementType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata accessor for UIGroundingElement()
{
  result = qword_27CFE1600;
  if (!qword_27CFE1600)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_221C70BA0()
{
  sub_221C70E98();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_221C70E98()
{
  if (!qword_27CFE1610)
  {
    sub_221C7B0FC();
    v0 = sub_221C7B6DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CFE1610);
    }
  }
}

__n128 __swift_memcpy16_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for UIGroundingElement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UIGroundingElement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_221C71060()
{
  result = qword_27CFE1618;
  if (!qword_27CFE1618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1618);
  }

  return result;
}

unint64_t sub_221C710B8()
{
  result = qword_27CFE1620;
  if (!qword_27CFE1620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1620);
  }

  return result;
}

unint64_t sub_221C71110()
{
  result = qword_27CFE1628;
  if (!qword_27CFE1628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1628);
  }

  return result;
}

unint64_t sub_221C71164()
{
  result = qword_27CFE1638;
  if (!qword_27CFE1638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1638);
  }

  return result;
}

unint64_t sub_221C711B8()
{
  result = qword_27CFE1648;
  if (!qword_27CFE1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1648);
  }

  return result;
}

unint64_t sub_221C7120C()
{
  result = qword_27CFE1658;
  if (!qword_27CFE1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1658);
  }

  return result;
}

unint64_t sub_221C71260()
{
  result = qword_27CFE1660;
  if (!qword_27CFE1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1660);
  }

  return result;
}

uint64_t sub_221C712B4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_221C7B0FC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_221C712F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE15C8, &qword_221C7D7C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_221C7137C()
{
  result = qword_27CFE1670;
  if (!qword_27CFE1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1670);
  }

  return result;
}

unint64_t sub_221C713D4()
{
  result = qword_27CFE1678;
  if (!qword_27CFE1678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1678);
  }

  return result;
}

unint64_t sub_221C7142C()
{
  result = qword_27CFE1680;
  if (!qword_27CFE1680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1680);
  }

  return result;
}

Swift::String __swiftcall UIGroundingElement.parse(index:withBoundingBox:)(Swift::Int index, Swift::Bool withBoundingBox)
{
  v4 = *(v2 + 56);
  v45 = index;
  v5 = sub_221C7B96C();
  v7 = v6;
  swift_beginAccess();
  if (*(v2 + 72))
  {
    v8 = *(v2 + 64);
    v9 = *(v2 + 72);
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  v43 = 0;
  v44 = 0xE000000000000000;
  if (withBoundingBox)
  {
    v43 = 0xD000000000000017;
    v44 = 0x8000000221C7E7B0;

    sub_221C7B74C();

    v39[0] = 0x203A7466656CLL;
    v39[1] = 0xE600000000000000;
    v10 = *(v2 + 24);
    v11 = *(v2 + 32);
    v12 = *(v2 + 40);
    v13 = *(v2 + 48);
    v46.origin.x = v10;
    v46.origin.y = v11;
    v46.size.width = v12;
    v46.size.height = v13;
    CGRectGetMinX(v46);
    v14 = sub_221C7B68C();
    MEMORY[0x223DA6030](v14);

    MEMORY[0x223DA6030](0x3A706F74203B7870, 0xE900000000000020);
    v47.origin.x = v10;
    v47.origin.y = v11;
    v47.size.width = v12;
    v47.size.height = v13;
    CGRectGetMinY(v47);
    v15 = sub_221C7B68C();
    MEMORY[0x223DA6030](v15);

    MEMORY[0x223DA6030](3897456, 0xE300000000000000);
    MEMORY[0x223DA6030](0x203A7466656CLL, 0xE600000000000000);

    sub_221C7B74C();

    strcpy(v39, "width: ");
    v39[1] = 0xE700000000000000;
    v48.origin.x = v10;
    v48.origin.y = v11;
    v48.size.width = v12;
    v48.size.height = v13;
    CGRectGetWidth(v48);
    v16 = sub_221C7B68C();
    MEMORY[0x223DA6030](v16);

    MEMORY[0x223DA6030](0x67696568203B7870, 0xEC000000203A7468);
    v49.origin.x = v10;
    v49.origin.y = v11;
    v49.size.width = v12;
    v49.size.height = v13;
    CGRectGetHeight(v49);
    v17 = sub_221C7B68C();
    MEMORY[0x223DA6030](v17);

    MEMORY[0x223DA6030](3897456, 0xE300000000000000);
    MEMORY[0x223DA6030](v39[0], 0xE700000000000000);
  }

  else
  {
  }

  v18 = *(v2 + 16);
  if (v18 <= 6)
  {
    if (*(v2 + 16) > 2u)
    {
      if (v18 - 5 >= 2)
      {
        if (v18 == 3)
        {

          strcpy(v39, "<img id=");
          WORD1(v39[1]) = 0;
          HIDWORD(v39[1]) = -385875968;
          MEMORY[0x223DA6030](v5, v7);

          MEMORY[0x223DA6030](34, 0xE100000000000000);
          MEMORY[0x223DA6030](v43, v44);

          v41 = v39[0];
          v42 = v39[1];
          v39[0] = 0;
          v39[1] = 0xE000000000000000;
          sub_221C7B74C();

          strcpy(v40, " class=icon ");
          HIWORD(v40[1]) = -4864;
          swift_beginAccess();
          v20 = *(v2 + 80);
          v19 = *(v2 + 88);
          if (v19)
          {
            v21 = *(v2 + 80);
          }

          else
          {
            v21 = 0;
          }

          if (v19)
          {
            v22 = *(v2 + 88);
          }

          else
          {
            v22 = 0xE000000000000000;
          }

          MEMORY[0x223DA6030](v21, v22);

          MEMORY[0x223DA6030](0x223D746C612022, 0xE700000000000000);
          v24 = *(v2 + 64);
          v23 = *(v2 + 72);
          if (v23)
          {
            v25 = *(v2 + 64);
          }

          else
          {
            v25 = 0;
          }

          if (v23)
          {
            v26 = *(v2 + 72);
          }

          else
          {
            v26 = 0xE000000000000000;
          }

          MEMORY[0x223DA6030](v25, v26);

          MEMORY[0x223DA6030](4075298, 0xE300000000000000);
          MEMORY[0x223DA6030](v40[0], v40[1]);

          MEMORY[0x223DA6030](v41, v42);

          MEMORY[0x223DA6030](1046556476, 0xE400000000000000);
          v27 = 4088124;
          v28 = 0xE300000000000000;
          goto LABEL_54;
        }

        goto LABEL_38;
      }

      goto LABEL_28;
    }

    if (v18 - 1 < 2)
    {
LABEL_28:
      if (v4)
      {
        MEMORY[0x223DA6030](v8, v9);

        MEMORY[0x223DA6030](1046556476, 0xE400000000000000);
        v8 = 4088124;
        v9 = 0xE300000000000000;
      }

      strcpy(v39, "<div id=");
      WORD1(v39[1]) = 0;
      HIDWORD(v39[1]) = -385875968;
      MEMORY[0x223DA6030](v5, v7);

      MEMORY[0x223DA6030](34, 0xE100000000000000);
      MEMORY[0x223DA6030](v43, v44);

      MEMORY[0x223DA6030](62, 0xE100000000000000);

      MEMORY[0x223DA6030](v8, v9);

      v29 = 0x3E7669642F3CLL;
      v30 = 0xE600000000000000;
      goto LABEL_31;
    }

    sub_221C7B74C();

    strcpy(v39, "<button id=");
    BYTE5(v39[1]) = 0;
    HIWORD(v39[1]) = -5120;
    MEMORY[0x223DA6030](v5, v7);

    MEMORY[0x223DA6030](34, 0xE100000000000000);
    MEMORY[0x223DA6030](v43, v44);

    MEMORY[0x223DA6030](62, 0xE100000000000000);
    v35 = *(v2 + 72);
    if (v35)
    {
      v36 = *(v2 + 64);
    }

    else
    {
      v36 = 0;
    }

    if (v35)
    {
      v37 = *(v2 + 72);
    }

    else
    {
      v37 = 0xE000000000000000;
    }

    MEMORY[0x223DA6030](v36, v37);

    v29 = 0x6E6F747475622F3CLL;
    v30 = 0xE90000000000003ELL;
LABEL_31:
    MEMORY[0x223DA6030](v29, v30);

    v27 = v39[0];
    v28 = v39[1];
    goto LABEL_54;
  }

  if (*(v2 + 16) > 8u)
  {
    if (v18 - 9 >= 2)
    {
      if (v18 != 11)
      {

        v27 = 0;
        v28 = 0xE000000000000000;
        goto LABEL_54;
      }

LABEL_38:
      swift_beginAccess();
      if (*(v2 + 88))
      {
        v33 = *(v2 + 80);
        v34 = *(v2 + 88);
      }

      else
      {
        v34 = 0xE500000000000000;
        v33 = 0x7475706E69;
      }

      sub_221C7B74C();

      v41 = 0x69207475706E693CLL;
      v42 = 0xEB00000000223D64;
      MEMORY[0x223DA6030](v5, v7);

      MEMORY[0x223DA6030](34, 0xE100000000000000);
      MEMORY[0x223DA6030](v43, v44);

      sub_221C7B74C();

      MEMORY[0x223DA6030](v33, v34);

      MEMORY[0x223DA6030](15906, 0xE200000000000000);

      MEMORY[0x223DA6030](v8, v9);

      MEMORY[0x223DA6030](0x3E7475706E692F3CLL, 0xE800000000000000);

      MEMORY[0x223DA6030](0xD000000000000018, 0x8000000221C7E790);

      goto LABEL_53;
    }

    sub_221C7B74C();

    strcpy(v39, "<input id=");
    HIDWORD(v39[1]) = -352321536;
    MEMORY[0x223DA6030](v5, v7);

    MEMORY[0x223DA6030](34, 0xE100000000000000);
    MEMORY[0x223DA6030](v43, v44);

    MEMORY[0x223DA6030](62, 0xE100000000000000);

    MEMORY[0x223DA6030](v8, v9);

    v29 = 0x3E7475706E692F3CLL;
    v30 = 0xE800000000000000;
    goto LABEL_31;
  }

  if (v18 != 7)
  {
    if (v4)
    {
      MEMORY[0x223DA6030](v8, v9);

      MEMORY[0x223DA6030](1046556476, 0xE400000000000000);
      v8 = 4088124;
      v9 = 0xE300000000000000;
    }

    strcpy(v39, "<p id=");
    v39[1] = 0xE700000000000000;
    MEMORY[0x223DA6030](v5, v7);

    MEMORY[0x223DA6030](34, 0xE100000000000000);
    MEMORY[0x223DA6030](v43, v44);

    MEMORY[0x223DA6030](62, 0xE100000000000000);

    MEMORY[0x223DA6030](v8, v9);

    v29 = 1047539516;
    v30 = 0xE400000000000000;
    goto LABEL_31;
  }

  strcpy(v39, "<img id=");
  WORD1(v39[1]) = 0;
  HIDWORD(v39[1]) = -385875968;
  MEMORY[0x223DA6030](v5, v7);

  MEMORY[0x223DA6030](34, 0xE100000000000000);
  MEMORY[0x223DA6030](v43, v44);

  v31 = *(v2 + 72);
  if (v31)
  {
    v32 = *(v2 + 64);

    MEMORY[0x223DA6030](v32, v31);

    MEMORY[0x223DA6030](34, 0xE100000000000000);
    MEMORY[0x223DA6030](0x223D746C6120, 0xE600000000000000);
  }

  MEMORY[0x223DA6030](4075296, 0xE300000000000000);
  v27 = v39[0];
  v28 = v39[1];
  if (v4)
  {
    v41 = 4088124;
    v42 = 0xE300000000000000;
    MEMORY[0x223DA6030](v39[0]);

    MEMORY[0x223DA6030](1046556476, 0xE400000000000000);
LABEL_53:
    v27 = v41;
    v28 = v42;
  }

LABEL_54:
  result._object = v28;
  result._countAndFlagsBits = v27;
  return result;
}

uint64_t sub_221C72008(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1952867692;
    }

    else
    {
      v3 = 0x7468676972;
    }

    if (v2 == 2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 1853321060;
    }

    else
    {
      v3 = 28789;
    }

    if (v2)
    {
      v4 = 0xE400000000000000;
    }

    else
    {
      v4 = 0xE200000000000000;
    }
  }

  v5 = 0xE200000000000000;
  v6 = 28789;
  v7 = 0xE400000000000000;
  v8 = 1952867692;
  if (a2 != 2)
  {
    v8 = 0x7468676972;
    v7 = 0xE500000000000000;
  }

  if (a2)
  {
    v6 = 1853321060;
    v5 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_221C7B97C();
  }

  return v11 & 1;
}

uint64_t sub_221C7211C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000657079;
  v3 = 0x54746E656D656C65;
  v4 = a1;
  v5 = 0xD000000000000015;
  v6 = 0x8000000221C7E2C0;
  if (a1 != 5)
  {
    v5 = 0x49746E656D656C65;
    v6 = 0xE900000000000044;
  }

  v7 = 0x6C616E7265747865;
  v8 = 0xEA00000000004449;
  if (a1 != 3)
  {
    v7 = 0x746E6F4374786574;
    v8 = 0xEC00000073746E65;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE400000000000000;
  v10 = 1952671090;
  if (a1 != 1)
  {
    v10 = 0x6C62616B63696C63;
    v9 = 0xE900000000000065;
  }

  if (a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x54746E656D656C65;
  }

  if (!a1)
  {
    v9 = 0xEB00000000657079;
  }

  if (a1 <= 2u)
  {
    v12 = v11;
  }

  else
  {
    v12 = v5;
  }

  if (v4 <= 2)
  {
    v13 = v9;
  }

  else
  {
    v13 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xE400000000000000;
        if (v12 != 1952671090)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0xE900000000000065;
        if (v12 != 0x6C62616B63696C63)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0x8000000221C7E2C0;
        if (v12 != 0xD000000000000015)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v2 = 0xE900000000000044;
        if (v12 != 0x49746E656D656C65)
        {
          goto LABEL_39;
        }
      }

      goto LABEL_36;
    }

    if (a2 == 3)
    {
      v2 = 0xEA00000000004449;
      if (v12 != 0x6C616E7265747865)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v3 = 0x746E6F4374786574;
    v2 = 0xEC00000073746E65;
  }

  if (v12 != v3)
  {
LABEL_39:
    v14 = sub_221C7B97C();
    goto LABEL_40;
  }

LABEL_36:
  if (v13 != v2)
  {
    goto LABEL_39;
  }

  v14 = 1;
LABEL_40:

  return v14 & 1;
}

uint64_t sub_221C7235C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE800000000000000;
  if (a1 <= 3u)
  {
    v11 = 0x676E69646E756F62;
    v12 = 0xEB00000000786F42;
    if (a1 != 2)
    {
      v11 = 0x6D6574737973;
      v12 = 0xE600000000000000;
    }

    v13 = 7761509;
    if (a1)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v13 = 0x73746E656D656C65;
    }

    if (a1 <= 1u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    if (v2 <= 1)
    {
      v10 = v3;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v4 = 0x65736E6F70736572;
    v5 = 0x7265755172657375;
    v6 = 0xE900000000000079;
    if (a1 != 7)
    {
      v5 = 0x655674706D6F7270;
      v6 = 0xED00006E6F697372;
    }

    if (a1 != 6)
    {
      v4 = v5;
      v3 = v6;
    }

    v7 = 0xE400000000000000;
    v8 = 1919251317;
    if (a1 != 4)
    {
      v8 = 0x6E61747369737361;
      v7 = 0xE900000000000074;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v14 = 0xEB00000000786F42;
        if (v9 != 0x676E69646E756F62)
        {
          goto LABEL_52;
        }
      }

      else
      {
        v14 = 0xE600000000000000;
        if (v9 != 0x6D6574737973)
        {
          goto LABEL_52;
        }
      }
    }

    else if (a2)
    {
      v14 = 0xE300000000000000;
      if (v9 != 7761509)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE800000000000000;
      if (v9 != 0x73746E656D656C65)
      {
        goto LABEL_52;
      }
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v14 = 0xE400000000000000;
      if (v9 != 1919251317)
      {
        goto LABEL_52;
      }
    }

    else
    {
      v14 = 0xE900000000000074;
      if (v9 != 0x6E61747369737361)
      {
LABEL_52:
        v15 = sub_221C7B97C();
        goto LABEL_53;
      }
    }
  }

  else if (a2 == 6)
  {
    v14 = 0xE800000000000000;
    if (v9 != 0x65736E6F70736572)
    {
      goto LABEL_52;
    }
  }

  else if (a2 == 7)
  {
    v14 = 0xE900000000000079;
    if (v9 != 0x7265755172657375)
    {
      goto LABEL_52;
    }
  }

  else
  {
    v14 = 0xED00006E6F697372;
    if (v9 != 0x655674706D6F7270)
    {
      goto LABEL_52;
    }
  }

  if (v10 != v14)
  {
    goto LABEL_52;
  }

  v15 = 1;
LABEL_53:

  return v15 & 1;
}

uint64_t sub_221C72630(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 7364980;
    }

    else
    {
      v3 = 0x726568746FLL;
    }

    if (v2)
    {
      v4 = 0xE300000000000000;
    }

    else
    {
      v4 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xE500000000000000;
    v3 = 0x6570697773;
  }

  else if (a1 == 3)
  {
    v3 = 0x72746E6574786574;
    v4 = 0xE900000000000079;
  }

  else
  {
    v4 = 0xE400000000000000;
    v3 = 1886352499;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 7364980;
    }

    else
    {
      v9 = 0x726568746FLL;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE500000000000000;
    }

    if (v3 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0x72746E6574786574;
    v6 = 0xE900000000000079;
    if (a2 != 3)
    {
      v5 = 1886352499;
      v6 = 0xE400000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6570697773;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v3 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v4 != v8)
  {
LABEL_33:
    v10 = sub_221C7B97C();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_221C72798()
{
  sub_221C7B5AC();
}

uint64_t sub_221C72900()
{
  v1 = OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_boundingBox;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_221C72944(char a1)
{
  v3 = OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_boundingBox;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_221C729F4()
{
  v1 = *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___response);
  v2 = v1;
  if (v1 == 1)
  {
    v2 = *(*(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_query) + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_response);
    *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___response) = v2;
    swift_retain_n();
  }

  sub_221C72A68(v1);
  return v2;
}

uint64_t sub_221C72A68(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_221C72A78(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___response);
  *(v1 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___response) = a1;
  return sub_221C72A90(v2);
}

uint64_t sub_221C72A90(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t (*sub_221C72AA0(uint64_t *a1))(void *a1, char a2)
{
  a1[1] = v1;
  *a1 = sub_221C729F4();
  return sub_221C72AE8;
}

uint64_t sub_221C72AE8(void *a1, char a2)
{
  v2 = a1[1];
  v3 = *(v2 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___response);
  *(v2 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___response) = *a1;
  if (a2)
  {

    sub_221C72A90(v3);
  }

  else
  {

    return sub_221C72A90(v3);
  }
}

uint64_t sub_221C72B60()
{
  v1 = sub_221C7B3DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1500, qword_221C7DD40);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8, v9);
  v11 = &v23 - v10;
  v12 = (v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___user);
  v13 = *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___user);
  v14 = *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___user + 8);
  v15 = v13;
  if (v14 == 1)
  {
    v16 = *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_query);
    v17 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_user;
    swift_beginAccess();
    sub_221C72D98(v16 + v17, v11);
    if ((*(v2 + 48))(v11, 1, v1))
    {
      sub_221C665AC(v11, &qword_27CFE1500, qword_221C7DD40);
      v15 = 0;
      v18 = 0;
    }

    else
    {
      (*(v2 + 16))(v6, v11, v1);
      sub_221C665AC(v11, &qword_27CFE1500, qword_221C7DD40);
      v15 = sub_221C5E668();
      v18 = v19;
      (*(v2 + 8))(v6, v1);
    }

    v20 = *v12;
    v21 = v12[1];
    *v12 = v15;
    v12[1] = v18;

    sub_221C72E08(v20, v21);
  }

  sub_221C72E1C(v13, v14);
  return v15;
}

uint64_t sub_221C72D98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1500, qword_221C7DD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_221C72E08(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_221C72E1C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_221C72E30(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___user);
  v4 = *(v2 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___user);
  v5 = *(v2 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___user + 8);
  *v3 = a1;
  v3[1] = a2;
  return sub_221C72E08(v4, v5);
}

uint64_t (*sub_221C72E50(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_221C72B60();
  a1[1] = v3;
  return sub_221C72E98;
}

uint64_t sub_221C72E98(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = (a1[2] + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___user);
  v4 = *v3;
  v5 = v3[1];
  *v3 = *a1;
  v3[1] = v2;
  if (a2)
  {

    sub_221C72E08(v4, v5);
  }

  else
  {

    return sub_221C72E08(v4, v5);
  }
}

uint64_t UIGroundingQuery.__allocating_init(elements:env:template:withBoundingBox:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v8 = *(v4 + 48);
  v9 = *(v4 + 52);
  v10 = swift_allocObject();
  UIGroundingQuery.init(elements:env:template:withBoundingBox:)(a1, a2, v11, a4);
  return v10;
}

uint64_t UIGroundingQuery.init(elements:env:template:withBoundingBox:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  v49 = a4;
  v54 = a1;
  v6 = sub_221C7B49C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v53 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_221C7B4AC();
  v10 = *(v52 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v52, v12);
  v51 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1500, qword_221C7DD40);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8, v16);
  v18 = &v48 - v17;
  v19 = sub_221C7B39C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a2;
  v25 = (v4 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_userQuery);
  *v25 = 0;
  v25[1] = 0;
  *(v4 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___response) = 1;
  *(v4 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___user) = xmmword_221C7DD20;
  sub_221C7B38C();
  (*(v20 + 32))(v4 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_log, v24, v19);
  type metadata accessor for TemplateManager();
  v26 = swift_allocObject();
  *(v26 + 24) = 0xD000000000000226;
  *(v26 + 32) = 0x8000000221C7E7D0;
  *(v26 + 16) = 1;
  *(v4 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_template) = v26;
  v27 = sub_221C7B3DC();
  v28 = *(*(v27 - 8) + 56);
  v28(v18, 1, 1, v27);
  v29 = type metadata accessor for UIGroundingChatManager();
  v30 = *(v29 + 48);
  v31 = *(v29 + 52);
  v32 = swift_allocObject();
  v33 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_user;
  v28((v32 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_user), 1, 1, v27);
  v34 = (v32 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_assistant);
  *v34 = 0;
  v34[1] = 0;
  v35 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_response;
  *(v32 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_response) = 0;
  v36 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager____lazy_storage___chat;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1478, &qword_221C7CE70);
  (*(*(v37 - 8) + 56))(v32 + v36, 1, 1, v37);
  *(v32 + 16) = v50;
  *(v32 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_version) = 1;
  (*(v10 + 104))(v51, *MEMORY[0x277D42E48], v52);

  sub_221C7B45C();
  sub_221C7B3AC();
  swift_beginAccess();
  sub_221C764AC(v18, v32 + v33);
  swift_endAccess();
  v38 = v34[1];
  *v34 = 0;
  v34[1] = 0;

  v39 = *(v32 + v35);
  *(v32 + v35) = 0;

  sub_221C7B38C();
  sub_221C665AC(v18, &qword_27CFE1500, qword_221C7DD40);
  *(v4 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_query) = v32;

  v55[0] = sub_221C7651C(v40);
  sub_221C7596C(v55);

  v41 = v55[0];
  if ((v55[0] & 0x8000000000000000) == 0 && (v55[0] & 0x4000000000000000) == 0)
  {
    v42 = *(v55[0] + 16);
    if (v42)
    {
      goto LABEL_4;
    }

LABEL_11:

    *(v4 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_elements) = v41;
    *(v4 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_boundingBox) = v49 & 1;
    return v4;
  }

  v42 = sub_221C7B7DC();
  if (!v42)
  {
    goto LABEL_11;
  }

LABEL_4:
  if (v42 >= 1)
  {
    for (i = 0; i != v42; ++i)
    {
      if ((v41 & 0xC000000000000001) != 0)
      {
        v44 = MEMORY[0x223DA61E0](i, v41);
      }

      else
      {
        v46 = *(v41 + 8 * i + 32);
      }

      v45 = v44 + OBJC_IVAR____TtC11UIGrounding18UIGroundingElement_elementID;
      *v45 = i;
      *(v45 + 8) = 0;
    }

    goto LABEL_11;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_221C73564(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = v2;
  v6 = swift_task_alloc();
  *(v3 + 48) = v6;
  *v6 = v3;
  v6[1] = sub_221C7360C;

  return sub_221C743E0(a1, a2);
}

uint64_t sub_221C7360C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v7 = *v2;
  *(v3 + 56) = a1;
  *(v3 + 64) = v1;

  if (v1)
  {
    v5 = sub_221C737B4;
  }

  else
  {
    v5 = sub_221C73720;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_221C73720()
{
  v1 = *(v0 + 56);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v1 + 56);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_221C737B4()
{
  v1 = v0[8];
  v2 = v0[5];
  MEMORY[0x223DA6790](v1);
  v3 = sub_221C7B37C();
  v4 = sub_221C7B6AC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[8];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x223DA6790](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_221C5D000, v3, v4, "Find Element resulted in error %@", v7, 0xCu);
    sub_221C665AC(v8, &qword_27CFE1698, qword_221C7DD60);
    MEMORY[0x223DA68B0](v8, -1, -1);
    MEMORY[0x223DA68B0](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_221C73924()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_221C739CC;

  return sub_221C743E0(0xD000000000000029, 0x8000000221C7EA40);
}

uint64_t sub_221C739CC(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_221C73B08, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_221C73B08()
{
  v1 = v0[4];
  v2 = v0[2];
  MEMORY[0x223DA6790](v1);
  v3 = sub_221C7B37C();
  v4 = sub_221C7B6AC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[4];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x223DA6790](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_221C5D000, v3, v4, "Close view resulted in error %@", v7, 0xCu);
    sub_221C665AC(v8, &qword_27CFE1698, qword_221C7DD60);
    MEMORY[0x223DA68B0](v8, -1, -1);
    MEMORY[0x223DA68B0](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_221C73C78(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = v2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_221C73D20;

  return sub_221C743E0(a1, a2);
}

uint64_t sub_221C73D20(uint64_t a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;
  *(v5 + 32) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_221C73E5C, 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t sub_221C73E5C()
{
  v1 = v0[4];
  v2 = v0[2];
  MEMORY[0x223DA6790](v1);
  v3 = sub_221C7B37C();
  v4 = sub_221C7B6AC();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[4];
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    MEMORY[0x223DA6790](v6);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_221C5D000, v3, v4, "Find Action resulted in error %@", v7, 0xCu);
    sub_221C665AC(v8, &qword_27CFE1698, qword_221C7DD60);
    MEMORY[0x223DA68B0](v8, -1, -1);
    MEMORY[0x223DA68B0](v7, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_221C73FCC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 40) = v5;
  *v5 = v2;
  v5[1] = sub_221C74070;

  return sub_221C743E0(a1, a2);
}

uint64_t sub_221C74070(uint64_t a1)
{
  v3 = *(*v2 + 40);
  v4 = *v2;
  *(v4 + 48) = a1;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_221C741A4, 0, 0);
  }
}

uint64_t sub_221C741A4()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    swift_beginAccess();
    v2 = *(v1 + 56);
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_221C7423C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_221C742E0;

  return sub_221C743E0(a1, a2);
}

uint64_t sub_221C742E0(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_221C743E0(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v3[19] = *v2;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1500, qword_221C7DD40) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v5 = sub_221C7B3DC();
  v3[21] = v5;
  v6 = *(v5 - 8);
  v3[22] = v6;
  v7 = *(v6 + 64) + 15;
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_221C74504, 0, 0);
}

id sub_221C74504()
{
  v1 = v0[18];
  v2 = *(v1 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_query);
  if (*(v2 + 16) != 1)
  {
LABEL_5:
    v6 = v0[22];
    v7 = v0[23];
    v8 = v0[20];
    v23 = v0[21];
    v10 = v0[16];
    v9 = v0[17];
    type metadata accessor for TemplateManager();
    inited = swift_initStackObject();
    v0[24] = inited;
    *(inited + 24) = 0xD000000000000226;
    *(inited + 32) = 0x8000000221C7E7D0;
    *(inited + 16) = 1;
    v12 = *(v1 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_elements);
    v0[25] = v12;
    v22 = v2;
    v13 = OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_boundingBox;
    swift_beginAccess();
    sub_221C6B494(v10, v9, v12, *(v1 + v13), v7);
    (*(v6 + 16))(v8, v7, v23);
    (*(v6 + 56))(v8, 0, 1, v23);
    v14 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_user;
    swift_beginAccess();
    sub_221C781C8(v8, v22 + v14);
    swift_endAccess();
    v15 = (v1 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_userQuery);
    v16 = *(v1 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_userQuery + 8);
    *v15 = v10;
    v15[1] = v9;

    v17 = swift_task_alloc();
    v0[26] = v17;
    *v17 = v0;
    v17[1] = sub_221C747B0;

    return sub_221C698E8();
  }

  result = MobileGestalt_get_current_device();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v4 = result;
  generativeModelSystemsCapability = MobileGestalt_get_generativeModelSystemsCapability();

  if (generativeModelSystemsCapability)
  {
    v1 = v0[18];
    goto LABEL_5;
  }

  sub_221C78238();
  swift_allocError();
  *v18 = 0;
  swift_willThrow();
  v19 = v0[23];
  v20 = v0[20];

  v21 = v0[1];

  return v21();
}

uint64_t sub_221C747B0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 208);
  v7 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v5 = sub_221C74C68;
  }

  else
  {
    v5 = sub_221C748C4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

unint64_t sub_221C748C4()
{
  v1 = v0[27];
  if (v1)
  {
    if (*(v1 + 16) <= 1u && *(v1 + 16))
    {
      goto LABEL_6;
    }

    v2 = sub_221C7B97C();

    if (v2)
    {
      goto LABEL_8;
    }

    v3 = *(v1 + 16);
    if (v3 == 3)
    {
LABEL_6:
    }

    else
    {
      v4 = sub_221C7B97C();

      if ((v4 & 1) == 0)
      {
LABEL_16:
        v10 = v0[18];
        v11 = *(v10 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___response);
        *(v10 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___response) = v0[27];
        sub_221C72A90(v11);
        goto LABEL_17;
      }
    }

LABEL_8:
    v5 = *(v1 + 24);
    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = v0[25];
      if (v6 >> 62)
      {
        if (v6 < 0)
        {
          v21 = v0[25];
        }

        if (v5 < sub_221C7B7DC())
        {
LABEL_11:
          result = *(v1 + 24);
          if ((v6 & 0xC000000000000001) == 0)
          {
            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else if (result < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v8 = *(v0[25] + 8 * result + 32);

LABEL_15:
              swift_beginAccess();
              v9 = *(v1 + 56);
              *(v1 + 56) = v8;

              goto LABEL_16;
            }

            __break(1u);
            return result;
          }

          v8 = MEMORY[0x223DA61E0](result, v0[25]);
          goto LABEL_15;
        }
      }

      else if (v5 < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }
    }

    v23 = v0[22];
    v22 = v0[23];
    v24 = v0[21];
    sub_221C78238();
    swift_allocError();
    *v25 = 1;
    swift_willThrow();

    (*(v23 + 8))(v22, v24);
    goto LABEL_27;
  }

LABEL_17:
  if (_s11UIGrounding0A6ConfigC16debugModeEnabledSbyFZ_0())
  {
    v12 = v0[28];
    v13 = v0[19];
    static UIGroundingQuery.debugSaveRecordToLocation(queryToSave:)(v0[18]);
    if (v12)
    {
      (*(v0[22] + 8))(v0[23], v0[21]);
LABEL_27:
      v26 = v0[23];
      v27 = v0[20];

      v28 = v0[1];

      return v28();
    }
  }

  v15 = v0[22];
  v14 = v0[23];
  v17 = v0[20];
  v16 = v0[21];
  v18 = v0[18];
  v19 = sub_221C729F4();
  (*(v15 + 8))(v14, v16);

  v20 = v0[1];

  return v20(v19);
}

uint64_t sub_221C74C68()
{
  (*(v0[22] + 8))(v0[23], v0[21]);
  v1 = v0[28];
  v2 = v0[23];
  v3 = v0[20];

  v4 = v0[1];

  return v4();
}

uint64_t sub_221C74CF0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x73746E656D656C65;
    v6 = 0x676E69646E756F62;
    if (a1 != 2)
    {
      v6 = 0x6D6574737973;
    }

    if (a1)
    {
      v5 = 7761509;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x65736E6F70736572;
    v2 = 0x7265755172657375;
    if (a1 != 7)
    {
      v2 = 0x655674706D6F7270;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1919251317;
    if (a1 != 4)
    {
      v3 = 0x6E61747369737361;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_221C74E20()
{
  v1 = *v0;
  sub_221C7B9EC();
  sub_221C72798();
  return sub_221C7BA0C();
}

uint64_t sub_221C74E70()
{
  v1 = *v0;
  sub_221C7B9EC();
  sub_221C72798();
  return sub_221C7BA0C();
}

uint64_t sub_221C74EB4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_221C76744();
  *a2 = result;
  return result;
}

uint64_t sub_221C74EE4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_221C74CF0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_221C74F2C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_221C76744();
  *a1 = result;
  return result;
}

uint64_t sub_221C74F60(uint64_t a1)
{
  v2 = sub_221C7707C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_221C74F9C(uint64_t a1)
{
  v2 = sub_221C7707C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_221C74FF0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1500, qword_221C7DD40);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v46 = &v39 - v7;
  v8 = sub_221C7B3DC();
  v47 = *(v8 - 8);
  v9 = *(v47 + 64);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE16A0, &qword_221C7DD88);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13, v16);
  v18 = &v39 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_221C7707C();
  sub_221C7BA2C();
  v52 = *(v2 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_elements);
  v51 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE16B0, &qword_221C7DD90);
  sub_221C7803C(&qword_27CFE16B8, &qword_27CFE1568);
  v20 = v48;
  sub_221C7B93C();
  if (v20)
  {
    return (*(v14 + 8))(v18, v13);
  }

  v21 = v47;
  v22 = OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_boundingBox;
  swift_beginAccess();
  v23 = *(v2 + v22);
  v51 = 2;
  sub_221C7B90C();
  v48 = *(v2 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_query);
  v51 = *(v48 + 16);
  v50 = 1;
  sub_221C770D0();
  sub_221C7B93C();
  v51 = *(v48 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_version);
  v50 = 8;
  sub_221C77124();
  sub_221C7B93C();
  v42 = v2;
  v25 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_system;
  v26 = v48;
  swift_beginAccess();
  v43 = *(v21 + 16);
  v44 = v21 + 16;
  v43(v12, v26 + v25, v8);
  sub_221C5E668();
  v27 = *(v21 + 8);
  v45 = v8;
  v27(v12, v8);
  v50 = 3;
  sub_221C7B8FC();
  v40 = v12;
  v41 = v27;

  v28 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_user;
  v29 = v48;
  swift_beginAccess();
  v30 = v29 + v28;
  v31 = v46;
  sub_221C72D98(v30, v46);
  v32 = v45;
  if ((*(v47 + 48))(v31, 1, v45))
  {
    sub_221C665AC(v31, &qword_27CFE1500, qword_221C7DD40);
  }

  else
  {
    v33 = v40;
    v43(v40, v31, v32);
    sub_221C665AC(v31, &qword_27CFE1500, qword_221C7DD40);
    sub_221C5E668();
    v41(v33, v32);
  }

  LOBYTE(v53) = 4;
  sub_221C7B8CC();

  v34 = v48;
  v35 = *(v48 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_assistant);
  v36 = *(v48 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_assistant + 8);
  LOBYTE(v53) = 5;

  sub_221C7B8CC();

  v53 = *(v34 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_response);
  v49 = 6;
  type metadata accessor for UIGroundingAction();
  sub_221C78180(&qword_27CFE16D0, type metadata accessor for UIGroundingAction);
  sub_221C7B8EC();
  v37 = *(v42 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_userQuery);
  v38 = *(v42 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_userQuery + 8);
  LOBYTE(v53) = 7;

  sub_221C7B8CC();
  (*(v14 + 8))(v18, v13);
}

uint64_t UIGroundingQuery.deinit()
{
  v1 = OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_log;
  v2 = sub_221C7B39C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_template);

  v4 = *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_query);

  v5 = *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_elements);

  v6 = *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_userQuery + 8);

  sub_221C72A90(*(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___response));
  sub_221C72E08(*(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___user), *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___user + 8));
  return v0;
}

uint64_t UIGroundingQuery.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_log;
  v2 = sub_221C7B39C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_template);

  v4 = *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_query);

  v5 = *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_elements);

  v6 = *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_userQuery + 8);

  sub_221C72A90(*(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___response));
  sub_221C72E08(*(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___user), *(v0 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___user + 8));
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v7, v8);
}

uint64_t sub_221C75894@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_221C76790(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_221C758E4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1738, &qword_221C7DFF8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_221C7596C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_221C76730(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_221C759E8(v6);
  return sub_221C7B7AC();
}

uint64_t sub_221C759E8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_221C7B95C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for UIGroundingElement();
        v6 = sub_221C7B67C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_221C75B70(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_221C75AEC(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_221C75AEC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      v11 = *(v7 + 32);
      v12 = *(*v9 + 32);
      if (vabdd_f64(v11, v12) < 1.0)
      {
        v11 = *(v7 + 24);
        v12 = *(v10 + 24);
      }

      if (v11 >= v12)
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_221C75B70(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_104:
    v5 = *v91;
    if (!*v91)
    {
      goto LABEL_142;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_136:
      result = sub_221C76410(v10);
      v10 = result;
    }

    v86 = *(v10 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = *&v10[16 * v86];
        v88 = *&v10[16 * v86 + 24];
        sub_221C76148((*a3 + 8 * v87), (*a3 + 8 * *&v10[16 * v86 + 16]), (*a3 + 8 * v88), v5);
        if (v4)
        {
        }

        if (v88 < v87)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_221C76410(v10);
        }

        if (v86 - 2 >= *(v10 + 2))
        {
          goto LABEL_130;
        }

        v89 = &v10[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        result = sub_221C76384(v86 - 1);
        v86 = *(v10 + 2);
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_140;
    }
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*a3 + 8 * v9);
      v13 = *(*a3 + 8 * v11);
      v14 = *(v12 + 32);
      v15 = *(v13 + 32);
      if (vabdd_f64(v14, v15) >= 1.0)
      {
        v16 = v14 < v15;
      }

      else
      {
        v16 = *(v12 + 24) < *(v13 + 24);
      }

      v17 = v16;
      if (v7 <= v11 + 2)
      {
        v18 = v11 + 2;
      }

      else
      {
        v18 = v7;
      }

      v19 = v18 - v11 - 2;
      v20 = 8 * v11;
      v21 = *a3 + 8 * v11 + 16;
      while (v19)
      {
        v24 = *v21;
        v25 = *(*v21 + 32);
        if (vabdd_f64(v25, v14) >= 1.0)
        {
          v22 = v25 < v14;
        }

        else
        {
          v22 = *(v24 + 24) < *(v12 + 24);
        }

        v23 = v22;
        --v19;
        v21 += 8;
        ++v9;
        v14 = v25;
        v12 = v24;
        if (v17 != v23)
        {
          goto LABEL_24;
        }
      }

      v9 = v18;
LABEL_24:
      if (v17)
      {
        if (v9 < v11)
        {
          goto LABEL_133;
        }

        if (v11 < v9)
        {
          v26 = 8 * v9 - 8;
          v27 = v9;
          v28 = v11;
          do
          {
            if (v28 != --v27)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v29 = *(v30 + v20);
              *(v30 + v20) = *(v30 + v26);
              *(v30 + v26) = v29;
            }

            ++v28;
            v26 -= 8;
            v20 += 8;
          }

          while (v28 < v27);
          v7 = a3[1];
        }
      }
    }

    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_132;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_134;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v9 < v11)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_221C6BD90(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v5 = *(v10 + 2);
    v41 = *(v10 + 3);
    v42 = v5 + 1;
    if (v5 >= v41 >> 1)
    {
      result = sub_221C6BD90((v41 > 1), v5 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 2) = v42;
    v43 = &v10[16 * v5];
    *(v43 + 4) = v11;
    *(v43 + 5) = v9;
    v44 = *v91;
    if (!*v91)
    {
      goto LABEL_141;
    }

    if (v5)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v10 + 4);
          v47 = *(v10 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_73:
          if (v49)
          {
            goto LABEL_120;
          }

          v62 = &v10[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_123;
          }

          v68 = &v10[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_127;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v72 = &v10[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_87:
        if (v67)
        {
          goto LABEL_122;
        }

        v75 = &v10[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_125;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_94:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
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

        if (!*a3)
        {
          goto LABEL_138;
        }

        v84 = *&v10[16 * v83 + 32];
        v5 = *&v10[16 * v45 + 40];
        sub_221C76148((*a3 + 8 * v84), (*a3 + 8 * *&v10[16 * v45 + 32]), (*a3 + 8 * v5), v44);
        if (v4)
        {
        }

        if (v5 < v84)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_221C76410(v10);
        }

        if (v83 >= *(v10 + 2))
        {
          goto LABEL_117;
        }

        v85 = &v10[16 * v83];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        result = sub_221C76384(v45);
        v42 = *(v10 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v10[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_118;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_119;
      }

      v57 = &v10[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_121;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_124;
      }

      if (v61 >= v53)
      {
        v79 = &v10[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_128;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_104;
    }
  }

  v31 = *a3;
  v32 = *a3 + 8 * v9 - 8;
  v33 = v11 - v9;
LABEL_44:
  v34 = *(v31 + 8 * v9);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = *(v34 + 32);
    v39 = *(*v36 + 32);
    if (vabdd_f64(v38, v39) < 1.0)
    {
      v38 = *(v34 + 24);
      v39 = *(v37 + 24);
    }

    if (v38 >= v39)
    {
LABEL_43:
      ++v9;
      v32 += 8;
      --v33;
      if (v9 != v7)
      {
        goto LABEL_44;
      }

      v9 = v7;
      goto LABEL_53;
    }

    if (!v31)
    {
      break;
    }

    *v36 = v34;
    v36[1] = v37;
    --v36;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_43;
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
  return result;
}

uint64_t sub_221C76148(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_27:
      v19 = v6 - 8;
      v20 = v5;
      v21 = v14;
      do
      {
        v23 = *(v21 - 8);
        v21 -= 8;
        v22 = v23;
        v24 = *v19;
        v25 = *(v23 + 32);
        v26 = *(*v19 + 32);
        if (vabdd_f64(v25, v26) < 1.0)
        {
          v25 = *(v22 + 24);
          v26 = *(v24 + 24);
        }

        v5 = v20 - 8;
        if (v25 < v26)
        {
          if (v20 != v6)
          {
            *v5 = v24;
          }

          if (v14 <= v4 || (v6 -= 8, v19 <= v7))
          {
            v6 = v19;
            goto LABEL_40;
          }

          goto LABEL_27;
        }

        if (v14 != v20)
        {
          *v5 = v22;
        }

        v14 = v21;
        v20 -= 8;
      }

      while (v21 > v4);
      v14 = v21;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        v16 = *(*v6 + 32);
        v17 = *(*v4 + 32);
        if (vabdd_f64(v16, v17) < 1.0)
        {
          v16 = *(v15 + 24);
          v17 = *(*v4 + 24);
        }

        if (v16 >= v17)
        {
          break;
        }

        v18 = v7 == v6;
        v6 += 8;
        if (!v18)
        {
          goto LABEL_18;
        }

LABEL_19:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_21;
        }
      }

      v15 = *v4;
      v18 = v7 == v4;
      v4 += 8;
      if (v18)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v7 = v15;
      goto LABEL_19;
    }

LABEL_21:
    v6 = v7;
  }

LABEL_40:
  v27 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v27 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v27 >> 3));
  }

  return 1;
}

uint64_t sub_221C76384(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_221C76410(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t (*sub_221C76424(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x223DA61E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_221C764A4;
  }

  __break(1u);
  return result;
}

uint64_t sub_221C764AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1500, qword_221C7DD40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_221C7651C(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_221C7B7DC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_221C758E4(v3, 0);
  sub_221C765B0((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_221C765B0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_221C7B7DC();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_221C7B7DC();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_221C7828C();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE16B0, &qword_221C7DD90);
            v9 = sub_221C76424(v13, i, a3);
            v11 = *v10;

            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UIGroundingElement();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_221C76744()
{
  v0 = sub_221C7B7FC();

  if (v0 >= 9)
  {
    return 9;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_221C76790(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1500, qword_221C7DD40);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8, v4);
  v75 = &v60 - v5;
  v6 = sub_221C7B49C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8, v8);
  v79 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_221C7B4AC();
  v78 = *(v76 - 8);
  v10 = *(v78 + 64);
  MEMORY[0x28223BE20](v76, v11);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_221C7B3DC();
  v77 = *(v14 - 8);
  v15 = *(v77 + 64);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1700, &qword_221C7DFF0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v60 - v23;
  v25 = a1[3];
  v26 = a1[4];
  v81 = a1;
  v27 = __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_221C7707C();
  v28 = v80;
  sub_221C7BA1C();
  if (v28)
  {
    __swift_destroy_boxed_opaque_existential_1(v81);
  }

  else
  {
    v73 = v18;
    v74 = v13;
    v80 = v14;
    v29 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE16B0, &qword_221C7DD90);
    v84 = 0;
    sub_221C7803C(&qword_27CFE1708, &qword_27CFE1588);
    sub_221C7B89C();
    v30 = v82[0];
    v84 = 1;
    sub_221C780D8();
    sub_221C7B89C();
    v31 = LOBYTE(v82[0]);
    LOBYTE(v82[0]) = 2;
    v32 = sub_221C7B86C();
    v83 = v31;
    LODWORD(v72) = v32;
    v84 = 8;
    sub_221C7812C();
    sub_221C7B89C();
    v33 = LOBYTE(v82[0]);
    LOBYTE(v82[0]) = 3;
    sub_221C7B85C();
    v71 = v35;
    v70 = v33;
    LOBYTE(v82[0]) = 4;
    v68 = sub_221C7B82C();
    v69 = v36;
    LOBYTE(v82[0]) = 5;
    v66 = sub_221C7B82C();
    v67 = v37;
    type metadata accessor for UIGroundingAction();
    v84 = 6;
    sub_221C78180(&qword_27CFE1720, type metadata accessor for UIGroundingAction);
    sub_221C7B84C();
    v65 = v82[0];
    LOBYTE(v82[0]) = 7;
    v64 = sub_221C7B82C();
    v63 = v38;
    v61 = v24;
    v62 = v19;
    LOBYTE(v82[0]) = v83;
    v39 = type metadata accessor for UIGroundingQuery();
    v40 = *(v39 + 48);
    v41 = *(v39 + 52);
    v27 = swift_allocObject();
    UIGroundingQuery.init(elements:env:template:withBoundingBox:)(v30, v82, v42, v72 & 1);
    v72 = OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_query;
    v43 = *(v27 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_query);
    v44 = *(v78 + 104);
    v83 = *MEMORY[0x277D42E40];
    v78 += 104;
    v60 = v44;
    v44(v74);

    sub_221C7B45C();
    v45 = v73;
    sub_221C7B3AC();
    v46 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_system;
    swift_beginAccess();
    (*(v77 + 40))(v43 + v46, v45, v80);
    swift_endAccess();

    v47 = v72;
    v48 = *(v27 + v72);

    *(v48 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_version) = v70;

    if (v69)
    {
      v49 = *(v27 + v47);
      v60(v74, v83, v76);

      sub_221C7B45C();
      v50 = v75;
      sub_221C7B3AC();
      (*(v29 + 8))(v61, v62);
      (*(v77 + 56))(v50, 0, 1, v80);
      v51 = OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_user;
      swift_beginAccess();
      sub_221C781C8(v50, v49 + v51);
      swift_endAccess();
    }

    else
    {
      (*(v29 + 8))(v61, v62);
    }

    v52 = (*(v27 + v47) + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_assistant);
    v53 = v52[1];
    v54 = v67;
    *v52 = v66;
    v52[1] = v54;

    v55 = *(v27 + v47);
    v56 = *(v55 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_response);
    *(v55 + OBJC_IVAR____TtC11UIGrounding22UIGroundingChatManager_response) = v65;

    v57 = (v27 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_userQuery);
    v58 = *(v27 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_userQuery + 8);
    v59 = v63;
    *v57 = v64;
    v57[1] = v59;

    __swift_destroy_boxed_opaque_existential_1(v81);
  }

  return v27;
}

unint64_t sub_221C7707C()
{
  result = qword_27CFE16A8;
  if (!qword_27CFE16A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE16A8);
  }

  return result;
}

unint64_t sub_221C770D0()
{
  result = qword_27CFE16C0;
  if (!qword_27CFE16C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE16C0);
  }

  return result;
}

unint64_t sub_221C77124()
{
  result = qword_27CFE16C8;
  if (!qword_27CFE16C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE16C8);
  }

  return result;
}

uint64_t sub_221C77178@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_boundingBox;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_221C771D0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_boundingBox;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_221C77224@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_221C729F4();
  *a2 = result;
  return result;
}

uint64_t sub_221C77250(void *a1, void *a2)
{
  v2 = *(*a2 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___response);
  *(*a2 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___response) = *a1;

  return sub_221C72A90(v2);
}

uint64_t sub_221C7729C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = sub_221C72B60();
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_221C772C8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery____lazy_storage___user);
  v5 = *v4;
  v6 = v4[1];
  *v4 = v3;
  v4[1] = v2;

  return sub_221C72E08(v5, v6);
}

uint64_t type metadata accessor for UIGroundingQuery()
{
  result = qword_27CFE16D8;
  if (!qword_27CFE16D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221C77370()
{
  result = sub_221C7B39C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of UIGroundingQuery.findElement(from:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 248);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_221C7835C;

  return v10(a1, a2);
}

uint64_t dispatch thunk of UIGroundingQuery.closeView()()
{
  v2 = *(*v0 + 256);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_221C7835C;

  return v6();
}

uint64_t dispatch thunk of UIGroundingQuery.findAction(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 264);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_221C77924;

  return v10(a1, a2);
}

uint64_t sub_221C77924(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t dispatch thunk of UIGroundingQuery.find(for:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 272);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_221C78358;

  return v10(a1, a2);
}

{
  v6 = *(*v2 + 280);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_221C77C80;

  return v10(a1, a2);
}

uint64_t sub_221C77C80(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t getEnumTagSinglePayload for UIGroundingQuery.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UIGroundingQuery.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_221C77F38()
{
  result = qword_27CFE16E8;
  if (!qword_27CFE16E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE16E8);
  }

  return result;
}

unint64_t sub_221C77F90()
{
  result = qword_27CFE16F0;
  if (!qword_27CFE16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE16F0);
  }

  return result;
}

unint64_t sub_221C77FE8()
{
  result = qword_27CFE16F8;
  if (!qword_27CFE16F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE16F8);
  }

  return result;
}

uint64_t sub_221C7803C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFE16B0, &qword_221C7DD90);
    sub_221C78180(a2, type metadata accessor for UIGroundingElement);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_221C780D8()
{
  result = qword_27CFE1710;
  if (!qword_27CFE1710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1710);
  }

  return result;
}

unint64_t sub_221C7812C()
{
  result = qword_27CFE1718;
  if (!qword_27CFE1718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1718);
  }

  return result;
}

uint64_t sub_221C78180(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221C781C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1500, qword_221C7DD40);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_221C78238()
{
  result = qword_27CFE1728;
  if (!qword_27CFE1728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1728);
  }

  return result;
}

unint64_t sub_221C7828C()
{
  result = qword_27CFE1730;
  if (!qword_27CFE1730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFE16B0, &qword_221C7DD90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1730);
  }

  return result;
}

unint64_t sub_221C78304()
{
  result = qword_27CFE1740;
  if (!qword_27CFE1740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1740);
  }

  return result;
}

uint64_t static UIGroundingQuery.debugSaveRecordToLocation(queryToSave:)(uint64_t a1)
{
  v31 = a1;
  v1 = sub_221C7AF0C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1, v4);
  v32 = sub_221C7B06C();
  v5 = *(v32 - 8);
  v6 = *(v5 + 64);
  v8 = MEMORY[0x28223BE20](v32, v7);
  v30 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v29 - v11;
  v33 = 0x5F7972657571;
  v34 = 0xE600000000000000;
  v13 = sub_221C7992C();
  MEMORY[0x223DA6030](v13);

  MEMORY[0x223DA6030](0x6E6F736A2ELL, 0xE500000000000000);
  sub_221C78DE8(v33, v34, v12);

  v14 = sub_221C7AF4C();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  sub_221C7AF3C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1748, &qword_221C7E0E8);
  v17 = *(v2 + 72);
  v18 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_221C7E0D0;
  sub_221C7AEEC();
  sub_221C7AEFC();
  v33 = v19;
  sub_221C79C60(&qword_27CFE1750, MEMORY[0x277CC8718]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1758, &qword_221C7E0F0);
  sub_221C79B60();
  sub_221C7B72C();
  sub_221C7AF1C();
  v33 = v31;
  type metadata accessor for UIGroundingQuery();
  sub_221C79C60(&qword_27CFE1768, type metadata accessor for UIGroundingQuery);
  v20 = v35;
  v21 = sub_221C7AF2C();
  if (v20)
  {
    (*(v5 + 8))(v12, v32);
  }

  else
  {
    v24 = v21;
    v25 = v22;
    v26 = v32;
    sub_221C7B02C();
    v27 = v30;
    sub_221C7AFFC();

    sub_221C7B0BC();
    sub_221C6392C(v24, v25);

    v28 = *(v5 + 8);
    v28(v27, v26);
    return (v28)(v12, v26);
  }
}

uint64_t sub_221C78758()
{
  v0 = sub_221C7B39C();
  __swift_allocate_value_buffer(v0, qword_27CFE55A8);
  __swift_project_value_buffer(v0, qword_27CFE55A8);
  return sub_221C7B38C();
}

uint64_t static UIGroundingQuery.workingDirectory.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v1 = sub_221C7B39C();
  v58 = *(v1 - 8);
  v59 = v1;
  v2 = *(v58 + 64);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221C7AFEC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1318, &qword_221C7CA90);
  v13 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8, v14);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v15, v18);
  v21 = &v53 - v20;
  v23 = MEMORY[0x28223BE20](v19, v22);
  v25 = &v53 - v24;
  MEMORY[0x28223BE20](v23, v26);
  v28 = &v53 - v27;
  sub_221C7A788();
  if (v29)
  {
    v30 = sub_221C7B06C();
    (*(*(v30 - 8) + 56))(v28, 1, 1, v30);
    (*(v7 + 104))(v11, *MEMORY[0x277CC91D8], v6);
    return sub_221C7B05C();
  }

  else
  {
    v54 = v21;
    v55 = v17;
    v56 = v7;
    v57 = v25;
    v53 = v5;
    v32 = v59;
    v33 = objc_opt_self();
    v34 = [v33 defaultManager];
    v35 = sub_221C7B52C();
    v36 = [v34 containerURLForSecurityApplicationGroupIdentifier_];

    if (v36)
    {
      v37 = v54;
      sub_221C7B01C();

      v38 = sub_221C7B06C();
      (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
    }

    else
    {
      v38 = sub_221C7B06C();
      v37 = v54;
      (*(*(v38 - 8) + 56))(v54, 1, 1, v38);
    }

    v39 = v56;
    v40 = v57;
    v41 = v11;
    sub_221C63A3C(v37, v57);
    v42 = v55;
    sub_221C63AAC(v40, v55);
    sub_221C7B06C();
    v43 = *(v38 - 8);
    if ((*(v43 + 48))(v42, 1, v38) == 1)
    {
      v44 = v33;
      sub_221C665AC(v42, &qword_27CFE1318, &qword_221C7CA90);
      if (qword_27CFE1150 != -1)
      {
        swift_once();
      }

      v45 = __swift_project_value_buffer(v32, qword_27CFE55A8);
      v46 = v58;
      v47 = v53;
      (*(v58 + 16))(v53, v45, v32);
      v48 = sub_221C7B37C();
      v49 = sub_221C7B6AC();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_221C5D000, v48, v49, "couldnt get app container", v50, 2u);
        MEMORY[0x223DA68B0](v50, -1, -1);
      }

      (*(v46 + 8))(v47, v32);
      v51 = [v44 defaultManager];
      v52 = [v51 temporaryDirectory];

      sub_221C7B01C();
    }

    else
    {
      (*(v43 + 32))(v60, v42, v38);
      v61 = 0x7364726F636552;
      v62 = 0xE700000000000000;
      (*(v39 + 104))(v41, *MEMORY[0x277CC91D8], v6);
      sub_221C681F4();
      sub_221C7B03C();
      (*(v39 + 8))(v41, v6);
    }

    return sub_221C665AC(v40, &qword_27CFE1318, &qword_221C7CA90);
  }
}

uint64_t sub_221C78DE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v53 = a1;
  v54 = a2;
  v56 = a3;
  v60[3] = *MEMORY[0x277D85DE8];
  v52 = sub_221C7B39C();
  v50 = *(v52 - 8);
  v3 = *(v50 + 64);
  MEMORY[0x28223BE20](v52, v4);
  v51 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_221C7AFEC();
  v6 = *(v55 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v55, v8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_221C7B06C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UIGroundingQuery.workingDirectory.getter(v16);
  v59 = 0;
  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  sub_221C7B02C();
  v19 = sub_221C7B52C();

  v20 = [v18 fileExistsAtPath:v19 isDirectory:&v59];

  if (!v20 || (v59 & 1) == 0)
  {
    v21 = [v17 defaultManager];
    v22 = sub_221C7B00C();
    v60[0] = 0;
    v23 = [v21 createDirectoryAtURL:v22 withIntermediateDirectories:1 attributes:0 error:v60];

    if (v23)
    {
      v24 = v60[0];
    }

    else
    {
      v49 = v11;
      v25 = v60[0];
      v26 = sub_221C7AFDC();

      swift_willThrow();
      if (qword_27CFE1150 != -1)
      {
        swift_once();
      }

      v27 = v52;
      v28 = __swift_project_value_buffer(v52, qword_27CFE55A8);
      v30 = v50;
      v29 = v51;
      (*(v50 + 16))(v51, v28, v27);
      MEMORY[0x223DA6790](v26);
      v31 = sub_221C7B37C();
      v32 = sub_221C7B6AC();

      v48 = v32;
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v60[0] = v47;
        *v33 = 136315394;
        swift_beginAccess();
        sub_221C79C60(&qword_27CFE1770, MEMORY[0x277CC9260]);
        v45 = v31;
        v11 = v49;
        v34 = sub_221C7B96C();
        v36 = v30;
        v37 = sub_221C793F8(v34, v35, v60);

        *(v33 + 4) = v37;
        *(v33 + 12) = 2112;
        MEMORY[0x223DA6790](v26);
        v38 = _swift_stdlib_bridgeErrorToNSError();
        *(v33 + 14) = v38;
        v39 = v46;
        *v46 = v38;
        v40 = v45;
        _os_log_impl(&dword_221C5D000, v45, v48, "Failed to create directory %s with error: %@", v33, 0x16u);
        sub_221C665AC(v39, &qword_27CFE1698, qword_221C7DD60);
        MEMORY[0x223DA68B0](v39, -1, -1);
        v41 = v47;
        __swift_destroy_boxed_opaque_existential_1(v47);
        MEMORY[0x223DA68B0](v41, -1, -1);
        MEMORY[0x223DA68B0](v33, -1, -1);

        (*(v36 + 8))(v51, v52);
      }

      else
      {

        (*(v30 + 8))(v29, v27);
        v11 = v49;
      }
    }
  }

  v57 = v53;
  v58 = v54;
  swift_beginAccess();
  v42 = v55;
  (*(v6 + 104))(v10, *MEMORY[0x277CC91D8], v55);
  sub_221C681F4();
  sub_221C7B03C();
  swift_endAccess();
  (*(v6 + 8))(v10, v42);
  (*(v12 + 16))(v56, v16, v11);
  result = (*(v12 + 8))(v16, v11);
  v44 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_221C793F8(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_221C794C4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_221C79CA8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_221C794C4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_221C795D0(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_221C7B79C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_221C795D0(uint64_t a1, unint64_t a2)
{
  v4 = sub_221C7961C(a1, a2);
  sub_221C7974C(&unk_283525580);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

uint64_t sub_221C7961C(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_221C65B50(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_221C7B79C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_221C7B5CC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_221C65B50(v10, 0);
        result = sub_221C7B73C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_221C7974C(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_221C79838(result, v12, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_221C79838(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE13B8, &unk_221C7CC70);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_221C7992C()
{
  v0 = sub_221C7B13C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221C7B0EC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221C7B0DC();
  v12 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_221C7B12C();
  v13 = sub_221C7B11C();
  (*(v1 + 8))(v5, v0);
  [v12 setTimeZone_];

  v14 = sub_221C7B52C();
  [v12 setDateFormat_];

  v15 = sub_221C7B0CC();
  v16 = [v12 stringFromDate_];

  v17 = sub_221C7B53C();
  (*(v7 + 8))(v11, v6);
  return v17;
}

unint64_t sub_221C79B60()
{
  result = qword_27CFE1760;
  if (!qword_27CFE1760)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFE1758, &qword_221C7E0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1760);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_221C79C60(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_221C79CA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_221C79D24()
{
  v17 = v0;
  v1 = v0[5];
  v2 = (v1 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_userQuery);
  v3 = *(v1 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_userQuery + 8);
  v0[6] = v3;
  if (v3)
  {
    v4 = *(v1 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_elements);
    v15 = *(*(v1 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_query) + 16);
    v5 = *v2;
    v16[0] = *(*(v1 + OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_template) + 16);
    v6 = OBJC_IVAR____TtC11UIGrounding16UIGroundingQuery_boundingBox;
    swift_beginAccess();
    v7 = *(v1 + v6);
    v8 = type metadata accessor for UIGroundingQuery();
    v9 = *(v8 + 48);
    v10 = *(v8 + 52);
    swift_allocObject();

    v0[7] = UIGroundingQuery.init(elements:env:template:withBoundingBox:)(v11, &v15, v16, v7);
    v12 = swift_task_alloc();
    v0[8] = v12;
    *v12 = v0;
    v12[1] = sub_221C79EF4;

    return sub_221C743E0(v5, v3);
  }

  else
  {
    sub_221C7A0D0();
    swift_allocError();
    swift_willThrow();
    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_221C79EF4()
{
  v2 = *v1;
  v3 = *(*v1 + 64);
  v4 = *v1;
  v2[9] = v0;

  v5 = v2[6];

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221C7A06C, 0, 0);
  }

  else
  {

    v6 = *(v4 + 8);
    v7 = v2[7];

    return v6(v7);
  }
}

uint64_t sub_221C7A06C()
{
  v1 = v0[7];

  v2 = v0[9];
  v3 = v0[1];

  return v3();
}

unint64_t sub_221C7A0D0()
{
  result = qword_27CFE1778;
  if (!qword_27CFE1778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1778);
  }

  return result;
}

unint64_t sub_221C7A138()
{
  result = qword_27CFE1780;
  if (!qword_27CFE1780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFE1780);
  }

  return result;
}

uint64_t static UIGroundingConfig.getDefaults()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_221C7B52C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    return v2;
  }

  result = sub_221C7B7CC();
  __break(1u);
  return result;
}

void static UIGroundingConfig.setDebugMode(debug:)(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v3 = sub_221C7B52C();
  v4 = [v2 initWithSuiteName_];

  if (v4)
  {
    v5 = sub_221C7B52C();
    [v4 setBool:a1 & 1 forKey:v5];
  }

  else
  {
    sub_221C7B7CC();
    __break(1u);
  }
}

void sub_221C7A478()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_221C7B52C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_221C7B52C();
    v4 = sub_221C7B52C();
    [v2 setObject:v3 forKey:v4];
  }

  else
  {
    sub_221C7B7CC();
    __break(1u);
  }
}

uint64_t _s11UIGrounding0A6ConfigC16debugModeEnabledSbyFZ_0()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_221C7B52C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_221C7B52C();
    v4 = [v2 objectForKey_];

    if (v4)
    {
      sub_221C7B71C();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9[0] = v7;
    v9[1] = v8;
    if (*(&v8 + 1))
    {
      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
      sub_221C7A968(v9);
    }

    return 0;
  }

  else
  {
    result = sub_221C7B7CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_221C7A7A4()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_221C7B52C();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = sub_221C7B52C();
    v4 = [v2 objectForKey_];

    if (v4)
    {
      sub_221C7B71C();
      swift_unknownObjectRelease();
    }

    else
    {
      v7 = 0u;
      v8 = 0u;
    }

    v9[0] = v7;
    v9[1] = v8;
    if (*(&v8 + 1))
    {
      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
      sub_221C7A968(v9);
    }

    return 0;
  }

  else
  {
    result = sub_221C7B7CC();
    __break(1u);
  }

  return result;
}

uint64_t sub_221C7A968(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFE1788, &qword_221C7E1E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_221C7A9D0()
{
  v0 = type metadata accessor for UIGroundingSignposts();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  result = sub_221C7B35C();
  qword_27CFE55C0 = v3;
  return result;
}

uint64_t sub_221C7AA4C()
{
  if (qword_27CFE1158 != -1)
  {
    swift_once();
  }
}

uint64_t sub_221C7AAC0(const char *a1)
{
  v2 = sub_221C7B33C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2, v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_221C7B32C();
  v8 = sub_221C7B34C();
  v9 = sub_221C7B6BC();
  if (sub_221C7B6CC())
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = sub_221C7B31C();
    _os_signpost_emit_with_name_impl(&dword_221C5D000, v8, v9, v11, a1, "", v10, 2u);
    MEMORY[0x223DA68B0](v10, -1, -1);
  }

  return (*(v3 + 8))(v7, v2);
}

uint64_t UIGroundingSignposts.deinit()
{
  v1 = OBJC_IVAR____TtC11UIGrounding20UIGroundingSignposts_uiGroundingSignposter;
  v2 = sub_221C7B36C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t UIGroundingSignposts.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11UIGrounding20UIGroundingSignposts_uiGroundingSignposter;
  v2 = sub_221C7B36C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for UIGroundingSignposts()
{
  result = qword_27CFE1790;
  if (!qword_27CFE1790)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221C7AD68()
{
  result = sub_221C7B36C();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}