uint64_t _s3DayVwta(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD7E4();
  (*(*(v6 - 8) + 40))(a1, a2, v6);
  v7 = *(a3 + 20);
  v8 = *(a1 + v7);
  *(a1 + v7) = *(a2 + v7);

  return a1;
}

uint64_t sub_261CD0538()
{
  result = sub_261CFD7E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *_s14ScheduledGroupOwCP(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
    return a1;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      goto LABEL_5;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v10 = sub_261CFD7E4();
    (*(*(v10 - 8) + 16))(a1, a2, v10);
    v11 = type metadata accessor for SiriUtilities.Day(0);
    *(a1 + *(v11 + 20)) = *(a2 + *(v11 + 20));
    goto LABEL_5;
  }

  v7 = sub_261CFD7E4();
  (*(*(v7 - 8) + 16))(a1, a2, v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
  *(a1 + *(v8 + 48)) = *(a2 + *(v8 + 48));
LABEL_5:
  sub_261CFD104();
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t _s14ScheduledGroupOwxx(uint64_t *a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 1)
  {
    if (result == 2)
    {
      v5 = sub_261CFD7E4();
      (*(*(v5 - 8) + 8))(a1, v5);
      v4 = (type metadata accessor for SiriUtilities.Day(0) + 20);
      goto LABEL_10;
    }

    if (result != 3 && result != 4)
    {
      return result;
    }

LABEL_5:
    v3 = sub_261CFD7E4();
    (*(*(v3 - 8) + 8))(a1, v3);
    v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
LABEL_10:
    a1 = (a1 + *v4);
    goto LABEL_11;
  }

  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    goto LABEL_5;
  }

LABEL_11:
  v6 = *a1;
}

void *_s14ScheduledGroupOwcp(void *a1, void *a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      *a1 = *a2;
      goto LABEL_4;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v7 = sub_261CFD7E4();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    v8 = type metadata accessor for SiriUtilities.Day(0);
    *(a1 + *(v8 + 20)) = *(a2 + *(v8 + 20));
    goto LABEL_4;
  }

  v5 = sub_261CFD7E4();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
  *(a1 + *(v6 + 48)) = *(a2 + *(v6 + 48));
LABEL_4:
  sub_261CFD104();
  swift_storeEnumTagMultiPayload();
  return a1;
}

void *_s14ScheduledGroupOwca(void *a1, void *a2)
{
  if (a1 != a2)
  {
    sub_261CD1888(a1, type metadata accessor for SiriUtilities.ScheduledGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        *a1 = *a2;
        goto LABEL_5;
      }
    }

    else if (EnumCaseMultiPayload == 2)
    {
      v7 = sub_261CFD7E4();
      (*(*(v7 - 8) + 16))(a1, a2, v7);
      v8 = type metadata accessor for SiriUtilities.Day(0);
      *(a1 + *(v8 + 20)) = *(a2 + *(v8 + 20));
      goto LABEL_5;
    }

    v5 = sub_261CFD7E4();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
    *(a1 + *(v6 + 48)) = *(a2 + *(v6 + 48));
LABEL_5:
    sub_261CFD104();
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

char *_s14ScheduledGroupOwtk(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_7;
    }

LABEL_10:
    v11 = sub_261CFD7E4();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
    *&a1[*(v12 + 48)] = *&a2[*(v12 + 48)];
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = sub_261CFD7E4();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = type metadata accessor for SiriUtilities.Day(0);
    *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
LABEL_11:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_7:
  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

char *_s14ScheduledGroupOwta(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_261CD1888(a1, type metadata accessor for SiriUtilities.ScheduledGroup);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3 && EnumCaseMultiPayload != 4)
    {
      goto LABEL_8;
    }

LABEL_11:
    v11 = sub_261CFD7E4();
    (*(*(v11 - 8) + 32))(a1, a2, v11);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
    *&a1[*(v12 + 48)] = *&a2[*(v12 + 48)];
    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 1)
  {
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v7 = sub_261CFD7E4();
    (*(*(v7 - 8) + 32))(a1, a2, v7);
    v8 = type metadata accessor for SiriUtilities.Day(0);
    *&a1[*(v8 + 20)] = *&a2[*(v8 + 20)];
LABEL_12:
    swift_storeEnumTagMultiPayload();
    return a1;
  }

LABEL_8:
  v9 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v9);
}

uint64_t sub_261CD12A8()
{
  v7 = MEMORY[0x277D833F0] + 64;
  result = sub_261CFD7E4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    swift_getTupleTypeLayout2();
    v8 = &v6;
    result = type metadata accessor for SiriUtilities.Day(319);
    if (v3 <= 0x3F)
    {
      v9 = *(result - 8) + 64;
      swift_getTupleTypeLayout2();
      v10 = &v5;
      swift_getTupleTypeLayout2();
      v11 = &v4;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

uint64_t *_s14CompletedGroupOwCP(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v9 = *a2;
    *a1 = *a2;
    a1 = (v9 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = sub_261CFD7E4();
    (*(*(v7 - 8) + 16))(a1, a2, v7);
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
        *(a1 + *(v11 + 48)) = *(a2 + *(v11 + 48));
      }

      else
      {
        v10 = type metadata accessor for SiriUtilities.Day(0);
        *(a1 + *(v10 + 20)) = *(a2 + *(v10 + 20));
      }

      sub_261CFD104();
    }

    else
    {
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
      *(a1 + *(v8 + 48)) = *(a2 + *(v8 + 48));
      sub_261CFD104();
    }

    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t _s14CompletedGroupOwxx(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      v6 = sub_261CFD7E4();
      (*(*(v6 - 8) + 8))(a1, v6);
      v4 = (type metadata accessor for SiriUtilities.Day(0) + 20);
      goto LABEL_6;
    }

    if (result != 1)
    {
      return result;
    }
  }

  else if (result != 2 && result != 3 && result != 4)
  {
    return result;
  }

  v3 = sub_261CFD7E4();
  (*(*(v3 - 8) + 8))(a1, v3);
  v4 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
LABEL_6:
  v5 = *(a1 + *v4);
}

uint64_t _s14CompletedGroupOwcp(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = sub_261CFD7E4();
  (*(*(v5 - 8) + 16))(a1, a2, v5);
  if (EnumCaseMultiPayload)
  {
    v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
  }

  else
  {
    v6 = (type metadata accessor for SiriUtilities.Day(0) + 20);
  }

  *(a1 + *v6) = *(a2 + *v6);
  sub_261CFD104();
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t _s14CompletedGroupOwca(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_261CD1888(a1, type metadata accessor for SiriUtilities.CompletedGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = sub_261CFD7E4();
    (*(*(v5 - 8) + 16))(a1, a2, v5);
    if (EnumCaseMultiPayload)
    {
      v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    }

    else
    {
      v6 = (type metadata accessor for SiriUtilities.Day(0) + 20);
    }

    *(a1 + *v6) = *(a2 + *v6);
    sub_261CFD104();
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_261CD1888(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s14CompletedGroupOwtk(uint64_t a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = sub_261CFD7E4();
  (*(*(v5 - 8) + 32))(a1, a2, v5);
  if (EnumCaseMultiPayload)
  {
    v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
  }

  else
  {
    v6 = (type metadata accessor for SiriUtilities.Day(0) + 20);
  }

  *(a1 + *v6) = *(a2 + *v6);
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t _s14CompletedGroupOwta(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_261CD1888(a1, type metadata accessor for SiriUtilities.CompletedGroup);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v5 = sub_261CFD7E4();
    (*(*(v5 - 8) + 32))(a1, a2, v5);
    if (EnumCaseMultiPayload)
    {
      v6 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    }

    else
    {
      v6 = (type metadata accessor for SiriUtilities.Day(0) + 20);
    }

    *(a1 + *v6) = *(a2 + *v6);
    swift_storeEnumTagMultiPayload();
  }

  return a1;
}

uint64_t sub_261CD1AEC()
{
  result = type metadata accessor for SiriUtilities.Day(319);
  if (v1 <= 0x3F)
  {
    v8 = *(result - 8) + 64;
    result = sub_261CFD7E4();
    if (v2 <= 0x3F)
    {
      v3 = *(result - 8);
      swift_getTupleTypeLayout2();
      v9 = &v7;
      swift_getTupleTypeLayout2();
      v10 = &v6;
      swift_getTupleTypeLayout2();
      v11 = &v5;
      swift_getTupleTypeLayout2();
      v12 = &v4;
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *_s8GroupingOwCP(char *a1, char *a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 80);
  if ((v5 & 0x20000) == 0)
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          type metadata accessor for SiriUtilities.CompletedGroup(0);
          v13 = swift_getEnumCaseMultiPayload();
          v14 = sub_261CFD7E4();
          (*(*(v14 - 8) + 16))(a1, a2, v14);
          if (v13)
          {
            v24 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
          }

          else
          {
            v24 = (type metadata accessor for SiriUtilities.Day(0) + 20);
          }

          *&a1[*v24] = *&a2[*v24];
          sub_261CFD104();
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v19 = *a2;
          v20 = a2[8];
          sub_261CCFD68(*a2, v20);
          *a1 = v19;
          a1[8] = v20;
          *(a1 + 2) = *(a2 + 2);
          sub_261CFD104();
        }

        goto LABEL_29;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v15 = *a2;
        v16 = a2[8];
        sub_261CCFD68(*a2, v16);
        *a1 = v15;
        a1[8] = v16;
        *(a1 + 2) = *(a2 + 2);
      }

      else
      {
        *a1 = *a2;
      }

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v17 = sub_261CFD6A4();
        (*(*(v17 - 8) + 16))(a1, a2, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0);
        *&a1[*(v18 + 48)] = *&a2[*(v18 + 48)];
      }

      else
      {
        v7 = *a2;
        v8 = *(a2 + 1);
        *a1 = *a2;
        *(a1 + 1) = v8;
        v10 = *(a2 + 2);
        v9 = *(a2 + 3);
        *(a1 + 2) = v10;
        *(a1 + 3) = v9;
        v11 = v7;
        sub_261CFD104();
      }

LABEL_6:
      sub_261CFD104();
LABEL_29:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      *(a1 + 1) = *(a2 + 1);
      sub_261CFD104();
      goto LABEL_29;
    }

    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 <= 1)
    {
      if (!v21)
      {
        *a1 = *a2;
        goto LABEL_21;
      }
    }

    else if (v21 == 2)
    {
      v25 = sub_261CFD7E4();
      (*(*(v25 - 8) + 16))(a1, a2, v25);
      v26 = type metadata accessor for SiriUtilities.Day(0);
      *&a1[*(v26 + 20)] = *&a2[*(v26 + 20)];
      goto LABEL_21;
    }

    v22 = sub_261CFD7E4();
    (*(*(v22 - 8) + 16))(a1, a2, v22);
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
    *&a1[*(v23 + 48)] = *&a2[*(v23 + 48)];
LABEL_21:
    sub_261CFD104();
    swift_storeEnumTagMultiPayload();
    goto LABEL_29;
  }

  v12 = *a2;
  *a1 = *a2;
  a1 = &v12[(v5 + 16) & ~v5];
  sub_261CFCDA4();
  return a1;
}

uint64_t _s8GroupingOwxx(uint64_t a1)
{
  result = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if (result > 5)
    {
      if (result != 6)
      {
        if (result != 7)
        {
          return result;
        }

        goto LABEL_30;
      }
    }

    else if (result == 4)
    {
      type metadata accessor for SiriUtilities.CompletedGroup(0);
      result = swift_getEnumCaseMultiPayload();
      if (result > 1)
      {
        if (result != 2)
        {
LABEL_20:
          if (result != 3 && result != 4)
          {
            return result;
          }
        }

LABEL_22:
        v7 = sub_261CFD7E4();
        (*(*(v7 - 8) + 8))(a1, v7);
        v4 = &qword_27FEDE330;
        v5 = &qword_261D11B80;
LABEL_23:
        a1 += *(__swift_instantiateConcreteTypeFromMangledNameV2(v4, v5) + 48);
        goto LABEL_30;
      }

      if (!result)
      {
LABEL_26:
        v8 = sub_261CFD7E4();
        (*(*(v8 - 8) + 8))(a1, v8);
        a1 += *(type metadata accessor for SiriUtilities.Day(0) + 20);
        goto LABEL_30;
      }

LABEL_28:
      if (result != 1)
      {
        return result;
      }

      goto LABEL_22;
    }

    sub_261CCFEB4(*a1, *(a1 + 8));
    a1 += 16;
    goto LABEL_30;
  }

  if (result > 1)
  {
    if (result == 2)
    {
      a1 += 8;
      goto LABEL_30;
    }

    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    result = swift_getEnumCaseMultiPayload();
    if (result > 1)
    {
      if (result == 2)
      {
        goto LABEL_26;
      }

      goto LABEL_20;
    }

    if (!result)
    {
      goto LABEL_30;
    }

    goto LABEL_28;
  }

  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v3 = sub_261CFD6A4();
    (*(*(v3 - 8) + 8))(a1, v3);
    v4 = &qword_27FEDE358;
    v5 = &qword_261D11BD0;
    goto LABEL_23;
  }

  v6 = *(a1 + 16);

  a1 += 24;
LABEL_30:
  v9 = *a1;
}

void *_s8GroupingOwcp(void *a1, uint64_t a2)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v14 = sub_261CFD6A4();
        (*(*(v14 - 8) + 16))(a1, a2, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0);
        *(a1 + *(v15 + 48)) = *(a2 + *(v15 + 48));
      }

      else
      {
        v5 = *a2;
        v6 = *(a2 + 8);
        *a1 = *a2;
        a1[1] = v6;
        v8 = *(a2 + 16);
        v7 = *(a2 + 24);
        a1[2] = v8;
        a1[3] = v7;
        v9 = v5;
        sub_261CFD104();
      }

LABEL_5:
      sub_261CFD104();
      goto LABEL_27;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      a1[1] = *(a2 + 8);
      sub_261CFD104();
      goto LABEL_27;
    }

    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    v18 = swift_getEnumCaseMultiPayload();
    if (v18 <= 1)
    {
      if (!v18)
      {
        *a1 = *a2;
        goto LABEL_19;
      }
    }

    else if (v18 == 2)
    {
      v22 = sub_261CFD7E4();
      (*(*(v22 - 8) + 16))(a1, a2, v22);
      v23 = type metadata accessor for SiriUtilities.Day(0);
      *(a1 + *(v23 + 20)) = *(a2 + *(v23 + 20));
      goto LABEL_19;
    }

    v19 = sub_261CFD7E4();
    (*(*(v19 - 8) + 16))(a1, a2, v19);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
    *(a1 + *(v20 + 48)) = *(a2 + *(v20 + 48));
LABEL_19:
    sub_261CFD104();
    swift_storeEnumTagMultiPayload();
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      v12 = *a2;
      v13 = *(a2 + 8);
      sub_261CCFD68(*a2, v13);
      *a1 = v12;
      *(a1 + 8) = v13;
      a1[2] = *(a2 + 16);
    }

    else
    {
      *a1 = *a2;
    }

    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 4)
  {
    type metadata accessor for SiriUtilities.CompletedGroup(0);
    v10 = swift_getEnumCaseMultiPayload();
    v11 = sub_261CFD7E4();
    (*(*(v11 - 8) + 16))(a1, a2, v11);
    if (v10)
    {
      v21 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
    }

    else
    {
      v21 = (type metadata accessor for SiriUtilities.Day(0) + 20);
    }

    *(a1 + *v21) = *(a2 + *v21);
    sub_261CFD104();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v16 = *a2;
    v17 = *(a2 + 8);
    sub_261CCFD68(*a2, v17);
    *a1 = v16;
    *(a1 + 8) = v17;
    a1[2] = *(a2 + 16);
    sub_261CFD104();
  }

LABEL_27:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t _s8GroupingOwca(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_261CD1888(a1, type metadata accessor for SiriUtilities.Grouping);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        if (EnumCaseMultiPayload == 4)
        {
          type metadata accessor for SiriUtilities.CompletedGroup(0);
          v7 = swift_getEnumCaseMultiPayload();
          v8 = sub_261CFD7E4();
          (*(*(v8 - 8) + 16))(a1, a2, v8);
          if (v7)
          {
            v18 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
          }

          else
          {
            v18 = (type metadata accessor for SiriUtilities.Day(0) + 20);
          }

          *(a1 + *v18) = *(a2 + *v18);
          sub_261CFD104();
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v13 = *a2;
          v14 = *(a2 + 8);
          sub_261CCFD68(*a2, v14);
          *a1 = v13;
          *(a1 + 8) = v14;
          *(a1 + 16) = *(a2 + 16);
          sub_261CFD104();
        }

        goto LABEL_28;
      }

      if (EnumCaseMultiPayload == 6)
      {
        v9 = *a2;
        v10 = *(a2 + 8);
        sub_261CCFD68(*a2, v10);
        *a1 = v9;
        *(a1 + 8) = v10;
        *(a1 + 16) = *(a2 + 16);
      }

      else
      {
        *a1 = *a2;
      }

      goto LABEL_6;
    }

    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v11 = sub_261CFD6A4();
        (*(*(v11 - 8) + 16))(a1, a2, v11);
        v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0);
        *(a1 + *(v12 + 48)) = *(a2 + *(v12 + 48));
      }

      else
      {
        v5 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        *(a1 + 16) = *(a2 + 16);
        *(a1 + 24) = *(a2 + 24);
        v6 = v5;
        sub_261CFD104();
      }

LABEL_6:
      sub_261CFD104();
LABEL_28:
      swift_storeEnumTagMultiPayload();
      return a1;
    }

    if (EnumCaseMultiPayload == 2)
    {
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      sub_261CFD104();
      goto LABEL_28;
    }

    type metadata accessor for SiriUtilities.ScheduledGroup(0);
    v15 = swift_getEnumCaseMultiPayload();
    if (v15 <= 1)
    {
      if (!v15)
      {
        *a1 = *a2;
        goto LABEL_20;
      }
    }

    else if (v15 == 2)
    {
      v19 = sub_261CFD7E4();
      (*(*(v19 - 8) + 16))(a1, a2, v19);
      v20 = type metadata accessor for SiriUtilities.Day(0);
      *(a1 + *(v20 + 20)) = *(a2 + *(v20 + 20));
      goto LABEL_20;
    }

    v16 = sub_261CFD7E4();
    (*(*(v16 - 8) + 16))(a1, a2, v16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
    *(a1 + *(v17 + 48)) = *(a2 + *(v17 + 48));
LABEL_20:
    sub_261CFD104();
    swift_storeEnumTagMultiPayload();
    goto LABEL_28;
  }

  return a1;
}

char *_s8GroupingOwtk(char *a1, char *a2, uint64_t a3)
{
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 4:
      type metadata accessor for SiriUtilities.CompletedGroup(0);
      v13 = swift_getEnumCaseMultiPayload();
      v14 = sub_261CFD7E4();
      (*(*(v14 - 8) + 32))(a1, a2, v14);
      if (v13)
      {
        v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
      }

      else
      {
        v17 = (type metadata accessor for SiriUtilities.Day(0) + 20);
      }

      *&a1[*v17] = *&a2[*v17];
      swift_storeEnumTagMultiPayload();
      goto LABEL_22;
    case 3:
      v9 = type metadata accessor for SiriUtilities.ScheduledGroup(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 2)
      {
        if (v10 != 3 && v10 != 4)
        {
          goto LABEL_19;
        }
      }

      else if (v10 != 1)
      {
        if (v10 == 2)
        {
          v11 = sub_261CFD7E4();
          (*(*(v11 - 8) + 32))(a1, a2, v11);
          v12 = type metadata accessor for SiriUtilities.Day(0);
          *&a1[*(v12 + 20)] = *&a2[*(v12 + 20)];
LABEL_21:
          swift_storeEnumTagMultiPayload();
          goto LABEL_22;
        }

LABEL_19:
        memcpy(a1, a2, *(*(v9 - 8) + 64));
        goto LABEL_22;
      }

      v18 = sub_261CFD7E4();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
      *&a1[*(v19 + 48)] = *&a2[*(v19 + 48)];
      goto LABEL_21;
    case 1:
      v7 = sub_261CFD6A4();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0);
      *&a1[*(v8 + 48)] = *&a2[*(v8 + 48)];
LABEL_22:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

char *_s8GroupingOwta(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  sub_261CD1888(a1, type metadata accessor for SiriUtilities.Grouping);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 4:
      type metadata accessor for SiriUtilities.CompletedGroup(0);
      v13 = swift_getEnumCaseMultiPayload();
      v14 = sub_261CFD7E4();
      (*(*(v14 - 8) + 32))(a1, a2, v14);
      if (v13)
      {
        v17 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80) + 48);
      }

      else
      {
        v17 = (type metadata accessor for SiriUtilities.Day(0) + 20);
      }

      *&a1[*v17] = *&a2[*v17];
      swift_storeEnumTagMultiPayload();
      goto LABEL_23;
    case 3:
      v9 = type metadata accessor for SiriUtilities.ScheduledGroup(0);
      v10 = swift_getEnumCaseMultiPayload();
      if (v10 > 2)
      {
        if (v10 != 3 && v10 != 4)
        {
          goto LABEL_20;
        }
      }

      else if (v10 != 1)
      {
        if (v10 == 2)
        {
          v11 = sub_261CFD7E4();
          (*(*(v11 - 8) + 32))(a1, a2, v11);
          v12 = type metadata accessor for SiriUtilities.Day(0);
          *&a1[*(v12 + 20)] = *&a2[*(v12 + 20)];
LABEL_22:
          swift_storeEnumTagMultiPayload();
          goto LABEL_23;
        }

LABEL_20:
        memcpy(a1, a2, *(*(v9 - 8) + 64));
        goto LABEL_23;
      }

      v18 = sub_261CFD7E4();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE330, &qword_261D11B80);
      *&a1[*(v19 + 48)] = *&a2[*(v19 + 48)];
      goto LABEL_22;
    case 1:
      v7 = sub_261CFD6A4();
      (*(*(v7 - 8) + 32))(a1, a2, v7);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE358, &qword_261D11BD0);
      *&a1[*(v8 + 48)] = *&a2[*(v8 + 48)];
LABEL_23:
      swift_storeEnumTagMultiPayload();
      return a1;
  }

  v15 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v15);
}

uint64_t sub_261CD34D8()
{
  v6[4] = " ";
  result = sub_261CFD6A4();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8);
    v3 = MEMORY[0x277D833F0];
    swift_getTupleTypeLayout2();
    v6[5] = v6;
    v6[6] = &unk_261D11C00;
    result = type metadata accessor for SiriUtilities.ScheduledGroup(319);
    if (v4 <= 0x3F)
    {
      v6[7] = *(result - 8) + 64;
      result = type metadata accessor for SiriUtilities.CompletedGroup(319);
      if (v5 <= 0x3F)
      {
        v6[8] = *(result - 8) + 64;
        v6[9] = &unk_261D11C18;
        v6[10] = &unk_261D11C18;
        v6[11] = v3 + 64;
        swift_initEnumMetadataMultiPayload();
        return 0;
      }
    }
  }

  return result;
}

uint64_t _s12ListContentsVwxx(uint64_t a1)
{
  sub_261CCFEB4(*a1, *(a1 + 8));
  v2 = *(a1 + 16);

  v3 = *(a1 + 24);
}

uint64_t _s12ListContentsVwcp(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_261CCFD68(*a2, v5);
  *a1 = v4;
  *(a1 + 8) = v5;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  sub_261CFD104();
  sub_261CFD104();
  return a1;
}

uint64_t _s12ListContentsVwca(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_261CCFD68(*a2, v5);
  v6 = *a1;
  *a1 = v4;
  v7 = *(a1 + 8);
  *(a1 + 8) = v5;
  sub_261CCFEB4(v6, v7);
  v8 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  sub_261CFD104();

  v9 = *(a2 + 24);
  v10 = *(a1 + 24);
  *(a1 + 24) = v9;
  sub_261CFD104();

  return a1;
}

uint64_t _s12ListContentsVwta(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *a1;
  *a1 = *a2;
  v6 = *(a1 + 8);
  *(a1 + 8) = v4;
  sub_261CCFEB4(v5, v6);
  v7 = *(a1 + 16);

  v8 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  return a1;
}

uint64_t _s12ListContentsVwet(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s12ListContentsVwst(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_261CD3840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CD38A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ReminderEntity.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReminderEntity() + 44));
  sub_261CFCA04();
  return v3;
}

uint64_t ReminderEntity.notes.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReminderEntity() + 92));
  sub_261CFCA04();
  return v3;
}

uint64_t ReminderEntity.hashtags.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReminderEntity() + 112));
  sub_261CFCA04();
  return v3;
}

uint64_t ReminderEntity.urls.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReminderEntity() + 120));
  sub_261CFCA04();
  return v3;
}

uint64_t ReminderEntity.images.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReminderEntity() + 116));
  sub_261CFCA04();
  return v3;
}

uint64_t ReminderEntity.isCompleted.getter()
{
  v1 = *(v0 + *(type metadata accessor for ReminderEntity() + 52));
  sub_261CFCA04();
  return v3;
}

uint64_t ReminderEntity.tags.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCA04();
  return v3;
}

uint64_t ReminderEntity.subtasks.getter()
{
  v1 = *(v0 + 40);
  sub_261CFCA04();
  return v3;
}

