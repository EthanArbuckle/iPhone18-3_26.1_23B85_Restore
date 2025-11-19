uint64_t UserNotification.encode(to:)(void *a1)
{
  v3 = v1;
  v84 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D8, &qword_270B342F0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v72 = v70 - v7;
  v8 = sub_270B3128C();
  v75 = *(v8 - 8);
  v76 = v8;
  v9 = *(v75 + 64);
  MEMORY[0x28223BE20](v8);
  v73 = v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D0, &qword_270B342E8);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = v70 - v13;
  v15 = type metadata accessor for UserNotification.LocalizedContent(0);
  v77 = *(v15 - 8);
  v78 = v15;
  v16 = *(v77 + 64);
  MEMORY[0x28223BE20](v15);
  v74 = v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844758, &qword_270B34300);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v18);
  v22 = v70 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2C4B8();
  sub_270B3190C();
  v24 = objc_opt_self();
  v80 = v3;
  v25 = *v3;
  v82 = 0;
  v26 = [v24 archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v82];
  v27 = v82;
  if (!v26)
  {
    v34 = v27;
    sub_270B3118C();

    swift_willThrow();
    result = (*(v19 + 8))(v22, v18);
    goto LABEL_6;
  }

  v71 = v24;
  v79 = v19;
  v28 = sub_270B3119C();
  v30 = v29;

  v82 = v28;
  v83 = v30;
  v81 = 0;
  v31 = sub_270B2C7F4();
  sub_270B3182C();
  v32 = v18;
  if (v2)
  {
    sub_270B1FB30(v82, v83);
  }

  else
  {
    sub_270B1FB30(v82, v83);
    v36 = v80;
    v37 = v80[1];
    if (v37)
    {
      v38 = v31;
      v82 = 0;
      v39 = v37;
      v40 = [v71 byte_279E1435A];
      v41 = v82;
      if (!v40)
      {
        v47 = v41;
        sub_270B3118C();

        swift_willThrow();
        goto LABEL_4;
      }

      v42 = v39;
      v43 = sub_270B3119C();
      v44 = v32;
      v46 = v45;

      v82 = v43;
      v83 = v46;
      v32 = v44;
      v81 = 1;
      v31 = v38;
      sub_270B3182C();
      sub_270B1FB30(v82, v83);

      v36 = v80;
    }

    LOBYTE(v82) = *(v36 + 16);
    v81 = 2;
    sub_270B2C848();
    sub_270B3182C();
    v70[1] = v31;
    v48 = type metadata accessor for UserNotification(0);
    v49 = v48[7];
    LOBYTE(v82) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446C8, &qword_270B342E0);
    sub_270B2C89C();
    sub_270B3182C();
    sub_270B2D194(v36 + v48[8], v14, &qword_2808446D0, &qword_270B342E8);
    if ((*(v77 + 48))(v14, 1, v78) == 1)
    {
      sub_270B1E6D8(v14, &qword_2808446D0, &qword_270B342E8);
    }

    else
    {
      v50 = v74;
      sub_270B307AC(v14, v74, type metadata accessor for UserNotification.LocalizedContent);
      LOBYTE(v82) = 4;
      sub_270B2C608(&qword_2808447B0, type metadata accessor for UserNotification.LocalizedContent);
      sub_270B3182C();
      sub_270B09BA4(v50, type metadata accessor for UserNotification.LocalizedContent);
    }

    v78 = v48;
    v51 = (v36 + v48[9]);
    v52 = v51[1];
    v54 = v75;
    v53 = v76;
    if (v52 != 1)
    {
      v55 = *v51;
      LOWORD(v82) = *v51 & 0x101;
      BYTE2(v82) = BYTE2(v55) & 1;
      v83 = v52;
      v81 = 5;
      sub_270B2CAA0();
      v56 = v52;
      sub_270B3182C();
      sub_270B210D0(v55, v52);
    }

    v58 = v72;
    v57 = v73;
    v59 = v80;
    sub_270B2D194(v80 + v78[15], v72, &qword_2808446D8, &qword_270B342F0);
    if ((*(v54 + 48))(v58, 1, v53) == 1)
    {
      sub_270B1E6D8(v58, &qword_2808446D8, &qword_270B342F0);
    }

    else
    {
      (*(v54 + 32))(v57, v58, v53);
      LOBYTE(v82) = 10;
      sub_270B2C608(&qword_2808447A0, MEMORY[0x277D85578]);
      sub_270B3182C();
      (*(v54 + 8))(v57, v53);
    }

    v60 = v78;
    v61 = *(v59 + v78[10]);
    LOBYTE(v82) = 6;
    sub_270B3181C();
    LOBYTE(v82) = *(v59 + v60[11]);
    v81 = 7;
    sub_270B2C950();
    sub_270B3182C();
    LOBYTE(v82) = *(v59 + v60[12]);
    v81 = 8;
    sub_270B2C9A4();
    sub_270B3182C();
    v62 = *(v59 + v60[14]);
    if (v62)
    {
      v82 = 0;
      v63 = v62;
      v64 = [v71 archivedDataWithRootObject:v63 requiringSecureCoding:1 error:&v82];
      v65 = v82;
      if (!v64)
      {
        v69 = v65;
        sub_270B3118C();

        swift_willThrow();
        goto LABEL_4;
      }

      v66 = sub_270B3119C();
      v68 = v67;

      v82 = v66;
      v83 = v68;
      v81 = 9;
      sub_270B3182C();
      sub_270B1FB30(v82, v83);

      v59 = v80;
    }

    LOBYTE(v82) = *(v59 + v60[18]);
    v81 = 11;
    sub_270B2C9F8();
    sub_270B317FC();
    LOBYTE(v82) = *(v59 + v60[19]);
    v81 = 12;
    sub_270B2CA4C();
    sub_270B317FC();
  }

LABEL_4:
  result = (*(v79 + 8))(v22, v32);
LABEL_6:
  v35 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_270B23E7C(char a1)
{
  result = 0x6C616E696769726FLL;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
      result = 0x6E696769726FLL;
      break;
    case 3:
      result = 0x6F4379636167656CLL;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x4264657669726564;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0xD000000000000010;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0x73676E6974746573;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x797469726F697270;
      break;
    case 12:
      result = 0x537972616D6D7573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_270B24018(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_270B23E7C(*a1);
  v5 = v4;
  if (v3 == sub_270B23E7C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_270B3184C();
  }

  return v8 & 1;
}

uint64_t sub_270B240A0()
{
  v1 = *v0;
  sub_270B318BC();
  sub_270B23E7C(v1);
  sub_270B3142C();

  return sub_270B318EC();
}

uint64_t sub_270B24104()
{
  sub_270B23E7C(*v0);
  sub_270B3142C();
}

uint64_t sub_270B24158()
{
  v1 = *v0;
  sub_270B318BC();
  sub_270B23E7C(v1);
  sub_270B3142C();

  return sub_270B318EC();
}

uint64_t sub_270B241B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_270B2FCC8();
  *a2 = result;
  return result;
}

unint64_t sub_270B241E8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_270B23E7C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_270B24230@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270B2FCC8();
  *a1 = result;
  return result;
}

uint64_t sub_270B24264(uint64_t a1)
{
  v2 = sub_270B2C4B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B242A0(uint64_t a1)
{
  v2 = sub_270B2C4B8();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_270B2435C(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = [v3 request];
  v5 = [v4 identifier];

  v6 = sub_270B313BC();
  v8 = v7;

  *a1 = v6;
  a1[1] = v8;
  v9 = [v3 date];
  v10 = type metadata accessor for UserNotification.Identifier(0);
  v11 = a1 + *(v10 + 20);
  sub_270B311DC();

  v12 = [v3 sourceIdentifier];
  v13 = sub_270B313BC();
  v15 = v14;

  v16 = (a1 + *(v10 + 24));
  *v16 = v13;
  v16[1] = v15;
}

uint64_t UserNotification.Identifier.id.getter()
{
  v1 = v0;
  MEMORY[0x2743B0AB0](*v0, v0[1]);
  v2 = type metadata accessor for UserNotification.Identifier(0);
  v3 = v0 + *(v2 + 20);
  sub_270B311AC();
  sub_270B3158C();
  MEMORY[0x2743B0AB0](*(v1 + *(v2 + 24)), *(v1 + *(v2 + 24) + 8));
  return 0;
}

uint64_t static UserNotification.Identifier.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_270B3184C() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for UserNotification.Identifier(0);
  v6 = *(v5 + 20);
  if ((sub_270B311CC() & 1) == 0)
  {
    return 0;
  }

  v7 = *(v5 + 24);
  v8 = *(a1 + v7);
  v9 = *(a1 + v7 + 8);
  v10 = (a2 + v7);
  if (v8 == *v10 && v9 == v10[1])
  {
    return 1;
  }

  return sub_270B3184C();
}

unint64_t sub_270B245A0()
{
  v1 = 1702125924;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_270B24600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270B2FD14(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270B24634(uint64_t a1)
{
  v2 = sub_270B2CAF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B24670(uint64_t a1)
{
  v2 = sub_270B2CAF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserNotification.Identifier.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808447B8, &qword_270B34308);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2CAF4();
  sub_270B3190C();
  v11 = *v3;
  v12 = v3[1];
  v19[15] = 0;
  sub_270B3180C();
  if (!v2)
  {
    v13 = type metadata accessor for UserNotification.Identifier(0);
    v14 = *(v13 + 20);
    v19[14] = 1;
    sub_270B311EC();
    sub_270B2C608(&qword_2808447C8, MEMORY[0x277CC9578]);
    sub_270B3182C();
    v15 = (v3 + *(v13 + 24));
    v16 = *v15;
    v17 = v15[1];
    v19[13] = 2;
    sub_270B3180C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t UserNotification.Identifier.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  sub_270B3142C();
  v4 = type metadata accessor for UserNotification.Identifier(0);
  v5 = *(v4 + 20);
  sub_270B311EC();
  sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578]);
  sub_270B3137C();
  v6 = (v1 + *(v4 + 24));
  v7 = *v6;
  v8 = v6[1];

  return sub_270B3142C();
}

uint64_t UserNotification.Identifier.hashValue.getter()
{
  v1 = v0;
  sub_270B318BC();
  v2 = *v0;
  v3 = v0[1];
  sub_270B3142C();
  v4 = type metadata accessor for UserNotification.Identifier(0);
  v5 = *(v4 + 20);
  sub_270B311EC();
  sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578]);
  sub_270B3137C();
  v6 = (v1 + *(v4 + 24));
  v7 = *v6;
  v8 = v6[1];
  sub_270B3142C();
  return sub_270B318EC();
}

