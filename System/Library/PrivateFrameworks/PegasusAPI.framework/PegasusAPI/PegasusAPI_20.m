uint64_t sub_1B8E9DFA4()
{
  OUTLINED_FUNCTION_468();
  v2 = v1(0);
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_432();
  v6(v5);
  return v0;
}

uint64_t sub_1B8E9DFFC()
{
  v1 = OUTLINED_FUNCTION_313();
  v3 = v2(v1);
  OUTLINED_FUNCTION_59_1(v3);
  (*(v4 + 8))(v0);
  return v0;
}

uint64_t sub_1B8E9E174(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F40(&qword_1EBABCF48, type metadata accessor for Mapspb_LocalSearchBusiness);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E9E1F4(uint64_t a1)
{
  v2 = sub_1B8CD1F40(&qword_1EBABAFC8, type metadata accessor for Mapspb_LocalSearchBusiness);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E9E264()
{
  sub_1B8CD1F40(&qword_1EBABAFC8, type metadata accessor for Mapspb_LocalSearchBusiness);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E9E304()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCDA0);
  __swift_project_value_buffer(v0, qword_1EBABCDA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "day_of_week";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "open_time";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "close_time";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Mapspb_Hours.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C540();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t Mapspb_Hours.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
    {
      if (!*(v2 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
      {
        v7 = *(type metadata accessor for Mapspb_Hours(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Mapspb_Hours.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || *(v3 + 16) != *(v2 + 16) || *(v3 + 20) != *(v2 + 20))
  {
    return 0;
  }

  v7 = *(type metadata accessor for Mapspb_Hours(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_24();
  sub_1B8CD1F40(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E9E794(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F40(&qword_1EBABCF40, type metadata accessor for Mapspb_Hours);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E9E814(uint64_t a1)
{
  v2 = sub_1B8CD1F40(&qword_1EBABCE90, type metadata accessor for Mapspb_Hours);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E9E884()
{
  sub_1B8CD1F40(&qword_1EBABCE90, type metadata accessor for Mapspb_Hours);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E9E91C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCDB8);
  __swift_project_value_buffer(v0, qword_1EBABCDB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1B9656CE0;
  v4 = v27 + v3 + v1[14];
  *(v27 + v3) = 1;
  *v4 = "country";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v27 + v3 + v2 + v1[14];
  *(v27 + v3 + v2) = 2;
  *v8 = "country_code";
  *(v8 + 8) = 12;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v27 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "administrative_area";
  *(v11 + 1) = 19;
  v11[16] = 2;
  v7();
  v12 = (v27 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "administrative_area_code";
  *(v13 + 1) = 24;
  v13[16] = 2;
  v7();
  v14 = (v27 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "sub_administrative_area";
  *(v15 + 1) = 23;
  v15[16] = 2;
  v7();
  v16 = (v27 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "locality";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v7();
  v18 = (v27 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "dependent_locality";
  *(v19 + 1) = 18;
  v19[16] = 2;
  v7();
  v20 = (v27 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "thoroughfare";
  *(v21 + 1) = 12;
  v21[16] = 2;
  v7();
  v22 = (v27 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "sub_throughfare";
  *(v23 + 1) = 15;
  v23[16] = 2;
  v7();
  v24 = (v27 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "post_code";
  *(v25 + 1) = 9;
  v25[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Mapspb_StructuredAddress.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 8:
      case 9:
      case 10:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 7:
        OUTLINED_FUNCTION_12();
        sub_1B964C4D0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Mapspb_StructuredAddress.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v13 = v2[6];
        v14 = v2[7];
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          v16 = v2[8];
          v17 = v2[9];
          OUTLINED_FUNCTION_1();
          if (!v18 || (result = OUTLINED_FUNCTION_3(), !v1))
          {
            v19 = v2[10];
            v20 = v2[11];
            OUTLINED_FUNCTION_1();
            if (!v21 || (result = OUTLINED_FUNCTION_3(), !v1))
            {
              if (!*(v2[12] + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6E0(), !v1))
              {
                v22 = v2[13];
                v23 = v2[14];
                OUTLINED_FUNCTION_1();
                if (!v24 || (result = OUTLINED_FUNCTION_3(), !v1))
                {
                  v25 = v2[15];
                  v26 = v2[16];
                  OUTLINED_FUNCTION_1();
                  if (!v27 || (result = OUTLINED_FUNCTION_3(), !v1))
                  {
                    v28 = v2[17];
                    v29 = v2[18];
                    OUTLINED_FUNCTION_1();
                    if (!v30 || (result = OUTLINED_FUNCTION_3(), !v1))
                    {
                      v31 = *(type metadata accessor for Mapspb_StructuredAddress(0) + 56);
                      return OUTLINED_FUNCTION_8_1();
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Mapspb_StructuredAddress.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2] == v2[2] && v3[3] == v2[3];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = v3[8] == v2[8] && v3[9] == v2[9];
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = v3[10] == v2[10] && v3[11] == v2[11];
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((sub_1B8D6123C(v3[12], v2[12]) & 1) == 0)
  {
    return 0;
  }

  v12 = v3[13] == v2[13] && v3[14] == v2[14];
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = v3[15] == v2[15] && v3[16] == v2[16];
  if (!v13 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v14 = v3[17] == v2[17] && v3[18] == v2[18];
  if (!v14 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v15 = *(type metadata accessor for Mapspb_StructuredAddress(0) + 56);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_24();
  sub_1B8CD1F40(v16, v17);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E9F16C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F40(&qword_1EBABCF38, type metadata accessor for Mapspb_StructuredAddress);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E9F1EC(uint64_t a1)
{
  v2 = sub_1B8CD1F40(&qword_1EBABCEA8, type metadata accessor for Mapspb_StructuredAddress);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E9F25C()
{
  sub_1B8CD1F40(&qword_1EBABCEA8, type metadata accessor for Mapspb_StructuredAddress);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E9F300()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCDD0);
  __swift_project_value_buffer(v0, qword_1EBABCDD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 8) = 3;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bundle_id";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "symbol_image";
  *(v15 + 1) = 12;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Mapspb_AppLink.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Mapspb_AppLink.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v7 = v2[2];
    v8 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v10 = v2[4];
      v11 = v2[5];
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v13 = v2[6];
        v14 = v2[7];
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          v16 = *(type metadata accessor for Mapspb_AppLink(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Mapspb_AppLink.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = v3[2] == v2[2] && v3[3] == v2[3];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = v3[4] == v2[4] && v3[5] == v2[5];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = v3[6] == v2[6] && v3[7] == v2[7];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(type metadata accessor for Mapspb_AppLink(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_24();
  sub_1B8CD1F40(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E9F844(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F40(&qword_1EBABCF30, type metadata accessor for Mapspb_AppLink);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E9F8C4(uint64_t a1)
{
  v2 = sub_1B8CD1F40(&qword_1EBABCEC0, type metadata accessor for Mapspb_AppLink);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E9F934()
{
  sub_1B8CD1F40(&qword_1EBABCEC0, type metadata accessor for Mapspb_AppLink);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E9F9D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCDE8);
  __swift_project_value_buffer(v0, qword_1EBABCDE8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "distance";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "transport_type";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Mapspb_ETA.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_9;
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 1:
LABEL_9:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
    }
  }
}

uint64_t Mapspb_ETA.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
    {
      v7 = *(v2 + 24);
      v8 = *(v2 + 32);
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v10 = *(type metadata accessor for Mapspb_ETA(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t static Mapspb_ETA.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  v7 = *(v3 + 24) == *(v2 + 24) && *(v3 + 32) == *(v2 + 32);
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Mapspb_ETA(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_24();
  sub_1B8CD1F40(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8E9FE74(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F40(&qword_1EBABCF28, type metadata accessor for Mapspb_ETA);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8E9FEF4(uint64_t a1)
{
  v2 = sub_1B8CD1F40(&qword_1EBABCED8, type metadata accessor for Mapspb_ETA);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8E9FF64()
{
  sub_1B8CD1F40(&qword_1EBABCED8, type metadata accessor for Mapspb_ETA);

  return sub_1B964C5D0();
}

uint64_t sub_1B8E9FFFC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCE00);
  __swift_project_value_buffer(v0, qword_1EBABCE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "detour_time";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "time_to_place";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "detour_distance";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "distance_to_place";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Mapspb_DetourInfo.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 2:
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      default:
        continue;
    }
  }
}

uint64_t Mapspb_DetourInfo.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
  {
    if (!v2[1] || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
    {
      if (!v2[2] || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
      {
        if (!v2[3] || (OUTLINED_FUNCTION_29(), result = sub_1B964C710(), !v1))
        {
          v4 = *(type metadata accessor for Mapspb_DetourInfo(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Mapspb_DetourInfo.== infix(_:_:)(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v4 + 4) != *(v5 + 4) || *(v3 + 8) != *(v2 + 8) || *(v3 + 12) != *(v2 + 12))
  {
    return 0;
  }

  v6 = *(type metadata accessor for Mapspb_DetourInfo(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_24();
  sub_1B8CD1F40(v7, v8);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EA04B0(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD1F40(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EA0590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F40(&qword_1EBABCF20, type metadata accessor for Mapspb_DetourInfo);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EA0610(uint64_t a1)
{
  v2 = sub_1B8CD1F40(&qword_1EBABCEF0, type metadata accessor for Mapspb_DetourInfo);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EA0680()
{
  sub_1B8CD1F40(&qword_1EBABCEF0, type metadata accessor for Mapspb_DetourInfo);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EA0DE8()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Mapspb_LocalSearchBusiness._StorageClass(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B8EA0EC8()
{
  sub_1B8CD1878();
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void __swift_store_extra_inhabitant_index_99Tm()
{
  OUTLINED_FUNCTION_7();
  if (v3)
  {
    *(v1 + 8) = (v0 - 1);
  }

  else
  {
    v4 = v2;
    sub_1B964C2B0();
    v5 = OUTLINED_FUNCTION_699(*(v4 + 28));

    __swift_storeEnumTagSinglePayload(v5, v6, v0, v7);
  }
}

uint64_t sub_1B8EA1048()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B8EA1110()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8EA1190()
{
  sub_1B8EA140C(319, &qword_1ED9EE060, type metadata accessor for Locationpb_Location);
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    sub_1B8EA140C(319, &qword_1ED9EE090, type metadata accessor for Mapspb_AppLink);
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      sub_1B8EA140C(319, &qword_1ED9EE0A8, type metadata accessor for Mapspb_ETA);
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_1B8EA140C(319, &qword_1ED9EE078, type metadata accessor for Mapspb_DetourInfo);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_1B8EA140C(319, &qword_1ED9CCBB8, type metadata accessor for Mapspb_LocalSearchBusiness);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_1B8EA140C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B964C930();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t OUTLINED_FUNCTION_1_20(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Mapspb_LocalSearchBusiness(0);
  *(a1 + 72) = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_14()
{
  v1 = *(v0 + *(type metadata accessor for Mapspb_LocalSearchBusiness(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_5_12()
{
  result = type metadata accessor for Mapspb_LocalSearchBusiness(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_10_9()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 64);
  v3 = type metadata accessor for Mapspb_LocalSearchBusiness._StorageClass(0);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_11_14()
{
  result = type metadata accessor for Mapspb_LocalSearchBusiness(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_16_11()
{
  v0 = type metadata accessor for Mapspb_LocalSearchBusiness._StorageClass(0);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_22_9()
{
  v1 = *(v0 + *(type metadata accessor for Mapspb_LocalSearchBusiness(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_40_4()
{

  return type metadata accessor for Mapspb_LocalSearchBusiness(0);
}

uint64_t OUTLINED_FUNCTION_41_5()
{

  return type metadata accessor for Mapspb_LocalSearchBusiness(0);
}

uint64_t OUTLINED_FUNCTION_78_1(uint64_t a1)
{
  v2 = *(v1 + *(type metadata accessor for Mapspb_LocalSearchBusiness(a1) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_99_3()
{

  return sub_1B8E9DF4C();
}

void OUTLINED_FUNCTION_109_0()
{
  *v0 = 0;
  *(v0 + 8) = 0xE000000000000000;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0xE000000000000000;
}

uint64_t sub_1B8EA173C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EADBF4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EA1834@<X0>(uint64_t *a1@<X8>)
{
  result = static Moviespb_ShowtimeType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Moviespb_Availability.id.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EA18BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Moviespb_Availability.id.setter();
}

void Moviespb_Availability.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EA66BC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA19EC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.id.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EA66BC(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t Moviespb_Availability.startDate.getter()
{
  OUTLINED_FUNCTION_8_14();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 32);
}

uint64_t Moviespb_Availability.startDate.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Moviespb_Availability(v2) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 32) = v0;
  return result;
}

uint64_t Moviespb_Availability.startDate.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_8_14();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v5 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA1B98(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EA66BC(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 32) = v2;

  free(v1);
}

uint64_t Moviespb_Availability.endDate.getter()
{
  OUTLINED_FUNCTION_8_14();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 40);
}

uint64_t Moviespb_Availability.endDate.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Moviespb_Availability(v2) + 20);
  v4 = *(v1 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_157_2(v8);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v6 + 40) = v0;
  return result;
}

uint64_t Moviespb_Availability.endDate.modify()
{
  v2 = OUTLINED_FUNCTION_196_1();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 80) = v0;
  OUTLINED_FUNCTION_8_14();
  *(v1 + 88) = v4;
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v5 + 40);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA1D4C(uint64_t a1)
{
  OUTLINED_FUNCTION_7_14(a1);
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);
  v5 = *(v4 + v3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v4 + v3);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EA66BC(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_11_4();
  *(v7 + 40) = v2;

  free(v1);
}

void Moviespb_Availability.offerType.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 56);
  OUTLINED_FUNCTION_66_2(*(v0 + 48));
}

void Moviespb_Availability.offerType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_13_7(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 48) = v1;
  *(v6 + 56) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.offerType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 56);
  OUTLINED_FUNCTION_71_2(*(v0 + 48));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA1EEC()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 48) = v1;
  *(v6 + 56) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Moviespb_Availability.webPunchoutOpen.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EA1FB0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Moviespb_Availability.webPunchoutOpen.setter();
}

void Moviespb_Availability.webPunchoutOpen.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EA66BC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 72);
  *(v5 + 64) = v2;
  *(v5 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.webPunchoutOpen.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 72);
  *(v1 + 48) = *(v0 + 64);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA20BC(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.webPunchoutOpen.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EA66BC(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Moviespb_Availability.webPunchoutPlay.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EA2190(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Moviespb_Availability.webPunchoutPlay.setter();
}

void Moviespb_Availability.webPunchoutPlay.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EA66BC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 88);
  *(v5 + 80) = v2;
  *(v5 + 88) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.webPunchoutPlay.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 88);
  *(v1 + 48) = *(v0 + 80);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA229C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.webPunchoutPlay.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EA66BC(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 88);
    *(v9 + 80) = v4;
    *(v9 + 88) = v3;
  }

  free(v1);
}

uint64_t Moviespb_Availability.appPunchoutOpen.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EA2370(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Moviespb_Availability.appPunchoutOpen.setter();
}

void Moviespb_Availability.appPunchoutOpen.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EA66BC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 104);
  *(v5 + 96) = v2;
  *(v5 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.appPunchoutOpen.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 104);
  *(v1 + 48) = *(v0 + 96);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA247C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.appPunchoutOpen.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EA66BC(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 104);
    *(v9 + 96) = v4;
    *(v9 + 104) = v3;
  }

  free(v1);
}

uint64_t Moviespb_Availability.appPunchoutPlay.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EA2550(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Moviespb_Availability.appPunchoutPlay.setter();
}

void Moviespb_Availability.appPunchoutPlay.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EA66BC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 120);
  *(v5 + 112) = v2;
  *(v5 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.appPunchoutPlay.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 120);
  *(v1 + 48) = *(v0 + 112);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA265C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.appPunchoutPlay.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EA66BC(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 120);
    *(v9 + 112) = v4;
    *(v9 + 120) = v3;
  }

  free(v1);
}

uint64_t Moviespb_Availability.canonicalAdamID.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EA2730(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Moviespb_Availability.canonicalAdamID.setter();
}

void Moviespb_Availability.canonicalAdamID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EA66BC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 136);
  *(v5 + 128) = v2;
  *(v5 + 136) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.canonicalAdamID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 136);
  *(v1 + 48) = *(v0 + 128);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA283C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.canonicalAdamID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EA66BC(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 136);
    *(v9 + 128) = v4;
    *(v9 + 136) = v3;
  }

  free(v1);
}

uint64_t Moviespb_Availability.externalID.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EA2910(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Moviespb_Availability.externalID.setter();
}

void Moviespb_Availability.externalID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EA66BC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 152);
  *(v5 + 144) = v2;
  *(v5 + 152) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.externalID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 152);
  *(v1 + 48) = *(v0 + 144);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA2A1C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.externalID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EA66BC(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 152);
    *(v9 + 144) = v4;
    *(v9 + 152) = v3;
  }

  free(v1);
}

void Moviespb_Availability.mediaType.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 168);
  OUTLINED_FUNCTION_66_2(*(v0 + 160));
}

void Moviespb_Availability.mediaType.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_13_7(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 160) = v1;
  *(v6 + 168) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.mediaType.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 168);
  OUTLINED_FUNCTION_71_2(*(v0 + 160));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA2BB4()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 160) = v1;
  *(v6 + 168) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Moviespb_Availability.searchBrandID.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EA2C78(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Moviespb_Availability.searchBrandID.setter();
}

void Moviespb_Availability.searchBrandID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_12_10();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EA66BC(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 184);
  *(v5 + 176) = v2;
  *(v5 + 184) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.searchBrandID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_1_21(v3);
  OUTLINED_FUNCTION_62_0();
  v4 = *(v0 + 184);
  *(v1 + 48) = *(v0 + 176);
  *(v1 + 56) = v4;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EA2D84(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Moviespb_Availability.searchBrandID.setter();
    v7 = v1[7];
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      OUTLINED_FUNCTION_49_4();
      OUTLINED_FUNCTION_29_8();
      swift_allocObject();
      v10 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EA66BC(v10);
      OUTLINED_FUNCTION_168(v11);
    }

    OUTLINED_FUNCTION_59_3();
    v12 = *(v9 + 184);
    *(v9 + 176) = v4;
    *(v9 + 184) = v3;
  }

  free(v1);
}

void Moviespb_Availability.searchBrandState.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 200);
  OUTLINED_FUNCTION_66_2(*(v0 + 192));
}

void Moviespb_Availability.searchBrandState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_13_7(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 192) = v1;
  *(v6 + 200) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.searchBrandState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 200);
  OUTLINED_FUNCTION_71_2(*(v0 + 192));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA2F1C()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 192) = v1;
  *(v6 + 200) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Moviespb_Availability.platformIosState.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 216);
  OUTLINED_FUNCTION_66_2(*(v0 + 208));
}

void Moviespb_Availability.platformIosState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_13_7(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 208) = v1;
  *(v6 + 216) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.platformIosState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 216);
  OUTLINED_FUNCTION_71_2(*(v0 + 208));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA30A4()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 208) = v1;
  *(v6 + 216) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Moviespb_Availability.platformTvosState.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 232);
  OUTLINED_FUNCTION_66_2(*(v0 + 224));
}

void Moviespb_Availability.platformTvosState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_13_7(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 224) = v1;
  *(v6 + 232) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.platformTvosState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 232);
  OUTLINED_FUNCTION_71_2(*(v0 + 224));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA322C()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 224) = v1;
  *(v6 + 232) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

void Moviespb_Availability.platformWebState.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 248);
  OUTLINED_FUNCTION_66_2(*(v0 + 240));
}

void Moviespb_Availability.platformWebState.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_13_7(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 240) = v1;
  *(v6 + 248) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.platformWebState.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 248);
  OUTLINED_FUNCTION_71_2(*(v0 + 240));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA33B4()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 240) = v1;
  *(v6 + 248) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Moviespb_Availability.isMccormickProvider.getter()
{
  OUTLINED_FUNCTION_8_14();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 249);
}

uint64_t Moviespb_Availability.isMccormickProvider.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_65_4();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EA66BC(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 249) = a1 & 1;
  return result;
}

uint64_t Moviespb_Availability.isMccormickProvider.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_8_14();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 249);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA354C(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_82_1();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 249) = v3;

  free(v1);
}

void Moviespb_Availability.videoQuality.getter()
{
  OUTLINED_FUNCTION_6_6();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 264);
  OUTLINED_FUNCTION_66_2(*(v0 + 256));
}

uint64_t sub_1B8EA3650(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *))
{
  v5 = *(a1 + 8);
  v7 = *a1;
  v8 = v5;
  return a5(&v7);
}

void Moviespb_Availability.videoQuality.setter()
{
  OUTLINED_FUNCTION_193_0();
  v5 = OUTLINED_FUNCTION_13_7(v4);
  v6 = *(v0 + v3);
  if ((v5 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_72_2(v8);
  }

  OUTLINED_FUNCTION_9_3();
  *(v6 + 256) = v1;
  *(v6 + 264) = v2;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Moviespb_Availability.videoQuality.modify()
{
  v1 = OUTLINED_FUNCTION_196_1();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_3_14(v2);
  OUTLINED_FUNCTION_62_0();
  v3 = *(v0 + 264);
  OUTLINED_FUNCTION_71_2(*(v0 + 256));
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA3758()
{
  OUTLINED_FUNCTION_243();
  v5 = OUTLINED_FUNCTION_4_15(v4);
  v6 = *(v3 + v0);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_54_3();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_73_2(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 256) = v1;
  *(v6 + 264) = v2;
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Moviespb_Availability.isStereoContent.getter()
{
  OUTLINED_FUNCTION_8_14();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 265);
}

uint64_t Moviespb_Availability.isStereoContent.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_65_4();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EA66BC(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 265) = a1 & 1;
  return result;
}

uint64_t Moviespb_Availability.isStereoContent.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_8_14();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 265);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA38F0(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_82_1();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 265) = v3;

  free(v1);
}

uint64_t Moviespb_Availability.isImmersiveContent.getter()
{
  OUTLINED_FUNCTION_8_14();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 266);
}

uint64_t Moviespb_Availability.isImmersiveContent.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_65_4();
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EA66BC(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 266) = a1 & 1;
  return result;
}

uint64_t Moviespb_Availability.isImmersiveContent.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_8_14();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + 266);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EA3A84(uint64_t a1)
{
  v5 = OUTLINED_FUNCTION_22_0(a1);
  v6 = *(v4 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_82_1();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v7 = OUTLINED_FUNCTION_40_0();
    v8 = sub_1B8EA66BC(v7);
    OUTLINED_FUNCTION_168(v8);
  }

  OUTLINED_FUNCTION_11_4();
  *(v6 + 266) = v3;

  free(v1);
}

uint64_t Moviespb_Availability.unknownFields.getter()
{
  OUTLINED_FUNCTION_27();
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Moviespb_Availability.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t sub_1B8EA3C00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EAF9A4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EA3C80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EAF950();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EA3CF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EAF8FC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EA3D58(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EAF8A8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B8EA3DBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EAF854();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Moviespb_Availability.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Moviespb_Availability(0) + 20);
  if (qword_1EBAB64A0 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBABCFE8;
}

uint64_t sub_1B8EA3F18@<X0>(uint64_t *a1@<X8>)
{
  result = static Moviespb_Availability.OfferType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EA3FC8@<X0>(uint64_t *a1@<X8>)
{
  result = static Moviespb_Availability.MediaType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EA4078@<X0>(uint64_t *a1@<X8>)
{
  result = static Moviespb_Availability.VideoQuality.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EA4128@<X0>(uint64_t *a1@<X8>)
{
  result = static Moviespb_Availability.PlatformState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1B8EA41D8@<X0>(uint64_t *a1@<X8>)
{
  result = static Moviespb_Availability.SearchBrandState.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Moviespb_CommonSense.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Moviespb_CommonSense(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EA4310()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8EA4398()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 24);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Moviespb_ContentRating.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Moviespb_ContentRating(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EA4460@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  v4 = v1 + *(v3(0) + 24);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Moviespb_Trailer.format.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Moviespb_Trailer.format.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Moviespb_Trailer.url.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Moviespb_Trailer.url.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Moviespb_Trailer.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Moviespb_Trailer(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Moviespb_Trailer.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Moviespb_Trailer(v0) + 28);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Moviespb_Trailer.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Moviespb_Trailer(v0) + 28);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EA46B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EAA130();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Moviespb_Trailer.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_74_4(a1);
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  v3 = v1 + *(type metadata accessor for Moviespb_Trailer(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8EA47D0@<X0>(uint64_t *a1@<X8>)
{
  result = static Moviespb_Trailer.FormatType.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Moviespb_RottenTomatoReview.text.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return OUTLINED_FUNCTION_432();
}

uint64_t Moviespb_RottenTomatoReview.text.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 16);

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t Moviespb_RottenTomatoReview.author.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_432();
}

uint64_t Moviespb_RottenTomatoReview.author.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 32);

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Moviespb_RottenTomatoReview.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Moviespb_RottenTomatoReview(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t Moviespb_RottenTomatoReview.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0xE000000000000000;
  *(a1 + 40) = 0;
  v1 = a1 + *(type metadata accessor for Moviespb_RottenTomatoReview(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Moviespb_MovieTheater.state.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Moviespb_MovieTheater.state.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Moviespb_MovieTheater.url.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

uint64_t Moviespb_MovieTheater.url.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 72);

  *(v1 + 64) = v2;
  *(v1 + 72) = v0;
  return result;
}

uint64_t Moviespb_MovieTheater.showtimes.setter(uint64_t a1)
{
  v3 = *(v1 + 80);

  *(v1 + 80) = a1;
  return result;
}

uint64_t Moviespb_MovieTheater.fandangoID.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_432();
}

uint64_t Moviespb_MovieTheater.fandangoID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 120);

  *(v1 + 112) = v2;
  *(v1 + 120) = v0;
  return result;
}

uint64_t Moviespb_MovieTheater.theaterID.getter()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_432();
}

uint64_t Moviespb_MovieTheater.theaterID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 136);

  *(v1 + 128) = v2;
  *(v1 + 136) = v0;
  return result;
}

uint64_t Moviespb_MovieTheater.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Moviespb_MovieTheater(v0) + 60);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Moviespb_MovieTheater.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Moviespb_MovieTheater(v0) + 60);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Moviespb_MovieTheater.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Moviespb_MovieTheater(v0) + 60);
  return OUTLINED_FUNCTION_25();
}

uint64_t Moviespb_MovieTheater.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  *(v1 + 64) = 0;
  *(v1 + 72) = v2;
  *(v1 + 80) = MEMORY[0x1E69E7CC0];
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 120) = v2;
  *(v1 + 128) = 0;
  *(v1 + 136) = v2;
  v3 = v1 + *(type metadata accessor for Moviespb_MovieTheater(0) + 60);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Moviespb_Showtime.time.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = type metadata accessor for Moviespb_Showtime(0);
  sub_1B8EA6D9C(v1 + *(v9 + 28), v8);
  v10 = sub_1B964C110();
  OUTLINED_FUNCTION_178(v8, 1, v10);
  if (!v11)
  {
    return (*(*(v10 - 8) + 32))(a1, v8, v10);
  }

  sub_1B964C100();
  result = OUTLINED_FUNCTION_178(v8, 1, v10);
  if (!v11)
  {
    return sub_1B8D9207C(v8, &off_1EBAB90F0, &unk_1B964D8E0);
  }

  return result;
}

uint64_t sub_1B8EA4FC0(uint64_t a1)
{
  v2 = sub_1B964C110();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return Moviespb_Showtime.time.setter();
}

uint64_t Moviespb_Showtime.time.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Moviespb_Showtime(v2) + 28);
  sub_1B8D9207C(v1 + v3, &off_1EBAB90F0, &unk_1B964D8E0);
  v4 = sub_1B964C110();
  OUTLINED_FUNCTION_59_1(v4);
  (*(v5 + 32))(v1 + v3, v0, v4);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void Moviespb_Showtime.time.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v3 = __swift_coroFrameAllocStub(0x38uLL);
  *v2 = v3;
  *v3 = v0;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = sub_1B964C110();
  v3[2] = v7;
  OUTLINED_FUNCTION_30_1(v7);
  v9 = v8;
  v3[3] = v8;
  v11 = *(v10 + 64);
  v3[4] = __swift_coroFrameAllocStub(v11);
  v3[5] = __swift_coroFrameAllocStub(v11);
  v12 = *(type metadata accessor for Moviespb_Showtime(0) + 28);
  *(v3 + 12) = v12;
  sub_1B8EA6D9C(v0 + v12, v6);
  OUTLINED_FUNCTION_178(v6, 1, v7);
  if (v13)
  {
    sub_1B964C100();
    OUTLINED_FUNCTION_178(v6, 1, v7);
    if (!v13)
    {
      sub_1B8D9207C(v6, &off_1EBAB90F0, &unk_1B964D8E0);
    }
  }

  else
  {
    v14 = *(v9 + 32);
    v15 = OUTLINED_FUNCTION_461();
    v16(v15);
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B8EA52B0()
{
  OUTLINED_FUNCTION_243();
  v1 = *(*v0 + 12);
  v2 = (*v0)[4];
  v3 = (*v0)[5];
  v4 = (*v0)[2];
  v5 = (*v0)[3];
  v7 = **v0;
  v6 = (*v0)[1];
  if (v8)
  {
    (*(v5 + 16))((*v0)[4], v3, v4);
    sub_1B8D9207C(v7 + v1, &off_1EBAB90F0, &unk_1B964D8E0);
    (*(v5 + 32))(v7 + v1, v2, v4);
    OUTLINED_FUNCTION_43_1();
    (*(v5 + 8))(v3, v4);
  }

  else
  {
    sub_1B8D9207C(v7 + v1, &off_1EBAB90F0, &unk_1B964D8E0);
    (*(v5 + 32))(v7 + v1, v3, v4);
    OUTLINED_FUNCTION_43_1();
  }

  free(v3);
  free(v2);
  free(v6);
  OUTLINED_FUNCTION_242();

  free(v9);
}

uint64_t Moviespb_Showtime.hasTime.getter()
{
  v1 = OUTLINED_FUNCTION_514();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = type metadata accessor for Moviespb_Showtime(0);
  sub_1B8EA6D9C(v0 + *(v9 + 28), v8);
  v10 = sub_1B964C110();
  OUTLINED_FUNCTION_178(v8, 1, v10);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  sub_1B8D9207C(v8, &off_1EBAB90F0, &unk_1B964D8E0);
  return v12;
}

Swift::Void __swiftcall Moviespb_Showtime.clearTime()()
{
  v1 = *(type metadata accessor for Moviespb_Showtime(0) + 28);
  sub_1B8D9207C(v0 + v1, &off_1EBAB90F0, &unk_1B964D8E0);
  v2 = sub_1B964C110();

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Moviespb_Showtime.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Moviespb_Showtime(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t Moviespb_Showtime.init()@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_74_4(a1);
  v2 = type metadata accessor for Moviespb_Showtime(0);
  v3 = v1 + *(v2 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 28);
  v5 = sub_1B964C110();

  return __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
}

uint64_t Moviespb_Screening.times.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Moviespb_Screening.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  v1 = *(type metadata accessor for Moviespb_Screening(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_18_1();

  return v6(v5);
}

uint64_t Moviespb_Screening.unknownFields.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Moviespb_Screening(v0) + 36);
  v2 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v2);
  v4 = *(v3 + 40);
  v5 = OUTLINED_FUNCTION_209();

  return v6(v5);
}

uint64_t Moviespb_Screening.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Moviespb_Screening(v0) + 36);
  return OUTLINED_FUNCTION_25();
}

uint64_t Moviespb_Screening.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = v2;
  *(v1 + 32) = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = 0;
  v3 = v1 + *(type metadata accessor for Moviespb_Screening(0) + 36);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

void Moviespb_CoverArt.type.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  OUTLINED_FUNCTION_4(a1);
}

uint64_t Moviespb_CoverArt.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 24) = *result;
  *(v1 + 32) = v2;
  return result;
}

