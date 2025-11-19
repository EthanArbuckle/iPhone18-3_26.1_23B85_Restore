unint64_t sub_1DD4AD188()
{
  result = qword_1ECCDD7B8;
  if (!qword_1ECCDD7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7B8);
  }

  return result;
}

uint64_t sub_1DD4AD1DC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD6444F0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v24 = 0;
  v23 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(5, 0, 0, &v24, 7, 0, 0, &v23);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  v1 = OUTLINED_FUNCTION_1_57();
  *(inited + 88) = OUTLINED_FUNCTION_0_74(v1, v2, v3, v4, v5, v6, v7, v8, v18, *v20, *&v20[4], v23, v24);
  *(inited + 96) = xmmword_1DD643600;
  *(inited + 112) = 0;
  v9 = OUTLINED_FUNCTION_1_57();
  *(inited + 120) = OUTLINED_FUNCTION_0_74(v9, v10, v11, v12, v13, v14, v15, v16, v19, v21, v22, v23, v24);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

unint64_t DateTime.Date.DefinedDate.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD4AD304()
{
  result = qword_1ECCDD7C0;
  if (!qword_1ECCDD7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7C0);
  }

  return result;
}

uint64_t sub_1DD4AD360@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Date.DefinedDate.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s11DefinedDateOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4AD514()
{
  result = qword_1ECCDD7C8;
  if (!qword_1ECCDD7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7C8);
  }

  return result;
}

unint64_t sub_1DD4AD584()
{
  result = qword_1ECCDD7D0;
  if (!qword_1ECCDD7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7D0);
  }

  return result;
}

_BYTE *_s15DefinedDateTimeOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1DD4AD740()
{
  result = qword_1ECCDD7D8;
  if (!qword_1ECCDD7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7D8);
  }

  return result;
}

uint64_t sub_1DD4AD794(unsigned __int8 *a1)
{
  v2 = *a1;
  switch(v2)
  {
    case 16:
      v3 = 0;
      break;
    case 17:
      v3 = 0x3FF0000000000000;
      break;
    case 19:
      v3 = 0xBFF0000000000000;
      break;
    default:
      return 0;
  }

  result = 0;
  switch(*v1)
  {
    case 0:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 8:
    case 0xC:
    case 0xD:
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x16:
    case 0x17:
      v12 = 1;
      v11 = v2;
      type metadata accessor for DateTime.Interval();
      OUTLINED_FUNCTION_0_75();
      v5 = &v12;
      v6 = &v11;
      goto LABEL_15;
    case 1:
    case 0xB:
    case 0x11:
    case 0x12:
    case 0x14:
      v18 = 12;
      v17 = v2;
      type metadata accessor for DateTime.Interval();
      OUTLINED_FUNCTION_0_75();
      v5 = &v18;
      v6 = &v17;
      goto LABEL_15;
    case 9:
      v16 = 7;
      v15 = v2;
      type metadata accessor for DateTime.Interval();
      OUTLINED_FUNCTION_0_75();
      v5 = &v16;
      v6 = &v15;
      goto LABEL_15;
    case 0xA:
    case 0x13:
      v14 = 11;
      v13 = v2;
      type metadata accessor for DateTime.Interval();
      OUTLINED_FUNCTION_0_75();
      v5 = &v14;
      v6 = &v13;
      goto LABEL_15;
    case 0x1F:
      v10 = 4;
      v9 = v2;
      type metadata accessor for DateTime.Interval();
      OUTLINED_FUNCTION_0_75();
      v5 = &v10;
      v6 = &v9;
      goto LABEL_15;
    case 0x20:
      v8 = 6;
      v7 = v2;
      type metadata accessor for DateTime.Interval();
      OUTLINED_FUNCTION_0_75();
      v5 = &v8;
      v6 = &v7;
LABEL_15:
      result = DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(v3, 0, v5, v6);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t DateTime.DateTimeRange.DefinedDateTimeRange.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 20;
  switch(result)
  {
    case 0:
      goto LABEL_34;
    case 1:
      v2 = 1;
      goto LABEL_34;
    case 2:
      v2 = 2;
      goto LABEL_34;
    case 3:
      v2 = 3;
      goto LABEL_34;
    case 4:
      v2 = 4;
      goto LABEL_34;
    case 5:
      v2 = 5;
      goto LABEL_34;
    case 6:
      v2 = 6;
      goto LABEL_34;
    case 7:
      v2 = 7;
      goto LABEL_34;
    case 8:
      v2 = 8;
      goto LABEL_34;
    case 9:
      v2 = 9;
      goto LABEL_34;
    case 10:
      v2 = 10;
      goto LABEL_34;
    case 11:
      v2 = 11;
      goto LABEL_34;
    case 12:
      v2 = 12;
      goto LABEL_34;
    case 13:
      v2 = 13;
      goto LABEL_34;
    case 14:
      v2 = 14;
      goto LABEL_34;
    case 15:
      v2 = 15;
      goto LABEL_34;
    case 16:
      v2 = 16;
      goto LABEL_34;
    case 17:
      v2 = 17;
      goto LABEL_34;
    case 18:
      v2 = 18;
      goto LABEL_34;
    case 19:
      v2 = 19;
LABEL_34:
      v3 = v2;
      break;
    case 20:
      break;
    case 21:
      v3 = 21;
      break;
    case 22:
      v3 = 22;
      break;
    case 23:
      v3 = 23;
      break;
    case 24:
      v3 = 24;
      break;
    case 25:
      v3 = 25;
      break;
    case 26:
      v3 = 26;
      break;
    case 27:
      v3 = 27;
      break;
    case 28:
      v3 = 28;
      break;
    case 29:
      v3 = 29;
      break;
    case 30:
      v3 = 30;
      break;
    case 31:
      v3 = 31;
      break;
    case 32:
      v3 = 32;
      break;
    case 33:
      v3 = 33;
      break;
    case 34:
      v3 = 34;
      break;
    case 35:
      v3 = 35;
      break;
    case 36:
      v3 = 36;
      break;
    case 37:
      v3 = 37;
      break;
    default:
      v3 = 38;
      break;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1DD4ADA88()
{
  result = qword_1EE1604E0;
  if (!qword_1EE1604E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1604E0);
  }

  return result;
}

uint64_t sub_1DD4ADAE4@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.DateTimeRange.DefinedDateTimeRange.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t _s20DefinedDateTimeRangeOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xDB)
  {
    if (a2 + 37 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 37) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 38;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x26;
  v5 = v6 - 38;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s20DefinedDateTimeRangeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 37 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 37) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xDB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDA)
  {
    v6 = ((a2 - 219) >> 8) + 1;
    *result = a2 + 37;
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
          *result = a2 + 37;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1DD4ADD20()
{
  result = qword_1ECCDD7E0;
  if (!qword_1ECCDD7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7E0);
  }

  return result;
}

BOOL sub_1DD4ADD74(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  if (*(a1 + 16))
  {
    if (v4 == 1)
    {
      if (v7 == 1)
      {
        sub_1DD400F60(*a1, v3, 1);
        v8 = OUTLINED_FUNCTION_11_0();
        sub_1DD400F60(v8, v9, 1);
        return ((v5 ^ v2) & 1) == 0;
      }

      goto LABEL_11;
    }

    if (v7 != 2 || (v6 | v5) != 0)
    {
LABEL_11:
      v13 = OUTLINED_FUNCTION_11_0();
      sub_1DD400F4C(v13, v14, v7);
      sub_1DD400F60(v2, v3, v4);
      v15 = OUTLINED_FUNCTION_11_0();
      sub_1DD400F60(v15, v16, v7);
      return 0;
    }

    sub_1DD400F60(*a1, v3, 2);
    v17 = 0;
    v18 = 0;
    v19 = 2;
  }

  else
  {
    if (*(a2 + 16))
    {
      v11 = *(a1 + 8);

      goto LABEL_11;
    }

    v20 = *a1;
    if (v2 != v5 || v3 != v6)
    {
      v22 = sub_1DD640CD8();
      v23 = OUTLINED_FUNCTION_11_0();
      sub_1DD400F4C(v23, v24, 0);
      v25 = OUTLINED_FUNCTION_0_76();
      sub_1DD400F4C(v25, v26, v27);
      v28 = OUTLINED_FUNCTION_0_76();
      sub_1DD400F60(v28, v29, v30);
      v31 = OUTLINED_FUNCTION_11_0();
      sub_1DD400F60(v31, v32, 0);
      return v22 & 1;
    }

    sub_1DD400F4C(v20, v3, 0);
    v33 = OUTLINED_FUNCTION_0_76();
    sub_1DD400F4C(v33, v34, v35);
    v36 = OUTLINED_FUNCTION_0_76();
    sub_1DD400F60(v36, v37, v38);
    v17 = OUTLINED_FUNCTION_0_76();
  }

  sub_1DD400F60(v17, v18, v19);
  return 1;
}

uint64_t sub_1DD4ADEDC()
{
  v1 = *v0;
  if (*(v0 + 16))
  {
    if (*(v0 + 16) == 1)
    {
      MEMORY[0x1E12B3140](1);
      v2 = v1 & 1;
    }

    else
    {
      v2 = 2;
    }

    return MEMORY[0x1E12B3140](v2);
  }

  else
  {
    v3 = v0[1];
    MEMORY[0x1E12B3140](0);

    return sub_1DD63FD28();
  }
}

uint64_t sub_1DD4ADF74()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  sub_1DD640E28();
  if (v3)
  {
    if (v3 == 1)
    {
      MEMORY[0x1E12B3140](1);
      v4 = v1 & 1;
    }

    else
    {
      v4 = 2;
    }

    MEMORY[0x1E12B3140](v4);
  }

  else
  {
    MEMORY[0x1E12B3140](0);
    sub_1DD63FD28();
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD4AE014()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_1DD640E28();
  sub_1DD4ADEDC();
  return sub_1DD640E78();
}

uint64_t get_enum_tag_for_layout_string_13SiriInference25DefinedDateTimeRangeStoreV3KeyO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1DD4AE084(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_1DD4AE0C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DD4AE108(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_1DD4AE134()
{
  result = qword_1ECCDD7E8;
  if (!qword_1ECCDD7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7E8);
  }

  return result;
}

uint64_t sub_1DD4AE18C(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *a3;
  if (!*(a4 + 16) || (v7 = sub_1DD400FC0(*a1), (v8 & 1) == 0))
  {
    if (qword_1ECCDB078 != -1)
    {
      OUTLINED_FUNCTION_2_50();
    }

    v10 = off_1ECCDD7F0;
    if (!*(off_1ECCDD7F0 + 2))
    {
      return 0;
    }

    v11 = sub_1DD400FC0(v4);
    if ((v12 & 1) == 0)
    {
      return 0;
    }

    v13 = *(v10[7] + 8 * v11);

    v14 = sub_1DD63D128();
    if (v15)
    {
      v16 = v15;
    }

    else
    {
      v14 = 22616;
      v16 = 0xE200000000000000;
    }

    v9 = sub_1DD59B8FC(v14, v16, 0, v13);

    if (v9)
    {
LABEL_18:

      return v9;
    }

    if (v5 == 2)
    {
      v17 = 0;
    }

    else
    {
      v17 = sub_1DD59B8FC(v5 & 1, 0, 1, v13);
      if (v17)
      {
LABEL_17:
        v9 = v17;
        goto LABEL_18;
      }
    }

    v17 = sub_1DD59B8FC(v17, 0, 2, v13);
    goto LABEL_17;
  }

  v9 = *(*(a4 + 56) + 8 * v7);

  return v9;
}

uint64_t sub_1DD4AE2C0(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v3 = *a2;
  v11 = 10;
  v10 = v3;
  result = sub_1DD4AE18C(&v11, a1, &v10, a3);
  if (result)
  {
    v5 = *(result + 16);
    if (v5 && (v6 = *(v5 + 89), v6 != 7))
    {
    }

    else
    {
      v7 = *(result + 56);

      if (!v7)
      {
        return 0;
      }

      v8 = *(v7 + 24);

      if (!v8)
      {
        return 0;
      }

      v9 = *(v8 + 16);

      if (!v9)
      {
        return 0;
      }

      v6 = *(v9 + 89);

      if (v6 == 7)
      {
        return 0;
      }
    }

    result = 1;
    switch(v6)
    {
      case 1:
        result = 3;
        break;
      case 2:
        result = 4;
        break;
      case 3:
        result = 5;
        break;
      case 4:
        result = 6;
        break;
      case 5:
        result = 7;
        break;
      case 6:
        return result;
      default:
        result = 2;
        break;
    }
  }

  return result;
}

void *sub_1DD4AE410()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD800, &qword_1DD651E40);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD651E00;
  *(inited + 32) = 2;
  *(inited + 40) = sub_1DD3D4B78();
  *(inited + 48) = 0;
  *(inited + 56) = sub_1DD3B2F0C();
  *(inited + 64) = 3;
  *(inited + 72) = sub_1DD3D4C84();
  *(inited + 80) = 4;
  *(inited + 88) = sub_1DD4ACBFC();
  *(inited + 96) = 5;
  *(inited + 104) = sub_1DD4AD1DC();
  *(inited + 112) = 6;
  *(inited + 120) = sub_1DD4B0C3C();
  *(inited + 128) = 7;
  *(inited + 136) = sub_1DD4B7CFC();
  *(inited + 144) = 12;
  *(inited + 152) = sub_1DD4BFC18();
  *(inited + 160) = 13;
  *(inited + 168) = sub_1DD4C19E0();
  *(inited + 176) = 14;
  *(inited + 184) = sub_1DD5127A0();
  *(inited + 192) = 15;
  *(inited + 200) = sub_1DD530AB0();
  *(inited + 208) = 16;
  *(inited + 216) = sub_1DD532A9C();
  *(inited + 224) = 22;
  *(inited + 232) = sub_1DD4C2260();
  *(inited + 240) = 23;
  *(inited + 248) = sub_1DD3CE328();
  *(inited + 256) = 24;
  *(inited + 264) = sub_1DD5FD81C();
  *(inited + 272) = 19;
  *(inited + 280) = sub_1DD637604();
  *(inited + 288) = 10;
  *(inited + 296) = sub_1DD4BF74C();
  *(inited + 304) = 21;
  *(inited + 312) = sub_1DD637BCC();
  *(inited + 320) = 36;
  *(inited + 328) = sub_1DD544A14();
  *(inited + 336) = 37;
  *(inited + 344) = sub_1DD637B04();
  *(inited + 352) = 17;
  *(inited + 360) = sub_1DD5CF004();
  *(inited + 368) = 18;
  *(inited + 376) = sub_1DD5F1704();
  *(inited + 384) = 1;
  *(inited + 392) = sub_1DD3CA7D8();
  *(inited + 400) = 20;
  *(inited + 408) = sub_1DD6377E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD808, &qword_1DD651E48);
  sub_1DD41B2C8();
  result = sub_1DD63FC88();
  off_1ECCDD7F0 = result;
  return result;
}

uint64_t DefinedDateTimeRangeStore.isDateInDefinedDateTimeRange(_:dateTimeRange:calendar:locale:hemisphere:overrides:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v27 = *a2;
  v26 = 2;
  v8 = sub_1DD4AE18C(&v27, a4, &v26, a6);
  if (!v8)
  {
    return 0;
  }

  if (!*(v8 + 56))
  {
    if (qword_1ECCDB0C0 != -1)
    {
      OUTLINED_FUNCTION_5_0();
    }

    v21 = sub_1DD63F9F8();
    __swift_project_value_buffer(v21, qword_1ECD0DDC0);
    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640368();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DD38D000, v22, v23, "got nil dateTimeRangeCollection, returning false for isDateInDefinedDateTimeRange", v24, 2u);
      MEMORY[0x1E12B3DA0](v24, -1, -1);
    }

    return 0;
  }

  v9 = *(v8 + 56);

  v10 = sub_1DD49D49C(a1, a3);

  if (qword_1ECCDB0C0 != -1)
  {
    OUTLINED_FUNCTION_5_0();
  }

  v11 = sub_1DD63F9F8();
  __swift_project_value_buffer(v11, qword_1ECD0DDC0);

  v12 = sub_1DD63F9D8();
  v13 = sub_1DD640368();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v25 = v15;
    *v14 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD4F0, &unk_1DD651E10);
    sub_1DD4AEFEC();
    v16 = sub_1DD640278();
    v18 = sub_1DD39565C(v16, v17, &v25);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1DD38D000, v12, v13, "got dateTimeRangeCollection: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1E12B3DA0](v15, -1, -1);
    MEMORY[0x1E12B3DA0](v14, -1, -1);
  }

  v19 = sub_1DD4A01A0(a1, v10);

  return v19 & 1;
}

uint64_t DefinedDateTimeRangeStore.requiresWitchingHourDisambiguation(forDateTime:referenceDate:calendar:locale:overrides:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v65 = sub_1DD63D218();
  v10 = OUTLINED_FUNCTION_0(v65);
  v60 = v11;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v59 = v15 - v14;
  v64 = sub_1DD63D228();
  v16 = OUTLINED_FUNCTION_0(v64);
  v58 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_2();
  v22 = v21 - v20;
  v23 = sub_1DD63D1D8();
  v62 = OUTLINED_FUNCTION_0(v23);
  v63 = v24;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_2();
  v29 = v28 - v27;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = v56 - v32;
  v34 = sub_1DD63D078();
  v35 = OUTLINED_FUNCTION_0(v34);
  v57 = v36;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_2();
  v41 = v40 - v39;
  v66 = 37;
  v61 = a2;
  if ((DefinedDateTimeRangeStore.isDateInDefinedDateTimeRange(_:dateTimeRange:calendar:locale:hemisphere:overrides:)(a2, &v66, a3, a4, v42, a5) & 1) != 0 && (v43 = *(a1 + 16)) != 0 && v43[24] == 1 && v43[40] == 1 && v43[89] == 7 && v43[57] == 1)
  {
    v44 = *(a1 + 24);
    if (v44)
    {
      if ((*(v44 + 24) & 1) == 0)
      {
        v45 = *(v44 + 57);
        if (v45 != 2)
        {
          v46 = *(v44 + 16);
          if ((v45 & (v46 < 12)) != 0)
          {
            v47 = v46 + 12;
          }

          else
          {
            v47 = *(v44 + 16);
          }

          v48 = *(v44 + 32);
          if (*(v44 + 40))
          {
            v48 = 0;
          }

          v56[0] = v48;
          v56[1] = v47;
          v49 = *(v44 + 48);
          *(v44 + 56);
          (*(v63 + 104))(v29, *MEMORY[0x1E69698D0], v62);
          v50 = v58;
          (*(v58 + 104))(v22, *MEMORY[0x1E69699C8], v64);
          v51 = v59;
          v52 = v60;
          (*(v60 + 104))(v59, *MEMORY[0x1E6969998], v65);
          sub_1DD63D238();
          (*(v52 + 8))(v51, v65);
          (*(v50 + 8))(v22, v64);
          (*(v63 + 8))(v29, v62);
          if (__swift_getEnumTagSinglePayload(v33, 1, v34) != 1)
          {
            v55 = v57;
            (*(v57 + 32))(v41, v33, v34);
            v53 = sub_1DD63CFB8();
            (*(v55 + 8))(v41, v34);
            return v53 & 1;
          }

          sub_1DD4AF0C8(v33);
        }
      }
    }

    v53 = 1;
  }

  else
  {
    v53 = 0;
  }

  return v53 & 1;
}

void DefinedDateTimeRangeStore.getDefinedDateTimeRangesFor(_:calendar:locale:ranges:hemisphere:overrides:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6)
{
  v10 = *a5;
  if (a4)
  {
    v11 = a4;
  }

  else
  {
    if (qword_1ECCDB078 != -1)
    {
      OUTLINED_FUNCTION_2_50();
    }

    sub_1DD418DBC(v12);
    v11 = a1;
  }

  MEMORY[0x1EEE9AC00](a1);
  v13[2] = a1;
  v13[3] = a2;
  v13[4] = a3;
  v14 = v10;
  v15 = a6;

  sub_1DD4AEE54(sub_1DD4AF130, v13, v11);
}

void sub_1DD4AEE54(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a1;
  v6 = 0;
  v7 = a3 + 56;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
LABEL_8:
    while (1)
    {
      v21 = *(*(v4 + 48) + (__clz(__rbit64(v10)) | (v6 << 6)));
      v14 = v5(&v21);
      if (v3)
      {
        break;
      }

      if (v14)
      {
        v20 = v21;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v22 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v16 = *(v12 + 16);
          sub_1DD42BCB0();
          v12 = v22;
        }

        v17 = *(v12 + 16);
        if (v17 >= *(v12 + 24) >> 1)
        {
          sub_1DD42BCB0();
          v12 = v22;
        }

        *(v12 + 16) = v17 + 1;
        *(v12 + v17 + 32) = v20;
        v4 = a3;
        v5 = a1;
      }

      v10 &= v10 - 1;
      if (!v10)
      {
        goto LABEL_4;
      }
    }

LABEL_18:
  }

  else
  {
LABEL_4:
    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_18;
      }

      v10 = *(v7 + 8 * v13);
      ++v6;
      if (v10)
      {
        v6 = v13;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1DD4AEFEC()
{
  result = qword_1ECCDD7F8;
  if (!qword_1ECCDD7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCDD4F0, &unk_1DD651E10);
    sub_1DD4AF070();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD7F8);
  }

  return result;
}

