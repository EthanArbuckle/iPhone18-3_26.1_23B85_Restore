uint64_t IntervenableAction.performOrIntervene(_:)(uint64_t (*a1)(void), uint64_t a2)
{
  if (v2[17] != 1)
  {
    return a1();
  }

  result = (*(**v2 + 88))();
  if (result)
  {
    return result;
  }

  v6 = type metadata accessor for IntervenableAction(0);
  v7 = &v2[*(v6 + 32)];
  v8 = *v7;
  if (!*v7)
  {
    return (a1)(v6);
  }

  v9 = *(v7 + 1);

  if (!sub_1BC688698())
  {
    v6 = sub_1BC635484(v8);
    return (a1)(v6);
  }

  v8(a1, a2);

  return sub_1BC635484(v8);
}

uint64_t IntervenableAction.ButtonImageKind.hashValue.getter()
{
  v1 = *v0;
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](v1);
  return sub_1BC75C720();
}

uint64_t IntervenableAction.buttonImage(_:)(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - v5;
  v7 = sub_1BC75A160();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 17) != 1)
  {
    return 0;
  }

  v12 = *a1;
  v13 = type metadata accessor for IntervenableAction(0);
  sub_1BC660024(v1 + *(v13 + 28), v6, &qword_1EBCDC868, &qword_1BC762D30);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1BC66008C(v6, &qword_1EBCDC868, &qword_1BC762D30);
  }

  else
  {
    (*(v8 + 32))(v11, v6, v7);
    v14 = sub_1BC75A150();
    (*(v8 + 8))(v11, v7);
    if ((v14 & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(v1 + 8);
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) != 2)
    {
      return 0;
    }

    if ((sub_1BC638C30(MEMORY[0x1E69E7CC0], v15) & 1) == 0)
    {
      return sub_1BC75B5C0();
    }

    return 0;
  }

  if (sub_1BC638C30(MEMORY[0x1E69E7CC0], v15))
  {
    return 0;
  }

  return sub_1BC75B5C0();
}

uint64_t sub_1BC688CB0(char a1)
{
  result = swift_beginAccess();
  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1BC688CF0(char a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1BC688D34@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for IntervenableAction.BoolBox();
  v2 = swift_allocObject();
  *(v2 + 16) = 1;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 255;
  v3 = type metadata accessor for IntervenableAction(0);
  v4 = *(v3 + 28);
  v5 = sub_1BC75A160();
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v7 = (a1 + *(v3 + 32));
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1BC688DDC()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  if (*(v0 + 9) == 1)
  {
    sub_1BC6354C8(*v0, *(v0 + 8));
  }

  else
  {

    sub_1BC75BF70();
    v8 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC638C10(v6, v7, 0);
    (*(v2 + 8))(v5, v1);
    return v10;
  }

  return v6;
}

uint64_t sub_1BC688F48()
{
  v1 = sub_1BC75ABB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v7 = *(v0 + 8);
  if (*(v0 + 9) == 1)
  {
    sub_1BC6354C8(*v0, *(v0 + 8));
    if (v7 <= 1)
    {
      return v6;
    }
  }

  else
  {

    sub_1BC75BF70();
    v8 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC638C10(v6, v7, 0);
    (*(v2 + 8))(v5, v1);
    v6 = v10;
    v7 = v11;
    if (v11 <= 1u)
    {
      return v6;
    }
  }

  if (v7 == 2)
  {
    if (sub_1BC638C30(MEMORY[0x1E69E7CC0], v6))
    {
      sub_1BC638C1C(v6, 2);
      return MEMORY[0x1E69E7CC0];
    }
  }

  else if (v7 != 3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  return v6;
}

uint64_t sub_1BC689104(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v19 = v9;
  v20 = v10;
  v21 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC958, &qword_1BC763158);
  sub_1BC75B640();
  v12 = v17;
  if (v17)
  {
    LOBYTE(v19) = 1;
    v17(&v19);
    sub_1BC635484(v12);
  }

  v19 = v9;
  v20 = v10;
  v21 = v11;
  v17 = 0;
  v18 = 0;
  sub_1BC75B650();
  v13 = type metadata accessor for InterventionConfig.Layout(0);
  (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
  v14 = *(type metadata accessor for InterventionParticipantHistoryChecker(0) + 28);
  sub_1BC660024(v8, v6, &qword_1EBCDC878, &qword_1BC763F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0);
  sub_1BC75B650();
  return sub_1BC66008C(v8, &qword_1EBCDC878, &qword_1BC763F00);
}

uint64_t sub_1BC6892DC(uint64_t *a1, void (*a2)(uint64_t (*)(), uint64_t))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  a2(sub_1BC68CD3C, v5);
}

uint64_t sub_1BC68936C(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_1BC68CD08;
  v8[1] = v6;

  a3(v8);
}

uint64_t sub_1BC689408(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBB20, &qword_1BC75F0D0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v23 - v10;
  v13 = *a1;
  v12 = a1[1];
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = v12;
  v15 = sub_1BC75BE10();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  sub_1BC68B6C8(a2, v7, type metadata accessor for InterventionParticipantHistoryChecker);
  sub_1BC75BDE0();

  v16 = sub_1BC75BDD0();
  v17 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  *(v19 + 16) = v16;
  *(v19 + 24) = v20;
  sub_1BC635348(v7, v19 + v17, type metadata accessor for InterventionParticipantHistoryChecker);
  v21 = (v19 + v18);
  *v21 = sub_1BC68CB30;
  v21[1] = v14;
  sub_1BC652910(0, 0, v11, &unk_1BC763148, v19);
}

uint64_t sub_1BC689640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  sub_1BC75BDE0();
  v6[10] = sub_1BC75BDD0();
  v8 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC6896DC, v8, v7);
}

uint64_t sub_1BC6896DC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);

  v3 = *(v2 + 24);
  *(v0 + 16) = *(v2 + 16);
  *(v0 + 24) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B640();
  if ((*(v0 + 40) & 1) == 0)
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 56);
    sub_1BC689884();
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    v8 = *(v6 + 48);
    *(v0 + 16) = *(v6 + 32);
    *(v0 + 32) = v8;
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1BC68CC60;
    *(v9 + 24) = v7;
    *(v0 + 40) = sub_1BC68CD44;
    *(v0 + 48) = v9;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC958, &qword_1BC763158);
    sub_1BC75B650();
    *(swift_task_alloc() + 16) = v6;
    sub_1BC75B820();
    sub_1BC75A870();
  }

  v10 = *(v0 + 8);

  return v10();
}

void sub_1BC689884()
{
  v1 = v0;
  v2 = type metadata accessor for InterventionConfig.Layout(0);
  v42 = *(v2 - 8);
  v43 = v2;
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v40 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = (&v40 - v21);
  v23 = *(v0 + *(v5 + 40));
  v45 = v1;

  v24 = sub_1BC68AF44(sub_1BC68CB00, v44, v23);
  v25 = sub_1BC688F48();
  v26 = sub_1BC75A160();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  static InterventionConfig.Layout.tryingToCall(validating:otherParticipants:callType:)(v25, v24, v12, v22);

  sub_1BC66008C(v12, &qword_1EBCDC868, &qword_1BC762D30);
  v27 = *(v5 + 28);
  sub_1BC660024(v22, v20, &qword_1EBCDC878, &qword_1BC763F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0);
  sub_1BC75B650();
  sub_1BC66008C(v22, &qword_1EBCDC878, &qword_1BC763F00);
  if (qword_1EDDCF480 != -1)
  {
    swift_once();
  }

  v28 = sub_1BC75A4E0();
  __swift_project_value_buffer(v28, qword_1EDDD1920);
  sub_1BC68B6C8(v1, v8, type metadata accessor for InterventionParticipantHistoryChecker);
  v29 = sub_1BC75A4C0();
  v30 = sub_1BC75BF40();
  v31 = v8;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v46 = v33;
    *v32 = 136315138;
    v34 = v31 + *(v5 + 28);
    sub_1BC75B640();
    if ((*(v42 + 48))(v17, 1, v43))
    {
      sub_1BC66008C(v17, &qword_1EBCDC878, &qword_1BC763F00);
      v35 = 0xE300000000000000;
      v36 = 7104878;
    }

    else
    {
      v37 = v41;
      sub_1BC68B6C8(v17, v41, type metadata accessor for InterventionConfig.Layout);
      sub_1BC66008C(v17, &qword_1EBCDC878, &qword_1BC763F00);
      v36 = InterventionConfig.Layout.debugDescription.getter();
      v35 = v38;
      sub_1BC68C880(v37, type metadata accessor for InterventionConfig.Layout);
    }

    sub_1BC68C880(v31, type metadata accessor for InterventionParticipantHistoryChecker);
    v39 = sub_1BC674BD8(v36, v35, &v46);

    *(v32 + 4) = v39;
    _os_log_impl(&dword_1BC630000, v29, v30, "Layout Updated %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v33);
    MEMORY[0x1BFB27EF0](v33, -1, -1);
    MEMORY[0x1BFB27EF0](v32, -1, -1);
  }

  else
  {

    sub_1BC68C880(v8, type metadata accessor for InterventionParticipantHistoryChecker);
  }
}

void sub_1BC689DBC(uint64_t a1)
{
  v2 = type metadata accessor for AnalyticsUIContext(0);
  v73 = *(v2 - 8);
  v3 = *(v73 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = sub_1BC759CA0();
  v76 = *(v83 - 8);
  v6 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v83);
  v82 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1BC759D00();
  v85 = *(v81 - 8);
  v8 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v80 = v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1BC759C70();
  v84 = *(v79 - 8);
  v10 = *(v84 + 64);
  v11 = MEMORY[0x1EEE9AC00](v79);
  v71 = v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v61 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v19 = v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = v61 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v72 = v61 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = v61 - v26;
  v28 = sub_1BC759EE0();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = MEMORY[0x1EEE9AC00](v28);
  v74 = v61 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v75 = v61 - v33;
  v34 = *(a1 + 24);
  LOBYTE(v89) = *(a1 + 16);
  v90 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B640();
  if ((v87 & 1) == 0)
  {
    v70 = type metadata accessor for InterventionParticipantHistoryChecker(0);
    v35 = a1 + *(v70 + 36);
    PolicyProperty.wrappedValue.getter(v27);
    if ((*(v29 + 48))(v27, 1, v28) == 1)
    {
      v36 = &unk_1EBCDBD90;
      v37 = &unk_1BC75F850;
    }

    else
    {
      v69 = v22;
      v38 = v75;
      (*(v29 + 32))(v75, v27, v28);
      v39 = *(sub_1BC688F48() + 16);

      if (!v39)
      {
        (*(v29 + 8))(v38, v28);
LABEL_16:
        sub_1BC689884();
        return;
      }

      v68 = v19;
      v66 = v29;
      v40 = *(v29 + 16);
      v67 = v28;
      v40(v74, v38, v28);
      v88 = 3;
      v41 = MEMORY[0x1E69E7CC0];
      v87 = MEMORY[0x1E69E7CC0];
      sub_1BC65E6C8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC00, &qword_1BC75F170);
      sub_1BC633C54(&qword_1EBCDBC08, &qword_1EBCDBC00, &qword_1BC75F170);
      sub_1BC75C1B0();
      v87 = v89;
      v42 = sub_1BC688F48();
      v43 = *(v42 + 16);
      if (v43)
      {
        v62 = v14;
        v63 = v2;
        v64 = v5;
        v65 = a1;
        v86 = v41;
        sub_1BC68C8E0(0, v43, 0);
        v44 = v86;
        v78 = *(v85 + 16);
        v45 = (*(v85 + 80) + 32) & ~*(v85 + 80);
        v61[1] = v42;
        v46 = v42 + v45;
        v47 = *(v85 + 72);
        v48 = (v76 + 8);
        v85 += 16;
        v49 = (v85 - 8);
        v76 = v84 + 32;
        v77 = v47;
        v50 = v71;
        v51 = v80;
        do
        {
          v52 = v81;
          v78(v51, v46, v81);
          v53 = v82;
          sub_1BC759CF0();
          sub_1BC759BA0();
          (*v48)(v53, v83);
          (*v49)(v51, v52);
          v86 = v44;
          v55 = *(v44 + 16);
          v54 = *(v44 + 24);
          if (v55 >= v54 >> 1)
          {
            sub_1BC68C8E0(v54 > 1, v55 + 1, 1);
            v44 = v86;
          }

          *(v44 + 16) = v55 + 1;
          (*(v84 + 32))(v44 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v55, v50, v79);
          v46 += v77;
          --v43;
        }

        while (v43);

        v5 = v64;
        v2 = v63;
        v14 = v62;
      }

      else
      {

        v44 = MEMORY[0x1E69E7CC0];
      }

      sub_1BC68A6FC(v44, v14);

      v56 = v72;
      sub_1BC664670(v74, &unk_1F3B28FB8, 4, 0, 4, 0, 1, &v88, v72, &v87, v14);
      v57 = v73;
      (*(v73 + 56))(v56, 0, 1, v2);
      v58 = *(v70 + 32);
      sub_1BC660024(v56, v69, &qword_1EBCDBC50, &qword_1BC762D70);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
      sub_1BC75B650();
      sub_1BC66008C(v56, &qword_1EBCDBC50, &qword_1BC762D70);
      v27 = v68;
      sub_1BC75B640();
      v59 = (*(v57 + 48))(v27, 1, v2);
      v60 = v75;
      if (!v59)
      {
        sub_1BC68B6C8(v27, v5, type metadata accessor for AnalyticsUIContext);
        sub_1BC66008C(v27, &qword_1EBCDBC50, &qword_1BC762D70);
        sub_1BC665AC0();
        sub_1BC68C880(v5, type metadata accessor for AnalyticsUIContext);
        (*(v66 + 8))(v60, v67);
        goto LABEL_16;
      }

      (*(v66 + 8))(v75, v67);
      v36 = &qword_1EBCDBC50;
      v37 = &qword_1BC762D70;
    }

    sub_1BC66008C(v27, v36, v37);
    goto LABEL_16;
  }
}

uint64_t sub_1BC68A6FC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1BC759C70();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v25 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v25 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v25 - v16;
  v34 = 0;
  v32 = sub_1BC68C20C(&qword_1EBCDC928, MEMORY[0x1E697B418]);
  sub_1BC75C790();
  v31 = *(v5 + 16);
  v31(a2, v17, v4);
  v18 = *(a1 + 16);
  if (v18)
  {
    v26 = v17;
    v27 = v5 + 16;
    v19 = (a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
    v20 = *(v5 + 72);
    v29 = v9;
    v30 = v20;
    v33 = (v5 + 8);
    v28 = (v5 + 32);
    do
    {
      v21 = v31;
      v31(v15, v19, v4);
      v22 = MEMORY[0x1E697B418];
      sub_1BC68C20C(&qword_1EBCDC930, MEMORY[0x1E697B418]);
      sub_1BC75BC70();
      sub_1BC75C790();
      v21(v29, v15, v4);
      sub_1BC68C20C(&qword_1EBCDBD78, v22);
      sub_1BC75C190();
      v23 = *v33;
      (*v33)(v15, v4);
      v23(a2, v4);
      (*v28)(a2, v12, v4);
      v19 += v30;
      --v18;
    }

    while (v18);
    v17 = v26;
  }

  else
  {
    v23 = *(v5 + 8);
  }

  return (v23)(v17, v4);
}

uint64_t sub_1BC68AA28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v23 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v23 - v9;
  v11 = type metadata accessor for AnalyticsUIContext(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = *(type metadata accessor for InterventionParticipantHistoryChecker(0) + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8);
  sub_1BC75B640();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1BC66008C(v10, &qword_1EBCDBC50, &qword_1BC762D70);
  }

  sub_1BC635348(v10, v18, type metadata accessor for AnalyticsUIContext);
  v21 = *(a1 + 24);
  v25 = *(a1 + 16);
  v26 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  sub_1BC75B640();
  if ((v24 & 1) == 0)
  {
    v22 = *(sub_1BC688F48() + 16);

    if (v22)
    {
      sub_1BC68B6C8(v18, v16, type metadata accessor for AnalyticsUIContext);
      sub_1BC664BAC(v16, v8);
      (*(v12 + 56))(v8, 0, 1, v11);
      sub_1BC660024(v8, v23, &qword_1EBCDBC50, &qword_1BC762D70);
      sub_1BC75B650();
      sub_1BC66008C(v8, &qword_1EBCDBC50, &qword_1BC762D70);
    }
  }

  return sub_1BC68C880(v18, type metadata accessor for AnalyticsUIContext);
}

uint64_t sub_1BC68AD2C(uint64_t a1)
{
  v19 = a1;
  v18 = sub_1BC759FE0();
  v1 = *(v18 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BC759D00();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1BC688F48();
  v11 = result;
  v12 = 0;
  v13 = *(result + 16);
  v14 = (v1 + 8);
  v17[0] = v6 + 8;
  v17[1] = v6 + 16;
  while (1)
  {
    v15 = v12;
    if (v13 == v12)
    {
LABEL_5:

      return v13 == v15;
    }

    if (v12 >= *(v11 + 16))
    {
      break;
    }

    (*(v6 + 16))(v9, v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v12++, v5);
    sub_1BC759CC0();
    v16 = MEMORY[0x1BFB24B70](v19, v4);
    (*v14)(v4, v18);
    result = (*(v6 + 8))(v9, v5);
    if (v16)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC68AF44(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v40 = sub_1BC759FE0();
  v7 = *(*(v40 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v37 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v29 - v12;
  v36 = *(a3 + 16);
  if (v36)
  {
    v13 = 0;
    v33 = (v11 + 8);
    v34 = (v11 + 32);
    v35 = v11 + 16;
    v38 = MEMORY[0x1E69E7CC0];
    v31 = a2;
    v32 = a3;
    v30 = a1;
    while (v13 < *(a3 + 16))
    {
      v14 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v15 = *(v11 + 72);
      v16 = a3;
      v17 = a3 + v14 + v15 * v13;
      v18 = v11;
      v19 = a1;
      v20 = v39;
      (*(v11 + 16))(v39, v17, v40);
      v21 = v20;
      a1 = v19;
      v22 = v19(v21);
      if (v3)
      {
        (*v33)(v39, v40);
        v28 = v38;

        return v28;
      }

      if (v22)
      {
        v23 = *v34;
        (*v34)(v37, v39, v40);
        v24 = v38;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v41 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BC6701A4(0, *(v24 + 16) + 1, 1);
          v24 = v41;
        }

        v27 = *(v24 + 16);
        v26 = *(v24 + 24);
        if (v27 >= v26 >> 1)
        {
          sub_1BC6701A4(v26 > 1, v27 + 1, 1);
          v24 = v41;
        }

        *(v24 + 16) = v27 + 1;
        v38 = v24;
        result = (v23)(v24 + v14 + v27 * v15, v37, v40);
        a3 = v32;
        a1 = v30;
      }

      else
      {
        result = (*v33)(v39, v40);
        a3 = v16;
      }

      ++v13;
      v11 = v18;
      if (v36 == v13)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_14:

    return v38;
  }

  return result;
}

uint64_t sub_1BC68B214()
{
  if (qword_1EDDCF480 != -1)
  {
    swift_once();
  }

  v0 = sub_1BC75A4E0();

  return __swift_project_value_buffer(v0, qword_1EDDD1920);
}

uint64_t sub_1BC68B27C@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v32 = a3;
  v33 = a4;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v8 = *(*(v31 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v31);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 9) = HIBYTE(a2) & 1;
  LOBYTE(v34) = 0;
  sub_1BC75B630();
  v21 = *(&v36 + 1);
  *(a5 + 16) = v36;
  *(a5 + 24) = v21;
  v34 = 0;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC870, &unk_1BC762D60);
  sub_1BC75B630();
  v22 = v37;
  *(a5 + 32) = v36;
  *(a5 + 48) = v22;
  v23 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  v24 = v23[7];
  v25 = type metadata accessor for InterventionConfig.Layout(0);
  (*(*(v25 - 8) + 56))(v20, 1, 1, v25);
  sub_1BC660024(v20, v18, &qword_1EBCDC878, &qword_1BC763F00);
  sub_1BC75B630();
  sub_1BC66008C(v20, &qword_1EBCDC878, &qword_1BC763F00);
  v26 = v23[8];
  v27 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v27 - 8) + 56))(v13, 1, 1, v27);
  sub_1BC660024(v13, v11, &qword_1EBCDBC50, &qword_1BC762D70);
  sub_1BC75B630();
  sub_1BC66008C(v13, &qword_1EBCDBC50, &qword_1BC762D70);
  PolicyProperty.init()((a5 + v23[9]));
  v28 = v33;
  *(a5 + v23[10]) = v32;
  return sub_1BC68B62C(v28, a5 + v23[11]);
}

uint64_t sub_1BC68B588()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EDDD1920);
  __swift_project_value_buffer(v0, qword_1EDDD1920);
  return sub_1BC75A4D0();
}

uint64_t sub_1BC68B62C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC68B69C(unsigned __int8 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1BC68B6C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_3Tm()
{
  v1 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = *(*(v1 - 1) + 64);
  v4 = (v2 + 16) & ~v2;
  v5 = v0 + v4;
  sub_1BC638C10(*(v0 + v4), *(v0 + v4 + 8), *(v0 + v4 + 9));
  v6 = *(v0 + v4 + 24);

  if (*(v0 + v4 + 32))
  {
    v7 = *(v5 + 40);
  }

  v8 = *(v5 + 48);

  v9 = (v5 + v1[7]);
  v10 = type metadata accessor for InterventionConfig.Layout(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 3)
    {
      if (EnumCaseMultiPayload <= 5)
      {
        v13 = sub_1BC759D00();
        (*(*(v13 - 8) + 8))(v9, v13);
        v14 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC60, &qword_1BC75F1B0) + 48));
LABEL_17:

        goto LABEL_18;
      }

      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload != 7)
        {
          goto LABEL_18;
        }

        v15 = *v9;

        v16 = v9[1];
        goto LABEL_17;
      }
    }

    else
    {
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload > 1)
        {
          goto LABEL_18;
        }

        v12 = sub_1BC759CA0();
        goto LABEL_12;
      }

      if (EnumCaseMultiPayload != 2)
      {
        v12 = sub_1BC759DE0();
LABEL_12:
        (*(*(v12 - 8) + 8))(v9, v12);
        goto LABEL_18;
      }
    }

    v17 = *v9;
    goto LABEL_17;
  }

LABEL_18:
  v18 = *(v9 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A8, &qword_1BC762DA0) + 28));

  v19 = v5 + v1[8];
  v20 = type metadata accessor for AnalyticsUIContext(0);
  if (!(*(*(v20 - 1) + 48))(v19, 1, v20))
  {
    v21 = sub_1BC759940();
    (*(*(v21 - 8) + 8))(v19, v21);
    v22 = *(v19 + v20[5] + 8);

    v23 = v20[6];
    v24 = sub_1BC759EE0();
    (*(*(v24 - 8) + 8))(v19 + v23, v24);
    v25 = v20[12];
    v26 = sub_1BC759C70();
    (*(*(v26 - 8) + 8))(v19 + v25, v26);
    v27 = *(v19 + v20[13]);
  }

  v28 = *(v19 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8B0, &qword_1BC762DA8) + 28));

  v29 = (v5 + v1[9]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v30 - 8) + 48))(v29, 1, v30))
    {
      v31 = sub_1BC759EE0();
      v32 = *(v31 - 8);
      if (!(*(v32 + 48))(v29, 1, v31))
      {
        (*(v32 + 8))(v29, v31);
      }
    }
  }

  else
  {
    v33 = *v29;
  }

  v34 = *(v29 + *(type metadata accessor for PolicyProperty(0) + 20));

  v35 = *(v5 + v1[10]);

  v36 = v1[11];
  v37 = sub_1BC75A160();
  v38 = *(v37 - 8);
  if (!(*(v38 + 48))(v5 + v36, 1, v37))
  {
    (*(v38 + 8))(v5 + v36, v37);
  }

  return MEMORY[0x1EEE6BDD0](v0, v4 + v3, v2 | 7);
}

uint64_t sub_1BC68BC84()
{
  v1 = *(type metadata accessor for InterventionParticipantHistoryChecker(0) - 8);
  v2 = (v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80)));
  v3 = v2[4];
  v4 = v2[5];
  v5 = v2[6];
  v8 = v3;
  v9 = v4;
  v10 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC958, &qword_1BC763158);
  sub_1BC75B640();
  if (v7)
  {
    LOBYTE(v8) = 0;
    v7(&v8);
    sub_1BC635484(v7);
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  return sub_1BC75B650();
}

uint64_t sub_1BC68BD6C(uint64_t *a1)
{
  v3 = *(type metadata accessor for InterventionParticipantHistoryChecker(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1BC689408(a1, v4);
}

void sub_1BC68BDDC()
{
  v1 = *(type metadata accessor for InterventionParticipantHistoryChecker(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  sub_1BC689DBC(v2);
}

unint64_t sub_1BC68BE3C()
{
  result = qword_1EBCDC8F0;
  if (!qword_1EBCDC8F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC890, &qword_1BC762D88);
    sub_1BC68BEF4();
    sub_1BC633C54(&qword_1EDDCE788, &qword_1EBCDC920, qword_1BC762ED8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC8F0);
  }

  return result;
}

unint64_t sub_1BC68BEF4()
{
  result = qword_1EBCDC8F8;
  if (!qword_1EBCDC8F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8D8, &qword_1BC762E70);
    sub_1BC68BFAC();
    sub_1BC633C54(&qword_1EDDCE008, &qword_1EBCDC8E0, &qword_1BC762E78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC8F8);
  }

  return result;
}

unint64_t sub_1BC68BFAC()
{
  result = qword_1EBCDC900;
  if (!qword_1EBCDC900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8D0, &qword_1BC762E30);
    sub_1BC68C064();
    sub_1BC633C54(&qword_1EDDCE790, &qword_1EBCDC918, &qword_1BC762ED0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC900);
  }

  return result;
}

unint64_t sub_1BC68C064()
{
  result = qword_1EBCDC908;
  if (!qword_1EBCDC908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8C8, &qword_1BC762DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC888, &qword_1BC762D80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC880, &qword_1BC762D78);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8B8, &unk_1BC762DB0);
    sub_1BC633C54(&qword_1EDDCE7A8, &qword_1EBCDC8B8, &unk_1BC762DB0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1BC633C54(&qword_1EDDCE798, &qword_1EBCDC910, &unk_1BC763EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC908);
  }

  return result;
}