uint64_t UserNotification.Identifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v33 = sub_270B311EC();
  v31 = *(v33 - 8);
  v4 = *(v31 + 64);
  MEMORY[0x28223BE20](v33);
  v6 = v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808447D8, &qword_270B34310);
  v32 = *(v34 - 8);
  v7 = *(v32 + 64);
  MEMORY[0x28223BE20](v34);
  v9 = v27 - v8;
  v10 = type metadata accessor for UserNotification.Identifier(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v13 = (v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2CAF4();
  sub_270B318FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v28 = v10;
  v29 = a1;
  v16 = v32;
  v15 = v33;
  v37 = 0;
  v17 = v13;
  *v13 = sub_270B3178C();
  v13[1] = v18;
  v27[2] = v18;
  v36 = 1;
  sub_270B2C608(&qword_2808447E0, MEMORY[0x277CC9578]);
  sub_270B317AC();
  v19 = v28;
  (*(v31 + 32))(v17 + *(v28 + 20), v6, v15);
  v35 = 2;
  v27[1] = 0;
  v20 = sub_270B3178C();
  v27[0] = v21;
  v22 = v29;
  v23 = v20;
  (*(v16 + 8))(v9, v34);
  v24 = (v17 + *(v19 + 24));
  v25 = v27[0];
  *v24 = v23;
  v24[1] = v25;
  sub_270B2CB48(v17, v30, type metadata accessor for UserNotification.Identifier);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return sub_270B09BA4(v17, type metadata accessor for UserNotification.Identifier);
}

uint64_t sub_270B24E10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = v2;
  MEMORY[0x2743B0AB0](*v2, v2[1]);
  v6 = v2 + *(a1 + 20);
  sub_270B311AC();
  sub_270B3158C();
  result = MEMORY[0x2743B0AB0](*(v4 + *(a1 + 24)), *(v4 + *(a1 + 24) + 8));
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  return result;
}

uint64_t sub_270B24E9C(uint64_t a1)
{
  v3 = v1;
  sub_270B318BC();
  v4 = *v1;
  v5 = v1[1];
  sub_270B3142C();
  v6 = *(a1 + 20);
  sub_270B311EC();
  sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578]);
  sub_270B3137C();
  v7 = (v3 + *(a1 + 24));
  v8 = *v7;
  v9 = v7[1];
  sub_270B3142C();
  return sub_270B318EC();
}

uint64_t sub_270B24F5C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  v6 = v2[1];
  sub_270B3142C();
  v7 = *(a2 + 20);
  sub_270B311EC();
  sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578]);
  sub_270B3137C();
  v8 = (v4 + *(a2 + 24));
  v9 = *v8;
  v10 = v8[1];

  return sub_270B3142C();
}

uint64_t sub_270B25014(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_270B318BC();
  v5 = *v2;
  v6 = v2[1];
  sub_270B3142C();
  v7 = *(a2 + 20);
  sub_270B311EC();
  sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578]);
  sub_270B3137C();
  v8 = (v4 + *(a2 + 24));
  v9 = *v8;
  v10 = v8[1];
  sub_270B3142C();
  return sub_270B318EC();
}

uint64_t sub_270B25100(void *a1, void *a2, uint64_t a3)
{
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (!v6 && (sub_270B3184C() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3 + 20);
  if ((sub_270B311CC() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 24);
  v9 = *(a1 + v8);
  v10 = *(a1 + v8 + 8);
  v11 = (a2 + v8);
  if (v9 == *v11 && v10 == v11[1])
  {
    return 1;
  }

  return sub_270B3184C();
}

uint64_t static UserNotification.bundleId(for:)(uint64_t a1, unint64_t a2)
{
  v13[0] = 58;
  v13[1] = 0xE100000000000000;
  v12[2] = v13;

  v5 = sub_270B2B148(0x7FFFFFFFFFFFFFFFLL, 1, sub_270B2CBB0, v12, a1, a2, v4);
  if (v5[2])
  {
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    v9 = v5[7];
    swift_bridgeObjectRetain_n();

    v10 = MEMORY[0x2743B0A40](v6, v7, v8, v9);
    swift_bridgeObjectRelease_n();
  }

  else
  {

    return 0;
  }

  return v10;
}

uint64_t static UserNotification.requestIdentifierFromSpotlightIdentifier(_:)(uint64_t a1, unint64_t a2)
{
  v13[0] = 58;
  v13[1] = 0xE100000000000000;
  v12[2] = v13;

  v5 = sub_270B2B148(1, 0, sub_270B30858, v12, a1, a2, v4);
  if (v5[2] == 2)
  {
    v6 = v5[8];
    v7 = v5[9];
    v8 = v5[10];
    v9 = v5[11];

    v10 = MEMORY[0x2743B0A40](v6, v7, v8, v9);

    return v10;
  }

  else
  {

    return 0;
  }
}

uint64_t static UserNotification.bundleIdentifierFromSpotlightIdentifier(_:)(uint64_t a1, unint64_t a2)
{
  v13[0] = 58;
  v13[1] = 0xE100000000000000;
  v12[2] = v13;

  v5 = sub_270B2B148(1, 0, sub_270B30858, v12, a1, a2, v4);
  if (v5[2] == 2)
  {
    v6 = v5[4];
    v7 = v5[5];
    v8 = v5[6];
    v9 = v5[7];

    v10 = MEMORY[0x2743B0A40](v6, v7, v8, v9);

    return v10;
  }

  else
  {

    return 0;
  }
}

void *UserNotification.Behavior.dndBehavior.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *UserNotification.Behavior.shouldDelayDelivery.getter()
{
  result = *(v0 + 8);
  if (result)
  {
    return ([result interruptionSuppression] == 2);
  }

  return result;
}

uint64_t UserNotification.Behavior.init(critical:timeSensitive:ignoreDoNotDisturb:dndBehavior:)@<X0>(uint64_t result@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 1) = a2;
  *(a5 + 2) = a3;
  *(a5 + 8) = a4;
  return result;
}

void UserNotification.Behavior.init(from:)(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808447E8, &qword_270B34318);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2CBCC();
  sub_270B318FC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v17[0]) = 0;
    v18 = sub_270B3179C() & 1;
    LOBYTE(v17[0]) = 1;
    v21 = sub_270B3179C() & 1;
    LOBYTE(v17[0]) = 2;
    v20 = sub_270B3179C() & 1;
    v19 = 3;
    sub_270B2C50C();
    sub_270B317AC();
    v11 = v17[0];
    v12 = v17[1];
    sub_270B30764(0, &qword_280844700, 0x277CCAAC8);
    sub_270B30764(0, &qword_2808447F8, 0x277D058E0);
    v16 = sub_270B315DC();
    (*(v6 + 8))(v9, v5);
    sub_270B1FB30(v11, v12);
    v13 = v21;
    v14 = v20;
    *a2 = v18;
    *(a2 + 1) = v13;
    *(a2 + 2) = v14;
    *(a2 + 8) = v16;
    v15 = v16;
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t UserNotification.Behavior.encode(to:)(void *a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844800, &unk_270B34320);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v24 - v6;
  v8 = *v1;
  v9 = v1[1];
  v24[0] = v1[2];
  v24[1] = v9;
  v10 = *(v1 + 1);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2CBCC();
  sub_270B3190C();
  LOBYTE(v27) = 0;
  v12 = v25;
  sub_270B3181C();
  if (!v12)
  {
    LOBYTE(v27) = 1;
    sub_270B3181C();
    LOBYTE(v27) = 2;
    sub_270B3181C();
    v15 = v4;
    if (v10)
    {
      v16 = objc_opt_self();
      v27 = 0;
      v17 = v10;
      v18 = [v16 archivedDataWithRootObject:v17 requiringSecureCoding:1 error:&v27];
      v19 = v27;
      if (v18)
      {
        v20 = sub_270B3119C();
        v22 = v21;

        v27 = v20;
        v28 = v22;
        v26 = 3;
        sub_270B2C7F4();
        sub_270B3182C();

        sub_270B1FB30(v27, v28);
        result = (*(v15 + 8))(v7, v3);
        goto LABEL_4;
      }

      v23 = v19;
      sub_270B3118C();

      swift_willThrow();
    }
  }

  result = (*(v4 + 8))(v7, v3);
LABEL_4:
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_270B25BE8()
{
  v1 = *v0;
  sub_270B318BC();
  sub_270B3142C();

  return sub_270B318EC();
}

uint64_t sub_270B25CC4()
{
  *v0;
  *v0;
  *v0;
  sub_270B3142C();
}

uint64_t sub_270B25D8C()
{
  v1 = *v0;
  sub_270B318BC();
  sub_270B3142C();

  return sub_270B318EC();
}

uint64_t sub_270B25E64@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_270B2FE3C();
  *a2 = result;
  return result;
}

void sub_270B25E94(unint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x6C61636974697263;
  v4 = 0x8000000270B36810;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0x7661686542646E64;
    v4 = 0xEB00000000726F69;
  }

  if (*v1)
  {
    v3 = 0x736E6553656D6974;
    v2 = 0xED00006576697469;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_270B25F2C()
{
  v1 = 0x6C61636974697263;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x7661686542646E64;
  }

  if (*v0)
  {
    v1 = 0x736E6553656D6974;
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

uint64_t sub_270B25FC0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270B2FE3C();
  *a1 = result;
  return result;
}

uint64_t sub_270B25FE8(uint64_t a1)
{
  v2 = sub_270B2CBCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B26024(uint64_t a1)
{
  v2 = sub_270B2CBCC();

  return MEMORY[0x2821FE720](a1, v2);
}

void UserNotification.Behavior.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  sub_270B318DC();
  sub_270B318DC();
  sub_270B318DC();
  if (v4)
  {
    sub_270B318DC();
    v5 = v4;
    sub_270B3164C();
  }

  else
  {
    sub_270B318DC();
  }
}

uint64_t UserNotification.Behavior.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  sub_270B318BC();
  sub_270B318DC();
  sub_270B318DC();
  sub_270B318DC();
  sub_270B318DC();
  if (v4)
  {
    v5 = v4;
    sub_270B3164C();
  }

  return sub_270B318EC();
}

uint64_t sub_270B261EC()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 1);
  sub_270B318BC();
  UserNotification.Behavior.hash(into:)();
  return sub_270B318EC();
}

uint64_t sub_270B26254()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v5 = *(v0 + 1);
  sub_270B318BC();
  UserNotification.Behavior.hash(into:)();
  return sub_270B318EC();
}

uint64_t UserNotification.LocalizedContent.localizedTitle.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UserNotification.LocalizedContent.localizedTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserNotification.LocalizedContent.localizedSubtitle.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return v1;
}

