uint64_t sub_20BEF3C88(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return result;
}

double sub_20BEF3CA0@<D0>(void *a1@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 != 4)
      {
        if (a1)
        {
          v7 = a1;
          type metadata accessor for CGPath(0);
          goto LABEL_18;
        }

        goto LABEL_21;
      }
    }

    else if (a2 == 7)
    {
      if (a1)
      {
        v7 = a1;
LABEL_14:
        type metadata accessor for CGColor(0);
        goto LABEL_18;
      }

LABEL_21:
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = MEMORY[0x277D85048];
    *a3 = a1;
    return result;
  }

  v7 = a1;
  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      type metadata accessor for CAShapeLayerLineCap(0);
    }

    else
    {
      type metadata accessor for CAShapeLayerLineJoin(0);
    }
  }

  else
  {
    if (a2)
    {
      if (a1)
      {
        goto LABEL_14;
      }

      goto LABEL_21;
    }

    type metadata accessor for CALayerCornerCurve(0);
  }

LABEL_18:
  *(a3 + 24) = v4;
  *a3 = v7;

  v5 = v7;
  return result;
}

uint64_t sub_20BEF3DB0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF8 && *(a1 + 9))
  {
    return (*a1 + 248);
  }

  v3 = *(a1 + 8);
  if (v3 <= 8)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_20BEF3DF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF7)
  {
    *(result + 8) = 0;
    *result = a2 - 248;
    if (a3 >= 0xF8)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF8)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t WorkoutPlanScheduleEditableItem.init(index:modalityReference:scheduledItem:weekday:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2 & 1;
  v10 = type metadata accessor for WorkoutPlanScheduleEditableItem();
  sub_20B5DF134(a3, a6 + v10[5], &qword_27C771090);
  result = sub_20B5DF134(a4, a6 + v10[6], &qword_27C765810);
  *(a6 + v10[7]) = a5;
  return result;
}

uint64_t type metadata accessor for WorkoutPlanScheduleEditableItem()
{
  result = qword_2811008C0;
  if (!qword_2811008C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WorkoutPlanScheduleEditableItem.hash(into:)()
{
  v1 = sub_20C136864();
  v20 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v19 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_20C1365F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v19 - v11;
  if (*(v0 + 8) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    v13 = *v0;
    sub_20C13E184();
    MEMORY[0x20F2F58E0](v13);
  }

  v14 = type metadata accessor for WorkoutPlanScheduleEditableItem();
  sub_20B52F9E8(v0 + *(v14 + 20), v12, &qword_27C771090);
  if ((*(v7 + 48))(v12, 1, v6) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    sub_20C13E184();
    sub_20BEF4B08(&qword_27C762F60, MEMORY[0x277D52AF8]);
    sub_20C13C7C4();
    (*(v7 + 8))(v9, v6);
  }

  sub_20B52F9E8(v0 + *(v14 + 24), v5, &qword_27C765810);
  v15 = v20;
  if ((*(v20 + 48))(v5, 1, v1) == 1)
  {
    sub_20C13E184();
  }

  else
  {
    v16 = v19;
    (*(v15 + 32))(v19, v5, v1);
    sub_20C13E184();
    sub_20BEF4B08(&qword_27C76CB90, MEMORY[0x277D52CE0]);
    sub_20C13C7C4();
    (*(v15 + 8))(v16, v1);
  }

  v17 = sub_20C137F94();
  return MEMORY[0x20F2F58E0](v17);
}

uint64_t WorkoutPlanScheduleEditableItem.hashValue.getter()
{
  sub_20C13E164();
  WorkoutPlanScheduleEditableItem.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BEF437C()
{
  sub_20C13E164();
  WorkoutPlanScheduleEditableItem.hash(into:)();
  return sub_20C13E1B4();
}

uint64_t sub_20BEF43C0()
{
  sub_20C13E164();
  WorkoutPlanScheduleEditableItem.hash(into:)();
  return sub_20C13E1B4();
}

BOOL _s9SeymourUI31WorkoutPlanScheduleEditableItemV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20C136864();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v44 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765810);
  MEMORY[0x28223BE20](v7 - 8);
  v45 = &v40 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765AA0);
  MEMORY[0x28223BE20](v46);
  v47 = &v40 - v9;
  v10 = sub_20C1365F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C771090);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764A18);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v20 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  v41 = v5;
  v42 = v4;
  v40 = type metadata accessor for WorkoutPlanScheduleEditableItem();
  v21 = *(v40 + 20);
  v22 = *(v17 + 48);
  v43 = a1;
  sub_20B52F9E8(a1 + v21, v19, &qword_27C771090);
  v23 = a2 + v21;
  v24 = a2;
  sub_20B52F9E8(v23, &v19[v22], &qword_27C771090);
  v25 = *(v11 + 48);
  if (v25(v19, 1, v10) == 1)
  {
    if (v25(&v19[v22], 1, v10) == 1)
    {
      sub_20B520158(v19, &qword_27C771090);
      goto LABEL_14;
    }

LABEL_12:
    v26 = &qword_27C764A18;
LABEL_20:
    sub_20B520158(v19, v26);
    return 0;
  }

  sub_20B52F9E8(v19, v16, &qword_27C771090);
  if (v25(&v19[v22], 1, v10) == 1)
  {
    (*(v11 + 8))(v16, v10);
    goto LABEL_12;
  }

  (*(v11 + 32))(v13, &v19[v22], v10);
  sub_20BEF4B08(&qword_27C764300, MEMORY[0x277D52AF8]);
  v27 = sub_20C13C894();
  v28 = *(v11 + 8);
  v28(v13, v10);
  v28(v16, v10);
  sub_20B520158(v19, &qword_27C771090);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v29 = *(v40 + 24);
  v19 = v47;
  v30 = *(v46 + 48);
  sub_20B52F9E8(v43 + v29, v47, &qword_27C765810);
  sub_20B52F9E8(v24 + v29, &v19[v30], &qword_27C765810);
  v32 = v41;
  v31 = v42;
  v33 = *(v41 + 48);
  if (v33(v19, 1, v42) != 1)
  {
    v34 = v45;
    sub_20B52F9E8(v19, v45, &qword_27C765810);
    if (v33(&v19[v30], 1, v31) == 1)
    {
      (*(v32 + 8))(v34, v31);
      goto LABEL_19;
    }

    v36 = v44;
    (*(v32 + 32))(v44, &v19[v30], v31);
    sub_20BEF4B08(&qword_27C765AA8, MEMORY[0x277D52CE0]);
    v37 = sub_20C13C894();
    v38 = *(v32 + 8);
    v38(v36, v31);
    v38(v34, v31);
    sub_20B520158(v19, &qword_27C765810);
    if (v37)
    {
      goto LABEL_23;
    }

    return 0;
  }

  if (v33(&v19[v30], 1, v31) != 1)
  {
LABEL_19:
    v26 = &qword_27C765AA0;
    goto LABEL_20;
  }

  sub_20B520158(v19, &qword_27C765810);
LABEL_23:
  v39 = sub_20C137F94();
  return v39 == sub_20C137F94();
}