uint64_t ReminderEntity.init(id:title:list:isCompleted:completionDate:creationDate:lastModifiedDate:dueDate:earlyAlert:recurrence:spatialEventTrigger:contactPerson:assignedPerson:note:flags:priorityLevel:parent:subtasks:tags:images:urls:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16, unsigned __int8 *a17, unsigned __int8 *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v225 = a8;
  v226 = a7;
  v227 = a6;
  v200 = a5;
  v228 = a4;
  *(&v212 + 1) = a3;
  *&v212 = a2;
  v229 = a1;
  v211 = a23;
  v210 = a22;
  v213 = a21;
  v216 = a20;
  v223 = a15;
  v224 = a14;
  v219 = a10;
  v192 = a11;
  v222 = a19;
  v205 = a16;
  v220 = a12;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v215 = v158 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v214 = v158 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v30 = *(*(v29 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v29 - 8);
  v207 = v158 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v206 = v158 - v33;
  v159 = sub_261CFD504();
  v34 = *(*(v159 - 8) + 64);
  MEMORY[0x28223BE20](v159);
  v158[1] = v158 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x28223BE20](v36 - 8);
  v209 = v158 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x28223BE20](v38);
  v208 = v158 - v41;
  MEMORY[0x28223BE20](v40);
  v190 = v158 - v42;
  v191 = sub_261CFD524();
  v204 = *(v191 - 8);
  v43 = *(v204 + 64);
  MEMORY[0x28223BE20](v191);
  v158[0] = v158 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v46 = *(*(v45 - 8) + 64);
  v47 = MEMORY[0x28223BE20](v45 - 8);
  v196 = v158 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v195 = v158 - v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v51 = *(*(v50 - 8) + 64);
  v52 = MEMORY[0x28223BE20](v50 - 8);
  v185 = v158 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v221 = v158 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x28223BE20](v55 - 8);
  v183 = v158 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57);
  v218 = v158 - v59;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v61 = *(*(v60 - 8) + 64);
  v62 = MEMORY[0x28223BE20](v60 - 8);
  v186 = v158 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v62);
  v184 = v158 - v64;
  v65 = type metadata accessor for ListEntity();
  v66 = *(*(v65 - 8) + 64);
  v67 = MEMORY[0x28223BE20](v65 - 8);
  v182 = v158 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v67);
  v181 = v158 - v69;
  v232 = sub_261CFD674();
  v70 = *(v232 - 8);
  v71 = *(v70 + 64);
  MEMORY[0x28223BE20](v232);
  v73 = v158 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_261CFD884();
  v75 = *(*(v74 - 8) + 64);
  MEMORY[0x28223BE20](v74 - 8);
  v76 = sub_261CFFA44();
  v77 = *(*(v76 - 8) + 64);
  MEMORY[0x28223BE20](v76 - 8);
  v78 = sub_261CFD6A4();
  v79 = *(*(v78 - 8) + 64);
  MEMORY[0x28223BE20](v78 - 8);
  v81 = v158 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = a13[1];
  v189 = *a13;
  v188 = v82;
  v187 = a13[2];
  v193 = *a17;
  v194 = *a18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC998, &qword_261D0B628);
  v198 = sub_261CFCAB4();
  *a9 = v198;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A0, &unk_261D11CA0);
  v197 = sub_261CFCB24();
  a9[1] = v197;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A8, &qword_261D0B630);
  v199 = sub_261CFCAA4();
  a9[2] = v199;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B0, &unk_261D11CB0);
  v202 = sub_261CFCAF4();
  a9[3] = v202;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B8, &qword_261D0B638);
  sub_261AE83CC(&qword_280D224E0, type metadata accessor for SectionEntity);
  v203 = sub_261CFCA64();
  a9[4] = v203;
  v235 = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C0, &unk_261D11CC0);
  v173 = sub_261AE83CC(&qword_280D22358, type metadata accessor for ReminderEntity);
  v201 = sub_261CFCA64();
  a9[5] = v201;
  v83 = type metadata accessor for ReminderEntity();
  v178 = *(v83 + 44);
  v236 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  sub_261CFF9B4();
  sub_261CFD874();
  v84 = *(v70 + 104);
  v234 = *MEMORY[0x277CC9110];
  v174 = "e Property Creation Date";
  v85 = v192[1];
  v180 = *v192;
  v179 = v85;
  v217 = v73;
  v86 = v232;
  v84(v73);
  v233 = v84;
  v87 = v70 + 104;
  sub_261CFD6C4();
  v192 = sub_261CFCB14();
  *(v235 + v178) = v192;
  v177 = *(v83 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  sub_261CFF9B4();
  sub_261CFD874();
  v88 = v217;
  v89 = v234;
  v90 = v86;
  (v84)(v217, v234, v86);
  v231 = v87;
  sub_261CFD6C4();
  sub_261AE83CC(&qword_280D227A0, type metadata accessor for ListEntity);
  v178 = sub_261CFCA54();
  v92 = v235;
  v91 = v236;
  *(v235 + v177) = v178;
  v176 = v91[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D0, &qword_261D0B640);
  sub_261CFF9B4();
  sub_261CFD874();
  v93 = v89;
  v94 = v233;
  (v233)(v88, v93, v90);
  sub_261CFD6C4();
  v177 = sub_261CFCB34();
  *(v92 + v176) = v177;
  v175 = v91[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D8, &unk_261D11CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v95 = v234;
  (v94)(v88, v234, v90);
  sub_261CFD6C4();
  v176 = sub_261CFCAD4();
  *(v92 + v175) = v176;
  v171 = v236[15];
  sub_261CFF9B4();
  sub_261CFD874();
  v96 = v217;
  (v94)(v217, v95, v90);
  v97 = v81;
  sub_261CFD6C4();
  v175 = sub_261CFCAD4();
  *(v92 + v171) = v175;
  v98 = v236;
  v171 = v236[16];
  sub_261CFF9B4();
  sub_261CFD874();
  v99 = v232;
  (v94)(v96, v95, v232);
  v230 = v97;
  sub_261CFD6C4();
  v174 = sub_261CFCAD4();
  v100 = v235;
  *(v235 + v171) = v174;
  v171 = v98[17];
  sub_261CFF9B4();
  sub_261CFD874();
  (v94)(v96, v95, v99);
  sub_261CFD6C4();
  v172 = sub_261CFCA94();
  *(v100 + v171) = v172;
  v169 = v98[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E0, &qword_261D0B648);
  sub_261CFF9B4();
  sub_261CFD874();
  v101 = v232;
  v102 = v233;
  (v233)(v96, v95, v232);
  sub_261CFD6C4();
  sub_261B51818();
  v171 = sub_261CFCA54();
  v103 = v235;
  *(v235 + v169) = v171;
  v169 = v98[19];
  sub_261CFF9B4();
  sub_261CFD874();
  v102(v96, v95, v101);
  sub_261CFD6C4();
  v170 = sub_261CFCAE4();
  *(v103 + v169) = v170;
  v169 = v236[20];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E8, &unk_261D11CF0);
  sub_261CFF9B4();
  sub_261CFD874();
  v104 = v101;
  v105 = v233;
  (v233)(v96, v95, v104);
  sub_261CFD6C4();
  sub_261B5186C();
  v168 = sub_261CFCA54();
  *(v103 + v169) = v168;
  v106 = v236;
  v169 = v236[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F0, &qword_261D0B650);
  sub_261CFF9B4();
  sub_261CFD874();
  v107 = v232;
  v105(v96, v95, v232);
  sub_261CFD6C4();
  v167 = sub_261CFCA84();
  v108 = v235;
  *(v235 + v169) = v167;
  v169 = v106[22];
  sub_261CFF9B4();
  sub_261CFD874();
  v109 = v95;
  v110 = v107;
  v111 = v233;
  (v233)(v96, v109, v107);
  sub_261CFD6C4();
  v165 = sub_261CFCA84();
  *(v108 + v169) = v165;
  v166 = v106[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  (v111)(v96, v234, v107);
  v112 = v111;
  sub_261CFD6C4();
  v169 = sub_261CFCB14();
  v113 = v235;
  *(v235 + v166) = v169;
  v164 = v106[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F8, &qword_261D0B658);
  sub_261CFF9B4();
  sub_261CFD874();
  v114 = v234;
  v112(v96, v234, v107);
  sub_261CFD6C4();
  sub_261B52470();
  v166 = sub_261CFCA34();
  *(v113 + v164) = v166;
  v163 = v236[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA00, &unk_261D11D00);
  sub_261CFF9B4();
  sub_261CFD874();
  v115 = v233;
  (v233)(v96, v114, v110);
  sub_261CFD6C4();
  sub_261B524C4();
  v164 = sub_261CFCA34();
  *(v113 + v163) = v164;
  v116 = v236;
  v162 = v236[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA08, &qword_261D0B660);
  sub_261CFF9B4();
  sub_261CFD874();
  v117 = v234;
  v118 = v232;
  (v115)(v96, v234, v232);
  sub_261CFD6C4();
  v163 = sub_261CFCA54();
  *(v235 + v162) = v163;
  v162 = v116[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  v119 = v118;
  (v233)(v96, v117, v118);
  sub_261CFD6C4();
  v173 = sub_261CFCA54();
  v120 = v235;
  *(v235 + v162) = v173;
  v161 = v236[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA10, &qword_261D0B668);
  sub_261CFF9B4();
  sub_261CFD874();
  v121 = v233;
  (v233)(v96, v117, v119);
  sub_261CFD6C4();
  v162 = sub_261CFCB14();
  *(v120 + v161) = v162;
  v122 = v236;
  v160 = v236[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA18, &unk_261D11D20);
  sub_261CFF9B4();
  sub_261CFD874();
  (v121)(v96, v234, v119);
  sub_261CFD6C4();
  v161 = sub_261CFCA74();
  *(v120 + v160) = v161;
  v123 = v122[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA20, &qword_261D0B670);
  sub_261CFF9B4();
  sub_261CFD874();
  (v121)(v96, v234, v232);
  v124 = v185;
  sub_261CFD6C4();
  v125 = v191;
  v126 = sub_261CFCAC4();
  v127 = v120;
  *(v120 + v123) = v126;
  v128 = v183;
  sub_261B01DC4(v229, v127 + v122[10], type metadata accessor for AppEntityID);
  v129 = v181;
  sub_261B01DC4(v228, v181, type metadata accessor for ListEntity);
  sub_261B01DC4(v129, v182, type metadata accessor for ListEntity);
  sub_261CFCA14();
  sub_261CDF898(v129, type metadata accessor for ListEntity);
  LOBYTE(v237) = v200;
  sub_261CFCA14();
  v130 = v184;
  sub_261AFB668(v227, v184, &qword_27FEDAB68, &unk_261D11C90);
  v131 = v186;
  sub_261AFB668(v130, v186, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v130, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v226, v130, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v130, v131, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v130, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v225, v130, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v130, v131, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v130, &qword_27FEDAB68, &unk_261D11C90);
  v132 = v218;
  sub_261AFB668(v219, v218, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v132, v128, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v132, &qword_27FEDA160, &qword_261D02220);
  v237 = v180;
  v238 = v179;
  sub_261CFCA14();
  v133 = v221;
  sub_261AFB668(v220, v221, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v133, v124, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v133, &qword_27FEDA9A0, &unk_261D034A0);
  *&v237 = v189;
  *(&v237 + 1) = v188;
  *&v238 = v187;
  sub_261CFCA14();
  v134 = v195;
  sub_261AFB668(v224, v195, &unk_27FEDB0B0, &unk_261D035D0);
  v135 = v196;
  sub_261AFB668(v134, v196, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v134, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v223, v134, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v134, v135, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v134, &unk_27FEDB0B0, &unk_261D035D0);
  v136 = v205;
  v137 = v190;
  sub_261AFB668(v205, v190, &qword_27FEDA9A8, &qword_261D034B0);
  v138 = v204;
  if ((*(v204 + 48))(v137, 1, v125) == 1)
  {
    sub_261AE6A40(v137, &qword_27FEDA9A8, &qword_261D034B0);
    v139 = 0;
    v140 = 0;
  }

  else
  {
    v141 = v158[0];
    (*(v138 + 32))(v158[0], v137, v125);
    sub_261CFD4F4();
    sub_261AE83CC(&qword_27FEDCA28, MEMORY[0x277CC8B30]);
    v139 = sub_261CFFBD4();
    v140 = v142;
    (*(v138 + 8))(v141, v125);
  }

  *&v237 = v139;
  *(&v237 + 1) = v140;
  sub_261CFCA14();
  LOBYTE(v237) = v193;
  sub_261CFCA14();
  LOBYTE(v237) = v194;
  sub_261CFCA14();
  v143 = v206;
  sub_261AFB668(v222, v206, &unk_27FEDE110, &unk_261D035B0);
  sub_261AFB668(v143, v207, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCA14();
  sub_261AE6A40(v143, &unk_27FEDE110, &unk_261D035B0);
  v144 = v216;
  *&v237 = v216;
  sub_261CFD104();
  sub_261CFCA14();
  v145 = v213;
  *&v237 = v213;
  sub_261CFD104();
  sub_261CFCA14();
  v146 = MEMORY[0x277D84F90];
  v147 = v210;
  if (!v210)
  {
    v147 = MEMORY[0x277D84F90];
  }

  *&v237 = v147;
  sub_261CFCA14();
  v148 = v211;
  if (!v211)
  {
    v148 = v146;
  }

  *&v237 = v148;
  sub_261CFCA14();
  v237 = v212;
  sub_261CFCA14();
  v149 = v136;
  v150 = v208;
  sub_261AFB668(v136, v208, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261AFB668(v150, v209, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCA14();
  sub_261AE6A40(v150, &qword_27FEDA9A8, &qword_261D034B0);
  *&v237 = v145;
  sub_261CFCA14();
  v151 = v219;
  v152 = v218;
  sub_261AFB668(v219, v218, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v152, v128, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v152, &qword_27FEDA160, &qword_261D02220);
  v153 = v220;
  v154 = v221;
  sub_261AFB668(v220, v221, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v154, v124, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v154, &qword_27FEDA9A0, &unk_261D034A0);
  v155 = type metadata accessor for SectionEntity();
  v156 = v214;
  (*(*(v155 - 8) + 56))(v214, 1, 1, v155);
  sub_261AFB668(v156, v215, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCA14();
  sub_261AE6A40(v156, &qword_27FEDA1E0, &unk_261D02300);
  *&v237 = v144;
  sub_261CFCA14();
  sub_261AE6A40(v222, &unk_27FEDE110, &unk_261D035B0);
  sub_261AE6A40(v149, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261AE6A40(v223, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v224, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v153, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AE6A40(v151, &qword_27FEDA160, &qword_261D02220);
  sub_261AE6A40(v225, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v226, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v227, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CDF898(v228, type metadata accessor for ListEntity);
  return sub_261CDF898(v229, type metadata accessor for AppEntityID);
}

RemindersAppIntents::ReminderEntity::PriorityLevel_optional __swiftcall ReminderEntity.PriorityLevel.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

RemindersAppIntents::ReminderEntity::Flags_optional __swiftcall ReminderEntity.Flags.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ReminderEntity.PriorityLevel.rawValue.getter()
{
  v1 = 1701736302;
  v2 = 0x6D756964656DLL;
  if (*v0 != 2)
  {
    v2 = 1751607656;
  }

  if (*v0)
  {
    v1 = 7827308;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t ReminderEntity.Flags.rawValue.getter()
{
  v1 = 0x6767616C46746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x64656767616C66;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t ReminderEntity.init(id:title:list:isCompleted:completionDate:creationDate:lastModifiedDate:dueDateComponents:earlyAlert:recurrenceRule:spatialEventTrigger:contactPerson:assignedPerson:notes:flags:priorityLevel:parent:subtasks:hashtags:images:urls:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, __int128 *a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, __int128 a16, unsigned __int8 *a17, unsigned __int8 *a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  v223 = a8;
  v224 = a7;
  v225 = a6;
  v199 = a5;
  v226 = a4;
  *(&v213 + 1) = a3;
  *&v213 = a2;
  v227 = a1;
  v212 = a23;
  v211 = a22;
  v210 = a21;
  v208 = a20;
  v219 = a19;
  v205 = a16;
  v221 = a15;
  v222 = a14;
  v220 = a10;
  v184 = a11;
  v202 = a12;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x28223BE20](v24 - 8);
  v215 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v214 = &v160 - v28;
  v29 = sub_261CFD564();
  v30 = *(*(v29 - 8) + 64);
  MEMORY[0x28223BE20](v29 - 8);
  v207 = &v160 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v33 = *(*(v32 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v32 - 8);
  v209 = &v160 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v206 = &v160 - v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v38 = *(*(v37 - 8) + 64);
  v39 = MEMORY[0x28223BE20](v37 - 8);
  v204 = &v160 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v39);
  v203 = &v160 - v41;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v43 = *(*(v42 - 8) + 64);
  v44 = MEMORY[0x28223BE20](v42 - 8);
  v201 = &v160 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v198 = &v160 - v46;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v48 = *(*(v47 - 8) + 64);
  v49 = MEMORY[0x28223BE20](v47 - 8);
  v192 = &v160 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v218 = &v160 - v51;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v53 = *(*(v52 - 8) + 64);
  v54 = MEMORY[0x28223BE20](v52 - 8);
  v217 = &v160 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v216 = &v160 - v56;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v58 = *(*(v57 - 8) + 64);
  v59 = MEMORY[0x28223BE20](v57 - 8);
  v186 = &v160 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v59);
  v185 = &v160 - v61;
  v62 = type metadata accessor for ListEntity();
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x28223BE20](v62 - 8);
  v183 = &v160 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v182 = &v160 - v66;
  v231 = sub_261CFD674();
  v67 = *(v231 - 8);
  v68 = *(v67 + 64);
  MEMORY[0x28223BE20](v231);
  v70 = &v160 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = sub_261CFD884();
  v72 = *(*(v71 - 8) + 64);
  MEMORY[0x28223BE20](v71 - 8);
  v74 = &v160 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_261CFFA44();
  v76 = *(*(v75 - 8) + 64);
  MEMORY[0x28223BE20](v75 - 8);
  v77 = sub_261CFD6A4();
  v78 = *(*(v77 - 8) + 64);
  MEMORY[0x28223BE20](v77 - 8);
  v80 = &v160 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = a13[1];
  v189 = *a13;
  v188 = v81;
  v187 = a13[2];
  v190 = *a17;
  v191 = *a18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC998, &qword_261D0B628);
  v193 = sub_261CFCAB4();
  *a9 = v193;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A0, &unk_261D11CA0);
  v194 = sub_261CFCB24();
  a9[1] = v194;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9A8, &qword_261D0B630);
  v195 = sub_261CFCAA4();
  a9[2] = v195;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B0, &unk_261D11CB0);
  v197 = sub_261CFCAF4();
  a9[3] = v197;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9B8, &qword_261D0B638);
  sub_261AE83CC(&qword_280D224E0, type metadata accessor for SectionEntity);
  v200 = sub_261CFCA64();
  a9[4] = v200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C0, &unk_261D11CC0);
  v175 = sub_261AE83CC(&qword_280D22358, type metadata accessor for ReminderEntity);
  v196 = sub_261CFCA64();
  a9[5] = v196;
  v232 = a9;
  v82 = type metadata accessor for ReminderEntity();
  v179 = *(v82 + 44);
  v229 = v82;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  sub_261CFF9B4();
  sub_261CFD874();
  v83 = *(v67 + 104);
  LODWORD(v234) = *MEMORY[0x277CC9110];
  v174 = "e Property Creation Date";
  v84 = v184[1];
  v181 = *v184;
  v180 = v84;
  v85 = v231;
  v83(v70);
  v230 = v83;
  v233 = v67 + 104;
  sub_261CFD6C4();
  v184 = sub_261CFCB14();
  *(a9 + v179) = v184;
  v178 = *(v82 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  sub_261CFF9B4();
  v86 = v74;
  sub_261CFD874();
  v87 = v70;
  v88 = v85;
  (v83)(v70, v234, v85);
  v89 = v86;
  v90 = v87;
  sub_261CFD6C4();
  sub_261AE83CC(&qword_280D227A0, type metadata accessor for ListEntity);
  v179 = sub_261CFCA54();
  v91 = v232;
  *(v232 + v178) = v179;
  v92 = v229;
  v177 = v229[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D0, &qword_261D0B640);
  sub_261CFF9B4();
  sub_261CFD874();
  v93 = v234;
  (v230)(v90, v234, v88);
  sub_261CFD6C4();
  v178 = sub_261CFCB34();
  *(v91 + v177) = v178;
  v176 = v92[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9D8, &unk_261D11CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v94 = v88;
  v95 = v230;
  (v230)(v90, v93, v88);
  v228 = v80;
  sub_261CFD6C4();
  v177 = sub_261CFCAD4();
  v96 = v232;
  *(v232 + v176) = v177;
  v97 = v229;
  v172 = v229[15];
  sub_261CFF9B4();
  sub_261CFD874();
  v95(v90, v93, v94);
  sub_261CFD6C4();
  v176 = sub_261CFCAD4();
  *(v96 + v172) = v176;
  v172 = v97[16];
  sub_261CFF9B4();
  sub_261CFD874();
  v98 = v234;
  v99 = v231;
  v95(v90, v234, v231);
  v100 = v90;
  sub_261CFD6C4();
  v174 = sub_261CFCAD4();
  *(v232 + v172) = v174;
  v172 = v97[17];
  sub_261CFF9B4();
  v101 = v89;
  sub_261CFD874();
  v102 = v100;
  v103 = v100;
  v104 = v98;
  v105 = v99;
  v106 = v230;
  (v230)(v103, v104, v99);
  sub_261CFD6C4();
  v173 = sub_261CFCA94();
  v107 = v232;
  *(v232 + v172) = v173;
  v170 = v97[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E0, &qword_261D0B648);
  sub_261CFF9B4();
  sub_261CFD874();
  (v106)(v102, v234, v105);
  sub_261CFD6C4();
  sub_261B51818();
  v172 = sub_261CFCA54();
  *(v107 + v170) = v172;
  v108 = v107;
  v170 = v97[19];
  sub_261CFF9B4();
  sub_261CFD874();
  v109 = v234;
  v110 = v230;
  v111 = v231;
  (v230)(v102, v234, v231);
  sub_261CFD6C4();
  v171 = sub_261CFCAE4();
  *(v108 + v170) = v171;
  v169 = v97[20];
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9E8, &unk_261D11CF0);
  sub_261CFF9B4();
  sub_261CFD874();
  v110(v102, v109, v111);
  v112 = v110;
  sub_261CFD6C4();
  sub_261B5186C();
  v170 = sub_261CFCA54();
  v113 = v232;
  *(v232 + v169) = v170;
  v114 = v229;
  v168 = v229[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F0, &qword_261D0B650);
  sub_261CFF9B4();
  v160 = v101;
  sub_261CFD874();
  v115 = v234;
  v116 = v231;
  v112(v102, v234, v231);
  sub_261CFD6C4();
  v169 = sub_261CFCA84();
  *(v113 + v168) = v169;
  v167 = v114[22];
  sub_261CFF9B4();
  sub_261CFD874();
  v117 = v116;
  v112(v102, v115, v116);
  sub_261CFD6C4();
  v168 = sub_261CFCA84();
  v118 = v232;
  *(v232 + v167) = v168;
  v166 = v114[23];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA848, &unk_261D074E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v119 = v234;
  (v230)(v102, v234, v117);
  sub_261CFD6C4();
  v167 = sub_261CFCB14();
  *(v118 + v166) = v167;
  v165 = v114[24];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9F8, &qword_261D0B658);
  sub_261CFF9B4();
  sub_261CFD874();
  v120 = v119;
  v121 = v119;
  v122 = v230;
  v123 = v231;
  (v230)(v102, v121, v231);
  sub_261CFD6C4();
  sub_261B52470();
  v166 = sub_261CFCA34();
  v124 = v232;
  *(v232 + v165) = v166;
  v164 = v114[25];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA00, &unk_261D11D00);
  sub_261CFF9B4();
  sub_261CFD874();
  v122(v102, v120, v123);
  sub_261CFD6C4();
  sub_261B524C4();
  v165 = sub_261CFCA34();
  *(v124 + v164) = v165;
  v125 = v229;
  v163 = v229[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA08, &qword_261D0B660);
  sub_261CFF9B4();
  sub_261CFD874();
  v122(v102, v120, v123);
  sub_261CFD6C4();
  v164 = sub_261CFCA54();
  v126 = v232;
  *(v232 + v163) = v164;
  v127 = v125;
  v163 = v125[27];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  v128 = v231;
  v122(v102, v234, v231);
  sub_261CFD6C4();
  v175 = sub_261CFCA54();
  *(v126 + v163) = v175;
  v162 = v127[28];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA10, &qword_261D0B668);
  sub_261CFF9B4();
  sub_261CFD874();
  v129 = v234;
  v122(v102, v234, v128);
  sub_261CFD6C4();
  v163 = sub_261CFCB14();
  v130 = v232;
  *(v232 + v162) = v163;
  v161 = v127[29];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA18, &unk_261D11D20);
  sub_261CFF9B4();
  sub_261CFD874();
  v131 = v231;
  v122(v102, v129, v231);
  sub_261CFD6C4();
  v162 = sub_261CFCA74();
  *(v130 + v161) = v162;
  v132 = v130;
  v133 = v229;
  v134 = v229[30];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCA20, &qword_261D0B670);
  sub_261CFF9B4();
  sub_261CFD874();
  v122(v102, v234, v131);
  sub_261CFD6C4();
  v233 = sub_261CFCAC4();
  *(v132 + v134) = v233;
  sub_261B01DC4(v227, v132 + v133[10], type metadata accessor for AppEntityID);
  v135 = v182;
  sub_261B01DC4(v226, v182, type metadata accessor for ListEntity);
  sub_261B01DC4(v135, v183, type metadata accessor for ListEntity);
  sub_261CFCA14();
  v234 = type metadata accessor for ListEntity;
  sub_261CDF898(v135, type metadata accessor for ListEntity);
  LOBYTE(v235) = v199;
  sub_261CFCA14();
  v136 = v185;
  sub_261AFB668(v225, v185, &qword_27FEDAB68, &unk_261D11C90);
  v137 = v186;
  sub_261AFB668(v136, v186, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v136, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v224, v136, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v136, v137, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v136, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v223, v136, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AFB668(v136, v137, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  sub_261AE6A40(v136, &qword_27FEDAB68, &unk_261D11C90);
  v138 = v216;
  sub_261AFB668(v220, v216, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v138, v217, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v138, &qword_27FEDA160, &qword_261D02220);
  v235 = v181;
  v236 = v180;
  sub_261CFCA14();
  v139 = v202;
  v140 = v218;
  sub_261AFB668(v202, v218, &qword_27FEDA9A0, &unk_261D034A0);
  v141 = v192;
  sub_261AFB668(v140, v192, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v140, &qword_27FEDA9A0, &unk_261D034A0);
  *&v235 = v189;
  *(&v235 + 1) = v188;
  *&v236 = v187;
  sub_261CFCA14();
  v142 = v198;
  sub_261AFB668(v222, v198, &unk_27FEDB0B0, &unk_261D035D0);
  v143 = v201;
  sub_261AFB668(v142, v201, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v142, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v221, v142, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AFB668(v142, v143, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  sub_261AE6A40(v142, &unk_27FEDB0B0, &unk_261D035D0);
  v235 = v205;
  sub_261CFD104();
  sub_261CFCA14();
  LOBYTE(v235) = v190;
  sub_261CFCA14();
  LOBYTE(v235) = v191;
  sub_261CFCA14();
  v144 = v203;
  sub_261AFB668(v219, v203, &unk_27FEDE110, &unk_261D035B0);
  sub_261AFB668(v144, v204, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCA14();
  sub_261AE6A40(v144, &unk_27FEDE110, &unk_261D035B0);
  v145 = v208;
  *&v235 = v208;
  sub_261CFD104();
  sub_261CFCA14();
  *&v235 = v210;
  v146 = v210;
  sub_261CFD104();
  sub_261CFCA14();
  v147 = v211;
  if (!v211)
  {
    v147 = MEMORY[0x277D84F90];
  }

  v148 = MEMORY[0x277D84F90];
  *&v235 = v147;
  sub_261CFCA14();
  v149 = v212;
  if (!v212)
  {
    v149 = v148;
  }

  *&v235 = v149;
  sub_261CFCA14();
  v235 = v213;
  sub_261CFCA14();
  sub_261CFD554();
  v150 = v206;
  sub_261CFD534();
  v151 = sub_261CFD524();
  (*(*(v151 - 8) + 56))(v150, 0, 1, v151);
  sub_261AFB668(v150, v209, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCA14();
  sub_261AE6A40(v150, &qword_27FEDA9A8, &qword_261D034B0);
  if (v146)
  {
    v152 = v146;
  }

  else
  {
    v152 = v148;
  }

  *&v235 = v152;
  sub_261CFCA14();
  v153 = v220;
  v154 = v216;
  sub_261AFB668(v220, v216, &qword_27FEDA160, &qword_261D02220);
  sub_261AFB668(v154, v217, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  sub_261AE6A40(v154, &qword_27FEDA160, &qword_261D02220);
  v155 = v218;
  sub_261AFB668(v139, v218, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AFB668(v155, v141, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  sub_261AE6A40(v155, &qword_27FEDA9A0, &unk_261D034A0);
  v156 = type metadata accessor for SectionEntity();
  v157 = v214;
  (*(*(v156 - 8) + 56))(v214, 1, 1, v156);
  sub_261AFB668(v157, v215, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCA14();
  sub_261AE6A40(v157, &qword_27FEDA1E0, &unk_261D02300);
  v158 = MEMORY[0x277D84F90];
  if (v145)
  {
    v158 = v145;
  }

  *&v235 = v158;
  sub_261CFCA14();
  sub_261AE6A40(v219, &unk_27FEDE110, &unk_261D035B0);
  sub_261AE6A40(v221, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v222, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261AE6A40(v139, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261AE6A40(v153, &qword_27FEDA160, &qword_261D02220);
  sub_261AE6A40(v223, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v224, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v225, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CDF898(v226, v234);
  return sub_261CDF898(v227, type metadata accessor for AppEntityID);
}

uint64_t sub_261CD8004(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &qword_27FEDA9A8, &qword_261D034B0);
  v11 = *a2;
  sub_261AFB668(v10, v8, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCA14();
  return sub_261AE6A40(v10, &qword_27FEDA9A8, &qword_261D034B0);
}

uint64_t ReminderEntity.note.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A8, &qword_261D034B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *v1;
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA9A8, &qword_261D034B0);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDA9A8, &qword_261D034B0);
}

uint64_t (*ReminderEntity.note.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t (*ReminderEntity.tags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CD8314(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &qword_27FEDA160, &qword_261D02220);
  v11 = *(a2 + 16);
  sub_261AFB668(v10, v8, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  return sub_261AE6A40(v10, &qword_27FEDA160, &qword_261D02220);
}

uint64_t ReminderEntity.dueDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 16);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

uint64_t (*ReminderEntity.dueDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CD8558(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &qword_27FEDA9A0, &unk_261D034A0);
  v11 = *(a2 + 24);
  sub_261AFB668(v10, v8, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  return sub_261AE6A40(v10, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t ReminderEntity.recurrence.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 24);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*ReminderEntity.recurrence.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CD879C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &qword_27FEDA1E0, &unk_261D02300);
  v11 = *(a2 + 32);
  sub_261AFB668(v10, v8, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCA14();
  return sub_261AE6A40(v10, &qword_27FEDA1E0, &unk_261D02300);
}

uint64_t ReminderEntity.section.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = *(v1 + 32);
  sub_261AFB668(a1, &v8 - v6, &qword_27FEDA1E0, &unk_261D02300);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDA1E0, &unk_261D02300);
}

uint64_t (*ReminderEntity.section.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 32);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t (*ReminderEntity.subtasks.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 40);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CD8AAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FEDE3A0);
  __swift_project_value_buffer(v15, qword_27FEDE3A0);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6C4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t sub_261CD8DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v42 = v35 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v51 = v35 - v5;
  v50 = sub_261CFD674();
  v52 = *(v50 - 8);
  v6 = *(v52 + 64);
  MEMORY[0x28223BE20](v50);
  v39 = v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFFA44();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_261CFD6A4();
  v16 = *(v38 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v38);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE4F8, &unk_261D125E0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD220, &qword_261D0DB50);
  v37 = v18;
  v19 = *(*(v18 - 8) + 72);
  v20 = (*(*(v18 - 8) + 80) + 32) & ~*(*(v18 - 8) + 80);
  v40 = 2 * v19;
  v21 = swift_allocObject();
  v41 = v21;
  *(v21 + 16) = xmmword_261D01420;
  v22 = v21 + v20;
  v23 = *(v18 + 48);
  *(v21 + v20) = 0;
  v35[0] = v15;
  sub_261CFF9B4();
  v35[2] = v11;
  sub_261CFD874();
  v49 = *MEMORY[0x277CC9110];
  v36 = *(v52 + 104);
  v52 += 104;
  v24 = v39;
  v36(v39);
  sub_261CFD6C4();
  v25 = *(v16 + 56);
  v46 = v16 + 56;
  v47 = v25;
  v26 = v38;
  v25(v51, 1, 1, v38);
  v44 = sub_261CFD074();
  v27 = *(v44 - 8);
  v43 = *(v27 + 56);
  v45 = v27 + 56;
  v28 = v42;
  v43(v42, 1, 1, v44);
  v48 = v22;
  sub_261CFD0A4();
  v29 = v37;
  v35[1] = *(v37 + 48);
  *(v22 + v19) = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v30 = v36;
  (v36)(v24, v49, v50);
  sub_261CFD6C4();
  v31 = v51;
  v47(v51, 1, 1, v26);
  v43(v28, 1, 1, v44);
  sub_261CFD0A4();
  v32 = (v48 + v40);
  v40 = *(v29 + 48);
  *v32 = 2;
  sub_261CFF9B4();
  sub_261CFD874();
  (v30)(v24, v49, v50);
  sub_261CFD6C4();
  v47(v31, 1, 1, v26);
  v43(v28, 1, 1, v44);
  sub_261CFD0A4();
  v33 = sub_261C3AC70(v41);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDE3B8 = v33;
  return result;
}

uint64_t sub_261CD9490(uint64_t a1)
{
  v2 = sub_261B52470();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261CD9500(uint64_t a1)
{
  v2 = sub_261CDE180();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_261CD954C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FEDE3C0);
  __swift_project_value_buffer(v15, qword_27FEDE3C0);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6C4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t sub_261CD984C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v66 = v49 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = v49 - v5;
  v58 = sub_261CFD674();
  v6 = *(v58 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v58);
  v9 = v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD884();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFFA44();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_261CFD6A4();
  v19 = *(v18 - 8);
  v67 = v18;
  v68 = v19;
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE4F0, &unk_261D125D0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD210, &qword_261D0DB40);
  v62 = v21;
  v22 = *(v21 - 8);
  v59 = *(v22 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v55 = v24;
  *(v24 + 16) = xmmword_261D01430;
  v65 = v24 + v23;
  v25 = *(v21 + 48);
  *(v24 + v23) = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v57 = *MEMORY[0x277CC9110];
  v26 = v6 + 104;
  v64 = *(v6 + 104);
  v27 = v9;
  v64(v9);
  v28 = v13;
  sub_261CFD6C4();
  v56 = *(v68 + 56);
  v68 += 56;
  v29 = v54;
  v56(v54, 1, 1, v67);
  v60 = sub_261CFD074();
  v30 = *(v60 - 8);
  v61 = *(v30 + 56);
  v63 = v30 + 56;
  v61(v66, 1, 1, v60);
  v31 = v65;
  sub_261CFD0A4();
  v32 = v59;
  v33 = (v31 + v59);
  v34 = v62;
  v35 = *(v62 + 48);
  v51 = v33;
  v52 = v35;
  *v33 = 1;
  v49[1] = v17;
  sub_261CFF9B4();
  v49[2] = v28;
  sub_261CFD874();
  v50 = v27;
  v36 = v27;
  v37 = v57;
  v38 = v58;
  v53 = v26;
  (v64)(v36, v57, v58);
  sub_261CFD6C4();
  v39 = v56;
  v56(v29, 1, 1, v67);
  v61(v66, 1, 1, v60);
  sub_261CFD0A4();
  v51 = *(v34 + 48);
  v52 = 2 * v32;
  *(v65 + 2 * v32) = 2;
  sub_261CFF9B4();
  sub_261CFD874();
  v40 = v50;
  (v64)(v50, v37, v38);
  sub_261CFD6C4();
  v41 = v29;
  v39(v29, 1, 1, v67);
  v42 = v66;
  v44 = v60;
  v43 = v61;
  v61(v66, 1, 1, v60);
  v45 = v41;
  sub_261CFD0A4();
  v46 = (v65 + v52 + v59);
  v59 = *(v62 + 48);
  *v46 = 3;
  sub_261CFF9B4();
  sub_261CFD874();
  (v64)(v40, v57, v58);
  sub_261CFD6C4();
  v56(v45, 1, 1, v67);
  v43(v42, 1, 1, v44);
  sub_261CFD0A4();
  v47 = sub_261C3AE58(v55);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDE3D8 = v47;
  return result;
}

uint64_t sub_261CDA010(uint64_t a1)
{
  v2 = sub_261B524C4();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261CDA080(uint64_t a1)
{
  v2 = sub_261CDE51C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t ReminderEntity.id.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ReminderEntity() + 40);

  return sub_261AF92C8(a1, v3);
}

uint64_t sub_261CDA1A4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + *(type metadata accessor for ReminderEntity() + 44));
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.title.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 44));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDA300(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261B01DC4(a1, &v13 - v9, type metadata accessor for ListEntity);
  v11 = *(a2 + *(type metadata accessor for ReminderEntity() + 48));
  sub_261B01DC4(v10, v8, type metadata accessor for ListEntity);
  sub_261CFCA14();
  return sub_261CDF898(v10, type metadata accessor for ListEntity);
}

uint64_t ReminderEntity.list.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(type metadata accessor for ReminderEntity() + 48));
  sub_261B01DC4(a1, v6, type metadata accessor for ListEntity);
  sub_261CFCA14();
  return sub_261CDF898(a1, type metadata accessor for ListEntity);
}

uint64_t (*ReminderEntity.list.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 48));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t (*ReminderEntity.isCompleted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 52));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDA6AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &qword_27FEDAB68, &unk_261D11C90);
  v11 = *(a2 + *(type metadata accessor for ReminderEntity() + 56));
  sub_261AFB668(v10, v8, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  return sub_261AE6A40(v10, &qword_27FEDAB68, &unk_261D11C90);
}

