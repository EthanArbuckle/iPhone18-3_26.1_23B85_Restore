uint64_t sub_2313D382C@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  switch(result)
  {
    case -125:
    case -119:
    case -116:
    case -112:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2();
      v5 = &unk_284605620;
      goto LABEL_21;
    case -124:
    case -122:
    case -120:
    case -115:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2();
      v5 = &unk_2846055F8;
      goto LABEL_21;
    case -123:
    case -114:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2();
      v5 = &unk_284605648;
      goto LABEL_21;
    case -121:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2();
      v5 = &unk_284605670;
      goto LABEL_21;
    case -118:
    case -113:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2();
      v5 = &unk_2846056E8;
      goto LABEL_21;
    case -117:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE30, &qword_2313DC410);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_2313DB7D0;
      type metadata accessor for MusicSubscriptionFilter();
      v9 = OUTLINED_FUNCTION_51();
      *(v8 + 56) = v2;
      OUTLINED_FUNCTION_25_1();
      *(v8 + 64) = sub_2313D64E0(v10, v11);
      *(v8 + 32) = v9;
      v12 = type metadata accessor for PointOfInterestFilter();
      swift_allocObject();
      v13 = sub_2313CA690(&unk_2846056C0);
      *(v8 + 96) = v12;
      OUTLINED_FUNCTION_24_1();
      *(v8 + 104) = sub_2313D64E0(v14, v15);
      *(v8 + 72) = v13;
      v16 = sub_2313DADEC();
      OUTLINED_FUNCTION_52(v16);
      result = sub_2313DADFC();
      v17 = MEMORY[0x277D61008];
      *(a2 + 24) = v16;
      *(a2 + 32) = v17;
      *a2 = result;
      return result;
    case -111:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2();
      v5 = &unk_284605698;
      goto LABEL_21;
    case -110:
    case -109:
LABEL_13:
      *(a2 + 32) = 0;
      *a2 = 0u;
      *(a2 + 16) = 0u;
      return result;
    case -108:
      type metadata accessor for PointOfInterestFilter();
      OUTLINED_FUNCTION_20_2();
      v5 = &unk_284605710;
      goto LABEL_21;
    case -107:
      v18 = type metadata accessor for WeatherLocationEntityCurrentFilter();
      OUTLINED_FUNCTION_17_1();
      v3 = swift_allocObject();
      *(v3 + 16) = 0x746E6572727563;
      *(v3 + 24) = 0xE700000000000000;
      *(a2 + 24) = v18;
      v6 = &unk_27DD4BE40;
      v7 = type metadata accessor for WeatherLocationEntityCurrentFilter;
LABEL_8:
      result = sub_2313D64E0(v6, v7);
      *(a2 + 32) = result;
      *a2 = v3;
      return result;
    default:
      switch(result)
      {
        case '<':
          type metadata accessor for MapsCreateRoutePlanFilter();
          OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_75();
          v6 = &unk_27DD4BE58;
          v7 = type metadata accessor for MapsCreateRoutePlanFilter;
          goto LABEL_8;
        case '=':
        case '?':
        case '@':
        case 'B':
          goto LABEL_13;
        case '>':
          type metadata accessor for MapsSearchNearbyFilter();
          OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_75();
          v6 = &unk_27DD4BE50;
          v7 = type metadata accessor for MapsSearchNearbyFilter;
          goto LABEL_8;
        case 'A':
          type metadata accessor for MapsTrafficConditionFilter();
          OUTLINED_FUNCTION_51();
          OUTLINED_FUNCTION_75();
          v6 = &unk_27DD4BE48;
          v7 = type metadata accessor for MapsTrafficConditionFilter;
          goto LABEL_8;
        case 'C':
          type metadata accessor for PointOfInterestFilter();
          OUTLINED_FUNCTION_20_2();
          v5 = &unk_284605738;
          break;
        case 'D':
        case 'E':
        case 'F':
        case 'G':
        case 'H':
        case 'I':
          goto LABEL_7;
        default:
          if (result - 98 < 2)
          {
LABEL_7:
            type metadata accessor for MusicSubscriptionFilter();
            OUTLINED_FUNCTION_51();
            OUTLINED_FUNCTION_75();
            OUTLINED_FUNCTION_25_1();
            goto LABEL_8;
          }

          if (result != 41)
          {
            goto LABEL_13;
          }

          type metadata accessor for PointOfInterestFilter();
          OUTLINED_FUNCTION_20_2();
          v5 = &unk_284605760;
          break;
      }

LABEL_21:
      v19 = sub_2313CA690(v5);
      *(a2 + 24) = v3;
      OUTLINED_FUNCTION_24_1();
      result = sub_2313D64E0(v20, v21);
      *(a2 + 32) = result;
      *a2 = v19;
      return result;
  }
}

void sub_2313D3C64(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BDD8, &qword_2313DC390);
  v4 = swift_allocObject();
  *a2 = v4;
  sub_2313C3BC0(a1, v4 + 16);
}

double sub_2313D3CC4@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_2313D5E90(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_2313BEB24(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_2313D3D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_2313D5E90(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = (*(a3 + 56) + 16 * v4);
  v7 = *v6;
  v8 = v6[1];

  return v7;
}

uint64_t sub_2313D3D80()
{
  v0 = sub_2313DAD8C();
  v4[3] = v0;
  v4[4] = sub_2313D64E0(&qword_27DD4BF00, MEMORY[0x277D60FE0]);
  boxed_opaque_existential_2Tm = __swift_allocate_boxed_opaque_existential_2Tm(v4);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_2Tm, *MEMORY[0x277D60FD0], v0);
  v2 = sub_2313DAC0C();
  OUTLINED_FUNCTION_52(v2);
  result = sub_2313DABFC();
  qword_27DD4C208 = result;
  return result;
}

BOOL sub_2313D3E64()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_2313DAB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2313CC3B4(v3, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 dateSearchType];

        (*(v5 + 8))(v11, v4);
        return v14 == 1;
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      v16 = *(v5 + 8);
      v16(v11, v4);
      v16(v9, v4);
    }
  }

  return 0;
}

BOOL sub_2313D40EC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_2313DAB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2313CC3B4(v3, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 itemType];

        (*(v5 + 8))(v11, v4);
        return v14 == 2;
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      v16 = *(v5 + 8);
      v16(v11, v4);
      v16(v9, v4);
    }
  }

  return 0;
}