uint64_t sub_20BEF4B08(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BEF4B50(id a1, uint64_t a2)
{
  v5 = [v2 clickstreamMetricsEvent];
  if (v5 && (v6 = v5, v7 = sub_20C13C754(), v6, v8 = sub_20BEF4F70(v7), , v8))
  {
    v9 = sub_20BEF4D74();
    if (v10)
    {
LABEL_4:
      a1 = v9;
      a2 = v10;
      goto LABEL_7;
    }
  }

  else
  {
    v8 = sub_20B6B1778(MEMORY[0x277D84F90]);

    v9 = sub_20BEF4D74();
    if (v10)
    {
      goto LABEL_4;
    }
  }

LABEL_7:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = 0x6E656D6563616C70;
  v12 = inited + 32;
  v13 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE900000000000074;
  *(inited + 48) = a1;
  *(inited + 56) = a2;
  v14 = sub_20B6B1778(inited);
  swift_setDeallocating();
  sub_20B520158(v12, &qword_27C762F18);
  v15 = sub_20BEF524C();
  if (v16)
  {
    v22 = v13;
    *&v21 = v15;
    *(&v21 + 1) = v16;
    sub_20B6B3B74(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_20B91CFC0(v20, 0xD000000000000012, 0x800000020C196B60, isUniquelyReferenced_nonNull_native);
  }

  v18 = swift_isUniquelyReferenced_nonNull_native();
  *&v21 = v14;
  sub_20BEF5D68(v8, sub_20C0B88D4, 0, v18, &v21);

  return v21;
}

id sub_20BEF4D74()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_20C13C754();

    v4 = sub_20BEF4F70(v3);

    if (v4)
    {
      if (*(v4 + 16))
      {
        v5 = sub_20B65AA60(0x6E6974656B72616DLL, 0xE900000000000067);
        if (v6)
        {
          sub_20B51F1D8(*(v4 + 56) + 32 * v5, v12);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F30);
          if (swift_dynamicCast())
          {
            if (*(v11 + 16) && (v7 = sub_20B65AA60(0x6E656D6563616C70, 0xE900000000000074), (v8 & 1) != 0))
            {
              sub_20B51F1D8(*(v11 + 56) + 32 * v7, v12);

              if (swift_dynamicCast())
              {

                return v11;
              }
            }

            else
            {
            }
          }
        }
      }

      if (*(v4 + 16))
      {
        v9 = sub_20B65AA60(0x6E656D6563616C70, 0xE900000000000074);
        if (v10)
        {
          sub_20B51F1D8(*(v4 + 56) + 32 * v9, v12);

          if (swift_dynamicCast())
          {
            return v11;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

unint64_t sub_20BEF4F70(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767A50);
    v2 = sub_20C13DE84();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_20B51D968(*(a1 + 48) + 40 * v12, v27);
        sub_20B51F1D8(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_20B51D968(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_20B51F1D8(v25 + 8, v20);
        sub_20B520158(v24, &qword_27C7702B0);
        v21 = v18;
        sub_20B6B3B74(v20, v22);
        v13 = v21;
        sub_20B6B3B74(v22, v23);
        sub_20B6B3B74(v23, &v21);
        result = sub_20B65AA60(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1(v10);
          result = sub_20B6B3B74(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_20B6B3B74(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_20B520158(v24, &qword_27C7702B0);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

id sub_20BEF524C()
{
  result = [v0 clickstreamMetricsEvent];
  if (result)
  {
    v2 = result;
    v3 = sub_20C13C754();

    v4 = sub_20BEF4F70(v3);

    if (v4)
    {
      if (*(v4 + 16))
      {
        v5 = sub_20B65AA60(0x6E6974656B72616DLL, 0xE900000000000067);
        if (v6)
        {
          sub_20B51F1D8(*(v4 + 56) + 32 * v5, v12);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762F30);
          if (swift_dynamicCast())
          {
            if (*(v11 + 16) && (v7 = sub_20B65AA60(0x496567617373656DLL, 0xE900000000000064), (v8 & 1) != 0))
            {
              sub_20B51F1D8(*(v11 + 56) + 32 * v7, v12);

              if (swift_dynamicCast())
              {

                return v11;
              }
            }

            else
            {
            }
          }
        }
      }

      if (*(v4 + 16))
      {
        v9 = sub_20B65AA60(0xD000000000000012, 0x800000020C196B60);
        if (v10)
        {
          sub_20B51F1D8(*(v4 + 56) + 32 * v9, v12);

          if (swift_dynamicCast())
          {
            return v11;
          }

          else
          {
            return 0;
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_20BEF5448@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_20B51F1D8(*(v3 + 56) + 32 * v13, v21);
    *&v22 = v16;
    *(&v22 + 1) = v15;
    sub_20B6B3B74(v21, &v23);

    v18 = *(&v22 + 1);
    v19 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v20 = v1[5];
      *&v21[0] = v19;
      *(&v21[0] + 1) = v18;
      v21[1] = v23;
      v21[2] = v24;
      v20(v21);
      return sub_20B520158(v21, &qword_27C7702B8);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v23 = 0u;
        v24 = 0u;
        v22 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_20BEF55A8(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764F58);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v42 - v4;
  v45 = sub_20C136FE4();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7702C0);
  MEMORY[0x28223BE20](v9 - 8);
  v49 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v14 = &v42 - v12;
  v15 = *v1;
  v16 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v5;
  v48 = v18;
  if (v19)
  {
    v44 = a1;
    v20 = v17;
LABEL_11:
    v43 = (v19 - 1) & v19;
    v24 = __clz(__rbit64(v19)) | (v20 << 6);
    v25 = (*(v15 + 48) + 16 * v24);
    v26 = *v25;
    v27 = v25[1];
    v28 = v45;
    (*(v6 + 16))(v8, *(v15 + 56) + *(v6 + 72) * v24, v45, v13);
    v29 = v47;
    v30 = *(v47 + 48);
    *v14 = v26;
    *(v14 + 1) = v27;
    v31 = v8;
    v32 = v29;
    (*(v6 + 32))(&v14[v30], v31, v28);
    v33 = v46;
    (*(v46 + 56))(v14, 0, 1, v32);

    v34 = v43;
    a1 = v44;
    v23 = v20;
    v35 = v33;
LABEL_12:
    *v1 = v15;
    v1[1] = v16;
    v36 = v49;
    v1[2] = v48;
    v1[3] = v23;
    v1[4] = v34;
    v37 = v1[5];
    sub_20B5DF134(v14, v36, &unk_27C7702C0);
    v38 = 1;
    if ((*(v35 + 48))(v36, 1, v32) != 1)
    {
      v39 = v36;
      v40 = v42;
      sub_20B5DF134(v39, v42, &qword_27C764F58);
      v37(v40);
      sub_20B520158(v40, &qword_27C764F58);
      v38 = 0;
    }

    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A70);
    (*(*(v41 - 8) + 56))(a1, v38, 1, v41);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v35 = v46;
        v32 = v47;
        (*(v46 + 56))(&v42 - v12, 1, 1, v47, v13);
        v34 = 0;
        goto LABEL_12;
      }

      v19 = *(v16 + 8 * v20);
      ++v17;
      if (v19)
      {
        v44 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_20BEF598C(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767A18);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v38 - v4;
  v6 = sub_20C133244();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7681E0);
  MEMORY[0x28223BE20](v10 - 8);
  v45 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v38 - v14;
  v16 = *v1;
  v17 = v1[1];
  v19 = v1[2];
  v18 = v1[3];
  v20 = v1[4];
  v39 = v5;
  v44 = v19;
  if (v20)
  {
    v41 = a1;
    v21 = v18;
LABEL_11:
    v40 = (v20 - 1) & v20;
    v25 = __clz(__rbit64(v20)) | (v21 << 6);
    v26 = v16;
    (*(v7 + 16))(v9, *(v16 + 48) + *(v7 + 72) * v25, v6, v13);
    LOBYTE(v25) = *(*(v26 + 56) + v25);
    v27 = *(v43 + 48);
    v28 = v9;
    v29 = v43;
    (*(v7 + 32))(v15, v28, v6);
    v15[v27] = v25;
    v30 = v42;
    (*(v42 + 56))(v15, 0, 1, v29);
    v31 = v40;
    a1 = v41;
    v24 = v21;
LABEL_12:
    *v1 = v26;
    v1[1] = v17;
    v32 = v45;
    v1[2] = v44;
    v1[3] = v24;
    v1[4] = v31;
    v33 = v1[5];
    sub_20B5DF134(v15, v32, &qword_27C7681E0);
    v34 = 1;
    if ((*(v30 + 48))(v32, 1, v29) != 1)
    {
      v35 = v32;
      v36 = v39;
      sub_20B5DF134(v35, v39, &qword_27C767A18);
      v33(v36);
      sub_20B520158(v36, &qword_27C767A18);
      v34 = 0;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763A18);
    (*(*(v37 - 8) + 56))(a1, v34, 1, v37);
  }

  else
  {
    v22 = (v19 + 64) >> 6;
    if (v22 <= v18 + 1)
    {
      v23 = v18 + 1;
    }

    else
    {
      v23 = (v19 + 64) >> 6;
    }

    v24 = v23 - 1;
    while (1)
    {
      v21 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v21 >= v22)
      {
        v30 = v42;
        v29 = v43;
        v26 = v16;
        (*(v42 + 56))(v15, 1, 1, v43, v13);
        v31 = 0;
        goto LABEL_12;
      }

      v20 = *(v17 + 8 * v21);
      ++v18;
      if (v20)
      {
        v41 = a1;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

unint64_t sub_20BEF5D68(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_20BEF5448(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_20B6B3B74(v44, v42);
  v14 = *a5;
  result = sub_20B65AA60(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_20BA07354(v20, a4 & 1);
    result = sub_20B65AA60(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_20C13E054();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_20BA0EE38();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_20B6B3B74(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_20B6B3B74(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_20BEF5448(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_20B6B3B74(v44, v42);
        v32 = *a5;
        result = sub_20B65AA60(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_20BA07354(v36, 1);
          result = sub_20B65AA60(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_20B6B3B74(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_20B6B3B74(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_20BEF5448(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_20B583EDC();
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_20BEF6078(uint64_t a1, uint64_t (*a2)(void), int a3)
{
  v44 = a3;
  v43 = a2(0);
  v5 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v32 - v6;
  v7 = type metadata accessor for WorkoutPlanPreference();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v32 = v3;
  v48 = MEMORY[0x277D84F90];
  sub_20BB5EA28(0, v10, 0);
  v11 = v48;
  v12 = a1 + 56;
  result = sub_20C13DAA4();
  v14 = v5;
  v15 = result;
  v16 = 0;
  v38 = a1 + 56;
  v39 = v14;
  v36 = v14 + 8;
  v37 = v14 + 16;
  v33 = a1 + 64;
  v34 = v10;
  v35 = a1;
  while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << *(a1 + 32))
  {
    if ((*(v12 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
    {
      goto LABEL_21;
    }

    v45 = v16;
    v46 = *(a1 + 36);
    v47 = v15 >> 6;
    v18 = v39;
    v19 = *(a1 + 48) + *(v39 + 72) * v15;
    v20 = *(v39 + 16);
    v21 = v42;
    v22 = v43;
    v20(v42, v19, v43);
    v20(v9, v21, v22);
    swift_storeEnumTagMultiPayload();
    (*(v18 + 8))(v21, v22);
    v48 = v11;
    v24 = *(v11 + 16);
    v23 = *(v11 + 24);
    if (v24 >= v23 >> 1)
    {
      sub_20BB5EA28(v23 > 1, v24 + 1, 1);
      v11 = v48;
    }

    *(v11 + 16) = v24 + 1;
    result = sub_20BEFB0C0(v9, v11 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v24);
    a1 = v35;
    v17 = 1 << *(v35 + 32);
    v12 = v38;
    if (v15 >= v17)
    {
      goto LABEL_22;
    }

    v25 = *(v38 + 8 * v47);
    if ((v25 & (1 << v15)) == 0)
    {
      goto LABEL_23;
    }

    if (v46 != *(v35 + 36))
    {
      goto LABEL_24;
    }

    v26 = v25 & (-2 << (v15 & 0x3F));
    if (v26)
    {
      v17 = __clz(__rbit64(v26)) | v15 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v27 = v47 << 6;
      v28 = v47 + 1;
      v29 = (v33 + 8 * v47);
      while (v28 < (v17 + 63) >> 6)
      {
        v31 = *v29++;
        v30 = v31;
        v27 += 64;
        ++v28;
        if (v31)
        {
          result = sub_20B526EA4(v15, v46, 0);
          v17 = __clz(__rbit64(v30)) + v27;
          goto LABEL_4;
        }
      }

      result = sub_20B526EA4(v15, v46, 0);
    }

LABEL_4:
    v16 = v45 + 1;
    v15 = v17;
    if (v45 + 1 == v34)
    {
      return v11;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_20BEF6434(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v10 = MEMORY[0x277D84F90];
    sub_20BB5D3CC(0, v1, 0);
    v4 = a1 + 32;
    v2 = v10;
    do
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_20BB5D3CC((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20BEF6570(uint64_t a1)
{
  v16 = type metadata accessor for ButtonAction(0);
  v2 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770330);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v17 = MEMORY[0x277D84F90];
    sub_20BB5D4B4(0, v9, 0);
    v10 = v17;
    v11 = a1 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v12 = *(v2 + 72);
    do
    {
      sub_20BEFB058(v11, v4, type metadata accessor for ButtonAction);
      swift_dynamicCast();
      v17 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_20BB5D4B4(v13 > 1, v14 + 1, 1);
        v10 = v17;
      }

      *(v10 + 16) = v14 + 1;
      sub_20B5F67F0(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14);
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_20BEF67DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_20BB5D97C(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    type metadata accessor for CGPoint(0);
    do
    {
      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20BB5D97C((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_20B6B3B74(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20BEF68DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_20BB5DE14(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      v4 += 8;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C767630);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20BB5DE14((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20BEF6A7C(unint64_t a1, uint64_t (*a2)(BOOL, uint64_t, uint64_t), uint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = sub_20C13DB34();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v22 = MEMORY[0x277D84F90];
  result = a2(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v22;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v9 = 0;
      do
      {
        v10 = MEMORY[0x20F2F5430](v9, a1);
        v12 = *(v22 + 16);
        v11 = *(v22 + 24);
        if (v12 >= v11 >> 1)
        {
          v14 = v10;
          a2(v11 > 1, v12 + 1, 1);
          v10 = v14;
        }

        ++v9;
        *(v22 + 16) = v12 + 1;
        v13 = v22 + 16 * v12;
        *(v13 + 32) = v10;
        *(v13 + 40) = a3;
      }

      while (v6 != v9);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *(v22 + 16);
        v17 = *(v22 + 24);
        v18 = *v15;
        if (v16 >= v17 >> 1)
        {
          v20 = v17 > 1;
          v21 = v18;
          a2(v20, v16 + 1, 1);
          v18 = v21;
        }

        *(v22 + 16) = v16 + 1;
        v19 = v22 + 16 * v16;
        *(v19 + 32) = v18;
        *(v19 + 40) = a3;
        ++v15;
        --v6;
      }

      while (v6);
    }

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BEF6C24(unint64_t a1)
{
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7620E0);
    v1 = sub_20C13DE34();
  }

  else
  {
    v1 = a1;

    sub_20C13E004();
  }

  return v1;
}

uint64_t sub_20BEF6CA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_20BB5E2D4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 32;
    do
    {
      ++v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770358);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_20BB5E2D4((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + v6 + 32) = v8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_20BEF6DB0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_20C13DB34();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    result = sub_20C13DD64();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x20F2F5430]();
          sub_20B51C88C(0, &qword_27C7713A0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7676B0);
          swift_dynamicCast();
          sub_20C13DD34();
          sub_20C13DD74();
          sub_20C13DD84();
          sub_20C13DD44();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_20B51C88C(0, &qword_27C7713A0);
        do
        {
          v7 = *v6++;
          v8 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7676B0);
          swift_dynamicCast();
          sub_20C13DD34();
          sub_20C13DD74();
          sub_20C13DD84();
          sub_20C13DD44();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

uint64_t sub_20BEF6FEC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t *, unint64_t))
{
  v24 = a4;
  v25 = a5;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v27 = MEMORY[0x277D84F90];
    v22 = a3;
    (a3)(0, v12, 0, v9);
    v13 = v27;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v14 = v16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v23 = *(v15 + 56);
    do
    {
      v14(v11, v17, v7);
      v27 = v13;
      v19 = *(v13 + 16);
      v18 = *(v13 + 24);
      if (v19 >= v18 >> 1)
      {
        v22(v18 > 1, v19 + 1, 1);
      }

      v26[3] = v7;
      v26[4] = v24;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
      v14(boxed_opaque_existential_1, v11, v7);
      v13 = v27;
      *(v27 + 16) = v19 + 1;
      v25(v26, v13 + 40 * v19 + 32);
      (*(v15 - 8))(v11, v7);
      v17 += v23;
      --v12;
    }

    while (v12);
  }

  return v13;
}

char *sub_20BEF71F0(unint64_t a1, unint64_t *a2)
{
  if (a1 >> 62)
  {
    v4 = sub_20C13DB34();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x277D84F90];
  result = sub_20BB5D97C(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v15;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v4; ++i)
      {
        MEMORY[0x20F2F5430](i, a1);
        sub_20B51C88C(0, a2);
        swift_dynamicCast();
        v15 = v5;
        v9 = *(v5 + 16);
        v8 = *(v5 + 24);
        if (v9 >= v8 >> 1)
        {
          sub_20BB5D97C((v8 > 1), v9 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v9 + 1;
        sub_20B6B3B74(v14, (v5 + 32 * v9 + 32));
      }
    }

    else
    {
      v10 = (a1 + 32);
      sub_20B51C88C(0, a2);
      do
      {
        v11 = *v10;
        swift_dynamicCast();
        v15 = v5;
        v13 = *(v5 + 16);
        v12 = *(v5 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_20BB5D97C((v12 > 1), v13 + 1, 1);
          v5 = v15;
        }

        *(v5 + 16) = v13 + 1;
        sub_20B6B3B74(v14, (v5 + 32 * v13 + 32));
        ++v10;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

void *sub_20BEF73E8(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    v4 = sub_20C13DB34();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    return v5;
  }

  v19 = MEMORY[0x277D84F90];
  result = sub_20BB5D3CC(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v19;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = 0;
      do
      {
        v8 = MEMORY[0x20F2F5430](v7, a1);
        v10 = *(v19 + 16);
        v9 = *(v19 + 24);
        if (v10 >= v9 >> 1)
        {
          v12 = v8;
          sub_20BB5D3CC((v9 > 1), v10 + 1, 1);
          v8 = v12;
        }

        ++v7;
        *(v19 + 16) = v10 + 1;
        v11 = v19 + 16 * v10;
        *(v11 + 32) = v8;
        *(v11 + 40) = a2;
      }

      while (v4 != v7);
    }

    else
    {
      v13 = (a1 + 32);
      v14 = *(v19 + 16);
      v15 = 16 * v14;
      do
      {
        v16 = *v13;
        v17 = *(v19 + 24);

        if (v14 >= v17 >> 1)
        {
          sub_20BB5D3CC((v17 > 1), v14 + 1, 1);
        }

        *(v19 + 16) = v14 + 1;
        v18 = v19 + v15;
        *(v18 + 32) = v16;
        *(v18 + 40) = a2;
        v15 += 16;
        ++v13;
        ++v14;
        --v4;
      }

      while (v4);
    }

    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_20BEF7574@<X0>(uint64_t *a1@<X8>)
{
  result = sub_20C1365E4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_20BEF75A0@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v26[0] = a4;
  v26[1] = a3;
  v28 = a5;
  v7 = sub_20C1365F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C1333A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C1365B4();
  v27 = a2;
  if (a2)
  {
    v15 = 10;
  }

  else
  {
    v15 = 6;
  }

  LOBYTE(v30[0]) = v15;
  sub_20B8DCF84();
  sub_20B8DD02C();
  v16 = sub_20C13CF84();

  v18 = 0;
  if (v16)
  {
    (*(v12 + 16))(v14, v26[0], v11);
    (*(v8 + 16))(v10, a1, v7);
    type metadata accessor for WorkoutPlanPreferencePickerShelf();
    v18 = swift_allocObject();
    *(v18 + 24) = 0;
    swift_unknownObjectWeakInit();
    sub_20C132ED4();
    v19 = v18 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_row;
    sub_20B5D8060(v30);
    v20 = v30[5];
    *(v19 + 64) = v30[4];
    *(v19 + 80) = v20;
    v21 = v30[9];
    v22 = v30[7];
    *(v19 + 128) = v30[8];
    *(v19 + 144) = v21;
    v23 = v30[6];
    *(v19 + 160) = v31;
    *(v19 + 96) = v23;
    *(v19 + 112) = v22;
    v24 = v30[1];
    *v19 = v30[0];
    *(v19 + 16) = v24;
    v25 = v30[3];
    *(v19 + 32) = v30[2];
    *(v19 + 48) = v25;
    *(v18 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences) = MEMORY[0x277D84FA0];
    *(v18 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferences) = MEMORY[0x277D84F90];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
    sub_20C133AA4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
    sub_20C133AA4();
    *(v18 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_eventHub) = v29;
    (*(v12 + 32))(v18 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_metricPage, v14, v11);
    result = (*(v8 + 32))(v18 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_modalityReference, v10, v7);
    *(v18 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_preferenceType) = v27 & 1;
  }

  *v28 = v18;
  return result;
}

uint64_t sub_20BEF7958()
{
  v1 = sub_20C132EE4();
  v37 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v45 = &v33 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v0[4];
  if (result)
  {
    v4 = v0[5];
    v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferencePickerShelves);
    v35 = v0[4];
    v33 = v4;
    sub_20B584050(result);
    v6 = sub_20B6B3854(MEMORY[0x277D84F90]);
    if (v5 >> 62)
    {
LABEL_28:
      v7 = sub_20C13DB34();
      v34 = v0;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v34 = v0;
      if (v7)
      {
LABEL_4:
        v8 = 0;
        v41 = v5 & 0xFFFFFFFFFFFFFF8;
        v42 = v5 & 0xC000000000000001;
        v43 = (v37 + 16);
        v39 = (v37 + 8);
        v40 = v1;
        v38 = v7;
        v36 = v5;
        while (1)
        {
          if (v42)
          {
            v9 = MEMORY[0x20F2F5430](v8, v5);
            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              goto LABEL_24;
            }
          }

          else
          {
            if (v8 >= *(v41 + 16))
            {
              goto LABEL_25;
            }

            v9 = *(v5 + 8 * v8 + 32);

            v10 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
LABEL_24:
              __break(1u);
LABEL_25:
              __break(1u);
LABEL_26:
              __break(1u);
LABEL_27:
              __break(1u);
              goto LABEL_28;
            }
          }

          v44 = v10;
          v11 = *v43;
          v12 = v45;
          (*v43)(v45, v9 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_identifier, v1);
          v13 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences;
          swift_beginAccess();
          v14 = *(v9 + v13);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v46 = v6;
          v0 = v6;
          v17 = sub_20B65AAD8(v12);
          v18 = *(v6 + 16);
          v19 = (v16 & 1) == 0;
          v20 = v18 + v19;
          if (__OFADD__(v18, v19))
          {
            goto LABEL_26;
          }

          v21 = v16;
          if (*(v6 + 24) >= v20)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v0 = v46;
              if (v16)
              {
                goto LABEL_5;
              }
            }

            else
            {
              sub_20BA11D50();
              v0 = v46;
              if (v21)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
            sub_20BA0D744(v20, isUniquelyReferenced_nonNull_native);
            v22 = sub_20B65AAD8(v45);
            if ((v21 & 1) != (v23 & 1))
            {
              result = sub_20C13E054();
              __break(1u);
              return result;
            }

            v17 = v22;
            v0 = v46;
            if (v21)
            {
LABEL_5:
              *(v0[7] + 8 * v17) = v14;

              v1 = v40;
              (*v39)(v45, v40);
              goto LABEL_6;
            }
          }

          v0[(v17 >> 6) + 8] |= 1 << v17;
          v24 = v37;
          v5 = v45;
          v1 = v40;
          v11(v0[6] + *(v37 + 72) * v17, v45, v40);
          *(v0[7] + 8 * v17) = v14;

          (*(v24 + 8))(v5, v1);
          v25 = v0[2];
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_27;
          }

          v0[2] = v27;
          v5 = v36;
LABEL_6:
          ++v8;
          v6 = v0;
          if (v44 == v38)
          {
            goto LABEL_30;
          }
        }
      }
    }

    v0 = v6;
LABEL_30:
    v28 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_originalPreferencesByShelf;
    v29 = v34;
    swift_beginAccess();
    v30 = *(v29 + v28);

    sub_20B9761D4(v0, v30);
    LOBYTE(v29) = v31;

    v32 = v35;
    v35((v29 & 1) == 0);
    return sub_20B583ECC(v32);
  }

  return result;
}

uint64_t sub_20BEF7D7C()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferencePickerShelves);
  if (v2 >> 62)
  {
    v3 = sub_20C13DB34();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v29 = MEMORY[0x277D84F90];
    sub_20BB5E6E0(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
      return result;
    }

    v4 = v29;
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x20F2F5430](v5, v2);
        v7 = sub_20C1365A4();
        v9 = v8;
        v10 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences;
        swift_beginAccess();
        v11 = *(v6 + v10);

        swift_unknownObjectRelease();
        v29 = v4;
        v13 = v4[2];
        v12 = v4[3];
        if (v13 >= v12 >> 1)
        {
          sub_20BB5E6E0((v12 > 1), v13 + 1, 1);
          v4 = v29;
        }

        ++v5;
        v4[2] = v13 + 1;
        v14 = &v4[3 * v13];
        v14[4] = v7;
        v14[5] = v9;
        v14[6] = v11;
      }

      while (v3 != v5);
    }

    else
    {
      v15 = (v2 + 32);
      do
      {
        v16 = *v15;

        v17 = sub_20C1365A4();
        v19 = v18;
        v20 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_selectedPreferences;
        swift_beginAccess();
        v21 = *(v16 + v20);

        v29 = v4;
        v23 = v4[2];
        v22 = v4[3];
        if (v23 >= v22 >> 1)
        {
          sub_20BB5E6E0((v22 > 1), v23 + 1, 1);
          v4 = v29;
        }

        v4[2] = v23 + 1;
        v24 = &v4[3 * v23];
        v24[4] = v17;
        v24[5] = v19;
        v24[6] = v21;
        ++v15;
        --v3;
      }

      while (v3);
    }

    v1 = v0;
  }

  if (v4[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7692A0);
    v25 = sub_20C13DE84();
  }

  else
  {
    v25 = MEMORY[0x277D84F98];
  }

  v29 = v25;
  sub_20BEF9898(v4, 1, &v29);
  v26 = v29;
  swift_getObjectType();
  v27 = *(v1 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferenceType);
  v29 = v26;
  v30 = v27;
  sub_20BEFB124();
  sub_20C13A764();
}

uint64_t sub_20BEF8068(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_originalPreferencesByShelf;
  swift_beginAccess();
  if (*(*(v1 + v4) + 16))
  {
    swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v1 + v4);
    *(v1 + v4) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770338);
    sub_20C13DE14();
    *(v1 + v4) = v11;
  }

  result = swift_endAccess();
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferencePickerShelves);
  if (v6 >> 62)
  {
    goto LABEL_15;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v7)
  {
    do
    {
      v8 = 0;
      while ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x20F2F5430](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_13;
        }

LABEL_9:
        v12[0] = v9;
        sub_20BEF81E4(v12, v2, a1);

        ++v8;
        if (v10 == v7)
        {
          return result;
        }
      }

      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }

      v9 = *(v6 + 8 * v8 + 32);

      v10 = v8 + 1;
      if (!__OFADD__(v8, 1))
      {
        goto LABEL_9;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      result = sub_20C13DB34();
      v7 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_20BEF81E4(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v83 = a3;
  v92 = sub_20C134E04();
  v85 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v91 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = sub_20C1333E4();
  v76 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v89 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_20C132EE4();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v79 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for WorkoutPlanPreference();
  v75 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v93 = &v75 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = &v75 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v75 - v13;
  v95 = sub_20C137594();
  v15 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v87 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v86 = &v75 - v18;
  v19 = *a1;

  v21 = sub_20BEFAC88(v20, v19);
  v77 = v3;
  v78 = v19;

  v82 = a2;
  v22 = *(a2 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferenceType);
  v23 = v21 + 56;
  v94 = v15 + 16;
  v88 = (v15 + 8);
  v98 = v21;
  if (v22)
  {
    v99 = MEMORY[0x277D84F90];
    v24 = 1 << *(v21 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v21 + 56);
    v27 = (v24 + 63) >> 6;

    v28 = 0;
    while (v26)
    {
      v29 = v28;
      result = v98;
LABEL_11:
      v31 = __clz(__rbit64(v26));
      v26 &= v26 - 1;
      v32 = v87;
      v33 = v95;
      (*(v15 + 16))(v87, *(result + 48) + *(v15 + 72) * (v31 | (v29 << 6)), v95);
      v34 = sub_20C137544();
      (*(v15 + 8))(v32, v33);
      sub_20B8D9590(v34);
    }

    result = v98;
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {
        goto LABEL_24;
      }

      v26 = *(v23 + 8 * v29);
      ++v28;
      if (v26)
      {
        v28 = v29;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
    v99 = MEMORY[0x277D84F90];
    v35 = 1 << *(v21 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(v21 + 56);
    v38 = (v35 + 63) >> 6;

    v39 = 0;
    while (v37)
    {
      v40 = v39;
      result = v98;
LABEL_22:
      v41 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v42 = v86;
      v43 = v95;
      (*(v15 + 16))(v86, *(result + 48) + *(v15 + 72) * (v41 | (v40 << 6)), v95);
      v44 = sub_20C137574();
      (*(v15 + 8))(v42, v43);
      sub_20B8D9590(v44);
    }

    result = v98;
    while (1)
    {
      v40 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v40 >= v38)
      {
LABEL_24:

        v45 = sub_20B527580(v99);

        v95 = *(v83 + 16);
        if (v95)
        {
          v46 = 0;
          v84 = (*(v75 + 80) + 32) & ~*(v75 + 80);
          v94 = v83 + v84;
          v98 = *(v75 + 72);
          v87 = (v76 + 8);
          v88 = (v76 + 32);
          v86 = v85 + 32;
          v85 += 8;
          v47 = v45 + 56;
          v48 = MEMORY[0x277D84F90];
          v49 = v97;
          do
          {
            sub_20BEFB058(v94 + v98 * v46, v14, type metadata accessor for WorkoutPlanPreference);
            sub_20BEFB058(v14, v49, type metadata accessor for WorkoutPlanPreference);
            if (swift_getEnumCaseMultiPayload() == 1)
            {
              v50 = v91;
              v51 = v49;
              v52 = v92;
              (*v86)(v91, v51, v92);
              v53 = sub_20C134DD4();
              v55 = v54;
              v56 = v85;
            }

            else
            {
              v50 = v89;
              v57 = v49;
              v52 = v90;
              (*v88)(v89, v57, v90);
              v53 = sub_20C1333B4();
              v55 = v58;
              v56 = v87;
            }

            (*v56)(v50, v52);
            if (*(v45 + 16) && (sub_20C13E164(), sub_20C13CA64(), v59 = sub_20C13E1B4(), v60 = -1 << *(v45 + 32), v61 = v59 & ~v60, ((*(v47 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) != 0))
            {
              v62 = ~v60;
              while (1)
              {
                v63 = (*(v45 + 48) + 16 * v61);
                v64 = *v63 == v53 && v63[1] == v55;
                if (v64 || (sub_20C13DFF4() & 1) != 0)
                {
                  break;
                }

                v61 = (v61 + 1) & v62;
                if (((*(v47 + ((v61 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v61) & 1) == 0)
                {
                  goto LABEL_26;
                }
              }

              sub_20BEFB0C0(v14, v93);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v100 = v48;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_20BB5EA28(0, *(v48 + 16) + 1, 1);
                v48 = v100;
              }

              v67 = *(v48 + 16);
              v66 = *(v48 + 24);
              if (v67 >= v66 >> 1)
              {
                sub_20BB5EA28(v66 > 1, v67 + 1, 1);
                v48 = v100;
              }

              *(v48 + 16) = v67 + 1;
              sub_20BEFB0C0(v93, v48 + v84 + v67 * v98);
            }

            else
            {
LABEL_26:

              sub_20B8DCED0(v14);
            }

            ++v46;
            v49 = v97;
          }

          while (v46 != v95);
        }

        else
        {
          v48 = MEMORY[0x277D84F90];
        }

        v68 = sub_20B719F18(v48);

        v69 = v80;
        v70 = v79;
        v71 = v81;
        (*(v80 + 16))(v79, v78 + OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_identifier, v81);
        v72 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_originalPreferencesByShelf;
        v73 = v82;
        swift_beginAccess();

        v74 = swift_isUniquelyReferenced_nonNull_native();
        v100 = *(v73 + v72);
        *(v73 + v72) = 0x8000000000000000;
        sub_20B91EBB4(v68, v70, v74);
        (*(v69 + 8))(v70, v71);
        *(v73 + v72) = v100;
        swift_endAccess();
        sub_20C0678EC(v83, v68);
      }

      v37 = *(v23 + 8 * v40);
      ++v39;
      if (v37)
      {
        v39 = v40;
        goto LABEL_22;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_20BEF8B88()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762320);
  v61 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v51 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647C8);
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x28223BE20](v4);
  v56 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v57 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770360);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7647C0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  v60 = &v51 - v21;
  v62 = v0;
  v22 = *(v0 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferencePickerShelves);
  if (v22 >> 62)
  {
    v54 = v19;
    v55 = v18;
    v50 = v20;
    result = sub_20C13DB34();
    v20 = v50;
    v19 = v54;
    v18 = v55;
    if (result < 1)
    {
      return result;
    }
  }

  else
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result < 1)
    {
      return result;
    }
  }

  v51 = v20;
  v52 = v3;
  v54 = v19;
  v55 = v18;
  v53 = v1;
  v24 = *(v62 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferenceType);
  __swift_project_boxed_opaque_existential_1((v62 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_catalogClient), *(v62 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_catalogClient + 24));
  if (v24)
  {
    v25 = v57;
    sub_20C13A074();
    v26 = swift_allocObject();
    *(v26 + 16) = sub_20BEF930C;
    *(v26 + 24) = 0;
    v28 = v58;
    v27 = v59;
    v29 = v56;
    (*(v58 + 16))(v56, v25, v59);
    v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
    v31 = swift_allocObject();
    (*(v28 + 32))(v31 + v30, v29, v27);
    v32 = (v31 + ((v5 + v30 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v32 = sub_20BEFB178;
    v32[1] = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770370);
    v33 = v60;
    sub_20C137C94();
    (*(v28 + 8))(v25, v27);
  }

  else
  {
    sub_20C13A034();
    v34 = swift_allocObject();
    *(v34 + 16) = sub_20BEF92C8;
    *(v34 + 24) = 0;
    (*(v9 + 16))(v11, v14, v8);
    v35 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v36 = swift_allocObject();
    (*(v9 + 32))(v36 + v35, v11, v8);
    v37 = (v36 + ((v10 + v35 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v37 = sub_20BEFB274;
    v37[1] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770370);
    v33 = v60;
    sub_20C137C94();
    (*(v9 + 8))(v14, v8);
  }

  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  *(v39 + 16) = sub_20BEFB1E8;
  *(v39 + 24) = v38;
  v41 = v54;
  v40 = v55;
  v42 = v51;
  (*(v54 + 16))(v51, v33, v55);
  v43 = (*(v41 + 80) + 16) & ~*(v41 + 80);
  v44 = swift_allocObject();
  (*(v41 + 32))(v44 + v43, v42, v40);
  v45 = (v44 + ((v16 + v43 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v45 = sub_20BEFB204;
  v45[1] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C765D70);
  v46 = v52;
  sub_20C137C94();
  v47 = v53;
  v48 = sub_20C137CB4();
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  v48(sub_20B52347C, v49);

  (*(v61 + 8))(v46, v47);
  return (*(v41 + 8))(v33, v40);
}

uint64_t sub_20BEF92C8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20BEF6078(*a1, MEMORY[0x277D4FE80], 0);
  *a2 = result;
  return result;
}

uint64_t sub_20BEF930C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_20BEF6078(*a1, MEMORY[0x277D51130], 1);
  *a2 = result;
  return result;
}

uint64_t sub_20BEF9350@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  v5 = result;
  if (result)
  {
    sub_20BEF8068(v3);
  }

  *a2 = v5 == 0;
  return result;
}

uint64_t sub_20BEF93D4()
{
  sub_20B583E6C(v0 + 16);
  sub_20B583ECC(*(v0 + 32));
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_metricPage;
  v2 = sub_20C1333A4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_catalogClient);

  return v0;
}

uint64_t sub_20BEF94AC()
{
  sub_20BEF93D4();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for WorkoutPlanPreferencesPageDataProvider()
{
  result = qword_27C770308;
  if (!qword_27C770308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BEF9558()
{
  result = sub_20C1333A4();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_20BEF9644()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BEF7958();
  }

  return result;
}

uint64_t sub_20BEF96B0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_metricPage;
  v5 = sub_20C1333A4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_20BEF972C()
{
  swift_getObjectType();
  swift_allocObject();
  swift_weakInit();
  sub_20BAC91C4();
  sub_20C13A784();

  __swift_destroy_boxed_opaque_existential_1(v1);
  return sub_20BEF8B88();
}

unint64_t *sub_20BEF97FC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_20BEFA9C4(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_20BEF9898(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_20B65AA60(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_20BA0C138(v15, v5 & 1);
    v10 = sub_20B65AA60(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_20C13E054();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_20BA11344();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();

    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762A80);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_20C13DC94();
    MEMORY[0x20F2F4230](0xD00000000000001BLL, 0x800000020C1B67A0);
    sub_20C13DDF4();
    MEMORY[0x20F2F4230](39, 0xE100000000000000);
    sub_20C13DE24();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v25 = 1;
    while (v25 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v26 = *a3;

      v27 = sub_20B65AA60(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_20BA0C138(v31, 1);
        v27 = sub_20B65AA60(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v8;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v25;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v25)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

char *sub_20BEF9C2C(uint64_t a1, char *a2, void *a3, uint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  v98 = a3;
  v99 = a6;
  v103 = a2;
  v104 = a4;
  v100 = a1;
  v8 = sub_20C13C6C4();
  MEMORY[0x28223BE20](v8 - 8);
  *&v106 = &v94 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617E0);
  MEMORY[0x28223BE20](v10 - 8);
  v102 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621D0);
  MEMORY[0x28223BE20](v12 - 8);
  v101 = &v94 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7617F0);
  MEMORY[0x28223BE20](v14 - 8);
  v96 = &v94 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7669F0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v94 - v17;
  v19 = sub_20C1333A4();
  v105 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a5;
  LODWORD(v97) = v22;
  *(v6 + 3) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 4) = 0;
  *(v6 + 5) = 0;
  v23 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_originalPreferencesByShelf;
  *&v6[v23] = sub_20B6B3854(MEMORY[0x277D84F90]);
  if (v22)
  {
    v24 = 0x7254796669646F4DLL;
  }

  else
  {
    v24 = 0x754D796669646F4DLL;
  }

  if (v22)
  {
    v25 = 0xEE007372656E6961;
  }

  else
  {
    v25 = 0xEB00000000636973;
  }

  v26 = *MEMORY[0x277D517D8];
  v27 = sub_20C1352F4();
  v28 = *(v27 - 8);
  (*(v28 + 104))(v18, v26, v27);
  (*(v28 + 56))(v18, 0, 1, v27);
  v29 = v6;
  v30 = sub_20C132C14();
  (*(*(v30 - 8) + 56))(v96, 1, 1, v30);
  v31 = sub_20C135ED4();
  (*(*(v31 - 8) + 56))(v101, 1, 1, v31);
  v32 = sub_20C136914();
  (*(*(v32 - 8) + 56))(v102, 1, 1, v32);

  v101 = v25;
  v102 = v24;
  sub_20C133384();
  v33 = *(v105 + 16);
  v98 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_metricPage;
  v104 = v19;
  v33(&v6[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_metricPage], v21, v19);
  v34 = v97;
  v6[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferenceType] = v97;
  v96 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_selectedModalityPreferences;
  *&v6[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_selectedModalityPreferences] = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7621A0);
  v35 = v100;
  sub_20C133AA4();
  v99 = OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_catalogClient;
  sub_20B51C710(&v120, &v29[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_catalogClient]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  v36 = v35;
  sub_20C133AA4();
  v37 = *(&v120 + 1);
  *(v29 + 6) = v120;
  *(v29 + 7) = v37;
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&v29[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_subscriptionToken] = sub_20C13A914();
  *&v120 = v103;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C770C10);
  sub_20B69851C();
  v38 = sub_20C13CBF4();

  v107[16] = v34;
  v108 = v36;
  v109 = v21;
  v103 = v21;
  v39 = sub_20B613FCC(sub_20BEFA9A4, v107, v38);

  *&v29[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_preferencePickerShelves] = v39;
  LOBYTE(v120) = v34;
  type metadata accessor for WorkoutPlanPreferenceDescriptionShelf();
  swift_allocObject();

  v41 = sub_20C07B8F4(v40, &v120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766A00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  *(inited + 32) = v41;
  *(inited + 40) = &off_282304208;
  v100 = v41;

  v44 = sub_20BEF73E8(v43, &off_282303800);

  *&v120 = inited;
  sub_20B8D8FF8(v44);
  v45 = v120;
  LODWORD(v99) = sub_20C1380F4();
  v46 = [objc_allocWithZone(MEMORY[0x277D75300]) init];
  v98 = [objc_allocWithZone(type metadata accessor for CollectionView()) initWithFrame:v46 collectionViewLayout:{0.0, 0.0, 0.0, 0.0}];

  sub_20C13C734();
  v47 = sub_20C13C724();
  v48 = type metadata accessor for CatalogPageImpressionTracker();
  v49 = swift_allocObject();
  sub_20C13C714();

  sub_20C13C6B4();
  v50 = MEMORY[0x277D221C0];
  v49[2] = sub_20C13C6D4();
  v49[3] = v47;
  v49[4] = v50;
  v121 = v48;
  v51 = sub_20B63EE48();
  v122 = v51;
  *&v120 = v49;
  v52 = type metadata accessor for MetricLocationStore();
  v53 = swift_allocObject();
  v54 = MEMORY[0x277D84F98];
  v55 = MEMORY[0x277D84F90];
  *(v53 + 16) = MEMORY[0x277D84F90];
  *(v53 + 24) = v54;
  v56 = __swift_mutable_project_boxed_opaque_existential_1(&v120, v48);
  v97 = &v94;
  v57 = MEMORY[0x28223BE20](v56);
  v59 = (&v94 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v60 + 16))(v59, v57);
  v61 = *v59;
  v119[3] = v48;
  v119[4] = v51;
  v119[0] = v61;
  v118[3] = v52;
  v118[4] = &off_2822B6968;
  v118[0] = v53;
  v62 = *(v45 + 16);
  if (v62)
  {
    v94 = v52;
    v95 = v51;
    v96 = v29;
    v117[0] = v55;
    sub_20BB5D394(0, v62, 0);
    v63 = 32;
    v64 = v117[0];
    do
    {
      v65 = *(v45 + v63);
      v117[0] = v64;
      v67 = *(v64 + 16);
      v66 = *(v64 + 24);
      v106 = v65;
      swift_unknownObjectRetain();
      if (v67 >= v66 >> 1)
      {
        sub_20BB5D394((v66 > 1), v67 + 1, 1);
        v64 = v117[0];
      }

      *(v64 + 16) = v67 + 1;
      v68 = v64 + 24 * v67;
      *(v68 + 32) = v106;
      *(v68 + 48) = 0;
      v63 += 16;
      --v62;
    }

    while (v62);

    v51 = v95;
    v29 = v96;
    v52 = v94;
  }

  else
  {

    v64 = MEMORY[0x277D84F90];
  }

  sub_20B51CC64(v119, v117);
  sub_20B51CC64(v118, v116);
  v69 = __swift_mutable_project_boxed_opaque_existential_1(v117, v117[3]);
  *&v106 = &v94;
  v70 = MEMORY[0x28223BE20](v69);
  v72 = (&v94 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v73 + 16))(v72, v70);
  v74 = __swift_mutable_project_boxed_opaque_existential_1(v116, v116[3]);
  v75 = MEMORY[0x28223BE20](v74);
  v77 = (&v94 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v78 + 16))(v77, v75);
  v79 = *v72;
  v80 = *v77;
  v114 = v48;
  v115 = v51;
  v113[0] = v79;
  v111 = v52;
  v112 = &off_2822B6968;
  v110[0] = v80;
  v81 = objc_allocWithZone(type metadata accessor for CatalogPage());
  v82 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
  v83 = MEMORY[0x28223BE20](v82);
  v85 = (&v94 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v86 + 16))(v85, v83);
  v87 = __swift_mutable_project_boxed_opaque_existential_1(v110, v111);
  v88 = MEMORY[0x28223BE20](v87);
  v90 = (&v94 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v91 + 16))(v90, v88);
  v92 = sub_20BE3AA74(v102, v101, v64, v99, v98, *v85, *v90, 2, v81);

  __swift_destroy_boxed_opaque_existential_1(v118);
  __swift_destroy_boxed_opaque_existential_1(v119);
  __swift_destroy_boxed_opaque_existential_1(v110);
  __swift_destroy_boxed_opaque_existential_1(v113);
  __swift_destroy_boxed_opaque_existential_1(v116);
  __swift_destroy_boxed_opaque_existential_1(v117);
  __swift_destroy_boxed_opaque_existential_1(&v120);
  *&v29[OBJC_IVAR____TtC9SeymourUI38WorkoutPlanPreferencesPageDataProvider_page] = v92;
  (*(v105 + 8))(v103, v104);
  return v29;
}

void sub_20BEFA9C4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a2;
  v40 = a4;
  v33 = a1;
  v5 = sub_20C137594();
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = 0;
  v10 = 0;
  v41 = a3;
  v13 = *(a3 + 56);
  v12 = a3 + 56;
  v11 = v13;
  v14 = 1 << *(v12 - 24);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v37 = v6 + 16;
  v38 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_modalityReference;
  v39 = v6;
  v36 = (v6 + 8);
  while (v16)
  {
    v19 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
LABEL_12:
    v22 = v19 | (v10 << 6);
    v23 = *(v41 + 48);
    v24 = *(v39 + 72);
    v35 = v22;
    (*(v39 + 16))(v9, v23 + v24 * v22, v5, v7);
    v25 = v9;
    v26 = sub_20C137564();
    v28 = v27;
    if (v26 == sub_20C1365A4() && v28 == v29)
    {

      v9 = v25;
      (*v36)(v25, v5);
      goto LABEL_15;
    }

    v18 = sub_20C13DFF4();

    v9 = v25;
    (*v36)(v25, v5);
    if (v18)
    {
LABEL_15:
      *(v33 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
      if (__OFADD__(v34++, 1))
      {
        __break(1u);
LABEL_18:
        v31 = v41;

        sub_20BC105C4(v33, v32, v34, v31);
        return;
      }
    }
  }

  v20 = v10;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_18;
    }

    v21 = *(v12 + 8 * v10);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v16 = (v21 - 1) & v21;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_20BEFAC88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = *MEMORY[0x277D85DE8];
  v39 = sub_20C137594();
  v6 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = a2;
  v38 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;

  if (v8 > 0xD)
  {
    goto LABEL_22;
  }

  while (2)
  {
    v29 = v9;
    v30 = v3;
    v28[1] = v28;
    MEMORY[0x28223BE20](v11);
    v31 = v28 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v31, v10);
    v32 = 0;
    v3 = 0;
    v12 = a1 + 56;
    v13 = 1 << *(a1 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v9 = v14 & *(a1 + 56);
    v15 = (v13 + 63) >> 6;
    v34 = v6 + 16;
    v35 = OBJC_IVAR____TtC9SeymourUI32WorkoutPlanPreferencePickerShelf_modalityReference;
    v36 = v6;
    v33 = (v6 + 8);
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_13:
      v6 = v16 | (v3 << 6);
      v19 = a1;
      (*(v36 + 16))(v38, *(a1 + 48) + *(v36 + 72) * v6, v39);
      v10 = sub_20C137564();
      v21 = v20;
      if (v10 == sub_20C1365A4() && v21 == v22)
      {

        (*v33)(v38, v39);
        a1 = v19;
        goto LABEL_16;
      }

      v10 = sub_20C13DFF4();

      (*v33)(v38, v39);
      a1 = v19;
      if (v10)
      {
LABEL_16:
        *&v31[(v6 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v6;
        if (__OFADD__(v32++, 1))
        {
          __break(1u);
LABEL_19:
          v24 = sub_20BC105C4(v31, v29, v32, a1);

          return v24;
        }
      }
    }

    v17 = v3;
    while (1)
    {
      v3 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v3 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v12 + 8 * v3);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v26 = swift_slowAlloc();
  v27 = v37;

  v24 = sub_20BEF97FC(v26, v9, a1, v27);

  MEMORY[0x20F2F6A40](v26, -1, -1);

  return v24;
}

uint64_t sub_20BEFB058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BEFB0C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WorkoutPlanPreference();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_20BEFB124()
{
  result = qword_27C770348;
  if (!qword_27C770348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C770348);
  }

  return result;
}

uint64_t sub_20BEFB2E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

char *sub_20BEFB3D4(double a1, double a2, double a3, double a4)
{
  *&v4[OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v9 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_itemInfo;
  v10 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v10 - 8) + 56))(&v4[v9], 1, 1, v10);
  v11 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_iconView;
  v12 = [objc_allocWithZone(type metadata accessor for ActivityTypeIconView()) initWithFrame_];
  [v12 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v13) = 1148846080;
  [v12 setContentCompressionResistancePriority:0 forAxis:v13];
  LODWORD(v14) = 1148846080;
  [v12 setContentCompressionResistancePriority:1 forAxis:v14];
  LODWORD(v15) = 1148846080;
  [v12 setContentHuggingPriority:0 forAxis:v15];
  LODWORD(v16) = 1148846080;
  [v12 setContentHuggingPriority:1 forAxis:v16];
  v17 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.207843137 alpha:1.0];
  [v12 setBackgroundColor_];

  [v12 setContentMode_];
  *&v4[v11] = v12;
  v18 = &v4[OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_layout];
  *v18 = xmmword_20C1832A0;
  *(v18 + 1) = xmmword_20C1832B0;
  *(v18 + 2) = xmmword_20C1832C0;
  v19 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v19 setTranslatesAutoresizingMaskIntoConstraints_];
  [v19 setAdjustsFontForContentSizeCategory_];
  v20 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:0];
  v21 = [v20 fontDescriptorWithSymbolicTraits_];
  if (v21)
  {
    v22 = v21;

    v20 = v22;
  }

  v23 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_titleLabel;
  v24 = [objc_opt_self() fontWithDescriptor:v20 size:0.0];

  [v19 setFont_];
  v25 = [objc_opt_self() whiteColor];
  [v19 setTextColor_];

  LODWORD(v26) = 1148846080;
  [v19 setContentCompressionResistancePriority:0 forAxis:v26];
  LODWORD(v27) = 1148846080;
  [v19 setContentCompressionResistancePriority:1 forAxis:v27];
  LODWORD(v28) = 1148846080;
  [v19 setContentHuggingPriority:0 forAxis:v28];
  LODWORD(v29) = 1148846080;
  [v19 setContentHuggingPriority:1 forAxis:v29];
  v30 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.207843137 alpha:1.0];
  [v19 setBackgroundColor_];

  *&v4[v23] = v19;
  v73.receiver = v4;
  v73.super_class = type metadata accessor for ModalityBrickItemCell();
  v31 = objc_msgSendSuper2(&v73, sel_initWithFrame_, a1, a2, a3, a4);
  [v31 setClipsToBounds_];
  v32 = [v31 layer];
  [v32 setCornerRadius_];

  v33 = [v31 contentView];
  v34 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.207843137 alpha:1.0];
  [v33 setBackgroundColor_];

  v35 = [v31 contentView];
  v36 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_titleLabel;
  [v35 addSubview_];

  v37 = [v31 contentView];
  v38 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_iconView;
  [v37 addSubview_];

  v72 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_20C150060;
  v40 = [*&v31[v38] leadingAnchor];
  v41 = [v31 contentView];
  v42 = [v41 leadingAnchor];

  v43 = [v40 constraintEqualToAnchor:v42 constant:10.0];
  *(v39 + 32) = v43;
  v44 = [*&v31[v38] widthAnchor];
  v45 = [v44 constraintEqualToConstant_];

  *(v39 + 40) = v45;
  v46 = [*&v31[v38] centerYAnchor];
  v47 = [v31 contentView];
  v48 = [v47 &selRef_setNumberOfTapsRequired_];

  v49 = [v46 constraintEqualToAnchor_];
  *(v39 + 48) = v49;
  v50 = [*&v31[v38] heightAnchor];
  v51 = [v50 constraintEqualToConstant_];

  *(v39 + 56) = v51;
  v52 = [*&v31[v36] leadingAnchor];
  v53 = [*&v31[v38] trailingAnchor];
  v54 = [v52 constraintEqualToAnchor:v53 constant:4.0];

  *(v39 + 64) = v54;
  v55 = [*&v31[v36] trailingAnchor];
  v56 = [v31 contentView];
  v57 = [v56 trailingAnchor];

  v58 = [v55 constraintEqualToAnchor:v57 constant:-12.0];
  *(v39 + 72) = v58;
  v59 = [*&v31[v36] topAnchor];
  v60 = [v31 contentView];
  v61 = [v60 topAnchor];

  v62 = [v59 constraintGreaterThanOrEqualToAnchor:v61 constant:14.0];
  *(v39 + 80) = v62;
  v63 = [*&v31[v36] bottomAnchor];
  v64 = [v31 contentView];

  v65 = [v64 bottomAnchor];
  v66 = [v63 constraintLessThanOrEqualToAnchor:v65 constant:-14.0];

  *(v39 + 88) = v66;
  v67 = [*&v31[v36] centerYAnchor];
  v68 = [*&v31[v38] centerYAnchor];
  v69 = [v67 constraintEqualToAnchor_];

  *(v39 + 96) = v69;
  sub_20B5E29D0();
  v70 = sub_20C13CC54();

  [v72 activateConstraints_];

  return v31;
}

id sub_20BEFBEF0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModalityBrickItemCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ModalityBrickItemCell()
{
  result = qword_281102890;
  if (!qword_281102890)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BEFBFF8()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BEFC0BC(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BEFC108@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BEFC160(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

void sub_20BEFC1C4(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_20C134014();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) != 0x20)
  {
    sub_20C13B534();

    v38 = v1;
    v39 = sub_20C13BB74();
    v40 = sub_20C13D1D4();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v67[0] = v66;
      *v41 = 138543874;
      *(v41 + 4) = v38;
      *v42 = v38;
      *(v41 + 12) = 2160;
      *(v41 + 14) = 1752392040;
      *(v41 + 22) = 2080;
      v67[2] = a1;
      v43 = sub_20B5F66D0();
      v44 = v38;
      v45 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v43);
      v47 = sub_20B51E694(v45, v46, v67);

      *(v41 + 24) = v47;
      _os_log_impl(&dword_20B517000, v39, v40, "Attempted to configure %{public}@ with item: %{mask.hash}s", v41, 0x20u);
      sub_20B520158(v42, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v42, -1, -1);
      v48 = v66;
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x20F2F6A40](v48, -1, -1);
      MEMORY[0x20F2F6A40](v41, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C772250);
  v13 = swift_projectBox();
  v14 = v13 + *(v12 + 64);
  v15 = *v14;
  v16 = *(v14 + 8);
  v17 = *(v14 + 16);
  v18 = *(v14 + 24);
  v20 = *(v14 + 32);
  v19 = *(v14 + 40);
  v21 = *(v9 + 16);
  v66 = v8;
  v21(v11, v13, v8);
  v22 = v15;
  v65 = v16;
  v23 = v17;
  v63[3] = v18;
  v64 = v23;

  v63[2] = v20;

  v63[1] = v19;
  v24 = v22;

  v25 = [v22 string];
  v26 = sub_20C13C954();
  v28 = v27;

  v67[0] = v26;
  v67[1] = v28;
  sub_20B5F6EB0();
  v29 = sub_20C13D9E4();
  v31 = v30;

  v32 = *&v2[OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_titleLabel];
  v33 = [v32 text];
  if (!v33)
  {
    goto LABEL_11;
  }

  v34 = v33;
  v35 = sub_20C13C954();
  v37 = v36;

  if (v35 != v29 || v37 != v31)
  {
    v49 = sub_20C13DFF4();

    if (v49)
    {

      goto LABEL_12;
    }

LABEL_11:
    v50 = sub_20C13C914();

    [v32 setText_];

    goto LABEL_12;
  }

LABEL_12:
  v51 = sub_20C133F74();
  v52 = v66;
  if (*(v51 + 16))
  {
    v53 = *(v51 + 32);

    v54 = *&v2[OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_iconView];
    v55 = &v54[OBJC_IVAR____TtC9SeymourUI20ActivityTypeIconView_workoutActivityType];
    if ((v54[OBJC_IVAR____TtC9SeymourUI20ActivityTypeIconView_workoutActivityType + 8] & 1) == 0 && *v55 == v53)
    {
      (*(v9 + 8))(v11, v52);

      return;
    }

    *v55 = v53;
    v55[8] = 0;
    sub_20B9C7E94(v53);
    v56 = sub_20C13C914();

    v57 = [objc_opt_self() smm:v56 systemImageNamed:?];

    v58 = [v57 imageWithRenderingMode_];
    [v54 setImage_];

    v59 = v65;
    v60 = v24;
    v24 = v58;
  }

  else
  {

    v61 = *&v2[OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_iconView];
    v62 = &v61[OBJC_IVAR____TtC9SeymourUI20ActivityTypeIconView_workoutActivityType];
    *v62 = 0;
    v62[8] = 1;
    [v61 setImage_];

    v59 = v64;
    v60 = v65;
  }

  (*(v9 + 8))(v11, v52);
}

void sub_20BEFC80C()
{
  *(v0 + OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  v1 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_itemInfo;
  v2 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_iconView;
  v4 = [objc_allocWithZone(type metadata accessor for ActivityTypeIconView()) initWithFrame_];
  [v4 setTranslatesAutoresizingMaskIntoConstraints_];
  LODWORD(v5) = 1148846080;
  [v4 setContentCompressionResistancePriority:0 forAxis:v5];
  LODWORD(v6) = 1148846080;
  [v4 setContentCompressionResistancePriority:1 forAxis:v6];
  LODWORD(v7) = 1148846080;
  [v4 setContentHuggingPriority:0 forAxis:v7];
  LODWORD(v8) = 1148846080;
  [v4 setContentHuggingPriority:1 forAxis:v8];
  v9 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.207843137 alpha:1.0];
  [v4 setBackgroundColor_];

  [v4 setContentMode_];
  *(v0 + v3) = v4;
  v10 = (v0 + OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_layout);
  *v10 = xmmword_20C1832A0;
  v10[1] = xmmword_20C1832B0;
  v10[2] = xmmword_20C1832C0;
  v11 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v11 setTranslatesAutoresizingMaskIntoConstraints_];
  [v11 setAdjustsFontForContentSizeCategory_];
  v12 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76938] compatibleWithTraitCollection:0];
  v13 = [v12 fontDescriptorWithSymbolicTraits_];
  if (v13)
  {
    v14 = v13;

    v12 = v14;
  }

  v15 = OBJC_IVAR____TtC9SeymourUI21ModalityBrickItemCell_titleLabel;
  v16 = [objc_opt_self() fontWithDescriptor:v12 size:0.0];

  [v11 setFont_];
  v17 = [objc_opt_self() whiteColor];
  [v11 setTextColor_];

  LODWORD(v18) = 1148846080;
  [v11 setContentCompressionResistancePriority:0 forAxis:v18];
  LODWORD(v19) = 1148846080;
  [v11 setContentCompressionResistancePriority:1 forAxis:v19];
  LODWORD(v20) = 1148846080;
  [v11 setContentHuggingPriority:0 forAxis:v20];
  LODWORD(v21) = 1148846080;
  [v11 setContentHuggingPriority:1 forAxis:v21];
  v22 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithWhite:0.207843137 alpha:1.0];
  [v11 setBackgroundColor_];

  *(v0 + v15) = v11;
  sub_20C13DE24();
  __break(1u);
}

uint64_t sub_20BEFCC04()
{
  result = sub_20C134734();
  if (v1 <= 0x3F)
  {
    result = sub_20C137F24();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_20BEFCCC0()
{
  result = type metadata accessor for TVFilterRootPropertyUpdated.PropertyType(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_20BEFCD2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_20C13C554();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = (&v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B454();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  v13 = sub_20C133954();
  if ((*(*(v13 - 8) + 48))(a1, 1, v13) == 1 && !*(a2 + 16))
  {
    sub_20B51C88C(0, &qword_27C7713A0);
    swift_allocObject();
    swift_weakInit();
    v68 = sub_20C13D624();
    v36 = swift_allocObject();
    *(v36 + 16) = 0;
    *(v36 + 24) = 0;
    v37 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_workoutPlanStringBuilder);
    *(v36 + 32) = 1;
    __swift_project_boxed_opaque_existential_1((v37 + 48), *(v37 + 72));
    *(v36 + 40) = sub_20B5E107C();
    *(v36 + 48) = v38;
    __swift_project_boxed_opaque_existential_1((v37 + 48), *(v37 + 72));
    *(v36 + 56) = sub_20B5E107C();
    *(v36 + 64) = v39;
    v40 = sub_20C13C914();
    v41 = [objc_opt_self() systemImageNamed_];

    *(v36 + 72) = v41;
    __swift_project_boxed_opaque_existential_1((v37 + 48), *(v37 + 72));
    *(v36 + 80) = sub_20B5E107C();
    *(v36 + 88) = v42;
    v43 = v68;
    *(v36 + 96) = v68;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_20C14F980;
    *(v44 + 32) = v36 | 0x1000000000000006;
    v71 = 0uLL;
    LOBYTE(v72) = 1;
    *(&v72 + 1) = 0;
    *&v73 = 0;
    WORD4(v73) = 128;
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    LOBYTE(v77) = 0;
    *(&v77 + 1) = v44;
    *&v78[0] = MEMORY[0x277D84F90];
    *(v78 + 8) = 0u;
    *(&v78[1] + 8) = 0u;
    *(&v78[2] + 1) = 0;
    v79 = 2;
    nullsub_1(&v71);
    v45 = v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row;
    v46 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 144);
    v88 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 128);
    v89 = v46;
    v90 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 160);
    v47 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 80);
    v84 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 64);
    v85 = v47;
    v48 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 112);
    v86 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 96);
    v87 = v48;
    v49 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 16);
    v80 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row);
    v81 = v49;
    v50 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 48);
    v82 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 32);
    v83 = v50;
    v51 = v78[2];
    *(v45 + 128) = v78[1];
    *(v45 + 144) = v51;
    *(v45 + 160) = v79;
    v52 = v76;
    *(v45 + 64) = v75;
    *(v45 + 80) = v52;
    v53 = v78[0];
    *(v45 + 96) = v77;
    *(v45 + 112) = v53;
    v54 = v72;
    *v45 = v71;
    *(v45 + 16) = v54;
    v55 = v74;
    *(v45 + 32) = v73;
    *(v45 + 48) = v55;
    v56 = v43;

    sub_20B520158(&v80, &qword_27C762340);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {

      return;
    }

    v58 = Strong;
    if (!*(Strong + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v59 = sub_20B61DC48(v3, Strong);
      if (v60)
      {
        v62 = v60;
        v67 = v59;
        v68 = v61;
        sub_20B51C88C(0, &qword_281100530);
        *v8 = sub_20C13D374();
        v64 = v69;
        v63 = v70;
        (*(v69 + 104))(v8, *MEMORY[0x277D85200], v70);
        v65 = sub_20C13C584();
        (*(v64 + 8))(v8, v63);
        if ((v65 & 1) == 0)
        {
          goto LABEL_21;
        }

        sub_20B6212CC(v67, v62, v68, v3, 1, v58);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    goto LABEL_18;
  }

  v71 = 0uLL;
  LOBYTE(v72) = 1;
  *(&v72 + 1) = 0;
  *&v73 = 0;
  WORD4(v73) = 128;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  LOBYTE(v77) = 0;
  *(&v77 + 1) = MEMORY[0x277D84F90];
  *&v78[0] = MEMORY[0x277D84F90];
  *(v78 + 8) = 0u;
  *(&v78[1] + 8) = 0u;
  *(&v78[2] + 1) = 0;
  v79 = 2;
  nullsub_1(&v71);
  v14 = v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row;
  v15 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 144);
  v88 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 128);
  v89 = v15;
  v90 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 160);
  v16 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 80);
  v84 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 64);
  v85 = v16;
  v17 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 112);
  v86 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 96);
  v87 = v17;
  v18 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 16);
  v80 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row);
  v81 = v18;
  v19 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 48);
  v82 = *(v3 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 32);
  v83 = v19;
  v20 = v78[2];
  *(v14 + 128) = v78[1];
  *(v14 + 144) = v20;
  *(v14 + 160) = v79;
  v21 = v76;
  *(v14 + 64) = v75;
  *(v14 + 80) = v21;
  v22 = v78[0];
  *(v14 + 96) = v77;
  *(v14 + 112) = v22;
  v23 = v72;
  *v14 = v71;
  *(v14 + 16) = v23;
  v24 = v74;
  *(v14 + 32) = v73;
  *(v14 + 48) = v24;
  sub_20B520158(&v80, &qword_27C762340);
  v25 = swift_unknownObjectWeakLoadStrong();
  if (!v25)
  {
    return;
  }

  if (!*(v25 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
  {
    v26 = v25;
    v27 = sub_20B61DC48(v3, v25);
    if (!v28)
    {
      sub_20C0C2D50(0);
      goto LABEL_18;
    }

    v30 = v27;
    v31 = v28;
    v32 = v29;
    sub_20B51C88C(0, &qword_281100530);
    *v8 = sub_20C13D374();
    v34 = v69;
    v33 = v70;
    (*(v69 + 104))(v8, *MEMORY[0x277D85200], v70);
    v35 = sub_20C13C584();
    (*(v34 + 8))(v8, v33);
    if (v35)
    {
      sub_20B6212CC(v30, v31, v32, v3, 1, v26);

      goto LABEL_18;
    }

    __break(1u);
LABEL_21:
    __break(1u);
    return;
  }

LABEL_18:
  swift_unknownObjectRelease();
}

uint64_t sub_20BEFD520()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BEFD578();
  }

  return result;
}

uint64_t sub_20BEFD578()
{
  v1 = type metadata accessor for ShelfMetricAction();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7622D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - v9;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v12 = result;
    (*(v2 + 56))(v10, 1, 1, v1);
    sub_20B52F9E8(v10, v7, &unk_27C7622D0);
    if ((*(v2 + 48))(v7, 1, v1) == 1)
    {
      sub_20B520158(v7, &unk_27C7622D0);
    }

    else
    {
      sub_20BB91728(v7, v4);
      sub_20BF9FE68(v0, v4, v12);
      sub_20B68D110(v4);
    }

    v13 = v12 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v14 = *(v13 + 8);
      ObjectType = swift_getObjectType();
      (*(v14 + 264))(v12, ObjectType, v14);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    return sub_20B520158(v10, &unk_27C7622D0);
  }

  return result;
}

uint64_t sub_20BEFD7C0()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 32);
  v9[3] = v7;
  sub_20B520158(v9, &qword_27C762340);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_storefrontLocalizer);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EmptyWorkoutPlanTemplateGalleryShelf()
{
  result = qword_27C7703A0;
  if (!qword_27C7703A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BEFD928()
{
  result = sub_20C132EE4();
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

uint64_t sub_20BEFD9F0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BEFDA68@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row + 32);
  v17 = v7;
  sub_20B52F9E8(&v14, v13, &qword_27C762340);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BEFDB2C()
{
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_row;
  sub_20B5D8060(v9);
  v2 = v9[9];
  *(v1 + 128) = v9[8];
  *(v1 + 144) = v2;
  *(v1 + 160) = v10;
  v3 = v9[5];
  *(v1 + 64) = v9[4];
  *(v1 + 80) = v3;
  v4 = v9[7];
  *(v1 + 96) = v9[6];
  *(v1 + 112) = v4;
  v5 = v9[1];
  *v1 = v9[0];
  *(v1 + 16) = v5;
  v6 = v9[3];
  *(v1 + 32) = v9[2];
  *(v1 + 48) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B52E424(&v8, v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_storefrontLocalizer);
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_platform) = v8;
  type metadata accessor for WorkoutPlanStringBuilder();
  sub_20C133AA4();
  *(v0 + OBJC_IVAR____TtC9SeymourUI36EmptyWorkoutPlanTemplateGalleryShelf_workoutPlanStringBuilder) = v8;
  return v0;
}

uint64_t sub_20BEFDC70(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  sub_20C13CA64();
  sub_20C13E184();
  if (a4)
  {
    v5 = a4;
    sub_20C13D604();
  }

  sub_20C13CA64();
}

uint64_t sub_20BEFDD68()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_20C13E164();
  sub_20BEFDC70(v5, v1, v2, v3);
  return sub_20C13E1B4();
}

uint64_t sub_20BEFDDDC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_20C13E164();
  sub_20BEFDC70(v5, v1, v2, v3);
  return sub_20C13E1B4();
}

unint64_t sub_20BEFDE64()
{
  result = qword_27C7703B0;
  if (!qword_27C7703B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7703B0);
  }

  return result;
}