unint64_t sub_1DD4AF070()
{
  result = qword_1EE163828;
  if (!qword_1EE163828)
  {
    sub_1DD63D078();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE163828);
  }

  return result;
}

uint64_t sub_1DD4AF0C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for DefinedDateTimeRangeStore(_BYTE *result, int a2, int a3)
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

unint64_t DateTime.Time.DefinedTime.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1DD4AF228()
{
  result = qword_1ECCDD810;
  if (!qword_1ECCDD810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD810);
  }

  return result;
}

uint64_t sub_1DD4AF284@<X0>(uint64_t *a1@<X8>)
{
  result = DateTime.Time.DefinedTime.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s11DefinedTimeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4AF438()
{
  result = qword_1ECCDD818;
  if (!qword_1ECCDD818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD818);
  }

  return result;
}

void *sub_1DD4AF49C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD828, &qword_1DD651FA8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 2;
  *(inited + 40) = sub_1DD53C21C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD830, &qword_1DD651FB0);
  sub_1DD4AF62C();
  result = sub_1DD63FC88();
  off_1ECCDD820 = result;
  return result;
}

uint64_t sub_1DD4AF538(unsigned __int8 *a1)
{
  v1 = *a1;
  if (qword_1ECCDB080 != -1)
  {
    swift_once();
  }

  v2 = off_1ECCDD820;
  if (!*(off_1ECCDD820 + 2))
  {
    return 0;
  }

  v3 = sub_1DD400FC0(v1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(v2[7] + 8 * v3);

  v6 = sub_1DD63D128();
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v6 = 0x746C7561666564;
    v8 = 0xE700000000000000;
  }

  v9 = sub_1DD59B948(v6, v8, v5);

  if (!v9)
  {
    v9 = sub_1DD59B948(0x746C7561666564, 0xE700000000000000, v5);
  }

  return v9;
}

unint64_t sub_1DD4AF62C()
{
  result = qword_1ECCDD838;
  if (!qword_1ECCDD838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD838);
  }

  return result;
}

id sub_1DD4AF680()
{
  v0 = sub_1DD63C7D8();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DD63C7C8();
  sub_1DD4B0ACC();
  result = sub_1DD4AF7DC();
  if (!result)
  {
    type metadata accessor for InferenceError();
    swift_allocObject();
    v4 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001DD66D8D0, 0x292874696E69, 0xE600000000000000, 24, MEMORY[0x1E69E7CC0], 2);
    v5 = *(v4 + 32);
    *(v4 + 24) = 0;
    *(v4 + 32) = 0xE000000000000000;

    OUTLINED_FUNCTION_0_77();
    sub_1DD4B0B10(v6, v7);
    swift_allocError();
    *v8 = v4;
    swift_willThrow();
  }

  return result;
}

id sub_1DD4AF7DC()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_1DD63FDA8();

  v2 = [v0 initWithBundleIdentifier_];

  return v2;
}

uint64_t sub_1DD4AF850(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1DD63FE28();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  type metadata accessor for ContactResolverDESRecord();
  sub_1DD4B0B10(&qword_1ECCDD858, type metadata accessor for ContactResolverDESRecord);
  result = sub_1DD63C7B8();
  if (!v3)
  {
    v9 = result;
    v10 = v8;
    sub_1DD63FE18();
    v11 = sub_1DD63FDF8();
    if (v12)
    {
      v13 = v11;
      v14 = v12;
      v43 = v9;
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v41 = a3;
      v15 = sub_1DD63F9F8();
      __swift_project_value_buffer(v15, qword_1EE16F068);

      v16 = sub_1DD63F9D8();
      v17 = sub_1DD640368();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136315138;
        v20 = sub_1DD39565C(v13, v14, aBlock);

        *(v18 + 4) = v20;
        _os_log_impl(&dword_1DD38D000, v16, v17, "DES Record: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1E12B3DA0](v19, -1, -1);
        MEMORY[0x1E12B3DA0](v18, -1, -1);
      }

      else
      {
      }

      v27 = dispatch_semaphore_create(0);
      OUTLINED_FUNCTION_57();
      v28 = swift_allocObject();
      *(v28 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD860, &qword_1DD651FE8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DD643F90;
      *(inited + 32) = 1702125924;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 48) = sub_1DD4C1B10();
      v30 = sub_1DD63FC88();
      v31 = sub_1DD63CF08();
      sub_1DD4FBEF0(v30);

      v32 = sub_1DD63FC48();

      v33 = swift_allocObject();
      *(v33 + 16) = v28;
      *(v33 + 24) = v27;
      aBlock[4] = sub_1DD4B0B98;
      aBlock[5] = v33;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DD4AFE08;
      aBlock[3] = &block_descriptor_20;
      v34 = _Block_copy(aBlock);

      v35 = v27;

      [v41 saveRecordWithData:v31 recordInfo:v32 completion:v34];
      _Block_release(v34);

      sub_1DD6404F8();
      OUTLINED_FUNCTION_26_0();
      v36 = *(v28 + 16);
      if (!v36)
      {

        v39 = v43;
        v40 = v10;
        return sub_1DD3AD790(v39, v40);
      }

      v21 = v10;
      v37 = *(v28 + 16);
      swift_willThrow();
      v38 = v36;

      v9 = v43;
    }

    else
    {
      v21 = v10;
      type metadata accessor for InferenceError();
      swift_allocObject();
      v22 = sub_1DD4DE96C(66, 0, 0xE000000000000000, 0xD000000000000066, 0x80000001DD66D8D0, 0xD000000000000011, 0x80000001DD66D940, 33, MEMORY[0x1E69E7CC0], 2);
      v23 = *(v22 + 32);
      *(v22 + 24) = 0;
      *(v22 + 32) = 0xE000000000000000;

      OUTLINED_FUNCTION_0_77();
      sub_1DD4B0B10(v24, v25);
      swift_allocError();
      *v26 = v22;
      swift_willThrow();
    }

    v39 = v9;
    v40 = v21;
    return sub_1DD3AD790(v39, v40);
  }

  return result;
}

uint64_t sub_1DD4AFDA0(uint64_t a1, void *a2, uint64_t a3)
{
  swift_beginAccess();
  v5 = *(a3 + 16);
  *(a3 + 16) = a2;
  v6 = a2;

  return sub_1DD640508();
}

uint64_t sub_1DD4AFE08(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v16 - v8;
  v11 = *(a1 + 32);
  v10 = *(a1 + 40);
  if (a2)
  {
    sub_1DD63D0D8();
    v12 = sub_1DD63D0F8();
    v13 = 0;
  }

  else
  {
    v12 = sub_1DD63D0F8();
    v13 = 1;
  }

  __swift_storeEnumTagSinglePayload(v9, v13, 1, v12);

  v14 = a3;
  v11(v9, a3);

  return sub_1DD3C34AC(v9);
}

uint64_t sub_1DD4AFF08(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  v5 = a1;
  return sub_1DD640508();
}

void sub_1DD4AFF6C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

void sub_1DD4AFFD4(uint64_t a1, void *a2)
{
  v5 = sub_1DD63D0F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v59 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD840, &qword_1DD651FD0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v59 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v59 - v18;
  v20 = sub_1DD4B0648(a2);
  if (v2)
  {
    return;
  }

  v59[1] = 0;
  v68 = v12;
  v71 = a1;
  v60 = a2;
  v63 = 0;
  v21 = v6;
  v22 = 0;
  v70 = v20;
  v23 = v16;
  v24 = v20 + 64;
  v25 = 1 << *(v20 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v20 + 64);
  v28 = (v25 + 63) >> 6;
  v65 = v21 + 16;
  v75 = (v21 + 32);
  v69 = v21;
  v73 = (v21 + 8);
  v59[2] = v78;
  v74 = v5;
  v76 = v9;
  v67 = v23;
  v66 = v19;
  v64 = v20 + 64;
  v72 = v28;
  while (v27)
  {
    v29 = v22;
LABEL_11:
    v30 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v31 = v30 | (v29 << 6);
    v32 = v69;
    v33 = v70;
    v34 = v68;
    (*(v69 + 16))(v68, *(v70 + 48) + *(v69 + 72) * v31, v5);
    v35 = *(*(v33 + 56) + 8 * v31);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD848, &qword_1DD651FD8);
    v37 = v5;
    v38 = *(v36 + 48);
    v39 = *(v32 + 32);
    v23 = v67;
    v39(v67, v34, v37);
    *(v23 + v38) = v35;
    __swift_storeEnumTagSinglePayload(v23, 0, 1, v36);

    v9 = v76;
    v19 = v66;
    v24 = v64;
LABEL_12:
    sub_1DD4B081C(v23, v19);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD848, &qword_1DD651FD8);
    if (__swift_getEnumTagSinglePayload(v19, 1, v40) == 1)
    {
      goto LABEL_27;
    }

    v41 = *&v19[*(v40 + 48)];
    v5 = v74;
    (*v75)(v9, v19, v74);
    if (!*(v41 + 16) || (v42 = sub_1DD3978DC(), (v43 & 1) == 0))
    {

      goto LABEL_23;
    }

    sub_1DD395720(*(v41 + 56) + 32 * v42, aBlock);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v44 = v78[8];
    sub_1DD63D018();
    if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_31;
    }

    if (v45 <= -9.22337204e18)
    {
      goto LABEL_32;
    }

    if (v45 >= 9.22337204e18)
    {
      goto LABEL_33;
    }

    v46 = v44 < v45;
    v9 = v76;
    if (v46)
    {
LABEL_23:
      OUTLINED_FUNCTION_57();
      v48 = swift_allocObject();
      *(v48 + 16) = 0;
      v62 = (v48 + 16);
      v49 = dispatch_semaphore_create(0);
      v61 = sub_1DD63D0B8();
      v50 = swift_allocObject();
      *(v50 + 16) = v48;
      *(v50 + 24) = v49;
      v78[2] = sub_1DD4B0AA0;
      v78[3] = v50;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v78[0] = sub_1DD4AFF6C;
      v78[1] = &block_descriptor_5;
      v51 = _Block_copy(aBlock);

      v52 = v49;

      v53 = v61;
      [v60 deleteSavedRecordWithIdentfier:v61 completion:v51];
      _Block_release(v51);

      sub_1DD6404F8();
      v54 = v62;
      OUTLINED_FUNCTION_26_0();
      v55 = *v54;
      if (*v54)
      {
        v57 = *v54;
        swift_willThrow();
        v58 = v55;

        (*v73)(v76, v74);

        return;
      }

      v5 = v74;
      v9 = v76;
      (*v73)(v76, v74);

      v56 = __OFADD__(v63++, 1);
      v28 = v72;
      if (v56)
      {
        __break(1u);
LABEL_27:

        return;
      }
    }

    else
    {
      (*v73)(v76, v5);
      v28 = v72;
    }
  }

  while (1)
  {
    v29 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v29 >= v28)
    {
      v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD848, &qword_1DD651FD8);
      __swift_storeEnumTagSinglePayload(v23, 1, 1, v47);
      v27 = 0;
      goto LABEL_12;
    }

    v27 = *(v24 + 8 * v29);
    ++v22;
    if (v27)
    {
      v22 = v29;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_1DD4B0648(void *a1)
{
  v2 = dispatch_semaphore_create(0);
  OUTLINED_FUNCTION_57();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  OUTLINED_FUNCTION_57();
  v4 = swift_allocObject();
  *(v4 + 16) = MEMORY[0x1E69E7CC8];
  v5 = v4 + 16;
  v6 = swift_allocObject();
  v6[2] = v4;
  v6[3] = v3;
  v6[4] = v2;
  aBlock[4] = sub_1DD4B0AC0;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DD4B09B4;
  aBlock[3] = &block_descriptor_13;
  v7 = _Block_copy(aBlock);

  v8 = v2;

  [a1 fetchSavedRecordInfoWithCompletion_];
  _Block_release(v7);
  sub_1DD6404F8();
  OUTLINED_FUNCTION_26_0();
  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = *(v3 + 16);
    swift_willThrow();
    v11 = v9;
  }

  else
  {

    OUTLINED_FUNCTION_26_0();
    v5 = *(v4 + 16);
  }

  return v5;
}

uint64_t sub_1DD4B081C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD840, &qword_1DD651FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4B088C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    v7 = a1;
  }

  else
  {
    sub_1DD63D0F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD850, &qword_1DD651FE0);
    sub_1DD4B0B10(&qword_1EE163810, MEMORY[0x1E69695A8]);
    v7 = sub_1DD63FC88();
  }

  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = v7;

  swift_beginAccess();
  v9 = *(a4 + 16);
  *(a4 + 16) = a2;
  v10 = a2;

  return sub_1DD640508();
}

uint64_t sub_1DD4B09B4(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    sub_1DD63D0F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD850, &qword_1DD651FE0);
    sub_1DD4B0B10(&qword_1EE163810, MEMORY[0x1E69695A8]);
    v4 = sub_1DD63FC58();
  }

  v7 = a3;
  v6(v4, a3);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DD4B0ACC()
{
  result = qword_1EE160218;
  if (!qword_1EE160218)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE160218);
  }

  return result;
}

uint64_t sub_1DD4B0B10(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_2Tm()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DD4B0BA0(uint64_t *a1, int a2)
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

uint64_t sub_1DD4B0BE0(uint64_t result, int a2, int a3)
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

uint64_t sub_1DD4B0C3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643BB0;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  type metadata accessor for DateTime();
  swift_allocObject();
  OUTLINED_FUNCTION_1_12();
  *(inited + 56) = OUTLINED_FUNCTION_2_51(6, v1, v2, v3, v4, v5, v6, v7);
  *(inited + 64) = xmmword_1DD6435E0;
  *(inited + 80) = 0;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_12();
  *(inited + 88) = OUTLINED_FUNCTION_2_51(7, v8, v9, v10, v11, v12, v13, v14);
  *(inited + 96) = xmmword_1DD643620;
  *(inited + 112) = 0;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_12();
  *(inited + 120) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(7, 0, 0, v15, 10, 0, 0, v16);
  *(inited + 128) = xmmword_1DD643660;
  *(inited + 144) = 0;
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_1_12();
  *(inited + 152) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(8, 0, 0, v17, 10, 30, 0, v18);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD4B0D84(uint64_t a1)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFD20, &qword_1DD648290);
    sub_1DD4477A4();
    v1 = sub_1DD63FD58();
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
    v1 = 5000257;
  }

  MEMORY[0x1E12B2260](v1, v3);
}

void sub_1DD4B0E18()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  OUTLINED_FUNCTION_3(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  sub_1DD4B69D8(v5, v25 - v12, &qword_1ECCDF3A0, &qword_1DD644940);
  v14 = sub_1DD6401F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);

  if (EnumTagSinglePayload == 1)
  {
    sub_1DD390754(v13, &qword_1ECCDF3A0, &qword_1DD644940);
  }

  else
  {
    sub_1DD6401E8();
    (*(*(v14 - 8) + 8))(v13, v14);
  }

  v17 = *(v1 + 16);
  v16 = *(v1 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_1DD6401A8();
    v20 = v19;
    swift_unknownObjectRelease();
    if (v7)
    {
LABEL_6:
      v21 = sub_1DD63FE68() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = v3;
      *(v22 + 24) = v1;

      if (v20 | v18)
      {
        v26[0] = 0;
        v26[1] = 0;
        v23 = v26;
        v26[2] = v18;
        v26[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v25[1] = 7;
      v25[2] = v23;
      v25[3] = v21;
      swift_task_create();

      sub_1DD390754(v5, &qword_1ECCDF3A0, &qword_1DD644940);

      goto LABEL_14;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (v7)
    {
      goto LABEL_6;
    }
  }

  sub_1DD390754(v5, &qword_1ECCDF3A0, &qword_1DD644940);
  v24 = swift_allocObject();
  *(v24 + 16) = v3;
  *(v24 + 24) = v1;
  if (v20 | v18)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v18;
    v26[7] = v20;
  }

  swift_task_create();
LABEL_14:
  OUTLINED_FUNCTION_17();
}

uint64_t DisambiguationEntityResolution.useCase.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_15_0();
}

uint64_t sub_1DD4B1110()
{
  v1 = v0;
  sub_1DD6408D8();
  MEMORY[0x1E12B2260](0xD000000000000027, 0x80000001DD66D980);
  MEMORY[0x1E12B2260](v1[2], v1[3]);
  MEMORY[0x1E12B2260](0xD000000000000015, 0x80000001DD66D9B0);
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  v3 = *(v2 + 8);
  sub_1DD640CC8();
  MEMORY[0x1E12B2260](0x65776F6C6C61202CLL, 0xEA00000000003D64);
  v4 = v1[11];
  sub_1DD4B0D84(v1[10]);
  MEMORY[0x1E12B2260](125, 0xE100000000000000);
  return 0;
}

void DisambiguationEntityResolution.__allocating_init(useCase:)()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD868, &qword_1DD652050);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v95 = (&v90 - v9);
  OUTLINED_FUNCTION_6_2();
  v10 = type metadata accessor for LearnedDisambiguationPersistentStorage();
  v11 = OUTLINED_FUNCTION_7(v10);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v16 = v15 - v14;
  v91 = type metadata accessor for PervasiveConfiguration();
  v17 = OUTLINED_FUNCTION_7(v91);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_1_4();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v90 - v24;
  sub_1DD54DE78(v109);
  sub_1DD54C398(v109, v25);
  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v26 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v26, qword_1ECD0DDF0);
  v27 = OUTLINED_FUNCTION_14_26();
  sub_1DD4B62FC(v27, v22, v28);
  v92 = v0;
  v29 = sub_1DD63F9D8();
  v30 = sub_1DD640368();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = OUTLINED_FUNCTION_54();
    v93 = v4;
    v32 = v31;
    v33 = OUTLINED_FUNCTION_62();
    v94 = v2;
    v34 = v33;
    v108[0] = v33;
    *v32 = 136315138;
    v35 = sub_1DD54CC64();
    v90 = v10;
    v36 = v16;
    v37 = v25;
    v39 = v38;
    OUTLINED_FUNCTION_2_52();
    sub_1DD4B6238();
    v40 = sub_1DD39565C(v35, v39, v108);
    v25 = v37;
    v16 = v36;
    v10 = v90;

    *(v32 + 4) = v40;
    OUTLINED_FUNCTION_44_9(&dword_1DD38D000, v29, v30, "DisambiguationEntityResolution: configured %s");
    __swift_destroy_boxed_opaque_existential_1(v34);
    v2 = v94;
    OUTLINED_FUNCTION_0_1();
    v4 = v93;
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    OUTLINED_FUNCTION_2_52();
    sub_1DD4B6238();
  }

  v41 = v95;
  v42 = OUTLINED_FUNCTION_5_9();
  sub_1DD4F6EBC(v42, v43, v44);
  if (__swift_getEnumTagSinglePayload(v41, 1, v10) == 1)
  {

    sub_1DD390754(v41, &qword_1ECCDD868, &qword_1DD652050);
    v45 = sub_1DD63F9D8();
    v46 = sub_1DD640378();
    if (OUTLINED_FUNCTION_9_0(v46))
    {
      v47 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_11_3(v47);
      OUTLINED_FUNCTION_50_11(&dword_1DD38D000, v48, v46, "DisambiguationEntityResolution: Could not be created");
      OUTLINED_FUNCTION_23_0();
    }

    OUTLINED_FUNCTION_2_52();
    sub_1DD4B6238();
  }

  else
  {
    sub_1DD4B6BD0(v41, v16, type metadata accessor for LearnedDisambiguationPersistentStorage);
    sub_1DD54C784(&v106);
    if (v107)
    {
      sub_1DD3AA4A8(&v106, v108);
      sub_1DD3C2388(v108, &v106);
      v49 = type metadata accessor for LoggingDataEmitter();
      v50 = sub_1DD50EE6C();
      v93 = v4;
      v51 = v50;
      v52 = type metadata accessor for ExperimentationTriggerLogger();
      v53 = swift_allocObject();
      v94 = v2;
      v54 = v53;
      v104 = v91;
      v105 = &off_1F58BD0C8;
      __swift_allocate_boxed_opaque_existential_1(v103);
      v55 = OUTLINED_FUNCTION_14_26();
      sub_1DD4B62FC(v55, v56, v57);
      v101 = v10;
      v102 = &off_1F58BA090;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v100);
      sub_1DD4B62FC(v16, boxed_opaque_existential_1, type metadata accessor for LearnedDisambiguationPersistentStorage);
      v99[3] = v49;
      v99[4] = &off_1F58BAF78;
      v99[0] = v51;
      v97 = v52;
      v98 = &off_1F58C3DB8;
      v96[0] = v54;
      v59 = type metadata accessor for DisambiguationEntityResolution();
      v60 = *(v59 + 48);
      v61 = *(v59 + 52);
      v91 = swift_allocObject();
      v92 = v25;
      __swift_mutable_project_boxed_opaque_existential_1(v103, v104);
      v95 = &v90;
      OUTLINED_FUNCTION_7_0();
      v63 = *(v62 + 64);
      MEMORY[0x1EEE9AC00](v64);
      OUTLINED_FUNCTION_2();
      v67 = v66 - v65;
      (*(v68 + 16))(v66 - v65);
      __swift_mutable_project_boxed_opaque_existential_1(v100, v101);
      OUTLINED_FUNCTION_7_0();
      v70 = *(v69 + 64);
      MEMORY[0x1EEE9AC00](v71);
      OUTLINED_FUNCTION_2();
      v74 = v73 - v72;
      (*(v75 + 16))(v73 - v72);
      __swift_mutable_project_boxed_opaque_existential_1(v99, v49);
      OUTLINED_FUNCTION_7_0();
      v77 = *(v76 + 64);
      MEMORY[0x1EEE9AC00](v78);
      OUTLINED_FUNCTION_2();
      v81 = (v80 - v79);
      (*(v82 + 16))(v80 - v79);
      __swift_mutable_project_boxed_opaque_existential_1(v96, v97);
      OUTLINED_FUNCTION_7_0();
      v84 = *(v83 + 64);
      MEMORY[0x1EEE9AC00](v85);
      OUTLINED_FUNCTION_2();
      v88 = (v87 - v86);
      (*(v89 + 16))(v87 - v86);
      sub_1DD4B5DB4(v93, v94, v67, v74, &v106, *v81, *v88, v91);
      __swift_destroy_boxed_opaque_existential_1(v108);
      OUTLINED_FUNCTION_22_17();
      OUTLINED_FUNCTION_2_52();
      sub_1DD4B6238();
      __swift_destroy_boxed_opaque_existential_1(v96);
      __swift_destroy_boxed_opaque_existential_1(v99);
      __swift_destroy_boxed_opaque_existential_1(v100);
      __swift_destroy_boxed_opaque_existential_1(v103);
    }

    else
    {

      OUTLINED_FUNCTION_22_17();
      OUTLINED_FUNCTION_2_52();
      sub_1DD4B6238();
      sub_1DD390754(&v106, &qword_1ECCDD870, &qword_1DD652058);
    }
  }

  OUTLINED_FUNCTION_17();
}

