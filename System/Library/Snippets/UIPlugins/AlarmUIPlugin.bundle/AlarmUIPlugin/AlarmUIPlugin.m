uint64_t sub_1348@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_137C(uint64_t a1)
{
  v56 = a1;
  v1 = sub_1D64();
  v53 = *(v1 - 8);
  v54 = v1;
  v2 = *(v53 + 64);
  (__chkstk_darwin)();
  v51 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1DD4();
  v50 = *(v52 - 8);
  v4 = *(v50 + 64);
  v5 = (__chkstk_darwin)();
  v46 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v49 = &v41 - v7;
  v8 = sub_1DA4();
  v47 = *(v8 - 8);
  v48 = v8;
  v9 = *(v47 + 64);
  __chkstk_darwin(v8);
  v44 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1DC4();
  v43 = *(v45 - 8);
  v11 = *(v43 + 64);
  v12 = __chkstk_darwin(v45);
  v41 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v42 = &v41 - v14;
  v15 = sub_1D84();
  v55 = *(v15 - 8);
  v16 = *(v55 + 64);
  __chkstk_darwin(v15);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1DB4();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = &v41 - v25;
  v27 = sub_1DE4();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  __chkstk_darwin(v27);
  v31 = &v41 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v31, v56, v27);
  v32 = (*(v28 + 88))(v31, v27);
  if (v32 == enum case for SiriAlarmSnippetModels.alarmMulti(_:))
  {
    (*(v28 + 96))(v31, v27);
    (*(v20 + 32))(v26, v31, v19);
    (*(v20 + 16))(v24, v26, v19);
    sub_1D74();
    sub_1B10(&qword_8140, &type metadata accessor for AlarmSnippet);
    v33 = sub_1DF4();
    (*(v55 + 8))(v18, v15);
    (*(v20 + 8))(v26, v19);
    return v33;
  }

  if (v32 == enum case for SiriAlarmSnippetModels.alarmSelector(_:))
  {
    (*(v28 + 96))(v31, v27);
    v35 = v42;
    v34 = v43;
    v36 = v45;
    (*(v43 + 32))(v42, v31, v45);
    (*(v34 + 16))(v41, v35, v36);
    v37 = v44;
    sub_1D94();
    sub_1B10(&qword_8138, &type metadata accessor for AlarmSelector);
    v38 = v48;
    v33 = sub_1DF4();
    v39 = v47;
LABEL_7:
    (*(v39 + 8))(v37, v38);
    (*(v34 + 8))(v35, v36);
    return v33;
  }

  if (v32 == enum case for SiriAlarmSnippetModels.alarmConfirmation(_:))
  {
    (*(v28 + 96))(v31, v27);
    v35 = v49;
    v34 = v50;
    v36 = v52;
    (*(v50 + 32))(v49, v31, v52);
    (*(v34 + 16))(v46, v35, v36);
    v37 = v51;
    sub_1D54();
    sub_1B10(&qword_8130, &type metadata accessor for AlarmConfirmation);
    v38 = v54;
    v33 = sub_1DF4();
    v39 = v53;
    goto LABEL_7;
  }

  result = sub_1E04();
  __break(1u);
  return result;
}

uint64_t sub_1B10(unint64_t *a1, void (*a2)(uint64_t))
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

Swift::Int Placeholder.hashValue.getter()
{
  sub_1E14();
  sub_1E24(0);
  return sub_1E34();
}

Swift::Int sub_1BCC()
{
  sub_1E14();
  sub_1E24(0);
  return sub_1E34();
}

unint64_t sub_1C10()
{
  result = qword_8148;
  if (!qword_8148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8148);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Placeholder(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for Placeholder(_WORD *result, int a2, int a3)
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