uint64_t sub_1BC68C20C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC68C26C(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for InterventionParticipantHistoryChecker(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

unint64_t sub_1BC68C2E4()
{
  result = qword_1EBCDC938;
  if (!qword_1EBCDC938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC938);
  }

  return result;
}

uint64_t sub_1BC68C340()
{
  result = sub_1BC759A90();
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

void sub_1BC68C3E0()
{
  type metadata accessor for IntervenableAction.BoolBox();
  sub_1BC68C758(319, &qword_1EDDCEE78, MEMORY[0x1E697B548], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    sub_1BC68C80C(319, &qword_1EDDCEE58, MEMORY[0x1E697B640], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1BC68C7A8(319, &qword_1EDDCE700, &qword_1EBCDC940, qword_1BC7697D0, MEMORY[0x1E69E6720]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BC68C510(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BC68C560(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1BC68C5B4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IntervenableAction.ButtonImageKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IntervenableAction.ButtonImageKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1BC68C758(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1BC68C7A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1BC68C80C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1BC68C880(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

size_t sub_1BC68C8E0(size_t a1, int64_t a2, char a3)
{
  result = sub_1BC68C924(a1, a2, a3, *v3, &qword_1EBCDC950, &unk_1BC763130, MEMORY[0x1E697B418]);
  *v3 = result;
  return result;
}

size_t sub_1BC68C924(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1BC68CB30()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BC68CB58()
{
  v2 = *(type metadata accessor for InterventionParticipantHistoryChecker(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = *v4;
  v6 = v4[1];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BC65281C;

  return sub_1BC689640(v7, v8, v9, v0 + v3, v5, v6);
}

uint64_t sub_1BC68CC60(uint64_t result)
{
  if (result)
  {
    v2 = *(v1 + 24);
    return (*(v1 + 16))();
  }

  return result;
}

uint64_t sub_1BC68CC94()
{
  v1 = *(v0 + 16);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8A0, &qword_1BC767020);
  return sub_1BC75B650();
}

uint64_t sub_1BC68CD08()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t static SensitiveContentOverlay.Kind.standard(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = 0;
  *a4 = v8;
  v9 = a3;
}

uint64_t sub_1BC68CDC4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v235 = a2;
  v3 = sub_1BC759FE0();
  v4 = *(v3 - 8);
  KeyPath = v3;
  v234 = v4;
  v5 = v4[8];
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = v198 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v217 = v198 - v9;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAB0, &qword_1BC763848);
  v10 = *(*(v210 - 8) + 64);
  MEMORY[0x1EEE9AC00](v210);
  v211 = v198 - v11;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA38, &qword_1BC7637D8);
  v12 = *(*(v227 - 8) + 64);
  MEMORY[0x1EEE9AC00](v227);
  v212 = v198 - v13;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAB8, &qword_1BC763850);
  v14 = *(*(v218 - 8) + 64);
  MEMORY[0x1EEE9AC00](v218);
  v219 = v198 - v15;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA28, &qword_1BC7637D0);
  v16 = *(*(v223 - 8) + 64);
  MEMORY[0x1EEE9AC00](v223);
  v220 = v198 - v17;
  v222 = _s6LayoutV4ModeOMa(0);
  v18 = *(*(v222 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v222);
  v200 = (v198 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v221 = v198 - v21;
  v22 = _s6LayoutVMa(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v201 = v198 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v229 = v198 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  v28 = *(*(v27 - 8) + 64);
  v29 = MEMORY[0x1EEE9AC00](v27 - 8);
  v203 = v198 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v230 = v198 - v31;
  v236 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAC0, &qword_1BC763858);
  v231 = *(v236 - 8);
  v32 = *(v231 + 64);
  v33 = MEMORY[0x1EEE9AC00](v236);
  v202 = v198 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v232 = v198 - v35;
  v209 = sub_1BC759D50();
  v208 = *(v209 - 8);
  v36 = *(v208 + 64);
  MEMORY[0x1EEE9AC00](v209);
  v206 = v198 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAC8, &qword_1BC763860);
  v38 = *(*(v224 - 8) + 64);
  MEMORY[0x1EEE9AC00](v224);
  v226 = v198 - v39;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAD0, &qword_1BC763868);
  v40 = *(*(v213 - 8) + 64);
  MEMORY[0x1EEE9AC00](v213);
  v215 = v198 - v41;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAD8, &qword_1BC763870);
  v42 = *(*(v204 - 8) + 64);
  MEMORY[0x1EEE9AC00](v204);
  v205 = v198 - v43;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA10, &qword_1BC7637B8);
  v44 = *(*(v214 - 8) + 64);
  MEMORY[0x1EEE9AC00](v214);
  v207 = v198 - v45;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA08, &qword_1BC7637B0);
  v46 = *(*(v225 - 8) + 64);
  MEMORY[0x1EEE9AC00](v225);
  v216 = v198 - v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA00, &qword_1BC7637A8);
  v49 = *(*(v48 - 8) + 64);
  MEMORY[0x1EEE9AC00](v48);
  v228 = v198 - v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA18, &qword_1BC7637C0);
  v52 = *(*(v51 - 8) + 64);
  MEMORY[0x1EEE9AC00](v51);
  v54 = v198 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAE0, &qword_1BC763878);
  v56 = *(*(v55 - 8) + 64);
  MEMORY[0x1EEE9AC00](v55);
  v58 = v198 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAE8, &unk_1BC763880);
  v60 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v62 = v198 - v61;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA40, &qword_1BC7637E0);
  v64 = *(*(v63 - 8) + 64);
  v65 = MEMORY[0x1EEE9AC00](v63);
  v67 = v198 - v66;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    v198[1] = v55;
    v199 = v58;
    v198[3] = v48;
    v198[2] = v65;
    v71 = v237;
    switch(a1 >> 60)
    {
      case 1uLL:
        v150 = a1 & 0xFFFFFFFFFFFFFFFLL;
        v151 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v152 = v230;
        sub_1BC6EBA60(*(v150 + 24), *(v150 + 32), *(v150 + 40));
        v153 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF88, &qword_1BC75FA38) + 48);
        v154 = v221;
        SCAParticipant.structParticipant.getter();
        *(v154 + v153) = MEMORY[0x1E69E7CC0];
        swift_storeEnumTagMultiPayload();
        v155 = v229;
        sub_1BC6EBE04(v154, 0, v229);
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v149 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
        v123 = v232;
        sub_1BC6EB4BC(v152, v155, v148, v149, v232);
        sub_1BC697848(v155, _s6LayoutVMa);
        sub_1BC66008C(v152, &qword_1EBCDC970, &unk_1BC763180);
        v124 = v231;
        v125 = v236;
        (*(v231 + 16))(v219, v123, v236);
        goto LABEL_14;
      case 2uLL:
        v115 = a1 & 0xFFFFFFFFFFFFFFFLL;
        v116 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v117 = v230;
        sub_1BC6EBA60(*(v115 + 24), *(v115 + 32), *(v115 + 40));
        v118 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
        v119 = v221;
        SCAParticipant.structParticipant.getter();
        *(v119 + v118) = MEMORY[0x1E69E7CC0];
        swift_storeEnumTagMultiPayload();
        v120 = v229;
        sub_1BC6EBE04(v119, 0, v229);
        v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v122 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
        v123 = v232;
        sub_1BC6EB4BC(v117, v120, v121, v122, v232);
        sub_1BC697848(v120, _s6LayoutVMa);
        sub_1BC66008C(v117, &qword_1EBCDC970, &unk_1BC763180);
        v124 = v231;
        v125 = v236;
        (*(v231 + 16))(v219, v123, v236);
        swift_storeEnumTagMultiPayload();
        v240 = v121;
        v241 = v122;
        swift_getOpaqueTypeConformance2();
        v126 = v220;
        sub_1BC75AE00();
        sub_1BC660024(v126, v211, &qword_1EBCDCA28, &qword_1BC7637D0);
        swift_storeEnumTagMultiPayload();
        sub_1BC695C18();
        v127 = v212;
        sub_1BC75AE00();
        sub_1BC66008C(v126, &qword_1EBCDCA28, &qword_1BC7637D0);
        v128 = &qword_1EBCDCA38;
        v129 = &qword_1BC7637D8;
        sub_1BC660024(v127, v226, &qword_1EBCDCA38, &qword_1BC7637D8);
        goto LABEL_15;
      case 3uLL:
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC960, &qword_1BC763170);
        v131 = swift_projectBox();
        v132 = *(v131 + *(v130 + 48));
        v133 = *(v130 + 64);
        v134 = KeyPath;
        v135 = v234[2];
        v136 = v217;
        v135(v217, v131, KeyPath);
        v105 = v230;
        sub_1BC660024(v131 + v133, v230, &qword_1EBCDC970, &unk_1BC763180);
        v137 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF88, &qword_1BC75FA38) + 48);
        v138 = v221;
        v135(v221, v136, v134);
        *(v138 + v137) = v132;
        swift_storeEnumTagMultiPayload();

        v139 = v229;
        sub_1BC6EBE04(v138, 0, v229);
        v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v141 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
        v111 = v232;
        sub_1BC6EB4BC(v105, v139, v140, v141, v232);
        sub_1BC697848(v139, _s6LayoutVMa);
        v112 = v231;
        v113 = v236;
        (*(v231 + 16))(v219, v111, v236);
        swift_storeEnumTagMultiPayload();
        v240 = v140;
        v241 = v141;
        swift_getOpaqueTypeConformance2();
        v114 = v220;
        sub_1BC75AE00();
        sub_1BC660024(v114, v211, &qword_1EBCDCA28, &qword_1BC7637D0);
        goto LABEL_11;
      case 4uLL:
        v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC968, &qword_1BC763178);
        v99 = swift_projectBox();
        v100 = *(v99 + *(v98 + 48));
        v101 = *(v98 + 64);
        v102 = KeyPath;
        v103 = v234[2];
        v104 = v217;
        v103(v217, v99, KeyPath);
        v105 = v230;
        sub_1BC660024(v99 + v101, v230, &qword_1EBCDC970, &unk_1BC763180);
        v106 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
        v107 = v221;
        v103(v221, v104, v102);
        *(v107 + v106) = v100;
        swift_storeEnumTagMultiPayload();

        v108 = v229;
        sub_1BC6EBE04(v107, 0, v229);
        v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v110 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
        v111 = v232;
        sub_1BC6EB4BC(v105, v108, v109, v110, v232);
        sub_1BC697848(v108, _s6LayoutVMa);
        v112 = v231;
        v113 = v236;
        (*(v231 + 16))(v219, v111, v236);
        swift_storeEnumTagMultiPayload();
        v240 = v109;
        v241 = v110;
        swift_getOpaqueTypeConformance2();
        v114 = v220;
        sub_1BC75AE00();
        sub_1BC660024(v114, v211, &qword_1EBCDCA28, &qword_1BC7637D0);
LABEL_11:
        swift_storeEnumTagMultiPayload();
        sub_1BC695C18();
        v142 = v212;
        sub_1BC75AE00();
        sub_1BC66008C(v114, &qword_1EBCDCA28, &qword_1BC7637D0);
        sub_1BC660024(v142, v226, &qword_1EBCDCA38, &qword_1BC7637D8);
        swift_storeEnumTagMultiPayload();
        sub_1BC6959D0();
        sub_1BC695D0C();
        v143 = v228;
        sub_1BC75AE00();
        sub_1BC66008C(v142, &qword_1EBCDCA38, &qword_1BC7637D8);
        sub_1BC660024(v143, v199, &qword_1EBCDCA00, &qword_1BC7637A8);
        swift_storeEnumTagMultiPayload();
        sub_1BC695944();
        sub_1BC695D90();
        sub_1BC75AE00();
        sub_1BC66008C(v143, &qword_1EBCDCA00, &qword_1BC7637A8);
        (*(v112 + 8))(v111, v113);
        sub_1BC66008C(v105, &qword_1EBCDC970, &unk_1BC763180);
        return (v234[1])(v217, KeyPath);
      case 5uLL:
        v158 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        sub_1BC6EBA60(*((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20));
        if (v158 >> 62)
        {
          v159 = sub_1BC75C3F0();
        }

        else
        {
          v159 = *((v158 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v160 = v236;
        v161 = v199;
        v162 = MEMORY[0x1E69E7CC0];
        if (!v159)
        {
          goto LABEL_29;
        }

        v240 = MEMORY[0x1E69E7CC0];
        result = sub_1BC6701A4(0, v159 & ~(v159 >> 63), 0);
        if (v159 < 0)
        {
          __break(1u);
        }

        else
        {
          v163 = 0;
          v162 = v240;
          do
          {
            if ((v158 & 0xC000000000000001) != 0)
            {
              v164 = MEMORY[0x1BFB26EB0](v163, v158);
            }

            else
            {
              v164 = *(v158 + 8 * v163 + 32);
            }

            v165 = v164;
            SCAParticipant.structParticipant.getter();

            v240 = v162;
            v167 = *(v162 + 16);
            v166 = *(v162 + 24);
            if (v167 >= v166 >> 1)
            {
              sub_1BC6701A4(v166 > 1, v167 + 1, 1);
              v162 = v240;
            }

            ++v163;
            *(v162 + 16) = v167 + 1;
            (v234[4])(v162 + ((*(v234 + 80) + 32) & ~*(v234 + 80)) + v234[9] * v167, v8, KeyPath);
          }

          while (v159 != v163);
          v160 = v236;
          v161 = v199;
LABEL_29:
          v188 = v200;
          *v200 = v162;
          swift_storeEnumTagMultiPayload();
          v189 = v201;
          sub_1BC6EBE04(v188, 0, v201);
          v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
          v191 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
          v192 = v202;
          v193 = v203;
          sub_1BC6EB4BC(v203, v189, v190, v191, v202);
          sub_1BC697848(v189, _s6LayoutVMa);
          sub_1BC66008C(v193, &qword_1EBCDC970, &unk_1BC763180);
          v194 = v231;
          (*(v231 + 16))(v219, v192, v160);
          swift_storeEnumTagMultiPayload();
          v240 = v190;
          v241 = v191;
          swift_getOpaqueTypeConformance2();
          v195 = v220;
          sub_1BC75AE00();
          sub_1BC660024(v195, v211, &qword_1EBCDCA28, &qword_1BC7637D0);
          swift_storeEnumTagMultiPayload();
          sub_1BC695C18();
          v196 = v212;
          sub_1BC75AE00();
          sub_1BC66008C(v195, &qword_1EBCDCA28, &qword_1BC7637D0);
          sub_1BC660024(v196, v226, &qword_1EBCDCA38, &qword_1BC7637D8);
          swift_storeEnumTagMultiPayload();
          sub_1BC6959D0();
          sub_1BC695D0C();
          v197 = v228;
          sub_1BC75AE00();
          sub_1BC66008C(v196, &qword_1EBCDCA38, &qword_1BC7637D8);
          sub_1BC660024(v197, v161, &qword_1EBCDCA00, &qword_1BC7637A8);
          swift_storeEnumTagMultiPayload();
          sub_1BC695944();
          sub_1BC695D90();
          sub_1BC75AE00();
          sub_1BC66008C(v197, &qword_1EBCDCA00, &qword_1BC7637A8);
          result = (*(v194 + 8))(v192, v160);
        }

        break;
      case 6uLL:
        v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
        v169 = swift_projectBox();
        v171 = v169[1];
        KeyPath = *v169;
        v170 = KeyPath;
        v172 = v169[2];
        v173 = *(v208 + 16);
        v174 = v169 + *(v168 + 48);
        v175 = v206;
        v176 = v209;
        v173(v206, v174, v209);
        v234 = v172;

        v220 = v171;

        v177 = v230;
        sub_1BC6EBA60(v170, v171, v172);
        v178 = v221;
        v173(v221, v175, v176);
        swift_storeEnumTagMultiPayload();
        v179 = v229;
        sub_1BC6EBE04(v178, 0, v229);
        v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v181 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
        v182 = v232;
        sub_1BC6EB4BC(v177, v179, v180, v181, v232);
        sub_1BC697848(v179, _s6LayoutVMa);
        sub_1BC66008C(v177, &qword_1EBCDC970, &unk_1BC763180);
        v183 = v231;
        v184 = v236;
        (*(v231 + 16))(v205, v182, v236);
        swift_storeEnumTagMultiPayload();
        sub_1BC695B60();
        v240 = v180;
        v241 = v181;
        swift_getOpaqueTypeConformance2();
        v185 = v207;
        sub_1BC75AE00();
        sub_1BC660024(v185, v215, &qword_1EBCDCA10, &qword_1BC7637B8);
        swift_storeEnumTagMultiPayload();
        sub_1BC695A5C();
        sub_1BC695C18();
        v186 = v216;
        sub_1BC75AE00();
        sub_1BC66008C(v185, &qword_1EBCDCA10, &qword_1BC7637B8);
        sub_1BC660024(v186, v226, &qword_1EBCDCA08, &qword_1BC7637B0);
        swift_storeEnumTagMultiPayload();
        sub_1BC6959D0();
        sub_1BC695D0C();
        v187 = v228;
        sub_1BC75AE00();
        sub_1BC66008C(v186, &qword_1EBCDCA08, &qword_1BC7637B0);
        sub_1BC660024(v187, v199, &qword_1EBCDCA00, &qword_1BC7637A8);
        swift_storeEnumTagMultiPayload();
        sub_1BC695944();
        sub_1BC695D90();
        sub_1BC75AE00();

        sub_1BC66008C(v187, &qword_1EBCDCA00, &qword_1BC7637A8);
        (*(v183 + 8))(v182, v184);
        return (*(v208 + 8))(v206, v209);
      case 7uLL:
      case 8uLL:
      case 9uLL:
      case 0xAuLL:
        v72 = swift_projectBox();
        v73 = v72 + 1;
        v74 = (v72 + 2);
        goto LABEL_6;
      case 0xBuLL:
        v72 = ((a1 & 0xFFFFFFFFFFFFFFFLL) + 16);
        v73 = ((a1 & 0xFFFFFFFFFFFFFFFLL) + 24);
        v74 = ((a1 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
        v75 = *v73;
        v76 = *v72;
        v77 = *v74;

        v234 = v77;

        v78 = v230;
        sub_1BC6EBA60(v76, v75, v77);
        v79 = v229;
        sub_1BC6EBE54(v229);
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v81 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
        sub_1BC6EB4BC(v78, v79, v80, v81, v232);

        sub_1BC697848(v79, _s6LayoutVMa);
        sub_1BC66008C(v78, &qword_1EBCDC970, &unk_1BC763180);
        v82 = v231;
        v83 = v232;
        v84 = v236;
        (*(v231 + 16))(v62, v232, v236);
        swift_storeEnumTagMultiPayload();
        v240 = v80;
        v241 = v81;
        swift_getOpaqueTypeConformance2();
        sub_1BC75AE00();
        sub_1BC660024(v67, v199, &qword_1EBCDCA40, &qword_1BC7637E0);
        swift_storeEnumTagMultiPayload();
        sub_1BC695944();
        sub_1BC695D90();
        sub_1BC75AE00();
        sub_1BC66008C(v67, &qword_1EBCDCA40, &qword_1BC7637E0);
        result = (*(v82 + 8))(v83, v84);
        break;
      case 0xCuLL:
        v85 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v234 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v232 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        KeyPath = swift_getKeyPath();
        v239 = 0;
        v238 = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        swift_retain_n();
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC980, &qword_1BC7631C0);
        sub_1BC75B630();
        v87 = v240;
        v86 = v241;
        v238 = 0xF000000000000007;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC988, &qword_1BC7631C8);
        sub_1BC75B630();
        v88 = v240;
        v89 = v241;
        v90 = v71;
        v91 = v239;
        v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        (*(*(v92 - 8) + 16))(v54, v90, v92);
        v93 = &v54[*(v51 + 36)];
        *v93 = KeyPath;
        *(v93 + 1) = 0;
        v93[16] = v91;
        *(v93 + 3) = v87;
        *(v93 + 4) = v86;
        *(v93 + 5) = v88;
        *(v93 + 6) = v89;
        *(v93 + 7) = v234;
        *(v93 + 8) = v85;
        *(v93 + 9) = v232;
        sub_1BC660024(v54, v205, &qword_1EBCDCA18, &qword_1BC7637C0);
        swift_storeEnumTagMultiPayload();
        sub_1BC695B60();
        v94 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
        v240 = v92;
        v241 = v94;
        swift_getOpaqueTypeConformance2();
        v95 = v207;
        sub_1BC75AE00();
        sub_1BC660024(v95, v215, &qword_1EBCDCA10, &qword_1BC7637B8);
        swift_storeEnumTagMultiPayload();
        sub_1BC695A5C();
        sub_1BC695C18();
        v96 = v216;
        sub_1BC75AE00();
        sub_1BC66008C(v95, &qword_1EBCDCA10, &qword_1BC7637B8);
        sub_1BC660024(v96, v226, &qword_1EBCDCA08, &qword_1BC7637B0);
        swift_storeEnumTagMultiPayload();
        sub_1BC6959D0();
        sub_1BC695D0C();
        v97 = v228;
        sub_1BC75AE00();
        sub_1BC66008C(v96, &qword_1EBCDCA08, &qword_1BC7637B0);
        sub_1BC660024(v97, v199, &qword_1EBCDCA00, &qword_1BC7637A8);
        swift_storeEnumTagMultiPayload();
        sub_1BC695944();
        sub_1BC695D90();
        sub_1BC75AE00();

        sub_1BC66008C(v97, &qword_1EBCDCA00, &qword_1BC7637A8);
        result = sub_1BC66008C(v54, &qword_1EBCDCA18, &qword_1BC7637C0);
        break;
      default:
        v144 = *(a1 + 40);
        v145 = v230;
        sub_1BC6EBA60(*(a1 + 16), *(a1 + 24), *(a1 + 32));
        v146 = v221;
        swift_storeEnumTagMultiPayload();
        v147 = v229;
        sub_1BC6EBE04(v146, v144, v229);
        v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
        v149 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
        v123 = v232;
        sub_1BC6EB4BC(v145, v147, v148, v149, v232);
        sub_1BC697848(v147, _s6LayoutVMa);
        sub_1BC66008C(v145, &qword_1EBCDC970, &unk_1BC763180);
        v124 = v231;
        v125 = v236;
        (*(v231 + 16))(v219, v123, v236);
LABEL_14:
        swift_storeEnumTagMultiPayload();
        v240 = v148;
        v241 = v149;
        swift_getOpaqueTypeConformance2();
        v156 = v220;
        sub_1BC75AE00();
        sub_1BC660024(v156, v215, &qword_1EBCDCA28, &qword_1BC7637D0);
        swift_storeEnumTagMultiPayload();
        sub_1BC695A5C();
        sub_1BC695C18();
        v127 = v216;
        sub_1BC75AE00();
        sub_1BC66008C(v156, &qword_1EBCDCA28, &qword_1BC7637D0);
        v128 = &qword_1EBCDCA08;
        v129 = &qword_1BC7637B0;
        sub_1BC660024(v127, v226, &qword_1EBCDCA08, &qword_1BC7637B0);
LABEL_15:
        swift_storeEnumTagMultiPayload();
        sub_1BC6959D0();
        sub_1BC695D0C();
        v157 = v228;
        sub_1BC75AE00();
        sub_1BC66008C(v127, v128, v129);
        sub_1BC660024(v157, v199, &qword_1EBCDCA00, &qword_1BC7637A8);
        swift_storeEnumTagMultiPayload();
        sub_1BC695944();
        sub_1BC695D90();
        sub_1BC75AE00();
        sub_1BC66008C(v157, &qword_1EBCDCA00, &qword_1BC7637A8);
        result = (*(v124 + 8))(v123, v125);
        break;
    }
  }

  else
  {
    v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA20, &qword_1BC7637C8);
    (*(*(v68 - 8) + 16))(v62, v237, v68);
    swift_storeEnumTagMultiPayload();
    v69 = sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
    v240 = v68;
    v241 = v69;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    sub_1BC660024(v67, v58, &qword_1EBCDCA40, &qword_1BC7637E0);
    swift_storeEnumTagMultiPayload();
    sub_1BC695944();
    sub_1BC695D90();
    sub_1BC75AE00();
    return sub_1BC66008C(v67, &qword_1EBCDCA40, &qword_1BC7637E0);
  }

  return result;
}