uint64_t ReminderEntity.completionDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = *(v1 + *(type metadata accessor for ReminderEntity() + 56));
  sub_261AFB668(a1, v6, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDAB68, &unk_261D11C90);
}

uint64_t (*ReminderEntity.completionDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 56));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDA95C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &qword_27FEDAB68, &unk_261D11C90);
  v11 = *(a2 + *(type metadata accessor for ReminderEntity() + 60));
  sub_261AFB668(v10, v8, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  return sub_261AE6A40(v10, &qword_27FEDAB68, &unk_261D11C90);
}

uint64_t ReminderEntity.creationDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = *(v1 + *(type metadata accessor for ReminderEntity() + 60));
  sub_261AFB668(a1, v6, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDAB68, &unk_261D11C90);
}

uint64_t (*ReminderEntity.creationDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 60));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDAC0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &qword_27FEDAB68, &unk_261D11C90);
  v11 = *(a2 + *(type metadata accessor for ReminderEntity() + 64));
  sub_261AFB668(v10, v8, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  return sub_261AE6A40(v10, &qword_27FEDAB68, &unk_261D11C90);
}

uint64_t ReminderEntity.lastModifiedDate.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = *(v1 + *(type metadata accessor for ReminderEntity() + 64));
  sub_261AFB668(a1, v6, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDAB68, &unk_261D11C90);
}

uint64_t (*ReminderEntity.lastModifiedDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 64));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDAE84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &qword_27FEDA160, &qword_261D02220);
  v11 = *(a2 + *(type metadata accessor for ReminderEntity() + 68));
  sub_261AFB668(v10, v8, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  return sub_261AE6A40(v10, &qword_27FEDA160, &qword_261D02220);
}

uint64_t ReminderEntity.dueDateComponents.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = *(v1 + *(type metadata accessor for ReminderEntity() + 68));
  sub_261AFB668(a1, v6, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

uint64_t (*ReminderEntity.dueDateComponents.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 68));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

double sub_261CDB0FC@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReminderEntity() + 72));
  sub_261CFCA04();
  result = *&v5;
  *a2 = v5;
  a2[1] = v6;
  return result;
}

uint64_t sub_261CDB150(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a2 + *(type metadata accessor for ReminderEntity() + 72));
  sub_261B530B8(v3, v2);
  return sub_261CFCA14();
}

uint64_t ReminderEntity.earlyAlert.setter(__int128 *a1)
{
  v3 = *(v1 + *(type metadata accessor for ReminderEntity() + 72));
  v5 = *a1;
  v6 = a1[1];
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.earlyAlert.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 72));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t sub_261CDB2C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &qword_27FEDA9A0, &unk_261D034A0);
  v11 = *(a2 + *(type metadata accessor for ReminderEntity() + 76));
  sub_261AFB668(v10, v8, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  return sub_261AE6A40(v10, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t ReminderEntity.recurrenceRule.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = *(v1 + *(type metadata accessor for ReminderEntity() + 76));
  sub_261AFB668(a1, v6, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*ReminderEntity.recurrenceRule.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 76));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDB538(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a2 + *(type metadata accessor for ReminderEntity() + 80));
  sub_261B5306C(v3);
  return sub_261CFCA14();
}

uint64_t ReminderEntity.spatialEventTrigger.setter(__int128 *a1)
{
  v5 = *a1;
  v2 = *(a1 + 2);
  v3 = *(v1 + *(type metadata accessor for ReminderEntity() + 80));
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.spatialEventTrigger.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 80));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDB6B0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &unk_27FEDB0B0, &unk_261D035D0);
  v11 = *(a2 + *(type metadata accessor for ReminderEntity() + 84));
  sub_261AFB668(v10, v8, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  return sub_261AE6A40(v10, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t ReminderEntity.contactPerson.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = *(v1 + *(type metadata accessor for ReminderEntity() + 84));
  sub_261AFB668(a1, v6, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*ReminderEntity.contactPerson.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 84));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDB928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &unk_27FEDB0B0, &unk_261D035D0);
  v11 = *(a2 + *(type metadata accessor for ReminderEntity() + 88));
  sub_261AFB668(v10, v8, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  return sub_261AE6A40(v10, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t ReminderEntity.assignedPerson.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = *(v1 + *(type metadata accessor for ReminderEntity() + 88));
  sub_261AFB668(a1, v6, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*ReminderEntity.assignedPerson.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 88));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDBBA0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + *(type metadata accessor for ReminderEntity() + 92));
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.notes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 92));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t ReminderEntity.flags.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + *(type metadata accessor for ReminderEntity() + 96));
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.flags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 96));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t ReminderEntity.priorityLevel.setter(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + *(type metadata accessor for ReminderEntity() + 100));
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.priorityLevel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 100));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDBEEC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &unk_27FEDE110, &unk_261D035B0);
  v11 = *(a2 + *(type metadata accessor for ReminderEntity() + 104));
  sub_261AFB668(v10, v8, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCA14();
  return sub_261AE6A40(v10, &unk_27FEDE110, &unk_261D035B0);
}

uint64_t ReminderEntity.parent.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = *(v1 + *(type metadata accessor for ReminderEntity() + 104));
  sub_261AFB668(a1, v6, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &unk_27FEDE110, &unk_261D035B0);
}

uint64_t (*ReminderEntity.parent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 104));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDC164(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ReminderEntity() + 108));
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 108));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDC2B8()
{
  v1 = *(v0 + *(type metadata accessor for ReminderEntity() + 108));
  sub_261CFCA04();
  return v3;
}

uint64_t (*ReminderEntity.reminderSubtasks.modify(uint64_t a1))(void *a1, char a2)
{
  *(a1 + 16) = *(v1 + *(type metadata accessor for ReminderEntity() + 108));
  sub_261CFCA04();
  return sub_261CDC394;
}

uint64_t sub_261CDC394(void *a1, char a2)
{
  a1[1] = *a1;
  v3 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_261CFCA14();
  }

  sub_261CFD104();
  sub_261CFCA14();
  v4 = *a1;
}

uint64_t sub_261CDC408(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ReminderEntity() + 112));
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.hashtags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 112));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDC558(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ReminderEntity() + 116));
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.images.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 116));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDC6A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for ReminderEntity() + 120));
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.urls.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for ReminderEntity() + 120));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDC7F8()
{
  v32 = sub_261CFF9A4();
  v0 = *(v32 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_261CFFA24();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = v26 - v7;
  v8 = sub_261CFD674();
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFD884();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFFA44();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_261CFD6A4();
  v29 = *(v17 - 8);
  v30 = v17;
  v18 = *(v29 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = sub_261CFD234();
  __swift_allocate_value_buffer(v19, qword_27FEDE3E0);
  v28 = __swift_project_value_buffer(v19, qword_27FEDE3E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v20 = *MEMORY[0x277CC9110];
  v21 = *(v9 + 104);
  v26[1] = v9 + 104;
  v21(v12, v20, v8);
  sub_261CFD6C4();
  sub_261CFFA14();
  sub_261CFFA04();
  v23 = v31;
  v22 = v32;
  (*(v0 + 104))(v31, *MEMORY[0x277CC9BD8], v32);
  sub_261CFF9C4();
  (*(v0 + 8))(v23, v22);
  sub_261CFFA04();
  sub_261CFFA34();
  sub_261CFD874();
  v21(v12, v20, v27);
  v24 = v33;
  sub_261CFD6C4();
  (*(v29 + 56))(v24, 0, 1, v30);
  return sub_261CFD224();
}

uint64_t static ReminderEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D60 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE3E0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ReminderEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9D60 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE3E0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ReminderEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27FED9D60 != -1)
  {
    swift_once();
  }

  v0 = sub_261CFD234();
  __swift_project_value_buffer(v0, qword_27FEDE3E0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261CDCED0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D60 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE3E0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261CDCF90(uint64_t a1)
{
  if (qword_27FED9D60 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE3E0);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t ReminderEntity.displayRepresentation.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v22 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v22 - v7;
  v9 = sub_261CFFA24();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v22 - v17;
  sub_261CFFA14();
  sub_261CFFA04();
  v19 = *(v0 + *(type metadata accessor for ReminderEntity() + 44));
  sub_261CFCA04();
  sub_261CFF9E4();

  sub_261CFFA04();
  sub_261CFD684();
  (*(v12 + 16))(v16, v18, v11);
  (*(v12 + 56))(v8, 1, 1, v11);
  v20 = sub_261CFD074();
  (*(*(v20 - 8) + 56))(v4, 1, 1, v20);
  sub_261CFD0A4();
  return (*(v12 + 8))(v18, v11);
}

uint64_t ReminderEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450) - 8) + 64) + 15;
  v3[7] = swift_task_alloc();
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0) - 8) + 64) + 15;
  v3[8] = swift_task_alloc();
  v6 = *(*(sub_261CFFA24() - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v7 = sub_261CFD004();
  v3[10] = v7;
  v8 = *(v7 - 8);
  v3[11] = v8;
  v9 = *(v8 + 64) + 15;
  v3[12] = swift_task_alloc();
  v10 = sub_261CFD6A4();
  v3[13] = v10;
  v11 = *(v10 - 8);
  v3[14] = v11;
  v12 = *(v11 + 64) + 15;
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261CDD4F8, 0, 0);
}

uint64_t sub_261CDD4F8()
{
  v1 = v0[16];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];
  v5 = v0[5];
  sub_261CFD664();
  sub_261CFCFE4();
  sub_261AE83CC(&qword_27FED9F90, MEMORY[0x277CBA238]);
  LOBYTE(v5) = sub_261D001B4();
  (*(v3 + 8))(v2, v4);
  if (v5)
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[13];
    v9 = v0[14];
    v10 = v0[9];
    v11 = v0[6];
    sub_261CFFA14();
    sub_261CFFA04();
    v12 = *(v11 + *(type metadata accessor for ReminderEntity() + 44));
    sub_261CFCA04();
    v13 = v0[2];
    v14 = v0[3];
    sub_261CFF9E4();

    sub_261CFFA04();
    sub_261CFD684();
    (*(v9 + 8))(v6, v8);
    (*(v9 + 32))(v6, v7, v8);
  }

  v15 = v0[16];
  v16 = v0[13];
  v17 = v0[14];
  v18 = v0[12];
  v19 = v0[8];
  v20 = v0[9];
  v21 = v0[7];
  v22 = v0[4];
  (*(v17 + 16))(v0[15], v15, v16);
  (*(v17 + 56))(v19, 1, 1, v16);
  v23 = sub_261CFD074();
  (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
  sub_261CFD0A4();
  (*(v17 + 8))(v15, v16);

  v24 = v0[1];

  return v24();
}

uint64_t sub_261CDD7A0(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 44));
  sub_261CFCA04();
  return v4;
}

uint64_t sub_261CDD800(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 52));
  sub_261CFCA04();
  return v4;
}

uint64_t sub_261CDD900(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 92));
  sub_261CFCA04();
  return v4;
}

uint64_t sub_261CDD9B0@<X0>(void *a1@<X8>)
{
  if (qword_27FED9D68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDE3F8 + 1);
  *a1 = xmmword_27FEDE3F8;
  a1[1] = v2;
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

uint64_t static ReminderEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9D68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDE3F8 + 1);
  *a1 = xmmword_27FEDE3F8;
  a1[1] = v2;
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

uint64_t sub_261CDDAC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(a1 + 108));
  result = sub_261CFCA04();
  *a2 = v6;
  return result;
}

uint64_t sub_261CDDB38(uint64_t a1)
{
  v2 = sub_261AE83CC(&qword_280D22358, type metadata accessor for ReminderEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261CDDBB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return ReminderEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_261CDDC60(uint64_t a1)
{
  v2 = sub_261AE83CC(&qword_280D22330, type metadata accessor for ReminderEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261CDDCDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  *&xmmword_27FEDE3F8 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDE90, &qword_261D11470);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *(&xmmword_27FEDE3F8 + 1) = result;
  return result;
}

uint64_t static ReminderEntity.defaultQuery.setter(__int128 *a1)
{
  v2 = *a1;
  if (qword_27FED9D68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27FEDE3F8 = v2;
}

uint64_t (*static ReminderEntity.defaultQuery.modify())()
{
  if (qword_27FED9D68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_261CDDEB4()
{
  result = qword_27FEDE408;
  if (!qword_27FEDE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE408);
  }

  return result;
}

unint64_t sub_261CDDF08(uint64_t a1)
{
  result = sub_261CDDF30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261CDDF30()
{
  result = qword_27FEDE410;
  if (!qword_27FEDE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE410);
  }

  return result;
}

unint64_t sub_261CDDF88()
{
  result = qword_27FEDE418;
  if (!qword_27FEDE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE418);
  }

  return result;
}

unint64_t sub_261CDDFE0()
{
  result = qword_27FEDE420;
  if (!qword_27FEDE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE420);
  }

  return result;
}

unint64_t sub_261CDE038()
{
  result = qword_27FEDE428;
  if (!qword_27FEDE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE428);
  }

  return result;
}

unint64_t sub_261CDE0D4()
{
  result = qword_27FEDE440;
  if (!qword_27FEDE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE440);
  }

  return result;
}

unint64_t sub_261CDE128()
{
  result = qword_280D22368;
  if (!qword_280D22368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22368);
  }

  return result;
}

unint64_t sub_261CDE180()
{
  result = qword_27FEDE448;
  if (!qword_27FEDE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE448);
  }

  return result;
}

unint64_t sub_261CDE1F0()
{
  result = qword_27FEDE450;
  if (!qword_27FEDE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE450);
  }

  return result;
}

unint64_t sub_261CDE24C()
{
  result = qword_27FEDE458;
  if (!qword_27FEDE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE458);
  }

  return result;
}

unint64_t sub_261CDE2A4()
{
  result = qword_27FEDE460;
  if (!qword_27FEDE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE460);
  }

  return result;
}

unint64_t sub_261CDE2F8(uint64_t a1)
{
  result = sub_261CDE320();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261CDE320()
{
  result = qword_27FEDE468;
  if (!qword_27FEDE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE468);
  }

  return result;
}

unint64_t sub_261CDE378()
{
  result = qword_27FEDE470;
  if (!qword_27FEDE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE470);
  }

  return result;
}

unint64_t sub_261CDE3D0()
{
  result = qword_27FEDE478;
  if (!qword_27FEDE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE478);
  }

  return result;
}

unint64_t sub_261CDE428()
{
  result = qword_27FEDE480;
  if (!qword_27FEDE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE480);
  }

  return result;
}

unint64_t sub_261CDE4C4()
{
  result = qword_27FEDE498;
  if (!qword_27FEDE498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE498);
  }

  return result;
}

unint64_t sub_261CDE51C()
{
  result = qword_27FEDE4A0;
  if (!qword_27FEDE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE4A0);
  }

  return result;
}

unint64_t sub_261CDE5E0()
{
  result = qword_27FEDE4A8;
  if (!qword_27FEDE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE4A8);
  }

  return result;
}

unint64_t sub_261CDE63C()
{
  result = qword_27FEDE4B0;
  if (!qword_27FEDE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE4B0);
  }

  return result;
}

unint64_t sub_261CDE694()
{
  result = qword_27FEDE4B8;
  if (!qword_27FEDE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE4B8);
  }

  return result;
}

unint64_t sub_261CDE734()
{
  result = qword_27FEDE4C8;
  if (!qword_27FEDE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE4C8);
  }

  return result;
}

unint64_t sub_261CDE78C()
{
  result = qword_27FEDE4D0;
  if (!qword_27FEDE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE4D0);
  }

  return result;
}

uint64_t sub_261CDE7E0(uint64_t a1)
{
  result = sub_261AE83CC(&qword_27FEDE4D8, type metadata accessor for ReminderEntity);
  *(a1 + 8) = result;
  return result;
}

uint64_t keypath_get_57Tm@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for ReminderEntity() + 108));
  result = sub_261CFCA04();
  *a2 = v5;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ReminderEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v7 = a1;
    v8 = a2[2];
    a1[1] = a2[1];
    a1[2] = v8;
    v35 = a2[4];
    a1[3] = a2[3];
    a1[4] = v35;
    a1[5] = a2[5];
    v9 = a3[10];
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = *(a2 + v9 + 8);
    *v10 = *(a2 + v9);
    *(v10 + 1) = v12;
    v34 = type metadata accessor for AppEntityID();
    v13 = *(v34 + 20);
    v14 = sub_261CFD844();
    v33 = *(*(v14 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFD104();
    v33(&v10[v13], &v11[v13], v14);
    v15 = *(v34 + 24);
    v16 = &v10[v15];
    v17 = &v11[v15];
    v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v21 = sub_261CFD4E4();
      (*(*(v21 - 8) + 16))(v16, v17, v21);
      v16[*(v18 + 20)] = v17[*(v18 + 20)];
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    v22 = a3[12];
    *(v7 + a3[11]) = *(a2 + a3[11]);
    *(v7 + v22) = *(a2 + v22);
    v23 = a3[14];
    *(v7 + a3[13]) = *(a2 + a3[13]);
    *(v7 + v23) = *(a2 + v23);
    v24 = a3[16];
    *(v7 + a3[15]) = *(a2 + a3[15]);
    *(v7 + v24) = *(a2 + v24);
    v25 = a3[18];
    *(v7 + a3[17]) = *(a2 + a3[17]);
    *(v7 + v25) = *(a2 + v25);
    v26 = a3[20];
    *(v7 + a3[19]) = *(a2 + a3[19]);
    *(v7 + v26) = *(a2 + v26);
    v27 = a3[22];
    *(v7 + a3[21]) = *(a2 + a3[21]);
    *(v7 + v27) = *(a2 + v27);
    v28 = a3[24];
    *(v7 + a3[23]) = *(a2 + a3[23]);
    *(v7 + v28) = *(a2 + v28);
    v29 = a3[26];
    *(v7 + a3[25]) = *(a2 + a3[25]);
    *(v7 + v29) = *(a2 + v29);
    v30 = a3[28];
    *(v7 + a3[27]) = *(a2 + a3[27]);
    *(v7 + v30) = *(a2 + v30);
    v31 = a3[30];
    *(v7 + a3[29]) = *(a2 + a3[29]);
    *(v7 + v31) = *(a2 + v31);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
  }

  sub_261CFCDA4();
  return v7;
}

uint64_t destroy for ReminderEntity(uint64_t *a1, int *a2)
{
  v4 = *a1;

  v5 = a1[1];

  v6 = a1[2];

  v7 = a1[3];

  v8 = a1[4];

  v9 = a1[5];

  v10 = a1 + a2[10];
  v11 = *(v10 + 1);

  v12 = type metadata accessor for AppEntityID();
  v13 = *(v12 + 20);
  v14 = sub_261CFD844();
  (*(*(v14 - 8) + 8))(&v10[v13], v14);
  v15 = *(v12 + 24);
  v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if (!(*(*(v16 - 8) + 48))(&v10[v15], 1, v16))
  {
    v17 = sub_261CFD4E4();
    (*(*(v17 - 8) + 8))(&v10[v15], v17);
  }

  v18 = *(a1 + a2[11]);

  v19 = *(a1 + a2[12]);

  v20 = *(a1 + a2[13]);

  v21 = *(a1 + a2[14]);

  v22 = *(a1 + a2[15]);

  v23 = *(a1 + a2[16]);

  v24 = *(a1 + a2[17]);

  v25 = *(a1 + a2[18]);

  v26 = *(a1 + a2[19]);

  v27 = *(a1 + a2[20]);

  v28 = *(a1 + a2[21]);

  v29 = *(a1 + a2[22]);

  v30 = *(a1 + a2[23]);

  v31 = *(a1 + a2[24]);

  v32 = *(a1 + a2[25]);

  v33 = *(a1 + a2[26]);

  v34 = *(a1 + a2[27]);

  v35 = *(a1 + a2[28]);

  v36 = *(a1 + a2[29]);

  v37 = *(a1 + a2[30]);
}

void *initializeWithCopy for ReminderEntity(void *a1, void *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  v7 = a2[3];
  a1[2] = a2[2];
  a1[3] = v7;
  v8 = a2[5];
  a1[4] = a2[4];
  a1[5] = v8;
  v9 = a3[10];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(a2 + v9 + 8);
  *v10 = *(a2 + v9);
  *(v10 + 1) = v12;
  v34 = type metadata accessor for AppEntityID();
  v13 = *(v34 + 20);
  v14 = sub_261CFD844();
  v33 = *(*(v14 - 8) + 16);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v33(&v10[v13], &v11[v13], v14);
  v15 = *(v34 + 24);
  v16 = &v10[v15];
  v17 = &v11[v15];
  v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v16, v17, *(*(v20 - 8) + 64));
  }

  else
  {
    v21 = sub_261CFD4E4();
    (*(*(v21 - 8) + 16))(v16, v17, v21);
    v16[*(v18 + 20)] = v17[*(v18 + 20)];
    (*(v19 + 56))(v16, 0, 1, v18);
  }

  v22 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v22) = *(a2 + v22);
  v23 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v23) = *(a2 + v23);
  v24 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[18];
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + v25) = *(a2 + v25);
  v26 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v26) = *(a2 + v26);
  v27 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  *(a1 + v27) = *(a2 + v27);
  v28 = a3[24];
  *(a1 + a3[23]) = *(a2 + a3[23]);
  *(a1 + v28) = *(a2 + v28);
  v29 = a3[26];
  *(a1 + a3[25]) = *(a2 + a3[25]);
  *(a1 + v29) = *(a2 + v29);
  v30 = a3[28];
  *(a1 + a3[27]) = *(a2 + a3[27]);
  *(a1 + v30) = *(a2 + v30);
  v31 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + v31) = *(a2 + v31);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for ReminderEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v7 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  v8 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v9 = a1[3];
  a1[3] = a2[3];
  sub_261CFCDA4();

  v10 = a1[4];
  a1[4] = a2[4];
  sub_261CFCDA4();

  v11 = a1[5];
  a1[5] = a2[5];
  sub_261CFCDA4();

  v12 = a3[10];
  v13 = a1 + v12;
  v14 = a2 + v12;
  *v13 = *(a2 + v12);
  v15 = *(a1 + v12 + 8);
  *(v13 + 1) = *(a2 + v12 + 8);
  sub_261CFD104();

  v16 = type metadata accessor for AppEntityID();
  v17 = *(v16 + 20);
  v18 = sub_261CFD844();
  (*(*(v18 - 8) + 24))(&v13[v17], &v14[v17], v18);
  v19 = *(v16 + 24);
  v20 = &v13[v19];
  v21 = &v14[v19];
  v22 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  LODWORD(v17) = v24(v20, 1, v22);
  v25 = v24(v21, 1, v22);
  if (!v17)
  {
    if (!v25)
    {
      v70 = sub_261CFD4E4();
      (*(*(v70 - 8) + 24))(v20, v21, v70);
      v20[*(v22 + 20)] = v21[*(v22 + 20)];
      goto LABEL_7;
    }

    sub_261CDF898(v20, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v25)
  {
LABEL_6:
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v20, v21, *(*(v27 - 8) + 64));
    goto LABEL_7;
  }

  v26 = sub_261CFD4E4();
  (*(*(v26 - 8) + 16))(v20, v21, v26);
  v20[*(v22 + 20)] = v21[*(v22 + 20)];
  (*(v23 + 56))(v20, 0, 1, v22);
LABEL_7:
  v28 = a3[11];
  v29 = *(a1 + v28);
  *(a1 + v28) = *(a2 + v28);
  sub_261CFCDA4();

  v30 = a3[12];
  v31 = *(a1 + v30);
  *(a1 + v30) = *(a2 + v30);
  sub_261CFCDA4();

  v32 = a3[13];
  v33 = *(a1 + v32);
  *(a1 + v32) = *(a2 + v32);
  sub_261CFCDA4();

  v34 = a3[14];
  v35 = *(a1 + v34);
  *(a1 + v34) = *(a2 + v34);
  sub_261CFCDA4();

  v36 = a3[15];
  v37 = *(a1 + v36);
  *(a1 + v36) = *(a2 + v36);
  sub_261CFCDA4();

  v38 = a3[16];
  v39 = *(a1 + v38);
  *(a1 + v38) = *(a2 + v38);
  sub_261CFCDA4();

  v40 = a3[17];
  v41 = *(a1 + v40);
  *(a1 + v40) = *(a2 + v40);
  sub_261CFCDA4();

  v42 = a3[18];
  v43 = *(a1 + v42);
  *(a1 + v42) = *(a2 + v42);
  sub_261CFCDA4();

  v44 = a3[19];
  v45 = *(a1 + v44);
  *(a1 + v44) = *(a2 + v44);
  sub_261CFCDA4();

  v46 = a3[20];
  v47 = *(a1 + v46);
  *(a1 + v46) = *(a2 + v46);
  sub_261CFCDA4();

  v48 = a3[21];
  v49 = *(a1 + v48);
  *(a1 + v48) = *(a2 + v48);
  sub_261CFCDA4();

  v50 = a3[22];
  v51 = *(a1 + v50);
  *(a1 + v50) = *(a2 + v50);
  sub_261CFCDA4();

  v52 = a3[23];
  v53 = *(a1 + v52);
  *(a1 + v52) = *(a2 + v52);
  sub_261CFCDA4();

  v54 = a3[24];
  v55 = *(a1 + v54);
  *(a1 + v54) = *(a2 + v54);
  sub_261CFCDA4();

  v56 = a3[25];
  v57 = *(a1 + v56);
  *(a1 + v56) = *(a2 + v56);
  sub_261CFCDA4();

  v58 = a3[26];
  v59 = *(a1 + v58);
  *(a1 + v58) = *(a2 + v58);
  sub_261CFCDA4();

  v60 = a3[27];
  v61 = *(a1 + v60);
  *(a1 + v60) = *(a2 + v60);
  sub_261CFCDA4();

  v62 = a3[28];
  v63 = *(a1 + v62);
  *(a1 + v62) = *(a2 + v62);
  sub_261CFCDA4();

  v64 = a3[29];
  v65 = *(a1 + v64);
  *(a1 + v64) = *(a2 + v64);
  sub_261CFCDA4();

  v66 = a3[30];
  v67 = *(a2 + v66);
  v68 = *(a1 + v66);
  *(a1 + v66) = v67;
  sub_261CFCDA4();

  return a1;
}

uint64_t sub_261CDF898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *initializeWithTake for ReminderEntity(_OWORD *a1, _OWORD *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  a1[2] = a2[2];
  v7 = a3[10];
  v8 = a1 + v7;
  v9 = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  v10 = type metadata accessor for AppEntityID();
  v11 = *(v10 + 20);
  v12 = sub_261CFD844();
  (*(*(v12 - 8) + 32))(&v8[v11], &v9[v11], v12);
  v13 = *(v10 + 24);
  v14 = &v8[v13];
  v15 = &v9[v13];
  v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v14, v15, *(*(v18 - 8) + 64));
  }

  else
  {
    v19 = sub_261CFD4E4();
    (*(*(v19 - 8) + 32))(v14, v15, v19);
    v14[*(v16 + 20)] = v15[*(v16 + 20)];
    (*(v17 + 56))(v14, 0, 1, v16);
  }

  v20 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v20) = *(a2 + v20);
  v21 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v21) = *(a2 + v21);
  v22 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v22) = *(a2 + v22);
  v23 = a3[18];
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + v23) = *(a2 + v23);
  v24 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  *(a1 + v25) = *(a2 + v25);
  v26 = a3[24];
  *(a1 + a3[23]) = *(a2 + a3[23]);
  *(a1 + v26) = *(a2 + v26);
  v27 = a3[26];
  *(a1 + a3[25]) = *(a2 + a3[25]);
  *(a1 + v27) = *(a2 + v27);
  v28 = a3[28];
  *(a1 + a3[27]) = *(a2 + a3[27]);
  *(a1 + v28) = *(a2 + v28);
  v29 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + v29) = *(a2 + v29);
  return a1;
}

