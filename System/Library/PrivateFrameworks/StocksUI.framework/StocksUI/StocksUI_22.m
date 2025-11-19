unint64_t sub_2206E4468()
{
  result = qword_27CF58CD8;
  if (!qword_27CF58CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CD8);
  }

  return result;
}

uint64_t sub_2206E44BC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  sub_22044CF38(0);
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v53 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StockForYouFeedGroupKnobs();
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22058445C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v56 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v55 = &v44 - v15;
  sub_2206E4EA4(0, &qword_28127E220, MEMORY[0x277D844C8]);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v44 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2206E4DEC();
  v22 = v57;
  sub_220892A4C();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v47 = 0;
  v48 = v18;
  v49 = a1;
  v57 = v9;
  LOBYTE(v60) = 0;
  sub_22044DC80(&qword_281296B28, sub_22044CF38);
  v24 = v55;
  v25 = v52;
  sub_22089271C();
  sub_22044D0C0();
  LOBYTE(v59) = 1;
  sub_22044DC80(&qword_281296A48, sub_22044D0C0);
  sub_22089271C();
  v45 = v60;
  LOBYTE(v58) = 2;
  v26 = v17;
  v50 = v21;
  sub_22089271C();
  v46 = v59;
  v27 = v24;
  v28 = v56;
  sub_22062F8B8(v27, v56);
  v29 = v51;
  v30 = *(v51 + 48);
  v31 = v30(v28, 1, v25);
  v32 = v25;
  if (v31 == 1)
  {
    type metadata accessor for ForYouFeedServiceConfig();
    sub_22044DC80(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
    v33 = v53;
    sub_22088F7EC();
    v34 = v30(v56, 1, v25);
    v35 = v33;
    v36 = v48;
    v37 = v49;
    if (v34 != 1)
    {
      sub_22062F91C(v56);
    }
  }

  else
  {
    v35 = v53;
    (*(v29 + 32))(v53, v56, v25);
    v36 = v48;
    v37 = v49;
  }

  v38 = v57;
  (*(v29 + 32))(v57, v35, v32);
  v39 = v45;
  if (!v45)
  {
    v58 = 6;
    swift_allocObject();
    v39 = sub_22088FB7C();
  }

  v40 = v50;
  *(v38 + *(v6 + 20)) = v39;
  v41 = v54;
  v42 = v46;
  if (v46)
  {
    sub_22062F91C(v55);
    (*(v36 + 8))(v40, v26);
  }

  else
  {
    v58 = 1000;
    v43 = v55;
    swift_allocObject();
    v42 = sub_22088FB7C();
    sub_22062F91C(v43);
    (*(v36 + 8))(v50, v26);
  }

  *(v38 + *(v6 + 24)) = v42;
  sub_2206E4E40(v38, v41);
  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t sub_2206E4A54(void *a1)
{
  v3 = v1;
  sub_2206E4EA4(0, &qword_27CF58CE0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2206E4DEC();
  sub_220892A5C();
  LOBYTE(v15) = 0;
  sub_22044CF38(0);
  sub_22044DC80(&qword_27CF57D90, sub_22044CF38);
  sub_22089283C();
  if (!v2)
  {
    v11 = type metadata accessor for StockForYouFeedGroupKnobs();
    v15 = *(v3 + *(v11 + 20));
    v14 = 1;
    sub_22044D0C0();
    sub_22044DC80(&qword_27CF57D98, sub_22044D0C0);
    sub_22089283C();
    v15 = *(v3 + *(v11 + 24));
    v14 = 2;
    sub_22089283C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_2206E4CB8()
{
  v1 = 0xD000000000000014;
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
    return 0x73656C7572;
  }
}

uint64_t sub_2206E4D1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2206E5020(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2206E4D44(uint64_t a1)
{
  v2 = sub_2206E4DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2206E4D80(uint64_t a1)
{
  v2 = sub_2206E4DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2206E4DEC()
{
  result = qword_281289470;
  if (!qword_281289470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289470);
  }

  return result;
}

uint64_t sub_2206E4E40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockForYouFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_2206E4EA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2206E4DEC();
    v7 = a3(a1, &type metadata for StockForYouFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2206E4F1C()
{
  result = qword_27CF58CE8;
  if (!qword_27CF58CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58CE8);
  }

  return result;
}

unint64_t sub_2206E4F74()
{
  result = qword_281289460;
  if (!qword_281289460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289460);
  }

  return result;
}

unint64_t sub_2206E4FCC()
{
  result = qword_281289468;
  if (!qword_281289468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281289468);
  }

  return result;
}

uint64_t sub_2206E5020(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002208CEF70 == a2 || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002208CEF90 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_2208928BC();

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

id sub_2206E5154()
{
  result = sub_2204DD5AC(0);
  qword_2812B6B68 = result;
  return result;
}

uint64_t sub_2206E5178()
{
  v1 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  v2 = sub_2208852DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PriceFormatter.Style(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PriceFormatter.Style(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_2206E52BC(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_2206E52D4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_2206E52FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2204BE1E0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2206E536C()
{
  if (!qword_27CF58CF8)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF58CF8);
    }
  }
}

uint64_t sub_2206E53D4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2206E54A8()
{
  sub_22089146C();
}

uint64_t sub_2206E5568()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2206E5638@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2206E5760();
  *a1 = result;
  return result;
}

void sub_2206E5668(unint64_t *a1@<X8>)
{
  v2 = 0xEB00000000737275;
  v3 = 0x6F682D7265746661;
  if (*v1 == 2)
  {
    v3 = 0xD000000000000012;
    v2 = 0x80000002208BEC00;
  }

  v4 = 0x80000002208BEBC0;
  v5 = 0xD000000000000011;
  if (*v1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x80000002208BEBE0;
  }

  if (*v1 <= 1u)
  {
    v6 = v5;
  }

  else
  {
    v6 = v3;
  }

  if (*v1 <= 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_2206E570C()
{
  result = qword_27CF58D00;
  if (!qword_27CF58D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58D00);
  }

  return result;
}

uint64_t sub_2206E5760()
{
  v0 = sub_22089270C();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

UIImage __swiftcall UIImage.composite(with:)(UIImage with)
{
  [v1 size];
  v4 = v3;
  [(objc_class *)with.super.isa size];
  if (v4 <= v5)
  {
    v4 = v5;
  }

  [v1 size];
  v7 = v6;
  [(objc_class *)with.super.isa size];
  if (v7 <= v8)
  {
    v7 = v8;
  }

  v9 = [objc_allocWithZone(MEMORY[0x277D75560]) initWithSize_];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = v4;
  *(v10 + 32) = v7;
  *(v10 + 40) = with;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2206E59A0;
  *(v11 + 24) = v10;
  v18[4] = sub_220685948;
  v18[5] = v11;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 1107296256;
  v18[2] = sub_2206E5A04;
  v18[3] = &block_descriptor_31;
  v12 = _Block_copy(v18);
  v13 = v1;
  v14 = with.super.isa;

  v15 = [v9 imageWithActions_];

  _Block_release(v12);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v15;
  }

  __break(1u);
  return result;
}

void sub_2206E59A0(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 40);
  sub_2206E5A50(v3, a1);

  sub_2206E5A50(v4, a1);
}

void sub_2206E5A04(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

void sub_2206E5A50(void *a1, void *a2)
{
  [a1 size];
  [a1 size];
  v4 = [a2 CGContext];
  v5 = [a1 CGImage];
  if (v5)
  {
    [a1 size];
    [a1 size];
    sub_220891A1C();
  }

  else
  {
    __break(1u);
  }
}

void sub_2206E5B60(uint64_t a1@<X8>)
{
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  if (sub_22088618C())
  {
    v3 = 2;
  }

  else
  {
    sub_22046DA2C(v1 + 56, v50);
    __swift_project_boxed_opaque_existential_1(v50, v50[3]);
    v4 = sub_22088613C();
    __swift_destroy_boxed_opaque_existential_1(v50);
    v3 = (v4 & 1) == 0;
  }

  v47 = v3;
  v5 = objc_opt_self();
  v6 = sub_22089132C();
  v7 = [v5 linkWithBundleIdentifier_];

  if (!v7)
  {
    goto LABEL_72;
  }

  [v7 setDisplayLargeIcon_];
  [v7 setDisplayCaptionText_];
  v8 = v7;
  v9 = &off_27844B000;
  v10 = [v8 view];
  if (!v10)
  {
    goto LABEL_70;
  }

  v11 = v10;
  v12 = &selRef_su_localizedYearFormat;
  v13 = [v10 subviews];

  sub_22044D56C(0, &qword_28127E550);
  v14 = sub_2208916EC();

  if (v14 >> 62)
  {
    goto LABEL_26;
  }

  v46 = v8;
  if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    do
    {
      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x223D8A700](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_66;
        }

        v15 = *(v14 + 32);
      }

      v16 = v15;

      v17 = [v16 v12[313]];

      v14 = sub_2208916EC();
      if (v14 >> 62)
      {
        v18 = sub_2208926AC();
        if (!v18)
        {
          break;
        }
      }

      else
      {
        v18 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          break;
        }
      }

      v13 = 0;
      v8 = (v14 & 0xC000000000000001);
      while (1)
      {
        if (v8)
        {
          v19 = MEMORY[0x223D8A700](v13, v14);
        }

        else
        {
          if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_25;
          }

          v19 = *(v14 + 8 * v13 + 32);
        }

        v9 = v19;
        v12 = (v13 + 1);
        if (__OFADD__(v13, 1))
        {
          break;
        }

        objc_opt_self();
        v20 = swift_dynamicCastObjCClass();
        if (v20)
        {
          v48 = v20;
          goto LABEL_23;
        }

        ++v13;
        if (v12 == v18)
        {
          v48 = 0;
LABEL_23:
          v8 = v46;
          v12 = &selRef_su_localizedYearFormat;
          v9 = &off_27844B000;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      v46 = v8;
    }

    while (sub_2208926AC());
  }

  v48 = 0;
LABEL_31:

  v14 = [v48 attributedText];
  v21 = [v8 v9[453]];

  if (!v21)
  {
    goto LABEL_71;
  }

  v22 = [v21 v12[313]];

  v13 = sub_2208916EC();
  if (v13 >> 62)
  {
    goto LABEL_51;
  }

  if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_52:
    v26 = 0;
LABEL_53:

    v31 = [v26 image];
    v32 = _s11TeaSettings0B0C8StocksUIE7WelcomeV7VersionV14isBrandNewUserSbvgZ_0();
    v33 = sub_2206E6244();
    sub_2206E6534(v47, v32, v33, [objc_allocWithZone(MEMORY[0x277D755B8]) init], v49);
    if (v14)
    {
      v34 = v14;
      if ([v34 length] && v31)
      {
        v31 = v31;
        v35 = v50;
        sub_2206E6534(v47, v32, v34, v31, v50);
        goto LABEL_62;
      }

      v34 = v34;
      if ([v34 length])
      {
        v35 = v50;
        sub_2206E6534(v47, v32, v34, [objc_allocWithZone(MEMORY[0x277D755B8]) init], v50);
        goto LABEL_62;
      }
    }

    if (!v31)
    {
      v35 = v49;
      goto LABEL_63;
    }

    v31 = v31;
    v36 = sub_2206E6244();
    v35 = v50;
    sub_2206E6534(v47, v32, v36, v31, v50);
    v34 = v14;
LABEL_62:
    sub_2206E6A14(v49);

    v14 = v34;
LABEL_63:

    v37 = *(v35 + 20);
    v38 = *(v35 + 17);
    v39 = *(v35 + 72);
    v40 = *(v35 + 11);
    v41 = *(v35 + 12);
    v42 = *(v35 + 40);
    v43 = *(v35 + 56);
    v44 = *(v35 + 24);
    v45 = *(v35 + 8);
    *a1 = *v35;
    *(a1 + 8) = v45;
    *(a1 + 24) = v44;
    *(a1 + 40) = v42;
    *(a1 + 56) = v43;
    *(a1 + 72) = v39;
    *(a1 + 88) = v40;
    *(a1 + 96) = v41;
    *(a1 + 104) = *(v35 + 104);
    *(a1 + 120) = *(v35 + 120);
    *(a1 + 136) = v38;
    *(a1 + 144) = *(v35 + 9);
    *(a1 + 160) = v37;
    return;
  }

  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
LABEL_66:
      v23 = MEMORY[0x223D8A700](0, v13);
      goto LABEL_37;
    }

    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      break;
    }

    v23 = *(v13 + 32);
LABEL_37:
    v24 = v23;

    v25 = [v24 v12[313]];

    v13 = sub_2208916EC();
    if (v13 >> 62)
    {
      v26 = sub_2208926AC();
      if (!v26)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v26 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v26)
      {
        goto LABEL_53;
      }
    }

    v27 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x223D8A700](v27, v13);
      }

      else
      {
        if (v27 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v28 = *(v13 + 8 * v27 + 32);
      }

      v29 = v28;
      v12 = (v27 + 1);
      if (__OFADD__(v27, 1))
      {
        break;
      }

      objc_opt_self();
      v30 = swift_dynamicCastObjCClass();
      if (v30)
      {
        v26 = v30;
        goto LABEL_53;
      }

      ++v27;
      if (v12 == v26)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    if (!sub_2208926AC())
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  sub_22089267C();
  __break(1u);
}

id sub_2206E6244()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v3 = sub_22089132C();

  v4 = [v2 initWithString_];

  return v4;
}

uint64_t sub_2206E636C()
{
  sub_220885ACC();
  sub_220888FBC();
  sub_22044D56C(0, &qword_28127E7C0);
  v0 = sub_220891D0C();

  v1 = sub_220888E4C();

  return v1;
}

uint64_t sub_2206E6434()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

void sub_2206E6534(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = [objc_opt_self() bundleForClass_];
  if (a2)
  {
    v40 = 0x80000002208CF4F0;
  }

  else
  {
    v40 = 0x80000002208CF110;
  }

  v10 = sub_220884CAC();
  v50 = v11;
  v51 = v10;

  v12 = objc_opt_self();
  v13 = [v12 bundleForClass_];
  v14 = sub_220884CAC();
  v48 = v15;
  v49 = v14;

  v16 = [v12 bundleForClass_];
  v17 = sub_220884CAC();
  v46 = v18;
  v47 = v17;

  v19 = [v12 bundleForClass_];
  v20 = sub_220884CAC();
  v44 = v21;
  v45 = v20;

  v22 = [v12 bundleForClass_];
  v54 = sub_220884CAC();
  v55 = v23;

  v24 = [v12 bundleForClass_];
  if (a1 == 2)
  {
    v41 = 0x80000002208CF330;
    v25 = sub_220884CAC();
    v27 = v26;

    v28 = 0;
    v42 = 0;
    v43 = 0;
    v29 = v54;
    v54 = 0;
  }

  else
  {
    v30 = sub_220884CAC();
    v42 = v31;
    v43 = v30;

    v32 = [v12 bundleForClass_];
    v41 = 0x80000002208CF470;
    v29 = sub_220884CAC();
    v34 = v33;

    v25 = sub_2206E6434();
    v27 = v35;
    v28 = v55;
    v55 = v34;
  }

  v36 = [v12 bundleForClass_];
  v37 = sub_220884CAC();
  v39 = v38;

  *a5 = a1;
  *(a5 + 8) = v51;
  *(a5 + 16) = v50;
  *(a5 + 24) = v49;
  *(a5 + 32) = v48;
  *(a5 + 40) = v47;
  *(a5 + 48) = v46;
  *(a5 + 56) = v45;
  *(a5 + 64) = v44;
  *(a5 + 72) = v29;
  *(a5 + 80) = v55;
  *(a5 + 88) = v25;
  *(a5 + 96) = v27;
  *(a5 + 104) = v54;
  *(a5 + 112) = v28;
  *(a5 + 120) = v43;
  *(a5 + 128) = v42;
  *(a5 + 136) = v37;
  *(a5 + 144) = v39;
  *(a5 + 152) = a3;
  *(a5 + 160) = a4;
}

__n128 sub_2206E6A44@<Q0>(uint64_t a1@<X8>)
{
  sub_2206E5B60(v7);
  v2 = v7[9];
  *(a1 + 128) = v7[8];
  *(a1 + 144) = v2;
  *(a1 + 160) = v8;
  v3 = v7[5];
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v3;
  v4 = v7[7];
  *(a1 + 96) = v7[6];
  *(a1 + 112) = v4;
  v5 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v5;
  result = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8StocksUI12WelcomeModelV6BulletVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2206E6AD8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_2206E6B20(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_2206E6BA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v175 = a3;
  *&v179 = a2;
  v183 = a4;
  v170 = sub_22088516C();
  v169 = *(v170 - 8);
  MEMORY[0x28223BE20](v170, v6);
  v173 = v157 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v172 = v157 - v10;
  sub_2206E7AC4(0, &qword_28127ECC0, MEMORY[0x277D6C7C8]);
  *&v184 = v11;
  *&v182 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = v157 - v13;
  v15 = sub_220890E5C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v168 = v157 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v164 = v157 - v21;
  MEMORY[0x28223BE20](v22, v23);
  v166 = v157 - v24;
  MEMORY[0x28223BE20](v25, v26);
  v165 = v157 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v171 = (v157 - v30);
  MEMORY[0x28223BE20](v31, v32);
  *&v174 = v157 - v33;
  MEMORY[0x28223BE20](v34, v35);
  v37 = v157 - v36;
  *&v167 = v4;
  v38 = *(v4 + 16);
  sub_2206E7AC4(0, &qword_28127ED88, MEMORY[0x277D6C6E8]);
  v40 = v39;
  sub_220890E9C();
  sub_220890E4C();
  v41 = *(v16 + 8);
  *&v181 = v15;
  *&v178 = v16 + 8;
  *&v180 = v41;
  v41(v37, v15);
  v42 = v182;
  *&v176 = a1;
  sub_220890EAC();
  *&v177 = v38;
  v43 = sub_2208910AC();
  v45 = v44;

  v46 = *(v42 + 8);
  result = v46(v14, v184);
  v48 = 0uLL;
  v49 = 0.0;
  if (v45)
  {
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0uLL;
    v55 = 0uLL;
    v56 = 0uLL;
    v57 = 0uLL;
  }

  else
  {
    *&v182 = v43;
    sub_220890E9C();
    sub_220890E4C();
    v163 = v37;
    (v180)(v37, v181);
    sub_220890EAC();
    v58 = sub_2208910AC();
    v60 = v59;

    result = v46(v14, v184);
    if (v60 & 1) == 0 && (*&v184 = v58, v61 = type metadata accessor for StockChartCalloutLayoutOptions(), v62 = v175, v63 = v175 + v61[8], v64 = *(v63 + 8), v65 = v174, sub_220890E9C(), v66 = sub_220890E4C(), v68 = v67, v69 = v181, v70 = v180, (v180)(v65, v181), v185[0] = 0, LOBYTE(v66) = sub_2206E7BA8(v66, v68), result = , (v66) && (*&v174 = v63, v71 = v171, sub_220890E9C(), v72 = sub_220890E4C(), v74 = v73, v70(v71, v69), v185[0] = 0, LOBYTE(v72) = sub_2206E7BA8(v72, v74), result = , (v72))
    {
      v76 = *(v167 + 48);
      v75 = *(v167 + 56);
      v171 = __swift_project_boxed_opaque_existential_1((v167 + 24), v76);
      v77 = *(v62 + v61[7]);
      v78 = v75;
      v79 = *(v75 + 8);
      *&v177 = v40;
      v80 = v62;
      v81 = *(v79 + 8);
      v185[3] = v76;
      v185[4] = v78;
      v82 = v78;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v185);
      v162 = v77;
      v81(v77, v76, v79);
      v84 = v172;
      sub_2208850EC();
      v85 = v173;
      sub_2208850EC();
      v86 = sub_2206E7878(v80 + v61[6]);
      v87 = v80 + v61[5];
      v161 = v86;
      v88 = sub_22078E858(v84, v85, v87);
      v89 = *(v82 + 24);
      v171 = boxed_opaque_existential_1;
      v160 = v76;
      v159 = v82;
      v50 = v89(v88);

      sub_220891D7C();
      v91 = v90;
      v167 = v92;
      v93 = *v80;
      v94 = *(v174 + 16);
      v95 = *(v174 + 24);
      v157[1] = *v174;
      v157[2] = v94;
      v158 = v95;
      sub_220891A6C();
      *&v96 = v93 - *&v96;
      if (*&v96 >= v91)
      {
        *&v96 = v91;
      }

      v174 = v96;
      v97 = v163;
      sub_220890E9C();
      sub_220890E2C();
      v99 = v98;
      v100 = v181;
      v101 = v180;
      (v180)(v97, v181);
      v102 = v165;
      sub_220890E9C();
      sub_220890E2C();
      v104 = v103;
      v101(v102, v100);
      v105 = v99 - v104;
      v106 = v166;
      sub_220890E9C();
      sub_220890E2C();
      v108 = v107;
      v109 = v106;
      v110 = v101;
      v101(v109, v100);
      if (v108 < 5.0 && v108 != 0.0 || (v111 = v164, sub_220890E9C(), sub_220890E2C(), v113 = v112, v101(v111, v100), v114 = 1, v113 < 5.0) && v113 != 0.0)
      {
        v114 = 0;
      }

      v115 = *&v182;
      v116 = *&v184;
      v117 = 9666786;
      v118 = sub_2204DBC04(v114, v105);
      if (v119)
      {
        v120 = v119;
      }

      else
      {
        v118 = 9666786;
        v120 = 0xA300000000000000;
      }

      v121 = v159;
      v122 = v160;
      v52 = (*(v159 + 32))(v118, v120, v160, v159, v105);

      sub_220891D7C();
      v184 = v123;
      v176 = v124;
      v125 = v168;
      sub_220890E9C();
      sub_220890E2C();
      v127 = v126;
      v110(v125, v100);
      if (v127 - v105 <= 0.0)
      {
        v128 = 0.0;
      }

      else
      {
        v128 = v105 / (v127 - v105);
      }

      if (qword_27CF55AB8 != -1)
      {
        swift_once();
      }

      v129 = v93 - *&v174;
      v130 = v64 + v115;
      v131 = v64 + v116;
      v132 = qword_27CF6D008;
      v133 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
      v134 = [v132 stringFromNumber_];

      if (v134)
      {
        v117 = sub_22089136C();
        v136 = v135;
      }

      else
      {
        v136 = 0xA300000000000000;
      }

      v49 = v129 * 0.5;
      v53 = (*(v121 + 40))(v117, v136, v122, v121, v105);

      sub_220891D7C();
      *&v139 = v138;
      v182 = v139;
      v181 = v140;
      v141 = v93 - *&v184 - v138;
      v142 = v158;
      sub_220891A6C();
      v144 = v141 - v143;
      v145 = 0.0;
      if (v144 > 0.0)
      {
        v145 = v144;
      }

      if (v144 <= 50.0)
      {
        v146 = v145;
      }

      else
      {
        v146 = 50.0;
      }

      v147 = *&v184 + *&v182 + v146;
      v148 = v93 - v147 - v142;
      if (v148 <= v64)
      {
        v148 = v64;
      }

      v149 = v130 + (v131 - v130) * 0.5 - v147 * 0.5;
      if (v149 <= v64)
      {
        v149 = v64;
      }

      if (v148 >= v149)
      {
        v150 = v149;
      }

      else
      {
        v150 = v148;
      }

      v151 = [v162 layoutDirection];

      v152 = *(v169 + 8);
      v153 = v170;
      v152(v173, v170);
      v152(v172, v153);
      *(&v154 + 1) = *(&v184 + 1);
      *&v154 = v146 + *&v184 + v150;
      *(&v155 + 1) = *(&v182 + 1);
      *&v155 = v146 + *&v182 + v150;
      if (v151 != 1)
      {
        *&v155 = v150;
      }

      v178 = v155;
      if (v151 == 1)
      {
        *&v154 = v150;
      }

      v177 = v154;
      *&v154 = *(v175 + 8);
      *(&v156 + 1) = *(&v176 + 1);
      *&v156 = *&v154 - *&v176 + -4.0;
      v179 = v156;
      *&v154 = *&v154 - *&v181 + -4.0;
      v180 = v154;
      result = __swift_destroy_boxed_opaque_existential_1(v185);
      *&v56 = v177;
      *&v54 = v178;
      *&v57 = v182;
      *&v48 = v174;
      *(&v48 + 1) = v167;
      *&v55 = v184;
      *(&v54 + 1) = v179;
      *(&v55 + 1) = v176;
      *(&v56 + 1) = v180;
      v51 = 0x4014000000000000;
      *(&v57 + 1) = v181;
    }

    else
    {
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0uLL;
      v55 = 0uLL;
      v56 = 0uLL;
      v57 = 0uLL;
      v48 = 0uLL;
    }
  }

  v137 = v183;
  *v183 = v50;
  *(v137 + 1) = v49;
  v137[2] = v51;
  *(v137 + 3) = v48;
  v137[5] = v52;
  *(v137 + 3) = v54;
  *(v137 + 4) = v55;
  v137[10] = v53;
  *(v137 + 11) = v56;
  *(v137 + 13) = v57;
  return result;
}

uint64_t sub_2206E7878(uint64_t a1)
{
  v2 = v1;
  v4 = sub_22088543C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v1 + 64);
  if (*(v9 + 16) && (v10 = sub_2205CDF20(a1), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 8 * v10);
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    (*(v5 + 16))(v8, a1, v4);
    type metadata accessor for StockChartCalloutDateFormatter();
    v12 = swift_allocObject();
    *(v12 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___dateFormatter) = 0;
    *(v12 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter____lazy_storage___timeFormatter) = 0;
    (*(v5 + 32))(v12 + OBJC_IVAR____TtC8StocksUI30StockChartCalloutDateFormatter_timezone, v8, v4);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v2 + 64);
    *(v2 + 64) = 0x8000000000000000;
    sub_2207CF09C(v12, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 64) = v15;
    swift_endAccess();
  }

  return v12;
}

uint64_t sub_2206E7A58()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_2206E7AC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = sub_220890E5C();
    v8[1] = sub_2204CF210(&qword_28127EDB8);
    v8[2] = sub_2204CF210(&qword_28127EDC8);
    v8[3] = sub_2204CF210(&qword_28127EDC0);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