uint64_t UserNotification.LocalizedContent.localizedSubtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t UserNotification.LocalizedContent.localizedBody.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t UserNotification.LocalizedContent.localizedBody.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t UserNotification.LocalizedContent.isHighlight.setter(char a1)
{
  result = type metadata accessor for UserNotification.LocalizedContent(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t UserNotification.LocalizedContent.init(localizedTitle:localizedSubtitle:localizedBody:summary:isHighlight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, char *a9@<X8>)
{
  v29 = a8;
  v27 = a5;
  v28 = a6;
  v25 = a3;
  v26 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v24 - v15;
  v17 = type metadata accessor for UserNotification.LocalizedContent(0);
  v18 = *(v17 + 28);
  v19 = sub_270B3116C();
  v20 = *(*(v19 - 8) + 56);
  result = v20(&a9[v18], 1, 1, v19);
  *a9 = a1;
  *(a9 + 1) = a2;
  v22 = v26;
  *(a9 + 2) = v25;
  *(a9 + 3) = v22;
  v23 = v28;
  *(a9 + 4) = v27;
  *(a9 + 5) = v23;
  if (a7)
  {
    sub_270B3117C();
    v20(v16, 0, 1, v19);
    result = sub_270B2D1FC(v16, &a9[v18], &qword_280843D60, &qword_270B328E8);
  }

  a9[*(v17 + 32)] = v29;
  return result;
}

uint64_t UserNotification.LocalizedContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = &v32 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844808, &qword_270B34330);
  v34 = *(v36 - 8);
  v6 = *(v34 + 64);
  MEMORY[0x28223BE20](v36);
  v8 = &v32 - v7;
  v9 = type metadata accessor for UserNotification.LocalizedContent(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v13 + 1) = 0u;
  *(v13 + 2) = 0u;
  *v13 = 0u;
  v14 = *(v10 + 36);
  v15 = sub_270B3116C();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v18 = v16 + 56;
  v37 = v14;
  v17(&v13[v14], 1, 1, v15);
  v13[*(v10 + 40)] = 2;
  v19 = a1[3];
  v20 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_270B2CC20();
  v41 = v8;
  v21 = v39;
  sub_270B318FC();
  if (!v21)
  {
    v39 = v18;
    v33 = v17;
    v22 = v34;
    v23 = v35;
    v45 = 0;
    v24 = v36;
    *v13 = sub_270B3178C();
    *(v13 + 1) = v25;
    v44 = 1;
    v26 = v22;
    *(v13 + 2) = sub_270B3178C();
    *(v13 + 3) = v27;
    v28 = v37;
    v43 = 2;
    *(v13 + 4) = sub_270B3178C();
    *(v13 + 5) = v29;
    v42 = 3;
    sub_270B2C608(qword_280843D80, MEMORY[0x277CC8C40]);
    v30 = v41;
    sub_270B317AC();
    (*(v26 + 8))(v30, v24);
    v33(v23, 0, 1, v15);
    sub_270B2D1FC(v23, &v13[v28], &qword_280843D60, &qword_270B328E8);
    sub_270B2CB48(v13, v38, type metadata accessor for UserNotification.LocalizedContent);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  return sub_270B09BA4(v13, type metadata accessor for UserNotification.LocalizedContent);
}

uint64_t UserNotification.LocalizedContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - v7;
  v9 = sub_270B3116C();
  v28 = *(v9 - 8);
  v29 = v9;
  v10 = *(v28 + 64);
  MEMORY[0x28223BE20](v9);
  v27 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844818, &qword_270B34338);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = &v26 - v15;
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2CC20();
  sub_270B3190C();
  if (!v3[1] || (v18 = *v3, v30 = 0, sub_270B3180C(), !v2))
  {
    if (!v3[3] || (v19 = v3[2], v31 = 1, sub_270B3180C(), !v2))
    {
      if (!v3[5] || (v20 = v3[4], v32 = 2, sub_270B3180C(), !v2))
      {
        v21 = type metadata accessor for UserNotification.LocalizedContent(0);
        sub_270B2D194(v3 + *(v21 + 28), v8, &qword_280843D60, &qword_270B328E8);
        v23 = v28;
        v22 = v29;
        if ((*(v28 + 48))(v8, 1, v29) == 1)
        {
          (*(v13 + 8))(v16, v12);
          return sub_270B1E6D8(v8, &qword_280843D60, &qword_270B328E8);
        }

        v25 = v27;
        (*(v23 + 32))();
        v33 = 3;
        sub_270B2C608(&qword_280843D78, MEMORY[0x277CC8C40]);
        sub_270B3182C();
        (*(v23 + 8))(v25, v22);
      }
    }
  }

  return (*(v13 + 8))(v16, v12);
}

uint64_t sub_270B26F54()
{
  v1 = *v0;
  sub_270B318BC();
  sub_270B3142C();

  return sub_270B318EC();
}

uint64_t sub_270B27024()
{
  *v0;
  *v0;
  *v0;
  sub_270B3142C();
}

uint64_t sub_270B270E0()
{
  v1 = *v0;
  sub_270B318BC();
  sub_270B3142C();

  return sub_270B318EC();
}

uint64_t sub_270B271AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_270B2FE88();
  *a2 = result;
  return result;
}

void sub_270B271DC(unint64_t *a1@<X8>)
{
  v2 = 0xEE00656C74695464;
  v3 = 0x657A696C61636F6CLL;
  v4 = 0xED000079646F4264;
  v5 = 0x657A696C61636F6CLL;
  if (*v1 != 2)
  {
    v5 = 0x7972616D6D7573;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x8000000270B36840;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_270B27278()
{
  v1 = 0x657A696C61636F6CLL;
  v2 = 0x7972616D6D7573;
  if (*v0 == 2)
  {
    v2 = 0x657A696C61636F6CLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_270B27300@<X0>(_BYTE *a1@<X8>)
{
  result = sub_270B2FE88();
  *a1 = result;
  return result;
}

uint64_t sub_270B27328(uint64_t a1)
{
  v2 = sub_270B2CC20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B27364(uint64_t a1)
{
  v2 = sub_270B2CC20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserNotification.LocalizedContent.hash(into:)()
{
  v1 = sub_270B3116C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v15 - v8;
  if (v0[1])
  {
    v10 = *v0;
    sub_270B318DC();
    sub_270B3142C();
    if (v0[3])
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_270B318DC();
    if (v0[5])
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  sub_270B318DC();
  if (!v0[3])
  {
    goto LABEL_6;
  }

LABEL_3:
  v11 = v0[2];
  sub_270B318DC();
  sub_270B3142C();
  if (v0[5])
  {
LABEL_4:
    v12 = v0[4];
    sub_270B318DC();
    sub_270B3142C();
    goto LABEL_8;
  }

LABEL_7:
  sub_270B318DC();
LABEL_8:
  v13 = type metadata accessor for UserNotification.LocalizedContent(0);
  sub_270B2D194(v0 + *(v13 + 28), v9, &qword_280843D60, &qword_270B328E8);
  if ((*(v2 + 48))(v9, 1, v1) == 1)
  {
    sub_270B318DC();
  }

  else
  {
    (*(v2 + 32))(v5, v9, v1);
    sub_270B318DC();
    sub_270B2C608(&qword_280844820, MEMORY[0x277CC8C40]);
    sub_270B3137C();
    (*(v2 + 8))(v5, v1);
  }

  if (*(v0 + *(v13 + 32)) != 2)
  {
    sub_270B318DC();
  }

  return sub_270B318DC();
}

UserNotificationsServices::UserNotification::IncomingPriority_optional __swiftcall UserNotification.IncomingPriority.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue <= 300)
  {
    switch(rawValue)
    {
      case 100:
        *v1 = 0;
        return rawValue;
      case 200:
        *v1 = 1;
        return rawValue;
      case 300:
        *v1 = 2;
        return rawValue;
    }

LABEL_13:
    *v1 = 7;
    return rawValue;
  }

  if (rawValue > 302)
  {
    if (rawValue == 303)
    {
      *v1 = 5;
      return rawValue;
    }

    if (rawValue == 304)
    {
      *v1 = 6;
      return rawValue;
    }

    goto LABEL_13;
  }

  if (rawValue == 301)
  {
    *v1 = 3;
  }

  else
  {
    *v1 = 4;
  }

  return rawValue;
}

uint64_t sub_270B27934()
{
  v1 = *v0;
  sub_270B318BC();
  MEMORY[0x2743B0EF0](qword_270B35ED8[v1]);
  return sub_270B318EC();
}

uint64_t sub_270B279BC()
{
  v1 = *v0;
  sub_270B318BC();
  MEMORY[0x2743B0EF0](qword_270B35ED8[v1]);
  return sub_270B318EC();
}

uint64_t sub_270B27B48@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_270B27B84(uint64_t a1)
{
  v2 = sub_270B2D0A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B27BC0(uint64_t a1)
{
  v2 = sub_270B2D0A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserNotification.SecureAttachments.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844828, &qword_270B34340);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2D0A0();
  sub_270B3190C();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_270B27D60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844828, &qword_270B34340);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2D0A0();
  sub_270B3190C();
  return (*(v3 + 8))(v6, v2);
}

UserNotificationsServices::UserNotification::Origin_optional __swiftcall UserNotification.Origin.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t UserNotification.LegacyContent.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 42);
  v8 = *(v1 + 40);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 42) = v7;
  *(a1 + 40) = v8;
  return sub_270B2D0F4(v2, v3);
}

__n128 UserNotification.LegacyContent.category.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 42);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 32);
  v9 = *(v1 + 40) | (*(v1 + 42) << 16);
  sub_270B2D144(*v1, *(v1 + 8));
  result = *a1;
  v11 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v11;
  *(v1 + 32) = v3;
  *(v1 + 42) = v5;
  *(v1 + 40) = v4;
  return result;
}