uint64_t *assignWithTake for ReminderEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a1[1];
  a1[1] = a2[1];

  v8 = a1[2];
  a1[2] = a2[2];

  v9 = a1[3];
  a1[3] = a2[3];

  v10 = a1[4];
  a1[4] = a2[4];

  v11 = a1[5];
  a1[5] = a2[5];

  v12 = a3[10];
  v13 = a1 + v12;
  v14 = a2 + v12;
  v15 = *(a2 + v12 + 8);
  v16 = *(a1 + v12 + 8);
  *v13 = *(a2 + v12);
  *(v13 + 1) = v15;

  v17 = type metadata accessor for AppEntityID();
  v18 = *(v17 + 20);
  v19 = sub_261CFD844();
  (*(*(v19 - 8) + 40))(&v13[v18], &v14[v18], v19);
  v20 = *(v17 + 24);
  v21 = &v13[v20];
  v22 = &v14[v20];
  v23 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v24 = *(v23 - 8);
  v25 = *(v24 + 48);
  LODWORD(v18) = v25(v21, 1, v23);
  v26 = v25(v22, 1, v23);
  if (!v18)
  {
    if (!v26)
    {
      v70 = sub_261CFD4E4();
      (*(*(v70 - 8) + 40))(v21, v22, v70);
      v21[*(v23 + 20)] = v22[*(v23 + 20)];
      goto LABEL_7;
    }

    sub_261CDF898(v21, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v26)
  {
LABEL_6:
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v21, v22, *(*(v28 - 8) + 64));
    goto LABEL_7;
  }

  v27 = sub_261CFD4E4();
  (*(*(v27 - 8) + 32))(v21, v22, v27);
  v21[*(v23 + 20)] = v22[*(v23 + 20)];
  (*(v24 + 56))(v21, 0, 1, v23);
LABEL_7:
  v29 = a3[11];
  v30 = *(a1 + v29);
  *(a1 + v29) = *(a2 + v29);

  v31 = a3[12];
  v32 = *(a1 + v31);
  *(a1 + v31) = *(a2 + v31);

  v33 = a3[13];
  v34 = *(a1 + v33);
  *(a1 + v33) = *(a2 + v33);

  v35 = a3[14];
  v36 = *(a1 + v35);
  *(a1 + v35) = *(a2 + v35);

  v37 = a3[15];
  v38 = *(a1 + v37);
  *(a1 + v37) = *(a2 + v37);

  v39 = a3[16];
  v40 = *(a1 + v39);
  *(a1 + v39) = *(a2 + v39);

  v41 = a3[17];
  v42 = *(a1 + v41);
  *(a1 + v41) = *(a2 + v41);

  v43 = a3[18];
  v44 = *(a1 + v43);
  *(a1 + v43) = *(a2 + v43);

  v45 = a3[19];
  v46 = *(a1 + v45);
  *(a1 + v45) = *(a2 + v45);

  v47 = a3[20];
  v48 = *(a1 + v47);
  *(a1 + v47) = *(a2 + v47);

  v49 = a3[21];
  v50 = *(a1 + v49);
  *(a1 + v49) = *(a2 + v49);

  v51 = a3[22];
  v52 = *(a1 + v51);
  *(a1 + v51) = *(a2 + v51);

  v53 = a3[23];
  v54 = *(a1 + v53);
  *(a1 + v53) = *(a2 + v53);

  v55 = a3[24];
  v56 = *(a1 + v55);
  *(a1 + v55) = *(a2 + v55);

  v57 = a3[25];
  v58 = *(a1 + v57);
  *(a1 + v57) = *(a2 + v57);

  v59 = a3[26];
  v60 = *(a1 + v59);
  *(a1 + v59) = *(a2 + v59);

  v61 = a3[27];
  v62 = *(a1 + v61);
  *(a1 + v61) = *(a2 + v61);

  v63 = a3[28];
  v64 = *(a1 + v63);
  *(a1 + v63) = *(a2 + v63);

  v65 = a3[29];
  v66 = *(a1 + v65);
  *(a1 + v65) = *(a2 + v65);

  v67 = a3[30];
  v68 = *(a1 + v67);
  *(a1 + v67) = *(a2 + v67);

  return a1;
}

__n128 sub_261CE0010(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
    sub_261CFD104();
  }

  return result;
}

void *_s17TriggerSyncReasonOwca(void *a1, void *a2)
{
  v3 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v3 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      sub_261CFD104();
      return a1;
    }

    v6 = *a2;
LABEL_8:
    *a1 = v6;
    return a1;
  }

  if (v3 < 0xFFFFFFFF)
  {
    v4 = a1[1];

    v6 = *a2;
    goto LABEL_8;
  }

  *a1 = *a2;
  a1[1] = a2[1];
  sub_261CFD104();

  return a1;
}

_OWORD *_s17TriggerSyncReasonOwta(_OWORD *result, uint64_t a2)
{
  if (*(result + 1) < 0xFFFFFFFFuLL)
  {
    *result = *a2;
  }

  else
  {
    v2 = *(a2 + 8);
    if (v2 < 0xFFFFFFFF)
    {
      v3 = result;
      v4 = *(result + 1);

      *v3 = *a2;
    }

    else
    {
      *result = *a2;
      *(result + 1) = v2;
      v3 = result;
    }

    return v3;
  }

  return result;
}

uint64_t _s17TriggerSyncReasonOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t _s17TriggerSyncReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_261CE022C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t ListEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA120, &qword_261D02820);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t ListEntityQuery.suggestedEntities()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261CE0308, 0, 0);
}

uint64_t sub_261CE0308()
{
  v1 = v0[3];
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_261B6EAB8;
  v3 = v0[2];
  v4 = v0[3];

  return sub_261C523B8(v3, "ListEntityQuery.suggestedEntities", 33, 2, v4);
}

uint64_t ListEntityQuery.defaultListEntity()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261CE03F0, 0, 0);
}

uint64_t sub_261CE03F0()
{
  v1 = v0[3];
  sub_261CFCDA4();
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_261B6CCA4;
  v3 = v0[2];
  v4 = v0[3];

  return sub_261C538B0(v3, "ListEntityQuery.defaultListEntity", 33, 2, v4);
}

uint64_t ListEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261CE04D8, 0, 0);
}

uint64_t sub_261CE04D8()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_261B0E3F8;
  v5 = v0[2];
  v4 = v0[3];

  return sub_261C61738("ListEntityQuery.entitiesForIdentifiers", 38, 2, v4, v5);
}

uint64_t sub_261CE05A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x2822009F8](sub_261CE05C8, 0, 0);
}

uint64_t sub_261CE05C8()
{
  v1 = *(v0 + 72);
  sub_261B6C4A4(0xD000000000000013, 0x8000000261D1B3A0);
  sub_261CFC664();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 56) = v1;
  *(v0 + 96) = 0;
  v4 = *(v3 + 24);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_261CE0740;
  v7 = *(v0 + 64);

  return v9(v7, v0 + 56, v0 + 96, v2, v3);
}

uint64_t sub_261CE0740()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_261CE1D6C;
  }

  else
  {
    v3 = sub_261CE1D70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261CE0854(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x2822009F8](sub_261CE0874, 0, 0);
}

uint64_t sub_261CE0874()
{
  v1 = *(v0 + 72);
  sub_261B6C4A4(0xD000000000000013, 0x8000000261D23660);
  sub_261CFC664();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 56) = v1;
  *(v0 + 96) = 0;
  v4 = *(v3 + 32);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_261CE0740;
  v7 = *(v0 + 64);

  return v9(v7, v0 + 56, v0 + 96, v2, v3);
}

uint64_t ListEntityQuery.SuggestionCriteria.hashValue.getter()
{
  v1 = *v0;
  sub_261D006C4();
  MEMORY[0x26671CDA0](v1);
  return sub_261D006F4();
}

uint64_t sub_261CE0A74(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 97) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  return MEMORY[0x2822009F8](sub_261CE0A98, 0, 0);
}

uint64_t sub_261CE0A98()
{
  v1 = *(v0 + 97);
  v2 = *(v0 + 72);
  sub_261B6C4A4(0xD00000000000001CLL, 0x8000000261D23640);
  sub_261CFC664();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *(v0 + 56) = v2;
  *(v0 + 96) = v1;
  v5 = *(v4 + 24);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_261CE0740;
  v8 = *(v0 + 64);

  return v10(v8, v0 + 56, v0 + 96, v3, v4);
}

uint64_t sub_261CE0C1C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 97) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  return MEMORY[0x2822009F8](sub_261CE0C40, 0, 0);
}

uint64_t sub_261CE0C40()
{
  v1 = *(v0 + 97);
  v2 = *(v0 + 72);
  sub_261CFC664();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *(v0 + 56) = v2;
  *(v0 + 96) = v1;
  v5 = *(v4 + 32);
  v10 = (v5 + *v5);
  v6 = v5[1];
  v7 = swift_task_alloc();
  *(v0 + 80) = v7;
  *v7 = v0;
  v7[1] = sub_261CE0DA8;
  v8 = *(v0 + 64);

  return v10(v8, v0 + 56, v0 + 96, v3, v4);
}

uint64_t sub_261CE0DA8()
{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = sub_261CE0EBC;
  }

  else
  {
    v3 = sub_261B6D1F0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261CE0EBC()
{
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v1 = v0[1];
  v2 = v0[11];

  return v1();
}

uint64_t sub_261CE0F20@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA120, &qword_261D02820);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t sub_261CE0FAC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261CE0FD0, 0, 0);
}

uint64_t sub_261CE0FD0()
{
  v2 = v0[2];
  v1 = v0[3];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_261B0D104;
  v5 = v0[2];
  v4 = v0[3];

  return sub_261C61738("ListEntityQuery.entitiesForIdentifiers", 38, 2, v4, v5);
}

uint64_t sub_261CE10A0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261CE0308, 0, 0);
}

uint64_t sub_261CE10C4(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_261B0054C();
  *v6 = v2;
  v6[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t ListEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_261CE11A0, 0, 0);
}

uint64_t sub_261CE11A0()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_261B6EABC;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_261C52BB8(v6, "ListEntityQuery.entitiesMatchingString", 38, 2, v4, v7, v5);
}

uint64_t sub_261CE1274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_261CE1298, 0, 0);
}

uint64_t sub_261CE1298()
{
  v1 = v0[9];
  sub_261B6C4A4(0xD000000000000013, 0x8000000261D19BA0);
  sub_261CFC664();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[7] = v1;
  v4 = *(v3 + 16);
  v11 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_261CE1408;
  v7 = v0[10];
  v8 = v0[11];
  v9 = v0[8];

  return (v11)(v9, v0 + 7, v7, v8, v2, v3);
}

uint64_t sub_261CE1408()
{
  v2 = *(*v1 + 96);
  v5 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = sub_261B6D254;
  }

  else
  {
    v3 = sub_261CE1D70;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_261CE151C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_261CE1544, 0, 0);
}

uint64_t sub_261CE1544()
{
  v2 = v0[4];
  v1 = v0[5];
  sub_261CFCDA4();
  sub_261CFD104();
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_261B6D3B4;
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_261C52BB8(v6, "ListEntityQuery.entitiesMatchingString", 38, 2, v4, v7, v5);
}

unint64_t sub_261CE161C()
{
  result = qword_27FEDE500;
  if (!qword_27FEDE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE500);
  }

  return result;
}

unint64_t sub_261CE1674()
{
  result = qword_27FEDE508;
  if (!qword_27FEDE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE508);
  }

  return result;
}

unint64_t sub_261CE16CC()
{
  result = qword_27FEDE510;
  if (!qword_27FEDE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE510);
  }

  return result;
}

unint64_t sub_261CE1758()
{
  result = qword_27FEDE518;
  if (!qword_27FEDE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE518);
  }

  return result;
}

unint64_t sub_261CE17E4()
{
  result = qword_27FEDA2F8;
  if (!qword_27FEDA2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA300, qword_261D02728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA2F8);
  }

  return result;
}

uint64_t dispatch thunk of ListEntityListQueryPerforming.entities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261B01F5C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ListEntityListQueryPerforming.entities(query:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_261AF4BDC;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ListEntityListQueryPerforming.suggestedEntities(query:criteria:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 24);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_261AF4BDC;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ListEntityListQueryPerforming.defaultListEntity(query:criteria:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a5 + 32);
  v15 = (v11 + *v11);
  v12 = v11[1];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_261AF43A8;

  return v15(a1, a2, a3, a4, a5);
}

uint64_t ColorEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE520, &qword_261D128D0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE528, &qword_261D12900);
  swift_getKeyPath();
  a1[1] = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE530, &qword_261D12930);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  a1[2] = result;
  return result;
}

uint64_t ColorEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_261CE1E88, 0, 0);
}

uint64_t sub_261CE1E88()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_261CE39D0;
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  return sub_261C61F5C("ColorEntityQuery.entitiesForIdentifiers", 39, 2, v8, v6, v7, v9);
}

uint64_t ColorEntityQuery.suggestedEntities()()
{
  *(v1 + 16) = *v0;
  *(v1 + 32) = *(v0 + 16);
  return MEMORY[0x2822009F8](sub_261CE1FA4, 0, 0);
}

uint64_t sub_261CE1FA4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_261CE2088;
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[2];

  return sub_261C62794("ColorEntityQuery.suggestedEntities", 34, 2, v7, v5, v6);
}

uint64_t sub_261CE2088(uint64_t a1)
{
  v4 = *(*v2 + 40);
  v5 = *(*v2 + 32);
  v6 = *(*v2 + 24);
  v7 = *(*v2 + 16);
  v11 = *v2;

  v9 = *(v11 + 8);
  if (!v1)
  {
    v8 = a1;
  }

  return v9(v8);
}

uint64_t sub_261CE21EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261CE228C, 0, 0);
}

uint64_t sub_261CE228C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v11 = *(v0 + 112);
  sub_261B6C640(0xD000000000000013, 0x8000000261D1B3A0);
  sub_261CFC664();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *&v5 = v1;
  *(&v5 + 1) = v11;
  *(v0 + 72) = v5;
  *(v0 + 56) = v11;
  *(v0 + 88) = *(&v11 + 1);
  *(v0 + 96) = v1;
  sub_261CE2650(v2);
  v6 = *(v4 + 16);
  v12 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v0 + 144) = v8;
  *v8 = v0;
  v8[1] = sub_261CE242C;
  v9 = *(v0 + 136);

  return v12(v0 + 56, v9, v3, v4);
}

uint64_t sub_261CE242C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 144);
  v6 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    sub_261B59E9C(*(v4 + 136));
    v7 = sub_261CE25E0;
  }

  else
  {
    v8 = *(v4 + 136);
    *(v4 + 160) = a1;
    sub_261B59E9C(v8);
    v7 = sub_261CE2564;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_261CE2564()
{
  v1 = *(v0 + 136);
  **(v0 + 104) = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_261CE25E0()
{
  v1 = v0[17];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v2 = v0[1];
  v3 = v0[19];

  return v2();
}

uint64_t sub_261CE2650@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v16 - v5;
  v7 = v1[1];
  v8 = *v1;
  if (sub_261CFD1F4())
  {
    swift_getKeyPath();
    sub_261BECB94();
    sub_261CFCD54();

    v9 = type metadata accessor for ListEntity();
    v10 = *(*(v9 - 8) + 56);
    v10(v6, 0, 1, v9);
    sub_261B01E2C(v6, a1);
    return (v10)(a1, 0, 1, v9);
  }

  else
  {
    v12 = type metadata accessor for ListEntity();
    v13 = *(v12 - 8);
    v14 = *(v13 + 56);
    v15 = 1;
    v14(v6, 1, 1, v12);
    if (sub_261CFD1F4())
    {
      swift_getKeyPath();
      sub_261BECB94();
      sub_261CFCD54();

      v15 = 0;
    }

    v14(a1, v15, 1, v12);
    result = (*(v13 + 48))(v6, 1, v12);
    if (result != 1)
    {
      return sub_261B59E9C(v6);
    }
  }

  return result;
}

uint64_t sub_261CE289C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_261CE28CC, 0, 0);
}

uint64_t sub_261CE28CC()
{
  v1 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v3 = v0[3];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_261CE29BC;
  v6 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v8 = v0[3];

  return sub_261C61F5C("ColorEntityQuery.entitiesForIdentifiers", 39, 2, v8, v6, v7, v9);
}

uint64_t sub_261CE29BC(uint64_t a1)
{
  v4 = *(*v2 + 48);
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 32);
  v7 = *(*v2 + 24);
  v8 = *(*v2 + 16);
  v12 = *v2;

  v10 = *(v12 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_261CE2B3C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_261CE2B6C, 0, 0);
}

uint64_t sub_261CE2B6C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_261CE2C50;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[3];

  return sub_261C62794("ColorEntityQuery.suggestedEntities", 34, 2, v7, v5, v6);
}

uint64_t sub_261CE2C50(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v9 = *v2;

  if (v1)
  {
    v10 = *(v9 + 8);

    return v10();
  }

  else
  {
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_261B0DCB4, 0, 0);
  }
}

uint64_t sub_261CE2E08(uint64_t a1, uint64_t a2)
{
  v5 = *(MEMORY[0x277CB9CA8] + 4);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  v7 = sub_261BBB340();
  *v6 = v2;
  v6[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v7);
}

uint64_t ColorEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *v2;
  *(v3 + 48) = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_261CE2EEC, 0, 0);
}

uint64_t sub_261CE2EEC()
{
  v1 = v0[5];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_261CE2FE0;
  v6 = v0[5];
  v7 = v0[6];
  v9 = v0[3];
  v8 = v0[4];
  v10 = v0[2];

  return sub_261C62EC8("ColorEntityQuery.entitiesMatchingString", 39, 2, v8, v6, v7, v10, v9);
}

uint64_t sub_261CE2FE0(uint64_t a1)
{
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 48);
  v6 = *(*v2 + 40);
  v7 = *(*v2 + 32);
  v8 = *(*v2 + 24);
  v12 = *v2;

  v10 = *(v12 + 8);
  if (!v1)
  {
    v9 = a1;
  }

  return v10(v9);
}

uint64_t sub_261CE3160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 56) = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_261CE3194, 0, 0);
}

uint64_t sub_261CE3194()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_261CE3288;
  v6 = v0[6];
  v7 = v0[7];
  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  return sub_261C62EC8("ColorEntityQuery.entitiesMatchingString", 39, 2, v8, v6, v7, v10, v9);
}

uint64_t sub_261CE3288(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *(*v2 + 56);
  v7 = *(*v2 + 48);
  v8 = *(*v2 + 40);
  v9 = *(*v2 + 32);
  v10 = *v2;

  if (v1)
  {
    v11 = *(v10 + 8);

    return v11();
  }

  else
  {
    *(v4 + 72) = a1;

    return MEMORY[0x2822009F8](sub_261CE345C, 0, 0);
  }
}

unint64_t sub_261CE3484()
{
  result = qword_27FEDE538;
  if (!qword_27FEDE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE538);
  }

  return result;
}

unint64_t sub_261CE34DC()
{
  result = qword_27FEDE540;
  if (!qword_27FEDE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE540);
  }

  return result;
}

unint64_t sub_261CE3538()
{
  result = qword_27FEDE548;
  if (!qword_27FEDE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE548);
  }

  return result;
}

unint64_t sub_261CE3594()
{
  result = qword_27FEDE550;
  if (!qword_27FEDE550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDE558, qword_261D129C8);
    sub_261BBB440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE550);
  }

  return result;
}

uint64_t dispatch thunk of ColorEntityQueryPerforming.entities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261B0E3FC;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ColorEntityQueryPerforming.suggestedEntities(query:targetList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261B01F5C;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ColorEntityQueryPerforming.entities(query:matching:targetList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 24);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_261B0E3FC;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_261CE39D4()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDE560);
  __swift_project_value_buffer(v9, qword_27FEDE560);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListAutoCategorizeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D70 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE560);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListAutoCategorizeAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t sub_261CE3F7C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B0A18C(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_261B0A18C(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v10);
}

uint64_t UpdateListAutoCategorizeAppIntent.entity.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListAutoCategorizeAppIntent.entity.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t UpdateListAutoCategorizeAppIntent.property.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t (*UpdateListAutoCategorizeAppIntent.property.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261CE42A0()
{
  result = swift_getKeyPath();
  qword_27FEDE578 = result;
  return result;
}

uint64_t static UpdateListAutoCategorizeAppIntent.binding.getter()
{
  if (qword_27FED9D78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListAutoCategorizeAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED9D78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDE578 = a1;
}

uint64_t (*static UpdateListAutoCategorizeAppIntent.binding.modify())()
{
  if (qword_27FED9D78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261CE4448@<X0>(void *a1@<X8>)
{
  if (qword_27FED9D78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDE578;
  return sub_261CFCDA4();
}

uint64_t sub_261CE44C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9D78;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDE578 = v1;
}

uint64_t UpdateListAutoCategorizeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v67 = &v51 - v3;
  v71 = sub_261CFD184();
  v74 = *(v71 - 8);
  v4 = *(v74 + 64);
  MEMORY[0x28223BE20](v71);
  v70 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v64 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v51 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v58 = &v51 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = &v51 - v16;
  v18 = sub_261CFD674();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_261CFD884();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_261CFFA44();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = sub_261CFD6A4();
  v56 = v27;
  v73 = *(v27 - 8);
  v28 = *(v73 + 64);
  v29 = MEMORY[0x28223BE20](v27);
  v66 = &v51 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v65 = &v51 - v32;
  MEMORY[0x28223BE20](v31);
  v68 = &v51 - v33;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v34 = *MEMORY[0x277CC9110];
  v36 = v19 + 104;
  v35 = *(v19 + 104);
  v53 = v18;
  v35(v22, v34, v18);
  v52 = v35;
  v54 = v36;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v22, v34, v18);
  v51 = v17;
  sub_261CFD6C4();
  v37 = *(v73 + 56);
  v73 += 56;
  v57 = v37;
  v37(v17, 0, 1, v27);
  v38 = type metadata accessor for ListEntity();
  (*(*(v38 - 8) + 56))(v58, 1, 1, v38);
  v39 = sub_261CFC834();
  v62 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v61 = v41;
  v63 = v40 + 56;
  v41(v69, 1, 1, v39);
  v41(v64, 1, 1, v39);
  v59 = *MEMORY[0x277CBA308];
  v42 = *(v74 + 104);
  v74 += 104;
  v60 = v42;
  v42(v70);
  sub_261B5A458(&qword_280D227A0, type metadata accessor for ListEntity);
  v43 = v51;
  *v72 = sub_261CFCC34();
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v44 = v53;
  v45 = v52;
  v52(v22, v34, v53);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v22, v34, v44);
  sub_261CFD6C4();
  v57(v43, 0, 1, v56);
  v76 = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v22, v34, v44);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v22, v34, v44);
  sub_261CFD6B4();
  v46 = v67;
  sub_261CFFCD4();
  v47 = sub_261CFFCE4();
  (*(*(v47 - 8) + 56))(v46, 0, 1, v47);
  v61(v69, 1, 1, v62);
  v60(v70, v59, v71);
  v48 = sub_261CFCD44();
  v49 = v72;
  v72[1] = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v75 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v49[2] = result;
  return result;
}

uint64_t UpdateListAutoCategorizeAppIntent.perform()(uint64_t a1)
{
  *(v2 + 392) = a1;
  v3 = sub_261CFD754();
  *(v2 + 400) = v3;
  v4 = *(v3 - 8);
  *(v2 + 408) = v4;
  v5 = *(v4 + 64) + 15;
  *(v2 + 416) = swift_task_alloc();
  v6 = sub_261CFC9D4();
  *(v2 + 424) = v6;
  v7 = *(v6 - 8);
  *(v2 + 432) = v7;
  v8 = *(v7 + 64) + 15;
  *(v2 + 440) = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 464) = v10;
  v11 = *(v10 - 8);
  *(v2 + 472) = v11;
  v12 = *(v11 + 64) + 15;
  *(v2 + 480) = swift_task_alloc();
  v13 = type metadata accessor for ListEntity();
  *(v2 + 488) = v13;
  v14 = *(v13 - 8);
  *(v2 + 496) = v14;
  v15 = *(v14 + 64) + 15;
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = *v1;
  *(v2 + 536) = *(v1 + 16);
  *(v2 + 544) = sub_261CFFD24();
  *(v2 + 552) = sub_261CFFD14();
  v17 = sub_261CFFCF4();
  *(v2 + 560) = v17;
  *(v2 + 568) = v16;

  return MEMORY[0x2822009F8](sub_261CE522C, v17, v16);
}

uint64_t sub_261CE522C()
{
  v14 = v0;
  v1 = *(v0 + 544);
  v2 = *(v0 + 536);
  v3 = *(v0 + 528);
  v4 = *(v0 + 520);
  v5 = *(v0 + 512);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v5, v0 + 352, v13);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v5);
  v6 = v13[5];
  *(v0 + 80) = v13[4];
  *(v0 + 96) = v6;
  *(v0 + 112) = v13[6];
  v7 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v7;
  v8 = v13[3];
  *(v0 + 48) = v13[2];
  *(v0 + 64) = v8;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  v9 = *(v0 + 88);
  *(v0 + 617) = *(v0 + 616);
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B2AC8C(0, v4, v3, v2);
  *(v0 + 576) = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  *(v0 + 584) = v11;
  *(v0 + 592) = v10;

  return MEMORY[0x2822009F8](sub_261CE5384, v11, v10);
}

