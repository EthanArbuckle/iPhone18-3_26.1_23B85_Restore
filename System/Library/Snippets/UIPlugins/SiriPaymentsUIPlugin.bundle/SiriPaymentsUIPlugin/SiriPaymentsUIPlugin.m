uint64_t sub_1480(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a1;
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  return v2;
}

uint64_t sub_14E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_D8C4();
  *a1 = result;
  return result;
}

uint64_t sub_1524()
{
  v0 = type metadata accessor for AppDisambiguationView(0);
  v1 = sub_8970(v0);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  sub_8994();
  v6 = v5 - v4;
  v72 = type metadata accessor for RequestPaymentConfirmationView(0);
  v7 = sub_8970(v72);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  sub_8994();
  v12 = v11 - v10;
  v13 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  v14 = sub_8A90(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_8994();
  v71 = v18 - v17;
  v19 = sub_8C1C();
  v20 = type metadata accessor for SendPaymentConfirmationView(v19);
  v21 = sub_8970(v20);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  sub_8994();
  v26 = v25 - v24;
  v27 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  v28 = sub_8A90(v27);
  v30 = *(v29 + 64);
  __chkstk_darwin(v28);
  sub_8994();
  v33 = v32 - v31;
  v34 = type metadata accessor for SiriPaymentsSnippetModel(0);
  v35 = sub_8970(v34);
  v37 = *(v36 + 64);
  __chkstk_darwin(v35);
  sub_8994();
  v40 = (v39 - v38);
  sub_1E64();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2E34();
      sub_1E64();
      sub_10B24();
      sub_8930();
      sub_1D44(v61, v62);
      v63 = sub_106D4();
      v65 = v64;
      v66 = v20[5];
      *(v26 + v66) = swift_getKeyPath();
      sub_2D44(&qword_1C1C8, &qword_11108);
      swift_storeEnumTagMultiPayload();
      v67 = (v26 + v20[6]);
      *v67 = v63;
      v67[1] = v65;
      v68 = v20[7];
      __dst[0] = 0x4049000000000000;
      sub_2D8C();
      sub_8BBC();
      v69 = v20[8];
      __dst[0] = 0x4034000000000000;
      sub_8BBC();
      sub_1D44(&qword_1C1E0, type metadata accessor for SendPaymentConfirmationView);
      v50 = sub_10884();
      sub_2DE0(v26, type metadata accessor for SendPaymentConfirmationView);
      v51 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel;
      v52 = v33;
      goto LABEL_6;
    case 2u:
      v53 = *(v40 + 2);
      *v6 = *v40;
      *(v6 + 16) = v53;
      v54 = v6 + *(v0 + 20);
      sub_10A74();
      sub_1D44(&qword_1C1C0, type metadata accessor for AppDisambiguationView);
      v50 = sub_10884();
      v51 = type metadata accessor for AppDisambiguationView;
      v52 = v6;
      goto LABEL_6;
    case 3u:
      v55 = v40[1];
      v74 = *v40;
      v75 = v55;
      v56 = v40[3];
      v76 = v40[2];
      v77 = v56;
      sub_1CE8(&v74, __dst);
      sub_10B24();
      sub_8930();
      sub_1D44(v57, v58);
      v59 = sub_106D4();
      __src[0] = v74;
      __src[1] = v75;
      __src[2] = v76;
      __src[3] = v77;
      *&__src[4] = v59;
      *(&__src[4] + 1) = v60;
      sub_1D8C();
      v50 = sub_10884();
      sub_1DE0(&v74);
      memcpy(__dst, __src, 0x50uLL);
      sub_1E34(__dst);
      return v50;
    default:
      sub_2E34();
      sub_1E64();
      sub_10B24();
      sub_8930();
      sub_1D44(v41, v42);
      v43 = sub_106D4();
      v45 = v44;
      v46 = v72[5];
      *(v12 + v46) = swift_getKeyPath();
      sub_2D44(&qword_1C1C8, &qword_11108);
      swift_storeEnumTagMultiPayload();
      v47 = (v12 + v72[6]);
      *v47 = v43;
      v47[1] = v45;
      v48 = v72[7];
      __dst[0] = 0x4049000000000000;
      sub_2D8C();
      sub_8BBC();
      v49 = v72[8];
      __dst[0] = 0x4034000000000000;
      sub_8BBC();
      sub_1D44(&qword_1C1D8, type metadata accessor for RequestPaymentConfirmationView);
      v50 = sub_10884();
      sub_2DE0(v12, type metadata accessor for RequestPaymentConfirmationView);
      v51 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel;
      v52 = v71;
LABEL_6:
      sub_2DE0(v52, v51);
      return v50;
  }
}

uint64_t sub_1C10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1514();
  *a1 = result;
  return result;
}

uint64_t sub_1CB0(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D44(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1D8C()
{
  result = qword_1C1B8;
  if (!qword_1C1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1B8);
  }

  return result;
}

uint64_t sub_1E64()
{
  sub_8B80();
  v2 = v1(0);
  sub_8970(v2);
  v4 = *(v3 + 16);
  v5 = sub_8C10();
  v6(v5);
  return v0;
}

uint64_t sub_1EBC()
{
  swift_getObjectType();
  sub_10CF4();
  sub_7298();
  v0 = sub_10B94();

  return v0;
}

id sub_1F64(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIntent:a1 response:a2];

  return v4;
}

uint64_t sub_1FC0()
{
  sub_2D44(&qword_1C488, &qword_11460);
  sub_8CA4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_11060;
  sub_2D44(&qword_1C450, &unk_11820);
  sub_105D4();
  sub_1EBC();
  sub_8E1C();
  v32._countAndFlagsBits = 0x72657961702ELL;
  v32._object = 0xE600000000000000;
  sub_10B74(v32);
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_8C28();
  v4 = [v3 currencyAmount];

  if (v4)
  {
    sub_103AC();
    v6 = v5;

    if (v6)
    {

      sub_8D84();
      v7 = sub_8C28();
      v1 = sub_1EBC();

      sub_8B3C();
      sub_8A7C();
      if (v9)
      {
        v2 = sub_8A48(v8);
      }

      sub_8B08();
    }
  }

  v10 = *(type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0) + 20);
  sub_2D44(&qword_1C458, &qword_11440);
  v11 = sub_105F4();
  v12 = [v11 paymentRecord];

  if (v12)
  {
    v13 = [v12 feeAmount];

    if (v13)
    {
      v14 = sub_103AC();
      v1 = v15;

      sub_1480(v14, v1);
      v17 = v16;

      if (v17)
      {

        sub_8C28();
        sub_1EBC();
        sub_8E1C();
        sub_8B8C();
        sub_8A7C();
        if (v9)
        {
          v2 = sub_8A48(v18);
        }

        sub_8B08();
      }
    }
  }

  v19 = sub_8C28();
  v20 = sub_8750(v19);
  sub_1480(v20, v21);
  v23 = v22;

  if (v23)
  {

    v25 = sub_8C28();
    v26 = sub_1EBC();
    v28 = v27;

    sub_8C40();
    sub_8D00();
    if (v9)
    {
      v24 = sub_8A48(v29);
      v2 = v24;
    }

    *(v2 + 16) = v25;
    v30 = v2 + 16 * v1;
    *(v30 + 32) = v26;
    *(v30 + 40) = v28;
  }

  __chkstk_darwin(v24);
  sub_8CEC();
  return sub_109B4();
}

uint64_t sub_2270()
{
  v0 = sub_8D58();
  v1 = type metadata accessor for RequestPaymentConfirmationView(v0);
  v2 = sub_8AF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_8C68();
  sub_8CB0();
  sub_1E64();
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  swift_allocObject();
  sub_2E34();
  v8 = sub_8D4C();
  sub_2D44(v8, v9);
  sub_8A1C(&qword_1C468);
  return sub_8DC4();
}

uint64_t sub_2398@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v61 = sub_10974();
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v61);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for RequestPaymentConfirmationView(0);
  v55 = *(v6 - 8);
  v7 = *(v55 + 8);
  __chkstk_darwin(v6 - 8);
  v53 = v8;
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2D44(&qword_1C3F0, &qword_113F0);
  v71 = *(v57 - 8);
  v10 = *(v71 + 64);
  __chkstk_darwin(v57);
  v56 = &v50 - v11;
  v58 = sub_2D44(&qword_1C3E8, &qword_113E8);
  v59 = *(v58 - 8);
  v12 = *(v59 + 64);
  __chkstk_darwin(v58);
  v14 = &v50 - v13;
  v66 = sub_109E4();
  v65 = *(v66 - 8);
  v15 = *(v65 + 64);
  v16 = __chkstk_darwin(v66);
  v64 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v69 = &v50 - v18;
  v63 = sub_10AB4();
  v70 = *(v63 - 8);
  v19 = v70[8];
  v20 = __chkstk_darwin(v63);
  v62 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v68 = &v50 - v22;
  sub_7894(0, &qword_1C470, INInteraction_ptr);
  sub_2D44(&qword_1C450, &unk_11820);
  v23 = sub_105D4();
  v24 = *(type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0) + 20);
  sub_2D44(&qword_1C458, &qword_11440);
  v25 = sub_105F4();
  sub_1F64(v23, v25);
  v74 = a1;
  sub_10AC4();
  v54 = type metadata accessor for RequestPaymentConfirmationView;
  v51 = a1;
  v52 = v9;
  sub_1E64();
  v26 = *(v55 + 80);
  swift_allocObject();
  v55 = type metadata accessor for RequestPaymentConfirmationView;
  sub_2E34();
  v73 = a1;
  v27 = v56;
  sub_10924();
  v28 = v60;
  v29 = v61;
  (*(v3 + 104))(v60, enum case for ButtonItemButtonStyle.Role.preferred(_:), v61);
  v30 = sub_88C0(&qword_1C3F8, &qword_1C3F0, &qword_113F0);
  v31 = v57;
  sub_10894();
  (*(v3 + 8))(v28, v29);
  v32 = *(v71 + 8);
  v71 += 8;
  v32(v27, v31);
  v78 = v31;
  v79 = v30;
  swift_getOpaqueTypeConformance2();
  v33 = v58;
  v34 = sub_10884();
  (*(v59 + 8))(v14, v33);
  v80 = &type metadata for AnyView;
  v81 = &protocol witness table for AnyView;
  v78 = v34;
  v35 = v51;
  sub_1E64();
  swift_allocObject();
  sub_2E34();
  v72 = v35;
  sub_10924();
  v36 = sub_10884();
  v32(v27, v31);
  v76 = &type metadata for AnyView;
  v77 = &protocol witness table for AnyView;
  v75 = v36;
  v37 = v69;
  sub_109D4();
  v38 = v70[2];
  v39 = v62;
  v40 = v63;
  v38(v62, v68, v63);
  v41 = v65;
  v42 = *(v65 + 16);
  v43 = v64;
  v44 = v66;
  v42(v64, v37, v66);
  v45 = v67;
  v38(v67, v39, v40);
  v46 = sub_2D44(&qword_1C478, &qword_11450);
  v42(&v45[*(v46 + 48)], v43, v44);
  v47 = *(v41 + 8);
  v47(v69, v44);
  v48 = v70[1];
  v48(v68, v40);
  v47(v43, v44);
  return (v48)(v39, v40);
}

uint64_t sub_2C78(uint64_t a1)
{
  v2 = sub_10664();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_10704();
}

uint64_t sub_2D44(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_2D8C()
{
  result = qword_1C1D0;
  if (!qword_1C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C1D0);
  }

  return result;
}

uint64_t sub_2DE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_895C(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t sub_2E34()
{
  sub_8B80();
  v2 = v1(0);
  sub_8970(v2);
  v4 = *(v3 + 32);
  v5 = sub_8C10();
  v6(v5);
  return v0;
}

uint64_t sub_2E8C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_2EB0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_2EF0(uint64_t result, int a2, int a3)
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

void sub_3014()
{
  if (!qword_1C260)
  {
    sub_10664();
    v0 = sub_10674();
    if (!v1)
    {
      atomic_store(v0, &qword_1C260);
    }
  }
}

void sub_306C()
{
  if (!qword_1C268)
  {
    sub_10B24();
    sub_1D44(&qword_1C1B0, &type metadata accessor for Context);
    v0 = sub_106E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1C268);
    }
  }
}

void sub_3100()
{
  if (!qword_1C270)
  {
    sub_2D8C();
    v0 = sub_106A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1C270);
    }
  }
}

uint64_t sub_3188(uint64_t a1, uint64_t a2, int *a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = sub_8D14(v7);
  if (*(v9 + 84) == a2)
  {
    v10 = v8;
    v11 = a1;
LABEL_13:

    return sub_2F80(v11, a2, v10);
  }

  v12 = sub_2D44(&qword_1C1E8, &qword_11240);
  v13 = sub_8D14(v12);
  if (*(v14 + 84) == a2)
  {
    v10 = v13;
    v15 = a3[5];
LABEL_12:
    v11 = a1 + v15;
    goto LABEL_13;
  }

  if (a2 != 2147483646)
  {
    v10 = sub_2D44(&qword_1C1F0, &qword_11248);
    v15 = a3[7];
    goto LABEL_12;
  }

  v16 = *(a1 + a3[6]);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  v17 = v16 - 1;
  if (v17 < 0)
  {
    v17 = -1;
  }

  return (v17 + 1);
}

uint64_t sub_32E8(uint64_t a1, uint64_t a2, int a3, int *a4, uint64_t (*a5)(void))
{
  v9 = a5(0);
  v10 = sub_8D14(v9);
  if (*(v11 + 84) == a3)
  {
    v12 = v10;
    v13 = a1;
  }

  else
  {
    v14 = sub_2D44(&qword_1C1E8, &qword_11240);
    result = sub_8D14(v14);
    if (*(v16 + 84) == a3)
    {
      v12 = result;
      v17 = a4[5];
    }

    else
    {
      if (a3 == 2147483646)
      {
        *(a1 + a4[6]) = a2;
        return result;
      }

      v12 = sub_2D44(&qword_1C1F0, &qword_11248);
      v17 = a4[7];
    }

    v13 = a1 + v17;
  }

  return sub_2FD4(v13, a2, a2, v12);
}