uint64_t UserNotification.LegacyContent.isAllDayEvent.setter(char a1)
{
  result = type metadata accessor for UserNotification.LegacyContent(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t UserNotification.LegacyContent.dismissAfterDuration.setter(char a1)
{
  result = type metadata accessor for UserNotification.LegacyContent(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

UserNotificationsServices::UserNotification::LegacyContent::IdentityImageStyle_optional __swiftcall UserNotification.LegacyContent.IdentityImageStyle.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t UserNotification.LegacyContent.init()@<X0>(_OWORD *a1@<X8>)
{
  v2 = type metadata accessor for UserNotification.LegacyContent(0);
  *a1 = 0u;
  a1[1] = 0u;
  *(a1 + 27) = 0u;
  v3 = v2[5];
  v4 = sub_270B311EC();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = v2[6];
  v6 = sub_270B3115C();
  result = (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *(a1 + v2[7]) = 0;
  *(a1 + v2[8]) = 0;
  return result;
}

uint64_t UserNotification.LegacyContent.isEmpty.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844840, &qword_270B34350);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v16 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844838, &qword_270B34348);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v16 - v7;
  if (*(v0 + 8))
  {
    goto LABEL_5;
  }

  v9 = type metadata accessor for UserNotification.LegacyContent(0);
  sub_270B2D194(v0 + v9[5], v8, &qword_280844838, &qword_270B34348);
  v10 = sub_270B311EC();
  v11 = (*(*(v10 - 8) + 48))(v8, 1, v10);
  sub_270B1E6D8(v8, &qword_280844838, &qword_270B34348);
  if (v11 != 1)
  {
    goto LABEL_5;
  }

  sub_270B2D194(v0 + v9[6], v4, &qword_280844840, &qword_270B34350);
  v12 = sub_270B3115C();
  v13 = (*(*(v12 - 8) + 48))(v4, 1, v12);
  sub_270B1E6D8(v4, &qword_280844840, &qword_270B34350);
  if (v13 == 1 && (*(v0 + v9[7]) & 1) == 0)
  {
    v14 = *(v0 + v9[8]) ^ 1;
  }

  else
  {
LABEL_5:
    v14 = 0;
  }

  return v14 & 1;
}

uint64_t sub_270B28688()
{
  v1 = *v0;
  v2 = 0x79726F6765746163;
  v3 = 0x6E6F697461727564;
  v4 = 0x7961446C6C417369;
  if (v1 != 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746144746E657665;
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

uint64_t sub_270B28738@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270B2FED4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270B2876C(uint64_t a1)
{
  v2 = sub_270B2DCA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B287A8(uint64_t a1)
{
  v2 = sub_270B2DCA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserNotification.LegacyContent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844848, &qword_270B34358);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v23[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2DCA4();
  sub_270B3190C();
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v14 = *(v3 + 32);
  v15 = *(v3 + 42);
  v16 = *(v3 + 40);
  v24 = *v3;
  v25 = v11;
  v26 = v12;
  v27 = v13;
  v28 = v14;
  v30 = v15;
  v29 = v16;
  v23[15] = 0;
  sub_270B2D0F4(v24, v11);
  sub_270B2DCF8();
  sub_270B317FC();
  sub_270B2D144(v24, v25);
  if (!v2)
  {
    v17 = type metadata accessor for UserNotification.LegacyContent(0);
    v18 = v17[5];
    LOBYTE(v24) = 1;
    sub_270B311EC();
    sub_270B2C608(&qword_2808447C8, MEMORY[0x277CC9578]);
    sub_270B317FC();
    v19 = v17[6];
    LOBYTE(v24) = 2;
    sub_270B3115C();
    sub_270B2C608(&qword_280844860, MEMORY[0x277CC8990]);
    sub_270B317FC();
    v20 = *(v3 + v17[7]);
    LOBYTE(v24) = 3;
    sub_270B3181C();
    v21 = *(v3 + v17[8]);
    LOBYTE(v24) = 4;
    sub_270B3181C();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t UserNotification.LegacyContent.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_270B3115C();
  v42 = *(v4 - 8);
  v43 = v4;
  v5 = *(v42 + 64);
  MEMORY[0x28223BE20](v4);
  v40 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844840, &qword_270B34350);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v41 = &v36 - v9;
  v10 = sub_270B311EC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844838, &qword_270B34348);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v18 = &v36 - v17;
  v19 = *(v1 + 8);
  if (v19)
  {
    v39 = v10;
    v20 = *(v1 + 40);
    v21 = *(v1 + 42);
    v38 = v11;
    v22 = *(v1 + 24);
    v23 = *(v1 + 32);
    v24 = a1;
    v25 = v2[2];
    v37 = v14;
    v26 = v2;
    v27 = *v2;
    *&v44 = v27;
    *(&v44 + 1) = v19;
    *v45 = v25;
    *&v45[8] = v22;
    *&v45[16] = v23;
    v45[26] = v21;
    *&v45[24] = v20;
    sub_270B318DC();
    v46[0] = v27;
    v46[1] = v19;
    v2 = v26;
    v14 = v37;
    v46[2] = v25;
    v46[3] = v22;
    v11 = v38;
    v46[4] = v23;
    v48 = v21;
    v47 = v20;
    v10 = v39;
    sub_270B2DD4C(v46, &v49);
    UserNotification.LegacyCategory.hash(into:)(v24);
    v49 = v44;
    v50[0] = *v45;
    *(v50 + 11) = *&v45[11];
    sub_270B2DD84(&v49);
  }

  else
  {
    sub_270B318DC();
  }

  v28 = type metadata accessor for UserNotification.LegacyContent(0);
  sub_270B2D194(v2 + v28[5], v18, &qword_280844838, &qword_270B34348);
  if ((*(v11 + 48))(v18, 1, v10) == 1)
  {
    sub_270B318DC();
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    sub_270B318DC();
    sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578]);
    sub_270B3137C();
    (*(v11 + 8))(v14, v10);
  }

  v30 = v42;
  v29 = v43;
  v31 = v41;
  sub_270B2D194(v2 + v28[6], v41, &qword_280844840, &qword_270B34350);
  if ((*(v30 + 48))(v31, 1, v29) == 1)
  {
    sub_270B318DC();
  }

  else
  {
    v32 = v40;
    (*(v30 + 32))(v40, v31, v29);
    sub_270B318DC();
    sub_270B2C608(&qword_280844868, MEMORY[0x277CC8990]);
    sub_270B3137C();
    (*(v30 + 8))(v32, v29);
  }

  v33 = *(v2 + v28[7]);
  sub_270B318DC();
  v34 = *(v2 + v28[8]);
  return sub_270B318DC();
}

uint64_t sub_270B28F90(void (*a1)(_BYTE *))
{
  sub_270B318BC();
  a1(v3);
  return sub_270B318EC();
}

uint64_t UserNotification.LegacyContent.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844840, &qword_270B34350);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v56 = &v48 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844838, &qword_270B34348);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v55 = &v48 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844870, &qword_270B34360);
  v58 = *(v9 - 8);
  v59 = v9;
  v10 = *(v58 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v48 - v11;
  v13 = type metadata accessor for UserNotification.LegacyContent(0);
  v14 = (v13 - 8);
  v15 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v17 = (&v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *(v17 + 27) = 0u;
  *v17 = 0u;
  v17[1] = 0u;
  v18 = v14[7];
  v19 = sub_270B311EC();
  v20 = *(*(v19 - 8) + 56);
  v54 = v18;
  v20(v17 + v18, 1, 1, v19);
  v21 = v14[8];
  v22 = sub_270B3115C();
  (*(*(v22 - 8) + 56))(v17 + v21, 1, 1, v22);
  v23 = v14[9];
  *(v17 + v23) = 0;
  v24 = v14[10];
  v61 = v17;
  *(v17 + v24) = 0;
  v25 = a1;
  v26 = a1[3];
  v27 = a1[4];
  v62 = v25;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  sub_270B2DCA4();
  v57 = v12;
  v28 = v60;
  sub_270B318FC();
  if (v28)
  {
    v29 = v61;
  }

  else
  {
    v60 = v19;
    v51 = v23;
    v52 = v21;
    v50 = v24;
    v31 = v55;
    v30 = v56;
    v69 = 0;
    sub_270B2DDB4();
    v32 = v57;
    sub_270B3177C();
    v33 = v65;
    v68 = v66;
    v34 = v67;
    v29 = v61;
    v35 = *v61;
    v36 = *(v61 + 1);
    v37 = *(v61 + 2);
    v38 = *(v61 + 3);
    v39 = *(v61 + 4);
    v41 = *(v61 + 20);
    v40 = v61 + 40;
    v42 = *(v61 + 42);
    v49 = v63;
    v48 = v64;
    sub_270B2D144(v35, v36);
    v43 = v48;
    *v29 = v49;
    *(v29 + 16) = v43;
    *(v29 + 32) = v33;
    v40[2] = v34;
    *v40 = v68;
    v44 = v59;
    LOBYTE(v63) = 1;
    sub_270B2C608(&qword_2808447E0, MEMORY[0x277CC9578]);
    sub_270B3177C();
    sub_270B2D1FC(v31, v29 + v54, &qword_280844838, &qword_270B34348);
    LOBYTE(v63) = 2;
    sub_270B2C608(&qword_280844880, MEMORY[0x277CC8990]);
    sub_270B3177C();
    sub_270B2D1FC(v30, v29 + v52, &qword_280844840, &qword_270B34350);
    LOBYTE(v63) = 3;
    v46 = sub_270B3179C();
    v47 = v58;
    *(v29 + v51) = v46 & 1;
    LOBYTE(v63) = 4;
    LOBYTE(v33) = sub_270B3179C();
    (*(v47 + 8))(v32, v44);
    *(v29 + v50) = v33 & 1;
    sub_270B2CB48(v29, v53, type metadata accessor for UserNotification.LegacyContent);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  return sub_270B09BA4(v29, type metadata accessor for UserNotification.LegacyContent);
}

uint64_t sub_270B29590(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  sub_270B318BC();
  a3(v5);
  return sub_270B318EC();
}

uint64_t sub_270B295F4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_270B318BC();
  a4(v6);
  return sub_270B318EC();
}

uint64_t UserNotification.LegacyCategory.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UserNotification.LegacyCategory.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserNotification.LegacyCategory.actions.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

uint64_t UserNotification.LegacyCategory.actionsMenuTitle.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t UserNotification.LegacyCategory.actionsMenuTitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall UserNotification.LegacyCategory.init(identifier:)(UserNotificationsServices::UserNotification::LegacyCategory *__return_ptr retstr, Swift::String identifier)
{
  v2 = MEMORY[0x277D84F90];
  retstr->actionsMenuTitle.value._countAndFlagsBits = 0;
  retstr->actionsMenuTitle.value._object = 0;
  retstr->identifier._object = identifier._object;
  retstr->actions._rawValue = v2;
  *(&retstr->actionsMenuTitle.value._object + 7) = 0;
  retstr->identifier._countAndFlagsBits = identifier._countAndFlagsBits;
}

unint64_t sub_270B29880()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD00000000000001DLL;
  if (v1 == 4)
  {
    v3 = 0x657263536B636F6CLL;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000013;
  }

  v4 = 0x736E6F69746361;
  if (v1 != 1)
  {
    v4 = 0xD000000000000010;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_270B2995C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270B3009C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270B29984(uint64_t a1)
{
  v2 = sub_270B2DE08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B299C0(uint64_t a1)
{
  v2 = sub_270B2DE08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserNotification.LegacyCategory.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844888, &qword_270B34368);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v20 = v1[3];
  v21 = v11;
  v19 = v1[4];
  LODWORD(v11) = *(v1 + 40);
  v18[2] = *(v1 + 41);
  v18[3] = v11;
  v18[1] = *(v1 + 42);
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_270B2DE08();
  sub_270B3190C();
  v28 = 0;
  sub_270B3180C();
  if (!v2)
  {
    v22 = v21;
    v27 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844898, &qword_270B34370);
    sub_270B2DEB0(&qword_2808448A0, sub_270B2DE5C);
    sub_270B3182C();
    v26 = 2;
    sub_270B317EC();
    v25 = 3;
    sub_270B3181C();
    v24 = 4;
    sub_270B3181C();
    v23 = 5;
    sub_270B3181C();
  }

  return (*(v5 + 8))(v8, v16);
}

uint64_t UserNotification.LegacyCategory.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v9 = *(v2 + 40);
  v10 = *(v2 + 41);
  v11 = *(v2 + 42);
  sub_270B3142C();
  sub_270B2BF4C(a1, v7);
  sub_270B318DC();
  if (v8)
  {
    sub_270B3142C();
  }

  sub_270B318DC();
  sub_270B318DC();
  return sub_270B318DC();
}

