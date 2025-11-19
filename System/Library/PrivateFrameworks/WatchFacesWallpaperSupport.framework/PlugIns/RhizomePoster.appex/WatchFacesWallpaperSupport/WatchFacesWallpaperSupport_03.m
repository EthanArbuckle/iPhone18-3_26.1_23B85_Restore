uint64_t getEnumTagSinglePayload for RhizomeColorway(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RhizomeColorway(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100030434()
{
  result = qword_10004B800;
  if (!qword_10004B800)
  {
    sub_1000023BC(&qword_10004B808);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B800);
  }

  return result;
}

uint64_t sub_100030498(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x8000000100039EB0;
    v10 = 0xD000000000000013;
    if (a1 == 6)
    {
      v10 = 0xD000000000000012;
    }

    else
    {
      v9 = 0x8000000100039ED0;
    }

    v11 = 0xD000000000000010;
    v12 = 0x8000000100039E70;
    if (a1 != 4)
    {
      v11 = 0xD000000000000011;
      v12 = 0x8000000100039E90;
    }

    if (a1 <= 5u)
    {
      v7 = v11;
    }

    else
    {
      v7 = v10;
    }

    if (v2 <= 5)
    {
      v8 = v12;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 0xE200000000000000;
    v5 = 28757;
    if (a1 != 2)
    {
      v5 = 1853321028;
      v4 = 0xE400000000000000;
    }

    v6 = 0x7468676952;
    if (a1)
    {
      v3 = 0xE500000000000000;
    }

    else
    {
      v6 = 1952867660;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0x8000000100039EB0;
        if (v7 != 0xD000000000000012)
        {
          goto LABEL_48;
        }
      }

      else
      {
        v13 = 0x8000000100039ED0;
        if (v7 != 0xD000000000000013)
        {
LABEL_48:
          v14 = sub_100037558();
          goto LABEL_49;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0x8000000100039E70;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0x8000000100039E90;
      if (v7 != 0xD000000000000011)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE200000000000000;
      if (v7 != 28757)
      {
        goto LABEL_48;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v7 != 1853321028)
      {
        goto LABEL_48;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x7468676952)
    {
      goto LABEL_48;
    }
  }

  else
  {
    v13 = 0xE400000000000000;
    if (v7 != 1952867660)
    {
      goto LABEL_48;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_48;
  }

  v14 = 1;
LABEL_49:

  return v14 & 1;
}

uint64_t sub_100030700(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 6579538;
    }

    else
    {
      v3 = 0x7974696E55;
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
    v3 = 0x6E65657247;
  }

  else if (a1 == 3)
  {
    v3 = 0x6C6F6369746C754DLL;
    v4 = 0xEA0000000000726FLL;
  }

  else
  {
    v4 = 0xE500000000000000;
    v3 = 0x6B63616C42;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 6579538;
    }

    else
    {
      v9 = 0x7974696E55;
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
    v5 = 0x6C6F6369746C754DLL;
    v6 = 0xEA0000000000726FLL;
    if (a2 != 3)
    {
      v5 = 0x6B63616C42;
      v6 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x6E65657247;
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
    v10 = sub_100037558();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_100030870(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE900000000000079;
  v4 = 0x646C6F676972614DLL;
  if (a1 == 2)
  {
    v4 = 0x6C694C20616C6143;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  v5 = 0xD000000000000011;
  v6 = 0x8000000100039F30;
  if (!a1)
  {
    v5 = 0x206E616369726641;
    v6 = 0xED00007973696144;
  }

  if (a1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v4;
  }

  if (v2 <= 1)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v11 = 0x6C694C20616C6143;
    }

    else
    {
      v11 = 0x646C6F676972614DLL;
    }

    if (a2 == 2)
    {
      v10 = 0xE900000000000079;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != v11)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (a2)
    {
      v9 = 0xD000000000000011;
    }

    else
    {
      v9 = 0x206E616369726641;
    }

    if (a2)
    {
      v10 = 0x8000000100039F30;
    }

    else
    {
      v10 = 0xED00007973696144;
    }

    if (v7 != v9)
    {
      goto LABEL_30;
    }
  }

  if (v8 != v10)
  {
LABEL_30:
    v12 = sub_100037558();
    goto LABEL_31;
  }

  v12 = 1;
LABEL_31:

  return v12 & 1;
}

id sub_1000309C8(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    v1 = objc_allocWithZone(UIColor);
    v3 = 0.266666667;
    v4 = 0.22745098;
    v2 = 1.0;
    goto LABEL_7;
  }

  if (a1 == 2)
  {
    v1 = objc_allocWithZone(UIColor);
    v2 = 0.376470588;
    v3 = 0.768627451;
    v4 = 0.490196078;
    goto LABEL_7;
  }

  if (a1 == 3)
  {
    v1 = objc_allocWithZone(UIColor);
    v2 = 0.701960784;
    v3 = 0.447058824;
    v4 = 0.894117647;
LABEL_7:

    return [v1 initWithRed:v2 green:v3 blue:v4 alpha:1.0];
  }

  v6 = [objc_opt_self() whiteColor];

  return v6;
}

Swift::Int sub_100030AC8()
{
  sub_1000375A8();
  sub_1000370A8();

  return sub_1000375E8();
}

uint64_t sub_100030B9C()
{
  sub_1000370A8();
}

Swift::Int sub_100030C5C()
{
  sub_1000375A8();
  sub_1000370A8();

  return sub_1000375E8();
}

uint64_t sub_100030D2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000312D4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_100030D5C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x7974696E55;
  v5 = 0xE500000000000000;
  v6 = 0x6E65657247;
  v7 = 0xEA0000000000726FLL;
  v8 = 0x6C6F6369746C754DLL;
  if (v2 != 3)
  {
    v8 = 0x6B63616C42;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 6579538;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_100030E00()
{
  result = qword_10004B810;
  if (!qword_10004B810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B810);
  }

  return result;
}

uint64_t sub_100030E54(uint64_t a1, uint64_t a2)
{
  v4 = 0x7974696E55;
  sub_100014AE0(0, 5, 0);
  v6 = _swiftEmptyArrayStorage[2];
  v5 = _swiftEmptyArrayStorage[3];
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    sub_100014AE0((v5 > 1), v6 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v7;
  v8 = &_swiftEmptyArrayStorage[2 * v6];
  v8[4] = 0x7974696E55;
  v8[5] = 0xE500000000000000;
  v9 = _swiftEmptyArrayStorage[3];
  v10 = v6 + 2;
  if (v7 >= v9 >> 1)
  {
    sub_100014AE0((v9 > 1), v10, 1);
  }

  _swiftEmptyArrayStorage[2] = v10;
  v11 = &_swiftEmptyArrayStorage[2 * v7];
  v11[4] = 6579538;
  v11[5] = 0xE300000000000000;
  v13 = _swiftEmptyArrayStorage[2];
  v12 = _swiftEmptyArrayStorage[3];
  v14 = v13 + 1;
  if (v13 >= v12 >> 1)
  {
    sub_100014AE0((v12 > 1), v13 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v14;
  v15 = &_swiftEmptyArrayStorage[2 * v13];
  v15[4] = 0x6E65657247;
  v15[5] = 0xE500000000000000;
  v16 = _swiftEmptyArrayStorage[3];
  v17 = v13 + 2;
  if (v14 >= v16 >> 1)
  {
    sub_100014AE0((v16 > 1), v17, 1);
  }

  _swiftEmptyArrayStorage[2] = v17;
  v18 = &_swiftEmptyArrayStorage[2 * v14];
  v18[4] = 0x6C6F6369746C754DLL;
  v18[5] = 0xEA0000000000726FLL;
  v20 = _swiftEmptyArrayStorage[2];
  v19 = _swiftEmptyArrayStorage[3];
  if (v20 >= v19 >> 1)
  {
    sub_100014AE0((v19 > 1), v20 + 1, 1);
  }

  _swiftEmptyArrayStorage[2] = v20 + 1;
  v21 = &_swiftEmptyArrayStorage[2 * v20];
  v21[4] = 0x6B63616C42;
  v21[5] = 0xE500000000000000;
  v22 = sub_10001ABE0(_swiftEmptyArrayStorage);

  v23 = sub_100012A44(a1, a2, v22);

  if (v23)
  {

    return a1;
  }

  return v4;
}

uint64_t sub_1000312D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_100030E54(a1, a2);
  v4 = v3;

  v5 = 0;
  if (v2 == 0x7974696E55 && v4 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v6 = sub_100037558();

  if (v6)
  {
    goto LABEL_5;
  }

  v5 = 1;
  if (v2 == 6579538 && v4 == 0xE300000000000000)
  {
    goto LABEL_3;
  }

  v8 = sub_100037558();

  if (v8)
  {
    goto LABEL_5;
  }

  v5 = 2;
  if (v2 == 0x6E65657247 && v4 == 0xE500000000000000)
  {
    goto LABEL_3;
  }

  v9 = sub_100037558();

  if (v9)
  {
    goto LABEL_5;
  }

  v5 = 3;
  if (v2 == 0x6C6F6369746C754DLL && v4 == 0xEA0000000000726FLL)
  {
    goto LABEL_3;
  }

  v10 = sub_100037558();

  if (v10)
  {
    goto LABEL_5;
  }

  v5 = 4;
  if (v2 == 0x6B63616C42 && v4 == 0xE500000000000000)
  {
LABEL_3:
  }

  else
  {
    v11 = sub_100037558();

    if ((v11 & 1) == 0)
    {

      return 5;
    }
  }

LABEL_5:

  return v5;
}

id sub_1000316F4(char a1)
{
  switch(a1)
  {
    case 1:
    case 6:
    case 16:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.439215686;
      v4 = 0.105882353;
      v5 = 0.149019608;
      goto LABEL_17;
    case 2:
    case 7:
    case 18:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.117647059;
      v4 = 0.564705882;
      v6 = 0x3FD5555555555555;
      goto LABEL_16;
    case 3:
    case 8:
    case 20:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.164705882;
      v4 = 0.270588235;
      v5 = 0.192156863;
      goto LABEL_17;
    case 4:
    case 9:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v4 = 0.670588235;
      v5 = 0.0274509804;
      v3 = 1.0;
      goto LABEL_17;
    case 10:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.725490196;
      v4 = 0.321568627;
      v5 = 0.0;
      goto LABEL_17;
    case 11:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.643137255;
      v4 = 0.37254902;
      v5 = 0.796078431;
      goto LABEL_17;
    case 12:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.364705882;
      v4 = 0.168627451;
      v5 = 0.478431373;
      goto LABEL_17;
    case 13:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.956862745;
      v4 = 0.31372549;
      v5 = 0.349019608;
      goto LABEL_17;
    case 15:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.658823529;
      v5 = 0.031372549;
      v4 = 0.0;
      goto LABEL_17;
    case 17:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.388235294;
      v4 = 0.674509804;
      v5 = 0.525490196;
      goto LABEL_17;
    case 19:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.203921569;
      v4 = 0.454901961;
      v6 = 0x3FD1111111111111;
LABEL_16:
      v5 = *&v6;
      goto LABEL_17;
    case 21:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.51372549;
      goto LABEL_26;
    case 22:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.407843137;
      goto LABEL_26;
    case 23:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.325490196;
      goto LABEL_26;
    case 24:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.2;
LABEL_26:
      v9 = 1.0;
      v4 = v3;
      v5 = v3;
      goto LABEL_18;
    case 25:
      v7 = [objc_opt_self() blackColor];

      return v7;
    case 26:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithWhite:alpha:";
      v3 = 0.00392156863;
      v4 = 1.0;

      return [v1 v2];
    default:
      v1 = objc_allocWithZone(UIColor);
      v2 = "initWithRed:green:blue:alpha:";
      v3 = 0.917647059;
      v4 = 0.00392156863;
      v5 = 0.0509803922;
LABEL_17:
      v9 = 1.0;
LABEL_18:

      return [v1 v2];
  }
}

uint64_t sub_100031A70(char a1)
{
  result = 0x317974696E55;
  switch(a1)
  {
    case 1:
      result = 0x327974696E55;
      break;
    case 2:
      result = 0x337974696E55;
      break;
    case 3:
      result = 0x347974696E55;
      break;
    case 4:
      result = 0x357974696E55;
      break;
    case 5:
      result = 0x6C6F6369746C754DLL;
      break;
    case 6:
      result = 0x6C6F6369746C754DLL;
      break;
    case 7:
      result = 0x6C6F6369746C754DLL;
      break;
    case 8:
      result = 0x6C6F6369746C754DLL;
      break;
    case 9:
      result = 0x6C6F6369746C754DLL;
      break;
    case 10:
      result = 0x6C6F6369746C754DLL;
      break;
    case 11:
      result = 0x6C6F6369746C754DLL;
      break;
    case 12:
      result = 0x6C6F6369746C754DLL;
      break;
    case 13:
      result = 828663122;
      break;
    case 14:
      result = 845440338;
      break;
    case 15:
      result = 862217554;
      break;
    case 16:
      result = 878994770;
      break;
    case 17:
      result = 0x316E65657247;
      break;
    case 18:
      result = 0x326E65657247;
      break;
    case 19:
      result = 0x336E65657247;
      break;
    case 20:
      result = 0x346E65657247;
      break;
    case 21:
      result = 0x316B63616C42;
      break;
    case 22:
      result = 0x326B63616C42;
      break;
    case 23:
      result = 0x336B63616C42;
      break;
    case 24:
      result = 0x346B63616C42;
      break;
    case 25:
      result = 0x6B63616C42;
      break;
    case 26:
      result = 0x646573756E55;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_100031D54@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100031FA8(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for RhizomeColor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RhizomeColor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100031EEC()
{
  result = qword_10004B818;
  if (!qword_10004B818)
  {
    sub_1000023BC(&qword_10004B820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B818);
  }

  return result;
}

unint64_t sub_100031F54()
{
  result = qword_10004B828;
  if (!qword_10004B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B828);
  }

  return result;
}

unint64_t sub_100031FA8(unint64_t result)
{
  if (result >= 0x1B)
  {
    return 27;
  }

  return result;
}

void sub_100031FB8()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  v2 = 500.0;
  if (v1 == 1)
  {
    v2 = 800.0;
  }

  qword_10004D310 = *&v2;
}

uint64_t sub_100032030()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  swift_unknownObjectWeakDestroy();

  return _swift_deallocClassInstance(v0, 160, 7);
}

void sub_1000320B0()
{
  v1 = v0;
  v2 = *(v0 + 56);
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  sub_1000375D8(*&v2);
  v3 = *(v0 + 64);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_1000375D8(*&v3);
  v4 = *(v0 + 136);
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  sub_1000375D8(*&v4);
  v5 = *(v0 + 144);
  if (v5 == 0.0)
  {
    v5 = 0.0;
  }

  sub_1000375D8(*&v5);
  v6 = *(v0 + 80);
  v7 = *(v1 + 88);
  v8 = *(v1 + 72);
  v9 = v6;
  v10 = v7;
  sub_100037268();
  sub_100037268();
  sub_100037268();

  sub_1000375B8(*(v1 + 96));
  sub_1000375C8(*(v1 + 128));
  sub_1000375C8(*(v1 + 129));
  v11 = *(v1 + 104);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  sub_1000375D8(*&v11);
  v12 = *(v1 + 112);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  sub_1000375D8(*&v12);
}

Swift::Int sub_1000321D8()
{
  sub_1000375A8();
  sub_1000320B0();
  return sub_1000375E8();
}

Swift::Int sub_100032240()
{
  sub_1000375A8();
  sub_1000320B0();
  return sub_1000375E8();
}

uint64_t sub_10003228C()
{
  sub_1000373A8(126);
  v4._object = 0x800000010003AD10;
  v4._countAndFlagsBits = 0xD000000000000012;
  sub_1000370B8(v4);
  v5._countAndFlagsBits = sub_100037538();
  sub_1000370B8(v5);

  v6._countAndFlagsBits = 0x697469736F707B3ELL;
  v6._object = 0xEE0028203D206E6FLL;
  sub_1000370B8(v6);
  v7._countAndFlagsBits = sub_100037158();
  sub_1000370B8(v7);

  v8._countAndFlagsBits = 44;
  v8._object = 0xE100000000000000;
  sub_1000370B8(v8);
  v9._countAndFlagsBits = sub_100037158();
  sub_1000370B8(v9);

  v10._object = 0x800000010003AD30;
  v10._countAndFlagsBits = 0xD000000000000012;
  sub_1000370B8(v10);
  v11._countAndFlagsBits = sub_100037158();
  sub_1000370B8(v11);

  v12._countAndFlagsBits = 0x746867696568202CLL;
  v12._object = 0xEA0000000000203ALL;
  sub_1000370B8(v12);
  v13._countAndFlagsBits = sub_100037158();
  sub_1000370B8(v13);

  v14._countAndFlagsBits = 0x6974616F6C66202CLL;
  v14._object = 0xEC000000203A676ELL;
  sub_1000370B8(v14);
  if (*(v0 + 128))
  {
    v1._countAndFlagsBits = 7562617;
  }

  else
  {
    v1._countAndFlagsBits = 28526;
  }

  if (*(v0 + 128))
  {
    v2 = 0xE300000000000000;
  }

  else
  {
    v2 = 0xE200000000000000;
  }

  v1._object = v2;
  sub_1000370B8(v1);

  v15._countAndFlagsBits = 0xD000000000000015;
  v15._object = 0x800000010003AD50;
  sub_1000370B8(v15);
  v16._countAndFlagsBits = sub_100037158();
  sub_1000370B8(v16);

  v17._countAndFlagsBits = 0x20746E696F70202CLL;
  v17._object = 0xEF203D20657A6973;
  sub_1000370B8(v17);
  v18._countAndFlagsBits = sub_100037158();
  sub_1000370B8(v18);

  v19._countAndFlagsBits = 125;
  v19._object = 0xE100000000000000;
  sub_1000370B8(v19);
  return 0;
}

unint64_t sub_100032530()
{
  result = qword_10004B9B0;
  if (!qword_10004B9B0)
  {
    type metadata accessor for RhizomeLayoutSpec();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004B9B0);
  }

  return result;
}

BOOL sub_100032584(uint64_t a1, uint64_t a2)
{
  result = CGSizeEqualToSize(*(a1 + 56), *(a2 + 56));
  if (result)
  {
    result = CGPointEqualToPoint(*(a1 + 136), *(a2 + 136));
    if (result)
    {
      v5 = *(a1 + 72);
      v6 = *(a1 + 80);
      v7 = *(a1 + 88);
      v9 = *(a2 + 72);
      v8 = *(a2 + 80);
      v10 = *(a2 + 88);
      sub_10000FE20();
      v11 = v5;
      v12 = v6;
      v13 = v7;
      v14 = v9;
      v15 = v8;
      v16 = v10;
      if (sub_100037258() & 1) != 0 && (sub_100037258())
      {
        v17 = sub_100037258();

        if (v17)
        {
          return *(a1 + 96) == *(a2 + 96);
        }
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1000326B0()
{
  sub_100002590(&qword_10004BC38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100039AF0;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x800000010003AEF0;
  *(inited + 48) = [objc_allocWithZone(NSNull) init];
  *(inited + 56) = 0xD000000000000015;
  *(inited + 64) = 0x800000010003AF10;
  *(inited + 72) = [objc_allocWithZone(NSNull) init];
  *(inited + 80) = 0x726F66736E617274;
  *(inited + 88) = 0xE90000000000006DLL;
  *(inited + 96) = [objc_allocWithZone(NSNull) init];
  *(inited + 104) = 0x6E6564646968;
  *(inited + 112) = 0xE600000000000000;
  *(inited + 120) = [objc_allocWithZone(NSNull) init];
  *(inited + 128) = 0x6E6F697469736F70;
  *(inited + 136) = 0xE800000000000000;
  *(inited + 144) = [objc_allocWithZone(NSNull) init];
  *(inited + 152) = 0x7974696361706FLL;
  *(inited + 160) = 0xE700000000000000;
  *(inited + 168) = [objc_allocWithZone(NSNull) init];
  strcpy((inited + 176), "instanceCount");
  *(inited + 190) = -4864;
  *(inited + 192) = [objc_allocWithZone(NSNull) init];
  strcpy((inited + 200), "instanceDelay");
  *(inited + 214) = -4864;
  *(inited + 216) = [objc_allocWithZone(NSNull) init];
  *(inited + 224) = 0x756F72676B636162;
  *(inited + 232) = 0xEF726F6C6F43646ELL;
  *(inited + 240) = [objc_allocWithZone(NSNull) init];
  *(inited + 248) = 1752457584;
  *(inited + 256) = 0xE400000000000000;
  *(inited + 264) = [objc_allocWithZone(NSNull) init];
  *(inited + 272) = 0x73746E65746E6F63;
  *(inited + 280) = 0xE800000000000000;
  *(inited + 288) = [objc_allocWithZone(NSNull) init];
  *(inited + 296) = 0x726579616C627573;
  *(inited + 304) = 0xE900000000000073;
  *(inited + 312) = [objc_allocWithZone(NSNull) init];
  *(inited + 320) = 0x676E69727473;
  *(inited + 328) = 0xE600000000000000;
  *(inited + 336) = [objc_allocWithZone(NSNull) init];
  *(inited + 344) = 0x6F6C6F436C6C6966;
  *(inited + 352) = 0xE900000000000072;
  *(inited + 360) = [objc_allocWithZone(NSNull) init];
  *(inited + 368) = 0x6F43656B6F727473;
  *(inited + 376) = 0xEB00000000726F6CLL;
  *(inited + 384) = [objc_allocWithZone(NSNull) init];
  *(inited + 392) = 0x74646957656E696CLL;
  *(inited + 400) = 0xE900000000000068;
  *(inited + 408) = [objc_allocWithZone(NSNull) init];
  v1 = sub_1000342A4(inited);
  swift_setDeallocating();
  sub_100002590(&qword_10004BC40);
  result = swift_arrayDestroy();
  qword_10004B9B8 = v1;
  return result;
}

uint64_t sub_100032A40(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a2;
  swift_unknownObjectWeakAssign();
  if (*(v2 + 128) && swift_unknownObjectWeakLoadStrong())
  {
    sub_10000E8E0();
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

id sub_100032AA8()
{
  v1 = *(v0 + 80);
  if (v1)
  {
    [v1 setHidden:*(v0 + 152)];
  }

  v2 = *(v0 + 88);
  if (v2)
  {
    [v2 setHidden:*(v0 + 152)];
  }

  v3 = *(v0 + 96);
  if (v3)
  {
    [v3 setHidden:*(v0 + 152)];
  }

  v4 = *(v0 + 104);
  if (v4)
  {
    [v4 setHidden:*(v0 + 152)];
  }

  v5 = *(v0 + 112);
  if (v5)
  {
    [v5 setHidden:*(v0 + 152)];
  }

  v6 = *(v0 + 56);
  if (v6)
  {
    [v6 setHidden:*(v0 + 152)];
  }

  v7 = *(v0 + 64);
  if (v7)
  {
    [v7 setHidden:*(v0 + 152)];
  }

  result = *(v0 + 72);
  if (result)
  {
    v9 = *(v0 + 152);

    return [result setHidden:v9];
  }

  return result;
}

id sub_100032B80(double a1)
{
  v2 = *(v1 + 80);
  if (v2)
  {
    [v2 setAlpha:*(v1 + 156)];
  }

  v3 = *(v1 + 88);
  if (v3)
  {
    [v3 setAlpha:*(v1 + 156)];
  }

  v4 = *(v1 + 96);
  if (v4)
  {
    [v4 setAlpha:*(v1 + 156)];
  }

  v5 = *(v1 + 104);
  if (v5)
  {
    [v5 setAlpha:*(v1 + 156)];
  }

  v6 = *(v1 + 112);
  if (v6)
  {
    [v6 setAlpha:*(v1 + 156)];
  }

  v7 = *(v1 + 56);
  if (v7)
  {
    LODWORD(a1) = *(v1 + 156);
    [v7 setOpacity:a1];
  }

  v8 = *(v1 + 64);
  if (v8)
  {
    LODWORD(a1) = *(v1 + 156);
    [v8 setOpacity:a1];
  }

  result = *(v1 + 72);
  if (result)
  {
    LODWORD(a1) = *(v1 + 156);

    return [result setOpacity:a1];
  }

  return result;
}

uint64_t sub_100032C70(void *a1, uint64_t a2)
{
  v2 = *(a2 + 128);
  *(a2 + 128) = a1;
  v3 = a1;

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_10000E8E0();

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_100032CD4()
{
  v1 = v0[2];
  if (*(v1 + 16))
  {
    v2 = v0;
    v3 = sub_10001534C(0);
    if (v4)
    {
      v5 = (*(v1 + 56) + 48 * v3);
      v6 = *v5;
      v7 = v5[2];
      v32 = v5[1];
      v33 = v7;
      v31 = v6;
      if (*(v1 + 16))
      {
        sub_100003E18(&v31, v30);
        v8 = sub_10001534C(2u);
        if (v9)
        {
          v10 = (*(v1 + 56) + 48 * v8);
          v12 = v10[1];
          v11 = v10[2];
          v30[0] = *v10;
          v30[1] = v12;
          v30[2] = v11;
          v13 = objc_allocWithZone(CAShapeLayer);
          sub_100003E18(v30, v29);
          v14 = [v13 init];
          v15 = v2[7];
          v2[7] = v14;
          v16 = v14;

          if (v16)
          {
            sub_100032ECC(&v31, v32);
          }

          v17 = [objc_allocWithZone(CAShapeLayer) init];
          v18 = v2[9];
          v2[9] = v17;
          v19 = v17;

          if (v19)
          {
            sub_100032ECC(v30, v32);
          }

          if (*(v1 + 16) && (v20 = sub_10001534C(1u), (v21 & 1) != 0))
          {
            v22 = (*(v1 + 56) + 48 * v20);
            v24 = v22[1];
            v23 = v22[2];
            v29[0] = *v22;
            v29[1] = v24;
            v29[2] = v23;
            v25 = objc_allocWithZone(CAShapeLayer);
            sub_100003E18(v29, &v28);
            v26 = [v25 init];
            sub_100032ECC(v29, v32);
            sub_100003E74(v29);
            sub_100003E74(v30);
            sub_100003E74(&v31);
            v27 = v2[8];
            v2[8] = v26;
          }

          else
          {
            sub_100003E74(v30);
            sub_100003E74(&v31);
            v27 = v2[8];
            v2[8] = 0;
          }
        }

        else
        {
          sub_100003E74(&v31);
        }
      }
    }
  }
}

id sub_100032ECC(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = 0.0;
  [v2 setFrame:{0.0, 0.0, *(a1 + 32), *(a1 + 40)}];
  v7 = [*(a1 + 8) CGPath];
  [v3 setPath:v7];

  [v3 setLineJoin:kCALineJoinRound];
  if (*(a1 + 1))
  {
    v8 = objc_opt_self();
    v9 = [v8 blackColor];
    v10 = [v9 CGColor];

    [v3 setFillColor:v10];
    sub_1000343A8();
    v11 = *(a1 + 16);
    v12 = [v8 blackColor];
    LOBYTE(v8) = sub_100037258();

    if (v8)
    {
      v13 = a2;
    }

    else
    {
      v13 = v11;
    }

    v14 = [v13 CGColor];
    [v3 setStrokeColor:v14];

    v6 = *(a1 + 24);
  }

  else
  {
    v15 = [*(a1 + 16) CGColor];
    [v3 setFillColor:v15];

    [v3 setStrokeColor:0];
  }

  return [v3 setLineWidth:v6];
}

void sub_1000330D8(void *a1, double a2)
{
  v3 = v2;
  v5 = [a1 layer];
  v6 = *(v2 + 16);
  if (!*(v6 + 16))
  {
    goto LABEL_11;
  }

  v131 = v5;
  v7 = sub_10001534C(0);
  if ((v8 & 1) == 0 || (v9 = (*(v6 + 56) + 48 * v7), v10 = *v9, v11 = v9[2], *v139 = v9[1], *&v139[16] = v11, v138 = v10, !*(v6 + 16)))
  {
    v5 = v131;
LABEL_11:

    return;
  }

  sub_100003E18(&v138, v141);
  v12 = sub_10001534C(2u);
  if ((v13 & 1) == 0 || (v14 = (*(v6 + 56) + 48 * v12), v16 = v14[1], v15 = v14[2], v136 = *v14, *v137 = v16, *&v137[16] = v15, (v17 = *(v2 + 112)) == 0))
  {
    v19 = v131;
    goto LABEL_15;
  }

  v18 = *(v2 + 96);
  v19 = v131;
  if (!v18)
  {
LABEL_15:

    goto LABEL_16;
  }

  v20 = *(v2 + 24);
  if (*(v6 + 16))
  {
    sub_100003E18(&v136, v141);
    v21 = v17;
    v22 = v18;
    sub_10001534C(1u);
    if (v23)
    {
      v24 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
      v25 = *(v2 + 104);
      *(v2 + 104) = v24;
    }
  }

  else
  {
    sub_100003E18(&v136, v141);
    v26 = v17;
    v27 = v18;
  }

  if (v20)
  {
    if ((*(v2 + 120) & 1) == 0)
    {
      v28 = sub_100037058();
      v29 = MGGetBoolAnswer();

      if (v29)
      {
        v30 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        v31 = v3[10];
        v3[10] = v30;

        v32 = v138;
        v33 = *(&v138 + 1);
        v34 = objc_opt_self();
        LOBYTE(v134) = v32;
        *(&v134 + 1) = 0;
        *(&v134 + 1) = v33;
        *v135 = [v34 blackColor];
        *&v135[8] = *&v139[8];
        *&v135[24] = *&v139[24];
        v141[0] = v134;
        v141[1] = *v135;
        v141[2] = *&v135[16];
        v35 = sub_10002ECC0(v141, a2);
        v36 = v35;
        v37 = v3[10];
        if (v37 && v35)
        {
          v38 = v35;
          v39 = v37;
          [v39 setImage:v38];
          v40 = [v34 blackColor];
          [v39 setTintColor:v40];

          v41 = v39;
          [v41 sizeToFit];
          [v41 center];
          v43 = v42 + -40.0;
          [v41 center];
          [v41 setCenter:{v43, v44 + -40.0}];
          v45 = [v41 layer];

          v46 = [v18 layer];
          [v131 insertSublayer:v45 below:v46];
        }

        v47 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        v48 = v3[11];
        v3[11] = v47;

        if (*(v6 + 16))
        {
          sub_10001534C(1u);
          if (v49)
          {
            v50 = 1;
          }

          else
          {
            v50 = 2;
          }
        }

        else
        {
          v50 = 2;
        }

        LOWORD(v132) = v136;
        BYTE2(v132) = v50;
        *(&v132 + 1) = *(&v136 + 1);
        *v133 = [v34 blackColor];
        *&v133[8] = *&v137[8];
        *&v133[24] = *&v137[24];
        v140[0] = v132;
        v140[1] = *v133;
        v140[2] = *&v133[16];
        v61 = sub_10002ECC0(v140, a2);
        v62 = v61;
        v63 = v3[11];
        if (v63)
        {
          if (v61)
          {
            v64 = v63;
            [v64 setImage:v62];
            v65 = [v34 blackColor];
            [v64 setTintColor:v65];

            v66 = v64;
            [v66 sizeToFit];
            [v66 center];
            v68 = v67 + -40.0;
            [v66 center];
            [v66 setCenter:{v68, v69 + -40.0}];
            v70 = [v66 layer];

            v71 = [v18 layer];
            [v131 insertSublayer:v70 above:v71];

            sub_100003E74(&v132);
            sub_100003E74(&v134);
          }

          else
          {
            v72 = v63;

            sub_100003E74(&v132);
            sub_100003E74(&v134);
          }
        }

        else
        {

          sub_100003E74(&v132);
          sub_100003E74(&v134);
        }
      }
    }
  }

  else if ((BYTE1(v138) & 1) == 0)
  {
    sub_10002EB4C(a2);
    v52 = v51;
    v54 = v53;
    if (qword_10004AE18 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_78;
  }

  while (1)
  {
    if (*(v6 + 16) && (v73 = sub_10001534C(1u), (v74 & 1) != 0))
    {
      v75 = (*(v6 + 56) + 48 * v73);
      v77 = v75[1];
      v76 = v75[2];
      v134 = *v75;
      *v135 = v77;
      *&v135[16] = v76;
      v54 = *(&v134 + 1);
      v6 = v134;
      v52 = v77;
      sub_100002590(&qword_10004BC50);
      v78 = swift_allocObject();
      v79 = v138;
      v80 = *v139;
      v78[1] = xmmword_100039B00;
      v78[2] = v79;
      v81 = *&v139[16];
      v78[3] = v80;
      v78[4] = v81;
      v82 = *v135;
      v78[5] = v134;
      v78[6] = v82;
      v83 = v136;
      v78[7] = *&v135[16];
      v78[8] = v83;
      v84 = *&v137[16];
      v78[9] = *v137;
      v78[10] = v84;
      v130 = v78;
      sub_100002590(&qword_10004B370);
      v85 = swift_allocObject();
      *(v85 + 16) = xmmword_100039B10;
      *(v85 + 32) = v18;
      v86 = v3[13];
      if (!v86)
      {
        __break(1u);
        return;
      }

      v87 = v85;
      *(v85 + 40) = v86;
      *(v85 + 48) = v17;
      sub_100003E18(&v134, &v132);
      sub_100003E18(&v134, &v132);
      v88 = v86;
      v89 = 3;
      v90 = v87;
    }

    else
    {
      sub_100002590(&qword_10004BC50);
      v91 = swift_allocObject();
      v93 = *&v137[16];
      v92 = v138;
      v91[1] = xmmword_100038710;
      v91[2] = v92;
      v94 = *&v139[16];
      v91[3] = *v139;
      v91[4] = v94;
      v95 = *v137;
      v91[5] = v136;
      v91[6] = v95;
      v130 = v91;
      v91[7] = v93;
      sub_100002590(&qword_10004B370);
      v90 = swift_allocObject();
      v6 = 0;
      v54 = 0;
      v52 = 0;
      *(v90 + 16) = xmmword_100039B20;
      *(v90 + 32) = v18;
      *(v90 + 40) = v17;
      v89 = 2;
    }

    v129 = v90 & 0xC000000000000001;
    if ((v90 & 0xC000000000000001) == 0 && v89 > *((v90 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_75;
    }

    v127 = v90;
    sub_100003E18(&v138, &v134);
    sub_100003E18(&v136, &v134);
    v3 = (*&a2 & 0x7FFFFFFFFFFFFFFFLL);
    v96 = v17;
    v97 = v18;
    if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    if (a2 <= -9.22337204e18)
    {
      goto LABEL_76;
    }

    v122 = v97;
    v123 = v96;
    v124 = v52;
    v125 = v54;
    v126 = v6;
    v3 = v127;
    if (a2 < 9.22337204e18)
    {
      break;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
LABEL_30:
    swift_beginAccess();
    v55 = off_10004B750;
    if (*(off_10004B750 + 2) && (v56 = sub_10001541C(v52, v54), (v57 & 1) != 0))
    {
      v58 = *(v55[7] + 8 * v56);
      v59 = v58;
    }

    else
    {
      v58 = 0;
    }

    swift_endAccess();

    v60 = v3[16];
    v3[16] = v58;

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_10000E8E0();
      swift_unknownObjectRelease();
    }
  }

  v98 = 0;
  v99 = 2;
  v128 = v89 - 1;
  while (1)
  {
    v100 = v130[v99 + 1];
    v134 = v130[v99];
    *v135 = v100;
    *&v135[16] = v130[v99 + 2];
    if (v129)
    {
      sub_100003E18(&v134, &v132);
      v101 = sub_1000373C8();
    }

    else
    {
      v102 = v3[v98 + 4];
      sub_100003E18(&v134, &v132);
      v101 = v102;
    }

    v103 = v101;
    v104 = BYTE1(v134);
    if (BYTE1(v134) == 1)
    {
      if (qword_10004AE28 != -1)
      {
        swift_once();
      }

      v105 = &off_10004B760;
    }

    else
    {
      if (qword_10004AE20 != -1)
      {
        swift_once();
      }

      v105 = &off_10004B758;
    }

    swift_beginAccess();
    v106 = *v105;
    *&v132 = 0;
    *(&v132 + 1) = 0xE000000000000000;

    sub_100037448();
    v143._countAndFlagsBits = 45;
    v143._object = 0xE100000000000000;
    sub_1000370B8(v143);
    sub_100037448();
    v144._countAndFlagsBits = 45;
    v144._object = 0xE100000000000000;
    sub_1000370B8(v144);
    sub_100037448();
    v145._countAndFlagsBits = 45;
    v145._object = 0xE100000000000000;
    sub_1000370B8(v145);
    v146._countAndFlagsBits = sub_100037538();
    sub_1000370B8(v146);

    if (*(v106 + 16))
    {
      v107 = sub_10001541C(v132, *(&v132 + 1));
      v109 = v108;

      if (v109)
      {
        v110 = *v135;
        v111 = *(*(v106 + 56) + 8 * v107);

        sub_1000343A8();
        v112 = objc_opt_self();
        v113 = v110;
        v114 = [v112 blackColor];
        v115 = sub_100037258();

        v116 = *v139;
        if ((v104 & v115) == 0)
        {
          v116 = v113;
        }

        v117 = v116;
        [v103 setImage:v111];
        [v103 setTintColor:v117];
        v118 = v103;
        [v118 sizeToFit];
        [v118 center];
        v120 = v119 + -40.0;
        [v118 center];
        [v118 setCenter:{v120, v121 + -40.0}];
        v103 = [v118 layer];

        [v131 addSublayer:v103];
        sub_100003E74(&v134);
      }

      else
      {
        sub_100003E74(&v134);
      }

      v3 = v127;
    }

    else
    {
      sub_100003E74(&v134);
    }

    if (v128 == v98)
    {
      break;
    }

    v99 += 3;
    ++v98;
  }

  sub_100003EC8(v126, v125, v124);
  sub_100003E74(&v136);
LABEL_16:
  sub_100003E74(&v138);
}

void sub_100033DEC(void *a1)
{
  v18 = [a1 layer];
  [a1 bounds];
  MidX = CGRectGetMidX(v20);
  [a1 bounds];
  MidY = CGRectGetMidY(v21);
  if (qword_10004AE40 != -1)
  {
    swift_once();
  }

  sub_10003411C(a1);
  v5 = v1[7];
  if (v5)
  {
    [v5 setPosition:{MidX, MidY}];
    v6 = v1[7];
    if (v6)
    {
      v7 = v6;
      sub_100002590(&qword_10004BC30);
      isa = sub_100037008().super.isa;
      [v7 setActions:isa];

      if (v1[7])
      {
        [v18 addSublayer:?];
      }
    }
  }

  v9 = v1[8];
  if (v9)
  {
    v10 = v9;
    [v10 setPosition:{MidX, MidY}];
    sub_100002590(&qword_10004BC30);
    v11 = sub_100037008().super.isa;
    [v10 setActions:v11];

    [v18 addSublayer:v10];
  }

  v12 = v1[9];
  if (v12)
  {
    [v12 setPosition:{MidX, MidY}];
    v13 = v1[9];
    if (v13)
    {
      v14 = v13;
      sub_100002590(&qword_10004BC30);
      v15 = sub_100037008().super.isa;
      [v14 setActions:v15];

      v16 = v1[9];
      if (v16)
      {
        v17 = v16;
        [v18 addSublayer:v17];
      }
    }
  }
}

id sub_100034080()
{
  v1 = v0[7];
  if (v1)
  {
    [v1 removeFromSuperlayer];
  }

  v2 = v0[8];
  if (v2)
  {
    [v2 removeFromSuperlayer];
  }

  v3 = v0[9];
  if (v3)
  {
    [v3 removeFromSuperlayer];
  }

  v4 = v0[12];
  if (v4)
  {
    [v4 removeFromSuperview];
  }

  v5 = v0[13];
  if (v5)
  {
    [v5 removeFromSuperview];
  }

  result = v0[14];
  if (result)
  {

    return [result removeFromSuperview];
  }

  return result;
}

id sub_10003411C(id result)
{
  if (*(v1 + 24) == 1 && *(v1 + 120) == 1)
  {
    [result transform];
    CGAffineTransformDecompose(&v4, &transform);
    v2 = 3.0;
    if (*(v1 + 48))
    {
      v2 = 1.5;
    }

    v3 = v2 / v4.scale.width;
    [*(v1 + 56) setLineWidth:v2 / v4.scale.width];
    [*(v1 + 64) setLineWidth:v3];
    return [*(v1 + 72) setLineWidth:v3];
  }

  return result;
}

id *sub_1000341DC()
{

  sub_10000CC18((v0 + 17));
  return v0;
}

uint64_t sub_10003424C()
{
  sub_1000341DC();

  return _swift_deallocClassInstance(v0, 160, 7);
}

unint64_t sub_1000342A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002590(&qword_10004BC48);
    v3 = sub_1000374F8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_10001541C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000343A8()
{
  result = qword_10004B3C0;
  if (!qword_10004B3C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10004B3C0);
  }

  return result;
}

uint64_t sub_1000343F4(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = sub_100036F78();
  v55 = *(v8 - 8);
  __chkstk_darwin();
  v10 = v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_100036FA8();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + 128) = 0;
  *(v4 + 144) = 0;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = 0u;
  *(v4 + 104) = 0u;
  swift_unknownObjectWeakInit();
  *(v4 + 152) = 0;
  *(v4 + 156) = 1065353216;
  *(v4 + 16) = a1;
  v15 = a2 & 1;
  *(v4 + 24) = a2 & 1;
  v16 = a3 & 1;
  *(v4 + 48) = a3 & 1;
  *(v4 + 120) = a3 & 1;
  if (*(a1 + 16))
  {

    v17 = sub_10001534C(0);
    if (v18)
    {
      v19 = (*(a1 + 56) + 48 * v17);
      v21 = v19[1];
      v20 = v19[2];
      v58[0] = *v19;
      v58[1] = v21;
      v59 = v20;
      sub_100003E18(v58, aBlock);

      v22 = v59;
      *(v4 + 32) = v59;
      if (*(v4 + 120) == 1)
      {
        sub_100032CD4();
        if (v15)
        {
          sub_100003E74(v58);
        }

        else
        {
          v53 = type metadata accessor for RhizomeFlowerLayerImageCache();
          if (qword_10004AE38 != -1)
          {
            swift_once();
          }

          v23 = *&qword_10004D310;

          sub_10002EB4C(v23);
          v25 = v24;
          v27 = v26;
          if (qword_10004AE18 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v28 = off_10004B750;
          v29 = *(off_10004B750 + 2);
          v54 = v27;
          if (v29 && (v30 = sub_10001541C(v25, v27), (v31 & 1) != 0))
          {
            v32 = *(v28[7] + 8 * v30);
            v33 = v32;
          }

          else
          {
            v32 = 0;
          }

          v43 = swift_allocObject();
          *(v43 + 16) = v32;
          swift_endAccess();

          if (!*(v43 + 16))
          {
            v52[1] = v43 + 16;
            v44 = v43;
            v45 = *(&v58[0] + 1);
            v46 = qword_10004AE30;

            if (v46 != -1)
            {
              swift_once();
            }

            v54 = qword_10004D308;
            v47 = swift_allocObject();
            v43 = v44;
            v48 = v53;
            *(v47 + 16) = v44;
            *(v47 + 24) = v48;
            *(v47 + 40) = 0;
            *(v47 + 48) = 0;
            *(v47 + 32) = v45;
            *(v47 + 56) = v22;
            *(v47 + 72) = v16;
            *(v47 + 80) = sub_100034D3C;
            *(v47 + 88) = v4;
            aBlock[4] = sub_100034DC4;
            aBlock[5] = v47;
            aBlock[0] = _NSConcreteStackBlock;
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1000047BC;
            aBlock[3] = &unk_100046390;
            v49 = _Block_copy(aBlock);

            v50 = v45;
            sub_100036F88();
            v56 = &_swiftEmptyArrayStorage;
            sub_10002F128();
            sub_100002590(&qword_10004B038);
            sub_10002F180();
            sub_1000372A8();
            sub_100037228();
            _Block_release(v49);

            (*(v55 + 8))(v10, v8);
            (*(v12 + 8))(v14, v11);
          }

          swift_beginAccess();
          v51 = *(v43 + 16);

          sub_100003E74(v58);
        }
      }

      else
      {
        v39 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        v40 = *(v4 + 96);
        *(v4 + 96) = v39;

        v41 = [objc_allocWithZone(UIImageView) initWithFrame:{0.0, 0.0, 0.0, 0.0}];
        sub_100003E74(v58);
        v42 = *(v4 + 112);
        *(v4 + 112) = v41;
      }

      return v4;
    }
  }

  if (qword_10004ADD8 != -1)
  {
    swift_once();
  }

  v34 = sub_100036F68();
  sub_100002684(v34, qword_10004D2A0);
  v35 = sub_100036F48();
  v36 = sub_1000371C8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    *v37 = 0;
    _os_log_impl(&_mh_execute_header, v35, v36, "Failed to create rhizome layer set because the configuration had no background layer config.", v37, 2u);
  }

  sub_10000CC18(v4 + 136);
  type metadata accessor for RhizomeLayerSet();
  swift_deallocPartialClassInstance();
  return 0;
}

unint64_t sub_100034ADC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002590(&qword_10004BC58);
    v3 = sub_1000374F8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_100015500(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100034BBC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100002590(&qword_10004B348);
    v3 = sub_1000374F8();
    v4 = a1 + 32;

    while (1)
    {
      sub_100034CCC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_10001541C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10000D3A0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

uint64_t sub_100034CCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002590(&qword_10004B710);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100034D44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100034D7C()
{

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_100034DE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100034DF8()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_100034E54(unsigned __int8 a1)
{
  if (a1 > 0x10u)
  {
    goto LABEL_8;
  }

  if (((1 << a1) & 0x1F000) != 0)
  {
    v2._countAndFlagsBits = *"M";
    goto LABEL_9;
  }

  if (((1 << a1) & 0xF0) == 0)
  {
    if (((1 << a1) & 0xF00) != 0)
    {
      v2._countAndFlagsBits = 67;
      goto LABEL_9;
    }

LABEL_8:
    v2._countAndFlagsBits = 65;
    goto LABEL_9;
  }

  v2._countAndFlagsBits = 66;
LABEL_9:
  v2._object = 0xE100000000000000;
  sub_1000370B8(v2);

  if (a1 <= 0x10u && ((1 << a1) & 0x1F000) != 0)
  {
    v5._countAndFlagsBits = *"R";
    v5._object = 0xE100000000000000;
    sub_1000370B8(v5);
  }

  if (a1 > 0x10u)
  {
    goto LABEL_19;
  }

  if (((1 << a1) & 0x1F000) != 0)
  {
    v3._countAndFlagsBits = *"G";
    goto LABEL_20;
  }

  if (((1 << a1) & 0xF0) == 0)
  {
    if (((1 << a1) & 0xF00) != 0)
    {
      v3._countAndFlagsBits = 76;
      goto LABEL_20;
    }

LABEL_19:
    v3._countAndFlagsBits = 68;
    goto LABEL_20;
  }

  v3._countAndFlagsBits = 80;
LABEL_20:
  v3._object = 0xE100000000000000;
  sub_1000370B8(v3);

  return 0;
}

__n128 sub_1000350E0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000350F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10003513C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10003518C(unint64_t result, void *a2)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_25;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = sub_1000373C8();
        }

        else
        {
          if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v10 = *a2;
        v24 = *a2;
        *a2 = 0x8000000000000000;
        v11 = sub_1000155E0(v7);
        v13 = v10[2];
        v14 = (v12 & 1) == 0;
        v15 = __OFADD__(v13, v14);
        v16 = v13 + v14;
        if (v15)
        {
          goto LABEL_23;
        }

        v17 = v12;
        if (v10[3] < v16)
        {
          sub_1000166F0(v16, isUniquelyReferenced_nonNull_native);
          v11 = sub_1000155E0(v7);
          if ((v17 & 1) != (v18 & 1))
          {
            sub_1000201F4(0, &qword_10004B3C0);
            result = sub_100037578();
            __break(1u);
            return result;
          }

LABEL_15:
          v19 = v24;
          if (v17)
          {
            goto LABEL_4;
          }

          goto LABEL_16;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_15;
        }

        v23 = v11;
        sub_100017FB8();
        v11 = v23;
        v19 = v24;
        if (v17)
        {
LABEL_4:
          *(v19[7] + 8 * v11) = 0;
          goto LABEL_5;
        }

LABEL_16:
        v19[(v11 >> 6) + 8] |= 1 << v11;
        *(v19[6] + 8 * v11) = v7;
        *(v19[7] + 8 * v11) = 0;
        v20 = v19[2];
        v15 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v15)
        {
          goto LABEL_24;
        }

        v19[2] = v21;
        v22 = v7;
LABEL_5:
        *a2 = v19;

        if (v8 == v4)
        {
          return result;
        }
      }

      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      result = sub_1000374A8();
      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_10003539C(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v5 = *a2;
    if (!*(*a2 + 16))
    {
      goto LABEL_4;
    }

    v6 = *(i - 1);
    v7 = *i;
    v8 = *(i - 2);
    v9 = v6;
    v10 = v7;
    v11 = sub_1000155E0(v8);
    if (v12)
    {
      break;
    }

LABEL_4:
    if (!--v2)
    {
      return;
    }
  }

  v13 = *(*(v5 + 56) + 8 * v11);
  v14 = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    v30 = v9;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a2;
    v31 = *a2;
    *a2 = 0x8000000000000000;
    v17 = sub_1000155E0(v8);
    v19 = *(v16 + 16);
    v20 = (v18 & 1) == 0;
    v21 = __OFADD__(v19, v20);
    v22 = v19 + v20;
    if (v21)
    {
      goto LABEL_21;
    }

    v23 = v18;
    if (*(v16 + 24) >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_13;
      }

      v26 = v17;
      sub_100017FB8();
      v17 = v26;
      v25 = v31;
      if ((v23 & 1) == 0)
      {
        goto LABEL_16;
      }

LABEL_14:
      *(v25[7] + 8 * v17) = v14;
    }

    else
    {
      sub_1000166F0(v22, isUniquelyReferenced_nonNull_native);
      v17 = sub_1000155E0(v8);
      if ((v23 & 1) != (v24 & 1))
      {
        goto LABEL_23;
      }

LABEL_13:
      v25 = v31;
      if (v23)
      {
        goto LABEL_14;
      }

LABEL_16:
      v25[(v17 >> 6) + 8] |= 1 << v17;
      *(v25[6] + 8 * v17) = v8;
      *(v25[7] + 8 * v17) = v14;
      v27 = v25[2];
      v21 = __OFADD__(v27, 1);
      v28 = v27 + 1;
      if (v21)
      {
        goto LABEL_22;
      }

      v25[2] = v28;
      v29 = v8;
    }

    *a2 = v25;

    goto LABEL_4;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_1000201F4(0, &qword_10004B3C0);
  sub_100037578();
  __break(1u);
}

unint64_t sub_100035598(unsigned __int8 a1, uint64_t *a2)
{
  v4 = a2;
  LOBYTE(v5) = a1;
  v6 = sub_100003064(0, a1, a2);
  v7 = v6;
  if (v6 >> 62)
  {
    goto LABEL_47;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_82:

    __break(1u);
    goto LABEL_83;
  }

LABEL_3:
  v9 = sub_100019AE4(result);
  if ((v7 & 0xC000000000000001) != 0)
  {
    while (1)
    {
      v10 = sub_1000373C8();
LABEL_7:
      v30 = v10;

      v11 = sub_100003064(1, v5, v4);
      v3 = v11;
      v31 = &_swiftEmptyArrayStorage;
      if (v11 >> 62)
      {
        goto LABEL_56;
      }

      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
      v2 = &_swiftEmptyArrayStorage;
      if (!v12)
      {
        break;
      }

      v28 = v5;
      v29 = v4;
      v13 = 0;
      v5 = v3 & 0xC000000000000001;
      v14 = v3 & 0xFFFFFFFFFFFFFF8;
      v4 = &qword_10004B3C0;
      while (1)
      {
        if (v5)
        {
          v15 = sub_1000373C8();
        }

        else
        {
          if (v13 >= *(v14 + 16))
          {
            goto LABEL_44;
          }

          v15 = *(v3 + 8 * v13 + 32);
        }

        v16 = v15;
        v17 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        v7 = sub_1000201F4(0, &qword_10004B3C0);
        if (sub_100037258())
        {
        }

        else
        {
          sub_1000373F8();
          sub_100037428();
          v14 = v3 & 0xFFFFFFFFFFFFFF8;
          sub_100037438();
          v7 = &v31;
          sub_100037408();
        }

        ++v13;
        if (v17 == v12)
        {
          v7 = v31;
          LOBYTE(v5) = v28;
          v4 = v29;
          v2 = &_swiftEmptyArrayStorage;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      if (v7 < 0)
      {
        v2 = v7;
      }

      else
      {
        v2 = (v7 & 0xFFFFFFFFFFFFFF8);
      }

      if (!sub_1000374A8())
      {
        goto LABEL_82;
      }

      result = sub_1000374A8();
      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_85;
      }

      if (result)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v7 = &_swiftEmptyArrayStorage;
LABEL_22:

    if ((v7 & 0x8000000000000000) == 0 && (v7 & 0x4000000000000000) == 0)
    {
      result = *(v7 + 16);
      if (result)
      {
        goto LABEL_25;
      }

LABEL_83:

      __break(1u);
LABEL_84:

      __break(1u);
LABEL_85:
      __break(1u);
      goto LABEL_86;
    }
  }

  else
  {
    if ((v9 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_56:
      v12 = sub_1000374A8();
      goto LABEL_9;
    }

    if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v10 = *(v7 + 8 * v9 + 32);
      goto LABEL_7;
    }

    __break(1u);
  }

  if (!sub_1000374A8())
  {
    goto LABEL_83;
  }

  result = sub_1000374A8();
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_62;
  }

LABEL_25:
  v18 = sub_100019AE4(result);
  if ((v7 & 0xC000000000000001) != 0)
  {
LABEL_62:
    sub_1000373C8();
    goto LABEL_29;
  }

  if ((v18 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_64;
  }

  if (v18 >= *(v7 + 16))
  {
    __break(1u);
    goto LABEL_75;
  }

  v19 = *(v7 + 8 * v18 + 32);
LABEL_29:

  v20 = sub_100003064(2, v5, v4);
  v4 = v20;
  v31 = v2;
  if (!(v20 >> 62))
  {
    v5 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_31;
    }

    goto LABEL_65;
  }

LABEL_64:
  v5 = sub_1000374A8();
  if (v5)
  {
LABEL_31:
    v21 = 0;
    v3 = v4 & 0xC000000000000001;
    v22 = v4 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v3)
      {
        v23 = sub_1000373C8();
      }

      else
      {
        if (v21 >= *(v22 + 16))
        {
          goto LABEL_46;
        }

        v23 = *(v4 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        goto LABEL_45;
      }

      v7 = sub_1000201F4(0, &qword_10004B3C0);
      if (sub_100037258() & 1) != 0 || (sub_100037258())
      {
      }

      else
      {
        sub_1000373F8();
        sub_100037428();
        v22 = v4 & 0xFFFFFFFFFFFFFF8;
        sub_100037438();
        v7 = &v31;
        sub_100037408();
      }

      ++v21;
      if (v25 == v5)
      {
        v7 = v31;
        goto LABEL_66;
      }
    }
  }

LABEL_65:
  v7 = &_swiftEmptyArrayStorage;
LABEL_66:

  if ((v7 & 0x8000000000000000) == 0 && (v7 & 0x4000000000000000) == 0)
  {
    result = *(v7 + 16);
    if (!result)
    {
      goto LABEL_84;
    }

    goto LABEL_69;
  }

LABEL_75:
  if (!sub_1000374A8())
  {
    goto LABEL_84;
  }

  result = sub_1000374A8();
  if ((result & 0x8000000000000000) == 0)
  {
    if (!result)
    {
      __break(1u);
      goto LABEL_79;
    }

LABEL_69:
    v26 = sub_100019AE4(result);
    if ((v7 & 0xC000000000000001) == 0)
    {
      if ((v26 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v26 < *(v7 + 16))
      {
        v27 = *(v7 + 8 * v26 + 32);
LABEL_73:

        return v30;
      }

      __break(1u);
      goto LABEL_82;
    }

LABEL_79:
    sub_1000373C8();
    goto LABEL_73;
  }

LABEL_87:
  __break(1u);
  return result;
}

unint64_t sub_100035A88(unsigned __int8 a1, unint64_t a2, char a3)
{
  LOBYTE(v78) = a1;
  LOBYTE(v79) = a3;
  v7 = sub_100003064(0, a1, a3);
  v85 = _swiftEmptyDictionarySingleton;
  v8 = 0;
  sub_10003518C(v7, &v85);
  sub_10003539C(a2, &v85);
  if (v7 >> 62)
  {
    goto LABEL_59;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_60;
  }

LABEL_3:
  v80 = a2;
  if ((v7 & 0xC000000000000001) != 0)
  {
    while (1)
    {
      v9 = sub_1000373C8();
LABEL_6:
      v82 = v9;
      v10 = v85;
      v7 = (v85 + 8);
      v11 = 1 << *(v85 + 32);
      a2 = -1;
      v12 = v11 < 64 ? ~(-1 << v11) : -1;
      v13 = v12 & v85[8];
      v14 = (v11 + 63) >> 6;

      v3 = 0;
      while (v13)
      {
LABEL_16:
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        v17 = v16 | (v3 << 6);
        v18 = *(v10[7] + 8 * v17);
        if (a2 == -1 || v18 < a2)
        {
          v19 = *(v10[6] + 8 * v17);

          v82 = v19;
          a2 = v18;
        }
      }

      v4 = v80;
      while (1)
      {
        v15 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        if (v15 >= v14)
        {
          break;
        }

        v13 = *(v7 + 8 * v15);
        ++v3;
        if (v13)
        {
          v3 = v15;
          goto LABEL_16;
        }
      }

      v75 = v8;
      v84[0] = v82;

      v7 = v80[2];

      if (v7)
      {
        v5 = 0;
        v4 = &_swiftEmptyArrayStorage;
        v20 = v80 + 6;
LABEL_21:
        v21 = &v20[3 * v5];
        v8 = v5;
        while (v8 < v7)
        {
          v5 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            goto LABEL_56;
          }

          v22 = *(v21 - 2);
          v23 = *(v21 - 1);
          v24 = *v21;
          sub_1000201F4(0, &qword_10004B320);
          v25 = v22;
          v3 = v23;
          v26 = v24;
          v27 = v82;
          a2 = sub_100037258();

          if (a2)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v83 = v4;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              a2 = &v83;
              sub_100014B30(0, v4[2] + 1, 1);
              v4 = v83;
            }

            v30 = v4[2];
            v29 = v4[3];
            if (v30 >= v29 >> 1)
            {
              a2 = &v83;
              sub_100014B30((v29 > 1), v30 + 1, 1);
              v4 = v83;
            }

            v4[2] = v30 + 1;
            v31 = &v4[3 * v30];
            v31[4] = v25;
            v31[5] = v3;
            v31[6] = v26;
            v20 = v80 + 6;
            if (v5 != v7)
            {
              goto LABEL_21;
            }

            goto LABEL_34;
          }

          ++v8;
          v21 += 3;
          if (v5 == v7)
          {
            goto LABEL_34;
          }
        }

        goto LABEL_55;
      }

      v4 = &_swiftEmptyArrayStorage;
LABEL_34:

      v32 = v4[2];
      v77 = v7;
      if (v32)
      {
        v5 = &_swiftEmptyArrayStorage;
        v83 = &_swiftEmptyArrayStorage;
        sub_100037418();
        v33 = 5;
        v8 = v75;
        do
        {
          v34 = v4[v33];
          sub_1000373F8();
          sub_100037428();
          sub_100037438();
          sub_100037408();
          v33 += 3;
          --v32;
        }

        while (v32);

        v35 = v83;
      }

      else
      {

        v35 = &_swiftEmptyArrayStorage;
        v8 = v75;
        v5 = &_swiftEmptyArrayStorage;
      }

      v36 = sub_10001B510(v35);

      a2 = sub_100003064(1, v78, v79);

      v3 = sub_100036794(a2, v84, v36);
      v74 = v8;

      v7 = v80;
      if (v3 >> 62)
      {
        break;
      }

      if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_68;
      }

LABEL_41:

      v37 = sub_100003064(1, v78, v79);
      v38 = v37;
      v83 = v5;
      if (v37 >> 62)
      {
        v4 = sub_1000374A8();
        if (!v4)
        {
LABEL_66:
          v3 = &_swiftEmptyArrayStorage;
LABEL_67:

          v7 = v80;
          goto LABEL_68;
        }
      }

      else
      {
        v4 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v4)
        {
          goto LABEL_66;
        }
      }

      v3 = 0;
      v7 = &qword_10004B3C0;
      while (1)
      {
        if ((v38 & 0xC000000000000001) != 0)
        {
          v39 = sub_1000373C8();
        }

        else
        {
          if (v3 >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_58;
          }

          v39 = *(v38 + 8 * v3 + 32);
        }

        v8 = v39;
        v5 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        sub_1000201F4(0, &qword_10004B3C0);
        v40 = v82;
        a2 = sub_100037258();

        if (a2)
        {
        }

        else
        {
          sub_1000373F8();
          sub_100037428();
          sub_100037438();
          a2 = &v83;
          sub_100037408();
        }

        ++v3;
        if (v5 == v4)
        {
          v3 = v83;
          goto LABEL_67;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      if (sub_1000374A8())
      {
        goto LABEL_3;
      }

LABEL_60:
      __break(1u);
    }
  }

  else
  {
    if (*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v9 = *(v7 + 32);
      goto LABEL_6;
    }

    __break(1u);
  }

  if (!sub_1000374A8())
  {
    goto LABEL_41;
  }

LABEL_68:
  v41 = v3 & 0xFFFFFFFFFFFFFF8;
  if (v3 >> 62)
  {
    goto LABEL_126;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_146:
    __break(1u);
LABEL_147:
    __break(1u);
    return result;
  }

LABEL_70:
  v43 = sub_100019AE4(result);
  if ((v3 & 0xC000000000000001) == 0)
  {
    if ((v43 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (v43 < *(v41 + 16))
    {
      v44 = *(v3 + 8 * v43 + 32);
      goto LABEL_74;
    }

    __break(1u);
    goto LABEL_136;
  }

LABEL_133:
  v44 = sub_1000373C8();
LABEL_74:
  v73 = v44;

  v45 = &_swiftEmptyArrayStorage;
  if (!v77)
  {
    goto LABEL_87;
  }

  v46 = 0;
  v47 = v7 + 48;
  v7 = v77;
  v72 = v47;
  do
  {
    v76 = v45;
    v5 = v47 + 24 * v46;
    v48 = v46;
    while (1)
    {
      if (v48 >= v77)
      {
        __break(1u);
LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
LABEL_126:
        if ((v3 & 0x8000000000000000) == 0)
        {
          a2 = v41;
        }

        else
        {
          a2 = v3;
        }

        result = sub_1000374A8();
        if (!result)
        {
          goto LABEL_146;
        }

        result = sub_1000374A8();
        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_147;
        }

        if (!result)
        {
          __break(1u);
          goto LABEL_133;
        }

        goto LABEL_70;
      }

      v46 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        goto LABEL_123;
      }

      v49 = *(v5 - 16);
      v50 = *(v5 - 8);
      v4 = *v5;
      sub_1000201F4(0, &qword_10004B320);
      v51 = v82;
      v3 = v49;
      v52 = v50;
      v41 = v4;
      v53 = sub_100037258();

      if (v53)
      {
        break;
      }

      ++v48;
      v5 += 24;
      if (v46 == v77)
      {
        v45 = v76;
        goto LABEL_87;
      }
    }

    v45 = v76;
    v54 = swift_isUniquelyReferenced_nonNull_native();
    v83 = v76;
    if ((v54 & 1) == 0)
    {
      sub_100014B30(0, v76[2] + 1, 1);
      v45 = v83;
    }

    v56 = v45[2];
    v55 = v45[3];
    if (v56 >= v55 >> 1)
    {
      sub_100014B30((v55 > 1), v56 + 1, 1);
      v45 = v83;
    }

    v45[2] = v56 + 1;
    v57 = &v45[3 * v56];
    v57[4] = v3;
    v57[5] = v52;
    v57[6] = v41;
    v47 = v72;
  }

  while (v46 != v77);
LABEL_87:

  v58 = v45[2];
  if (v58)
  {
    v4 = &_swiftEmptyArrayStorage;
    v83 = &_swiftEmptyArrayStorage;
    sub_100037418();
    v59 = 6;
    do
    {
      v60 = v45[v59];
      sub_1000373F8();
      sub_100037428();
      sub_100037438();
      sub_100037408();
      v59 += 3;
      --v58;
    }

    while (v58);

    v61 = v83;
  }

  else
  {

    v61 = &_swiftEmptyArrayStorage;
    v4 = &_swiftEmptyArrayStorage;
  }

  v5 = sub_10001B510(v61);

  v62 = sub_100003064(2, v78, v79);
  v3 = v73;

  v41 = v74;
  a2 = sub_100036A14(v62, v84, v3, v5);

  if (!(a2 >> 62))
  {
    if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_111;
    }

LABEL_94:

    v63 = sub_100003064(2, v78, v79);
    v41 = v63;
    v83 = v4;
    if (!(v63 >> 62))
    {
      v64 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_96;
    }

    goto LABEL_145;
  }

LABEL_136:
  if (!sub_1000374A8())
  {
    goto LABEL_94;
  }

LABEL_111:
  while (2)
  {
    if (!(a2 >> 62))
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        break;
      }

      goto LABEL_113;
    }

    if (sub_1000374A8())
    {
LABEL_113:

      if (a2 >> 62)
      {
        v69 = sub_1000374A8();
        if ((v69 & 0x8000000000000000) != 0)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v69 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (!v69)
      {
        goto LABEL_141;
      }

      v70 = sub_100019AE4(v69);
      if ((a2 & 0xC000000000000001) != 0)
      {
        goto LABEL_142;
      }

      if ((v70 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (v70 < *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v71 = *(a2 + 8 * v70 + 32);
        goto LABEL_121;
      }

      __break(1u);
LABEL_145:
      v64 = sub_1000374A8();
LABEL_96:
      v81 = v3;
      if (v64)
      {
        v78 = v5;
        v79 = v3;
        v5 = 0;
        v7 = v41 & 0xC000000000000001;
        v3 = v41 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if (v7)
          {
            v65 = sub_1000373C8();
          }

          else
          {
            if (v5 >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_125;
            }

            v65 = *(v41 + 8 * v5 + 32);
          }

          v66 = v65;
          v67 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_124;
          }

          sub_1000201F4(0, &qword_10004B3C0);
          v4 = v82;
          v68 = sub_100037258();

          if (v68 & 1) != 0 || (sub_100037258())
          {
          }

          else
          {
            sub_1000373F8();
            sub_100037428();
            sub_100037438();
            sub_100037408();
          }

          ++v5;
          if (v67 == v64)
          {
            a2 = v83;
            v5 = v78;
            v3 = v79;
            goto LABEL_110;
          }
        }
      }

      a2 = &_swiftEmptyArrayStorage;
LABEL_110:

      continue;
    }

    break;
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  sub_1000373C8();
LABEL_121:

  return v82;
}

Swift::Int sub_100036580()
{
  sub_1000375A8();
  sub_100037268();
  sub_100037268();
  sub_100037268();
  return sub_1000375E8();
}

uint64_t sub_1000365EC()
{
  sub_100037268();
  sub_100037268();
  return sub_100037268();
}

Swift::Int sub_10003663C()
{
  sub_1000375A8();
  sub_100037268();
  sub_100037268();
  sub_100037268();
  return sub_1000375E8();
}

uint64_t sub_1000366A4()
{
  sub_1000201F4(0, &qword_10004B320);
  if (sub_100037258() & 1) != 0 && (sub_100037258())
  {
    return sub_100037258() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_100036740()
{
  result = qword_10004BDA0;
  if (!qword_10004BDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10004BDA0);
  }

  return result;
}

void *sub_100036794(unint64_t a1, void **a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    goto LABEL_26;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v6 = a1 & 0xC000000000000001;
    v25 = a1 + 32;
    v26 = a1 & 0xFFFFFFFFFFFFFF8;
    v27 = a3 + 56;
    v24 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        a1 = sub_1000373C8();
      }

      else
      {
        if (v5 >= *(v26 + 16))
        {
          goto LABEL_25;
        }

        a1 = *(v25 + 8 * v5);
      }

      v7 = a1;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      v9 = *a2;
      sub_1000201F4(0, &qword_10004B3C0);
      v10 = v9;
      v11 = sub_100037258();

      if ((v11 & 1) == 0)
      {
        v12 = v4;
        v13 = a2;
        if ((a3 & 0xC000000000000001) != 0)
        {
          v14 = v7;
          v15 = sub_100037318();

          if (v15)
          {

LABEL_20:
            a2 = v13;
            v4 = v12;
            v6 = v24;
            goto LABEL_5;
          }
        }

        else if (*(a3 + 16))
        {
          v16 = sub_100037248(*(a3 + 40));
          v17 = -1 << *(a3 + 32);
          v18 = v16 & ~v17;
          if ((*(v27 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
          {
            v19 = ~v17;
            while (1)
            {
              v20 = *(*(a3 + 48) + 8 * v18);
              v21 = sub_100037258();

              if (v21)
              {
                break;
              }

              v18 = (v18 + 1) & v19;
              if (((*(v27 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            goto LABEL_20;
          }
        }

LABEL_19:
        sub_1000373F8();
        sub_100037428();
        sub_100037438();
        a1 = sub_100037408();
        goto LABEL_20;
      }

LABEL_5:
      if (v5 == v4)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    v23 = a1;
    v4 = sub_1000374A8();
    a1 = v23;
  }

  return &_swiftEmptyArrayStorage;
}

void *sub_100036A14(unint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v23)
  {
    v7 = 0;
    v28 = a1 & 0xFFFFFFFFFFFFFF8;
    v29 = a1 & 0xC000000000000001;
    v8 = a1 + 32;
    v25 = a3;
    v26 = a4 + 56;
    v24 = a2;
    while (1)
    {
      if (v29)
      {
        a1 = sub_1000373C8();
      }

      else
      {
        if (v7 >= *(v28 + 16))
        {
          goto LABEL_26;
        }

        a1 = *(v8 + 8 * v7);
      }

      v9 = a1;
      if (__OFADD__(v7++, 1))
      {
        break;
      }

      v11 = *a2;
      sub_1000201F4(0, &qword_10004B3C0);
      v12 = v11;
      v13 = sub_100037258();

      if (v13 & 1) != 0 || (sub_100037258())
      {

        if (v7 == i)
        {
          return &_swiftEmptyArrayStorage;
        }
      }

      else
      {
        if ((a4 & 0xC000000000000001) == 0)
        {
          if (*(a4 + 16))
          {
            v16 = sub_100037248(*(a4 + 40));
            v17 = -1 << *(a4 + 32);
            v18 = v16 & ~v17;
            if ((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
            {
              v19 = ~v17;
              while (1)
              {
                v20 = *(*(a4 + 48) + 8 * v18);
                v21 = sub_100037258();

                if (v21)
                {
                  break;
                }

                v18 = (v18 + 1) & v19;
                if (((*(v26 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
                {
                  goto LABEL_19;
                }
              }

              goto LABEL_20;
            }
          }

LABEL_19:
          sub_1000373F8();
          sub_100037428();
          sub_100037438();
          a1 = sub_100037408();
          goto LABEL_20;
        }

        v14 = v9;
        v15 = sub_100037318();

        if ((v15 & 1) == 0)
        {
          goto LABEL_19;
        }

LABEL_20:
        a2 = v24;
        a3 = v25;
        if (v7 == i)
        {
          return &_swiftEmptyArrayStorage;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v23 = a1;
    i = sub_1000374A8();
  }

  return &_swiftEmptyArrayStorage;
}

__n128 sub_100036CA8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100036CBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100036D04(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}