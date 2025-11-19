uint64_t sub_1E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != 4)
  {
    sub_23E1C();
  }

  sub_20A0(&qword_35428, &qword_26200);
  sub_20A0(&qword_35430, &qword_25330);
  sub_20E8(&qword_35438, &unk_26210);
  sub_2130();
  swift_getOpaqueTypeConformance2();
  sub_21B4();
  return sub_23F5C();
}

uint64_t sub_1F7C(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_23164(2, 18, 1, 0);
  return swift_getOpaqueTypeMetadata2();
}

uint64_t sub_2010(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_23164(2, 18, 1, 0);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_20A0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_20E8(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2130()
{
  result = qword_35440;
  if (!qword_35440)
  {
    sub_20E8(&qword_35438, &unk_26210);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35440);
  }

  return result;
}

unint64_t sub_21B4()
{
  result = qword_35448;
  if (!qword_35448)
  {
    sub_20E8(&qword_35430, &qword_25330);
    sub_2240();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35448);
  }

  return result;
}

unint64_t sub_2240()
{
  result = qword_35450;
  if (!qword_35450)
  {
    sub_20E8(&qword_35458, &qword_26220);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35450);
  }

  return result;
}

__n128 sub_22A4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_22B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_2338(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

unint64_t sub_238C()
{
  result = sub_237EC();
  if (v1 <= 0x3F)
  {
    result = sub_2490();
    if (v2 <= 0x3F)
    {
      result = sub_2510(319, qword_35810, SAIntentGroupRunSiriKitExecutor_ptr);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_2490()
{
  result = qword_35800;
  if (!qword_35800)
  {
    sub_2510(255, &qword_35808, AceObject_ptr);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_35800);
  }

  return result;
}

uint64_t sub_2510(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

void sub_2560(uint64_t a1)
{
  sub_2426C();
  if (v2 <= 0x3F)
  {
    sub_288C();
    if (v3 <= 0x3F)
    {
      sub_2920();
      if (v4 <= 0x3F)
      {
        v5 = *(a1 + 16);
        v6 = *(a1 + 24);
        type metadata accessor for ActionableRow.ActionType();
        if (v7 <= 0x3F)
        {
          sub_29B4();
          if (v8 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_2644(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2426C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = *(a3 + 16);
  v12 = *(a3 + 24);
  v13 = type metadata accessor for ActionableRow.ActionType();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + *(a3 + 44);
    goto LABEL_5;
  }

  v16 = *(a1 + *(a3 + 48));
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_2768(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2426C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = *(a4 + 16);
    v14 = *(a4 + 24);
    result = type metadata accessor for ActionableRow.ActionType();
    v16 = *(result - 8);
    if (*(v16 + 84) != a3)
    {
      *(a1 + *(a4 + 48)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v16 + 56);
    v12 = a1 + *(a4 + 44);
  }

  return v11(v12, a2, a2, v10);
}

void sub_288C()
{
  if (!qword_35898)
  {
    type metadata accessor for CommandThrottle();
    sub_3D64(&qword_358A0, type metadata accessor for CommandThrottle);
    v0 = sub_23BEC();
    if (!v1)
    {
      atomic_store(v0, &qword_35898);
    }
  }
}

void sub_2920()
{
  if (!qword_358A8)
  {
    sub_242FC();
    sub_3D64(&qword_358B0, &type metadata accessor for Context);
    v0 = sub_23BEC();
    if (!v1)
    {
      atomic_store(v0, &qword_358A8);
    }
  }
}

unint64_t sub_29B4()
{
  result = qword_358B8;
  if (!qword_358B8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_358B8);
  }

  return result;
}

uint64_t sub_2A4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v64 = a2;
  v3 = sub_23BAC();
  v65 = v3;
  v63 = *(v3 - 8);
  v4 = *(v63 + 64);
  v5 = __chkstk_darwin(v3);
  v61 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v59 = *(a1 + 16);
  sub_23B8C();
  sub_20E8(&qword_358C0, &qword_25438);
  v9 = sub_23B8C();
  v54 = *(a1 + 24);
  v77 = v54;
  v78 = &protocol witness table for _AllowsHitTestingModifier;
  v62 = &protocol conformance descriptor for <> ModifiedContent<A, B>;
  WitnessTable = swift_getWitnessTable();
  v11 = sub_3F18(&qword_358C8, &qword_358C0, &qword_25438);
  v75 = WitnessTable;
  v76 = v11;
  v51 = v9;
  v50 = swift_getWitnessTable();
  v12 = sub_2406C();
  v55 = *(v12 - 8);
  v13 = *(v55 + 64);
  __chkstk_darwin(v12);
  v48 = &v44 - v14;
  v15 = swift_getWitnessTable();
  v47 = v15;
  v46 = sub_3D64(&qword_358D0, &type metadata accessor for PlainButtonStyle);
  v71 = v12;
  v72 = v3;
  v73 = v15;
  v74 = v46;
  v57 = &opaque type descriptor for <<opaque return type of View.buttonStyle<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v58 = *(OpaqueTypeMetadata2 - 8);
  v16 = *(v58 + 64);
  __chkstk_darwin(OpaqueTypeMetadata2);
  v45 = &v44 - v17;
  v18 = sub_23B8C();
  v56 = *(v18 - 8);
  v19 = *(v56 + 64);
  v20 = __chkstk_darwin(v18);
  v49 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v52 = &v44 - v22;
  v23 = v7;
  v24 = *(v7 + 16);
  v25 = v60;
  v44 = a1;
  v24(&v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v60, a1);
  v26 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v27 = swift_allocObject();
  v28 = v59;
  v29 = v54;
  *(v27 + 16) = v59;
  *(v27 + 24) = v29;
  (*(v23 + 32))(v27 + v26, &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  v66 = v28;
  v67 = v29;
  v68 = v25;
  v30 = v48;
  sub_2405C();
  v31 = v61;
  sub_23B9C();
  v32 = v45;
  v33 = v65;
  v34 = v47;
  v35 = v46;
  sub_23F4C();
  (*(v63 + 8))(v31, v33);
  (*(v55 + 8))(v30, v12);
  sub_3DD4(v44);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_23ADC();

  v71 = v12;
  v72 = v65;
  v73 = v34;
  v74 = v35;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v37 = v49;
  v38 = OpaqueTypeMetadata2;
  sub_23F8C();
  (*(v58 + 8))(v32, v38);
  v69 = OpaqueTypeConformance2;
  v70 = &protocol witness table for _AllowsHitTestingModifier;
  swift_getWitnessTable();
  v39 = v56;
  v40 = *(v56 + 16);
  v41 = v52;
  v40(v52, v37, v18);
  v42 = *(v39 + 8);
  v42(v37, v18);
  v40(v64, v41, v18);
  return (v42)(v41, v18);
}

uint64_t sub_3190(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ActionableRow();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v15 - v10;
  sub_3DD4(v9);
  (*(v7 + 16))(v11, a1, v6);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  (*(v7 + 32))(v13 + v12, v11, v6);

  sub_207B4(sub_40FC);
}

uint64_t sub_32F0(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v3 = sub_242CC();
  v57 = *(v3 - 8);
  v58 = v3;
  v4 = *(v57 + 64);
  __chkstk_darwin();
  v56 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_237EC();
  v47 = *(v6 - 8);
  v48 = v6;
  v7 = *(v47 + 64);
  __chkstk_darwin();
  v46 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ActionableRow.ActionType();
  v52 = *(v9 - 8);
  v53 = v9;
  v10 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v54 = (v45 - v11);
  v12 = (*(*(sub_20A0(&qword_35C20, &unk_25498) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v14 = v45 - v13;
  v49 = sub_241FC();
  v15 = *(v49 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v51 = v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(sub_2375C() - 8) + 64);
  __chkstk_darwin();
  v50 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23A9C();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin();
  v24 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236EC();
  v25 = sub_23A8C();
  v26 = sub_2446C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v45[1] = a2;
    v29 = v28;
    v59 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_20FB4(2036625250, 0xE400000000000000, &v59);
    _os_log_impl(&dword_0, v25, v26, "%s Actionable row tapped", v27, 0xCu);
    sub_4230(v29);
  }

  (*(v21 + 8))(v24, v20);
  v30 = type metadata accessor for ActionableRow();
  v31 = v55;
  v32 = sub_41AC(v30);
  sub_17434(&_swiftEmptyArrayStorage);
  sub_2374C();

  (*(v15 + 104))(v51, enum case for InteractionType.componentTapped(_:), v49);
  sub_241BC();
  v33 = sub_241DC();
  (*(*(v33 - 8) + 56))(v14, 0, 1, v33);
  v34 = objc_allocWithZone(sub_2428C());
  v35 = sub_2427C();
  sub_242EC();

  v36 = v54;
  (*(v52 + 16))(v54, v31 + *(v30 + 44), v53);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v38 = *v36;
    v39 = v56;
    if (EnumCaseMultiPayload == 1)
    {
      sub_2424C();
      sub_242AC();
    }

    else
    {
      sub_2424C();
      sub_242BC();
    }

    return (*(v57 + 8))(v39, v58);
  }

  else
  {
    v41 = v46;
    v40 = v47;
    v42 = v48;
    (*(v47 + 32))(v46, v36, v48);
    v43 = v56;
    sub_2424C();
    sub_2429C();
    (*(v57 + 8))(v43, v58);
    return (*(v40 + 8))(v41, v42);
  }
}

uint64_t sub_3964@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v33 = a4;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(a1);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_23B8C();
  v32 = *(v11 - 8);
  v12 = *(v32 + 64);
  __chkstk_darwin(v11);
  v14 = &v30 - v13;
  sub_20E8(&qword_358C0, &qword_25438);
  v15 = sub_23B8C();
  v16 = *(v15 - 8);
  v17 = v16[8];
  v18 = __chkstk_darwin(v15);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v31 = &v30 - v21;
  v22 = a1 + *(type metadata accessor for ActionableRow() + 48);
  v23 = *(v22 + 8);
  (*v22)();
  sub_23F8C();
  (*(v7 + 8))(v10, a2);
  sub_240AC();
  sub_20A0(&qword_358D8, &qword_25488);
  v36 = a3;
  v37 = &protocol witness table for _AllowsHitTestingModifier;
  WitnessTable = swift_getWitnessTable();
  sub_3E60();
  sub_23F3C();
  (*(v32 + 8))(v14, v11);
  v25 = sub_3F18(&qword_358C8, &qword_358C0, &qword_25438);
  v34 = WitnessTable;
  v35 = v25;
  swift_getWitnessTable();
  v26 = v16[2];
  v27 = v31;
  v26(v31, v20, v15);
  v28 = v16[1];
  v28(v20, v15);
  v26(v33, v27, v15);
  return (v28)(v27, v15);
}

uint64_t sub_3D10@<X0>(uint64_t a1@<X8>)
{
  result = sub_23FAC();
  *a1 = result;
  *(a1 + 8) = 0;
  return result;
}

uint64_t sub_3D64(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_3DD4(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  result = *v2;
  if (!*v2)
  {
    v4 = v2[1];
    type metadata accessor for CommandThrottle();
    sub_3D64(&qword_358A0, type metadata accessor for CommandThrottle);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

unint64_t sub_3E60()
{
  result = qword_358E0;
  if (!qword_358E0)
  {
    sub_20E8(&qword_358D8, &qword_25488);
    sub_3F18(&qword_358E8, &qword_358F0, &qword_25490);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_358E0);
  }

  return result;
}

uint64_t sub_3F18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_20E8(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_3F60()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for ActionableRow();
  v4 = *(*(v3 - 1) + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = *(*(v3 - 1) + 64);
  v7 = v0 + v5;
  v8 = sub_2426C();
  (*(*(v8 - 8) + 8))(v0 + v5, v8);
  v9 = *(v0 + v5 + v3[9]);

  v10 = v3[11];
  type metadata accessor for ActionableRow.ActionType();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
  }

  else if (!EnumCaseMultiPayload)
  {
    v12 = sub_237EC();
    (*(*(v12 - 8) + 8))(v7 + v10, v12);
  }

  v13 = *(v7 + v3[12] + 8);

  return _swift_deallocObject(v0, v5 + v6, v4 | 7);
}

uint64_t sub_4114(uint64_t (*a1)(uint64_t, uint64_t, uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(type metadata accessor for ActionableRow() - 8);
  v5 = v1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));

  return a1(v5, v2, v3);
}

uint64_t sub_41AC(uint64_t a1)
{
  v2 = (v1 + *(a1 + 40));
  result = *v2;
  if (!*v2)
  {
    v4 = v2[1];
    sub_242FC();
    sub_3D64(&qword_358B0, &type metadata accessor for Context);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

uint64_t sub_4230(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_42AC(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_23B8C();
  sub_20E8(&qword_358C0, &qword_25438);
  sub_23B8C();
  swift_getWitnessTable();
  sub_3F18(&qword_358C8, &qword_358C0, &qword_25438);
  swift_getWitnessTable();
  sub_2406C();
  sub_23BAC();
  swift_getWitnessTable();
  sub_3D64(&qword_358D0, &type metadata accessor for PlainButtonStyle);
  swift_getOpaqueTypeMetadata2();
  sub_23B8C();
  swift_getOpaqueTypeConformance2();
  return swift_getWitnessTable();
}

void sub_4490()
{
  v0 = sub_2391C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &_swiftEmptyArrayStorage;
  v5 = sub_2388C();
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    while (v7 < *(v5 + 16))
    {
      (*(v1 + 16))(v4, v5 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v7, v0);
      v8 = sub_46D4();
      (*(v1 + 8))(v4, v0);
      if (v8 >> 62)
      {
        if (!sub_245FC())
        {
LABEL_17:

          return;
        }
      }

      else if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_17;
      }

      if ((v8 & 0xC000000000000001) != 0)
      {
        v9 = sub_2459C();
      }

      else
      {
        if (!*(&dword_10 + (v8 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_19;
        }

        v9 = *(v8 + 32);
      }

      v10 = v9;

      v11 = v10;
      sub_243BC();
      if (*(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (v13 & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v12 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
        sub_243EC();
      }

      ++v7;
      sub_243FC();

      if (v6 == v7)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_16:
  }
}

void *sub_46D4()
{
  v0 = sub_20A0(&qword_358F8, &qword_254A8);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = v35 - v2;
  v4 = sub_237DC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v9);
  v11 = v35 - v10;
  v12 = sub_238BC();
  if (!v13)
  {
    return &_swiftEmptyArrayStorage;
  }

  v14 = v13;
  if (v12 == sub_237CC() && v14 == v15)
  {
  }

  else
  {
    v16 = sub_246AC();

    if ((v16 & 1) == 0)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  v17 = sub_238CC();
  if (v18 >> 60 == 15)
  {
    return &_swiftEmptyArrayStorage;
  }

  v19 = v17;
  v20 = v18;
  v21 = sub_2367C();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  sub_2366C();
  sub_4B78();
  sub_2365C();

  (*(v5 + 56))(v3, 0, 1, v4);
  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v8, v11, v4);
  if ((*(v5 + 88))(v8, v4) != enum case for RGPluginModel.card(_:))
  {
    v33 = *(v5 + 8);
    v33(v8, v4);
    sub_4C38(v19, v20);
    v33(v11, v4);
    return &_swiftEmptyArrayStorage;
  }

  (*(v5 + 96))(v8, v4);
  v25 = *v8;
  v24 = v8[1];
  v26 = objc_allocWithZone(_SFPBCard);
  sub_4CA0(v25, v24);
  isa = sub_236AC().super.isa;
  sub_4C4C(v25, v24);
  v28 = [v26 initWithData:isa];

  if (!v28)
  {
    sub_4C38(v19, v20);
LABEL_15:
    sub_4C4C(v25, v24);
    (*(v5 + 8))(v11, v4);
    return &_swiftEmptyArrayStorage;
  }

  v29 = [objc_allocWithZone(SFCard) initWithProtobuf:v28];
  if (!v29)
  {
    sub_4C38(v19, v20);

    goto LABEL_15;
  }

  v30 = v29;
  v31 = [v29 cardSections];
  if (v31)
  {
    v32 = v31;
    sub_4CF4();
    v35[0] = sub_243DC();

    sub_4C4C(v25, v24);
    sub_4C38(v19, v20);
  }

  else
  {

    sub_4C38(v19, v20);
    sub_4C4C(v25, v24);
    v35[0] = &_swiftEmptyArrayStorage;
  }

  (*(v5 + 8))(v11, v4);
  return v35[0];
}

unint64_t sub_4B78()
{
  result = qword_35900;
  if (!qword_35900)
  {
    sub_237DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35900);
  }

  return result;
}

uint64_t sub_4BD0(uint64_t a1)
{
  v2 = sub_20A0(&qword_358F8, &qword_254A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_4C38(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_4C4C(a1, a2);
  }

  return a1;
}

uint64_t sub_4C4C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_4CA0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_4CF4()
{
  result = qword_35C00;
  if (!qword_35C00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_35C00);
  }

  return result;
}

uint64_t sub_4D40()
{
  v0 = sub_6958(&off_31830);
  result = sub_69F0(&unk_31850);
  qword_35908 = v0;
  return result;
}

uint64_t sub_4D80@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_20A0(&qword_359B8, &qword_25540);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  v6 = sub_2369C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v29 - v12;
  sub_2390C();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_6A44(v5, &qword_359B8, &qword_25540);
    v14 = 0;
    v15 = 0xE000000000000000;
  }

  else
  {
    (*(v7 + 32))(v13, v5, v6);
    (*(v7 + 16))(v10, v13, v6);
    v14 = sub_2435C();
    v15 = v16;
    (*(v7 + 8))(v13, v6);
  }

  v17 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
    v30 = v14;
    v31 = v15;
    sub_6AA4();
    v18 = sub_23E9C();
    v20 = v19;
    v22 = v21;
    v24 = v23;
    KeyPath = swift_getKeyPath();
    v30 = v18;
    v31 = v20;
    v26 = v22 & 1;
    v32 = v22 & 1;
    v33 = v24;
    v34 = KeyPath;
    v35 = 1;
    v36 = 0;
    sub_20A0(&qword_359C8, &unk_26410);
    sub_6B00();
    v27 = sub_23EAC();
    sub_6BB8(v18, v20, v26);

    *(a1 + 24) = &type metadata for AnyView;
    *(a1 + 32) = &protocol witness table for AnyView;
    *a1 = v27;
  }

  else
  {
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_504C@<X0>(uint64_t a1@<X8>)
{
  v54 = a1;
  v55 = sub_20A0(&qword_35910, &qword_26430);
  v1 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55);
  v3 = v47 - v2;
  v4 = sub_20A0(&qword_35918, &qword_254B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v49 = v47 - v6;
  v7 = sub_20A0(&qword_35920, &qword_254B8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v48 = v47 - v9;
  v53 = sub_2413C();
  v52 = *(v53 - 8);
  v10 = *(v52 + 64);
  __chkstk_darwin(v53);
  v51 = v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_20A0(&qword_35928, &qword_254C0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12);
  v15 = v47 - v14;
  v16 = sub_2378C();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v18 = sub_2419C();
  v50 = *(v18 - 8);
  v19 = *(v50 + 64);
  __chkstk_darwin(v18);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_20A0(&qword_35930, &qword_254C8);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v25 = (v47 - v24);
  sub_238DC();
  v26 = sub_2410C();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v25, 1, v26) == 1)
  {
    goto LABEL_2;
  }

  v47[1] = v12;
  v29 = (*(v27 + 88))(v25, v26);
  if (v29 == enum case for DisplayRepresentation.Image.data(_:))
  {
    (*(v27 + 96))(v25, v26);
    v30 = *v25;
    v31 = v25[1];
    sub_2377C();
    sub_241AC();
    sub_5CF0();
    v32 = sub_23EAC();
    (*(v50 + 8))(v21, v18);
    *&v58 = v32;
    BYTE8(v58) = 0;
    swift_retain_n();
    sub_23D1C();
    v33 = BYTE8(v63[0]);
    *v15 = *&v63[0];
    v15[8] = v33;
    swift_storeEnumTagMultiPayload();

    sub_20A0(&qword_35938, &qword_254D0);
    sub_5BF0();
    sub_5C6C();
    sub_23D1C();
    sub_4C4C(v30, v31);
  }

  else
  {
    if (v29 != enum case for DisplayRepresentation.Image.symbol(_:))
    {
      (*(v27 + 8))(v25, v26);
LABEL_2:
      sub_5974(v3);
      sub_5B80(v3, v15);
      swift_storeEnumTagMultiPayload();
      sub_20A0(&qword_35938, &qword_254D0);
      sub_5BF0();
      sub_5C6C();
      sub_23D1C();
      return sub_6A44(v3, &qword_35910, &qword_26430);
    }

    (*(v27 + 96))(v25, v26);
    (*(v52 + 32))(v51, v25, v53);
    sub_2411C();
    sub_23FDC();
    v34 = v48;
    sub_23CCC();
    v35 = sub_23CDC();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v36 = sub_23FEC();

    sub_6A44(v34, &qword_35920, &qword_254B8);
    v37 = v49;
    sub_2412C();
    v38 = sub_20A0(&qword_35958, &qword_254D8);
    v39 = *(v38 - 8);
    if ((*(v39 + 48))(v37, 1, v38) == 1)
    {
      sub_6A44(v37, &qword_35918, &qword_254B0);
      v40 = sub_23FBC();
    }

    else
    {
      v41 = sub_240CC();
      (*(v39 + 8))(v37, v38);
      v42 = [v41 CGColor];
      v40 = sub_23F9C();
    }

    v43 = sub_23E2C();
    KeyPath = swift_getKeyPath();
    sub_240AC();
    sub_23B6C();
    *&v58 = v36;
    *(&v58 + 1) = v40;
    *&v59 = KeyPath;
    *(&v59 + 1) = v43;
    sub_20A0(&qword_35960, &qword_25510);
    sub_675C();
    v45 = sub_23EAC();
    v63[2] = v60;
    v63[3] = v61;
    v63[4] = v62;
    v63[0] = v58;
    v63[1] = v59;
    sub_6A44(v63, &qword_35960, &qword_25510);
    v56 = v45;
    v57 = 1;

    sub_23D1C();
    v46 = BYTE8(v58);
    *v15 = v58;
    v15[8] = v46;
    swift_storeEnumTagMultiPayload();
    sub_20A0(&qword_35938, &qword_254D0);
    sub_5BF0();
    sub_5C6C();
    sub_23D1C();

    return (*(v52 + 8))(v51, v53);
  }
}

uint64_t sub_5974@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_2378C();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v4 = sub_2419C();
  v15 = *(v4 - 8);
  v5 = *(v15 + 64);
  __chkstk_darwin(v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238BC();
  if (v9)
  {
    v10 = v9;
    if (qword_35420 != -1)
    {
      v13 = v8;
      swift_once();
      v8 = v13;
    }

    if ((sub_5D48(v8, v10, qword_35908) & 1) == 0)
    {
      sub_2376C();

      sub_241AC();
      (*(v15 + 32))(a1, v7, v4);
      return (*(v15 + 56))(a1, 0, 1, v4);
    }
  }

  v11 = *(v15 + 56);

  return v11(a1, 1, 1, v4);
}

uint64_t sub_5B80(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_35910, &qword_26430);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_5BF0()
{
  result = qword_35940;
  if (!qword_35940)
  {
    sub_20E8(&qword_35938, &qword_254D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35940);
  }

  return result;
}

unint64_t sub_5C6C()
{
  result = qword_35948;
  if (!qword_35948)
  {
    sub_20E8(&qword_35910, &qword_26430);
    sub_5CF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35948);
  }

  return result;
}

unint64_t sub_5CF0()
{
  result = qword_35950;
  if (!qword_35950)
  {
    sub_2419C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35950);
  }

  return result;
}

uint64_t sub_5D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  sub_246EC();
  sub_2438C();
  v7 = sub_2470C();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (sub_246AC() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_5E40(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_246EC();
  sub_2438C();
  v9 = sub_2470C();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_246AC() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_61F0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_5F90(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_20A0(&qword_359B0, &qword_25538);
  result = sub_2454C();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_246EC();
      sub_2438C();
      result = sub_2470C();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

Swift::Int sub_61F0(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_5F90(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_6370();
      goto LABEL_16;
    }

    sub_64CC(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_246EC();
  sub_2438C();
  result = sub_2470C();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_246AC();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_246CC();
  __break(1u);
  return result;
}

void *sub_6370()
{
  v1 = v0;
  sub_20A0(&qword_359B0, &qword_25538);
  v2 = *v0;
  v3 = sub_2453C();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_64CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_20A0(&qword_359B0, &qword_25538);
  result = sub_2454C();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_246EC();

      sub_2438C();
      result = sub_2470C();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_6704@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23C1C();
  *a1 = result;
  return result;
}

uint64_t sub_6730(uint64_t *a1)
{
  v1 = *a1;

  return sub_23C2C();
}

unint64_t sub_675C()
{
  result = qword_35968;
  if (!qword_35968)
  {
    sub_20E8(&qword_35960, &qword_25510);
    sub_67E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35968);
  }

  return result;
}

unint64_t sub_67E8()
{
  result = qword_35970;
  if (!qword_35970)
  {
    sub_20E8(&qword_35978, &qword_25518);
    sub_68A0();
    sub_3F18(&qword_359A0, &qword_359A8, &qword_25530);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35970);
  }

  return result;
}

unint64_t sub_68A0()
{
  result = qword_35980;
  if (!qword_35980)
  {
    sub_20E8(&qword_35988, &qword_25520);
    sub_3F18(&qword_35990, &qword_35998, &qword_25528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35980);
  }

  return result;
}

uint64_t sub_6958(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = sub_2444C();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_5E40(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_6A44(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_20A0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_6AA4()
{
  result = qword_359C0;
  if (!qword_359C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_359C0);
  }

  return result;
}

unint64_t sub_6B00()
{
  result = qword_359D0;
  if (!qword_359D0)
  {
    sub_20E8(&qword_359C8, &unk_26410);
    sub_3F18(&qword_359D8, &unk_359E0, &qword_25578);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_359D0);
  }

  return result;
}

uint64_t sub_6BB8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void *sub_6BC8(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_244FC();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_B860(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_6C48@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RGSFCardView(0);
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2425C();
  *&v10[v6[6]] = 0;
  v11 = v6[7];
  *&v10[v11] = sub_1744C(&_swiftEmptyArrayStorage);
  *&v10[v6[8]] = 3;
  v12 = &v10[v6[10]];
  *v12 = sub_7844;
  *(v12 + 1) = 0;
  v12[16] = 0;
  v13 = &v10[v6[11]];
  v24 = 0x4059000000000000;
  sub_2400C();
  v14 = v26;
  *v13 = v25;
  *(v13 + 1) = v14;
  v15 = objc_allocWithZone(_SFPBCard);
  sub_4CA0(a1, a2);
  isa = sub_236AC().super.isa;
  sub_4C4C(a1, a2);
  v17 = [v15 initWithData:isa];

  if (v17)
  {
    v18 = [objc_allocWithZone(SFCard) initWithProtobuf:v17];
    if (v18)
    {
      *&v10[v6[5]] = v18;
      v19 = &v10[v6[9]];
      LOBYTE(v24) = 0;
      sub_2400C();

      sub_4C4C(a1, a2);
      v20 = v26;
      *v19 = v25;
      *(v19 + 1) = v20;
      sub_B8F0(v10, a3);
      (*(v7 + 56))(a3, 0, 1, v6);
      return sub_B954(v10);
    }

    sub_4C4C(a1, a2);
  }

  else
  {
    sub_4C4C(a1, a2);
  }

  v22 = sub_2426C();
  (*(*(v22 - 8) + 8))(v10, v22);

  return (*(v7 + 56))(a3, 1, 1, v6);
}

uint64_t sub_6F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v79 = sub_236DC();
  v85 = *(v79 - 8);
  v3 = *(v85 + 64);
  __chkstk_darwin(v79);
  v5 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v78 = (&v75 - v7);
  __chkstk_darwin(v8);
  v83 = &v75 - v9;
  v10 = sub_2370C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  __chkstk_darwin(v10);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for RGSFCardView(0);
  v80 = *(v15 - 8);
  v16 = *(v80 + 64);
  __chkstk_darwin(v15);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2425C();
  v82 = *(v15 + 24);
  *(v82 + v18) = 0;
  v19 = *(v15 + 28);
  *(v18 + v19) = sub_1744C(&_swiftEmptyArrayStorage);
  *(v18 + *(v15 + 32)) = 3;
  v20 = (v18 + *(v15 + 40));
  *v20 = sub_7844;
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = (v18 + *(v15 + 44));
  v88 = 0x4059000000000000;
  sub_2400C();
  v22 = v87;
  *v21 = v86;
  *(v21 + 1) = v22;
  v23 = v11;
  v24 = *(v11 + 2);
  v84 = a1;
  v24(v14, a1, v10);
  v25 = (*(v11 + 11))(v14, v10);
  if (v25 != enum case for Layout.expandable(_:))
  {
    v75 = v18;
    v76 = v5;
    v36 = v82;
    v35 = v83;
    v78 = v15;
    if (v25 != enum case for Layout.truncated(_:))
    {
      v54 = v85;
      if (v25 != enum case for Layout.card(_:))
      {
        v59 = *(v23 + 1);
        v59(v84, v10);
        v59(v14, v10);
        v60 = sub_2426C();
        (*(*(v60 - 8) + 8))(v75, v60);

        return (*(v80 + 56))(v81, 1, 1, v78);
      }

      (*(v23 + 12))(v14, v10);
      v55 = v23;
      v56 = v79;
      (*(v54 + 32))(v35, v14, v79);
      v57 = sub_236CC();
      v55[1](v84, v10);
      (*(v54 + 8))(v35, v56);
      v58 = 0;
      v15 = v78;
      v18 = v75;
      *&v75[v78[5]] = v57;
      goto LABEL_39;
    }

    v83 = v11;
    v37 = *(v11 + 12);
    v77 = v10;
    v37(v14, v10);
    v38 = *&v14[*(sub_20A0(&qword_35BF0, &qword_256A8) + 48)];
    v39 = v85;
    v40 = v79;
    (*(v85 + 32))(v76, v14, v79);
    v41 = sub_236CC();
    v15 = v78;
    v18 = v75;
    *&v75[v78[5]] = v41;
    v42 = sub_236CC();
    v43 = [v42 copy];

    sub_244EC();
    swift_unknownObjectRelease();
    sub_2510(0, &qword_35BF8, SFCard_ptr);
    if (swift_dynamicCast())
    {
      v44 = v88;
      *&v36[v18] = v88;
      v45 = [v44 cardSections];
      v46 = v84;
      v47 = v76;
      if (v45)
      {
        sub_2510(0, &qword_35C00, SFCardSection_ptr);
        v15 = sub_243DC();

        if (v38 < 0)
        {
          __break(1u);
        }

        else
        {
          v48 = v15 & 0xFFFFFFFFFFFFFF8;
          v43 = (v15 >> 62);
          if (!(v15 >> 62))
          {
            v49 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
            if (v49 >= v38)
            {
              v50 = v38;
            }

            else
            {
              v50 = *(&dword_10 + (v15 & 0xFFFFFFFFFFFFFF8));
            }

            if (v38)
            {
              v51 = v50;
            }

            else
            {
              v51 = 0;
            }

            if (v49 >= v51)
            {
              goto LABEL_15;
            }

            goto LABEL_55;
          }
        }

        if (v15 < 0)
        {
          v40 = v15;
        }

        else
        {
          v40 = v48;
        }

        v72 = sub_245FC();
        result = sub_245FC();
        if (result < 0)
        {
          __break(1u);
          return result;
        }

        if (v72 >= v38)
        {
          v73 = v38;
        }

        else
        {
          v73 = v72;
        }

        if (v72 < 0)
        {
          v73 = v38;
        }

        if (v38)
        {
          v51 = v73;
        }

        else
        {
          v51 = 0;
        }

        v74 = sub_245FC();
        v18 = v75;
        v47 = v76;
        if (v74 >= v51)
        {
LABEL_15:
          if ((v15 & 0xC000000000000001) != 0)
          {

            if (v51)
            {
              v52 = 0;
              do
              {
                v53 = v52 + 1;
                sub_2458C(v52);
                v52 = v53;
              }

              while (v51 != v53);
            }
          }

          else
          {
          }

          v82 = v44;

          if (v43)
          {
            v44 = sub_2460C();
            v62 = v63;
            v43 = v64;
            v51 = v65;

            v15 = v78;
            v40 = v79;
            if (v51)
            {
              goto LABEL_30;
            }
          }

          else
          {
            v44 = (v15 & 0xFFFFFFFFFFFFFF8);
            v62 = (v15 & 0xFFFFFFFFFFFFFF8) + 32;
            v51 = (2 * v51) | 1;
            v15 = v78;
            v40 = v79;
            if (v51)
            {
LABEL_30:
              v75 = v62;
              v38 = v43;
              sub_246BC();
              swift_unknownObjectRetain_n();
              v66 = swift_dynamicCastClass();
              if (!v66)
              {
                swift_unknownObjectRelease();
                v66 = &_swiftEmptyArrayStorage;
              }

              v67 = v66[2];

              if (!__OFSUB__(v51 >> 1, v43))
              {
                if (v67 == (v51 >> 1) - v43)
                {
                  v68 = swift_dynamicCastClass();
                  swift_unknownObjectRelease_n();
                  v47 = v76;
                  if (v68)
                  {
LABEL_36:
                    isa = sub_243CC().super.isa;

                    [v82 setCardSections:isa];

                    v46 = v84;
                    v39 = v85;
                    goto LABEL_37;
                  }

LABEL_35:
                  swift_unknownObjectRelease();
                  goto LABEL_36;
                }

                goto LABEL_57;
              }

LABEL_56:
              __break(1u);
LABEL_57:
              swift_unknownObjectRelease_n();
              v43 = v38;
              v62 = v75;
              v47 = v76;
            }
          }

          sub_B76C(v44, v62, v43, v51);
          goto LABEL_35;
        }

LABEL_55:
        __break(1u);
        goto LABEL_56;
      }
    }

    else
    {
      *&v36[v18] = 0;
      v46 = v84;
      v47 = v76;
    }

LABEL_37:
    (*(v83 + 1))(v46, v77);
    (*(v39 + 8))(v47, v40);
    goto LABEL_38;
  }

  (*(v11 + 12))(v14, v10);
  v26 = *(sub_20A0(&qword_35C08, &qword_256B0) + 48);
  v27 = v85;
  v77 = v10;
  v28 = *(v85 + 32);
  v29 = v83;
  v30 = v79;
  v28(v83, v14, v79);
  v31 = &v14[v26];
  v32 = v78;
  v28(v78, v31, v30);
  *(v18 + *(v15 + 20)) = sub_236CC();
  v33 = sub_236CC();
  (*(v11 + 1))(v84, v77);
  v34 = *(v27 + 8);
  v34(v32, v30);
  v34(v29, v30);
  *(v82 + v18) = v33;
LABEL_38:
  v58 = 1;
LABEL_39:
  v70 = (v18 + *(v15 + 36));
  *v70 = v58;
  *(v70 + 1) = 0;
  v71 = v81;
  sub_B8F0(v18, v81);
  (*(v80 + 56))(v71, 0, 1, v15);
  return sub_B954(v18);
}

uint64_t sub_7844()
{
  v0 = sub_20A0(&qword_35BE8, &qword_25658);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - v3;
  v5 = type metadata accessor for ObservableSize(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC26ResponseGenerationUIPlugin14ObservableSize__size;
  v12 = 0;
  v13 = 0;
  v14 = 1;
  sub_20A0(&unk_35A38, &qword_255F0);
  sub_23ACC();
  (*(v1 + 32))(v8 + v9, v4, v0);
  swift_getKeyPath();
  swift_getKeyPath();
  v12 = 0;
  v13 = 0;
  v14 = 1;

  sub_23AEC();
  return v8;
}

double sub_79AC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for CardVC(0);
  v4 = (v3 - 8);
  v5 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v7 = (&v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for RGSFCardView(0);
  v9 = *(a1 + v8[5]);
  v10 = (a1 + v8[10]);
  v11 = *v10;
  v38 = v10[1];
  v39 = v11;
  v37 = *(v10 + 16);
  v36 = type metadata accessor for ObservableSize(0);
  v35 = sub_C844(&qword_35D10, type metadata accessor for ObservableSize);
  v34 = v9;
  v33 = sub_23B1C();
  v12 = v7 + v4[9];
  sub_2424C();
  v13 = *(a1 + v8[7]);
  v14 = (a1 + v8[9]);
  v15 = *v14;
  v16 = *(v14 + 1);
  LOBYTE(v41) = v15;
  v42 = v16;

  sub_20A0(&unk_35D60, &qword_25798);
  sub_2403C();
  v17 = v43;
  v32 = v44;
  v18 = *(a1 + v8[6]);
  sub_242FC();
  sub_C844(&qword_358B0, &type metadata accessor for Context);
  v19 = v18;
  *v7 = sub_23BDC();
  v7[1] = v20;
  v21 = v33;
  v7[2] = v34;
  v7[3] = v21;
  *(v7 + v4[10]) = v13;
  v22 = v4[11];
  swift_unknownObjectWeakInit();
  v23 = v7 + v4[12];
  *v23 = v17;
  v23[16] = v32;
  *(v7 + v4[13]) = v18;
  sub_23B1C();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23ADC();

  if (v44 == 1)
  {
    v24 = (a1 + v8[11]);
    v25 = *v24;
    v26 = v24[1];
    *&v43 = v25;
    *(&v43 + 1) = v26;
    sub_20A0(&qword_35D78, &qword_257A8);
    sub_2401C();
  }

  sub_240AC();
  sub_23B6C();
  v27 = v40;
  sub_C900(v7, v40);
  v28 = (v27 + *(sub_20A0(&qword_35D70, &qword_257A0) + 36));
  v29 = v44;
  *v28 = v43;
  v28[1] = v29;
  result = *&v45;
  v28[2] = v45;
  return result;
}

uint64_t sub_7CEC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23ADC();

  return v1;
}

uint64_t sub_7D6C()
{
  v1 = OBJC_IVAR____TtC26ResponseGenerationUIPlugin14ObservableSize__size;
  v2 = sub_20A0(&qword_35BE8, &qword_25658);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

void sub_7E3C()
{
  sub_7ECC();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_7ECC()
{
  if (!qword_35A30)
  {
    sub_20E8(&unk_35A38, &qword_255F0);
    v0 = sub_23AFC();
    if (!v1)
    {
      atomic_store(v0, &qword_35A30);
    }
  }
}

uint64_t sub_7F30@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ObservableSize(0);
  result = sub_23ABC();
  *a1 = result;
  return result;
}

id sub_7FDC(id a1)
{
  v2 = v1;
  v4 = sub_20A0(&qword_35C18, &unk_256C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v90 = &v89 - v6;
  v7 = sub_20A0(&qword_35C20, &unk_25498);
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7 - 8);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v95 = &v89 - v12;
  v13 = sub_241FC();
  v98 = *(v13 - 8);
  v99 = v13;
  v14 = *(v98 + 64);
  v15 = __chkstk_darwin(v13);
  v97 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v94 = &v89 - v17;
  v18 = sub_2375C();
  v91 = *(v18 - 8);
  v92 = v18;
  v19 = *(v91 + 64);
  v20 = __chkstk_darwin(v18);
  v96 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v93 = (&v89 - v22);
  v23 = sub_23A9C();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v28 = &v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v30 = &v89 - v29;
  sub_236EC();
  v31 = sub_23A8C();
  v32 = sub_2446C();
  v33 = os_log_type_enabled(v31, v32);
  v101 = a1;
  if (v33)
  {
    v34 = v2;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v102 = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_20FB4(0xD000000000000025, 0x8000000000026DA0, &v102);
    _os_log_impl(&dword_0, v31, v32, "%s Card row enagaged", v35, 0xCu);
    sub_4230(v36);
    a1 = v101;

    v2 = v34;
  }

  v37 = *(v24 + 8);
  result = v37(v30, v23);
  if (!a1)
  {
    __break(1u);
    goto LABEL_30;
  }

  v39 = [a1 cardSectionId];
  if (v39)
  {
    v40 = v39;
    v41 = sub_2434C();
    v43 = v42;

    v44 = *&v2[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_commandMap];

    v100 = v43;
    if (*(v44 + 16))
    {
      goto LABEL_6;
    }

LABEL_13:

LABEL_14:
    v62 = v101;
    result = [v101 cardSection];
    if (result)
    {
      v57 = [result command];
      swift_unknownObjectRelease();
      if (v57)
      {
        objc_opt_self();
        v63 = swift_dynamicCastObjCClass();
        if (v63 && (v64 = v63, (v65 = [v63 searchString]) != 0))
        {
          v66 = v65;
          v67 = sub_2434C();
          v69 = v68;

          v70 = [v64 applicationBundleIdentifier];
          if (v70)
          {
            v71 = v70;

            v72 = sub_2434C();
            v74 = v73;

            v75 = sub_2442C();
            v76 = v90;
            (*(*(v75 - 8) + 56))(v90, 1, 1, v75);
            v77 = swift_allocObject();
            v77[2] = 0;
            v77[3] = 0;
            v77[4] = v72;
            v77[5] = v74;
            v77[6] = v67;
            v77[7] = v69;
            v78 = v101;
            v77[8] = v2;
            v77[9] = v78;
            v79 = v2;
            v80 = v78;
            sub_A2DC(0, 0, v76, &unk_256D8, v77);

LABEL_26:
            v86 = 0;
LABEL_27:

            return v86;
          }

          v62 = v101;
        }

        else
        {
        }
      }

      v81 = *&v2[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_context];
      sub_17434(&_swiftEmptyArrayStorage);
      sub_2374C();

      (*(v98 + 104))(v97, enum case for InteractionType.componentTapped(_:), v99);
      sub_241BC();
      v82 = sub_241DC();
      (*(*(v82 - 8) + 56))(v11, 0, 1, v82);
      result = [v62 cardSection];
      if (result)
      {
        v83 = result;

        v84 = [v83 cardSectionDetail];
        swift_unknownObjectRelease();
        if (v84)
        {
          sub_2434C();
        }

        v85 = objc_allocWithZone(sub_2428C());
        v86 = 1;
        v57 = sub_2427C();
        sub_242EC();
        goto LABEL_27;
      }

      goto LABEL_31;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v41 = 0;
  v100 = 0;
  v44 = *&v2[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_commandMap];
  v43 = 0xE000000000000000;
  if (!*(v44 + 16))
  {
    goto LABEL_13;
  }

LABEL_6:
  v45 = sub_16A5C(v41, v43);
  v47 = v46;

  if ((v47 & 1) == 0)
  {
    goto LABEL_14;
  }

  v48 = *(*(v44 + 56) + 8 * v45);
  sub_236EC();
  v49 = sub_23A8C();
  v50 = sub_2446C();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = v2;
    v53 = swift_slowAlloc();
    v102 = v53;
    *v51 = 136315138;
    *(v51 + 4) = sub_20FB4(0xD000000000000025, 0x8000000000026DA0, &v102);
    _os_log_impl(&dword_0, v49, v50, "%s Performing direct invocation", v51, 0xCu);
    sub_4230(v53);
    v2 = v52;
  }

  v37(v28, v23);
  v54 = v92;
  v55 = v93;
  v56 = *&v2[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_context];
  *v93 = v48;
  *(v55 + 8) = 0;
  (*(v91 + 104))(v55, enum case for Command.directInvocation(_:), v54);
  (*(v98 + 104))(v94, enum case for InteractionType.componentTapped(_:), v99);
  v57 = v48;
  v58 = v95;
  sub_241BC();
  v59 = sub_241DC();
  (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
  result = [v101 cardSection];
  if (result)
  {
    v60 = result;

    v61 = [v60 cardSectionDetail];
    swift_unknownObjectRelease();
    if (v61)
    {
      sub_2434C();
    }

    v87 = objc_allocWithZone(sub_2428C());
    v88 = sub_2427C();
    sub_242EC();

    sub_242BC();
    goto LABEL_26;
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_8A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[19] = a8;
  v8[20] = v37;
  v8[17] = a6;
  v8[18] = a7;
  v8[15] = a4;
  v8[16] = a5;
  v9 = *(*(sub_20A0(&qword_35C28, &qword_256F8) - 8) + 64) + 15;
  v8[21] = swift_task_alloc();
  v10 = sub_20A0(&qword_35C30, &qword_25700);
  v8[22] = v10;
  v11 = *(v10 - 8);
  v8[23] = v11;
  v12 = *(v11 + 64) + 15;
  v8[24] = swift_task_alloc();
  v13 = *(*(sub_20A0(&qword_35C20, &unk_25498) - 8) + 64) + 15;
  v8[25] = swift_task_alloc();
  v14 = sub_241FC();
  v8[26] = v14;
  v15 = *(v14 - 8);
  v8[27] = v15;
  v16 = *(v15 + 64) + 15;
  v8[28] = swift_task_alloc();
  v17 = sub_2375C();
  v8[29] = v17;
  v18 = *(v17 - 8);
  v8[30] = v18;
  v19 = *(v18 + 64) + 15;
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v20 = *(*(sub_20A0(&qword_35C38, &qword_25708) - 8) + 64) + 15;
  v8[33] = swift_task_alloc();
  v21 = *(*(sub_239AC() - 8) + 64) + 15;
  v8[34] = swift_task_alloc();
  v22 = sub_239EC();
  v8[35] = v22;
  v23 = *(v22 - 8);
  v8[36] = v23;
  v24 = *(v23 + 64) + 15;
  v8[37] = swift_task_alloc();
  v25 = sub_23A1C();
  v8[38] = v25;
  v26 = *(v25 - 8);
  v8[39] = v26;
  v27 = *(v26 + 64) + 15;
  v8[40] = swift_task_alloc();
  v28 = *(*(sub_20A0(&qword_35C40, &qword_25710) - 8) + 64) + 15;
  v8[41] = swift_task_alloc();
  v29 = sub_23A4C();
  v8[42] = v29;
  v30 = *(v29 - 8);
  v8[43] = v30;
  v31 = *(v30 + 64) + 15;
  v8[44] = swift_task_alloc();
  v32 = sub_23A9C();
  v8[45] = v32;
  v33 = *(v32 - 8);
  v8[46] = v33;
  v34 = *(v33 + 64) + 15;
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = swift_task_alloc();
  v8[50] = swift_task_alloc();

  return (_swift_task_switch)(sub_8E90, 0, 0);
}

uint64_t sub_8E90()
{
  v141 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 144);
  v3 = *(v0 + 128);
  sub_236EC();

  v4 = sub_23A8C();
  v5 = sub_2449C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 400);
  v9 = *(v0 + 360);
  v8 = *(v0 + 368);
  if (v6)
  {
    v10 = *(v0 + 136);
    v130 = *(v0 + 144);
    v12 = *(v0 + 120);
    v11 = *(v0 + 128);
    v135 = *(v0 + 400);
    v13 = swift_slowAlloc();
    v140[0] = swift_slowAlloc();
    *v13 = 136315395;
    *(v13 + 4) = sub_20FB4(v12, v11, v140);
    *(v13 + 12) = 2085;
    *(v13 + 14) = sub_20FB4(v10, v130, v140);
    _os_log_impl(&dword_0, v4, v5, "Executing ShowInAppStringSearchResultsIntent implementation on %s with query: %{sensitive}s", v13, 0x16u);
    swift_arrayDestroy();

    v14 = *(v8 + 8);
    v14(v135, v9);
  }

  else
  {

    v14 = *(v8 + 8);
    v14(v7, v9);
  }

  v16 = *(v0 + 120);
  v15 = *(v0 + 128);
  v17 = [objc_allocWithZone(LNMetadataProvider) initWithOptions:1];
  *(v0 + 408) = v17;
  sub_20A0(&qword_35C10, &qword_256B8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255A0;
  *(inited + 32) = [objc_opt_self() showInAppStringSearchResultsProtocol];
  sub_C03C(inited);
  swift_setDeallocating();
  v19 = *(inited + 16);
  swift_arrayDestroy();
  sub_2510(0, &qword_35C48, LNSystemProtocol_ptr);
  sub_C32C();
  isa = sub_2443C().super.isa;

  v21 = sub_2433C();
  *(v0 + 112) = 0;
  v22 = [v17 actionsConformingToSystemProtocols:isa logicalType:1 bundleIdentifier:v21 error:v0 + 112];

  v23 = *(v0 + 112);
  if (v22)
  {
    sub_20A0(&qword_35C60, &qword_25720);
    v24 = sub_2431C();
    v25 = v23;

    if (*(v24 + 16))
    {
      v26 = sub_16A5C(*(v0 + 120), *(v0 + 128));
      if (v27)
      {
        v28 = *(*(v24 + 56) + 8 * v26);

        v30 = sub_6BC8(v29);
        v32 = v31;
        v34 = v33;

        if (v32)
        {
          v35 = *(v0 + 344);
          v36 = *(v0 + 352);
          v37 = *(v0 + 328);
          v38 = *(v0 + 312);
          v39 = *(v0 + 320);
          v108 = *(v0 + 304);
          v110 = *(v0 + 336);
          v113 = *(v0 + 264);
          v114 = *(v0 + 272);
          v117 = *(v0 + 296);
          v118 = *(v0 + 256);
          v120 = *(v0 + 240);
          v121 = *(v0 + 232);
          v122 = *(v0 + 248);
          v128 = *(v0 + 224);
          v124 = *(v0 + 216);
          v126 = *(v0 + 208);
          v131 = *(v0 + 200);
          v136 = *(v0 + 160);
          v119 = *(v0 + 152);
          v115 = *(v0 + 136);
          v116 = *(v0 + 144);
          v111 = *(v0 + 128);
          v112 = *(v0 + 120);

          sub_C394(v30, v32, v34);
          v40 = [objc_opt_self() defaultEnvironment];
          *(v0 + 80) = sub_2510(0, &qword_35C68, LNEnvironment_ptr);
          *(v0 + 88) = &protocol witness table for LNEnvironment;
          *(v0 + 56) = v40;
          sub_23A0C();
          (*(v38 + 104))(v39, enum case for IntentsServices.PayloadPrivacy.default(_:), v108);
          sub_23A3C();
          v41 = sub_23A2C();
          v43 = v42;
          *(v0 + 416) = v41;
          (*(v35 + 8))(v36, v110);
          sub_4230((v0 + 56));
          v44 = sub_239BC();
          (*(*(v44 - 8) + 56))(v113, 1, 1, v44);

          sub_2399C();
          sub_20A0(&qword_35C70, &qword_25728);
          v45 = *(sub_23A6C() - 8);
          v46 = *(v45 + 72);
          v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
          *(swift_allocObject() + 16) = xmmword_255B0;
          *(v0 + 96) = v115;
          *(v0 + 104) = v116;

          sub_23A5C();
          sub_239DC();
          sub_17434(&_swiftEmptyArrayStorage);
          sub_2374C();

          v48 = *(v119 + OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_context);
          (*(v120 + 16))(v122, v118, v121);
          (*(v124 + 104))(v128, enum case for InteractionType.componentTapped(_:), v126);
          sub_241BC();
          v49 = sub_241DC();
          v50 = (*(*(v49 - 8) + 56))(v131, 0, 1, v49);
          if (v136)
          {
            v50 = [*(v0 + 160) cardSection];
            if (v50)
            {
              v57 = v50;

              v58 = [v57 cardSectionDetail];
              swift_unknownObjectRelease();
              v109 = v43;
              if (v58)
              {
                sub_2434C();
              }

              v98 = *(v0 + 248);
              v99 = *(v0 + 224);
              v100 = *(v0 + 200);
              v101 = *(v0 + 168);
              v102 = objc_allocWithZone(sub_2428C());
              v103 = sub_2427C();
              sub_242EC();

              ObjectType = swift_getObjectType();
              v105 = sub_239FC();
              (*(*(v105 - 8) + 56))(v101, 1, 1, v105);
              v106 = async function pointer to AppIntentDispatching.perform(_:options:delegate:)[1];
              v107 = swift_task_alloc();
              *(v0 + 424) = v107;
              *v107 = v0;
              v107[1] = sub_9B40;
              v51 = *(v0 + 296);
              v50 = *(v0 + 192);
              v52 = *(v0 + 168);
              v53 = 0;
              v54 = 0;
              v55 = ObjectType;
              v56 = v109;

              return AppIntentDispatching.perform(_:options:delegate:)(v50, v51, v52, v53, v54, v55, v56);
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          return AppIntentDispatching.perform(_:options:delegate:)(v50, v51, v52, v53, v54, v55, v56);
        }
      }
    }

    v59 = *(v0 + 384);
    v60 = *(v0 + 128);

    sub_236EC();

    v61 = sub_23A8C();
    v62 = sub_2447C();

    v63 = os_log_type_enabled(v61, v62);
    v64 = *(v0 + 384);
    v66 = *(v0 + 360);
    v65 = *(v0 + 368);
    if (v63)
    {
      v137 = *(v0 + 384);
      v68 = *(v0 + 120);
      v67 = *(v0 + 128);
      v132 = v14;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v140[0] = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_20FB4(v68, v67, v140);
      _os_log_impl(&dword_0, v61, v62, "Unable to find any actions conforming to ShowInAppStringSearchResultsIntent in %s", v69, 0xCu);
      sub_4230(v70);

      v132(v137, v66);
    }

    else
    {

      v14(v64, v66);
    }
  }

  else
  {
    v71 = v23;
    sub_2368C();

    swift_willThrow();
    v72 = *(v0 + 376);
    v73 = *(v0 + 128);
    sub_236EC();

    swift_errorRetain();
    v74 = sub_23A8C();
    v75 = sub_2447C();

    v76 = os_log_type_enabled(v74, v75);
    v78 = *(v0 + 368);
    v77 = *(v0 + 376);
    v79 = *(v0 + 360);
    if (v76)
    {
      v138 = *(v0 + 376);
      v80 = *(v0 + 120);
      v81 = *(v0 + 128);
      v133 = *(v0 + 360);
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      v84 = swift_slowAlloc();
      v140[0] = v84;
      *v82 = 136315394;
      *(v82 + 4) = sub_20FB4(v80, v81, v140);
      *(v82 + 12) = 2112;
      swift_errorRetain();
      v85 = _swift_stdlib_bridgeErrorToNSError();
      *(v82 + 14) = v85;
      *v83 = v85;
      _os_log_impl(&dword_0, v74, v75, "Failed to execute ShowInAppStringSearchResultsIntent implementation on %s: %@", v82, 0x16u);
      sub_6A44(v83, &qword_35C58, &qword_25718);

      sub_4230(v84);

      (*(v78 + 8))(v138, v133);
    }

    else
    {

      (*(v78 + 8))(v77, v79);
    }
  }

  v87 = *(v0 + 392);
  v86 = *(v0 + 400);
  v89 = *(v0 + 376);
  v88 = *(v0 + 384);
  v90 = *(v0 + 352);
  v92 = *(v0 + 320);
  v91 = *(v0 + 328);
  v93 = *(v0 + 296);
  v94 = *(v0 + 264);
  v95 = *(v0 + 272);
  v123 = *(v0 + 256);
  v125 = *(v0 + 248);
  v127 = *(v0 + 224);
  v129 = *(v0 + 200);
  v134 = *(v0 + 192);
  v139 = *(v0 + 168);

  v96 = *(v0 + 8);

  return v96();
}

uint64_t sub_9B40()
{
  v2 = *v1;
  v3 = (*v1)[53];
  v9 = *v1;
  (*v1)[54] = v0;

  if (v0)
  {
    sub_6A44(v2[21], &qword_35C28, &qword_256F8);
    v4 = sub_9FAC;
  }

  else
  {
    v6 = v2[23];
    v5 = v2[24];
    v7 = v2[22];
    sub_6A44(v2[21], &qword_35C28, &qword_256F8);
    (*(v6 + 8))(v5, v7);
    v4 = sub_9CDC;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t sub_9CDC()
{
  v42 = v0;
  v1 = v0[49];
  v2 = v0[16];
  sub_236EC();

  v3 = sub_23A8C();
  v4 = sub_2449C();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[49];
  v7 = v0[45];
  v8 = v0[46];
  if (v5)
  {
    v10 = v0[15];
    v9 = v0[16];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v41 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_20FB4(v10, v9, &v41);
    _os_log_impl(&dword_0, v3, v4, "Finished executing ShowInAppStringSearchResultsIntent conformance on %s", v11, 0xCu);
    sub_4230(v12);
  }

  (*(v8 + 8))(v6, v7);
  v14 = v0[51];
  v13 = v0[52];
  v15 = v0[36];
  v37 = v0[35];
  v39 = v0[37];
  v16 = v0[32];
  v18 = v0[29];
  v17 = v0[30];
  v19 = v0[19];
  v20 = [objc_allocWithZone(SAUICloseAssistant) init];
  sub_242AC();

  swift_unknownObjectRelease();
  (*(v17 + 8))(v16, v18);
  (*(v15 + 8))(v39, v37);
  v22 = v0[49];
  v21 = v0[50];
  v24 = v0[47];
  v23 = v0[48];
  v25 = v0[44];
  v27 = v0[40];
  v26 = v0[41];
  v28 = v0[37];
  v29 = v0[33];
  v30 = v0[34];
  v33 = v0[32];
  v34 = v0[31];
  v35 = v0[28];
  v36 = v0[25];
  v38 = v0[24];
  v40 = v0[21];

  v31 = v0[1];

  return v31();
}

uint64_t sub_9FAC()
{
  v44 = v0;
  v1 = *(v0 + 416);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v4 = *(v0 + 280);
  v5 = *(v0 + 256);
  v6 = *(v0 + 232);
  v7 = *(v0 + 240);

  swift_unknownObjectRelease();
  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  v8 = *(v0 + 432);
  v9 = *(v0 + 376);
  v10 = *(v0 + 128);
  sub_236EC();

  swift_errorRetain();
  v11 = sub_23A8C();
  v12 = sub_2447C();

  v13 = os_log_type_enabled(v11, v12);
  v15 = *(v0 + 368);
  v14 = *(v0 + 376);
  v16 = *(v0 + 360);
  if (v13)
  {
    v41 = *(v0 + 376);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    v39 = *(v0 + 360);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v43 = v21;
    *v19 = 136315394;
    *(v19 + 4) = sub_20FB4(v17, v18, &v43);
    *(v19 + 12) = 2112;
    swift_errorRetain();
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v19 + 14) = v22;
    *v20 = v22;
    _os_log_impl(&dword_0, v11, v12, "Failed to execute ShowInAppStringSearchResultsIntent implementation on %s: %@", v19, 0x16u);
    sub_6A44(v20, &qword_35C58, &qword_25718);

    sub_4230(v21);

    (*(v15 + 8))(v41, v39);
  }

  else
  {

    (*(v15 + 8))(v14, v16);
  }

  v24 = *(v0 + 392);
  v23 = *(v0 + 400);
  v26 = *(v0 + 376);
  v25 = *(v0 + 384);
  v27 = *(v0 + 352);
  v29 = *(v0 + 320);
  v28 = *(v0 + 328);
  v30 = *(v0 + 296);
  v31 = *(v0 + 264);
  v32 = *(v0 + 272);
  v35 = *(v0 + 256);
  v36 = *(v0 + 248);
  v37 = *(v0 + 224);
  v38 = *(v0 + 200);
  v40 = *(v0 + 192);
  v42 = *(v0 + 168);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_A2DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_20A0(&qword_35C18, &unk_256C0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v27 - v11;
  sub_BBEC(a3, v27 - v11);
  v13 = sub_2442C();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    sub_6A44(v12, &qword_35C18, &unk_256C0);
  }

  else
  {
    sub_2441C();
    (*(v14 + 8))(v12, v13);
  }

  v17 = *(a5 + 16);
  v16 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v17)
  {
    swift_getObjectType();
    v18 = sub_2440C();
    v20 = v19;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v21 = sub_2437C() + 32;
      v22 = swift_allocObject();
      *(v22 + 16) = a4;
      *(v22 + 24) = a5;

      if (v20 | v18)
      {
        v28[0] = 0;
        v28[1] = 0;
        v23 = v28;
        v28[2] = v18;
        v28[3] = v20;
      }

      else
      {
        v23 = 0;
      }

      v27[1] = 7;
      v27[2] = v23;
      v27[3] = v21;
      v25 = swift_task_create();

      sub_6A44(a3, &qword_35C18, &unk_256C0);

      return v25;
    }
  }

  else
  {
    v18 = 0;
    v20 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_6A44(a3, &qword_35C18, &unk_256C0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  if (v20 | v18)
  {
    v28[4] = 0;
    v28[5] = 0;
    v28[6] = v18;
    v28[7] = v20;
  }

  return swift_task_create();
}

id sub_A650()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_A75C()
{
  result = sub_242CC();
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

uint64_t sub_A82C()
{
  v1 = sub_242CC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 24);
  v7 = type metadata accessor for CardVC(0);
  v8 = *(v2 + 16);
  v8(v5, v0 + *(v7 + 28), v1);
  v9 = *(v0 + *(v7 + 32));
  v10 = *v0;
  if (*v0)
  {
    v11 = type metadata accessor for Coordinator(0);
    v12 = objc_allocWithZone(v11);
    swift_unknownObjectWeakInit();
    *&v12[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_observableSize] = v6;
    v8(&v12[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_interactionDelegate], v5, v1);
    *&v12[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_commandMap] = v9;
    *&v12[OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_context] = v10;
    v17.receiver = v12;
    v17.super_class = v11;

    v13 = v10;

    v14 = objc_msgSendSuper2(&v17, "init");
    (*(v2 + 8))(v5, v1);
    return v14;
  }

  else
  {
    v16 = *(v0 + 8);
    sub_242FC();
    sub_C844(&qword_358B0, &type metadata accessor for Context);

    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

id sub_AA4C()
{
  sub_20A0(&qword_35E60, &unk_25890);
  sub_23DDC();
  v1 = v12;
  v2 = type metadata accessor for CardVC(0);
  v3 = v0 + *(v2 + 40);
  v13 = *v3;
  v14 = *(v3 + 8);
  v15 = *(v3 + 16);
  sub_20A0(&qword_35E58, &qword_25888);
  sub_2407C();
  if (v11)
  {
    v4 = *(v0 + *(v2 + 44));
  }

  else
  {
    v4 = *(v0 + 16);
  }

  v5 = v4;
  v6 = [objc_opt_self() cardViewControllerForCard:v5 feedbackDelegate:v1];
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

LABEL_8:
    v9 = [objc_allocWithZone(UIViewController) init];

    return v9;
  }

  v9 = v8;
  [v8 setThreeDTouchEnabled:0];
  [v9 setDelegate:v1];
  [v9 setScrollEnabled:0];
  sub_23DDC();

  swift_unknownObjectWeakAssign();
  return v9;
}

void sub_AC00(void *a1, char a2)
{
  v5 = sub_23A9C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (!v10)
  {
    return;
  }

  v11 = v10;
  if (a2)
  {
    v12 = *(v2 + *(type metadata accessor for CardVC(0) + 44));
    if (!v12)
    {
      v25 = a1;
      v28 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    v12 = *(v2 + 16);
  }

  v28 = v12;
  v13 = v12;
  v14 = a1;
  v15 = [v13 cardSections];

  if (v15)
  {
    v27 = v6;
    sub_2510(0, &qword_35C00, SFCardSection_ptr);
    v16 = sub_243DC();

    v17 = [v11 card];
    if (!v17)
    {
      __break(1u);
      return;
    }

    v18 = v17;
    v19 = [v17 cardSections];

    if (v19)
    {
      v20 = sub_243DC();

      v21 = sub_AEEC(v16, v20);

      if (v21)
      {
        sub_236EC();
        v22 = sub_23A8C();
        v23 = sub_2449C();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          *v24 = 0;
          _os_log_impl(&dword_0, v22, v23, "Card sections are identical, skipping update", v24, 2u);
        }

        (*(v27 + 8))(v9, v5);
        return;
      }
    }

    else
    {
    }
  }

LABEL_15:
  [v11 setCard:v28];

  v26 = v28;
}

uint64_t sub_AEEC(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_51;
  }

  v28 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v23 = a1;
  v25 = a2 & 0xFFFFFFFFFFFFFF8;
  if (a2 >> 62)
  {
    a1 = sub_245FC();
    v27 = a1;
  }

  else
  {
    v27 = *(&dword_10 + (a2 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = 0;
  v4 = 0;
  v26 = a2 & 0xC000000000000001;
  v5 = &SAAceCommand__prots;
  v24 = a2;
  while (1)
  {
    if (v4 == v28)
    {
      if (v27 == v3)
      {
        return 1;
      }

      v6 = 0;
      v4 = v28;
      goto LABEL_17;
    }

    if ((v23 & 0xC000000000000001) != 0)
    {
      a1 = sub_2459C();
    }

    else
    {
      if ((v4 & 0x8000000000000000) != 0)
      {
        goto LABEL_48;
      }

      if (v4 >= *(&dword_10 + (v23 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_50;
      }

      a1 = *(v23 + 32 + 8 * v4);
    }

    v6 = a1;
    if (__OFADD__(v4++, 1))
    {
      goto LABEL_49;
    }

    if (v27 == v3)
    {
      break;
    }

LABEL_17:
    if (v26)
    {
      a1 = sub_2459C();
    }

    else
    {
      if (v3 >= *(v25 + 16))
      {
        goto LABEL_47;
      }

      a1 = *(a2 + 8 * v3 + 32);
    }

    v8 = a1;
    if (__OFADD__(v3, 1))
    {
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
      v22 = a1;
      v28 = sub_245FC();
      a1 = v22;
      goto LABEL_3;
    }

    if (!v6)
    {
      if (!a1)
      {
        return 1;
      }

      return 0;
    }

    if (!a1)
    {
      goto LABEL_42;
    }

    v9 = [v6 v5[486].count];
    if (v9)
    {
      v10 = v9;
      v11 = sub_2434C();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = v5;
    v15 = [v8 v5[486].count];
    if (!v15)
    {
      if (!v13)
      {
        goto LABEL_33;
      }

LABEL_40:

      return 0;
    }

    v16 = v15;
    v17 = sub_2434C();
    v19 = v18;

    if (v13)
    {
      if (!v19)
      {
        goto LABEL_40;
      }

      if (v11 == v17 && v13 == v19)
      {

LABEL_33:

        goto LABEL_7;
      }

      v20 = sub_246AC();

      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      if (v19)
      {

        return 0;
      }
    }

LABEL_7:
    ++v3;
    a2 = v24;
    v5 = v14;
  }

  if (a1)
  {
LABEL_42:

    return 0;
  }

  return 1;
}

void sub_B1E0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = (v3 + *(a3 + 40));
  v7 = *v5;
  v8 = v5[1];
  v9 = *(v5 + 16);
  sub_20A0(&qword_35E58, &qword_25888);
  sub_2407C();
  sub_AC00(a1, v6);
}

uint64_t sub_B264@<X0>(uint64_t *a1@<X8>)
{
  result = sub_A82C();
  *a1 = result;
  return result;
}

uint64_t sub_B2C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C844(&qword_35E68, type metadata accessor for CardVC);

  return static UIViewControllerRepresentable._makeView(view:inputs:)(a1, a2, a3, v6);
}

uint64_t sub_B35C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_C844(&qword_35E68, type metadata accessor for CardVC);

  return static UIViewControllerRepresentable._makeViewList(view:inputs:)(a1, a2, a3, v6);
}

void sub_B3F0()
{
  sub_C844(&qword_35E68, type metadata accessor for CardVC);
  sub_23DBC();
  __break(1u);
}

double sub_B448@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23ADC();

  result = *&v5;
  *a2 = v5;
  *(a2 + 16) = v6;
  return result;
}

uint64_t sub_B4D4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23AEC();
}

uint64_t sub_B57C(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_B674;

  return v7(a1);
}

uint64_t sub_B674()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

void sub_B76C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_2510(0, &qword_35C00, SFCardSection_ptr);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_20A0(&qword_35C10, &qword_256B8);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_B860(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    v8 = *(*(a5 + 56) + 8 * a2);
    *result = v8;

    v9 = v8;
    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_B8F0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGSFCardView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_B954(uint64_t a1)
{
  v2 = type metadata accessor for RGSFCardView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_B9B4()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_BA0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_BAF8;

  return sub_8A24(a1, v4, v5, v6, v7, v8, v9, v11);
}

uint64_t sub_BAF8()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_BBEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_35C18, &unk_256C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_BC5C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_BC94(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_CE08;

  return sub_B57C(a1, v5);
}

uint64_t sub_BD4C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_BAF8;

  return sub_B57C(a1, v5);
}

void sub_BE04(void *a1)
{
  v3 = sub_23A9C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (a1)
  {
    if (Strong)
    {
      v18[0] = Strong;

      if (v18[0] == a1)
      {
        v9 = v1;
        [a1 preferredContentSize];
        v11 = v10;
        v13 = v12;
        sub_236EC();
        v14 = sub_23A8C();
        v15 = sub_2445C();
        if (os_log_type_enabled(v14, v15))
        {
          v16 = swift_slowAlloc();
          *v16 = 134218240;
          *(v16 + 4) = v11;
          *(v16 + 12) = 2048;
          *(v16 + 14) = v13;
          _os_log_impl(&dword_0, v14, v15, "preferredContentSizeDidChange called, cardViewController.preferredContentSize: %fx%f", v16, 0x16u);
        }

        (*(v4 + 8))(v7, v3);
        v17 = *(v9 + OBJC_IVAR____TtC26ResponseGenerationUIPlugin11Coordinator_observableSize);
        swift_getKeyPath();
        swift_getKeyPath();
        v18[1] = v11;
        v18[2] = v13;
        v19 = 0;

        sub_23AEC();
      }
    }
  }

  else if (Strong)
  {
  }

  else
  {
    __break(1u);
  }
}

void sub_C03C(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_245FC())
    {
LABEL_3:
      sub_20A0(&qword_35C78, &qword_25730);
      v3 = sub_2455C();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_245FC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v38 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_2459C();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_244BC(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_2510(0, &qword_35C48, LNSystemProtocol_ptr);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_244CC();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v38;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v38;
        if (v7 == v38)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_33;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = a1 + 32;
    v37 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v37)
    {
      v23 = v3[5];
      v24 = *(v36 + 8 * v22);
      v25 = sub_244BC(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        sub_2510(0, &qword_35C48, LNSystemProtocol_ptr);
        do
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_244CC();

          if (v33)
          {

            v5 = v38;
            goto LABEL_23;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
        }

        while (((1 << v27) & v29) != 0);
        v5 = v38;
      }

      *&v6[8 * v28] = v30 | v29;
      *(v3[6] + 8 * v27) = v24;
      v34 = v3[2];
      v9 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v9)
      {
        goto LABEL_35;
      }

      v3[2] = v35;
LABEL_23:
      if (++v22 == v5)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
}

unint64_t sub_C32C()
{
  result = qword_35C50;
  if (!qword_35C50)
  {
    sub_2510(255, &qword_35C48, LNSystemProtocol_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35C50);
  }

  return result;
}

void sub_C394(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
  }
}

uint64_t sub_C3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2426C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_C4BC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_2426C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_C574()
{
  sub_2426C();
  if (v0 <= 0x3F)
  {
    sub_2510(319, &qword_35BF8, SFCard_ptr);
    if (v1 <= 0x3F)
    {
      sub_C6D0();
      if (v2 <= 0x3F)
      {
        sub_C738();
        if (v3 <= 0x3F)
        {
          sub_CC18(319, &qword_35D00, &type metadata for UpdatePresentation.PresentationStyle, &type metadata accessor for State);
          if (v4 <= 0x3F)
          {
            sub_C7B0();
            if (v5 <= 0x3F)
            {
              sub_CC18(319, &unk_35D18, &type metadata for CGFloat, &type metadata accessor for State);
              if (v6 <= 0x3F)
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

void sub_C6D0()
{
  if (!qword_35CE8)
  {
    sub_2510(255, &qword_35BF8, SFCard_ptr);
    v0 = sub_244DC();
    if (!v1)
    {
      atomic_store(v0, &qword_35CE8);
    }
  }
}

void sub_C738()
{
  if (!qword_35CF0)
  {
    sub_2510(255, qword_35810, SAIntentGroupRunSiriKitExecutor_ptr);
    v0 = sub_2432C();
    if (!v1)
    {
      atomic_store(v0, &qword_35CF0);
    }
  }
}

void sub_C7B0()
{
  if (!qword_35D08)
  {
    type metadata accessor for ObservableSize(255);
    sub_C844(&qword_35D10, type metadata accessor for ObservableSize);
    v0 = sub_23B2C();
    if (!v1)
    {
      atomic_store(v0, &qword_35D08);
    }
  }
}

uint64_t sub_C844(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_C8C8(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_C900(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CardVC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_C978(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_242CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_CA38(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_242CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_CADC()
{
  sub_2920();
  if (v0 <= 0x3F)
  {
    sub_2510(319, &qword_35BF8, SFCard_ptr);
    if (v1 <= 0x3F)
    {
      type metadata accessor for ObservableSize(319);
      if (v2 <= 0x3F)
      {
        sub_242CC();
        if (v3 <= 0x3F)
        {
          sub_C738();
          if (v4 <= 0x3F)
          {
            sub_CC18(319, &unk_35DF0, &type metadata for UpdatePresentation.PresentationStyle, &type metadata accessor for Binding);
            if (v5 <= 0x3F)
            {
              sub_C6D0();
              if (v6 <= 0x3F)
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

void sub_CC18(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_CC6C()
{
  result = qword_35E38;
  if (!qword_35E38)
  {
    sub_20E8(&qword_35E40, "B(");
    sub_CCF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35E38);
  }

  return result;
}

unint64_t sub_CCF0()
{
  result = qword_35E48;
  if (!qword_35E48)
  {
    sub_20E8(&qword_35D70, &qword_257A0);
    sub_C844(&qword_35E50, type metadata accessor for CardVC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35E48);
  }

  return result;
}

uint64_t sub_CE0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20A0(&qword_35ED0, &qword_258A0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v25 = &v23 - v6;
  v7 = sub_20A0(&qword_35ED8, qword_258A8);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v23 - v9;
  v11 = sub_23D0C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2384C();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a2, a1, v16);
  sub_2383C();
  sub_23CEC();
  v24 = a2;
  (*(v12 + 56))(v10, 0, 1, v11);
  (*(v12 + 32))(v15, v10, v11);
  v18 = v25;
  sub_23CFC();
  v19 = v24;
  (*(v17 + 8))(a1, v16);
  (*(v12 + 8))(v15, v11);
  v20 = sub_23B7C();
  (*(*(v20 - 8) + 56))(v18, 0, 1, v20);
  v21 = type metadata accessor for RGArchivedView();
  return sub_D1D0(v18, v19 + *(v21 + 20));
}

uint64_t type metadata accessor for RGArchivedView()
{
  result = qword_35F38;
  if (!qword_35F38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_D1D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_35ED0, &qword_258A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_D254(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2384C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_20A0(&qword_35ED0, &qword_258A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_D364(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2384C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_20A0(&qword_35ED0, &qword_258A0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

void sub_D46C()
{
  sub_2384C();
  if (v0 <= 0x3F)
  {
    sub_D4F0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_D4F0()
{
  if (!qword_35F48)
  {
    sub_23B7C();
    v0 = sub_244DC();
    if (!v1)
    {
      atomic_store(v0, &qword_35F48);
    }
  }
}

uint64_t sub_D564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_20A0(&qword_35ED0, &qword_258A0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  sub_D6F8(v2 + *(a1 + 20), &v14 - v7);
  v9 = sub_23B7C();
  v10 = *(v9 - 8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_6A44(v8, &qword_35ED0, &qword_258A0);
    v11 = 1;
  }

  else
  {
    sub_D768();
    sub_23EDC();
    (*(v10 + 8))(v8, v9);
    v11 = 0;
  }

  v12 = sub_20A0(&qword_35F78, &qword_25930);
  return (*(*(v12 - 8) + 56))(a2, v11, 1, v12);
}

uint64_t sub_D6F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_35ED0, &qword_258A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_D768()
{
  result = qword_35F80;
  if (!qword_35F80)
  {
    sub_23B7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35F80);
  }

  return result;
}

unint64_t sub_D7C4()
{
  result = qword_35F88;
  if (!qword_35F88)
  {
    sub_20E8(&qword_35F90, &qword_25938);
    sub_23B7C();
    sub_D768();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_35F88);
  }

  return result;
}

uint64_t sub_D88C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_20A0(&qword_35F98, qword_25940);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_D95C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_20A0(&qword_35F98, qword_25940);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_DA2C()
{
  sub_29B4();
  if (v0 <= 0x3F)
  {
    sub_DAB0();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_DAB0()
{
  if (!qword_36008)
  {
    sub_2414C();
    v0 = sub_244DC();
    if (!v1)
    {
      atomic_store(v0, &qword_36008);
    }
  }
}

uint64_t sub_DB1C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for RGBinaryButton(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

void *sub_DBE8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for RGBinaryButton(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_DCAC()
{
  sub_2920();
  if (v0 <= 0x3F)
  {
    sub_288C();
    if (v1 <= 0x3F)
    {
      type metadata accessor for RGBinaryButton(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_DD64@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_20A0(&qword_35F98, qword_25940);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v47 = &v47 - v4;
  v5 = sub_2414C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v50 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RGBinaryButtonView(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v54 = sub_20A0(&qword_360D8, &qword_259E8);
  v48 = *(v54 - 8);
  v12 = *(v48 + 64);
  __chkstk_darwin(v54);
  v14 = &v47 - v13;
  v51 = sub_20A0(&qword_360E0, &qword_259F0);
  v49 = *(v51 - 8);
  v15 = *(v49 + 64);
  __chkstk_darwin(v51);
  v17 = &v47 - v16;
  v18 = sub_2421C();
  v57 = *(v18 - 8);
  v58 = v18;
  v19 = *(v57 + 64);
  __chkstk_darwin(v18);
  v56 = &v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EF04(v1, &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = (*(v10 + 80) + 16) & ~*(v10 + 80);
  v53 = v11;
  v22 = swift_allocObject();
  v52 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_EF6C(v52, v22 + v21);
  v55 = v9;
  v23 = *(v9 + 24);
  v24 = v1;
  v25 = v47;
  v59 = v24;
  v26 = v24 + v23;
  v61 = *(v24 + v23 + 16);
  sub_2405C();
  v27 = type metadata accessor for RGBinaryButton(0);
  sub_EFF4(v26 + *(v27 + 24), v25);
  v28 = *(v6 + 48);
  if (v28(v25, 1, v5) == 1)
  {
    v29 = v50;
    (*(v6 + 104))(v50, enum case for ButtonItemButtonStyle.Role.preferred(_:), v5);
    v30 = v28(v25, 1, v5);
    v31 = v29;
    if (v30 != 1)
    {
      sub_F064(v25);
    }
  }

  else
  {
    v31 = v50;
    (*(v6 + 32))(v50, v25, v5);
  }

  v32 = sub_F364(&qword_360E8);
  v33 = v54;
  sub_23EBC();
  (*(v6 + 8))(v31, v5);
  (*(v48 + 8))(v14, v33);
  v63 = v33;
  v64 = v32;
  swift_getOpaqueTypeConformance2();
  v34 = v51;
  v35 = sub_23EAC();
  (*(v49 + 8))(v17, v34);
  v65 = &type metadata for AnyView;
  v66 = &protocol witness table for AnyView;
  v63 = v35;
  v36 = v59;
  v37 = v52;
  sub_EF04(v59, v52);
  v38 = swift_allocObject();
  v39 = sub_EF6C(v37, v38 + v21);
  v40 = *(v36 + *(v55 + 28) + 16);
  *&v41 = __chkstk_darwin(v39);
  *(&v47 - 1) = v41;
  v62[3] = v33;
  v62[4] = sub_F364(&qword_360F0);
  sub_F3B4(v62);
  sub_2405C();
  v42 = v56;
  sub_2420C();
  if (*(v36 + 16))
  {
    swift_getKeyPath();
    swift_getKeyPath();

    sub_23ADC();

    v43 = v63;
    v44 = v60;
    (*(v57 + 32))(v60, v42, v58);
    result = sub_20A0(&qword_360F8, qword_25A40);
    *(v44 + *(result + 36)) = (v43 & 1) == 0;
  }

  else
  {
    v46 = *(v36 + 24);
    type metadata accessor for CommandThrottle();
    sub_F574(&qword_358A0, type metadata accessor for CommandThrottle);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

uint64_t sub_E500()
{
  v1 = v0;
  v2 = sub_20A0(&qword_35C20, &unk_25498);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  v30 = sub_241FC();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v30);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2375C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_23A9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236EC();
  v16 = sub_23A8C();
  v17 = sub_2446C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_20FB4(0x417972616D697270, 0xEF29286E6F697463, &v32);
    _os_log_impl(&dword_0, v16, v17, "%s Primary button tapped", v19, 0xCu);
    sub_4230(v20);

    v1 = v29;
  }

  (*(v12 + 8))(v15, v11);
  if (*v1)
  {
    v21 = *v1;
    sub_17434(&_swiftEmptyArrayStorage);
    sub_2374C();

    (*(v6 + 104))(v31, enum case for InteractionType.buttonTapped(_:), v30);
    sub_241CC();
    v22 = sub_241DC();
    (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
    v23 = objc_allocWithZone(sub_2428C());
    v24 = sub_2427C();
    sub_242EC();

    v25 = v1 + *(type metadata accessor for RGBinaryButtonView(0) + 24);
    v26 = *(v25 + 8);
    return (*v25)();
  }

  else
  {
    v28 = *(v1 + 8);
    sub_242FC();
    sub_F574(&qword_358B0, &type metadata accessor for Context);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

uint64_t sub_E948(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *(type metadata accessor for RGBinaryButtonView(0) - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(a1);
  if (*(a1 + 16))
  {
    sub_EF04(v7, &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
    v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v9 = swift_allocObject();
    sub_EF6C(&v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);

    sub_207B4(a3);
  }

  else
  {
    v11 = *(v7 + 24);
    type metadata accessor for CommandThrottle();
    sub_F574(&qword_358A0, type metadata accessor for CommandThrottle);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

uint64_t sub_EABC()
{
  v1 = v0;
  v2 = sub_20A0(&qword_35C20, &unk_25498);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  v30 = sub_241FC();
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v30);
  v31 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2375C();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v11 = sub_23A9C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_236EC();
  v16 = sub_23A8C();
  v17 = sub_2446C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29 = v1;
    v19 = v18;
    v20 = swift_slowAlloc();
    v32 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_20FB4(0xD000000000000011, 0x8000000000026DF0, &v32);
    _os_log_impl(&dword_0, v16, v17, "%s Secondary button tapped", v19, 0xCu);
    sub_4230(v20);

    v1 = v29;
  }

  (*(v12 + 8))(v15, v11);
  if (*v1)
  {
    v21 = *v1;
    sub_17434(&_swiftEmptyArrayStorage);
    sub_2374C();

    (*(v6 + 104))(v31, enum case for InteractionType.buttonTapped(_:), v30);
    sub_241CC();
    v22 = sub_241DC();
    (*(*(v22 - 8) + 56))(v5, 0, 1, v22);
    v23 = objc_allocWithZone(sub_2428C());
    v24 = sub_2427C();
    sub_242EC();

    v25 = v1 + *(type metadata accessor for RGBinaryButtonView(0) + 28);
    v26 = *(v25 + 8);
    return (*v25)();
  }

  else
  {
    v28 = *(v1 + 8);
    sub_242FC();
    sub_F574(&qword_358B0, &type metadata accessor for Context);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

uint64_t sub_EF04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGBinaryButtonView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_EF6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGBinaryButtonView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_EFF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_35F98, qword_25940);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_F064(uint64_t a1)
{
  v2 = sub_20A0(&qword_35F98, qword_25940);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_F0CC()
{
  v1 = type metadata accessor for RGBinaryButtonView(0);
  v2 = *(*(v1 - 8) + 80);
  v18 = *(*(v1 - 8) + 64);
  v19 = (v2 + 16) & ~v2;
  v20 = v0;
  v3 = v0 + v19;

  v4 = *(v0 + v19 + 16);

  v5 = v0 + v19 + *(v1 + 24);
  v6 = *(v5 + 8);

  v7 = *(v5 + 24);

  v8 = type metadata accessor for RGBinaryButton(0);
  v9 = *(v8 + 24);
  v10 = sub_2414C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 48);
  if (!v12(v5 + v9, 1, v10))
  {
    (*(v11 + 8))(v5 + v9, v10);
  }

  v13 = v3 + *(v1 + 28);
  v14 = *(v13 + 8);

  v15 = *(v13 + 24);

  v16 = *(v8 + 24);
  if (!v12(v13 + v16, 1, v10))
  {
    (*(v11 + 8))(v13 + v16, v10);
  }

  return _swift_deallocObject(v20, v19 + v18, v2 | 7);
}

uint64_t sub_F328@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_F364(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_20E8(&qword_360D8, &qword_259E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t *sub_F3B4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

unint64_t sub_F4B8()
{
  result = qword_36100;
  if (!qword_36100)
  {
    sub_20E8(&qword_360F8, qword_25A40);
    sub_F574(&qword_36108, &type metadata accessor for BinaryButtonView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36100);
  }

  return result;
}

uint64_t sub_F574(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_F5E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2396C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_F660(uint64_t a1, uint64_t a2)
{
  v4 = sub_2396C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RGToolDisambiguationView()
{
  result = qword_36168;
  if (!qword_36168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_F71C()
{
  result = sub_2396C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_F7A4@<X0>(uint64_t a1@<X8>)
{
  v57 = a1;
  v1 = sub_242DC();
  v55 = *(v1 - 8);
  v56 = v1;
  v2 = *(v55 + 64);
  __chkstk_darwin(v1);
  v54 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_20A0(&qword_361A8, &unk_25C00);
  v51 = *(v4 - 8);
  v52 = v4;
  v5 = *(v51 + 64);
  __chkstk_darwin(v4);
  v7 = &v48 - v6;
  v49 = sub_20A0(&qword_361B0, &qword_25AF0);
  v8 = *(v49 - 8);
  v9 = v8[8];
  __chkstk_darwin(v49);
  v53 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v50 = &v48 - v12;
  v13 = sub_2391C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_20A0(&qword_361B8, &qword_25AF8);
  v19 = v18 - 8;
  v20 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18);
  v22 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v25 = &v48 - v24;
  sub_2408C();
  sub_240AC();
  sub_23B6C();
  v26 = &v25[*(v19 + 44)];
  v27 = v59;
  *v26 = v58;
  *(v26 + 1) = v27;
  *(v26 + 2) = v60;
  v28 = sub_2395C();
  v29 = v28;
  v30 = *(v28 + 16);
  if (!v30)
  {
    *(swift_allocObject() + 16) = v28;
    sub_20A0(&qword_361C0, &qword_25B00);
    sub_100B4();
    v33 = v7;
    sub_241EC();
LABEL_10:
    v35 = &enum case for ComponentStackBottomSpacing.default(_:);
    goto LABEL_11;
  }

  (*(v14 + 16))(v17, v28 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * (v30 - 1), v13);
  v31 = sub_238CC();
  if (v32 >> 60 == 15)
  {
    v31 = sub_238FC();
    v33 = v7;
    if (v32 >> 60 == 15)
    {
      v34 = 0;
      goto LABEL_8;
    }
  }

  else
  {
    v33 = v7;
  }

  sub_4C38(v31, v32);
  v34 = 1;
LABEL_8:
  (*(v14 + 8))(v17, v13);
  *(swift_allocObject() + 16) = v29;
  sub_20A0(&qword_361C0, &qword_25B00);
  sub_100B4();
  sub_241EC();
  if ((v34 & 1) == 0)
  {
    goto LABEL_10;
  }

  v35 = &enum case for ComponentStackBottomSpacing.none(_:);
LABEL_11:
  v37 = v54;
  v36 = v55;
  v38 = v56;
  (*(v55 + 104))(v54, *v35, v56);
  sub_3F18(&qword_361D8, &qword_361A8, &unk_25C00);
  v39 = v50;
  v40 = v52;
  sub_23EFC();
  (*(v36 + 8))(v37, v38);
  (*(v51 + 8))(v33, v40);
  sub_10168(v25, v22);
  v41 = v8[2];
  v42 = v53;
  v43 = v49;
  v41(v53, v39, v49);
  v44 = v57;
  sub_10168(v22, v57);
  v45 = sub_20A0(&qword_361E0, &qword_25B08);
  v41((v44 + *(v45 + 48)), v42, v43);
  v46 = v8[1];
  v46(v39, v43);
  sub_101D8(v25);
  v46(v42, v43);
  return sub_101D8(v22);
}

uint64_t sub_FD9C(uint64_t a1)
{
  sub_181AC(a1);
  swift_getKeyPath();
  sub_20A0(&qword_361E8, &unk_25B30);
  type metadata accessor for RGDisplayRepresentationView(0);
  sub_3F18(&qword_361F0, &qword_361E8, &unk_25B30);
  sub_10248(&qword_361D0, type metadata accessor for RGDisplayRepresentationView);
  return sub_2409C();
}

uint64_t sub_FEB8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(sub_20A0(&qword_361F8, &qword_25FD0) + 48);
  v6 = type metadata accessor for RGDisplayRepresentationView(0);
  v7 = v6[6];
  v8 = sub_2391C();
  (*(*(v8 - 8) + 16))(a2 + v7, &a1[v5], v8);
  result = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v10 = sub_10BB8(result);
    *a2 = swift_getKeyPath();
    *(a2 + 8) = 0;
    sub_242FC();
    sub_10248(&qword_358B0, &type metadata accessor for Context);
    *(a2 + 16) = sub_23BDC();
    *(a2 + 24) = v11;
    *(a2 + v6[8]) = v10;
    v12 = v6[7];
    v13 = sub_238AC();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2 + v12, 1, 1, v13);
  }

  return result;
}

uint64_t sub_10024@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23CAC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v2 = sub_20A0(&qword_361A0, &unk_25AE0);
  return sub_F7A4(a1 + *(v2 + 44));
}

uint64_t sub_10074()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_100B4()
{
  result = qword_361C8;
  if (!qword_361C8)
  {
    sub_20E8(&qword_361C0, &qword_25B00);
    sub_10248(&qword_361D0, type metadata accessor for RGDisplayRepresentationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_361C8);
  }

  return result;
}

uint64_t sub_10168(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_361B8, &qword_25AF8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_101D8(uint64_t a1)
{
  v2 = sub_20A0(&qword_361B8, &qword_25AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10248(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_102E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2382C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_10368(uint64_t a1, uint64_t a2)
{
  v4 = sub_2382C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RGSuccessView()
{
  result = qword_36268;
  if (!qword_36268)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10424()
{
  result = sub_2382C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_104AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(sub_20A0(&qword_361F8, &qword_25FD0) + 48);
  v5 = type metadata accessor for RGDisplayRepresentationView(0);
  v6 = v5[6];
  v7 = sub_2391C();
  (*(*(v7 - 8) + 16))(a2 + v6, a1 + v4, v7);
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  sub_242FC();
  sub_10248(&qword_358B0, &type metadata accessor for Context);
  *(a2 + 16) = sub_23BDC();
  *(a2 + 24) = v8;
  v9 = v5[7];
  v10 = sub_238AC();
  result = (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  *(a2 + v5[8]) = 0;
  return result;
}

uint64_t sub_105F4@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = sub_242DC();
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20A0(&qword_361A8, &unk_25C00);
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v25);
  v8 = &v24 - v7;
  v9 = sub_2391C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2381C();
  v15 = v14;
  v16 = *(v14 + 16);
  if (!v16)
  {
    *(swift_allocObject() + 16) = v14;
    sub_20A0(&qword_361C0, &qword_25B00);
    sub_100B4();
    sub_241EC();
LABEL_9:
    v20 = &enum case for ComponentStackBottomSpacing.default(_:);
    goto LABEL_10;
  }

  (*(v10 + 16))(v13, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (v16 - 1), v9);
  v17 = sub_238CC();
  if (v18 >> 60 == 15 && (v17 = sub_238FC(), v18 >> 60 == 15))
  {
    v19 = 0;
  }

  else
  {
    sub_4C38(v17, v18);
    v19 = 1;
  }

  (*(v10 + 8))(v13, v9);
  *(swift_allocObject() + 16) = v15;
  sub_20A0(&qword_361C0, &qword_25B00);
  sub_100B4();
  sub_241EC();
  if ((v19 & 1) == 0)
  {
    goto LABEL_9;
  }

  v20 = &enum case for ComponentStackBottomSpacing.none(_:);
LABEL_10:
  v21 = v27;
  (*(v1 + 104))(v4, *v20, v27);
  sub_3F18(&qword_361D8, &qword_361A8, &unk_25C00);
  v22 = v25;
  sub_23EFC();
  (*(v1 + 8))(v4, v21);
  return (*(v5 + 8))(v8, v22);
}

uint64_t sub_109B8(uint64_t a1)
{
  sub_181AC(a1);
  swift_getKeyPath();
  sub_20A0(&qword_361E8, &unk_25B30);
  type metadata accessor for RGDisplayRepresentationView(0);
  sub_3F18(&qword_361F0, &qword_361E8, &unk_25B30);
  sub_10248(&qword_361D0, type metadata accessor for RGDisplayRepresentationView);
  return sub_2409C();
}

uint64_t sub_10AD8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10B20()
{
  sub_20E8(&qword_361A8, &unk_25C00);
  sub_3F18(&qword_361D8, &qword_361A8, &unk_25C00);
  return swift_getOpaqueTypeConformance2();
}

id sub_10BB8(uint64_t a1)
{
  sub_237AC();
  v2 = objc_allocWithZone(SKIDirectInvocationPayload);
  v3 = sub_2433C();

  v4 = [v2 initWithIdentifier:v3];

  sub_20A0(&qword_362A0, qword_25C60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255B0;
  sub_2379C();
  sub_2452C();
  *(inited + 96) = &type metadata for Int;
  *(inited + 72) = a1;
  sub_17434(inited);
  swift_setDeallocating();
  sub_10DA8(inited + 32);
  isa = sub_2430C().super.isa;

  [v4 setUserData:isa];

  v7 = objc_opt_self();
  v8 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  [v8 setInputOrigin:SAInputOriginDialogButtonTapValue];
  [v8 setInteractionType:SAIntentGroupAceInteractionTypeDisplayDrivenValue];
  [v8 setEyesFree:0];
  v9 = [v7 runSiriKitExecutorCommandWithContext:v8 payload:v4];

  return v9;
}

uint64_t sub_10DA8(uint64_t a1)
{
  v2 = sub_20A0(&qword_362A8, qword_25F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10E24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2426C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = sub_2394C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_10F28(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2426C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = sub_2394C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for RGActionConfirmationView()
{
  result = qword_36308;
  if (!qword_36308)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_11070()
{
  result = sub_2426C();
  if (v1 <= 0x3F)
  {
    result = sub_2394C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_11110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for RGActionConfirmationView();
  v4 = v3 - 8;
  v65 = *(v3 - 8);
  v5 = *(v65 + 64);
  __chkstk_darwin(v3);
  v66 = v6;
  v68 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_20A0(&qword_36348, &qword_25D08);
  v71 = *(v7 - 8);
  v72 = v7;
  v8 = *(v71 + 64);
  __chkstk_darwin(v7);
  v70 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v10);
  v69 = &v58[-v11];
  v12 = sub_242DC();
  v63 = *(v12 - 8);
  v64 = v12;
  v13 = *(v63 + 64);
  __chkstk_darwin(v12);
  v61 = &v58[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v62 = sub_20A0(&qword_36350, &qword_25D10);
  v60 = *(v62 - 8);
  v15 = *(v60 + 64);
  __chkstk_darwin(v62);
  v74 = &v58[-v16];
  v17 = sub_20A0(&qword_36358, &qword_25D18);
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v21 = &v58[-v20];
  v22 = sub_2391C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v26 = &v58[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_20A0(&qword_36360, &qword_25D20);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin(v27 - 8);
  v30 = &v58[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v31);
  v33 = &v58[-v32];
  v34 = *(v4 + 28);
  v67 = a1;
  v35 = sub_2393C();
  if (v35)
  {
    v36 = v35;
    v37 = *(v35 + 16);
    if (v37)
    {
      (*(v23 + 16))(v26, v35 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * (v37 - 1), v22);
      v38 = sub_238CC();
      if (v39 >> 60 == 15 && (v38 = sub_238FC(), v39 >> 60 == 15))
      {
        v59 = 0;
      }

      else
      {
        sub_4C38(v38, v39);
        v59 = 1;
      }

      (*(v23 + 8))(v26, v22);
      *(swift_allocObject() + 16) = v36;
      sub_20A0(&qword_36378, &qword_25D30);
      sub_12820();
      sub_241EC();
      if (v59)
      {
        v40 = &enum case for ComponentStackBottomSpacing.none(_:);
LABEL_12:
        v42 = v63;
        v41 = v64;
        v43 = v61;
        (*(v63 + 104))(v61, *v40, v64);
        sub_3F18(&qword_363A8, &qword_36350, &qword_25D10);
        v44 = v62;
        v45 = v74;
        sub_23EFC();
        (*(v42 + 8))(v43, v41);
        (*(v60 + 8))(v45, v44);
        (*(v18 + 32))(v33, v21, v17);
        (*(v18 + 56))(v33, 0, 1, v17);
        goto LABEL_13;
      }
    }

    else
    {
      *(swift_allocObject() + 16) = v35;
      sub_20A0(&qword_36378, &qword_25D30);
      sub_12820();
      sub_241EC();
    }

    v40 = &enum case for ComponentStackBottomSpacing.default(_:);
    goto LABEL_12;
  }

  (*(v18 + 56))(v33, 1, 1, v17);
LABEL_13:
  v46 = v68;
  sub_12B24(v67, v68, type metadata accessor for RGActionConfirmationView);
  v47 = (*(v65 + 80) + 16) & ~*(v65 + 80);
  v48 = swift_allocObject();
  sub_12E84(v46, v48 + v47, type metadata accessor for RGActionConfirmationView);
  type metadata accessor for RGBinaryButtonView(0);
  sub_12E3C(&qword_36368, type metadata accessor for RGBinaryButtonView);
  v49 = v69;
  sub_241EC();
  sub_12708(v33, v30);
  v51 = v70;
  v50 = v71;
  v52 = *(v71 + 16);
  v53 = v72;
  v52(v70, v49, v72);
  v54 = v73;
  sub_12708(v30, v73);
  v55 = sub_20A0(&qword_36370, &qword_25D28);
  v52((v54 + *(v55 + 48)), v51, v53);
  v56 = *(v50 + 8);
  v56(v49, v53);
  sub_12778(v33);
  v56(v51, v53);
  return sub_12778(v30);
}

uint64_t sub_118F0(uint64_t a1)
{
  sub_181AC(a1);
  swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_12A18;
  *(v3 + 24) = v2;

  sub_20A0(&qword_361E8, &unk_25B30);
  sub_20A0(&qword_363B0, &unk_25D70);
  sub_3F18(&qword_361F0, &qword_361E8, &unk_25B30);
  type metadata accessor for RGDisplayRepresentationView(255);
  sub_20E8(&qword_36388, &qword_25D38);
  sub_12E3C(&qword_361D0, type metadata accessor for RGDisplayRepresentationView);
  sub_12930();
  swift_getOpaqueTypeConformance2();
  return sub_2409C();
}

uint64_t sub_11AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for RGDisplayRepresentationView(0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v9 + 24);
  v11 = sub_2391C();
  (*(*(v11 - 8) + 16))(&v8[v10], a2, v11);
  *v8 = swift_getKeyPath();
  v8[8] = 0;
  sub_242FC();
  sub_12E3C(&qword_358B0, &type metadata accessor for Context);
  *(v8 + 2) = sub_23BDC();
  *(v8 + 3) = v12;
  v13 = *(v5 + 28);
  v14 = sub_238AC();
  (*(*(v14 - 8) + 56))(&v8[v13], 1, 1, v14);
  *&v8[*(v5 + 32)] = 0;
  v15 = *(a3 + 16) - 1;
  sub_20A0(&qword_36388, &qword_25D38);
  sub_12E3C(&qword_361D0, type metadata accessor for RGDisplayRepresentationView);
  sub_12930();
  sub_23F0C();
  return sub_12AC8(v8);
}

uint64_t sub_11CF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_23C9C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v9, enum case for RoundedCornerStyle.continuous(_:), v4, v7);
  v10 = (a2 + *(sub_20A0(&qword_36388, &qword_25D38) + 36));
  v11 = sub_23D3C();
  (*(v5 + 16))(&v10[*(v11 + 20)], v9, v4);
  sub_23D2C();
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v19 = v18;
  (*(v5 + 8))(v9, v4);
  *v10 = v13;
  *(v10 + 1) = v15;
  *(v10 + 2) = v17;
  *(v10 + 3) = v19;
  *&v10[*(sub_20A0(&qword_363A0, &qword_25D40) + 36)] = 256;
  return sub_12B24(a1, a2, type metadata accessor for RGDisplayRepresentationView);
}

uint64_t sub_11EAC(char *a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = *a1;
  v5 = sub_20A0(&qword_361F8, &qword_25FD0);
  return a2(v4, &a1[*(v5 + 48)]);
}

uint64_t sub_11F18@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v52 = a2;
  v3 = sub_20A0(&qword_35F98, qword_25940);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v49 = &v47 - v5;
  v6 = type metadata accessor for RGActionConfirmationView();
  v7 = v6 - 8;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v6);
  v51 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v50 = &v47 - v11;
  __chkstk_darwin(v12);
  v14 = &v47 - v13;
  __chkstk_darwin(v15);
  v17 = &v47 - v16;
  v18 = type metadata accessor for RGBinaryButton(0);
  v19 = *(v18 - 8);
  v53 = v18 - 8;
  v20 = *(v19 + 64);
  __chkstk_darwin(v18 - 8);
  v54 = (&v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_12B24(a1, v17, type metadata accessor for RGActionConfirmationView);
  v22 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v23 = swift_allocObject();
  sub_12E84(v17, v23 + v22, type metadata accessor for RGActionConfirmationView);
  v47 = a1;
  sub_12B24(a1, v14, type metadata accessor for RGActionConfirmationView);
  v24 = swift_allocObject();
  sub_12E84(v14, v24 + v22, type metadata accessor for RGActionConfirmationView);
  v25 = a1 + *(v7 + 28);
  LOBYTE(v14) = sub_2392C();
  v26 = sub_2414C();
  v27 = *(v26 - 8);
  v28 = &enum case for ButtonItemButtonStyle.Role.preferredAndDestructive(_:);
  if ((v14 & 1) == 0)
  {
    v28 = &enum case for ButtonItemButtonStyle.Role.preferred(_:);
  }

  v29 = v49;
  (*(*(v26 - 8) + 104))(v49, *v28, v26);
  v48 = *(v27 + 56);
  v48(v29, 0, 1, v26);
  v30 = v53;
  v31 = v54;
  *v54 = sub_12B8C;
  v31[1] = v23;
  v31[2] = sub_12BA4;
  v31[3] = v24;
  sub_12BBC(v29, v31 + *(v30 + 32));
  v32 = v47;
  v33 = v50;
  sub_12B24(v47, v50, type metadata accessor for RGActionConfirmationView);
  v34 = swift_allocObject();
  sub_12E84(v33, v34 + v22, type metadata accessor for RGActionConfirmationView);
  v35 = v32;
  v36 = v51;
  sub_12B24(v35, v51, type metadata accessor for RGActionConfirmationView);
  v37 = swift_allocObject();
  sub_12E84(v36, v37 + v22, type metadata accessor for RGActionConfirmationView);
  v38 = type metadata accessor for RGBinaryButtonView(0);
  v39 = v52;
  v40 = (v52 + *(v38 + 28));
  v48(v40 + *(v53 + 32), 1, 1, v26);
  *v40 = sub_12C2C;
  v40[1] = v34;
  v40[2] = sub_12DC0;
  v40[3] = v37;
  sub_242FC();
  sub_12E3C(&qword_358B0, &type metadata accessor for Context);
  v41 = sub_23BDC();
  v43 = v42;
  type metadata accessor for CommandThrottle();
  sub_12E3C(&qword_358A0, type metadata accessor for CommandThrottle);
  v44 = sub_23BDC();
  *v39 = v41;
  v39[1] = v43;
  v39[2] = v44;
  v39[3] = v45;
  return sub_12E84(v54, v39 + *(v38 + 24), type metadata accessor for RGBinaryButton);
}

uint64_t sub_12414(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_242CC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2424C();
  v9 = a2(v8);
  v10 = objc_opt_self();
  v11 = [objc_allocWithZone(SKIDirectInvocationContext) init];
  [v11 setInputOrigin:SAInputOriginDialogButtonTapValue];
  [v11 setInteractionType:SAIntentGroupAceInteractionTypeDisplayDrivenValue];
  [v11 setEyesFree:0];
  v12 = [v10 runSiriKitExecutorCommandWithContext:v11 payload:v9];

  sub_242BC();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_125A0(uint64_t a1, void (*a2)(void))
{
  v4 = sub_2369C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = a1 + *(type metadata accessor for RGActionConfirmationView() + 20);
  a2();
  return sub_23E8C();
}

uint64_t sub_12640@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23CAC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = sub_20A0(&qword_36340, &qword_25D00);
  return sub_11110(v1, a1 + *(v3 + 44));
}

uint64_t sub_12698@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for RGActionConfirmationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_11F18(v4, a1);
}

uint64_t sub_12708(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_36360, &qword_25D20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_12778(uint64_t a1)
{
  v2 = sub_20A0(&qword_36360, &qword_25D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_127E0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_12820()
{
  result = qword_36380;
  if (!qword_36380)
  {
    sub_20E8(&qword_36378, &qword_25D30);
    type metadata accessor for RGDisplayRepresentationView(255);
    sub_20E8(&qword_36388, &qword_25D38);
    sub_12E3C(&qword_361D0, type metadata accessor for RGDisplayRepresentationView);
    sub_12930();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36380);
  }

  return result;
}

unint64_t sub_12930()
{
  result = qword_36390;
  if (!qword_36390)
  {
    sub_20E8(&qword_36388, &qword_25D38);
    sub_12E3C(&qword_361D0, type metadata accessor for RGDisplayRepresentationView);
    sub_3F18(&qword_36398, &qword_363A0, &qword_25D40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36390);
  }

  return result;
}

uint64_t sub_12A20()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_12A58(char *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *a1;
  v6 = sub_20A0(&qword_361F8, &qword_25FD0);
  return v4(v5, &a1[*(v6 + 48)]);
}

uint64_t sub_12AC8(uint64_t a1)
{
  v2 = type metadata accessor for RGDisplayRepresentationView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_12B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_12BBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_35F98, qword_25940);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_12CA8()
{
  v1 = (type metadata accessor for RGActionConfirmationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2426C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_2394C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_12E3C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_12E84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_12F44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v298 = a2;
  v222 = type metadata accessor for RGSuccessView();
  v3 = *(*(v222 - 8) + 64);
  __chkstk_darwin(v222);
  v207 = &v204 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = sub_2382C();
  v206 = *(v208 - 8);
  v5 = *(v206 + 64);
  __chkstk_darwin(v208);
  v205 = &v204 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v219 = sub_20A0(&qword_36578, &qword_25E88);
  v7 = *(*(v219 - 8) + 64);
  __chkstk_darwin(v219);
  v220 = (&v204 - v8);
  v265 = sub_20A0(&qword_36550, &qword_25E78);
  v9 = *(*(v265 - 8) + 64);
  __chkstk_darwin(v265);
  v221 = &v204 - v10;
  v215 = sub_20A0(&qword_36580, &qword_25E90);
  v214 = *(v215 - 8);
  v11 = *(v214 + 64);
  __chkstk_darwin(v215);
  v211 = &v204 - v12;
  v213 = sub_240FC();
  v212 = *(v213 - 8);
  v13 = *(v212 + 64);
  __chkstk_darwin(v213);
  v210 = &v204 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v229 = sub_2380C();
  v216 = *(v229 - 8);
  v15 = *(v216 + 64);
  __chkstk_darwin(v229);
  v209 = &v204 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v228 = &v204 - v18;
  v255 = type metadata accessor for RGToolDisambiguationView();
  v19 = *(*(v255 - 8) + 64);
  __chkstk_darwin(v255);
  v245 = &v204 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_2396C();
  v244 = *(v246 - 8);
  v21 = *(v244 + 64);
  __chkstk_darwin(v246);
  v243 = &v204 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v261 = sub_20A0(&qword_36588, &qword_25E98);
  v23 = *(*(v261 - 8) + 64);
  __chkstk_darwin(v261);
  v263 = &v204 - v24;
  v251 = sub_20A0(&qword_36590, &qword_25EA0);
  v25 = *(*(v251 - 8) + 64);
  __chkstk_darwin(v251);
  v253 = &v204 - v26;
  v262 = sub_20A0(&qword_36530, &qword_25E70);
  v27 = *(*(v262 - 8) + 64);
  __chkstk_darwin(v262);
  v254 = &v204 - v28;
  v294 = sub_20A0(&qword_36520, &qword_25E68);
  v29 = *(*(v294 - 8) + 64);
  __chkstk_darwin(v294);
  v264 = &v204 - v30;
  v252 = type metadata accessor for RGParameterConfirmationView();
  v31 = *(*(v252 - 8) + 64);
  __chkstk_darwin(v252);
  v249 = &v204 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_2398C();
  v248 = *(v250 - 8);
  v33 = *(v248 + 64);
  __chkstk_darwin(v250);
  v247 = &v204 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v233 = sub_20A0(&qword_36598, &qword_25EA8);
  v35 = *(*(v233 - 8) + 64);
  __chkstk_darwin(v233);
  v236 = &v204 - v36;
  v234 = sub_20A0(&qword_36510, &qword_25E60);
  v37 = *(*(v234 - 8) + 64);
  __chkstk_darwin(v234);
  v235 = &v204 - v38;
  v39 = sub_20A0(&qword_365A0, &qword_25EB0);
  v40 = *(*(v39 - 8) + 64);
  __chkstk_darwin(v39 - 8);
  v230 = &v204 - v41;
  v232 = sub_2370C();
  v231 = *(v232 - 8);
  v42 = *(v231 + 64);
  __chkstk_darwin(v232);
  v217 = &v204 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v218 = &v204 - v45;
  v241 = sub_20A0(&qword_36500, &qword_25E58);
  v46 = *(*(v241 - 8) + 64);
  __chkstk_darwin(v241);
  v237 = &v204 - v47;
  v238 = sub_20A0(&qword_365A8, &qword_25EB8);
  v48 = *(*(v238 - 8) + 64);
  __chkstk_darwin(v238);
  v240 = &v204 - v49;
  v289 = sub_20A0(&qword_364E8, &qword_25E50);
  v50 = *(*(v289 - 1) + 64);
  __chkstk_darwin(v289);
  v242 = &v204 - v51;
  v239 = type metadata accessor for RGArchivedView();
  v52 = *(*(v239 - 8) + 64);
  __chkstk_darwin(v239);
  v226 = &v204 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  v227 = sub_2384C();
  v225 = *(v227 - 8);
  v54 = *(v225 + 64);
  __chkstk_darwin(v227);
  v223 = &v204 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v56);
  v224 = &v204 - v57;
  v284 = type metadata accessor for RGActionConfirmationView();
  v58 = *(*(v284 - 8) + 64);
  __chkstk_darwin(v284);
  v268 = &v204 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v269 = sub_2394C();
  v267 = *(v269 - 8);
  count = v267[8].count;
  __chkstk_darwin(v269);
  v266 = &v204 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0);
  v296 = sub_20A0(&qword_365B0, &qword_25EC0);
  v62 = *(*(v296 - 8) + 64);
  __chkstk_darwin(v296);
  v297 = (&v204 - v63);
  v290 = sub_20A0(&qword_365B8, &qword_25EC8);
  v64 = *(*(v290 - 8) + 64);
  __chkstk_darwin(v290);
  v292 = &v204 - v65;
  v285 = sub_20A0(&qword_365C0, &qword_25ED0);
  v66 = *(*(v285 - 8) + 64);
  __chkstk_darwin(v285);
  v287 = &v204 - v67;
  v281 = sub_20A0(&qword_365C8, &qword_25ED8);
  v68 = *(*(v281 - 8) + 64);
  __chkstk_darwin(v281);
  v282 = &v204 - v69;
  v286 = sub_20A0(&qword_364B0, &qword_25E40);
  v70 = *(*(v286 - 8) + 64);
  __chkstk_darwin(v286);
  v283 = &v204 - v71;
  v291 = sub_20A0(&qword_364A0, &qword_25E38);
  v72 = *(*(v291 - 8) + 64);
  __chkstk_darwin(v291);
  v288 = &v204 - v73;
  v295 = sub_20A0(&qword_36490, &qword_25E30);
  v74 = *(*(v295 - 8) + 64);
  __chkstk_darwin(v295);
  v293 = &v204 - v75;
  v277 = type metadata accessor for RGDisambiguationView();
  v76 = *(*(v277 - 8) + 64);
  __chkstk_darwin(v277);
  v270 = (&v204 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0));
  v275 = sub_20A0(&qword_365D0, &qword_25EE0);
  v78 = *(*(v275 - 8) + 64);
  __chkstk_darwin(v275);
  v276 = &v204 - v79;
  v259 = sub_237BC();
  v258 = *(v259 - 8);
  v80 = *(v258 + 64);
  __chkstk_darwin(v259);
  v274 = &v204 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = sub_236BC();
  v256 = *(v257 - 8);
  v82 = *(v256 + 64);
  __chkstk_darwin(v257);
  v273 = &v204 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v84);
  v272 = &v204 - v85;
  v278 = type metadata accessor for RGSFCardView(0);
  v86 = *(*(v278 - 8) + 64);
  __chkstk_darwin(v278);
  v271 = &v204 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v88);
  v260 = &v204 - v89;
  v280 = sub_20A0(&qword_364C0, &qword_25E48);
  v90 = *(*(v280 - 8) + 64);
  __chkstk_darwin(v280);
  v279 = (&v204 - v91);
  v92 = sub_2389C();
  v93 = *(v92 - 8);
  v94 = *(v93 + 64);
  __chkstk_darwin(v92);
  v96 = (&v204 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  v97 = sub_237DC();
  v98 = *(v97 - 8);
  v99 = *(v98 + 64);
  __chkstk_darwin(v97);
  v101 = &v204 - ((v100 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = __chkstk_darwin(v102);
  v105 = (&v204 - v104);
  v106 = *(v98 + 16);
  v106(&v204 - v104, a1, v97, v103);
  v107 = (*(v98 + 88))(v105, v97);
  if (v107 != enum case for RGPluginModel.disambiguationModel(_:))
  {
    if (v107 == enum case for RGPluginModel.actionConfirmationModel(_:))
    {
      (*(v98 + 96))(v105, v97);
      v123 = v267;
      v124 = v266;
      v125 = v269;
      (v267[4].count)(v266, v105, v269);
      v126 = v268;
      (v123[2].count)(&v268[*(v284 + 20)], v124, v125);
      sub_2425C();
      v279 = type metadata accessor for RGActionConfirmationView;
      sub_176F8(v126, v282, type metadata accessor for RGActionConfirmationView);
      swift_storeEnumTagMultiPayload();
      sub_16300();
      sub_16868(&qword_364D8, type metadata accessor for RGActionConfirmationView);
      v127 = v283;
      sub_23D1C();
      sub_177C0(v127, v287, &qword_364B0, &qword_25E40);
      swift_storeEnumTagMultiPayload();
      sub_16244();
      sub_163EC();
      v128 = v288;
      sub_23D1C();
      sub_6A44(v127, &qword_364B0, &qword_25E40);
      sub_177C0(v128, v292, &qword_364A0, &qword_25E38);
      swift_storeEnumTagMultiPayload();
      sub_161B8();
      sub_165E0();
      v129 = v293;
      sub_23D1C();
      sub_6A44(v128, &qword_364A0, &qword_25E38);
      sub_177C0(v129, v297, &qword_36490, &qword_25E30);
      swift_storeEnumTagMultiPayload();
      sub_1612C();
      sub_23D1C();
      sub_6A44(v129, &qword_36490, &qword_25E30);
      sub_17760(v126, v279);
      return (v123[1].count)(v124, v125);
    }

    if (v107 == enum case for RGPluginModel.parameterConfirmationModel(_:))
    {
      (*(v98 + 96))(v105, v97);
      v131 = v248;
      v132 = v247;
      v133 = v250;
      (*(v248 + 32))(v247, v105, v250);
      v134 = v249;
      (*(v131 + 16))(&v249[*(v252 + 20)], v132, v133);
      sub_2425C();
      v289 = type metadata accessor for RGParameterConfirmationView;
      sub_176F8(v134, v253, type metadata accessor for RGParameterConfirmationView);
      swift_storeEnumTagMultiPayload();
      sub_16868(&qword_36538, type metadata accessor for RGParameterConfirmationView);
      sub_16868(&qword_36540, type metadata accessor for RGToolDisambiguationView);
      v135 = v254;
    }

    else
    {
      if (v107 != enum case for RGPluginModel.toolDisambiguationModel(_:))
      {
        if (v107 == enum case for RGPluginModel.card(_:))
        {
          (*(v98 + 96))(v105, v97);
          v165 = *v105;
          v164 = v105[1];
          (v106)(v101, a1, v97);
          v166 = v230;
          sub_236FC();
          v191 = v231;
          v192 = v232;
          (*(v231 + 56))(v166, 0, 1, v232);
          v193 = v218;
          (*(v191 + 32))(v218, v166, v192);
          v194 = v217;
          (*(v191 + 16))(v217, v193, v192);
          v195 = v235;
          sub_6F18(v194, v235);
          sub_177C0(v195, v236, &qword_36510, &qword_25E60);
          swift_storeEnumTagMultiPayload();
          sub_1652C();
          v196 = v237;
          sub_23D1C();
          sub_6A44(v195, &qword_36510, &qword_25E60);
          (*(v191 + 8))(v193, v192);
          sub_177C0(v196, v240, &qword_36500, &qword_25E58);
          swift_storeEnumTagMultiPayload();
          sub_16868(&qword_364F0, type metadata accessor for RGArchivedView);
          sub_164A8();
          v197 = v242;
          sub_23D1C();
          sub_177C0(v197, v287, &qword_364E8, &qword_25E50);
          swift_storeEnumTagMultiPayload();
          sub_16244();
          sub_163EC();
          v198 = v288;
          sub_23D1C();
          sub_6A44(v197, &qword_364E8, &qword_25E50);
          sub_177C0(v198, v292, &qword_364A0, &qword_25E38);
          swift_storeEnumTagMultiPayload();
          sub_161B8();
          sub_165E0();
          v199 = v293;
          sub_23D1C();
          sub_6A44(v198, &qword_364A0, &qword_25E38);
          sub_177C0(v199, v297, &qword_36490, &qword_25E30);
          swift_storeEnumTagMultiPayload();
          sub_1612C();
          sub_23D1C();
          sub_4C4C(v165, v164);
          sub_6A44(v199, &qword_36490, &qword_25E30);
          return sub_6A44(v196, &qword_36500, &qword_25E58);
        }

        if (v107 == enum case for RGPluginModel.archivedView(_:))
        {
          (*(v98 + 96))(v105, v97);
          v131 = v225;
          v132 = v224;
          v133 = v227;
          (*(v225 + 32))(v224, v105, v227);
          v167 = v223;
          (*(v131 + 16))(v223, v132, v133);
          v168 = v226;
          sub_CE0C(v167, v226);
          v284 = type metadata accessor for RGArchivedView;
          sub_176F8(v168, v240, type metadata accessor for RGArchivedView);
          swift_storeEnumTagMultiPayload();
          sub_16868(&qword_364F0, type metadata accessor for RGArchivedView);
          sub_164A8();
          v169 = v242;
          sub_23D1C();
          sub_177C0(v169, v287, &qword_364E8, &qword_25E50);
          swift_storeEnumTagMultiPayload();
          sub_16244();
          sub_163EC();
          v170 = v288;
          sub_23D1C();
          sub_6A44(v169, &qword_364E8, &qword_25E50);
          sub_177C0(v170, v292, &qword_364A0, &qword_25E38);
          swift_storeEnumTagMultiPayload();
          sub_161B8();
          sub_165E0();
          v171 = v293;
          sub_23D1C();
          sub_6A44(v170, &qword_364A0, &qword_25E38);
          sub_177C0(v171, v297, &qword_36490, &qword_25E30);
          swift_storeEnumTagMultiPayload();
          sub_1612C();
          sub_23D1C();
          sub_6A44(v171, &qword_36490, &qword_25E30);
          v140 = v168;
          v141 = v284;
          goto LABEL_15;
        }

        if (v107 == enum case for RGPluginModel.control(_:))
        {
          (*(v98 + 96))(v105, v97);
          v172 = v216;
          v173 = v228;
          v174 = v229;
          (*(v216 + 32))(v228, v105, v229);
          v175 = v209;
          (*(v172 + 16))(v209, v173, v174);
          v176 = v210;
          sub_237FC();
          v177 = v211;
          sub_240EC();
          v178 = *(v212 + 8);
          v179 = v213;
          v178(v176, v213);
          v180 = v215;
          v181 = sub_240CC();
          (*(v214 + 8))(v177, v180);
          sub_237FC();
          v182 = sub_240DC();
          v178(v176, v179);
          v183 = *(v172 + 8);
          v184 = v175;
          v185 = v229;
          v183(v184, v229);
          v186 = v220;
          *v220 = v181;
          v186[1] = v182;
          swift_storeEnumTagMultiPayload();
          sub_16814();
          sub_16868(&qword_36560, type metadata accessor for RGSuccessView);
          v187 = v181;
          v188 = v221;
          sub_23D1C();
          sub_177C0(v188, v263, &qword_36550, &qword_25E78);
          swift_storeEnumTagMultiPayload();
          sub_1666C();
          sub_16758();
          v189 = v264;
          sub_23D1C();
          sub_6A44(v188, &qword_36550, &qword_25E78);
          sub_177C0(v189, v292, &qword_36520, &qword_25E68);
          swift_storeEnumTagMultiPayload();
          sub_161B8();
          sub_165E0();
          v190 = v293;
          sub_23D1C();
          sub_6A44(v189, &qword_36520, &qword_25E68);
          sub_177C0(v190, v297, &qword_36490, &qword_25E30);
          swift_storeEnumTagMultiPayload();
          sub_1612C();
          sub_23D1C();

          sub_6A44(v190, &qword_36490, &qword_25E30);
          return (v183)(v228, v185);
        }

        if (v107 != enum case for RGPluginModel.successModel(_:))
        {
          *v297 = sub_23EAC();
          swift_storeEnumTagMultiPayload();
          sub_1612C();
          sub_23D1C();
          return (*(v98 + 8))(v105, v97);
        }

        (*(v98 + 96))(v105, v97);
        v131 = v206;
        v132 = v205;
        v133 = v208;
        (*(v206 + 32))(v205, v105, v208);
        v134 = v207;
        (*(v131 + 16))(v207, v132, v133);
        v289 = type metadata accessor for RGSuccessView;
        sub_176F8(v134, v220, type metadata accessor for RGSuccessView);
        swift_storeEnumTagMultiPayload();
        sub_16814();
        sub_16868(&qword_36560, type metadata accessor for RGSuccessView);
        v135 = v221;
        sub_23D1C();
        v136 = &qword_36550;
        v137 = &qword_25E78;
        sub_177C0(v135, v263, &qword_36550, &qword_25E78);
LABEL_14:
        swift_storeEnumTagMultiPayload();
        sub_1666C();
        sub_16758();
        v138 = v264;
        sub_23D1C();
        sub_6A44(v135, v136, v137);
        sub_177C0(v138, v292, &qword_36520, &qword_25E68);
        swift_storeEnumTagMultiPayload();
        sub_161B8();
        sub_165E0();
        v139 = v293;
        sub_23D1C();
        sub_6A44(v138, &qword_36520, &qword_25E68);
        sub_177C0(v139, v297, &qword_36490, &qword_25E30);
        swift_storeEnumTagMultiPayload();
        sub_1612C();
        sub_23D1C();
        sub_6A44(v139, &qword_36490, &qword_25E30);
        v140 = v134;
        v141 = v289;
LABEL_15:
        sub_17760(v140, v141);
        return (*(v131 + 8))(v132, v133);
      }

      (*(v98 + 96))(v105, v97);
      v131 = v244;
      v132 = v243;
      v133 = v246;
      (*(v244 + 32))(v243, v105, v246);
      v134 = v245;
      (*(v131 + 16))(v245, v132, v133);
      v289 = type metadata accessor for RGToolDisambiguationView;
      sub_176F8(v134, v253, type metadata accessor for RGToolDisambiguationView);
      swift_storeEnumTagMultiPayload();
      sub_16868(&qword_36538, type metadata accessor for RGParameterConfirmationView);
      sub_16868(&qword_36540, type metadata accessor for RGToolDisambiguationView);
      v135 = v254;
    }

    sub_23D1C();
    v136 = &qword_36530;
    v137 = &qword_25E70;
    sub_177C0(v135, v263, &qword_36530, &qword_25E70);
    goto LABEL_14;
  }

  (*(v98 + 96))(v105, v97);
  (*(v93 + 32))(v96, v105, v92);
  sub_4490();
  v109 = v92;
  v110 = v279;
  if (v108)
  {
    v111 = v108;
    v269 = v93;
    v112 = v108 >> 62;
    if (v108 >> 62)
    {
LABEL_50:
      if (sub_245FC())
      {
        goto LABEL_5;
      }
    }

    else if (*(&dword_10 + (v108 & 0xFFFFFFFFFFFFFF8)))
    {
LABEL_5:
      sub_2386C();
      sub_2387C();
      sub_2385C();
      v113 = v271;
      sub_2425C();
      v114 = v278;
      *&v113[*(v278 + 24)] = 0;
      v266 = sub_1744C(&_swiftEmptyArrayStorage);
      *&v113[v114[8]] = 3;
      v115 = &v113[v114[10]];
      *v115 = sub_7844;
      *(v115 + 1) = 0;
      v115[16] = 0;
      v116 = &v113[v114[11]];
      v299 = 0x4059000000000000;
      sub_2400C();
      v117 = v301;
      *v116 = v300;
      *(v116 + 1) = v117;
      v118 = &v113[v114[9]];
      LOBYTE(v299) = 0;
      sub_2400C();
      v119 = v301;
      *v118 = v300;
      *(v118 + 1) = v119;
      v120 = [objc_allocWithZone(SFCard) init];
      sub_4CF4();
      isa = sub_243CC().super.isa;
      [v120 setCardSections:isa];

      *&v113[v114[5]] = v120;
      if (v112)
      {
        v112 = v111 & 0xFFFFFFFFFFFFFF8;
        v122 = sub_245FC();
      }

      else
      {
        v112 = v111 & 0xFFFFFFFFFFFFFF8;
        v122 = *(&dword_10 + (v111 & 0xFFFFFFFFFFFFFF8));
      }

      v267 = v96;
      v268 = v109;
      if (v122)
      {
        v110 = 0;
        v270 = &_swiftEmptyArrayStorage;
        v96 = &SAAceCommand__prots;
        do
        {
          v142 = v110;
          while (1)
          {
            if ((v111 & 0xC000000000000001) != 0)
            {
              v143 = sub_2459C();
            }

            else
            {
              if (v142 >= *(v112 + 16))
              {
                goto LABEL_49;
              }

              v143 = *(v111 + 8 * v142 + 32);
            }

            v109 = v143;
            v110 = (v142 + 1);
            if (__OFADD__(v142, 1))
            {
              __break(1u);
LABEL_49:
              __break(1u);
              goto LABEL_50;
            }

            v144 = sub_10BB8(v142 + 1);
            v145 = [v109 cardSectionId];
            if (v145)
            {
              break;
            }

            v142 = (v142 + 1);
            if (v110 == v122)
            {
              goto LABEL_35;
            }
          }

          v146 = v145;
          v147 = sub_2434C();
          v265 = v148;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v270 = sub_16914(0, v270[2] + 1, 1, v270);
          }

          v150 = v270[2];
          v149 = v270[3];
          v109 = (v150 + 1);
          if (v150 >= v149 >> 1)
          {
            v270 = sub_16914((v149 > 1), v150 + 1, 1, v270);
          }

          v151 = v270;
          v270[2] = v109;
          v152 = &v151[3 * v150];
          v153 = v265;
          v152[4] = v147;
          v152[5] = v153;
          v152[6] = v144;
        }

        while (v110 != v122);
      }

      else
      {
        v270 = &_swiftEmptyArrayStorage;
      }

LABEL_35:

      if (v270[2])
      {
        sub_20A0(&qword_365D8, &qword_25EE8);
        v154 = sub_2463C();
      }

      else
      {
        v154 = &_swiftEmptyDictionarySingleton;
      }

      v155 = v268;
      v110 = v279;
      v300 = v154;

      sub_16C94(v156, 1, &v300);

      v157 = *(v278 + 28);
      (*(v258 + 8))(v274, v259);
      v158 = *(v256 + 8);
      v159 = v257;
      v158(v273, v257);
      v158(v272, v159);

      v160 = v271;
      *&v271[v157] = v300;
      v161 = v260;
      sub_17694(v160, v260);
      sub_176F8(v161, v276, type metadata accessor for RGSFCardView);
      swift_storeEnumTagMultiPayload();
      sub_16868(&qword_364C8, type metadata accessor for RGSFCardView);
      sub_16868(&qword_364D0, type metadata accessor for RGDisambiguationView);
      sub_23D1C();
      sub_17760(v161, type metadata accessor for RGSFCardView);
      v162 = v269;
      v96 = v267;
      v163 = v155;
      goto LABEL_53;
    }

    v93 = v269;
  }

  v200 = v270;
  (*(v93 + 16))(v270, v96, v109);
  sub_176F8(v200, v276, type metadata accessor for RGDisambiguationView);
  swift_storeEnumTagMultiPayload();
  sub_16868(&qword_364C8, type metadata accessor for RGSFCardView);
  sub_16868(&qword_364D0, type metadata accessor for RGDisambiguationView);
  sub_23D1C();
  sub_17760(v200, type metadata accessor for RGDisambiguationView);
  v162 = v93;
  v163 = v109;
LABEL_53:
  sub_177C0(v110, v282, &qword_364C0, &qword_25E48);
  swift_storeEnumTagMultiPayload();
  sub_16300();
  sub_16868(&qword_364D8, type metadata accessor for RGActionConfirmationView);
  v201 = v283;
  sub_23D1C();
  sub_177C0(v201, v287, &qword_364B0, &qword_25E40);
  swift_storeEnumTagMultiPayload();
  sub_16244();
  sub_163EC();
  v202 = v288;
  sub_23D1C();
  sub_6A44(v201, &qword_364B0, &qword_25E40);
  sub_177C0(v202, v292, &qword_364A0, &qword_25E38);
  swift_storeEnumTagMultiPayload();
  sub_161B8();
  sub_165E0();
  v203 = v293;
  sub_23D1C();
  sub_6A44(v202, &qword_364A0, &qword_25E38);
  sub_177C0(v203, v297, &qword_36490, &qword_25E30);
  swift_storeEnumTagMultiPayload();
  sub_1612C();
  sub_23D1C();
  sub_6A44(v203, &qword_36490, &qword_25E30);
  sub_6A44(v110, &qword_364C0, &qword_25E48);
  return (*(v162 + 8))(v96, v163);
}

uint64_t sub_15E80@<X0>(uint64_t *a1@<X8>)
{
  result = swift_allocObject();
  *a1 = result;
  return result;
}

uint64_t sub_15EB4(uint64_t a1)
{
  v2 = sub_20A0(&qword_36468, &qword_25E20);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v14 - v4;
  sub_12F44(a1, &v14 - v4);
  v6 = type metadata accessor for CommandThrottle();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v15 = 0;
  sub_23ACC();
  sub_16868(&qword_358A0, type metadata accessor for CommandThrottle);
  v10 = sub_23AAC();
  v11 = &v5[*(v2 + 36)];
  *v11 = v10;
  v11[1] = v9;
  sub_16014();
  v12 = sub_23EAC();
  sub_6A44(v5, &qword_36468, &qword_25E20);
  return v12;
}

unint64_t sub_16014()
{
  result = qword_36470;
  if (!qword_36470)
  {
    sub_20E8(&qword_36468, &qword_25E20);
    sub_160A0();
    sub_168B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36470);
  }

  return result;
}

unint64_t sub_160A0()
{
  result = qword_36478;
  if (!qword_36478)
  {
    sub_20E8(&qword_36480, &qword_25E28);
    sub_1612C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36478);
  }

  return result;
}

unint64_t sub_1612C()
{
  result = qword_36488;
  if (!qword_36488)
  {
    sub_20E8(&qword_36490, &qword_25E30);
    sub_161B8();
    sub_165E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36488);
  }

  return result;
}

unint64_t sub_161B8()
{
  result = qword_36498;
  if (!qword_36498)
  {
    sub_20E8(&qword_364A0, &qword_25E38);
    sub_16244();
    sub_163EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36498);
  }

  return result;
}

unint64_t sub_16244()
{
  result = qword_364A8;
  if (!qword_364A8)
  {
    sub_20E8(&qword_364B0, &qword_25E40);
    sub_16300();
    sub_16868(&qword_364D8, type metadata accessor for RGActionConfirmationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_364A8);
  }

  return result;
}

unint64_t sub_16300()
{
  result = qword_364B8;
  if (!qword_364B8)
  {
    sub_20E8(&qword_364C0, &qword_25E48);
    sub_16868(&qword_364C8, type metadata accessor for RGSFCardView);
    sub_16868(&qword_364D0, type metadata accessor for RGDisambiguationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_364B8);
  }

  return result;
}

unint64_t sub_163EC()
{
  result = qword_364E0;
  if (!qword_364E0)
  {
    sub_20E8(&qword_364E8, &qword_25E50);
    sub_16868(&qword_364F0, type metadata accessor for RGArchivedView);
    sub_164A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_364E0);
  }

  return result;
}

unint64_t sub_164A8()
{
  result = qword_364F8;
  if (!qword_364F8)
  {
    sub_20E8(&qword_36500, &qword_25E58);
    sub_1652C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_364F8);
  }

  return result;
}

unint64_t sub_1652C()
{
  result = qword_36508;
  if (!qword_36508)
  {
    sub_20E8(&qword_36510, &qword_25E60);
    sub_16868(&qword_364C8, type metadata accessor for RGSFCardView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36508);
  }

  return result;
}

unint64_t sub_165E0()
{
  result = qword_36518;
  if (!qword_36518)
  {
    sub_20E8(&qword_36520, &qword_25E68);
    sub_1666C();
    sub_16758();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36518);
  }

  return result;
}

unint64_t sub_1666C()
{
  result = qword_36528;
  if (!qword_36528)
  {
    sub_20E8(&qword_36530, &qword_25E70);
    sub_16868(&qword_36538, type metadata accessor for RGParameterConfirmationView);
    sub_16868(&qword_36540, type metadata accessor for RGToolDisambiguationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36528);
  }

  return result;
}

unint64_t sub_16758()
{
  result = qword_36548;
  if (!qword_36548)
  {
    sub_20E8(&qword_36550, &qword_25E78);
    sub_16814();
    sub_16868(&qword_36560, type metadata accessor for RGSuccessView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36548);
  }

  return result;
}

unint64_t sub_16814()
{
  result = qword_36558;
  if (!qword_36558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36558);
  }

  return result;
}

uint64_t sub_16868(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_168B0()
{
  result = qword_36568;
  if (!qword_36568)
  {
    sub_20E8(&qword_36570, &qword_25E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36568);
  }

  return result;
}

void *sub_16914(void *result, int64_t a2, char a3, void *a4)
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
    sub_20A0(&qword_365E8, &qword_25EF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_20A0(&qword_365F0, &qword_25F00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_16A5C(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_246EC();
  sub_2438C();
  v6 = sub_2470C();

  return sub_16B14(a1, a2, v6);
}

unint64_t sub_16AD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2450C(*(v2 + 40));
  return sub_16BCC(a1, v4);
}

unint64_t sub_16B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_246AC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_16BCC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_17838(*(v2 + 48) + 40 * v4, v8);
      v6 = sub_2451C();
      sub_17894(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_16C94(void *a1, char a2, void *a3)
{
  v40 = a1[2];
  if (!v40)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_16A5C(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_17190(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_16A5C(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_246DC();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_17024();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_20A0(&qword_365E0, &qword_25EF0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_2457C(30);
    v41._object = 0x8000000000026EC0;
    v41._countAndFlagsBits = 0xD00000000000001BLL;
    sub_2439C(v41);
    sub_245DC();
    v42._countAndFlagsBits = 39;
    v42._object = 0xE100000000000000;
    sub_2439C(v42);
    result = sub_245EC();
    __break(1u);
    return result;
  }

  v22[2] = v25;
  if (v40 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_16A5C(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_17190(v33, 1);
        v34 = *a3;
        v29 = sub_16A5C(v7, v6);
        if ((v17 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v7;
      v37[1] = v6;
      *(v36[7] + 8 * v29) = v10;
      v38 = v36[2];
      v15 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v36[2] = v39;
      v5 += 3;
      if (v40 == v26)
      {
      }
    }

    goto LABEL_25;
  }
}

id sub_17024()
{
  v1 = v0;
  sub_20A0(&qword_365D8, &qword_25EE8);
  v2 = *v0;
  v3 = sub_2461C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_17190(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_20A0(&qword_365D8, &qword_25EE8);
  v39 = a2;
  result = sub_2462C();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v39 & 1) == 0)
      {
        v26 = v22[1];

        v27 = v25;
      }

      v28 = *(v8 + 40);
      sub_246EC();
      sub_2438C();
      result = sub_2470C();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v38;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

unint64_t sub_1744C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_20A0(&qword_365D8, &qword_25EE8);
    v3 = sub_2463C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_16A5C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_17550(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 16);
  if (v2)
  {
    sub_20A0(&qword_365F8, &qword_25F08);
    v5 = sub_2463C();
    v6 = a1 + 32;

    while (1)
    {
      sub_177C0(v6, v15, &qword_362A8, qword_25F10);
      result = a2(v15);
      if (v8)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = v5[6] + 40 * result;
      v10 = v15[0];
      v11 = v15[1];
      *(v9 + 32) = v16;
      *v9 = v10;
      *(v9 + 16) = v11;
      result = sub_17828(&v17, (v5[7] + 32 * result));
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
      v6 += 72;
      if (!--v2)
      {

        return v5;
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

uint64_t sub_17694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGSFCardView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_176F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_17760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_177C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_20A0(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

_OWORD *sub_17828(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_17900(uint64_t a1, uint64_t a2)
{
  v4 = sub_2389C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_17980(uint64_t a1, uint64_t a2)
{
  v4 = sub_2389C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for RGDisambiguationView()
{
  result = qword_36658;
  if (!qword_36658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_17A3C()
{
  result = sub_2389C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

char *sub_17AC4@<X0>(char *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result + 1;
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = *(sub_20A0(&qword_361F8, &qword_25FD0) + 48);
    v6 = sub_10BB8(v3);
    v7 = type metadata accessor for RGDisplayRepresentationView(0);
    v8 = v7[6];
    v9 = sub_2391C();
    (*(*(v9 - 8) + 16))(a2 + v8, &v4[v5], v9);
    *a2 = swift_getKeyPath();
    *(a2 + 8) = 0;
    sub_242FC();
    sub_10248(&qword_358B0, &type metadata accessor for Context);
    *(a2 + 16) = sub_23BDC();
    *(a2 + 24) = v10;
    *(a2 + v7[8]) = v6;
    v11 = v7[7];
    v12 = sub_238AC();
    v13 = *(*(v12 - 8) + 56);

    return v13(a2 + v11, 1, 1, v12);
  }

  return result;
}

uint64_t sub_17C34@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v27 = sub_242DC();
  v1 = *(v27 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v27);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_20A0(&qword_361A8, &unk_25C00);
  v5 = *(v25 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v25);
  v8 = &v24 - v7;
  v9 = sub_2391C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2388C();
  v15 = v14;
  v16 = *(v14 + 16);
  if (!v16)
  {
    *(swift_allocObject() + 16) = v14;
    sub_20A0(&qword_361C0, &qword_25B00);
    sub_100B4();
    sub_241EC();
LABEL_9:
    v20 = &enum case for ComponentStackBottomSpacing.default(_:);
    goto LABEL_10;
  }

  (*(v10 + 16))(v13, v14 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * (v16 - 1), v9);
  v17 = sub_238CC();
  if (v18 >> 60 == 15 && (v17 = sub_238FC(), v18 >> 60 == 15))
  {
    v19 = 0;
  }

  else
  {
    sub_4C38(v17, v18);
    v19 = 1;
  }

  (*(v10 + 8))(v13, v9);
  *(swift_allocObject() + 16) = v15;
  sub_20A0(&qword_361C0, &qword_25B00);
  sub_100B4();
  sub_241EC();
  if ((v19 & 1) == 0)
  {
    goto LABEL_9;
  }

  v20 = &enum case for ComponentStackBottomSpacing.none(_:);
LABEL_10:
  v21 = v27;
  (*(v1 + 104))(v4, *v20, v27);
  sub_3F18(&qword_361D8, &qword_361A8, &unk_25C00);
  v22 = v25;
  sub_23EFC();
  (*(v1 + 8))(v4, v21);
  return (*(v5 + 8))(v8, v22);
}

uint64_t sub_17FF8(uint64_t a1)
{
  sub_181AC(a1);
  swift_getKeyPath();
  sub_20A0(&qword_361E8, &unk_25B30);
  type metadata accessor for RGDisplayRepresentationView(0);
  sub_3F18(&qword_361F0, &qword_361E8, &unk_25B30);
  sub_10248(&qword_361D0, type metadata accessor for RGDisplayRepresentationView);
  return sub_2409C();
}

uint64_t sub_18118()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_18158@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFC();
  *a1 = result;
  return result;
}

void sub_181AC(uint64_t a1)
{
  v49 = sub_20A0(&qword_361F8, &qword_25FD0);
  v2 = *(v49 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v49);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v8 = &v40 - v7;
  v9 = *(a1 + 16);
  v10 = &_swiftEmptyArrayStorage;
  if (v9)
  {
    v11 = *(v2 + 80);
    v43 = v11;
    v44 = (v11 + 32) & ~v11;
    v12 = &_swiftEmptyArrayStorage + v44;
    v13 = 0;
    v14 = 0;
    v48 = sub_2391C();
    v15 = *(v48 - 8);
    v16 = *(v15 + 16);
    v46 = v15 + 16;
    v47 = v16;
    v17 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v45 = *(v15 + 72);
    v18 = &_swiftEmptyArrayStorage;
    v41 = v9;
    v42 = v2;
    while (1)
    {
      v20 = v48;
      v21 = *(v49 + 48);
      *v5 = v13;
      v47(&v5[v21], v17, v20);
      sub_184FC(v5, v8);
      if (v14)
      {
        v10 = v18;
        v19 = __OFSUB__(v14--, 1);
        if (v19)
        {
          goto LABEL_27;
        }
      }

      else
      {
        v22 = v18[3];
        if (((v22 >> 1) + 0x4000000000000000) < 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
          return;
        }

        v23 = v8;
        v24 = v22 & 0xFFFFFFFFFFFFFFFELL;
        if (v24 <= 1)
        {
          v25 = 1;
        }

        else
        {
          v25 = v24;
        }

        sub_20A0(&qword_36690, &qword_26008);
        v26 = *(v2 + 72);
        v27 = v44;
        v10 = swift_allocObject();
        v28 = j__malloc_size(v10);
        if (!v26)
        {
          goto LABEL_34;
        }

        v29 = v28 - v27;
        if (v28 - v27 == 0x8000000000000000 && v26 == -1)
        {
          goto LABEL_35;
        }

        v31 = v29 / v26;
        v10[2] = v25;
        v10[3] = 2 * (v29 / v26);
        v32 = v10 + v27;
        v33 = v18[3] >> 1;
        v34 = v33 * v26;
        if (v18[2])
        {
          if (v10 < v18 || v32 >= v18 + v44 + v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v10 != v18)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v18[2] = 0;
        }

        v12 = &v32[v34];
        v36 = (v31 & 0x7FFFFFFFFFFFFFFFLL) - v33;

        v8 = v23;
        v9 = v41;
        v2 = v42;
        v19 = __OFSUB__(v36, 1);
        v14 = v36 - 1;
        if (v19)
        {
LABEL_27:
          __break(1u);
          break;
        }
      }

      ++v13;
      sub_184FC(v8, v12);
      v12 += *(v2 + 72);
      v17 += v45;
      v18 = v10;
      if (v9 == v13)
      {
        goto LABEL_29;
      }
    }
  }

  v14 = 0;
LABEL_29:
  v37 = v10[3];
  if (v37 >= 2)
  {
    v38 = v37 >> 1;
    v19 = __OFSUB__(v38, v14);
    v39 = v38 - v14;
    if (v19)
    {
      goto LABEL_36;
    }

    v10[2] = v39;
  }
}

uint64_t sub_184A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_23BFC();
  *a1 = result;
  return result;
}

uint64_t sub_184FC(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_361F8, &qword_25FD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1856C()
{
  sub_20E8(&qword_361A8, &unk_25C00);
  sub_3F18(&qword_361D8, &qword_361A8, &unk_25C00);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_18604(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1864C(uint64_t result, int a2, int a3)
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

uint64_t sub_186B4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v1;

  return ControlView.init(control:controlType:)(v3, v2);
}

unint64_t sub_186F8()
{
  result = qword_36698;
  if (!qword_36698)
  {
    sub_2418C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36698);
  }

  return result;
}

void sub_187A0()
{
  sub_2391C();
  if (v0 <= 0x3F)
  {
    sub_1D9D8(319, &qword_36710, &type metadata accessor for SystemPromptResolution, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_18884();
      if (v2 <= 0x3F)
      {
        sub_188EC();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_18884()
{
  if (!qword_36718)
  {
    sub_2510(255, qword_35810, SAIntentGroupRunSiriKitExecutor_ptr);
    v0 = sub_244DC();
    if (!v1)
    {
      atomic_store(v0, &qword_36718);
    }
  }
}

void sub_188EC()
{
  if (!qword_36720)
  {
    v0 = sub_2404C();
    if (!v1)
    {
      atomic_store(v0, &qword_36720);
    }
  }
}

__n128 sub_1893C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_18948(uint64_t a1, int a2)
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

uint64_t sub_18990(uint64_t result, int a2, int a3)
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

uint64_t sub_189FC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v91 = a3;
  v92 = a4;
  v89 = a1;
  v90 = a2;
  v98 = a5;
  v95 = sub_20A0(&qword_369A8, &qword_26398);
  v6 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95);
  v97 = &v77 - v7;
  v86 = sub_20A0(&qword_369B0, &qword_263A0);
  v8 = *(*(v86 - 8) + 64);
  __chkstk_darwin(v86);
  v84 = &v77 - v9;
  v96 = sub_20A0(&qword_36900, &qword_26330);
  v10 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v88 = &v77 - v11;
  v81 = sub_237EC();
  v80 = *(v81 - 8);
  v12 = *(v80 + 64);
  __chkstk_darwin(v81);
  v79 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_20A0(&qword_36910, &qword_26338);
  v14 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v87 = &v77 - v15;
  v16 = sub_20A0(&qword_366A0, qword_260B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v77 - v18;
  v20 = sub_238AC();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  __chkstk_darwin(v20);
  v93 = &v77 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_23C6C();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  __chkstk_darwin(v24);
  v28 = &v77 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_2416C();
  v99 = *(v94 - 8);
  v29 = *(v99 + 64);
  __chkstk_darwin(v94);
  v82 = v30;
  v83 = &v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v33 = &v77 - v32;
  v34 = *v5;
  v35 = *(v5 + 8);
  v100 = v21;
  if ((v35 & 1) == 0)
  {

    sub_2448C();
    v36 = sub_23DEC();
    sub_23A7C();

    sub_23C5C();
    swift_getAtKeyPath();
    sub_1E098(v34, 0);
    (*(v25 + 8))(v28, v24);
  }

  v37 = *(v5 + 16);
  v38 = v99;
  if (v37)
  {
    v39 = v37;
    sub_4CA0(v89, v90);

    sub_2415C();
    v40 = type metadata accessor for RGDisplayRepresentationView(0);
    sub_177C0(v5 + *(v40 + 28), v19, &qword_366A0, qword_260B0);
    v41 = v100;
    if ((*(v100 + 48))(v19, 1, v20) == 1)
    {
      sub_6A44(v19, &qword_366A0, qword_260B0);
      v42 = *(v5 + *(v40 + 32));
      v43 = v94;
      if (v42)
      {
        v44 = v83;
        (*(v38 + 16))(v83, v33, v94);
        v45 = (*(v38 + 80) + 16) & ~*(v38 + 80);
        v46 = swift_allocObject();
        v92 = v33;
        v47 = v46;
        (*(v38 + 32))(v46 + v45, v44, v43);
        v48 = v42;
        v49 = v87;
        sub_2425C();
        v50 = v85;
        v51 = (v49 + *(v85 + 36));
        type metadata accessor for CommandThrottle();
        sub_1DD20(&qword_358A0, type metadata accessor for CommandThrottle);
        *v51 = sub_23BDC();
        v51[1] = v52;
        v53 = (v49 + v50[10]);
        sub_242FC();
        sub_1DD20(&qword_358B0, &type metadata accessor for Context);
        *v53 = sub_23BDC();
        v53[1] = v54;
        *(v49 + v50[11]) = v48;
        sub_20A0(&qword_369B8, &qword_263A8);
        swift_storeEnumTagMultiPayload();
        v55 = (v49 + v50[12]);
        *v55 = sub_1E0BC;
        v55[1] = v47;
        sub_177C0(v49, v84, &qword_36910, &qword_26338);
        swift_storeEnumTagMultiPayload();
        sub_3F18(&qword_36908, &qword_36910, &qword_26338);
        v56 = v88;
        sub_23D1C();
        sub_177C0(v56, v97, &qword_36900, &qword_26330);
        swift_storeEnumTagMultiPayload();
        sub_1DC70();
        sub_1DD20(&qword_36918, &type metadata accessor for PluginView);
        sub_23D1C();

        sub_6A44(v56, &qword_36900, &qword_26330);
        v57 = v49;
        v38 = v99;
        v33 = v92;
        sub_6A44(v57, &qword_36910, &qword_26338);
      }

      else
      {
        (*(v38 + 16))(v97, v33, v94);
        swift_storeEnumTagMultiPayload();
        sub_1DC70();
        sub_1DD20(&qword_36918, &type metadata accessor for PluginView);
        sub_23D1C();
      }
    }

    else
    {
      v58 = *(v41 + 32);
      v59 = v93;
      v78 = v20;
      v58(v93, v19, v20);
      v60 = v79;
      (*(v41 + 16))(v79, v59, v20);
      v61 = v80;
      v62 = v81;
      (*(v80 + 104))(v60, enum case for MessagePayload.systemPromptResolved(_:), v81);
      v63 = v83;
      v43 = v94;
      (*(v38 + 16))(v83, v33, v94);
      v64 = (*(v38 + 80) + 16) & ~*(v38 + 80);
      v91 = swift_allocObject();
      (*(v38 + 32))(v91 + v64, v63, v43);
      v65 = v87;
      sub_2425C();
      v66 = v85;
      v67 = *(v85 + 36);
      v92 = v33;
      v68 = (v65 + v67);
      type metadata accessor for CommandThrottle();
      sub_1DD20(&qword_358A0, type metadata accessor for CommandThrottle);
      *v68 = sub_23BDC();
      v68[1] = v69;
      v70 = (v65 + v66[10]);
      sub_242FC();
      sub_1DD20(&qword_358B0, &type metadata accessor for Context);
      *v70 = sub_23BDC();
      v70[1] = v71;
      (*(v61 + 32))(v65 + v66[11], v60, v62);
      sub_20A0(&qword_369B8, &qword_263A8);
      swift_storeEnumTagMultiPayload();
      v72 = (v65 + v66[12]);
      v73 = v91;
      *v72 = sub_1EC4C;
      v72[1] = v73;
      sub_177C0(v65, v84, &qword_36910, &qword_26338);
      swift_storeEnumTagMultiPayload();
      sub_3F18(&qword_36908, &qword_36910, &qword_26338);
      v74 = v88;
      sub_23D1C();
      sub_177C0(v74, v97, &qword_36900, &qword_26330);
      swift_storeEnumTagMultiPayload();
      sub_1DC70();
      sub_1DD20(&qword_36918, &type metadata accessor for PluginView);
      sub_23D1C();
      v33 = v92;
      sub_6A44(v74, &qword_36900, &qword_26330);
      sub_6A44(v65, &qword_36910, &qword_26338);
      (*(v100 + 8))(v93, v78);
    }

    return (*(v38 + 8))(v33, v43);
  }

  else
  {
    v76 = *(v5 + 24);
    sub_242FC();
    sub_1DD20(&qword_358B0, &type metadata accessor for Context);
    result = sub_23BCC();
    __break(1u);
  }

  return result;
}

uint64_t sub_196BC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v79 = a3;
  v77 = sub_20A0(&qword_369C0, &qword_263B0);
  v7 = *(*(v77 - 8) + 64);
  __chkstk_darwin(v77);
  v75 = &v62 - v8;
  v68 = sub_20A0(&qword_369C8, &qword_263B8);
  v9 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68);
  v67 = &v62 - v10;
  v78 = sub_20A0(&qword_36938, &qword_26348);
  v11 = *(*(v78 - 8) + 64);
  __chkstk_darwin(v78);
  v69 = &v62 - v12;
  v73 = sub_237EC();
  v65 = *(v73 - 8);
  v13 = *(v65 + 64);
  __chkstk_darwin(v73);
  v64 = &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_20A0(&qword_36948, &unk_26350);
  v15 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v71 = &v62 - v16;
  v17 = sub_20A0(&qword_366A0, qword_260B0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v62 - v19;
  v21 = sub_238AC();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v74 = &v62 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = sub_20A0(&qword_36510, &qword_25E60);
  v70 = *(v76 - 8);
  v25 = *(v70 + 64);
  __chkstk_darwin(v76);
  v26 = &v62 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v29 = &v62 - v28;
  sub_4CA0(a1, a2);
  v30 = v29;
  sub_6C48(a1, a2, v29);
  v31 = type metadata accessor for RGDisplayRepresentationView(0);
  v32 = v4;
  sub_177C0(v4 + *(v31 + 28), v20, &qword_366A0, qword_260B0);
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    v34 = v70;
    v33 = v71;
    v35 = v72;
    sub_6A44(v20, &qword_366A0, qword_260B0);
    v36 = *(v32 + *(v31 + 32));
    if (v36)
    {
      v66 = v30;
      sub_177C0(v30, v26, &qword_36510, &qword_25E60);
      v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
      v38 = swift_allocObject();
      sub_1E0E0(v26, v38 + v37);
      v39 = v36;
      sub_2425C();
      v40 = (v33 + v35[9]);
      type metadata accessor for CommandThrottle();
      sub_1DD20(&qword_358A0, type metadata accessor for CommandThrottle);
      *v40 = sub_23BDC();
      v40[1] = v41;
      v42 = (v33 + v35[10]);
      sub_242FC();
      sub_1DD20(&qword_358B0, &type metadata accessor for Context);
      *v42 = sub_23BDC();
      v42[1] = v43;
      *(v33 + v35[11]) = v39;
      sub_20A0(&qword_369D0, &qword_263C0);
      swift_storeEnumTagMultiPayload();
      v44 = (v33 + v35[12]);
      *v44 = sub_1E150;
      v44[1] = v38;
      sub_177C0(v33, v67, &qword_36948, &unk_26350);
      swift_storeEnumTagMultiPayload();
      sub_3F18(&qword_36940, &qword_36948, &unk_26350);
      v45 = v69;
      sub_23D1C();
      sub_177C0(v45, v75, &qword_36938, &qword_26348);
      swift_storeEnumTagMultiPayload();
      sub_1DDF4();
      sub_1652C();
      sub_23D1C();

      sub_6A44(v45, &qword_36938, &qword_26348);
      v30 = v66;
      sub_6A44(v33, &qword_36948, &unk_26350);
    }

    else
    {
      sub_177C0(v30, v75, &qword_36510, &qword_25E60);
      swift_storeEnumTagMultiPayload();
      sub_1DDF4();
      sub_1652C();
      sub_23D1C();
    }
  }

  else
  {
    v46 = v22;
    v47 = *(v22 + 32);
    v48 = v74;
    v63 = v21;
    v47(v74, v20, v21);
    v49 = v64;
    (*(v22 + 16))(v64, v48, v21);
    v50 = v65;
    (*(v65 + 104))(v49, enum case for MessagePayload.systemPromptResolved(_:), v73);
    v66 = v30;
    sub_177C0(v30, v26, &qword_36510, &qword_25E60);
    v51 = (*(v70 + 80) + 16) & ~*(v70 + 80);
    v52 = swift_allocObject();
    sub_1E0E0(v26, v52 + v51);
    v53 = v71;
    sub_2425C();
    v54 = v72;
    v55 = (v53 + *(v72 + 36));
    type metadata accessor for CommandThrottle();
    sub_1DD20(&qword_358A0, type metadata accessor for CommandThrottle);
    *v55 = sub_23BDC();
    v55[1] = v56;
    v57 = (v53 + v54[10]);
    sub_242FC();
    sub_1DD20(&qword_358B0, &type metadata accessor for Context);
    *v57 = sub_23BDC();
    v57[1] = v58;
    (*(v50 + 32))(v53 + v54[11], v49, v73);
    sub_20A0(&qword_369D0, &qword_263C0);
    swift_storeEnumTagMultiPayload();
    v59 = (v53 + v54[12]);
    *v59 = sub_1EC50;
    v59[1] = v52;
    sub_177C0(v53, v67, &qword_36948, &unk_26350);
    swift_storeEnumTagMultiPayload();
    sub_3F18(&qword_36940, &qword_36948, &unk_26350);
    v60 = v69;
    sub_23D1C();
    sub_177C0(v60, v75, &qword_36938, &qword_26348);
    swift_storeEnumTagMultiPayload();
    sub_1DDF4();
    sub_1652C();
    sub_23D1C();
    sub_6A44(v60, &qword_36938, &qword_26348);
    sub_6A44(v53, &qword_36948, &unk_26350);
    (*(v46 + 8))(v74, v63);
    v30 = v66;
  }

  return sub_6A44(v30, &qword_36510, &qword_25E60);
}

uint64_t sub_1A0E0@<X0>(uint64_t a1@<X8>)
{
  v108 = a1;
  v107 = sub_20A0(&qword_369D8, &qword_263C8);
  v1 = *(*(v107 - 8) + 64);
  __chkstk_darwin(v107);
  v106 = &v89 - v2;
  v96 = sub_20A0(&qword_369E0, &qword_263D0);
  v3 = *(*(v96 - 8) + 64);
  __chkstk_darwin(v96);
  v95 = &v89 - v4;
  v109 = sub_20A0(&qword_36968, &qword_26368);
  v5 = *(*(v109 - 8) + 64);
  __chkstk_darwin(v109);
  v97 = &v89 - v6;
  v7 = sub_237EC();
  v91 = *(v7 - 8);
  v92 = v7;
  v8 = *(v91 + 64);
  __chkstk_darwin(v7);
  v90 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_20A0(&qword_36978, &qword_26370);
  v10 = *(*(v93 - 8) + 64);
  __chkstk_darwin(v93);
  v94 = &v89 - v11;
  v12 = sub_20A0(&qword_366A0, qword_260B0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v104 = &v89 - v14;
  v15 = sub_238AC();
  v110 = *(v15 - 8);
  v111 = v15;
  v16 = v110[8];
  __chkstk_darwin(v15);
  v105 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_20A0(&qword_369E8, &qword_263D8);
  v18 = *(*(v101 - 8) + 64);
  __chkstk_darwin(v101);
  v100 = &v89 - v19;
  v20 = sub_2369C();
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v22 = sub_2423C();
  v112 = *(v22 - 8);
  v113 = v22;
  v23 = *(v112 + 64);
  __chkstk_darwin(v22);
  v102 = v24;
  v103 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v27 = &v89 - v26;
  v99 = type metadata accessor for RGDisplayRepresentationView(0);
  v28 = *(v99 + 24);
  sub_238EC();
  v29 = sub_23E8C();
  v31 = v30;
  v33 = v32;
  v35 = v34;
  KeyPath = swift_getKeyPath();
  v136 = v29;
  v137 = v31;
  v37 = v33 & 1;
  v138 = v33 & 1;
  v139 = v35;
  v140 = KeyPath;
  v141 = 1;
  v142 = 0;
  sub_20A0(&qword_359C8, &unk_26410);
  sub_6B00();
  v38 = sub_23EAC();
  sub_6BB8(v29, v31, v37);
  v39 = v27;

  v139 = &type metadata for AnyView;
  v140 = &protocol witness table for AnyView;
  v136 = v38;
  v40 = v98;
  sub_4D80(v135);
  v134 = 0;
  v132 = 0u;
  v133 = 0u;
  v131 = 0;
  v129 = 0u;
  v130 = 0u;
  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  v125 = 0;
  v123 = 0u;
  v124 = 0u;
  v122 = 0;
  v120 = 0u;
  v121 = 0u;
  v119 = 0;
  v117 = 0u;
  v118 = 0u;
  v41 = v100;
  sub_504C(v100);
  sub_1E424(&qword_369F0, &qword_369E8, &qword_263D8, sub_1E4A0);
  v42 = sub_23EAC();
  sub_6A44(v41, &qword_369E8, &qword_263D8);
  v115 = &type metadata for AnyView;
  v116 = &protocol witness table for AnyView;
  v114 = v42;
  sub_2422C();
  v43 = v99;
  v44 = v40;
  v45 = v104;
  sub_177C0(v40 + *(v99 + 28), v104, &qword_366A0, qword_260B0);
  v46 = v110;
  v47 = v45;
  v48 = v45;
  v49 = v111;
  if ((v110[6])(v48, 1) == 1)
  {
    v50 = v103;
    v52 = v112;
    v51 = v113;
    sub_6A44(v47, &qword_366A0, qword_260B0);
    v53 = *(v44 + *(v43 + 32));
    if (v53)
    {
      v54 = v50;
      v55 = v51;
      (*(v52 + 16))(v50, v39, v51);
      v56 = (*(v52 + 80) + 16) & ~*(v52 + 80);
      v57 = swift_allocObject();
      (*(v52 + 32))(v57 + v56, v54, v55);
      v58 = v53;
      v110 = v58;
      v59 = v94;
      sub_2425C();
      v60 = v93;
      v61 = *(v93 + 36);
      v111 = v39;
      v62 = (v59 + v61);
      type metadata accessor for CommandThrottle();
      sub_1DD20(&qword_358A0, type metadata accessor for CommandThrottle);
      *v62 = sub_23BDC();
      v62[1] = v63;
      v64 = (v59 + v60[10]);
      sub_242FC();
      sub_1DD20(&qword_358B0, &type metadata accessor for Context);
      *v64 = sub_23BDC();
      v64[1] = v65;
      *(v59 + v60[11]) = v58;
      sub_20A0(&qword_36A08, &qword_26438);
      swift_storeEnumTagMultiPayload();
      v66 = (v59 + v60[12]);
      *v66 = sub_1E544;
      v66[1] = v57;
      sub_177C0(v59, v95, &qword_36978, &qword_26370);
      swift_storeEnumTagMultiPayload();
      sub_3F18(&qword_36970, &qword_36978, &qword_26370);
      v67 = v97;
      sub_23D1C();
      sub_177C0(v67, v106, &qword_36968, &qword_26368);
      swift_storeEnumTagMultiPayload();
      sub_1DF60();
      sub_1DD20(&qword_36980, &type metadata accessor for SimpleItemRichView);
      v68 = v113;
      sub_23D1C();

      v39 = v111;
      sub_6A44(v67, &qword_36968, &qword_26368);
      sub_6A44(v59, &qword_36978, &qword_26370);
    }

    else
    {
      v68 = v51;
      (*(v52 + 16))(v106, v39, v51);
      swift_storeEnumTagMultiPayload();
      sub_1DF60();
      sub_1DD20(&qword_36980, &type metadata accessor for SimpleItemRichView);
      sub_23D1C();
    }
  }

  else
  {
    v69 = v105;
    (v46[4])(v105, v47, v49);
    v70 = v90;
    (v46[2])(v90, v69, v49);
    v72 = v91;
    v71 = v92;
    (*(v91 + 104))(v70, enum case for MessagePayload.systemPromptResolved(_:), v92);
    v73 = v112;
    v74 = v113;
    v75 = v103;
    (*(v112 + 16))(v103, v39, v113);
    v76 = v73;
    v77 = (*(v73 + 80) + 16) & ~*(v73 + 80);
    v78 = swift_allocObject();
    (*(v76 + 32))(v78 + v77, v75, v74);
    v79 = v94;
    sub_2425C();
    v80 = v93;
    v81 = (v79 + *(v93 + 36));
    type metadata accessor for CommandThrottle();
    sub_1DD20(&qword_358A0, type metadata accessor for CommandThrottle);
    *v81 = sub_23BDC();
    v81[1] = v82;
    v83 = (v79 + v80[10]);
    sub_242FC();
    sub_1DD20(&qword_358B0, &type metadata accessor for Context);
    *v83 = sub_23BDC();
    v83[1] = v84;
    (*(v72 + 32))(v79 + v80[11], v70, v71);
    sub_20A0(&qword_36A08, &qword_26438);
    swift_storeEnumTagMultiPayload();
    v85 = (v79 + v80[12]);
    *v85 = sub_1EC54;
    v85[1] = v78;
    sub_177C0(v79, v95, &qword_36978, &qword_26370);
    swift_storeEnumTagMultiPayload();
    sub_3F18(&qword_36970, &qword_36978, &qword_26370);
    v86 = v97;
    sub_23D1C();
    sub_177C0(v86, v106, &qword_36968, &qword_26368);
    swift_storeEnumTagMultiPayload();
    sub_1DF60();
    sub_1DD20(&qword_36980, &type metadata accessor for SimpleItemRichView);
    v87 = v113;
    sub_23D1C();
    sub_6A44(v86, &qword_36968, &qword_26368);
    sub_6A44(v79, &qword_36978, &qword_26370);
    (v110[1])(v105, v111);
    v68 = v87;
    v52 = v112;
  }

  return (*(v52 + 8))(v39, v68);
}

uint64_t sub_1AE1C@<X0>(uint64_t a1@<X8>)
{
  v54 = sub_20A0(&qword_36928, &qword_26340);
  v2 = *(*(v54 - 8) + 64);
  __chkstk_darwin(v54);
  v52 = &v47 - v3;
  v59 = sub_20A0(&qword_36950, &qword_26360);
  v4 = *(*(v59 - 8) + 64);
  __chkstk_darwin(v59);
  v49 = &v47 - v5;
  v60 = sub_20A0(&qword_36990, &qword_26380);
  v51 = *(v60 - 8);
  v6 = *(v51 + 64);
  __chkstk_darwin(v60);
  v50 = &v47 - v7;
  v56 = sub_20A0(&qword_36998, &qword_26388);
  v8 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56);
  v58 = &v47 - v9;
  v10 = sub_20A0(&qword_369A0, &qword_26390);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v47 - v12;
  v57 = sub_20A0(&qword_368E0, &qword_26320);
  v14 = *(*(v57 - 8) + 64);
  __chkstk_darwin(v57);
  v53 = &v47 - v15;
  v16 = sub_20A0(&qword_368F0, &qword_26328);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v19 = &v47 - v18;
  v20 = *(type metadata accessor for RGDisplayRepresentationView(0) + 24);
  v21 = sub_238BC();
  v55 = a1;
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = sub_238CC();
    if (v26 >> 60 != 15)
    {
      v44 = v26;
      v48 = v25;
      sub_189FC(v25, v26, v23, v24, v19);

      v39 = &qword_368F0;
      v40 = &qword_26328;
      sub_177C0(v19, v13, &qword_368F0, &qword_26328);
      swift_storeEnumTagMultiPayload();
      sub_1DBB4();
      sub_1DD68();
      v45 = v53;
      sub_23D1C();
      sub_177C0(v45, v58, &qword_368E0, &qword_26320);
      swift_storeEnumTagMultiPayload();
      sub_1DB28();
      v46 = sub_1DEA4();
      v61 = v59;
      v62 = v46;
      swift_getOpaqueTypeConformance2();
      sub_23D1C();
      sub_4C38(v48, v44);
      sub_6A44(v45, &qword_368E0, &qword_26320);
      v43 = v19;
      return sub_6A44(v43, v39, v40);
    }
  }

  v27 = sub_238FC();
  if (v28 >> 60 == 15)
  {
    v29 = v49;
    sub_1A0E0(v49);
    v30 = sub_1DEA4();
    v31 = v50;
    v32 = v59;
    sub_23EEC();
    sub_6A44(v29, &qword_36950, &qword_26360);
    v33 = v51;
    v34 = v60;
    (*(v51 + 16))(v58, v31, v60);
    swift_storeEnumTagMultiPayload();
    sub_1DB28();
    v61 = v32;
    v62 = v30;
    swift_getOpaqueTypeConformance2();
    sub_23D1C();
    return (*(v33 + 8))(v31, v34);
  }

  v36 = v52;
  v37 = v27;
  v38 = v28;
  sub_196BC(v27, v28, v52);
  v39 = &qword_36928;
  v40 = &qword_26340;
  sub_177C0(v36, v13, &qword_36928, &qword_26340);
  swift_storeEnumTagMultiPayload();
  sub_1DBB4();
  sub_1DD68();
  v41 = v53;
  sub_23D1C();
  sub_177C0(v41, v58, &qword_368E0, &qword_26320);
  swift_storeEnumTagMultiPayload();
  sub_1DB28();
  v42 = sub_1DEA4();
  v61 = v59;
  v62 = v42;
  swift_getOpaqueTypeConformance2();
  sub_23D1C();
  sub_4C38(v37, v38);
  sub_6A44(v41, &qword_368E0, &qword_26320);
  v43 = v36;
  return sub_6A44(v43, v39, v40);
}

id sub_1B494@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v6 = sub_2371C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_20A0(&qword_368B8, &qword_26310);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v22 - v13;
  sub_1AE1C(&v22 - v13);
  (*(v7 + 104))(v10, enum case for SeparatorStyle.insetLeading(_:), v6);
  sub_1E424(&qword_368C0, &qword_368B8, &qword_26310, sub_1DA58);
  sub_23ECC();
  (*(v7 + 8))(v10, v6);
  sub_1E010(v14);
  v15 = a1[6];
  v16 = a1[7];
  v23 = *(v2 + a1[8]);
  v17 = a2 + *(sub_20A0(&qword_36988, &qword_26378) + 36);
  v18 = sub_2391C();
  (*(*(v18 - 8) + 16))(v17, v4 + v15, v18);
  v19 = type metadata accessor for RGDisplayRepresentationDebugIndicatorModifier(0);
  sub_177C0(v4 + v16, v17 + *(v19 + 20), &qword_366A0, qword_260B0);
  v20 = v23;
  *(v17 + *(v19 + 24)) = v23;

  return v20;
}

uint64_t sub_1B700@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_20A0(&qword_367E0, &qword_26280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v43 - v12;
  v49 = a1;
  v50 = a2;
  sub_6AA4();

  v14 = sub_23E9C();
  v16 = v15;
  LOBYTE(a1) = v17;
  v18 = sub_23E6C();
  v45 = v19;
  v46 = v18;
  v44 = v20;
  v47 = v21;
  sub_6BB8(v14, v16, a1 & 1);

  v49 = a3;
  v50 = a4;

  v22 = sub_23E9C();
  v24 = v23;
  LOBYTE(v16) = v25;
  v26 = sub_23E3C();
  (*(*(v26 - 8) + 56))(v13, 1, 1, v26);
  sub_23E4C();
  sub_6A44(v13, &qword_367E0, &qword_26280);
  v27 = sub_23E7C();
  v29 = v28;
  v31 = v30;

  sub_6BB8(v22, v24, v16 & 1);

  v32 = sub_23E5C();
  v34 = v33;
  LOBYTE(v24) = v35;
  v37 = v36;
  sub_6BB8(v27, v29, v31 & 1);

  v38 = v44 & 1;
  v48 = v44 & 1;
  LOBYTE(v49) = v44 & 1;
  LOBYTE(v27) = v24 & 1;
  v51 = v24 & 1;
  v40 = v45;
  v39 = v46;
  *a5 = v46;
  *(a5 + 8) = v40;
  *(a5 + 16) = v38;
  *(a5 + 24) = v47;
  *(a5 + 32) = v32;
  *(a5 + 40) = v34;
  *(a5 + 48) = v27;
  *(a5 + 56) = v37;
  v41 = v39;
  sub_1D4E8(v39, v40, v38);

  sub_1D4E8(v32, v34, v27);

  sub_6BB8(v32, v34, v27);

  sub_6BB8(v41, v40, v48);
}

__n128 sub_1B9C4@<Q0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = sub_23CBC();
  sub_1B700(v3, v4, v6, v5, v10);
  *&v9[55] = v10[3];
  *&v9[39] = v10[2];
  *&v9[23] = v10[1];
  *&v9[7] = v10[0];
  *(a1 + 33) = *&v9[16];
  result = *&v9[32];
  *(a1 + 49) = *&v9[32];
  *(a1 + 65) = *&v9[48];
  *a1 = v7;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 80) = *&v9[63];
  *(a1 + 17) = *v9;
  return result;
}

uint64_t sub_1BA8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v53 = a2;
  v47 = sub_23D4C();
  v55 = *(v47 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v47);
  v46 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  v6 = v5 - 8;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v5);
  v44 = v9;
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_20A0(&qword_35428, &qword_26200);
  v52 = *(v48 - 8);
  v11 = *(v52 + 64);
  __chkstk_darwin(v48);
  v54 = &v41 - v12;
  v51 = sub_20A0(&qword_36770, &qword_26208);
  v50 = *(v51 - 8);
  v13 = *(v50 + 64);
  __chkstk_darwin(v51);
  v49 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v45 = &v41 - v16;
  v17 = sub_23FCC();
  sub_240AC();
  sub_23B6C();
  v58 = v17;
  v59 = v64;
  v60 = v65;
  v61 = v66;
  v62 = v67;
  v63 = v68;
  sub_1CD24(a1, v10);
  v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v19 = swift_allocObject();
  sub_1CD8C(v10, v19 + v18);
  v42 = sub_20A0(&qword_35438, &unk_26210);
  v20 = sub_2130();
  sub_23F6C();

  v21 = a1 + *(v6 + 36);
  v22 = *v21;
  v23 = *(v21 + 8);
  v56 = v22;
  v57 = v23;
  sub_20A0(&qword_36768, &qword_261F8);
  sub_2403C();
  v43 = v60;
  sub_240BC();
  v24 = v46;
  *v46 = v25;
  v24[1] = v26;
  v27 = v47;
  (*(v55 + 104))(v24, enum case for PopoverAttachmentAnchor.point(_:), v47);
  sub_1CD24(a1, v10);
  v28 = swift_allocObject();
  sub_1CD8C(v10, v28 + v18);
  sub_23E1C();
  sub_20A0(&qword_35430, &qword_25330);
  v58 = v42;
  v59 = v20;
  swift_getOpaqueTypeConformance2();
  sub_21B4();
  v29 = v48;
  v30 = v45;
  v31 = v54;
  sub_23F5C();

  (*(v55 + 8))(v24, v27);
  (*(v52 + 8))(v31, v29);
  v32 = v50;
  v33 = *(v50 + 16);
  v34 = v49;
  v35 = v51;
  v33(v49, v30, v51);
  v36 = v53;
  *v53 = 0;
  *(v36 + 8) = 1;
  v37 = v36;
  v38 = sub_20A0(&qword_36778, &qword_26228);
  v33(&v37[*(v38 + 48)], v34, v35);
  v39 = *(v32 + 8);
  v39(v30, v35);
  return (v39)(v34, v35);
}

double sub_1C0A0@<D0>(uint64_t a1@<X8>)
{
  sub_23DFC();
  sub_20A0(&qword_36780, &qword_26230);
  sub_3F18(&qword_36788, &qword_36780, &qword_26230);
  sub_23B0C();
  v2 = sub_23E0C();
  v3 = a1 + *(sub_20A0(&qword_35430, &qword_25330) + 36);
  *v3 = v2;
  result = 0.0;
  *(v3 + 8) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 40) = 1;
  return result;
}

uint64_t sub_1C198@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20A0(&qword_36790, &qword_26238);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v16 - v9;
  *v10 = sub_23C7C();
  *(v10 + 1) = 0;
  v10[16] = 1;
  v11 = sub_20A0(&qword_36798, &qword_26240);
  sub_1C538(a1, &v10[*(v11 + 44)]);
  v17 = sub_23CBC();
  v30 = 1;
  sub_1C8FC(a1, &v26);
  v35 = *&v27[48];
  v36 = *&v27[64];
  v37 = *&v27[80];
  v38 = *&v27[96];
  v31 = v26;
  v32 = *v27;
  v33 = *&v27[16];
  v34 = *&v27[32];
  v39[0] = v26;
  v39[1] = *v27;
  v39[2] = *&v27[16];
  v39[3] = *&v27[32];
  v39[4] = *&v27[48];
  v39[5] = *&v27[64];
  v39[6] = *&v27[80];
  v39[7] = *&v27[96];
  sub_177C0(&v31, v25, &qword_367A0, &qword_26248);
  sub_6A44(v39, &qword_367A0, &qword_26248);
  *&v29[71] = v35;
  *&v29[87] = v36;
  *&v29[103] = v37;
  *&v29[119] = v38;
  *&v29[7] = v31;
  *&v29[23] = v32;
  *&v29[39] = v33;
  *&v29[55] = v34;
  v12 = v30;
  sub_240AC();
  sub_23BBC();
  sub_177C0(v10, v7, &qword_36790, &qword_26238);
  sub_177C0(v7, a2, &qword_36790, &qword_26238);
  v13 = *(sub_20A0(&qword_367A8, &qword_26250) + 48);
  *(&v25[12] + 1) = *&v29[80];
  *(&v25[14] + 1) = *&v29[96];
  *(&v25[16] + 1) = *&v29[112];
  *(&v25[4] + 1) = *&v29[16];
  *(&v25[6] + 1) = *&v29[32];
  *(&v25[8] + 1) = *&v29[48];
  *(&v25[10] + 1) = *&v29[64];
  *(&v25[2] + 1) = *v29;
  *&v25[25] = v21;
  *&v25[27] = v22;
  *&v25[29] = v23;
  *&v25[31] = v24;
  *&v25[19] = v18;
  *&v25[21] = v19;
  v14 = v17;
  v25[0] = v17;
  v25[1] = 0;
  LOBYTE(v25[2]) = v12;
  v25[18] = *&v29[127];
  *&v25[23] = v20;
  memcpy((a2 + v13), v25, 0x108uLL);
  sub_177C0(v25, &v26, &qword_367B0, &qword_26258);
  sub_6A44(v10, &qword_36790, &qword_26238);
  *&v27[81] = *&v29[80];
  *&v27[97] = *&v29[96];
  *v28 = *&v29[112];
  *&v27[17] = *&v29[16];
  *&v27[33] = *&v29[32];
  *&v27[49] = *&v29[48];
  *&v27[65] = *&v29[64];
  *&v27[1] = *v29;
  *&v28[71] = v21;
  *&v28[87] = v22;
  *&v28[103] = v23;
  *&v28[119] = v24;
  *&v28[23] = v18;
  *&v28[39] = v19;
  v26 = v14;
  v27[0] = v12;
  *&v28[15] = *&v29[127];
  *&v28[55] = v20;
  sub_6A44(&v26, &qword_367B0, &qword_26258);
  return sub_6A44(v7, &qword_36790, &qword_26238);
}

uint64_t sub_1C538@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v31 = a2;
  v3 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  __chkstk_darwin(v3 - 8);
  v5 = sub_20A0(&qword_367C0, &qword_26268);
  v6 = *(v5 - 8);
  v7 = v6[8];
  __chkstk_darwin(v5);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v28 - v10;
  v12 = sub_23C8C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_1CD24(a1, &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v29 + 80) + 16) & ~*(v29 + 80);
  v20 = swift_allocObject();
  sub_1CD8C(&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19);
  v32 = v12;
  v33 = v14;
  v34 = v16 & 1;
  v35 = v18;
  v36 = 0x6B72616D78;
  v37 = 0xE500000000000000;
  sub_20A0(&qword_367C8, &qword_26270);
  sub_3F18(&qword_367D0, &qword_367C8, &qword_26270);
  sub_2405C();

  v21 = v6[2];
  v22 = v30;
  v21(v30, v11, v5);
  v23 = v31;
  *v31 = 0;
  *(v23 + 8) = 1;
  v24 = v23;
  v25 = sub_20A0(&qword_367D8, &qword_26278);
  v21(&v24[*(v25 + 48)], v22, v5);
  v26 = v6[1];
  v26(v11, v5);
  return (v26)(v22, v5);
}

uint64_t sub_1C850(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0) + 28));
  v2 = *v1;
  v3 = *(v1 + 1);

  sub_20A0(&qword_36768, &qword_261F8);
  sub_2401C();
  sub_2402C();
}

uint64_t sub_1C8FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_20A0(&qword_366A0, qword_260B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v24[-v6];
  v8 = sub_2391C();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  (*(v12 + 16))(&v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)], a1, v8, v10);
  v13 = sub_2436C();
  v15 = v14;
  v16 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  sub_177C0(a1 + *(v16 + 20), v7, &qword_366A0, qword_260B0);
  v17 = sub_2436C();
  v19 = v18;
  v25 = *(a1 + *(v16 + 24));
  v20 = v25;
  sub_20A0(&qword_367B8, &qword_26260);
  v21 = sub_2436C();
  v24[16] = 1;
  v24[8] = 1;
  *a2 = 0xD000000000000015;
  *(a2 + 8) = 0x8000000000026F00;
  *(a2 + 16) = v13;
  *(a2 + 24) = v15;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  strcpy((a2 + 48), "systemCommand");
  *(a2 + 62) = -4864;
  *(a2 + 64) = v17;
  *(a2 + 72) = v19;
  *(a2 + 80) = 0;
  *(a2 + 88) = 1;
  strcpy((a2 + 96), "siriKitCommand");
  *(a2 + 111) = -18;
  *(a2 + 112) = v21;
  *(a2 + 120) = v22;
}

uint64_t sub_1CB74(uint64_t a1)
{
  v1 = (a1 + *(type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0) + 28));
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_20A0(&qword_36768, &qword_261F8);
  return sub_2402C();
}

uint64_t sub_1CBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1 - 8);
  *a2 = sub_23C7C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v6 = sub_20A0(&qword_36758, &qword_261E8);
  sub_1BA8C(v2, (a2 + *(v6 + 44)));
  sub_1CD24(v2, &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_1CD8C(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7);
  result = sub_20A0(&qword_36760, &qword_261F0);
  v10 = (a2 + *(result + 36));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = sub_1CDF0;
  v10[3] = v8;
  return result;
}

uint64_t sub_1CD24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CD8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CDF0()
{
  v1 = *(type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1CB74(v2);
}

uint64_t sub_1CE50()
{
  v1 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;
  v6 = sub_2391C();
  (*(*(v6 - 8) + 8))(v0 + v3, v6);
  v7 = v1[5];
  v8 = sub_238AC();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(v0 + v3 + v7, 1, v8))
  {
    (*(v9 + 8))(v5 + v7, v8);
  }

  v10 = *(v5 + v1[7] + 8);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

double sub_1CFD0@<D0>(uint64_t a1@<X8>)
{
  v2 = *(*(type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0) - 8) + 80);

  return sub_1C0A0(a1);
}

uint64_t sub_1D0A0(uint64_t a1)
{
  v2 = sub_20A0(&qword_36AD0, qword_264D8);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v17[-v4];
  v6 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2510(0, &qword_36AD8, NSUserDefaults_ptr);
  if (sub_244AC())
  {
    v10 = sub_2391C();
    (*(*(v10 - 8) + 16))(v9, a1, v10);
    v11 = type metadata accessor for RGDisplayRepresentationDebugIndicatorModifier(0);
    sub_177C0(a1 + *(v11 + 20), &v9[v6[5]], &qword_366A0, qword_260B0);
    v12 = *(a1 + *(v11 + 24));
    *&v9[v6[6]] = v12;
    v13 = &v9[v6[7]];
    v17[15] = 0;
    v14 = v12;
    sub_2400C();
    v15 = v18;
    *v13 = v17[16];
    *(v13 + 1) = v15;
    sub_1CD24(v9, v5);
    swift_storeEnumTagMultiPayload();
    sub_1DD20(&qword_36AE0, type metadata accessor for RGDisplayRepresentationDebugIndicatorView);
    sub_23D1C();
    return sub_1EAE0(v9);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
    sub_1DD20(&qword_36AE0, type metadata accessor for RGDisplayRepresentationDebugIndicatorView);
    return sub_23D1C();
  }
}

uint64_t sub_1D364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_240AC();
  v7 = v6;
  v8 = a2 + *(sub_20A0(&qword_36AB8, &qword_264C0) + 36);
  sub_1D0A0(v2);
  v9 = (v8 + *(sub_20A0(&qword_36AC0, &qword_264C8) + 36));
  *v9 = v5;
  v9[1] = v7;
  v10 = sub_20A0(&qword_36AC8, &qword_264D0);
  v11 = *(*(v10 - 8) + 16);

  return v11(a2, a1, v10);
}

uint64_t sub_1D440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return Label<>.init(_:systemImage:)(a1, a2, a3, a4, a5, a6);
}