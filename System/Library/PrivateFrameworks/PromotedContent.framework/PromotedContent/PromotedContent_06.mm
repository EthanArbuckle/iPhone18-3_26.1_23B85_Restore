uint64_t sub_1C1B2DD0C()
{
  v1 = v0;
  v2 = type metadata accessor for PlaceholderRequest();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v61 = &v57 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v57 - v10;
  v12 = OBJC_IVAR___APPCContext_fetchingLock;
  [*(v0 + OBJC_IVAR___APPCContext_fetchingLock) lock];
  v13 = *(v0 + OBJC_IVAR___APPCContext_placeholdersLock);
  [v13 lock];
  v14 = OBJC_IVAR___APPCContext_placeholders;
  swift_beginAccess();
  v15 = *(v1 + v14);
  v67 = v15;

  [v13 unlock];
  v16 = OBJC_IVAR___APPCContext_fetching;
  swift_beginAccess();
  v57 = v16;
  v17 = *(v1 + v16);
  v18 = *(v17 + 2);

  v63 = v1;
  v64 = v7;
  if (!v18)
  {
    goto LABEL_42;
  }

LABEL_6:
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v22 = *(v17 + 2);
    if (!v22)
    {
      goto LABEL_40;
    }

    goto LABEL_8;
  }

  v17 = sub_1C1B8FEA0(v17);
  v22 = *(v17 + 2);
  if (!v22)
  {
LABEL_40:
    __break(1u);
LABEL_41:
    v15 = v67;
LABEL_42:
    v58 = OBJC_IVAR___APPCContext_waitingLock;
    [*(v1 + OBJC_IVAR___APPCContext_waitingLock) lock];
    v31 = OBJC_IVAR___APPCContext_waiting;

    swift_beginAccess();
    v32 = v15[2];
    v59 = v15;
    v62 = v17;
    if (!v32)
    {
LABEL_80:
      [*(v1 + v58) unlock];
      [*(v1 + v12) unlock];
      v43 = v59;
      v44 = v59[2];
      if (v44)
      {
        v64 = v12;
        v65 = MEMORY[0x1E69E7CC0];
        sub_1C1AC7E24(0, v44, 0);
        v45 = v65;
        v46 = v43 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
        v47 = *(v3 + 72);
        v48 = v61;
        do
        {
          sub_1C1B0B6D8(v46, v48);
          v49 = *(v48 + *(v2 + 20));
          sub_1C1B0B73C(v48);
          v65 = v45;
          v51 = *(v45 + 16);
          v50 = *(v45 + 24);
          if (v51 >= v50 >> 1)
          {
            sub_1C1AC7E24((v50 > 1), v51 + 1, 1);
            v48 = v61;
            v45 = v65;
          }

          *(v45 + 16) = v51 + 1;
          *(v45 + 8 * v51 + 32) = v49;
          v46 += v47;
          --v44;
        }

        while (v44);

        v52 = OBJC_IVAR___APPCContext_prefetchLock;
        v53 = v63;
        [*(v63 + OBJC_IVAR___APPCContext_prefetchLock) lock];
        v54 = v64;
        [*&v64[v53] lock];
        swift_beginAccess();

        sub_1C1AAB914(v55);
        swift_endAccess();
        [*&v54[v53] unlock];
        sub_1C1B2F85C(v45);
        [*(v53 + v52) unlock];
      }

      else
      {
      }
    }

    v60 = "eContentDepiction>16@0:8";
    v33 = v59;
    while (1)
    {
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v35 = v33[2];
        if (!v35)
        {
          goto LABEL_79;
        }
      }

      else
      {
        v33 = sub_1C1B8FE8C(v33);
        v35 = v33[2];
        if (!v35)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }
      }

      v36 = v35 - 1;
      v37 = v33 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v36;
      v33[2] = v36;
      sub_1C1B32A08(v37, v7);
      v38 = *(v1 + v31);
      v39 = *(v38 + 16);
      if (v39)
      {
        break;
      }

LABEL_45:
      sub_1C1B0B73C(v7);
      if (!v33[2])
      {
        goto LABEL_80;
      }
    }

    v40 = 0;
    v21 = *&v7[*(v2 + 20)];
    while (1)
    {
      v42 = *(v38 + 32 + 8 * v40);
      if (v21 > 3)
      {
        break;
      }

      if (v21 > 1)
      {
        if (v21 == 2)
        {
          if (v42 == 2)
          {
            goto LABEL_44;
          }
        }

        else if (v42 == 3)
        {
          goto LABEL_44;
        }

        goto LABEL_54;
      }

      if (!v21)
      {
        goto LABEL_50;
      }

      if (v21 != 1)
      {
        goto LABEL_88;
      }

      if (v42 == 1)
      {
LABEL_44:
        swift_beginAccess();
        sub_1C1B2BACC(v40);
        swift_endAccess();
        sub_1C1B95138();
        sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
        v34 = sub_1C1B95298();
        v7 = v64;
        sub_1C1B94BA8();

        goto LABEL_45;
      }

LABEL_54:
      if (v39 == ++v40)
      {
        goto LABEL_45;
      }
    }

    if (v21 > 5)
    {
      switch(v21)
      {
        case 6:
          if (v42 == 6)
          {
            goto LABEL_44;
          }

          break;
        case 7:
          if (v42 == 7)
          {
            goto LABEL_44;
          }

          break;
        case 8:
          break;
        default:
          goto LABEL_88;
      }

      goto LABEL_54;
    }

    if (v21 == 4)
    {
      if (v42 == 4)
      {
        goto LABEL_44;
      }

      goto LABEL_54;
    }

LABEL_50:
    if (v42)
    {
      v41 = v42 == 5;
    }

    else
    {
      v41 = 1;
    }

    if (v41)
    {
      goto LABEL_44;
    }

    goto LABEL_54;
  }

LABEL_8:
  v20 = v22 - 1;
  v23 = *&v17[8 * v20 + 32];
  *(v17 + 2) = v20;
  v24 = v67;
  v25 = v67[2];
  if (!v25)
  {
    goto LABEL_5;
  }

  v26 = v12;
  v27 = v17;
  v28 = 0;
  while (v28 < v24[2])
  {
    sub_1C1B0B6D8(v24 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v28, v11);
    v30 = *&v11[*(v2 + 20)];
    if (v23 <= 3)
    {
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          sub_1C1B0B73C(v11);
          if (v30 == 2)
          {
            goto LABEL_3;
          }
        }

        else
        {
          sub_1C1B0B73C(v11);
          if (v30 == 3)
          {
            goto LABEL_3;
          }
        }

        goto LABEL_14;
      }

      if (!v23)
      {
        goto LABEL_10;
      }

      if (v23 != 1)
      {
        goto LABEL_89;
      }

      sub_1C1B0B73C(v11);
      if (v30 == 1)
      {
LABEL_3:
        v19 = v61;
        sub_1C1B2B9AC(v28, v61);
        sub_1C1B0B73C(v19);
LABEL_4:
        v17 = v27;
        v20 = *(v27 + 2);
        v12 = v26;
        v1 = v63;
        v7 = v64;
LABEL_5:
        if (!v20)
        {
          goto LABEL_41;
        }

        goto LABEL_6;
      }
    }

    else
    {
      if (v23 <= 5)
      {
        if (v23 == 4)
        {
          sub_1C1B0B73C(v11);
          if (v30 == 4)
          {
            goto LABEL_3;
          }

          goto LABEL_14;
        }

LABEL_10:
        sub_1C1B0B73C(v11);
        if (v30)
        {
          v29 = v30 == 5;
        }

        else
        {
          v29 = 1;
        }

        if (v29)
        {
          goto LABEL_3;
        }

        goto LABEL_14;
      }

      switch(v23)
      {
        case 6:
          sub_1C1B0B73C(v11);
          if (v30 == 6)
          {
            goto LABEL_3;
          }

          break;
        case 7:
          sub_1C1B0B73C(v11);
          if (v30 == 7)
          {
            goto LABEL_3;
          }

          break;
        case 8:
          sub_1C1B0B73C(v11);
          break;
        default:
LABEL_89:
          v66 = v23;
          goto LABEL_90;
      }
    }

LABEL_14:
    if (v25 == ++v28)
    {
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_88:
  v65 = v21;

LABEL_90:
  result = sub_1C1B958C8();
  __break(1u);
  return result;
}

id sub_1C1B2E4E8(char a1)
{
  v2 = v1;
  v4 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v49 - v6;
  v8 = sub_1C1B945F8();
  v50 = *(v8 - 8);
  v51 = v8;
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v2 + OBJC_IVAR___APPCBaseContext_maxSize);
  if (a1)
  {
    v12 = (v2 + OBJC_IVAR___APPCBaseContext_maxSize + 8);
  }

  else
  {
    v12 = (v2 + OBJC_IVAR___APPCBaseContext_maxSize);
  }

  if ((a1 & 1) == 0)
  {
    v11 = (v2 + OBJC_IVAR___APPCBaseContext_maxSize + 8);
  }

  v13 = *v11;
  v14 = *v12;
  v15 = *(v2 + OBJC_IVAR___APPCBaseContext_adjacent);
  v53 = MEMORY[0x1E69E7CC0];
  v49 = v7;
  if (v15 >> 62)
  {
LABEL_40:
    v16 = sub_1C1B953A8();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  while (v16 != v17)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1C6907490](v17, v15);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_38;
      }
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_39;
      }

      v18 = *(v15 + 8 * v17 + 32);
      swift_unknownObjectRetain();
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }
    }

    swift_getObjectType();
    v20 = sub_1C1B59844();
    v21 = swift_unknownObjectRelease();
    ++v17;
    if (v20)
    {
      MEMORY[0x1C6906EA0](v21);
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v22 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C1B94F08();
      }

      sub_1C1B94F48();
      v17 = v19;
    }
  }

  v23 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v50 + 16))(v52, v2 + v23, v51);
  v24 = (v2 + OBJC_IVAR___APPCBaseContext_requestedAd);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  if (*(v2 + OBJC_IVAR___APPCBaseContext_current))
  {
    v27 = *(v2 + OBJC_IVAR___APPCBaseContext_current);
    swift_getObjectType();

    v28 = sub_1C1B59844();
  }

  else
  {
    v29 = v24[1];

    v28 = 0;
  }

  v30 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v31 = *(v2 + v30);
  v32 = v49;
  if (v31)
  {
    v33 = v31;
    v34 = sub_1C1AB7364();
LABEL_27:
    v36 = v34;

    v37 = sub_1C1ABAE90(v36);

    goto LABEL_28;
  }

  v35 = *(v2 + OBJC_IVAR___APPCContext_appStoreContext);
  if (v35)
  {
    v33 = v35;
    v34 = sub_1C1AD6D7C();
    goto LABEL_27;
  }

  v37 = 0;
LABEL_28:
  v38 = sub_1C1B945B8();
  if (v25)
  {
    v39 = sub_1C1B94D78();
  }

  else
  {
    v39 = 0;
  }

  sub_1C1AA576C(0, &qword_1EDE6CA08, 0x1E698A030);
  v40 = sub_1C1B94EB8();

  if (v37)
  {
    sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
    v41 = sub_1C1B94CA8();
  }

  else
  {
    v41 = 0;
  }

  v42 = [objc_allocWithZone(MEMORY[0x1E698A038]) initWithIdentifier:v38 maxSize:v39 requestedAdIdentifier:v28 currentContent:v40 adjacentContent:v41 supplementalContext:{v14, v13}];

  (*(v50 + 8))(v52, v51);
  v43 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  sub_1C1ABB0C4(v2 + v43, v32);
  v44 = sub_1C1B94588();
  v45 = *(v44 - 8);
  v46 = 0;
  if ((*(v45 + 48))(v32, 1, v44) != 1)
  {
    v46 = sub_1C1B94538();
    (*(v45 + 8))(v32, v44);
  }

  [v42 setPrefetchTimestamp_];

  v47 = *(v2 + OBJC_IVAR___APPCContext_appStoreContext);
  *(v2 + OBJC_IVAR___APPCContext_appStoreContext) = 0;

  return v42;
}

uint64_t sub_1C1B2EA58()
{
  v1 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v10 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_17:
    v3 = sub_1C1B953A8();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v4 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6907490](v4, v2);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
        swift_unknownObjectRetain();
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      if ([v5 available])
      {
        sub_1C1B954F8();
        v7 = *(v10 + 16);
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v4;
    }

    while (v6 != v3);
  }

  v10 = sub_1C1B90C58(v8);
  sub_1C1B2FD7C(&v10);

  return v10;
}

uint64_t sub_1C1B2EC10(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = [*a1 serverUnfilledReason];
  v5 = [v3 serverUnfilledReason];
  v6 = [v2 error];
  result = [v3 error];
  if (v4 == 200)
  {
    if (v5 == 200)
    {
      if (v6)
      {
        goto LABEL_4;
      }

      if (!result)
      {
        return result;
      }

LABEL_23:

      return 1;
    }

    if (!v6)
    {
      goto LABEL_23;
    }

    if (result)
    {
      v12 = result;

      v9 = v12;
LABEL_21:

      return 0;
    }

LABEL_26:

    return 0;
  }

  if (v5 == 200 && result == 0)
  {
    goto LABEL_26;
  }

  if (v6)
  {
    v11 = 1;
  }

  else
  {
    v11 = result == 0;
  }

  if (!v11)
  {
    goto LABEL_23;
  }

  if (v5 != 200)
  {
    if (result || !v6)
    {
      v13 = result;
      v14 = UnfilledReason.fulfillOrder.getter(v4);
      v15 = UnfilledReason.fulfillOrder.getter(v5);

      return v14 < v15;
    }

    goto LABEL_26;
  }

  if (v6)
  {
LABEL_4:
    v8 = result;

    v9 = v8;
    if (!v8)
    {
      return 0;
    }

    goto LABEL_21;
  }

  return 0;
}

uint64_t Context.tryToFillInfo(type:size:placeholderIdentifier:)(uint64_t a1, uint64_t a2, unint64_t a3, double a4, double a5)
{
  result = sub_1C1B2D784(a1, a2, a3, a4, a5);
  if (result)
  {
    type metadata accessor for PromotedContent();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v7 = sub_1C1AB5618(v6, *(v6 + OBJC_IVAR___APPCPromotedContent_placeholder), 0, 0);
      swift_unknownObjectRelease();
      return v7;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C1B2EDF0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v49[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for PlaceholderRequest();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v49[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(a1 + *(v11 + 20));
  v15 = (a1 + *(v11 + 24));
  v16 = *v15;
  v17 = v15[1];
  v18 = sub_1C1B945A8();
  v20 = sub_1C1B2D784(v14, v18, v19, v16, v17);
  v22 = v21;

  if (v20)
  {
    v23 = a1 + *(v9 + 32);
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = swift_unknownObjectRetain();
    v25(v26);
    v27 = *(v2 + OBJC_IVAR___APPCContext_placeholdersLock);
    [v27 lock];
    v28 = OBJC_IVAR___APPCContext_placeholders;
    swift_beginAccess();
    v29 = *(v2 + v28);

    v30 = sub_1C1B2F20C(a1, v29);
    v32 = v31;

    if ((v32 & 1) == 0)
    {
      swift_beginAccess();
      sub_1C1B2B9AC(v30, v13);
      sub_1C1B0B73C(v13);
      swift_endAccess();
    }

    [v27 unlock];
    return swift_unknownObjectRelease_n();
  }

  else
  {
    v34 = *(a1 + *(v9 + 28));
    type metadata accessor for PromotedContent();
    v35 = swift_dynamicCastClass();
    if (v35)
    {
      v36 = OBJC_IVAR___APPCPromotedContent_serverUnfilledReason;
      v37 = v35;
      swift_beginAccess();
      *(v37 + v36) = v22;
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        [Strong setUnfilledReason_];
        swift_unknownObjectRelease();
      }
    }

    sub_1C1B95138();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v39 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_1C1B9AF30;
    v41 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v5 + 16))(v8, v2 + v41, v4);
    v42 = sub_1C1B945A8();
    v44 = v43;
    (*(v5 + 8))(v8, v4);
    v45 = MEMORY[0x1E69E6158];
    *(v40 + 56) = MEMORY[0x1E69E6158];
    v46 = sub_1C1AA5E7C();
    *(v40 + 64) = v46;
    *(v40 + 32) = v42;
    *(v40 + 40) = v44;
    v47 = sub_1C1B945A8();
    *(v40 + 96) = v45;
    *(v40 + 104) = v46;
    *(v40 + 72) = v47;
    *(v40 + 80) = v48;
    sub_1C1B94BA8();
  }
}

uint64_t sub_1C1B2F20C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderRequest();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v12 = *(v6 + 72);
    do
    {
      sub_1C1B0B6D8(v11, v8);
      if ((sub_1C1B945C8() & 1) != 0 && *&v8[*(v4 + 20)] == *(a1 + *(v4 + 20)))
      {
        v13 = &v8[*(v4 + 24)];
        v14 = *v13;
        v15 = v13[1];
        sub_1C1B0B73C(v8);
        v16 = (a1 + *(v4 + 24));
        if (v14 == *v16 && v15 == v16[1])
        {
          return v10;
        }
      }

      else
      {
        sub_1C1B0B73C(v8);
      }

      ++v10;
      v11 += v12;
    }

    while (v9 != v10);
  }

  return 0;
}

id sub_1C1B2F378(uint64_t a1)
{
  v3 = type metadata accessor for PlaceholderRequest();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + OBJC_IVAR___APPCContext_placeholdersLock);
  [v8 lock];
  v9 = OBJC_IVAR___APPCContext_placeholders;
  swift_beginAccess();
  v10 = *(v1 + v9);
  v11 = *(v10 + 16);
  if (v11)
  {
    v19 = v9;
    v20 = v8;
    v12 = *(v3 + 28);
    v13 = v10 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);

    do
    {
      sub_1C1B0B6D8(v13, v7);
      v15 = *&v7[v12];
      swift_unknownObjectRetain();
      sub_1C1B0B73C(v7);
      [v15 setError_];
      swift_unknownObjectRelease();
      v13 += v14;
      --v11;
    }

    while (v11);

    v9 = v19;
    v8 = v20;
    v16 = *(v1 + v19);
  }

  *(v1 + v9) = MEMORY[0x1E69E7CC0];

  return [v8 unlock];
}

void sub_1C1B2F524(void *a1)
{
  v2 = v1;
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v9 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1C1B9AF30;
    v11 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    (*(v5 + 16))(v8, v2 + v11, v4);
    v12 = sub_1C1B945A8();
    v14 = v13;
    (*(v5 + 8))(v8, v4);
    v15 = MEMORY[0x1E69E6158];
    *(v10 + 56) = MEMORY[0x1E69E6158];
    v16 = sub_1C1AA5E7C();
    *(v10 + 64) = v16;
    *(v10 + 32) = v12;
    *(v10 + 40) = v14;
    v30[4] = a1;
    sub_1C1AC1F08(&qword_1EBF090A8, &qword_1C1B9FE70);
    v17 = sub_1C1B952B8();
    *(v10 + 96) = v15;
    *(v10 + 104) = v16;
    *(v10 + 72) = v17;
    *(v10 + 80) = v18;
    sub_1C1B94BA8();

    v19 = *(v2 + OBJC_IVAR___APPCContext_lastError);
    *(v2 + OBJC_IVAR___APPCContext_lastError) = a1;
    v20 = a1;

    v21 = OBJC_IVAR___APPCContext_fetchingLock;
    [*(v2 + OBJC_IVAR___APPCContext_fetchingLock) lock];
    v22 = OBJC_IVAR___APPCContext_fetching;
    swift_beginAccess();
    v23 = *(v2 + v22);
    v24 = MEMORY[0x1E69E7CC0];
    *(v2 + v22) = MEMORY[0x1E69E7CC0];

    [*(v2 + v21) unlock];
    v25 = OBJC_IVAR___APPCContext_waitingLock;
    [*(v2 + OBJC_IVAR___APPCContext_waitingLock) lock];
    v26 = OBJC_IVAR___APPCContext_waiting;
    swift_beginAccess();
    v27 = *(v2 + v26);
    *(v2 + v26) = v24;

    [*(v2 + v25) unlock];
    v28 = a1;
    v29 = sub_1C1B94448();
    sub_1C1B2F378(v29);
  }
}

