uint64_t sub_1DAB28D5C(__int128 *a1)
{
  v3 = sub_1DACB8FB4();
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DACB9004();
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a1[7];
  v39 = a1[6];
  v40 = v11;
  v41 = *(a1 + 16);
  v12 = a1[3];
  v35 = a1[2];
  v36 = v12;
  v13 = a1[5];
  v37 = a1[4];
  v38 = v13;
  v14 = a1[1];
  v33 = *a1;
  v34 = v14;
  v26[1] = *(v1 + 32);
  v15 = swift_allocObject();
  v16 = a1[4];
  *(v15 + 104) = a1[5];
  v17 = a1[7];
  *(v15 + 120) = a1[6];
  *(v15 + 136) = v17;
  v18 = *a1;
  *(v15 + 40) = a1[1];
  v19 = a1[3];
  *(v15 + 56) = a1[2];
  *(v15 + 72) = v19;
  *(v15 + 88) = v16;
  *(v15 + 16) = v1;
  *(v15 + 152) = *(a1 + 16);
  *(v15 + 24) = v18;
  v30[4] = sub_1DAB29EF0;
  v30[5] = v15;
  v30[0] = MEMORY[0x1E69E9820];
  v30[1] = 1107296256;
  v30[2] = sub_1DAA5796C;
  v30[3] = &block_descriptor_37;
  v20 = _Block_copy(v30);
  sub_1DACB71F4();
  sub_1DAA806E4(&v33, v31);
  sub_1DACB8FD4();
  *&v31[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA572FC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v21 = MEMORY[0x1E69E7F60];
  sub_1DAA57198(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60]);
  sub_1DAA573D4(&qword_1EE123EB0, &qword_1EE123EC0, v21);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v10, v6, v20);
  _Block_release(v20);
  (*(v29 + 8))(v6, v3);
  (*(v27 + 8))(v10, v28);

  v31[6] = v39;
  v31[7] = v40;
  v32 = v41;
  v31[2] = v35;
  v31[3] = v36;
  v31[4] = v37;
  v31[5] = v38;
  v31[0] = v33;
  v31[1] = v34;
  sub_1DAA59E24(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  sub_1DAA806E4(&v33, v30);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29114(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a1 + 16));
  v4 = *(a1 + 24);
  sub_1DACB71E4();
  v53 = a1;
  os_unfair_lock_unlock((a1 + 16));
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v56[0] = MEMORY[0x1E69E7CC0];
    sub_1DAA5859C(0, v5, 0);
    v7 = v56[0];
    v8 = (v4 + 56);
    do
    {
      v10 = *(v8 - 1);
      v9 = *v8;
      v56[0] = v7;
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      sub_1DACB71E4();
      if (v12 >= v11 >> 1)
      {
        sub_1DAA5859C((v11 > 1), v12 + 1, 1);
        v7 = v56[0];
      }

      *(v7 + 16) = v12 + 1;
      v13 = v7 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
      v8 += 17;
      --v5;
    }

    while (v5);

    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
  }

  sub_1DAA806E4(a2, v56);
  os_unfair_lock_lock((v53 + 16));
  ObjectType = *(v53 + 24);
  sub_1DACB71E4();
  os_unfair_lock_unlock((v53 + 16));
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v16 = *(ObjectType + 16);
    v15 = *(ObjectType + 24);
    if (v16 >= v15 >> 1)
    {
      ObjectType = sub_1DAA5A0A8((v15 > 1), v16 + 1, 1, ObjectType);
    }

    *(ObjectType + 16) = v16 + 1;
    v17 = ObjectType + 136 * v16;
    *(v17 + 32) = *a2;
    v18 = *(a2 + 16);
    v19 = *(a2 + 32);
    v20 = *(a2 + 64);
    *(v17 + 80) = *(a2 + 48);
    *(v17 + 96) = v20;
    *(v17 + 48) = v18;
    *(v17 + 64) = v19;
    v21 = *(a2 + 80);
    v22 = *(a2 + 96);
    v23 = *(a2 + 112);
    *(v17 + 160) = *(a2 + 128);
    *(v17 + 128) = v22;
    *(v17 + 144) = v23;
    *(v17 + 112) = v21;
    os_unfair_lock_lock((v53 + 16));
    v24 = *(v53 + 24);

    *(v53 + 24) = ObjectType;
    os_unfair_lock_unlock((v53 + 16));
    os_unfair_lock_lock((v53 + 16));
    v25 = *(v53 + 24);
    sub_1DACB71E4();
    os_unfair_lock_unlock((v53 + 16));
    v26 = *(v25 + 16);
    if (v26)
    {
      v56[0] = v6;
      sub_1DAA5859C(0, v26, 0);
      a2 = v56[0];
      v27 = (v25 + 56);
      do
      {
        v29 = *(v27 - 1);
        v28 = *v27;
        v56[0] = a2;
        v31 = *(a2 + 16);
        v30 = *(a2 + 24);
        sub_1DACB71E4();
        if (v31 >= v30 >> 1)
        {
          sub_1DAA5859C((v30 > 1), v31 + 1, 1);
          a2 = v56[0];
        }

        *(a2 + 16) = v31 + 1;
        v32 = a2 + 16 * v31;
        *(v32 + 32) = v29;
        *(v32 + 40) = v28;
        v27 += 17;
        --v26;
      }

      while (v26);
    }

    else
    {

      a2 = MEMORY[0x1E69E7CC0];
    }

    result = swift_beginAccess();
    v34 = *(v53 + 40);
    if (v34 >> 62)
    {
      result = sub_1DACB9E14();
      v35 = result;
      if (!result)
      {
LABEL_36:
      }
    }

    else
    {
      v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v35)
      {
        goto LABEL_36;
      }
    }

    if (v35 < 1)
    {
      break;
    }

    v54 = v34 & 0xC000000000000001;
    sub_1DACB71E4();
    v36 = 0;
    v51 = v35;
    v52 = v34;
    while (1)
    {
      if (v54)
      {
        v37 = MEMORY[0x1E12777A0](v36, v34);
      }

      else
      {
        v37 = *(v34 + 8 * v36 + 32);
        sub_1DACB71F4();
      }

      if (!swift_unknownObjectWeakLoadStrong())
      {

        goto LABEL_23;
      }

      v38 = *(v37 + 24);
      ObjectType = swift_getObjectType();
      v56[3] = type metadata accessor for StubWatchlistService();
      v56[4] = &off_1F5683C48;
      v56[0] = v53;
      v39 = objc_allocWithZone(SCWWatchlistDiff);
      sub_1DACB71F4();
      v40 = sub_1DACB9634();
      v41 = sub_1DACB9634();
      v42 = [v39 initWithOldSymbols:v40 newSymbols:v41 updatedName:0 updatedSortState:0 updatedSortOrderState:0 updatedDisplayState:0];

      sub_1DAB29DE8();
      v43 = sub_1DACB9EA4();
      v44 = v42;
      sub_1DACB71F4();
      v45 = sub_1DAA4BF3C(1953719636, 0xE400000000000000);
      v6 = v46;

      if (v6)
      {
        break;
      }

      v43[(v45 >> 6) + 8] |= 1 << v45;
      v47 = (v43[6] + 16 * v45);
      *v47 = 1953719636;
      v47[1] = 0xE400000000000000;
      *(v43[7] + 8 * v45) = v44;

      v48 = v43[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        goto LABEL_33;
      }

      v43[2] = v50;
      v55 = v43;
      (*(v38 + 8))(v56, &v55, ObjectType, v38);

      swift_unknownObjectRelease();

      __swift_destroy_boxed_opaque_existential_1(v56);
      v35 = v51;
      v34 = v52;
LABEL_23:
      if (v35 == ++v36)
      {

        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    ObjectType = sub_1DAA5A0A8(0, *(ObjectType + 16) + 1, 1, ObjectType);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB29650(uint64_t *a1)
{
  swift_beginAccess();
  v3 = v1[5];
  v14 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
LABEL_20:
    v4 = sub_1DACB9E14();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v4)
  {
    v13 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v1 = v13;
          v10 = v14;
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v7 = *(v3 + 8 * v5 + 32);
        sub_1DACB71F4();
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_1DACB9D34();
        v6 = *(v14 + 16);
        sub_1DACB9D74();
        sub_1DACB9D84();
        v1 = &v14;
        sub_1DACB9D44();
      }

      ++v5;
      if (v8 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v11 = v1[5];
  v1[5] = v10;
}

uint64_t sub_1DAB297D8()
{
  sub_1DAB29EFC(v0 + 24);

  v1 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB2988C()
{
  sub_1DAA726DC(0, &qword_1EE11FE28, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29994(uint64_t *a1)
{
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = a1[3];
  v9 = a1[4];
  v10 = *(a1 + 20);
  sub_1DAA59E24(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29A40()
{
  sub_1DAA59E24(0, &qword_1EE11FDF0, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29AA0()
{
  sub_1DAA59E24(0, &qword_1EE11D3F0, MEMORY[0x1E69E6158], MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29B18(uint64_t a1)
{
  v1 = *(a1 + 80);
  v2 = *(a1 + 112);
  v28 = *(a1 + 96);
  v29 = v2;
  v3 = *(a1 + 16);
  v4 = *(a1 + 48);
  v24 = *(a1 + 32);
  v25 = v4;
  v5 = *(a1 + 48);
  v6 = *(a1 + 80);
  v26 = *(a1 + 64);
  v27 = v6;
  v7 = *(a1 + 16);
  v23[0] = *a1;
  v23[1] = v7;
  v8 = *(a1 + 112);
  v20 = v28;
  v21 = v8;
  v16 = v24;
  v17 = v5;
  v18 = v26;
  v19 = v1;
  v30 = *(a1 + 128);
  v22 = *(a1 + 128);
  v14 = v23[0];
  v15 = v3;
  sub_1DAA59E24(0, &qword_1ECBE9AC0, &type metadata for Stock, MEMORY[0x1E69D6B18]);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  sub_1DAA806E4(v23, v13);
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29BE4()
{
  sub_1DACB9324();
  sub_1DAA59E24(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

uint64_t sub_1DAB29C88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DACB7D04();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DACB6D04();
  v9 = sub_1DACB7CE4();
  v11 = v10;
  (*(v5 + 8))(v8, v4);
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = MEMORY[0x1E69E7CC0];
  v16[3] = v9;
  v16[4] = v11;
  v17 = 160;
  sub_1DAA59E24(0, &qword_1EE11FE90, &type metadata for Watchlist, MEMORY[0x1E69D6B18]);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  sub_1DACB71E4();
  return sub_1DACB8AE4();
}

void sub_1DAB29DE8()
{
  if (!qword_1ECBE7118)
  {
    sub_1DAA420F4(255, &qword_1EE11F8C8, off_1E85E2110);
    v0 = sub_1DACB9EB4();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7118);
    }
  }
}

uint64_t objectdestroy_21Tm(uint64_t a1)
{
  v3 = v1[2];

  v4 = v1[4];

  v5 = v1[6];

  v6 = v1[8];

  v7 = v1[10];

  v8 = v1[13];

  v9 = v1[15];

  v10 = v1[17];

  v11 = v1[19];

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1DAB29EFC(uint64_t a1)
{
  sub_1DAA59E24(0, &qword_1EE11FAC0, &type metadata for Stock, MEMORY[0x1E69E62F8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1DAB29FD4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 120))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1DAB2A028(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1DAB2A098()
{
  v0 = sub_1DACB7AB4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1EEE9AC00](v0);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v20 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  v11 = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, 1uLL, 1);
  v12 = sub_1DACB9644();
  if (!v12[2])
  {

    __break(1u);
    return result;
  }

  if (!v12[2])
  {
    __break(1u);
    goto LABEL_8;
  }

  v13 = v12[4];
  v14 = v12[5];
  sub_1DACB71E4();

  sub_1DACB86A4();

  if (qword_1EE125750 != -1)
  {
LABEL_8:
    swift_once();
  }

  sub_1DAA4DA94(v10);
  sub_1DACB7A14();
  sub_1DACB8694();
  v15 = *(v1 + 8);
  v15(v8, v0);
  sub_1DACB7A14();
  sub_1DACB8694();
  v15(v8, v0);
  if (qword_1EE11D798 != -1)
  {
    swift_once();
  }

  sub_1DAA4DA94(v8);
  sub_1DACB7A14();
  sub_1DACB8694();
  v15(v5, v0);
  v16 = objc_opt_self();
  v17 = [v16 standardUserDefaults];
  sub_1DACB8684();

  v18 = [v16 standardUserDefaults];
  sub_1DACB8684();

  v15(v8, v0);
  return (v15)(v10, v0);
}

uint64_t sub_1DAB2A438@<X0>(char *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DAB2A494()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x7865646E69;
  if (v1 != 6)
  {
    v3 = 0x75466C617574756DLL;
  }

  v4 = 6714469;
  if (v1 != 4)
  {
    v4 = 0x73657275747566;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x75636F7470797263;
  if (v1 != 2)
  {
    v5 = 0x797469757165;
  }

  if (*v0)
  {
    v2 = 0x79636E6572727563;
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

unint64_t sub_1DAB2A594()
{
  result = qword_1ECBE7120;
  if (!qword_1ECBE7120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7120);
  }

  return result;
}

uint64_t sub_1DAB2A604@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_1DAB2A438(a1);
}

uint64_t sub_1DAB2A6B8()
{
  v0 = sub_1DACB78E4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DACB7E44();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = sub_1DACB92E4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1DACB7904();
  __swift_allocate_value_buffer(v9, qword_1ECBE7128);
  __swift_project_value_buffer(v9, qword_1ECBE7128);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v1 + 104))(v4, *MEMORY[0x1E6968DF0], v0);
  return sub_1DACB7914();
}

uint64_t sub_1DAB2A8D0()
{
  sub_1DAA6AA44(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = v17 - v2;
  v17[0] = sub_1DACB78E4();
  v4 = *(v17[0] - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v17[0]);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB7E44();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = sub_1DACB92E4();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = sub_1DACB7904();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = sub_1DACB7084();
  __swift_allocate_value_buffer(v15, qword_1ECBE7140);
  __swift_project_value_buffer(v15, qword_1ECBE7140);
  sub_1DACB9284();
  sub_1DACB7DF4();
  (*(v4 + 104))(v7, *MEMORY[0x1E6968DF0], v17[0]);
  sub_1DACB7914();
  (*(v13 + 56))(v3, 1, 1, v12);
  return sub_1DACB7094();
}

uint64_t sub_1DAB2AC04@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E695A590];
  v3 = sub_1DACB7374();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1DAB2AC78()
{
  sub_1DAB2C6FC(0, &qword_1ECBE7158, sub_1DAB2AE94, &type metadata for DeleteSymbolFromWatchlistIntent, MEMORY[0x1E695A4A8]);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1DAB2C6FC(0, &qword_1ECBE7160, sub_1DAB2AE94, &type metadata for DeleteSymbolFromWatchlistIntent, MEMORY[0x1E695A4A0]);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  sub_1DAB2AE94();
  sub_1DACB7254();
  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAB2AF0C();
  sub_1DACB7234();

  sub_1DACB7244();
  swift_getKeyPath();
  sub_1DAB2B024();
  sub_1DACB7234();

  sub_1DACB7244();
  sub_1DACB7264();
  return sub_1DACB7204();
}

unint64_t sub_1DAB2AE94()
{
  result = qword_1EE11D8B0;
  if (!qword_1EE11D8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D8B0);
  }

  return result;
}

void sub_1DAB2AF0C()
{
  if (!qword_1ECBE7168)
  {
    sub_1DAB2AF6C();
    v0 = sub_1DACBA314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7168);
    }
  }
}

void sub_1DAB2AF6C()
{
  if (!qword_1EE11F1B8)
  {
    type metadata accessor for SymbolEntity();
    sub_1DAAA1500(&qword_1EE123548, type metadata accessor for SymbolEntity);
    v0 = sub_1DACB7044();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE11F1B8);
    }
  }
}

void sub_1DAB2B024()
{
  if (!qword_1ECBE7170)
  {
    sub_1DAB2C6FC(255, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
    v0 = sub_1DACBA314();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE7170);
    }
  }
}

uint64_t sub_1DAB2B0BC(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for SymbolEntity();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  sub_1DAAA2C80(a1, &v15 - v9);
  v11 = *a2;
  v12 = a2[1];
  v13 = a2[2];
  sub_1DAAA2C80(v10, v8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
  sub_1DAAD5434(v10);
}

uint64_t sub_1DAB2B1B8(uint64_t a1)
{
  v3 = type metadata accessor for SymbolEntity();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = *v1;
  sub_1DAAA2C80(a1, &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1DACB6FC4();
  return sub_1DAAD5434(a1);
}

uint64_t (*sub_1DAB2B248(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

double sub_1DAB2B2BC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  sub_1DACB6FB4();
  *a2 = v5;
  result = *&v6;
  *(a2 + 8) = v6;
  return result;
}

uint64_t sub_1DAB2B300(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v2 = a2[1];
  v4 = a2[2];
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  sub_1DACB71E4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB6FC4();
}

uint64_t sub_1DAB2B38C(uint64_t *a1)
{
  v2 = *(v1 + 8);
  v4 = *a1;
  v5 = *(a1 + 1);
  return sub_1DACB6FC4();
}

uint64_t (*sub_1DAB2B3CC(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 8);
  *(v3 + 32) = sub_1DACB6FA4();
  return sub_1DAADD2B0;
}

uint64_t sub_1DAB2B464(uint64_t *a1)
{
  v3 = *(v1 + 16);
  sub_1DAA4D678(a1, v5);
  sub_1DACB6D34();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t (*sub_1DAB2B4A8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *(v1 + 16);
  *(v3 + 32) = sub_1DACB6D14();
  return sub_1DAAD9D74;
}

uint64_t sub_1DAB2B540@<X0>(uint64_t *a1@<X8>)
{
  v65 = a1;
  v1 = sub_1DACB7274();
  v2 = *(v1 - 8);
  v71 = v1;
  v72 = v2;
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v70 = &v50[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAA6AA44(0, &qword_1EE123AA0, MEMORY[0x1E6959F70]);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v50[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v50[-v9];
  sub_1DAA6AA44(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v69 = &v50[-v12];
  sub_1DAA6AA44(0, &qword_1EE123A80, MEMORY[0x1E6968E10]);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v66 = &v50[-v15];
  v16 = sub_1DACB78E4();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v50[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1DACB7E44();
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = sub_1DACB92E4();
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = sub_1DACB7904();
  v63 = v25;
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v25);
  v53 = &v50[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1DAB2AF6C();
  v60 = v29;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v31 = *(v17 + 104);
  v56 = *MEMORY[0x1E6968DF0];
  v30 = v56;
  v57 = v16;
  v31(v20, v56, v16);
  v58 = v31;
  v59 = v17 + 104;
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v31(v20, v30, v16);
  v32 = v66;
  sub_1DACB7914();
  v33 = *(v26 + 56);
  v62 = v26 + 56;
  v64 = v33;
  v33(v32, 0, 1, v25);
  v34 = type metadata accessor for SymbolEntity();
  (*(*(v34 - 8) + 56))(v69, 1, 1, v34);
  v35 = sub_1DACB6E84();
  v36 = *(v35 - 8);
  v37 = *(v36 + 56);
  v54 = v37;
  v55 = v36 + 56;
  v37(v67, 1, 1, v35);
  v37(v68, 1, 1, v35);
  sub_1DAAF41C0(0, &qword_1EE123AB0, &qword_1EE125E40);
  v61 = sub_1DACB6D94();
  v73 = 0u;
  v74 = 0u;
  v75 = 0;
  sub_1DACB6D84();
  v38 = sub_1DACB6D54();
  sub_1DAB2C6FC(0, &qword_1ECBE7178, sub_1DAB2AE94, &type metadata for DeleteSymbolFromWatchlistIntent, MEMORY[0x1E695A548]);
  swift_getKeyPath();
  v39 = sub_1DACB7324();
  *&v73 = v38;
  *(&v73 + 1) = v39;
  v51 = *MEMORY[0x1E695A500];
  v40 = *(v72 + 104);
  v72 += 104;
  v52 = v40;
  v40(v70);
  sub_1DAB2BE88();
  sub_1DAAA1500(&unk_1EE11EF70, type metadata accessor for SymbolEntity);
  v41 = sub_1DACB6FF4();
  v42 = v65;
  *v65 = v41;
  sub_1DAB2C6FC(0, &qword_1EE11F1B0, sub_1DAA8E020, &type metadata for WatchlistEntity, MEMORY[0x1E695A1A0]);
  v69 = v43;
  sub_1DACB9284();
  sub_1DACB7DF4();
  v44 = v56;
  v45 = v57;
  v46 = v58;
  v58(v20, v56, v57);
  sub_1DACB7914();
  sub_1DACB9284();
  sub_1DACB7DF4();
  v46(v20, v44, v45);
  v47 = v66;
  sub_1DACB7914();
  v64(v47, 0, 1, v63);
  v73 = 0uLL;
  *&v74 = 0;
  v48 = v54;
  v54(v67, 1, 1, v35);
  v48(v68, 1, 1, v35);
  v52(v70, v51, v71);
  sub_1DAADA468();
  v42[1] = sub_1DACB7014();
  sub_1DAAF41C0(0, &unk_1EE123AC0, &qword_1EE123948);
  v75 = 0;
  v73 = 0u;
  v74 = 0u;
  sub_1DACB6D84();
  result = sub_1DACB6D54();
  v42[2] = result;
  return result;
}

unint64_t sub_1DAB2BE88()
{
  result = qword_1ECBE7180;
  if (!qword_1ECBE7180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7180);
  }

  return result;
}

uint64_t sub_1DAB2BEDC(uint64_t a1)
{
  *(v2 + 128) = a1;
  sub_1DAA6AA44(0, qword_1EE11EF28, type metadata accessor for SymbolEntity);
  v4 = *(*(v3 - 8) + 64) + 15;
  *(v2 + 136) = swift_task_alloc();
  *(v2 + 144) = *v1;
  *(v2 + 160) = *(v1 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1DAB2BF98, 0, 0);
}

uint64_t sub_1DAB2BF98()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  sub_1DACB6D24();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[7] = v3;
  v0[8] = v2;
  v0[9] = v1 | 0x2000000000000000;
  v6 = *(v5 + 8);
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71F4();
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  v0[21] = v8;
  *v8 = v0;
  v8[1] = sub_1DAB2C118;

  return (v10)(v0 + 7, v4, v5);
}

uint64_t sub_1DAB2C118()
{
  v2 = *v1;
  v3 = *(*v1 + 168);
  v6 = *v1;
  v2[22] = v0;

  sub_1DAAF5A24(v2[7], v2[8], v2[9]);
  if (v0)
  {
    v4 = sub_1DAB2C368;
  }

  else
  {
    v4 = sub_1DAB2C238;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1DAB2C238()
{
  v15 = v0;
  v1 = *(v0 + 152);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_1DACB6FB4();
  v13 = *(v0 + 80);
  v14 = *(v0 + 88);
  v4 = type metadata accessor for SymbolEntity();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  sub_1DAAF42EC(&v13, v2, &v11);
  v5 = v12;
  *(v0 + 104) = v11;
  *(v0 + 120) = v5;
  sub_1DAAF3184();
  sub_1DACB6E94();
  v6 = *(v0 + 104);
  v7 = *(v0 + 112);
  v8 = *(v0 + 120);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1DAB2C368()
{
  v1 = v0[17];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v2 = v0[1];
  v3 = v0[22];

  return v2();
}

unint64_t sub_1DAB2C3DC()
{
  result = qword_1EE11D8A8;
  if (!qword_1EE11D8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE11D8A8);
  }

  return result;
}

unint64_t sub_1DAB2C434()
{
  result = qword_1EE11D8B8[0];
  if (!qword_1EE11D8B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE11D8B8);
  }

  return result;
}

uint64_t sub_1DAB2C4D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A20 != -1)
  {
    swift_once();
  }

  v2 = sub_1DACB7904();
  v3 = __swift_project_value_buffer(v2, qword_1ECBE7128);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1DAB2C584(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1DAA94754;

  return sub_1DAB2BEDC(a1);
}

uint64_t sub_1DAB2C620(uint64_t a1)
{
  v2 = sub_1DAB2AE94();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

unint64_t sub_1DAB2C66C()
{
  result = qword_1ECBE7188;
  if (!qword_1ECBE7188)
  {
    sub_1DAB2C6FC(255, &qword_1ECBE7190, sub_1DAB2AE94, &type metadata for DeleteSymbolFromWatchlistIntent, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7188);
  }

  return result;
}

void sub_1DAB2C6FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1DAB2C764(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6E6F43656C797473;
  v4 = 0xEC00000073676966;
  if (v2 != 1)
  {
    v3 = 0x6954736567646162;
    v4 = 0xED000074756F656DLL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x496C656E6E616863;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE900000000000064;
  }

  v7 = 0x6E6F43656C797473;
  v8 = 0xEC00000073676966;
  if (*a2 != 1)
  {
    v7 = 0x6954736567646162;
    v8 = 0xED000074756F656DLL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x496C656E6E616863;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAB2C890()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB2C94C()
{
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAB2C9F4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB2CAAC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAB2D98C();
  *a2 = result;
  return result;
}

void sub_1DAB2CADC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xEC00000073676966;
  v5 = 0x6E6F43656C797473;
  if (v2 != 1)
  {
    v5 = 0x6954736567646162;
    v4 = 0xED000074756F656DLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x496C656E6E616863;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAB2CB54()
{
  v1 = 0x6E6F43656C797473;
  if (*v0 != 1)
  {
    v1 = 0x6954736567646162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x496C656E6E616863;
  }
}

uint64_t sub_1DAB2CBC8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAB2D98C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAB2CBF0(uint64_t a1)
{
  v2 = sub_1DAB2D330();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB2CC2C(uint64_t a1)
{
  v2 = sub_1DAB2D330();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DAB2CC68@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, double a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = 0x80000001DACE6EB0;
  v7 = 0xD000000000000017;
  if (a2)
  {
    v7 = result;
  }

  v8 = MEMORY[0x1E69E7CC0];
  if (a2)
  {
    v6 = a2;
  }

  if (a3)
  {
    v8 = a3;
  }

  *a6 = v7;
  *(a6 + 8) = v6;
  if (a5)
  {
    a4 = 21600.0;
  }

  *(a6 + 16) = v8;
  *(a6 + 24) = a4;
  return result;
}

uint64_t sub_1DAB2CCC4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  sub_1DAB2D6A8(0, &qword_1EE123C88, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v37 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB2D330();
  sub_1DACBA2F4();
  if (!v2)
  {
    v47 = MEMORY[0x1E69E7CC0];
    v46 = 0;
    sub_1DACB9F84();
    v12 = v45;
    v40 = v44;
    v13 = MEMORY[0x1E69E7CC0];
    if (!v45)
    {
      v41 = 0;
      swift_beginAccess();
      v13 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v15 = *(v13 + 2);
      v14 = *(v13 + 3);
      if (v15 >= v14 >> 1)
      {
        v13 = sub_1DAA9A3B0((v14 > 1), v15 + 1, 1, v13);
      }

      *(v13 + 2) = v15 + 1;
      v16 = &v13[16 * v15];
      *(v16 + 4) = 0x496C656E6E616863;
      *(v16 + 5) = 0xE900000000000064;
      v47 = v13;
      swift_endAccess();
      v12 = v41;
    }

    v46 = 1;
    sub_1DAA488A4(0, &qword_1EE123F08);
    sub_1DAB2D70C(&qword_1EE123EF8, sub_1DAB2D654);
    sub_1DACB9F84();
    v39 = v44;
    if (!v44)
    {
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v41 = v12;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v19 = *(v13 + 2);
      v18 = *(v13 + 3);
      if (v19 >= v18 >> 1)
      {
        v13 = sub_1DAA9A3B0((v18 > 1), v19 + 1, 1, v13);
      }

      *(v13 + 2) = v19 + 1;
      v20 = &v13[16 * v19];
      strcpy(v20 + 32, "styleConfigs");
      v20[45] = 0;
      *(v20 + 23) = -5120;
      v47 = v13;
      swift_endAccess();
      v12 = v41;
    }

    LOBYTE(v44) = 2;
    sub_1DACB9F84();
    if (v43)
    {
      v22 = swift_isUniquelyReferenced_nonNull_native();
      v41 = v12;
      if ((v22 & 1) == 0)
      {
        v13 = sub_1DAA9A3B0(0, *(v13 + 2) + 1, 1, v13);
      }

      v24 = *(v13 + 2);
      v23 = *(v13 + 3);
      if (v24 >= v23 >> 1)
      {
        v13 = sub_1DAA9A3B0((v23 > 1), v24 + 1, 1, v13);
      }

      *(v13 + 2) = v24 + 1;
      v25 = &v13[16 * v24];
      strcpy(v25 + 32, "badgesTimeout");
      *(v25 + 23) = -4864;
      v26 = 0x80000001DACE6EB0;
      v27 = v40;
      if (!v41)
      {
        v27 = 0xD000000000000017;
      }

      v40 = v27;
      if (v41)
      {
        v26 = v41;
      }

      v38 = v26;
      v28 = MEMORY[0x1E69E7CC0];
      if (v39)
      {
        v28 = v39;
      }

      v41 = v28;
      v29 = 0x40D5180000000000;
    }

    else
    {
      v29 = v42;
      v30 = *(v13 + 2);
      v31 = v40;
      if (!v12)
      {
        v31 = 0xD000000000000017;
      }

      v40 = v31;
      if (!v12)
      {
        v12 = 0x80000001DACE6EB0;
      }

      v32 = MEMORY[0x1E69E7CC0];
      if (v39)
      {
        v32 = v39;
      }

      v41 = v32;
      if (!v30)
      {
        sub_1DAA41DCC();
        v35 = sub_1DACB9AD4();
        sub_1DACB9914();
        sub_1DACB8C64();
        goto LABEL_35;
      }

      v38 = v12;
    }

    sub_1DAA41D64();
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1DACC1D20;
    sub_1DAA488A4(0, &qword_1EE123EA0);
    *(v33 + 56) = v34;
    *(v33 + 64) = sub_1DAAF691C();
    *(v33 + 32) = v13;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v35 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();

    v12 = v38;
LABEL_35:

    (*(v7 + 8))(v10, v6);

    v36 = v41;
    *a2 = v40;
    a2[1] = v12;
    a2[2] = v36;
    a2[3] = v29;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1DAB2D330()
{
  result = qword_1EE1246D0;
  if (!qword_1EE1246D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1246D0);
  }

  return result;
}

uint64_t sub_1DAB2D388(void *a1)
{
  sub_1DAB2D6A8(0, &qword_1EE123BD0, MEMORY[0x1E69E6F58]);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v9 = *v1;
  v10 = v1[1];
  v18 = v1[2];
  v11 = v1[3];
  v12 = a1[3];
  v13 = a1[4];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v12);
  sub_1DAB2D330();
  sub_1DACBA304();
  v22 = 0;
  sub_1DACBA094();
  if (!v2)
  {
    v21 = v18;
    v20 = 1;
    sub_1DAA488A4(0, &qword_1EE123F08);
    sub_1DAB2D70C(&qword_1EE123F00, sub_1DAB2D788);
    sub_1DACBA0E4();
    v19 = 2;
    sub_1DACBA0B4();
  }

  return (*(v5 + 8))(v8, v16);
}

uint64_t sub_1DAB2D5D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return sub_1DAA5386C(v2, v4) & (v3 == v5);
  }

  v7 = sub_1DACBA174();
  result = 0;
  if (v7)
  {
    return sub_1DAA5386C(v2, v4) & (v3 == v5);
  }

  return result;
}

unint64_t sub_1DAB2D654()
{
  result = qword_1EE1244D0;
  if (!qword_1EE1244D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1244D0);
  }

  return result;
}

void sub_1DAB2D6A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1DAB2D330();
    v7 = a3(a1, &type metadata for TopStoriesConfiguration.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1DAB2D70C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1DAA488A4(255, &qword_1EE123F08);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DAB2D788()
{
  result = qword_1EE1244D8;
  if (!qword_1EE1244D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1244D8);
  }

  return result;
}

uint64_t sub_1DAB2D7DC(uint64_t a1, int a2)
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

uint64_t sub_1DAB2D824(uint64_t result, int a2, int a3)
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

unint64_t sub_1DAB2D888()
{
  result = qword_1ECBE71A0;
  if (!qword_1ECBE71A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE71A0);
  }

  return result;
}

unint64_t sub_1DAB2D8E0()
{
  result = qword_1EE1246C0;
  if (!qword_1EE1246C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1246C0);
  }

  return result;
}

unint64_t sub_1DAB2D938()
{
  result = qword_1EE1246C8;
  if (!qword_1EE1246C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1246C8);
  }

  return result;
}

uint64_t sub_1DAB2D98C()
{
  v0 = sub_1DACB9F04();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1DAB2D9F8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA4F6B0(0, &qword_1EE125580, &qword_1EE1254C8, off_1E85E2088);
  result = sub_1DACB8244();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125A10);
  result = sub_1DACB8254();
  if (!v14[3])
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910);
  result = sub_1DACB8254();
  if (v13)
  {
    type metadata accessor for CloudKitWatchlistDefaultsProvider();
    v9 = swift_allocObject();
    sub_1DAA4D460(&v12, v9 + 16);
    v10 = type metadata accessor for CloudKitWatchlistService();
    v11 = swift_allocObject();
    result = sub_1DAB324B8(v6, v14, v9, v11);
    a2[3] = v10;
    a2[4] = &off_1F56825D8;
    *a2 = result;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DAB2DBB8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DAA4D678(a1, v45);
  v4 = sub_1DAA6CBB4(v45);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v4 & 1) == 0)
  {
    sub_1DAA44440(0, &qword_1EE1257E0);
    result = sub_1DACB8254();
    v26 = v46;
    if (v46)
    {
      v27 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
      v28 = *(*(v26 - 8) + 64);
      MEMORY[0x1EEE9AC00](v27);
      v30 = (&v41[-1] - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v31 + 16))(v30);
      v32 = *v30;
      v33 = type metadata accessor for YahooBaseOperationFactory();
      v42 = v33;
      v43 = &off_1F56825C8;
      v41[0] = v32;
      v17 = type metadata accessor for YahooQuoteService();
      v18 = swift_allocObject();
      v34 = __swift_mutable_project_boxed_opaque_existential_1(v41, v33);
      v35 = *(*(v33 - 8) + 64);
      MEMORY[0x1EEE9AC00](v34);
      v37 = (&v41[-1] - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v38 + 16))(v37);
      v39 = *v37;
      v18[5] = v33;
      v18[6] = &off_1F56825C8;
      v18[2] = v39;
      __swift_destroy_boxed_opaque_existential_1(v41);
      result = __swift_destroy_boxed_opaque_existential_1(v45);
      v25 = &off_1F568E868;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  sub_1DAA44440(0, &unk_1EE1258D8);
  result = sub_1DACB8254();
  if (!v46)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB3244C();
  result = sub_1DACB8254();
  v8 = v44;
  if (v44)
  {
    v9 = v46;
    v10 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
    v11 = *(*(v9 - 8) + 64);
    MEMORY[0x1EEE9AC00](v10);
    v13 = (&v41[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v14 + 16))(v13);
    v15 = *v13;
    v16 = type metadata accessor for SDSBaseOperationFactory();
    v42 = v16;
    v43 = &off_1F5690858;
    v41[0] = v15;
    v17 = type metadata accessor for SDSQuoteService();
    v18 = swift_allocObject();
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v41, v16);
    v20 = *(*(v16 - 8) + 64);
    MEMORY[0x1EEE9AC00](v19);
    v22 = (&v41[-1] - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v23 + 16))(v22);
    v24 = *v22;
    v18[5] = v16;
    v18[6] = &off_1F5690858;
    v18[2] = v24;
    v18[7] = v8;
    __swift_destroy_boxed_opaque_existential_1(v41);
    result = __swift_destroy_boxed_opaque_existential_1(v45);
    v25 = &off_1F5690848;
LABEL_7:
    a2[3] = v17;
    a2[4] = v25;
    *a2 = v18;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_1DAB2E028@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DAA4D678(a1, v41);
  v4 = sub_1DAA6CBB4(v41);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v4)
  {
    sub_1DAA44440(0, &unk_1EE1258D8);
    result = sub_1DACB8254();
    v7 = v42;
    if (v42)
    {
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v9 = *(*(v7 - 8) + 64);
      MEMORY[0x1EEE9AC00](v8);
      v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v11;
      v14 = type metadata accessor for SDSBaseOperationFactory();
      v39 = v14;
      v40 = &off_1F5690858;
      v38[0] = v13;
      v15 = type metadata accessor for SDSQuoteDetailService();
      v16 = swift_allocObject();
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v38, v14);
      v18 = *(*(v14 - 8) + 64);
      MEMORY[0x1EEE9AC00](v17);
      v20 = (v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20);
      v22 = *v20;
      v16[5] = v14;
      v16[6] = &off_1F5690858;
      v16[2] = v22;
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v41);
      v23 = &off_1F5692790;
LABEL_6:
      a2[3] = v15;
      a2[4] = v23;
      *a2 = v16;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_1DAA44440(0, &qword_1EE1257E0);
    result = sub_1DACB8254();
    v24 = v42;
    if (v42)
    {
      v25 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v26 = *(*(v24 - 8) + 64);
      MEMORY[0x1EEE9AC00](v25);
      v28 = (v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28);
      v30 = *v28;
      v31 = type metadata accessor for YahooBaseOperationFactory();
      v39 = v31;
      v40 = &off_1F56825C8;
      v38[0] = v30;
      v15 = type metadata accessor for YahooQuoteDetailService();
      v16 = swift_allocObject();
      v32 = __swift_mutable_project_boxed_opaque_existential_1(v38, v31);
      v33 = *(*(v31 - 8) + 64);
      MEMORY[0x1EEE9AC00](v32);
      v35 = (v38 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v36 + 16))(v35);
      v37 = *v35;
      v16[5] = v31;
      v16[6] = &off_1F56825C8;
      v16[2] = v37;
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v41);
      v23 = &off_1F568EB88;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB2E44C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DAA4D678(a1, v41);
  v4 = sub_1DAA6CBB4(v41);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v4)
  {
    sub_1DAA44440(0, &unk_1EE1258D8);
    result = sub_1DACB8254();
    v7 = v42;
    if (v42)
    {
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v9 = *(*(v7 - 8) + 64);
      MEMORY[0x1EEE9AC00](v8);
      v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v11;
      v14 = type metadata accessor for SDSBaseOperationFactory();
      v39 = v14;
      v40 = &off_1F5690858;
      v38[0] = v13;
      v15 = type metadata accessor for SDSChartService();
      v16 = swift_allocObject();
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v38, v14);
      v18 = *(*(v14 - 8) + 64);
      MEMORY[0x1EEE9AC00](v17);
      v20 = (v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20);
      v22 = *v20;
      v16[5] = v14;
      v16[6] = &off_1F5690858;
      v16[2] = v22;
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v41);
      v23 = &off_1F5690868;
LABEL_6:
      a2[3] = v15;
      a2[4] = v23;
      *a2 = v16;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_1DAA44440(0, &unk_1EE1257C0);
    result = sub_1DACB8254();
    v24 = v42;
    if (v42)
    {
      v25 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v26 = *(*(v24 - 8) + 64);
      MEMORY[0x1EEE9AC00](v25);
      v28 = (v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28);
      v30 = *v28;
      v31 = type metadata accessor for YahooChartOperationFactory();
      v39 = v31;
      v40 = &off_1F568AB08;
      v38[0] = v30;
      v15 = type metadata accessor for YahooChartService();
      v16 = swift_allocObject();
      v32 = __swift_mutable_project_boxed_opaque_existential_1(v38, v31);
      v33 = *(*(v31 - 8) + 64);
      MEMORY[0x1EEE9AC00](v32);
      v35 = (v38 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v36 + 16))(v35);
      v37 = *v35;
      v16[5] = v31;
      v16[6] = &off_1F568AB08;
      v16[2] = v37;
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v41);
      v23 = &off_1F5690828;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB2E8A8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE1257E8);
  result = sub_1DACB8254();
  v5 = v23;
  if (v23)
  {
    v6 = __swift_mutable_project_boxed_opaque_existential_1(v22, v23);
    v7 = *(*(v5 - 8) + 64);
    MEMORY[0x1EEE9AC00](v6);
    v9 = (v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v10 + 16))(v9);
    v11 = *v9;
    v12 = type metadata accessor for SparklineOperationFactory();
    v21[3] = v12;
    v21[4] = &off_1F56848A0;
    v21[0] = v11;
    v13 = type metadata accessor for SparklineService();
    v14 = swift_allocObject();
    v15 = __swift_mutable_project_boxed_opaque_existential_1(v21, v12);
    v16 = *(*(v12 - 8) + 64);
    MEMORY[0x1EEE9AC00](v15);
    v18 = (v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v19 + 16))(v18);
    v20 = *v18;
    v14[5] = v12;
    v14[6] = &off_1F56848A0;
    v14[2] = v20;
    __swift_destroy_boxed_opaque_existential_1(v21);
    result = __swift_destroy_boxed_opaque_existential_1(v22);
    a2[3] = v13;
    a2[4] = &off_1F5692648;
    *a2 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB2EAD4@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0);
  result = sub_1DACB8254();
  if (!v65)
  {
    __break(1u);
    goto LABEL_18;
  }

  sub_1DAA4D460(&v64, v66);
  v6 = v67;
  v7 = v68;
  __swift_project_boxed_opaque_existential_1(v66, v67);
  if ((*(v7 + 8))(v6, v7))
  {
    v8 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &qword_1EE125F08);
    result = sub_1DACB8254();
    if (v65)
    {
      v9 = a1[4];
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      sub_1DAA44440(0, qword_1EE125D90);
      result = sub_1DACB8254();
      if (v62)
      {
        v10 = a1[4];
        __swift_project_boxed_opaque_existential_1(a1, a1[3]);
        sub_1DAA44440(0, &unk_1EE1258E8);
        result = sub_1DACB8254();
        if (v59)
        {
          v11 = v60;
          v12 = a1[4];
          __swift_project_boxed_opaque_existential_1(a1, a1[3]);
          sub_1DAA44440(0, &qword_1EE125910);
          result = sub_1DACB8254();
          if (v58)
          {
            v13 = a1[4];
            __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            sub_1DAA44440(0, &unk_1EE125810);
            result = sub_1DACB8254();
            v14 = v55;
            if (v55)
            {
              v15 = v56;
              v16 = a1[4];
              __swift_project_boxed_opaque_existential_1(a1, a1[3]);
              sub_1DAA44440(0, qword_1EE125E60);
              result = sub_1DACB8254();
              if (v54)
              {
                v17 = type metadata accessor for NewsStockFeedService();
                v18 = swift_allocObject();
                sub_1DAA4D460(&v64, (v18 + 2));
                sub_1DAA4D460(&v61, (v18 + 7));
                v18[12] = v59;
                v18[13] = v11;
                sub_1DAA4D460(&v57, (v18 + 14));
                v18[19] = v14;
                v18[20] = v15;
                sub_1DAA4D460(&v53, (v18 + 21));
                v19 = &off_1F568B490;
LABEL_16:
                a2[3] = v17;
                a2[4] = v19;
                *a2 = v18;
                return __swift_destroy_boxed_opaque_existential_1(v66);
              }

              goto LABEL_23;
            }

LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }

LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  sub_1DAA4D678(a1, &v64);
  v20 = sub_1DAA6CBB4(&v64);
  v21 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((v20 & 1) == 0)
  {
    sub_1DAA44440(0, &qword_1EE1257E0);
    result = sub_1DACB8254();
    v38 = v65;
    if (v65)
    {
      v39 = __swift_mutable_project_boxed_opaque_existential_1(&v64, v65);
      v40 = *(*(v38 - 8) + 64);
      MEMORY[0x1EEE9AC00](v39);
      v42 = (&v52 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v43 + 16))(v42);
      v44 = *v42;
      v45 = type metadata accessor for YahooBaseOperationFactory();
      v62 = v45;
      v63 = &off_1F56825C8;
      *&v61 = v44;
      v17 = type metadata accessor for YahooStockFeedService();
      v18 = swift_allocObject();
      v46 = __swift_mutable_project_boxed_opaque_existential_1(&v61, v45);
      v47 = *(*(v45 - 8) + 64);
      MEMORY[0x1EEE9AC00](v46);
      v49 = (&v52 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v50 + 16))(v49);
      v51 = *v49;
      v18[5] = v45;
      v18[6] = &off_1F56825C8;
      v18[2] = v51;
      __swift_destroy_boxed_opaque_existential_1(&v61);
      __swift_destroy_boxed_opaque_existential_1(&v64);
      v19 = &off_1F568DA38;
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  sub_1DAA44440(0, &unk_1EE1258D8);
  result = sub_1DACB8254();
  if (!v65)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v22 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAB3244C();
  result = sub_1DACB8254();
  v23 = v57;
  if (v57)
  {
    v24 = v65;
    v25 = __swift_mutable_project_boxed_opaque_existential_1(&v64, v65);
    v26 = *(*(v24 - 8) + 64);
    MEMORY[0x1EEE9AC00](v25);
    v28 = (&v52 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v29 + 16))(v28);
    v30 = *v28;
    v31 = type metadata accessor for SDSBaseOperationFactory();
    v62 = v31;
    v63 = &off_1F5690858;
    *&v61 = v30;
    v17 = type metadata accessor for SDSStockFeedService();
    v18 = swift_allocObject();
    v32 = __swift_mutable_project_boxed_opaque_existential_1(&v61, v31);
    v33 = *(*(v31 - 8) + 64);
    MEMORY[0x1EEE9AC00](v32);
    v35 = (&v52 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v36 + 16))(v35);
    v37 = *v35;
    v18[5] = v31;
    v18[6] = &off_1F5690858;
    v18[2] = v37;
    v18[7] = v23;
    __swift_destroy_boxed_opaque_existential_1(&v61);
    __swift_destroy_boxed_opaque_existential_1(&v64);
    v19 = &off_1F5690080;
    goto LABEL_16;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1DAB2F230@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125BC0);
  sub_1DACB8254();
  if (v15)
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, qword_1EE125D90);
    sub_1DACB8254();
    if (v13)
    {
      v6 = type metadata accessor for TestStockFeedService();
      v7 = swift_allocObject();
      sub_1DAB326EC();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      *(v7 + 16) = sub_1DACB8414();
      sub_1DAA4D460(&v14, v7 + 24);
      result = sub_1DAA4D460(&v12, v7 + 64);
      a2[3] = v6;
      a2[4] = &off_1F568E638;
      *a2 = v7;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1DAB2F3A8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125A00);
  result = sub_1DACB8234();
  if (!v16)
  {
    __break(1u);
    goto LABEL_11;
  }

  sub_1DAA4D460(&v15, v18);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0);
  result = sub_1DACB8254();
  if (!v14)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1DAA4D460(&v13, &v15);
  v7 = v16;
  v8 = v17;
  __swift_project_boxed_opaque_existential_1(&v15, v16);
  if (((*(v8 + 8))(v7, v8) & 1) == 0)
  {
    sub_1DAA4D460(v18, a2);
    return __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE1253C0, &protocolRef_FCJSONRecordSourceType);
  if (qword_1EE123758 != -1)
  {
    swift_once();
  }

  result = sub_1DACB8224();
  if (result)
  {
    v10 = result;
    sub_1DAA4D678(v18, &v13);
    v11 = type metadata accessor for NewsStockMetadataService();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    sub_1DAA4D460(&v13, v12 + 24);
    a2[3] = v11;
    a2[4] = &off_1F568E300;
    *a2 = v12;
    __swift_destroy_boxed_opaque_existential_1(v18);
    return __swift_destroy_boxed_opaque_existential_1(&v15);
  }