uint64_t sub_20BEFDEB8(uint64_t a1, uint64_t a2, void *a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, void *a7, unsigned __int8 a8)
{
  if ((a1 != a5 || a2 != a6) && (sub_20C13DFF4() & 1) == 0)
  {
    return 0;
  }

  if (!a3)
  {
    if (!a7)
    {
      goto LABEL_7;
    }

    return 0;
  }

  if (!a7)
  {
    return 0;
  }

  sub_20B71D438();
  v12 = a7;
  v13 = a3;
  v14 = sub_20C13D5F4();

  if ((v14 & 1) == 0)
  {
    return 0;
  }

LABEL_7:

  return sub_20B968D04(a4, a8);
}

uint64_t sub_20BEFDF9C()
{
  v1 = sub_20C13C554();
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  v51 = (&v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_kind);
  v55 = v0;
  v4 = (v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_storefrontLocalizer);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_storefrontLocalizer), *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_storefrontLocalizer + 24));
  v54 = sub_20C138CC4();
  v6 = v5;

  v7 = 0;
  v8 = 0;
  if ((v3 & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v7 = sub_20C138CC4();
    v8 = v9;
  }

  v10 = v55;
  if (*(v55 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_platform) == 3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_20C14F980;
    v12 = swift_allocObject();
    *(v12 + 16) = v54;
    *(v12 + 24) = v6;
    *(v12 + 32) = v7;
    *(v12 + 40) = v8;
    *(v11 + 32) = v12 | 0x3000000000000000;
    v56 = 0uLL;
    LOBYTE(v57) = 1;
    *(&v57 + 1) = 0;
    *&v58 = 0;
    WORD4(v58) = 128;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    LOBYTE(v62) = 0;
    *(&v62 + 1) = v11;
    *&v63[0] = MEMORY[0x277D84F90];
    *(v63 + 8) = 0u;
    *(&v63[1] + 8) = 0u;
    *(&v63[2] + 1) = 0;
    v64 = 2;
    nullsub_1(&v56);
    v13 = OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row;
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v50 = sub_20C138D34();
    v14 = v6;
    v16 = v15;
    v17 = sub_20C13C914();

    v18 = [objc_opt_self() systemImageNamed_];

    v19 = swift_allocObject();
    *(v19 + 16) = 1;
    *(v19 + 40) = v54;
    *(v19 + 48) = v14;
    *(v19 + 56) = v7;
    *(v19 + 64) = v8;
    *(v19 + 72) = v18;
    v20 = *(v10 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_retryAction);
    v21 = v18;
    if (v20)
    {
      v22 = v50;
    }

    else
    {

      v22 = 0;
      v16 = 0;
    }

    *(v19 + 80) = v22;
    *(v19 + 88) = v16;
    *(v19 + 96) = v20;
    *(v19 + 24) = 0;
    *(v19 + 32) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765D90);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_20C14F980;
    *(v23 + 32) = v19 | 0x1000000000000006;
    v24 = v20;

    v56 = 0uLL;
    LOBYTE(v57) = 1;
    *(&v57 + 1) = 0;
    *&v58 = 0;
    WORD4(v58) = 128;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    LOBYTE(v62) = 0;
    *(&v62 + 1) = v23;
    *&v63[0] = MEMORY[0x277D84F90];
    *(v63 + 8) = 0u;
    *(&v63[1] + 8) = 0u;
    *(&v63[2] + 1) = 0;
    v64 = 2;
    nullsub_1(&v56);
    v13 = OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row;
    v10 = v55;
  }

  v25 = v10 + v13;
  v26 = *(v25 + 144);
  v65[8] = *(v25 + 128);
  v65[9] = v26;
  v66 = *(v25 + 160);
  v27 = *(v25 + 80);
  v65[4] = *(v25 + 64);
  v65[5] = v27;
  v28 = *(v25 + 112);
  v65[6] = *(v25 + 96);
  v65[7] = v28;
  v29 = *(v25 + 16);
  v65[0] = *v25;
  v65[1] = v29;
  v30 = *(v25 + 48);
  v65[2] = *(v25 + 32);
  v65[3] = v30;
  v31 = v63[2];
  *(v25 + 128) = v63[1];
  *(v25 + 144) = v31;
  *(v25 + 160) = v64;
  v32 = v61;
  *(v25 + 64) = v60;
  *(v25 + 80) = v32;
  v33 = v63[0];
  *(v25 + 96) = v62;
  *(v25 + 112) = v33;
  v34 = v57;
  *v25 = v56;
  *(v25 + 16) = v34;
  v35 = v59;
  *(v25 + 32) = v58;
  *(v25 + 48) = v35;
  sub_20B634408(v65);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v37 = result;
    if (!*(result + OBJC_IVAR____TtC9SeymourUI11CatalogPage_pendingUpdatesCount))
    {
      v38 = sub_20B61CE20(v10, result);
      if (v39)
      {
        v41 = v38;
        v42 = v39;
        v43 = v40;
        sub_20B5E2E18();
        v44 = sub_20C13D374();
        v46 = v51;
        v45 = v52;
        *v51 = v44;
        v47 = v53;
        (*(v45 + 104))(v46, *MEMORY[0x277D85200], v53);
        v48 = sub_20C13C584();
        result = (*(v45 + 8))(v46, v47);
        if ((v48 & 1) == 0)
        {
          __break(1u);
          return result;
        }

        sub_20B620320(v41, v42, v43, v10, 0, v37);
      }

      else
      {
        sub_20C0C2D50(0);
      }
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_20BEFE5A8()
{
  sub_20B583E6C(v0 + 16);
  v1 = OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_identifier;
  v2 = sub_20C132EE4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 144);
  v9[8] = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 128);
  v9[9] = v3;
  v10 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 160);
  v4 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 80);
  v9[4] = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 64);
  v9[5] = v4;
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 112);
  v9[6] = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 96);
  v9[7] = v5;
  v6 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 16);
  v9[0] = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row);
  v9[1] = v6;
  v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 48);
  v9[2] = *(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 32);
  v9[3] = v7;
  sub_20B634408(v9);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_storefrontLocalizer);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LoadingErrorShelf()
{
  result = qword_27C7703D8;
  if (!qword_27C7703D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_20BEFE700()
{
  result = sub_20C132EE4();
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

uint64_t sub_20BEFE7CC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_identifier;
  v4 = sub_20C132EE4();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 sub_20BEFE844@<Q0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 144);
  v22 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 128);
  v23 = v3;
  v24 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 160);
  v4 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 80);
  v18 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 64);
  v19 = v4;
  v5 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 112);
  v20 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 96);
  v21 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 16);
  v14 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row);
  v15 = v6;
  v7 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 48);
  v16 = *(v1 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row + 32);
  v17 = v7;
  sub_20B5EAED4(&v14, v13);
  v8 = v23;
  *(a1 + 128) = v22;
  *(a1 + 144) = v8;
  *(a1 + 160) = v24;
  v9 = v19;
  *(a1 + 64) = v18;
  *(a1 + 80) = v9;
  v10 = v21;
  *(a1 + 96) = v20;
  *(a1 + 112) = v10;
  v11 = v15;
  *a1 = v14;
  *(a1 + 16) = v11;
  result = v17;
  *(a1 + 32) = v16;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_20BEFE8F4(uint64_t a1, char a2, void *a3)
{
  *(v3 + 24) = 0;
  swift_unknownObjectWeakInit();
  sub_20C132ED4();
  v6 = v3 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_row;
  sub_20B5D8060(v15);
  v7 = v15[9];
  *(v6 + 128) = v15[8];
  *(v6 + 144) = v7;
  *(v6 + 160) = v16;
  v8 = v15[5];
  *(v6 + 64) = v15[4];
  *(v6 + 80) = v8;
  v9 = v15[7];
  *(v6 + 96) = v15[6];
  *(v6 + 112) = v9;
  v10 = v15[1];
  *v6 = v15[0];
  *(v6 + 16) = v10;
  v11 = v15[3];
  *(v6 + 32) = v15[2];
  *(v6 + 48) = v11;
  *(v3 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_kind) = a2 & 1;
  *(v3 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_retryAction) = a3;
  v12 = a3;
  sub_20C133AA4();
  *(v3 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_platform) = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B52E424(&v14, v3 + OBJC_IVAR____TtC9SeymourUI17LoadingErrorShelf_storefrontLocalizer);
  return v3;
}