size_t View.sensitiveContentShield(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v414 = a3;
  v415 = a1;
  v402 = *(a2 - 8);
  v4 = *(v402 + 64);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v417 = &v374 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v416 = &v374 - v7;
  *&v443[0] = v8;
  v419 = v9;
  *(&v443[0] + 1) = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v11 = sub_1BC75AE10();
  v403 = *(v11 - 8);
  v12 = *(v403 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v374 - v13;
  v406 = sub_1BC759FE0();
  v408 = *(v406 - 8);
  v15 = *(v408 + 64);
  v16 = MEMORY[0x1EEE9AC00](v406);
  v401 = &v374 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v388 = &v374 - v18;
  v19 = sub_1BC75AE10();
  v20 = sub_1BC75AE10();
  v387 = *(v20 - 8);
  v21 = *(v387 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v386 = &v374 - v23;
  v393 = *(v19 - 8);
  v24 = *(v393 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v392 = &v374 - v25;
  v396 = _s6LayoutV4ModeOMa(0);
  v26 = *(*(v396 - 8) + 64);
  v27 = MEMORY[0x1EEE9AC00](v396);
  v377 = (&v374 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v27);
  v394 = &v374 - v29;
  v30 = _s6LayoutVMa(0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v376 = &v374 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v395 = &v374 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  v36 = *(*(v35 - 8) + 64);
  v37 = MEMORY[0x1EEE9AC00](v35 - 8);
  v379 = &v374 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v400 = &v374 - v40;
  v409 = *(OpaqueTypeMetadata2 - 8);
  v41 = v409[8];
  v42 = MEMORY[0x1EEE9AC00](v39);
  v375 = &v374 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x1EEE9AC00](v42);
  v378 = &v374 - v45;
  v46 = MEMORY[0x1EEE9AC00](v44);
  v405 = &v374 - v47;
  MEMORY[0x1EEE9AC00](v46);
  v407 = &v374 - v48;
  v49 = sub_1BC759D50();
  v382 = *(v49 - 8);
  v383 = v49;
  v50 = *(v382 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v380 = &v374 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1BC75A960();
  v53 = sub_1BC75AE10();
  v385 = *(v53 - 8);
  v54 = *(v385 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v384 = &v374 - v55;
  v422 = v56;
  v423 = v19;
  v57 = sub_1BC75AE10();
  v390 = *(v57 - 8);
  v58 = *(v390 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v389 = &v374 - v59;
  v421 = v60;
  v424 = v20;
  v61 = sub_1BC75AE10();
  v399 = *(v61 - 8);
  v62 = *(v399 + 64);
  v63 = MEMORY[0x1EEE9AC00](v61);
  v398 = &v374 - v64;
  v65 = *(v52 - 8);
  v66 = v65[8];
  v67 = MEMORY[0x1EEE9AC00](v63);
  v69 = &v374 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v381 = &v374 - v70;
  v412 = v71;
  v413 = v11;
  v72 = sub_1BC75AE10();
  v410 = *(v72 - 8);
  v411 = v72;
  v73 = *(v410 + 64);
  MEMORY[0x1EEE9AC00](v72);
  v74 = *v415;
  v420 = &v374 - v75;
  if ((~v74 & 0xF000000000000007) != 0)
  {
    v391 = OpaqueTypeMetadata2;
    v397 = v52;
    v404 = v3;
    v92 = v401;
    switch(v74 >> 60)
    {
      case 1uLL:
        v258 = *((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v259 = v400;
        sub_1BC6EBA60(*((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x20), *((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x28));
        v260 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF88, &qword_1BC75FA38) + 48);
        v261 = v394;
        SCAParticipant.structParticipant.getter();
        *(v261 + v260) = MEMORY[0x1E69E7CC0];
        swift_storeEnumTagMultiPayload();
        v262 = v395;
        sub_1BC6EBE04(v261, 0, v395);
        v263 = v404;
        v264 = v405;
        v91 = v419;
        sub_1BC6EB4BC(v259, v262, v404, v419, v405);
        sub_1BC697848(v262, _s6LayoutVMa);
        sub_1BC66008C(v259, &qword_1EBCDC970, &unk_1BC763180);
        *&v443[0] = v263;
        *(&v443[0] + 1) = v91;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v266 = v409;
        v267 = v409[2];
        v268 = v407;
        v269 = v264;
        v270 = v264;
        v271 = v391;
        v267(v407, v270, v391);
        v272 = v266[1];
        v409 = v266 + 1;
        v418 = v272;
        v272(v269, v271);
        v267(v269, v268, v271);
        v273 = v392;
        sub_1BC633720(v269, v271, v271);
        v274 = sub_1BC694E64();
        v484 = v91;
        v485 = v274;
        WitnessTable = swift_getWitnessTable();
        v483 = OpaqueTypeConformance2;
        v275 = v422;
        v276 = swift_getWitnessTable();
        v480 = OpaqueTypeConformance2;
        v481 = OpaqueTypeConformance2;
        v277 = v423;
        v278 = swift_getWitnessTable();
        v279 = v389;
        sub_1BC633720(v273, v275, v277);
        (*(v393 + 8))(v273, v277);
        v478 = v276;
        v479 = v278;
        v280 = v421;
        v281 = swift_getWitnessTable();
        v476 = v278;
        v477 = v278;
        v282 = swift_getWitnessTable();
        v201 = v398;
        sub_1BC633818(v279, v280);
        (*(v390 + 8))(v279, v280);
        v474 = v281;
        v475 = v282;
        v202 = v412;
        swift_getWitnessTable();
        v472 = OpaqueTypeConformance2;
        v473 = v91;
        goto LABEL_14;
      case 2uLL:
        v177 = *((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v178 = v400;
        sub_1BC6EBA60(*((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x20), *((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x28));
        v179 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
        v180 = v394;
        SCAParticipant.structParticipant.getter();
        *(v180 + v179) = MEMORY[0x1E69E7CC0];
        swift_storeEnumTagMultiPayload();
        v181 = v395;
        sub_1BC6EBE04(v180, 0, v395);
        v182 = v404;
        v183 = v405;
        v91 = v419;
        sub_1BC6EB4BC(v178, v181, v404, v419, v405);
        sub_1BC697848(v181, _s6LayoutVMa);
        sub_1BC66008C(v178, &qword_1EBCDC970, &unk_1BC763180);
        *&v443[0] = v182;
        *(&v443[0] + 1) = v91;
        v184 = swift_getOpaqueTypeConformance2();
        v185 = v409;
        v186 = v409[2];
        v187 = v407;
        v188 = v183;
        v189 = v183;
        v190 = v391;
        v186(v407, v189, v391);
        v191 = v185[1];
        v409 = v185 + 1;
        v418 = v191;
        v191(v188, v190);
        v186(v188, v187, v190);
        v192 = v392;
        sub_1BC633818(v188, v190);
        v498 = v184;
        v499 = v184;
        v193 = v423;
        v194 = swift_getWitnessTable();
        v195 = v386;
        sub_1BC633818(v192, v193);
        (*(v393 + 8))(v192, v193);
        v196 = sub_1BC694E64();
        v496 = v91;
        v497 = v196;
        v494 = swift_getWitnessTable();
        v495 = v184;
        v492 = swift_getWitnessTable();
        v493 = v194;
        v197 = v421;
        v198 = swift_getWitnessTable();
        v490 = v194;
        v491 = v194;
        v199 = v424;
        v200 = swift_getWitnessTable();
        v201 = v398;
        sub_1BC633720(v195, v197, v199);
        (*(v387 + 8))(v195, v199);
        v488 = v198;
        v489 = v200;
        v202 = v412;
        swift_getWitnessTable();
        v486 = v184;
        v487 = v91;
        goto LABEL_14;
      case 3uLL:
        v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC960, &qword_1BC763170);
        v204 = swift_projectBox();
        v205 = *(v204 + *(v203 + 48));
        v206 = *(v203 + 64);
        v207 = *(v408 + 16);
        v208 = v388;
        v209 = v406;
        v207(v388, v204);
        v210 = v204 + v206;
        v211 = v400;
        sub_1BC660024(v210, v400, &qword_1EBCDC970, &unk_1BC763180);
        v212 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF88, &qword_1BC75FA38) + 48);
        v213 = v394;
        (v207)(v394, v208, v209);
        *(v213 + v212) = v205;
        swift_storeEnumTagMultiPayload();

        v214 = v395;
        sub_1BC6EBE04(v213, 0, v395);
        v215 = v404;
        v216 = v405;
        v217 = v211;
        v218 = v419;
        sub_1BC6EB4BC(v217, v214, v404, v419, v405);
        sub_1BC697848(v214, _s6LayoutVMa);
        *&v443[0] = v215;
        *(&v443[0] + 1) = v218;
        v219 = swift_getOpaqueTypeConformance2();
        v220 = v409;
        v221 = v409[2];
        v222 = v407;
        v164 = v391;
        v221(v407, v216, v391);
        v223 = v220[1];
        v409 = v220 + 1;
        v418 = v223;
        v223(v216, v164);
        v221(v216, v222, v164);
        v224 = v392;
        sub_1BC633720(v216, v164, v164);
        v512 = v219;
        v513 = v219;
        v225 = v423;
        v226 = swift_getWitnessTable();
        v227 = v386;
        sub_1BC633818(v224, v225);
        (*(v393 + 8))(v224, v225);
        v228 = sub_1BC694E64();
        v510 = v218;
        v511 = v228;
        v508 = swift_getWitnessTable();
        v509 = v219;
        v506 = swift_getWitnessTable();
        v507 = v226;
        v229 = v421;
        v230 = swift_getWitnessTable();
        v504 = v226;
        v505 = v226;
        v231 = v424;
        v232 = swift_getWitnessTable();
        v175 = v398;
        sub_1BC633720(v227, v229, v231);
        (*(v387 + 8))(v227, v231);
        v502 = v230;
        v91 = v419;
        v503 = v232;
        v176 = v412;
        swift_getWitnessTable();
        v500 = v219;
        v501 = v91;
        goto LABEL_11;
      case 4uLL:
        v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC968, &qword_1BC763178);
        v145 = swift_projectBox();
        v146 = *(v145 + *(v144 + 48));
        v147 = *(v144 + 64);
        v148 = *(v408 + 16);
        v149 = v388;
        v150 = v406;
        v148(v388, v145, v406);
        v151 = v145 + v147;
        v152 = v400;
        sub_1BC660024(v151, v400, &qword_1EBCDC970, &unk_1BC763180);
        v153 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBF80, &qword_1BC75FA30) + 48);
        v154 = v394;
        v148(v394, v149, v150);
        *(v154 + v153) = v146;
        swift_storeEnumTagMultiPayload();

        v155 = v395;
        sub_1BC6EBE04(v154, 0, v395);
        v156 = v404;
        v157 = v405;
        v158 = v152;
        v159 = v419;
        sub_1BC6EB4BC(v158, v155, v404, v419, v405);
        sub_1BC697848(v155, _s6LayoutVMa);
        *&v443[0] = v156;
        *(&v443[0] + 1) = v159;
        v160 = swift_getOpaqueTypeConformance2();
        v161 = v409;
        v162 = v409[2];
        v163 = v407;
        v164 = v391;
        v162(v407, v157, v391);
        v165 = v161[1];
        v409 = v161 + 1;
        v418 = v165;
        v165(v157, v164);
        v162(v157, v163, v164);
        v166 = v392;
        sub_1BC633818(v157, v164);
        v526 = v160;
        v527 = v160;
        v167 = v423;
        v168 = swift_getWitnessTable();
        v169 = v386;
        sub_1BC633720(v166, v167, v167);
        (*(v393 + 8))(v166, v167);
        v170 = sub_1BC694E64();
        v524 = v159;
        v525 = v170;
        v522 = swift_getWitnessTable();
        v523 = v160;
        v520 = swift_getWitnessTable();
        v521 = v168;
        v171 = v421;
        v172 = swift_getWitnessTable();
        v518 = v168;
        v519 = v168;
        v173 = v424;
        v174 = swift_getWitnessTable();
        v175 = v398;
        sub_1BC633720(v169, v171, v173);
        (*(v387 + 8))(v169, v173);
        v516 = v172;
        v91 = v419;
        v517 = v174;
        v176 = v412;
        swift_getWitnessTable();
        v514 = v160;
        v515 = v91;
LABEL_11:
        swift_getWitnessTable();
        sub_1BC633818(v175, v176);
        (*(v399 + 8))(v175, v176);
        v233 = v418;
        v418(v405, v164);
        v233(v407, v164);
        v3 = v404;
        sub_1BC66008C(v400, &qword_1EBCDC970, &unk_1BC763180);
        (*(v408 + 8))(v388, v406);
        goto LABEL_30;
      case 5uLL:
        v286 = *((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
        sub_1BC6EBA60(*((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x10), *((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x18), *((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x20));
        v287 = v286;
        if (v286 >> 62)
        {
          v373 = sub_1BC75C3F0();
          v287 = v286;
          v288 = v373;
        }

        else
        {
          v288 = *((v286 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v91 = v419;
        v289 = v391;
        v290 = MEMORY[0x1E69E7CC0];
        if (!v288)
        {
          goto LABEL_28;
        }

        v291 = v287;
        *&v443[0] = MEMORY[0x1E69E7CC0];
        result = sub_1BC6701A4(0, v288 & ~(v288 >> 63), 0);
        v417 = v288;
        if (v288 < 0)
        {
          __break(1u);
          return result;
        }

        v293 = 0;
        v290 = *&v443[0];
        v294 = v291;
        v295 = v291 & 0xC000000000000001;
        v296 = v291;
        do
        {
          if (v295)
          {
            v297 = MEMORY[0x1BFB26EB0](v293, v294);
          }

          else
          {
            v297 = *(v294 + 8 * v293 + 32);
          }

          v298 = v297;
          SCAParticipant.structParticipant.getter();

          *&v443[0] = v290;
          v300 = *(v290 + 16);
          v299 = *(v290 + 24);
          if (v300 >= v299 >> 1)
          {
            sub_1BC6701A4(v299 > 1, v300 + 1, 1);
            v290 = *&v443[0];
          }

          ++v293;
          *(v290 + 16) = v300 + 1;
          (*(v408 + 32))(v290 + ((*(v408 + 80) + 32) & ~*(v408 + 80)) + *(v408 + 72) * v300, v92, v406);
          v294 = v296;
        }

        while (v417 != v293);
        v91 = v419;
        v289 = v391;
LABEL_28:
        v336 = v377;
        *v377 = v290;
        swift_storeEnumTagMultiPayload();
        v337 = v376;
        sub_1BC6EBE04(v336, 0, v376);
        v338 = v375;
        v339 = v379;
        v340 = v404;
        sub_1BC6EB4BC(v379, v337, v404, v91, v375);
        sub_1BC697848(v337, _s6LayoutVMa);
        sub_1BC66008C(v339, &qword_1EBCDC970, &unk_1BC763180);
        *&v443[0] = v340;
        *(&v443[0] + 1) = v91;
        v341 = swift_getOpaqueTypeConformance2();
        v342 = v409;
        v343 = v409[2];
        v344 = v378;
        v343(v378, v338, v289);
        v345 = v342[1];
        v409 = v342 + 1;
        v418 = v345;
        v345(v338, v289);
        v346 = v407;
        v343(v407, v344, v289);
        v347 = v392;
        sub_1BC633720(v346, v289, v289);
        v540 = v341;
        v541 = v341;
        v348 = v423;
        v349 = swift_getWitnessTable();
        v350 = v386;
        sub_1BC633720(v347, v348, v348);
        (*(v393 + 8))(v347, v348);
        v351 = sub_1BC694E64();
        v538 = v91;
        v539 = v351;
        v536 = swift_getWitnessTable();
        v537 = v341;
        v534 = swift_getWitnessTable();
        v535 = v349;
        v352 = v421;
        v353 = swift_getWitnessTable();
        v532 = v349;
        v533 = v349;
        v354 = v424;
        v355 = swift_getWitnessTable();
        v356 = v398;
        sub_1BC633720(v350, v352, v354);
        (*(v387 + 8))(v350, v354);
        v530 = v353;
        v531 = v355;
        v357 = v412;
        swift_getWitnessTable();
        v528 = v341;
        v529 = v91;
        swift_getWitnessTable();
        sub_1BC633818(v356, v357);
        v358 = v356;
        v3 = v404;
        (*(v399 + 8))(v358, v357);
        v359 = v391;
        v360 = v418;
        v418(v407, v391);
        v360(v378, v359);
LABEL_30:
        v90 = v414;
        break;
      case 6uLL:
        v301 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC978, &qword_1BC76E090);
        v302 = swift_projectBox();
        v303 = v302[1];
        v416 = *v302;
        v304 = v416;
        v305 = v302[2];
        v306 = v383;
        v307 = *(v382 + 16);
        v308 = v380;
        v307(v380, v302 + *(v301 + 48), v383);
        v417 = v305;

        v415 = v303;

        v309 = v400;
        sub_1BC6EBA60(v304, v303, v305);
        v310 = v394;
        v307(v394, v308, v306);
        swift_storeEnumTagMultiPayload();
        v311 = v395;
        sub_1BC6EBE04(v310, 0, v395);
        v312 = v405;
        v313 = v419;
        sub_1BC6EB4BC(v309, v311, v404, v419, v405);
        sub_1BC697848(v311, _s6LayoutVMa);
        sub_1BC66008C(v309, &qword_1EBCDC970, &unk_1BC763180);
        *&v443[0] = v404;
        *(&v443[0] + 1) = v313;
        v314 = v313;
        v315 = swift_getOpaqueTypeConformance2();
        v316 = v409;
        v317 = v409[2];
        v318 = v407;
        v319 = v391;
        v317(v407, v312, v391);
        v320 = v316[1];
        v409 = v316 + 1;
        v418 = v320;
        v320(v312, v319);
        v317(v312, v318, v319);
        v321 = sub_1BC694E64();
        v456 = v314;
        v457 = v321;
        v322 = v397;
        v323 = swift_getWitnessTable();
        v324 = v384;
        sub_1BC633720(v312, v322, v319);
        v454 = v323;
        v455 = v315;
        v325 = v422;
        v326 = swift_getWitnessTable();
        v452 = v315;
        v453 = v315;
        v327 = swift_getWitnessTable();
        v328 = v389;
        sub_1BC633818(v324, v325);
        (*(v385 + 8))(v324, v325);
        v450 = v326;
        v451 = v327;
        v329 = v421;
        v330 = swift_getWitnessTable();
        v448 = v327;
        v449 = v327;
        v331 = swift_getWitnessTable();
        v332 = v398;
        sub_1BC633818(v328, v329);
        (*(v390 + 8))(v328, v329);
        v446 = v330;
        v447 = v331;
        v333 = v412;
        swift_getWitnessTable();
        v444 = v315;
        v334 = v419;
        v445 = v419;
        swift_getWitnessTable();
        sub_1BC633818(v332, v333);

        (*(v399 + 8))(v332, v333);
        v335 = v418;
        v418(v405, v319);
        v335(v407, v319);
        v91 = v334;
        v3 = v404;
        (*(v382 + 8))(v380, v383);
        goto LABEL_30;
      case 7uLL:
      case 8uLL:
      case 9uLL:
      case 0xAuLL:
        v417 = v14;
        v93 = swift_projectBox();
        v94 = v93 + 1;
        v95 = (v93 + 2);
        goto LABEL_6;
      case 0xBuLL:
        v417 = v14;
        v93 = ((v74 & 0xFFFFFFFFFFFFFFFLL) + 16);
        v94 = ((v74 & 0xFFFFFFFFFFFFFFFLL) + 24);
        v95 = ((v74 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
        v96 = *v94;
        v97 = *v93;
        v98 = *v95;

        v99 = v98;

        v100 = v404;
        v101 = v405;
        v91 = v419;
        View.sensitiveContentOverlay(for:options:)(v97, v96, v98, v404, v419, v405);

        *&v443[0] = v100;
        *(&v443[0] + 1) = v91;
        v102 = swift_getOpaqueTypeConformance2();
        v103 = v409;
        v104 = v409[2];
        v105 = v407;
        v106 = v391;
        v104(v407, v101, v391);
        v418 = v103[1];
        v418(v101, v106);
        v104(v101, v105, v106);
        v107 = v417;
        sub_1BC633818(v101, v106);
        v108 = sub_1BC694E64();
        v554 = v91;
        v555 = v108;
        v552 = swift_getWitnessTable();
        v553 = v102;
        v109 = swift_getWitnessTable();
        v550 = v102;
        v551 = v102;
        v110 = swift_getWitnessTable();
        v548 = v109;
        v549 = v110;
        v111 = swift_getWitnessTable();
        v546 = v110;
        v547 = v110;
        v112 = swift_getWitnessTable();
        v544 = v111;
        v545 = v112;
        v113 = v107;
        v114 = v412;
        swift_getWitnessTable();
        v542 = v102;
        v543 = v91;
        v115 = v413;
        swift_getWitnessTable();
        sub_1BC633720(v113, v114, v115);
        (*(v403 + 8))(v113, v115);
        v116 = v418;
        v418(v405, v106);
        v117 = v106;
        v3 = v404;
        v116(v407, v117);
        goto LABEL_30;
      case 0xCuLL:
        v118 = *((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
        v417 = *((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
        v119 = *((v74 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
        KeyPath = swift_getKeyPath();
        v442 = 0;
        *&v439 = MEMORY[0x1E69E7CC8];
        swift_retain_n();
        v416 = v118;
        swift_retain_n();
        v415 = v119;
        swift_bridgeObjectRetain_n();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC980, &qword_1BC7631C0);
        sub_1BC75B630();
        v121 = v443[0];
        *&v439 = 0xF000000000000007;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC988, &qword_1BC7631C8);
        sub_1BC75B630();
        v439 = KeyPath;
        v440[0] = v442;
        *&v440[8] = v121;
        *&v440[24] = v443[0];
        *&v440[40] = v417;
        *&v441 = v118;
        *(&v441 + 1) = v119;
        v122 = v404;
        v123 = v419;
        MEMORY[0x1BFB25FF0](&v439, v404, &type metadata for StackingModifier);
        v443[1] = *v440;
        v443[2] = *&v440[16];
        v443[3] = *&v440[32];
        v443[4] = v441;
        v443[0] = v439;
        sub_1BC694EB8(v443);
        v124 = sub_1BC694E64();
        v437 = v123;
        v438 = v124;
        v125 = v397;
        v126 = swift_getWitnessTable();
        v127 = v65[2];
        v128 = v381;
        v127(v381, v69, v125);
        v129 = v65[1];
        v409 = v65 + 1;
        v418 = v129;
        v129(v69, v125);
        v127(v69, v128, v125);
        *&v439 = v122;
        *(&v439 + 1) = v123;
        v130 = swift_getOpaqueTypeConformance2();
        v131 = v384;
        sub_1BC633818(v69, v125);
        v435 = v126;
        v436 = v130;
        v132 = v422;
        v133 = swift_getWitnessTable();
        v433 = v130;
        v434 = v130;
        v134 = swift_getWitnessTable();
        v135 = v389;
        sub_1BC633818(v131, v132);
        (*(v385 + 8))(v131, v132);
        v431 = v133;
        v432 = v134;
        v136 = v421;
        v137 = swift_getWitnessTable();
        v429 = v134;
        v430 = v134;
        v138 = swift_getWitnessTable();
        v139 = v398;
        sub_1BC633818(v135, v136);
        (*(v390 + 8))(v135, v136);
        v427 = v137;
        v428 = v138;
        v3 = v404;
        v140 = v412;
        swift_getWitnessTable();
        v91 = v419;
        v425 = v130;
        v426 = v419;
        swift_getWitnessTable();
        v141 = v397;
        sub_1BC633818(v139, v140);

        (*(v399 + 8))(v139, v140);
        v142 = v69;
        v143 = v418;
        v418(v142, v141);
        v143(v381, v141);
        goto LABEL_30;
      default:
        v234 = *(v74 + 40);
        v235 = v400;
        sub_1BC6EBA60(*(v74 + 16), *(v74 + 24), *(v74 + 32));
        v236 = v394;
        swift_storeEnumTagMultiPayload();
        v237 = v395;
        sub_1BC6EBE04(v236, v234, v395);
        v238 = v404;
        v239 = v405;
        v91 = v419;
        sub_1BC6EB4BC(v235, v237, v404, v419, v405);
        sub_1BC697848(v237, _s6LayoutVMa);
        sub_1BC66008C(v235, &qword_1EBCDC970, &unk_1BC763180);
        *&v443[0] = v238;
        *(&v443[0] + 1) = v91;
        v240 = swift_getOpaqueTypeConformance2();
        v241 = v409;
        v242 = v409[2];
        v243 = v407;
        v244 = v239;
        v245 = v239;
        v246 = v391;
        v242(v407, v245, v391);
        v247 = v241[1];
        v409 = v241 + 1;
        v418 = v247;
        v247(v244, v246);
        v242(v244, v243, v246);
        v248 = v392;
        sub_1BC633818(v244, v246);
        v249 = sub_1BC694E64();
        v470 = v91;
        v471 = v249;
        v468 = swift_getWitnessTable();
        v469 = v240;
        v250 = v422;
        v251 = swift_getWitnessTable();
        v466 = v240;
        v467 = v240;
        v252 = v423;
        v253 = swift_getWitnessTable();
        v254 = v389;
        sub_1BC633720(v248, v250, v252);
        (*(v393 + 8))(v248, v252);
        v464 = v251;
        v465 = v253;
        v255 = v421;
        v256 = swift_getWitnessTable();
        v462 = v253;
        v463 = v253;
        v257 = swift_getWitnessTable();
        v201 = v398;
        sub_1BC633818(v254, v255);
        (*(v390 + 8))(v254, v255);
        v460 = v256;
        v461 = v257;
        v202 = v412;
        swift_getWitnessTable();
        v458 = v240;
        v459 = v91;
LABEL_14:
        swift_getWitnessTable();
        sub_1BC633818(v201, v202);
        v283 = v201;
        v3 = v404;
        (*(v399 + 8))(v283, v202);
        v284 = v391;
        v285 = v418;
        v418(v405, v391);
        v285(v407, v284);
        goto LABEL_30;
    }
  }

  else
  {
    v76 = v402;
    v77 = *(v402 + 16);
    v78 = v416;
    v77(v416, v418, v3);
    v79 = v417;
    v77(v417, v78, v3);
    *&v443[0] = v3;
    v80 = v419;
    *(&v443[0] + 1) = v419;
    v81 = swift_getOpaqueTypeConformance2();
    sub_1BC633720(v79, OpaqueTypeMetadata2, v3);
    v82 = sub_1BC694E64();
    v584 = v80;
    v585 = v82;
    v582 = swift_getWitnessTable();
    v583 = v81;
    v83 = swift_getWitnessTable();
    v580 = v81;
    v581 = v81;
    v84 = swift_getWitnessTable();
    v578 = v83;
    v579 = v84;
    v85 = swift_getWitnessTable();
    v576 = v84;
    v577 = v84;
    v86 = swift_getWitnessTable();
    v574 = v85;
    v575 = v86;
    v87 = v412;
    swift_getWitnessTable();
    v572 = v81;
    v573 = v80;
    v88 = v413;
    swift_getWitnessTable();
    sub_1BC633720(v14, v87, v88);
    (*(v403 + 8))(v14, v88);
    v89 = *(v76 + 8);
    v89(v417, v3);
    v89(v416, v3);
    v90 = v414;
    v91 = v80;
  }

  v361 = sub_1BC694E64();
  v570 = v91;
  v571 = v361;
  v362 = swift_getWitnessTable();
  *&v443[0] = v3;
  *(&v443[0] + 1) = v91;
  v363 = swift_getOpaqueTypeConformance2();
  v568 = v362;
  v569 = v363;
  v364 = swift_getWitnessTable();
  v566 = v363;
  v567 = v363;
  v365 = swift_getWitnessTable();
  v564 = v364;
  v565 = v365;
  v366 = swift_getWitnessTable();
  v562 = v365;
  v563 = v365;
  v367 = swift_getWitnessTable();
  v560 = v366;
  v561 = v367;
  v368 = swift_getWitnessTable();
  v558 = v363;
  v559 = v91;
  v369 = swift_getWitnessTable();
  v556 = v368;
  v557 = v369;
  v370 = v411;
  swift_getWitnessTable();
  v371 = v410;
  v372 = v420;
  (*(v410 + 16))(v90, v420, v370);
  return (*(v371 + 8))(v372, v370);
}

uint64_t View.sensitiveContentOverlay(for:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = _s6LayoutVMa(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v21 - v18;
  sub_1BC6EBA60(a1, a2, a3);
  sub_1BC6EBE54(v15);
  sub_1BC6EB4BC(v19, v15, a4, a5, a6);
  sub_1BC697848(v15, _s6LayoutVMa);
  return sub_1BC66008C(v19, &qword_1EBCDC970, &unk_1BC763180);
}

uint64_t View.sensitiveContentOverlay(forVideoCallWith:analysis:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  v13 = v12 | 0x1000000000000000;
  v17 = v12 | 0x1000000000000000;
  v14 = a4;
  v15 = a1;

  View.sensitiveContentShield(_:)(&v17, a5, a6);

  return sub_1BC694EE8(v13);
}

uint64_t View.sensitiveContentOverlay(forVideoCallWithJoiningParticipant:analysis:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;
  v13 = v12 | 0x2000000000000000;
  v17 = v12 | 0x2000000000000000;
  v14 = a4;
  v15 = a1;

  View.sensitiveContentShield(_:)(&v17, a5, a6);

  return sub_1BC694EE8(v13);
}

uint64_t View.sensitiveContentOverlay(forThumbnailWith:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
  sub_1BC75B750();
  v6 = v4 | 0xB000000000000000;
  View.sensitiveContentShield(_:)(&v6, a1, a2);
  return sub_1BC694EE8(v4 | 0xB000000000000000);
}

uint64_t View.sensitiveContentOverlay(forThumbnailWith:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a2;
  v23 = a3;
  v6 = sub_1BC759CA0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v21 - v16;
  sub_1BC660024(a1, &v21 - v16, &qword_1EBCDC998, &qword_1BC7641A0);
  v18 = 0;
  if ((*(v7 + 48))(v17, 1, v6) != 1)
  {
    (*(v7 + 32))(v13, v17, v6);
    sub_1BC694F54();
    (*(v7 + 16))(v11, v13, v6);
    v18 = sub_1BC75BFF0();
    (*(v7 + 8))(v13, v6);
  }

  v19 = swift_allocObject();
  v24 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC990, &unk_1BC7631D0);
  sub_1BC75B750();

  v19 |= 0xB000000000000000;
  v24 = v19;
  View.sensitiveContentShield(_:)(&v24, v22, a4);
  return sub_1BC694EE8(v19);
}

uint64_t View.sensitiveContentOverlay(for:options:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = _s6LayoutVMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC6EBE54(v11);
  sub_1BC6EB4BC(a1, v11, a2, a3, a4);
  return sub_1BC697848(v11, _s6LayoutVMa);
}

uint64_t SensitiveParticipantWithCallback.participant.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1BC759D00();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SensitiveParticipantWithCallback.callback.getter()
{
  v1 = (v0 + *(type metadata accessor for SensitiveParticipantWithCallback(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t SensitiveParticipantWithCallback.init(participant:callback:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1BC759D00();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for SensitiveParticipantWithCallback(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1BC692518()
{
  v1 = v0;
  v2 = sub_1BC759FE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StackingModifier.Key(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75C700();
  sub_1BC695E88(v1, v10, type metadata accessor for StackingModifier.Key);
  if ((*(v3 + 48))(v10, 1, v2) == 1)
  {
    MEMORY[0x1BFB272F0](0);
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    MEMORY[0x1BFB272F0](1);
    sub_1BC6978A8(&qword_1EDDCEE68, MEMORY[0x1E697B5B0]);
    sub_1BC75BA70();
    (*(v3 + 8))(v6, v2);
  }

  return sub_1BC75C720();
}

uint64_t sub_1BC692708(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC695E88(v2, v12, type metadata accessor for StackingModifier.Key);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    return MEMORY[0x1BFB272F0](0);
  }

  (*(v5 + 32))(v9, v12, v4);
  MEMORY[0x1BFB272F0](1);
  sub_1BC6978A8(&qword_1EDDCEE68, MEMORY[0x1E697B5B0]);
  sub_1BC75BA70();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1BC6928D4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = sub_1BC759FE0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC75C700();
  sub_1BC695E88(v4, v13, type metadata accessor for StackingModifier.Key);
  if ((*(v6 + 48))(v13, 1, v5) == 1)
  {
    MEMORY[0x1BFB272F0](0);
  }

  else
  {
    (*(v6 + 32))(v10, v13, v5);
    MEMORY[0x1BFB272F0](1);
    sub_1BC6978A8(&qword_1EDDCEE68, MEMORY[0x1E697B5B0]);
    sub_1BC75BA70();
    (*(v6 + 8))(v10, v5);
  }

  return sub_1BC75C720();
}

uint64_t sub_1BC692ACC@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)()@<X1>, uint64_t a3@<X8>)
{
  v55 = a2;
  v56 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v53 - v6;
  v8 = sub_1BC759CA0();
  v53 = *(v8 - 8);
  v9 = *(v53 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v53 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v53 - v20;
  v54 = type metadata accessor for StackingModifier.Entry(0);
  v22 = *(v54 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v54);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  v27 = v26 >> 60;
  if ((v26 >> 60) <= 6)
  {
    if (v27 > 3)
    {
      if (v27 != 4)
      {
        if (v27 == 5)
        {
          v28 = 32;
          v29 = 24;
          v30 = 16;
LABEL_9:
          v32 = v26 & 0xFFFFFFFFFFFFFFFLL;
          v33 = *(v32 + v30);
          v34 = *(v32 + v29);
          v35 = *(v32 + v28);
          v36 = v35;

          v57 = v33;
          v58 = v34;
          v59 = v35;
          v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAA8, &qword_1BC763840);
          MEMORY[0x1BFB262E0](&v60, v37);

          v38 = v60;
          if (v60)
          {
            sub_1BC75BFE0();

            v39 = *(v53 + 32);
            v39(v17, v15, v8);
            v40 = v25;
            v41 = v17;
LABEL_20:
            v39(v40, v41, v8);
            v31 = v54;
            v49 = v55;
            v50 = &v25[*(v54 + 20)];
            *v50 = sub_1BC6978F0;
            v50[1] = v49;
            v51 = v56;
            sub_1BC695EF0(v25, v56, type metadata accessor for StackingModifier.Entry);
            v43 = v51;
            v42 = 0;
            return (*(v22 + 56))(v43, v42, 1, v31);
          }

          goto LABEL_13;
        }

LABEL_12:

LABEL_13:

LABEL_18:
        v42 = 1;
        v43 = v56;
        v31 = v54;
        return (*(v22 + 56))(v43, v42, 1, v31);
      }

      v44 = &qword_1EBCDC968;
      v45 = &qword_1BC763178;
    }

    else
    {
      if ((v27 - 1) < 2)
      {
        v28 = 40;
        v29 = 32;
        v30 = 24;
        goto LABEL_9;
      }

      if (!v27)
      {
        goto LABEL_12;
      }

      v44 = &qword_1EBCDC960;
      v45 = &qword_1BC763170;
    }

    v46 = __swift_instantiateConcreteTypeFromMangledNameV2(v44, v45);
    v47 = swift_projectBox();
    sub_1BC660024(v47 + *(v46 + 64), v21, &qword_1EBCDC970, &unk_1BC763180);

    MEMORY[0x1BFB262E0](v18);
    sub_1BC66008C(v21, &qword_1EBCDC970, &unk_1BC763180);
    v48 = v53;
    if ((*(v53 + 48))(v7, 1, v8) != 1)
    {
      v39 = *(v48 + 32);
      v39(v12, v7, v8);
      v40 = v25;
      v41 = v12;
      goto LABEL_20;
    }

    sub_1BC66008C(v7, &qword_1EBCDC998, &qword_1BC7641A0);
    goto LABEL_18;
  }

  v31 = v54;

  v42 = 1;
  v43 = v56;
  return (*(v22 + 56))(v43, v42, 1, v31);
}

uint64_t sub_1BC692FC0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9C0, &qword_1BC763770);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v21 - v3;
  v5 = v0[3];
  v6 = v0[4];
  v26 = v0[2];
  *v27 = v5;
  *&v27[16] = v6;
  v7 = v0[1];
  v24 = *v0;
  v25 = v7;
  v21 = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9C8, &qword_1BC763778);
  sub_1BC75B640();
  v8 = v23;
  sub_1BC68CDC4(v23, v4);
  sub_1BC694EE8(v8);
  v21 = *&v27[8];
  v22 = *&v27[24];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9D0, &qword_1BC763780);
  MEMORY[0x1BFB262E0](&v23, v9);
  v10 = *(v23 + 16);

  v11 = swift_allocObject();
  v12 = *v27;
  v11[3] = v26;
  v11[4] = v12;
  v11[5] = *&v27[16];
  v13 = v25;
  v11[1] = v24;
  v11[2] = v13;
  v14 = &v4[*(v1 + 36)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9D8, &qword_1BC763798);
  v16 = *(v15 + 36);
  sub_1BC69573C(&v24, &v21);
  sub_1BC75BDF0();
  *&v14[*(v15 + 40)] = v10;
  *v14 = &unk_1BC763790;
  *(v14 + 1) = v11;
  v17 = swift_allocObject();
  v18 = *v27;
  v17[3] = v26;
  v17[4] = v18;
  v17[5] = *&v27[16];
  v19 = v25;
  v17[1] = v24;
  v17[2] = v19;
  sub_1BC69573C(&v24, &v21);
  sub_1BC695800();
  View.onShowContent(_:)(sub_1BC6957F8, v17);

  return sub_1BC66008C(v4, &qword_1EBCDC9C0, &qword_1BC763770);
}

uint64_t sub_1BC693210(uint64_t a1)
{
  v1[38] = a1;
  v2 = sub_1BC759CA0();
  v1[39] = v2;
  v3 = *(v2 - 8);
  v1[40] = v3;
  v4 = *(v3 + 64) + 15;
  v1[41] = swift_task_alloc();
  v5 = type metadata accessor for StackingModifier.Entry(0);
  v1[42] = v5;
  v6 = *(v5 - 8);
  v1[43] = v6;
  v7 = *(v6 + 64) + 15;
  v1[44] = swift_task_alloc();
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA90, &qword_1BC763828) - 8) + 64) + 15;
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v9 = sub_1BC759FE0();
  v1[49] = v9;
  v10 = *(v9 - 8);
  v1[50] = v10;
  v11 = *(v10 + 64) + 15;
  v1[51] = swift_task_alloc();
  v12 = type metadata accessor for StackingModifier.Key(0);
  v1[52] = v12;
  v13 = *(v12 - 8);
  v1[53] = v13;
  v14 = *(v13 + 64) + 15;
  v1[54] = swift_task_alloc();
  v1[55] = swift_task_alloc();
  v1[56] = swift_task_alloc();
  sub_1BC75BDE0();
  v1[57] = sub_1BC75BDD0();
  v16 = sub_1BC75BD80();

  return MEMORY[0x1EEE6DFA0](sub_1BC69348C, v16, v15);
}

uint64_t sub_1BC69348C()
{
  v111 = v0;
  v1 = *(v0 + 456);
  v2 = *(v0 + 304);

  v3 = v2[9];
  v84 = v2[7];
  v85 = v2[8];
  *(v0 + 40) = v84;
  *(v0 + 48) = v85;
  v83 = v3;
  *(v0 + 56) = v3;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9D0, &qword_1BC763780);
  result = MEMORY[0x1BFB262E0]();
  v5 = *(v0 + 224);
  v6 = *(v5 + 16);
  if (!v6)
  {
LABEL_41:
    v77 = *(v0 + 440);
    v78 = *(v0 + 448);
    v97 = *(v0 + 432);
    v99 = *(v0 + 408);
    v100 = *(v0 + 384);
    v102 = *(v0 + 376);
    v104 = *(v0 + 368);
    v106 = *(v0 + 360);
    v107 = *(v0 + 352);
    v109 = *(v0 + 328);

    *(v0 + 280) = v84;
    *(v0 + 296) = v83;
    *(v0 + 64) = v84;
    *(v0 + 72) = v85;
    *(v0 + 80) = v83;
    sub_1BC687F14(v0 + 280, v0 + 200);

    sub_1BC660024(v0 + 296, v0 + 192, &qword_1EBCDCA98, &qword_1BC763830);
    MEMORY[0x1BFB262E0](v82);
    v79 = *(v0 + 208);

    *(v0 + 16) = v84;
    *(v0 + 24) = v85;
    *(v0 + 32) = v83;
    *(v0 + 184) = MEMORY[0x1E69E7CC0];
    sub_1BC75B710();
    sub_1BC687F70(v0 + 280);

    sub_1BC66008C(v0 + 296, &qword_1EBCDCA98, &qword_1BC763830);

    v80 = *(v0 + 8);

    return v80();
  }

  v7 = 0;
  v8 = *(v0 + 400);
  v95 = (v8 + 56);
  v88 = (v8 + 32);
  v89 = (v8 + 16);
  v9 = *(v0 + 344);
  v98 = (v9 + 48);
  v92 = v9;
  v10 = (v9 + 56);
  v11 = *(v0 + 320);
  v86 = (v11 + 8);
  v87 = (v11 + 16);
  v90 = *(v0 + 424);
  v91 = v10;
  v12 = (v5 + 48);
  v105 = *(v0 + 304);
  v93 = *(v5 + 16);
  v94 = *(v0 + 224);
  while (1)
  {
    if (v7 >= *(v5 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      return result;
    }

    v14 = *(v12 - 1);
    v13 = *v12;
    v15 = *(v12 - 2);
    v16 = swift_allocObject();
    *(v16 + 16) = v14;
    *(v16 + 24) = v13;
    v17 = v15 >> 60;
    if ((v15 >> 60) > 5)
    {
      goto LABEL_3;
    }

    if (v17 > 2)
    {
      break;
    }

    if ((v17 - 1) < 2)
    {
      v103 = v7;
      v108 = v16;
      v18 = *(v0 + 440);
      v19 = *(v0 + 392);
      v20 = *((v15 & 0xFFFFFFFFFFFFFFFLL) + 0x10);

      v21 = v20;
      SCAParticipant.structParticipant.getter();

      (*v95)(v18, 0, 1, v19);
      goto LABEL_14;
    }

LABEL_3:

LABEL_4:
    ++v7;
    v12 += 3;
    if (v6 == v7)
    {
      goto LABEL_41;
    }
  }

  v108 = v16;
  v103 = v7;
  if ((v17 - 3) >= 2)
  {
    (*v95)(*(v0 + 440), 1, 1, *(v0 + 392));
  }

  else
  {
    v22 = *(v0 + 440);
    v23 = *(v0 + 408);
    v24 = *(v0 + 392);
    v25 = swift_projectBox();
    (*v89)(v23, v25, v24);
    (*v88)(v22, v23, v24);
    (*v95)(v22, 0, 1, v24);
  }

LABEL_14:
  v26 = *(v0 + 448);
  v27 = *(v0 + 432);
  v28 = *(v0 + 376);
  v29 = *(v0 + 384);
  v30 = *(v0 + 336);
  sub_1BC695EF0(*(v0 + 440), v26, type metadata accessor for StackingModifier.Key);
  v96 = v15;
  v110 = v15;

  sub_1BC692ACC(&v110, v108, v29);
  sub_1BC695E88(v26, v27, type metadata accessor for StackingModifier.Key);
  sub_1BC660024(v29, v28, &qword_1EBCDCA90, &qword_1BC763828);
  v32 = *(v105 + 24);
  v31 = *(v105 + 32);
  *(v0 + 272) = v32;
  *(v0 + 248) = v31;
  *(v0 + 152) = v32;
  *(v0 + 160) = v31;
  v101 = v31;
  sub_1BC660024(v0 + 272, v0 + 232, &qword_1EBCDC980, &qword_1BC7631C0);
  sub_1BC660024(v0 + 248, v0 + 240, &qword_1EBCDCAA0, &qword_1BC763838);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA60, &qword_1BC7637F8);
  sub_1BC75B640();
  v33 = *v98;
  v34 = (*v98)(v28, 1, v30);
  v35 = *(v0 + 432);
  v36 = *(v0 + 376);
  if (v34 == 1)
  {
    sub_1BC66008C(v36, &qword_1EBCDCA90, &qword_1BC763828);
    v37 = *(v0 + 216);
    v38 = sub_1BC695F58(v35);
    if (v39)
    {
      v40 = v38;
      v41 = *(v0 + 216);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *(v0 + 216);
      v110 = v37;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1BC697054();
        v37 = v110;
      }

      v43 = *(v0 + 432);
      v44 = *(v0 + 368);
      sub_1BC697848(v37[6] + *(v90 + 72) * v40, type metadata accessor for StackingModifier.Key);
      sub_1BC695EF0(v37[7] + *(v92 + 72) * v40, v44, type metadata accessor for StackingModifier.Entry);
      sub_1BC696778(v40, v37);
      sub_1BC697848(v43, type metadata accessor for StackingModifier.Key);
      v45 = 0;
    }

    else
    {
      sub_1BC697848(*(v0 + 432), type metadata accessor for StackingModifier.Key);
      v45 = 1;
    }

    v56 = *(v0 + 368);
    (*v91)(v56, v45, 1, *(v0 + 336));
    sub_1BC66008C(v56, &qword_1EBCDCA90, &qword_1BC763828);
    goto LABEL_31;
  }

  sub_1BC695EF0(v36, *(v0 + 352), type metadata accessor for StackingModifier.Entry);
  v46 = *(v0 + 216);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v110 = *(v0 + 216);
  v37 = v110;
  v49 = sub_1BC695F58(v35);
  v50 = v37[2];
  v51 = (v48 & 1) == 0;
  result = v50 + v51;
  if (__OFADD__(v50, v51))
  {
    goto LABEL_48;
  }

  v52 = v48;
  if (v37[3] >= result)
  {
    if ((v47 & 1) == 0)
    {
      sub_1BC697054();
      v37 = v110;
    }

LABEL_27:
    v57 = *(v0 + 432);
    v58 = *(v0 + 352);
    if (v52)
    {
      sub_1BC697918(*(v0 + 352), v37[7] + *(v92 + 72) * v49);
      sub_1BC697848(v57, type metadata accessor for StackingModifier.Key);
    }

    else
    {
      v37[(v49 >> 6) + 8] |= 1 << v49;
      sub_1BC695E88(v57, v37[6] + *(v90 + 72) * v49, type metadata accessor for StackingModifier.Key);
      sub_1BC695EF0(v58, v37[7] + *(v92 + 72) * v49, type metadata accessor for StackingModifier.Entry);
      result = sub_1BC697848(v57, type metadata accessor for StackingModifier.Key);
      v59 = v37[2];
      v60 = __OFADD__(v59, 1);
      v61 = v59 + 1;
      if (v60)
      {
        goto LABEL_49;
      }

      v37[2] = v61;
    }

LABEL_31:
    *(v0 + 120) = v32;
    *(v0 + 128) = v101;
    *(v0 + 256) = v37;
    sub_1BC75B650();
    sub_1BC66008C(v0 + 272, &qword_1EBCDC980, &qword_1BC7631C0);
    sub_1BC66008C(v0 + 248, &qword_1EBCDCAA0, &qword_1BC763838);
    *(v0 + 136) = *(v105 + 40);
    *(v0 + 104) = *(v105 + 40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9C8, &qword_1BC763778);
    sub_1BC75B640();
    v62 = *(v0 + 264);
    if ((~v62 & 0xF000000000000007) != 0)
    {
      v68 = *(v0 + 448);
      v69 = *(v0 + 384);
      sub_1BC694EE8(v62);

      sub_1BC66008C(v69, &qword_1EBCDCA90, &qword_1BC763828);
      v70 = v68;
    }

    else
    {
      v63 = *(v0 + 360);
      v64 = *(v0 + 336);
      sub_1BC660024(*(v0 + 384), v63, &qword_1EBCDCA90, &qword_1BC763828);
      if (v33(v63, 1, v64) == 1)
      {
        v65 = *(v0 + 448);
        v66 = *(v0 + 384);
        v67 = *(v0 + 360);

        sub_1BC66008C(v66, &qword_1EBCDCA90, &qword_1BC763828);
        sub_1BC697848(v65, type metadata accessor for StackingModifier.Key);
        result = sub_1BC66008C(v67, &qword_1EBCDCA90, &qword_1BC763828);
LABEL_40:
        v6 = v93;
        v5 = v94;
        v7 = v103;
        goto LABEL_4;
      }

      v71 = *(v0 + 360);
      v72 = *(v0 + 328);
      v73 = *(v0 + 312);
      (*v87)(v72, v71, v73);
      sub_1BC697848(v71, type metadata accessor for StackingModifier.Entry);
      LOBYTE(v71) = sub_1BC759B70();
      (*v86)(v72, v73);
      v74 = *(v0 + 448);
      v75 = *(v0 + 384);
      if (v71)
      {
        *(v0 + 88) = *(v0 + 136);
        *(v0 + 288) = v96;

        sub_1BC660024(v0 + 136, v0 + 168, &qword_1EBCDC9C8, &qword_1BC763778);
        sub_1BC75B650();

        v76 = *(v0 + 96);
        sub_1BC694EE8(*(v0 + 88));
      }

      else
      {
      }

      sub_1BC66008C(v75, &qword_1EBCDCA90, &qword_1BC763828);
      v70 = v74;
    }

    result = sub_1BC697848(v70, type metadata accessor for StackingModifier.Key);
    goto LABEL_40;
  }

  v53 = *(v0 + 432);
  sub_1BC69615C(result, v47);
  v37 = v110;
  v54 = sub_1BC695F58(v53);
  if ((v52 & 1) == (v55 & 1))
  {
    v49 = v54;
    goto LABEL_27;
  }

  v81 = *(v0 + 416);

  return sub_1BC75C640();
}

uint64_t sub_1BC693FC8(__int128 *a1)
{
  v94 = sub_1BC75ABB0();
  v93 = *(v94 - 8);
  v2 = *(v93 + 64);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v111 = &v91 - v6;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA50, &qword_1BC7637E8);
  v7 = *(*(v128 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v128);
  v110 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v124 = &v91 - v10;
  v122 = sub_1BC759C40();
  v11 = *(v122 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v122 - 8);
  v15 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v109 = &v91 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v91 - v18;
  v127 = sub_1BC759CA0();
  v20 = *(v127 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for StackingModifier.Entry(0);
  v101 = *(v108 - 8);
  v23 = *(v101 + 64);
  v24 = MEMORY[0x1EEE9AC00](v108);
  v125 = &v91 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v100 = &v91 - v26;
  v27 = type metadata accessor for StackingModifier.Key(0);
  v99 = *(v27 - 8);
  v28 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v98 = &v91 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA58, &qword_1BC7637F0);
  v31 = *(*(v30 - 8) + 64);
  v32 = MEMORY[0x1EEE9AC00](v30 - 8);
  v112 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v91 - v34;
  v134 = *(a1 + 24);
  v96 = a1;
  v129 = *(a1 + 24);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA60, &qword_1BC7637F8);
  sub_1BC75B640();
  v36 = 0;
  v38 = v131[0] + 64;
  v37 = *(v131[0] + 64);
  v102 = v131[0];
  v39 = 1 << *(v131[0] + 32);
  v40 = -1;
  if (v39 < 64)
  {
    v40 = ~(-1 << v39);
  }

  v41 = v40 & v37;
  v42 = (v39 + 63) >> 6;
  v123 = (v20 + 16);
  v43 = (v11 + 16);
  v105 = (v11 + 8);
  v97 = (v11 + 32);
  v104 = (v20 + 56);
  v103 = (v20 + 8);
  v119 = v15;
  v118 = v19;
  v117 = v35;
  v107 = v131[0] + 64;
  v106 = v42;
  v116 = (v11 + 16);
  while (1)
  {
    if (!v41)
    {
      if (v42 <= v36 + 1)
      {
        v55 = v36 + 1;
      }

      else
      {
        v55 = v42;
      }

      v56 = v55 - 1;
      while (1)
      {
        v54 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v54 >= v42)
        {
          v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA68, &unk_1BC763800);
          v65 = v112;
          (*(*(v80 - 8) + 56))(v112, 1, 1, v80);
          v41 = 0;
          v36 = v56;
          goto LABEL_17;
        }

        v41 = *(v38 + 8 * v54);
        ++v36;
        if (v41)
        {
          v36 = v54;
          goto LABEL_16;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

    v54 = v36;
LABEL_16:
    v57 = __clz(__rbit64(v41));
    v41 &= v41 - 1;
    v58 = v57 | (v54 << 6);
    v59 = v102;
    v60 = v98;
    sub_1BC695E88(*(v102 + 48) + *(v99 + 72) * v58, v98, type metadata accessor for StackingModifier.Key);
    v61 = v100;
    sub_1BC695E88(*(v59 + 56) + *(v101 + 72) * v58, v100, type metadata accessor for StackingModifier.Entry);
    v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA68, &unk_1BC763800);
    v63 = *(v62 + 48);
    v64 = v60;
    v65 = v112;
    sub_1BC695EF0(v64, v112, type metadata accessor for StackingModifier.Key);
    sub_1BC695EF0(v61, v65 + v63, type metadata accessor for StackingModifier.Entry);
    (*(*(v62 - 8) + 56))(v65, 0, 1, v62);
    v35 = v117;
    v15 = v119;
    v43 = v116;
    v19 = v118;
LABEL_17:
    sub_1BC65FFBC(v65, v35, &qword_1EBCDCA58, &qword_1BC7637F0);
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA68, &unk_1BC763800);
    if ((*(*(v66 - 8) + 48))(v35, 1, v66) == 1)
    {
      break;
    }

    v67 = &v35[*(v66 + 48)];
    v68 = v125;
    sub_1BC695EF0(v67, v125, type metadata accessor for StackingModifier.Entry);
    v121 = *v123;
    v121(v126, v68, v127);
    sub_1BC759C20();
    v120 = sub_1BC759C80();
    v69 = *v43;
    v115 = v70;
    v71 = v122;
    v114 = v69;
    v69(v15);
    v72 = MEMORY[0x1E697B3F0];
    v73 = sub_1BC6978A8(&qword_1EBCDBF78, MEMORY[0x1E697B3F0]);
    v74 = v124;
    v75 = v15;
    v76 = v109;
    v113 = v73;
    sub_1BC75C180();
    sub_1BC6978A8(&qword_1EBCDCA70, v72);
    v77 = sub_1BC75BAB0();
    v78 = *(v128 + 48);
    *v74 = (v77 & 1) == 0;
    v79 = *v105;
    if (v77)
    {
      v79(v19, v71);
      (*v97)(&v74[v78], v76, v71);
      v43 = v116;
    }

    else
    {
      v79(v76, v71);
      v44 = &v74[v78];
      v43 = v116;
      v45 = v114;
      v114(v44, v19, v71);
      v45(v75, v19, v71);
      sub_1BC75C190();
      v79(v19, v71);
    }

    v46 = v110;
    sub_1BC65FFBC(v124, v110, &qword_1EBCDCA50, &qword_1BC7637E8);
    v79((v46 + *(v128 + 48)), v122);
    v120(&v129, 0);
    v48 = v125;
    v47 = v126;
    v49 = v125 + *(v108 + 20);
    v51 = *v49;
    v50 = *(v49 + 8);
    v52 = v111;
    v53 = v127;
    v121(v111, v126, v127);
    (*v104)(v52, 0, 1, v53);
    v51(v52);
    sub_1BC66008C(v52, &qword_1EBCDC998, &qword_1BC7641A0);
    (*v103)(v47, v53);
    sub_1BC697848(v48, type metadata accessor for StackingModifier.Entry);
    v35 = v117;
    sub_1BC697848(v117, type metadata accessor for StackingModifier.Key);
    v15 = v119;
    v19 = v118;
    v38 = v107;
    v42 = v106;
  }

  v129 = v134;
  sub_1BC75B640();
  v35 = *(v131[0] + 16);

  if (qword_1EDDCF470 == -1)
  {
    goto LABEL_22;
  }

LABEL_31:
  swift_once();
LABEL_22:
  v81 = sub_1BC75A4E0();
  __swift_project_value_buffer(v81, qword_1EBCF45A0);
  v82 = sub_1BC75A4C0();
  v83 = sub_1BC75BF40();
  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    *v84 = 134217984;
    *(v84 + 4) = v35;
    _os_log_impl(&dword_1BC630000, v82, v83, "Called back to %ld participants", v84, 0xCu);
    MEMORY[0x1BFB27EF0](v84, -1, -1);
  }

  v85 = sub_1BC697630(MEMORY[0x1E69E7CC0]);
  v129 = v134;
  v131[0] = v85;
  sub_1BC75B650();
  v86 = v96;
  v133 = *(v96 + 40);
  v129 = *(v96 + 40);
  *&v132 = 0xF000000000000007;
  sub_1BC660024(&v133, v131, &qword_1EBCDC9C8, &qword_1BC763778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC9C8, &qword_1BC763778);
  sub_1BC75B650();
  sub_1BC694EE8(v129);

  v129 = *v86;
  v130 = *(v86 + 16);
  v87 = v129;
  if (v130 == 1)
  {
    v132 = v129;
    result = sub_1BC660024(&v129, v131, &qword_1EBCDC850, &qword_1BC762D20);
    if (v87 == 1)
    {
      return result;
    }
  }

  else
  {
    sub_1BC660024(&v129, v131, &qword_1EBCDC850, &qword_1BC762D20);
    sub_1BC75BF70();
    v89 = sub_1BC75AFC0();
    sub_1BC75A4B0();

    v90 = v92;
    sub_1BC75ABA0();
    swift_getAtKeyPath();
    sub_1BC66008C(&v129, &qword_1EBCDC850, &qword_1BC762D20);
    result = (*(v93 + 8))(v90, v94);
    v87 = v132;
    if (v132 == 1)
    {
      return result;
    }
  }

  v131[0] = v87;
  v131[1] = *(&v132 + 1);
  OnShowContentCallback.callAsFunction()();
  return sub_1BC635484(v131[0]);
}

uint64_t sub_1BC694DF0()
{
  v0 = sub_1BC75A4E0();
  __swift_allocate_value_buffer(v0, qword_1EBCF45A0);
  __swift_project_value_buffer(v0, qword_1EBCF45A0);
  return sub_1BC75A4D0();
}

unint64_t sub_1BC694E64()
{
  result = qword_1EDDD1498;
  if (!qword_1EDDD1498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD1498);
  }

  return result;
}

uint64_t sub_1BC694EE8(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  v3 = *(v1 + 16);

  v4 = *(v1 + 24);

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

unint64_t sub_1BC694F54()
{
  result = qword_1EDDCDF98;
  if (!qword_1EDDCDF98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDDCDF98);
  }

  return result;
}

uint64_t sub_1BC694FCC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x74 && *(a1 + 8))
  {
    return (*a1 + 116);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x73)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1BC69501C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x73)
  {
    *result = a2 - 116;
    if (a3 >= 0x74)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x74)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1BC6952BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  result = a4(319);
  if (v5 <= 0x3F)
  {
    result = sub_1BC6335A0();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1BC69538C()
{
  v0 = sub_1BC759FE0();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v0;
}

uint64_t get_enum_tag_for_layout_string_26SensitiveContentAnalysisUI0aB7OverlayV4KindOSg(void *a1)
{
  v1 = (*a1 >> 60) & 0x8F | (16 * (*a1 & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x73)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1BC695408(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BC695450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata accessor for SCUISensitiveContentOverlayOptions()
{
  if (!qword_1EDDCE708)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EDDCE708);
    }
  }
}

unint64_t sub_1BC695628()
{
  result = qword_1EDDD15C0[0];
  if (!qword_1EDDD15C0[0])
  {
    type metadata accessor for StackingModifier.Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD15C0);
  }

  return result;
}

uint64_t sub_1BC69569C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
    return sub_1BC635480(result);
  }

  else
  {
  }
}

uint64_t sub_1BC6956A8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1BC65281C;

  return sub_1BC693210(v0 + 16);
}

uint64_t objectdestroy_45Tm()
{
  sub_1BC69569C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  if ((~*(v0 + 56) & 0xF000000000000007) != 0)
  {
  }

  v3 = *(v0 + 64);

  v4 = *(v0 + 72);

  v5 = *(v0 + 80);

  v6 = *(v0 + 88);

  return MEMORY[0x1EEE6BDD0](v0, 96, 7);
}

unint64_t sub_1BC695800()
{
  result = qword_1EBCDC9E0;
  if (!qword_1EBCDC9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC9C0, &qword_1BC763770);
    sub_1BC6958B8();
    sub_1BC633C54(&qword_1EBCDCA48, &qword_1EBCDC9D8, &qword_1BC763798);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC9E0);
  }

  return result;
}

unint64_t sub_1BC6958B8()
{
  result = qword_1EBCDC9E8;
  if (!qword_1EBCDC9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC9F0, &qword_1BC7637A0);
    sub_1BC695944();
    sub_1BC695D90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC9E8);
  }

  return result;
}

unint64_t sub_1BC695944()
{
  result = qword_1EBCDC9F8;
  if (!qword_1EBCDC9F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA00, &qword_1BC7637A8);
    sub_1BC6959D0();
    sub_1BC695D0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDC9F8);
  }

  return result;
}