LABEL_12:
  __break(1u);
  return result;
}

id sub_1DAB2F5CC@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for IdentificationService();
  result = [objc_allocWithZone(v2) init];
  a1[3] = v2;
  a1[4] = &off_1F5689180;
  *a1 = result;
  return result;
}

uint64_t sub_1DAB2F618@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE1206F0);
  result = sub_1DACB8254();
  if (v28)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &unk_1EE125768);
    result = sub_1DACB8254();
    v7 = v26;
    if (v26)
    {
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v25, v26);
      v9 = *(*(v7 - 8) + 64);
      MEMORY[0x1EEE9AC00](v8);
      v11 = (&v24[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v11;
      v14 = type metadata accessor for RemoteConfigurationSettingsFactory();
      v24[3] = v14;
      v24[4] = &off_1F56896D8;
      v24[0] = v13;
      v15 = type metadata accessor for RemoteAppConfigurationService();
      v16 = swift_allocObject();
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v24, v14);
      v18 = *(*(v14 - 8) + 64);
      MEMORY[0x1EEE9AC00](v17);
      v20 = (&v24[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20);
      v22 = *v20;
      v16[10] = v14;
      v16[11] = &off_1F56896D8;
      v16[7] = v22;
      sub_1DAA4D460(&v27, (v16 + 2));
      __swift_destroy_boxed_opaque_existential_1(v24);
      result = __swift_destroy_boxed_opaque_existential_1(v25);
      a2[3] = v15;
      a2[4] = &off_1F56916A0;
      *a2 = v16;
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

uint64_t sub_1DAB2F8A4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA4F6B0(0, &qword_1EE125580, &qword_1EE1254C8, off_1E85E2088);
  result = sub_1DACB8244();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &qword_1EE125910);
    result = sub_1DACB8254();
    if (v11)
    {
      v8 = type metadata accessor for CloudKitPollingService();
      v9 = swift_allocObject();
      *(v9 + 64) = 0;
      *(v9 + 16) = v6;
      result = sub_1DAA4D460(&v10, v9 + 24);
      a2[3] = v8;
      a2[4] = &off_1F56836D8;
      *a2 = v9;
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

uint64_t sub_1DAB2F9BC@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  if (qword_1EE1200A8 != -1)
  {
    swift_once();
  }

  sub_1DAA5CC28(&qword_1EE124E58, a2, type metadata accessor for ServiceAssembly);
  sub_1DACB7F84();
  if (v23)
  {
    v6 = type metadata accessor for EmptyTopStoriesService();
    result = swift_allocObject();
    v8 = &off_1F56806A0;
LABEL_11:
    a3[3] = v6;
    a3[4] = v8;
    *a3 = result;
    return result;
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125808);
  result = sub_1DACB8254();
  if (!v24)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125BC0);
  result = sub_1DACB8254();
  if (!v22)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE1258E8);
  result = sub_1DACB8254();
  if (!v19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v20;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910);
  result = sub_1DACB8254();
  if (!v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125320, &protocolRef_FCCoreConfigurationManager);
  result = sub_1DACB8244();
  if (result)
  {
    v15 = result;
    v6 = type metadata accessor for TopStoriesService();
    v16 = swift_allocObject();
    sub_1DAA4D460(&v23, (v16 + 2));
    sub_1DAA4D460(&v21, (v16 + 7));
    v16[12] = v19;
    v16[13] = v12;
    sub_1DAA4D460(&v17, (v16 + 14));
    result = v16;
    v16[19] = v15;
    v8 = &off_1F5680668;
    goto LABEL_11;
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1DAB2FCC0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125BC0);
  sub_1DACB8254();
  if (v11)
  {
    v4 = type metadata accessor for TestTopStoriesService();
    v5 = swift_allocObject();
    sub_1DAB326EC();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    *(v5 + 16) = sub_1DACB8414();
    result = sub_1DAA4D460(&v10, v5 + 24);
    a2[3] = v4;
    a2[4] = &off_1F568E128;
    *a2 = v5;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB2FDD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125808);
  result = sub_1DACB8254();
  if (!v39)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE1206F0);
  result = sub_1DACB8254();
  v7 = v36;
  if (!v36)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v29 = v37;
  v8 = __swift_project_boxed_opaque_existential_1(v35, v36);
  v30 = &v26;
  v9 = *(v7 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v28 = *(v9 + 16);
  v28(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE125768);
  result = sub_1DACB8254();
  if (!v34)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v27 = a2;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  result = sub_1DACB8244();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v13 = result;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910);
  result = sub_1DACB8254();
  if (v32)
  {
    v15 = type metadata accessor for ForYouFeedConfigService();
    v16 = v34;
    v17 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
    v26 = &v26;
    v18 = *(*(v16 - 8) + 64);
    MEMORY[0x1EEE9AC00](v17);
    v20 = &v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = (*(v21 + 16))(v20);
    MEMORY[0x1EEE9AC00](v22);
    (v28)(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    v23 = type metadata accessor for RemoteConfigurationSettingsFactory();
    v24 = sub_1DAB0E8F0(&v38, &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v20, v13, &v31, v15, v7, v23, v29, &off_1F56896D8);
    __swift_destroy_boxed_opaque_existential_1(v33);
    (*(v9 + 8))(&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    result = __swift_destroy_boxed_opaque_existential_1(v35);
    v25 = v27;
    v27[3] = v15;
    v25[4] = &off_1F5682428;
    *v25 = v24;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1DAB30208@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  result = sub_1DACB8244();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &qword_1EE125910);
    result = sub_1DACB8254();
    if (v11)
    {
      v8 = type metadata accessor for StockFeedConfigService();
      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      result = sub_1DAA4D460(&v10, v9 + 24);
      a2[3] = v8;
      a2[4] = &off_1F5685270;
      *a2 = v9;
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

uint64_t sub_1DAB30314@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125E48);
  result = sub_1DACB8254();
  if (v8)
  {
    v5 = type metadata accessor for TestNewsFeedService();
    v6 = swift_allocObject();
    result = sub_1DAA4D460(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_1F56866B0;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB303C8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE1253C0, &protocolRef_FCJSONRecordSourceType);
  if (qword_1EE123758 != -1)
  {
    swift_once();
  }

  result = sub_1DACB8224();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = result;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, qword_1EE125E60);
  result = sub_1DACB8254();
  if (!v14)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910);
  result = sub_1DACB8254();
  if (v12)
  {
    v9 = type metadata accessor for StockFeedLookupService();
    v10 = swift_allocObject();
    *(v10 + 16) = v6;
    sub_1DAA4D460(&v13, v10 + 24);
    result = sub_1DAA4D460(&v11, v10 + 64);
    a2[3] = v9;
    a2[4] = &off_1F568EBD0;
    *a2 = v10;
    return result;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1DAB30574@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for TestFeedLookupService();
  v3 = swift_allocObject();
  sub_1DAB326EC();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  result = sub_1DACB8414();
  *(v3 + 16) = result;
  a1[3] = v2;
  a1[4] = &off_1F5685C90;
  *a1 = v3;
  return result;
}

uint64_t sub_1DAB30634@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &qword_1EE125488, &protocolRef_FCContentContext);
  result = sub_1DACB8244();
  if (result)
  {
    v6 = result;
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, qword_1EE1207A0);
    result = sub_1DACB8254();
    if (v11)
    {
      v8 = type metadata accessor for NewsHeadlineService();
      v9 = swift_allocObject();
      *(v9 + 16) = v6;
      result = sub_1DAA4D460(&v10, v9 + 24);
      a2[3] = v8;
      a2[4] = &off_1F5686E50;
      *a2 = v9;
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

void *sub_1DAB30740@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 408);
  type metadata accessor for EndpointConfiguration.Defaults();
  swift_initStaticObject();
  v4 = sub_1DAA619A0();
  sub_1DAA61D24(v3, v4, v5, v7);

  return memcpy(a2, v7, 0x110uLL);
}