unint64_t sub_20BEFEA50()
{
  result = qword_27C7703E8;
  if (!qword_27C7703E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27C7703E8);
  }

  return result;
}

void sub_20BEFEAA4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *MEMORY[0x277CE5DE0];
  v10 = swift_allocObject();
  v10[2] = a4;
  v10[3] = sub_20B7E9034;
  v10[4] = v8;
  v13[4] = sub_20BEFF55C;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_20B98FE2C;
  v13[3] = &block_descriptor_149;
  v11 = _Block_copy(v13);

  v12 = a4;

  [a3 loadMediaSelectionGroupForMediaCharacteristic:v9 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_20BEFEBD8(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v69 = a3;
  v73 = sub_20C13C4B4();
  v9 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v71 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20C13C4F4();
  v72 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v70 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_20C13BB84();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v62 - v18;
  sub_20C13B574();
  sub_20C13BB64();
  v68 = *(v14 + 8);
  v68(v19, v13);
  if (a2)
  {
    v67 = v9;
    v20 = a2;
    sub_20C13B574();
    v21 = a2;
    v22 = sub_20C13BB74();
    v23 = sub_20C13D1D4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v65 = v24;
      v66 = swift_slowAlloc();
      aBlock = v66;
      *v24 = 136315138;
      swift_getErrorValue();
      v64 = v23;
      v25 = MEMORY[0x20F2F5850](v74, v75);
      v27 = a2;
      v28 = a4;
      v29 = a5;
      v30 = v11;
      v31 = sub_20B51E694(v25, v26, &aBlock);

      v32 = v65;
      *(v65 + 1) = v31;
      v11 = v30;
      a5 = v29;
      a4 = v28;
      a2 = v27;
      _os_log_impl(&dword_20B517000, v22, v64, "Error loading media selection group: %s", v32, 0xCu);
      v33 = v66;
      __swift_destroy_boxed_opaque_existential_1(v66);
      MEMORY[0x20F2F6A40](v33, -1, -1);
      MEMORY[0x20F2F6A40](v32, -1, -1);
    }

    v68(v16, v13);
    v34 = swift_allocObject();
    *(v34 + 16) = a4;
    *(v34 + 24) = a5;
    v81 = sub_20BEFF6BC;
    v82 = v34;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_20B7B548C;
    v80 = &block_descriptor_21_2;
    v35 = _Block_copy(&aBlock);

    v36 = v70;
    sub_20C13C4D4();
    v76 = MEMORY[0x277D84F90];
    sub_20BEFF668(&qword_281103AB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B682EA8();
    v37 = v71;
    v38 = v73;
    sub_20C13DA94();
    MEMORY[0x20F2F4AF0](0, v36, v37, v35);
    _Block_release(v35);

    (*(v67 + 8))(v37, v38);
    goto LABEL_16;
  }

  v39 = v9;
  if (!a1)
  {
LABEL_15:
    v57 = swift_allocObject();
    *(v57 + 16) = a4;
    *(v57 + 24) = a5;
    v81 = sub_20BEFF64C;
    v82 = v57;
    aBlock = MEMORY[0x277D85DD0];
    v78 = 1107296256;
    v79 = sub_20B7B548C;
    v80 = &block_descriptor_9;
    v58 = _Block_copy(&aBlock);

    v36 = v70;
    sub_20C13C4D4();
    v76 = MEMORY[0x277D84F90];
    sub_20BEFF668(&qword_281103AB0, MEMORY[0x277D85198]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
    sub_20B682EA8();
    v59 = v71;
    v60 = v73;
    sub_20C13DA94();
    MEMORY[0x20F2F4AF0](0, v36, v59, v58);
    _Block_release(v58);
    (*(v39 + 8))(v59, v60);
LABEL_16:
    (*(v72 + 8))(v36, v11);
  }

  v40 = a5;
  v41 = a1;
  v42 = [v41 options];
  if (!v42)
  {
    sub_20B9D0970();
    sub_20C13CC74();
    v42 = sub_20C13CC54();
  }

  v63 = v11;
  v43 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768B60);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_20C14F980;
  if (qword_27C7607D0 != -1)
  {
    swift_once();
  }

  v45 = qword_27C79AB00;
  *(v44 + 32) = qword_27C79AB00;
  type metadata accessor for AVMediaCharacteristic(0);
  v46 = v45;
  v47 = sub_20C13CC54();

  v48 = [v43 mediaSelectionOptionsFromArray:v42 withMediaCharacteristics:v47];

  sub_20B9D0970();
  v49 = sub_20C13CC74();

  if (v49 >> 62)
  {
    v50 = sub_20C13DB34();
  }

  else
  {
    v50 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v50)
  {

    v11 = v63;
    a5 = v40;
    goto LABEL_15;
  }

  v51 = swift_allocObject();
  v51[2] = a4;
  v51[3] = v40;
  v51[4] = v41;
  v81 = sub_20B6A4BF4;
  v82 = v51;
  aBlock = MEMORY[0x277D85DD0];
  v78 = 1107296256;
  v79 = sub_20B7B548C;
  v80 = &block_descriptor_15_1;
  v52 = _Block_copy(&aBlock);

  v53 = v41;
  v54 = v70;
  sub_20C13C4D4();
  v76 = MEMORY[0x277D84F90];
  sub_20BEFF668(&qword_281103AB0, MEMORY[0x277D85198]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C766280);
  sub_20B682EA8();
  v55 = v71;
  v56 = v73;
  sub_20C13DA94();
  MEMORY[0x20F2F4AF0](0, v54, v55, v52);
  _Block_release(v52);

  (*(v39 + 8))(v55, v56);
  (*(v72 + 8))(v54, v63);
}

void sub_20BEFF568(void (*a1)(void *, uint64_t))
{
  v2 = sub_20C1346A4();
  sub_20BEFF668(&unk_27C7703F0, MEMORY[0x277D509E8]);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D509E0], v2);
  a1(v3, 1);
}

uint64_t sub_20BEFF668(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_20BEFF6CC()
{
  v1 = *(*(*(v0 + OBJC_IVAR____TtC9SeymourUI18RootViewController_dataProvider) + 48) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v32 = *(v1 + 16);
  if (v32)
  {

    v2 = 0;
    v3 = 0;
    v4 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_32;
      }

      v33 = *(v1 + 16 * v3 + 32);
      ObjectType = swift_getObjectType();
      v6 = *(*(&v33 + 1) + 48);
      swift_unknownObjectRetain();
      v6(ObjectType, *(&v33 + 1));
      v36 = v33;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7704F8);
      if (swift_dynamicCast())
      {
        break;
      }

      swift_unknownObjectRelease();
      v35 = 0;
      memset(v34, 0, sizeof(v34));
      sub_20B520158(v34, &unk_27C770500);
LABEL_4:
      if (v32 == ++v3)
      {

        goto LABEL_20;
      }
    }

    sub_20B51C710(v34, v37);
    v7 = v38;
    v8 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v9 = (*(v8 + 16))(v7, v8);
    v10 = v38;
    v11 = v39;
    __swift_project_boxed_opaque_existential_1(v37, v38);
    v12 = (*(v11 + 8))(v10, v11);
    sub_20B583ECC(v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v34[0] = v4;
    v15 = sub_20B65B430(v9 & 1);
    v16 = *(v4 + 16);
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_33;
    }

    v19 = v14;
    if (*(v4 + 24) >= v18)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v4 = *&v34[0];
        if (v14)
        {
LABEL_15:
          sub_20BE15E50(v12);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v37);
          v2 = sub_20BEFFEB4;
          goto LABEL_4;
        }
      }

      else
      {
        sub_20BA0FEE8();
        v4 = *&v34[0];
        if (v19)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_20BA098F0(v18, isUniquelyReferenced_nonNull_native);
      v20 = sub_20B65B430(v9 & 1);
      if ((v19 & 1) != (v21 & 1))
      {
        goto LABEL_34;
      }

      v15 = v20;
      v4 = *&v34[0];
      if (v19)
      {
        goto LABEL_15;
      }
    }

    sub_20BE3A4CC(v15, v9 & 1, MEMORY[0x277D84FA0], v4);
    goto LABEL_15;
  }

  v2 = 0;
  v4 = MEMORY[0x277D84F98];
LABEL_20:
  v22 = 0;
  v23 = 1 << *(v4 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(v4 + 64);
  v26 = (v23 + 63) >> 6;
  while (v25)
  {
    v27 = v22;
LABEL_28:
    v28 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v29 = *(*(v4 + 48) + (v28 | (v27 << 6)));

    sub_20B90C118(v30, v29);
  }

  while (1)
  {
    v27 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v27 >= v26)
    {

      return sub_20B583ECC(v2);
    }

    v25 = *(v4 + 64 + 8 * v27);
    ++v22;
    if (v25)
    {
      v22 = v27;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

uint64_t sub_20BEFFAD0(void *a1, void *a2)
{
  v3 = *(*(*(v2 + *a1) + *a2) + OBJC_IVAR____TtC9SeymourUI11CatalogPage_shelves);
  v34 = *(v3 + 16);
  if (v34)
  {

    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x277D84F98];
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_32;
      }

      v35 = *(v3 + 16 * v5 + 32);
      ObjectType = swift_getObjectType();
      v8 = *(*(&v35 + 1) + 48);
      swift_unknownObjectRetain();
      v8(ObjectType, *(&v35 + 1));
      v38 = v35;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7675B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7704F8);
      if (swift_dynamicCast())
      {
        break;
      }

      swift_unknownObjectRelease();
      v37 = 0;
      memset(v36, 0, sizeof(v36));
      sub_20B520158(v36, &unk_27C770500);
LABEL_4:
      if (v34 == ++v5)
      {

        goto LABEL_20;
      }
    }

    sub_20B51C710(v36, v39);
    v9 = v40;
    v10 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v11 = (*(v10 + 16))(v9, v10);
    v12 = v40;
    v13 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    v14 = (*(v13 + 8))(v12, v13);
    sub_20B583ECC(v4);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v36[0] = v6;
    v17 = sub_20B65B430(v11 & 1);
    v18 = *(v6 + 16);
    v19 = (v16 & 1) == 0;
    v20 = v18 + v19;
    if (__OFADD__(v18, v19))
    {
      goto LABEL_33;
    }

    v21 = v16;
    if (*(v6 + 24) >= v20)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v6 = *&v36[0];
        if (v16)
        {
LABEL_15:
          sub_20BE15E50(v14);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v39);
          v4 = sub_20BEFFEB4;
          goto LABEL_4;
        }
      }

      else
      {
        sub_20BA0FEE8();
        v6 = *&v36[0];
        if (v21)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
      sub_20BA098F0(v20, isUniquelyReferenced_nonNull_native);
      v22 = sub_20B65B430(v11 & 1);
      if ((v21 & 1) != (v23 & 1))
      {
        goto LABEL_34;
      }

      v17 = v22;
      v6 = *&v36[0];
      if (v21)
      {
        goto LABEL_15;
      }
    }

    sub_20BE3A4CC(v17, v11 & 1, MEMORY[0x277D84FA0], v6);
    goto LABEL_15;
  }

  v4 = 0;
  v6 = MEMORY[0x277D84F98];
LABEL_20:
  v24 = 0;
  v25 = 1 << *(v6 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v6 + 64);
  v28 = (v25 + 63) >> 6;
  while (v27)
  {
    v29 = v24;
LABEL_28:
    v30 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v31 = *(*(v6 + 48) + (v30 | (v29 << 6)));

    sub_20B90C118(v32, v31);
  }

  while (1)
  {
    v29 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v29 >= v28)
    {

      return sub_20B583ECC(v4);
    }

    v27 = *(v6 + 64 + 8 * v29);
    ++v24;
    if (v27)
    {
      v24 = v29;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_20C13E054();
  __break(1u);
  return result;
}

void sub_20BEFFEC4(void *a1, uint64_t a2, int a3, void *a4, uint64_t a5, void *a6, uint64_t a7)
{
  v45 = a2;
  v46 = a6;
  v43 = a5;
  LODWORD(v9) = a3;
  v11 = sub_20C1333A4();
  v44 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13B884();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (a4)
    {
      if (v9)
      {
        v20 = v46;
        if (!v46)
        {
          v21 = a4;
          sub_20BF9A51C(v21, a1, v45);
          v22 = v19;
          v19 = v21;
LABEL_12:

          goto LABEL_13;
        }

LABEL_8:
        v30 = v9;
        v31 = a7;
        v22 = v20;
        v32 = [v19 viewIfLoaded];
        v33 = [v32 window];

        if (v33)
        {

          if (v30)
          {
            ObjectType = swift_getObjectType();
            v35 = *&v19[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingMessageViewControllerHandler];
            v36 = *(v31 + 16);
            v37 = v35;
            v36(v35, ObjectType, v31);
            v22 = v22;
            sub_20BF9A774(v22, a1, v45);
          }

          else
          {
            v38 = *(*&v19[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider] + OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_page);
            v39 = v45;
            sub_20C0C1FA8(a1, v45);

            sub_20BF9AD80(v22, v31, a1, v39);
          }
        }

        goto LABEL_12;
      }

      v23 = a4;
      v41 = v15;
      v24 = v23;
      v25 = a1;
      v42 = v9;
      v9 = a7;
      v26 = a1;
      v27 = v45;
      sub_20BF99674(v25, v45, 0, 0);
      v28 = v26;
      v29 = v27;
      a1 = v26;
      a7 = v9;
      sub_20BF9B198(v24, v43, v28, v29);
      sub_20C13B874();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767750);
      sub_20C13B834();
      *(swift_allocObject() + 16) = xmmword_20C14F980;
      sub_20C13B824();
      sub_20C13B854();

      (*(v41 + 8))(v17, v14);
      sub_20C10FB64(v13);
      LOBYTE(v9) = v42;
      sub_20B90D720(v13);

      (*(v44 + 8))(v13, v11);
    }

    v20 = v46;
    if (!v46)
    {
LABEL_13:

      return;
    }

    goto LABEL_8;
  }
}

void sub_20BF00338(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a3();
  }
}

uint64_t sub_20BF003BC()
{
  sub_20BEFFAD0(&OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider, &OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_page);
  sub_20BF01674();
  swift_getObjectType();
  sub_20C13AF74();
  swift_allocObject();
  swift_unknownObjectWeakInit();

  sub_20C13A7A4();

  __swift_destroy_boxed_opaque_existential_1(v1);
}

void sub_20BF00540(char a1)
{
  v10.receiver = v1;
  v10.super_class = type metadata accessor for CatalogWorkoutDetailViewController();
  objc_msgSendSuper2(&v10, sel_viewWillAppear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentNavigationBarTintColor];
  if (v3)
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentNavigationBarTintColor];
  }

  else
  {
    v4 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_standardNavigationBarTintColor];
    v3 = 0;
  }

  v5 = v3;
  v6 = [v1 navigationController];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 navigationBar];

    [v8 setTintColor_];
  }

  v9 = v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior + 16];
  if (v9 <= 0xFB)
  {
    if (v9 >> 6)
    {
      if (v9 >> 6 != 1)
      {
        sub_20C13DC94();
        MEMORY[0x20F2F4230](0xD000000000000023, 0x800000020C199DA0);
        sub_20C13DDF4();
        sub_20C1380E4();

        goto LABEL_12;
      }

      v9 = 0;
    }

    sub_20BE8F76C(v9);
  }

LABEL_12:
}

uint64_t sub_20BF007D0(char a1)
{
  v2 = v1;
  v19 = sub_20C1333A4();
  v4 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7620C8);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for CatalogWorkoutDetailViewController();
  v21.receiver = v2;
  v21.super_class = v10;
  objc_msgSendSuper2(&v21, sel_viewDidAppear_, a1 & 1);
  v11 = *&v2[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider];
  sub_20C1101DC();
  v12 = OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_workoutDetail;
  swift_beginAccess();
  sub_20B52F9E8(v11 + v12, v9, &qword_27C7620C8);
  v13 = sub_20C135AE4();
  v14 = (*(*(v13 - 8) + 48))(v9, 1, v13);
  sub_20B520158(v9, &qword_27C7620C8);
  if (v14 == 1)
  {
    *(v11 + OBJC_IVAR____TtC9SeymourUI30CatalogWorkoutPageDataProvider_shouldPublishPageEventWhenAvailable) = 1;
  }

  else
  {
    v20 = v11;
    sub_20C10FB64(v6);
    type metadata accessor for CatalogWorkoutPageDataProvider();
    sub_20BF02C58(&qword_27C770540, 255, type metadata accessor for CatalogWorkoutPageDataProvider);
    sub_20C138C54();
    (*(v4 + 8))(v6, v19);
  }

  sub_20BF02C58(&unk_27C770518, v15, type metadata accessor for CatalogWorkoutDetailViewController);
  sub_20BF02C58(&unk_27C770530, v16, type metadata accessor for CatalogWorkoutDetailViewController);
  return sub_20C139364();
}

void sub_20BF00C94(char a1)
{
  v2 = v1;
  v4 = sub_20C132E94();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CatalogWorkoutDetailViewController();
  v18.receiver = v2;
  v18.super_class = v8;
  objc_msgSendSuper2(&v18, sel_viewWillDisappear_, a1 & 1);
  v17 = v2;
  sub_20C132E84();
  sub_20BF02C58(&unk_27C770518, v9, type metadata accessor for CatalogWorkoutDetailViewController);
  sub_20C139274();
  (*(v5 + 8))(v7, v4);
  sub_20BF99F98(0, 0);
  v10 = [v2 navigationController];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 viewControllers];
    sub_20B51C88C(0, &qword_281100550);
    v13 = sub_20C13CC74();

    v17 = v2;
    MEMORY[0x28223BE20](v14);
    *(&v16 - 2) = &v17;
    LOBYTE(v12) = sub_20B79AEEC(sub_20B5978BC, (&v16 - 4), v13);

    if ((v12 & 1) == 0)
    {
      v17 = v2;
      sub_20BF02C58(&qword_27C770528, v15, type metadata accessor for CatalogWorkoutDetailViewController);
      sub_20C138C64();
    }
  }
}

void sub_20BF00F54()
{
  v36[3] = type metadata accessor for CatalogWorkoutDetailViewController();
  v36[0] = v0;
  type metadata accessor for MoreOptionsButton();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = v0;
  v3 = [ObjCClassFromMetadata buttonWithType_];
  [v3 setTranslatesAutoresizingMaskIntoConstraints_];
  v4 = &v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_appearance];
  [v3 setTintColor_];
  v5 = *(v4 + 10);
  v6 = *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor];
  *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_scrollEdgeTintColor] = v5;
  v7 = v5;

  *&v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_behaviors] = MEMORY[0x277D84FA0];

  sub_20BCC01CC(v3[OBJC_IVAR____TtC9SeymourUI17MoreOptionsButton_isBeyondScrollBoundary], 0);
  sub_20B52F9E8(v36, v34, &unk_27C768A00);
  v8 = v35;
  if (v35)
  {
    v9 = __swift_project_boxed_opaque_existential_1(v34, v35);
    v10 = *(v8 - 8);
    v11 = MEMORY[0x28223BE20](v9);
    v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v10 + 16))(v13, v11);
    v14 = sub_20C13DFD4();
    (*(v10 + 8))(v13, v8);
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    v14 = 0;
  }

  [v3 addTarget:v14 action:sel_moreOptionsButtonTapped_ forControlEvents:0x2000];
  swift_unknownObjectRelease();
  sub_20B520158(v36, &unk_27C768A00);
  v15 = type metadata accessor for DynamicScrollObservingBarButtonItem();
  v16 = objc_allocWithZone(v15);
  v17 = &v16[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v17 = v3;
  *(v17 + 1) = &off_2822DD228;
  v33.receiver = v16;
  v33.super_class = v15;
  v18 = v3;
  v19 = objc_msgSendSuper2(&v33, sel_init);
  [v19 setCustomView_];

  v20 = *&v2[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_upNextQueueButton];
  v21 = objc_allocWithZone(v15);
  v22 = &v21[OBJC_IVAR____TtC9SeymourUI35DynamicScrollObservingBarButtonItem_observerView];
  *v22 = v20;
  *(v22 + 1) = &off_2822C8C68;
  v32.receiver = v21;
  v32.super_class = v15;
  v23 = v20;
  v24 = objc_msgSendSuper2(&v32, sel_init);
  [v24 setCustomView_];

  if (v2[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_platform] == 1)
  {
    v25 = [v2 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_20C150040;
    *(v28 + 32) = [objc_opt_self() fixedSpaceItemOfWidth_];
    *(v28 + 40) = v19;
    v27 = (v28 + 48);
    goto LABEL_8;
  }

  if (!v2[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_platform])
  {
    v25 = [v2 navigationItem];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_20C151490;
    *(v26 + 32) = v19;
    v27 = (v26 + 40);
LABEL_8:
    *v27 = v24;
    sub_20B51C88C(0, &qword_27C770510);
    v29 = v19;
    v30 = v24;
    v31 = sub_20C13CC54();

    [v25 setRightBarButtonItems_];
  }
}

void sub_20BF013B4()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [Strong navigationItem];

    v3 = [v2 rightBarButtonItems];
    if (v3)
    {
      sub_20B51C88C(0, &qword_27C770510);
      v4 = sub_20C13CC74();

      if (v4 >> 62)
      {
LABEL_21:
        v5 = sub_20C13DB34();
        if (v5)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v5)
        {
LABEL_5:
          v6 = 0;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v8 = MEMORY[0x20F2F5430](v6, v4);
            }

            else
            {
              if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_20;
              }

              v8 = *(v4 + 8 * v6 + 32);
            }

            v9 = v8;
            v10 = v6 + 1;
            if (__OFADD__(v6, 1))
            {
              __break(1u);
LABEL_20:
              __break(1u);
              goto LABEL_21;
            }

            v11 = [v8 customView];
            if (v11)
            {
              v7 = v11;
              type metadata accessor for MoreOptionsButton();
              if (swift_dynamicCastClass())
              {

                swift_beginAccess();
                v12 = swift_unknownObjectWeakLoadStrong();
                if (v12)
                {
                  v13 = v12;
                  v14 = v9;
                  sub_20C03AE14(v9, 0);
                }

                else
                {
                }

                return;
              }
            }

            else
            {
              v7 = v9;
            }

            ++v6;
          }

          while (v10 != v5);
        }
      }
    }
  }
}