uint64_t sub_1C1B2F85C(uint64_t a1)
{
  v2 = v1;
  sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C1B9FE60;
  *(v4 + 32) = sub_1C1B2E4E8(0);
  v26 = v4;
  v5 = [objc_opt_self() currentDevice];
  v6 = [v5 userInterfaceIdiom];

  if (v6 != 1 || (sub_1C1B4D2D4() & 1) == 0)
  {
    goto LABEL_5;
  }

  sub_1C1B2E4E8(1);
  MEMORY[0x1C6906EA0]();
  if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    sub_1C1B94F48();
    v4 = v26;
LABEL_5:
    v7 = *(a1 + 16);
    if (v7)
    {
      break;
    }

LABEL_10:
    if (v4 >> 62)
    {
      a1 = sub_1C1B953A8();
      if (!a1)
      {
LABEL_22:
      }
    }

    else
    {
      a1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!a1)
      {
        goto LABEL_22;
      }
    }

    if (a1 >= 1)
    {
      v13 = 0;
      v22 = v25;
      v23 = OBJC_IVAR___APPCContext_requester;
      do
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x1C6907490](v13, v4);
        }

        else
        {
          v14 = *(v4 + 8 * v13 + 32);
        }

        v15 = v14;
        sub_1C1ABB134(v14);
        v16 = *(v2 + v23);
        if (v16)
        {
          sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
          v17 = v16;
          v18 = sub_1C1B94EB8();
          v19 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v25[2] = sub_1C1B329F8;
          v25[3] = v19;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          v25[0] = sub_1C1B451A4;
          v25[1] = &unk_1F41520F8;
          v20 = _Block_copy(aBlock);

          [v17 requestPromotedContentOfTypes:v18 forContext:v15 completionHandler:{v20, v22}];

          _Block_release(v20);
          v15 = v18;
        }

        ++v13;
      }

      while (a1 != v13);
    }

    __break(1u);
LABEL_26:
    sub_1C1B94F08();
  }

  v8 = v4;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C1B95518();
  v9 = (a1 + 32);
  while (1)
  {
    v11 = *v9++;
    v10 = v11;
    if (v11 >= 9)
    {
      break;
    }

    [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    sub_1C1B954F8();
    v12 = *(aBlock[0] + 16);
    sub_1C1B95528();
    sub_1C1B95538();
    sub_1C1B95508();
    if (!--v7)
    {
      v4 = v8;
      goto LABEL_10;
    }
  }

  result = sub_1C1B958C8();
  __break(1u);
  return result;
}

void sub_1C1B2FC50(void *a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_1C1B2F524(a1);
  }
}

void sub_1C1B2FCAC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
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
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      sub_1C1AC1F08(&qword_1EBF090A0, &qword_1C1B98F60);
      v8 = swift_allocObject();
      v9 = j__malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1C1B2FD7C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1C1B91B58(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1C1B2FDF8(v6);
  return sub_1C1B95508();
}

void sub_1C1B2FDF8(unint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1C1B95848();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1C1AC1F08(&unk_1EBF09020, &qword_1C1B98F38);
        v6 = sub_1C1B94F28();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1C1B30488(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1C1B2FF08(0, v2, 1, a1);
  }
}

void sub_1C1B2FF08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 == a2)
  {
    return;
  }

  v4 = *a4;
  v5 = *a4 + 8 * a3 - 8;
  v6 = a1 - a3;
LABEL_6:
  v21 = v5;
  v22 = a3;
  v7 = *(v4 + 8 * a3);
  v20 = v6;
  while (1)
  {
    v8 = *v5;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v9 = [v7 serverUnfilledReason];
    v10 = [v8 serverUnfilledReason];
    v11 = [v7 error];
    v12 = [v8 error];
    v13 = v12;
    if (v9 == 200)
    {
      if (v10 == 200)
      {
        if (v11)
        {
          goto LABEL_129;
        }

        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (!v13)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (v11)
        {
LABEL_129:
          if (v12)
          {
LABEL_130:

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          else
          {
LABEL_4:
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

LABEL_5:
          a3 = v22 + 1;
          v5 = v21 + 8;
          v6 = v20 - 1;
          if (v22 + 1 == a2)
          {
            return;
          }

          goto LABEL_6;
        }

LABEL_27:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
      }

      goto LABEL_125;
    }

    if (v10 == 200 && v12 == 0)
    {
      goto LABEL_4;
    }

    if (!v11 && v12)
    {
      goto LABEL_27;
    }

    if (v10 == 200)
    {
      goto LABEL_130;
    }

    if (!v12 && v11)
    {
      goto LABEL_4;
    }

    if (v9 > 204)
    {
      switch(v9)
      {
        case 1000:
          v15 = 10;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1001:
        case 1002:
        case 1003:
        case 1004:
        case 1005:
        case 1006:
        case 1007:
        case 1008:
        case 1009:
        case 1011:
        case 1012:
        case 1013:
        case 1014:
        case 1015:
        case 1016:
        case 1017:
        case 1018:
        case 1019:
        case 1024:
        case 1032:
        case 1033:
        case 1034:
        case 1035:
        case 1036:
        case 1037:
        case 1038:
        case 1039:
        case 1040:
        case 1041:
        case 1042:
        case 1043:
        case 1044:
        case 1045:
        case 1046:
        case 1047:
        case 1048:
          goto LABEL_132;
        case 1010:
          v15 = 5;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1020:
          v15 = 7;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1021:
          v15 = 8;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1022:
        case 1023:
          v15 = 9;
          if (v10 > 204)
          {
            goto LABEL_24;
          }

          break;
        case 1025:
          v15 = 28;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1026:
          v15 = 34;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1027:
          v15 = 35;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1028:
          v15 = 36;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1029:
          v15 = 31;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1030:
          v15 = 37;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1031:
          v15 = 38;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1049:
          v15 = 20;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1050:
          v15 = 21;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1051:
          v15 = 22;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1052:
          v15 = 23;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1053:
          v15 = 24;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1054:
          v15 = 25;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1055:
          v15 = 26;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1056:
          v15 = 27;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1057:
          v15 = 30;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1058:
          v15 = 32;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        case 1059:
          v15 = 33;
          if (v10 <= 204)
          {
            break;
          }

          goto LABEL_24;
        default:
          if (v9 == 205)
          {
            v15 = 1;
            if (v10 > 204)
            {
              goto LABEL_24;
            }
          }

          else
          {
            if (v9 != 206)
            {
              goto LABEL_132;
            }

            v15 = 29;
            if (v10 > 204)
            {
              goto LABEL_24;
            }
          }

          break;
      }

LABEL_32:
      if (v10 > 202)
      {
        if (v10 == 203)
        {
          v16 = 2;
        }

        else
        {
          v16 = 6;
        }
      }

      else if (v10 == 201)
      {
        v16 = 4;
      }

      else
      {
        if (v10 != 202)
        {
          goto LABEL_132;
        }

        v16 = 3;
      }

      goto LABEL_124;
    }

    if (v9 > 202)
    {
      if (v9 == 203)
      {
        v15 = 2;
        if (v10 <= 204)
        {
          goto LABEL_32;
        }
      }

      else
      {
        v15 = 6;
        if (v10 <= 204)
        {
          goto LABEL_32;
        }
      }
    }

    else if (v9 == 201)
    {
      v15 = 4;
      if (v10 <= 204)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (v9 != 202)
      {
        goto LABEL_132;
      }

      v15 = 3;
      if (v10 <= 204)
      {
        goto LABEL_32;
      }
    }

LABEL_24:
    switch(v10)
    {
      case 1000:
        v16 = 10;
        break;
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1009:
      case 1011:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1018:
      case 1019:
      case 1024:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1038:
      case 1039:
      case 1040:
      case 1041:
      case 1042:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
        goto LABEL_132;
      case 1010:
        v16 = 5;
        break;
      case 1020:
        v16 = 7;
        break;
      case 1021:
        v16 = 8;
        break;
      case 1022:
      case 1023:
        v16 = 9;
        break;
      case 1025:
        v16 = 28;
        break;
      case 1026:
        v16 = 34;
        break;
      case 1027:
        v16 = 35;
        break;
      case 1028:
        v16 = 36;
        break;
      case 1029:
        v16 = 31;
        break;
      case 1030:
        v16 = 37;
        break;
      case 1031:
        v16 = 38;
        break;
      case 1049:
        v16 = 20;
        break;
      case 1050:
        v16 = 21;
        break;
      case 1051:
        v16 = 22;
        break;
      case 1052:
        v16 = 23;
        break;
      case 1053:
        v16 = 24;
        break;
      case 1054:
        v16 = 25;
        break;
      case 1055:
        v16 = 26;
        break;
      case 1056:
        v16 = 27;
        break;
      case 1057:
        v16 = 30;
        break;
      case 1058:
        v16 = 32;
        break;
      case 1059:
        v16 = 33;
        break;
      default:
        if (v10 == 205)
        {
          v16 = 1;
        }

        else
        {
          if (v10 != 206)
          {
            goto LABEL_132;
          }

          v16 = 29;
        }

        break;
    }

LABEL_124:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v15 >= v16)
    {
      goto LABEL_5;
    }

LABEL_125:
    if (!v4)
    {
      break;
    }

    v17 = *v5;
    v7 = *(v5 + 8);
    *v5 = v7;
    *(v5 + 8) = v17;
    v5 -= 8;
    if (__CFADD__(v6++, 1))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_132:
  sub_1C1B958C8();
  __break(1u);
}

uint64_t sub_1C1B30488(uint64_t *a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  v8 = v5;
  v9 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_317:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_357;
    }

    v4 = v12;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v86 = v4;
LABEL_320:
      v109 = v86;
      v4 = *(v86 + 2);
      if (v4 >= 2)
      {
        while (*v9)
        {
          v6 = v4 - 1;
          v87 = *&v86[16 * v4];
          v88 = v86;
          v89 = *&v86[16 * v4 + 24];
          sub_1C1B313CC((*v9 + 8 * v87), (*v9 + 8 * *&v86[16 * v4 + 16]), (*v9 + 8 * v89), v7);
          if (v8)
          {
          }

          if (v89 < v87)
          {
            goto LABEL_344;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v88 = sub_1C1B90C2C(v88);
          }

          if (v4 - 2 >= *(v88 + 2))
          {
            goto LABEL_345;
          }

          v90 = &v88[16 * v4];
          *v90 = v87;
          *(v90 + 1) = v89;
          v109 = v88;
          sub_1C1B90BA0(v4 - 1);
          v86 = v109;
          v4 = *(v109 + 2);
          if (v4 <= 1)
          {
          }
        }

        goto LABEL_355;
      }
    }

LABEL_351:
    v86 = sub_1C1B90C2C(v4);
    goto LABEL_320;
  }

  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v13 = v11;
    v14 = v11 + 1;
    if (v14 >= v10)
    {
      v105 = v14;
      goto LABEL_127;
    }

    v96 = v12;
    v4 = *v9;
    v7 = *(*v9 + 8 * v14);
    v108 = v7;
    v6 = *(v4 + 8 * v13);
    v107 = v6;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v103 = sub_1C1B2EC10(&v108, &v107);
    if (v8)
    {

      swift_unknownObjectRelease();
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v105 = v13 + 2;
    if (v13 + 2 >= v10)
    {
      v12 = v96;
      if (v103)
      {
        goto LABEL_119;
      }

      goto LABEL_127;
    }

    v93 = v13;
    v15 = (v4 + 8 * v13 + 16);
    v101 = v10;
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v6 = [v17 serverUnfilledReason];
      v7 = [v16 serverUnfilledReason];
      v4 = &selRef_hash;
      v18 = [v17 error];
      v19 = [v16 error];
      v20 = v19;
      if (v6 == 200)
      {
        if (v7 == 200)
        {
          if (!v18)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            if (v20)
            {
              goto LABEL_31;
            }

            goto LABEL_9;
          }
        }

        else if (!v18)
        {
          goto LABEL_30;
        }

        v4 = v18;
        if (v19)
        {

          goto LABEL_29;
        }

LABEL_35:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

LABEL_9:
        v9 = a3;
        if (v103)
        {
          v12 = v96;
          v13 = v93;
          goto LABEL_119;
        }

        goto LABEL_10;
      }

      if (v7 == 200 && v19 == 0)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_9;
      }

      v4 = v18;
      if (!v18 && v19)
      {
LABEL_30:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
LABEL_31:

        v9 = a3;
        if ((v103 & 1) == 0)
        {
          v12 = v96;
          v13 = v93;
          goto LABEL_127;
        }

        goto LABEL_10;
      }

      if (v7 == 200)
      {
        if (v18)
        {

          if (!v20)
          {
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_9;
          }
        }

LABEL_29:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        goto LABEL_9;
      }

      if (!v19 && v18)
      {
        goto LABEL_35;
      }

      if (v6 <= 204)
      {
        if (v6 > 202)
        {
          if (v6 == 203)
          {
            v4 = 2;
          }

          else
          {
            v4 = 6;
          }
        }

        else if (v6 == 201)
        {
          v4 = 4;
        }

        else
        {
          if (v6 != 202)
          {
            goto LABEL_358;
          }

          v4 = 3;
        }
      }

      else
      {
        switch(v6)
        {
          case 1000:
            v4 = 10;
            break;
          case 1001:
          case 1002:
          case 1003:
          case 1004:
          case 1005:
          case 1006:
          case 1007:
          case 1008:
          case 1009:
          case 1011:
          case 1012:
          case 1013:
          case 1014:
          case 1015:
          case 1016:
          case 1017:
          case 1018:
          case 1019:
          case 1024:
          case 1032:
          case 1033:
          case 1034:
          case 1035:
          case 1036:
          case 1037:
          case 1038:
          case 1039:
          case 1040:
          case 1041:
          case 1042:
          case 1043:
          case 1044:
          case 1045:
          case 1046:
          case 1047:
          case 1048:
            goto LABEL_358;
          case 1010:
            v4 = 5;
            break;
          case 1020:
            v4 = 7;
            break;
          case 1021:
            v4 = 8;
            break;
          case 1022:
          case 1023:
            v4 = 9;
            break;
          case 1025:
            v4 = 28;
            break;
          case 1026:
            v4 = 34;
            break;
          case 1027:
            v4 = 35;
            break;
          case 1028:
            v4 = 36;
            break;
          case 1029:
            v4 = 31;
            break;
          case 1030:
            v4 = 37;
            break;
          case 1031:
            v4 = 38;
            break;
          case 1049:
            v4 = 20;
            break;
          case 1050:
            v4 = 21;
            break;
          case 1051:
            v4 = 22;
            break;
          case 1052:
            v4 = 23;
            break;
          case 1053:
            v4 = 24;
            break;
          case 1054:
            v4 = 25;
            break;
          case 1055:
            v4 = 26;
            break;
          case 1056:
            v4 = 27;
            break;
          case 1057:
            v4 = 30;
            break;
          case 1058:
            v4 = 32;
            break;
          case 1059:
            v4 = 33;
            break;
          default:
            if (v6 == 205)
            {
              v4 = 1;
            }

            else
            {
              if (v6 != 206)
              {
                goto LABEL_358;
              }

              v4 = 29;
            }

            break;
        }
      }

      if (v7 <= 204)
      {
        if (v7 > 202)
        {
          if (v7 == 203)
          {
            v6 = 2;
          }

          else
          {
            v6 = 6;
          }
        }

        else if (v7 == 201)
        {
          v6 = 4;
        }

        else
        {
          if (v7 != 202)
          {
            goto LABEL_359;
          }

          v6 = 3;
        }
      }

      else
      {
        switch(v7)
        {
          case 1000:
            v6 = 10;
            break;
          case 1001:
          case 1002:
          case 1003:
          case 1004:
          case 1005:
          case 1006:
          case 1007:
          case 1008:
          case 1009:
          case 1011:
          case 1012:
          case 1013:
          case 1014:
          case 1015:
          case 1016:
          case 1017:
          case 1018:
          case 1019:
          case 1024:
          case 1032:
          case 1033:
          case 1034:
          case 1035:
          case 1036:
          case 1037:
          case 1038:
          case 1039:
          case 1040:
          case 1041:
          case 1042:
          case 1043:
          case 1044:
          case 1045:
          case 1046:
          case 1047:
          case 1048:
            goto LABEL_359;
          case 1010:
            v6 = 5;
            break;
          case 1020:
            v6 = 7;
            break;
          case 1021:
            v6 = 8;
            break;
          case 1022:
          case 1023:
            v6 = 9;
            break;
          case 1025:
            v6 = 28;
            break;
          case 1026:
            v6 = 34;
            break;
          case 1027:
            v6 = 35;
            break;
          case 1028:
            v6 = 36;
            break;
          case 1029:
            v6 = 31;
            break;
          case 1030:
            v6 = 37;
            break;
          case 1031:
            v6 = 38;
            break;
          case 1049:
            v6 = 20;
            break;
          case 1050:
            v6 = 21;
            break;
          case 1051:
            v6 = 22;
            break;
          case 1052:
            v6 = 23;
            break;
          case 1053:
            v6 = 24;
            break;
          case 1054:
            v6 = 25;
            break;
          case 1055:
            v6 = 26;
            break;
          case 1056:
            v6 = 27;
            break;
          case 1057:
            v6 = 30;
            break;
          case 1058:
            v6 = 32;
            break;
          case 1059:
            v6 = 33;
            break;
          default:
            if (v7 == 205)
            {
              v6 = 1;
            }

            else
            {
              if (v7 != 206)
              {
LABEL_359:
                v108 = v7;
                goto LABEL_360;
              }

              v6 = 29;
            }

            break;
        }
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v9 = a3;
      if ((v103 ^ (v4 < v6)))
      {
        goto LABEL_116;
      }

LABEL_10:
      ++v15;
      ++v105;
    }

    while (v101 != v105);
    v105 = v101;
LABEL_116:
    v12 = v96;
    v13 = v93;
    if ((v103 & 1) == 0)
    {
      goto LABEL_127;
    }

LABEL_119:
    v22 = v105;
    if (v105 < v13)
    {
      goto LABEL_348;
    }

    if (v13 < v105)
    {
      v23 = 8 * v105 - 8;
      v24 = 8 * v13;
      v25 = v13;
      do
      {
        if (v25 != --v22)
        {
          v27 = *v9;
          if (!*v9)
          {
            goto LABEL_354;
          }

          v26 = *(v27 + v24);
          *(v27 + v24) = *(v27 + v23);
          *(v27 + v23) = v26;
        }

        ++v25;
        v23 -= 8;
        v24 += 8;
      }

      while (v25 < v22);
    }