uint64_t sub_1DAB307C4(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA5CC28(&qword_1EE124E58, a2, type metadata accessor for ServiceAssembly);
  sub_1DACB7F84();
  type metadata accessor for PermanentURLFactory();
  result = swift_allocObject();
  *(result + 16) = 0x403000000020100uLL >> (8 * v4);
  return result;
}

uint64_t sub_1DAB308CC@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910);
  result = sub_1DACB8254();
  if (!v33)
  {
    __break(1u);
    goto LABEL_6;
  }

  sub_1DAA4D460(&v32, v34);
  v6 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  swift_getKeyPath();
  (*(v6 + 56))();

  sub_1DACB7AB4();
  v7 = sub_1DACB8BC4();

  v8 = v36;
  __swift_project_boxed_opaque_existential_1(v34, v35);
  swift_getKeyPath();
  (*(v8 + 56))();

  v9 = sub_1DACB8BC4();

  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125938);
  result = sub_1DACB8254();
  if (!v33)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125F20);
  result = sub_1DACB8254();
  if (v31)
  {
    v12 = v33;
    v13 = __swift_mutable_project_boxed_opaque_existential_1(&v32, v33);
    v14 = *(*(v12 - 8) + 64);
    MEMORY[0x1EEE9AC00](v13);
    v16 = (&v29[-1] - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v17 + 16))(v16);
    v18 = *v16;
    v19 = type metadata accessor for YahooChartModelEngine();
    v29[3] = v19;
    v29[4] = &off_1F5690098;
    v29[0] = v18;
    v20 = type metadata accessor for SparklineOperationFactory();
    v21 = swift_allocObject();
    v22 = __swift_mutable_project_boxed_opaque_existential_1(v29, v19);
    v23 = *(*(v19 - 8) + 64);
    MEMORY[0x1EEE9AC00](v22);
    v25 = (&v29[-1] - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v26 + 16))(v25);
    v27 = *v25;
    v21[7] = v19;
    v21[8] = &off_1F5690098;
    v21[3] = v9;
    v21[4] = v27;
    v21[2] = v7;
    sub_1DAA4D460(&v30, (v21 + 9));
    __swift_destroy_boxed_opaque_existential_1(v29);
    __swift_destroy_boxed_opaque_existential_1(&v32);
    a2[3] = v20;
    a2[4] = &off_1F56848A0;
    *a2 = v21;
    return __swift_destroy_boxed_opaque_existential_1(v34);
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1DAB30CD8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DAA44304(0, &qword_1EE1263D0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - v6;
  v8 = *a1;
  v9 = a1[1];
  sub_1DACB7A94();
  v10 = sub_1DACB7AB4();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v7, 1, v10);
  if (result != 1)
  {
    return (*(v11 + 32))(a2, v7, v10);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB30E00@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DACB7AF4();
  if (v6 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1DAB30E44@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125938);
  result = sub_1DACB8254();
  if (v46)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &qword_1EE1257E0);
    result = sub_1DACB8254();
    if (v44)
    {
      v7 = v46;
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v45, v46);
      v38[2] = v38;
      v9 = *(*(v7 - 8) + 64);
      MEMORY[0x1EEE9AC00](v8);
      v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = v44;
      v14 = __swift_mutable_project_boxed_opaque_existential_1(v43, v44);
      v38[1] = v38;
      v15 = *(*(v13 - 8) + 64);
      MEMORY[0x1EEE9AC00](v14);
      v17 = (v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v18 + 16))(v17);
      v19 = *v11;
      v20 = *v17;
      v21 = type metadata accessor for YahooChartModelEngine();
      v42[3] = v21;
      v42[4] = &off_1F5690098;
      v42[0] = v19;
      v22 = type metadata accessor for YahooBaseOperationFactory();
      v40 = v22;
      v41 = &off_1F56825C8;
      v39[0] = v20;
      v23 = type metadata accessor for YahooChartOperationFactory();
      v24 = swift_allocObject();
      v25 = __swift_mutable_project_boxed_opaque_existential_1(v42, v21);
      v26 = *(*(v21 - 8) + 64);
      MEMORY[0x1EEE9AC00](v25);
      v28 = (v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28);
      v30 = v40;
      v31 = __swift_mutable_project_boxed_opaque_existential_1(v39, v40);
      v32 = *(*(v30 - 8) + 64);
      MEMORY[0x1EEE9AC00](v31);
      v34 = (v38 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v35 + 16))(v34);
      v36 = *v28;
      v37 = *v34;
      v24[5] = v21;
      v24[6] = &off_1F5690098;
      v24[2] = v36;
      v24[10] = v22;
      v24[11] = &off_1F56825C8;
      v24[7] = v37;
      __swift_destroy_boxed_opaque_existential_1(v39);
      __swift_destroy_boxed_opaque_existential_1(v42);
      __swift_destroy_boxed_opaque_existential_1(v43);
      result = __swift_destroy_boxed_opaque_existential_1(v45);
      a2[3] = v23;
      a2[4] = &off_1F568AB08;
      *a2 = v24;
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

uint64_t sub_1DAB3129C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125F20);
  result = sub_1DACB8254();
  if (v8)
  {
    v5 = type metadata accessor for YahooBaseOperationFactory();
    v6 = swift_allocObject();
    result = sub_1DAA4D460(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_1F56825C8;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1DAB31350@<X0>(void *a1@<X8>)
{
  v2 = sub_1DACB7AB4();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  result = FCURLForContainerizedUserAccountCachesDirectory();
  if (result)
  {
    v11 = result;
    sub_1DACB7A44();

    v12 = [objc_opt_self() defaultConfiguration];
    v13 = [v12 contentContainerCombinationIdentifier];

    sub_1DACB9324();
    sub_1DACB7A14();

    v14 = *(v3 + 8);
    v14(v7, v2);
    v15 = objc_allocWithZone(MEMORY[0x1E69C6D58]);
    v16 = sub_1DACB7A04();
    v17 = [v15 initWithContentDirectoryURL_];

    a1[3] = sub_1DAA420F4(0, &qword_1EE123DE0, 0x1E69C6D58);
    a1[4] = &off_1F5689458;
    *a1 = v17;
    return (v14)(v9, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB31548@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a2;
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125948);
  result = sub_1DACB8254();
  if (!v15)
  {
    __break(1u);
    goto LABEL_7;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for PermanentURLFactory();
  result = sub_1DACB8244();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v10 = result;
  if (qword_1EE124160 != -1)
  {
    swift_once();
  }

  sub_1DAA5CC28(&qword_1EE124E58, v9, type metadata accessor for ServiceAssembly);
  sub_1DACB7F84();
  v11 = type metadata accessor for RemoteConfigurationSettingsFactory();
  v12 = swift_allocObject();
  result = sub_1DAA4D460(&v14, v12 + 16);
  *(v12 + 56) = v10;
  *(v12 + 64) = v13;
  a3[3] = v11;
  a3[4] = &off_1F56896D8;
  *a3 = v12;
  return result;
}

uint64_t sub_1DAB31704@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125BD0);
  result = sub_1DACB8254();
  if (!v18)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_1DAA4D460(&v17, v19);
  v6 = v20;
  v7 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  if (((*(v7 + 8))(v6, v7) & 1) == 0)
  {
    v12 = type metadata accessor for NoopWatchlistDeprecationService();
    v13 = swift_allocObject();
    v14 = &off_1F56813C8;
    goto LABEL_10;
  }

  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125E40);
  result = sub_1DACB8254();
  if (!v18)
  {
    goto LABEL_12;
  }

  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE1253C0, &protocolRef_FCJSONRecordSourceType);
  if (qword_1EE123758 != -1)
  {
    swift_once();
  }

  result = sub_1DACB8224();
  if (!result)
  {
    goto LABEL_13;
  }

  v10 = result;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &qword_1EE125910);
  result = sub_1DACB8254();
  if (v16)
  {
    v12 = type metadata accessor for WatchlistDeprecationService();
    v13 = swift_allocObject();
    sub_1DAA4D460(&v17, v13 + 16);
    *(v13 + 56) = v10;
    sub_1DAA4D460(&v15, v13 + 64);
    v14 = &off_1F56813D8;
LABEL_10:
    a2[3] = v12;
    a2[4] = v14;
    *a2 = v13;
    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1DAB31970@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, qword_1EE125D90);
  result = sub_1DACB8254();
  if (v8)
  {
    v5 = type metadata accessor for NewsStockFeedIdentifierService();
    v6 = swift_allocObject();
    result = sub_1DAA4D460(&v7, v6 + 16);
    a2[3] = v5;
    a2[4] = &off_1F568A658;
    *a2 = v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB31A24@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_1DAA4D678(a1, v41);
  v4 = sub_1DAA6CBB4(v41);
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if (v4)
  {
    sub_1DAA44440(0, &unk_1EE1258D8);
    result = sub_1DACB8254();
    v7 = v42;
    if (v42)
    {
      v8 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v9 = *(*(v7 - 8) + 64);
      MEMORY[0x1EEE9AC00](v8);
      v11 = (v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v12 + 16))(v11);
      v13 = *v11;
      v14 = type metadata accessor for SDSBaseOperationFactory();
      v39 = v14;
      v40 = &off_1F5690858;
      v38[0] = v13;
      v15 = type metadata accessor for SDSStockMetadataService();
      v16 = swift_allocObject();
      v17 = __swift_mutable_project_boxed_opaque_existential_1(v38, v14);
      v18 = *(*(v14 - 8) + 64);
      MEMORY[0x1EEE9AC00](v17);
      v20 = (v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v21 + 16))(v20);
      v22 = *v20;
      v16[5] = v14;
      v16[6] = &off_1F5690858;
      v16[2] = v22;
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v41);
      v23 = &off_1F56918D8;