BOOL sub_2206E7BA8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtod_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_22089253C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_2206E7CBC(char a1, char a2)
{
  sub_2206E8A48(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  if (a1)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    v6 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v7 = v2[7];
    v8 = objc_opt_self();
    v9 = *MEMORY[0x277D74410];
    v10 = v6;
    v11 = [v8 systemFontOfSize:17.0 weight:v9];
    v12 = [v7 scaledFontForFont_];

    v13 = sub_22044D56C(0, &qword_28127E570);
    *(inited + 40) = v12;
    v14 = *MEMORY[0x277D740C0];
    *(inited + 64) = v13;
    *(inited + 72) = v14;
    if (a2)
    {
      v15 = objc_opt_self();
      v16 = v14;
      v17 = [v15 secondaryLabelColor];
    }

    else
    {
      v33 = v2[5];
      v34 = v2[6];
      __swift_project_boxed_opaque_existential_1(v2 + 2, v33);
      v35 = *(v34 + 16);
      v36 = *(v35 + 128);
      v37 = v14;
      v17 = v36(v33, v35);
    }
  }

  else
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_220899920;
    v18 = *MEMORY[0x277D740A8];
    *(inited + 32) = *MEMORY[0x277D740A8];
    v19 = v2[7];
    v20 = objc_opt_self();
    v21 = *MEMORY[0x277D74418];
    v22 = v18;
    v23 = [v20 systemFontOfSize:17.0 weight:v21];
    v24 = [v19 scaledFontForFont_];

    v25 = sub_22044D56C(0, &qword_28127E570);
    v26 = MEMORY[0x277D740C0];
    *(inited + 40) = v24;
    v27 = *v26;
    *(inited + 64) = v25;
    *(inited + 72) = v27;
    v28 = v2[5];
    v29 = v2[6];
    __swift_project_boxed_opaque_existential_1(v2 + 2, v28);
    v30 = *(v29 + 16);
    v31 = *(v30 + 256);
    v32 = v27;
    v17 = v31(v28, v30);
  }

  v38 = v17;
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v38;
  v39 = sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  return v39;
}

uint64_t sub_2206E7FD0(uint64_t a1)
{
  v27[1] = a1;
  sub_2206E8A48(0, &qword_28127E448, MEMORY[0x277D75058], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v27 - v4;
  v6 = sub_22089226C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [objc_opt_self() preferredFontForTextStyle_];
  v12 = sub_220891DAC();
  v13 = objc_opt_self();
  v14 = [v13 configurationWithFont:v11 scale:v12];

  sub_22048BC00();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_22089B130;
  v17 = v1[5];
  v16 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v17);
  v18 = (*(*(v16 + 16) + 128))(v17);
  v19 = [v18 stocksAccessibilityAdjustedForIncreaseContrast];

  *(v15 + 32) = v19;
  sub_22044D56C(0, &qword_28127E530);
  v20 = sub_2208916DC();

  v21 = [v13 configurationWithPaletteColors_];

  v22 = [v14 configurationByApplyingConfiguration_];
  sub_22089224C();
  v23 = v22;
  v24 = sub_22089132C();
  v25 = [objc_opt_self() systemImageNamed:v24 withConfiguration:v23];

  sub_22089223C();
  (*(v7 + 16))(v5, v10, v6);
  (*(v7 + 56))(v5, 0, 1, v6);
  sub_22089228C();

  return (*(v7 + 8))(v10, v6);
}

id sub_2206E8340(char a1)
{
  v3 = [objc_opt_self() preferredFontForTextStyle_];
  v4 = sub_220891DAC();
  v5 = objc_opt_self();
  v6 = [v5 configurationWithFont:v3 scale:v4];

  sub_22048BC00();
  if (a1)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_22089B120;
    *(v7 + 32) = [objc_opt_self() whiteColor];
    v8 = v1[5];
    v9 = v1[6];
    __swift_project_boxed_opaque_existential_1(v1 + 2, v8);
    *(v7 + 40) = (*(*(v9 + 16) + 128))(v8);
    sub_22044D56C(0, &qword_28127E530);
    v10 = sub_2208916DC();

    v11 = [v5 configurationWithPaletteColors_];

    v12 = [v6 configurationByApplyingConfiguration_];
    v13 = sub_22089132C();
    v14 = [objc_opt_self() systemImageNamed:v13 withConfiguration:v12];

    if (!v14)
    {
LABEL_6:
      v14 = [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    }
  }

  else
  {
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_22089B130;
    *(v15 + 32) = [objc_opt_self() secondaryLabelColor];
    sub_22044D56C(0, &qword_28127E530);
    v16 = sub_2208916DC();

    v11 = [v5 configurationWithPaletteColors_];

    v12 = [v6 configurationByApplyingConfiguration_];
    v17 = sub_22089132C();
    v18 = [objc_opt_self() systemImageNamed:v17 withConfiguration:v12];

    if (!v18)
    {
      goto LABEL_6;
    }

    v19 = [v5 configurationWithWeight_];
    v14 = [v18 imageByApplyingSymbolConfiguration_];

    if (!v14)
    {
      goto LABEL_6;
    }
  }

  return v14;
}

void sub_2206E870C(void *a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  [a1 setNumberOfLines_];
  sub_2206E7CBC(a5, a4);
  v8 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v9 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v10 = sub_22089125C();

  v11 = [v8 initWithString:v9 attributes:v10];

  [a1 setAttributedText_];
}

uint64_t sub_2206E881C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *(*v3 + 40);
  v8 = *(*v3 + 48);
  v9 = __swift_project_boxed_opaque_existential_1((*v3 + 16), v7);
  v10 = *(v7 - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v14 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  v15 = (*(*(v8 + 8) + 8))(a1, v7, v13);
  v17 = MEMORY[0x28223BE20](v15, v16);
  (*(v10 + 16))(&v20 - v14, &v20 - v14, v7, v17);
  v18 = sub_2206E8984(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

uint64_t sub_2206E8984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = a3;
  v11 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v9);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v7 = swift_allocObject();
  *(v7 + 56) = [objc_allocWithZone(MEMORY[0x277D75520]) initForTextStyle_];
  sub_220457328(&v9, v7 + 16);
  return v7;
}

void sub_2206E8A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2206E8AAC()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver:v0 name:*MEMORY[0x277D76480] object:0];

  return swift_deallocClassInstance();
}

void sub_2206E8B34()
{
  v1 = [*(v0 + 16) allObjects];
  sub_2206E8D24();
  v2 = sub_2208916EC();

  if (v2 >> 62)
  {
    v3 = sub_2208926AC();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x223D8A700](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    [v5 invertColorsStatusDidChange];
    swift_unknownObjectRelease();
  }

LABEL_10:
}

unint64_t sub_2206E8D24()
{
  result = qword_27CF58D08;
  if (!qword_27CF58D08)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27CF58D08);
  }

  return result;
}

uint64_t sub_2206E8E40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v28 = type metadata accessor for StockFeedConfig();
  MEMORY[0x28223BE20](v28, v4);
  v6 = (&v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x277D83D88];
  sub_22044D940(0, &qword_281296B78, MEMORY[0x277D32028], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v27 = &v25 - v10;
  sub_22044D940(0, &qword_281299480, MEMORY[0x277CC9578], v7);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v25 - v13;
  sub_2206E9814();
  v16 = v15;
  v26 = *(v15 - 8);
  MEMORY[0x28223BE20](v15, v17);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2206E9870();
  sub_220892A4C();
  if (!v2)
  {
    sub_22044D940(0, &qword_28127EA30, type metadata accessor for StockFeedGroupConfig, MEMORY[0x277D83940]);
    v32 = 0;
    sub_2206E98C4();
    sub_22089271C();
    v20 = v33;
    sub_22088516C();
    v31 = 1;
    sub_2206E999C(&qword_281299490, MEMORY[0x277CC9578]);
    sub_22089271C();
    sub_22088F67C();
    v30 = 2;
    sub_2206E999C(&qword_281296B80, MEMORY[0x277D32028]);
    v21 = v27;
    sub_22089271C();
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    (*(v26 + 8))(v19, v16);
    *v6 = v22;
    v23 = v28;
    sub_220528AF8(v14, v6 + *(v28 + 20), &qword_281299480, MEMORY[0x277CC9578]);
    sub_220528AF8(v21, v6 + *(v23 + 24), &qword_281296B78, MEMORY[0x277D32028]);
    sub_2206E99E4(v6, v29);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2206E9250(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x446873696C627570;
  v4 = 0xEB00000000657461;
  if (v2 != 1)
  {
    v3 = 0x617461646174656DLL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x7370756F7267;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0x446873696C627570;
  v8 = 0xEB00000000657461;
  if (*a2 != 1)
  {
    v7 = 0x617461646174656DLL;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x7370756F7267;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2208928BC();
  }

  return v11 & 1;
}

uint64_t sub_2206E9360()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2206E9408()
{
  sub_22089146C();
}

uint64_t sub_2206E949C()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2206E9540@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2206E9B60();
  *a1 = result;
  return result;
}

void sub_2206E9570(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xEB00000000657461;
  v5 = 0x446873696C627570;
  if (v2 != 1)
  {
    v5 = 0x617461646174656DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x7370756F7267;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_2206E95D4()
{
  v1 = 0x446873696C627570;
  if (*v0 != 1)
  {
    v1 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7370756F7267;
  }
}

uint64_t sub_2206E9634@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2206E9B60();
  *a1 = result;
  return result;
}

uint64_t sub_2206E965C(uint64_t a1)
{
  v2 = sub_2206E9870();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2206E9698(uint64_t a1)
{
  v2 = sub_2206E9870();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2206E9774@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_22047E900(v3 + *(a2 + 20), a3 + *(a2 + 20), &qword_281299480, MEMORY[0x277CC9578]);
  sub_22047E900(v3 + *(a2 + 24), a3 + *(a2 + 24), &qword_281296B78, MEMORY[0x277D32028]);
  *a3 = a1;
}

void sub_2206E9814()
{
  if (!qword_28127E278)
  {
    sub_2206E9870();
    v0 = sub_2208927BC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E278);
    }
  }
}

unint64_t sub_2206E9870()
{
  result = qword_281292F80[0];
  if (!qword_281292F80[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_281292F80);
  }

  return result;
}

unint64_t sub_2206E98C4()
{
  result = qword_28127EA28;
  if (!qword_28127EA28)
  {
    sub_22044D940(255, &qword_28127EA30, type metadata accessor for StockFeedGroupConfig, MEMORY[0x277D83940]);
    sub_2206E999C(&qword_28128E960, type metadata accessor for StockFeedGroupConfig);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28127EA28);
  }

  return result;
}

uint64_t sub_2206E999C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2206E99E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2206E9A5C()
{
  result = qword_27CF58D10;
  if (!qword_27CF58D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58D10);
  }

  return result;
}

unint64_t sub_2206E9AB4()
{
  result = qword_281292F70;
  if (!qword_281292F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281292F70);
  }

  return result;
}

unint64_t sub_2206E9B0C()
{
  result = qword_281292F78;
  if (!qword_281292F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281292F78);
  }

  return result;
}

uint64_t sub_2206E9B60()
{
  v0 = sub_22089270C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

id sub_2206E9BE0()
{
  v1 = OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___titleLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___titleLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___titleLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v5 = sub_22089132C();
    [v4 setText_];

    v6 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_2206E9CE4()
{
  v1 = OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___messageLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___messageLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___messageLabel);
  }

  else
  {
    v4 = sub_2206E9D48();
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2206E9D48()
{
  v0 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
  v1 = sub_22089132C();
  [v0 setText_];

  v2 = [objc_opt_self() preferredFontForTextStyle_];
  [v0 setFont_];

  [v0 setNumberOfLines_];
  [v0 setTextAlignment_];
  [v0 setTranslatesAutoresizingMaskIntoConstraints_];
  return v0;
}

id sub_2206E9E3C()
{
  v1 = OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textFieldLabel;
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textFieldLabel);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textFieldLabel);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D756B8]) init];
    v5 = [objc_opt_self() preferredFontForTextStyle_];
    [v4 setFont_];

    v6 = [objc_opt_self() secondaryLabelColor];
    [v4 setTextColor_];

    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    v7 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_2206E9F4C()
{
  v1 = OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textField;
  v2 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textField);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textField);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x277D75BB8]) init];
    [v4 setBorderStyle_];
    [v4 setTranslatesAutoresizingMaskIntoConstraints_];
    [v4 setEnabled_];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_2206E9FFC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v6 = *(v4 + *a1);
  if (v6)
  {
    v7 = *(v4 + *a1);
  }

  else
  {
    sub_22044D56C(0, &qword_27CF58D88);
    sub_22044D56C(0, &qword_28127E450);
    v10 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v11 = v4;
    sub_2208920BC();
    v12 = sub_22089229C();
    [v12 setRole_];
    v13 = v12;
    v14 = [v13 widthAnchor];
    v15 = [v14 constraintGreaterThanOrEqualToConstant_];

    [v15 setActive_];
    [v13 setTranslatesAutoresizingMaskIntoConstraints_];

    v16 = *(v11 + v5);
    *(v11 + v5) = v13;
    v7 = v13;

    v6 = 0;
  }

  v17 = v6;
  return v7;
}

void sub_2206EA1C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_onCancel);
    if (v2)
    {

      v2(v3);
      sub_2204DA45C(v2);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_2206EA264()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = *(Strong + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_onSubmit);
    if (v2)
    {

      v3 = sub_2206E9F4C();
      v4 = [v3 text];

      if (v4)
      {
        v5 = sub_22089136C();
        v7 = v6;
      }

      else
      {
        v5 = 0;
        v7 = 0xE000000000000000;
      }

      v2(v5, v7);
      sub_2204DA45C(v2);
    }

    [v1 dismissViewControllerAnimated:1 completion:0];
  }
}

id sub_2206EA408()
{
  v1 = v0;
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewDidLoad);
  v2 = [objc_opt_self() mainBundle];
  sub_220884CAC();

  v3 = sub_22089132C();

  [v1 setAccessibilityLabel_];

  sub_2206EA5CC();
  v4 = *&v1[OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_configureTextField];
  if (v4)
  {

    v5 = sub_2206E9F4C();
    v6 = sub_2206E9E3C();
    v4(v5, v6);
    sub_2204DA45C(v4);
  }

  result = [v1 view];
  if (result)
  {
    v8 = result;
    [result systemLayoutSizeFittingSize_];
    v10 = v9;
    v12 = v11;

    return [v1 setPreferredContentSize_];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2206EA5CC()
{
  v1 = v0;
  sub_22048BC00();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22089B120;
  *(v2 + 32) = sub_2206E9FFC(&OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___cancelButton, &OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_cancelTitle, sub_2206EB2EC, 2);
  *(v2 + 40) = sub_2206E9FFC(&OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___submitButton, &OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_submitTitle, sub_2206EB2E4, 1);
  v3 = objc_allocWithZone(MEMORY[0x277D75A68]);
  sub_22044D56C(0, &qword_28127E550);
  v4 = sub_2208916DC();

  v5 = [v3 initWithArrangedSubviews_];

  [v5 setAxis_];
  [v5 setDistribution_];
  [v5 setSpacing_];
  v6 = v5;
  [v6 setTranslatesAutoresizingMaskIntoConstraints_];
  v7 = [v1 view];
  if (!v7)
  {
    __break(1u);
    goto LABEL_12;
  }

  v8 = v7;
  v71 = v6;
  [v7 addSubview_];

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22089B120;
  *(v9 + 32) = sub_2206E9E3C();
  *(v9 + 40) = sub_2206E9F4C();
  v10 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v11 = sub_2208916DC();

  v12 = [v10 &selRef:v11 initWithFormat:? localeIdentifier:? + 7];

  [v12 &selRef_accessibilityFrame];
  [v12 setSpacing_];
  [v12 setAlignment_];
  v13 = v12;
  [v13 setTranslatesAutoresizingMaskIntoConstraints_];
  v72 = OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textField;
  v14 = *&v1[OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textField];
  type metadata accessor for UILayoutPriority(0);
  sub_2206EB28C();
  v15 = v14;
  sub_22088E95C();
  LODWORD(v16) = v73;
  [v15 setContentHuggingPriority:0 forAxis:v16];

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22089E460;
  *(v17 + 32) = sub_2206E9BE0();
  *(v17 + 40) = sub_2206E9CE4();
  *(v17 + 48) = v13;
  v18 = objc_allocWithZone(MEMORY[0x277D75A68]);
  v19 = v13;
  v20 = sub_2208916DC();

  v21 = [v18 &selRef:v20 initWithFormat:? localeIdentifier:? + 7];

  [v21 &selRef_accessibilityFrame];
  [v21 setAlignment_];
  [v21 setSpacing_];
  [v21 setCustomSpacing:*&v1[OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___messageLabel] afterView:20.0];
  v22 = v21;
  [v22 setTranslatesAutoresizingMaskIntoConstraints_];
  v23 = [v1 view];
  if (!v23)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v24 = v23;
  [v23 addSubview_];

  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_2208AC0D0;
  v26 = [v22 topAnchor];
  v27 = [v1 view];
  if (!v27)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v28 = v27;
  v29 = [v27 topAnchor];

  v30 = [v26 constraintEqualToSystemSpacingBelowAnchor:v29 multiplier:1.0];
  *(v25 + 32) = v30;
  v31 = [v1 view];
  if (!v31)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v32 = v31;
  v33 = [v31 trailingAnchor];

  v34 = [v22 trailingAnchor];
  v35 = [v33 constraintEqualToSystemSpacingAfterAnchor:v34 multiplier:1.0];

  *(v25 + 40) = v35;
  v36 = [v22 leadingAnchor];
  v37 = [v1 view];
  if (!v37)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v38 = v37;
  v39 = [v37 leadingAnchor];

  v40 = [v36 constraintEqualToSystemSpacingAfterAnchor:v39 multiplier:1.0];
  *(v25 + 48) = v40;
  v41 = [v19 heightAnchor];
  v42 = [*&v1[v72] heightAnchor];
  v43 = [v41 constraintEqualToAnchor_];

  *(v25 + 56) = v43;
  v44 = [v19 widthAnchor];

  v45 = [v22 widthAnchor];
  v46 = [v44 constraintEqualToAnchor_];

  *(v25 + 64) = v46;
  v47 = [v71 topAnchor];
  v48 = [v22 bottomAnchor];

  v49 = [v47 constraintEqualToAnchor:v48 constant:20.0];
  *(v25 + 72) = v49;
  v50 = [v71 leadingAnchor];
  v51 = [v1 view];
  if (!v51)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v52 = v51;
  v53 = [v51 leadingAnchor];

  v54 = [v50 constraintGreaterThanOrEqualToSystemSpacingAfterAnchor:v53 multiplier:1.0];
  *(v25 + 80) = v54;
  v55 = [v1 view];
  if (!v55)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v56 = v55;
  v57 = [v55 trailingAnchor];

  v58 = [v71 trailingAnchor];
  v59 = [v57 constraintEqualToSystemSpacingAfterAnchor:v58 multiplier:1.0];

  *(v25 + 88) = v59;
  v60 = [v1 view];
  if (!v60)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v61 = v60;
  v62 = [v60 bottomAnchor];

  v63 = [v71 bottomAnchor];
  v64 = [v62 constraintEqualToSystemSpacingBelowAnchor:v63 multiplier:1.0];

  *(v25 + 96) = v64;
  v65 = [v1 view];
  if (v65)
  {
    v66 = v65;
    v67 = objc_opt_self();
    v68 = [v66 widthAnchor];

    v69 = [v68 constraintEqualToConstant_];
    *(v25 + 104) = v69;
    sub_22044D56C(0, &qword_28127E790);
    v70 = sub_2208916DC();

    [v67 activateConstraints_];

    return;
  }

LABEL_19:
  __break(1u);
}

unint64_t sub_2206EB28C()
{
  result = qword_27CF58D80;
  if (!qword_27CF58D80)
  {
    type metadata accessor for UILayoutPriority(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58D80);
  }

  return result;
}

void sub_2206EB2F4()
{
  v1 = (v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_configureTextField);
  *v1 = 0;
  v1[1] = 0;
  v2 = (v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_onSubmit);
  *v2 = 0;
  v2[1] = 0;
  v3 = (v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController_onCancel);
  *v3 = 0;
  v3[1] = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___messageLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textFieldLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___textField) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___cancelButton) = 0;
  *(v0 + OBJC_IVAR____TtC8StocksUI24TextFieldAlertController____lazy_storage___submitButton) = 0;
  sub_22089267C();
  __break(1u);
}

uint64_t sub_2206EB3C8(uint64_t a1)
{
  __swift_project_boxed_opaque_existential_1((a1 + 56), *(a1 + 80));
  sub_22088613C();
  sub_2205288F4(0, &qword_28127DF68, type metadata accessor for ForYouFeedGroupConfig, MEMORY[0x277D84560]);
  v1 = *(type metadata accessor for ForYouFeedGroupConfig() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_220899360;
  if (qword_281296C30 != -1)
  {
    swift_once();
  }

  sub_220452A8C();
  v5 = v4;
  v6 = __swift_project_value_buffer(v4, qword_2812B6BA0);
  (*(*(v5 - 8) + 16))(v3 + v2, v6, v5);
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t sub_2206EB554()
{
  v1 = sub_2206EB3C8(*v0);
  sub_22044D56C(0, &qword_28127E608);
  sub_220888FBC();
  *(swift_allocObject() + 16) = v1;
  v2 = sub_220888D9C();
  type metadata accessor for ForYouFeedServiceConfig();
  v3 = sub_220888E5C();

  return v3;
}

uint64_t sub_2206EB648(uint64_t a1)
{
  v2 = [*(a1 + 96) appConfiguration];
  if ([v2 respondsToSelector_])
  {
    [v2 paidBundleConfig];
    swift_unknownObjectRelease();
    sub_2206EC3B0();
    swift_allocObject();
    return sub_220888ECC();
  }

  else
  {
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1((a1 + 112), *(a1 + 136));
    return sub_220890A4C();
  }
}

uint64_t sub_2206EB724(void **a1)
{
  v1 = *a1;
  sub_220888FBC();
  v2 = sub_220888D9C();
  type metadata accessor for ForYouFeedContentConfig();
  sub_220888E4C();

  *(swift_allocObject() + 16) = v1;
  v3 = v1;
  v4 = sub_220888D9C();
  sub_2206EC434();
  v5 = sub_220888E4C();

  return v5;
}

uint64_t sub_2206EB838(uint64_t a1, void *a2)
{
  v4 = sub_22088F87C();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v51 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220885ACC();
  v48 = *(v7 - 8);
  v49 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ForYouFeedServiceConfig();
  v12 = (v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v44 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206EC434();
  v16 = v15 - 8;
  MEMORY[0x28223BE20](v15, v17);
  v19 = (&v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for ForYouFeedContentConfig();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = v23;
  MEMORY[0x28223BE20](v24, v25);
  v27 = &v41 - v26;
  v45 = &v41 - v26;
  sub_220520948(a1, v19, sub_2206EC434);
  v28 = *v19;
  sub_2206EC4CC(v19 + *(v16 + 56), v27);
  v42 = type metadata accessor for ForYouFeedContentConfig;
  sub_220520948(v27, v23, type metadata accessor for ForYouFeedContentConfig);
  __swift_project_boxed_opaque_existential_1(a2 + 7, a2[10]);
  v29 = v28;
  v43 = v29;
  sub_22088641C();
  v30 = v46;
  v31 = v47;
  (*(v46 + 104))(v51, *MEMORY[0x277D32220], v47);
  __swift_project_boxed_opaque_existential_1(a2 + 19, a2[22]);
  v32 = v44;
  sub_2208863EC();
  sub_220520948(v50, v32, v42);
  *(v32 + v12[8]) = v29;
  v34 = v48;
  v33 = v49;
  v35 = v10;
  (*(v48 + 16))(v32 + v12[9], v10, v49);
  v36 = v51;
  (*(v30 + 16))(v32 + v12[10], v51, v31);
  sub_220885A4C();
  v38 = v37;
  (*(v30 + 8))(v36, v31);
  (*(v34 + 8))(v35, v33);
  sub_2206EC354(v50);
  *(v32 + v12[11]) = v38;
  sub_2205288F4(0, &qword_281298630, type metadata accessor for ForYouFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v39 = sub_220888ECC();

  sub_2206EC354(v45);
  return v39;
}

uint64_t sub_2206EBC80(uint64_t a1)
{
  sub_2205288F4(0, &qword_2812994E0, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v15 - v4;
  v6 = sub_220884E9C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298ED8 != -1)
  {
    swift_once();
  }

  if (sub_220886B7C())
  {
    if (qword_27CF55AF0 != -1)
    {
      swift_once();
    }

    sub_22044DCC8(&qword_27CF58D90, v11, type metadata accessor for NFFForYouFeedServiceConfigFetcher);
    sub_220886B3C();
    sub_220884E8C();

    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_22047C4E4(v5);
      sub_2206EC5B8();
      swift_allocError();
      *v12 = 1;
      sub_2206EC60C();
      swift_allocObject();
      return sub_220888EBC();
    }

    else
    {
      (*(v7 + 32))(v10, v5, v6);
      v14 = sub_2206EC65C(v10);
      (*(v7 + 8))(v10, v6);
      return v14;
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
    return sub_22088644C();
  }
}

void sub_2206EBFA0()
{
  sub_22088F60C();
  swift_allocObject();
  sub_22088F5FC();
  type metadata accessor for ForYouFeedContentConfig();
  sub_22044DCC8(&qword_28128BA00, 255, type metadata accessor for ForYouFeedContentConfig);
  sub_22088827C();

  if (v0)
  {
    sub_220891ADC();
    sub_22048D7F8();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_220899360;
    sub_2204446D4(0, &qword_28127DE30);
    sub_22089264C();
    *(v1 + 56) = MEMORY[0x277D837D0];
    *(v1 + 64) = sub_22048D860();
    *(v1 + 32) = 0;
    *(v1 + 40) = 0xE000000000000000;
    sub_22044D56C(0, &qword_28127E420);
    v2 = sub_2208922DC();
    sub_22088A7EC();

    swift_willThrow();
  }

  else
  {
    sub_22044D56C(0, &qword_28127E420);
    v3 = sub_2208922DC();
    sub_220891AFC();
    sub_22088A7EC();
  }
}

uint64_t sub_2206EC1C8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 112);
  __swift_destroy_boxed_opaque_existential_1(v0 + 152);

  return swift_deallocClassInstance();
}

uint64_t sub_2206EC244()
{
  sub_22044D56C(0, &qword_28127E608);
  sub_220888FBC();
  v0 = sub_220888D9C();
  sub_2206EC434();
  sub_220888E5C();

  v1 = sub_220888D9C();
  type metadata accessor for ForYouFeedServiceConfig();
  v2 = sub_220888E5C();

  return v2;
}

uint64_t sub_2206EC354(uint64_t a1)
{
  v2 = type metadata accessor for ForYouFeedContentConfig();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2206EC3B0()
{
  if (!qword_2812985E8)
  {
    sub_22044D56C(255, &qword_28127E608);
    v0 = sub_220888F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812985E8);
    }
  }
}

void sub_2206EC434()
{
  if (!qword_28127E5F8)
  {
    sub_22044D56C(255, &qword_28127E608);
    type metadata accessor for ForYouFeedContentConfig();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_28127E5F8);
    }
  }
}

uint64_t sub_2206EC4CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ForYouFeedContentConfig();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_2206EC54C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_2206EC434();
  v7 = *(v6 + 48);
  *a2 = v5;
  sub_220520948(a1, a2 + v7, type metadata accessor for ForYouFeedContentConfig);
  return v5;
}

