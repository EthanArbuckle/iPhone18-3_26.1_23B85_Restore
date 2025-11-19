BOOL sub_1DAA70BE0(void *a1, void *a2)
{
  v4 = type metadata accessor for RawAttributionSourceLogo(0);
  v58 = *(v4 - 8);
  v59 = v4;
  v5 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA52FAC(0, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v51 - v10;
  sub_1DAA712D8(0, &qword_1EE124690, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  v57 = v11;
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  v15 = sub_1DACB7AB4();
  v60 = *(v15 - 8);
  v16 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1E6968FB0];
  sub_1DAA52FAC(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v51 - v21;
  sub_1DAA712D8(0, &qword_1EE1252A0, &qword_1EE1263D0, v18);
  v24 = v23;
  v25 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v51 - v26;
  v28 = a1;
  if ((*a1 != *a2 || a1[1] != a2[1]) && (sub_1DACBA174() & 1) == 0)
  {
    return 0;
  }

  v52 = v7;
  v54 = v14;
  v53 = type metadata accessor for RawAttributionSource(0);
  v29 = *(v53 + 20);
  v30 = *(v24 + 48);
  v31 = MEMORY[0x1E6968FB0];
  sub_1DAA70878(a1 + v29, v27, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
  sub_1DAA70878(a2 + v29, &v27[v30], &qword_1EE1263D0, v31);
  v32 = v60;
  v33 = *(v60 + 48);
  if (v33(v27, 1, v15) != 1)
  {
    sub_1DAA70878(v27, v22, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
    if (v33(&v27[v30], 1, v15) != 1)
    {
      v38 = v56;
      (*(v32 + 32))(v56, &v27[v30], v15);
      sub_1DAB4B0C0(&qword_1EE1252B0, MEMORY[0x1E6968FB0]);
      v39 = sub_1DACB9264();
      v40 = *(v32 + 8);
      v40(v38, v15);
      v40(v22, v15);
      sub_1DAA92844(v27, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
      if ((v39 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v32 + 8))(v22, v15);
LABEL_9:
    v34 = &qword_1EE1252A0;
    v35 = &qword_1EE1263D0;
    v36 = MEMORY[0x1E6968FB0];
    v37 = v27;
LABEL_17:
    sub_1DAB4C530(v37, v34, v35, v36);
    return 0;
  }

  if (v33(&v27[v30], 1, v15) != 1)
  {
    goto LABEL_9;
  }

  sub_1DAA92844(v27, &qword_1EE1263D0, MEMORY[0x1E6968FB0]);
LABEL_11:
  v41 = v54;
  v42 = *(v53 + 24);
  v43 = *(v57 + 48);
  sub_1DAA70878(v28 + v42, v54, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  sub_1DAA70878(a2 + v42, v41 + v43, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  v44 = v59;
  v45 = *(v58 + 48);
  if (v45(v41, 1, v59) == 1)
  {
    if (v45(v41 + v43, 1, v44) == 1)
    {
      sub_1DAA92844(v41, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
      return 1;
    }

    goto LABEL_16;
  }

  v46 = v55;
  sub_1DAA70878(v41, v55, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  if (v45(v41 + v43, 1, v44) == 1)
  {
    sub_1DAA7133C(v46, type metadata accessor for RawAttributionSourceLogo);
LABEL_16:
    v34 = &qword_1EE124690;
    v35 = &qword_1EE124698;
    v36 = type metadata accessor for RawAttributionSourceLogo;
    v37 = v41;
    goto LABEL_17;
  }

  v48 = v41 + v43;
  v49 = v52;
  sub_1DAA6E94C(v48, v52, type metadata accessor for RawAttributionSourceLogo);
  v50 = sub_1DAA91AB0(v46, v49);
  sub_1DAA7133C(v49, type metadata accessor for RawAttributionSourceLogo);
  sub_1DAA7133C(v46, type metadata accessor for RawAttributionSourceLogo);
  sub_1DAA92844(v41, &qword_1EE124698, type metadata accessor for RawAttributionSourceLogo);
  return v50;
}

void sub_1DAA712D8(uint64_t a1, unint64_t *a2, unint64_t *a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1DAA52FAC(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1DAA7133C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA7139C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1DAA714D4(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1DAA492B4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1DACB92F4();
  v14 = [a1 decodeObjectForKey_];

  if (v14)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  if (!*(&v27 + 1))
  {

    sub_1DAA89D90(&v28, sub_1DAADFABC);
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_8;
  }

  v15 = swift_dynamicCast();
  (*(v9 + 56))(v7, v15 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {

LABEL_8:
    sub_1DAA89D90(v7, sub_1DAA492B4);
    v16 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x30);
    v17 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }

  (*(v9 + 32))(v12, v7, v8);
  (*(v9 + 16))(v1 + OBJC_IVAR___SCUpdateUserStartDateCommand_startDate, v12, v8);
  v19 = sub_1DACB92F4();
  v20 = [a1 decodeObjectForKey_];

  if (v20)
  {
    sub_1DACB9B74();
    swift_unknownObjectRelease();
  }

  else
  {
    v26 = 0u;
    v27 = 0u;
  }

  v28 = v26;
  v29 = v27;
  if (*(&v27 + 1))
  {
    if (swift_dynamicCast())
    {
      v21 = sub_1DACB9F04();

      if (v21 == 2)
      {
        v22 = 2;
      }

      else
      {
        v22 = v21 == 1;
      }

      goto LABEL_19;
    }
  }

  else
  {
    sub_1DAA89D90(&v28, sub_1DAADFABC);
  }

  v22 = 0;
LABEL_19:
  (*(v9 + 8))(v12, v8);
  *(v1 + OBJC_IVAR___SCUpdateUserStartDateCommand_mergePolicy) = v22;
  v25.receiver = v1;
  v25.super_class = ObjectType;
  v23 = objc_msgSendSuper2(&v25, sel_init);

  return v23;
}

uint64_t sub_1DAA71C04()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v14[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8034();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE125750 != -1)
  {
    swift_once();
  }

  (*(v6 + 16))(v9, qword_1EE125758 + OBJC_IVAR____TtC10StocksCore8AppGroup_settingsDomain, v5);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v14[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v11 = *(v10 + 48);
  v12 = *(v10 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D678 = result;
  return result;
}

uint64_t sub_1DAA71EE0()
{
  if (*(v0 + 40) == 1)
  {
    *(v0 + 40) = 0;
  }

  else
  {
    sub_1DACB82E4();
    sub_1DACB71F4();
    sub_1DACB82D4();
  }

  return result;
}

uint64_t sub_1DAA71F74()
{
  v1 = *v0;
  sub_1DACB8BB4();
  v2 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  v3 = sub_1DACB8A74();

  return v3;
}

uint64_t sub_1DAA720E0(uint64_t result)
{
  if (*(result + 24))
  {
    v1 = *(result + 24);
    sub_1DACB71F4();
    sub_1DACB88F4();

    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAA7214C@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DAA722EC(0);
    v2 = sub_1DACB89D4();
    v3 = sub_1DACB8A64();
  }

  else
  {
    v5 = sub_1DACB8214();
    sub_1DAA59D78(&qword_1ECBE7058, MEMORY[0x1E69D64B0]);
    swift_allocError();
    (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E69D64A0], v5);
    sub_1DAA5A8BC(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    v8 = *(v7 + 48);
    v9 = *(v7 + 52);
    swift_allocObject();
    result = sub_1DACB8AD4();
    v3 = result;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1DAA722EC(char a1)
{
  v2 = v1;
  v4 = *v2;
  sub_1DACB8BB4();
  *(swift_allocObject() + 16) = a1;
  v5 = sub_1DACB89D4();
  sub_1DACB8A74();

  v6 = sub_1DACB89D4();
  sub_1DAA72DB0();
  sub_1DACB8A74();

  v7 = sub_1DACB89D4();
  sub_1DAA5A8BC(0, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
  sub_1DACB8A74();

  v8 = sub_1DACB89D4();
  v9 = sub_1DACB8AA4();

  return v9;
}

uint64_t sub_1DAA724F0(void *a1)
{
  v1 = a1[12];
  v2 = a1[13];
  __swift_project_boxed_opaque_existential_1(a1 + 9, v1);
  (*(v2 + 176))(v1, v2);
  v3 = sub_1DACB89D4();
  sub_1DACB8A54();

  sub_1DACB71F4();
  v4 = sub_1DACB89D4();
  v5 = sub_1DACB8A54();

  return v5;
}

uint64_t sub_1DAA7260C()
{
  v0 = MEMORY[0x1E69E6158];
  sub_1DAA59E24(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DACC1D20;
  *(v1 + 32) = sub_1DACB9324();
  *(v1 + 40) = v2;
  sub_1DAA726DC(0, &qword_1EE11FE28, &qword_1EE123EA0, v0, MEMORY[0x1E69D6B18]);
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

void sub_1DAA726DC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1DAA59E24(255, a3, a4, MEMORY[0x1E69E62F8]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1DAA7279C(uint64_t a1)
{
  if (*(*a1 + 16))
  {
    if (qword_1EE121840 != -1)
    {
      swift_once();
    }
  }

  else if (qword_1EE121840 != -1)
  {
    swift_once();
  }

  sub_1DACB9914();
  sub_1DACB8C64();
  sub_1DAA5A8BC(0, &unk_1EE11FE08, MEMORY[0x1E69E6370], MEMORY[0x1E69D6B18]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAA728E0()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DACB9324();
  }

  sub_1DAA41DCC();
  result = sub_1DACB9AE4();
  qword_1EE13E318 = result;
  return result;
}

uint64_t sub_1DAA729B8(_BYTE *a1, void *a2)
{
  v4 = sub_1DACB7E44();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = sub_1DACB92E4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - v12;
  if (*a1 == 1)
  {
    v14 = a2[12];
    v15 = a2[13];
    v26 = __swift_project_boxed_opaque_existential_1(a2 + 9, v14);
    sub_1DACB9284();
    (*(v7 + 16))(v11, v13, v6);
    if (qword_1EE123DD8 != -1)
    {
      swift_once();
    }

    v16 = qword_1EE13E470;
    sub_1DACB7DF4();
    v17 = sub_1DACB9384();
    v19 = v18;
    (*(v7 + 8))(v13, v6);
    (*(v15 + 72))(v17, v19, v14, v15);

    sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
    v20 = sub_1DACB9954();
    sub_1DACB71F4();
    v21 = sub_1DACB8A54();

    return v21;
  }

  else
  {
    sub_1DAA5A8BC(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    v24 = *(v23 + 48);
    v25 = *(v23 + 52);
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}

uint64_t sub_1DAA72D08(uint64_t a1, void *a2, char a3)
{
  if (a3)
  {
    v3 = a2[12];
    v4 = a2[13];
    __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
    return (*(v4 + 136))(v3, v4);
  }

  else
  {
    sub_1DAA5A8BC(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    return sub_1DACB8AE4();
  }
}

void sub_1DAA72DB0()
{
  if (!qword_1EE11FA90)
  {
    v0 = MEMORY[0x1E69E62F8];
    sub_1DAA5A8BC(255, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
    sub_1DAA5A8BC(255, &qword_1EE123EA0, MEMORY[0x1E69E6158], v0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FA90);
    }
  }
}

uint64_t sub_1DAA72E64(uint64_t a1, void *a2)
{
  v3 = a2[12];
  v4 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v3);
  (*(v4 + 120))(v3, v4);
  v5 = a2[12];
  v6 = a2[13];
  __swift_project_boxed_opaque_existential_1(a2 + 9, v5);
  (*(v6 + 176))(v5, v6);
  v7 = sub_1DACB8B94();

  return v7;
}

uint64_t sub_1DAA72F6C()
{
  v1 = *v0;
  v2 = MEMORY[0x1E69E62F8];
  sub_1DAA59E24(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  sub_1DACB8BB4();
  v3 = sub_1DACB89D4();
  sub_1DAA59F54();
  sub_1DACB8B54();

  v4 = sub_1DACB89D4();
  sub_1DAA59E24(0, &qword_1EE11FA98, &type metadata for Watchlist, v2);
  v5 = sub_1DACB8A64();

  return v5;
}

uint64_t sub_1DAA73094()
{
  sub_1DAA726DC(0, &unk_1EE11FE48, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAA73144(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1DACB8FB4();
  v24 = *(v8 - 8);
  v9 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DACB9004();
  v12 = *(v23 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  v17 = *(a5 + 32);
  v18 = swift_allocObject();
  v18[2] = sub_1DAA7394C;
  v18[3] = v16;
  v18[4] = a5;
  aBlock[4] = sub_1DAA73880;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_18;
  v19 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v25 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v20 = MEMORY[0x1E69E7F60];
  sub_1DAA57198(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60]);
  sub_1DAA573D4(&qword_1EE123EB0, &qword_1EE123EC0, v20);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v15, v11, v19);
  _Block_release(v19);
  (*(v24 + 8))(v11, v8);
  (*(v12 + 8))(v15, v23);
}

void sub_1DAA73450()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAA726DC(0, &qword_1ECBE7110, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E8300]);
  }
}

uint64_t sub_1DAA734B8()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA738A0(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a3 + 16));
  v5 = *(a3 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((a3 + 16));
  a1(v5);
}

uint64_t sub_1DAA73914(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1DAA73988@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1DAA59E24(0, &qword_1EE11F4E0, &type metadata for Watchlist, MEMORY[0x1E69E6F90]);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1DACC1D20;
  v5 = sub_1DACB9324();
  *(v4 + 32) = 0x6F626D795320794DLL;
  *(v4 + 40) = 0xEA0000000000736CLL;
  *(v4 + 48) = v3;
  *(v4 + 56) = v5;
  *(v4 + 64) = v6;
  *(v4 + 72) = 160;
  *a2 = v4;
  return sub_1DACB71E4();
}

void sub_1DAA73A4C(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v5 = a1[1];
  os_unfair_lock_lock((a2 + 48));
  sub_1DAA73EA4((a2 + 56), v4, v5);
  if (!v2)
  {
    os_unfair_lock_unlock((a2 + 48));
    v6 = *(a2 + 32);
    v7 = sub_1DACB92F4();
    v8 = [v6 stringForKey_];

    if (!v8)
    {
      if (qword_1EE121840 == -1)
      {
        goto LABEL_14;
      }

      goto LABEL_16;
    }

    v9 = sub_1DACB9324();
    v11 = v10;

    os_unfair_lock_lock((a2 + 48));
    v12 = *(a2 + 64);
    if (*(v12 + 16))
    {
      v13 = sub_1DAA4BF3C(v9, v11);
      v15 = v14;

      if (v15)
      {
        v16 = *(v12 + 56) + 48 * v13;
        v18 = *v16;
        v17 = *(v16 + 8);
        v20 = *(v16 + 16);
        v19 = *(v16 + 24);
        v21 = *(v16 + 32);
        v22 = *(v16 + 40);
        v23 = *(v16 + 41);
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        os_unfair_lock_unlock((a2 + 48));
        if (v17)
        {
          v24 = *(a2 + 16);
          sub_1DACB8F24();
          v25 = v18;
          if (qword_1EE121840 != -1)
          {
            swift_once();
          }

          sub_1DAA41D64();
          v26 = swift_allocObject();
          *(v26 + 16) = xmmword_1DACC1D20;
          sub_1DACB9DD4();
          sub_1DAA75E60(v25, v17);
          *(v26 + 56) = MEMORY[0x1E69E6158];
          *(v26 + 64) = sub_1DAA443C8();
          *(v26 + 32) = 0;
          *(v26 + 40) = 0xE000000000000000;
          sub_1DACB9914();
          sub_1DACB8C64();

          goto LABEL_15;
        }

LABEL_13:
        if (qword_1EE121840 == -1)
        {
LABEL_14:
          sub_1DACB9914();
          sub_1DACB8C64();
          sub_1DAC9DC6C(a2);
LABEL_15:
          sub_1DAA75EB0();
          os_unfair_lock_lock((a2 + 48));
          v27 = *(a2 + 56);
          v28 = sub_1DACB71E4();
          sub_1DAA6BD48(v28, a2 + 56);

          os_unfair_lock_unlock((a2 + 48));
          sub_1DAA763B0(0, &unk_1EE11FE30, &qword_1EE11FA98, &type metadata for Watchlist, MEMORY[0x1E69E62F8]);
          v30 = *(v29 + 48);
          v31 = *(v29 + 52);
          swift_allocObject();
          sub_1DACB8AE4();
          return;
        }

LABEL_16:
        swift_once();
        goto LABEL_14;
      }
    }

    else
    {
    }

    os_unfair_lock_unlock((a2 + 48));
    goto LABEL_13;
  }

  os_unfair_lock_unlock((a2 + 48));
  __break(1u);
}

uint64_t sub_1DAA73EA4(char **a1, uint64_t a2, uint64_t a3)
{
  v140 = a3;
  v141 = a1;
  v4 = sub_1DACB7E44();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v146 = &v139 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v139 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v15 = &v139 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v143 = (v13 + 8);
    v144 = (v13 + 16);
    v17 = (a2 + 73);
    v18 = MEMORY[0x1E69E7CC8];
    v147 = &v139 - v14;
    v148 = @"watchlist";
    v145 = v12;
    v142 = v11;
    while (1)
    {
      v149 = *(v17 - 41);
      v150 = v16;
      v24 = *(v17 - 33);
      v25 = *(v17 - 25);
      v26 = *(v17 - 17);
      v27 = *(v17 - 9);
      LODWORD(v151) = *(v17 - 1);
      LODWORD(v152) = *v17;
      v29 = v26 == sub_1DACB9324() && v27 == v28;
      v153 = v24;
      v154 = v25;
      v155 = v26;
      if (v29)
      {
        swift_bridgeObjectRetain_n();
        sub_1DACB71E4();
        sub_1DACB71E4();

LABEL_16:
        sub_1DACB9284();
        v42 = v145;
        (*v144)(v11, v15, v145);
        if (qword_1EE123DD8 != -1)
        {
          swift_once();
        }

        v43 = qword_1EE13E470;
        sub_1DACB7DF4();
        v44 = sub_1DACB9384();
        v46 = v45;
        (*v143)(v15, v42);
        sub_1DACB71E4();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v156 = v18;
        v49 = sub_1DAA4BF3C(v155, v27);
        v50 = *(v18 + 2);
        v51 = (v48 & 1) == 0;
        v52 = v50 + v51;
        if (__OFADD__(v50, v51))
        {
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v53 = v48;
        if (*(v18 + 3) >= v52)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v48 & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          else
          {
            sub_1DAB658E0();
            if ((v53 & 1) == 0)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          sub_1DAA74978(v52, isUniquelyReferenced_nonNull_native);
          v54 = sub_1DAA4BF3C(v155, v27);
          if ((v53 & 1) != (v55 & 1))
          {
LABEL_77:
            result = sub_1DACBA1F4();
            __break(1u);
            return result;
          }

          v49 = v54;
          if ((v53 & 1) == 0)
          {
LABEL_25:
            v18 = v156;
            *&v156[8 * (v49 >> 6) + 64] |= 1 << v49;
            v56 = (*(v18 + 6) + 16 * v49);
            v58 = v154;
            v57 = v155;
            *v56 = v155;
            v56[1] = v27;
            v59 = *(v18 + 7) + 48 * v49;
            *v59 = v44;
            *(v59 + 8) = v46;
            *(v59 + 16) = v58;
            *(v59 + 24) = v57;
            *(v59 + 32) = v27;
            *(v59 + 40) = v151;
            *(v59 + 41) = v152;

            v60 = *(v18 + 2);
            v38 = __OFADD__(v60, 1);
            v61 = v60 + 1;
            if (v38)
            {
              goto LABEL_71;
            }

            *(v18 + 2) = v61;
            goto LABEL_4;
          }
        }

        v18 = v156;
        v19 = *(v156 + 7) + 48 * v49;
        v20 = *(v19 + 8);
        v21 = *(v19 + 16);
        v22 = *(v19 + 32);
        *v19 = v44;
        *(v19 + 8) = v46;
        v23 = v155;
        *(v19 + 16) = v154;
        *(v19 + 24) = v23;
        *(v19 + 32) = v27;
        *(v19 + 40) = v151;
        *(v19 + 41) = v152;

LABEL_4:
        v11 = v142;
        goto LABEL_5;
      }

      v30 = sub_1DACBA174();
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();

      if (v30)
      {
        goto LABEL_16;
      }

      sub_1DACB71E4();
      v31 = v154;
      sub_1DACB71E4();
      sub_1DACB71E4();
      v32 = swift_isUniquelyReferenced_nonNull_native();
      v156 = v18;
      v33 = v155;
      v34 = sub_1DAA4BF3C(v155, v27);
      v36 = *(v18 + 2);
      v37 = (v35 & 1) == 0;
      v38 = __OFADD__(v36, v37);
      v39 = v36 + v37;
      if (v38)
      {
        goto LABEL_73;
      }

      v40 = v35;
      if (*(v18 + 3) >= v39)
      {
        if ((v32 & 1) == 0)
        {
          v70 = v34;
          sub_1DAB658E0();
          v34 = v70;
          if (v40)
          {
LABEL_29:
            v62 = v34;

            v18 = v156;
            v63 = *(v156 + 7) + 48 * v62;
            v64 = *(v63 + 8);
            v65 = *(v63 + 16);
            v66 = *(v63 + 32);
            v67 = v33;
            v68 = v31;
            v69 = v153;
            *v63 = v149;
            *(v63 + 8) = v69;
            *(v63 + 16) = v68;
            *(v63 + 24) = v67;
            *(v63 + 32) = v27;
            *(v63 + 40) = v151;
            *(v63 + 41) = v152;

            goto LABEL_5;
          }

          goto LABEL_33;
        }
      }

      else
      {
        sub_1DAA74978(v39, v32);
        v34 = sub_1DAA4BF3C(v33, v27);
        if ((v40 & 1) != (v41 & 1))
        {
          goto LABEL_77;
        }
      }

      if (v40)
      {
        goto LABEL_29;
      }

LABEL_33:
      v18 = v156;
      *&v156[8 * (v34 >> 6) + 64] |= 1 << v34;
      v71 = (*(v18 + 6) + 16 * v34);
      *v71 = v33;
      v71[1] = v27;
      v72 = *(v18 + 7) + 48 * v34;
      v73 = v153;
      *v72 = v149;
      *(v72 + 8) = v73;
      *(v72 + 16) = v31;
      *(v72 + 24) = v33;
      *(v72 + 32) = v27;
      *(v72 + 40) = v151;
      *(v72 + 41) = v152;

      v74 = *(v18 + 2);
      v38 = __OFADD__(v74, 1);
      v75 = v74 + 1;
      if (v38)
      {
        goto LABEL_75;
      }

      *(v18 + 2) = v75;
LABEL_5:
      v15 = v147;
      v17 += 6;
      v16 = v150 - 1;
      if (v150 == 1)
      {
        goto LABEL_36;
      }
    }
  }

  v18 = MEMORY[0x1E69E7CC8];
LABEL_36:
  v76 = v140;
  v77 = *(v140 + 16);
  if (v77)
  {
    v78 = (v140 + 40);
    v79 = *(v140 + 16);
    v149 = v79;
    do
    {
      if (*(v18 + 2))
      {
        v81 = *(v78 - 1);
        v80 = *v78;
        sub_1DACB71E4();
        v82 = sub_1DAA4BF3C(v81, v80);
        if (v83)
        {
          v84 = *(v18 + 7) + 48 * v82;
          v17 = *(v84 + 8);
          v150 = *v84;
          v85 = *(v84 + 16);
          v152 = *(v84 + 24);
          v86 = *(v84 + 32);
          LODWORD(v154) = *(v84 + 40);
          LODWORD(v155) = *(v84 + 41);
          sub_1DACB71E4();
          v151 = v85;
          sub_1DACB71E4();
          v153 = v86;
          sub_1DACB71E4();
          v87 = v141;
          v88 = v141[1];
          v89 = swift_isUniquelyReferenced_nonNull_native();
          v90 = v87[1];
          v156 = v90;
          v91 = sub_1DAA4BF3C(v81, v80);
          v93 = *(v90 + 2);
          v94 = (v92 & 1) == 0;
          v38 = __OFADD__(v93, v94);
          v95 = v93 + v94;
          if (v38)
          {
            goto LABEL_72;
          }

          v96 = v92;
          if (*(v90 + 3) >= v95)
          {
            if (v89)
            {
              goto LABEL_47;
            }

            v107 = v91;
            sub_1DAB658E0();
            v91 = v107;
            if ((v96 & 1) == 0)
            {
              goto LABEL_50;
            }

LABEL_48:
            v98 = v91;

            v99 = v156;
            v100 = *(v156 + 7) + 48 * v98;
            v101 = *(v100 + 8);
            v102 = *(v100 + 16);
            v103 = *(v100 + 32);
            v104 = v151;
            *v100 = v150;
            *(v100 + 8) = v17;
            v106 = v152;
            v105 = v153;
            *(v100 + 16) = v104;
            *(v100 + 24) = v106;
            *(v100 + 32) = v105;
            *(v100 + 40) = v154;
            *(v100 + 41) = v155;
          }

          else
          {
            sub_1DAA74978(v95, v89);
            v91 = sub_1DAA4BF3C(v81, v80);
            if ((v96 & 1) != (v97 & 1))
            {
              goto LABEL_77;
            }

LABEL_47:
            if (v96)
            {
              goto LABEL_48;
            }

LABEL_50:
            v99 = v156;
            *&v156[8 * (v91 >> 6) + 64] |= 1 << v91;
            v108 = (*(v99 + 6) + 16 * v91);
            *v108 = v81;
            v108[1] = v80;
            v109 = *(v99 + 7) + 48 * v91;
            v110 = v151;
            *v109 = v150;
            *(v109 + 8) = v17;
            v112 = v152;
            v111 = v153;
            *(v109 + 16) = v110;
            *(v109 + 24) = v112;
            *(v109 + 32) = v111;
            *(v109 + 40) = v154;
            *(v109 + 41) = v155;
            v113 = *(v99 + 2);
            v38 = __OFADD__(v113, 1);
            v114 = v113 + 1;
            if (v38)
            {
              goto LABEL_74;
            }

            *(v99 + 2) = v114;
          }

          v76 = v140;
          v141[1] = v99;
          v77 = v149;
          goto LABEL_39;
        }
      }

LABEL_39:
      v78 += 2;
      --v79;
    }

    while (v79);
  }

  v156 = v76;
  v115 = sub_1DACB9324();
  v117 = v116;
  if (v77)
  {
    v118 = v115;
    v119 = 0;
    v120 = (v76 + 40);
    while (1)
    {
      v121 = *(v120 - 1) == v118 && *v120 == v117;
      if (v121 || (sub_1DACBA174() & 1) != 0)
      {
        break;
      }

      ++v119;
      v120 += 2;
      if (v77 == v119)
      {
        goto LABEL_61;
      }
    }

    sub_1DACB71E4();

    v122 = v76;
    v17 = v141;
    if (!v119)
    {
      goto LABEL_68;
    }

    sub_1DAC962D4(v119);

    v123 = sub_1DACB9324();
    v125 = v124;
    v122 = v156;
    v126 = *(v156 + 2);
    v127 = swift_isUniquelyReferenced_nonNull_native();
    if (!v127 || v126 >= *(v122 + 3) >> 1)
    {
      v122 = sub_1DAA9A3B0(v127, v126 + 1, 1, v122);
      v156 = v122;
    }

    sub_1DACA69B8(0, 0, 1, v123, v125);
  }

  else
  {
LABEL_61:
    sub_1DACB71E4();
    v122 = v76;
    v17 = v141;
  }

LABEL_68:
  v128 = *v17;

  *v17 = v122;
  if (qword_1EE121840 != -1)
  {
LABEL_76:
    swift_once();
  }

  sub_1DAA41D64();
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_1DACC1D40;
  v130 = v17[1];
  v131 = MEMORY[0x1E69E6158];
  v132 = sub_1DACB9134();
  v134 = v133;
  *(v129 + 56) = v131;
  v135 = sub_1DAA443C8();
  *(v129 + 64) = v135;
  *(v129 + 32) = v132;
  *(v129 + 40) = v134;
  v136 = MEMORY[0x1E1277130](v140, v131);
  *(v129 + 96) = v131;
  *(v129 + 104) = v135;
  *(v129 + 72) = v136;
  *(v129 + 80) = v137;
  sub_1DACB9914();
  sub_1DACB8C64();
}

uint64_t sub_1DAA74978(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAA74DF8();
  v40 = a2;
  result = sub_1DACB9E84();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v2;
    v39 = v5;
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
      v19 = __clz(__rbit64(v13));
      v43 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = v23[1];
      v25 = *(v5 + 56) + 48 * v22;
      v26 = *(v25 + 8);
      v45 = *v25;
      v46 = *v23;
      v27 = *(v25 + 16);
      v44 = *(v25 + 24);
      v28 = *(v25 + 32);
      v41 = *(v25 + 41);
      v42 = *(v25 + 40);
      if ((v40 & 1) == 0)
      {
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
        sub_1DACB71E4();
      }

      v29 = *(v8 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v46;
      v17[1] = v24;
      v18 = *(v8 + 56) + 48 * v16;
      *v18 = v45;
      *(v18 + 8) = v26;
      *(v18 + 16) = v27;
      *(v18 + 24) = v44;
      *(v18 + 32) = v28;
      *(v18 + 40) = v42;
      *(v18 + 41) = v41;
      ++*(v8 + 16);
      v5 = v39;
      v13 = v43;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAA74DC0()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

void sub_1DAA74DF8()
{
  if (!qword_1EE11F6D0)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F6D0);
    }
  }
}

void sub_1DAA74E58(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  sub_1DACB71F4();
  v5 = a2;
  v4();
}

uint64_t sub_1DAA74EC8(void *a1, uint64_t a2)
{
  v4 = [a1 encryptedValues];
  v5 = sub_1DACB92F4();
  v6 = [v4 objectForKeyedSubscript_];

  swift_unknownObjectRelease();
  if (sub_1DAA74FF8(a2, v6))
  {
    v7 = [a1 encryptedValues];
    v8 = sub_1DACB7C04();
    v9 = sub_1DACB92F4();
    [v7 setObject:v8 forKeyedSubscript:v9];
    swift_unknownObjectRelease();
  }

  return swift_unknownObjectRelease();
}

uint64_t sub_1DAA74FF8(uint64_t a1, uint64_t a2)
{
  sub_1DAA492B4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7CC4();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + OBJC_IVAR___SCUpdateUserStartDateCommand_mergePolicy))
  {
    v14 = a2 == 0;
    return v14 & 1;
  }

  if (*(a1 + OBJC_IVAR___SCUpdateUserStartDateCommand_mergePolicy) == 1)
  {
LABEL_9:
    v14 = 1;
    return v14 & 1;
  }

  if (!a2)
  {
    (*(v9 + 56))(v7, 1, 1, v8);
    goto LABEL_8;
  }

  v16[1] = a2;
  sub_1DABBCEBC();
  swift_unknownObjectRetain();
  v13 = swift_dynamicCast();
  (*(v9 + 56))(v7, v13 ^ 1u, 1, v8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
LABEL_8:
    sub_1DAA89D90(v7, sub_1DAA492B4);
    goto LABEL_9;
  }

  (*(v9 + 32))(v12, v7, v8);
  v14 = sub_1DACB7C24();
  (*(v9 + 8))(v12, v8);
  return v14 & 1;
}

void sub_1DAA752CC(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v67 = *v3;
  v7 = sub_1DACB92F4();
  v64 = a2;
  v8 = [a2 recordWithName_];

  if (v8 && (v9 = [v8 encryptedValues], v8, v10 = sub_1DACB92F4(), v8 = objc_msgSend(v9, sel_objectForKeyedSubscript_, v10), swift_unknownObjectRelease(), v10, v8))
  {
    v72 = v8;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v8 = v68;
    }

    else
    {
      v8 = 0;
    }

    if (v11)
    {
      v12 = v69;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_1DACB92F4();
  v14 = [a3 recordWithName_];

  if (!v14)
  {
    goto LABEL_17;
  }

  v15 = [v14 encryptedValues];

  v16 = sub_1DACB92F4();
  v17 = [v15 objectForKeyedSubscript_];
  swift_unknownObjectRelease();

  if (!v17)
  {
    goto LABEL_17;
  }

  v72 = v17;
  sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
  if (swift_dynamicCast())
  {
    v18 = v69;
    if (v12)
    {
      if (v68 == v8 && v12 == v69)
      {

LABEL_18:

        goto LABEL_19;
      }

      v47 = sub_1DACBA174();

      if (v47)
      {
        goto LABEL_18;
      }
    }

    swift_beginAccess();
    v48 = *(v4 + 24);
    if (v48 >> 62)
    {
      if (v48 < 0)
      {
        v61 = *(v4 + 24);
      }

      v49 = sub_1DACB9E14();
      if (!v49)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v49 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v49)
      {
        goto LABEL_18;
      }
    }

    v63 = v68;
    v62 = a1;
    if (v49 < 1)
    {
      __break(1u);
      return;
    }

    v65 = v48 & 0xC000000000000001;
    sub_1DACB71E4();
    for (i = 0; i != v49; ++i)
    {
      if (v65)
      {
        v55 = MEMORY[0x1E12777A0](i, v48);
      }

      else
      {
        v55 = *(v48 + 8 * i + 32);
        sub_1DACB71F4();
      }

      v70 = v67;
      v71 = &off_1F5685960;
      v68 = v4;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v51 = *(v55 + 24);
        ObjectType = swift_getObjectType();
        v53 = v48;
        v54 = *(v51 + 8);
        sub_1DACB71F4();
        v54(&v68, v63, v18, ObjectType, v51);
        v48 = v53;
        swift_unknownObjectRelease();
      }

      else
      {
        sub_1DACB71F4();
      }

      __swift_destroy_boxed_opaque_existential_1(&v68);
    }

    a1 = v62;
  }

  else
  {
LABEL_17:
    if (v12)
    {
      goto LABEL_18;
    }
  }

LABEL_19:
  v19 = sub_1DACB92F4();
  v20 = [v64 recordWithName_];

  if (v20 && (v21 = MEMORY[0x1E1277550](0xD00000000000001DLL, 0x80000001DACE85A0), v20, v21))
  {
    v73 = v21;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    v22 = swift_dynamicCast();
    if (v22)
    {
      v23 = v68;
    }

    else
    {
      v23 = 0;
    }

    if (v22)
    {
      v24 = v69;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  v25 = sub_1DACB92F4();
  v26 = [a3 recordWithName_];

  if (v26 && (v27 = MEMORY[0x1E1277550](0xD00000000000001DLL, 0x80000001DACE85A0), v26, v27))
  {
    v73 = v27;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    v28 = swift_dynamicCast();
    if (v28)
    {
      v29 = v68;
    }

    else
    {
      v29 = 0;
    }

    if (v28)
    {
      v30 = v69;
    }

    else
    {
      v30 = 0;
    }

    if (!v24)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v29 = 0;
    v30 = 0;
    if (!v24)
    {
LABEL_51:

      return;
    }
  }

  if (!v30)
  {
    goto LABEL_51;
  }

  v31 = HIBYTE(v30) & 0xF;
  if ((v30 & 0x2000000000000000) == 0)
  {
    v31 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v31)
  {

    goto LABEL_51;
  }

  sub_1DACB71E4();
  sub_1DAB502FC(v23, v24);
  v33 = v32;
  v35 = v34;

  if (v35)
  {
    v36 = 0x8000000000000000;
  }

  else
  {
    v36 = v33;
  }

  sub_1DACB71E4();
  sub_1DAB502FC(v29, v30);
  v38 = v37;
  v40 = v39;

  if (v40)
  {
    if (v36 == 0x8000000000000000)
    {
LABEL_48:

      goto LABEL_51;
    }
  }

  else if (v38 >= v36)
  {
    goto LABEL_48;
  }

  if (qword_1ECBE59C8 != -1)
  {
    swift_once();
  }

  v41 = sub_1DACB8C94();
  __swift_project_value_buffer(v41, qword_1ECBE6A58);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v42 = sub_1DACB8C74();
  v43 = sub_1DACB9914();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v68 = v45;
    *v44 = 136315394;
    v46 = sub_1DAA7ABE4(v29, v30, &v68);

    *(v44 + 4) = v46;
    *(v44 + 12) = 2080;
    *(v44 + 14) = sub_1DAA7ABE4(v23, v24, &v68);
    _os_log_impl(&dword_1DAA3F000, v42, v43, "Received an invalid lastAppLaunchUpsellInstanceID [%s], restoring record back to [%s]", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v45, -1, -1);
    MEMORY[0x1E1278C00](v44, -1, -1);
  }

  else
  {
  }

  v56 = sub_1DACB92F4();
  updated = type metadata accessor for UpdateLastAppLaunchUpsellInstanceIDCommand();
  v58 = objc_allocWithZone(updated);
  v59 = &v58[OBJC_IVAR___SCUpdateLastAppLaunchUpsellInstanceIDCommand_lastAppLaunchUpsellInstanceID];
  *v59 = v23;
  v59[1] = v24;
  v74.receiver = v58;
  v74.super_class = updated;
  v60 = objc_msgSendSuper2(&v74, sel_init);
  [a1 modifyContentsOfZone:v56 withCommand:v60];
}

uint64_t sub_1DAA75AA8(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 <= 0x9F)
  {
    return v1 >> 5;
  }

  else
  {
    return (v1 & 1) + 5;
  }
}

uint64_t sub_1DAA75D68(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32))
  {
    return 1;
  }

  else
  {
    return sub_1DACBA174();
  }
}

uint64_t sub_1DAA75DC8@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate;
  swift_beginAccess();
  v4 = sub_1DACB7CC4();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1DAA75E60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_1DAA75EB0()
{
  v1 = sub_1DACB8FB4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DACB9004();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA420F4(0, &qword_1EE123DE8, 0x1E69E9610);
  v11 = sub_1DACB9954();
  aBlock[4] = sub_1DAA934FC;
  v15 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_40;
  v12 = _Block_copy(aBlock);
  sub_1DACB71F4();

  sub_1DACB8FD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA59D78(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  sub_1DAA59DC0(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA6F790();
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v10, v5, v12);
  _Block_release(v12);

  (*(v2 + 8))(v5, v1);
  return (*(v7 + 8))(v10, v6);
}

void sub_1DAA763B0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  if (!*a2)
  {
    sub_1DAA5A8BC(255, a3, a4, a5);
    v6 = sub_1DACB8B74();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1DAA7640C()
{
  v1 = *v0;
  sub_1DAA726DC(0, &unk_1EE11FE48, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

void *sub_1DAA76560()
{
  v1 = *v0;
  os_unfair_lock_lock((v1 + 64));
  v2 = *(v1 + 72);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v1 + 64));

  return sub_1DAA765B0(v2);
}

void *sub_1DAA765B0(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1DAA7D2EC(*(a1 + 16), 0);
  v4 = sub_1DAB05C50(&v6, v3 + 4, v2, a1);
  sub_1DAA54B38();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1DAA76870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27 = a3;
  v24 = a4;
  v25 = a1;
  v26 = a2;
  v22 = sub_1DACB8204();
  v4 = *(v22 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1DACB7CC4();
  v21 = *(v23 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DACB8344();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1E69E7CC0];
  sub_1DAA4CCDC(&qword_1EE1255B0, MEMORY[0x1E69D6528]);
  v16 = MEMORY[0x1E69D6528];
  sub_1DAA58BFC(0, &unk_1EE125520, MEMORY[0x1E69D6528], MEMORY[0x1E69E62F8]);
  sub_1DAA4F5E8(&qword_1EE125518, &unk_1EE125520, v16);
  sub_1DACB9BB4();
  sub_1DACB7CB4();
  v17 = v22;
  (*(v4 + 104))(v7, *MEMORY[0x1E69D6490], v22);
  v18 = (*(v24 + 8))(v25, v26, v15, v10, v7, v27);
  (*(v4 + 8))(v7, v17);
  (*(v21 + 8))(v10, v23);
  (*(v12 + 8))(v15, v11);
  return v18;
}

uint64_t sub_1DAA76BBC(uint64_t a1)
{
  v24 = 0x73752D6E65;
  v2 = [objc_opt_self() sharedPreferences];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 stocksLanguageCode];
    if (v4)
    {
      v5 = v4;
      v24 = sub_1DACB9324();
      v7 = v6;
    }

    else
    {
      v7 = 0xE500000000000000;
    }

    v8 = [v3 stocksCountryCode];
    if (v8)
    {
      v9 = v8;
      v23 = sub_1DACB9324();
      v11 = v10;

      goto LABEL_9;
    }
  }

  else
  {
    v7 = 0xE500000000000000;
  }

  v11 = 0xE200000000000000;
  v23 = 21333;
LABEL_9:
  v13 = *(a1 + 16);
  if (v13)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v13, 0);
    v14 = (a1 + 40);
    do
    {
      v25 = *(v14 - 1);
      v26 = *v14;
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      MEMORY[0x1E1276F20](59, 0xE100000000000000);
      MEMORY[0x1E1276F20](v24, v7);
      MEMORY[0x1E1276F20](59, 0xE100000000000000);
      MEMORY[0x1E1276F20](v23, v11);

      v12 = swift_bridgeObjectRelease_n();
      v16 = *(v27 + 16);
      v15 = *(v27 + 24);
      if (v16 >= v15 >> 1)
      {
        v12 = sub_1DAA5859C((v15 > 1), v16 + 1, 1);
      }

      *(v27 + 16) = v16 + 1;
      v17 = v27 + 16 * v16;
      *(v17 + 32) = v25;
      *(v17 + 40) = v26;
      v14 += 2;
      --v13;
    }

    while (v13);
  }

  MEMORY[0x1EEE9AC00](v12);
  v18 = MEMORY[0x1E69E5E28];
  sub_1DAA58D6C(0, &qword_1EE11FCB0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69E5E28]);
  sub_1DACB8BB4();

  sub_1DACB71F4();
  v19 = sub_1DACB89D4();
  sub_1DACB8A64();

  v20 = sub_1DACB89D4();
  sub_1DAA58D6C(0, &qword_1EE11FC80, &type metadata for Stock, v18);
  sub_1DAA80584();
  v21 = sub_1DACB8B64();

  return v21;
}

uint64_t sub_1DAA76FC8(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  sub_1DACB71F4();
  swift_unknownObjectRetain();
  v7 = a3;
  v6(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_1DAA771E4(void *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void (*a5)(id))
{
  if (a2)
  {
    a3(a2);
  }

  else
  {
    if (a1)
    {
      v7 = sub_1DACB92F4();
      v8 = [a1 recordWithName_];

      a5(v8);
    }

    else
    {
      v8 = 0;
      a5(0);
    }
  }
}

uint64_t sub_1DAA773F8(id *a1)
{
  sub_1DAA492B4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  if (*a1 && (v9 = [*a1 encryptedValues], v10 = sub_1DACB92F4(), v11 = objc_msgSend(v9, sel_objectForKeyedSubscript_, v10), swift_unknownObjectRelease(), v10, v11))
  {
    v20[1] = v11;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    v12 = sub_1DACB7CC4();
    v13 = swift_dynamicCast();
    (*(*(v12 - 8) + 56))(v8, v13 ^ 1u, 1, v12);
  }

  else
  {
    v14 = sub_1DACB7CC4();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1DAA77630(v8, v6);
  sub_1DAA68234(0, &unk_1EE11D438, sub_1DAA492B4, MEMORY[0x1E69D6B18]);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1DACB8AE4();
  sub_1DAA776C4(v8);
  return v18;
}

uint64_t sub_1DAA77630(uint64_t a1, uint64_t a2)
{
  sub_1DAA499D4(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAA776C4(uint64_t a1)
{
  sub_1DAA499D4(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAA77750(uint64_t a1, char *a2, uint64_t a3)
{
  sub_1DAA499D4(0, &qword_1EE125280, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v36 - v8;
  v10 = sub_1DACB7CC4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v36 - v16;
  sub_1DAA77630(a1, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1DAA776C4(v9);
    sub_1DAA499D4(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1DACC1D20;
    sub_1DAA5C878(&qword_1EE123A30, MEMORY[0x1E6969530]);
    v19 = sub_1DACBA114();
    v21 = v20;
    *(v18 + 56) = MEMORY[0x1E69E6158];
    *(v18 + 64) = sub_1DAA443C8();
    *(v18 + 32) = v19;
    *(v18 + 40) = v21;
    sub_1DAA41DCC();
    v22 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v23 = OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate;
    swift_beginAccess();
    (*(v11 + 24))(&a2[v23], a3, v10);
    swift_endAccess();
    a2[OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_isFirstLaunch] = 1;
    v24 = *(a2 + 5);
    v25 = *(a2 + 6);
    __swift_project_boxed_opaque_existential_1(a2 + 2, v24);
    (*(v25 + 48))(a3, 0, v24, v25);
  }

  else
  {
    (*(v11 + 32))(v17, v9, v10);
    sub_1DAA499D4(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1DACC1D20;
    sub_1DAA5C878(&qword_1EE123A30, MEMORY[0x1E6969530]);
    v27 = sub_1DACBA114();
    v29 = v28;
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 64) = sub_1DAA443C8();
    *(v26 + 32) = v27;
    *(v26 + 40) = v29;
    sub_1DAA41DCC();
    v30 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v31 = OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate;
    swift_beginAccess();
    (*(v11 + 24))(&a2[v31], v17, v10);
    swift_endAccess();
    (*(v11 + 8))(v17, v10);
    a2[OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_isFirstLaunch] = 0;
  }

  v32 = *(a2 + 7);
  v33 = OBJC_IVAR____TtC10StocksCore17UserLaunchHistory_startDate;
  swift_beginAccess();
  (*(v11 + 16))(v15, &a2[v33], v10);
  v34 = sub_1DACB7C04();
  (*(v11 + 8))(v15, v10);
  v35 = sub_1DACB92F4();
  [v32 setObject:v34 forKey:v35];
}

uint64_t sub_1DAA77F1C(id *a1)
{
  sub_1DAA492B4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v20 - v7;
  if (*a1 && (v9 = [*a1 encryptedValues], v10 = sub_1DACB92F4(), v11 = objc_msgSend(v9, sel_objectForKeyedSubscript_, v10), swift_unknownObjectRelease(), v10, v11))
  {
    v20[1] = v11;
    sub_1DAA485B8(0, &qword_1EE11D0C0, &protocolRef_CKRecordValue);
    v12 = sub_1DACB7CC4();
    v13 = swift_dynamicCast();
    (*(*(v12 - 8) + 56))(v8, v13 ^ 1u, 1, v12);
  }

  else
  {
    v14 = sub_1DACB7CC4();
    (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  }

  sub_1DAA77630(v8, v6);
  sub_1DAA68234(0, &unk_1EE11D438, sub_1DAA492B4, MEMORY[0x1E69D6B18]);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  v18 = sub_1DACB8AE4();
  sub_1DAA776C4(v8);
  return v18;
}

uint64_t sub_1DAA781A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v46 = a5;
  v49 = a8;
  v50 = a3;
  v56 = a6;
  v57 = a7;
  v55 = a4;
  v44 = a1;
  v45 = a2;
  v51 = a9;
  v11 = MEMORY[0x1E69D61A8];
  sub_1DAA58F08(0, &qword_1EE11FD58, MEMORY[0x1E69D61A8]);
  v53 = *(v12 - 8);
  v54 = v12;
  v42[1] = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v43 = v42 - v13;
  sub_1DAA58EA0(0, &qword_1EE11FD50, &qword_1EE11FD58, v11, MEMORY[0x1E69E6720]);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v52 = v42 - v16;
  v17 = sub_1DACB8204();
  v47 = v17;
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v48 = v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1DACB7CC4();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v23, v49, v20);
  (*(v18 + 16))(v42 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), v51, v17);
  v24 = (*(v21 + 80) + 56) & ~*(v21 + 80);
  v25 = (v22 + *(v18 + 80) + v24) & ~*(v18 + 80);
  v26 = swift_allocObject();
  v27 = v50;
  v29 = v55;
  v28 = v56;
  *(v26 + 2) = v50;
  *(v26 + 3) = v29;
  *(v26 + 4) = a5;
  *(v26 + 5) = v28;
  *(v26 + 6) = v57;
  v30 = v23;
  v31 = v53;
  (*(v21 + 32))(&v26[v24], v30, v20);
  v32 = &v26[v25];
  v33 = v54;
  (*(v18 + 32))(v32, v48, v47);
  v34 = *(v27 + 80);
  swift_retain_n();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB88F4();
  v35 = v52;
  sub_1DACB8D84();

  result = (*(v31 + 48))(v35, 1, v33);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v57 = a10;
    sub_1DAA58D6C(0, &qword_1EE11FED0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69D6B00]);
    v37 = v43;
    (*(v31 + 16))(v43, v35, v33);
    v38 = (*(v31 + 80) + 16) & ~*(v31 + 80);
    v39 = swift_allocObject();
    (*(v31 + 32))(v39 + v38, v37, v33);
    (*(v31 + 8))(v35, v33);
    v41 = *(v27 + 56);
    v40 = sub_1DACB89F4();

    return v40;
  }

  return result;
}

uint64_t sub_1DAA7868C()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 2);

  v13 = *(v0 + 4);

  v14 = *(v0 + 6);

  (*(v2 + 8))(&v0[v4], v1);
  (*(v7 + 8))(&v0[v9], v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DAA787EC()
{
  sub_1DAA58F08(0, &qword_1EE11FD58, MEMORY[0x1E69D61A8]);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DAA788D0@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA58F08(0, &qword_1EE11FD30, MEMORY[0x1E69D61B8]);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

uint64_t sub_1DAA7897C(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v5 = v4;
  v53 = a4;
  v51 = a3;
  v54 = a1;
  v8 = type metadata accessor for AppConfiguration(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[0] = sub_1DACB81B4();
  v12 = *(v44[0] - 8);
  v13 = v12[8];
  MEMORY[0x1EEE9AC00](v44[0]);
  v15 = (v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = v5[5];
  v17 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v16);
  v52 = sub_1DAA78E98(a1, a2, v16, v17);
  v19 = v5[5];
  v18 = v5[6];
  __swift_project_boxed_opaque_existential_1(v5 + 2, v19);
  v20 = v5[15];
  v21 = v5[16];
  __swift_project_boxed_opaque_existential_1(v5 + 12, v20);
  (*(v21 + 8))(v20, v21);
  v22 = *(v11 + 25);
  v49 = type metadata accessor for AppConfiguration;
  sub_1DAA4D03C(v11, type metadata accessor for AppConfiguration);
  *v15 = v22;
  v48 = *MEMORY[0x1E69D63D8];
  v23 = v12[13];
  v44[1] = v12 + 13;
  v45 = v23;
  v24 = v44[0];
  v23(v15);
  v25 = v54;
  v50 = sub_1DAA78E98(v54, v15, v19, v18);
  v26 = v12[1];
  v46 = v12 + 1;
  v47 = v26;
  v27 = v24;
  v26(v15, v24);
  v28 = v5[10];
  v29 = v5[11];
  __swift_project_boxed_opaque_existential_1(v5 + 7, v28);
  (*(v29 + 8))(v25, v51, v28, v29);
  v30 = sub_1DACB89D4();
  v51 = sub_1DACB8B14();

  v31 = v5[10];
  v32 = v5[11];
  __swift_project_boxed_opaque_existential_1(v5 + 7, v31);
  v33 = v5[15];
  v34 = v5[16];
  __swift_project_boxed_opaque_existential_1(v5 + 12, v33);
  (*(v34 + 8))(v33, v34);
  v35 = *(v11 + 25);
  sub_1DAA4D03C(v11, v49);
  *v15 = v35;
  v45(v15, v48, v27);
  (*(v32 + 8))(v54, v15, v31, v32);
  v47(v15, v27);
  v36 = sub_1DACB89D4();
  v37 = sub_1DACB8B14();

  v55 = v50;
  v56 = v37;
  sub_1DAA81178();
  sub_1DACB8BB4();
  v38 = swift_allocObject();
  v39 = v51;
  *(v38 + 16) = v52;
  *(v38 + 24) = v39;
  *(v38 + 32) = v5;
  *(v38 + 40) = v53;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_1DAA828E0;
  *(v40 + 24) = v38;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v41 = sub_1DACB89D4();
  v42 = sub_1DACB8A54();

  return v42;
}

uint64_t sub_1DAA78E24()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA78E98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a3;
  v7 = sub_1DACB8204();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DACB7CC4();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v19 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB7CB4();
  (*(v8 + 104))(v11, *MEMORY[0x1E69D6490], v7);
  v17 = (*(a4 + 8))(a1, a2, v16, v11, v20, a4);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
  return v17;
}

uint64_t sub_1DAA79070(uint64_t a1, uint64_t *a2)
{
  v3 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    sub_1DACB9324();
  }

  return sub_1DACB8C84();
}

uint64_t sub_1DAA791A8(uint64_t a1)
{
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACC1D20;
  v3 = MEMORY[0x1E69E6158];
  v4 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
  v6 = v5;
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_1DAA443C8();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  sub_1DACB9914();
  sub_1DACB8C64();

  MEMORY[0x1EEE9AC00](v7);
  sub_1DAA58D6C(0, &qword_1EE11FCB0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69E5E28]);
  sub_1DACB8BB4();
  v8 = sub_1DACB89D4();
  sub_1DACB8A54();

  v9 = sub_1DACB89D4();
  v10 = sub_1DACB8AA4();

  return v10;
}

uint64_t sub_1DAA793A8()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 bundleIdentifier];

  if (v1)
  {
    sub_1DACB9324();
  }

  sub_1DAA41DCC();
  result = sub_1DACB9AE4();
  qword_1EE13E310 = result;
  return result;
}

uint64_t sub_1DAA79480(uint64_t a1)
{
  v2 = MEMORY[0x1E69D61A8];
  sub_1DAA58EA0(0, &qword_1EE11FD50, &qword_1EE11FD58, MEMORY[0x1E69D61A8], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - v5;
  v7 = *(a1 + 80);
  sub_1DACB88F4();
  sub_1DACB8D84();

  sub_1DAA58F08(0, &qword_1EE11FD58, v2);
  v9 = v8;
  v10 = *(v8 - 8);
  result = (*(v10 + 48))(v6, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v12 = sub_1DACB8D34();
    (*(v10 + 8))(v6, v9);
    return v12;
  }

  return result;
}

uint64_t sub_1DAA79608()
{
  v1 = v0[3];
  v2 = v0[4];
  return sub_1DAA79480(v0[2]);
}

uint64_t sub_1DAA79628()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8024();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v13[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE120108 = result;
  return result;
}

uint64_t sub_1DAA79808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a4;
  v80 = a2;
  v86 = *v4;
  v7 = sub_1DACB8344();
  v95 = *(v7 - 8);
  v96 = v7;
  v8 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DACB8204();
  v90 = *(v10 - 8);
  v91 = v10;
  v11 = *(v90 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v87 = &v79 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v12;
  v13 = sub_1DACB81B4();
  v99 = *(v13 - 8);
  v100 = v13;
  v14 = *(v99 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v98 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DACB7CC4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v83 = v20;
  v84 = &v79 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v79 - v21;
  v23 = sub_1DACB7D04();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB6D04();
  v102 = sub_1DACB7CE4();
  v29 = v28;
  (*(v24 + 8))(v27, v23);
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v30 = sub_1DACB8C94();
  __swift_project_value_buffer(v30, qword_1EE124090);
  v31 = *(v17 + 16);
  v82 = v17 + 16;
  v81 = v31;
  v31(v22, a3, v16);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v32 = sub_1DACB8C74();
  v33 = v29;
  v34 = sub_1DACB9914();

  v35 = os_log_type_enabled(v32, v34);
  v94 = a1;
  v89 = a3;
  v85 = v17;
  if (v35)
  {
    v36 = v16;
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v103[0] = v38;
    *v37 = 136315650;
    v39 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
    v41 = sub_1DAA7ABE4(v39, v40, v103);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    v42 = sub_1DACB7C94();
    v44 = v43;
    v45 = v22;
    v46 = v36;
    (*(v17 + 8))(v45, v36);
    v47 = sub_1DAA7ABE4(v42, v44, v103);

    *(v37 + 14) = v47;
    *(v37 + 22) = 2080;
    v48 = v33;
    *(v37 + 24) = sub_1DAA7ABE4(v102, v33, v103);
    _os_log_impl(&dword_1DAA3F000, v32, v34, "Preparing stock quote request for symbols: %s, earliestBeginDate: %s, requestID: %s", v37, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v38, -1, -1);
    MEMORY[0x1E1278C00](v37, -1, -1);
  }

  else
  {
    v48 = v33;

    v50 = v22;
    v46 = v16;
    (*(v17 + 8))(v50, v16);
  }

  v52 = v99;
  v51 = v100;
  v53 = v98;
  if (qword_1EE120100 != -1)
  {
    swift_once();
  }

  sub_1DAA5ED30(&qword_1EE123650, v49, type metadata accessor for QuoteManager);
  sub_1DACB7F84();
  v97 = v48;
  if (LOBYTE(v103[0]) == 1)
  {
    (*(v52 + 104))(v53, *MEMORY[0x1E69D63D0], v51);
  }

  else
  {
    (*(v52 + 16))(v53, v80, v51);
  }

  sub_1DAA5EC5C(0, &qword_1EE11FEB8, MEMORY[0x1E69D6B00]);
  v86 = v54;
  v55 = v84;
  v56 = v46;
  v81(v84, v89, v46);
  v58 = v90;
  v57 = v91;
  v59 = v87;
  (*(v90 + 16))(v87, v92, v91);
  v60 = v85;
  v61 = (*(v85 + 80) + 40) & ~*(v85 + 80);
  v62 = (v83 + *(v58 + 80) + v61) & ~*(v58 + 80);
  v63 = swift_allocObject();
  v64 = v101;
  v65 = v97;
  *(v63 + 2) = v102;
  *(v63 + 3) = v65;
  *(v63 + 4) = v64;
  (*(v60 + 32))(&v63[v61], v55, v56);
  (*(v58 + 32))(&v63[v62], v59, v57);
  v66 = *(v64 + 72);
  v103[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA5ED30(&qword_1EE1255B0, 255, MEMORY[0x1E69D6528]);
  sub_1DAA7A378(0);
  sub_1DAA5ED30(&qword_1EE125518, 255, sub_1DAA7A378);
  swift_retain_n();
  v67 = v97;
  swift_bridgeObjectRetain_n();
  v68 = v93;
  v69 = v96;
  sub_1DACB9BB4();
  v70 = v102;
  v71 = v98;
  sub_1DACB89F4();

  (*(v95 + 8))(v68, v69);
  (*(v99 + 8))(v71, v100);
  v72 = swift_allocObject();
  *(v72 + 16) = v70;
  *(v72 + 24) = v67;
  v73 = v70;
  sub_1DACB71E4();
  v74 = sub_1DACB89D4();
  sub_1DAA5EC5C(0, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
  sub_1DACB8A54();

  v75 = swift_allocObject();
  *(v75 + 16) = v73;
  *(v75 + 24) = v67;
  v76 = sub_1DACB89D4();
  v77 = sub_1DACB8AA4();

  return v77;
}

uint64_t sub_1DAA7A1E0()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA7A218()
{
  v1 = sub_1DACB7CC4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_1DACB8204();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = *(v7 + 64);
  v11 = v3 | v8;
  v12 = *(v0 + 24);

  v13 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x1EEE6BDD0](v0, v9 + v10, v11 | 7);
}

uint64_t sub_1DAA7A3B4@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA5EFF0();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

void sub_1DAA7A458()
{
  if (!qword_1EE11FE60)
  {
    sub_1DAA5EC5C(255, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FE60);
    }
  }
}

uint64_t sub_1DAA7A4CC(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 64);
  sub_1DACB8144();
  v5 = *(v1 + 96);
  sub_1DACB88F4();
  v6 = sub_1DACB8DA4();

  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v7 = sub_1DACB8C94();
  __swift_project_value_buffer(v7, qword_1EE124090);
  sub_1DACB71E4();
  v8 = sub_1DACB8C74();
  v9 = sub_1DACB9914();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136315138;
    v12 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
    v14 = sub_1DAA7ABE4(v12, v13, &v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1DAA3F000, v8, v9, "Reading quotes from cache for symbols: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E1278C00](v11, -1, -1);
    MEMORY[0x1E1278C00](v10, -1, -1);
  }

  sub_1DAA5EC5C(0, &unk_1EE11FEF0, MEMORY[0x1E69D6AA8]);
  v15 = *(v2 + 56);
  sub_1DACB8944();
  v21 = v6;
  sub_1DAA7A458();
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = sub_1DACB8AE4();
  sub_1DACB8154();
  return v19;
}

uint64_t sub_1DAA7A6F8(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 120) = a2;
    return result;
  }

  sub_1DAA492B4();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[13];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_1DACB7CC4();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[22];
    goto LABEL_7;
  }

  v14 = sub_1DACB7F54();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[24];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1DAA7A864(uint64_t a1)
{
  v3 = *(sub_1DACB7CC4() - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DACB8204() - 8);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1DAA7A940(a1, v7, v8, v9, v1 + v4, v10);
}

uint64_t sub_1DAA7A940(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v12 = sub_1DACB8C94();
  __swift_project_value_buffer(v12, qword_1EE124090);
  sub_1DACB71E4();
  v13 = sub_1DACB8C74();
  v14 = sub_1DACB9914();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1DAA7ABE4(a2, a3, &v25);
    _os_log_impl(&dword_1DAA3F000, v13, v14, "Performing quote fetch with requestID: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x1E1278C00](v16, -1, -1);
    MEMORY[0x1E1278C00](v15, -1, -1);
  }

  v17 = a4[5];
  v18 = a4[6];
  __swift_project_boxed_opaque_existential_1(a4 + 2, v17);
  (*(v18 + 8))(a1, a5, a6, v17, v18);
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  sub_1DACB71E4();
  v20 = sub_1DACB89D4();
  sub_1DAA5EC5C(0, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
  sub_1DACB8A54();

  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  sub_1DACB71E4();
  v22 = sub_1DACB89D4();
  v23 = sub_1DACB8AA4();

  return v23;
}

uint64_t sub_1DAA7ABE4(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  sub_1DACB71E4();
  v6 = sub_1DAA7BF04(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
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
    sub_1DAA7C694(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_1DAA7ACB0()
{
  v5 = *v0;
  sub_1DAA580F4(0, &qword_1EE11FE60, sub_1DAC25714, MEMORY[0x1E69D6B18]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAA7AD40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1DACB8FB4();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DACB9004();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = *(a5 + 16);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = sub_1DAA73914;
  v20[4] = v18;
  aBlock[4] = sub_1DAA7B454;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_34;
  v21 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB8FD4();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v22 = MEMORY[0x1E69E7F60];
  sub_1DAA580F4(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57DD0(&qword_1EE123EB0, &qword_1EE123EC0, v22);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v17, v13, v21);
  _Block_release(v21);
  (*(v26 + 8))(v13, v10);
  (*(v14 + 8))(v17, v25);
}

uint64_t sub_1DAA7B064()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA7B09C()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAA7B100(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE124090);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_1DAA7ABE4(a2, a3, &v19);
    *(v9 + 12) = 2048;
    *(v9 + 14) = *(v5 + 16);

    *(v9 + 22) = 2080;
    sub_1DAA7B3CC();
    sub_1DAA5ED30(&qword_1EE11F758, 255, sub_1DAA7B3CC);
    sub_1DAA642D8();
    sub_1DACB71E4();
    v11 = sub_1DACB9554();
    v13 = v12;

    MEMORY[0x1E1276F20](v11, v13);

    MEMORY[0x1E1276F20](23818, 0xE200000000000000);
    v14 = sub_1DAA7ABE4(2651, 0xE200000000000000, &v19);

    *(v9 + 24) = v14;
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Quote request with ID: %s completed with %ld results: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  else
  {
  }

  sub_1DAA7A458();
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

void sub_1DAA7B3CC()
{
  if (!qword_1EE11F750)
  {
    sub_1DAA5EC5C(255, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
    sub_1DAA7B460();
    v0 = sub_1DACB9DC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F750);
    }
  }
}

unint64_t sub_1DAA7B460()
{
  result = qword_1EE11FC90;
  if (!qword_1EE11FC90)
  {
    sub_1DAA5EC5C(255, &qword_1EE11FC98, MEMORY[0x1E69E5E28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FC90);
  }

  return result;
}

uint64_t sub_1DAA7B4D4(uint64_t a1, void (*a2)(void *), uint64_t a3)
{
  v59[1] = a3;
  v60 = a2;
  v67 = sub_1DACB7CC4();
  v4 = *(v67 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Quote();
  v65 = *(v7 - 1);
  v8 = *(v65 + 64);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (v59 - v12);
  v14 = *(a1 + 16);
  if (!v14)
  {
    v16 = MEMORY[0x1E69E7CC8];
LABEL_39:
    v60(v16);
  }

  v61 = (v4 + 56);
  v63 = (v4 + 8);
  v15 = (a1 + 40);
  v16 = MEMORY[0x1E69E7CC8];
  v62 = xmmword_1DACDA150;
  v64 = v11;
  while (1)
  {
    v68 = v15;
    v69 = v14;
    v17 = *v15;
    v72 = *(v15 - 1);
    v73 = v17;
    sub_1DACB71E4();
    v18 = arc4random_uniform(0x64u);
    if (v18 <= 1)
    {
      v19 = 1;
    }

    else
    {
      v19 = v18;
    }

    v71 = v19;
    v20 = arc4random_uniform(0x64u);
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    v70 = v21;
    v22 = arc4random_uniform(0x64u);
    if (v22 <= 1)
    {
      v23 = 1;
    }

    else
    {
      v23 = v22;
    }

    v24 = v23;
    v25 = arc4random_uniform(0x64u);
    if (v25 <= 1)
    {
      v26 = 1;
    }

    else
    {
      v26 = v25;
    }

    v27 = v24 / v26;
    if ((arc4random_uniform(2u) & 1) == 0)
    {
      v27 = -v27;
    }

    v28 = arc4random_uniform(0x64u);
    v29 = v28 <= 1 ? 1 : v28;
    v30 = arc4random_uniform(0x64u);
    v31 = v30 <= 1 ? 1 : v30;
    v32 = *v61;
    v33 = v67;
    (*v61)(v13 + v7[13], 1, 1, v67);
    v32(v13 + v7[14], 1, 1, v33);
    v34 = v7[15];
    sub_1DACB7CB4();
    v32(v13 + v34, 0, 1, v33);
    v32(v13 + v7[20], 1, 1, v33);
    v32(v13 + v7[21], 1, 1, v33);
    v35 = v7[23];
    v36 = v66;
    sub_1DACB7CB4();
    sub_1DACB7BF4();
    (*v63)(v36, v33);
    v32(v13 + v35, 0, 1, v33);
    if (qword_1EE123A08 != -1)
    {
      swift_once();
    }

    v37 = v71 / v70;
    v38 = sub_1DACB7F54();
    v39 = __swift_project_value_buffer(v38, qword_1EE13E458);
    (*(*(v38 - 8) + 16))(v13 + v7[24], v39, v38);
    v40 = v13 + v7[22];
    sub_1DACB7CB4();
    *v13 = v37;
    *(v13 + 8) = 0;
    v13[2] = v27;
    *(v13 + 24) = 0;
    v13[4] = v29 / v31;
    *(v13 + 40) = 0;
    v13[6] = 0.0;
    *(v13 + 56) = 1;
    v13[8] = 0.0;
    *(v13 + 72) = 1;
    v13[10] = 0.0;
    *(v13 + 88) = 1;
    v13[12] = 0.0;
    *(v13 + 104) = 1;
    *(v13 + 7) = v62;
    *(v13 + 128) = 2;
    *(v13 + v7[16]) = 7;
    *(v13 + v7[17]) = 7;
    *(v13 + v7[18]) = 7;
    v41 = v13 + v7[19];
    *v41 = 0;
    v41[8] = 1;
    v42 = v64;
    sub_1DAA7BD70(v13, v64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v16;
    v44 = v72;
    v45 = v73;
    v47 = sub_1DAA4BF3C(v72, v73);
    v48 = v16[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      break;
    }

    v51 = v46;
    if (v16[3] >= v50)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        if (v46)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_1DAA89048();
        if (v51)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_1DAA7C010(v50, isUniquelyReferenced_nonNull_native);
      v52 = sub_1DAA4BF3C(v44, v45);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_42;
      }

      v47 = v52;
      if (v51)
      {
LABEL_3:

        v16 = v74;
        sub_1DAAFBCE8(v42, v74[7] + *(v65 + 72) * v47);
        goto LABEL_4;
      }
    }

    v16 = v74;
    v74[(v47 >> 6) + 8] |= 1 << v47;
    v54 = (v16[6] + 16 * v47);
    *v54 = v44;
    v54[1] = v45;
    sub_1DAA7BD70(v42, v16[7] + *(v65 + 72) * v47);
    v55 = v16[2];
    v56 = __OFADD__(v55, 1);
    v57 = v55 + 1;
    if (v56)
    {
      goto LABEL_41;
    }

    v16[2] = v57;
LABEL_4:
    v15 = v68 + 2;
    v14 = v69 - 1;
    if (v69 == 1)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_1DACBA1F4();
  __break(1u);
  return result;
}

uint64_t sub_1DAA7BAAC()
{
  sub_1DAA7BCA8(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v8 - v2;
  v4 = sub_1DACB7F54();
  __swift_allocate_value_buffer(v4, qword_1EE13E458);
  v5 = __swift_project_value_buffer(v4, qword_1EE13E458);
  sub_1DACB7F14();
  v6 = *(v4 - 8);
  result = (*(v6 + 48))(v3, 1, v4);
  if (result != 1)
  {
    return (*(v6 + 32))(v5, v3, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA7BBF4(uint64_t a1, unint64_t a2)
{
  v4 = sub_1DAA7BDD4(a1, a2);
  sub_1DAA7C470(&unk_1F567C288);
  result = v4;
  v3 = *(v4 + 16) - 1;
  return result;
}

void *sub_1DAA7BC40(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DAA7C420();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_1DAA7BCA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1DAA7BD0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1DAA7BD70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Quote();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAA7BDD4(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1DAA7BC40(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1DACB9D24();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1DACB9454();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1DAA7BC40(v10, 0);
        result = sub_1DACB9C64();
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

unint64_t sub_1DAA7BF04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1DAA7BBF4(a5, a6);
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
    result = sub_1DACB9D24();
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

uint64_t sub_1DAA7C010(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Quote();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1DAA7C3AC(0, &unk_1EE11F6E0, type metadata accessor for Quote, MEMORY[0x1E69E6EC8]);
  v44 = a2;
  result = sub_1DACB9E84();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1DAA7C55C(v31, v45, type metadata accessor for Quote);
      }

      else
      {
        sub_1DAB697A0(v31, v45, type metadata accessor for Quote);
        sub_1DACB71E4();
      }

      v32 = *(v12 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1DAA7C55C(v45, *(v12 + 56) + v30 * v20, type metadata accessor for Quote);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

void sub_1DAA7C3AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, void, uint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, MEMORY[0x1E69E6158], v7, MEMORY[0x1E69E6168]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1DAA7C420()
{
  if (!qword_1EE11F498)
  {
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F498);
    }
  }
}

uint64_t sub_1DAA7C470(uint64_t result)
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

  result = sub_1DAADCA10(result, v12, 1, v3);
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

uint64_t sub_1DAA7C55C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA7C5C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA7C62C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA7C694(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1DAA7C730(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  v5 = *a1;
  if (qword_1EE124088 != -1)
  {
    swift_once();
  }

  v6 = sub_1DACB8C94();
  __swift_project_value_buffer(v6, qword_1EE124090);
  sub_1DACB71E4();
  v7 = sub_1DACB8C74();
  v8 = sub_1DACB9914();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1DAA7ABE4(a2, a3, &v15);
    _os_log_impl(&dword_1DAA3F000, v7, v8, "Quote fetch with ID: %s returned success", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1E1278C00](v10, -1, -1);
    MEMORY[0x1E1278C00](v9, -1, -1);
  }

  v15 = v5;
  sub_1DAA7A458();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAA7C8DC(uint64_t a1)
{
  v2 = v1;
  v23 = *(v1 + 64);
  sub_1DACB8144();
  v4 = *(v1 + 56);
  v5 = *(a1 + 16);
  if (v5 && (v6 = sub_1DAA7D2EC(v5, 0), v7 = sub_1DAA7D61C(&v24, v6 + 4, v5, a1), sub_1DACB71E4(), result = sub_1DAA54B38(), v7 != v5))
  {
    __break(1u);
  }

  else
  {
    v9 = sub_1DACB8984();

    sub_1DAA5EC5C(0, &unk_1EE11FEF0, MEMORY[0x1E69D6AA8]);
    sub_1DACB8944();
    sub_1DAA5EFF0();
    v10 = *(v2 + 96);
    sub_1DACB88F4();
    sub_1DACB8D14();

    if (qword_1EE124088 != -1)
    {
      swift_once();
    }

    v11 = sub_1DACB8C94();
    __swift_project_value_buffer(v11, qword_1EE124090);
    sub_1DACB71E4();
    v12 = sub_1DACB8C74();
    v13 = sub_1DACB9914();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315138;
      type metadata accessor for Quote();
      v16 = sub_1DACB9134();
      v18 = sub_1DAA7ABE4(v16, v17, &v24);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_1DAA3F000, v12, v13, "Writing quotes to cache: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x1E1278C00](v15, -1, -1);
      MEMORY[0x1E1278C00](v14, -1, -1);
    }

    sub_1DAA87C58(a1, v9);

    v24 = a1;
    sub_1DAA7A458();
    v20 = *(v19 + 48);
    v21 = *(v19 + 52);
    swift_allocObject();
    sub_1DACB71E4();
    v22 = sub_1DACB8AE4();
    sub_1DACB8154();
    return v22;
  }

  return result;
}

uint64_t sub_1DAA7CBC0(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v49 = a1;
  v3 = *v2;
  v4 = sub_1DACB8344();
  v50 = *(v4 - 8);
  v51 = v4;
  v5 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA7C8BC(0);
  v54 = v7;
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA5FEF0(0, &qword_1EE11FD70, sub_1DAA7C8BC, MEMORY[0x1E69E6720]);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v53 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  v17 = sub_1DACB81B4();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE1200F0 != -1)
  {
    swift_once();
  }

  sub_1DAA5CCB8(&qword_1EE1228F8, v20, type metadata accessor for SparklineManager);
  sub_1DACB7F84();
  v47 = v17;
  v44 = v22;
  if (LOBYTE(v55[0]) == 1)
  {
    (*(v18 + 104))(v22, *MEMORY[0x1E69D63D0], v17);
  }

  else
  {
    (*(v18 + 16))(v22, v52, v17);
  }

  v45 = v18;
  sub_1DAA4D678((v2 + 2), v55);
  v43 = swift_allocObject();
  sub_1DAA4D460(v55, v43 + 16);
  v46 = v2;
  v52 = v2[8];
  sub_1DACB88F4();
  sub_1DACB8D84();

  v23 = *(v8 + 48);
  v24 = v54;
  result = v23(v16, 1, v54);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v41 = *(v8 + 16);
    v41(v10, v16, v24);
    v26 = (*(v8 + 80) + 16) & ~*(v8 + 80);
    v39 = v9;
    v27 = swift_allocObject();
    v28 = *(v8 + 32);
    v42 = v27;
    v40 = v28;
    v28(v27 + v26, v10, v24);
    v38 = *(v8 + 8);
    v38(v16, v24);
    sub_1DACB88F4();
    v29 = v53;
    sub_1DACB8D84();
    v30 = v54;

    result = v23(v29, 1, v30);
    if (result != 1)
    {
      sub_1DAA5FCE0(0, &qword_1EE11FEC0, MEMORY[0x1E69D6B00]);
      v41(v10, v29, v30);
      v31 = swift_allocObject();
      v40(v31 + v26, v10, v30);
      v38(v29, v30);
      v32 = v46[7];
      *&v55[0] = MEMORY[0x1E69E7CC0];
      sub_1DAA5CCB8(&qword_1EE1255B0, 255, MEMORY[0x1E69D6528]);
      sub_1DAA7A378(0);
      sub_1DAA5CCB8(&qword_1EE125518, 255, sub_1DAA7A378);
      v33 = v48;
      v34 = v51;
      sub_1DACB9BB4();
      v35 = v44;
      v36 = sub_1DACB89F4();

      (*(v50 + 8))(v33, v34);
      (*(v45 + 8))(v35, v47);
      return v36;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAA7D2AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

void *sub_1DAA7D2EC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_1DAA6149C(0, &qword_1EE123B50, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
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

uint64_t sub_1DAA7D388()
{
  v0 = sub_1DACB8034();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8024();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6E90]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6EA0], v0);
  v13[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE1200F8 = result;
  return result;
}

uint64_t sub_1DAA7D55C@<X0>(uint64_t *a1@<X8>)
{
  sub_1DACB88F4();
  sub_1DAA600B8(0);
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  result = sub_1DACB8D74();
  *a1 = result;
  return result;
}

void *sub_1DAA7D61C(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {
        sub_1DACB71E4();
        goto LABEL_24;
      }

      v11 += 2;
      sub_1DACB71E4();
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1DAA7D774(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EE121838 != -1)
  {
    swift_once();
  }

  sub_1DAA41D64();
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1DACC1D20;
  v3 = MEMORY[0x1E69E6158];
  v4 = sub_1DACB9134();
  v6 = v5;
  *(v2 + 56) = v3;
  *(v2 + 64) = sub_1DAA443C8();
  *(v2 + 32) = v4;
  *(v2 + 40) = v6;
  sub_1DACB9914();
  sub_1DACB8C64();

  sub_1DAA7D8B0();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

void sub_1DAA7D8B0()
{
  if (!qword_1EE11FE70)
  {
    sub_1DAA58D6C(255, &qword_1EE11FCB0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69E5E28]);
    v0 = sub_1DACB8B74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FE70);
    }
  }
}

uint64_t sub_1DAA7D92C(void *a1)
{
  v3 = v1;
  sub_1DAA7E2F0(0, &qword_1EE11F550, sub_1DAA7E358, &type metadata for Quote.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = v41 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA7E358();
  sub_1DACBA304();
  v12 = *v3;
  v13 = *(v3 + 8);
  v43 = 0;
  sub_1DACBA044();
  if (!v2)
  {
    v14 = v3[2];
    v15 = *(v3 + 24);
    v43 = 1;
    sub_1DACBA044();
    v16 = v3[4];
    v17 = *(v3 + 40);
    v43 = 2;
    sub_1DACBA044();
    v18 = v3[6];
    v19 = *(v3 + 56);
    v43 = 3;
    sub_1DACBA044();
    v20 = v3[8];
    v21 = *(v3 + 72);
    v43 = 4;
    sub_1DACBA044();
    v22 = v3[10];
    v23 = *(v3 + 88);
    v43 = 5;
    sub_1DACBA044();
    v24 = v3[12];
    v25 = *(v3 + 104);
    v43 = 6;
    sub_1DACBA044();
    v27 = v3[14];
    v28 = v3[15];
    v43 = 7;
    sub_1DACBA024();
    v43 = *(v3 + 128);
    v42 = 8;
    sub_1DAA7F2E0();
    sub_1DACBA0E4();
    v29 = type metadata accessor for Quote();
    v30 = v29[13];
    v43 = 9;
    sub_1DACB7CC4();
    sub_1DAA804F4(&qword_1EE125288, MEMORY[0x1E6969530]);
    sub_1DACBA074();
    v31 = v29[14];
    v43 = 10;
    sub_1DACBA074();
    v32 = v29[15];
    v43 = 11;
    sub_1DACBA074();
    v43 = *(v3 + v29[16]);
    v42 = 12;
    v41[1] = sub_1DAA80600();
    sub_1DACBA074();
    v43 = *(v3 + v29[17]);
    v42 = 13;
    sub_1DACBA074();
    v43 = *(v3 + v29[18]);
    v42 = 14;
    sub_1DACBA074();
    v33 = (v3 + v29[19]);
    v34 = *v33;
    v35 = *(v33 + 8);
    v43 = 15;
    sub_1DACBA044();
    v36 = v29[20];
    v43 = 16;
    sub_1DACBA074();
    v37 = v29[21];
    v43 = 17;
    sub_1DACBA074();
    v38 = v29[22];
    v43 = 18;
    sub_1DACBA0E4();
    v39 = v29[23];
    v43 = 19;
    sub_1DACBA074();
    v40 = v29[24];
    v43 = 20;
    sub_1DACB7F54();
    sub_1DAA804F4(&qword_1EE123A00, MEMORY[0x1E6969BC0]);
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1DAA7DF08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 136) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

char *sub_1DAA7DF90(char *result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
    return result;
  }

  sub_1DAA49610();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[5];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(&v5[v11], a2, a2, v9);
  }

  v12 = sub_1DACB7F54();
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = sub_1DACB7CC4();
  v15 = *(*(v14 - 8) + 56);
  v16 = &v5[a4[8]];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_1DAA7E128(uint64_t *a1, uint64_t a2, int *a3)
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

  sub_1DAA49610();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[5];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_1DACB7F54();
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = sub_1DACB7CC4();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_1DAA7E294(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 136))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

void sub_1DAA7E2F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DAA7E358()
{
  result = qword_1EE120300[0];
  if (!qword_1EE120300[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE120300);
  }

  return result;
}

uint64_t sub_1DAA7E3B0(uint64_t a1)
{
  v3 = *(sub_1DACB7CC4() - 8);
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1DACB8204() - 8);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = v1[6];
  v12 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1DAA7E4E8(a1, v7, v8, v9, v10, v11, v1 + v4, v12);
}

unint64_t sub_1DAA7E490()
{
  result = qword_1EE1202F0;
  if (!qword_1EE1202F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1202F0);
  }

  return result;
}

uint64_t sub_1DAA7E4E8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (qword_1EE121838 != -1)
  {
LABEL_26:
    swift_once();
  }

  sub_1DAA41D64();
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1DACC1D20;
  v11 = MEMORY[0x1E69E6158];
  v12 = MEMORY[0x1E1277130](a1, MEMORY[0x1E69E6158]);
  v14 = v13;
  *(v10 + 56) = v11;
  *(v10 + 64) = sub_1DAA443C8();
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  sub_1DACB9914();
  sub_1DACB8C64();

  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = a1 + 40;
    v18 = MEMORY[0x1E69E7CC0];
    do
    {
      v19 = (v17 + 16 * v16);
      v20 = v16;
      while (1)
      {
        if (v20 >= v15)
        {
          __break(1u);
LABEL_25:
          __break(1u);
          goto LABEL_26;
        }

        v16 = v20 + 1;
        if (__OFADD__(v20, 1))
        {
          goto LABEL_25;
        }

        v22 = *(v19 - 1);
        v21 = *v19;
        sub_1DACB71E4();
        sub_1DAA7E934(v22, v21, &v59);
        a1 = v60;
        if (v60)
        {
          break;
        }

        sub_1DAA88788(v59, 0);
        ++v20;
        v19 += 2;
        if (v16 == v15)
        {
          goto LABEL_18;
        }
      }

      v50 = v17;
      v51 = a8;
      v52 = v59;
      v23 = v61;
      v24 = v62;
      v25 = v63;
      v26 = v64;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1DAA7EDB4(0, *(v18 + 2) + 1, 1, v18);
      }

      v28 = *(v18 + 2);
      v27 = *(v18 + 3);
      v29 = v52;
      if (v28 >= v27 >> 1)
      {
        v35 = sub_1DAA7EDB4((v27 > 1), v28 + 1, 1, v18);
        v33 = v23;
        v32 = v24;
        v31 = v25;
        v30 = v26;
        v18 = v35;
        v29 = v52;
      }

      else
      {
        v30 = v26;
        v31 = v25;
        v32 = v24;
        v33 = v23;
      }

      v17 = v50;
      a8 = v51;
      *(v18 + 2) = v28 + 1;
      v34 = &v18[48 * v28];
      *(v34 + 4) = v29;
      *(v34 + 5) = a1;
      *(v34 + 6) = v33;
      *(v34 + 7) = v32;
      *(v34 + 8) = v31;
      *(v34 + 9) = v30;
    }

    while (v16 != v15);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

LABEL_18:
  v36 = *(v18 + 2);
  v37 = MEMORY[0x1E69E7CC0];
  if (v36)
  {
    v59 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v36, 0);
    v37 = v59;
    v38 = (v18 + 40);
    do
    {
      v40 = *(v38 - 1);
      v39 = *v38;
      v59 = v37;
      v42 = *(v37 + 16);
      v41 = *(v37 + 24);
      sub_1DACB71E4();
      if (v42 >= v41 >> 1)
      {
        sub_1DAA5859C((v41 > 1), v42 + 1, 1);
        v37 = v59;
      }

      *(v37 + 16) = v42 + 1;
      v43 = v37 + 16 * v42;
      *(v43 + 32) = v40;
      *(v43 + 40) = v39;
      v38 += 6;
      --v36;
    }

    while (v36);
  }

  v44 = a2[5];
  v45 = a2[6];
  __swift_project_boxed_opaque_existential_1(a2 + 2, v44);
  v59 = a3;
  v60 = a4;
  v61 = a5;
  v62 = a6;
  (*(v45 + 8))(v37, &v59, a7, a8, v44, v45);

  *(swift_allocObject() + 16) = v18;
  v46 = sub_1DACB89D4();
  sub_1DAA58D6C(0, &qword_1EE11FCB0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69E5E28]);
  sub_1DACB8A64();

  v47 = sub_1DACB89D4();
  v48 = sub_1DACB8AA4();

  return v48;
}

uint64_t sub_1DAA7E8FC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAA7E934@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32[0] = 59;
  v32[1] = 0xE100000000000000;
  v31[2] = v32;
  sub_1DACB71E4();
  v7 = sub_1DAA87898(0x7FFFFFFFFFFFFFFFLL, 1, sub_1DAA88730, v31, a1, a2, v6);
  if (v7[2] != 3)
  {

    if (qword_1EE121838 == -1)
    {
LABEL_7:
      sub_1DAA41D64();
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1DACC1D20;
      *(v30 + 56) = MEMORY[0x1E69E6158];
      *(v30 + 64) = sub_1DAA443C8();
      *(v30 + 32) = a1;
      *(v30 + 40) = a2;
      sub_1DACB9914();
      sub_1DACB8C64();

      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
      return result;
    }

LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  if (!v7[2])
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = v7[4];
  v9 = v7[5];
  v10 = v7[6];
  v11 = v7[7];
  sub_1DACB71E4();
  v12 = MEMORY[0x1E1276EB0](v8, v9, v10, v11);
  v14 = v13;

  if (v7[2] < 2uLL)
  {
    __break(1u);
  }

  else
  {
    v16 = v7[8];
    v17 = v7[9];
    v18 = v7[10];
    v19 = v7[11];
    sub_1DACB71E4();
    v20 = MEMORY[0x1E1276EB0](v16, v17, v18, v19);
    v22 = v21;

    if (v7[2] >= 3uLL)
    {
      v23 = v7[12];
      v24 = v7[13];
      v25 = v7[14];
      v26 = v7[15];
      sub_1DACB71E4();

      v27 = MEMORY[0x1E1276EB0](v23, v24, v25, v26);
      v29 = v28;

      *a3 = v12;
      *(a3 + 8) = v14;
      *(a3 + 16) = v20;
      *(a3 + 24) = v22;
      *(a3 + 32) = v27;
      *(a3 + 40) = v29;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1DAA7EB84()
{
  result = qword_1EE1202F8;
  if (!qword_1EE1202F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1202F8);
  }

  return result;
}

char *sub_1DAA7EBD8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE123B38, MEMORY[0x1E69E67B0], MEMORY[0x1E69E6F90]);
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
    v10 = MEMORY[0x1E69E7CC0];
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

uint64_t storeEnumTagSinglePayload for Quote.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

char *sub_1DAA7EDB4(char *result, int64_t a2, char a3, char *a4)
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
    sub_1DAA58C60(0, &qword_1EE11CEE8, &type metadata for StockMetadataManager.CacheKey, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1DAA7EEEC()
{
  if (MEMORY[0x1E69E7D58])
  {
    sub_1DAB885E8();
  }
}

unint64_t sub_1DAA7EF28(char a1)
{
  result = 0x6563697270;
  switch(a1)
  {
    case 1:
      result = 0x6168436563697270;
      break;
    case 2:
    case 6:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0x756F487265746661;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
    case 14:
      result = 0x656B72614D657270;
      break;
    case 7:
      result = 0x79636E6572727563;
      break;
    case 8:
    case 9:
    case 10:
      result = 0x65676E6168637865;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x756F536563697270;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 15:
      result = 0xD000000000000018;
      break;
    case 16:
    case 18:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x73676E696E726165;
      break;
    case 19:
      result = 0x7243726576726573;
      break;
    case 20:
      result = 0x695474656B72616DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1DAA7F1F4()
{
  v5 = *v0;
  sub_1DAA57F64(0, &qword_1EE11D3F8, sub_1DAA7F334, MEMORY[0x1E69D6B18]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t sub_1DAA7F284(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

unint64_t sub_1DAA7F2E0()
{
  result = qword_1EE123380;
  if (!qword_1EE123380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123380);
  }

  return result;
}

void sub_1DAA7F334()
{
  if (!qword_1EE11FC80)
  {
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FC80);
    }
  }
}

uint64_t sub_1DAA7F39C()
{
  v5 = *v0;
  sub_1DAA57FC8(0, &qword_1EE11FE68, sub_1DAA7F50C, MEMORY[0x1E69D6B18]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  return sub_1DACB8B44();
}

uint64_t getEnumTagSinglePayload for Quote.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

void sub_1DAA7F50C()
{
  if (!qword_1EE11FCA0)
  {
    type metadata accessor for Chart(255);
    v0 = sub_1DACB91A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11FCA0);
    }
  }
}

uint64_t sub_1DAA7F574(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_1DACB8FB4();
  v26 = *(v10 - 8);
  v11 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1DACB9004();
  v14 = *(v25 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  v19 = *(a5 + 16);
  v20 = swift_allocObject();
  v20[2] = a6;
  v20[3] = sub_1DAA73914;
  v20[4] = v18;
  aBlock[4] = sub_1DAA80498;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_1;
  v21 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB8FD4();
  v27 = MEMORY[0x1E69E7CC0];
  sub_1DAA572B4(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v22 = MEMORY[0x1E69E7F60];
  sub_1DAA57F64(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57CA4(&qword_1EE123EB0, &qword_1EE123EC0, v22);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v17, v13, v21);
  _Block_release(v21);
  (*(v26 + 8))(v13, v10);
  (*(v14 + 8))(v17, v25);
}

uint64_t sub_1DAA7F898()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA7F8D0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1DAA7F910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1DACB8FB4();
  v28 = *(v12 - 8);
  v13 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DACB9004();
  v26 = *(v16 - 8);
  v27 = v16;
  v17 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = *(a5 + 24);
  v22 = swift_allocObject();
  v22[2] = a6;
  v22[3] = a5;
  v22[4] = sub_1DAA73914;
  v22[5] = v20;
  v22[6] = a3;
  v22[7] = a4;
  aBlock[4] = sub_1DAA81168;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_19;
  v23 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v24 = MEMORY[0x1E69E7F60];
  sub_1DAA57FC8(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57D08(&qword_1EE123EB0, &qword_1EE123EC0, v24);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v19, v15, v23);
  _Block_release(v23);
  (*(v28 + 8))(v15, v12);
  (*(v26 + 8))(v19, v27);
}

uint64_t sub_1DAA7FC4C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1DAA7FC84()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[5];

  v4 = v0[7];

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1DAA7FCD4(uint64_t a1, void (*a2)(void *))
{
  v2 = a2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    sub_1DACB71E4();
    v45 = MEMORY[0x1E69E7CC8];
    goto LABEL_41;
  }

  v5 = 0x51414453414ELL;
  *&v101[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA57914(0, v4, 0);
  v6 = 0;
  v93 = a1 + 32;
  v100 = *&v101[0];
  v94 = v4;
  do
  {
    v7 = v6;
    v8 = (v93 + 16 * v6);
    v99 = v7 + 1;
    v9 = *v8;
    v10 = v8[1];
    swift_bridgeObjectRetain_n();
    v11 = arc4random_uniform(0xFu);
    if (v11 <= 5)
    {
      v12 = 5;
    }

    else
    {
      v12 = v11;
    }

    v112 = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v12, 0);
    v13 = v112;
    do
    {
      v14 = sub_1DACB9414();
      if ((v14 & 0x8000000000000000) != 0)
      {
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
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }

      if (HIDWORD(v14))
      {
        goto LABEL_43;
      }

      arc4random_uniform(v14);
      sub_1DACB9434();
      v15 = sub_1DACB94C4();
      v112 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        v97 = v15;
        v20 = v5;
        v21 = v16;
        sub_1DAA5859C((v17 > 1), v18 + 1, 1);
        v16 = v21;
        v5 = v20;
        v15 = v97;
        v13 = v112;
      }

      *(v13 + 16) = v18 + 1;
      v19 = v13 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      --v12;
    }

    while (v12);
    sub_1DAA613E8();
    sub_1DAA572B4(&qword_1EE123E90, sub_1DAA613E8);
    v22 = sub_1DACB9214();
    v96 = v23;
    v98 = v22;

    v112 = v5;
    v113 = 0xE600000000000000;
    MEMORY[0x1E1276F20](58, 0xE100000000000000);
    MEMORY[0x1E1276F20](v9, v10);
    v95 = v5;
    v24 = qword_1EE122610;
    sub_1DACB71E4();
    if (v24 != -1)
    {
      swift_once();
    }

    v25 = qword_1EE13E388;
    v26 = v10;
    v27 = v9;
    if (*(qword_1EE13E388 + 16))
    {
      v28 = sub_1DAA4BF3C(v9, v10);
      v26 = v10;
      v27 = v9;
      if (v29)
      {
        v30 = (*(v25 + 56) + 16 * v28);
        v27 = *v30;
        v26 = v30[1];
      }
    }

    sub_1DACB71E4();
    v31 = qword_1EE13E390;
    v32 = v9;
    v33 = v10;
    if (*(qword_1EE13E390 + 16))
    {
      v34 = sub_1DAA4BF3C(v9, v10);
      v36 = v35;

      v32 = v9;
      v33 = v10;
      if ((v36 & 1) == 0)
      {
        goto LABEL_21;
      }

      v37 = (*(v31 + 56) + 16 * v34);
      v32 = *v37;
      v33 = v37[1];
      sub_1DACB71E4();
    }

LABEL_21:
    LODWORD(v103) = v112;
    *(&v103 + 3) = *(&v112 + 3);
    v38 = v100;
    *&v101[0] = v100;
    v40 = *(v100 + 16);
    v39 = *(v100 + 24);
    if (v40 >= v39 >> 1)
    {
      sub_1DAA57914((v39 > 1), v40 + 1, 1);
      v38 = *&v101[0];
    }

    *(v38 + 16) = v40 + 1;
    v100 = v38;
    v41 = v38 + 136 * v40;
    *(v41 + 32) = v95;
    *(v41 + 40) = 0xE600000000000000;
    *(v41 + 48) = v9;
    *(v41 + 56) = v10;
    *(v41 + 64) = v98;
    *(v41 + 72) = v96;
    v5 = 0x51414453414ELL;
    *(v41 + 80) = 0x51414453414ELL;
    *(v41 + 88) = 0xE600000000000000;
    *(v41 + 96) = 0;
    v42 = *(&v103 + 3);
    *(v41 + 97) = v103;
    *(v41 + 100) = v42;
    *(v41 + 104) = v27;
    *(v41 + 112) = v26;
    *(v41 + 120) = v32;
    *(v41 + 128) = v33;
    *(v41 + 152) = 0u;
    *(v41 + 136) = 0u;
    v6 = v99;
  }

  while (v99 != v94);
  v43 = 0;
  v44 = (sub_1DACB71E4() + 40);
  v45 = MEMORY[0x1E69E7CC8];
  v46 = 32;
  v47 = v100;
  do
  {
    v62 = *(v47 + 16);
    if (v43 == v62)
    {
      break;
    }

    if (v43 >= v62)
    {
      goto LABEL_44;
    }

    v64 = *(v44 - 1);
    v63 = *v44;
    v103 = *(v47 + v46);
    v65 = *(v47 + v46 + 16);
    v66 = *(v47 + v46 + 32);
    v67 = *(v47 + v46 + 64);
    v106 = *(v47 + v46 + 48);
    v107 = v67;
    v104 = v65;
    v105 = v66;
    v68 = *(v47 + v46 + 80);
    v69 = *(v47 + v46 + 96);
    v70 = *(v47 + v46 + 112);
    v111 = *(v47 + v46 + 128);
    v109 = v69;
    v110 = v70;
    v108 = v68;
    v112 = v64;
    v113 = v63;
    v116 = v105;
    v117 = v106;
    v114 = v103;
    v115 = v104;
    v122 = v111;
    v120 = v69;
    v121 = v70;
    v118 = v67;
    v119 = v68;
    sub_1DACB71E4();
    sub_1DAA806E4(&v103, v101);
    sub_1DAA80740(&v112, v101);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v72 = sub_1DAA4BF3C(v64, v63);
    v74 = v45[2];
    v75 = (v73 & 1) == 0;
    v76 = __OFADD__(v74, v75);
    v77 = v74 + v75;
    if (v76)
    {
      goto LABEL_45;
    }

    v78 = v73;
    if (v45[3] < v77)
    {
      sub_1DAA80804(v77, isUniquelyReferenced_nonNull_native);
      v72 = sub_1DAA4BF3C(v64, v63);
      if ((v78 & 1) != (v79 & 1))
      {
        goto LABEL_47;
      }

LABEL_35:
      if ((v78 & 1) == 0)
      {
        goto LABEL_36;
      }

      goto LABEL_26;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_35;
    }

    v90 = v72;
    sub_1DAB656FC();
    v72 = v90;
    if ((v78 & 1) == 0)
    {
LABEL_36:
      v45[(v72 >> 6) + 8] |= 1 << v72;
      v80 = (v45[6] + 16 * v72);
      *v80 = v64;
      v80[1] = v63;
      v81 = v45[7] + 136 * v72;
      v82 = v111;
      v84 = v109;
      v83 = v110;
      *(v81 + 80) = v108;
      *(v81 + 96) = v84;
      *(v81 + 112) = v83;
      *(v81 + 128) = v82;
      v86 = v106;
      v85 = v107;
      v87 = v105;
      *(v81 + 16) = v104;
      *(v81 + 32) = v87;
      *(v81 + 48) = v86;
      *(v81 + 64) = v85;
      *v81 = v103;
      sub_1DAA80C44(&v112);
      v88 = v45[2];
      v76 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (v76)
      {
        goto LABEL_46;
      }

      v45[2] = v89;
      goto LABEL_27;
    }

LABEL_26:
    v48 = v72;

    v49 = v45[7] + 136 * v48;
    v101[0] = *v49;
    v50 = *(v49 + 64);
    v52 = *(v49 + 16);
    v51 = *(v49 + 32);
    v101[3] = *(v49 + 48);
    v101[4] = v50;
    v101[1] = v52;
    v101[2] = v51;
    v54 = *(v49 + 96);
    v53 = *(v49 + 112);
    v55 = *(v49 + 80);
    v102 = *(v49 + 128);
    v101[6] = v54;
    v101[7] = v53;
    v101[5] = v55;
    *v49 = v103;
    v56 = v104;
    v57 = v105;
    v58 = v107;
    *(v49 + 48) = v106;
    *(v49 + 64) = v58;
    *(v49 + 16) = v56;
    *(v49 + 32) = v57;
    v59 = v108;
    v60 = v109;
    v61 = v110;
    *(v49 + 128) = v111;
    *(v49 + 96) = v60;
    *(v49 + 112) = v61;
    *(v49 + 80) = v59;
    sub_1DAA9B1C8(v101);
    sub_1DAA80C44(&v112);
LABEL_27:
    ++v43;
    v44 += 2;
    v46 += 136;
    v47 = v100;
  }

  while (v94 != v43);
  v2 = a2;
LABEL_41:

  v2(v45);
}

unint64_t sub_1DAA803A8()
{
  result = qword_1EE123378;
  if (!qword_1EE123378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123378);
  }

  return result;
}

void sub_1DAA803FC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE600000000000000;
  v6 = 0x6465736F6C63;
  v7 = 0xE900000000000074;
  v8 = 0x656B72614D657270;
  if (v2 != 3)
  {
    v8 = 0x756F487265746661;
    v7 = 0xEA00000000007372;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1852141679;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_1DAA804AC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA804F4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1DAA8053C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1DAA80584()
{
  result = qword_1EE11FCA8;
  if (!qword_1EE11FCA8)
  {
    sub_1DAA58D6C(255, &qword_1EE11FCB0, &type metadata for StockMetadataManager.CacheEntry, MEMORY[0x1E69E5E28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FCA8);
  }

  return result;
}

unint64_t sub_1DAA80600()
{
  result = qword_1EE1237D8[0];
  if (!qword_1EE1237D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1237D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for QuoteSource(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1DAA80740(uint64_t a1, uint64_t a2)
{
  sub_1DAA807A4();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1DAA807A4()
{
  if (!qword_1ECBE6F70)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE6F70);
    }
  }
}

uint64_t sub_1DAA80804(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAA80BE4();
  v44 = a2;
  result = sub_1DACB9E84();
  v8 = result;
  if (*(v5 + 16))
  {
    v43 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 136 * v22;
      if (v44)
      {
        v45 = *(v26 + 8);
        v46 = *(v26 + 24);
        v47 = *v26;
        v48 = *(v26 + 40);
        v49 = *(v26 + 16);
        v50 = *(v26 + 56);
        v51 = *(v26 + 32);
        v53 = *(v26 + 64);
        v56 = *(v26 + 72);
        v52 = *(v26 + 80);
        v59 = *(v26 + 88);
        v54 = *(v26 + 48);
        v55 = *(v26 + 96);
        v27 = *(v26 + 104);
        v57 = v27;
        v58 = *(v26 + 120);
      }

      else
      {
        v61[0] = *v26;
        v28 = *(v26 + 64);
        v30 = *(v26 + 16);
        v29 = *(v26 + 32);
        v63 = *(v26 + 48);
        v64 = v28;
        v61[1] = v30;
        v62 = v29;
        v32 = *(v26 + 96);
        v31 = *(v26 + 112);
        v33 = *(v26 + 80);
        *&v66[32] = *(v26 + 128);
        *v66 = v32;
        *&v66[16] = v31;
        v65 = v33;
        v57 = *&v66[8];
        v58 = *&v66[24];
        v59 = *(&v33 + 1);
        v55 = v32;
        v56 = *(&v64 + 1);
        v53 = v64;
        v54 = v63;
        v51 = v62;
        v52 = v33;
        v48 = *(&v62 + 1);
        v49 = v30;
        v50 = *(&v63 + 1);
        v46 = *(&v30 + 1);
        v45 = *(&v61[0] + 1);
        v47 = *&v61[0];
        sub_1DACB71E4();
        sub_1DAA806E4(v61, v60);
      }

      v34 = *(v8 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v35 = -1 << *(v8 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v15 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v15 + 8 * v37);
          if (v41 != -1)
          {
            v16 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v36) & ~*(v15 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 136 * v16;
      *v18 = v47;
      *(v18 + 8) = v45;
      *(v18 + 16) = v49;
      *(v18 + 24) = v46;
      *(v18 + 32) = v51;
      *(v18 + 40) = v48;
      *(v18 + 48) = v54;
      *(v18 + 56) = v50;
      *(v18 + 64) = v53;
      *(v18 + 72) = v56;
      *(v18 + 80) = v52;
      *(v18 + 88) = v59;
      *(v18 + 96) = v55;
      *(v18 + 120) = v58;
      *(v18 + 104) = v57;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero((v5 + 64), ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

void sub_1DAA80BE4()
{
  if (!qword_1EE11F6D8)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F6D8);
    }
  }
}

uint64_t sub_1DAA80C44(uint64_t a1)
{
  sub_1DAA807A4();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAA80CA0@<X0>(void **a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  if (qword_1EE121838 != -1)
  {
LABEL_25:
    swift_once();
  }

  sub_1DAA41D64();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1DACC1D20;
  v6 = MEMORY[0x1E69E6158];
  v51 = v4;
  v7 = sub_1DACB9134();
  v9 = v8;
  *(v5 + 56) = v6;
  *(v5 + 64) = sub_1DAA443C8();
  *(v5 + 32) = v7;
  *(v5 + 40) = v9;
  sub_1DACB9914();
  sub_1DACB8C64();

  v11 = *(a2 + 16);
  if (v11)
  {
    v4 = (a2 + 72);
    v12 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v52 = v11;
      v20 = *(v4 - 5);
      v21 = *(v4 - 4);
      v22 = *(v4 - 1);
      v23 = *v4;
      v24 = *(v4 - 3);
      v25 = *(v4 - 2);
      *&v71 = v20;
      *(&v71 + 1) = v21;
      swift_bridgeObjectRetain_n();
      sub_1DACB71E4();
      sub_1DACB71E4();
      MEMORY[0x1E1276F20](59, 0xE100000000000000);
      MEMORY[0x1E1276F20](v24, v25);
      MEMORY[0x1E1276F20](59, 0xE100000000000000);
      MEMORY[0x1E1276F20](v22, v23);
      v26 = *(&v71 + 1);
      a2 = v71;
      if (v51[2])
      {
        v27 = sub_1DAA4BF3C(v20, v21);
        if (v28)
        {
          v29 = (v51[7] + 136 * v27);
          v53 = *v29;
          v30 = v29[3];
          v31 = v29[4];
          v32 = v29[2];
          v54 = v29[1];
          v55 = v32;
          v56 = v30;
          v57 = v31;
          v33 = v29[5];
          v34 = v29[6];
          v35 = v29[7];
          v61 = *(v29 + 16);
          v59 = v34;
          v60 = v35;
          v58 = v33;
          memmove(&__dst, v29, 0x88uLL);
          nullsub_1(&__dst);
          sub_1DAA806E4(&v53, &v71);
        }

        else
        {
          sub_1DAAD4FA4(&__dst);
        }

        v77 = v68;
        v78 = v69;
        v79 = v70;
        v73 = v64;
        v74 = v65;
        v75 = v66;
        v76 = v67;
        v71 = __dst;
        v72 = v63;
      }

      else
      {
        sub_1DAAD4FA4(&v71);
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v80 = v12;
      v38 = sub_1DAA4BF3C(a2, v26);
      v39 = v12[2];
      v40 = (v37 & 1) == 0;
      v41 = v39 + v40;
      if (__OFADD__(v39, v40))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v42 = v37;
      if (v12[3] >= v41)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAB65F54();
        }
      }

      else
      {
        sub_1DAA81984(v41, isUniquelyReferenced_nonNull_native);
        v43 = sub_1DAA4BF3C(a2, v26);
        if ((v42 & 1) != (v44 & 1))
        {
          result = sub_1DACBA1F4();
          __break(1u);
          return result;
        }

        v38 = v43;
      }

      v68 = v77;
      v69 = v78;
      v70 = v79;
      v64 = v73;
      v65 = v74;
      v66 = v75;
      v67 = v76;
      __dst = v71;
      v63 = v72;
      if (v42)
      {

        v12 = v80;
        v13 = v80[7] + 136 * v38;
        v53 = *v13;
        v14 = *(v13 + 64);
        v16 = *(v13 + 16);
        v15 = *(v13 + 32);
        v56 = *(v13 + 48);
        v57 = v14;
        v54 = v16;
        v55 = v15;
        v18 = *(v13 + 96);
        v17 = *(v13 + 112);
        v19 = *(v13 + 80);
        v61 = *(v13 + 128);
        v59 = v18;
        v60 = v17;
        v58 = v19;
        *(v13 + 80) = v67;
        *(v13 + 96) = v68;
        *(v13 + 112) = v69;
        *(v13 + 128) = v70;
        *(v13 + 16) = v63;
        *(v13 + 32) = v64;
        *(v13 + 48) = v65;
        *(v13 + 64) = v66;
        *v13 = __dst;
        sub_1DAA88870(&v53);
      }

      else
      {
        v12 = v80;
        v80[(v38 >> 6) + 8] |= 1 << v38;
        v45 = (v12[6] + 16 * v38);
        *v45 = a2;
        v45[1] = v26;
        v46 = v12[7] + 136 * v38;
        *v46 = __dst;
        *(v46 + 64) = v66;
        *(v46 + 48) = v65;
        *(v46 + 32) = v64;
        *(v46 + 16) = v63;
        *(v46 + 128) = v70;
        *(v46 + 112) = v69;
        *(v46 + 96) = v68;
        *(v46 + 80) = v67;

        v47 = v12[2];
        v48 = __OFADD__(v47, 1);
        v49 = v47 + 1;
        if (v48)
        {
          goto LABEL_24;
        }

        v12[2] = v49;
      }

      v4 += 6;
      v11 = v52 - 1;
      if (v52 == 1)
      {
        goto LABEL_22;
      }
    }
  }

  v12 = MEMORY[0x1E69E7CC8];
LABEL_22:
  *a3 = v12;
  return result;
}

void sub_1DAA81178()
{
  if (!qword_1EE11FC88)
  {
    sub_1DAA5ECCC(255, &qword_1EE11FC98, type metadata accessor for Quote);
    sub_1DAA5ECCC(255, &qword_1EE11FCA0, type metadata accessor for Chart);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FC88);
    }
  }
}

void sub_1DAA81220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a3;
  v11 = sub_1DACB7CC4();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a1 + 16);
  if (v16)
  {
    v34 = a4;
    v35 = a5;
    v36 = a6;
    v38 = MEMORY[0x1E69E7CC0];
    sub_1DACB9D64();
    v17 = *(a2 + 16);
    v33 = a1;
    v18 = (a1 + 40);
    do
    {
      v19 = *v18;
      v18 += 2;
      sub_1DACB71E4();
      sub_1DACB7CB4();
      v20 = sub_1DACB8594();
      v21 = *(v20 + 48);
      v22 = *(v20 + 52);
      swift_allocObject();
      sub_1DACB8584();
      sub_1DAA57FC8(0, &qword_1EE11D418, type metadata accessor for Chart, MEMORY[0x1E69D6B18]);
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      sub_1DACB8B44();

      (*(v12 + 8))(v15, v11);
      sub_1DACB9D34();
      v26 = *(v38 + 16);
      sub_1DACB9D74();
      sub_1DACB9D84();
      sub_1DACB9D44();
      --v16;
    }

    while (v16);
    a5 = v35;
    a6 = v36;
    a1 = v33;
    a4 = v34;
  }

  v27 = sub_1DACB89D4();
  type metadata accessor for Chart(0);
  sub_1DACB8934();

  *(swift_allocObject() + 16) = a1;
  sub_1DACB71E4();
  v28 = sub_1DACB89D4();
  sub_1DAA7F50C();
  sub_1DACB8A54();

  v29 = swift_allocObject();
  *(v29 + 16) = v37;
  *(v29 + 24) = a4;
  sub_1DACB71F4();
  v30 = sub_1DACB89D4();
  sub_1DACB8A64();

  v31 = swift_allocObject();
  *(v31 + 16) = a5;
  *(v31 + 24) = a6;
  sub_1DACB71F4();
  v32 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAA815BC()
{
  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1DAA81648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1DACB8FB4();
  v25 = *(v10 - 8);
  v11 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1DACB9004();
  v14 = *(v24 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v17 = &v23 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a5 + 16);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a2;
  v19[4] = a3;
  v19[5] = a4;
  aBlock[4] = sub_1DAA82974;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_41;
  v20 = _Block_copy(aBlock);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB8FD4();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAA5738C(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v21 = MEMORY[0x1E69E7F60];
  sub_1DAA58220(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA57EFC(&qword_1EE123EB0, &qword_1EE123EC0, v21);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v17, v13, v20);
  _Block_release(v20);
  (*(v25 + 8))(v13, v10);
  (*(v14 + 8))(v17, v24);
}

uint64_t sub_1DAA81944()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1DAA81984(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1DAA82848();
  v43 = a2;
  result = sub_1DACB9E84();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 136 * v22;
      if (v43)
      {
        v58 = *(v26 + 80);
        v59 = *(v26 + 96);
        v60 = *(v26 + 112);
        v61 = *(v26 + 128);
        v54 = *(v26 + 16);
        v55 = *(v26 + 32);
        v56 = *(v26 + 48);
        v57 = *(v26 + 64);
        v53 = *v26;
      }

      else
      {
        v44 = *v26;
        v27 = *(v26 + 64);
        v29 = *(v26 + 16);
        v28 = *(v26 + 32);
        v47 = *(v26 + 48);
        v48 = v27;
        v45 = v29;
        v46 = v28;
        v31 = *(v26 + 96);
        v30 = *(v26 + 112);
        v32 = *(v26 + 80);
        v52 = *(v26 + 128);
        v50 = v31;
        v51 = v30;
        v49 = v32;
        sub_1DACB71E4();
        sub_1DAB69984(&v44, &v53);
        v59 = v50;
        v60 = v51;
        v61 = v52;
        v55 = v46;
        v56 = v47;
        v57 = v48;
        v58 = v49;
        v53 = v44;
        v54 = v45;
      }

      v33 = *(v8 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 136 * v16;
      *(v18 + 80) = v58;
      *(v18 + 96) = v59;
      *(v18 + 112) = v60;
      *(v18 + 128) = v61;
      *(v18 + 16) = v54;
      *(v18 + 32) = v55;
      *(v18 + 48) = v56;
      *(v18 + 64) = v57;
      *v18 = v53;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1DAA81D24(void (*a1)(uint64_t), uint64_t a2, void (*a3)(void), unint64_t a4)
{
  v111 = a4;
  v99 = a3;
  v114 = type metadata accessor for Chart.Entry(0);
  v6 = *(v114 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v114);
  v113 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v87 - v10;
  sub_1DAA58220(0, &qword_1EE1239E8, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v95 = &v87 - v14;
  v108 = sub_1DACB7F54();
  v105 = *(v108 - 8);
  v15 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v108);
  v104 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA82998();
  v106 = v17;
  v18 = *(*(v17 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v94 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v93 = &v87 - v21;
  sub_1DAA49610();
  v92 = v22;
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22);
  v107 = &v87 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for Chart(0);
  v25 = *(*(v103 - 8) + 64);
  v26 = MEMORY[0x1EEE9AC00](v103);
  v102 = (&v87 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v91 = &v87 - v28;
  v29 = sub_1DACB7CC4();
  v110 = *(v29 - 8);
  v30 = v110[8];
  v31 = MEMORY[0x1EEE9AC00](v29);
  v101 = &v87 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v112 = &v87 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v37 = &v87 - v36;
  v38 = MEMORY[0x1EEE9AC00](v35);
  v109 = &v87 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v87 - v40;
  sub_1DAA82C34(1);
  v42 = arc4random_uniform(0x64u);
  if (v42 <= 1)
  {
    v43 = 1;
  }

  else
  {
    v43 = v42;
  }

  v116 = v43;
  v117 = v41;
  v100 = v41;
  v44 = sub_1DAA82DE4(sub_1DAA83570, v115, 0, 10);
  v45 = v44;
  v46 = *(v44 + 16);
  if (!v46)
  {

    sub_1DACAB518();
    v86 = swift_allocError();
    v99();

    v82 = v110[1];
    return (v82)(v100, v29);
  }

  v90 = v43;
  v87 = a2;
  v88 = a1;
  v47 = v6;
  v111 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v48 = v44 + v111;
  v49 = v29;
  v50 = v110;
  v51 = v110 + 2;
  v52 = v110[2];
  v52(v37, v44 + v111, v49);
  v53 = v50[4];
  v99 = (v50 + 4);
  v98 = v53;
  v53(v109, v37, v49);
  v54 = *(v47 + 72);
  v97 = v51;
  v96 = v52;
  v52(v112, v48 + v54 * (v46 - 1), v49);
  sub_1DAA5738C(&qword_1EE123A48, MEMORY[0x1E6969530]);
  result = sub_1DACB9244();
  if (result)
  {
    v56 = v93;
    v57 = v96;
    v96(v93, v109, v49);
    v58 = v106;
    v57(v56 + *(v106 + 48), v112, v49);
    v59 = v94;
    sub_1DAA835FC(v56, v94, sub_1DAA82998);
    v89 = *(v58 + 48);
    v60 = v107;
    v98(v107, v59, v49);
    v61 = v110[1];
    ++v110;
    (v61)(v59 + v89, v49);
    sub_1DAA83734(v56, v59, sub_1DAA82998);
    v98(v60 + *(v92 + 36), v59 + *(v106 + 48), v49);
    v99 = v61;
    (v61)(v59, v49);
    v62 = v110;
    v63 = v95;
    sub_1DACB7F14();
    v64 = v105;
    v65 = v108;
    result = (*(v105 + 48))(v63, 1, v108);
    v106 = v49;
    if (result != 1)
    {
      v98 = (v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
      v66 = v90 + 5.0;
      v67 = v104;
      (*(v64 + 32))(v104, v63, v65);
      v68 = v101;
      sub_1DACB7CB4();
      v69 = v102;
      *v102 = v45;
      v70 = v103;
      sub_1DAA835FC(v107, &v69[*(v103 + 20)], sub_1DAA49610);
      v71 = &v69[v70[6]];
      *v71 = v66;
      *(v71 + 8) = 0;
      (*(v64 + 16))(&v69[v70[7]], v67, v108);
      v96(&v69[v70[8]], v68, v106);
      result = sub_1DACB71E4();
      v72 = 0;
      v73 = MEMORY[0x1E69E7CC0];
      v74 = MEMORY[0x1E69E7CC0];
      v75 = v112;
      do
      {
        if (v72 >= *(v45 + 16))
        {
          __break(1u);
          goto LABEL_24;
        }

        sub_1DAA835FC(v48, v11, type metadata accessor for Chart.Entry);
        v76 = &v11[*(v114 + 36)];
        if ((v76[8] & 1) != 0 || *v76 <= 0.0)
        {
          result = sub_1DAA853A4(v11, type metadata accessor for Chart.Entry);
        }

        else
        {
          sub_1DAA83734(v11, v113, type metadata accessor for Chart.Entry);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v118 = v74;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1DAA83020(0, *(v74 + 16) + 1, 1);
            v74 = v118;
          }

          v79 = *(v74 + 16);
          v78 = *(v74 + 24);
          if (v79 >= v78 >> 1)
          {
            sub_1DAA83020(v78 > 1, v79 + 1, 1);
            v74 = v118;
          }

          *(v74 + 16) = v79 + 1;
          result = sub_1DAA83734(v113, v74 + v111 + v79 * v54, type metadata accessor for Chart.Entry);
          v75 = v112;
        }

        ++v72;
        v48 += v54;
      }

      while (v46 != v72);

      v80 = *(v74 + 16);

      v81 = v73;
      v29 = v106;
      v82 = v99;
      (v99)(v101, v106);
      (*(v105 + 8))(v104, v108);
      sub_1DAA853A4(v107, sub_1DAA49610);
      v83 = &unk_1F5680418;
      if (!v80)
      {
        v83 = v81;
      }

      v84 = v102;
      *(v102 + *(v103 + 36)) = v83;
      v85 = v91;
      sub_1DAA83734(v84, v91, type metadata accessor for Chart);
      v88(v85);
      sub_1DAA853A4(v85, type metadata accessor for Chart);
      (v82)(v75, v29);
      (v82)(v109, v29);
      return (v82)(v100, v29);
    }
  }

  else
  {
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1DAA82848()
{
  if (!qword_1EE11D018)
  {
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11D018);
    }
  }
}

uint64_t sub_1DAA828A8(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, a1[1]);
}

uint64_t sub_1DAA828F0()
{
  sub_1DAA58F08(0, &qword_1EE11FD58, MEMORY[0x1E69D61A8]);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  return sub_1DACB8D44();
}

uint64_t get_enum_tag_for_layout_string_10StocksCore5StockVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_1DAA82998()
{
  if (!qword_1EE123A50)
  {
    sub_1DACB7CC4();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE123A50);
    }
  }
}

uint64_t sub_1DAA82A00(void *a1)
{
  sub_1DAA83070(0, &qword_1EE11CF38, sub_1DAA830D8, &type metadata for StockMetadataManager.CacheEntry.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v15 - v7;
  v9 = v1[7];
  v32 = v1[6];
  v33 = v9;
  v34 = *(v1 + 16);
  v10 = v1[3];
  v28 = v1[2];
  v29 = v10;
  v11 = v1[5];
  v30 = v1[4];
  v31 = v11;
  v12 = v1[1];
  v26 = *v1;
  v27 = v12;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA83848(&v26, &v17);
  sub_1DAA830D8();
  sub_1DACBA304();
  v23 = v32;
  v24 = v33;
  v25 = v34;
  v19 = v28;
  v20 = v29;
  v21 = v30;
  v22 = v31;
  v17 = v26;
  v18 = v27;
  sub_1DAA8534C();
  sub_1DACBA074();
  v15[6] = v23;
  v15[7] = v24;
  v16 = v25;
  v15[2] = v19;
  v15[3] = v20;
  v15[4] = v21;
  v15[5] = v22;
  v15[0] = v17;
  v15[1] = v18;
  sub_1DAA87074(v15, &qword_1EE1201A8, MEMORY[0x1E69E6720], sub_1DAA837F0);
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1DAA82C34(uint64_t a1)
{
  v2 = sub_1DACB7CC4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  result = sub_1DACB7CB4();
  if (__OFSUB__(0, a1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((-a1 * 86400) >> 64 != (-86400 * a1) >> 63)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1DACB7BF4();
  result = sub_1DACB7B84();
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v11 <= -1.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v11 < 4294967300.0)
  {
    arc4random_uniform(v11);
    sub_1DACB7BF4();
    v12 = *(v3 + 8);
    v12(v7, v2);
    return (v12)(v9, v2);
  }

LABEL_11:
  __break(1u);
  return result;
}

size_t sub_1DAA82DE4(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a1;
  v25 = a2;
  v7 = type metadata accessor for Chart.Entry(0);
  v22 = *(v7 - 8);
  v8 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = a4;
  v11 = a4 - a3;
  if (__OFSUB__(a4, a3))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v12 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v13 = MEMORY[0x1E69E7CC0];
  if (v11 == -1)
  {
    return v13;
  }

  v27 = MEMORY[0x1E69E7CC0];
  result = sub_1DAA83020(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    v16 = 0;
    v13 = v27;
    while (v15 < v12)
    {
      v17 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        goto LABEL_20;
      }

      if (v16)
      {
        goto LABEL_26;
      }

      v18 = a3;
      v26 = a3;
      v24(&v26);
      if (v4)
      {
        goto LABEL_25;
      }

      v27 = v13;
      v19 = *(v13 + 16);
      v20 = *(v13 + 24);
      if (v19 >= v20 >> 1)
      {
        sub_1DAA83020(v20 > 1, v19 + 1, 1);
        v13 = v27;
      }

      *(v13 + 16) = v19 + 1;
      result = sub_1DAA7C62C(v10, v13 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v19, type metadata accessor for Chart.Entry);
      v16 = a3 == v23;
      if (a3 == v23)
      {
        a3 = 0;
      }

      else
      {
        ++a3;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_21;
        }
      }

      v4 = 0;
      ++v15;
      if (v17 == v12)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_24:
  __break(1u);
LABEL_25:

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

size_t sub_1DAA83020(size_t a1, int64_t a2, char a3)
{
  result = sub_1DAA8312C(a1, a2, a3, *v3, &qword_1EE11F4F8, type metadata accessor for Chart.Entry, type metadata accessor for Chart.Entry);
  *v3 = result;
  return result;
}

void sub_1DAA83070(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1DAA830D8()
{
  result = qword_1EE121730;
  if (!qword_1EE121730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121730);
  }

  return result;
}

size_t sub_1DAA8312C(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1DAA4932C(0, a5, a6, MEMORY[0x1E69E6F90]);
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

int *sub_1DAA83324@<X0>(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1DACB7CC4();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = a2 + v11;
  sub_1DACB7BF4();
  v13 = arc4random_uniform(0xAu);
  if (v13 <= 1)
  {
    v14 = 1;
  }

  else
  {
    v14 = v13;
  }

  v15 = v14;
  v16 = arc4random_uniform(0xAu);
  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v18 = v17;
  v19 = arc4random_uniform(0xAu);
  if (v19 <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = v19;
  }

  v21 = v20;
  v22 = arc4random_uniform(0xAu);
  if (v22 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  v24 = v12 - v15 / v18;
  v25 = v12 + v21 / v23;
  (*(v7 + 32))(a3, v10, v6);
  result = type metadata accessor for Chart.Entry(0);
  v27 = a3 + result[5];
  *v27 = v24;
  *(v27 + 8) = 0;
  v28 = a3 + result[6];
  *v28 = v25;
  *(v28 + 8) = 0;
  v29 = a3 + result[7];
  *v29 = v12 + 2.0;
  *(v29 + 8) = 0;
  v30 = a3 + result[8];
  *v30 = v12 + -2.0;
  *(v30 + 8) = 0;
  v31 = a3 + result[9];
  *v31 = v11 + 10000.0;
  *(v31 + 8) = 0;
  return result;
}

unint64_t sub_1DAA8351C()
{
  result = qword_1EE121720;
  if (!qword_1EE121720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121720);
  }

  return result;
}

uint64_t sub_1DAA83594(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA835FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA83664(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA836CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA83734(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DAA8379C()
{
  result = qword_1EE121728;
  if (!qword_1EE121728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE121728);
  }

  return result;
}

void sub_1DAA837F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for Stock);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1DAA83848(uint64_t a1, uint64_t a2)
{
  sub_1DAA837F0(0, &qword_1EE1201A8, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAA838C8()
{
  v1 = v0;
  sub_1DAA492B4();
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v193 = &v169 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v178 = &v169 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v177 = &v169 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v175 = &v169 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v192 = &v169 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v194 = &v169 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v189 = &v169 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v188 = &v169 - v18;
  v196 = sub_1DACB7CC4();
  v198 = *(v196 - 8);
  v19 = *(v198 + 64);
  v20 = MEMORY[0x1EEE9AC00](v196);
  v176 = &v169 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v171 = &v169 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v170 = &v169 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v174 = &v169 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v173 = &v169 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v172 = &v169 - v30;
  v31 = sub_1DACB7984();
  v190 = *(v31 - 8);
  v191 = v31;
  v32 = *(v190 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v187 = &v169 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1DACB79A4();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v169 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1DACB7E44();
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39 - 8);
  sub_1DAA7E2F0(0, &qword_1EE123A70, sub_1DAA852F8, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
  v42 = v41;
  v43 = *(v41 - 8);
  v44 = *(v43 + 64);
  v45 = MEMORY[0x1EEE9AC00](v41);
  v183 = &v169 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x1EEE9AC00](v45);
  v184 = &v169 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v51 = &v169 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v53 = &v169 - v52;
  sub_1DACB7D84();
  v182 = sub_1DAA852F8();
  sub_1DACB7924();
  v204 = 2;
  sub_1DAA854C4();
  v55 = v54;
  v56 = sub_1DAA804F4(&qword_1EE11F688, sub_1DAA854C4);
  v181 = v55;
  v180 = v56;
  sub_1DACB7994();
  MEMORY[0x1E1275420](v38, v42);
  v57 = *(v35 + 8);
  v186 = v34;
  v185 = v35 + 8;
  v57(v38, v34);
  v58 = v57;
  v59 = *(v43 + 8);
  v197 = v43 + 8;
  v195 = v59;
  v59(v51, v42);
  v204 = 0;
  v205 = 0xE000000000000000;
  v60 = *(v1 + 8);
  v199 = v53;
  v200 = v42;
  if (v60)
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v203 = *v1;
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v201, v202);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v61 = v204;
  v62 = v205;
  v204 = 0;
  v205 = 0xE000000000000000;
  if (v1[3])
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v203 = v1[2];
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v201, v202);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v64 = v204;
  v63 = v205;
  v204 = v61;
  v205 = v62;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v64, v63);

  v65 = v204;
  v66 = v205;
  v204 = 0;
  v205 = 0xE000000000000000;
  v67 = v1[15];
  if (v67)
  {
    v201 = v1[14];
    v202 = v67;
    sub_1DACB9DD4();
  }

  else
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v68 = v204;
  v69 = v205;
  v204 = v65;
  v205 = v66;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v68, v69);

  v70 = v205;
  v179 = v204;
  v204 = 0;
  v205 = 0xE000000000000000;
  v71 = v1[4];
  LOBYTE(v68) = *(v1 + 40);
  sub_1DACB7D84();
  v72 = v183;
  sub_1DACB7924();
  v201 = 3;
  sub_1DACB7994();
  v73 = v200;
  MEMORY[0x1E1275420](v38, v200);
  v58(v38, v186);
  v74 = v195;
  v195(v72, v73);
  v75 = v187;
  sub_1DACB7974();
  v76 = v184;
  MEMORY[0x1E1275410](v75, v73);
  (*(v190 + 8))(v75, v191);
  v74(v51, v73);
  if (v68)
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
    v74(v76, v73);
  }

  else
  {
    v203 = v71;
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v201, v202);
    v74(v76, v73);
  }

  v77 = v198;
  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v78 = v204;
  v79 = v205;
  v204 = v179;
  v205 = v70;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v78, v79);

  v81 = v204;
  v80 = v205;
  v204 = 0;
  v205 = 0xE000000000000000;
  v82 = type metadata accessor for Quote();
  if (*(v1 + v82[16]) == 7)
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    LOBYTE(v201) = *(v1 + v82[16]);
    sub_1DACB9DD4();
  }

  v83 = v204;
  v84 = v205;
  v204 = v81;
  v205 = v80;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v83, v84);

  v190 = v204;
  v191 = v205;
  if (*(v1 + 56) == 1)
  {
    if (*(v1 + 72) == 1 && *(v1 + v82[17]) == 7)
    {
      v187 = 0xEA00000000006C69;
      v186 = 0x6E203A7265746661;
      goto LABEL_29;
    }

    v204 = 0;
    v205 = 0xE000000000000000;
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v85 = v1[6];
    v204 = 0;
    v205 = 0xE000000000000000;
    v203 = v85;
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v201, v202);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v86 = v204;
  v87 = v205;
  v204 = 0x28203A7265746661;
  v205 = 0xE800000000000000;
  MEMORY[0x1E1276F20](v86, v87);

  v89 = v204;
  v88 = v205;
  v204 = 0;
  v205 = 0xE000000000000000;
  if (v1[9])
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v203 = v1[8];
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v201, v202);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v90 = v204;
  v91 = v205;
  v204 = v89;
  v205 = v88;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v90, v91);

  v93 = v204;
  v92 = v205;
  v204 = 0;
  v205 = 0xE000000000000000;
  if (*(v1 + v82[17]) == 7)
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    LOBYTE(v201) = *(v1 + v82[17]);
    sub_1DACB9DD4();
  }

  v94 = v204;
  v95 = v205;
  v204 = v93;
  v205 = v92;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v94, v95);

  sub_1DACB71E4();
  MEMORY[0x1E1276F20](41, 0xE100000000000000);

  v186 = v204;
  v187 = v205;
LABEL_29:
  if (*(v1 + 88) == 1)
  {
    if (*(v1 + 104) == 1 && *(v1 + v82[18]) == 7)
    {
      v185 = 0xE800000000000000;
      v96 = 0x6C696E203A657270;
      v97 = &v206;
      goto LABEL_42;
    }

    v204 = 0;
    v205 = 0xE000000000000000;
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v98 = v1[10];
    v204 = 0;
    v205 = 0xE000000000000000;
    v203 = v98;
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v201, v202);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v99 = v204;
  v100 = v205;
  v204 = 0x28203A657270;
  v205 = 0xE600000000000000;
  MEMORY[0x1E1276F20](v99, v100);

  v102 = v204;
  v101 = v205;
  v204 = 0;
  v205 = 0xE000000000000000;
  if (v1[13])
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v203 = v1[12];
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v201, v202);
  }

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v103 = v204;
  v104 = v205;
  v204 = v102;
  v205 = v101;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v103, v104);

  v106 = v204;
  v105 = v205;
  v204 = 0;
  v205 = 0xE000000000000000;
  if (*(v1 + v82[18]) == 7)
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    LOBYTE(v201) = *(v1 + v82[18]);
    sub_1DACB9DD4();
  }

  v107 = v204;
  v108 = v205;
  v204 = v106;
  v205 = v105;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v107, v108);

  sub_1DACB71E4();
  MEMORY[0x1E1276F20](41, 0xE100000000000000);

  v96 = v205;
  v184 = v204;
  v97 = &v207;
LABEL_42:
  *(v97 - 32) = v96;
  v204 = 0;
  v205 = 0xE000000000000000;
  LOBYTE(v201) = *(v1 + 128);
  sub_1DACB9DD4();
  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v109 = v204;
  v110 = v205;
  v204 = 0x203A74656B72616DLL;
  v205 = 0xE900000000000028;
  MEMORY[0x1E1276F20](v109, v110);

  v112 = v204;
  v111 = v205;
  v204 = 0;
  v205 = 0xE000000000000000;
  v113 = v188;
  sub_1DAA89B98(v1 + v82[13], v188, sub_1DAA492B4);
  v114 = *(v77 + 48);
  v115 = v196;
  if (v114(v113, 1, v196) == 1)
  {
    sub_1DAA89DF0(v113, sub_1DAA492B4);
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v116 = v172;
    (*(v77 + 32))(v172, v113, v115);
    sub_1DACB9DD4();
    (*(v77 + 8))(v116, v115);
  }

  MEMORY[0x1E1276F20](3026478, 0xE300000000000000);
  v117 = v189;
  sub_1DAA89B98(v1 + v82[14], v189, sub_1DAA492B4);
  if (v114(v117, 1, v115) == 1)
  {
    sub_1DAA89DF0(v117, sub_1DAA492B4);
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v118 = v173;
    (*(v77 + 32))(v173, v117, v115);
    sub_1DACB9DD4();
    (*(v77 + 8))(v118, v115);
  }

  v119 = v115;
  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v120 = v204;
  v121 = v205;
  v204 = v112;
  v205 = v111;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v120, v121);

  v123 = v204;
  v122 = v205;
  v204 = 0;
  v205 = 0xE000000000000000;
  v124 = v194;
  sub_1DAA89B98(v1 + v82[15], v194, sub_1DAA492B4);
  if (v114(v124, 1, v119) == 1)
  {
    sub_1DAA89DF0(v124, sub_1DAA492B4);
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v125 = v198;
    v126 = v174;
    (*(v198 + 32))(v174, v124, v119);
    sub_1DACB9DD4();
    (*(v125 + 8))(v126, v119);
  }

  v194 = 0x73676E696E726165;
  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v127 = v204;
  v128 = v205;
  v204 = v123;
  v205 = v122;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v127, v128);

  v130 = v204;
  v129 = v205;
  v131 = v82[24];
  sub_1DACB7F54();
  sub_1DAA804F4(&qword_1EE1239F0, MEMORY[0x1E6969BC0]);
  v132 = sub_1DACBA114();
  v134 = v133;
  v204 = v130;
  v205 = v129;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v132, v134);

  sub_1DACB71E4();
  MEMORY[0x1E1276F20](41, 0xE100000000000000);

  v188 = v204;
  v189 = v205;
  v135 = v82[20];
  v136 = v192;
  sub_1DAA89B98(v1 + v135, v192, sub_1DAA492B4);
  LODWORD(v129) = v114(v136, 1, v119);
  sub_1DAA89DF0(v136, sub_1DAA492B4);
  if (v129 == 1 && (v137 = v175, sub_1DAA89B98(v1 + v82[21], v175, sub_1DAA492B4), v138 = v114(v137, 1, v119), sub_1DAA89DF0(v137, sub_1DAA492B4), v138 == 1))
  {
    v139 = 0xED00006C696E203ALL;
  }

  else
  {
    v204 = 0;
    v205 = 0xE000000000000000;
    sub_1DACB9C94();
    MEMORY[0x1E1276F20](0x73676E696E726165, 0xEA0000000000203ALL);
    v140 = v177;
    sub_1DAA89B98(v1 + v135, v177, sub_1DAA492B4);
    if (v114(v140, 1, v119) == 1)
    {
      sub_1DAA89DF0(v140, sub_1DAA492B4);
      MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
    }

    else
    {
      v141 = v198;
      v142 = v170;
      (*(v198 + 32))(v170, v140, v119);
      sub_1DACB9DD4();
      (*(v141 + 8))(v142, v119);
    }

    MEMORY[0x1E1276F20](3026478, 0xE300000000000000);
    v143 = v178;
    sub_1DAA89B98(v1 + v82[21], v178, sub_1DAA492B4);
    if (v114(v143, 1, v119) == 1)
    {
      sub_1DAA89DF0(v143, sub_1DAA492B4);
      MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
    }

    else
    {
      v144 = v198;
      v145 = v171;
      (*(v198 + 32))(v171, v143, v119);
      sub_1DACB9DD4();
      (*(v144 + 8))(v145, v119);
    }

    v139 = v205;
    v194 = v204;
  }

  v192 = v139;
  v204 = 0;
  v205 = 0xE000000000000000;
  v146 = (v1 + v82[19]);
  if (v146[1])
  {
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v203 = *v146;
    sub_1DAA85598();
    sub_1DACB74E4();
    MEMORY[0x1E1276F20](v201, v202);
  }

  MEMORY[0x1E1276F20](2108531, 0xE300000000000000);
  v147 = v204;
  v148 = v205;
  v204 = 0x3A68736572666572;
  v205 = 0xEA00000000002820;
  MEMORY[0x1E1276F20](v147, v148);

  v150 = v204;
  v149 = v205;
  v204 = 0x20746E65696C63;
  v205 = 0xE700000000000000;
  v151 = v82[22];
  sub_1DAA804F4(&qword_1EE123A30, MEMORY[0x1E6969530]);
  v152 = v196;
  v153 = sub_1DACBA114();
  MEMORY[0x1E1276F20](v153);

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  v154 = v204;
  v155 = v205;
  v204 = v150;
  v205 = v149;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v154, v155);

  v157 = v204;
  v156 = v205;
  v204 = 0;
  v205 = 0xE000000000000000;
  MEMORY[0x1E1276F20](0x20726576726573, 0xE700000000000000);
  v158 = v193;
  sub_1DAA89B98(v1 + v82[23], v193, sub_1DAA492B4);
  if (v114(v158, 1, v152) == 1)
  {
    sub_1DAA89DF0(v158, sub_1DAA492B4);
    MEMORY[0x1E1276F20](7104878, 0xE300000000000000);
  }

  else
  {
    v159 = v198;
    v160 = v176;
    (*(v198 + 32))(v176, v158, v152);
    sub_1DACB9DD4();
    (*(v159 + 8))(v160, v152);
  }

  v162 = v199;
  v161 = v200;
  v163 = v204;
  v164 = v205;
  v204 = v157;
  v205 = v156;
  sub_1DACB71E4();
  MEMORY[0x1E1276F20](v163, v164);

  sub_1DACB71E4();
  MEMORY[0x1E1276F20](41, 0xE100000000000000);

  v166 = v204;
  v165 = v205;
  v204 = 0;
  v205 = 0xE000000000000000;
  sub_1DACB9C94();

  v204 = 0x2865746F7551;
  v205 = 0xE600000000000000;
  MEMORY[0x1E1276F20](v190, v191);

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  MEMORY[0x1E1276F20](v186, v187);

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  MEMORY[0x1E1276F20](v184, v185);

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  MEMORY[0x1E1276F20](v188, v189);

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  MEMORY[0x1E1276F20](v194, v192);

  MEMORY[0x1E1276F20](8236, 0xE200000000000000);
  MEMORY[0x1E1276F20](v166, v165);

  MEMORY[0x1E1276F20](41, 0xE100000000000000);
  v167 = v204;
  v195(v162, v161);
  return v167;
}

unint64_t sub_1DAA852F8()
{
  result = qword_1EE11FCF0;
  if (!qword_1EE11FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11FCF0);
  }

  return result;
}

unint64_t sub_1DAA8534C()
{
  result = qword_1EE11D7A8;
  if (!qword_1EE11D7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D7A8);
  }

  return result;
}

uint64_t sub_1DAA853A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA85404(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA85464(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1DAA854C4()
{
  if (!qword_1EE11F680)
  {
    v0 = sub_1DACB9EC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F680);
    }
  }
}

_WORD *storeEnumTagSinglePayload for YahooChartOperation.OperationError(_WORD *result, int a2, int a3)
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

unint64_t sub_1DAA85598()
{
  result = qword_1EE123A78;
  if (!qword_1EE123A78)
  {
    sub_1DAA7E2F0(255, &qword_1EE123A70, sub_1DAA852F8, MEMORY[0x1E69E63B0], MEMORY[0x1E6968E78]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123A78);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for YahooChartOperation.OperationError(unsigned int *a1, int a2)
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

uint64_t sub_1DAA85678(void *a1)
{
  sub_1DAA85948(0, &qword_1EE11CF08, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = v22 - v7;
  v9 = *v1;
  v10 = v1[1];
  v11 = v1[2];
  v28 = v1[3];
  v29 = v11;
  v12 = v1[4];
  v26 = v1[5];
  v27 = v12;
  v13 = v1[6];
  v24 = v1[7];
  v25 = v13;
  v23 = *(v1 + 64);
  v14 = v1[10];
  v22[7] = v1[9];
  v22[8] = v14;
  v15 = v1[12];
  v22[5] = v1[11];
  v22[6] = v15;
  v16 = v1[14];
  v22[3] = v1[13];
  v22[4] = v16;
  v17 = v1[16];
  v22[1] = v1[15];
  v22[2] = v17;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA85E4C();
  sub_1DACBA304();
  v40 = 0;
  v19 = v30;
  sub_1DACBA094();
  if (!v19)
  {
    v20 = v23;
    v39 = 1;
    sub_1DACBA094();
    v38 = 2;
    sub_1DACBA094();
    v37 = 3;
    sub_1DACBA094();
    v36 = v20;
    v35 = 4;
    sub_1DAA86768();
    sub_1DACBA0E4();
    v34 = 5;
    sub_1DACBA094();
    v33 = 6;
    sub_1DACBA094();
    v32 = 7;
    sub_1DACBA024();
    v31 = 8;
    sub_1DACBA024();
  }

  return (*(v5 + 8))(v8, v4);
}

void sub_1DAA85948(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAA85E4C();
    v7 = a3(a1, &type metadata for Stock.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAA859AC(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Chart(0);
  v57 = *(v4 - 8);
  v5 = *(v57 + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v61 = v52 - v9;
  sub_1DAA85EA0();
  v56 = v10;
  v11 = *(*(v10 - 8) + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v55 = (v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v15 = (v52 - v14);
  v16 = *a1;
  v17 = *(a2 + 16);
  sub_1DACB71E4();
  sub_1DACB71E4();
  v54 = v17;
  v52[1] = a2;
  if (v17)
  {
    v18 = 0;
    v19 = (a2 + 40);
    v20 = MEMORY[0x1E69E7CC8];
    v53 = v16;
    do
    {
      v21 = *(v16 + 16);
      if (v18 == v21)
      {
        break;
      }

      if (v18 >= v21)
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        result = sub_1DACBA1F4();
        __break(1u);
        return result;
      }

      v22 = *(v19 - 1);
      v23 = *v19;
      v58 = v18;
      v59 = v19;
      v24 = v56;
      v25 = v16 + ((*(v57 + 80) + 32) & ~*(v57 + 80));
      v60 = *(v57 + 72);
      v26 = v25 + v60 * v18;
      v27 = *(v56 + 48);
      *v15 = v22;
      v15[1] = v23;
      sub_1DAA85F08(v26, v15 + v27, type metadata accessor for Chart);
      v28 = v15;
      v29 = v15;
      v30 = v55;
      sub_1DAA85F08(v29, v55, sub_1DAA85EA0);
      v32 = *v30;
      v31 = v30[1];
      v33 = v30 + *(v24 + 48);
      v34 = v61;
      sub_1DAA86044(v33, v61);
      sub_1DAA85F08(v34, v8, type metadata accessor for Chart);
      sub_1DACB71E4();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v62 = v20;
      v37 = sub_1DAA4BF3C(v32, v31);
      v38 = v20[2];
      v39 = (v36 & 1) == 0;
      v40 = v38 + v39;
      if (__OFADD__(v38, v39))
      {
        goto LABEL_19;
      }

      v41 = v36;
      if (v20[3] >= v40)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAB66744();
        }
      }

      else
      {
        sub_1DAA860FC(v40, isUniquelyReferenced_nonNull_native);
        v42 = sub_1DAA4BF3C(v32, v31);
        if ((v41 & 1) != (v43 & 1))
        {
          goto LABEL_21;
        }

        v37 = v42;
      }

      v15 = v28;
      if (v41)
      {

        v20 = v62;
        sub_1DABC9810(v8, v62[7] + v37 * v60);
        sub_1DAA864F0(v61, type metadata accessor for Chart);
        sub_1DAA864F0(v28, sub_1DAA85EA0);
      }

      else
      {
        v20 = v62;
        v62[(v37 >> 6) + 8] |= 1 << v37;
        v44 = (v20[6] + 16 * v37);
        *v44 = v32;
        v44[1] = v31;
        sub_1DAA86044(v8, v20[7] + v37 * v60);
        sub_1DAA864F0(v61, type metadata accessor for Chart);
        sub_1DAA864F0(v28, sub_1DAA85EA0);
        v45 = v20[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_20;
        }

        v20[2] = v47;
      }

      v18 = v58 + 1;
      v19 = v59 + 2;
      v16 = v53;
    }

    while (v54 != v58 + 1);
  }

  else
  {
    v20 = MEMORY[0x1E69E7CC8];
  }

  v62 = v20;
  sub_1DAA57FC8(0, &qword_1EE11FE68, sub_1DAA7F50C, MEMORY[0x1E69D6B18]);
  v49 = *(v48 + 48);
  v50 = *(v48 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

unint64_t sub_1DAA85E4C()
{
  result = qword_1EE1201E8[0];
  if (!qword_1EE1201E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1201E8);
  }

  return result;
}

void sub_1DAA85EA0()
{
  if (!qword_1EE11FBD8)
  {
    type metadata accessor for Chart(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE11FBD8);
    }
  }
}

uint64_t sub_1DAA85F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA85F70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA85FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DAA86044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Chart(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1DAA860A8()
{
  result = qword_1EE1201D8;
  if (!qword_1EE1201D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1201D8);
  }

  return result;
}

uint64_t sub_1DAA860FC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Chart(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1DAA7C3AC(0, &qword_1EE11F6F0, type metadata accessor for Chart, MEMORY[0x1E69E6EC8]);
  v44 = a2;
  result = sub_1DACB9E84();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_1DAA7C55C(v31, v45, type metadata accessor for Chart);
      }

      else
      {
        sub_1DAB697A0(v31, v45, type metadata accessor for Chart);
        sub_1DACB71E4();
      }

      v32 = *(v12 + 40);
      sub_1DACBA284();
      sub_1DACB9404();
      result = sub_1DACBA2C4();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_1DAA7C55C(v45, *(v12 + 56) + v30 * v20, type metadata accessor for Chart);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

unint64_t sub_1DAA8649C()
{
  result = qword_1EE1201E0;
  if (!qword_1EE1201E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1201E0);
  }

  return result;
}

uint64_t sub_1DAA864F0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA86550(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1DAA865B0(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1);
}

uint64_t sub_1DAA865EC()
{
  sub_1DAA7C8BC(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  return sub_1DACB8D44();
}

uint64_t sub_1DAA86654(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x696669746E656469;
    v6 = 1701667182;
    if (a1 != 2)
    {
      v6 = 0x65676E6168637865;
    }

    if (a1)
    {
      v5 = 0x6C6F626D7973;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x4E746361706D6F63;
    v2 = 0x726F74636573;
    if (a1 != 7)
    {
      v2 = 0x7972747375646E69;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 1701869940;
    if (a1 != 4)
    {
      v3 = 0x6D614E74726F6873;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_1DAA86768()
{
  result = qword_1EE11D6D8[0];
  if (!qword_1EE11D6D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE11D6D8);
  }

  return result;
}

uint64_t sub_1DAA867BC(void *a1)
{
  v3 = v1;
  sub_1DAA86CA8(0, &qword_1EE11F560, sub_1DAA86DB8, &type metadata for Chart.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA86DB8();
  sub_1DACBA304();
  v22 = *v3;
  v21 = 0;
  sub_1DAA4932C(0, &qword_1EE11FAF0, type metadata accessor for Chart.Entry, MEMORY[0x1E69E62F8]);
  sub_1DAA8713C(&qword_1EE11FAE8, &qword_1EE120490);
  sub_1DACBA0E4();
  if (!v2)
  {
    v12 = type metadata accessor for Chart(0);
    v13 = v12[5];
    LOBYTE(v22) = 1;
    sub_1DAA49610();
    sub_1DAA89828(&qword_1EE11FC40, &qword_1EE125288);
    sub_1DACBA0E4();
    v14 = v3 + v12[6];
    v15 = *v14;
    v16 = v14[8];
    LOBYTE(v22) = 2;
    sub_1DACBA044();
    v17 = v12[7];
    LOBYTE(v22) = 3;
    sub_1DACB7F54();
    sub_1DAA804AC(&qword_1EE123A00, MEMORY[0x1E6969BC0]);
    sub_1DACBA0E4();
    v18 = v12[8];
    LOBYTE(v22) = 4;
    sub_1DACB7CC4();
    sub_1DAA804AC(&qword_1EE125288, MEMORY[0x1E6969530]);
    sub_1DACBA0E4();
    v22 = *(v3 + v12[9]);
    v21 = 5;
    sub_1DAA495C0(0, &qword_1EE11FAD8, &type metadata for Chart.Feature, MEMORY[0x1E69E62F8]);
    sub_1DAA898B8(&qword_1EE11FAD0, sub_1DAA89948);
    sub_1DACBA0E4();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t storeEnumTagSinglePayload for Stock.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1DAA86CA8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for Stock.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

unint64_t sub_1DAA86DB8()
{
  result = qword_1EE1204C0;
  if (!qword_1EE1204C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1204C0);
  }

  return result;
}

unint64_t sub_1DAA86E60()
{
  result = qword_1EE120148;
  if (!qword_1EE120148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE120148);
  }

  return result;
}

void sub_1DAA86EB4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x7865646E69;
  if (v2 != 6)
  {
    v6 = 0x75466C617574756DLL;
    v5 = 0xEA0000000000646ELL;
  }

  v7 = 0xE300000000000000;
  v8 = 6714469;
  if (v2 != 4)
  {
    v8 = 0x73657275747566;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE0079636E657272;
  v10 = 0x75636F7470797263;
  if (v2 != 2)
  {
    v10 = 0x797469757165;
    v9 = 0xE600000000000000;
  }

  if (*v1)
  {
    v4 = 0x79636E6572727563;
    v3 = 0xE800000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1DAA86FB4()
{
  result = qword_1EE1204B0;
  if (!qword_1EE1204B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1204B0);
  }

  return result;
}

unint64_t sub_1DAA87020()
{
  result = qword_1EE1204B8;
  if (!qword_1EE1204B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1204B8);
  }

  return result;
}

uint64_t sub_1DAA87074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v5 = a4(0);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1DAA870D4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  os_unfair_lock_lock((a2 + 64));
  sub_1DAA87224(v5, (a2 + 72));
  os_unfair_lock_unlock((a2 + 64));
  *a3 = v5;
  return sub_1DACB71E4();
}

uint64_t sub_1DAA8713C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAA4932C(255, &qword_1EE11FAF0, type metadata accessor for Chart.Entry, MEMORY[0x1E69E62F8]);
    sub_1DAA804AC(a2, type metadata accessor for Chart.Entry);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAA87224(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v4 = a1;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  result = sub_1DACB71E4();
  v11 = 0;
  v71 = v9;
  v44 = v5;
  v45 = result;
  if (v8)
  {
    while (1)
    {
LABEL_11:
      while (1)
      {
        v13 = __clz(__rbit64(v8));
        v8 &= v8 - 1;
        v14 = v13 | (v11 << 6);
        v15 = (*(v4 + 48) + 16 * v14);
        v16 = *v15;
        v17 = v15[1];
        v18 = *(v4 + 56) + 136 * v14;
        v52 = *v18;
        v19 = *(v18 + 16);
        v20 = *(v18 + 32);
        v21 = *(v18 + 64);
        v55 = *(v18 + 48);
        v56 = v21;
        v53 = v19;
        v54 = v20;
        v22 = *(v18 + 80);
        v23 = *(v18 + 96);
        v24 = *(v18 + 112);
        v60 = *(v18 + 128);
        v58 = v23;
        v59 = v24;
        v57 = v22;
        v61[0] = v16;
        v61[1] = v17;
        v62 = v52;
        v63 = v53;
        v64 = v54;
        v65 = v55;
        v66 = v21;
        v67 = v22;
        v68 = v23;
        v69 = v24;
        v70 = v60;
        sub_1DACB71E4();
        sub_1DAA87740(v61, &v49);
        sub_1DAA7E934(v16, v17, &v50);
        v25 = v51;
        if (v51)
        {
          break;
        }

        result = sub_1DAA889F4(v61, sub_1DAA877A4);
        v9 = v71;
        if (!v8)
        {
          goto LABEL_7;
        }
      }

      v26 = v50;
      sub_1DACB71E4();
      sub_1DAA88788(v26, v25);
      sub_1DAA87740(v61, &v49);

      v47[6] = v58;
      v47[7] = v59;
      v48 = v60;
      v47[2] = v54;
      v47[3] = v55;
      v47[4] = v56;
      v47[5] = v57;
      v47[0] = v52;
      v47[1] = v53;
      if (get_enum_tag_for_layout_string_10StocksCore24SubscriptionButtonConfigVSg_0(v47) == 1)
      {
        break;
      }

      sub_1DAA88870(&v52);
      sub_1DAA87740(v61, &v49);

      sub_1DAA88870(&v52);
      v35 = *a2;
      if (!*(*a2 + 16))
      {
        goto LABEL_38;
      }

      v36 = *(v35 + 40);
      sub_1DACBA284();
      sub_1DACB71E4();
      sub_1DACB9404();
      v37 = sub_1DACBA2C4();
      v38 = -1 << *(v35 + 32);
      v39 = v37 & ~v38;
      if ((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
      {
        v40 = ~v38;
        while (1)
        {
          v41 = (*(v35 + 48) + 16 * v39);
          v42 = *v41 == v26 && v25 == v41[1];
          if (v42 || (sub_1DACBA174() & 1) != 0)
          {
            break;
          }

          v39 = (v39 + 1) & v40;
          if (((*(v35 + 56 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        sub_1DAB8B8F0(v26, v25);

        goto LABEL_38;
      }

LABEL_37:

LABEL_38:

      result = sub_1DAA889F4(v61, sub_1DAA877A4);
      v5 = v44;
      v4 = v45;
      v9 = v71;
      if (!v8)
      {
        goto LABEL_7;
      }
    }

    v27 = *a2;
    if (*(*a2 + 16))
    {
      v43 = v3;
      v28 = *(v27 + 40);
      sub_1DACBA284();
      sub_1DACB71E4();
      sub_1DACB9404();
      v29 = sub_1DACBA2C4();
      v30 = -1 << *(v27 + 32);
      v31 = v29 & ~v30;
      if ((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31))
      {
        v32 = ~v30;
        while (1)
        {
          v33 = (*(v27 + 48) + 16 * v31);
          v34 = *v33 == v26 && v25 == v33[1];
          if (v34 || (sub_1DACBA174() & 1) != 0)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
          if (((*(v27 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v3 = v43;
        goto LABEL_36;
      }

LABEL_22:

      v3 = v43;
    }

    sub_1DACB71E4();
    sub_1DAA4C8A0(&v49, v26, v25);

LABEL_36:
    sub_1DAA87740(v61, &v49);
    goto LABEL_37;
  }

LABEL_7:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v9)
    {
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for TopStoriesStyleConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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