LABEL_6:
      a2[3] = v15;
      a2[4] = v23;
      *a2 = v16;
      return result;
    }

    __break(1u);
  }

  else
  {
    sub_1DAA44440(0, &qword_1EE1257E0);
    result = sub_1DACB8254();
    v24 = v42;
    if (v42)
    {
      v25 = __swift_mutable_project_boxed_opaque_existential_1(v41, v42);
      v26 = *(*(v24 - 8) + 64);
      MEMORY[0x1EEE9AC00](v25);
      v28 = (v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v29 + 16))(v28);
      v30 = *v28;
      v31 = type metadata accessor for YahooBaseOperationFactory();
      v39 = v31;
      v40 = &off_1F56825C8;
      v38[0] = v30;
      v15 = type metadata accessor for YahooStockMetadataService();
      v16 = swift_allocObject();
      v32 = __swift_mutable_project_boxed_opaque_existential_1(v38, v31);
      v33 = *(*(v31 - 8) + 64);
      MEMORY[0x1EEE9AC00](v32);
      v35 = (v38 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v36 + 16))(v35);
      v37 = *v35;
      v16[5] = v31;
      v16[6] = &off_1F56825C8;
      v16[2] = v37;
      __swift_destroy_boxed_opaque_existential_1(v38);
      result = __swift_destroy_boxed_opaque_existential_1(v41);
      v23 = &off_1F5686D60;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAB31E48@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA44440(0, &unk_1EE1258D8);
  result = sub_1DACB8254();
  if (v28)
  {
    v6 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAB3244C();
    result = sub_1DACB8254();
    v7 = v26;
    if (v26)
    {
      v8 = v28;
      v9 = __swift_mutable_project_boxed_opaque_existential_1(v27, v28);
      v10 = *(*(v8 - 8) + 64);
      MEMORY[0x1EEE9AC00](v9);
      v12 = (&v25[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v13 + 16))(v12);
      v14 = *v12;
      v15 = type metadata accessor for SDSBaseOperationFactory();
      v25[3] = v15;
      v25[4] = &off_1F5690858;
      v25[0] = v14;
      v16 = type metadata accessor for SDSCurrencyService();
      v17 = swift_allocObject();
      v18 = __swift_mutable_project_boxed_opaque_existential_1(v25, v15);
      v19 = *(*(v15 - 8) + 64);
      MEMORY[0x1EEE9AC00](v18);
      v21 = (&v25[-1] - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v22 + 16))(v21);
      v23 = *v21;
      v17[5] = v15;
      v17[6] = &off_1F5690858;
      v17[2] = v23;
      v17[7] = v7;
      __swift_destroy_boxed_opaque_existential_1(v25);
      result = __swift_destroy_boxed_opaque_existential_1(v27);
      a2[3] = v16;
      a2[4] = &off_1F568C6A8;
      *a2 = v17;
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

uint64_t sub_1DAB320C4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1DACB86E4();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAA485B8(0, &unk_1EE125310, &protocolRef_FCJSONRecordTreeSourceType);
  result = sub_1DACB8244();
  if (result)
  {
    v8 = result;
    v9 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    sub_1DAA44440(0, &qword_1EE125910);
    result = sub_1DACB8254();
    if (v16)
    {
      v10 = type metadata accessor for ForYouConfigRecordService();
      v11 = swift_allocObject();
      sub_1DAA5CC28(&qword_1EE1255A8, 255, MEMORY[0x1E69D67A0]);
      sub_1DAA44304(0, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
      sub_1DAB3235C();
      sub_1DACB9BB4();
      sub_1DAB323E4();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      *(v11 + 64) = sub_1DACB8354();
      *(v11 + 16) = v8;
      result = sub_1DAA4D460(&v15, v11 + 24);
      a2[3] = v10;
      a2[4] = &off_1F568BCA8;
      *a2 = v11;
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

unint64_t sub_1DAB3235C()
{
  result = qword_1EE125508;
  if (!qword_1EE125508)
  {
    sub_1DAA44304(255, &qword_1EE125510, MEMORY[0x1E69D67A0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE125508);
  }

  return result;
}

void sub_1DAB323E4()
{
  if (!qword_1EE120020)
  {
    type metadata accessor for ForYouConfigRecord(255);
    v0 = sub_1DACB8374();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE120020);
    }
  }
}

void sub_1DAB3244C()
{
  if (!qword_1EE125548)
  {
    sub_1DAA44440(255, qword_1EE125A20);
    v0 = sub_1DACB9724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE125548);
    }
  }
}

uint64_t sub_1DAB324B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1DACB81D4();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  *(a4 + 16) = 0;
  *(a4 + 24) = MEMORY[0x1E69E7CC0];
  sub_1DAA4D678(a2, v19);
  type metadata accessor for CloudKitWatchlistMetadataProvider();
  v10 = swift_allocObject();
  sub_1DAB1BBE0();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *(v10 + 56) = sub_1DACB8964();
  sub_1DAA4D460(v19, v10 + 16);
  sub_1DAA4D678(a2, a4 + 32);
  *(a4 + 72) = v10;
  sub_1DACB71F4();
  sub_1DACB81C4();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = v10;
  v14[4] = a3;
  sub_1DAA4F6B0(0, &qword_1EE11FF30, &qword_1EE11F868, off_1E85E2120);
  v16 = *(v15 + 48);
  v17 = *(v15 + 52);
  swift_allocObject();
  sub_1DACB71F4();
  sub_1DACB71F4();
  *(a4 + 80) = sub_1DACB8914();
  sub_1DACB71F4();
  sub_1DACB8904();

  __swift_destroy_boxed_opaque_existential_1(a2);
  return a4;
}

uint64_t sub_1DAB326A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_1DAB326EC()
{
  if (!qword_1ECBE72D8)
  {
    sub_1DAB32748();
    v0 = sub_1DACB8404();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECBE72D8);
    }
  }
}

unint64_t sub_1DAB32748()
{
  result = qword_1ECBE72E0;
  if (!qword_1ECBE72E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE72E0);
  }

  return result;
}

void *sub_1DAB32854()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = result[6];
    v3 = result[7];
    __swift_project_boxed_opaque_existential_1(result + 3, v2);
    if ((*(v3 + 24))(v2, v3))
    {
      if (qword_1EE120098 != -1)
      {
        swift_once();
      }

      type metadata accessor for LanguageSettings();
      sub_1DAA609A0(&qword_1EE122B38, v4, type metadata accessor for LanguageSettings);
      sub_1DACB7F84();
      v5 = v6;
      if (v6 == *(v1 + 16))
      {
      }
    }

    else
    {
      if ((v1[2] & 1) == 0)
      {
      }

      v5 = 0;
    }

    *(v1 + 16) = v5;
    sub_1DAB32D18(v5);
  }

  return result;
}

uint64_t sub_1DAB3299C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (qword_1EE120098 != -1)
  {
    swift_once();
  }

  sub_1DAA609A0(&qword_1EE122B38, a2, type metadata accessor for LanguageSettings);
  sub_1DACB7F84();
  if (v8)
  {
    return 0;
  }

  v4 = v2[6];
  v5 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v4);
  if (((*(v5 + 24))(v4, v5) & 1) == 0)
  {
    return 0;
  }

  if (qword_1ECBE5A90 != -1)
  {
    swift_once();
  }

  sub_1DACB7F84();
  return v7;
}

uint64_t sub_1DAB32B18(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  if (qword_1EE120098 != -1)
  {
    swift_once();
  }

  sub_1DAA609A0(&unk_1ECBE73B0, a2, type metadata accessor for LanguageSettings);
  sub_1DACB80C4();
  if (v3)
  {
    if (qword_1ECBE5A90 != -1)
    {
      swift_once();
    }

    sub_1DACB80C4();
  }

  v5 = v2[6];
  v6 = v2[7];
  __swift_project_boxed_opaque_existential_1(v2 + 3, v5);
  result = (*(v6 + 24))(v5, v6);
  if ((result & 1) == 0)
  {
    if ((v2[2] & 1) == 0)
    {
      return result;
    }

    LOBYTE(result) = 0;
    goto LABEL_12;
  }

  sub_1DAA609A0(&qword_1EE122B38, v8, type metadata accessor for LanguageSettings);
  sub_1DACB7F84();
  result = v9;
  if (v9 != *(v2 + 16))
  {
LABEL_12:
    *(v2 + 16) = result;
    return sub_1DAB32D18(result);
  }

  return result;
}

uint64_t sub_1DAB32D18(char a1)
{
  v3 = sub_1DACB8FB4();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DACB9004();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DAA57C58();
  v13 = sub_1DACB9954();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  *(v14 + 24) = a1;
  aBlock[4] = sub_1DAB33844;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_5;
  v15 = _Block_copy(aBlock);
  sub_1DACB71F4();

  sub_1DACB8FD4();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DAA609A0(&qword_1EE124040, 255, MEMORY[0x1E69E7F60]);
  sub_1DAA571EC(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA6F790();
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v12, v7, v15);
  _Block_release(v15);

  (*(v4 + 8))(v7, v3);
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_1DAB33000(uint64_t *a1)
{
  swift_beginAccess();
  v3 = v1[8];
  v14 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
LABEL_20:
    v4 = sub_1DACB9E14();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_1DACB71E4();
  if (v4)
  {
    v13 = v1;
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E12777A0](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_15:
          __break(1u);
LABEL_16:
          v1 = v13;
          v10 = v14;
          goto LABEL_18;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_20;
        }

        v7 = *(v3 + 8 * v5 + 32);
        sub_1DACB71F4();
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_15;
        }
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong && (v1 = Strong, swift_unknownObjectRelease(), v1 == a1))
      {
      }

      else
      {
        sub_1DACB9D34();
        v6 = *(v14 + 16);
        sub_1DACB9D74();
        sub_1DACB9D84();
        v1 = &v14;
        sub_1DACB9D44();
      }

      ++v5;
      if (v8 == v4)
      {
        goto LABEL_16;
      }
    }
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_18:

  v11 = v1[8];
  v1[8] = v10;
}

uint64_t sub_1DAB33188()
{
  v1 = *v0;
  v2 = v0[6];
  v3 = v0[7];
  __swift_project_boxed_opaque_existential_1(v0 + 3, v2);
  result = (*(v3 + 24))(v2, v3);
  if ((result & 1) == 0)
  {
    if ((v0[2] & 1) == 0)
    {
      return result;
    }

    LOBYTE(result) = 0;
    goto LABEL_8;
  }

  if (qword_1EE120098 != -1)
  {
    swift_once();
  }

  sub_1DAA609A0(&qword_1EE122B38, v5, type metadata accessor for LanguageSettings);
  sub_1DACB7F84();
  result = v6;
  if (v6 != *(v0 + 16))
  {
LABEL_8:
    *(v0 + 16) = result;
    return sub_1DAB32D18(result);
  }

  return result;
}

uint64_t sub_1DAB33308(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  v4 = *(a1 + 64);
  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

    goto LABEL_3;
  }

  if (v4 < 0)
  {
    v11 = *(a1 + 64);
  }

  result = sub_1DACB9E14();
  v5 = result;
  if (result)
  {
LABEL_3:
    if (v5 < 1)
    {
      __break(1u);
    }

    else
    {
      sub_1DACB71E4();
      for (i = 0; i != v5; ++i)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x1E12777A0](i, v4);
        }

        else
        {
          v10 = *(v4 + 8 * i + 32);
          sub_1DACB71F4();
        }

        v13[3] = type metadata accessor for LanguageSettings();
        v13[4] = &off_1F5684240;
        v13[0] = a1;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v7 = *(v10 + 24);
          ObjectType = swift_getObjectType();
          v9 = *(v7 + 8);
          sub_1DACB71F4();
          v9(v13, a2 & 1, ObjectType, v7);
          swift_unknownObjectRelease();
        }

        else
        {
          sub_1DACB71F4();
        }

        __swift_destroy_boxed_opaque_existential_1(v13);
      }
    }
  }

  return result;
}

uint64_t sub_1DAB33484()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  v1 = *(v0 + 64);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB334F8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (qword_1EE120098 != -1)
  {
    swift_once();
  }

  sub_1DAA609A0(&qword_1EE122B38, a2, type metadata accessor for LanguageSettings);
  sub_1DACB7F84();
  return v5;
}

uint64_t sub_1DAB335B0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 56);
  __swift_project_boxed_opaque_existential_1((*v0 + 24), v1);
  return (*(v2 + 24))(v1, v2) & 1;
}

uint64_t sub_1DAB33630(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (qword_1ECBE5A90 != -1)
  {
    swift_once();
  }

  sub_1DAA609A0(&unk_1ECBE73B0, a2, type metadata accessor for LanguageSettings);
  sub_1DACB80C4();
  return sub_1DAB32D18(*(v3 + 16));
}

uint64_t sub_1DAB337A0(void *a1, char a2)
{
  v4 = a1[3];
  v5 = a1[4];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v4);

  return sub_1DAB338A0(v6, a2, v2, v4, v5);
}

void sub_1DAB33850()
{
  if (!qword_1EE123FD0)
  {
    v0 = sub_1DACB9AF4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE123FD0);
    }
  }
}

uint64_t sub_1DAB338A0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[3] = a4;
  v13[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_1, a1, a4);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v10 = *(a3 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 8))(v13, a2 & 1, ObjectType, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

id sub_1DAB33964(uint64_t *a1)
{
  v3 = sub_1DACB8174();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = objc_allocWithZone(v1);
  v6 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers;
  *&v5[v6] = [objc_allocWithZone(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
  v7 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigObservers;
  *&v5[v7] = [objc_allocWithZone(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
  v8 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownAppConfig;
  v9 = type metadata accessor for AppConfiguration(0);
  (*(*(v9 - 8) + 56))(&v5[v8], 1, 1, v9);
  *&v5[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownNewsConfig] = 0;
  v10 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_configLock;
  sub_1DACB8164();
  v11 = sub_1DACB8194();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v5[v10] = sub_1DACB8184();
  sub_1DAA4D678(a1, &v5[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigurationManager]);
  v21.receiver = v5;
  v21.super_class = v1;
  v14 = objc_msgSendSuper2(&v21, sel_init);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = *(v16 + 16);
  v18 = v14;
  v17(v15, v16);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1DACB83D4();

  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v18;
}

id sub_1DAB33BB0(uint64_t *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_1DACB8174();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers;
  *&v1[v6] = [objc_allocWithZone(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
  v7 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigObservers;
  *&v1[v7] = [objc_allocWithZone(MEMORY[0x1E696AC70]) initWithOptions:517 capacity:0];
  v8 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownAppConfig;
  v9 = type metadata accessor for AppConfiguration(0);
  (*(*(v9 - 8) + 56))(&v1[v8], 1, 1, v9);
  *&v1[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_lastKnownNewsConfig] = 0;
  v10 = OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_configLock;
  sub_1DACB8164();
  v11 = sub_1DACB8194();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  *&v1[v10] = sub_1DACB8184();
  sub_1DAA4D678(a1, &v1[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigurationManager]);
  v21.receiver = v1;
  v21.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v21, sel_init);
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v17 = *(v16 + 16);
  v18 = v14;
  v17(v15, v16);
  swift_allocObject();
  swift_unknownObjectUnownedInit();
  sub_1DACB83D4();

  __swift_destroy_boxed_opaque_existential_1(v20);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v18;
}

void sub_1DAB33DFC()
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v1 = *&Strong[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers];

  v2 = [v1 allObjects];
  sub_1DAA485B8(0, &unk_1EE11F800, &protocolRef_FCCoreConfigurationObserving);
  v3 = sub_1DACB9644();

  if (v3 >> 62)
  {
    v4 = sub_1DACB9E14();
    v5 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
    if (!v4)
    {
      goto LABEL_12;
    }
  }

  if (v4 < 1)
  {
    __break(1u);
    goto LABEL_27;
  }

  for (i = 0; i != v4; ++i)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E12777A0](i, v3);
    }

    else
    {
      v7 = *(v3 + 8 * i + 32);
      swift_unknownObjectRetain();
    }

    if ([v7 v5[93]])
    {
      v8 = swift_unknownObjectUnownedLoadStrong();
      v9 = swift_unknownObjectUnownedLoadStrong();
      swift_unknownObjectRetain();
      v10 = sub_1DAA4E530();

      [v7 configurationManager:v8 configurationDidChange:v10];
      v5 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

LABEL_12:

  v11 = swift_unknownObjectUnownedLoadStrong();
  v12 = *&v11[OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigObservers];

  v13 = [v12 allObjects];
  sub_1DAA485B8(0, &unk_1EE11F7E8, &protocolRef_FCNewsAppConfigurationObserving);
  v14 = sub_1DACB9644();

  if (v14 >> 62)
  {
    v15 = sub_1DACB9E14();
    if (v15)
    {
LABEL_14:
      if (v15 >= 1)
      {
        for (j = 0; j != v15; ++j)
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v17 = MEMORY[0x1E12777A0](j, v14);
          }

          else
          {
            v17 = *(v14 + 8 * j + 32);
            swift_unknownObjectRetain();
          }

          if ([v17 v5[93]])
          {
            v18 = swift_unknownObjectUnownedLoadStrong();
            v19 = swift_unknownObjectUnownedLoadStrong();
            swift_unknownObjectRetain();
            v20 = sub_1DAA4E530();

            [v17 configurationManager:v18 appConfigurationDidChange:v20];
            v5 = &_OBJC_LABEL_PROTOCOL___FCReceiptRefresherType;
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
          }

          swift_unknownObjectRelease();
        }

        goto LABEL_23;
      }

LABEL_27:
      __break(1u);
      return;
    }
  }

  else
  {
    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v15)
    {
      goto LABEL_14;
    }
  }

LABEL_23:
}

id sub_1DAB3412C()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1DAB341C0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1DAB342B8(id result)
{
  if (result)
  {
    return [*(v1 + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers) addObject_];
  }

  return result;
}

id sub_1DAB342DC(id result)
{
  if (result)
  {
    return [*(v1 + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_coreConfigObservers) removeObject_];
  }

  return result;
}

uint64_t sub_1DAB34370(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = v4;
  a4(a1, a2);
  v9 = v4;
  sub_1DACB8C14();
}

void sub_1DAB344E4(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AppConfiguration(0);
  sub_1DACB8BB4();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = a2;
  v7[4] = a3;
  v7[5] = v3;
  v8 = a1;
  sub_1DAA4F924(a2);
  v9 = v3;
  v10 = sub_1DACB89D4();
  sub_1DACB8A64();

  v11 = swift_allocObject();
  v11[2] = v8;
  v11[3] = a2;
  v11[4] = a3;
  v12 = v8;
  sub_1DAA4F924(a2);
  v13 = sub_1DACB89D4();
  sub_1DACB8AA4();
}

uint64_t sub_1DAB3464C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v23 = a2;
  v8 = sub_1DACB8FB4();
  v22 = *(v8 - 8);
  v9 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1DACB9004();
  v12 = *(v21 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v21);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a5;
  aBlock[4] = sub_1DAA4F9DC;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_76;
  v17 = _Block_copy(aBlock);
  sub_1DAA4F924(a3);
  v18 = a5;
  sub_1DACB8FD4();
  aBlock[7] = MEMORY[0x1E69E7CC0];
  sub_1DAA4F4AC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v19 = MEMORY[0x1E69E7F60];
  sub_1DAA4D520(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA4F584(&qword_1EE123EB0, &qword_1EE123EC0, v19);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v15, v11, v17);
  _Block_release(v17);
  (*(v22 + 8))(v11, v8);
  (*(v12 + 8))(v15, v21);
}

uint64_t sub_1DAB34944(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a2;
  v7 = sub_1DACB8FB4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1DACB9004();
  v12 = *(v22 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v16[2] = a3;
  v16[3] = a4;
  v16[4] = a1;
  aBlock[4] = sub_1DAB34EF0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAA5796C;
  aBlock[3] = &block_descriptor_70;
  v17 = _Block_copy(aBlock);
  sub_1DAA4F924(a3);
  v18 = a1;
  sub_1DACB8FD4();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1DAA4F4AC(&qword_1EE124040, MEMORY[0x1E69E7F60]);
  v19 = MEMORY[0x1E69E7F60];
  sub_1DAA4D520(0, &qword_1EE123EC0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1DAA4F584(&qword_1EE123EB0, &qword_1EE123EC0, v19);
  sub_1DACB9BB4();
  MEMORY[0x1E1277440](0, v15, v11, v17);
  _Block_release(v17);
  (*(v8 + 8))(v11, v7);
  (*(v12 + 8))(v15, v22);
}

uint64_t sub_1DAB34D08(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  sub_1DAA4F924(a1);
  sub_1DACB8C14();
}

uint64_t sub_1DAB34DEC()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC10StocksCore24NewsConfigurationManager_appConfigurationManager);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  return (*(v3 + 48))(v2, v3);
}

uint64_t sub_1DAB34E80()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 24);
    return v1(MEMORY[0x1E69E7CC0], 0);
  }

  return result;
}

uint64_t sub_1DAB34EF0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v3 = v0 + 24;
    v2 = *(v0 + 24);
    return v1(0, *(v3 + 8));
  }

  return result;
}