unint64_t sub_2206EC5B8()
{
  result = qword_27CF58D98;
  if (!qword_27CF58D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58D98);
  }

  return result;
}

void sub_2206EC60C()
{
  if (!qword_27CF58DA0)
  {
    v0 = sub_220888F3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF58DA0);
    }
  }
}

uint64_t sub_2206EC65C(uint64_t a1)
{
  v2 = sub_220884E9C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22088495C();
  v7 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281294340 != -1)
  {
    swift_once();
  }

  sub_22048D7F8();
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_220899360;
  v12 = sub_220884E0C();
  v14 = v13;
  *(v11 + 56) = MEMORY[0x277D837D0];
  *(v11 + 64) = sub_22048D860();
  *(v11 + 32) = v12;
  *(v11 + 40) = v14;
  sub_220891AFC();
  sub_22088A7EC();

  (*(v3 + 16))(v6, a1, v2);
  sub_22088494C();
  v15 = [objc_opt_self() sharedSession];
  v16 = sub_220888D7C();

  (*(v7 + 8))(v10, v19);
  return v16;
}

unint64_t sub_2206EC8E0()
{
  result = qword_27CF58DA8;
  if (!qword_27CF58DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58DA8);
  }

  return result;
}

uint64_t sub_2206EC95C(void *a1)
{
  swift_getObjectType();
  v3 = [a1 identifier];
  v4 = sub_22089136C();
  v6 = v5;

  v7 = [a1 language];
  if (v7)
  {
    v8 = v7;
    v9 = sub_22089136C();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  v12 = [*(v1 + 16) cachedSubscription];
  v13 = [a1 identifier];
  if (!v13)
  {
    sub_22089136C();
    v13 = sub_22089132C();
  }

  v14 = [v12 containsTagID_];

  v15 = sub_220891D4C() & 1;

  return MEMORY[0x2821CDCA0](v4, v6, v9, v11, v14, v15);
}

uint64_t sub_2206ECAB8()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_2206ECAF0()
{
  v0 = sub_2208852DC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_22088528C();
  v6 = sub_22088523C();
  (*(v1 + 8))(v4, v0);
  [v5 setLocale_];

  v7 = sub_22089132C();
  [v5 setLocalizedDateFormatFromTemplate_];

  qword_2812843C0 = v5;
}

uint64_t sub_2206ECC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v53 = a2;
  v7 = sub_220884BDC();
  v51 = *(v7 - 8);
  v52 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v49 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22088516C();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50, v10);
  v45 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v4[5];
  v13 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v12);
  v44[1] = a3;
  v14 = sub_22089104C();
  v15 = *(v13 + 8);
  v16 = *(v15 + 8);
  v55[3] = v12;
  v55[4] = v13;
  v46 = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55);
  v47 = v12;
  v16(v14, v12, v15);

  v54 = 0;
  if (sub_2206E7BA8(a1, v53))
  {
    v53 = boxed_opaque_existential_1;
    v18 = v45;
    sub_2208850EC();
    sub_2206ED97C();
    v19 = sub_2208853AC();
    v20 = *(v19 - 8);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_220899360;
    (*(v20 + 104))(v22 + v21, *MEMORY[0x277CC9998], v19);
    sub_2207E1070(v22);
    swift_setDeallocating();
    (*(v20 + 8))(v22 + v21, v19);
    swift_deallocClassInstance();
    v23 = v49;
    sub_22088531C();

    v24 = sub_2206ED088(0, v4);
    sub_2206ED48C(v24, v25, v4);
    v27 = v26;

    v28 = sub_2206ED088(1, v4);
    sub_2206ED48C(v28, v29, v4);
    v31 = v30;

    v32 = sub_22088509C();
    v33 = [v27 stringFromDate_];

    v34 = sub_22089136C();
    v36 = v35;

    v37 = sub_22088509C();
    v38 = [v31 stringFromDate_];

    v39 = sub_22089136C();
    v41 = v40;

    v42 = (*(v46 + 144))(v34, v36, v39, v41, v47);

    (*(v51 + 8))(v23, v52);
    (*(v48 + 8))(v18, v50);
  }

  else
  {
    v42 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v55);
  return v42;
}

uint64_t sub_2206ED088(char a1, uint64_t a2)
{
  sub_2206ED9D4();
  v5 = v4;
  MEMORY[0x28223BE20](v4, v6);
  v8 = v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_chartRange;
  v10 = sub_22089104C();
  v11 = [v10 horizontalSizeClass];

  v12 = *(v5 + 48);
  v13 = sub_2208854FC();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v8, a2 + v9, v13);
  *&v8[v12] = v11;
  LODWORD(v15) = (*(v14 + 88))(v8, v13);
  if (v15 == *MEMORY[0x277D69120])
  {
    if (qword_2812843B8 != -1)
    {
      swift_once();
    }

    v16 = qword_2812843C0;
    v17 = [v16 dateFormat];
    if (v17)
    {
      v18 = v17;
      v19 = sub_22089136C();
      v21 = v20;

      v32[2] = v19;
      v32[3] = v21;
      v32[0] = 97;
      v32[1] = 0xE100000000000000;
      sub_22059B6A4();
      LOBYTE(v18) = sub_22089239C();

      if (v18)
      {
        return 104;
      }

      else
      {
        return 72;
      }
    }

    else
    {

      return 72;
    }
  }

  v23 = v15 == *MEMORY[0x277D69128] || v15 == *MEMORY[0x277D69138];
  if (v23)
  {
    return 100;
  }

  if (v15 == *MEMORY[0x277D69110] || v15 == *MEMORY[0x277D69158] || v15 == *MEMORY[0x277D69100])
  {
    goto LABEL_22;
  }

  if (v15 != *MEMORY[0x277D69130] && v15 != *MEMORY[0x277D69148])
  {
LABEL_38:
    if (v15 == *MEMORY[0x277D69150] || v15 == *MEMORY[0x277D69140] || v15 == *MEMORY[0x277D69118])
    {
      v15 = [objc_opt_self() su_localizedYearFormat];
      if (v15)
      {
        goto LABEL_42;
      }

      __break(1u);
    }

    result = sub_2208928AC();
    __break(1u);
    return result;
  }

  if (v11 != 1)
  {
    goto LABEL_33;
  }

  v26 = sub_220884BAC();
  if ((v27 & 1) != 0 || v26 != 1)
  {
LABEL_22:
    if (a1)
    {
      return 1280068684;
    }

    else
    {
      return 5000268;
    }
  }

  v15 = [objc_opt_self() su_localizedYearFormat];
  if (v15)
  {
    goto LABEL_42;
  }

  __break(1u);
LABEL_33:
  v28 = sub_220884BAC();
  if (v29)
  {
    return 1280068684;
  }

  v23 = v28 == 1;
  result = 1280068684;
  if (v23)
  {
    v15 = [objc_opt_self() su_localizedYearFormat];
    if (!v15)
    {
      __break(1u);
      goto LABEL_38;
    }

LABEL_42:
    v30 = v15;
    v31 = sub_22089136C();

    return v31;
  }

  return result;
}