uint64_t sub_2313D4374()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v18 - v2;
  v4 = sub_2313DAB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2313CC3B4(v3, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        if ([v13 itemType] == 3)
        {
          v15 = [v14 taskPriority];

          (*(v5 + 8))(v11, v4);
          if (v15 == 2)
          {
            return 1;
          }
        }

        else
        {
          (*(v5 + 8))(v11, v4);
        }
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }
    }

    else
    {
      v17 = *(v5 + 8);
      v17(v11, v4);
      v17(v9, v4);
    }
  }

  return 0;
}

uint64_t sub_2313D463C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_2313DAB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2313CC3B4(v3, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 attachments];
        if (!v14)
        {

          (*(v5 + 8))(v11, v4);
          return 1;
        }
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      v15 = *(v5 + 8);
      v15(v11, v4);
      v15(v9, v4);
    }
  }

  return 0;
}

BOOL sub_2313D48CC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v4 = sub_2313DAB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = v17 - v10;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2313CC3B4(v3, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v17[1] = v13;
        sub_2313D643C(0, &qword_27DD4BED0, 0x277CD3EC0);
        v14 = sub_2313DAA7C();
        (*(v5 + 8))(v11, v4);

        return v14 == 5;
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      v16 = *(v5 + 8);
      v16(v11, v4);
      v16(v9, v4);
    }
  }

  return 0;
}

uint64_t sub_2313D4B78()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_2313DAB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2313CC3B4(v3, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = v13;
        v15 = [v13 temporalEventTrigger];
        if (v15 || (v15 = [v14 spatialEventTrigger]) != 0)
        {
          v16 = v15;
        }

        else
        {
          v19 = [v14 targetTaskList];
          if (!v19)
          {
            (*(v5 + 8))(v11, v4);

            return 0;
          }

          v16 = v19;
          v20 = sub_2313D635C([v19 title]);
          if (v21)
          {
            if (v20 == 0xD000000000000012 && v21 == 0x80000002313DE540)
            {

              (*(v5 + 8))(v11, v4);
            }

            else
            {
              v23 = sub_2313DB39C();

              (*(v5 + 8))(v11, v4);
              if ((v23 & 1) == 0)
              {
                return 0;
              }
            }

            return 1;
          }
        }
      }

      (*(v5 + 8))(v11, v4);
    }

    else
    {
      v17 = *(v5 + 8);
      v17(v11, v4);
      v17(v9, v4);
    }
  }

  return 0;
}

uint64_t sub_2313D4F0C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v17 - v2;
  v4 = sub_2313DAB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v17 - v10;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2313CC3B4(v3, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v14 = [v13 temporalEventTrigger];

        (*(v5 + 8))(v11, v4);
        if (v14)
        {

          return 1;
        }
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }
    }

    else
    {
      v16 = *(v5 + 8);
      v16(v11, v4);
      v16(v9, v4);
    }
  }

  return 0;
}

uint64_t sub_2313D51A0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v24 - v2;
  v4 = sub_2313DAB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v24 - v10;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) != 1)
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) != *MEMORY[0x277D60918])
    {
      v17 = *(v5 + 8);
      v17(v11, v4);
      v17(v9, v4);
      return 0;
    }

    (*(v5 + 96))(v9, v4);
    v12 = *v9;
    objc_opt_self();
    v13 = swift_dynamicCastObjCClass();
    if (!v13)
    {
      goto LABEL_9;
    }

    v14 = v13;
    v15 = [v13 temporalEventTrigger];
    if (v15 || (v15 = [v14 spatialEventTrigger]) != 0)
    {
      v16 = v15;
LABEL_8:

LABEL_9:
      (*(v5 + 8))(v11, v4);
      return 0;
    }

    v19 = [v14 targetTaskList];
    if (!v19)
    {
      (*(v5 + 8))(v11, v4);

      return 0;
    }

    v16 = v19;
    v20 = sub_2313D635C([v19 title]);
    if (v21)
    {
      if (v20 == 0xD000000000000012 && v21 == 0x80000002313DE540)
      {

        goto LABEL_8;
      }

      v23 = sub_2313DB39C();

      (*(v5 + 8))(v11, v4);
      if (v23)
      {
        return 0;
      }
    }

    else
    {

      (*(v5 + 8))(v11, v4);
    }

    return 1;
  }

  sub_2313CC3B4(v3, &qword_27DD4BEE0, &qword_2313DC460);
  return 0;
}

void sub_2313D5538()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v22 - v2;
  v4 = sub_2313DAB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2313CC3B4(v3, &qword_27DD4BEE0, &qword_2313DC460);
  }

  else
  {
    (*(v5 + 32))(v11, v3, v4);
    (*(v5 + 16))(v9, v11, v4);
    if ((*(v5 + 88))(v9, v4) == *MEMORY[0x277D60918])
    {
      (*(v5 + 96))(v9, v4);
      v12 = *v9;
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        v23 = v12;
        v14 = sub_2313D63CC(v13);
        if (v14)
        {
          v15 = v14;
        }

        else
        {
          v15 = MEMORY[0x277D84F90];
        }

        v16 = sub_2313D5E6C(v15);
        v17 = 0;
        while (1)
        {
          if (v16 == v17)
          {
LABEL_15:
            (*(v5 + 8))(v11, v4);

            return;
          }

          if ((v15 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x23192C420](v17, v15);
          }

          else
          {
            if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_21;
            }

            v18 = *(v15 + 8 * v17 + 32);
          }

          v19 = v18;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          v20 = [v18 currentLocation];

          ++v17;
          if (v20)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_21:
        __break(1u);
      }

      else
      {

        (*(v5 + 8))(v11, v4);
      }
    }

    else
    {
      v21 = *(v5 + 8);
      v21(v11, v4);
      v21(v9, v4);
    }
  }
}