uint64_t sub_261CE5384()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  *v1 = v0;
  v1[1] = sub_261B60E34;
  v2 = *(v0 + 480);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t static UpdateListAutoCategorizeAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE580, &qword_261D12B88);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE588, &qword_261D12B90);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B31360();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE590, &qword_261D12BC0);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE598, &unk_261D12BF0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261CE5628(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B0A18C(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261CE56B8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*sub_261CE572C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261CE57A0()
{
  if (qword_27FED9D78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261CE5818@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D70 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE560);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261CE58C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListAutoCategorizeAppIntent.perform()(a1);
}

uint64_t sub_261CE5964(uint64_t a1)
{
  v2 = sub_261B31360();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261CE59EC()
{
  result = qword_27FEDE5A8;
  if (!qword_27FEDE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE5A8);
  }

  return result;
}

unint64_t sub_261CE5A44()
{
  result = qword_27FEDE5B0;
  if (!qword_27FEDE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE5B0);
  }

  return result;
}

uint64_t sub_261CE5AF8()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE5C8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE5C8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CE5D44()
{
  v120 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);
  v4 = *(v0 + 104);
  v3 = *(v0 + 112);
  v5 = *(v0 + 72);
  v6 = *(v0 + 80);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  v9 = *(v0 + 32);

  sub_261CFCBB4();
  sub_261CFCBB4();
  sub_261CE77BC(v4 + *(v6 + 24), v7, type metadata accessor for SectionEntityID);
  sub_261CE682C(v4, type metadata accessor for SectionEntity);
  sub_261CE7824(v7, v9, type metadata accessor for SectionEntityID);
  sub_261CE7824(v9, v5, type metadata accessor for AppEntityID);
  v10 = *(v8 + 20);
  v11 = *v5;
  v12 = v5[1];
  v13 = objc_allocWithZone(MEMORY[0x277D44700]);
  v14 = sub_261CFD814();
  v15 = sub_261CFFA54();
  v16 = [v13 initWithUUID:v14 entityName:v15];

  v17 = [v16 entityName];
  v18 = sub_261CFFA74();
  v20 = v19;

  sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
  v21 = [swift_getObjCClassFromMetadata() cdEntityName];
  v22 = sub_261CFFA74();
  v24 = v23;

  if (v22 == v18 && v24 == v20)
  {

LABEL_5:
    v27 = (v0 + 96);
    v26 = *(v0 + 96);
    v28 = *(v0 + 152);
    v29 = *(v0 + 112);
    v30 = *(v0 + 72);
    v31 = *(v0 + 24);
    v110 = *(v0 + 136);
    v113 = *(v0 + 120);

    v117 = v113;
    v118 = v110;
    v119 = v28;
    sub_261CE688C(v30, &v117, v26);
LABEL_6:
    sub_261CE682C(v29, type metadata accessor for SectionEntity);
    v41 = *v27;
    v42 = *(v0 + 112);
    v44 = *(v0 + 88);
    v43 = *(v0 + 96);
    v46 = *(v0 + 72);
    v45 = *(v0 + 80);
    v47 = *(v0 + 56);
    v48 = *(v0 + 64);
    v111 = *(v0 + 40);
    v114 = *(v0 + 32);
    v49 = *(v0 + 16);
    sub_261CE7824(v41, v42, type metadata accessor for SectionEntity);
    sub_261CE788C();
    sub_261CFC994();
    sub_261CE682C(v42, type metadata accessor for SectionEntity);
    sub_261CE682C(v46, type metadata accessor for AppEntityID);

    v50 = *(v0 + 8);
    goto LABEL_7;
  }

  v25 = sub_261D00614();

  if (v25)
  {
    goto LABEL_5;
  }

  sub_261B05020(0, &qword_27FEDA5E8, 0x277D44818);
  v52 = [swift_getObjCClassFromMetadata() cdEntityName];
  v53 = sub_261CFFA74();
  v55 = v54;

  if (v53 == v18 && v55 == v20)
  {

LABEL_14:
    v27 = (v0 + 88);
    v57 = *(v0 + 88);
    v58 = *(v0 + 152);
    v29 = *(v0 + 112);
    v59 = *(v0 + 72);
    v60 = *(v0 + 24);
    v112 = *(v0 + 136);
    v115 = *(v0 + 120);

    v117 = v115;
    v118 = v112;
    v119 = v58;
    sub_261CE6F70(v59, &v117, v57);
    goto LABEL_6;
  }

  v56 = sub_261D00614();

  if (v56)
  {
    goto LABEL_14;
  }

  sub_261B05020(0, &qword_27FEDA5F0, 0x277D448B8);
  v61 = [swift_getObjCClassFromMetadata() cdEntityName];
  v62 = sub_261CFFA74();
  v64 = v63;

  if (v62 == v18 && v64 == v20)
  {

    goto LABEL_19;
  }

  v65 = sub_261D00614();

  if (v65)
  {
LABEL_19:

    if (qword_27FED9D80 != -1)
    {
      swift_once();
    }

    v66 = *(v0 + 64);
    v67 = *(v0 + 72);
    v68 = sub_261CFF7A4();
    __swift_project_value_buffer(v68, qword_27FEDE5C8);
    sub_261CE77BC(v67, v66, type metadata accessor for AppEntityID);
    v69 = sub_261CFF784();
    v70 = sub_261CFFE74();
    v71 = os_log_type_enabled(v69, v70);
    v72 = *(v0 + 64);
    if (v71)
    {
LABEL_22:
      v73 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v73 = 138543362;
      v74 = *(v8 + 20);
      v76 = *v72;
      v75 = v72[1];
      v77 = objc_allocWithZone(MEMORY[0x277D44700]);
      v78 = sub_261CFD814();
      v79 = sub_261CFFA54();
      v80 = [v77 initWithUUID:v78 entityName:v79];

      sub_261CE682C(v72, type metadata accessor for AppEntityID);
      *(v73 + 4) = v80;
      *v116 = v80;
      _os_log_impl(&dword_261AE2000, v69, v70, "[UpdateSectionIntentPerforming] Template section is not currently supported in RemindersAppIntent: %{public}@", v73, 0xCu);
      sub_261BD28E8(v116);
      MEMORY[0x26671D560](v116, -1, -1);
      MEMORY[0x26671D560](v73, -1, -1);

LABEL_39:
      v86 = *(v0 + 112);
      v87 = *(v0 + 72);
      sub_261B01D70();
      swift_allocError();
      v89 = 31;
      goto LABEL_40;
    }

LABEL_38:

    sub_261CE682C(v72, type metadata accessor for AppEntityID);
    goto LABEL_39;
  }

  v81 = [objc_opt_self() cdEntityName];
  v82 = sub_261CFFA74();
  v84 = v83;

  if (v82 == v18 && v84 == v20)
  {
    goto LABEL_25;
  }

  v85 = sub_261D00614();

  if (v85)
  {
    goto LABEL_27;
  }

  v90 = [objc_opt_self() cdEntityName];
  v91 = sub_261CFFA74();
  v93 = v92;

  if (v91 == v18 && v93 == v20)
  {
LABEL_25:
  }

  else
  {
    v94 = sub_261D00614();

    if ((v94 & 1) == 0)
    {
      v95 = [objc_opt_self() cdEntityName];
      v96 = sub_261CFFA74();
      v98 = v97;

      if (v96 == v18 && v98 == v20)
      {
      }

      else
      {
        v99 = sub_261D00614();

        if ((v99 & 1) == 0)
        {
          if (qword_27FED9D80 != -1)
          {
            swift_once();
          }

          v104 = sub_261CFF7A4();
          __swift_project_value_buffer(v104, qword_27FEDE5C8);
          sub_261CFD104();
          v105 = sub_261CFF784();
          v106 = sub_261CFFE74();

          if (os_log_type_enabled(v105, v106))
          {
            v107 = swift_slowAlloc();
            v108 = swift_slowAlloc();
            *&v117 = v108;
            *v107 = 136446210;
            v109 = sub_261B879C8(v18, v20, &v117);

            *(v107 + 4) = v109;
            _os_log_impl(&dword_261AE2000, v105, v106, "[UpdateSectionIntentPerforming] Unknown section entity name: %{public}s", v107, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v108);
            MEMORY[0x26671D560](v108, -1, -1);
            MEMORY[0x26671D560](v107, -1, -1);
          }

          else
          {
          }

          goto LABEL_39;
        }
      }

      if (qword_27FED9D80 != -1)
      {
        swift_once();
      }

      v100 = *(v0 + 72);
      v101 = *(v0 + 56);
      v102 = sub_261CFF7A4();
      __swift_project_value_buffer(v102, qword_27FEDE5C8);
      sub_261CE77BC(v100, v101, type metadata accessor for AppEntityID);
      v69 = sub_261CFF784();
      v70 = sub_261CFFE74();
      v103 = os_log_type_enabled(v69, v70);
      v72 = *(v0 + 56);
      if (v103)
      {
        goto LABEL_22;
      }

      goto LABEL_38;
    }
  }

LABEL_27:
  v86 = *(v0 + 112);
  v87 = *(v0 + 72);

  sub_261B01D70();
  swift_allocError();
  v89 = 27;
LABEL_40:
  *v88 = v89;
  swift_willThrow();
  sub_261CE682C(v86, type metadata accessor for SectionEntity);
  sub_261CE682C(v87, type metadata accessor for AppEntityID);
  v33 = *(v0 + 104);
  v32 = *(v0 + 112);
  v35 = *(v0 + 88);
  v34 = *(v0 + 96);
  v37 = *(v0 + 64);
  v36 = *(v0 + 72);
  v38 = *(v0 + 56);
  v40 = *(v0 + 32);
  v39 = *(v0 + 40);

  v50 = *(v0 + 8);
LABEL_7:

  return v50();
}

uint64_t sub_261CE682C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_261CE688C(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v70 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 16);
  v64 = *(a2 + 24);
  v7 = *(v3 + 16);
  v8 = *(type metadata accessor for AppEntityID() + 20);
  v9 = *a1;
  v10 = a1[1];
  v11 = objc_allocWithZone(MEMORY[0x277D44700]);
  v12 = sub_261CFD814();
  v13 = sub_261CFFA54();
  v14 = [v11 initWithUUID:v12 entityName:v13];

  v66 = 0;
  v15 = [v7 fetchListSectionWithObjectID:v14 error:&v66];

  if (v15)
  {
    v16 = v66;
    v61 = a3;
    sub_261C66A58(v15, a3);
    v17 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v17 setSaveIsNoopIfNoChangedKeys_];
    v63 = v17;
    v18 = [v17 updateListSection_];
    sub_261CFCBB4();
    v19 = v67;
    if (v67)
    {
      v20 = v66;
      v21 = v18;
      v22 = [v21 displayName];
      v23 = sub_261CFFA74();
      v25 = v24;

      if (v23 == v20 && v19 == v25)
      {
      }

      else
      {
        v27 = sub_261D00614();

        if (v27)
        {
        }

        else
        {
          v28 = sub_261CFFA54();
          [v21 setDisplayName_];

          v29 = *(v61 + *(type metadata accessor for SectionEntity() + 28));
          v66 = v20;
          v67 = v19;
          sub_261CFD2E4();
        }
      }
    }

    sub_261CFCBB4();
    if (v66 != 2)
    {
      v30 = [v15 objectID];
      v31 = [v15 listID];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE5E0, &qword_261D12DD8);
      v32 = sub_261CFDE54();
      v33 = sub_261CFDDA4();
      v68 = v32;
      v69 = MEMORY[0x277D45CA0];
      v66 = v33;
      sub_261CFE8A4();

      __swift_destroy_boxed_opaque_existential_0(&v66);
    }

    if (qword_27FED9D80 != -1)
    {
      swift_once();
    }

    v34 = sub_261CFF7A4();
    __swift_project_value_buffer(v34, qword_27FEDE5C8);
    v35 = v18;
    v36 = v15;
    v37 = sub_261CFF784();
    v38 = sub_261CFFE84();

    v65 = v35;
    v62 = v36;
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v66 = v60;
      *v39 = 138543618;
      v41 = [v36 objectID];
      *(v39 + 4) = v41;
      *v40 = v41;
      *(v39 + 12) = 2082;
      v42 = [v35 changedKeys];
      sub_261CFFD64();

      v43 = sub_261CFFD74();
      v45 = v44;

      v46 = sub_261B879C8(v43, v45, &v66);

      *(v39 + 14) = v46;
      _os_log_impl(&dword_261AE2000, v37, v38, "[UpdateSectionIntentPerforming] Update list section properties with id: %{public}@, changedKeys: %{public}s", v39, 0x16u);
      sub_261BD28E8(v40);
      MEMORY[0x26671D560](v40, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x26671D560](v60, -1, -1);
      MEMORY[0x26671D560](v39, -1, -1);
    }

    v66 = 0;
    if ([v63 saveSynchronouslyWithError_])
    {
      v47 = v66;
    }

    else
    {
      v48 = v66;
      v49 = sub_261CFD654();

      swift_willThrow();
      v50 = v49;
      v51 = sub_261CFF784();
      v52 = sub_261CFFE64();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v66 = v54;
        *v53 = 136315138;
        swift_getErrorValue();
        v55 = sub_261D00674();
        v57 = sub_261B879C8(v55, v56, &v66);

        *(v53 + 4) = v57;
        _os_log_impl(&dword_261AE2000, v51, v52, "[UpdateSectionIntentPerforming] Update list section properties failed with save error: %s", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x26671D560](v54, -1, -1);
        MEMORY[0x26671D560](v53, -1, -1);
      }

      sub_261B01D70();
      swift_allocError();
      *v58 = 19;
      swift_willThrow();

      sub_261CE682C(v61, type metadata accessor for SectionEntity);
    }
  }

  else
  {
    v26 = v66;
    sub_261CFD654();

    swift_willThrow();
  }

  v59 = *MEMORY[0x277D85DE8];
}

void sub_261CE6F70(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v76 = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 16);
  v70 = *(a2 + 24);
  v7 = *(v3 + 16);
  v8 = *(type metadata accessor for AppEntityID() + 20);
  v9 = *a1;
  v10 = a1[1];
  v11 = objc_allocWithZone(MEMORY[0x277D44700]);
  v12 = sub_261CFD814();
  v13 = sub_261CFFA54();
  v14 = [v11 initWithUUID:v12 entityName:v13];

  v72 = 0;
  v15 = [v7 fetchSmartListSectionWithObjectID:v14 error:&v72];

  if (v15)
  {
    v16 = v72;
    v17 = [v15 smartList];
    v18 = [v17 parentListID];

    if (v18)
    {
      v72 = 0;
      v19 = [v7 fetchListWithObjectID:v18 error:&v72];
      v20 = v72;
      if (!v19)
      {
        v32 = v20;
        sub_261CFD654();

        swift_willThrow();
        goto LABEL_26;
      }
    }

    else
    {
      v19 = 0;
    }

    v68 = v19;
    v69 = a3;
    sub_261C67444(v15, v19, a3);
    v22 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v22 setSaveIsNoopIfNoChangedKeys_];
    v67 = v22;
    v23 = [v22 updateSmartListSection_];
    sub_261CFCBB4();
    v24 = v73;
    if (v73)
    {
      v25 = v72;
      v26 = v23;
      v27 = [v26 displayName];
      v28 = sub_261CFFA74();
      v30 = v29;

      if (v28 == v25 && v24 == v30)
      {
      }

      else
      {
        v31 = sub_261D00614();

        if (v31)
        {
        }

        else
        {
          v33 = sub_261CFFA54();
          [v26 setDisplayName_];

          v34 = *(v69 + *(type metadata accessor for SectionEntity() + 28));
          v72 = v25;
          v73 = v24;
          sub_261CFD2E4();
        }
      }
    }

    sub_261CFCBB4();
    if (v72 != 2)
    {
      v35 = [v15 objectID];
      v36 = [v15 smartListID];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE5E0, &qword_261D12DD8);
      v37 = sub_261CFDE54();
      v38 = sub_261CFDDA4();
      v74 = v37;
      v75 = MEMORY[0x277D45CA0];
      v72 = v38;
      sub_261CFE8A4();

      __swift_destroy_boxed_opaque_existential_0(&v72);
    }

    if (qword_27FED9D80 != -1)
    {
      swift_once();
    }

    v39 = sub_261CFF7A4();
    __swift_project_value_buffer(v39, qword_27FEDE5C8);
    v40 = v23;
    v41 = v15;
    v42 = sub_261CFF784();
    v43 = sub_261CFFE84();

    v71 = v40;
    v66 = v41;
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v72 = v65;
      *v44 = 138543618;
      v46 = [v41 objectID];
      *(v44 + 4) = v46;
      *v45 = v46;
      *(v44 + 12) = 2082;
      v47 = [v40 changedKeys];
      sub_261CFFD64();

      v48 = sub_261CFFD74();
      v50 = v49;

      v51 = sub_261B879C8(v48, v50, &v72);

      *(v44 + 14) = v51;
      _os_log_impl(&dword_261AE2000, v42, v43, "[UpdateSectionIntentPerforming] Update smart-list section properties with id: %{public}@, changedKeys: %{public}s", v44, 0x16u);
      sub_261BD28E8(v45);
      MEMORY[0x26671D560](v45, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v65);
      MEMORY[0x26671D560](v65, -1, -1);
      MEMORY[0x26671D560](v44, -1, -1);
    }

    v72 = 0;
    if ([v67 saveSynchronouslyWithError_])
    {
      v52 = v72;
    }

    else
    {
      v53 = v72;
      v54 = sub_261CFD654();

      swift_willThrow();
      v55 = v54;
      v56 = sub_261CFF784();
      v57 = sub_261CFFE64();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v72 = v59;
        *v58 = 136315138;
        swift_getErrorValue();
        v60 = sub_261D00674();
        v62 = sub_261B879C8(v60, v61, &v72);

        *(v58 + 4) = v62;
        _os_log_impl(&dword_261AE2000, v56, v57, "[UpdateSectionIntentPerforming] Update smart-list section properties failed with save error: %s", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v59);
        MEMORY[0x26671D560](v59, -1, -1);
        MEMORY[0x26671D560](v58, -1, -1);
      }

      sub_261B01D70();
      swift_allocError();
      *v63 = 19;
      swift_willThrow();

      sub_261CE682C(v69, type metadata accessor for SectionEntity);
    }
  }

  else
  {
    v21 = v72;
    sub_261CFD654();

    swift_willThrow();
  }

LABEL_26:
  v64 = *MEMORY[0x277D85DE8];
}

uint64_t sub_261CE7710(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261CE77BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CE7824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_261CE788C()
{
  result = qword_280D224D0;
  if (!qword_280D224D0)
  {
    type metadata accessor for SectionEntity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D224D0);
  }

  return result;
}

uint64_t OpenSectionAppIntent.showExpanded.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t OpenSectionAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v59 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v60 = &v45[-v3];
  v4 = sub_261CFD184();
  v5 = *(v4 - 8);
  v65 = v4;
  v66 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v64 = &v45[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v58 = &v45[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v63 = &v45[-v12];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v62 = &v45[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v61 = &v45[-v18];
  v19 = sub_261CFD674();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v19);
  v23 = &v45[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_261CFD884();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = sub_261CFFA44();
  v27 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = sub_261CFD6A4();
  v51 = v28;
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  MEMORY[0x28223BE20](v28);
  v49 = &v45[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA398, &unk_261D02CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v33 = *(v20 + 104);
  v54 = *MEMORY[0x277CC9110];
  v32 = v54;
  v55 = v19;
  v33(v23, v54, v19);
  v53 = v33;
  v56 = v20 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v33(v23, v32, v19);
  v34 = v61;
  sub_261CFD6C4();
  v35 = *(v29 + 56);
  v50 = v29 + 56;
  v52 = v35;
  v35(v34, 0, 1, v28);
  v36 = type metadata accessor for SectionEntity();
  (*(*(v36 - 8) + 56))(v62, 1, 1, v36);
  v37 = sub_261CFC834();
  v38 = *(*(v37 - 8) + 56);
  v48 = v38;
  v38(v63, 1, 1, v37);
  v38(v58, 1, 1, v37);
  v46 = *MEMORY[0x277CBA308];
  v39 = *(v66 + 104);
  v66 += 104;
  v47 = v39;
  v39(v64);
  sub_261AE82B0(&qword_280D224E0);
  v40 = v61;
  v41 = sub_261CFCC34();
  v42 = v59;
  *v59 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  sub_261CFF9B4();
  sub_261CFD874();
  v53(v23, v54, v55);
  sub_261CFD6C4();
  v52(v40, 1, 1, v51);
  v68 = 2;
  v43 = sub_261CFFCE4();
  (*(*(v43 - 8) + 56))(v60, 1, 1, v43);
  v48(v63, 1, 1, v37);
  v47(v64, v46, v65);
  v42[1] = sub_261CFCD44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE600, &qword_261D12DE0);
  v67 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v42[2] = result;
  return result;
}

uint64_t sub_261CE8148(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SectionEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  sub_261B2EAD0(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_261B2EAD0(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B2EB34(v10);
}

uint64_t OpenSectionAppIntent.target.setter(uint64_t a1)
{
  v3 = type metadata accessor for SectionEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B2EAD0(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t sub_261CE8310()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDE5E8);
  __swift_project_value_buffer(v9, qword_27FEDE5E8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static OpenSectionAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D88 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE5E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenSectionAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t (*OpenSectionAppIntent.target.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*OpenSectionAppIntent.showExpanded.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t OpenSectionAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  sub_261CFFD24();
  *(v2 + 48) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x2822009F8](sub_261CE8A6C, v4, v3);
}

uint64_t sub_261CE8A6C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_261C8C82C;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_261C59AE8(v7, "OpenSectionAppIntent", 20, 2, v8, v5, v6);
}

uint64_t sub_261CE8B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_261CFFD24();
  v4[14] = sub_261CFFD14();
  v6 = sub_261CFFCF4();
  v4[15] = v6;
  v4[16] = v5;

  return MEMORY[0x2822009F8](sub_261CE8BEC, v6, v5);
}

uint64_t sub_261CE8BEC()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_261B2BA48(0, v3, v1, v2);
  sub_261CFC664();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[7] = v3;
  v0[8] = v1;
  v0[9] = v2;
  v6 = *(v5 + 8);
  v11 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_261BC2BF8;
  v9 = v0[10];

  return (v11)(v9, v0 + 7, v4, v5);
}

uint64_t static OpenSectionAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE608, &qword_261D12E08);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE610, &qword_261D12E10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261B3130C();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE618, &qword_261D12E40);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261CE8F14()
{
  swift_getKeyPath();
  sub_261B3130C();
  v0 = sub_261CFCDA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_261D030F0;
  *(v1 + 32) = v0;
  sub_261CFCDA4();
  v2 = sub_261CFD104();

  return v2;
}

unint64_t sub_261CE8FD4()
{
  result = qword_27FEDE620;
  if (!qword_27FEDE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE620);
  }

  return result;
}

uint64_t sub_261CE905C(uint64_t a1)
{
  v3 = type metadata accessor for SectionEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B2EAD0(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t (*sub_261CE90EC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

unint64_t sub_261CE9168()
{
  result = qword_27FEDE628;
  if (!qword_27FEDE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE628);
  }

  return result;
}

unint64_t sub_261CE91C0()
{
  result = qword_27FEDE630;
  if (!qword_27FEDE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE630);
  }

  return result;
}

uint64_t sub_261CE924C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D88 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE5E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261CE92F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE608, &qword_261D12E08);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE610, &qword_261D12E10);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE618, &qword_261D12E40);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261CE94A4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  sub_261CFFD24();
  *(v2 + 48) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x2822009F8](sub_261CE954C, v4, v3);
}

uint64_t sub_261CE954C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_261C8CF3C;
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[2];
  v8 = v0[3];

  return sub_261C59AE8(v7, "OpenSectionAppIntent", 20, 2, v8, v5, v6);
}

uint64_t sub_261CE9634(uint64_t a1)
{
  v2 = sub_261B3130C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of OpenSectionAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

uint64_t RemindersInCalendarEditingReminderProperties.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for RemindersInCalendarEditingReminderProperties();
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v3 = v2[6];
  v4 = sub_261CFD4E4();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  *&a1[v2[7]] = 0;
  v5 = v2[8];
  v6 = sub_261CFD754();
  result = (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  *&a1[v2[9]] = 0;
  return result;
}

uint64_t type metadata accessor for RemindersInCalendarEditingReminderProperties()
{
  result = qword_27FEDE648;
  if (!qword_27FEDE648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261CE98D4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x28223BE20](v3 - 8);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v65 = &v60 - v7;
  v8 = sub_261CFD754();
  v66 = *(v8 - 8);
  v67 = v8;
  v9 = *(v66 + 64);
  MEMORY[0x28223BE20](v8);
  v61 = &v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_261CFE304();
  v11 = *(v60 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v60);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v60 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v19 = *(*(v18 - 8) + 64);
  v20 = MEMORY[0x28223BE20](v18 - 8);
  v64 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v60 - v22;
  v68 = sub_261CFD4E4();
  v24 = *(v68 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v68);
  v63 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = a1[1];
  v70 = a1;
  if (v27)
  {
    v28 = *v70;
    v29 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v30 = sub_261CFFA54();
    v31 = [v29 initWithString_];

    sub_261CFE0D4();
    a1 = v70;
  }

  v69 = v1;
  if (a1[3])
  {
    v32 = v70[2];
    v33 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v34 = sub_261CFFA54();
    v35 = [v33 initWithString_];

    sub_261CFE0C4();
    a1 = v70;
  }

  v36 = type metadata accessor for RemindersInCalendarEditingReminderProperties();
  sub_261AFB668(a1 + *(v36 + 24), v23, &qword_27FEDA160, &qword_261D02220);
  v37 = v68;
  if ((*(v24 + 48))(v23, 1, v68) == 1)
  {
    sub_261AE6A40(v23, &qword_27FEDA160, &qword_261D02220);
  }

  else
  {
    v38 = v63;
    (*(v24 + 32))(v63, v23, v37);
    v39 = v64;
    (*(v24 + 16))(v64, v38, v37);
    (*(v24 + 56))(v39, 0, 1, v37);
    sub_261CFE094();
    sub_261AE6A40(v39, &qword_27FEDA160, &qword_261D02220);
    (*(v24 + 8))(v38, v37);
  }

  v68 = v36;
  v40 = *(a1 + *(v36 + 28));
  if (v40)
  {
    if (v40 >> 62)
    {
      v41 = sub_261D00274();
    }

    else
    {
      v41 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v41)
    {
      v71 = MEMORY[0x277D84F90];
      sub_261B3A35C(0, v41 & ~(v41 >> 63), 0);
      if (v41 < 0)
      {
        __break(1u);
        return;
      }

      v42 = v71;
      if ((v40 & 0xC000000000000001) != 0)
      {
        v43 = 0;
        v44 = v60;
        do
        {
          MEMORY[0x26671CA10](v43, v40);
          sub_261CFE2F4();
          v71 = v42;
          v46 = *(v42 + 16);
          v45 = *(v42 + 24);
          if (v46 >= v45 >> 1)
          {
            sub_261B3A35C(v45 > 1, v46 + 1, 1);
            v44 = v60;
            v42 = v71;
          }

          ++v43;
          *(v42 + 16) = v46 + 1;
          (*(v11 + 32))(v42 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v46, v17, v44);
        }

        while (v41 != v43);
      }

      else
      {
        v47 = (v40 + 32);
        v48 = v60;
        do
        {
          v49 = *v47;
          sub_261CFE2F4();
          v71 = v42;
          v51 = *(v42 + 16);
          v50 = *(v42 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_261B3A35C(v50 > 1, v51 + 1, 1);
            v48 = v60;
            v42 = v71;
          }

          *(v42 + 16) = v51 + 1;
          (*(v11 + 32))(v42 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v51, v15, v48);
          ++v47;
          --v41;
        }

        while (v41);
      }

      a1 = v70;
    }

    sub_261CFE084();
  }

  v52 = v68;
  v53 = v65;
  sub_261AFB668(a1 + *(v68 + 32), v65, &qword_27FEDB238, &unk_261D056F0);
  v55 = v66;
  v54 = v67;
  if ((*(v66 + 48))(v53, 1, v67) == 1)
  {
    sub_261AE6A40(v53, &qword_27FEDB238, &unk_261D056F0);
  }

  else
  {
    v56 = v61;
    (*(v55 + 32))(v61, v53, v54);
    v57 = v62;
    (*(v55 + 16))(v62, v56, v54);
    (*(v55 + 56))(v57, 0, 1, v54);
    sub_261CFE0B4();
    sub_261AE6A40(v57, &qword_27FEDB238, &unk_261D056F0);
    (*(v55 + 8))(v56, v54);
  }

  v58 = *(a1 + *(v52 + 36));
  if (v58)
  {
    v59 = v58;
    sub_261CFE034();
  }
}

uint64_t RemindersInCalendarEditingReminderProperties.title.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_261CFD104();
  return v1;
}

uint64_t RemindersInCalendarEditingReminderProperties.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RemindersInCalendarEditingReminderProperties.notes.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_261CFD104();
  return v1;
}

uint64_t RemindersInCalendarEditingReminderProperties.notes.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RemindersInCalendarEditingReminderProperties.recurrenceRules.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemindersInCalendarEditingReminderProperties() + 28));

  return sub_261CFD104();
}

uint64_t RemindersInCalendarEditingReminderProperties.recurrenceRules.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemindersInCalendarEditingReminderProperties() + 28);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_261CEA3A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void *RemindersInCalendarEditingReminderProperties.userActivity.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemindersInCalendarEditingReminderProperties() + 36));
  v2 = v1;
  return v1;
}

void RemindersInCalendarEditingReminderProperties.userActivity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemindersInCalendarEditingReminderProperties() + 36);

  *(v1 + v3) = a1;
}

char *initializeBufferWithCopyOfBuffer for RemindersInCalendarEditingReminderProperties(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *v4 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = a3[6];
    v10 = sub_261CFD4E4();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    sub_261CFD104();
    sub_261CFD104();
    if (v12(&a2[v9], 1, v10))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(&v4[v9], &a2[v9], *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v4[v9], &a2[v9], v10);
      (*(v11 + 56))(&v4[v9], 0, 1, v10);
    }

    v15 = a3[8];
    *&v4[a3[7]] = *&a2[a3[7]];
    v16 = sub_261CFD754();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    sub_261CFD104();
    if (v18(&a2[v15], 1, v16))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
      memcpy(&v4[v15], &a2[v15], *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v17 + 16))(&v4[v15], &a2[v15], v16);
      (*(v17 + 56))(&v4[v15], 0, 1, v16);
    }

    v20 = a3[9];
    v21 = *&a2[v20];
    *&v4[v20] = v21;
    v22 = v21;
  }

  return v4;
}

void destroy for RemindersInCalendarEditingReminderProperties(uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);

  v5 = *(a1 + 24);

  v6 = a2[6];
  v7 = sub_261CFD4E4();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(a1 + v6, 1, v7))
  {
    (*(v8 + 8))(a1 + v6, v7);
  }

  v9 = *(a1 + a2[7]);

  v10 = a2[8];
  v11 = sub_261CFD754();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(a1 + v10, 1, v11))
  {
    (*(v12 + 8))(a1 + v10, v11);
  }

  v13 = *(a1 + a2[9]);
}

char *initializeWithCopy for RemindersInCalendarEditingReminderProperties(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;
  v8 = a3[6];
  v9 = sub_261CFD4E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  sub_261CFD104();
  sub_261CFD104();
  if (v11(&a2[v8], 1, v9))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(&a1[v8], &a2[v8], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v13 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v14 = sub_261CFD754();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  sub_261CFD104();
  if (v16(&a2[v13], 1, v14))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
    memcpy(&a1[v13], &a2[v13], *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(&a1[v13], &a2[v13], v14);
    (*(v15 + 56))(&a1[v13], 0, 1, v14);
  }

  v18 = a3[9];
  v19 = *&a2[v18];
  *&a1[v18] = v19;
  v20 = v19;
  return a1;
}

char *assignWithCopy for RemindersInCalendarEditingReminderProperties(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = *(a1 + 1);
  *(a1 + 1) = *(a2 + 1);
  sub_261CFD104();

  *(a1 + 2) = *(a2 + 2);
  v7 = *(a1 + 3);
  *(a1 + 3) = *(a2 + 3);
  sub_261CFD104();

  v8 = a3[6];
  v9 = sub_261CFD4E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(&a1[v8], 1, v9);
  v13 = v11(&a2[v8], 1, v9);
  if (v12)
  {
    if (!v13)
    {
      (*(v10 + 16))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    (*(v10 + 8))(&a1[v8], v9);
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(&a1[v8], &a2[v8], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v10 + 24))(&a1[v8], &a2[v8], v9);
LABEL_7:
  v15 = a3[7];
  v16 = *&a1[v15];
  *&a1[v15] = *&a2[v15];
  sub_261CFD104();

  v17 = a3[8];
  v18 = sub_261CFD754();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  v21 = v20(&a1[v17], 1, v18);
  v22 = v20(&a2[v17], 1, v18);
  if (!v21)
  {
    if (!v22)
    {
      (*(v19 + 24))(&a1[v17], &a2[v17], v18);
      goto LABEL_13;
    }

    (*(v19 + 8))(&a1[v17], v18);
    goto LABEL_12;
  }

  if (v22)
  {
LABEL_12:
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
    memcpy(&a1[v17], &a2[v17], *(*(v23 - 8) + 64));
    goto LABEL_13;
  }

  (*(v19 + 16))(&a1[v17], &a2[v17], v18);
  (*(v19 + 56))(&a1[v17], 0, 1, v18);
LABEL_13:
  v24 = a3[9];
  v25 = *&a1[v24];
  v26 = *&a2[v24];
  *&a1[v24] = v26;
  v27 = v26;

  return a1;
}

char *initializeWithTake for RemindersInCalendarEditingReminderProperties(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[6];
  v8 = sub_261CFD4E4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&a2[v7], 1, v8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  v11 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v12 = sub_261CFD754();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(&a2[v11], 1, v12))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
    memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v13 + 32))(&a1[v11], &a2[v11], v12);
    (*(v13 + 56))(&a1[v11], 0, 1, v12);
  }

  *&a1[a3[9]] = *&a2[a3[9]];
  return a1;
}