unint64_t sub_1BC6959D0()
{
  result = qword_1EDDCE088;
  if (!qword_1EDDCE088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA08, &qword_1BC7637B0);
    sub_1BC695A5C();
    sub_1BC695C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE088);
  }

  return result;
}

unint64_t sub_1BC695A5C()
{
  result = qword_1EDDCE0C0;
  if (!qword_1EDDCE0C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA10, &qword_1BC7637B8);
    sub_1BC695B60();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA20, &qword_1BC7637C8);
    sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0C0);
  }

  return result;
}

unint64_t sub_1BC695B60()
{
  result = qword_1EDDCE148;
  if (!qword_1EDDCE148)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA18, &qword_1BC7637C0);
    sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
    sub_1BC694E64();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE148);
  }

  return result;
}

unint64_t sub_1BC695C18()
{
  result = qword_1EDDCE0A8;
  if (!qword_1EDDCE0A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA28, &qword_1BC7637D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA20, &qword_1BC7637C8);
    sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0A8);
  }

  return result;
}

unint64_t sub_1BC695D0C()
{
  result = qword_1EBCDCA30;
  if (!qword_1EBCDCA30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA38, &qword_1BC7637D8);
    sub_1BC695C18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCA30);
  }

  return result;
}

unint64_t sub_1BC695D90()
{
  result = qword_1EDDCE0B0;
  if (!qword_1EDDCE0B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA40, &qword_1BC7637E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCA20, &qword_1BC7637C8);
    sub_1BC633C54(&qword_1EDDCE068, &qword_1EBCDCA20, &qword_1BC7637C8);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0B0);
  }

  return result;
}

