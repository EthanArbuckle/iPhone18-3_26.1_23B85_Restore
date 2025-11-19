uint64_t OneUpSharePlayNavigationGesturePayload.Gesture.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v32 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_1A42BF838(0, &qword_1EB137388, sub_1A42BF694, &type metadata for OneUpSharePlayNavigationGesturePayload.Gesture.EndScrubbingCodingKeys, MEMORY[0x1E69E6F48]);
  v29 = *(v4 - 8);
  v30 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v31 = v26 - v5;
  sub_1A42BF838(0, &qword_1EB137390, sub_1A42BF6E8, &type metadata for OneUpSharePlayNavigationGesturePayload.Gesture.BeginScrubbingCodingKeys, v3);
  v7 = v6;
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - v8;
  sub_1A42BF838(0, &qword_1EB137398, sub_1A42BF73C, &type metadata for OneUpSharePlayNavigationGesturePayload.Gesture.CodingKeys, v3);
  v11 = v10;
  v33 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A42BF73C();
  v14 = v34;
  sub_1A524ED14();
  if (v14)
  {
    goto LABEL_7;
  }

  v27 = v7;
  v34 = a1;
  v15 = v31;
  v16 = v32;
  v17 = v13;
  v18 = sub_1A524E924();
  v19 = v11;
  if (*(v18 + 16) != 1)
  {
    v21 = sub_1A524E4C4();
    swift_allocError();
    v23 = v22;
    sub_1A3FA0828();
    *v23 = &type metadata for OneUpSharePlayNavigationGesturePayload.Gesture;
    sub_1A524E854();
    sub_1A524E4A4();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
    swift_willThrow();
    (*(v33 + 8))(v13, v19);
    swift_unknownObjectRelease();
    a1 = v34;
LABEL_7:
    v24 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v24);
  }

  v26[1] = v18;
  v35 = *(v18 + 32);
  if (v35)
  {
    v37 = 1;
    sub_1A42BF694();
    sub_1A524E844();
    v20 = v33;
    (*(v29 + 8))(v15, v30);
  }

  else
  {
    v36 = 0;
    sub_1A42BF6E8();
    sub_1A524E844();
    v20 = v33;
    (*(v28 + 8))(v9, v27);
  }

  (*(v20 + 8))(v17, v11);
  swift_unknownObjectRelease();
  *v16 = v35;
  v24 = v34;
  return __swift_destroy_boxed_opaque_existential_0(v24);
}

uint64_t sub_1A42BE94C()
{
  if (*v0)
  {
    return 6581861;
  }

  else
  {
    return 0x6E69676562;
  }
}

uint64_t sub_1A42BE9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65727574736567 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A524EAB4();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A42BEA34(uint64_t a1)
{
  v2 = sub_1A42BF790();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A42BEA70(uint64_t a1)
{
  v2 = sub_1A42BF790();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OneUpSharePlayNavigationGesturePayload.encode(to:)(void *a1)
{
  sub_1A42BF838(0, &qword_1EB1373A0, sub_1A42BF790, &type metadata for OneUpSharePlayNavigationGesturePayload.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10[-v6];
  v8 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A42BF790();
  sub_1A524ED34();
  v10[31] = v8;
  sub_1A42BF7E4();
  sub_1A524E9D4();
  return (*(v5 + 8))(v7, v4);
}

uint64_t OneUpSharePlayNavigationGesturePayload.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v12 = a2;
  sub_1A42BF838(0, &qword_1EB1373B0, sub_1A42BF790, &type metadata for OneUpSharePlayNavigationGesturePayload.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A42BF790();
  sub_1A524ED14();
  if (!v2)
  {
    v9 = v12;
    sub_1A42BF8A0();
    sub_1A524E8E4();
    (*(v6 + 8))(v8, v5);
    *v9 = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1A42BEDE8@<X0>(_DWORD *a1@<X8>)
{
  if (qword_1EB1B3E98 != -1)
  {
    v2 = a1;
    result = swift_once();
    a1 = v2;
  }

  v1 = dword_1EB1B3EA4;
  *a1 = dword_1EB1B3EA0;
  a1[1] = v1;
  return result;
}

uint64_t sub_1A42BEE80()
{
  v0 = sub_1A524E824();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1A42BEECC()
{
  result = qword_1EB1B3EB8;
  if (!qword_1EB1B3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B3EB8);
  }

  return result;
}

unint64_t sub_1A42BEF20()
{
  result = qword_1EB1B3EC0;
  if (!qword_1EB1B3EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B3EC0);
  }

  return result;
}

unint64_t sub_1A42BEF74()
{
  result = qword_1EB1B3EC8;
  if (!qword_1EB1B3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B3EC8);
  }

  return result;
}

unint64_t sub_1A42BEFC8()
{
  result = qword_1EB1B3ED0;
  if (!qword_1EB1B3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B3ED0);
  }

  return result;
}

unint64_t sub_1A42BF01C()
{
  result = qword_1EB1B3ED8;
  if (!qword_1EB1B3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B3ED8);
  }

  return result;
}

unint64_t sub_1A42BF070()
{
  result = qword_1EB137318;
  if (!qword_1EB137318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137318);
  }

  return result;
}

void sub_1A42BF0C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A42BF070();
    v7 = a3(a1, &type metadata for OneUpSharePlayNavigationChangeSource.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

BOOL sub_1A42BF128(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1A524EAB4()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_1A524EAB4()) && (v6 = type metadata accessor for OneUpSharePlayNavigateMessagePayload(), (static OneUpSharePlayDataSourceMessagePayload.== infix(_:_:)((a1 + *(v6 + 24)), (a2 + *(v6 + 24))))))
  {
    return *(a1 + *(v6 + 28)) == *(a2 + *(v6 + 28));
  }

  else
  {
    return 0;
  }
}

_OWORD *sub_1A42BF1D4(uint64_t a1)
{
  v3 = type metadata accessor for OneUpSharePlayNavigateMessagePayload();
  MEMORY[0x1EEE9AC00](v3);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A42BFB48(&qword_1EB12D828, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
  result = sub_1A3DC2B0C(v3, v6, &v23);
  if (!v1)
  {
    if (*(a1 + *(v3 + 28)) == 3)
    {
      sub_1A42BF5CC(a1, v5, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
      v5[*(v3 + 28)] = 2;
      sub_1A3DC2B0C(v3, v6, v22);
      v12 = sub_1A3F67A3C();
      v13 = *(v12 + 1);
      v14 = *(v12 + 1);
      LOWORD(v22[0]) = *v12;
      WORD1(v22[0]) = v13;
      DWORD1(v22[0]) = v14;
      WORD4(v22[0]) = v22[0];
      WORD5(v22[0]) = v13;
      HIDWORD(v22[0]) = v14;
      sub_1A42C0838();
      v15 = swift_allocObject();
      v16 = v23;
      v17 = v24;
      v20[0] = v23;
      v20[1] = v24;
      v15[1] = xmmword_1A52FC9F0;
      v15[2] = v16;
      v18 = v22[0];
      v19 = v22[1];
      v15[3] = v17;
      v15[4] = v18;
      v15[5] = v19;
      sub_1A3DC2C90(v20, v21);
      sub_1A42BF634(v5, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
      v21[0] = v23;
      v21[1] = v24;
      sub_1A3DC2CC8(v21);
      return v15;
    }

    else
    {
      v8 = sub_1A3F67A3C();
      v9 = *(v8 + 1);
      DWORD2(v23) = *v8;
      HIDWORD(v23) = v9;
      sub_1A42C0838();
      result = swift_allocObject();
      v10 = v23;
      v11 = v24;
      result[1] = xmmword_1A52F8E10;
      result[2] = v10;
      result[3] = v11;
    }
  }

  return result;
}

uint64_t type metadata accessor for OneUpSharePlayNavigateMessagePayload()
{
  result = qword_1EB1B4B90;
  if (!qword_1EB1B4B90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A42BF46C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A42BF4D0()
{
  result = qword_1EB1B3EE0;
  if (!qword_1EB1B3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B3EE0);
  }

  return result;
}

unint64_t sub_1A42BF524()
{
  result = qword_1EB137358;
  if (!qword_1EB137358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137358);
  }

  return result;
}

unint64_t sub_1A42BF578()
{
  result = qword_1EB137368;
  if (!qword_1EB137368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137368);
  }

  return result;
}

uint64_t sub_1A42BF5CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A42BF634(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A42BF694()
{
  result = qword_1EB1B3EE8;
  if (!qword_1EB1B3EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B3EE8);
  }

  return result;
}

unint64_t sub_1A42BF6E8()
{
  result = qword_1EB1B3EF0;
  if (!qword_1EB1B3EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B3EF0);
  }

  return result;
}

unint64_t sub_1A42BF73C()
{
  result = qword_1EB1B3EF8;
  if (!qword_1EB1B3EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B3EF8);
  }

  return result;
}

unint64_t sub_1A42BF790()
{
  result = qword_1EB1B3F00[0];
  if (!qword_1EB1B3F00[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B3F00);
  }

  return result;
}

unint64_t sub_1A42BF7E4()
{
  result = qword_1EB1373A8;
  if (!qword_1EB1373A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1373A8);
  }

  return result;
}

void sub_1A42BF838(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A42BF8A0()
{
  result = qword_1EB1373B8;
  if (!qword_1EB1373B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1373B8);
  }

  return result;
}

unint64_t sub_1A42BF8F8()
{
  result = qword_1EB1373C0;
  if (!qword_1EB1373C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1373C0);
  }

  return result;
}

unint64_t sub_1A42BF950()
{
  result = qword_1EB1373C8;
  if (!qword_1EB1373C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1373C8);
  }

  return result;
}

unint64_t sub_1A42BF9A8()
{
  result = qword_1EB1373D0;
  if (!qword_1EB1373D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1373D0);
  }

  return result;
}

unint64_t sub_1A42BFA00()
{
  result = qword_1EB1373D8;
  if (!qword_1EB1373D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1373D8);
  }

  return result;
}

uint64_t sub_1A42BFA9C(void *a1)
{
  a1[1] = sub_1A42BFB48(&qword_1EB1373E0, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
  a1[2] = sub_1A42BFB48(&qword_1EB1373E8, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
  result = sub_1A42BFB48(&qword_1EB1373F0, type metadata accessor for OneUpSharePlayNavigateMessagePayload);
  a1[3] = result;
  return result;
}

uint64_t sub_1A42BFB48(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A42BFB98()
{
  result = qword_1EB1373F8;
  if (!qword_1EB1373F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1373F8);
  }

  return result;
}

unint64_t sub_1A42BFBEC(void *a1)
{
  a1[1] = sub_1A42BFC24();
  a1[2] = sub_1A42BFC78();
  result = sub_1A42BFCCC();
  a1[3] = result;
  return result;
}

unint64_t sub_1A42BFC24()
{
  result = qword_1EB137400;
  if (!qword_1EB137400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137400);
  }

  return result;
}

unint64_t sub_1A42BFC78()
{
  result = qword_1EB137408;
  if (!qword_1EB137408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137408);
  }

  return result;
}

unint64_t sub_1A42BFCCC()
{
  result = qword_1EB137410;
  if (!qword_1EB137410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137410);
  }

  return result;
}

uint64_t sub_1A42BFD80()
{
  result = type metadata accessor for OneUpSharePlayDataSourceMessagePayload(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A42BFED8()
{
  result = qword_1EB1B51A0[0];
  if (!qword_1EB1B51A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B51A0);
  }

  return result;
}

unint64_t sub_1A42BFF30()
{
  result = qword_1EB1B55B0[0];
  if (!qword_1EB1B55B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B55B0);
  }

  return result;
}

unint64_t sub_1A42BFF88()
{
  result = qword_1EB1B57C0[0];
  if (!qword_1EB1B57C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B57C0);
  }

  return result;
}

unint64_t sub_1A42BFFE0()
{
  result = qword_1EB1B58D0;
  if (!qword_1EB1B58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B58D0);
  }

  return result;
}

unint64_t sub_1A42C0038()
{
  result = qword_1EB1B58D8[0];
  if (!qword_1EB1B58D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B58D8);
  }

  return result;
}

unint64_t sub_1A42C0090()
{
  result = qword_1EB1B5960;
  if (!qword_1EB1B5960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B5960);
  }

  return result;
}

unint64_t sub_1A42C00E8()
{
  result = qword_1EB1B5968[0];
  if (!qword_1EB1B5968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B5968);
  }

  return result;
}

unint64_t sub_1A42C0140()
{
  result = qword_1EB1B59F0;
  if (!qword_1EB1B59F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B59F0);
  }

  return result;
}

unint64_t sub_1A42C0198()
{
  result = qword_1EB1B59F8[0];
  if (!qword_1EB1B59F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B59F8);
  }

  return result;
}

unint64_t sub_1A42C01F0()
{
  result = qword_1EB1B5A80;
  if (!qword_1EB1B5A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B5A80);
  }

  return result;
}

unint64_t sub_1A42C0248()
{
  result = qword_1EB1B5A88[0];
  if (!qword_1EB1B5A88[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B5A88);
  }

  return result;
}

unint64_t sub_1A42C02A0()
{
  result = qword_1EB1B5B10;
  if (!qword_1EB1B5B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B5B10);
  }

  return result;
}

unint64_t sub_1A42C02F8()
{
  result = qword_1EB1B5B18[0];
  if (!qword_1EB1B5B18[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B5B18);
  }

  return result;
}

unint64_t sub_1A42C0350()
{
  result = qword_1EB1B5BA0;
  if (!qword_1EB1B5BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B5BA0);
  }

  return result;
}

unint64_t sub_1A42C03A8()
{
  result = qword_1EB1B5BA8[0];
  if (!qword_1EB1B5BA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B5BA8);
  }

  return result;
}

unint64_t sub_1A42C0400()
{
  result = qword_1EB1B5C30;
  if (!qword_1EB1B5C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B5C30);
  }

  return result;
}

unint64_t sub_1A42C0458()
{
  result = qword_1EB1B5C38[0];
  if (!qword_1EB1B5C38[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B5C38);
  }

  return result;
}

unint64_t sub_1A42C04B0()
{
  result = qword_1EB1B5CC0;
  if (!qword_1EB1B5CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B5CC0);
  }

  return result;
}

unint64_t sub_1A42C0508()
{
  result = qword_1EB1B5CC8[0];
  if (!qword_1EB1B5CC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B5CC8);
  }

  return result;
}

unint64_t sub_1A42C0560()
{
  result = qword_1EB1B5D50;
  if (!qword_1EB1B5D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B5D50);
  }

  return result;
}

unint64_t sub_1A42C05B8()
{
  result = qword_1EB1B5D58[0];
  if (!qword_1EB1B5D58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B5D58);
  }

  return result;
}

unint64_t sub_1A42C0610()
{
  result = qword_1EB15FAC0;
  if (!qword_1EB15FAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB15FAC0);
  }

  return result;
}

unint64_t sub_1A42C0668()
{
  result = qword_1EB15FAC8[0];
  if (!qword_1EB15FAC8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB15FAC8);
  }

  return result;
}

uint64_t sub_1A42C06BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657373416D6F7266 && a2 == 0xED00004449555574;
  if (v4 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5574657373416F74 && a2 == 0xEB00000000444955 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001A53D0460 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5365676E616863 && a2 == 0xEC00000065637275)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_1A42C0838()
{
  if (!qword_1EB12C500)
  {
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12C500);
    }
  }
}

uint64_t sub_1A42C08A0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a1;
  v4 = sub_1A3C5D0E8(0, &qword_1EB137480);
  swift_unknownObjectRetain();
  SendableTransfer.init(wrappedValue:)(&v18, v4, &v19);
  v5 = v19;
  v20 = [a1 isNew];
  v18 = [a1 keyAsset];
  sub_1A3EA8BD0();
  SendableTransfer.init(wrappedValue:)(&v18, v6, &v19);
  v7 = v19;
  v8 = [a1 title];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1A524C674();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [a1 locations];
  if (v13)
  {
    v14 = v13;
    v15 = sub_1A524CA34();

    result = swift_unknownObjectRelease();
  }

  else
  {
    result = swift_unknownObjectRelease();
    v15 = 0;
  }

  v17 = v20;
  *a2 = v5;
  *(a2 + 8) = v17;
  *(a2 + 16) = v7;
  *(a2 + 24) = v10;
  *(a2 + 32) = v12;
  *(a2 + 40) = v15;
  return result;
}

unint64_t sub_1A42C0A08()
{
  result = qword_1EB137488;
  if (!qword_1EB137488)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB137488);
  }

  return result;
}

uint64_t sub_1A42C0A5C(SEL *a1)
{
  v2 = [*v1 *a1];
  v3 = sub_1A524C674();

  return v3;
}

id sub_1A42C0AB4()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClassUnconditional();

  return [v0 markAsRead];
}

unint64_t sub_1A42C0B14()
{
  result = qword_1EB129A60;
  if (!qword_1EB129A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129A60);
  }

  return result;
}

unint64_t sub_1A42C0B6C()
{
  result = qword_1EB129A58;
  if (!qword_1EB129A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129A58);
  }

  return result;
}

unint64_t sub_1A42C0BC0()
{
  result = qword_1EB129A40;
  if (!qword_1EB129A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129A40);
  }

  return result;
}

unint64_t sub_1A42C0C18()
{
  result = qword_1EB137498;
  if (!qword_1EB137498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137498);
  }

  return result;
}

uint64_t sub_1A42C0C84(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*v3 *a3];
  v5 = sub_1A524C674();

  return v5;
}

id sub_1A42C0D2C(void *a1)
{
  v3 = [v1 type];
  result = 0;
  switch(v3)
  {
    case 7uLL:
      result = [v1 collection];
      if (result)
      {
        objc_opt_self();
        result = swift_dynamicCastObjCClass();
        if (!result)
        {
          swift_unknownObjectRelease();
          return 0;
        }
      }

      return result;
    case 8uLL:
    case 0x12uLL:
      if (![v1 collection])
      {
        goto LABEL_5;
      }

      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (!result)
      {
        swift_unknownObjectRelease();
LABEL_5:
        v5 = [a1 px_virtualCollections];
        v6 = [v5 allAlbumsCollection];
        break;
      }

      return result;
    case 9uLL:
      if (![v1 collection])
      {
        goto LABEL_25;
      }

      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
LABEL_25:
      v5 = [a1 px_virtualCollections];
      v6 = [v5 memoriesCollection];
      break;
    case 0xAuLL:
      goto LABEL_25;
    case 0xBuLL:
      if (![v1 person])
      {
        goto LABEL_17;
      }

      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
      goto LABEL_17;
    case 0xCuLL:
      if (![v1 socialGroup])
      {
        goto LABEL_17;
      }

      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
LABEL_17:
      v5 = [a1 px_virtualCollections];
      v6 = [v5 peopleCollection];
      break;
    case 0xDuLL:
      if (![v1 collection])
      {
        goto LABEL_36;
      }

      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
LABEL_36:
      v5 = [a1 px_virtualCollections];
      v6 = [v5 mapCollection];
      break;
    case 0x13uLL:
      if (![v1 collection])
      {
        goto LABEL_41;
      }

      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
LABEL_41:
      v5 = [a1 px_virtualCollections];
      v6 = [v5 featuredPhotosCollection];
      break;
    case 0x1AuLL:
      return [objc_opt_self() px:1000000214 smartAlbumWithSubtype:?];
    case 0x1CuLL:
      if (![v1 collection])
      {
        goto LABEL_9;
      }

      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
LABEL_9:
      v5 = [a1 px_virtualCollections];
      v6 = [v5 eventsCollection];
      break;
    case 0x1DuLL:
      if (![v1 collection])
      {
        goto LABEL_21;
      }

      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
LABEL_21:
      v5 = [a1 px_virtualCollections];
      v6 = [v5 tripsCollection];
      break;
    case 0x21uLL:
      if (![v1 collection])
      {
        goto LABEL_13;
      }

      objc_opt_self();
      result = swift_dynamicCastObjCClass();
      if (result)
      {
        return result;
      }

      swift_unknownObjectRelease();
LABEL_13:
      v5 = [a1 px_virtualCollections];
      v6 = [v5 completeMyMomentCollection];
      break;
    default:
      return result;
  }

  v7 = v6;

  return v7;
}

uint64_t sub_1A42C1258@<X0>(__n128 *a1@<X8>)
{
  if ([v1 type] != 20)
  {
    v10 = type metadata accessor for LemonadeNavigationDestination();
    v11 = *(*(v10 - 8) + 56);
    v12 = v10;
    v13 = a1;
    v14 = 1;
    goto LABEL_16;
  }

  if (![v1 additionalAttributes])
  {
LABEL_13:
    v4 = 0;
    goto LABEL_14;
  }

  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = v3;
  if (!v3)
  {
    swift_unknownObjectRelease();
LABEL_14:
    v8 = 0;
    v9 = -1;
    goto LABEL_15;
  }

  v5 = [v3 invitationAlbumUUID];
  if (!v5)
  {
    v15 = [v4 revealAssetUUID];
    if (v15)
    {
      v16 = v15;
      v4 = sub_1A524C674();
      v8 = v17;
      swift_unknownObjectRelease();

      v9 = 0;
      goto LABEL_15;
    }

    v18 = [v4 commentGUID];
    if (v18)
    {
      v19 = v18;
      v4 = sub_1A524C674();
      v8 = v20;

      swift_unknownObjectRelease();
      v9 = 1;
      goto LABEL_15;
    }

    swift_unknownObjectRelease();
    goto LABEL_13;
  }

  v6 = v5;
  v4 = sub_1A524C674();
  v8 = v7;
  swift_unknownObjectRelease();

  v9 = 2;
LABEL_15:
  v24.n128_u64[0] = v4;
  v24.n128_u64[1] = v8;
  v25 = v9;
  sub_1A4030F74(&v24, &v26);
  v21 = v27;
  *a1 = v26;
  a1[1].n128_u8[0] = v21;
  v22 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  v11 = *(*(v22 - 8) + 56);
  v13 = a1;
  v14 = 0;
  v12 = v22;
LABEL_16:

  return v11(v13, v14, 1, v12);
}

