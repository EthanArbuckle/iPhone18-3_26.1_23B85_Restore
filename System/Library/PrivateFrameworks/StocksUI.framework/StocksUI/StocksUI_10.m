uint64_t sub_22056D3F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v69 = sub_22088685C();
  v8 = *(v69 - 8);
  MEMORY[0x28223BE20](v69, v9);
  v68 = v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for StockFeedViewerPage();
  v67 = *(v63 - 8);
  MEMORY[0x28223BE20](v63, v11);
  v13 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_22088D37C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = v58 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22056DCB8();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v62 = v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22056DE08(0, &qword_281297F20, MEMORY[0x277D6D448]);
  v65 = *(v21 - 8);
  v66 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v61 = v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v64 = v58 - v26;
  v27 = *(a2 + 16);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v58[0] = v17;
    v58[1] = a1;
    v59 = v4;
    v60 = a3;
    v73 = MEMORY[0x277D84F90];
    sub_22070BE04(0, v27, 0);
    v28 = v73;
    v31 = *(v8 + 16);
    v30 = v8 + 16;
    v29 = v31;
    v32 = a2 + ((*(v30 + 64) + 32) & ~*(v30 + 64));
    v33 = *(v30 + 56);
    v34 = (v30 + 16);
    do
    {
      v36 = v68;
      v35 = v69;
      v29(v68, v32, v69);
      (*v34)(v13, v36, v35);
      v73 = v28;
      v38 = *(v28 + 16);
      v37 = *(v28 + 24);
      if (v38 >= v37 >> 1)
      {
        sub_22070BE04(v37 > 1, v38 + 1, 1);
        v28 = v73;
      }

      *(v28 + 16) = v38 + 1;
      sub_22056DD84(v13, v28 + ((*(v67 + 80) + 32) & ~*(v67 + 80)) + *(v67 + 72) * v38);
      v32 += v33;
      --v27;
    }

    while (v27);
    v4 = v59;
    a3 = v60;
  }

  v39 = sub_22056E0D0(&qword_28128F9C8, type metadata accessor for StockFeedViewerPage);
  v40 = sub_22056E0D0(&qword_28128F9E0, type metadata accessor for StockFeedViewerPage);
  MEMORY[0x223D80A20](v28, v63, v39, v40);
  sub_22056E0D0(&qword_28128F9E8, type metadata accessor for StockFeedViewerPage);
  v41 = v64;
  sub_22088AE0C();
  (*(v65 + 16))(v61, v41, v66);
  sub_22056DDE8(0);
  swift_allocObject();
  v42 = sub_22088C06C();

  sub_22088D36C();
  v73 = v42;
  sub_22056DEA4();
  swift_allocObject();
  v43 = sub_22088C55C();
  __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
  type metadata accessor for StockFeedViewerPageViewControllerProvider();
  result = sub_2208884CC();
  if (result)
  {
    v45 = result;
    v46 = sub_22088BABC();
    swift_allocObject();

    v47 = sub_22088BAAC();
    v74 = v46;
    v75 = MEMORY[0x277D6DA20];
    v72 = v42;
    v73 = v47;
    v70 = v43;
    v71 = v45;
    sub_22056DF38();
    v49 = objc_allocWithZone(v48);

    v50 = sub_22088CA9C();
    sub_22088677C();
    sub_22088BACC();

    __swift_project_boxed_opaque_existential_1((v4 + 16), *(v4 + 40));
    type metadata accessor for StockFeedViewerViewController();
    swift_unownedRetainStrong();
    swift_unownedRetain();
    swift_unownedRetain();

    v51 = swift_allocObject();
    v51[2] = v4;
    v51[3] = v42;
    v51[4] = v50;

    v52 = v50;
    v53 = sub_2208884AC();

    result = swift_unownedRelease();
    if (v53)
    {
      (*(v65 + 8))(v64, v66);

      v54 = sub_22056E0D0(&qword_281285DB8, type metadata accessor for StockFeedViewerViewController);
      v55 = sub_22056E0D0(&qword_281285DC0, type metadata accessor for StockFeedViewerViewController);
      v56 = sub_22056E0D0(&qword_281285DD8, type metadata accessor for StockFeedViewerViewController);
      v57 = sub_22056E0D0(&qword_281285DE8, type metadata accessor for StockFeedViewerViewController);
      result = sub_22056E0D0(&qword_281285DF0, type metadata accessor for StockFeedViewerViewController);
      *a3 = v53;
      a3[1] = v54;
      a3[2] = v55;
      a3[3] = v56;
      a3[4] = v57;
      a3[5] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22056DB3C(void *a1, uint64_t a2)
{
  swift_getObjectType();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  sub_22046DA2C(a2 + 64, v6);

  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_220871B78();
  sub_2204693CC();
  sub_22088837C();
  __swift_destroy_boxed_opaque_existential_1(&v5);
  __swift_destroy_boxed_opaque_existential_1(v6);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22056DDE8(0);
  sub_22088839C();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_22088839C();
}

void sub_22056DCB8()
{
  if (!qword_281298780)
  {
    type metadata accessor for StockFeedViewerPage();
    sub_22056E0D0(&qword_28128F9C8, type metadata accessor for StockFeedViewerPage);
    sub_22056E0D0(&qword_28128F9E0, type metadata accessor for StockFeedViewerPage);
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_281298780);
    }
  }
}

uint64_t sub_22056DD84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StockFeedViewerPage();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_22056DE08(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for StockFeedViewerPage();
    v7 = sub_22056E0D0(&qword_28128F9E8, type metadata accessor for StockFeedViewerPage);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_22056DEA4()
{
  if (!qword_2812978F0)
  {
    sub_22056DDE8(255);
    sub_22056E0D0(&qword_281297A10, sub_22056DDE8);
    v0 = sub_22088C56C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812978F0);
    }
  }
}

void sub_22056DF38()
{
  if (!qword_281297768)
  {
    sub_22056DDE8(255);
    type metadata accessor for StockFeedViewerPageViewControllerProvider();
    type metadata accessor for StockFeedViewerViewController();
    sub_22056DEA4();
    sub_22056E0D0(&qword_281297A10, sub_22056DDE8);
    sub_22056E0D0(qword_2812803A0, type metadata accessor for StockFeedViewerPageViewControllerProvider);
    sub_22056E0D0(&qword_281285DC8, type metadata accessor for StockFeedViewerViewController);
    sub_22056E0D0(&qword_2812978F8, sub_22056DEA4);
    v0 = sub_22088CAAC();
    if (!v1)
    {
      atomic_store(v0, &qword_281297768);
    }
  }
}

uint64_t sub_22056E0D0(unint64_t *a1, void (*a2)(uint64_t))
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

id AccessCheckerHasBundleSubscription(_:to:lineNumber:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  v6 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v6, v6 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_22056D130(&v19);
    goto LABEL_11;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v8 = 0;
    v9 = 0;
    goto LABEL_12;
  }

  v8 = v16;
  v9 = [v16 integerValue];
  if (v9 == -1)
  {
LABEL_20:

    if ((((v9 + a4) ^ a4) & 1) == 0)
    {
      return 0;
    }

LABEL_18:
    v12 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v13 = [v12 bundleChannelIDs];

    v14 = sub_22089132C();
    v15 = [v13 containsObject_];

    return v15;
  }

LABEL_12:
  if (objc_getAssociatedObject(v6, ~v9))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
  }

  v19 = v17;
  v20 = v18;
  if (!*(&v18 + 1))
  {
    sub_22056D130(&v19);
    goto LABEL_20;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v10 = v16;
  v11 = [v10 integerValue];

  if (((v11 - a4) ^ (v9 + a4)))
  {
    goto LABEL_18;
  }

  return 0;
}