uint64_t sub_2313D5894()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = sub_2313DAB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2313CC3B4(v3, &qword_27DD4BEE0, &qword_2313DC460);
LABEL_13:
    v17 = 0;
    return v17 & 1;
  }

  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v9, v11, v4);
  if ((*(v5 + 88))(v9, v4) != *MEMORY[0x277D60918])
  {
    v18 = *(v5 + 8);
    v18(v11, v4);
    v18(v9, v4);
    goto LABEL_13;
  }

  (*(v5 + 96))(v9, v4);
  v12 = *v9;
  sub_2313DB07C();
  v13 = swift_dynamicCastClass();
  if (!v13 || (v14 = sub_2313D647C(v13), !v15))
  {

    (*(v5 + 8))(v11, v4);
    goto LABEL_13;
  }

  if (v14 == 0xD000000000000011 && v15 == 0x80000002313DE560)
  {

    (*(v5 + 8))(v11, v4);
    v17 = 1;
  }

  else
  {
    v17 = sub_2313DB39C();

    (*(v5 + 8))(v11, v4);
  }

  return v17 & 1;
}

uint64_t sub_2313D5B80()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = &v20 - v2;
  v4 = sub_2313DAB9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = (&v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_2313CC3B4(v3, &qword_27DD4BEE0, &qword_2313DC460);
LABEL_13:
    v17 = 0;
    return v17 & 1;
  }

  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v9, v11, v4);
  if ((*(v5 + 88))(v9, v4) != *MEMORY[0x277D60918])
  {
    v18 = *(v5 + 8);
    v18(v11, v4);
    v18(v9, v4);
    goto LABEL_13;
  }

  (*(v5 + 96))(v9, v4);
  v12 = *v9;
  sub_2313DB07C();
  v13 = swift_dynamicCastClass();
  if (!v13 || (v14 = sub_2313D647C(v13), !v15))
  {

    (*(v5 + 8))(v11, v4);
    goto LABEL_13;
  }

  if (v14 == 0xD000000000000013 && v15 == 0x80000002313DE580)
  {

    (*(v5 + 8))(v11, v4);
    v17 = 1;
  }

  else
  {
    v17 = sub_2313DB39C();

    (*(v5 + 8))(v11, v4);
  }

  return v17 & 1;
}

uint64_t sub_2313D5E6C(uint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a1 >= 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x2821FD7B8](a1);
}

unint64_t sub_2313D5E90(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_2313DB3BC();
  sub_2313DB23C();
  v6 = sub_2313DB3CC();

  return sub_2313D5F08(a1, a2, v6);
}

unint64_t sub_2313D5F08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_2313DB39C() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_2313D5FBC()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_37_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_2(v1);

  return sub_2313C51B8(v3, v4, v5, v6);
}

unint64_t sub_2313D6048()
{
  result = qword_2814B1880;
  if (!qword_2814B1880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD4BE70, &qword_2313DC430);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814B1880);
  }

  return result;
}

uint64_t sub_2313D60AC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2313D6110()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_37_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_9_2(v1);

  return sub_2313C51B8(v3, v4, v5, v6);
}