uint64_t sub_1A42C1484@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  v38 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C47B70(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = (&v34 - v11);
  v13 = *(*v2 + 256);
  v13(&v42, v10);
  v14 = v43;
  v15 = v44;
  __swift_project_boxed_opaque_existential_1(&v42, v43);
  v16 = (*(v15 + 16))(v14, v15);
  sub_1A42C1258(v12);

  __swift_destroy_boxed_opaque_existential_0(&v42);
  v17 = type metadata accessor for LemonadeNavigationDestination();
  v18 = *(*(v17 - 8) + 48);
  v39 = v12;
  v19 = v18(v12, 1, v17);
  v20 = 0;
  if (v19 == 1)
  {
    (v13)(&v42);
    v21 = v43;
    v22 = v44;
    __swift_project_boxed_opaque_existential_1(&v42, v43);
    v23 = (*(v22 + 16))(v21, v22);
    v20 = sub_1A42C0D2C(v23);

    v19 = __swift_destroy_boxed_opaque_existential_0(&v42);
  }

  v40 = a1;
  v24 = (*(*v2 + 560))(v19);
  v25 = *(v24 + 16);
  if (v25)
  {
    v35 = v20;
    v36 = v2;
    v37 = a2;
    v41 = MEMORY[0x1E69E7CC0];
    sub_1A42C3690(0, v25, 0);
    v26 = v41;
    v27 = v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v28 = *(v38 + 72);
    do
    {
      sub_1A42C3868(v27, v8, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      sub_1A3C53294(&v42);
      sub_1A42C38D0(v8, type metadata accessor for LemonadeFeatureLibrary.Shelf);
      v41 = v26;
      v30 = *(v26 + 16);
      v29 = *(v26 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_1A42C3690((v29 > 1), v30 + 1, 1);
        v26 = v41;
      }

      *(v26 + 16) = v30 + 1;
      sub_1A3C34460(&v42, v26 + 40 * v30 + 32);
      v27 += v28;
      --v25;
    }

    while (v25);

    v3 = v36;
    a2 = v37;
    v20 = v35;
  }

  else
  {

    v26 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v31);
  v32 = v39;
  *(&v34 - 4) = v40;
  *(&v34 - 3) = v32;
  *(&v34 - 2) = v20;
  *(&v34 - 1) = v3;
  sub_1A42C1D48(sub_1A42C3930, v26, a2);

  return sub_1A42C35C8(v32, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination);
}

uint64_t sub_1A42C18BC(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v30 = a5;
  v32 = a4;
  v35 = a3;
  sub_1A3C47B70(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = type metadata accessor for LemonadeNavigationDestination();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v31 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v12);
  v14 = *(v13 + 32);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37[3] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v37[4] = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1(v37);
  v14(v12, v13);
  if ([a2 type] != 30 && objc_msgSend(a2, sel_type) != 31 && objc_msgSend(a2, sel_type) != 24 && objc_msgSend(a2, sel_type) != 25)
  {
    goto LABEL_14;
  }

  v17 = [a2 shelfSlug];
  if (v17)
  {
    v18 = v17;
    v19 = sub_1A524C674();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  sub_1A3C41990(AssociatedTypeWitness, AssociatedConformanceWitness);
  v22 = LemonadeShelfIdentifier.slug.getter();
  if (!v21)
  {

    goto LABEL_14;
  }

  if (v19 != v22 || v21 != v23)
  {
    v24 = sub_1A524EAB4();

    if (v24)
    {
      goto LABEL_19;
    }

LABEL_14:
    sub_1A42C3964(v35, v9);
    if ((*(v33 + 48))(v9, 1, v34) != 1)
    {
      v27 = v31;
      sub_1A4072CB0(v9, v31, type metadata accessor for LemonadeNavigationDestination);
      v26 = (*(AssociatedConformanceWitness + 176))(v27, AssociatedTypeWitness, AssociatedConformanceWitness);
      sub_1A42C38D0(v27, type metadata accessor for LemonadeNavigationDestination);
      goto LABEL_25;
    }

    sub_1A42C35C8(v9, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination);
    if (v32)
    {
      v25 = v32;
      sub_1A3C41990(AssociatedTypeWitness, AssociatedConformanceWitness);
      if ((*(*v30 + 432))(&v36) & 1) != 0 && (sub_1A4201310(v25, AssociatedTypeWitness, *(AssociatedConformanceWitness + 8)))
      {

        goto LABEL_19;
      }

      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v26 = (*(AssociatedConformanceWitness + 160))(v28, AssociatedTypeWitness, AssociatedConformanceWitness);

        goto LABEL_25;
      }
    }

    v26 = 0;
    goto LABEL_25;
  }

LABEL_19:
  v26 = 1;
LABEL_25:
  __swift_destroy_boxed_opaque_existential_0(v37);
  return v26 & 1;
}

uint64_t sub_1A42C1D48@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = result;
    v7 = a2 + 32;
    while (1)
    {
      sub_1A3C341C8(v7, v9);
      v8 = v6(v9);
      if (v3)
      {
        return __swift_destroy_boxed_opaque_existential_0(v9);
      }

      if (v8)
      {
        return sub_1A3C34460(v9, a3);
      }

      result = __swift_destroy_boxed_opaque_existential_0(v9);
      v7 += 40;
      if (!--v5)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1A42C1E00@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1A42C1484(a1, v13);
  v3 = v14;
  if (v14)
  {
    v4 = v15;
    __swift_project_boxed_opaque_existential_1(v13, v14);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v6 = *(AssociatedTypeWitness - 8);
    v7 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
    v9 = &v12[-v8];
    (*(v4 + 32))(v3, v4, v7);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1A3C41990(AssociatedTypeWitness, AssociatedConformanceWitness);
    *a2 = v12[7];
    (*(v6 + 8))(v9, AssociatedTypeWitness);
    return __swift_destroy_boxed_opaque_existential_0(v13);
  }

  else
  {
    result = sub_1A42C34F0(v13, &qword_1EB12A600, &qword_1EB12A608, &protocol descriptor for LemonadeFeature);
    *a2 = 24;
  }

  return result;
}

BOOL sub_1A42C1FA8(uint64_t a1)
{
  sub_1A42C1484(a1, v3);
  v1 = v4 != 0;
  sub_1A42C34F0(v3, &qword_1EB12A600, &qword_1EB12A608, &protocol descriptor for LemonadeFeature);
  return v1;
}

uint64_t sub_1A42C2004()
{
  sub_1A524CC54();
  *(v0 + 16) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A42C2098, v2, v1);
}

uint64_t sub_1A42C2098()
{

  v1 = *(v0 + 8);

  return v1(5);
}