uint64_t sub_1BC695E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC695EF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC695F58(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StackingModifier.Key(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + 40);
  sub_1BC75C700();
  sub_1BC695E88(a1, v12, type metadata accessor for StackingModifier.Key);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    MEMORY[0x1BFB272F0](0);
  }

  else
  {
    (*(v5 + 32))(v8, v12, v4);
    MEMORY[0x1BFB272F0](1);
    sub_1BC6978A8(&qword_1EDDCEE68, MEMORY[0x1E697B5B0]);
    sub_1BC75BA70();
    (*(v5 + 8))(v8, v4);
  }

  v14 = sub_1BC75C720();
  return sub_1BC696C04(a1, v14);
}

uint64_t sub_1BC69615C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = sub_1BC759FE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StackingModifier.Entry(0);
  v64 = *(v10 - 8);
  v11 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v58 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StackingModifier.Key(0);
  v63 = *(v13 - 8);
  v14 = *(v63 + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v62 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v54 - v17;
  v19 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v20 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA80, &qword_1BC763818);
  v65 = a2;
  result = sub_1BC75C410();
  v22 = result;
  if (*(v19 + 16))
  {
    v61 = v6;
    v54 = v3;
    v23 = 0;
    v24 = (v19 + 64);
    v25 = 1 << *(v19 + 32);
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v27 = v26 & *(v19 + 64);
    v28 = (v25 + 63) >> 6;
    v60 = (v7 + 48);
    v56 = (v7 + 32);
    v55 = (v7 + 8);
    v29 = result + 64;
    v59 = v19;
    v30 = v58;
    while (v27)
    {
      v32 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v35 = v32 | (v23 << 6);
      v36 = *(v19 + 48);
      v67 = *(v63 + 72);
      v37 = v36 + v67 * v35;
      if (v65)
      {
        sub_1BC695EF0(v37, v18, type metadata accessor for StackingModifier.Key);
        v38 = *(v19 + 56);
        v66 = *(v64 + 72);
        sub_1BC695EF0(v38 + v66 * v35, v30, type metadata accessor for StackingModifier.Entry);
      }

      else
      {
        sub_1BC695E88(v37, v18, type metadata accessor for StackingModifier.Key);
        v39 = *(v19 + 56);
        v66 = *(v64 + 72);
        sub_1BC695E88(v39 + v66 * v35, v30, type metadata accessor for StackingModifier.Entry);
      }

      v40 = *(v22 + 40);
      sub_1BC75C700();
      v41 = v18;
      v42 = v62;
      sub_1BC695E88(v18, v62, type metadata accessor for StackingModifier.Key);
      v43 = v61;
      if ((*v60)(v42, 1, v61) == 1)
      {
        MEMORY[0x1BFB272F0](0);
      }

      else
      {
        v44 = v57;
        (*v56)(v57, v42, v43);
        MEMORY[0x1BFB272F0](1);
        sub_1BC6978A8(&qword_1EDDCEE68, MEMORY[0x1E697B5B0]);
        sub_1BC75BA70();
        v45 = v44;
        v30 = v58;
        (*v55)(v45, v43);
      }

      result = sub_1BC75C720();
      v46 = -1 << *(v22 + 32);
      v47 = result & ~v46;
      v48 = v47 >> 6;
      v18 = v41;
      if (((-1 << v47) & ~*(v29 + 8 * (v47 >> 6))) == 0)
      {
        v49 = 0;
        v50 = (63 - v46) >> 6;
        while (++v48 != v50 || (v49 & 1) == 0)
        {
          v51 = v48 == v50;
          if (v48 == v50)
          {
            v48 = 0;
          }

          v49 |= v51;
          v52 = *(v29 + 8 * v48);
          if (v52 != -1)
          {
            v31 = __clz(__rbit64(~v52)) + (v48 << 6);
            goto LABEL_9;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v31 = __clz(__rbit64((-1 << v47) & ~*(v29 + 8 * (v47 >> 6)))) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v29 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
      sub_1BC695EF0(v41, *(v22 + 48) + v67 * v31, type metadata accessor for StackingModifier.Key);
      result = sub_1BC695EF0(v30, *(v22 + 56) + v66 * v31, type metadata accessor for StackingModifier.Entry);
      ++*(v22 + 16);
      v19 = v59;
    }

    v33 = v23;
    while (1)
    {
      v23 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        __break(1u);
        goto LABEL_41;
      }

      if (v23 >= v28)
      {
        break;
      }

      v34 = v24[v23];
      ++v33;
      if (v34)
      {
        v32 = __clz(__rbit64(v34));
        v27 = (v34 - 1) & v34;
        goto LABEL_17;
      }
    }

    if ((v65 & 1) == 0)
    {

      v3 = v54;
      goto LABEL_39;
    }

    v53 = 1 << *(v19 + 32);
    v3 = v54;
    if (v53 >= 64)
    {
      bzero(v24, ((v53 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v24 = -1 << v53;
    }

    *(v19 + 16) = 0;
  }

LABEL_39:
  *v3 = v22;
  return result;
}

unint64_t sub_1BC696778(int64_t a1, uint64_t a2)
{
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for StackingModifier.Key(0);
  v8 = *(*(v45 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v45);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v15 = &v45 - v14;
  v16 = a2 + 64;
  v17 = -1 << *(a2 + 32);
  v18 = (a1 + 1) & ~v17;
  if ((*(a2 + 64 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v52 = v4;
    v19 = ~v17;
    v20 = v13;
    v21 = sub_1BC75C1C0();
    v22 = *(v20 + 72);
    v50 = (v5 + 48);
    v51 = (v21 + 1) & v19;
    v46 = (v5 + 8);
    v47 = (v5 + 32);
    v23 = v22;
    v53 = v22;
    do
    {
      v24 = v23 * v18;
      sub_1BC695E88(*(a2 + 48) + v23 * v18, v15, type metadata accessor for StackingModifier.Key);
      v25 = *(a2 + 40);
      sub_1BC75C700();
      sub_1BC695E88(v15, v11, type metadata accessor for StackingModifier.Key);
      v26 = v52;
      if ((*v50)(v11, 1, v52) == 1)
      {
        MEMORY[0x1BFB272F0](0);
      }

      else
      {
        v27 = *v47;
        v49 = a1;
        v28 = v15;
        v29 = a2;
        v30 = v19;
        v31 = v16;
        v32 = v48;
        v27(v48, v11, v26);
        MEMORY[0x1BFB272F0](1);
        sub_1BC6978A8(&qword_1EDDCEE68, MEMORY[0x1E697B5B0]);
        sub_1BC75BA70();
        v33 = v32;
        v16 = v31;
        v19 = v30;
        a2 = v29;
        v15 = v28;
        a1 = v49;
        (*v46)(v33, v26);
      }

      v34 = sub_1BC75C720();
      result = sub_1BC697848(v15, type metadata accessor for StackingModifier.Key);
      v35 = v34 & v19;
      if (a1 >= v51)
      {
        v23 = v53;
        if (v35 < v51)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v23 = v53;
        if (v35 >= v51)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v35)
      {
LABEL_13:
        if (v23 * a1 < v24 || *(a2 + 48) + v23 * a1 >= (*(a2 + 48) + v24 + v23))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v23 * a1 != v24)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v36 = *(a2 + 56);
        v37 = *(*(type metadata accessor for StackingModifier.Entry(0) - 8) + 72);
        v38 = v37 * a1;
        result = v36 + v37 * a1;
        v39 = v37 * v18;
        v40 = v36 + v37 * v18 + v37;
        if (v38 < v39 || result >= v40)
        {
          result = swift_arrayInitWithTakeFrontToBack();
          a1 = v18;
          v23 = v53;
        }

        else
        {
          a1 = v18;
          v23 = v53;
          if (v38 != v39)
          {
            result = swift_arrayInitWithTakeBackToFront();
            a1 = v18;
          }
        }
      }

LABEL_4:
      v18 = (v18 + 1) & v19;
    }

    while (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
  }

  *(v16 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v42 = *(a2 + 16);
  v43 = __OFSUB__(v42, 1);
  v44 = v42 - 1;
  if (v43)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v44;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BC696C04(uint64_t a1, uint64_t a2)
{
  v39 = a1;
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA88, &qword_1BC763820);
  v8 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v10 = &v31 - v9;
  v11 = type metadata accessor for StackingModifier.Key(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v31 - v17;
  v19 = v2 + 64;
  v40 = v2;
  v20 = -1 << *(v2 + 32);
  v21 = a2 & ~v20;
  if ((*(v2 + 64 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
  {
    v22 = *(v16 + 72);
    v36 = ~v20;
    v37 = v22;
    v23 = (v5 + 48);
    v32 = (v5 + 32);
    v35 = (v5 + 8);
    while (1)
    {
      sub_1BC695E88(*(v40 + 48) + v37 * v21, v18, type metadata accessor for StackingModifier.Key);
      v24 = *(v38 + 48);
      sub_1BC695E88(v18, v10, type metadata accessor for StackingModifier.Key);
      sub_1BC695E88(v39, &v10[v24], type metadata accessor for StackingModifier.Key);
      v25 = *v23;
      if ((*v23)(v10, 1, v4) == 1)
      {
        break;
      }

      sub_1BC695E88(v10, v15, type metadata accessor for StackingModifier.Key);
      if (v25(&v10[v24], 1, v4) == 1)
      {
        sub_1BC697848(v18, type metadata accessor for StackingModifier.Key);
        (*v35)(v15, v4);
LABEL_4:
        sub_1BC66008C(v10, &qword_1EBCDCA88, &qword_1BC763820);
        goto LABEL_5;
      }

      v26 = v19;
      v27 = v33;
      (*v32)(v33, &v10[v24], v4);
      v34 = MEMORY[0x1BFB24B70](v15, v27);
      v28 = *v35;
      v29 = v27;
      v19 = v26;
      (*v35)(v29, v4);
      sub_1BC697848(v18, type metadata accessor for StackingModifier.Key);
      v28(v15, v4);
      if (v34)
      {
LABEL_12:
        sub_1BC697848(v10, type metadata accessor for StackingModifier.Key);
        return v21;
      }

      sub_1BC697848(v10, type metadata accessor for StackingModifier.Key);
LABEL_5:
      v21 = (v21 + 1) & v36;
      if (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
      {
        return v21;
      }
    }

    sub_1BC697848(v18, type metadata accessor for StackingModifier.Key);
    if (v25(&v10[v24], 1, v4) == 1)
    {
      goto LABEL_12;
    }

    goto LABEL_4;
  }

  return v21;
}

char *sub_1BC697054()
{
  v1 = v0;
  v2 = type metadata accessor for StackingModifier.Entry(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StackingModifier.Key(0);
  v32 = *(v5 - 8);
  v6 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA80, &qword_1BC763818);
  v8 = *v0;
  v9 = sub_1BC75C400();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = (v8 + 64);
    v13 = ((1 << *(v10 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v8 + 64;
    if (v10 != v8 || result >= &v12[8 * v13])
    {
      result = memmove(result, v12, 8 * v13);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v35 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v36 = (v18 - 1) & v18;
LABEL_14:
        v23 = v20 | (v14 << 6);
        v24 = v31;
        v25 = *(v32 + 72) * v23;
        sub_1BC695E88(*(v8 + 48) + v25, v31, type metadata accessor for StackingModifier.Key);
        v26 = v33;
        v27 = *(v34 + 72) * v23;
        sub_1BC695E88(*(v8 + 56) + v27, v33, type metadata accessor for StackingModifier.Entry);
        v28 = v35;
        sub_1BC695EF0(v24, *(v35 + 48) + v25, type metadata accessor for StackingModifier.Key);
        result = sub_1BC695EF0(v26, *(v28 + 56) + v27, type metadata accessor for StackingModifier.Entry);
        v18 = v36;
      }

      while (v36);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v1 = v29;
        v10 = v35;
        goto LABEL_18;
      }

      v22 = *(v30 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v36 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v10;
  }

  return result;
}

uint64_t sub_1BC697348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC759FE0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StackingModifier.Key(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA88, &qword_1BC763820);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v17 = &v23 - v16;
  v18 = *(v15 + 56);
  sub_1BC695E88(a1, &v23 - v16, type metadata accessor for StackingModifier.Key);
  sub_1BC695E88(a2, &v17[v18], type metadata accessor for StackingModifier.Key);
  v19 = *(v5 + 48);
  if (v19(v17, 1, v4) != 1)
  {
    sub_1BC695E88(v17, v12, type metadata accessor for StackingModifier.Key);
    if (v19(&v17[v18], 1, v4) != 1)
    {
      (*(v5 + 32))(v8, &v17[v18], v4);
      v20 = MEMORY[0x1BFB24B70](v12, v8);
      v21 = *(v5 + 8);
      v21(v8, v4);
      v21(v12, v4);
      sub_1BC697848(v17, type metadata accessor for StackingModifier.Key);
      return v20 & 1;
    }

    (*(v5 + 8))(v12, v4);
    goto LABEL_6;
  }

  if (v19(&v17[v18], 1, v4) != 1)
  {
LABEL_6:
    sub_1BC66008C(v17, &qword_1EBCDCA88, &qword_1BC763820);
    v20 = 0;
    return v20 & 1;
  }

  sub_1BC697848(v17, type metadata accessor for StackingModifier.Key);
  v20 = 1;
  return v20 & 1;
}

unint64_t sub_1BC697630(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA78, &qword_1BC763810);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCA80, &qword_1BC763818);
    v8 = sub_1BC75C420();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1BC660024(v10, v6, &qword_1EBCDCA78, &qword_1BC763810);
      result = sub_1BC695F58(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for StackingModifier.Key(0);
      sub_1BC695EF0(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for StackingModifier.Key);
      v17 = v8[7];
      v18 = type metadata accessor for StackingModifier.Entry(0);
      result = sub_1BC695EF0(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for StackingModifier.Entry);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1BC697848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC6978A8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC6978F0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_1BC697918(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StackingModifier.Entry(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC69799C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E65767265746E69 && a2 == 0xEC0000006E6F6974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1BC75C5E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1BC697A28(uint64_t a1)
{
  v2 = sub_1BC698018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC697A64(uint64_t a1)
{
  v2 = sub_1BC698018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1BC697AA0()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1BC697ABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1BC75C5E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1BC75C5E0();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1BC697B94(uint64_t a1)
{
  v2 = sub_1BC69806C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BC697BD0(uint64_t a1)
{
  v2 = sub_1BC69806C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RemoteView.Config.encode(to:)(void *a1)
{
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAF0, &qword_1BC763890);
  v56 = *(v25 - 8);
  v2 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v4 = &v24 - v3;
  v5 = type metadata accessor for RemoteView.Config();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCAF8, &qword_1BC763898);
  v28 = *(v9 - 8);
  v10 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BC698018();
  v14 = v25;
  sub_1BC75C740();
  sub_1BC698AB0(v26, v8, type metadata accessor for RemoteView.Config);
  v15 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0) + 48)];
  v16 = *(v15 + 11);
  v53 = *(v15 + 10);
  v54 = v16;
  v55 = *(v15 + 12);
  v17 = *(v15 + 7);
  v49 = *(v15 + 6);
  v50 = v17;
  v18 = *(v15 + 9);
  v51 = *(v15 + 8);
  v52 = v18;
  v19 = *(v15 + 5);
  v47 = *(v15 + 4);
  v48 = v19;
  v20 = *(v15 + 3);
  v45 = *(v15 + 2);
  v46 = v20;
  v21 = *(v15 + 1);
  v43 = *v15;
  v44 = v21;
  sub_1BC69806C();
  sub_1BC75C4E0();
  LOBYTE(v30) = 0;
  type metadata accessor for InterventionConfig(0);
  sub_1BC698670(&qword_1EBCDCB08);
  v22 = v27;
  sub_1BC75C560();
  sub_1BC6980C0(v8);
  if (v22)
  {
    sub_1BC69811C(&v43);
    (*(v56 + 8))(v4, v14);
    return (*(v28 + 8))(v12, v9);
  }

  else
  {
    v40 = v53;
    v41 = v54;
    v42 = v55;
    v36 = v49;
    v37 = v50;
    v38 = v51;
    v39 = v52;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v35 = v48;
    v30 = v43;
    v31 = v44;
    v29 = 1;
    sub_1BC698170();
    sub_1BC75C560();
    (*(v56 + 8))(v4, v14);
    (*(v28 + 8))(v12, v9);
    return sub_1BC69811C(&v43);
  }
}

uint64_t type metadata accessor for RemoteView.Config()
{
  result = qword_1EBCE5A60;
  if (!qword_1EBCE5A60)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1BC698018()
{
  result = qword_1EBCE57D0;
  if (!qword_1EBCE57D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE57D0);
  }

  return result;
}

unint64_t sub_1BC69806C()
{
  result = qword_1EBCE57D8[0];
  if (!qword_1EBCE57D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE57D8);
  }

  return result;
}

uint64_t sub_1BC6980C0(uint64_t a1)
{
  v2 = type metadata accessor for InterventionConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1BC698170()
{
  result = qword_1EBCDCB10;
  if (!qword_1EBCDCB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCB10);
  }

  return result;
}

uint64_t RemoteView.Config.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v31 = type metadata accessor for RemoteView.Config();
  v3 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB18, &qword_1BC7638A8);
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB20, &unk_1BC7638B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = a1[3];
  v16 = a1[4];
  v34 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1BC698018();
  v17 = v33;
  sub_1BC75C730();
  if (!v17)
  {
    v18 = v32;
    v33 = v11;
    v19 = sub_1BC75C4D0();
    if (*(v19 + 16) == 1)
    {
      sub_1BC69806C();
      sub_1BC75C450();
      v31 = v19;
      type metadata accessor for InterventionConfig(0);
      v36 = 0;
      sub_1BC698670(&qword_1EBCDCB28);
      v25 = v5;
      v26 = v6;
      sub_1BC75C4C0();
      v27 = v33;
      v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0) + 48);
      v35 = 1;
      sub_1BC6986B4();
      sub_1BC75C4C0();
      (*(v18 + 8))(v9, v26);
      (*(v27 + 8))(v14, v10);
      swift_unknownObjectRelease();
      sub_1BC698A48(v25, v30, type metadata accessor for RemoteView.Config);
    }

    else
    {
      v20 = sub_1BC75C300();
      swift_allocError();
      v22 = v21;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBEF0, &unk_1BC767CA0) + 48);
      *v22 = v31;
      sub_1BC75C460();
      sub_1BC75C2F0();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v33 + 8))(v14, v10);
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v34);
}

uint64_t sub_1BC698670(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for InterventionConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1BC6986B4()
{
  result = qword_1EBCDCB30;
  if (!qword_1EBCDCB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCB30);
  }

  return result;
}

uint64_t RemoteView.Error.hashValue.getter()
{
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](0);
  return sub_1BC75C720();
}

uint64_t sub_1BC6987B0()
{
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](0);
  return sub_1BC75C720();
}

uint64_t sub_1BC698820()
{
  sub_1BC75C700();
  MEMORY[0x1BFB272F0](0);
  return sub_1BC75C720();
}

uint64_t sub_1BC69886C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for InterventionConfig(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for RemoteView.Config();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC698AB0(v3, v13, type metadata accessor for RemoteView.Config);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0);
  v15 = &v13[*(v14 + 48)];
  v16 = *(v15 + 11);
  v35 = *(v15 + 10);
  v36 = v16;
  v37 = *(v15 + 12);
  v17 = *(v15 + 7);
  v31 = *(v15 + 6);
  v32 = v17;
  v18 = *(v15 + 9);
  v33 = *(v15 + 8);
  v34 = v18;
  v19 = *(v15 + 5);
  v29 = *(v15 + 4);
  v30 = v19;
  v20 = *(v15 + 3);
  v27 = *(v15 + 2);
  v28 = v20;
  v21 = *(v15 + 1);
  v25 = *v15;
  v26 = v21;
  sub_1BC698A48(v13, v9, type metadata accessor for InterventionConfig);
  v22 = *(v14 + 48);
  sub_1BC698AB0(v9, a2, type metadata accessor for InterventionConfig);
  v24[10] = v35;
  v24[11] = v36;
  v24[12] = v37;
  v24[6] = v31;
  v24[7] = v32;
  v24[8] = v33;
  v24[9] = v34;
  v24[2] = v27;
  v24[3] = v28;
  v24[4] = v29;
  v24[5] = v30;
  v24[0] = v25;
  v24[1] = v26;
  sub_1BC7176B8(a1, (a2 + v22));
  sub_1BC6980C0(v9);
  return sub_1BC69811C(&v25);
}

uint64_t sub_1BC698A48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1BC698AB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1BC698B1C()
{
  result = qword_1EBCDCB38;
  if (!qword_1EBCDCB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCB38);
  }

  return result;
}

uint64_t sub_1BC698B70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1BC698BE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB00, &qword_1BC7638A0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1BC698C78(uint64_t a1)
{
  sub_1BC698D4C();
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v5 = type metadata accessor for InterventionConfig(319);
    v3 = v5;
    if (v6 <= 0x3F)
    {
      v7 = *(v5 - 8);
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v9;
    }
  }

  return v3;
}

void sub_1BC698D4C()
{
  if (!qword_1EBCDCB40)
  {
    type metadata accessor for InterventionConfig(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBCDCB40);
    }
  }
}

unint64_t sub_1BC698DF0()
{
  result = qword_1EBCE5B70[0];
  if (!qword_1EBCE5B70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5B70);
  }

  return result;
}

unint64_t sub_1BC698E48()
{
  result = qword_1EBCE5D80[0];
  if (!qword_1EBCE5D80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5D80);
  }

  return result;
}

unint64_t sub_1BC698EA0()
{
  result = qword_1EBCE5E90;
  if (!qword_1EBCE5E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE5E90);
  }

  return result;
}

unint64_t sub_1BC698EF8()
{
  result = qword_1EBCE5E98[0];
  if (!qword_1EBCE5E98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5E98);
  }

  return result;
}

unint64_t sub_1BC698F50()
{
  result = qword_1EBCE5F20;
  if (!qword_1EBCE5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCE5F20);
  }

  return result;
}

unint64_t sub_1BC698FA8()
{
  result = qword_1EBCE5F28[0];
  if (!qword_1EBCE5F28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBCE5F28);
  }

  return result;
}

uint64_t sub_1BC699010()
{
  v1 = type metadata accessor for Report.Authority(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ReportScreen(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC699240(v0, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      MEMORY[0x1BFB272F0](3);
      v11 = type metadata accessor for ReportScreen;
      v12 = v8;
    }

    else
    {
      sub_1BC69B938(v8, v4, type metadata accessor for Report.Authority);
      sub_1BC69B550(&qword_1EBCDCB48, type metadata accessor for Report.Authority);
      sub_1BC75BA70();
      MEMORY[0x1BFB272F0](1);
      v11 = type metadata accessor for Report.Authority;
      v12 = v4;
    }

    return sub_1BC6992A4(v12, v11);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1BC6992A4(v8, type metadata accessor for ReportScreen);
      v10 = 4;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      sub_1BC6992A4(v8, type metadata accessor for ReportScreen);
      v10 = 5;
    }

    else
    {
      v10 = 2;
    }

    return MEMORY[0x1BFB272F0](v10);
  }
}

uint64_t sub_1BC699240(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReportScreen(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC6992A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC699304()
{
  sub_1BC75C700();
  sub_1BC699010();
  return sub_1BC75C720();
}

uint64_t sub_1BC699348()
{
  sub_1BC75C700();
  sub_1BC699010();
  return sub_1BC75C720();
}

void sub_1BC699388()
{
  v0 = sub_1BC75BB30();
  v1 = [objc_opt_self() systemImageNamed_];

  qword_1EBCF45B8 = v1;
}

void sub_1BC6993F8()
{
  v0 = sub_1BC75BB30();
  v1 = [objc_opt_self() systemImageNamed_];

  qword_1EBCF45C0 = v1;
}

void sub_1BC699468()
{
  v0 = sub_1BC75BB30();
  v1 = [objc_opt_self() systemImageNamed_];

  qword_1EBCF45C8 = v1;
}

void sub_1BC6994D8()
{
  v0 = sub_1BC75BB30();
  v1 = [objc_opt_self() systemImageNamed_];

  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDDC60, &qword_1BC761180);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_1BC763C30;
    *(v2 + 32) = [objc_opt_self() systemGreenColor];
    sub_1BC65F664(0, &qword_1EBCDCB88, 0x1E69DC888);
    v3 = sub_1BC75BCF0();

    v4 = [objc_opt_self() configurationWithPaletteColors_];

    v5 = [v1 imageWithSymbolConfiguration_];
  }

  else
  {
    v5 = 0;
  }

  qword_1EBCF45D0 = v5;
}