void sub_1DAB34F48(uint64_t *a1@<X8>)
{
  v2 = 0x73752D6E65;
  v3 = [objc_opt_self() sharedPreferences];
  v4 = v3;
  if (!v3)
  {
    v8 = 0xE500000000000000;
LABEL_8:

    v13 = 0xE200000000000000;
    v11 = 21333;
    goto LABEL_9;
  }

  v5 = [v3 stocksLanguageCode];
  if (v5)
  {
    v6 = v5;
    v2 = sub_1DACB9324();
    v8 = v7;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  v9 = [v4 stocksCountryCode];
  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = v9;
  v11 = sub_1DACB9324();
  v13 = v12;

LABEL_9:
  *a1 = v2;
  a1[1] = v8;
  a1[2] = v11;
  a1[3] = v13;
}

uint64_t sub_1DAB35054()
{
  result = sub_1DACB7AB4();
  if (v1 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = sub_1DACB7CC4();
    if (v2 <= 0x3F)
    {
      v5 = *(result - 8) + 64;
      result = sub_1DACB8204();
      if (v3 <= 0x3F)
      {
        v6 = *(result - 8) + 64;
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

id sub_1DAB3519C(void (*a1)(uint64_t *), uint64_t a2)
{
  v3 = v2;
  v63 = a1;
  v64 = a2;
  v4 = MEMORY[0x1E69E7D40];
  v5 = ((*MEMORY[0x1E69E7D40] & *v2) + qword_1EE13E4B0);
  v6 = v5[1];
  v48[2] = *v5;
  v48[1] = v6;
  v54 = type metadata accessor for YahooBaseResponse();
  v50 = sub_1DACB89E4();
  v49 = *(v50 - 8);
  v7 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v50);
  v9 = (v48 - v8);
  v59 = sub_1DACB7CC4();
  v58 = *(v59 - 8);
  v10 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v56 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1DACB8204();
  v52 = *(v53 - 8);
  v12 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v53);
  v55 = v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_1DACB74D4();
  v14 = *(v60 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v60);
  v51 = v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v48 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v57 = v48 - v21;
  v22 = sub_1DACB7AB4();
  v61 = *(v22 - 8);
  v62 = v22;
  v23 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = &v2[v5[4]];
  v27 = *v26;
  v28 = v26[1];
  v29 = &v2[v5[3]];
  sub_1DACB7A24();
  v30 = *&v3[*((*v4 & *v3) + qword_1EE13E4B0 + 40)];
  sub_1DAB361BC();
  inited = swift_initStackObject();
  *(inited + 32) = 1735287148;
  *(inited + 16) = xmmword_1DACC2610;
  *(inited + 40) = 0xE400000000000000;
  v32 = &v3[*((*v4 & *v3) + qword_1EE13E4B0 + 48)];
  v33 = *(v32 + 1);
  *(inited + 48) = *v32;
  *(inited + 56) = v33;
  *(inited + 64) = 0x6E6F69676572;
  *(inited + 72) = 0xE600000000000000;
  v34 = *(v32 + 3);
  *(inited + 80) = *(v32 + 2);
  *(inited + 88) = v34;
  *(inited + 96) = 0x74616D726F66;
  *(inited + 104) = 0xE600000000000000;
  *(inited + 112) = 1852797802;
  *(inited + 120) = 0xE400000000000000;
  sub_1DACB71E4();
  sub_1DACB71E4();
  sub_1DAA4BDD8(inited);
  swift_setDeallocating();
  sub_1DAA4BD7C();
  swift_arrayDestroy();
  v35 = sub_1DACB86F4();

  result = [objc_opt_self() sharedPreferences];
  if (result)
  {
    v37 = result;
    v38 = sub_1DACB7A04();
    sub_1DAB5A264(v35);

    v39 = sub_1DACB9114();

    v40 = [v37 signedRequestForURL:v38 parameters:v39];

    if (v40)
    {
      sub_1DACB7474();

      v41 = v57;
      v42 = v60;
      (*(v14 + 32))(v57, v20, v60);
      swift_getWitnessTable();
      sub_1DACB84B4();
      swift_getWitnessTable();
      sub_1DACB8514();
      (*(v14 + 16))(v51, v41, v42);
      v43 = MEMORY[0x1E69E7D40];
      (*(v52 + 16))(v55, &v3[*((*MEMORY[0x1E69E7D40] & *v3) + qword_1EE13E4B0 + 72)], v53);
      (*(v58 + 16))(v56, &v3[*((*v43 & *v3) + qword_1EE13E4B0 + 64)], v59);
      v44 = sub_1DACB84F4();
      *(swift_allocObject() + 16) = v3;
      v45 = v3;
      sub_1DACB84C4();
      v46 = v44;
      sub_1DACB71F4();
      sub_1DACB8304();

      [v46 start];
      (*(v14 + 8))(v41, v42);
    }

    else
    {
      type metadata accessor for YahooBaseOperation.OperationError();
      swift_getWitnessTable();
      *v9 = swift_allocError();
      v47 = v50;
      swift_storeEnumTagMultiPayload();
      v63(v9);
      (*(v49 + 8))(v9, v47);
    }

    return (*(v61 + 8))(v25, v62);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAB35A30(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for NetworkEvent();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (a2 + *((*MEMORY[0x1E69E7D40] & *a2) + qword_1EE13E4B0 + 56));
  v9 = v8[3];
  v10 = v8[4];
  __swift_project_boxed_opaque_existential_1(v8, v9);
  sub_1DAB35B40(a2, a1, v7);
  (*(v10 + 16))(v7, v9, v10);
  return sub_1DAB36234(v7);
}

uint64_t sub_1DAB35B40@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + *((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E4B0 + 16));
  v6 = sub_1DACB8754();
  (*(*(v6 - 8) + 16))(a3, a2, v6);
  type metadata accessor for NetworkEvent();

  return swift_storeEnumTagMultiPayload();
}

void sub_1DAB35C14(void *a1)
{
  v1 = *MEMORY[0x1E69E7D40] & *a1;
  v2 = *(v1 + qword_1EE13E4B0);
  v3 = *(v1 + qword_1EE13E4B0 + 8);
  sub_1DAB36290();
}

uint64_t sub_1DAB35C5C()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + qword_1EE13E4B0 + 24);
  v3 = sub_1DACB7AB4();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *&v0[*((*v1 & *v0) + qword_1EE13E4B0 + 32) + 8];

  v5 = *&v0[*((*v1 & *v0) + qword_1EE13E4B0 + 40)];

  v6 = &v0[*((*v1 & *v0) + qword_1EE13E4B0 + 48)];
  v7 = *(v6 + 1);
  v8 = *(v6 + 3);

  __swift_destroy_boxed_opaque_existential_1(&v0[*((*v1 & *v0) + qword_1EE13E4B0 + 56)]);
  v9 = *((*v1 & *v0) + qword_1EE13E4B0 + 64);
  v10 = sub_1DACB7CC4();
  (*(*(v10 - 8) + 8))(&v0[v9], v10);
  v11 = *((*v1 & *v0) + qword_1EE13E4B0 + 72);
  v12 = sub_1DACB8204();
  v13 = *(*(v12 - 8) + 8);

  return v13(&v0[v11], v12);
}

uint64_t sub_1DAB35EFC(char *a1)
{
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + qword_1EE13E4B0 + 24);
  v4 = sub_1DACB7AB4();
  (*(*(v4 - 8) + 8))(&a1[v3], v4);
  v5 = *&a1[*((*v2 & *a1) + qword_1EE13E4B0 + 32) + 8];

  v6 = *&a1[*((*v2 & *a1) + qword_1EE13E4B0 + 40)];

  v7 = &a1[*((*v2 & *a1) + qword_1EE13E4B0 + 48)];
  v8 = *(v7 + 1);
  v9 = *(v7 + 3);

  __swift_destroy_boxed_opaque_existential_1(&a1[*((*v2 & *a1) + qword_1EE13E4B0 + 56)]);
  v10 = *((*v2 & *a1) + qword_1EE13E4B0 + 64);
  v11 = sub_1DACB7CC4();
  (*(*(v11 - 8) + 8))(&a1[v10], v11);
  v12 = *((*v2 & *a1) + qword_1EE13E4B0 + 72);
  v13 = sub_1DACB8204();
  v14 = *(*(v13 - 8) + 8);

  return v14(&a1[v12], v13);
}

void sub_1DAB361BC()
{
  if (!qword_1EE123B40)
  {
    sub_1DAA4BD7C();
    v0 = sub_1DACBA124();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE123B40);
    }
  }
}

uint64_t sub_1DAB36234(uint64_t a1)
{
  v2 = type metadata accessor for NetworkEvent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1DAB362DC()
{
  v0 = 1280328001;
  *&v13 = 0x51414453414ELL;
  *(&v13 + 1) = 0xE600000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1280328001, 0xE400000000000000);
  xmmword_1ECBE74C0 = v13;
  *&xmmword_1ECBE74D0 = 1280328001;
  *(&xmmword_1ECBE74D0 + 1) = 0xE400000000000000;
  *&xmmword_1ECBE74E0 = 0x6E4920656C707041;
  *(&xmmword_1ECBE74E0 + 1) = 0xEA00000000002E63;
  *&xmmword_1ECBE74F0 = 0x51414453414ELL;
  *(&xmmword_1ECBE74F0 + 1) = 0xE600000000000000;
  LOBYTE(xmmword_1ECBE7500) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE400000000000000;
    v3 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
    v4 = 1280328001;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v4 = 1280328001;
  }

  *(&xmmword_1ECBE7500 + 1) = v4;
  unk_1ECBE7510 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE400000000000000;
    v9 = sub_1DAA4BF3C(1280328001, 0xE400000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  qword_1ECBE7518 = v0;
  *&xmmword_1ECBE7520 = v8;
  result = 0.0;
  *(&xmmword_1ECBE7520 + 8) = 0u;
  *(&xmmword_1ECBE7530 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB36478@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A30 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7510;
  v11[6] = xmmword_1ECBE7520;
  v11[7] = xmmword_1ECBE7530;
  v2 = xmmword_1ECBE74D0;
  v3 = xmmword_1ECBE74E0;
  v11[2] = xmmword_1ECBE74E0;
  v11[3] = xmmword_1ECBE74F0;
  v4 = xmmword_1ECBE74F0;
  v5 = xmmword_1ECBE7500;
  v11[4] = xmmword_1ECBE7500;
  v11[5] = unk_1ECBE7510;
  v6 = xmmword_1ECBE74C0;
  v11[0] = xmmword_1ECBE74C0;
  v11[1] = xmmword_1ECBE74D0;
  v7 = xmmword_1ECBE7530;
  *(a1 + 96) = xmmword_1ECBE7520;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7540;
  *(a1 + 128) = qword_1ECBE7540;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB36548()
{
  v0 = 1095521108;
  *&v13 = 0x51414453414ELL;
  *(&v13 + 1) = 0xE600000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1095521108, 0xE400000000000000);
  xmmword_1ECBE7548 = v13;
  *&xmmword_1ECBE7558 = 1095521108;
  *(&xmmword_1ECBE7558 + 1) = 0xE400000000000000;
  *&xmmword_1ECBE7568 = 0x49202C616C736554;
  *(&xmmword_1ECBE7568 + 1) = 0xEB000000002E636ELL;
  *&xmmword_1ECBE7578 = 0x51414453414ELL;
  *(&xmmword_1ECBE7578 + 1) = 0xE600000000000000;
  LOBYTE(xmmword_1ECBE7588) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE400000000000000;
    v3 = sub_1DAA4BF3C(1095521108, 0xE400000000000000);
    v4 = 1095521108;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v4 = 1095521108;
  }

  *(&xmmword_1ECBE7588 + 1) = v4;
  unk_1ECBE7598 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE400000000000000;
    v9 = sub_1DAA4BF3C(1095521108, 0xE400000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  qword_1ECBE75A0 = v0;
  *&xmmword_1ECBE75A8 = v8;
  result = 0.0;
  *(&xmmword_1ECBE75A8 + 8) = 0u;
  *(&xmmword_1ECBE75B8 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB366E8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A38 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7598;
  v11[6] = xmmword_1ECBE75A8;
  v11[7] = xmmword_1ECBE75B8;
  v2 = xmmword_1ECBE7558;
  v3 = xmmword_1ECBE7568;
  v11[2] = xmmword_1ECBE7568;
  v11[3] = xmmword_1ECBE7578;
  v4 = xmmword_1ECBE7578;
  v5 = xmmword_1ECBE7588;
  v11[4] = xmmword_1ECBE7588;
  v11[5] = unk_1ECBE7598;
  v6 = xmmword_1ECBE7548;
  v11[0] = xmmword_1ECBE7548;
  v11[1] = xmmword_1ECBE7558;
  v7 = xmmword_1ECBE75B8;
  *(a1 + 96) = xmmword_1ECBE75A8;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE75C8;
  *(a1 + 128) = qword_1ECBE75C8;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB367B8()
{
  v0 = 1381259092;
  *&v13 = 0x51414453414ELL;
  *(&v13 + 1) = 0xE600000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1381259092, 0xE400000000000000);
  xmmword_1ECBE75D0 = v13;
  *&xmmword_1ECBE75E0 = 1381259092;
  *(&xmmword_1ECBE75E0 + 1) = 0xE400000000000000;
  strcpy(&xmmword_1ECBE75F0, "Twitter, Inc.");
  HIWORD(xmmword_1ECBE75F0) = -4864;
  *&xmmword_1ECBE7600 = 0x51414453414ELL;
  *(&xmmword_1ECBE7600 + 1) = 0xE600000000000000;
  LOBYTE(xmmword_1ECBE7610) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE400000000000000;
    v3 = sub_1DAA4BF3C(1381259092, 0xE400000000000000);
    v4 = 1381259092;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v4 = 1381259092;
  }

  *(&xmmword_1ECBE7610 + 1) = v4;
  unk_1ECBE7620 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE400000000000000;
    v9 = sub_1DAA4BF3C(1381259092, 0xE400000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  qword_1ECBE7628 = v0;
  *&xmmword_1ECBE7630 = v8;
  result = 0.0;
  *(&xmmword_1ECBE7630 + 8) = 0u;
  *(&xmmword_1ECBE7640 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB3695C@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A40 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7620;
  v11[6] = xmmword_1ECBE7630;
  v11[7] = xmmword_1ECBE7640;
  v2 = xmmword_1ECBE75E0;
  v3 = xmmword_1ECBE75F0;
  v11[2] = xmmword_1ECBE75F0;
  v11[3] = xmmword_1ECBE7600;
  v4 = xmmword_1ECBE7600;
  v5 = xmmword_1ECBE7610;
  v11[4] = xmmword_1ECBE7610;
  v11[5] = unk_1ECBE7620;
  v6 = xmmword_1ECBE75D0;
  v11[0] = xmmword_1ECBE75D0;
  v11[1] = xmmword_1ECBE75E0;
  v7 = xmmword_1ECBE7640;
  *(a1 + 96) = xmmword_1ECBE7630;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7650;
  *(a1 + 128) = qword_1ECBE7650;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB36A2C()
{
  *&v15 = 0;
  *(&v15 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](0x435053475ELL, 0xE500000000000000);
  xmmword_1ECBE7658 = v15;
  *&xmmword_1ECBE7668 = 0x435053475ELL;
  *(&xmmword_1ECBE7668 + 1) = 0xE500000000000000;
  *&xmmword_1ECBE7678 = 0x30303520502653;
  *(&xmmword_1ECBE7678 + 1) = 0xE700000000000000;
  *&xmmword_1ECBE7688 = 0;
  *(&xmmword_1ECBE7688 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE7698) = 6;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16) && (v1 = sub_1DAA4BF3C(0x435053475ELL, 0xE500000000000000), (v2 & 1) != 0))
  {
    v3 = (*(v0 + 56) + 16 * v1);
    v5 = *v3;
    v4 = v3[1];
    v6 = sub_1DACB71E4();
  }

  else
  {
    v6 = 0xE700000000000000;
    v5 = 0x30303520502653;
  }

  *(&xmmword_1ECBE7698 + 1) = v5;
  unk_1ECBE76A8 = v6;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16) && (v8 = sub_1DAA4BF3C(0x435053475ELL, 0xE500000000000000), (v9 & 1) != 0))
  {
    v10 = (*(v7 + 56) + 16 * v8);
    v12 = *v10;
    v11 = v10[1];
    v13 = sub_1DACB71E4();
  }

  else
  {
    v13 = 0xE300000000000000;
    v12 = 5252691;
  }

  qword_1ECBE76B0 = v12;
  *&xmmword_1ECBE76B8 = v13;
  result = 0.0;
  *(&xmmword_1ECBE76B8 + 8) = 0u;
  *(&xmmword_1ECBE76C8 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB36BA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A48 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE76A8;
  v11[6] = xmmword_1ECBE76B8;
  v11[7] = xmmword_1ECBE76C8;
  v2 = xmmword_1ECBE7668;
  v3 = xmmword_1ECBE7678;
  v11[2] = xmmword_1ECBE7678;
  v11[3] = xmmword_1ECBE7688;
  v4 = xmmword_1ECBE7688;
  v5 = xmmword_1ECBE7698;
  v11[4] = xmmword_1ECBE7698;
  v11[5] = unk_1ECBE76A8;
  v6 = xmmword_1ECBE7658;
  v11[0] = xmmword_1ECBE7658;
  v11[1] = xmmword_1ECBE7668;
  v7 = xmmword_1ECBE76C8;
  *(a1 + 96) = xmmword_1ECBE76B8;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE76D8;
  *(a1 + 128) = qword_1ECBE76D8;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB36C70()
{
  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1229603934, 0xE400000000000000);
  xmmword_1ECBE76E0 = v14;
  *&xmmword_1ECBE76F0 = 1229603934;
  *(&xmmword_1ECBE76F0 + 1) = 0xE400000000000000;
  *&xmmword_1ECBE7700 = 0xD00000000000001CLL;
  *(&xmmword_1ECBE7700 + 1) = 0x80000001DACE73A0;
  *&xmmword_1ECBE7710 = 0;
  *(&xmmword_1ECBE7710 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE7720) = 6;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v0 = 0xE900000000000073;
  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16) && (v2 = sub_1DAA4BF3C(1229603934, 0xE400000000000000), (v3 & 1) != 0))
  {
    v4 = (*(v1 + 56) + 16 * v2);
    v5 = *v4;
    v0 = v4[1];
    sub_1DACB71E4();
  }

  else
  {
    v5 = 0x656E6F4A20776F44;
  }

  *(&xmmword_1ECBE7720 + 1) = v5;
  unk_1ECBE7730 = v0;
  v6 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16) && (v7 = sub_1DAA4BF3C(1229603934, 0xE400000000000000), (v8 & 1) != 0))
  {
    v9 = (*(v6 + 56) + 16 * v7);
    v11 = *v9;
    v10 = v9[1];
    v12 = sub_1DACB71E4();
  }

  else
  {
    v12 = 0xE300000000000000;
    v11 = 5721924;
  }

  qword_1ECBE7738 = v11;
  *&xmmword_1ECBE7740 = v12;
  result = 0.0;
  *(&xmmword_1ECBE7740 + 8) = 0u;
  *(&xmmword_1ECBE7750 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB36E00@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A50 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7730;
  v11[6] = xmmword_1ECBE7740;
  v11[7] = xmmword_1ECBE7750;
  v2 = xmmword_1ECBE76F0;
  v3 = xmmword_1ECBE7700;
  v11[2] = xmmword_1ECBE7700;
  v11[3] = xmmword_1ECBE7710;
  v4 = xmmword_1ECBE7710;
  v5 = xmmword_1ECBE7720;
  v11[4] = xmmword_1ECBE7720;
  v11[5] = unk_1ECBE7730;
  v6 = xmmword_1ECBE76E0;
  v11[0] = xmmword_1ECBE76E0;
  v11[1] = xmmword_1ECBE76F0;
  v7 = xmmword_1ECBE7750;
  *(a1 + 96) = xmmword_1ECBE7740;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7760;
  *(a1 + 128) = qword_1ECBE7760;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB36ED0()
{
  v0 = 5721924;
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](5721924, 0xE300000000000000);
  xmmword_1ECBE7768 = v13;
  *&xmmword_1ECBE7778 = 5721924;
  *(&xmmword_1ECBE7778 + 1) = 0xE300000000000000;
  strcpy(&xmmword_1ECBE7788, "Dow Chemicals");
  HIWORD(xmmword_1ECBE7788) = -4864;
  *&xmmword_1ECBE7798 = 0;
  *(&xmmword_1ECBE7798 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE77A8) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE300000000000000;
    v3 = sub_1DAA4BF3C(5721924, 0xE300000000000000);
    v4 = 5721924;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE300000000000000;
    v4 = 5721924;
  }

  *(&xmmword_1ECBE77A8 + 1) = v4;
  unk_1ECBE77B8 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE300000000000000;
    v9 = sub_1DAA4BF3C(5721924, 0xE300000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE300000000000000;
  }

  qword_1ECBE77C0 = v0;
  *&xmmword_1ECBE77C8 = v8;
  result = 0.0;
  *(&xmmword_1ECBE77C8 + 8) = 0u;
  *(&xmmword_1ECBE77D8 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB37060@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A58 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE77B8;
  v11[6] = xmmword_1ECBE77C8;
  v11[7] = xmmword_1ECBE77D8;
  v2 = xmmword_1ECBE7778;
  v3 = xmmword_1ECBE7788;
  v11[2] = xmmword_1ECBE7788;
  v11[3] = xmmword_1ECBE7798;
  v4 = xmmword_1ECBE7798;
  v5 = xmmword_1ECBE77A8;
  v11[4] = xmmword_1ECBE77A8;
  v11[5] = unk_1ECBE77B8;
  v6 = xmmword_1ECBE7768;
  v11[0] = xmmword_1ECBE7768;
  v11[1] = xmmword_1ECBE7778;
  v7 = xmmword_1ECBE77D8;
  *(a1 + 96) = xmmword_1ECBE77C8;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE77E8;
  *(a1 + 128) = qword_1ECBE77E8;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB37130()
{
  v0 = 1296253505;
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1296253505, 0xE400000000000000);
  xmmword_1ECBE77F0 = v13;
  *&xmmword_1ECBE7800 = 1296253505;
  *(&xmmword_1ECBE7800 + 1) = 0xE400000000000000;
  *&xmmword_1ECBE7810 = 0x6C70206D61636241;
  *(&xmmword_1ECBE7810 + 1) = 0xE900000000000063;
  *&xmmword_1ECBE7820 = 0;
  *(&xmmword_1ECBE7820 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE7830) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE400000000000000;
    v3 = sub_1DAA4BF3C(1296253505, 0xE400000000000000);
    v4 = 1296253505;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v4 = 1296253505;
  }

  *(&xmmword_1ECBE7830 + 1) = v4;
  unk_1ECBE7840 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE400000000000000;
    v9 = sub_1DAA4BF3C(1296253505, 0xE400000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  qword_1ECBE7848 = v0;
  *&xmmword_1ECBE7850 = v8;
  result = 0.0;
  *(&xmmword_1ECBE7850 + 8) = 0u;
  *(&xmmword_1ECBE7860 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB372B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A60 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7840;
  v11[6] = xmmword_1ECBE7850;
  v11[7] = xmmword_1ECBE7860;
  v2 = xmmword_1ECBE7800;
  v3 = xmmword_1ECBE7810;
  v11[2] = xmmword_1ECBE7810;
  v11[3] = xmmword_1ECBE7820;
  v4 = xmmword_1ECBE7820;
  v5 = xmmword_1ECBE7830;
  v11[4] = xmmword_1ECBE7830;
  v11[5] = unk_1ECBE7840;
  v6 = xmmword_1ECBE77F0;
  v11[0] = xmmword_1ECBE77F0;
  v11[1] = xmmword_1ECBE7800;
  v7 = xmmword_1ECBE7860;
  *(a1 + 96) = xmmword_1ECBE7850;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7870;
  *(a1 + 128) = qword_1ECBE7870;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB37388()
{
  v0 = 1279476289;
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](1279476289, 0xE400000000000000);
  xmmword_1ECBE7878 = v13;
  *&xmmword_1ECBE7888 = 1279476289;
  *(&xmmword_1ECBE7888 + 1) = 0xE400000000000000;
  *&xmmword_1ECBE7898 = 0xD000000000000011;
  *(&xmmword_1ECBE7898 + 1) = 0x80000001DACE7380;
  *&xmmword_1ECBE78A8 = 0;
  *(&xmmword_1ECBE78A8 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE78B8) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE400000000000000;
    v3 = sub_1DAA4BF3C(1279476289, 0xE400000000000000);
    v4 = 1279476289;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE400000000000000;
    v4 = 1279476289;
  }

  *(&xmmword_1ECBE78B8 + 1) = v4;
  unk_1ECBE78C8 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE400000000000000;
    v9 = sub_1DAA4BF3C(1279476289, 0xE400000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  qword_1ECBE78D0 = v0;
  *&xmmword_1ECBE78D8 = v8;
  result = 0.0;
  *(&xmmword_1ECBE78D8 + 8) = 0u;
  *(&xmmword_1ECBE78E8 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB37518@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A68 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE78C8;
  v11[6] = xmmword_1ECBE78D8;
  v11[7] = xmmword_1ECBE78E8;
  v2 = xmmword_1ECBE7888;
  v3 = xmmword_1ECBE7898;
  v11[2] = xmmword_1ECBE7898;
  v11[3] = xmmword_1ECBE78A8;
  v4 = xmmword_1ECBE78A8;
  v5 = xmmword_1ECBE78B8;
  v11[4] = xmmword_1ECBE78B8;
  v11[5] = unk_1ECBE78C8;
  v6 = xmmword_1ECBE7878;
  v11[0] = xmmword_1ECBE7878;
  v11[1] = xmmword_1ECBE7888;
  v7 = xmmword_1ECBE78E8;
  *(a1 + 96) = xmmword_1ECBE78D8;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE78F8;
  *(a1 + 128) = qword_1ECBE78F8;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB375E8()
{
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](16706, 0xE200000000000000);
  xmmword_1ECBE7900 = v13;
  *&xmmword_1ECBE7910 = 16706;
  *(&xmmword_1ECBE7910 + 1) = 0xE200000000000000;
  *&xmmword_1ECBE7920 = 0xD000000000000012;
  *(&xmmword_1ECBE7920 + 1) = 0x80000001DACE7360;
  *&xmmword_1ECBE7930 = 0;
  *(&xmmword_1ECBE7930 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE7940) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v0 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v1 = 16706;
    v2 = 0xE200000000000000;
    v3 = sub_1DAA4BF3C(16706, 0xE200000000000000);
    if (v4)
    {
      v5 = (*(v0 + 56) + 16 * v3);
      v1 = *v5;
      v2 = v5[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE200000000000000;
    v1 = 16706;
  }

  *(&xmmword_1ECBE7940 + 1) = v1;
  unk_1ECBE7950 = v2;
  v6 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v7 = 16706;
    v8 = 0xE200000000000000;
    v9 = sub_1DAA4BF3C(16706, 0xE200000000000000);
    if (v10)
    {
      v11 = (*(v6 + 56) + 16 * v9);
      v7 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE200000000000000;
    v7 = 16706;
  }

  qword_1ECBE7958 = v7;
  *&xmmword_1ECBE7960 = v8;
  result = 0.0;
  *(&xmmword_1ECBE7960 + 8) = 0u;
  *(&xmmword_1ECBE7970 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB37768@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A70 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7950;
  v11[6] = xmmword_1ECBE7960;
  v11[7] = xmmword_1ECBE7970;
  v2 = xmmword_1ECBE7910;
  v3 = xmmword_1ECBE7920;
  v11[2] = xmmword_1ECBE7920;
  v11[3] = xmmword_1ECBE7930;
  v4 = xmmword_1ECBE7930;
  v5 = xmmword_1ECBE7940;
  v11[4] = xmmword_1ECBE7940;
  v11[5] = unk_1ECBE7950;
  v6 = xmmword_1ECBE7900;
  v11[0] = xmmword_1ECBE7900;
  v11[1] = xmmword_1ECBE7910;
  v7 = xmmword_1ECBE7970;
  *(a1 + 96) = xmmword_1ECBE7960;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7980;
  *(a1 + 128) = qword_1ECBE7980;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB37838()
{
  v0 = 0x3532324E5ELL;
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](0x3532324E5ELL, 0xE500000000000000);
  xmmword_1ECBE7988 = v13;
  *&xmmword_1ECBE7998 = 0x3532324E5ELL;
  *(&xmmword_1ECBE7998 + 1) = 0xE500000000000000;
  *&xmmword_1ECBE79A8 = 0xD000000000000010;
  *(&xmmword_1ECBE79A8 + 1) = 0x80000001DACE7340;
  *&xmmword_1ECBE79B8 = 0;
  *(&xmmword_1ECBE79B8 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE79C8) = 6;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16))
  {
    v2 = 0xE500000000000000;
    v3 = sub_1DAA4BF3C(0x3532324E5ELL, 0xE500000000000000);
    v4 = 0x3532324E5ELL;
    if (v5)
    {
      v6 = (*(v1 + 56) + 16 * v3);
      v4 = *v6;
      v2 = v6[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v2 = 0xE500000000000000;
    v4 = 0x3532324E5ELL;
  }

  *(&xmmword_1ECBE79C8 + 1) = v4;
  unk_1ECBE79D8 = v2;
  v7 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v8 = 0xE500000000000000;
    v9 = sub_1DAA4BF3C(0x3532324E5ELL, 0xE500000000000000);
    if (v10)
    {
      v11 = (*(v7 + 56) + 16 * v9);
      v0 = *v11;
      v8 = v11[1];
      sub_1DACB71E4();
    }
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  qword_1ECBE79E0 = v0;
  *&xmmword_1ECBE79E8 = v8;
  result = 0.0;
  *(&xmmword_1ECBE79E8 + 8) = 0u;
  *(&xmmword_1ECBE79F8 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB379B8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A78 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE79D8;
  v11[6] = xmmword_1ECBE79E8;
  v11[7] = xmmword_1ECBE79F8;
  v2 = xmmword_1ECBE7998;
  v3 = xmmword_1ECBE79A8;
  v11[2] = xmmword_1ECBE79A8;
  v11[3] = xmmword_1ECBE79B8;
  v4 = xmmword_1ECBE79B8;
  v5 = xmmword_1ECBE79C8;
  v11[4] = xmmword_1ECBE79C8;
  v11[5] = unk_1ECBE79D8;
  v6 = xmmword_1ECBE7988;
  v11[0] = xmmword_1ECBE7988;
  v11[1] = xmmword_1ECBE7998;
  v7 = xmmword_1ECBE79F8;
  *(a1 + 96) = xmmword_1ECBE79E8;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7A08;
  *(a1 + 128) = qword_1ECBE7A08;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

double sub_1DAB37A88()
{
  v0 = 0xE900000000000053;
  v1 = 0x4B2E303039313530;
  *&v14 = 0;
  *(&v14 + 1) = 0xE000000000000000;
  MEMORY[0x1E1276F20](58, 0xE100000000000000);
  MEMORY[0x1E1276F20](0x4B2E303039313530, 0xE900000000000053);
  xmmword_1ECBE7A10 = v14;
  *&xmmword_1ECBE7A20 = 0x4B2E303039313530;
  *(&xmmword_1ECBE7A20 + 1) = 0xE900000000000053;
  *&xmmword_1ECBE7A30 = 0x1000000000000013;
  *(&xmmword_1ECBE7A30 + 1) = 0x80000001DACE7320;
  *&xmmword_1ECBE7A40 = 0;
  *(&xmmword_1ECBE7A40 + 1) = 0xE000000000000000;
  LOBYTE(xmmword_1ECBE7A50) = 3;
  if (qword_1EE122610 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE13E388;
  if (*(qword_1EE13E388 + 16) && (v3 = sub_1DAA4BF3C(0x4B2E303039313530, 0xE900000000000053), (v4 & 1) != 0))
  {
    v5 = (*(v2 + 56) + 16 * v3);
    v7 = *v5;
    v6 = v5[1];
    v8 = sub_1DACB71E4();
  }

  else
  {
    v7 = 0x4B2E303039313530;
    v8 = 0xE900000000000053;
  }

  *(&xmmword_1ECBE7A50 + 1) = v7;
  unk_1ECBE7A60 = v8;
  v9 = qword_1EE13E390;
  if (*(qword_1EE13E390 + 16))
  {
    v10 = sub_1DAA4BF3C(0x4B2E303039313530, 0xE900000000000053);
    if (v11)
    {
      v12 = (*(v9 + 56) + 16 * v10);
      v1 = *v12;
      v0 = v12[1];
      sub_1DACB71E4();
    }
  }

  qword_1ECBE7A68 = v1;
  *&xmmword_1ECBE7A70 = v0;
  result = 0.0;
  *(&xmmword_1ECBE7A70 + 8) = 0u;
  *(&xmmword_1ECBE7A80 + 8) = 0u;
  return result;
}

uint64_t sub_1DAB37C08@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ECBE5A80 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = unk_1ECBE7A60;
  v11[6] = xmmword_1ECBE7A70;
  v11[7] = xmmword_1ECBE7A80;
  v2 = xmmword_1ECBE7A20;
  v3 = xmmword_1ECBE7A30;
  v11[2] = xmmword_1ECBE7A30;
  v11[3] = xmmword_1ECBE7A40;
  v4 = xmmword_1ECBE7A40;
  v5 = xmmword_1ECBE7A50;
  v11[4] = xmmword_1ECBE7A50;
  v11[5] = unk_1ECBE7A60;
  v6 = xmmword_1ECBE7A10;
  v11[0] = xmmword_1ECBE7A10;
  v11[1] = xmmword_1ECBE7A20;
  v7 = xmmword_1ECBE7A80;
  *(a1 + 96) = xmmword_1ECBE7A70;
  *(a1 + 112) = v7;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 80) = v1;
  v12 = qword_1ECBE7A90;
  *(a1 + 128) = qword_1ECBE7A90;
  *a1 = v6;
  *(a1 + 16) = v2;
  return sub_1DAA806E4(v11, v10);
}

id sub_1DAB37CD8(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  if (!a3)
  {
    return 0;
  }

  v6 = [objc_msgSend(a1 bundleSubscriptionProvider)];
  swift_unknownObjectRelease();
  if (objc_getAssociatedObject(v6, v6 + 1))
  {
    sub_1DACB9B74();
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
    sub_1DAADFA60(&v19);
    goto LABEL_11;
  }

  sub_1DAB0AAC8();
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

    v14 = sub_1DACB92F4();
    v15 = [v13 containsObject_];

    return v15;
  }

LABEL_12:
  if (objc_getAssociatedObject(v6, ~v9))
  {
    sub_1DACB9B74();
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
    sub_1DAADFA60(&v19);
    goto LABEL_20;
  }

  sub_1DAB0AAC8();
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
    v13 = sub_1DACB9804();

    LOBYTE(v12) = sub_1DAA65964(a4, a5, v13);

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
    sub_1DACB9B74();
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
    sub_1DAADFA60(&v27);
    goto LABEL_17;
  }

  sub_1DAB0AAC8();
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
    sub_1DACB9B74();
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
    sub_1DAADFA60(&v27);
    goto LABEL_26;
  }

  sub_1DAB0AAC8();
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

  v21 = sub_1DACB92F4();
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
    v10 = sub_1DACB9324();
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
    v15 = sub_1DACB9804();

    LOBYTE(v14) = sub_1DAA65964(v10, v12, v15);

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
      sub_1DACB9B74();
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
      sub_1DAB0AAC8();
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
      sub_1DAADFA60(&v29);
    }

    v18 = 0;
    v19 = 0;
LABEL_25:
    if (objc_getAssociatedObject(v17, ~v19))
    {
      sub_1DACB9B74();
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
      sub_1DAADFA60(&v29);
      goto LABEL_34;
    }

    sub_1DAB0AAC8();
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

      v24 = sub_1DACB92F4();
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
  v9 = sub_1DACB9324();
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
  v13 = sub_1DACB9804();

  LOBYTE(v12) = sub_1DAA65964(v9, v11, v13);

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
    sub_1DACB9B74();
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
    sub_1DAADFA60(&v26);
    goto LABEL_16;
  }

  sub_1DAB0AAC8();
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
    sub_1DACB9B74();
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
    sub_1DAADFA60(&v26);
    goto LABEL_26;
  }

  sub_1DAB0AAC8();
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

    v22 = sub_1DACB92F4();
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

  v9 = sub_1DACB9324();
  v11 = v10;

  v12 = [v6 purchasedTagIDs];
  v13 = sub_1DACB9804();

  LOBYTE(v12) = sub_1DAA65964(v9, v11, v13);

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
    sub_1DACB9B74();
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
    sub_1DAADFA60(&v26);
    goto LABEL_16;
  }

  sub_1DAB0AAC8();
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
    sub_1DACB9B74();
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
    sub_1DAADFA60(&v26);
    goto LABEL_27;
  }

  sub_1DAB0AAC8();
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
    sub_1DACB9324();
    v21 = sub_1DACB92F4();
  }

  v22 = [v20 containsTagID_];

  return v22;
}