void *sub_1A42C2100(void *a1, uint64_t a2)
{
  v5 = MEMORY[0x1E69E6720];
  sub_1A3C47B70(0, &qword_1EB1374A0, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v85 = v76 - v7;
  v8 = type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(0);
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C47B70(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, v5);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v78 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = (v76 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = v76 - v16;
  v18 = type metadata accessor for LemonadeNavigationDestination();
  v19 = *(v18 - 8);
  v86 = v18;
  v87 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v76 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v80 = v76 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v79 = v76 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = v76 - v30;
  sub_1A42C1484(a1, v93);
  v32 = v94;
  if (v94)
  {
    v76[0] = v24;
    v76[1] = v21;
    v77 = v10;
    v81 = a1;
    v33 = a2;
    v34 = v95;
    __swift_project_boxed_opaque_existential_1(v93, v94);
    v35 = *(v34 + 32);
    *(&v91 + 1) = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    __swift_allocate_boxed_opaque_existential_1(&v90);
    v35(v32, v34);
    __swift_destroy_boxed_opaque_existential_0(v93);
    if (*(&v91 + 1))
    {
      sub_1A3C34460(&v90, v93);
      v36 = v81;
      v37 = [v81 type];
      v38 = v33;
      if (v37 == 31)
      {
        v39 = v94;
        v40 = v95;
        __swift_project_boxed_opaque_existential_1(v93, v94);
        (*(v40 + 232))(v33, v39, v40);
        if ((*(v87 + 48))(v17, 1, v86) != 1)
        {
          sub_1A4072CB0(v17, v31, type metadata accessor for LemonadeNavigationDestination);
          v61 = v79;
          sub_1A42C3868(v31, v79, type metadata accessor for LemonadeNavigationDestination);
          v56 = sub_1A4249320(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v63 = v56[2];
          v62 = v56[3];
          if (v63 >= v62 >> 1)
          {
            v56 = sub_1A4249320(v62 > 1, v63 + 1, 1, v56);
          }

          v60 = v77;
          sub_1A42C38D0(v31, type metadata accessor for LemonadeNavigationDestination);
          v56[2] = v63 + 1;
          sub_1A4072CB0(v61, v56 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v63, type metadata accessor for LemonadeNavigationDestination);
LABEL_16:
          v64 = v94;
          v65 = v95;
          __swift_project_boxed_opaque_existential_1(v93, v94);
          sub_1A3C41990(v64, v65);
          v89 = 11;
          sub_1A3C5F5F8();
          sub_1A524C9C4();
          sub_1A524C9C4();
          if (v90 == v88)
          {
          }

          else
          {
            v66 = sub_1A524EAB4();

            if ((v66 & 1) == 0)
            {
              goto LABEL_23;
            }
          }

          sub_1A3C341C8(v93, &v90);
          sub_1A3C34400(0, &qword_1EB132810);
          v68 = v84;
          v67 = v85;
          v69 = swift_dynamicCast();
          v70 = *(v83 + 56);
          if (v69)
          {
            v70(v67, 0, 1, v68);

            sub_1A4072CB0(v67, v60, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider);
            v71 = sub_1A42C3638();
            v72 = sub_1A3C66934(v60, v68, v71);
            if (sub_1A49983A8(INFINITY))
            {
              v56 = sub_1A4786538(v81);
            }

            else
            {
              sub_1A3C47B70(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
              v56 = swift_allocObject();
              *(v56 + 1) = xmmword_1A52F8E10;
              swift_storeEnumTagMultiPayload();
            }

            sub_1A42C38D0(v60, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider);
            if (!v56[2])
            {
LABEL_28:

              v74 = v94;
              v75 = v95;
              __swift_project_boxed_opaque_existential_1(v93, v94);
              sub_1A42C2DAC(0, [v81 routingType] == 2, v38, v74, v75);
            }

            goto LABEL_24;
          }

          v70(v67, 1, 1, v68);
          sub_1A42C35C8(v67, &qword_1EB1374A0, type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider);
LABEL_23:
          if (!v56[2])
          {
            goto LABEL_28;
          }

LABEL_24:
          __swift_destroy_boxed_opaque_existential_0(v93);
          return v56;
        }

        v37 = sub_1A42C35C8(v17, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination);
      }

      v79 = v33;
      v41 = (*v2 + 256);
      v42 = *v41;
      (*v41)(&v90, v37);
      v43 = *(&v91 + 1);
      v44 = AssociatedConformanceWitness;
      __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
      v45 = (*(v44 + 16))(v43, v44);
      v46 = v82;
      sub_1A42C1258(v82);

      __swift_destroy_boxed_opaque_existential_0(&v90);
      if ((*(v87 + 48))(v46, 1, v86) == 1)
      {
        v47 = sub_1A42C35C8(v46, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination);
        v42(&v90, v47);
        v48 = *(&v91 + 1);
        v49 = AssociatedConformanceWitness;
        __swift_project_boxed_opaque_existential_1(&v90, *(&v91 + 1));
        v50 = (*(v49 + 16))(v48, v49);
        v51 = sub_1A42C0D2C(v50);

        __swift_destroy_boxed_opaque_existential_0(&v90);
        if (v51)
        {
          v52 = v94;
          v53 = v95;
          __swift_project_boxed_opaque_existential_1(v93, v94);
          v54 = v51;
          v55 = [v36 routingType] == 2;
          sub_1A42C2DAC(v51, v55, v79, v52, v53);
        }

        v56 = MEMORY[0x1E69E7CC0];
        v60 = v77;
        v38 = v79;
      }

      else
      {
        v57 = v80;
        sub_1A4072CB0(v46, v80, type metadata accessor for LemonadeNavigationDestination);
        v58 = v94;
        v59 = v95;
        __swift_project_boxed_opaque_existential_1(v93, v94);
        v38 = v79;
        v56 = (*(v59 + 184))(v57, v79, v58, v59);
        sub_1A42C38D0(v57, type metadata accessor for LemonadeNavigationDestination);
        v60 = v77;
      }

      goto LABEL_16;
    }
  }

  else
  {
    sub_1A42C34F0(v93, &qword_1EB12A600, &qword_1EB12A608, &protocol descriptor for LemonadeFeature);
    v90 = 0u;
    v91 = 0u;
    AssociatedConformanceWitness = 0;
  }

  sub_1A42C34F0(&v90, &qword_1EB132808, &qword_1EB132810, &protocol descriptor for LemonadeShelfProvider);
  return MEMORY[0x1E69E7CC0];
}

void sub_1A42C2DAC(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a2;
  v28 = a1;
  v8 = *(a5 + 8);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = sub_1A524DF24();
  v30 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v20[5] = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v23 = v20 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v27 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v20[3] = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20[4] = v20 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v25 = v20 - v19;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v31 = swift_getAssociatedTypeWitness();
  v29 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v26 = v5;
  v22 = a3;
  sub_1A3C66934(v5, a4, v8);
  swift_checkMetadataState();
  sub_1A5245914();
}

uint64_t sub_1A42C3458()
{
  sub_1A524CC54();
  *(v0 + 16) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A42C39F8, v2, v1);
}

uint64_t sub_1A42C34F0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  sub_1A42C3560(0, a2, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A42C3560(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C34400(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A42C35C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C47B70(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1A42C3638()
{
  result = qword_1EB12ADA8;
  if (!qword_1EB12ADA8)
  {
    type metadata accessor for LemonadePhotosChallengeFeature.ShelfProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ADA8);
  }

  return result;
}

void *sub_1A42C3690(void *a1, int64_t a2, char a3)
{
  result = sub_1A42C36B0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A42C36B0(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A42C3560(0, &qword_1EB126288, &qword_1EB12A608, &protocol descriptor for LemonadeFeature, MEMORY[0x1E69E6F90]);
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
    sub_1A3C34400(0, &qword_1EB12A608);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1A42C381C()
{
  result = qword_1EB1265D0;
  if (!qword_1EB1265D0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1265D0);
  }

  return result;
}

uint64_t sub_1A42C3868(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A42C38D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A42C3964(uint64_t a1, uint64_t a2)
{
  sub_1A3C47B70(0, &qword_1EB129890, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A42C3BA0()
{
  v1 = *(v0 + OBJC_IVAR___PXPhotosGridActionMenuCustomizer_customMenuActions);
  if (v1 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A42C4684(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A524E2B4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A524E2B4();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A3D5C1C8(result);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A42C5910(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

id sub_1A42C4774(id result, unint64_t a2, uint64_t a3)
{
  v4 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
LABEL_18:
    v14 = result;
    v15 = a2;
    v16 = sub_1A524E2B4();
    a2 = v15;
    v5 = v16;
    result = v14;
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = a2 & 0xC000000000000001;
  v7 = -v5;
  v8 = 4;
  while (1)
  {
    if (v7 + v8 == 4)
    {
      return 0;
    }

    v9 = v8 - 4;
    if (v6)
    {
      break;
    }

    if (v9 >= *(v4 + 16))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (*(a2 + 8 * v8) == result)
    {
      goto LABEL_12;
    }

LABEL_8:
    ++v8;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_17;
    }
  }

  v10 = result;
  v11 = a2;
  v12 = MEMORY[0x1A59097F0](v8 - 4);
  swift_unknownObjectRelease();
  result = v10;
  a2 = v11;
  if (v12 != v10)
  {
    goto LABEL_8;
  }

LABEL_12:
  v13 = *(a3 + OBJC_IVAR___PXPhotosGridActionMenuCustomizer_customMenuActions);
  if ((v13 & 0xC000000000000001) != 0)
  {
    return MEMORY[0x1A59097F0](v8 - 4);
  }

  if (v9 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return *(v13 + 8 * v8);
  }

  __break(1u);
  return result;
}

void sub_1A42C48A8(id *a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(id))
{
  v5 = *a1;
  if (sub_1A42C4774(*a1, a2, a3))
  {
    sub_1A52466C4();
  }

  v6 = a4(v5);
  sub_1A42C555C(v6, v7);
}

void sub_1A42C4954(void **a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  v9 = sub_1A42C60E4(0, &unk_1EB134160);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = *a1;
  if (sub_1A42C4774(v10, a3, a4))
  {
    sub_1A52466C4();
  }

  v11 = a5(v10);
  sub_1A42C555C(v11, v12);
}

void sub_1A42C4AB4(id *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v7 = sub_1A42C60E4(0, &unk_1EB134160);
  MEMORY[0x1EEE9AC00](v7 - 8);
  if (sub_1A42C4774(*a1, a3, a4))
  {
    sub_1A52466C4();
  }

  sub_1A524C184();
}

void sub_1A42C4C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a4;
  v6 = a5;
  sub_1A524C184();
}

uint64_t sub_1A42C54FC(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))(a2, a1);
  v3 = sub_1A524C674();

  return v3;
}

void sub_1A42C555C(uint64_t a1, uint64_t a2)
{
  if (sub_1A524C674() == a1 && v3 == a2)
  {
  }

  else
  {
    v5 = sub_1A524EAB4();

    if ((v5 & 1) == 0)
    {
      sub_1A5246784();
    }
  }

  sub_1A524C184();
}

id sub_1A42C581C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PhotosGridActionMenuCustomizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A42C58A8()
{
  if (!qword_1EB1374B8)
  {
    sub_1A3C52C70(255, &qword_1EB126C10);
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1374B8);
    }
  }
}

uint64_t sub_1A42C5910(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A524E2B4();
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
      result = sub_1A524E2B4();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A42C58A8();
          sub_1A42C7050(&qword_1EB1374E0, sub_1A42C58A8);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_1A3D5C268(v13, i, a3);
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
        sub_1A3C52C70(0, &qword_1EB126C10);
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

unint64_t sub_1A42C5ABC(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  if (a1 >> 62)
  {
LABEL_17:
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = sub_1A524E2B4();
  }

  else
  {
    v19 = a1 & 0xFFFFFFFFFFFFFF8;
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v17 = OBJC_IVAR___PXPhotosGridActionMenuCustomizer_excludedActionTypes;
  while (v6 != v7)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1A59097F0](v7, a1);
    }

    else
    {
      if (v7 >= *(v19 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v10 = *(a1 + 8 * v7 + 32);
    }

    v11 = v10;
    v12 = sub_1A42C4774(v10, a2, a3);
    if (v12)
    {
      v8 = v12;
    }

    else
    {
      v13 = a4(v11);
      v15 = sub_1A3C62374(v13, v14, *(a3 + v17));

      if (v15)
      {
        return v7;
      }
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_16;
    }
  }

  return 0;
}

unint64_t sub_1A42C5C18(unint64_t *a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  v6 = a3;
  v7 = a2;
  v9 = *a1;
  result = sub_1A42C5ABC(*a1, a2, a3, a4);
  v12 = result;
  if (v4)
  {
    return v12;
  }

  if (v11)
  {
    if (v9 >> 62)
    {
      return sub_1A524E2B4();
    }

    return *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v34 = a4;
  v35 = a1;
  v13 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v33 = OBJC_IVAR___PXPhotosGridActionMenuCustomizer_excludedActionTypes;
  v36 = v6;
  while (1)
  {
    if (v9 >> 62)
    {
      if (v13 == sub_1A524E2B4())
      {
        return v12;
      }
    }

    else if (v13 == *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v12;
    }

    if ((v9 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1A59097F0](v13, v9);
      goto LABEL_16;
    }

    if ((v13 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v13 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_47;
    }

    v15 = *(v9 + 8 * v13 + 32);
LABEL_16:
    v16 = v15;
    v17 = v7;
    v18 = sub_1A42C4774(v15, v7, v6);
    if (v18)
    {
      v19 = v18;

LABEL_20:
      if (v12 == v13)
      {
        v7 = v17;
        v6 = v36;
        v14 = __OFADD__(v12++, 1);
        if (v14)
        {
          goto LABEL_49;
        }
      }

      else
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v23 = MEMORY[0x1A59097F0](v12, v9);
          v24 = MEMORY[0x1A59097F0](v13, v9);
        }

        else
        {
          if ((v12 & 0x8000000000000000) != 0)
          {
            goto LABEL_51;
          }

          v25 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v12 >= v25)
          {
            goto LABEL_52;
          }

          if (v13 >= v25)
          {
            goto LABEL_53;
          }

          v26 = *(v9 + 32 + 8 * v13);
          v23 = *(v9 + 32 + 8 * v12);
          v24 = v26;
        }

        v27 = v24;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
        {
          v9 = sub_1A3E2AE98(v9);
          v28 = (v9 >> 62) & 1;
        }

        else
        {
          LODWORD(v28) = 0;
        }

        v29 = v9 & 0xFFFFFFFFFFFFFF8;
        v30 = *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20);
        *((v9 & 0xFFFFFFFFFFFFFF8) + 8 * v12 + 0x20) = v27;

        if ((v9 & 0x8000000000000000) != 0 || v28)
        {
          v9 = sub_1A3E2AE98(v9);
          v29 = v9 & 0xFFFFFFFFFFFFFF8;
          v6 = v36;
          if ((v13 & 0x8000000000000000) != 0)
          {
LABEL_44:
            __break(1u);
            return v12;
          }
        }

        else
        {
          v6 = v36;
          if ((v13 & 0x8000000000000000) != 0)
          {
            goto LABEL_44;
          }
        }

        if (v13 >= *(v29 + 16))
        {
          goto LABEL_50;
        }

        v7 = v17;
        v31 = v29 + 8 * v13;
        v32 = *(v31 + 32);
        *(v31 + 32) = v23;

        *v35 = v9;
        v14 = __OFADD__(v12++, 1);
        if (v14)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_37;
    }

    v20 = v34(v16);
    v22 = sub_1A3C62374(v20, v21, *(v6 + v33));

    if ((v22 & 1) == 0)
    {
      goto LABEL_20;
    }

    v6 = v36;
LABEL_37:
    v14 = __OFADD__(v13++, 1);
    if (v14)
    {
      goto LABEL_48;
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
  return sub_1A524E2B4();
}

uint64_t sub_1A42C5EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_1A3C52C70(0, &qword_1EB126C10);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1A524E2B4();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1A524E2B4();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A42C600C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v4 = a1;
    v5 = *v3;
    v6 = *v3 >> 62;
    if (!v6)
    {
      result = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1A524E2B4();
  if (result < v2)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v2, v4))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v4 - v2;
  if (__OFSUB__(0, v2 - v4))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v6)
  {
    v9 = sub_1A524E2B4();
  }

  else
  {
    v9 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = __OFADD__(v9, v8);
  result = v9 + v8;
  if (v10)
  {
    goto LABEL_18;
  }

  sub_1A3D5C1C8(result);

  return sub_1A42C5EFC(v4, v2, 0);
}

uint64_t sub_1A42C60E4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    sub_1A524C184();
  }

  return result;
}

char *sub_1A42C61F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  sub_1A3C52C70(0, &qword_1EB126C10);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = &result[-v7];
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = sub_1A524E2B4();
    v15 = &result[-v7];
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = sub_1A524E2B4();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = &result[v11];
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;
    result = v8;
    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

void sub_1A42C6324(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR___PXPhotosGridActionMenuCustomizer_customMenuActions);
  if (v2 >> 62)
  {
    if (sub_1A524E2B4())
    {
LABEL_3:
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }

  else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A42C6E7C()
{
  if (!qword_1EB1374D0)
  {
    sub_1A42C60E4(255, &unk_1EB134160);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1374D0);
    }
  }
}

uint64_t sub_1A42C6EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A42C60E4(0, &unk_1EB134160);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A42C6F7C(uint64_t a1)
{
  v2 = sub_1A42C60E4(0, &unk_1EB134160);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A42C6FF4(uint64_t a1)
{
  sub_1A42C6E7C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A42C7050(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A42C710C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v33 = a1;
  v34 = a2;
  v31 = *(a1 + 16);
  type metadata accessor for PhotosPreviewableCollectionPlaceholder(255);
  v30 = *(a1 + 24);
  sub_1A42C75C0();
  type metadata accessor for LemonadeInlineStoryPlayerView();
  v3 = sub_1A5248804();
  WitnessTable = swift_getWitnessTable();
  v43 = MEMORY[0x1E697F348];
  v4 = swift_getWitnessTable();
  v44 = v3;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = v4;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v28 = swift_getOpaqueTypeMetadata2();
  v5 = sub_1A524B514();
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v27 = v24 - v6;
  v44 = v3;
  v46 = v4;
  v41 = swift_getOpaqueTypeConformance2();
  v7 = swift_getWitnessTable();
  v44 = v5;
  OpaqueTypeMetadata2 = v7;
  v8 = v7;
  v26 = v7;
  v9 = swift_getOpaqueTypeMetadata2();
  v24[1] = v9;
  v44 = v5;
  OpaqueTypeMetadata2 = v8;
  v25 = swift_getOpaqueTypeConformance2();
  v44 = v5;
  OpaqueTypeMetadata2 = v9;
  v46 = v8;
  OpaqueTypeConformance2 = v25;
  v10 = swift_getOpaqueTypeMetadata2();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  v18 = v31;
  v17 = v32;
  v19 = v30;
  v37 = v31;
  v38 = v30;
  v39 = v32;
  v20 = v27;
  sub_1A524B504();
  LOBYTE(v44) = *(v17 + *(v33 + 40));
  v40 = 0;
  sub_1A42C7F04();
  sub_1A524C594();
  v35 = v18;
  v36 = v19;
  swift_checkMetadataState();
  sub_1A524A584();
  (*(v29 + 8))(v20, v5);
  v21 = *(v11 + 16);
  v21(v16, v13, v10);
  v22 = *(v11 + 8);
  v22(v13, v10);
  v21(v34, v16, v10);
  return (v22)(v16, v10);
}

unint64_t sub_1A42C75C0()
{
  result = qword_1EB12A9A0;
  if (!qword_1EB12A9A0)
  {
    type metadata accessor for PhotosPreviewableCollectionPlaceholder(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A9A0);
  }

  return result;
}

uint64_t sub_1A42C7618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v55 = a1;
  v71 = a4;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PhotosPreviewableCollectionPlaceholder(255);
  v10 = sub_1A42C75C0();
  *&v78 = a2;
  *(&v78 + 1) = v9;
  v79 = a3;
  v80 = v10;
  v11 = type metadata accessor for LemonadeInlineStoryPlayerView();
  v65 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v64 = &v54 - v12;
  v13 = sub_1A5248804();
  v69 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v68 = &v54 - v14;
  v67 = v11;
  WitnessTable = swift_getWitnessTable();
  v86 = WitnessTable;
  v87 = MEMORY[0x1E697F348];
  v15 = swift_getWitnessTable();
  v16 = MEMORY[0x1E69E5FE0];
  *&v78 = v13;
  *(&v78 + 1) = MEMORY[0x1E69E5FE0];
  v17 = MEMORY[0x1E69E5FE8];
  v79 = v15;
  v80 = MEMORY[0x1E69E5FE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  *&v78 = v13;
  *(&v78 + 1) = v16;
  v79 = v15;
  v80 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v13;
  *&v78 = v13;
  *(&v78 + 1) = OpaqueTypeMetadata2;
  v20 = v55;
  v60 = OpaqueTypeMetadata2;
  v63 = v15;
  v79 = v15;
  v80 = OpaqueTypeConformance2;
  v61 = OpaqueTypeConformance2;
  v62 = swift_getOpaqueTypeMetadata2();
  v21 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v57 = &v54 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v54 - v25;
  v27 = *(v6 + 16);
  v66 = v8;
  v28 = v8;
  v29 = a2;
  v27(v28, v20, a2, v24);
  v70 = a3;
  v30 = type metadata accessor for GenerativeStoryMovieBackgroundView();
  v31 = *(v20 + *(v30 + 36));
  v56 = [v31 firstObject];
  v84 = v31;
  v85 = 1;
  swift_unknownObjectRetain();
  sub_1A3C56110();
  v32 = [swift_getObjCClassFromMetadata() sharedInstance];
  sub_1A42C87A8(0, &unk_1EB126290, MEMORY[0x1E69E6F90]);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1A52FF950;
  *(v33 + 32) = *sub_1A3E5C8FC();
  *(v33 + 40) = *sub_1A3E5C92C();
  *(v33 + 48) = *sub_1A3E5C914();
  *&v78 = v33;
  sub_1A3D43BC8();
  sub_1A42C87A8(0, &unk_1EB126F60, MEMORY[0x1E69E62F8]);
  sub_1A418E98C();
  sub_1A524E224();
  if ([v32 cellBackgroundShouldLimitVideoDownloadQuality])
  {
    LOBYTE(v78) = *(v20 + *(v30 + 40));
    LOBYTE(v89) = 1;
    sub_1A42C7F04();
    if ((sub_1A524C594() & 1) == 0)
    {
      v34 = v72;
      v35 = *sub_1A3E5C950();
      v89 = v34;
      sub_1A3D4417C();
      sub_1A524C9C4();
      sub_1A3D441D0();
      sub_1A524EE64();
      v88 = v35;
      sub_1A524E184();
      *&v72 = v78;
    }
  }

  v36 = sub_1A40B1BE4(*(v20 + *(v30 + 40)), 0);
  v89 = v72;
  v37 = 0x3FF0000000000000;
  v38 = 0x3FF0000000000000;
  if (!v36)
  {
    [v32 playbackRateFactor];
    v38 = v39;
  }

  sub_1A42C7E88(v30);
  if (v40 > 0.0)
  {
    v37 = 0x3FB999999999999ALL;
  }

  sub_1A42C7E88(v30);
  PhotosCollectionPreviewPlayer.Configuration.init(options:playbackRate:resolutionMultiplier:blurRadius:)(&v89, v38, 0, v37, 0, v41, 0, &v78);

  v72 = v78;
  v73 = v79;
  v74 = v80;
  v75 = v81;
  v76 = v82;
  v77 = v83;
  sub_1A42C7E88(v30);
  v42 = v64;
  v43 = v70;
  LemonadeInlineStoryPlayerView<>.init(id:asset:content:configuration:placeholderBlur:onVisibilityChanged:)(v66, v56, 0, 0, v29, v70, v64, v44);
  sub_1A42C7E88(v30);
  v45 = v68;
  v46 = v67;
  sub_1A524A914();
  (*(v65 + 8))(v42, v46);
  LOBYTE(v78) = *(v20 + *(v30 + 40));
  LOBYTE(v72) = 0;
  sub_1A42C7F04();
  v47 = sub_1A524C594();
  MEMORY[0x1EEE9AC00](v47);
  *(&v54 - 2) = v29;
  *(&v54 - 1) = v43;
  swift_checkMetadataState();
  v48 = v57;
  v49 = v59;
  sub_1A524A584();
  (*(v69 + 8))(v45, v49);
  v50 = *(v21 + 16);
  v51 = v62;
  v50(v26, v48, v62);
  v52 = *(v21 + 8);
  v52(v48, v51);
  v50(v71, v26, v51);
  return (v52)(v26, v51);
}

void sub_1A42C7E88(uint64_t a1)
{
  if (sub_1A40B1BE4(*(v1 + *(a1 + 40)), 1))
  {
    sub_1A3C56110();
    v2 = [swift_getObjCClassFromMetadata() sharedInstance];
    [v2 backgroundBlurRadius];
  }
}

unint64_t sub_1A42C7F04()
{
  result = qword_1EB125148;
  if (!qword_1EB125148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB125148);
  }

  return result;
}

uint64_t sub_1A42C7F58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[0] = a1;
  v5 = sub_1A52425F4();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x1E69C1EE8], v5, v7);
  v10 = type metadata accessor for PhotosPreviewableCollectionPlaceholder(255);
  v11 = sub_1A42C75C0();
  v22 = a2;
  v23 = v10;
  v24 = a3;
  v25 = v11;
  type metadata accessor for LemonadeInlineStoryPlayerView();
  v12 = sub_1A5248804();
  v21[2] = swift_getWitnessTable();
  v21[3] = MEMORY[0x1E697F348];
  WitnessTable = swift_getWitnessTable();
  v14 = MEMORY[0x1E69E5FE0];
  v22 = v12;
  v23 = MEMORY[0x1E69E5FE0];
  v15 = MEMORY[0x1E69E5FE8];
  v24 = WitnessTable;
  v25 = MEMORY[0x1E69E5FE8];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v22 = v12;
  v23 = v14;
  v24 = WitnessTable;
  v25 = v15;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v22 = v12;
  v23 = OpaqueTypeMetadata2;
  v24 = WitnessTable;
  v25 = OpaqueTypeConformance2;
  swift_getOpaqueTypeMetadata2();
  v18 = sub_1A524B514();
  v22 = v12;
  v23 = OpaqueTypeMetadata2;
  v24 = WitnessTable;
  v25 = OpaqueTypeConformance2;
  v21[1] = swift_getOpaqueTypeConformance2();
  v19 = swift_getWitnessTable();
  View.lemonadeInlinePlaybackEnvironment(allowedPlayState:)(v9, v18, v19);
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1A42C81EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for GenerativeStoryMovieBackgroundView();
  *(a5 + *(result + 36)) = a2;
  *(a5 + *(result + 40)) = a3;
  return result;
}

unint64_t sub_1A42C82E0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1A40091D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A42C8370(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void sub_1A42C84C4(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v19 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v19 = a2 - 1;
        }

        *v18 = v19;
      }

      else
      {
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 9);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t sub_1A42C86A4()
{
  type metadata accessor for PhotosPreviewableCollectionPlaceholder(255);
  sub_1A42C75C0();
  type metadata accessor for LemonadeInlineStoryPlayerView();
  sub_1A5248804();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_1A524A494();
}

void sub_1A42C87A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for PhotosCollectionPreviewPlayer.Options);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

id PXStorageTipCollectionViewDataSectionManager.itemList.getter()
{
  v1 = [v0 dataSection];

  return v1;
}

id sub_1A42C8878@<X0>(void *a1@<X8>)
{
  result = [*v1 dataSection];
  *a1 = result;
  return result;
}

uint64_t sub_1A42C88B4(uint64_t a1)
{
  result = sub_1A3C3A220(&qword_1EB1374F8, &qword_1EB137500);
  *(a1 + 8) = result;
  return result;
}

id LemonadeAppearance.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LemonadeAppearance.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeAppearance();
  return objc_msgSendSuper2(&v2, sel_init);
}

id LemonadeAppearance.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeAppearance();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _s12PhotosUICore18LemonadeAppearanceC9configureyyFZ_0()
{
  if ((MEMORY[0x1A590D320]() & 1) == 0)
  {
    sub_1A3C52C70(0, &qword_1EB120A78);
    v0 = [swift_getObjCClassFromMetadata() appearance];
    sub_1A3CB8F68();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1A52F9DE0;
    v2 = objc_opt_self();
    *(v1 + 32) = [v2 tintColor];
    *(v1 + 40) = [v2 secondarySystemFillColor];
    sub_1A3C52C70(0, &qword_1EB1205C0);
    v3 = sub_1A524CA14();

    v4 = objc_opt_self();
    v5 = [v4 configurationWithPaletteColors_];

    v6 = [v4 configurationWithTextStyle_];
    v7 = [v5 configurationByApplyingConfiguration_];

    v8 = [v4 configurationWithWeight_];
    v9 = [v7 configurationByApplyingConfiguration_];

    v10 = v9;
    v11 = sub_1A524C634();
    v12 = objc_opt_self();
    v13 = [v12 systemImageNamed:v11 withConfiguration:v10];

    [v0 setBackIndicatorImage_];
    v14 = sub_1A524C634();
    v15 = [v12 systemImageNamed:v14 withConfiguration:v10];

    [v0 setBackIndicatorTransitionMaskImage_];
    sub_1A3C52C70(0, &qword_1EB126B80);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_1A42C8DA4();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1A52F8E10;
    *(v17 + 32) = sub_1A3C52C70(0, &unk_1EB126900);
    sub_1A42C8DFC();
    v18 = sub_1A524CA14();

    v19 = [ObjCClassFromMetadata appearanceWhenContainedInInstancesOfClasses_];

    [v19 setBackButtonTitlePositionAdjustment:0 forBarMetrics:{0.0, -1.0}];
  }
}

void sub_1A42C8DA4()
{
  if (!qword_1EB120258)
  {
    sub_1A42C8DFC();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB120258);
    }
  }
}

unint64_t sub_1A42C8DFC()
{
  result = qword_1EB120850;
  if (!qword_1EB120850)
  {
    sub_1A42C8E44();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EB120850);
  }

  return result;
}

unint64_t sub_1A42C8E44()
{
  result = qword_1EB120858;
  if (!qword_1EB120858)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB120858);
  }

  return result;
}

uint64_t sub_1A42C8EA8()
{
  v0 = sub_1A5244C34();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69C11A8], v0, v2);
  v5 = sub_1A5244C24();
  result = (*(v1 + 8))(v4, v0);
  qword_1EB1B5E68 = v5;
  return result;
}

uint64_t sub_1A42C8F98(uint64_t a1)
{
  sub_1A3C565EC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = sub_1A524CCB4();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = a1;
  sub_1A3D4D930(0, 0, v4, &unk_1A532CBC8, v6);
}

uint64_t sub_1A42C90A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v5 = sub_1A5246F24();
  v4[4] = v5;
  v4[5] = *(v5 - 8);
  v4[6] = swift_task_alloc();
  v6 = sub_1A5241144();
  v4[7] = v6;
  v4[8] = *(v6 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A42C91E8, 0, 0);
}

uint64_t sub_1A42C91E8()
{
  v1 = objc_opt_self();
  if (qword_1EB1B5E60 != -1)
  {
    swift_once();
  }

  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = v0[3];
  v6 = qword_1EB1B5E68;
  sub_1A5241104();
  v7 = sub_1A5241074();
  (*(v3 + 8))(v2, v4);
  v0[2] = 0;
  v8 = [v1 reportFeatureCheckpoint:v5 forFeature:v6 atDate:v7 error:v0 + 2];

  v9 = v0[2];
  if (v8)
  {
    v10 = v9;
  }

  else
  {
    v12 = v0[5];
    v11 = v0[6];
    v13 = v0[4];
    v14 = v9;
    v15 = sub_1A5240B84();

    swift_willThrow();
    v16 = sub_1A3C4A780();
    (*(v12 + 16))(v11, v16, v13);
    v17 = v15;
    v18 = sub_1A5246F04();
    v19 = sub_1A524D244();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 134218242;
      *(v20 + 4) = v6;
      *(v20 + 12) = 2112;
      v22 = v15;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1A3C1C000, v18, v19, "Error: Unable to report background system task checkpoint %ld: %@", v20, 0x16u);
      sub_1A42C95AC(v21, &qword_1EB12B150, sub_1A3C7B6A4);
      MEMORY[0x1A590EEC0](v21, -1, -1);
      MEMORY[0x1A590EEC0](v20, -1, -1);
    }

    else
    {
    }

    (*(v0[5] + 8))(v0[6], v0[4]);
  }

  v24 = v0[1];

  return v24();
}

uint64_t sub_1A42C94B8()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return sub_1A42C90A0(v3, v4, v5, v2);
}

void type metadata accessor for BGSystemTaskFeatureCheckpoint()
{
  if (!qword_1EB137568)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB137568);
    }
  }
}

uint64_t sub_1A42C95AC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_1A3C565EC(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t PhotosPreviewHeaderContentChangeAnimation.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

unint64_t sub_1A42C96E0(uint64_t a1)
{
  result = sub_1A42C9708();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A42C9708()
{
  result = qword_1EB137570;
  if (!qword_1EB137570)
  {
    type metadata accessor for PhotosPreviewableCollectionKeyAssetModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB137570);
  }

  return result;
}

uint64_t sub_1A42C9760@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosPreviewableCollectionKeyAssetModel();
  result = sub_1A52478D4();
  *a1 = result;
  return result;
}

uint64_t ImportSourcesItemListManager.itemList.getter()
{
  swift_getKeyPath();
  sub_1A42CA50C(&qword_1EB129A18, type metadata accessor for ImportSourcesItemListManager);
  sub_1A52415D4();
}

uint64_t sub_1A42C9854@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A42CA50C(&qword_1EB129A18, type metadata accessor for ImportSourcesItemListManager);
  sub_1A52415D4();

  *a2 = *(v3 + 16);
}

uint64_t type metadata accessor for ImportSourcesItemListManager()
{
  result = qword_1EB17FBA0;
  if (!qword_1EB17FBA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A42C9ED0()
{
  swift_unownedRetainStrong();
  sub_1A42C9F10();
}

uint64_t sub_1A42C9F10()
{
  v1 = [*(v0 + 40) importSources];
  sub_1A3C52C70(0, &qword_1EB126BF8);
  v2 = sub_1A524CA34();

  if (v2 >> 62)
  {
    result = sub_1A524E2B4();
    if (!result)
    {
      goto LABEL_11;
    }
  }

  else
  {
    result = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      goto LABEL_11;
    }
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1A59097F0](0, v2);
    goto LABEL_6;
  }

  if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v4 = *(v2 + 32);
LABEL_6:
    v5 = v4;
    if (v2 >> 62)
    {
      if (sub_1A524E2B4() < 2)
      {
        goto LABEL_8;
      }
    }

    else if (*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10) < 2)
    {
LABEL_8:

      goto LABEL_11;
    }

    sub_1A3CB8F68();
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1A52F9790;
    *(v6 + 32) = v5;