void sub_1DD4B1908()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v169 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD878, &unk_1DD652060);
  OUTLINED_FUNCTION_3(v5);
  v7 = *(v6 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v8);
  v161 = v151 - v9;
  OUTLINED_FUNCTION_6_2();
  v10 = sub_1DD63D0F8();
  v11 = OUTLINED_FUNCTION_0(v10);
  v158 = v12;
  v159 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2();
  v157 = v16 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  OUTLINED_FUNCTION_3(v17);
  v19 = *(v18 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v20);
  v165 = v151 - v21;
  OUTLINED_FUNCTION_6_2();
  v22 = type metadata accessor for LearningResult();
  v162 = OUTLINED_FUNCTION_0(v22);
  v163 = v23;
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v162);
  v164 = (v151 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v28 = v151 - v27;
  v29 = sub_1DD63D9E8();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2();
  v37 = v36 - v35;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  v39 = OUTLINED_FUNCTION_3(v38);
  v41 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_1_4();
  v160 = v42 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = (v151 - v45);
  v47 = type metadata accessor for LearnedDisambiguation();
  v48 = OUTLINED_FUNCTION_0(v47);
  v154 = v49;
  v51 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v155 = v151 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v52);
  v156 = v151 - v53;
  MEMORY[0x1EEE9AC00](v54);
  v55 = *v3;
  v56 = v1[10];
  v57 = v1[11];
  v58 = v1[3];
  v167 = v1[2];
  v168 = v151 - v59;
  v166 = v58;
  if (sub_1DD62886C(v167, v58, v56))
  {
    v153 = v28;
    __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
    v151[1] = v55;
    sub_1DD4F3F88();
    sub_1DD63DA08();
    v60 = sub_1DD63D9D8();
    v61 = *(v32 + 8);
    v152 = v29;
    v62 = v29;
    v63 = v61;
    v61(v37, v62);
    sub_1DD4F7E34(v60, v46);
    if (__swift_getEnumTagSinglePayload(v46, 1, v47) == 1)
    {
      sub_1DD390754(v46, &qword_1ECCDD880, &qword_1DD652070);
      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_78();
        swift_once();
      }

      v64 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v64, qword_1ECD0DDF0);

      v65 = sub_1DD63F9D8();
      v66 = sub_1DD640368();

      if (os_log_type_enabled(v65, v66))
      {
        v67 = v47;
        v68 = OUTLINED_FUNCTION_54();
        v69 = OUTLINED_FUNCTION_62();
        v170[0] = v69;
        *v68 = 136315138;
        *(v68 + 4) = sub_1DD39565C(v167, v166, v170);
        OUTLINED_FUNCTION_58_6(&dword_1DD38D000, v70, v71, "DisambiguationEntityResolution: No history found for %s, bypassing pervasive");
        __swift_destroy_boxed_opaque_existential_1(v69);
        OUTLINED_FUNCTION_25_12();
        v47 = v67;
        OUTLINED_FUNCTION_0_1();
      }
    }

    else
    {
      OUTLINED_FUNCTION_17_25();
      v79 = v46;
      v80 = v168;
      sub_1DD4B6BD0(v79, v168, v81);
      if ((sub_1DD4B2910(v80) & 1) == 0)
      {
        v167 = v47;
        sub_1DD4F3F88();
        sub_1DD63DA08();
        v91 = sub_1DD63D9D8();
        v63(v37, v152);
        v92 = v153;
        sub_1DD4B2BD4(v91);
        v93 = sub_1DD6401F8();
        OUTLINED_FUNCTION_65_0();
        __swift_storeEnumTagSinglePayload(v94, v95, v96, v93);
        OUTLINED_FUNCTION_16_26();
        v97 = v164;
        sub_1DD4B62FC(v92, v164, v98);
        v99 = (*(v163 + 80) + 40) & ~*(v163 + 80);
        v100 = swift_allocObject();
        v100[2] = 0;
        v100[3] = 0;
        v100[4] = v1;
        OUTLINED_FUNCTION_3_43();
        sub_1DD4B6BD0(v97, v101 + v99, v102);

        OUTLINED_FUNCTION_37_14();
        sub_1DD4B0E18();

        sub_1DD4B47A4(OS_LOG_TYPE_DEBUG);
        if (__swift_project_boxed_opaque_existential_1(v1 + 17, v1[20])[3])
        {
          if (qword_1ECCDB0E0 != -1)
          {
            OUTLINED_FUNCTION_0_78();
            swift_once();
          }

          v103 = sub_1DD63F9F8();
          OUTLINED_FUNCTION_130(v103, qword_1ECD0DDF0);
          v104 = sub_1DD63F9D8();
          v105 = sub_1DD640368();
          if (os_log_type_enabled(v104, v105))
          {
            v106 = OUTLINED_FUNCTION_9();
            OUTLINED_FUNCTION_11_3(v106);
            OUTLINED_FUNCTION_18(&dword_1DD38D000, v107, v108, "DisambiguationEntityResolution: Forcing disambiguation");
            OUTLINED_FUNCTION_23_0();
          }

          OUTLINED_FUNCTION_1_58();
          sub_1DD4B6238();
          OUTLINED_FUNCTION_3_43();
          v109 = v161;
          sub_1DD4B6BD0(v92, v161, v110);
          OUTLINED_FUNCTION_10_15();
          __swift_storeEnumTagSinglePayload(v111, v112, v113, v162);
          v114 = OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_unusedPrediction;
          OUTLINED_FUNCTION_55_7();
          sub_1DD4B628C(v109, v1 + v114);
          swift_endAccess();
          OUTLINED_FUNCTION_65_0();
          v85 = v167;
        }

        else
        {
          v115 = v160;
          sub_1DD4B69D8(v92, v160, &qword_1ECCDD880, &qword_1DD652070);
          v116 = v167;
          if (__swift_getEnumTagSinglePayload(v115, 1, v167) == 1)
          {
            sub_1DD390754(v115, &qword_1ECCDD880, &qword_1DD652070);
            if (qword_1ECCDB0E0 != -1)
            {
              OUTLINED_FUNCTION_0_78();
              swift_once();
            }

            v117 = sub_1DD63F9F8();
            OUTLINED_FUNCTION_130(v117, qword_1ECD0DDF0);
            v118 = sub_1DD63F9D8();
            v119 = sub_1DD640368();
            if (os_log_type_enabled(v118, v119))
            {
              v120 = OUTLINED_FUNCTION_9();
              OUTLINED_FUNCTION_11_3(v120);
              OUTLINED_FUNCTION_18(&dword_1DD38D000, v121, v122, "DisambiguationEntityResolution: No confident prediction");
              OUTLINED_FUNCTION_23_0();
            }

            OUTLINED_FUNCTION_1_58();
            sub_1DD4B6238();
            v123 = v162;
            if (*(v92 + *(v162 + 24)) == 1)
            {
              OUTLINED_FUNCTION_3_43();
              v124 = v161;
              sub_1DD4B6BD0(v92, v161, v125);
              OUTLINED_FUNCTION_10_15();
              __swift_storeEnumTagSinglePayload(v126, v127, v128, v123);
              v129 = OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_unusedPrediction;
              OUTLINED_FUNCTION_55_7();
              sub_1DD4B628C(v124, v1 + v129);
              swift_endAccess();
            }

            else
            {
              OUTLINED_FUNCTION_4_40();
              sub_1DD4B6238();
            }

            OUTLINED_FUNCTION_65_0();
          }

          else
          {
            OUTLINED_FUNCTION_17_25();
            v166 = v130;
            v131 = v169;
            sub_1DD4B6BD0(v115, v169, v132);
            v164 = v1;
            v133 = *v131;
            v134 = v131[1];

            v135 = v157;
            sub_1DD63D0E8();
            v136 = sub_1DD63D098();
            v138 = v137;
            (*(v158 + 8))(v135, v159);
            v139 = v156;
            v140 = &v156[v116[6]];
            sub_1DD63D068();
            v141 = *(v131 + v116[7]);
            v142 = *(v131 + v116[8]);
            *v139 = v133;
            v139[1] = v134;
            v139[2] = v136;
            v139[3] = v138;
            *(v139 + v116[7]) = v141;
            *(v139 + v116[8]) = v142;
            v143 = (v139 + v116[9]);
            *v143 = 0;
            v143[1] = 0xE000000000000000;
            OUTLINED_FUNCTION_41_10((v139 + v116[10]));
            OUTLINED_FUNCTION_65_0();
            __swift_storeEnumTagSinglePayload(v144, v145, v146, v93);
            OUTLINED_FUNCTION_10_32();
            v147 = v155;
            sub_1DD4B62FC(v139, v155, v148);
            v149 = (*(v154 + 80) + 32) & ~*(v154 + 80);
            v150 = swift_allocObject();
            *(v150 + 16) = 0;
            *(v150 + 24) = 0;
            sub_1DD4B6BD0(v147, v150 + v149, v166);
            *(v150 + ((v51 + v149 + 7) & 0xFFFFFFFFFFFFFFF8)) = v164;

            OUTLINED_FUNCTION_37_14();
            sub_1DD4B0E18();

            sub_1DD4B6238();
            OUTLINED_FUNCTION_4_40();
            sub_1DD4B6238();
            sub_1DD4B6238();
            OUTLINED_FUNCTION_10_15();
            v85 = v116;
          }
        }

        goto LABEL_15;
      }

      OUTLINED_FUNCTION_1_58();
      sub_1DD4B6238();
    }

    OUTLINED_FUNCTION_65_0();
    v85 = v47;
LABEL_15:
    __swift_storeEnumTagSinglePayload(v82, v83, v84, v85);
    OUTLINED_FUNCTION_17();
    return;
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v72 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v72, qword_1ECD0DDF0);

  v73 = sub_1DD63F9D8();
  v74 = sub_1DD640368();

  if (os_log_type_enabled(v73, v74))
  {
    v75 = OUTLINED_FUNCTION_54();
    v76 = OUTLINED_FUNCTION_62();
    v170[0] = v76;
    *v75 = 136315138;
    *(v75 + 4) = sub_1DD39565C(v167, v166, v170);
    OUTLINED_FUNCTION_58_6(&dword_1DD38D000, v77, v78, "DisambiguationEntityResolution: Unsupported use case: %s");
    __swift_destroy_boxed_opaque_existential_1(v76);
    OUTLINED_FUNCTION_25_12();
    OUTLINED_FUNCTION_0_1();
  }

  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_17();

  __swift_storeEnumTagSinglePayload(v86, v87, v88, v89);
}

uint64_t sub_1DD4B23FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1DD4B241C, 0, 0);
}

uint64_t sub_1DD4B241C()
{
  OUTLINED_FUNCTION_34_0();
  v1 = *(v0 + 16);
  sub_1DD4B4138(*(v0 + 24));
  OUTLINED_FUNCTION_26();

  return v2();
}

uint64_t sub_1DD4B2474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_1DD63F328();
  v5[4] = v6;
  v7 = *(v6 - 8);
  v5[5] = v7;
  v8 = *(v7 + 64) + 15;
  v5[6] = swift_task_alloc();
  v9 = *(*(type metadata accessor for LearnedDisambiguation() - 8) + 64) + 15;
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DD4B2560, 0, 0);
}

uint64_t sub_1DD4B2560()
{
  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[2];
  v3 = sub_1DD63F9F8();
  v4 = __swift_project_value_buffer(v3, qword_1ECD0DDF0);
  OUTLINED_FUNCTION_10_32();
  sub_1DD4B62FC(v2, v1, v5);
  v6 = sub_1DD63F9D8();
  v7 = sub_1DD640368();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[7];
  if (v8)
  {
    v10 = OUTLINED_FUNCTION_54();
    v27 = OUTLINED_FUNCTION_62();
    *v10 = 136315138;
    LearnedDisambiguation.description.getter();
    OUTLINED_FUNCTION_1_58();
    sub_1DD4B6238();
    v11 = OUTLINED_FUNCTION_15_1();
    v14 = sub_1DD39565C(v11, v12, v13);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DD38D000, v6, v7, "DisambiguationEntityResolution: Storing current learning to memory now: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_0_1();
  }

  else
  {

    OUTLINED_FUNCTION_1_58();
    sub_1DD4B6238();
  }

  v15 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_21_18();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v17);
    OUTLINED_FUNCTION_50_11(&dword_1DD38D000, v18, v4, "DisambiguationEntityResolution: Saving as an outgoing interaction");
    OUTLINED_FUNCTION_23_0();
  }

  v20 = v0[5];
  v19 = v0[6];
  v21 = v0[4];

  (*(v20 + 104))(v19, *MEMORY[0x1E69D2A68], v21);
  v22 = swift_task_alloc();
  v0[8] = v22;
  *v22 = v0;
  v22[1] = sub_1DD4B27B0;
  v23 = v0[6];
  v24 = v0[2];
  v25 = v0[3];

  return sub_1DD4B44AC(v24, v23);
}

uint64_t sub_1DD4B27B0()
{
  OUTLINED_FUNCTION_44_11();
  OUTLINED_FUNCTION_30_1();
  v2 = v1[8];
  v3 = v1[7];
  v4 = v1[6];
  v5 = v1[5];
  v6 = v1[4];
  v7 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v8 = v7;

  (*(v5 + 8))(v4, v6);

  OUTLINED_FUNCTION_26();

  return v9();
}

uint64_t sub_1DD4B2910(uint64_t a1)
{
  v44[3] = &type metadata for PERFeatures;
  v44[4] = sub_1DD4B6B7C();
  v3 = sub_1DD63DA48();
  __swift_destroy_boxed_opaque_existential_1(v44);
  if ((v3 & 1) == 0)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v8 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v8, qword_1ECD0DDF0);
    v6 = sub_1DD63F9D8();
    v9 = sub_1DD640368();
    if (OUTLINED_FUNCTION_29_15(v9))
    {
      goto LABEL_10;
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v4 = __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
  if ((v4[7] & 1) == 0)
  {
    v17 = v4[6];
    v18 = a1 + *(type metadata accessor for LearnedDisambiguation() + 24);
    sub_1DD63CFF8();
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      v43 = v42;
      swift_once();
      v19 = v43;
    }

    v20 = -v19;
    v21 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v21, qword_1ECD0DDF0);
    v22 = sub_1DD63F9D8();
    v23 = sub_1DD640368();
    if (OUTLINED_FUNCTION_29_15(v23))
    {
      v24 = OUTLINED_FUNCTION_54();
      *v24 = 134217984;
      *(v24 + 4) = v20;
      OUTLINED_FUNCTION_52_7();
      OUTLINED_FUNCTION_44_9(v25, v26, v27, v28);
      OUTLINED_FUNCTION_25_12();
    }

    v29 = sub_1DD63F9D8();
    v30 = sub_1DD640368();
    if (OUTLINED_FUNCTION_29_15(v30))
    {
      v31 = OUTLINED_FUNCTION_54();
      *v31 = 134217984;
      *(v31 + 4) = v17;
      OUTLINED_FUNCTION_52_7();
      OUTLINED_FUNCTION_44_9(v32, v33, v34, v35);
      OUTLINED_FUNCTION_25_12();
    }

    if (v17 <= v20)
    {
      return 0;
    }

    v6 = sub_1DD63F9D8();
    v36 = sub_1DD640368();
    if (!OUTLINED_FUNCTION_29_15(v36))
    {
      v15 = 1;
      goto LABEL_13;
    }

    v37 = OUTLINED_FUNCTION_54();
    *v37 = 134217984;
    *(v37 + 4) = v20;
    OUTLINED_FUNCTION_52_7();
    _os_log_impl(v38, v39, v40, v41, v37, 0xCu);
    v15 = 1;
    goto LABEL_11;
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v5 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v5, qword_1ECD0DDF0);
  v6 = sub_1DD63F9D8();
  v7 = sub_1DD640368();
  if (!OUTLINED_FUNCTION_29_15(v7))
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20_0(v10);
  OUTLINED_FUNCTION_52_7();
  OUTLINED_FUNCTION_48_11(v11, v12, v13, v14);
  v15 = 0;
LABEL_11:
  OUTLINED_FUNCTION_19_0();
LABEL_13:

  return v15;
}

uint64_t sub_1DD4B2BD4(int a1)
{
  v3 = v1[15];
  v4 = v1[16];
  __swift_project_boxed_opaque_existential_1(v1 + 12, v3);
  __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
  v5 = sub_1DD4F75D0(a1);
  (*(v4 + 16))(v5, v3, v4);
}

void sub_1DD4B2C70(uint64_t *a1)
{
  v3 = *a1;
  if (*a1)
  {
    v4 = v2;
    v5 = a1[1];
    v6 = qword_1ECCDB0E0;
    v7 = *a1;

    if (v6 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v8 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v8, qword_1ECD0DDF0);

    v9 = sub_1DD63F9D8();
    v10 = sub_1DD640368();
    sub_1DD4B6454(v3);
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v33[0] = swift_slowAlloc();
      *v11 = 136315394;

      v13 = MEMORY[0x1E69E6158];
      v14 = MEMORY[0x1E12B2430](v12, MEMORY[0x1E69E6158]);
      v16 = v15;

      v17 = sub_1DD39565C(v14, v16, v33);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2080;

      MEMORY[0x1E12B2430](v18, v13);

      v19 = OUTLINED_FUNCTION_15_1();
      v22 = sub_1DD39565C(v19, v20, v21);

      *(v11 + 14) = v22;
      OUTLINED_FUNCTION_57_10(&dword_1DD38D000, v23, v24, "DisambiguationEntityResolution: PervasiveEntityResolution extracted choices (%s)\n and associated identifiers: %s");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    v25 = v4[2];
    v26 = v4[3];
    v33[0] = v3;
    v33[1] = v5;
    type metadata accessor for OngoingLearning();
    v27 = swift_allocObject();

    sub_1DD4B4C48(v25, v26, v33);
    v28 = v4[4];
    v4[4] = v27;
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v29 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v29, qword_1ECD0DDF0);
    oslog = sub_1DD63F9D8();
    sub_1DD640378();
    OUTLINED_FUNCTION_21_18();
    if (os_log_type_enabled(oslog, v30))
    {
      v31 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v31);
      OUTLINED_FUNCTION_48_11(&dword_1DD38D000, oslog, v1, "DisambiguationEntityResolution: PervasiveEntityResolution no choices extracted");
      OUTLINED_FUNCTION_19_0();
    }
  }
}