uint64_t sub_1DAB38E04()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1EE11FDB0);
  __swift_project_value_buffer(v0, qword_1EE11FDB0);
  return sub_1DACB8C84();
}

uint64_t sub_1DAB38EA8()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1EE11D368);
  __swift_project_value_buffer(v0, qword_1EE11D368);
  return sub_1DACB8C84();
}

uint64_t sub_1DAB38F70()
{
  v0 = sub_1DACB8C94();
  __swift_allocate_value_buffer(v0, qword_1EE13E2E8);
  __swift_project_value_buffer(v0, qword_1EE13E2E8);
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1DACB9324();
  }

  return sub_1DACB8C84();
}

uint64_t sub_1DAB390CC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_1DACB8C94();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

id sub_1DAB39164(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_1DAA4D678(v1 + 32, v30);
  sub_1DAA4D678(v1 + 72, v29);
  v5 = v31;
  v6 = __swift_mutable_project_boxed_opaque_existential_1(v30, v31);
  v7 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v10 + 16))(v9);
  v11 = *v9;
  v12 = type metadata accessor for YahooChartModelEngine();
  v27 = v12;
  v28 = &off_1F5690098;
  v26[0] = v11;
  v13 = type metadata accessor for SparklineOperation();
  v14 = objc_allocWithZone(v13);
  v15 = v27;
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v26, v27);
  v17 = *(*(v15 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v24 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v25[3] = v12;
  v25[4] = &off_1F5690098;
  v25[0] = v21;
  *&v14[qword_1EE121DB8] = v3;
  *&v14[qword_1EE121DC0] = v4;
  sub_1DAA4D678(v25, &v14[qword_1EE121DD0]);
  sub_1DAA4D678(v29, &v14[qword_1EE121DC8]);
  *&v14[qword_1EE121DB0] = a1;
  v24.receiver = v14;
  v24.super_class = v13;
  sub_1DACB71F4();
  sub_1DACB71F4();
  sub_1DACB71E4();
  v22 = objc_msgSendSuper2(&v24, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v29);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return v22;
}

uint64_t sub_1DAB393DC()
{
  v1 = v0[2];

  v2 = v0[3];

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB39450()
{
  v0 = swift_allocObject();
  sub_1DAA41644();
  return v0;
}

uint64_t sub_1DAB39490()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t sub_1DAB394B0()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAB3954C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB3957C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB395AC()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB395DC()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB3960C()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB3963C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB396AC@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 320);
  v3 = *(v1 + 352);
  v25 = *(v1 + 336);
  v26 = v3;
  v4 = *(v1 + 256);
  v5 = *(v1 + 288);
  v21 = *(v1 + 272);
  v6 = v21;
  v22 = v5;
  v7 = *(v1 + 288);
  v8 = *(v1 + 320);
  v23 = *(v1 + 304);
  v9 = v23;
  v24 = v8;
  v10 = *(v1 + 224);
  v18[0] = *(v1 + 208);
  v18[1] = v10;
  v11 = *(v1 + 256);
  v13 = *(v1 + 208);
  v12 = *(v1 + 224);
  v19 = *(v1 + 240);
  v14 = v19;
  v20 = v11;
  v15 = *(v1 + 352);
  *(a1 + 128) = v25;
  *(a1 + 144) = v15;
  *(a1 + 64) = v6;
  *(a1 + 80) = v7;
  *(a1 + 96) = v9;
  *(a1 + 112) = v2;
  *a1 = v13;
  *(a1 + 16) = v12;
  v27 = *(v1 + 368);
  *(a1 + 160) = *(v1 + 368);
  *(a1 + 32) = v14;
  *(a1 + 48) = v4;
  return sub_1DAA5265C(v18, v17);
}

uint64_t sub_1DAB39744()
{
  result = *(v0 + 376);
  v2 = *(v0 + 384);
  return result;
}

uint64_t sub_1DAB39750()
{
  result = *(v0 + 392);
  v2 = *(v0 + 400);
  return result;
}

uint64_t sub_1DAB3975C()
{
  v1 = *(v0 + 408);
  v2 = *(v0 + 416);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB3978C()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 432);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB397BC()
{
  v1 = *(v0 + 440);
  v2 = *(v0 + 448);
  sub_1DACB71E4();
  return v1;
}

uint64_t sub_1DAB3982C(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_1DAA964B0(*a1);
  v5 = v4;
  if (v3 == sub_1DAA964B0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DACBA174();
  }

  return v8 & 1;
}

uint64_t sub_1DAB398B4()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAA964B0(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB39918()
{
  sub_1DAA964B0(*v0);
  sub_1DACB9404();
}

uint64_t sub_1DAB3996C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DAA964B0(v1);
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB399CC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1DAB3D8B8();
  *a2 = result;
  return result;
}

unint64_t sub_1DAB399FC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DAA964B0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1DAB39A28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAB3D8B8();
  *a1 = result;
  return result;
}