uint64_t sub_2313D619C()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2313D62F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BaseModelSignals.SignalWithFilter();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2313D635C(void *a1)
{
  v2 = [a1 vocabularyIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_2313DB21C();

  return v3;
}

uint64_t sub_2313D63CC(void *a1)
{
  v1 = [a1 attachments];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_2313D643C(0, &qword_27DD4BEE8, 0x277CD4070);
  v3 = sub_2313DB2BC();

  return v3;
}

uint64_t sub_2313D643C(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_2313D647C(void *a1)
{
  v1 = [a1 domainUseCase];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_2313DB21C();

  return v3;
}

uint64_t sub_2313D64E0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t get_enum_tag_for_layout_string_18SiriSuggestionsKit8Resolver_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2313D6554(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_2313D6594(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_3()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_10_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_11_2()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_12_1()
{

  return sub_2313DAD4C();
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return sub_2313DB39C();
}

size_t OUTLINED_FUNCTION_16_1@<X0>(unint64_t a1@<X8>)
{
  *(v3 - 144) = v2;

  return sub_2313C4540(a1 > 1, v1, 1);
}

uint64_t OUTLINED_FUNCTION_20_2()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_2()
{

  return swift_allocObject();
}

size_t OUTLINED_FUNCTION_22_1()
{
  v2 = *(v0 + 16) + 1;

  return sub_2313C4540(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_23_2()
{
  result = __swift_destroy_boxed_opaque_existential_1Tm((v1 - 192));
  v3 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_28_1(uint64_t result)
{
  v1[12] = v2;
  v1[13] = v3;
  v1[9] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_29_1(uint64_t result)
{
  v1[7] = result;
  v1[8] = v3;
  v1[4] = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_40()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_41()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_42()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_44()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_45()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_46()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_47()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_48(uint64_t result)
{
  *(result + 16) = v3;
  *(result + 24) = v4;
  *(v1 + 72) = v2;
  return result;
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_53()
{

  return sub_2313DAD4C();
}

uint64_t OUTLINED_FUNCTION_54()
{

  return sub_2313D60AC(v0 - 192, v0 - 128);
}

uint64_t OUTLINED_FUNCTION_55()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_56()
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_2313C055C(a1, a2, v6, v7, a5, a6);
}

uint64_t *OUTLINED_FUNCTION_58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[3] = a1;
  v2[4] = a2;

  return __swift_allocate_boxed_opaque_existential_2Tm(v2);
}

uint64_t OUTLINED_FUNCTION_62(uint64_t result)
{
  *(result + 16) = v4;
  *(result + 24) = v1;
  *(v2 + 72) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_65(uint64_t result)
{
  *(v2 - 104) = *(result + 16);
  *(v2 - 96) = result;
  *(v2 - 128) = v1 + 32;
  return result;
}

size_t OUTLINED_FUNCTION_68()
{
  v2 = *(v0 + 16) + 1;

  return sub_2313C4540(0, v2, 1);
}

uint64_t OUTLINED_FUNCTION_69()
{
  *(v1 - 112) = v0;

  return sub_2313DA9AC();
}

uint64_t OUTLINED_FUNCTION_81()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_82()
{

  return sub_2313DA9AC();
}

uint64_t OUTLINED_FUNCTION_83()
{

  return sub_2313DA9AC();
}

uint64_t static DeviceExpertOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)()
{
  OUTLINED_FUNCTION_8();
  v1[8] = v2;
  v1[9] = v0;
  v1[7] = v3;
  v4 = sub_2313DAC2C();
  v1[10] = v4;
  v5 = *(v4 - 8);
  v1[11] = v5;
  v6 = *(v5 + 64) + 15;
  v1[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2313D6DCC, 0, 0);
}

uint64_t sub_2313D6DCC()
{
  OUTLINED_FUNCTION_26_1();
  v1 = v0[7];
  v2 = sub_2313DABBC();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = sub_2313DABCC();
  v0[5] = v2;
  v0[6] = sub_2313DA8A4(&qword_2814B1878, 255, MEMORY[0x277D60A20]);
  v0[2] = v5;
  v10 = (v1 + *v1);
  v6 = v1[1];
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_2313D6F48;
  v8 = v0[8];

  return v10(v0 + 2);
}

uint64_t sub_2313D6F48()
{
  OUTLINED_FUNCTION_8();
  v1 = *v0;
  v2 = *(*v0 + 104);
  v5 = *v0;
  *(v1 + 112) = v3;

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));

  return MEMORY[0x2822009F8](sub_2313D704C, 0, 0);
}

uint64_t sub_2313D704C()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v5 = v0[9];
  v4 = v0[10];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_2313D8804;
  *(v7 + 24) = v6;
  *v3 = &unk_2313DC510;
  v3[1] = v7;
  (*(v2 + 104))(v3, *MEMORY[0x277D60A90], v4);
  *(swift_task_alloc() + 16) = v5;
  sub_2313DAF1C();

  (*(v2 + 8))(v3, v4);
  v8 = 0;
  while (2)
  {
    v9 = byte_284605788[v8++ + 32];
    v10 = 0xEC000000696A6F6DLL;
    v11 = 0x654D65676E616863;
    switch(v9)
    {
      case 1:
        v11 = 0xD000000000000012;
        v10 = 0x80000002313DE6B0;
        break;
      case 2:
        v11 = 0x746F486F54776F68;
        v12 = 1953460339;
        goto LABEL_7;
      case 3:
        v11 = 0x6F54726569736165;
        v12 = 1684104530;
LABEL_7:
        v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
        break;
      case 4:
        v11 = 0xD00000000000001BLL;
        v10 = 0x80000002313DE5A0;
        break;
      default:
        break;
    }

    MEMORY[0x23192C330](v11, v10);

    switch(v9)
    {
      case 0:
      case 1:
      case 2:
      case 3:
      case 4:
        v13 = v0[14];
        v14 = v0[9];
        v15 = swift_task_alloc();
        *(v15 + 16) = v9;
        *(v15 + 24) = v14;
        sub_2313DAF0C();

        if (v8 != 5)
        {
          continue;
        }

        v16 = v0[14];
        v17 = v0[12];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC20, &unk_2313DB7F8);
        v18 = swift_allocObject();
        *(v18 + 16) = xmmword_2313DB7C0;
        sub_2313DAF2C();

        v19 = v0[1];

        return v19(v18);
      default:
        JUMPOUT(0);
    }
  }
}

uint64_t sub_2313D7450@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v50 = a2;
  v3 = sub_2313DB10C();
  v4 = OUTLINED_FUNCTION_3_1(v3);
  v47 = v5;
  v48 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_0();
  v10 = v9 - v8;
  v49 = sub_2313DAA6C();
  v11 = OUTLINED_FUNCTION_3_1(v49);
  v13 = v12;
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_9_0();
  v18 = v17 - v16;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BF18, &qword_2313DC6F8);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v46 - v21;
  v23 = sub_2313DAA1C();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_9_0();
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  v26 = sub_2313DACCC();
  v27 = OUTLINED_FUNCTION_7_2();
  sub_2313D3CC4(v27, v28, v26, v29);

  if (v53)
  {
    if (swift_dynamicCast())
    {
      v48 = "suggestionIdPrefix";
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BF20, qword_2313DC700);
      v30 = *(sub_2313DAA5C() - 8);
      v31 = *(v30 + 72);
      v32 = (*(v30 + 80) + 32) & ~*(v30 + 80);
      *(swift_allocObject() + 16) = xmmword_2313DB7C0;
      sub_2313DAA0C();
      __swift_storeEnumTagSinglePayload(v22, 1, 1, v23);
      OUTLINED_FUNCTION_7_2();
      sub_2313DAA4C();
      (*(v13 + 104))(v18, *MEMORY[0x277D5BF60], v49);
      v33 = sub_2313DAA3C();
      v34 = v50;
      v50[3] = v33;
      __swift_allocate_boxed_opaque_existential_2Tm(v34);
      OUTLINED_FUNCTION_7_2();
      return sub_2313DAA2C();
    }
  }

  else
  {
    sub_2313DA844(v52, &qword_27DD4BDD8, &qword_2313DC390);
  }

  sub_2313DAFBC();
  sub_2313D60AC(a1, v52);
  v35 = sub_2313DB0FC();
  v36 = sub_2313DB30C();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v51 = v38;
    *v37 = 136315138;
    v46 = v18;
    __swift_project_boxed_opaque_existential_1Tm(v52, v53);
    sub_2313DACCC();
    v39 = sub_2313DB1FC();
    v41 = v40;

    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    v42 = sub_2313BE1B0(v39, v41, &v51);
    v18 = v46;

    *(v37 + 4) = v42;
    _os_log_impl(&dword_2313B9000, v35, v36, "Unable to find suggestionPhrase in dialog parameter %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v38);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();

    (*(v47 + 8))(v10, v48);
  }

  else
  {

    (*(v47 + 8))(v10, v48);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
  }

  (*(v13 + 104))(v18, *MEMORY[0x277D5BF60], v49);
  v43 = sub_2313DAA3C();
  v44 = v50;
  v50[3] = v43;
  __swift_allocate_boxed_opaque_existential_2Tm(v44);
  OUTLINED_FUNCTION_7_2();
  return sub_2313DAA2C();
}

uint64_t sub_2313D798C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  a3(a2);
  v4 = *(v3 + 8);

  return v4();
}