uint64_t UserNotification.LegacyCategory.hashValue.getter()
{
  sub_270B318BC();
  UserNotification.LegacyCategory.hash(into:)(v1);
  return sub_270B318EC();
}

uint64_t UserNotification.LegacyCategory.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808448B0, &qword_270B34378);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2DE08();
  sub_270B318FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v29[0]) = 0;
  v11 = sub_270B3178C();
  v13 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844898, &qword_270B34370);
  LOBYTE(v27) = 1;
  sub_270B2DEB0(&qword_2808448B8, sub_270B2DF28);
  sub_270B317AC();
  v26 = v29[0];
  LOBYTE(v29[0]) = 2;
  v24 = sub_270B3176C();
  v25 = v14;
  LOBYTE(v29[0]) = 3;
  v33 = sub_270B3179C();
  LOBYTE(v29[0]) = 4;
  v23 = sub_270B3179C();
  v34 = 5;
  v15 = sub_270B3179C();
  v22 = v33 & 1;
  v33 = v23 & 1;
  (*(v6 + 8))(v9, v5);
  v23 = v15 & 1;
  *&v27 = v11;
  *(&v27 + 1) = v13;
  v17 = v25;
  v16 = v26;
  v18 = v24;
  *v28 = v26;
  *&v28[8] = v24;
  *&v28[16] = v25;
  v19 = v22;
  v28[24] = v22;
  v28[25] = v33;
  v28[26] = v23;
  v20 = *v28;
  *a2 = v27;
  a2[1] = v20;
  *(a2 + 27) = *&v28[11];
  sub_270B2DD4C(&v27, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v29[0] = v11;
  v29[1] = v13;
  v29[2] = v16;
  v29[3] = v18;
  v29[4] = v17;
  v30 = v19;
  v31 = v33;
  v32 = v23;
  return sub_270B2DD84(v29);
}

uint64_t sub_270B2A144()
{
  sub_270B318BC();
  UserNotification.LegacyCategory.hash(into:)(v1);
  return sub_270B318EC();
}

uint64_t sub_270B2A188()
{
  sub_270B318BC();
  UserNotification.LegacyCategory.hash(into:)(v1);
  return sub_270B318EC();
}

uint64_t UserNotification.LegacyAction.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t UserNotification.LegacyAction.identifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserNotification.LegacyAction.title.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t UserNotification.LegacyAction.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 32);

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t UserNotification.LegacyAction.textPlaceholder.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return v1;
}

uint64_t UserNotification.LegacyAction.textPlaceholder.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

UserNotificationsServices::UserNotification::LegacyAction::Style_optional __swiftcall UserNotification.LegacyAction.Style.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *sub_270B2A46C@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_270B2A48C()
{
  v1 = *v0;
  sub_270B318BC();
  MEMORY[0x2743B0EF0](v1);
  return sub_270B318EC();
}

uint64_t sub_270B2A4D4()
{
  v1 = *v0;
  sub_270B318BC();
  MEMORY[0x2743B0EF0](v1);
  return sub_270B318EC();
}

UserNotificationsServices::UserNotification::LegacyAction::ActionType_optional __swiftcall UserNotification.LegacyAction.ActionType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

void __swiftcall UserNotification.LegacyAction.init(identifier:)(UserNotificationsServices::UserNotification::LegacyAction *__return_ptr retstr, Swift::String identifier)
{
  *&retstr->style = 0;
  retstr->title = 0u;
  retstr->textPlaceholder = 0u;
  retstr->substituteEmojiInTextInput = 0;
  retstr->identifier = identifier;
}

uint64_t sub_270B2A6B4()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x656C746974;
  v4 = 0x63616C5074786574;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x656C797473;
  if (v1 != 1)
  {
    v5 = 0x79546E6F69746361;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_270B2A77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_270B302B0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_270B2A7A4(uint64_t a1)
{
  v2 = sub_270B2DF7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_270B2A7E0(uint64_t a1)
{
  v2 = sub_270B2DF7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UserNotification.LegacyAction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808448C8, &qword_270B34380);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 16);
  v22 = *(v1 + 17);
  v23 = v10;
  v11 = v1[3];
  v20 = v1[4];
  v21 = v11;
  v12 = v1[5];
  v18 = v1[6];
  v19 = v12;
  v17[3] = *(v1 + 56);
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2DF7C();
  sub_270B3190C();
  v32 = 0;
  v14 = v24;
  sub_270B3180C();
  if (!v14)
  {
    v15 = v22;
    v31 = v23;
    v30 = 1;
    sub_270B2DFD0();
    sub_270B3182C();
    v29 = v15;
    v28 = 2;
    sub_270B2E024();
    sub_270B3182C();
    v27 = 3;
    sub_270B317EC();
    v26 = 4;
    sub_270B317EC();
    v25 = 5;
    sub_270B3181C();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t UserNotification.LegacyAction.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = v0[3];
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[6];
  v9 = *(v0 + 56);
  sub_270B3142C();
  MEMORY[0x2743B0EF0](v3);
  MEMORY[0x2743B0EF0](v4);
  if (!v6)
  {
    sub_270B318DC();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_270B318DC();
    return sub_270B318DC();
  }

  sub_270B318DC();
  sub_270B3142C();
  if (!v8)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_270B318DC();
  sub_270B3142C();
  return sub_270B318DC();
}

uint64_t UserNotification.LegacyAction.hashValue.getter()
{
  sub_270B318BC();
  UserNotification.LegacyAction.hash(into:)();
  return sub_270B318EC();
}

uint64_t UserNotification.LegacyAction.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808448E8, &qword_270B34388);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_270B2DF7C();
  sub_270B318FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v36[0]) = 0;
  v11 = sub_270B3178C();
  v13 = v12;
  v32 = v11;
  LOBYTE(v33) = 1;
  sub_270B2E078();
  sub_270B317AC();
  v14 = LOBYTE(v36[0]);
  LOBYTE(v33) = 2;
  sub_270B2E0CC();
  sub_270B317AC();
  v44 = v14;
  v31 = LOBYTE(v36[0]);
  LOBYTE(v36[0]) = 3;
  v15 = sub_270B3176C();
  v17 = v16;
  v30 = v15;
  LOBYTE(v36[0]) = 4;
  v28 = sub_270B3176C();
  v29 = v18;
  v45 = 5;
  v19 = sub_270B3179C();
  (*(v6 + 8))(v9, v5);
  v27 = v19 & 1;
  v20 = v32;
  *&v33 = v32;
  *(&v33 + 1) = v13;
  LOBYTE(v34) = v44;
  BYTE1(v34) = v31;
  v21 = v29;
  v22 = v30;
  *(&v34 + 1) = v30;
  *v35 = v17;
  v23 = v28;
  *&v35[8] = v28;
  *&v35[16] = v29;
  v35[24] = v27;
  v24 = v34;
  *a2 = v33;
  a2[1] = v24;
  a2[2] = *v35;
  *(a2 + 41) = *&v35[9];
  sub_270B2E120(&v33, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v36[0] = v20;
  v36[1] = v13;
  v37 = v44;
  v38 = v31;
  v39 = v22;
  v40 = v17;
  v41 = v23;
  v42 = v21;
  v43 = v27;
  return sub_270B2E158(v36);
}

uint64_t sub_270B2AF34()
{
  sub_270B318BC();
  UserNotification.LegacyAction.hash(into:)();
  return sub_270B318EC();
}

uint64_t sub_270B2AF78()
{
  sub_270B318BC();
  UserNotification.LegacyAction.hash(into:)();
  return sub_270B318EC();
}