id sub_20BF01674()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762220);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_networkEvaluator), *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_networkEvaluator + 24));
  v4 = sub_20C13A884();
  v5 = *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_upNextQueueButton);
  if (v4)
  {
    v5[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] = 0;

    return [v5 setHidden_];
  }

  else
  {
    v5[OBJC_IVAR____TtC9SeymourUI17UpNextQueueButton_prefersVisible] = 1;
    [v5 setHidden_];
    v7 = *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_upNextQueueButtonPresenter);
    v8 = sub_20C13CDF4();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;

    sub_20B6383D0(0, 0, v3, &unk_20C181438, v9);
  }
}

id sub_20BF01860()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CatalogWorkoutDetailViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_20BF01A64()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_20BF01674();
  }
}

void sub_20BF01ADC(char a1)
{
  if (v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isBeyondScrollBoundary] != (a1 & 1))
  {
    v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isBeyondScrollBoundary] = a1 & 1;
    if (a1)
    {
      v2 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    }

    else
    {
      v2 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_standardNavigationBarTintColor];
    }

    v3 = *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentNavigationBarTintColor];
    *&v1[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentNavigationBarTintColor] = v2;
    v4 = v2;

    v5 = objc_opt_self();
    v6 = swift_allocObject();
    *(v6 + 16) = v1;
    *(v6 + 24) = v4;
    v10[4] = sub_20B7C9A90;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_20B7B548C;
    v10[3] = &block_descriptor_150;
    v7 = _Block_copy(v10);
    v8 = v4;
    v9 = v1;

    [v5 animateWithDuration:v7 animations:0.2];
    _Block_release(v7);
  }
}

uint64_t sub_20BF01C8C(uint64_t result, uint64_t a2, char a3)
{
  v4 = v3 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior;
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  return result;
}

uint64_t sub_20BF01E8C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_resignActiveObserver;
  swift_beginAccess();
  *(v1 + v3) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_20BF01F44()
{
  swift_getWitnessTable();

  return sub_20C139364();
}

uint64_t sub_20BF01FA8()
{
  swift_getWitnessTable();

  return sub_20C139374();
}

char *sub_20BF02044(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_20C1333A4();
  MEMORY[0x28223BE20](v12 - 8);
  v65 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13C654();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70[3] = a5;
  v70[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v70);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a3, a5);
  v19 = &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior];
  *v19 = 0;
  *(v19 + 1) = 0;
  v19[16] = -4;
  a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isTransitioningContentInset] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_visibility] = 1;
  v20 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_controllerDisplayCoordinator;
  type metadata accessor for MarketingControllerDisplayCoordinator();
  v21 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710C0);
  v22 = swift_allocObject();
  *(v22 + 24) = 0;
  *(v22 + 16) = MEMORY[0x277D84F98];
  *(v21 + 16) = v22;
  *&a4[v20] = v21;
  v23 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dynamicOfferCoordinator;
  *&a4[v23] = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v24 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseCoordinator;
  *&a4[v24] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v25 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseHandler;
  *&a4[v25] = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_resignActiveObserver] = 0;
  v26 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_webUserInterfaceCoordinator;
  *&a4[v26] = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  v27 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_standardNavigationBarTintColor;
  *&a4[v27] = [objc_opt_self() whiteColor];
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentNavigationBarTintColor] = 0;
  a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isBeyondScrollBoundary] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763B00);
  sub_20C133AA4();
  sub_20B51C710(&v67, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_accountProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762080);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_bag] = v67;
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dependencies] = a1;
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dataProvider] = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A00);
  sub_20C133AA4();
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_eventHub] = v67;
  sub_20C13C734();

  v28 = sub_20C13C724();
  sub_20C13C644();
  v29 = type metadata accessor for MarketingOverlayImpressionsTracker();
  v30 = swift_allocObject();
  v31 = MEMORY[0x277D221C0];
  *(v30 + 16) = v28;
  *(v30 + 24) = v31;
  (*(v15 + 32))(v30 + OBJC_IVAR____TtC9SeymourUI34MarketingOverlayImpressionsTracker_context, v17, v14);
  v68 = v29;
  v69 = sub_20BF02C58(&qword_27C76FC30, 255, type metadata accessor for MarketingOverlayImpressionsTracker);
  *&v67 = v30;
  type metadata accessor for MarketingHostedControllerCoordinator();
  v32 = swift_allocObject();
  v33 = __swift_mutable_project_boxed_opaque_existential_1(&v67, v29);
  v34 = MEMORY[0x28223BE20](v33);
  v36 = (&v64 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v37 + 16))(v36, v34);
  v38 = sub_20BE8C464(a1, *v36, v32);

  __swift_destroy_boxed_opaque_existential_1(&v67);
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingHostedContentCoordinator] = v38;
  sub_20B51CC64(v38 + 40, &v67);
  v39 = v68;
  v40 = __swift_project_boxed_opaque_existential_1(&v67, v68);

  v41 = v65;
  v42 = sub_20C10FB64(v65);
  v43 = MEMORY[0x28223BE20](v42);
  v45 = (&v64 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v46 + 16))(v45, v40, v39, v43);
  v47 = sub_20BE8C638(a1, v38, *v45, v41);

  __swift_destroy_boxed_opaque_existential_1(&v67);
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingMessageViewControllerHandler] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762090);
  sub_20C133AA4();
  sub_20B51C710(&v67, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingMetricFieldsProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C769450);
  sub_20C133AA4();
  sub_20B51C710(&v67, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingSubscriptionStatusProvider]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763E40);
  sub_20C133AA4();
  sub_20B51C710(&v67, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_networkEvaluator]);
  sub_20B51CC64(v70, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_pageNavigator]);
  sub_20C133AA4();
  v48 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_platform;
  a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_platform] = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();
  sub_20B51C710(&v67, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_serviceSubscriptionCache]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762A10);
  sub_20C133AA4();
  sub_20B51C710(&v67, &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_storefrontLocalizer]);
  sub_20C13A924();
  swift_allocObject();
  swift_unknownObjectRetain();
  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_subscriptionToken] = sub_20C13A914();
  v49 = &a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_contentInsetInitialBehavior];
  v50 = 0x4030000000000000;
  if (a4[v48] == 1)
  {
    v51 = 0;
  }

  else
  {
    v50 = 0;
    v51 = 3;
  }

  *v49 = v50;
  v49[8] = v51;
  type metadata accessor for UpNextQueueButtonPresenter();
  swift_allocObject();

  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_upNextQueueButtonPresenter] = sub_20B887320();
  v52 = sub_20BE8C450(&unk_28228D548);

  v54 = sub_20BAB9360(v53, v52, 0);

  *&a4[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_upNextQueueButton] = v54;
  v55 = type metadata accessor for CatalogWorkoutDetailViewController();
  v66.receiver = a4;
  v66.super_class = v55;
  v56 = objc_msgSendSuper2(&v66, sel_initWithNibName_bundle_, 0, 0);
  *(a2 + 24) = &off_2822F54D8;
  swift_unknownObjectWeakAssign();
  v57 = *&v56[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_marketingHostedContentCoordinator];
  v58 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v59 = *(v57 + 136);
  *(v57 + 136) = sub_20BF02BE4;
  *(v57 + 144) = v58;
  v60 = v56;

  sub_20B583ECC(v59);

  v61 = &v60[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_eventHub];
  *(*&v60[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseHandler] + OBJC_IVAR____TtC9SeymourUI24MarketingPurchaseHandler_eventHub + 8) = *&v60[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_eventHub + 8];
  swift_unknownObjectWeakAssign();
  v62 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseCoordinator;
  swift_unknownObjectWeakAssign();
  *(*&v60[v62] + OBJC_IVAR____TtC9SeymourUI28MarketingPurchaseCoordinator_eventHub + 8) = *(v61 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();

  *(*&v60[OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dynamicOfferCoordinator] + OBJC_IVAR____TtC9SeymourUI32MarketingDynamicOfferCoordinator_eventHub + 8) = *(v61 + 1);
  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_20B86FA88();
  swift_unknownObjectRetain();

  sub_20C13A784();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v67);
  swift_getObjectType();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectRetain();

  sub_20B86FB30();
  sub_20C13A784();

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(&v67);
  __swift_destroy_boxed_opaque_existential_1(v70);
  return v60;
}

uint64_t sub_20BF02C58(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_20BF02CA0()
{
  v1 = v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentContentInsetBehavior;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = -4;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isTransitioningContentInset) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_visibility) = 1;
  v2 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_controllerDisplayCoordinator;
  type metadata accessor for MarketingControllerDisplayCoordinator();
  v3 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7710C0);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = MEMORY[0x277D84F98];
  *(v3 + 16) = v4;
  *(v0 + v2) = v3;
  v5 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_dynamicOfferCoordinator;
  *(v0 + v5) = [objc_allocWithZone(type metadata accessor for MarketingDynamicOfferCoordinator()) init];
  v6 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseCoordinator;
  *(v0 + v6) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseCoordinator()) init];
  v7 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_purchaseHandler;
  *(v0 + v7) = [objc_allocWithZone(type metadata accessor for MarketingPurchaseHandler()) init];
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_resignActiveObserver) = 0;
  v8 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_webUserInterfaceCoordinator;
  *(v0 + v8) = [objc_allocWithZone(type metadata accessor for MarketingWebUserInterfaceCoordinator()) init];
  v9 = OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_standardNavigationBarTintColor;
  *(v0 + v9) = [objc_opt_self() whiteColor];
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_currentNavigationBarTintColor) = 0;
  *(v0 + OBJC_IVAR____TtC9SeymourUI34CatalogWorkoutDetailViewController_isBeyondScrollBoundary) = 0;
  sub_20C13DE24();
  __break(1u);
}

uint64_t RemoteBrowsingAuthenticationInterceptor.__allocating_init(dependencies:)()
{
  v0 = swift_allocObject();
  RemoteBrowsingAuthenticationInterceptor.init(dependencies:)();
  return v0;
}

uint64_t RemoteBrowsingAuthenticationInterceptor.init(dependencies:)()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  type metadata accessor for RemoteBrowsingDiscoveryPresenter(0);
  swift_allocObject();

  *(v1 + 24) = sub_20BAF9E58(v4, 2);
  type metadata accessor for RemoteBrowsingGuestPairingPresenter();
  swift_allocObject();

  *(v1 + 32) = sub_20B8F2124();
  sub_20C133AA4();
  *(v1 + 16) = v25[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C767920);
  sub_20C133AA4();
  sub_20B51C710(v25, v1 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C763CE8);
  sub_20C133AA4();
  sub_20B51C710(v25, v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762360);
  sub_20C133AA4();

  sub_20B51C710(v25, v1 + 120);
  v5 = *(v1 + 32);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = *(v5 + 208);
  *(v5 + 208) = sub_20BF098C4;
  *(v5 + 216) = v6;

  sub_20B583ECC(v7);

  v8 = *(v1 + 24);
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = (v8 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onParticipantConnected);
  v11 = *(v8 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onParticipantConnected);
  *v10 = sub_20BF03338;
  v10[1] = v9;

  sub_20B583ECC(v11);

  v12 = *(v1 + 24);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = (v12 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onNewGuestFlowSelected);
  v15 = *(v12 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onNewGuestFlowSelected);
  *v14 = sub_20BF03354;
  v14[1] = v13;

  sub_20B583ECC(v15);

  v16 = *(v1 + 24);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = (v16 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onDiscoveryTimeout);
  v19 = *(v16 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onDiscoveryTimeout);
  *v18 = sub_20BF098C0;
  v18[1] = v17;

  sub_20B583ECC(v19);

  v20 = *(v1 + 24);
  v21 = swift_allocObject();
  swift_weakInit();

  v22 = (v20 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onSkipSelected);
  v23 = *(v20 + OBJC_IVAR____TtC9SeymourUI32RemoteBrowsingDiscoveryPresenter_onSkipSelected);
  *v22 = sub_20BF033E4;
  v22[1] = v21;

  sub_20B583ECC(v23);

  return v1;
}

uint64_t sub_20BF032C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BF037DC(a1, a2);
  }

  return result;
}

uint64_t sub_20BF03384(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a2();
  }

  return result;
}

uint64_t sub_20BF03414()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v2);
  v4 = &v24 - v3;
  v5 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_20C13BB84();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v15 + 8))(v17, v14);
  v18 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
  swift_beginAccess();
  sub_20BF08794(v1 + v18, v10, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v10, 1, v19) == 1)
  {
    v21 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State;
    v22 = v10;
  }

  else
  {
    swift_unknownObjectRelease();
    v25 = *&v10[*(v19 + 64)];
    sub_20B75B150(v10, v13);
    (*(v20 + 56))(v7, 1, 1, v19);
    swift_beginAccess();
    sub_20BF0885C(v7, v1 + v18);
    swift_endAccess();
    sub_20BF08794(v13, v4, type metadata accessor for NavigationRequest);
    swift_storeEnumTagMultiPayload();
    v25(v4);

    sub_20B520158(v4, &unk_27C76D250);
    v21 = type metadata accessor for NavigationRequest;
    v22 = v13;
  }

  return sub_20BF087FC(v22, v21);
}

uint64_t sub_20BF037DC(uint64_t a1, uint64_t a2)
{
  v205 = a2;
  v196 = a1;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v190);
  v191 = &v157 - v2;
  v3 = sub_20C136084();
  MEMORY[0x28223BE20](v3 - 8);
  v187 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v183 = &v157 - v5;
  v6 = sub_20C132E94();
  MEMORY[0x28223BE20](v6 - 8);
  v182 = &v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_20C1376F4();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v186 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C765120);
  MEMORY[0x28223BE20](v173);
  v172 = &v157 - v9;
  v176 = sub_20C135334();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v169 = &v157 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v166 = &v157 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762370);
  MEMORY[0x28223BE20](v13 - 8);
  v170 = &v157 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v167 = &v157 - v16;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770578);
  MEMORY[0x28223BE20](v177);
  v171 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v168 = &v157 - v19;
  v181 = sub_20C136C64();
  v198 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v178 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v195 = &v157 - v22;
  MEMORY[0x28223BE20](v23);
  v192 = &v157 - v24;
  MEMORY[0x28223BE20](v25);
  v174 = &v157 - v26;
  v27 = sub_20C135174();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v30 = &v157 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v31 - 8);
  v180 = &v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v35 = &v157 - v34;
  v36 = type metadata accessor for NavigationRequest();
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v157 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_20C13BB84();
  v40 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v197 = &v157 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v193 = &v157 - v43;
  MEMORY[0x28223BE20](v44);
  v194 = &v157 - v45;
  MEMORY[0x28223BE20](v46);
  v48 = &v157 - v47;
  MEMORY[0x28223BE20](v49);
  v51 = &v157 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v157 - v53;
  sub_20C13B484();
  sub_20C13BB64();
  v55 = *(v40 + 8);
  v203 = v40 + 8;
  v204 = v39;
  v202 = v55;
  v55(v54, v39);
  v56 = v201;
  v57 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
  swift_beginAccess();
  sub_20BF08794(v56 + v57, v35, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v179 = *(v58 - 8);
  if ((*(v179 + 48))(v35, 1, v58) == 1)
  {
    v59 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State;
    v60 = v35;
  }

  else
  {
    v163 = v57;
    swift_unknownObjectRelease();
    v161 = v58;
    v61 = &v35[*(v58 + 64)];
    v63 = *v61;
    v62 = *(v61 + 1);
    v160 = v63;
    v162 = v62;
    v165 = v38;
    sub_20B75B150(v35, v38);
    sub_20C13B484();
    v64 = *(v28 + 16);
    v159 = v28 + 16;
    v158 = v64;
    v64(v30, v196, v27);
    v65 = sub_20C13BB74();
    v66 = sub_20C13D1F4();
    v67 = os_log_type_enabled(v65, v66);
    v68 = v27;
    v164 = v27;
    if (v67)
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v206 = v70;
      *v69 = 136446210;
      sub_20BF08E74(&unk_27C76B9B0, MEMORY[0x277D515D0]);
      v71 = sub_20C13DFA4();
      v72 = v68;
      v74 = v73;
      (*(v28 + 8))(v30, v72);
      v75 = sub_20B51E694(v71, v74, &v206);

      *(v69 + 4) = v75;
      _os_log_impl(&dword_20B517000, v65, v66, "Participant connected: %{public}s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v70);
      MEMORY[0x20F2F6A40](v70, -1, -1);
      MEMORY[0x20F2F6A40](v69, -1, -1);
    }

    else
    {

      (*(v28 + 8))(v30, v27);
    }

    v202(v51, v204);
    sub_20C13B484();
    v76 = v198;
    v77 = v174;
    v78 = v181;
    v199 = *(v198 + 16);
    v200 = v198 + 16;
    v199(v174, v205, v181);
    v79 = sub_20C13BB74();
    v80 = sub_20C13D1F4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v206 = v82;
      *v81 = 136446210;
      sub_20BF08E74(&qword_27C770580, MEMORY[0x277D52F00]);
      v83 = sub_20C13DFA4();
      v84 = v77;
      v86 = v85;
      v174 = *(v76 + 8);
      (v174)(v84, v78);
      v87 = sub_20B51E694(v83, v86, &v206);

      *(v81 + 4) = v87;
      _os_log_impl(&dword_20B517000, v79, v80, "%{public}s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x20F2F6A40](v82, -1, -1);
      MEMORY[0x20F2F6A40](v81, -1, -1);
    }

    else
    {

      v174 = *(v76 + 8);
      (v174)(v77, v78);
    }

    v202(v48, v204);
    v88 = v197;
    v89 = v192;
    v90 = v194;
    sub_20C13B484();
    v199(v89, v205, v78);
    v91 = sub_20C13BB74();
    v92 = sub_20C13D1F4();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v206 = v94;
      *v93 = 136315138;
      v95 = v166;
      sub_20C136C24();
      v96 = v167;
      sub_20C135314();
      v97 = v96;
      (*(v175 + 8))(v95, v176);
      v98 = sub_20C135D54();
      v99 = *(v98 - 8);
      if ((*(v99 + 48))(v97, 1, v98) == 1)
      {
        sub_20B520158(v97, &unk_27C762370);
        v100 = 1;
        v101 = v168;
      }

      else
      {
        v101 = v168;
        sub_20C135D44();
        v89 = v192;
        (*(v99 + 8))(v97, v98);
        v100 = 0;
      }

      v103 = sub_20C1369B4();
      (*(*(v103 - 8) + 56))(v101, v100, 1, v103);
      v104 = sub_20C13D8F4();
      v106 = v105;
      sub_20B520158(v101, &qword_27C770578);
      v102 = v174;
      (v174)(v89, v78);
      v107 = sub_20B51E694(v104, v106, &v206);

      *(v93 + 4) = v107;
      _os_log_impl(&dword_20B517000, v91, v92, "Subscriber Account: %s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v94);
      MEMORY[0x20F2F6A40](v94, -1, -1);
      MEMORY[0x20F2F6A40](v93, -1, -1);

      v202(v194, v204);
      v88 = v197;
    }

    else
    {

      v102 = v174;
      (v174)(v89, v78);
      v202(v90, v204);
    }

    v108 = v193;
    sub_20C13B484();
    v109 = v195;
    v199(v195, v205, v78);
    v110 = sub_20C13BB74();
    v111 = sub_20C13D1F4();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v194 = swift_slowAlloc();
      v206 = v194;
      *v112 = 136315138;
      v113 = v169;
      sub_20C136C24();
      v114 = v170;
      sub_20C135304();
      (*(v175 + 8))(v113, v176);
      v115 = sub_20C135D54();
      v116 = *(v115 - 8);
      if ((*(v116 + 48))(v114, 1, v115) == 1)
      {
        sub_20B520158(v114, &unk_27C762370);
        v117 = 1;
        v118 = v171;
        v119 = v102;
        v120 = v195;
      }

      else
      {
        v121 = v171;
        sub_20C135D44();
        v118 = v121;
        v120 = v195;
        v122 = v114;
        v119 = v174;
        v108 = v193;
        (*(v116 + 8))(v122, v115);
        v117 = 0;
      }

      v123 = sub_20C1369B4();
      (*(*(v123 - 8) + 56))(v118, v117, 1, v123);
      v124 = v118;
      v125 = sub_20C13D8F4();
      v127 = v126;
      sub_20B520158(v124, &qword_27C770578);
      v119(v120, v78);
      v128 = sub_20B51E694(v125, v127, &v206);

      *(v112 + 4) = v128;
      _os_log_impl(&dword_20B517000, v110, v111, "Apple Account: %s", v112, 0xCu);
      v129 = v194;
      __swift_destroy_boxed_opaque_existential_1(v194);
      MEMORY[0x20F2F6A40](v129, -1, -1);
      MEMORY[0x20F2F6A40](v112, -1, -1);

      v202(v108, v204);
      v88 = v197;
      v102 = v119;
    }

    else
    {

      v102(v109, v78);
      v202(v108, v204);
    }

    sub_20C13B484();
    v130 = v178;
    v199(v178, v205, v78);
    v131 = sub_20C13BB74();
    v132 = sub_20C13D1F4();
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      v134 = swift_slowAlloc();
      v206 = v134;
      *v133 = 136315138;
      v135 = v172;
      sub_20C1369F4();
      v198 = sub_20C13D8F4();
      v136 = v102;
      v138 = v137;
      sub_20B520158(v135, &unk_27C765120);
      v136(v130, v78);
      v139 = sub_20B51E694(v198, v138, &v206);

      *(v133 + 4) = v139;
      _os_log_impl(&dword_20B517000, v131, v132, "Rings: %s", v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v134);
      MEMORY[0x20F2F6A40](v134, -1, -1);
      MEMORY[0x20F2F6A40](v133, -1, -1);

      v140 = v197;
    }

    else
    {

      v102(v130, v78);
      v140 = v88;
    }

    v202(v140, v204);
    v141 = v196;
    v142 = v78;
    sub_20C135104();
    sub_20C132E84();
    v143 = v186;
    sub_20C1376E4();
    v144 = v201;
    __swift_project_boxed_opaque_existential_1((v201 + 40), *(v201 + 64));
    v145 = v183;
    sub_20C1399C4();
    v146 = v185;
    v147 = sub_20C137CB4();
    v148 = swift_allocObject();
    *(v148 + 16) = 0;
    *(v148 + 24) = 0;
    v147(sub_20B5DF6DC, v148);

    (*(v184 + 8))(v145, v146);
    __swift_project_boxed_opaque_existential_1((v144 + 80), *(v144 + 104));
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766A10);
    v150 = *(v149 + 48);
    v151 = v187;
    v158(v187, v141, v164);
    v199((v151 + v150), v205, v142);
    (*(*(v149 - 8) + 56))(v151, 0, 1, v149);
    sub_20C13B1A4();
    sub_20BF087FC(v151, MEMORY[0x277D525B8]);
    v152 = v180;
    (*(v179 + 56))(v180, 1, 1, v161);
    v153 = v163;
    swift_beginAccess();
    sub_20BF0885C(v152, v144 + v153);
    swift_endAccess();
    v154 = v165;
    v155 = v191;
    sub_20BF08794(v165, v191, type metadata accessor for NavigationRequest);
    swift_storeEnumTagMultiPayload();
    v160(v155);

    sub_20B520158(v155, &unk_27C76D250);
    (*(v188 + 8))(v143, v189);
    v59 = type metadata accessor for NavigationRequest;
    v60 = v154;
  }

  return sub_20BF087FC(v60, v59);
}