char *assignWithTake for RemindersInCalendarEditingReminderProperties(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  v7 = *(a1 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v8 = *(a2 + 3);
  v9 = *(a1 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v8;

  v10 = a3[6];
  v11 = sub_261CFD4E4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 48);
  v14 = v13(&a1[v10], 1, v11);
  v15 = v13(&a2[v10], 1, v11);
  if (v14)
  {
    if (!v15)
    {
      (*(v12 + 32))(&a1[v10], &a2[v10], v11);
      (*(v12 + 56))(&a1[v10], 0, 1, v11);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v15)
  {
    (*(v12 + 8))(&a1[v10], v11);
LABEL_6:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(&a1[v10], &a2[v10], *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  (*(v12 + 40))(&a1[v10], &a2[v10], v11);
LABEL_7:
  v17 = a3[7];
  v18 = *&a1[v17];
  *&a1[v17] = *&a2[v17];

  v19 = a3[8];
  v20 = sub_261CFD754();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  v23 = v22(&a1[v19], 1, v20);
  v24 = v22(&a2[v19], 1, v20);
  if (!v23)
  {
    if (!v24)
    {
      (*(v21 + 40))(&a1[v19], &a2[v19], v20);
      goto LABEL_13;
    }

    (*(v21 + 8))(&a1[v19], v20);
    goto LABEL_12;
  }

  if (v24)
  {
LABEL_12:
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
    memcpy(&a1[v19], &a2[v19], *(*(v25 - 8) + 64));
    goto LABEL_13;
  }

  (*(v21 + 32))(&a1[v19], &a2[v19], v20);
  (*(v21 + 56))(&a1[v19], 0, 1, v20);
LABEL_13:
  v26 = a3[9];
  v27 = *&a1[v26];
  *&a1[v26] = *&a2[v26];

  return a1;
}

void sub_261CEB34C()
{
  sub_261CEB460(319, &qword_27FEDA190, MEMORY[0x277CC8990]);
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_261CEB460(319, &qword_27FEDE658, MEMORY[0x277CC9260]);
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_initStructMetadata();
    }
  }
}

void sub_261CEB460(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_261D00154();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t CompleteReminderAppIntent.completeSubtasks.getter()
{
  v1 = *(v0 + 16);
  sub_261CFCBB4();
  return v3;
}

uint64_t CompleteReminderAppIntent.isCompleted.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t CompleteReminderAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v81 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v77 = &v57 - v3;
  v80 = sub_261CFD184();
  v82 = *(v80 - 8);
  v4 = *(v82 + 64);
  MEMORY[0x28223BE20](v80);
  v79 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v69 = &v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v78 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v60 = &v57 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v68 = &v57 - v16;
  v17 = sub_261CFD674();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v17);
  v21 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_261CFD884();
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = sub_261CFFA44();
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = sub_261CFD6A4();
  v75 = v26;
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x28223BE20](v26);
  v62 = &v57 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v61 = &v57 - v32;
  MEMORY[0x28223BE20](v31);
  v63 = &v57 - v33;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA68, &unk_261D03630);
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = *(v18 + 104);
  v64 = *MEMORY[0x277CC9110];
  v34 = v64;
  v65 = v17;
  v35(v21, v64, v17);
  v66 = v18 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v21, v34, v17);
  v36 = v68;
  sub_261CFD6C4();
  v37 = *(v27 + 56);
  v74 = v27 + 56;
  v76 = v37;
  v37(v36, 0, 1, v26);
  v38 = type metadata accessor for ReminderEntity();
  (*(*(v38 - 8) + 56))(v60, 1, 1, v38);
  v39 = sub_261CFC834();
  v73 = v39;
  v40 = *(v39 - 8);
  v41 = *(v40 + 56);
  v72 = v41;
  v42 = v40 + 56;
  v41(v78, 1, 1, v39);
  v67 = v42;
  v41(v69, 1, 1, v39);
  v71 = *MEMORY[0x277CBA308];
  v43 = *(v82 + 104);
  v82 += 104;
  v70 = v43;
  v43(v79);
  sub_261CEF0F4(&qword_280D22358, type metadata accessor for ReminderEntity);
  *v81 = sub_261CFCC34();
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v44 = v64;
  v45 = v65;
  v58 = v35;
  v35(v21, v64, v65);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v21, v44, v45);
  v46 = v68;
  sub_261CFD6C4();
  v76(v46, 0, 1, v75);
  v84 = 1;
  sub_261CFD664();
  sub_261CFD664();
  v47 = v77;
  sub_261CFFCD4();
  v48 = sub_261CFFCE4();
  v49 = *(v48 - 8);
  v61 = *(v49 + 56);
  v62 = (v49 + 56);
  (v61)(v47, 0, 1, v48);
  v72(v78, 1, 1, v73);
  v70(v79, v71, v80);
  v50 = v46;
  v81[1] = sub_261CFCD44();
  sub_261CFF9B4();
  sub_261CFD874();
  v51 = v64;
  v52 = v65;
  v53 = v58;
  v58(v21, v64, v65);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v53(v21, v51, v52);
  sub_261CFD6C4();
  v76(v50, 0, 1, v75);
  v84 = 1;
  (v61)(v77, 1, 1, v48);
  v72(v78, 1, 1, v73);
  v70(v79, v71, v80);
  v54 = sub_261CFCD44();
  v55 = v81;
  v81[2] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE678, &qword_261D130B0);
  v83 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v55[3] = result;
  return result;
}

uint64_t sub_261CEC08C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for ReminderEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - v9;
  sub_261B4C910(a1, &v16 - v9);
  v11 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  sub_261B4C910(v10, v8);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261CEF13C(v10, type metadata accessor for ReminderEntity);
}

uint64_t CompleteReminderAppIntent.reminder.setter(uint64_t a1)
{
  v3 = type metadata accessor for ReminderEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *v1;
  sub_261B4C910(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261CEF13C(a1, type metadata accessor for ReminderEntity);
}

uint64_t (*CompleteReminderAppIntent.reminder.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CompleteReminderAppIntent.isCompleted.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*CompleteReminderAppIntent.completeSubtasks.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261CEC480()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDE660);
  __swift_project_value_buffer(v9, qword_27FEDE660);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static CompleteReminderAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D90 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE660);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t CompleteReminderAppIntent.init(reminder:isCompleted:completeSubtasks:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, char **a4@<X8>)
{
  v77 = a3;
  v76 = a2;
  v75 = a1;
  v96 = a4;
  v4 = type metadata accessor for ReminderEntity();
  v87 = *(v4 - 8);
  v88 = v4;
  v5 = *(v87 + 8);
  v6 = MEMORY[0x28223BE20](v4);
  v74 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v73 = &v67 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v92 = &v67 - v11;
  v95 = sub_261CFD184();
  v97 = *(v95 - 8);
  v12 = *(v97 + 64);
  MEMORY[0x28223BE20](v95);
  v94 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v84 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v93 = &v67 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v72 = &v67 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v69 = &v67 - v24;
  v25 = sub_261CFD674();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x28223BE20](v25);
  v29 = &v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_261CFD884();
  v31 = *(*(v30 - 8) + 64);
  MEMORY[0x28223BE20](v30 - 8);
  v32 = sub_261CFFA44();
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x28223BE20](v32 - 8);
  v34 = sub_261CFD6A4();
  v90 = v34;
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = MEMORY[0x28223BE20](v34);
  v71 = &v67 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x28223BE20](v37);
  v70 = &v67 - v40;
  MEMORY[0x28223BE20](v39);
  v78 = &v67 - v41;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA68, &unk_261D03630);
  sub_261CFF9B4();
  sub_261CFD874();
  v43 = *(v26 + 104);
  v79 = *MEMORY[0x277CC9110];
  v42 = v79;
  v81 = v25;
  v43(v29, v79, v25);
  v80 = v43;
  v82 = v26 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v43(v29, v42, v25);
  v44 = v69;
  sub_261CFD6C4();
  v45 = *(v35 + 56);
  v89 = v35 + 56;
  v91 = v45;
  v45(v44, 0, 1, v34);
  (*(v87 + 7))(v72, 1, 1, v88);
  v46 = sub_261CFC834();
  v88 = v46;
  v47 = *(v46 - 8);
  v48 = *(v47 + 56);
  v87 = v48;
  v49 = v47 + 56;
  v48(v93, 1, 1, v46);
  v83 = v49;
  v48(v84, 1, 1, v46);
  v86 = *MEMORY[0x277CBA308];
  v50 = *(v97 + 104);
  v97 += 104;
  v85 = v50;
  v50(v94);
  sub_261CEF0F4(&qword_280D22358, type metadata accessor for ReminderEntity);
  v51 = v44;
  v72 = sub_261CFCC34();
  *v96 = v72;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v52 = v79;
  v53 = v81;
  v54 = v80;
  v80(v29, v79, v81);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v54(v29, v52, v53);
  v55 = v51;
  sub_261CFD6C4();
  v91(v51, 0, 1, v90);
  v99 = 1;
  sub_261CFD664();
  sub_261CFD664();
  v56 = v92;
  sub_261CFFCD4();
  v57 = sub_261CFFCE4();
  v58 = *(v57 - 8);
  v68 = *(v58 + 56);
  v70 = (v58 + 56);
  v68(v56, 0, 1, v57);
  v87(v93, 1, 1, v88);
  v85(v94, v86, v95);
  v71 = sub_261CFCD44();
  v96[1] = v71;
  sub_261CFF9B4();
  sub_261CFD874();
  v59 = v79;
  v60 = v81;
  v61 = v80;
  v80(v29, v79, v81);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v61(v29, v59, v60);
  sub_261CFD6C4();
  v91(v55, 0, 1, v90);
  v99 = 1;
  v68(v92, 1, 1, v57);
  v87(v93, 1, 1, v88);
  v85(v94, v86, v95);
  v62 = sub_261CFCD44();
  v63 = v96;
  v96[2] = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE678, &qword_261D130B0);
  v98 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v63[3] = sub_261CFC684();
  v64 = v75;
  v65 = v73;
  sub_261B4C910(v75, v73);
  sub_261B4C910(v65, v74);
  sub_261CFCBC4();
  sub_261CEF13C(v65, type metadata accessor for ReminderEntity);
  v99 = v76;
  sub_261CFCBC4();
  v99 = v77;
  sub_261CFCBC4();
  return sub_261CEF13C(v64, type metadata accessor for ReminderEntity);
}

uint64_t CompleteReminderAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261CED440, v5, v4);
}

uint64_t sub_261CED440()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_261B06958;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_261C56268(v10, "CompleteReminderAppIntent", 25, 2, v8, v9, v6, v7);
}

uint64_t sub_261CED534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = sub_261CFC9D4();
  v5[16] = v6;
  v7 = *(v6 - 8);
  v5[17] = v7;
  v8 = *(v7 + 64) + 15;
  v5[18] = swift_task_alloc();
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0) - 8) + 64) + 15;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAF8, &qword_261D13230);
  v5[21] = v10;
  v11 = *(v10 - 8);
  v5[22] = v11;
  v12 = *(v11 + 64) + 15;
  v5[23] = swift_task_alloc();
  v13 = *(*(type metadata accessor for ListEntity() - 8) + 64) + 15;
  v5[24] = swift_task_alloc();
  v14 = type metadata accessor for ReminderEntity();
  v5[25] = v14;
  v15 = *(v14 - 8);
  v5[26] = v15;
  v16 = *(v15 + 64) + 15;
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v17 = sub_261CFD754();
  v5[29] = v17;
  v18 = *(v17 - 8);
  v5[30] = v18;
  v19 = *(v18 + 64) + 15;
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  sub_261CFFD24();
  v5[33] = sub_261CFFD14();
  v21 = sub_261CFFCF4();
  v5[34] = v21;
  v5[35] = v20;

  return MEMORY[0x2822009F8](sub_261CED7D8, v21, v20);
}

uint64_t sub_261CED7D8()
{
  v1 = *(v0 + 224);
  sub_261B2C804(0, *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  sub_261CFCBB4();
  v2 = *(v0 + 304);
  sub_261CFCBB4();
  v3 = *(v0 + 256);
  v4 = *(v0 + 224);
  if (v2 == 1)
  {
    v5 = *(v0 + 192);
    v6 = *(v4 + *(*(v0 + 200) + 48));
    sub_261CFCA04();
    sub_261CEF13C(v4, type metadata accessor for ReminderEntity);
    sub_261BBF268(v3);
    v7 = type metadata accessor for ListEntity;
    v8 = v5;
  }

  else
  {
    v9 = *(v0 + 224);
    sub_261BBF818(0, *(v0 + 256));
    v7 = type metadata accessor for ReminderEntity;
    v8 = v4;
  }

  sub_261CEF13C(v8, v7);
  v11 = *(v0 + 112);
  v10 = *(v0 + 120);
  v19 = *(v0 + 96);
  sub_261CFC664();
  v12 = *(v0 + 40);
  v13 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v12);
  *(v0 + 56) = v19;
  *(v0 + 72) = v11;
  *(v0 + 80) = v10;
  v14 = *(v13 + 8);
  v20 = (v14 + *v14);
  v15 = v14[1];
  v16 = swift_task_alloc();
  *(v0 + 288) = v16;
  *v16 = v0;
  v16[1] = sub_261CEDA08;
  v17 = *(v0 + 184);

  return v20(v17, v0 + 56, v12, v13);
}

uint64_t sub_261CEDA08()
{
  v2 = *v1;
  v3 = *(*v1 + 288);
  v8 = *v1;
  *(*v1 + 296) = v0;

  v4 = *(v2 + 272);
  v5 = *(v2 + 280);
  if (v0)
  {
    v6 = sub_261CEE094;
  }

  else
  {
    v6 = sub_261CEDB1C;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261CEDB1C()
{
  v56 = v0;
  v1 = v0[33];
  v2 = v0[25];
  v3 = v0[26];
  v4 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[19];

  sub_261B01D28(&qword_27FEDE6D8, &qword_27FEDAAF8, &qword_261D13230);
  sub_261CFC964();
  sub_261C90F90(v6, v7);
  if ((*(v3 + 48))(v7, 1, v2) == 1)
  {
    v9 = v0[30];
    v8 = v0[31];
    v10 = v0[29];
    sub_261C91000(v0[19]);
    sub_261CFD704();
    v11 = sub_261CFD714();
    v13 = v12;
    v14 = *(v9 + 8);
    v14(v8, v10);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v15 = sub_261CFF7A4();
    __swift_project_value_buffer(v15, qword_27FED9EF8);
    sub_261CFD104();
    v16 = sub_261CFF784();
    v17 = sub_261CFFE64();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v55[0] = v19;
      *v18 = 136315650;
      v20 = sub_261B879C8(v11, v13, v55);

      *(v18 + 4) = v20;
      *(v18 + 12) = 2048;
      *(v18 + 14) = 326;
      *(v18 + 22) = 2080;
      *(v18 + 24) = sub_261B879C8(0xD00000000000004DLL, 0x8000000261D23DC0, v55);
      _os_log_impl(&dword_261AE2000, v16, v17, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v19, -1, -1);
      MEMORY[0x26671D560](v18, -1, -1);
    }

    else
    {
    }

    v31 = v0[32];
    v32 = v0[29];
    v33 = v0[22];
    v34 = v0[23];
    v36 = v0[20];
    v35 = v0[21];
    sub_261B01D70();
    swift_allocError();
    *v37 = 20;
    swift_willThrow();
    sub_261C91000(v36);
    (*(v33 + 8))(v34, v35);
    v14(v31, v32);
    v39 = v0[31];
    v38 = v0[32];
    v41 = v0[27];
    v40 = v0[28];
    v43 = v0[23];
    v42 = v0[24];
    v45 = v0[19];
    v44 = v0[20];
    v46 = v0[18];
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v30 = v0[1];
  }

  else
  {
    v21 = v0[31];
    v22 = v0[30];
    v48 = v0[29];
    v49 = v0[32];
    v23 = v0[27];
    v53 = v0[28];
    v54 = v0[24];
    v24 = v0[22];
    v25 = v0[23];
    v52 = v0[25];
    v27 = v0[20];
    v26 = v0[21];
    v28 = v0[18];
    v29 = v0[17];
    v50 = v0[11];
    v51 = v0[16];
    sub_261B837B0(v0[19], v23);
    sub_261C91000(v27);
    (*(v24 + 8))(v25, v26);
    (*(v22 + 16))(v21, v49, v48);
    sub_261CFC9E4();
    sub_261CEF0F4(&qword_280D22350, type metadata accessor for ReminderEntity);
    sub_261CEF0F4(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
    sub_261CFC984();
    (*(v29 + 8))(v28, v51);
    sub_261CEF13C(v23, type metadata accessor for ReminderEntity);
    (*(v22 + 8))(v49, v48);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v30 = v0[1];
  }

  return v30();
}

uint64_t sub_261CEE094()
{
  v2 = v0[32];
  v1 = v0[33];
  v3 = v0[29];
  v4 = v0[30];

  (*(v4 + 8))(v2, v3);
  v16 = v0[37];
  v6 = v0[31];
  v5 = v0[32];
  v8 = v0[27];
  v7 = v0[28];
  v10 = v0[23];
  v9 = v0[24];
  v12 = v0[19];
  v11 = v0[20];
  v13 = v0[18];
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v14 = v0[1];

  return v14();
}

uint64_t static CompleteReminderAppIntent.parameterSummary.getter()
{
  v0 = sub_261CFD254();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v1 + 104))(v4, *MEMORY[0x277CBA468], v0);
  v6[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE680, &unk_261D13108);
  sub_261B312B8();
  sub_261B01D28(&qword_27FEDE688, &qword_27FEDE680, &unk_261D13108);
  sub_261B01D28(&qword_27FEDE690, &qword_27FEDA3A0, &qword_261D02F70);
  return sub_261CFD2C4();
}

uint64_t sub_261CEE384@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6B8, &qword_261D13240);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6C0, &qword_261D13248);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE680, &unk_261D13108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_261B312B8();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6C8, &qword_261D13278);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6D0, &qword_261D13280);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  sub_261CFD124();
  v13 = sub_261B01D28(&qword_27FEDE688, &qword_27FEDE680, &unk_261D13108);
  MEMORY[0x266719870](v10, &type metadata for CompleteReminderAppIntent, v5, v13);
  v14 = *(v6 + 8);
  v14(v10, v5);
  MEMORY[0x266719860](v12, &type metadata for CompleteReminderAppIntent, v5, v13);
  return (v14)(v12, v5);
}

uint64_t sub_261CEE6A8@<X0>(uint64_t a1@<X8>)
{
  v16[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6B8, &qword_261D13240);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6C0, &qword_261D13248);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE680, &unk_261D13108);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_261B312B8();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6C8, &qword_261D13278);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6D0, &qword_261D13280);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  sub_261CFD134();
  v13 = sub_261B01D28(&qword_27FEDE688, &qword_27FEDE680, &unk_261D13108);
  MEMORY[0x266719870](v10, &type metadata for CompleteReminderAppIntent, v5, v13);
  v14 = *(v6 + 8);
  v14(v10, v5);
  MEMORY[0x266719860](v12, &type metadata for CompleteReminderAppIntent, v5, v13);
  return (v14)(v12, v5);
}

unint64_t sub_261CEE9EC()
{
  result = qword_27FEDE698;
  if (!qword_27FEDE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE698);
  }

  return result;
}

uint64_t sub_261CEEA90()
{
  swift_getKeyPath();
  sub_261B312B8();
  v0 = sub_261CFCDA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_261D030F0;
  *(v1 + 32) = v0;
  sub_261CFCDA4();
  v2 = sub_261CFD104();

  return v2;
}

uint64_t sub_261CEEB4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D90 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE660);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261CEEBF4()
{
  v0 = sub_261CFD254();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v6[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v1 + 104))(v4, *MEMORY[0x277CBA468], v0);
  v6[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE680, &unk_261D13108);
  sub_261B01D28(&qword_27FEDE688, &qword_27FEDE680, &unk_261D13108);
  sub_261B01D28(&qword_27FEDE690, &qword_27FEDA3A0, &qword_261D02F70);
  return sub_261CFD2C4();
}

uint64_t sub_261CEEDD8(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261CEEE7C, v5, v4);
}

uint64_t sub_261CEEE7C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_261B07CF8;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_261C56268(v10, "CompleteReminderAppIntent", 25, 2, v8, v9, v6, v7);
}

uint64_t sub_261CEEF74(uint64_t a1)
{
  v2 = sub_261B312B8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of CompleteReminderIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

uint64_t sub_261CEF0F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_261CEF13C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AddOrRemoveTagsAppIntent.reminders.getter()
{
  v1 = *(v0 + 8);
  sub_261CFCBB4();
  return v3;
}

uint64_t AddOrRemoveTagsAppIntent.tags.getter()
{
  v1 = *(v0 + 16);
  sub_261CFCBB4();
  return v3;
}

uint64_t AddOrRemoveTagsAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v78 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v61 = v58 - v3;
  v77 = sub_261CFD184();
  v79 = *(v77 - 8);
  v4 = *(v79 + 64);
  MEMORY[0x28223BE20](v77);
  v74 = v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v73 = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v63 = v58 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v76 = v58 - v13;
  v14 = sub_261CFD674();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_261CFD884();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_261CFFA44();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_261CFD6A4();
  v72 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v58[2] = v58 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v29 = v58 - v28;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE748, &qword_261D132C8);
  sub_261CFF9B4();
  sub_261CFD874();
  v30 = *MEMORY[0x277CC9110];
  v59 = v15;
  v31 = *(v15 + 104);
  v70 = v30;
  v58[0] = v14;
  v31(v18, v30, v14);
  v69 = v31;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v18, v30, v14);
  v32 = v76;
  sub_261CFD6C4();
  v33 = *(v24 + 56);
  v71 = v24 + 56;
  v65 = v33;
  v33(v32, 0, 1, v23);
  LOBYTE(v81) = 0;
  v34 = sub_261CFC834();
  v35 = *(v34 - 8);
  v36 = *(v35 + 56);
  v37 = v35 + 56;
  v38 = v63;
  v36(v63, 1, 1, v34);
  v67 = v36;
  v68 = v34;
  v66 = v37;
  v36(v73, 1, 1, v34);
  v39 = *(v79 + 104);
  v62 = *MEMORY[0x277CBA308];
  v79 += 104;
  v64 = v39;
  v39(v74);
  v40 = v38;
  sub_261C28D0C();
  v41 = v76;
  v42 = sub_261CFCC04();
  v43 = v58[0];
  *v78 = v42;
  v58[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v44 = v70;
  v45 = v69;
  v69(v18, v70, v43);
  v75 = v29;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v60 = v15 + 104;
  v45(v18, v44, v43);
  sub_261CFD6C4();
  v65(v41, 0, 1, v72);
  v81 = 0;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v43, qword_280D27028);
  (*(v59 + 16))(v18, v46, v43);
  sub_261CFD874();
  sub_261CFD6C4();
  sub_261CFC844();
  v48 = v67;
  v47 = v68;
  v67(v40, 0, 1, v68);
  v49 = v43;
  v48(v73, 1, 1, v47);
  v50 = v74;
  v64(v74, v62, v77);
  sub_261CEF0F4(&qword_280D22358, type metadata accessor for ReminderEntity);
  v51 = v76;
  v78[1] = sub_261CFCC34();
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE750, &qword_261D132D8);
  sub_261CFF9B4();
  sub_261CFD874();
  v52 = v70;
  v53 = v69;
  v69(v18, v70, v49);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v53(v18, v52, v49);
  sub_261CFD6C4();
  v65(v51, 0, 1, v72);
  v81 = 0;
  v54 = sub_261CFF994();
  (*(*(v54 - 8) + 56))(v61, 1, 1, v54);
  v67(v63, 1, 1, v68);
  v64(v50, v62, v77);
  v55 = sub_261CFCD24();
  v56 = v78;
  v78[2] = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE758, &qword_261D132E0);
  v80 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v56[3] = result;
  return result;
}

uint64_t AddOrRemoveTagsAppIntent.operation.setter(char *a1)
{
  v2 = *v1;
  v4 = *a1;
  return sub_261CFCBC4();
}

uint64_t sub_261CEFD4C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261CEFDBC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 8);
  result = sub_261CFCBB4();
  *a2 = v5;
  return result;
}

uint64_t sub_261CEFDF8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[2];
  v5 = a2[3];
  v7 = *a1;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t AddOrRemoveTagsAppIntent.Operation.rawValue.getter()
{
  if (*v0)
  {
    result = 0x65766F6D6572;
  }

  else
  {
    result = 6579297;
  }

  *v0;
  return result;
}

uint64_t sub_261CEFEE4()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE6E0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE6E0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CEFFAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FEDE6F8);
  __swift_project_value_buffer(v15, qword_27FEDE6F8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6C4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t sub_261CF02C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v41 = &v29 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v40 = &v29 - v5;
  v43 = sub_261CFD674();
  v6 = *(v43 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v43);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD884();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFFA44();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v42 = sub_261CFD6A4();
  v45 = *(v42 - 8);
  v14 = *(v45 + 64);
  MEMORY[0x28223BE20](v42);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE848, &unk_261D137B0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD200, &qword_261D0DB30);
  v44 = v15;
  v16 = *(v15 - 8);
  v39 = *(v16 + 72);
  v17 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v18 = swift_allocObject();
  v34 = v18;
  *(v18 + 16) = xmmword_261D01400;
  v19 = v18 + v17;
  v35 = *(v15 + 48);
  *(v18 + v17) = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v36 = *MEMORY[0x277CC9110];
  v20 = *(v6 + 104);
  v37 = v6 + 104;
  v38 = v20;
  v30 = v9;
  v20(v9);
  sub_261CFD6C4();
  v21 = *(v45 + 56);
  v45 += 56;
  v32 = v21;
  v22 = v40;
  v21(v40, 1, 1, v42);
  v23 = sub_261CFD074();
  v31 = *(*(v23 - 8) + 56);
  v24 = v41;
  v31(v41, 1, 1, v23);
  v33 = v19;
  v25 = v24;
  sub_261CFD0A4();
  v26 = (v19 + v39);
  v39 = *(v44 + 48);
  *v26 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v38(v30, v36, v43);
  sub_261CFD6C4();
  v32(v22, 1, 1, v42);
  v31(v25, 1, 1, v23);
  sub_261CFD0A4();
  v27 = sub_261C3B040(v34);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDE710 = v27;
  return result;
}

uint64_t static AddOrRemoveTagsAppIntent.Operation.caseDisplayRepresentations.getter()
{
  if (qword_27FED9DA8 != -1)
  {
    swift_once();
  }

  return sub_261CFD104();
}

RemindersAppIntents::AddOrRemoveTagsAppIntent::Operation_optional __swiftcall AddOrRemoveTagsAppIntent.Operation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_261CF08E8@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_261D00554();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a2 = v7;
  return result;
}

uint64_t sub_261CF0990(uint64_t a1)
{
  v2 = sub_261C28D0C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261CF09DC()
{
  if (qword_27FED9DA8 != -1)
  {
    swift_once();
  }

  return sub_261CFD104();
}

uint64_t sub_261CF0A38(uint64_t a1)
{
  v2 = sub_261CF2578();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t (*AddOrRemoveTagsAppIntent.operation.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*AddOrRemoveTagsAppIntent.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*AddOrRemoveTagsAppIntent.tags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261CF0C54()
{
  v0 = sub_261CFD244();
  __swift_allocate_value_buffer(v0, qword_27FEDE718);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE718);
  v2 = *MEMORY[0x277CBA400];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_261CF0D14()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_261CFD884();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = sub_261CFFA44();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v9, qword_27FEDE730);
  __swift_project_value_buffer(v9, qword_27FEDE730);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v4, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t sub_261CF0F2C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t static AddOrRemoveTagsAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v20[-v4];
  v6 = sub_261CFD674();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v7 + 104))(v10, *MEMORY[0x277CC9110], v6);
  sub_261CFD6C4();
  (*(v16 + 56))(v5, 1, 1, v15);
  sub_261CFCF04();
  v18 = sub_261CFCEE4();
  return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
}

uint64_t AddOrRemoveTagsAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261CF1370, v5, v4);
}

uint64_t sub_261CF1370()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_261B06958;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_261C54E80(v10, "AddOrRemoveTagsAppIntent", 24, 2, v8, v9, v6, v7);
}

uint64_t sub_261CF1464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = sub_261CFC9D4();
  v5[18] = v6;
  v7 = *(v6 - 8);
  v5[19] = v7;
  v8 = *(v7 + 64) + 15;
  v5[20] = swift_task_alloc();
  v9 = *(type metadata accessor for ReminderEntity() - 8);
  v5[21] = v9;
  v10 = *(v9 + 64) + 15;
  v5[22] = swift_task_alloc();
  v11 = sub_261CFD754();
  v5[23] = v11;
  v12 = *(v11 - 8);
  v5[24] = v12;
  v13 = *(v12 + 64) + 15;
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA538, &qword_261D030D0);
  v5[27] = v14;
  v15 = *(v14 - 8);
  v5[28] = v15;
  v16 = *(v15 + 64) + 15;
  v5[29] = swift_task_alloc();
  sub_261CFFD24();
  v5[30] = sub_261CFFD14();
  v18 = sub_261CFFCF4();
  v5[31] = v18;
  v5[32] = v17;

  return MEMORY[0x2822009F8](sub_261CF1688, v18, v17);
}

uint64_t sub_261CF1688()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  sub_261B2D5D0(0, v4, v3, v1, v2);
  sub_261CFC664();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[7] = v4;
  v0[8] = v3;
  v0[9] = v1;
  v0[10] = v2;
  v7 = *(v6 + 8);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[33] = v9;
  *v9 = v0;
  v9[1] = sub_261CF180C;
  v10 = v0[29];

  return (v12)(v10, v0 + 7, v5, v6);
}

uint64_t sub_261CF180C()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v8 = *v1;
  *(*v1 + 272) = v0;

  v4 = *(v2 + 248);
  v5 = *(v2 + 256);
  if (v0)
  {
    v6 = sub_261CF1D30;
  }

  else
  {
    v6 = sub_261CF1920;
  }

  return MEMORY[0x2822009F8](v6, v4, v5);
}