unint64_t sub_270B2B148@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_270B314CC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_270B209C4(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_270B209C4((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_270B314BC();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_270B3144C();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_270B3144C();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_270B314CC();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_270B209C4(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_270B314CC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_270B209C4(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_270B209C4((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_270B3144C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_270B2B508()
{
  v1 = sub_270B3116C();
  v24 = *(v1 - 8);
  v2 = *(v24 + 64);
  MEMORY[0x28223BE20](v1);
  v23 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for UserNotification.LocalizedContent(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = (&v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446D0, &qword_270B342E8);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v16 = &v23 - v15;
  sub_270B2D194(v0, &v23 - v15, &qword_2808446D0, &qword_270B342E8);
  if ((*(v9 + 48))(v16, 1, v8) == 1)
  {
    return sub_270B318DC();
  }

  sub_270B307AC(v16, v12, type metadata accessor for UserNotification.LocalizedContent);
  sub_270B318DC();
  if (v12[1])
  {
    v18 = *v12;
    sub_270B318DC();
    sub_270B3142C();
  }

  else
  {
    sub_270B318DC();
  }

  v19 = v24;
  if (!v12[3])
  {
    sub_270B318DC();
    if (v12[5])
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_270B318DC();
    goto LABEL_11;
  }

  v20 = v12[2];
  sub_270B318DC();
  sub_270B3142C();
  if (!v12[5])
  {
    goto LABEL_10;
  }

LABEL_8:
  v21 = v12[4];
  sub_270B318DC();
  sub_270B3142C();
LABEL_11:
  sub_270B2D194(v12 + *(v8 + 28), v7, &qword_280843D60, &qword_270B328E8);
  if ((*(v19 + 48))(v7, 1, v1) == 1)
  {
    sub_270B318DC();
  }

  else
  {
    v22 = v23;
    (*(v19 + 32))(v23, v7, v1);
    sub_270B318DC();
    sub_270B2C608(&qword_280844820, MEMORY[0x277CC8C40]);
    sub_270B3137C();
    (*(v19 + 8))(v22, v1);
  }

  if (*(v12 + *(v8 + 32)) != 2)
  {
    sub_270B318DC();
  }

  sub_270B318DC();
  return sub_270B09BA4(v12, type metadata accessor for UserNotification.LocalizedContent);
}

uint64_t sub_270B2B93C(uint64_t a1)
{
  v3 = sub_270B3115C();
  v52 = *(v3 - 8);
  v4 = *(v52 + 64);
  MEMORY[0x28223BE20](v3);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844840, &qword_270B34350);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v50 = &v45 - v9;
  v49 = sub_270B311EC();
  v48 = *(v49 - 8);
  v10 = *(v48 + 64);
  MEMORY[0x28223BE20](v49);
  v46 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844838, &qword_270B34348);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v47 = &v45 - v14;
  v15 = type metadata accessor for UserNotification.LegacyContent(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x28223BE20](v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2808446C8, &qword_270B342E0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v23 = &v45 - v22;
  sub_270B2D194(v1, &v45 - v22, &qword_2808446C8, &qword_270B342E0);
  v24 = *(v16 + 48);
  v51 = v15;
  if (v24(v23, 1, v15) == 1)
  {
    return sub_270B318DC();
  }

  v45 = v6;
  sub_270B307AC(v23, v19, type metadata accessor for UserNotification.LegacyContent);
  sub_270B318DC();
  v26 = *(v19 + 1);
  if (v26)
  {
    v27 = *(v19 + 20);
    v28 = v19[42];
    v29 = *(v19 + 3);
    v30 = *(v19 + 4);
    v31 = a1;
    v32 = *(v19 + 2);
    v33 = v3;
    *&v53 = *v19;
    v34 = v53;
    *(&v53 + 1) = v26;
    *v54 = v32;
    *&v54[8] = v29;
    *&v54[16] = v30;
    v54[26] = v28;
    *&v54[24] = v27;
    sub_270B318DC();
    v55[0] = v34;
    v55[1] = v26;
    v3 = v33;
    v55[2] = v32;
    v55[3] = v29;
    v55[4] = v30;
    v57 = v28;
    v56 = v27;
    sub_270B2DD4C(v55, &v58);
    UserNotification.LegacyCategory.hash(into:)(v31);
    v58 = v53;
    v59[0] = *v54;
    *(v59 + 11) = *&v54[11];
    sub_270B2DD84(&v58);
  }

  else
  {
    sub_270B318DC();
  }

  v35 = v51;
  v36 = v47;
  sub_270B2D194(&v19[v51[5]], v47, &qword_280844838, &qword_270B34348);
  v37 = v48;
  v38 = v49;
  if ((*(v48 + 48))(v36, 1, v49) == 1)
  {
    sub_270B318DC();
  }

  else
  {
    v39 = v46;
    (*(v37 + 32))(v46, v36, v38);
    sub_270B318DC();
    sub_270B2C608(&qword_2808447D0, MEMORY[0x277CC9578]);
    sub_270B3137C();
    (*(v37 + 8))(v39, v38);
  }

  v40 = v45;
  v41 = v50;
  sub_270B2D194(&v19[v35[6]], v50, &qword_280844840, &qword_270B34350);
  if ((*(v52 + 48))(v41, 1, v3) == 1)
  {
    sub_270B318DC();
  }

  else
  {
    v42 = v52;
    (*(v52 + 32))(v40, v41, v3);
    sub_270B318DC();
    sub_270B2C608(&qword_280844868, MEMORY[0x277CC8990]);
    sub_270B3137C();
    (*(v42 + 8))(v40, v3);
  }

  v43 = v19[v35[7]];
  sub_270B318DC();
  v44 = v19[v35[8]];
  sub_270B318DC();
  return sub_270B09BA4(v19, type metadata accessor for UserNotification.LegacyContent);
}

uint64_t sub_270B2BF4C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x2743B0EF0](v3);
  if (v3)
  {
    v5 = (a2 + 88);
    do
    {
      v7 = *(v5 - 7);
      v6 = *(v5 - 6);
      v8 = *(v5 - 40);
      v9 = *(v5 - 39);
      v11 = *(v5 - 4);
      v10 = *(v5 - 3);
      v12 = *(v5 - 1);
      v13 = *(v5 - 2);
      v14 = *v5;

      sub_270B3142C();
      MEMORY[0x2743B0EF0](v8);
      MEMORY[0x2743B0EF0](v9);
      if (v10)
      {
        sub_270B318DC();
        sub_270B3142C();
        if (!v12)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_270B318DC();
        if (!v12)
        {
LABEL_9:
          sub_270B318DC();
          goto LABEL_4;
        }
      }

      sub_270B318DC();
      sub_270B3142C();
LABEL_4:
      v5 += 64;
      sub_270B318DC();

      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t _s25UserNotificationsServices0A12NotificationV12LegacyActionV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a2 + 16);
  v9 = *(a2 + 17);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v13 = *(a2 + 40);
  v12 = *(a2 + 48);
  v23 = *(a2 + 56);
  v24 = *(a1 + 56);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    result = 0;
    if (v2 != v8 || v3 != v9)
    {
      return result;
    }

LABEL_9:
    if (v4)
    {
      if (!v11)
      {
        return 0;
      }

      if (v5 != v10 || v4 != v11)
      {
        v19 = v6;
        v20 = sub_270B3184C();
        v6 = v19;
        if ((v20 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v11)
    {
      return 0;
    }

    if (v7)
    {
      if (v12 && (v6 == v13 && v7 == v12 || (sub_270B3184C() & 1) != 0))
      {
        return v24 ^ v23 ^ 1u;
      }
    }

    else if (!v12)
    {
      return v24 ^ v23 ^ 1u;
    }

    return 0;
  }

  v21 = *(a2 + 24);
  v22 = *(a1 + 32);
  v15 = *(a2 + 48);
  v16 = *(a1 + 48);
  v17 = *(a1 + 40);
  v18 = sub_270B3184C();
  result = 0;
  if ((v18 & 1) != 0 && v2 == v8)
  {
    v6 = v17;
    v7 = v16;
    v12 = v15;
    v10 = v21;
    v4 = v22;
    if (v3 == v9)
    {
      goto LABEL_9;
    }
  }

  return result;
}

uint64_t _s25UserNotificationsServices0A12NotificationV14LegacyCategoryV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 41);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = *(a2 + 40);
  v11 = *(a2 + 41);
  v14 = *(a2 + 42);
  v15 = *(a1 + 42);
  if ((*a1 != *a2 || *(a1 + 8) != *(a2 + 8)) && (sub_270B3184C() & 1) == 0 || (sub_270B20AD4(v2, v8) & 1) == 0)
  {
    return 0;
  }

  if (!v4)
  {
    result = 0;
    if (v9)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (!v9)
  {
    return 0;
  }

  if (v3 != v7 || v4 != v9)
  {
    v13 = sub_270B3184C();
    result = 0;
    if ((v13 & 1) == 0)
    {
      return result;
    }

LABEL_16:
    if ((v5 ^ v10))
    {
      return result;
    }

    goto LABEL_17;
  }

  result = 0;
  if (v5 != v10)
  {
    return result;
  }

LABEL_17:
  if (((v6 ^ v11) & 1) == 0)
  {
    return v15 ^ v14 ^ 1u;
  }

  return result;
}

uint64_t _s25UserNotificationsServices0A12NotificationV8BehaviorV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0 && ((a1[2] ^ a2[2]) & 1) == 0)
  {
    v4 = *(a1 + 1);
    v5 = *(a2 + 1);
    if (v4)
    {
      if (v5)
      {
        sub_270B30764(0, &qword_2808447F8, 0x277D058E0);
        v6 = v5;
        v7 = v4;
        v8 = sub_270B3163C();

        if (v8)
        {
          return 1;
        }
      }
    }

    else if (!v5)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

BOOL _s25UserNotificationsServices0A12NotificationV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  sub_270B30764(0, &qword_280844AA8, 0x277D82BB8);
  v4 = *a1;
  v5 = *a2;
  if ((sub_270B3163C() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[1];
  v7 = a2[1];
  result = (v6 | v7) == 0;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (!v9)
  {
    sub_270B30764(0, &qword_28125CA18, 0x277CE1F98);
    v10 = v7;
    v11 = v6;
    v12 = sub_270B3163C();

    return v12 & 1;
  }

  return result;
}

unint64_t sub_270B2C4B8()
{
  result = qword_2808446F0;
  if (!qword_2808446F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808446F0);
  }

  return result;
}

unint64_t sub_270B2C50C()
{
  result = qword_2808446F8;
  if (!qword_2808446F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808446F8);
  }

  return result;
}

unint64_t sub_270B2C560()
{
  result = qword_280844708;
  if (!qword_280844708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844708);
  }

  return result;
}

unint64_t sub_270B2C5B4()
{
  result = qword_280844710;
  if (!qword_280844710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844710);
  }

  return result;
}

uint64_t sub_270B2C608(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_270B2C650()
{
  result = qword_280844730;
  if (!qword_280844730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844730);
  }

  return result;
}

unint64_t sub_270B2C6A4()
{
  result = qword_280844738;
  if (!qword_280844738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844738);
  }

  return result;
}

unint64_t sub_270B2C6F8()
{
  result = qword_280844740;
  if (!qword_280844740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844740);
  }

  return result;
}

unint64_t sub_270B2C74C()
{
  result = qword_280844748;
  if (!qword_280844748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844748);
  }

  return result;
}

unint64_t sub_270B2C7A0()
{
  result = qword_280844750;
  if (!qword_280844750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844750);
  }

  return result;
}

unint64_t sub_270B2C7F4()
{
  result = qword_280844760;
  if (!qword_280844760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844760);
  }

  return result;
}

unint64_t sub_270B2C848()
{
  result = qword_280844768;
  if (!qword_280844768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844768);
  }

  return result;
}

unint64_t sub_270B2C89C()
{
  result = qword_280844770;
  if (!qword_280844770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2808446C8, &qword_270B342E0);
    sub_270B2C608(&qword_280844778, type metadata accessor for UserNotification.LegacyContent);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844770);
  }

  return result;
}

unint64_t sub_270B2C950()
{
  result = qword_280844780;
  if (!qword_280844780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844780);
  }

  return result;
}

unint64_t sub_270B2C9A4()
{
  result = qword_280844788;
  if (!qword_280844788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844788);
  }

  return result;
}

unint64_t sub_270B2C9F8()
{
  result = qword_280844790;
  if (!qword_280844790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844790);
  }

  return result;
}

unint64_t sub_270B2CA4C()
{
  result = qword_280844798;
  if (!qword_280844798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844798);
  }

  return result;
}

unint64_t sub_270B2CAA0()
{
  result = qword_2808447A8;
  if (!qword_2808447A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808447A8);
  }

  return result;
}

unint64_t sub_270B2CAF4()
{
  result = qword_2808447C0;
  if (!qword_2808447C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808447C0);
  }

  return result;
}

uint64_t sub_270B2CB48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_270B2CBCC()
{
  result = qword_2808447F0;
  if (!qword_2808447F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808447F0);
  }

  return result;
}

unint64_t sub_270B2CC20()
{
  result = qword_280844810;
  if (!qword_280844810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844810);
  }

  return result;
}