void sub_1DD4B2F44()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDF3A0, &qword_1DD644940);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  OUTLINED_FUNCTION_3(v7);
  v9 = *(v8 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for LearnedDisambiguation();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v23 = *(v2 + 4);
  if (!v23)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v26 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v26, qword_1ECD0DDF0);
    v44 = sub_1DD63F9D8();
    sub_1DD640378();
    OUTLINED_FUNCTION_21_18();
    if (!os_log_type_enabled(v44, v27))
    {
      goto LABEL_14;
    }

    v28 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_20_0(v28);
    v29 = "DisambiguationEntityResolution: PervasiveEntityResolution no user select found";
    goto LABEL_13;
  }

  if (*(v0 + 32))
  {
    v25 = *(v2 + 2);
    v24 = *(v2 + 3);
    v45 = *v2;
    v46 = v25;
    v47 = v24;
    v48 = v23;

    sub_1DD4B4EBC();
    if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
    {

      sub_1DD390754(v12, &qword_1ECCDD880, &qword_1DD652070);
    }

    else
    {
      sub_1DD4B6BD0(v12, v22, type metadata accessor for LearnedDisambiguation);
      sub_1DD6401F8();
      OUTLINED_FUNCTION_65_0();
      __swift_storeEnumTagSinglePayload(v35, v36, v37, v38);
      OUTLINED_FUNCTION_10_32();
      sub_1DD4B62FC(v22, v19, v39);
      v40 = (*(v16 + 80) + 32) & ~*(v16 + 80);
      v41 = (v18 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
      v42 = swift_allocObject();
      *(v42 + 16) = 0;
      *(v42 + 24) = 0;
      sub_1DD4B6BD0(v19, v42 + v40, type metadata accessor for LearnedDisambiguation);
      *(v42 + v41) = v0;

      OUTLINED_FUNCTION_37_14();
      sub_1DD4B0E18();

      OUTLINED_FUNCTION_1_58();
      sub_1DD4B6238();
    }

    OUTLINED_FUNCTION_17();
    return;
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v30 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v30, qword_1ECD0DDF0);
  v44 = sub_1DD63F9D8();
  sub_1DD640378();
  OUTLINED_FUNCTION_21_18();
  if (os_log_type_enabled(v44, v31))
  {
    v32 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_20_0(v32);
    v29 = "DisambiguationEntityResolution: PervasiveEntityResolution got the user selection but did not capture the choices";
LABEL_13:
    OUTLINED_FUNCTION_48_11(&dword_1DD38D000, v44, v0, v29);
    OUTLINED_FUNCTION_19_0();
  }

LABEL_14:
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD4B32F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = sub_1DD63F328();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64) + 15;
  v5[12] = swift_task_alloc();
  v9 = sub_1DD63D0F8();
  v5[13] = v9;
  v10 = *(v9 - 8);
  v5[14] = v10;
  v11 = *(v10 + 64) + 15;
  v5[15] = swift_task_alloc();
  v12 = type metadata accessor for LearnedDisambiguation();
  v5[16] = v12;
  v13 = *(*(v12 - 8) + 64) + 15;
  v5[17] = swift_task_alloc();
  v14 = swift_task_alloc();
  v5[18] = v14;
  *v14 = v5;
  v14[1] = sub_1DD4B3474;

  return sub_1DD4F2C78((v5 + 2));
}

uint64_t sub_1DD4B3474()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  v2 = *(v1 + 144);
  v3 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1DD4B3560, 0, 0);
}

uint64_t sub_1DD4B3560()
{
  v48 = v0;
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v4 = sub_1DD63F9F8();
  __swift_project_value_buffer(v4, qword_1ECD0DDF0);
  v5 = sub_1DD63F9D8();
  v6 = sub_1DD640368();
  v45 = v3;
  v46 = v2;
  v44 = v1;
  if (OUTLINED_FUNCTION_9_0(v6))
  {
    v7 = OUTLINED_FUNCTION_54();
    v8 = OUTLINED_FUNCTION_62();
    v47 = v8;
    *v7 = 136315138;
    v0[5] = v1;
    v0[6] = v2;
    v0[7] = v3;
    v9 = sub_1DD63FE38();
    v11 = sub_1DD39565C(v9, v10, &v47);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1DD38D000, v5, v6, "Collected signal values: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    OUTLINED_FUNCTION_0_1();
    OUTLINED_FUNCTION_23_0();
  }

  v13 = v0[16];
  v12 = v0[17];
  v15 = v0[14];
  v14 = v0[15];
  v16 = v0[8];
  v43 = v0[9];
  v17 = v16[1];
  v39 = v0[13];
  v40 = *v16;
  v18 = *(v16 + v13[7]);
  v42 = *(v16 + v13[8]);
  v19 = (v16 + v13[9]);
  v20 = v19[1];
  v41 = *v19;

  sub_1DD63D0E8();
  v21 = sub_1DD63D098();
  v23 = v22;
  (*(v15 + 8))(v14, v39);
  v24 = v12 + v13[6];
  sub_1DD63D068();
  *v12 = v40;
  v12[1] = v17;
  v12[2] = v21;
  v12[3] = v23;
  *(v12 + v13[7]) = v18;
  *(v12 + v13[8]) = v42;
  v25 = (v12 + v13[9]);
  *v25 = v41;
  v25[1] = v20;
  v26 = (v12 + v13[10]);
  *v26 = v44;
  v26[1] = v46;
  v26[2] = v45;
  sub_1DD4B3A3C();
  sub_1DD4B4260(v12);
  v27 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_21_18();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = OUTLINED_FUNCTION_9();
    OUTLINED_FUNCTION_11_3(v29);
    OUTLINED_FUNCTION_50_11(&dword_1DD38D000, v30, v23, "DisambiguationEntityResolution: Saving as an incoming interaction");
    OUTLINED_FUNCTION_23_0();
  }

  v32 = v0[11];
  v31 = v0[12];
  v33 = v0[10];

  (*(v32 + 104))(v31, *MEMORY[0x1E69D2A60], v33);
  v34 = swift_task_alloc();
  v0[19] = v34;
  *v34 = v0;
  v34[1] = sub_1DD4B386C;
  v35 = v0[17];
  v36 = v0[12];
  v37 = v0[9];

  return sub_1DD4B44AC(v35, v36);
}

uint64_t sub_1DD4B386C()
{
  OUTLINED_FUNCTION_44_11();
  OUTLINED_FUNCTION_30_1();
  v2 = v1[19];
  v3 = v1[12];
  v4 = v1[11];
  v5 = v1[10];
  v6 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v7 = v6;

  (*(v4 + 8))(v3, v5);

  return MEMORY[0x1EEE6DFA0](sub_1DD4B39B4, 0, 0);
}

uint64_t sub_1DD4B39B4()
{
  OUTLINED_FUNCTION_44_11();
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[12];
  OUTLINED_FUNCTION_1_58();
  sub_1DD4B6238();

  OUTLINED_FUNCTION_26();

  return v4();
}

void sub_1DD4B3A3C()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v4 = type metadata accessor for LearningResult();
  v5 = OUTLINED_FUNCTION_7(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD880, &qword_1DD652070);
  OUTLINED_FUNCTION_3(v11);
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v74 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD878, &unk_1DD652060);
  v18 = OUTLINED_FUNCTION_3(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_1_4();
  v78 = (v21 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v74 - v27;
  v29 = sub_1DD63D9E8();
  v30 = OUTLINED_FUNCTION_0(v29);
  v32 = v31;
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_2();
  v37 = v36 - v35;
  if (qword_1ECCDB118 != -1)
  {
    OUTLINED_FUNCTION_6_40();
  }

  OUTLINED_FUNCTION_38_11();
  if (v38)
  {
    if (*(__swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]) + 8) != 1)
    {
      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_78();
        swift_once();
      }

      v50 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v50, qword_1ECD0DDF0);
      v78 = sub_1DD63F9D8();
      sub_1DD640368();
      OUTLINED_FUNCTION_21_18();
      if (!os_log_type_enabled(v78, v51))
      {
        goto LABEL_20;
      }

      v52 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v52);
      v49 = "DisambiguationEntityResolution: Skipping training data emission because of rate limit.";
      goto LABEL_19;
    }

    v77 = v3;
    v39 = v1[10];
    v40 = v1[11];
    v41 = v1[2];
    v76 = v1[3];
    if (sub_1DD628ABC(v41, v76, v39, v40))
    {
      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_78();
        swift_once();
      }

      v42 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v42, qword_1ECD0DDF0);

      v78 = sub_1DD63F9D8();
      v43 = sub_1DD640368();

      if (!os_log_type_enabled(v78, v43))
      {
        goto LABEL_20;
      }

      v44 = OUTLINED_FUNCTION_54();
      v45 = OUTLINED_FUNCTION_62();
      v79 = v45;
      *v44 = 136315138;
      *(v44 + 4) = sub_1DD39565C(v41, v76, &v79);
      _os_log_impl(&dword_1DD38D000, v78, v43, "Excluding use case %s for logging.", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      OUTLINED_FUNCTION_25_12();
      OUTLINED_FUNCTION_0_1();

LABEL_36:
      OUTLINED_FUNCTION_17();
      return;
    }

    v76 = __swift_project_boxed_opaque_existential_1(v1 + 5, v1[8]);
    v75 = type metadata accessor for LearnedDisambiguation();
    v55 = *(v77 + *(v75 + 28));

    sub_1DD63DA08();
    v56 = sub_1DD63D9D8();
    (*(v32 + 8))(v37, v29);
    v76 = sub_1DD4F75D0(v56);
    v57 = OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_unusedPrediction;
    swift_beginAccess();
    sub_1DD4B69D8(v1 + v57, v28, &qword_1ECCDD878, &unk_1DD652060);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v28, 1, v4);
    sub_1DD390754(v28, &qword_1ECCDD878, &unk_1DD652060);
    if (EnumTagSinglePayload != 1 && *(__swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]) + 24) == 1)
    {
      if (qword_1ECCDB0E0 != -1)
      {
        OUTLINED_FUNCTION_0_78();
        swift_once();
      }

      v59 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v59, qword_1ECD0DDF0);

      v60 = sub_1DD63F9D8();
      v61 = sub_1DD640368();
      if (OUTLINED_FUNCTION_9_0(v61))
      {
        v62 = swift_slowAlloc();
        *v62 = 67109120;
        sub_1DD4B69D8(v1 + v57, v25, &qword_1ECCDD878, &unk_1DD652060);
        if (__swift_getEnumTagSinglePayload(v25, 1, v4))
        {
          v63 = &qword_1ECCDD878;
          v64 = &unk_1DD652060;
          v65 = v25;
        }

        else
        {
          OUTLINED_FUNCTION_16_26();
          sub_1DD4B62FC(v25, v10, v66);
          sub_1DD390754(v25, &qword_1ECCDD878, &unk_1DD652060);
          sub_1DD4B69D8(v10, v16, &qword_1ECCDD880, &qword_1DD652070);
          OUTLINED_FUNCTION_4_40();
          sub_1DD4B6238();
          v67 = v75;
          if (__swift_getEnumTagSinglePayload(v16, 1, v75) != 1)
          {
            v68 = *&v16[*(v67 + 32)];
            OUTLINED_FUNCTION_1_58();
            sub_1DD4B6238();
            goto LABEL_34;
          }

          v63 = &qword_1ECCDD880;
          v64 = &qword_1DD652070;
          v65 = v16;
        }

        sub_1DD390754(v65, v63, v64);
        v68 = 0;
LABEL_34:
        *(v62 + 4) = v68;

        _os_log_impl(&dword_1DD38D000, v60, v61, "DisambiguationEntityResolution: Forced disambiguation ignoring prediction %u.", v62, 8u);
        OUTLINED_FUNCTION_0_1();

        goto LABEL_35;
      }
    }

LABEL_35:
    v69 = __swift_project_boxed_opaque_existential_1(v1 + 22, v1[25]);
    sub_1DD4B69D8(v1 + v57, v78, &qword_1ECCDD878, &unk_1DD652060);
    v70 = *(__swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]) + 24);
    v71 = *v69;
    sub_1DD50EF64();

    v72 = OUTLINED_FUNCTION_5_9();
    sub_1DD390754(v72, v73, &unk_1DD652060);
    goto LABEL_36;
  }

  if (qword_1ECCDB0E0 != -1)
  {
    OUTLINED_FUNCTION_0_78();
    swift_once();
  }

  v46 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v46, qword_1ECD0DDF0);
  v78 = sub_1DD63F9D8();
  sub_1DD640368();
  OUTLINED_FUNCTION_21_18();
  if (!os_log_type_enabled(v78, v47))
  {
    goto LABEL_20;
  }

  v48 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_20_0(v48);
  v49 = "DisambiguationEntityResolution: Skipping training data emission because D&U not allowed.";
LABEL_19:
  OUTLINED_FUNCTION_48_11(&dword_1DD38D000, v78, v1, v49);
  OUTLINED_FUNCTION_19_0();
LABEL_20:
  OUTLINED_FUNCTION_17();
}

void sub_1DD4B4138(uint64_t a1)
{
  if (qword_1ECCDB118 != -1)
  {
    OUTLINED_FUNCTION_6_40();
  }

  OUTLINED_FUNCTION_38_11();
  if (v3)
  {
    v4 = __swift_project_boxed_opaque_existential_1(v1 + 22, v1[25]);
    v5 = __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
    v6 = *v4;
    sub_1DD510B78(a1, *(v5 + 24));
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v7 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v7, qword_1ECD0DDF0);
    oslog = sub_1DD63F9D8();
    sub_1DD640368();
    OUTLINED_FUNCTION_21_18();
    if (os_log_type_enabled(oslog, v8))
    {
      v9 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v9);
      OUTLINED_FUNCTION_48_11(&dword_1DD38D000, oslog, a1, "DisambiguationEntityResolution: Skipping model triggered emission because D&U not allowed.");
      OUTLINED_FUNCTION_19_0();
    }
  }
}

void sub_1DD4B4260(os_log_type_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD878, &unk_1DD652060);
  OUTLINED_FUNCTION_3(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  v9 = type metadata accessor for LearningResult();
  v10 = OUTLINED_FUNCTION_7(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  if (qword_1ECCDB118 != -1)
  {
    OUTLINED_FUNCTION_6_40();
  }

  OUTLINED_FUNCTION_38_11();
  if (v16)
  {
    v17 = OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_unusedPrediction;
    swift_beginAccess();
    sub_1DD4B69D8(v1 + v17, v8, &qword_1ECCDD878, &unk_1DD652060);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1DD390754(v8, &qword_1ECCDD878, &unk_1DD652060);
    }

    else
    {
      OUTLINED_FUNCTION_3_43();
      v22 = OUTLINED_FUNCTION_5_9();
      sub_1DD4B6BD0(v22, v23, v24);
      v25 = (v15 + *(v9 + 20));
      if (v25[1])
      {
        v26 = *v25;
        sub_1DD4B47A4(OS_LOG_TYPE_DEBUG|OS_LOG_TYPE_INFO);
        v27 = *__swift_project_boxed_opaque_existential_1((v1 + 176), *(v1 + 200));
        sub_1DD510844();
      }

      OUTLINED_FUNCTION_4_40();
      sub_1DD4B6238();
    }
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v18 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v18, qword_1ECD0DDF0);
    v28 = sub_1DD63F9D8();
    sub_1DD640368();
    OUTLINED_FUNCTION_21_18();
    if (os_log_type_enabled(v28, v19))
    {
      v20 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v20);
      OUTLINED_FUNCTION_48_11(&dword_1DD38D000, v28, a1, "DisambiguationEntityResolution: Skipping model evaluation emission because D&U not allowed.");
      OUTLINED_FUNCTION_19_0();
    }

    v21 = v28;
  }
}

uint64_t sub_1DD4B44AC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DD4B44D0, 0, 0);
}

uint64_t sub_1DD4B44D0()
{
  v17 = v0;
  v1 = v0[4];
  v2 = v1[11];
  v3 = v1[2];
  v4 = v1[3];
  if (sub_1DD62886C(v3, v4, v1[10]))
  {
    __swift_project_boxed_opaque_existential_1((v0[4] + 40), *(v0[4] + 64));
    v5 = swift_task_alloc();
    v0[5] = v5;
    *v5 = v0;
    v5[1] = sub_1DD4B46C4;
    v7 = v0[2];
    v6 = v0[3];

    return sub_1DD4F88F4(v7, v6);
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v9 = v0[4];
    v10 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v10, qword_1ECD0DDF0);

    v11 = sub_1DD63F9D8();
    v12 = sub_1DD640368();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = OUTLINED_FUNCTION_54();
      v14 = OUTLINED_FUNCTION_62();
      v16 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_1DD39565C(v3, v4, &v16);
      _os_log_impl(&dword_1DD38D000, v11, v12, "Unsupported use case %s, not storing.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    OUTLINED_FUNCTION_26();

    return v15();
  }
}

uint64_t sub_1DD4B46C4()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  v2 = *(v1 + 40);
  v3 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;

  OUTLINED_FUNCTION_26();

  return v5();
}

void sub_1DD4B47A4(os_log_type_t a1)
{
  v2 = v1;
  if (qword_1ECCDB118 != -1)
  {
    OUTLINED_FUNCTION_6_40();
  }

  if (byte_1ECD0DE38 == 1)
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v4 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v4, qword_1ECD0DDF0);
    v5 = sub_1DD63F9D8();
    v6 = sub_1DD640368();
    if (OUTLINED_FUNCTION_9_0(v6))
    {
      v7 = OUTLINED_FUNCTION_54();
      v8 = OUTLINED_FUNCTION_62();
      v22[0] = v8;
      *v7 = 136315138;
      v9 = "92-A728-FDC9D43DEDB6";
      v10 = v8;
      switch(a1)
      {
        case OS_LOG_TYPE_INFO:
          v11 = "23B24C08-F87F-4992-A728-FDC9D43DEDB6";
          goto LABEL_18;
        case OS_LOG_TYPE_DEBUG:
          v11 = "28AD56FC-E9DA-11ED-A05B-0242AC120003";
          goto LABEL_18;
        case OS_LOG_TYPE_DEBUG|OS_LOG_TYPE_INFO:
          v11 = "920A9A12-BBD0-42FB-A11C-7B1AE2C709B4";
LABEL_18:
          v9 = (v11 - 32);
          break;
        default:
          break;
      }

      v15 = sub_1DD39565C(0xD000000000000024, v9 | 0x8000000000000000, v22);

      *(v7 + 4) = v15;
      OUTLINED_FUNCTION_44_9(&dword_1DD38D000, v5, v6, "DisambiguationEntityResolution: Emitting Triggered Logging for: %s");
      __swift_destroy_boxed_opaque_existential_1(v10);
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_25_12();
    }

    sub_1DD4B69D8(v2 + OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_triggerLogger, v22, &qword_1ECCDC250, &qword_1DD645B10);
    if (v23)
    {
      v16 = __swift_project_boxed_opaque_existential_1(v22, v23);
      sub_1DD63F488();
      if (sub_1DD63F468())
      {
        sub_1DD63F448();

        v17 = sub_1DD63F738();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v20 = *v16;
      sub_1DD601998(a1, v17, v19);

      __swift_destroy_boxed_opaque_existential_1(v22);
    }

    else
    {
      sub_1DD390754(v22, &qword_1ECCDC250, &qword_1DD645B10);
    }
  }

  else
  {
    if (qword_1ECCDB0E0 != -1)
    {
      OUTLINED_FUNCTION_0_78();
      swift_once();
    }

    v12 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v12, qword_1ECD0DDF0);
    oslog = sub_1DD63F9D8();
    sub_1DD640368();
    OUTLINED_FUNCTION_21_18();
    if (os_log_type_enabled(oslog, v13))
    {
      v14 = OUTLINED_FUNCTION_9();
      OUTLINED_FUNCTION_20_0(v14);
      OUTLINED_FUNCTION_48_11(&dword_1DD38D000, oslog, a1, "DisambiguationEntityResolution: Skipping trigger logging because D&U not allowed.");
      OUTLINED_FUNCTION_19_0();
    }
  }
}

uint64_t *DisambiguationEntityResolution.deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  __swift_destroy_boxed_opaque_existential_1(v0 + 5);
  v4 = v0[10];
  v3 = v0[11];

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_unusedPrediction, &qword_1ECCDD878, &unk_1DD652060);
  sub_1DD390754(v0 + OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_triggerLogger, &qword_1ECCDC250, &qword_1DD645B10);
  return v0;
}