void sub_2206ED48C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2208852DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_dateFormatters;
  swift_beginAccess();
  v12 = *(a3 + v11);
  if (*(v12 + 16) && (v13 = sub_2204AF97C(a1, a2), (v14 & 1) != 0))
  {
    v21 = *(*(v12 + 56) + 8 * v13);
    swift_endAccess();
    v15 = v21;

    v16 = v15;
  }

  else
  {
    swift_endAccess();
    sub_22088528C();
    sub_2208851EC();
    (*(v7 + 8))(v10, v6);
    v17 = objc_allocWithZone(MEMORY[0x277CCA968]);
    v18 = sub_22089132C();
    v19 = sub_22089132C();

    v20 = [v17 initWithFormat:v18 localeIdentifier:v19];

    if (v20)
    {
      swift_beginAccess();

      v20;
      sub_22059AA98(v20, a1, a2);
      swift_endAccess();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_2206ED6B4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_chart;
  v2 = sub_22088665C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_chartRange;
  v4 = sub_2208854FC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC8StocksUI32StockChartCategoryLabelFormatter_calendar;
  v6 = sub_2208853CC();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StockChartCategoryLabelFormatter()
{
  result = qword_281284378;
  if (!qword_281284378)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2206ED83C()
{
  result = sub_22088665C();
  if (v1 <= 0x3F)
  {
    result = sub_2208854FC();
    if (v2 <= 0x3F)
    {
      result = sub_2208853CC();
      if (v3 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

void sub_2206ED97C()
{
  if (!qword_28127E1C8)
  {
    sub_2208853AC();
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E1C8);
    }
  }
}

void sub_2206ED9D4()
{
  if (!qword_281299380)
  {
    sub_2208854FC();
    type metadata accessor for UIUserInterfaceSizeClass(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_281299380);
    }
  }
}

BOOL sub_2206EDADC()
{
  v1 = *v0;
  v2 = sub_22088516C();
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v5 = (&v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v28 - v8;
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v28 - v12;
  v14 = sub_220885ACC();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_281298F20 != -1)
  {
    swift_once();
  }

  if (sub_220886B7C())
  {
    if (qword_27CF55AA8 != -1)
    {
      swift_once();
    }

    sub_2206EE928(&qword_281288558, v19, type metadata accessor for EarningsShownCommandHandler);
    sub_220886B3C();
    v18 = v32;
    if (qword_27CF55AA0 != -1)
    {
      swift_once();
    }

    sub_220886B3C();
    v21 = v33;
  }

  else
  {
    v29 = v13;
    v30 = v1;
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    sub_22088641C();
    sub_22088598C();
    v22 = *(v15 + 8);
    v22(v18, v14);
    v23 = v0[5];
    v24 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v23);
    sub_22088641C();
    v21 = sub_22088595C();
    v22(v18, v14);
    if (v21 < 0)
    {
      __break(1u);
      goto LABEL_20;
    }

    v13 = v29;
    v18 = v32;
  }

  v32 = v21;
  if (qword_281298F80 != -1)
  {
    swift_once();
  }

  sub_2206EE928(&qword_281288558, v20, type metadata accessor for EarningsShownCommandHandler);
  sub_220886B3C();
  v24 = v13;
  sub_22088508C();
  sub_22088512C();
  v25 = sub_2208850BC();
  v23 = *(v31 + 8);
  v23(v5, v18);
  v23(v9, v18);
  v5 = &qword_281298000;
  if (v25)
  {
    if (qword_281298F68 == -1)
    {
LABEL_15:
      v33 = 0;
      sub_2206EE928(&qword_281288550, v26, type metadata accessor for EarningsShownCommandHandler);
      sub_220886C6C();
      goto LABEL_16;
    }

LABEL_20:
    swift_once();
    goto LABEL_15;
  }

LABEL_16:
  if (v5[493] != -1)
  {
    swift_once();
  }

  sub_220886B3C();
  v23(v24, v18);
  return v33 < v32;
}

void sub_2206EE020(uint64_t a1)
{
  v49 = *v1;
  v3 = sub_22088516C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22061D1D0(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8, v11);
  v12 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v42 - v15;
  v17 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v17, v17);
  v19 = (&v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v43 = v9;
    v46 = v4;
    v47 = v3;
    v48 = v1;
    v20 = v1[7];
    *v19 = a1 | 0x8000000000000000;
    swift_storeEnumTagMultiPayload();
    swift_retain_n();
    v42 = a1;
    sub_22088C4AC();
    sub_2204446D4(0, &qword_281297F10);
    v21 = sub_22088731C();
    if (swift_dynamicCast())
    {
      v22 = *&v56[0];
    }

    else
    {
      v22 = 0;
    }

    v23 = sub_22088969C();
    (*(*(v23 - 8) + 56))(v16, 1, 1, v23);
    v59 = 0;
    memset(v58, 0, sizeof(v58));
    v57 = 0;
    memset(v56, 0, sizeof(v56));
    v55 = v20;
    sub_2205A0924(v56, &v50, &unk_281298970, &unk_281298980);
    v45 = v7;
    v44 = v19;
    if (v52)
    {
      sub_220458198(&v50, v53);
      v24 = sub_220597454(v53);
      v26 = v25;
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1(v53);
      if (v22)
      {
LABEL_7:
        v29 = v22;
        goto LABEL_12;
      }
    }

    else
    {
      sub_2205A0B34(&v50, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
      if (qword_2812908F0 != -1)
      {
        swift_once();
      }

      v24 = qword_2812908F8;
      v26 = qword_281290900;
      v28 = qword_281290908;

      sub_2204A80F4(v26);
      if (v22)
      {
        goto LABEL_7;
      }
    }

    v29 = 0;
    v21 = 0;
    *(&v50 + 1) = 0;
    v51 = 0;
LABEL_12:
    *&v50 = v29;
    v52 = v21;
    sub_2205A08A4(v16, v12);
    sub_2205A0924(v58, v53, &unk_281296D10, &qword_281296D20);
    v30 = (v43[80] + 24) & ~v43[80];
    v31 = (v10 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v43 = v16;
    v32 = swift_allocObject();
    *(v32 + 16) = v22;
    sub_2205A0994(v12, v32 + v30);
    v33 = v32 + v31;
    v34 = v53[1];
    *v33 = v53[0];
    *(v33 + 16) = v34;
    *(v33 + 32) = v54;
    v35 = (v32 + ((v31 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v35 = v24;
    v35[1] = v26;
    v35[2] = v28;
    swift_retain_n();

    sub_2204A80F4(v26);
    sub_2204549FC();
    sub_2206EE928(&unk_281297EC0, 255, sub_2204549FC);
    v36 = v44;
    sub_22088E92C();

    sub_2204DA45C(v26);
    sub_2205A0B34(v56, &unk_281298970, &unk_281298980, MEMORY[0x277D6CB00], sub_220448010);
    sub_2205A0B34(v58, &unk_281296D10, &qword_281296D20, MEMORY[0x277D2D578], sub_220448010);
    sub_220650F50(v43, sub_22061D1D0);
    sub_220650F50(v36, type metadata accessor for StocksActivity);
    sub_2205A0B34(&v50, &qword_28127DE00, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2205A0AE4);
    v38 = v47;
    v39 = v46;
    v40 = v45;
    if (qword_281298F68 != -1)
    {
      swift_once();
    }

    sub_2206EE928(&qword_281288558, v37, type metadata accessor for EarningsShownCommandHandler);
    sub_220886B3C();
    if (__OFADD__(*&v58[0], 1))
    {
      __break(1u);
    }

    else
    {
      ++*&v58[0];
      sub_2206EE928(&qword_281288550, v41, type metadata accessor for EarningsShownCommandHandler);
      sub_220886C6C();
      if (qword_281298F80 == -1)
      {
LABEL_16:
        sub_22088512C();
        sub_220886C6C();

        (*(v39 + 8))(v40, v38);
        return;
      }
    }

    swift_once();
    goto LABEL_16;
  }
}

uint64_t sub_2206EE928(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

void sub_2206EE970(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = sub_22089114C();
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v59 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2208911CC();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220890C5C();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2208911BC();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v54 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204DD908();
  MEMORY[0x28223BE20](v16 - 8, v17);
  v56 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v48 - v21;
  v23 = (v1 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler);
  v24 = *(v1 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 24);
  v25 = *(v1 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC8StocksUI24StockSparklineViewStyler_baseStyler), v24);
  (*(v25 + 72))(&v61 + 1, v24, v25);
  v26 = v64;
  v27 = v65;
  __swift_project_boxed_opaque_existential_1((&v61 + 1), v64);
  (*(v27 + 24))(&v61, v26, v27);
  v28 = v61;
  v29 = objc_opt_self();
  v30 = [v29 currentTraitCollection];
  v31 = [v30 userInterfaceStyle];

  v32 = [v29 currentTraitCollection];
  v33 = [v32 accessibilityContrast];

  __swift_destroy_boxed_opaque_existential_1(&v61 + 1);
  BYTE1(v61) = 2;
  v55 = v28;
  BYTE2(v61) = v28;
  v51 = v31;
  v62 = v31;
  v63 = v33;
  sub_220888D3C();
  v34 = sub_220890DAC();
  v35 = *(v34 - 8);
  if ((*(v35 + 48))(v22, 1, v34) == 1)
  {
    sub_2204DDF40(v22);
    v48 = v33;
    v37 = v23[3];
    v36 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v37);
    v38 = (*(*(v36 + 16) + 440))(v37);
    v39 = v23[3];
    v40 = v23[4];
    __swift_project_boxed_opaque_existential_1(v23, v39);
    v41 = (*(*(v40 + 16) + 440))(v39);
    (*(v49 + 104))(v12, *MEMORY[0x277D6C640], v50);
    (*(v52 + 104))(v8, *MEMORY[0x277D6C7D0], v53);
    v42 = v41;
    sub_2208911AC();
    sub_22048BC00();
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_22089B120;
    *(v43 + 32) = [v38 colorWithAlphaComponent_];
    *(v43 + 40) = [v38 colorWithAlphaComponent_];
    v44 = v58;
    v45 = v59;
    *v59 = v43;
    (*(v57 + 104))(v45, *MEMORY[0x277D6C7B8], v44);
    sub_22089120C();
    swift_allocObject();
    sub_2208911FC();
    v46 = v60;
    sub_220890D9C();
    v47 = v56;
    (*(v35 + 16))(v56, v46, v34);
    (*(v35 + 56))(v47, 0, 1, v34);
    BYTE1(v61) = 2;
    BYTE2(v61) = v55;
    v62 = v51;
    v63 = v48;
    sub_220888D4C();
  }

  else
  {
    (*(v35 + 32))(v60, v22, v34);
  }
}

uint64_t getEnumTagSinglePayload for StockSparklineStyleCacheKey(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for StockSparklineStyleCacheKey(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2206EF020()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  sub_2208929EC();
  MEMORY[0x223D8ABA0](v1);
  MEMORY[0x223D8ABA0](v2);
  MEMORY[0x223D8ABA0](v3);
  MEMORY[0x223D8ABA0](v4);
  return sub_220892A2C();
}

uint64_t sub_2206EF0A4()
{
  v1 = v0[1];
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  MEMORY[0x223D8ABA0](*v0);
  MEMORY[0x223D8ABA0](v1);
  MEMORY[0x223D8ABA0](v2);
  return MEMORY[0x223D8ABA0](v3);
}

unint64_t sub_2206EF114()
{
  result = qword_27CF58DB0;
  if (!qword_27CF58DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58DB0);
  }

  return result;
}

uint64_t sub_2206EF168()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    sub_22088E2AC();
    sub_22089011C();
    sub_22088B75C();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2206EF1FC@<X0>(void *a1@<X8>)
{
  sub_2205715CC();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206EF850(0, &qword_27CF56C20, sub_2205714D0);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v24 - v9;
  v11 = *(v1 + 24);
  v12 = [sub_2208900FC() identifier];
  swift_unknownObjectRelease();
  if (!v12)
  {
    sub_22089136C();
    v12 = sub_22089132C();
  }

  v13 = [v11 hasArticleCompletedListening_];

  if (v13)
  {
    v14 = *MEMORY[0x277D32468];
    v15 = sub_22088F91C();
    v16 = *(*(v15 - 8) + 104);

    return v16(a1, v14, v15);
  }

  else
  {
    sub_220887BBC();
    sub_22088867C();

    sub_2207AD9A0(v10);
    sub_2206EF7F0(v6, sub_2205715CC);
    sub_2205714D0();
    v19 = v18;
    if ((*(*(v18 - 8) + 48))(v10, 1, v18) == 1)
    {
      sub_2206EF794(v10, &qword_27CF56C20, sub_2205714D0);
      v20 = MEMORY[0x277D32468];
    }

    else
    {
      v21 = *&v10[*(v19 + 48)];
      sub_2206EF7F0(v10, type metadata accessor for StocksAudioTrack);
      *a1 = v21;
      v20 = MEMORY[0x277D32460];
    }

    v22 = *v20;
    v23 = sub_22088F91C();
    return (*(*(v23 - 8) + 104))(a1, v22, v23);
  }
}

uint64_t sub_2206EF4F4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2206EF57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2206EF850(0, &qword_281299728, MEMORY[0x277D33058]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v12 - v7;
  swift_getObjectType();
  sub_22088E2AC();
  v9 = sub_22089011C();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, a4, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  sub_22088B81C();
  sub_2206EF794(v8, &qword_281299728, MEMORY[0x277D33058]);
}

uint64_t sub_2206EF74C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2206EF794(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2206EF850(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2206EF7F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_2206EF850(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2206EF8A4(uint64_t a1)
{
  v16 = a1;
  v17 = sub_22088947C();
  v1 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22088946C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22088954C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v16 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220887A5C();
  sub_22088953C();
  sub_2206F01D8(&qword_2812984C0, MEMORY[0x277D68600]);
  sub_220886F1C();
  (*(v11 + 8))(v14, v10);
  (*(v1 + 104))(v4, *MEMORY[0x277D68580], v17);
  sub_22088945C();
  sub_2206F01D8(&qword_2812984E8, MEMORY[0x277D68570]);
  sub_220886F1C();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_2206EFB8C()
{
  v0 = sub_22088516C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v11 - v7;
  sub_220889E7C();
  sub_22088B1FC();
  sub_2206F01D8(&unk_27CF58DC0, MEMORY[0x277D68DB0]);
  sub_220886ECC();
  v9 = *(v1 + 8);
  v9(v8, v0);
  sub_22088B1FC();
  sub_22088B20C();
  sub_22088508C();
  v9(v4, v0);
  sub_220886EDC();
  return (v9)(v8, v0);
}

uint64_t sub_2206EFD74(uint64_t a1)
{
  v3 = sub_220887A6C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3, v6);
  __swift_project_boxed_opaque_existential_1((*v1 + 24), *(*v1 + 48));
  result = sub_220889D0C();
  if (result)
  {
    (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
    v8 = (*(v4 + 80) + 16) & ~*(v4 + 80);
    v9 = swift_allocObject();
    (*(v4 + 32))(v9 + v8, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v3);
    sub_22088726C();
  }

  return result;
}

uint64_t sub_2206EFEE0()
{
  v0 = sub_22088B21C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0, v3);
  v4 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v6);
  v8 = &v12 - v7;
  sub_220887A4C();
  (*(v1 + 16))(v4, v8, v0);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = swift_allocObject();
  (*(v1 + 32))(v10 + v9, v4, v0);
  sub_22088726C();

  return (*(v1 + 8))(v8, v0);
}

uint64_t objectdestroyTm_8(uint64_t (*a1)(void))
{
  v2 = a1(0);
  (*(*(v2 - 8) + 8))(v1 + ((*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80)), v2);

  return swift_deallocObject();
}

uint64_t sub_2206F0150(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_2206F01D8(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_2206F0220(uint64_t a1, double *a2, char *a3)
{
  v4 = v3;
  [a3 setFrame_];
  swift_beginAccess();
  v8 = __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v9 = *&a3[OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_separatorView];
  v11 = *(*v8 + 40);
  v10 = *(*v8 + 48);
  __swift_project_boxed_opaque_existential_1((*v8 + 16), v11);
  v12 = (*(*(v10 + 16) + 168))(v11);
  [v9 setBackgroundColor_];

  [v9 setFrame_];
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  v63 = a3;
  v13 = *&a3[OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_addCalendarButton];
  v14 = type metadata accessor for StockFeedEarningsViewModel();
  v15 = (a1 + v14[8]);
  v16 = v15[1];
  v64 = a1;
  v17 = *(a1 + v14[9]);
  sub_220564C34(v13, *v15, v16, v17);
  v18 = *__swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  if (v16)
  {
    v61 = v14;
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v20 = [objc_opt_self() bundleForClass_];
    if (v17)
    {
      v60 = 0x80000002208BF8C0;
      sub_220884CAC();

      sub_2204A5DF0();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_220899920;
      v22 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v23 = sub_22044D56C(0, &qword_28127E570);
      v62 = v22;
      v24 = sub_220891F2C();
      v25 = MEMORY[0x277D740C0];
      *(inited + 40) = v24;
      v26 = *v25;
      *(inited + 64) = v23;
      *(inited + 72) = v26;
      v27 = v18[5];
      v28 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v27);
      v29 = *(v28 + 16);
      v30 = *(v29 + 128);
      v31 = v26;
      v32 = v30(v27, v29);
    }

    else
    {
      v60 = 0x80000002208C8930;
      sub_220884CAC();

      sub_2204A5DF0();
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_220899920;
      v35 = *MEMORY[0x277D740A8];
      *(inited + 32) = *MEMORY[0x277D740A8];
      v36 = sub_22044D56C(0, &qword_28127E570);
      v62 = v35;
      v37 = sub_220891F2C();
      v38 = MEMORY[0x277D740C0];
      *(inited + 40) = v37;
      v39 = *v38;
      *(inited + 64) = v36;
      *(inited + 72) = v39;
      v40 = v18[5];
      v41 = v18[6];
      __swift_project_boxed_opaque_existential_1(v18 + 2, v40);
      v42 = *(v41 + 16);
      v43 = *(v42 + 128);
      v44 = v39;
      v32 = v43(v40, v42);
    }

    v45 = v32;
    *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
    *(inited + 80) = v45;
    sub_2204A5EAC(inited);
    swift_setDeallocating();
    sub_2204A5D84();
    swift_arrayDestroy();
    v46 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v47 = sub_22089132C();

    type metadata accessor for Key(0);
    sub_2206F0A44(&qword_28127E6A8, 255, type metadata accessor for Key);
    v48 = sub_22089125C();

    v34 = &off_27844B000;
    v49 = [v46 initWithString:v47 attributes:{v48, v60}];

    [v13 setAttributedTitle:v49 forState:0];
    v14 = v61;
  }

  else
  {
    v33 = sub_220564920();
    [v13 setAttributedTitle:v33 forState:0];

    v62 = *MEMORY[0x277D740A8];
    v34 = &off_27844B000;
  }

  [v13 setFrame_];
  [v13 setHidden_];
  v50 = *&v63[OBJC_IVAR____TtC8StocksUI21StockFeedEarningsView_earningsLabel];
  [v50 setLineBreakMode_];
  [v50 setNumberOfLines_];
  sub_2204A5DF0();
  v51 = swift_initStackObject();
  *(v51 + 16) = xmmword_220899360;
  *(v51 + 32) = v62;
  v52 = sub_22044D56C(0, &qword_28127E570);
  v53 = v62;
  v54 = sub_220891F2C();
  *(v51 + 64) = v52;
  *(v51 + 40) = v54;
  sub_2204A5EAC(v51);
  swift_setDeallocating();
  sub_2205613E0(v51 + 32);
  v55 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v56 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2206F0A44(&qword_28127E6A8, 255, type metadata accessor for Key);
  v57 = sub_22089125C();

  v58 = [v55 v34[455]];

  [v50 setAttributedText_];
  return [v50 setFrame_];
}

uint64_t sub_2206F09EC(uint64_t a1, uint64_t a2)
{
  result = sub_2206F0A44(&qword_281286080, a2, type metadata accessor for StockFeedEarningsViewRenderer);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2206F0A44(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2206F0A8C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = type metadata accessor for WebViewControllerFactory();
  result = sub_2208884CC();
  if (result)
  {
    a2[3] = v3;
    a2[4] = &off_2834193A8;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206F0B00(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (result)
  {
    v3 = result;
    sub_22046DA2C(a1, v10);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281298738);
    result = sub_2208884DC();
    if (v9)
    {
      v4 = type metadata accessor for WebViewControllerFactory();
      v5 = objc_allocWithZone(v4);
      *&v5[OBJC_IVAR____TtC8StocksUI24WebViewControllerFactory_navigator] = v3;
      sub_22046DA2C(v10, &v5[OBJC_IVAR____TtC8StocksUI24WebViewControllerFactory_resolver]);
      sub_22046DA2C(v8, &v5[OBJC_IVAR____TtC8StocksUI24WebViewControllerFactory_sceneStateManager]);
      v7.receiver = v5;
      v7.super_class = v4;
      v6 = objc_msgSendSuper2(&v7, sel_init);
      __swift_destroy_boxed_opaque_existential_1(v10);
      __swift_destroy_boxed_opaque_existential_1(v8);
      return v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2206F0C3C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &unk_281299118);
  result = sub_2208884DC();
  if (v5)
  {
    v4 = type metadata accessor for StockFeedEarningsViewModelFactory();
    result = swift_allocObject();
    *(result + 16) = v5;
    *(result + 24) = v6;
    a2[3] = v4;
    a2[4] = &off_283422A00;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206F0CE8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204549FC();
  result = sub_2208884CC();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299280);
  result = sub_2208884DC();
  if (!v11)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281297C50);
  result = sub_2208884DC();
  if (!v9)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    sub_220448C28(&qword_281298BF0, MEMORY[0x277CEAEA8]);
    sub_22088B49C();
    swift_allocObject();
    v6 = sub_22088B47C();
    v7 = type metadata accessor for WatchlistCreationAlertFactory();
    v8 = swift_allocObject();
    *(v8 + 56) = v5;
    result = sub_220457328(&v10, v8 + 16);
    *(v8 + 64) = v6;
    a2[3] = v7;
    a2[4] = &off_283416078;
    *a2 = v8;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2206F1048()
{
  if (!qword_281298700)
  {
    sub_22088685C();
    v0 = sub_220888D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_281298700);
    }
  }
}

uint64_t sub_2206F1140@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_2205297F0(0, qword_28128DE68, type metadata accessor for ForYouFeedKnobsConfig);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v18 - v6;
  sub_2205297F0(0, qword_281292568, type metadata accessor for ForYouFeedConfig);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v18 - v10;
  sub_2206F1AAC();
  v13 = v12;
  v18 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2206F1B08();
  sub_220892A4C();
  if (!v2)
  {
    type metadata accessor for ForYouFeedConfig();
    v21 = 0;
    sub_2206F1B5C(&qword_2812925B0, type metadata accessor for ForYouFeedConfig);
    sub_22089271C();
    type metadata accessor for ForYouFeedKnobsConfig();
    v20 = 1;
    sub_2206F1B5C(&qword_28128DEA8, type metadata accessor for ForYouFeedKnobsConfig);
    sub_22089271C();
    sub_220529914(v11, v7, v19);
    (*(v18 + 8))(v16, v13);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2206F1408(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x6565467961646F74;
  }

  if (v2)
  {
    v4 = 0xEF6769666E6F4364;
  }

  else
  {
    v4 = 0x80000002208BEC50;
  }

  if (*a2)
  {
    v5 = 0xD000000000000010;
  }

  else
  {
    v5 = 0x6565467961646F74;
  }

  if (*a2)
  {
    v6 = 0x80000002208BEC50;
  }

  else
  {
    v6 = 0xEF6769666E6F4364;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2208928BC();
  }

  return v8 & 1;
}

uint64_t sub_2206F14C0()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2206F1554()
{
  sub_22089146C();
}

uint64_t sub_2206F15D4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_2206F1664@<X0>(char *a1@<X8>)
{
  v2 = sub_22089270C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

void sub_2206F16C4(unint64_t *a1@<X8>)
{
  v2 = 0x80000002208BEC50;
  v3 = 0x6565467961646F74;
  if (*v1)
  {
    v3 = 0xD000000000000010;
  }

  else
  {
    v2 = 0xEF6769666E6F4364;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_2206F1714()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6565467961646F74;
  }
}

uint64_t sub_2206F1760@<X0>(char *a1@<X8>)
{
  v2 = sub_22089270C();

  if (v2 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v2)
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_2206F17C4(uint64_t a1)
{
  v2 = sub_2206F1B08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2206F1800(uint64_t a1)
{
  v2 = sub_2206F1B08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2206F1888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_2205297F0(0, qword_28128DE68, type metadata accessor for ForYouFeedKnobsConfig);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v18 - v9;
  sub_2205297F0(0, qword_281292568, type metadata accessor for ForYouFeedConfig);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v18 - v13;
  sub_220520A18(a1, &v18 - v13, type metadata accessor for ForYouFeedConfig);
  v15 = type metadata accessor for ForYouFeedConfig();
  (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
  sub_220520A18(v3 + *(a2 + 20), v10, type metadata accessor for ForYouFeedKnobsConfig);
  v16 = type metadata accessor for ForYouFeedKnobsConfig();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  return sub_220529914(v14, v10, a3);
}

uint64_t sub_2206F1A50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2205297F0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2206F1AAC()
{
  if (!qword_28127E230)
  {
    sub_2206F1B08();
    v0 = sub_2208927BC();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E230);
    }
  }
}

unint64_t sub_2206F1B08()
{
  result = qword_28128BA20;
  if (!qword_28128BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128BA20);
  }

  return result;
}

uint64_t sub_2206F1B5C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_2206F1BB8()
{
  result = qword_27CF58E40;
  if (!qword_27CF58E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58E40);
  }

  return result;
}

unint64_t sub_2206F1C10()
{
  result = qword_28128BA10;
  if (!qword_28128BA10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128BA10);
  }

  return result;
}

unint64_t sub_2206F1C68()
{
  result = qword_28128BA18;
  if (!qword_28128BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128BA18);
  }

  return result;
}

uint64_t type metadata accessor for TickerCardContainerController()
{
  result = qword_281285D58;
  if (!qword_281285D58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2206F1D88(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    if ((v3 - result) >= 1 && v3 < result)
    {
      __break(1u);
    }

    sub_22088CC6C();
    return a2;
  }

  return result;
}

void sub_2206F1E44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22088CC6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v45 - v14;
  sub_22088C83C();
  v16 = sub_22088C84C();
  v16(a1, a2, a3);
  v17 = sub_22088C82C();
  v21 = sub_2206F1D88(1uLL, v17);
  if ((v20 & 1) == 0)
  {
    goto LABEL_2;
  }

  v45 = v18;
  v46 = v3;
  v24 = v8;
  v25 = v11;
  v26 = v20;
  v27 = v19;
  sub_2208928DC();
  swift_unknownObjectRetain_n();
  v28 = swift_dynamicCastClass();
  if (!v28)
  {
    swift_unknownObjectRelease();
    v28 = MEMORY[0x277D84F90];
  }

  v29 = *(v28 + 16);

  if (__OFSUB__(v26 >> 1, v27))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v29 != (v26 >> 1) - v27)
  {
LABEL_37:
    swift_unknownObjectRelease();
    v20 = v26;
    v19 = v27;
    v11 = v25;
    v8 = v24;
    v18 = v45;
    v3 = v46;
LABEL_2:
    sub_2206CE40C(v21, v18, v19, v20);
    v23 = v22;
LABEL_9:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v11 = v25;
  v8 = v24;
  v3 = v46;
  if (!v23)
  {
    v23 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

LABEL_10:
  (*(v8 + 16))(v15, a3, v7);
  v30 = (*(v8 + 88))(v15, v7);
  v31 = *MEMORY[0x277D6E230];
  if (v30 == v31 || (v32 = *MEMORY[0x277D6E258], v30 == v32))
  {

    v33 = 1;
LABEL_13:
    sub_2206F2334(v33);
    return;
  }

  if (v30 == *MEMORY[0x277D6E260] || v30 == *MEMORY[0x277D6E250])
  {
    goto LABEL_20;
  }

  if (v30 != *MEMORY[0x277D6E268])
  {
    if (v30 != *MEMORY[0x277D6E248] && v30 != *MEMORY[0x277D6E240])
    {
      if (v30 != *MEMORY[0x277D6E238])
      {
        sub_22089267C();
        __break(1u);
        return;
      }

      goto LABEL_35;
    }

LABEL_20:
    v35 = [objc_opt_self() sharedApplication];
    v46 = [v35 applicationState];

    v36 = *(v8 + 104);
    v36(v11, v32, v7);
    v37 = sub_2206FA318(v11, v23);
    v38 = *(v8 + 8);
    v38(v11, v7);
    if (!v37)
    {
      v36(v11, v31, v7);
      v39 = sub_2206FA318(v11, v23);

      v38(v11, v7);
      if (!v39 && (([objc_opt_self() areAnimationsEnabled] & 1) != 0 || v46 == 2 || *(v3 + qword_281285D98) == 1))
      {
        goto LABEL_29;
      }

      return;
    }

LABEL_35:

    return;
  }

  v40 = *(v8 + 104);
  v40(v11, *MEMORY[0x277D6E258], v7);
  v41 = sub_2206FA318(v11, v23);
  v42 = *(v8 + 8);
  v42(v11, v7);
  if (v41)
  {
    goto LABEL_35;
  }

  v40(v11, v31, v7);
  v43 = sub_2206FA318(v11, v23);

  v42(v11, v7);
  if (!v43)
  {
LABEL_29:
    v33 = 0;
    goto LABEL_13;
  }
}

void sub_2206F2334(char a1)
{
  v2 = a1 & 1;
  if (*(v1 + qword_281285D70) != (a1 & 1))
  {
    *(v1 + qword_281285D70) = v2;
    v3 = *(v1 + qword_281285D78);
    [v3 cancel];
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v5 = swift_allocObject();
    *(v5 + 16) = v4;
    *(v5 + 24) = v2;
    v7[4] = sub_2206F4434;
    v7[5] = v5;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_2206BE9C4;
    v7[3] = &block_descriptor_32;
    v6 = _Block_copy(v7);

    [v3 addAnimation_];
    _Block_release(v6);
  }
}

void sub_2206F2460(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22088CC6C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v41 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088C9DC();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C83C();
  v16 = sub_22088C84C();
  v16(a1, a2, a3);
  v17 = sub_22088C82C();
  v21 = sub_2206F1D88(1uLL, v17);
  if ((v20 & 1) == 0)
  {
    goto LABEL_2;
  }

  v39 = v8;
  v40 = v3;
  v24 = v7;
  v25 = v20;
  v26 = v19;
  v38 = v18;
  sub_2208928DC();
  swift_unknownObjectRetain_n();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    swift_unknownObjectRelease();
    v27 = MEMORY[0x277D84F90];
  }

  v28 = *(v27 + 16);

  if (__OFSUB__(v25 >> 1, v26))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v28 != (v25 >> 1) - v26)
  {
LABEL_29:
    swift_unknownObjectRelease();
    v20 = v25;
    v19 = v26;
    v18 = v38;
    v8 = v39;
    v7 = v24;
LABEL_2:
    sub_2206CE40C(v21, v18, v19, v20);
    v23 = v22;
    goto LABEL_9;
  }

  v23 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  v7 = v24;
  v8 = v39;
  if (v23)
  {
    goto LABEL_10;
  }

  v23 = MEMORY[0x277D84F90];
LABEL_9:
  swift_unknownObjectRelease();
LABEL_10:
  (*(v12 + 16))(v15, a3, v11);
  v29 = (*(v12 + 88))(v15, v11);
  if (v29 == *MEMORY[0x277D6E098] || v29 == *MEMORY[0x277D6E0B0])
  {

    v31 = 1;
    goto LABEL_16;
  }

  if (v29 != *MEMORY[0x277D6E0B8] && v29 != *MEMORY[0x277D6E0A8])
  {
    if (v29 != *MEMORY[0x277D6E0A0])
    {
      sub_22089267C();
      __break(1u);
      return;
    }

    goto LABEL_26;
  }

  v33 = *(v8 + 104);
  v34 = v41;
  v33(v41, *MEMORY[0x277D6E258], v7);
  v35 = sub_2206FA318(v34, v23);
  v36 = *(v8 + 8);
  v36(v34, v7);
  if (!v35)
  {
    v33(v34, *MEMORY[0x277D6E230], v7);
    v37 = sub_2206FA318(v34, v23);

    v36(v34, v7);
    if (v37)
    {
      return;
    }

    v31 = 0;
LABEL_16:
    sub_2206F2334(v31);
    return;
  }

LABEL_26:
}

void sub_2206F2870()
{
  v1 = v0;
  v6.receiver = v0;
  v6.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v6, sel_viewDidLoad);
  v2 = *&v0[qword_281285D88];
  [v2 setAlpha_];
  v3 = [v1 view];
  if (v3)
  {
    v4 = v3;
    [v3 addSubview_];

    swift_allocObject();
    swift_unknownObjectUnownedInit();
    sub_220888CCC();

    v5 = [v1 traitCollection];
    sub_2206F2B3C(v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_2206F2994(void **a1)
{
  v1 = *a1;
  Strong = swift_unknownObjectUnownedLoadStrong();
  [Strong addChildViewController_];

  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3;
  [v3 setAlpha_];

  v5 = swift_unknownObjectUnownedLoadStrong();
  v6 = [v5 view];

  if (!v6)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = [v1 view];
  if (!v7)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v8 = v7;
  v9 = swift_unknownObjectUnownedLoadStrong();
  v10 = *&v9[qword_281285D88];

  [v6 insertSubview:v8 belowSubview:v10];
  v11 = swift_unknownObjectUnownedLoadStrong();
  [v1 didMoveToParentViewController_];

  v12 = swift_unknownObjectUnownedLoadStrong();
  v13 = [v12 view];

  if (!v13)
  {
LABEL_11:
    __break(1u);
    return;
  }

  [v13 setNeedsLayout];
}

id sub_2206F2B3C(uint64_t a1)
{
  v2 = v1;
  v4 = &v2[qword_281285D68];
  swift_beginAccess();
  sub_22046DA2C(v4, v23);
  v5 = v24;
  v6 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v7 = *(v6 + 8);
  v8 = *(v7 + 8);
  v21 = v5;
  v22 = v6;
  __swift_allocate_boxed_opaque_existential_1(&v20);
  v8(a1, v5, v7);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_220457328(&v20, v4);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v23);
  v9 = __swift_project_boxed_opaque_existential_1(v4, *(v4 + 3));
  v10 = *&v2[qword_281285D88];
  v12 = *(*v9 + 40);
  v11 = *(*v9 + 48);
  __swift_project_boxed_opaque_existential_1((*v9 + 16), v12);
  v13 = (*(*(v11 + 16) + 72))(v12);
  [v10 setBackgroundColor_];

  sub_22046DA2C(v4, v23);
  v14 = __swift_project_boxed_opaque_existential_1(v23, v24);
  result = [v2 view];
  if (result)
  {
    v16 = result;
    v17 = *v14;
    v19 = *(*v14 + 40);
    v18 = *(*v14 + 48);
    __swift_project_boxed_opaque_existential_1((v17 + 16), v19);
    (*(*(v18 + 16) + 24))(&v20, v19);
    [v16 setAccessibilityIgnoresInvertColors_];

    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2206F2D38(void *a1)
{
  v1 = a1;
  sub_2206F2870();
}

void sub_2206F2D80(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22088D67C();
  v6 = *(v5 - 8);
  *&v8 = MEMORY[0x28223BE20](v5, v7).n128_u64[0];
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17.receiver = v2;
  v17.super_class = ObjectType;
  objc_msgSendSuper2(&v17, sel_viewWillAppear_, a1 & 1, v8);
  sub_220888C9C();
  v11 = v16;
  if (v16)
  {
    v12 = OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling;
    if (*(v2 + qword_281285D70))
    {
      v16[OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling] = 1;
      sub_22088C71C();
      v13 = sub_22088BFCC();

      type metadata accessor for TickerCollectionView();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = v11[v12];
      sub_2207A7D00();

      sub_22088C7FC();
      (*(v6 + 104))(v10, *MEMORY[0x277D6E798], v5);
      sub_22088D66C();

      (*(v6 + 8))(v10, v5);
    }

    else
    {
      v16[OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling] = 0;
      sub_22088C71C();
      v14 = sub_22088BFCC();

      type metadata accessor for TickerCollectionView();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = v11[v12];
      sub_2207A7D00();
    }
  }
}

void sub_2206F2FE4(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2206F2D80(a3);
}

void sub_2206F3038(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2206F3264(a3, &selRef_viewDidAppear_);
}

void sub_2206F3094(char a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22088D67C();
  v6 = *(v5 - 8);
  *&v8 = MEMORY[0x28223BE20](v5, v7).n128_u64[0];
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14.receiver = v2;
  v14.super_class = ObjectType;
  objc_msgSendSuper2(&v14, sel_viewWillDisappear_, a1 & 1, v8);
  sub_220888C9C();
  v11 = v13;
  if (v13)
  {
    if (*(v2 + qword_281285D70))
    {
      sub_22088C7FC();
      (*(v6 + 104))(v10, *MEMORY[0x277D6E790], v5);
      sub_22088D66C();

      (*(v6 + 8))(v10, v5);
    }

    else
    {
    }
  }
}

void sub_2206F3210(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2206F3094(a3);
}

void sub_2206F3264(char a1, SEL *a2)
{
  v4 = v2;
  v7.receiver = v4;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, *a2, a1 & 1);
  sub_220888C9C();
  if (v6)
  {
    if (*(v4 + qword_281285D70))
    {
      sub_22088C7FC();
      sub_22088D65C();
    }
  }
}

void sub_2206F3304(void *a1, uint64_t a2, char a3)
{
  v4 = a1;
  sub_2206F3264(a3, &selRef_viewDidDisappear_);
}

void sub_2206F3360()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v40, sel_viewDidLayoutSubviews);
  sub_220888C9C();
  if (!v39)
  {
    return;
  }

  v2 = *&v0[qword_281285D88];
  v3 = [v1 view];
  if (!v3)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = v3;
  [v3 bounds];
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;

  v41.origin.x = v6;
  v41.origin.y = v8;
  v41.size.width = v10;
  v41.size.height = v12;
  Width = CGRectGetWidth(v41);
  v14 = [v1 view];
  if (!v14)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v15 = v14;
  [v14 safeAreaInsets];
  v17 = v16;

  [v2 setFrame_];
  sub_22088C71C();
  v18 = sub_22088BFCC();

  [v18 contentSize];
  v20 = v19;

  v21 = [v39 view];
  if (!v21)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v22 = v21;
  v23 = [v1 view];
  if (!v23)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v24 = v23;
  [v23 safeAreaInsets];
  v26 = v25;

  v27 = [v1 view];
  if (!v27)
  {
LABEL_15:
    __break(1u);
    return;
  }

  v28 = v27;
  [v27 bounds];
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;

  v42.origin.x = v30;
  v42.origin.y = v32;
  v42.size.width = v34;
  v42.size.height = v36;
  v37 = CGRectGetWidth(v42);
  if (v20 <= 0.0)
  {
    sub_220891A7C();
    v20 = v38 + 56.0;
  }

  [v22 setFrame_];
}

void sub_2206F35D8(void *a1)
{
  v1 = a1;
  sub_2206F3360();
}

void sub_2206F3620(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  objc_msgSendSuper2(&v7, sel_traitCollectionDidChange_, v4);
  v6 = [v5 traitCollection];
  sub_2206F2B3C(v6);
}

void sub_2206F36B0()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22088BFFC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v40 - v9;
  MEMORY[0x28223BE20](v11, v12);
  v14 = v40 - v13;
  MEMORY[0x28223BE20](v15, v16);
  v18 = v40 - v17;
  MEMORY[0x28223BE20](v19, v20);
  v22 = v40 - v21;
  v23 = sub_22088C00C();
  *&v25 = MEMORY[0x28223BE20](v23 - 8, v24).n128_u64[0];
  v27 = v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43.receiver = v0;
  v43.super_class = ObjectType;
  objc_msgSendSuper2(&v43, sel_viewSafeAreaInsetsDidChange, v25);
  v28 = [v0 navigationController];
  if (v28)
  {
    v29 = v28;
    if (([v28 isToolbarHidden] & 1) == 0)
    {
      v40[0] = v14;
      v41 = v6;
      v42 = v27;
      *v22 = 0;
      v22[8] = 1;
      v30 = *MEMORY[0x277D6DC90];
      v31 = *(v3 + 104);
      v31(v22, v30, v2);
      *v18 = 0x404C000000000000;
      v18[8] = 1;
      v40[1] = v18;
      v32 = v2;
      v31(v18, v30, v2);
      v33 = [v0 view];
      if (!v33)
      {
        __break(1u);
        return;
      }

      v34 = v33;
      [v33 safeAreaInsets];
      v36 = v35;

      v37 = v40[0];
      *v40[0] = v36 + 88.0;
      v37[8] = 0;
      v38 = *MEMORY[0x277D6DCA0];
      v31(v37, v38, v2);
      *v10 = 0x3FD999999999999ALL;
      v31(v10, *MEMORY[0x277D6DC98], v2);
      v39 = v41;
      *v41 = 0;
      *(v39 + 8) = 0;
      v31(v39, v38, v32);
      sub_22088BFEC();
      sub_22088C81C();
    }
  }
}

void sub_2206F39E4(void *a1)
{
  v1 = a1;
  sub_2206F36B0();
}

uint64_t sub_2206F3A5C()
{

  sub_22054B9F8(v0 + qword_281285D80);

  v1 = v0 + qword_281285D68;

  return __swift_destroy_boxed_opaque_existential_1(v1);
}

uint64_t sub_2206F3ACC(uint64_t a1)
{

  sub_22054B9F8(a1 + qword_281285D80);

  v2 = a1 + qword_281285D68;

  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t sub_2206F3B50(uint64_t a1, uint64_t a2)
{
  *(v2 + qword_281285D80 + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

void sub_2206F3BAC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = sub_22088D67C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v41 = a1;
    v42 = a2;
    sub_220888CBC();
    v14 = v43;
    v15 = [objc_opt_self() areAnimationsEnabled];
    if (a4)
    {
      v16 = OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling;
      v14[OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling] = 1;
      sub_22088C71C();
      v17 = sub_22088BFCC();

      type metadata accessor for TickerCollectionView();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = v14[v16];
      sub_2207A7D00();

      v18 = MEMORY[0x277D6E798];
    }

    else
    {
      v18 = MEMORY[0x277D6E790];
    }

    v19 = v13;
    sub_22088C7FC();

    (*(v8 + 104))(v11, *v18, v7);
    sub_22088D66C();

    (*(v8 + 8))(v11, v7);
    v20 = swift_unknownObjectWeakLoadStrong();
    v21 = a4 & 1;
    if (!v20 || (v22 = v20, v23 = v19, v24 = sub_2206BEE40(a4 & 1, v22), swift_unknownObjectRelease(), v23, !v24))
    {
      type metadata accessor for TickerCardContainerControllerAnimationCoordinator();
      v24 = swift_allocObject();
      *(v24 + 16) = MEMORY[0x277D84F98];
    }

    v25 = swift_allocObject();
    *(v25 + 16) = v21;
    *(v25 + 24) = v14;
    *(v25 + 32) = v19;
    v26 = swift_allocObject();
    *(v26 + 16) = v21;
    *(v26 + 24) = v14;
    *(v26 + 32) = v19;
    type metadata accessor for TickerAnimation();
    v27 = swift_allocObject();
    v27[2] = sub_2206F4528;
    v27[3] = v25;
    v27[4] = sub_2206F4534;
    v27[5] = v26;
    MEMORY[0x28223BE20](v27, v28);
    *(&v41 - 2) = v24;
    *(&v41 - 8) = v15;
    v29 = v19;
    v30 = v14;
    v31 = v29;
    v32 = v30;
    sub_220888FBC();
    v33 = swift_allocObject();
    *(v33 + 16) = v27;
    *(v33 + 24) = v15;
    v34 = swift_allocObject();
    *(v34 + 16) = sub_2206F4540;
    *(v34 + 24) = v33;

    v35 = sub_220888D9C();
    sub_220888E3C();

    v36 = swift_allocObject();
    *(v36 + 16) = v24;
    *(v36 + 24) = v15;
    v37 = swift_allocObject();
    *(v37 + 16) = sub_2206BEDD8;
    *(v37 + 24) = v36;

    v38 = sub_220888D9C();
    sub_220888E3C();

    v39 = swift_allocObject();
    *(v39 + 16) = v41;
    *(v39 + 24) = v42;

    v40 = sub_220888D9C();
    sub_220888EDC();
  }
}

id sub_2206F40E4(char a1, id a2, uint64_t a3)
{
  result = [a2 view];
  v6 = result;
  if (a1)
  {
    v7 = 1.0;
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v7 = 0.0;
  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_5:
  [result setAlpha_];

  v8 = *(a3 + qword_281285D88);

  return [v8 setAlpha_];
}

id sub_2206F4190(int a1, char a2, id a3, uint64_t a4)
{
  result = [a3 view];
  v8 = result;
  if ((a2 & 1) == 0)
  {
    if (result)
    {
      [result setAlpha_];

      [*(a4 + qword_281285D88) setAlpha_];
      v9 = OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling;
      *(a3 + OBJC_IVAR____TtC8StocksUI20TickerViewController_autoScrolling) = 0;
      sub_22088C71C();
      v10 = sub_22088BFCC();

      type metadata accessor for TickerCollectionView();
      *(swift_dynamicCastClassUnconditional() + OBJC_IVAR____TtC8StocksUI20TickerCollectionView_autoScrolling) = *(a3 + v9);
      sub_2207A7D00();

      goto LABEL_6;
    }

LABEL_10:
    __break(1u);
    return result;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  [result setAlpha_];

  [*(a4 + qword_281285D88) setAlpha_];
LABEL_6:
  sub_22088C7FC();
  sub_22088D65C();
}

uint64_t sub_2206F42F8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    MEMORY[0x28223BE20](a1, a2);
  }

  sub_22046D934();
  swift_allocObject();
  return sub_220888F2C();
}

void sub_2206F43C4(uint64_t a1, void *a2)
{
  v4 = [*v2 traitCollection];
  sub_2206F2B3C(v4);

  if ([a2 horizontalSizeClass] == 2)
  {
    sub_2206F2334(0);
  }
}

void sub_2206F4440()
{
  *(v0 + qword_281285D80 + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + qword_281285D70) = 0;
  v1 = qword_281285D78;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D355A8]) init];
  v2 = qword_281285D88;
  *(v0 + v2) = [objc_allocWithZone(sub_22088AEDC()) initWithFrame_];
  *(v0 + qword_281285D98) = 0;
  sub_22089267C();
  __break(1u);
}

uint64_t static RadarComponent.stocks.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281297ED0 != -1)
  {
    swift_once();
  }

  v2 = sub_22088AFDC();
  v3 = __swift_project_value_buffer(v2, qword_281297ED8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void sub_2206F4624()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for UIEdgeInsets(319);
    if (v1 <= 0x3F)
    {
      sub_22088DA1C();
      if (v2 <= 0x3F)
      {
        sub_220496148();
        if (v3 <= 0x3F)
        {
          type metadata accessor for UIContentSizeCategory(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_2206F470C(void *a1@<X0>, double *a2@<X8>, double a3@<D0>, double a4@<D3>, double a5@<D5>)
{
  v10 = sub_22089222C();
  if (!v10)
  {
    __break(1u);
    goto LABEL_30;
  }

  v11 = v10;
  v12 = sub_2208920CC();
  if (!v12)
  {
LABEL_30:
    __break(1u);
    return;
  }

  v13 = v12;
  v14 = [v11 imageWithConfiguration_];

  [v14 size];
  v16 = v15;

  sub_22089212C();
  v18 = v17;
  sub_2207D39BC(a1);
  v22 = v21;
  v23 = v19;
  v62 = v24;
  v63 = v18;
  if (v19 < a4)
  {
    v25 = a4;
  }

  else
  {
    v25 = v19;
  }

  v58 = v20;
  if (v20 < a5)
  {
    v26 = a5;
  }

  else
  {
    v26 = v20;
  }

  v61 = v16;
  v27 = a3 - (v26 + v16 + v18 + v25);
  v28 = *(v5 + *(type metadata accessor for ButtonLayoutCalculator() + 20));
  sub_220891D9C();
  [v28 boundingRectWithSize:33 options:0 context:{v27, v29}];
  v59 = v31;
  v60 = v30;
  v33 = v32;
  v35 = v34;
  [a1 displayScale];
  v37 = v36;
  if ([v28 su_containsExcessiveLineHeightCharacter])
  {
    [a1 displayScale];
    [v28 su_languageAwareOutsetsAtScale_];
    v39 = -v38;
    v41 = -v40;
    v57 = v33;
    v42 = v35;
    v44 = -v43;
    v46 = -v45;
    v47 = [a1 layoutDirection];
    if (v47 == 1)
    {
      v48 = v41;
    }

    else
    {
      v48 = v46;
    }

    if (v47 == 1)
    {
      v49 = v46;
    }

    else
    {
      v49 = v41;
    }

    v51 = v62;
    v50 = v63;
    if (v63 <= v48)
    {
      v50 = v48;
    }

    if (v23 <= v49)
    {
      v23 = v49;
    }

    if (v22 <= v39)
    {
      v22 = v39;
    }

    if (v62 <= v44)
    {
      v51 = v44;
    }

    v35 = v42;
    v33 = v57;
    v62 = v51;
    v63 = v50;
  }

  v52 = ceil(v35 * v37) / v37;
  v53 = ceil(v33 * v37) / v37;
  v65.origin.x = v60;
  v65.origin.y = v59;
  v65.size.width = v53;
  v65.size.height = v52;
  v54 = v58 + v61 + v63 + v23 + CGRectGetWidth(v65);
  if (v54 >= a3)
  {
    v55 = a3;
  }

  else
  {
    v55 = v54;
  }

  v66.origin.x = v60;
  v66.origin.y = v59;
  v66.size.width = v53;
  v66.size.height = v52;
  Height = CGRectGetHeight(v66);
  *a2 = v55;
  a2[1] = v62 + v22 + Height;
  a2[2] = v22;
  a2[3] = v23;
  a2[4] = v62;
  a2[5] = v58;
}

double sub_2206F4994@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v35 = a1;
  *&v36 = a2;
  v38 = a4;
  *&v37 = type metadata accessor for ButtonLayoutCalculator() - 8;
  MEMORY[0x28223BE20](v37, v6);
  v34 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22089226C();
  v39 = *(v33 - 8);
  MEMORY[0x28223BE20](v33, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(a3 + 48);
  v11 = v32;
  v12 = v4[5];
  v13 = v4[6];
  __swift_project_boxed_opaque_existential_1(v4 + 2, v12);
  v14 = *(v13 + 8);
  v15 = *(v14 + 8);
  v43[3] = v12;
  v43[4] = v13;
  __swift_allocate_boxed_opaque_existential_1(v43);
  v15(v11, v12, v14);
  v16 = (*(v13 + 24))(*(a3 + 56), 0, v12, v13);
  v17 = *(v13 + 40);
  v18 = v10;
  v31 = v10;
  v19 = v35;
  v20 = v36;
  v17(v35, v36, v16, v12, v13);
  v21 = v34;
  v22 = v18;
  v23 = v33;
  (*(v39 + 16))(v34, v22, v33);
  v24 = (*(v13 + 48))(v19, v20, v16, v12, v13);
  *(v21 + *(v37 + 28)) = v24;
  sub_2206F470C(v32, v40, *a3, *(a3 + 24), *(a3 + 40));
  v25 = v41;
  v26 = v42;
  v36 = v40[1];
  v37 = v40[0];
  sub_2206F4C94(v21);
  (*(v39 + 8))(v31, v23);
  __swift_destroy_boxed_opaque_existential_1(v43);
  v27 = v38;
  *v38 = 0;
  v27[1] = 0;
  v29 = v36;
  result = *&v37;
  *(v27 + 1) = v37;
  *(v27 + 2) = v29;
  v27[6] = v25;
  v27[7] = v26;
  return result;
}

uint64_t type metadata accessor for ButtonLayoutCalculator()
{
  result = qword_28128CF10;
  if (!qword_28128CF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2206F4C94(uint64_t a1)
{
  v2 = type metadata accessor for ButtonLayoutCalculator();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2206F4D18()
{
  result = sub_22089226C();
  if (v1 <= 0x3F)
  {
    result = sub_2206F4D9C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_2206F4D9C()
{
  result = qword_28127E7B0;
  if (!qword_28127E7B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28127E7B0);
  }

  return result;
}

void sub_2206F4DE8(void *a1)
{
  v3 = *&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_errorView];
  if (v3)
  {
    v4 = v3;
    [v1 addSubview_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_footer] setHidden_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1] setHidden_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2] setHidden_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3] setHidden_];

    if (!a1)
    {
      return;
    }
  }

  else
  {
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_footer] setHidden_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1] setHidden_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2] setHidden_];
    [*&v1[OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3] setHidden_];
    if (!a1)
    {
      return;
    }
  }

  [a1 removeFromSuperview];
}

char *sub_2206F4F3C(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = MEMORY[0x277D84F78];
  sub_2206F61A0(0, &qword_281297138, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB0]);
  v74 = v11;
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (&v72 - v14);
  v16 = OBJC_IVAR____TtC8StocksUI11WelcomeView_scrollView;
  *&v4[v16] = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  v17 = OBJC_IVAR____TtC8StocksUI11WelcomeView_footer;
  *&v4[v17] = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithFrame_];
  v18 = OBJC_IVAR____TtC8StocksUI11WelcomeView_titleGroup;
  *&v4[v18] = [objc_allocWithZone(type metadata accessor for WelcomeView.TitleGroup()) initWithFrame_];
  v19 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1;
  v20 = type metadata accessor for WelcomeView.BulletView();
  *&v4[v19] = [objc_allocWithZone(v20) initWithFrame_];
  v21 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2;
  *&v4[v21] = [objc_allocWithZone(v20) initWithFrame_];
  v22 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3;
  *&v4[v22] = [objc_allocWithZone(v20) initWithFrame_];
  v23 = OBJC_IVAR____TtC8StocksUI11WelcomeView_continueButton;
  *&v4[v23] = [objc_opt_self() largeButton];
  v24 = OBJC_IVAR____TtC8StocksUI11WelcomeView_activityIndicator;
  *&v4[v24] = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithFrame_];
  v25 = OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyIcon;
  *&v4[v25] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v26 = OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyLink;
  type metadata accessor for TapDimmingTextView();
  *&v4[v26] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v27 = OBJC_IVAR____TtC8StocksUI11WelcomeView_onPrivacyTap;
  sub_2206F61A0(0, &qword_281297130, v10 + 8, MEMORY[0x277D6EBB8]);
  *&v4[v27] = [objc_allocWithZone(v28) init];
  *&v4[OBJC_IVAR____TtC8StocksUI11WelcomeView_errorView] = 0;
  v75.receiver = v4;
  v75.super_class = ObjectType;
  v29 = objc_msgSendSuper2(&v75, sel_initWithFrame_, a1, a2, a3, a4);
  v30 = OBJC_IVAR____TtC8StocksUI11WelcomeView_scrollView;
  v31 = *&v29[OBJC_IVAR____TtC8StocksUI11WelcomeView_scrollView];
  v32 = v29;
  [v32 addSubview_];
  v33 = OBJC_IVAR____TtC8StocksUI11WelcomeView_footer;
  [v32 addSubview_];
  [*&v29[v30] addSubview_];
  v34 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1;
  [*&v29[v30] addSubview_];
  v35 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2;
  [*&v29[v30] addSubview_];
  v36 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3;
  [*&v29[v30] addSubview_];
  v37 = *&v29[v30];
  v73 = OBJC_IVAR____TtC8StocksUI11WelcomeView_activityIndicator;
  [v37 addSubview_];
  v38 = [*&v32[v33] contentView];
  [v38 addSubview_];

  v39 = [*&v32[v33] contentView];
  [v39 addSubview_];

  v40 = [*&v32[v33] contentView];
  v41 = OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyLink;
  [v40 addSubview_];

  v42 = *&v32[OBJC_IVAR____TtC8StocksUI11WelcomeView_onPrivacyTap];
  v43 = *&v32[v41];
  *v15 = 1;
  v44 = v74;
  (*(v12 + 104))(v15, *MEMORY[0x277D6EBA8], v74);
  v45 = v42;
  v46 = v43;

  (*(v12 + 8))(v15, v44);
  sub_2206F61A0(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089E460;
  v48 = *&v32[v34];
  *(inited + 32) = v48;
  v49 = *&v32[v35];
  *(inited + 40) = v49;
  v50 = *&v32[v36];
  *(inited + 48) = v50;
  v51 = inited & 0xC000000000000001;
  v52 = v48;
  v53 = v49;
  v54 = v50;
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_30;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  for (i = v52; ; i = MEMORY[0x223D8A700](0, inited))
  {
    v56 = i;
    v57 = *MEMORY[0x277D76558];
    v58 = *&i[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
    v59 = [v58 accessibilityTraits];
    v60 = v59;
    if (v59)
    {
      if ((v57 & ~v59) != 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v57)
      {
LABEL_8:
        v60 = v57 | v59;
        goto LABEL_10;
      }

      v60 = 0;
    }

LABEL_10:
    [v58 setAccessibilityTraits_];

    if (v51)
    {
      v61 = MEMORY[0x223D8A700](1, inited);
    }

    else
    {
      if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) < 2uLL)
      {
        goto LABEL_29;
      }

      v61 = *(inited + 40);
    }

    v62 = v61;
    v63 = *&v61[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
    v64 = [v63 accessibilityTraits];
    v65 = v64;
    if (v64)
    {
      if ((v57 & ~v64) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (v57)
      {
LABEL_17:
        v65 = v57 | v64;
        goto LABEL_19;
      }

      v65 = 0;
    }

LABEL_19:
    [v63 setAccessibilityTraits_];

    if (v51)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 3uLL)
    {
      v66 = *(inited + 48);
      goto LABEL_22;
    }

LABEL_29:
    __break(1u);
LABEL_30:
    ;
  }

  v66 = MEMORY[0x223D8A700](2, inited);
LABEL_22:
  v67 = v66;
  v68 = *&v66[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title];
  v69 = [v68 accessibilityTraits];
  v70 = v69;
  if (v69)
  {
    if ((v57 & ~v69) == 0)
    {
      goto LABEL_28;
    }

LABEL_26:
    v70 = v57 | v69;
  }

  else
  {
    if (v57)
    {
      goto LABEL_26;
    }

    v70 = 0;
  }

LABEL_28:
  [v68 setAccessibilityTraits_];

  swift_setDeallocating();
  swift_arrayDestroy();
  [*&v32[v73] startAnimating];

  return v32;
}

char *sub_2206F56AC(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_appIcon;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v10 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_welcomeLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v18.receiver = v4;
  v18.super_class = type metadata accessor for WelcomeView.TitleGroup();
  v11 = objc_msgSendSuper2(&v18, sel_initWithFrame_, a1, a2, a3, a4);
  v12 = *&v11[OBJC_IVAR____TtCC8StocksUI11WelcomeView10TitleGroup_appIcon];
  v13 = v11;
  [v13 addSubview_];
  [v13 addSubview_];
  [v13 setIsAccessibilityElement_];
  v14 = [v13 accessibilityTraits];
  v15 = v14;
  v16 = *MEMORY[0x277D76558];
  if (v14)
  {
    if ((v16 & ~v14) == 0)
    {
      goto LABEL_7;
    }
  }

  else if (!v16)
  {
    v15 = 0;
    goto LABEL_7;
  }

  v15 = v16 | v14;
LABEL_7:
  [v13 setAccessibilityTraits_];

  return v13;
}

char *sub_2206F5A40(double a1, double a2, double a3, double a4)
{
  v9 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v10 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb;
  *&v4[v11] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v16.receiver = v4;
  v16.super_class = type metadata accessor for WelcomeView.BulletView();
  v12 = objc_msgSendSuper2(&v16, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = *&v12[OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image];
  v14 = v12;
  [v14 addSubview_];
  [v14 addSubview_];
  [v14 addSubview_];

  return v14;
}

id sub_2206F5C04(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_2206F5E18()
{
  v1 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_image;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v2 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_title;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v3 = OBJC_IVAR____TtCC8StocksUI11WelcomeView10BulletView_blurb;
  *(v0 + v3) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  sub_22089267C();
  __break(1u);
}

void sub_2206F5F0C()
{
  v1 = OBJC_IVAR____TtC8StocksUI11WelcomeView_scrollView;
  *(v0 + v1) = [objc_allocWithZone(MEMORY[0x277D759D8]) initWithFrame_];
  v2 = OBJC_IVAR____TtC8StocksUI11WelcomeView_footer;
  *(v0 + v2) = [objc_allocWithZone(MEMORY[0x277D75D68]) initWithFrame_];
  v3 = OBJC_IVAR____TtC8StocksUI11WelcomeView_titleGroup;
  *(v0 + v3) = [objc_allocWithZone(type metadata accessor for WelcomeView.TitleGroup()) initWithFrame_];
  v4 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet1;
  v5 = type metadata accessor for WelcomeView.BulletView();
  *(v0 + v4) = [objc_allocWithZone(v5) initWithFrame_];
  v6 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet2;
  *(v0 + v6) = [objc_allocWithZone(v5) initWithFrame_];
  v7 = OBJC_IVAR____TtC8StocksUI11WelcomeView_bullet3;
  *(v0 + v7) = [objc_allocWithZone(v5) initWithFrame_];
  v8 = OBJC_IVAR____TtC8StocksUI11WelcomeView_continueButton;
  *(v0 + v8) = [objc_opt_self() largeButton];
  v9 = OBJC_IVAR____TtC8StocksUI11WelcomeView_activityIndicator;
  *(v0 + v9) = [objc_allocWithZone(MEMORY[0x277D750E8]) initWithFrame_];
  v10 = OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyIcon;
  *(v0 + v10) = [objc_allocWithZone(MEMORY[0x277D755E8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC8StocksUI11WelcomeView_privacyLink;
  type metadata accessor for TapDimmingTextView();
  *(v0 + v11) = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithFrame_];
  v12 = OBJC_IVAR____TtC8StocksUI11WelcomeView_onPrivacyTap;
  sub_2206F61A0(0, &qword_281297130, MEMORY[0x277D84F78] + 8, MEMORY[0x277D6EBB8]);
  *(v0 + v12) = [objc_allocWithZone(v13) init];
  *(v0 + OBJC_IVAR____TtC8StocksUI11WelcomeView_errorView) = 0;
  sub_22089267C();
  __break(1u);
}

void sub_2206F61A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_2206F61F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v67 = a1;
  sub_2206F7480(0, &qword_2812982E8, MEMORY[0x277D68EA8]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v64 = &v60 - v5;
  v65 = sub_220889F5C();
  v6 = *(v65 - 8);
  MEMORY[0x28223BE20](v65, v7);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206F7480(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v60 - v11;
  v13 = sub_2208891BC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v68 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206F7480(0, &qword_281299480, MEMORY[0x277CC9578]);
  v19 = MEMORY[0x28223BE20](v17 - 8, v18);
  v21 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v24 = &v60 - v23;
  v25 = sub_22088980C();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v69 = &v60 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = [v2 articleID];
  v30 = sub_22089136C();
  v62 = v31;
  v63 = v30;

  v32 = [v2 sourceName];
  if (v32)
  {
    v33 = v32;
    v34 = sub_22089136C();
    v60 = v35;
    v61 = v34;
  }

  else
  {
    v60 = 0xE000000000000000;
    v61 = 0;
  }

  v36 = [v2 isPaid];
  v37 = MEMORY[0x277D687F0];
  if (!v36)
  {
    v37 = MEMORY[0x277D687E8];
  }

  (*(v26 + 104))(v69, *v37, v25);
  v38 = [v2 publishDate];
  if (v38)
  {
    v39 = v38;
    sub_22088511C();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = sub_22088516C();
  v42 = *(v41 - 8);
  (*(v42 + 56))(v21, v40, 1, v41);
  sub_2206F7164(v21, v24, &qword_281299480, MEMORY[0x277CC9578]);
  if ((*(v42 + 48))(v24, 1, v41) != 1)
  {
    sub_2208850FC();
    v45 = v44;
    result = (*(v42 + 8))(v24, v41);
    v47 = v45 * 1000.0;
    if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v43 = v68;
      if (v47 <= -9.22337204e18)
      {
        __break(1u);
      }

      else if (v47 < 9.22337204e18)
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  sub_2206F71D0(v24, &qword_281299480, MEMORY[0x277CC9578]);
  v43 = v68;
LABEL_14:
  [v2 publisherArticleVersion];
  v48 = [v2 isPressRelease];
  v49 = MEMORY[0x277D68330];
  if (!v48)
  {
    v49 = MEMORY[0x277D68328];
  }

  (*(v14 + 104))(v43, *v49, v13);
  v50 = [v2 videoURL];
  if (v50)
  {
    sub_220884E4C();

    v51 = 0;
  }

  else
  {
    v51 = 1;
  }

  v52 = v66;
  v53 = sub_220884E9C();
  (*(*(v53 - 8) + 56))(v12, v51, 1, v53);
  sub_2206F71D0(v12, &qword_2812994E0, MEMORY[0x277CC9260]);
  if ([v2 respondsToSelector_])
  {
    v54 = [v2 role];
    v55 = MEMORY[0x277D68E98];
    v56 = MEMORY[0x277D68E90];
    if (v54 != 3)
    {
      v56 = MEMORY[0x277D68EA0];
    }

    if (v54 != 1)
    {
      v55 = v56;
    }

    v58 = v64;
    v57 = v65;
    (*(v6 + 104))(v64, *v55, v65);
    (*(v6 + 56))(v58, 0, 1, v57);
    (*(v6 + 32))(v52, v58, v57);
  }

  else
  {
    v59 = v65;
    (*(v6 + 56))(v64, 1, 1, v65);
    (*(v6 + 104))(v52, *MEMORY[0x277D68EA0], v59);
  }

  if ([v2 respondsToSelector_])
  {
    [v2 hasAudioTrack];
  }

  return sub_2208895CC();
}

void sub_2206F69A0(void *a1)
{
  v2 = v1;
  sub_2206F7480(0, &qword_2812982F0, MEMORY[0x277D68E88]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v20 - v6;
  v8 = sub_220889F1C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v2 sourceChannel];
  if (v13)
  {
    v14 = [v13 identifier];
    swift_unknownObjectRelease();
    sub_22089136C();

    v15 = sub_22089132C();
  }

  else
  {
    v15 = 0;
  }

  v21 = [a1 purchaseLookUpEntryForTagID_];

  if (v21)
  {
    sub_22059B88C();
    v16 = v21;
  }

  else
  {
    (*(v9 + 104))(v12, *MEMORY[0x277D68E38], v8);
    v17 = *MEMORY[0x277D68E78];
    v18 = sub_220889F4C();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v7, v17, v18);
    (*(v19 + 56))(v7, 0, 1, v18);
    sub_220889BEC();
  }
}

uint64_t sub_2206F6C58()
{
  v1 = v0;
  sub_2206F7480(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x28223BE20](v6, v7).n128_u64[0];
  v10 = &v18 - v9;
  v11 = [v1 sourceName];
  if (v11)
  {
    v12 = v11;
    sub_22089136C();
  }

  v13 = [v1 contentURL];
  if (v13)
  {
    v14 = v13;
    sub_220884E4C();

    v15 = sub_220884E9C();
    (*(*(v15 - 8) + 56))(v5, 0, 1, v15);
  }

  else
  {
    v15 = sub_220884E9C();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
  }

  sub_2206F7164(v5, v10, &qword_2812994E0, MEMORY[0x277CC9260]);
  sub_220884E9C();
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v10, 1, v15) == 1)
  {
    sub_2206F71D0(v10, &qword_2812994E0, MEMORY[0x277CC9260]);
  }

  else
  {
    sub_220884E0C();
    (*(v16 + 8))(v10, v15);
  }

  return sub_22088992C();
}

uint64_t FCHeadlineProviding.referringArticleData2()()
{
  v1 = v0;
  sub_2206F7480(0, &qword_2812982E8, MEMORY[0x277D68EA8]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - v4;
  v6 = sub_220889F5C();
  v7 = *(v6 - 8);
  *&v9 = MEMORY[0x28223BE20](v6, v8).n128_u64[0];
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [v1 articleID];
  sub_22089136C();

  [v1 publisherArticleVersion];
  if ([v1 respondsToSelector_])
  {
    v13 = [v1 role];
    v14 = MEMORY[0x277D68E98];
    v15 = MEMORY[0x277D68E90];
    if (v13 != 3)
    {
      v15 = MEMORY[0x277D68EA0];
    }

    if (v13 != 1)
    {
      v14 = v15;
    }

    (*(v7 + 104))(v5, *v14, v6);
    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v11, v5, v6);
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    (*(v7 + 104))(v11, *MEMORY[0x277D68EA0], v6);
  }

  return sub_220889AAC();
}

uint64_t sub_2206F7164(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2206F7480(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2206F71D0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2206F7480(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2206F722C()
{
  v1 = sub_22088A05C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v23 - v8;
  v10 = MEMORY[0x277D690A0];
  sub_2206F7480(0, &qword_281298270, MEMORY[0x277D690A0]);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v23 - v17;
  sub_2206F74D4(v0, &v23 - v17);
  v19 = sub_22088A15C();
  v20 = (*(*(v19 - 8) + 48))(v18, 1, v19);
  v21 = MEMORY[0x277D68F48];
  if (v20 != 1)
  {
    v21 = MEMORY[0x277D68F50];
  }

  (*(v2 + 104))(v9, *v21, v1);
  (*(v2 + 16))(v5, v9, v1);
  sub_2206F762C(v18, v14);
  sub_22088A03C();
  (*(v2 + 8))(v9, v1);
  return sub_2206F71D0(v18, &qword_281298270, v10);
}

void sub_2206F7480(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2206F74D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 storyType];
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v9 = MEMORY[0x277D69088];
    }

    else
    {
      if (v3 != 4)
      {
        goto LABEL_3;
      }

      v9 = MEMORY[0x277D69090];
    }
  }

  else
  {
    if (v3 != 2)
    {
LABEL_3:
      v4 = sub_22088A15C();
      v5 = *(*(v4 - 8) + 56);
      v6 = v4;
      v7 = a2;
      v8 = 1;
      goto LABEL_10;
    }

    v9 = MEMORY[0x277D69098];
  }

  v10 = *v9;
  v11 = sub_22088A15C();
  v13 = *(v11 - 8);
  (*(v13 + 104))(a2, v10, v11);
  v5 = *(v13 + 56);
  v7 = a2;
  v8 = 0;
  v6 = v11;
LABEL_10:

  return v5(v7, v8, 1, v6);
}

uint64_t sub_2206F762C(uint64_t a1, uint64_t a2)
{
  sub_2206F7480(0, &qword_281298270, MEMORY[0x277D690A0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2206F76AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v210 = a2;
  v201 = sub_22088519C();
  v199 = *(v201 - 8);
  MEMORY[0x28223BE20](v201, v3);
  v197 = &v181 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for PreBuyFlowRouteModel();
  MEMORY[0x28223BE20](v196, v5);
  v200 = &v181 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206F9D50(0, &qword_281299060, MEMORY[0x277D69810]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v202 = &v181 - v9;
  v10 = type metadata accessor for WatchlistCreationRouteModel();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v198 = &v181 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for CampaignRouteModel();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v194 = &v181 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22088CC6C();
  v205 = *(v16 - 8);
  v206 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v204 = &v181 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v192, v19);
  v193 = &v181 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v22);
  v195 = &v181 - v23;
  sub_2206F9D50(0, &qword_2812994E0, MEMORY[0x277CC9260]);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v182 = &v181 - v26;
  sub_2206F9D50(0, &qword_281297598, MEMORY[0x277D6E658]);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v184 = &v181 - v29;
  v190 = sub_22089030C();
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190, v30);
  v187 = &v181 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205603E4();
  MEMORY[0x28223BE20](v32 - 8, v33);
  v188 = &v181 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = sub_220884E9C();
  v203 = *(v207 - 8);
  MEMORY[0x28223BE20](v207, v35);
  v37 = &v181 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v38, v39);
  v181 = &v181 - v40;
  MEMORY[0x28223BE20](v41, v42);
  v186 = &v181 - v43;
  MEMORY[0x28223BE20](v44, v45);
  v185 = &v181 - v46;
  v47 = sub_2208876BC();
  MEMORY[0x28223BE20](v47 - 8, v48);
  v191 = &v181 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206F9D50(0, &qword_281298AA8, MEMORY[0x277D30048]);
  MEMORY[0x28223BE20](v50 - 8, v51);
  v53 = &v181 - v52;
  v54 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v54, v55);
  v183 = &v181 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v57, v58);
  v60 = &v181 - v59;
  MEMORY[0x28223BE20](v61, v62);
  v64 = &v181 - v63;
  MEMORY[0x28223BE20](v65, v66);
  v68 = &v181 - v67;
  v69 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v69, v70);
  v72 = &v181 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055F760();
  v208 = a1;
  sub_22088E10C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2206A1D94();
      v108 = v204;
      v107 = v205;
      v109 = v206;
      (*(v205 + 32))(v204, &v72[*(v106 + 48)], v206);
      sub_220675F54(v108);
      (*(v107 + 8))(v108, v109);
      sub_2206F9F40(v72, type metadata accessor for ForYouSectionDescriptor);
      goto LABEL_65;
    case 2u:
      v95 = v195;
      sub_2206F9E54(v72, v195, type metadata accessor for StocksActivity.StockFeed);
      v96 = v209;
      v97 = sub_22067642C(v95, v208);
      if (v97)
      {
        v98 = v97;
        v99 = v193;
        sub_2206F9ED8(v95, v193, type metadata accessor for StocksActivity.StockFeed);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_220447264(0, &qword_2812952A0, type metadata accessor for StocksActivity.StockFeed.Series);
          v101 = *(v99 + *(v100 + 48));
          sub_2206F9F40(v99, type metadata accessor for StocksActivity.StockFeed.Series);
        }

        else
        {
          sub_220447264(0, &qword_281299050, MEMORY[0x277D69810]);
          v101 = *(v99 + *(v153 + 48));
          v154 = sub_22088685C();
          (*(*(v154 - 8) + 8))(v99, v154);
        }

        if (v101)
        {
          [*(v96 + 56) setPreferredDisplayMode_];
        }

        [*(v96 + 56) showViewController:v98 sender:0];
      }

      sub_2206F9F40(v95, type metadata accessor for StocksActivity.StockFeed);
      goto LABEL_65;
    case 3u:
      sub_2206F9F40(v72, type metadata accessor for StocksActivity);
      v102 = MEMORY[0x277D6E358];
      goto LABEL_66;
    case 4u:
      sub_2206F9E54(v72, v68, type metadata accessor for StocksActivity.Article);
      sub_2206F9ED8(v68, v64, type metadata accessor for StocksActivity.Article);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2206F9F40(v64, type metadata accessor for StocksActivity.Article);
        v83 = sub_220887DEC();
        (*(*(v83 - 8) + 56))(v53, 1, 1, v83);
      }

      else
      {
        sub_2204481D8();
        v132 = *(v131 + 64);
        v133 = v191;
        sub_2206F9E54(v64, v191, MEMORY[0x277D2FB40]);
        sub_22088769C();
        sub_2206F9F40(v133, MEMORY[0x277D2FB40]);
        sub_2206F9DA4(&v64[v132], &qword_281285B20, &qword_281285B30);
      }

      v134 = sub_220887DEC();
      v135 = (*(*(v134 - 8) + 48))(v53, 1, v134);
      v136 = v209;
      if (v135 != 1)
      {
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v144 = v203;
        v145 = *(v203 + 32);
        if (EnumCaseMultiPayload != 1)
        {
          v158 = v185;
          v159 = v207;
          v145(v185, v53, v207);
          __swift_project_boxed_opaque_existential_1((v136 + 16), *(v136 + 40));
          sub_2204446D4(0, &unk_281297D60);
          result = sub_2208884DC();
          if (!*(&v214 + 1))
          {
            goto LABEL_88;
          }

          sub_220457328(&v213, &v211);
          __swift_project_boxed_opaque_existential_1(&v211, *&v212[8]);
          sub_22088B62C();
          (*(v144 + 8))(v158, v159);
          sub_2206F9F40(v68, type metadata accessor for StocksActivity.Article);
          __swift_destroy_boxed_opaque_existential_1(&v211);
          goto LABEL_65;
        }

        v146 = v186;
        v147 = v207;
        v145(v186, v53, v207);
        __swift_project_boxed_opaque_existential_1((v136 + 16), *(v136 + 40));
        sub_2204446D4(0, qword_281286BC0);
        result = sub_2208884DC();
        if (!*(&v214 + 1))
        {
          goto LABEL_86;
        }

        sub_220457328(&v213, &v211);
        __swift_project_boxed_opaque_existential_1(&v211, *&v212[8]);
        v215 = 0;
        v213 = 0u;
        v214 = 0u;
        v148 = sub_220663D20(v146, &v213);
        sub_2206F9DA4(&v213, &qword_27CF56B50, &qword_27CF58420);
        if (v148)
        {
          v149 = sub_22088E0EC();
          v149(v148);

          __swift_destroy_boxed_opaque_existential_1(&v211);
          [*(v136 + 56) showViewController:v148 sender:0];
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v211);
        }

        v163 = v210;
        (*(v144 + 8))(v146, v147);
        sub_2206F9F40(v68, type metadata accessor for StocksActivity.Article);