uint64_t sub_2313D79FC(uint64_t a1)
{
  v2 = sub_2313DAB4C();
  v54 = *(v2 - 8);
  v55 = v2;
  v3 = *(v54 + 64);
  MEMORY[0x28223BE20](v2);
  v53 = (v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE60, &qword_2313DC418);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = v46 - v7;
  v8 = *(a1 + 40);
  v51 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1Tm(a1, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
  v9 = sub_2313DAC4C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_2313DB7C0;
  (*(v10 + 104))(v13 + v12, *MEMORY[0x277D60B78], v9);
  v72 = v51;
  v73 = v8;
  __swift_allocate_boxed_opaque_existential_2Tm(v71);
  sub_2313DAEBC();

  v14 = v73;
  v51 = v72;
  __swift_project_boxed_opaque_existential_1Tm(v71, v72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEF0, &qword_2313DC468);
  v15 = sub_2313DABAC();
  v16 = *(v15 - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_2313DC3E0;
  v20 = v19 + v18;
  v21 = *(v16 + 104);
  v21(v20, *MEMORY[0x277D609A8], v15);
  v21(v20 + v17, *MEMORY[0x277D60998], v15);
  v21(v20 + 2 * v17, *MEMORY[0x277D60988], v15);
  v69 = v51;
  v70 = v14;
  __swift_allocate_boxed_opaque_existential_2Tm(v68);
  sub_2313DAE8C();

  v22 = v70;
  v51 = v69;
  __swift_project_boxed_opaque_existential_1Tm(v68, v69);
  v23 = type metadata accessor for DeviceExpertAssetProvider();
  v24 = swift_allocObject();
  *&v63 = v23;
  *(&v63 + 1) = sub_2313DA8A4(qword_2814B1790, v25, type metadata accessor for DeviceExpertAssetProvider);
  v62[0] = v24;
  v66 = v51;
  v67 = v22;
  __swift_allocate_boxed_opaque_existential_2Tm(v65);
  sub_2313DAE7C();
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  v26 = v67;
  v47 = v66;
  v50 = __swift_project_boxed_opaque_existential_1Tm(v65, v66);
  v27 = type metadata accessor for DoNotResolveResolver();
  v28 = swift_allocObject();
  *(v28 + 16) = 0xD000000000000010;
  *(v28 + 24) = 0x80000002313DE7C0;
  *&v60 = v27;
  *&v51 = sub_2313DA8A4(&qword_2814B1840, 255, type metadata accessor for DoNotResolveResolver);
  *(&v60 + 1) = v51;
  v59[0] = v28;
  sub_2313DAE2C();
  v29 = swift_allocObject();
  *(v29 + 16) = 0xD000000000000010;
  *(v29 + 24) = 0x80000002313DE7C0;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE70, &qword_2313DC430);
  *&v63 = v49;
  v48 = sub_2313D6048();
  *(&v63 + 1) = v48;
  __swift_allocate_boxed_opaque_existential_2Tm(v62);
  v46[1] = sub_2313DAB9C();
  sub_2313DAC5C();
  sub_2313DAB8C();
  v30 = sub_2313DAD5C();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  sub_2313DAD4C();
  v63 = v47;
  v64 = v26;
  __swift_allocate_boxed_opaque_existential_2Tm(v62);
  sub_2313DAEDC();

  sub_2313DA844(v59, &qword_27DD4BF08, &qword_2313DC6D8);
  v33 = v64;
  v47 = v63;
  v50 = __swift_project_boxed_opaque_existential_1Tm(v62, v63);
  v34 = swift_allocObject();
  *(v34 + 16) = 0x4965736143657375;
  *(v34 + 24) = 0xE900000000000064;
  v57 = v27;
  v58 = v51;
  v56[0] = v34;
  sub_2313DAE3C();
  v35 = swift_allocObject();
  *(v35 + 16) = 0x4965736143657375;
  *(v35 + 24) = 0xE900000000000064;
  *&v60 = v49;
  *(&v60 + 1) = v48;
  __swift_allocate_boxed_opaque_existential_2Tm(v59);
  sub_2313DAB8C();
  v36 = *(v30 + 48);
  v37 = *(v30 + 52);
  swift_allocObject();
  sub_2313DAD4C();
  v60 = v47;
  v61 = v33;
  __swift_allocate_boxed_opaque_existential_2Tm(v59);
  sub_2313DAEDC();

  sub_2313DA844(v56, &qword_27DD4BF08, &qword_2313DC6D8);
  v38 = v60;
  v39 = __swift_project_boxed_opaque_existential_1Tm(v59, v60);
  v40 = *(v38 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v39);
  v43 = v46 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v53;
  *v53 = 0x7845656369766564;
  v44[1] = 0xEC00000074726570;
  (*(v54 + 104))(v44, *MEMORY[0x277D60880], v55);
  v57 = sub_2313DAB6C();
  v58 = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_2Tm(v56);
  sub_2313DAB5C();
  sub_2313DAE5C();
  (*(v40 + 8))(v43, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v56);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v65);
  __swift_destroy_boxed_opaque_existential_1Tm(v68);
  return __swift_destroy_boxed_opaque_existential_1Tm(v71);
}

uint64_t sub_2313D82A0()
{
  v0 = sub_2313DAF7C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v30 - v7;
  v9 = sub_2313DAB9C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v30 - v15;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_2313DA844(v8, &qword_27DD4BEE0, &qword_2313DC460);
    return 0;
  }

  (*(v10 + 32))(v16, v8, v9);
  (*(v10 + 16))(v14, v16, v9);
  if ((*(v10 + 88))(v14, v9) != *MEMORY[0x277D60928])
  {
    v28 = *(v10 + 8);
    v28(v16, v9);
    v28(v14, v9);
    return 0;
  }

  (*(v10 + 96))(v14, v9);
  (*(v1 + 32))(v4, v14, v0);
  v17 = sub_2313DAF6C();
  v18 = sub_2313D3D28(0x4965736143657375, 0xE900000000000064, v17);
  v20 = v19;

  if (v20)
  {
    v31 = v4;
    v32 = v1;
    v21 = 0;
    v35 = 0x80000002313DE5A0;
    v33 = v0;
    v34 = 0x80000002313DE6B0;
    while (1)
    {
      v22 = &unk_284605788 + v21++;
      v23 = 0xEC000000696A6F6DLL;
      v24 = 0x654D65676E616863;
      switch(v22[32])
      {
        case 1:
          v24 = 0xD000000000000012;
          v23 = v34;
          break;
        case 2:
          v24 = 0x746F486F54776F68;
          v25 = 1953460339;
          goto LABEL_11;
        case 3:
          v24 = 0x6F54726569736165;
          v25 = 1684104530;
LABEL_11:
          v23 = v25 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          break;
        case 4:
          v24 = 0xD00000000000001BLL;
          v23 = v35;
          break;
        default:
          break;
      }

      if (v24 == v18 && v20 == v23)
      {
        break;
      }

      v27 = sub_2313DB39C();

      if (v27)
      {
        goto LABEL_23;
      }

      if (v21 == 5)
      {

        v20 = 1;
        goto LABEL_24;
      }
    }

LABEL_23:

    v20 = 0;
LABEL_24:
    (*(v32 + 8))(v31, v33);
  }

  else
  {
    (*(v1 + 8))(v4, v0);
  }

  (*(v10 + 8))(v16, v9);
  return v20;
}