uint64_t DisambiguationEntityResolution.__deallocating_deinit()
{
  DisambiguationEntityResolution.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4B4C48(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a3;
  v5 = a3[1];
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = v4;
  v3[5] = v5;
  if (*(v5 + 16) == *(v4 + 16))
  {

    swift_bridgeObjectRetain_n();
    v6 = sub_1DD63FC88();
    v7 = 0;
    v8 = 0;
    v29 = v4;
    v30 = *(v5 + 16);
    v28 = v5;
    while (1)
    {
      if (v30 == v8)
      {
        swift_bridgeObjectRelease_n();

        goto LABEL_17;
      }

      if (v8 >= *(v5 + 16))
      {
        break;
      }

      if (v8 >= *(v4 + 16))
      {
        goto LABEL_19;
      }

      v31 = v8;
      v10 = *(v5 + v7 + 32);
      v9 = *(v5 + v7 + 40);
      v11 = v7;
      v12 = *(v4 + v7 + 32);
      v13 = *(v4 + v7 + 40);

      swift_isUniquelyReferenced_nonNull_native();
      v14 = sub_1DD3978DC();
      if (__OFADD__(v6[2], (v15 & 1) == 0))
      {
        goto LABEL_20;
      }

      v16 = v14;
      v17 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC328, &qword_1DD6521F0);
      if (sub_1DD640A08())
      {
        v18 = sub_1DD3978DC();
        if ((v17 & 1) != (v19 & 1))
        {
          goto LABEL_22;
        }

        v16 = v18;
      }

      if (v17)
      {
        v20 = (v6[7] + 16 * v16);
        v21 = v20[1];
        *v20 = v12;
        v20[1] = v13;
      }

      else
      {
        v6[(v16 >> 6) + 8] |= 1 << v16;
        v22 = (v6[6] + 16 * v16);
        *v22 = v10;
        v22[1] = v9;
        v23 = (v6[7] + 16 * v16);
        *v23 = v12;
        v23[1] = v13;
        v24 = v6[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          goto LABEL_21;
        }

        v6[2] = v26;
      }

      v7 = v11 + 16;
      v8 = v31 + 1;
      v5 = v28;
      v4 = v29;
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    result = sub_1DD640D58();
    __break(1u);
  }

  else
  {
    v6 = sub_1DD63FC88();
LABEL_17:
    v3[6] = v6;
    return v3;
  }

  return result;
}

void sub_1DD4B4EBC()
{
  OUTLINED_FUNCTION_18_4();
  v2 = v1;
  v4 = v3;
  v5 = sub_1DD63D9E8();
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2();
  v110 = v12 - v11;
  OUTLINED_FUNCTION_6_2();
  v13 = sub_1DD63D078();
  v14 = OUTLINED_FUNCTION_0(v13);
  v16 = v15;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_2();
  v109 = v20 - v19;
  OUTLINED_FUNCTION_6_2();
  v21 = sub_1DD63D0F8();
  v22 = OUTLINED_FUNCTION_0(v21);
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_2();
  v25 = *v2;
  v111 = v2[3];
  v112 = v2[4];
  if (!*(v2 + 16))
  {
    v42 = v4;
    if ((v25 & 0x8000000000000000) == 0)
    {
      v43 = v0[4];
      if (v25 < *(v43 + 16))
      {
        v44 = v43 + 16 * v25;
        v45 = v16;
        v46 = *(v44 + 32);
        v47 = *(v44 + 40);
        v113 = v0[3];
        v116 = v0[2];

        sub_1DD63D0E8();
        v107 = sub_1DD63D098();
        v101 = v48;
        v49 = OUTLINED_FUNCTION_39_10();
        v50(v49);
        sub_1DD63D068();
        v104 = v5;
        v38 = type metadata accessor for LearnedDisambiguation();
        (*(v45 + 16))(&v42[v38[6]], v109, v13);
        sub_1DD4F3F88();
        v52 = v51;
        sub_1DD63FE58();

        OUTLINED_FUNCTION_15_0();
        sub_1DD63D9F8();
        LODWORD(v46) = sub_1DD63D9D8();
        (*(v8 + 8))(v110, v104);
        (*(v45 + 8))(v109, v13);
        *v42 = v116;
        *(v42 + 1) = v113;
        *(v42 + 2) = v107;
        *(v42 + 3) = v101;
        *&v42[v38[7]] = v52;
        *&v42[v38[8]] = v46;
LABEL_16:
        v69 = &v42[v38[9]];
        *v69 = v111;
        *(v69 + 1) = v112;
        OUTLINED_FUNCTION_41_10(&v42[v38[10]]);
        goto LABEL_17;
      }
    }

LABEL_23:
    type metadata accessor for LearnedDisambiguation();
    OUTLINED_FUNCTION_65_0();
    OUTLINED_FUNCTION_17();

    __swift_storeEnumTagSinglePayload(v90, v91, v92, v93);
    return;
  }

  v106 = v16;
  v26 = v2[1];
  if (*(v2 + 16) != 1)
  {
    v98 = v13;
    v102 = v4;
    v105 = v5;
    v53 = 0;
    v54 = v0[4];
    v114 = v54;
    v117 = *(v54 + 16);
    for (i = (v54 + 40); ; i += 2)
    {
      if (v117 == v53)
      {
        type metadata accessor for LearnedDisambiguation();
        OUTLINED_FUNCTION_65_0();
        goto LABEL_18;
      }

      if (v53 >= *(v114 + 16))
      {
        break;
      }

      v57 = *(i - 1);
      v56 = *i;
      sub_1DD3B7F10();

      if (!sub_1DD640688())
      {
        v118 = v0[2];
        v97 = v0[3];

        sub_1DD63D0E8();
        v62 = sub_1DD63D098();
        v95 = v63;
        v96 = v62;
        v64 = OUTLINED_FUNCTION_39_10();
        v65(v64);
        sub_1DD63D068();
        v38 = type metadata accessor for LearnedDisambiguation();
        v42 = v102;
        (*(v16 + 16))(&v102[v38[6]], v109, v98);
        sub_1DD4F3F88();
        v67 = v66;
        sub_1DD63FE58();

        sub_1DD63D9F8();
        v68 = sub_1DD63D9D8();
        (*(v8 + 8))(v110, v105);
        (*(v106 + 8))(v109, v98);
        *v102 = v118;
        *(v102 + 1) = v97;
        *(v102 + 2) = v96;
        *(v102 + 3) = v95;
        *&v102[v38[7]] = v67;
        *&v102[v38[8]] = v68;
        goto LABEL_16;
      }

      ++v53;
    }

    __break(1u);
LABEL_27:
    OUTLINED_FUNCTION_0_78();
    swift_once();
LABEL_20:
    v70 = sub_1DD63F9F8();
    OUTLINED_FUNCTION_130(v70, qword_1ECD0DDF0);
    v71 = OUTLINED_FUNCTION_15_1();
    sub_1DD4B69A0(v71, v72, 1u);

    v73 = sub_1DD63F9D8();
    v74 = sub_1DD640378();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      swift_slowAlloc();
      *v75 = 136315394;
      v76 = OUTLINED_FUNCTION_15_1();
      v79 = sub_1DD39565C(v76, v77, v78);
      v80 = OUTLINED_FUNCTION_15_1();
      sub_1DD4B69BC(v80, v81, 1u);
      *(v75 + 4) = v79;
      *(v75 + 12) = 2080;
      v82 = OUTLINED_FUNCTION_5_9();
      v85 = sub_1DD39565C(v82, v83, v84);

      *(v75 + 14) = v85;
      OUTLINED_FUNCTION_57_10(&dword_1DD38D000, v86, v87, "DisambiguationEntityResolution: PervasiveEntityResolution No match to identifier [%s] in %s.");
      swift_arrayDestroy();
      OUTLINED_FUNCTION_0_1();
      OUTLINED_FUNCTION_0_1();
    }

    else
    {

      v88 = OUTLINED_FUNCTION_15_1();
      sub_1DD4B69BC(v88, v89, 1u);
    }

    goto LABEL_23;
  }

  v27 = v0[6];
  v28 = OUTLINED_FUNCTION_15_1();
  sub_1DD59B780(v28, v29, v27);
  if (!v30)
  {
    sub_1DD63FC68();
    if (qword_1ECCDB0E0 == -1)
    {
      goto LABEL_20;
    }

    goto LABEL_27;
  }

  v31 = v13;
  v32 = v0[3];
  v115 = v0[2];
  v99 = v0[4];

  sub_1DD63D0E8();
  v33 = sub_1DD63D098();
  v100 = v34;
  v103 = v33;
  v35 = OUTLINED_FUNCTION_39_10();
  v36(v35);
  sub_1DD63D068();
  v37 = v5;
  v38 = type metadata accessor for LearnedDisambiguation();
  (*(v16 + 16))(&v4[v38[6]], v109, v31);
  sub_1DD4F3F88();
  v108 = v39;
  sub_1DD63FE58();

  OUTLINED_FUNCTION_15_0();
  sub_1DD63D9F8();
  v40 = sub_1DD63D9D8();
  (*(v8 + 8))(v110, v37);
  (*(v106 + 8))(v109, v31);
  *v4 = v115;
  *(v4 + 1) = v32;
  *(v4 + 2) = v103;
  *(v4 + 3) = v100;
  *&v4[v38[7]] = v108;
  *&v4[v38[8]] = v40;
  v41 = &v4[v38[9]];
  *v41 = v111;
  *(v41 + 1) = v112;
  OUTLINED_FUNCTION_41_10(&v4[v38[10]]);
LABEL_17:
  OUTLINED_FUNCTION_10_15();
  v61 = v38;
LABEL_18:
  __swift_storeEnumTagSinglePayload(v58, v59, v60, v61);
  OUTLINED_FUNCTION_17();
}

void *sub_1DD4B56C8()
{
  v1 = v0[3];

  v3 = v0[4];
  v2 = v0[5];

  v4 = v0[6];

  return v0;
}

uint64_t sub_1DD4B5708()
{
  sub_1DD4B56C8();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DisambiguationEntityResolution()
{
  result = qword_1ECCDD898;
  if (!qword_1ECCDD898)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD4B5788(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DD4B5880;

  return v7(a1);
}

uint64_t sub_1DD4B5880()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;

  OUTLINED_FUNCTION_26();

  return v5();
}

uint64_t sub_1DD4B5964(uint64_t a1)
{
  v53 = type metadata accessor for PervasiveConfiguration();
  v54 = &off_1F58BD0C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  sub_1DD4B6BD0(a1, boxed_opaque_existential_1, type metadata accessor for PervasiveConfiguration);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDBC68, &unk_1DD647D50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD652040;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001DD66DB90;
  *(inited + 48) = 0xD000000000000014;
  *(inited + 56) = 0x80000001DD66DBB0;
  *(inited + 64) = 0xD000000000000011;
  *(inited + 72) = 0x80000001DD66DBD0;
  *(inited + 80) = 0xD00000000000001ALL;
  *(inited + 88) = 0x80000001DD66DBF0;
  *(inited + 96) = 0xD000000000000014;
  *(inited + 104) = 0x80000001DD66DC10;
  v48 = MEMORY[0x1E69E7CC0];
  sub_1DD42A2D4();
  v4 = v48;
  v5 = *(inited + 32);
  v6 = *(inited + 40);
  v7 = sub_1DD63FE58();
  v9 = v8;
  v10 = *(v48 + 16);
  if (v10 >= *(v48 + 24) >> 1)
  {
    sub_1DD42A2D4();
    v4 = v48;
  }

  *(v4 + 16) = v10 + 1;
  v11 = v4 + 16 * v10;
  *(v11 + 32) = v7;
  *(v11 + 40) = v9;
  v12 = sub_1DD63FE58();
  v14 = v13;
  v15 = *(v4 + 16);
  if (v15 >= *(v4 + 24) >> 1)
  {
    sub_1DD42A2D4();
    v4 = v48;
  }

  *(v4 + 16) = v15 + 1;
  v16 = v4 + 16 * v15;
  *(v16 + 32) = v12;
  *(v16 + 40) = v14;
  v17 = sub_1DD63FE58();
  v19 = v18;
  v20 = *(v4 + 16);
  if (v20 >= *(v4 + 24) >> 1)
  {
    sub_1DD42A2D4();
  }

  v21 = v48;
  *(v48 + 16) = v20 + 1;
  v22 = v48 + 16 * v20;
  *(v22 + 32) = v17;
  *(v22 + 40) = v19;
  v23 = sub_1DD63FE58();
  v25 = v24;
  v26 = *(v48 + 16);
  if (v26 >= *(v48 + 24) >> 1)
  {
    sub_1DD42A2D4();
    v21 = v48;
  }

  *(v21 + 16) = v26 + 1;
  v27 = v21 + 16 * v26;
  *(v27 + 32) = v23;
  *(v27 + 40) = v25;
  v28 = sub_1DD63FE58();
  v30 = v29;
  v31 = *(v21 + 16);
  if (v31 >= *(v21 + 24) >> 1)
  {
    sub_1DD42A2D4();
    v21 = v48;
  }

  *(v21 + 16) = v31 + 1;
  v32 = v21 + 16 * v31;
  *(v32 + 32) = v28;
  *(v32 + 40) = v30;
  swift_setDeallocating();
  sub_1DD46CAFC();
  v33 = __swift_project_boxed_opaque_existential_1(v52, v53);
  v34 = v33[4] == 5000257 && v33[5] == 0xE300000000000000;
  if (v34 || (sub_1DD640CD8() & 1) != 0)
  {
    v35 = 0;
  }

  else
  {
    v37 = __swift_project_boxed_opaque_existential_1(v52, v53);
    v49 = v37[4];
    v51 = v37[5];
    sub_1DD3B7F10();
    v38 = sub_1DD640638();
    v39 = *(v38 + 16);
    if (v39)
    {
      v50 = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4();
      v35 = v50;
      v40 = (v38 + 40);
      do
      {
        v41 = *(v40 - 1);
        v42 = *v40;
        v43 = sub_1DD63FE58();
        v45 = v44;
        v46 = *(v50 + 16);
        if (v46 >= *(v50 + 24) >> 1)
        {
          sub_1DD42A2D4();
        }

        *(v50 + 16) = v46 + 1;
        v47 = v50 + 16 * v46;
        *(v47 + 32) = v43;
        *(v47 + 40) = v45;
        v40 += 2;
        --v39;
      }

      while (v39);
    }

    else
    {

      v35 = MEMORY[0x1E69E7CC0];
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v52);
  return v35;
}

void *sub_1DD4B5DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v46[3] = type metadata accessor for PervasiveConfiguration();
  v46[4] = &off_1F58BD0C8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
  sub_1DD4B6BD0(a3, boxed_opaque_existential_1, type metadata accessor for PervasiveConfiguration);
  v45[3] = type metadata accessor for LearnedDisambiguationPersistentStorage();
  v45[4] = &off_1F58BA090;
  v17 = __swift_allocate_boxed_opaque_existential_1(v45);
  sub_1DD4B6BD0(a4, v17, type metadata accessor for LearnedDisambiguationPersistentStorage);
  v44[3] = type metadata accessor for LoggingDataEmitter();
  v44[4] = &off_1F58BAF78;
  v44[0] = a6;
  v43[3] = type metadata accessor for ExperimentationTriggerLogger();
  v43[4] = &off_1F58C3DB8;
  v43[0] = a7;
  a8[4] = 0;
  v18 = OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_unusedPrediction;
  v19 = type metadata accessor for LearningResult();
  __swift_storeEnumTagSinglePayload(a8 + v18, 1, 1, v19);
  a8[2] = a1;
  a8[3] = a2;
  sub_1DD3C2388(v45, (a8 + 5));
  sub_1DD3C2388(v46, v41);
  v20 = v42;
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
  v22 = *(*(v20 - 8) + 64);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v41[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v25, v23);
  v27 = sub_1DD4B5964(v25);
  v29 = v28;
  __swift_destroy_boxed_opaque_existential_1(v41);
  a8[10] = v27;
  a8[11] = v29;
  sub_1DD3C2388(a5, (a8 + 12));
  sub_1DD3C2388(v46, (a8 + 17));
  sub_1DD3C2388(v44, (a8 + 22));
  sub_1DD3C2388(v43, a8 + OBJC_IVAR____TtC13SiriInference30DisambiguationEntityResolution_triggerLogger);
  if (qword_1ECCDB0E0 != -1)
  {
    swift_once();
  }

  v30 = sub_1DD63F9F8();
  __swift_project_value_buffer(v30, qword_1ECD0DDF0);

  v31 = sub_1DD63F9D8();
  v32 = sub_1DD640368();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v41[0] = v34;
    *v33 = 136315138;

    v35 = sub_1DD4B1110();
    v37 = v36;

    v38 = sub_1DD39565C(v35, v37, v41);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_1DD38D000, v31, v32, "DisambiguationEntityResolution: processing with %s", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v34);
    MEMORY[0x1E12B3DA0](v34, -1, -1);
    MEMORY[0x1E12B3DA0](v33, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_1(a5);
  __swift_destroy_boxed_opaque_existential_1(v43);
  __swift_destroy_boxed_opaque_existential_1(v44);
  __swift_destroy_boxed_opaque_existential_1(v45);
  __swift_destroy_boxed_opaque_existential_1(v46);
  return a8;
}

uint64_t sub_1DD4B6158()
{
  OUTLINED_FUNCTION_43();
  v1 = type metadata accessor for LearningResult();
  OUTLINED_FUNCTION_3(v1);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[4];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_12_1(v7);
  *v8 = v9;
  v8[1] = sub_1DD4B6C2C;
  v10 = OUTLINED_FUNCTION_13_25();

  return sub_1DD4B23FC(v10, v11, v5, v6, v12);
}

uint64_t sub_1DD4B6238()
{
  v1 = OUTLINED_FUNCTION_43();
  v3 = v2(v1);
  OUTLINED_FUNCTION_7(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1DD4B628C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD878, &unk_1DD652060);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4B62FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 16);
  v7 = OUTLINED_FUNCTION_15_0();
  v8(v7);
  return a2;
}