uint64_t sub_1B8EA58FC()
{
  v0 = OUTLINED_FUNCTION_27();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_18_1();

  return v7(v6);
}

uint64_t sub_1B8EA5984()
{
  v0 = OUTLINED_FUNCTION_313();
  v2 = *(v1(v0) + 32);
  v3 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v3);
  v5 = *(v4 + 40);
  v6 = OUTLINED_FUNCTION_209();

  return v7(v6);
}

uint64_t Moviespb_CoverArt.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Moviespb_CoverArt(v0) + 32);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EA5A40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8EADC48();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Moviespb_CoverArt.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 1;
  v2 = v1 + *(type metadata accessor for Moviespb_CoverArt(0) + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t sub_1B8EA5B1C()
{
  OUTLINED_FUNCTION_468();
  swift_beginAccess();
  v2 = *v0;
  *v0 = v1;
}

uint64_t sub_1B8EA5BA8@<X0>(uint64_t *a1@<X8>)
{
  result = static Moviespb_CoverArt.AspectRatio.allCases.getter();
  *a1 = result;
  return result;
}

uint64_t Moviespb_Genre.localizedGenre.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Moviespb_Genre.localizedGenre.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Moviespb_Genre.genreCategory.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Moviespb_Genre.genreCategory.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Moviespb_Genre.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Moviespb_Genre(v0) + 24);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B8EA5D50()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCFB8);
  __swift_project_value_buffer(v0, qword_1EBABCFB8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNSPECIFIED_SHOWTIME_TYPE";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "THREED";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "IMAX";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "IMAX_THREED";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA5FD0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCFD0);
  __swift_project_value_buffer(v0, qword_1EBABCFD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = xmmword_1B9661280;
  v4 = v48 + v3;
  v5 = v48 + v3 + v1[14];
  *(v48 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "start_date";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v10 = *MEMORY[0x1E69AADE8];
  v8();
  v11 = (v4 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "end_date";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v8();
  v13 = (v4 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "offer_type";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v8();
  v15 = (v4 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "web_punchout_open";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v8();
  v17 = (v4 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "web_punchout_play";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v8();
  v19 = (v4 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "app_punchout_open";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v8();
  v21 = (v4 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "app_punchout_play";
  *(v22 + 1) = 17;
  v22[16] = 2;
  v8();
  v23 = (v4 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "canonical_adam_id";
  *(v24 + 1) = 17;
  v24[16] = 2;
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "external_id";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "media_type";
  *(v28 + 1) = 10;
  v28[16] = 2;
  v8();
  v29 = (v4 + 11 * v2);
  v30 = v29 + v1[14];
  *v29 = 12;
  *v30 = "search_brand_id";
  *(v30 + 1) = 15;
  v30[16] = 2;
  v8();
  v31 = (v4 + 12 * v2);
  v32 = v31 + v1[14];
  *v31 = 13;
  *v32 = "search_brand_state";
  *(v32 + 1) = 18;
  v32[16] = 2;
  v8();
  v33 = (v4 + 13 * v2);
  v34 = v33 + v1[14];
  *v33 = 14;
  *v34 = "platform_ios_state";
  *(v34 + 1) = 18;
  v34[16] = 2;
  v8();
  v35 = (v4 + 14 * v2);
  v36 = v35 + v1[14];
  *v35 = 15;
  *v36 = "platform_tvos_state";
  *(v36 + 1) = 19;
  v36[16] = 2;
  v8();
  v37 = (v4 + 15 * v2);
  v38 = v37 + v1[14];
  *v37 = 16;
  *v38 = "platform_web_state";
  *(v38 + 1) = 18;
  v38[16] = 2;
  v8();
  v39 = (v4 + 16 * v2);
  v40 = v39 + v1[14];
  *v39 = 17;
  *v40 = "is_mccormick_provider";
  *(v40 + 1) = 21;
  v40[16] = 2;
  v8();
  v41 = (v4 + 17 * v2);
  v42 = v41 + v1[14];
  *v41 = 18;
  *v42 = "video_quality";
  *(v42 + 1) = 13;
  v42[16] = 2;
  v8();
  v43 = (v4 + 18 * v2);
  v44 = v43 + v1[14];
  *v43 = 19;
  *v44 = "is_stereo_content";
  *(v44 + 1) = 17;
  v44[16] = 2;
  v8();
  v45 = (v4 + 19 * v2);
  v46 = v45 + v1[14];
  *v45 = 20;
  *v46 = "is_immersive_content";
  *(v46 + 1) = 20;
  v46[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t sub_1B8EA6608()
{
  type metadata accessor for Moviespb_Availability._StorageClass();
  swift_allocObject();
  result = sub_1B8EA6648();
  qword_1EBABCFE8 = result;
  return result;
}

uint64_t sub_1B8EA6648()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = 1;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0xE000000000000000;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0xE000000000000000;
  *(v0 + 96) = 0;
  *(v0 + 104) = 0xE000000000000000;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0xE000000000000000;
  *(v0 + 128) = 0;
  *(v0 + 136) = 0xE000000000000000;
  *(v0 + 144) = 0;
  *(v0 + 152) = 0xE000000000000000;
  *(v0 + 160) = 0;
  *(v0 + 168) = 1;
  *(v0 + 176) = 0;
  *(v0 + 184) = 0xE000000000000000;
  *(v0 + 192) = 0;
  *(v0 + 200) = 1;
  *(v0 + 208) = 0;
  *(v0 + 216) = 1;
  *(v0 + 224) = 0;
  *(v0 + 232) = 1;
  *(v0 + 240) = 0;
  *(v0 + 248) = 1;
  *(v0 + 256) = 0;
  *(v0 + 264) = 1;
  *(v0 + 265) = 0;
  return result;
}

uint64_t sub_1B8EA66BC(uint64_t a1)
{
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  *(v1 + 48) = 0;
  *(v1 + 40) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 1;
  *(v1 + 64) = 0;
  v35 = a1 + 264;
  *(v1 + 72) = 0xE000000000000000;
  *(v1 + 80) = 0;
  *(v1 + 96) = 0;
  *(v1 + 88) = 0xE000000000000000;
  *(v1 + 104) = 0xE000000000000000;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0xE000000000000000;
  *(v1 + 128) = 0;
  *(v1 + 144) = 0;
  *(v1 + 136) = 0xE000000000000000;
  *(v1 + 152) = 0xE000000000000000;
  *(v1 + 160) = 0;
  *(v1 + 168) = 1;
  *(v1 + 176) = 0;
  *(v1 + 192) = 0;
  *(v1 + 184) = 0xE000000000000000;
  *(v1 + 200) = 1;
  *(v1 + 208) = 0;
  *(v1 + 216) = 1;
  *(v1 + 224) = 0;
  *(v1 + 240) = 0;
  *(v1 + 232) = 1;
  *(v1 + 248) = 1;
  *(v1 + 256) = 0;
  *(v1 + 264) = 1;
  *(v1 + 265) = 0;
  swift_beginAccess();
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  swift_beginAccess();
  v5 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 32) = v5;
  swift_beginAccess();
  v6 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 40) = v6;
  swift_beginAccess();
  v7 = *(a1 + 48);
  LOBYTE(v5) = *(a1 + 56);
  swift_beginAccess();
  *(v1 + 48) = v7;
  *(v1 + 56) = v5;
  swift_beginAccess();
  v9 = *(a1 + 64);
  v8 = *(a1 + 72);
  swift_beginAccess();
  *(v1 + 64) = v9;
  *(v1 + 72) = v8;

  swift_beginAccess();
  v11 = *(a1 + 80);
  v10 = *(a1 + 88);
  swift_beginAccess();
  v12 = *(v1 + 88);
  *(v1 + 80) = v11;
  *(v1 + 88) = v10;

  swift_beginAccess();
  v14 = *(a1 + 96);
  v13 = *(a1 + 104);
  swift_beginAccess();
  v15 = *(v1 + 104);
  *(v1 + 96) = v14;
  *(v1 + 104) = v13;

  swift_beginAccess();
  v17 = *(a1 + 112);
  v16 = *(a1 + 120);
  swift_beginAccess();
  v18 = *(v1 + 120);
  *(v1 + 112) = v17;
  *(v1 + 120) = v16;

  swift_beginAccess();
  v20 = *(a1 + 128);
  v19 = *(a1 + 136);
  swift_beginAccess();
  v21 = *(v1 + 136);
  *(v1 + 128) = v20;
  *(v1 + 136) = v19;

  swift_beginAccess();
  v23 = *(a1 + 144);
  v22 = *(a1 + 152);
  swift_beginAccess();
  v24 = *(v1 + 152);
  *(v1 + 144) = v23;
  *(v1 + 152) = v22;

  swift_beginAccess();
  v25 = *(a1 + 160);
  LOBYTE(v24) = *(a1 + 168);
  swift_beginAccess();
  *(v1 + 160) = v25;
  *(v1 + 168) = v24;
  swift_beginAccess();
  v27 = *(a1 + 176);
  v26 = *(a1 + 184);
  swift_beginAccess();
  v28 = *(v1 + 184);
  *(v1 + 176) = v27;
  *(v1 + 184) = v26;

  swift_beginAccess();
  v29 = *(a1 + 192);
  LOBYTE(v28) = *(a1 + 200);
  swift_beginAccess();
  *(v1 + 192) = v29;
  *(v1 + 200) = v28;
  swift_beginAccess();
  v30 = *(a1 + 208);
  LOBYTE(v28) = *(a1 + 216);
  swift_beginAccess();
  *(v1 + 208) = v30;
  *(v1 + 216) = v28;
  swift_beginAccess();
  v31 = *(a1 + 224);
  LOBYTE(v28) = *(a1 + 232);
  swift_beginAccess();
  *(v1 + 224) = v31;
  *(v1 + 232) = v28;
  swift_beginAccess();
  v32 = *(a1 + 240);
  LOBYTE(v28) = *(a1 + 248);
  swift_beginAccess();
  *(v1 + 240) = v32;
  *(v1 + 248) = v28;
  swift_beginAccess();
  LOBYTE(v32) = *(a1 + 249);
  swift_beginAccess();
  *(v1 + 249) = v32;
  swift_beginAccess();
  v33 = *(a1 + 256);
  LOBYTE(v28) = *(a1 + 264);
  swift_beginAccess();
  *(v1 + 256) = v33;
  *(v1 + 264) = v28;
  swift_beginAccess();
  LOBYTE(v33) = *(v35 + 1);
  swift_beginAccess();
  *(v1 + 265) = v33;
  swift_beginAccess();
  LOBYTE(v33) = *(v35 + 2);

  swift_beginAccess();
  *(v1 + 266) = v33;
  return v1;
}

uint64_t sub_1B8EA6D9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1B8EA6E6C()
{
  v1 = v0[3];

  v2 = v0[9];

  v3 = v0[11];

  v4 = v0[13];

  v5 = v0[15];

  v6 = v0[17];

  v7 = v0[19];

  v8 = v0[23];

  return v0;
}

uint64_t sub_1B8EA6EC4()
{
  v0 = sub_1B8EA6E6C();

  return MEMORY[0x1EEE6BDC0](v0, 267, 7);
}

uint64_t Moviespb_Availability.decodeMessage<A>(decoder:)()
{
  v1 = v0;
  v2 = *(type metadata accessor for Moviespb_Availability(0) + 20);
  v3 = *(v0 + v2);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Moviespb_Availability._StorageClass();
    OUTLINED_FUNCTION_29_8();
    swift_allocObject();
    v6 = OUTLINED_FUNCTION_40_0();
    *(v1 + v2) = sub_1B8EA66BC(v6);
  }

  return sub_1B8EA6F90();
}

uint64_t sub_1B8EA6F90()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B8DAA85C();
        break;
      case 2:
        sub_1B8EA7230();
        break;
      case 3:
        sub_1B8EA72B4();
        break;
      case 4:
        sub_1B8EA7338();
        break;
      case 5:
        sub_1B8E16ACC();
        break;
      case 6:
        sub_1B8E16B50();
        break;
      case 7:
        sub_1B8E16BD4();
        break;
      case 8:
        sub_1B8E2F858();
        break;
      case 9:
        sub_1B8E71858();
        break;
      case 10:
        sub_1B8E88CF0();
        break;
      case 11:
        sub_1B8EA73CC();
        break;
      case 12:
        sub_1B8E71A68();
        break;
      case 13:
        sub_1B8EA7460();
        break;
      case 14:
        sub_1B8EA74F4();
        break;
      case 15:
        sub_1B8EA7588();
        break;
      case 16:
        sub_1B8EA761C();
        break;
      case 17:
        sub_1B8EA76B0();
        break;
      case 18:
        sub_1B8EA7734();
        break;
      case 19:
        sub_1B8EA77C8();
        break;
      case 20:
        sub_1B8EA784C();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EA7230()
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B8EA72B4()
{
  swift_beginAccess();
  sub_1B964C4B0();
  return swift_endAccess();
}

uint64_t sub_1B8EA7338()
{
  swift_beginAccess();
  sub_1B8EAF9A4();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA73CC()
{
  swift_beginAccess();
  sub_1B8EAF950();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA7460()
{
  swift_beginAccess();
  sub_1B8EAF854();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA74F4()
{
  swift_beginAccess();
  sub_1B8EAF8A8();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA7588()
{
  swift_beginAccess();
  sub_1B8EAF8A8();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA761C()
{
  swift_beginAccess();
  sub_1B8EAF8A8();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA76B0()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8EA7734()
{
  swift_beginAccess();
  sub_1B8EAF8FC();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B8EA77C8()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t sub_1B8EA784C()
{
  swift_beginAccess();
  sub_1B964C400();
  return swift_endAccess();
}

uint64_t Moviespb_Availability.traverse<A>(visitor:)()
{
  v2 = *(v0 + *(type metadata accessor for Moviespb_Availability(0) + 20));
  OUTLINED_FUNCTION_12();
  result = sub_1B8EA7934(v3);
  if (!v1)
  {
    OUTLINED_FUNCTION_186();
    return sub_1B964C290();
  }

  return result;
}

uint64_t sub_1B8EA7934(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 24);
  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = *(a1 + 16) & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v5 = *(a1 + 24);

    sub_1B964C700();
    if (v1)
    {
    }
  }

  swift_beginAccess();
  if (!*(a1 + 32) || (result = sub_1B964C6D0(), !v1))
  {
    swift_beginAccess();
    if (!*(a1 + 40) || (result = sub_1B964C6D0(), !v1))
    {
      swift_beginAccess();
      if (!*(a1 + 48) || (v40 = *(a1 + 48), v41 = *(a1 + 56), sub_1B8EAF9A4(), result = sub_1B964C680(), !v1))
      {
        swift_beginAccess();
        v7 = *(a1 + 72);
        v8 = HIBYTE(v7) & 0xF;
        if ((v7 & 0x2000000000000000) == 0)
        {
          v8 = *(a1 + 64) & 0xFFFFFFFFFFFFLL;
        }

        if (v8)
        {
          v9 = *(a1 + 72);

          sub_1B964C700();
          if (v1)
          {
          }
        }

        swift_beginAccess();
        v10 = *(a1 + 88);
        v11 = HIBYTE(v10) & 0xF;
        if ((v10 & 0x2000000000000000) == 0)
        {
          v11 = *(a1 + 80) & 0xFFFFFFFFFFFFLL;
        }

        if (v11)
        {
          v12 = *(a1 + 88);

          sub_1B964C700();
          if (v1)
          {
          }
        }

        swift_beginAccess();
        v13 = *(a1 + 104);
        v14 = HIBYTE(v13) & 0xF;
        if ((v13 & 0x2000000000000000) == 0)
        {
          v14 = *(a1 + 96) & 0xFFFFFFFFFFFFLL;
        }

        if (v14)
        {
          v15 = *(a1 + 104);

          sub_1B964C700();
          if (v1)
          {
          }
        }

        swift_beginAccess();
        v16 = *(a1 + 120);
        v17 = HIBYTE(v16) & 0xF;
        if ((v16 & 0x2000000000000000) == 0)
        {
          v17 = *(a1 + 112) & 0xFFFFFFFFFFFFLL;
        }

        if (v17)
        {
          v18 = *(a1 + 120);

          sub_1B964C700();
          if (v1)
          {
          }
        }

        swift_beginAccess();
        v19 = *(a1 + 136);
        v20 = HIBYTE(v19) & 0xF;
        if ((v19 & 0x2000000000000000) == 0)
        {
          v20 = *(a1 + 128) & 0xFFFFFFFFFFFFLL;
        }

        if (v20)
        {
          v21 = *(a1 + 136);

          sub_1B964C700();
          if (v1)
          {
          }
        }

        swift_beginAccess();
        v22 = *(a1 + 152);
        v23 = HIBYTE(v22) & 0xF;
        if ((v22 & 0x2000000000000000) == 0)
        {
          v23 = *(a1 + 144) & 0xFFFFFFFFFFFFLL;
        }

        if (v23)
        {
          v24 = *(a1 + 152);

          sub_1B964C700();
          if (v1)
          {
          }
        }

        swift_beginAccess();
        if (!*(a1 + 160) || (v38 = *(a1 + 160), v39 = *(a1 + 168), sub_1B8EAF950(), result = sub_1B964C680(), !v1))
        {
          swift_beginAccess();
          v25 = *(a1 + 184);
          v26 = HIBYTE(v25) & 0xF;
          if ((v25 & 0x2000000000000000) == 0)
          {
            v26 = *(a1 + 176) & 0xFFFFFFFFFFFFLL;
          }

          if (!v26 || (v27 = *(a1 + 184), , sub_1B964C700(), result = , !v1))
          {
            swift_beginAccess();
            if (!*(a1 + 192) || (v36 = *(a1 + 192), v37 = *(a1 + 200), sub_1B8EAF854(), result = sub_1B964C680(), !v1))
            {
              swift_beginAccess();
              if (!*(a1 + 208) || (v34 = *(a1 + 208), v35 = *(a1 + 216), sub_1B8EAF8A8(), result = sub_1B964C680(), !v1))
              {
                swift_beginAccess();
                if (!*(a1 + 224) || (v32 = *(a1 + 224), v33 = *(a1 + 232), sub_1B8EAF8A8(), result = sub_1B964C680(), !v1))
                {
                  swift_beginAccess();
                  if (!*(a1 + 240) || (v30 = *(a1 + 240), v31 = *(a1 + 248), sub_1B8EAF8A8(), result = sub_1B964C680(), !v1))
                  {
                    swift_beginAccess();
                    if (*(a1 + 249) != 1 || (result = sub_1B964C670(), !v1))
                    {
                      swift_beginAccess();
                      if (!*(a1 + 256) || (v28 = *(a1 + 256), v29 = *(a1 + 264), sub_1B8EAF8FC(), result = sub_1B964C680(), !v1))
                      {
                        swift_beginAccess();
                        if (*(a1 + 265) != 1 || (result = sub_1B964C670(), !v1))
                        {
                          result = swift_beginAccess();
                          if (*(a1 + 266) == 1)
                          {
                            return sub_1B964C670();
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Moviespb_Availability.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_8_14();
  if (*(v1 + v2) != *(v0 + v2) && (sub_1B8EA80C4() & 1) == 0)
  {
    return 0;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_25();
  sub_1B8CD1F88(v3, v4);
  OUTLINED_FUNCTION_231();
  return sub_1B964C850() & 1;
}

uint64_t sub_1B8EA80C4()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_521();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  OUTLINED_FUNCTION_521();
  v4 = v2 == *(v0 + 16) && v3 == *(v0 + 24);
  if (!v4 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v5 = *(v1 + 32);
  OUTLINED_FUNCTION_521();
  if (v5 != *(v0 + 32))
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v6 = *(v1 + 40);
  OUTLINED_FUNCTION_521();
  if (v6 != *(v0 + 40))
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  OUTLINED_FUNCTION_521();
  v9 = *(v0 + 48);
  v10 = *(v0 + 56);
  v11 = OUTLINED_FUNCTION_303();
  if (!sub_1B8D92198(v11, v12, v13))
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v14 = *(v1 + 64);
  v15 = *(v1 + 72);
  OUTLINED_FUNCTION_521();
  v16 = v14 == *(v0 + 64) && v15 == *(v0 + 72);
  if (!v16 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v17 = *(v1 + 80);
  v18 = *(v1 + 88);
  OUTLINED_FUNCTION_521();
  v19 = v17 == *(v0 + 80) && v18 == *(v0 + 88);
  if (!v19 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v20 = *(v1 + 96);
  v21 = *(v1 + 104);
  OUTLINED_FUNCTION_521();
  v22 = v20 == *(v0 + 96) && v21 == *(v0 + 104);
  if (!v22 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v23 = *(v1 + 112);
  v24 = *(v1 + 120);
  OUTLINED_FUNCTION_521();
  v25 = v23 == *(v0 + 112) && v24 == *(v0 + 120);
  if (!v25 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v26 = *(v1 + 128);
  v27 = *(v1 + 136);
  OUTLINED_FUNCTION_521();
  v28 = v26 == *(v0 + 128) && v27 == *(v0 + 136);
  if (!v28 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v29 = *(v1 + 144);
  v30 = *(v1 + 152);
  OUTLINED_FUNCTION_521();
  v31 = v29 == *(v0 + 144) && v30 == *(v0 + 152);
  if (!v31 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v32 = *(v1 + 160);
  v33 = *(v1 + 168);
  OUTLINED_FUNCTION_521();
  v34 = *(v0 + 160);
  v35 = *(v0 + 168);
  v36 = OUTLINED_FUNCTION_303();
  if (!sub_1B8D92198(v36, v37, v38))
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v39 = *(v1 + 176);
  v40 = *(v1 + 184);
  OUTLINED_FUNCTION_521();
  v41 = v39 == *(v0 + 176) && v40 == *(v0 + 184);
  if (!v41 && (OUTLINED_FUNCTION_22_8() & 1) == 0)
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v42 = *(v1 + 192);
  v43 = *(v1 + 200);
  OUTLINED_FUNCTION_521();
  v44 = *(v0 + 192);
  v45 = *(v0 + 200);
  v46 = OUTLINED_FUNCTION_303();
  if (!sub_1B8D92198(v46, v47, v48))
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v49 = *(v1 + 208);
  v50 = *(v1 + 216);
  OUTLINED_FUNCTION_521();
  v51 = *(v0 + 208);
  v52 = *(v0 + 216);
  v53 = OUTLINED_FUNCTION_303();
  if (!sub_1B8D92198(v53, v54, v55))
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v56 = *(v1 + 224);
  v57 = *(v1 + 232);
  OUTLINED_FUNCTION_521();
  v58 = *(v0 + 224);
  v59 = *(v0 + 232);
  v60 = OUTLINED_FUNCTION_303();
  if (!sub_1B8D92198(v60, v61, v62))
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v63 = *(v1 + 240);
  v64 = *(v1 + 248);
  OUTLINED_FUNCTION_521();
  v65 = *(v0 + 240);
  v66 = *(v0 + 248);
  v67 = OUTLINED_FUNCTION_303();
  if (!sub_1B8D92198(v67, v68, v69))
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v70 = *(v1 + 249);
  OUTLINED_FUNCTION_521();
  if (v70 != *(v0 + 249))
  {
    goto LABEL_52;
  }

  v71 = v0 + 264;
  v72 = (v1 + 264);
  OUTLINED_FUNCTION_521();
  v73 = *(v1 + 256);
  v80 = v72;
  v74 = *v72;
  OUTLINED_FUNCTION_521();
  v75 = *(v0 + 264);
  if (!sub_1B8D92198(v73, v74, *(v0 + 256)))
  {
    goto LABEL_52;
  }

  OUTLINED_FUNCTION_521();
  v76 = v80[1];
  OUTLINED_FUNCTION_521();
  if (v76 == *(v0 + 265))
  {
    OUTLINED_FUNCTION_521();
    v79 = v80[2];
    OUTLINED_FUNCTION_521();
    v77 = v79 ^ *(v71 + 2) ^ 1;
  }

  else
  {
LABEL_52:
    v77 = 0;
  }

  return v77 & 1;
}

uint64_t sub_1B8EA8594(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4E8, type metadata accessor for Moviespb_Availability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EA8614(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD330, type metadata accessor for Moviespb_Availability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EA8684()
{
  sub_1B8CD1F88(&qword_1EBABD330, type metadata accessor for Moviespb_Availability);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EA8704()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABCFF0);
  __swift_project_value_buffer(v0, qword_1EBABCFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "OFFER_UNKNOWN";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "FREE";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "RENT";
  *(v12 + 1) = 4;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "BUY";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "SUBSCRIPTION";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "PRE_ORDER";
  *(v18 + 1) = 9;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 6;
  *v20 = "FREE_WITH_ACCOUNT";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 7;
  *v22 = "SERVICE";
  *(v22 + 1) = 7;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 8;
  *v24 = "COMING_SOON";
  *(v24 + 1) = 11;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA8A98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD008);
  __swift_project_value_buffer(v0, qword_1EBABD008);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "MEDIA_UNKNOWN";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SHOWS";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "EPISODES";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "SEASONS";
  *(v14 + 1) = 7;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "MOVIES";
  *(v16 + 1) = 6;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA8D40()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD020);
  __swift_project_value_buffer(v0, qword_1EBABD020);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "QUALITY_UNKNOWN";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SD";
  *(v10 + 8) = 2;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "HD";
  *(v12 + 1) = 2;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "UHD";
  *(v14 + 1) = 3;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA8F9C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD038);
  __swift_project_value_buffer(v0, qword_1EBABD038);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "VOD_STATE_UNKNOWN";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "VOD_SERVICE_ON";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "VOD_SERVICE_OFF";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "VOD_SERVICE_TEST_MODE";
  *(v14 + 1) = 21;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA9204()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD050);
  __swift_project_value_buffer(v0, qword_1EBABD050);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "STATE_UNKNOWN";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SEARCH_BRAND_LIVE";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SEARCH_BRAND_PENDING_APPLE_REVIEW";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA9448()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD068);
  __swift_project_value_buffer(v0, qword_1EBABD068);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "age";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "url";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA9704(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4E0, type metadata accessor for Moviespb_CommonSense);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EA9784(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD348, type metadata accessor for Moviespb_CommonSense);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EA97F4()
{
  sub_1B8CD1F88(&qword_1EBABD348, type metadata accessor for Moviespb_CommonSense);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EA988C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD080);
  __swift_project_value_buffer(v0, qword_1EBABD080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "content_rating_system";
  *(v6 + 8) = 21;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "content_rating_value";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EA9AA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  OUTLINED_FUNCTION_614();
  v8 = *v4;
  v9 = v4[1];
  OUTLINED_FUNCTION_1();
  if (!v10 || (result = OUTLINED_FUNCTION_3(), !v5))
  {
    v12 = *(v6 + 16);
    v13 = *(v6 + 24);
    OUTLINED_FUNCTION_1();
    if (!v14 || (result = OUTLINED_FUNCTION_3(), !v5))
    {
      v15 = *(a4(0) + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t sub_1B8EA9BD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4D8, type metadata accessor for Moviespb_ContentRating);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EA9C58(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD360, type metadata accessor for Moviespb_ContentRating);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EA9CC8()
{
  sub_1B8CD1F88(&qword_1EBABD360, type metadata accessor for Moviespb_ContentRating);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EA9D60()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD098);
  __swift_project_value_buffer(v0, qword_1EBABD098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "format";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "thumbnail";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "url";
  *(v12 + 1) = 3;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Moviespb_Trailer.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C530();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8EAA000();
    }
  }

  return result;
}

uint64_t Moviespb_Trailer.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v11 = *v0, v12 = *(v2 + 8), sub_1B8EAA130(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C680(), !v1))
  {
    v4 = *(v2 + 16);
    v5 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v7 = *(v2 + 32);
      v8 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v10 = *(type metadata accessor for Moviespb_Trailer(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

unint64_t sub_1B8EAA130()
{
  result = qword_1EBABD188;
  if (!qword_1EBABD188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD188);
  }

  return result;
}

uint64_t static Moviespb_Trailer.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v3 != 1)
        {
          return 0;
        }
      }

      else if (v3 != 2)
      {
        return 0;
      }
    }

    else if (v3)
    {
      return 0;
    }
  }

  else if (v3 != v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v8 && v6 == v7;
  if (v8 || (sub_1B964C9F0() & 1) != 0)
  {
    v9 = *(v1 + 32) == *(v0 + 32) && *(v1 + 40) == *(v0 + 40);
    if (v9 || (sub_1B964C9F0() & 1) != 0)
    {
      v10 = *(type metadata accessor for Moviespb_Trailer(0) + 28);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_25();
      sub_1B8CD1F88(v11, v12);
      return OUTLINED_FUNCTION_634() & 1;
    }
  }

  return 0;
}

uint64_t sub_1B8EAA31C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4D0, type metadata accessor for Moviespb_Trailer);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EAA39C(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD378, type metadata accessor for Moviespb_Trailer);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EAA40C()
{
  sub_1B8CD1F88(&qword_1EBABD378, type metadata accessor for Moviespb_Trailer);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EAA48C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD0B0);
  __swift_project_value_buffer(v0, qword_1EBABD0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "MOVIE_480";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "MOVIE_720";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "UNKNOWN";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EAA6D0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD0C8);
  __swift_project_value_buffer(v0, qword_1EBABD0C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "fresh";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "text";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "author";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "date";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Moviespb_RottenTomatoReview.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C4B0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Moviespb_RottenTomatoReview.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
  {
    v4 = v2[1];
    v5 = v2[2];
    OUTLINED_FUNCTION_1();
    if (!v6 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v7 = v2[3];
      v8 = v2[4];
      OUTLINED_FUNCTION_1();
      if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        if (!v2[5] || (OUTLINED_FUNCTION_29(), result = sub_1B964C6D0(), !v1))
        {
          v10 = *(type metadata accessor for Moviespb_RottenTomatoReview(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Moviespb_RottenTomatoReview.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  v5 = *(v4 + 8) == v2[1] && v3[2] == v2[2];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = v3[3] == v2[3] && v3[4] == v2[4];
  if (!v6 && (sub_1B964C9F0() & 1) == 0 || v3[5] != v2[5])
  {
    return 0;
  }

  v7 = *(type metadata accessor for Moviespb_RottenTomatoReview(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_25();
  sub_1B8CD1F88(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EAAC10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4C8, type metadata accessor for Moviespb_RottenTomatoReview);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EAAC90(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD390, type metadata accessor for Moviespb_RottenTomatoReview);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EAAD00()
{
  sub_1B8CD1F88(&qword_1EBABD390, type metadata accessor for Moviespb_RottenTomatoReview);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EAAD98()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD0E0);
  __swift_project_value_buffer(v0, qword_1EBABD0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1B96511C0;
  v4 = v30 + v3;
  v5 = v30 + v3 + v1[14];
  *(v30 + v3) = 1;
  *v5 = "name";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B964C750();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "address";
  *(v9 + 8) = 7;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "city";
  *(v11 + 1) = 4;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "state";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "url";
  *(v15 + 1) = 3;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "showtimes";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "latitude";
  *(v19 + 1) = 8;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "longitude";
  *(v21 + 1) = 9;
  v21[16] = 2;
  v8();
  v22 = (v4 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "distance_from_user";
  *(v23 + 1) = 18;
  v23[16] = 2;
  v24 = *MEMORY[0x1E69AADE8];
  v8();
  v25 = (v4 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 10;
  *v26 = "fandango_id";
  *(v26 + 1) = 11;
  v26[16] = 2;
  v8();
  v27 = (v4 + 10 * v2);
  v28 = v27 + v1[14];
  *v27 = 11;
  *v28 = "theater_id";
  *(v28 + 1) = 10;
  v28[16] = 2;
  v8();
  return sub_1B964C760();
}

uint64_t Moviespb_MovieTheater.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 10:
      case 11:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 6:
        OUTLINED_FUNCTION_9();
        sub_1B8EAB274();
        break;
      case 7:
      case 8:
      case 9:
        OUTLINED_FUNCTION_12();
        sub_1B964C510();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EAB274()
{
  type metadata accessor for Moviespb_Showtime(0);
  sub_1B8CD1F88(&qword_1EBABD1A0, type metadata accessor for Moviespb_Showtime);
  return sub_1B964C570();
}

uint64_t Moviespb_MovieTheater.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v10 = *(v2 + 32);
      v11 = *(v2 + 40);
      OUTLINED_FUNCTION_1();
      if (!v12 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v13 = *(v2 + 48);
        v14 = *(v2 + 56);
        OUTLINED_FUNCTION_1();
        if (!v15 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          v16 = *(v2 + 64);
          v17 = *(v2 + 72);
          OUTLINED_FUNCTION_1();
          if (!v18 || (result = OUTLINED_FUNCTION_3(), !v1))
          {
            if (!*(*(v2 + 80) + 16) || (type metadata accessor for Moviespb_Showtime(0), sub_1B8CD1F88(&qword_1EBABD1A0, type metadata accessor for Moviespb_Showtime), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C730(), !v1))
            {
              if (*(v2 + 88) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
              {
                if (*(v2 + 96) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
                {
                  if (*(v2 + 104) == 0.0 || (OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_12(), result = sub_1B964C6F0(), !v1))
                  {
                    v19 = *(v2 + 112);
                    v20 = *(v2 + 120);
                    OUTLINED_FUNCTION_1();
                    if (!v21 || (result = OUTLINED_FUNCTION_3(), !v1))
                    {
                      v22 = *(v2 + 128);
                      v23 = *(v2 + 136);
                      OUTLINED_FUNCTION_1();
                      if (!v24 || (result = OUTLINED_FUNCTION_3(), !v1))
                      {
                        v25 = *(type metadata accessor for Moviespb_MovieTheater(0) + 60);
                        return OUTLINED_FUNCTION_8_1();
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Moviespb_MovieTheater.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v3 + 32) == *(v2 + 32) && *(v3 + 40) == *(v2 + 40);
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v11 = *(v3 + 48) == *(v2 + 48) && *(v3 + 56) == *(v2 + 56);
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v12 = *(v3 + 64) == *(v2 + 64) && *(v3 + 72) == *(v2 + 72);
  if (!v12 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v13 = *(v3 + 80);
  v14 = *(v2 + 80);
  sub_1B8D7CEFC();
  if ((v15 & 1) == 0 || *(v3 + 88) != *(v2 + 88) || *(v3 + 96) != *(v2 + 96) || *(v3 + 104) != *(v2 + 104))
  {
    return 0;
  }

  v16 = *(v3 + 112) == *(v2 + 112) && *(v3 + 120) == *(v2 + 120);
  if (!v16 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v17 = *(v3 + 128) == *(v2 + 128) && *(v3 + 136) == *(v2 + 136);
  if (!v17 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v18 = *(type metadata accessor for Moviespb_MovieTheater(0) + 60);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_25();
  sub_1B8CD1F88(v19, v20);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t (*sub_1B8EAB700(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 60);
  return result;
}

uint64_t sub_1B8EAB754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4C0, type metadata accessor for Moviespb_MovieTheater);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EAB7D4(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD3A8, type metadata accessor for Moviespb_MovieTheater);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EAB844()
{
  sub_1B8CD1F88(&qword_1EBABD3A8, type metadata accessor for Moviespb_MovieTheater);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EAB8DC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD0F8);
  __swift_project_value_buffer(v0, qword_1EBABD0F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "time";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "type";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "timezone";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Moviespb_Showtime.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
        OUTLINED_FUNCTION_9();
        sub_1B8EABC3C();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8EABB88();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8EABB88()
{
  v0 = *(type metadata accessor for Moviespb_Showtime(0) + 28);
  sub_1B964C110();
  sub_1B8CD1F88(&qword_1EBABD1B8, MEMORY[0x1E69AA900]);
  return sub_1B964C580();
}

uint64_t Moviespb_Showtime.traverse<A>(visitor:)()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = sub_1B964C110();
  v10 = OUTLINED_FUNCTION_30_1(v9);
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Moviespb_Showtime(0);
  sub_1B8EA6D9C(v2 + *(v27 + 28), v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1B8D9207C(v8, &off_1EBAB90F0, &unk_1B964D8E0);
  }

  else
  {
    (*(v12 + 32))(v16, v8, v9);
    OUTLINED_FUNCTION_17_8();
    sub_1B8CD1F88(v17, v18);
    sub_1B964C740();
    if (v1)
    {
      return (*(v12 + 8))(v16, v9);
    }

    (*(v12 + 8))(v16, v9);
  }

  if (!*v2 || (v20 = *(v2 + 8), v25 = *v2, v26 = v20, sub_1B8EADBF4(), result = sub_1B964C680(), !v1))
  {
    v21 = v2[2];
    v22 = v2[3];
    OUTLINED_FUNCTION_1();
    if (!v23 || (result = sub_1B964C700(), !v1))
    {
      v24 = v2 + *(v27 + 24);
      return sub_1B964C290();
    }
  }

  return result;
}

uint64_t static Moviespb_Showtime.== infix(_:_:)()
{
  OUTLINED_FUNCTION_16();
  v2 = sub_1B964C110();
  v3 = OUTLINED_FUNCTION_30_1(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&off_1EBAB90F0, &unk_1B964D8E0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v37 - v14;
  v16 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB90F8, &qword_1B9687990) - 8);
  v17 = *(*v16 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v37 - v19;
  v21 = type metadata accessor for Moviespb_Showtime(0);
  v22 = *(v21 + 28);
  v23 = v16[14];
  sub_1B8EA6D9C(v1 + v22, v20);
  sub_1B8EA6D9C(v0 + v22, &v20[v23]);
  OUTLINED_FUNCTION_178(v20, 1, v2);
  if (!v24)
  {
    sub_1B8EA6D9C(v20, v15);
    OUTLINED_FUNCTION_178(&v20[v23], 1, v2);
    if (!v24)
    {
      (*(v5 + 32))(v9, &v20[v23], v2);
      OUTLINED_FUNCTION_17_8();
      sub_1B8CD1F88(v27, v28);
      v29 = sub_1B964C850();
      v30 = *(v5 + 8);
      v30(v9, v2);
      v30(v15, v2);
      sub_1B8D9207C(v20, &off_1EBAB90F0, &unk_1B964D8E0);
      if ((v29 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    (*(v5 + 8))(v15, v2);
LABEL_9:
    sub_1B8D9207C(v20, &qword_1EBAB90F8, &qword_1B9687990);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_178(&v20[v23], 1, v2);
  if (!v24)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v20, &off_1EBAB90F0, &unk_1B964D8E0);
LABEL_13:
  v31 = *v1;
  v32 = *v0;
  if (*(v0 + 8) == 1)
  {
    switch(v32)
    {
      case 1:
        if (v31 == 1)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      case 2:
        if (v31 == 2)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      case 3:
        if (v31 == 3)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
      default:
        if (!v31)
        {
          goto LABEL_18;
        }

        goto LABEL_10;
    }
  }

  if (v31 == v32)
  {
LABEL_18:
    v33 = v1[2] == v0[2] && v1[3] == v0[3];
    if (v33 || (sub_1B964C9F0() & 1) != 0)
    {
      v34 = *(v21 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_25();
      sub_1B8CD1F88(v35, v36);
      v25 = sub_1B964C850();
      return v25 & 1;
    }
  }

LABEL_10:
  v25 = 0;
  return v25 & 1;
}

uint64_t sub_1B8EAC364(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4B8, type metadata accessor for Moviespb_Showtime);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EAC3E4(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD1A0, type metadata accessor for Moviespb_Showtime);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EAC454()
{
  sub_1B8CD1F88(&qword_1EBABD1A0, type metadata accessor for Moviespb_Showtime);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EAC4EC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD110);
  __swift_project_value_buffer(v0, qword_1EBABD110);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "movie_id";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 3;
  *v13 = "times";
  *(v13 + 1) = 5;
  v13[16] = 2;
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "has3_d";
  *(v15 + 1) = 6;
  v15[16] = 2;
  v9();
  v16 = (v5 + 4 * v2);
  v17 = v16 + v1[14];
  *v16 = 5;
  *v17 = "has_i_max";
  *(v17 + 1) = 9;
  v17[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Moviespb_Screening.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B8EAC844();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B8EAC844()
{
  sub_1B964C110();
  sub_1B8CD1F88(&qword_1EBABD1B8, MEMORY[0x1E69AA900]);
  return sub_1B964C570();
}

uint64_t Moviespb_Screening.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v7 = *(v2 + 16);
    v8 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v9 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      if (!*(*(v2 + 32) + 16) || (sub_1B964C110(), OUTLINED_FUNCTION_17_8(), sub_1B8CD1F88(v10, v11), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C730(), !v1))
      {
        if (*(v2 + 40) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
        {
          if (*(v2 + 41) != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
          {
            v12 = *(type metadata accessor for Moviespb_Screening(0) + 36);
            return OUTLINED_FUNCTION_8_1();
          }
        }
      }
    }
  }

  return result;
}

uint64_t static Moviespb_Screening.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v3 + 32);
  v11 = *(v2 + 32);
  sub_1B8D7D988();
  if ((v12 & 1) == 0 || *(v3 + 40) != *(v2 + 40) || *(v3 + 41) != *(v2 + 41))
  {
    return 0;
  }

  v14 = *(type metadata accessor for Moviespb_Screening(0) + 36);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_25();
  sub_1B8CD1F88(v15, v16);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EACB84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4B0, type metadata accessor for Moviespb_Screening);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EACC04(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD3D0, type metadata accessor for Moviespb_Screening);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EACC74()
{
  sub_1B8CD1F88(&qword_1EBABD3D0, type metadata accessor for Moviespb_Screening);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EACD0C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD128);
  __swift_project_value_buffer(v0, qword_1EBABD128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "url";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "width";
  *(v10 + 8) = 5;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "height";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "type";
  *(v14 + 1) = 4;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Moviespb_CoverArt.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 2:
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C4A0();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8EAD010();
        break;
      default:
        continue;
    }
  }
}

uint64_t Moviespb_CoverArt.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = *v0;
  v4 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v5 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      if (!*(v2 + 20) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
      {
        if (!*(v2 + 24) || (v8 = *(v2 + 24), v9 = *(v2 + 32), sub_1B8EADC48(), OUTLINED_FUNCTION_79_0(), OUTLINED_FUNCTION_89_2(), result = sub_1B964C680(), !v1))
        {
          v7 = *(type metadata accessor for Moviespb_CoverArt(0) + 32);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Moviespb_CoverArt.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (*(v3 + 16) != *(v2 + 16))
  {
    return 0;
  }

  if (*(v3 + 20) != *(v2 + 20))
  {
    return 0;
  }

  v7 = *(v2 + 32);
  if (!sub_1B8D92198(*(v3 + 24), *(v3 + 32), *(v2 + 24)))
  {
    return 0;
  }

  v8 = *(type metadata accessor for Moviespb_CoverArt(0) + 32);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_25();
  sub_1B8CD1F88(v9, v10);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EAD2C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4A8, type metadata accessor for Moviespb_CoverArt);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EAD340(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD3E8, type metadata accessor for Moviespb_CoverArt);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EAD3B0()
{
  sub_1B8CD1F88(&qword_1EBABD3E8, type metadata accessor for Moviespb_CoverArt);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EAD430()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD140);
  __swift_project_value_buffer(v0, qword_1EBABD140);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIXTEEN_BY_NINE";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "SQUARE";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EAD680()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD158);
  __swift_project_value_buffer(v0, qword_1EBABD158);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "localizedGenre";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "genreCategory";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B8EAD8C8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1, a2);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v10 = *(a3(0) + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_25();
  sub_1B8CD1F88(v11, v12);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t sub_1B8EAD9B8(void (*a1)(void))
{
  sub_1B964CA70();
  a1(0);
  v2 = OUTLINED_FUNCTION_461();
  sub_1B8CD1F88(v2, v3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EADA84(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1F88(&qword_1EBABD4A0, type metadata accessor for Moviespb_Genre);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EADB04(uint64_t a1)
{
  v2 = sub_1B8CD1F88(&qword_1EBABD400, type metadata accessor for Moviespb_Genre);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EADB74()
{
  sub_1B8CD1F88(&qword_1EBABD400, type metadata accessor for Moviespb_Genre);

  return sub_1B964C5D0();
}

unint64_t sub_1B8EADBF4()
{
  result = qword_1EBABD1B0;
  if (!qword_1EBABD1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD1B0);
  }

  return result;
}

unint64_t sub_1B8EADC48()
{
  result = qword_1EBABD1D0;
  if (!qword_1EBABD1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD1D0);
  }

  return result;
}

unint64_t sub_1B8EADCA0()
{
  result = qword_1EBABD1E8;
  if (!qword_1EBABD1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD1E8);
  }

  return result;
}

unint64_t sub_1B8EADCF8()
{
  result = qword_1EBABD1F0;
  if (!qword_1EBABD1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD1F0);
  }

  return result;
}

unint64_t sub_1B8EADD50()
{
  result = qword_1EBABD1F8;
  if (!qword_1EBABD1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD1F8);
  }

  return result;
}

unint64_t sub_1B8EADDD8()
{
  result = qword_1EBABD210;
  if (!qword_1EBABD210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD210);
  }

  return result;
}

unint64_t sub_1B8EADE30()
{
  result = qword_1EBABD218;
  if (!qword_1EBABD218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD218);
  }

  return result;
}

unint64_t sub_1B8EADE88()
{
  result = qword_1EBABD220;
  if (!qword_1EBABD220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD220);
  }

  return result;
}

unint64_t sub_1B8EADEE0()
{
  result = qword_1EBABD228;
  if (!qword_1EBABD228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD228);
  }

  return result;
}

unint64_t sub_1B8EADF38()
{
  result = qword_1EBABD230;
  if (!qword_1EBABD230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD230);
  }

  return result;
}

unint64_t sub_1B8EADF90()
{
  result = qword_1EBABD238;
  if (!qword_1EBABD238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD238);
  }

  return result;
}

unint64_t sub_1B8EADFE8()
{
  result = qword_1EBABD240;
  if (!qword_1EBABD240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD240);
  }

  return result;
}

unint64_t sub_1B8EAE040()
{
  result = qword_1EBABD248;
  if (!qword_1EBABD248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD248);
  }

  return result;
}

unint64_t sub_1B8EAE098()
{
  result = qword_1EBABD250;
  if (!qword_1EBABD250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD250);
  }

  return result;
}

unint64_t sub_1B8EAE0F0()
{
  result = qword_1EBABD258;
  if (!qword_1EBABD258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD258);
  }

  return result;
}

unint64_t sub_1B8EAE148()
{
  result = qword_1EBABD260;
  if (!qword_1EBABD260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD260);
  }

  return result;
}

unint64_t sub_1B8EAE1A0()
{
  result = qword_1EBABD268;
  if (!qword_1EBABD268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD268);
  }

  return result;
}

unint64_t sub_1B8EAE1F8()
{
  result = qword_1EBABD270;
  if (!qword_1EBABD270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD270);
  }

  return result;
}

unint64_t sub_1B8EAE250()
{
  result = qword_1EBABD278;
  if (!qword_1EBABD278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD278);
  }

  return result;
}

unint64_t sub_1B8EAE2A8()
{
  result = qword_1EBABD280;
  if (!qword_1EBABD280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD280);
  }

  return result;
}

unint64_t sub_1B8EAE3F0()
{
  result = qword_1EBABD2D8;
  if (!qword_1EBABD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD2D8);
  }

  return result;
}

unint64_t sub_1B8EAE448()
{
  result = qword_1EBABD2E0;
  if (!qword_1EBABD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD2E0);
  }

  return result;
}

unint64_t sub_1B8EAE4A0()
{
  result = qword_1EBABD2E8;
  if (!qword_1EBABD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD2E8);
  }

  return result;
}

unint64_t sub_1B8EAE528()
{
  result = qword_1EBABD300;
  if (!qword_1EBABD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD300);
  }

  return result;
}

unint64_t sub_1B8EAE580()
{
  result = qword_1EBABD308;
  if (!qword_1EBABD308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD308);
  }

  return result;
}

unint64_t sub_1B8EAE5D8()
{
  result = qword_1EBABD310;
  if (!qword_1EBABD310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD310);
  }

  return result;
}

uint64_t sub_1B8EAF1D4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Moviespb_Availability._StorageClass();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B8EAF320()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1B8EAF428()
{
  sub_1B8EAF600(319, &qword_1EBABD460, type metadata accessor for Moviespb_Showtime, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8EAF534()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8EAF600(319, &qword_1ED9EB350, MEMORY[0x1E69AA900], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8EAF600(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1B8EAF68C()
{
  sub_1B8EAF600(319, &qword_1EBABD488, MEMORY[0x1E69AA900], MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B8EAF7A4()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B8EAF854()
{
  result = qword_1EBABD4F0;
  if (!qword_1EBABD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD4F0);
  }

  return result;
}

unint64_t sub_1B8EAF8A8()
{
  result = qword_1EBABD4F8;
  if (!qword_1EBABD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD4F8);
  }

  return result;
}

unint64_t sub_1B8EAF8FC()
{
  result = qword_1EBABD500;
  if (!qword_1EBABD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD500);
  }

  return result;
}

unint64_t sub_1B8EAF950()
{
  result = qword_1EBABD508;
  if (!qword_1EBABD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD508);
  }

  return result;
}

unint64_t sub_1B8EAF9A4()
{
  result = qword_1EBABD510;
  if (!qword_1EBABD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBABD510);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_21(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 64) = v2;
  result = type metadata accessor for Moviespb_Availability(0);
  v5 = *(result + 20);
  *(a1 + 72) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_14(uint64_t a1)
{
  *v1 = a1;
  *(a1 + 88) = v2;
  result = type metadata accessor for Moviespb_Availability(0);
  v5 = *(result + 20);
  *(a1 + 84) = v5;
  v6 = *(v2 + v5);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_15(uint64_t a1)
{
  v2 = *(*a1 + 72);
  v3 = *(*a1 + 80);
  v4 = *(*(*a1 + 88) + *(*a1 + 84));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_6_6()
{
  result = type metadata accessor for Moviespb_Availability(0);
  v2 = *(v0 + *(result + 20));
  return result;
}

uint64_t OUTLINED_FUNCTION_8_14()
{
  result = type metadata accessor for Moviespb_Availability(0);
  v1 = *(result + 20);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_10()
{
  v1 = *(v0 + *(type metadata accessor for Moviespb_Availability(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_13_7(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(v1 + *(type metadata accessor for Moviespb_Availability(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

uint64_t OUTLINED_FUNCTION_49_4()
{
  v2 = *(v0 + 72);
  v3 = *(v0 + 64);

  return type metadata accessor for Moviespb_Availability._StorageClass();
}

uint64_t OUTLINED_FUNCTION_54_3()
{
  v2 = *(v0 + 84);
  v3 = *(v0 + 88);

  return type metadata accessor for Moviespb_Availability._StorageClass();
}

uint64_t OUTLINED_FUNCTION_65_4()
{
  v1 = *(v0 + *(type metadata accessor for Moviespb_Availability(0) + 20));

  return swift_isUniquelyReferenced_nonNull_native();
}

void OUTLINED_FUNCTION_74_4(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
}

uint64_t OUTLINED_FUNCTION_82_1()
{
  v2 = *(v0 + 80);
  v3 = *(v0 + 72);

  return type metadata accessor for Moviespb_Availability._StorageClass();
}

uint64_t OUTLINED_FUNCTION_96_1(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = a1[8];
  v3 = *a2;
  v4 = *(a2 + 8);
  return *a1;
}

uint64_t Nlgpb_NlgDialog.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  a1[4] = 0;
  a1[5] = 0xE000000000000000;
  a1[6] = 0;
  a1[7] = 0xE000000000000000;
  v1 = a1 + *(type metadata accessor for Nlgpb_NlgDialog() + 32);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Nlgpb_NlgDialog()
{
  result = qword_1ED9CD918;
  if (!qword_1ED9CD918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Nlgpb_NlgDialog.written.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Nlgpb_NlgDialog.written.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Nlgpb_NlgDialog.spoken.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Nlgpb_NlgDialog.spoken.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Nlgpb_NlgDialog.modelID.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Nlgpb_NlgDialog.modelID.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Nlgpb_NlgDialog.nlgKey.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Nlgpb_NlgDialog.nlgKey.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Nlgpb_NlgDialog.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Nlgpb_NlgDialog() + 32);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Nlgpb_NlgDialog.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Nlgpb_NlgDialog() + 32);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B8EB0190()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD518);
  __swift_project_value_buffer(v0, qword_1EBABD518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "written";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "spoken";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "model_id";
  *(v12 + 1) = 8;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  v14 = (v5 + 3 * v2);
  v15 = v14 + v1[14];
  *v14 = 4;
  *v15 = "nlg_key";
  *(v15 + 1) = 7;
  v15[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t static Nlgpb_NlgDialog._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6528 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABD518);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Nlgpb_NlgDialog.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        sub_1B964C530();
        break;
      default:
        continue;
    }
  }
}

uint64_t Nlgpb_NlgDialog.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v6 = v0[2];
    v7 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v9 = v0[4];
      v10 = v0[5];
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v12 = v0[6];
        v13 = v0[7];
        OUTLINED_FUNCTION_1();
        if (!v14 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          v15 = v0 + *(type metadata accessor for Nlgpb_NlgDialog() + 32);
          return sub_1B964C290();
        }
      }
    }
  }

  return result;
}

uint64_t static Nlgpb_NlgDialog.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[4] == a2[4] && a1[5] == a2[5];
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = a1[6] == a2[6] && a1[7] == a2[7];
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(type metadata accessor for Nlgpb_NlgDialog() + 32);
  sub_1B964C2B0();
  sub_1B8CD1FD0(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Nlgpb_NlgDialog.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Nlgpb_NlgDialog();
  sub_1B8CD1FD0(&qword_1EBABD530, type metadata accessor for Nlgpb_NlgDialog);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EB080C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD1FD0(&qword_1EBABD548, type metadata accessor for Nlgpb_NlgDialog);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EB088C(uint64_t a1)
{
  v2 = sub_1B8CD1FD0(&qword_1EBABC1F0, type metadata accessor for Nlgpb_NlgDialog);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EB08FC()
{
  sub_1B8CD1FD0(&qword_1EBABC1F0, type metadata accessor for Nlgpb_NlgDialog);

  return sub_1B964C5D0();
}

uint64_t Snippetpb_ExperimentalVisualSnippet.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = xmmword_1B9652FE0;
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  v1 = a1 + *(type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0) + 28);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t static Snippetpb_ExperimentalVisualSnippet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!sub_1B8D57FD0(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    return 0;
  }

  if ((MEMORY[0x1BFADC060](*(a1 + 16), *(a1 + 24), *(a2 + 16), *(a2 + 24)) & 1) == 0)
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  sub_1B8D7B19C();
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = *(type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0) + 28);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_1_22();
  sub_1B8CD2018(v8, v9);
  return OUTLINED_FUNCTION_634() & 1;
}

uint64_t Snippetpb_ExperimentalVisualEntity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_ExperimentalVisualEntity.id.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Snippetpb_ExperimentalVisualEntity.name.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_ExperimentalVisualEntity.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Snippetpb_ExperimentalVisualEntity.locationPoint.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
  sub_1B8DF97C0(v1 + *(v9 + 28), v8);
  v10 = type metadata accessor for Locationpb_Point(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return sub_1B8DFAC04(v8, a1);
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  v11 = a1 + *(v10 + 32);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v12 = *(v10 + 36);
  sub_1B964C130();
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  result = __swift_getEnumTagSinglePayload(v8, 1, v10);
  if (result != 1)
  {
    return sub_1B8D9207C(v8, &qword_1EBAB9280, &qword_1B96535F0);
  }

  return result;
}

uint64_t sub_1B8EB0E18(uint64_t a1)
{
  v2 = type metadata accessor for Locationpb_Point(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B8DFAC68(a1, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Snippetpb_ExperimentalVisualEntity.locationPoint.setter();
}

uint64_t Snippetpb_ExperimentalVisualEntity.locationPoint.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Snippetpb_ExperimentalVisualEntity(v2) + 28);
  sub_1B8D9207C(v1 + v3, &qword_1EBAB9280, &qword_1B96535F0);
  sub_1B8DFAC04(v0, v1 + v3);
  v4 = type metadata accessor for Locationpb_Point(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Snippetpb_ExperimentalVisualEntity.locationPoint.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Locationpb_Point(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Snippetpb_ExperimentalVisualEntity(0) + 28);
  *(v3 + 10) = v11;
  sub_1B8DF97C0(v1 + v11, v6);
  OUTLINED_FUNCTION_117(v6);
  if (v12)
  {
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    *(v10 + 24) = 1;
    v10[4] = 0;
    v10[5] = 0xE000000000000000;
    v13 = v10 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v14 = *(v7 + 36);
    sub_1B964C130();
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    OUTLINED_FUNCTION_117(v6);
    if (!v12)
    {
      sub_1B8D9207C(v6, &qword_1EBAB9280, &qword_1B96535F0);
    }
  }

  else
  {
    sub_1B8DFAC04(v6, v10);
  }

  return sub_1B8DF9CEC;
}

BOOL Snippetpb_ExperimentalVisualEntity.hasLocationPoint.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
  sub_1B8DF97C0(v0 + *(v7 + 28), v6);
  v8 = type metadata accessor for Locationpb_Point(0);
  v9 = __swift_getEnumTagSinglePayload(v6, 1, v8) != 1;
  sub_1B8D9207C(v6, &qword_1EBAB9280, &qword_1B96535F0);
  return v9;
}

Swift::Void __swiftcall Snippetpb_ExperimentalVisualEntity.clearLocationPoint()()
{
  v1 = type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
  sub_1B8D9207C(v0 + *(v1 + 28), &qword_1EBAB9280, &qword_1B96535F0);
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_83();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Snippetpb_ExperimentalVisualEntity.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippetpb_ExperimentalVisualEntity(0) + 24);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Snippetpb_ExperimentalVisualEntity.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Snippetpb_ExperimentalVisualEntity(v2) + 24);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Snippetpb_ExperimentalVisualEntity.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Snippetpb_ExperimentalVisualEntity(v0) + 24);
  return nullsub_1;
}

uint64_t Snippetpb_ExperimentalVisualEntity.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v2 = type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
  v3 = a1 + *(v2 + 24);
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v4 = *(v2 + 28);
  type metadata accessor for Locationpb_Point(0);
  OUTLINED_FUNCTION_83();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Snippetpb_ExperimentalVisualSnippet.domain.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Snippetpb_ExperimentalVisualSnippet.domain.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t Snippetpb_ExperimentalVisualSnippet.field2.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v3, v4);
  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_ExperimentalVisualSnippet.field2.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B8D538A0(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Snippetpb_ExperimentalVisualSnippet.visualEntities.setter(uint64_t a1)
{
  v3 = *(v1 + 32);

  *(v1 + 32) = a1;
  return result;
}

uint64_t Snippetpb_ExperimentalVisualSnippet.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0) + 28);
  v4 = sub_1B964C2B0();
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 16);

  return v7(a1, v1 + v3, v5);
}

uint64_t Snippetpb_ExperimentalVisualSnippet.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_313();
  v3 = *(type metadata accessor for Snippetpb_ExperimentalVisualSnippet(v2) + 28);
  v4 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v4);
  v6 = *(v5 + 40);

  return v6(v1 + v3, v0);
}

uint64_t (*Snippetpb_ExperimentalVisualSnippet.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_313();
  v1 = *(type metadata accessor for Snippetpb_ExperimentalVisualSnippet(v0) + 28);
  return nullsub_1;
}

uint64_t sub_1B8EB15A8()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD550);
  __swift_project_value_buffer(v0, qword_1EBABD550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "name";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "location_point";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v13 = *MEMORY[0x1E69AADE8];
  v9();
  return sub_1B964C760();
}

uint64_t Snippetpb_ExperimentalVisualEntity.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      OUTLINED_FUNCTION_9();
      sub_1B8EB1858();
    }

    else if (result == 2 || result == 1)
    {
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B8EB1858()
{
  v0 = *(type metadata accessor for Snippetpb_ExperimentalVisualEntity(0) + 28);
  type metadata accessor for Locationpb_Point(0);
  sub_1B8CD2018(&qword_1EBABA448, type metadata accessor for Locationpb_Point);
  return sub_1B964C580();
}

uint64_t Snippetpb_ExperimentalVisualEntity.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = type metadata accessor for Locationpb_Point(0);
  v10 = OUTLINED_FUNCTION_59_1(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v0;
  v16 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v17 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
  {
    v19 = *(v2 + 16);
    v20 = *(v2 + 24);
    OUTLINED_FUNCTION_1();
    if (!v21 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
    {
      v22 = type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
      sub_1B8DF97C0(v2 + *(v22 + 28), v8);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_1B8D9207C(v8, &qword_1EBAB9280, &qword_1B96535F0);
      }

      else
      {
        v25 = v22;
        sub_1B8DFAC04(v8, v14);
        sub_1B8CD2018(&qword_1EBABA448, type metadata accessor for Locationpb_Point);
        OUTLINED_FUNCTION_687();
        sub_1B964C740();
        result = sub_1B8DFABA8(v14);
        if (v1)
        {
          return result;
        }

        v22 = v25;
      }

      v23 = *(v22 + 24);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Snippetpb_ExperimentalVisualEntity.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Locationpb_Point(0);
  v5 = OUTLINED_FUNCTION_59_1(v4);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9280, &qword_1B96535F0);
  OUTLINED_FUNCTION_183(v10);
  v12 = *(v11 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9288, &unk_1B964DA70);
  OUTLINED_FUNCTION_59_1(v16);
  v18 = *(v17 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v34 - v20;
  v22 = *a1 == *a2 && a1[1] == a2[1];
  if (!v22 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_20;
  }

  v23 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v23 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_20;
  }

  v24 = type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
  v25 = *(v24 + 28);
  v26 = *(v16 + 48);
  sub_1B8DF97C0(a1 + v25, v21);
  sub_1B8DF97C0(a2 + v25, &v21[v26]);
  OUTLINED_FUNCTION_117(v21);
  if (v22)
  {
    OUTLINED_FUNCTION_117(&v21[v26]);
    if (v22)
    {
      sub_1B8D9207C(v21, &qword_1EBAB9280, &qword_1B96535F0);
LABEL_22:
      v30 = *(v24 + 24);
      sub_1B964C2B0();
      OUTLINED_FUNCTION_1_22();
      sub_1B8CD2018(v31, v32);
      v28 = OUTLINED_FUNCTION_634();
      return v28 & 1;
    }

    goto LABEL_19;
  }

  sub_1B8DF97C0(v21, v15);
  OUTLINED_FUNCTION_117(&v21[v26]);
  if (v27)
  {
    sub_1B8DFABA8(v15);
LABEL_19:
    sub_1B8D9207C(v21, &qword_1EBAB9288, &unk_1B964DA70);
    goto LABEL_20;
  }

  sub_1B8DFAC04(&v21[v26], v9);
  v29 = static Locationpb_Point.== infix(_:_:)(v15, v9);
  sub_1B8DFABA8(v9);
  sub_1B8DFABA8(v15);
  sub_1B8D9207C(v21, &qword_1EBAB9280, &qword_1B96535F0);
  if (v29)
  {
    goto LABEL_22;
  }

LABEL_20:
  v28 = 0;
  return v28 & 1;
}

uint64_t sub_1B8EB1E08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2018(&qword_1EBABD5E8, type metadata accessor for Snippetpb_ExperimentalVisualEntity);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EB1E88(uint64_t a1)
{
  v2 = sub_1B8CD2018(&qword_1EBABD588, type metadata accessor for Snippetpb_ExperimentalVisualEntity);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EB1EF8()
{
  sub_1B8CD2018(&qword_1EBABD588, type metadata accessor for Snippetpb_ExperimentalVisualEntity);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EB1F94()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD568);
  __swift_project_value_buffer(v0, qword_1EBABD568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "field_2";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v11 = *MEMORY[0x1E69AADE8];
  v9();
  v12 = (v5 + 2 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "visual_entities";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Snippetpb_ExperimentalVisualSnippet.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B8EB2254();
        break;
      case 2:
        sub_1B964C470();
        break;
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B8E8FC9C();
        break;
    }
  }

  return result;
}

uint64_t sub_1B8EB2254()
{
  type metadata accessor for Snippetpb_ExperimentalVisualEntity(0);
  sub_1B8CD2018(&qword_1EBABD588, type metadata accessor for Snippetpb_ExperimentalVisualEntity);
  return sub_1B964C570();
}

uint64_t Snippetpb_ExperimentalVisualSnippet.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (v5 = *v0, v6 = *(v2 + 8), sub_1B8DEE788(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (sub_1B8D99EA8(*(v2 + 16), *(v2 + 24)) || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C6A0(), !v1))
    {
      if (!*(*(v2 + 32) + 16) || (type metadata accessor for Snippetpb_ExperimentalVisualEntity(0), sub_1B8CD2018(&qword_1EBABD588, type metadata accessor for Snippetpb_ExperimentalVisualEntity), OUTLINED_FUNCTION_687(), result = sub_1B964C730(), !v1))
      {
        v4 = *(type metadata accessor for Snippetpb_ExperimentalVisualSnippet(0) + 28);
        return OUTLINED_FUNCTION_8_1();
      }
    }
  }

  return result;
}

uint64_t sub_1B8EB246C(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1B964CA70();
  a1(0);
  sub_1B8CD2018(a2, a3);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EB2550(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2018(&qword_1EBABD5E0, type metadata accessor for Snippetpb_ExperimentalVisualSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EB25D0(uint64_t a1)
{
  v2 = sub_1B8CD2018(&qword_1EBABAFA0, type metadata accessor for Snippetpb_ExperimentalVisualSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EB2640()
{
  sub_1B8CD2018(&qword_1EBABAFA0, type metadata accessor for Snippetpb_ExperimentalVisualSnippet);

  return sub_1B964C5D0();
}

void sub_1B8EB2948()
{
  sub_1B964C2B0();
  if (v0 <= 0x3F)
  {
    sub_1B8EB2B00(319, &qword_1ED9F3558, type metadata accessor for Locationpb_Point, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8EB2A34()
{
  sub_1B8EB2B00(319, &qword_1EBABD5D8, type metadata accessor for Snippetpb_ExperimentalVisualEntity, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B964C2B0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B8EB2B00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t Snippetpb_FoodSnippet.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xE000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0xE000000000000000;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0xE000000000000000;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  v1 = a1 + *(type metadata accessor for Snippetpb_FoodSnippet() + 44);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t type metadata accessor for Snippetpb_FoodSnippet()
{
  result = qword_1EBABD620;
  if (!qword_1EBABD620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static Snippetpb_FoodSnippet.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 32) == *(a2 + 32) && *(a1 + 40) == *(a2 + 40);
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a1 + 48) == *(a2 + 48) && *(a1 + 56) == *(a2 + 56);
  if (!v7 && (sub_1B964C9F0() & 1) == 0 || *(a1 + 64) != *(a2 + 64) || *(a1 + 68) != *(a2 + 68) || *(a1 + 72) != *(a2 + 72))
  {
    return 0;
  }

  v8 = *(type metadata accessor for Snippetpb_FoodSnippet() + 44);
  sub_1B964C2B0();
  sub_1B8CD2060(&qword_1EBAB3B38, MEMORY[0x1E69AAC08]);
  return sub_1B964C850() & 1;
}

uint64_t Snippetpb_FoodSnippet.url.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_FoodSnippet.url.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = v1[1];

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Snippetpb_FoodSnippet.imageURL.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_FoodSnippet.imageURL.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 24);

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Snippetpb_FoodSnippet.title.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_FoodSnippet.title.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 40);

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Snippetpb_FoodSnippet.description_p.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

uint64_t Snippetpb_FoodSnippet.description_p.setter()
{
  OUTLINED_FUNCTION_16();
  v3 = *(v1 + 56);

  *(v1 + 48) = v2;
  *(v1 + 56) = v0;
  return result;
}

uint64_t Snippetpb_FoodSnippet.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Snippetpb_FoodSnippet() + 44);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Snippetpb_FoodSnippet.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Snippetpb_FoodSnippet() + 44);
  v4 = sub_1B964C2B0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B8EB3154()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD5F0);
  __swift_project_value_buffer(v0, qword_1EBABD5F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1B9650810;
  v4 = v21 + v3 + v1[14];
  *(v21 + v3) = 1;
  *v4 = "url";
  *(v4 + 8) = 3;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v21 + v3 + v2 + v1[14];
  *(v21 + v3 + v2) = 2;
  *v8 = "image_url";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v21 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "title";
  *(v11 + 1) = 5;
  v11[16] = 2;
  v7();
  v12 = (v21 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "description";
  *(v13 + 1) = 11;
  v13[16] = 2;
  v7();
  v14 = (v21 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "recipe_total_time_seconds";
  *(v15 + 1) = 25;
  v15[16] = 2;
  v7();
  v16 = (v21 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "servings";
  *(v17 + 1) = 8;
  v17[16] = 2;
  v7();
  v18 = (v21 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "calories_per_serving";
  *(v19 + 1) = 20;
  v19[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t static Snippetpb_FoodSnippet._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBAB6540 != -1)
  {
    swift_once();
  }

  v2 = sub_1B964C780();
  v3 = __swift_project_value_buffer(v2, qword_1EBABD5F0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Snippetpb_FoodSnippet.decodeMessage<A>(decoder:)()
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
      case 3:
      case 4:
        sub_1B964C530();
        break;
      case 5:
      case 6:
      case 7:
        sub_1B964C4A0();
        break;
      default:
        continue;
    }
  }
}

uint64_t Snippetpb_FoodSnippet.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  OUTLINED_FUNCTION_1();
  if (!v4 || (result = OUTLINED_FUNCTION_3(), !v1))
  {
    v6 = v0[2];
    v7 = v0[3];
    OUTLINED_FUNCTION_1();
    if (!v8 || (result = OUTLINED_FUNCTION_3(), !v1))
    {
      v9 = v0[4];
      v10 = v0[5];
      OUTLINED_FUNCTION_1();
      if (!v11 || (result = OUTLINED_FUNCTION_3(), !v1))
      {
        v12 = v0[6];
        v13 = v0[7];
        OUTLINED_FUNCTION_1();
        if (!v14 || (result = OUTLINED_FUNCTION_3(), !v1))
        {
          if (!*(v0 + 16) || (result = OUTLINED_FUNCTION_16_9(), !v1))
          {
            if (!*(v0 + 17) || (result = OUTLINED_FUNCTION_16_9(), !v1))
            {
              if (!*(v0 + 18) || (result = OUTLINED_FUNCTION_16_9(), !v1))
              {
                v15 = v0 + *(type metadata accessor for Snippetpb_FoodSnippet() + 44);
                return sub_1B964C290();
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t Snippetpb_FoodSnippet.hashValue.getter()
{
  sub_1B964CA70();
  type metadata accessor for Snippetpb_FoodSnippet();
  sub_1B8CD2060(&qword_1EBABD608, type metadata accessor for Snippetpb_FoodSnippet);
  sub_1B964C7E0();
  return sub_1B964CA90();
}

uint64_t sub_1B8EB37CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2060(&qword_1EBABD630, type metadata accessor for Snippetpb_FoodSnippet);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B8EB384C(uint64_t a1)
{
  v2 = sub_1B8CD2060(&qword_1EBABAF98, type metadata accessor for Snippetpb_FoodSnippet);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B8EB38BC()
{
  sub_1B8CD2060(&qword_1EBABAF98, type metadata accessor for Snippetpb_FoodSnippet);

  return sub_1B964C5D0();
}

uint64_t sub_1B8EB3A84()
{
  result = sub_1B964C2B0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Snippetpb_MediaSnippet.init()@<X0>(uint64_t a1@<X8>)
{
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v2 = *(type metadata accessor for Snippetpb_MediaSnippet(0) + 20);
  if (qword_1EBAB6550 != -1)
  {
    swift_once();
  }

  *(a1 + v2) = qword_1EBABD650;
}

uint64_t static Snippetpb_MediaSnippet.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  OUTLINED_FUNCTION_4_16();
  if (*(v1 + v2) != *(v0 + v2))
  {
    v3 = *(v1 + v2);

    sub_1B8EB9A38();
    v5 = v4;

    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_28_7();
  sub_1B8CD20A8(v6, v7);
  return sub_1B964C850() & 1;
}

uint64_t Snippetpb_MediaSnippet.id.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EB3CC4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MediaSnippet.id.setter();
}

void Snippetpb_MediaSnippet.id.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EB7410(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 24);
  *(v5 + 16) = v2;
  *(v5 + 24) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.id.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 24);
  *(v1 + 48) = *(v5 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB3DC8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.id.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_8_15();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8EB7410(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 24);
    *(v9 + 16) = v4;
    *(v9 + 24) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MediaSnippet.storefrontID.getter()
{
  OUTLINED_FUNCTION_4_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 32);
}

uint64_t Snippetpb_MediaSnippet.storefrontID.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = OUTLINED_FUNCTION_57_3(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EB7410(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 32) = v0;
  return result;
}

uint64_t Snippetpb_MediaSnippet.storefrontID.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_4_16();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v4 + 32);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EB3F60(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v6 = OUTLINED_FUNCTION_177_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_8_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EB7410(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_18();
  *(v7 + 32) = v3;

  free(v1);
}

uint64_t Snippetpb_MediaSnippet.languageID.getter()
{
  OUTLINED_FUNCTION_4_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  return *(v2 + 40);
}

uint64_t Snippetpb_MediaSnippet.languageID.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = OUTLINED_FUNCTION_57_3(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EB7410(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  result = OUTLINED_FUNCTION_9_3();
  *(v5 + 40) = v0;
  return result;
}

uint64_t Snippetpb_MediaSnippet.languageID.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 80) = v0;
  OUTLINED_FUNCTION_4_16();
  *(v1 + 88) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 72) = *(v4 + 40);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EB40F0(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v6 = OUTLINED_FUNCTION_177_3(v5);
  v7 = *(v4 + v2);
  if ((v6 & 1) == 0)
  {
    v8 = *(v1 + 88);
    v9 = *(v1 + 80);
    OUTLINED_FUNCTION_8_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EB7410(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  OUTLINED_FUNCTION_18();
  *(v7 + 40) = v3;

  free(v1);
}

uint64_t Snippetpb_MediaSnippet.adamID.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EB41BC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MediaSnippet.adamID.setter();
}

void Snippetpb_MediaSnippet.adamID.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EB7410(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 56);
  *(v5 + 48) = v2;
  *(v5 + 56) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.adamID.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 56);
  *(v1 + 48) = *(v5 + 48);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB42C0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.adamID.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_8_15();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8EB7410(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 56);
    *(v9 + 48) = v4;
    *(v9 + 56) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MediaSnippet.name.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EB4394(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MediaSnippet.name.setter();
}

void Snippetpb_MediaSnippet.name.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EB7410(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 72);
  *(v5 + 64) = v2;
  *(v5 + 72) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.name.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 72);
  *(v1 + 48) = *(v5 + 64);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB4498(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.name.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_8_15();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8EB7410(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 72);
    *(v9 + 64) = v4;
    *(v9 + 72) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MediaSnippet.kind.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_15();
  result = OUTLINED_FUNCTION_10_4();
  v4 = *(v1 + 88);
  *a1 = *(v1 + 80);
  *(a1 + 8) = v4;
  return result;
}

uint64_t sub_1B8EB4570@<X0>(uint64_t a1@<X8>)
{
  result = Snippetpb_MediaSnippet.kind.getter(&v4);
  v3 = v5;
  *a1 = v4;
  *(a1 + 8) = v3;
  return result;
}

void sub_1B8EB45B4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  Snippetpb_MediaSnippet.kind.setter();
}

void Snippetpb_MediaSnippet.kind.setter()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v0;
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = OUTLINED_FUNCTION_13_8();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EB7410(v8);
    *(v2 + v1) = v7;
  }

  OUTLINED_FUNCTION_9_3();
  *(v7 + 80) = v4;
  *(v7 + 88) = v5;
  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.kind.modify()
{
  v2 = __swift_coroFrameAllocStub(0x60uLL);
  *(OUTLINED_FUNCTION_99(v2) + 88) = v0;
  OUTLINED_FUNCTION_4_16();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_62_0();
  v5 = *(v4 + 88);
  *(v1 + 72) = *(v4 + 80);
  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EB46D4(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 72);
  v4 = *(v1 + 84);
  v5 = *(v1 + 88);
  v6 = *(v1 + 80);
  v7 = *(v5 + v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = *(v1 + 84);
    v11 = *(v1 + 88);
    OUTLINED_FUNCTION_8_15();
    v12 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EB7410(v12);
    *(v11 + v10) = v9;
  }

  OUTLINED_FUNCTION_18();
  *(v9 + 80) = v3;
  *(v9 + 88) = v6;

  free(v1);
}

uint64_t Snippetpb_MediaSnippet.artistName.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EB47C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MediaSnippet.artistName.setter();
}

void Snippetpb_MediaSnippet.artistName.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EB7410(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 104);
  *(v5 + 96) = v2;
  *(v5 + 104) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.artistName.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 104);
  *(v1 + 48) = *(v5 + 96);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB48C8(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.artistName.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_8_15();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8EB7410(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 104);
    *(v9 + 96) = v4;
    *(v9 + 104) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MediaSnippet.description_p.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EB499C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MediaSnippet.description_p.setter();
}

void Snippetpb_MediaSnippet.description_p.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EB7410(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 120);
  *(v5 + 112) = v2;
  *(v5 + 120) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.description_p.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 120);
  *(v1 + 48) = *(v5 + 112);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB4AA0(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.description_p.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_8_15();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8EB7410(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 120);
    *(v9 + 112) = v4;
    *(v9 + 120) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MediaSnippet.url.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EB4B74(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MediaSnippet.url.setter();
}

void Snippetpb_MediaSnippet.url.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EB7410(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 136);
  *(v5 + 128) = v2;
  *(v5 + 136) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.url.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 136);
  *(v1 + 48) = *(v5 + 128);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB4C78(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.url.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_8_15();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8EB7410(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 136);
    *(v9 + 128) = v4;
    *(v9 + 136) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MediaSnippet.releaseDate.getter()
{
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_10_4();
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);

  return OUTLINED_FUNCTION_432();
}

void sub_1B8EB4D4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MediaSnippet.releaseDate.setter();
}

void Snippetpb_MediaSnippet.releaseDate.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_7_15();
  v5 = *(v1 + v3);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EB7410(v6);
    OUTLINED_FUNCTION_135(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 152);
  *(v5 + 144) = v2;
  *(v5 + 152) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.releaseDate.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_0_26(v3);
  v5 = *(v0 + v4);
  OUTLINED_FUNCTION_62_0();
  v6 = *(v5 + 152);
  *(v1 + 48) = *(v5 + 144);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB4E50(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Snippetpb_MediaSnippet.releaseDate.setter();
    v7 = *(v1 + 56);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_163_1();
    v9 = *(v5 + v2);
    if ((v8 & 1) == 0)
    {
      v10 = *(v1 + 72);
      v11 = *(v1 + 64);
      OUTLINED_FUNCTION_8_15();
      v12 = OUTLINED_FUNCTION_40_0();
      v13 = sub_1B8EB7410(v12);
      OUTLINED_FUNCTION_168(v13);
    }

    OUTLINED_FUNCTION_59_3();
    v14 = *(v9 + 152);
    *(v9 + 144) = v4;
    *(v9 + 152) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MediaSnippet.genreNames.getter()
{
  OUTLINED_FUNCTION_4_16();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_10_4();
  v3 = *(v2 + 160);
}

uint64_t sub_1B8EB4F20(uint64_t *a1)
{
  v1 = *a1;

  return Snippetpb_MediaSnippet.genreNames.setter();
}

uint64_t Snippetpb_MediaSnippet.genreNames.setter()
{
  v3 = OUTLINED_FUNCTION_313();
  v4 = OUTLINED_FUNCTION_57_3(v3);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EB7410(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  OUTLINED_FUNCTION_9_3();
  v8 = *(v5 + 160);
  *(v5 + 160) = v0;
}

uint64_t Snippetpb_MediaSnippet.genreNames.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_123_2(v4);
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + 160);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB5020(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v3 = *(v2 + 48);
  if (v4)
  {
    v5 = *(v1 + 56);

    Snippetpb_MediaSnippet.genreNames.setter();
    v6 = *(v1 + 48);
  }

  else
  {
    v7 = *(v1 + 64);
    v8 = *(v1 + 56);
    v9 = *(v8 + v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v8 + v7);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = *(v1 + 64);
      v13 = *(v1 + 56);
      OUTLINED_FUNCTION_8_15();
      v14 = OUTLINED_FUNCTION_40_0();
      v11 = sub_1B8EB7410(v14);
      *(v13 + v12) = v11;
    }

    OUTLINED_FUNCTION_59_3();
    v15 = *(v11 + 160);
    *(v11 + 160) = v3;
  }

  free(v1);
}

uint64_t Snippetpb_MediaSnippet.artwork.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Amppb_Artwork(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    a1[3] = 0xE000000000000000;
    v10 = a1 + *(v8 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_23();
    return sub_1B8EBA878();
  }

  return result;
}

uint64_t Snippetpb_MediaSnippet.artwork.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_13_8();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EB7410(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_1_23();
  sub_1B8EBA878();
  v10 = type metadata accessor for Amppb_Artwork(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Snippetpb_MediaSnippet.artwork.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9680, &unk_1B964EEA0);
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  v7 = type metadata accessor for Amppb_Artwork(v6);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 48) = v10;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    *v10 = 0;
    v10[1] = 0;
    v10[2] = 0;
    v10[3] = 0xE000000000000000;
    v12 = v10 + *(v7 + 28);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9680, &unk_1B964EEA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_23();
    sub_1B8EBA878();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8EB5488(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MediaSnippet.offers.setter();
}

uint64_t Snippetpb_MediaSnippet.offers.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_123_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__offers;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + v5);

  return OUTLINED_FUNCTION_514();
}

uint64_t Snippetpb_MediaSnippet.userRating.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Amppb_UserRating(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0u;
    a1[1] = 0u;
    v10 = a1 + *(v8 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBAB9690, &qword_1B964EEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_10();
    return sub_1B8EBA878();
  }

  return result;
}

uint64_t sub_1B8EB5654(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = a5(0);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1B8EBA8D0();
  return a7(v13);
}

uint64_t Snippetpb_MediaSnippet.userRating.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_13_8();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EB7410(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_10_10();
  sub_1B8EBA878();
  v10 = type metadata accessor for Amppb_UserRating(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Snippetpb_MediaSnippet.userRating.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9690, &qword_1B964EEB8);
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  v7 = type metadata accessor for Amppb_UserRating(v6);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 48) = v10;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    *v10 = 0u;
    v10[1] = 0u;
    v12 = v10 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAB9690, &qword_1B964EEB8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_10();
    sub_1B8EBA878();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

BOOL sub_1B8EB596C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - v12;
  OUTLINED_FUNCTION_3_15();
  v14 = *a3;
  OUTLINED_FUNCTION_521();
  sub_1B8D92024();
  v15 = a4(0);
  v16 = __swift_getEnumTagSinglePayload(v13, 1, v15) != 1;
  sub_1B8D9207C(v13, a1, a2);
  return v16;
}

uint64_t sub_1B8EB5A74(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v7 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_183(v8);
  v10 = *(v9 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = *(type metadata accessor for Snippetpb_MediaSnippet(0) + 20);
  v15 = *(v4 + v14);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v18 = OUTLINED_FUNCTION_40_0();
    *(v7 + v14) = sub_1B8EB7410(v18);
  }

  v19 = a3(0);
  __swift_storeEnumTagSinglePayload(v13, 1, 1, v19);
  v20 = *a4;
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t Snippetpb_MediaSnippet.eBookInfo.getter@<X0>(void *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Amppb_EbookInfo(0);
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    *a1 = 0;
    a1[1] = 0xE000000000000000;
    a1[2] = 0;
    a1[3] = 0;
    a1[4] = 0xE000000000000000;
    a1[5] = 0;
    a1[6] = 0xE000000000000000;
    v10 = a1 + *(v8 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v7, &qword_1EBAB96A8, &qword_1B964EED0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_11();
    return sub_1B8EBA878();
  }

  return result;
}

uint64_t Snippetpb_MediaSnippet.eBookInfo.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  OUTLINED_FUNCTION_183(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_13_8();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EB7410(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  OUTLINED_FUNCTION_9_11();
  sub_1B8EBA878();
  v10 = type metadata accessor for Amppb_EbookInfo(0);
  OUTLINED_FUNCTION_65_1(v10);
  OUTLINED_FUNCTION_73_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Snippetpb_MediaSnippet.eBookInfo.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = __swift_coroFrameAllocStub(0x38uLL);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB96A8, &qword_1B964EED0);
  OUTLINED_FUNCTION_183(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_71(v5);
  v7 = type metadata accessor for Amppb_EbookInfo(v6);
  OUTLINED_FUNCTION_59_1(v7);
  v9 = *(v8 + 64);
  *(v1 + 40) = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  *(v1 + 48) = v10;
  OUTLINED_FUNCTION_3_15();
  OUTLINED_FUNCTION_521();
  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_17_2();
  if (v11)
  {
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0xE000000000000000;
    v10[5] = 0;
    v10[6] = 0xE000000000000000;
    v12 = v10 + *(v7 + 32);
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v11)
    {
      sub_1B8D9207C(v0, &qword_1EBAB96A8, &qword_1B964EED0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_11();
    sub_1B8EBA878();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

void sub_1B8EB5EDC(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 24);
  v8 = *(*a1 + 32);
  if (a2)
  {
    v9 = *(*a1 + 48);
    sub_1B8EBA8D0();
    a3(v5);
    sub_1B8EBA928();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v8);

  free(v4);
}

uint64_t sub_1B8EB5FF8(uint64_t *a1)
{
  OUTLINED_FUNCTION_3_15();
  v3 = *a1;
  OUTLINED_FUNCTION_10_4();
  v4 = *(v1 + v3);
}

void sub_1B8EB6038(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MediaSnippet.children.setter();
}

void sub_1B8EB6070()
{
  OUTLINED_FUNCTION_193_0();
  v3 = v2;
  v5 = v4;
  v6 = OUTLINED_FUNCTION_13_8();
  v7 = *(v0 + v1);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v8 = OUTLINED_FUNCTION_40_0();
    v9 = sub_1B8EB7410(v8);
    OUTLINED_FUNCTION_135(v9);
  }

  v10 = *v3;
  OUTLINED_FUNCTION_9_3();
  v11 = *(v7 + v10);
  *(v7 + v10) = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.children.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_123_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__children;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB6180(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MediaSnippet.origin.setter();
}

uint64_t Snippetpb_MediaSnippet.origin.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_26(v2);
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__origin;
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t sub_1B8EB6268(void *a1)
{
  OUTLINED_FUNCTION_4_16();
  v4 = (*(v1 + v3) + *a1);
  OUTLINED_FUNCTION_521();
  v6 = *v4;
  v5 = v4[1];

  return v6;
}

void sub_1B8EB62C0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MediaSnippet.bornOrFormed.setter();
}

void sub_1B8EB630C()
{
  OUTLINED_FUNCTION_193_0();
  v2 = v1;
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v8 = *(type metadata accessor for Snippetpb_MediaSnippet(0) + 20);
  v9 = *(v0 + v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v0 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v12 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EB7410(v12);
    *(v3 + v8) = v11;
  }

  v13 = (v11 + *v2);
  OUTLINED_FUNCTION_18();
  v14 = v13[1];
  *v13 = v7;
  v13[1] = v5;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Snippetpb_MediaSnippet.bornOrFormed.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_26(v2);
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__bornOrFormed;
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB6434(uint64_t *a1)
{
  v1 = *a1;

  Snippetpb_MediaSnippet.contentRatingsBySystem.setter();
}

uint64_t Snippetpb_MediaSnippet.contentRatingsBySystem.modify()
{
  v2 = OUTLINED_FUNCTION_194_0();
  v3 = __swift_coroFrameAllocStub(v2);
  *(OUTLINED_FUNCTION_99(v3) + 56) = v0;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_123_2(v4);
  v5 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__contentRatingsBySystem;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 48) = *(v0 + v5);

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB6504(uint64_t *a1)
{
  OUTLINED_FUNCTION_238(a1);
  v5 = *(v4 + 48);
  if (v6)
  {
    v7 = v3;
    v8 = *(v1 + 56);

    v7(v9);
    v10 = *(v1 + 48);
  }

  else
  {
    v11 = v2;
    v12 = *(v1 + 64);
    v13 = *(v1 + 56);
    v14 = *(v13 + v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *(v13 + v12);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v17 = *(v1 + 64);
      v18 = *(v1 + 56);
      OUTLINED_FUNCTION_8_15();
      v19 = OUTLINED_FUNCTION_40_0();
      v20 = sub_1B8EB7410(v19);
      OUTLINED_FUNCTION_168(v20);
    }

    v21 = *v11;
    OUTLINED_FUNCTION_59_3();
    v22 = *(v16 + v21);
    *(v16 + v21) = v5;
  }

  free(v1);
}

void sub_1B8EB65C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MediaSnippet.parentName.setter();
}

uint64_t Snippetpb_MediaSnippet.parentName.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_26(v2);
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__parentName;
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB66B0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Snippetpb_MediaSnippet.siribaseID.setter();
}

uint64_t Snippetpb_MediaSnippet.siribaseID.modify()
{
  v1 = OUTLINED_FUNCTION_126();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_0_26(v2);
  v4 = *(v0 + v3) + OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__siribaseID;
  OUTLINED_FUNCTION_62_0();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

void sub_1B8EB678C(uint64_t a1)
{
  OUTLINED_FUNCTION_58_0(a1);
  if (v6)
  {
    v7 = v5;
    OUTLINED_FUNCTION_191();
    v8 = OUTLINED_FUNCTION_461();
    v7(v8);
    v9 = *(v1 + 56);
  }

  else
  {
    v10 = v4;
    v11 = *(v1 + 72);
    v12 = *(v1 + 64);
    v13 = *(v12 + v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v12 + v11);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = *(v1 + 72);
      v17 = *(v1 + 64);
      OUTLINED_FUNCTION_8_15();
      v18 = OUTLINED_FUNCTION_40_0();
      v15 = sub_1B8EB7410(v18);
      *(v17 + v16) = v15;
    }

    v19 = (v15 + *v10);
    OUTLINED_FUNCTION_18();
    v20 = v19[1];
    *v19 = v3;
    v19[1] = v2;
  }

  free(v1);
}

uint64_t Snippetpb_MediaSnippet.ampMusicResult.getter()
{
  OUTLINED_FUNCTION_4_16();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
  OUTLINED_FUNCTION_10_4();
  return *(v2 + v3);
}

uint64_t Snippetpb_MediaSnippet.ampMusicResult.setter(char a1)
{
  v4 = OUTLINED_FUNCTION_57_3(0);
  v5 = *(v1 + v2);
  if ((v4 & 1) == 0)
  {
    OUTLINED_FUNCTION_8_15();
    v6 = OUTLINED_FUNCTION_40_0();
    v7 = sub_1B8EB7410(v6);
    OUTLINED_FUNCTION_157_2(v7);
  }

  v8 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
  result = OUTLINED_FUNCTION_9_3();
  *(v5 + v8) = a1 & 1;
  return result;
}

uint64_t Snippetpb_MediaSnippet.ampMusicResult.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_99(v2) + 72) = v0;
  OUTLINED_FUNCTION_4_16();
  *(v1 + 80) = v3;
  v4 = *(v0 + v3);
  v5 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
  OUTLINED_FUNCTION_62_0();
  *(v1 + 84) = *(v4 + v5);
  return OUTLINED_FUNCTION_105_0();
}

void sub_1B8EB6974(uint64_t *a1)
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
    OUTLINED_FUNCTION_8_15();
    v10 = OUTLINED_FUNCTION_40_0();
    v11 = sub_1B8EB7410(v10);
    OUTLINED_FUNCTION_168(v11);
  }

  v12 = OBJC_IVAR____TtCV10PegasusAPI22Snippetpb_MediaSnippetP33_92C07CD217303463CAB582FBC49FAE4B13_StorageClass__ampMusicResult;
  OUTLINED_FUNCTION_18();
  *(v7 + v12) = v4;

  free(v1);
}

uint64_t Snippetpb_MediaSnippet.unknownFields.getter()
{
  v0 = sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1(v0);
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_432();

  return v4(v3);
}

uint64_t Snippetpb_MediaSnippet.unknownFields.setter()
{
  OUTLINED_FUNCTION_313();
  v2 = sub_1B964C2B0();
  v3 = OUTLINED_FUNCTION_59_1(v2);
  v5 = *(v4 + 40);

  return v5(v1, v0, v3);
}

uint64_t sub_1B8EB6B0C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBABD638);
  __swift_project_value_buffer(v0, qword_1EBABD638);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_1B965A5F0;
  v4 = v51 + v3 + v1[14];
  *(v51 + v3) = 1;
  *v4 = "id";
  *(v4 + 8) = 2;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v51 + v3 + v2 + v1[14];
  *(v51 + v3 + v2) = 2;
  *v8 = "storefront_id";
  *(v8 + 8) = 13;
  *(v8 + 16) = 2;
  v9 = *MEMORY[0x1E69AADE8];
  v7();
  v10 = (v51 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "language_id";
  *(v11 + 1) = 11;
  v11[16] = 2;
  v7();
  v12 = (v51 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "adam_id";
  *(v13 + 1) = 7;
  v13[16] = 2;
  v7();
  v14 = (v51 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "name";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v7();
  v16 = (v51 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "kind";
  *(v17 + 1) = 4;
  v17[16] = 2;
  v7();
  v18 = (v51 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "artist_name";
  *(v19 + 1) = 11;
  v19[16] = 2;
  v7();
  v20 = (v51 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "description";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v7();
  v22 = (v51 + v3 + 8 * v2);
  v23 = v22 + v1[14];
  *v22 = 9;
  *v23 = "url";
  *(v23 + 1) = 3;
  v23[16] = 2;
  v7();
  v24 = (v51 + v3 + 9 * v2);
  v25 = v24 + v1[14];
  *v24 = 10;
  *v25 = "release_date";
  *(v25 + 1) = 12;
  v25[16] = 2;
  v7();
  v26 = (v51 + v3 + 10 * v2);
  v27 = v26 + v1[14];
  *v26 = 11;
  *v27 = "genre_names";
  *(v27 + 1) = 11;
  v27[16] = 2;
  v7();
  v28 = (v51 + v3 + 11 * v2);
  v29 = v28 + v1[14];
  *v28 = 12;
  *v29 = "artwork";
  *(v29 + 1) = 7;
  v29[16] = 2;
  v7();
  v30 = (v51 + v3 + 12 * v2);
  v31 = v30 + v1[14];
  *v30 = 13;
  *v31 = "offers";
  *(v31 + 1) = 6;
  v31[16] = 2;
  v7();
  v32 = (v51 + v3 + 13 * v2);
  v33 = v32 + v1[14];
  *v32 = 14;
  *v33 = "user_rating";
  *(v33 + 1) = 11;
  v33[16] = 2;
  v7();
  v34 = (v51 + v3 + 14 * v2);
  v35 = v34 + v1[14];
  *v34 = 15;
  *v35 = "e_book_info";
  *(v35 + 1) = 11;
  v35[16] = 2;
  v7();
  v36 = (v51 + v3 + 15 * v2);
  v37 = v36 + v1[14];
  *v36 = 16;
  *v37 = "children";
  *(v37 + 1) = 8;
  v37[16] = 2;
  v7();
  v38 = (v51 + v3 + 16 * v2);
  v39 = v38 + v1[14];
  *v38 = 17;
  *v39 = "origin";
  *(v39 + 1) = 6;
  v39[16] = 2;
  v7();
  v40 = (v51 + v3 + 17 * v2);
  v41 = v40 + v1[14];
  *v40 = 18;
  *v41 = "born_or_formed";
  *(v41 + 1) = 14;
  v41[16] = 2;
  v7();
  v42 = (v51 + v3 + 18 * v2);
  v43 = v42 + v1[14];
  *v42 = 19;
  *v43 = "content_ratings_by_system";
  *(v43 + 1) = 25;
  v43[16] = 2;
  v7();
  v44 = (v51 + v3 + 19 * v2);
  v45 = v44 + v1[14];
  *v44 = 20;
  *v45 = "parent_name";
  *(v45 + 1) = 11;
  v45[16] = 2;
  v7();
  v46 = (v51 + v3 + 20 * v2);
  v47 = v46 + v1[14];
  *v46 = 21;
  *v47 = "siribase_id";
  *(v47 + 1) = 11;
  v47[16] = 2;
  v7();
  v48 = (v51 + v3 + 21 * v2);
  v49 = v48 + v1[14];
  *v48 = 22;
  *v49 = "amp_music_result";
  *(v49 + 1) = 16;
  v49[16] = 2;
  v7();
  return sub_1B964C760();
}