unint64_t sub_2313D8740(char a1)
{
  result = 0x654D65676E616863;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x746F486F54776F68;
      break;
    case 3:
      result = 0x6F54726569736165;
      break;
    case 4:
      result = 0xD00000000000001BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_2313D881C()
{
  OUTLINED_FUNCTION_37_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v1[1] = sub_2313D88C4;
  v3 = OUTLINED_FUNCTION_1_4();

  return v4(v3);
}

uint64_t sub_2313D88C4()
{
  OUTLINED_FUNCTION_8();
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_2313D89BC(uint64_t a1, int a2)
{
  v2 = a2;
  LODWORD(v87) = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE60, &qword_2313DC418);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v85 = v68 - v6;
  v7 = sub_2313DACFC();
  v83 = *(v7 - 8);
  v84 = v7;
  v8 = *(v83 + 64);
  MEMORY[0x28223BE20](v7);
  v82 = v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC28, &qword_2313DB8E0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v81 = (v68 - v12);
  v13 = sub_2313DAB4C();
  v79 = *(v13 - 8);
  v80 = v13;
  v14 = *(v79 + 64);
  MEMORY[0x28223BE20](v13);
  v78 = (v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_2313DAE4C();
  v16 = *(v69 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v69);
  v19 = (v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = *(a1 + 40);
  v86 = *(a1 + 24);
  __swift_project_boxed_opaque_existential_1Tm(a1, v86);
  *v113 = v86;
  *&v113[16] = v20;
  __swift_allocate_boxed_opaque_existential_2Tm(v112);
  sub_2313DAE6C();
  v21 = *v113;
  v86 = *&v113[8];
  v68[1] = __swift_project_boxed_opaque_existential_1Tm(v112, *v113);
  v68[0] = sub_2313D94A8(v2);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC58, &qword_2313DB910);
  v22 = sub_2313DAC4C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 72);
  v25 = *(v23 + 80);
  v75 = ((v25 + 32) & ~v25) + 2 * v24;
  v76 = v25;
  v26 = (v25 + 32) & ~v25;
  v74 = v26;
  v71 = v24;
  v27 = swift_allocObject();
  v73 = xmmword_2313DB7D0;
  *(v27 + 16) = xmmword_2313DB7D0;
  v28 = v27 + v26;
  v72 = *MEMORY[0x277D60B78];
  v29 = *(v23 + 104);
  v29(v28);
  v70 = *MEMORY[0x277D60B98];
  v29(v28 + v24);
  *v19 = v27;
  v30 = v69;
  (*(v16 + 104))(v19, *MEMORY[0x277D61060], v69);
  *v111 = v21;
  *&v111[8] = v86;
  __swift_allocate_boxed_opaque_existential_2Tm(v110);
  sub_2313DAB2C();

  (*(v16 + 8))(v19, v30);
  v31 = *&v111[16];
  v86 = *v111;
  __swift_project_boxed_opaque_existential_1Tm(v110, *v111);
  sub_2313DAEFC();
  v108 = v86;
  v109 = v31;
  __swift_allocate_boxed_opaque_existential_2Tm(v107);
  sub_2313DAE9C();

  v32 = v109;
  v86 = v108;
  __swift_project_boxed_opaque_existential_1Tm(v107, v108);
  sub_2313D9684(v87);
  v105 = v86;
  v106 = v32;
  __swift_allocate_boxed_opaque_existential_2Tm(v104);
  sub_2313DAE8C();

  v33 = v106;
  v86 = v105;
  __swift_project_boxed_opaque_existential_1Tm(v104, v105);
  v34 = swift_allocObject();
  *(v34 + 16) = v73;
  v35 = v34 + v74;
  (v29)(v34 + v74, v72, v22);
  (v29)(v35 + v71, v70, v22);
  v102 = v86;
  v103 = v33;
  __swift_allocate_boxed_opaque_existential_2Tm(v101);
  sub_2313DAEBC();

  v36 = v103;
  v86 = v102;
  __swift_project_boxed_opaque_existential_1Tm(v101, v102);
  v38 = v78;
  v37 = v79;
  *v78 = 0x7845656369766564;
  v38[1] = 0xEC00000074726570;
  (*(v37 + 104))(v38, *MEMORY[0x277D60880], v80);
  *(swift_allocObject() + 16) = v87;
  *&v96 = sub_2313DAB6C();
  *(&v96 + 1) = MEMORY[0x277D608B0];
  __swift_allocate_boxed_opaque_existential_2Tm(v95);
  sub_2313DAB5C();
  v99 = v86;
  v100 = v36;
  __swift_allocate_boxed_opaque_existential_2Tm(v98);
  sub_2313DAE5C();
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  v39 = v100;
  v87 = v99;
  __swift_project_boxed_opaque_existential_1Tm(v98, v99);
  v96 = v87;
  v97 = v39;
  __swift_allocate_boxed_opaque_existential_2Tm(v95);
  sub_2313DAEAC();
  v40 = v97;
  v87 = v96;
  __swift_project_boxed_opaque_existential_1Tm(v95, v96);
  v42 = v82;
  v41 = v83;
  v43 = v84;
  (*(v83 + 104))(v82, *MEMORY[0x277D60E90], v84);
  v44 = sub_2313DACEC();
  v46 = v45;
  (*(v41 + 8))(v42, v43);
  v47 = v81;
  *v81 = v44;
  *(v47 + 8) = v46;
  v48 = *MEMORY[0x277D61238];
  v49 = sub_2313DAF5C();
  (*(*(v49 - 8) + 104))(v47, v48, v49);
  __swift_storeEnumTagSinglePayload(v47, 0, 1, v49);
  v50 = sub_2313DADDC();
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  swift_allocObject();
  v53 = sub_2313DADCC();
  v90 = v50;
  v91 = MEMORY[0x277D61000];
  v89[0] = v53;
  v93 = v87;
  v94 = v40;
  __swift_allocate_boxed_opaque_existential_2Tm(v92);
  sub_2313DAE7C();
  __swift_destroy_boxed_opaque_existential_1Tm(v89);
  v54 = v93;
  *&v87 = v94;
  v55 = __swift_project_boxed_opaque_existential_1Tm(v92, v93);
  v56 = *(v54 - 8);
  v57 = *(v56 + 64);
  MEMORY[0x28223BE20](v55);
  v59 = v68 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DeviceExpertUseCaseIdResolver();
  v61 = swift_allocObject();
  strcpy((v61 + 32), "deviceExpert_");
  *(v61 + 46) = -4864;
  *(v61 + 16) = 0x4965736143657375;
  *(v61 + 24) = 0xE900000000000064;
  v90 = v60;
  v91 = sub_2313DA8A4(&qword_2814B16E8, v62, type metadata accessor for DeviceExpertUseCaseIdResolver);
  v89[0] = v61;
  sub_2313DAE3C();
  v63 = swift_allocObject();
  *(v63 + 16) = 0x4965736143657375;
  *(v63 + 24) = 0xE900000000000064;
  v88[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BE70, &qword_2313DC430);
  v88[4] = sub_2313D6048();
  __swift_allocate_boxed_opaque_existential_2Tm(v88);
  sub_2313DAB9C();
  sub_2313DAC5C();
  sub_2313DAB8C();
  v64 = sub_2313DAD5C();
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  sub_2313DAD4C();
  sub_2313DAEDC();

  (*(v56 + 8))(v59, v54);
  sub_2313DA844(v89, &qword_27DD4BF08, &qword_2313DC6D8);
  __swift_destroy_boxed_opaque_existential_1Tm(v92);
  __swift_destroy_boxed_opaque_existential_1Tm(v95);
  __swift_destroy_boxed_opaque_existential_1Tm(v98);
  __swift_destroy_boxed_opaque_existential_1Tm(v101);
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  __swift_destroy_boxed_opaque_existential_1Tm(v107);
  __swift_destroy_boxed_opaque_existential_1Tm(v110);
  return __swift_destroy_boxed_opaque_existential_1Tm(v112);
}

uint64_t sub_2313D94A8(char a1)
{
  switch(a1)
  {
    case 1:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BF10, &qword_2313DC6E0);
      v1 = OUTLINED_FUNCTION_11_3();
      *(v1 + 16) = xmmword_2313DC4F0;
      if (qword_2814B1868 != -1)
      {
        swift_once();
      }

      v2 = &qword_2814B1CA8;
      break;
    case 2:
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BF10, &qword_2313DC6E0);
      v1 = OUTLINED_FUNCTION_11_3();
      *(v1 + 16) = xmmword_2313DC4F0;
      if (qword_2814B1858 != -1)
      {
        swift_once();
      }

      v2 = &qword_2814B1C98;
      break;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BF10, &qword_2313DC6E0);
      v1 = OUTLINED_FUNCTION_11_3();
      *(v1 + 16) = xmmword_2313DC4F0;
      if (qword_2814B1850 != -1)
      {
        swift_once();
      }

      v2 = &qword_2814B1C90;
      break;
    default:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BF10, &qword_2313DC6E0);
      v1 = OUTLINED_FUNCTION_11_3();
      *(v1 + 16) = xmmword_2313DC4F0;
      if (qword_2814B1860 != -1)
      {
        swift_once();
      }

      v2 = &qword_2814B1CA0;
      break;
  }

  *(v1 + 32) = *v2;

  return v1;
}