uint64_t sub_1DD4B6358()
{
  OUTLINED_FUNCTION_43();
  v2 = *(type metadata accessor for LearnedDisambiguation() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  OUTLINED_FUNCTION_43_12(*(v2 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_12_1(v4);
  *v5 = v6;
  v5[1] = sub_1DD4B6C2C;
  v7 = OUTLINED_FUNCTION_13_25();

  return sub_1DD4B2474(v7, v8, v0, v9, v1);
}

uint64_t sub_1DD4B6454(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t objectdestroy_3Tm()
{
  v1 = (type metadata accessor for LearnedDisambiguation() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = *(v6 + 8);

  v8 = *(v6 + 24);

  v9 = v1[8];
  v10 = sub_1DD63D078();
  OUTLINED_FUNCTION_7(v10);
  (*(v11 + 8))(v6 + v9);
  v12 = *(v6 + v1[9]);

  v13 = *(v6 + v1[11] + 8);

  v14 = *(v0 + v4);

  return MEMORY[0x1EEE6BDD0](v0, v4 + 8, v2 | 7);
}

uint64_t sub_1DD4B65D8()
{
  OUTLINED_FUNCTION_43();
  v2 = *(type metadata accessor for LearnedDisambiguation() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  OUTLINED_FUNCTION_43_12(*(v2 + 64));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_12_1(v4);
  *v5 = v6;
  v5[1] = sub_1DD4B66D4;
  v7 = OUTLINED_FUNCTION_13_25();

  return sub_1DD4B32F4(v7, v8, v0, v9, v1);
}

uint64_t sub_1DD4B66D4()
{
  OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_30_1();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;

  OUTLINED_FUNCTION_26();

  return v5();
}

void sub_1DD4B67BC()
{
  sub_1DD4B6948();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of DisambiguationEntityResolution.learnedSelection(from:)()
{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 232))();
}

void sub_1DD4B6948()
{
  if (!qword_1ECCDD8A8)
  {
    type metadata accessor for LearningResult();
    v0 = sub_1DD6405F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECCDD8A8);
    }
  }
}

uint64_t sub_1DD4B69A0(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_1DD4B69BC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_1DD4B69D8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_7(v5);
  v7 = *(v6 + 16);
  v8 = OUTLINED_FUNCTION_15_0();
  v9(v8);
  return a2;
}

uint64_t sub_1DD4B6A34()
{
  OUTLINED_FUNCTION_44_11();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_1(v3);
  *v4 = v5;
  v4[1] = sub_1DD4B6C2C;
  v6 = OUTLINED_FUNCTION_13_25();

  return v7(v6);
}

uint64_t sub_1DD4B6AD8()
{
  OUTLINED_FUNCTION_44_11();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_12_1(v3);
  *v4 = v5;
  v4[1] = sub_1DD4B66D4;
  v6 = OUTLINED_FUNCTION_13_25();

  return v7(v6);
}

unint64_t sub_1DD4B6B7C()
{
  result = qword_1ECCDD8B0;
  if (!qword_1ECCDD8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD8B0);
  }

  return result;
}

uint64_t sub_1DD4B6BD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3(0);
  OUTLINED_FUNCTION_7(v4);
  v6 = *(v5 + 32);
  v7 = OUTLINED_FUNCTION_15_0();
  v8(v7);
  return a2;
}

uint64_t OUTLINED_FUNCTION_22_17()
{

  return sub_1DD4B6238();
}

BOOL OUTLINED_FUNCTION_29_15(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_39_10()
{
  v2 = *(v1 - 176);
  v3 = *(*(v1 - 184) + 8);
  return v0;
}

void OUTLINED_FUNCTION_41_10(void *a1@<X8>)
{
  a1[1] = -1;
  a1[2] = -1;
  *a1 = -1;
}

void OUTLINED_FUNCTION_43_12(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + ((a1 + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
}

void OUTLINED_FUNCTION_50_11(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 2u);
}

uint64_t OUTLINED_FUNCTION_55_7()
{

  return swift_beginAccess();
}

void OUTLINED_FUNCTION_57_10(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

void OUTLINED_FUNCTION_58_6(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v6, a4, v4, 0xCu);
}

uint64_t sub_1DD4B6E0C(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD63D078();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DD6404F8();
  if (qword_1EE1625A8)
  {
    v7 = qword_1EE1625A8;
  }

  else
  {
    sub_1DD63CF58();
    v8 = *(a2 + 48);
    v9 = *(a2 + 52);
    swift_allocObject();
    v7 = sub_1DD4D67BC(1, v6);
    qword_1EE1625A8 = v7;
  }

  sub_1DD640508();
  return v7;
}

uint64_t TerminalElement.Duration.toInterval()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD2A0, &qword_1DD64F420);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v10 - v2;
  v4 = sub_1DD63DF18();
  v6 = v5;
  sub_1DD63DF08();
  v7 = sub_1DD63E118();
  if (__swift_getEnumTagSinglePayload(v3, 1, v7) == 1)
  {
    sub_1DD49C75C(v3);
    v8 = 13;
  }

  else
  {
    sub_1DD548A5C();
    (*(*(v7 - 8) + 8))(v3, v7);
    v8 = v12[1];
  }

  if (v6)
  {
    v4 = 0;
  }

  v12[0] = v8;
  v11 = 20;
  type metadata accessor for DateTime.Interval();
  swift_allocObject();
  return DateTime.Interval.init(withQuantity:timeUnit:qualifier:)(v4, 0, v12, &v11);
}

uint64_t sub_1DD4B7048(uint64_t a1, unsigned __int8 *a2)
{
  if (*(a1 + 24))
  {
    return 0;
  }

  result = 0;
  v4 = *(a1 + 25) - 1;
  v5 = *a2;
  v6 = *(a1 + 16);
  switch(v4)
  {
    case 0:
      OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_59();
      v9 = 5;
      goto LABEL_11;
    case 3:
      OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_59();
      v9 = 4;
      goto LABEL_11;
    case 5:
      OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_59();
      v9 = 2;
      goto LABEL_11;
    case 6:
      OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_59();
      v9 = 9;
      goto LABEL_11;
    case 9:
      OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_59();
      v9 = 1;
      goto LABEL_11;
    case 10:
      OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_59();
      v9 = 7;
      goto LABEL_11;
    case 11:
      OUTLINED_FUNCTION_0_79();
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_1_59();
      v9 = 11;
LABEL_11:
      result = sub_1DD48DFB4(v9, v7, 2, 2, v8, 1, 1, 0);
      break;
    default:
      return result;
  }

  return result;
}

void sub_1DD4B7190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v144 = a3;
  v121 = a1;
  v155 = sub_1DD63C868();
  v7 = OUTLINED_FUNCTION_0(v155);
  v125 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v132 = &v115 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v133 = &v115 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v115 - v15;
  v17 = sub_1DD63D2D8();
  v18 = OUTLINED_FUNCTION_0(v17);
  v157 = v19;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDEBC0, &qword_1DD6445A0);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v115 - v26;
  v28 = sub_1DD63D078();
  v29 = OUTLINED_FUNCTION_0(v28);
  v159 = v30;
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v34 = &v115 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v115 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v115 - v39;
  v41 = sub_1DD63D2B8();
  v42 = OUTLINED_FUNCTION_0(v41);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  if (*(v121 + 48))
  {
    return;
  }

  v148 = &v115 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = v47;
  v141 = v45;
  v130 = v40;
  v149 = v37;
  v131 = v34;
  v142 = v28;
  v143 = v27;
  v158 = v17;
  v150 = v16;
  v48 = *(v121 + 24);
  v49 = MEMORY[0x1E69E7CD0];
  v163 = MEMORY[0x1E69E7CD0];
  v50 = *a6;
  v51 = sub_1DD3CC020(*a6);
  v52 = a6;
  v119 = a6;
  v124 = v50;
  v123 = v51;
  if (v51)
  {
    v53 = v48;
    v147 = OBJC_IVAR____TtC13SiriInference25DateTimeResolutionContext_calendar;
    v122 = v50 & 0xC000000000000001;
    v117 = v50 & 0xFFFFFFFFFFFFFF8;
    v116 = v50 + 32;
    v118 = *&v48 & 0x7FF0000000000000;
    v54 = 0;
    v139 = v53;
    v138 = v120 + 16;
    v137 = (v157 + 16);
    v154 = (v125 + 16);
    v152 = v125 + 8;
    v136 = v120 + 8;
    v135 = (v159 + 8);
    v134 = v157 + 8;
    v129 = v159 + 32;
    v128 = v159 + 16;
    v55 = v155;
    v56 = v144;
    v57 = v158;
    v58 = v52;
    v140 = v23;
    while (1)
    {
      if (v122)
      {
        v59 = MEMORY[0x1E12B2C10](v54, v50);
      }

      else
      {
        if (v54 >= *(v117 + 16))
        {
          goto LABEL_55;
        }

        v59 = *(v116 + 8 * v54);
      }

      if (__OFADD__(v54++, 1))
      {
        break;
      }

      v61 = sub_1DD48E73C();
      if (*(v61 + 16))
      {
        v62 = v120;
        if (v118 == 0x7FF0000000000000)
        {
          goto LABEL_52;
        }

        if (v53 <= -9.22337204e18)
        {
          goto LABEL_53;
        }

        if (v53 >= 9.22337204e18)
        {
          goto LABEL_54;
        }

        v159 = *(v61 + 16);
        v156 = v59;
        v127 = v54;
        v63 = OBJC_IVAR____TtC13SiriInference21RecurringDateInterval_interval;
        v64 = (*(v120 + 80) + 32) & ~*(v120 + 80);
        v126 = v61;
        v65 = v61 + v64;
        v66 = v56;
        swift_beginAccess();
        v67 = *(v62 + 72);
        v145 = *(v62 + 16);
        v146 = v67;
        v68 = v63;
        v69 = v148;
        v70 = v149;
        v71 = v154;
        v153 = v63;
        v72 = v55;
        do
        {
          v157 = v65;
          v73 = v141;
          v74 = v69;
          v145();
          (*v137)(v23, v66 + v147, v57);
          v75 = v150;
          v151 = *v71;
          v151(v150, v156 + v68, v72);
          sub_1DD63C848();
          v76 = *v152;
          (*v152)(v75, v72);
          v77 = v143;
          sub_1DD63D268();
          v78 = v77;
          OUTLINED_FUNCTION_16_0(&v163);
          v79(v74, v73);
          v80 = v72;
          v81 = *v135;
          v82 = v142;
          (*v135)(v70, v142);
          OUTLINED_FUNCTION_16_0(&v162);
          v83(v23, v158);
          if (__swift_getEnumTagSinglePayload(v78, 1, v82) == 1)
          {
            sub_1DD4AF0C8(v78);
          }

          else
          {
            OUTLINED_FUNCTION_16_0(v161);
            v84 = v130;
            v85(v130, v78, v82);
            v86 = v132;
            v151(v132, v156 + v153, v80);
            sub_1DD63C848();
            v151 = v81;
            v76(v86, v80);
            OUTLINED_FUNCTION_16_0(&v160);
            v87(v131, v84, v82);
            sub_1DD63C838();
            sub_1DD56D300();
            v76(v75, v155);
            (v151)(v84, v82);
          }

          v57 = v158;
          v65 = v157 + v146;
          v88 = v159-- == 1;
          v71 = v154;
          v72 = v155;
          v66 = v144;
          v23 = v140;
          v69 = v148;
          v70 = v149;
          v68 = v153;
        }

        while (!v88);
        v56 = v144;
        v55 = v155;

        v58 = v119;
        v54 = v127;
      }

      else
      {
      }

      v50 = v124;
      if (v54 == v123)
      {
        v52 = v58;
        v49 = v163;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:
    v89 = *(v49 + 16);
    if (!v89)
    {

      v114 = MEMORY[0x1E69E7CC0];
LABEL_43:
      *v52 = v114;
      return;
    }

    v160 = MEMORY[0x1E69E7CC0];
    sub_1DD640988();
    v92 = sub_1DD55B198(v49);
    v93 = 0;
    v159 = v49 + 56;
    v94 = v125;
    v153 = v125 + 8;
    v154 = (v125 + 16);
    v151 = v89;
    v152 = v90;
    v149 = (v49 + 64);
    while ((v92 & 0x8000000000000000) == 0 && v92 < 1 << *(v49 + 32))
    {
      v95 = v92 >> 6;
      if ((*(v159 + 8 * (v92 >> 6)) & (1 << v92)) == 0)
      {
        goto LABEL_47;
      }

      if (*(v49 + 36) != v90)
      {
        goto LABEL_48;
      }

      v156 = v93;
      v157 = v90;
      v96 = *(v49 + 48) + *(v94 + 72) * v92;
      v97 = *(v94 + 16);
      v98 = v155;
      LODWORD(v158) = v91;
      v99 = v133;
      v97(v150, v96, v155);
      v97(v99, v150, v98);
      v100 = type metadata accessor for RecurringDateInterval();
      v101 = *(v100 + 48);
      v102 = *(v100 + 52);
      swift_allocObject();
      sub_1DD57F5F8(v99, 0);
      (*(v94 + 8))(v150, v98);
      sub_1DD640958();
      v103 = *(v160 + 16);
      sub_1DD640998();
      sub_1DD6409A8();
      sub_1DD640968();
      if (v158)
      {
        goto LABEL_56;
      }

      v104 = 1 << *(v49 + 32);
      if (v92 >= v104)
      {
        goto LABEL_49;
      }

      v105 = *(v159 + 8 * v95);
      if ((v105 & (1 << v92)) == 0)
      {
        goto LABEL_50;
      }

      if (*(v49 + 36) != v157)
      {
        goto LABEL_51;
      }

      v106 = v105 & (-2 << (v92 & 0x3F));
      if (v106)
      {
        v104 = __clz(__rbit64(v106)) | v92 & 0x7FFFFFFFFFFFFFC0;
        v107 = v151;
        v108 = v156;
      }

      else
      {
        v109 = v95 << 6;
        v110 = v95 + 1;
        v111 = &v149[8 * v95];
        v107 = v151;
        v108 = v156;
        while (v110 < (v104 + 63) >> 6)
        {
          v113 = *v111++;
          v112 = v113;
          v109 += 64;
          ++v110;
          if (v113)
          {
            sub_1DD3AA558(v92, v157, 0);
            v104 = __clz(__rbit64(v112)) + v109;
            goto LABEL_40;
          }
        }

        sub_1DD3AA558(v92, v157, 0);
      }

LABEL_40:
      v91 = 0;
      v93 = (v108 + 1);
      v92 = v104;
      v90 = v152;
      v94 = v125;
      if (v93 == v107)
      {

        v114 = v160;
        v52 = v119;
        goto LABEL_43;
      }
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
}

uint64_t sub_1DD4B7CFC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDB900, &qword_1DD643680);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD643F90;
  *(inited + 32) = 0;
  *(inited + 40) = 0;
  *(inited + 48) = 2;
  v3 = 1;
  v2 = 1;
  type metadata accessor for DateTime();
  swift_allocObject();
  *(inited + 56) = DateTime.init(withStartHour:startMinute:startSecond:startMeridiem:endHour:endMinute:endSecond:endMeridiem:)(5, 0, 0, &v3, 7, 0, 0, &v2);
  sub_1DD3B3160();
  return sub_1DD63FC88();
}

uint64_t sub_1DD4B7DCC(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, void (*a4)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v10 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v10 = a2(v10);
  }

  v11 = *(v10 + 16);
  v13[0] = v10 + 32;
  v13[1] = v11;
  result = sub_1DD4BA758(v13, a3, a4, a5);
  *a1 = v10;
  return result;
}

unint64_t sub_1DD4B7E68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_1DD4B7EC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v2 < v5)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1DD4B7F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for LearnedDisambiguation();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v20 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    sub_1DD4BC018(v16, &v20 - v13);
    for (i = 1; v15 != i; ++i)
    {
      sub_1DD4BC018(v16 + *(v7 + 72) * i, v11);
      v18 = *(v4 + 24);
      if (sub_1DD63CFC8())
      {
        sub_1DD4BC07C(v14);
        sub_1DD4BC0D8(v11, v14, type metadata accessor for LearnedDisambiguation);
      }

      else
      {
        sub_1DD4BC07C(v11);
      }
    }

    sub_1DD4BC0D8(v14, a2, type metadata accessor for LearnedDisambiguation);
    return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
  }

  else
  {

    return __swift_storeEnumTagSinglePayload(a2, 1, 1, v4);
  }
}

void (*sub_1DD4B80D0(void *a1, uint64_t a2, uint64_t a3))(void *a1)
{
  v6 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v6;
  v6[4] = sub_1DD4BB93C(v6, a2, a3);
  return sub_1DD4B8144;
}

void sub_1DD4B8144(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_1DD4B8190(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v5 < v2)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

uint64_t sub_1DD4B81E8(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return 0;
  }

  result = a1[4];
  v4 = v1 - 1;
  if (v1 != 1)
  {
    v5 = a1 + 5;
    do
    {
      v7 = *v5++;
      v6 = v7;
      if (v7 < result)
      {
        result = v6;
      }

      --v4;
    }

    while (v4);
  }

  return result;
}

unint64_t sub_1DD4B822C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, double a5, double a6)
{
  v61 = a4;
  v69 = a3;
  v10 = *(a1 + 16);
  v57 = a2;
  v58 = v10;
  if (v10)
  {
    v11 = 0;
    v60 = *(v6 + 24);
    v12 = a1 + 32;
    v13 = a5;
    v14 = MEMORY[0x1E69E7CC0];
    v15 = a6;
    v56 = a1 + 32;
    while (2)
    {
      v16 = (v12 + 16 * v11);
      v59 = v11 + 1;
      v17 = *v16;
      v18 = v16[1];
      v19 = sub_1DD63FE58();
      v21 = v20;
      v22 = v61[3];
      v23 = v61[4];
      __swift_project_boxed_opaque_existential_1(v61, v22);

      v8 = sub_1DD5E8CD4(v17, v18, v22, v23);

      v67 = 0;
      v68 = 0xE000000000000000;
      v24 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v24 = v19 & 0xFFFFFFFFFFFFLL;
      }

      v63 = v19;
      v64 = v21;
      v65 = 0;
      v66 = v24;

      while (1)
      {
        v25 = sub_1DD63FF88();
        if (!v26)
        {
          break;
        }

        v27 = v25;
        v28 = v26;
        if ((sub_1DD63FD38() & 1) == 0)
        {
          MEMORY[0x1E12B2250](v27, v28);
        }
      }

      v9 = &v55;
      v31 = v67;
      v30 = v68;
      v63 = v67;
      v64 = v68;
      MEMORY[0x1EEE9AC00](v29);
      v32 = sub_1DD450388();

      if (v32)
      {
      }

      else
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = *(v8 + 16);
          sub_1DD3BE2A4();
          v8 = v46;
        }

        v32 = *(v8 + 16);
        if (v32 >= *(v8 + 24) >> 1)
        {
          sub_1DD3BE2A4();
          v8 = v47;
        }

        *(v8 + 16) = v32 + 1;
        v33 = v8 + 16 * v32;
        *(v33 + 32) = v31;
        *(v33 + 40) = v30;
      }

      v34 = sub_1DD4BA368();
      if (v7)
      {

        return v32;
      }

      v6 = v34;

      v35 = sub_1DD4B8A94(v6);

      v36 = 0;
      v37 = *(v35 + 16);
      while (v37 != v36)
      {
        if (v36 >= *(v35 + 16))
        {
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v38 = *(v35 + 8 * v36 + 32);
        v39 = *(v62 + 16);

        v6 = sub_1DD4B9A34(v13, v15);

        v8 = *(v6 + 16);
        v40 = *(v14 + 16);
        v9 = v40 + v8;
        if (__OFADD__(v40, v8))
        {
          goto LABEL_48;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v9 > *(v14 + 24) >> 1)
        {
          sub_1DD3BEAAC();
          v14 = v41;
        }

        if (*(v6 + 16))
        {
          if ((*(v14 + 24) >> 1) - *(v14 + 16) < v8)
          {
            goto LABEL_50;
          }

          swift_arrayInitWithCopy();

          if (v8)
          {
            v42 = *(v14 + 16);
            v43 = __OFADD__(v42, v8);
            v44 = v42 + v8;
            if (v43)
            {
              goto LABEL_51;
            }

            *(v14 + 16) = v44;
          }
        }

        else
        {

          if (v8)
          {
            goto LABEL_49;
          }
        }

        ++v36;
      }

      v11 = v59;
      v12 = v56;
      v9 = 0xE000000000000000;
      if (v59 != v58)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v32 = sub_1DD4B8718(v14);

  if (*(v32 + 16) > v57)
  {
    if (v57 < 0)
    {
LABEL_52:
      __break(1u);
    }

    else
    {
      v6 = sub_1DD4BF4BC(0);
      v8 = v48;
      v14 = v49;
      v9 = v50;

      if ((v9 & 1) == 0)
      {
LABEL_38:
        sub_1DD598494(v6, v8, v14, v9);
        v32 = v51;
        swift_unknownObjectRelease();
        return v32;
      }

      sub_1DD640D08();
      swift_unknownObjectRetain_n();
      v52 = swift_dynamicCastClass();
      if (!v52)
      {
        swift_unknownObjectRelease();
        v52 = MEMORY[0x1E69E7CC0];
      }

      v53 = *(v52 + 16);

      if (!__OFSUB__(v9 >> 1, v14))
      {
        if (v53 == (v9 >> 1) - v14)
        {
          v32 = swift_dynamicCastClass();
          swift_unknownObjectRelease_n();
          if (!v32)
          {
            swift_unknownObjectRelease();
            return MEMORY[0x1E69E7CC0];
          }

          return v32;
        }

LABEL_54:
        swift_unknownObjectRelease_n();
        goto LABEL_38;
      }
    }

    __break(1u);
    goto LABEL_54;
  }

  return v32;
}

uint64_t sub_1DD4B8718(uint64_t a1)
{
  v78 = sub_1DD63FC88();
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_32;
  }

  v3 = 0;
  v71 = a1 + 32;
  do
  {
    v4 = v71 + 40 * v3;
    v6 = *v4;
    v5 = *(v4 + 8);
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    v9 = *(v4 + 32);
    v81 = v6;
    v82 = v5;
    v83 = v7;
    v84 = v8;
    v85 = v9;
    ++v3;
    v10 = 1 << *(v78 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v78 + 64);
    v13 = (v10 + 63) >> 6;
    swift_bridgeObjectRetain_n();

    v14 = 0;
    do
    {
      if (!v12)
      {
        while (1)
        {
          v15 = v14 + 1;
          if (__OFADD__(v14, 1))
          {
            break;
          }

          if (v15 >= v13)
          {

            swift_isUniquelyReferenced_nonNull_native();
            v77[0] = v78;
            sub_1DD3FFA9C();

            goto LABEL_31;
          }

          v12 = *(v78 + 64 + 8 * v15);
          ++v14;
          if (v12)
          {
            v14 = v15;
            goto LABEL_12;
          }
        }

        __break(1u);
LABEL_34:
        __break(1u);

        __break(1u);
        return result;
      }

LABEL_12:
      v16 = (*(v78 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v12)))));
      if (*v16 == v5 && v16[1] == v7)
      {
        break;
      }

      v12 &= v12 - 1;
    }

    while ((sub_1DD640CD8() & 1) == 0);

    sub_1DD59B6F0(v5, v7, v78);
    v18 = sub_1DD4BBD98(v79);
    v20 = OUTLINED_FUNCTION_7_34(v18, v19);
    if (*v21)
    {
      v28 = *&v80;
      if (!v79)
      {
        v28 = 3.4028e38;
      }

      if (v8 < v28)
      {
        v28 = v8;
      }

      *(v21 + 24) = v28;
    }

    v29 = OUTLINED_FUNCTION_13_26(v20, v21, v22, v23, v24, v25, v26, v27, v71, v74, v77[0]);
    v31 = v30(v29);
    v33 = OUTLINED_FUNCTION_7_34(v31, v32);
    if (*v34)
    {

      sub_1DD608684(v35);
      v44 = OUTLINED_FUNCTION_13_26(v36, v37, v38, v39, v40, v41, v42, v43, v72, v75, v77[0]);
      v33(v44);
    }

    else
    {

      v55 = OUTLINED_FUNCTION_13_26(v47, v48, v49, v50, v51, v52, v53, v54, v72, v75, v77[0]);
      v45 = (v33)(v55);
    }

    v56 = OUTLINED_FUNCTION_7_34(v45, v46);
    if (!*v57)
    {
      goto LABEL_30;
    }

    v64 = v57[4];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_34;
    }

    v57[4] = v66;
LABEL_30:
    v67 = OUTLINED_FUNCTION_13_26(v56, v57, v58, v59, v60, v61, v62, v63, v73, v76, v77[0]);
    v68(v67);

LABEL_31:
    ;
  }

  while (v3 != v2);
LABEL_32:

  sub_1DD59842C();
  v77[0] = v69;
  sub_1DD4B7DCC(v77, sub_1DD4EC694, &type metadata for RetrievalResult, sub_1DD4BA960, sub_1DD4BA864);
  swift_bridgeObjectRelease_n();
  return v77[0];
}

uint64_t sub_1DD4B8A94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1DD42B424(0, v1, 0);
  v4 = 0;
  v5 = v19;
  v17 = v1;
  v18 = a1 + 32;
  do
  {
    v6 = *(v18 + 8 * v4);
    v7 = *(v6 + 16);
    if (v7)
    {
      v8 = v2;

      sub_1DD42B444();
      v9 = v2;
      v10 = *(v2 + 16);
      v11 = 32;
      do
      {
        v12 = *(v6 + v11);
        if (v10 >= *(v9 + 24) >> 1)
        {
          sub_1DD42B444();
        }

        v13 = v12;
        *(v9 + 16) = v10 + 1;
        *(v9 + 4 * v10 + 32) = v13;
        v11 += 8;
        ++v10;
        --v7;
      }

      while (v7);

      v2 = v8;
      v1 = v17;
    }

    else
    {
      v9 = v2;
    }

    v15 = *(v19 + 16);
    v14 = *(v19 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1DD42B424((v14 > 1), v15 + 1, 1);
    }

    ++v4;
    *(v19 + 16) = v15 + 1;
    *(v19 + 8 * v15 + 32) = v9;
  }

  while (v4 != v1);
  return v5;
}