LABEL_127:
    v28 = v9[1];
    if (v105 >= v28)
    {
      goto LABEL_265;
    }

    if (__OFSUB__(v105, v13))
    {
      goto LABEL_347;
    }

    if (v105 - v13 >= a4)
    {
LABEL_265:
      if (v105 < v13)
      {
        goto LABEL_346;
      }

      v41 = v12;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v12 = v41;
      }

      else
      {
        v12 = sub_1C1ACE08C(0, *(v41 + 2) + 1, 1, v41);
      }

      v4 = *(v12 + 2);
      v42 = *(v12 + 3);
      v43 = v4 + 1;
      if (v4 >= v42 >> 1)
      {
        v12 = sub_1C1ACE08C((v42 > 1), v4 + 1, 1, v12);
      }

      *(v12 + 2) = v43;
      v44 = &v12[16 * v4];
      *(v44 + 4) = v13;
      *(v44 + 5) = v105;
      v7 = *a1;
      if (!*a1)
      {
        goto LABEL_356;
      }

      if (!v4)
      {
LABEL_3:
        v10 = v9[1];
        v11 = v105;
        if (v105 >= v10)
        {
          goto LABEL_317;
        }

        continue;
      }

      while (1)
      {
        v45 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v46 = *(v12 + 4);
          v47 = *(v12 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_285:
          if (v49)
          {
            goto LABEL_335;
          }

          v62 = &v12[16 * v43];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_338;
          }

          v68 = &v12[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_341;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_342;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v43 - 2;
            }

            goto LABEL_306;
          }

          goto LABEL_299;
        }

        v72 = &v12[16 * v43];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_299:
        if (v67)
        {
          goto LABEL_337;
        }

        v75 = &v12[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_340;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_306:
        v4 = v45 - 1;
        if (v45 - 1 >= v43)
        {
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
LABEL_336:
          __break(1u);
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
          goto LABEL_350;
        }

        if (!*v9)
        {
          goto LABEL_353;
        }

        v83 = v12;
        v84 = *&v12[16 * v4 + 32];
        v6 = *&v12[16 * v45 + 40];
        sub_1C1B313CC((*v9 + 8 * v84), (*v9 + 8 * *&v12[16 * v45 + 32]), (*v9 + 8 * v6), v7);
        if (v8)
        {
        }

        if (v6 < v84)
        {
          goto LABEL_331;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_1C1B90C2C(v83);
        }

        if (v4 >= *(v83 + 2))
        {
          goto LABEL_332;
        }

        v85 = &v83[16 * v4];
        *(v85 + 4) = v84;
        *(v85 + 5) = v6;
        v109 = v83;
        sub_1C1B90BA0(v45);
        v12 = v109;
        v43 = *(v109 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v12[16 * v43 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_333;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_334;
      }

      v57 = &v12[16 * v43];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_336;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_339;
      }

      if (v61 >= v53)
      {
        v79 = &v12[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_343;
        }

        if (v48 < v82)
        {
          v45 = v43 - 2;
        }

        goto LABEL_306;
      }

      goto LABEL_285;
    }

    break;
  }

  if (__OFADD__(v13, a4))
  {
    goto LABEL_349;
  }

  if (v13 + a4 >= v28)
  {
    v29 = v9[1];
  }

  else
  {
    v29 = v13 + a4;
  }

  if (v29 < v13)
  {
LABEL_350:
    __break(1u);
    goto LABEL_351;
  }

  if (v105 == v29)
  {
    goto LABEL_265;
  }

  v97 = v12;
  v92 = v8;
  v94 = v13;
  v4 = *v9;
  v30 = *v9 + 8 * v105 - 8;
  v31 = v13 - v105;
  v32 = v105;
  v99 = v29;
  while (2)
  {
    v104 = v30;
    v106 = v32;
    v33 = *(v4 + 8 * v32);
    v102 = v31;
LABEL_140:
    v34 = *v30;
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v6 = [v33 serverUnfilledReason];
    v7 = [v34 serverUnfilledReason];
    v35 = [v33 error];
    v36 = [v34 error];
    v37 = v36;
    if (v6 != 200)
    {
      if (v7 == 200 && v36 == 0)
      {
        goto LABEL_137;
      }

      if (!v35 && v36)
      {
LABEL_160:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        goto LABEL_161;
      }

      if (v7 == 200)
      {
        goto LABEL_263;
      }

      if (!v36 && v35)
      {
        goto LABEL_137;
      }

      if (v6 > 204)
      {
        switch(v6)
        {
          case 1000:
            v6 = 10;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1001:
          case 1002:
          case 1003:
          case 1004:
          case 1005:
          case 1006:
          case 1007:
          case 1008:
          case 1009:
          case 1011:
          case 1012:
          case 1013:
          case 1014:
          case 1015:
          case 1016:
          case 1017:
          case 1018:
          case 1019:
          case 1024:
          case 1032:
          case 1033:
          case 1034:
          case 1035:
          case 1036:
          case 1037:
          case 1038:
          case 1039:
          case 1040:
          case 1041:
          case 1042:
          case 1043:
          case 1044:
          case 1045:
          case 1046:
          case 1047:
          case 1048:
            goto LABEL_358;
          case 1010:
            v6 = 5;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1020:
            v6 = 7;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1021:
            v6 = 8;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1022:
          case 1023:
            v6 = 9;
            if (v7 > 204)
            {
              goto LABEL_157;
            }

            goto LABEL_165;
          case 1025:
            v6 = 28;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1026:
            v6 = 34;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1027:
            v6 = 35;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1028:
            v6 = 36;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1029:
            v6 = 31;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1030:
            v6 = 37;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1031:
            v6 = 38;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1049:
            v6 = 20;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1050:
            v6 = 21;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1051:
            v6 = 22;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1052:
            v6 = 23;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1053:
            v6 = 24;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1054:
            v6 = 25;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1055:
            v6 = 26;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1056:
            v6 = 27;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1057:
            v6 = 30;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1058:
            v6 = 32;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          case 1059:
            v6 = 33;
            if (v7 <= 204)
            {
              goto LABEL_165;
            }

            goto LABEL_157;
          default:
            if (v6 == 205)
            {
              v6 = 1;
              if (v7 > 204)
              {
                goto LABEL_157;
              }
            }

            else
            {
              if (v6 != 206)
              {
                goto LABEL_358;
              }

              v6 = 29;
              if (v7 > 204)
              {
                goto LABEL_157;
              }
            }

            break;
        }

        goto LABEL_165;
      }

      if (v6 > 202)
      {
        if (v6 == 203)
        {
          v6 = 2;
          if (v7 > 204)
          {
            goto LABEL_157;
          }
        }

        else
        {
          v6 = 6;
          if (v7 > 204)
          {
            goto LABEL_157;
          }
        }
      }

      else
      {
        if (v6 == 201)
        {
          v6 = 4;
          if (v7 <= 204)
          {
            goto LABEL_165;
          }

LABEL_157:
          switch(v7)
          {
            case 1000:
              v7 = 10;
              break;
            case 1001:
            case 1002:
            case 1003:
            case 1004:
            case 1005:
            case 1006:
            case 1007:
            case 1008:
            case 1009:
            case 1011:
            case 1012:
            case 1013:
            case 1014:
            case 1015:
            case 1016:
            case 1017:
            case 1018:
            case 1019:
            case 1024:
            case 1032:
            case 1033:
            case 1034:
            case 1035:
            case 1036:
            case 1037:
            case 1038:
            case 1039:
            case 1040:
            case 1041:
            case 1042:
            case 1043:
            case 1044:
            case 1045:
            case 1046:
            case 1047:
            case 1048:
              goto LABEL_359;
            case 1010:
              v7 = 5;
              break;
            case 1020:
              v7 = 7;
              break;
            case 1021:
              v7 = 8;
              break;
            case 1022:
            case 1023:
              v7 = 9;
              break;
            case 1025:
              v7 = 28;
              break;
            case 1026:
              v7 = 34;
              break;
            case 1027:
              v7 = 35;
              break;
            case 1028:
              v7 = 36;
              break;
            case 1029:
              v7 = 31;
              break;
            case 1030:
              v7 = 37;
              break;
            case 1031:
              v7 = 38;
              break;
            case 1049:
              v7 = 20;
              break;
            case 1050:
              v7 = 21;
              break;
            case 1051:
              v7 = 22;
              break;
            case 1052:
              v7 = 23;
              break;
            case 1053:
              v7 = 24;
              break;
            case 1054:
              v7 = 25;
              break;
            case 1055:
              v7 = 26;
              break;
            case 1056:
              v7 = 27;
              break;
            case 1057:
              v7 = 30;
              break;
            case 1058:
              v7 = 32;
              break;
            case 1059:
              v7 = 33;
              break;
            default:
              if (v7 == 205)
              {
                v7 = 1;
              }

              else
              {
                if (v7 != 206)
                {
                  goto LABEL_359;
                }

                v7 = 29;
              }

              break;
          }

LABEL_257:

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v6 >= v7)
          {
            goto LABEL_138;
          }

          goto LABEL_258;
        }

        if (v6 != 202)
        {
          goto LABEL_358;
        }

        v6 = 3;
        if (v7 > 204)
        {
          goto LABEL_157;
        }
      }

LABEL_165:
      if (v7 > 202)
      {
        if (v7 == 203)
        {
          v7 = 2;
        }

        else
        {
          v7 = 6;
        }
      }

      else if (v7 == 201)
      {
        v7 = 4;
      }

      else
      {
        if (v7 != 202)
        {
          goto LABEL_359;
        }

        v7 = 3;
      }

      goto LABEL_257;
    }

    if (v7 != 200)
    {
      if (v35)
      {
LABEL_262:
        if (v36)
        {
LABEL_263:

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
LABEL_137:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

LABEL_138:
        v32 = v106 + 1;
        v30 = v104 + 8;
        v31 = v102 - 1;
        if (v106 + 1 == v99)
        {
          v105 = v99;
          v8 = v92;
          v13 = v94;
          v9 = a3;
          v12 = v97;
          goto LABEL_265;
        }

        continue;
      }

      goto LABEL_160;
    }

    break;
  }

  if (v35)
  {
    goto LABEL_262;
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (!v37)
  {
    goto LABEL_138;
  }

LABEL_161:

LABEL_258:
  if (v4)
  {
    v39 = *v30;
    v33 = *(v30 + 8);
    *v30 = v33;
    *(v30 + 8) = v39;
    v30 -= 8;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_138;
    }

    goto LABEL_140;
  }

  __break(1u);
LABEL_353:
  __break(1u);
LABEL_354:
  __break(1u);
LABEL_355:
  __break(1u);
LABEL_356:
  __break(1u);
LABEL_357:
  __break(1u);
LABEL_358:
  v108 = v6;
LABEL_360:
  result = sub_1C1B958C8();
  __break(1u);
  return result;
}