void sub_3424(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  a4(319);
  if (v4 <= 0x3F)
  {
    sub_3014();
    if (v5 <= 0x3F)
    {
      sub_306C();
      if (v6 <= 0x3F)
      {
        sub_3100();
        if (v7 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_34F0(uint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_10A84();
    v9 = a1 + *(a3 + 20);

    return sub_2F80(v9, a2, v8);
  }
}

void *sub_358C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_10A84();
    v8 = v5 + *(a4 + 20);

    return sub_2FD4(v8, a2, a2, v7);
  }

  return result;
}

uint64_t sub_360C()
{
  result = sub_10A84();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_36A8(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  sub_7894(0, &qword_1C408, SABaseCommand_ptr);
  v7 = sub_8D34();
  v8 = a2(v7);
  sub_8CE0(v8);
  v10 = *(v9 + 64);
  v11 = *(v9 + 72);
  if (sub_8E34())
  {
    v12 = sub_8D34();
    v13 = a1 + *(a3(v12) + 24);
    if (*v13)
    {
      v14 = *v13;
      sub_8DA4();
    }

    else
    {
      v15 = *(v13 + 8);
      sub_10B24();
      sub_8930();
      sub_1D44(v16, v17);
      sub_8DE4();
      __break(1u);
    }
  }
}

uint64_t sub_37A4(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  sub_8CE0(v2);
  v9 = *v3;
  v10 = v3[1];
  sub_7298();

  v4 = sub_10874();
  return sub_8D64(v4, v5, v6, v7);
}

void sub_3818(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  sub_7894(0, &qword_1C408, SABaseCommand_ptr);
  v7 = sub_8D34();
  v8 = a2(v7);
  sub_8CE0(v8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 88);
  if (sub_8E34())
  {
    v12 = sub_8D34();
    v13 = a1 + *(a3(v12) + 24);
    if (*v13)
    {
      v14 = *v13;
      sub_8DA4();
    }

    else
    {
      v15 = *(v13 + 8);
      sub_10B24();
      sub_8930();
      sub_1D44(v16, v17);
      sub_8DE4();
      __break(1u);
    }
  }
}

uint64_t sub_3914(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = a2(0);
  sub_8CE0(v2);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  sub_7298();

  v4 = sub_10874();
  return sub_8D64(v4, v5, v6, v7);
}

uint64_t sub_3988()
{
  sub_2D44(&qword_1C488, &qword_11460);
  sub_8CA4();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_11060;
  sub_2D44(&qword_1C550, &unk_11990);
  sub_105D4();
  sub_1EBC();
  sub_8E1C();
  v32._countAndFlagsBits = 0x65657961702ELL;
  v32._object = 0xE600000000000000;
  sub_10B74(v32);
  *(v2 + 32) = v0;
  *(v2 + 40) = v1;
  v3 = sub_8C28();
  v4 = [v3 currencyAmount];

  if (v4)
  {
    sub_103AC();
    v6 = v5;

    if (v6)
    {

      sub_8D84();
      v7 = sub_8C28();
      v1 = sub_1EBC();

      sub_8B3C();
      sub_8A7C();
      if (v9)
      {
        v2 = sub_8A48(v8);
      }

      sub_8B08();
    }
  }

  v10 = *(type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0) + 20);
  sub_2D44(&qword_1C558, &qword_11540);
  v11 = sub_105F4();
  v12 = [v11 paymentRecord];

  if (v12)
  {
    v13 = [v12 feeAmount];

    if (v13)
    {
      v14 = sub_103AC();
      v1 = v15;

      sub_1480(v14, v1);
      v17 = v16;

      if (v17)
      {

        sub_8C28();
        sub_1EBC();
        sub_8E1C();
        sub_8B8C();
        sub_8A7C();
        if (v9)
        {
          v2 = sub_8A48(v18);
        }

        sub_8B08();
      }
    }
  }

  v19 = sub_8C28();
  v20 = sub_8750(v19);
  sub_1480(v20, v21);
  v23 = v22;

  if (v23)
  {

    v25 = sub_8C28();
    v26 = sub_1EBC();
    v28 = v27;

    sub_8C40();
    sub_8D00();
    if (v9)
    {
      v24 = sub_8A48(v29);
      v2 = v24;
    }

    *(v2 + 16) = v25;
    v30 = v2 + 16 * v1;
    *(v30 + 32) = v26;
    *(v30 + 40) = v28;
  }

  __chkstk_darwin(v24);
  sub_8CEC();
  return sub_109B4();
}

uint64_t sub_3C38@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t (*a5)(void)@<X4>, SEL *a6@<X5>, uint64_t *a7@<X6>, uint64_t *a8@<X7>, uint64_t *a9@<X8>)
{
  v365 = a7;
  v366 = a8;
  v338 = a6;
  v333 = a5;
  v380 = a4;
  v362 = a3;
  v385 = a2;
  v373 = a9;
  v371 = sub_2D44(&qword_1C490, &qword_11468);
  v10 = sub_8970(v371);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  sub_8948();
  v345 = v13;
  sub_8A9C();
  __chkstk_darwin(v14);
  sub_8AA8();
  v344 = v15;
  v16 = sub_2D44(&qword_1C498, &qword_11470);
  v17 = sub_8A90(v16);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  sub_8948();
  v374 = v20;
  sub_8A9C();
  __chkstk_darwin(v21);
  sub_8AA8();
  v379 = v22;
  v370 = sub_2D44(&qword_1C4A0, &qword_11478);
  v23 = sub_8980(v370);
  v354 = v24;
  v26 = *(v25 + 64);
  __chkstk_darwin(v23);
  sub_8948();
  v369 = v27;
  sub_8A9C();
  __chkstk_darwin(v28);
  sub_8AA8();
  v332[0] = v29;
  v30 = sub_2D44(&qword_1C4A8, &qword_11480);
  v31 = sub_8A90(v30);
  v33 = *(v32 + 64);
  __chkstk_darwin(v31);
  sub_8948();
  v372 = v34;
  sub_8A9C();
  __chkstk_darwin(v35);
  sub_8AA8();
  v384 = v36;
  sub_8C1C();
  v37 = sub_10944();
  v38 = sub_8980(v37);
  v347 = v39;
  v348 = v38;
  v41 = *(v40 + 64);
  __chkstk_darwin(v38);
  sub_8994();
  v367 = v43 - v42;
  v346 = sub_2D44(&qword_1C4B0, &qword_11488);
  sub_8970(v346);
  v45 = *(v44 + 64);
  sub_8C80();
  __chkstk_darwin(v46);
  v351 = v332 - v47;
  v368 = sub_2D44(&qword_1C4B8, &qword_11490);
  v48 = sub_8970(v368);
  v50 = *(v49 + 64);
  __chkstk_darwin(v48);
  sub_8948();
  v350 = v51;
  sub_8A9C();
  __chkstk_darwin(v52);
  sub_8AA8();
  v349 = v53;
  v54 = sub_2D44(&qword_1C4C0, &qword_11498);
  v55 = sub_8A90(v54);
  v57 = *(v56 + 64);
  __chkstk_darwin(v55);
  sub_8948();
  v378 = v58;
  sub_8A9C();
  __chkstk_darwin(v59);
  sub_8AA8();
  v383 = v60;
  sub_8C1C();
  v61 = sub_10664();
  v62 = sub_8980(v61);
  v336 = v63;
  v337 = v62;
  v65 = *(v64 + 64);
  __chkstk_darwin(v62);
  sub_8948();
  v335 = v66;
  sub_8A9C();
  __chkstk_darwin(v67);
  sub_8AA8();
  v334 = v68;
  v69 = sub_2D44(&qword_1C4C8, &qword_114A0);
  sub_8A90(v69);
  v71 = *(v70 + 64);
  sub_8C80();
  __chkstk_darwin(v72);
  v375 = v332 - v73;
  sub_8C1C();
  v74 = sub_10784();
  v75 = sub_8A90(v74);
  v77 = *(v76 + 64);
  __chkstk_darwin(v75);
  sub_8948();
  v353 = v78;
  sub_8A9C();
  __chkstk_darwin(v79);
  v332[2] = v332 - v80;
  sub_8A9C();
  __chkstk_darwin(v81);
  sub_8AA8();
  v332[1] = v82;
  sub_8C1C();
  v83 = sub_10AE4();
  v84 = sub_8980(v83);
  v342 = v85;
  v343 = v84;
  v87 = *(v86 + 64);
  __chkstk_darwin(v84);
  sub_8994();
  v341 = v89 - v88;
  v364 = sub_2D44(&qword_1C4D0, &qword_114A8);
  v90 = sub_8970(v364);
  v92 = *(v91 + 64);
  __chkstk_darwin(v90);
  sub_8948();
  v340 = v93;
  sub_8A9C();
  __chkstk_darwin(v94);
  sub_8AA8();
  v339 = v95;
  v96 = sub_2D44(&qword_1C4D8, &qword_114B0);
  v97 = sub_8A90(v96);
  v99 = *(v98 + 64);
  __chkstk_darwin(v97);
  sub_8948();
  v377 = v100;
  sub_8A9C();
  __chkstk_darwin(v101);
  sub_8AA8();
  v376 = v102;
  v103 = sub_2D44(&qword_1C4E0, &qword_114B8);
  v104 = sub_8A90(v103);
  v106 = *(v105 + 64);
  __chkstk_darwin(v104);
  sub_8948();
  v358 = v107;
  sub_8A9C();
  __chkstk_darwin(v108);
  sub_8AA8();
  v356 = v109;
  v110 = sub_2D44(&qword_1C4E8, &qword_114C0);
  sub_8A90(v110);
  v112 = *(v111 + 64);
  sub_8C80();
  __chkstk_darwin(v113);
  v114 = sub_105A4();
  v115 = sub_8980(v114);
  v117 = v116;
  v119 = *(v118 + 64);
  __chkstk_darwin(v115);
  sub_8994();
  v122 = (v121 - v120);
  v123 = sub_105C4();
  v124 = sub_8A90(v123);
  v126 = *(v125 + 64);
  __chkstk_darwin(v124);
  sub_8994();
  v127 = sub_10A04();
  v128 = sub_8980(v127);
  v359 = v129;
  v360 = v128;
  v131 = *(v130 + 64);
  __chkstk_darwin(v128);
  sub_8994();
  v355 = v133 - v132;
  v357 = sub_2D44(&qword_1C4F0, &qword_114C8);
  sub_8970(v357);
  v135 = *(v134 + 64);
  sub_8C80();
  __chkstk_darwin(v136);
  v138 = v332 - v137;
  v361 = sub_2D44(&qword_1C4F8, &qword_114D0);
  v139 = sub_8970(v361);
  v141 = *(v140 + 64);
  __chkstk_darwin(v139);
  sub_8948();
  v382 = v142;
  sub_8A9C();
  v144 = __chkstk_darwin(v143);
  v146 = v332 - v145;
  __chkstk_darwin(v144);
  sub_8AA8();
  v381 = v147;
  v148 = sub_8C1C();
  v363 = v385(v148);
  v149 = *(v363 + 24);
  v385 = a1;
  v150 = (a1 + v149);
  v151 = *(a1 + v149 + 96);
  v152 = v150[13];
  v352 = v150;
  *v122 = v151;
  v122[1] = v152;
  (*(v117 + 104))(v122, enum case for SashStandard.Title.applicationBundleIdentifier(_:), v114);
  sub_105E4();
  sub_8C04();
  sub_2FD4(v153, v154, v155, v156);
  v157 = sub_10604();
  sub_8C04();
  sub_2FD4(v158, v159, v160, v157);
  sub_8C04();
  sub_2FD4(v161, v162, v163, v157);
  memset(__dst, 0, 40);

  v164 = v355;
  sub_105B4();
  sub_109F4();
  LOBYTE(v157) = sub_107C4();
  v165 = sub_107E4();
  sub_107E4();
  if (sub_107E4() != v157)
  {
    v165 = sub_107E4();
  }

  sub_10644();
  sub_8A08();
  (*(v359 + 32))(v138, v164, v360);
  v166 = &v138[*(v357 + 36)];
  *v166 = v165;
  sub_8A6C(v166);
  v167 = sub_107B4();
  v168 = sub_107E4();
  sub_107E4();
  if (sub_107E4() != v167)
  {
    v168 = sub_107E4();
  }

  sub_10644();
  sub_8A08();
  sub_82FC();
  v169 = &v146[v361[9]];
  *v169 = v168;
  sub_8A6C(v169);
  sub_82FC();
  v380 = sub_2D44(v362, v380);
  v170 = sub_105D4();
  v171 = [v170 currencyAmount];

  if (v171)
  {
    sub_10774();
    v391._countAndFlagsBits = sub_8B74();
    sub_10764(v391);
    v362 = v171;
    v172._countAndFlagsBits = sub_103AC();
    if (v172._object)
    {
      object = v172._object;
    }

    else
    {
      v172._countAndFlagsBits = 0;
      object = 0xE000000000000000;
    }

    v172._object = object;
    sub_10754(v172);

    v392._countAndFlagsBits = sub_8B74();
    sub_10764(v392);
    v174 = sub_10794();
    v178 = sub_89A4(v174, v175, v176, v177);
    v180 = v179;
    v182 = v181;
    v361 = v333(0);
    v183 = v361[7];
    v360 = sub_2D44(&qword_1C1F0, &qword_11248);
    sub_10694();
    sub_10824();
    v184 = enum case for Font.Design.rounded(_:);
    v185 = sub_10804();
    sub_8970(v185);
    v187 = v375;
    (*(v186 + 104))(v375, v184, v185);
    v359 = v185;
    sub_2FD4(v187, 0, 1, v185);
    sub_10834();
    sub_808C(v187, &qword_1C4C8, &qword_114A0);
    v188 = sub_10854();
    v190 = v189;
    v192 = v191;
    v194 = v193;

    v195 = v178;
    v196 = v385;
    sub_82AC(v195, v180, v182 & 1);

    *(&__dst[1] + 1) = &type metadata for Text;
    *&__dst[2] = &protocol witness table for Text;
    sub_8CA4();
    v197 = swift_allocObject();
    *&__dst[0] = v197;
    *(v197 + 16) = v188;
    *(v197 + 24) = v190;
    *(v197 + 32) = v192 & 1;
    *(v197 + 40) = v194;
    sub_10774();
    v393._countAndFlagsBits = sub_8B74();
    sub_10764(v393);
    v198 = sub_105D4();
    v199 = [v198 *v338];

    if (v199)
    {
      v200 = [v199 displayName];

      sub_10B64();
    }

    v394._countAndFlagsBits = sub_8CB0();
    sub_10754(v394);

    v395._countAndFlagsBits = sub_8B74();
    sub_10764(v395);
    v205 = sub_10794();
    v209 = sub_89A4(v205, v206, v207, v208);
    v211 = v210;
    v213 = v212;
    v214 = v361;
    v215 = v196 + v361[8];
    sub_10694();
    sub_10824();
    v216 = v375;
    sub_8C04();
    sub_2FD4(v217, v218, v219, v359);
    sub_10834();
    sub_808C(v216, &qword_1C4C8, &qword_114A0);
    v360 = sub_10854();
    v221 = v220;
    v223 = v222;
    v375 = v224;

    sub_82AC(v209, v211, v213 & 1);

    v225 = v196 + v214[5];
    v226 = v334;
    sub_7CA0(v334);
    v228 = v335;
    v227 = v336;
    v229 = v337;
    (*(v336 + 104))(v335, enum case for ColorScheme.light(_:), v337);
    LOBYTE(v225) = sub_10654();
    v230 = *(v227 + 8);
    v230(v228, v229);
    v230(v226, v229);
    if (v225)
    {
      v231 = sub_10904();
    }

    else
    {
      v231 = sub_10914();
    }

    v386[0] = v231;
    v232 = v360;
    v233 = sub_10844();
    v235 = v234;
    v237 = v236;
    v239 = v238;
    sub_82AC(v232, v221, v223 & 1);

    v386[3] = &type metadata for Text;
    v386[4] = &protocol witness table for Text;
    sub_8CA4();
    v240 = swift_allocObject();
    v386[0] = v240;
    *(v240 + 16) = v233;
    *(v240 + 24) = v235;
    *(v240 + 32) = v237 & 1;
    *(v240 + 40) = v239;
    v389 = 0;
    v387 = 0u;
    v388 = 0u;
    v241 = v341;
    sub_10AD4();
    sub_107C4();
    v242 = sub_107E4();
    sub_107E4();
    sub_107E4();
    sub_8D40();
    if (!v243)
    {
      v242 = sub_107E4();
    }

    sub_10644();
    sub_8A08();

    v244 = v340;
    (*(v342 + 32))(v340, v241, v343);
    v204 = v364;
    v245 = (v244 + *(v364 + 36));
    *v245 = v242;
    sub_8A6C(v245);
    sub_8E04();
    v202 = v376;
    sub_8E04();
    v201 = 0;
    v203 = v367;
  }

  else
  {
    v201 = 1;
    v202 = v376;
    v203 = v367;
    v204 = v364;
  }

  sub_2FD4(v202, v201, 1, v204);
  v246 = *(v363 + 20);
  sub_2D44(v365, v366);
  v247 = sub_105F4();
  v248 = [v247 paymentRecord];

  if (v248)
  {
    v249 = [v248 feeAmount];

    if (v249)
    {
      sub_103AC();

      v250 = sub_8CB0();
      sub_1480(v250, v251);
      v253 = v252;

      if (v253)
      {
        goto LABEL_22;
      }
    }
  }

  v254 = sub_105D4();
  v255 = sub_8750(v254);
  sub_1480(v255, v256);
  v258 = v257;

  if (v258)
  {
LABEL_22:

    sub_10934();
    sub_2D44(&qword_1C548, &unk_11530);
    v259 = swift_allocObject();
    *(v259 + 16) = xmmword_11070;
    v260 = sub_107D4();
    *(v259 + 32) = v260;
    *(v259 + 33) = sub_107F4();
    v261 = sub_107E4();
    sub_107E4();
    if (sub_107E4() != v260)
    {
      v261 = sub_107E4();
    }

    sub_107E4();
    sub_107E4();
    sub_8D40();
    if (!v243)
    {
      v261 = sub_107E4();
    }

    v262 = v351;
    sub_10644();
    sub_8A08();
    (*(v347 + 32))(v262, v203, v348);
    v263 = &v262[*(v346 + 36)];
    *v263 = v261;
    sub_8A6C(v263);
    sub_107C4();
    v264 = sub_107E4();
    sub_107E4();
    sub_107E4();
    sub_8D40();
    if (!v243)
    {
      v264 = sub_107E4();
    }

    sub_10644();
    sub_8A08();
    v265 = v350;
    sub_82FC();
    v266 = v368;
    v267 = (v265 + *(v368 + 36));
    *v267 = v264;
    sub_8A6C(v267);
    sub_8E04();
    v268 = v383;
    sub_8E04();
    v269 = v266;
    v270 = 0;
  }

  else
  {
    v270 = 1;
    v269 = v368;
    v268 = v383;
  }

  sub_2FD4(v268, v270, 1, v269);
  v271 = sub_105F4();
  v272 = [v271 paymentRecord];

  if (!v272)
  {
    goto LABEL_34;
  }

  v273 = [v272 feeAmount];

  if (!v273)
  {
    goto LABEL_34;
  }

  sub_103AC();

  v274 = sub_8CB0();
  v276 = sub_1480(v274, v275);
  v278 = v277;

  if (v278)
  {
    v279 = v352[6];
    v280 = v352[7];
    sub_10774();
    v396._countAndFlagsBits = sub_8B74();
    sub_10764(v396);
    v397._countAndFlagsBits = v279;
    v397._object = v280;
    sub_10754(v397);
    v398._countAndFlagsBits = 8250;
    v398._object = 0xE200000000000000;
    sub_10764(v398);
    v399._countAndFlagsBits = sub_8D78();
    sub_10754(v399);

    v400._countAndFlagsBits = sub_8B74();
    sub_10764(v400);
    v281 = sub_10794();
    sub_89A4(v281, v282, v283, v284);
    v285 = sub_8CBC();
    sub_8BD8(v285, v286);
    LOBYTE(__dst[0]) = v276 & 1;
    sub_108F4();
    KeyPath = swift_getKeyPath();
    sub_8AB4(KeyPath);
    sub_2D44(&qword_1C518, &qword_11518);
    sub_8110();
    v288 = v332[0];
    sub_108D4();
    memcpy(__dst, v386, 0x60uLL);
    sub_808C(__dst, &qword_1C518, &qword_11518);
    v289 = v384;
    v290 = v288;
    v291 = v370;
    (*(v354 + 32))(v384, v290, v370);
    v292 = v289;
    v293 = 0;
    v294 = 1;
  }

  else
  {
LABEL_34:
    sub_8C04();
    v291 = v370;
  }

  sub_2FD4(v292, v293, v294, v291);
  v295 = sub_105D4();
  v296 = sub_8750(v295);
  v298 = sub_1480(v296, v297);
  v300 = v299;

  v301 = v369;
  if (v300)
  {
    v302 = v352[4];
    v303 = v352[5];
    sub_10774();
    v401._countAndFlagsBits = sub_8B74();
    sub_10764(v401);
    v402._countAndFlagsBits = v302;
    v402._object = v303;
    sub_10754(v402);
    v403._countAndFlagsBits = 8250;
    v403._object = 0xE200000000000000;
    sub_10764(v403);
    v404._countAndFlagsBits = sub_8D78();
    sub_10754(v404);

    v405._countAndFlagsBits = sub_8B74();
    sub_10764(v405);
    v304 = sub_10794();
    sub_89A4(v304, v305, v306, v307);
    v308 = sub_8CBC();
    sub_8BD8(v308, v309);
    LOBYTE(__dst[0]) = v298 & 1;
    sub_108F4();
    v310 = swift_getKeyPath();
    sub_8AB4(v310);
    sub_2D44(&qword_1C518, &qword_11518);
    sub_8110();
    sub_108D4();
    memcpy(__dst, v386, 0x60uLL);
    sub_808C(__dst, &qword_1C518, &qword_11518);
    sub_107C4();
    v311 = sub_107E4();
    sub_107E4();
    sub_107E4();
    sub_8D40();
    if (!v243)
    {
      v311 = sub_107E4();
    }

    sub_10644();
    sub_8A08();
    v312 = v345;
    (*(v354 + 32))(v345, v301, v291);
    v313 = v371;
    v314 = (v312 + *(v371 + 36));
    *v314 = v311;
    sub_8A6C(v314);
    sub_824C();
    v315 = v379;
    sub_824C();
    v316 = v315;
    v317 = 0;
    v318 = 1;
    v319 = v313;
  }

  else
  {
    sub_8C04();
    v319 = v371;
  }

  sub_2FD4(v316, v317, v318, v319);
  sub_8034();
  sub_8034();
  sub_8034();
  v320 = v372;
  sub_8034();
  v321 = v374;
  sub_8034();
  v322 = sub_8D4C();
  v324 = sub_2D44(v322, v323);
  v325 = v373;
  v373[3] = v324;
  v325[4] = sub_8A1C(&qword_1C508);
  sub_769C(v325);
  sub_8034();
  v326 = sub_2D44(&qword_1C510, &qword_114E0);
  v327 = v326[12];
  sub_8034();
  v328 = v326[16];
  sub_8034();
  v329 = v326[20];
  sub_8034();
  v330 = v326[24];
  sub_8034();
  sub_808C(v379, &qword_1C498, &qword_11470);
  sub_808C(v384, &qword_1C4A8, &qword_11480);
  sub_808C(v383, &qword_1C4C0, &qword_11498);
  sub_808C(v376, &qword_1C4D8, &qword_114B0);
  sub_808C(v381, &qword_1C4F8, &qword_114D0);
  sub_808C(v321, &qword_1C498, &qword_11470);
  sub_808C(v320, &qword_1C4A8, &qword_11480);
  sub_808C(v378, &qword_1C4C0, &qword_11498);
  sub_808C(v377, &qword_1C4D8, &qword_114B0);
  return sub_808C(v382, &qword_1C4F8, &qword_114D0);
}

uint64_t sub_54C4()
{
  v0 = sub_8D58();
  v1 = type metadata accessor for SendPaymentConfirmationView(v0);
  v2 = sub_8AF8(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_8C68();
  sub_8CB0();
  sub_1E64();
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  swift_allocObject();
  sub_2E34();
  v8 = sub_8D4C();
  sub_2D44(v8, v9);
  sub_8A1C(&qword_1C468);
  return sub_8DC4();
}

uint64_t sub_55EC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v67 = a2;
  v61 = sub_10974();
  v3 = *(v61 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v61);
  v60 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SendPaymentConfirmationView(0);
  v55 = *(v6 - 8);
  v7 = *(v55 + 8);
  __chkstk_darwin(v6 - 8);
  v53 = v8;
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_2D44(&qword_1C3F0, &qword_113F0);
  v71 = *(v57 - 8);
  v10 = *(v71 + 64);
  __chkstk_darwin(v57);
  v56 = &v50 - v11;
  v58 = sub_2D44(&qword_1C3E8, &qword_113E8);
  v59 = *(v58 - 8);
  v12 = *(v59 + 64);
  __chkstk_darwin(v58);
  v14 = &v50 - v13;
  v66 = sub_109E4();
  v65 = *(v66 - 8);
  v15 = *(v65 + 64);
  v16 = __chkstk_darwin(v66);
  v64 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v69 = &v50 - v18;
  v63 = sub_10AB4();
  v70 = *(v63 - 8);
  v19 = v70[8];
  v20 = __chkstk_darwin(v63);
  v62 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v68 = &v50 - v22;
  sub_7894(0, &qword_1C470, INInteraction_ptr);
  sub_2D44(&qword_1C550, &unk_11990);
  v23 = sub_105D4();
  v24 = *(type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0) + 20);
  sub_2D44(&qword_1C558, &qword_11540);
  v25 = sub_105F4();
  sub_1F64(v23, v25);
  v74 = a1;
  sub_10AC4();
  v54 = type metadata accessor for SendPaymentConfirmationView;
  v51 = a1;
  v52 = v9;
  sub_1E64();
  v26 = *(v55 + 80);
  swift_allocObject();
  v55 = type metadata accessor for SendPaymentConfirmationView;
  sub_2E34();
  v73 = a1;
  v27 = v56;
  sub_10924();
  v28 = v60;
  v29 = v61;
  (*(v3 + 104))(v60, enum case for ButtonItemButtonStyle.Role.preferred(_:), v61);
  v30 = sub_88C0(&qword_1C3F8, &qword_1C3F0, &qword_113F0);
  v31 = v57;
  sub_10894();
  (*(v3 + 8))(v28, v29);
  v32 = *(v71 + 8);
  v71 += 8;
  v32(v27, v31);
  v78 = v31;
  v79 = v30;
  swift_getOpaqueTypeConformance2();
  v33 = v58;
  v34 = sub_10884();
  (*(v59 + 8))(v14, v33);
  v80 = &type metadata for AnyView;
  v81 = &protocol witness table for AnyView;
  v78 = v34;
  v35 = v51;
  sub_1E64();
  swift_allocObject();
  sub_2E34();
  v72 = v35;
  sub_10924();
  v36 = sub_10884();
  v32(v27, v31);
  v76 = &type metadata for AnyView;
  v77 = &protocol witness table for AnyView;
  v75 = v36;
  v37 = v69;
  sub_109D4();
  v38 = v70[2];
  v39 = v62;
  v40 = v63;
  v38(v62, v68, v63);
  v41 = v65;
  v42 = *(v65 + 16);
  v43 = v64;
  v44 = v66;
  v42(v64, v37, v66);
  v45 = v67;
  v38(v67, v39, v40);
  v46 = sub_2D44(&qword_1C478, &qword_11450);
  v42(&v45[*(v46 + 48)], v43, v44);
  v47 = *(v41 + 8);
  v47(v69, v44);
  v48 = v70[1];
  v48(v68, v40);
  v47(v43, v44);
  return (v48)(v39, v40);
}