LABEL_74:
        v102 = MEMORY[0x277D6E348];
        goto LABEL_67;
      }

      v137 = v188;
      sub_2208903FC();
      v138 = v189;
      v139 = v190;
      if ((*(v189 + 48))(v137, 1, v190) != 1)
      {
        v156 = v187;
        (*(v138 + 32))(v187, v137, v139);
        __swift_project_boxed_opaque_existential_1((v136 + 16), *(v136 + 40));
        sub_2204446D4(0, &qword_281296770);
        result = sub_2208884DC();
        if (!*&v212[8])
        {
          goto LABEL_87;
        }

        sub_220457328(&v211, &v213);
        __swift_project_boxed_opaque_existential_1(&v213, *(&v214 + 1));
        *&v211 = sub_220890B4C();
        v212[24] = 0;

        v157 = sub_220825F70(v208, &v211);
        sub_2206F9E00(&v211);
        if (v157)
        {
          [*(v136 + 56) showViewController:v157 sender:0];
        }

        else
        {
        }

        v163 = v210;
        (*(v138 + 8))(v156, v139);
        sub_2206F9F40(v68, type metadata accessor for StocksActivity.Article);
        __swift_destroy_boxed_opaque_existential_1(&v213);
        goto LABEL_74;
      }

      v140 = sub_22055E754(v208, v68);
      if (v140)
      {
        v141 = v140;
        sub_2206F9ED8(v68, v60, type metadata accessor for StocksActivity.Article);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          sub_2206F9F40(v60, type metadata accessor for StocksActivity.Article);
          v142 = v183;
        }

        else
        {
          sub_2204481D8();
          v170 = *&v60[*(v169 + 48)];
          sub_2206F9DA4(&v60[*(v169 + 64)], &qword_281285B20, &qword_281285B30);
          sub_2206F9F40(v60, MEMORY[0x277D2FB40]);
          v142 = v183;
          if (v170)
          {
            [*(v136 + 56) setPreferredDisplayMode_];
          }
        }

        sub_2206F9ED8(v68, v142, type metadata accessor for StocksActivity.Article);
        v171 = swift_getEnumCaseMultiPayload();
        v172 = v184;
        if (v171 == 1)
        {
          sub_2206F9F40(v142, type metadata accessor for StocksActivity.Article);
          v173 = sub_22088D38C();
          (*(*(v173 - 8) + 56))(v172, 1, 1, v173);
        }

        else
        {
          sub_2204481D8();
          v175 = *(v174 + 64);
          v176 = v191;
          sub_2206F9E54(v142, v191, MEMORY[0x277D2FB40]);
          sub_22088765C();
          sub_2206F9F40(v176, MEMORY[0x277D2FB40]);
          sub_2206F9DA4(v142 + v175, &qword_281285B20, &qword_281285B30);
        }

        sub_22088C86C();

        sub_2206F9FE8(v172, &qword_281297598, MEMORY[0x277D6E658]);
        goto LABEL_82;
      }

      v166 = v182;
      sub_22055E09C(v68, v182);
      v167 = v203;
      v168 = v207;
      if ((*(v203 + 48))(v166, 1, v207) != 1)
      {
        v177 = v181;
        (*(v167 + 32))(v181, v166, v168);
        v178 = [objc_opt_self() sharedApplication];
        v179 = sub_220884E3C();
        sub_2205CE854(MEMORY[0x277D84F90]);
        type metadata accessor for OpenExternalURLOptionsKey(0);
        sub_2206F9FA0(&qword_27CF57590, 255, type metadata accessor for OpenExternalURLOptionsKey);
        v180 = sub_22089125C();

        [v178 openURL:v179 options:v180 completionHandler:0];

        (*(v167 + 8))(v177, v168);
LABEL_82:
        sub_2206F9F40(v68, type metadata accessor for StocksActivity.Article);
        goto LABEL_65;
      }

      sub_2206F9F40(v68, type metadata accessor for StocksActivity.Article);
      v160 = &qword_2812994E0;
      v161 = MEMORY[0x277CC9260];
      v162 = v166;