uint64_t sub_1DAB39A5C(uint64_t a1)
{
  v2 = sub_1DAA961D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAB39A98(uint64_t a1)
{
  v2 = sub_1DAA961D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1DAB39AD4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, char a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, char a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, unint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48, uint64_t a49, char a50, uint64_t a51, char a52, char a53, char a54, uint64_t a55, char a56, uint64_t a57, char a58)
{
  v60 = a16;
  if (a14)
  {
    v126 = a14;
    v61 = a18;
    if (a16)
    {
      goto LABEL_3;
    }
  }

  else
  {
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v64 = qword_1EE1242C0;
    v63 = qword_1EE1242C8;
    sub_1DACB71E4();
    a13 = sub_1DAA4BBA0(v64, v63);
    v126 = v65;

    v61 = a18;
    if (a16)
    {
LABEL_3:
      v62 = a20;
      if (v61)
      {
        goto LABEL_14;
      }

      goto LABEL_11;
    }
  }

  if (qword_1EE1242B8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v66 = qword_1EE1242C0;
  v67 = qword_1EE1242C8;
  sub_1DACB71E4();
  a15 = sub_1DAA4C06C(v66, v67);
  v60 = v68;

  v62 = a20;
  if (!v61)
  {
LABEL_11:
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v70 = qword_1EE1242C0;
    v69 = qword_1EE1242C8;
    sub_1DACB71E4();
    a17 = sub_1DAA4C248(v70, v69);
    v61 = v71;
  }

LABEL_14:
  v72 = a22;
  v127 = v60;
  if (v62)
  {
    v124 = v62;
  }

  else
  {
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v75 = qword_1EE1242C0;
    v74 = qword_1EE1242C8;
    sub_1DACB71E4();
    v76 = sub_1DAA4C424(v75, v74);
    v124 = v77;

    a19 = v76;
  }

  v78 = a54;
  v79 = a53;
  v80 = a52;
  v81 = a46;
  v82 = a43;
  v83 = a40;
  v84 = a38;
  v85 = a30;
  v86 = a29;
  v87 = a28;
  v88 = a27;
  v89 = a26;
  v90 = a25;
  v91 = a12;
  v92 = a11;
  v93 = a10;
  if (!a22)
  {
    v121 = a19;
    v122 = a3;
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v96 = qword_1EE1242C0;
    v95 = qword_1EE1242C8;
    sub_1DACB71E4();
    a21 = sub_1DAA4C600(v96, v95);
    v72 = v97;

    a3 = v122;
    v79 = a53;
    v78 = a54;
    v83 = a40;
    v80 = a52;
    v93 = a10;
    v84 = a38;
    v82 = a43;
    a19 = v121;
    v88 = a27;
    v90 = a25;
    v91 = a12;
    v89 = a26;
    v81 = a46;
    v92 = a11;
    v85 = a30;
    v86 = a29;
    v87 = a28;
  }

  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 56) = v126;
  *(a9 + 64) = a15;
  *(a9 + 72) = v127;
  *(a9 + 80) = a17;
  *(a9 + 88) = v61;
  *(a9 + 96) = a19;
  *(a9 + 104) = v124;
  *(a9 + 112) = a21;
  *(a9 + 120) = v72;
  *(a9 + 128) = a23;
  *(a9 + 168) = a31;
  *(a9 + 176) = a32;
  *(a9 + 184) = a33;
  *(a9 + 192) = a35;
  *(a9 + 200) = a34;
  *(a9 + 392) = a39;
  *(a9 + 408) = a41;
  *(a9 + 416) = a42;
  *(a9 + 440) = a45;
  *(a9 + 448) = v81;
  *(a9 + 48) = a13;
  *(a9 + 376) = a37;
  v98 = 0xE000000000000000;
  if (a44)
  {
    v98 = a44;
    v99 = v82;
  }

  else
  {
    v99 = 0;
  }

  if (v85)
  {
    v100 = 0;
  }

  else
  {
    v100 = v86;
  }

  v101 = 172800;
  if ((v87 & 1) == 0)
  {
    v101 = v88;
  }

  v102 = 604800;
  if ((v89 & 1) == 0)
  {
    v102 = v90;
  }

  if (v91)
  {
    v103 = 0;
  }

  else
  {
    v103 = v92;
  }

  *(a9 + 40) = v103;
  *(a9 + 368) = *(a36 + 160);
  v104 = v84 & 1;
  v105 = v83 & 1;
  v106 = v93 & 1;
  if (a8)
  {
    v107 = 0;
  }

  else
  {
    v107 = a7;
  }

  if (a48)
  {
    a47 = 0;
  }

  if (a50)
  {
    a49 = 0;
  }

  if (v80)
  {
    a51 = 0;
  }

  v112 = v79 & 1;
  v113 = v78 & 1;
  v114 = 25;
  if ((a56 & 1) == 0)
  {
    v114 = a55;
  }

  v115 = MEMORY[0x1E69E7CC0];
  if (a57)
  {
    v115 = a57;
  }

  *(a9 + 16) = a3 & 1;
  *(a9 + 17) = (a4 == 2) | a4 & 1;
  *(a9 + 18) = a5 & 1;
  *(a9 + 19) = a6 & 1;
  *(a9 + 24) = v107;
  *(a9 + 32) = v106;
  *(a9 + 136) = a24;
  *(a9 + 144) = v102;
  *(a9 + 152) = v101;
  *(a9 + 160) = v100;
  v116 = *(a36 + 144);
  *(a9 + 336) = *(a36 + 128);
  *(a9 + 352) = v116;
  v117 = *(a36 + 80);
  *(a9 + 272) = *(a36 + 64);
  *(a9 + 288) = v117;
  v118 = *(a36 + 112);
  *(a9 + 304) = *(a36 + 96);
  *(a9 + 320) = v118;
  v119 = *(a36 + 16);
  *(a9 + 208) = *a36;
  *(a9 + 224) = v119;
  result = *(a36 + 48);
  *(a9 + 240) = *(a36 + 32);
  *(a9 + 256) = result;
  *(a9 + 384) = v104;
  *(a9 + 400) = v105;
  *(a9 + 424) = v99;
  *(a9 + 432) = v98;
  *(a9 + 456) = a47;
  *(a9 + 464) = a49;
  *(a9 + 472) = a51;
  *(a9 + 480) = v112;
  *(a9 + 481) = v113;
  *(a9 + 488) = v114;
  *(a9 + 496) = v115;
  *(a9 + 504) = (a58 == 2) | a58 & 1;
  return result;
}

uint64_t sub_1DAB3A104@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1DAA955F4(0, &qword_1EE123C90, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v230 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v328 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DAA961D4();
  sub_1DACBA2F4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v328);
  }

  v281 = a2;
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x1E69E7CC0];
  LOBYTE(v303) = 0;
  sub_1DAA5260C(0, &qword_1EE123EA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
  v15 = v14;
  sub_1DAA96338(&qword_1EE123E88);
  sub_1DACB9F84();
  v279 = v10;
  v280 = (v13 + 16);
  v16 = *&v314[0];
  v278 = MEMORY[0x1E69E7CC0];
  if (!*&v314[0])
  {
    v276 = v15;
    v277 = v6;
    v17 = v13;
    swift_beginAccess();
    v18 = sub_1DAA9A3B0(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1DAA9A3B0((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[16 * v20];
    *(v21 + 4) = 0xD000000000000015;
    *(v21 + 5) = 0x80000001DACE1160;
    v278 = v18;
    *v280 = v18;
    swift_endAccess();
    v13 = v17;
    v16 = 0;
    v15 = v276;
    v6 = v277;
  }

  LOBYTE(v303) = 1;
  sub_1DACB9F84();
  v277 = v6;
  v275 = v7;
  v22 = *&v314[0];
  if (!*&v314[0])
  {
    v23 = v16;
    swift_beginAccess();
    v24 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v25 = v278;
    v27 = *(v278 + 2);
    v26 = *(v278 + 3);
    if (v27 >= v26 >> 1)
    {
      v25 = sub_1DAA9A3B0((v26 > 1), v27 + 1, 1, v278);
    }

    *(v25 + 2) = v27 + 1;
    v28 = &v25[16 * v27];
    *(v28 + 4) = 0xD000000000000012;
    *(v28 + 5) = 0x80000001DACE1180;
    v278 = v25;
    *v280 = v25;
    swift_endAccess();
    v13 = v24;
    v16 = v23;
  }

  LOBYTE(v314[0]) = 2;
  sub_1DACB9F84();
  v274 = v303;
  if (v303 == 2)
  {
    v29 = v16;
    swift_beginAccess();
    v30 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v31 = v278;
    v33 = *(v278 + 2);
    v32 = *(v278 + 3);
    if (v33 >= v32 >> 1)
    {
      v31 = sub_1DAA9A3B0((v32 > 1), v33 + 1, 1, v278);
    }

    *(v31 + 2) = v33 + 1;
    v34 = &v31[16 * v33];
    *(v34 + 4) = 0xD000000000000010;
    *(v34 + 5) = 0x80000001DACE11A0;
    v278 = v31;
    *v280 = v31;
    swift_endAccess();
    v13 = v30;
    v16 = v29;
  }

  LOBYTE(v314[0]) = 3;
  sub_1DACB9F84();
  v273 = v303;
  if (v303 == 2)
  {
    v35 = v16;
    swift_beginAccess();
    v36 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v37 = v278;
    v39 = *(v278 + 2);
    v38 = *(v278 + 3);
    if (v39 >= v38 >> 1)
    {
      v37 = sub_1DAA9A3B0((v38 > 1), v39 + 1, 1, v278);
    }

    *(v37 + 2) = v39 + 1;
    v40 = &v37[16 * v39];
    *(v40 + 4) = 0xD000000000000010;
    *(v40 + 5) = 0x80000001DACE11C0;
    v278 = v37;
    *v280 = v37;
    swift_endAccess();
    v13 = v36;
    v16 = v35;
  }

  LOBYTE(v314[0]) = 4;
  sub_1DACB9F84();
  v272 = v303;
  if (v303 == 2)
  {
    v41 = v16;
    swift_beginAccess();
    v42 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v43 = v278;
    v45 = *(v278 + 2);
    v44 = *(v278 + 3);
    if (v45 >= v44 >> 1)
    {
      v43 = sub_1DAA9A3B0((v44 > 1), v45 + 1, 1, v278);
    }

    *(v43 + 2) = v45 + 1;
    v46 = &v43[16 * v45];
    *(v46 + 4) = 0xD00000000000001CLL;
    *(v46 + 5) = 0x80000001DACE11E0;
    v278 = v43;
    *v280 = v43;
    swift_endAccess();
    v13 = v42;
    v16 = v41;
  }

  LOBYTE(v314[0]) = 5;
  sub_1DACB9F84();
  v271 = v303;
  if (v303 == 2)
  {
    v47 = v16;
    swift_beginAccess();
    v48 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v49 = v278;
    v51 = *(v278 + 2);
    v50 = *(v278 + 3);
    if (v51 >= v50 >> 1)
    {
      v49 = sub_1DAA9A3B0((v50 > 1), v51 + 1, 1, v278);
    }

    *(v49 + 2) = v51 + 1;
    v52 = &v49[16 * v51];
    *(v52 + 4) = 0xD00000000000001CLL;
    *(v52 + 5) = 0x80000001DACE1200;
    v278 = v49;
    *v280 = v49;
    swift_endAccess();
    v13 = v48;
    v16 = v47;
  }

  LOBYTE(v303) = 6;
  sub_1DACB9F84();
  v270 = *&v314[0];
  LODWORD(v269) = BYTE8(v314[0]);
  if (BYTE8(v314[0]))
  {
    v53 = v16;
    swift_beginAccess();
    v54 = v13;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v55 = v278;
    v57 = *(v278 + 2);
    v56 = *(v278 + 3);
    if (v57 >= v56 >> 1)
    {
      v55 = sub_1DAA9A3B0((v56 > 1), v57 + 1, 1, v278);
    }

    *(v55 + 2) = v57 + 1;
    v58 = &v55[16 * v57];
    strcpy(v58 + 32, "enabledLevel");
    v58[45] = 0;
    *(v58 + 23) = -5120;
    v278 = v55;
    *v280 = v55;
    swift_endAccess();
    v13 = v54;
    v16 = v53;
  }

  LOBYTE(v314[0]) = 7;
  sub_1DACB9F84();
  v276 = v15;
  v60 = v303;
  v61 = v328;
  v268 = v13;
  if (v303 == 2)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v63 = *(v278 + 2);
    v62 = *(v278 + 3);
    if (v63 >= v62 >> 1)
    {
      v278 = sub_1DAA9A3B0((v62 > 1), v63 + 1, 1, v278);
    }

    v64 = v278;
    *(v278 + 2) = v63 + 1;
    v65 = &v64[16 * v63];
    *(v65 + 4) = 0xD000000000000019;
    *(v65 + 5) = 0x80000001DACE1230;
    *v280 = v64;
    swift_endAccess();
  }

  LOBYTE(v303) = 8;
  v66 = v277;
  sub_1DACB9F84();
  v328 = *&v314[0];
  LODWORD(v267) = BYTE8(v314[0]);
  if (BYTE8(v314[0]))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v68 = *(v278 + 2);
    v67 = *(v278 + 3);
    if (v68 >= v67 >> 1)
    {
      v278 = sub_1DAA9A3B0((v67 > 1), v68 + 1, 1, v278);
    }

    v69 = v278;
    *(v278 + 2) = v68 + 1;
    v70 = &v69[16 * v68];
    *(v70 + 4) = 0xD000000000000026;
    *(v70 + 5) = 0x80000001DACE1250;
    *v280 = v69;
    swift_endAccess();
  }

  LOBYTE(v303) = 9;
  sub_1DACB9F84();
  v266 = v314[0];
  if (!*(&v314[0] + 1))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v72 = *(v278 + 2);
    v71 = *(v278 + 3);
    if (v72 >= v71 >> 1)
    {
      v278 = sub_1DAA9A3B0((v71 > 1), v72 + 1, 1, v278);
    }

    v73 = v278;
    *(v278 + 2) = v72 + 1;
    v74 = &v73[16 * v72];
    *(v74 + 4) = 0x6C63697472416564;
    *(v74 + 5) = 0xEB00000000444965;
    *v280 = v73;
    swift_endAccess();
  }

  LOBYTE(v303) = 10;
  sub_1DACB9F84();
  v265 = v314[0];
  if (!*(&v314[0] + 1))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v76 = *(v278 + 2);
    v75 = *(v278 + 3);
    if (v76 >= v75 >> 1)
    {
      v278 = sub_1DAA9A3B0((v75 > 1), v76 + 1, 1, v278);
    }

    v77 = v278;
    *(v278 + 2) = v76 + 1;
    v78 = &v77[16 * v76];
    *(v78 + 4) = 0x6C63697472416572;
    *(v78 + 5) = 0xEB00000000444965;
    *v280 = v77;
    swift_endAccess();
  }

  LOBYTE(v303) = 11;
  sub_1DACB9F84();
  v264 = v314[0];
  if (!*(&v314[0] + 1))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v80 = *(v278 + 2);
    v79 = *(v278 + 3);
    if (v80 >= v79 >> 1)
    {
      v278 = sub_1DAA9A3B0((v79 > 1), v80 + 1, 1, v278);
    }

    v81 = v278;
    *(v278 + 2) = v80 + 1;
    v82 = &v81[16 * v80];
    *(v82 + 4) = 0x6C63697472416873;
    *(v82 + 5) = 0xEB00000000444965;
    *v280 = v81;
    swift_endAccess();
  }

  LOBYTE(v303) = 12;
  sub_1DACB9F84();
  v263 = v314[0];
  if (!*(&v314[0] + 1))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v84 = *(v278 + 2);
    v83 = *(v278 + 3);
    if (v84 >= v83 >> 1)
    {
      v278 = sub_1DAA9A3B0((v83 > 1), v84 + 1, 1, v278);
    }

    v85 = v278;
    *(v278 + 2) = v84 + 1;
    v86 = &v85[16 * v84];
    *(v86 + 4) = 0xD000000000000028;
    *(v86 + 5) = 0x80000001DACE12A0;
    *v280 = v85;
    swift_endAccess();
  }

  LOBYTE(v303) = 13;
  sub_1DACB9F84();
  v262 = v314[0];
  if (!*(&v314[0] + 1))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v88 = *(v278 + 2);
    v87 = *(v278 + 3);
    if (v88 >= v87 >> 1)
    {
      v278 = sub_1DAA9A3B0((v87 > 1), v88 + 1, 1, v278);
    }

    v89 = v278;
    *(v278 + 2) = v88 + 1;
    v90 = &v89[16 * v88];
    *(v90 + 4) = 0xD00000000000002ALL;
    *(v90 + 5) = 0x80000001DACE12D0;
    *v280 = v89;
    swift_endAccess();
  }

  LOBYTE(v303) = 14;
  sub_1DACB9F84();
  v261 = v314[0];
  if (!*(&v314[0] + 1))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v92 = *(v278 + 2);
    v91 = *(v278 + 3);
    if (v92 >= v91 >> 1)
    {
      v278 = sub_1DAA9A3B0((v91 > 1), v92 + 1, 1, v278);
    }

    v93 = v278;
    *(v278 + 2) = v92 + 1;
    v94 = &v93[16 * v92];
    *(v94 + 4) = 0xD00000000000001ALL;
    *(v94 + 5) = 0x80000001DACE1300;
    *v280 = v93;
    swift_endAccess();
  }

  LOBYTE(v303) = 15;
  sub_1DACB9F84();
  v260 = *&v314[0];
  LODWORD(v259) = BYTE8(v314[0]);
  if (BYTE8(v314[0]))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v96 = *(v278 + 2);
    v95 = *(v278 + 3);
    if (v96 >= v95 >> 1)
    {
      v278 = sub_1DAA9A3B0((v95 > 1), v96 + 1, 1, v278);
    }

    v97 = v278;
    *(v278 + 2) = v96 + 1;
    v98 = &v97[16 * v96];
    *(v98 + 4) = 0xD000000000000020;
    *(v98 + 5) = 0x80000001DACE1320;
    *v280 = v97;
    swift_endAccess();
  }

  LOBYTE(v303) = 16;
  sub_1DACB9F84();
  v258 = *&v314[0];
  LODWORD(v257) = BYTE8(v314[0]);
  if (BYTE8(v314[0]))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v100 = *(v278 + 2);
    v99 = *(v278 + 3);
    if (v100 >= v99 >> 1)
    {
      v278 = sub_1DAA9A3B0((v99 > 1), v100 + 1, 1, v278);
    }

    v101 = v278;
    *(v278 + 2) = v100 + 1;
    v102 = &v101[16 * v100];
    *(v102 + 4) = 0xD00000000000002CLL;
    *(v102 + 5) = 0x80000001DACE1350;
    *v280 = v101;
    swift_endAccess();
  }

  LOBYTE(v303) = 17;
  sub_1DACB9F84();
  v256 = *&v314[0];
  LODWORD(v255) = BYTE8(v314[0]);
  if (BYTE8(v314[0]))
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v104 = *(v278 + 2);
    v103 = *(v278 + 3);
    if (v104 >= v103 >> 1)
    {
      v278 = sub_1DAA9A3B0((v103 > 1), v104 + 1, 1, v278);
    }

    v105 = v278;
    *(v278 + 2) = v104 + 1;
    v106 = &v105[16 * v104];
    *(v106 + 4) = 0xD000000000000027;
    *(v106 + 5) = 0x80000001DACE1380;
    *v280 = v105;
    swift_endAccess();
  }

  LOBYTE(v303) = 18;
  sub_1DAA5260C(0, &qword_1EE123F90, &type metadata for PaywallConfig, MEMORY[0x1E69E62F8]);
  sub_1DAA96934(&qword_1EE123F80, sub_1DAB3D90C);
  sub_1DACB9F84();
  v254 = *&v314[0];
  if (!*&v314[0])
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v108 = *(v278 + 2);
    v107 = *(v278 + 3);
    if (v108 >= v107 >> 1)
    {
      v278 = sub_1DAA9A3B0((v107 > 1), v108 + 1, 1, v278);
    }

    v109 = v278;
    *(v278 + 2) = v108 + 1;
    v110 = &v109[16 * v108];
    strcpy(v110 + 32, "paywallConfigs");
    v110[47] = -18;
    *v280 = v109;
    swift_endAccess();
  }

  LOBYTE(v303) = 19;
  sub_1DAA5260C(0, &qword_1EE123F20, &type metadata for SubscriptionButtonConfig, MEMORY[0x1E69E62F8]);
  v112 = v111;
  v252 = sub_1DAB3D960();
  v253 = v112;
  sub_1DACB9F84();
  v251 = *&v314[0];
  if (!*&v314[0])
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v114 = *(v278 + 2);
    v113 = *(v278 + 3);
    if (v114 >= v113 >> 1)
    {
      v278 = sub_1DAA9A3B0((v113 > 1), v114 + 1, 1, v278);
    }

    v115 = v278;
    *(v278 + 2) = v114 + 1;
    v116 = &v115[16 * v114];
    *(v116 + 4) = 0xD000000000000019;
    *(v116 + 5) = 0x80000001DACE13C0;
    *v280 = v115;
    swift_endAccess();
  }

  LOBYTE(v303) = 20;
  sub_1DACB9F84();
  v250 = *&v314[0];
  if (!*&v314[0])
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v118 = *(v278 + 2);
    v117 = *(v278 + 3);
    if (v118 >= v117 >> 1)
    {
      v278 = sub_1DAA9A3B0((v117 > 1), v118 + 1, 1, v278);
    }

    v119 = v278;
    *(v278 + 2) = v118 + 1;
    v120 = &v119[16 * v118];
    *(v120 + 4) = 0xD00000000000001BLL;
    *(v120 + 5) = 0x80000001DACE13E0;
    *v280 = v119;
    swift_endAccess();
  }

  LOBYTE(v303) = 21;
  sub_1DACB9F84();
  v249 = *&v314[0];
  if (!*&v314[0])
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v122 = *(v278 + 2);
    v121 = *(v278 + 3);
    if (v122 >= v121 >> 1)
    {
      v278 = sub_1DAA9A3B0((v121 > 1), v122 + 1, 1, v278);
    }

    v123 = v278;
    *(v278 + 2) = v122 + 1;
    v124 = &v123[16 * v122];
    *(v124 + 4) = 0xD000000000000027;
    *(v124 + 5) = 0x80000001DACE1400;
    *v280 = v123;
    swift_endAccess();
  }

  LOBYTE(v303) = 22;
  sub_1DACB9F84();
  v253 = *&v314[0];
  if (!*&v314[0])
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v126 = *(v278 + 2);
    v125 = *(v278 + 3);
    if (v126 >= v125 >> 1)
    {
      v278 = sub_1DAA9A3B0((v125 > 1), v126 + 1, 1, v278);
    }

    v127 = v278;
    *(v278 + 2) = v126 + 1;
    v128 = &v127[16 * v126];
    *(v128 + 4) = 0xD00000000000002ELL;
    *(v128 + 5) = 0x80000001DACE1430;
    *v280 = v127;
    swift_endAccess();
  }

  v327 = 23;
  sub_1DAB3D9FC();
  sub_1DACB9F84();
  v314[8] = v324;
  v314[9] = v325;
  v315 = v326;
  v314[4] = v320;
  v314[5] = v321;
  v314[7] = v323;
  v314[6] = v322;
  v314[0] = v316;
  v314[1] = v317;
  v314[3] = v319;
  v314[2] = v318;
  if (sub_1DAA525E8(v314) == 1)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v130 = *(v278 + 2);
    v129 = *(v278 + 3);
    if (v130 >= v129 >> 1)
    {
      v278 = sub_1DAA9A3B0((v129 > 1), v130 + 1, 1, v278);
    }

    v131 = v278;
    *(v278 + 2) = v130 + 1;
    v132 = &v131[16 * v130];
    *(v132 + 4) = 0xD000000000000015;
    *(v132 + 5) = 0x80000001DACE1460;
    *v280 = v131;
    swift_endAccess();
  }

  v311 = v324;
  v312 = v325;
  v313 = v326;
  v307 = v320;
  v308 = v321;
  v309 = v322;
  v310 = v323;
  v303 = v316;
  v304 = v317;
  v305 = v318;
  v306 = v319;
  v298 = 24;
  sub_1DACB9F84();
  v248 = v299;
  LODWORD(v252) = v300;
  if (v300)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v134 = *(v278 + 2);
    v133 = *(v278 + 3);
    if (v134 >= v133 >> 1)
    {
      v278 = sub_1DAA9A3B0((v133 > 1), v134 + 1, 1, v278);
    }

    v135 = v278;
    *(v278 + 2) = v134 + 1;
    v136 = &v135[16 * v134];
    *(v136 + 4) = 0xD00000000000001DLL;
    *(v136 + 5) = 0x80000001DACE1480;
    *v280 = v135;
    swift_endAccess();
  }

  v298 = 25;
  sub_1DACB9F84();
  v246 = v299;
  v247 = v300;
  if (v300)
  {
    swift_beginAccess();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v278 = sub_1DAA9A3B0(0, *(v278 + 2) + 1, 1, v278);
    }

    v138 = *(v278 + 2);
    v137 = *(v278 + 3);
    if (v138 >= v137 >> 1)
    {
      v278 = sub_1DAA9A3B0((v137 > 1), v138 + 1, 1, v278);
    }

    v139 = v278;
    *(v278 + 2) = v138 + 1;
    v140 = &v139[16 * v138];
    *(v140 + 4) = 0xD000000000000024;
    *(v140 + 5) = 0x80000001DACE14A0;
    *v280 = v139;
    swift_endAccess();
  }

  LOBYTE(v299) = 26;
  sub_1DACB9F84();
  v278 = *(&v286 + 1);
  v245 = v286;
  if (!*(&v286 + 1))
  {
    sub_1DAB3D7E0(26, v268);
  }

  LOBYTE(v299) = 27;
  sub_1DACB9F84();
  v244 = v286;
  if (!*(&v286 + 1))
  {
    sub_1DAB3D7E0(27, v268);
  }

  LOBYTE(v299) = 28;
  sub_1DACB9F84();
  v243 = v286;
  if (!*(&v286 + 1))
  {
    sub_1DAB3D7E0(28, v268);
  }

  v298 = 29;
  sub_1DACB9F84();
  v242 = v299;
  v241 = v300;
  if (v300)
  {
    v141 = v280;
    swift_beginAccess();
    v142 = *v141;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v142 = sub_1DAA9A3B0(0, *(v142 + 2) + 1, 1, v142);
    }

    v144 = *(v142 + 2);
    v143 = *(v142 + 3);
    v240 = v144 + 1;
    if (v144 >= v143 >> 1)
    {
      v142 = sub_1DAA9A3B0((v143 > 1), v240, 1, v142);
    }

    *(v142 + 2) = v240;
    v145 = &v142[16 * v144];
    *(v145 + 4) = 0xD000000000000025;
    *(v145 + 5) = 0x80000001DACE1530;
    *v280 = v142;
    swift_endAccess();
  }

  v298 = 30;
  sub_1DACB9F84();
  v240 = v299;
  v239 = v300;
  if (v300)
  {
    v146 = v280;
    swift_beginAccess();
    v147 = *v146;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v147 = sub_1DAA9A3B0(0, *(v147 + 2) + 1, 1, v147);
    }

    v149 = *(v147 + 2);
    v148 = *(v147 + 3);
    v238 = v149 + 1;
    if (v149 >= v148 >> 1)
    {
      v147 = sub_1DAA9A3B0((v148 > 1), v238, 1, v147);
    }

    *(v147 + 2) = v238;
    v150 = &v147[16 * v149];
    *(v150 + 4) = 0xD000000000000021;
    *(v150 + 5) = 0x80000001DACE1560;
    *v280 = v147;
    swift_endAccess();
  }

  v298 = 31;
  sub_1DACB9F84();
  v238 = v299;
  v237 = v300;
  if (v300)
  {
    v151 = v280;
    swift_beginAccess();
    v152 = *v151;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v152 = sub_1DAA9A3B0(0, *(v152 + 2) + 1, 1, v152);
    }

    v154 = *(v152 + 2);
    v153 = *(v152 + 3);
    v236 = v154 + 1;
    if (v154 >= v153 >> 1)
    {
      v152 = sub_1DAA9A3B0((v153 > 1), v236, 1, v152);
    }

    *(v152 + 2) = v236;
    v155 = &v152[16 * v154];
    *(v155 + 4) = 0xD00000000000002FLL;
    *(v155 + 5) = 0x80000001DACE1590;
    *v280 = v152;
    swift_endAccess();
  }

  LOBYTE(v299) = 32;
  sub_1DACB9F84();
  LODWORD(v236) = v298;
  if (v298 == 2)
  {
    v156 = v280;
    swift_beginAccess();
    v157 = *v156;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v157 = sub_1DAA9A3B0(0, *(v157 + 2) + 1, 1, v157);
    }

    v159 = *(v157 + 2);
    v158 = *(v157 + 3);
    v235 = v159 + 1;
    if (v159 >= v158 >> 1)
    {
      v157 = sub_1DAA9A3B0((v158 > 1), v235, 1, v157);
    }

    *(v157 + 2) = v235;
    v160 = &v157[16 * v159];
    *(v160 + 4) = 0xD000000000000026;
    *(v160 + 5) = 0x80000001DACE15C0;
    *v280 = v157;
    swift_endAccess();
  }

  LOBYTE(v299) = 33;
  sub_1DACB9F84();
  LODWORD(v235) = v298;
  if (v298 == 2)
  {
    v161 = v280;
    swift_beginAccess();
    v162 = *v161;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v162 = sub_1DAA9A3B0(0, *(v162 + 2) + 1, 1, v162);
    }

    v164 = *(v162 + 2);
    v163 = *(v162 + 3);
    v234 = v164 + 1;
    if (v164 >= v163 >> 1)
    {
      v162 = sub_1DAA9A3B0((v163 > 1), v234, 1, v162);
    }

    *(v162 + 2) = v234;
    v165 = &v162[16 * v164];
    *(v165 + 4) = 0xD00000000000002DLL;
    *(v165 + 5) = 0x80000001DACE15F0;
    *v280 = v162;
    swift_endAccess();
  }

  v298 = 34;
  sub_1DACB9F84();
  v233 = v299;
  v232 = v300;
  if (v300)
  {
    v166 = v280;
    swift_beginAccess();
    v167 = *v166;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v167 = sub_1DAA9A3B0(0, *(v167 + 2) + 1, 1, v167);
    }

    v169 = *(v167 + 2);
    v168 = *(v167 + 3);
    v234 = v169 + 1;
    if (v169 >= v168 >> 1)
    {
      v167 = sub_1DAA9A3B0((v168 > 1), v234, 1, v167);
    }

    *(v167 + 2) = v234;
    v170 = &v167[16 * v169];
    *(v170 + 4) = 0xD00000000000001ALL;
    *(v170 + 5) = 0x80000001DACE1620;
    *v280 = v167;
    swift_endAccess();
  }

  LOBYTE(v299) = 35;
  sub_1DAA4BB3C(0, &qword_1EE123F68, type metadata accessor for AudioUpsellConfig, MEMORY[0x1E69E62F8]);
  sub_1DAA96BA0(&qword_1EE123F58, &qword_1EE124D60);
  sub_1DACB9F84();
  v234 = 0;
  v171 = v286;
  if (!v286)
  {
    sub_1DAB3D7E0(35, v268);
  }

  v172 = v273 == 2;
  v173 = v270;
  if (v269)
  {
    v173 = 0;
  }

  v270 = v173;
  v174 = v328;
  if (v267)
  {
    v174 = 0;
  }

  v328 = v174;
  if (*(&v266 + 1))
  {
    if (!*(&v265 + 1))
    {
      goto LABEL_208;
    }
  }

  else
  {
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v179 = qword_1EE1242C0;
    v178 = qword_1EE1242C8;
    sub_1DACB71E4();
    *&v266 = sub_1DAA4BBA0(v179, v178);
    *(&v266 + 1) = v180;

    if (!*(&v265 + 1))
    {
LABEL_208:
      if (qword_1EE1242B8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v176 = qword_1EE1242C0;
      v175 = qword_1EE1242C8;
      sub_1DACB71E4();
      *&v265 = sub_1DAA4C06C(v176, v175);
      *(&v265 + 1) = v177;

      if (*(&v264 + 1))
      {
        goto LABEL_219;
      }

      goto LABEL_216;
    }
  }

  if (!*(&v264 + 1))
  {
LABEL_216:
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v182 = qword_1EE1242C0;
    v181 = qword_1EE1242C8;
    sub_1DACB71E4();
    *&v264 = sub_1DAA4C248(v182, v181);
    *(&v264 + 1) = v183;
  }

LABEL_219:
  v184 = v172 | v273;
  if (!*(&v263 + 1))
  {
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v186 = qword_1EE1242C0;
    v185 = qword_1EE1242C8;
    sub_1DACB71E4();
    *&v263 = sub_1DAA4C424(v186, v185);
    *(&v263 + 1) = v187;
  }

  v274 &= 1u;
  v273 = v184 & 1;
  v272 &= 1u;
  v271 &= 1u;
  v188 = v60 & 1;
  if (!*(&v262 + 1))
  {
    if (qword_1EE1242B8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v190 = qword_1EE1242C0;
    v189 = qword_1EE1242C8;
    sub_1DACB71E4();
    *&v262 = sub_1DAA4C600(v190, v189);
    *(&v262 + 1) = v191;
  }

  if (v259)
  {
    v192 = 604800;
  }

  else
  {
    v192 = v260;
  }

  v193 = 172800;
  if (!v257)
  {
    v193 = v258;
  }

  v230 = v193;
  v231 = v192;
  v294 = v311;
  v295 = v312;
  if (v255)
  {
    v194 = 0;
  }

  else
  {
    v194 = v256;
  }

  v296 = v313;
  v290 = v307;
  v291 = v308;
  v292 = v309;
  v293 = v310;
  v195 = v244;
  if (!*(&v244 + 1))
  {
    v195 = 0;
  }

  v269 = v195;
  v196 = 0xE000000000000000;
  if (*(&v244 + 1))
  {
    v196 = *(&v244 + 1);
  }

  v267 = v196;
  v286 = v303;
  v287 = v304;
  if (v241)
  {
    v197 = 0;
  }

  else
  {
    v197 = v242;
  }

  v198 = v240;
  if (v239)
  {
    v198 = 0;
  }

  v259 = v198;
  v260 = v197;
  v199 = v238;
  if (v237)
  {
    v199 = 0;
  }

  v257 = v199;
  LODWORD(v258) = v236 & 1;
  LODWORD(v256) = v235 & 1;
  v288 = v305;
  v289 = v306;
  v200 = 25;
  v302 = v252;
  if (!v232)
  {
    v200 = v233;
  }

  v255 = v200;
  v201 = MEMORY[0x1E69E7CC0];
  if (v171)
  {
    v201 = v171;
  }

  *(&v244 + 1) = v201;
  v301 = v247;
  v202 = v280;
  swift_beginAccess();
  v203 = *v202;
  if (*(v203 + 2))
  {
    sub_1DAA4BB3C(0, &qword_1EE123B20, sub_1DAADF88C, MEMORY[0x1E69E6F90]);
    v204 = swift_allocObject();
    *(v204 + 16) = xmmword_1DACC1D20;
    *(v204 + 56) = v276;
    *(v204 + 64) = sub_1DAAF691C();
    *(v204 + 32) = v203;
    sub_1DAA41DCC();
    sub_1DACB71E4();
    v205 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();
  }

  else
  {
    sub_1DAA41DCC();
    v205 = sub_1DACB9AD4();
    sub_1DACB9914();
    sub_1DACB8C64();
  }

  (*(v275 + 8))(v279, v66);

  v206 = v281;
  *v281 = v16;
  v206[1] = v22;
  *(v206 + 16) = v274;
  *(v206 + 17) = v273;
  *(v206 + 18) = v272;
  *(v206 + 19) = v271;
  v206[3] = v270;
  *(v206 + 32) = v188;
  v207 = v266;
  v206[5] = v328;
  *(v206 + 3) = v207;
  v208 = *(&v265 + 1);
  v206[8] = v265;
  v206[9] = v208;
  v209 = *(&v264 + 1);
  v206[10] = v264;
  v206[11] = v209;
  v210 = *(&v263 + 1);
  v206[12] = v263;
  v206[13] = v210;
  v211 = v262;
  *(v206 + 33) = v297[0];
  *(v206 + 9) = *(v297 + 3);
  v212 = *(&v262 + 1);
  v206[14] = v211;
  v206[15] = v212;
  v213 = *(&v261 + 1);
  v206[16] = v261;
  v206[17] = v213;
  v214 = v230;
  v206[18] = v231;
  v206[19] = v214;
  v215 = v254;
  v206[20] = v194;
  v206[21] = v215;
  v216 = v250;
  v206[22] = v251;
  v206[23] = v216;
  v217 = v249;
  v206[24] = v253;
  v206[25] = v217;
  v218 = v295;
  *(v206 + 21) = v294;
  *(v206 + 22) = v218;
  v219 = v296;
  v220 = v291;
  *(v206 + 17) = v290;
  *(v206 + 18) = v220;
  v221 = v293;
  *(v206 + 19) = v292;
  *(v206 + 20) = v221;
  v222 = v287;
  *(v206 + 13) = v286;
  *(v206 + 14) = v222;
  v223 = v289;
  *(v206 + 15) = v288;
  *(v206 + 16) = v223;
  v224 = v248;
  v206[46] = v219;
  v206[47] = v224;
  *(v206 + 384) = v252;
  *(v206 + 385) = *v285;
  *(v206 + 97) = *&v285[3];
  v206[49] = v246;
  *(v206 + 400) = v247;
  *(v206 + 401) = *v284;
  *(v206 + 101) = *&v284[3];
  v225 = v278;
  v206[51] = v245;
  v206[52] = v225;
  v226 = v267;
  v206[53] = v269;
  v206[54] = v226;
  v227 = *(&v243 + 1);
  v206[55] = v243;
  v206[56] = v227;
  v228 = v259;
  v206[57] = v260;
  v206[58] = v228;
  v206[59] = v257;
  *(v206 + 480) = v258;
  *(v206 + 481) = v256;
  *(v206 + 482) = v282;
  *(v206 + 243) = v283;
  v229 = *(&v244 + 1);
  v206[61] = v255;
  v206[62] = v229;
  *(v206 + 504) = 1;
  return __swift_destroy_boxed_opaque_existential_1(v61);
}

unint64_t sub_1DAB3D4E4(uint64_t a1)
{
  v53 = *MEMORY[0x1E69E9840];
  v2 = sub_1DACB75A4();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  sub_1DACB7594();
  v5 = *(a1 + 320);
  v6 = *(a1 + 352);
  v50 = *(a1 + 336);
  v51 = v6;
  v7 = *(a1 + 256);
  v8 = *(a1 + 288);
  v46 = *(a1 + 272);
  v47 = v8;
  v9 = *(a1 + 288);
  v10 = *(a1 + 320);
  v48 = *(a1 + 304);
  v49 = v10;
  v11 = *(a1 + 224);
  v43[0] = *(a1 + 208);
  v43[1] = v11;
  v12 = *(a1 + 256);
  v14 = *(a1 + 208);
  v13 = *(a1 + 224);
  v44 = *(a1 + 240);
  v45 = v12;
  v15 = *(a1 + 352);
  v40 = v50;
  v41 = v15;
  v36 = v46;
  v37 = v9;
  v38 = v48;
  v39 = v5;
  v32 = v14;
  v33 = v13;
  v52 = *(a1 + 368);
  v42 = *(a1 + 368);
  v34 = v44;
  v35 = v7;
  sub_1DAA5265C(v43, v30);
  sub_1DAA5260C(0, &qword_1EE124E80, &type metadata for FlexiblePaywall, MEMORY[0x1E69E6720]);
  sub_1DAB3DD38();
  v16 = sub_1DACB7584();
  v18 = v17;
  v30[8] = v40;
  v30[9] = v41;
  v31 = v42;
  v30[4] = v36;
  v30[5] = v37;
  v30[6] = v38;
  v30[7] = v39;
  v30[0] = v32;
  v30[1] = v33;
  v30[2] = v34;
  v30[3] = v35;
  sub_1DAA52740(v30);

  v19 = objc_opt_self();
  v20 = sub_1DACB7B44();
  v29[0] = 0;
  v21 = [v19 JSONObjectWithData:v20 options:4 error:v29];

  if (!v21)
  {
    v24 = v29[0];
    v25 = sub_1DACB78C4();

    swift_willThrow();
    goto LABEL_5;
  }

  v22 = v29[0];
  sub_1DACB9B74();
  swift_unknownObjectRelease();
  sub_1DAA61100();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v26 = sub_1DAB68C38(MEMORY[0x1E69E7CC0]);
    sub_1DAA563C0(v16, v18);
    result = v26;
    goto LABEL_6;
  }

  sub_1DAA563C0(v16, v18);
  result = v28;
LABEL_6:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_1DAB3D7E0(char a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_1DAA9A3B0(0, *(v4 + 2) + 1, 1, v4);
    *(a2 + 16) = v4;
  }

  v7 = *(v4 + 2);
  v6 = *(v4 + 3);
  if (v7 >= v6 >> 1)
  {
    v4 = sub_1DAA9A3B0((v6 > 1), v7 + 1, 1, v4);
  }

  v8 = sub_1DAA964B0(a1);
  *(v4 + 2) = v7 + 1;
  v9 = &v4[16 * v7];
  *(v9 + 4) = v8;
  *(v9 + 5) = v10;
  *(a2 + 16) = v4;
  return swift_endAccess();
}