BOOL _s25UserNotificationsServices0A12NotificationV16LocalizedContentV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  v4 = sub_270B3116C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D60, &qword_270B328E8);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v32 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280843D68, &qword_270B328F0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v32 - v15;
  v17 = a1[1];
  v18 = a2[1];
  if (v17)
  {
    if (!v18 || (*a1 != *a2 || v17 != v18) && (sub_270B3184C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v18)
  {
    return 0;
  }

  v19 = a1[3];
  v20 = a2[3];
  if (v19)
  {
    if (!v20 || (a1[2] != a2[2] || v19 != v20) && (sub_270B3184C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v20)
  {
    return 0;
  }

  v21 = a1[5];
  v22 = a2[5];
  if (v21)
  {
    if (!v22 || (a1[4] != a2[4] || v21 != v22) && (sub_270B3184C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v22)
  {
    return 0;
  }

  v33 = type metadata accessor for UserNotification.LocalizedContent(0);
  v23 = *(v33 + 28);
  v24 = *(v13 + 48);
  sub_270B2D194(a1 + v23, v16, &qword_280843D60, &qword_270B328E8);
  sub_270B2D194(a2 + v23, &v16[v24], &qword_280843D60, &qword_270B328E8);
  v25 = *(v5 + 48);
  if (v25(v16, 1, v4) == 1)
  {
    if (v25(&v16[v24], 1, v4) == 1)
    {
      sub_270B1E6D8(v16, &qword_280843D60, &qword_270B328E8);
      goto LABEL_30;
    }

LABEL_27:
    sub_270B1E6D8(v16, &qword_280843D68, &qword_270B328F0);
    return 0;
  }

  sub_270B2D194(v16, v12, &qword_280843D60, &qword_270B328E8);
  if (v25(&v16[v24], 1, v4) == 1)
  {
    (*(v5 + 8))(v12, v4);
    goto LABEL_27;
  }

  (*(v5 + 32))(v8, &v16[v24], v4);
  sub_270B2C608(&qword_280843D70, MEMORY[0x277CC8C40]);
  v27 = sub_270B3139C();
  v28 = *(v5 + 8);
  v28(v8, v4);
  v28(v12, v4);
  sub_270B1E6D8(v16, &qword_280843D60, &qword_270B328E8);
  if ((v27 & 1) == 0)
  {
    return 0;
  }

LABEL_30:
  v29 = *(v33 + 32);
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30 != 2)
  {
    return v31 != 2 && ((v31 ^ v30) & 1) == 0;
  }

  return v31 == 2;
}

unint64_t sub_270B2D0A0()
{
  result = qword_280844830;
  if (!qword_280844830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844830);
  }

  return result;
}

uint64_t sub_270B2D0F4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_270B2D144(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_270B2D194(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_270B2D1FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t _s25UserNotificationsServices0A12NotificationV13LegacyContentV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v74 = sub_270B3115C();
  v76 = *(v74 - 8);
  v4 = *(v76 + 64);
  MEMORY[0x28223BE20](v74);
  v70 = &v68[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844840, &qword_270B34350);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v68[-v8];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844A80, &qword_270B35EB0);
  v9 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v81 = &v68[-v10];
  v79 = sub_270B311EC();
  v78 = *(v79 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v79);
  v71 = &v68[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844838, &qword_270B34348);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v75 = &v68[-v15];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280844A88, &unk_270B35EB8);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x28223BE20](v16);
  v77 = &v68[-v19];
  v21 = *a1;
  v20 = *(a1 + 8);
  v23 = *(a1 + 16);
  v22 = *(a1 + 24);
  v24 = *(a1 + 32);
  LODWORD(v19) = *(a1 + 42);
  v83 = a1;
  v25 = *(a1 + 40) | (v19 << 16);
  v26 = *a2;
  v27 = *(a2 + 8);
  v29 = *(a2 + 16);
  v28 = *(a2 + 24);
  v30 = *(a2 + 40) | (*(a2 + 42) << 16);
  v82 = a2;
  v31 = *(a2 + 32);
  v85 = v31;
  v84 = v28;
  if (!v20)
  {
    v33 = v26;
    v72 = v18;
    sub_270B2D0F4(v21, 0);
    if (!v27)
    {
      sub_270B2D0F4(v33, 0);
      sub_270B2D144(v21, 0);
      goto LABEL_10;
    }

    v83 = v29;
    sub_270B2D0F4(v33, v27);
LABEL_8:
    sub_270B2D144(v21, v20);
    sub_270B2D144(v33, v27);
    goto LABEL_24;
  }

  *&v92 = v21;
  *(&v92 + 1) = v20;
  *v93 = v23;
  *&v93[8] = v22;
  *&v93[16] = v24;
  *&v93[24] = v25;
  v93[26] = BYTE2(v25);
  if (!v27)
  {
    v90 = v92;
    *v91 = *v93;
    *&v91[11] = *&v93[11];
    LODWORD(v82) = v30;
    v33 = v26;
    sub_270B2D0F4(v21, v20);
    v83 = v29;
    sub_270B2D0F4(v33, 0);
    sub_270B2D0F4(v21, v20);
    sub_270B2DD84(&v90);
    goto LABEL_8;
  }

  v72 = v18;
  *&v86 = v26;
  *(&v86 + 1) = v27;
  *v87 = v29;
  *&v87[8] = v28;
  *&v87[16] = v31;
  v87[26] = BYTE2(v30);
  *&v87[24] = v30;
  v32 = v26;
  v69 = _s25UserNotificationsServices0A12NotificationV14LegacyCategoryV2eeoiySbAE_AEtFZ_0(&v92, &v86);
  v88 = v86;
  v89[0] = *v87;
  *(v89 + 11) = *&v87[11];
  sub_270B2D0F4(v21, v20);
  sub_270B2D0F4(v32, v27);
  sub_270B2D0F4(v21, v20);
  sub_270B2DD84(&v88);
  v90 = v92;
  *v91 = *v93;
  *&v91[11] = *&v93[11];
  sub_270B2DD84(&v90);
  sub_270B2D144(v21, v20);
  if ((v69 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_10:
  v34 = type metadata accessor for UserNotification.LegacyContent(0);
  v35 = v34[5];
  v36 = *(v72 + 48);
  v37 = v83;
  v38 = v77;
  sub_270B2D194(v83 + v35, v77, &qword_280844838, &qword_270B34348);
  v39 = v82;
  sub_270B2D194(v82 + v35, &v38[v36], &qword_280844838, &qword_270B34348);
  v40 = v78;
  v41 = *(v78 + 48);
  v42 = v79;
  if (v41(v38, 1, v79) == 1)
  {
    v43 = v41(&v38[v36], 1, v42);
    v44 = v81;
    v45 = v80;
    if (v43 == 1)
    {
      sub_270B1E6D8(v38, &qword_280844838, &qword_270B34348);
      goto LABEL_17;
    }

LABEL_15:
    v49 = &qword_280844A88;
    v50 = &unk_270B35EB8;
    v51 = v38;
LABEL_23:
    sub_270B1E6D8(v51, v49, v50);
    goto LABEL_24;
  }

  v85 = v34;
  v46 = v75;
  sub_270B2D194(v38, v75, &qword_280844838, &qword_270B34348);
  v47 = v41(&v38[v36], 1, v42);
  v44 = v81;
  v48 = v80;
  if (v47 == 1)
  {
    (*(v40 + 8))(v46, v42);
    goto LABEL_15;
  }

  v52 = &v38[v36];
  v53 = v71;
  (*(v40 + 32))(v71, v52, v42);
  sub_270B2C608(&qword_280844A98, MEMORY[0x277CC9578]);
  v54 = sub_270B3139C();
  v55 = *(v40 + 8);
  v55(v53, v42);
  v55(v46, v42);
  sub_270B1E6D8(v38, &qword_280844838, &qword_270B34348);
  v34 = v85;
  v45 = v48;
  v37 = v83;
  if ((v54 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_17:
  v56 = v34[6];
  v57 = *(v73 + 48);
  sub_270B2D194(v37 + v56, v44, &qword_280844840, &qword_270B34350);
  sub_270B2D194(v39 + v56, v44 + v57, &qword_280844840, &qword_270B34350);
  v58 = *(v76 + 48);
  v59 = v74;
  if (v58(v44, 1, v74) != 1)
  {
    sub_270B2D194(v44, v45, &qword_280844840, &qword_270B34350);
    if (v58(v44 + v57, 1, v59) != 1)
    {
      v62 = v45;
      v63 = v76;
      v64 = v44 + v57;
      v65 = v70;
      (*(v76 + 32))(v70, v64, v59);
      sub_270B2C608(&qword_280844A90, MEMORY[0x277CC8990]);
      v66 = sub_270B3139C();
      v67 = *(v63 + 8);
      v67(v65, v59);
      v67(v62, v59);
      sub_270B1E6D8(v44, &qword_280844840, &qword_270B34350);
      if ((v66 & 1) == 0)
      {
        goto LABEL_24;
      }

      goto LABEL_27;
    }

    (*(v76 + 8))(v45, v59);
    goto LABEL_22;
  }

  if (v58(v44 + v57, 1, v59) != 1)
  {
LABEL_22:
    v49 = &qword_280844A80;
    v50 = &qword_270B35EB0;
    v51 = v44;
    goto LABEL_23;
  }

  sub_270B1E6D8(v44, &qword_280844840, &qword_270B34350);
LABEL_27:
  if (*(v37 + v34[7]) == *(v39 + v34[7]))
  {
    v60 = *(v37 + v34[8]) ^ *(v39 + v34[8]) ^ 1;
    return v60 & 1;
  }

LABEL_24:
  v60 = 0;
  return v60 & 1;
}

unint64_t sub_270B2DCA4()
{
  result = qword_280844850;
  if (!qword_280844850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844850);
  }

  return result;
}

unint64_t sub_270B2DCF8()
{
  result = qword_280844858;
  if (!qword_280844858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844858);
  }

  return result;
}

unint64_t sub_270B2DDB4()
{
  result = qword_280844878;
  if (!qword_280844878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844878);
  }

  return result;
}

unint64_t sub_270B2DE08()
{
  result = qword_280844890;
  if (!qword_280844890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844890);
  }

  return result;
}

unint64_t sub_270B2DE5C()
{
  result = qword_2808448A8;
  if (!qword_2808448A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448A8);
  }

  return result;
}

uint64_t sub_270B2DEB0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280844898, &qword_270B34370);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_270B2DF28()
{
  result = qword_2808448C0;
  if (!qword_2808448C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448C0);
  }

  return result;
}

unint64_t sub_270B2DF7C()
{
  result = qword_2808448D0;
  if (!qword_2808448D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448D0);
  }

  return result;
}

unint64_t sub_270B2DFD0()
{
  result = qword_2808448D8;
  if (!qword_2808448D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448D8);
  }

  return result;
}