void sub_1DD4B8C28(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = &v48 - v6;
  v7 = type metadata accessor for InferenceEuclidDebugMetrics(0);
  v8 = *(*(v7 - 1) + 64);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_2();
  v11 = v10 - v9;
  v12 = *(a1 + 16);
  if (HIDWORD(v12))
  {
    __break(1u);
  }

  else
  {
    v60 = MEMORY[0x1E69E7CC0];
    v13 = (a1 + 32);
    for (i = v12; i; --i)
    {
      v15 = *v13;
      v13 += 5;

      sub_1DD6075D8(v16);
    }

    v17 = v60;
    v18 = MEMORY[0x1E69E7CC0];
    v54 = v12;
    if (v12)
    {
      v60 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_12_25();
      sub_1DD42B444();
      v18 = v60;
      v19 = *(v60 + 16);
      v20 = (a1 + 56);
      v21 = v12;
      do
      {
        v22 = *v20;
        v60 = v18;
        v23 = *(v18 + 24);
        if (v19 >= v23 >> 1)
        {
          OUTLINED_FUNCTION_10_33(v23);
          sub_1DD42B444();
          v18 = v60;
        }

        *(v18 + 16) = v19 + 1;
        *(v18 + 4 * v19 + 32) = v22;
        v20 += 10;
        ++v19;
        --v21;
      }

      while (v21);
    }

    v24 = sub_1DD63D0F8();
    __swift_storeEnumTagSinglePayload(v55, 1, 1, v24);
    v25 = sub_1DD4B8190(v18);
    v26 = sub_1DD4B7E68(v18);
    sub_1DD4B8FDC(v18);
    v28 = v27;
    v29 = sub_1DD4B90E0(v18);
    v30 = LODWORD(v29);

    v31 = *(v56 + 24);
    v32 = sub_1DD4BA5C0();
    v52 = v33;
    v53 = v32;
    v34 = *(v17 + 16);
    if (v34)
    {
      v49 = v26;
      v50 = v25;
      v51 = a2;
      v60 = MEMORY[0x1E69E7CC0];
      OUTLINED_FUNCTION_12_25();
      sub_1DD42B478();
      v35 = v60;
      v36 = *(v60 + 16);
      v37 = 32;
      do
      {
        v38 = *(v17 + v37);
        v60 = v35;
        v39 = *(v35 + 24);
        if (v36 >= v39 >> 1)
        {
          OUTLINED_FUNCTION_10_33(v39);
          sub_1DD42B478();
          v35 = v60;
        }

        *(v35 + 16) = v36 + 1;
        *(v35 + 8 * v36 + 32) = v38;
        v37 += 8;
        ++v36;
        --v34;
      }

      while (v34);

      v25 = v50;
      a2 = v51;
      v26 = v49;
    }

    else
    {

      v35 = MEMORY[0x1E69E7CC0];
    }

    LOBYTE(v60) = BYTE4(v25) & 1;
    v59 = BYTE4(v26) & 1;
    v58 = 0;
    v57 = 0;
    v40 = *(v56 + 16);
    v41 = sub_1DD4B9EB8();
    sub_1DD4BA6E8(v55, v11);
    v42 = MEMORY[0x1E69E7CC0];
    *(v11 + v7[5]) = MEMORY[0x1E69E7CC0];
    v43 = v11 + v7[6];
    *v43 = v25 | ((HIDWORD(v25) & 1) << 32);
    *(v43 + 8) = v26 | ((HIDWORD(v26) & 1) << 32);
    *(v43 + 16) = v28;
    *(v43 + 28) = 0;
    *(v43 + 24) = v30;
    *(v43 + 29) = 0;
    v44 = v11 + v7[7];
    v45 = v52;
    *v44 = v53;
    *(v44 + 8) = v45;
    *(v44 + 16) = 0x100000000;
    *(v44 + 28) = 1;
    *(v44 + 24) = 0;
    *(v11 + v7[8]) = v35;
    *(v11 + v7[9]) = 2;
    *(v11 + v7[10]) = v42;
    v46 = v11 + v7[11];
    *v46 = v41;
    *(v46 + 4) = BYTE4(v41) & 1;
    *a2 = 1;
    *(a2 + 4) = v54;
    *(a2 + 8) = 0;
    v47 = type metadata accessor for InferenceEuclidLog(0);
    sub_1DD4BC0D8(v11, a2 + *(v47 + 20), type metadata accessor for InferenceEuclidDebugMetrics);
  }
}

uint64_t sub_1DD4B8FDC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v8 = result;

    sub_1DD4B7DCC(&v8, sub_1DD4EC6AC, MEMORY[0x1E69E6448], sub_1DD4BAEDC, sub_1DD4BA904);
    v2 = v1 >> 1;
    v3 = *(v8 + 16);
    if (v1)
    {
      if (v1 >> 1 < v3)
      {
        v7 = *(v8 + 4 * v2 + 32);
      }
    }

    else
    {
      if (v1 >> 1 < v3)
      {
        v4 = v8 + 4 * v2;
        v6 = *(v4 + 28);
        v5 = *(v4 + 32);
      }

      __break(1u);
    }

    __break(1u);

    __break(1u);
  }

  return result;
}

double sub_1DD4B90E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0.0;
  }

  v2 = 0;
  result = 0.0;
  do
  {
    v4 = *(a1 + 32 + 4 * v2++);
    *&result = *&result + v4;
  }

  while (v1 != v2);
  *&result = *&result / v1;
  return result;
}

uint64_t sub_1DD4B911C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t sub_1DD4B9144()
{
  sub_1DD4B911C();
  OUTLINED_FUNCTION_20();

  return swift_deallocClassInstance();
}