uint64_t sub_1DAB3D8B8()
{
  v0 = sub_1DACBA1B4();

  if (v0 >= 0x25)
  {
    return 37;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1DAB3D90C()
{
  result = qword_1EE124FD8;
  if (!qword_1EE124FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124FD8);
  }

  return result;
}

unint64_t sub_1DAB3D960()
{
  result = qword_1EE123F10;
  if (!qword_1EE123F10)
  {
    sub_1DAA5260C(255, &qword_1EE123F20, &type metadata for SubscriptionButtonConfig, MEMORY[0x1E69E62F8]);
    sub_1DAAF8A6C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE123F10);
  }

  return result;
}

unint64_t sub_1DAB3D9FC()
{
  result = qword_1EE124E88;
  if (!qword_1EE124E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE124E88);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10StocksCore39FlexiblePaywallResourceByLocationConfigVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAB3DA7C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 505))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DAB3DAC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 504) = 0;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 505) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 505) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DAB3DBAC()
{
  result = qword_1ECBE7A98;
  if (!qword_1ECBE7A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7A98);
  }

  return result;
}

uint64_t sub_1DAB3DC00(uint64_t a1)
{
  sub_1DAB3DC5C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1DAB3DC5C()
{
  if (!qword_1ECBE7AA0)
  {
    sub_1DAA5260C(255, &qword_1EE124E80, &type metadata for FlexiblePaywall, MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1ECBE7AA0);
    }
  }
}

unint64_t sub_1DAB3DD38()
{
  result = qword_1ECBE7AA8;
  if (!qword_1ECBE7AA8)
  {
    sub_1DAA5260C(255, &qword_1EE124E80, &type metadata for FlexiblePaywall, MEMORY[0x1E69E6720]);
    sub_1DAA96B08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECBE7AA8);
  }

  return result;
}

StocksCore::NewsProvider_optional __swiftcall NewsProvider.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DACB9F04();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NewsProvider.rawValue.getter()
{
  v1 = 0x656C707061;
  if (*v0 != 1)
  {
    v1 = 0x6F6F686179;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F72467265666E69;
  }
}

uint64_t sub_1DAB3DE90()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3DF38()
{
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAB3DFCC()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3E07C(uint64_t a1)
{
  v2 = sub_1DAA5B994();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1DAB3E0D0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAA5B994();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t NewsEnvironment.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x69746375646F7270;
  v3 = 0x316F6D6564;
  if (v1 != 6)
  {
    v3 = 0x326F6D6564;
  }

  v4 = 0x6C65766564;
  if (v1 != 4)
  {
    v4 = 0x786F62646E6173;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 24945;
  if (v1 != 2)
  {
    v5 = 1953719668;
  }

  if (*v0)
  {
    v2 = 0x676E6967617473;
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

uint64_t sub_1DAB3E224@<X0>(char *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DAB3E280()
{
  v1 = 0x656764457377656ELL;
  if (*v0 != 1)
  {
    v1 = 0x74694B64756F6C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1DAB3E2DC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656764457377656ELL;
  if (v2 != 1)
  {
    v3 = 0x74694B64756F6C63;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x746C7561666564;
  }

  if (v2)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE700000000000000;
  }

  v6 = 0x656764457377656ELL;
  if (*a2 != 1)
  {
    v6 = 0x74694B64756F6C63;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x746C7561666564;
  }

  if (*a2)
  {
    v8 = 0xE800000000000000;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1DACBA174();
  }

  return v9 & 1;
}

uint64_t sub_1DAB3E3E0()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3E484()
{
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAB3E514()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3E5B4@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_1DAB3E224(a1);
}

void sub_1DAB3E5C0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x656764457377656ELL;
  if (v2 != 1)
  {
    v4 = 0x74694B64756F6C63;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (!v5)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t sub_1DAB3E620(uint64_t a1)
{
  v2 = sub_1DAB44288();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1DAB3E674(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAB44288();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1DAB3E6D0(uint64_t a1)
{
  v2 = sub_1DAB44288();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

uint64_t sub_1DAB3E724@<X0>(char *a1@<X8>)
{
  v2 = sub_1DACB9F04();

  v4 = 3;
  if (v2 < 3)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1DAB3E780()
{
  v1 = 0x6465776F6C6C61;
  if (*v0 != 1)
  {
    v1 = 0x776F6C6C61736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x69666E6F43707061;
  }
}

uint64_t sub_1DAB3E7E4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6465776F6C6C61;
  if (v2 != 1)
  {
    v4 = 0x776F6C6C61736964;
    v3 = 0xEA00000000006465;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x69666E6F43707061;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE900000000000067;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6465776F6C6C61;
  if (*a2 != 1)
  {
    v8 = 0x776F6C6C61736964;
    v7 = 0xEA00000000006465;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x69666E6F43707061;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE900000000000067;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAB3E8F0()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3E99C()
{
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAB3EA34()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3EADC@<X0>(char *a1@<X8>, uint64_t *a2@<X0>)
{
  v3 = *a2;
  v2 = a2[1];
  return sub_1DAB3E724(a1);
}

void sub_1DAB3EAE8(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000067;
  v4 = 0xE700000000000000;
  v5 = 0x6465776F6C6C61;
  if (v2 != 1)
  {
    v5 = 0x776F6C6C61736964;
    v4 = 0xEA00000000006465;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x69666E6F43707061;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1DAB3EB50(uint64_t a1)
{
  v2 = sub_1DAB44234();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1DAB3EBA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAB44234();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1DAB3EC00(uint64_t a1)
{
  v2 = sub_1DAB44234();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45770](a1, v2, v3);
}

StocksCore::StocksDataServiceEnablement_optional __swiftcall StocksDataServiceEnablement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1DACB9F04();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StocksDataServiceEnablement.rawValue.getter()
{
  v1 = 0x64656C62616E65;
  if (*v0 != 1)
  {
    v1 = 0x64656C6261736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746C7561666564;
  }
}

uint64_t sub_1DAB3ED0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64656C62616E65;
  if (v2 != 1)
  {
    v5 = 0x64656C6261736964;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x746C7561666564;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE700000000000000;
  }

  v8 = 0x64656C62616E65;
  if (*a2 != 1)
  {
    v8 = 0x64656C6261736964;
    v3 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746C7561666564;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DACBA174();
  }

  return v11 & 1;
}

uint64_t sub_1DAB3EE0C()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3EEB0()
{
  *v0;
  *v0;
  sub_1DACB9404();
}

uint64_t sub_1DAB3EF40()
{
  v1 = *v0;
  sub_1DACBA284();
  sub_1DACB9404();

  return sub_1DACBA2C4();
}

uint64_t sub_1DAB3EFEC(uint64_t a1)
{
  v2 = sub_1DAA6D4B0();
  v3 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45780](a1, v2, v3);
}

uint64_t sub_1DAB3F040(uint64_t a1, uint64_t a2)
{
  v4 = sub_1DAA6D4B0();
  v5 = MEMORY[0x1E69D6EE0];

  return MEMORY[0x1EEE45778](a1, a2, v4, v5);
}

uint64_t sub_1DAB3F09C()
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
  qword_1EE1200B0 = result;
  return result;
}

uint64_t sub_1DAB3F28C()
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
  qword_1EE120088 = result;
  return result;
}

uint64_t sub_1DAB3F47C()
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
  qword_1EE11D620 = result;
  return result;
}

uint64_t sub_1DAB3F66C()
{
  v0 = sub_1DACB8024();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1DACB8034();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  (*(v8 + 104))(&v13[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)], *MEMORY[0x1E69D6EA0]);
  (*(v1 + 104))(v4, *MEMORY[0x1E69D6E88], v0);
  v13[15] = 0;
  sub_1DAA60950(0, qword_1EE1255D8);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  result = sub_1DACB80B4();
  qword_1EE11D608 = result;
  return result;
}