uint64_t sub_5EA8()
{
  sub_8B80();
  v1 = sub_109A4();
  v2 = sub_8980(v1);
  v4 = v3;
  v6 = *(v5 + 64);
  __chkstk_darwin(v2);
  sub_8994();
  v0();
  v7 = sub_10AA4();
  v8 = *(v4 + 8);
  v9 = sub_8D78();
  v10(v9);
  sub_2D44(&qword_1C480, &qword_11458);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_11060;
  *(v11 + 32) = v7;
  v12 = sub_10A94();

  return v12;
}

uint64_t sub_6014()
{
  v1 = sub_8D58();
  v2 = type metadata accessor for AppDisambiguationView(v1);
  v3 = sub_8AF8(v2);
  v5 = v4;
  v7 = *(v6 + 64);
  __chkstk_darwin(v3);
  v8 = sub_10A54();
  v9 = sub_8A90(v8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  sub_8994();
  v14 = *(v0 + 8);
  v15 = *(v0 + 16);

  sub_10A44();
  sub_8D78();
  sub_1E64();
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  swift_allocObject();
  sub_2E34();
  sub_2D44(&qword_1C410, &unk_113F8);
  sub_7384();
  return sub_10A14();
}

uint64_t sub_61D0(uint64_t a1)
{
  v2 = type metadata accessor for AppDisambiguationView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2 - 8);
  v7 = *(*a1 + 16);
  swift_getKeyPath();
  sub_1E64();
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  swift_allocObject();
  sub_2E34();
  sub_2D44(&qword_1C428, &qword_11420);
  sub_2D44(&qword_1C430, &qword_11428);
  sub_75BC();
  sub_10A34();
  sub_1D44(&qword_1C420, &type metadata accessor for SimpleItemRichView);
  swift_getOpaqueTypeConformance2();
  return sub_10954();
}