uint64_t sub_2313D9684(char a1)
{
  if (((1 << a1) & 0x16) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEF0, &qword_2313DC468);
    v1 = sub_2313DABAC();
    OUTLINED_FUNCTION_3_1(v1);
    v3 = v2;
    v5 = *(v4 + 72);
    v6 = (*(v2 + 80) + 32) & ~*(v2 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2313DB7D0;
    v8 = v7 + v6;
    v9 = *(v3 + 104);
    v9(v8, *MEMORY[0x277D609A8], v1);
    v10 = *MEMORY[0x277D60998];
    v11 = v8 + v5;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEF0, &qword_2313DC468);
    v1 = sub_2313DABAC();
    OUTLINED_FUNCTION_3_1(v1);
    v13 = v12;
    v15 = *(v14 + 72);
    v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_2313DC3E0;
    v17 = v7 + v16;
    v9 = *(v13 + 104);
    v9(v17, *MEMORY[0x277D609A8], v1);
    v9(v17 + v15, *MEMORY[0x277D60998], v1);
    v11 = v17 + 2 * v15;
    v10 = *MEMORY[0x277D60988];
  }

  v9(v11, v10, v1);
  return v7;
}

uint64_t sub_2313D987C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2313CCD9C;

  return static DeviceExpertOwnerDefinitionFactory.createOwnerDefinitions(builderFactory:)();
}