uint64_t sub_20BF04ED8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  v13 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
  swift_beginAccess();
  sub_20BF08794(v1 + v13, v8, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    return sub_20BF087FC(v8, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  }

  v16 = *&v8[*(v14 + 48) + 8];

  sub_20BF087FC(v8, type metadata accessor for NavigationRequest);
  v17 = objc_allocWithZone(type metadata accessor for RemoteBrowsingDiscoveryViewController());

  v19 = sub_20B7A3E04(v18);
  ObjectType = swift_getObjectType();
  (*(v16 + 8))(v19, 1, ObjectType, v16);
  v21 = sub_20C137CB4();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v21(sub_20B5DF6DC, v22);
  swift_unknownObjectRelease();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20BF05278()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - v4;
  v6 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C13BB84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  sub_20C13BB64();
  (*(v10 + 8))(v12, v9);
  v13 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
  swift_beginAccess();
  sub_20BF08794(v1 + v13, v8, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  if ((*(*(v14 - 8) + 48))(v8, 1, v14) == 1)
  {
    return sub_20BF087FC(v8, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  }

  v16 = *&v8[*(v14 + 48) + 8];

  sub_20BF087FC(v8, type metadata accessor for NavigationRequest);
  v17 = objc_allocWithZone(type metadata accessor for RemoteBrowsingGuestPairingViewController());

  v19 = sub_20BF14040(v18);

  ObjectType = swift_getObjectType();
  (*(v16 + 8))(v19, 1, ObjectType, v16);
  v21 = sub_20C137CB4();
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v21(sub_20B52347C, v22);
  swift_unknownObjectRelease();

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_20BF0561C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v106 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764508);
  v104 = *(v3 - 8);
  v105 = v3;
  v103 = *(v104 + 64);
  MEMORY[0x28223BE20](v3);
  v102 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v101 = &v97 - v6;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764230);
  v7 = *(v111 - 1);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v111);
  MEMORY[0x28223BE20](v9);
  v11 = &v97 - v10;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v119 = *(v114 - 8);
  v112 = *(v119 + 64);
  MEMORY[0x28223BE20](v114);
  v116 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v113 = &v97 - v14;
  MEMORY[0x28223BE20](v15);
  v117 = &v97 - v16;
  MEMORY[0x28223BE20](v17);
  v118 = &v97 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v97 - v20;
  v22 = sub_20C13BB84();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v97 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  v115 = 0x800000020C1B6B00;
  sub_20C13BB64();
  (*(v23 + 8))(v25, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C762390);
  v26 = swift_allocBox();
  v28 = v27;
  v29 = sub_20C135734();
  (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770570);
  v108 = swift_allocBox();
  v31 = v30;
  v32 = sub_20C1376F4();
  (*(*(v32 - 8) + 56))(v31, 1, 1, v32);
  __swift_project_boxed_opaque_existential_1(v2 + 10, v2[13]);
  sub_20C13B184();
  v33 = sub_20C135174();
  v100 = (*(*(v33 - 8) + 48))(v21, 1, v33) == 1;
  sub_20B520158(v21, &unk_27C76BC00);
  __swift_project_boxed_opaque_existential_1(v2 + 15, v2[18]);
  v34 = v11;
  sub_20C1392E4();
  v35 = swift_allocObject();
  *(v35 + 16) = sub_20BF08D0C;
  *(v35 + 24) = v26;
  v99 = v26;
  v36 = &v97 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v111;
  (*(v7 + 16))(v36, v34, v111);
  v38 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v39 = (v8 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v40 + v38;
  v42 = v37;
  (*(v7 + 32))(v41, v36, v37);
  v43 = (v40 + v39);
  *v43 = sub_20B5D9E70;
  v43[1] = v35;

  v44 = v117;
  sub_20C137C94();
  (*(v7 + 8))(v34, v42);
  v45 = swift_allocObject();
  v45[2] = 0xD000000000000037;
  v45[3] = v115;
  v45[4] = 134;
  v46 = swift_allocObject();
  *(v46 + 16) = sub_20B5DF5EC;
  *(v46 + 24) = v45;
  v47 = v119;
  v48 = *(v119 + 16);
  v97 = v119 + 16;
  v98 = v48;
  v49 = v113;
  v50 = v44;
  v51 = v44;
  v52 = v114;
  v48(v113, v50, v114);
  v53 = *(v47 + 80);
  v54 = v47;
  v110 = (v53 + 16) & ~v53;
  v55 = (v112 + v110 + 7) & 0xFFFFFFFFFFFFFFF8;
  v107 = v55;
  v56 = swift_allocObject();
  v57 = *(v54 + 32);
  v109 = v54 + 32;
  v111 = v57;
  (v57)(v56 + ((v53 + 16) & ~v53), v49, v52);
  v58 = (v56 + v55);
  *v58 = sub_20B5DF4B0;
  v58[1] = v46;
  sub_20C137C94();
  v59 = *(v54 + 8);
  v119 = v54 + 8;
  v112 = v59;
  v59(v51, v52);
  __swift_project_boxed_opaque_existential_1(v2 + 5, v2[8]);
  v60 = v101;
  sub_20C1399A4();
  v61 = swift_allocObject();
  v62 = v108;
  *(v61 + 16) = sub_20BF08D74;
  *(v61 + 24) = v62;
  v64 = v104;
  v63 = v105;
  v65 = v102;
  (*(v104 + 16))(v102, v60, v105);
  v66 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v67 = (v103 + v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  (*(v64 + 32))(v68 + v66, v65, v63);
  v69 = (v68 + v67);
  *v69 = sub_20BF08DB4;
  v69[1] = v61;

  v70 = v113;
  sub_20C137C94();
  (*(v64 + 8))(v60, v63);
  v71 = swift_allocObject();
  v71[2] = 0xD000000000000037;
  v71[3] = v115;
  v71[4] = 138;
  v72 = swift_allocObject();
  *(v72 + 16) = sub_20B5DF5EC;
  *(v72 + 24) = v71;
  v73 = v116;
  v74 = v114;
  v75 = v98;
  v98(v116, v70, v114);
  v76 = v107;
  v77 = swift_allocObject();
  (v111)(v77 + v110, v73, v74);
  v78 = (v77 + v76);
  *v78 = sub_20B5DF4B0;
  v78[1] = v72;
  v79 = v117;
  sub_20C137C94();
  v80 = v70;
  v81 = v119;
  v112(v70, v74);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C762368);
  v82 = *(v81 + 64);
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_20C14F320;
  v84 = v83 + ((v53 + 32) & ~v53);
  v75(v84, v118, v74);
  v75(v84 + v82, v79, v74);
  v85 = v75;
  sub_20B5E2E18();
  v86 = sub_20C13D374();
  sub_20C13A7C4();
  sub_20C137C74();

  v87 = swift_allocObject();
  v88 = v108;
  *(v87 + 16) = v99;
  *(v87 + 24) = v88;
  *(v87 + 32) = v100;
  v89 = swift_allocObject();
  *(v89 + 16) = sub_20BF08DE4;
  *(v89 + 24) = v87;
  v90 = swift_allocObject();
  *(v90 + 16) = sub_20B622D08;
  *(v90 + 24) = v89;
  v91 = v116;
  v85(v116, v80, v74);
  v92 = v107;
  v93 = swift_allocObject();
  (v111)(v93 + v110, v91, v74);
  v94 = (v93 + v92);
  *v94 = sub_20B66A8B4;
  v94[1] = v90;

  sub_20C137C94();
  v95 = v112;
  v112(v80, v74);
  v95(v117, v74);
  v95(v118, v74);
}

uint64_t sub_20BF06268(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = swift_projectBox();
  v12 = a5(0);
  v13 = *(v12 - 8);
  (*(v13 + 16))(v10, a1, v12);
  (*(v13 + 56))(v10, 0, 1, v12);
  swift_beginAccess();
  return sub_20B5DF2D4(v10, v11, a3);
}

uint64_t sub_20BF063B0(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770570);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v20 - v4;
  v6 = sub_20C132E94();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_20C135734();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_projectBox();
  v14 = swift_projectBox();
  swift_beginAccess();
  if ((*(v10 + 48))(v13, 1, v9))
  {
    v15 = 0;
  }

  else
  {
    (*(v10 + 16))(v12, v13, v9);
    sub_20C132E84();
    v15 = sub_20C135704();
    (*(v20 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }

  swift_beginAccess();
  sub_20BF08E04(v14, v5);
  v16 = sub_20C1376F4();
  v17 = (*(*(v16 - 8) + 48))(v5, 1, v16);
  result = sub_20B520158(v5, &qword_27C770570);
  if (v17 != 1)
  {
    if ((v21 & 1) == 0)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (v21 & v15)
  {
LABEL_8:
    sub_20B5D9BA8();
    swift_allocError();
    *v19 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t RemoteBrowsingAuthenticationInterceptor.deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  sub_20BF087FC(v0 + OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  return v0;
}

uint64_t RemoteBrowsingAuthenticationInterceptor.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 40);
  __swift_destroy_boxed_opaque_existential_1(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1(v0 + 120);
  sub_20BF087FC(v0 + OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);

  return swift_deallocClassInstance();
}

uint64_t RemoteBrowsingAuthenticationInterceptor.interceptRequest(_:display:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_20BF08794(a1, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_20B75B150(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;
  swift_unknownObjectRetain();
  return sub_20C137C94();
}

uint64_t sub_20BF06978(void (*a1)(uint64_t *), void (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v148 = a6;
  v150 = a5;
  v156 = a4;
  v163 = a2;
  v162 = a1;
  v153 = type metadata accessor for NavigationRequest();
  v134 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v135 = v7;
  v136 = &v131 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v141 = *(v142 - 8);
  v8 = *(v141 + 64);
  MEMORY[0x28223BE20](v142);
  v138 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v137 = &v131 - v10;
  MEMORY[0x28223BE20](v11);
  v139 = &v131 - v12;
  MEMORY[0x28223BE20](v13);
  v140 = &v131 - v14;
  v143 = type metadata accessor for NavigationResource();
  MEMORY[0x28223BE20](v143);
  v144 = &v131 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76BC00);
  MEMORY[0x28223BE20](v16 - 8);
  v145 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v147 = &v131 - v19;
  v152 = type metadata accessor for NavigationIntent();
  MEMORY[0x28223BE20](v152);
  v146 = &v131 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v151 = (&v131 - v22);
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v160);
  v161 = (&v131 - v23);
  v24 = sub_20C136084();
  MEMORY[0x28223BE20](v24 - 8);
  v149 = &v131 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C768690);
  MEMORY[0x28223BE20](v26 - 8);
  v28 = &v131 - v27;
  v158 = sub_20C136C64();
  v159 = *(v158 - 8);
  MEMORY[0x28223BE20](v158);
  v30 = &v131 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v155 = &v131 - v32;
  v33 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v33 - 8);
  v154 = &v131 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v37 = &v131 - v36;
  v38 = sub_20C13BB84();
  v39 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v41 = &v131 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v131 - v43;
  sub_20C13B484();
  sub_20C13BB64();
  v45 = *(v39 + 8);
  v45(v44, v38);
  swift_beginAccess();
  v157 = a3;
  Strong = swift_weakLoadStrong();
  if (!Strong || (v47 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state, v48 = Strong, swift_beginAccess(), v49 = v48 + v47, v50 = v163, sub_20BF08794(v49, v37, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State), , v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80), v132 = *(v51 - 8), v52 = *(v132 + 48), v133 = v51, LODWORD(v48) = v52(v37, 1), sub_20BF087FC(v37, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State), v48 != 1))
  {
    sub_20B5D9BA8();
    v70 = swift_allocError();
    *v71 = 3;
    v72 = v161;
    *v161 = v70;
LABEL_10:
    swift_storeEnumTagMultiPayload();
    v162(v72);
    return sub_20B520158(v72, &unk_27C76D250);
  }

  sub_20C1369D4();
  v53 = v159;
  v54 = v158;
  if ((*(v159 + 48))(v28, 1, v158) == 1)
  {
    sub_20B520158(v28, &qword_27C768690);
    v55 = v157;
    swift_beginAccess();
    v56 = swift_weakLoadStrong();
    v57 = v156;
    if (v56)
    {
      v58 = v56;
      v59 = v133;
      v60 = v154;
      v61 = (v154 + *(v133 + 48));
      v62 = (v154 + *(v133 + 64));
      sub_20BF08794(v156, v154, type metadata accessor for NavigationRequest);
      v63 = v148;
      *v61 = v150;
      v61[1] = v63;
      *v62 = v162;
      v62[1] = v50;
      (*(v132 + 56))(v60, 0, 1, v59);
      v64 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
      swift_beginAccess();
      swift_unknownObjectRetain();

      sub_20BF0885C(v60, v58 + v64);
      swift_endAccess();
    }

    v65 = *(v153 + 20);
    v66 = v151;
    sub_20BF08794(v57 + v65, v151, type metadata accessor for NavigationIntent);
    if (swift_getEnumCaseMultiPayload() == 5)
    {

      v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0);
      sub_20B520158(v66 + *(v67 + 80), &qword_27C766E88);
      swift_beginAccess();
      v68 = swift_weakLoadStrong();
      if (v68)
      {
        sub_20B51CC64(v68 + 80, &v164);

        __swift_project_boxed_opaque_existential_1(&v164, v165);
        v69 = &v167;
        goto LABEL_17;
      }

      v105 = sub_20C135174();
      v106 = *(*(v105 - 8) + 56);
      v107 = &v167;
      goto LABEL_35;
    }

    sub_20BF087FC(v66, type metadata accessor for NavigationIntent);
    v85 = v57 + v65;
    v86 = v146;
    sub_20BF08794(v85, v146, type metadata accessor for NavigationIntent);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v87 = sub_20C139144();
      (*(*(v87 - 8) + 8))(v86, v87);
      swift_beginAccess();
      v88 = swift_weakLoadStrong();
      if (v88)
      {
        sub_20B51CC64(v88 + 80, &v164);

        __swift_project_boxed_opaque_existential_1(&v164, v165);
        v69 = &v166;
LABEL_17:
        v89 = *(v69 - 32);
        sub_20C13B184();
        __swift_destroy_boxed_opaque_existential_1(&v164);
        v90 = sub_20C135174();
        if ((*(*(v90 - 8) + 48))(v89, 1, v90) != 1)
        {
          sub_20B520158(v89, &unk_27C76BC00);
          swift_beginAccess();
          v91 = swift_weakLoadStrong();
          if (v91)
          {
            v92 = v91;
            v93 = v154;
            (*(v132 + 56))(v154, 1, 1, v133);
            v94 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
            swift_beginAccess();
            sub_20BF0885C(v93, v92 + v94);
            swift_endAccess();
          }

          v72 = v161;
          sub_20BF08794(v57, v161, type metadata accessor for NavigationRequest);
          goto LABEL_10;
        }

        goto LABEL_36;
      }

      v105 = sub_20C135174();
      v106 = *(*(v105 - 8) + 56);
      v107 = &v166;
LABEL_35:
      v89 = *(v107 - 32);
      v106(v89, 1, 1, v105);
LABEL_36:
      sub_20B520158(v89, &unk_27C76BC00);
      goto LABEL_37;
    }

    sub_20BF087FC(v86, type metadata accessor for NavigationIntent);
    v104 = v144;
    sub_20BF08794(v57, v144, type metadata accessor for NavigationResource);
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      if (*v104 == 1)
      {
LABEL_37:
        swift_beginAccess();
        result = swift_weakLoadStrong();
        if (result)
        {
          sub_20BF04ED8();
        }

        return result;
      }
    }

    else
    {
      sub_20BF087FC(v104, type metadata accessor for NavigationResource);
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v108 = v137;
      sub_20BF0561C(v137);

      v109 = v136;
      sub_20BF08794(v57, v136, type metadata accessor for NavigationRequest);
      v110 = (*(v134 + 80) + 40) & ~*(v134 + 80);
      v111 = swift_allocObject();
      v112 = v162;
      v111[2] = v55;
      v111[3] = v112;
      v111[4] = v50;
      sub_20B75B150(v109, v111 + v110);
      v113 = swift_allocObject();
      *(v113 + 16) = sub_20BF09758;
      *(v113 + 24) = v111;
      v114 = v141;
      v115 = *(v141 + 16);
      v161 = (v141 + 16);
      v162 = v115;
      v116 = v138;
      v117 = v142;
      (v115)(v138, v108, v142);
      v118 = *(v114 + 80);
      v160 = (v118 + 16) & ~v118;
      v119 = (v8 + v160 + 7) & 0xFFFFFFFFFFFFFFF8;
      v120 = swift_allocObject();
      v159 = *(v114 + 32);
      (v159)(v120 + ((v118 + 16) & ~v118), v116, v117);
      v121 = (v120 + v119);
      *v121 = sub_20B66A8B4;
      v121[1] = v113;

      v122 = v157;

      v123 = v139;
      sub_20C137C94();
      v163 = *(v114 + 8);
      (v163)(v108, v117);
      v124 = swift_allocObject();
      *(v124 + 16) = sub_20BF097DC;
      *(v124 + 24) = v122;
      (v162)(v116, v123, v117);
      v125 = swift_allocObject();
      (v159)(v125 + v160, v116, v117);
      v126 = (v125 + v119);
      *v126 = sub_20B5DF204;
      v126[1] = v124;

      v127 = v140;
      sub_20C137C94();
      v128 = v163;
      (v163)(v123, v117);
      v129 = sub_20C137CB4();
      v130 = swift_allocObject();
      *(v130 + 16) = 0;
      *(v130 + 24) = 0;
      v129(sub_20B5DF6DC, v130);

      return v128(v127, v117);
    }
  }

  else
  {
    v74 = v155;
    (*(v53 + 32))(v155, v28, v54);
    sub_20C13B484();
    v75 = *(v53 + 16);
    v152 = v53 + 16;
    v151 = v75;
    (v75)(v30, v74, v54);
    v76 = sub_20C13BB74();
    v77 = sub_20C13D1D4();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v148 = v78;
      v150 = swift_slowAlloc();
      v164 = v150;
      *v78 = 136315138;
      sub_20BF08E74(&qword_27C770580, MEMORY[0x277D52F00]);
      v79 = sub_20C13DFA4();
      v81 = v80;
      v153 = *(v159 + 8);
      (v153)(v30, v54);
      v82 = sub_20B51E694(v79, v81, &v164);
      v74 = v155;

      v83 = v148;
      *(v148 + 1) = v82;
      _os_log_impl(&dword_20B517000, v76, v77, "Faking Remote Browsing Environment %s", v83, 0xCu);
      v84 = v150;
      __swift_destroy_boxed_opaque_existential_1(v150);
      MEMORY[0x20F2F6A40](v84, -1, -1);
      MEMORY[0x20F2F6A40](v83, -1, -1);
    }

    else
    {

      v153 = *(v159 + 8);
      (v153)(v30, v54);
    }

    v45(v41, v38);
    swift_beginAccess();
    v95 = swift_weakLoadStrong();
    if (v95)
    {
      sub_20B51CC64(v95 + 80, &v164);

      __swift_project_boxed_opaque_existential_1(&v164, v165);
      v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C766A10);
      v97 = *(v96 + 48);
      v98 = v149;
      sub_20C1350E4();
      (v151)(v98 + v97, v74, v158);
      (*(*(v96 - 8) + 56))(v98, 0, 1, v96);
      sub_20C13B1A4();
      sub_20BF087FC(v98, MEMORY[0x277D525B8]);
      __swift_destroy_boxed_opaque_existential_1(&v164);
    }

    swift_beginAccess();
    v99 = swift_weakLoadStrong();
    if (v99)
    {
      v100 = v99;
      v101 = v154;
      (*(v132 + 56))(v154, 1, 1, v133);
      v102 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
      swift_beginAccess();
      sub_20BF0885C(v101, v100 + v102);
      swift_endAccess();
    }

    v103 = v161;
    sub_20BF08794(v156, v161, type metadata accessor for NavigationRequest);
    swift_storeEnumTagMultiPayload();
    v162(v103);
    sub_20B520158(v103, &unk_27C76D250);
    return (v153)(v74, v158);
  }

  return result;
}

uint64_t sub_20BF07ED0(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *), uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v7);
  v9 = &v18[-v8];
  v10 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
    swift_beginAccess();
    sub_20BF0885C(v12, v14 + v16);
    swift_endAccess();
  }

  sub_20BF08794(a5, v9, type metadata accessor for NavigationRequest);
  swift_storeEnumTagMultiPayload();
  a3(v9);
  return sub_20B520158(v9, &unk_27C76D250);
}

uint64_t sub_20BF080C0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_20BF04ED8();
  }

  return result;
}

uint64_t RemoteBrowsingAuthenticationInterceptor.cancel()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v60 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7621E0);
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  MEMORY[0x28223BE20](v3);
  v55 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v59 = &v48 - v6;
  MEMORY[0x28223BE20](v7);
  v56 = &v48 - v8;
  v9 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  v15 = sub_20C13BB84();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_20C13B484();
  v54 = 0x800000020C1B6B00;
  sub_20C13BB64();
  (*(v16 + 8))(v18, v15);
  v19 = OBJC_IVAR____TtC9SeymourUI39RemoteBrowsingAuthenticationInterceptor_state;
  swift_beginAccess();
  sub_20BF08794(v2 + v19, v14, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C764B80);
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v14, 1, v20) == 1)
  {
    sub_20BF087FC(v14, type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State);
    return _s9SeymourUI41RemoteBrowsingSiriBeginSessionInterceptorC6cancel0A4Core7PromiseVyytGyF_0();
  }

  else
  {
    v23 = &v14[*(v20 + 48)];
    v25 = *v23;
    v24 = *(v23 + 1);
    v26 = &v14[*(v20 + 64)];
    v27 = *(v26 + 1);
    v51 = *v26;
    v53 = v27;
    sub_20BF087FC(v14, type metadata accessor for NavigationRequest);
    (*(v21 + 56))(v11, 1, 1, v20);
    swift_beginAccess();
    sub_20BF0885C(v11, v2 + v19);
    swift_endAccess();
    v52 = v25;
    ObjectType = swift_getObjectType();
    v29 = v59;
    (*(v24 + 56))(0, ObjectType, v24);
    v30 = swift_allocObject();
    *(v30 + 16) = v51;
    *(v30 + 24) = v27;
    v31 = swift_allocObject();
    *(v31 + 16) = sub_20BF089A8;
    *(v31 + 24) = v30;
    v32 = swift_allocObject();
    *(v32 + 16) = sub_20B5DF3B8;
    *(v32 + 24) = v31;
    v34 = v57;
    v33 = v58;
    v51 = *(v57 + 16);
    v35 = v55;
    v51(v55, v29, v58);
    v36 = *(v34 + 80);
    v50 = (v36 + 16) & ~v36;
    v37 = (v4 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
    v48 = v37;
    v38 = swift_allocObject();
    v49 = *(v34 + 32);
    v49(v38 + ((v36 + 16) & ~v36), v35, v33);
    v39 = (v38 + v37);
    *v39 = sub_20B5DF3D4;
    v39[1] = v32;

    v40 = v56;
    sub_20C137C94();
    v57 = *(v34 + 8);
    v41 = v59;
    v42 = v33;
    (v57)(v59, v33);
    v43 = swift_allocObject();
    v43[2] = 0xD000000000000037;
    v43[3] = v54;
    v43[4] = 223;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_20B5D9EA0;
    *(v44 + 24) = v43;
    v51(v41, v40, v33);
    v45 = v48;
    v46 = swift_allocObject();
    v49(v46 + v50, v41, v42);
    v47 = (v46 + v45);
    *v47 = sub_20B5D9EC0;
    v47[1] = v44;

    sub_20C137C94();

    swift_unknownObjectRelease();
    return (v57)(v40, v42);
  }
}

uint64_t sub_20BF08794(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20BF087FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_20BF0885C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BF088C0(void (*a1)(uint64_t *))
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C76D250);
  MEMORY[0x28223BE20](v2);
  v4 = (&v8 - v3);
  sub_20B5D9BA8();
  v5 = swift_allocError();
  *v6 = 2;
  *v4 = v5;
  swift_storeEnumTagMultiPayload();
  a1(v4);
  return sub_20B520158(v4, &unk_27C76D250);
}

