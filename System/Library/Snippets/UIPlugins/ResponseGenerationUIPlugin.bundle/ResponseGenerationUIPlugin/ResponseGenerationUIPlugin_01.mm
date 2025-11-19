uint64_t sub_1D4E8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_1D4FC()
{
  result = qword_367E8;
  if (!qword_367E8)
  {
    sub_20E8(&qword_36760, &qword_261F0);
    sub_3F18(&qword_367F0, &qword_367F8, &qword_26288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_367E8);
  }

  return result;
}

uint64_t sub_1D60C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
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
    v9 = sub_2391C();
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = sub_20A0(&qword_366A0, qword_260B0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 28);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_1D75C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 16) = a2;
  }

  else
  {
    v8 = sub_2391C();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_20A0(&qword_366A0, qword_260B0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1D8AC()
{
  sub_1D9D8(319, &unk_36878, type metadata accessor for VRXMode, &type metadata accessor for Environment);
  if (v0 <= 0x3F)
  {
    sub_2920();
    if (v1 <= 0x3F)
    {
      sub_2391C();
      if (v2 <= 0x3F)
      {
        sub_1D9D8(319, &qword_36710, &type metadata accessor for SystemPromptResolution, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_18884();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D9D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1DA58()
{
  result = qword_368C8;
  if (!qword_368C8)
  {
    sub_20E8(&qword_368D0, &qword_26318);
    sub_1DB28();
    sub_20E8(&qword_36950, &qword_26360);
    sub_1DEA4();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_368C8);
  }

  return result;
}

unint64_t sub_1DB28()
{
  result = qword_368D8;
  if (!qword_368D8)
  {
    sub_20E8(&qword_368E0, &qword_26320);
    sub_1DBB4();
    sub_1DD68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_368D8);
  }

  return result;
}

unint64_t sub_1DBB4()
{
  result = qword_368E8;
  if (!qword_368E8)
  {
    sub_20E8(&qword_368F0, &qword_26328);
    sub_1DC70();
    sub_1DD20(&qword_36918, &type metadata accessor for PluginView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_368E8);
  }

  return result;
}

unint64_t sub_1DC70()
{
  result = qword_368F8;
  if (!qword_368F8)
  {
    sub_20E8(&qword_36900, &qword_26330);
    sub_3F18(&qword_36908, &qword_36910, &qword_26338);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_368F8);
  }

  return result;
}

uint64_t sub_1DD20(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DD68()
{
  result = qword_36920;
  if (!qword_36920)
  {
    sub_20E8(&qword_36928, &qword_26340);
    sub_1DDF4();
    sub_1652C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36920);
  }

  return result;
}

unint64_t sub_1DDF4()
{
  result = qword_36930;
  if (!qword_36930)
  {
    sub_20E8(&qword_36938, &qword_26348);
    sub_3F18(&qword_36940, &qword_36948, &unk_26350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36930);
  }

  return result;
}

unint64_t sub_1DEA4()
{
  result = qword_36958;
  if (!qword_36958)
  {
    sub_20E8(&qword_36950, &qword_26360);
    sub_1DF60();
    sub_1DD20(&qword_36980, &type metadata accessor for SimpleItemRichView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36958);
  }

  return result;
}

unint64_t sub_1DF60()
{
  result = qword_36960;
  if (!qword_36960)
  {
    sub_20E8(&qword_36968, &qword_26368);
    sub_3F18(&qword_36970, &qword_36978, &qword_26370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36960);
  }

  return result;
}

uint64_t sub_1E010(uint64_t a1)
{
  v2 = sub_20A0(&qword_368B8, &qword_26310);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E098(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1E0E0(uint64_t a1, uint64_t a2)
{
  v4 = sub_20A0(&qword_36510, &qword_25E60);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E154()
{
  v1 = *(sub_20A0(&qword_36510, &qword_25E60) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for RGSFCardView(0);
  if (!(*(*(v6 - 1) + 48))(v0 + v3, 1, v6))
  {
    v7 = sub_2426C();
    (*(*(v7 - 8) + 8))(v0 + v3, v7);

    v8 = *(v5 + v6[7]);

    v9 = *(v5 + v6[9] + 8);

    v10 = (v5 + v6[10]);
    v11 = *v10;
    v12 = v10[1];
    v13 = *(v10 + 16);
    sub_1E0D8();
    v14 = *(v5 + v6[11] + 8);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E35C@<X0>(uint64_t a1@<X8>)
{
  result = sub_23C3C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E390@<X0>(uint64_t a1@<X8>)
{
  result = sub_23C3C();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E3C4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_23C4C();
}

uint64_t sub_1E3F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  return sub_23C4C();
}

uint64_t sub_1E424(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_20E8(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E4A0()
{
  result = qword_369F8;
  if (!qword_369F8)
  {
    sub_20E8(&qword_36A00, &unk_26420);
    sub_5BF0();
    sub_5C6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_369F8);
  }

  return result;
}

uint64_t sub_1E55C(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_1E5EC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 16);
  v7 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return v6(a2, v7, v4);
}

uint64_t sub_1E67C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2391C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_20A0(&qword_366A0, qword_260B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_1E7B4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_2391C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_20A0(&qword_366A0, qword_260B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1E8C8()
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
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E998()
{
  result = qword_36AA8;
  if (!qword_36AA8)
  {
    sub_20E8(&qword_36988, &qword_26378);
    sub_20E8(&qword_368B8, &qword_26310);
    sub_1E424(&qword_368C0, &qword_368B8, &qword_26310, sub_1DA58);
    swift_getOpaqueTypeConformance2();
    sub_1DD20(&qword_36AB0, type metadata accessor for RGDisplayRepresentationDebugIndicatorModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36AA8);
  }

  return result;
}

uint64_t sub_1EAE0(uint64_t a1)
{
  v2 = type metadata accessor for RGDisplayRepresentationDebugIndicatorView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1EB40()
{
  result = qword_36AE8;
  if (!qword_36AE8)
  {
    sub_20E8(&qword_36AB8, &qword_264C0);
    sub_3F18(&qword_36AF0, &qword_36AC8, &qword_264D0);
    sub_3F18(&qword_36AF8, &qword_36AC0, &qword_264C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36AE8);
  }

  return result;
}

uint64_t sub_1EC70(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v10 = sub_2398C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1ED74(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
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
    v12 = sub_2398C();
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t type metadata accessor for RGParameterConfirmationView()
{
  result = qword_36B58;
  if (!qword_36B58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1EEBC()
{
  result = sub_2426C();
  if (v1 <= 0x3F)
  {
    result = sub_2398C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1EF5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  v3 = type metadata accessor for RGParameterConfirmationView();
  v4 = v3 - 8;
  v66 = *(v3 - 8);
  v5 = *(v66 + 64);
  __chkstk_darwin(v3);
  v67 = v6;
  v68 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = sub_20A0(&qword_36348, &qword_25D08);
  v65 = *(v72 - 8);
  v7 = *(v65 + 64);
  __chkstk_darwin(v72);
  v71 = &v58[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v70 = &v58[-v10];
  v11 = sub_242DC();
  v63 = *(v11 - 8);
  v64 = v11;
  v12 = *(v63 + 64);
  __chkstk_darwin(v11);
  v62 = &v58[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_20A0(&qword_36350, &qword_25D10);
  v60 = *(v14 - 8);
  v61 = v14;
  v15 = *(v60 + 64);
  __chkstk_darwin(v14);
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
  v69 = a1;
  v35 = sub_2397C();
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
        v42 = v62;
        v41 = v63;
        v43 = v64;
        (*(v63 + 104))(v62, *v40, v64);
        sub_3F18(&qword_363A8, &qword_36350, &qword_25D10);
        v44 = v61;
        v45 = v74;
        sub_23EFC();
        (*(v41 + 8))(v42, v43);
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
  sub_20440(v69, v68, type metadata accessor for RGParameterConfirmationView);
  v47 = (*(v66 + 80) + 16) & ~*(v66 + 80);
  v48 = swift_allocObject();
  sub_202DC(v46, v48 + v47);
  type metadata accessor for RGBinaryButtonView(0);
  sub_12E3C(&qword_36368, type metadata accessor for RGBinaryButtonView);
  v49 = v70;
  sub_241EC();
  sub_12708(v33, v30);
  v50 = v65;
  v51 = *(v65 + 16);
  v53 = v71;
  v52 = v72;
  v51(v71, v49, v72);
  v54 = v73;
  sub_12708(v30, v73);
  v55 = sub_20A0(&qword_36370, &qword_25D28);
  v51((v54 + *(v55 + 48)), v53, v52);
  v56 = *(v50 + 8);
  v56(v49, v52);
  sub_12778(v33);
  v56(v53, v52);
  return sub_12778(v30);
}

uint64_t sub_1F724(uint64_t a1)
{
  sub_181AC(a1);
  swift_getKeyPath();
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_203F0;
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

uint64_t sub_1F904(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t sub_1FB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
  return sub_20440(a1, a2, type metadata accessor for RGDisplayRepresentationView);
}

uint64_t sub_1FCE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for RGParameterConfirmationView();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v7;
  __chkstk_darwin(v8);
  v10 = &v31 - v9;
  v32 = type metadata accessor for RGParameterConfirmationView;
  v33 = a1;
  sub_20440(a1, &v31 - v9, type metadata accessor for RGParameterConfirmationView);
  v11 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v31 = swift_allocObject();
  sub_202DC(v10, v31 + v11);
  sub_20440(a1, v7, type metadata accessor for RGParameterConfirmationView);
  v12 = swift_allocObject();
  sub_202DC(v7, v12 + v11);
  v38 = type metadata accessor for RGBinaryButtonView(0);
  v13 = (a2 + *(v38 + 24));
  v36 = type metadata accessor for RGBinaryButton(0);
  v14 = *(v36 + 24);
  v15 = sub_2414C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v34 = v16 + 56;
  v17(v13 + v14, 1, 1, v15);
  v18 = v31;
  v19 = v32;
  *v13 = sub_204A8;
  v13[1] = v18;
  v13[2] = sub_204C0;
  v13[3] = v12;
  v20 = v33;
  sub_20440(v33, v10, v19);
  v21 = swift_allocObject();
  sub_202DC(v10, v21 + v11);
  v22 = v35;
  sub_20440(v20, v35, v19);
  v23 = swift_allocObject();
  sub_202DC(v22, v23 + v11);
  v24 = v37;
  v25 = (v37 + *(v38 + 28));
  v17(v25 + *(v36 + 24), 1, 1, v15);
  *v25 = sub_204D8;
  v25[1] = v21;
  v25[2] = sub_2066C;
  v25[3] = v23;
  sub_242FC();
  sub_12E3C(&qword_358B0, &type metadata accessor for Context);
  v26 = sub_23BDC();
  v28 = v27;
  type metadata accessor for CommandThrottle();
  sub_12E3C(&qword_358A0, type metadata accessor for CommandThrottle);
  result = sub_23BDC();
  *v24 = v26;
  v24[1] = v28;
  v24[2] = result;
  v24[3] = v30;
  return result;
}

uint64_t sub_2005C(uint64_t a1, uint64_t (*a2)(uint64_t))
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

uint64_t sub_201E8(uint64_t a1, void (*a2)(void))
{
  v4 = sub_2369C();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v6 = a1 + *(type metadata accessor for RGParameterConfirmationView() + 20);
  a2();
  return sub_23E8C();
}

uint64_t sub_20288@<X0>(uint64_t a1@<X8>)
{
  *a1 = sub_23CAC();
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v3 = sub_20A0(&qword_36340, &qword_25D00);
  return sub_1EF5C(v1, a1 + *(v3 + 44));
}

uint64_t sub_202DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RGParameterConfirmationView();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_20340@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for RGParameterConfirmationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1FCE0(v4, a1);
}

uint64_t sub_203B0()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_203F8()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_20440(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_20554()
{
  v1 = (type metadata accessor for RGParameterConfirmationView() - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = sub_2426C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = sub_2398C();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_20740()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23ADC();

  return v1;
}

void sub_207B4(void (*a1)(uint64_t))
{
  v2 = sub_23A9C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = (__chkstk_darwin)();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  sub_20D9C();
  v10 = objc_opt_self();
  v11 = [v10 currentThread];
  v12 = [v10 mainThread];
  v13 = sub_244CC();

  if (v13)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_23ADC();

    if (v24)
    {
      sub_236EC();
      v14 = sub_23A8C();
      v15 = sub_2447C();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v24 = v17;
        *v16 = 136315138;
        *(v16 + 4) = sub_20FB4(0x656C74746F726874, 0xEC000000293A5F28, &v24);
        _os_log_impl(&dword_0, v14, v15, "%s Throttling enabled, ignoring command", v16, 0xCu);
        sub_4230(v17);
      }

      (*(v3 + 8))(v7, v2);
    }

    else
    {
      sub_236EC();
      v18 = sub_23A8C();
      v19 = sub_2446C();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v24 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_20FB4(0x656C74746F726874, 0xEC000000293A5F28, &v24);
        _os_log_impl(&dword_0, v18, v19, "%s Throttling commands", v20, 0xCu);
        sub_4230(v21);
      }

      (*(v3 + 8))(v9, v2);
      swift_getKeyPath();
      swift_getKeyPath();
      LOBYTE(v24) = 1;

      v22 = sub_23AEC();
      a1(v22);
    }
  }
}

uint64_t sub_20B80()
{
  v1 = OBJC_IVAR____TtC26ResponseGenerationUIPlugin15CommandThrottle__throttling;
  v2 = sub_20A0(&qword_36C98, &qword_26688);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return _swift_deallocClassInstance(v0, v3, v4);
}

uint64_t type metadata accessor for CommandThrottle()
{
  result = qword_36BC0;
  if (!qword_36BC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_20C7C()
{
  sub_20D0C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_20D0C()
{
  if (!qword_36BD0)
  {
    v0 = sub_23AFC();
    if (!v1)
    {
      atomic_store(v0, &qword_36BD0);
    }
  }
}

uint64_t sub_20D5C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for CommandThrottle();
  result = sub_23ABC();
  *a1 = result;
  return result;
}

unint64_t sub_20D9C()
{
  result = qword_36C88;
  if (!qword_36C88)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_36C88);
  }

  return result;
}

uint64_t sub_20DE8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_23ADC();

  *a2 = v5;
  return result;
}

uint64_t sub_20E6C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_23AEC();
}

uint64_t sub_20EE4(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_20F58(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = sub_20FB4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

uint64_t sub_20FB4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_21080(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_2156C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_4230(v11);
  return v7;
}

unint64_t sub_21080(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_2118C(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_245CC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *sub_2118C(uint64_t a1, unint64_t a2)
{
  v4 = sub_211D8(a1, a2);
  sub_21308(&off_31808);
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *sub_211D8(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_213F4(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_245CC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_243AC();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_213F4(v10, 0);
        result = sub_2456C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_21308(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_21468(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_213F4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return &_swiftEmptyArrayStorage;
  }

  sub_20A0(&qword_36C90, &qword_26680);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_21468(char *result, int64_t a2, char a3, char *a4)
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
    sub_20A0(&qword_36C90, &qword_26680);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

_BYTE **sub_2155C(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_2156C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_2162C()
{
  if (*v0)
  {
    result = 0x657370616C6C6F63;
  }

  else
  {
    result = 0x6465646E61707865;
  }

  *v0;
  return result;
}

uint64_t sub_2166C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465646E61707865 && a2 == 0xE800000000000000;
  if (v6 || (sub_246AC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657370616C6C6F63 && a2 == 0xE900000000000064)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_246AC();

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

uint64_t sub_21768(uint64_t a1)
{
  v2 = sub_21C18();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_217A4(uint64_t a1)
{
  v2 = sub_21C18();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_217EC(uint64_t a1)
{
  v2 = sub_21C6C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_21828(uint64_t a1)
{
  v2 = sub_21C6C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_21864@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_218A0(uint64_t a1)
{
  v2 = sub_21CC0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_218DC(uint64_t a1)
{
  v2 = sub_21CC0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UpdatePresentation.PresentationStyle.encode(to:)(void *a1, int a2)
{
  v22 = a2;
  v3 = sub_20A0(&qword_36CA0, &qword_26690);
  v20 = *(v3 - 8);
  v21 = v3;
  v4 = *(v20 + 64);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  v19 = sub_20A0(&qword_36CA8, &qword_26698);
  v7 = *(v19 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v19);
  v10 = &v19 - v9;
  v11 = sub_20A0(&qword_36CB0, &qword_266A0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - v14;
  v16 = a1[4];
  sub_21BD4(a1, a1[3]);
  sub_21C18();
  sub_2472C();
  v17 = (v12 + 8);
  if (v22)
  {
    v24 = 1;
    sub_21C6C();
    sub_2468C();
    (*(v20 + 8))(v6, v21);
  }

  else
  {
    v23 = 0;
    sub_21CC0();
    sub_2468C();
    (*(v7 + 8))(v10, v19);
  }

  return (*v17)(v15, v11);
}

void *sub_21BD4(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_21C18()
{
  result = qword_36CB8;
  if (!qword_36CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36CB8);
  }

  return result;
}

unint64_t sub_21C6C()
{
  result = qword_36CC0;
  if (!qword_36CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36CC0);
  }

  return result;
}

unint64_t sub_21CC0()
{
  result = qword_36CC8;
  if (!qword_36CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36CC8);
  }

  return result;
}

Swift::Int UpdatePresentation.PresentationStyle.hashValue.getter(char a1)
{
  sub_246EC();
  sub_246FC(a1 & 1);
  return sub_2470C();
}

Swift::Int sub_21DA0()
{
  v1 = *v0;
  sub_246EC();
  sub_246FC(v1);
  return sub_2470C();
}

Swift::Int sub_21DE8()
{
  v1 = *v0;
  sub_246EC();
  sub_246FC(v1);
  return sub_2470C();
}

uint64_t sub_21E2C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_222BC(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

Swift::Int sub_21E80()
{
  sub_246EC();
  sub_246FC(0);
  return sub_2470C();
}

Swift::Int sub_21EEC()
{
  sub_246EC();
  sub_246FC(0);
  return sub_2470C();
}

uint64_t sub_21F40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_246AC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_21FC4(uint64_t a1)
{
  v2 = sub_226F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_22000(uint64_t a1)
{
  v2 = sub_226F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t UpdatePresentation.encode(to:)(void *a1, char a2)
{
  v4 = sub_20A0(&qword_36CD0, &qword_266A8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v11[-v7];
  v9 = a1[4];
  sub_21BD4(a1, a1[3]);
  sub_226F8();
  sub_2472C();
  v11[15] = a2 & 1;
  sub_2274C();
  sub_2469C();
  return (*(v5 + 8))(v8, v4);
}

void *sub_221A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227A0(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_221F0()
{
  sub_22F78();
  sub_22FCC();
  return sub_2373C();
}

uint64_t sub_2225C()
{
  sub_22F78();
  sub_22FCC();
  return sub_2372C();
}

uint64_t sub_222BC(uint64_t *a1)
{
  v29 = sub_20A0(&qword_36D60, &qword_26C20);
  v27 = *(v29 - 8);
  v2 = *(v27 + 64);
  __chkstk_darwin(v29);
  v4 = v25 - v3;
  v5 = sub_20A0(&qword_36D68, &qword_26C28);
  v28 = *(v5 - 8);
  v6 = *(v28 + 64);
  __chkstk_darwin(v5);
  v8 = v25 - v7;
  v9 = sub_20A0(&qword_36D70, &qword_26C30);
  v30 = *(v9 - 8);
  v10 = *(v30 + 64);
  __chkstk_darwin(v9);
  v12 = v25 - v11;
  v13 = a1[4];
  sub_21BD4(a1, a1[3]);
  sub_21C18();
  v14 = v31;
  sub_2471C();
  if (v14)
  {
    return sub_4230(a1);
  }

  v26 = v5;
  v31 = a1;
  v16 = v28;
  v15 = v29;
  v17 = v12;
  v18 = sub_2467C();
  if (*(v18 + 16) != 1)
  {
    v20 = sub_245BC();
    swift_allocError();
    v22 = v21;
    v23 = *(sub_20A0(&qword_36D78, &qword_26C38) + 48);
    *v22 = &type metadata for UpdatePresentation.PresentationStyle;
    sub_2465C();
    sub_245AC();
    (*(*(v20 - 8) + 104))(v22, enum case for DecodingError.typeMismatch(_:), v20);
    swift_willThrow();
    (*(v30 + 8))(v17, v9);
    swift_unknownObjectRelease();
    a1 = v31;
    return sub_4230(a1);
  }

  v25[1] = v18;
  v32 = *(v18 + 32);
  if (v32)
  {
    v34 = 1;
    sub_21C6C();
    sub_2464C();
    v19 = v30;
    (*(v27 + 8))(v4, v15);
  }

  else
  {
    v33 = 0;
    sub_21CC0();
    sub_2464C();
    v19 = v30;
    (*(v16 + 8))(v8, v26);
  }

  (*(v19 + 8))(v12, v9);
  swift_unknownObjectRelease();
  sub_4230(v31);
  return v32;
}

unint64_t sub_226F8()
{
  result = qword_36CD8;
  if (!qword_36CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36CD8);
  }

  return result;
}

unint64_t sub_2274C()
{
  result = qword_36CE0;
  if (!qword_36CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36CE0);
  }

  return result;
}

void *sub_227A0(uint64_t *a1)
{
  v3 = sub_20A0(&qword_36D50, &qword_26C18);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_21BD4(a1, a1[3]);
  sub_226F8();
  sub_2471C();
  if (v1)
  {
    sub_4230(a1);
  }

  else
  {
    sub_23020();
    sub_2466C();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    sub_4230(a1);
  }

  return v9;
}

unint64_t sub_22914()
{
  result = qword_36CE8;
  if (!qword_36CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36CE8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UpdatePresentation.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for UpdatePresentation.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t sub_22A84(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_22B14(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_22C0C()
{
  result = qword_36CF0;
  if (!qword_36CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36CF0);
  }

  return result;
}

unint64_t sub_22C64()
{
  result = qword_36CF8;
  if (!qword_36CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36CF8);
  }

  return result;
}

unint64_t sub_22CBC()
{
  result = qword_36D00;
  if (!qword_36D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36D00);
  }

  return result;
}

unint64_t sub_22D14()
{
  result = qword_36D08;
  if (!qword_36D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36D08);
  }

  return result;
}

unint64_t sub_22D6C()
{
  result = qword_36D10;
  if (!qword_36D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36D10);
  }

  return result;
}

unint64_t sub_22DC4()
{
  result = qword_36D18;
  if (!qword_36D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36D18);
  }

  return result;
}

unint64_t sub_22E1C()
{
  result = qword_36D20;
  if (!qword_36D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36D20);
  }

  return result;
}

unint64_t sub_22E74()
{
  result = qword_36D28;
  if (!qword_36D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36D28);
  }

  return result;
}

unint64_t sub_22ECC()
{
  result = qword_36D30;
  if (!qword_36D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36D30);
  }

  return result;
}

unint64_t sub_22F24()
{
  result = qword_36D38;
  if (!qword_36D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36D38);
  }

  return result;
}

unint64_t sub_22F78()
{
  result = qword_36D40;
  if (!qword_36D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36D40);
  }

  return result;
}

unint64_t sub_22FCC()
{
  result = qword_36D48;
  if (!qword_36D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36D48);
  }

  return result;
}

unint64_t sub_23020()
{
  result = qword_36D58;
  if (!qword_36D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_36D58);
  }

  return result;
}

BOOL sub_230A4(int a1, int a2, int a3)
{
  if (qword_383C0 == -1)
  {
    v3 = dword_383B0 < a1;
    if (dword_383B0 > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    sub_2362C();
    a2 = v6;
    a3 = v5;
    v3 = dword_383B0 < a1;
    if (dword_383B0 > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_383B4 > a2)
  {
    return 1;
  }

  if (dword_383B4 < a2)
  {
    return 0;
  }

  return dword_383B8 >= a3;
}

uint64_t sub_23164(uint64_t a1, int a2, int a3, int a4)
{
  if (qword_383C8 == -1)
  {
    if (qword_383D0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_23644();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_383D0)
    {
      return _availability_version_check();
    }
  }

  if (qword_383C0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_2362C();
    a3 = v10;
    a4 = v9;
    v8 = dword_383B0 < v11;
    if (dword_383B0 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_383B4 > a3)
      {
        return 1;
      }

      if (dword_383B4 >= a3)
      {
        return dword_383B8 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_383B0 < a2;
  if (dword_383B0 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_232F8(uint64_t result)
{
  v1 = qword_383D0;
  if (qword_383D0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (&__availability_version_check)
    {
      v1 = &__availability_version_check;
      qword_383D0 = &__availability_version_check;
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = ftell(v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_383B0, &dword_383B4, &dword_383B8);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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