void *sub_1BC699B5C()
{
  v1 = type metadata accessor for ReportScreen(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC699240(v0, v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v6 = 0;
    if (EnumCaseMultiPayload == 3)
    {
      sub_1BC6992A4(v4, type metadata accessor for ReportScreen);
      if (qword_1EBCE5FD0 != -1)
      {
        swift_once();
      }

      v6 = qword_1EBCF45D0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_1BC6992A4(v4, type metadata accessor for ReportScreen);
      if (qword_1EBCE5FC8 != -1)
      {
        swift_once();
      }

      v6 = qword_1EBCF45C8;
LABEL_14:
      v8 = v6;
      return v6;
    }

    v7 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    if ((*(*(v7 - 8) + 48))(v4, 1, v7) == 1)
    {
      if (qword_1EBCE5FB8 != -1)
      {
        swift_once();
      }

      v6 = qword_1EBCF45C0;
      goto LABEL_14;
    }

    if (qword_1EBCE5FB0 != -1)
    {
      swift_once();
    }

    v6 = qword_1EBCF45B8;
    v10 = qword_1EBCF45B8;
    sub_1BC6992A4(v4, type metadata accessor for Report.Authority);
  }

  return v6;
}

uint64_t sub_1BC699D98@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for ReportScreen(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC699240(v3, v9);
  if (swift_getEnumCaseMultiPayload())
  {
    result = sub_1BC6992A4(v9, type metadata accessor for ReportScreen);
  }

  else
  {
    v11 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
    v12 = (*(*(v11 - 8) + 48))(v9, 1, v11);
    result = sub_1BC6992A4(v9, type metadata accessor for Report.Authority);
    if (v12 == 1 && a1 == 2)
    {
      v14._object = 0x80000001BC7724A0;
      v14._countAndFlagsBits = 0xD000000000000015;
      result = SCLocalizedStringKey.init(stringLiteral:)(v14).localized._countAndFlagsBits;
      v15 = v16[1];
      *a2 = v16[0];
      a2[1] = v15;
      return result;
    }
  }

  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_1BC699EF8()
{
  v1 = type metadata accessor for ReportScreen(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC699240(v0, v4);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    return *v4;
  }

  sub_1BC6992A4(v4, type metadata accessor for ReportScreen);
  return 0;
}

void sub_1BC699FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for SCLocalizedStringKey.StringInterpolation();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v82[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Report.Authority.DirectAuthorityDetails(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = (&v82[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for ReportScreen(0);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v82[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC699240(v4, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = MEMORY[0x1E69E7CC0];
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      if ((*(v11 + 48))(v18, 1, v10) != 1)
      {
        sub_1BC69B938(v18, v14, type metadata accessor for Report.Authority.DirectAuthorityDetails);
        v87 = v20;
        v49 = sub_1BC7012B4();
        swift_beginAccess();
        if (*(v49 + *(type metadata accessor for Report.TestingOptions(0) + 40)) == 1)
        {
          v50._countAndFlagsBits = 0xD00000000000006ELL;
          v50._object = 0x80000001BC772570;
          SCLocalizedStringKey.init(stringLiteral:)(v50);
          v51 = v83;
          v52 = v84;
          v53 = sub_1BC75BB30();
          v54 = [objc_opt_self() systemImageNamed_];

          if (!v54)
          {
LABEL_34:
            __break(1u);
            return;
          }

          v55 = sub_1BC69AF60(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v57 = *(v55 + 2);
          v56 = *(v55 + 3);
          if (v57 >= v56 >> 1)
          {
            v55 = sub_1BC69AF60((v56 > 1), v57 + 1, 1, v55);
          }

          *(v55 + 2) = v57 + 1;
          v58 = &v55[24 * v57];
          *(v58 + 4) = v51;
          *(v58 + 5) = v52;
          *(v58 + 6) = v54;
          v87 = v55;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB50, &qword_1BC763C50);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1BC763C40;
        v60 = v14[4];
        v61 = v14[2];
        *(inited + 32) = v14[3];
        *(inited + 40) = v60;
        *(inited + 48) = v61;
        v62 = v61;

        SCLocalizedStringKey.StringInterpolation.init(literalCapacity:interpolationCount:)();
        v63._countAndFlagsBits = 0xD000000000000019;
        v63._object = 0x80000001BC772510;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v63);
        sub_1BC68106C(&v83);
        v82[0] = v83;
        v82[1] = v84;
        v64.localized._countAndFlagsBits = v82;
        SCLocalizedStringKey.StringInterpolation.appendInterpolation(_:)(v64);

        v65._countAndFlagsBits = 0;
        v65._object = 0xE000000000000000;
        SCLocalizedStringKey.StringInterpolation.appendLiteral(_:)(v65);
        SCLocalizedStringKey.init(stringInterpolation:)(v9, &v83);
        v66 = v83;
        v67 = v84;
        v68 = sub_1BC75BB30();
        v69 = objc_opt_self();
        v70 = [v69 systemImageNamed_];

        if (v70)
        {
          *(inited + 56) = v66;
          *(inited + 64) = v67;
          *(inited + 72) = v70;
          v71._object = 0x80000001BC772530;
          v71._countAndFlagsBits = 0xD000000000000011;
          SCLocalizedStringKey.init(stringLiteral:)(v71);
          v72 = v83;
          v73 = v84;
          v74 = sub_1BC75BB30();
          v75 = [v69 systemImageNamed_];

          if (v75)
          {
            *(inited + 80) = v72;
            *(inited + 88) = v73;
            *(inited + 96) = v75;
            v76._countAndFlagsBits = 0x4F5F535941574C41;
            v76._object = 0xE90000000000004BLL;
            SCLocalizedStringKey.init(stringLiteral:)(v76);
            v77 = v83;
            v78 = v84;
            v79 = sub_1BC75BB30();
            v80 = [v69 systemImageNamed_];

            if (v80)
            {
              *(inited + 104) = v77;
              *(inited + 112) = v78;
              *(inited + 120) = v80;
              sub_1BC69AE68(inited);
              sub_1BC6992A4(v14, type metadata accessor for Report.Authority.DirectAuthorityDetails);
              return;
            }

            goto LABEL_33;
          }

          goto LABEL_31;
        }

        goto LABEL_29;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB50, &qword_1BC763C50);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1BC7615F0;
      sub_1BC6B6BC4(&v85, a4);
      v22 = v85;
      v23 = v86;
      v24 = sub_1BC75BB30();
      v25 = objc_opt_self();
      v26 = [v25 systemImageNamed_];

      if (v26)
      {
        *(v21 + 32) = v22;
        *(v21 + 40) = v23;
        *(v21 + 48) = v26;
        sub_1BC6B6C54(&v85, a4);
        v27 = v85;
        v28 = v86;
        v29 = sub_1BC75BB30();
        v30 = [v25 systemImageNamed_];

        if (v30)
        {
          *(v21 + 56) = v27;
          *(v21 + 64) = v28;
          *(v21 + 72) = v30;
          sub_1BC6B6CE4(&v85, a4);
          v31 = v85;
          v32 = v86;
          v33 = sub_1BC75BB30();
          v34 = [v25 systemImageNamed_];

          if (v34)
          {
            *(v21 + 80) = v31;
            *(v21 + 88) = v32;
            *(v21 + 96) = v34;
            return;
          }

          goto LABEL_32;
        }

        goto LABEL_30;
      }

LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB50, &qword_1BC763C50);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1BC7615F0;
    sub_1BC6B6D74(&v85, a4);
    v36 = v85;
    v37 = v86;
    v38 = sub_1BC75BB30();
    v39 = objc_opt_self();
    v40 = [v39 systemImageNamed_];

    if (v40)
    {
      *(v35 + 32) = v36;
      *(v35 + 40) = v37;
      *(v35 + 48) = v40;
      sub_1BC6B6E18(&v85, a4);
      v41 = v85;
      v42 = v86;
      v43 = sub_1BC75BB30();
      v44 = [v39 systemImageNamed_];

      if (v44)
      {
        *(v35 + 56) = v41;
        *(v35 + 64) = v42;
        *(v35 + 72) = v44;
        sub_1BC6B6EBC(&v85, a4);
        v45 = v85;
        v46 = v86;
        v47 = sub_1BC75BB30();

        v48 = [v39 systemImageNamed_];

        if (v48)
        {
          *(v35 + 80) = v45;
          *(v35 + 88) = v46;
          *(v35 + 96) = v48;
LABEL_15:
          sub_1BC6992A4(v18, type metadata accessor for ReportScreen);
          return;
        }

        goto LABEL_27;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 3)
  {
    goto LABEL_15;
  }
}

uint64_t sub_1BC69AE68(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BC69AF60(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_1BC69AF60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB50, &qword_1BC763C50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1BC69B080(uint64_t a1, uint64_t a2)
{
  v41 = a2;
  v3 = type metadata accessor for Report.Evidence(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Report.Authority(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ReportScreen(0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = (&v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = (&v40 - v17);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v40 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v40 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB90, &unk_1BC763D40);
  v25 = *(*(v24 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v24 - 8);
  v28 = &v40 - v27;
  v29 = (&v40 + *(v26 + 56) - v27);
  sub_1BC699240(a1, &v40 - v27);
  sub_1BC699240(v41, v29);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1BC699240(v28, v21);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v33 = type metadata accessor for Report.Evidence;
        v34 = v21;
        goto LABEL_18;
      }

      sub_1BC69B938(v29, v6, type metadata accessor for Report.Evidence);
      v32 = static Report.Evidence.== infix(_:_:)(v21, v6);
      v37 = type metadata accessor for Report.Evidence;
      sub_1BC6992A4(v6, type metadata accessor for Report.Evidence);
      v38 = v21;
    }

    else
    {
      sub_1BC699240(v28, v23);
      if (swift_getEnumCaseMultiPayload())
      {
        v33 = type metadata accessor for Report.Authority;
        v34 = v23;
LABEL_18:
        sub_1BC6992A4(v34, v33);
        goto LABEL_19;
      }

      sub_1BC69B938(v29, v10, type metadata accessor for Report.Authority);
      v32 = static Report.Authority.== infix(_:_:)(v23, v10);
      v37 = type metadata accessor for Report.Authority;
      sub_1BC6992A4(v10, type metadata accessor for Report.Authority);
      v38 = v23;
    }

    sub_1BC6992A4(v38, v37);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_1BC699240(v28, v18);
    v35 = *v18;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v36 = *v29;
      sub_1BC65F664(0, &qword_1EBCDBC58, 0x1E69E58C0);
      v32 = sub_1BC75C040();

      goto LABEL_22;
    }

    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_1BC699240(v28, v15);
    v31 = v15[1];
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      v32 = sub_1BC6B14E8(*v15, v31, *v29, v29[1]);

LABEL_22:
      sub_1BC6992A4(v28, type metadata accessor for ReportScreen);
      return v32 & 1;
    }

    goto LABEL_19;
  }

  if (swift_getEnumCaseMultiPayload() != 4)
  {
LABEL_19:
    sub_1BC69B8D0(v28);
    v32 = 0;
    return v32 & 1;
  }

  sub_1BC6992A4(v28, type metadata accessor for ReportScreen);
  v32 = 1;
  return v32 & 1;
}

uint64_t sub_1BC69B550(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1BC69B598()
{
  result = type metadata accessor for Report.Authority(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Report.Evidence(319);
    if (v2 <= 0x3F)
    {
      result = sub_1BC65F664(319, &qword_1EBCDCB70, 0x1E696AE38);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_1BC69B658()
{
  result = type metadata accessor for ReportScreen(319);
  if (v1 <= 0x3F)
  {
    result = sub_1BC69B6CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BC69B6CC()
{
  result = qword_1EBCDCB78;
  if (!qword_1EBCDCB78)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EBCDCB78);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BC69B744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BC69B78C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void sub_1BC69B7E4()
{
  sub_1BC69B858();
  if (v0 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void sub_1BC69B858()
{
  if (!qword_1EBCDCB80)
  {
    sub_1BC759800();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EBCDCB80);
    }
  }
}

uint64_t sub_1BC69B8D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCB90, &unk_1BC763D40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC69B938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t View.checkingHistory(of:predicate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a5;
  v9 = type metadata accessor for ParticipantHistoryChecker();
  v10 = *(*(v9 - 1) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 20);

  PolicyProperty.init()(&v13[v14]);
  sub_1BC759D90();
  sub_1BC63305C(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
  *v13 = sub_1BC75A740();
  v13[8] = v15 & 1;
  v16 = &v13[v9[6]];
  sub_1BC759D80();
  v17 = sub_1BC759F30();
  v18 = *(v17 + 48);
  v19 = *(v17 + 52);
  swift_allocObject();
  v25 = sub_1BC759F00();
  sub_1BC75B630();
  v20 = v27;
  *v16 = v26;
  *(v16 + 1) = v20;
  *&v13[v9[7]] = a1;
  v21 = &v13[v9[8]];
  *v21 = a2;
  *(v21 + 1) = a3;

  MEMORY[0x1BFB25FF0](v13, a4, v9, v24);
  return sub_1BC69BB9C(v13);
}

uint64_t type metadata accessor for ParticipantHistoryChecker()
{
  result = qword_1EDDD1210;
  if (!qword_1EDDD1210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BC69BB9C(uint64_t a1)
{
  v2 = type metadata accessor for ParticipantHistoryChecker();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BC69BBF8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = v24 - v4;
  v6 = sub_1BC759EE0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v24 - v12;
  v14 = type metadata accessor for ParticipantHistoryChecker();
  v15 = v0 + *(v14 + 20);
  PolicyProperty.wrappedValue.getter(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_1BC66008C(v5, &unk_1EBCDBD90, &unk_1BC75F850);
    return 0;
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    sub_1BC759E70();
    sub_1BC63305C(&qword_1EDDCF090, MEMORY[0x1E697B510]);
    v17 = sub_1BC75C170();
    v18 = *(v7 + 8);
    v18(v11, v6);
    if (v17)
    {
      v19 = (v1 + *(v14 + 24));
      v21 = *v19;
      v20 = v19[1];
      v24[2] = v21;
      v24[3] = v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBE0, &qword_1BC763EC8);
      sub_1BC75B640();
      v22 = sub_1BC759F10();

      v18(v13, v6);
      return v22;
    }

    else
    {
      sub_1BC759D00();
      v23 = sub_1BC68868C();
      v18(v13, v6);
      return v23;
    }
  }
}

uint64_t sub_1BC69BEA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for ParticipantHistoryChecker();
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v9;
  v11 = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v13 = sub_1BC69BBF8();
  v15 = v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBA8, &qword_1BC763E48);
  (*(*(v16 - 8) + 16))(a2, a1, v16);
  v17 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBB0, &qword_1BC763E50) + 36);
  *v17 = KeyPath;
  *(v17 + 8) = v13;
  *(v17 + 16) = v15;
  sub_1BC69D7F4(v2, v11);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v37[1] = v10;
  v19 = swift_allocObject();
  sub_1BC69D858(v11, v19 + v18);
  v20 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBB8, &qword_1BC763E70) + 36));
  v21 = v20 + *(sub_1BC75A860() + 20);
  sub_1BC75BDF0();
  *v20 = &unk_1BC763E68;
  v20[1] = v19;
  v22 = *(v6 + 36);
  v23 = v2;
  v37[0] = v2;
  v24 = *(v2 + v22);
  sub_1BC69D7F4(v23, v11);
  v25 = swift_allocObject();
  sub_1BC69D858(v11, v25 + v18);
  v26 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBC0, &qword_1BC763E88) + 36));
  v27 = a2;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBC8, &qword_1BC763E90);
  v29 = *(v28 + 36);

  sub_1BC75BDF0();
  *(v26 + *(v28 + 40)) = v24;
  *v26 = &unk_1BC763E80;
  v26[1] = v25;
  v30 = *(v6 + 28);
  v31 = (v27 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBD0, &qword_1BC763E98) + 36));
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBD8, &qword_1BC763EA0);
  v33 = v37[0];
  PolicyProperty.wrappedValue.getter(v31 + *(v32 + 40));
  sub_1BC69D7F4(v33, v11);
  v34 = swift_allocObject();
  sub_1BC69D858(v11, v34 + v18);
  v35 = v31 + *(v32 + 36);
  result = sub_1BC75BDF0();
  *v31 = &unk_1BC763EB0;
  v31[1] = v34;
  return result;
}

uint64_t EnvironmentValues.analysisHistoryCheckStatus.getter()
{
  sub_1BC69C1FC();
  sub_1BC75ABC0();
  return v1;
}

unint64_t sub_1BC69C1FC()
{
  result = qword_1EDDD0AA0[0];
  if (!qword_1EDDD0AA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD0AA0);
  }

  return result;
}

uint64_t sub_1BC69C290(uint64_t a1)
{
  v1[6] = a1;
  v2 = sub_1BC75BDB0();
  v1[7] = v2;
  v3 = *(v2 - 8);
  v1[8] = v3;
  v4 = *(v3 + 64) + 15;
  v1[9] = swift_task_alloc();
  v5 = sub_1BC75A4E0();
  v1[10] = v5;
  v6 = *(v5 - 8);
  v1[11] = v6;
  v7 = *(v6 + 64) + 15;
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_1BC75BDE0();
  v1[15] = sub_1BC75BDD0();
  v9 = sub_1BC75BD80();
  v1[16] = v9;
  v1[17] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BC69C3F8, v9, v8);
}

uint64_t sub_1BC69C3F8()
{
  v1 = v0[6];
  v2 = (v1 + *(type metadata accessor for ParticipantHistoryChecker() + 24));
  v4 = *v2;
  v3 = v2[1];
  v0[2] = v4;
  v0[3] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBE0, &qword_1BC763EC8);
  sub_1BC75B640();
  v0[18] = v0[4];
  v5 = *(MEMORY[0x1E697B540] + 4);
  v6 = swift_task_alloc();
  v0[19] = v6;
  *v6 = v0;
  v6[1] = sub_1BC69C4D0;

  return MEMORY[0x1EEDD8C48]();
}

uint64_t sub_1BC69C4D0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1BC69C734;
  }

  else
  {
    v7 = v2[18];

    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1BC69C5EC;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BC69C5EC()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];
  v4 = v0[11];

  v5 = sub_1BC68B214();
  (*(v4 + 16))(v2, v5, v3);
  v6 = sub_1BC75A4C0();
  v7 = sub_1BC75BF50();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[14];
  v10 = v0[10];
  v11 = v0[11];
  if (v8)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1BC630000, v6, v7, "Stopped listening for updates.", v12, 2u);
    MEMORY[0x1BFB27EF0](v12, -1, -1);
  }

  (*(v11 + 8))(v9, v10);
  v14 = v0[13];
  v13 = v0[14];
  v15 = v0[12];
  v16 = v0[9];

  v17 = v0[1];

  return v17();
}

uint64_t sub_1BC69C734()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 120);
  v4 = *(v0 + 72);
  v5 = *(v0 + 56);

  *(v0 + 40) = v1;
  v6 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDE120, &unk_1BC763ED0);
  v7 = swift_dynamicCast();
  v8 = *(v0 + 160);
  v9 = *(v0 + 80);
  v10 = *(v0 + 88);
  if (v7)
  {
    v11 = *(v0 + 104);

    v12 = sub_1BC68B214();
    (*(v10 + 16))(v11, v12, v9);
    v13 = sub_1BC75A4C0();
    v14 = sub_1BC75BF50();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1BC630000, v13, v14, "Stopped listening for updates", v15, 2u);
      MEMORY[0x1BFB27EF0](v15, -1, -1);
    }

    v16 = *(v0 + 104);
    v17 = *(v0 + 80);
    v18 = *(v0 + 88);
    v20 = *(v0 + 64);
    v19 = *(v0 + 72);
    v21 = *(v0 + 56);

    (*(v18 + 8))(v16, v17);
    (*(v20 + 8))(v19, v21);
  }

  else
  {
    v22 = *(v0 + 96);

    v23 = sub_1BC68B214();
    (*(v10 + 16))(v22, v23, v9);
    v24 = v8;
    v25 = sub_1BC75A4C0();
    v26 = sub_1BC75BF60();

    v27 = os_log_type_enabled(v25, v26);
    v28 = *(v0 + 160);
    if (v27)
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      v31 = v28;
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_1BC630000, v25, v26, "Failed to listen for updates. Error: %@", v29, 0xCu);
      sub_1BC66008C(v30, &qword_1EBCDE130, &qword_1BC7679C0);
      MEMORY[0x1BFB27EF0](v30, -1, -1);
      MEMORY[0x1BFB27EF0](v29, -1, -1);
    }

    else
    {
    }

    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));
  }

  v34 = *(v0 + 104);
  v33 = *(v0 + 112);
  v35 = *(v0 + 96);
  v36 = *(v0 + 72);

  v37 = *(v0 + 8);

  return v37();
}

uint64_t sub_1BC69CA54()
{
  v0[2] = sub_1BC75BDE0();
  v0[3] = sub_1BC75BDD0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BC6525CC;

  return sub_1BC69CB00();
}

uint64_t sub_1BC69CB00()
{
  v1[5] = v0;
  v2 = type metadata accessor for ParticipantHistoryChecker();
  v1[6] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[7] = swift_task_alloc();
  v4 = sub_1BC75A4E0();
  v1[8] = v4;
  v5 = *(v4 - 8);
  v1[9] = v5;
  v6 = *(v5 + 64) + 15;
  v1[10] = swift_task_alloc();
  v7 = sub_1BC759EE0();
  v1[11] = v7;
  v8 = *(v7 - 8);
  v1[12] = v8;
  v9 = *(v8 + 64) + 15;
  v1[13] = swift_task_alloc();
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850) - 8) + 64) + 15;
  v1[14] = swift_task_alloc();
  sub_1BC75BDE0();
  v1[15] = sub_1BC75BDD0();
  v12 = sub_1BC75BD80();
  v1[16] = v12;
  v1[17] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1BC69CCB8, v12, v11);
}

uint64_t sub_1BC69CCB8()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[5] + *(v0[6] + 20);
  PolicyProperty.wrappedValue.getter(v1);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v6 = v0[14];
    v5 = v0[15];

    sub_1BC66008C(v6, &unk_1EBCDBD90, &unk_1BC75F850);
LABEL_8:
    v23 = v0[13];
    v22 = v0[14];
    v24 = v0[10];
    v25 = v0[7];

    v26 = v0[1];

    return v26();
  }

  v7 = v0[13];
  v8 = v0[14];
  v9 = v0[11];
  v10 = v0[12];
  sub_1BC759E70();
  sub_1BC63305C(&qword_1EDDCF090, MEMORY[0x1E697B510]);
  v11 = sub_1BC75C170();
  v12 = *(v10 + 8);
  v12(v7, v9);
  v12(v8, v9);
  if ((v11 & 1) == 0)
  {
    v21 = v0[15];

    goto LABEL_8;
  }

  v14 = v0[5];
  v13 = v0[6];
  v15 = (v14 + *(v13 + 24));
  v17 = *v15;
  v16 = v15[1];
  v0[2] = v17;
  v0[3] = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBE0, &qword_1BC763EC8);
  sub_1BC75B640();
  v0[18] = v0[4];
  v18 = *(v14 + *(v13 + 28));
  v19 = *(MEMORY[0x1E697B558] + 4);
  v20 = swift_task_alloc();
  v0[19] = v20;
  *v20 = v0;
  v20[1] = sub_1BC69CEF8;

  return MEMORY[0x1EEDD8C60](v18);
}

uint64_t sub_1BC69CEF8()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v9 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1BC69D0A4;
  }

  else
  {
    v7 = v2[18];

    v4 = v2[16];
    v5 = v2[17];
    v6 = sub_1BC69D014;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1BC69D014()
{
  v1 = v0[15];

  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[10];
  v5 = v0[7];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BC69D0A4()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  v7 = *(v0 + 40);

  v8 = sub_1BC68B214();
  (*(v4 + 16))(v3, v8, v5);
  sub_1BC69D7F4(v7, v6);
  v9 = sub_1BC75A4C0();
  v10 = sub_1BC75BF60();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 56);
  if (v11)
  {
    v13 = *(v0 + 48);
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    v15 = *(*(v12 + *(v13 + 28)) + 16);
    sub_1BC69BB9C(v12);
    *(v14 + 4) = v15;
    _os_log_impl(&dword_1BC630000, v9, v10, "Failed to refetch for %ld participants", v14, 0xCu);
    MEMORY[0x1BFB27EF0](v14, -1, -1);
  }

  else
  {
    sub_1BC69BB9C(*(v0 + 56));
  }

  v17 = *(v0 + 72);
  v16 = *(v0 + 80);
  v18 = *(v0 + 64);

  (*(v17 + 8))(v16, v18);
  v20 = *(v0 + 104);
  v19 = *(v0 + 112);
  v21 = *(v0 + 80);
  v22 = *(v0 + 56);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1BC69D24C()
{
  v0[2] = sub_1BC75BDE0();
  v0[3] = sub_1BC75BDD0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BC653334;

  return sub_1BC69CB00();
}

uint64_t sub_1BC69D30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BC69D71C();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

void (*EnvironmentValues.analysisHistoryCheckStatus.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_1BC69C1FC();
  sub_1BC75ABC0();
  v5 = *(v4 + 24);
  *v4 = *(v4 + 16);
  *(v4 + 8) = v5;
  return sub_1BC69D410;
}

void sub_1BC69D410(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v3[2] = v4;
  v5 = *(v3 + 8);
  v6 = v3[4];
  v7 = v3[5];
  *(v3 + 24) = v5;
  if (a2)
  {
    sub_1BC6354C8(v4, v5);
    sub_1BC75ABD0();
    sub_1BC638C1C(*v3, *(v3 + 8));
  }

  else
  {
    sub_1BC75ABD0();
  }

  free(v3);
}

unint64_t sub_1BC69D4B0()
{
  result = qword_1EDDD1228[0];
  if (!qword_1EDDD1228[0])
  {
    type metadata accessor for ParticipantHistoryChecker();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD1228);
  }

  return result;
}