uint64_t sub_20BF089B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NavigationRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = swift_allocObject();
  swift_weakInit();
  sub_20BF08794(a1, &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NavigationRequest);
  v10 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  sub_20B75B150(&v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v11 + v10);
  v12 = (v11 + ((v8 + v10 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = a2;
  v12[1] = a3;
  swift_unknownObjectRetain();
  return sub_20C137C94();
}

uint64_t sub_20BF08B80(uint64_t a1)
{
  result = sub_20BF08E74(&qword_27C770548, type metadata accessor for RemoteBrowsingAuthenticationInterceptor);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_20BF08C00()
{
  result = type metadata accessor for RemoteBrowsingAuthenticationInterceptor.State(319);
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

uint64_t sub_20BF08E04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770570);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_20BF08E74(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t objectdestroy_7Tm_0()
{
  v1 = type metadata accessor for NavigationRequest();
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(*(v1 - 8) + 64);

  v5 = (v0 + v3);
  type metadata accessor for NavigationResource();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
    case 7u:
    case 8u:
    case 0xBu:
    case 0xDu:
      goto LABEL_2;
    case 1u:
      v8 = sub_20C132C14();
      (*(*(v8 - 8) + 8))(v0 + v3, v8);
      v7 = &unk_27C763FC0;
      goto LABEL_17;
    case 2u:
      v9 = sub_20C138894();
      goto LABEL_11;
    case 3u:

      goto LABEL_2;
    case 4u:
      v16 = sub_20C1387E4();
      (*(*(v16 - 8) + 8))(v0 + v3, v16);
      v7 = &qword_27C7710E0;
      goto LABEL_17;
    case 5u:

      break;
    case 6u:
      v6 = sub_20C138894();
      (*(*(v6 - 8) + 8))(v0 + v3, v6);
      v7 = &qword_27C763FD0;
LABEL_17:
      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(v7) + 48);
      v18 = sub_20C1388F4();
      (*(*(v18 - 8) + 8))(v5 + v17, v18);
      break;
    case 9u:
      v9 = sub_20C132C14();
      goto LABEL_11;
    case 0xCu:

      break;
    case 0xEu:

      goto LABEL_2;
    case 0xFu:
      v9 = sub_20C138204();
LABEL_11:
      (*(*(v9 - 8) + 8))(v0 + v3, v9);
      break;
    case 0x10u:
      type metadata accessor for WorkoutNavigationResource();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v10 = sub_20C1344C4();
        (*(*(v10 - 8) + 8))(v0 + v3, v10);
        v11 = type metadata accessor for WorkoutSessionConfiguration();
        v12 = v11[5];
        v13 = sub_20C137254();
        (*(*(v13 - 8) + 8))(v5 + v12, v13);
        v14 = v11[7];
        sub_20C13A484();
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v15 = sub_20C137EA4();
          (*(*(v15 - 8) + 8))(v5 + v14, v15);
        }

        else
        {
        }

        v35 = v11[9];
        v36 = sub_20C13BA24();
        v37 = *(v36 - 8);
        if (!(*(v37 + 48))(v5 + v35, 1, v36))
        {
          (*(v37 + 8))(v5 + v35, v36);
        }

        v38 = v11[10];
        v39 = sub_20C134A44();
        v40 = *(v39 - 8);
        if (!(*(v40 + 48))(v5 + v38, 1, v39))
        {
          (*(v40 + 8))(v5 + v38, v39);
        }

        if (*(v5 + v11[11] + 8) >= 0xC)
        {
        }

        v41 = v11[12];
        v42 = sub_20C135C54();
        v43 = *(v42 - 8);
        if (!(*(v43 + 48))(v5 + v41, 1, v42))
        {
          (*(v43 + 8))(v5 + v41, v42);
        }
      }

LABEL_2:

      break;
    default:
      break;
  }

  v19 = v5 + *(v1 + 20);
  type metadata accessor for NavigationIntent();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 5:

      v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76E4C0) + 80);
      v23 = sub_20C1344C4();
      v24 = *(v23 - 8);
      if (!(*(v24 + 48))(&v19[v22], 1, v23))
      {
        (*(v24 + 8))(&v19[v22], v23);
      }

      break;
    case 4:

      break;
    case 3:
      v21 = sub_20C139144();
      (*(*(v21 - 8) + 8))(v19, v21);
      break;
  }

  v25 = v5 + *(v1 + 24);
  type metadata accessor for NavigationSource();
  v26 = swift_getEnumCaseMultiPayload();
  if (v26 == 1)
  {
    v34 = sub_20C135024();
    (*(*(v34 - 8) + 8))(v25, v34);
  }

  else if (!v26)
  {
    v45 = v0;
    v27 = v2;
    v28 = (v2 + 24) & ~v2;
    v29 = v4;
    v30 = sub_20C132C14();
    v31 = *(v30 - 8);
    v32 = *(v31 + 8);
    v32(v25, v30);
    v33 = *(type metadata accessor for NavigationSharingURLInfo() + 20);
    if (!(*(v31 + 48))(&v25[v33], 1, v30))
    {
      v32(&v25[v33], v30);
    }

    v4 = v29;
    v3 = v28;
    v2 = v27;
    v0 = v45;
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_20BF096A4(void (*a1)(uint64_t *), void (*a2)(uint64_t *))
{
  v5 = *(type metadata accessor for NavigationRequest() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + 16);
  v8 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_20BF06978(a1, a2, v7, v2 + v6, v9, v10);
}

uint64_t sub_20BF097F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

uint64_t sub_20BF098D4(unint64_t a1)
{
  switch((a1 >> 57) & 0x78 | a1 & 7)
  {
    case 6uLL:
    case 0xDuLL:
    case 0x11uLL:
    case 0x15uLL:
    case 0x1AuLL:
    case 0x26uLL:
    case 0x37uLL:
    case 0x3AuLL:
    case 0x3BuLL:
    case 0x3CuLL:
    case 0x43uLL:
      return type metadata accessor for TVFilterOptionsCell();
    case 7uLL:
      return type metadata accessor for TVDetailDescriptionHeaderCell();
    case 9uLL:
      return type metadata accessor for TVDetailHeaderCell();
    case 0xAuLL:
      return type metadata accessor for TVDetailSummaryTextCell();
    case 0xEuLL:
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20))
      {
        return type metadata accessor for ContentUnavailableCell();
      }

      else
      {
        return type metadata accessor for ContentUnavailableFixedHeightCell();
      }

    case 0xFuLL:
      return type metadata accessor for TVEditorialCollectionDetailHeaderCell();
    case 0x16uLL:
      return type metadata accessor for TVFilterResultDetailHeaderCell();
    case 0x17uLL:
      return type metadata accessor for TVFilterResultActionsCell();
    case 0x18uLL:
      return type metadata accessor for TVFullScreenMessageCell();
    case 0x19uLL:
      return type metadata accessor for TVGalleryHeaderCell();
    case 0x1CuLL:
    case 0x39uLL:
      return sub_20BF098D4(*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20));
    case 0x1EuLL:
      v3 = &unk_27C7677D0;
      goto LABEL_31;
    case 0x1FuLL:
      v3 = &qword_27C762B80;
LABEL_31:
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v3);
      v5 = swift_projectBox();
      v6 = (v7 + 64);
      goto LABEL_32;
    case 0x20uLL:
      v2 = &unk_27C772250;
      goto LABEL_29;
    case 0x21uLL:
      v2 = &qword_27C762B28;
      goto LABEL_29;
    case 0x25uLL:
      return type metadata accessor for TVMetadataSectionCell();
    case 0x29uLL:
      return type metadata accessor for TVMusicTrackCell();
    case 0x2AuLL:
      return type metadata accessor for TVMyLibraryEntryCell();
    case 0x32uLL:
      return type metadata accessor for TVRootShowcaseCarouselContainerCell();
    case 0x33uLL:
      return type metadata accessor for TVGallerySectionSeparatorShelf();
    case 0x3EuLL:
      return type metadata accessor for TVQueueListHeaderCell();
    case 0x3FuLL:
      return type metadata accessor for TVQueueEmptyListCell();
    case 0x45uLL:
      return type metadata accessor for TVWorkoutPlanBannerCell();
    case 0x48uLL:
      return type metadata accessor for TVWorkoutPlanGalleryBrickCell();
    case 0x49uLL:
      return type metadata accessor for TVWorkoutPlanDetailHeaderCell();
    case 0x4AuLL:
      v2 = &unk_27C762A70;
LABEL_29:
      v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2);
      v5 = swift_projectBox();
      v6 = (v4 + 48);
LABEL_32:
      result = sub_20BF09B9C(*(v5 + *v6));
      break;
    case 0x4DuLL:
      result = type metadata accessor for LoadingCell();
      break;
    default:
      result = sub_20C093BC8(a1);
      break;
  }

  return result;
}

uint64_t sub_20BF09B9C(char a1)
{
  switch(a1)
  {
    case 5:
    case 13:
      result = type metadata accessor for TVGroupedBrickItemCell();
      break;
    case 6:
      result = type metadata accessor for TVCircleItemCell();
      break;
    case 8:
    case 11:
    case 28:
    case 29:
    case 34:
      result = type metadata accessor for TVStandardBrickRowCell();
      break;
    case 9:
    case 31:
      result = type metadata accessor for TVDynamicBrickItemCell();
      break;
    case 10:
      result = type metadata accessor for TVEditorialCollectionBrickItemCell();
      break;
    case 14:
    case 16:
    case 26:
      result = type metadata accessor for TVProgramBrickItemCell();
      break;
    case 18:
    case 20:
    case 32:
    case 33:
    case 38:
    case 47:
    case 48:
      result = type metadata accessor for TVStandardBrickItemCell();
      break;
    case 19:
      result = type metadata accessor for TVIndexedBrickItemCell();
      break;
    case 22:
      result = type metadata accessor for TVModalityBrickItemCell();
      break;
    case 25:
      result = type metadata accessor for TVPlaylistBrickRowCell();
      break;
    case 37:
      result = type metadata accessor for TVQueueListCell();
      break;
    case 42:
      result = type metadata accessor for TVWorkoutPlanBrickItemCell();
      break;
    case 45:
      result = type metadata accessor for TVWorkoutPlanShowcaseBrickItemCell();
      break;
    default:
      result = sub_20C093E48(a1);
      break;
  }

  return result;
}

uint64_t sub_20BF09D10(__int128 *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v9 = a1[9];
  v43 = a1[8];
  v44 = v9;
  v45 = *(a1 + 20);
  v10 = a1[5];
  v39 = a1[4];
  v40 = v10;
  v11 = a1[7];
  v41 = a1[6];
  v42 = v11;
  v12 = a1[1];
  v35 = *a1;
  v36 = v12;
  v13 = a1[3];
  v37 = a1[2];
  v38 = v13;
  v14 = sub_20B5EAF8C(&v35);
  result = MEMORY[0x277D84F90];
  if (v14 == 1)
  {
    return result;
  }

  v49 = v43;
  v50 = v44;
  v51 = v45;
  v46[4] = v39;
  v46[5] = v40;
  v47 = v41;
  v48 = v42;
  v46[0] = v35;
  v46[1] = v36;
  v46[2] = v37;
  v46[3] = v38;
  v34 = MEMORY[0x277D84F90];
  if (!v44)
  {
    return result;
  }

  v16 = (v50 & 0x2000000000000000) != 0 ? BYTE7(v50) & 0xF : *(&v49 + 1) & 0xFFFFFFFFFFFFLL;
  if (!v16 || !*(*(&v47 + 1) + 16))
  {
    return result;
  }

  v17 = *(*(&v47 + 1) + 32);

  v18 = sub_20BF098D4(v17);
  if (swift_conformsToProtocol2() && v18)
  {
    v19 = sub_20B911B50(v46, a2);
LABEL_14:
    v21 = v19;
    MEMORY[0x20F2F43B0]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();

LABEL_17:
    v22 = v34;
    goto LABEL_18;
  }

  v20 = sub_20BF098D4(v17);
  if (swift_conformsToProtocol2() && v20)
  {
    v19 = sub_20BA033CC(v46, a2);
    goto LABEL_14;
  }

  v32 = sub_20BF098D4(v17);
  v33 = swift_conformsToProtocol2();
  v22 = MEMORY[0x277D84F90];
  if (v33 && v32)
  {
    sub_20B885750(v46, a2, a4, a6);
    MEMORY[0x20F2F43B0]();
    if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_20C13CCA4();
    }

    sub_20C13CCE4();
    goto LABEL_17;
  }

LABEL_18:
  if (*(&v46[0] + 1))
  {
    v23 = v22;
    v24 = *&v46[0] & 0xFFFFFFFFFFFFLL;
    if ((*(&v46[0] + 1) & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(*(&v46[0] + 1)) & 0xFLL;
    }

    if (v24 && (sub_20BF098D4(v17), type metadata accessor for TVMusicTrackCell(), swift_dynamicCastMetatype()))
    {
      v25 = objc_opt_self();
      v26 = [v25 fractionalWidthDimension_];
      v27 = [v25 absoluteDimension_];
      v28 = [objc_opt_self() sizeWithWidthDimension:v26 heightDimension:v27];

      v29 = sub_20C13C914();
      v30 = [objc_opt_self() boundarySupplementaryItemWithLayoutSize:v28 elementKind:v29 alignment:8 absoluteOffset:{0.0, -8.0}];

      MEMORY[0x20F2F43B0]();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_20C13CCA4();
      }

      sub_20C13CCE4();

      return v34;
    }

    else
    {

      return v23;
    }
  }

  else
  {
    v31 = v22;

    return v31;
  }
}

id sub_20BF0A170(unint64_t a1, id a2, id a3, double a4, double a5, double a6, double a7)
{
  while (2)
  {
    switch((a1 >> 57) & 0x78 | a1 & 7)
    {
      case 6uLL:
      case 0xDuLL:
      case 0x11uLL:
      case 0x15uLL:
      case 0x1AuLL:
      case 0x26uLL:
      case 0x37uLL:
      case 0x3AuLL:
      case 0x3BuLL:
      case 0x3CuLL:
      case 0x43uLL:
        v11 = objc_opt_self();
        v12 = [a2 layoutSize];
        v13 = [v12 widthDimension];

        [v13 dimension];
        v15 = v14;

        v16 = [v11 absoluteDimension_];
        v17 = [a2 layoutSize];
        v18 = [v17 heightDimension];

        v19 = [objc_opt_self() sizeWithWidthDimension:v16 heightDimension:v18];
        v20 = [objc_opt_self() horizontalGroupWithLayoutSize:v19 repeatingSubitem:a2 count:1];
        goto LABEL_6;
      case 7uLL:
      case 9uLL:
      case 0xFuLL:
      case 0x32uLL:
        v8 = sub_20B97D79C(a1, a3, a4, a5, a6, a7);
        v9 = [objc_opt_self() verticalGroupWithLayoutSize:v8 repeatingSubitem:a2 count:1];
        goto LABEL_4;
      case 0xAuLL:
      case 0x4DuLL:
        v22 = objc_opt_self();
        v19 = [a2 layoutSize];
        v20 = [v22 horizontalGroupWithLayoutSize:v19 repeatingSubitem:a2 count:1];
        goto LABEL_6;
      case 0x16uLL:
        v61 = [a2 layoutSize];
        v62 = [v61 widthDimension];

        v63 = [a2 layoutSize];
        v64 = [v63 heightDimension];

        v19 = [objc_opt_self() sizeWithWidthDimension:v62 heightDimension:v64];
        v20 = [objc_opt_self() horizontalGroupWithLayoutSize:v19 repeatingSubitem:a2 count:1];
        goto LABEL_6;
      case 0x17uLL:
        v56 = [objc_opt_self() fractionalWidthDimension_];
        v57 = [a2 layoutSize];
        v58 = [v57 heightDimension];

        v19 = [objc_opt_self() sizeWithWidthDimension:v56 heightDimension:v58];
        v20 = [objc_opt_self() horizontalGroupWithLayoutSize:v19 repeatingSubitem:a2 count:1];
LABEL_6:
        v10 = v20;
        goto LABEL_7;
      case 0x18uLL:
        [objc_msgSend(a3 container)];
        v48 = v47;
        swift_unknownObjectRelease();
        v49 = objc_opt_self();
        v50 = [v49 fractionalWidthDimension_];
        v51 = [v49 absoluteDimension_];
        v26 = [objc_opt_self() sizeWithWidthDimension:v50 heightDimension:v51];

        v52 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_20C14F580;
        *(v53 + 32) = a2;
        sub_20B51C88C(0, &qword_27C764D08);
        v54 = a2;
        v30 = sub_20C13CC54();

        v31 = [v52 horizontalGroupWithLayoutSize:v26 subitems:v30];
        goto LABEL_21;
      case 0x1CuLL:
      case 0x39uLL:
        a1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
        continue;
      case 0x1EuLL:
        v38 = &unk_27C7677D0;
        goto LABEL_24;
      case 0x1FuLL:
        v38 = &qword_27C762B80;
LABEL_24:
        v59 = __swift_instantiateConcreteTypeFromMangledNameV2(v38);
        v43 = swift_projectBox();
        v44 = (v59 + 64);
        goto LABEL_25;
      case 0x20uLL:
        v32 = &unk_27C772250;
        goto LABEL_19;
      case 0x21uLL:
        v32 = &qword_27C762B28;
        goto LABEL_19;
      case 0x25uLL:
      case 0x48uLL:
        v39 = [objc_opt_self() fractionalWidthDimension_];
        v40 = [a2 layoutSize];
        v41 = [v40 heightDimension];

        v36 = [objc_opt_self() sizeWithWidthDimension:v39 heightDimension:v41];
        v10 = [objc_opt_self() horizontalGroupWithLayoutSize:v36 repeatingSubitem:a2 count:3];
        v37 = [objc_opt_self() fixedSpacing_];
        goto LABEL_17;
      case 0x29uLL:
        v33 = [objc_opt_self() fractionalWidthDimension_];
        v34 = [a2 layoutSize];
        v35 = [v34 heightDimension];

        v36 = [objc_opt_self() sizeWithWidthDimension:v33 heightDimension:v35];
        v10 = [objc_opt_self() horizontalGroupWithLayoutSize:v36 repeatingSubitem:a2 count:2];
        v37 = [objc_opt_self() fixedSpacing_];
LABEL_17:
        v19 = v37;
        [v10 setInterItemSpacing_];

LABEL_7:
        return v10;
      case 0x3EuLL:
      case 0x3FuLL:
        v23 = [objc_opt_self() fractionalWidthDimension_];
        v24 = [a2 layoutSize];
        v25 = [v24 heightDimension];

        v26 = [objc_opt_self() sizeWithWidthDimension:v23 heightDimension:v25];
        v27 = objc_opt_self();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
        v28 = swift_allocObject();
        *(v28 + 16) = xmmword_20C14F580;
        *(v28 + 32) = a2;
        sub_20B51C88C(0, &qword_27C764D08);
        v29 = a2;
        v30 = sub_20C13CC54();

        v31 = [v27 horizontalGroupWithLayoutSize:v26 subitems:v30];
LABEL_21:
        v55 = v31;

        return v55;
      case 0x4AuLL:
        v32 = &unk_27C762A70;
LABEL_19:
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(v32);
        v43 = swift_projectBox();
        v44 = (v42 + 48);
LABEL_25:
        v60 = *(v43 + *v44);

        return sub_20BF0BAD0(v60, a2);
      default:
        v8 = sub_20B97D79C(a1, a3, a4, a5, a6, a7);
        v9 = [objc_opt_self() horizontalGroupWithLayoutSize:v8 repeatingSubitem:a2 count:1];
LABEL_4:
        v10 = v9;

        return v10;
    }
  }
}

id sub_20BF0ABF0(unint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5, double a6, double a7)
{
  result = [objc_opt_self() sectionWithGroup_];
  switch((a1 >> 57) & 0x78 | a1 & 7)
  {
    case 3uLL:
    case 0x19uLL:
    case 0x45uLL:
      v18 = 40.0;
      v17 = 80.0;
      v16 = 0.0;
      goto LABEL_26;
    case 6uLL:
    case 0xDuLL:
    case 0x11uLL:
    case 0x15uLL:
    case 0x1AuLL:
    case 0x26uLL:
    case 0x37uLL:
    case 0x3BuLL:
    case 0x3CuLL:
    case 0x43uLL:
      v15 = result;
      [result setInterGroupSpacing_];
      v16 = 47.0;
      v17 = 0.0;
      v18 = 20.0;
      goto LABEL_3;
    case 7uLL:
    case 9uLL:
    case 0xFuLL:
      v16 = 0.0;
      v17 = 0.0;
      v18 = 0.0;
      goto LABEL_16;
    case 0xAuLL:
    case 0x2AuLL:
      v15 = result;
      [result setOrthogonalScrollingBehavior_];
      [v15 setInterGroupSpacing_];
      goto LABEL_14;
    case 0xEuLL:
      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x20))
      {
        goto LABEL_28;
      }

      return result;
    case 0x16uLL:
      v18 = 66.0;
      v19 = 80.0;
      v16 = 0.0;
      v17 = 0.0;
      goto LABEL_36;
    case 0x17uLL:
      v19 = 80.0;
      v16 = 0.0;
      v17 = 0.0;
      v18 = 30.0;
      goto LABEL_36;
    case 0x1CuLL:
      v29 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
      v30 = result;
      v15 = sub_20BF0ABF0(v29, a2, a3, a4, a5, a6, a7);
      [v15 contentInsets];
      [v15 setContentInsets_];

      goto LABEL_38;
    case 0x1EuLL:
      v23 = result;
      v28 = &unk_27C7677D0;
      goto LABEL_33;
    case 0x1FuLL:
      v23 = result;
      v28 = &qword_27C762B80;
LABEL_33:
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(v28);
      v26 = swift_projectBox();
      v27 = (v31 + 64);
      goto LABEL_34;
    case 0x20uLL:
      v23 = result;
      v24 = &unk_27C772250;
      goto LABEL_24;
    case 0x21uLL:
      v23 = result;
      v24 = &qword_27C762B28;
      goto LABEL_24;
    case 0x25uLL:
      v15 = result;
      [result setInterGroupSpacing_];
LABEL_14:
      [v15 setContentInsets_];
      goto LABEL_38;
    case 0x29uLL:
      v15 = result;
      [result setContentInsets_];
      [v15 setInterGroupSpacing_];
      goto LABEL_38;
    case 0x32uLL:
      v18 = 40.0;
      v16 = 0.0;
      v17 = 0.0;
LABEL_16:
      v19 = 0.0;
      goto LABEL_36;
    case 0x33uLL:
      v16 = 42.0;
      v17 = 80.0;
      v18 = 22.0;
      goto LABEL_26;
    case 0x39uLL:
      v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
      v21 = result;
      v15 = sub_20BF0ABF0(v20, a2, a3, a4, a5, a6, a7);

      goto LABEL_38;
    case 0x3AuLL:
      v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = result;
      [result setInterGroupSpacing_];
      v16 = 47.0;
      if (v22 != 2)
      {
        v16 = 20.0;
      }

      v17 = 0.0;
      v18 = 16.0;
LABEL_3:
      v19 = 0.0;
      goto LABEL_4;
    case 0x3EuLL:
LABEL_28:
      v16 = *MEMORY[0x277D75060];
      v17 = *(MEMORY[0x277D75060] + 8);
      v18 = *(MEMORY[0x277D75060] + 16);
      v19 = *(MEMORY[0x277D75060] + 24);
LABEL_36:
      v15 = result;
      goto LABEL_37;
    case 0x3FuLL:
      v15 = result;
      [result setContentInsets_];
      [v15 contentInsets];
      v16 = 65.0;
LABEL_4:
      result = v15;
      goto LABEL_37;
    case 0x48uLL:
      v15 = result;
      [result setOrthogonalScrollingBehavior_];
      [v15 contentInsets];
      [v15 setContentInsets_];
      [v15 contentInsets];
      [v15 setContentInsets_];
      [v15 setInterGroupSpacing_];
      goto LABEL_38;
    case 0x49uLL:
      v16 = 60.0;
      v18 = 50.0;
      v17 = 80.0;
LABEL_26:
      v15 = result;
      v19 = 80.0;
LABEL_37:
      [result setContentInsets_];
      goto LABEL_38;
    case 0x4AuLL:
      v23 = result;
      v24 = &unk_27C762A70;
LABEL_24:
      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(v24);
      v26 = swift_projectBox();
      v27 = (v25 + 48);
LABEL_34:
      v15 = sub_20BF0C188(*(v26 + *v27), a2);

LABEL_38:
      result = v15;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_20BF0B0DC(uint64_t a1, unint64_t a2, void *a3)
{
  v5 = *(a1 + 144);
  v40 = *(a1 + 128);
  v41 = v5;
  v42 = *(a1 + 160);
  v6 = *(a1 + 80);
  v37[4] = *(a1 + 64);
  v37[5] = v6;
  v7 = *(a1 + 112);
  v38 = *(a1 + 96);
  v39 = v7;
  v8 = *(a1 + 16);
  v37[0] = *a1;
  v37[1] = v8;
  v9 = *(a1 + 48);
  v37[2] = *(a1 + 32);
  v37[3] = v9;
  if (sub_20B5EAF8C(v37) == 1)
  {
    return MEMORY[0x277D84F90];
  }

  result = MEMORY[0x277D84F90];
  if (!*(*(&v38 + 1) + 16))
  {
    return result;
  }

  v11 = *(*(&v38 + 1) + 32);
  v36 = MEMORY[0x277D84F90];

  v12 = sub_20BF098D4(v11);
  if (!swift_conformsToProtocol2() || !v12 || ((a2 >> 57) & 0x78 | a2 & 7) != 0x1C || (v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x18)) == 0 || ((v13 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(v13) & 0xF) : (v14 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10) & 0xFFFFFFFFFFFFLL), !v14))
  {

    return MEMORY[0x277D84F90];
  }

  v15 = [objc_allocWithZone(type metadata accessor for TVShelfHeaderAnnotatedTitleView()) initWithFrame_];
  v16 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x18);
  v17 = *&v15[OBJC_IVAR____TtC9SeymourUI31TVShelfHeaderAnnotatedTitleView_headerLabel];
  if (v16)
  {
    v18 = sub_20C13C914();
  }

  else
  {
    v18 = 0;
  }

  [v17 setText_];

  [objc_msgSend(a3 container)];
  v20 = v19;
  swift_unknownObjectRelease();
  LODWORD(v21) = 1112014848;
  LODWORD(v22) = 1112014848;
  [v15 systemLayoutSizeFittingSize:v20 withHorizontalFittingPriority:COERCE_DOUBLE(1) verticalFittingPriority:{v21, v22}];
  v24 = v23;
  v25 = objc_opt_self();
  v26 = [v25 fractionalWidthDimension_];
  v27 = [v25 absoluteDimension_];
  v28 = [objc_opt_self() sizeWithWidthDimension:v26 heightDimension:v27];

  v29 = [v28 heightDimension];
  [v29 dimension];
  v31 = v30;

  v32 = [objc_opt_self() layoutAnchorWithEdges:3 absoluteOffset:{0.0, -4.0 - v31}];
  v33 = sub_20C13C914();
  v34 = [objc_opt_self() supplementaryItemWithLayoutSize:v28 elementKind:v33 containerAnchor:v32];

  v35 = v34;
  MEMORY[0x20F2F43B0]();
  if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_20C13CCA4();
  }

  sub_20C13CCE4();

  return v36;
}

id sub_20BF0B488(unint64_t a1, __int128 *a2, void *a3, uint64_t a4, uint64_t a5, double a6, double a7, double a8, double a9)
{
  v12 = a2[9];
  v63 = a2[8];
  v64 = v12;
  v65 = *(a2 + 20);
  v13 = a2[5];
  v59 = a2[4];
  v60 = v13;
  v14 = a2[7];
  v61 = a2[6];
  v62 = v14;
  v15 = a2[1];
  v55 = *a2;
  v56 = v15;
  v16 = a2[3];
  v57 = a2[2];
  v58 = v16;
  switch((a1 >> 57) & 0x78 | a1 & 7)
  {
    case 7uLL:
    case 9uLL:
    case 0xFuLL:
    case 0x18uLL:
    case 0x32uLL:
    case 0x4DuLL:
      v25 = objc_opt_self();
      swift_retain_n();
      v26 = [v25 fractionalWidthDimension_];
      v27 = [v25 fractionalHeightDimension_];
      v28 = [objc_opt_self() sizeWithWidthDimension:v26 heightDimension:v27];

      v29 = [objc_opt_self() itemWithLayoutSize_];

      return v29;
    case 0x17uLL:
      swift_retain_n();
      v33 = sub_20B97D79C(a1, a3, a6, a7, a8, a9);
      v40 = [objc_opt_self() fractionalWidthDimension_];
      v41 = [v33 heightDimension];
      v36 = [objc_opt_self() sizeWithWidthDimension:v40 heightDimension:v41];

      v37 = [objc_opt_self() itemWithLayoutSize_];
      goto LABEL_11;
    case 0x1CuLL:
      v30 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
      swift_retain_n();
      v32 = sub_20BF0B488(v30, a2, a3, a4, a5, a6, a7, a8, a9);
      v49 = v62;
      v50 = v63;
      v51 = v64;
      v52 = v65;
      v46 = v59;
      v47 = v60;
      v48 = v61;
      v42 = v55;
      v43 = v56;
      v44 = v57;
      v45 = v58;
      nullsub_1(&v42);
      v53[8] = v50;
      v53[9] = v51;
      v54 = v52;
      v53[4] = v46;
      v53[5] = v47;
      v53[6] = v48;
      v53[7] = v49;
      v53[0] = v42;
      v53[1] = v43;
      v53[2] = v44;
      v53[3] = v45;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_20BF0B0DC(v53, a1, a3);
      }

      v33 = [v32 layoutSize];
      sub_20B51C88C(0, &qword_27C764D10);
      v36 = sub_20C13CC54();

      v23 = [objc_opt_self() itemWithLayoutSize:v33 supplementaryItems:v36];

      goto LABEL_13;
    case 0x25uLL:
      swift_retain_n();
      v33 = sub_20B97D79C(a1, a3, a6, a7, a8, a9);
      v34 = [objc_opt_self() fractionalWidthDimension_];
      v35 = [v33 heightDimension];
      v36 = [objc_opt_self() sizeWithWidthDimension:v34 heightDimension:v35];

      v37 = [objc_opt_self() itemWithLayoutSize_];
LABEL_11:
      v23 = v37;

LABEL_13:

      return v23;
    case 0x39uLL:
      v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);

      v29 = sub_20BF0B488(v38, a2, a3, a4, a5, a6, a7, a8, a9);

      return v29;
    default:
      swift_retain_n();
      v22 = sub_20B97D79C(a1, a3, a6, a7, a8, a9);
      v23 = [objc_opt_self() itemWithLayoutSize_];

      return v23;
  }
}