uint64_t sub_1DD4B9194(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7954797469746E65 && a2 == 0xEA00000000006570;
  if (v4 || (sub_1DD640CD8() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79546C616E676973 && a2 == 0xEA00000000006570;
    if (v6 || (sub_1DD640CD8() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x80000001DD66DE00 == a2;
      if (v7 || (sub_1DD640CD8() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 1682531437 && a2 == 0xE400000000000000;
        if (v8 || (sub_1DD640CD8() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7361696C61 && a2 == 0xE500000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1DD640CD8();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1DD4B9348(char a1)
{
  result = 0x7954797469746E65;
  switch(a1)
  {
    case 1:
      result = 0x79546C616E676973;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 1682531437;
      break;
    case 4:
      result = 0x7361696C61;
      break;
    default:
      return result;
  }

  return result;
}

void *sub_1DD4B93DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD8C8, &qword_1DD6523B8);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v28 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DD4BBF8C();
  sub_1DD640ED8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v36[0]) = 0;
  v14 = sub_1DD640B28();
  v34 = v15;
  OUTLINED_FUNCTION_3_44(1);
  v16 = sub_1DD640B28();
  v33 = v17;
  v31 = v16;
  OUTLINED_FUNCTION_3_44(2);
  v30 = sub_1DD640B28();
  v32 = v18;
  OUTLINED_FUNCTION_3_44(3);
  v29 = sub_1DD640B88();
  v37 = 4;
  v19 = sub_1DD640B28();
  v20 = *(v8 + 8);
  v21 = v19;
  v28 = v22;
  v20(v12, v5);
  v23 = v33;
  __src[0] = v14;
  __src[1] = v34;
  v24 = v31;
  __src[2] = v31;
  __src[3] = v33;
  v25 = v32;
  __src[4] = v30;
  __src[5] = v32;
  __src[6] = v29;
  __src[7] = v21;
  v26 = v28;
  __src[8] = v28;
  sub_1DD4BBFE0(__src, v36);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v36[0] = v14;
  v36[1] = v34;
  v36[2] = v24;
  v36[3] = v23;
  v36[4] = v30;
  v36[5] = v25;
  v36[6] = v29;
  v36[7] = v21;
  v36[8] = v26;
  sub_1DD4BA6B8(v36);
  return memcpy(a2, __src, 0x48uLL);
}

uint64_t sub_1DD4B96E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DD4B9194(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DD4B9710(uint64_t a1)
{
  v2 = sub_1DD4BBF8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DD4B974C(uint64_t a1)
{
  v2 = sub_1DD4BBF8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DD4B9788@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1DD4B93DC(a1, __src);
  if (!v2)
  {
    return memcpy(a2, __src, 0x48uLL);
  }

  return result;
}

uint64_t sub_1DD4B97D4()
{
  v1 = v0;
  v2 = sub_1DD63C768();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  *(v0 + 16) = 0;
  v11 = sub_1DD63C7A8();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  v14 = sub_1DD63C798();
  v15 = *(v0 + 16);
  *(v0 + 16) = 0;
  *(v0 + 24) = v14;

  sub_1DD63F798();
  v16 = sub_1DD63F788();
  v17 = sub_1DD63F778();

  v18 = *(v1 + 16);
  *(v1 + 16) = v17;

  v19 = *(v1 + 24);
  (*(v5 + 104))(v10, *MEMORY[0x1E6967EF8], v2);
  sub_1DD63C778();
  return v1;
}

uint64_t sub_1DD4B9A34(float a1, float a2)
{
  v4 = v3;
  v7 = sub_1DD63EF38();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2();
  v15 = v14 - v13;
  if (!*(v2 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v52 = v2;

  v16 = sub_1DD63EF08();

  if (!v3)
  {
    v18 = *(v16 + 16);
    v19 = v10 + 16;
    v51 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v18 == v4)
      {
        goto LABEL_20;
      }

      if (v4 >= *(v16 + 16))
      {
        __break(1u);
        v44 = OUTLINED_FUNCTION_11_30();
        v45(v44, v19);
        sub_1DD3AD77C(v50, v7);
      }

      (*(v10 + 16))(v15, v16 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v4, v7);
      sub_1DD63EF18();
      if (v20 > a1)
      {
        v42 = OUTLINED_FUNCTION_11_30();
        v43(v42, v7);
LABEL_20:

        return v51;
      }

      sub_1DD63EF18();
      if (v21 < a2)
      {
        break;
      }

      v24 = v7;
      v25 = sub_1DD63EF28();
      if (v26 >> 60 == 15)
      {
        v27 = OUTLINED_FUNCTION_11_30();
        v28(v27, v7);
        v19 = v10 + 16;
LABEL_13:
        ++v4;
      }

      else
      {
        v29 = v26;
        v30 = v25;
        v48 = *(v52 + 24);
        sub_1DD4BA664();
        v50 = v30;
        sub_1DD63C788();
        memcpy(__dst, __src, sizeof(__dst));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBD38, &unk_1DD6522F0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DD643F90;
        *(inited + 32) = sub_1DD4B9FE4(__dst[2], __dst[3]);
        sub_1DD56BB0C();
        v49 = v32;
        v46 = __dst[4];
        v47 = __dst[5];

        sub_1DD63EF18();
        v34 = v33;
        sub_1DD4BA6B8(__dst);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v39 = *(v51 + 16);
          sub_1DD3BEAAC();
          v51 = v40;
        }

        v35 = *(v51 + 16);
        if (v35 >= *(v51 + 24) >> 1)
        {
          sub_1DD3BEAAC();
          v51 = v41;
        }

        ++v4;
        sub_1DD3AD77C(v50, v29);
        v36 = OUTLINED_FUNCTION_11_30();
        v7 = v24;
        v37(v36, v24);
        *(v51 + 16) = v35 + 1;
        v38 = v51 + 40 * v35;
        *(v38 + 32) = v49;
        *(v38 + 40) = v46;
        *(v38 + 48) = v47;
        *(v38 + 56) = v34;
        *(v38 + 64) = 1;
        v19 = v10 + 16;
      }
    }

    v22 = OUTLINED_FUNCTION_11_30();
    v23(v22, v7);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1DD4B9EB8()
{
  if (!*(v0 + 16))
  {
    v1 = 0;
    LOBYTE(v3) = 1;
    return v1 | (v3 << 32);
  }

  v1 = sub_1DD63EEF8();

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = HIDWORD(v1);
    if (!HIDWORD(v1))
    {
      return v1 | (v3 << 32);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD4B9FE4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_6_41();
  v5 = a1 == 0xD000000000000014 && v4 == a2;
  if (v5 || (OUTLINED_FUNCTION_27() & 1) != 0)
  {
    return 1;
  }

  OUTLINED_FUNCTION_6_41();
  v8 = a1 == 0xD000000000000013 && v7 == a2;
  if (v8 || (OUTLINED_FUNCTION_27() & 1) != 0)
  {
    return 2;
  }

  OUTLINED_FUNCTION_6_41();
  v10 = a1 == 0xD000000000000013 && v9 == a2;
  if (v10 || (OUTLINED_FUNCTION_27() & 1) != 0)
  {
    return 128;
  }

  OUTLINED_FUNCTION_6_41();
  v12 = a1 == 0xD000000000000013 && v11 == a2;
  if (v12 || (OUTLINED_FUNCTION_27() & 1) != 0)
  {
    return 64;
  }

  OUTLINED_FUNCTION_6_41();
  v14 = a1 == 0xD00000000000001ELL && v13 == a2;
  if (v14 || (OUTLINED_FUNCTION_27() & 1) != 0)
  {
    return 128;
  }

  OUTLINED_FUNCTION_6_41();
  v16 = a1 == 0xD000000000000012 && v15 == a2;
  if (v16 || (OUTLINED_FUNCTION_27() & 1) != 0)
  {
    return 64;
  }

  OUTLINED_FUNCTION_6_41();
  if (a1 == 0xD000000000000017 && v17 == a2)
  {
    return 16;
  }

  if (OUTLINED_FUNCTION_27())
  {
    return 16;
  }

  return 0;
}

uint64_t sub_1DD4BA174()
{
  v1 = v0;
  v2 = sub_1DD63FAE8();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_2();
  v10 = v9 - v8;
  v11 = sub_1DD63FAC8();
  v12 = OUTLINED_FUNCTION_0(v11);
  v14 = v13;
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2();
  v19 = v18 - v17;
  v20 = sub_1DD63D168();
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  OUTLINED_FUNCTION_2();
  sub_1DD63D108();
  (*(v14 + 104))(v19, *MEMORY[0x1E697B938], v11);
  (*(v5 + 104))(v10, *MEMORY[0x1E697B940], v2);
  v22 = sub_1DD63FB08();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v1 + 16) = sub_1DD63FAF8();
  return v1;
}

void *sub_1DD4BA368()
{
  v2 = v1;
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDD8B8, &qword_1DD6522E8);
  v4 = swift_allocObject();
  *(v3 + 16) = v4;
  *(v4 + 16) = xmmword_1DD643F90;
  *(v4 + 32) = MEMORY[0x1E69E7CC0];
  v5 = swift_allocObject();
  *(v5 + 16) = 0;
  v6 = (v5 + 16);
  v7 = *(v0 + 16);
  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v3;

  sub_1DD63FAB8();
  if (v1)
  {
  }

  else
  {

    swift_beginAccess();
    v2 = *v6;
    if (*v6)
    {
      v9 = *v6;
      swift_willThrow();
      v10 = v2;
    }

    else
    {
      swift_beginAccess();
      v2 = *(v3 + 16);
    }
  }

  return v2;
}

void sub_1DD4BA520(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = a2;
  v9 = a2;

  if (a1)
  {
    swift_beginAccess();
    v10 = *(a4 + 16);
    *(a4 + 16) = a1;
  }
}

uint64_t sub_1DD4BA5C0()
{
  v1 = *(v0 + 16);
  sub_1DD63FAD8();
  return sub_1DD640CB8();
}

uint64_t sub_1DD4BA608()
{
  v1 = *(v0 + 16);

  OUTLINED_FUNCTION_8_34();

  return swift_deallocClassInstance();
}

unint64_t sub_1DD4BA664()
{
  result = qword_1ECCDD8C0;
  if (!qword_1ECCDD8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD8C0);
  }

  return result;
}

uint64_t sub_1DD4BA6E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4BA758(uint64_t a1, uint64_t a2, void (*a3)(void *, _BYTE *, uint64_t, uint64_t), uint64_t (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a1 + 8);
  result = sub_1DD640CA8();
  if (result < v7)
  {
    if (v7 >= -1)
    {
      v9 = result;
      v10 = v7 / 2;
      if (v7 <= 1)
      {
        v11 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v11 = sub_1DD640158();
        *(v11 + 16) = v10;
      }

      v12[0] = v11 + 32;
      v12[1] = v10;
      a3(v12, v13, a1, v9);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v7 < 0)
  {
    goto LABEL_12;
  }

  if (v7)
  {
    return a4(0, v7, 1, a1);
  }

  return result;
}

uint64_t sub_1DD4BA864(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 40 * a3 + 32);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *(v9 - 8);
        if (v10 >= v7 && (v7 != v10 || *(v9 + 24) >= *(v9 - 16)))
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v12 = *v9;
        v13 = *(v9 + 8);
        result = *(v9 + 16);
        v14 = *(v9 + 24);
        v15 = *(v9 - 24);
        *v9 = *(v9 - 40);
        *(v9 + 16) = v15;
        *(v9 + 32) = *(v9 - 8);
        *(v9 - 32) = v13;
        *(v9 - 24) = result;
        *(v9 - 16) = v14;
        *(v9 - 8) = v7;
        *(v9 - 40) = v12;
        v9 -= 40;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 40;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_1DD4BA904(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 4 * a3 - 4;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 4 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 4;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1DD4BA960(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v98 = MEMORY[0x1E69E7CC0];
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v9 = v7 + 1;
      if (v7 + 1 < v6)
      {
        v10 = *a3 + 40 * v9;
        v11 = *(v10 + 32);
        v12 = *a3 + 40 * v7;
        v13 = *(v12 + 32);
        v14 = v13 < v11 || *(v10 + 24) < *(v12 + 24) && v11 == v13;
        v16 = v7 + 2;
        if (v6 <= v7 + 2)
        {
          v9 = v7 + 2;
        }

        else
        {
          v9 = v6;
        }

        v17 = (*a3 + 40 * v7 + 112);
        while (v16 < v6)
        {
          v18 = *v17;
          if (v11 < *v17 || (v18 == v11 ? (v19 = *(v17 - 2) < *(v17 - 12)) : (v19 = 0), v19))
          {
            if (!v14)
            {
              v9 = v16;
              goto LABEL_37;
            }
          }

          else if (v14)
          {
            v9 = v16;
            goto LABEL_29;
          }

          v17 += 10;
          ++v16;
          v11 = v18;
        }

        if (!v14)
        {
          goto LABEL_58;
        }

LABEL_29:
        if (v9 < v7)
        {
          goto LABEL_132;
        }

        if (v7 < v9)
        {
          v20 = 40 * v9 - 16;
          v21 = 40 * v7 + 32;
          v22 = v9;
          v23 = v7;
          do
          {
            if (v23 != --v22)
            {
              v24 = *a3;
              if (!*a3)
              {
                goto LABEL_135;
              }

              v25 = (v24 + v21);
              v26 = *(v24 + v21 - 32);
              v27 = v24 + v20;
              v28 = *(v25 - 2);
              v29 = *(v25 - 2);
              v30 = *v25;
              v31 = *(v27 + 8);
              v32 = *(v27 - 8);
              *(v25 - 2) = *(v27 - 24);
              *(v25 - 1) = v32;
              *v25 = v31;
              *(v27 - 24) = v26;
              *(v27 - 8) = v28;
              *v27 = v29;
              *(v27 + 8) = v30;
            }

            ++v23;
            v20 -= 40;
            v21 += 40;
          }

          while (v23 < v22);
          v6 = a3[1];
        }
      }

LABEL_37:
      if (v9 < v6)
      {
        if (__OFSUB__(v9, v7))
        {
          goto LABEL_129;
        }

        if (v9 - v7 < a4)
        {
          if (__OFADD__(v7, a4))
          {
            goto LABEL_130;
          }

          if (v7 + a4 < v6)
          {
            v6 = v7 + a4;
          }

          if (v6 < v7)
          {
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
            return;
          }

          if (v9 != v6)
          {
            v33 = *a3;
            v34 = *a3 + 40 * v9;
            v35 = v7 - v9;
            do
            {
              v36 = *(v33 + 40 * v9 + 32);
              v37 = v35;
              v38 = v34;
              do
              {
                v39 = *(v38 - 8);
                if (v39 >= v36 && (v36 != v39 || *(v38 + 24) >= *(v38 - 16)))
                {
                  break;
                }

                if (!v33)
                {
                  goto LABEL_133;
                }

                v41 = *v38;
                v42 = *(v38 + 8);
                v43 = *(v38 + 16);
                v44 = *(v38 + 24);
                v45 = *(v38 - 24);
                *v38 = *(v38 - 40);
                *(v38 + 16) = v45;
                *(v38 + 32) = *(v38 - 8);
                *(v38 - 32) = v42;
                *(v38 - 24) = v43;
                *(v38 - 16) = v44;
                *(v38 - 8) = v36;
                *(v38 - 40) = v41;
                v38 -= 40;
              }

              while (!__CFADD__(v37++, 1));
              ++v9;
              v34 += 40;
              --v35;
            }

            while (v9 != v6);
            v9 = v6;
          }
        }
      }

LABEL_58:
      if (v9 < v7)
      {
        goto LABEL_128;
      }

      v95 = v9;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v90 = v8[2];
        sub_1DD3BEB7C();
        v8 = v91;
      }

      v47 = v8[2];
      v48 = v47 + 1;
      if (v47 >= v8[3] >> 1)
      {
        sub_1DD3BEB7C();
        v8 = v92;
      }

      v8[2] = v48;
      v49 = v8 + 4;
      v50 = &v8[2 * v47 + 4];
      *v50 = v7;
      v50[1] = v95;
      v96 = *a1;
      if (!*a1)
      {
        goto LABEL_136;
      }

      if (v47)
      {
        while (1)
        {
          v51 = v48 - 1;
          v52 = &v49[2 * v48 - 2];
          v53 = &v8[2 * v48];
          if (v48 >= 4)
          {
            break;
          }

          if (v48 == 3)
          {
            v54 = v8[4];
            v55 = v8[5];
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_78:
            if (v57)
            {
              goto LABEL_118;
            }

            v69 = *v53;
            v68 = v53[1];
            v70 = __OFSUB__(v68, v69);
            v71 = v68 - v69;
            v72 = v70;
            if (v70)
            {
              goto LABEL_121;
            }

            v73 = v52[1];
            v74 = v73 - *v52;
            if (__OFSUB__(v73, *v52))
            {
              goto LABEL_124;
            }

            if (__OFADD__(v71, v74))
            {
              goto LABEL_126;
            }

            if (v71 + v74 >= v56)
            {
              if (v56 < v74)
              {
                v51 = v48 - 2;
              }

              goto LABEL_100;
            }

            goto LABEL_93;
          }

          if (v48 < 2)
          {
            goto LABEL_120;
          }

          v76 = *v53;
          v75 = v53[1];
          v64 = __OFSUB__(v75, v76);
          v71 = v75 - v76;
          v72 = v64;
LABEL_93:
          if (v72)
          {
            goto LABEL_123;
          }

          v78 = *v52;
          v77 = v52[1];
          v64 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v64)
          {
            goto LABEL_125;
          }

          if (v79 < v71)
          {
            goto LABEL_107;
          }

LABEL_100:
          if (v51 - 1 >= v48)
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
            goto LABEL_131;
          }

          if (!*a3)
          {
            goto LABEL_134;
          }

          v83 = &v49[2 * v51 - 2];
          v84 = *v83;
          v85 = &v49[2 * v51];
          v86 = v85[1];
          sub_1DD4BB5F0((*a3 + 40 * *v83), (*a3 + 40 * *v85), *a3 + 40 * v86, v96);
          if (v5)
          {
            goto LABEL_111;
          }

          if (v86 < v84)
          {
            goto LABEL_113;
          }

          v87 = v8;
          v88 = v8[2];
          if (v51 > v88)
          {
            goto LABEL_114;
          }

          *v83 = v84;
          v83[1] = v86;
          if (v51 >= v88)
          {
            goto LABEL_115;
          }

          v48 = v88 - 1;
          memmove(&v49[2 * v51], v85 + 2, 16 * (v88 - 1 - v51));
          v87[2] = v88 - 1;
          v89 = v88 > 2;
          v8 = v87;
          if (!v89)
          {
            goto LABEL_107;
          }
        }

        v58 = &v49[2 * v48];
        v59 = *(v58 - 8);
        v60 = *(v58 - 7);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_116;
        }

        v63 = *(v58 - 6);
        v62 = *(v58 - 5);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_117;
        }

        v65 = v53[1];
        v66 = v65 - *v53;
        if (__OFSUB__(v65, *v53))
        {
          goto LABEL_119;
        }

        v64 = __OFADD__(v56, v66);
        v67 = v56 + v66;
        if (v64)
        {
          goto LABEL_122;
        }

        if (v67 >= v61)
        {
          v81 = *v52;
          v80 = v52[1];
          v64 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v64)
          {
            goto LABEL_127;
          }

          if (v56 < v82)
          {
            v51 = v48 - 2;
          }

          goto LABEL_100;
        }

        goto LABEL_78;
      }

LABEL_107:
      v6 = a3[1];
      v7 = v95;
      if (v95 >= v6)
      {
        v98 = v8;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_137;
  }

  sub_1DD4BB38C(&v98, *a1, a3);
LABEL_111:
}

void sub_1DD4BAEDC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v80 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v75 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 4 * v8);
        v10 = *(*a3 + 4 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 4 * v11++) >= v12);
          v12 = *(*a3 + 4 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 4 * v5 - 4;
            v16 = 4 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 4;
              v16 += 4;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 4 * v8 - 4;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 4 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 4;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v77 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v72 = v7[2];
        sub_1DD3BEB7C();
        v7 = v73;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1DD3BEB7C();
        v7 = v74;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v78 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
LABEL_102:
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1DD4BB7C8((*a3 + 4 * *v65), (*a3 + 4 * *v67), (*a3 + 4 * v68), v78);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v77;
      a4 = v75;
      if (v77 >= v5)
      {
        v80 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1DD4BB4C4(&v80, *a1, a3);
LABEL_89:
}

uint64_t sub_1DD4BB38C(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8(v15);
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1DD4BB5F0((*a3 + 40 * *v4), (*a3 + 40 * *v9), *a3 + 40 * v10, a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1DD4BB4C4(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1DD4EC2B8(v5);
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1DD4BB7C8((*a3 + 4 * *v9), (*a3 + 4 * *v11), (*a3 + 4 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1DD4BB5F0(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 40;
  v9 = (a3 - a2) / 40;
  if (v8 < v9)
  {
    sub_1DD3AA508(a1, (a2 - a1) / 40, a4);
    v10 = &v4[40 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v21 = v7;
        goto LABEL_36;
      }

      v12 = *(v6 + 4);
      v13 = *(v4 + 4);
      if (v13 < v12)
      {
        break;
      }

      if (v12 == v13 && *(v6 + 6) < *(v4 + 6))
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 40;
      if (!v16)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 40;
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 40;
    if (v16)
    {
      goto LABEL_17;
    }

LABEL_16:
    v17 = *v15;
    v18 = *(v15 + 1);
    *(v7 + 4) = *(v15 + 4);
    *v7 = v17;
    *(v7 + 1) = v18;
    goto LABEL_17;
  }

  sub_1DD3AA508(a2, (a3 - a2) / 40, a4);
  v19 = &v4[40 * v9];
LABEL_19:
  v20 = 0;
  v21 = v6;
  while (1)
  {
    v10 = &v19[v20];
    if (&v19[v20] <= v4 || v6 <= v7)
    {
      break;
    }

    v23 = *(v10 - 1);
    v24 = *(v6 - 1);
    if (v24 < v23 || (v23 == v24 ? (v25 = *&v19[v20 - 16] < *(v6 - 4)) : (v25 = 0), v25))
    {
      v6 -= 40;
      v30 = (v5 + v20);
      v5 = v5 + v20 - 40;
      v19 += v20;
      if (v30 != v21)
      {
        v31 = *v6;
        v32 = *(v21 - 24);
        *(v5 + 32) = *(v21 - 1);
        *v5 = v31;
        *(v5 + 16) = v32;
      }

      goto LABEL_19;
    }

    if (v10 != (v5 + v20))
    {
      v26 = v5 + v20 - 40;
      v27 = v10 - 40;
      v28 = *v27;
      v29 = *(v27 + 1);
      *(v26 + 32) = *(v27 + 4);
      *v26 = v28;
      *(v26 + 16) = v29;
    }

    v20 -= 40;
  }

LABEL_36:
  v33 = (v10 - v4) / 40;
  if (v21 != v4 || v21 >= &v4[40 * v33])
  {
    memmove(v21, v4, 40 * v33);
  }

  return 1;
}

uint64_t sub_1DD4BB7C8(char *a1, char *a2, float *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 4;
  v9 = (a3 - a2) / 4;
  if (v8 < v9)
  {
    sub_1DD3C1BC8(a1, (a2 - a1) / 4, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6++;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1DD3C1BC8(a2, (a3 - a2) / 4, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 1;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6--;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 4 * v17);
  }

  return 1;
}

void (*sub_1DD4BB93C(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v7;
  v8 = *v3;
  swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1DD4BBD64(v7);
  v7[9] = sub_1DD4BBA34(v7 + 4, a2, a3);
  return sub_1DD4BB9D4;
}

void sub_1DD4BB9D4(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_1DD4BBA34(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v4 = v3;
  v8 = __swift_coroFrameAllocStub(0xA0uLL);
  *a1 = v8;
  v8[16] = a3;
  v8[17] = v3;
  v8[15] = a2;
  v9 = *v3;
  v10 = sub_1DD3978DC();
  *(v8 + 152) = v11 & 1;
  if (__OFADD__(*(v9 + 16), (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDC360, &unk_1DD652300);
  if (sub_1DD640A08())
  {
    v14 = *v4;
    v15 = sub_1DD3978DC();
    if ((v13 & 1) == (v16 & 1))
    {
      v12 = v15;
      goto LABEL_5;
    }

LABEL_10:
    result = sub_1DD640D58();
    __break(1u);
    return result;
  }

LABEL_5:
  v8[18] = v12;
  if (v13)
  {
    v17 = *(*v4 + 56) + 40 * v12;
    v18 = *v17;
    v19 = *(v17 + 8);
    v20 = *(v17 + 16);
    v21 = *(v17 + 24);
    v22 = *(v17 + 32);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v22 = 0;
  }

  v8[10] = v18;
  v8[11] = v19;
  v8[12] = v20;
  v8[13] = v21;
  v8[14] = v22;
  return sub_1DD4BBBA0;
}

void sub_1DD4BBBA0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 96);
  v6 = *(*a1 + 104);
  v7 = *(*a1 + 112);
  v8 = *(*a1 + 152);
  if (a2)
  {
    if (v3)
    {
      v9 = *(v2 + 144);
      v10 = **(v2 + 136);
      if ((v8 & 1) == 0)
      {
        v11 = *(v2 + 120);
        v12 = *(v2 + 128);
        *v2 = v3;
        *(v2 + 8) = v4;
        *(v2 + 16) = v5;
        *(v2 + 24) = v6;
        *(v2 + 32) = v7;
        v13 = v12;
        v14 = v2;
LABEL_13:
        sub_1DD40058C(v9, v11, v13, v14, v10);

        goto LABEL_14;
      }

      goto LABEL_7;
    }

    if (*(*a1 + 152))
    {
      v16 = *(*a1 + 104);
      sub_1DD406F20(*(**(v2 + 136) + 48) + 16 * *(v2 + 144));
      sub_1DD640A28();
    }
  }

  else
  {
    if (v3)
    {
      v9 = *(v2 + 144);
      v10 = **(v2 + 136);
      if ((v8 & 1) == 0)
      {
        v11 = *(v2 + 120);
        v18 = *(v2 + 128);
        *(v2 + 40) = v3;
        *(v2 + 48) = v4;
        *(v2 + 56) = v5;
        *(v2 + 64) = v6;
        *(v2 + 72) = v7;
        v14 = v2 + 40;
        v13 = v18;
        goto LABEL_13;
      }

LABEL_7:
      v15 = *(v10 + 56) + 40 * v9;
      *v15 = v3;
      *(v15 + 8) = v4;
      *(v15 + 16) = v5;
      *(v15 + 24) = v6;
      *(v15 + 32) = v7;
      goto LABEL_14;
    }

    if (*(*a1 + 152))
    {
      v17 = *(*a1 + 104);
      sub_1DD406F20(*(**(v2 + 136) + 48) + 16 * *(v2 + 144));
      sub_1DD640A28();
    }
  }

LABEL_14:
  v19 = *(v2 + 80);
  v20 = *(v2 + 88);
  v21 = *(v2 + 96);
  v22 = *(v2 + 104);
  v23 = *(v2 + 112);
  sub_1DD4BBE0C(v3);
  sub_1DD4BBD98(v19);

  free(v2);
}

uint64_t (*sub_1DD4BBD64(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_1DD4BBD8C;
}

uint64_t sub_1DD4BBD98(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

void *__swift_coroFrameAllocStub(size_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    return swift_coroFrameAlloc();
  }

  return malloc(a1);
}

uint64_t sub_1DD4BBE0C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1DD4BBE54(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1DD4BBE94(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD4BBEF4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1DD4BBF34(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

unint64_t sub_1DD4BBF8C()
{
  result = qword_1ECCDD8D0;
  if (!qword_1ECCDD8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD8D0);
  }

  return result;
}

uint64_t sub_1DD4BC018(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LearnedDisambiguation();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD4BC07C(uint64_t a1)
{
  v2 = type metadata accessor for LearnedDisambiguation();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DD4BC0D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_BYTE *storeEnumTagSinglePayload for VectorDbPayload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DD4BC220()
{
  result = qword_1ECCDD8D8;
  if (!qword_1ECCDD8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD8D8);
  }

  return result;
}

unint64_t sub_1DD4BC278()
{
  result = qword_1ECCDD8E0;
  if (!qword_1ECCDD8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD8E0);
  }

  return result;
}

unint64_t sub_1DD4BC2D0()
{
  result = qword_1ECCDD8E8;
  if (!qword_1ECCDD8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDD8E8);
  }

  return result;
}

void *sub_1DD4BC37C(unint64_t a1, char a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E69CEC48]) init];
  v5 = v4;
  if (a1 != 2)
  {
    [v4 setIsAsrE3Invoked_];
  }

  if ((a2 & 1) == 0)
  {
    [v5 setNumEuclidCandidates_];
  }

  return v5;
}

id sub_1DD4BC400()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBAC8, &qword_1DD643E60);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v65 - v4;
  v6 = sub_1DD63D0F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v65 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v65 - v15;
  v17 = [objc_allocWithZone(MEMORY[0x1E69CEC38]) init];
  sub_1DD3BB660(v1, v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1DD3C34AC(v5);
  }

  else
  {
    (*(v7 + 32))(v16, v5, v6);
    if (v17)
    {
      sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
      (*(v7 + 16))(v14, v16, v6);
      v18 = v17;
      v19 = sub_1DD5A5500(v14);
      [v18 setTemplateId_];
    }

    (*(v7 + 8))(v16, v6);
  }

  v20 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v21 = *(v1 + *(type metadata accessor for InferenceEuclidDebugMetrics(0) + 20));
    v22 = *(v21 + 16);
    if (v22)
    {
      v65 = v17;
      v66 = v1;
      v73 = v20;
      v23 = v17;
      sub_1DD640988();
      v24 = sub_1DD39638C(0, &qword_1EE1638C0, 0x1E69CF638);
      v26 = *(v7 + 16);
      v25 = v7 + 16;
      v68 = v26;
      v69 = v24;
      v27 = (v21 + ((*(v25 + 64) + 32) & ~*(v25 + 64)));
      v67 = *(v25 + 56);
      do
      {
        v28 = v68;
        v68(v14, v27, v6);
        v28(v11, v14, v6);
        sub_1DD5A5500(v11);
        (*(v25 - 8))(v14, v6);
        sub_1DD640958();
        v29 = *(v73 + 16);
        sub_1DD640998();
        sub_1DD6409A8();
        sub_1DD640968();
        v27 += v67;
        --v22;
      }

      while (v22);
      v30 = v73;
      v17 = v65;
      v1 = v66;
      v20 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v31 = v17;
      v30 = MEMORY[0x1E69E7CC0];
    }

    sub_1DD4BCBF0(v30, v17, &qword_1EE1638C0, 0x1E69CF638, &selRef_setMatchedTemplateIds_);
  }

  v32 = type metadata accessor for InferenceEuclidDebugMetrics(0);
  v33 = v32;
  if (v17)
  {
    v34 = v1 + *(v32 + 24);
    if ((*(v34 + 29) & 1) == 0)
    {
      v35 = *(v34 + 24);
      v36 = *(v34 + 28);
      v38 = *(v34 + 8);
      v37 = *(v34 + 16);
      v39 = *v34;
      v40 = v17;
      LOBYTE(v73) = BYTE4(v39) & 1;
      v72 = BYTE4(v38) & 1;
      v71 = BYTE4(v37) & 1;
      v70 = v36 & 1;
      v41 = sub_1DD4BCA34();
      [v40 setEuclidScoreStatistics_];
    }
  }

  if (v17)
  {
    v42 = v1 + v33[7];
    if (*(v42 + 8) != 1)
    {
      v43 = *v42;
      v44 = *(v42 + 24);
      v45 = *(v42 + 28);
      v46 = *(v42 + 16);
      v47 = v17;
      LOBYTE(v73) = BYTE4(v46) & 1;
      v72 = v45 & 1;
      v48 = sub_1DD4BCAF4();
      [v47 setEuclidTrialParameters_];
    }
  }

  v49 = *(v1 + v33[8]);
  v50 = *(v49 + 16);
  if (v50)
  {
    v51 = (v49 + 32);
    do
    {
      if (v17)
      {
        v52 = *v51 == 1;
        if (*v51 == 2)
        {
          v52 = 2;
        }

        if (*v51 == 32)
        {
          v53 = 3;
        }

        else
        {
          v53 = v52;
        }

        [v17 addEuclidEntityTypeMatched_];
      }

      ++v51;
      --v50;
    }

    while (v50);
  }

  v54 = *(v1 + v33[9]);
  if (v54 != 2)
  {
    [v17 setIsLmePresent_];
  }

  if (v17)
  {
    v55 = *(v1 + v33[10]);
    v56 = *(v55 + 16);
    if (v56)
    {
      v73 = v20;
      v57 = v17;
      sub_1DD640988();
      v58 = (v55 + 32);
      do
      {
        v59 = *v58++;
        [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_];
        sub_1DD640958();
        v60 = *(v73 + 16);
        sub_1DD640998();
        sub_1DD6409A8();
        sub_1DD640968();
        --v56;
      }

      while (v56);
      v61 = v73;
    }

    else
    {
      v62 = v17;
      v61 = MEMORY[0x1E69E7CC0];
    }

    sub_1DD4BCBF0(v61, v17, &qword_1EE163880, 0x1E696AD98, &selRef_setTokenWiseAsrConfidences_);
  }

  v63 = (v1 + v33[11]);
  if ((v63[1] & 1) == 0)
  {
    [v17 setNumRowsVectorDb_];
  }

  return v17;
}

void *sub_1DD4BCA34()
{
  OUTLINED_FUNCTION_0_80();
  v4 = [objc_allocWithZone(MEMORY[0x1E69CEC40]) init];
  v6 = v4;
  if ((v3 & 0x100000000) != 0)
  {
    if ((v2 & 0x100000000) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    LODWORD(v5) = v3;
    [v4 setMinScore_];
    if ((v2 & 0x100000000) != 0)
    {
LABEL_3:
      if ((v1 & 0x100000000) != 0)
      {
        goto LABEL_4;
      }

LABEL_9:
      LODWORD(v5) = v1;
      [v6 setMedianScore_];
      if ((v0 & 0x100000000) != 0)
      {
        return v6;
      }

      goto LABEL_5;
    }
  }

  LODWORD(v5) = v2;
  [v6 setMaxScore_];
  if ((v1 & 0x100000000) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v0 & 0x100000000) == 0)
  {
LABEL_5:
    LODWORD(v5) = v0;
    [v6 setMeanScore_];
  }

  return v6;
}

void *sub_1DD4BCAF4()
{
  OUTLINED_FUNCTION_0_80();
  v4 = [objc_allocWithZone(MEMORY[0x1E69CEC50]) init];
  v6 = v4;
  if (v2 && v4)
  {
    v7 = v4;
    sub_1DD4BCB98(v3, v2, v7);
  }

  if ((v1 & 0x100000000) == 0)
  {
    LODWORD(v5) = v1;
    [v6 setEuclidScoreThreshold_];
  }

  if ((v0 & 0x100000000) == 0)
  {
    LODWORD(v5) = v0;
    [v6 setEuclidAsrConfidenceThreshold_];
  }

  return v6;
}

void sub_1DD4BCB98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1DD63FDA8();
  [a3 setEuclidModelVersion_];
}

void sub_1DD4BCBF0(uint64_t a1, void *a2, unint64_t *a3, uint64_t *a4, SEL *a5)
{
  sub_1DD39638C(0, a3, a4);
  v7 = sub_1DD6400F8();

  [a2 *a5];
}

void sub_1DD4BCCAC()
{
  sub_1DD4BCED0(319, &qword_1EE165CC0, MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1DD4BCED0(319, &qword_1EE163950, MEMORY[0x1E69E62F8]);
    if (v1 <= 0x3F)
    {
      sub_1DD4BCF30(319, &qword_1ECCDD900, &type metadata for EuclidScoreStatistics, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        sub_1DD4BCF30(319, &qword_1ECCDD908, &type metadata for EuclidTrialParameters, MEMORY[0x1E69E6720]);
        if (v3 <= 0x3F)
        {
          sub_1DD4BCF30(319, &qword_1ECCDD910, &type metadata for EuclidEntityTypeMatched, MEMORY[0x1E69E62F8]);
          if (v4 <= 0x3F)
          {
            sub_1DD4BCF30(319, &qword_1EE1638C8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
            if (v5 <= 0x3F)
            {
              sub_1DD4BCF30(319, &qword_1ECCDD918, MEMORY[0x1E69E72F0], MEMORY[0x1E69E62F8]);
              if (v6 <= 0x3F)
              {
                sub_1DD4BCF30(319, &qword_1ECCDD920, MEMORY[0x1E69E7668], MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1DD4BCED0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DD63D0F8();
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1DD4BCF30(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1DD4BCF94(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 29))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_1DD4BCFE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 29) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy29_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_1DD4BD068(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 29))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DD4BD088(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
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

  *(result + 29) = v3;
  return result;
}

uint64_t sub_1DD4BD114()
{
  result = type metadata accessor for InferenceEuclidDebugMetrics(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for InferenceEuclidServiceMetrics(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[9])
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *a1;
      if (v3 >= 2)
      {
        v2 = ((v3 + 2147483646) & 0x7FFFFFFF) - 1;
      }

      else
      {
        v2 = -2;
      }

      if (v2 < 0)
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

uint64_t storeEnumTagSinglePayload for InferenceEuclidServiceMetrics(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DD4BD26C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 57))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t sub_1DD4BD2AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DD4BD30C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if ((*a1 ^ *a2))
  {
    v2 = 0;
  }

  else
  {
    v5 = *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
    if (v5 || (sub_1DD640CD8()) && *(a1 + 3) == *(a2 + 3) && *(a1 + 4) == *(a2 + 4) && *(a1 + 5) == *(a2 + 5) && *(a1 + 6) == *(a2 + 6))
    {
      v2 = a1[56] ^ a2[56] ^ 1;
    }

    else
    {
      v2 = 0;
    }
  }

  return v2 & 1;
}