uint64_t sub_63E4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for AppDisambiguationView(0);
  v27 = *(v6 - 8);
  v7 = *(v27 + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_10624();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v10 = sub_10A34();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  result = __chkstk_darwin(v10);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if ((*a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v16 < *(*a2 + 16))
  {
    v17 = (*a2 + 32 * v16);
    v26 = result;
    v19 = v17[4];
    v18 = v17[5];
    v52 = &type metadata for String;
    v53 = &protocol witness table for String;
    v50 = v19;
    v51 = v18;
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v46 = 0;
    v44 = 0u;
    v45 = 0u;
    v43 = 0;
    v41 = 0u;
    v42 = 0u;
    v40 = 0;
    v38 = 0u;
    v39 = 0u;
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    v31 = 0;
    v29 = 0u;
    v30 = 0u;
    v25 = a3;
    v21 = v17[6];
    v20 = v17[7];

    sub_10614();

    v28[3] = sub_10984();
    v28[4] = &protocol witness table for RFImageView;
    sub_769C(v28);
    sub_10994();
    sub_10A24();
    sub_1E64();
    v22 = (v7 + ((*(v27 + 80) + 16) & ~*(v27 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
    v23 = swift_allocObject();
    sub_2E34();
    *(v23 + v22) = v16;
    sub_1D44(&qword_1C420, &type metadata accessor for SimpleItemRichView);
    v24 = v26;
    sub_108A4();

    return (*(v11 + 8))(v15, v24);
  }

  __break(1u);
  return result;
}

uint64_t sub_6768(uint64_t a1, unint64_t a2)
{
  v4 = sub_10B04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1 + *(type metadata accessor for AppDisambiguationView(0) + 20);
  sub_10A64();
  sub_2D44(&qword_1C448, &unk_11430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_11060;
  v17[1] = 0x6449707061;
  v17[2] = 0xE500000000000000;
  result = sub_10BB4();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*a1 + 16) > a2)
  {
    v12 = *a1 + 32 * a2;
    v14 = *(v12 + 48);
    v13 = *(v12 + 56);
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v14;
    *(inited + 80) = v13;

    v15 = sub_10B44();
    v18._object = 0x8000000000012910;
    v18._countAndFlagsBits = 0xD000000000000021;
    v16._rawValue = v15;
    sub_10AF4(v18, v16);

    return (*(v5 + 8))(v8, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_6958()
{
  v1 = swift_allocObject();
  memcpy((v1 + 16), v0, 0x50uLL);
  sub_7208(v0, &v3);
  sub_109E4();
  sub_1D44(&qword_1C3E0, &type metadata accessor for BinaryButtonView);
  return sub_109C4();
}

uint64_t sub_6A24()
{
  v0 = sub_2D44(&qword_1C3E8, &qword_113E8);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v11 - v3;
  sub_6C5C(&unk_18C28, sub_7344, sub_734C);
  v5 = sub_7240(&qword_1C3F0, &qword_113F0);
  v6 = sub_88C0(&qword_1C3F8, &qword_1C3F0, &qword_113F0);
  v12 = v5;
  v13 = v6;
  swift_getOpaqueTypeConformance2();
  v7 = sub_10884();
  v8 = *(v1 + 8);
  v8(v4, v0);
  v14 = &type metadata for AnyView;
  v15 = &protocol witness table for AnyView;
  v12 = v7;
  sub_6C5C(&unk_18C00, sub_7288, sub_7290);
  v9 = sub_10884();
  v8(v4, v0);
  v11[3] = &type metadata for AnyView;
  v11[4] = &protocol witness table for AnyView;
  v11[0] = v9;
  return sub_109D4();
}

uint64_t sub_6C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23[1] = a3;
  v4 = sub_10974();
  v5 = sub_8980(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  __chkstk_darwin(v5);
  sub_8994();
  v12 = v11 - v10;
  v13 = sub_2D44(&qword_1C3F0, &qword_113F0);
  sub_8980(v13);
  v15 = v14;
  v17 = *(v16 + 64);
  sub_8C80();
  __chkstk_darwin(v18);
  v20 = v23 - v19;
  v21 = swift_allocObject();
  memcpy((v21 + 16), v3, 0x50uLL);
  v24 = v3;
  sub_7208(v3, v25);
  sub_10924();
  (*(v7 + 104))(v12, enum case for ButtonItemButtonStyle.Role.preferred(_:), v4);
  sub_88C0(&qword_1C3F8, &qword_1C3F0, &qword_113F0);
  sub_8D4C();
  sub_10894();
  (*(v7 + 8))(v12, v4);
  return (*(v15 + 8))(v20, v13);
}

void sub_6E80(uint64_t *a1)
{
  sub_7894(0, &qword_1C408, SABaseCommand_ptr);
  v2 = *a1;
  v3 = a1[1];
  v4 = sub_8E34();
  if (v4)
  {
    v5 = a1[8];
    if (v5)
    {
      v6 = v4;
      v8 = v5;
      sub_10B14();
    }

    else
    {
      v7 = a1[9];
      sub_10B24();
      sub_1D44(&qword_1C1B0, &type metadata accessor for Context);
      sub_106C4();
      __break(1u);
    }
  }
}

uint64_t sub_6F84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  sub_7298();

  result = sub_10874();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

void sub_6FF0(void *a1)
{
  sub_7894(0, &qword_1C408, SABaseCommand_ptr);
  v2 = a1[4];
  v3 = a1[5];
  v4 = sub_8E34();
  if (v4)
  {
    v5 = a1[8];
    if (v5)
    {
      v6 = v4;
      v8 = v5;
      sub_10B14();
    }

    else
    {
      v7 = a1[9];
      sub_10B24();
      sub_1D44(&qword_1C1B0, &type metadata accessor for Context);
      sub_106C4();
      __break(1u);
    }
  }
}

uint64_t sub_70F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  sub_7298();

  result = sub_10874();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_71A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_7240(uint64_t *a1, uint64_t *a2)
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

unint64_t sub_7298()
{
  result = qword_1C400;
  if (!qword_1C400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C400);
  }

  return result;
}

uint64_t sub_72EC()
{
  sub_71A8(*(v0 + 16), *(v0 + 24));
  v1 = *(v0 + 40);

  sub_71A8(*(v0 + 48), *(v0 + 56));
  v2 = *(v0 + 72);

  return _swift_deallocObject(v0, 96, 7);
}

unint64_t sub_7384()
{
  result = qword_1C418;
  if (!qword_1C418)
  {
    sub_7240(&qword_1C410, &unk_113F8);
    sub_10A34();
    sub_1D44(&qword_1C420, &type metadata accessor for SimpleItemRichView);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C418);
  }

  return result;
}

uint64_t sub_7468()
{
  v2 = type metadata accessor for AppDisambiguationView(0);
  sub_8D20(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = *(v1 + v5);

  v9 = *(v1 + v5 + 16);

  v10 = *(v0 + 28);
  v11 = sub_10A84();
  sub_895C(v11);
  (*(v12 + 8))(v1 + v5 + v10);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_7540@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AppDisambiguationView(0);
  sub_8A90(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return sub_63E4(a1, v7, a2);
}

unint64_t sub_75BC()
{
  result = qword_1C438;
  if (!qword_1C438)
  {
    sub_7240(&qword_1C428, &qword_11420);
    sub_7648();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C438);
  }

  return result;
}

unint64_t sub_7648()
{
  result = qword_1C440;
  if (!qword_1C440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C440);
  }

  return result;
}

uint64_t *sub_769C(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

uint64_t sub_76FC()
{
  v2 = type metadata accessor for AppDisambiguationView(0);
  sub_8D20(v2);
  v4 = v3;
  v6 = v5;
  v7 = *(v4 + 80);
  v8 = (v7 + 16) & ~v7;
  v9 = (*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = v1 + v8;
  v11 = *(v1 + v8);

  v12 = *(v10 + 16);

  v13 = *(v0 + 28);
  v14 = sub_10A84();
  sub_895C(v14);
  (*(v15 + 8))(v10 + v13);

  return _swift_deallocObject(v1, v9 + 8, v7 | 7);
}

uint64_t sub_77E0()
{
  v1 = type metadata accessor for AppDisambiguationView(0);
  sub_8AF8(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = *(v0 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_6768(v0 + v6, v7);
}

uint64_t sub_7894(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_7904()
{
  v2 = type metadata accessor for RequestPaymentConfirmationView(0);
  sub_8C8C(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v1 + v5;
  v9 = sub_2D44(&qword_1C450, &unk_11820);
  sub_895C(v9);
  (*(v10 + 8))(v1 + v5);
  v11 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  v12 = *(v11 + 20);
  v13 = sub_2D44(&qword_1C458, &qword_11440);
  sub_895C(v13);
  (*(v14 + 8))(v1 + v5 + v12);
  v15 = (v1 + v5 + *(v11 + 24));
  v16 = v15[1];

  v17 = v15[3];

  v18 = v15[5];

  v19 = v15[7];

  sub_71A8(v15[8], v15[9]);
  sub_71A8(v15[10], v15[11]);
  v20 = v15[13];

  v21 = v0[5];
  sub_2D44(&qword_1C1C8, &qword_11108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_10664();
    sub_895C(v22);
    (*(v23 + 8))(v8 + v21);
  }

  else
  {
    v24 = *(v8 + v21);
  }

  v25 = v0[7];
  v26 = sub_2D44(&qword_1C1F0, &qword_11248);
  sub_8970(v26);
  v28 = *(v27 + 8);
  v28(v8 + v25, v26);
  v28(v8 + v0[8], v26);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_7B8C()
{
  v1 = *(v0 + 16);
  sub_89F0();
  return sub_37A4(v2, v3);
}

uint64_t sub_7C00(uint64_t (*a1)(void), uint64_t a2, uint64_t a3, uint64_t (*a4)(unint64_t, uint64_t, uint64_t))
{
  v8 = a1(0);
  sub_8A90(v8);
  return a4(v4 + ((*(v9 + 80) + 16) & ~*(v9 + 80)), a2, a3);
}

uint64_t sub_7C80()
{
  v1 = *(v0 + 16);
  sub_89F0();
  return sub_3914(v2, v3);
}

uint64_t sub_7CA0@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_10744();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2D44(&qword_1C1C8, &qword_11108);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v15 - v9);
  sub_8034();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_10664();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = *v10;
    sub_10B84();
    v14 = sub_107A4();
    sub_10634();

    sub_10734();
    swift_getAtKeyPath();

    return (*(v3 + 8))(v6, v2);
  }
}

char *sub_7EA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_2D44(&qword_1C488, &qword_11460);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[16 * v8] <= v12)
    {
      memmove(v12, v13, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_7FA8(uint64_t *a1)
{
  v1 = *a1;

  return sub_10724();
}

uint64_t sub_7FD4()
{
  v1 = *(v0 + 16);
  sub_89F0();
  return sub_3C38(v2, v3, v4, &unk_11820, type metadata accessor for RequestPaymentConfirmationView, &selRef_payer, &qword_1C458, &qword_11440, v5);
}

uint64_t sub_8034()
{
  sub_8B80();
  v3 = sub_2D44(v1, v2);
  sub_8970(v3);
  v5 = *(v4 + 16);
  v6 = sub_8C10();
  v7(v6);
  return v0;
}

uint64_t sub_808C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_2D44(a2, a3);
  sub_895C(v4);
  (*(v5 + 8))(a1);
  return a1;
}

uint64_t sub_80E0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_10714();
  *a1 = result;
  return result;
}

unint64_t sub_8110()
{
  result = qword_1C520;
  if (!qword_1C520)
  {
    sub_7240(&qword_1C518, &qword_11518);
    sub_81C8();
    sub_88C0(&qword_1C538, &qword_1C540, &qword_11528);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C520);
  }

  return result;
}

unint64_t sub_81C8()
{
  result = qword_1C528;
  if (!qword_1C528)
  {
    sub_7240(&qword_1C530, &qword_11520);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C528);
  }

  return result;
}

uint64_t sub_824C()
{
  sub_8B80();
  v1 = sub_2D44(&qword_1C490, &qword_11468);
  sub_8970(v1);
  v3 = *(v2 + 32);
  v4 = sub_8C10();
  v5(v4);
  return v0;
}

uint64_t sub_82AC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_82BC()
{
  sub_82AC(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 40);

  sub_8CA4();

  return _swift_deallocObject(v2, v3, v4);
}

uint64_t sub_82FC()
{
  sub_8B80();
  v3 = sub_2D44(v1, v2);
  sub_8970(v3);
  v5 = *(v4 + 32);
  v6 = sub_8C10();
  v7(v6);
  return v0;
}

uint64_t sub_8354()
{
  v2 = type metadata accessor for SendPaymentConfirmationView(0);
  sub_8C8C(v2);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v7 = *(v6 + 64);
  v8 = v1 + v5;
  v9 = sub_2D44(&qword_1C550, &unk_11990);
  sub_895C(v9);
  (*(v10 + 8))(v1 + v5);
  v11 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  v12 = *(v11 + 20);
  v13 = sub_2D44(&qword_1C558, &qword_11540);
  sub_895C(v13);
  (*(v14 + 8))(v1 + v5 + v12);
  v15 = (v1 + v5 + *(v11 + 24));
  v16 = v15[1];

  v17 = v15[3];

  v18 = v15[5];

  v19 = v15[7];

  sub_71A8(v15[8], v15[9]);
  sub_71A8(v15[10], v15[11]);
  v20 = v15[13];

  v21 = v0[5];
  sub_2D44(&qword_1C1C8, &qword_11108);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = sub_10664();
    sub_895C(v22);
    (*(v23 + 8))(v8 + v21);
  }

  else
  {
    v24 = *(v8 + v21);
  }

  v25 = v0[7];
  v26 = sub_2D44(&qword_1C1F0, &qword_11248);
  sub_8970(v26);
  v28 = *(v27 + 8);
  v28(v8 + v25, v26);
  v28(v8 + v0[8], v26);

  return _swift_deallocObject(v1, v5 + v7, v4 | 7);
}

uint64_t sub_85B4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_8D58();
  v5 = v4(v3);
  sub_8A90(v5);
  v7 = v2 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a2(v7);
}

uint64_t sub_86BC()
{
  v1 = *(v0 + 16);
  sub_89D8();
  return sub_37A4(v2, v3);
}

uint64_t sub_8730()
{
  v1 = *(v0 + 16);
  sub_89D8();
  return sub_3914(v2, v3);
}

uint64_t sub_8750(void *a1)
{
  v2 = [a1 note];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_10B64();

  return v3;
}

uint64_t sub_87C0()
{
  v1 = *(v0 + 16);
  sub_89D8();
  return sub_3C38(v2, v3, v4, &unk_11990, type metadata accessor for SendPaymentConfirmationView, &selRef_payee, &qword_1C558, &qword_11540, v5);
}

uint64_t sub_88C0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_7240(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_89A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v5 = a3 & 1;

  return Text.init(_:tableName:bundle:comment:)(a1, a2, v5, a4, 0, 0, 0, 0);
}

uint64_t sub_8A1C(unint64_t *a1)
{

  return sub_88C0(a1, v1, v2);
}

char *sub_8A48@<X0>(unint64_t a1@<X8>)
{

  return sub_7EA0((a1 > 1), v1, 1, v2);
}

void sub_8A6C(uint64_t a1@<X8>)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = v2;
  *(a1 + 24) = v3;
  *(a1 + 32) = v4;
  *(a1 + 40) = 0;
}

void sub_8A7C()
{
  v2 = *(v1 - 80);
  v3 = *(v1 - 72);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16) + 1;
}

uint64_t sub_8AB4(uint64_t a1)
{
  *(v1 + 472) = v2;
  *(v1 + 480) = v3;
  *(v1 + 488) = v6;
  *(v1 + 496) = v5;
  v8 = *(v1 + 592);
  *(v1 + 504) = *(v1 + 576);
  *(v1 + 520) = v8;
  *(v1 + 536) = *(v1 + 608);
  *(v1 + 552) = a1;
  *(v1 + 560) = v4;

  return static Font.Weight.regular.getter();
}

void sub_8B08()
{
  *(v1 + 16) = v0;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v2;
  *(v5 + 40) = v3;
}

uint64_t sub_8B18(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_88C0(a1, a2, a3);
}

void sub_8B3C()
{
  *(v2 - 80) = v0;
  *(v2 - 72) = v1;
  v4._countAndFlagsBits = 0x636E65727275632ELL;
  v4._object = 0xEF746E756F6D4179;

  sub_10B74(v4);
}

void sub_8B8C()
{
  *(v2 - 80) = v0;
  *(v2 - 72) = v1;
  v4._countAndFlagsBits = 0x756F6D416565662ELL;
  v4._object = 0xEA0000000000746ELL;

  sub_10B74(v4);
}

uint64_t sub_8BBC()
{

  return ScaledMetric.init(wrappedValue:)(v2 - 168, v1, v0);
}

uint64_t sub_8BD8(uint64_t a1, uint64_t a2)
{

  return _FrameLayout.init(width:height:alignment:)(0, 1, 0, 1, a1, a2);
}

uint64_t sub_8C28()
{

  return sub_105D4();
}

void sub_8C40()
{
  *(v2 - 80) = v0;
  *(v2 - 72) = v1;
  v4._countAndFlagsBits = 0x65746F6E2ELL;
  v4._object = 0xE500000000000000;

  sub_10B74(v4);
}

uint64_t sub_8CBC()
{

  return (static Alignment.center.getter)();
}

void sub_8D00()
{
  v2 = *(v1 - 80);
  v3 = *(v1 - 72);
  v4 = *(v0 + 24);
  v5 = *(v0 + 16) + 1;
}

uint64_t sub_8D64(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3 & 1;
  *(v4 + 24) = a4;
  return result;
}

void sub_8D84()
{
  *(v0 - 80) = 0;
  *(v0 - 72) = 0xE000000000000000;

  _StringGuts.grow(_:)(17);
}

uint64_t sub_8DA4()
{

  return sub_10B14();
}

uint64_t sub_8DC4()
{

  return sub_109C4();
}

uint64_t sub_8DE4()
{

  return sub_106C4();
}

uint64_t sub_8E04()
{

  return sub_82FC();
}

void sub_8E1C()
{
}

uint64_t sub_8E34()
{
  sub_8B80();
  v0 = objc_opt_self();
  isa = sub_10584().super.isa;
  v9[0] = 0;
  v2 = [v0 propertyListWithData:isa options:0 format:0 error:v9];

  if (!v2)
  {
    v7 = v9[0];
    sub_10574();

    swift_willThrow();

    return 0;
  }

  v3 = v9[0];
  sub_10BA4();
  swift_unknownObjectRelease();
  sub_2D44(&qword_1CA08, &qword_123B0);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  v4 = objc_opt_self();
  result = sub_D914(v8, v4);
  if (result)
  {
    v6 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_8FE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_8FB0();
  *a1 = result;
  return result;
}

uint64_t sub_900C(uint64_t a1)
{
  v2 = sub_EF7C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_9048(uint64_t a1)
{
  v2 = sub_EF7C();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_9084()
{
  sub_10034();
  v2 = v1;
  v3 = sub_2D44(&qword_1C9F0, &qword_123A8);
  sub_8980(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_8C80();
  __chkstk_darwin(v8);
  sub_1014C();
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = sub_101C4();
  sub_10064(v11, v12);
  sub_EF7C();
  sub_1013C();
  sub_10CC4();
  v24[112] = 0;
  v13 = sub_101C4();
  sub_2D44(v13, v14);
  sub_FF14(&qword_1C9F8);
  sub_100C4();
  sub_101F8();
  if (v0)
  {
    v18 = *(v5 + 8);
    v19 = sub_101D0();
    v20(v19);
  }

  else
  {
    v15 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
    sub_102E4(v15);
    sub_2D44(&qword_1C458, &qword_11440);
    sub_FEBC();
    sub_88C0(v16, v17, &qword_11440);
    sub_10094();
    sub_102B8();
    memcpy(v24, &unk_11820 + &qword_1C458, 0x70uLL);
    sub_1036C();
    sub_F184();
    sub_101F8();
    sub_10234();
    sub_F1D8(&v23);
    v21 = sub_101D0();
    v22(v21);
  }

  sub_1004C();
}

void sub_9264()
{
  sub_10034();
  sub_10338(v2);
  v26 = sub_2D44(&qword_1C458, &qword_11440);
  sub_8980(v26);
  v4 = *(v3 + 64);
  sub_8C80();
  __chkstk_darwin(v5);
  sub_FE7C();
  v6 = sub_2D44(&qword_1C450, &unk_11820);
  sub_8980(v6);
  v8 = *(v7 + 64);
  sub_8C80();
  __chkstk_darwin(v9);
  sub_FFC0();
  v27 = sub_2D44(&qword_1C988, &qword_12388);
  sub_8980(v27);
  v11 = *(v10 + 64);
  sub_8C80();
  __chkstk_darwin(v12);
  sub_FFB0();
  v13 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  v14 = sub_8970(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_8994();
  v17 = v0[3];
  v18 = v0[4];
  sub_FF6C();
  sub_EF7C();
  sub_10258();
  if (v1)
  {
    sub_D514(v0);
  }

  else
  {
    sub_100EC();
    sub_FFCC(&qword_1C998, &qword_1C450, &unk_11820);
    sub_100C4();
    sub_FEF0();
    sub_10C24();
    v19 = sub_100D0();
    v20(v19);
    sub_FF8C(&qword_1C9A0, &qword_1C458, &qword_11440);
    sub_100C4();
    sub_FEF0();
    sub_10C24();
    v21 = sub_FFF0();
    v22(v21);
    sub_EECC();
    sub_1007C();
    sub_10C24();
    v23 = *(v17 + 8);
    v24 = sub_FF40();
    v25(v24);
    sub_10184();
    sub_1038C();
    sub_D514(v0);
    sub_DD4C(v18, type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel);
  }

  sub_1004C();
}

uint64_t sub_9618()
{
  sub_8B80();
  v3 = v1 == 0x746E65746E69 && v2 == 0xE600000000000000;
  if (v3 || (sub_1029C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v5 = v1 == 0x65736E6F70736572 && v0 == 0xE800000000000000;
    if (v5 || (sub_1029C() & 1) != 0)
    {

      return 1;
    }

    else if (v1 == 0x616D7269666E6F63 && v0 == 0xEC0000006E6F6974)
    {

      return 2;
    }

    else
    {
      v7 = sub_1029C();

      if (v7)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_9738(char a1)
{
  if (!a1)
  {
    return 0x746E65746E69;
  }

  if (a1 == 1)
  {
    return 0x65736E6F70736572;
  }

  return 0x616D7269666E6F63;
}

void sub_9794()
{
  sub_10034();
  v2 = v1;
  v3 = sub_2D44(&qword_1C9D0, &qword_123A0);
  sub_8980(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_8C80();
  __chkstk_darwin(v8);
  sub_1014C();
  v9 = *(v2 + 24);
  v10 = *(v2 + 32);
  v11 = sub_101C4();
  sub_10064(v11, v12);
  sub_EE78();
  sub_1013C();
  sub_10CC4();
  v24[112] = 0;
  v13 = sub_101C4();
  sub_2D44(v13, v14);
  sub_FF14(&qword_1C9D8);
  sub_100C4();
  sub_101F8();
  if (v0)
  {
    v18 = *(v5 + 8);
    v19 = sub_101D0();
    v20(v19);
  }

  else
  {
    v15 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
    sub_102E4(v15);
    sub_2D44(&qword_1C558, &qword_11540);
    sub_FEBC();
    sub_88C0(v16, v17, &qword_11540);
    sub_10094();
    sub_102B8();
    memcpy(v24, &unk_11990 + &qword_1C558, 0x70uLL);
    sub_1036C();
    sub_F184();
    sub_101F8();
    sub_10234();
    sub_F1D8(&v23);
    v21 = sub_101D0();
    v22(v21);
  }

  sub_1004C();
}

void sub_9974()
{
  sub_10034();
  sub_10338(v2);
  v26 = sub_2D44(&qword_1C558, &qword_11540);
  sub_8980(v26);
  v4 = *(v3 + 64);
  sub_8C80();
  __chkstk_darwin(v5);
  sub_FE7C();
  v6 = sub_2D44(&qword_1C550, &unk_11990);
  sub_8980(v6);
  v8 = *(v7 + 64);
  sub_8C80();
  __chkstk_darwin(v9);
  sub_FFC0();
  v27 = sub_2D44(&qword_1C960, &qword_12380);
  sub_8980(v27);
  v11 = *(v10 + 64);
  sub_8C80();
  __chkstk_darwin(v12);
  sub_FFB0();
  v13 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  v14 = sub_8970(v13);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  sub_8994();
  v17 = v0[3];
  v18 = v0[4];
  sub_FF6C();
  sub_EE78();
  sub_10258();
  if (v1)
  {
    sub_D514(v0);
  }

  else
  {
    sub_100EC();
    sub_FFCC(&qword_1C970, &qword_1C550, &unk_11990);
    sub_100C4();
    sub_FEF0();
    sub_10C24();
    v19 = sub_100D0();
    v20(v19);
    sub_FF8C(&qword_1C978, &qword_1C558, &qword_11540);
    sub_100C4();
    sub_FEF0();
    sub_10C24();
    v21 = sub_FFF0();
    v22(v21);
    sub_EECC();
    sub_1007C();
    sub_10C24();
    v23 = *(v17 + 8);
    v24 = sub_FF40();
    v25(v24);
    sub_10184();
    sub_1038C();
    sub_D514(v0);
    sub_DD4C(v18, type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel);
  }

  sub_1004C();
}

uint64_t sub_9D28(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4C6D7269666E6F63 && a2 == 0xEC0000006C656261;
  if (v4 || (sub_10C74() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x614C6C65636E6163 && a2 == 0xEB000000006C6562;
    if (v6 || (sub_10C74() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6562614C65746F6ELL && a2 == 0xE90000000000006CLL;
      if (v7 || (sub_10C74() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6C6562614C656566 && a2 == 0xE800000000000000;
        if (v8 || (sub_10C74() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x446D7269666E6F63 && a2 == 0xE900000000000049;
          if (v9 || (sub_10C74() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x49446C65636E6163 && a2 == 0xE800000000000000;
            if (v10 || (sub_10C74() & 1) != 0)
            {

              return 5;
            }

            else if (a1 == 0x6449707061 && a2 == 0xE500000000000000)
            {

              return 6;
            }

            else
            {
              v12 = sub_10C74();

              if (v12)
              {
                return 6;
              }

              else
              {
                return 7;
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_9F70(char a1)
{
  result = 0x4C6D7269666E6F63;
  switch(a1)
  {
    case 1:
      result = 0x614C6C65636E6163;
      break;
    case 2:
      result = 0x6562614C65746F6ELL;
      break;
    case 3:
      result = 0x6C6562614C656566;
      break;
    case 4:
      result = 0x446D7269666E6F63;
      break;
    case 5:
      result = 0x49446C65636E6163;
      break;
    case 6:
      result = 0x6449707061;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_A070(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2D44(&qword_1CA20, &qword_123C0);
  sub_8980(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_8C80();
  __chkstk_darwin(v10);
  sub_FFB0();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  sub_FF6C();
  sub_F208();
  sub_1034C();
  v13 = *v3;
  v14 = v3[1];
  LOBYTE(v29) = 0;
  sub_FEF0();
  sub_10C54();
  if (!v2)
  {
    v15 = v3[2];
    v16 = v3[3];
    sub_FE40(1);
    sub_10C54();
    v17 = v3[4];
    v18 = v3[5];
    sub_FE40(2);
    sub_10C54();
    v19 = v3[6];
    v20 = v3[7];
    sub_FE40(3);
    sub_10C54();
    v31 = *(v3 + 4);
    v29 = *(v3 + 4);
    v28 = 4;
    sub_EFD0(&v31, v27);
    sub_F02C();
    sub_FE54();
    sub_10C64();
    sub_71A8(v29, *(&v29 + 1));
    v29 = *(v3 + 5);
    v30 = v29;
    v28 = 5;
    sub_EFD0(&v30, v27);
    sub_FE54();
    sub_10C64();
    sub_71A8(v29, *(&v29 + 1));
    v21 = v3[12];
    v22 = v3[13];
    sub_FE40(6);
    sub_10C54();
  }

  v23 = *(v7 + 8);
  v24 = sub_FF40();
  return v25(v24);
}

void sub_A274()
{
  sub_10034();
  v2 = v1;
  v4 = v3;
  v5 = sub_2D44(&qword_1CA10, &qword_123B8);
  sub_8980(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_8C80();
  __chkstk_darwin(v10);
  v12 = &v32 - v11;
  v13 = v2[4];
  sub_10064(v2, v2[3]);
  sub_F208();
  sub_10CB4();
  if (v0)
  {
    sub_D514(v2);
  }

  else
  {
    LOBYTE(v44) = 0;
    v14 = sub_FF4C();
    v42 = v15;
    LOBYTE(v44) = 1;
    v16 = sub_FF4C();
    v41 = v17;
    LOBYTE(v44) = 2;
    v35 = sub_FF4C();
    v36 = v16;
    v40 = v18;
    LOBYTE(v44) = 3;
    v19 = sub_FF4C();
    v37 = v20;
    v33 = v19;
    LOBYTE(v43[0]) = 4;
    sub_ED7C();
    sub_101AC();
    *(v22 - 256) = v21;
    sub_10C24();
    v38 = v44;
    v39 = v45;
    LOBYTE(v43[0]) = 5;
    sub_101AC();
    v24 = *(v23 - 256);
    sub_10C24();
    v32 = v14;
    v25 = v45;
    v34 = v44;
    v26 = sub_10C14();
    v28 = v27;
    (*(v7 + 8))(v12, v5);
    v43[0] = v32;
    v43[1] = v42;
    v43[2] = v36;
    v43[3] = v41;
    v43[4] = v35;
    v29 = v40;
    v43[5] = v40;
    v43[6] = v33;
    v30 = v37;
    v31 = v38;
    v43[7] = v37;
    v43[8] = v38;
    v43[9] = v39;
    v43[10] = v34;
    v43[11] = v25;
    v43[12] = v26;
    v43[13] = v28;
    sub_F14C(v43, &v44);
    sub_D514(v2);
    v44 = v32;
    v45 = v42;
    v46 = v36;
    v47 = v41;
    v48 = v35;
    v49 = v29;
    v50 = v33;
    v51 = v30;
    v52 = v31;
    v53 = v39;
    v54 = v34;
    v55 = v25;
    v56 = v26;
    v57 = v28;
    sub_F1D8(&v44);
    memcpy(v4, v43, 0x70uLL);
  }

  sub_1004C();
}

uint64_t sub_A768(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7263736544707061 && a2 == 0xEE006E6F69747069;
  if (v4 || (sub_10C74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74706D6F7270 && a2 == 0xE600000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_10C74();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_A874(char a1)
{
  if (a1)
  {
    return 0x74706D6F7270;
  }

  else
  {
    return 0x7263736544707061;
  }
}

void sub_A8B4()
{
  sub_10034();
  v3 = v2;
  v4 = sub_2D44(&qword_1C9B8, &qword_12398);
  sub_8980(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_8C80();
  __chkstk_darwin(v9);
  sub_FE7C();
  v10 = v3[4];
  sub_10064(v3, v3[3]);
  sub_EDD0();
  sub_10CC4();
  sub_2D44(&qword_1C948, &qword_12378);
  sub_F080(&qword_1C9C0, sub_F0F8);
  sub_10C64();
  if (!v0)
  {
    sub_10018();
    sub_10C54();
  }

  (*(v6 + 8))(v1, v4);
  sub_1004C();
}

uint64_t sub_AA50(uint64_t *a1)
{
  v3 = sub_2D44(&qword_1C938, &qword_12370);
  sub_8980(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_8C80();
  __chkstk_darwin(v8);
  sub_FE7C();
  v9 = a1[3];
  sub_10064(a1, v9);
  sub_EDD0();
  sub_10210();
  if (!v1)
  {
    sub_2D44(&qword_1C948, &qword_12378);
    sub_F080(&qword_1C950, sub_EE24);
    sub_10C24();
    v9 = v14;
    sub_101DC();
    v11 = *(v5 + 8);
    v12 = sub_10088();
    v13(v12);
  }

  sub_D514(a1);
  return v9;
}

uint64_t sub_AC3C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x427972616D697270 && a2 == 0xEF49446E6F747475;
  if (v4 || (sub_10C74() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x8000000000012A80 == a2;
    if (v6 || (sub_10C74() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000012AA0 == a2;
      if (v7 || (sub_10C74() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000014 && 0x8000000000012AC0 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_10C74();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

unint64_t sub_ADAC(char a1)
{
  result = 0x427972616D697270;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_AE60(uint64_t a1)
{
  v3 = v1;
  v5 = sub_2D44(&qword_1C9A8, &qword_12390);
  sub_8980(v5);
  v7 = v6;
  v9 = *(v8 + 64);
  sub_8C80();
  __chkstk_darwin(v10);
  sub_FFB0();
  v11 = *(a1 + 24);
  v12 = *(a1 + 32);
  sub_FF6C();
  sub_ED28();
  sub_1034C();
  v25 = *v3;
  v23 = *v3;
  v22 = 0;
  sub_EFD0(&v25, v21);
  sub_F02C();
  sub_FE54();
  sub_10C64();
  sub_71A8(v23, *(&v23 + 1));
  if (!v2)
  {
    v13 = *(v3 + 2);
    v14 = *(v3 + 3);
    sub_FE40(1);
    sub_10C54();
    v23 = v3[2];
    v24 = v23;
    v22 = 2;
    sub_EFD0(&v24, v21);
    sub_FE54();
    sub_10C64();
    sub_71A8(v23, *(&v23 + 1));
    v15 = *(v3 + 6);
    v16 = *(v3 + 7);
    sub_FE40(3);
    sub_10C54();
  }

  v17 = *(v7 + 8);
  v18 = sub_FF40();
  return v19(v18);
}

void sub_B008()
{
  sub_10034();
  v2 = v1;
  v4 = v3;
  v5 = sub_2D44(&qword_1C920, &qword_12368);
  sub_8980(v5);
  v7 = *(v6 + 64);
  sub_8C80();
  __chkstk_darwin(v8);
  v9 = v2[4];
  sub_10064(v2, v2[3]);
  sub_ED28();
  sub_10CB4();
  if (v0)
  {
    sub_D514(v2);
  }

  else
  {
    sub_ED7C();
    sub_10110();
    sub_10C24();
    v21 = v26[0];
    LOBYTE(v26[0]) = 1;
    v10 = sub_10C14();
    *(&v20 + 1) = v11;
    *&v20 = v10;
    LOBYTE(v22) = 2;
    sub_10110();
    sub_10C24();
    v19 = v26[0];
    v12 = sub_10C14();
    v14 = v13;
    v15 = sub_FE9C();
    v16(v15);
    v22 = v21;
    v23 = v20;
    v24 = v19;
    *&v25 = v12;
    *(&v25 + 1) = v14;
    sub_1CE8(&v22, v26);
    sub_D514(v2);
    v26[0] = v21;
    v26[1] = v20;
    v26[2] = v19;
    v27 = v12;
    v28 = v14;
    sub_1DE0(v26);
    v17 = v23;
    *v4 = v22;
    v4[1] = v17;
    v18 = v25;
    v4[2] = v24;
    v4[3] = v18;
  }

  sub_1004C();
}

uint64_t sub_B318(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD00000000000001ALL && 0x8000000000012A00 == a2;
  if (v4 || (sub_10C74() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000017 && 0x8000000000012A20 == a2;
    if (v6 || (sub_10C74() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000011 && 0x8000000000012A40 == a2;
      if (v7 || (sub_10C74() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0xD000000000000012 && 0x8000000000012A60 == a2)
      {

        return 3;
      }

      else
      {
        v9 = sub_10C74();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

Swift::Int sub_B474(unsigned __int8 a1)
{
  sub_10C84();
  sub_10C94(a1);
  return sub_10CA4();
}

unint64_t sub_B4BC(char a1)
{
  result = 0xD00000000000001ALL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000017;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_B550(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_10C74();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int sub_B5C0()
{
  sub_10C84();
  sub_10C94(0);
  return sub_10CA4();
}

void sub_B604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10034();
  a19 = v21;
  a20 = v22;
  v114 = v20;
  v24 = v23;
  v113 = sub_2D44(&qword_1C648, &qword_117F8);
  sub_8980(v113);
  v112 = v25;
  v27 = *(v26 + 64);
  sub_8C80();
  __chkstk_darwin(v28);
  sub_FFC0();
  sub_1032C(v29);
  v111 = sub_2D44(&qword_1C650, &qword_11800);
  sub_8980(v111);
  v110 = v30;
  v32 = *(v31 + 64);
  sub_8C80();
  __chkstk_darwin(v33);
  sub_FFC0();
  sub_1032C(v34);
  v109 = sub_2D44(&qword_1C658, &qword_11808);
  sub_8980(v109);
  v107 = v35;
  v37 = *(v36 + 64);
  sub_8C80();
  __chkstk_darwin(v38);
  sub_FFC0();
  sub_1032C(v39);
  v105 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
  v40 = sub_8970(v105);
  v42 = *(v41 + 64);
  __chkstk_darwin(v40);
  sub_8994();
  sub_1032C(v44 - v43);
  v104 = sub_2D44(&qword_1C660, &qword_11810);
  sub_8980(v104);
  v103 = v45;
  v47 = *(v46 + 64);
  sub_8C80();
  __chkstk_darwin(v48);
  v50 = &v103 - v49;
  v51 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
  v52 = sub_8970(v51);
  v54 = *(v53 + 64);
  __chkstk_darwin(v52);
  sub_8994();
  v57 = v56 - v55;
  v58 = type metadata accessor for SiriPaymentsSnippetModel(0);
  v59 = sub_8970(v58);
  v61 = *(v60 + 64);
  __chkstk_darwin(v59);
  sub_8994();
  v64 = (v63 - v62);
  v65 = sub_2D44(&qword_1C668, &qword_11818);
  v66 = sub_8980(v65);
  v115 = v67;
  v116 = v66;
  v69 = *(v68 + 64);
  sub_8C80();
  __chkstk_darwin(v70);
  sub_1014C();
  v72 = *(v24 + 24);
  v71 = *(v24 + 32);
  v73 = sub_101C4();
  sub_10064(v73, v74);
  sub_D870();
  sub_1013C();
  sub_10CC4();
  sub_FE28();
  sub_EF20();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v57 = v106;
      sub_DCF0();
      LOBYTE(v121) = 1;
      sub_DB60();
      v75 = v116;
      sub_1007C();
      sub_10C44();
      sub_FEFC();
      sub_D778(v97, v98);
      sub_10C64();
      v99 = sub_FE6C();
      v100(v99);
      v80 = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel;
      goto LABEL_6;
    case 2u:
      v81 = *v64;
      v82 = v64[1];
      v83 = v64[2];
      LOBYTE(v121) = 2;
      sub_DAB8();
      v84 = v108;
      v85 = v116;
      sub_10C44();
      *&v121 = v81;
      *(&v121 + 1) = v82;
      *&v122 = v83;
      sub_DC9C();
      v86 = v111;
      sub_10C64();
      sub_10028(&a15);
      v87(v84, v86);
      v88 = sub_1012C();
      v89(v88, v85);

      break;
    case 3u:
      v90 = *(v64 + 1);
      v121 = *v64;
      v122 = v90;
      v91 = *(v64 + 3);
      v123 = *(v64 + 2);
      v124 = v91;
      LOBYTE(v117) = 3;
      sub_DA10();
      v92 = v116;
      sub_1007C();
      sub_10C44();
      v117 = v121;
      v118 = v122;
      v119 = v123;
      v120 = v124;
      sub_DC48();
      sub_10C64();
      v93 = sub_FE6C();
      v94(v93);
      v95 = sub_1012C();
      v96(v95, v92);
      sub_1DE0(&v121);
      break;
    default:
      sub_DCF0();
      LOBYTE(v121) = 0;
      sub_DBD4();
      v75 = v116;
      sub_1007C();
      sub_10C44();
      sub_FED8();
      sub_D778(v76, v77);
      v78 = v104;
      sub_10C64();
      sub_10028(&v125);
      v79(v50, v78);
      v80 = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel;
LABEL_6:
      sub_DD4C(v57, v80);
      v101 = sub_1012C();
      v102(v101, v75);
      break;
  }

  sub_1004C();
}

void sub_BCF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_10034();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v140 = v25;
  v139 = sub_2D44(&qword_1C5D0, &qword_117C8);
  sub_8980(v139);
  v136 = v26;
  v28 = *(v27 + 64);
  sub_8C80();
  __chkstk_darwin(v29);
  sub_FFC0();
  v135 = v30;
  v31 = sub_2D44(&qword_1C5D8, &qword_117D0);
  v32 = sub_8980(v31);
  v130 = v33;
  v131 = v32;
  v35 = *(v34 + 64);
  sub_8C80();
  __chkstk_darwin(v36);
  sub_FFC0();
  v134 = v37;
  v129 = sub_2D44(&qword_1C5E0, &qword_117D8);
  sub_8980(v129);
  v128 = v38;
  v40 = *(v39 + 64);
  sub_8C80();
  __chkstk_darwin(v41);
  sub_FFC0();
  v133 = v42;
  v127 = sub_2D44(&qword_1C5E8, &qword_117E0);
  sub_8980(v127);
  v126 = v43;
  v45 = *(v44 + 64);
  sub_8C80();
  __chkstk_darwin(v46);
  sub_FFC0();
  v132 = v47;
  v141 = sub_2D44(&qword_1C5F0, &qword_117E8);
  sub_8980(v141);
  v138 = v48;
  v50 = *(v49 + 64);
  sub_8C80();
  __chkstk_darwin(v51);
  v53 = &v120 - v52;
  v137 = type metadata accessor for SiriPaymentsSnippetModel(0);
  v54 = sub_8970(v137);
  v56 = *(v55 + 64);
  v57 = __chkstk_darwin(v54);
  v59 = &v120 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v57);
  v62 = &v120 - v61;
  v63 = __chkstk_darwin(v60);
  v65 = &v120 - v64;
  v66 = __chkstk_darwin(v63);
  v68 = &v120 - v67;
  __chkstk_darwin(v66);
  v70 = v24[3];
  v69 = v24[4];
  v142 = v24;
  sub_FF6C();
  sub_D870();
  sub_10CB4();
  if (v20)
  {
    goto LABEL_9;
  }

  v124 = v68;
  v122 = v62;
  v125 = v65;
  v123 = v59;
  v71 = sub_10C34();
  v75 = sub_D8CC(v71, 0);
  if (v73 == v74 >> 1)
  {
    goto LABEL_8;
  }

  v121 = 0;
  if (v73 >= (v74 >> 1))
  {
    __break(1u);
    JUMPOUT(0xC6D0);
  }

  v76 = *(v72 + v73);
  sub_D994(v73 + 1, v74 >> 1, v75, v72, v73, v74);
  v78 = v77;
  v80 = v79;
  swift_unknownObjectRelease();
  if (v78 != v80 >> 1)
  {
LABEL_8:
    v86 = v137;
    v87 = sub_10BE4();
    swift_allocError();
    v89 = v88;
    v90 = *(sub_2D44(&qword_1C600, &qword_117F0) + 48);
    *v89 = v86;
    v91 = v141;
    sub_10C04();
    sub_10BD4();
    (*(*(v87 - 8) + 104))(v89, enum case for DecodingError.typeMismatch(_:), v87);
    swift_willThrow();
    swift_unknownObjectRelease();
    v92 = sub_FEAC();
    v93(v92, v91);
LABEL_9:
    v94 = v142;
    goto LABEL_10;
  }

  v81 = v121;
  v82 = v136;
  switch(v76)
  {
    case 1:
      LOBYTE(v143) = 1;
      sub_DB60();
      sub_1015C();
      type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(0);
      sub_FEFC();
      sub_D778(v100, v101);
      sub_10C24();
      v102 = v138;
      swift_unknownObjectRelease();
      sub_10028(&a17);
      v117 = sub_10320();
      v118(v117);
      (*(v102 + 8))(v53, v76);
      swift_storeEnumTagMultiPayload();
      sub_FE28();
      sub_DCF0();
      v119 = v142;
      goto LABEL_18;
    case 2:
      LOBYTE(v143) = 2;
      sub_DAB8();
      v83 = v141;
      sub_1007C();
      sub_10BF4();
      if (v81)
      {
        goto LABEL_12;
      }

      sub_DB0C();
      sub_10C24();
      v99 = v138;
      swift_unknownObjectRelease();
      v103 = sub_FE6C();
      v104(v103);
      (*(v99 + 8))(v53, v83);
      v105 = v144;
      v106 = v122;
      *v122 = v143;
      *(v106 + 2) = v105;
LABEL_16:
      swift_storeEnumTagMultiPayload();
      sub_FE28();
      goto LABEL_17;
    case 3:
      LOBYTE(v143) = 3;
      sub_DA10();
      sub_1015C();
      sub_DA64();
      sub_10C24();
      v96 = (v82 + 8);
      v97 = (v138 + 8);
      swift_unknownObjectRelease();
      v107 = *v96;
      v108 = sub_10320();
      v109(v108);
      (*v97)(v53, v76);
      v110 = v144;
      v111 = v123;
      *v123 = v143;
      v111[1] = v110;
      v112 = v146;
      v111[2] = v145;
      v111[3] = v112;
      goto LABEL_16;
    default:
      LOBYTE(v143) = 0;
      sub_DBD4();
      v83 = v141;
      sub_1007C();
      sub_10BF4();
      if (v81)
      {
LABEL_12:
        v95 = sub_FEAC();
        v98(v95, v83);
        swift_unknownObjectRelease();
        goto LABEL_9;
      }

      type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(0);
      sub_FED8();
      sub_D778(v84, v85);
      sub_10018();
      sub_10C24();
      swift_unknownObjectRelease();
      v113 = sub_FE6C();
      v114(v113);
      v115 = sub_FEAC();
      v116(v115, v141);
      swift_storeEnumTagMultiPayload();
      sub_FE28();
LABEL_17:
      sub_DCF0();
      v119 = v142;
LABEL_18:
      sub_FE28();
      sub_DCF0();
      v94 = v119;
      break;
  }

LABEL_10:
  sub_D514(v94);
  sub_1004C();
}

uint64_t sub_C74C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_9618();
  *a1 = result;
  return result;
}

uint64_t sub_C774(uint64_t a1)
{
  v2 = sub_EE78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C7B0(uint64_t a1)
{
  v2 = sub_EE78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_C824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_9D28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C84C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_9F68();
  *a1 = result;
  return result;
}

uint64_t sub_C874(uint64_t a1)
{
  v2 = sub_F208();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_C8B0(uint64_t a1)
{
  v2 = sub_F208();

  return CodingKey.debugDescription.getter(a1, v2);
}

void sub_C8EC(void *a1@<X8>)
{
  sub_A274();
  if (!v1)
  {
    memcpy(a1, v3, 0x70uLL);
  }
}

uint64_t sub_C988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_A768(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_C9B0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_A834();
  *a1 = result;
  return result;
}

uint64_t sub_C9D8(uint64_t a1)
{
  v2 = sub_EDD0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CA14(uint64_t a1)
{
  v2 = sub_EDD0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CA50@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_AA50(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

void sub_CA80()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_A8B4();
}

uint64_t sub_CAA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_AC3C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_CAD0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_ADA4();
  *a1 = result;
  return result;
}

uint64_t sub_CAF8(uint64_t a1)
{
  v2 = sub_ED28();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CB34(uint64_t a1)
{
  v2 = sub_ED28();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_CB70@<D0>(_OWORD *a1@<X8>)
{
  sub_B008();
  if (!v1)
  {
    *a1 = v4;
    a1[1] = v5;
    result = *&v6;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_CBF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B550(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_CC3C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_B2DC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_CC68(uint64_t a1)
{
  v2 = sub_DAB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CCA4(uint64_t a1)
{
  v2 = sub_DAB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CCE0(uint64_t a1)
{
  v2 = sub_DA10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CD1C(uint64_t a1)
{
  v2 = sub_DA10();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_CD58()
{
  v1 = *v0;
  sub_10C84();
  sub_10C94(v1);
  return sub_10CA4();
}

uint64_t sub_CDA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_B318(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_CDCC(uint64_t a1)
{
  v2 = sub_D870();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE08(uint64_t a1)
{
  v2 = sub_D870();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CE44(uint64_t a1)
{
  v2 = sub_DBD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CE80(uint64_t a1)
{
  v2 = sub_DBD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_CEBC()
{
  sub_10C84();
  sub_10C94(0);
  return sub_10CA4();
}

uint64_t sub_CEFC(uint64_t a1)
{
  v2 = sub_DB60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_CF38(uint64_t a1)
{
  v2 = sub_DB60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_CF94(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E707061 && a2 == 0xE700000000000000;
  if (v4 || (sub_10C74() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000644965)
  {

    return 1;
  }

  else
  {
    v7 = sub_10C74();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int sub_D060(char a1)
{
  sub_10C84();
  sub_10C94(a1 & 1);
  return sub_10CA4();
}

uint64_t sub_D0A8(char a1)
{
  if (a1)
  {
    return 0x6C646E7542707061;
  }

  else
  {
    return 0x656D614E707061;
  }
}

uint64_t sub_D120@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_CF94(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_D148(uint64_t a1)
{
  v2 = sub_D340();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_D184(uint64_t a1)
{
  v2 = sub_D340();

  return CodingKey.debugDescription.getter(a1, v2);
}

void AppDescription.encode(to:)()
{
  sub_10034();
  v3 = v2;
  v4 = sub_2D44(&qword_1C590, &qword_11570);
  sub_8980(v4);
  v6 = v5;
  v8 = *(v7 + 64);
  sub_8C80();
  __chkstk_darwin(v9);
  sub_FE7C();
  v10 = v3[4];
  sub_10064(v3, v3[3]);
  sub_D340();
  sub_10CC4();
  sub_10018();
  sub_10C54();
  if (!v0)
  {
    sub_10018();
    sub_10C54();
  }

  (*(v6 + 8))(v1, v4);
  sub_1004C();
}

void *sub_D2FC(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_D340()
{
  result = qword_1C598;
  if (!qword_1C598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C598);
  }

  return result;
}

void AppDescription.init(from:)()
{
  sub_10034();
  v2 = v1;
  v3 = sub_2D44(&qword_1C5A0, &qword_11578);
  sub_8980(v3);
  v5 = v4;
  v7 = *(v6 + 64);
  sub_8C80();
  __chkstk_darwin(v8);
  sub_FE7C();
  v9 = v2[4];
  sub_10064(v2, v2[3]);
  sub_D340();
  sub_10210();
  if (!v0)
  {
    sub_101DC();
    sub_101DC();
    v10 = *(v5 + 8);
    v11 = sub_10088();
    v12(v11);
  }

  sub_D514(v2);
  sub_1004C();
}

uint64_t sub_D514(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

void sub_D560(void *a1@<X8>)
{
  AppDescription.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    a1[1] = v4;
    a1[2] = v5;
    a1[3] = v6;
  }
}

void sub_D590()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  AppDescription.encode(to:)();
}

__n128 sub_D5B0(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_D5BC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_D5FC(uint64_t result, int a2, int a3)
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

unint64_t sub_D674()
{
  result = qword_1C5A8;
  if (!qword_1C5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5A8);
  }

  return result;
}

uint64_t sub_D778(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_D7C4()
{
  result = qword_1C5C0;
  if (!qword_1C5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5C0);
  }

  return result;
}

unint64_t sub_D81C()
{
  result = qword_1C5C8;
  if (!qword_1C5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5C8);
  }

  return result;
}

unint64_t sub_D870()
{
  result = qword_1C5F8;
  if (!qword_1C5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5F8);
  }

  return result;
}

uint64_t sub_D8CC(uint64_t result, uint64_t a2)
{
  if (__OFSUB__(0, a2))
  {
    __break(1u);
    goto LABEL_7;
  }

  v2 = *(result + 16);
  v3 = __OFADD__(a2, v2);
  v4 = a2 + v2;
  if (v3)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (v4 < a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 < 0)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

id sub_D914(uint64_t a1, void *a2)
{
  isa = sub_10B34().super.isa;

  v4 = [a2 aceObjectWithDictionary:isa];

  return v4;
}

uint64_t sub_D994(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (result < a5)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if ((a6 >> 1) < result || (a6 >> 1) < a2)
  {
    goto LABEL_10;
  }

  if (a2 < a5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    return swift_unknownObjectRetain();
  }

LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_DA10()
{
  result = qword_1C608;
  if (!qword_1C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C608);
  }

  return result;
}

unint64_t sub_DA64()
{
  result = qword_1C610;
  if (!qword_1C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C610);
  }

  return result;
}

unint64_t sub_DAB8()
{
  result = qword_1C618;
  if (!qword_1C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C618);
  }

  return result;
}

unint64_t sub_DB0C()
{
  result = qword_1C620;
  if (!qword_1C620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C620);
  }

  return result;
}

unint64_t sub_DB60()
{
  result = qword_1C628;
  if (!qword_1C628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C628);
  }

  return result;
}

unint64_t sub_DBD4()
{
  result = qword_1C638;
  if (!qword_1C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C638);
  }

  return result;
}

unint64_t sub_DC48()
{
  result = qword_1C670;
  if (!qword_1C670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C670);
  }

  return result;
}

unint64_t sub_DC9C()
{
  result = qword_1C678;
  if (!qword_1C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C678);
  }

  return result;
}

uint64_t sub_DCF0()
{
  sub_8B80();
  v3 = v2(0);
  sub_8970(v3);
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_DD4C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  sub_8970(v3);
  (*(v4 + 8))(a1);
  return a1;
}

void sub_DE14()
{
  sub_DEF8(319, &qword_1C6F8, &qword_1C700, INRequestPaymentIntent_ptr, &type metadata accessor for CodableIntent);
  if (v0 <= 0x3F)
  {
    sub_DEF8(319, &qword_1C708, &unk_1C710, INRequestPaymentIntentResponse_ptr, &type metadata accessor for CodableIntentResponse);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_DEF8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_7894(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_DF68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_DFA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_E04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = sub_2D44(a4, a5);
  v9 = sub_8D14(v8);
  if (*(v10 + 84) == a2)
  {
    v11 = v9;
    v12 = a1;
LABEL_5:

    return sub_2F80(v12, a2, v11);
  }

  v13 = sub_101D0();
  v15 = sub_2D44(v13, v14);
  v16 = sub_8D14(v15);
  if (*(v17 + 84) == a2)
  {
    v11 = v16;
    v12 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v19 = *(a1 + *(a3 + 24) + 8);
  if (v19 >= 0xFFFFFFFF)
  {
    LODWORD(v19) = -1;
  }

  return (v19 + 1);
}

uint64_t sub_E18C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v10 = sub_2D44(a5, a6);
  v11 = sub_8D14(v10);
  if (*(v12 + 84) == a3)
  {
    v13 = v11;
    v14 = a1;
  }

  else
  {
    v15 = sub_10088();
    v17 = sub_2D44(v15, v16);
    result = sub_8D14(v17);
    if (*(v19 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v13 = result;
    v14 = a1 + *(a4 + 20);
  }

  return sub_2FD4(v14, a2, a2, v13);
}

void sub_E290()
{
  sub_DEF8(319, &qword_1C7B0, &qword_1C7B8, INSendPaymentIntent_ptr, &type metadata accessor for CodableIntent);
  if (v0 <= 0x3F)
  {
    sub_DEF8(319, &qword_1C7C0, &unk_1C7C8, INSendPaymentIntentResponse_ptr, &type metadata accessor for CodableIntentResponse);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_E374(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_E388(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_E3C8(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_E418(uint64_t a1, uint64_t a2)
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

uint64_t sub_E42C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_E46C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_E520(unsigned __int8 *a1, int a2)
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

  return sub_102DC(a1);
}

_BYTE *sub_E56C(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0xE608);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_E648()
{
  result = type metadata accessor for SiriPaymentsSnippetModel.RequestPaymentConfirmationModel(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SiriPaymentsSnippetModel.SendPaymentConfirmationModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_E6D4()
{
  result = qword_1C8A8;
  if (!qword_1C8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8A8);
  }

  return result;
}

unint64_t sub_E72C()
{
  result = qword_1C8B0;
  if (!qword_1C8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B0);
  }

  return result;
}

unint64_t sub_E784()
{
  result = qword_1C8B8;
  if (!qword_1C8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8B8);
  }

  return result;
}

unint64_t sub_E7DC()
{
  result = qword_1C8C0;
  if (!qword_1C8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8C0);
  }

  return result;
}

unint64_t sub_E834()
{
  result = qword_1C8C8;
  if (!qword_1C8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8C8);
  }

  return result;
}

unint64_t sub_E9BC()
{
  result = qword_1C8D0;
  if (!qword_1C8D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8D0);
  }

  return result;
}

unint64_t sub_EA14()
{
  result = qword_1C8D8;
  if (!qword_1C8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8D8);
  }

  return result;
}

unint64_t sub_EA6C()
{
  result = qword_1C8E0;
  if (!qword_1C8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8E0);
  }

  return result;
}

unint64_t sub_EAC4()
{
  result = qword_1C8E8;
  if (!qword_1C8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8E8);
  }

  return result;
}

unint64_t sub_EB1C()
{
  result = qword_1C8F0;
  if (!qword_1C8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8F0);
  }

  return result;
}

unint64_t sub_EB74()
{
  result = qword_1C8F8;
  if (!qword_1C8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C8F8);
  }

  return result;
}

unint64_t sub_EBCC()
{
  result = qword_1C900;
  if (!qword_1C900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C900);
  }

  return result;
}

unint64_t sub_EC24()
{
  result = qword_1C908;
  if (!qword_1C908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C908);
  }

  return result;
}

unint64_t sub_EC7C()
{
  result = qword_1C910;
  if (!qword_1C910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C910);
  }

  return result;
}

unint64_t sub_ECD4()
{
  result = qword_1C918;
  if (!qword_1C918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C918);
  }

  return result;
}

unint64_t sub_ED28()
{
  result = qword_1C928;
  if (!qword_1C928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C928);
  }

  return result;
}

unint64_t sub_ED7C()
{
  result = qword_1C930;
  if (!qword_1C930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C930);
  }

  return result;
}

unint64_t sub_EDD0()
{
  result = qword_1C940;
  if (!qword_1C940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C940);
  }

  return result;
}

unint64_t sub_EE24()
{
  result = qword_1C958;
  if (!qword_1C958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C958);
  }

  return result;
}

unint64_t sub_EE78()
{
  result = qword_1C968;
  if (!qword_1C968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C968);
  }

  return result;
}

unint64_t sub_EECC()
{
  result = qword_1C980;
  if (!qword_1C980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C980);
  }

  return result;
}

uint64_t sub_EF20()
{
  sub_8B80();
  v3 = v2(0);
  sub_8970(v3);
  (*(v4 + 16))(v0, v1);
  return v0;
}

unint64_t sub_EF7C()
{
  result = qword_1C990;
  if (!qword_1C990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C990);
  }

  return result;
}

unint64_t sub_F02C()
{
  result = qword_1C9B0;
  if (!qword_1C9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9B0);
  }

  return result;
}

uint64_t sub_F080(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_7240(&qword_1C948, &qword_12378);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_F0F8()
{
  result = qword_1C9C8;
  if (!qword_1C9C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9C8);
  }

  return result;
}

unint64_t sub_F184()
{
  result = qword_1C9E8;
  if (!qword_1C9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C9E8);
  }

  return result;
}

unint64_t sub_F208()
{
  result = qword_1CA18;
  if (!qword_1CA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFA)
  {
    if (a2 + 6 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 6) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 7;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v5 = v6 - 7;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SiriPaymentsSnippetModel.PaymentConfirmationModel.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        JUMPOUT(0xF3B0);
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

uint64_t sub_F408(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10294(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return sub_10294((*a1 | (v4 << 8)) - 3);
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

      return sub_10294((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10294((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10294(v8);
}

_BYTE *sub_F490(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = sub_1028C(result, v6);
        break;
      case 2:
        result = sub_1027C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xF54CLL);
      case 4:
        result = sub_10284(result, v6);
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
          result = sub_10108(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_F588(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10294(-1);
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
      return sub_10294((*a1 | (v4 << 8)) - 2);
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

      return sub_10294((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10294((*a1 | (v4 << 8)) - 2);
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

  return sub_10294(v8);
}

_BYTE *sub_F610(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result = sub_1028C(result, v6);
        break;
      case 2:
        result = sub_1027C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xF6CCLL);
      case 4:
        result = sub_10284(result, v6);
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
          result = sub_10108(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_F710(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return sub_10294(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return sub_10294((*a1 | (v4 << 8)) - 4);
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

      return sub_10294((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return sub_10294((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return sub_10294(v8);
}

_BYTE *sub_F798(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result = sub_1028C(result, v6);
        break;
      case 2:
        result = sub_1027C(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0xF854);
      case 4:
        result = sub_10284(result, v6);
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
          result = sub_10108(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_F890()
{
  result = qword_1CA28;
  if (!qword_1CA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA28);
  }

  return result;
}

unint64_t sub_F8E8()
{
  result = qword_1CA30;
  if (!qword_1CA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA30);
  }

  return result;
}

unint64_t sub_F940()
{
  result = qword_1CA38;
  if (!qword_1CA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA38);
  }

  return result;
}

unint64_t sub_F998()
{
  result = qword_1CA40;
  if (!qword_1CA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA40);
  }

  return result;
}

unint64_t sub_F9F0()
{
  result = qword_1CA48;
  if (!qword_1CA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA48);
  }

  return result;
}

unint64_t sub_FA48()
{
  result = qword_1CA50;
  if (!qword_1CA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA50);
  }

  return result;
}

unint64_t sub_FAA0()
{
  result = qword_1CA58;
  if (!qword_1CA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA58);
  }

  return result;
}

unint64_t sub_FAF8()
{
  result = qword_1CA60;
  if (!qword_1CA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA60);
  }

  return result;
}

unint64_t sub_FB50()
{
  result = qword_1CA68;
  if (!qword_1CA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA68);
  }

  return result;
}

unint64_t sub_FBA8()
{
  result = qword_1CA70;
  if (!qword_1CA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA70);
  }

  return result;
}

unint64_t sub_FC00()
{
  result = qword_1CA78;
  if (!qword_1CA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA78);
  }

  return result;
}

unint64_t sub_FC58()
{
  result = qword_1CA80;
  if (!qword_1CA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA80);
  }

  return result;
}

unint64_t sub_FCB0()
{
  result = qword_1CA88;
  if (!qword_1CA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA88);
  }

  return result;
}

unint64_t sub_FD08()
{
  result = qword_1CA90;
  if (!qword_1CA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA90);
  }

  return result;
}

unint64_t sub_FD60()
{
  result = qword_1CA98;
  if (!qword_1CA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1CA98);
  }

  return result;
}

uint64_t sub_FF14(unint64_t *a1)
{

  return sub_88C0(a1, v1, v2);
}

uint64_t sub_FF4C()
{

  return sub_10C14();
}

uint64_t sub_FF8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_88C0(a1, a2, a3);
}

uint64_t sub_FFCC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{

  return sub_88C0(a1, a2, a3);
}

uint64_t sub_10094()
{
  *(v0 + 16) = v1;

  return sub_10C64();
}

uint64_t sub_100D0()
{
  v3 = *(*(v2 - 248) + 32);
  result = v1;
  v5 = *(v2 - 216);
  *(v2 - 216) = v0;
  return result;
}

void sub_100EC()
{
  v2 = *(v1 - 240);
  *(v1 - 272) = v0;
  v3 = *(v1 - 232);
  *(v1 - 200) = 0;
}

uint64_t sub_1015C()
{
  v2 = *(v0 - 168);

  return sub_10BF4();
}

void *sub_10184()
{
  v3 = (v0 + *(*(v1 - 272) + 24));

  return memcpy(v3, (v1 - 200), 0x70uLL);
}

uint64_t sub_101DC()
{

  return sub_10C14();
}

uint64_t sub_101F8()
{

  return sub_10C64();
}

uint64_t sub_10210()
{

  return sub_10CB4();
}

void *sub_10234()
{

  return memcpy((v0 + 24), (v0 + 136), 0x70uLL);
}

uint64_t sub_10258()
{

  return sub_10CB4();
}

uint64_t sub_1029C()
{

  return sub_10C74();
}

void *sub_102B8()
{
  v3 = (*(v0 + 16) + *(*(v0 + 8) + 24));

  return memcpy((v1 - 200), v3, 0x70uLL);
}

uint64_t sub_102E4(uint64_t result)
{
  *(v1 + 8) = result;
  v3 = *(result + 20);
  *(v2 - 65) = 1;
  return result;
}

uint64_t sub_1030C()
{
  v2 = *(*(v1 - 248) + 8);
  result = v0;
  v4 = *(v1 - 216);
  return result;
}

uint64_t sub_1034C()
{

  return sub_10CC4();
}

uint64_t sub_1036C()
{
  *(v1 - 66) = 2;

  return sub_F14C(v1 - 200, v0 + 24);
}

uint64_t sub_1038C()
{
  v2 = *(v0 - 264);

  return sub_EF20();
}

uint64_t sub_103AC()
{
  v1 = [v0 amount];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_104AC(v0);
  v5 = v4;
  if (!v4)
  {

    return 0;
  }

  v6 = v3;
  v7 = [objc_allocWithZone(NSNumberFormatter) init];
  [v7 setNumberStyle:2];
  sub_10510(v6, v5, v7);
  v8 = [v7 stringFromNumber:v2];
  if (!v8)
  {

    return 0;
  }

  v9 = v8;
  v10 = sub_10B64();

  return v10;
}

uint64_t sub_104AC(void *a1)
{
  v1 = [a1 currencyCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_10B64();

  return v3;
}

void sub_10510(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_10B54();

  [a3 setCurrencyCode:v4];
}