LABEL_64:
      sub_2206F9FE8(v162, v160, v161);
LABEL_65:
      v102 = MEMORY[0x277D6E348];
LABEL_66:
      v163 = v210;
LABEL_67:
      v164 = *v102;
      v165 = sub_22088CD4C();
      return (*(*(v165 - 8) + 104))(v163, v164, v165);
    case 5u:
      sub_220447264(0, &qword_2812994D0, MEMORY[0x277CC9260]);
      v111 = v72[*(v110 + 48)];
      v112 = v203;
      v113 = v207;
      (*(v203 + 32))(v37, v72, v207);
      v114 = v209;
      v115 = sub_22061532C(v37, v111);
      if (v115)
      {
        v116 = v115;
        [*(v114 + 56) showViewController:v115 sender:0];
      }

      (*(v112 + 8))(v37, v113);
      goto LABEL_65;
    case 6u:
      v120 = *(v72 + 1);
      v211 = *v72;
      *v212 = v120;
      *&v212[9] = *(v72 + 25);
      v121 = v209;
      v122 = sub_220825F70(v208, &v211);
      if (v122)
      {
        v123 = v122;
        [*(v121 + 56) presentViewController:v122 animated:1 completion:0];
      }

      sub_2206F9E00(&v211);
      goto LABEL_65;
    case 7u:
      v103 = v194;
      sub_2206F9E54(v72, v194, type metadata accessor for CampaignRouteModel);
      v104 = v209;
      v105 = sub_220745A98(v208, v103);
      [*(v104 + 56) showViewController:v105 sender:0];

      sub_2206F9F40(v103, type metadata accessor for CampaignRouteModel);
      goto LABEL_65;
    case 8u:
      v127 = *v72;
      *&v211 = *v72;
      v128 = v209;
      v129 = sub_220854308(v208, &v211);
      if (v129)
      {
        v130 = v129;
        [*(v128 + 56) showViewController:v129 sender:0];
        sub_22059A860(v127);
      }

      else
      {
        sub_22059A860(v127);
      }

      goto LABEL_65;
    case 9u:
      v90 = *v72;
      v89 = *(v72 + 1);
      v91 = v209;
      __swift_project_boxed_opaque_existential_1((v209 + 16), *(v209 + 40));
      sub_2204446D4(0, qword_28128EFD8);
      result = sub_2208884DC();
      if (*(&v214 + 1))
      {
        sub_220457328(&v213, &v211);
        __swift_project_boxed_opaque_existential_1(&v211, *&v212[8]);
        v92 = sub_2206045A4(v90, v89);
        if (v92)
        {
          v93 = v92;
          v94 = sub_22088E0EC();
          v94(v93);

          __swift_destroy_boxed_opaque_existential_1(&v211);
          sub_22088CB0C();
          if (sub_22088CAFC())
          {
            sub_22058B000(v90);
          }

          else
          {
            v155 = v93;
            sub_22088CABC();
            [*(v91 + 56) showViewController:v155 sender:0];
            sub_22058B000(v90);
          }
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(&v211);
          sub_22058B000(v90);
        }

        goto LABEL_65;
      }

      __break(1u);
LABEL_84:
      __break(1u);
      goto LABEL_85;
    case 0xAu:
      v124 = v198;
      sub_2206F9E54(v72, v198, type metadata accessor for WatchlistCreationRouteModel);
      v125 = v209;
      __swift_project_boxed_opaque_existential_1((v209 + 16), *(v209 + 40));
      sub_2204446D4(0, qword_281282C98);
      result = sub_2208884DC();
      if (!*&v212[8])
      {
        goto LABEL_84;
      }

      sub_220457328(&v211, &v213);
      __swift_project_boxed_opaque_existential_1(&v213, *(&v214 + 1));
      *&v211 = sub_2205F7F54(v124);
      v212[24] = 3;
      v126 = sub_220825F70(v208, &v211);
      sub_2206F9E00(&v211);
      if (v126)
      {
        [*(v125 + 56) showViewController:v126 sender:0];
      }

      sub_2206F9F40(v124, type metadata accessor for WatchlistCreationRouteModel);
      __swift_destroy_boxed_opaque_existential_1(&v213);
      goto LABEL_65;
    case 0xBu:
      sub_220447880();
      v77 = *&v72[*(v76 + 48)];
      v78 = v202;
      sub_22057B318(v72, v202);
      v79 = *(v209 + 56);
      v80 = [v79 presentedViewController];
      if (!v80)
      {
        goto LABEL_62;
      }

      v81 = v80;
      v82 = [v80 popoverPresentationController];
      if (v82)
      {

        [v81 dismissViewControllerAnimated:1 completion:0];
      }

      else
      {

LABEL_62:
        v81 = sub_2207786AC(v208, v78, v77);
        [v79 showViewController:v81 sender:0];
      }

      v160 = &qword_281299060;
      v161 = MEMORY[0x277D69810];
      v162 = v78;
      goto LABEL_64;
    case 0xCu:
      v84 = v200;
      sub_2206F9E54(v72, v200, type metadata accessor for PreBuyFlowRouteModel);
      v85 = v209;
      v86 = *(v209 + 160);
      v208 = *(v209 + 168);
      __swift_project_boxed_opaque_existential_1((v209 + 136), v86);
      v87 = v197;
      sub_22088518C();
      sub_22088517C();
      (*(v199 + 8))(v87, v201);
      v88 = sub_22088A5AC();

      [*(v85 + 56) showViewController:v88 sender:0];

      sub_2206F9F40(v84, type metadata accessor for PreBuyFlowRouteModel);
      goto LABEL_65;
    case 0xDu:
      if (qword_27CF55B98 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v207, qword_27CF6D138);
      v117 = objc_allocWithZone(MEMORY[0x277CDB700]);
      v118 = sub_220884E3C();
      v119 = [v117 initWithURL_];

      [v119 setModalPresentationStyle_];
      [*(v209 + 56) presentViewController:v119 animated:1 completion:0];

      goto LABEL_65;
    default:
      if (*(v72 + 5))
      {
        __swift_project_boxed_opaque_existential_1((v209 + 16), *(v209 + 40));
        sub_2204446D4(0, &qword_281299280);
        result = sub_2208884DC();
        if (!*(&v214 + 1))
        {
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
          return result;
        }

        sub_220457328(&v213, &v211);
        __swift_project_boxed_opaque_existential_1(&v211, *&v212[8]);
        sub_220885F2C();

        sub_22046DA2C(&v211, &v213);
        v74 = swift_allocObject();
        sub_220457328(&v213, v74 + 16);
        v75 = sub_220888D9C();
        sub_220888E4C();

        __swift_destroy_boxed_opaque_existential_1(&v211);
      }

      else
      {
      }

      v151 = v205;
      v150 = v206;
      v152 = v204;
      (*(v205 + 104))(v204, *MEMORY[0x277D6E250], v206);
      sub_220675F54(v152);
      (*(v151 + 8))(v152, v150);
      goto LABEL_65;
  }
}

uint64_t sub_2206F9268(uint64_t a1, void *a2)
{
  sub_2206F9D50(0, &qword_281298FF0, MEMORY[0x277D698E0]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v14 - v6;
  v8 = sub_220886A4C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2205B7424(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_2206F9FE8(v7, &qword_281298FF0, MEMORY[0x277D698E0]);
  }

  (*(v9 + 32))(v12, v7, v8);
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  sub_220885F4C();
  sub_22088EB7C();

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_2206F944C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v57 = a2;
  v3 = type metadata accessor for StocksActivity.StockFeed(0);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220884E9C();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v52 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2208876BC();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2206F9D50(0, &qword_281298AA8, MEMORY[0x277D30048]);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v52 - v16;
  v18 = type metadata accessor for StocksActivity.Article(0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v52 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v52 - v24;
  v26 = type metadata accessor for StocksActivity(0);
  MEMORY[0x28223BE20](v26, v27);
  v29 = &v52 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055F760();
  v55 = a1;
  sub_22088E10C();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_2206A1D94();
      v38 = *(v37 + 48);
      v39 = sub_22088CC6C();
      (*(*(v39 - 8) + 8))(&v29[v38], v39);
      v30 = type metadata accessor for ForYouSectionDescriptor;
      goto LABEL_3;
    case 2u:
      sub_2206F9E54(v29, v6, type metadata accessor for StocksActivity.StockFeed);
      v36 = sub_22067642C(v6, v55);
      sub_2206F9F40(v6, type metadata accessor for StocksActivity.StockFeed);
      if (!v36)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    case 3u:
      sub_2206F9F40(v29, type metadata accessor for StocksActivity);
      goto LABEL_22;
    case 4u:
      sub_2206F9E54(v29, v25, type metadata accessor for StocksActivity.Article);
      sub_2206F9ED8(v25, v21, type metadata accessor for StocksActivity.Article);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_2206F9F40(v21, type metadata accessor for StocksActivity.Article);
        v35 = sub_220887DEC();
        (*(*(v35 - 8) + 56))(v17, 1, 1, v35);
      }

      else
      {
        sub_2204481D8();
        v45 = *(v44 + 64);
        sub_2206F9E54(v21, v13, MEMORY[0x277D2FB40]);
        sub_22088769C();
        sub_2206F9F40(v13, MEMORY[0x277D2FB40]);
        sub_2206F9DA4(&v21[v45], &qword_281285B20, &qword_281285B30);
      }

      v46 = sub_220887DEC();
      if ((*(*(v46 - 8) + 48))(v17, 1, v46) != 1)
      {
        sub_2206F9F40(v25, type metadata accessor for StocksActivity.Article);
        v50 = *MEMORY[0x277D6DEF0];
        v51 = sub_22088C5CC();
        (*(*(v51 - 8) + 104))(v57, v50, v51);
        return sub_2206F9F40(v17, MEMORY[0x277D30048]);
      }

      v36 = sub_22055E754(v55, v25);
      sub_2206F9F40(v25, type metadata accessor for StocksActivity.Article);
      if (!v36)
      {
        goto LABEL_22;
      }

      goto LABEL_19;
    case 5u:
      v41 = v52;
      v40 = v53;
      v42 = v54;
      (*(v53 + 32))(v52, v29, v54);
      __swift_project_boxed_opaque_existential_1((v56 + 16), *(v56 + 40));
      sub_2204446D4(0, qword_281286BC0);
      result = sub_2208884DC();
      if (*(&v59 + 1))
      {
        sub_220457328(&v58, v61);
        __swift_project_boxed_opaque_existential_1(v61, v61[3]);
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
        v36 = sub_220663D20(v41, &v58);
        sub_2206F9DA4(&v58, &qword_27CF56B50, &qword_27CF58420);
        if (v36)
        {
          v43 = sub_22088E0EC();
          v43(v36);

          __swift_destroy_boxed_opaque_existential_1(v61);
          (*(v40 + 8))(v41, v42);
LABEL_19:
          v47 = v57;
          *v57 = v36;
          v48 = *MEMORY[0x277D6DF00];
          v49 = sub_22088C5CC();
          return (*(*(v49 - 8) + 104))(v47, v48, v49);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v61);
          (*(v40 + 8))(v41, v42);
LABEL_22:
          v31 = MEMORY[0x277D6DEF8];
LABEL_5:
          v32 = *v31;
          v33 = sub_22088C5CC();
          return (*(*(v33 - 8) + 104))(v57, v32, v33);
        }
      }

      else
      {
        __break(1u);
      }

      return result;
    case 0xBu:
      sub_220447880();

      sub_2206F9FE8(v29, &qword_281299060, MEMORY[0x277D69810]);
      goto LABEL_4;
    case 0xDu:
      goto LABEL_4;
    default:
      v30 = type metadata accessor for StocksActivity;
LABEL_3:
      sub_2206F9F40(v29, v30);
LABEL_4:
      v31 = MEMORY[0x277D6DEF0];
      goto LABEL_5;
  }
}

id *sub_2206F9C10()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 2));

  __swift_destroy_boxed_opaque_existential_1((v0 + 11));

  __swift_destroy_boxed_opaque_existential_1((v0 + 17));
  __swift_destroy_boxed_opaque_existential_1((v0 + 22));
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_2206F9C70()
{
  sub_2206F9C10();

  return swift_deallocClassInstance();
}

uint64_t sub_2206F9CA4(uint64_t a1, uint64_t a2)
{
  result = sub_2206F9FA0(&qword_28127F070, a2, type metadata accessor for Router);
  *(a1 + 8) = result;
  return result;
}