uint64_t sub_1C1B313CC(void **__dst, id *a2, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = a2 - __dst;
  v8 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v8 = a2 - __dst;
  }

  v9 = v8 >> 3;
  v10 = a3 - a2;
  v11 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v11 = a3 - a2;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __dst || &__dst[v9] <= a4)
    {
      v13 = a2;
      memmove(a4, __dst, 8 * v9);
      v6 = __dst;
      a2 = v13;
    }

    v15 = &v4[v9];
    if (v7 < 8)
    {
      a2 = v6;
LABEL_137:
      v40 = v15 - v4 + 7;
      if (v15 - v4 >= 0)
      {
        v40 = v15 - v4;
      }

      if (a2 < v4 || a2 >= (v4 + (v40 & 0xFFFFFFFFFFFFFFF8)) || a2 != v4)
      {
        v39 = 8 * (v40 >> 3);
        v38 = a2;
LABEL_143:
        memmove(v38, v4, v39);
      }

      return 1;
    }

    if (a2 >= v5)
    {
LABEL_19:
      a2 = v6;
      goto LABEL_137;
    }

    while (1)
    {
      v16 = v6;
      v17 = a2;
      v48 = *a2;
      v47 = *v4;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = sub_1C1B2EC10(&v48, &v47);
      if (v44)
      {
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        v38 = v16;
        if (v16 != v4 || v16 >= (v4 + ((v15 - v4 + (v15 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
        {
          v39 = 8 * (v15 - v4);
          goto LABEL_143;
        }

        return 1;
      }

      v19 = v18;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = v17;
      a2 = v17 + 1;
      v21 = v16;
      if (v16 != v17)
      {
        goto LABEL_16;
      }

LABEL_17:
      v6 = v21 + 1;
      if (v4 >= v15 || a2 >= v5)
      {
        goto LABEL_19;
      }
    }

    v20 = v4;
    v21 = v16;
    v34 = v16 == v4++;
    a2 = v17;
    if (v34)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v21 = *v20;
    goto LABEL_17;
  }

  if (a4 != a2 || &a2[v12] <= a4)
  {
    v22 = a2;
    memmove(a4, a2, 8 * v12);
    v6 = __dst;
    a2 = v22;
  }

  v24 = &v4[v12];
  if (v10 < 8 || a2 <= v6)
  {
    v15 = &v4[v12];
    goto LABEL_137;
  }

  v45 = v4;
  v42 = v6;
  while (2)
  {
    v43 = a2;
    v25 = a2 - 1;
    --v5;
    v15 = v24;
    v46 = a2 - 1;
    while (1)
    {
      v26 = *--v15;
      v27 = *v25;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v28 = [v26 serverUnfilledReason];
      v29 = [v27 serverUnfilledReason];
      v30 = [v26 error];
      v31 = [v27 error];
      if (v28 != 200)
      {
        break;
      }

      if (v29 == 200)
      {
        if (!v30)
        {
          v32 = v31;
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v33 = v32;
          if (v32)
          {
            goto LABEL_125;
          }

          goto LABEL_49;
        }
      }

      else if (!v30)
      {
        goto LABEL_124;
      }

      if (!v31)
      {
        goto LABEL_48;
      }

LABEL_47:

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
LABEL_49:
      v4 = v45;
      if (v5 + 1 != v24)
      {
        *v5 = *v15;
      }

      --v5;
      v24 = v15;
      v25 = v46;
      if (v15 <= v45)
      {
        a2 = v43;
        goto LABEL_137;
      }
    }

    v34 = v29 == 200 && v31 == 0;
    if (v34)
    {
      goto LABEL_48;
    }

    if (!v30 && v31)
    {
LABEL_124:
      v37 = v31;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v33 = v37;
LABEL_125:

LABEL_126:
      v4 = v45;
      if (v5 + 1 != v43)
      {
        *v5 = *v46;
      }

      if (v24 <= v45 || (a2 = v46, v46 <= v42))
      {
        v15 = v24;
        a2 = v46;
        goto LABEL_137;
      }

      continue;
    }

    break;
  }

  if (v29 == 200)
  {
    goto LABEL_47;
  }

  if (!v31 && v30)
  {
LABEL_48:
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    goto LABEL_49;
  }

  if (v28 <= 204)
  {
    if (v28 > 202)
    {
      if (v28 == 203)
      {
        v35 = 2;
      }

      else
      {
        v35 = 6;
      }
    }

    else if (v28 == 201)
    {
      v35 = 4;
    }

    else
    {
      if (v28 != 202)
      {
        goto LABEL_145;
      }

      v35 = 3;
    }
  }

  else
  {
    switch(v28)
    {
      case 1000:
        v35 = 10;
        break;
      case 1001:
      case 1002:
      case 1003:
      case 1004:
      case 1005:
      case 1006:
      case 1007:
      case 1008:
      case 1009:
      case 1011:
      case 1012:
      case 1013:
      case 1014:
      case 1015:
      case 1016:
      case 1017:
      case 1018:
      case 1019:
      case 1024:
      case 1032:
      case 1033:
      case 1034:
      case 1035:
      case 1036:
      case 1037:
      case 1038:
      case 1039:
      case 1040:
      case 1041:
      case 1042:
      case 1043:
      case 1044:
      case 1045:
      case 1046:
      case 1047:
      case 1048:
        goto LABEL_145;
      case 1010:
        v35 = 5;
        break;
      case 1020:
        v35 = 7;
        break;
      case 1021:
        v35 = 8;
        break;
      case 1022:
      case 1023:
        v35 = 9;
        break;
      case 1025:
        v35 = 28;
        break;
      case 1026:
        v35 = 34;
        break;
      case 1027:
        v35 = 35;
        break;
      case 1028:
        v35 = 36;
        break;
      case 1029:
        v35 = 31;
        break;
      case 1030:
        v35 = 37;
        break;
      case 1031:
        v35 = 38;
        break;
      case 1049:
        v35 = 20;
        break;
      case 1050:
        v35 = 21;
        break;
      case 1051:
        v35 = 22;
        break;
      case 1052:
        v35 = 23;
        break;
      case 1053:
        v35 = 24;
        break;
      case 1054:
        v35 = 25;
        break;
      case 1055:
        v35 = 26;
        break;
      case 1056:
        v35 = 27;
        break;
      case 1057:
        v35 = 30;
        break;
      case 1058:
        v35 = 32;
        break;
      case 1059:
        v35 = 33;
        break;
      default:
        if (v28 == 205)
        {
          v35 = 1;
        }

        else
        {
          if (v28 != 206)
          {
LABEL_145:
            v48 = v28;
            goto LABEL_147;
          }

          v35 = 29;
        }

        break;
    }
  }

  if (v29 <= 204)
  {
    if (v29 > 202)
    {
      if (v29 == 203)
      {
        v36 = 2;
      }

      else
      {
        v36 = 6;
      }
    }

    else if (v29 == 201)
    {
      v36 = 4;
    }

    else
    {
      if (v29 != 202)
      {
        goto LABEL_146;
      }

      v36 = 3;
    }

LABEL_122:

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    if (v35 < v36)
    {
      goto LABEL_126;
    }

    goto LABEL_49;
  }

  switch(v29)
  {
    case 1000:
      v36 = 10;
      goto LABEL_122;
    case 1001:
    case 1002:
    case 1003:
    case 1004:
    case 1005:
    case 1006:
    case 1007:
    case 1008:
    case 1009:
    case 1011:
    case 1012:
    case 1013:
    case 1014:
    case 1015:
    case 1016:
    case 1017:
    case 1018:
    case 1019:
    case 1024:
    case 1032:
    case 1033:
    case 1034:
    case 1035:
    case 1036:
    case 1037:
    case 1038:
    case 1039:
    case 1040:
    case 1041:
    case 1042:
    case 1043:
    case 1044:
    case 1045:
    case 1046:
    case 1047:
    case 1048:
      goto LABEL_146;
    case 1010:
      v36 = 5;
      goto LABEL_122;
    case 1020:
      v36 = 7;
      goto LABEL_122;
    case 1021:
      v36 = 8;
      goto LABEL_122;
    case 1022:
    case 1023:
      v36 = 9;
      goto LABEL_122;
    case 1025:
      v36 = 28;
      goto LABEL_122;
    case 1026:
      v36 = 34;
      goto LABEL_122;
    case 1027:
      v36 = 35;
      goto LABEL_122;
    case 1028:
      v36 = 36;
      goto LABEL_122;
    case 1029:
      v36 = 31;
      goto LABEL_122;
    case 1030:
      v36 = 37;
      goto LABEL_122;
    case 1031:
      v36 = 38;
      goto LABEL_122;
    case 1049:
      v36 = 20;
      goto LABEL_122;
    case 1050:
      v36 = 21;
      goto LABEL_122;
    case 1051:
      v36 = 22;
      goto LABEL_122;
    case 1052:
      v36 = 23;
      goto LABEL_122;
    case 1053:
      v36 = 24;
      goto LABEL_122;
    case 1054:
      v36 = 25;
      goto LABEL_122;
    case 1055:
      v36 = 26;
      goto LABEL_122;
    case 1056:
      v36 = 27;
      goto LABEL_122;
    case 1057:
      v36 = 30;
      goto LABEL_122;
    case 1058:
      v36 = 32;
      goto LABEL_122;
    case 1059:
      v36 = 33;
      goto LABEL_122;
    default:
      if (v29 == 205)
      {
        v36 = 1;
        goto LABEL_122;
      }

      if (v29 == 206)
      {
        v36 = 29;
        goto LABEL_122;
      }

LABEL_146:
      v48 = v29;
LABEL_147:
      result = sub_1C1B958C8();
      __break(1u);
      return result;
  }
}

uint64_t sub_1C1B31AD4(void *a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&unk_1EBF098E0, &qword_1C1BA22A0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v122 = &v116 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v123 = &v116 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v125 = &v116 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v126 = (&v116 - v13);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v127 = &v116 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v128 = &v116 - v16;
  v17 = sub_1C1AC1F08(&qword_1EBF07F50, &qword_1C1B9A590);
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17 - 8);
  v21 = &v116 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = &v116 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v116 - v25;
  v130 = sub_1C1B94588();
  v27 = *(v130 - 8);
  v28 = *(v27 + 64);
  v29 = MEMORY[0x1EEE9AC00](v130);
  v31 = &v116 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v129 = &v116 - v32;
  v131 = a1;
  v33 = [a1 metricEventsTracking];
  if (v33)
  {
    [v33 didReceiveAdResponse];
    swift_unknownObjectRelease();
  }

  v34 = OBJC_IVAR___APPCContext_prefetchTimestamp;
  swift_beginAccess();
  v124 = a2;
  sub_1C1ABB0C4(a2 + v34, v26);
  v35 = *(v27 + 48);
  v36 = v130;
  if (v35(v26, 1, v130) == 1)
  {
    v24 = v26;
LABEL_12:
    v44 = v131;
    sub_1C1AA7C8C(v24, &qword_1EBF07F50, &qword_1C1B9A590);
    sub_1C1B95128();
    sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
    v45 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_1C1B9AF30;
    v47 = [v44 contextIdentifier];
    v48 = v128;
    v49 = v127;
    if (v47)
    {
      v50 = v47;
      sub_1C1B945D8();

      v51 = 0;
    }

    else
    {
      v51 = 1;
    }

    v52 = sub_1C1B945F8();
    v53 = *(v52 - 8);
    (*(v53 + 56))(v49, v51, 1, v52);
    sub_1C1B32AD8(v49, v48, &unk_1EBF098E0, &qword_1C1BA22A0);
    if ((*(v53 + 48))(v48, 1, v52) == 1)
    {
      sub_1C1AA7C8C(v48, &unk_1EBF098E0, &qword_1C1BA22A0);
      v54 = 0;
      v55 = 0;
    }

    else
    {
      v54 = sub_1C1B945A8();
      v55 = v56;
      (*(v53 + 8))(v48, v52);
    }

    v57 = MEMORY[0x1E69E6158];
    *(v46 + 56) = MEMORY[0x1E69E6158];
    v58 = sub_1C1AA5E7C();
    *(v46 + 64) = v58;
    if (v55)
    {
      v59 = v54;
    }

    else
    {
      v59 = 0;
    }

    v60 = 0xE000000000000000;
    if (v55)
    {
      v60 = v55;
    }

    *(v46 + 32) = v59;
    *(v46 + 40) = v60;
    v61 = [v44 identifier];
    v62 = sub_1C1B94D88();
    v64 = v63;

    *(v46 + 96) = v57;
    *(v46 + 104) = v58;
    *(v46 + 72) = v62;
    *(v46 + 80) = v64;
    sub_1C1B94BA8();
  }

  v121 = v31;
  v37 = v129;
  v119 = *(v27 + 32);
  v119(v129, v26, v36);
  v38 = [v131 metricEventsTracking];
  if (!v38)
  {
    (*(v27 + 8))(v37, v36);
    (*(v27 + 56))(v24, 1, 1, v36);
    goto LABEL_12;
  }

  v120 = v27;
  v39 = [v38 adResponseTimestamp];
  swift_unknownObjectRelease();
  if (v39)
  {
    sub_1C1B94558();

    v40 = 0;
  }

  else
  {
    v40 = 1;
  }

  v41 = v130;
  v42 = v121;
  v43 = v120;
  (*(v120 + 56))(v21, v40, 1, v130);
  sub_1C1B32AD8(v21, v24, &qword_1EBF07F50, &qword_1C1B9A590);
  if (v35(v24, 1, v41) == 1)
  {
    (*(v43 + 8))(v129, v41);
    goto LABEL_12;
  }

  v119(v42, v24, v41);
  sub_1C1B94528();
  v67 = v66;
  LODWORD(v128) = sub_1C1B95108();
  v68 = sub_1C1AA576C(0, &qword_1EDE6C9C0, 0x1E69E9BF8);
  v127 = "eContentDepiction>16@0:8";
  v119 = v68;
  v69 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v70 = swift_allocObject();
  v118 = xmmword_1C1B9AF30;
  *(v70 + 16) = xmmword_1C1B9AF30;
  v71 = [v131 contextIdentifier];
  if (v71)
  {
    v72 = v125;
    v73 = v71;
    sub_1C1B945D8();

    v74 = 0;
    v75 = v126;
  }

  else
  {
    v74 = 1;
    v75 = v126;
    v72 = v125;
  }

  v76 = sub_1C1B945F8();
  v77 = *(v76 - 8);
  v78 = v77;
  v126 = *(v77 + 56);
  v125 = (v77 + 56);
  v126(v72, v74, 1, v76);
  sub_1C1B32AD8(v72, v75, &unk_1EBF098E0, &qword_1C1BA22A0);
  v117 = *(v78 + 48);
  if (v117(v75, 1, v76) == 1)
  {
    v79 = v78;
    sub_1C1AA7C8C(v75, &unk_1EBF098E0, &qword_1C1BA22A0);
    v80 = 0;
    v81 = 0;
  }

  else
  {
    v80 = sub_1C1B945A8();
    v81 = v82;
    v79 = v78;
    (*(v78 + 8))(v75, v76);
  }

  *(v70 + 56) = MEMORY[0x1E69E6158];
  v83 = sub_1C1AA5E7C();
  *(v70 + 64) = v83;
  if (v81)
  {
    v84 = v80;
  }

  else
  {
    v84 = 0;
  }

  v85 = 0xE000000000000000;
  if (v81)
  {
    v85 = v81;
  }

  v86 = MEMORY[0x1E69E63B0];
  *(v70 + 32) = v84;
  *(v70 + 40) = v85;
  v87 = MEMORY[0x1E69E6438];
  *(v70 + 96) = v86;
  *(v70 + 104) = v87;
  *(v70 + 72) = v67;
  sub_1C1B94BA8();

  v88 = sub_1C1B0C2B4(v67);
  if (v88)
  {
    v89 = v88;
    sub_1C1AC1F08(&qword_1EBF090B0, &unk_1C1B9F3A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1B9C9C0;
    *(inited + 32) = 0x6C61767265746E49;
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v89;
    strcpy((inited + 56), "IntervalType");
    *(inited + 69) = 0;
    *(inited + 70) = -5120;
    v91 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    v92 = v89;
    *(inited + 72) = [v91 initWithInteger_];
    *(inited + 80) = 0x546B726F7774654ELL;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    strcpy((inited + 104), "PlacementType");
    *(inited + 118) = -4864;
    v93 = *(v124 + OBJC_IVAR___APPCBaseContext_current);
    if (v93)
    {
      v94 = Placement.apPlacement.getter([v93 placement]);
    }

    else
    {
      v94 = 0;
    }

    v101 = v130;
    v102 = v121;
    *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
    *(inited + 128) = 0x64656C696146;
    *(inited + 136) = 0xE600000000000000;
    sub_1C1AA576C(0, &qword_1EDE6C9F0, 0x1E696AD98);
    *(inited + 144) = sub_1C1B95248();
    v103 = sub_1C1AD46B4(inited);
    swift_setDeallocating();
    sub_1C1AC1F08(&qword_1EBF08840, &qword_1C1B9CB40);
    swift_arrayDestroy();
    v104 = objc_opt_self();
    v105 = sub_1C1B94D78();
    sub_1C1B1A914(v103);

    sub_1C1AA576C(0, &qword_1EDE6C9D0, 0x1E69E58C0);
    v106 = sub_1C1B94CA8();

    [v104 sendEvent:v105 customPayload:v106];

    v107 = *(v120 + 8);
    v107(v102, v101);
    return (v107)(v129, v101);
  }

  else
  {
    sub_1C1B95128();
    v95 = sub_1C1B95298();
    v96 = swift_allocObject();
    *(v96 + 16) = v118;
    v97 = [v131 contextIdentifier];
    if (v97)
    {
      v98 = v122;
      v99 = v97;
      sub_1C1B945D8();

      v100 = 0;
    }

    else
    {
      v100 = 1;
      v98 = v122;
    }

    v126(v98, v100, 1, v76);
    v108 = v98;
    v109 = v123;
    sub_1C1B32AD8(v108, v123, &unk_1EBF098E0, &qword_1C1BA22A0);
    if (v117(v109, 1, v76) == 1)
    {
      sub_1C1AA7C8C(v109, &unk_1EBF098E0, &qword_1C1BA22A0);
      v110 = 0;
      *(v96 + 56) = MEMORY[0x1E69E6158];
      *(v96 + 64) = v83;
      v111 = 0xE000000000000000;
      v112 = v130;
    }

    else
    {
      v110 = sub_1C1B945A8();
      v111 = v113;
      (*(v79 + 8))(v109, v76);
      *(v96 + 56) = MEMORY[0x1E69E6158];
      *(v96 + 64) = v83;
      v112 = v130;
      if (!v111)
      {
        v110 = 0;
        v111 = 0xE000000000000000;
      }
    }

    v114 = v120;
    *(v96 + 32) = v110;
    *(v96 + 40) = v111;
    *(v96 + 96) = MEMORY[0x1E69E63B0];
    *(v96 + 104) = MEMORY[0x1E69E6438];
    *(v96 + 72) = v67;
    sub_1C1B94BA8();

    v115 = *(v114 + 8);
    v115(v121, v112);
    return (v115)(v129, v112);
  }
}

uint64_t sub_1C1B32A08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderRequest();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B32A74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaceholderRequest();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C1B32AD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1C1AC1F08(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1C1B32B40()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B32C5C()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B32D68()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B32E70()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B32FD0()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B33124()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

uint64_t sub_1C1B33280()
{
  sub_1C1B95958();
  sub_1C1B94DE8();

  return sub_1C1B959A8();
}

id BaseContext.init(identifier:maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v7 = sub_1C1B35E00(a1, a2, a3, a4, a5, a6, a7);
  swift_unknownObjectRelease();
  return v7;
}

char *BaseContext.init(maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v13 = sub_1C1B945F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR___APPCBaseContext_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v19 = &v6[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_1C1B945E8();
  (*(v14 + 32))(&v6[OBJC_IVAR___APPCBaseContext_identifier], v17, v13);
  v20 = &v6[OBJC_IVAR___APPCBaseContext_maxSize];
  *v20 = a5;
  v20[1] = a6;
  swift_beginAccess();
  v21 = *(v19 + 1);
  *v19 = a1;
  *(v19 + 1) = a2;

  *&v6[OBJC_IVAR___APPCBaseContext_current] = a3;
  *&v6[OBJC_IVAR___APPCBaseContext_next] = v18;
  *&v6[OBJC_IVAR___APPCBaseContext_adjacent] = a4;
  v22 = type metadata accessor for BaseContext();
  v32.receiver = v6;
  v32.super_class = v22;
  swift_unknownObjectRetain();
  v23 = objc_msgSendSuper2(&v32, sel_init);
  sub_1C1B95118();
  sub_1C1AC53E4();
  v24 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C1B98E60;
  v26 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v14 + 16))(v17, &v23[v26], v13);
  v27 = sub_1C1B945A8();
  v29 = v28;
  (*(v14 + 8))(v17, v13);
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1C1AA5E7C();
  *(v25 + 32) = v27;
  *(v25 + 40) = v29;
  sub_1C1B94BA8();

  sub_1C1B343B4();

  swift_unknownObjectRelease();
  return v23;
}

void *BaseContext.init(from:)(uint64_t *a1)
{
  v4 = sub_1C1B945F8();
  v38 = *(v4 - 8);
  v5 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1AC1F08(&qword_1EBF090C0, &qword_1C1B9FEC0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v36 - v10;
  v39 = OBJC_IVAR___APPCBaseContext_adjacentInternal;
  v40 = v1;
  *(v1 + OBJC_IVAR___APPCBaseContext_adjacentInternal) = MEMORY[0x1E69E7CC0];
  v12 = (v1 + OBJC_IVAR___APPCBaseContext_requestedAd);
  *v12 = 0;
  v12[1] = 0;
  v41 = a1;
  v42 = v12;
  v13 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B36078();
  sub_1C1B95A08();
  if (v2)
  {
    v16 = v40;
    sub_1C1AA86F8(v41);
    v17 = *(v16 + v39);

    v18 = v42[1];

    type metadata accessor for BaseContext();
    v19 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x30);
    v20 = *((*MEMORY[0x1E69E7D40] & *v16) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v14 = v8;
    LOBYTE(v45) = 0;
    sub_1C1B360CC(&qword_1EDE6C358, MEMORY[0x1E69695A8]);
    v15 = v37;
    sub_1C1B956F8();
    v22 = v40;
    (*(v38 + 32))(v40 + OBJC_IVAR___APPCBaseContext_identifier, v15, v4);
    type metadata accessor for CGSize(0);
    LOBYTE(v46) = 1;
    sub_1C1B360CC(&unk_1EDE6BB30, type metadata accessor for CGSize);
    sub_1C1B956F8();
    *&v22[OBJC_IVAR___APPCBaseContext_maxSize] = v45;
    LOBYTE(v45) = 2;
    v23 = sub_1C1B95638();
    v25 = v24;
    v26 = v42;
    swift_beginAccess();
    v27 = v26[1];
    *v26 = v23;
    v26[1] = v25;

    type metadata accessor for ContentDepiction();
    v44 = 3;
    sub_1C1B360CC(&qword_1EDE6B2B0, type metadata accessor for ContentDepiction);
    sub_1C1B95678();
    *&v22[OBJC_IVAR___APPCBaseContext_current] = v46;
    v28 = sub_1C1AC1F08(&qword_1EBF07B50, &unk_1C1B98F80);
    v44 = 4;
    v29 = sub_1C1B36114(&qword_1EDE6A700, &qword_1EDE6B2B0);
    sub_1C1B95678();
    v36 = v29;
    v37 = v28;
    v30 = MEMORY[0x1E69E7CC0];
    if (v46)
    {
      v31 = v46;
    }

    else
    {
      v31 = MEMORY[0x1E69E7CC0];
    }

    if (v31 >> 62)
    {
      sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
      v32 = sub_1C1B95578();
    }

    else
    {
      sub_1C1B95898();
      v32 = v31;
    }

    *&v22[OBJC_IVAR___APPCBaseContext_next] = v32;
    v44 = 5;
    sub_1C1B95678();
    if (v46)
    {
      v33 = v46;
    }

    else
    {
      v33 = v30;
    }

    if (v33 >> 62)
    {
      sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
      v34 = sub_1C1B95578();
    }

    else
    {
      sub_1C1B95898();
      v34 = v33;
    }

    *&v22[OBJC_IVAR___APPCBaseContext_adjacent] = v34;
    v35 = type metadata accessor for BaseContext();
    v43.receiver = v22;
    v43.super_class = v35;
    v16 = objc_msgSendSuper2(&v43, sel_init, v36, v37);
    (*(v14 + 8))(v11, v7);
    sub_1C1AA86F8(v41);
  }

  return v16;
}

uint64_t sub_1C1B33E0C(void *a1)
{
  v2 = sub_1C1B945F8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1AC1F08(&qword_1EBF090C8, &qword_1C1B9FEC8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v19 - v10;
  v12 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B36078();
  v13 = v19[0];
  sub_1C1B95A18();
  v14 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v3 + 16))(v6, v13 + v14, v2);
  LOBYTE(v21) = 0;
  sub_1C1B360CC(&unk_1EDE6C360, MEMORY[0x1E69695A8]);
  v15 = v19[1];
  sub_1C1B95808();
  if (v15)
  {
    (*(v3 + 8))(v6, v2);
    return (*(v8 + 8))(v11, v7);
  }

  else
  {
    (*(v3 + 8))(v6, v2);
    v21 = *(v13 + OBJC_IVAR___APPCBaseContext_maxSize);
    LOBYTE(v20) = 1;
    type metadata accessor for CGSize(0);
    sub_1C1B360CC(&qword_1EDE6BB40, type metadata accessor for CGSize);
    sub_1C1B95808();
    v17 = OBJC_IVAR___APPCBaseContext_requestedAd;
    swift_beginAccess();
    v20 = *(v13 + v17);
    v22 = 2;
    sub_1C1AC1F08(&qword_1EBF07AB8, &qword_1C1B98D00);
    sub_1C1AC344C();
    sub_1C1B95808();
    if (*(v13 + OBJC_IVAR___APPCBaseContext_current))
    {
      type metadata accessor for ContentDepiction();
      v18 = swift_dynamicCastClass();
      if (v18)
      {
        swift_unknownObjectRetain();
      }
    }

    else
    {
      v18 = 0;
    }

    *&v20 = v18;
    v22 = 3;
    type metadata accessor for ContentDepiction();
    sub_1C1B360CC(&qword_1EDE6B2B8, type metadata accessor for ContentDepiction);
    sub_1C1B95788();

    *&v20 = sub_1C1AA5AB0(*(v13 + OBJC_IVAR___APPCBaseContext_next));
    v22 = 4;
    sub_1C1AC1F08(&qword_1EBF07B50, &unk_1C1B98F80);
    sub_1C1B36114(&qword_1EDE6A708, &qword_1EDE6B2B8);
    sub_1C1B95788();

    *&v20 = sub_1C1AA5AB0(*(v13 + OBJC_IVAR___APPCBaseContext_adjacent));
    v22 = 5;
    sub_1C1B95788();

    return (*(v8 + 8))(v11, 0);
  }
}

uint64_t sub_1C1B3435C()
{
  v1 = (v0 + OBJC_IVAR___APPCBaseContext_requestedAd);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

void sub_1C1B343B4()
{
  v1 = *(v0 + OBJC_IVAR___APPCBaseContext_adjacent);
  if (v1 >> 62)
  {
LABEL_24:
    v2 = sub_1C1B953A8();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  while (1)
  {
    if (v2 == v3)
    {
      goto LABEL_13;
    }

    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1C6907490](v3, v1);
      if (__OFADD__(v3, 1))
      {
        break;
      }

      goto LABEL_8;
    }

    if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_24;
    }

    v4 = *(v1 + 8 * v3 + 32);
    swift_unknownObjectRetain();
    if (__OFADD__(v3, 1))
    {
      break;
    }

LABEL_8:
    v5 = [v4 adjacentPosition];
    swift_unknownObjectRelease();
    ++v3;
    if (!v5)
    {
      v7 = sub_1C1B94D78();
      APSimulateCrash();
LABEL_16:

      return;
    }
  }

  __break(1u);
LABEL_13:
  if (!*(v0 + OBJC_IVAR___APPCBaseContext_current))
  {
    return;
  }

  v6 = *(v0 + OBJC_IVAR___APPCBaseContext_current);
  if ([swift_unknownObjectRetain() adjacentPosition])
  {
    v7 = sub_1C1B94D78();
    APSimulateCrash();
    swift_unknownObjectRelease();
    goto LABEL_16;
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1C1B345B8()
{
  *v0;
  *v0;
  *v0;
  sub_1C1B94DE8();
}

uint64_t sub_1C1B346B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B363FC();
  *a2 = result;
  return result;
}

void sub_1C1B346E4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  v5 = 0xE700000000000000;
  v6 = 0x746E6572727563;
  v7 = 0xE400000000000000;
  v8 = 1954047342;
  if (v2 != 4)
  {
    v8 = 0x746E6563616A6461;
    v7 = 0xE800000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE700000000000000;
  v10 = 0x657A695378616DLL;
  if (v2 != 1)
  {
    v10 = 0x6574736575716572;
    v9 = 0xEB00000000644164;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1C1B347A8()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x746E6572727563;
  v4 = 1954047342;
  if (v1 != 4)
  {
    v4 = 0x746E6563616A6461;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657A695378616DLL;
  if (v1 != 1)
  {
    v5 = 0x6574736575716572;
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

uint64_t sub_1C1B34868@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1B363FC();
  *a1 = result;
  return result;
}

uint64_t sub_1C1B3489C(uint64_t a1)
{
  v2 = sub_1C1B36078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B348D8(uint64_t a1)
{
  v2 = sub_1C1B36078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B34A28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  v5 = sub_1C1B945F8();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1B34AB4(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

double BaseContext.maxSize.getter()
{
  result = *(v0 + OBJC_IVAR___APPCBaseContext_maxSize);
  v2 = *(v0 + OBJC_IVAR___APPCBaseContext_maxSize + 8);
  return result;
}

id sub_1C1B34C60(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + *a3);

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v4 = sub_1C1B94EB8();

  return v4;
}

uint64_t sub_1C1B34D58(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPCBaseContext_requestedAd);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t BaseContext.init(maxSize:requestedAd:current:next:)(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, double a5, double a6)
{
  v13 = sub_1C1B945F8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E69E7CC0];
  *&v6[OBJC_IVAR___APPCBaseContext_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v19 = &v6[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_1C1B945E8();
  v43 = v17;
  v44 = v14;
  (*(v14 + 32))(&v6[OBJC_IVAR___APPCBaseContext_identifier], v17, v13);
  v20 = &v6[OBJC_IVAR___APPCBaseContext_maxSize];
  *v20 = a5;
  v20[1] = a6;
  swift_beginAccess();
  v21 = *(v19 + 1);
  *v19 = a1;
  *(v19 + 1) = a2;

  *&v6[OBJC_IVAR___APPCBaseContext_current] = a3;
  v42 = v6;
  *&v6[OBJC_IVAR___APPCBaseContext_next] = a4;
  if (a4 >> 62)
  {
    goto LABEL_14;
  }

  v22 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v22)
  {
    while (1)
    {
      v45 = v18;
      swift_unknownObjectRetain();

      sub_1C1B95518();
      if (v22 < 0)
      {
        break;
      }

      v41[0] = v13;
      v41[1] = a3;
      v23 = 0;
      a3 = a4 & 0xC000000000000001;
      v13 = a4 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        v24 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (a3)
        {
          v25 = MEMORY[0x1C6907490](v23, a4);
        }

        else
        {
          if (v23 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v25 = *(a4 + 8 * v23 + 32);
          swift_unknownObjectRetain();
        }

        v47 = v25;
        sub_1C1B35970(&v47, &v48);
        swift_unknownObjectRelease();
        sub_1C1B954F8();
        v18 = *(v45 + 16);
        sub_1C1B95528();
        sub_1C1B95538();
        sub_1C1B95508();
        ++v23;
        if (v24 == v22)
        {

          v26 = v45;
          v13 = v41[0];
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      v22 = sub_1C1B953A8();
      if (!v22)
      {
        goto LABEL_15;
      }
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_15:
    swift_unknownObjectRetain();
    v26 = MEMORY[0x1E69E7CC0];
LABEL_16:

    if (v26 >> 62)
    {
      sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
      v27 = sub_1C1B95578();
    }

    else
    {
      sub_1C1B95898();
      v27 = v26;
    }

    v28 = v42;
    *&v42[OBJC_IVAR___APPCBaseContext_adjacent] = v27;
    v29 = type metadata accessor for BaseContext();
    v46.receiver = v28;
    v46.super_class = v29;
    v30 = objc_msgSendSuper2(&v46, sel_init);
    sub_1C1B95118();
    sub_1C1AC53E4();
    v31 = sub_1C1B95298();
    sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_1C1B98E60;
    v33 = OBJC_IVAR___APPCBaseContext_identifier;
    swift_beginAccess();
    v34 = v44;
    v35 = &v30[v33];
    v36 = v43;
    (*(v44 + 16))(v43, v35, v13);
    v37 = sub_1C1B945A8();
    v39 = v38;
    (*(v34 + 8))(v36, v13);
    *(v32 + 56) = MEMORY[0x1E69E6158];
    *(v32 + 64) = sub_1C1AA5E7C();
    *(v32 + 32) = v37;
    *(v32 + 40) = v39;
    sub_1C1B94BA8();

    swift_unknownObjectRelease();
    return v30;
  }

  return result;
}

char *BaseContext.__allocating_init(maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v30[0] = a4;
  v12 = sub_1C1B945F8();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v6);
  v18 = MEMORY[0x1E69E7CC0];
  *&v17[OBJC_IVAR___APPCBaseContext_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v19 = &v17[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v19 = 0;
  *(v19 + 1) = 0;
  sub_1C1B945E8();
  (*(v13 + 32))(&v17[OBJC_IVAR___APPCBaseContext_identifier], v16, v12);
  v20 = &v17[OBJC_IVAR___APPCBaseContext_maxSize];
  *v20 = a5;
  v20[1] = a6;
  swift_beginAccess();
  v21 = *(v19 + 1);
  *v19 = a1;
  *(v19 + 1) = a2;

  v30[1] = a3;
  *&v17[OBJC_IVAR___APPCBaseContext_current] = a3;
  *&v17[OBJC_IVAR___APPCBaseContext_next] = v18;
  *&v17[OBJC_IVAR___APPCBaseContext_adjacent] = v30[0];
  v31.receiver = v17;
  v31.super_class = v6;
  swift_unknownObjectRetain();
  v22 = objc_msgSendSuper2(&v31, sel_init);
  sub_1C1B95118();
  sub_1C1AC53E4();
  v23 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C1B98E60;
  v25 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v13 + 16))(v16, &v22[v25], v12);
  v26 = sub_1C1B945A8();
  v28 = v27;
  (*(v13 + 8))(v16, v12);
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = sub_1C1AA5E7C();
  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  sub_1C1B94BA8();

  sub_1C1B343B4();

  swift_unknownObjectRelease();
  return v22;
}

uint64_t sub_1C1B35614(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, double, double))
{
  if (a5)
  {
    v12 = sub_1C1B94D88();
    v14 = v13;
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  sub_1C1AC1F08(&unk_1EBF09000, &qword_1C1B9CEC8);
  v15 = sub_1C1B94EC8();
  swift_unknownObjectRetain();
  return a8(v12, v14, a6, v15, a1, a2);
}

id BaseContext.__allocating_init(identifier:maxSize:requestedAd:current:adjacent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR___APPCBaseContext_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v15 = &v14[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR___APPCBaseContext_identifier;
  v17 = sub_1C1B945F8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a1, v17);
  v19 = &v14[OBJC_IVAR___APPCBaseContext_maxSize];
  *v19 = a6;
  v19[1] = a7;
  swift_beginAccess();
  *v15 = a2;
  *(v15 + 1) = a3;
  *&v14[OBJC_IVAR___APPCBaseContext_current] = a4;
  *&v14[OBJC_IVAR___APPCBaseContext_next] = MEMORY[0x1E69E7CC0];
  *&v14[OBJC_IVAR___APPCBaseContext_adjacent] = a5;
  v28.receiver = v14;
  v28.super_class = v7;
  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v28, sel_init);
  sub_1C1B95118();
  sub_1C1AC53E4();
  v21 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C1B98E60;
  v23 = sub_1C1B945A8();
  v25 = v24;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1C1AA5E7C();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  sub_1C1B94BA8();

  sub_1C1B343B4();

  (*(v18 + 8))(a1, v17);
  swift_unknownObjectRelease();
  return v20;
}

id sub_1C1B35970@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = [*a1 identifier];
  v4 = sub_1C1B94D88();
  v27 = v5;
  v28 = v4;

  v26 = [v2 placement];
  v6 = [v2 language];
  v7 = sub_1C1B94D88();
  v9 = v8;

  v10 = [v2 locale];
  v11 = sub_1C1B94D88();
  v13 = v12;

  v14 = [v2 searchTerms];
  v15 = sub_1C1B94EC8();

  v16 = [v2 keywords];
  v17 = sub_1C1B94EC8();

  v18 = [v2 categories];
  v19 = sub_1C1B94EC8();

  v20 = type metadata accessor for ContentDepiction();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR___APPCContentDepiction_identifier];
  *v22 = v28;
  *(v22 + 1) = v27;
  *&v21[OBJC_IVAR___APPCContentDepiction_adjacentPosition] = 151;
  *&v21[OBJC_IVAR___APPCContentDepiction_placement] = v26;
  v23 = &v21[OBJC_IVAR___APPCContentDepiction_language];
  *v23 = v7;
  v23[1] = v9;
  v24 = &v21[OBJC_IVAR___APPCContentDepiction_locale];
  *v24 = v11;
  v24[1] = v13;
  *&v21[OBJC_IVAR___APPCContentDepiction_searchTerms] = v15;
  *&v21[OBJC_IVAR___APPCContentDepiction_keywords] = v17;
  *&v21[OBJC_IVAR___APPCContentDepiction_categories] = v19;
  v30.receiver = v21;
  v30.super_class = v20;
  result = objc_msgSendSuper2(&v30, sel_init);
  *a2 = result;
  return result;
}

id BaseContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BaseContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseContext();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B35D70@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 240))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

id sub_1C1B35E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6, double a7)
{
  *&v7[OBJC_IVAR___APPCBaseContext_adjacentInternal] = MEMORY[0x1E69E7CC0];
  v15 = &v7[OBJC_IVAR___APPCBaseContext_requestedAd];
  *v15 = 0;
  *(v15 + 1) = 0;
  v16 = OBJC_IVAR___APPCBaseContext_identifier;
  v17 = sub_1C1B945F8();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v7[v16], a1, v17);
  v19 = &v7[OBJC_IVAR___APPCBaseContext_maxSize];
  *v19 = a6;
  v19[1] = a7;
  swift_beginAccess();
  *v15 = a2;
  *(v15 + 1) = a3;
  *&v7[OBJC_IVAR___APPCBaseContext_current] = a4;
  *&v7[OBJC_IVAR___APPCBaseContext_next] = MEMORY[0x1E69E7CC0];
  *&v7[OBJC_IVAR___APPCBaseContext_adjacent] = a5;
  v27.receiver = v7;
  v27.super_class = type metadata accessor for BaseContext();
  swift_unknownObjectRetain();
  v20 = objc_msgSendSuper2(&v27, sel_init);
  sub_1C1B95118();
  sub_1C1AC53E4();
  v21 = sub_1C1B95298();
  sub_1C1AC1F08(&qword_1EBF08EF0, &unk_1C1B9AF80);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1C1B98E60;
  v23 = sub_1C1B945A8();
  v25 = v24;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1C1AA5E7C();
  *(v22 + 32) = v23;
  *(v22 + 40) = v25;
  sub_1C1B94BA8();

  sub_1C1B343B4();

  (*(v18 + 8))(a1, v17);
  return v20;
}

unint64_t sub_1C1B36078()
{
  result = qword_1EDE6B298;
  if (!qword_1EDE6B298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B298);
  }

  return result;
}

uint64_t sub_1C1B360CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C1B36114(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF07B50, &unk_1C1B98F80);
    sub_1C1B360CC(a2, type metadata accessor for ContentDepiction);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B362F8()
{
  result = qword_1EBF090D0;
  if (!qword_1EBF090D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF090D0);
  }

  return result;
}

unint64_t sub_1C1B36350()
{
  result = qword_1EDE6B288;
  if (!qword_1EDE6B288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B288);
  }

  return result;
}