unint64_t sub_270B2E024()
{
  result = qword_2808448E0;
  if (!qword_2808448E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448E0);
  }

  return result;
}

unint64_t sub_270B2E078()
{
  result = qword_2808448F0;
  if (!qword_2808448F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448F0);
  }

  return result;
}

unint64_t sub_270B2E0CC()
{
  result = qword_2808448F8;
  if (!qword_2808448F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808448F8);
  }

  return result;
}

unint64_t sub_270B2E264()
{
  result = qword_280844918;
  if (!qword_280844918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844918);
  }

  return result;
}

unint64_t sub_270B2E300()
{
  result = qword_280844928;
  if (!qword_280844928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844928);
  }

  return result;
}

unint64_t sub_270B2E354()
{
  result = qword_280844930;
  if (!qword_280844930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844930);
  }

  return result;
}

unint64_t sub_270B2E3AC()
{
  result = qword_280844938;
  if (!qword_280844938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844938);
  }

  return result;
}

unint64_t sub_270B2E404()
{
  result = qword_280844940;
  if (!qword_280844940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844940);
  }

  return result;
}

unint64_t sub_270B2E4A4()
{
  result = qword_280844950;
  if (!qword_280844950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844950);
  }

  return result;
}

unint64_t sub_270B2E4FC()
{
  result = qword_280844958;
  if (!qword_280844958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844958);
  }

  return result;
}

unint64_t sub_270B2E554()
{
  result = qword_280844960;
  if (!qword_280844960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844960);
  }

  return result;
}

unint64_t sub_270B2E5AC()
{
  result = qword_280844968;
  if (!qword_280844968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844968);
  }

  return result;
}

unint64_t sub_270B2E604()
{
  result = qword_280844970;
  if (!qword_280844970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844970);
  }

  return result;
}

unint64_t sub_270B2E65C()
{
  result = qword_280844978;
  if (!qword_280844978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844978);
  }

  return result;
}

void sub_270B2E6D8()
{
  sub_270B30764(319, &qword_28125CA30, 0x277CE1F78);
  if (v0 <= 0x3F)
  {
    sub_270B2E9A8(319, &qword_28125CA10, &qword_28125CA18, 0x277CE1F98);
    if (v1 <= 0x3F)
    {
      sub_270B2E954(319, &qword_28125D070, type metadata accessor for UserNotification.LegacyContent);
      if (v2 <= 0x3F)
      {
        sub_270B2E954(319, &qword_28125D000, type metadata accessor for UserNotification.LocalizedContent);
        if (v3 <= 0x3F)
        {
          sub_270B2EE1C(319, &qword_28125CC08);
          if (v4 <= 0x3F)
          {
            sub_270B2E9A8(319, &qword_28125CA00, &qword_28125CA08, 0x277CE1FD0);
            if (v5 <= 0x3F)
            {
              sub_270B2E954(319, &qword_28125D0F0, MEMORY[0x277D85578]);
              if (v6 <= 0x3F)
              {
                sub_270B2E9A8(319, &qword_28125C9F0, &qword_28125C9F8, 0x277CE2058);
                if (v7 <= 0x3F)
                {
                  sub_270B2EE1C(319, qword_28125CC10);
                  if (v8 <= 0x3F)
                  {
                    sub_270B2EE1C(319, &qword_28125CB90);
                    if (v9 <= 0x3F)
                    {
                      sub_270B2EE1C(319, &qword_28125CB98);
                      if (v10 <= 0x3F)
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
      }
    }
  }
}

void sub_270B2E954(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_270B3165C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_270B2E9A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_270B30764(255, a3, a4);
    v5 = sub_270B3165C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_270B2EA28()
{
  result = sub_270B311EC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_270B2EAB4()
{
  sub_270B2EE1C(319, &qword_28125CA50);
  if (v0 <= 0x3F)
  {
    sub_270B2E954(319, &qword_28125D100, MEMORY[0x277CC8C40]);
    if (v1 <= 0x3F)
    {
      sub_270B2EE1C(319, &qword_28125CA38);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for UserNotification.IncomingPriority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UserNotification.IncomingPriority(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_270B2ED28()
{
  sub_270B2EE1C(319, qword_28125CC50);
  if (v0 <= 0x3F)
  {
    sub_270B2E954(319, &qword_28125D0F8, MEMORY[0x277CC9578]);
    if (v1 <= 0x3F)
    {
      sub_270B2E954(319, &qword_28125D108, MEMORY[0x277CC8990]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_270B2EE1C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_270B3165C();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

__n128 __swift_memcpy43_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 27) = *(a2 + 27);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_270B2EE8C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 43))
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

uint64_t sub_270B2EED4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 42) = 0;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 43) = 1;
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

    *(result + 43) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_270B2EF50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_270B2EF98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_270B2F048(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_270B2F0D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_270B2F198(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_270B2F228(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_270B2F318(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t sub_270B2F3A8(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_270B2F48C()
{
  result = qword_280844980;
  if (!qword_280844980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844980);
  }

  return result;
}

unint64_t sub_270B2F4E4()
{
  result = qword_280844988;
  if (!qword_280844988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844988);
  }

  return result;
}

unint64_t sub_270B2F53C()
{
  result = qword_280844990;
  if (!qword_280844990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844990);
  }

  return result;
}

unint64_t sub_270B2F594()
{
  result = qword_280844998;
  if (!qword_280844998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844998);
  }

  return result;
}

unint64_t sub_270B2F5EC()
{
  result = qword_2808449A0;
  if (!qword_2808449A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449A0);
  }

  return result;
}

unint64_t sub_270B2F644()
{
  result = qword_2808449A8;
  if (!qword_2808449A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449A8);
  }

  return result;
}

unint64_t sub_270B2F69C()
{
  result = qword_2808449B0;
  if (!qword_2808449B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449B0);
  }

  return result;
}

unint64_t sub_270B2F6F4()
{
  result = qword_2808449B8;
  if (!qword_2808449B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449B8);
  }

  return result;
}

unint64_t sub_270B2F74C()
{
  result = qword_2808449C0;
  if (!qword_2808449C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449C0);
  }

  return result;
}

unint64_t sub_270B2F7A4()
{
  result = qword_2808449C8;
  if (!qword_2808449C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449C8);
  }

  return result;
}

unint64_t sub_270B2F7FC()
{
  result = qword_2808449D0;
  if (!qword_2808449D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449D0);
  }

  return result;
}

unint64_t sub_270B2F854()
{
  result = qword_2808449D8;
  if (!qword_2808449D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449D8);
  }

  return result;
}

unint64_t sub_270B2F8AC()
{
  result = qword_2808449E0;
  if (!qword_2808449E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449E0);
  }

  return result;
}

unint64_t sub_270B2F904()
{
  result = qword_2808449E8;
  if (!qword_2808449E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449E8);
  }

  return result;
}

unint64_t sub_270B2F95C()
{
  result = qword_2808449F0;
  if (!qword_2808449F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449F0);
  }

  return result;
}

unint64_t sub_270B2F9B4()
{
  result = qword_2808449F8;
  if (!qword_2808449F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2808449F8);
  }

  return result;
}

unint64_t sub_270B2FA0C()
{
  result = qword_280844A00;
  if (!qword_280844A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A00);
  }

  return result;
}

unint64_t sub_270B2FA64()
{
  result = qword_280844A08;
  if (!qword_280844A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A08);
  }

  return result;
}

unint64_t sub_270B2FABC()
{
  result = qword_280844A10;
  if (!qword_280844A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A10);
  }

  return result;
}

unint64_t sub_270B2FB14()
{
  result = qword_280844A18;
  if (!qword_280844A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A18);
  }

  return result;
}

unint64_t sub_270B2FB6C()
{
  result = qword_280844A20;
  if (!qword_280844A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A20);
  }

  return result;
}

unint64_t sub_270B2FBC4()
{
  result = qword_280844A28;
  if (!qword_280844A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A28);
  }

  return result;
}

unint64_t sub_270B2FC1C()
{
  result = qword_280844A30;
  if (!qword_280844A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A30);
  }

  return result;
}

unint64_t sub_270B2FC74()
{
  result = qword_280844A38;
  if (!qword_280844A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A38);
  }

  return result;
}

uint64_t sub_270B2FCC8()
{
  v0 = sub_270B3173C();

  if (v0 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_270B2FD14(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000011 && 0x8000000270B36FF0 == a2;
  if (v3 || (sub_270B3184C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000 || (sub_270B3184C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000270B366D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_270B3184C();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_270B2FE3C()
{
  v0 = sub_270B3173C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_270B2FE88()
{
  v0 = sub_270B3173C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_270B2FED4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726F6765746163 && a2 == 0xE800000000000000;
  if (v4 || (sub_270B3184C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000065 || (sub_270B3184C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_270B3184C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7961446C6C417369 && a2 == 0xED0000746E657645 || (sub_270B3184C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000270B37010 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_270B3184C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_270B3009C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_270B3184C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000 || (sub_270B3184C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000270B37030 == a2 || (sub_270B3184C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000270B37050 == a2 || (sub_270B3184C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657263536B636F6CLL && a2 == 0xEE00796C6E4F6E65 || (sub_270B3184C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000270B37070 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_270B3184C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_270B302B0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_270B3184C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C797473 && a2 == 0xE500000000000000 || (sub_270B3184C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570 || (sub_270B3184C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_270B3184C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x63616C5074786574 && a2 == 0xEF7265646C6F6865 || (sub_270B3184C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000270B37090 == a2)
  {

    return 5;
  }

  else
  {
    v5 = sub_270B3184C();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t sub_270B304C4()
{
  result = qword_280844A40;
  if (!qword_280844A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A40);
  }

  return result;
}

unint64_t sub_270B30518()
{
  result = qword_280844A48;
  if (!qword_280844A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A48);
  }

  return result;
}

unint64_t sub_270B3056C()
{
  result = qword_280844A50;
  if (!qword_280844A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A50);
  }

  return result;
}

unint64_t sub_270B305C0()
{
  result = qword_280844A58;
  if (!qword_280844A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A58);
  }

  return result;
}

unint64_t sub_270B30614()
{
  result = qword_280844A60;
  if (!qword_280844A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A60);
  }

  return result;
}

unint64_t sub_270B30668()
{
  result = qword_280844A68;
  if (!qword_280844A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A68);
  }

  return result;
}

unint64_t sub_270B306BC()
{
  result = qword_280844A70;
  if (!qword_280844A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A70);
  }

  return result;
}

unint64_t sub_270B30710()
{
  result = qword_280844A78;
  if (!qword_280844A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280844A78);
  }

  return result;
}

uint64_t sub_270B30764(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_270B307AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_270B308F0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_270B312BC();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_270B312AC();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t UNSNotificationList.list.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  *v1 = v2;
  return result;
}