void sub_2206F9D50(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_2206F9DA4(uint64_t a1, unint64_t *a2, unint64_t *a3)
{
  sub_220448010(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2206F9E54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206F9ED8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2206F9F40(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2206F9FA0(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
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

uint64_t sub_2206F9FE8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  sub_2206F9D50(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2206FA044(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2206FA08C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_2206FA180(uint64_t a1, uint64_t a2, void (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = 0;
  v9 = *(a2 + 16);
  do
  {
    v10 = v8;
    if (v9 == v8)
    {
      break;
    }

    a3(0);
    ++v8;
    sub_2206FA874(a4, a5);
  }

  while ((sub_2208912FC() & 1) == 0);
  return v9 != v10;
}

uint64_t OfflineAlertable.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t OfflineAlertable.neutralButton.getter()
{
  v0 = sub_2208902EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2208902FC();
  (*(v1 + 104))(v4, *MEMORY[0x277D333B0], v0);
  v6 = sub_2206FA180(v4, v5, MEMORY[0x277D333B8], &qword_27CF58EE8, MEMORY[0x277D333B8]);

  (*(v1 + 8))(v4, v0);
  result = 0;
  if (v6)
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v10 = sub_220884CAC();

    return v10;
  }

  return result;
}

uint64_t sub_2206FA6BC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t type metadata accessor for OfflineAlertable()
{
  result = qword_27CF58ED0;
  if (!qword_27CF58ED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2206FA808()
{
  result = sub_22089030C();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2206FA874(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_2206FA8BC()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {

    sub_220886DEC();
  }

  return result;
}

uint64_t sub_2206FA928()
{
  sub_22088973C();
  sub_22048CFC4(&qword_27CF58EF8, 255, MEMORY[0x277D68740]);
  memset(v1, 0, sizeof(v1));
  sub_220886F3C();
  return sub_22056D130(v1);
}

uint64_t IdentificationResetManager.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return v0;
}

uint64_t IdentificationResetManager.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

void sub_2206FAABC()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();
  v4 = v3;

  qword_2812B6A48 = v2;
  unk_2812B6A50 = v4;
}

uint64_t sub_2206FAB88(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_2206C1FA0(sub_2204CB288, v4);
}

void sub_2206FACA8(void *a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v52 = a3;
  v51 = a2;
  v4 = sub_22088F11C();
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v56 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_22088F14C();
  v55 = *(v57 - 8);
  MEMORY[0x28223BE20](v57, v7);
  v53 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_22088F17C();
  v9 = *(v54 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v54, v11);
  v12 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v60 = v48 - v15;
  MEMORY[0x28223BE20](v16, v17);
  v59 = v48 - v18;
  v19 = sub_22088CC6C();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22089132C();
  v25 = [a1 objectForKey_];

  if (v25)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v67 = 0u;
    v68 = 0u;
  }

  aBlock = v67;
  v64 = v68;
  if (*(&v68 + 1))
  {
    v50 = v20;
    sub_22044D56C(0, &qword_27CF56C10);
    if (swift_dynamicCast())
    {
      v26 = v61;
      v27 = [v61 isCollapsed];

      if (v27)
      {
        v28 = sub_22089132C();
        v29 = [a1 objectForKey_];

        if (!v29)
        {
          goto LABEL_13;
        }

        sub_2208923BC();
        swift_unknownObjectRelease();
        sub_2204A62A4(&v67, &aBlock);
        sub_22056D25C();
        swift_dynamicCast();
        v30 = v61;
        v49 = v62;
        v48[1] = swift_getObjectType();
        v31 = v50;
        (*(v50 + 104))(v23, *MEMORY[0x277D6E258], v19);
        sub_22088D08C();

        (*(v31 + 8))(v23, v19);
      }
    }
  }

  else
  {
    sub_22056D130(&aBlock);
  }

  v50 = v4;
  v32 = sub_22089132C();
  v33 = [a1 objectForKey_];

  if (v33)
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
    sub_2204A62A4(&v67, &aBlock);
    type metadata accessor for TickerViewController();
    swift_dynamicCast();
    v49 = v61;
    sub_22088C71C();
    v34 = sub_22088BFCC();

    v35 = swift_allocObject();
    *(v35 + 16) = v51;
    *(v35 + 24) = v52;

    v36 = v59;
    sub_22088F15C();
    sub_22044D56C(0, &qword_28127E7C0);
    v51 = sub_220891D0C();
    sub_22088F16C();
    sub_22088F18C();
    v52 = *(v9 + 8);
    v37 = v54;
    v52(v12, v54);
    (*(v9 + 16))(v12, v36, v37);
    v38 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = 0x3FF0000000000000;
    *(v39 + 24) = 1;
    *(v39 + 32) = v34;
    *(v39 + 40) = sub_2206FB520;
    *(v39 + 48) = v35;
    (*(v9 + 32))(v39 + v38, v12, v37);
    v65 = sub_22056D194;
    v66 = v39;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v64 = sub_2204C35E8;
    *(&v64 + 1) = &block_descriptor_33;
    v40 = _Block_copy(&aBlock);
    v41 = v34;

    v42 = v53;
    sub_22088F13C();
    *&aBlock = MEMORY[0x277D84F90];
    sub_22046275C(&qword_281296CA0, MEMORY[0x277D85198]);
    sub_22056D204();
    sub_22046275C(&qword_28127EA50, sub_22056D204);
    v43 = v56;
    v44 = v50;
    sub_2208923FC();
    v45 = v60;
    v46 = v51;
    MEMORY[0x223D89E80](v60, v42, v43, v40);
    _Block_release(v40);

    (*(v58 + 8))(v43, v44);
    (*(v55 + 8))(v42, v57);
    v47 = v52;
    v52(v45, v37);
    v47(v59, v37);
    return;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t BilingualFeedAlert.title.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t BilingualFeedAlert.message.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  sub_220884CAC();

  v2 = sub_22089139C();

  return v2;
}

uint64_t BilingualFeedAlert.preferredActionButton.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD08];
  v3 = sub_22088C07C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t BilingualFeedAlert.rejectButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t BilingualFeedAlert.acceptButton.getter()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2206FB920()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2206FB9D8()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2206FBAD8()
{
  v1 = v0;
  sub_22084B0B0();
  v2 = v0[8];
  v3 = objc_allocWithZone(MEMORY[0x277D75348]);
  v2;
  [v3 initWithRed:0.431372549 green:0.431372549 blue:0.431372549 alpha:1.0];
  v4 = v1[3];
  v5 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  (*(v5 + 32))(v4, v5);
  v6 = v1[3];
  v7 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v6);
  (*(v7 + 32))(v6, v7);
  LOBYTE(v3) = sub_22088F0DC();
  v8 = objc_opt_self();
  v9 = &selRef_tertiarySystemFillColor;
  if ((v3 & 1) == 0)
  {
    v9 = &selRef_secondarySystemFillColor;
  }

  v10 = [v8 *v9];
  v12 = v1[3];
  v11 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v12);
  (*(v11 + 24))(v12, v11);
  v13 = objc_opt_self();
  v14 = [v13 systemRedColor];
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.882352941 green:0.647058824 blue:0.0 alpha:1.0];
  [v13 systemBlueColor];
  [objc_allocWithZone(MEMORY[0x277D75348]) initWithRed:0.960784314 green:0.62745098 blue:0.0901960784 alpha:1.0];
  return sub_22089071C();
}

uint64_t sub_2206FBD28(uint64_t a1)
{
  sub_220452A8C();
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8, v9);
  v11 = v20 - v10;
  v12 = type metadata accessor for ForYouFeedGroupConfig();
  MEMORY[0x28223BE20](v12, v13);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22052C670(a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    result = sub_22089267C();
    __break(1u);
  }

  else
  {
    v16 = *(v4 + 32);
    v16(v11, v15, v3);
    (*(v4 + 16))(v7, v11, v3);
    type metadata accessor for StubStockForYouFeedGroupEmitter();
    v17 = swift_allocObject();
    v16((v17 + OBJC_IVAR____TtC8StocksUI31StubStockForYouFeedGroupEmitter_config), v7, v3);
    v20[1] = v17;
    sub_2206FBFAC();
    swift_allocObject();
    sub_2205028AC(&qword_27CF58F00, type metadata accessor for StubStockForYouFeedGroupEmitter);
    v18 = sub_22088F53C();
    (*(v4 + 8))(v11, v3);
    return v18;
  }

  return result;
}

void sub_2206FBFAC()
{
  if (!qword_281296BC8)
  {
    type metadata accessor for ForYouFeedServiceConfig();
    sub_2205028AC(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
    v0 = sub_22088F54C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296BC8);
    }
  }
}

uint64_t sub_2206FC050(uint64_t a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v4 = v3;
  v97 = a3;
  v98 = a2;
  v6 = sub_22088B64C();
  v85 = *(v6 - 8);
  v86 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v84 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D5AC(0, &qword_281297840, MEMORY[0x277D6DF88]);
  v95 = *(v9 - 8);
  v96 = v9;
  MEMORY[0x28223BE20](v9, v10);
  v12 = (&v76 - v11);
  sub_22051DA14();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v83 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for ForYouFeedModel();
  MEMORY[0x28223BE20](v94, v16);
  v81 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = type metadata accessor for ForYouFeedSectionDescriptor();
  MEMORY[0x28223BE20](v91, v18);
  v87 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_22089030C();
  v92 = *(v20 - 8);
  v93 = v20;
  MEMORY[0x28223BE20](v20, v21);
  v90 = &v76 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D5AC(0, &qword_281296EA0, MEMORY[0x277D6EC60]);
  v24 = v23;
  v89 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v25);
  v88 = &v76 - v26;
  sub_22052C100(0);
  MEMORY[0x28223BE20](v27 - 8, v28);
  v30 = &v76 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22051D5AC(0, &qword_281297E60, MEMORY[0x277D6D710]);
  v32 = v31;
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v34);
  v82 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v37);
  v39 = &v76 - v38;
  v80 = *(v4 + 32);
  v40 = v24;
  v41 = a1;
  sub_22088E76C();
  v42 = v32;
  if ((*(v33 + 48))(v30, 1, v32) == 1)
  {
    sub_2206FCDD4(v30);
    sub_2206FCE30();
    *v12 = swift_allocError();
    v44 = v95;
    v43 = v96;
    (*(v95 + 104))(v12, *MEMORY[0x277D6DF68], v96);
    v98(v12);
    return (*(v44 + 8))(v12, v43);
  }

  else
  {
    v79 = v12;
    v46 = v33;
    v47 = *(v33 + 32);
    v78 = v42;
    v47(v39, v30, v42);
    v48 = sub_22052C400();
    if (v49)
    {
      sub_2206FCE30();
      v50 = swift_allocError();
      v51 = v79;
      *v79 = v50;
      v53 = v95;
      v52 = v96;
      (*(v95 + 104))(v51, *MEMORY[0x277D6DF68], v96);
      v98(v51);
      (*(v53 + 8))(v51, v52);
      return (*(v33 + 8))(v39, v78);
    }

    else
    {
      v54 = v48;
      v55 = *(v89 + 16);
      v77 = v40;
      v55(v88, v41, v40);
      v56 = v90;
      sub_2206FCA04(v54, v90);
      swift_storeEnumTagMultiPayload();
      sub_2206FCE84();
      sub_22051D97C();
      v58 = v57;
      v59 = swift_allocObject();
      *(v59 + 16) = xmmword_220899360;
      sub_220458918();
      v61 = *(v60 + 48);
      v62 = v81;
      v100 = v80;
      *v81 = v80;
      (*(v92 + 16))(&v62[v61], v56, v93);
      v80 = v41;
      swift_storeEnumTagMultiPayload();
      sub_2206FCEDC(&v100, v99);
      sub_22044E2D4(&unk_281293320, type metadata accessor for ForYouFeedModel);
      sub_22088AD7C();
      v63 = sub_22044E2D4(&qword_281297F68, sub_22051D97C);
      v64 = sub_22044E2D4(&qword_281297F70, sub_22051D97C);
      MEMORY[0x223D80A10](v59, v58, v63, v64);
      sub_22044E2D4(&unk_281288490, type metadata accessor for ForYouFeedSectionDescriptor);
      v65 = v82;
      sub_22088B29C();
      v66 = v88;
      sub_22088E75C();
      v67 = *MEMORY[0x277D6D868];
      v68 = v85;
      v69 = v86;
      v70 = *(v85 + 104);
      v87 = v39;
      v71 = v84;
      v70(v84, v67, v86);
      sub_22044E2D4(&unk_281288480, type metadata accessor for ForYouFeedSectionDescriptor);
      v72 = v79;
      v73 = v66;
      sub_22088C67C();
      (*(v68 + 8))(v71, v69);
      v98(v72);
      (*(v95 + 8))(v72, v96);
      v74 = *(v46 + 8);
      v75 = v78;
      v74(v65, v78);
      (*(v92 + 8))(v90, v93);
      (*(v89 + 8))(v73, v77);
      return (v74)(v87, v75);
    }
  }
}

uint64_t sub_2206FCA04@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_22089030C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v27 - v11;
  sub_2206FCF38();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220714428(v16);
  sub_2205E9E2C();
  v18 = v17;
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) == 1)
  {
    if (a1)
    {
      if (qword_28128CC50 != -1)
      {
        swift_once();
      }

      v19 = qword_2812B6A58;
    }

    else
    {
      if (qword_28128CC70 != -1)
      {
        swift_once();
      }

      v19 = qword_2812B6A88;
    }

    v25 = __swift_project_value_buffer(v4, v19);
    return (*(v5 + 16))(a2, v25, v4);
  }

  else
  {
    v20 = *(v18 + 48);
    v21 = *(v5 + 32);
    v21(v12, v16, v4);
    v21(v8, &v16[v20], v4);
    v22 = *(v5 + 8);
    if (a1)
    {
      v22(v12, v4);
      v23 = a2;
      v24 = v8;
    }

    else
    {
      v22(v8, v4);
      v23 = a2;
      v24 = v12;
    }

    return (v21)(v23, v24, v4);
  }
}

unint64_t sub_2206FCCF0()
{
  result = qword_281283998;
  if (!qword_281283998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281283998);
  }

  return result;
}

uint64_t sub_2206FCDD4(uint64_t a1)
{
  sub_22052C100(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2206FCE30()
{
  result = qword_2812839A8[0];
  if (!qword_2812839A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2812839A8);
  }

  return result;
}

void sub_2206FCE84()
{
  if (!qword_28127E0F0)
  {
    sub_22051D97C();
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E0F0);
    }
  }
}

void sub_2206FCF38()
{
  if (!qword_281290BC8[0])
  {
    sub_22048A188();
    sub_22048A1DC();
    v0 = type metadata accessor for DualOfflineManager.State();
    if (!v1)
    {
      atomic_store(v0, qword_281290BC8);
    }
  }
}

unint64_t sub_2206FCFC8()
{
  result = qword_27CF58F08;
  if (!qword_27CF58F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF58F08);
  }

  return result;
}

uint64_t sub_2206FD01C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_22046DA2C(a1, v6);
  v3 = type metadata accessor for OnboardingModule();
  v4 = swift_allocObject();
  result = sub_220457328(v6, v4 + 16);
  a2[3] = v3;
  a2[4] = &off_2834166F0;
  *a2 = v4;
  return result;
}

uint64_t sub_2206FD08C()
{
  v0 = sub_220888D5C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088CB0C();
  sub_220888BDC();

  sub_220446A58(0, &qword_281299738);
  sub_220888BEC();
  (*(v1 + 104))(v4, *MEMORY[0x277D6CF00], v0);
  sub_2208882DC();

  (*(v1 + 8))(v4, v0);
  sub_220446A58(0, &qword_281299740);
  sub_220888BEC();
}