id sub_20BF0BAD0(unsigned __int8 a1, void *a2)
{
  if (a1 > 0x12u)
  {
    if (a1 > 0x21u)
    {
      if (a1 == 34)
      {
        goto LABEL_9;
      }

      if (a1 == 37)
      {
        v13 = [objc_opt_self() fractionalWidthDimension_];
        v14 = [a2 layoutSize];
        v15 = [v14 heightDimension];

        v6 = [objc_opt_self() sizeWithWidthDimension:v13 heightDimension:v15];
        sub_20B51C88C(0, &qword_27C770590);
        v16 = sub_20C13D454();
        goto LABEL_26;
      }
    }

    else
    {
      if (a1 == 19)
      {
        goto LABEL_18;
      }

      if (a1 == 25)
      {
LABEL_9:
        v3 = [objc_opt_self() fractionalWidthDimension_];
        v4 = [a2 layoutSize];
        v5 = [v4 heightDimension];

        v6 = [objc_opt_self() sizeWithWidthDimension:v3 heightDimension:v5];
        v7 = [objc_opt_self() horizontalGroupWithLayoutSize:v6 repeatingSubitem:a2 count:3];
LABEL_25:
        v16 = v7;
        goto LABEL_26;
      }
    }

LABEL_24:
    v28 = objc_opt_self();
    v6 = [a2 layoutSize];
    v7 = [v28 verticalGroupWithLayoutSize:v6 repeatingSubitem:a2 count:1];
    goto LABEL_25;
  }

  if (a1 <= 0xAu)
  {
    if (a1 != 5)
    {
      if (a1 != 8)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

    goto LABEL_12;
  }

  if (a1 == 11)
  {
LABEL_18:
    v17 = [objc_opt_self() fractionalWidthDimension_];
    v18 = [a2 layoutSize];
    v19 = [v18 heightDimension];

    v6 = [objc_opt_self() sizeWithWidthDimension:v17 heightDimension:v19];
    v7 = [objc_opt_self() horizontalGroupWithLayoutSize:v6 repeatingSubitem:a2 count:4];
    goto LABEL_25;
  }

  if (a1 != 13)
  {
    goto LABEL_24;
  }

LABEL_12:
  v8 = sub_20C135184();
  v10 = v9;
  if (v8 == sub_20C135184() && v10 == v11)
  {

    v12 = 3;
  }

  else
  {
    v20 = sub_20C13DFF4();

    if (v20)
    {
      v12 = 3;
    }

    else
    {
      v12 = 2;
    }
  }

  v21 = [a2 layoutSize];
  v22 = [v21 heightDimension];

  [v22 dimension];
  v24 = v23;

  v25 = [a2 layoutSize];
  v26 = [v25 widthDimension];

  v27 = [objc_opt_self() absoluteDimension_];
  v6 = [objc_opt_self() sizeWithWidthDimension:v26 heightDimension:v27];

  sub_20B51C88C(0, &qword_27C770590);
  v16 = sub_20C13D454();
LABEL_26:
  v29 = v16;

  v30 = objc_opt_self();
  v31 = v29;
  v32 = [v30 fixedSpacing_];
  [v31 setInterItemSpacing_];

  return v31;
}

id sub_20BF0C188(unsigned __int8 a1, uint64_t a2)
{
  v3 = [objc_opt_self() sectionWithGroup_];
  [v3 setContentInsets_];
  if (a1 <= 0x12u)
  {
    if (a1 <= 7u)
    {
      if (a1 != 5)
      {
        if (a1 == 6)
        {
          [v3 setOrthogonalScrollingBehavior_];
          v4 = 60.0;
LABEL_28:
          [v3 setInterGroupSpacing_];
          return v3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (a1 == 8 || a1 == 11)
      {
LABEL_17:
        [v3 setContentInsets_];
LABEL_27:
        v4 = 66.0;
        goto LABEL_28;
      }

      if (a1 != 13)
      {
        goto LABEL_16;
      }
    }

    [v3 setOrthogonalScrollingBehavior_];
    goto LABEL_22;
  }

  if (a1 > 0x21u)
  {
    if (a1 == 34)
    {
      [v3 setContentInsets_];
      goto LABEL_27;
    }

    if (a1 != 37)
    {
      if (a1 == 45)
      {
        [v3 contentInsets];
        [v3 setContentInsets_];
      }

      goto LABEL_16;
    }

    [v3 setOrthogonalScrollingBehavior_];
    [v3 setInterGroupSpacing_];
    [v3 setContentInsets_];
    [v3 contentInsets];
    [v3 setContentInsets_];
    [v3 contentInsets];
    [v3 setContentInsets_];
    return v3;
  }

  if (a1 == 19)
  {
LABEL_22:
    [v3 setContentInsets_];
    goto LABEL_23;
  }

  if (a1 != 22)
  {
    if (a1 != 25)
    {
LABEL_16:
      [v3 setOrthogonalScrollingBehavior_];
LABEL_23:
      v4 = 40.0;
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  [v3 setOrthogonalScrollingBehavior_];
  [v3 contentInsets];
  [v3 setContentInsets_];
  [v3 setInterGroupSpacing_];
  return v3;
}

uint64_t sub_20BF0C464(_OWORD *a1, void *a2, double a3, double a4, double a5, double a6)
{
  v12 = a1[9];
  v104[8] = a1[8];
  v105[0] = v12;
  *(v105 + 9) = *(a1 + 153);
  v13 = a1[5];
  v104[4] = a1[4];
  v104[5] = v13;
  v14 = a1[7];
  v104[6] = a1[6];
  v104[7] = v14;
  v15 = a1[1];
  v104[0] = *a1;
  v104[1] = v15;
  v16 = a1[3];
  v104[2] = a1[2];
  v104[3] = v16;
  if (sub_20B97E368(v104) == 1)
  {
    *&__dst = *nullsub_1(v104);

    result = sub_20B8DBC08(v17);
    v19 = __dst;
    v20 = *(__dst + 16);
    if (!v20)
    {
      v21 = MEMORY[0x277D84F90];
      goto LABEL_4;
    }
  }

  else
  {
    v40 = nullsub_1(v104);
    v113 = *(v40 + 112);
    v114 = *(v40 + 128);
    v115 = *(v40 + 144);
    v116 = *(v40 + 160);
    v109 = *(v40 + 48);
    v110 = *(v40 + 64);
    v111 = *(v40 + 80);
    v112 = *(v40 + 96);
    v106 = *v40;
    v107 = *(v40 + 16);
    v108 = *(v40 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C76ACA8);
    v19 = swift_allocObject();
    v41 = v114;
    v42 = v115;
    v43 = v112;
    *(v19 + 144) = v113;
    *(v19 + 160) = v41;
    *(v19 + 176) = v42;
    v44 = v110;
    v45 = v111;
    v46 = v108;
    *(v19 + 80) = v109;
    *(v19 + 96) = v44;
    *(v19 + 112) = v45;
    *(v19 + 128) = v43;
    v47 = v106;
    v48 = v107;
    *(v19 + 16) = xmmword_20C14F980;
    *(v19 + 32) = v47;
    *(v19 + 192) = v116;
    *(v19 + 48) = v48;
    *(v19 + 64) = v46;
    v49 = a1[9];
    v80 = a1[8];
    *v81 = v49;
    *&v81[9] = *(a1 + 153);
    v50 = a1[5];
    v76 = a1[4];
    v77 = v50;
    v51 = a1[7];
    v78 = a1[6];
    v79 = v51;
    v52 = a1[1];
    __dst = *a1;
    v73 = v52;
    v53 = a1[3];
    v74 = a1[2];
    v75 = v53;
    v54 = nullsub_1(&__dst);
    result = sub_20BF0CAB8(v54, &v93);
    v20 = 1;
  }

  v55 = 0;
  v21 = MEMORY[0x277D84F90];
  do
  {
    v56 = 168 * v55 + 32;
    v57 = v55;
    while (1)
    {
      if (v57 >= *(v19 + 16))
      {
        __break(1u);
        return result;
      }

      v113 = *(v19 + v56 + 112);
      v114 = *(v19 + v56 + 128);
      v115 = *(v19 + v56 + 144);
      v116 = *(v19 + v56 + 160);
      v109 = *(v19 + v56 + 48);
      v110 = *(v19 + v56 + 64);
      v111 = *(v19 + v56 + 80);
      v112 = *(v19 + v56 + 96);
      v106 = *(v19 + v56);
      v107 = *(v19 + v56 + 16);
      v108 = *(v19 + v56 + 32);
      v55 = v57 + 1;
      memmove(&__dst, (v19 + v56), 0xA8uLL);
      result = sub_20B5EAF8C(&__dst);
      if (result != 1)
      {
        break;
      }

      v56 += 168;
      ++v57;
      if (v20 == v55)
      {
        goto LABEL_4;
      }
    }

    v101 = v114;
    v102 = v115;
    v103 = v116;
    v97 = v110;
    v98 = v111;
    v99 = v112;
    v100 = v113;
    v93 = v106;
    v94 = v107;
    v95 = v108;
    v96 = v109;
    sub_20B622224(&v93, &v82);
    result = swift_isUniquelyReferenced_nonNull_native();
    v58 = a2;
    if ((result & 1) == 0)
    {
      result = sub_20BC08734(0, *(v21 + 16) + 1, 1, v21);
      v21 = result;
    }

    v60 = *(v21 + 16);
    v59 = *(v21 + 24);
    if (v60 >= v59 >> 1)
    {
      result = sub_20BC08734((v59 > 1), v60 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 16) = v60 + 1;
    v61 = v21 + 168 * v60;
    v62 = v93;
    v63 = v95;
    *(v61 + 48) = v94;
    *(v61 + 64) = v63;
    *(v61 + 32) = v62;
    v64 = v96;
    v65 = v97;
    v66 = v99;
    *(v61 + 112) = v98;
    *(v61 + 128) = v66;
    *(v61 + 80) = v64;
    *(v61 + 96) = v65;
    v67 = v100;
    v68 = v101;
    v69 = v102;
    *(v61 + 192) = v103;
    *(v61 + 160) = v68;
    *(v61 + 176) = v69;
    *(v61 + 144) = v67;
    a2 = v58;
  }

  while (v20 - 1 != v57);
LABEL_4:

  if (*(v21 + 16))
  {
    v22 = *(v21 + 32);
    v23 = *(v21 + 64);
    v24 = *(v21 + 80);
    v25 = *(v21 + 112);
    v76 = *(v21 + 96);
    v77 = v25;
    v74 = v23;
    v75 = v24;
    v26 = *(v21 + 128);
    v27 = *(v21 + 144);
    v28 = *(v21 + 160);
    v29 = *(v21 + 176);
    *&v81[16] = *(v21 + 192);
    v80 = v28;
    *v81 = v29;
    v78 = v26;
    v79 = v27;
    v30 = *(v21 + 48);
    __dst = v22;
    v73 = v30;
    v31 = *(v21 + 160);
    v100 = *(v21 + 144);
    v101 = v31;
    v102 = *(v21 + 176);
    v103 = *(v21 + 192);
    v32 = *(v21 + 96);
    v96 = *(v21 + 80);
    v97 = v32;
    v33 = *(v21 + 128);
    v98 = *(v21 + 112);
    v99 = v33;
    v34 = *(v21 + 48);
    v93 = *(v21 + 32);
    v94 = v34;
    v95 = *(v21 + 64);
    sub_20B622224(&__dst, &v106);

    if (*(*(&v78 + 1) + 16))
    {
      v35 = *(*(&v78 + 1) + 32);
      v36 = swift_allocObject();
      swift_weakInit();

      v37 = sub_20BF0B488(v35, &__dst, a2, v71, v36, a3, a4, a5, a6);
      v38 = sub_20BF0A170(v35, v37, a2, a3, a4, a5, a6);
      v39 = sub_20BF0ABF0(v35, v38, a2, a3, a4, a5, a6);
      swift_weakInit();
      v90 = v101;
      v91 = v102;
      v92 = v103;
      v86 = v97;
      v87 = v98;
      v88 = v99;
      v89 = v100;
      v82 = v93;
      v83 = v94;
      v84 = v95;
      v85 = v96;
      nullsub_1(&v82);
      v114 = v90;
      v115 = v91;
      v116 = v92;
      v110 = v86;
      v111 = v87;
      v112 = v88;
      v113 = v89;
      v106 = v82;
      v107 = v83;
      v108 = v84;
      v109 = v85;
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_20BF09D10(&v106, a2, a3, a4, a5, a6);
        sub_20B621D00(&__dst);
      }

      else
      {
        sub_20B621D00(&__dst);
      }

      sub_20B51C88C(0, &qword_27C766528);
      v70 = sub_20C13CC54();

      [v39 setBoundarySupplementaryItems_];

      swift_weakDestroy();
    }

    else
    {
      sub_20B621D00(&__dst);
      return 0;
    }
  }

  else
  {

    return 0;
  }

  return v39;
}

uint64_t sub_20BF0CAB8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C770588);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_20BF0CB28(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  *&v4[OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v10 = OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_itemInfo;
  v11 = type metadata accessor for ShelfCellItemInfo();
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  v12 = &v5[OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_defaultButtonInsets];
  *v12 = xmmword_20C16E7D0;
  v12[1] = xmmword_20C16E7D0;
  v13 = OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_titleLabel;
  v14 = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  [v14 setTranslatesAutoresizingMaskIntoConstraints_];
  [v14 setAdjustsFontForContentSizeCategory_];
  v15 = *MEMORY[0x277D743F8];
  v16 = [objc_opt_self() preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76A20] compatibleWithTraitCollection:0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C7731F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_20C14F980;
  v18 = *MEMORY[0x277D74380];
  *(inited + 32) = *MEMORY[0x277D74380];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771970);
  v19 = swift_initStackObject();
  v20 = MEMORY[0x277D74430];
  *(v19 + 16) = xmmword_20C14F980;
  v21 = *v20;
  *(v19 + 32) = *v20;
  *(v19 + 40) = v15;
  v22 = v18;
  v23 = v21;
  v24 = sub_20B6B134C(v19);
  swift_setDeallocating();
  sub_20B520158(v19 + 32, &unk_27C773200);
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C771980);
  *(inited + 40) = v24;
  sub_20B6B143C(inited);
  swift_setDeallocating();
  sub_20B520158(inited + 32, &qword_27C773210);
  type metadata accessor for AttributeName(0);
  sub_20B7AA590(&qword_27C7618A0, type metadata accessor for AttributeName);
  v25 = sub_20C13C744();

  v26 = [v16 fontDescriptorByAddingAttributes_];

  v27 = objc_opt_self();
  v28 = [v27 fontWithDescriptor:v26 size:0.0];

  [v14 setFont_];
  v29 = [objc_opt_self() whiteColor];
  [v14 setTextColor_];

  [v14 setLineBreakMode_];
  [v14 setNumberOfLines_];
  LODWORD(v30) = 1148846080;
  [v14 setContentCompressionResistancePriority:1 forAxis:v30];

  *&v5[v13] = v14;
  v31 = OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_sortButton;
  type metadata accessor for SortButton();
  v32 = [swift_getObjCClassFromMetadata() buttonWithType_];
  [v32 setTranslatesAutoresizingMaskIntoConstraints_];
  v33 = [v32 titleLabel];
  [v33 setAdjustsFontForContentSizeCategory_];

  type metadata accessor for UILayoutPriority(0);
  v95 = 1144750080;
  v94 = 1065353216;
  sub_20B7AA590(&qword_27C768270, type metadata accessor for UILayoutPriority);
  sub_20C13BB94();
  LODWORD(v34) = v96;
  [v32 setContentHuggingPriority:0 forAxis:v34];
  v35 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  [v32 setTintColor_];

  LODWORD(v36) = 1148846080;
  [v32 setContentCompressionResistancePriority:0 forAxis:v36];
  LODWORD(v37) = 1148846080;
  [v32 setContentCompressionResistancePriority:1 forAxis:v37];

  *&v5[v31] = v32;
  v38 = &v5[OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_localizer];
  *v38 = 0u;
  *(v38 + 1) = 0u;
  *(v38 + 4) = 0;
  v5[OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_shouldTriggerDismissEvent] = 1;
  v93.receiver = v5;
  v93.super_class = type metadata accessor for SortingHeaderCell();
  v39 = objc_msgSendSuper2(&v93, sel_initWithFrame_, a1, a2, a3, a4);
  v40 = [v39 contentView];
  v41 = OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_titleLabel;
  [v40 addSubview_];

  v42 = v39;
  v43 = [v42 contentView];
  v44 = OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_sortButton;
  [v43 addSubview_];

  *(*&v42[v44] + OBJC_IVAR____TtC9SeymourUI10SortButton_delegate + 8) = &off_2822F5C20;
  swift_unknownObjectWeakAssign();
  [*&v42[v44] setShowsMenuAsPrimaryAction_];
  v45 = *&v42[v44];
  [v45 addTarget:v42 action:sel_handleMenuActionTriggered_ forControlEvents:0x4000];

  v46 = [*&v42[v44] titleLabel];
  v47 = MEMORY[0x277D769D0];
  if (v46)
  {
    v48 = v46;
    v49 = [v27 preferredFontForTextStyle_];
    [v48 setFont_];
  }

  v50 = [*&v42[v44] titleLabel];
  if (v50)
  {
    v51 = v50;
    v52 = [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
    [v51 setTextColor_];
  }

  v53 = *v47;
  v54 = *&v42[v44];
  v55 = [v27 preferredFontForTextStyle_];
  [v55 smu:4.0 scaledValueForValue:?];
  v57 = v56;
  [v55 smu:10.0 scaledValueForValue:?];
  v59 = v58;
  [v55 smu:4.0 scaledValueForValue:?];
  v61 = v60;
  [v55 smu:10.0 scaledValueForValue:?];
  v63 = v62;

  [v54 setContentEdgeInsets_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7629D0);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_20C14FE90;
  v65 = [*&v39[v41] leadingAnchor];
  v66 = [v42 contentView];
  v67 = [v66 leadingAnchor];

  v68 = [v65 constraintEqualToAnchor_];
  *(v64 + 32) = v68;
  v69 = [*&v39[v41] topAnchor];
  v70 = [v42 contentView];
  v71 = [v70 topAnchor];

  v72 = [v69 &selRef:v71 alertControllerReleasedDictationButton:? + 5];
  *(v64 + 40) = v72;
  v73 = [*&v39[v41] bottomAnchor];
  v74 = [v42 contentView];
  v75 = [v74 bottomAnchor];

  v76 = [v73 &selRef:v75 alertControllerReleasedDictationButton:? + 5];
  *(v64 + 48) = v76;
  v77 = [*&v39[v41] trailingAnchor];
  v78 = [*&v42[v44] leadingAnchor];
  v79 = [v77 &selRef:v78 alertControllerReleasedDictationButton:? + 5];

  *(v64 + 56) = v79;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_20C151490;
  v81 = [*&v42[v44] trailingAnchor];
  v82 = [v42 contentView];
  v83 = [v82 trailingAnchor];

  v84 = [v81 &selRef:v83 alertControllerReleasedDictationButton:? + 5];
  *(v80 + 32) = v84;
  v85 = [*&v42[v44] firstBaselineAnchor];
  v86 = [*&v39[v41] firstBaselineAnchor];
  v87 = [v85 &selRef:v86 alertControllerReleasedDictationButton:? + 5];

  *(v80 + 40) = v87;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C768260);
  v88 = swift_initStackObject();
  *(v88 + 16) = xmmword_20C14F320;
  *(v88 + 32) = v64;
  *(v88 + 40) = v80;
  v89 = objc_opt_self();
  sub_20BE54D20(v88);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C7677E0);
  swift_arrayDestroy();
  sub_20B51C88C(0, &qword_281100500);
  v90 = sub_20C13CC54();

  [v89 activateConstraints_];

  v91 = [objc_opt_self() defaultCenter];
  [v91 addObserver:v42 selector:sel_textSizeChanged_ name:*MEMORY[0x277D76810] object:0];

  return v42;
}

id sub_20BF0D9A8()
{
  v1 = *&v0[OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_sortButton];
  v2 = [v1 titleLabel];
  if (v2)
  {
    v3 = v2;
    v4 = objc_opt_self();
    v5 = *MEMORY[0x277D769D0];
    v6 = [v4 preferredFontForTextStyle_];
    [v3 setFont_];
  }

  else
  {
    v5 = *MEMORY[0x277D769D0];
  }

  v7 = [objc_opt_self() preferredFontForTextStyle_];
  [v7 smu:4.0 scaledValueForValue:?];
  v9 = v8;
  [v7 smu:10.0 scaledValueForValue:?];
  v11 = v10;
  [v7 smu:4.0 scaledValueForValue:?];
  v13 = v12;
  [v7 smu:10.0 scaledValueForValue:?];
  v15 = v14;

  [v1 setContentEdgeInsets_];

  return [v0 setNeedsLayout];
}

void sub_20BF0DC0C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_20C133244();
  v25 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ShelfItemAction();
  MEMORY[0x28223BE20](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    *(Strong + OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_shouldTriggerDismissEvent) = 0;
    v18 = swift_unknownObjectWeakLoadStrong();
    if (v18)
    {
      v19 = v18;
      *v15 = a3 & 1;
      *(v15 + 1) = a4;
      *(v15 + 2) = a5;
      v15[24] = a6;
      v20 = swift_storeEnumTagMultiPayload();
      MEMORY[0x28223BE20](v20);
      *(&v25 - 4) = 0;
      *(&v25 - 24) = 1;
      *(&v25 - 2) = v15;
      *(&v25 - 1) = v19;
      v21 = *(v19 + OBJC_IVAR____TtC9SeymourUI11CatalogPage_collectionView);

      v22 = v17;
      v23 = [v21 indexPathForCell_];
      if (v23)
      {
        v24 = v23;
        sub_20C1331E4();

        sub_20C0C1CDC(v12, sub_20B5E275C);
        (*(v25 + 8))(v12, v10);
      }

      swift_unknownObjectRelease();

      sub_20B5E2760(v15);
    }

    else
    {
    }
  }
}

id sub_20BF0DE78()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SortingHeaderCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SortingHeaderCell()
{
  result = qword_27C7705C8;
  if (!qword_27C7705C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20BF0DF94()
{
  sub_20B5E238C();
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_20BF0E05C(uint64_t a1, uint64_t a2)
{
  *(v2 + OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_20BF0E0A8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_itemInfo;
  swift_beginAccess();
  return sub_20B5E26EC(v1 + v3, a1);
}

uint64_t sub_20BF0E100(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_itemInfo;
  swift_beginAccess();
  sub_20B5E267C(a1, v1 + v3);
  return swift_endAccess();
}

id sub_20BF0E164(unint64_t a1)
{
  v2 = v1;
  v4 = sub_20C13BB84();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (((a1 >> 57) & 0x78 | a1 & 7) == 0x38)
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x20);
    v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x28);
    v10 = *&v2[OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_titleLabel];
    v11 = sub_20C13C914();
    [v10 setText_];

    v12 = *&v2[OBJC_IVAR____TtC9SeymourUI17SortingHeaderCell_sortButton];
    [v12 setAttributedTitle:v8 forState:0];
    v13 = *(v9 + 16);
    if (v13)
    {
      v37 = v12;
      v39 = MEMORY[0x277D84F90];
      sub_20C13DD64();
      sub_20B51C88C(0, &qword_27C7713A0);
      v14 = (v9 + 56);
      v15 = v2;
      do
      {
        v16 = *(v14 - 24);
        v17 = *(v14 - 2);
        v18 = *(v14 - 1);
        v19 = *v14;
        v14 += 32;
        v20 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v21 = swift_allocObject();
        *(v21 + 16) = v20;
        *(v21 + 24) = v16;
        *(v21 + 32) = v17;
        *(v21 + 40) = v18;
        *(v21 + 48) = v19;
        swift_bridgeObjectRetain_n();
        sub_20C13D624();
        sub_20C13DD34();
        sub_20C13DD74();
        sub_20C13DD84();
        sub_20C13DD44();
        --v13;
      }

      while (v13);
      sub_20B51C88C(0, &unk_27C76FED0);
      v22 = sub_20C13D554();
      v2 = v15;
      v12 = v37;
    }

    else
    {
      v22 = 0;
    }

    [v12 setMenu_];
  }

  else
  {
    sub_20C13B534();

    v23 = v1;
    v24 = sub_20C13BB74();
    v25 = sub_20C13D1D4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v36 = v27;
      v37 = swift_slowAlloc();
      v38 = a1;
      v39 = v37;
      *v26 = 138543618;
      *(v26 + 4) = v23;
      *v27 = v23;
      *(v26 + 12) = 2082;
      v28 = sub_20B5F66D0();
      v29 = v23;
      v30 = MEMORY[0x20F2EFA40](&type metadata for ShelfItem, v28);
      v32 = sub_20B51E694(v30, v31, &v39);

      *(v26 + 14) = v32;
      _os_log_impl(&dword_20B517000, v24, v25, "Attempted to configure %{public}@ with item: %{public}s", v26, 0x16u);
      v33 = v36;
      sub_20B520158(v36, &unk_27C762E30);
      MEMORY[0x20F2F6A40](v33, -1, -1);
      v34 = v37;
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x20F2F6A40](v34, -1, -1);
      MEMORY[0x20F2F6A40](v26, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
  }

  return [v2 setNeedsLayout];
}