unint64_t sub_1C1B363A8()
{
  result = qword_1EDE6B290;
  if (!qword_1EDE6B290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B290);
  }

  return result;
}

uint64_t sub_1C1B363FC()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 6)
  {
    return 6;
  }

  else
  {
    return v0;
  }
}

char *NewsSupplementalContext.__allocating_init(_:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) init];
  v4 = [a1 supplementalContext];
  if (!v4)
  {

    return v3;
  }

  v5 = v4;
  sub_1C1AC1F08(&qword_1EBF08E00, &unk_1C1B9F5A0);
  v6 = sub_1C1B94CB8();

  if (!*(v6 + 16))
  {
LABEL_12:

    goto LABEL_13;
  }

  v7 = sub_1C1AA7C14(0x6576697461657263, 0xEC00000065707954);
  if ((v8 & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = *(*(v6 + 56) + 8 * v7);
  swift_unknownObjectRetain();

  if (swift_dynamicCast())
  {
    v10 = &v3[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_creativeType];
    swift_beginAccess();
    v11 = *(v10 + 1);
    *v10 = v18;
    *(v10 + 1) = v19;
LABEL_7:
  }

  if (!*(v6 + 16))
  {
    goto LABEL_12;
  }

  v12 = sub_1C1AA7C14(0x6E656D6563616C70, 0xE900000000000074);
  if ((v13 & 1) == 0)
  {
    goto LABEL_12;
  }

  v14 = *(*(v6 + 56) + 8 * v12);
  swift_unknownObjectRetain();

  if (swift_dynamicCast())
  {
    v15 = &v3[OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_placement];
    swift_beginAccess();
    v16 = *(v15 + 1);
    *v15 = v18;
    *(v15 + 1) = v19;
LABEL_13:
  }

  return v3;
}

BOOL sub_1C1B366AC(uint64_t a1)
{
  sub_1C1B36814(a1, v6);
  if (v7)
  {
    type metadata accessor for ContextKey();
    if (swift_dynamicCast())
    {
      v2 = *(v1 + OBJC_IVAR____TtC15PromotedContent10ContextKey_key);
      v3 = *&v5[OBJC_IVAR____TtC15PromotedContent10ContextKey_key];

      return v2 == v3;
    }
  }

  else
  {
    sub_1C1AF4F4C(v6);
  }

  return 0;
}

id sub_1C1B367E0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ContextKey();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B36814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1AC1F08(&qword_1EBF08850, &qword_1C1B9CC70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t Context.registerHandlerForAllMetrics(closure:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C1B945F8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v19);
  v10 = sub_1C1AAABE0(v19, v19[3]);
  v11 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v6 + 16))(v9, v2 + v11, v5);
  v12 = sub_1C1B945A8();
  v14 = v13;
  (*(v6 + 8))(v9, v5);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  v16 = *v10;

  sub_1C1B49FBC(v12, v14, sub_1C1B18B2C, v15);

  return sub_1C1AA86F8(v19);
}

Swift::Void __swiftcall Context.removeHandler()()
{
  v1 = sub_1C1B945F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDE6BC60 != -1)
  {
    swift_once();
  }

  sub_1C1AAD2FC(&qword_1EDE6CE68, v13);
  v6 = sub_1C1AAABE0(v13, v13[3]);
  v7 = OBJC_IVAR___APPCBaseContext_identifier;
  swift_beginAccess();
  (*(v2 + 16))(v5, v0 + v7, v1);
  v8 = sub_1C1B945A8();
  v10 = v9;
  (*(v2 + 8))(v5, v1);
  v11 = *v6;
  sub_1C1B4A148(v8, v10);

  sub_1C1AA86F8(v13);
}

uint64_t PlacementType.stringValue.getter(uint64_t a1)
{
  result = 0x72656E6E6162;
  if (a1 <= 3)
  {
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        return 0x6F69647561;
      }

      else
      {
        return 0x6F65646976;
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        return 0x6974737265746E69;
      }

LABEL_19:
      result = sub_1C1B958C8();
      __break(1u);
    }
  }

  else
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 7368801;
        case 7:
          return 0x73726F736E6F7073;
        case 8:
          return 0x686372616573;
      }

      goto LABEL_19;
    }

    if (a1 == 4)
    {
      return 0x65766974616ELL;
    }
  }

  return result;
}

uint64_t PlacementType.isSuitableReplacement(for:)(uint64_t a1, uint64_t a2)
{
  if (a2 <= 3)
  {
    if (a2 > 1)
    {
      if (a2 == 2)
      {
        return a1 == 2;
      }

      else
      {
        return a1 == 3;
      }
    }

    if (a2)
    {
      if (a2 == 1)
      {
        return a1 == 1;
      }

LABEL_24:
      result = sub_1C1B958C8();
      __break(1u);
      return result;
    }
  }

  else
  {
    if (a2 > 5)
    {
      switch(a2)
      {
        case 6:
          return a1 == 6;
        case 7:
          return a1 == 7;
        case 8:
          return 0;
      }

      goto LABEL_24;
    }

    if (a2 == 4)
    {
      return a1 == 4;
    }
  }

  return !a1 || a1 == 5;
}

uint64_t static PlacementType.type(fromString:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x72656E6E6162 && a2 == 0xE600000000000000;
  if (v3 || (sub_1C1B95888() & 1) != 0 || a1 == 7958113 && a2 == 0xE300000000000000 || (sub_1C1B95888() & 1) != 0)
  {
    return 0;
  }

  if (a1 == 0x6974737265746E69 && a2 == 0xEC0000006C616974 || (sub_1C1B95888() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x6F69647561 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {
    return 2;
  }

  if (a1 == 0x6F65646976 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {
    return 3;
  }

  if (a1 == 0x65766974616ELL && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {
    return 4;
  }

  if (a1 == 7368801 && a2 == 0xE300000000000000 || (sub_1C1B95888() & 1) != 0)
  {
    return 6;
  }

  if (a1 == 0x73726F736E6F7073 && a2 == 0xEB00000000706968)
  {
    return 7;
  }

  if (sub_1C1B95888())
  {
    return 7;
  }

  return 0;
}

uint64_t PlacementType.description.getter(uint64_t a1)
{
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      switch(a1)
      {
        case 6:
          return 7368801;
        case 7:
          return 0x73726F736E6F7073;
        case 8:
          return 0x686372616573;
      }

      goto LABEL_19;
    }

    if (a1 == 4)
    {
      return 0x65766974616ELL;
    }

    return 0x72656E6E6162;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        return 0x6974737265746E69;
      }

LABEL_19:
      result = sub_1C1B958C8();
      __break(1u);
      return result;
    }

    return 0x72656E6E6162;
  }

  if (a1 == 2)
  {
    return 0x6F69647561;
  }

  else
  {
    return 0x6F65646976;
  }
}

uint64_t PlacementType.desiredPlacementType(count:)@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 >= 9)
  {
    result = sub_1C1B958C8();
    __break(1u);
  }

  else
  {
    v3 = byte_1C1BA023C[a2];
    *a3 = result;
    *(a3 + 8) = v3;
  }

  return result;
}

unint64_t sub_1C1B3730C@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B373F8(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1C1B373F8(unint64_t result)
{
  if (result > 8)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B3740C()
{
  result = qword_1EDE6C2C0;
  if (!qword_1EDE6C2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2C0);
  }

  return result;
}

unint64_t sub_1C1B37460()
{
  result = qword_1EDE6C2B8;
  if (!qword_1EDE6C2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2B8);
  }

  return result;
}

void *OutstreamVideoTapAction.adamIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier);
  v2 = v1;
  return v1;
}

uint64_t sub_1C1B37518@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1C1B38790();
  *a2 = result;
  return result;
}

uint64_t sub_1C1B37548@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C1B38790();
  *a1 = result;
  return result;
}

uint64_t sub_1C1B37570(uint64_t a1)
{
  v2 = sub_1C1B38408();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B375AC(uint64_t a1)
{
  v2 = sub_1C1B38408();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id OutstreamVideoTapAction.__allocating_init(actionType:confirmedClickInterval:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url;
  v5 = sub_1C1B944A8();
  (*(*(v5 - 8) + 56))(&v3[v4], 1, 1, v5);
  v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = 2;
  *&v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = 0;
  *&v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = 0;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a1;
  v7.receiver = v3;
  v7.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v7, sel_init);
}

id OutstreamVideoTapAction.init(actionType:confirmedClickInterval:)(double a1)
{
  v3 = OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url;
  v4 = sub_1C1B944A8();
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v1[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = 2;
  *&v1[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = 0;
  *&v1[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = 0;
  *&v1[OBJC_IVAR___APPCTapAction_actionType] = 4;
  *&v1[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a1;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v6, sel_init);
}

id OutstreamVideoTapAction.init(url:opensInstalledApp:confirmedClickInterval:)(uint64_t a1, char a2, double a3)
{
  v7 = OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url;
  v8 = sub_1C1B944A8();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v3[v7], a1, v8);
  (*(v9 + 56))(&v3[v7], 0, 1, v8);
  v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = a2;
  *&v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = 0;
  *&v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = 0;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 6;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v12.receiver = v3;
  v12.super_class = type metadata accessor for TapAction();
  v10 = objc_msgSendSuper2(&v12, sel_init);
  (*(v9 + 8))(a1, v8);
  return v10;
}

id OutstreamVideoTapAction.__allocating_init(adamIdentifier:iTunesMetadata:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = a1;
  *&v7[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = a2;
  v8 = OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url;
  v9 = sub_1C1B944A8();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  v7[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = 2;
  *&v7[OBJC_IVAR___APPCTapAction_actionType] = 6;
  *&v7[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v11.receiver = v7;
  v11.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v11, sel_init);
}

id OutstreamVideoTapAction.init(adamIdentifier:iTunesMetadata:confirmedClickInterval:)(uint64_t a1, uint64_t a2, double a3)
{
  *&v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier] = a1;
  *&v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata] = a2;
  v5 = OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url;
  v6 = sub_1C1B944A8();
  (*(*(v6 - 8) + 56))(&v3[v5], 1, 1, v6);
  v3[OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp] = 2;
  *&v3[OBJC_IVAR___APPCTapAction_actionType] = 6;
  *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a3;
  v8.receiver = v3;
  v8.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v8, sel_init);
}

void *sub_1C1B37C70(uint64_t *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v22 - v5;
  v7 = sub_1C1AC1F08(&qword_1EBF09108, &qword_1C1BA03F8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v22 - v10;
  v12 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B38408();
  sub_1C1B95A08();
  if (v1)
  {
    v14 = v23;
    sub_1C1AA86F8(a1);
    type metadata accessor for OutstreamVideoTapAction();
    v15 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x30);
    v16 = *((*MEMORY[0x1E69E7D40] & *v14) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v13 = v8;
    sub_1C1B944A8();
    LOBYTE(v25[0]) = 0;
    sub_1C1AEF214(&unk_1EDE6C3A0);
    sub_1C1B95678();
    v18 = v23;
    sub_1C1AEF258(v6, v23 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url);
    LOBYTE(v25[0]) = 1;
    *(v18 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp) = sub_1C1B95648();
    LOBYTE(v25[0]) = 2;
    v19 = sub_1C1B95658();
    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    }

    *(v18 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier) = v21;
    sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
    LOBYTE(v24[0]) = 3;
    sub_1C1AD0C9C(&unk_1EDE6BBF0);
    sub_1C1B95678();
    *(v18 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata) = v25[0];
    sub_1C1B95628();
    sub_1C1AAD2FC(v25, v24);
    v14 = TapAction.init(from:)(v24);
    sub_1C1AA86F8(v25);
    (*(v13 + 8))(v11, v7);
    sub_1C1AA86F8(a1);
  }

  return v14;
}

uint64_t sub_1C1B3811C(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF090E0, &qword_1C1BA0248);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v13 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B38408();
  sub_1C1B95A18();
  LOBYTE(v13[0]) = 0;
  sub_1C1B944A8();
  sub_1C1AEF214(&unk_1EDE6C3B0);
  sub_1C1B95788();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_opensInstalledApp);
  LOBYTE(v13[0]) = 1;
  sub_1C1B95758();
  if (*(v3 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier))
  {
    [*(v3 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_adamIdentifier) doubleValue];
  }

  LOBYTE(v13[0]) = 2;
  sub_1C1B95768();
  v13[0] = *(v3 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata);
  v14 = 3;
  sub_1C1AC1F08(&qword_1EBF07EA0, &qword_1C1B9ACD0);
  sub_1C1AD0C9C(&qword_1EDE6BC00);
  sub_1C1B95788();
  sub_1C1B95738();
  sub_1C1B3BBE0(v13);
  sub_1C1AA86F8(v13);
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C1B38408()
{
  result = qword_1EBF090E8;
  if (!qword_1EBF090E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF090E8);
  }

  return result;
}

uint64_t sub_1C1B3845C()
{
  sub_1C1AC54A0(v0 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_url);

  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent23OutstreamVideoTapAction_iTunesMetadata);
}

id OutstreamVideoTapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OutstreamVideoTapAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for OutstreamVideoTapAction()
{
  result = qword_1EDE6AD20;
  if (!qword_1EDE6AD20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C1B38594()
{
  sub_1C1AEF0A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C1B3868C()
{
  result = qword_1EBF090F0;
  if (!qword_1EBF090F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF090F0);
  }

  return result;
}

unint64_t sub_1C1B386E4()
{
  result = qword_1EBF090F8;
  if (!qword_1EBF090F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF090F8);
  }

  return result;
}

unint64_t sub_1C1B3873C()
{
  result = qword_1EBF09100;
  if (!qword_1EBF09100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09100);
  }

  return result;
}

uint64_t sub_1C1B38790()
{
  v0 = sub_1C1B955F8();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t RelevantIdentifierType.stringValue.getter(uint64_t a1)
{
  if (a1 > 15002)
  {
    switch(a1)
    {
      case 15003:
        return 0x6E676961706D6163;
      case 15004:
        return 0x6576697461657263;
      case 15005:
        return 0x64496D616461;
    }
  }

  else
  {
    switch(a1)
    {
      case 0:
        return 0x6E776F6E6B6E75;
      case 15001:
        return 0x6441657571696E75;
      case 15002:
        return 1701734764;
    }
  }

  result = sub_1C1B958C8();
  __break(1u);
  return result;
}

uint64_t sub_1C1B38900@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B3A42C(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t PolicyData.creativeIdentifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC15PromotedContent10PolicyData_creativeIdentifier);
  v2 = *(v0 + OBJC_IVAR____TtC15PromotedContent10PolicyData_creativeIdentifier + 8);

  return v1;
}

id PolicyData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C1B38AC4()
{
  if (*v0)
  {
    result = 0x61567963696C6F70;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_1C1B38B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001C1BAAC10 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61567963696C6F70 && a2 == 0xEC0000007365756CLL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C1B95888();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1C1B38BF8(uint64_t a1)
{
  v2 = sub_1C1B3A470();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B38C34(uint64_t a1)
{
  v2 = sub_1C1B3A470();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B38CD8(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09120, &qword_1C1BA0400);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3A470();
  sub_1C1B95A18();
  v11 = *(v3 + OBJC_IVAR____TtC15PromotedContent10PolicyData_creativeIdentifier);
  v12 = *(v3 + OBJC_IVAR____TtC15PromotedContent10PolicyData_creativeIdentifier + 8);
  v16 = 0;
  sub_1C1B957A8();
  if (!v2)
  {
    v15 = *(v3 + OBJC_IVAR____TtC15PromotedContent10PolicyData_policyValues);
    v14[15] = 1;
    sub_1C1AC1F08(&qword_1EBF09130, &qword_1C1BA0408);
    sub_1C1B3A4C4(&qword_1EBF09138);
    sub_1C1B95808();
  }

  return (*(v6 + 8))(v9, v5);
}

id PolicyData.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09140, &qword_1C1BA0410);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3A470();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for PolicyData();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v19) = 0;
    v11 = sub_1C1B95698();
    v13 = &v1[OBJC_IVAR____TtC15PromotedContent10PolicyData_creativeIdentifier];
    *v13 = v11;
    v13[1] = v14;
    sub_1C1AC1F08(&qword_1EBF09130, &qword_1C1BA0408);
    v18 = 1;
    sub_1C1B3A4C4(&qword_1EBF09148);
    sub_1C1B956F8();
    *&v1[OBJC_IVAR____TtC15PromotedContent10PolicyData_policyValues] = v19;
    v15 = type metadata accessor for PolicyData();
    v17.receiver = v1;
    v17.super_class = v15;
    v3 = objc_msgSendSuper2(&v17, sel_init);
    (*(v6 + 8))(v9, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

id sub_1C1B391FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_relevantIdentifier] = a1;
  if (([objc_opt_self() isAppleInternalInstall] & 1) != 0 || (v6 = objc_msgSend(objc_opt_self(), sel_processInfo), v7 = objc_msgSend(v6, sel_isRunningTests), v6, v7))
  {
    if (qword_1EDE6BB80 != -1)
    {
      swift_once();
    }

    if (!(byte_1EDE6CE58 & 1 | (qword_1EDE6CE50 < 1)))
    {
      a2 = qword_1EDE6CE50;
    }

    if (qword_1EDE6BB78 != -1)
    {
      swift_once();
    }

    if (!(byte_1EDE6CDE0 & 1 | (qword_1EDE6CDD8 < 1)))
    {
      a3 = qword_1EDE6CDD8;
    }
  }

  *&v3[OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_frequencyValue] = a2;
  *&v3[OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_frequencyDuration] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for FrequencyCapData();
  return objc_msgSendSuper2(&v9, sel_init);
}

unint64_t sub_1C1B393D4()
{
  v1 = 0x636E657571657266;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1C1B39444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B3AC58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B3946C(uint64_t a1)
{
  v2 = sub_1C1B3A558();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B394A8(uint64_t a1)
{
  v2 = sub_1C1B3A558();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C1B394FC(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09168, &qword_1C1BA0418);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3A558();
  sub_1C1B95A18();
  v15 = *(v3 + OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_relevantIdentifier);
  v14[7] = 0;
  sub_1C1B3A5AC();
  sub_1C1B95808();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_frequencyValue);
  v14[6] = 1;
  sub_1C1B957F8();
  v13 = *(v3 + OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_frequencyDuration);
  v14[5] = 2;
  sub_1C1B957F8();
  return (*(v6 + 8))(v9, v5);
}

void *FrequencyCapData.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09170, &qword_1C1BA0420);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  v11 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3A558();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for FrequencyCapData();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = 0;
    sub_1C1B3A600();
    sub_1C1B956F8();
    *&v3[OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_relevantIdentifier] = v17;
    LOBYTE(v17) = 1;
    *&v3[OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_frequencyValue] = sub_1C1B956E8();
    LOBYTE(v17) = 2;
    *&v3[OBJC_IVAR____TtC15PromotedContent16FrequencyCapData_frequencyDuration] = sub_1C1B956E8();
    v13 = type metadata accessor for FrequencyCapData();
    v15.receiver = v3;
    v15.super_class = v13;
    v11 = objc_msgSendSuper2(&v15, sel_init);
    (*(v6 + 8))(v9, v5);
    sub_1C1AA86F8(a1);
  }

  return v11;
}

uint64_t AdPolicyData.rawAdType.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCAdPolicyData_rawAdType);
  v2 = *(v0 + OBJC_IVAR___APPCAdPolicyData_rawAdType + 8);

  return v1;
}

uint64_t AdPolicyData.rawAdFormatType.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCAdPolicyData_rawAdFormatType);
  v2 = *(v0 + OBJC_IVAR___APPCAdPolicyData_rawAdFormatType + 8);

  return v1;
}

void *AdPolicyData.frequencyCapData.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCAdPolicyData_frequencyCapData);
  v2 = v1;
  return v1;
}

void *AdPolicyData.policyData.getter()
{
  v1 = *(v0 + OBJC_IVAR___APPCAdPolicyData_policyData);
  v2 = v1;
  return v1;
}

unint64_t sub_1C1B39AE8()
{
  v1 = 0x7079546441776172;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x61447963696C6F70;
  }

  if (*v0)
  {
    v1 = 0x726F466441776172;
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

uint64_t sub_1C1B39B7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B3AD84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B39BA4(uint64_t a1)
{
  v2 = sub_1C1B3A678();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B39BE0(uint64_t a1)
{
  v2 = sub_1C1B3A678();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id sub_1C1B39C34(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1C1B39CE0(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF09198, &qword_1C1BA0428);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3A678();
  sub_1C1B95A18();
  v11 = *(v3 + OBJC_IVAR___APPCAdPolicyData_rawAdType);
  v12 = *(v3 + OBJC_IVAR___APPCAdPolicyData_rawAdType + 8);
  LOBYTE(v17) = 0;
  sub_1C1B95748();
  if (!v2)
  {
    v14 = *(v3 + OBJC_IVAR___APPCAdPolicyData_rawAdFormatType);
    v15 = *(v3 + OBJC_IVAR___APPCAdPolicyData_rawAdFormatType + 8);
    LOBYTE(v17) = 1;
    sub_1C1B95748();
    v17 = *(v3 + OBJC_IVAR___APPCAdPolicyData_frequencyCapData);
    HIBYTE(v16) = 2;
    type metadata accessor for FrequencyCapData();
    sub_1C1B3A6CC(&qword_1EDE6B050, type metadata accessor for FrequencyCapData);
    sub_1C1B95788();
    v17 = *(v3 + OBJC_IVAR___APPCAdPolicyData_policyData);
    HIBYTE(v16) = 3;
    type metadata accessor for PolicyData();
    sub_1C1B3A6CC(&qword_1EDE6B2A8, type metadata accessor for PolicyData);
    sub_1C1B95788();
  }

  return (*(v6 + 8))(v9, v5);
}

id AdPolicyData.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF091A0, &qword_1C1BA0430);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3A678();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for AdPolicyData();
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v22) = 0;
    v11 = sub_1C1B95638();
    v13 = &v1[OBJC_IVAR___APPCAdPolicyData_rawAdType];
    *v13 = v11;
    v13[1] = v14;
    LOBYTE(v22) = 1;
    v15 = sub_1C1B95638();
    v16 = &v1[OBJC_IVAR___APPCAdPolicyData_rawAdFormatType];
    *v16 = v15;
    v16[1] = v17;
    type metadata accessor for FrequencyCapData();
    v21 = 2;
    sub_1C1B3A6CC(&qword_1EDE6B048, type metadata accessor for FrequencyCapData);
    sub_1C1B95678();
    *&v1[OBJC_IVAR___APPCAdPolicyData_frequencyCapData] = v22;
    type metadata accessor for PolicyData();
    v21 = 3;
    sub_1C1B3A6CC(&qword_1EDE6B2A0, type metadata accessor for PolicyData);
    sub_1C1B95678();
    *&v1[OBJC_IVAR___APPCAdPolicyData_policyData] = v22;
    v18 = type metadata accessor for AdPolicyData();
    v20.receiver = v1;
    v20.super_class = v18;
    v3 = objc_msgSendSuper2(&v20, sel_init);
    (*(v6 + 8))(v9, v5);
    sub_1C1AA86F8(a1);
  }

  return v3;
}

uint64_t sub_1C1B3A3A8@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a3)(uint64_t)@<X4>, uint64_t *a4@<X8>)
{
  v8 = objc_allocWithZone(a2());
  result = a3(a1);
  if (!v4)
  {
    *a4 = result;
  }

  return result;
}

uint64_t sub_1C1B3A42C(uint64_t result)
{
  if ((result - 15001) >= 5 && result != 0)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B3A470()
{
  result = qword_1EBF09128;
  if (!qword_1EBF09128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09128);
  }

  return result;
}

uint64_t sub_1C1B3A4C4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1C1AC3404(&qword_1EBF09130, &qword_1C1BA0408);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B3A558()
{
  result = qword_1EDE6B068;
  if (!qword_1EDE6B068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B068);
  }

  return result;
}

unint64_t sub_1C1B3A5AC()
{
  result = qword_1EDE6AD58;
  if (!qword_1EDE6AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD58);
  }

  return result;
}

unint64_t sub_1C1B3A600()
{
  result = qword_1EDE6AD48;
  if (!qword_1EDE6AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD48);
  }

  return result;
}

unint64_t sub_1C1B3A678()
{
  result = qword_1EDE6B240;
  if (!qword_1EDE6B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B240);
  }

  return result;
}

uint64_t sub_1C1B3A6CC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1B3A714()
{
  result = qword_1EBF091A8;
  if (!qword_1EBF091A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091A8);
  }

  return result;
}

unint64_t sub_1C1B3A944()
{
  result = qword_1EBF091B0;
  if (!qword_1EBF091B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091B0);
  }

  return result;
}

unint64_t sub_1C1B3A99C()
{
  result = qword_1EBF091B8;
  if (!qword_1EBF091B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091B8);
  }

  return result;
}

unint64_t sub_1C1B3A9F4()
{
  result = qword_1EBF091C0;
  if (!qword_1EBF091C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091C0);
  }

  return result;
}

unint64_t sub_1C1B3AA4C()
{
  result = qword_1EDE6B230;
  if (!qword_1EDE6B230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B230);
  }

  return result;
}

unint64_t sub_1C1B3AAA4()
{
  result = qword_1EDE6B238;
  if (!qword_1EDE6B238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B238);
  }

  return result;
}

unint64_t sub_1C1B3AAFC()
{
  result = qword_1EDE6B058;
  if (!qword_1EDE6B058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B058);
  }

  return result;
}

unint64_t sub_1C1B3AB54()
{
  result = qword_1EDE6B060;
  if (!qword_1EDE6B060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B060);
  }

  return result;
}

unint64_t sub_1C1B3ABAC()
{
  result = qword_1EBF091C8;
  if (!qword_1EBF091C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091C8);
  }

  return result;
}

unint64_t sub_1C1B3AC04()
{
  result = qword_1EBF091D0;
  if (!qword_1EBF091D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091D0);
  }

  return result;
}

uint64_t sub_1C1B3AC58(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000012 && 0x80000001C1BAAC70 == a2;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636E657571657266 && a2 == 0xEE0065756C615679 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C1BAACA0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C1B95888();

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

uint64_t sub_1C1B3AD84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7079546441776172 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F466441776172 && a2 == 0xEF6570795474616DLL || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C1BAACF0 == a2 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61447963696C6F70 && a2 == 0xEA00000000006174)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C1B95888();

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

unint64_t sub_1C1B3AF08()
{
  result = qword_1EDE6AD50;
  if (!qword_1EDE6AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6AD50);
  }

  return result;
}

uint64_t sub_1C1B3AF64(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
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
        v8 = MEMORY[0x1C6907490](v5, a3);
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
      v12 = sub_1C1B953A8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_1C1B3B0A0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *Context.firstPromotableContent(withIdentifier:)(uint64_t a1, uint64_t a2)
{
  v5 = OBJC_IVAR___APPCContext_inventory;
  swift_beginAccess();
  v6 = *(v2 + v5);
  if (v6 >> 62)
  {
LABEL_23:
    v7 = sub_1C1B953A8();
  }

  else
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v7)
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1C6907490](v8, v6);
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
LABEL_17:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_23;
        }

        v9 = *(v6 + 8 * v8 + 32);
        swift_unknownObjectRetain();
        v10 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          goto LABEL_17;
        }
      }

      v11 = [v9 identifier];
      v12 = sub_1C1B94D88();
      v14 = v13;

      if (v12 == a1 && v14 == a2)
      {

LABEL_20:

        return v9;
      }

      v16 = sub_1C1B95888();

      if (v16)
      {
        goto LABEL_20;
      }

      swift_unknownObjectRelease();
      ++v8;
    }

    while (v10 != v7);
  }

  return 0;
}

uint64_t Context.sponsorshipHeadline(for:)(void *a1)
{
  v3 = sub_1C1B94628();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v52 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v52 - v12;
  if (![a1 bestRepresentation])
  {
    return 0;
  }

  type metadata accessor for ClientLayoutRepresentation();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    return 0;
  }

  v15 = v14;
  v16 = *(v14 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline + 8);
  v57 = v4;
  if (v16)
  {
    v17 = *(v14 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_headline);
    v58 = v16;
  }

  else
  {
    v17 = 0;
    v58 = 0xE000000000000000;
  }

  v18 = OBJC_IVAR___APPCContext_newsContext;
  swift_beginAccess();
  v19 = *(v1 + v18);
  if (!v19 || (v20 = OBJC_IVAR____TtC15PromotedContent23NewsSupplementalContext_feedMetadataLanguages, swift_beginAccess(), (v21 = *(v19 + v20)) == 0) || (v22 = *(v15 + OBJC_IVAR____TtC15PromotedContent26ClientLayoutRepresentation_localizedHeadlines)) == 0)
  {

    swift_unknownObjectRelease();
    return v17;
  }

  v56 = v21;

  sub_1C1B94618();
  v23 = sub_1C1B94608();
  if (!*(v22 + 16))
  {
    v38 = v22;

    v29 = v57;
LABEL_19:
    v55 = *(v29 + 8);
    v55(v13, v3);
    goto LABEL_20;
  }

  v25 = sub_1C1AA7C14(v23, v24);
  v27 = v26;

  v28 = v22;
  v29 = v57;
  if ((v27 & 1) == 0)
  {
    v38 = v28;
    goto LABEL_19;
  }

  v53 = v28;
  v30 = (*(v28 + 56) + 16 * v25);
  v31 = v30[1];
  v52 = *v30;
  v32 = *(v57 + 8);
  v54 = v31;

  v32(v13, v3);
  sub_1C1B94618();
  v33 = sub_1C1B94608();
  v35 = v34;
  v55 = v32;
  v36 = (v32)(v11, v3);
  v59 = v33;
  v60 = v35;
  MEMORY[0x1EEE9AC00](v36);
  *(&v52 - 2) = &v59;
  LOBYTE(v33) = sub_1C1B3B0A0(sub_1C1B3B8A0, (&v52 - 4), v56);

  if (v33)
  {
    swift_unknownObjectRelease();

    return v52;
  }

  v38 = v53;

LABEL_20:
  sub_1C1B94618();
  v39 = sub_1C1B94608();
  v41 = v38;
  if (!*(v38 + 16))
  {

    goto LABEL_25;
  }

  v57 = 0;
  v42 = sub_1C1AA7C14(v39, v40);
  v44 = v43;

  if ((v44 & 1) == 0)
  {
LABEL_25:
    v55(v8, v3);
    swift_unknownObjectRelease();

    return v17;
  }

  v45 = (*(v41 + 56) + 16 * v42);
  v46 = v45[1];
  v54 = *v45;

  v47 = v55;
  v55(v8, v3);

  sub_1C1B94618();
  v48 = sub_1C1B94608();
  v50 = v49;
  v51 = v47(v11, v3);
  v59 = v48;
  v60 = v50;
  MEMORY[0x1EEE9AC00](v51);
  *(&v52 - 2) = &v59;
  LOBYTE(v48) = sub_1C1B3B0A0(sub_1C1B3B82C, (&v52 - 4), v56);

  swift_unknownObjectRelease();

  if (v48)
  {
    return v54;
  }

  return v17;
}

uint64_t sub_1C1B3B848(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C1B95888() & 1;
  }
}

id TapAction.init(actionType:confirmedClickInterval:)(uint64_t a1, double a2)
{
  *&v2[OBJC_IVAR___APPCTapAction_actionType] = a1;
  *&v2[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v4, sel_init);
}

void *TapAction.init(from:)(uint64_t *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF091E8, &qword_1C1BA09D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  v11 = sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3BB38();
  sub_1C1B95A08();
  if (v2)
  {
    sub_1C1AA86F8(a1);
    type metadata accessor for TapAction();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = 0;
    sub_1C1B3BB8C();
    sub_1C1B956F8();
    *&v3[OBJC_IVAR___APPCTapAction_actionType] = v18;
    LOBYTE(v18) = 1;
    sub_1C1B956B8();
    *&v3[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v13;
    v14 = type metadata accessor for TapAction();
    v16.receiver = v3;
    v16.super_class = v14;
    v11 = objc_msgSendSuper2(&v16, sel_init);
    (*(v6 + 8))(v9, v5);
    sub_1C1AA86F8(a1);
  }

  return v11;
}

unint64_t sub_1C1B3BB38()
{
  result = qword_1EDE6A7B8;
  if (!qword_1EDE6A7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A7B8);
  }

  return result;
}

unint64_t sub_1C1B3BB8C()
{
  result = qword_1EDE6B170;
  if (!qword_1EDE6B170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B170);
  }

  return result;
}

uint64_t sub_1C1B3BBE0(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF091F0, &qword_1C1BA09D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3BB38();
  sub_1C1B95A18();
  v14 = *(v3 + OBJC_IVAR___APPCTapAction_actionType);
  v13[7] = 0;
  sub_1C1B3BD88();
  sub_1C1B95808();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR___APPCTapAction_confirmedClickInterval);
    v13[6] = 1;
    sub_1C1B957C8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C1B3BD88()
{
  result = qword_1EDE6B180[0];
  if (!qword_1EDE6B180[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE6B180);
  }

  return result;
}