LABEL_11:
    type metadata accessor for ImportSourcesItemList();
    ImportSourcesItemList.__allocating_init(importSources:)();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A42CA138()
{
  swift_getKeyPath();
  sub_1A42CA50C(&qword_1EB129A18, type metadata accessor for ImportSourcesItemListManager);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A42CA1E0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A42CA50C(&qword_1EB129A18, type metadata accessor for ImportSourcesItemListManager);
  sub_1A52415D4();

  *a2 = *(v3 + 48);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A42CA290()
{
  swift_getKeyPath();
  sub_1A42CA50C(&qword_1EB129A18, type metadata accessor for ImportSourcesItemListManager);
  sub_1A52415C4();
}

uint64_t ImportSourcesItemListManager.deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28ImportSourcesItemListManager___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t ImportSourcesItemListManager.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC12PhotosUICore28ImportSourcesItemListManager___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A42CA50C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A42CA5E4@<X0>(void *a1@<X8>)
{
  swift_getKeyPath();
  sub_1A42CA50C(&qword_1EB129A18, type metadata accessor for ImportSourcesItemListManager);
  sub_1A52415D4();

  *a1 = *(v1 + 16);
}

void sub_1A42CA6E0()
{
  sub_1A42CA50C(&qword_1EB129A28, type metadata accessor for ImportSourcesItemListManager);

  sub_1A5245C54();
}

uint64_t sub_1A42CA76C()
{
  result = sub_1A5241614();
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

uint64_t sub_1A42CA880()
{
  *(*(v0 + 16) + 48) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A42CA8E0()
{
  sub_1A3C7E8B0();
  v1 = [swift_getObjCClassFromMetadata() sharedInstance];
  v2 = [v1 enableTabs];

  sub_1A42CC9DC(0, &qword_1EB126238, sub_1A42CCA40, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  if (v2)
  {
    *(v3 + 16) = xmmword_1A531D3E0;
    v4 = v0[7];
    *(v3 + 32) = v0[6];
    *(v3 + 40) = &off_1F16EC370;
    *(v3 + 48) = v4;
    *(v3 + 56) = &off_1F1731C68;
    *(v3 + 64) = v0[8];
    *(v3 + 72) = &off_1F17032D0;
    *(v3 + 80) = v0[10];
    *(v3 + 88) = &off_1F17091F0;
  }

  else
  {
    v5 = v0[8];
    *(v3 + 32) = v0[9];
    *(v3 + 40) = &off_1F1709888;
    v6 = v0[7];
    *(v3 + 48) = v0[6];
    *(v3 + 56) = &off_1F16EC370;
    *(v3 + 16) = xmmword_1A52FCA00;
    *(v3 + 64) = v6;
    *(v3 + 72) = &off_1F1731C68;
    *(v3 + 80) = v5;
    *(v3 + 88) = &off_1F17032D0;
    *(v3 + 96) = v0[10];
    *(v3 + 104) = &off_1F17091F0;
  }

  return v3;
}

uint64_t sub_1A42CAA68(uint64_t a1)
{
  result = sub_1A42CA8E0();
  v3 = result;
  v4 = *(result + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (result + 40);
    while (v5 < *(v3 + 16))
    {
      v7 = *(v6 - 1);
      v8 = *v6;
      ObjectType = swift_getObjectType();
      v10 = *(v8 + 24);
      swift_unknownObjectRetain();
      if (v10(a1, ObjectType, v8))
      {

        return v7;
      }

      result = swift_unknownObjectRelease();
      ++v5;
      v6 += 2;
      if (v4 == v5)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    type metadata accessor for LemonadeNullNavigationParticipant();
    return sub_1A3D76DF4();
  }

  return result;
}

uint64_t sub_1A42CAB5C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1A524CC54();
  v3[5] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A42CABF8, v5, v4);
}

void *sub_1A42CABF8()
{
  result = sub_1A42CA8E0();
  v0[8] = result;
  v2 = result[2];
  v0[9] = v2;
  v0[10] = 0;
  if (v2)
  {
    if (result[2])
    {
      v0[11] = result[4];
      v3 = result[5];
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 40);
      swift_unknownObjectRetain();
      v10 = (v5 + *v5);
      v6 = swift_task_alloc();
      v0[12] = v6;
      *v6 = v0;
      v6[1] = sub_1A42CADB0;
      v8 = v0[2];
      v7 = v0[3];

      return v10(v8, v7, ObjectType, v3);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v9 = v0[1];

    return v9(1);
  }

  return result;
}

uint64_t sub_1A42CADB0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {

    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_1A42CB0C0;
  }

  else
  {
    v4[14] = a1;
    v5 = v4[6];
    v6 = v4[7];
    v7 = sub_1A42CAEDC;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A42CAEDC()
{
  v1 = v0[14];
  result = swift_unknownObjectRelease();
  if (v1 != 1)
  {
    v5 = v0[14];
    goto LABEL_5;
  }

  v3 = v0[9];
  v4 = v0[10] + 1;
  v0[10] = v4;
  if (v4 == v3)
  {
    v5 = 1;
LABEL_5:

    v6 = v0[1];

    return v6(v5);
  }

  v7 = v0[8];
  if (v4 >= *(v7 + 16))
  {
    __break(1u);
  }

  else
  {
    v8 = v7 + 16 * v4;
    v0[11] = *(v8 + 32);
    v9 = *(v8 + 40);
    ObjectType = swift_getObjectType();
    v11 = *(v9 + 40);
    swift_unknownObjectRetain();
    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    v0[12] = v12;
    *v12 = v0;
    v12[1] = sub_1A42CADB0;
    v14 = v0[2];
    v13 = v0[3];

    return v15(v14, v13, ObjectType, v9);
  }

  return result;
}

uint64_t sub_1A42CB0C0()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A42CB130(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v3[15] = *(type metadata accessor for LemonadeFeatureLibrary.Shelf(0) - 8);
  v3[16] = swift_task_alloc();
  v4 = sub_1A5246F24();
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  sub_1A524CC54();
  v3[20] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v3[21] = v6;
  v3[22] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A42CB280, v6, v5);
}

uint64_t sub_1A42CB280()
{
  v39 = v0;
  v1 = *(v0 + 112);
  v2 = sub_1A42CAA68(*(v0 + 96));
  v4 = v3;
  *(v0 + 184) = v2;
  ObjectType = swift_getObjectType();
  v6 = *(v1 + 64);
  if (v2 != v6 || (sub_1A42C1E00(*(v0 + 96), v38), v36 = v38[0], v38[0] == 24))
  {
LABEL_19:
    v37 = (*(v4 + 48) + **(v4 + 48));
    v30 = swift_task_alloc();
    *(v0 + 192) = v30;
    *v30 = v0;
    v30[1] = sub_1A42CB7A0;
    v32 = *(v0 + 96);
    v31 = *(v0 + 104);

    return v37(v32, v31, ObjectType, v4);
  }

  v34 = ObjectType;
  v7 = *(v0 + 144);
  v8 = *(v0 + 152);
  v9 = *(v0 + 136);
  v10 = sub_1A46E59CC();
  v11 = sub_1A4531AA8();
  (*(v7 + 16))(v8, v11, v9);
  v12 = sub_1A5246F04();
  v13 = sub_1A524D264();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 67109120;
    *(v14 + 4) = v10 & 1;
    _os_log_impl(&dword_1A3C1C000, v12, v13, "navigate called resetToInitialState success:%{BOOL}d", v14, 8u);
    MEMORY[0x1A590EEC0](v14, -1, -1);
  }

  v15 = *(v0 + 144);
  v16 = *(v0 + 152);
  v17 = *(v0 + 136);

  v18 = (*(v15 + 8))(v16, v17);
  if (v10)
  {
    v33 = v4;
    v19 = *(v0 + 120);
    result = (*(*v6 + 584))(v18);
    v21 = result;
    v22 = 0;
    v35 = *(result + 16);
    while (v35 != v22)
    {
      if (v22 >= *(v21 + 16))
      {
        __break(1u);
        return result;
      }

      sub_1A3C531C8(v21 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v22, *(v0 + 128));
      sub_1A3C5322C();
      *(v0 + 57) = v38[1];
      *(v0 + 58) = v36;
      sub_1A3C5F5F8();
      sub_1A524C9C4();
      sub_1A524C9C4();
      v24 = *(v0 + 128);
      if (*(v0 + 64) == *(v0 + 80) && *(v0 + 72) == *(v0 + 88))
      {
        sub_1A3C53E7C(*(v0 + 128));

LABEL_13:
        v25 = *(v0 + 112);

        *(v0 + 16) = v36;
        *(v0 + 56) = 0;
        (*(*v25 + 800))(v0 + 16, 0);
        sub_1A3F6857C(v0 + 16);
        v4 = v33;
        ObjectType = v34;
        goto LABEL_19;
      }

      ++v22;
      v23 = sub_1A524EAB4();
      sub_1A3C53E7C(v24);

      if (v23)
      {
        goto LABEL_13;
      }
    }

    v4 = v33;
    ObjectType = v34;
    if (((*(*v6 + 600))(v27) & 1) == 0)
    {
      v28 = *(v0 + 112);
      v29 = swift_task_alloc();
      *(v29 + 16) = v28;
      *(v29 + 24) = v36;
      sub_1A52415B4();
      v4 = v33;
    }

    goto LABEL_19;
  }

  swift_unknownObjectRelease();

  v26 = *(v0 + 8);

  return v26(3);
}

uint64_t sub_1A42CB7A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 200) = v1;

  if (v1)
  {
    v5 = v4[21];
    v6 = v4[22];
    v7 = sub_1A42CB954;
  }

  else
  {
    v4[26] = a1;
    v5 = v4[21];
    v6 = v4[22];
    v7 = sub_1A42CB8C8;
  }

  return MEMORY[0x1EEE6DFA0](v7, v5, v6);
}

uint64_t sub_1A42CB8C8()
{

  swift_unknownObjectRelease();
  v1 = *(v0 + 208);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A42CB954()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A42CB9E0(uint64_t a1, char a2)
{
  sub_1A42CC9DC(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = sub_1A524CCB4();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  swift_beginAccess();
  swift_weakLoadStrong();
  swift_weakInit();

  sub_1A524CC54();

  v8 = sub_1A524CC44();
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E85E0];
  *(v9 + 16) = v8;
  *(v9 + 24) = v10;
  *(v9 + 32) = v7;
  *(v9 + 40) = a2;

  sub_1A3DCC930(0, 0, v5, &unk_1A532CF50, v9);
}

uint64_t sub_1A42CBB94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 57) = a5;
  *(v5 + 88) = a4;
  v6 = sub_1A524E5E4();
  *(v5 + 96) = v6;
  *(v5 + 104) = *(v6 - 8);
  *(v5 + 112) = swift_task_alloc();
  sub_1A524CC54();
  *(v5 + 120) = sub_1A524CC44();
  v8 = sub_1A524CBC4();
  *(v5 + 128) = v8;
  *(v5 + 136) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1A42CBC8C, v8, v7);
}

uint64_t sub_1A42CBC8C()
{
  v1 = sub_1A524EE14();
  v3 = v2;
  sub_1A524EBB4();
  v4 = swift_task_alloc();
  *(v0 + 144) = v4;
  *v4 = v0;
  v4[1] = sub_1A42CBD68;

  return sub_1A3DCFAB0(v1, v3, 0, 0, 1);
}

uint64_t sub_1A42CBD68()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  (*(v2[13] + 8))(v2[14], v2[12]);
  v3 = v2[17];
  v4 = v2[16];
  if (v0)
  {
    v5 = sub_1A42CBFD8;
  }

  else
  {
    v5 = sub_1A42CBEF0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A42CBEF0()
{

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    *(v0 + 16) = *(v0 + 57);
    *(v0 + 56) = 0;
    (*(*Strong + 800))(v0 + 16, 0);

    sub_1A3F6857C(v0 + 16);
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A42CBFD8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1A42CC044(void *a1, uint64_t a2)
{
  sub_1A42CC9DC(0, &qword_1EB124C88, MEMORY[0x1E69C1030], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v35 - v5;
  v7 = sub_1A5244854();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v35 - v13;
  if ([a1 type] != 32)
  {
    if (([a1 isCollectionsHome] & 1) == 0)
    {
      sub_1A42CAA68(a1);
      v19 = v18;
      ObjectType = swift_getObjectType();
      v21 = (*(v19 + 56))(a1, a2, ObjectType, v19);
      swift_unknownObjectRelease();
      return v21;
    }

    return MEMORY[0x1E69E7CC0];
  }

  (*(v8 + 104))(v14, *MEMORY[0x1E69C1010], v7);
  v15 = [a1 memoryCreationLaunchType];
  if (v15)
  {
    v16 = v15;
    sub_1A524C674();

    sub_1A5244844();
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      sub_1A42CC8C4(v6, &qword_1EB124C88, MEMORY[0x1E69C1030]);
    }

    else
    {
      (*(v8 + 8))(v14, v7);
      (*(v8 + 32))(v14, v6, v7);
    }
  }

  sub_1A42CC9DC(0, &qword_1EB126250, type metadata accessor for LemonadeNavigationDestination, MEMORY[0x1E69E6F90]);
  v36 = type metadata accessor for LemonadeNavigationDestination();
  v23 = (*(*(v36 - 8) + 80) + 32) & ~*(*(v36 - 8) + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1A52F8E10;
  v35 = *(a2 + 16);
  v24 = [a1 memoryCreationText];
  if (v24)
  {

    result = [a1 memoryCreationText];
    if (!result)
    {
      __break(1u);
      goto LABEL_23;
    }

    v25 = result;
    v26 = [objc_allocWithZone(MEMORY[0x1E696AAB0]) initWithString_];
  }

  else
  {
    v26 = 0;
  }

  v27 = [a1 memoryCreationText];
  if (v27)
  {

    result = [a1 memoryCreationText];
    if (result)
    {
      v28 = result;
      v29 = sub_1A524C674();
      v31 = v30;

      v32 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v32 = v29 & 0xFFFFFFFFFFFFLL;
      }

      v33 = v32 != 0;
      goto LABEL_19;
    }

LABEL_23:
    __break(1u);
    return result;
  }

  v33 = 0;
LABEL_19:
  (*(v8 + 16))(v10, v14, v7);
  v34 = sub_1A3C6E9EC();
  LemonadeGenerativeMemoriesConfiguration.init(photoLibrary:memoryCreationAttributedText:startCreation:suggestionViewModel:transitionType:generationEntryPoint:)(v35, v26, v33, 0, v34, v10, v17 + v23);
  swift_storeEnumTagMultiPayload();
  (*(v8 + 8))(v14, v7);
  return v17;
}

id sub_1A42CC524()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 momentsCollection];

  v3 = [objc_allocWithZone(PXProgrammaticNavigationDestination) initWithObject:v2 revealMode:1];
  return v3;
}

uint64_t sub_1A42CC5A4(void *a1)
{
  if ([a1 type] == 32 || objc_msgSend(a1, sel_isCollectionsHome))
  {
    return 1;
  }

  sub_1A42CAA68(a1);
  v4 = v3;
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 24))(a1, ObjectType, v4);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_1A42CC640(uint64_t a1)
{
  sub_1A42CAA68(a1);
  v3 = v2;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(a1, ObjectType, v3);
  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1A42CC6A8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBB594;

  return sub_1A42CAB5C(a1, a2);
}

uint64_t sub_1A42CC74C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3FBBB04;

  return sub_1A42CB130(a1, a2);
}

uint64_t (*sub_1A42CC840())()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  return sub_1A42CC934;
}

uint64_t sub_1A42CC8C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A42CC9DC(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A42CC940()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3D60150;

  return sub_1A42CBB94(v4, v5, v6, v2, v3);
}

void sub_1A42CC9DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A42CCA40()
{
  result = qword_1EB1293F0;
  if (!qword_1EB1293F0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1293F0);
  }

  return result;
}

id sub_1A42CCB58(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v16 = objc_allocWithZone(v8);
  v17 = &v16[OBJC_IVAR___PXCreateSocialGroupAction_socialGroupIdentifier];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v16[OBJC_IVAR___PXCreateSocialGroupAction_creationCompletionBlock];
  *v18 = 0;
  v18[1] = 0;
  *&v16[OBJC_IVAR___PXCreateSocialGroupAction_people] = a1;
  v19 = &v16[OBJC_IVAR___PXCreateSocialGroupAction_customTitle];
  *v19 = a2;
  *(v19 + 1) = a3;
  v20 = &v16[OBJC_IVAR___PXCreateSocialGroupAction_keyAssetUUID];
  *v20 = a4;
  *(v20 + 1) = a5;
  *v18 = a6;
  v18[1] = a7;
  *&v16[OBJC_IVAR___PXCreateSocialGroupAction_modifiedGroups] = MEMORY[0x1E69E7CC0];
  v21 = a1;
  sub_1A3D607F0(a6);
  v22 = [v21 photoLibrary];
  v25.receiver = v16;
  v25.super_class = v8;
  v23 = objc_msgSendSuper2(&v25, sel_initWithPhotoLibrary_, v22);
  sub_1A3C784D4(a6, a7);

  return v23;
}

id sub_1A42CCC90(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  ObjectType = swift_getObjectType();
  v17 = &v8[OBJC_IVAR___PXCreateSocialGroupAction_socialGroupIdentifier];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v8[OBJC_IVAR___PXCreateSocialGroupAction_creationCompletionBlock];
  *v18 = 0;
  v18[1] = 0;
  *&v8[OBJC_IVAR___PXCreateSocialGroupAction_people] = a1;
  v19 = &v8[OBJC_IVAR___PXCreateSocialGroupAction_customTitle];
  *v19 = a2;
  *(v19 + 1) = a3;
  v20 = &v8[OBJC_IVAR___PXCreateSocialGroupAction_keyAssetUUID];
  *v20 = a4;
  *(v20 + 1) = a5;
  *v18 = a6;
  v18[1] = a7;
  *&v8[OBJC_IVAR___PXCreateSocialGroupAction_modifiedGroups] = MEMORY[0x1E69E7CC0];
  v21 = a1;
  sub_1A3D607F0(a6);
  v22 = [v21 photoLibrary];
  v25.receiver = v8;
  v25.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v25, sel_initWithPhotoLibrary_, v22);
  sub_1A3C784D4(a6, a7);

  return v23;
}

uint64_t sub_1A42CCEAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *&v2[OBJC_IVAR___PXCreateSocialGroupAction_creationCompletionBlock];
  v7 = *&v2[OBJC_IVAR___PXCreateSocialGroupAction_creationCompletionBlock + 8];
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = sub_1A42CD078;
  v18 = v8;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A3C2E0D0;
  v16 = &block_descriptor_148;
  v9 = _Block_copy(&v13);
  sub_1A3D607F0(v6);

  v10 = swift_allocObject();
  v10[2] = v6;
  v10[3] = v7;
  v10[4] = a1;
  v10[5] = a2;
  v17 = sub_1A42CD504;
  v18 = v10;
  v13 = MEMORY[0x1E69E9820];
  v14 = 1107296256;
  v15 = sub_1A3D6084C;
  v16 = &block_descriptor_6_5;
  v11 = _Block_copy(&v13);
  sub_1A3D607F0(v6);

  [v3 performChanges:v9 completionHandler:v11];
  _Block_release(v11);
  _Block_release(v9);
  return sub_1A3C784D4(v6, v7);
}

void sub_1A42CD078()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR___PXCreateSocialGroupAction_people) fetchedObjects];
    if (v2)
    {
      v3 = v2;
      sub_1A3C52C70(0, &qword_1EB1265C0);
      sub_1A524CA34();

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

uint64_t sub_1A42CD504(char a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 32);
  if (v3)
  {
    v3();
  }

  return v4(a1 & 1);
}

void sub_1A42CD598(void (*a1)(), uint64_t a2)
{
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v12 = sub_1A42CD6EC;
  v13 = v5;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3C2E0D0;
  v11 = &block_descriptor_10_4;
  v6 = _Block_copy(&v8);

  v12 = a1;
  v13 = a2;
  v8 = MEMORY[0x1E69E9820];
  v9 = 1107296256;
  v10 = sub_1A3D6084C;
  v11 = &block_descriptor_13_4;
  v7 = _Block_copy(&v8);

  [v2 performChanges:v6 completionHandler:v7];
  _Block_release(v7);
  _Block_release(v6);
}

void sub_1A42CD6EC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if (*(Strong + OBJC_IVAR___PXCreateSocialGroupAction_socialGroupIdentifier + 8))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v2 = sub_1A524D244();
    v3 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v3, v2))
    {
      v4 = v3;
      v5 = swift_slowAlloc();
      swift_slowAlloc();
      *v5 = 136315138;
      sub_1A3C37330(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }
  }
}