void sub_1BC69D540()
{
  sub_1BC69D69C(319, qword_1EDDCF110, MEMORY[0x1E697B4E8], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    type metadata accessor for PolicyProperty(319);
    if (v1 <= 0x3F)
    {
      sub_1BC69D69C(319, &qword_1EDDCE778, MEMORY[0x1E697B560], MEMORY[0x1E6981790]);
      if (v2 <= 0x3F)
      {
        sub_1BC69D69C(319, &qword_1EDDCF0E0, MEMORY[0x1E697B5B0], MEMORY[0x1E69E62F8]);
        if (v3 <= 0x3F)
        {
          sub_1BC6335A0();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1BC69D69C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1BC69D71C()
{
  result = qword_1EBCDCB98;
  if (!qword_1EBCDCB98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC948, &qword_1BC766D80);
    sub_1BC69D7A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCB98);
  }

  return result;
}

unint64_t sub_1BC69D7A0()
{
  result = qword_1EBCDCBA0;
  if (!qword_1EBCDCBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCBA0);
  }

  return result;
}

uint64_t sub_1BC69D7F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantHistoryChecker();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC69D858(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ParticipantHistoryChecker();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BC69D8BC()
{
  v2 = *(type metadata accessor for ParticipantHistoryChecker() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1BC660280;

  return sub_1BC69C290(v0 + v3);
}

uint64_t sub_1BC69D988()
{
  v1 = *(type metadata accessor for ParticipantHistoryChecker() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1BC65281C;

  return sub_1BC69CA54();
}

uint64_t objectdestroyTm_1()
{
  v1 = type metadata accessor for ParticipantHistoryChecker();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = *(v0 + v3);

  v7 = (v0 + v3 + v1[5]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC8C0, &qword_1BC762DC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = type metadata accessor for EnvironmentPrefetchState(0);
    if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      v9 = sub_1BC759EE0();
      v10 = *(v9 - 8);
      if (!(*(v10 + 48))(v7, 1, v9))
      {
        (*(v10 + 8))(v7, v9);
      }
    }
  }

  else
  {
    v11 = *v7;
  }

  v12 = *(v7 + *(type metadata accessor for PolicyProperty(0) + 20));

  v13 = (v5 + v1[6]);
  v14 = *v13;

  v15 = v13[1];

  v16 = *(v5 + v1[7]);

  v17 = *(v5 + v1[8] + 8);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1BC69DC60()
{
  v1 = *(type metadata accessor for ParticipantHistoryChecker() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_1BC660280;

  return sub_1BC69D24C();
}

unint64_t sub_1BC69DD2C()
{
  result = qword_1EDDCE0F0;
  if (!qword_1EDDCE0F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBD0, &qword_1BC763E98);
    sub_1BC69DDE4();
    sub_1BC633C54(&qword_1EDDCE7D0, &qword_1EBCDCBD8, &qword_1BC763EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0F0);
  }

  return result;
}

unint64_t sub_1BC69DDE4()
{
  result = qword_1EDDCE0F8;
  if (!qword_1EDDCE0F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBC0, &qword_1BC763E88);
    sub_1BC69DE9C();
    sub_1BC633C54(&qword_1EDDCE7C8, &qword_1EBCDCBC8, &qword_1BC763E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE0F8);
  }

  return result;
}

unint64_t sub_1BC69DE9C()
{
  result = qword_1EDDCE110;
  if (!qword_1EDDCE110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBB8, &qword_1BC763E70);
    sub_1BC69DF58();
    sub_1BC63305C(qword_1EDDCEEC0, MEMORY[0x1E697C028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE110);
  }

  return result;
}

unint64_t sub_1BC69DF58()
{
  result = qword_1EDDCE138;
  if (!qword_1EDDCE138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBB0, &qword_1BC763E50);
    sub_1BC633C54(&qword_1EDDCE058, &qword_1EBCDCBA8, &qword_1BC763E48);
    sub_1BC633C54(&qword_1EDDCE798, &qword_1EBCDC910, &unk_1BC763EE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDCE138);
  }

  return result;
}

uint64_t sub_1BC69E04C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  v13 = a7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBE8, &unk_1BC763EF0) + 48);
  sub_1BC6EBA60(a1, a2, a3);
  *v13 = a4;
  *(v13 + 8) = a5;
  *(v13 + 16) = a6;
  type metadata accessor for Intervention.Kind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static Intervention.Kind.attemptingToCallViaExternalRequest(_:isPresented:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{

  *a4 = sub_1BC6A4180(v8);
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  type metadata accessor for Intervention.Kind(0);
  swift_storeEnumTagMultiPayload();
}

size_t static Intervention.Kind.attemptingToCallViaExternalRequest(sensitiveParticipants:otherParticipants:isPresented:callType:)@<X0>(unint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, int a4@<W4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v34 = a4;
  v36 = sub_1BC759FE0();
  v11 = *(v36 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v36);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v30 - v16;

  v19 = sub_1BC6A4180(v18);
  v35 = a5;
  if (a1 >> 62)
  {
    v20 = sub_1BC75C3F0();
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x1E69E7CC0];
  if (!v20)
  {
LABEL_16:
    *a6 = v19;
    *(a6 + 8) = v21;
    *(a6 + 16) = a2;
    *(a6 + 24) = a3;
    *(a6 + 32) = v34 & 1;
    *(a6 + 40) = v35;
    type metadata accessor for Intervention.Kind(0);
    swift_storeEnumTagMultiPayload();
  }

  v33 = a6;
  v37 = MEMORY[0x1E69E7CC0];
  result = sub_1BC6701A4(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v30 = v19;
    v31 = a2;
    v32 = a3;
    v21 = v37;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v20; ++i)
      {
        MEMORY[0x1BFB26EB0](i, a1);
        SCAParticipant.structParticipant.getter();
        swift_unknownObjectRelease();
        v37 = v21;
        v25 = *(v21 + 16);
        v24 = *(v21 + 24);
        if (v25 >= v24 >> 1)
        {
          sub_1BC6701A4(v24 > 1, v25 + 1, 1);
          v21 = v37;
        }

        *(v21 + 16) = v25 + 1;
        (*(v11 + 32))(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v25, v17, v36);
      }
    }

    else
    {
      v26 = (a1 + 32);
      do
      {
        v27 = *v26;
        SCAParticipant.structParticipant.getter();

        v37 = v21;
        v29 = *(v21 + 16);
        v28 = *(v21 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1BC6701A4(v28 > 1, v29 + 1, 1);
          v21 = v37;
        }

        *(v21 + 16) = v29 + 1;
        (*(v11 + 32))(v21 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v29, v15, v36);
        ++v26;
        --v20;
      }

      while (v20);
    }

    a2 = v31;
    a3 = v32;
    a6 = v33;
    v19 = v30;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t static Intervention.Kind.attemptingToCallViaIntervenableButton(_:isPresented:callType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X4>, char a3@<W5>, void *a4@<X8>)
{
  *a4 = a1;
  if ((a3 & 1) == 0)
  {
    a4[1] = a2;
  }

  type metadata accessor for Intervention.Kind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t static Intervention.Kind.attemptingToCallViaIntervenableButton(_:callType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  type metadata accessor for Intervention.Kind(0);
  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1BC69E554()
{
  v0 = sub_1BC759EE0();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v27 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD18, &qword_1BC764240);
  v4 = *(*(v29 - 1) + 64);
  MEMORY[0x1EEE9AC00](v29);
  v6 = &v27 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v28 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v27 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v27 - v17;
  PolicyProperty.wrappedValue.getter(&v27 - v17);
  v19 = 1;
  v20 = v0;
  v30 = *(v1 + 48);
  LODWORD(v0) = v30(v18, 1, v0);
  sub_1BC66008C(v18, &unk_1EBCDBD90, &unk_1BC75F850);
  if (v0 != 1)
  {
    PolicyProperty.wrappedValue.getter(v16);
    sub_1BC759ED0();
    v21 = v20;
    (*(v1 + 56))(v13, 0, 1, v20);
    v22 = *(v29 + 12);
    sub_1BC660024(v16, v6, &unk_1EBCDBD90, &unk_1BC75F850);
    sub_1BC660024(v13, &v6[v22], &unk_1EBCDBD90, &unk_1BC75F850);
    if (v30(v6, 1, v20) == 1)
    {
      sub_1BC66008C(v13, &unk_1EBCDBD90, &unk_1BC75F850);
      sub_1BC66008C(v16, &unk_1EBCDBD90, &unk_1BC75F850);
      if (v30(&v6[v22], 1, v20) == 1)
      {
        sub_1BC66008C(v6, &unk_1EBCDBD90, &unk_1BC75F850);
        v19 = 1;
        return v19 & 1;
      }
    }

    else
    {
      v29 = v16;
      v23 = v28;
      sub_1BC660024(v6, v28, &unk_1EBCDBD90, &unk_1BC75F850);
      if (v30(&v6[v22], 1, v20) != 1)
      {
        v24 = v27;
        (*(v1 + 32))(v27, &v6[v22], v21);
        sub_1BC6330A4(&qword_1EDDCEE80, MEMORY[0x1E697B510]);
        v19 = sub_1BC75BAB0();
        v25 = *(v1 + 8);
        v25(v24, v21);
        sub_1BC66008C(v13, &unk_1EBCDBD90, &unk_1BC75F850);
        sub_1BC66008C(v29, &unk_1EBCDBD90, &unk_1BC75F850);
        v25(v23, v21);
        sub_1BC66008C(v6, &unk_1EBCDBD90, &unk_1BC75F850);
        return v19 & 1;
      }

      sub_1BC66008C(v13, &unk_1EBCDBD90, &unk_1BC75F850);
      sub_1BC66008C(v29, &unk_1EBCDBD90, &unk_1BC75F850);
      (*(v1 + 8))(v23, v20);
    }

    sub_1BC66008C(v6, &qword_1EBCDCD18, &qword_1BC764240);
    v19 = 0;
  }

  return v19 & 1;
}

uint64_t sub_1BC69EA04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v31 = a2;
  v5 = type metadata accessor for PolicyCheckingIntervention(0);
  v6 = v5 - 8;
  v29 = *(v5 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCDBD90, &unk_1BC75F850);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC20, &qword_1BC7640C8);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC28, &unk_1BC7640D0);
  v16 = *(v30 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v19 = &v29 - v18;
  sub_1BC69EDBC(a1, v15);
  PolicyProperty.wrappedValue.getter(v11);
  v20 = sub_1BC759EE0();
  LOBYTE(a1) = (*(*(v20 - 8) + 48))(v11, 1, v20) != 1;
  sub_1BC66008C(v11, &unk_1EBCDBD90, &unk_1BC75F850);
  v32 = a1;
  sub_1BC63368C(v3, &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PolicyCheckingIntervention);
  v21 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v22 = swift_allocObject();
  sub_1BC6A52AC(&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v22 + v21, type metadata accessor for PolicyCheckingIntervention);
  sub_1BC6A4A10();
  sub_1BC75B420();

  sub_1BC66008C(v15, &qword_1EBCDCC20, &qword_1BC7640C8);
  KeyPath = swift_getKeyPath();
  v24 = *(v6 + 28);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCC8, &qword_1BC764180);
  v26 = v31;
  v27 = (v31 + *(v25 + 36));
  LODWORD(v15) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCD0, &qword_1BC764188) + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC10, &unk_1BC763FF0);
  sub_1BC75B640();
  *v27 = KeyPath;
  return (*(v16 + 32))(v26, v19, v30);
}

uint64_t sub_1BC69EDBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v353 = a2;
  v354 = a1;
  v355 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCC0, &unk_1BC764148);
  v3 = *(*(v355 - 8) + 64);
  MEMORY[0x1EEE9AC00](v355);
  v346 = &v292 - v4;
  v357 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCD8, &qword_1BC764190);
  v5 = *(*(v357 - 8) + 64);
  MEMORY[0x1EEE9AC00](v357);
  v356 = &v292 - v6;
  v341 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCE0, &qword_1BC764198);
  v7 = *(*(v341 - 8) + 64);
  MEMORY[0x1EEE9AC00](v341);
  v342 = &v292 - v8;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCB8, &qword_1BC764140);
  v9 = *(*(v352 - 8) + 64);
  MEMORY[0x1EEE9AC00](v352);
  v343 = &v292 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC998, &qword_1BC7641A0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v320 = &v292 - v13;
  v318 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC970, &unk_1BC763180);
  v14 = *(*(v318 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v318);
  v324 = &v292 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v323 = &v292 - v17;
  v18 = type metadata accessor for InterventionParticipantHistoryChecker(0);
  v19 = *(*(v18 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v296 = &v292 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v310 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCE8, &qword_1BC7641A8);
  v21 = *(*(v310 - 8) + 64);
  MEMORY[0x1EEE9AC00](v310);
  v311 = &v292 - v22;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC98, &qword_1BC764128);
  v23 = *(*(v328 - 8) + 64);
  MEMORY[0x1EEE9AC00](v328);
  v312 = &v292 - v24;
  v307 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCA8, &qword_1BC764138);
  v25 = *(*(v307 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v307);
  v295 = &v292 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v302 = &v292 - v28;
  v309 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCA0, &qword_1BC764130);
  v308 = *(v309 - 8);
  v29 = *(v308 + 64);
  v30 = MEMORY[0x1EEE9AC00](v309);
  v305 = &v292 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v303 = &v292 - v32;
  v314 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCF0, &qword_1BC7641B0);
  v313 = *(v314 - 8);
  v33 = *(v313 + 64);
  v34 = MEMORY[0x1EEE9AC00](v314);
  v306 = &v292 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v319 = &v292 - v36;
  v336 = sub_1BC75A160();
  v339 = *(v336 - 8);
  v37 = *(v339 + 64);
  v38 = MEMORY[0x1EEE9AC00](v336);
  v294 = &v292 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v304 = &v292 - v41;
  v42 = MEMORY[0x1EEE9AC00](v40);
  v301 = &v292 - v43;
  MEMORY[0x1EEE9AC00](v42);
  v300 = &v292 - v44;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCCF8, &qword_1BC7641B8);
  v45 = *(*(v349 - 8) + 64);
  MEMORY[0x1EEE9AC00](v349);
  v351 = &v292 - v46;
  v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD00, &qword_1BC7641C0);
  v47 = *(*(v325 - 8) + 64);
  MEMORY[0x1EEE9AC00](v325);
  v326 = &v292 - v48;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD08, &unk_1BC7641C8);
  v49 = *(*(v331 - 8) + 64);
  MEMORY[0x1EEE9AC00](v331);
  v332 = &v292 - v50;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC68, &qword_1BC7640F8);
  v51 = *(*(v347 - 8) + 64);
  MEMORY[0x1EEE9AC00](v347);
  v333 = &v292 - v52;
  v350 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC58, &qword_1BC7640F0);
  v53 = *(*(v350 - 8) + 64);
  MEMORY[0x1EEE9AC00](v350);
  v327 = &v292 - v54;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC868, &qword_1BC762D30);
  v56 = *(*(v55 - 8) + 64);
  v57 = MEMORY[0x1EEE9AC00](v55 - 8);
  v293 = &v292 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v298 = &v292 - v60;
  MEMORY[0x1EEE9AC00](v59);
  v316 = &v292 - v61;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC878, &qword_1BC763F00);
  v63 = *(*(v62 - 8) + 64);
  v64 = MEMORY[0x1EEE9AC00](v62 - 8);
  v297 = (&v292 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v64);
  v321 = (&v292 - v66);
  v330 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC70, &qword_1BC764100);
  v329 = *(v330 - 8);
  v67 = *(v329 + 64);
  v68 = MEMORY[0x1EEE9AC00](v330);
  v299 = &v292 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v68);
  v322 = &v292 - v70;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD10, &qword_1BC7641D8);
  v338 = *(v334 - 8);
  v71 = *(v338 + 64);
  v72 = MEMORY[0x1EEE9AC00](v334);
  v317 = &v292 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v337 = &v292 - v74;
  v75 = sub_1BC759F50();
  v344 = *(v75 - 8);
  v345 = v75;
  v76 = *(v344 + 64);
  v77 = MEMORY[0x1EEE9AC00](v75);
  v315 = &v292 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v340 = &v292 - v79;
  v80 = type metadata accessor for Intervention.Kind(0);
  v81 = *(*(v80 - 8) + 64);
  v82 = MEMORY[0x1EEE9AC00](v80);
  v84 = &v292 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = MEMORY[0x1EEE9AC00](v82);
  v87 = &v292 - v86;
  v88 = MEMORY[0x1EEE9AC00](v85);
  v90 = (&v292 - v89);
  v91 = MEMORY[0x1EEE9AC00](v88);
  v93 = (&v292 - v92);
  v94 = MEMORY[0x1EEE9AC00](v91);
  v96 = &v292 - v95;
  v97 = MEMORY[0x1EEE9AC00](v94);
  v99 = &v292 - v98;
  MEMORY[0x1EEE9AC00](v97);
  v101 = &v292 - v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC48, &qword_1BC7640E8);
  v103 = *(*(v102 - 8) + 64);
  MEMORY[0x1EEE9AC00](v102);
  v348 = &v292 - v104;
  if (sub_1BC69E554())
  {
    KeyPath = swift_getKeyPath();
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
    v107 = v346;
    (*(*(v106 - 8) + 16))(v346, v354, v106);
    v108 = v356;
    v109 = v107 + *(v355 + 36);
    *v109 = KeyPath;
    *(v109 + 8) = 1;
    sub_1BC660024(v107, v108, &qword_1EBCDCCC0, &unk_1BC764148);
    swift_storeEnumTagMultiPayload();
    sub_1BC6A4A9C();
    sub_1BC6A5158();
    sub_1BC75AE00();
    return sub_1BC66008C(v107, &qword_1EBCDCCC0, &unk_1BC764148);
  }

  v346 = v102;
  v111 = type metadata accessor for PolicyCheckingIntervention(0);
  sub_1BC63368C(v2 + *(v111 + 24), v101, type metadata accessor for Intervention.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v335 = v101;
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1BC63368C(v101, v96, type metadata accessor for Intervention.Kind);
      v192 = *v96;
      v193 = *(v96 + 1);
      v195 = *(v96 + 2);
      v194 = *(v96 + 3);
      LODWORD(v337) = v96[32];
      v196 = *(v96 + 5);
      v198 = v344;
      v197 = v345;
      v199 = v340;
      (*(v344 + 104))(v340, *MEMORY[0x1E697B588], v345);
      v200 = sub_1BC759F40();
      (*(v198 + 8))(v199, v197);
      v113 = v356;
      if (v200)
      {
        v345 = v195;
        if ((v196 - 1) > 3)
        {
          v201 = MEMORY[0x1E697B638];
        }

        else
        {
          v201 = qword_1E7FF2770[v196 - 1];
        }

        v240 = v336;
        v241 = v300;
        (*(v339 + 104))(v300, *v201, v336);
        v242 = v339;
        v243 = v298;
        (*(v339 + 32))(v298, v241, v240);
        (*(v242 + 56))(v243, 0, 1, v240);
        v244 = v297;
        static InterventionConfig.Layout.tryingToCall(validating:otherParticipants:callType:)(v192, v193, v243, v297);

        sub_1BC66008C(v243, &qword_1EBCDC868, &qword_1BC762D30);
        v245 = v299;
        v324 = v194;
        sub_1BC6A1CB0(v345, v194, v337, v244, v299);
        sub_1BC66008C(v244, &qword_1EBCDC878, &qword_1BC763F00);
        v246 = sub_1BC759D90();
        sub_1BC759D80();
        v247 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC78, &qword_1BC764108);
        v248 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC80, &qword_1BC764110);
        v249 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC88, &qword_1BC764118);
        v250 = sub_1BC6A4D84();
        v358 = v249;
        v359 = v250;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v252 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
        v358 = v248;
        v359 = v246;
        v360 = OpaqueTypeConformance2;
        v361 = v252;
        v355 = MEMORY[0x1E69811C8];
        v253 = swift_getOpaqueTypeConformance2();
        v358 = v247;
        v359 = v253;
        v254 = swift_getOpaqueTypeConformance2();
        v255 = v317;
        v256 = v330;
        sub_1BC75B210();

        (*(v329 + 8))(v245, v256);
        v257 = v334;
        (*(v338 + 16))(v332, v255, v334);
        swift_storeEnumTagMultiPayload();
        v358 = v256;
        v359 = v246;
        v360 = v254;
        v361 = v252;
        swift_getOpaqueTypeConformance2();
        v258 = v333;
        sub_1BC75AE00();
        sub_1BC660024(v258, v326, &qword_1EBCDCC68, &qword_1BC7640F8);
        swift_storeEnumTagMultiPayload();
        sub_1BC6A4BB4();
        sub_1BC6A4E6C();
        v259 = v327;
        sub_1BC75AE00();
        sub_1BC66008C(v258, &qword_1EBCDCC68, &qword_1BC7640F8);
        sub_1BC660024(v259, v351, &qword_1EBCDCC58, &qword_1BC7640F0);
        swift_storeEnumTagMultiPayload();
        sub_1BC6A4B28();
        sub_1BC6A50A0();
        v140 = v348;
        sub_1BC75AE00();

        sub_1BC66008C(v259, &qword_1EBCDCC58, &qword_1BC7640F0);
        (*(v338 + 8))(v317, v257);
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    v113 = v356;
    if (EnumCaseMultiPayload == 6)
    {
      sub_1BC63368C(v101, v87, type metadata accessor for Intervention.Kind);
      v211 = &v87[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBE8, &unk_1BC763EF0) + 48)];
      v212 = *v211;
      v213 = *(v211 + 1);
      v214 = v211[16];
      v215 = v323;
      sub_1BC6A523C(v87, v323);
      v217 = v344;
      v216 = v345;
      v218 = v340;
      (*(v344 + 104))(v340, *MEMORY[0x1E697B590], v345);
      v219 = sub_1BC759F40();
      (*(v217 + 8))(v218, v216);
      if (v219)
      {
        v220 = v320;
        MEMORY[0x1BFB262E0](v318);
        v221 = v321;
        static InterventionConfig.Layout.addingToSharedAlbum(validating:)(v220, v321);
        sub_1BC66008C(v220, &qword_1EBCDC998, &qword_1BC7641A0);
        v222 = v322;
        sub_1BC6A1CB0(v212, v213, v214, v221, v322);
        sub_1BC66008C(v221, &qword_1EBCDC878, &qword_1BC763F00);
        v223 = sub_1BC759D90();
        sub_1BC759D80();
        v224 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC78, &qword_1BC764108);
        v225 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC80, &qword_1BC764110);
        v226 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC88, &qword_1BC764118);
        v227 = sub_1BC6A4D84();
        v358 = v226;
        v359 = v227;
        v228 = swift_getOpaqueTypeConformance2();
        v354 = v212;
        v229 = v228;
        v230 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
        v358 = v225;
        v359 = v223;
        v360 = v229;
        v361 = v230;
        v231 = swift_getOpaqueTypeConformance2();
        v358 = v224;
        v359 = v231;
        v232 = swift_getOpaqueTypeConformance2();
        v233 = v337;
        v345 = v213;
        v234 = v330;
        sub_1BC75B210();

        (*(v329 + 8))(v222, v234);
        v235 = v338;
        v236 = v233;
        v237 = v334;
        (*(v338 + 16))(v332, v236, v334);
        swift_storeEnumTagMultiPayload();
        v358 = v234;
        v359 = v223;
        v360 = v232;
        v361 = v230;
        swift_getOpaqueTypeConformance2();
        v238 = v333;
        sub_1BC75AE00();
        sub_1BC660024(v238, v342, &qword_1EBCDCC68, &qword_1BC7640F8);
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
        sub_1BC6A4BB4();
        sub_1BC633C54(&qword_1EDDCE7B0, &qword_1EBCDCC90, &qword_1BC764120);
        v239 = v343;
        sub_1BC75AE00();
        sub_1BC66008C(v238, &qword_1EBCDCC68, &qword_1BC7640F8);
        sub_1BC660024(v239, v351, &qword_1EBCDCCB8, &qword_1BC764140);
        swift_storeEnumTagMultiPayload();
        sub_1BC6A4B28();
        sub_1BC6A50A0();
        v140 = v348;
        sub_1BC75AE00();

        sub_1BC66008C(v239, &qword_1EBCDCCB8, &qword_1BC764140);
        (*(v235 + 8))(v337, v237);
        sub_1BC66008C(v323, &qword_1EBCDC970, &unk_1BC763180);
        goto LABEL_40;
      }

      sub_1BC66008C(v215, &qword_1EBCDC970, &unk_1BC763180);

      goto LABEL_39;
    }

    if (EnumCaseMultiPayload != 12)
    {
LABEL_39:
      v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
      (*(*(v266 - 8) + 16))(v342, v354, v266);
      swift_storeEnumTagMultiPayload();
      sub_1BC6A4BB4();
      sub_1BC633C54(&qword_1EDDCE7B0, &qword_1EBCDCC90, &qword_1BC764120);
      v267 = v343;
      sub_1BC75AE00();
      sub_1BC660024(v267, v351, &qword_1EBCDCCB8, &qword_1BC764140);
      swift_storeEnumTagMultiPayload();
      sub_1BC6A4B28();
      sub_1BC6A50A0();
      v140 = v348;
      sub_1BC75AE00();
      sub_1BC66008C(v267, &qword_1EBCDCCB8, &qword_1BC764140);
      goto LABEL_40;
    }

    sub_1BC63368C(v335, v84, type metadata accessor for Intervention.Kind);
    v141 = &v84[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBE8, &unk_1BC763EF0) + 48)];
    v143 = *v141;
    v142 = *(v141 + 1);
    v144 = v141[16];
    v145 = v324;
    sub_1BC6A523C(v84, v324);
    v147 = v344;
    v146 = v345;
    v148 = v340;
    (*(v344 + 104))(v340, *MEMORY[0x1E697B590], v345);
    v149 = sub_1BC759F40();
    (*(v147 + 8))(v148, v146);
    if (v149)
    {
      v150 = v320;
      MEMORY[0x1BFB262E0](v318);
      v151 = v321;
      static InterventionConfig.Layout.viewingSharedAlbumAsset(validating:)(v150, v321);
      sub_1BC66008C(v150, &qword_1EBCDC998, &qword_1BC7641A0);
      v152 = v322;
      v336 = v143;
      v339 = v142;
      sub_1BC6A1CB0(v143, v142, v144, v151, v322);
      sub_1BC66008C(v151, &qword_1EBCDC878, &qword_1BC763F00);
      v153 = sub_1BC759D90();
      sub_1BC759D80();
      v154 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC78, &qword_1BC764108);
      v155 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC80, &qword_1BC764110);
      v156 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC88, &qword_1BC764118);
      v157 = sub_1BC6A4D84();
      v358 = v156;
      v359 = v157;
      v158 = swift_getOpaqueTypeConformance2();
      v159 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
      v358 = v155;
      v359 = v153;
      v360 = v158;
      v361 = v159;
      v160 = swift_getOpaqueTypeConformance2();
      v358 = v154;
      v359 = v160;
      v161 = swift_getOpaqueTypeConformance2();
      v162 = v337;
      v163 = v330;
      sub_1BC75B210();

      (*(v329 + 8))(v152, v163);
      v164 = v338;
      v165 = v334;
      (*(v338 + 16))(v332, v162, v334);
      swift_storeEnumTagMultiPayload();
      v358 = v163;
      v359 = v153;
      v360 = v161;
      v361 = v159;
      swift_getOpaqueTypeConformance2();
      v166 = v333;
      sub_1BC75AE00();
      sub_1BC660024(v166, v342, &qword_1EBCDCC68, &qword_1BC7640F8);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
      sub_1BC6A4BB4();
      sub_1BC633C54(&qword_1EDDCE7B0, &qword_1EBCDCC90, &qword_1BC764120);
      v167 = v343;
      sub_1BC75AE00();
      sub_1BC66008C(v166, &qword_1EBCDCC68, &qword_1BC7640F8);
      sub_1BC660024(v167, v351, &qword_1EBCDCCB8, &qword_1BC764140);
      swift_storeEnumTagMultiPayload();
      sub_1BC6A4B28();
      sub_1BC6A50A0();
      v140 = v348;
      sub_1BC75AE00();

      sub_1BC66008C(v167, &qword_1EBCDCCB8, &qword_1BC764140);
      (*(v164 + 8))(v162, v165);
      sub_1BC66008C(v324, &qword_1EBCDC970, &unk_1BC763180);
      v113 = v356;
      goto LABEL_40;
    }

    sub_1BC66008C(v145, &qword_1EBCDC970, &unk_1BC763180);

LABEL_30:
    v113 = v356;
    goto LABEL_39;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1BC63368C(v101, v93, type metadata accessor for Intervention.Kind);
    v168 = *v93;
    v170 = v344;
    v169 = v345;
    v171 = v340;
    (*(v344 + 104))(v340, *MEMORY[0x1E697B588], v345);
    v172 = sub_1BC759F40();
    (*(v170 + 8))(v171, v169);
    if (v172)
    {
      v173 = v316;
      (*(v339 + 56))(v316, 1, 1, v336);

      v174 = sub_1BC68B278();
      v175 = v307;
      v176 = v302;
      sub_1BC68B27C(v174, v177 & 0x1FF, v168, v173, &v302[*(v307 + 36)]);
      v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
      (*(*(v178 - 8) + 16))(v176, v354, v178);
      v179 = swift_getKeyPath();
      v180 = sub_1BC6A4FB8();

      v181 = v303;
      View.checkingHistory(of:predicate:)(v168, sub_1BC6A5A70, v179, v175, v180);

      sub_1BC66008C(v176, &qword_1EBCDCCA8, &qword_1BC764138);
      v182 = sub_1BC759D90();
      sub_1BC759D80();
      v358 = v175;
      v359 = v180;
      v183 = swift_getOpaqueTypeConformance2();
      v184 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
      v185 = v319;
      v186 = v309;
      sub_1BC75B210();

      (*(v308 + 8))(v181, v186);
      v187 = v313;
      v188 = v185;
      v189 = v314;
      (*(v313 + 16))(v311, v188, v314);
      swift_storeEnumTagMultiPayload();
      v358 = v186;
      v359 = v182;
      v360 = v183;
      v361 = v184;
      swift_getOpaqueTypeConformance2();
      v190 = v312;
      sub_1BC75AE00();
      sub_1BC660024(v190, v326, &qword_1EBCDCC98, &qword_1BC764128);
      swift_storeEnumTagMultiPayload();
      sub_1BC6A4BB4();
      sub_1BC6A4E6C();
      v191 = v327;
      sub_1BC75AE00();
      sub_1BC66008C(v190, &qword_1EBCDCC98, &qword_1BC764128);
      sub_1BC660024(v191, v351, &qword_1EBCDCC58, &qword_1BC7640F0);
      swift_storeEnumTagMultiPayload();
      sub_1BC6A4B28();
      sub_1BC6A50A0();
      v140 = v348;
      sub_1BC75AE00();
      sub_1BC66008C(v191, &qword_1EBCDCC58, &qword_1BC7640F0);
      (*(v187 + 8))(v319, v189);
      v113 = v356;
      goto LABEL_40;
    }