BOOL AccessCheckerHasAccess(_:toItemPaid:isBundlePaid:channelID:lineNumber:)(id a1, char a2, char a3, uint64_t a4, uint64_t a5, int a6)
{
  if (a2)
  {
    v11 = [a1 purchaseProvider];
    if (!a5)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    v12 = [v11 purchasedTagIDs];
    v13 = sub_2208918EC();

    LOBYTE(v12) = sub_22056F244(a4, a5, v13);

    swift_unknownObjectRelease();
    if ((v12 & 1) == 0)
    {
      if ((a3 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    return 1;
  }

  if ((a3 & 1) == 0)
  {
    return 1;
  }

  if (!a5)
  {
    return 0;
  }

LABEL_8:
  v14 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    sub_22056D130(&v27);
    goto LABEL_17;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v15 = 0;
    v16 = 0;
    goto LABEL_18;
  }

  v15 = v24;
  v16 = [v24 integerValue];
  if (v16 == -1)
  {
LABEL_26:

    if ((((v16 + a6) ^ a6) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_27;
  }

LABEL_18:
  if (objc_getAssociatedObject(v14, ~v16))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v25 = 0u;
    v26 = 0u;
  }

  v27 = v25;
  v28 = v26;
  if (!*(&v26 + 1))
  {
    sub_22056D130(&v27);
    goto LABEL_26;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v17 = v24;
  v18 = [v17 integerValue];

  if ((((v18 - a6) ^ (v16 + a6)) & 1) == 0)
  {
    return 0;
  }

LABEL_27:
  v19 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v20 = [v19 bundleChannelIDs];

  v21 = sub_22089132C();
  v22 = [v20 containsObject_];

  return (v22 & 1) != 0;
}

BOOL AccessCheckerHasAccess(_:to:lineNumber:)(void *a1, id a2, int a3)
{
  v6 = [a2 isPaid];
  if ([a2 respondsToSelector_])
  {
    v7 = [a2 isBundlePaid];
  }

  else
  {
    v7 = 0;
  }

  v8 = [a2 sourceChannel];
  if (v8)
  {
    v9 = [v8 identifier];
    swift_unknownObjectRelease();
    v10 = sub_22089136C();
    v12 = v11;

    if (v6)
    {
      goto LABEL_6;
    }

LABEL_11:
    if (v7)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  v10 = 0;
  v12 = 0;
  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_6:
  v13 = [a1 purchaseProvider];
  if (v12)
  {
    v14 = [v13 purchasedTagIDs];
    v15 = sub_2208918EC();

    LOBYTE(v14) = sub_22056F244(v10, v12, v15);

    swift_unknownObjectRelease();
    if ((v14 & 1) == 0)
    {
      if (!v7)
      {
        goto LABEL_35;
      }

      goto LABEL_15;
    }

LABEL_12:

    return 1;
  }

  swift_unknownObjectRelease();
  if (!v7)
  {
    goto LABEL_35;
  }

LABEL_15:
  if (v12)
  {
    v17 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    if (objc_getAssociatedObject(v17, v17 + 1))
    {
      sub_2208923BC();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (*(&v28 + 1))
    {
      sub_2204DD8BC();
      if (swift_dynamicCast())
      {
        v18 = v26;
        v19 = [v26 integerValue];
        if (v19 == -1)
        {
LABEL_34:

          if ((((v19 + a3) ^ a3) & 1) == 0)
          {
            goto LABEL_35;
          }

          goto LABEL_31;
        }

        goto LABEL_25;
      }
    }

    else
    {
      sub_22056D130(&v29);
    }

    v18 = 0;
    v19 = 0;
LABEL_25:
    if (objc_getAssociatedObject(v17, ~v19))
    {
      sub_2208923BC();
      swift_unknownObjectRelease();
    }

    else
    {
      v27 = 0u;
      v28 = 0u;
    }

    v29 = v27;
    v30 = v28;
    if (!*(&v28 + 1))
    {
      sub_22056D130(&v29);
      goto LABEL_34;
    }

    sub_2204DD8BC();
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_34;
    }

    v20 = v26;
    v21 = [v20 integerValue];

    if (((v21 - a3) ^ (v19 + a3)))
    {
LABEL_31:
      v22 = [objc_msgSend(a1 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v23 = [v22 bundleChannelIDs];

      v24 = sub_22089132C();
      v25 = [v23 containsObject_];

      return (v25 & 1) != 0;
    }

LABEL_35:
  }

  return 0;
}

{
  v6 = [a2 isPaid];
  v7 = [a2 isBundlePaid];
  v8 = [objc_msgSend(a2 sourceChannel)];
  swift_unknownObjectRelease();
  v9 = sub_22089136C();
  v11 = v10;

  if ((v6 & 1) == 0)
  {
    if (v7)
    {
      goto LABEL_6;
    }

LABEL_8:

    return 1;
  }

  v12 = [objc_msgSend(a1 purchaseProvider)];
  v13 = sub_2208918EC();

  LOBYTE(v12) = sub_22056F244(v9, v11, v13);

  swift_unknownObjectRelease();
  if (v12)
  {
    goto LABEL_8;
  }

  if ((v7 & 1) == 0)
  {
    goto LABEL_27;
  }

LABEL_6:
  v14 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v14, v14 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_22056D130(&v26);
    goto LABEL_16;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  v16 = v23;
  v17 = [v23 integerValue];
  if (v17 == -1)
  {
LABEL_26:

    if ((((v17 + a3) ^ a3) & 1) == 0)
    {
      goto LABEL_27;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (objc_getAssociatedObject(v14, ~v17))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_22056D130(&v26);
    goto LABEL_26;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_26;
  }

  v18 = v23;
  v19 = [v18 integerValue];

  if (((v19 - a3) ^ (v17 + a3)))
  {
LABEL_23:
    v20 = [objc_msgSend(a1 bundleSubscriptionProvider)];
    swift_unknownObjectRelease();
    v21 = [v20 bundleChannelIDs];

    v22 = sub_22089132C();
    LOBYTE(v20) = [v21 containsObject_];

    return (v20 & 1) != 0;
  }

LABEL_27:

  return 0;
}

uint64_t AccessCheckerHasAccess(_:with:lineNumber:)(void *a1, void *a2, int a3)
{
  v6 = [a1 purchaseProvider];
  if ([swift_unknownObjectRetain() tagType] == 3)
  {
    v7 = [a2 asSection];
    if (!v7 || (v8 = [v7 parentID], swift_unknownObjectRelease(), !v8))
    {
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_8;
    }
  }

  else
  {
    v8 = [a2 identifier];
  }

  v9 = sub_22089136C();
  v11 = v10;

  v12 = [v6 purchasedTagIDs];
  v13 = sub_2208918EC();

  LOBYTE(v12) = sub_22056F244(v9, v11, v13);

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  if (v12)
  {
    return 1;
  }

LABEL_8:
  v15 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v15, v15 + 1))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_22056D130(&v26);
    goto LABEL_16;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:
    v16 = 0;
    v17 = 0;
    goto LABEL_17;
  }

  v16 = v23;
  v17 = [v23 integerValue];
  if (v17 == -1)
  {
LABEL_27:

    if ((((v17 + a3) ^ a3) & 1) == 0)
    {
      return 0;
    }

    goto LABEL_23;
  }

LABEL_17:
  if (objc_getAssociatedObject(v15, ~v17))
  {
    sub_2208923BC();
    swift_unknownObjectRelease();
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
  }

  v26 = v24;
  v27 = v25;
  if (!*(&v25 + 1))
  {
    sub_22056D130(&v26);
    goto LABEL_27;
  }

  sub_2204DD8BC();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_27;
  }

  v18 = v23;
  v19 = [v18 integerValue];

  if ((((v19 - a3) ^ (v17 + a3)) & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v20 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  v21 = [a2 identifier];
  if (!v21)
  {
    sub_22089136C();
    v21 = sub_22089132C();
  }

  v22 = [v20 containsTagID_];

  return v22;
}

uint64_t sub_22056F244(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2208929EC();
  sub_22089146C();
  v6 = sub_220892A2C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2208928BC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_22056F33C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v3 = sub_22089249C();

    return v3 & 1;
  }

  else
  {
    if (*(a2 + 16) && (sub_22056F9EC(), v5 = sub_22089129C(), v6 = -1 << *(a2 + 32), v7 = v5 & ~v6, ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
    {
      v8 = ~v6;
      do
      {
        v9 = sub_2208912FC();
        if (v9)
        {
          break;
        }

        v7 = (v7 + 1) & v8;
      }

      while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
    }

    else
    {
      v9 = 0;
    }

    return v9 & 1;
  }
}

uint64_t sub_22056F468(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_22089136C(), sub_2208929EC(), sub_22089146C(), v3 = sub_220892A2C(), , v4 = -1 << *(a2 + 32), v5 = v3 & ~v4, ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = sub_22089136C();
      v9 = v8;
      if (v7 == sub_22089136C() && v9 == v10)
      {
        break;
      }

      v12 = sub_2208928BC();

      if ((v12 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(a2 + 56 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v12 & 1;
    }

    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_22056F5BC(uint64_t a1, uint64_t a2)
{
  v3 = sub_22088B3EC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_22056FA44(&qword_281297D98, MEMORY[0x277D6D770]), v8 = sub_22089129C(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_22056FA44(&qword_281297D90, MEMORY[0x277D6D770]);
      v16 = sub_2208912FC();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_22056F7D4(uint64_t a1, uint64_t a2)
{
  v3 = sub_22088521C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_22056FA44(&qword_281299458, MEMORY[0x277CC9640]), v8 = sub_22089129C(), v9 = -1 << *(a2 + 32), v10 = v8 & ~v9, v19 = a2 + 56, ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0))
  {
    v18 = a2;
    v11 = ~v9;
    v12 = v4 + 16;
    v13 = *(v4 + 16);
    v14 = *(v12 + 56);
    v15 = (v12 - 8);
    do
    {
      v13(v7, *(v18 + 48) + v14 * v10, v3);
      sub_22056FA44(&qword_281299450, MEMORY[0x277CC9640]);
      v16 = sub_2208912FC();
      (*v15)(v7, v3);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void sub_22056F9EC()
{
  if (!qword_27CF59F10)
  {
    type metadata accessor for WelcomeView();
    v0 = sub_2208925AC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF59F10);
    }
  }
}

uint64_t sub_22056FA44(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_22056FA8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = MEMORY[0x277D83D88];
  sub_2204DD280(0, &unk_2812993E0, MEMORY[0x277CC9A70], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v8 = &v21 - v7;
  sub_2204DD280(0, &qword_2812990C0, MEMORY[0x277D697F8], v4);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v21 - v11;
  v13 = sub_22088543C();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204B1CA8(a1, v12);
  v18 = sub_22088676C();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v12, 1, v18) != 1)
  {
    goto LABEL_4;
  }

  sub_220570398(v12);
  sub_2208853DC();
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    __break(1u);
LABEL_4:
    sub_2208866AC();
    (*(v19 + 8))(v12, v18);
    v8 = v17;
  }

  return (*(v14 + 32))(a2, v8, v13);
}

BOOL sub_22056FD0C(uint64_t a1, uint64_t a2)
{
  v59 = a1;
  v60 = a2;
  v3 = sub_220884BDC();
  v66 = *(v3 - 8);
  v67 = v3;
  MEMORY[0x28223BE20](v3, v4);
  v61 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22088516C();
  v56 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v7);
  v57 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v55 - v11;
  MEMORY[0x28223BE20](v13, v14);
  v68 = &v55 - v15;
  v16 = sub_22088543C();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v18);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_2208853CC();
  v64 = *(v21 - 8);
  v65 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v24 = &v55 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_220885ACC();
  v62 = *(v25 - 8);
  v63 = v25;
  MEMORY[0x28223BE20](v25, v26);
  v28 = &v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v58 = v28;
  sub_22088641C();
  sub_22088538C();
  v29 = v6;
  v30 = v56;
  (*(v17 + 16))(v20, v60, v16);
  sub_22088539C();
  sub_22088515C();
  v31 = v68;
  sub_2208852EC();
  v32 = *(v30 + 8);
  v60 = v29;
  v32(v12, v29);
  v33 = v57;
  sub_2208852EC();
  sub_2204DD280(0, &qword_28127E1C8, MEMORY[0x277CC99D0], MEMORY[0x277D84560]);
  v34 = sub_2208853AC();
  v35 = *(v34 - 8);
  v36 = (*(v35 + 80) + 32) & ~*(v35 + 80);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_220899360;
  (*(v35 + 104))(v37 + v36, *MEMORY[0x277CC99A8], v34);
  sub_2207E1070(v37);
  swift_setDeallocating();
  v38 = v37 + v36;
  v39 = v61;
  (*(v35 + 8))(v38, v34);
  v40 = v33;
  swift_deallocClassInstance();
  sub_22088530C();

  v41 = sub_220884BBC();
  if (v42)
  {
    (*(v66 + 8))(v39, v67);
    v43 = v60;
    v32(v33, v60);
    v32(v31, v43);
    (*(v64 + 8))(v24, v65);
    (*(v62 + 8))(v58, v63);
    return 0;
  }

  v44 = v58;
  v46 = v66;
  v45 = v67;
  if (v41 < 0)
  {
    (*(v66 + 8))(v39, v67);
    v54 = v60;
    v32(v33, v60);
    v32(v68, v54);
    (*(v64 + 8))(v24, v65);
    (*(v62 + 8))(v44, v63);
    return 0;
  }

  v47 = v41;
  v48 = v40;
  v49 = sub_2208858CC();
  (*(v46 + 8))(v39, v45);
  v50 = v48;
  v51 = v60;
  v32(v50, v60);
  v32(v68, v51);
  (*(v64 + 8))(v24, v65);
  (*(v62 + 8))(v44, v63);
  return !v47 || v49 >= v47;
}

uint64_t sub_220570398(uint64_t a1)
{
  sub_2204DD280(0, &qword_2812990C0, MEMORY[0x277D697F8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220570424(void *a1)
{
  if ((sub_22088F0DC() & 1) == 0)
  {
    v3 = [objc_opt_self() tertiarySystemFillColor];
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    *(v4 + 24) = a1;
    v5 = objc_allocWithZone(MEMORY[0x277D75348]);
    v13[4] = sub_22057086C;
    v13[5] = v4;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_220570804;
    v13[3] = &block_descriptor_1;
    v6 = _Block_copy(v13);
    v7 = v3;
    v8 = a1;
    v9 = [v5 initWithDynamicProvider_];
    _Block_release(v6);

    v10 = [v1 backgroundImageForState_];
    if (v10)
    {
      v11 = v10;
      v12 = [v10 imageWithTintColor_];
      [v1 setBackgroundImage:v12 forState:0];

      v7 = v11;
      v9 = v12;
    }
  }
}

uint64_t sub_2205705DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
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
  v18 = sub_220476DF0(&v20 - v14, a2, v7, v8);
  result = (*(v10 + 8))(&v20 - v14, v7);
  *a3 = v18;
  return result;
}

id sub_220570744(uint64_t a1, id a2, void *a3)
{
  v5 = [a2 resolvedColorWithTraitCollection_];
  v6 = [a3 resolvedColorWithTraitCollection_];
  sub_22089201C();
  v7 = sub_22089200C();

  if (v7)
  {

    return v7;
  }

  return v5;
}

id sub_220570804(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

uint64_t sub_220570874(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v93 = a4;
  v94 = a3;
  v6 = MEMORY[0x277D83D88];
  sub_220571814(0, &qword_27CF56C20, sub_2205714D0, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v101 = &v87 - v9;
  v10 = sub_22088516C();
  v91 = *(v10 - 8);
  v92 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v90 = &v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StocksAudioTrack();
  v14 = *(v13 - 8);
  v16 = MEMORY[0x28223BE20](v13, v15);
  v102 = (&v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = MEMORY[0x28223BE20](v16, v18);
  v96 = (&v87 - v20);
  MEMORY[0x28223BE20](v19, v21);
  v95 = (&v87 - v22);
  sub_220571538();
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23, v25);
  v27 = &v87 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220571814(0, qword_281296160, type metadata accessor for StocksAudioTrack, v6);
  v30 = MEMORY[0x28223BE20](v28 - 8, v29);
  v98 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = (&v87 - v34);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v39 = &v87 - v38;
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v87 - v41;
  sub_2205715CC();
  v44 = v43;
  v100 = a1;
  sub_2208878BC();
  v97 = v44;
  v99 = a2;
  sub_2208878BC();
  v45 = *(v24 + 56);
  sub_22057164C(v42, v27);
  sub_22057164C(v39, &v27[v45]);
  v46 = *(v14 + 48);
  if (v46(v27, 1, v13) == 1)
  {
    sub_220571740(v39, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_220571740(v42, qword_281296160, type metadata accessor for StocksAudioTrack);
    if (v46(&v27[v45], 1, v13) == 1)
    {
      return sub_220571740(v27, qword_281296160, type metadata accessor for StocksAudioTrack);
    }

    goto LABEL_6;
  }

  sub_22057164C(v27, v35);
  v89 = v13;
  if (v46(&v27[v45], 1, v13) == 1)
  {
    sub_220571740(v39, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_220571740(v42, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2205716E0(v35, type metadata accessor for StocksAudioTrack);
    v13 = v89;
LABEL_6:
    sub_2205716E0(v27, sub_220571538);
    v48 = v102;
LABEL_7:
    v49 = v98;
    sub_2208878BC();
    if (v46(v49, 1, v13) == 1)
    {
      sub_220571740(v49, qword_281296160, type metadata accessor for StocksAudioTrack);
      v50 = v101;
    }

    else
    {
      v51 = v96;
      sub_2205717B0(v49, v96);
      v52 = *(v51 + *(v13 + 32));
      sub_22048D2F4();
      v53 = sub_2208922FC();
      sub_220571814(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
      v54 = swift_allocObject();
      *(v54 + 16) = xmmword_220899360;
      sub_2204FFEC0(&qword_27CF57560);
      v55 = sub_22089287C();
      v57 = v56;
      *(v54 + 56) = MEMORY[0x277D837D0];
      *(v54 + 64) = sub_22048D860();
      *(v54 + 32) = v55;
      *(v54 + 40) = v57;
      sub_220891AFC();
      if (v52)
      {
        sub_22088A7EC();

        v66 = [*v51 identifier];
        if (!v66)
        {
          sub_22089136C();
          v66 = sub_22089132C();
        }

        v67 = v90;
        sub_22088515C();
        v68 = sub_22088509C();
        (*(v91 + 8))(v67, v92);
        [v94 markArticle:v66 withLastListened:v68];
      }

      else
      {
        sub_22088A7EC();
      }

      v50 = v101;
      sub_2205716E0(v51, type metadata accessor for StocksAudioTrack);
    }

    sub_2207AD9A0(v50);
    sub_2205714D0();
    if ((*(*(v69 - 8) + 48))(v50, 1, v69) == 1)
    {
      return sub_220571740(v50, &qword_27CF56C20, sub_2205714D0);
    }

    sub_2205717B0(v50, v48);
    if (*(v48 + *(v13 + 32)) & 2) != 0 && ([*(v48 + *(v13 + 24)) duration], (sub_22088808C()))
    {
      v70 = [*v48 articleID];
      v71 = v70;
      v72 = v70;
      v73 = v70;
      if (!v70)
      {
        sub_22089136C();
        v73 = sub_22089132C();

        sub_22089136C();
        v72 = sub_22089132C();

        sub_22089136C();
        v71 = sub_22089132C();
      }

      sub_22048D2F4();
      v74 = v70;
      v75 = sub_2208922FC();
      sub_220571814(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
      v76 = swift_allocObject();
      *(v76 + 16) = xmmword_220899360;
      sub_2204FFEC0(&qword_27CF57560);
      v77 = sub_22089287C();
      v79 = v78;
      *(v76 + 56) = MEMORY[0x277D837D0];
      *(v76 + 64) = sub_22048D860();
      *(v76 + 32) = v77;
      *(v76 + 40) = v79;
      sub_220891AFC();
      sub_22088A7EC();

      v80 = v94;
      [v94 markArticle:v73 withCompletedListening:1];

      [v80 markArticle:v72 withListeningProgress:0.0];
      [v80 markArticle:v71 withReadingPositionJSON:0];
    }

    else
    {
      sub_22048D2F4();
      v81 = sub_2208922FC();
      sub_220571814(0, &qword_28127DE60, sub_220571878, MEMORY[0x277D84560]);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_220899360;
      sub_2204FFEC0(&qword_27CF57560);
      v83 = sub_22089287C();
      v85 = v84;
      *(v82 + 56) = MEMORY[0x277D837D0];
      *(v82 + 64) = sub_22048D860();
      *(v82 + 32) = v83;
      *(v82 + 40) = v85;
      sub_220891AFC();
      sub_22088A7EC();
    }

    return sub_2205716E0(v48, type metadata accessor for StocksAudioTrack);
  }

  v58 = v95;
  sub_2205717B0(&v27[v45], v95);
  v88 = v35;
  v59 = [*v35 identifier];
  v87 = sub_22089136C();
  v61 = v60;

  v62 = [*v58 identifier];
  v63 = sub_22089136C();
  v65 = v64;

  if (v87 == v63 && v61 == v65)
  {

    sub_220571740(v39, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_220571740(v42, qword_281296160, type metadata accessor for StocksAudioTrack);
    sub_2205716E0(v58, type metadata accessor for StocksAudioTrack);
    sub_2205716E0(v88, type metadata accessor for StocksAudioTrack);
    return sub_220571740(v27, qword_281296160, type metadata accessor for StocksAudioTrack);
  }

  v86 = sub_2208928BC();

  sub_220571740(v39, qword_281296160, type metadata accessor for StocksAudioTrack);
  sub_220571740(v42, qword_281296160, type metadata accessor for StocksAudioTrack);
  sub_2205716E0(v58, type metadata accessor for StocksAudioTrack);
  sub_2205716E0(v88, type metadata accessor for StocksAudioTrack);
  result = sub_220571740(v27, qword_281296160, type metadata accessor for StocksAudioTrack);
  v48 = v102;
  v13 = v89;
  if ((v86 & 1) == 0)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_2205714D0()
{
  if (!qword_27CF56C28)
  {
    type metadata accessor for StocksAudioTrack();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF56C28);
    }
  }
}

void sub_220571538()
{
  if (!qword_27CF59B70)
  {
    sub_220571814(255, qword_281296160, type metadata accessor for StocksAudioTrack, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF59B70);
    }
  }
}

void sub_2205715CC()
{
  if (!qword_281298B40)
  {
    type metadata accessor for StocksAudioTrack();
    sub_2204FFEC0(&qword_2812961F0);
    v0 = sub_2208878DC();
    if (!v1)
    {
      atomic_store(v0, &qword_281298B40);
    }
  }
}

uint64_t sub_22057164C(uint64_t a1, uint64_t a2)
{
  sub_220571814(0, qword_281296160, type metadata accessor for StocksAudioTrack, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2205716E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220571740(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220571814(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2205717B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StocksAudioTrack();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220571814(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_220571878()
{
  result = qword_28127DE10;
  if (!qword_28127DE10)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28127DE10);
  }

  return result;
}

uint64_t sub_2205718DC(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v4 = type metadata accessor for NewsStockFeedGroupKnobs();
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StockFeedGroupKnobs();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452BA4();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v19);
  v21 = &v32 - v20;
  v22 = type metadata accessor for StockFeedGroupConfig();
  MEMORY[0x28223BE20](v22 - 8, v23);
  v25 = &v32 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220571C9C(a1, v25, type metadata accessor for StockFeedGroupConfig);
  v26 = *(v14 + 32);
  v26(v21, v25, v13);
  (*(v14 + 16))(v17, v21, v13);
  sub_220571C9C(v33, v11, type metadata accessor for StockFeedGroupKnobs);
  v27 = v11;
  v28 = v7;
  sub_220571D04(v27, v7);
  sub_22046DA2C(v2 + 16, v35);
  sub_22046DA2C(v2 + 56, v34);
  type metadata accessor for NewsStockFeedGroupEmitter();
  v29 = swift_allocObject();
  v26((v29 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_config), v17, v13);
  sub_220571D04(v28, v29 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_knobs);
  sub_220457328(v35, v29 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_formatService);
  sub_220457328(v34, v29 + OBJC_IVAR____TtC8StocksUI25NewsStockFeedGroupEmitter_featureAvailability);
  *&v35[0] = v29;
  sub_220571D68();
  swift_allocObject();
  sub_220453490(&qword_281289838, type metadata accessor for NewsStockFeedGroupEmitter);
  v30 = sub_22088F53C();
  (*(v14 + 8))(v21, v13);
  return v30;
}

uint64_t sub_220571C9C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_220571D04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NewsStockFeedGroupKnobs();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_220571D68()
{
  if (!qword_281296BD0)
  {
    type metadata accessor for StockFeedServiceConfig();
    sub_220453490(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
    v0 = sub_22088F54C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296BD0);
    }
  }
}

uint64_t sub_220571DFC()
{
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220571F80(&qword_27CF56C30);
  return sub_220886C9C();
}

uint64_t sub_220571E90@<X0>(_BYTE *a1@<X8>)
{
  if (qword_281298FC0 != -1)
  {
    swift_once();
  }

  sub_220571F80(&unk_281286748);
  result = sub_220886B3C();
  *a1 = v3;
  return result;
}

uint64_t sub_220571F80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CurrencyDisplayCommandHandler();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_220571FC0(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  sub_22055D328();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055D3C0();
  v29 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v34 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CE80(0);
  sub_2204BC2F4(&qword_281297DE8, 255, sub_22055CE80);
  v13 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v37 = MEMORY[0x277D84F90];
    sub_22070BBB4(0, v13 & ~(v13 >> 63), 0);
    v35 = v37;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = v6;
      v16 = 0;
      v27 = (v15 + 16);
      v28 = (v15 + 8);
      v24[1] = v32 + 32;
      v25 = v13;
      v26 = v9;
      while (!__OFADD__(v16, 1))
      {
        v33 = v16 + 1;
        v17 = sub_2208919BC();
        (*v27)(v9);
        v17(v36, 0);
        v30(v9);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v18 = v9;
        v19 = v5;
        (*v28)(v18, v5);
        v20 = v35;
        v37 = v35;
        v22 = *(v35 + 16);
        v21 = *(v35 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_22070BBB4(v21 > 1, v22 + 1, 1);
          v20 = v37;
        }

        *(v20 + 16) = v22 + 1;
        v23 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v35 = v20;
        (*(v32 + 32))(v20 + v23 + *(v32 + 72) * v22, v34, v29);
        sub_2208919AC();
        ++v16;
        v5 = v19;
        v9 = v26;
        if (v33 == v25)
        {
          return v35;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v28)(v9, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_22057235C(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = *(a3 + 16);
  result = MEMORY[0x277D84F90];
  if (v6)
  {
    v12 = MEMORY[0x277D84F90];
    sub_2208925EC();
    for (i = (a3 + 32); ; ++i)
    {
      v10 = *i;

      a1(&v11, &v10);
      if (v4)
      {
        break;
      }

      v4 = 0;

      sub_2208925CC();
      sub_2208925FC();
      sub_22089260C();
      sub_2208925DC();
      if (!--v6)
      {
        return v12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_220572464(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_22055D328();
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v39 = &v30 - v13;
  sub_22055CE80(0);
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281297DE8, 255, sub_22055CE80);
  v17 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v17)
  {
    v42 = MEMORY[0x277D84F90];
    sub_22070BC24(0, v17 & ~(v17 >> 63), 0);
    v40 = v42;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v33 = (v37 + 16);
      v34 = (v37 + 8);
      v30 = v37 + 32;
      v31 = v17;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v38 = v19 + 1;
        v20 = v15;
        v21 = v5;
        v22 = v16;
        v23 = v20;
        v24 = v22;
        v25 = sub_2208919BC();
        (*v33)(v10);
        v25(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v40;
        v42 = v40;
        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_22070BC24(v27 > 1, v28 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v26;
        (*(v37 + 32))(v26 + v29 + *(v37 + 72) * v28, v39, v7);
        v5 = v21;
        v15 = v23;
        v16 = v24;
        sub_2208919AC();
        ++v19;
        v10 = v32;
        if (v38 == v31)
        {
          return v40;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_2205727A4(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_22055CE80(0);
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v39 = &v30 - v13;
  sub_22055CF9C(0);
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281296F20, 255, sub_22055CF9C);
  v17 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v17)
  {
    v42 = MEMORY[0x277D84F90];
    sub_22070BF64(0, v17 & ~(v17 >> 63), 0);
    v40 = v42;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v33 = (v37 + 16);
      v34 = (v37 + 8);
      v30 = v37 + 32;
      v31 = v17;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v38 = v19 + 1;
        v20 = v15;
        v21 = v5;
        v22 = v16;
        v23 = v20;
        v24 = v22;
        v25 = sub_2208919BC();
        (*v33)(v10);
        v25(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v40;
        v42 = v40;
        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_22070BF64(v27 > 1, v28 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v26;
        (*(v37 + 32))(v26 + v29 + *(v37 + 72) * v28, v39, v7);
        v5 = v21;
        v15 = v23;
        v16 = v24;
        sub_2208919AC();
        ++v19;
        v10 = v32;
        if (v38 == v31)
        {
          return v40;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_220572AE4(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_2204EF5C8();
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v39 = &v30 - v13;
  sub_220577080();
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281296F40, 255, sub_220577080);
  v17 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v17)
  {
    v42 = MEMORY[0x277D84F90];
    sub_22070BFB4(0, v17 & ~(v17 >> 63), 0);
    v40 = v42;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v33 = (v37 + 16);
      v34 = (v37 + 8);
      v30 = v37 + 32;
      v31 = v17;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v38 = v19 + 1;
        v20 = v15;
        v21 = v5;
        v22 = v16;
        v23 = v20;
        v24 = v22;
        v25 = sub_2208919BC();
        (*v33)(v10);
        v25(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v40;
        v42 = v40;
        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_22070BFB4(v27 > 1, v28 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v26;
        (*(v37 + 32))(v26 + v29 + *(v37 + 72) * v28, v39, v7);
        v5 = v21;
        v15 = v23;
        v16 = v24;
        sub_2208919AC();
        ++v19;
        v10 = v32;
        if (v38 == v31)
        {
          return v40;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_220572E24(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_2204EECD0();
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v39 = &v30 - v13;
  sub_2204EF5C8();
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281297E18, 255, sub_2204EF5C8);
  v17 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v17)
  {
    v42 = MEMORY[0x277D84F90];
    sub_2204EF810(0, v17 & ~(v17 >> 63), 0);
    v40 = v42;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v33 = (v37 + 16);
      v34 = (v37 + 8);
      v30 = v37 + 32;
      v31 = v17;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v38 = v19 + 1;
        v20 = v15;
        v21 = v5;
        v22 = v16;
        v23 = v20;
        v24 = v22;
        v25 = sub_2208919BC();
        (*v33)(v10);
        v25(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v40;
        v42 = v40;
        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2204EF810(v27 > 1, v28 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v26;
        (*(v37 + 32))(v26 + v29 + *(v37 + 72) * v28, v39, v7);
        v5 = v21;
        v15 = v23;
        v16 = v24;
        sub_2208919AC();
        ++v19;
        v10 = v32;
        if (v38 == v31)
        {
          return v40;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_22057320C(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  sub_22055DE74();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576B2C();
  v29 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v34 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576C20();
  sub_2204BC2F4(&qword_27CF56C50, 255, sub_220576C20);
  v13 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v37 = MEMORY[0x277D84F90];
    sub_22070C14C(0, v13 & ~(v13 >> 63), 0);
    v35 = v37;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = v6;
      v16 = 0;
      v27 = (v15 + 16);
      v28 = (v15 + 8);
      v24[1] = v32 + 32;
      v25 = v13;
      v26 = v9;
      while (!__OFADD__(v16, 1))
      {
        v33 = v16 + 1;
        v17 = sub_2208919BC();
        (*v27)(v9);
        v17(v36, 0);
        v30(v9);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v18 = v9;
        v19 = v5;
        (*v28)(v18, v5);
        v20 = v35;
        v37 = v35;
        v22 = *(v35 + 16);
        v21 = *(v35 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_22070C14C(v21 > 1, v22 + 1, 1);
          v20 = v37;
        }

        *(v20 + 16) = v22 + 1;
        v23 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v35 = v20;
        (*(v32 + 32))(v20 + v23 + *(v32 + 72) * v22, v34, v29);
        sub_2208919AC();
        ++v16;
        v5 = v19;
        v9 = v26;
        if (v33 == v25)
        {
          return v35;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v28)(v9, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_2205735A8(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_220576D44();
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v39 = &v30 - v13;
  sub_2204D4924();
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281296E80, 255, sub_2204D4924);
  v17 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v17)
  {
    v42 = MEMORY[0x277D84F90];
    sub_22070C1EC(0, v17 & ~(v17 >> 63), 0);
    v40 = v42;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v33 = (v37 + 16);
      v34 = (v37 + 8);
      v30 = v37 + 32;
      v31 = v17;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v38 = v19 + 1;
        v20 = v15;
        v21 = v5;
        v22 = v16;
        v23 = v20;
        v24 = v22;
        v25 = sub_2208919BC();
        (*v33)(v10);
        v25(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v40;
        v42 = v40;
        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_22070C1EC(v27 > 1, v28 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v26;
        (*(v37 + 32))(v26 + v29 + *(v37 + 72) * v28, v39, v7);
        v5 = v21;
        v15 = v23;
        v16 = v24;
        sub_2208919AC();
        ++v19;
        v10 = v32;
        if (v38 == v31)
        {
          return v40;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_2205738E8(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_2204D4A18();
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v39 = &v30 - v13;
  sub_220576D44();
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_27CF56C60, 255, sub_220576D44);
  v17 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v17)
  {
    v42 = MEMORY[0x277D84F90];
    sub_22070C004(0, v17 & ~(v17 >> 63), 0);
    v40 = v42;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v33 = (v37 + 16);
      v34 = (v37 + 8);
      v30 = v37 + 32;
      v31 = v17;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v38 = v19 + 1;
        v20 = v15;
        v21 = v5;
        v22 = v16;
        v23 = v20;
        v24 = v22;
        v25 = sub_2208919BC();
        (*v33)(v10);
        v25(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v40;
        v42 = v40;
        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_22070C004(v27 > 1, v28 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v26;
        (*(v37 + 32))(v26 + v29 + *(v37 + 72) * v28, v39, v7);
        v5 = v21;
        v15 = v23;
        v16 = v24;
        sub_2208919AC();
        ++v19;
        v10 = v32;
        if (v38 == v31)
        {
          return v40;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_220573C28(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_2204FA2D0();
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v39 = &v30 - v13;
  sub_2204F1480();
  v15 = v14;
  v16 = sub_2204BC2F4(&unk_281296EB0, 255, sub_2204F1480);
  v17 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v17)
  {
    v42 = MEMORY[0x277D84F90];
    sub_22070C334(0, v17 & ~(v17 >> 63), 0);
    v40 = v42;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v33 = (v37 + 16);
      v34 = (v37 + 8);
      v30 = v37 + 32;
      v31 = v17;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v38 = v19 + 1;
        v20 = v15;
        v21 = v5;
        v22 = v16;
        v23 = v20;
        v24 = v22;
        v25 = sub_2208919BC();
        (*v33)(v10);
        v25(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v40;
        v42 = v40;
        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_22070C334(v27 > 1, v28 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v26;
        (*(v37 + 32))(v26 + v29 + *(v37 + 72) * v28, v39, v7);
        v5 = v21;
        v15 = v23;
        v16 = v24;
        sub_2208919AC();
        ++v19;
        v10 = v32;
        if (v38 == v31)
        {
          return v40;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_220573F68(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v19 = a1;
  v20 = a2;
  v18 = sub_22088585C();
  v6 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x277D84F90];
  if (!v10)
  {
    return v11;
  }

  v22 = MEMORY[0x277D84F90];
  sub_22070C40C(0, v10, 0);
  v11 = v22;
  v17 = v6 + 32;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v21[0] = *(i - 1);
    v21[1] = v13;

    v19(v21);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v22 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_22070C40C(v14 > 1, v15 + 1, 1);
      v11 = v22;
    }

    *(v11 + 16) = v15 + 1;
    (*(v6 + 32))(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v15, v9, v18);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_220574134(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_22046B19C();
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v39 = &v30 - v13;
  sub_2204A1D20();
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281296EE8, 255, sub_2204A1D20);
  v17 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v17)
  {
    v42 = MEMORY[0x277D84F90];
    sub_22070C45C(0, v17 & ~(v17 >> 63), 0);
    v40 = v42;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v33 = (v37 + 16);
      v34 = (v37 + 8);
      v30 = v37 + 32;
      v31 = v17;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v38 = v19 + 1;
        v20 = v15;
        v21 = v5;
        v22 = v16;
        v23 = v20;
        v24 = v22;
        v25 = sub_2208919BC();
        (*v33)(v10);
        v25(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v40;
        v42 = v40;
        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_22070C45C(v27 > 1, v28 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v26;
        (*(v37 + 32))(v26 + v29 + *(v37 + 72) * v28, v39, v7);
        v5 = v21;
        v15 = v23;
        v16 = v24;
        sub_2208919AC();
        ++v19;
        v10 = v32;
        if (v38 == v31)
        {
          return v40;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_220574474(void (*a1)(char *), uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v35 = a1;
  v36 = a2;
  sub_22046B36C();
  v7 = v6;
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v39 = &v30 - v13;
  sub_22046B19C();
  v15 = v14;
  v16 = sub_2204BC2F4(&qword_281297DB8, 255, sub_22046B19C);
  v17 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v17)
  {
    v42 = MEMORY[0x277D84F90];
    sub_2204AF9F4(0, v17 & ~(v17 >> 63), 0);
    v40 = v42;
    sub_22089193C();
    if ((v17 & 0x8000000000000000) == 0)
    {
      v19 = 0;
      v33 = (v37 + 16);
      v34 = (v37 + 8);
      v30 = v37 + 32;
      v31 = v17;
      v32 = v10;
      while (!__OFADD__(v19, 1))
      {
        v38 = v19 + 1;
        v20 = v15;
        v21 = v5;
        v22 = v16;
        v23 = v20;
        v24 = v22;
        v25 = sub_2208919BC();
        (*v33)(v10);
        v25(v41, 0);
        v35(v10);
        if (v4)
        {
          goto LABEL_13;
        }

        v4 = 0;
        (*v34)(v10, v7);
        v26 = v40;
        v42 = v40;
        v28 = *(v40 + 16);
        v27 = *(v40 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_2204AF9F4(v27 > 1, v28 + 1, 1);
          v26 = v42;
        }

        *(v26 + 16) = v28 + 1;
        v29 = (*(v37 + 80) + 32) & ~*(v37 + 80);
        v40 = v26;
        (*(v37 + 32))(v26 + v29 + *(v37 + 72) * v28, v39, v7);
        v5 = v21;
        v15 = v23;
        v16 = v24;
        sub_2208919AC();
        ++v19;
        v10 = v32;
        if (v38 == v31)
        {
          return v40;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v34)(v10, v7);

    __break(1u);
  }

  return result;
}

uint64_t sub_2205747B4(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  sub_220576D44();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576E38();
  v29 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v34 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204D4924();
  sub_2204BC2F4(&qword_281296E80, 255, sub_2204D4924);
  v13 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v37 = MEMORY[0x277D84F90];
    sub_22070CB6C(0, v13 & ~(v13 >> 63), 0);
    v35 = v37;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = v6;
      v16 = 0;
      v27 = (v15 + 16);
      v28 = (v15 + 8);
      v24[1] = v32 + 32;
      v25 = v13;
      v26 = v9;
      while (!__OFADD__(v16, 1))
      {
        v33 = v16 + 1;
        v17 = sub_2208919BC();
        (*v27)(v9);
        v17(v36, 0);
        v30(v9);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v18 = v9;
        v19 = v5;
        (*v28)(v18, v5);
        v20 = v35;
        v37 = v35;
        v22 = *(v35 + 16);
        v21 = *(v35 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_22070CB6C(v21 > 1, v22 + 1, 1);
          v20 = v37;
        }

        *(v20 + 16) = v22 + 1;
        v23 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v35 = v20;
        (*(v32 + 32))(v20 + v23 + *(v32 + 72) * v22, v34, v29);
        sub_2208919AC();
        ++v16;
        v5 = v19;
        v9 = v26;
        if (v33 == v25)
        {
          return v35;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v28)(v9, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_220574B50(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  sub_2204D4A18();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576F2C();
  v29 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v34 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576D44();
  sub_2204BC2F4(&qword_27CF56C60, 255, sub_220576D44);
  v13 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v37 = MEMORY[0x277D84F90];
    sub_22070CBBC(0, v13 & ~(v13 >> 63), 0);
    v35 = v37;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = v6;
      v16 = 0;
      v27 = (v15 + 16);
      v28 = (v15 + 8);
      v24[1] = v32 + 32;
      v25 = v13;
      v26 = v9;
      while (!__OFADD__(v16, 1))
      {
        v33 = v16 + 1;
        v17 = sub_2208919BC();
        (*v27)(v9);
        v17(v36, 0);
        v30(v9);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v18 = v9;
        v19 = v5;
        (*v28)(v18, v5);
        v20 = v35;
        v37 = v35;
        v22 = *(v35 + 16);
        v21 = *(v35 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_22070CBBC(v21 > 1, v22 + 1, 1);
          v20 = v37;
        }

        *(v20 + 16) = v22 + 1;
        v23 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v35 = v20;
        (*(v32 + 32))(v20 + v23 + *(v32 + 72) * v22, v34, v29);
        sub_2208919AC();
        ++v16;
        v5 = v19;
        v9 = v26;
        if (v33 == v25)
        {
          return v35;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v28)(v9, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_220574EEC(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  sub_22051D97C();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204F63C4();
  v29 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v34 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204FA2D0();
  sub_2204BC2F4(&qword_281297E70, 255, sub_2204FA2D0);
  v13 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v37 = MEMORY[0x277D84F90];
    sub_220505460(0, v13 & ~(v13 >> 63), 0);
    v35 = v37;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = v6;
      v16 = 0;
      v27 = (v15 + 16);
      v28 = (v15 + 8);
      v24[1] = v32 + 32;
      v25 = v13;
      v26 = v9;
      while (!__OFADD__(v16, 1))
      {
        v33 = v16 + 1;
        v17 = sub_2208919BC();
        (*v27)(v9);
        v17(v36, 0);
        v30(v9);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v18 = v9;
        v19 = v5;
        (*v28)(v18, v5);
        v20 = v35;
        v37 = v35;
        v22 = *(v35 + 16);
        v21 = *(v35 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_220505460(v21 > 1, v22 + 1, 1);
          v20 = v37;
        }

        *(v20 + 16) = v22 + 1;
        v23 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v35 = v20;
        (*(v32 + 32))(v20 + v23 + *(v32 + 72) * v22, v34, v29);
        sub_2208919AC();
        ++v16;
        v5 = v19;
        v9 = v26;
        if (v33 == v25)
        {
          return v35;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v28)(v9, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_220575288(void (*a1)(char *), uint64_t a2)
{
  v3 = v2;
  v30 = a1;
  v31 = a2;
  sub_2204EF5C8();
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576FC4();
  v29 = v10;
  v32 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v34 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220577080();
  sub_2204BC2F4(&qword_281296F40, 255, sub_220577080);
  v13 = sub_22089197C();
  result = MEMORY[0x277D84F90];
  if (v13)
  {
    v37 = MEMORY[0x277D84F90];
    sub_22070CCFC(0, v13 & ~(v13 >> 63), 0);
    v35 = v37;
    sub_22089193C();
    if ((v13 & 0x8000000000000000) == 0)
    {
      v15 = v6;
      v16 = 0;
      v27 = (v15 + 16);
      v28 = (v15 + 8);
      v24[1] = v32 + 32;
      v25 = v13;
      v26 = v9;
      while (!__OFADD__(v16, 1))
      {
        v33 = v16 + 1;
        v17 = sub_2208919BC();
        (*v27)(v9);
        v17(v36, 0);
        v30(v9);
        if (v3)
        {
          goto LABEL_13;
        }

        v3 = 0;
        v18 = v9;
        v19 = v5;
        (*v28)(v18, v5);
        v20 = v35;
        v37 = v35;
        v22 = *(v35 + 16);
        v21 = *(v35 + 24);
        if (v22 >= v21 >> 1)
        {
          sub_22070CCFC(v21 > 1, v22 + 1, 1);
          v20 = v37;
        }

        *(v20 + 16) = v22 + 1;
        v23 = (*(v32 + 80) + 32) & ~*(v32 + 80);
        v35 = v20;
        (*(v32 + 32))(v20 + v23 + *(v32 + 72) * v22, v34, v29);
        sub_2208919AC();
        ++v16;
        v5 = v19;
        v9 = v26;
        if (v33 == v25)
        {
          return v35;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_13:
    (*v28)(v9, v5);

    __break(1u);
  }

  return result;
}

uint64_t sub_22057567C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(BOOL, unint64_t, uint64_t), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v27 = a7;
  v28 = a1;
  v10 = v7;
  v29 = a2;
  v12 = a4(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12 - 8, v14);
  v16 = &v24 - v15;
  v17 = *(a3 + 16);
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
    return v18;
  }

  v30 = MEMORY[0x277D84F90];
  v25 = a5;
  a5(0, v17, 0);
  v18 = v30;
  v19 = *(a6(0) - 8);
  v20 = a3 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v26 = *(v19 + 72);
  while (1)
  {
    v28(v20);
    if (v10)
    {
      break;
    }

    v10 = 0;
    v30 = v18;
    v22 = *(v18 + 16);
    v21 = *(v18 + 24);
    if (v22 >= v21 >> 1)
    {
      v25(v21 > 1, v22 + 1, 1);
      v18 = v30;
    }

    *(v18 + 16) = v22 + 1;
    sub_220576CDC(v16, v18 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v22, v27);
    v20 += v26;
    if (!--v17)
    {
      return v18;
    }
  }

  __break(1u);
  return result;
}

void *sub_220575888(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v11[0] = MEMORY[0x277D84F90];
  sub_220576988(0, &qword_2812988E8, sub_2205768E0, MEMORY[0x277D6CB60]);
  swift_allocObject();
  v3[2] = sub_22088866C();
  v3[3] = a1;
  v3[4] = a2;
  sub_22046DA2C(a3, (v3 + 5));
  swift_getObjectType();
  v8 = qword_281296F90;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();
  sub_22057691C();

  sub_22088B80C();

  __swift_destroy_boxed_opaque_existential_1(v11);
  swift_allocObject();
  swift_weakInit();
  sub_22088685C();
  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v11);
  if (qword_281296FD8 != -1)
  {
    swift_once();
  }

  swift_allocObject();
  swift_weakInit();

  type metadata accessor for WatchlistMembershipCommandContext(0);
  sub_22088B77C();

  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_project_boxed_opaque_existential_1(a3, a3[3]);
  sub_2204BC2F4(&qword_28127FDE0, v9, type metadata accessor for WatchlistMembershipMenuGroupOptionProvider);

  sub_220885FAC();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v4;
}

uint64_t sub_220575BAC()
{
  sub_220576988(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v9 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getObjectType();
    if (qword_281296F90 != -1)
    {
      swift_once();
    }

    sub_22088685C();
    sub_22088B79C();
    __swift_project_boxed_opaque_existential_1((v5 + 40), *(v5 + 64));
    v6 = sub_220885FCC();
    MEMORY[0x28223BE20](v6, v7);
    v9[-2] = v3;
    v8 = sub_22057567C(sub_220577448, &v9[-4], v6, type metadata accessor for WatchlistMembershipCommandContext, sub_22070BE54, MEMORY[0x277D698E0], type metadata accessor for WatchlistMembershipCommandContext);

    v9[1] = v8;

    sub_22088865C();

    return sub_220576A0C(v3);
  }

  return result;
}

uint64_t sub_220575DD8()
{
  sub_220576988(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v9 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getObjectType();
    if (qword_281296F90 != -1)
    {
      swift_once();
    }

    sub_22088685C();
    sub_22088B79C();
    __swift_project_boxed_opaque_existential_1((v5 + 40), *(v5 + 64));
    v6 = sub_220885FCC();
    MEMORY[0x28223BE20](v6, v7);
    v9[-2] = v3;
    v8 = sub_22057567C(sub_220577448, &v9[-4], v6, type metadata accessor for WatchlistMembershipCommandContext, sub_22070BE54, MEMORY[0x277D698E0], type metadata accessor for WatchlistMembershipCommandContext);

    v9[1] = v8;

    sub_22088865C();

    return sub_220576A0C(v3);
  }

  return result;
}

uint64_t sub_220576004(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22088F11C();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22088F14C();
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x28223BE20](v8, v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22088F17C();
  v13 = *(v12 - 8);
  v15 = MEMORY[0x28223BE20](v12, v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v18);
  v20 = &v24 - v19;
  sub_22046D5B4();
  v21 = sub_220891D0C();
  sub_22088F16C();
  sub_22088F18C();
  v24 = *(v13 + 8);
  v24(v17, v12);
  aBlock[4] = sub_220576980;
  aBlock[5] = a3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2204C35E8;
  aBlock[3] = &block_descriptor_2;
  v22 = _Block_copy(aBlock);

  sub_22088F13C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2204BC2F4(&qword_281296CA0, 255, MEMORY[0x277D85198]);
  sub_22056D204();
  sub_2204BC2F4(&qword_28127EA50, 255, sub_22056D204);
  sub_2208923FC();
  MEMORY[0x223D89E80](v20, v11, v7, v22);
  _Block_release(v22);

  (*(v27 + 8))(v7, v4);
  (*(v25 + 8))(v11, v26);
  return (v24)(v20, v12);
}

uint64_t sub_2205763B4()
{
  sub_220576988(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v0 - 8, v1);
  v3 = v9 - v2;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_getObjectType();
    if (qword_281296F90 != -1)
    {
      swift_once();
    }

    sub_22088685C();
    sub_22088B79C();
    __swift_project_boxed_opaque_existential_1((v5 + 40), *(v5 + 64));
    v6 = sub_220885FCC();
    MEMORY[0x28223BE20](v6, v7);
    v9[-2] = v3;
    v8 = sub_22057567C(sub_2205769EC, &v9[-4], v6, type metadata accessor for WatchlistMembershipCommandContext, sub_22070BE54, MEMORY[0x277D698E0], type metadata accessor for WatchlistMembershipCommandContext);

    v9[1] = v8;

    sub_22088865C();

    return sub_220576A0C(v3);
  }

  return result;
}

uint64_t sub_2205765E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_220886A4C();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = type metadata accessor for WatchlistMembershipCommandContext(0);
  return sub_220576A98(a2, a3 + *(v7 + 20));
}

uint64_t sub_22057666C()
{

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_2205766D8()
{
  sub_220576988(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v9 - v3;
  swift_getObjectType();
  if (qword_281296F90 != -1)
  {
    swift_once();
  }

  sub_22088685C();
  sub_22088B79C();
  __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
  v5 = sub_220885FCC();
  MEMORY[0x28223BE20](v5, v6);
  v9[-2] = v4;
  v7 = sub_22057567C(sub_220577448, &v9[-4], v5, type metadata accessor for WatchlistMembershipCommandContext, sub_22070BE54, MEMORY[0x277D698E0], type metadata accessor for WatchlistMembershipCommandContext);

  v9[0] = v7;

  sub_22088865C();

  return sub_220576A0C(v4);
}

unint64_t sub_22057691C()
{
  result = qword_28128D000;
  if (!qword_28128D000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28128D000);
  }

  return result;
}

void sub_220576988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220576A0C(uint64_t a1)
{
  sub_220576988(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_220576A98(uint64_t a1, uint64_t a2)
{
  sub_220576988(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_220576B2C()
{
  if (!qword_27CF56C38)
  {
    type metadata accessor for ManageWatchlistsLayoutSectionDescriptor();
    type metadata accessor for ManageWatchlistsLayoutModel();
    sub_2204BC2F4(&qword_27CF56C40, 255, type metadata accessor for ManageWatchlistsLayoutSectionDescriptor);
    sub_2204BC2F4(&qword_27CF56B18, 255, type metadata accessor for ManageWatchlistsLayoutModel);
    v0 = sub_22088C36C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56C38);
    }
  }
}

void sub_220576C20()
{
  if (!qword_27CF56C48)
  {
    type metadata accessor for ManageWatchlistsModel();
    sub_22055DF30();
    sub_2204BC2F4(&qword_27CF59130, 255, type metadata accessor for ManageWatchlistsModel);
    v0 = sub_22088E81C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56C48);
    }
  }
}

uint64_t sub_220576CDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_220576D44()
{
  if (!qword_281297E30)
  {
    type metadata accessor for StockSearchSectionDescriptor();
    type metadata accessor for StockSearchModel();
    sub_2204BC2F4(qword_281286DF0, 255, type metadata accessor for StockSearchSectionDescriptor);
    sub_2204BC2F4(&qword_281291EB0, 255, type metadata accessor for StockSearchModel);
    v0 = sub_22088B39C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297E30);
    }
  }
}

void sub_220576E38()
{
  if (!qword_2812979E0)
  {
    type metadata accessor for StockSearchLayoutSectionDescriptor();
    type metadata accessor for StockSearchLayoutModel();
    sub_2204BC2F4(qword_2812822F8, 255, type metadata accessor for StockSearchLayoutSectionDescriptor);
    sub_2204BC2F4(&qword_28128C340, 255, type metadata accessor for StockSearchLayoutModel);
    v0 = sub_22088C36C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812979E0);
    }
  }
}

void sub_220576F2C()
{
  if (!qword_27CF56C58)
  {
    type metadata accessor for StockSearchLayoutModel();
    sub_2204BC2F4(&qword_28128C340, 255, type metadata accessor for StockSearchLayoutModel);
    v0 = sub_22088BC4C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56C58);
    }
  }
}

void sub_220576FC4()
{
  if (!qword_2812979D8)
  {
    type metadata accessor for TickerLayoutModel();
    sub_22048466C();
    sub_2204BC2F4(qword_2812910F0, 255, type metadata accessor for TickerLayoutModel);
    v0 = sub_22088C36C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812979D8);
    }
  }
}

void sub_220577080()
{
  if (!qword_281296F38)
  {
    type metadata accessor for TickerModel();
    sub_220483B88();
    sub_2204BC2F4(&qword_281294CA0, 255, type metadata accessor for TickerModel);
    v0 = sub_22088E81C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296F38);
    }
  }
}

uint64_t sub_22057713C(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v9 = sub_220886A4C();
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v12 = v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC();
  v27 = v13;
  v34 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v14);
  v36 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a5 >> 1;
  v32 = a4;
  v16 = (a5 >> 1) - a4;
  if (__OFSUB__(a5 >> 1, a4))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = MEMORY[0x277D84F90];
  if (!v16)
  {
    return v17;
  }

  v37 = MEMORY[0x277D84F90];
  v33 = v16;
  sub_22070CE0C(0, v16 & ~(v16 >> 63), 0);
  v18 = v33;
  if ((v33 & 0x8000000000000000) == 0)
  {
    v19 = 0;
    v17 = v37;
    v25[2] = v35 + 16;
    v26 = (v35 + 8);
    v25[1] = v34 + 32;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if ((v32 + v19) >= v31 || v19 >= v18)
      {
        goto LABEL_14;
      }

      (*(v35 + 16))(v12, v30 + *(v35 + 72) * (v32 + v19), v9);
      v28(v12);
      if (v6)
      {
        goto LABEL_17;
      }

      v6 = 0;
      v21 = v12;
      (*v26)(v12, v9);
      v37 = v17;
      v23 = *(v17 + 16);
      v22 = *(v17 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_22070CE0C(v22 > 1, v23 + 1, 1);
        v17 = v37;
      }

      *(v17 + 16) = v23 + 1;
      (*(v34 + 32))(v17 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v23, v36, v27);
      ++v19;
      v18 = v33;
      v12 = v21;
      if (v20 == v33)
      {
        return v17;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  (*v26)(v12, v9);

  __break(1u);
  return result;
}

uint64_t sub_220577460()
{
  sub_22088FA1C();
  sub_22088FA0C();
  sub_22055CF9C(0);
  sub_22088E7AC();
  if (v3)
  {
    sub_22088F45C();
    swift_dynamicCast();
  }

  else
  {
    sub_22056D130(v2);
  }

  type metadata accessor for StockFeedServiceConfig();
  sub_22044429C(&qword_28128C4E0, type metadata accessor for StockFeedServiceConfig);
  v0 = sub_22088F9FC();

  return v0;
}

uint64_t sub_220577570(uint64_t *a1, int a2)
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

uint64_t sub_2205775B8(uint64_t result, int a2, int a3)
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

void *sub_220577604(void *a1, void *a2, void *a3)
{
  v6 = a1;
  v7 = a3;
  v8 = a2;
  return a1;
}

uint64_t sub_220577688@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D6DD08];
  v3 = sub_22088C07C();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_220577720()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();

  return v2;
}

uint64_t sub_2205777E0(void *a1)
{
  if ([a1 horizontalSizeClass] == 1)
  {
    sub_22088689C();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_220884CAC();

  return v3;
}

uint64_t sub_220577960(void *a1)
{
  if ([a1 horizontalSizeClass] == 1)
  {
    return 0;
  }

  sub_22088689C();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_220884CAC();

  return v4;
}

uint64_t sub_220577A84(void *a1)
{
  [a1 horizontalSizeClass];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_220884CAC();

  return v3;
}

uint64_t sub_220577BC4(void (*a1)(char *, void, uint64_t), uint64_t a2, void *a3, uint64_t a4)
{
  v239 = a4;
  v234 = a3;
  v214 = a1;
  WatchlistViewLayoutAttributes = type metadata accessor for CreateWatchlistViewLayoutAttributes();
  MEMORY[0x28223BE20](WatchlistViewLayoutAttributes - 8, v5);
  v207 = (&v200 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  WatchlistViewModel = type metadata accessor for CreateWatchlistViewModel();
  MEMORY[0x28223BE20](WatchlistViewModel - 8, v8);
  v206 = &v200 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DDDC();
  v213 = v10;
  v211 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v209 = v12;
  v210 = &v200 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22088AEBC();
  v202 = *(v13 - 8);
  v203 = v13;
  MEMORY[0x28223BE20](v13, v14);
  v201 = (&v200 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_22088AE9C();
  v231 = *(v16 - 8);
  v232 = v16;
  MEMORY[0x28223BE20](v16, v17);
  v233 = &v200 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220576B2C();
  v227 = *(v19 - 8);
  v228 = v19;
  MEMORY[0x28223BE20](v19, v20);
  v226 = &v200 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22057AD48(0, &qword_27CF56CA0, MEMORY[0x277D6D618]);
  v224 = *(v22 - 8);
  v225 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v223 = &v200 - v24;
  v25 = type metadata accessor for ManageWatchlistsContentMode(0);
  MEMORY[0x28223BE20](v25 - 8, v26);
  v200 = &v200 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v29);
  v215 = &v200 - v30;
  MEMORY[0x28223BE20](v31, v32);
  v34 = &v200 - v33;
  MEMORY[0x28223BE20](v35, v36);
  v216 = &v200 - v37;
  v38 = MEMORY[0x277D83D88];
  sub_220447570(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v39 - 8, v40);
  v217 = &v200 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42, v43);
  v205 = &v200 - v44;
  v45 = sub_220886A4C();
  v237 = *(v45 - 8);
  v238 = v45;
  MEMORY[0x28223BE20](v45, v46);
  v208 = &v200 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48, v49);
  v204 = &v200 - v50;
  sub_220447570(0, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext, v38);
  MEMORY[0x28223BE20](v51 - 8, v52);
  v212 = &v200 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v200 - v56;
  v58 = sub_22088CA0C();
  v220 = *(v58 - 8);
  v221 = v58;
  MEMORY[0x28223BE20](v58, v59);
  v222 = &v200 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_22088B8CC();
  v218 = *(v61 - 8);
  v219 = v61;
  MEMORY[0x28223BE20](v61, v62);
  v64 = &v200 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  v230 = sub_22088AE7C();
  v236 = *(v230 - 8);
  MEMORY[0x28223BE20](v230, v65);
  v229 = &v200 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447570(0, &qword_2812993D0, MEMORY[0x277CC9AF8], v38);
  MEMORY[0x28223BE20](v67 - 8, v68);
  v70 = &v200 - v69;
  v235 = type metadata accessor for WatchlistCellViewModel(0);
  MEMORY[0x28223BE20](v235, v71);
  v73 = &v200 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v74, v75);
  v77 = &v200 - v76;
  v78 = type metadata accessor for ManageWatchlistsLayoutModel();
  MEMORY[0x28223BE20](v78, v79);
  v81 = &v200 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055DD44();
  sub_22088BC3C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v217 = v34;
    sub_22057B014();
    v137 = &v81[*(v136 + 48)];
    v138 = *(v137 + 9);
    v255 = *(v137 + 8);
    v256 = v138;
    v257 = *(v137 + 20);
    v139 = *(v137 + 5);
    v251 = *(v137 + 4);
    v252 = v139;
    v140 = *(v137 + 7);
    v253 = *(v137 + 6);
    v254 = v140;
    v141 = *(v137 + 1);
    v247 = *v137;
    v248 = v141;
    v142 = *(v137 + 3);
    v249 = *(v137 + 2);
    v250 = v142;
    sub_22057AEB0(v81, v77, type metadata accessor for WatchlistCellViewModel);
    sub_22057B080();
    v143 = v239;
    v144 = sub_2208919EC();
    v145 = sub_22088AF3C();
    v146 = sub_2208854AC();
    v147 = *(v146 - 8);
    (*(v147 + 16))(v70, v143, v146);
    (*(v147 + 56))(v70, 0, 1, v146);
    v148 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_indexPath;
    swift_beginAccess();
    sub_22057B114(v70, v145 + v148);
    swift_endAccess();

    v149 = [objc_opt_self() secondarySystemBackgroundColor];
    [v144 setBackgroundColor_];

    v150 = sub_22088AF4C();
    v151 = *(v236 + 104);
    LODWORD(v215) = *MEMORY[0x277D6D4C0];
    v236 += 104;
    v214 = v151;
    v151(v229);
    sub_22088AE8C();

    (*(v218 + 104))(v64, *MEMORY[0x277D6D920], v219);
    sub_22088AF2C();
    v152 = v240;
    v153 = sub_22088AF3C();
    sub_22066F220(v77, &v247, v153);

    sub_22057B1A8(v144);
    v154 = sub_22088AF3C();
    v155 = *&v154[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton];

    v156 = v152[13];
    v218 = v152[14];
    v219 = v156;
    (*(v220 + 104))(v222, *MEMORY[0x277D6E0F8], v221);
    v157 = v152[16];
    v242 = sub_22088731C();
    v243 = sub_22057B8BC(&qword_281298BF0, MEMORY[0x277CEAEA8]);
    v241 = v157;
    v244 = 0u;
    v245 = 0u;
    v246 = 1;
    sub_22088C4DC();
    swift_allocObject();

    sub_22088C4BC();
    v158 = v204;
    (*(v237 + 16))();
    v159 = v216;
    sub_22057B7F0(v152 + OBJC_IVAR____TtC8StocksUI41ManageWatchlistsBlueprintViewCellProvider_contentMode, v216, type metadata accessor for ManageWatchlistsContentMode);
    sub_22057B2D0();
    v161 = *(v160 - 1);
    v221 = *(v161 + 48);
    v222 = v160;
    v220 = v161 + 48;
    LODWORD(v159) = (v221)(v159, 1);
    v162 = sub_22088685C();
    v163 = 1;
    v164 = v162;
    v165 = *(v162 - 8);
    v166 = v165;
    v167 = v205;
    v234 = v162;
    if (v159 != 1)
    {
      (*(v165 + 32))(v205, v216, v162);
      v164 = v234;
      v163 = 0;
    }

    (*(v166 + 56))(v167, v163, 1, v164);
    (*(v237 + 32))(v57, v158, v238);
    v168 = type metadata accessor for WatchlistMembershipCommandContext(0);
    sub_22057B318(v167, &v57[*(v168 + 20)]);
    (*(*(v168 - 8) + 56))(v57, 0, 1, v168);
    sub_22088BB7C();

    sub_22057B3AC(v57, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
    v241 = v240[15];
    sub_22057B41C(0);
    sub_22057B8BC(&qword_27CF56CE8, sub_22057B41C);
    v169 = v223;
    sub_22088CFDC();
    sub_22088549C();
    v170 = v225;
    v171 = v226;
    sub_22088B08C();
    (*(v224 + 8))(v169, v170);
    sub_22057B8BC(&qword_27CF56CF0, sub_220576B2C);
    v172 = v228;
    sub_22089193C();
    sub_22089199C();
    v173 = sub_22089198C();
    (*(v227 + 8))(v171, v172);
    v174 = sub_22088AF4C();
    v175 = *(v231 + 104);
    if (v173 == 1)
    {
      v175(v233, *MEMORY[0x277D6D4D0], v232);
      sub_22088AEAC();
    }

    else
    {
      v175(v233, *MEMORY[0x277D6D4D8], v232);
      sub_22088AEAC();

      v188 = sub_22088AF4C();
      v190 = v201;
      v189 = v202;
      *v201 = 0x4000000000000000;
      (*(v189 + 104))(v190, *MEMORY[0x277D6D4E0], v203);
      sub_22088AECC();

      v174 = sub_22088AF4C();
      v214(v229, v215, v230);
      sub_22088AE8C();
    }

    v191 = sub_22088AF3C();
    [v191 setIsAccessibilityElement_];

    v192 = v144;
    v193 = sub_22089132C();
    [v192 setAccessibilityLabel_];

    v194 = v217;
    sub_22057B7F0(&v77[*(v235 + 32)], v217, type metadata accessor for ManageWatchlistsContentMode);
    if ((v221)(v194, 1, v222) == 1)
    {
      sub_22057AFB4(v77, type metadata accessor for WatchlistCellViewModel);
    }

    else
    {
      sub_22057B43C(v192);
      sub_22057AFB4(v77, type metadata accessor for WatchlistCellViewModel);
      (*(v166 + 8))(v194, v234);
    }

    return v192;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_22057AE3C();
    v177 = *(v176 + 48);
    v178 = v206;
    sub_22057AEB0(v81, v206, type metadata accessor for CreateWatchlistViewModel);
    v179 = v207;
    sub_22057AEB0(&v81[v177], v207, type metadata accessor for CreateWatchlistViewLayoutAttributes);
    sub_22057AF18();
    v180 = sub_2208919EC();
    v181 = sub_22088AF4C();
    (*(v231 + 104))(v233, *MEMORY[0x277D6D4D0], v232);
    sub_22088AEAC();

    v182 = sub_22088AF3C();
    sub_220748C00(v178, v179, v182);

    v183 = sub_22088AF3C();
    v184 = *&v183[OBJC_IVAR____TtC8StocksUI19CreateWatchlistView_onTap];

    v185 = swift_allocObject();
    swift_weakInit();
    v186 = swift_allocObject();
    *(v186 + 16) = v185;
    *(v186 + 24) = v180;
    v187 = v180;

    sub_22057AFB4(v179, type metadata accessor for CreateWatchlistViewLayoutAttributes);
    sub_22057AFB4(v178, type metadata accessor for CreateWatchlistViewModel);
    return v187;
  }

  sub_22057B014();
  v84 = &v81[*(v83 + 48)];
  v85 = *(v84 + 9);
  v255 = *(v84 + 8);
  v256 = v85;
  v257 = *(v84 + 20);
  v86 = *(v84 + 5);
  v251 = *(v84 + 4);
  v252 = v86;
  v87 = *(v84 + 7);
  v253 = *(v84 + 6);
  v254 = v87;
  v88 = *(v84 + 1);
  v247 = *v84;
  v248 = v88;
  v89 = *(v84 + 3);
  v249 = *(v84 + 2);
  v250 = v89;
  sub_22057AEB0(v81, v73, type metadata accessor for WatchlistCellViewModel);
  sub_22057B080();
  v90 = v239;
  v91 = sub_2208919EC();
  v92 = sub_22088AF3C();
  v93 = sub_2208854AC();
  v94 = *(v93 - 8);
  (*(v94 + 16))(v70, v90, v93);
  (*(v94 + 56))(v70, 0, 1, v93);
  v95 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_indexPath;
  swift_beginAccess();
  sub_22057B114(v70, v92 + v95);
  swift_endAccess();

  v96 = [objc_opt_self() secondarySystemBackgroundColor];
  [v91 setBackgroundColor_];

  v97 = sub_22088AF4C();
  (*(v236 + 104))(v229, *MEMORY[0x277D6D4C8], v230);
  sub_22088AE8C();

  (*(v218 + 104))(v64, *MEMORY[0x277D6D920], v219);
  sub_22088AF2C();
  v98 = sub_22088AF3C();
  sub_22066F220(v73, &v247, v98);

  sub_22057B1A8(v91);
  v99 = sub_22088AF3C();
  v100 = *&v99[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onTapEditName];

  v101 = swift_allocObject();
  swift_weakInit();
  v102 = v211;
  v103 = v73;
  v104 = v210;
  v105 = v213;
  (*(v211 + 16))(v210, v214, v213);
  v106 = (*(v102 + 80) + 24) & ~*(v102 + 80);
  v107 = swift_allocObject();
  *(v107 + 16) = v101;
  v108 = v104;
  v109 = v103;
  (*(v102 + 32))(v107 + v106, v108, v105);

  v234 = v91;
  v110 = sub_22088AF3C();
  v111 = *&v110[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton];

  v112 = v240;
  v236 = v240[13];
  (*(v220 + 104))(v222, *MEMORY[0x277D6E0F8], v221);
  v113 = v112[16];
  v242 = sub_22088731C();
  v243 = sub_22057B8BC(&qword_281298BF0, MEMORY[0x277CEAEA8]);
  v241 = v113;
  v244 = 0u;
  v245 = 0u;
  v246 = 1;
  sub_22088C4DC();
  swift_allocObject();

  sub_22088C4BC();
  v114 = &v103[*(v235 + 28)];
  v115 = v208;
  (*(v237 + 16))(v208, v114, v238);
  v116 = v215;
  sub_22057B7F0(v112 + OBJC_IVAR____TtC8StocksUI41ManageWatchlistsBlueprintViewCellProvider_contentMode, v215, type metadata accessor for ManageWatchlistsContentMode);
  sub_22057B2D0();
  v118 = *(v117 - 8);
  v229 = *(v118 + 48);
  v230 = v117;
  v222 = (v118 + 48);
  LODWORD(v113) = (v229)(v116, 1);
  v119 = sub_22088685C();
  v120 = 1;
  v121 = v119;
  v122 = *(v119 - 8);
  if (v113 != 1)
  {
    (*(*(v119 - 8) + 32))(v217, v116, v119);
    v120 = 0;
  }

  v221 = v122;
  v123 = v217;
  (*(v122 + 56))(v217, v120, 1, v121);
  v124 = v212;
  (*(v237 + 32))(v212, v115, v238);
  v125 = type metadata accessor for WatchlistMembershipCommandContext(0);
  sub_22057B318(v123, v124 + *(v125 + 20));
  (*(*(v125 - 8) + 56))(v124, 0, 1, v125);
  sub_22088BB7C();

  sub_22057B3AC(v124, &qword_27CF56CA8, type metadata accessor for WatchlistMembershipCommandContext);
  v241 = v240[15];
  sub_22057B41C(0);
  sub_22057B8BC(&qword_27CF56CE8, sub_22057B41C);
  v126 = v223;
  sub_22088CFDC();
  sub_22088549C();
  v127 = v225;
  v128 = v226;
  sub_22088B08C();
  (*(v224 + 8))(v126, v127);
  sub_22057B8BC(&qword_27CF56CF0, sub_220576B2C);
  v129 = v228;
  sub_22089193C();
  sub_22089199C();
  v130 = sub_22089198C();
  (*(v227 + 8))(v128, v129);
  result = sub_22088548C();
  v132 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  v133 = v234;
  v134 = sub_22088AF4C();
  v135 = *(v231 + 104);
  if (v130 == v132)
  {
    v135(v233, *MEMORY[0x277D6D4D0], v232);
    sub_22088AEAC();
  }

  else
  {
    v135(v233, *MEMORY[0x277D6D4D8], v232);
    sub_22088AEAC();

    v134 = sub_22088AF4C();
    v196 = v201;
    v195 = v202;
    *v201 = 0x3FF0000000000000;
    (*(v195 + 104))(v196, *MEMORY[0x277D6D4E0], v203);
    sub_22088AECC();
  }

  v192 = v133;
  [v192 setIsAccessibilityElement_];
  v197 = sub_22088AF3C();
  [v197 setIsAccessibilityElement_];

  v198 = sub_22089132C();
  [v192 setAccessibilityLabel_];

  if ((*(v109 + 32) & 1) == 0)
  {
    v199 = v200;
    sub_22057B7F0(v109 + *(v235 + 32), v200, type metadata accessor for ManageWatchlistsContentMode);
    if ((v229)(v199, 1, v230) != 1)
    {
      sub_22057B43C(v192);
      sub_22057AFB4(v109, type metadata accessor for WatchlistCellViewModel);
      (*(v221 + 8))(v199, v121);
      return v192;
    }

    sub_22057B660(v192);
  }

  sub_22057AFB4(v109, type metadata accessor for WatchlistCellViewModel);
  return v192;
}

uint64_t sub_22057975C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_22070FEE4(a2);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_2205797E8(uint64_t a1, void *a2)
{
  v54 = a2;
  v2 = sub_22088F11C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088F14C();
  v56 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v8);
  v55 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ManageWatchlistsContentMode(0);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220447570(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v49 - v16;
  v18 = type metadata accessor for WatchlistCreationRouteModel();
  v53 = *(v18 - 8);
  v19 = *(v53 + 64);
  MEMORY[0x28223BE20](v18, v20);
  v21 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v23);
  v57 = &v49 - v24;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v26 = result;
    v49 = v6;
    v50 = v7;
    v51 = v3;
    v52 = v2;
    sub_22057B7F0(result + OBJC_IVAR____TtC8StocksUI41ManageWatchlistsBlueprintViewCellProvider_contentMode, v13, type metadata accessor for ManageWatchlistsContentMode);
    sub_22057B2D0();
    v28 = 1;
    v29 = (*(*(v27 - 8) + 48))(v13, 1, v27);
    v30 = sub_22088685C();
    v31 = *(v30 - 8);
    if (v29 != 1)
    {
      (*(*(v30 - 8) + 32))(v17, v13, v30);
      v28 = 0;
    }

    (*(v31 + 56))(v17, v28, 1, v30);
    v32 = swift_allocObject();
    v33 = v54;
    *(v32 + 16) = v26;
    *(v32 + 24) = v33;
    v34 = v57;
    sub_22057B318(v17, v57);
    v35 = (v34 + *(v18 + 20));
    *v35 = sub_22057B7E8;
    v35[1] = v32;
    Strong = swift_unknownObjectWeakLoadStrong();

    v37 = v33;
    v39 = v49;
    v38 = v50;
    if (Strong)
    {
      v40 = [Strong navigationController];
      if (v40)
      {
        v41 = v40;
        [v40 dismissViewControllerAnimated:1 completion:0];
      }

      swift_unknownObjectRelease();
    }

    sub_22046D5B4();
    v42 = sub_220891D0C();
    v43 = v57;
    sub_22057B7F0(v57, v21, type metadata accessor for WatchlistCreationRouteModel);
    v44 = (*(v53 + 80) + 24) & ~*(v53 + 80);
    v45 = swift_allocObject();
    *(v45 + 16) = v26;
    sub_22057AEB0(v21, v45 + v44, type metadata accessor for WatchlistCreationRouteModel);
    aBlock[4] = sub_22057B858;
    aBlock[5] = v45;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2204C35E8;
    aBlock[3] = &block_descriptor_29;
    v46 = _Block_copy(aBlock);

    v47 = v55;
    sub_22088F13C();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22057B8BC(&qword_281296CA0, MEMORY[0x277D85198]);
    sub_220447570(0, &qword_28127EA60, MEMORY[0x277D85198], MEMORY[0x277D83940]);
    sub_2204B6C74();
    v48 = v52;
    sub_2208923FC();
    MEMORY[0x223D89EC0](0, v47, v39, v46);
    _Block_release(v46);

    (*(v51 + 8))(v39, v48);
    (*(v56 + 8))(v47, v38);
    return sub_22057AFB4(v43, type metadata accessor for WatchlistCreationRouteModel);
  }

  return result;
}

uint64_t sub_220579E6C(uint64_t a1)
{
  sub_220447570(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v23 - v4;
  v6 = sub_22088CA0C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22088685C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for ManageWatchlistsContentMode(0);
  MEMORY[0x28223BE20](v16 - 8, v17);
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22057B7F0(a1 + OBJC_IVAR____TtC8StocksUI41ManageWatchlistsBlueprintViewCellProvider_contentMode, v19, type metadata accessor for ManageWatchlistsContentMode);
  sub_22057B2D0();
  if ((*(*(v20 - 8) + 48))(v19, 1, v20) == 1)
  {
    swift_getObjectType();
    if (qword_281296F80 != -1)
    {
      swift_once();
    }

    return sub_22088B82C();
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    (*(v7 + 104))(v10, *MEMORY[0x277D6E0E0], v6);
    v22 = *(a1 + 128);
    v23[4] = sub_22088731C();
    v23[5] = sub_22057B8BC(&qword_281298BF0, MEMORY[0x277CEAEA8]);
    v23[1] = v22;

    sub_22088AF3C();
    v24 = 0u;
    v25 = 0u;
    v26 = 1;
    sub_22088C4DC();
    swift_allocObject();
    sub_22088C4BC();
    swift_getObjectType();
    if (qword_281296F90 != -1)
    {
      swift_once();
    }

    (*(v12 + 16))(v5, v15, v11);
    (*(v12 + 56))(v5, 0, 1, v11);

    sub_22088B7AC();

    sub_22057B3AC(v5, &qword_281299060, MEMORY[0x277D69810]);
    return (*(v12 + 8))(v15, v11);
  }
}

uint64_t sub_22057A328(uint64_t a1, uint64_t a2)
{
  sub_220447570(0, &qword_27CF56CF8, type metadata accessor for CreateWatchlistCommandContext, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = &v9 - v5;
  swift_getObjectType();
  if (qword_281296F88 != -1)
  {
    swift_once();
  }

  sub_22057B7F0(a2, v6, type metadata accessor for WatchlistCreationRouteModel);
  WatchlistCommandContext = type metadata accessor for CreateWatchlistCommandContext(0);
  (*(*(WatchlistCommandContext - 8) + 56))(v6, 0, 1, WatchlistCommandContext);
  sub_22088B81C();
  return sub_22057B3AC(v6, &qword_27CF56CF8, type metadata accessor for CreateWatchlistCommandContext);
}

BOOL sub_22057A4C8()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = sub_22088AF3C();

    v2 = *&v1[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onTapEditName];
    MEMORY[0x223D86300]();
  }

  return Strong != 0;
}

uint64_t sub_22057A558(uint64_t a1)
{
  v1 = *(a1 + 32);

  LOBYTE(v1) = v1(v2);

  return v1 & 1;
}

BOOL sub_22057A598()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = sub_22088AF3C();
    v2 = *&v1[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton];

    [v2 sendActionsForControlEvents_];
  }

  return Strong != 0;
}

uint64_t sub_22057A634()
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = sub_22088AF3C();
    v3 = *&v2[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton];

    sub_22088BB3C();
    if (v6 == 2)
    {
LABEL_3:

      return 0;
    }

    if (v6)
    {
      v4 = sub_2208928BC();

      if ((v4 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
    }

    v5 = *MEMORY[0x277D76598];

    return v5;
  }

  return result;
}

uint64_t sub_22057A748(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

void sub_22057A788()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();
  v4 = v3;

  qword_27CF56C68 = v2;
  unk_27CF56C70 = v4;
}

void sub_22057A854()
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v1 = [objc_opt_self() bundleForClass_];
  v2 = sub_220884CAC();
  v4 = v3;

  qword_27CF56C78 = v2;
  unk_27CF56C80 = v4;
}

uint64_t sub_22057A920()
{
  sub_22054B9F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  sub_22057AFB4(v0 + OBJC_IVAR____TtC8StocksUI41ManageWatchlistsBlueprintViewCellProvider_contentMode, type metadata accessor for ManageWatchlistsContentMode);
  return v0;
}

uint64_t sub_22057A994()
{
  sub_22057A920();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ManageWatchlistsBlueprintViewCellProvider()
{
  result = qword_27CF56C90;
  if (!qword_27CF56C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22057AA40()
{
  result = type metadata accessor for ManageWatchlistsContentMode(319);
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

uint64_t sub_22057AB04()
{
  sub_22057B080();
  sub_2208919FC();
  sub_22057AF18();
  return sub_2208919FC();
}

uint64_t sub_22057AB54@<X0>(void (*a1)(char *, void, uint64_t)@<X0>, uint64_t a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_220577BC4(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_22057AB84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_22046DA2C(v2 + 32, v12);
  v4 = v13;
  v5 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v6 = *(v5 + 8);
  v7 = *(v6 + 8);
  v10 = v4;
  v11 = v5;
  __swift_allocate_boxed_opaque_existential_1(&v9);
  v7(a2, v4, v6);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1(v2 + 32);
  sub_220457328(&v9, v2 + 32);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1(v12);
  swift_getObjectType();
  sub_22088D31C();
  swift_getObjectType();
  return sub_22088D31C();
}

void sub_22057AD48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for ManageWatchlistsLayoutSectionDescriptor();
    v8[1] = type metadata accessor for ManageWatchlistsLayoutModel();
    v8[2] = sub_22057B8BC(&qword_27CF56C40, type metadata accessor for ManageWatchlistsLayoutSectionDescriptor);
    v8[3] = sub_22057B8BC(&qword_27CF56B18, type metadata accessor for ManageWatchlistsLayoutModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_22057AE3C()
{
  if (!qword_27CF56CB0)
  {
    type metadata accessor for CreateWatchlistViewModel();
    type metadata accessor for CreateWatchlistViewLayoutAttributes();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF56CB0);
    }
  }
}

uint64_t sub_22057AEB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_22057AF18()
{
  if (!qword_27CF56CB8)
  {
    type metadata accessor for CreateWatchlistView();
    sub_22057B8BC(&qword_27CF56CC0, type metadata accessor for CreateWatchlistView);
    v0 = sub_22088AF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56CB8);
    }
  }
}

uint64_t sub_22057AFB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22057B014()
{
  if (!qword_27CF56CC8)
  {
    type metadata accessor for WatchlistCellViewModel(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CF56CC8);
    }
  }
}

void sub_22057B080()
{
  if (!qword_27CF56CD0)
  {
    type metadata accessor for WatchlistCellView();
    sub_22057B8BC(&qword_27CF56CD8, type metadata accessor for WatchlistCellView);
    v0 = sub_22088AF5C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56CD0);
    }
  }
}

uint64_t sub_22057B114(uint64_t a1, uint64_t a2)
{
  sub_220447570(0, &qword_2812993D0, MEMORY[0x277CC9AF8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_22057B1A8(void *a1)
{
  [a1 setIsAccessibilityElement_];
  [a1 setAccessibilityLabel_];
  [a1 setAccessibilityHint_];
  [a1 su:0 setAccessibilityActivateBlock:?];
  v2 = *MEMORY[0x277D76548];
  v3 = [a1 accessibilityTraits];
  v4 = -1;
  if ((v3 & v2) != 0)
  {
    v4 = ~v2;
  }

  return [a1 setAccessibilityTraits_];
}

uint64_t sub_22057B25C()
{
  sub_22055DDDC();
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_22057975C(v3, v4);
}

void sub_22057B2D0()
{
  if (!qword_281299088)
  {
    v0 = sub_22088685C();
    if (!v1)
    {
      atomic_store(v0, &qword_281299088);
    }
  }
}

uint64_t sub_22057B318(uint64_t a1, uint64_t a2)
{
  sub_220447570(0, &qword_281299060, MEMORY[0x277D69810], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22057B3AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_220447570(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_22057B43C(void *a1)
{
  [a1 setIsAccessibilityElement_];
  v2 = *MEMORY[0x277D76548];
  v3 = [a1 accessibilityTraits];
  if ((v2 & ~v3) != 0)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }

  [a1 setAccessibilityTraits_];
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_22057B798;
  v15 = v5;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_22057A558;
  v13 = &block_descriptor_16;
  v6 = _Block_copy(&v10);

  [a1 su:v6 setAccessibilityActivateBlock:?];
  _Block_release(v6);
  if (qword_27CF55848 != -1)
  {
    swift_once();
  }

  v7 = sub_22089132C();
  [a1 setAccessibilityHint_];

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = sub_22057B7A0;
  v15 = v8;
  v10 = MEMORY[0x277D85DD0];
  v11 = 1107296256;
  v12 = sub_22057A748;
  v13 = &block_descriptor_20;
  v9 = _Block_copy(&v10);

  [a1 su:v9 setAccessibilityAdditionalTraitsBlock:?];
  _Block_release(v9);
}

void sub_22057B660(void *a1)
{
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5[4] = sub_22057B790;
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_22057A558;
  v5[3] = &block_descriptor_3;
  v3 = _Block_copy(v5);

  [a1 su:v3 setAccessibilityActivateBlock:?];
  _Block_release(v3);
  if (qword_27CF55840 != -1)
  {
    swift_once();
  }

  v4 = sub_22089132C();
  [a1 setAccessibilityHint_];
}

uint64_t objectdestroy_4Tm()
{

  return swift_deallocObject();
}

uint64_t sub_22057B7F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22057B858()
{
  v1 = *(type metadata accessor for WatchlistCreationRouteModel() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_22057A328(v2, v3);
}

uint64_t sub_22057B8BC(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_22057B91C(uint64_t a1, char a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC8StocksUI10TickerView_priceChangeLabel);
  v4 = [v3 font];
  if (v4)
  {
    withFont = v4;
    v5 = [v3 color];
    if (v5)
    {
      v6 = v5;
      v7 = [v3 attributedText];
      if (v7)
      {
        v8 = v7;
        if (a2)
        {
          v9 = sub_2208928BC();
        }

        else
        {
          v9 = 1;
        }

        isa = NSAttributedString.appendingAccessibilityDWCPriceChangeArrow(pointingUpward:withFont:withColor:)(v9 & 1, withFont, v6).super.isa;
        [v3 setAttributedText_];

        v6 = isa;
      }

      else
      {
        v8 = withFont;
      }

      v10 = v6;
    }

    else
    {
      v10 = withFont;
    }
  }
}

uint64_t sub_22057BA78()
{
  v0 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v0, v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  sub_22088AD8C();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_2204AE2D4(v3, type metadata accessor for StockListModel);
    }

    v5 = 0;
  }

  else
  {
    sub_2204AE2D4(v3, type metadata accessor for StockListStockModel);
    v5 = sub_22088AD6C();
  }

  return v5 & 1;
}

uint64_t sub_22057BB68()
{
  v1 = v0;
  v2 = sub_220885CDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088698C();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x28223BE20](v7, v9);
  v12 = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v12, v1, v7, v10);
  LODWORD(v13) = (*(v8 + 88))(v12, v7);
  if (v13 == *MEMORY[0x277D69850])
  {
    (*(v8 + 96))(v12, v7);
    swift_unknownObjectRelease();
    sub_22052EC94();
    (*(v3 + 32))(v6, &v12[*(v14 + 48)], v2);
    v15 = sub_220885BFC();
    v16 = v15;
    if (v15)
    {
      [v15 computedGlobalScoreCoefficient];
      v35 = v17;
      [v16 userFeedbackScore];
      v34 = v18;
      [v16 agedPersonalizationScore];
      v33 = v19;
      [v16 personalizationScore];
      v32 = v20;
      [v16 paidNonpaidSubscriptionCtr];
      v22 = v21;
      [v16 subscribedChannelCtr];
      v24 = v23;
      [v16 autoSubscribeCtr];
      v26 = v25;
    }

    else
    {
      v26 = 0;
      v24 = 0;
      v22 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v35 = 0;
    }

    sub_22057C000();
    sub_220885BDC();
    v28 = v27;
    sub_220885C1C();
    sub_220885C0C();
    sub_220885BEC();
    v13 = sub_220885C7C();
    if (v13 < 0xFFFFFFFF80000000)
    {
      __break(1u);
    }

    else if (v13 <= 0x7FFFFFFF)
    {
      sub_220885B8C();
      sub_220885C3C();
      v31[5] = v29;
      sub_220885C2C();
      v13 = sub_220885C8C();
      if (v13 >= 0xFFFFFFFF80000000)
      {
        if (v13 <= 0x7FFFFFFF)
        {
          v13 = sub_220885B9C();
          if (v13 >= 0xFFFFFFFF80000000)
          {
            if (v13 <= 0x7FFFFFFF)
            {
              sub_220885BCC();
              v31[4] = v24;
              sub_220885BBC();
              v31[3] = v26;
              sub_220885BAC();
              v31[1] = v28;
              sub_220885CCC();
              v31[2] = v22;
              sub_220885CAC();
              sub_2208898AC();

              return (*(v3 + 8))(v6, v2);
            }

            goto LABEL_17;
          }

LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
          goto LABEL_18;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    __break(1u);
    goto LABEL_14;
  }

LABEL_18:
  if (v13 == *MEMORY[0x277D69840])
  {
    sub_22089267C();
    __break(1u);
  }

  result = sub_2208928AC();
  __break(1u);
  return result;
}

uint64_t sub_22057C000()
{
  v28 = sub_220885C6C();
  v0 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_220889F0C();
  v4 = *(v27 - 8);
  MEMORY[0x28223BE20](v27, v5);
  v21 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_220885C9C();
  v8 = *(v7 + 16);
  if (v8)
  {
    v29 = MEMORY[0x277D84F90];
    sub_22070BEA4(0, v8, 0);
    v9 = v29;
    v11 = *(v0 + 16);
    v10 = v0 + 16;
    v12 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v20 = v7;
    v13 = v7 + v12;
    v24 = *(v10 + 56);
    v25 = v11;
    v22 = v4 + 32;
    v23 = (v10 - 8);
    v14 = v21;
    v26 = v10;
    do
    {
      v15 = v4;
      v16 = v28;
      v25(v3, v13, v28);
      sub_220885C4C();
      sub_220885C5C();
      sub_220889EFC();
      (*v23)(v3, v16);
      v29 = v9;
      v18 = *(v9 + 16);
      v17 = *(v9 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_22070BEA4(v17 > 1, v18 + 1, 1);
        v14 = v21;
        v9 = v29;
      }

      *(v9 + 16) = v18 + 1;
      v4 = v15;
      (*(v15 + 32))(v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v18, v14, v27);
      v13 += v24;
      --v8;
    }

    while (v8);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}

uint64_t sub_22057C2B0()
{
  v0 = sub_220886BDC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0, v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_220886B5C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220443898();
  (*(v6 + 104))(v9, *MEMORY[0x277D6D048], v5);
  (*(v1 + 104))(v4, *MEMORY[0x277D6D098], v0);
  result = sub_220886C2C();
  qword_281298DE8 = result;
  return result;
}

id sub_22057C4B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30 = a3;
  v31 = sub_2208854AC();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22088D61C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C();
  sub_22088B2AC();
  if (v48 > 1u)
  {
    goto LABEL_6;
  }

  v12 = v44;
  if (!v44)
  {
    goto LABEL_6;
  }

  v26 = v43;
  v27 = v45;
  v28 = v47;
  v29 = v46;
  sub_2204B9CF0();
  sub_22088C34C();
  *(v42 + 9) = *(v35 + 9);
  v41[2] = v34;
  v42[0] = v35[0];
  v41[0] = v32;
  v41[1] = v33;
  if (BYTE8(v35[1]) >= 2u)
  {

LABEL_6:
    sub_22057CBE0();
    sub_22088D42C();
    sub_22088D44C();
    v22 = sub_220891C0C();
    (*(v3 + 8))(v6, v31);
    (*(v8 + 8))(v11, v7);
    [v22 setFrame_];
    return v22;
  }

  v38 = v34;
  v39 = v35[0];
  v40 = *&v35[1];
  v36 = v32;
  v37 = v33;
  sub_22049F9F4();
  sub_22088D42C();
  sub_22088D44C();
  v13 = sub_220891C0C();
  (*(v3 + 8))(v6, v31);
  (*(v8 + 8))(v11, v7);
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  v17 = v26;
  v16 = v27;
  *(v15 + 16) = v14;
  *(v15 + 24) = v17;
  *(v15 + 32) = v12;
  *(v15 + 40) = v16;
  v18 = v28;
  *(v15 + 48) = v29;
  *(v15 + 56) = v18;
  v19 = v39;
  *(v15 + 96) = v38;
  *(v15 + 112) = v19;
  v20 = v40;
  v21 = v37;
  *(v15 + 64) = v36;
  *(v15 + 80) = v21;
  *(v15 + 128) = v20;
  *(v15 + 136) = v13;
  sub_2204BE7B8(v41, &v32);
  v22 = v13;
  sub_22088868C();

  __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
  v23 = sub_22088D33C();
  sub_2208882EC();
  sub_2204C5E90(v41);

  __swift_destroy_boxed_opaque_existential_1(&v32);
  return v22;
}

void sub_22057C8A8(unsigned __int8 *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 16);
    v9 = Strong;
    swift_unknownObjectRetain();
    v10 = sub_22088D32C();
    v11 = OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_switcherButton;
    [*&v10[OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_switcherButton] setFrame_];
    [*&v10[v11] setEnabled_];
    swift_beginAccess();
    __swift_project_boxed_opaque_existential_1((v8 + 16), *(v8 + 40));
    sub_22059B6F8(*&v10[v11], *a3, a3[1], *(a4 + 64));
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v12 = sub_22088E13C();
    swift_unknownObjectRelease();

    v13 = sub_22088D32C();
    v14 = *&v13[OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_switcherButton];

    [v14 setShowsMenuAsPrimaryAction_];
    v15 = sub_22088D32C();
    v16 = *&v15[OBJC_IVAR____TtC8StocksUI26StockListSectionHeaderView_switcherButton];

    __swift_project_boxed_opaque_existential_1((v9 + 96), *(v9 + 120));
    v17 = sub_22088D32C();
    v18 = sub_2206934B8(v17, 0);

    [v16 setMenu_];
  }
}

uint64_t sub_22057CAC4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

void sub_22057CBE0()
{
  if (!qword_2812975B0)
  {
    sub_220890C0C();
    sub_22045BF08(&unk_281296740, MEMORY[0x277D34710]);
    v0 = sub_22088D34C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812975B0);
    }
  }
}

uint64_t sub_22057CC90(uint64_t a1, int a2)
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

uint64_t sub_22057CCD8(uint64_t result, int a2, int a3)
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

uint64_t sub_22057CD28()
{
  sub_22046DA2C(v0 + 32, v4);
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_22046AA04(&qword_2812911B8, v1, type metadata accessor for TickerDataManager);
  sub_220885FDC();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_22046DA2C(v0 + 72, v4);
  __swift_project_boxed_opaque_existential_1(v4, v5);
  sub_22046AA04(qword_2812911C0, v2, type metadata accessor for TickerDataManager);
  sub_22088631C();
  __swift_destroy_boxed_opaque_existential_1(v4);
  sub_22054B9F8(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 32);
  __swift_destroy_boxed_opaque_existential_1(v0 + 72);

  return v0;
}

uint64_t sub_22057CE60()
{
  sub_22057CD28();

  return swift_deallocClassInstance();
}

uint64_t sub_22057CE94()
{
  v1 = v0;
  sub_2204AA824();
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204753E0();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204752B8(0);
  v13 = *(v12 - 8);
  v24 = v12;
  v25 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(v0 + 4, v0[7]);
  sub_22046AA04(&qword_2812911B8, v17, type metadata accessor for TickerDataManager);
  sub_220885FAC();
  __swift_project_boxed_opaque_existential_1(v1 + 9, v1[12]);
  sub_22046AA04(qword_2812911C0, v18, type metadata accessor for TickerDataManager);
  sub_22088630C();
  __swift_project_boxed_opaque_existential_1(v1 + 4, v1[7]);
  sub_22088600C();
  sub_22046D5B4();
  v19 = sub_220891D0C();
  v26 = v19;
  v20 = sub_220891CEC();
  (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  sub_22046AA04(&qword_281296E10, 255, sub_2204753E0);
  sub_22046AA04(&qword_28127E7C8, 255, sub_22046D5B4);
  sub_22088EBAC();
  sub_2204E64C0(v5);

  (*(v8 + 8))(v11, v7);
  swift_allocObject();
  swift_weakInit();
  sub_22046AA04(&qword_281296DC0, 255, sub_2204752B8);
  v21 = v24;
  sub_22088EBDC();

  (*(v25 + 8))(v16, v21);
  swift_beginAccess();
  sub_22088EB6C();
  swift_endAccess();
}

uint64_t sub_22057D2D0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v3 + 24);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 16);

      v6(v7, &off_283412F30, a1, ObjectType, v4);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_22057D3A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v7 + 8))(v3, &off_283412F30, a2, a3, ObjectType, v7);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22057D44C(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v5 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    (*(v5 + 24))(v2, &off_283412F30, a2, ObjectType, v5);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22057D4E8()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);

  return swift_deallocClassInstance();
}

void (*sub_22057D530(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isSelected;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  swift_beginAccess();
  return sub_22057D5B8;
}

void sub_22057D5B8(void **a1, char a2)
{
  v3 = *a1;
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v4 = v3[3];
    v5 = *(v4 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onSelection);
    if (v5)
    {
      v6 = *(v4 + v3[4]);

      v5(v4, v6);
      sub_2204DA45C(v5);
    }
  }

  free(v3);
}

char *sub_22057D658(double a1, double a2, double a3, double a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  sub_2204D4C7C(0, &qword_27CF56D60, sub_22057E51C);
  MEMORY[0x28223BE20](v11 - 8, v12);
  v14 = &v41 - v13;
  v15 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_titleLabel;
  *&v5[v15] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v16 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_editNameButton;
  *&v5[v16] = [objc_opt_self() buttonWithType_];
  v17 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_hairlineView;
  *&v5[v17] = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v18 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton;
  if (qword_281296FD8 != -1)
  {
    swift_once();
  }

  sub_22057E51C();
  (*(*(v19 - 8) + 56))(v14, 1, 1, v19);
  sub_22057E588();
  v21 = objc_allocWithZone(v20);

  *&v5[v18] = sub_22088BB5C();
  v22 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onTapEditName;
  sub_22049D9F4();
  *&v5[v22] = [objc_allocWithZone(v23) init];
  v24 = &v5[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing];
  *v24 = 0;
  v24[1] = 0;
  v5[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isEditing] = 0;
  v25 = &v5[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onSelection];
  *v25 = 0;
  v25[1] = 0;
  v5[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isSelected] = 0;
  v26 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_indexPath;
  v27 = sub_2208854AC();
  (*(*(v27 - 8) + 56))(&v5[v26], 1, 1, v27);
  v41.receiver = v5;
  v41.super_class = ObjectType;
  v28 = objc_msgSendSuper2(&v41, sel_initWithFrame_, a1, a2, a3, a4);
  v29 = *&v28[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_titleLabel];
  v30 = v28;
  [v30 addSubview_];
  v31 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton;
  [v30 addSubview_];
  v32 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_editNameButton;
  [v30 addSubview_];
  [v30 addSubview_];
  [*&v30[v31] setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  sub_22088F0DC();
  [*&v30[v32] setAdjustsImageSizeForAccessibilityContentSizeCategory_];
  v33 = *&v30[v32];
  v34 = *&v30[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onTapEditName];
  v35 = v33;
  sub_22088E18C();

  v36 = v30;
  [v36 setIsAccessibilityElement_];
  v37 = *MEMORY[0x277D76548];
  v38 = [v36 accessibilityTraits];
  if ((v37 & ~v38) != 0)
  {
    v39 = v37;
  }

  else
  {
    v39 = 0;
  }

  [v36 setAccessibilityTraits_];

  return v36;
}

uint64_t type metadata accessor for WatchlistCellView()
{
  result = qword_27CF56D48;
  if (!qword_27CF56D48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22057DB8C()
{
  sub_2204D4C7C(319, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_22057DC68()
{
  v1 = v0;
  sub_2204D4C7C(0, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v14[-v4];
  v6 = (v0 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing);
  v7 = *(v0 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing);
  *v6 = 0;
  v6[1] = 0;
  sub_2204DA45C(v7);
  v8 = (v0 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onSelection);
  v9 = *v8;
  *v8 = 0;
  v8[1] = 0;
  sub_2204DA45C(v9);
  *(v1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isEditing) = 0;
  v10 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isSelected;
  swift_beginAccess();
  *(v1 + v10) = 0;
  v11 = *v8;
  if (*v8)
  {

    v11(v1, 0);
    sub_2204DA45C(v11);
  }

  v12 = sub_2208854AC();
  (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
  v13 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_indexPath;
  swift_beginAccess();
  sub_22057B114(v5, v1 + v13);
  swift_endAccess();
}

id sub_22057DE28(uint64_t a1, char a2, double a3, double a4)
{
  v6 = *(a1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing);
  if (v6)
  {

    v6(a1, a2 & 1);
    sub_2204DA45C(v6);
  }

  [*(a1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton) setAlpha_];
  [*(a1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_editNameButton) setAlpha_];
  v8 = *(a1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_hairlineView);

  return [v8 setAlpha_];
}

uint64_t sub_22057DEFC(char a1)
{
  v3 = *v1;
  v3[OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isEditing] = a1;
  if (a1)
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if (a1)
  {
    v5 = 0.0;
  }

  else
  {
    v5 = 1.0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = a1;
  *(v6 + 32) = v5;
  *(v6 + 40) = v4;
  v7 = v3;
  sub_22088E51C();
}

void sub_22057DFCC()
{
  sub_22057E220(&qword_27CF56CD8);

  JUMPOUT(0x223D86790);
}

uint64_t sub_22057E024()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isSelected;
  swift_beginAccess();
  return *(v1 + v2);
}

uint64_t sub_22057E06C(char a1)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isSelected;
  result = swift_beginAccess();
  *(v3 + v4) = a1;
  v6 = *(v3 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onSelection);
  if (v6)
  {

    v6(v3, a1 & 1);
    return sub_2204DA45C(v6);
  }

  return result;
}

void (*sub_22057E0FC(uint64_t **a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_22057D530(v2);
  return sub_22057E170;
}

void sub_22057E170(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_22057E220(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for WatchlistCellView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22057E274()
{
  v1 = v0;
  sub_2204D4C7C(0, &qword_27CF56D60, sub_22057E51C);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v18 - v4;
  v6 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_titleLabel;
  *(v1 + v6) = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v7 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_editNameButton;
  *(v1 + v7) = [objc_opt_self() buttonWithType_];
  v8 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_hairlineView;
  *(v1 + v8) = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v9 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_selectionButton;
  if (qword_281296FD8 != -1)
  {
    swift_once();
  }

  sub_22057E51C();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  sub_22057E588();
  objc_allocWithZone(v11);

  *(v1 + v9) = sub_22088BB5C();
  v12 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onTapEditName;
  sub_22049D9F4();
  *(v1 + v12) = [objc_allocWithZone(v13) init];
  v14 = (v1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onEditing);
  *v14 = 0;
  v14[1] = 0;
  *(v1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isEditing) = 0;
  v15 = (v1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_onSelection);
  *v15 = 0;
  v15[1] = 0;
  *(v1 + OBJC_IVAR____TtC8StocksUI17WatchlistCellView_isSelected) = 0;
  v16 = OBJC_IVAR____TtC8StocksUI17WatchlistCellView_indexPath;
  v17 = sub_2208854AC();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  sub_22089267C();
  __break(1u);
}

void sub_22057E51C()
{
  if (!qword_27CF56D68)
  {
    sub_22047A590();
    sub_22046599C();
    v0 = sub_22088B8FC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56D68);
    }
  }
}

void sub_22057E588()
{
  if (!qword_27CF56D70)
  {
    type metadata accessor for WatchlistMembershipCommandContext(255);
    sub_22057E610();
    sub_22046599C();
    v0 = sub_22088BB8C();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56D70);
    }
  }
}

unint64_t sub_22057E610()
{
  result = qword_27CF56D78;
  if (!qword_27CF56D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56D78);
  }

  return result;
}

uint64_t sub_22057E664(uint64_t a1)
{
  sub_2204D4C7C(0, &qword_2812993D0, MEMORY[0x277CC9AF8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ScrollPosition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_22057EC3C(0, &qword_27CF56D80, MEMORY[0x277D844C8]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22057E964();
  sub_220892A4C();
  if (!v2)
  {
    v18 = 0;
    sub_22057E9B8();
    sub_22089279C();
    if (v17)
    {
      LOBYTE(v17) = 1;
      v11 = sub_22089277C();
      v13 = v12;
      v14 = v11;
      type metadata accessor for CGPoint(0);
      v18 = 2;
      sub_22057ECF4(&qword_27CF56D90);
      sub_22089279C();
      (*(v7 + 8))(v10, v6);
      v16 = v17;
    }

    else
    {
      (*(v7 + 8))(v10, v6);
      v14 = 0;
      v13 = 0;
      v16 = 0uLL;
    }

    *a2 = v14;
    *(a2 + 8) = v13;
    *(a2 + 16) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_22057E964()
{
  result = qword_281293F08;
  if (!qword_281293F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293F08);
  }

  return result;
}

unint64_t sub_22057E9B8()
{
  result = qword_27CF56D88;
  if (!qword_27CF56D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56D88);
  }

  return result;
}

uint64_t ScrollPosition.encode(to:)(void *a1)
{
  sub_22057EC3C(0, &qword_28127E1E8, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v7);
  v9 = v14 - v8;
  v10 = v1[1];
  v14[1] = *v1;
  v11 = v1[2];
  v12 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22057E964();
  sub_220892A5C();
  if (!v10)
  {
    LOBYTE(v15) = 0;
    v17 = 0;
    sub_22057ECA0();
    goto LABEL_5;
  }

  LOBYTE(v15) = 1;
  v17 = 0;
  sub_22057ECA0();
  sub_22089283C();
  if (!v2)
  {
    LOBYTE(v15) = 1;
    sub_22089280C();
    v15 = v11;
    v16 = v12;
    v17 = 2;
    type metadata accessor for CGPoint(0);
    sub_22057ECF4(&qword_28127E548);
LABEL_5:
    sub_22089283C();
  }

  return (*(v6 + 8))(v9, v5);
}

void sub_22057EC3C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_22057E964();
    v7 = a3(a1, &type metadata for ScrollPosition.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_22057ECA0()
{
  result = qword_281293EF0;
  if (!qword_281293EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293EF0);
  }

  return result;
}

uint64_t sub_22057ECF4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CGPoint(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22057ED38()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0x74657366666FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_22057ED8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22057F3F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22057EDC0(uint64_t a1)
{
  v2 = sub_22057E964();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22057EDFC(uint64_t a1)
{
  v2 = sub_22057E964();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22057EE38(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1835365481;
  }

  else
  {
    v3 = 7368564;
  }

  if (v2)
  {
    v4 = 0xE300000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1835365481;
  }

  else
  {
    v5 = 7368564;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE300000000000000;
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

uint64_t sub_22057EED0()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_22057EF44()
{
  sub_22089146C();
}

uint64_t sub_22057EFA4()
{
  sub_2208929EC();
  sub_22089146C();

  return sub_220892A2C();
}

uint64_t sub_22057F014@<X0>(char *a1@<X8>)
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

void sub_22057F074(uint64_t *a1@<X8>)
{
  v2 = 7368564;
  if (*v1)
  {
    v2 = 1835365481;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_22057F184(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_22057F1D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_22057F22C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_22057F244(void *result, int a2)
{
  if (a2 < 0)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_22057F29C()
{
  result = qword_27CF56D98;
  if (!qword_27CF56D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56D98);
  }

  return result;
}

unint64_t sub_22057F2F4()
{
  result = qword_27CF56DA0;
  if (!qword_27CF56DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56DA0);
  }

  return result;
}

unint64_t sub_22057F34C()
{
  result = qword_281293EF8;
  if (!qword_281293EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293EF8);
  }

  return result;
}

unint64_t sub_22057F3A4()
{
  result = qword_281293F00;
  if (!qword_281293F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293F00);
  }

  return result;
}

uint64_t sub_22057F3F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_2208928BC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_2208928BC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
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

unint64_t sub_22057F514()
{
  result = qword_281293EE8;
  if (!qword_281293EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293EE8);
  }

  return result;
}

uint64_t type metadata accessor for StockChartCalloutLayoutOptions()
{
  result = qword_27CF56DA8;
  if (!qword_27CF56DA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22057F5DC()
{
  type metadata accessor for CGSize(319);
  if (v0 <= 0x3F)
  {
    sub_2208854FC();
    if (v1 <= 0x3F)
    {
      sub_22088543C();
      if (v2 <= 0x3F)
      {
        sub_220496148();
        if (v3 <= 0x3F)
        {
          type metadata accessor for UIEdgeInsets(319);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_22057F6A8()
{
  v1 = v0;
  v2 = sub_22089114C();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v40 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_2208911CC();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220890C5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208911BC();
  MEMORY[0x28223BE20](v14 - 8, v15);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v16 = sub_2208882FC();
  v18 = v1[10];
  v17 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v18);
  v19 = *(v17 + 16);
  if (v16)
  {
    (*(v19 + 328))(v18);
  }

  else
  {
    (*(v19 + 312))(v18);
  }

  (*(v10 + 104))(v13, *MEMORY[0x277D6C640], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277D6C7D0], v37);
  sub_2208911AC();
  sub_22048BC00();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22089B120;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v21 = sub_2208882FC();
  v23 = v1[10];
  v22 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v23);
  v24 = *(v22 + 16);
  if (v21)
  {
    v25 = (*(v24 + 336))(v23);
  }

  else
  {
    v25 = (*(v24 + 320))(v23);
  }

  v26 = v25;
  v27 = [v25 colorWithAlphaComponent_];

  *(v20 + 32) = v27;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  LOBYTE(v26) = sub_2208882FC();
  v29 = v1[10];
  v28 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v29);
  v30 = *(v28 + 16);
  if (v26)
  {
    v31 = (*(v30 + 336))(v29);
  }

  else
  {
    v31 = (*(v30 + 320))(v29);
  }

  v32 = v31;
  v33 = [v31 colorWithAlphaComponent_];

  *(v20 + 40) = v33;
  v34 = v39;
  v35 = v40;
  *v40 = v20;
  (*(v38 + 104))(v35, *MEMORY[0x277D6C7B8], v34);
  sub_22089120C();
  swift_allocObject();
  return sub_2208911FC();
}

uint64_t sub_22057FB3C()
{
  v1 = v0;
  v2 = sub_22089114C();
  v38 = *(v2 - 8);
  v39 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v40 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v37 = sub_2208911CC();
  v5 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_220890C5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2208911BC();
  MEMORY[0x28223BE20](v14 - 8, v15);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v16 = sub_2208882FC();
  v18 = v1[10];
  v17 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v18);
  v19 = *(v17 + 16);
  if (v16)
  {
    (*(v19 + 312))(v18);
  }

  else
  {
    (*(v19 + 328))(v18);
  }

  (*(v10 + 104))(v13, *MEMORY[0x277D6C640], v9);
  (*(v5 + 104))(v8, *MEMORY[0x277D6C7D0], v37);
  sub_2208911AC();
  sub_22048BC00();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22089B120;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  v21 = sub_2208882FC();
  v23 = v1[10];
  v22 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v23);
  v24 = *(v22 + 16);
  if (v21)
  {
    v25 = (*(v24 + 320))(v23);
  }

  else
  {
    v25 = (*(v24 + 336))(v23);
  }

  v26 = v25;
  v27 = [v25 colorWithAlphaComponent_];

  *(v20 + 32) = v27;
  __swift_project_boxed_opaque_existential_1(v1 + 2, v1[5]);
  LOBYTE(v26) = sub_2208882FC();
  v29 = v1[10];
  v28 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v29);
  v30 = *(v28 + 16);
  if (v26)
  {
    v31 = (*(v30 + 320))(v29);
  }

  else
  {
    v31 = (*(v30 + 336))(v29);
  }

  v32 = v31;
  v33 = [v31 colorWithAlphaComponent_];

  *(v20 + 40) = v33;
  v34 = v39;
  v35 = v40;
  *v40 = v20;
  (*(v38 + 104))(v35, *MEMORY[0x277D6C7B8], v34);
  sub_22089120C();
  swift_allocObject();
  return sub_2208911FC();
}

uint64_t sub_22057FFD0()
{
  v1 = v0;
  v2 = sub_22089114C();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v32 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2208911CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220890C5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2208911BC();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = v0[10];
  v17 = v0[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v18);
  (*(*(v17 + 16) + 344))(v18);
  (*(v11 + 104))(v14, *MEMORY[0x277D6C640], v10);
  (*(v6 + 104))(v9, *MEMORY[0x277D6C7D0], v5);
  sub_2208911AC();
  sub_22048BC00();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22089B120;
  v21 = v1[10];
  v20 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v21);
  v22 = (*(*(v20 + 16) + 352))(v21);
  v23 = [v22 colorWithAlphaComponent_];

  *(v19 + 32) = v23;
  v25 = v1[10];
  v24 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v25);
  v26 = (*(*(v24 + 16) + 352))(v25);
  v27 = [v26 colorWithAlphaComponent_];

  *(v19 + 40) = v27;
  v29 = v32;
  v28 = v33;
  *v32 = v19;
  (*(v28 + 104))(v29, *MEMORY[0x277D6C7B8], v34);
  sub_22089120C();
  swift_allocObject();
  return sub_2208911FC();
}

uint64_t sub_220580384()
{
  v1 = v0;
  v2 = sub_22089114C();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v32 = (&v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_2208911CC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220890C5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2208911BC();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v18 = v0[10];
  v17 = v0[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v18);
  (*(*(v17 + 16) + 360))(v18);
  (*(v11 + 104))(v14, *MEMORY[0x277D6C640], v10);
  (*(v6 + 104))(v9, *MEMORY[0x277D6C7D0], v5);
  sub_2208911AC();
  sub_22048BC00();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22089B120;
  v21 = v1[10];
  v20 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v21);
  v22 = (*(*(v20 + 16) + 368))(v21);
  v23 = [v22 colorWithAlphaComponent_];

  *(v19 + 32) = v23;
  v25 = v1[10];
  v24 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v25);
  v26 = (*(*(v24 + 16) + 368))(v25);
  v27 = [v26 colorWithAlphaComponent_];

  *(v19 + 40) = v27;
  v29 = v32;
  v28 = v33;
  *v32 = v19;
  (*(v28 + 104))(v29, *MEMORY[0x277D6C7B8], v34);
  sub_22089120C();
  swift_allocObject();
  return sub_2208911FC();
}

void *sub_220580738(uint64_t a1)
{
  v28 = a1;
  v33 = *v1;
  sub_22046DA2C((v1 + 2), v34);
  v3 = v1[10];
  v32 = v1[11];
  v4 = __swift_project_boxed_opaque_existential_1(v1 + 7, v3);
  v31 = *(v3 - 8);
  v5 = *(v31 + 64);
  v7 = MEMORY[0x28223BE20](v4, v6);
  v30 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = &v27 - v30;
  (*(*(v32 + 8) + 8))(a1, v3, v7);
  v9 = v1[15];
  v29 = v1[16];
  v10 = v29;
  v11 = __swift_project_boxed_opaque_existential_1(v1 + 12, v9);
  v12 = *(v9 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v16 = (v13 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = (*(*(v10 + 8) + 8))(v28, v9, v15);
  v19 = MEMORY[0x28223BE20](v17, v18);
  v20 = v31;
  v21 = &v27 - v30;
  v22 = (*(v31 + 16))(&v27 - v30, v8, v3, v19);
  v24 = MEMORY[0x28223BE20](v22, v23);
  (*(v12 + 16))(&v27 - v16, &v27 - v16, v9, v24);
  v25 = sub_220582ACC(v34, v21, &v27 - v16, v33, v3, v9, v32, v29);
  (*(v12 + 8))(&v27 - v16, v9);
  (*(v20 + 8))(v8, v3);
  return v25;
}

uint64_t sub_2205809F0(uint64_t a1)
{
  v2 = v1;
  v72 = sub_22088C10C();
  v74 = *(v72 - 8);
  MEMORY[0x28223BE20](v72, v4);
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = *(a1 + OBJC_IVAR____TtC8StocksUI19DateRangePickerView_segmentedControl);
  v7 = *__swift_project_boxed_opaque_existential_1((v2 + 96), *(v2 + 120));
  sub_220582CBC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  v71 = v8;
  inited = swift_initStackObject();
  v70 = xmmword_220899920;
  *(inited + 16) = xmmword_220899920;
  v10 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v11 = sub_22044D56C(0, &qword_28127E570);
  v67 = v11;
  v68 = *MEMORY[0x277D76968];
  v69 = v10;
  v12 = sub_220891F3C();
  v13 = MEMORY[0x277D740C0];
  *(inited + 40) = v12;
  v14 = *v13;
  *(inited + 64) = v11;
  *(inited + 72) = v14;
  v16 = v7[5];
  v15 = v7[6];
  __swift_project_boxed_opaque_existential_1(v7 + 2, v16);
  v17 = *(v15 + 16);
  v18 = *(v17 + 40);
  v65 = v14;
  v19 = v18(v16, v17);
  v66 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 104) = v66;
  *(inited + 80) = v19;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  v64 = v20;
  swift_arrayDestroy();
  v21 = *MEMORY[0x277D6DDA0];
  v22 = v74;
  v63 = *(v74 + 104);
  v23 = v72;
  v63(v6, v21, v72);
  sub_22088B5AC();

  v24 = *(v22 + 8);
  v74 = v22 + 8;
  v24(v6, v23);
  v25 = *(v2 + 120);
  v75 = v2;
  v26 = *__swift_project_boxed_opaque_existential_1((v2 + 96), v25);
  v27 = swift_initStackObject();
  *(v27 + 16) = v70;
  *(v27 + 32) = v69;
  v28 = v67;
  *(v27 + 40) = sub_220891F3C();
  v29 = v65;
  *(v27 + 64) = v28;
  *(v27 + 72) = v29;
  v31 = v26[5];
  v30 = v26[6];
  __swift_project_boxed_opaque_existential_1(v26 + 2, v31);
  v32 = (*(*(v30 + 16) + 40))(v31);
  *(v27 + 104) = v66;
  *(v27 + 80) = v32;
  sub_2204A5EAC(v27);
  swift_setDeallocating();
  swift_arrayDestroy();
  v63(v6, *MEMORY[0x277D6DDA8], v23);
  sub_22088B5AC();

  v24(v6, v23);
  v33 = sub_22088B5CC();
  v34 = v33;
  if (v33 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2208926AC())
  {
    v36 = 0;
    v74 = v34 & 0xC000000000000001;
    v73 = v34 & 0xFFFFFFFFFFFFFF8;
    v72 = *MEMORY[0x277CDA138];
    v37 = 0x1FB0BE000uLL;
    while (1)
    {
      if (v74)
      {
        v42 = MEMORY[0x223D8A700](v36, v34);
      }

      else
      {
        if (v36 >= *(v73 + 16))
        {
          goto LABEL_18;
        }

        v42 = *(v34 + 8 * v36 + 32);
      }

      v41 = v42;
      v43 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v44 = v37;
      v45 = [v42 isSelected];
      v46 = __swift_project_boxed_opaque_existential_1((v75 + 96), *(v75 + 120));
      v47 = *v46;
      v48 = *(*v46 + 40);
      v49 = *(*v46 + 48);
      __swift_project_boxed_opaque_existential_1((*v46 + 16), v48);
      v50 = *(v49 + 16);
      if (v45)
      {
        v51 = (*(v50 + 424))(v48);
        v37 = v44;
        [v41 (v44 + 120)];

        v52 = [v41 titleLabel];
        if (v52)
        {
          v53 = v52;
          v54 = [objc_opt_self() clearColor];
          [v53 (v44 + 120)];
        }

        v38 = [v41 layer];
        [v38 setCornerCurve_];

        v39 = [v41 layer];
        [v41 frame];
        [v39 setCornerRadius_];
        v40 = v41;
        v41 = v39;
      }

      else
      {
        v55 = (*(v50 + 80))(v48);
        v37 = v44;
        [v41 (v44 + 120)];

        v56 = [v41 titleLabel];
        if (!v56)
        {
          goto LABEL_6;
        }

        v57 = v56;
        v59 = v47[5];
        v58 = v47[6];
        __swift_project_boxed_opaque_existential_1(v47 + 2, v59);
        v60 = v59;
        v37 = v44;
        v40 = (*(*(v58 + 16) + 80))(v60);
        [v57 (v44 + 120)];
      }

LABEL_6:
      ++v36;
      if (v43 == i)
      {
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

void sub_22058113C(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = a2;
  v5 = a1;
  v6 = sub_22089114C();
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = (&v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v45 = sub_2208911CC();
  v43 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v10);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_220890C5C();
  v13 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2208911BC();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v47 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_220581704(v3);
  if (v5 == 2)
  {
    goto LABEL_2;
  }

  if (a1)
  {

    goto LABEL_13;
  }

  v32 = sub_2208928BC();

  if (v32)
  {
LABEL_13:
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v33 = sub_2208882FC();
    v34 = v3[10];
    v35 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v34);
    v36 = *(v35 + 16);
    if (v33)
    {
      v25 = (*(v36 + 312))(v34);
      if (a1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v25 = (*(v36 + 328))(v34);
      if (a1)
      {
        goto LABEL_17;
      }
    }

LABEL_9:
    v26 = sub_2208928BC();

    if ((v26 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_18:
    __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
    v37 = sub_2208882FC();
    v28 = v3[10];
    v38 = v3[11];
    __swift_project_boxed_opaque_existential_1(v3 + 7, v28);
    v30 = *(v38 + 16);
    if (v37)
    {
      goto LABEL_11;
    }

LABEL_19:
    v31 = (*(v30 + 336))(v28);
    goto LABEL_20;
  }

LABEL_2:
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v20 = sub_2208882FC();
  v21 = v3[10];
  v22 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v21);
  v23 = *(v22 + 16);
  if (v20)
  {
    v24 = (*(v23 + 328))(v21);
  }

  else
  {
    v24 = (*(v23 + 312))(v21);
  }

  v25 = v24;
  if (a1 != 2)
  {
    if ((a1 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_17:

    goto LABEL_18;
  }

LABEL_10:
  __swift_project_boxed_opaque_existential_1(v3 + 2, v3[5]);
  v27 = sub_2208882FC();
  v28 = v3[10];
  v29 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 7, v28);
  v30 = *(v29 + 16);
  if (v27)
  {
    goto LABEL_19;
  }

LABEL_11:
  v31 = (*(v30 + 320))(v28);
LABEL_20:
  v39 = v31;
  sub_22048BC00();
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_22089B130;
  v41 = [v25 colorWithAlphaComponent_];
  (*(v13 + 104))(v16, *MEMORY[0x277D6C640], v44);
  (*(v43 + 104))(v12, *MEMORY[0x277D6C7D0], v45);
  sub_2208911AC();
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_22089B120;
  *(v42 + 32) = [v39 colorWithAlphaComponent_];
  *(v42 + 40) = [v39 colorWithAlphaComponent_];
  *v9 = v42;
  (*(v48 + 104))(v9, *MEMORY[0x277D6C7B8], v49);
  sub_22089120C();
  swift_allocObject();
  *(v40 + 32) = sub_2208911FC();
  sub_220890D3C();
}

size_t sub_220581704(void *a1)
{
  sub_220582C88(0);
  v13 = v2;
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220582CBC(0, &qword_28127DEF0, sub_220582C88, MEMORY[0x277D84560]);
  v7 = ((*(v3 + 80) + 32) & ~*(v3 + 80)) + 3 * *(v3 + 72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22089B140;
  v15 = sub_22057FB3C();
  sub_22089120C();
  sub_22089123C();
  v15 = sub_22057F6A8();
  sub_22089123C();
  v15 = sub_220580384();
  sub_22089123C();
  v10 = a1[10];
  v9 = a1[11];
  __swift_project_boxed_opaque_existential_1(a1 + 7, v10);
  (*(*(v9 + 16) + 384))(&v14, v10);
  if (v14 == 1)
  {
    v15 = sub_22057FFD0();
    sub_22089123C();
    v8 = sub_220587DEC(1uLL, 4, 1, v8);
    *(v8 + 16) = 4;
    (*(v3 + 32))(v8 + v7, v6, v13);
  }

  return v8;
}

uint64_t sub_2205819A8@<X0>(uint64_t a1@<X8>)
{
  v22[1] = a1;
  v22[0] = sub_220890E8C();
  v2 = *(v22[0] - 8);
  MEMORY[0x28223BE20](v22[0], v3);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2208911CC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_220890C5C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11, v13);
  v15 = (v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = sub_2208911BC();
  v18 = MEMORY[0x28223BE20](v16 - 8, v17);
  *v15 = &unk_283410C60;
  (*(v12 + 104))(v15, *MEMORY[0x277D6C648], v11, v18);
  v20 = v1[10];
  v19 = v1[11];
  __swift_project_boxed_opaque_existential_1(v1 + 7, v20);
  (*(*(v19 + 16) + 376))(v20);
  (*(v7 + 104))(v10, *MEMORY[0x277D6C7D8], v6);
  sub_2208911AC();
  (*(v2 + 104))(v5, *MEMORY[0x277D6C6E0], v22[0]);
  return sub_2208911DC();
}

id sub_220581C94()
{
  sub_220582CBC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_220899920;
  v2 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v3 = objc_opt_self();
  v4 = *MEMORY[0x277D74420];
  v5 = v2;
  v6 = [v3 monospacedDigitSystemFontOfSize:13.0 weight:v4];
  v7 = sub_22044D56C(0, &qword_28127E570);
  v8 = MEMORY[0x277D740C0];
  *(inited + 40) = v6;
  v9 = *v8;
  *(inited + 64) = v7;
  *(inited + 72) = v9;
  v10 = v0[10];
  v11 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v10);
  v12 = *(v11 + 16);
  v13 = *(v12 + 40);
  v14 = v9;
  v15 = v13(v10, v12);
  *(inited + 104) = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v15;
  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v16 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v17 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v18 = sub_22089125C();

  v19 = [v16 initWithString:v17 attributes:v18];

  return v19;
}

id sub_220581EC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_220582CBC(0, &qword_28127DE80, sub_2204A5D84, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22089B140;
  v8 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v9 = objc_opt_self();
  v10 = *MEMORY[0x277D74420];
  v11 = v8;
  v12 = [v9 monospacedDigitSystemFontOfSize:13.0 weight:v10];
  v13 = sub_22044D56C(0, &qword_28127E570);
  v14 = MEMORY[0x277D740C0];
  *(inited + 40) = v12;
  v15 = *v14;
  *(inited + 64) = v13;
  *(inited + 72) = v15;
  v16 = v4[10];
  v17 = v4[11];
  __swift_project_boxed_opaque_existential_1(v4 + 7, v16);
  v18 = *(v17 + 16);
  v19 = *(v18 + 40);
  v20 = v15;
  v21 = v19(v16, v18);
  v22 = sub_22044D56C(0, &qword_28127E530);
  *(inited + 80) = v21;
  v23 = *MEMORY[0x277D76528];
  *(inited + 104) = v22;
  *(inited + 112) = v23;
  *(inited + 144) = MEMORY[0x277D837D0];
  *(inited + 120) = a3;
  *(inited + 128) = a4;
  v24 = v23;

  sub_2204A5EAC(inited);
  swift_setDeallocating();
  sub_2204A5D84();
  swift_arrayDestroy();
  v25 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v26 = sub_22089132C();
  type metadata accessor for Key(0);
  sub_2204A63B8();
  v27 = sub_22089125C();

  v28 = [v25 initWithString:v26 attributes:v27];

  return v28;
}

uint64_t sub_22058211C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1(v0 + 56);
  __swift_destroy_boxed_opaque_existential_1(v0 + 96);

  return swift_deallocClassInstance();
}

uint64_t sub_220582188@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_220890E8C();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2208911CC();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220890C5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2208911BC();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v17 = *v1;
  v19 = *(*v1 + 80);
  v18 = *(*v1 + 88);
  __swift_project_boxed_opaque_existential_1((v17 + 56), v19);
  (*(*(v18 + 16) + 400))(v19);
  (*(v11 + 104))(v14, *MEMORY[0x277D6C640], v10);
  (*(v6 + 104))(v9, *MEMORY[0x277D6C7D0], v22);
  sub_2208911AC();
  (*(v2 + 104))(v5, *MEMORY[0x277D6C6D8], v23);
  return sub_2208911DC();
}

uint64_t sub_22058246C@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_220890E8C();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2208911CC();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220890C5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2208911BC();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v17 = *v1;
  v19 = *(*v1 + 80);
  v18 = *(*v1 + 88);
  __swift_project_boxed_opaque_existential_1((v17 + 56), v19);
  (*(*(v18 + 16) + 408))(v19);
  (*(v11 + 104))(v14, *MEMORY[0x277D6C640], v10);
  (*(v6 + 104))(v9, *MEMORY[0x277D6C7D0], v22);
  sub_2208911AC();
  (*(v2 + 104))(v5, *MEMORY[0x277D6C6E0], v23);
  return sub_2208911DC();
}

uint64_t sub_220582750@<X0>(uint64_t a1@<X8>)
{
  v24 = a1;
  v23 = sub_220890E8C();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_2208911CC();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v7);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_220890C5C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2208911BC();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v17 = *v1;
  v19 = *(*v1 + 80);
  v18 = *(*v1 + 88);
  __swift_project_boxed_opaque_existential_1((v17 + 56), v19);
  (*(*(v18 + 16) + 416))(v19);
  (*(v11 + 104))(v14, *MEMORY[0x277D6C640], v10);
  (*(v6 + 104))(v9, *MEMORY[0x277D6C7D0], v22);
  sub_2208911AC();
  (*(v2 + 104))(v5, *MEMORY[0x277D6C6D8], v23);
  return sub_2208911DC();
}

void *sub_220582AA0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_220580738(a1);
  *a2 = result;
  return result;
}

void *sub_220582ACC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a5;
  v29 = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_1, a2, a5);
  v25 = a6;
  v26 = a8;
  v15 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a6 - 8) + 32))(v15, a3, a6);
  v16 = swift_allocObject();
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v25);
  v18 = MEMORY[0x28223BE20](v17, v17);
  v20 = (v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v21 + 16))(v20, v18);
  v22 = *v20;
  v16[15] = type metadata accessor for DateRangePickerStyler();
  v16[16] = &off_283412460;
  v16[12] = v22;
  sub_220457328(a1, (v16 + 2));
  sub_220457328(&v27, (v16 + 7));
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v16;
}

void sub_220582CBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_220582D20()
{
  v1 = *(*v0 + 40);
  v2 = __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  v3 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v2, v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v4);
  sub_220885F4C();
  (*(v3 + 8))(v6, v1);
  sub_22088EB7C();
}

uint64_t sub_220582E30@<X0>(uint64_t a1@<X3>, _BYTE *a2@<X8>)
{
  v5 = sub_220886A4C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v2 + 40);
  v11 = __swift_project_boxed_opaque_existential_1((*v2 + 16), v10);
  v12 = *(v10 - 8);
  v13 = MEMORY[0x28223BE20](v11, v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, v13);
  sub_2208863EC();
  (*(v12 + 8))(v15, v10);
  LOBYTE(v15) = MEMORY[0x223D7EB90](a1, v9);
  result = (*(v6 + 8))(v9, v5);
  *a2 = v15 & 1;
  return result;
}

uint64_t sub_220582FE8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22088DA1C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22088C21C();
  sub_22088C1DC();
  sub_22088D9EC();
  (*(v3 + 8))(v6, v2);
  sub_22088C21C();
  sub_220891EEC();
  v8 = v7;
  v10 = v9;
  sub_22088C20C();
  v12 = v11;
  v14 = v13;
  v15 = sub_22088C28C();
  v16 = [v15 horizontalSizeClass];

  if (v16 == 2)
  {
    v12 = 16.0;
    v14 = 12.0;
  }

  v17 = sub_22088C24C();
  result = sub_22088C28C();
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = 0x402C000000000000;
  *(a1 + 24) = v12;
  *(a1 + 32) = 0x402C000000000000;
  *(a1 + 40) = v14;
  *(a1 + 48) = v17;
  *(a1 + 56) = result;
  return result;
}

uint64_t sub_220583198(void (*a1)(char *, char *, uint64_t), uint64_t a2)
{
  v3 = v2;
  *&v134 = a2;
  v133 = a1;
  sub_220584528(0, &qword_281296B20, MEMORY[0x277D321A0]);
  v123 = v4;
  v117 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v5);
  v116 = &v112 - v6;
  sub_22058445C();
  MEMORY[0x28223BE20](v7 - 8, v8);
  v114 = &v112 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v118 = &v112 - v12;
  v13 = type metadata accessor for CuratedForYouFeedGroupConfigData();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = (&v112 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2205844D0();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v128 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v21);
  v131 = &v112 - v22;
  v130 = type metadata accessor for CuratedForYouFeedGroupKnobs();
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130, v23);
  v126 = &v112 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v115 = &v112 - v27;
  MEMORY[0x28223BE20](v28, v29);
  v127 = &v112 - v30;
  sub_22044CD9C();
  v32 = v31;
  v132 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v33);
  v125 = &v112 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35, v36);
  v38 = &v112 - v37;
  v121 = sub_220885ACC();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121, v39);
  v119 = &v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for StockForYouFeedGroupKnobs();
  MEMORY[0x28223BE20](v41 - 8, v42);
  v124 = &v112 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220452A8C();
  v45 = v44;
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v47);
  v49 = &v112 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v51);
  v53 = &v112 - v52;
  v54 = type metadata accessor for ForYouFeedGroupConfig();
  MEMORY[0x28223BE20](v54, v55);
  v57 = &v112 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_220584624(v133, v57, type metadata accessor for ForYouFeedGroupConfig);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v58 = v132;
    v133 = *(v132 + 32);
    v124 = v132 + 32;
    v133(v38, v57, v32);
    v59 = *(v134 + *(type metadata accessor for ForYouFeedGroupKnobs() + 20));
    v60 = sub_22088F46C();
    v62 = *(v59 + 16);
    v122 = v38;
    if (v62)
    {
      v63 = sub_2204AF97C(v60, v61);
      v65 = v64;

      if (v65)
      {
        v66 = v129;
        v67 = *(v59 + 56) + v129[9] * v63;
        v68 = v131;
        sub_220584624(v67, v131, type metadata accessor for CuratedForYouFeedGroupKnobs);
        (v66[7])(v68, 0, 1, v130);
        v69 = v127;
        sub_22058468C(v68, v127, type metadata accessor for CuratedForYouFeedGroupKnobs);
LABEL_22:
        v107 = v125;
        v108 = v122;
        (*(v58 + 16))(v125, v122, v32);
        v109 = v126;
        sub_220584624(v69, v126, type metadata accessor for CuratedForYouFeedGroupKnobs);
        sub_22046DA2C(v3 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_formatService, &v138);
        type metadata accessor for CuratedForYouFeedGroupEmitter();
        v110 = swift_allocObject();
        v133((v110 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_config), v107, v32);
        sub_22058468C(v109, v110 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_knobs, type metadata accessor for CuratedForYouFeedGroupKnobs);
        sub_220457328(&v138, v110 + OBJC_IVAR____TtC8StocksUI29CuratedForYouFeedGroupEmitter_formatService);
        *&v138 = v110;
        sub_220584528(0, &qword_281296BC8, MEMORY[0x277D31F00]);
        swift_allocObject();
        sub_22044DC38(&unk_281286850, type metadata accessor for CuratedForYouFeedGroupEmitter);
        v74 = sub_22088F53C();
        sub_2205845C4(v69, type metadata accessor for CuratedForYouFeedGroupKnobs);
        (*(v58 + 8))(v108, v32);
        return v74;
      }
    }

    else
    {
    }

    v79 = v129[7];
    v79(v131, 1, 1, v130);
    *&v134 = v32;
    sub_22088F48C();
    v80 = *v16;
    v81 = v16[1];

    sub_2205845C4(v16, type metadata accessor for CuratedForYouFeedGroupConfigData);
    if (*(v59 + 16))
    {
      v82 = sub_2204AF97C(v80, v81);
      v84 = v83;

      if (v84)
      {
        v85 = v129;
        v86 = *(v59 + 56) + v129[9] * v82;
        v87 = v128;
        sub_220584624(v86, v128, type metadata accessor for CuratedForYouFeedGroupKnobs);
        v88 = v130;
        v79(v87, 0, 1, v130);
        v69 = v127;
        sub_22058468C(v87, v127, type metadata accessor for CuratedForYouFeedGroupKnobs);
        v32 = v134;
        v58 = v132;
        v89 = v131;
        v90 = (v85[6])(v131, 1, v88);
LABEL_20:
        if (v90 != 1)
        {
          sub_2205845C4(v89, sub_2205844D0);
        }

        goto LABEL_22;
      }
    }

    else
    {
    }

    v91 = v130;
    v79(v128, 1, 1, v130);
    v92 = v117;
    v93 = v118;
    v94 = v123;
    (*(v117 + 56))(v118, 1, 1, v123);
    v95 = v114;
    sub_220584624(v93, v114, sub_22058445C);
    v96 = *(v92 + 48);
    v97 = v96(v95, 1, v94);
    v89 = v131;
    if (v97 == 1)
    {
      type metadata accessor for ForYouFeedServiceConfig();
      sub_22044DC38(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
      v94 = v123;
      v98 = v89;
      v99 = v116;
      sub_22088F7EC();
      v100 = v96(v95, 1, v94);
      v101 = v99;
      v89 = v98;
      v32 = v134;
      if (v100 != 1)
      {
        sub_2205845C4(v95, sub_22058445C);
      }
    }

    else
    {
      v101 = v116;
      (*(v92 + 32))(v116, v95, v94);
      v32 = v134;
    }

    v102 = v115;
    (*(v92 + 32))(v115, v101, v94);
    *&v138 = 1;
    sub_22044D0C0();
    swift_allocObject();
    *(v102 + *(v91 + 20)) = sub_22088FB7C();
    *&v138 = 0x7FFFFFFFFFFFFFFFLL;
    swift_allocObject();
    v103 = sub_22088FB7C();
    sub_2205845C4(v93, sub_22058445C);
    *(v102 + *(v91 + 24)) = v103;
    v69 = v127;
    sub_22058468C(v102, v127, type metadata accessor for CuratedForYouFeedGroupKnobs);
    v104 = v129[6];
    v105 = v128;
    v106 = v104(v128, 1, v91);
    v58 = v132;
    if (v106 != 1)
    {
      sub_2205845C4(v105, sub_2205844D0);
    }

    v90 = v104(v89, 1, v91);
    goto LABEL_20;
  }

  v133 = *(v46 + 32);
  v133(v53, v57, v45);
  __swift_project_boxed_opaque_existential_1(v3 + 8, v3[11]);
  if (sub_22088613C())
  {
    v70 = v3[2];
    sub_22046DA2C((v3 + 3), &v138);
    v71 = v53;
    (*(v46 + 16))(v49, v53, v45);
    sub_22046DA2C((v3 + 18), &v137);
    v72 = v124;
    sub_220584624(v134, v124, type metadata accessor for StockForYouFeedGroupKnobs);
    sub_22046DA2C((v3 + 23), &v136);
    v134 = *(v3 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_newsUserProfileProvider);
    sub_22046DA2C(v3 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_formatService, v135);
    type metadata accessor for StockForYouFeedGroupEmitter();
    v73 = swift_allocObject();
    *(v73 + 16) = v70;
    sub_220457328(&v138, v73 + 24);
    v133((v73 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_config), v49, v45);
    sub_220457328(&v137, v73 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_headlineViewingHistory);
    sub_22058468C(v72, v73 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_knobs, type metadata accessor for StockForYouFeedGroupKnobs);
    sub_220457328(&v136, v73 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_newsFeedService);
    *(v73 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_newsUserProfileProvider) = v134;
    sub_220457328(v135, v73 + OBJC_IVAR____TtC8StocksUI27StockForYouFeedGroupEmitter_formatService);
    *&v138 = v73;
    sub_220584528(0, &qword_281296BC8, MEMORY[0x277D31F00]);
    swift_allocObject();
    sub_22044DC38(&qword_281287D60, type metadata accessor for StockForYouFeedGroupEmitter);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v74 = sub_22088F53C();
    (*(v46 + 8))(v71, v45);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
    v75 = v119;
    sub_22088641C();
    v76 = *(v46 + 16);
    v113 = v53;
    v76(v49, v53, v45);
    v77 = v124;
    sub_220584624(v134, v124, type metadata accessor for StockForYouFeedGroupKnobs);
    sub_22046DA2C(v3 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_stockFeedService, &v138);
    type metadata accessor for YahooStockForYouFeedGroupEmitter();
    v78 = swift_allocObject();
    (*(v120 + 32))(v78 + OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_appConfiguration, v75, v121);
    v133((v78 + OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_config), v49, v45);
    sub_22058468C(v77, v78 + OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_knobs, type metadata accessor for StockForYouFeedGroupKnobs);
    sub_220457328(&v138, v78 + OBJC_IVAR____TtC8StocksUI32YahooStockForYouFeedGroupEmitter_stockFeedService);
    *&v138 = v78;
    sub_220584528(0, &qword_281296BC8, MEMORY[0x277D31F00]);
    swift_allocObject();
    sub_22044DC38(&qword_27CF56DB8, type metadata accessor for YahooStockForYouFeedGroupEmitter);
    v74 = sub_22088F53C();
    (*(v46 + 8))(v113, v45);
  }

  return v74;
}

uint64_t sub_2205842F8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);
  __swift_destroy_boxed_opaque_existential_1(v0 + 64);
  __swift_destroy_boxed_opaque_existential_1(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1(v0 + 144);
  __swift_destroy_boxed_opaque_existential_1(v0 + 184);
  v1 = OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_networkProxy;
  v2 = sub_22088846C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_stockFeedService);
  __swift_destroy_boxed_opaque_existential_1(v0 + OBJC_IVAR____TtC8StocksUI29ForYouFeedGroupEmitterFactory_formatService);
  return v0;
}

uint64_t sub_2205843B8()
{
  sub_2205842F8();

  return swift_deallocClassInstance();
}

void sub_22058445C()
{
  if (!qword_281296B18)
  {
    sub_220584528(255, &qword_281296B20, MEMORY[0x277D321A0]);
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_281296B18);
    }
  }
}

void sub_2205844D0()
{
  if (!qword_2812885C0)
  {
    type metadata accessor for CuratedForYouFeedGroupKnobs();
    v0 = sub_22089230C();
    if (!v1)
    {
      atomic_store(v0, &qword_2812885C0);
    }
  }
}

void sub_220584528(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for ForYouFeedServiceConfig();
    v7 = sub_22044DC38(&qword_28128B960, type metadata accessor for ForYouFeedServiceConfig);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2205845C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_220584624(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_22058468C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2205846F8()
{
  type metadata accessor for StockSearchModalRouter();
  v0 = swift_allocObject();
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t sub_22058473C(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  type metadata accessor for StockSearchViewController(0);
  result = sub_2208884CC();
  if (result)
  {
    v4 = result;
    swift_unknownObjectWeakAssign();

    __swift_project_boxed_opaque_existential_1(a2, a2[3]);
    sub_2204549FC();
    result = sub_2208884CC();
    if (result)
    {
      type metadata accessor for StockSearchModalRouter();
      sub_220448630(&qword_27CF56DC0, 255, type metadata accessor for StockSearchModalRouter);
      sub_22088B00C();

      return __swift_destroy_boxed_opaque_existential_1(v5);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_220584860(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2204951A0();
  result = sub_2208884CC();
  if (result)
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_220495D0C();
    result = sub_2208884CC();
    if (result)
    {
      sub_220496448();
      swift_allocObject();
      return sub_22088E04C();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22058494C(uint64_t a1)
{
  v2 = type metadata accessor for StockSearchPriceChangeDisplayBlueprintModifier();
  MEMORY[0x28223BE20](v2, v3);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = v15 - v8;
  v11 = *(v10 + 20);
  v12 = sub_220885D4C();
  (*(*(v12 - 8) + 16))(&v9[v11], a1, v12);
  *v9 = 0xD000000000000012;
  *(v9 + 1) = 0x80000002208BF650;
  sub_2204792CC(v9, v5, type metadata accessor for StockSearchPriceChangeDisplayBlueprintModifier);
  sub_220584B74();
  swift_allocObject();
  sub_220448630(&qword_28127F380, 255, type metadata accessor for StockSearchPriceChangeDisplayBlueprintModifier);
  v13 = sub_22088B66C();
  sub_220584C68(v9);
  v15[1] = v13;
  sub_220448630(&qword_281297D08, 255, sub_220584B74);
  sub_22088B6DC();
}

void sub_220584B74()
{
  if (!qword_281297D00)
  {
    type metadata accessor for StockSearchSectionDescriptor();
    type metadata accessor for StockSearchModel();
    sub_220448630(qword_281286DF0, 255, type metadata accessor for StockSearchSectionDescriptor);
    sub_220448630(&qword_281291EB0, 255, type metadata accessor for StockSearchModel);
    v0 = sub_22088B67C();
    if (!v1)
    {
      atomic_store(v0, &qword_281297D00);
    }
  }
}

uint64_t sub_220584C68(uint64_t a1)
{
  v2 = type metadata accessor for StockSearchPriceChangeDisplayBlueprintModifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_220584CC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_220584D2C()
{
  result = qword_27CF57C80;
  if (!qword_27CF57C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF57C80);
  }

  return result;
}

unint64_t sub_220584D8C()
{
  result = qword_281293440;
  if (!qword_281293440)
  {
    type metadata accessor for ForYouFeedGroup();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281293440);
  }

  return result;
}

uint64_t sub_220584DF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_220584EA0;

  return MEMORY[0x282191870](a1, a2, a3);
}

uint64_t sub_220584EA0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_220584FB4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_220584FFC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t ChartRange.label.getter()
{
  v1 = sub_2208854FC();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v0, v1, v4);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == *MEMORY[0x277D69120] || v7 == *MEMORY[0x277D69128] || v7 == *MEMORY[0x277D69138])
  {
    goto LABEL_3;
  }

  if (v7 == *MEMORY[0x277D69110])
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v17 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v17;
    v12 = 3;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69158])
  {
    type metadata accessor for Localized();
    v18 = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v20 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v20;
    v12 = 6;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69100])
  {
    goto LABEL_13;
  }

  if (v7 == *MEMORY[0x277D69130])
  {
LABEL_3:
    type metadata accessor for Localized();
    v8 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v11 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v11;
    v12 = 1;
LABEL_4:
    *(v10 + 32) = v12;
    v13 = sub_22089133C();

    return v13;
  }

  if (v7 == *MEMORY[0x277D69148])
  {
    type metadata accessor for Localized();
    v23 = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v25 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v25;
    v12 = 2;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69150])
  {
    type metadata accessor for Localized();
    v26 = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v28 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v28;
    v12 = 5;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69140])
  {
    type metadata accessor for Localized();
    v29 = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v31 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v31;
    v12 = 10;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69118])
  {
LABEL_13:
    type metadata accessor for Localized();
    v21 = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v13 = sub_220884CAC();

    return v13;
  }

  result = sub_2208928AC();
  __break(1u);
  return result;
}

uint64_t ChartRange.accessibilityLabel.getter()
{
  v1 = sub_2208854FC();
  v2 = *(v1 - 8);
  v4 = MEMORY[0x28223BE20](v1, v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v0, v1, v4);
  v7 = (*(v2 + 88))(v6, v1);
  if (v7 == *MEMORY[0x277D69120] || v7 == *MEMORY[0x277D69128] || v7 == *MEMORY[0x277D69138])
  {
    goto LABEL_3;
  }

  if (v7 == *MEMORY[0x277D69110])
  {
    type metadata accessor for Localized();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v16 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v17 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v17;
    v12 = 3;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69158])
  {
    type metadata accessor for Localized();
    v18 = swift_getObjCClassFromMetadata();
    v19 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v20 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v20;
    v12 = 6;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69100])
  {
    goto LABEL_13;
  }

  if (v7 == *MEMORY[0x277D69130])
  {
LABEL_3:
    type metadata accessor for Localized();
    v8 = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v11 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v11;
    v12 = 1;
LABEL_4:
    *(v10 + 32) = v12;
    v13 = sub_22089133C();

    return v13;
  }

  if (v7 == *MEMORY[0x277D69148])
  {
    type metadata accessor for Localized();
    v23 = swift_getObjCClassFromMetadata();
    v24 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v25 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v25;
    v12 = 2;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69150])
  {
    type metadata accessor for Localized();
    v26 = swift_getObjCClassFromMetadata();
    v27 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v28 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v28;
    v12 = 5;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69140])
  {
    type metadata accessor for Localized();
    v29 = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    sub_220884CAC();

    sub_22048D7F8();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_220899360;
    v31 = MEMORY[0x277D83C10];
    *(v10 + 56) = MEMORY[0x277D83B88];
    *(v10 + 64) = v31;
    v12 = 10;
    goto LABEL_4;
  }

  if (v7 == *MEMORY[0x277D69118])
  {
LABEL_13:
    type metadata accessor for Localized();
    v21 = swift_getObjCClassFromMetadata();
    v22 = [objc_opt_self() bundleForClass_];
    v13 = sub_220884CAC();

    return v13;
  }

  result = sub_2208928AC();
  __break(1u);
  return result;
}

unint64_t sub_220586328()
{
  result = qword_27CF56DD0;
  if (!qword_27CF56DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CF56DD0);
  }

  return result;
}

uint64_t sub_22058640C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v107 = a3;
  v108 = a2;
  v116 = sub_22088519C();
  v134 = *(v116 - 8);
  MEMORY[0x28223BE20](v116, v4);
  v115 = v98 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = type metadata accessor for StockFeedModel();
  MEMORY[0x28223BE20](v132, v6);
  v114 = (v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8, v9);
  v11 = v98 - v10;
  sub_22055D328();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v15);
  v117 = v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v135 = v98 - v19;
  sub_22055D524();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v111 = v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for StockFeedSectionDescriptor();
  MEMORY[0x28223BE20](v124, v23);
  v118 = v98 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25, v26);
  v125 = v98 - v27;
  sub_22055CE80(0);
  v29 = v28;
  v122 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v133 = v98 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32, v33);
  v128 = v98 - v34;
  v106 = sub_22088B64C();
  v105 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v35);
  v104 = v98 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22058743C(0, &qword_281297850, MEMORY[0x277D6DF88]);
  v38 = v37;
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v40);
  v101 = v98 - v41;
  sub_220587530();
  MEMORY[0x28223BE20](v42 - 8, v43);
  v98[3] = v98 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22055CF9C(0);
  v46 = v45;
  v100 = *(v45 - 8);
  MEMORY[0x28223BE20](v45, v47);
  v99 = v98 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98[2] = sub_22088E6FC();
  v98[1] = v49;
  v50 = sub_2204442E4(&qword_281296F20, sub_22055CF9C);
  v51 = sub_22089197C();
  v52 = MEMORY[0x277D84F90];
  v123 = v46;
  v103 = v38;
  v102 = v39;
  if (!v51)
  {
LABEL_42:
    v91 = sub_2204442E4(&qword_281297DF8, sub_22055CE80);
    v92 = sub_2204442E4(&qword_281297E00, sub_22055CE80);
    MEMORY[0x223D80A20](v52, v29, v91, v92);
    sub_2204442E4(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    sub_2204442E4(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v93 = v99;
    sub_22088E6EC();
    v94 = v105;
    v95 = v104;
    v96 = v106;
    (*(v105 + 104))(v104, *MEMORY[0x277D6D868], v106);
    sub_2204442E4(&unk_281288C00, type metadata accessor for StockFeedSectionDescriptor);
    v97 = v101;
    sub_22088C67C();
    (*(v94 + 8))(v95, v96);
    v108(v97);
    (*(v102 + 8))(v97, v103);
    return (*(v100 + 8))(v93, v123);
  }

  v138 = MEMORY[0x277D84F90];
  v121 = v51;
  sub_22070BF64(0, v51 & ~(v51 >> 63), 0);
  v129 = v138;
  v120 = v50;
  result = sub_22089193C();
  if (v121 < 0)
  {
    goto LABEL_45;
  }

  v54 = 0;
  v119 = (v122 + 16);
  v130 = (v14 + 16);
  v113 = (v134 + 1);
  v112 = (v14 + 8);
  v134 = (v14 + 32);
  v109 = (v122 + 8);
  v126 = (v122 + 32);
  v55 = v117;
  v131 = v29;
  v56 = v133;
  v110 = a1;
  while (1)
  {
    v57 = __OFADD__(v54, 1);
    v58 = v54 + 1;
    if (v57)
    {
      __break(1u);
      goto LABEL_44;
    }

    v127 = v58;
    v59 = sub_2208919BC();
    (*v119)(v56);
    v59(v137, 0);
    sub_22088B2AC();
    v56 = v133;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v61 = type metadata accessor for StockFeedMastheadModel;
    if (EnumCaseMultiPayload > 7)
    {
      goto LABEL_10;
    }

    if (((1 << EnumCaseMultiPayload) & 0xD8) == 0)
    {
      break;
    }

LABEL_12:
    (*v126)(v128, v56, v29);
LABEL_38:
    v87 = v129;
    v138 = v129;
    v89 = *(v129 + 16);
    v88 = *(v129 + 24);
    if (v89 >= v88 >> 1)
    {
      sub_22070BF64(v88 > 1, v89 + 1, 1);
      v87 = v138;
    }

    *(v87 + 16) = v89 + 1;
    v90 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v129 = v87;
    (*(v122 + 32))(v87 + v90 + *(v122 + 72) * v89, v128, v29);
    result = sub_2208919AC();
    v54 = v127;
    if (v127 == v121)
    {
      v52 = v129;
      goto LABEL_42;
    }
  }

  if (EnumCaseMultiPayload == 2)
  {
    v61 = type metadata accessor for StockFeedSectionDescriptor;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 5)
  {
    goto LABEL_14;
  }

LABEL_10:
  if (!EnumCaseMultiPayload)
  {
LABEL_11:
    sub_2205875FC(v125, v61);
    goto LABEL_12;
  }

  v62 = v125;

  sub_220459628();
  sub_22051F260(v62 + *(v63 + 64), &qword_281296C60, MEMORY[0x277D31C50]);
LABEL_14:
  sub_22088B2AC();
  sub_2204442E4(&qword_281297DE8, sub_22055CE80);
  v64 = sub_22089197C();
  if (!v64)
  {
    v66 = MEMORY[0x277D84F90];
LABEL_37:
    v85 = sub_2204442E4(&qword_281297FB8, sub_22055D328);
    v86 = sub_2204442E4(&qword_281297FC0, sub_22055D328);
    MEMORY[0x223D80A20](v66, v13, v85, v86);
    sub_2204442E4(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    sub_2204442E4(&qword_281293DD0, type metadata accessor for StockFeedModel);
    sub_22088B29C();
    v56 = v133;
    (*v109)(v133, v29);
    goto LABEL_38;
  }

  v65 = v64;
  v136 = MEMORY[0x277D84F90];
  sub_22070BC24(0, v64 & ~(v64 >> 63), 0);
  v66 = v136;
  result = sub_22089193C();
  if ((v65 & 0x8000000000000000) == 0)
  {
    while (2)
    {
      v67 = sub_2208919BC();
      (*v130)(v55);
      v67(v137, 0);
      sub_22088AD8C();
      v68 = swift_getEnumCaseMultiPayload();
      if (v68 > 4)
      {
        if (v68 <= 7)
        {
LABEL_26:
          v72 = type metadata accessor for StockFeedModel;
          goto LABEL_30;
        }

        if (v68 == 8)
        {
          sub_220459914();
          v74 = *&v11[*(v73 + 48)];
          v75 = v115;
          sub_22088518C();
          v76 = v11;
          v77 = v14;
          v78 = sub_22088517C();
          v80 = v79;
          (*v113)(v75, v116);
          v81 = v114;
          *v114 = v78;
          v81[1] = v80;
          v14 = v77;
          v11 = v76;
          v55 = v117;
          v81[2] = v74;
          swift_storeEnumTagMultiPayload();
          sub_2204442E4(&qword_281293DD0, type metadata accessor for StockFeedModel);
          sub_22088AD7C();
          (*v112)(v55, v13);
          v82 = sub_22089030C();
          (*(*(v82 - 8) + 8))(v11, v82);
        }

        else
        {
          if (v68 == 9)
          {
            goto LABEL_26;
          }

LABEL_31:
          (*v134)(v135, v55, v13);
        }

        v136 = v66;
        v84 = *(v66 + 16);
        v83 = *(v66 + 24);
        if (v84 >= v83 >> 1)
        {
          sub_22070BC24(v83 > 1, v84 + 1, 1);
          v66 = v136;
        }

        *(v66 + 16) = v84 + 1;
        (*(v14 + 32))(v66 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v84, v135, v13);
        v29 = v131;
        sub_2208919AC();
        if (!--v65)
        {
          goto LABEL_37;
        }

        continue;
      }

      break;
    }

    if (v68 <= 1)
    {
      v72 = type metadata accessor for StockFeedMastheadModel;
    }

    else
    {
      if (v68 == 2)
      {
LABEL_23:
        v71 = sub_22088685C();
        (*(*(v71 - 8) + 8))(v11, v71);
        goto LABEL_31;
      }

      if (v68 == 3)
      {
        sub_2204597F0();
        v70 = *(v69 + 48);
        sub_22051F260(&v11[*(v69 + 64)], &qword_281299370, MEMORY[0x277D69178]);
        sub_22051F260(&v11[v70], &qword_2812990C0, MEMORY[0x277D697F8]);
        goto LABEL_23;
      }

      v72 = type metadata accessor for StockEarningsModel;
    }

LABEL_30:
    sub_2205875FC(v11, v72);
    goto LABEL_31;
  }

LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void sub_22058743C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for StockFeedSectionDescriptor();
    v8[1] = type metadata accessor for StockFeedModel();
    v8[2] = sub_2204442E4(&unk_281288C10, type metadata accessor for StockFeedSectionDescriptor);
    v8[3] = sub_2204442E4(&qword_281293DD0, type metadata accessor for StockFeedModel);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_220587530()
{
  if (!qword_281298790)
  {
    sub_22055CE80(255);
    sub_2204442E4(&qword_281297DF8, sub_22055CE80);
    sub_2204442E4(&qword_281297E00, sub_22055CE80);
    v0 = sub_2208888CC();
    if (!v1)
    {
      atomic_store(v0, &qword_281298790);
    }
  }
}

uint64_t sub_2205875FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ANFSceneActivityBridge.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall ANFSceneActivityBridge.sceneDidDisconnect()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  if (v2)
  {
    v3 = 0;
    v4 = v1 + 40;
    while (v3 < *(v1 + 16))
    {
      ++v3;
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      if (v2 == v3)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t ANFSceneActivityBridge.performOnSceneDidDisconnect(on:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  v6 = *(v2 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + 16) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_220587E20(0, v6[2] + 1, 1, v6);
    *(v2 + 16) = v6;
  }

  v9 = v6[2];
  v8 = v6[3];
  if (v9 >= v8 >> 1)
  {
    v6 = sub_220587E20((v8 > 1), v9 + 1, 1, v6);
  }

  v6[2] = v9 + 1;
  v10 = &v6[2 * v9];
  v10[4] = sub_2204D48F4;
  v10[5] = v5;
  *(v2 + 16) = v6;
  return swift_endAccess();
}

char *sub_220587A04(char *result, int64_t a2, char a3, char *a4)
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
    sub_22048E39C(0, &qword_28127DE78, type metadata accessor for CGRect, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

size_t sub_220587BB0(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, unint64_t *a6, uint64_t a7)
{
  v10 = result;
  if (a3)
  {
    v11 = a4[3];
    v12 = v11 >> 1;
    if ((v11 >> 1) < a2)
    {
      if (v12 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if ((v11 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v12 = a2;
      }
    }
  }

  else
  {
    v12 = a2;
  }

  v13 = a4[2];
  if (v12 <= v13)
  {
    v14 = a4[2];
  }

  else
  {
    v14 = v12;
  }

  if (!v14)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  sub_220588858(0, a5, a6, a7);
  sub_220462184(0, a6, a7, MEMORY[0x277D6C7C0]);
  v16 = *(*(v15 - 8) + 72);
  v17 = (*(*(v15 - 8) + 80) + 32) & ~*(*(v15 - 8) + 80);
  v18 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v18);
  if (!v16)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v17 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_29;
  }

  v18[2] = v13;
  v18[3] = 2 * ((result - v17) / v16);
LABEL_19:
  sub_220462184(0, a6, a7, MEMORY[0x277D6C7C0]);
  v21 = *(v20 - 8);
  if (v10)
  {
    if (v18 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v18 + v22 >= a4 + v22 + *(v21 + 72) * v13))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v18 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v18;
}

void *sub_220587E20(void *result, int64_t a2, char a3, void *a4)
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
    sub_22048E39C(0, &qword_28127DE38, sub_220448488, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_220448488();
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_220587F84(char *result, int64_t a2, char a3, char *a4)
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
    sub_22048E39C(0, &qword_27CF56DE8, sub_220588800, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_220588200(char *result, int64_t a2, char a3, char *a4)
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
    sub_220462184(0, &qword_28127DE40, MEMORY[0x277D84F70] + 8, MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_2205883B0(void *result, int64_t a2, char a3, void *a4)
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
    sub_220588968();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    sub_220530808(0, &qword_281297AA0, &qword_281297AA8, MEMORY[0x277D6DBE8], MEMORY[0x277D83D88]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_220588644(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_22048E39C(0, &qword_28127E190, MEMORY[0x277D69858], MEMORY[0x277D84560]);
  v4 = *(sub_22088698C() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_220588764(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_220462184(0, &qword_28127DEE8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_220588800()
{
  if (!qword_27CF56DF0)
  {
    v0 = sub_2208919DC();
    if (!v1)
    {
      atomic_store(v0, &qword_27CF56DF0);
    }
  }
}

void sub_220588858(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_220462184(255, a3, a4, MEMORY[0x277D6C7C0]);
    v5 = sub_22089288C();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_2205888C4(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_220462184(0, &qword_28127DE50, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_220588968()
{
  if (!qword_28127E080)
  {
    sub_220530808(255, &qword_281297AA0, &qword_281297AA8, MEMORY[0x277D6DBE8], MEMORY[0x277D83D88]);
    v0 = sub_22089288C();
    if (!v1)
    {
      atomic_store(v0, &qword_28127E080);
    }
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_220588A24(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_220588A6C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_220588AD4(uint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *))
{
  v69 = a2;
  v70 = a3;
  v62 = a1;
  sub_2204AD9C0(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v67 = *(v4 - 8);
  v68 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = (&v57 - v6);
  sub_2204AD9C0(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v61 = v8;
  v60 = *(v8 - 8);
  v58 = *(v60 + 64);
  MEMORY[0x28223BE20](v8, v9);
  v59 = &v57 - v10;
  v66 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v66, v11);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B36C();
  v15 = v14;
  v65 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StockListStockModel(0);
  MEMORY[0x28223BE20](v19 - 8, v20);
  v64 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_22088BC8C();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v24);
  v26 = &v57 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v3;
  sub_22088CEFC();
  v27 = (*(v23 + 88))(v26, v22);
  v28 = *MEMORY[0x277D6DA70];
  (*(v23 + 8))(v26, v22);
  if (v27 == v28)
  {
    v30 = v67;
    v29 = v68;
    v32 = v69;
    v31 = v70;
    sub_22088CEEC();
    sub_22088AD8C();
    (*(v65 + 8))(v18, v15);
    if (!swift_getEnumCaseMultiPayload())
    {
      v39 = v64;
      v40 = sub_2204CDB9C(v13, v64);
      MEMORY[0x28223BE20](v40, v41);
      v42 = v63;
      *(&v57 - 2) = v63;
      *(&v57 - 1) = v39;
      sub_220888FBC();
      v43 = v60;
      v44 = v59;
      v45 = v61;
      (*(v60 + 16))(v59, v62, v61);
      sub_220589F34(v42, v71);
      v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
      v47 = (v58 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
      v48 = swift_allocObject();
      (*(v43 + 32))(v48 + v46, v44, v45);
      v49 = v48 + v47;
      v50 = v71[5];
      *(v49 + 64) = v71[4];
      *(v49 + 80) = v50;
      *(v49 + 96) = v72;
      v51 = v71[1];
      *v49 = v71[0];
      *(v49 + 16) = v51;
      v52 = v71[3];
      *(v49 + 32) = v71[2];
      *(v49 + 48) = v52;
      v53 = (v48 + ((v47 + 111) & 0xFFFFFFFFFFFFFFF8));
      *v53 = v32;
      v53[1] = v31;

      v54 = sub_220888D9C();
      sub_220888E4C();

      v55 = swift_allocObject();
      *(v55 + 16) = v32;
      *(v55 + 24) = v31;

      v56 = sub_220888D9C();
      sub_220888E9C();

      return sub_2204AE334(v64, type metadata accessor for StockListStockModel);
    }

    sub_2204AE334(v13, type metadata accessor for StockListModel);
    sub_220589EC4();
    v33 = swift_allocError();
    *v34 = 0;
    *v7 = v33;
    v35 = v30;
    (*(v30 + 104))(v7, *MEMORY[0x277D6DF68], v29);
    v32(v7);
  }

  else
  {
    sub_220589EC4();
    v36 = swift_allocError();
    *v37 = 0;
    *v7 = v36;
    v35 = v67;
    v29 = v68;
    (*(v67 + 104))(v7, *MEMORY[0x277D6DF68], v68);
    v69(v7);
  }

  return (*(v35 + 8))(v7, v29);
}

uint64_t sub_220589184(void *a1)
{
  v10 = sub_220886A4C();
  v2 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[5];
  v9 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  sub_22088681C();
  __swift_project_boxed_opaque_existential_1(a1 + 2, a1[5]);
  sub_2208863EC();
  v7 = sub_220885FBC();

  (*(v2 + 8))(v5, v10);
  return v7;
}

uint64_t sub_2205892DC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v97 = a4;
  v96 = a5;
  v100 = a2;
  v81 = sub_22088CFEC();
  v80 = *(v81 - 8);
  MEMORY[0x28223BE20](v81, v6);
  v79 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for StockListModel(0);
  MEMORY[0x28223BE20](v82, v8);
  v78 = &v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204AD9C0(0, &qword_281296EE0, MEMORY[0x277D6EC60]);
  v99 = v10;
  v89 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v88 = &v76 - v12;
  sub_2204CF334(0);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v93 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2204AD9C0(0, &qword_281297848, MEMORY[0x277D6DF88]);
  v94 = v16;
  v92 = *(v16 - 8);
  MEMORY[0x28223BE20](v16, v17);
  v95 = (&v76 - v18);
  sub_22046B36C();
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19, v22);
  v83 = &v76 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24, v25);
  v86 = &v76 - v26;
  MEMORY[0x28223BE20](v27, v28);
  v30 = &v76 - v29;
  sub_2204A1EF0(0);
  MEMORY[0x28223BE20](v31 - 8, v32);
  v34 = &v76 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22046B19C();
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35, v38);
  v85 = &v76 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40, v41);
  v90 = &v76 - v42;
  v43 = *(a3 + 56);
  sub_22088CEEC();
  sub_22088AD4C();
  v84 = v21;
  v45 = *(v21 + 8);
  v44 = v21 + 8;
  v77 = v30;
  v87 = v20;
  v91 = v45;
  v45(v30, v20);
  sub_22088E76C();

  v46 = *(v37 + 48);
  v98 = v36;
  if (v46(v34, 1, v36) == 1)
  {
    sub_2204AE334(v34, sub_2204A1EF0);
    sub_220589EC4();
    v47 = swift_allocError();
    *v48 = 1;
    v49 = v94;
    v50 = v95;
    *v95 = v47;
    v51 = v92;
    (*(v92 + 104))(v50, *MEMORY[0x277D6DF68], v49);
    v97(v50);
    return (*(v51 + 8))(v50, v49);
  }

  else
  {
    v53 = v90;
    (*(v37 + 32))(v90, v34, v98);
    v54 = v83;
    v76 = v43;
    sub_22088CEEC();
    v55 = v87;
    sub_22088AD4C();
    v91(v54, v55);
    v56 = v93;
    sub_22088B3AC();

    v57 = v84;
    v58 = (*(v84 + 48))(v56, 1, v55);
    v59 = v37;
    v60 = v53;
    if (v58 == 1)
    {
      sub_2204AE334(v93, sub_2204CF334);
      sub_220589EC4();
      v61 = swift_allocError();
      *v62 = 1;
      v63 = v94;
      v64 = v95;
      *v95 = v61;
      v65 = v92;
      (*(v92 + 104))(v64, *MEMORY[0x277D6DF68], v63);
      v97(v64);
      (*(v65 + 8))(v64, v63);
      return (*(v59 + 8))(v60, v98);
    }

    else
    {
      (*(v57 + 32))(v86, v93, v55);
      (*(v89 + 16))(v88, v100, v99);
      v93 = v37;
      (*(v37 + 16))(v85, v53, v98);
      sub_22088B31C();
      sub_22046F584(&qword_281297DB8, sub_22046B19C);
      sub_22089193C();
      sub_22089199C();
      v66 = v92;
      if (v102 == v101)
      {
        swift_storeEnumTagMultiPayload();
        sub_22046F584(&qword_281293CD8, type metadata accessor for StockListModel);
        v67 = v77;
        sub_22088AD7C();
        sub_22088B30C();
        v91(v67, v55);
      }

      v68 = v98;
      v69 = v99;
      v84 = v44;
      v70 = v88;
      sub_22088E75C();
      v71 = v80;
      v72 = v79;
      v73 = v81;
      (*(v80 + 104))(v79, *MEMORY[0x277D6E440], v81);
      sub_22088CECC();
      (*(v71 + 8))(v72, v73);
      sub_22045B950();
      sub_22046F584(&qword_281293CD8, type metadata accessor for StockListModel);
      v74 = v95;
      sub_22088C64C();

      v97(v74);
      (*(v66 + 8))(v74, v94);
      v75 = *(v93 + 8);
      v75(v85, v68);
      (*(v89 + 8))(v70, v69);
      v91(v86, v55);
      return (v75)(v90, v68);
    }
  }
}