uint64_t sub_261CF1920()
{
  v1 = v0[34];
  v3 = v0[29];
  v2 = v0[30];
  v4 = v0[27];

  sub_261B01D28(&qword_27FEDE840, &qword_27FEDA538, &qword_261D030D0);
  sub_261CFC964();
  v5 = sub_261CF3070(0xD000000000000054, 0x8000000261D24230, 0xD000000000000077, 0x8000000261D24290, 133, v0[11]);
  v6 = v1;
  v7 = v0[29];
  v8 = v0[27];
  v9 = *(v0[28] + 8);
  if (v6)
  {
    v9(v0[29], v0[27]);

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
LABEL_3:
    v10 = v0[29];
    v12 = v0[25];
    v11 = v0[26];
    v13 = v0[22];
    v14 = v0[20];

    v15 = v0[1];
    goto LABEL_6;
  }

  v16 = v5;
  sub_261CFD104();
  v9(v7, v8);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (!*(v16 + 16))
  {

    if (qword_27FED9D98 != -1)
    {
      swift_once();
    }

    v26 = sub_261CFF7A4();
    __swift_project_value_buffer(v26, qword_27FEDE6E0);
    v27 = sub_261CFF784();
    v28 = sub_261CFFE64();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_261AE2000, v27, v28, "[AddOrRemoveTagsAppIntent] reminders parameter is an empty array despite requestValueDialog was prompted.", v29, 2u);
      MEMORY[0x26671D560](v29, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v30 = 24;
    swift_willThrow();
    goto LABEL_3;
  }

  v18 = v0[25];
  v17 = v0[26];
  v20 = v0[23];
  v19 = v0[24];
  v21 = v0[22];
  v23 = v0[19];
  v22 = v0[20];
  v32 = v0[18];
  v33 = v0[29];
  v31 = v0[13];
  v24 = *(v0[21] + 80);
  sub_261B4C910(v16 + ((v24 + 32) & ~v24), v21);
  sub_261BBF818(0, v17);
  sub_261B4C974(v21);
  v0[12] = v16;
  (*(v19 + 16))(v18, v17, v20);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261CEF0F4(&qword_27FEDA3C0, MEMORY[0x277CB9DE0]);
  sub_261CFC984();
  (*(v23 + 8))(v22, v32);
  (*(v19 + 8))(v17, v20);

  v15 = v0[1];
LABEL_6:

  return v15();
}

uint64_t sub_261CF1D30()
{
  v1 = v0[30];

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  v2 = v0[34];
  v3 = v0[29];
  v5 = v0[25];
  v4 = v0[26];
  v6 = v0[22];
  v7 = v0[20];

  v8 = v0[1];

  return v8();
}

uint64_t static AddOrRemoveTagsAppIntent.parameterSummary.getter()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE760, &qword_261D13338);
  v2 = sub_261B31264();
  v3 = sub_261B01D28(&qword_27FEDE768, &qword_27FEDE760, &qword_261D13338);

  return MEMORY[0x28210C568](KeyPath, sub_261CF1EAC, 0, v1, v2, v3);
}

uint64_t sub_261CF1EAC@<X0>(uint64_t a1@<X8>)
{
  v36 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE7E8, &qword_261D13718);
  v2 = *(v1 - 8);
  v34 = v1;
  v35 = v2;
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](v1);
  v32 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v33 = v27 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE7F0, &qword_261D13720);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v30 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v27 - v13;
  MEMORY[0x28223BE20](v12);
  v31 = v27 - v15;
  v40 = 0;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE7F8, &qword_261D13728);
  v27[3] = sub_261B31264();
  v16 = sub_261C0F810();
  v27[2] = sub_261B01D28(&qword_27FEDE800, &qword_27FEDE7F8, &qword_261D13728);
  sub_261CFD2B4();
  v27[1] = sub_261B01D28(&qword_27FEDE808, &qword_27FEDE7F0, &qword_261D13720);
  sub_261CFD284();
  v38 = *(v8 + 8);
  v28 = v14;
  v38(v14, v7);
  v29 = v8 + 8;
  v39 = 1;
  v17 = v30;
  v27[0] = v16;
  sub_261CFD2B4();
  sub_261CFD284();
  v38(v17, v7);
  v18 = v32;
  sub_261CFD344();
  sub_261B01D28(&qword_27FEDE810, &qword_27FEDE7E8, &qword_261D13718);
  v19 = v33;
  v20 = v18;
  v21 = v34;
  sub_261CFD284();
  v22 = *(v35 + 8);
  v22(v20, v21);
  v23 = v31;
  v24 = v28;
  sub_261CFD264();
  v22(v19, v21);
  v25 = v38;
  v38(v24, v7);
  return v25(v23, v7);
}

unint64_t sub_261CF237C()
{
  result = qword_27FEDE770;
  if (!qword_27FEDE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE770);
  }

  return result;
}

unint64_t sub_261CF2418()
{
  result = qword_27FEDE788;
  if (!qword_27FEDE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE788);
  }

  return result;
}

unint64_t sub_261CF2470()
{
  result = qword_27FEDE790;
  if (!qword_27FEDE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE790);
  }

  return result;
}

unint64_t sub_261CF24C8()
{
  result = qword_27FEDE798;
  if (!qword_27FEDE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE798);
  }

  return result;
}

unint64_t sub_261CF2520()
{
  result = qword_27FEDE7A0;
  if (!qword_27FEDE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE7A0);
  }

  return result;
}

unint64_t sub_261CF2578()
{
  result = qword_27FEDE7A8;
  if (!qword_27FEDE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE7A8);
  }

  return result;
}

unint64_t sub_261CF2620()
{
  result = qword_27FEDE7B0;
  if (!qword_27FEDE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE7B0);
  }

  return result;
}

unint64_t sub_261CF2678()
{
  result = qword_27FEDE7B8;
  if (!qword_27FEDE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE7B8);
  }

  return result;
}

unint64_t sub_261CF26D0()
{
  result = qword_27FEDE7C0;
  if (!qword_27FEDE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE7C0);
  }

  return result;
}

unint64_t sub_261CF272C()
{
  result = qword_27FEDE7C8;
  if (!qword_27FEDE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE7C8);
  }

  return result;
}

uint64_t sub_261CF27E8@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v17[0] = a1;
  v17[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE818, &qword_261D13730);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE820, &qword_261D13738);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE7F8, &qword_261D13728);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v17 - v12;
  sub_261B31264();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE828, &qword_261D13740);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE830, &qword_261D13770);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE838, &qword_261D137A0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  sub_261CFD124();
  v14 = sub_261B01D28(&qword_27FEDE800, &qword_27FEDE7F8, &qword_261D13728);
  MEMORY[0x266719870](v11, &type metadata for AddOrRemoveTagsAppIntent, v6, v14);
  v15 = *(v7 + 8);
  v15(v11, v6);
  MEMORY[0x266719860](v13, &type metadata for AddOrRemoveTagsAppIntent, v6, v14);
  return (v15)(v13, v6);
}

uint64_t sub_261CF2BD0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  if (*a1 == -1)
  {
    v6 = a2(0);
  }

  else
  {
    swift_once();
    v6 = a2(0);
  }

  v7 = v6;
  v8 = __swift_project_value_buffer(v6, a3);
  v9 = *(*(v7 - 8) + 16);

  return v9(a4, v8, v7);
}

uint64_t sub_261CF2C78(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE760, &qword_261D13338);
  v5 = sub_261B01D28(&qword_27FEDE768, &qword_27FEDE760, &qword_261D13338);

  return MEMORY[0x28210C568](KeyPath, sub_261CF1EAC, 0, v4, a2, v5);
}

uint64_t sub_261CF2D44(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261CF2DE8, v5, v4);
}

uint64_t sub_261CF2DE8()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v5 = swift_task_alloc();
  v0[10] = v5;
  *v5 = v0;
  v5[1] = sub_261B07CF8;
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[3];
  v9 = v0[4];
  v10 = v0[2];

  return sub_261C54E80(v10, "AddOrRemoveTagsAppIntent", 24, 2, v8, v9, v6, v7);
}

uint64_t sub_261CF2EE0(uint64_t a1)
{
  v2 = sub_261B31264();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of AddOrRemoveTagsIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4);
}

unint64_t sub_261CF3070(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v27[1] = a4;
  v10 = sub_261CFD754();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a6)
  {
    v27[0] = a5;
    sub_261CFD704();
    v15 = sub_261CFD714();
    a6 = v16;
    (*(v11 + 8))(v14, v10);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v17 = sub_261CFF7A4();
    __swift_project_value_buffer(v17, qword_27FED9EF8);
    sub_261CFD104();
    sub_261CFD104();
    v18 = sub_261CFF784();
    v19 = sub_261CFFE64();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = a1;
      v21 = a2;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v28 = v23;
      *v22 = 136315650;
      v24 = sub_261B879C8(v15, a6, &v28);

      *(v22 + 4) = v24;
      *(v22 + 12) = 2048;
      *(v22 + 14) = v27[0];
      *(v22 + 22) = 2080;
      *(v22 + 24) = sub_261B879C8(v20, v21, &v28);
      _os_log_impl(&dword_261AE2000, v18, v19, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v22, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v23, -1, -1);
      MEMORY[0x26671D560](v22, -1, -1);
    }

    else
    {
    }

    sub_261B01D70();
    swift_allocError();
    *v25 = 20;
    swift_willThrow();
  }

  return a6;
}

uint64_t SectionEntity.$isCollapsed.getter()
{
  v1 = *(v0 + *(type metadata accessor for SectionEntity() + 32));

  return sub_261CFCDA4();
}

uint64_t type metadata accessor for SectionEntity()
{
  result = qword_280D22488;
  if (!qword_280D22488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL SectionEntity.isUserCreated.getter()
{
  v1 = type metadata accessor for SectionEntityID();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SectionEntity();
  sub_261CBD5B4(v0 + *(v5 + 24), v4, type metadata accessor for SectionEntityID);
  v6 = swift_getEnumCaseMultiPayload() != 1;
  sub_261C2E570(v4, type metadata accessor for SectionEntityID);
  return v6;
}

uint64_t sub_261CF3550(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261AFB668(a1, &v13 - v9, &unk_27FEDE0C0, &unk_261D02500);
  v11 = *(a2 + *(type metadata accessor for SectionEntity() + 36));
  sub_261AFB668(v10, v8, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCA14();
  return sub_261AE6A40(v10, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t SectionEntity.parent.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v9 - v5;
  v7 = *(v1 + *(type metadata accessor for SectionEntity() + 36));
  sub_261AFB668(a1, v6, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t SectionEntity.$displayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SectionEntity() + 28));

  return sub_261CFCDA4();
}

uint64_t sub_261CF374C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v65 = a5;
  v59 = a4;
  v62 = a2;
  v63 = a3;
  v57 = a1;
  v60 = type metadata accessor for ListEntity();
  v58 = *(v60 - 8);
  v7 = *(v58 + 64);
  v8 = MEMORY[0x28223BE20](v60);
  v64 = v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = v43 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v56 = v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v55 = v43 - v15;
  v16 = sub_261CFD674();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_261CFD884();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = sub_261CFFA44();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = sub_261CFD6A4();
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x28223BE20](v25 - 8);
  v28 = v43 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v54 = sub_261CFCB24();
  v49 = a6;
  *a6 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  v50 = sub_261CF703C(&qword_280D227A0, type metadata accessor for ListEntity);
  v53 = sub_261CFCA64();
  a6[1] = v53;
  v29 = type metadata accessor for SectionEntity();
  v51 = *(v29 + 28);
  v45 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
  sub_261CFF9B4();
  sub_261CFD874();
  v30 = *MEMORY[0x277CC9110];
  v31 = *(v17 + 104);
  v47 = v17 + 104;
  v31(v20, v30, v16);
  v46 = v31;
  sub_261CFD6B4();
  v52 = MEMORY[0x2667199E0](v28, &type metadata for UpdateSectionDisplayNameAppIntent);
  v32 = v49;
  *(v49 + v51) = v52;
  v48 = *(v29 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v44 = v16;
  v31(v20, v30, v16);
  sub_261CFD6B4();
  v51 = MEMORY[0x2667199F0](v28, &type metadata for UpdateSectionIsCollapsedAppIntent);
  *(v32 + v48) = v51;
  v33 = v32;
  v34 = v45;
  v48 = *(v45 + 36);
  v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = v46;
  v46(v20, v30, v16);
  sub_261CFD6C4();
  v50 = sub_261CFCA54();
  *(v33 + v48) = v50;
  v48 = *(v34 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  v35(v20, v30, v44);
  sub_261CFD6C4();
  sub_261CF703C(&qword_280D22358, type metadata accessor for ReminderEntity);
  *(v33 + v48) = sub_261CFCA54();
  v36 = v57;
  sub_261CBD5B4(v57, v33 + *(v34 + 24), type metadata accessor for SectionEntityID);
  v37 = v59;
  v38 = v55;
  sub_261CBD5B4(v59, v55, type metadata accessor for ListEntity);
  (*(v58 + 56))(v38, 0, 1, v60);
  sub_261AFB668(v38, v56, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCA14();
  sub_261AE6A40(v38, &unk_27FEDE0C0, &unk_261D02500);
  v39 = v62;
  v66 = v62;
  v67 = v63;
  v40 = v63;
  sub_261CFD104();
  sub_261CFD2E4();
  LOBYTE(v66) = v65;
  sub_261CFD2E4();
  v66 = v39;
  v67 = v40;
  sub_261CFCA14();
  v41 = v61;
  sub_261CBD5B4(v37, v61, type metadata accessor for ListEntity);
  sub_261CBD5B4(v41, v64, type metadata accessor for ListEntity);
  sub_261CFCA14();
  sub_261C2E570(v37, type metadata accessor for ListEntity);
  sub_261C2E570(v36, type metadata accessor for SectionEntityID);
  return sub_261C2E570(v41, type metadata accessor for ListEntity);
}

uint64_t sub_261CF3F80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v67 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v66 = &v46[-v8];
  v56 = sub_261CFD674();
  v69 = *(v56 - 8);
  v9 = *(v69 + 64);
  MEMORY[0x28223BE20](v56);
  v52 = &v46[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFD6A4();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v46[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = type metadata accessor for ListEntity();
  v61 = v19;
  v63 = *(v19 - 8);
  v20 = *(v63 + 64);
  v21 = MEMORY[0x28223BE20](v19);
  v65 = &v46[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = MEMORY[0x28223BE20](v21);
  v64 = &v46[-v24];
  MEMORY[0x28223BE20](v23);
  v26 = &v46[-v25];
  v57 = &v46[-v25];
  v27 = type metadata accessor for SectionEntityID();
  v28 = *(*(v27 - 8) + 64);
  MEMORY[0x28223BE20](v27);
  v59 = &v46[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_261CBD5B4(a1 + *(v19 + 20), v59, type metadata accessor for AppEntityID);
  swift_storeEnumTagMultiPayload();
  v58 = type metadata accessor for ListEntity;
  sub_261CBD5B4(a1, v26, type metadata accessor for ListEntity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v62 = sub_261CFCB24();
  v51 = a2;
  *a2 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  v53 = sub_261CF703C(&qword_280D227A0, type metadata accessor for ListEntity);
  v60 = sub_261CFCA64();
  a2[1] = v60;
  v30 = type metadata accessor for SectionEntity();
  v54 = *(v30 + 28);
  v48 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
  sub_261CFF9B4();
  sub_261CFD874();
  v31 = *MEMORY[0x277CC9110];
  v32 = *(v69 + 104);
  v69 += 104;
  v33 = v52;
  v34 = v56;
  v32(v52, v31, v56);
  v49 = v32;
  v68 = v18;
  sub_261CFD6B4();
  v55 = MEMORY[0x2667199E0](v18, &type metadata for UpdateSectionDisplayNameAppIntent);
  v35 = v51;
  *(v51 + v54) = v55;
  v50 = *(v30 + 32);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v47 = v31;
  v32(v33, v31, v34);
  v36 = v68;
  sub_261CFD6B4();
  v54 = MEMORY[0x2667199F0](v36, &type metadata for UpdateSectionIsCollapsedAppIntent);
  *(v35 + v50) = v54;
  v37 = v35;
  v38 = v48;
  v50 = *(v48 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
  sub_261CFF9B4();
  sub_261CFD874();
  v39 = v49;
  v49(v33, v31, v34);
  sub_261CFD6C4();
  v53 = sub_261CFCA54();
  *(v37 + v50) = v53;
  v50 = *(v38 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  v39(v33, v47, v34);
  sub_261CFD6C4();
  sub_261CF703C(&qword_280D22358, type metadata accessor for ReminderEntity);
  *(v37 + v50) = sub_261CFCA54();
  v40 = v59;
  sub_261CBD5B4(v59, v37 + *(v38 + 24), type metadata accessor for SectionEntityID);
  v42 = v57;
  v41 = v58;
  v43 = v66;
  sub_261CBD5B4(v57, v66, v58);
  (*(v63 + 56))(v43, 0, 1, v61);
  sub_261AFB668(v43, v67, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCA14();
  sub_261AE6A40(v43, &unk_27FEDE0C0, &unk_261D02500);
  v70 = xmmword_261D137C0;
  sub_261CFD2E4();
  LOBYTE(v70) = 0;
  sub_261CFD2E4();
  *&v70 = 0;
  *(&v70 + 1) = 0xE000000000000000;
  sub_261CFCA14();
  v44 = v64;
  sub_261CBD5B4(v42, v64, v41);
  sub_261CBD5B4(v44, v65, v41);
  sub_261CFCA14();
  sub_261C2E570(v44, type metadata accessor for ListEntity);
  sub_261C2E570(v42, type metadata accessor for ListEntity);
  return sub_261C2E570(v40, type metadata accessor for SectionEntityID);
}

uint64_t SectionEntity.displayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SectionEntity() + 28));
  sub_261CFD2D4();
  return v3;
}

double sub_261CF48D0@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for SectionEntity() + 28));
  sub_261CFD2D4();
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_261CF4924(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *(a2 + *(type metadata accessor for SectionEntity() + 28));
  sub_261CFD104();
  return sub_261CFD2E4();
}

uint64_t SectionEntity.isCollapsed.getter()
{
  v1 = *(v0 + *(type metadata accessor for SectionEntity() + 32));
  sub_261CFD2D4();
  return v3;
}

uint64_t SectionEntity.name.getter()
{
  v1 = *v0;
  sub_261CFCA04();
  return v3;
}

uint64_t (*SectionEntity.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CF4B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v13 - v9;
  sub_261CBD5B4(a1, &v13 - v9, type metadata accessor for ListEntity);
  v11 = *(a2 + 8);
  sub_261CBD5B4(v10, v8, type metadata accessor for ListEntity);
  sub_261CFCA14();
  return sub_261C2E570(v10, type metadata accessor for ListEntity);
}

uint64_t SectionEntity.list.setter(uint64_t a1)
{
  v3 = type metadata accessor for ListEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = *(v1 + 8);
  sub_261CBD5B4(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListEntity);
  sub_261CFCA14();
  return sub_261C2E570(a1, type metadata accessor for ListEntity);
}

uint64_t (*SectionEntity.list.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t SectionEntity.id.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SectionEntity() + 24);

  return sub_261CF4F74(a1, v3);
}

void (*SectionEntity.displayName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + *(type metadata accessor for SectionEntity() + 28));
  sub_261CFD2D4();
  *v4 = v4[1];
  return sub_261CF4EBC;
}

void sub_261CF4EBC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v5 = v2[4];
  v2[3] = v3;
  if (a2)
  {
    sub_261CFD104();
    sub_261CFD2E4();
    v6 = v2[1];
  }

  else
  {
    sub_261CFD2E4();
  }

  free(v2);
}

uint64_t sub_261CF4F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionEntityID();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*SectionEntity.isCollapsed.modify(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + *(type metadata accessor for SectionEntity() + 32));
  sub_261CFD2D4();
  return sub_261AFA8A8;
}

uint64_t (*SectionEntity.parent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for SectionEntity() + 36));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t SectionEntity.reminders.getter()
{
  v1 = *(v0 + *(type metadata accessor for SectionEntity() + 40));
  sub_261CFCA04();
  return v3;
}

uint64_t sub_261CF5130(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + *(type metadata accessor for SectionEntity() + 40));
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*SectionEntity.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *(v1 + *(type metadata accessor for SectionEntity() + 40));
  *(v4 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CF5280()
{
  v32 = sub_261CFF9A4();
  v0 = *(v32 - 8);
  v1 = *(v0 + 64);
  MEMORY[0x28223BE20](v32);
  v31 = v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_261CFFA24();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v33 = v26 - v7;
  v8 = sub_261CFD674();
  v27 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_261CFD884();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFFA44();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_261CFD6A4();
  v29 = *(v17 - 8);
  v30 = v17;
  v18 = *(v29 + 64);
  MEMORY[0x28223BE20](v17);
  v19 = sub_261CFD234();
  __swift_allocate_value_buffer(v19, qword_27FEDE850);
  v28 = __swift_project_value_buffer(v19, qword_27FEDE850);
  sub_261CFF9B4();
  sub_261CFD874();
  v20 = *MEMORY[0x277CC9110];
  v21 = *(v9 + 104);
  v26[1] = v9 + 104;
  v21(v12, v20, v8);
  sub_261CFD6C4();
  sub_261CFFA14();
  sub_261CFFA04();
  v23 = v31;
  v22 = v32;
  (*(v0 + 104))(v31, *MEMORY[0x277CC9BD8], v32);
  sub_261CFF9C4();
  (*(v0 + 8))(v23, v22);
  sub_261CFFA04();
  sub_261CFFA34();
  sub_261CFD874();
  v21(v12, v20, v27);
  v24 = v33;
  sub_261CFD6C4();
  (*(v29 + 56))(v24, 0, 1, v30);
  return sub_261CFD224();
}

uint64_t static SectionEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9DC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE850);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SectionEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9DC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE850);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SectionEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27FED9DC0 != -1)
  {
    swift_once();
  }

  v0 = sub_261CFD234();
  __swift_project_value_buffer(v0, qword_27FEDE850);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261CF5964@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9DC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE850);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261CF5A24(uint64_t a1)
{
  if (qword_27FED9DC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE850);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t SectionEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v47 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v46 = &v38 - v5;
  v6 = sub_261CFD0B4();
  v41 = *(v6 - 8);
  v42 = v6;
  v7 = *(v41 + 64);
  MEMORY[0x28223BE20](v6);
  v40 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ListEntity();
  v43 = *(v9 - 8);
  v44 = v9;
  v10 = *(v43 + 64);
  MEMORY[0x28223BE20](v9);
  v39 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v45 = &v38 - v18;
  v19 = sub_261CFFA24();
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = sub_261CFD6A4();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v38 - v27;
  sub_261CFFA14();
  sub_261CFFA04();
  v29 = type metadata accessor for SectionEntity();
  v30 = *(v1 + *(v29 + 28));
  sub_261CFD2D4();
  sub_261CFF9E4();

  sub_261CFFA04();
  sub_261CFD684();
  (*(v22 + 16))(v26, v28, v21);
  v31 = *(v2 + *(v29 + 36));
  sub_261CFCA04();
  if ((*(v43 + 48))(v15, 1, v44))
  {
    sub_261AE6A40(v15, &unk_27FEDE0C0, &unk_261D02500);
    v32 = 1;
    v33 = v45;
  }

  else
  {
    v34 = v39;
    sub_261CBD5B4(v15, v39, type metadata accessor for ListEntity);
    sub_261AE6A40(v15, &unk_27FEDE0C0, &unk_261D02500);
    v35 = v40;
    ListEntity.displayRepresentation.getter(v40);
    sub_261C2E570(v34, type metadata accessor for ListEntity);
    v33 = v45;
    sub_261CFD084();
    (*(v41 + 8))(v35, v42);
    v32 = 0;
  }

  (*(v22 + 56))(v33, v32, 1, v21);
  v36 = sub_261CFD074();
  (*(*(v36 - 8) + 56))(v46, 1, 1, v36);
  sub_261CFD0A4();
  return (*(v22 + 8))(v28, v21);
}

uint64_t SectionEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450) - 8) + 64) + 15;
  v3[9] = swift_task_alloc();
  v5 = sub_261CFD0B4();
  v3[10] = v5;
  v6 = *(v5 - 8);
  v3[11] = v6;
  v7 = *(v6 + 64) + 15;
  v3[12] = swift_task_alloc();
  v8 = type metadata accessor for ListEntity();
  v3[13] = v8;
  v9 = *(v8 - 8);
  v3[14] = v9;
  v10 = *(v9 + 64) + 15;
  v3[15] = swift_task_alloc();
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500) - 8) + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = sub_261CFD004();
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();
  v15 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0) - 8) + 64) + 15;
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v16 = *(*(sub_261CFFA24() - 8) + 64) + 15;
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v17 = sub_261CFD6A4();
  v3[25] = v17;
  v18 = *(v17 - 8);
  v3[26] = v18;
  v19 = *(v18 + 64) + 15;
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261CF62DC, 0, 0);
}

uint64_t sub_261CF62DC()
{
  v1 = v0[28];
  v2 = v0[26];
  v3 = v0[24];
  v50 = v0[22];
  v53 = v0[25];
  v5 = v0[18];
  v4 = v0[19];
  v6 = v0[17];
  v7 = v0[8];
  v55 = v0[7];
  sub_261CFFA14();
  sub_261CFFA04();
  v48 = type metadata accessor for SectionEntity();
  v8 = *(v7 + *(v48 + 28));
  sub_261CFD2D4();
  if (v0[3])
  {
    v9 = v0[2];
    v10 = v0[3];
  }

  sub_261CFF9E4();

  sub_261CFFA04();
  sub_261CFD684();
  v11 = *(v2 + 56);
  v11(v50, 1, 1, v53);
  sub_261CFCFE4();
  sub_261CF703C(&qword_27FED9F90, MEMORY[0x277CBA238]);
  v12 = sub_261D001B4();
  (*(v5 + 8))(v4, v6);
  if (v12)
  {
    sub_261CFD2D4();
    if (v0[5])
    {
      v56 = v11;
      v13 = v0[4];
      v15 = v0[27];
      v14 = v0[28];
      v16 = v0[25];
      v17 = v0[26];
      v18 = v0[23];
      v19 = v0[16];
      v20 = v0[14];
      v51 = v0[13];
      v46 = v0[8];
      sub_261CFFA14();
      sub_261CFFA04();
      sub_261CFF9E4();

      sub_261CFFA04();
      sub_261CFD684();
      (*(v17 + 8))(v14, v16);
      (*(v17 + 32))(v14, v15, v16);
      v21 = *(v46 + *(v48 + 36));
      sub_261CFCA04();
      v22 = (*(v20 + 48))(v19, 1, v51);
      v23 = v0[22];
      if (v22)
      {
        v24 = v0[16];
        sub_261AE6A40(v0[22], &unk_27FEDA6D0, &unk_261D02CD0);
        sub_261AE6A40(v24, &unk_27FEDE0C0, &unk_261D02500);
        v25 = 1;
      }

      else
      {
        v26 = v0[21];
        v28 = v0[15];
        v27 = v0[16];
        v30 = v0[11];
        v29 = v0[12];
        v31 = v0[10];
        sub_261CBD5B4(v27, v28, type metadata accessor for ListEntity);
        sub_261AE6A40(v27, &unk_27FEDE0C0, &unk_261D02500);
        ListEntity.displayRepresentation.getter(v29);
        sub_261C2E570(v28, type metadata accessor for ListEntity);
        sub_261CFD084();
        (*(v30 + 8))(v29, v31);
        sub_261AE6A40(v23, &unk_27FEDA6D0, &unk_261D02CD0);
        v25 = 0;
      }

      v32 = v0[21];
      v33 = v0[22];
      v56(v32, v25, 1, v0[25]);
      sub_261CF67E8(v32, v33);
    }
  }

  v34 = v0[28];
  v36 = v0[25];
  v35 = v0[26];
  v44 = v0[24];
  v45 = v0[23];
  v37 = v0[22];
  v38 = v0[20];
  v47 = v0[21];
  v49 = v0[19];
  v52 = v0[16];
  v54 = v0[15];
  v57 = v0[12];
  v39 = v0[9];
  v40 = v0[6];
  (*(v35 + 16))(v0[27], v34, v36);
  sub_261AFB668(v37, v38, &unk_27FEDA6D0, &unk_261D02CD0);
  v41 = sub_261CFD074();
  (*(*(v41 - 8) + 56))(v39, 1, 1, v41);
  sub_261CFD0A4();
  sub_261AE6A40(v37, &unk_27FEDA6D0, &unk_261D02CD0);
  (*(v35 + 8))(v34, v36);

  v42 = v0[1];

  return v42();
}

uint64_t sub_261CF67E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261CF6858@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(a1 + 40));
  result = sub_261CFCA04();
  *a2 = v6;
  return result;
}

uint64_t sub_261CF6898@<X0>(void *a1@<X8>)
{
  if (qword_27FED9DC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDE868;
  return sub_261CFCDA4();
}

uint64_t static SectionEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9DC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDE868;
  return sub_261CFCDA4();
}

uint64_t sub_261CF69D0(uint64_t a1)
{
  v2 = sub_261CF703C(&qword_280D224E0, type metadata accessor for SectionEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261CF6A50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return SectionEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_261CF6AF8(uint64_t a1)
{
  v2 = sub_261CF703C(&qword_280D224A8, type metadata accessor for SectionEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261CF6B74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE18, &qword_261D04970);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  qword_27FEDE868 = result;
  return result;
}

uint64_t static SectionEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27FED9DC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDE868 = v1;
}

uint64_t (*static SectionEntity.defaultQuery.modify())()
{
  if (qword_27FED9DC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_261CF6F90()
{
  result = qword_27FEDE878;
  if (!qword_27FEDE878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDE880, &qword_261D13988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE878);
  }

  return result;
}

uint64_t sub_261CF703C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *initializeBufferWithCopyOfBuffer for SectionEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) == 0)
  {
    v6 = a1;
    a1[1] = a2[1];
    v7 = a3[6];
    v8 = a1 + v7;
    v9 = a2 + v7;
    type metadata accessor for SectionEntityID();
    sub_261CFCDA4();
    sub_261CFCDA4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = *(v9 + 1);
    *v8 = *v9;
    *(v8 + 1) = v10;
    v11 = type metadata accessor for AppEntityID();
    v12 = *(v11 + 20);
    v13 = sub_261CFD844();
    v14 = *(*(v13 - 8) + 16);
    sub_261CFD104();
    v14(&v8[v12], &v9[v12], v13);
    v15 = *(v11 + 24);
    v16 = &v8[v15];
    v17 = &v9[v15];
    v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v19 = *(v18 - 8);
    v20 = (*(v19 + 48))(v17, 1, v18);
    if (EnumCaseMultiPayload == 1)
    {
      if (v20)
      {
        goto LABEL_7;
      }
    }

    else if (v20)
    {
LABEL_7:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
LABEL_9:
      swift_storeEnumTagMultiPayload();
      v23 = a3[8];
      *(v6 + a3[7]) = *(a2 + a3[7]);
      *(v6 + v23) = *(a2 + v23);
      v24 = a3[10];
      *(v6 + a3[9]) = *(a2 + a3[9]);
      *(v6 + v24) = *(a2 + v24);
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      goto LABEL_10;
    }

    v22 = sub_261CFD4E4();
    (*(*(v22 - 8) + 16))(v16, v17, v22);
    v16[*(v18 + 20)] = v17[*(v18 + 20)];
    (*(v19 + 56))(v16, 0, 1, v18);
    goto LABEL_9;
  }

  v6 = (v4 + ((v3 + 16) & ~v3));