uint64_t sub_1A42CDCC8(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

uint64_t sub_1A42CDE4C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    v7 = a2;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265C0);
  v8 = sub_1A524DBE4();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v17 = *(*(v6 + 48) + 8 * v10);
    *a1 = v17;
    v18 = v17;
    return 0;
  }

  else
  {
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    v15 = a2;
    sub_1A42CE480(v15, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v19;
    *a1 = v15;
    return 1;
  }
}

uint64_t sub_1A42CE084(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_1A42CEAE4();
    v2 = sub_1A524E3C4();
    v14 = v2;
    sub_1A524E274();
    if (sub_1A524E304())
    {
      sub_1A3C52C70(0, &qword_1EB1265C0);
      do
      {
        swift_dynamicCast();
        if (*(v2 + 24) <= *(v2 + 16))
        {
          sub_1A42CE264();
        }

        v2 = v14;
        result = sub_1A524DBE4();
        v4 = v14 + 56;
        v5 = -1 << *(v14 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v14 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v9 = 0;
          v10 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v10 && (v9 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v11 = v7 == v10;
            if (v7 == v10)
            {
              v7 = 0;
            }

            v9 |= v11;
            v12 = *(v4 + 8 * v7);
          }

          while (v12 == -1);
          v8 = __clz(__rbit64(~v12)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v14 + 48) + 8 * v8) = v13;
        ++*(v14 + 16);
      }

      while (sub_1A524E304());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1A42CE264()
{
  v1 = v0;
  v2 = *v0;
  sub_1A42CEAE4();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v5 = 0;
    v6 = (v2 + 56);
    v7 = 1 << *(v2 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v2 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v2 + 48) + 8 * (v13 | (v5 << 6)));
      result = sub_1A524DBE4();
      v17 = -1 << *(v4 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v4 + 48) + 8 * v12) = v16;
      ++*(v4 + 16);
    }

    v14 = v5;
    while (1)
    {
      v5 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v5 >= v10)
      {
        break;
      }

      v15 = v6[v5];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    v24 = 1 << *(v2 + 32);
    if (v24 >= 64)
    {
      bzero((v2 + 56), ((v24 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v6 = -1 << v24;
    }

    *(v2 + 16) = 0;
  }

  *v1 = v4;
  return result;
}

void sub_1A42CE480(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A42CE264();
  }

  else
  {
    if (v7 > v6)
    {
      sub_1A42CE5F0();
      goto LABEL_12;
    }

    sub_1A42CE734();
  }

  v8 = *v3;
  v9 = sub_1A524DBE4();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1A3C52C70(0, &qword_1EB1265C0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1A524DBF4();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1A524EB74();
  __break(1u);
}

id sub_1A42CE5F0()
{
  v1 = v0;
  sub_1A42CEAE4();
  v2 = *v0;
  v3 = sub_1A524E3A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A42CE734()
{
  v1 = v0;
  v2 = *v0;
  sub_1A42CEAE4();
  result = sub_1A524E3B4();
  v4 = result;
  if (*(v2 + 16))
  {
    v23 = v0;
    v5 = 0;
    v6 = 1 << *(v2 + 32);
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    else
    {
      v7 = -1;
    }

    v8 = v7 & *(v2 + 56);
    v9 = (v6 + 63) >> 6;
    v10 = result + 56;
    while (v8)
    {
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_15:
      v15 = *(*(v2 + 48) + 8 * (v12 | (v5 << 6)));
      result = sub_1A524DBE4();
      v16 = -1 << *(v4 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v10 + 8 * (v17 >> 6))) == 0)
      {
        v19 = 0;
        v20 = (63 - v16) >> 6;
        while (++v18 != v20 || (v19 & 1) == 0)
        {
          v21 = v18 == v20;
          if (v18 == v20)
          {
            v18 = 0;
          }

          v19 |= v21;
          v22 = *(v10 + 8 * v18);
          if (v22 != -1)
          {
            v11 = __clz(__rbit64(~v22)) + (v18 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v11 = __clz(__rbit64((-1 << v17) & ~*(v10 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v10 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(*(v4 + 48) + 8 * v11) = v15;
      ++*(v4 + 16);
    }

    v13 = v5;
    while (1)
    {
      v5 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        v1 = v23;
        goto LABEL_26;
      }

      v14 = *(v2 + 56 + 8 * v5);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v8 = (v14 - 1) & v14;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_1A42CE93C(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1A524E2B4())
  {
    v4 = sub_1A3C52C70(0, &qword_1EB1265C0);
    v5 = sub_1A42CEA7C();
    result = MEMORY[0x1A59082D0](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1A59097F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_1A42CDE4C(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_1A524E2B4();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1A42CEA7C()
{
  result = qword_1EB131810;
  if (!qword_1EB131810)
  {
    sub_1A3C52C70(255, &qword_1EB1265C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB131810);
  }

  return result;
}

void sub_1A42CEAE4()
{
  if (!qword_1EB142400)
  {
    sub_1A3C52C70(255, &qword_1EB1265C0);
    sub_1A42CEA7C();
    v0 = sub_1A524E3E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB142400);
    }
  }
}

uint64_t sub_1A42CEB70()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1EBC70);
  __swift_project_value_buffer(v6, qword_1EB1EBC70);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

unint64_t sub_1A42CED5C()
{
  result = qword_1EB1375B0;
  if (!qword_1EB1375B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1375B0);
  }

  return result;
}

void sub_1A42CEDB0()
{
  if (!qword_1EB1375C0)
  {
    sub_1A3F57E84();
    v0 = sub_1A524ED44();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1375C0);
    }
  }
}

uint64_t sub_1A42CEE10(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A42CEEA8, v4, v3);
}

uint64_t sub_1A42CEEA8()
{
  v0[2] = v0[5];
  sub_1A523FF44();
  v1 = *(v0[3] + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_1A42CED5C();
  *v2 = v0;
  v2[1] = sub_1A3DB3750;
  v3 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v3, 0, 0, 0, 0, v1, 0, &unk_1A532CFB8);
}

uint64_t sub_1A42CEFB4(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[7] = v4;
  v2[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A42CF04C, v4, v3);
}

uint64_t sub_1A42CF04C()
{
  v1 = v0[5];
  sub_1A523FF44();
  v2 = v0[2];
  v0[9] = v2;
  v0[3] = v1;
  sub_1A42CED5C();
  v3 = AppIntent.px_intentName.getter();
  v5 = v4;
  v0[10] = v4;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *v6 = v0;
  v6[1] = sub_1A42CF140;

  return sub_1A42CFC88(v2, v3, v5);
}

uint64_t sub_1A42CF140()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 64);
  if (v0)
  {
    v5 = sub_1A42CF2E4;
  }

  else
  {
    v5 = sub_1A42CF274;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A42CF274()
{

  sub_1A523FDD4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A42CF2E4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A42CF348(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A42CEFB4(a1, v1);
}

uint64_t sub_1A42CF3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A3CA8098;

  return sub_1A42CFC88(a1, a2, a3);
}

uint64_t sub_1A42CF4A4()
{
  v0 = sub_1A5240334();
  v24 = *(v0 - 8);
  v25 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v23 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1A5240184();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v22 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB3480();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240BA4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v19 = sub_1A5240BB4();
  v12 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  sub_1A3F57E84();
  v20 = v13;
  sub_1A524C5B4();
  sub_1A5241244();
  v14 = *MEMORY[0x1E6968DF0];
  v15 = *(v7 + 104);
  v15(v9, v14, v6);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v15(v9, v14, v6);
  v16 = v21;
  sub_1A5240BC4();
  (*(v12 + 56))(v16, 0, 1, v19);
  v26 = 0;
  sub_1A5240174();
  (*(v24 + 104))(v23, *MEMORY[0x1E695A500], v25);
  sub_1A3F587A8();
  sub_1A3F58824();
  return sub_1A5240034();
}

uint64_t sub_1A42CF908@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1B5E90 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  v3 = __swift_project_value_buffer(v2, qword_1EB1EBC70);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_1A42CF9C8()
{
  sub_1A42D0614(0, &qword_1EB1375A8, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A42D0614(0, &qword_1EB1375B8, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A42CEDB0();
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A42CFB84(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A3D60150;

  return sub_1A42CEE10(a1, v4);
}

uint64_t sub_1A42CFC24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A42CF4A4();
  *a1 = result;
  return result;
}

uint64_t sub_1A42CFC4C(uint64_t a1)
{
  v2 = sub_1A42CED5C();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A42CFC88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1A5246F24();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v3[8] = sub_1A524CC54();
  v3[9] = sub_1A524CC44();
  v5 = swift_task_alloc();
  v3[10] = v5;
  *v5 = v3;
  v5[1] = sub_1A42CFD98;

  return sub_1A4895F20(1);
}

uint64_t sub_1A42CFD98()
{
  v2 = *v1;
  v2[11] = v0;

  v4 = sub_1A524CBC4();
  v2[12] = v4;
  v2[13] = v3;
  if (v0)
  {
    v5 = sub_1A42D03E0;
  }

  else
  {
    v5 = sub_1A42CFEF8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1A42CFEF8()
{
  v1 = v0[11];
  v2 = PXAppIntentsAssets(for:)(v0[2]);
  if (!v1)
  {
    if (!(v2 >> 62))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A3C52C70(0, &qword_1EB1265D0);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1A42D0248()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1A42D044C;
  }

  else
  {

    v3 = *(v2 + 96);
    v4 = *(v2 + 104);
    v5 = sub_1A42D0364;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A42D0364()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A42D03E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A42D044C()
{
  v1 = *(v0 + 112);

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1A42D04C8()
{
  result = qword_1EB1375C8;
  if (!qword_1EB1375C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1375C8);
  }

  return result;
}

unint64_t sub_1A42D0520()
{
  result = qword_1EB1375D0;
  if (!qword_1EB1375D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1375D0);
  }

  return result;
}

unint64_t sub_1A42D05A0()
{
  result = qword_1EB1375D8;
  if (!qword_1EB1375D8)
  {
    sub_1A42D0614(255, &unk_1EB1375E0, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1375D8);
  }

  return result;
}

void sub_1A42D0614(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A42CED5C();
    v7 = a3(a1, &type metadata for MoveAssetsToPersonalLibraryIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A42D0678(char a1)
{
  v2 = sub_1A52473D4();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1A52473E4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1A590D320](v5);
  if (result)
  {
    if (a1)
    {
      sub_1A52473C4();
      sub_1A52473F4();
      *(&v11 + 1) = v3;
      v12 = MEMORY[0x1E69DC388];
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
      (*(v4 + 32))(boxed_opaque_existential_1, v7, v3);
    }

    else
    {
      v12 = 0;
      v10 = 0u;
      v11 = 0u;
    }

    return sub_1A524DB24();
  }

  return result;
}

void sub_1A42D07D4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_1A42D0678(a3);
}

id sub_1A42D0828(void *a1)
{
  v1 = a1;
  v2 = PXGView.visualDiagnosticsConfigurationForFullPageSnapshot.getter();

  return v2;
}

id PXGView.visualDiagnosticsConfigurationForFullPageSnapshot.getter()
{
  type metadata accessor for PXGViewFullPageSnapshotProvider(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC12PhotosUICoreP33_08015FDD82BBF5ACD0B1280B656A5A2C31PXGViewFullPageSnapshotProvider____lazy_storage___logger;
  v3 = sub_1A5246F24();
  (*(*(v3 - 8) + 56))(v1 + v2, 1, 1, v3);
  sub_1A52411B4();
  v4 = NSTemporaryDirectory();
  sub_1A524C674();

  sub_1A5240D04();

  *(v1 + 16) = v0;
  v5 = objc_allocWithZone(off_1E7721970);
  v6 = v0;
  v7 = [v5 initWithRootProvider_];

  return v7;
}

Swift::Void __swiftcall PXGView.showVisualDiagnosticsForFullPageSnapshot()()
{
  v1 = objc_opt_self();
  v2 = [v0 visualDiagnosticsConfigurationForFullPageSnapshot];
  [v1 showVisualDiagnosticsWithConfiguration:v2 fromViewController:0 completionHandler:0];
}

void sub_1A42D0A28(void *a1)
{
  v2 = objc_opt_self();
  v4 = a1;
  v3 = [v4 visualDiagnosticsConfigurationForFullPageSnapshot];
  [v2 showVisualDiagnosticsWithConfiguration:v3 fromViewController:0 completionHandler:0];
}

uint64_t sub_1A42D0BA0@<X0>(uint64_t a1@<X8>)
{
  sub_1A42D3B64(0, &qword_1EB128BF8, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC12PhotosUICoreP33_08015FDD82BBF5ACD0B1280B656A5A2C31PXGViewFullPageSnapshotProvider____lazy_storage___logger;
  swift_beginAccess();
  sub_1A42D3C2C(v1 + v9, v8);
  v10 = sub_1A5246F24();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1A3C68850(v8, &qword_1EB128BF8, MEMORY[0x1E69E9420]);
  sub_1A5246F14();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1A42D3CC0(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1A42D0DE4(uint64_t a1, uint64_t a2)
{
  v59 = a2;
  v56 = a1;
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v58 = swift_allocObject();
  *(v58 + 16) = MEMORY[0x1E69E7CC0];
  v9 = *(v2 + 16);
  v57 = swift_allocObject();
  *(v57 + 16) = 0;
  v55 = [v9 rootLayout];
  [v55 fullPageSnapshotFloatingInsets];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [v9 diagnosticsMainScrollView];
  result = swift_unknownObjectRelease();
  if (v18)
  {
    v54 = [v18 showsVerticalScrollIndicator];
    [v18 setShowsVerticalScrollIndicator_];
    [v9 setIsBeingFullPageSnapshotted_];
    [v18 px:1 scrollToEdge:0 animated:?];
    v48 = v18;
    v60 = swift_allocObject();
    *(v60 + 16) = 0;
    v20 = swift_allocObject();
    v61 = v9;
    v62 = v20;
    *(v20 + 16) = 0;
    v21 = [objc_opt_self() sharedInstance];
    v53 = v21;
    v22 = [v21 fullPageSnapshotMaximumNumberOfTiles];
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    if (v22 > 0)
    {
      v23 = v22;
    }

    v52 = v23;
    [v21 fullPageSnapshotTileDelay];
    v25 = v24;
    sub_1A42D0BA0(v8);
    v26 = swift_allocObject();
    v51 = v8;
    v47 = v26;
    swift_weakInit();
    (*(v4 + 16))(&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v3);
    v27 = (*(v4 + 80) + 48) & ~*(v4 + 80);
    v46 = (v5 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
    v28 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
    v29 = (v46 + 15) & 0xFFFFFFFFFFFFFFF8;
    v49 = v3;
    v30 = (v29 + 15) & 0xFFFFFFFFFFFFFFF8;
    v50 = v4;
    v31 = (v30 + 15) & 0xFFFFFFFFFFFFFFF8;
    v32 = (v31 + 39) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 2) = v25;
    v34 = v47;
    *(v33 + 3) = v61;
    *(v33 + 4) = v34;
    *(v33 + 5) = v62;
    (*(v4 + 32))(&v33[v27], v28, v3);
    *&v33[v46] = v60;
    v35 = v58;
    *&v33[v29] = v58;
    *&v33[v30] = v57;
    v36 = &v33[v31];
    *v36 = v11;
    *(v36 + 1) = v13;
    *(v36 + 2) = v15;
    *(v36 + 3) = v17;
    v37 = v48;
    *&v33[v32] = v48;
    v38 = v55;
    *&v33[(v32 + 15) & 0xFFFFFFFFFFFFFFF8] = v55;
    v67 = sub_1A42D38B8;
    v68 = v33;
    aBlock = MEMORY[0x1E69E9820];
    v64 = 1107296256;
    v65 = sub_1A3D59380;
    v66 = &block_descriptor_149;
    _Block_copy(&aBlock);
    v39 = v61;

    v40 = v37;
    v41 = v38;

    v42 = swift_allocObject();
    *(v42 + 16) = v40;
    *(v42 + 24) = v54;
    v43 = v56;
    *(v42 + 32) = v39;
    *(v42 + 40) = v43;
    *(v42 + 48) = v59;
    *(v42 + 56) = v35;
    v67 = sub_1A42D39A4;
    v68 = v42;
    aBlock = MEMORY[0x1E69E9820];
    v64 = 1107296256;
    v65 = sub_1A3C2E0D0;
    v66 = &block_descriptor_27_1;
    _Block_copy(&aBlock);
    v44 = v39;

    v45 = v40;

    PXIterateAsynchronously();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A42D13A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, double a13, void *a14, void *a15)
{
  v65 = a8;
  v64 = a7;
  v63 = a6;
  v76 = a3;
  v77 = a4;
  v75 = a2;
  v60 = a1;
  v61 = a15;
  v59 = a14;
  v71 = sub_1A524BEE4();
  v74 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1A524BF64();
  v72 = *(v21 - 8);
  v73 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v69 = &v55 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1A5246F24();
  v56 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v57 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1A524BFC4();
  v67 = v26;
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v55 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v58 = &v55 - v31;
  sub_1A3C52C70(0, &qword_1EB12B180);
  v62 = sub_1A524D474();
  sub_1A524BFA4();
  sub_1A524C014();
  v32 = *(v27 + 8);
  v66 = v27 + 8;
  v68 = v32;
  v32(v29, v26);
  (*(v24 + 16))(&v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v23);
  v33 = (*(v24 + 80) + 40) & ~*(v24 + 80);
  v34 = (v25 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = (v34 + 15) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v35 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 39) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = v76;
  *(v40 + 2) = v75;
  *(v40 + 3) = v41;
  *(v40 + 4) = v77;
  (*(v24 + 32))(&v40[v33], v57, v56);
  *&v40[v34] = v63;
  *&v40[v35] = v64;
  *&v40[v36] = v65;
  v42 = &v40[v37];
  *v42 = a10;
  v42[1] = a11;
  v42[2] = a12;
  v42[3] = a13;
  v43 = v59;
  *&v40[v38] = v59;
  *&v40[v39] = v60;
  v44 = v61;
  *&v40[(v39 + 15) & 0xFFFFFFFFFFFFFFF8] = v61;
  aBlock[4] = sub_1A42D3A38;
  aBlock[5] = v40;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_33_1;
  v45 = _Block_copy(aBlock);
  v46 = v75;

  v47 = v43;
  swift_unknownObjectRetain();
  v48 = v44;

  v49 = v69;
  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A42D3B1C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  sub_1A42D3B64(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C5DE88();
  v51 = v70;
  v50 = v71;
  sub_1A524E224();
  v52 = v58;
  v53 = v62;
  MEMORY[0x1A5908790](v58, v49, v51, v45);
  _Block_release(v45);

  (*(v74 + 8))(v51, v50);
  (*(v72 + 8))(v49, v73);
  return v68(v52, v67);
}

id sub_1A42D19D8(char *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, CGFloat a9, double a10, CGFloat a11, id a12, void *a13)
{
  v171 = a8;
  v172 = a4;
  v167 = a6;
  v168 = a3;
  v163 = a5;
  v175 = *MEMORY[0x1E69E9840];
  v162 = type metadata accessor for PXGViewFullPageSnapshotProvider.Tile(0);
  v164 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v157 = &v150 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v158 = (&v150 - v21);
  MEMORY[0x1EEE9AC00](v22);
  v165 = &v150 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v159 = &v150 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v150 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = (&v150 - v30);
  sub_1A42D3B64(0, &unk_1EB12B250, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v161 = &v150 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = (&v150 - v35);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v150 - v38;
  v40 = sub_1A5240E64();
  v41 = *(v40 - 8);
  v169 = v40;
  v170 = v41;
  MEMORY[0x1EEE9AC00](v40);
  v160 = &v150 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v166 = &v150 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v47 = (&v150 - v46);
  swift_beginAccess();
  if (*(a7 + 16))
  {
    goto LABEL_14;
  }

  v156 = v36;
  v48 = a2;
  [a1 bounds];
  memset(&slice, 0, sizeof(slice));
  memset(&remainder, 0, sizeof(remainder));
  CGRectDivide(v179, &slice, &remainder, a9, CGRectMinYEdge);
  x = slice.origin.x;
  y = slice.origin.y;
  width = slice.size.width;
  height = slice.size.height;
  if (CGRectGetHeight(slice) > 0.0)
  {
    v53 = [a1 snapshotViewAfterScreenUpdates_];
    if (v53)
    {
      v54 = v53;
      v176.width = width;
      v176.height = height;
      UIGraphicsBeginImageContextWithOptions(v176, 0, 0.0);
      [v54 bounds];
      v181 = CGRectOffset(v180, -x, -y);
      [v54 drawViewHierarchyInRect:1 afterScreenUpdates:{v181.origin.x, v181.origin.y, v181.size.width, v181.size.height}];
      v55 = UIGraphicsGetImageFromCurrentImageContext();
      UIGraphicsEndImageContext();

      if (v55)
      {
        v154 = v55;
        swift_beginAccess();
        if (swift_weakLoadStrong())
        {
          v155 = v48;
          v56 = v168;
          swift_beginAccess();
          sub_1A42D2AC8(v154, *(v56 + 16), v39);

          v57 = v170;
          v36 = v169;
          if ((*(v170 + 48))(v39, 1) != 1)
          {
            v153 = a11;
            (*(v57 + 32))(v47, v39, v36);
            swift_beginAccess();
            v116 = *(v56 + 16);
            v97 = __OFADD__(v116, 1);
            v117 = v116 + 1;
            if (!v97)
            {
              *(v56 + 16) = v117;
              v118 = v163;
              swift_beginAccess();
              v119 = *(v118 + 16);
              v193.origin.x = x;
              v193.origin.y = y;
              v193.size.width = width;
              v193.size.height = height;
              v120 = v119 - CGRectGetMinY(v193);
              v194.origin.x = x;
              v194.origin.y = y;
              v194.size.width = width;
              v194.size.height = height;
              v195 = CGRectOffset(v194, 0.0, v120);
              v121 = v195.origin.x;
              v151 = v195.size.width;
              v152 = v195.origin.y;
              v150 = v195.size.height;
              (*(v170 + 16))(v31 + *(v162 + 20), v47, v36);
              v123 = v151;
              v122 = v152;
              *v31 = v121;
              v31[1] = v122;
              v124 = v150;
              v31[2] = v123;
              v31[3] = v124;
              v196.origin.x = x;
              v196.origin.y = y;
              v196.size.width = width;
              v196.size.height = height;
              v125 = CGRectGetHeight(v196);
              swift_beginAccess();
              *(v118 + 16) = v125 + *(v118 + 16);
              sub_1A42D35F8(v31, v28);
              v126 = v167;
              swift_beginAccess();
              v57 = *(v126 + 16);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              *(v126 + 16) = v57;
              v36 = v156;
              if (isUniquelyReferenced_nonNull_native)
              {
                goto LABEL_47;
              }

              goto LABEL_60;
            }

            __break(1u);
            goto LABEL_59;
          }

          v48 = v155;
        }

        else
        {

          (*(v170 + 56))(v39, 1, 1, v169);
        }

        sub_1A3C68850(v39, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
      }
    }
  }

  v58 = sub_1A5246F04();
  v59 = sub_1A524D244();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_1A3C1C000, v58, v59, "failed to capture tile", v60, 2u);
    MEMORY[0x1A590EEC0](v60, -1, -1);
  }

  a2 = v48;
  v36 = v156;
  while (1)
  {
    swift_beginAccess();
    *(a7 + 16) = 1;
LABEL_14:
    [a1 bounds];
    v182.origin.x = UIEdgeInsetsInsetRect(v61, v62, v63, v64, a9, a10);
    v65 = v182.origin.x;
    v66 = v182.origin.y;
    v67 = v182.size.width;
    v68 = v182.size.height;
    v47 = &selRef_attemptRecoveryFromError_optionIndex_delegate_didRecoverSelector_contextInfo_;
    if (CGRectGetHeight(v182) <= 0.0)
    {
      goto LABEL_22;
    }

    v69 = [a1 snapshotViewAfterScreenUpdates_];
    if (!v69)
    {
      goto LABEL_22;
    }

    v70 = v69;
    v177.width = v67;
    v177.height = v68;
    UIGraphicsBeginImageContextWithOptions(v177, 0, 0.0);
    [v70 &selRef_bufferingReasons];
    v184 = CGRectOffset(v183, -v65, -v66);
    [v70 drawViewHierarchyInRect:1 afterScreenUpdates:{v184.origin.x, v184.origin.y, v184.size.width, v184.size.height}];
    v71 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    if (!v71)
    {
      goto LABEL_22;
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {

      (*(v170 + 56))(v36, 1, 1, v169);
      goto LABEL_21;
    }

    v73 = Strong;
    v155 = a2;
    v74 = v168;
    swift_beginAccess();
    sub_1A42D2AC8(v71, *(v74 + 16), v36);

    v75 = v169;
    a7 = v170;
    if ((*(v170 + 48))(v36, 1, v169) == 1)
    {

LABEL_21:
      sub_1A3C68850(v36, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
LABEL_22:
      v76 = sub_1A5246F04();
      v77 = sub_1A524D244();
      if (os_log_type_enabled(v76, v77))
      {
        v78 = swift_slowAlloc();
        *v78 = 0;
        _os_log_impl(&dword_1A3C1C000, v76, v77, "failed to capture tile", v78, 2u);
        MEMORY[0x1A590EEC0](v78, -1, -1);
      }

      goto LABEL_25;
    }

    v153 = a11;
    v95 = v166;
    (*(a7 + 32))(v166, v36, v75);
    swift_beginAccess();
    v96 = *(v74 + 16);
    v97 = __OFADD__(v96, 1);
    v98 = v96 + 1;
    if (v97)
    {
      __break(1u);
LABEL_57:
      v73 = sub_1A42D365C(0, v73[2] + 1, 1, v73);
      *(v167 + 16) = v73;
      goto LABEL_35;
    }

    *(v74 + 16) = v98;
    v99 = v163;
    swift_beginAccess();
    v100 = *(v99 + 16);
    v189.origin.x = v65;
    v189.origin.y = v66;
    v189.size.width = v67;
    v189.size.height = v68;
    v101 = v100 - CGRectGetMinY(v189);
    v190.origin.x = v65;
    v190.origin.y = v66;
    v190.size.width = v67;
    v190.size.height = v68;
    v191 = CGRectOffset(v190, 0.0, v101);
    v102 = v191.origin.x;
    v103 = v191.origin.y;
    v104 = v191.size.width;
    v105 = v191.size.height;
    v106 = *(a7 + 16);
    a7 = v159;
    v106(&v159[*(v162 + 20)], v95, v75);
    *a7 = v102;
    *(a7 + 8) = v103;
    *(a7 + 16) = v104;
    *(a7 + 24) = v105;
    v192.origin.x = v65;
    v192.origin.y = v66;
    v192.size.width = v67;
    v192.size.height = v68;
    v107 = CGRectGetHeight(v192);
    swift_beginAccess();
    *(v99 + 16) = v107 + *(v99 + 16);
    sub_1A42D35F8(a7, v165);
    v108 = v167;
    swift_beginAccess();
    v73 = *(v108 + 16);
    v109 = swift_isUniquelyReferenced_nonNull_native();
    *(v108 + 16) = v73;
    if ((v109 & 1) == 0)
    {
      goto LABEL_57;
    }

LABEL_35:
    v111 = v73[2];
    v110 = v73[3];
    a11 = v153;
    v28 = v166;
    if (v111 >= v110 >> 1)
    {
      v73 = sub_1A42D365C(v110 > 1, v111 + 1, 1, v73);
    }

    v73[2] = v111 + 1;
    sub_1A42D3BC8(v165, v73 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v111);
    *(v167 + 16) = v73;

    sub_1A42D3858(a7, type metadata accessor for PXGViewFullPageSnapshotProvider.Tile);
    (*(v170 + 8))(v28, v169);
LABEL_25:
    v79 = v171;
    v185.origin.x = v65;
    v185.origin.y = v66;
    v185.size.width = v67;
    v185.size.height = v68;
    v80 = CGRectGetHeight(v185);
    [v79 contentOffset];
    v82 = v81;
    v84 = v83;
    [v79 px:3 contentOffsetForEdge:?];
    if (v85 > v84)
    {
      [v79 setContentOffset_];
      [a13 clearLastVisibleAreaAnchoringInformation];
      v86 = &selRef_next;
      return [a12 *v86];
    }

    [a1 &selRef_bufferingReasons];
    memset(&slice, 0, sizeof(slice));
    memset(&remainder, 0, sizeof(remainder));
    CGRectDivide(v186, &slice, &remainder, a11, CGRectMaxYEdge);
    v87 = slice.origin.x;
    v88 = slice.origin.y;
    a10 = slice.size.width;
    a9 = slice.size.height;
    if (CGRectGetHeight(slice) <= 0.0)
    {
      goto LABEL_40;
    }

    v89 = [a1 snapshotViewAfterScreenUpdates_];
    if (!v89)
    {
      goto LABEL_40;
    }

    v90 = v89;
    v178.width = a10;
    v178.height = a9;
    UIGraphicsBeginImageContextWithOptions(v178, 0, 0.0);
    [v90 &selRef_bufferingReasons];
    v188 = CGRectOffset(v187, -v87, -v88);
    [v90 drawViewHierarchyInRect:1 afterScreenUpdates:{v188.origin.x, v188.origin.y, v188.size.width, v188.size.height}];
    v36 = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    if (!v36)
    {
      goto LABEL_40;
    }

    swift_beginAccess();
    v91 = swift_weakLoadStrong();
    if (!v91)
    {

      v93 = v161;
      (*(v170 + 56))(v161, 1, 1, v169);
      goto LABEL_39;
    }

    v57 = v91;
    v92 = v168;
    swift_beginAccess();
    v93 = v161;
    sub_1A42D2AC8(v36, *(v92 + 16), v161);

    v31 = v169;
    v94 = v170;
    if ((*(v170 + 48))(v93, 1, v169) == 1)
    {

LABEL_39:
      sub_1A3C68850(v93, &unk_1EB12B250, MEMORY[0x1E6968FB0]);
LABEL_40:
      v112 = sub_1A5246F04();
      v113 = sub_1A524D244();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        *v114 = 0;
        _os_log_impl(&dword_1A3C1C000, v112, v113, "failed to capture tile", v114, 2u);
        MEMORY[0x1A590EEC0](v114, -1, -1);
      }

      goto LABEL_43;
    }

    v131 = v93;
    a1 = v160;
    (*(v94 + 32))(v160, v131, v31);
    swift_beginAccess();
    v132 = *(v92 + 16);
    v97 = __OFADD__(v132, 1);
    v133 = v132 + 1;
    if (!v97)
    {
      break;
    }

LABEL_59:
    __break(1u);
LABEL_60:
    v57 = sub_1A42D365C(0, *(v57 + 16) + 1, 1, v57);
    *(v167 + 16) = v57;
LABEL_47:
    a2 = v155;
    a11 = v153;
    v129 = *(v57 + 16);
    v128 = *(v57 + 24);
    v130 = v129 + 1;
    if (v129 >= v128 >> 1)
    {
      v155 = v129 + 1;
      v149 = sub_1A42D365C(v128 > 1, v129 + 1, 1, v57);
      v130 = v155;
      v57 = v149;
    }

    *(v57 + 16) = v130;
    sub_1A42D3BC8(v28, v57 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v129);
    *(v167 + 16) = v57;

    sub_1A42D3858(v31, type metadata accessor for PXGViewFullPageSnapshotProvider.Tile);
    (*(v170 + 8))(v47, v169);
  }

  *(v92 + 16) = v133;
  v134 = v163;
  swift_beginAccess();
  v135 = *(v134 + 16);
  v197.origin.x = v87;
  v197.origin.y = v88;
  v197.size.width = a10;
  v197.size.height = a9;
  v136 = v135 - CGRectGetMinY(v197);
  v198.origin.x = v87;
  v198.origin.y = v88;
  v198.size.width = a10;
  v198.size.height = a9;
  v199 = CGRectOffset(v198, 0.0, v136);
  v137 = v199.origin.x;
  v138 = v199.origin.y;
  v139 = v199.size.width;
  v140 = v199.size.height;
  v141 = v158;
  (*(v94 + 16))(v158 + *(v162 + 20), a1, v31);
  *v141 = v137;
  v141[1] = v138;
  v141[2] = v139;
  v141[3] = v140;
  v200.origin.x = v87;
  v200.origin.y = v88;
  v200.size.width = a10;
  v200.size.height = a9;
  v142 = CGRectGetHeight(v200);
  swift_beginAccess();
  *(v134 + 16) = v142 + *(v134 + 16);
  v143 = v157;
  sub_1A42D35F8(v141, v157);
  v144 = v167;
  swift_beginAccess();
  v145 = *(v144 + 16);
  v146 = swift_isUniquelyReferenced_nonNull_native();
  *(v144 + 16) = v145;
  if ((v146 & 1) == 0)
  {
    v145 = sub_1A42D365C(0, v145[2] + 1, 1, v145);
    *(v167 + 16) = v145;
  }

  v148 = v145[2];
  v147 = v145[3];
  if (v148 >= v147 >> 1)
  {
    v145 = sub_1A42D365C(v147 > 1, v148 + 1, 1, v145);
  }

  v145[2] = v148 + 1;
  sub_1A42D3BC8(v143, v145 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v148);
  *(v167 + 16) = v145;

  sub_1A42D3858(v141, type metadata accessor for PXGViewFullPageSnapshotProvider.Tile);
  (*(v170 + 8))(v160, v169);
LABEL_43:
  v86 = &selRef_stop;
  return [a12 *v86];
}

uint64_t sub_1A42D2AC8@<X0>(UIImage *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v28 = a3;
  v4 = sub_1A5246F24();
  v25[0] = *(v4 - 8);
  v25[1] = v4;
  MEMORY[0x1EEE9AC00](v4);
  v25[2] = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A5240CB4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A5240E64();
  v26 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = 0;
  v31 = 0xE000000000000000;
  sub_1A524E404();

  v30 = 0xD000000000000010;
  v31 = 0x80000001A53D08F0;
  sub_1A52411C4();
  sub_1A42D3B1C(&qword_1EB126020, MEMORY[0x1E69695A8]);
  v13 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v13);

  MEMORY[0x1A5907B60](45, 0xE100000000000000);
  v29 = a2;
  v14 = sub_1A524EA44();
  MEMORY[0x1A5907B60](v14);

  (*(v7 + 104))(v9, *MEMORY[0x1E6968F68], v6);
  sub_1A3D5F9DC();
  sub_1A5240E44();
  (*(v7 + 8))(v9, v6);

  v15 = UIImageJPEGRepresentation(v27, 1.0);
  v16 = v26;
  if (v15)
  {
    v17 = v15;
    v18 = sub_1A5240EA4();
    v20 = v19;

    sub_1A5240EB4();
    sub_1A3C59280(v18, v20);
    v21 = v28;
    (*(v16 + 32))(v28, v12, v10);
    v22 = v21;
    v23 = 0;
  }

  else
  {
    (*(v26 + 8))(v12, v10);
    v23 = 1;
    v22 = v28;
  }

  return (*(v16 + 56))(v22, v23, 1, v10);
}

void sub_1A42D2FE8(uint64_t a1)
{
  v2 = v1;
  v40[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A5246F24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PXGViewFullPageSnapshotProvider.Tile(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a1 + 16);
  if (v12)
  {
    v13 = objc_opt_self();
    v14 = *(v8 + 20);
    v15 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v38 = *(v9 + 72);
    v39 = v14;
    v37 = (v5 + 8);
    *&v16 = 138412290;
    v34 = v16;
    v35 = v13;
    v36 = v7;
    do
    {
      sub_1A42D35F8(v15, v11);
      v18 = [v13 defaultManager];
      v19 = sub_1A5240D44();
      sub_1A42D3858(v11, type metadata accessor for PXGViewFullPageSnapshotProvider.Tile);
      v40[0] = 0;
      v20 = [v18 removeItemAtURL:v19 error:v40];

      if (v20)
      {
        v17 = v40[0];
      }

      else
      {
        v21 = v40[0];
        v22 = sub_1A5240B84();

        swift_willThrow();
        sub_1A42D0BA0(v7);
        v23 = v22;
        v24 = sub_1A5246F04();
        v25 = sub_1A524D244();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = v4;
          v28 = v2;
          v29 = swift_slowAlloc();
          *v26 = v34;
          v30 = v22;
          v31 = _swift_stdlib_bridgeErrorToNSError();
          *(v26 + 4) = v31;
          *v29 = v31;
          _os_log_impl(&dword_1A3C1C000, v24, v25, "failed to clean up tile image: %@", v26, 0xCu);
          sub_1A42D3858(v29, sub_1A3D3F118);
          v32 = v29;
          v2 = v28;
          v4 = v27;
          v7 = v36;
          MEMORY[0x1A590EEC0](v32, -1, -1);
          v33 = v26;
          v13 = v35;
          MEMORY[0x1A590EEC0](v33, -1, -1);
        }

        (*v37)(v7, v4);
      }

      v15 += v38;
      --v12;
    }

    while (v12);
  }
}

uint64_t sub_1A42D337C()
{
  sub_1A3C68850(v0 + OBJC_IVAR____TtC12PhotosUICoreP33_08015FDD82BBF5ACD0B1280B656A5A2C31PXGViewFullPageSnapshotProvider____lazy_storage___logger, &qword_1EB128BF8, MEMORY[0x1E69E9420]);
  v1 = OBJC_IVAR____TtC12PhotosUICoreP33_08015FDD82BBF5ACD0B1280B656A5A2C31PXGViewFullPageSnapshotProvider_uuid;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICoreP33_08015FDD82BBF5ACD0B1280B656A5A2C31PXGViewFullPageSnapshotProvider_temporaryDirectoryURL;
  v4 = sub_1A5240E64();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_1A42D3494()
{
  sub_1A42D3B64(319, &qword_1EB128BF8, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1A52411C4();
    if (v1 <= 0x3F)
    {
      sub_1A5240E64();
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_1A42D35F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PXGViewFullPageSnapshotProvider.Tile(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

size_t sub_1A42D365C(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A42D3B64(0, &qword_1EB137650, type metadata accessor for PXGViewFullPageSnapshotProvider.Tile, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for PXGViewFullPageSnapshotProvider.Tile(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PXGViewFullPageSnapshotProvider.Tile(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1A42D3858(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A42D38B8(uint64_t a1)
{
  v3 = *(sub_1A5246F24() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1A42D13A0(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + 16), *(v1 + v8), *(v1 + v8 + 8), *(v1 + v8 + 16), *(v1 + v8 + 24), *(v1 + ((v8 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v8 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1A42D39A4()
{
  v1 = *(v0 + 32);
  [*(v0 + 16) setShowsVerticalScrollIndicator_];
  [v1 setIsBeingFullPageSnapshotted_];
  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A42D3A38()
{
  v1 = *(sub_1A5246F24() - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1A42D19D8(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *(v0 + v3), *(v0 + v4), *(v0 + v5), *(v0 + ((v6 + 39) & 0xFFFFFFFFFFFFFFF8)), *(v0 + v6), *(v0 + v6 + 8), *(v0 + v6 + 16), *(v0 + ((((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((((((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1A42D3B1C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A42D3B64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A42D3BC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PXGViewFullPageSnapshotProvider.Tile(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A42D3C2C(uint64_t a1, uint64_t a2)
{
  sub_1A42D3B64(0, &qword_1EB128BF8, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A42D3CC0(uint64_t a1, uint64_t a2)
{
  sub_1A42D3B64(0, &qword_1EB128BF8, MEMORY[0x1E69E9420], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1A42D3D54(uint64_t a1, char a2)
{
  v3 = *(v2 + 32);
  if (a1)
  {
    sub_1A42D407C(a1, *(v2 + 24));
    sub_1A42D2FE8(a1);
    v3(1, 0);
  }

  else
  {
    if (a2)
    {
      v5 = 0;
    }

    else
    {
      sub_1A42D3E0C();
      v5 = swift_allocError();
    }

    v3(0, v5);
  }
}

unint64_t sub_1A42D3E0C()
{
  result = qword_1EB1B6058;
  if (!qword_1EB1B6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B6058);
  }

  return result;
}

size_t sub_1A42D3E60(size_t a1, int64_t a2, char a3)
{
  result = sub_1A42D3E80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1A42D3E80(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A42D3B64(0, &qword_1EB137650, type metadata accessor for PXGViewFullPageSnapshotProvider.Tile, MEMORY[0x1E69E6F90]);
  v10 = *(type metadata accessor for PXGViewFullPageSnapshotProvider.Tile(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for PXGViewFullPageSnapshotProvider.Tile(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void sub_1A42D407C(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for PXGViewFullPageSnapshotProvider.Tile(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  MEMORY[0x1EEE9AC00](v6);
  v15[14] = v15 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v15[12] = v9;
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  if (*(a1 + 16))
  {
    v17 = a2;
    [a2 defaultPageSize];
    v13 = v12;
    v14 = *(v5 + 80);
    v15[7] = ~v14;
    v15[13] = v14;
    v16 = (v14 + 32) & ~v14;
    CGRectGetWidth(*(a1 + v16));
    v18 = v13;
    PXAffineTransformMakeFromRects();
  }
}

void sub_1A42D4874(void *a1)
{
  type metadata accessor for PXGViewFullPageSnapshotProvider.Tile(0);
  sub_1A5240E04();
  v2 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
  v3 = sub_1A524C634();

  v4 = [v2 initWithContentsOfFile_];

  [a1 setImage_];
}

void sub_1A42D499C()
{
  type metadata accessor for CGRect(319);
  if (v0 <= 0x3F)
  {
    sub_1A5240E64();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A42D4A24()
{
  result = qword_1EB1B6070[0];
  if (!qword_1EB1B6070[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B6070);
  }

  return result;
}

uint64_t sub_1A42D4A90(void *a1)
{
  v2 = swift_allocObject();
  sub_1A52411B4();
  *(v2 + OBJC_IVAR____TtC12PhotosUICore27PXMapKitCompleterSuggestion_location) = 0;
  v3 = [a1 title];
  v4 = sub_1A524C674();
  v6 = v5;

  v7 = (v2 + OBJC_IVAR____TtC12PhotosUICore27PXMapKitCompleterSuggestion_title);
  *v7 = v4;
  v7[1] = v6;
  v8 = [a1 subtitle];
  v9 = sub_1A524C674();
  v11 = v10;

  v12 = (v2 + OBJC_IVAR____TtC12PhotosUICore27PXMapKitCompleterSuggestion_subtitle);
  *v12 = v9;
  v12[1] = v11;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore27PXMapKitCompleterSuggestion_completion) = a1;
  return v2;
}

void sub_1A42D4B78(void (*a1)(void), uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC12PhotosUICore27PXMapKitCompleterSuggestion_location);
  if (v5)
  {
    v10 = v5;
    a1();
  }

  else
  {
    v6 = [objc_allocWithZone(MEMORY[0x1E696F260]) initWithCompletion_];
    v7 = [objc_allocWithZone(MEMORY[0x1E696F248]) initWithRequest_];
    v8 = swift_allocObject();
    v8[2] = v2;
    v8[3] = a1;
    v8[4] = a2;
    aBlock[4] = sub_1A42D4D10;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A3D54680;
    aBlock[3] = &block_descriptor_150;
    v9 = _Block_copy(aBlock);

    [v7 startWithCompletionHandler_];
    _Block_release(v9);
  }
}

void sub_1A42D4D10(void *a1, uint64_t a2)
{
  if (!a1)
  {
LABEL_12:
    v13 = sub_1A524D244();
    v14 = sub_1A475874C();
    swift_beginAccess();
    v15 = *v14;
    if (os_log_type_enabled(v15, v13))
    {
      v16 = v15;
      v17 = swift_slowAlloc();
      swift_slowAlloc();
      *v17 = 136315138;
      if (a2)
      {
        swift_getErrorValue();
        sub_1A524EBE4();
      }

      sub_1A3C2EF94();
    }

    return;
  }

  v5 = *(v2 + 16);
  v4 = *(v2 + 24);
  v18 = a1;
  v6 = [v18 mapItems];
  sub_1A42D5668();
  v7 = sub_1A524CA34();

  if (v7 >> 62)
  {
    if (sub_1A524E2B4())
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    goto LABEL_12;
  }

LABEL_4:
  if ((v7 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1A59097F0](0, v7);
  }

  else
  {
    if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v8 = *(v7 + 32);
  }

  v9 = v8;

  v10 = [v9 location];
  v11 = *(v5 + OBJC_IVAR____TtC12PhotosUICore27PXMapKitCompleterSuggestion_location);
  *(v5 + OBJC_IVAR____TtC12PhotosUICore27PXMapKitCompleterSuggestion_location) = v10;
  v12 = v10;

  v4(v12);
}

uint64_t sub_1A42D4F8C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore27PXMapKitCompleterSuggestion_uuid;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A42D5148(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore29PXMapKitLocalSearchSuggestion_uuid;
  sub_1A52411B4();
  v4 = [a1 name];
  if (v4)
  {
    v5 = v4;
    v6 = sub_1A524C674();
    v8 = v7;

    v9 = (v1 + OBJC_IVAR____TtC12PhotosUICore29PXMapKitLocalSearchSuggestion_title);
    *v9 = v6;
    v9[1] = v8;
    v10 = (v1 + OBJC_IVAR____TtC12PhotosUICore29PXMapKitLocalSearchSuggestion_subtitle);
    *v10 = 0;
    v10[1] = 0;
    v11 = [a1 location];

    *(v1 + OBJC_IVAR____TtC12PhotosUICore29PXMapKitLocalSearchSuggestion_location) = v11;
  }

  else
  {

    v12 = sub_1A52411C4();
    (*(*(v12 - 8) + 8))(v1 + v3, v12);
    type metadata accessor for PXMapKitLocalSearchSuggestion(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v1;
}

uint64_t sub_1A42D52E4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore29PXMapKitLocalSearchSuggestion_uuid;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A42D53C4@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_1A52411C4();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1A42D54F4()
{
  result = sub_1A52411C4();
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

uint64_t sub_1A42D55B8()
{
  result = sub_1A52411C4();
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

unint64_t sub_1A42D5668()
{
  result = qword_1EB12C690;
  if (!qword_1EB12C690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB12C690);
  }

  return result;
}

id StoryInactiveImageAdjustment.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StoryInactiveImageAdjustment.init()()
{
  sub_1A3C52C70(0, &qword_1EB1376C0);
  v1 = [swift_getObjCClassFromMetadata() defaultOriginalStyle];
  v2 = [v1 inactiveRecipeIdentifier];

  if (!v2)
  {
    sub_1A524C674();
    v2 = sub_1A524C634();
  }

  v3 = [objc_opt_self() recipeForIdentifier_];

  *&v0[OBJC_IVAR___PXStoryInactiveImageAdjustment_recipe] = v3;
  v5.receiver = v0;
  v5.super_class = type metadata accessor for StoryInactiveImageAdjustment();
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1A42D5880()
{
  type metadata accessor for StoryInactiveImageAdjustment();
  result = swift_dynamicCastClass();
  if (result)
  {
    sub_1A3C52C70(0, &qword_1EB12B160);
    swift_unknownObjectRetain();
    v1 = sub_1A524DBF4();
    swift_unknownObjectRelease();
    return v1 & 1;
  }

  return result;
}

id sub_1A42D59C0@<X0>(void *a1@<X8>)
{
  a1[3] = type metadata accessor for StoryInactiveImageAdjustment();
  *a1 = v3;

  return v3;
}

id StoryInactiveImageAdjustment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for StoryInactiveImageAdjustment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A42D5A54()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB15B448);
  __swift_project_value_buffer(v0, qword_1EB15B448);
  sub_1A5246EF4();
}

id sub_1A42D5AB8(void *a1)
{
  v2 = *(v1 + OBJC_IVAR___PXStoryInactiveImageAdjustment_recipe);
  if (v2)
  {
    v3 = objc_allocWithZone(MEMORY[0x1E69BDEC8]);
    v4 = v2;
    v5 = [v3 initWithRecipe_];
    [v5 setInputBackgroundImage_];
    v6 = [v5 outputBackgroundImage];
    if (v6)
    {
      v7 = v6;

      return v7;
    }

    if (qword_1EB15B440 != -1)
    {
      swift_once();
    }

    v12 = sub_1A5246F24();
    __swift_project_value_buffer(v12, qword_1EB15B448);
    v13 = sub_1A5246F04();
    v14 = sub_1A524D244();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1A3C1C000, v13, v14, "Failed to obtain output image from inactive filter", v15, 2u);
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }
  }

  else
  {
    if (qword_1EB15B440 != -1)
    {
      swift_once();
    }

    v9 = sub_1A5246F24();
    __swift_project_value_buffer(v9, qword_1EB15B448);
    v4 = sub_1A5246F04();
    v10 = sub_1A524D244();
    if (os_log_type_enabled(v4, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1A3C1C000, v4, v10, "Failed to obtain recipe for inactive filter", v11, 2u);
      MEMORY[0x1A590EEC0](v11, -1, -1);
    }
  }

  return a1;
}

id sub_1A42D6008()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LemonadeCollectionCustomizationAlbumsFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A42D603C()
{
  sub_1A42D6224(0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A42D62AC(0, &qword_1EB137738, type metadata accessor for LemonadeCollectionCustomizationViewModel);
  sub_1A42D6244();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A42D6244()
{
  if (!qword_1EB13EBB0)
  {
    sub_1A3C52C70(255, &qword_1EB126AC0);
    v0 = type metadata accessor for LemonadeCollectionCustomizationAlbumsModel();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13EBB0);
    }
  }
}

void sub_1A42D62AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A42D6244();
    v7 = v6;
    v8 = sub_1A42D63DC(&qword_1EB137730, sub_1A42D6244);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A42D6348()
{
  if (!qword_1EB137740)
  {
    sub_1A42D6224(255);
    sub_1A42D63DC(&qword_1EB13EBD0, sub_1A42D6224);
    v0 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137740);
    }
  }
}

uint64_t sub_1A42D63DC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A42D6424(uint64_t a1, uint64_t a2)
{
  sub_1A42D6224(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A42D6488(uint64_t a1)
{
  sub_1A42D6224(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A42D64E4()
{
  swift_getKeyPath();
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415D4();

  return swift_unknownObjectRetain();
}

uint64_t sub_1A42D6598@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415D4();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__statusProviderObservation);
  return swift_unknownObjectRetain();
}

uint64_t sub_1A42D6650()
{
  swift_getKeyPath();
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415C4();
}

uint64_t sub_1A42D6740()
{
  swift_getKeyPath();
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415D4();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__itemVersion);
}

uint64_t sub_1A42D67E8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415D4();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__itemVersion);
  return result;
}

uint64_t sub_1A42D68C0(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__itemVersion) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
    sub_1A52415C4();
  }

  return result;
}

void sub_1A42D6A10()
{
  swift_getObjectType();
  v1 = OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager_presentationContext;
  type metadata accessor for CloudQuotaNotificationPresentationContext();
  *(v0 + v1) = sub_1A465F7E0();
  v2 = (v0 + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__statusProviderObservation);
  *v2 = 0;
  v2[1] = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__itemVersion) = 0;
  sub_1A5246194();
}

uint64_t sub_1A42D6D08(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__changeDetailsRepository;
  swift_beginAccess();
  if (*(v1 + v3) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
    sub_1A52415C4();
  }
}

uint64_t sub_1A42D6E38(char a1)
{
  v2 = a1 & 1;
  v3 = *(v1 + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__canShowInformationView);
  if (v3 == v2)
  {
    *(v1 + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__canShowInformationView) = v2;

    return sub_1A42D77B0(v3);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
    sub_1A52415C4();
  }
}

void sub_1A42D6F74()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = [*(Strong + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager_statusProvider) status];
    v3 = PXCloudQuotaCanShowInformationView(v2);

    v4 = v1[OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__canShowInformationView];
    if (v3 == v4)
    {
      v1[OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__canShowInformationView] = v3;
      sub_1A42D77B0(v4);
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
      sub_1A52415C4();
    }
  }
}

uint64_t sub_1A42D7110()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for CloudQuotaNotificationItem();
  v39 = *(v3 - 8);
  v4 = *(v39 + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30[-v6];
  v8 = sub_1A5246F24();
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v42 = v0;
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415D4();

  if (v0[OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__canShowInformationView] != 1 || (v11 = *&v0[OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager_helper], ![v11 hasAnyInformationViews]))
  {
    swift_getKeyPath();
    v42 = v0;
    sub_1A52415D4();

    v22 = OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__itemList;
    swift_beginAccess();
    sub_1A42D8200(&v0[v22], &v42);
    sub_1A3D37A9C();
    sub_1A5246484();
  }

  v38 = ObjectType;
  v36 = &v30[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v42 = v0;
  sub_1A52415D4();

  v42 = v0;
  swift_getKeyPath();
  sub_1A52415F4();

  v12 = OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__itemVersion;
  ++*&v0[OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__itemVersion];
  v42 = v0;
  swift_getKeyPath();
  sub_1A52415E4();

  v13 = [v11 informationView];
  v37 = v7;
  if (v13 || (v13 = [v11 premiumInformationView]) != 0)
  {
    v35 = v13;
    v14 = sub_1A45350E8();
    (*(v40 + 16))(v10, v14, v41);
    v15 = v0;
    v16 = sub_1A5246F04();
    v17 = sub_1A524D264();
    v18 = os_log_type_enabled(v16, v17);
    v34 = v12;
    if (v18)
    {
      v19 = swift_slowAlloc();
      v32 = v11;
      v20 = v19;
      *v19 = 134218240;
      swift_getKeyPath();
      v33 = v10;
      v42 = v15;
      v31 = v17;
      sub_1A52415D4();

      v10 = v33;
      *(v20 + 1) = *&v1[v12];

      *(v20 + 6) = 1024;
      v21 = [v32 dismissibleOffers];

      *(v20 + 14) = v21;
      _os_log_impl(&dword_1A3C1C000, v16, v31, "Publishing cloud quota notification banner. Version: %ld, dismissible: %{BOOL}d", v20, 0x12u);
      MEMORY[0x1A590EEC0](v20, -1, -1);
    }

    else
    {

      v16 = v15;
    }

    (*(v40 + 8))(v10, v41);
    v23 = *(&v15->isa + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager_presentationContext);
    swift_getKeyPath();
    v42 = v15;
    v24 = v35;

    sub_1A52415D4();

    v25 = v37;
    sub_1A441C5EC(v24, v23, *&v1[v34], v37);
    v42 = v15;
    v26 = v36;
    sub_1A42D8EA8(v25, v36);
    v27 = (*(v39 + 80) + 16) & ~*(v39 + 80);
    v28 = swift_allocObject();
    sub_1A42D8F0C(v26, v28 + v27);
    sub_1A42D8440(&qword_1EB137810, type metadata accessor for CloudQuotaNotificationItemListManager);
    sub_1A5245F44();
  }

  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A42D77B0(char a1)
{
  v2 = a1 & 1;
  v3 = sub_1A5246F24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v19 = v1;
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415D4();

  v8 = OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__canShowInformationView;
  if (*(&v1->isa + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__canShowInformationView) != v2)
  {
    v9 = sub_1A45350E8();
    (*(v4 + 16))(v6, v9, v3);
    v18 = v1;
    v10 = sub_1A5246F04();
    v11 = sub_1A524D264();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v17 = v3;
      v13 = v12;
      *v12 = 67109120;
      swift_getKeyPath();
      v16 = v4;
      v19 = v18;
      v14 = v18;
      sub_1A52415D4();
      v4 = v16;

      *(v13 + 1) = *(&v1->isa + v8);

      _os_log_impl(&dword_1A3C1C000, v10, v11, "Will allow quota notifications: %{BOOL}d", v13, 8u);
      v15 = v13;
      v3 = v17;
      MEMORY[0x1A590EEC0](v15, -1, -1);
    }

    else
    {

      v10 = v18;
    }

    (*(v4 + 8))(v6, v3);
    return sub_1A42D7110();
  }

  return result;
}

uint64_t sub_1A42D7A20()
{
  swift_getKeyPath();
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415D4();

  return *(v0 + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__canShowInformationView);
}

uint64_t sub_1A42D7AC8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415D4();

  *a2 = *(v3 + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__canShowInformationView);
  return result;
}

uint64_t sub_1A42D7BA0@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415D4();

  v3 = OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__itemList;
  swift_beginAccess();
  return sub_1A42D8200(v5 + v3, a1);
}

uint64_t sub_1A42D7CC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__itemList;
  swift_beginAccess();
  return sub_1A42D8200(v3 + v4, a2);
}

uint64_t sub_1A42D7D90(uint64_t a1)
{
  sub_1A42D8200(a1, v2);
  swift_getKeyPath();
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415C4();

  return sub_1A3D37AF0(v2);
}

uint64_t sub_1A42D7FB4()
{
  swift_getKeyPath();
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415D4();

  swift_beginAccess();
}

uint64_t sub_1A42D8074@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A42D8440(&qword_1EB129510, type metadata accessor for CloudQuotaNotificationItemListManager);
  sub_1A52415D4();

  v4 = OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__changeDetailsRepository;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1A42D8168()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__changeDetailsRepository;
  swift_beginAccess();
  *(v2 + v3) = v1;
}

void sub_1A42D8374()
{
  swift_allocObject();
  swift_getKeyPath();
  sub_1A42D8440(&qword_1EB137790, type metadata accessor for CloudQuotaNotificationItemListManager.Mutator);
  sub_1A52456D4();
}

uint64_t sub_1A42D8440(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A42D8488()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52456A4();
}

void sub_1A42D85A0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A42D8200(a1, &v2);

  sub_1A52456B4();
}

void sub_1A42D8620(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  sub_1A5245694();
}

uint64_t sub_1A42D86C4()
{
  result = qword_1EB137798;
  if (!qword_1EB137798)
  {
    type metadata accessor for CloudQuotaNotificationItemListManager.Mutator(255);
    sub_1A42D8440(&qword_1EB137790, type metadata accessor for CloudQuotaNotificationItemListManager.Mutator);
    sub_1A52456C4();
  }

  return result;
}

uint64_t sub_1A42D8760()
{
  v1 = OBJC_IVAR____TtCC12PhotosUICore37CloudQuotaNotificationItemListManager7Mutator__itemList;
  v2 = sub_1A42D86C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_1A42D89A0()
{
  type metadata accessor for CloudQuotaNotificationItemListManager.Mutator(0);
  swift_allocObject();
  swift_getKeyPath();
  sub_1A42D8440(&qword_1EB137790, type metadata accessor for CloudQuotaNotificationItemListManager.Mutator);
  sub_1A52456D4();
}

void sub_1A42D8B0C()
{
  sub_1A42D8440(&qword_1EB137810, type metadata accessor for CloudQuotaNotificationItemListManager);

  sub_1A5245F44();
}

id sub_1A42D8BD8@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager_observable);
  *a1 = v2;
  return v2;
}

void sub_1A42D8C38()
{
  sub_1A42D8440(&unk_1EB129520, type metadata accessor for CloudQuotaNotificationItemListManager);

  sub_1A5245C54();
}

uint64_t sub_1A42D8CC4()
{
  result = sub_1A5241614();
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

uint64_t sub_1A42D8DAC()
{
  result = sub_1A42D86C4();
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

uint64_t sub_1A42D8EA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudQuotaNotificationItem();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A42D8F0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CloudQuotaNotificationItem();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A42D8F70()
{
  v1 = *(*(type metadata accessor for CloudQuotaNotificationItem() - 8) + 80);
  sub_1A42D9070();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A52F8E10;
  sub_1A42D8EA8(v0 + ((v1 + 16) & ~v1), v2 + ((v1 + 32) & ~v1));
  sub_1A3DB7BA0(&v3);
}

void sub_1A42D9070()
{
  if (!qword_1EB137818)
  {
    type metadata accessor for CloudQuotaNotificationItem();
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137818);
    }
  }
}

uint64_t sub_1A42D90F4()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__statusProviderObservation) = *(v0 + 24);
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A42D9140()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__canShowInformationView);
  *(v1 + OBJC_IVAR____TtC12PhotosUICore37CloudQuotaNotificationItemListManager__canShowInformationView) = *(v0 + 24);
  return sub_1A42D77B0(v2);
}

id sub_1A42D91D0()
{
  v1 = v0;
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x1EEE9AC00](v2).n128_u64[0];
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [v1 socialGroups];
  if (v7)
  {
    v8 = v7;
    if ([v7 count] == 1)
    {
      v9 = [v8 firstObject];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 px_navigationURL];
        sub_1A5240DE4();

        v12 = [objc_opt_self() generalPasteboard];
        v13 = sub_1A5240D44();
        [v12 setURL_];

        [v1 completeUserInteractionTaskWithSuccess:1 error:0];
        return (*(v3 + 8))(v6, v2);
      }
    }
  }

  sub_1A524D244();
  v15 = *sub_1A3CAA3FC();
  sub_1A5246DF4();

  return [v1 completeUserInteractionTaskWithSuccess:0 error:0];
}

id sub_1A42D9558()
{
  sub_1A420A120();
  v0 = [swift_getObjCClassFromMetadata() sharedInstance];
  v1 = [v0 canShowInternalUI];

  return v1;
}

uint64_t sub_1A42D962C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x80))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A42D9688(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x88);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

void (*sub_1A42D96FC(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A42DC6E0;
}

void sub_1A42D97F0()
{
  sub_1A486B8CC();
  sub_1A42DC3CC();
  if (sub_1A524E114())
  {
    sub_1A42D98B4();
  }

  sub_1A486B8E4();
  v0 = sub_1A524E114();
  if (v0 & 1) != 0 || (sub_1A486B914(), v0 = sub_1A524E114(), (v0))
  {
    sub_1A42D99E0(v0);
  }
}

void sub_1A42D98B4()
{
  (*(*(*((*MEMORY[0x1E69E7D40] & *v0) + 0x58) + 8) + 16))(&v6, *((*MEMORY[0x1E69E7D40] & *v0) + 0x50));
  if (v6 == 6 || (LemonadeCurationKind.representativeSystemImageName.getter(), !v1))
  {
    v3 = 0;
  }

  else
  {
    v2 = sub_1A524C634();

    v4 = [objc_opt_self() systemImageNamed_];

    v3 = v4;
  }

  [v0 setImage_];
}

void sub_1A42D99E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v28[-v7];
  v9 = *((v4 & v3) + 0x68);
  v10 = objc_opt_self();
  (*(v6 + 16))(v8, &v2[v9], v5);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = v5;
  v13 = *((v4 & v3) + 0x58);
  *(v12 + 24) = v13;
  (*(v6 + 32))(v12 + v11, v8, v5);
  v33 = sub_1A42DC6E4;
  v34 = v12;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1A3D7692C;
  v32 = &block_descriptor_25_0;
  v14 = _Block_copy(&aBlock);

  v15 = [v10 menuWithDeferredConfiguration_];
  _Block_release(v14);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = v13;
  v17[4] = v16;
  v33 = sub_1A42DC4C0;
  v34 = v17;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1A3C2E0D0;
  v32 = &block_descriptor_34_3;
  v18 = _Block_copy(&aBlock);

  v19 = [v15 onOpen_];
  _Block_release(v18);

  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v21 = swift_allocObject();
  v21[2] = v5;
  v21[3] = v13;
  v21[4] = v20;
  v33 = sub_1A42DC4DC;
  v34 = v21;
  aBlock = MEMORY[0x1E69E9820];
  v30 = 1107296256;
  v31 = sub_1A3C2E0D0;
  v32 = &block_descriptor_41_0;
  v22 = _Block_copy(&aBlock);

  v23 = [v19 onClose_];
  _Block_release(v22);

  [v2 setMenu_];
  [v2 setPreferredMenuElementOrder_];
  v24 = *(v13 + 8);
  v25 = *((*(v24 + 32))(v5, v24) + 16);

  [v2 setHidden_];
  (*(v24 + 16))(&aBlock, v5, v24);
  if (aBlock == 6 || (v28[15] = aBlock, LemonadeCurationKind.accessibilityLabelString.getter(), !v26))
  {
    v27 = 0;
  }

  else
  {
    v27 = sub_1A524C634();
  }

  [v2 setAccessibilityLabel_];
}

uint64_t sub_1A42D9E68(char a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x80))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v9[3] = type metadata accessor for LemonadeCurationBarButtonItem();
    v9[0] = v1;
    v7 = *(v5 + 8);
    v8 = v1;
    v7(v9, a1 & 1, ObjectType, v5);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return result;
}

id LemonadeCurationBarButtonItem.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1A42DA030(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  sub_1A3D35A10(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);
  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x68)]);

  return swift_unknownObjectRelease();
}

uint64_t sub_1A42DA128(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v5 = objc_allocWithZone(v2);
  v6 = a2(a1);
  (*(*(*(v2 + 10) - 8) + 8))(a1);
  return v6;
}

uint64_t sub_1A42DA1C0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  v5 = *MEMORY[0x1E69E7D40];
  v6 = a2();
  (*(*(*((v5 & v4) + 0x50) - 8) + 8))(a1);
  return v6;
}

uint64_t sub_1A42DA250@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0xA0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A42DA2AC(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0xA8);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1A42DA394(uint64_t a1, uint64_t a2)
{
  v4 = v2 + *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  swift_beginAccess();
  *(v4 + 1) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A42DA41C(uint64_t *a1))(uint64_t, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x60);
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 1);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A42DA4DC;
}

uint64_t sub_1A42DA508()
{
  v1 = v0;
  sub_1A42DC564();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  v8 = MEMORY[0x1E69E7D40];
  sub_1A524DE54();
  v9 = sub_1A524DE34();
  if (!(*(*(v9 - 8) + 48))(v7, 1, v9))
  {
    v10 = *((*v8 & *v0) + 0x68);
    swift_beginAccess();
    v11 = *(v1 + v10);
    sub_1A524DD74();
  }

  sub_1A42DC5BC(v7, v4);
  sub_1A524DE64();
  return sub_1A4113CCC(v7);
}

void *sub_1A42DA67C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A42DA6E4(void *a1)
{
  v3 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x68);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1A42DA508();
}

uint64_t (*sub_1A42DA768(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A42DA7E8;
}

uint64_t sub_1A42DA7E8(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1A42DA508();
  }

  return result;
}

void sub_1A42DA81C(uint64_t *a1)
{
  v1 = *a1;
  v4 = *a1;
  v6 = *sub_1A486B8CC();
  sub_1A42DC3CC();
  if (sub_1A524E114())
  {
    v2 = sub_1A42DA91C();
    [v2 setNeedsUpdateOf_];
  }

  v5 = v1;
  v7 = *sub_1A486B8E4();
  if (sub_1A524E114() & 1) != 0 || (v5 = v1, v7 = *sub_1A486B914(), (sub_1A524E114()))
  {
    v3 = sub_1A42DA91C();
    [v3 setNeedsUpdateOf_];
  }
}

id sub_1A42DA91C()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x88);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
  }

  else
  {
    v4 = objc_allocWithZone(off_1E7721940);
    type metadata accessor for LemonadeCurationButton();
    v5 = v0;
    v6 = [v4 initWithTarget:sub_1A524EA94() needsUpdateSelector:sel_setNeedsLayout];

    swift_unknownObjectRelease();
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1A42DAA38()
{
  v1 = MEMORY[0x1E69E7D40];
  v5.receiver = v0;
  v5.super_class = type metadata accessor for LemonadeCurationButton();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v2 = sub_1A42DA91C();
  [v2 updateIfNeeded];

  v3 = *(v0 + *((*v1 & *v0) + 0x80));
  [v0 bounds];
  return [v3 setFrame_];
}

void sub_1A42DAB10(void *a1)
{
  v1 = a1;
  sub_1A42DAA38();
}

double sub_1A42DAB8C(void *a1)
{
  v1 = a1;
  sub_1A42DAB58();
  v3 = v2;

  return v3;
}

void sub_1A42DABE0()
{
  v0 = sub_1A42DA91C();
  [v0 setNeedsUpdateOf_];
}

void sub_1A42DAC2C()
{
  v1 = MEMORY[0x1E69E7D40];
  (*(*(*((*MEMORY[0x1E69E7D40] & *v0) + 0x58) + 8) + 16))(&v16, *((*MEMORY[0x1E69E7D40] & *v0) + 0x50));
  if (v16 != 6)
  {
    LemonadeCurationKind.representativeSystemImageName.getter();
    if (v2)
    {
      v3 = objc_opt_self();
      v4 = sub_1A524C634();
      v5 = [v3 px:v4 systemImageNamed:?];

      if (v5)
      {
        v6 = [objc_opt_self() configurationWithPointSize:6 weight:2 scale:17.0];
        v7 = [v5 imageWithSymbolConfiguration_];

        goto LABEL_7;
      }
    }
  }

  v7 = 0;
LABEL_7:
  v8 = *((*v1 & *v0) + 0x90);
  v15 = *(v0 + v8);
  *(v0 + v8) = v7;
  v9 = *(v0 + *((*v1 & *v0) + 0x90));
  v10 = v7;
  if (!v9)
  {
    if (!v15)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!v15 || (sub_1A3C52C70(0, &qword_1EB126630), v11 = v9, v12 = v15, v13 = sub_1A524DBF4(), v11, v12, (v13 & 1) == 0))
  {
LABEL_12:
    v14 = sub_1A42DA91C();
    [v14 setNeedsUpdateOf_];
  }

LABEL_13:
}

void sub_1A42DAE9C(void *a1)
{
  v1 = a1;
  sub_1A42DAC2C();
}

void sub_1A42DAEE4()
{
  v0 = sub_1A42DA91C();
  [v0 setNeedsUpdateOf_];
}

void sub_1A42DAF30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x50);
  v6 = *(v5 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](a1).n128_u64[0];
  v9 = &v30 - v8;
  v30 = *((v4 & v3) + 0x70);
  v10 = v30;
  v11 = *&v1[*((v4 & v3) + 0x80)];
  [v11 setImage:*&v1[*((v4 & v3) + 0x90)] forState:{0, v7}];
  [v11 setShowsMenuAsPrimaryAction_];
  v12 = objc_opt_self();
  (*(v6 + 16))(v9, &v2[v10], v5);
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v5;
  v15 = *((v4 & v3) + 0x58);
  *(v14 + 24) = v15;
  (*(v6 + 32))(v14 + v13, v9, v5);
  v36 = sub_1A42DC390;
  v37 = v14;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1A3D7692C;
  v35 = &block_descriptor_151;
  v16 = _Block_copy(&aBlock);

  v17 = [v12 menuWithDeferredConfiguration_];
  _Block_release(v16);
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = v5;
  v19[3] = v15;
  v19[4] = v18;
  v36 = sub_1A42DC394;
  v37 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1A3C2E0D0;
  v35 = &block_descriptor_12_4;
  v20 = _Block_copy(&aBlock);

  v21 = [v17 onOpen_];
  _Block_release(v20);

  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  v23[2] = v5;
  v23[3] = v15;
  v23[4] = v22;
  v36 = sub_1A42DC3B0;
  v37 = v23;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1A3C2E0D0;
  v35 = &block_descriptor_19_1;
  v24 = _Block_copy(&aBlock);

  v25 = [v21 onClose_];
  _Block_release(v24);

  [v11 setMenu_];
  [v11 setPreferredMenuElementOrder_];
  v26 = *(v15 + 8);
  v27 = *((*(v26 + 32))(v5, v26) + 16);

  [v11 setHidden_];
  (*(v26 + 16))(&aBlock, v5, v26);
  if (aBlock == 6 || (v31 = aBlock, LemonadeCurationKind.accessibilityLabelString.getter(), !v28))
  {
    v29 = 0;
  }

  else
  {
    v29 = sub_1A524C634();
  }

  [v11 setAccessibilityLabel_];
}

void sub_1A42DB418(void *a1)
{
  v1 = a1;
  sub_1A42DAF30(v1);
}

uint64_t sub_1A42DB460(char a1)
{
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xA0))();
  if (result)
  {
    v5 = v4;
    ObjectType = swift_getObjectType();
    v9[3] = type metadata accessor for LemonadeCurationButton();
    v9[0] = v1;
    v7 = *(v5 + 8);
    v8 = v1;
    v7(v9, a1 & 1, ObjectType, v5);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  return result;
}

id LemonadeCurationButton.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

id sub_1A42DB658(uint64_t (*a1)(void, void, void))
{
  v2 = a1(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58));
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A42DB6D0(char *a1)
{
  v2 = *a1;
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40];
  sub_1A3D35A10(&a1[*((*MEMORY[0x1E69E7D40] & *a1) + 0x60)]);

  (*(*(*((v4 & v2) + 0x50) - 8) + 8))(&a1[*((*v3 & *a1) + 0x70)]);
  swift_unknownObjectRelease();

  v5 = *&a1[*((*v3 & *a1) + 0x90)];
}

void sub_1A42DB840(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = *v1;
  v5 = *MEMORY[0x1E69E7D40];
  *&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60) + 8] = 0;
  swift_unknownObjectWeakInit();
  v6 = &v1[*((*v3 & *v1) + 0x70)];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = *((v5 & v4) + 0x50);
  (*(*(v7 - 8) + 16))(&v1[*((*v3 & *v1) + 0x68)], a1, v7);
  v8 = *((v5 & v4) + 0x58);
  v12.receiver = v1;
  v12.super_class = type metadata accessor for LemonadeCurationBarButtonItem();
  objc_msgSendSuper2(&v12, sel_init);
  sub_1A42D98B4();
  sub_1A42D99E0(v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v10;
  sub_1A52457C4();
}

void sub_1A42DBA48()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = (v0 + *((*v1 & *v0) + 0x70));
  *v2 = 0;
  v2[1] = 0;
  sub_1A524E6E4();
  __break(1u);
}

void sub_1A42DBB48(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *v1;
  v6 = *MEMORY[0x1E69E7D40];
  *&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x60) + 8] = 0;
  swift_unknownObjectWeakInit();
  v7 = *((*v4 & *v1) + 0x68);
  *&v2[v7] = [objc_opt_self() systemWhiteColor];
  v8 = &v2[*((*v4 & *v2) + 0x78)];
  *v8 = 0;
  *(v8 + 1) = 0;
  *&v2[*((*v4 & *v2) + 0x88)] = 0;
  *&v2[*((*v4 & *v2) + 0x90)] = 0;
  (*(*(*((v6 & v5) + 0x50) - 8) + 16))(&v2[*((*v4 & *v2) + 0x70)], a1, *((v6 & v5) + 0x50));
  sub_1A3C52C70(0, &qword_1EB126570);
  sub_1A4112CF0(0, 0xE000000000000000, 0, 0, PXDisplayCollectionDetailedCountsMake, 0);
}

void sub_1A42DBEFC()
{
  v1 = MEMORY[0x1E69E7D40];
  *(v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x60) + 8) = 0;
  swift_unknownObjectWeakInit();
  v2 = *((*v1 & *v0) + 0x68);
  *(v0 + v2) = [objc_opt_self() systemWhiteColor];
  v3 = (v0 + *((*v1 & *v0) + 0x78));
  *v3 = 0;
  v3[1] = 0;
  *(v0 + *((*v1 & *v0) + 0x88)) = 0;
  *(v0 + *((*v1 & *v0) + 0x90)) = 0;
  sub_1A524E6E4();
  __break(1u);
}

uint64_t sub_1A42DC080()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A42DC1F0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A42DC3CC()
{
  result = qword_1EB129B58;
  if (!qword_1EB129B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B58);
  }

  return result;
}

uint64_t sub_1A42DC420()
{
  v1 = *(v0 + 16);
  v2 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v3 = sub_1A3C30368();
  v4 = sub_1A3C30368();
  return sub_1A408EA88(v0 + v2, v3 & 1, v4 & 1, v1);
}

void sub_1A42DC4F8(char a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    a2(a1 & 1);
  }
}

void sub_1A42DC564()
{
  if (!qword_1EB126580)
  {
    sub_1A524DE34();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126580);
    }
  }
}

uint64_t sub_1A42DC5BC(uint64_t a1, uint64_t a2)
{
  sub_1A42DC564();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A42DC650(uint64_t *a1, void (*a2)(uint64_t *))
{
  v3 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = v3;
    a2(&v6);
  }
}

uint64_t PhotosItemListSelectionChangeDetailsRepository.__allocating_init(historyLimit:)(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t PhotosItemListSelectionChangeDetailsRepository.init(historyLimit:)(uint64_t a1)
{
  v2 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = a1;
  *(v1 + 24) = v2;
  return v1;
}

uint64_t PhotosItemListSelectionChangeDetailsRepository.add(snapshot:)()
{
  v1 = v0;
  swift_beginAccess();

  MEMORY[0x1A5907D70](v2);
  if (*((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 24) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1A524CA74();
  }

  sub_1A524CAE4();
  v3 = *(v0 + 24);
  swift_endAccess();
  if (v3 >> 62)
  {
    result = sub_1A524E2B4();
  }

  else
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (*(v1 + 16) < result)
  {
    swift_beginAccess();
    sub_1A3EC9710(0);
    swift_endAccess();
  }

  return result;
}

void PhotosItemListSelectionChangeDetailsRepository.change(from:to:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a2;
  v6 = sub_1A52414C4();
  MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v3);
  MEMORY[0x1EEE9AC00](v4);
  swift_beginAccess();
  v7 = a1;
  v8 = &v9;
  v9 = a1;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t PhotosItemListSelectionChangeDetailsRepository.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A42DCC64(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x1A59097F0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1A524E2B4();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1A42DCDA0()
{
  type metadata accessor for PhotosItemListSelectionSnapshot();
  sub_1A42DCFEC();
  return sub_1A524C594() & 1;
}

uint64_t sub_1A42DCE20(uint64_t a1, uint64_t a2)
{
  sub_1A42DCE84();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A42DCE84()
{
  if (!qword_1EB137820)
  {
    sub_1A42DCEDC();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB137820);
    }
  }
}

unint64_t sub_1A42DCEDC()
{
  result = qword_1EB137828;
  if (!qword_1EB137828)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB137828);
  }

  return result;
}

uint64_t sub_1A42DCF40(uint64_t a1)
{
  sub_1A42DCE84();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A42DCFEC()
{
  result = qword_1EB1307A0;
  if (!qword_1EB1307A0)
  {
    type metadata accessor for PhotosItemListSelectionSnapshot();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1307A0);
  }

  return result;
}

uint64_t sub_1A42DD060(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC8];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

void sub_1A42DD09C(char a1)
{
  v3 = *(v1 + 16);
  v4 = objc_opt_self();
  v5 = sub_1A524CA14();
  v6 = sub_1A524C634();
  v7 = [v4 transientCollectionListWithCollections:v5 title:v6 identifier:0 photoLibrary:v3];

  sub_1A42DD2F8();
  v8 = objc_opt_self();
  v9 = v7;
  v10 = [v8 sharedLibraryStatusProviderWithPhotoLibrary_];
  v11 = [objc_allocWithZone(PXLibraryFilterState) initWithSharedLibraryStatusProvider_];

  v30 = 0;
  memset(v29, 0, sizeof(v29));
  v28 = 0;
  sub_1A3C6C180(&v18);
  v26 = v18;
  v27 = v19;
  sub_1A3C6C18C(&v24);
  v22 = v24;
  v23 = v25;
  LOBYTE(v10) = sub_1A3C5A374();
  v12 = sub_1A3C30368();
  v13 = sub_1A3C5A374();
  v14 = sub_1A3C5A374();
  v15 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v26, 0, &unk_1F1703F78, 0, 1, &v22, v10 & 1, &v28, v21, v12, v13 & 1, v14 & 1, v15 & 1, 0);
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v16 = swift_allocObject();
  *(v16 + 16) = v3;
  *(v16 + 24) = a1 & 1;
  v17 = v3;
  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v9, v11, v29, v21, &v18, sub_1A42DD494, v16);
}

void sub_1A42DD2F8()
{
  if (!qword_1EB13C5F0)
  {
    sub_1A410F6A0();
    v0 = type metadata accessor for PhotoKitItemListManager();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13C5F0);
    }
  }
}

uint64_t sub_1A42DD350(void *a1, char a2)
{
  v4 = sub_1A5244EE4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C12A8], v5);
  sub_1A5244EF4();
  swift_allocObject();
  v8 = a1;
  sub_1A5244ED4();
  if (a2)
  {
    sub_1A52445B4();
  }

  else
  {
    sub_1A52445E4();
  }

  v9 = sub_1A5245014();

  return v9;
}

void sub_1A42DD4A0(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = [*(a1 + 16) uuid];
  sub_1A524C674();

  swift_beginAccess();
  if (*(*(v3 + 24) + 16))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A42DD5F8(a1, a2 & 1);
}

void sub_1A42DD5F8(uint64_t a1, char a2)
{
  v5 = *(v2 + 16);
  v6 = objc_opt_self();
  v7 = sub_1A524CA14();
  v27[0] = 0x6867696C68676948;
  v27[1] = 0xEB000000002D7374;
  v8 = [*(a1 + 16) uuid];
  v9 = sub_1A524C674();
  v11 = v10;

  MEMORY[0x1A5907B60](v9, v11);

  v12 = sub_1A524C634();

  v13 = [v6 transientCollectionListWithCollections:v7 title:v12 identifier:0 photoLibrary:v5];

  sub_1A42DD2F8();
  v14 = objc_opt_self();
  v15 = v13;
  v16 = [v14 sharedLibraryStatusProviderWithPhotoLibrary_];
  v17 = [objc_allocWithZone(PXLibraryFilterState) initWithSharedLibraryStatusProvider_];

  v36 = 0;
  memset(v35, 0, sizeof(v35));
  v34 = 2;
  sub_1A3C6C180(&v24);
  v32 = v24;
  v33 = v25;
  sub_1A3C6C18C(&v30);
  v28 = v30;
  v29 = v31;
  LOBYTE(v16) = sub_1A3C5A374();
  v18 = sub_1A3C30368();
  v19 = sub_1A3C5A374();
  v20 = sub_1A3C5A374();
  v21 = sub_1A3C5A374();
  PhotoKitItemListManagerOptions.init(relationship:referencePerson:metadata:initialFetchLimit:metadataImmediateFetchSize:excludeEmptyItems:promisedSortOrder:curationContext:shouldPrepareCounts:isTransient:isFeaturedContent:assetFilterPredicate:)(&v32, 0, &unk_1F1703FA0, 0, 1, &v28, v16 & 1, &v34, v27, v18, v19 & 1, v20 & 1, v21 & 1, 0);
  v24 = 0;
  v25 = 0;
  v26 = 0;
  v22 = swift_allocObject();
  *(v22 + 16) = v5;
  *(v22 + 24) = a2 & 1;
  *(v22 + 32) = a1;
  v23 = v5;

  PhotoKitItemListManager.__allocating_init(container:libraryFilterState:userData:options:sorter:fetchResultProvider:)(v15, v17, v35, v27, &v24, sub_1A42DE814, v22);
}

uint64_t sub_1A42DD8B8(void *a1, char a2)
{
  v4 = sub_1A5244EE4();
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 104))(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x1E69C12A8], v5);
  sub_1A5244EF4();
  swift_allocObject();
  v8 = a1;
  sub_1A5244ED4();
  if (a2)
  {
    sub_1A52445E4();
    v9 = sub_1A52445D4();
  }

  else
  {
    sub_1A5244434();
    v9 = sub_1A5244424();
  }

  v10 = v9;

  return v10;
}

id sub_1A42DDA58()
{
  result = sub_1A42DDAAC();
  qword_1EB163FC8 = result;
  return result;
}

id sub_1A42DDA80()
{
  result = sub_1A42DDAAC();
  qword_1EB163FD8 = result;
  return result;
}

id sub_1A42DDAAC()
{
  v0 = sub_1A5241284();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  sub_1A5241244();
  v5 = sub_1A5241224();
  v6 = *(v1 + 8);
  v6(v3, v0);
  [v4 setLocale_];

  v7 = objc_opt_self();
  v8 = sub_1A524C634();
  sub_1A5241244();
  v9 = sub_1A5241224();
  v6(v3, v0);
  v10 = [v7 dateFormatFromTemplate:v8 options:0 locale:v9];

  [v4 setDateFormat_];
  return v4;
}