LABEL_29:

    goto LABEL_30;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1BC63368C(v101, v90, type metadata accessor for Intervention.Kind);
    v203 = *v90;
    v202 = v90[1];
    v205 = v344;
    v204 = v345;
    v206 = v315;
    (*(v344 + 104))(v315, *MEMORY[0x1E697B588], v345);
    v207 = sub_1BC759F40();
    (*(v205 + 8))(v206, v204);
    if (v207)
    {
      v208 = *(v339 + 104);
      v209 = (v202 - 1);
      v113 = v356;
      v340 = v203;
      if (v209 > 3)
      {
        v210 = MEMORY[0x1E697B638];
      }

      else
      {
        v210 = qword_1E7FF2770[v209];
      }

      v260 = v336;
      v261 = v304;
      v208(v304, *v210, v336);
      v262 = v339;
      v263 = *(v339 + 32);
      v264 = v301;
      v263(v301, v261, v260);
      LOBYTE(v261) = sub_1BC75A150();
      (*(v262 + 8))(v264, v260);
      if (v261)
      {
        if (v209 > 3)
        {
          v265 = MEMORY[0x1E697B638];
        }

        else
        {
          v265 = qword_1E7FF2770[v209];
        }

        v268 = v294;
        v208(v294, *v265, v260);
        v269 = v293;
        v263(v293, v268, v260);
        (*(v339 + 56))(v269, 0, 1, v260);
        v270 = sub_1BC68B278();
        v272 = v271;
        v273 = v340;

        v274 = v272 & 0x1FF;
        v275 = v296;
        sub_1BC68B27C(v270, v274, v273, v269, v296);
        v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
        v277 = v295;
        (*(*(v276 - 8) + 16))(v295, v354, v276);
        v278 = v307;
        sub_1BC6A52AC(v275, v277 + *(v307 + 36), type metadata accessor for InterventionParticipantHistoryChecker);
        v279 = swift_getKeyPath();
        v280 = sub_1BC6A4FB8();

        View.checkingHistory(of:predicate:)(v273, sub_1BC6A5314, v279, v278, v280);

        sub_1BC66008C(v277, &qword_1EBCDCCA8, &qword_1BC764138);
        v281 = sub_1BC759D90();
        sub_1BC759D80();
        v358 = v278;
        v359 = v280;
        v282 = swift_getOpaqueTypeConformance2();
        v283 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
        v284 = v306;
        v285 = v309;
        v286 = v305;
        sub_1BC75B210();

        (*(v308 + 8))(v286, v285);
        v287 = v313;
        v288 = v284;
        v289 = v314;
        (*(v313 + 16))(v311, v288, v314);
        swift_storeEnumTagMultiPayload();
        v358 = v285;
        v359 = v281;
        v360 = v282;
        v361 = v283;
        swift_getOpaqueTypeConformance2();
        v290 = v312;
        sub_1BC75AE00();
        sub_1BC660024(v290, v326, &qword_1EBCDCC98, &qword_1BC764128);
        swift_storeEnumTagMultiPayload();
        sub_1BC6A4BB4();
        sub_1BC6A4E6C();
        v291 = v327;
        sub_1BC75AE00();
        sub_1BC66008C(v290, &qword_1EBCDCC98, &qword_1BC764128);
        sub_1BC660024(v291, v351, &qword_1EBCDCC58, &qword_1BC7640F0);
        swift_storeEnumTagMultiPayload();
        sub_1BC6A4B28();
        sub_1BC6A50A0();
        v140 = v348;
        sub_1BC75AE00();
        sub_1BC66008C(v291, &qword_1EBCDCC58, &qword_1BC7640F0);
        (*(v287 + 8))(v306, v289);
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    goto LABEL_29;
  }

  v113 = v356;
  if (EnumCaseMultiPayload != 2)
  {
    goto LABEL_39;
  }

  sub_1BC63368C(v335, v99, type metadata accessor for Intervention.Kind);
  v114 = *v99;
  v115 = *(v99 + 1);
  v116 = *(v99 + 2);
  v117 = v99[24];
  v119 = v344;
  v118 = v345;
  v120 = v340;
  (*(v344 + 104))(v340, *MEMORY[0x1E697B588], v345);
  v121 = sub_1BC759F40();
  (*(v119 + 8))(v120, v118);
  if ((v121 & 1) == 0)
  {

    goto LABEL_39;
  }

  v122 = v316;
  (*(v339 + 56))(v316, 1, 1, v336);
  v123 = v321;
  static InterventionConfig.Layout.tryingToCall(validating:otherParticipants:callType:)(v114, MEMORY[0x1E69E7CC0], v122, v321);

  sub_1BC66008C(v122, &qword_1EBCDC868, &qword_1BC762D30);
  v124 = v322;
  v323 = v115;
  v324 = v116;
  sub_1BC6A1CB0(v115, v116, v117, v123, v322);
  sub_1BC66008C(v123, &qword_1EBCDC878, &qword_1BC763F00);
  v125 = sub_1BC759D90();
  sub_1BC759D80();
  v126 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC78, &qword_1BC764108);
  v127 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC80, &qword_1BC764110);
  v128 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC88, &qword_1BC764118);
  v129 = sub_1BC6A4D84();
  v358 = v128;
  v359 = v129;
  v130 = swift_getOpaqueTypeConformance2();
  v131 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
  v358 = v127;
  v359 = v125;
  v360 = v130;
  v361 = v131;
  v132 = swift_getOpaqueTypeConformance2();
  v358 = v126;
  v359 = v132;
  v133 = swift_getOpaqueTypeConformance2();
  v134 = v337;
  v135 = v330;
  sub_1BC75B210();

  (*(v329 + 8))(v124, v135);
  v136 = v338;
  v137 = v334;
  (*(v338 + 16))(v332, v134, v334);
  swift_storeEnumTagMultiPayload();
  v358 = v135;
  v359 = v125;
  v360 = v133;
  v361 = v131;
  swift_getOpaqueTypeConformance2();
  v138 = v333;
  sub_1BC75AE00();
  sub_1BC660024(v138, v326, &qword_1EBCDCC68, &qword_1BC7640F8);
  swift_storeEnumTagMultiPayload();
  sub_1BC6A4BB4();
  sub_1BC6A4E6C();
  v139 = v327;
  sub_1BC75AE00();
  sub_1BC66008C(v138, &qword_1EBCDCC68, &qword_1BC7640F8);
  sub_1BC660024(v139, v351, &qword_1EBCDCC58, &qword_1BC7640F0);
  swift_storeEnumTagMultiPayload();
  sub_1BC6A4B28();
  sub_1BC6A50A0();
  v140 = v348;
  sub_1BC75AE00();

  sub_1BC66008C(v139, &qword_1EBCDCC58, &qword_1BC7640F0);
  (*(v136 + 8))(v337, v137);
LABEL_40:
  sub_1BC6A4570(v335, type metadata accessor for Intervention.Kind);
  sub_1BC660024(v140, v113, &qword_1EBCDCC48, &qword_1BC7640E8);
  swift_storeEnumTagMultiPayload();
  sub_1BC6A4A9C();
  sub_1BC6A5158();
  sub_1BC75AE00();
  return sub_1BC66008C(v140, &qword_1EBCDCC48, &qword_1BC7640E8);
}

uint64_t sub_1BC6A1BAC(_BYTE *a1)
{
  v2 = type metadata accessor for IntervenableAction(0);
  v3 = *(*(v2 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    v7 = *(type metadata accessor for PolicyCheckingIntervention(0) + 20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC10, &unk_1BC763FF0);
    sub_1BC75B640();
    v8 = *v6;

    sub_1BC6A4570(v6, type metadata accessor for IntervenableAction);
    (*(*v8 + 96))(0);
  }

  return result;
}

uint64_t sub_1BC6A1CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v40 = a3;
  v38 = a1;
  v39 = a2;
  v46 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC88, &qword_1BC764118);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC80, &qword_1BC764110);
  v11 = *(v10 - 8);
  v42 = v10;
  v43 = v11;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC78, &qword_1BC764108);
  v16 = *(v15 - 8);
  v44 = v15;
  v45 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDBC50, &qword_1BC762D70);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v37 - v22;
  v24 = type metadata accessor for AnalyticsUIContext(0);
  (*(*(v24 - 8) + 56))(v23, 1, 1, v24);
  v25 = &v9[*(v6 + 36)];
  v26 = type metadata accessor for InterventionPresenter(0);
  sub_1BC660024(a4, &v25[v26[7]], &qword_1EBCDC878, &qword_1BC763F00);
  sub_1BC660024(v23, &v25[v26[8]], &qword_1EBCDBC50, &qword_1BC762D70);
  KeyPath = swift_getKeyPath();
  PolicyProperty.init()(&v25[v26[6]]);
  v28 = v39;
  *v25 = v38;
  *(v25 + 1) = v28;
  v25[16] = v40;
  *(v25 + 3) = KeyPath;
  *(v25 + 4) = 0;
  v25[40] = 0;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCC90, &qword_1BC764120);
  (*(*(v29 - 8) + 16))(v9, v41, v29);
  v30 = sub_1BC6A4D84();

  View.prefetchSensitiveContentPolicy()(v6, v30);
  sub_1BC66008C(v9, &qword_1EBCDCC88, &qword_1BC764118);
  v31 = sub_1BC759D90();
  sub_1BC759D80();
  v47 = v6;
  v48 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v33 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
  v34 = v42;
  sub_1BC75B210();

  (*(v43 + 8))(v14, v34);
  v47 = v34;
  v48 = v31;
  v49 = OpaqueTypeConformance2;
  v50 = v33;
  swift_getOpaqueTypeConformance2();
  v35 = v44;
  sub_1BC75B310();
  (*(v45 + 8))(v19, v35);
  return sub_1BC66008C(v23, &qword_1EBCDBC50, &qword_1BC762D70);
}

uint64_t sub_1BC6A2124@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BC759C00();
  *a1 = result & 1;
  return result;
}

uint64_t View.intervention(isPresented:with:analyticsContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v67 = a8;
  v58 = a7;
  v62 = a5;
  v63 = a6;
  v61 = a4;
  v65 = a3;
  v64 = a2;
  v54 = a1;
  v9 = type metadata accessor for InterventionPresenter(0);
  v10 = *(*(v9 - 1) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1BC75A960();
  v66 = *(v13 - 8);
  v14 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v59 = &v48 - v15;
  v16 = sub_1BC6A45D0(qword_1EDDD1378, type metadata accessor for InterventionPresenter);
  v72 = a7;
  v73 = v16;
  WitnessTable = swift_getWitnessTable();
  v68 = v13;
  v69 = WitnessTable;
  v18 = WitnessTable;
  v55 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v60 = *(OpaqueTypeMetadata2 - 8);
  v20 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v57 = &v48 - v21;
  v22 = sub_1BC759D90();
  v68 = v13;
  v69 = v18;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v24 = sub_1BC6330A4(&qword_1EDDCF1C8, MEMORY[0x1E697B4E8]);
  v68 = OpaqueTypeMetadata2;
  v69 = v22;
  v49 = OpaqueTypeMetadata2;
  v25 = v22;
  v48 = v22;
  v70 = OpaqueTypeConformance2;
  v71 = v24;
  v51 = OpaqueTypeConformance2;
  v26 = v24;
  v50 = v24;
  v27 = swift_getOpaqueTypeMetadata2();
  v52 = v27;
  v56 = *(v27 - 8);
  v28 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v48 - v29;
  v68 = OpaqueTypeMetadata2;
  v69 = v25;
  v70 = OpaqueTypeConformance2;
  v71 = v26;
  v53 = swift_getOpaqueTypeConformance2();
  v68 = v27;
  v69 = v53;
  v31 = swift_getOpaqueTypeMetadata2();
  v32 = *(v31 - 8);
  v33 = v32[8];
  v34 = MEMORY[0x1EEE9AC00](v31);
  v36 = &v48 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v48 - v37;
  sub_1BC660024(v61, &v12[v9[7]], &qword_1EBCDC878, &qword_1BC763F00);
  sub_1BC660024(v62, &v12[v9[8]], &qword_1EBCDBC50, &qword_1BC762D70);
  KeyPath = swift_getKeyPath();
  PolicyProperty.init()(&v12[v9[6]]);
  v40 = v64;
  *v12 = v54;
  *(v12 + 1) = v40;
  v12[16] = v65;
  *(v12 + 3) = KeyPath;
  *(v12 + 4) = 0;
  v12[40] = 0;

  v41 = v59;
  MEMORY[0x1BFB25FF0](v12, v63, v9, v58);
  sub_1BC6A4570(v12, type metadata accessor for InterventionPresenter);
  v42 = v57;
  View.prefetchSensitiveContentPolicy()(v13, v55);
  (*(v66 + 8))(v41, v13);
  swift_checkMetadataState();
  sub_1BC759D80();
  v43 = v49;
  sub_1BC75B210();

  (*(v60 + 8))(v42, v43);
  v44 = v52;
  sub_1BC75B310();
  (*(v56 + 8))(v30, v44);
  v45 = v32[2];
  v45(v38, v36, v31);
  v46 = v32[1];
  v46(v36, v31);
  v45(v67, v38, v31);
  return (v46)(v38, v31);
}

uint64_t sub_1BC6A2AF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v51[1] = a5;
  v55 = a4;
  v53 = a3;
  v58 = a1;
  v59 = a2;
  v65 = a6;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD48, &qword_1BC764280);
  v6 = *(*(v60 - 8) + 64);
  MEMORY[0x1EEE9AC00](v60);
  v64 = v51 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD38, &qword_1BC764260);
  v54 = *(v61 - 8);
  v8 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v10 = v51 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD30, &qword_1BC764258);
  v52 = *(v62 - 8);
  v11 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v62);
  v13 = v51 - v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD50, &qword_1BC764288);
  v57 = *(v63 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v63);
  v56 = v51 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v51 - v18;
  v20 = type metadata accessor for InterventionConfig(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v24 = v51 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = v51 - v25;
  sub_1BC660024(v58, v19, &qword_1EBCDC250, &qword_1BC761340);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_1BC66008C(v19, &qword_1EBCDC250, &qword_1BC761340);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD40, &qword_1BC764268);
    (*(*(v27 - 8) + 16))(v64, v59, v27);
    swift_storeEnumTagMultiPayload();
    v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBF0, &unk_1BC763F38);
    v29 = sub_1BC633C54(&qword_1EDDCE7B8, &qword_1EBCDCD40, &qword_1BC764268);
    v30 = type metadata accessor for RemoteOrInProcessInterventionView(255);
    v31 = sub_1BC6330A4(qword_1EDDCEF48, type metadata accessor for RemoteOrInProcessInterventionView);
    v66 = v30;
    v67 = v31;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v66 = v27;
    v67 = v28;
    v68 = v29;
    v69 = OpaqueTypeConformance2;
    v33 = swift_getOpaqueTypeConformance2();
    v66 = v61;
    v67 = v33;
    v34 = swift_getOpaqueTypeConformance2();
    v66 = v62;
    v67 = v34;
    swift_getOpaqueTypeConformance2();
    return sub_1BC75AE00();
  }

  else
  {
    sub_1BC6A52AC(v19, v26, type metadata accessor for InterventionConfig);
    sub_1BC63368C(v26, v24, type metadata accessor for InterventionConfig);
    v36 = (*(v21 + 80) + 16) & ~*(v21 + 80);
    v37 = swift_allocObject();
    sub_1BC6A52AC(v24, v37 + v36, type metadata accessor for InterventionConfig);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCD40, &qword_1BC764268);
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDCBF0, &unk_1BC763F38);
    v40 = sub_1BC633C54(&qword_1EDDCE7B8, &qword_1EBCDCD40, &qword_1BC764268);
    v41 = type metadata accessor for RemoteOrInProcessInterventionView(255);
    v42 = sub_1BC6330A4(qword_1EDDCEF48, type metadata accessor for RemoteOrInProcessInterventionView);
    v66 = v41;
    v67 = v42;
    v50 = swift_getOpaqueTypeConformance2();
    sub_1BC75B3C0();

    v66 = v38;
    v67 = v39;
    v68 = v40;
    v69 = v50;
    v43 = swift_getOpaqueTypeConformance2();
    v44 = v61;
    sub_1BC75B310();
    (*(v54 + 8))(v10, v44);
    v66 = v44;
    v67 = v43;
    v45 = swift_getOpaqueTypeConformance2();
    v46 = v56;
    v47 = v62;
    sub_1BC75B350();
    (*(v52 + 8))(v13, v47);
    v48 = v57;
    v49 = v63;
    (*(v57 + 16))(v64, v46, v63);
    swift_storeEnumTagMultiPayload();
    v66 = v47;
    v67 = v45;
    swift_getOpaqueTypeConformance2();
    sub_1BC75AE00();
    (*(v48 + 8))(v46, v49);
    return sub_1BC6A4570(v26, type metadata accessor for InterventionConfig);
  }
}

uint64_t sub_1BC6A3300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v77 = a5;
  v78 = a3;
  v79 = a4;
  v84 = a2;
  v81 = a1;
  v88 = a8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCBF0, &unk_1BC763F38);
  type metadata accessor for RemoteOrInProcessInterventionView(255);
  sub_1BC6330A4(qword_1EDDCEF48, type metadata accessor for RemoteOrInProcessInterventionView);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v93 = a6;
  v94 = v10;
  v95 = a7;
  v96 = OpaqueTypeConformance2;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v74 = *(OpaqueTypeMetadata2 - 8);
  v13 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v73 = &v66 - v14;
  v93 = a6;
  v94 = v10;
  v76 = v10;
  v87 = a7;
  v95 = a7;
  v96 = OpaqueTypeConformance2;
  v72 = OpaqueTypeConformance2;
  v15 = swift_getOpaqueTypeConformance2();
  v93 = OpaqueTypeMetadata2;
  v94 = v15;
  v16 = swift_getOpaqueTypeMetadata2();
  v70 = *(v16 - 8);
  v17 = *(v70 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v66 = &v66 - v18;
  v75 = OpaqueTypeMetadata2;
  v93 = OpaqueTypeMetadata2;
  v94 = v15;
  v69 = v15;
  v85 = swift_getOpaqueTypeConformance2();
  v86 = v16;
  v93 = v16;
  v94 = v85;
  v19 = swift_getOpaqueTypeMetadata2();
  v71 = *(v19 - 8);
  v20 = *(v71 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v68 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v67 = &v66 - v24;
  v25 = *(a6 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x1EEE9AC00](v23);
  v29 = &v66 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v66 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC250, &qword_1BC761340);
  v33 = *(*(v32 - 8) + 64);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v66 - v34;
  v36 = type metadata accessor for InterventionConfig(0);
  v37 = *(v36 - 8);
  v38 = *(v37 + 64);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v40 = &v66 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v80 = &v66 - v41;
  v82 = v19;
  v89 = a6;
  v42 = sub_1BC75AE10();
  v83 = *(v42 - 8);
  v43 = *(v83 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v90 = &v66 - v44;
  sub_1BC660024(v81, v35, &qword_1EBCDC250, &qword_1BC761340);
  if ((*(v37 + 48))(v35, 1, v36) == 1)
  {
    sub_1BC66008C(v35, &qword_1EBCDC250, &qword_1BC761340);
    v45 = v25[2];
    v46 = v89;
    v45(v31, v84, v89);
    v45(v29, v31, v46);
    v48 = v85;
    v47 = v86;
    v93 = v86;
    v94 = v85;
    swift_getOpaqueTypeConformance2();
    v49 = v87;
    sub_1BC633720(v29, v82, v46);
    v50 = v25[1];
    v50(v29, v46);
    v50(v31, v46);
  }

  else
  {
    v51 = v80;
    sub_1BC6A52AC(v35, v80, type metadata accessor for InterventionConfig);
    sub_1BC63368C(v51, v40, type metadata accessor for InterventionConfig);
    v52 = (*(v37 + 80) + 16) & ~*(v37 + 80);
    v53 = swift_allocObject();
    sub_1BC6A52AC(v40, v53 + v52, type metadata accessor for InterventionConfig);
    v49 = v87;
    v54 = v73;
    sub_1BC75B3C0();

    v55 = v66;
    v56 = v75;
    sub_1BC75B310();
    (*(v74 + 8))(v54, v56);
    v57 = v68;
    v48 = v85;
    v47 = v86;
    sub_1BC75B350();
    (*(v70 + 8))(v55, v47);
    v93 = v47;
    v94 = v48;
    v81 = swift_getOpaqueTypeConformance2();
    v84 = v42;
    v58 = v71;
    v59 = *(v71 + 16);
    v60 = v67;
    v61 = v82;
    v59(v67, v57, v82);
    v62 = *(v58 + 8);
    v62(v57, v61);
    v59(v57, v60, v61);
    sub_1BC633818(v57, v61);
    v62(v57, v61);
    v62(v60, v61);
    v42 = v84;
    sub_1BC6A4570(v80, type metadata accessor for InterventionConfig);
  }

  v93 = v47;
  v94 = v48;
  v91 = swift_getOpaqueTypeConformance2();
  v92 = v49;
  swift_getWitnessTable();
  v63 = v83;
  v64 = v90;
  (*(v83 + 16))(v88, v90, v42);
  return (*(v63 + 8))(v64, v42);
}

uint64_t sub_1BC6A3C38(uint64_t a1)
{
  v2 = type metadata accessor for InterventionConfig(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RemoteOrInProcessInterventionView(0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BC63368C(a1, v5, type metadata accessor for InterventionConfig);
  sub_1BC6A6914(v5, v9);
  sub_1BC6330A4(qword_1EDDCEF48, type metadata accessor for RemoteOrInProcessInterventionView);
  sub_1BC75B310();
  return sub_1BC6A4570(v9, type metadata accessor for RemoteOrInProcessInterventionView);
}

void sub_1BC6A3D90(_BYTE *a1, uint64_t a2)
{
  v4 = sub_1BC75ABB0();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1 == 1)
  {
    v10 = *(a2 + 24);
    v11 = *(a2 + 32);
    if (*(a2 + 40) == 1)
    {
      v12 = *(a2 + 32);
      sub_1BC63302C(*(a2 + 24));
      if (v10 == 1)
      {
        return;
      }
    }

    else
    {
      v13 = v7;

      sub_1BC75BF70();
      v14 = sub_1BC75AFC0();
      sub_1BC75A4B0();

      sub_1BC75ABA0();
      swift_getAtKeyPath();
      sub_1BC63906C(v10, v11, 0);
      (*(v5 + 8))(v9, v13);
      v10 = v17;
      if (v17 == 1)
      {
        return;
      }
    }

    type metadata accessor for SCAError(0);
    v16[1] = 20;
    sub_1BC678250(MEMORY[0x1E69E7CC0]);
    sub_1BC6330A4(&unk_1EBCDC290, type metadata accessor for SCAError);
    sub_1BC759700();
    v15 = v17;
    sub_1BC7120B0(v17, v10);
    sub_1BC635468(v10);
  }
}

size_t sub_1BC6A3FA8(size_t result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCDC210, &qword_1BC761190);
  v10 = *(sub_1BC759D00() - 8);
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
  v15 = *(sub_1BC759D00() - 8);
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

uint64_t sub_1BC6A4180(unint64_t a1)
{
  v2 = sub_1BC759CA0();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BC759FE0();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v36 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1BC759D00();
  v39 = *(v35 - 8);
  v8 = *(v39 + 64);
  result = MEMORY[0x1EEE9AC00](v35);
  v40 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_1BC75C3B0();
    v11 = 0;
    v12 = 0;
    v13 = 0;
    a1 = result | 0x8000000000000000;
  }

  else
  {
    v14 = -1 << *(a1 + 32);
    v11 = a1 + 64;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(a1 + 64);
  }

  v17 = 0;
  v18 = (v12 + 64) >> 6;
  v34[0] = v12;
  v34[1] = v39 + 32;
  v19 = MEMORY[0x1E69E7CC0];
  v38 = a1;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v20 = v17;
    v21 = v13;
    v22 = v17;
    if (!v13)
    {
      break;
    }

LABEL_12:
    v23 = (v21 - 1) & v21;
    v24 = (v22 << 9) | (8 * __clz(__rbit64(v21)));
    v25 = *(*(a1 + 48) + v24);
    v26 = *(*(a1 + 56) + v24);
    v27 = v25;
    v28 = v26;
    if (!v27)
    {
LABEL_22:
      sub_1BC639AFC();
      return v19;
    }

    while (1)
    {
      SCAParticipant.structParticipant.getter();
      sub_1BC75BFE0();
      sub_1BC759CB0();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1BC6A3FA8(0, v19[2] + 1, 1, v19);
      }

      v33 = v19[2];
      v32 = v19[3];
      if (v33 >= v32 >> 1)
      {
        v19 = sub_1BC6A3FA8(v32 > 1, v33 + 1, 1, v19);
      }

      v19[2] = v33 + 1;
      result = (*(v39 + 32))(v19 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v33, v40, v35);
      v17 = v22;
      v13 = v23;
      a1 = v38;
      if ((v38 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      v29 = sub_1BC75C3C0();
      if (v29)
      {
        v31 = v30;
        v41 = v29;
        sub_1BC65F664(0, &qword_1EDDCDFB0, 0x1E697B648);
        swift_dynamicCast();
        v27 = v42;
        v41 = v31;
        sub_1BC65F664(0, &qword_1EDDCDF98, 0x1E697B670);
        swift_dynamicCast();
        v28 = v42;
        v22 = v17;
        v23 = v13;
        if (v27)
        {
          continue;
        }
      }

      goto LABEL_22;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v18)
    {
      goto LABEL_22;
    }

    v21 = *(v11 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC6A4570(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1BC6A45D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1BC6A463C()
{
  if (!qword_1EDDCE728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    type metadata accessor for SCACallType(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDDCE728);
    }
  }
}

void sub_1BC6A46E4()
{
  if (!qword_1EDDCE730)
  {
    MEMORY[0x1EEE9AC00](0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC8E8, &unk_1BC762EC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC478, &qword_1BC761A60);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDC808, &qword_1BC763F60);
    type metadata accessor for SCACallType(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EDDCE730);
    }
  }
}

void sub_1BC6A482C()
{
  if (!qword_1EDDCE800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC08, &qword_1BC763FE8);
    v0 = sub_1BC75A720();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDDCE800);
    }
  }
}

void sub_1BC6A48B8()
{
  type metadata accessor for PolicyProperty(319);
  if (v0 <= 0x3F)
  {
    sub_1BC632880(319, &qword_1EBCDCC18, type metadata accessor for IntervenableAction, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Intervention.Kind(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1BC6A49A0(uint64_t a1, _BYTE *a2)
{
  v3 = *(*(type metadata accessor for PolicyCheckingIntervention(0) - 8) + 80);

  return sub_1BC6A1BAC(a2);
}

unint64_t sub_1BC6A4A10()
{
  result = qword_1EBCDCC38;
  if (!qword_1EBCDCC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC20, &qword_1BC7640C8);
    sub_1BC6A4A9C();
    sub_1BC6A5158();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCC38);
  }

  return result;
}

unint64_t sub_1BC6A4A9C()
{
  result = qword_1EBCDCC40;
  if (!qword_1EBCDCC40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBCDCC48, &qword_1BC7640E8);
    sub_1BC6A4B28();
    sub_1BC6A50A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCDCC40);
  }

  return result;
}