id TapAction.__allocating_init(actionType:confirmedClickInterval:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___APPCTapAction_actionType] = a1;
  *&v5[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id TapAction.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1C1B3BF74()
{
  if (*v0)
  {
    result = 0xD000000000000016;
  }

  else
  {
    result = 0x79546E6F69746361;
  }

  *v0;
  return result;
}

uint64_t sub_1C1B3BFB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79546E6F69746361 && a2 == 0xEA00000000006570;
  if (v6 || (sub_1C1B95888() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001C1BAAD50 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C1B95888();

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

uint64_t sub_1C1B3C0A4(uint64_t a1)
{
  v2 = sub_1C1B3BB38();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B3C0E0(uint64_t a1)
{
  v2 = sub_1C1B3BB38();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id TapAction.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TapAction();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1C1B3C194@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 128))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1C1B3C33C()
{
  result = qword_1EBF091F8;
  if (!qword_1EBF091F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF091F8);
  }

  return result;
}

unint64_t sub_1C1B3C394()
{
  result = qword_1EDE6A7A8;
  if (!qword_1EDE6A7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A7A8);
  }

  return result;
}

unint64_t sub_1C1B3C3EC()
{
  result = qword_1EDE6A7B0;
  if (!qword_1EDE6A7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6A7B0);
  }

  return result;
}

uint64_t FetchableAdContentSubState.nextSubState(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *v2;
  v7 = *(v2 + 8);
  if (!*(v2 + 8))
  {
    if (*(a1 + 8) > 4u)
    {
      if (v5 == 5 || (v5 == 7 ? (v12 = (v4 | 2) == 2) : (v12 = 0), v12))
      {
        sub_1C1AC5F78(*a1, v5);
        sub_1C1B3CA84(v6, 0);
        v8 = v6;
        v9 = 0;
        goto LABEL_24;
      }

      goto LABEL_34;
    }

    if (v5 == 1)
    {
      sub_1C1AC5F78(v4, 1u);
      sub_1C1B3CA84(v6, 0);
      sub_1C1AC5F78(v4, 1u);
      sub_1C1B3CA84(v6, 0);
      sub_1C1AC730C(v4);
      sub_1C1B3CA98(v6, 0);
      result = sub_1C1AC5FD0(v4, 1u);
      *a2 = v6;
      goto LABEL_39;
    }

    if (v5 != 2)
    {
      goto LABEL_34;
    }

    v24 = *a1;
    MEMORY[0x1EEE9AC00](a1);
    v23[2] = &v24;
    sub_1C1B3CA84(v6, 0);
    sub_1C1AC5F78(v4, 2u);
    sub_1C1B3CA84(v6, 0);
    if (sub_1C1B3AF64(sub_1C1B3D6DC, v23, v6))
    {
      sub_1C1B3CA98(v6, 0);
      result = sub_1C1AC5FD0(v4, 2u);
      *a2 = v6;
    }

    else
    {
      sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1C1B9FE60;
      *(inited + 32) = v4;
      v24 = v6;

      sub_1C1AC730C(inited);
      sub_1C1B3CA98(v6, 0);
      result = sub_1C1AC5FD0(v4, 2u);
      *a2 = v24;
    }

LABEL_49:
    v13 = 1;
    goto LABEL_50;
  }

  if (v7 != 1)
  {
    if (v5 != 2)
    {
      if (v5 != 1)
      {
        goto LABEL_34;
      }

      v11 = *a1;
      swift_bridgeObjectRetain_n();
      sub_1C1B3CA98(v6, 2u);
      result = sub_1C1AC5FD0(v4, 1u);
      *a2 = v4;
LABEL_39:
      *(a2 + 8) = 0;
      return result;
    }

    sub_1C1AC1F08(&qword_1EBF08D30, qword_1C1B9E9E0);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1C1B9FE60;
    *(v17 + 32) = v4;
    sub_1C1AC5F78(v4, 2u);

    sub_1C1B3CA98(v6, 2u);
    result = sub_1C1AC5FD0(v4, 2u);
    *a2 = v17;
    goto LABEL_49;
  }

  if (*(a1 + 8) <= 4u)
  {
    if (v5 == 2)
    {
      v24 = *v2;
      sub_1C1AC5F78(v4, 2u);
      LOBYTE(v18) = 1;
      sub_1C1B3CA84(v6, 1u);
      sub_1C1AC5F78(v4, 2u);
      v21 = sub_1C1B3CA84(v6, 1u);
      MEMORY[0x1C6906EA0](v21);
      if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_47:
        sub_1C1B94F48();
        sub_1C1B3CA98(v6, 1u);
        result = sub_1C1AC5FD0(v4, 2u);
        *a2 = v24;
        *(a2 + 8) = v18;
        return result;
      }

LABEL_53:
      sub_1C1B94F08();
      goto LABEL_47;
    }

    if (v5 != 3)
    {
      goto LABEL_34;
    }

    v24 = *v2;
    sub_1C1AC5F78(v4, 3u);
    sub_1C1B3CA84(v6, 1u);
    sub_1C1AC5F78(v4, 3u);
    sub_1C1B3CA84(v6, 1u);
    v14 = sub_1C1B3D1A0(&v24, v4);
    sub_1C1AC5FD0(v4, 3u);
    if (v24 >> 62)
    {
      v15 = sub_1C1B953A8();
      if (v15 >= v14)
      {
LABEL_30:
        sub_1C1AF8758(v14, v15);
        v2 = v24;
        if (v24 >> 62)
        {
          v16 = sub_1C1B953A8();
        }

        else
        {
          v16 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        sub_1C1B3CA98(v6, 1u);
        result = sub_1C1AC5FD0(v4, 3u);
        if (v16)
        {
          goto LABEL_45;
        }

        goto LABEL_33;
      }
    }

    else
    {
      v15 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15 >= v14)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
    goto LABEL_56;
  }

  if (v5 == 5)
  {
LABEL_8:
    sub_1C1AC5F78(*a1, v5);
    sub_1C1B3CA84(v6, 1u);
    v8 = v6;
    v9 = 1;
LABEL_24:
    sub_1C1B3CA98(v8, v9);
    result = sub_1C1AC5FD0(v4, v5);
LABEL_25:
    *a2 = 0;
    v13 = 2;
LABEL_50:
    *(a2 + 8) = v13;
    return result;
  }

  if (v5 == 6)
  {
    v24 = *v2;
    sub_1C1AC5F78(v4, 6u);
    sub_1C1B3CA84(v6, 1u);
    sub_1C1AC5F78(v4, 6u);
    sub_1C1B3CA84(v6, 1u);
    v18 = sub_1C1B3CEF8(&v24, v4);
    sub_1C1AC5FD0(v4, 6u);
    if (v24 >> 62)
    {
      v19 = sub_1C1B953A8();
      if (v19 >= v18)
      {
LABEL_42:
        sub_1C1AF8758(v18, v19);
        v2 = v24;
        if (!(v24 >> 62))
        {
          v20 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_44;
        }

LABEL_56:
        v20 = sub_1C1B953A8();
LABEL_44:
        sub_1C1B3CA98(v6, 1u);
        result = sub_1C1AC5FD0(v4, 6u);
        if (v20)
        {
LABEL_45:
          *a2 = v2;
          *(a2 + 8) = 1;
          return result;
        }

LABEL_33:

        goto LABEL_25;
      }
    }

    else
    {
      v19 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v19 >= v18)
      {
        goto LABEL_42;
      }
    }

    __break(1u);
    goto LABEL_53;
  }

  if (v5 == 7 && (v4 | 2) == 2)
  {
    goto LABEL_8;
  }

LABEL_34:
  sub_1C1AC5F78(*a1, v5);
  sub_1C1B3CA84(v6, v7);
  sub_1C1B3CA98(v6, v7);
  sub_1C1AC5FD0(v4, v5);
  *a2 = v6;
  *(a2 + 8) = v7;

  return sub_1C1B3CA84(v6, v7);
}

uint64_t sub_1C1B3CA84(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1C1B3CA98(uint64_t a1, unsigned __int8 a2)
{
  if (a2 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1C1B3CAC8(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_1C1B945F8();
  v5 = *(v4 - 8);
  v6 = v5[8];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19[-v10];
  v12 = *a1;
  v13 = *a2;
  v14 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v15 = v5[2];
  v15(v11, v12 + v14, v4);
  v16 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v15(v9, v13 + v16, v4);
  LOBYTE(v13) = sub_1C1B945C8();
  v17 = v5[1];
  v17(v9, v4);
  v17(v11, v4);
  return v13 & 1;
}

uint64_t _s15PromotedContent011FetchableAdB8SubStateO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      sub_1C1B3CA84(*a2, 0);
      sub_1C1B3CA84(v2, 0);
      v6 = sub_1C1B520B8(v2, v4);
      sub_1C1B3CA98(v2, 0);
      v7 = v4;
      v8 = 0;
      goto LABEL_7;
    }

    goto LABEL_12;
  }

  if (v3 == 1)
  {
    if (v5 == 1)
    {
      sub_1C1B3CA84(*a2, 1u);
      sub_1C1B3CA84(v2, 1u);
      LOBYTE(v6) = sub_1C1B520B8(v2, v4);
      sub_1C1B3CA98(v2, 1u);
      v7 = v4;
      v8 = 1;
LABEL_7:
      sub_1C1B3CA98(v7, v8);
      return v6 & 1;
    }

    goto LABEL_12;
  }

  if (v5 != 2 || v4 != 0)
  {
LABEL_12:
    sub_1C1B3CA84(*a2, *(a2 + 8));
    sub_1C1B3CA84(v2, v3);
    sub_1C1B3CA98(v2, v3);
    sub_1C1B3CA98(v4, v5);
    return 0;
  }

  sub_1C1B3CA98(*a1, 2u);
  sub_1C1B3CA98(0, 2u);
  return 1;
}

unint64_t sub_1C1B3CDA8(unint64_t a1, unint64_t a2)
{
  v12 = a2;
  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_17:
    v4 = sub_1C1B953A8();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (1)
  {
    if (v4 == v5)
    {
      return 0;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1C6907490](v5, a1);
      v6 = v7;
    }

    else
    {
      if (v5 >= *(v3 + 16))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v6 = *(a1 + 8 * v5 + 32);
    }

    v13 = v6;
    MEMORY[0x1EEE9AC00](v7);
    v11[2] = &v13;
    v8 = sub_1C1B3AF64(sub_1C1B3D848, v11, v12);

    if (v8)
    {
      return v5;
    }

    if (__OFADD__(v5++, 1))
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_1C1B3CEF8(unint64_t *a1, unint64_t a2)
{
  v6 = *a1;
  v7 = sub_1C1B3CDA8(*a1, a2);
  if (v3)
  {
    return v2;
  }

  if (v8)
  {
    if (v6 >> 62)
    {
      return sub_1C1B953A8();
    }

    return *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v2 = v7;
  v24 = a1;
  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  while (1)
  {
    if (v6 >> 62)
    {
      if (v10 == sub_1C1B953A8())
      {
        return v2;
      }
    }

    else if (v10 == *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v2;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1C6907490](v10, v6);
      v12 = v13;
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_40;
      }

      if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_41;
      }

      v12 = *(v6 + 8 * v10 + 32);
    }

    v25 = v12;
    MEMORY[0x1EEE9AC00](v13);
    v23[2] = &v25;
    v14 = sub_1C1B3AF64(sub_1C1B3D848, v23, a2);

    if ((v14 & 1) == 0)
    {
      break;
    }

LABEL_10:
    v11 = __OFADD__(v10++, 1);
    if (v11)
    {
      goto LABEL_42;
    }
  }

  if (v2 == v10)
  {
LABEL_9:
    v11 = __OFADD__(v2++, 1);
    if (v11)
    {
      goto LABEL_43;
    }

    goto LABEL_10;
  }

  if ((v6 & 0xC000000000000001) != 0)
  {
    v15 = MEMORY[0x1C6907490](v2, v6);
    v16 = MEMORY[0x1C6907490](v10, v6);
  }

  else
  {
    if ((v2 & 0x8000000000000000) != 0)
    {
      goto LABEL_45;
    }

    v17 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2 >= v17)
    {
      goto LABEL_46;
    }

    if (v10 >= v17)
    {
      goto LABEL_47;
    }

    v15 = *(v6 + 32 + 8 * v2);
    v16 = *(v6 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = sub_1C1B91B54(v6);
    v18 = (v6 >> 62) & 1;
  }

  else
  {
    LODWORD(v18) = 0;
  }

  v19 = v6 & 0xFFFFFFFFFFFFFF8;
  v20 = *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20);
  *((v6 & 0xFFFFFFFFFFFFFF8) + 8 * v2 + 0x20) = v16;

  if ((v6 & 0x8000000000000000) == 0 && !v18)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

    goto LABEL_33;
  }

  v6 = sub_1C1B91B54(v6);
  v19 = v6 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_33:
    if (v10 >= *(v19 + 16))
    {
      goto LABEL_44;
    }

    v21 = v19 + 8 * v10;
    v22 = *(v21 + 32);
    *(v21 + 32) = v15;

    *v24 = v6;
    goto LABEL_9;
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return sub_1C1B953A8();
}