uint64_t sub_2313D995C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v69 = a2;
  v3 = sub_2313DACFC();
  v4 = OUTLINED_FUNCTION_3_1(v3);
  v64 = v5;
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_9_0();
  v63 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BC28, &qword_2313DB8E0);
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x28223BE20](v10 - 8);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = (&v58 - v16);
  MEMORY[0x28223BE20](v15);
  v67 = &v58 - v18;
  v19 = sub_2313DAF5C();
  v20 = OUTLINED_FUNCTION_3_1(v19);
  v68 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_9_0();
  v62 = v25 - v24;
  v26 = sub_2313DB10C();
  v27 = OUTLINED_FUNCTION_3_1(v26);
  v65 = v28;
  v66 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_9_0();
  v33 = v32 - v31;
  v34 = *a1;
  sub_2313DABDC();
  sub_2313DAF9C();

  v35 = sub_2313DB0FC();
  v36 = sub_2313DB2FC();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v61 = v14;
    v38 = v37;
    v59 = swift_slowAlloc();
    *&v70 = v59;
    *v38 = 136315138;
    v39 = v3;
    v40 = v19;
    v41 = v17;
    v42 = sub_2313DB1FC();
    v60 = v34;
    v44 = v43;

    v45 = v42;
    v17 = v41;
    v19 = v40;
    v3 = v39;
    v46 = sub_2313BE1B0(v45, v44, &v70);

    *(v38 + 4) = v46;
    _os_log_impl(&dword_2313B9000, v35, v36, "DeviceExpertAssetProvider: view context - %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    OUTLINED_FUNCTION_1();
    OUTLINED_FUNCTION_1();
  }

  else
  {
  }

  (*(v65 + 8))(v33, v66);
  v47 = sub_2313DABDC();
  sub_2313D3CC4(0x6974736567677573, 0xEE006E6F63496E6FLL, v47, &v70);

  if (v71)
  {
    v48 = v67;
    v49 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v48, v49 ^ 1u, 1, v19);
    if (__swift_getEnumTagSinglePayload(v48, 1, v19) != 1)
    {
      v50 = v68;
      v51 = v62;
      (*(v68 + 32))(v62, v48, v19);
      (*(v50 + 16))(v17, v51, v19);
      OUTLINED_FUNCTION_6_3();
      return (*(v50 + 8))(v51, v19);
    }
  }

  else
  {
    sub_2313DA844(&v70, &qword_27DD4BDD8, &qword_2313DC390);
    v48 = v67;
    __swift_storeEnumTagSinglePayload(v67, 1, 1, v19);
  }

  sub_2313DA844(v48, &qword_27DD4BC28, &qword_2313DB8E0);
  v54 = v63;
  v53 = v64;
  (*(v64 + 104))(v63, *MEMORY[0x277D60E90], v3);
  v55 = sub_2313DACEC();
  v57 = v56;
  (*(v53 + 8))(v54, v3);
  *v17 = v55;
  v17[1] = v57;
  (*(v68 + 104))(v17, *MEMORY[0x277D61238], v19);
  return OUTLINED_FUNCTION_6_3();
}

uint64_t sub_2313D9ED8(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return MEMORY[0x2822009F8](sub_2313D9EF8, 0, 0);
}

uint64_t sub_2313D9EF8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1Tm(v1, v1[3]);
  v4 = sub_2313DAD2C();
  v6 = v5;
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  if (sub_2313DB28C())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BD90, &qword_2313DC060);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_2313DB7C0;
    v10 = sub_2313DB24C();
    v11 = sub_2313DA038(v10, v4, v6);
    v12 = MEMORY[0x23192C2F0](v11);
    v14 = v13;

    *(v9 + 32) = v12;
    *(v9 + 40) = v14;
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v15 = sub_2313DA10C(v9);

  v16 = v0[1];

  return v16(v15);
}

unint64_t sub_2313DA038(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if ((a3 & 0x2000000000000000) != 0)
    {
      v3 = HIBYTE(a3) & 0xF;
    }

    else
    {
      v3 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v4 = 7;
    if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
    {
      v4 = 11;
    }

    v5 = v4 | (v3 << 16);
    result = sub_2313DB25C();
    if (v6)
    {
      result = v5;
    }

    if (4 * v3 >= result >> 14)
    {
      v7 = sub_2313DB29C();

      return v7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2313DA10C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2313C4680(0, v1, 0);
    v2 = v11;
    v4 = (a1 + 40);
    do
    {
      v8 = *(v4 - 1);
      v9 = *v4;

      swift_dynamicCast();
      v11 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2313C4680((v5 > 1), v6 + 1, 1);
        v2 = v11;
      }

      *(v2 + 16) = v6 + 1;
      sub_2313DA79C(&v10, (v2 + 32 * v6 + 32));
      v4 += 2;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_2313DA20C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return v0;
}

uint64_t sub_2313DA234()
{
  sub_2313DA20C();

  return MEMORY[0x2821FE8D8](v0, 48, 7);
}

uint64_t sub_2313DA28C()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_2313DA2C0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2313CBE58;

  return sub_2313D9ED8(v6, a2);
}

uint64_t sub_2313DA3E8(uint64_t a1, char a2)
{
  v3 = sub_2313DAF7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD4BEE0, &qword_2313DC460);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v29 - v10;
  v12 = sub_2313DAB9C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v29 - v18;
  sub_2313DAB7C();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_2313DA844(v11, &qword_27DD4BEE0, &qword_2313DC460);
LABEL_12:
    v26 = 0;
    return v26 & 1;
  }

  (*(v13 + 32))(v19, v11, v12);
  (*(v13 + 16))(v17, v19, v12);
  if ((*(v13 + 88))(v17, v12) != *MEMORY[0x277D60928])
  {
    v27 = *(v13 + 8);
    v27(v19, v12);
    v27(v17, v12);
    goto LABEL_12;
  }

  (*(v13 + 96))(v17, v12);
  (*(v4 + 32))(v7, v17, v3);
  v20 = sub_2313DAF6C();
  v21 = sub_2313D3D28(0x4965736143657375, 0xE900000000000064, v20);
  v23 = v22;

  if (!v23)
  {
    (*(v4 + 8))(v7, v3);
    (*(v13 + 8))(v19, v12);
    goto LABEL_12;
  }

  if (v21 == sub_2313D8740(a2) && v23 == v24)
  {
    v26 = 1;
  }

  else
  {
    v26 = sub_2313DB39C();
  }

  (*(v4 + 8))(v7, v3);
  (*(v13 + 8))(v19, v12);
  return v26 & 1;
}

_OWORD *sub_2313DA79C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_2313DA7B4()
{
  OUTLINED_FUNCTION_26_1();
  OUTLINED_FUNCTION_37_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_30_1(v0);
  *v1 = v2;
  v1[1] = sub_2313DA8F0;
  v3 = OUTLINED_FUNCTION_1_4();

  return sub_2313C51B8(v3, v4, v5, v6);
}

uint64_t sub_2313DA844(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2313DA8A4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_6_3()
{
  __swift_storeEnumTagSinglePayload(v2, 0, 1, v0);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v0);
  v4 = *(v3 - 120);

  return sub_2313DAF8C();
}

uint64_t OUTLINED_FUNCTION_11_3()
{

  return swift_allocObject();
}