LABEL_10:
  sub_261CFCDA4();
  return v6;
}

uint64_t destroy for SectionEntity(uint64_t *a1, int *a2)
{
  v4 = *a1;

  v5 = a1[1];

  v6 = a1 + a2[6];
  type metadata accessor for SectionEntityID();
  v7 = *(v6 + 1);

  v8 = type metadata accessor for AppEntityID();
  v9 = *(v8 + 20);
  v10 = sub_261CFD844();
  (*(*(v10 - 8) + 8))(&v6[v9], v10);
  v11 = *(v8 + 24);
  v12 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if (!(*(*(v12 - 8) + 48))(&v6[v11], 1, v12))
  {
    v13 = sub_261CFD4E4();
    (*(*(v13 - 8) + 8))(&v6[v11], v13);
  }

  v14 = *(a1 + a2[7]);

  v15 = *(a1 + a2[8]);

  v16 = *(a1 + a2[9]);

  v17 = *(a1 + a2[10]);
}

void *initializeWithCopy for SectionEntity(void *a1, void *a2, int *a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = a3[6];
  v7 = a1 + v6;
  v8 = a2 + v6;
  type metadata accessor for SectionEntityID();
  sub_261CFCDA4();
  sub_261CFCDA4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v8 + 1);
  *v7 = *v8;
  *(v7 + 1) = v9;
  v10 = type metadata accessor for AppEntityID();
  v11 = *(v10 + 20);
  v12 = sub_261CFD844();
  v13 = *(*(v12 - 8) + 16);
  sub_261CFD104();
  v13(&v7[v11], &v8[v11], v12);
  v14 = *(v10 + 24);
  v15 = &v7[v14];
  v16 = &v8[v14];
  v17 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v16, 1, v17);
  if (EnumCaseMultiPayload == 1)
  {
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_6:
    v21 = sub_261CFD4E4();
    (*(*(v21 - 8) + 16))(v15, v16, v21);
    v15[*(v17 + 20)] = v16[*(v17 + 20)];
    (*(v18 + 56))(v15, 0, 1, v17);
    goto LABEL_7;
  }

  if (!v19)
  {
    goto LABEL_6;
  }

LABEL_5:
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  memcpy(v15, v16, *(*(v20 - 8) + 64));
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v22 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v22) = *(a2 + v22);
  v23 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v23) = *(a2 + v23);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for SectionEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;
  sub_261CFCDA4();

  v7 = a1[1];
  a1[1] = a2[1];
  sub_261CFCDA4();

  if (a1 != a2)
  {
    v8 = a3[6];
    v9 = a1 + v8;
    v10 = a2 + v8;
    sub_261C2E570(a1 + v8, type metadata accessor for SectionEntityID);
    type metadata accessor for SectionEntityID();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *v9 = *v10;
    *(v9 + 1) = *(v10 + 1);
    v11 = type metadata accessor for AppEntityID();
    v12 = *(v11 + 20);
    v13 = sub_261CFD844();
    v14 = *(*(v13 - 8) + 16);
    sub_261CFD104();
    v14(&v9[v12], &v10[v12], v13);
    v15 = *(v11 + 24);
    v16 = &v9[v15];
    v17 = &v10[v15];
    v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v19 = *(v18 - 8);
    v20 = (*(v19 + 48))(v17, 1, v18);
    if (EnumCaseMultiPayload == 1)
    {
      if (v20)
      {
        goto LABEL_6;
      }
    }

    else if (v20)
    {
LABEL_6:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
LABEL_8:
      swift_storeEnumTagMultiPayload();
      goto LABEL_9;
    }

    v22 = sub_261CFD4E4();
    (*(*(v22 - 8) + 16))(v16, v17, v22);
    v16[*(v18 + 20)] = v17[*(v18 + 20)];
    (*(v19 + 56))(v16, 0, 1, v18);
    goto LABEL_8;
  }

LABEL_9:
  v23 = a3[7];
  v24 = *(a1 + v23);
  *(a1 + v23) = *(a2 + v23);
  sub_261CFCDA4();

  v25 = a3[8];
  v26 = *(a1 + v25);
  *(a1 + v25) = *(a2 + v25);
  sub_261CFCDA4();

  v27 = a3[9];
  v28 = *(a1 + v27);
  *(a1 + v27) = *(a2 + v27);
  sub_261CFCDA4();

  v29 = a3[10];
  v30 = *(a2 + v29);
  v31 = *(a1 + v29);
  *(a1 + v29) = v30;
  sub_261CFCDA4();

  return a1;
}

_OWORD *initializeWithTake for SectionEntity(_OWORD *a1, _OWORD *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[6];
  v7 = a1 + v6;
  v8 = a2 + v6;
  type metadata accessor for SectionEntityID();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *v7 = *v8;
  v10 = type metadata accessor for AppEntityID();
  v11 = *(v10 + 20);
  v12 = sub_261CFD844();
  (*(*(v12 - 8) + 32))(&v7[v11], &v8[v11], v12);
  v13 = *(v10 + 24);
  v14 = &v7[v13];
  v15 = &v8[v13];
  v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);
  if (EnumCaseMultiPayload == 1)
  {
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_6:
    v20 = sub_261CFD4E4();
    (*(*(v20 - 8) + 32))(v14, v15, v20);
    v14[*(v16 + 20)] = v15[*(v16 + 20)];
    (*(v17 + 56))(v14, 0, 1, v16);
    goto LABEL_7;
  }

  if (!v18)
  {
    goto LABEL_6;
  }

LABEL_5:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  memcpy(v14, v15, *(*(v19 - 8) + 64));
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v21 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v21) = *(a2 + v21);
  v22 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v22) = *(a2 + v22);
  return a1;
}

uint64_t *assignWithTake for SectionEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = *a1;
  *a1 = *a2;

  v7 = a1[1];
  a1[1] = a2[1];

  if (a1 != a2)
  {
    v8 = a3[6];
    v9 = a1 + v8;
    v10 = a2 + v8;
    sub_261C2E570(a1 + v8, type metadata accessor for SectionEntityID);
    type metadata accessor for SectionEntityID();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *v9 = *v10;
    v12 = type metadata accessor for AppEntityID();
    v13 = *(v12 + 20);
    v14 = sub_261CFD844();
    (*(*(v14 - 8) + 32))(&v9[v13], &v10[v13], v14);
    v15 = *(v12 + 24);
    v16 = &v9[v15];
    v17 = &v10[v15];
    v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v19 = *(v18 - 8);
    v20 = (*(v19 + 48))(v17, 1, v18);
    if (EnumCaseMultiPayload == 1)
    {
      if (v20)
      {
        goto LABEL_6;
      }
    }

    else if (v20)
    {
LABEL_6:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
LABEL_8:
      swift_storeEnumTagMultiPayload();
      goto LABEL_9;
    }

    v22 = sub_261CFD4E4();
    (*(*(v22 - 8) + 32))(v16, v17, v22);
    v16[*(v18 + 20)] = v17[*(v18 + 20)];
    (*(v19 + 56))(v16, 0, 1, v18);
    goto LABEL_8;
  }

LABEL_9:
  v23 = a3[7];
  v24 = *(a1 + v23);
  *(a1 + v23) = *(a2 + v23);

  v25 = a3[8];
  v26 = *(a1 + v25);
  *(a1 + v25) = *(a2 + v25);

  v27 = a3[9];
  v28 = *(a1 + v27);
  *(a1 + v27) = *(a2 + v27);

  v29 = a3[10];
  v30 = *(a1 + v29);
  *(a1 + v29) = *(a2 + v29);

  return a1;
}

uint64_t sub_261CF81C4()
{
  result = type metadata accessor for SectionEntityID();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

id sub_261CF8274()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  sub_261CFCA04();
  result = sub_261CFCA04();
  if (!__OFSUB__(0, v4))
  {
    return [objc_allocWithZone(MEMORY[0x277D44610]) initWithUnit:v5 count:-v4];
  }

  __break(1u);
  return result;
}

void EarlyAlertEntity.init(dueDateDeltaInterval:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 unit];
  if (v4 >= 5)
  {

    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v7 = v4;
    v5 = [a1 count];
    if (__OFSUB__(0, v5))
    {
      __break(1u);
    }

    else
    {
      EarlyAlertEntity.init(unit:interval:)(&v7, -v5, &v8);

      v6 = v10;
      *a2 = v8;
      *(a2 + 8) = v9;
      *(a2 + 24) = v6;
    }
  }
}

uint64_t sub_261CF8388(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6649188;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7961645F6C6C61;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 31348;
    }

    else
    {
      v4 = 6649188;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x7961645F6C6C61;
  if (a2 != 2)
  {
    v8 = 0x64656C6261736964;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 31348;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261D00614();
  }

  return v11 & 1;
}

uint64_t sub_261CF84AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1920298856;
    }

    else
    {
      v4 = 0x6574756E696DLL;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 7954788;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1801807223;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x68746E6F6DLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1920298856;
    }

    else
    {
      v9 = 0x6574756E696DLL;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1801807223;
    if (a2 != 3)
    {
      v6 = 0x68746E6F6DLL;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 7954788;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_261D00614();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_261CF85FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D756964656DLL;
    }

    else
    {
      v4 = 1751607656;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7827308;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a2 != 2)
  {
    v8 = 1751607656;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 7827308;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261D00614();
  }

  return v11 & 1;
}

uint64_t sub_261CF8710(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7961646F74;
  v3 = a1;
  v4 = 0xE500000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x64656767616C66;
  v7 = 0xE800000000000000;
  v8 = 0x64656E6769737361;
  if (a1 != 4)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xE900000000000064;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x656C756465686373;
  v10 = 0xE900000000000064;
  if (a1 != 1)
  {
    v9 = 7105633;
    v10 = 0xE300000000000000;
  }

  if (a1)
  {
    v4 = v10;
  }

  else
  {
    v9 = 0x7961646F74;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xE700000000000000;
      v2 = 0x64656767616C66;
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0x6574656C706D6F63;
        goto LABEL_27;
      }

      v13 = 0xE800000000000000;
      v2 = 0x64656E6769737361;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x656C756465686373;
LABEL_27:
      v13 = 0xE900000000000064;
      goto LABEL_28;
    }

    v13 = 0xE300000000000000;
    v2 = 7105633;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

LABEL_28:
  if (v11 == v2 && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_261D00614();
  }

  return v14 & 1;
}

uint64_t sub_261CF88C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000016;
  v3 = a1;
  if (a1 > 4u)
  {
    v12 = 0x8000000261D141D0;
    v13 = 0x637341656C746974;
    v14 = 0xEE00676E69646E65;
    if (a1 != 8)
    {
      v13 = 0x736544656C746974;
      v14 = 0xEF676E69646E6563;
    }

    if (a1 == 7)
    {
      v13 = 0xD000000000000017;
    }

    else
    {
      v12 = v14;
    }

    v15 = 0x8000000261D14190;
    v16 = 0xD000000000000014;
    if (a1 != 5)
    {
      v16 = 0xD000000000000017;
      v15 = 0x8000000261D141B0;
    }

    if (a1 <= 6u)
    {
      v10 = v16;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 6)
    {
      v11 = v15;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x8000000261D14130;
    v6 = 0x8000000261D14150;
    v7 = 0xD000000000000013;
    if (a1 == 3)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v6 = 0x8000000261D14170;
    }

    if (a1 == 2)
    {
      v8 = 0xD000000000000016;
    }

    else
    {
      v8 = v7;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    v9 = 0x6C61756E616DLL;
    if (a1)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v9 = 0x746C7561666564;
    }

    if (a1 <= 1u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v18 = 0x8000000261D14190;
        v2 = 0xD000000000000014;
        goto LABEL_53;
      }

      v19 = "creationDateOldestFirst";
    }

    else
    {
      if (a2 != 7)
      {
        if (a2 == 8)
        {
          v2 = 0x637341656C746974;
          v18 = 0xEE00676E69646E65;
        }

        else
        {
          v2 = 0x736544656C746974;
          v18 = 0xEF676E69646E6563;
        }

        goto LABEL_53;
      }

      v19 = "creationDateNewestFirst";
    }

    v18 = (v19 - 32) | 0x8000000000000000;
    v2 = 0xD000000000000017;
    goto LABEL_53;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v18 = 0xE600000000000000;
      v2 = 0x6C61756E616DLL;
    }

    else
    {
      v18 = 0xE700000000000000;
      v2 = 0x746C7561666564;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v17 = "displayDateOldestFirst";
    }

    else
    {
      if (a2 != 3)
      {
        v18 = 0x8000000261D14170;
        v2 = 0xD000000000000013;
        goto LABEL_53;
      }

      v17 = "displayDateNewestFirst";
    }

    v18 = (v17 - 32) | 0x8000000000000000;
  }

LABEL_53:
  if (v10 == v2 && v11 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_261D00614();
  }

  return v20 & 1;
}

uint64_t EarlyAlertEntity.init(unit:interval:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v30 = a2;
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD884();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFFA44();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_261CFD6A4();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v28 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE8D0, &qword_261D13A80);
  sub_261CFF9B4();
  sub_261CFD874();
  v16 = *MEMORY[0x277CC9110];
  v17 = *(v6 + 104);
  v17(v9, v16, v5);
  sub_261CFD6B4();
  sub_261C45260();
  v29 = sub_261CFCA34();
  a3[2] = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE8D8, &qword_261D13A88);
  sub_261CFF9B4();
  sub_261CFD874();
  v18 = v16;
  v19 = v30;
  v20 = v5;
  v21 = v28;
  v17(v9, v18, v20);
  sub_261CFD6B4();
  a3[3] = sub_261CFCB54();
  v31 = v19;
  v32 = sub_261D005F4();
  v33 = v22;
  MEMORY[0x26671C210](58, 0xE100000000000000);
  if (v21 <= 1)
  {
    if (v21)
    {
      v24 = 1920298856;
      v23 = 0xE400000000000000;
    }

    else
    {
      v23 = 0xE600000000000000;
      v24 = 0x6574756E696DLL;
    }
  }

  else if (v21 == 2)
  {
    v23 = 0xE300000000000000;
    v24 = 7954788;
  }

  else if (v21 == 3)
  {
    v23 = 0xE400000000000000;
    v24 = 1801807223;
  }

  else
  {
    v23 = 0xE500000000000000;
    v24 = 0x68746E6F6DLL;
  }

  MEMORY[0x26671C210](v24, v23);

  v25 = v33;
  *a3 = v32;
  a3[1] = v25;
  LOBYTE(v32) = v21;
  sub_261CFCA14();
  v32 = v19;
  return sub_261CFCA14();
}

RemindersAppIntents::EarlyAlertEntity::Unit_optional __swiftcall EarlyAlertEntity.Unit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EarlyAlertEntity.Unit.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6574756E696DLL;
  v3 = 7954788;
  v4 = 1801807223;
  if (v1 != 3)
  {
    v4 = 0x68746E6F6DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1920298856;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t EarlyAlertEntity.interval.getter()
{
  v1 = *(v0 + 24);
  sub_261CFCA04();
  return v3;
}

uint64_t sub_261CF90AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FEDE888);
  __swift_project_value_buffer(v15, qword_27FEDE888);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6B4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t static EarlyAlertEntity.Unit.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9DD0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE888);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261CF9444()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v67 = v48 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v70 = v48 - v5;
  v59 = sub_261CFD674();
  v6 = *(v59 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v59);
  v9 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFD884();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFFA44();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v17 = v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = sub_261CFD6A4();
  v18 = *(v62 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v62);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE988, &qword_261D14000);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1F0, &qword_261D0DB20);
  v69 = v20;
  v21 = *(v20 - 8);
  v58 = *(v21 + 72);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v52 = 4 * v58;
  v23 = swift_allocObject();
  v53 = v23;
  *(v23 + 16) = xmmword_261D06F90;
  v24 = (v23 + v22);
  v51 = *(v20 + 48);
  *v24 = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v68 = *MEMORY[0x277CC9110];
  v25 = *(v6 + 104);
  v60 = v6 + 104;
  v66 = v25;
  v25(v9);
  v26 = v13;
  sub_261CFD6B4();
  v27 = *(v18 + 56);
  v64 = v18 + 56;
  v65 = v27;
  v28 = v62;
  v27(v70, 1, 1, v62);
  v29 = sub_261CFD074();
  v30 = *(v29 - 8);
  v63 = *(v30 + 56);
  v56 = v30 + 56;
  v57 = v29;
  v63(v67, 1, 1, v29);
  v61 = v24;
  sub_261CFD0A4();
  v31 = v58;
  v50 = &v24[v58];
  v51 = *(v69 + 48);
  *v50 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v55 = v9;
  v32 = v59;
  v66(v9, v68, v59);
  v33 = v26;
  sub_261CFD6B4();
  v34 = v28;
  v65(v70, 1, 1, v28);
  v35 = v67;
  v63(v67, 1, 1, v29);
  sub_261CFD0A4();
  v51 = 2 * v31;
  v49 = &v61[2 * v31];
  v50 = *(v69 + 48);
  *v49 = 2;
  v48[1] = v17;
  sub_261CFF9B4();
  v54 = v33;
  sub_261CFD874();
  v36 = v66;
  v66(v55, v68, v32);
  sub_261CFD6B4();
  v37 = v65;
  v65(v70, 1, 1, v34);
  v38 = v35;
  v39 = v57;
  v40 = v63;
  v63(v38, 1, 1, v57);
  sub_261CFD0A4();
  v51 += &v61[v58];
  v41 = v69;
  v58 = *(v69 + 48);
  *v51 = 3;
  sub_261CFF9B4();
  sub_261CFD874();
  v42 = v55;
  v36(v55, v68, v59);
  sub_261CFD6B4();
  v43 = v70;
  v37(v70, 1, 1, v62);
  v44 = v67;
  v40(v67, 1, 1, v39);
  sub_261CFD0A4();
  v45 = *(v41 + 48);
  v61[v52] = 4;
  sub_261CFF9B4();
  sub_261CFD874();
  v66(v42, v68, v59);
  sub_261CFD6B4();
  v65(v43, 1, 1, v62);
  v63(v44, 1, 1, v57);
  sub_261CFD0A4();
  v46 = sub_261C3B228(v53);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27FEDE8A0 = v46;
  return result;
}

uint64_t static EarlyAlertEntity.Unit.caseDisplayRepresentations.getter()
{
  if (qword_27FED9DD8 != -1)
  {
    swift_once();
  }

  return sub_261CFD104();
}

uint64_t sub_261CF9DFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9DD0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE888);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261CF9EA4(uint64_t a1)
{
  v2 = sub_261C45260();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261CF9EF0()
{
  if (qword_27FED9DD8 != -1)
  {
    swift_once();
  }

  return sub_261CFD104();
}

uint64_t sub_261CF9F4C(uint64_t a1)
{
  v2 = sub_261CFB8F8();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t EarlyAlertEntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_261CFD104();
  return v1;
}

uint64_t EarlyAlertEntity.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_261CFA030(char *a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v6 = *a1;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t EarlyAlertEntity.unit.setter(char *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return sub_261CFCA14();
}

uint64_t (*EarlyAlertEntity.unit.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t sub_261CFA174(uint64_t *a1, void *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v6 = *a1;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*EarlyAlertEntity.interval.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 24);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t EarlyAlertEntity.init(id:unit:interval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v26 = a2;
  v27 = a4;
  v25 = a1;
  v7 = sub_261CFD674();
  v23 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_261CFD884();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = sub_261CFFA44();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = sub_261CFD6A4();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16 - 8);
  v24 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE8D0, &qword_261D13A80);
  sub_261CFF9B4();
  sub_261CFD874();
  v18 = *MEMORY[0x277CC9110];
  v19 = *(v8 + 104);
  v19(v11, v18, v7);
  sub_261CFD6B4();
  sub_261C45260();
  a5[2] = sub_261CFCA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE8D8, &qword_261D13A88);
  sub_261CFF9B4();
  sub_261CFD874();
  v19(v11, v18, v23);
  sub_261CFD6B4();
  a5[3] = sub_261CFCB54();
  v20 = v26;
  *a5 = v25;
  a5[1] = v20;
  v29 = v24;
  sub_261CFCA14();
  v28 = v27;
  return sub_261CFCA14();
}

uint64_t sub_261CFA5F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_261CFD674();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_261CFD884();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = sub_261CFFA44();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = sub_261CFD6A4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v15 = sub_261CFD234();
  __swift_allocate_value_buffer(v15, qword_27FEDE8A8);
  __swift_project_value_buffer(v15, qword_27FEDE8A8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v4 + 104))(v7, *MEMORY[0x277CC9110], v17[0]);
  sub_261CFD6B4();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_261CFD224();
}

uint64_t static EarlyAlertEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE8A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EarlyAlertEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE8A8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EarlyAlertEntity.typeDisplayRepresentation.modify())()
{
  if (qword_27FED9DE0 != -1)
  {
    swift_once();
  }

  v0 = sub_261CFD234();
  __swift_project_value_buffer(v0, qword_27FEDE8A8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261CFAB40@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE8A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261CFAC00(uint64_t a1)
{
  if (qword_27FED9DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE8A8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t EarlyAlertEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v50 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v48 = &v41 - v8;
  v47 = sub_261CFD674();
  v45 = *(v47 - 8);
  v9 = *(v45 + 64);
  MEMORY[0x28223BE20](v47);
  v46 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261CFD884();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = sub_261CFFA44();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = sub_261CFFA24();
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = sub_261CFD0B4();
  v43 = *(v17 - 8);
  v44 = v17;
  v18 = *(v43 + 64);
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v42 = &v41 - v22;
  v23 = sub_261CFD6A4();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v41 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v41 - v29;
  v31 = *(v1 + 16);
  v41 = *(v2 + 24);
  if (qword_27FED9DD8 != -1)
  {
    swift_once();
  }

  v32 = off_27FEDE8A0;
  sub_261CFCA04();
  if (v32[2] && (v33 = sub_261B384EC(v51), (v34 & 1) != 0))
  {
    v35 = v32[7];
    v37 = v43;
    v36 = v44;
    (*(v43 + 16))(v21, v35 + *(v43 + 72) * v33, v44);
    v38 = v42;
    (*(v37 + 32))(v42, v21, v36);
    sub_261CFFA14();
    sub_261CFFA04();
    sub_261CFCA04();
    sub_261CFF9D4();
    sub_261CFFA04();
    sub_261CFD084();
    sub_261CFF9F4();
    (*(v24 + 8))(v28, v23);
    sub_261CFFA04();
    sub_261CFD684();
    (*(v37 + 8))(v38, v36);
  }

  else
  {
    sub_261CFF9B4();
    sub_261CFD874();
    (*(v45 + 104))(v46, *MEMORY[0x277CC9110], v47);
    sub_261CFD6C4();
  }

  (*(v24 + 16))(v28, v30, v23);
  (*(v24 + 56))(v48, 1, 1, v23);
  v39 = sub_261CFD074();
  (*(*(v39 - 8) + 56))(v49, 1, 1, v39);
  sub_261CFD0A4();
  return (*(v24 + 8))(v30, v23);
}

uint64_t sub_261CFB2E0@<X0>(void *a1@<X8>)
{
  if (qword_27FED9DE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDE8C0 + 1);
  *a1 = xmmword_27FEDE8C0;
  a1[1] = v2;
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

uint64_t static EarlyAlertEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9DE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDE8C0 + 1);
  *a1 = xmmword_27FEDE8C0;
  a1[1] = v2;
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

uint64_t sub_261CFB3F0(uint64_t a1)
{
  v2 = sub_261B51818();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261CFB440(uint64_t a1)
{
  v2 = sub_261CFBCA4();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261CFB48C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  *&xmmword_27FEDE8C0 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD18, &qword_261D083E0);
  swift_getKeyPath();
  result = sub_261CFD204();
  *(&xmmword_27FEDE8C0 + 1) = result;
  return result;
}

uint64_t static EarlyAlertEntity.defaultQuery.setter(__int128 *a1)
{
  v2 = *a1;
  if (qword_27FED9DE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27FEDE8C0 = v2;
}

uint64_t (*static EarlyAlertEntity.defaultQuery.modify())()
{
  if (qword_27FED9DE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t _s19RemindersAppIntents16EarlyAlertEntityV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_261D00614() & 1) == 0)
  {
    return 0;
  }

  sub_261CFCA04();
  sub_261CFCA04();
  if ((sub_261CF84AC(v8, v9) & 1) == 0)
  {
    return 0;
  }

  sub_261CFCA04();
  sub_261CFCA04();
  return 1;
}

unint64_t sub_261CFB6EC()
{
  result = qword_27FEDE8E0;
  if (!qword_27FEDE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE8E0);
  }

  return result;
}

unint64_t sub_261CFB744()
{
  result = qword_27FEDE8E8;
  if (!qword_27FEDE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE8E8);
  }

  return result;
}

unint64_t sub_261CFB79C()
{
  result = qword_27FEDE8F0;
  if (!qword_27FEDE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE8F0);
  }

  return result;
}

unint64_t sub_261CFB7F4()
{
  result = qword_27FEDE8F8;
  if (!qword_27FEDE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE8F8);
  }

  return result;
}

unint64_t sub_261CFB84C()
{
  result = qword_27FEDE900;
  if (!qword_27FEDE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE900);
  }

  return result;
}

unint64_t sub_261CFB8A0()
{
  result = qword_27FEDE908;
  if (!qword_27FEDE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE908);
  }

  return result;
}

unint64_t sub_261CFB8F8()
{
  result = qword_27FEDE910;
  if (!qword_27FEDE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE910);
  }

  return result;
}

unint64_t sub_261CFB9A0()
{
  result = qword_27FEDE918;
  if (!qword_27FEDE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE918);
  }

  return result;
}

unint64_t sub_261CFB9F8()
{
  result = qword_27FEDE920;
  if (!qword_27FEDE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE920);
  }

  return result;
}

unint64_t sub_261CFBA50()
{
  result = qword_27FEDE928;
  if (!qword_27FEDE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE928);
  }

  return result;
}

unint64_t sub_261CFBAEC()
{
  result = qword_27FEDE940;
  if (!qword_27FEDE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE940);
  }

  return result;
}

unint64_t sub_261CFBB44()
{
  result = qword_27FEDE948;
  if (!qword_27FEDE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE948);
  }

  return result;
}

unint64_t sub_261CFBB9C()
{
  result = qword_27FEDE950;
  if (!qword_27FEDE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE950);
  }

  return result;
}

unint64_t sub_261CFBBF8()
{
  result = qword_27FEDE958;
  if (!qword_27FEDE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE958);
  }

  return result;
}

unint64_t sub_261CFBC4C()
{
  result = qword_27FEDE960;
  if (!qword_27FEDE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE960);
  }

  return result;
}

unint64_t sub_261CFBCA4()
{
  result = qword_27FEDE968;
  if (!qword_27FEDE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE968);
  }

  return result;
}

unint64_t sub_261CFBD40()
{
  result = qword_27FEDE980;
  if (!qword_27FEDE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE980);
  }

  return result;
}

uint64_t destroy for EarlyAlertEntity(void *a1)
{
  v2 = a1[1];

  v3 = a1[2];

  v4 = a1[3];
}

void *initializeWithCopy for EarlyAlertEntity(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

void *assignWithCopy for EarlyAlertEntity(void *a1, void *a2)
{
  *a1 = *a2;
  v4 = a1[1];
  a1[1] = a2[1];
  sub_261CFD104();

  v5 = a1[2];
  a1[2] = a2[2];
  sub_261CFCDA4();

  v6 = a2[3];
  v7 = a1[3];
  a1[3] = v6;
  sub_261CFCDA4();

  return a1;
}

void *assignWithTake for EarlyAlertEntity(void *a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = a1[1];

  v5 = a1[2];
  *(a1 + 1) = *(a2 + 8);

  v6 = a1[3];
  a1[3] = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for EarlyAlertEntity(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for EarlyAlertEntity(uint64_t result, int a2, int a3)
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

id sub_261CFBFC8(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
  v10[0] = 0;
  v5 = [v3 fetchReminderWithObjectID:a1 fetchOptions:v4 error:v10];

  if (v5)
  {
    v6 = v10[0];
  }

  else
  {
    v7 = v10[0];
    sub_261CFD654();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v5;
}

id sub_261CFC0B8()
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 16);
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v2 = sub_261CFFC54();
  v3 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
  v10[0] = 0;
  v4 = [v1 fetchRemindersWithObjectIDs:v2 fetchOptions:v3 error:v10];

  v5 = v10[0];
  if (v4)
  {
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    sub_261B3B918();
    v6 = sub_261CFF8F4();
    v7 = v5;
  }

  else
  {
    v6 = v10[0];
    sub_261CFD654();

    swift_willThrow();
  }

  v8 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t REMStoreIntentPerformer.__allocating_init(store:)(void *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  v6 = OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_now;
  v7 = sub_261CFD7E4();
  (*(*(v7 - 8) + 56))(v5 + v6, 1, 1, v7);
  v8 = v5 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_userDefaults;
  *v8 = 0u;
  *(v8 + 16) = 0u;
  *(v8 + 32) = 0;
  *(v5 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer____lazy_storage___contactStore) = 0;
  *(v5 + 16) = a1;
  type metadata accessor for REMRemindersAppIntentDataView();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v5 + 24) = v9;
  v10 = a1;
  return v5;
}

uint64_t REMStoreIntentPerformer.deinit()
{
  v1 = *(v0 + 24);

  sub_261AE6A40(v0 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_now, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v0 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_userDefaults, &unk_27FEDE990, &qword_261D14008);

  return v0;
}

uint64_t REMStoreIntentPerformer.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  sub_261AE6A40(v0 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_now, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v0 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_userDefaults, &unk_27FEDE990, &qword_261D14008);

  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_261CFC450()
{

  return swift_deallocClassInstance();
}

id sub_261CFC488(void *a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 subtaskContext];
  if (v1)
  {
    v2 = v1;
    v3 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
    v10[0] = 0;
    v4 = [v2 fetchRemindersWithFetchOptions:v3 error:v10];

    v5 = v10[0];
    if (v4)
    {
      sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
      v3 = sub_261CFFC64();
      v6 = v5;
    }

    else
    {
      v7 = v10[0];
      sub_261CFD654();

      swift_willThrow();
    }
  }

  else
  {
    v3 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];
  return v3;
}