uint64_t sub_1C1B3D1A0(unint64_t *a1, uint64_t a2)
{
  v47 = a2;
  v44 = sub_1C1B945F8();
  v3 = *(v44 - 8);
  v4 = *(v3 + 8);
  v5 = MEMORY[0x1EEE9AC00](v44);
  v46 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v45 = &v35 - v7;
  v37 = a1;
  v8 = *a1;
  v36 = v8 >> 62;
  if (v8 >> 62)
  {
LABEL_67:
    v39 = v8 & 0xFFFFFFFFFFFFFF8;
    v40 = sub_1C1B953A8();
  }

  else
  {
    v39 = v8 & 0xFFFFFFFFFFFFFF8;
    v40 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
  swift_beginAccess();
  v9 = 0;
  v38 = v8 & 0xC000000000000001;
  v41 = (v3 + 8);
  v42 = (v3 + 16);
  v48 = v8;
  while (1)
  {
    if (v40 == v9)
    {
      if (v36)
      {
        return sub_1C1B953A8();
      }

      return *(v39 + 16);
    }

    if (v38)
    {
      v10 = MEMORY[0x1C6907490](v9, v8);
    }

    else
    {
      if (v9 >= *(v39 + 16))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
        goto LABEL_67;
      }

      v10 = *(v8 + 8 * v9 + 32);
    }

    v11 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
    swift_beginAccess();
    v12 = *v42;
    v13 = v44;
    v8 = v45;
    (*v42)(v45, v10 + v11, v44);
    v14 = v46;
    v12(v46, v47 + v43, v13);
    v15 = sub_1C1B945C8();
    v16 = *v41;
    (*v41)(v14, v13);
    v16(v8, v13);

    v3 = (v9 + 1);
    v18 = __OFADD__(v9, 1);
    if (v15)
    {
      break;
    }

    ++v9;
    v8 = v48;
    if (v18)
    {
      goto LABEL_58;
    }
  }

  if (!v18)
  {
    v19 = v48;
    v39 = v16;
    v40 = v12;
    while (1)
    {
      if (v19 >> 62)
      {
        if (v3 == sub_1C1B953A8())
        {
          return v9;
        }
      }

      else if (v3 == *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return v9;
      }

      v21 = v19 & 0xC000000000000001;
      v48 = v19;
      if ((v19 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1C6907490](v3, v19);
      }

      else
      {
        if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        if (v3 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v8 = *(v19 + 8 * v3 + 32);
      }

      v22 = OBJC_IVAR____TtC15PromotedContent16AdContentSession_clientRequestID;
      swift_beginAccess();
      v24 = v44;
      v23 = v45;
      v25 = v40;
      v40(v45, v8 + v22, v44);
      v26 = v46;
      v25(v46, v47 + v43, v24);
      LOBYTE(v22) = sub_1C1B945C8();
      v27 = v39;
      (v39)(v26, v24);
      v27(v23, v24);

      if (v22)
      {
        v19 = v48;
      }

      else if (v9 == v3)
      {
        v19 = v48;
        v20 = __OFADD__(v9++, 1);
        if (v20)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v19 = v48;
        if (v21)
        {
          v28 = MEMORY[0x1C6907490](v9, v48);
          v29 = MEMORY[0x1C6907490](v3, v19);
        }

        else
        {
          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_64;
          }

          v30 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v9 >= v30)
          {
            goto LABEL_65;
          }

          if (v3 >= v30)
          {
            goto LABEL_66;
          }

          v28 = *(v48 + 32 + 8 * v9);
          v29 = *(v48 + 32 + 8 * v3);
        }

        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v19 & 0x8000000000000000) != 0 || (v19 & 0x4000000000000000) != 0)
        {
          v19 = sub_1C1B91B54(v19);
          v8 = (v19 >> 62) & 1;
        }

        else
        {
          v8 = 0;
        }

        v31 = v19 & 0xFFFFFFFFFFFFFF8;
        v32 = *((v19 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20);
        *((v19 & 0xFFFFFFFFFFFFFF8) + 8 * v9 + 0x20) = v29;

        if ((v19 & 0x8000000000000000) != 0 || v8)
        {
          v19 = sub_1C1B91B54(v19);
          v31 = v19 & 0xFFFFFFFFFFFFFF8;
          if ((v3 & 0x8000000000000000) != 0)
          {
LABEL_54:
            __break(1u);
            return sub_1C1B953A8();
          }
        }

        else if ((v3 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        if (v3 >= *(v31 + 16))
        {
          goto LABEL_63;
        }

        v33 = v31 + 8 * v3;
        v34 = *(v33 + 32);
        *(v33 + 32) = v28;

        *v37 = v19;
        v20 = __OFADD__(v9++, 1);
        if (v20)
        {
          goto LABEL_62;
        }
      }

      v20 = __OFADD__(v3++, 1);
      if (v20)
      {
        goto LABEL_61;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C1B3D6FC(uint64_t a1)
{
  result = sub_1C1B3D724();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C1B3D724()
{
  result = qword_1EDE6B800;
  if (!qword_1EDE6B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B800);
  }

  return result;
}

uint64_t sub_1C1B3D778(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1C1B3D794(uint64_t a1, unsigned int a2)
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

uint64_t sub_1C1B3D7DC(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1C1B3D820(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t LoadFailed.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

uint64_t *sub_1C1B3D878@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 1;
  if (*result > 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

Swift::Void __swiftcall DiagnosticMetricsHelping.loadFailed(reason:)(Swift::String reason)
{
  v2 = sub_1C1B94D78();
  [v1 loadFailedWithReason:v2 code:0];
}

unint64_t sub_1C1B3D8E8()
{
  result = qword_1EBF09200;
  if (!qword_1EBF09200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09200);
  }

  return result;
}

id _s15PromotedContent9TapActionC04makecD04withACSo05APTapD0C_tFZ_0(void *a1)
{
  v2 = [a1 actionType];
  if (v2 > 2)
  {
    switch(v2)
    {
      case 3:
        v16 = a1;
        result = sub_1C1AF1608(v16);
        if (!result)
        {
          [v16 confirmedClickInterval];
          v18 = v17;
          v19 = type metadata accessor for TapAction();
          v20 = objc_allocWithZone(v19);
          *&v20[OBJC_IVAR___APPCTapAction_actionType] = 0;
          *&v20[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v18;
          return objc_msgSendSuper2(&v36, sel_init, v33.receiver, v33.super_class, v34.receiver, v34.super_class, v35.receiver, v35.super_class, v20, v19, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class);
        }

        break;
      case 4:
        v28 = a1;
        result = sub_1C1B4098C(v28);
        if (!result)
        {
          [v28 confirmedClickInterval];
          v30 = v29;
          v31 = type metadata accessor for TapAction();
          v32 = objc_allocWithZone(v31);
          *&v32[OBJC_IVAR___APPCTapAction_actionType] = 0;
          *&v32[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v30;
          return objc_msgSendSuper2(&v37, sel_init, v33.receiver, v33.super_class, v34.receiver, v34.super_class, v35.receiver, v35.super_class, v36.receiver, v36.super_class, v32, v31, v38.receiver, v38.super_class, v39.receiver, v39.super_class);
        }

        break;
      case 5:
        v9 = a1;
        result = sub_1C1B5BBB8(v9);
        if (!result)
        {
          [v9 confirmedClickInterval];
          v11 = v10;
          v12 = type metadata accessor for TapAction();
          v13 = objc_allocWithZone(v12);
          *&v13[OBJC_IVAR___APPCTapAction_actionType] = 0;
          *&v13[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v11;
          return objc_msgSendSuper2(&v34, sel_init, v33.receiver, v33.super_class, v13, v12, v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class);
        }

        break;
      default:
        goto LABEL_15;
    }
  }

  else
  {
    if (!v2)
    {
      v14 = type metadata accessor for TapAction();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR___APPCTapAction_actionType] = 0;
      *&v15[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
      return objc_msgSendSuper2(&v38, sel_init, v33.receiver, v33.super_class, v34.receiver, v34.super_class, v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v15, v14, v39.receiver, v39.super_class);
    }

    if (v2 != 1)
    {
      if (v2 == 2)
      {
        v3 = a1;
        result = sub_1C1AC06F0(v3);
        if (!result)
        {
          [v3 confirmedClickInterval];
          v6 = v5;
          v7 = type metadata accessor for TapAction();
          v8 = objc_allocWithZone(v7);
          *&v8[OBJC_IVAR___APPCTapAction_actionType] = 0;
          *&v8[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v6;
          return objc_msgSendSuper2(&v35, sel_init, v33.receiver, v33.super_class, v34.receiver, v34.super_class, v8, v7, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class);
        }

        return result;
      }

LABEL_15:
      v21 = type metadata accessor for TapAction();
      v22 = objc_allocWithZone(v21);
      *&v22[OBJC_IVAR___APPCTapAction_actionType] = 0;
      *&v22[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = 0x3FF0000000000000;
      return objc_msgSendSuper2(&v39, sel_init, v33.receiver, v33.super_class, v34.receiver, v34.super_class, v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v22, v21);
    }

    v23 = a1;
    result = sub_1C1B870D4(v23);
    if (!result)
    {
      [v23 confirmedClickInterval];
      v25 = v24;
      v26 = type metadata accessor for TapAction();
      v27 = objc_allocWithZone(v26);
      *&v27[OBJC_IVAR___APPCTapAction_actionType] = 0;
      *&v27[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v25;
      return objc_msgSendSuper2(&v33, sel_init, v27, v26, v34.receiver, v34.super_class, v35.receiver, v35.super_class, v36.receiver, v36.super_class, v37.receiver, v37.super_class, v38.receiver, v38.super_class, v39.receiver, v39.super_class);
    }
  }

  return result;
}

unint64_t sub_1C1B3DC98()
{
  type metadata accessor for PageTrackingStorage();
  v0 = swift_allocObject();
  sub_1C1AC1F08(&qword_1EBF08860, &qword_1C1B9CD80);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  v2 = MEMORY[0x1E69E7CC0];
  v0[3] = sub_1C1AD44C4(MEMORY[0x1E69E7CC0]);
  result = sub_1C1AD48DC(v2);
  v0[4] = result;
  qword_1EBF09208 = v0;
  return result;
}

void *PageTrackingStorage.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1C1AC1F08(&qword_1EBF08860, &qword_1C1B9CD80);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  v2 = MEMORY[0x1E69E7CC0];
  v0[3] = sub_1C1AD44C4(MEMORY[0x1E69E7CC0]);
  v0[4] = sub_1C1AD48DC(v2);
  return v0;
}

uint64_t static PageTrackingStorage.shared.getter()
{
  if (qword_1EBF076C8 != -1)
  {
    swift_once();
  }
}

void *PageTrackingStorage.init()()
{
  sub_1C1AC1F08(&qword_1EBF08860, &qword_1C1B9CD80);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[2] = v1;
  v2 = MEMORY[0x1E69E7CC0];
  v0[3] = sub_1C1AD44C4(MEMORY[0x1E69E7CC0]);
  v0[4] = sub_1C1AD48DC(v2);
  return v0;
}

void PageTrackingStorage.set(instance:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();

  v8 = v3[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v3[3];
  v3[3] = 0x8000000000000000;
  sub_1C1AE41B4(a1, a2, a3, isUniquelyReferenced_nonNull_native);

  v3[3] = v14;
  swift_endAccess();
  v11 = *(a1 + 16);
  v10 = *(a1 + 24);
  swift_beginAccess();

  v12 = v3[4];
  v13 = swift_isUniquelyReferenced_nonNull_native();
  v15 = v3[4];
  v3[4] = 0x8000000000000000;
  sub_1C1AE3EE0(a2, a3, v11, v10, v13);

  v3[4] = v15;
  swift_endAccess();
  os_unfair_lock_unlock(v7 + 4);
}

uint64_t PageTrackingStorage.get(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = *(v2 + 24);
  if (*(v6 + 16) && (v7 = sub_1C1AA7C14(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + 8 * v7);
  }

  else
  {
    v9 = 0;
  }

  swift_endAccess();
  os_unfair_lock_unlock(v5 + 4);
  return v9;
}

Swift::Void __swiftcall PageTrackingStorage.delete(adInstanceId:)(Swift::String adInstanceId)
{
  object = adInstanceId._object;
  countAndFlagsBits = adInstanceId._countAndFlagsBits;
  v4 = *(v1 + 16);
  os_unfair_lock_lock(v4 + 4);
  swift_beginAccess();
  v5 = sub_1C1AF6428(countAndFlagsBits, object);
  v7 = v6;
  swift_endAccess();
  if (v7)
  {
    swift_beginAccess();
    sub_1C1AF657C(v5, v7);
    swift_endAccess();
  }

  os_unfair_lock_unlock(v4 + 4);
}

void *PageTrackingStorage.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return v0;
}

uint64_t PageTrackingStorage.__deallocating_deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t TapActionType.stringValue.getter(uint64_t a1)
{
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        return 0x6E776F6E6B6E75;
      case 1:
        return 6448503;
      case 2:
        return 0x65685365726F7473;
    }

LABEL_16:
    result = sub_1C1B958C8();
    __break(1u);
    return result;
  }

  if (a1 > 4)
  {
    if (a1 == 5)
    {
      return 0x7261646E656C6163;
    }

    if (a1 == 6)
    {
      return 0x616572747374756FLL;
    }

    goto LABEL_16;
  }

  if (a1 == 3)
  {
    return 0x4C70656544707061;
  }

  else
  {
    return 0x444941524D796E61;
  }
}

unint64_t sub_1C1B3E320@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1C1B3E404(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1C1B3E404(unint64_t result)
{
  if (result > 6)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1C1B3E418()
{
  result = qword_1EDE6C2A0;
  if (!qword_1EDE6C2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6C2A0);
  }

  return result;
}

unint64_t sub_1C1B3E47C()
{
  result = qword_1EDE6B178;
  if (!qword_1EDE6B178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE6B178);
  }

  return result;
}

id ClientLayoutAssetInfo.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1C1B3E5EC()
{
  v1 = *v0;
  v2 = 0x54746E65746E6F63;
  v3 = 0x65746172746962;
  if (v1 != 6)
  {
    v3 = 0x706F6F6C6F747561;
  }

  v4 = 0x6C725579786F7270;
  if (v1 != 4)
  {
    v4 = 0x6874676E656CLL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x746867696568;
  if (v1 != 2)
  {
    v5 = 7107189;
  }

  if (*v0)
  {
    v2 = 0x6874646977;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1C1B3E6D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C1B3F374(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C1B3E700(uint64_t a1)
{
  v2 = sub_1C1B3EB30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C1B3E73C(uint64_t a1)
{
  v2 = sub_1C1B3EB30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id ClientLayoutAssetInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ClientLayoutAssetInfo();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for ClientLayoutAssetInfo()
{
  result = qword_1EDE6BF28;
  if (!qword_1EDE6BF28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1B3E848(void *a1)
{
  v3 = v1;
  v5 = sub_1C1AC1F08(&qword_1EBF092D8, &qword_1C1BA0E98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1C1AAABE0(a1, a1[3]);
  sub_1C1B3EB30();
  sub_1C1B95A18();
  v11 = *(v3 + OBJC_IVAR___APPCClientLayoutAssetInfo_contentType);
  v18[15] = 0;
  sub_1C1B957E8();
  if (!v2)
  {
    v12 = *(v3 + OBJC_IVAR___APPCClientLayoutAssetInfo_width);
    v18[14] = 1;
    sub_1C1B957E8();
    v13 = *(v3 + OBJC_IVAR___APPCClientLayoutAssetInfo_height);
    v18[13] = 2;
    sub_1C1B957E8();
    v18[12] = 3;
    sub_1C1B944A8();
    sub_1C1AEF214(&unk_1EDE6C3B0);
    sub_1C1B95788();
    v18[11] = 4;
    sub_1C1B95788();
    v14 = *(v3 + OBJC_IVAR___APPCClientLayoutAssetInfo_length);
    v18[10] = 5;
    sub_1C1B957D8();
    v15 = *(v3 + OBJC_IVAR___APPCClientLayoutAssetInfo_bitrate);
    v18[9] = 6;
    sub_1C1B957C8();
    v16 = *(v3 + OBJC_IVAR___APPCClientLayoutAssetInfo_autoloop);
    v18[8] = 7;
    sub_1C1B957B8();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1C1B3EB30()
{
  result = qword_1EBF092E0;
  if (!qword_1EBF092E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF092E0);
  }

  return result;
}

void *ClientLayoutAssetInfo.init(from:)(uint64_t *a1)
{
  v3 = sub_1C1AC1F08(&qword_1EBF07AC8, &qword_1C1B9CED0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v27 - v8;
  v28 = sub_1C1AC1F08(&qword_1EBF092E8, &qword_1C1BA0EA0);
  v10 = *(v28 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v13 = &v27 - v12;
  v15 = a1[3];
  v14 = a1[4];
  v30 = a1;
  sub_1C1AAABE0(a1, v15);
  sub_1C1B3EB30();
  sub_1C1B95A08();
  if (v1)
  {
    v26 = v29;
    sub_1C1AA86F8(v30);
    type metadata accessor for ClientLayoutAssetInfo();
    v19 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x30);
    v20 = *((*MEMORY[0x1E69E7D40] & *v26) + 0x34);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v16 = v10;
    v32 = 0;
    v17 = v28;
    v18 = sub_1C1B956D8();
    v22 = v29;
    *(v29 + OBJC_IVAR___APPCClientLayoutAssetInfo_contentType) = v18;
    v32 = 1;
    *&v22[OBJC_IVAR___APPCClientLayoutAssetInfo_width] = sub_1C1B956D8();
    v32 = 2;
    *&v22[OBJC_IVAR___APPCClientLayoutAssetInfo_height] = sub_1C1B956D8();
    sub_1C1B944A8();
    v32 = 3;
    sub_1C1AEF214(&unk_1EDE6C3A0);
    sub_1C1B95678();
    sub_1C1AEF258(v9, &v22[OBJC_IVAR___APPCClientLayoutAssetInfo_url]);
    v32 = 4;
    sub_1C1B95678();
    sub_1C1AEF258(v7, &v22[OBJC_IVAR___APPCClientLayoutAssetInfo_proxyUrl]);
    v32 = 5;
    sub_1C1B956C8();
    *&v22[OBJC_IVAR___APPCClientLayoutAssetInfo_length] = v23;
    v32 = 6;
    sub_1C1B956B8();
    *&v22[OBJC_IVAR___APPCClientLayoutAssetInfo_bitrate] = v24;
    v32 = 7;
    v22[OBJC_IVAR___APPCClientLayoutAssetInfo_autoloop] = sub_1C1B956A8() & 1;
    v25 = type metadata accessor for ClientLayoutAssetInfo();
    v31.receiver = v22;
    v31.super_class = v25;
    v26 = objc_msgSendSuper2(&v31, sel_init);
    (*(v16 + 8))(v13, v17);
    sub_1C1AA86F8(v30);
  }

  return v26;
}

void *sub_1C1B3F090@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for ClientLayoutAssetInfo());
  result = ClientLayoutAssetInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1C1B3F114()
{
  sub_1C1AEF0A4();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1C1B3F270()
{
  result = qword_1EBF092F0;
  if (!qword_1EBF092F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF092F0);
  }

  return result;
}

unint64_t sub_1C1B3F2C8()
{
  result = qword_1EBF092F8;
  if (!qword_1EBF092F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF092F8);
  }

  return result;
}

unint64_t sub_1C1B3F320()
{
  result = qword_1EBF09300;
  if (!qword_1EBF09300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBF09300);
  }

  return result;
}

uint64_t sub_1C1B3F374(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079;
  if (v4 || (sub_1C1B95888() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C725579786F7270 && a2 == 0xE800000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6874676E656CLL && a2 == 0xE600000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65746172746962 && a2 == 0xE700000000000000 || (sub_1C1B95888() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x706F6F6C6F747561 && a2 == 0xE800000000000000)
  {

    return 7;
  }

  else
  {
    v6 = sub_1C1B95888();

    if (v6)
    {
      return 7;
    }

    else
    {
      return 8;
    }
  }
}

uint64_t sub_1C1B3F600(uint64_t a1)
{
  v1 = 7309;
  v2 = 7312;
  v3 = 7313;
  if (a1 != 40)
  {
    v3 = 0;
  }

  if (a1 != 30)
  {
    v2 = v3;
  }

  if (a1 != 20)
  {
    v1 = v2;
  }

  v4 = 7307;
  v5 = 7308;
  if (a1 != 14)
  {
    v5 = 0;
  }

  if (a1 != 13)
  {
    v4 = v5;
  }

  if (a1 <= 19)
  {
    v1 = v4;
  }

  v6 = 7305;
  v7 = 7306;
  if (a1 != 12)
  {
    v7 = 0;
  }

  if (a1 != 11)
  {
    v6 = v7;
  }

  v8 = 7303;
  v9 = 7304;
  if (a1 != 10)
  {
    v9 = 0;
  }

  if (a1 != 5)
  {
    v8 = v9;
  }

  if (a1 <= 10)
  {
    v6 = v8;
  }

  if (a1 <= 12)
  {
    return v6;
  }

  else
  {
    return v1;
  }
}

void sub_1C1B3F6F4()
{
  v0 = sub_1C1B94D78();
  v1 = NSClassFromString(v0);

  if (v1)
  {
    class_addProtocol(v1, &unk_1F4165530);
    v2 = sub_1C1B94D78();
    v3 = NSClassFromString(v2);

    if (v3)
    {
      class_addProtocol(v3, &unk_1F4165530);
      v4 = sub_1C1B94D78();
      v5 = NSClassFromString(v4);

      if (v5)
      {
        class_addProtocol(v5, &unk_1F4165530);
        v6 = sub_1C1B94D78();
        v7 = NSClassFromString(v6);

        if (v7)
        {

          class_addProtocol(v7, &unk_1F4165530);
        }
      }
    }
  }
}

uint64_t sub_1C1B3F888()
{
  v1 = OBJC_IVAR___APPCMetric_purpose;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B3F968()
{
  v1 = OBJC_IVAR___APPCMetric_metric;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1C1B3FB20@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___APPCMetric_timestamp;
  swift_beginAccess();
  v4 = sub_1C1B94588();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1C1B3FCBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___APPCMetric_timestamp;
  swift_beginAccess();
  v5 = sub_1C1B94588();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1C1B3FD48(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1C1B94588();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4);
  v9 = *a2;
  v10 = OBJC_IVAR___APPCMetric_timestamp;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1C1B3FEEC()
{
  v1 = (v0 + OBJC_IVAR___APPCMetric_contentId);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_1C1B3FFC0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR___APPCMetric_contentId);
  swift_beginAccess();
  v5 = v4[1];
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_1C1B400C8()
{
  v1 = OBJC_IVAR___APPCMetric_properties;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_1C1B401A0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___APPCMetric_properties;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
}

id PromotedContentMetric.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PromotedContentMetric.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PromotedContentMetric();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for PromotedContentMetric()
{
  result = qword_1EBF09328;
  if (!qword_1EBF09328)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1B40320@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t sub_1C1B40374(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

uint64_t sub_1C1B4045C()
{
  result = sub_1C1B94588();
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

id sub_1C1B4062C(void *a1)
{
  v35 = sub_1C1B94588();
  v2 = *(v35 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v5 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EBF076D0 != -1)
  {
    swift_once();
  }

  v34 = [a1 purpose];
  v6 = [a1 metric];
  v7 = [a1 timestamp];
  sub_1C1B94558();

  v8 = [a1 contentIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = sub_1C1B94D88();
    v12 = v11;
  }

  else
  {
    v10 = 0;
    v12 = 0;
  }

  v13 = [a1 properties];
  if (v13)
  {
    v14 = v13;
    sub_1C1AC1F08(&qword_1EBF08EE0, &unk_1C1B9BE70);
    v15 = sub_1C1B94CB8();

    v16 = sub_1C1B1AAF4(v15);
  }

  else
  {
    v16 = 0;
  }

  v17 = type metadata accessor for PromotedContentMetric();
  v18 = objc_allocWithZone(v17);
  v19 = &v18[OBJC_IVAR___APPCMetric_contentId];
  *v19 = 0;
  v19[1] = 0;
  v20 = OBJC_IVAR___APPCMetric_properties;
  *&v18[OBJC_IVAR___APPCMetric_properties] = 0;
  v21 = v35;
  *&v18[OBJC_IVAR___APPCMetric_purpose] = v34;
  *&v18[OBJC_IVAR___APPCMetric_metric] = v6;
  (*(v2 + 16))(&v18[OBJC_IVAR___APPCMetric_timestamp], v5, v21);
  swift_beginAccess();
  *v19 = v10;
  v19[1] = v12;
  v38 = v16;
  if (v16)
  {
    v22 = *MEMORY[0x1E6986200];
    v23 = sub_1C1B94D88();
    v25 = v24;
    if (*(v16 + 16))
    {
      v26 = v23;

      sub_1C1AA7C14(v26, v25);
      LOBYTE(v26) = v27;

      if (v26)
      {
        v28 = sub_1C1B94D88();
        sub_1C1AF64D8(v28, v29, v36);

        sub_1C1AF4F4C(v36);
      }
    }

    else
    {
    }
  }

  v30 = v38;
  swift_beginAccess();
  v31 = *&v18[v20];
  *&v18[v20] = v30;

  v37.receiver = v18;
  v37.super_class = v17;
  v32 = objc_msgSendSuper2(&v37, sel_init);
  (*(v2 + 8))(v5, v35);
  return v32;
}

id sub_1C1B4098C(void *a1)
{
  v2 = sub_1C1B944A8();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - v8;
  if ([a1 actionType] == 4)
  {
    v10 = [a1 adamIdentifier];
    if (v10)
    {
      v11 = v10;
      v12 = [a1 iTunesMetadata];
      if (v12)
      {
        v13 = v12;
        v14 = sub_1C1B94CB8();

        [a1 confirmedClickInterval];
        v16 = v15;
        v17 = objc_allocWithZone(type metadata accessor for MobileRichAdInterfaceDefinitionTapAction());
        *&v17[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = v11;
        *&v17[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = v14;
        (*(v3 + 56))(&v17[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url], 1, 1, v2);
        v17[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = 0;
        *&v17[OBJC_IVAR___APPCTapAction_actionType] = 4;
        *&v17[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v16;
        v18 = type metadata accessor for TapAction();
        v19 = objc_msgSendSuper2(&v36, sel_init, v17, v18, v37.receiver, v37.super_class);
        goto LABEL_15;
      }
    }

    v26 = [a1 actionURL];
    if (v26)
    {
      v27 = v26;
      sub_1C1B94488();

      (*(v3 + 16))(v7, v9, v2);
      LOBYTE(v27) = [a1 opensInstalledApp];
      [a1 confirmedClickInterval];
      v29 = v28;
      v30 = objc_allocWithZone(type metadata accessor for MobileRichAdInterfaceDefinitionTapAction());
      v31 = MobileRichAdInterfaceDefinitionTapAction.init(url:opensInstalledApp:confirmedClickInterval:)(v7, v27, v29);

      (*(v3 + 8))(v9, v2);
      return v31;
    }

    [a1 confirmedClickInterval];
    v33 = v32;
    v34 = objc_allocWithZone(type metadata accessor for MobileRichAdInterfaceDefinitionTapAction());
    (*(v3 + 56))(&v34[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_url], 1, 1, v2);
    v34[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_opensInstalledApp] = 0;
    *&v34[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_adamIdentifier] = 0;
    *&v34[OBJC_IVAR____TtC15PromotedContent40MobileRichAdInterfaceDefinitionTapAction_iTunesMetadata] = 0;
    *&v34[OBJC_IVAR___APPCTapAction_actionType] = 4;
    *&v34[OBJC_IVAR___APPCTapAction_confirmedClickInterval] = v33;
    v35 = type metadata accessor for TapAction();
    v19 = objc_msgSendSuper2(&v37, sel_init, v36.receiver, v36.super_class, v34, v35);
LABEL_15:
    v31 = v19;

    return v31;
  }

  if (qword_1EDE6C4E0 != -1)
  {
    swift_once();
  }

  v20 = sub_1C1B94BE8();
  sub_1C1AB4454(v20, qword_1EDE6D058);
  v21 = a1;
  v22 = sub_1C1B94BC8();
  v23 = sub_1C1B95128();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 134217984;
    *(v24 + 4) = [v21 actionType];

    _os_log_impl(&dword_1C1AA2000, v22, v23, "Attempting to initialize a MobileRichAdInterfaceDefinitionTapAction with an invalid tap action type %ld.", v24, 0xCu);
    MEMORY[0x1C6908230](v24, -1, -1);
  }

  else
  {
  }

  return 0;
}