uint64_t sub_2206FD258(void *a1)
{
  v2 = sub_22088D77C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088C8AC();
  MEMORY[0x28223BE20](v7 - 8, v8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, qword_281282858);
  result = sub_2208884DC();
  if (v19)
  {
    sub_220457328(&v18, v21);
    v10 = *__swift_project_boxed_opaque_existential_1(v21, v21[3]);
    (*(v3 + 104))(v6, *MEMORY[0x277D6E808], v2);
    v11 = sub_22088DDAC();
    swift_allocObject();
    v12 = sub_22088DD9C();
    LOBYTE(v10) = *(v10 + 16);
    v19 = v11;
    v20 = MEMORY[0x277D6EA48];
    *&v18 = v12;
    v13 = type metadata accessor for OnboardingPersonalizedAdsStep();
    v14 = swift_allocObject();
    *(v14 + 57) = 2;
    *(v14 + 64) = xmmword_2208AAFC0;
    *(v14 + 88) = 0;
    *(v14 + 96) = 0;
    *(v14 + 80) = 1;
    sub_220457328(&v18, v14 + 16);
    *(v14 + 56) = v10;
    sub_22046F118();
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_220899360;
    *(v15 + 56) = v13;
    *(v15 + 64) = sub_2206FD864(qword_2812864D8, type metadata accessor for OnboardingPersonalizedAdsStep);
    *(v15 + 32) = v14;
    sub_22088C89C();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220446A58(0, &qword_281299738);
    result = sub_2208884DC();
    if (v18)
    {
      v16 = objc_allocWithZone(sub_22088CB0C());
      v17 = sub_22088CADC();
      __swift_destroy_boxed_opaque_existential_1(v21);
      return v17;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2206FD570@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_220446A58(0, &qword_281299740);
  result = sub_2208884DC();
  if (v22)
  {
    v4 = __swift_mutable_project_boxed_opaque_existential_1(v21, v22);
    MEMORY[0x28223BE20](v4, v4);
    v6 = (&v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v7 + 16))(v6);
    v8 = *v6;
    v9 = type metadata accessor for OnboardingTracker();
    v20[3] = v9;
    v20[4] = &off_283424DD0;
    v20[0] = v8;
    type metadata accessor for OnboardingInteractor();
    v10 = swift_allocObject();
    v11 = __swift_mutable_project_boxed_opaque_existential_1(v20, v9);
    MEMORY[0x28223BE20](v11, v11);
    v13 = (&v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v18 = v9;
    v19 = &off_283424DD0;
    *&v17 = v15;
    sub_22088515C();
    sub_220457328(&v17, v10 + 16);
    __swift_destroy_boxed_opaque_existential_1(v20);
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = sub_2206FD864(qword_281299748, type metadata accessor for OnboardingInteractor);
    *a2 = v10;
    a2[1] = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206FD7DC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22088731C();
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    v5 = type metadata accessor for OnboardingTracker();
    result = swift_allocObject();
    *(result + 16) = v4;
    a2[3] = v5;
    a2[4] = &off_283424DD0;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2206FD864(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for ForYouFeedRouteModel()
{
  result = qword_2812997C0;
  if (!qword_2812997C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206FD8F8()
{
  type metadata accessor for StocksActivity.Article(319);
  if (v0 <= 0x3F)
  {
    sub_22047C320(319);
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t type metadata accessor for StockFeedChartUpdateBlueprintModifier()
{
  result = qword_281281350;
  if (!qword_281281350)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2206FD9E4()
{
  sub_2207009E8(319, &unk_2812990E0, MEMORY[0x277D697C0]);
  if (v0 <= 0x3F)
  {
    sub_220885D4C();
    if (v1 <= 0x3F)
    {
      sub_2206CAE24();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_2206FDAAC(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v40 = a3;
  v41 = a2;
  v4 = sub_22088B64C();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v32 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220700738(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7, v8);
  v37 = &v31 - v9;
  sub_220587530();
  MEMORY[0x28223BE20](v10 - 8, v11);
  sub_220700738(0, &unk_281296F10, MEMORY[0x277D6EC60]);
  v36 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v13);
  v15 = &v31 - v14;
  v42 = v16;
  sub_22088E6FC();
  v35 = v3;
  v44 = v3;
  v17 = sub_2205727A4(sub_22070082C, v43);
  sub_22055CE80(0);
  v19 = v18;
  v20 = sub_2207009A0(&qword_281297DF8, sub_22055CE80);
  v21 = sub_2207009A0(&qword_281297E00, sub_22055CE80);
  MEMORY[0x223D80A20](v17, v19, v20, v21);
  type metadata accessor for StockFeedSectionDescriptor();
  type metadata accessor for StockFeedModel();
  sub_2207009A0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
  sub_2207009A0(&qword_281293DD0, type metadata accessor for StockFeedModel);
  sub_22088E6EC();
  v22 = sub_220577460();
  sub_22088FA1C();
  sub_22088FA0C();
  type metadata accessor for StockFeedServiceConfig();
  sub_2207009A0(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
  v23 = sub_22088F9EC();

  v24 = 0;
  if (v23)
  {
    v24 = sub_22088F45C();
  }

  else
  {
    v46 = 0;
    v47 = 0;
  }

  v45 = v23;
  v48 = v24;
  sub_22088E7BC();
  sub_22062782C(v22);
  updated = type metadata accessor for StockFeedChartUpdateBlueprintModifier();
  __swift_project_boxed_opaque_existential_1((v35 + *(updated + 28)), *(v35 + *(updated + 28) + 24));
  if (sub_22088618C())
  {
    v26 = v37;
    sub_22088C66C();
  }

  else
  {
    v28 = v32;
    v27 = v33;
    v29 = v34;
    (*(v33 + 104))(v32, *MEMORY[0x277D6D868], v34);
    sub_2207009A0(&unk_281288C00, type metadata accessor for StockFeedSectionDescriptor);
    v26 = v37;
    sub_22088C67C();
    (*(v27 + 8))(v28, v29);
  }

  v41(v26);
  (*(v38 + 8))(v26, v39);
  return (*(v36 + 8))(v15, v42);
}

uint64_t sub_2206FE060(uint64_t a1, uint64_t a2)
{
  sub_22055D524();
  MEMORY[0x28223BE20](v3 - 8, v4);
  v5 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v5, v6);
  sub_2206FE2A4(&v14[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)]);
  v15 = a2;
  v8 = sub_220572464(sub_22070084C, v14);
  sub_22055D328();
  v10 = v9;
  v11 = sub_2207009A0(&qword_281297FB8, sub_22055D328);
  v12 = sub_2207009A0(&qword_281297FC0, sub_22055D328);
  MEMORY[0x223D80A20](v8, v10, v11, v12);
  type metadata accessor for StockFeedModel();
  sub_2207009A0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
  sub_2207009A0(&qword_281293DD0, type metadata accessor for StockFeedModel);
  return sub_22088B29C();
}

uint64_t sub_2206FE2A4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v10, v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CE80(0);
  sub_22088B2AC();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_220700938(v13, v9, type metadata accessor for StockFeedMastheadModel);
      sub_2206FE4A8(v9, v5);
      sub_22070086C(v9, type metadata accessor for StockFeedMastheadModel);
      sub_220700938(v5, a1, type metadata accessor for StockFeedMastheadModel);
      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 1)
    {

      sub_220459628();
      sub_22051F318(&v13[*(v16 + 64)], &qword_281296C60, MEMORY[0x277D31C50]);
    }

    else
    {
      sub_22070086C(v13, type metadata accessor for StockFeedSectionDescriptor);
    }
  }

  return sub_22088B2AC();
}

uint64_t sub_2206FE4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v253 = a2;
  v244 = sub_2208852DC();
  v235 = *(v244 - 8);
  MEMORY[0x28223BE20](v244, v3);
  v243 = &v204[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v232 = sub_2208857EC();
  v231 = *(v232 - 8);
  MEMORY[0x28223BE20](v232, v5);
  v230 = &v204[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2207009E8(0, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v208 = &v204[-v9];
  sub_2207009E8(0, qword_281294018, type metadata accessor for PriceViewModel);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v207 = &v204[-v12];
  v237 = sub_22088699C();
  v241 = *(v237 - 8);
  MEMORY[0x28223BE20](v237, v13);
  v252 = &v204[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v15, v16);
  v238 = &v204[-v17];
  v236 = type metadata accessor for PriceViewModel();
  v206 = *(v236 - 8);
  MEMORY[0x28223BE20](v236, v18);
  v216 = &v204[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v242 = type metadata accessor for QuoteViewModel();
  v229 = *(v242 - 8);
  MEMORY[0x28223BE20](v242, v20);
  v217 = &v204[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2207009E8(0, qword_281293F78, type metadata accessor for QuoteViewModel);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v215 = &v204[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v25, v26);
  v222 = &v204[-v27];
  v240 = sub_22088676C();
  v239 = *(v240 - 8);
  MEMORY[0x28223BE20](v240, v28);
  v221 = &v204[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v233 = type metadata accessor for QuoteSummaryViewModel();
  MEMORY[0x28223BE20](v233, v30);
  v234 = &v204[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v32 = sub_2208854FC();
  v250 = *(v32 - 8);
  v251 = v32;
  MEMORY[0x28223BE20](v32, v33);
  v212 = &v204[-((v34 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v35, v36);
  v248 = &v204[-v37];
  v259 = sub_220885D4C();
  v255 = *(v259 - 8);
  MEMORY[0x28223BE20](v259, v38);
  v214 = &v204[-((v39 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v40, v41);
  v254 = &v204[-v42];
  MEMORY[0x28223BE20](v43, v44);
  v257 = &v204[-v45];
  v246 = MEMORY[0x277D697C0];
  sub_2207009E8(0, &unk_2812990E0, MEMORY[0x277D697C0]);
  MEMORY[0x28223BE20](v46 - 8, v47);
  v256 = &v204[-((v48 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v49, v50);
  v52 = &v204[-v51];
  v249 = &v204[-v51];
  v53 = MEMORY[0x277D697F8];
  v218 = MEMORY[0x277D697F8];
  sub_2207009E8(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v54 - 8, v55);
  v213 = &v204[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v57, v58);
  v211 = &v204[-v59];
  MEMORY[0x28223BE20](v60, v61);
  v210 = &v204[-v62];
  MEMORY[0x28223BE20](v63, v64);
  v209 = &v204[-v65];
  MEMORY[0x28223BE20](v66, v67);
  v220 = &v204[-v68];
  MEMORY[0x28223BE20](v69, v70);
  v219 = &v204[-v71];
  MEMORY[0x28223BE20](v72, v73);
  v247 = &v204[-v74];
  MEMORY[0x28223BE20](v75, v76);
  v78 = &v204[-v77];
  v79 = sub_22088685C();
  v80 = *(v79 - 8);
  MEMORY[0x28223BE20](v79, v81);
  v258 = &v204[-((v82 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v85 = MEMORY[0x28223BE20](v83, v84);
  v87 = &v204[-v86];
  v225 = v80;
  v224 = *(v80 + 16);
  v224(&v204[-v86], a1, v79, v85);
  v88 = type metadata accessor for StockFeedMastheadModel();
  sub_2204B2AA8(a1 + v88[5], v78, &qword_2812990C0, v53);
  updated = type metadata accessor for StockFeedChartUpdateBlueprintModifier();
  v90 = v228;
  sub_2204B2AA8(v228 + updated[5], v52, &unk_2812990E0, v246);
  v91 = updated[6];
  v92 = (v255 + 16);
  v245 = *(v255 + 16);
  v245(v257, v90 + v91, v259);
  v227 = *(a1 + v88[8]);
  __swift_project_boxed_opaque_existential_1((v90 + updated[7]), *(v90 + updated[7] + 24));
  v205 = sub_2208861AC();
  v93 = v253;
  v94 = v224;
  (v224)(v253, v87, v79);
  v95 = v218;
  sub_2204B2AA8(v78, v93 + v88[5], &qword_2812990C0, v218);
  v228 = v88;
  v96 = v93 + v88[6];
  v97 = v249;
  v98 = v246;
  sub_2204B2AA8(v249, v96, &unk_2812990E0, v246);
  v223 = v87;
  v226 = v79;
  v94(v258, v87, v79);
  v224 = v78;
  v99 = v247;
  sub_2204B2AA8(v78, v247, &qword_2812990C0, v95);
  sub_2204B2AA8(v97, v256, &unk_2812990E0, v98);
  v246 = v92;
  v245(v254, v257, v259);
  sub_220886BCC();
  sub_220886BAC();
  if (qword_281298FA8 != -1)
  {
    swift_once();
  }

  v100 = v248;
  sub_220886B9C();

  v101 = v99;
  v102 = v219;
  sub_2204B2AA8(v101, v219, &qword_2812990C0, MEMORY[0x277D697F8]);
  v103 = v239;
  v104 = *(v239 + 48);
  v105 = v240;
  if (v104(v102, 1, v240) == 1)
  {
    v106 = MEMORY[0x277D697F8];
    sub_22051F318(v102, &qword_2812990C0, MEMORY[0x277D697F8]);
    v107 = v220;
    (*(v103 + 56))(v220, 1, 1, v105);
    sub_2208867CC();
    v108 = v209;
    sub_2204B2AA8(v107, v209, &qword_2812990C0, v106);
    v109 = v104(v108, 1, v105);
    v110 = v241;
    if (v109 == 1)
    {
      sub_22051F318(v108, &qword_2812990C0, MEMORY[0x277D697F8]);
      v246 = 0;
      LODWORD(v245) = 1;
    }

    else
    {
      v246 = sub_22088675C();
      LODWORD(v245) = v129;
      (*(v103 + 8))(v108, v105);
    }

    v130 = v213;
    v131 = v211;
    v132 = v210;
    sub_2204B2AA8(v107, v210, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v104(v132, 1, v105) == 1)
    {
      sub_22051F318(v132, &qword_2812990C0, MEMORY[0x277D697F8]);
      v222 = 0;
      LODWORD(v221) = 1;
    }

    else
    {
      v222 = sub_22088666C();
      LODWORD(v221) = v134;
      (*(v103 + 8))(v132, v105);
    }

    sub_2204B2AA8(v107, v131, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v104(v131, 1, v105) == 1)
    {
      sub_22051F318(v131, &qword_2812990C0, MEMORY[0x277D697F8]);
      v219 = 0;
      LODWORD(v218) = 1;
    }

    else
    {
      v219 = sub_22088671C();
      LODWORD(v218) = v135;
      (*(v103 + 8))(v131, v105);
    }

    sub_2204B2AA8(v107, v130, &qword_2812990C0, MEMORY[0x277D697F8]);
    if (v104(v130, 1, v105) == 1)
    {
      sub_22051F318(v130, &qword_2812990C0, MEMORY[0x277D697F8]);
      v215 = 0;
      v214 = 0;
    }

    else
    {
      v215 = sub_22088668C();
      v214 = v136;
      (*(v103 + 8))(v130, v105);
    }

    v137 = *(v110 + 16);
    v138 = v252;
    v139 = v237;
    v137(v252, v238, v237);
    v140 = v231;
    v141 = v230;
    v142 = v232;
    (*(v231 + 104))(v230, *MEMORY[0x277D69288], v232);
    v143 = v110;
    v144 = v243;
    sub_22088524C();
    v145 = v216;
    *v216 = v246;
    *(v145 + 8) = v245 & 1;
    *(v145 + 16) = v222;
    *(v145 + 24) = v221 & 1;
    *(v145 + 32) = v219;
    *(v145 + 40) = v218 & 1;
    v146 = v214;
    *(v145 + 48) = v215;
    *(v145 + 56) = v146;
    v147 = v138;
    v148 = v236;
    v137((v145 + *(v236 + 40)), v147, v139);
    *(v145 + 64) = 9666786;
    *(v145 + 72) = 0xA300000000000000;
    (*(v140 + 16))(v145 + *(v148 + 36), v141, v142);
    v149 = *(v148 + 44);
    v150 = v235;
    (*(v235 + 16))(v145 + v149, v144, v244);
    if (qword_281294078 != -1)
    {
      swift_once();
    }

    v246 = qword_2812B6B48;
    (*(v140 + 8))(v141, v142);
    v151 = *(v143 + 8);
    v151(v252, v139);
    v151(v238, v139);
    v152 = MEMORY[0x277D697F8];
    sub_22051F318(v220, &qword_2812990C0, MEMORY[0x277D697F8]);
    (*(v250 + 8))(v248, v251);
    v153 = MEMORY[0x277D697C0];
    sub_22051F318(v256, &unk_2812990E0, MEMORY[0x277D697C0]);
    sub_22051F318(v247, &qword_2812990C0, v152);
    v154 = *(v225 + 8);
    v155 = v226;
    v154(v258, v226);
    v156 = v255;
    (*(v255 + 8))(v257, v259);
    sub_22051F318(v249, &unk_2812990E0, v153);
    sub_22051F318(v224, &qword_2812990C0, v152);
    v154(v223, v155);
    v157 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
    v158 = v246;
    swift_beginAccess();
    (*(v150 + 40))(v158 + v157, v243, v244);
    swift_endAccess();
    v159 = v242;
    v160 = *(v242 + 24);
    v161 = type metadata accessor for QuoteSummaryTimeRange();
    v162 = v217;
    (*(*(v161 - 8) + 56))(&v217[v160], 1, 1, v161);
    sub_220700938(v145, v162, type metadata accessor for PriceViewModel);
    (*(v156 + 32))(v162 + *(v159 + 20), v254, v259);
    v163 = v234;
    (*(v229 + 56))(v234 + *(v233 + 20), 1, 1, v159);
    sub_220700938(v162, v163, type metadata accessor for QuoteViewModel);
    goto LABEL_32;
  }

  v111 = v221;
  (*(v103 + 32))(v221, v102, v105);
  v112 = sub_220656950(v100, v111, v256);
  v220 = v113;
  LODWORD(v219) = v114;
  v115 = v250;
  v116 = v212;
  (*(v250 + 104))(v212, *MEMORY[0x277D69120], v251, v112);
  sub_2207009A0(&qword_281299398, MEMORY[0x277D69160]);
  sub_22089167C();
  sub_22089167C();
  v117 = v241;
  if (v262 == v260 && v263 == v261)
  {
    v118 = 1;
  }

  else
  {
    v118 = sub_2208928BC();
  }

  v119 = v252;
  v120 = v214;
  v238 = *(v115 + 8);
  (v238)(v116, v251);

  v250 = v115 + 8;
  if (v118)
  {
    sub_2208867CC();
    v121 = v205;
    v122 = v207;
    sub_22069DDE0(v119, v205 & 1, v207);
    (*(v117 + 8))(v119, v237);
    v123 = v259;
    v245(v120, v254, v259);
    v124 = v208;
    sub_22069E5AC(v121 & 1, v208);
    v125 = (*(v206 + 48))(v122, 1, v236);
    v126 = v222;
    if (v125 != 1)
    {
      v133 = v215;
      sub_220700938(v122, v215, type metadata accessor for PriceViewModel);
      v164 = v242;
      (*(v255 + 32))(&v133[*(v242 + 20)], v120, v123);
      sub_2207008CC(v124, &v133[*(v164 + 24)], &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
      v128 = v164;
      v127 = 0;
      goto LABEL_29;
    }

    sub_22051F318(v124, &qword_28128D978, type metadata accessor for QuoteSummaryTimeRange);
    (*(v255 + 8))(v120, v123);
    sub_22051F318(v122, qword_281294018, type metadata accessor for PriceViewModel);
    v127 = 1;
    v128 = v242;
  }

  else
  {
    v127 = 1;
    v128 = v242;
    v126 = v222;
  }

  v133 = v215;
LABEL_29:
  (*(v229 + 56))(v133, v127, 1, v128);
  sub_2207008CC(v133, v126, qword_281293F78, type metadata accessor for QuoteViewModel);
  v165 = sub_22088675C();
  LODWORD(v229) = v166;
  v167 = sub_22088671C();
  v169 = v168;
  v170 = sub_22088668C();
  v172 = v171;
  sub_2208867CC();
  v173 = v231;
  v174 = v230;
  v175 = v232;
  (*(v231 + 104))(v230, *MEMORY[0x277D69288], v232);
  v176 = v243;
  sub_22088524C();
  v177 = v234;
  *v234 = v165;
  *(v177 + 8) = v229 & 1;
  v177[2] = v220;
  *(v177 + 24) = v219 & 1;
  v177[4] = v167;
  v178 = v169 & 1;
  v163 = v177;
  *(v177 + 40) = v178;
  v177[6] = v170;
  v177[7] = v172;
  v179 = v176;
  v180 = v175;
  v181 = v236;
  v182 = v241;
  v183 = v119;
  v184 = v179;
  v185 = v237;
  (*(v241 + 16))(v177 + *(v236 + 40), v183, v237);
  *(v163 + 64) = 9666786;
  *(v163 + 72) = 0xA300000000000000;
  (*(v173 + 16))(v163 + *(v181 + 36), v174, v180);
  v186 = v235;
  v187 = v244;
  (*(v235 + 16))(v163 + *(v181 + 44), v184, v244);
  if (qword_281294078 != -1)
  {
    swift_once();
  }

  v188 = qword_2812B6B48;
  (*(v173 + 8))(v174, v180);
  (*(v182 + 8))(v252, v185);
  v189 = OBJC_IVAR____TtC8StocksUI14PriceFormatter_locale;
  swift_beginAccess();
  (*(v186 + 40))(v188 + v189, v184, v187);
  swift_endAccess();
  v190 = v242;
  v191 = v254;
  v192 = v259;
  v245((v163 + *(v242 + 20)), v254, v259);
  v193 = v163 + *(v190 + 24);
  v194 = v248;
  v195 = v221;
  sub_22069E834(v248, v193);
  (*(v239 + 8))(v195, v240);
  (v238)(v194, v251);
  v196 = *(v255 + 8);
  v196(v191, v192);
  v197 = MEMORY[0x277D697C0];
  sub_22051F318(v256, &unk_2812990E0, MEMORY[0x277D697C0]);
  v198 = MEMORY[0x277D697F8];
  sub_22051F318(v247, &qword_2812990C0, MEMORY[0x277D697F8]);
  v199 = *(v225 + 8);
  v200 = v226;
  v199(v258, v226);
  v196(v257, v192);
  sub_22051F318(v249, &unk_2812990E0, v197);
  sub_22051F318(v224, &qword_2812990C0, v198);
  v199(v223, v200);
  sub_2207008CC(v222, v163 + *(v233 + 20), qword_281293F78, type metadata accessor for QuoteViewModel);
LABEL_32:
  v201 = v228;
  v202 = v253;
  result = sub_220700938(v163, v253 + v228[7], type metadata accessor for QuoteSummaryViewModel);
  *(v202 + v201[8]) = v227;
  return result;
}

uint64_t sub_2206FFFC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v58 = a2;
  v60 = a3;
  sub_2207009E8(0, &qword_281299370, MEMORY[0x277D69178]);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v56 = &v53 - v6;
  sub_2207009E8(0, &qword_2812990C0, MEMORY[0x277D697F8]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v53 - v9;
  v11 = sub_22088685C();
  v57 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v12);
  v14 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for StockFeedMastheadModel();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v19, v20);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v26 = &v53 - v25;
  sub_22055D328();
  v59 = v27;
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    v55 = v22;
    v32 = v57;
    if (EnumCaseMultiPayload <= 1)
    {
      sub_220700938(v26, v18, type metadata accessor for StockFeedMastheadModel);
      sub_2206FE4A8(v18, v55);
      swift_storeEnumTagMultiPayload();
      sub_2207009A0(&qword_281293DD0, type metadata accessor for StockFeedModel);
      sub_22088AD7C();
      return sub_22070086C(v18, type metadata accessor for StockFeedMastheadModel);
    }

    if (EnumCaseMultiPayload == 2)
    {
      (*(v57 + 8))(v26, v11);
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v59 = v19;
        sub_2204597F0();
        v34 = v33;
        v35 = *(v33 + 48);
        v36 = *(v33 + 64);
        v37 = v32;
        v38 = *(v32 + 32);
        v39 = v14;
        v53 = v11;
        v54 = v14;
        v38(v14, v26, v11);
        v40 = MEMORY[0x277D697F8];
        v41 = v10;
        sub_2207008CC(&v26[v35], v10, &qword_2812990C0, MEMORY[0x277D697F8]);
        v42 = MEMORY[0x277D69178];
        v43 = v56;
        sub_2207008CC(&v26[v36], v56, &qword_281299370, MEMORY[0x277D69178]);
        v44 = *(v34 + 48);
        v45 = *(v34 + 64);
        v46 = v55;
        v47 = v39;
        v48 = v53;
        (*(v37 + 16))(v55, v47, v53);
        sub_2204B2AA8(v41, v46 + v44, &qword_2812990C0, v40);
        sub_2204B2AA8(v43, v46 + v45, &qword_281299370, v42);
        swift_storeEnumTagMultiPayload();
        sub_2207009A0(&qword_281293DD0, type metadata accessor for StockFeedModel);
        sub_22088AD7C();
        sub_22051F318(v43, &qword_281299370, v42);
        sub_22051F318(v41, &qword_2812990C0, v40);
        return (*(v37 + 8))(v54, v48);
      }

      sub_22070086C(v26, type metadata accessor for StockEarningsModel);
    }

    v29 = v60;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload > 7)
  {
    v29 = v60;
    if (EnumCaseMultiPayload != 8)
    {
      v31 = v59;
      if (EnumCaseMultiPayload == 9)
      {
        v50 = v26;
        v51 = v59;
        sub_22070086C(v50, type metadata accessor for StockFeedModel);
        v31 = v51;
      }

      return (*(*(v31 - 8) + 16))(v29, a1);
    }

    sub_220459914();

    v52 = sub_22089030C();
    (*(*(v52 - 8) + 8))(v26, v52);
    goto LABEL_18;
  }

  v29 = v60;
  if (EnumCaseMultiPayload == 5)
  {
    sub_22070086C(v26, type metadata accessor for StockFeedModel);
LABEL_18:
    v31 = v59;
    return (*(*(v31 - 8) + 16))(v29, a1);
  }

  v30 = v59;
  sub_22070086C(v26, type metadata accessor for StockFeedModel);
  v31 = v30;
  return (*(*(v31 - 8) + 16))(v29, a1);
}

void sub_220700738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_2207009A0(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_2207009A0(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_22070086C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2207008CC(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  sub_2207009E8(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_220700938(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2207009A0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_2207009E8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22089230C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_220700A3C(uint64_t a1, uint64_t a2)
{
  v88 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_220705E20(0, &qword_27CF58F18, MEMORY[0x277D68340], MEMORY[0x277D83D88]);
  v79 = *(v4 - 8);
  v5 = *(v79 + 64);
  MEMORY[0x28223BE20](v4 - 8, v6);
  v81 = (&v73 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7, v8);
  v83 = (&v73 - v9);
  sub_220705E20(0, &unk_2812984A0, MEMORY[0x277D686A0], v3);
  v78 = *(v10 - 8);
  v11 = *(v78 + 64);
  MEMORY[0x28223BE20](v10 - 8, v12);
  v80 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v14);
  v82 = &v73 - v15;
  v86 = sub_22088A1FC();
  v16 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v17);
  v87 = v18;
  v90 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = sub_22088A2FC();
  v19 = *(v85 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x28223BE20](v85, v21);
  v22 = a2;
  v23 = sub_22088A2EC();
  v24 = sub_220791340(v23);
  v26 = v25;

  v84 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v26)
  {
    MEMORY[0x28223BE20](v27, v28);
    *(&v73 - 4) = v89;
    *(&v73 - 3) = v24;
    *(&v73 - 2) = v26;
    sub_22044826C();
    v80 = sub_220888FBC();

    v29 = v19;
    v30 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
    v31 = *(v19 + 16);
    v82 = v19 + 16;
    v83 = v31;
    v77 = v22;
    v32 = v20;
    v33 = v85;
    (v31)(v30, v22);
    v81 = *(v16 + 16);
    v34 = v86;
    v81(v90, v88, v86);
    v35 = *(v19 + 80);
    v36 = *(v16 + 80);
    v37 = (v35 + 24) & ~v35;
    v78 = v37;
    v79 = v35 | v36;
    v38 = (v32 + v36 + v37) & ~v36;
    v73 = v38;
    v39 = swift_allocObject();
    v40 = v89;
    *(v39 + 16) = v89;
    v76 = *(v29 + 32);
    v76(v39 + v37, v30, v33);
    v41 = v40;
    v75 = *(v16 + 32);
    v42 = v39 + v38;
    v43 = v90;
    v44 = v34;
    v75(v42, v90, v34);
    v45 = v41;

    v46 = sub_220888D9C();
    v74 = sub_220888E4C();

    v47 = v84;
    v48 = v33;
    v83(v84, v77, v33);
    v81(v43, v88, v44);
    v49 = v73;
    v50 = swift_allocObject();
    *(v50 + 16) = v45;
    v76(v50 + v78, v47, v48);
    v75(v50 + v49, v43, v44);

    v51 = sub_220888D9C();
    sub_220888E9C();
  }

  else
  {
    v53 = sub_2208895EC();
    v54 = v82;
    (*(*(v53 - 8) + 56))(v82, 1, 1, v53);
    v55 = sub_2208891DC();
    v56 = v83;
    (*(*(v55 - 8) + 56))(v83, 1, 1, v55);
    v57 = *(v89 + 16);
    v75 = MEMORY[0x277D686A0];
    v76 = v57;
    sub_220704280(v54, v80, &unk_2812984A0, MEMORY[0x277D686A0]);
    v74 = MEMORY[0x277D68340];
    sub_220704280(v56, v81, &qword_27CF58F18, MEMORY[0x277D68340]);
    v58 = v19;
    v59 = v85;
    (*(v19 + 16))(&v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0), v22, v85);
    v60 = v86;
    (*(v16 + 16))(v90, v88, v86);
    v61 = (*(v78 + 80) + 16) & ~*(v78 + 80);
    v62 = (v11 + *(v79 + 80) + v61) & ~*(v79 + 80);
    v63 = (v5 + *(v19 + 80) + v62) & ~*(v19 + 80);
    v64 = (v20 + *(v16 + 80) + v63) & ~*(v16 + 80);
    v65 = v60;
    v66 = (v87 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
    v67 = v16;
    v68 = swift_allocObject();
    v69 = v68 + v61;
    v70 = v75;
    sub_220704300(v80, v69, &unk_2812984A0, v75);
    v71 = v68 + v62;
    v72 = v74;
    sub_220704300(v81, v71, &qword_27CF58F18, v74);
    (*(v58 + 32))(v68 + v63, v84, v59);
    (*(v67 + 32))(v68 + v64, v90, v65);
    *(v68 + v66) = v89;

    sub_22088726C();

    sub_220704384(v83, &qword_27CF58F18, v72);
    return sub_220704384(v82, &unk_2812984A0, v70);
  }
}

uint64_t sub_220701268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v187 = a5;
  v196 = a4;
  v164 = a3;
  v163 = a2;
  v195 = a1;
  v5 = MEMORY[0x277D83D88];
  sub_220705E20(0, &unk_27CF58F20, MEMORY[0x277D350B8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v147 = &v143 - v8;
  v150 = sub_22088A4FC();
  v149 = *(v150 - 8);
  MEMORY[0x28223BE20](v150, v9);
  v148 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v152 = sub_220889BDC();
  v151 = *(v152 - 8);
  MEMORY[0x28223BE20](v152, v11);
  v153 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = sub_220889BCC();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156, v13);
  v154 = &v143 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22088A1FC();
  v184 = *(v15 - 8);
  v185 = v15;
  MEMORY[0x28223BE20](v15, v16);
  v186 = &v143 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220705E20(0, &qword_2812984D0, MEMORY[0x277D685B0], v5);
  MEMORY[0x28223BE20](v18 - 8, v19);
  v181 = &v143 - v20;
  v21 = sub_2208894CC();
  v182 = *(v21 - 8);
  v183 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v146 = &v143 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220705E20(0, &unk_281298520, MEMORY[0x277D683E0], v5);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v178 = &v143 - v26;
  v180 = sub_22088931C();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180, v27);
  v145 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = sub_22088938C();
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177, v29);
  v175 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_22088937C();
  v188 = *(v31 - 8);
  v189 = v31;
  MEMORY[0x28223BE20](v31, v32);
  v193 = &v143 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = sub_2208899EC();
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174, v34);
  v172 = &v143 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_22088922C();
  v170 = *(v171 - 8);
  MEMORY[0x28223BE20](v171, v36);
  v169 = &v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_22088A56C();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167, v38);
  v190 = &v143 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v165 = &v143 - v42;
  v43 = sub_22088923C();
  v191 = *(v43 - 8);
  v192 = v43;
  MEMORY[0x28223BE20](v43, v44);
  v168 = &v143 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v46, v47);
  v194 = &v143 - v48;
  sub_220705E20(0, &qword_281298288, MEMORY[0x277D68FD8], v5);
  MEMORY[0x28223BE20](v49 - 8, v50);
  v160 = &v143 - v51;
  v162 = sub_22088A0DC();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162, v52);
  v144 = &v143 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220705E20(0, &qword_2812982D0, MEMORY[0x277D68ED8], v5);
  MEMORY[0x28223BE20](v54 - 8, v55);
  v157 = &v143 - v56;
  v159 = sub_220889FEC();
  v158 = *(v159 - 8);
  MEMORY[0x28223BE20](v159, v57);
  v143 = &v143 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220705E20(0, &qword_27CF58F18, MEMORY[0x277D68340], v5);
  MEMORY[0x28223BE20](v59 - 8, v60);
  v62 = &v143 - v61;
  v63 = sub_2208891DC();
  v64 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v65);
  v67 = &v143 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x277D686A0];
  sub_220705E20(0, &unk_2812984A0, MEMORY[0x277D686A0], v5);
  MEMORY[0x28223BE20](v69 - 8, v70);
  v72 = &v143 - v71;
  v73 = sub_2208895EC();
  v74 = *(v73 - 8);
  MEMORY[0x28223BE20](v73, v75);
  v77 = &v143 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220704280(v163, v72, &unk_2812984A0, v68);
  if ((*(v74 + 48))(v72, 1, v73) == 1)
  {
    sub_220704384(v72, &unk_2812984A0, MEMORY[0x277D686A0]);
  }

  else
  {
    (*(v74 + 32))(v77, v72, v73);
    sub_220705E84(&qword_2812984B0, 255, MEMORY[0x277D686A0]);
    sub_220886F1C();
    (*(v74 + 8))(v77, v73);
  }

  sub_220704280(v164, v62, &qword_27CF58F18, MEMORY[0x277D68340]);
  v78 = (*(v64 + 48))(v62, 1, v63);
  v79 = v190;
  if (v78 == 1)
  {
    sub_220704384(v62, &qword_27CF58F18, MEMORY[0x277D68340]);
  }

  else
  {
    (*(v64 + 32))(v67, v62, v63);
    sub_220705E84(&qword_281298560, 255, MEMORY[0x277D68340]);
    sub_220886F1C();
    (*(v64 + 8))(v67, v63);
  }

  v80 = v162;
  v81 = sub_22088A2EC();
  v82 = v157;
  sub_2207909DC(v81, v157);

  v83 = v158;
  v84 = v159;
  if ((*(v158 + 48))(v82, 1, v159) == 1)
  {
    sub_220704384(v82, &qword_2812982D0, MEMORY[0x277D68ED8]);
  }

  else
  {
    v85 = v143;
    (*(v83 + 32))(v143, v82, v84);
    sub_220705E84(&qword_2812982D8, 255, MEMORY[0x277D68ED8]);
    sub_220886F1C();
    (*(v83 + 8))(v85, v84);
  }

  v86 = sub_22088A2EC();
  v87 = v160;
  sub_220790CEC(v86, v160);

  v88 = v161;
  if ((*(v161 + 48))(v87, 1, v80) == 1)
  {
    sub_220704384(v87, &qword_281298288, MEMORY[0x277D68FD8]);
  }

  else
  {
    v89 = v144;
    (*(v88 + 32))(v144, v87, v80);
    sub_220705E20(0, &qword_28127E170, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v90 = sub_220886F8C();
    v91 = *(v90 - 8);
    v92 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v93 = swift_allocObject();
    *(v93 + 16) = xmmword_220899360;
    (*(v91 + 104))(v93 + v92, *MEMORY[0x277CEAD18], v90);
    sub_220705E84(&unk_281298290, 255, MEMORY[0x277D68FD8]);
    sub_220886F1C();

    (*(v88 + 8))(v89, v80);
    v79 = v190;
  }

  v94 = v191;
  v95 = v166;
  v96 = v165;
  sub_22088A2DC();
  v97 = v167;
  (*(v95 + 32))(v79, v96, v167);
  v98 = (*(v95 + 88))(v79, v97);
  if (v98 == *MEMORY[0x277D351D0])
  {
    goto LABEL_14;
  }

  if (v98 == *MEMORY[0x277D35188])
  {
    v99 = v189;
    v100 = MEMORY[0x277D68388];
    goto LABEL_17;
  }

  if (v98 == *MEMORY[0x277D35190])
  {
    goto LABEL_14;
  }

  if (v98 == *MEMORY[0x277D35168])
  {
    v99 = v189;
    v100 = MEMORY[0x277D68380];
    goto LABEL_17;
  }

  if (v98 == *MEMORY[0x277D351A0] || v98 == *MEMORY[0x277D35170] || v98 == *MEMORY[0x277D351E0] || v98 == *MEMORY[0x277D351B8] || v98 == *MEMORY[0x277D351B0] || v98 == *MEMORY[0x277D35178] || v98 == *MEMORY[0x277D35180] || v98 == *MEMORY[0x277D351A8] || v98 == *MEMORY[0x277D351F0] || v98 == *MEMORY[0x277D351E8])
  {
LABEL_14:
    v99 = v189;
    v100 = MEMORY[0x277D68390];
LABEL_17:
    v101 = v194;
    v102 = v192;
    (*(v94 + 104))(v194, *v100, v192);
    goto LABEL_18;
  }

  v99 = v189;
  v101 = v194;
  v102 = v192;
  (*(v94 + 104))(v194, *MEMORY[0x277D68390], v192);
  (*(v95 + 8))(v79, v97);
LABEL_18:
  (*(v94 + 16))(v168, v101, v102);
  v103 = v169;
  sub_22088921C();
  sub_220705E84(&unk_281298550, 255, MEMORY[0x277D68378]);
  v104 = v171;
  sub_220886F1C();
  (*(v170 + 8))(v103, v104);
  sub_22088A2CC();
  v105 = v172;
  sub_2208899DC();
  sub_220705E84(&unk_2812983E0, 255, MEMORY[0x277D68948]);
  v106 = v174;
  sub_220886F1C();
  (*(v173 + 8))(v105, v106);
  sub_22088A28C();
  v107 = sub_22088A2AC();
  if (v107 > 5)
  {
    v108 = MEMORY[0x277D68438];
  }

  else
  {
    v108 = qword_27844A6C8[v107];
  }

  (*(v176 + 104))(v175, *v108, v177);
  sub_22088936C();
  sub_220705E84(&qword_281298510, 255, MEMORY[0x277D68410]);
  v109 = v99;
  sub_220886F1C();
  v110 = sub_22088A2EC();
  v111 = v178;
  sub_220790F80(v110, v178);

  v112 = v179;
  v113 = v180;
  v114 = (*(v179 + 48))(v111, 1, v180);
  v115 = v182;
  if (v114 == 1)
  {
    sub_220704384(v111, &unk_281298520, MEMORY[0x277D683E0]);
  }

  else
  {
    v116 = v145;
    (*(v112 + 32))(v145, v111, v113);
    sub_220705E84(&qword_281298530, 255, MEMORY[0x277D683E0]);
    sub_220886F1C();
    (*(v112 + 8))(v116, v113);
  }

  v117 = v184;
  v118 = sub_22088A2EC();
  v119 = v181;
  sub_220791164(v118, v181);

  v120 = v183;
  if ((*(v115 + 48))(v119, 1, v183) == 1)
  {
    sub_220704384(v119, &qword_2812984D0, MEMORY[0x277D685B0]);
  }

  else
  {
    v121 = v146;
    (*(v115 + 32))(v146, v119, v120);
    sub_220705E84(&qword_2812984D8, 255, MEMORY[0x277D685B0]);
    sub_220886F1C();
    (*(v115 + 8))(v121, v120);
  }

  v123 = v185;
  v122 = v186;
  v124 = v109;
  (*(v117 + 16))(v186, v187, v185);
  v125 = (*(v117 + 88))(v122, v123);
  v126 = v194;
  if (v125 == *MEMORY[0x277D34DC0])
  {
    (*(v117 + 96))(v122, v123);
    v127 = v149;
    v128 = v148;
    v129 = v122;
    v130 = v150;
    (*(v149 + 32))(v148, v129, v150);
    (*(v151 + 104))(v153, *MEMORY[0x277D68B30], v152);
    v131 = v154;
    sub_220889BBC();
    sub_220705E84(&unk_27CF58F40, 255, MEMORY[0x277D68B08]);
    v132 = v156;
    v133 = v195;
LABEL_39:
    sub_220886F1C();
    v137 = v131;
    v126 = v194;
    (*(v155 + 8))(v137, v132);
    v138 = v147;
    (*(v127 + 16))(v147, v128, v130);
    (*(v127 + 56))(v138, 0, 1, v130);
    sub_220704CFC(v133, v138);
    sub_220704384(v138, &unk_27CF58F20, MEMORY[0x277D350B8]);
    v139 = v128;
    v94 = v191;
    (*(v127 + 8))(v139, v130);
    goto LABEL_40;
  }

  v133 = v195;
  if (v125 == *MEMORY[0x277D34DA8])
  {
    (*(v117 + 96))(v122, v123);
    v127 = v149;
    v128 = v148;
    v134 = v122;
    v130 = v150;
    (*(v149 + 32))(v148, v134, v150);
    (*(v151 + 104))(v153, *MEMORY[0x277D68B18], v152);
    v131 = v154;
    sub_220889BBC();
    sub_220705E84(&unk_27CF58F40, 255, MEMORY[0x277D68B08]);
LABEL_38:
    v132 = v156;
    goto LABEL_39;
  }

  if (v125 == *MEMORY[0x277D34DB0])
  {
    (*(v117 + 96))(v122, v123);
    v127 = v149;
    v128 = v148;
    v135 = v122;
    v130 = v150;
    (*(v149 + 32))(v148, v135, v150);
    (*(v151 + 104))(v153, *MEMORY[0x277D68B20], v152);
    v131 = v154;
    sub_220889BBC();
    sub_220705E84(&unk_27CF58F40, 255, MEMORY[0x277D68B08]);
    goto LABEL_38;
  }

  if (v125 == *MEMORY[0x277D34DC8])
  {
    (*(v117 + 96))(v122, v123);
    v127 = v149;
    v128 = v148;
    v136 = v122;
    v130 = v150;
    (*(v149 + 32))(v148, v136, v150);
    (*(v151 + 104))(v153, *MEMORY[0x277D68B10], v152);
    v131 = v154;
    sub_220889BBC();
    sub_220705E84(&unk_27CF58F40, 255, MEMORY[0x277D68B08]);
    goto LABEL_38;
  }

  if (v125 == *MEMORY[0x277D34DB8])
  {
    (*(v151 + 104))(v153, *MEMORY[0x277D68B28], v152);
    v141 = v154;
    sub_220889BBC();
    sub_220705E84(&unk_27CF58F40, 255, MEMORY[0x277D68B08]);
    v142 = v156;
    sub_220886F1C();
    (*(v155 + 8))(v141, v142);
  }

  else
  {
    (*(v117 + 8))(v122, v123);
  }

LABEL_40:
  sub_220889CCC();
  sub_220705E84(&unk_27CF58F30, 255, MEMORY[0x277D68C08]);
  memset(v197, 0, sizeof(v197));
  sub_220886F3C();
  sub_22056D130(v197);
  (*(v188 + 8))(v193, v124);
  return (*(v94 + 8))(v126, v192);
}