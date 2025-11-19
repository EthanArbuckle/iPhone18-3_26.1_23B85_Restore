uint64_t sub_1A48690E8(void *a1)
{
  sub_1A4869C38();
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v36 - v7;
  type metadata accessor for PeopleNamingItem();
  v9 = a1;
  v10 = PeopleNamingItem.__allocating_init(person:searchString:)(v9);
  v36[0] = 0;
  sub_1A4860834(0);
  v11 = v10;
  sub_1A524B694();
  *(v8 + 8) = v37;
  v12 = type metadata accessor for LemonadePeopleNamingView(0);
  v13 = v12[6];
  *&v8[v13] = swift_getKeyPath();
  sub_1A45DBFC0(0);
  swift_storeEnumTagMultiPayload();
  v14 = v12[7];
  *&v8[v14] = swift_getKeyPath();
  sub_1A4137EE8(0);
  swift_storeEnumTagMultiPayload();
  v15 = &v8[v12[8]];
  *v15 = swift_getKeyPath();
  v15[8] = 0;
  v16 = &v8[v12[9]];
  *v16 = swift_getKeyPath();
  *(v16 + 1) = 0;
  *(v16 + 8) = 0;
  v17 = &v8[v12[11]];
  LOBYTE(v36[0]) = 0;
  sub_1A524B694();
  v18 = *(&v37 + 1);
  *v17 = v37;
  *(v17 + 1) = v18;
  v19 = &v8[v12[12]];
  v36[0] = MEMORY[0x1E69E7CC0];
  sub_1A4434588(0);
  sub_1A524B694();
  v20 = *(&v37 + 1);
  *v19 = v37;
  *(v19 + 1) = v20;
  v21 = &v8[v12[13]];
  *v21 = sub_1A5247C34() & 1;
  *(v21 + 1) = v22;
  v21[16] = v23 & 1;
  *&v8[v12[15]] = 0x4049000000000000;
  *v8 = v9;
  v24 = &v8[v12[10]];
  v36[0] = 0;
  v36[1] = 0xE000000000000000;
  v25 = v9;
  sub_1A524B694();
  v26 = v38;
  *v24 = v37;
  *(v24 + 2) = v26;
  v27 = &v8[v12[14]];
  v36[0] = v11;
  sub_1A524B694();
  v28 = *(&v37 + 1);
  *v27 = v37;
  *(v27 + 1) = v28;
  *&v8[v12[16]] = 0;
  v29 = &v8[v12[17]];
  *v29 = 0;
  *(v29 + 1) = 0;
  KeyPath = swift_getKeyPath();
  v31 = &v8[*(v3 + 44)];
  *v31 = KeyPath;
  v31[8] = 0;
  sub_1A486B468(v8, v5, sub_1A4869C38);
  sub_1A4869CCC();
  v33 = objc_allocWithZone(v32);
  v34 = sub_1A5249624();

  sub_1A486B4D0(v8, sub_1A4869C38);
  return v34;
}

void sub_1A486944C()
{
  sub_1A3C52C70(319, &qword_1EB1265C0);
  if (v0 <= 0x3F)
  {
    sub_1A486B360(319, &qword_1EB143B48, sub_1A4860834, MEMORY[0x1E6981790]);
    if (v1 <= 0x3F)
    {
      sub_1A486B360(319, &unk_1EB1246F0, MEMORY[0x1E697CC88], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A486B360(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A4861EBC(319, &unk_1EB143B50, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E697DCC0]);
          if (v4 <= 0x3F)
          {
            sub_1A486B360(319, &unk_1EB124680, sub_1A3E316EC, MEMORY[0x1E697DCC0]);
            if (v5 <= 0x3F)
            {
              sub_1A486A580(319, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
              if (v6 <= 0x3F)
              {
                sub_1A486A580(319, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
                if (v7 <= 0x3F)
                {
                  sub_1A486B360(319, &unk_1EB143B60, sub_1A4434588, MEMORY[0x1E6981790]);
                  if (v8 <= 0x3F)
                  {
                    sub_1A486B210(319, &qword_1EB1249A0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6380], MEMORY[0x1E697BDF0]);
                    if (v9 <= 0x3F)
                    {
                      sub_1A486B360(319, &unk_1EB143B70, type metadata accessor for PeopleNamingItem, MEMORY[0x1E6981790]);
                      if (v10 <= 0x3F)
                      {
                        sub_1A3C4B7E8(319, &qword_1EB126650, &qword_1EB126660);
                        if (v11 <= 0x3F)
                        {
                          sub_1A486B360(319, &qword_1EB1201F0, sub_1A3C3637C, MEMORY[0x1E69E6720]);
                          if (v12 <= 0x3F)
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
  }
}

uint64_t sub_1A4869800()
{
  result = sub_1A5248284();
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

unint64_t sub_1A48698D0()
{
  result = qword_1EB143B80;
  if (!qword_1EB143B80)
  {
    sub_1A4864C8C(255, &qword_1EB143B30, sub_1A4864CF0);
    sub_1A486B694(&unk_1EB143B88, sub_1A4864CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143B80);
  }

  return result;
}

void sub_1A48699FC()
{
  if (!qword_1EB143BA0)
  {
    sub_1A486AF7C(255, &qword_1EB143BA8, sub_1A4861B60, sub_1A4869A84);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143BA0);
    }
  }
}

void sub_1A4869A84()
{
  if (!qword_1EB143BB0)
  {
    sub_1A4869B1C(255, &qword_1EB143BB8, sub_1A4869B84, &type metadata for LemonadePeopleNamingRow.TitleStack, MEMORY[0x1E697EC08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143BB0);
    }
  }
}

void sub_1A4869B1C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_1A4869B84()
{
  result = qword_1EB1DB340[0];
  if (!qword_1EB1DB340[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1DB340);
  }

  return result;
}

uint64_t sub_1A4869BD8()
{
  type metadata accessor for LemonadePeopleNamingView(0);

  return sub_1A4864BEC();
}

void sub_1A4869C38()
{
  if (!qword_1EB143BC0)
  {
    type metadata accessor for LemonadePeopleNamingView(255);
    sub_1A4861EBC(255, &qword_1EB141B50, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143BC0);
    }
  }
}

void sub_1A4869CCC()
{
  if (!qword_1EB143BD0)
  {
    sub_1A4869C38();
    sub_1A439AFD8();
    v0 = sub_1A5249654();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143BD0);
    }
  }
}

uint64_t sub_1A4869D30(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A4861EBC(255, a2, a3, a4, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A4869DAC()
{
  type metadata accessor for LemonadePeopleNamingView(0);
  sub_1A486A580(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  v0 = objc_allocWithZone(PXPeopleNameSelection);
  v1 = sub_1A524C634();
  v2 = [v0 initWithName_];

  sub_1A4866A70(v2);
}

void sub_1A4869EBC(char a1, uint64_t a2)
{
  v5 = *(type metadata accessor for LemonadePeopleNamingView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A4866F28(a1, a2, v6);
}

uint64_t sub_1A4869F3C()
{
  v1 = *(type metadata accessor for LemonadePeopleNamingView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_1A4864614(v2);
}

uint64_t sub_1A4869F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  *a1 = sub_1A5249314();
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  sub_1A486A8D8(0, &qword_1EB143BF8, sub_1A486181C);
  return sub_1A4863784(v3, a1 + *(v4 + 44));
}

uint64_t sub_1A486A014()
{
  sub_1A3C38BD4();
  sub_1A524C724();

  v0 = sub_1A524C634();

  v1 = [v0 px:3 stringByApplyingCapitalization:?];

  sub_1A524C674();
  sub_1A3D5F9DC();
  v2 = MEMORY[0x1E69E6158];
  sub_1A524A464();
  type metadata accessor for LemonadePeopleNamingView(0);
  sub_1A486A580(0, &unk_1EB13A670, v2, MEMORY[0x1E6981790]);
  sub_1A524B6A4();

  v3 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v3 = *v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    sub_1A486A580(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    sub_1A524B6A4();
  }

  sub_1A486B210(0, &qword_1EB124060, MEMORY[0x1E6981148], MEMORY[0x1E697E5C8], MEMORY[0x1E697E830]);
  sub_1A486263C();
  sub_1A4234634();
  sub_1A48628B0();
  return sub_1A524BA34();
}

uint64_t sub_1A486A294(uint64_t a1, uint64_t a2)
{
  sub_1A4862D0C(0, &qword_1EB143A00, sub_1A4862520, sub_1A3E42C88);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A486A330(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LemonadePeopleNamingView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  sub_1A48664A8(a1, v6, a2);
}

void sub_1A486A3B0()
{
  type metadata accessor for LemonadePeopleNamingView(0);
  v1 = *(v0 + 16);
  v2 = sub_1A463BC00();
  if (!v2)
  {
    v6 = sub_1A463BB64();
    if (v6)
    {

      sub_1A486666C(v1);
      return;
    }

    goto LABEL_11;
  }

  v3 = sub_1A463BB64();
  if (!v3)
  {
    v7 = sub_1A463BC00();
    if (v7)
    {
      v4 = v7;
      v5 = &selRef_initWithContact_;
      goto LABEL_8;
    }

LABEL_11:
    sub_1A524E6E4();
    __break(1u);
    return;
  }

  v4 = v3;
  v5 = &selRef_initWithSelectedPerson_;
LABEL_8:
  v8 = [objc_allocWithZone(PXPeopleNameSelection) *v5];

  sub_1A4866A70(v8);
}

id sub_1A486A564@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = v2;
  a1[1] = 0x4044000000000000;
  return v2;
}

void sub_1A486A580(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A486A5D0()
{
  v1 = *(type metadata accessor for LemonadePeopleNamingView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1A4867418(v0 + v2, v3);
}

uint64_t sub_1A486A6B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A486A720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A486A780(uint64_t a1)
{
  type metadata accessor for LemonadePeopleNamingView(0);
  v2 = [objc_allocWithZone(PXPeopleNameSelection) initWithContact_];
  sub_1A4866A70(v2);
}

void sub_1A486A824(void *a1)
{
  if (a1)
  {
    v2 = *(v1 + 16);

    [a1 presentViewController:v2 animated:1 completion:0];
  }

  else
  {
    sub_1A524D244();
    v3 = *sub_1A3CAA3FC();
    sub_1A5246DF4();
  }
}

void sub_1A486A8D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A52483B4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t objectdestroyTm_81()
{
  v1 = type metadata accessor for LemonadePeopleNamingView(0);
  v2 = (v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80)));

  v3 = v1[6];
  sub_1A45DBFC0(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5249FB4();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  v5 = v1[7];
  sub_1A4137EE8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_1A5248284();
    (*(*(v6 - 8) + 8))(v2 + v5, v6);
  }

  else
  {
  }

  sub_1A3C53AEC(*(v2 + v1[8]), *(v2 + v1[8] + 8));
  sub_1A3EF9960(*(v2 + v1[9]), *(v2 + v1[9] + 8), *(v2 + v1[9] + 16), *(v2 + v1[9] + 17));

  if (*(v2 + v1[17]))
  {
  }

  return swift_deallocObject();
}

id sub_1A486AB8C(uint64_t a1, unint64_t *a2)
{
  v4 = type metadata accessor for LemonadePeopleNamingView(0);
  v5 = (v2 + ((*(*(v4 - 8) + 80) + 16) & ~*(*(v4 - 8) + 80)));
  v6 = *a2;
  v7 = a2[1];
  v8 = *v5;
  result = [*v5 photoLibrary];
  if (result)
  {
    v10 = result;
    type metadata accessor for PeopleNamingUtilities();
    static PeopleNamingUtilities.items(for:photoLibrary:detectionType:)(v6, v7, v10, [v8 detectionType]);

    sub_1A486B360(0, &unk_1EB143B60, sub_1A4434588, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    sub_1A486A580(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], MEMORY[0x1E6981790]);
    return sub_1A524B6B4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A486AD2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A486ADA4()
{
  if (!qword_1EB143C18)
  {
    sub_1A48699FC();
    sub_1A486B694(&qword_1EB143C20, sub_1A48699FC);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143C18);
    }
  }
}

void sub_1A486AE6C()
{
  if (!qword_1EB143C38)
  {
    sub_1A3FF7634();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB143C38);
    }
  }
}

void sub_1A486AEF4()
{
  if (!qword_1EB143C40)
  {
    sub_1A486AF7C(255, &qword_1EB143C48, sub_1A486AFF8, sub_1A486B264);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143C40);
    }
  }
}

void sub_1A486AF7C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A486AFF8()
{
  if (!qword_1EB143C50)
  {
    sub_1A486B08C(255);
    sub_1A486B694(&qword_1EB143C68, sub_1A486B08C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143C50);
    }
  }
}

void sub_1A486B0C0()
{
  if (!qword_1EB143C60)
  {
    sub_1A486B148(255, &qword_1EB130118, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143C60);
    }
  }
}

void sub_1A486B148(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A486B210(255, &qword_1EB128720, MEMORY[0x1E6981148], MEMORY[0x1E697E5E0], MEMORY[0x1E697E830]);
    sub_1A4861EBC(255, a3, a4, a5, MEMORY[0x1E6980A08]);
    v9 = sub_1A5248804();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A486B210(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A486B298()
{
  if (!qword_1EB143C78)
  {
    sub_1A486B32C(255);
    sub_1A486B694(&qword_1EB143C98, sub_1A486B32C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143C78);
    }
  }
}

void sub_1A486B360(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A486B3C4()
{
  if (!qword_1EB143C88)
  {
    sub_1A486B148(255, &qword_1EB143C90, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143C88);
    }
  }
}

double sub_1A486B44C(uint64_t a1)
{
  *(a1 + 128) = 0;
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t sub_1A486B468(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A486B4D0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A486B530(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t a6)
{
  sub_1A486B148(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A486B5A4(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1A486B148(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A486B600()
{
  if (!qword_1EB143CA8)
  {
    sub_1A486AEF4();
    sub_1A486B694(&unk_1EB143CB0, sub_1A486AEF4);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143CA8);
    }
  }
}

uint64_t sub_1A486B694(unint64_t *a1, void (*a2)(uint64_t))
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

int *sub_1A486B6E8@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A52434D4();
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  result = type metadata accessor for LemonadeDetailsContext();
  v4 = (a1 + result[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a1 + result[6]);
  *v5 = 0;
  v5[1] = 0;
  *(a1 + result[7]) = 0;
  *(a1 + result[8]) = 0;
  return result;
}

unint64_t sub_1A486B778()
{
  result = qword_1EB120938;
  if (!qword_1EB120938)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB120938);
  }

  return result;
}

id sub_1A486B86C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXStoryChromeButtonFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int_optional __swiftcall LemonadeCurationModel.numberOfAssets(curationKind:)(PhotosUICore::LemonadeCurationKind curationKind)
{
  v1 = 0;
  v2 = 1;
  result.value = v1;
  result.is_nil = v2;
  return result;
}

unint64_t sub_1A486B938()
{
  result = qword_1EB129B48;
  if (!qword_1EB129B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B48);
  }

  return result;
}

unint64_t sub_1A486B990()
{
  result = qword_1EB129B60;
  if (!qword_1EB129B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B60);
  }

  return result;
}

unint64_t sub_1A486B9EC()
{
  result = qword_1EB129B68;
  if (!qword_1EB129B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B68);
  }

  return result;
}

unint64_t sub_1A486BA44()
{
  result = qword_1EB129B50;
  if (!qword_1EB129B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129B50);
  }

  return result;
}

uint64_t sub_1A486BB60()
{
  sub_1A486BDC0();
  v1 = v0;
  v2 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247974();
  sub_1A486BE24();
  v5 = sub_1A5247A14();
  (*(v2 + 8))(v4, v1);
  return v5;
}

void sub_1A486BDC0()
{
  if (!qword_1EB143CC0)
  {
    v0 = sub_1A5247984();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143CC0);
    }
  }
}

unint64_t sub_1A486BE24()
{
  result = qword_1EB143CC8;
  if (!qword_1EB143CC8)
  {
    sub_1A486BDC0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143CC8);
  }

  return result;
}

uint64_t sub_1A486BEC8()
{
  v0 = sub_1A3C52C70(0, &qword_1EB1374F0);
  v1 = sub_1A3C3A220(&qword_1EB143D40, &qword_1EB1374F0);
  return DataSectionItemListProtocol<>.itemIdentifiers.getter(v0, v1);
}

uint64_t sub_1A486BF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_1A3C52C70(0, &qword_1EB1374F0);
  v7 = sub_1A3C3A220(&qword_1EB143D40, &qword_1EB1374F0);
  return a4(a1, v6, v7);
}

void sub_1A486C038()
{
  sub_1A3C52C70(0, &qword_1EB1374F0);

  sub_1A5246494();
}

void sub_1A486C110()
{
  sub_1A3C52C70(0, &qword_1EB1374F0);

  sub_1A5246404();
}

uint64_t sub_1A486C1B8(uint64_t result, uint64_t a2)
{
  v2 = result + a2;
  if (__OFADD__(result, a2))
  {
    __break(1u);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB1374F0);
    sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0);
    sub_1A524CFD4();
    result = sub_1A524D034();
    if (v2 >= v4 && v3 >= v2)
    {
      return v2;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A486C28C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A486C3A8(a1, a3);
  if (a2 >= 1)
  {
    if (result < 0 || result >= a2)
    {
      goto LABEL_8;
    }

    return 0;
  }

  if (result <= 0 && result > a2)
  {
    return 0;
  }

LABEL_8:
  v7 = __OFADD__(a1, a2);
  v6 = a1 + a2;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB1374F0);
    sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0);
    sub_1A524CFD4();
    result = sub_1A524D034();
    if (v6 >= v9 && v8 >= v6)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A486C3A8(uint64_t a1, uint64_t a2)
{
  sub_1A3C52C70(0, &qword_1EB1374F0);
  sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0);
  sub_1A524CFD4();
  result = sub_1A524D034();
  if (v7 > a1 || v6 < a1)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1A524CFD4();
  result = sub_1A524D034();
  if (v7 > a2 || v6 < a2)
  {
    goto LABEL_10;
  }

  result = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A486C4C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1A486C4F4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1A486C4F4(uint64_t result)
{
  v1 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB1374F0);
    sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0);
    sub_1A524CFD4();
    result = sub_1A524D034();
    if (v1 >= v3 && v1 < v2)
    {
      return v1;
    }
  }

  __break(1u);
  return result;
}

uint64_t *sub_1A486C5C8(uint64_t *result)
{
  v1 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    sub_1A3C52C70(0, &qword_1EB1374F0);
    sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0);
    sub_1A524CFD4();
    result = sub_1A524D034();
    if (v1 >= v5 && v1 < v4)
    {
      *v2 = v1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A486C6D8@<X0>(uint64_t (*a1)(uint64_t, uint64_t)@<X2>, uint64_t *a2@<X8>)
{
  v4 = sub_1A3C52C70(0, &qword_1EB1374F0);
  v5 = sub_1A3C3A220(&qword_1EB143D40, &qword_1EB1374F0);
  result = a1(v4, v5);
  *a2 = result;
  return result;
}

void (*sub_1A486C770(uint64_t a1, uint64_t *a2))(id *a1)
{
  v2 = *a2;
  v3 = sub_1A3C52C70(0, &qword_1EB1374F0);
  v4 = sub_1A3C3A220(&qword_1EB143D40, &qword_1EB1374F0);
  DataSectionItemListProtocol<>.subscript.getter(v2, v3, v4);
  return sub_1A3D5C2E8;
}

uint64_t sub_1A486C824(uint64_t a1)
{
  sub_1A3C52C70(0, &qword_1EB1374F0);
  sub_1A3C3A220(&qword_1EB143D40, &qword_1EB1374F0);
  return DataSectionItemListProtocol<>.subscript.getter(a1);
}

uint64_t sub_1A486C8BC@<X0>(void *a1@<X8>)
{
  sub_1A3C52C70(0, &qword_1EB1374F0);
  sub_1A524CFD4();
  result = sub_1A524D034();
  if (v3 < v4)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
    a1[1] = v3;
  }

  return result;
}

uint64_t sub_1A486C95C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1A486C28C(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t *sub_1A486C998(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1A486C9B4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1A486C9D0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A486C9EC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  sub_1A3C52C70(0, &qword_1EB1374F0);
  sub_1A3C3A220(&qword_1EB143D40, &qword_1EB1374F0);
  result = DataSectionItemListProtocol<>.index(after:)(v3);
  *a2 = result;
  return result;
}

uint64_t sub_1A486CAF4@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  sub_1A3C52C70(0, &qword_1EB1374F0);
  sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0);
  result = sub_1A524CFD4();
  *a1 = v3;
  a1[1] = v5;
  return result;
}

uint64_t sub_1A486CB9C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

void *sub_1A486CBF0()
{
  v1 = *v0;
  v2 = sub_1A486D4EC(*v0);

  return v2;
}

uint64_t sub_1A486CEE4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1A486D154(255, &qword_1EB143CF0, MEMORY[0x1E69E74D0]);
    sub_1A3C3A220(a2, &qword_1EB1374F0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A486D004(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1A3D868AC();
    sub_1A3DE7848();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A486D0C0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A486D154(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A486D154(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A3C52C70(255, &qword_1EB1374F0);
    v7 = sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1A486D204(uint64_t a1)
{
  *(a1 + 8) = sub_1A3C3A220(&qword_1EB1374E8, &qword_1EB1374F0);
  result = sub_1A3C3A220(&qword_1EB13DCB0, &qword_1EB1374F0);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1A486D360@<X0>(uint64_t *a1@<X8>)
{
  sub_1A3C52C70(0, &qword_1EB13DE08);
  sub_1A3C3A220(&qword_1EB13DE00, &qword_1EB13DE08);
  result = sub_1A524E434();
  *a1 = result;
  return result;
}

uint64_t sub_1A486D3F0@<X0>(uint64_t *a1@<X8>)
{
  sub_1A3C52C70(0, &qword_1EB13DE08);
  result = sub_1A524E434();
  *a1 = result;
  return result;
}

void sub_1A486D444()
{
  swift_getWitnessTable();

    ;
  }
}

void sub_1A486D498()
{
  swift_getWitnessTable();

    ;
  }
}

void *sub_1A486D4EC(void *a1)
{
  v2 = [a1 count];
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = v2;
  v4 = sub_1A40C9D70(v2, 0);
  v5 = a1;
  v6 = sub_1A486D578(v8, (v4 + 4), v3);

  if (v6 != v3)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t sub_1A486D578(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1A3C52C70(0, &qword_1EB1374F0);
  sub_1A3C3A220(&qword_1EB143CF8, &qword_1EB1374F0);
  result = sub_1A524CFD4();
  v9 = v17[0];
  v18 = v17[0];
  v19 = v3;
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_13;
  }

  if (!a3)
  {
LABEL_13:
    *a1 = v4;
    a1[1] = v9;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v15 = a3;
    v16 = a1;
    v10 = 0;
    v11 = a3 - 1;
    a1 = v17;
    while (1)
    {
      sub_1A524D034();
      v9 = v18;
      if (v18 == v17[0])
      {
        a3 = v10;
        a1 = v16;
        goto LABEL_13;
      }

      v12 = sub_1A524D0C4();
      v14 = *v13;
      v12(v17, 0);
      v17[0] = v4;
      sub_1A524D014();
      *(a2 + 8 * v10) = v14;
      if (v11 == v10)
      {
        break;
      }

      if (__OFADD__(++v10, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v9 = v18;
    a3 = v15;
    a1 = v16;
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall PXMenuBuilder.addActionsMenuDurationSection(storyViewModel:)(PXStoryViewModel *storyViewModel)
{
  sub_1A486D7B0(storyViewModel, &v3);
  if (v4)
  {
    sub_1A3C34460(&v3, v5);
    v1 = v6;
    v2 = __swift_project_boxed_opaque_existential_1(v5, v6);
    sub_1A408EA88(v2, 0, 0, v1);
    __swift_destroy_boxed_opaque_existential_0(v5);
  }

  else
  {
    sub_1A486D920(&v3);
  }
}

uint64_t sub_1A486D7B0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = [a1 allowedChromeItems];
  if ((result & 0x8000000) == 0)
  {
    goto LABEL_2;
  }

  if ([a1 mainAssetCollection])
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v6 = [v5 isGenerative];
      result = swift_unknownObjectRelease();
      if (v6)
      {
LABEL_2:
        *(a2 + 32) = 0;
        *a2 = 0u;
        *(a2 + 16) = 0u;
        return result;
      }
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v7 = type metadata accessor for StoryViewCurationModel(0);
  v8 = StoryViewCurationModel.__allocating_init(storyViewModel:)(a1);
  v9 = (*(*v8 + 184))(v8);
  if (*(v9 + 16) >= 2uLL)
  {

LABEL_11:
    *(a2 + 24) = v7;
    result = sub_1A486DAE0();
    *(a2 + 32) = result;
    *a2 = v8;
    return result;
  }

  v10 = sub_1A3F61A0C(v9, &unk_1F17298A8);

  if (v10)
  {
    goto LABEL_11;
  }

  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
}

uint64_t sub_1A486D920(uint64_t a1)
{
  sub_1A486D97C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A486D97C()
{
  if (!qword_1EB13FCA8)
  {
    sub_1A486D9D4();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB13FCA8);
    }
  }
}

unint64_t sub_1A486D9D4()
{
  result = qword_1EB13FCB0;
  if (!qword_1EB13FCB0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB13FCB0);
  }

  return result;
}

unint64_t sub_1A486DAE0()
{
  result = qword_1EB143D48;
  if (!qword_1EB143D48)
  {
    type metadata accessor for StoryViewCurationModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143D48);
  }

  return result;
}

uint64_t sub_1A486DB38()
{
  sub_1A3EBD0AC();
  result = sub_1A524DEE4();
  qword_1EB1DB988 = result;
  return result;
}

uint64_t *sub_1A486DB9C()
{
  if (qword_1EB1DB980 != -1)
  {
    swift_once();
  }

  return &qword_1EB1DB988;
}

id static OS_os_log.sharePlay.getter()
{
  if (qword_1EB1DB980 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB1DB988;

  return v1;
}

uint64_t sub_1A486DC48()
{
  result = PFOSVariantHasInternalUI();
  if (result)
  {
    sub_1A3C7E8B0();
    v1 = [swift_getObjCClassFromMetadata() sharedInstance];
    v2 = [v1 enablePhototypes];

    return v2;
  }

  return result;
}

uint64_t sub_1A486DCA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A486DE58(uint64_t a1, uint64_t a2)
{
  v2[0] = 0;
  PhototypeContext.init(kind:photoLibrary:selectedAssets:containerAssets:)(v2, *(a2 + 16), 0, 0, v5);
  v2[0] = v5[0];
  v3 = v6;
  v4 = v7;
  sub_1A43C7E00();
}

uint64_t sub_1A486DEEC()
{
  v0 = MEMORY[0x1E69C2250];
  sub_1A486E20C(0, &qword_1EB124DF0, MEMORY[0x1E69C2250]);
  sub_1A486E1C8(&qword_1EB143D50, &qword_1EB124DF0, v0);

  return sub_1A5243E44();
}

unint64_t sub_1A486DFC0(uint64_t a1)
{
  v2 = sub_1A486E494(&qword_1EB125710, type metadata accessor for LemonadePhototypesFeature.ShelfProvider);

  return sub_1A42E6E80(a1, v2);
}

uint64_t sub_1A486E02C@<X0>(void *a1@<X8>)
{
  *a1 = 0x7079746F746F6870;
  a1[1] = 0xEA00000000007365;
  v1 = a1 + *(type metadata accessor for LemonadePhototypesFeature(0) + 20);
  *v1 = 0x7079746F746F6850;
  *(v1 + 1) = 0xEA00000000007365;
  v1[16] = 0;
  v2 = type metadata accessor for LemonadePhototypesFeature.ShelfProvider(0);
  return sub_1A42E7E24(0, 1, 1, &v1[*(v2 + 24)]);
}

unint64_t sub_1A486E0B0()
{
  result = qword_1EB143D58;
  if (!qword_1EB143D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143D58);
  }

  return result;
}

uint64_t sub_1A486E104(uint64_t a1)
{
  result = sub_1A486E494(&qword_1EB125718, type metadata accessor for LemonadePhototypesFeature.ShelfProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A486E1C8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A486E20C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A486E20C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t))
{
  if (!*a2)
  {
    sub_1A43C8784(255, &qword_1EB124A88, off_1E7721230);
    v7 = v6;
    v8 = sub_1A43C8610();
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A486E298()
{
  result = qword_1EB143D60;
  if (!qword_1EB143D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143D60);
  }

  return result;
}

uint64_t sub_1A486E43C(uint64_t a1)
{
  result = sub_1A486E494(&qword_1EB125708, type metadata accessor for LemonadePhototypesFeature);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A486E494(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A486E53C()
{
  if (!qword_1EB143D70)
  {
    v0 = MEMORY[0x1E69C2250];
    sub_1A486E20C(255, &qword_1EB124DF0, MEMORY[0x1E69C2250]);
    sub_1A486E1C8(&qword_1EB143D50, &qword_1EB124DF0, v0);
    v1 = sub_1A5243E34();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB143D70);
    }
  }
}

uint64_t sub_1A486E5F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  sub_1A486FC78();
  v52 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = (v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v46 = type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView(0);
  MEMORY[0x1EEE9AC00](v46);
  v6 = (v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x1E697F948];
  sub_1A486FBD4(0, &qword_1EB143DF8, sub_1A486FB8C, sub_1A486FC78, MEMORY[0x1E697F948]);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v47 = v42 - v9;
  sub_1A486FBD4(0, &qword_1EB143E00, type metadata accessor for GenerativeStoryHeaderAndSuggestionView, type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView, v7);
  v51 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v42 - v11;
  sub_1A486FB8C(0);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4870710(0, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (v42 - v17);
  v19 = type metadata accessor for GenerativeStoryPromptSuggestionView(0);
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView(0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v44 = v42 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *a1;
  v26 = (*(**a1 + 384))(v23);
  if ((v26 - 1) < 2)
  {
    sub_1A487049C(a1, v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryPromptSuggestionView);
    v27 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v28 = swift_allocObject();
    sub_1A48703CC(v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v28 + v27, type metadata accessor for GenerativeStoryPromptSuggestionView);
    *v6 = v25;
    v6[1] = sub_1A4870504;
    v6[2] = v28;
    v29 = v46;
    v30 = *(v46 + 24);
    *(v6 + v30) = swift_getKeyPath();
    sub_1A3E71AC8(0);
    swift_storeEnumTagMultiPayload();
    *(v6 + *(v29 + 28)) = 3;
    sub_1A487049C(v6, v12, type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView);
    swift_storeEnumTagMultiPayload();
    sub_1A4870160(&qword_1EB125140, type metadata accessor for GenerativeStoryHeaderAndSuggestionView);
    sub_1A48701A8();

    sub_1A5249744();
    sub_1A487049C(v15, v47, sub_1A486FB8C);
    swift_storeEnumTagMultiPayload();
    sub_1A48700B0();
    sub_1A4870160(&qword_1EB143DD8, sub_1A486FC78);
    sub_1A5249744();
    sub_1A487051C(v15, sub_1A486FB8C);
    v31 = type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView;
    v32 = v6;
    return sub_1A487051C(v32, v31);
  }

  v42[1] = v22;
  v43 = v15;
  if (v26)
  {
    v40 = sub_1A5249574();
    v37 = v45;
    *v45 = v40;
    *(v37 + 8) = 0;
    *(v37 + 16) = 1;
    sub_1A4870434();
    sub_1A486EECC(a1, v37 + *(v41 + 44));
    sub_1A487049C(v37, v47, sub_1A486FC78);
    swift_storeEnumTagMultiPayload();
    sub_1A48700B0();
    sub_1A4870160(&qword_1EB143DD8, sub_1A486FC78);
    sub_1A5249744();
    v39 = sub_1A486FC78;
    goto LABEL_7;
  }

  result = (*(*v25 + 1624))();
  if (result)
  {
    v34 = result;
    sub_1A487049C(a1, v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryPromptSuggestionView);
    v35 = (*(v20 + 80) + 16) & ~*(v20 + 80);
    v36 = swift_allocObject();
    sub_1A48703CC(v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0), v36 + v35, type metadata accessor for GenerativeStoryPromptSuggestionView);
    sub_1A4489654(v18);
    v37 = v44;
    sub_1A4489674(v18, v34, 1, sub_1A4870504, v36, v44);
    sub_1A487049C(v37, v12, type metadata accessor for GenerativeStoryHeaderAndSuggestionView);
    swift_storeEnumTagMultiPayload();
    sub_1A4870160(&qword_1EB125140, type metadata accessor for GenerativeStoryHeaderAndSuggestionView);
    sub_1A48701A8();
    v38 = v43;
    sub_1A5249744();
    sub_1A487049C(v38, v47, sub_1A486FB8C);
    swift_storeEnumTagMultiPayload();
    sub_1A48700B0();
    sub_1A4870160(&qword_1EB143DD8, sub_1A486FC78);
    sub_1A5249744();
    sub_1A487051C(v38, sub_1A486FB8C);
    v39 = type metadata accessor for GenerativeStoryHeaderAndSuggestionView;
LABEL_7:
    v31 = v39;
    v32 = v37;
    return sub_1A487051C(v32, v31);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A486EECC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerativeStoryPromptSuggestionView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v21 - v12);
  v14 = *sub_1A4493250();
  v15 = *a1;
  sub_1A487049C(a1, &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for GenerativeStoryPromptSuggestionView);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  sub_1A48703CC(&v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for GenerativeStoryPromptSuggestionView);
  *v13 = v15;
  v13[1] = sub_1A4870504;
  v13[2] = v17;
  v18 = *(v8 + 32);
  *(v13 + v18) = swift_getKeyPath();
  sub_1A3E71AC8(0);
  swift_storeEnumTagMultiPayload();
  *(v13 + *(v8 + 36)) = 3;
  sub_1A487049C(v13, v10, type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView);
  *a2 = v14;
  *(a2 + 8) = 0;
  sub_1A486FD40();
  sub_1A487049C(v10, a2 + *(v19 + 48), type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView);

  sub_1A487051C(v13, type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView);
  return sub_1A487051C(v10, type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView);
}

uint64_t sub_1A486F12C(uint64_t a1, uint64_t *a2)
{
  sub_1A43C7D38(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4499C00(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GenerativeStorySuggestion(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487049C(a1, v9, sub_1A4499C00);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    v14 = sub_1A4499C00;
    v15 = v9;
  }

  else
  {
    sub_1A48703CC(v9, v13, type metadata accessor for GenerativeStorySuggestion);
    if (sub_1A417DA90())
    {
      v16 = *a2;
      (*(*v16 + 2136))(*(v13 + 2));
      v17 = sub_1A417DA38();
      v19 = v18;
      v20 = sub_1A5244854();
      (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
      (*(*v16 + 1896))(v17, v19, v6);

      sub_1A487051C(v6, sub_1A43C7D38);
      (*(*v16 + 592))(0);
    }

    v14 = type metadata accessor for GenerativeStorySuggestion;
    v15 = v13;
  }

  return sub_1A487051C(v15, v14);
}

void sub_1A486F444(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GenerativeStorySuggestionsView();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4870318(0);
  v47 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v49 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48703A4(0);
  v48 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v50 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  v15 = *(*v14 + 1624);
  v46 = v14;
  v16 = v15(v12);
  if (v16)
  {
    v17 = v16;
    v18 = v2[2];
    v45 = v2[1];
    v19 = *(v2 + *(type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView(0) + 28));

    sub_1A3D61808(v6);
    v20 = sub_1A4492800(v6);
    v21 = *(v4 + 8);
    v21(v6, v3);
    sub_1A49ED614(v17, v45, v18, v19, 1, v52, v20);
    sub_1A3D61808(v6);
    sub_1A4496374(v6);
    v21(v6, v3);
    sub_1A524BC74();
  }

  else
  {
    __break(1u);
    sub_1A524D254();
    v43 = sub_1A524A014();
    sub_1A5246DF4();
  }

  sub_1A5248AD4();
  v22 = v49;
  sub_1A48703CC(v52, v49, type metadata accessor for GenerativeStorySuggestionsView);
  v23 = (v22 + *(v47 + 36));
  v24 = v58;
  v23[4] = v57;
  v23[5] = v24;
  v23[6] = v59;
  v25 = v54;
  *v23 = v53;
  v23[1] = v25;
  v26 = v56;
  v23[2] = v55;
  v23[3] = v26;
  v27 = sub_1A524A054();
  sub_1A4491F00();
  sub_1A5247BC4();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  v36 = v50;
  v37 = sub_1A48703CC(v22, v50, sub_1A4870318);
  v38 = v46;
  v39 = v36 + *(v48 + 36);
  *v39 = v27;
  *(v39 + 8) = v29;
  *(v39 + 16) = v31;
  *(v39 + 24) = v33;
  *(v39 + 32) = v35;
  *(v39 + 40) = 0;
  if ((*(*v38 + 584))(v37))
  {
    v40 = 1.0;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = v51;
  sub_1A48703CC(v36, v51, sub_1A48703A4);
  sub_1A4870340(0, &qword_1EB143DF0, sub_1A48703A4);
  *(v41 + *(v42 + 36)) = v40;
}

uint64_t sub_1A486F920@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = *(type metadata accessor for GenerativeStoryPromptSuggestionView(0) + 20);
  *(a2 + v3) = swift_getKeyPath();
  sub_1A3E71AC8(0);

  return swift_storeEnumTagMultiPayload();
}

void sub_1A486F984(uint64_t a1@<X8>)
{
  v3 = sub_1A5242D14();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A486E5F0(v1, a1);
  v7 = sub_1A524A084();
  sub_1A3D61808(v6);
  sub_1A4497E88(v6);
  (*(v4 + 8))(v6, v3);
  sub_1A5247BC4();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  sub_1A4870340(0, &qword_1EB143D78, sub_1A486FAF0);
  v17 = a1 + *(v16 + 36);
  *v17 = v7;
  *(v17 + 8) = v9;
  *(v17 + 16) = v11;
  *(v17 + 24) = v13;
  *(v17 + 32) = v15;
  *(v17 + 40) = 0;
}

void sub_1A486FAF0()
{
  if (!qword_1EB143D80)
  {
    sub_1A486FBD4(255, &qword_1EB143D88, sub_1A486FB8C, sub_1A486FC78, MEMORY[0x1E697F960]);
    v0 = sub_1A524B514();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143D80);
    }
  }
}

void sub_1A486FBD4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A486FC78()
{
  if (!qword_1EB143D98)
  {
    sub_1A486FD0C(255);
    sub_1A4870160(&qword_1EB143DB0, sub_1A486FD0C);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143D98);
    }
  }
}

void sub_1A486FD40()
{
  if (!qword_1EB143DA8)
  {
    type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143DA8);
    }
  }
}

void sub_1A486FDEC()
{
  type metadata accessor for GenerativeStoryCreationViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A4870710(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1A486FEA0()
{
  result = qword_1EB143DB8;
  if (!qword_1EB143DB8)
  {
    sub_1A4870340(255, &qword_1EB143D78, sub_1A486FAF0);
    sub_1A486FF44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143DB8);
  }

  return result;
}

unint64_t sub_1A486FF44()
{
  result = qword_1EB143DC0;
  if (!qword_1EB143DC0)
  {
    sub_1A486FAF0();
    sub_1A486FFBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143DC0);
  }

  return result;
}

unint64_t sub_1A486FFBC()
{
  result = qword_1EB143DC8;
  if (!qword_1EB143DC8)
  {
    sub_1A486FBD4(255, &qword_1EB143D88, sub_1A486FB8C, sub_1A486FC78, MEMORY[0x1E697F960]);
    sub_1A48700B0();
    sub_1A4870160(&qword_1EB143DD8, sub_1A486FC78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143DC8);
  }

  return result;
}

unint64_t sub_1A48700B0()
{
  result = qword_1EB143DD0;
  if (!qword_1EB143DD0)
  {
    sub_1A486FB8C(255);
    sub_1A4870160(&qword_1EB125140, type metadata accessor for GenerativeStoryHeaderAndSuggestionView);
    sub_1A48701A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143DD0);
  }

  return result;
}

uint64_t sub_1A4870160(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1A48701A8()
{
  result = qword_1EB160B50[0];
  if (!qword_1EB160B50[0])
  {
    type metadata accessor for GenerativeStoryPromptSuggestionView.AutocompleteSuggestionsView(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB160B50);
  }

  return result;
}

void sub_1A4870228()
{
  type metadata accessor for GenerativeStoryCreationViewModel(319);
  if (v0 <= 0x3F)
  {
    sub_1A3C3637C();
    if (v1 <= 0x3F)
    {
      sub_1A4870710(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A4870340(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A48703CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A4870434()
{
  if (!qword_1EB143E08)
  {
    sub_1A486FD0C(255);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143E08);
    }
  }
}

uint64_t sub_1A487049C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A487051C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_82()
{
  v1 = (type metadata accessor for GenerativeStoryPromptSuggestionView(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_1A3E71AC8(0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v4 = sub_1A5242D14();
    (*(*(v4 - 8) + 8))(v2 + v3, v4);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A487068C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for GenerativeStoryPromptSuggestionView(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

void sub_1A4870710(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A4870774()
{
  result = qword_1EB143E10;
  if (!qword_1EB143E10)
  {
    sub_1A4870340(255, &qword_1EB143DF0, sub_1A48703A4);
    sub_1A4870818();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143E10);
  }

  return result;
}

unint64_t sub_1A4870818()
{
  result = qword_1EB143E18;
  if (!qword_1EB143E18)
  {
    sub_1A48703A4(255);
    sub_1A4870898();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143E18);
  }

  return result;
}

unint64_t sub_1A4870898()
{
  result = qword_1EB143E20;
  if (!qword_1EB143E20)
  {
    sub_1A4870318(255);
    sub_1A4870160(&qword_1EB143E28, type metadata accessor for GenerativeStorySuggestionsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143E20);
  }

  return result;
}

uint64_t sub_1A4870948@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A48709E0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 320))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22LemonadeFeatureLibrary___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DB74(&qword_1EB12A138, type metadata accessor for LemonadeFeatureLibrary);
  sub_1A52415F4();

  v4[7] = sub_1A3F2894C();
  return sub_1A4870B30;
}

uint64_t sub_1A4870B3C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A4870BD4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 320))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore22LemonadeFeatureLibrary___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A3C3DB74(&qword_1EB12A138, type metadata accessor for LemonadeFeatureLibrary);
  sub_1A52415F4();

  v4[7] = sub_1A4197328();
  return sub_1A4870D24;
}

uint64_t sub_1A4870D30()
{
  v1 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C531C8(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = (EnumCaseMultiPayload > 0x11) | (0xEBFFu >> EnumCaseMultiPayload);
  sub_1A3C53E7C(v3);
  return v5 & 1;
}

uint64_t sub_1A4870DDC()
{
  sub_1A3C53294(v3);
  v0 = v4;
  v1 = v5;
  __swift_project_boxed_opaque_existential_1(v3, v4);
  LOBYTE(v0) = (*(v1 + 48))(v0, v1);
  __swift_destroy_boxed_opaque_existential_0(v3);
  return v0 & 1;
}

uint64_t sub_1A4870E50(uint64_t a1, uint64_t a2)
{
  sub_1A3C64718(v7);
  v4 = v8;
  if (!v8)
  {
    return sub_1A3C6520C(v7, &qword_1EB132808, &qword_1EB132810);
  }

  v5 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  (*(v5 + 320))(a1, a2, v4, v5);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t sub_1A4870F04@<X0>(uint64_t a1@<X8>)
{
  sub_1A3C3EF40(*(v1 + 16), 1, v8);
  v3 = v8[3];
  *(a1 + 32) = v8[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v9;
  v4 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v4;
  v5 = type metadata accessor for LemonadeFeatureLibrary.Shelf(0);
  swift_storeEnumTagMultiPayload();
  v6 = *(*(v5 - 8) + 56);

  return v6(a1, 0, 1, v5);
}

uint64_t sub_1A4870FC0()
{
  v8 = MEMORY[0x1E69E7CC0];
  sub_1A3C540A4();
  v1 = *(type metadata accessor for LemonadeFeatureLibrary.Shelf(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A52F8E10;
  v4 = *(v0 + 16);
  sub_1A444B7B0(v4, (v3 + v2));
  swift_storeEnumTagMultiPayload();
  sub_1A3C54144(v3);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A52F8E10;
  sub_1A47E13B0(v4, (v5 + v2));
  swift_storeEnumTagMultiPayload();
  sub_1A3C54144(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1A52F8E10;
  sub_1A477F81C(v4, v6 + v2);
  swift_storeEnumTagMultiPayload();
  sub_1A3C54144(v6);
  return v8;
}

unint64_t sub_1A48711B8()
{
  result = qword_1EB143E50;
  if (!qword_1EB143E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143E50);
  }

  return result;
}

uint64_t LemonadeWallpaperEditorConfiguration.hashValue.getter()
{
  sub_1A524EC94();
  sub_1A48711B8();
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A4871268()
{
  sub_1A524EC94();
  sub_1A48711B8();
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A4871310()
{
  sub_1A524EC94();
  sub_1A48711B8();
  sub_1A524C4B4();
  return sub_1A524ECE4();
}

uint64_t sub_1A4871374(void **a1)
{
  v104 = *MEMORY[0x1E69E9840];
  v88 = sub_1A5240CB4();
  v2 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v87 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5240E64();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v86 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v93 = &v75 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v75 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v75 - v12;
  sub_1A40FCB18(*a1);
  v14 = objc_opt_self();
  v91 = v13;
  v15 = sub_1A5240D44();
  v101 = 0;
  v16 = [v14 loadFromURL:v15 error:&v101];

  v17 = v101;
  if (v16)
  {
    v18 = v101;
    PXCreateMutablePosterConfigurationForLockScreenRole();
    v20 = v19;
    v21 = sub_1A524C634();
    v94 = v20;
    [v20 setDisplayNameLocalizationKey_];

    v22 = [objc_allocWithZone(MEMORY[0x1E69C07E8]) initWithConfigurationType_];
    [v22 setOptions_];
    v23 = [v16 media];
    if (!v23)
    {
      sub_1A3C52C70(0, &qword_1EB126C50);
      sub_1A524CA34();
      v23 = sub_1A524CA14();
    }

    [v22 setMedia_];

    v24 = [v94 assetDirectory];
    v25 = v92;
    sub_1A5240DE4();

    v26 = sub_1A5240D44();
    v27 = v5 + 8;
    v90 = *(v5 + 8);
    v90(v25, v4);
    v101 = 0;
    LODWORD(v25) = [v22 saveToURL:v26 error:&v101];

    v28 = v101;
    if (!v25)
    {
      goto LABEL_22;
    }

    v29 = objc_opt_self();
    v30 = v28;
    v89 = [v29 defaultManager];
    v31 = [v16 media];
    sub_1A3C52C70(0, &qword_1EB126C50);
    v32 = sub_1A524CA34();

    v76 = v16;
    v75 = v22;
    if (v32 >> 62)
    {
LABEL_18:
      v33 = sub_1A524E2B4();
      if (v33)
      {
LABEL_7:
        v34 = 0;
        v85 = v32 & 0xC000000000000001;
        v84 = v32 & 0xFFFFFFFFFFFFFF8;
        v79 = *MEMORY[0x1E6968F58];
        v78 = (v2 + 104);
        v77 = (v2 + 8);
        v83 = v27;
        v82 = v4;
        v81 = v32;
        v80 = v33;
        while (1)
        {
          if (v85)
          {
            v35 = MEMORY[0x1A59097F0](v34, v32);
            v36 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
              goto LABEL_16;
            }
          }

          else
          {
            if (v34 >= *(v84 + 16))
            {
              goto LABEL_17;
            }

            v35 = *(v32 + 8 * v34 + 32);
            v36 = v34 + 1;
            if (__OFADD__(v34, 1))
            {
LABEL_16:
              __break(1u);
LABEL_17:
              __break(1u);
              goto LABEL_18;
            }
          }

          v98 = v34;
          v99 = v36;
          v37 = v35;
          v38 = [v35 subpath];
          v39 = sub_1A524C674();
          v41 = v40;

          v101 = v39;
          v102 = v41;
          v97 = *v78;
          v42 = v87;
          v43 = v88;
          v44 = v79;
          v97(v87, v79, v88);
          v96 = sub_1A3D5F9DC();
          sub_1A5240E44();
          v95 = *v77;
          v95(v42, v43);

          v45 = [v94 assetDirectory];
          v46 = v92;
          sub_1A5240DE4();

          v47 = v37;
          v48 = [v37 subpath];
          v49 = sub_1A524C674();
          v51 = v50;

          v101 = v49;
          v102 = v51;
          v97(v42, v44, v43);
          v52 = v82;
          v53 = v83;
          v54 = v86;
          sub_1A5240E44();
          v95(v42, v43);
          v55 = v93;

          v4 = v52;
          v27 = v53;
          v56 = v90;
          v90(v46, v52);
          v57 = sub_1A5240D44();
          v58 = sub_1A5240D44();
          v101 = 0;
          v2 = [v89 copyItemAtURL:v57 toURL:v58 error:&v101];

          if (!v2)
          {
            break;
          }

          v59 = v101;

          v56(v54, v4);
          v56(v55, v4);
          v34 = v98 + 1;
          v32 = v81;
          if (v99 == v80)
          {
            goto LABEL_19;
          }
        }

        v17 = v101;
        sub_1A5240B84();

        swift_willThrow();
        swift_unexpectedError();
        __break(1u);
        goto LABEL_21;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_7;
      }
    }

LABEL_19:

    v60 = PXCreateWallpaperPosterEditingEntryPoint(@"com.apple.PhotosUIPrivate.PhotosPosterProvider", v94);
    sub_1A524E0B4();
    swift_unknownObjectRelease();
    __swift_project_boxed_opaque_existential_1(&v101, v103);
    v61 = sub_1A524EA94();
    v62 = PXCreateWallpaperPosterInlineEditingViewController(v61);
    swift_unknownObjectRelease();
    v63 = objc_allocWithZone(type metadata accessor for EditorWrapperViewController());
    *&v63[qword_1EB143E60] = v62;
    sub_1A4872708();
    v100.receiver = v63;
    v100.super_class = v64;
    v65 = v62;
    v66 = objc_msgSendSuper2(&v100, sel_initWithNibName_bundle_, 0, 0);
    v67 = v65;
    v68 = v66;
    [v68 addChildViewController_];
    [v67 didMoveToParentViewController_];

    [v67 setDelegate_];
    swift_unknownObjectRelease();

    v90(v91, v4);
    __swift_destroy_boxed_opaque_existential_0(&v101);
    return v68;
  }

LABEL_21:
  v70 = v17;
  v71 = sub_1A5240B84();

  swift_willThrow();
  v101 = 0;
  v102 = 0xE000000000000000;
  sub_1A524E404();

  v101 = 0xD000000000000030;
  v102 = 0x80000001A53EF180;
  sub_1A3F6D3EC();
  v72 = sub_1A524EA44();
  v28 = v73;
  MEMORY[0x1A5907B60](v72);

  sub_1A524E6E4();
  __break(1u);
LABEL_22:
  v74 = v28;
  sub_1A5240B84();

  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

id sub_1A4871D90(void *a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[qword_1EB143E60] = a1;
  sub_1A4872708();
  v10.receiver = v3;
  v10.super_class = v4;
  v5 = a1;
  v6 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, 0, 0);
  v7 = v5;
  v8 = v6;
  [v8 addChildViewController_];
  [v7 didMoveToParentViewController_];

  [v7 setDelegate_];
  return v8;
}

uint64_t sub_1A4871E64()
{
  v3 = *v0;
  swift_unknownObjectRetain();
  v1 = sub_1A4871374(&v3);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_1A4871EB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A48729D8();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1A4871F14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A48729D8();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1A4871F78()
{
  sub_1A48729D8();
  sub_1A5249ED4();
  __break(1u);
}

id sub_1A4871FA0(void *a1)
{
  *&v1[qword_1EB143E60] = a1;
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ViewControllerWrapper();
  v3 = a1;
  v4 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, 0, 0);
  v5 = v3;
  v6 = v4;
  [v6 addChildViewController_];
  [v5 didMoveToParentViewController_];

  return v6;
}

uint64_t sub_1A48720E0(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v6.receiver = v1;
    v6.super_class = type metadata accessor for EditorWrapperViewController();
    v4 = objc_msgSendSuper2(&v6, sel_supportedInterfaceOrientations);
  }

  else
  {

    return 2;
  }

  return v4;
}

uint64_t sub_1A4872178(void *a1)
{
  v1 = a1;
  v2 = [v1 traitCollection];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    v6.receiver = v1;
    v6.super_class = type metadata accessor for EditorWrapperViewController();
    v4 = objc_msgSendSuper2(&v6, sel_preferredInterfaceOrientationForPresentation);
  }

  else
  {

    return 1;
  }

  return v4;
}

id sub_1A4872210()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for EditorWrapperViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A48722D0()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  v2 = [*&v0[qword_1EB143E60] view];
  if (v2)
  {
    [v1 bounds];
    [v2 setFrame_];
    [v1 addSubview_];
    [v0 setView_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A487239C(void *a1)
{
  v1 = a1;
  sub_1A48722D0();
}

id sub_1A48723E4(void *a1)
{
  v1 = a1;
  sub_1A487245C();
  v3 = v2;

  if (v3)
  {
    v4 = sub_1A524C634();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1A487245C()
{
  v1 = [*(v0 + qword_1EB143E60) title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1A524C674();

  return v3;
}

void sub_1A48724CC(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = sub_1A524C674();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = a1;
  sub_1A487254C(v4, v6);
}

void sub_1A487254C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + qword_1EB143E60);
  if (a2)
  {
    v4 = sub_1A524C634();
  }

  else
  {
    v4 = 0;
  }

  [v3 setTitle_];
}

id sub_1A48725C4()
{
  v0 = sub_1A3D25994();

  return v0;
}

void sub_1A48725F8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4 = a4;

  sub_1A4872854();
}

id sub_1A4872650()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ViewControllerWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for EditorWrapperViewController()
{
  result = qword_1EB1DBAC0;
  if (!qword_1EB1DBAC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A4872708()
{
  if (!qword_1EB143E68)
  {
    sub_1A4872760();
    v0 = type metadata accessor for ViewControllerWrapper();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143E68);
    }
  }
}

unint64_t sub_1A4872760()
{
  result = qword_1EB143E70;
  if (!qword_1EB143E70)
  {
    sub_1A3C52C70(255, &qword_1EB126B10);
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB143E70);
  }

  return result;
}

unint64_t sub_1A4872888()
{
  result = qword_1EB143EE0;
  if (!qword_1EB143EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143EE0);
  }

  return result;
}

unint64_t sub_1A48728E0()
{
  result = qword_1EB129318;
  if (!qword_1EB129318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129318);
  }

  return result;
}

unint64_t sub_1A48729D8()
{
  result = qword_1EB143F48;
  if (!qword_1EB143F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143F48);
  }

  return result;
}

double sub_1A4872AD8()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  swift_beginAccess();
  return v0[2];
}

uint64_t sub_1A4872B58(double a1)
{
  result = swift_beginAccess();
  if (v1[2] == a1)
  {
    v1[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 552))(v5);
  }

  return result;
}

void (*sub_1A4872C5C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030();
  return sub_1A4872DAC;
}

uint64_t type metadata accessor for LemonadeFeedSpec()
{
  result = qword_1EB18B480;
  if (!qword_1EB18B480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A4872EA8(uint64_t a1, uint64_t a2)
{
  sub_1A3C39450();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C794D4(a1, v6);
  return (*(**a2 + 232))(v6);
}

uint64_t sub_1A4872F54@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 544))();

  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__cellSpecs;
  swift_beginAccess();
  return sub_1A3C794D4(v1 + v3, a1);
}

uint64_t sub_1A4872FF0(uint64_t a1)
{
  sub_1A3C39450();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__cellSpecs;
  swift_beginAccess();
  sub_1A3C794D4(v1 + v6, v5);
  v7 = sub_1A4875820(v5, a1);
  sub_1A4876310(v5, sub_1A3C39450);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    *&v11[-16] = v1;
    *&v11[-8] = a1;
    (*(*v1 + 552))(v9);
  }

  else
  {
    sub_1A3C794D4(a1, v5);
    swift_beginAccess();
    sub_1A4875B0C(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1A4876310(a1, sub_1A3C39450);
}

uint64_t sub_1A48731B8(uint64_t a1, uint64_t a2)
{
  sub_1A3C39450();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C794D4(a2, v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__cellSpecs;
  swift_beginAccess();
  sub_1A4875B0C(v6, a1 + v7);
  return swift_endAccess();
}

void (*sub_1A487326C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4872E04();
  return sub_1A48733BC;
}

void *sub_1A4873428@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A487348C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 280))(&v4);
}

uint64_t sub_1A4873500(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__zoomLevel;
  swift_beginAccess();
  sub_1A4188660();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 552))(v6);
  }

  return result;
}

void (*sub_1A4873638(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A48733C8();
  return sub_1A4873788;
}

void sub_1A48737F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = (*(**a1 + 320))();
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
}

double sub_1A48738A0()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSafeAreaInsets;
  swift_beginAccess();
  return *v1;
}

float64_t sub_1A4873930(float64_t a1, float64_t a2, float64_t a3, float64_t a4)
{
  v5 = (v4 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSafeAreaInsets);
  swift_beginAccess();
  v6.f64[0] = a1;
  v6.f64[1] = a2;
  v7.f64[0] = a3;
  v7.f64[1] = a4;
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v5, v6), vceqq_f64(v5[1], v7)))))
  {
    v5->f64[0] = a1;
    v5->f64[1] = a2;
    result = a4;
    v5[1].f64[0] = a3;
    v5[1].f64[1] = a4;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v4 + 552))();
  }

  return result;
}

void (*sub_1A4873A78(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4873794();
  return sub_1A4873BC8;
}

double sub_1A4873CD8()
{
  swift_getKeyPath();
  (*(*v0 + 544))();

  v1 = v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1A4873D64(double a1, double a2)
{
  v5 = (v2 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSize);
  result = swift_beginAccess();
  if (*v5 == a1 && v5[1] == a2)
  {
    *v5 = a1;
    v5[1] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v9 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 552))(v9);
  }

  return result;
}

void (*sub_1A4873E7C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4873BD4();
  return sub_1A4873FCC;
}

void *sub_1A4874038@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 416))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A487409C(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 424))(&v4);
}

uint64_t sub_1A48740FC@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 544))();

  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___horizontalSizeClass;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A4874194(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___horizontalSizeClass;
  swift_beginAccess();
  sub_1A3F17D14();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 552))(v6);
  }

  return result;
}

void (*sub_1A48742CC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4873FD8();
  return sub_1A487441C;
}

void *sub_1A4874488@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 464))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A48744EC(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 472))(&v4);
}

uint64_t sub_1A4874560@<X0>(uint64_t *a1@<X1>, _BYTE *a2@<X8>)
{
  swift_getKeyPath();
  (*(*v2 + 544))();

  v5 = *a1;
  result = swift_beginAccess();
  *a2 = *(v2 + v5);
  return result;
}

uint64_t sub_1A48745F0(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___verticalSizeClass;
  swift_beginAccess();
  sub_1A4188350();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 552))(v6);
  }

  return result;
}

void (*sub_1A4874728(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4874428();
  return sub_1A4874878;
}

void *sub_1A48748E4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 512))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A4874948(char *a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*(*v2 + 520))(&v4);
}

uint64_t sub_1A48749A8@<X0>(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  (*(*v1 + 544))();

  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___orientation;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A4874A40(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___orientation;
  swift_beginAccess();
  sub_1A41883A8();
  result = sub_1A524C594();
  if (result)
  {
    *(v1 + v3) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v6 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 552))(v6);
  }

  return result;
}

void (*sub_1A4874B78(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 544))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec);
  sub_1A52415F4();

  v4[7] = sub_1A4874884();
  return sub_1A4874CC8;
}

uint64_t LemonadeFeedSpec.__allocating_init()()
{
  v0 = swift_allocObject();
  LemonadeFeedSpec.init()();
  return v0;
}

uint64_t LemonadeFeedSpec.init()()
{
  *(v0 + 16) = 0;
  v1 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__cellSpecs;
  v2 = sub_1A5244084();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__zoomLevel) = *sub_1A44DAFD8();
  v3 = (v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSafeAreaInsets);
  *v3 = 0u;
  v3[1] = 0u;
  v4 = (v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSize);
  *v4 = 0;
  v4[1] = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___horizontalSizeClass) = 2;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___verticalSizeClass) = 0;
  *(v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___orientation) = 1;
  sub_1A5241604();
  return v0;
}

uint64_t LemonadeFeedSpec.deinit()
{
  sub_1A4876310(v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__cellSpecs, sub_1A3C39450);
  v1 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t LemonadeFeedSpec.__deallocating_deinit()
{
  sub_1A4876310(v0 + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec__cellSpecs, sub_1A3C39450);
  v1 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void (*sub_1A48750D0(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 384))();
  return sub_1A3E62A10;
}

void (*sub_1A48751C0(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 336))();
  return sub_1A3E658B0;
}

void (*sub_1A48752D8(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 432))();
  return sub_1A3E658B0;
}

void (*sub_1A48753F0(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 480))();
  return sub_1A3E658B0;
}

void (*sub_1A4875508(uint64_t *a1))(void *)
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
  *(v3 + 32) = (*(*v1 + 528))();
  return sub_1A3E658B0;
}

uint64_t sub_1A4875820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A5244084();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C39450();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48762AC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 56);
  sub_1A3C794D4(a1, v13);
  sub_1A3C794D4(a2, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1A3C794D4(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1A4876370(&qword_1EB143F58, MEMORY[0x1E69C2948]);
      v18 = sub_1A524C594();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1A4876310(v13, sub_1A3C39450);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A4876310(v13, sub_1A48762AC);
    v17 = 1;
    return v17 & 1;
  }

  sub_1A4876310(v13, sub_1A3C39450);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1A4875B0C(uint64_t a1, uint64_t a2)
{
  sub_1A3C39450();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

__n128 sub_1A4875BBC()
{
  v1 = (*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSafeAreaInsets);
  v3 = *(v0 + 40);
  v4 = *(v0 + 24);
  swift_beginAccess();
  result = v4;
  *v1 = v4;
  v1[1] = v3;
  return result;
}

uint64_t sub_1A4875C20()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = (v0[2] + OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___containerSize);
  result = swift_beginAccess();
  *v3 = v1;
  v3[1] = v2;
  return result;
}

uint64_t sub_1A4875CC0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = OBJC_IVAR____TtC12PhotosUICore16LemonadeFeedSpec___orientation;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A4875D1C(uint64_t a1)
{
  result = sub_1A4876370(&qword_1EB125B18, type metadata accessor for LemonadeFeedSpec);
  *(a1 + 8) = result;
  return result;
}

void sub_1A4875D7C()
{
  sub_1A3C39450();
  if (v0 <= 0x3F)
  {
    sub_1A5241614();
    if (v1 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1A48762AC()
{
  if (!qword_1EB143F50)
  {
    sub_1A3C39450();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143F50);
    }
  }
}

uint64_t sub_1A4876310(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A4876370(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A48763B8()
{
  sub_1A477F754();
  result = [swift_getObjCClassFromMetadata() sharedInstance];
  qword_1EB1EB0B8 = result;
  return result;
}

uint64_t *sub_1A48763F4()
{
  if (qword_1EB175710 != -1)
  {
    swift_once();
  }

  return &qword_1EB1EB0B8;
}

BOOL static PXPhotosDetailsNavigationSettings.canEnableZoomBounce.getter()
{
  v0 = [objc_opt_self() currentDevice];
  v1 = [v0 userInterfaceIdiom];

  return v1 != 1;
}

id sub_1A48768D4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useZoomTransition];
  *a2 = result;
  return result;
}

id sub_1A487691C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 customZoomTransitionDimming];
  *a2 = result;
  return result;
}

id sub_1A4876964@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 zoomTransitionDimmingWhite];
  *a2 = v4;
  return result;
}

id sub_1A48769AC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 zoomTransitionDimmingOpacity];
  *a2 = v4;
  return result;
}

id sub_1A48769F4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 customZoomTransitionDimmingBlurEffect];
  *a2 = result;
  return result;
}

id sub_1A4876A3C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 zoomTransitionDimmingBlurEffectStyle];
  *a2 = result;
  return result;
}

id sub_1A4876A84@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useSystemSwipeToDismiss];
  *a2 = result;
  return result;
}

id sub_1A4876ACC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 ensureOpaqueDestination];
  *a2 = result;
  return result;
}

id sub_1A4876B14@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 useDebugColors];
  *a2 = result;
  return result;
}

id sub_1A4876B5C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 showDebugOverlays];
  *a2 = result;
  return result;
}

id sub_1A4876BA4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowZoomBounce];
  *a2 = result;
  return result;
}

id sub_1A4876BEC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 zoomBounceScale];
  *a2 = v4;
  return result;
}

id sub_1A4876C34@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 zoomBounceDelay];
  *a2 = v4;
  return result;
}

id sub_1A4876C7C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 zoomBounceRefractoryPeriod];
  *a2 = v4;
  return result;
}

id sub_1A4876CC4@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowScreenEdgeSwipeToDismiss];
  *a2 = result;
  return result;
}

id sub_1A4876D0C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 screenEdgeSwipeForegroundInset];
  *a2 = v4;
  return result;
}

id sub_1A4876D54@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 screenEdgeSwipeSlideDownDuration];
  *a2 = v4;
  return result;
}

id sub_1A4876D9C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 screenEdgeSwipeInteractionRelativeDistance];
  *a2 = v4;
  return result;
}

id sub_1A4876DE4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 screenEdgeSwipeInteractiveFraction];
  *a2 = v4;
  return result;
}

id sub_1A4876E2C@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 workAround123679412];
  *a2 = result;
  return result;
}

id sub_1A4876E74@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allowZoomFromSheets];
  *a2 = result;
  return result;
}

id sub_1A4876EBC@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 workAround125263280];
  *a2 = result;
  return result;
}

char *sub_1A4876F50(char *a1, int64_t a2, char a3)
{
  result = sub_1A4876F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A4876F70(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A48785F0();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void sub_1A48781A8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A48785A0(255, a3, a4, MEMORY[0x1E69E62F8]);
    v5 = sub_1A524EA54();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A48782C8(void *a1)
{
  v9 = MEMORY[0x1E69E7CC0];
  v2 = a1[2];
  sub_1A3F41E2C(v2, 0);
  sub_1A4876F50(0, v2, 0);
  if (v2)
  {
    v4 = a1[4];
    v3 = a1[5];
    v5 = *(v9 + 16);
    if (v5)
    {
      v6 = (v9 + 40);
      do
      {
        v7 = *(v6 - 1) == v4 && *v6 == v3;
        if (v7 || (sub_1A524EAB4() & 1) != 0)
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        v6 += 2;
        --v5;
      }

      while (v5);
    }

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return 0;
}

void sub_1A4878488()
{
  if (!qword_1EB143F60)
  {
    type metadata accessor for Style(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB143F60);
    }
  }
}

unint64_t sub_1A4878518()
{
  result = qword_1EB143F68;
  if (!qword_1EB143F68)
  {
    type metadata accessor for Style(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB143F68);
  }

  return result;
}

void sub_1A48785A0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1A48785F0()
{
  if (!qword_1EB143F70)
  {
    type metadata accessor for Style(255);
    v0 = sub_1A524EA54();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143F70);
    }
  }
}

uint64_t sub_1A487864C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *a4 = swift_getKeyPath();
  v8 = MEMORY[0x1E697DCB8];
  sub_1A48788AC(0, &unk_1EB128A60, MEMORY[0x1E697BF90], MEMORY[0x1E697DCB8]);
  swift_storeEnumTagMultiPayload();
  v9 = type metadata accessor for LemonadeNavigationDestinationView();
  v10 = a4 + v9[5];
  *v10 = swift_getKeyPath();
  v10[8] = 0;
  v11 = v9[6];
  *(a4 + v11) = swift_getKeyPath();
  sub_1A48788AC(0, &qword_1EB128A50, MEMORY[0x1E697E730], v8);
  swift_storeEnumTagMultiPayload();
  v12 = v9[7];
  *(a4 + v12) = swift_getKeyPath();
  sub_1A48788AC(0, &qword_1EB128AA0, MEMORY[0x1E69C2218], v8);
  swift_storeEnumTagMultiPayload();
  v13 = v9[11];
  sub_1A488AC98(a1, a4 + v9[9], type metadata accessor for LemonadeNavigationDestination);
  *(a4 + v9[10]) = a2;
  *(a4 + v13) = a3;
  type metadata accessor for PhotosNavigationItemPaletteContentContainer();
  sub_1A5247C74();
  return sub_1A488B2CC(a1, type metadata accessor for LemonadeNavigationDestination);
}

uint64_t sub_1A487882C@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PhotosNavigationItemPaletteContentContainer();
  result = sub_1A425DAA4();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for LemonadeNavigationDestinationView()
{
  result = qword_1EB17B6E0;
  if (!qword_1EB17B6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1A48788AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A4878910(uint64_t a1@<X8>)
{
  v2 = v1;
  v21 = a1;
  v3 = type metadata accessor for LemonadeNavigationDestinationView();
  v4 = v3 - 8;
  v20 = *(v3 - 8);
  v19[8] = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v19[7] = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A52425F4();
  v19[4] = *(v6 - 8);
  v19[5] = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1A4878E04();
  v19[3] = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487AB5C(0);
  v19[6] = v10;
  MEMORY[0x1EEE9AC00](v10);
  sub_1A487D2A4(v9);
  v19[2] = *(v4 + 44);
  v11 = sub_1A418E6A4();
  v12 = sub_1A524A064();
  sub_1A4878FA0();
  v14 = &v9[*(v13 + 36)];
  *v14 = v11;
  v14[8] = v12;
  KeyPath = swift_getKeyPath();
  v16 = *(v2 + *(v4 + 48));
  sub_1A4878F58(0);
  v18 = &v9[*(v17 + 36)];
  *v18 = KeyPath;
  v18[1] = v16;
  v19[1] = swift_getKeyPath();
  sub_1A48797F8(0, &qword_1EB128E00, &qword_1EB126B10, 0x1E69DD258, off_1E7721050);

  sub_1A4654ADC();
  sub_1A4878ED4(0, &qword_1EB143F88, sub_1A4878F58, sub_1A3D63A24, MEMORY[0x1E697E830]);
  sub_1A3D63A24(0);
  sub_1A3EED838();
  sub_1A52459A4();
}

void sub_1A4878E04()
{
  if (!qword_1EB143F80)
  {
    sub_1A4878ED4(255, &qword_1EB143F88, sub_1A4878F58, sub_1A3D63A24, MEMORY[0x1E697E830]);
    sub_1A418436C(255, &qword_1EB127998, &type metadata for PhotosCollectionPreviewPlayer.Options, MEMORY[0x1E6980A08]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143F80);
    }
  }
}

void sub_1A4878ED4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A4878FA0()
{
  if (!qword_1EB143F98)
  {
    sub_1A4878ED4(255, &qword_1EB143FA0, sub_1A4879078, sub_1A487A800, MEMORY[0x1E697F960]);
    sub_1A488BC3C(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB143F98);
    }
  }
}

void sub_1A4879228()
{
  if (!qword_1EB12A948)
  {
    type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(255);
    sub_1A48793D0(&qword_1EB12A250, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
    v0 = type metadata accessor for LemonadeFeed();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A948);
    }
  }
}

void sub_1A4879320()
{
  if (!qword_1EB12A8D8)
  {
    type metadata accessor for LemonadeICloudLinksFeedProvider();
    sub_1A48793D0(&qword_1EB1296F0, type metadata accessor for LemonadeICloudLinksFeedProvider);
    v0 = type metadata accessor for LemonadeFeed();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A8D8);
    }
  }
}

uint64_t sub_1A48793D0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A4879460()
{
  if (!qword_1EB12A8E8)
  {
    type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider(255);
    sub_1A48793D0(&qword_1EB1297C8, type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider);
    v0 = type metadata accessor for LemonadeFeed();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A8E8);
    }
  }
}

void sub_1A48795A0()
{
  if (!qword_1EB129D18)
  {
    sub_1A4879678();
    sub_1A48793D0(&unk_1EB129608, sub_1A4879678);
    sub_1A48793D0(&qword_1EB12A218, type metadata accessor for LemonadeEventsFeature.FeedProvider);
    v0 = type metadata accessor for LemonadeSectionedFeedView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB129D18);
    }
  }
}

void sub_1A4879678()
{
  if (!qword_1EB129600)
  {
    type metadata accessor for LemonadeEventsFeature.FeedProvider(255);
    sub_1A48793D0(&qword_1EB12A218, type metadata accessor for LemonadeEventsFeature.FeedProvider);
    v0 = type metadata accessor for LemonadeBasicSectionedFeedProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB129600);
    }
  }
}

void sub_1A487970C()
{
  if (!qword_1EB129D28)
  {
    sub_1A48797A4();
    sub_1A48793D0(&qword_1EB12A2E8, sub_1A4338D2C);
    v0 = type metadata accessor for LemonadeSectionedFeedView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB129D28);
    }
  }
}

unint64_t sub_1A48797A4()
{
  result = qword_1EB12A2C0;
  if (!qword_1EB12A2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A2C0);
  }

  return result;
}

void sub_1A48797F8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A48798A8()
{
  if (!qword_1EB1256E8)
  {
    sub_1A4879980();
    sub_1A48793D0(&qword_1EB125318, sub_1A4879980);
    sub_1A48793D0(&qword_1EB1250A8, sub_1A4879A14);
    v0 = type metadata accessor for LemonadeSectionedFeedView();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1256E8);
    }
  }
}

void sub_1A4879980()
{
  if (!qword_1EB125310)
  {
    sub_1A4879A14();
    sub_1A48793D0(&qword_1EB1250A8, sub_1A4879A14);
    v0 = type metadata accessor for LemonadeBasicSectionedFeedProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB125310);
    }
  }
}

void sub_1A4879A14()
{
  if (!qword_1EB1250A0)
  {
    type metadata accessor for LemonadeMemoriesFeature.FeedProvider(255);
    sub_1A48793D0(&qword_1EB12A0A8, type metadata accessor for LemonadeMemoriesFeature.FeedProvider);
    sub_1A4879ABC();
    v0 = type metadata accessor for LemonadeConcatenatedUIFeedSectionProvider();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1250A0);
    }
  }
}

unint64_t sub_1A4879ABC()
{
  result = qword_1EB12A7D8;
  if (!qword_1EB12A7D8)
  {
    sub_1A48797F8(255, &qword_1EB12A7B0, &qword_1EB1265E0, 0x1E69788F0, type metadata accessor for PhotoKitItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A7D8);
  }

  return result;
}

void sub_1A4879B88()
{
  if (!qword_1EB143FD8)
  {
    type metadata accessor for LemonadePeopleFeedView();
    sub_1A48793D0(&qword_1EB143FE0, type metadata accessor for LemonadePeopleFeedView);
    sub_1A3D5F9DC();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB143FD8);
    }
  }
}

void sub_1A4879D98()
{
  if (!qword_1EB12A908)
  {
    type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(255);
    sub_1A48793D0(&qword_1EB129D88, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
    v0 = type metadata accessor for LemonadeFeed();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A908);
    }
  }
}

void sub_1A4879F40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4879FD4();
    v7 = v6;
    sub_1A487A084(255, &qword_1EB12A928, sub_1A3D6FFF4);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A4879FD4()
{
  if (!qword_1EB12A938)
  {
    type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider(255);
    sub_1A48793D0(&qword_1EB129ED0, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider);
    v0 = type metadata accessor for LemonadeFeed();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A938);
    }
  }
}

void sub_1A487A084(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for LemonadeFeed();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A487A148()
{
  if (!qword_1EB12A918)
  {
    type metadata accessor for LemonadeWallpaperFeature.FeedProvider();
    sub_1A48793D0(&qword_1EB129EA0, type metadata accessor for LemonadeWallpaperFeature.FeedProvider);
    v0 = type metadata accessor for LemonadeFeed();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A918);
    }
  }
}

void sub_1A487A218(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A487A2A4(255);
    v7 = v6;
    sub_1A488B1D0(255, &qword_1EB122A08, MEMORY[0x1E697F960]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A487A2EC()
{
  if (!qword_1EB144038)
  {
    type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider(255);
    sub_1A48793D0(&qword_1EB13C9B8, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider);
    v0 = type metadata accessor for LemonadeFeed();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB144038);
    }
  }
}

void sub_1A487A44C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A487A4E8(255);
    v7 = v6;
    sub_1A488BC3C(255, &qword_1EB122590, MEMORY[0x1E6981E70], &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A487A530()
{
  if (!qword_1EB122550)
  {
    v0 = MEMORY[0x1E697F960];
    sub_1A488BC3C(255, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
    sub_1A488BC3C(255, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView, v0);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122550);
    }
  }
}

void sub_1A487A630()
{
  if (!qword_1EB122560)
  {
    v0 = MEMORY[0x1E697F960];
    sub_1A488BC3C(255, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E697F960]);
    sub_1A488BC3C(255, &qword_1EB122A48, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E69E73E0], v0);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122560);
    }
  }
}

void sub_1A487A914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_1A487A9BC()
{
  if (!qword_1EB12A8C8)
  {
    type metadata accessor for LemonadeSharedWithYouFeedProvider();
    sub_1A48793D0(&qword_1EB129638, type metadata accessor for LemonadeSharedWithYouFeedProvider);
    v0 = type metadata accessor for LemonadeFeed();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12A8C8);
    }
  }
}

void sub_1A487AA6C()
{
  if (!qword_1EB122478)
  {
    v0 = MEMORY[0x1E697F960];
    sub_1A488BC3C(255, &qword_1EB122810, &type metadata for LemonadeWallpaperEditorViewControllerRepresentable, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E697F960]);
    sub_1A488BC3C(255, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView, v0);
    v1 = sub_1A5249754();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122478);
    }
  }
}

void sub_1A487ABEC()
{
  if (!qword_1EB144060)
  {
    sub_1A4878E04();
    sub_1A487AC70();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB144060);
    }
  }
}

unint64_t sub_1A487AC70()
{
  result = qword_1EB144068;
  if (!qword_1EB144068)
  {
    sub_1A4878E04();
    sub_1A487ACF0();
    sub_1A487D108();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144068);
  }

  return result;
}

unint64_t sub_1A487ACF0()
{
  result = qword_1EB144070;
  if (!qword_1EB144070)
  {
    sub_1A4878ED4(255, &qword_1EB143F88, sub_1A4878F58, sub_1A3D63A24, MEMORY[0x1E697E830]);
    sub_1A487ADE4();
    sub_1A48793D0(&qword_1EB1278C0, sub_1A3D63A24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144070);
  }

  return result;
}

unint64_t sub_1A487ADE4()
{
  result = qword_1EB144078;
  if (!qword_1EB144078)
  {
    sub_1A4878F58(255);
    sub_1A487AE94();
    sub_1A48793D0(&qword_1EB127950, sub_1A3D639BC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144078);
  }

  return result;
}

unint64_t sub_1A487AE94()
{
  result = qword_1EB144080;
  if (!qword_1EB144080)
  {
    sub_1A4878FA0();
    sub_1A487AF14();
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144080);
  }

  return result;
}

unint64_t sub_1A487AF14()
{
  result = qword_1EB144088;
  if (!qword_1EB144088)
  {
    sub_1A4878ED4(255, &qword_1EB143FA0, sub_1A4879078, sub_1A487A800, MEMORY[0x1E697F960]);
    sub_1A487AFD8();
    sub_1A487CB14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144088);
  }

  return result;
}

unint64_t sub_1A487AFD8()
{
  result = qword_1EB144090;
  if (!qword_1EB144090)
  {
    sub_1A4879078(255);
    sub_1A487B058();
    sub_1A487C124();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144090);
  }

  return result;
}

unint64_t sub_1A487B058()
{
  result = qword_1EB144098;
  if (!qword_1EB144098)
  {
    sub_1A48790C0(255);
    sub_1A487B0D8();
    sub_1A487B830();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144098);
  }

  return result;
}

unint64_t sub_1A487B0D8()
{
  result = qword_1EB1440A0;
  if (!qword_1EB1440A0)
  {
    sub_1A4879108(255);
    sub_1A487B158();
    sub_1A487B4F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440A0);
  }

  return result;
}

unint64_t sub_1A487B158()
{
  result = qword_1EB127CC0;
  if (!qword_1EB127CC0)
  {
    sub_1A4879150(255);
    sub_1A487B1D8();
    sub_1A487B368();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127CC0);
  }

  return result;
}

unint64_t sub_1A487B1D8()
{
  result = qword_1EB127CF8;
  if (!qword_1EB127CF8)
  {
    sub_1A4879198(255);
    sub_1A487B288();
    sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127CF8);
  }

  return result;
}

unint64_t sub_1A487B288()
{
  result = qword_1EB127E90;
  if (!qword_1EB127E90)
  {
    sub_1A48791E0(255);
    sub_1A48793D0(&qword_1EB12A950, sub_1A4879228);
    sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E90);
  }

  return result;
}

unint64_t sub_1A487B368()
{
  result = qword_1EB127E50;
  if (!qword_1EB127E50)
  {
    sub_1A48792D8(255);
    sub_1A48793D0(&qword_1EB12A8E0, sub_1A4879320);
    sub_1A487B418();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E50);
  }

  return result;
}

unint64_t sub_1A487B418()
{
  result = qword_1EB127E60;
  if (!qword_1EB127E60)
  {
    sub_1A4879418(255);
    sub_1A48793D0(&qword_1EB12A8F0, sub_1A4879460);
    sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E60);
  }

  return result;
}

unint64_t sub_1A487B4F8()
{
  result = qword_1EB1440A8;
  if (!qword_1EB1440A8)
  {
    sub_1A4879510(255);
    sub_1A487B578();
    sub_1A487B654();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440A8);
  }

  return result;
}

unint64_t sub_1A487B578()
{
  result = qword_1EB127E20;
  if (!qword_1EB127E20)
  {
    sub_1A4879558(255);
    sub_1A48793D0(&qword_1EB129D20, sub_1A48795A0);
    sub_1A48793D0(&qword_1EB129D30, sub_1A487970C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E20);
  }

  return result;
}

unint64_t sub_1A487B654()
{
  result = qword_1EB1440B0;
  if (!qword_1EB1440B0)
  {
    sub_1A4879860(255);
    sub_1A48793D0(&qword_1EB1256F0, sub_1A48798A8);
    sub_1A487B704();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440B0);
  }

  return result;
}

unint64_t sub_1A487B704()
{
  result = qword_1EB1440B8;
  if (!qword_1EB1440B8)
  {
    sub_1A4879B40(255);
    type metadata accessor for LemonadePeopleFeedView();
    sub_1A48793D0(&qword_1EB143FE0, type metadata accessor for LemonadePeopleFeedView);
    sub_1A3D5F9DC();
    swift_getOpaqueTypeConformance2();
    sub_1A48793D0(&unk_1EB12A120, type metadata accessor for LemonadePeopleHomeView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440B8);
  }

  return result;
}

unint64_t sub_1A487B830()
{
  result = qword_1EB1440C0;
  if (!qword_1EB1440C0)
  {
    sub_1A4879C58(255);
    sub_1A487B8B0();
    sub_1A487BEF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440C0);
  }

  return result;
}

unint64_t sub_1A487B8B0()
{
  result = qword_1EB1440C8;
  if (!qword_1EB1440C8)
  {
    sub_1A4879CA0(255);
    sub_1A487B930();
    sub_1A487BBEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440C8);
  }

  return result;
}

unint64_t sub_1A487B930()
{
  result = qword_1EB1440D0;
  if (!qword_1EB1440D0)
  {
    sub_1A4879CE8(255);
    sub_1A48793D0(&qword_1EB1255F8, type metadata accessor for LemonadeSocialGroupFeedView);
    sub_1A487B9E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440D0);
  }

  return result;
}

unint64_t sub_1A487B9E0()
{
  result = qword_1EB1440D8;
  if (!qword_1EB1440D8)
  {
    sub_1A4879D30(255);
    sub_1A487BA60();
    sub_1A487BB3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440D8);
  }

  return result;
}

unint64_t sub_1A487BA60()
{
  result = qword_1EB127E70;
  if (!qword_1EB127E70)
  {
    sub_1A4879D78(255);
    sub_1A48793D0(&qword_1EB12A910, sub_1A4879D98);
    sub_1A487BDF8(&qword_1EB12A900, &qword_1EB12A8F8, sub_1A41D4294);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E70);
  }

  return result;
}

unint64_t sub_1A487BB3C()
{
  result = qword_1EB1440E0;
  if (!qword_1EB1440E0)
  {
    sub_1A4879E48(255);
    sub_1A48793D0(&qword_1EB12A910, sub_1A4879D98);
    sub_1A487BA60();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440E0);
  }

  return result;
}

unint64_t sub_1A487BBEC()
{
  result = qword_1EB1440E8;
  if (!qword_1EB1440E8)
  {
    sub_1A4879E90(255);
    sub_1A487BC9C();
    sub_1A48793D0(&qword_1EB12A920, sub_1A487A148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440E8);
  }

  return result;
}

unint64_t sub_1A487BC9C()
{
  result = qword_1EB1440F0;
  if (!qword_1EB1440F0)
  {
    sub_1A4879ED8(255);
    sub_1A487BD1C();
    sub_1A487BE48();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440F0);
  }

  return result;
}

unint64_t sub_1A487BD1C()
{
  result = qword_1EB127E80;
  if (!qword_1EB127E80)
  {
    sub_1A4879F20(255);
    sub_1A48793D0(&qword_1EB12A940, sub_1A4879FD4);
    sub_1A487BDF8(&qword_1EB12A930, &qword_1EB12A928, sub_1A3D6FFF4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127E80);
  }

  return result;
}

uint64_t sub_1A487BDF8(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A487A084(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A487BE48()
{
  result = qword_1EB1440F8;
  if (!qword_1EB1440F8)
  {
    sub_1A487A100(255);
    sub_1A48793D0(&qword_1EB12A940, sub_1A4879FD4);
    sub_1A487BD1C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1440F8);
  }

  return result;
}

unint64_t sub_1A487BEF8()
{
  result = qword_1EB144100;
  if (!qword_1EB144100)
  {
    sub_1A487A1F8(255);
    sub_1A487BF78();
    sub_1A487C058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144100);
  }

  return result;
}

unint64_t sub_1A487BF78()
{
  result = qword_1EB144108;
  if (!qword_1EB144108)
  {
    sub_1A487A2A4(255);
    sub_1A48793D0(&qword_1EB1294F8, sub_1A4669BE4);
    sub_1A48793D0(&qword_1EB144110, sub_1A487A2EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144108);
  }

  return result;
}

unint64_t sub_1A487C058()
{
  result = qword_1EB122A10;
  if (!qword_1EB122A10)
  {
    sub_1A488B1D0(255, &qword_1EB122A08, MEMORY[0x1E697F960]);
    sub_1A47ACC7C();
    sub_1A48793D0(&qword_1EB129B90, type metadata accessor for GenerativeStoryCreationView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A10);
  }

  return result;
}

unint64_t sub_1A487C124()
{
  result = qword_1EB122380;
  if (!qword_1EB122380)
  {
    sub_1A487A39C(255);
    sub_1A487C1A4();
    sub_1A487C5FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122380);
  }

  return result;
}

unint64_t sub_1A487C1A4()
{
  result = qword_1EB1223D0;
  if (!qword_1EB1223D0)
  {
    sub_1A487A3E4(255);
    sub_1A487C224();
    sub_1A487C430();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1223D0);
  }

  return result;
}

unint64_t sub_1A487C224()
{
  result = qword_1EB1224C8;
  if (!qword_1EB1224C8)
  {
    sub_1A487A42C(255);
    sub_1A487C2A4();
    sub_1A487C384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1224C8);
  }

  return result;
}

unint64_t sub_1A487C2A4()
{
  result = qword_1EB122918;
  if (!qword_1EB122918)
  {
    sub_1A487A4E8(255);
    sub_1A48793D0(&unk_1EB129DE8, type metadata accessor for LemonadeBookmarksEditView);
    sub_1A48793D0(&unk_1EB1295D8, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122918);
  }

  return result;
}

unint64_t sub_1A487C384()
{
  result = qword_1EB122598;
  if (!qword_1EB122598)
  {
    sub_1A488BC3C(255, &qword_1EB122590, MEMORY[0x1E6981E70], &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
    sub_1A44D55D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122598);
  }

  return result;
}

unint64_t sub_1A487C430()
{
  result = qword_1EB122558;
  if (!qword_1EB122558)
  {
    sub_1A487A530();
    sub_1A487C4B0();
    sub_1A487C550();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122558);
  }

  return result;
}

unint64_t sub_1A487C4B0()
{
  result = qword_1EB122A20;
  if (!qword_1EB122A20)
  {
    sub_1A488BC3C(255, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
    sub_1A44D55D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A20);
  }

  return result;
}

unint64_t sub_1A487C550()
{
  result = qword_1EB122A30;
  if (!qword_1EB122A30)
  {
    sub_1A488BC3C(255, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView, MEMORY[0x1E697F960]);
    sub_1A44D55D4();
    sub_1A3D8FAD0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A30);
  }

  return result;
}

unint64_t sub_1A487C5FC()
{
  result = qword_1EB122410;
  if (!qword_1EB122410)
  {
    sub_1A487A5E8(255);
    sub_1A487C67C();
    sub_1A487C854();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122410);
  }

  return result;
}

unint64_t sub_1A487C67C()
{
  result = qword_1EB122568;
  if (!qword_1EB122568)
  {
    sub_1A487A630();
    sub_1A487C6FC();
    sub_1A487C7A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122568);
  }

  return result;
}

unint64_t sub_1A487C6FC()
{
  result = qword_1EB122A40;
  if (!qword_1EB122A40)
  {
    sub_1A488BC3C(255, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E697F960]);
    sub_1A427224C();
    sub_1A42EC7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A40);
  }

  return result;
}

unint64_t sub_1A487C7A8()
{
  result = qword_1EB122A50;
  if (!qword_1EB122A50)
  {
    sub_1A488BC3C(255, &qword_1EB122A48, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E69E73E0], MEMORY[0x1E697F960]);
    sub_1A42EC7EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A50);
  }

  return result;
}

unint64_t sub_1A487C854()
{
  result = qword_1EB1224F8;
  if (!qword_1EB1224F8)
  {
    sub_1A487A6EC(255);
    sub_1A487C8D4();
    sub_1A487C984();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1224F8);
  }

  return result;
}

unint64_t sub_1A487C8D4()
{
  result = qword_1EB122960;
  if (!qword_1EB122960)
  {
    sub_1A487A734(255);
    sub_1A48793D0(&qword_1EB12A3B0, type metadata accessor for LemonadeAccountView);
    sub_1A3EED6DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122960);
  }

  return result;
}

unint64_t sub_1A487C984()
{
  result = qword_1EB122928;
  if (!qword_1EB122928)
  {
    sub_1A487A770(255);
    sub_1A48793D0(&qword_1EB129F00, type metadata accessor for LemonadeMemoryPlayerView);
    sub_1A487CA34();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122928);
  }

  return result;
}

unint64_t sub_1A487CA34()
{
  result = qword_1EB127D88;
  if (!qword_1EB127D88)
  {
    sub_1A487A7B8(255);
    sub_1A48793D0(&qword_1EB129580, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
    sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB127D88);
  }

  return result;
}

unint64_t sub_1A487CB14()
{
  result = qword_1EB144118;
  if (!qword_1EB144118)
  {
    sub_1A487A800(255);
    sub_1A487CBD8();
    sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144118);
  }

  return result;
}

unint64_t sub_1A487CBD8()
{
  result = qword_1EB1223C0;
  if (!qword_1EB1223C0)
  {
    sub_1A487A848(255);
    sub_1A487CC58();
    sub_1A487CE8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1223C0);
  }

  return result;
}

unint64_t sub_1A487CC58()
{
  result = qword_1EB122490;
  if (!qword_1EB122490)
  {
    sub_1A487A890(255);
    sub_1A487CCD8();
    sub_1A487CD88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122490);
  }

  return result;
}

unint64_t sub_1A487CCD8()
{
  result = qword_1EB122828;
  if (!qword_1EB122828)
  {
    sub_1A487A8D8(255);
    sub_1A48793D0(&qword_1EB129320, type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable);
    sub_1A484F120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122828);
  }

  return result;
}

unint64_t sub_1A487CD88()
{
  result = qword_1EB122A00;
  if (!qword_1EB122A00)
  {
    sub_1A487A980(255);
    sub_1A48793D0(&qword_1EB12A8D0, sub_1A487A9BC);
    sub_1A487CE38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122A00);
  }

  return result;
}

unint64_t sub_1A487CE38()
{
  result = qword_1EB12A3E8;
  if (!qword_1EB12A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12A3E8);
  }

  return result;
}

unint64_t sub_1A487CE8C()
{
  result = qword_1EB122480;
  if (!qword_1EB122480)
  {
    sub_1A487AA6C();
    sub_1A487CF0C();
    sub_1A487CFB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122480);
  }

  return result;
}

unint64_t sub_1A487CF0C()
{
  result = qword_1EB122818;
  if (!qword_1EB122818)
  {
    sub_1A488BC3C(255, &qword_1EB122810, &type metadata for LemonadeWallpaperEditorViewControllerRepresentable, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E697F960]);
    sub_1A48728E0();
    sub_1A47EFEE4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB122818);
  }

  return result;
}

unint64_t sub_1A487CFB8()
{
  result = qword_1EB1228B8;
  if (!qword_1EB1228B8)
  {
    sub_1A488BC3C(255, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView, MEMORY[0x1E697F960]);
    sub_1A47EFEE4();
    sub_1A3EED3F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1228B8);
  }

  return result;
}

uint64_t sub_1A487D064(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A487D108()
{
  result = qword_1EB1279A0;
  if (!qword_1EB1279A0)
  {
    sub_1A418436C(255, &qword_1EB127998, &type metadata for PhotosCollectionPreviewPlayer.Options, MEMORY[0x1E6980A08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1279A0);
  }

  return result;
}

void sub_1A487D184()
{
  if (!qword_1EB127AB0)
  {
    sub_1A5243804();
    sub_1A48793D0(&qword_1EB129058, MEMORY[0x1E69C2670]);
    sub_1A487D064(&qword_1EB129160, sub_1A425D684, sub_1A487D270);
    v0 = sub_1A5249D24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127AB0);
    }
  }
}

uint64_t sub_1A487D2A4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v810 = a1;
  sub_1A487AB28(0);
  v786 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v633 = (v553 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x1E697F948];
  sub_1A487A914(0, &qword_1EB122D08, sub_1A487A9BC, &type metadata for LemonadeImportView, MEMORY[0x1E697F948]);
  v713 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v714 = (v553 - v7);
  sub_1A487A980(0);
  v754 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v715 = v553 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v632 = type metadata accessor for LemonadeSharedWithYouFeedProvider();
  MEMORY[0x1EEE9AC00](v632);
  v631 = (v553 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A487A9BC();
  v712 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v634 = (v553 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1E697F948];
  sub_1A4878ED4(0, &qword_1EB144148, sub_1A487A848, sub_1A487AB28, MEMORY[0x1E697F948]);
  v783 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v785 = v553 - v15;
  sub_1A4878ED4(0, &qword_1EB122AE8, sub_1A487A890, sub_1A487AA6C, v13);
  v776 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v779 = v553 - v17;
  sub_1A4878ED4(0, &qword_1EB122B38, sub_1A487A8D8, sub_1A487A980, v13);
  v748 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v751 = v553 - v19;
  sub_1A487A914(0, &qword_1EB144150, type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable, &type metadata for LemonadeSharedWithYouGridViewControllerRepresentable, v5);
  v705 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v708 = (v553 - v21);
  sub_1A487A8D8(0);
  v749 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v711 = v553 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A890(0);
  v778 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v753 = v553 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A848(0);
  v784 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v781 = v553 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A800(0);
  v809 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v787 = v553 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v704 = type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable();
  MEMORY[0x1EEE9AC00](v704);
  v630 = (v553 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4878ED4(0, &qword_1EB127F30, type metadata accessor for LemonadeSharedAlbumsActivityFeedView, type metadata accessor for LemonadeAlbumsView, v13);
  v652 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v654 = v553 - v32;
  v653 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView();
  MEMORY[0x1EEE9AC00](v653);
  v575 = (v553 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A487A7B8(0);
  v709 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v655 = v553 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB122C98, type metadata accessor for LemonadeMemoryPlayerView, sub_1A487A7B8, v13);
  v722 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v707 = v553 - v37;
  sub_1A487A770(0);
  v759 = v38;
  MEMORY[0x1EEE9AC00](v38);
  v710 = v553 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v706 = type metadata accessor for LemonadeMemoryPlayerView(0);
  MEMORY[0x1EEE9AC00](v706);
  v629 = v553 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for LemonadeMemoryPlayerConfiguration(0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v622 = v553 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v628 = (v553 - v44);
  sub_1A4878ED4(0, &qword_1EB122B60, sub_1A487A734, sub_1A487A770, v13);
  v757 = v45;
  MEMORY[0x1EEE9AC00](v45);
  v758 = v553 - v46;
  sub_1A487A914(0, &qword_1EB122CB8, type metadata accessor for LemonadeAccountView, &type metadata for LemonadeMap, v5);
  v697 = v47;
  MEMORY[0x1EEE9AC00](v47);
  v699 = v553 - v48;
  sub_1A487A734(0);
  v746 = v49;
  MEMORY[0x1EEE9AC00](v49);
  v702 = v553 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A6EC(0);
  v763 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v752 = v553 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v696 = type metadata accessor for LemonadeAccountView();
  MEMORY[0x1EEE9AC00](v696);
  v627 = (v553 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4878ED4(0, &qword_1EB122B10, sub_1A487A630, sub_1A487A6EC, v13);
  v761 = v54;
  MEMORY[0x1EEE9AC00](v54);
  v762 = v553 - v55;
  sub_1A487A5E8(0);
  v791 = v56;
  MEMORY[0x1EEE9AC00](v56);
  v764 = v553 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  v620 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v620);
  v626 = (v553 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0));
  v619 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v619);
  v625 = v553 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v617 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v617);
  v624 = v553 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v616 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration(0);
  MEMORY[0x1EEE9AC00](v616);
  v623 = (v553 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0));
  v695 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView();
  MEMORY[0x1EEE9AC00](v695);
  v621 = (v553 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4878ED4(0, &qword_1EB122AC8, sub_1A487A3E4, sub_1A487A5E8, v13);
  v788 = v63;
  MEMORY[0x1EEE9AC00](v63);
  v790 = v553 - v64;
  sub_1A4878ED4(0, &qword_1EB122AF0, sub_1A487A42C, sub_1A487A530, v13);
  v770 = v65;
  MEMORY[0x1EEE9AC00](v65);
  v772 = v553 - v66;
  v67 = MEMORY[0x1E697F948];
  sub_1A487A44C(0, &qword_1EB122B50, MEMORY[0x1E697F948]);
  v740 = v68;
  MEMORY[0x1EEE9AC00](v68);
  v742 = v553 - v69;
  sub_1A4878ED4(0, &qword_1EB122C90, type metadata accessor for LemonadeBookmarksEditView, type metadata accessor for LemonadeBookmarksSeeAllPopoverView, v13);
  v691 = v70;
  MEMORY[0x1EEE9AC00](v70);
  v692 = v553 - v71;
  sub_1A487A4E8(0);
  v741 = v72;
  MEMORY[0x1EEE9AC00](v72);
  v693 = v553 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A42C(0);
  v771 = v74;
  MEMORY[0x1EEE9AC00](v74);
  v743 = v553 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A3E4(0);
  v789 = v76;
  MEMORY[0x1EEE9AC00](v76);
  v773 = v553 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A39C(0);
  v804 = v78;
  MEMORY[0x1EEE9AC00](v78);
  v792 = v553 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
  v690 = type metadata accessor for LemonadeBookmarksEditView(0);
  MEMORY[0x1EEE9AC00](v690);
  v618 = (v553 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0));
  v689 = type metadata accessor for GenerativeStoryCreationView();
  MEMORY[0x1EEE9AC00](v689);
  v615 = v553 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration();
  MEMORY[0x1EEE9AC00](v82 - 8);
  v609 = (v553 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v84);
  v614 = v553 - v85;
  v86 = MEMORY[0x1E697F948];
  sub_1A488B1D0(0, &qword_1EB122D10, MEMORY[0x1E697F948]);
  v683 = v87;
  MEMORY[0x1EEE9AC00](v87);
  v685 = v553 - v88;
  sub_1A488B1D0(0, &qword_1EB122A08, MEMORY[0x1E697F960]);
  v738 = v89;
  MEMORY[0x1EEE9AC00](v89);
  v688 = v553 - v90;
  v608 = type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v608);
  v607 = (v553 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A487A2EC();
  v687 = v92;
  MEMORY[0x1EEE9AC00](v92);
  v613 = v553 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A218(0, &qword_1EB144158, v67);
  v735 = v94;
  MEMORY[0x1EEE9AC00](v94);
  v737 = v553 - v95;
  sub_1A4878ED4(0, &qword_1EB144160, sub_1A4669BE4, sub_1A487A2EC, v13);
  v679 = v96;
  MEMORY[0x1EEE9AC00](v96);
  v682 = v553 - v97;
  sub_1A487A2A4(0);
  v736 = v98;
  MEMORY[0x1EEE9AC00](v98);
  v686 = v553 - ((v99 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A487A1F8(0);
  v782 = v100;
  MEMORY[0x1EEE9AC00](v100);
  v739 = v553 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4669BE4();
  v680 = v102;
  MEMORY[0x1EEE9AC00](v102);
  v611 = v553 - ((v103 + 15) & 0xFFFFFFFFFFFFFFF0);
  v606 = type metadata accessor for LemonadeWallpaperFeature.FeedProvider();
  MEMORY[0x1EEE9AC00](v606);
  v605 = (v553 - ((v104 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A487A148();
  v701 = v105;
  MEMORY[0x1EEE9AC00](v105);
  v610 = v553 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB144168, sub_1A4879ED8, sub_1A487A148, v13);
  v698 = v107;
  MEMORY[0x1EEE9AC00](v107);
  v700 = v553 - v108;
  sub_1A4879E90(0);
  v755 = v109;
  MEMORY[0x1EEE9AC00](v109);
  v703 = v553 - ((v110 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB144170, sub_1A4879FD4, sub_1A4879F20, v13);
  v572 = v111;
  MEMORY[0x1EEE9AC00](v111);
  v573 = v553 - v112;
  sub_1A487A100(0);
  v650 = v113;
  MEMORY[0x1EEE9AC00](v113);
  v574 = v553 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB144178, sub_1A4879F20, sub_1A487A100, v13);
  v648 = v115;
  MEMORY[0x1EEE9AC00](v115);
  v649 = v553 - v116;
  sub_1A487A084(0, &qword_1EB12A928, sub_1A3D6FFF4);
  v589 = v117;
  MEMORY[0x1EEE9AC00](v117);
  v559 = v553 - v118;
  sub_1A4879F40(0, &qword_1EB127F80, v67);
  v587 = v119;
  MEMORY[0x1EEE9AC00](v119);
  v588 = v553 - v120;
  v582 = type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider(0);
  MEMORY[0x1EEE9AC00](v582);
  v581 = (v553 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4879FD4();
  v612 = v122;
  MEMORY[0x1EEE9AC00](v122);
  v583 = v553 - ((v123 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879F20(0);
  v657 = v124;
  MEMORY[0x1EEE9AC00](v124);
  v557 = v553 - ((v125 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v126);
  v568 = v553 - v127;
  sub_1A4879ED8(0);
  v694 = v128;
  MEMORY[0x1EEE9AC00](v128);
  v651 = v553 - ((v129 + 15) & 0xFFFFFFFFFFFFFFF0);
  v130 = sub_1A5249234();
  v555 = *(v130 - 8);
  v556 = v130;
  MEMORY[0x1EEE9AC00](v130);
  v554 = v553 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB144180, sub_1A4879D98, sub_1A4879D78, v13);
  v569 = v132;
  MEMORY[0x1EEE9AC00](v132);
  v570 = v553 - v133;
  sub_1A4879E48(0);
  v646 = v134;
  MEMORY[0x1EEE9AC00](v134);
  v571 = v553 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB144188, sub_1A4879D78, sub_1A4879E48, v13);
  v644 = v136;
  MEMORY[0x1EEE9AC00](v136);
  v645 = v553 - v137;
  sub_1A487A084(0, &qword_1EB12A8F8, sub_1A41D4294);
  v586 = v138;
  MEMORY[0x1EEE9AC00](v138);
  v558 = v553 - v139;
  sub_1A488B238(0, &qword_1EB127F78, v86);
  v584 = v140;
  MEMORY[0x1EEE9AC00](v140);
  v585 = v553 - v141;
  v579 = type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0);
  MEMORY[0x1EEE9AC00](v579);
  v578 = (v553 - ((v142 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4879D98();
  v643 = v143;
  MEMORY[0x1EEE9AC00](v143);
  v580 = v553 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
  v642 = sub_1A52486A4();
  v641 = *(v642 - 8);
  MEMORY[0x1EEE9AC00](v642);
  v640 = v553 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879D78(0);
  v656 = v146;
  MEMORY[0x1EEE9AC00](v146);
  v553[1] = v553 - ((v147 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v148);
  v567 = v553 - v149;
  sub_1A4879D30(0);
  v684 = v150;
  MEMORY[0x1EEE9AC00](v150);
  v647 = v553 - ((v151 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB144190, sub_1A4879CA0, sub_1A487A1F8, v13);
  v774 = v152;
  MEMORY[0x1EEE9AC00](v152);
  v777 = v553 - v153;
  sub_1A4878ED4(0, &qword_1EB144198, sub_1A4879CE8, sub_1A4879E90, v13);
  v744 = v154;
  MEMORY[0x1EEE9AC00](v154);
  v747 = v553 - v155;
  sub_1A4878ED4(0, &qword_1EB1441A0, type metadata accessor for LemonadeSocialGroupFeedView, sub_1A4879D30, v13);
  v678 = v156;
  MEMORY[0x1EEE9AC00](v156);
  v721 = v553 - v157;
  sub_1A4879CE8(0);
  v745 = v158;
  MEMORY[0x1EEE9AC00](v158);
  v681 = v553 - ((v159 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879CA0(0);
  v775 = v160;
  MEMORY[0x1EEE9AC00](v160);
  v750 = v553 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879C58(0);
  v797 = v162;
  MEMORY[0x1EEE9AC00](v162);
  v780 = v553 - ((v163 + 15) & 0xFFFFFFFFFFFFFFF0);
  v677 = type metadata accessor for LemonadeSocialGroupFeedView();
  MEMORY[0x1EEE9AC00](v677);
  v603 = v553 - ((v164 + 15) & 0xFFFFFFFFFFFFFFF0);
  v639 = type metadata accessor for LemonadePeopleHomeView(0);
  MEMORY[0x1EEE9AC00](v639);
  v566 = v553 - ((v165 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB1441A8, sub_1A4879B88, type metadata accessor for LemonadePeopleHomeView, v13);
  v635 = v166;
  MEMORY[0x1EEE9AC00](v166);
  v638 = v553 - v167;
  v636 = type metadata accessor for LemonadePeopleFeedView();
  MEMORY[0x1EEE9AC00](v636);
  v563 = v553 - ((v168 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879B88();
  v637 = v169;
  v565 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v564 = v553 - ((v170 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879B40(0);
  v675 = v171;
  MEMORY[0x1EEE9AC00](v171);
  v720 = v553 - ((v172 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB1441B0, sub_1A48798A8, sub_1A4879B40, v13);
  v672 = v173;
  MEMORY[0x1EEE9AC00](v173);
  v674 = v553 - v174;
  sub_1A4879860(0);
  v734 = v175;
  MEMORY[0x1EEE9AC00](v175);
  v676 = v553 - ((v176 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48798A8();
  v673 = v177;
  MEMORY[0x1EEE9AC00](v177);
  v604 = v553 - ((v178 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879A14();
  v601 = v179;
  v799 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v577 = v553 - ((v180 + 15) & 0xFFFFFFFFFFFFFFF0);
  v719 = sub_1A5242D14();
  v718 = *(v719 - 8);
  MEMORY[0x1EEE9AC00](v719);
  v716 = v553 - ((v181 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v182);
  v717 = v553 - v183;
  sub_1A487970C();
  v671 = v184;
  MEMORY[0x1EEE9AC00](v184);
  v600 = (v553 - ((v185 + 15) & 0xFFFFFFFFFFFFFFF0));
  v813 = sub_1A5244EE4();
  v800 = *(v813 - 8);
  MEMORY[0x1EEE9AC00](v813);
  v812 = v553 - ((v186 + 15) & 0xFFFFFFFFFFFFFFF0);
  v598 = type metadata accessor for LemonadeEventsFeature.FeedProvider(0);
  v798 = *(v598 - 8);
  MEMORY[0x1EEE9AC00](v598);
  v576 = v553 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB1441B8, sub_1A4879558, sub_1A4879860, v13);
  v730 = v188;
  MEMORY[0x1EEE9AC00](v188);
  v732 = v553 - v189;
  sub_1A4878ED4(0, &qword_1EB1441C0, sub_1A48795A0, sub_1A487970C, v13);
  v667 = v190;
  MEMORY[0x1EEE9AC00](v190);
  v669 = v553 - v191;
  sub_1A4879558(0);
  v731 = v192;
  MEMORY[0x1EEE9AC00](v192);
  v670 = v553 - ((v193 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879510(0);
  v769 = v194;
  MEMORY[0x1EEE9AC00](v194);
  v733 = v553 - ((v195 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48795A0();
  v668 = v196;
  MEMORY[0x1EEE9AC00](v196);
  v602 = v553 - ((v197 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB127F70, sub_1A4879460, type metadata accessor for LemonadeAlbumsView, v13);
  v594 = v198;
  MEMORY[0x1EEE9AC00](v198);
  v597 = v553 - v199;
  v561 = type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v561);
  v560 = (v553 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4879460();
  v596 = v201;
  MEMORY[0x1EEE9AC00](v201);
  v562 = v553 - ((v202 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879418(0);
  v665 = v203;
  MEMORY[0x1EEE9AC00](v203);
  v599 = v553 - ((v204 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB127F68, sub_1A4879320, sub_1A4879418, v13);
  v663 = v205;
  MEMORY[0x1EEE9AC00](v205);
  v664 = v553 - v206;
  sub_1A48792D8(0);
  v729 = v207;
  MEMORY[0x1EEE9AC00](v207);
  v666 = v553 - ((v208 + 15) & 0xFFFFFFFFFFFFFFF0);
  v593 = type metadata accessor for LemonadeICloudLinksFeedProvider();
  MEMORY[0x1EEE9AC00](v593);
  v591 = (v553 - ((v209 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4879320();
  v662 = v210;
  MEMORY[0x1EEE9AC00](v210);
  v595 = v553 - ((v211 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4878ED4(0, &qword_1EB1441C8, sub_1A4879078, sub_1A487A800, v13);
  v807 = v212;
  MEMORY[0x1EEE9AC00](v212);
  v811 = v553 - v213;
  sub_1A4878ED4(0, &qword_1EB1441D0, sub_1A48790C0, sub_1A487A39C, v13);
  v802 = v214;
  MEMORY[0x1EEE9AC00](v214);
  v806 = v553 - v215;
  sub_1A4878ED4(0, &qword_1EB1441D8, sub_1A4879108, sub_1A4879C58, v13);
  v793 = v216;
  MEMORY[0x1EEE9AC00](v216);
  v795 = v553 - v217;
  sub_1A4878ED4(0, &qword_1EB1441E0, sub_1A4879150, sub_1A4879510, v13);
  v765 = v218;
  MEMORY[0x1EEE9AC00](v218);
  v767 = v553 - v219;
  sub_1A4878ED4(0, &qword_1EB127EE8, sub_1A4879198, sub_1A48792D8, v13);
  v725 = v220;
  MEMORY[0x1EEE9AC00](v220);
  v727 = v553 - v221;
  sub_1A4878ED4(0, &qword_1EB127F00, sub_1A48791E0, type metadata accessor for LemonadeAlbumsView, v13);
  v659 = v222;
  MEMORY[0x1EEE9AC00](v222);
  v660 = v553 - v223;
  sub_1A4879198(0);
  v726 = v224;
  MEMORY[0x1EEE9AC00](v224);
  v661 = v553 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879150(0);
  v766 = v226;
  MEMORY[0x1EEE9AC00](v226);
  v728 = v553 - ((v227 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879108(0);
  v794 = v228;
  MEMORY[0x1EEE9AC00](v228);
  v768 = v553 - ((v229 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48790C0(0);
  v805 = v230;
  MEMORY[0x1EEE9AC00](v230);
  v796 = v553 - ((v231 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4879078(0);
  v808 = v232;
  MEMORY[0x1EEE9AC00](v232);
  v803 = v553 - ((v233 + 15) & 0xFFFFFFFFFFFFFFF0);
  v756 = type metadata accessor for LemonadeAlbumsView();
  MEMORY[0x1EEE9AC00](v756);
  v723 = (v553 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4878ED4(0, &qword_1EB127F88, sub_1A4879228, type metadata accessor for LemonadeAlbumsView, v13);
  MEMORY[0x1EEE9AC00](v235);
  v590 = v553 - v236;
  v237 = type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider(0);
  MEMORY[0x1EEE9AC00](v237);
  v239 = (v553 - ((v238 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A4879228();
  MEMORY[0x1EEE9AC00](v240);
  sub_1A48791E0(0);
  v658 = v241;
  MEMORY[0x1EEE9AC00](v241);
  v592 = (v553 - ((v242 + 15) & 0xFFFFFFFFFFFFFFF0));
  v243 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v243);
  v245 = v553 - ((v244 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = type metadata accessor for LemonadeNavigationDestinationView();
  v801 = *(v2 + v246[10]);
  LOBYTE(v822) = *(v801 + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  LOBYTE(v828) = 3;
  v724 = static LemonadePresentationContext.== infix(_:_:)(&v822, &v828);
  v247 = v246[9];
  v760 = v2;
  sub_1A488AC98(v2 + v247, v245, type metadata accessor for LemonadeNavigationDestination);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v359 = *v245;
      v360 = v801;

      v362 = v723;
      sub_1A49B6BC0(v361, v360, 2, v723);
      sub_1A488AC98(v362, v660, type metadata accessor for LemonadeAlbumsView);
      swift_storeEnumTagMultiPayload();
      sub_1A487B288();
      sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView);
      v363 = v661;
      sub_1A5249744();
      sub_1A488AC98(v363, v727, sub_1A4879198);
      swift_storeEnumTagMultiPayload();
      sub_1A487B1D8();
      sub_1A487B368();
      v364 = v728;
      sub_1A5249744();
      sub_1A488B2CC(v363, sub_1A4879198);
      sub_1A488AC98(v364, v767, sub_1A4879150);
      swift_storeEnumTagMultiPayload();
      sub_1A487B158();
      sub_1A487B4F8();
      v365 = v768;
      sub_1A5249744();
      sub_1A488B2CC(v364, sub_1A4879150);
      sub_1A488B840(v365, v795, sub_1A4879108);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v366 = v796;
      sub_1A5249744();
      sub_1A488AF00(v365, sub_1A4879108);
      sub_1A488B840(v366, v806, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v367 = v803;
      sub_1A5249744();
      sub_1A488AF00(v366, sub_1A48790C0);
      sub_1A488B840(v367, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v367, sub_1A4879078);
      v368 = type metadata accessor for LemonadeAlbumsView;
      goto LABEL_78;
    case 2u:
      sub_1A488BC3C(0, &qword_1EB1291D8, MEMORY[0x1E69E5FE0], MEMORY[0x1E69E5FE8], MEMORY[0x1E69C1FC0]);
      swift_allocObject();

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 3u:

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 4u:
      v314 = *(v245 + 1);
      v816 = *(v245 + 2);
      *&v817[0] = *(v245 + 6);
      v315 = *v245;
      v815 = v314;
      v814 = v315;
      v316 = v816;
      v317 = *(v816 + 16);
      if (v317)
      {
        *&v822 = MEMORY[0x1E69E7CC0];
        sub_1A488BCE0(0, v317, 0);
        v318 = v822;
        v319 = v800 + 16;
        v800 = *(v800 + 16);
        v320 = v316 + ((*(v319 + 64) + 32) & ~*(v319 + 64));
        v799 = *(v319 + 56);
        v321 = (v319 - 8);
        v322 = v576;
        do
        {
          v323 = v812;
          v324 = v813;
          (v800)(v812, v320, v813);
          sub_1A47D6CF0(v323, v322);
          (*v321)(v323, v324);
          *&v822 = v318;
          v326 = *(v318 + 16);
          v325 = *(v318 + 24);
          if (v326 >= v325 >> 1)
          {
            sub_1A488BCE0(v325 > 1, v326 + 1, 1);
            v318 = v822;
          }

          *(v318 + 16) = v326 + 1;
          sub_1A488B4D0(v322, v318 + ((*(v798 + 80) + 32) & ~*(v798 + 80)) + *(v798 + 72) * v326, type metadata accessor for LemonadeEventsFeature.FeedProvider);
          v320 += v799;
          --v317;
        }

        while (v317);
      }

      LOBYTE(v822) = 5;
      sub_1A48793D0(&qword_1EB12A218, type metadata accessor for LemonadeEventsFeature.FeedProvider);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 5u:
      v401 = *(v245 + 1);
      v822 = *v245;
      v823 = v401;
      v824 = *(v245 + 2);
      v825 = *(v245 + 6);
      v402 = v801;
      v403 = sub_1A4333AD4();
      v405 = v404;
      *&v828 = v403;
      *(&v828 + 1) = v404;
      v406 = sub_1A48797A4();
      v407 = sub_1A48793D0(&qword_1EB12A2E8, sub_1A4338D2C);

      v408 = v405;
      v267 = v600;
      sub_1A3F75F48(&v828, v402, &type metadata for LemonadeTripsFeature.SectionedFeedProvider, v406, v407, v600);
      sub_1A488AC98(v267, v669, sub_1A487970C);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB129D20, sub_1A48795A0);
      sub_1A48793D0(&qword_1EB129D30, sub_1A487970C);
      v409 = v670;
      sub_1A5249744();
      sub_1A488AC98(v409, v732, sub_1A4879558);
      swift_storeEnumTagMultiPayload();
      sub_1A487B578();
      sub_1A487B654();
      v410 = v733;
      sub_1A5249744();
      sub_1A488B2CC(v409, sub_1A4879558);
      sub_1A488B840(v410, v767, sub_1A4879510);
      swift_storeEnumTagMultiPayload();
      sub_1A487B158();
      sub_1A487B4F8();
      v411 = v768;
      sub_1A5249744();
      sub_1A488AF00(v410, sub_1A4879510);
      sub_1A488B840(v411, v795, sub_1A4879108);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v412 = v796;
      sub_1A5249744();
      sub_1A488AF00(v411, sub_1A4879108);
      sub_1A488B840(v412, v806, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v413 = v803;
      sub_1A5249744();
      sub_1A488AF00(v412, sub_1A48790C0);
      sub_1A488B840(v413, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A4192CAC(&v822);

      sub_1A488AF00(v413, sub_1A4879078);
      v272 = sub_1A487970C;
      goto LABEL_73;
    case 6u:
      *(v817 + 9) = *(v245 + 57);
      v420 = *(v245 + 3);
      v816 = *(v245 + 2);
      v817[0] = v420;
      v421 = *v245;
      v815 = *(v245 + 1);
      v814 = v421;
      v422 = v816;
      v423 = *(v816 + 16);
      if (v423)
      {
        *&v822 = MEMORY[0x1E69E7CC0];
        sub_1A488BC90(0, v423, 0);
        v798 = *(v800 + 16);
        v424 = v422 + ((*(v800 + 80) + 32) & ~*(v800 + 80));
        v792 = *(v800 + 72);
        v800 += 16;
        v425 = v812;
        (v798)(v812, v424, v813);
        sub_1A45A408C(v425);
      }

      v426 = v717;
      sub_1A488BA24(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v717);
      v427 = v718;
      v428 = v716;
      v429 = v719;
      (*(v718 + 104))(v716, *MEMORY[0x1E69C2210], v719);
      sub_1A48793D0(&qword_1EB129148, MEMORY[0x1E69C2218]);
      sub_1A524C594();
      v430 = *(v427 + 8);
      v430(v428, v429);
      v430(v426, v429);
      v812 = v815;
      LODWORD(v800) = BYTE8(v814);
      v813 = *(&v816 + 1);
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 7u:
      v356 = *v245;
      v812 = *(v245 + 2);
      v813 = v356;
      if (v724)
      {
        v357 = v640;
        sub_1A488BA24(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v640);
        v358 = sub_1A5248684();
        (*(v641 + 8))(v357, v642);
        if (v358)
        {
          sub_1A41CF074(v356, v578);
          sub_1A48793D0(&qword_1EB129D88, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);

          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        *&v822 = sub_1A3D660F4(0, v356);
        *(&v822 + 1) = v539;
        sub_1A41D4294();

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v513 = v760;
      v514 = v717;
      sub_1A488BA24(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v717);
      v515 = v718;
      v516 = v716;
      v517 = v719;
      (*(v718 + 104))(v716, *MEMORY[0x1E69C2200], v719);
      v518 = sub_1A5242D04();
      v519 = *(v515 + 8);
      v519(v516, v517);
      v519(v514, v517);
      if (v518)
      {
        sub_1A41CF074(v813, v578);
        sub_1A48793D0(&qword_1EB129D88, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v540 = v513 + v246[5];
      v541 = *v540;
      if (*(v540 + 8) == 1)
      {
        v542 = *v540;
        LOBYTE(v828) = v541;
      }

      else
      {

        sub_1A524D254();
        v547 = sub_1A524A014();
        sub_1A5246DF4();

        v548 = v554;
        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3DD15BC(v541, 0);
        (*(v555 + 8))(v548, v556);
        v542 = v828;
      }

      if ((v542 - 4) < 3)
      {
        *&v822 = sub_1A3D660F4(0, v813);
        *(&v822 + 1) = v549;
        sub_1A41D4294();

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A41CF074(v813, v578);
      sub_1A48793D0(&qword_1EB129D88, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 8u:
      v813 = *v245;
      v812 = *(v245 + 2);
      if (v724)
      {
        v438 = v640;
        sub_1A488BA24(&qword_1EB128A50, MEMORY[0x1E697E730], MEMORY[0x1E697E730], v640);
        v439 = sub_1A5248684();
        (*(v641 + 8))(v438, v642);
        if (v439)
        {
          sub_1A3D66128(v813, v581);
          sub_1A48793D0(&qword_1EB129ED0, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider);

          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        *&v822 = sub_1A3D660F4(0, v813);
        *(&v822 + 1) = v543;
        sub_1A3D6FFF4();

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v520 = v760;
      v521 = v717;
      sub_1A488BA24(&qword_1EB128AA0, MEMORY[0x1E69C2218], MEMORY[0x1E69C2218], v717);
      v522 = v718;
      v523 = v716;
      v524 = v719;
      (*(v718 + 104))(v716, *MEMORY[0x1E69C2200], v719);
      v525 = sub_1A5242D04();
      v526 = *(v522 + 8);
      v526(v523, v524);
      v526(v521, v524);
      if (v525)
      {
        sub_1A3D66128(v813, v581);
        sub_1A48793D0(&qword_1EB129ED0, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider);

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v544 = v520 + v246[5];
      v545 = *v544;
      if (*(v544 + 8) == 1)
      {
        v546 = *v544;
        LOBYTE(v828) = v545;
      }

      else
      {

        sub_1A524D254();
        v550 = sub_1A524A014();
        sub_1A5246DF4();

        v551 = v554;
        sub_1A5249224();
        swift_getAtKeyPath();
        sub_1A3DD15BC(v545, 0);
        (*(v555 + 8))(v551, v556);
        v546 = v828;
      }

      if ((v546 - 4) < 3)
      {
        *&v822 = sub_1A3D660F4(0, v813);
        *(&v822 + 1) = v552;
        sub_1A3D6FFF4();

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      sub_1A3D66128(v813, v581);
      sub_1A48793D0(&qword_1EB129ED0, type metadata accessor for LemonadeUtilitiesFeature.ListFeedProvider);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 9u:
      sub_1A4618004(*v245, v605);
      sub_1A48793D0(&qword_1EB129EA0, type metadata accessor for LemonadeWallpaperFeature.FeedProvider);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 0xAu:
      sub_1A44ED184(*v245, v607);
      sub_1A48793D0(&qword_1EB13C9B8, type metadata accessor for LemonadeBookmarksFeature.DefaultFeedProvider);

      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    case 0xBu:
      v296 = *(v245 + 3);
      v830 = *(v245 + 2);
      v831 = v296;
      v832 = *(v245 + 4);
      v297 = *(v245 + 1);
      v828 = *v245;
      v829 = v297;
      sub_1A3F3A30C(v801, &v822);
    case 0xCu:
      v327 = *(v245 + 3);
      v830 = *(v245 + 2);
      v831 = v327;
      v832 = *(v245 + 4);
      *&v833 = *(v245 + 10);
      v328 = *(v245 + 1);
      v828 = *v245;
      v829 = v328;
      sub_1A47ACB88(&v828, &v820);
      v329 = v801;
      sub_1A418E3C8(v801, &v814);

      sub_1A47AB4A8(&v820, &v814, v329, &v822);
      sub_1A488B8A8(&v822, v685);
      swift_storeEnumTagMultiPayload();
      sub_1A47ACC7C();
      sub_1A48793D0(&qword_1EB129B90, type metadata accessor for GenerativeStoryCreationView);
      v330 = v688;
      sub_1A5249744();
      sub_1A488B748(v330, v737);
      swift_storeEnumTagMultiPayload();
      sub_1A487BF78();
      sub_1A487C058();
      v331 = v739;
      sub_1A5249744();
      sub_1A488B7C8(v330);
      sub_1A488AC98(v331, v777, sub_1A487A1F8);
      swift_storeEnumTagMultiPayload();
      sub_1A487B8B0();
      sub_1A487BEF8();
      v332 = v780;
      sub_1A5249744();
      sub_1A488B2CC(v331, sub_1A487A1F8);
      sub_1A488AC98(v332, v795, sub_1A4879C58);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v333 = v796;
      sub_1A5249744();
      sub_1A488B2CC(v332, sub_1A4879C58);
      sub_1A488B840(v333, v806, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v334 = v803;
      sub_1A5249744();
      sub_1A488AF00(v333, sub_1A48790C0);
      sub_1A488B840(v334, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v334, sub_1A4879078);
      sub_1A488B904(&v822);
      return sub_1A3EEDCF8(&v828);
    case 0xDu:
      v267 = v626;
      sub_1A488B4D0(v245, v626, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      *(&v823 + 1) = v620;
      *&v824 = sub_1A48793D0(&qword_1EB125FA0, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v822);
      sub_1A488AC98(v267, boxed_opaque_existential_1, type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration);
      v415 = v801;
      sub_1A418E3C8(v801, &v828);

      sub_1A42EBAE8(&v822, &v828, v415, &v814);
      sub_1A488B698(&v814, &v822);
      v826 = 0;
      sub_1A44D55D4();
      sub_1A3D8FAD0();
      sub_1A5249744();
      sub_1A488B388(&v820, &v828, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView);
      BYTE9(v831) = 1;
      v416 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView, v416);
      sub_1A487C4B0();
      sub_1A487C550();
      sub_1A5249744();
      sub_1A488B40C(&v820, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView);
      sub_1A488AC98(&v822, v772, sub_1A487A530);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530();
      sub_1A487C224();
      sub_1A487C430();
      v417 = v773;
      sub_1A5249744();
      sub_1A488B2CC(&v822, sub_1A487A530);
      sub_1A488AC98(v417, v790, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v418 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v417, sub_1A487A3E4);
      sub_1A488AC98(v418, v806, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v419 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v418, sub_1A487A39C);
      sub_1A488B840(v419, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v419, sub_1A4879078);
      sub_1A488B6F4(&v814);
      v272 = type metadata accessor for LemonadePhotosPagingPhotoKitContainerGridConfiguration;
      goto LABEL_73;
    case 0xEu:
      v287 = v245;
      v288 = v624;
      sub_1A488B4D0(v287, v624, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      *(&v823 + 1) = v617;
      *&v824 = sub_1A48793D0(&unk_1EB12AD20, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      v289 = __swift_allocate_boxed_opaque_existential_1(&v822);
      sub_1A488AC98(v288, v289, type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration);
      v290 = v801;
      sub_1A418E3C8(v801, &v828);

      sub_1A42EBAE8(&v822, &v828, v290, &v814);
      sub_1A488B698(&v814, &v822);
      v826 = 0;
      sub_1A44D55D4();
      sub_1A5249744();
      sub_1A488B388(&v820, &v828, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView);
      BYTE9(v831) = 0;
      v291 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView, v291);
      sub_1A487C4B0();
      sub_1A487C550();
      sub_1A5249744();
      sub_1A488B40C(&v820, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView);
      sub_1A488AC98(&v822, v772, sub_1A487A530);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530();
      sub_1A487C224();
      sub_1A487C430();
      v292 = v773;
      sub_1A5249744();
      sub_1A488B2CC(&v822, sub_1A487A530);
      sub_1A488AC98(v292, v790, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v293 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v292, sub_1A487A3E4);
      sub_1A488AC98(v293, v806, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v294 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v293, sub_1A487A39C);
      sub_1A488B840(v294, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v294, sub_1A4879078);
      sub_1A488B6F4(&v814);
      v295 = type metadata accessor for LemonadePhotosPagingAssetCollectionGridConfiguration;
      goto LABEL_66;
    case 0xFu:
      v342 = v245;
      v288 = v625;
      sub_1A488B4D0(v342, v625, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
      *(&v823 + 1) = v619;
      *&v824 = sub_1A48793D0(&qword_1EB12E448, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
      v343 = __swift_allocate_boxed_opaque_existential_1(&v822);
      sub_1A488AC98(v288, v343, type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration);
      v344 = v801;
      sub_1A418E3C8(v801, &v828);

      sub_1A42EBAE8(&v822, &v828, v344, &v814);
      sub_1A488B698(&v814, &v822);
      v826 = 1;
      sub_1A44D55D4();
      sub_1A5249744();
      sub_1A488B388(&v820, &v828, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView);
      BYTE9(v831) = 0;
      v345 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView, v345);
      sub_1A487C4B0();
      sub_1A487C550();
      sub_1A5249744();
      sub_1A488B40C(&v820, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView);
      sub_1A488AC98(&v822, v772, sub_1A487A530);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530();
      sub_1A487C224();
      sub_1A487C430();
      v346 = v773;
      sub_1A5249744();
      sub_1A488B2CC(&v822, sub_1A487A530);
      sub_1A488AC98(v346, v790, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v347 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v346, sub_1A487A3E4);
      sub_1A488AC98(v347, v806, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v348 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v347, sub_1A487A39C);
      sub_1A488B840(v348, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v348, sub_1A4879078);
      sub_1A488B6F4(&v814);
      v295 = type metadata accessor for LemonadeEventsPhotosPagingGridConfiguration;
      goto LABEL_66;
    case 0x10u:
      v267 = v623;
      sub_1A488B4D0(v245, v623, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      *(&v823 + 1) = v616;
      *&v824 = sub_1A48793D0(&qword_1EB12AD48, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      v280 = __swift_allocate_boxed_opaque_existential_1(&v822);
      sub_1A488AC98(v267, v280, type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration);
      v281 = v801;
      sub_1A418E3C8(v801, &v828);

      sub_1A42EBAE8(&v822, &v828, v281, &v820);
      sub_1A488B698(&v820, &v828);
      BYTE8(v831) = 1;
      sub_1A44D55D4();
      v282 = MEMORY[0x1E6981E70];
      sub_1A5249744();
      sub_1A488B388(&v822, v742, &qword_1EB122590, v282, &type metadata for LemonadePhotosPagingGridView);
      swift_storeEnumTagMultiPayload();
      sub_1A488BC3C(0, &qword_1EB122590, v282, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A487C2A4();
      sub_1A487C384();
      v283 = v743;
      sub_1A5249744();
      sub_1A488B40C(&v822, &qword_1EB122590, v282, &type metadata for LemonadePhotosPagingGridView);
      sub_1A488AC98(v283, v772, sub_1A487A42C);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530();
      sub_1A487C224();
      sub_1A487C430();
      v284 = v773;
      sub_1A5249744();
      sub_1A488B2CC(v283, sub_1A487A42C);
      sub_1A488AC98(v284, v790, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v285 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v284, sub_1A487A3E4);
      sub_1A488AC98(v285, v806, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v286 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v285, sub_1A487A39C);
      sub_1A488B840(v286, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v286, sub_1A4879078);
      sub_1A488B6F4(&v820);
      v272 = type metadata accessor for LemonadePhotosPagingMemoryGridConfiguration;
      goto LABEL_73;
    case 0x11u:
      v380 = v245[8];
      *&v828 = *v245;
      BYTE8(v828) = v380;
      v381 = v828;
      v382 = v801;
      sub_1A418E3C8(v801, &v820);

      sub_1A3D8EF94(&v828, &v820, v382, &v822);
      v383 = v822;
      v826 = 1;
      sub_1A44D55D4();
      sub_1A3D8FAD0();
      v384 = v383;

      sub_1A5249744();
      sub_1A488B388(&v820, &v828, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView);
      BYTE9(v831) = 1;
      v385 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A18, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView, v385);
      sub_1A487C4B0();
      sub_1A487C550();
      sub_1A5249744();
      sub_1A488B40C(&v820, &qword_1EB122A28, &type metadata for LemonadePhotosPagingGridView, &type metadata for LemonadePhotosPersonGridView);
      sub_1A488AC98(&v822, v772, sub_1A487A530);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530();
      sub_1A487C224();
      sub_1A487C430();
      v386 = v773;
      sub_1A5249744();
      sub_1A488B2CC(&v822, sub_1A487A530);
      sub_1A488AC98(v386, v790, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v387 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v386, sub_1A487A3E4);
      sub_1A488AC98(v387, v806, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v388 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v387, sub_1A487A39C);
      sub_1A488B840(v388, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      return sub_1A488AF00(v388, sub_1A4879078);
    case 0x12u:
      v431 = *(v245 + 3);
      v818[2] = *(v245 + 2);
      v818[3] = v431;
      v819 = *(v245 + 8);
      v432 = *v245;
      v818[1] = *(v245 + 1);
      v818[0] = v432;
      sub_1A42721B8(v818, &v822);
      v433 = v801;
      sub_1A418E3C8(v801, &v828);

      sub_1A42716F0(&v822, &v828, v433, &v814);
      sub_1A488B5E8(&v814, &v822);
      v827 = 0;
      sub_1A427224C();
      sub_1A42EC7EC();
      sub_1A5249744();
      sub_1A488B388(&v820, &v828, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView);
      BYTE9(v833) = 0;
      v434 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB122A48, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E69E73E0], v434);
      sub_1A487C6FC();
      sub_1A487C7A8();
      sub_1A5249744();
      sub_1A488B40C(&v820, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView);
      sub_1A488AC98(&v822, v762, sub_1A487A630);
      swift_storeEnumTagMultiPayload();
      sub_1A487A630();
      sub_1A487C67C();
      sub_1A487C854();
      v435 = v764;
      sub_1A5249744();
      sub_1A488B2CC(&v822, sub_1A487A630);
      sub_1A488AC98(v435, v790, sub_1A487A5E8);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v436 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v435, sub_1A487A5E8);
      sub_1A488AC98(v436, v806, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v437 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v436, sub_1A487A39C);
      sub_1A488B840(v437, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v437, sub_1A4879078);
      sub_1A488B644(&v814);
      return sub_1A3EEDBFC(v818);
    case 0x13u:
      v474 = *v245;
      v473 = *(v245 + 1);
      v475 = *(v245 + 2);
      v476 = *(v245 + 3);
      *(&v823 + 1) = &type metadata for LemonadeUserAlbumsPhotosPagingGridConfiguration;
      *&v824 = sub_1A3EEDBA8();
      v477 = swift_allocObject();
      *&v822 = v477;
      v477[2] = v474;
      v477[3] = v473;
      v477[4] = v475;
      v477[5] = v476;
      v394 = v476;

      v478 = v801;
      sub_1A418E3C8(v801, &v828);

      sub_1A42EBAE8(&v822, &v828, v478, &v814);
      sub_1A488B538(&v814, &v822);
      v827 = 1;
      sub_1A427224C();
      sub_1A42EC7EC();
      v396 = &type metadata for LemonadePeoplePhotosPagingGridView;
      v397 = &type metadata for LemonadeAlbumsPhotosPagingGridView;
      sub_1A5249744();
      v398 = &qword_1EB122A38;
      sub_1A488B388(&v820, &v828, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView);
      BYTE9(v833) = 0;
      v399 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E697F960]);
      v400 = MEMORY[0x1E69E73E0];
      goto LABEL_61;
    case 0x14u:
      v389 = *v245;
      v390 = *(v245 + 1);
      v391 = *(v245 + 2);
      v392 = *(v245 + 3);
      *(&v823 + 1) = &type metadata for LemonadeSharedAlbumsPhotosPagingGridConfiguration;
      *&v824 = sub_1A3EEDB54();
      v393 = swift_allocObject();
      *&v822 = v393;
      v393[2] = v389;
      v393[3] = v390;
      v393[4] = v391;
      v393[5] = v392;
      v394 = v392;

      v395 = v801;
      sub_1A418E3C8(v801, &v828);

      sub_1A42EBAE8(&v822, &v828, v395, &v814);
      sub_1A488B538(&v814, &v822);
      v826 = 0;
      sub_1A42EC7EC();
      v396 = &type metadata for LemonadeAlbumsPhotosPagingGridView;
      v397 = MEMORY[0x1E69E73E0];
      sub_1A5249744();
      v398 = &qword_1EB122A48;
      sub_1A488B388(&v820, &v828, &qword_1EB122A48, &type metadata for LemonadeAlbumsPhotosPagingGridView, v397);
      BYTE9(v833) = 1;
      v399 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122A38, &type metadata for LemonadePeoplePhotosPagingGridView, &type metadata for LemonadeAlbumsPhotosPagingGridView, MEMORY[0x1E697F960]);
      v400 = v397;
LABEL_61:
      sub_1A488BC3C(0, &qword_1EB122A48, &type metadata for LemonadeAlbumsPhotosPagingGridView, v400, v399);
      sub_1A487C6FC();
      sub_1A487C7A8();
      sub_1A5249744();
      sub_1A488B40C(&v820, v398, v396, v397);
      sub_1A488AC98(&v822, v762, sub_1A487A630);
      swift_storeEnumTagMultiPayload();
      sub_1A487A630();
      sub_1A487C67C();
      sub_1A487C854();
      v479 = v764;
      sub_1A5249744();
      sub_1A488B2CC(&v822, sub_1A487A630);
      sub_1A488AC98(v479, v790, sub_1A487A5E8);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v480 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v479, sub_1A487A5E8);
      sub_1A488AC98(v480, v806, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v481 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v480, sub_1A487A39C);
      sub_1A488B840(v481, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v481, sub_1A4879078);
      return sub_1A488B594(&v814);
    case 0x15u:
      result = sub_1A524E6E4();
      __break(1u);
      return result;
    case 0x16u:
      v267 = v628;
      sub_1A488B4D0(v245, v628, type metadata accessor for LemonadeMemoryPlayerConfiguration);
      v349 = v622;
      sub_1A488AC98(v267, v622, type metadata accessor for LemonadeMemoryPlayerConfiguration);
      v350 = v629;
      sub_1A498A8C0(v349, v629);
      sub_1A488AC98(v350, v707, type metadata accessor for LemonadeMemoryPlayerView);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB129F00, type metadata accessor for LemonadeMemoryPlayerView);
      sub_1A487CA34();
      v351 = v710;
      sub_1A5249744();
      sub_1A488AC98(v351, v758, sub_1A487A770);
      swift_storeEnumTagMultiPayload();
      sub_1A487C8D4();
      sub_1A487C984();
      v352 = v752;
      sub_1A5249744();
      sub_1A488B2CC(v351, sub_1A487A770);
      sub_1A488AC98(v352, v762, sub_1A487A6EC);
      swift_storeEnumTagMultiPayload();
      sub_1A487A630();
      sub_1A487C67C();
      sub_1A487C854();
      v353 = v764;
      sub_1A5249744();
      sub_1A488B2CC(v352, sub_1A487A6EC);
      sub_1A488AC98(v353, v790, sub_1A487A5E8);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v354 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v353, sub_1A487A5E8);
      sub_1A488AC98(v354, v806, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v355 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v354, sub_1A487A39C);
      sub_1A488B840(v355, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v355, sub_1A4879078);
      sub_1A488B2CC(v350, type metadata accessor for LemonadeMemoryPlayerView);
      v272 = type metadata accessor for LemonadeMemoryPlayerConfiguration;
      goto LABEL_73;
    case 0x17u:
      v441 = *v245;
      v440 = *(v245 + 1);
      v442 = v245[16];
      sub_1A3C52C70(0, &qword_1EB126910);
      v443 = [swift_getObjCClassFromMetadata() sharedInstance];
      v444 = [v443 lemonadeActivityShelfShouldOpenActivityFeedModallyByItself];

      if (v444)
      {
        *&v822 = v441;
        *(&v822 + 1) = v440;
        LOBYTE(v823) = v442;
        v445 = v801;

        v446 = v575;
        sub_1A4031754(&v822, v445, v575);
        sub_1A488AC98(v446, v654, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
        swift_storeEnumTagMultiPayload();
        sub_1A48793D0(&qword_1EB129580, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
        sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView);
        v447 = v655;
        sub_1A5249744();
        v448 = type metadata accessor for LemonadeSharedAlbumsActivityFeedView;
      }

      else
      {
        sub_1A4030DDC(v441, v440, v442);
        v527 = v801;

        v446 = v723;
        sub_1A49B6BC0(v528, v527, 3, v723);
        sub_1A488AC98(v446, v654, type metadata accessor for LemonadeAlbumsView);
        swift_storeEnumTagMultiPayload();
        sub_1A48793D0(&qword_1EB129580, type metadata accessor for LemonadeSharedAlbumsActivityFeedView);
        sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView);
        v447 = v655;
        sub_1A5249744();
        v448 = type metadata accessor for LemonadeAlbumsView;
      }

      sub_1A488B2CC(v446, v448);
      v529 = v811;
      v530 = v806;
      v531 = v758;
      sub_1A488AC98(v447, v707, sub_1A487A7B8);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB129F00, type metadata accessor for LemonadeMemoryPlayerView);
      sub_1A487CA34();
      v532 = v710;
      sub_1A5249744();
      sub_1A488AC98(v532, v531, sub_1A487A770);
      swift_storeEnumTagMultiPayload();
      sub_1A487C8D4();
      sub_1A487C984();
      v533 = v752;
      sub_1A5249744();
      sub_1A488B2CC(v532, sub_1A487A770);
      sub_1A488AC98(v533, v762, sub_1A487A6EC);
      swift_storeEnumTagMultiPayload();
      sub_1A487A630();
      sub_1A487C67C();
      sub_1A487C854();
      v267 = v447;
      v534 = v764;
      sub_1A5249744();
      sub_1A488B2CC(v533, sub_1A487A6EC);
      sub_1A488AC98(v534, v790, sub_1A487A5E8);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v535 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v534, sub_1A487A5E8);
      sub_1A488AC98(v535, v530, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v536 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v535, sub_1A487A39C);
      sub_1A488B840(v536, v529, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v536, sub_1A4879078);
      v272 = sub_1A487A7B8;
      goto LABEL_73;
    case 0x18u:
      v453 = *v245;
      v454 = v801;

      sub_1A3C5A374();
      v267 = v627;
      sub_1A4578344(v453, v454, v627);
      sub_1A488AC98(v267, v699, type metadata accessor for LemonadeAccountView);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A3B0, type metadata accessor for LemonadeAccountView);
      sub_1A3EED6DC();
      v455 = v702;
      sub_1A5249744();
      sub_1A488AC98(v455, v758, sub_1A487A734);
      swift_storeEnumTagMultiPayload();
      sub_1A487C8D4();
      sub_1A487C984();
      v456 = v752;
      sub_1A5249744();
      sub_1A488B2CC(v455, sub_1A487A734);
      sub_1A488AC98(v456, v762, sub_1A487A6EC);
      swift_storeEnumTagMultiPayload();
      sub_1A487A630();
      sub_1A487C67C();
      sub_1A487C854();
      v457 = v764;
      sub_1A5249744();
      sub_1A488B2CC(v456, sub_1A487A6EC);
      sub_1A488AC98(v457, v790, sub_1A487A5E8);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v458 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v457, sub_1A487A5E8);
      sub_1A488AC98(v458, v806, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v459 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v458, sub_1A487A39C);
      sub_1A488B840(v459, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v459, sub_1A4879078);
      v272 = type metadata accessor for LemonadeAccountView;
      goto LABEL_73;
    case 0x19u:
      v306 = *(v245 + 5);
      v832 = *(v245 + 4);
      v833 = v306;
      v834[0] = *(v245 + 6);
      *(v834 + 11) = *(v245 + 107);
      v307 = *(v245 + 1);
      v828 = *v245;
      v829 = v307;
      v308 = *(v245 + 3);
      v830 = *(v245 + 2);
      v831 = v308;
      sub_1A3EED680(&v828, &v820);
      sub_1A412FC64(&v820, &v822);
      sub_1A4135258(&v822, v699);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A3B0, type metadata accessor for LemonadeAccountView);
      sub_1A3EED6DC();
      v309 = v702;
      sub_1A5249744();
      sub_1A488AC98(v309, v758, sub_1A487A734);
      swift_storeEnumTagMultiPayload();
      sub_1A487C8D4();
      sub_1A487C984();
      v310 = v752;
      sub_1A5249744();
      sub_1A488B2CC(v309, sub_1A487A734);
      sub_1A488AC98(v310, v762, sub_1A487A6EC);
      swift_storeEnumTagMultiPayload();
      sub_1A487A630();
      sub_1A487C67C();
      sub_1A487C854();
      v311 = v764;
      sub_1A5249744();
      sub_1A488B2CC(v310, sub_1A487A6EC);
      sub_1A488AC98(v311, v790, sub_1A487A5E8);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v312 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v311, sub_1A487A5E8);
      sub_1A488AC98(v312, v806, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v313 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v312, sub_1A487A39C);
      sub_1A488B840(v313, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v313, sub_1A4879078);
      sub_1A3EED730(&v822);
      return sub_1A3EED784(&v828);
    case 0x1Au:
      v298 = v245;
      v288 = v614;
      sub_1A488B4D0(v298, v614, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
      v299 = v609;
      sub_1A488AC98(v288, v609, type metadata accessor for LemonadeGenerativeMemoriesConfiguration);
      v300 = v615;
      GenerativeStoryCreationView.init(configuration:)(v299, v615);
      sub_1A488AC98(v300, v685, type metadata accessor for GenerativeStoryCreationView);
      swift_storeEnumTagMultiPayload();
      sub_1A47ACC7C();
      sub_1A48793D0(&qword_1EB129B90, type metadata accessor for GenerativeStoryCreationView);
      v301 = v688;
      sub_1A5249744();
      sub_1A488B748(v301, v737);
      swift_storeEnumTagMultiPayload();
      sub_1A487BF78();
      sub_1A487C058();
      v302 = v739;
      sub_1A5249744();
      sub_1A488B7C8(v301);
      sub_1A488AC98(v302, v777, sub_1A487A1F8);
      swift_storeEnumTagMultiPayload();
      sub_1A487B8B0();
      sub_1A487BEF8();
      v303 = v780;
      sub_1A5249744();
      sub_1A488B2CC(v302, sub_1A487A1F8);
      sub_1A488AC98(v303, v795, sub_1A4879C58);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v304 = v796;
      sub_1A5249744();
      sub_1A488B2CC(v303, sub_1A4879C58);
      sub_1A488B840(v304, v806, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v305 = v803;
      sub_1A5249744();
      sub_1A488AF00(v304, sub_1A48790C0);
      sub_1A488B840(v305, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488AF00(v305, sub_1A4879078);
      sub_1A488B2CC(v300, type metadata accessor for GenerativeStoryCreationView);
      v295 = type metadata accessor for LemonadeGenerativeMemoriesConfiguration;
      goto LABEL_66;
    case 0x1Bu:
      v487 = v591;
      sub_1A44055B0(*v245, v591);
      v488 = sub_1A48793D0(&qword_1EB1296F0, type metadata accessor for LemonadeICloudLinksFeedProvider);
      v489 = v801;

      v288 = v595;
      sub_1A4784928(v487, v489, 0, 0xE000000000000000, v593, v488, v595);
      sub_1A488AC98(v288, v664, sub_1A4879320);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A8E0, sub_1A4879320);
      sub_1A487B418();
      v490 = v666;
      sub_1A5249744();
      sub_1A488AC98(v490, v727, sub_1A48792D8);
      swift_storeEnumTagMultiPayload();
      sub_1A487B1D8();
      sub_1A487B368();
      v491 = v728;
      sub_1A5249744();
      sub_1A488B2CC(v490, sub_1A48792D8);
      sub_1A488AC98(v491, v767, sub_1A4879150);
      swift_storeEnumTagMultiPayload();
      sub_1A487B158();
      sub_1A487B4F8();
      v492 = v768;
      sub_1A5249744();
      sub_1A488B2CC(v491, sub_1A4879150);
      sub_1A488B840(v492, v795, sub_1A4879108);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v493 = v796;
      sub_1A5249744();
      sub_1A488AF00(v492, sub_1A4879108);
      sub_1A488B840(v493, v806, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v494 = v803;
      sub_1A5249744();
      sub_1A488AF00(v493, sub_1A48790C0);
      sub_1A488B840(v494, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v494, sub_1A4879078);
      v295 = sub_1A4879320;
      goto LABEL_66;
    case 0x1Cu:
      *&v822 = *v245;
      swift_unknownObjectRetain();
      v267 = v630;
      sub_1A43BD234(&v822, v630);
      sub_1A488AC98(v267, v708, type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB129320, type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable);
      sub_1A484F120();
      v268 = v711;
      sub_1A5249744();
      sub_1A488AC98(v268, v751, sub_1A487A8D8);
      swift_storeEnumTagMultiPayload();
      sub_1A487CCD8();
      sub_1A487CD88();
      v269 = v753;
      sub_1A5249744();
      sub_1A488B2CC(v268, sub_1A487A8D8);
      sub_1A488AC98(v269, v779, sub_1A487A890);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C();
      sub_1A487CC58();
      sub_1A487CE8C();
      v270 = v781;
      sub_1A5249744();
      sub_1A488B2CC(v269, sub_1A487A890);
      sub_1A488AC98(v270, v785, sub_1A487A848);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4);
      v271 = v787;
      sub_1A5249744();
      sub_1A488B2CC(v270, sub_1A487A848);
      sub_1A488AC98(v271, v811, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      swift_unknownObjectRelease();
      sub_1A488B2CC(v271, sub_1A487A800);
      v272 = type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable;
      goto LABEL_73;
    case 0x1Du:
      v460 = *v245;
      v461 = v801;

      v267 = v618;
      sub_1A431ED94(v461, v460, v618);
      sub_1A488AC98(v267, v692, type metadata accessor for LemonadeBookmarksEditView);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&unk_1EB129DE8, type metadata accessor for LemonadeBookmarksEditView);
      sub_1A48793D0(&unk_1EB1295D8, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
      v462 = v693;
      sub_1A5249744();
      sub_1A488AC98(v462, v742, sub_1A487A4E8);
      swift_storeEnumTagMultiPayload();
      sub_1A488BC3C(0, &qword_1EB122590, MEMORY[0x1E6981E70], &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A487C2A4();
      sub_1A487C384();
      v463 = v743;
      sub_1A5249744();
      sub_1A488B2CC(v462, sub_1A487A4E8);
      sub_1A488AC98(v463, v772, sub_1A487A42C);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530();
      sub_1A487C224();
      sub_1A487C430();
      v464 = v773;
      sub_1A5249744();
      sub_1A488B2CC(v463, sub_1A487A42C);
      sub_1A488AC98(v464, v790, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v465 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v464, sub_1A487A3E4);
      sub_1A488AC98(v465, v806, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v466 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v465, sub_1A487A39C);
      sub_1A488B840(v466, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v466, sub_1A4879078);
      v272 = type metadata accessor for LemonadeBookmarksEditView;
      goto LABEL_73;
    case 0x1Eu:

      v267 = v621;
      sub_1A40EE7AC(v467, v621);
      sub_1A488AC98(v267, v692, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&unk_1EB129DE8, type metadata accessor for LemonadeBookmarksEditView);
      sub_1A48793D0(&unk_1EB1295D8, type metadata accessor for LemonadeBookmarksSeeAllPopoverView);
      v468 = v693;
      sub_1A5249744();
      sub_1A488AC98(v468, v742, sub_1A487A4E8);
      swift_storeEnumTagMultiPayload();
      sub_1A488BC3C(0, &qword_1EB122590, MEMORY[0x1E6981E70], &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A487C2A4();
      sub_1A487C384();
      v469 = v743;
      sub_1A5249744();
      sub_1A488B2CC(v468, sub_1A487A4E8);
      sub_1A488AC98(v469, v772, sub_1A487A42C);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530();
      sub_1A487C224();
      sub_1A487C430();
      v470 = v773;
      sub_1A5249744();
      sub_1A488B2CC(v469, sub_1A487A42C);
      sub_1A488AC98(v470, v790, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v471 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v470, sub_1A487A3E4);
      sub_1A488AC98(v471, v806, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v472 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v471, sub_1A487A39C);
      sub_1A488B840(v472, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v472, sub_1A4879078);
      v272 = type metadata accessor for LemonadeBookmarksSeeAllPopoverView;
      goto LABEL_73;
    case 0x1Fu:
      *&v828 = *v245;
      swift_unknownObjectRetain();
      sub_1A3C757C0(&v828, &v822);
      *v708 = v822;
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB129320, type metadata accessor for LemonadeICloudLinkGridViewControllerRepresentable);
      sub_1A484F120();
      swift_unknownObjectRetain();
      v369 = v711;
      sub_1A5249744();
      sub_1A488AC98(v369, v751, sub_1A487A8D8);
      swift_storeEnumTagMultiPayload();
      sub_1A487CCD8();
      sub_1A487CD88();
      v370 = v753;
      sub_1A5249744();
      sub_1A488B2CC(v369, sub_1A487A8D8);
      sub_1A488AC98(v370, v779, sub_1A487A890);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C();
      sub_1A487CC58();
      sub_1A487CE8C();
      v277 = v781;
      sub_1A5249744();
      v278 = sub_1A487A890;
      v279 = v370;
      goto LABEL_38;
    case 0x20u:
      v335 = v631;
      sub_1A43C87EC(*v245, v631);
      v336 = sub_1A48793D0(&qword_1EB129638, type metadata accessor for LemonadeSharedWithYouFeedProvider);
      v337 = v801;

      v267 = v634;
      sub_1A4784928(v335, v337, 0, 0xE000000000000000, v632, v336, v634);
      sub_1A488AC98(v267, v714, sub_1A487A9BC);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A8D0, sub_1A487A9BC);
      sub_1A487CE38();
      v338 = v715;
      sub_1A5249744();
      sub_1A488AC98(v338, v751, sub_1A487A980);
      swift_storeEnumTagMultiPayload();
      sub_1A487CCD8();
      sub_1A487CD88();
      v339 = v753;
      sub_1A5249744();
      sub_1A488B2CC(v338, sub_1A487A980);
      sub_1A488AC98(v339, v779, sub_1A487A890);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C();
      sub_1A487CC58();
      sub_1A487CE8C();
      v340 = v781;
      sub_1A5249744();
      sub_1A488B2CC(v339, sub_1A487A890);
      sub_1A488AC98(v340, v785, sub_1A487A848);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4);
      v341 = v787;
      sub_1A5249744();
      sub_1A488B2CC(v340, sub_1A487A848);
      sub_1A488AC98(v341, v811, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488B2CC(v341, sub_1A487A800);
      v272 = sub_1A487A9BC;
LABEL_73:
      v378 = v272;
      v379 = v267;
      return sub_1A488B2CC(v379, v378);
    case 0x21u:
      v371 = *v245;
      PXDisplayCollectionDetailedCountsMake(v371);
      v373 = v372;
      *v714 = v372;
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A8D0, sub_1A487A9BC);
      sub_1A487CE38();
      v374 = v373;
      v375 = v715;
      sub_1A5249744();
      sub_1A488AC98(v375, v751, sub_1A487A980);
      swift_storeEnumTagMultiPayload();
      sub_1A487CCD8();
      sub_1A487CD88();
      v376 = v753;
      sub_1A5249744();
      sub_1A488B2CC(v375, sub_1A487A980);
      sub_1A488AC98(v376, v779, sub_1A487A890);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C();
      sub_1A487CC58();
      sub_1A487CE8C();
      v377 = v781;
      sub_1A5249744();
      sub_1A488B2CC(v376, sub_1A487A890);
      sub_1A488AC98(v377, v785, sub_1A487A848);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4);
      v266 = v787;
      sub_1A5249744();
      sub_1A488B2CC(v377, sub_1A487A848);
      sub_1A488AC98(v266, v811, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      goto LABEL_40;
    case 0x22u:
      *&v828 = *v245;
      swift_unknownObjectRetain();
      sub_1A3C757C0(&v828, &v822);
      *(&v822 + 1) = 0;
      LOBYTE(v823) = 0;
      sub_1A48728E0();
      sub_1A47EFEE4();
      swift_unknownObjectRetain();
      sub_1A5249744();
      v828 = v820;
      LOBYTE(v829) = v821;
      BYTE9(v831) = 0;
      v276 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122810, &type metadata for LemonadeWallpaperEditorViewControllerRepresentable, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView, v276);
      sub_1A487CF0C();
      sub_1A487CFB8();
      sub_1A5249744();
      sub_1A488AC98(&v822, v779, sub_1A487AA6C);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C();
      sub_1A487CC58();
      sub_1A487CE8C();
      v277 = v781;
      sub_1A5249744();
      v278 = sub_1A487AA6C;
      v279 = &v822;
LABEL_38:
      sub_1A488B2CC(v279, v278);
      sub_1A488AC98(v277, v785, sub_1A487A848);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4);
      v266 = v787;
      sub_1A5249744();
      sub_1A488B2CC(v277, sub_1A487A848);
      sub_1A488AC98(v266, v811, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 0x23u:
      v273 = *v245;
      v274 = *(v245 + 1);
      v275 = *(v245 + 3);
      v813 = v274;
      v812 = v275;
      if (v273 && (([v273 px_isMacSyncedFacesFolder] & 1) != 0 || objc_msgSend(v273, sel_px_isMacSyncedEventsFolder)))
      {
        sub_1A43D8EB4(v273, v274, v560);
        sub_1A48793D0(&qword_1EB1297C8, type metadata accessor for LemonadeMacSyncedAlbumsFeature.DefaultFeedProvider);

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v503 = v801;

      v505 = v723;
      sub_1A49B6BC0(v504, v503, 1, v723);
      sub_1A488AC98(v505, v597, type metadata accessor for LemonadeAlbumsView);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A8F0, sub_1A4879460);
      sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView);
      v288 = v599;
      sub_1A5249744();
      sub_1A488B2CC(v505, type metadata accessor for LemonadeAlbumsView);
      v506 = v811;
      v507 = v806;
      sub_1A488AC98(v288, v664, sub_1A4879418);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A8E0, sub_1A4879320);
      sub_1A487B418();
      v508 = v666;
      sub_1A5249744();
      sub_1A488AC98(v508, v727, sub_1A48792D8);
      swift_storeEnumTagMultiPayload();
      sub_1A487B1D8();
      sub_1A487B368();
      v509 = v728;
      sub_1A5249744();
      sub_1A488B2CC(v508, sub_1A48792D8);
      sub_1A488AC98(v509, v767, sub_1A4879150);
      swift_storeEnumTagMultiPayload();
      sub_1A487B158();
      sub_1A487B4F8();
      v510 = v768;
      sub_1A5249744();
      sub_1A488B2CC(v509, sub_1A4879150);
      sub_1A488B840(v510, v795, sub_1A4879108);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v511 = v796;
      sub_1A5249744();
      sub_1A488AF00(v510, sub_1A4879108);
      sub_1A488B840(v511, v507, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v512 = v803;
      sub_1A5249744();
      sub_1A488AF00(v511, sub_1A48790C0);
      sub_1A488B840(v512, v506, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v512, sub_1A4879078);
      v295 = sub_1A4879418;
LABEL_66:
      v378 = v295;
      v379 = v288;
      return sub_1A488B2CC(v379, v378);
    case 0x24u:
      v256 = *v245;
      *(swift_allocObject() + 16) = v256;
      v257 = v256;
      PXDisplayCollectionDetailedCountsMake(sub_1A403478C);
      *&v822 = v258;
      *(&v822 + 1) = v259;
      LOBYTE(v823) = 1;
      sub_1A48728E0();
      sub_1A47EFEE4();

      sub_1A5249744();
      v828 = v820;
      LOBYTE(v829) = v821;
      BYTE9(v831) = 0;
      v260 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122810, &type metadata for LemonadeWallpaperEditorViewControllerRepresentable, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView, v260);
      sub_1A487CF0C();
      sub_1A487CFB8();
      sub_1A5249744();
      goto LABEL_8;
    case 0x25u:
      v261 = *v245;
      *(swift_allocObject() + 16) = v261;
      v257 = v261;
      PXDisplayCollectionDetailedCountsMake(sub_1A411FEF0);
      *&v822 = v262;
      *(&v822 + 1) = v263;
      v826 = 0;
      sub_1A47EFEE4();
      sub_1A3EED3F4();

      sub_1A5249744();
      sub_1A488B388(&v820, &v828, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView);
      BYTE9(v831) = 1;
      v264 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122810, &type metadata for LemonadeWallpaperEditorViewControllerRepresentable, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView, v264);
      sub_1A487CF0C();
      sub_1A487CFB8();
      sub_1A5249744();
      sub_1A488B40C(&v820, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView);
LABEL_8:
      sub_1A488AC98(&v822, v779, sub_1A487AA6C);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C();
      sub_1A487CC58();
      sub_1A487CE8C();
      v265 = v781;
      sub_1A5249744();
      sub_1A488B2CC(&v822, sub_1A487AA6C);
      sub_1A488AC98(v265, v785, sub_1A487A848);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4);
      v266 = v787;
      sub_1A5249744();
      sub_1A488B2CC(v265, sub_1A487A848);
      sub_1A488AC98(v266, v811, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

LABEL_40:
      v378 = sub_1A487A800;
      v379 = v266;
      return sub_1A488B2CC(v379, v378);
    case 0x26u:
      v251 = *(v245 + 1);
      v814 = *v245;
      v815 = v251;
      v816 = *(v245 + 2);
      *&v817[0] = *(v245 + 6);
      sub_1A3EED448(&v814, &v822);
      sub_1A43F83A0(&v822, v818);
      sub_1A488B32C(v818, &v822);
      v826 = 1;
      sub_1A47EFEE4();
      sub_1A3EED3F4();
      sub_1A5249744();
      sub_1A488B388(&v820, &v828, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView);
      BYTE9(v831) = 1;
      v252 = MEMORY[0x1E697F960];
      sub_1A488BC3C(0, &qword_1EB122810, &type metadata for LemonadeWallpaperEditorViewControllerRepresentable, &type metadata for LemonadeViewControllerWrapper, MEMORY[0x1E697F960]);
      sub_1A488BC3C(0, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView, v252);
      sub_1A487CF0C();
      sub_1A487CFB8();
      sub_1A5249744();
      sub_1A488B40C(&v820, &qword_1EB1228B0, &type metadata for LemonadeViewControllerWrapper, &type metadata for LemonadeCustomView);
      sub_1A488AC98(&v822, v779, sub_1A487AA6C);
      swift_storeEnumTagMultiPayload();
      sub_1A487AA6C();
      sub_1A487CC58();
      sub_1A487CE8C();
      v253 = v781;
      sub_1A5249744();
      sub_1A488B2CC(&v822, sub_1A487AA6C);
      sub_1A488AC98(v253, v785, sub_1A487A848);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4);
      v254 = v787;
      sub_1A5249744();
      sub_1A488B2CC(v253, sub_1A487A848);
      sub_1A488AC98(v254, v811, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488B2CC(v254, sub_1A487A800);
      sub_1A488B47C(v818);
      return sub_1A3EED4A4(&v814);
    case 0x27u:
      BYTE8(v831) = 0;
      sub_1A44D55D4();
      v482 = MEMORY[0x1E6981E70];
      sub_1A5249744();
      sub_1A488B388(&v822, v742, &qword_1EB122590, v482, &type metadata for LemonadePhotosPagingGridView);
      swift_storeEnumTagMultiPayload();
      sub_1A488BC3C(0, &qword_1EB122590, v482, &type metadata for LemonadePhotosPagingGridView, MEMORY[0x1E697F960]);
      sub_1A487C2A4();
      sub_1A487C384();
      v483 = v743;
      sub_1A5249744();
      sub_1A488B40C(&v822, &qword_1EB122590, v482, &type metadata for LemonadePhotosPagingGridView);
      sub_1A488AC98(v483, v772, sub_1A487A42C);
      swift_storeEnumTagMultiPayload();
      sub_1A487A530();
      sub_1A487C224();
      sub_1A487C430();
      v484 = v773;
      sub_1A5249744();
      sub_1A488B2CC(v483, sub_1A487A42C);
      sub_1A488AC98(v484, v790, sub_1A487A3E4);
      swift_storeEnumTagMultiPayload();
      sub_1A487C1A4();
      sub_1A487C5FC();
      v485 = v792;
      sub_1A5249744();
      sub_1A488B2CC(v484, sub_1A487A3E4);
      sub_1A488AC98(v485, v806, sub_1A487A39C);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v486 = v803;
      sub_1A5249744();
      sub_1A488B2CC(v485, sub_1A487A39C);
      sub_1A488B840(v486, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      return sub_1A488AF00(v486, sub_1A4879078);
    case 0x28u:
      if (*(v760 + v246[11]))
      {
        v449 = v801;

        v362 = v633;
        sub_1A4470B1C(v450, v449, v633);
        v451 = 0;
        v452 = v811;
      }

      else
      {
        v451 = 1;
        v452 = v811;
        v362 = v633;
      }

      v537 = type metadata accessor for LemonadeRootView();
      (*(*(v537 - 8) + 56))(v362, v451, 1, v537);
      sub_1A488AC98(v362, v785, sub_1A487AB28);
      swift_storeEnumTagMultiPayload();
      sub_1A487CBD8();
      sub_1A487D064(&qword_1EB144120, sub_1A487AB28, sub_1A487D0D4);
      v538 = v787;
      sub_1A5249744();
      sub_1A488AC98(v538, v452, sub_1A487A800);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();
      sub_1A488B2CC(v538, sub_1A487A800);
      v368 = sub_1A487AB28;
      goto LABEL_78;
    default:
      v248 = *v245;
      v249 = *(v245 + 1);
      v813 = *(v245 + 3);
      if (v248 && [v248 px_isRegularFolder])
      {
        sub_1A45F17A8(v248, v249, v239);
        v250 = sub_1A48793D0(&qword_1EB12A250, type metadata accessor for LemonadeAlbumsFeature.DefaultFeedProvider);
        v812 = v249;
        v800 = v250;

        _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
      }

      v495 = v801;

      v497 = v723;
      sub_1A49B6BC0(v496, v495, 0, v723);
      sub_1A488AC98(v497, v590, type metadata accessor for LemonadeAlbumsView);
      swift_storeEnumTagMultiPayload();
      sub_1A48793D0(&qword_1EB12A950, sub_1A4879228);
      sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView);
      v362 = v592;
      sub_1A5249744();
      sub_1A488B2CC(v497, type metadata accessor for LemonadeAlbumsView);
      v498 = v768;
      sub_1A488AC98(v362, v660, sub_1A48791E0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B288();
      sub_1A48793D0(&qword_1EB12A3F0, type metadata accessor for LemonadeAlbumsView);
      v499 = v661;
      sub_1A5249744();
      sub_1A488AC98(v499, v727, sub_1A4879198);
      swift_storeEnumTagMultiPayload();
      sub_1A487B1D8();
      sub_1A487B368();
      v500 = v728;
      sub_1A5249744();
      sub_1A488B2CC(v499, sub_1A4879198);
      sub_1A488AC98(v500, v767, sub_1A4879150);
      swift_storeEnumTagMultiPayload();
      sub_1A487B158();
      sub_1A487B4F8();
      sub_1A5249744();
      sub_1A488B2CC(v500, sub_1A4879150);
      sub_1A488B840(v498, v795, sub_1A4879108);
      swift_storeEnumTagMultiPayload();
      sub_1A487B0D8();
      sub_1A487B830();
      v501 = v796;
      sub_1A5249744();
      sub_1A488AF00(v498, sub_1A4879108);
      sub_1A488B840(v501, v806, sub_1A48790C0);
      swift_storeEnumTagMultiPayload();
      sub_1A487B058();
      sub_1A487C124();
      v502 = v803;
      sub_1A5249744();
      sub_1A488AF00(v501, sub_1A48790C0);
      sub_1A488B840(v502, v811, sub_1A4879078);
      swift_storeEnumTagMultiPayload();
      sub_1A487AFD8();
      sub_1A487CB14();
      sub_1A5249744();

      sub_1A488AF00(v502, sub_1A4879078);
      v368 = sub_1A48791E0;
LABEL_78:
      v378 = v368;
      v379 = v362;
      return sub_1A488B2CC(v379, v378);
  }
}

uint64_t sub_1A488AB7C(uint64_t a1)
{
  sub_1A425D684();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LemonadeNavigationDestinationView();
  sub_1A48788AC(0, &qword_1EB124970, type metadata accessor for PhotosNavigationItemPaletteContentContainer, MEMORY[0x1E697DA80]);
  sub_1A5247C84();
  v5 = v7[1];
  sub_1A488AC98(a1, v4, sub_1A425D684);
  (*(*v5 + 96))(v4);
}

uint64_t sub_1A488AC98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A488AD00(uint64_t a1)
{
  type metadata accessor for LemonadeNavigationDestinationView();

  return sub_1A488AB7C(a1);
}

unint64_t sub_1A488AD70()
{
  result = qword_1EB144138;
  if (!qword_1EB144138)
  {
    sub_1A487AB5C(255);
    sub_1A488AE20();
    sub_1A48793D0(&qword_1EB127AB8, sub_1A487D184);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144138);
  }

  return result;
}

unint64_t sub_1A488AE20()
{
  result = qword_1EB144140;
  if (!qword_1EB144140)
  {
    sub_1A487ABA4(255);
    sub_1A4878E04();
    sub_1A487AC70();
    swift_getOpaqueTypeConformance2();
    sub_1A48793D0(&qword_1EB1296B0, type metadata accessor for LemonadeAnalyticsViewTimeTracker);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB144140);
  }

  return result;
}

uint64_t sub_1A488AF00(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A488AFA8()
{
  sub_1A48788AC(319, &qword_1EB124730, MEMORY[0x1E697BF90], MEMORY[0x1E697DCC0]);
  if (v0 <= 0x3F)
  {
    sub_1A418436C(319, &unk_1EB1247A0, &type metadata for LemonadeHorizontalSizeClass, MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      sub_1A48788AC(319, &qword_1EB124718, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
      if (v2 <= 0x3F)
      {
        sub_1A48788AC(319, &qword_1EB124870, MEMORY[0x1E69C2218], MEMORY[0x1E697DCC0]);
        if (v3 <= 0x3F)
        {
          sub_1A48788AC(319, &qword_1EB124970, type metadata accessor for PhotosNavigationItemPaletteContentContainer, MEMORY[0x1E697DA80]);
          if (v4 <= 0x3F)
          {
            type metadata accessor for LemonadeNavigationDestination();
            if (v5 <= 0x3F)
            {
              type metadata accessor for LemonadeNavigationContext(319);
              if (v6 <= 0x3F)
              {
                sub_1A48788AC(319, &qword_1EB1258F0, type metadata accessor for LemonadeRootViewModel, MEMORY[0x1E69E6720]);
                if (v7 <= 0x3F)
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

void sub_1A488B1D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for GenerativeStoryCreationView();
    v7 = a3(a1, &type metadata for LemonadePhotosGridView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A488B238(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4879D98();
    v7 = v6;
    sub_1A487A084(255, &qword_1EB12A8F8, sub_1A41D4294);
    v9 = a3(a1, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1A488B2CC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A488B388(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t a5)
{
  sub_1A488BC3C(0, a3, a4, a5, MEMORY[0x1E697F960]);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A488B40C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1A488BC3C(0, a2, a3, a4, MEMORY[0x1E697F960]);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1A488B4D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A488B748(uint64_t a1, uint64_t a2)
{
  sub_1A488B1D0(0, &qword_1EB122A08, MEMORY[0x1E697F960]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A488B7C8(uint64_t a1)
{
  sub_1A488B1D0(0, &qword_1EB122A08, MEMORY[0x1E697F960]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A488B840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A488B958(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(void))
{
  sub_1A487A084(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A488B9C8(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  sub_1A487A084(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1A488BA24@<X0>(unint64_t *a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = v4;
  v10 = sub_1A5249234();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48788AC(0, a1, a2, MEMORY[0x1E697DCB8]);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v20 - v15;
  sub_1A488BF24(v8, &v20 - v15, a1, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = a3(0);
    return (*(*(v17 - 8) + 32))(a4, v16, v17);
  }

  else
  {
    sub_1A524D254();
    v19 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();

    return (*(v11 + 8))(v13, v10);
  }
}

void sub_1A488BC3C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

size_t sub_1A488BC90(size_t a1, int64_t a2, char a3)
{
  result = sub_1A488BD30(a1, a2, a3, *v3, &unk_1EB120330, sub_1A4879A14, sub_1A4879A14);
  *v3 = result;
  return result;
}

size_t sub_1A488BCE0(size_t a1, int64_t a2, char a3)
{
  result = sub_1A488BD30(a1, a2, a3, *v3, &qword_1EB120368, type metadata accessor for LemonadeEventsFeature.FeedProvider, type metadata accessor for LemonadeEventsFeature.FeedProvider);
  *v3 = result;
  return result;
}

size_t sub_1A488BD30(size_t result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t (*a7)(void))
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

  sub_1A48788AC(0, a5, a6, MEMORY[0x1E69E6F90]);
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

uint64_t sub_1A488BF24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A48788AC(0, a3, a4, MEMORY[0x1E697DCB8]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

float sub_1A488BFA4()
{
  result = -1.0;
  dword_1EB1EB190 = -1082130432;
  return result;
}

int *sub_1A488BFBC()
{
  if (qword_1EB17AE10 != -1)
  {
    swift_once();
  }

  return &dword_1EB1EB190;
}

void sub_1A488C00C()
{
  v1 = v0 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor____lazy_storage___fractionCompletedConsideredAsFinished;
  if (*(v0 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor____lazy_storage___fractionCompletedConsideredAsFinished + 4))
  {
    if (*(v0 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_feature) == 7)
    {
      sub_1A3C52C70(0, &qword_1EB120A48);
      v2 = [swift_getObjCClassFromMetadata() sharedInstance];
      v3 = [v2 indexingBannerPercentageThreshold];

      v4 = v3 / 100.0;
    }

    else
    {
      v4 = 0.8;
    }

    *v1 = v4;
    *(v1 + 4) = 0;
  }
}

uint64_t sub_1A488C230(uint64_t a1)
{
  swift_getKeyPath();
  sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor);
  sub_1A52415D4();

  if (*(v1 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___state) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();

    result = sub_1A488C584();
  }

  if (((1 << *(v1 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_feature)) & 0x4E) == 0)
  {
    result = sub_1A488C8A8();
    if ((v5 & 0x100) == 0 && *(v1 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_monitoringEnabled) == 1)
    {
      return sub_1A488C9C4(result, v5 & 1);
    }
  }

  return result;
}

uint64_t sub_1A488C3D0()
{
  swift_getKeyPath();
  sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor);
  sub_1A52415D4();

  return *(v0 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___state);
}

uint64_t sub_1A488C478(uint64_t result)
{
  if (*(v1 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___state) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor);
    sub_1A52415C4();
  }

  return result;
}

uint64_t sub_1A488C584()
{
  v0 = sub_1A524BEE4();
  v13 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A524BF64();
  v3 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180);
  v6 = sub_1A524D474();
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 1;
  aBlock[4] = sub_1A48923C4;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_115_1;
  v9 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A4891BD0(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v10 = MEMORY[0x1E69E7F60];
  sub_1A48921B4(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AFB0(&qword_1EB12B1B0, &qword_1EB12B1C0, v10);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v5, v2, v9);
  _Block_release(v9);

  (*(v13 + 8))(v2, v0);
  return (*(v3 + 8))(v5, v12);
}

uint64_t sub_1A488C8A8()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (v1 - 4 >= 3)
    {
      return *sub_1A3EC727C();
    }

    else
    {
      return 0;
    }
  }

  else if (v1 - 1 >= 3)
  {
    sub_1A3C52C70(0, &qword_1EB126A10);
    v5 = [swift_getObjCClassFromMetadata() sharedInstance];
    v6 = [v5 useFeatureAvailabilityReporter];

    if (v6)
    {
      return 6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126A10);
    v2 = [swift_getObjCClassFromMetadata() sharedInstance];
    v3 = [v2 useFeatureAvailabilityReporter];

    if (v3)
    {
      return 4;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A488C9C4(uint64_t a1, int a2)
{
  v31 = a2;
  v30 = a1;
  v32 = sub_1A524BEE4();
  v35 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524BF64();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BEC4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_1A524BFC4();
  v28 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  sub_1A3C52C70(0, &qword_1EB12B180);
  v27 = sub_1A524D474();
  sub_1A524BFA4();
  sub_1A488D3CC(v9);
  MEMORY[0x1A5907370](v13, v9);
  (*(v7 + 8))(v9, v6);
  v26 = *(v11 + 8);
  v26(v13, v10);
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v18 = swift_allocObject();
  v19 = v30;
  *(v18 + 16) = v17;
  *(v18 + 24) = v19;
  *(v18 + 32) = v31 & 1;
  aBlock[4] = sub_1A48921A8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_102_4;
  v20 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A4891BD0(&qword_1EB12B1E0, MEMORY[0x1E69E7F60]);
  v21 = MEMORY[0x1E69E7F60];
  sub_1A48921B4(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_1A3C9AFB0(&qword_1EB12B1B0, &qword_1EB12B1C0, v21);
  v22 = v29;
  v23 = v32;
  sub_1A524E224();
  v24 = v27;
  MEMORY[0x1A5908790](v16, v5, v22, v20);
  _Block_release(v20);

  (*(v35 + 8))(v22, v23);
  (*(v33 + 8))(v5, v34);
  return (v26)(v16, v28);
}

uint64_t sub_1A488CEB4(float a1)
{
  swift_getKeyPath();
  sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor);
  sub_1A52415D4();

  if (*(v1 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___progress) != a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();

    return sub_1A488C584();
  }

  return result;
}

float _s12PhotosUICore34LemonadeFeatureAvailabilityMonitorC8progressSfvg_0()
{
  swift_getKeyPath();
  sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor);
  sub_1A52415D4();

  return *(v0 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___progress);
}

void sub_1A488D0B0(float a1)
{
  if (*(v1 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___progress) == a1)
  {
    *(v1 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___progress) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor);
    sub_1A52415C4();
  }
}

uint64_t sub_1A488D1D0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor);
  sub_1A52415D4();

  *a2 = *(v3 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___state);
  return result;
}

uint64_t type metadata accessor for LemonadeFeatureAvailabilityMonitor()
{
  result = qword_1EB17AD40;
  if (!qword_1EB17AD40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

float sub_1A488D2F4@<S0>(uint64_t *a1@<X0>, float *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor);
  sub_1A52415D4();

  result = *(v3 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___progress);
  *a2 = result;
  return result;
}

uint64_t sub_1A488D3CC@<X0>(uint64_t *a1@<X8>)
{
  v3 = MEMORY[0x1E69E7F50];
  sub_1A48921B4(0, &qword_1EB127070, MEMORY[0x1E69E7F50], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15[-v8];
  v10 = OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor____lazy_storage___updateInterval;
  swift_beginAccess();
  sub_1A48922B0(v1 + v10, v9, &qword_1EB127070, v3);
  v11 = sub_1A524BEC4();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1A4891CB0(v9, &qword_1EB127070, MEMORY[0x1E69E7F50]);
  v13 = 28800;
  if (*(v1 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_feature) == 7)
  {
    v13 = 60;
  }

  *a1 = v13;
  (*(v12 + 104))(a1, *MEMORY[0x1E69E7F48], v11);
  (*(v12 + 16))(v6, a1, v11);
  (*(v12 + 56))(v6, 0, 1, v11);
  swift_beginAccess();
  sub_1A4892330(v6, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1A488D628()
{
  v8 = sub_1A524D464();
  v0 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v2 = v7 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A524D414();
  MEMORY[0x1EEE9AC00](v3);
  v4 = sub_1A524BF64();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7[1] = sub_1A3C52C70(0, &qword_1EB12B180);
  sub_1A524BF04();
  v9 = MEMORY[0x1E69E7CC0];
  sub_1A4891BD0(&qword_1EB126AD0, MEMORY[0x1E69E8030]);
  v5 = MEMORY[0x1E69E8030];
  sub_1A48921B4(0, &qword_1EB126E40, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_1A3C9AFB0(&qword_1EB126E30, &qword_1EB126E40, v5);
  sub_1A524E224();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v8);
  result = sub_1A524D4B4();
  qword_1EB17AD60 = result;
  return result;
}

unint64_t sub_1A488D8AC()
{
  result = sub_1A4891A14(MEMORY[0x1E69E7CC0]);
  qword_1EB17AE20 = result;
  return result;
}

id sub_1A488D918(unsigned __int8 *a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = *a1;
  v7 = &v2[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor____lazy_storage___fractionCompletedConsideredAsFinished];
  *v7 = 0;
  v7[4] = 1;
  v8 = OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_observable;
  *&v2[v8] = [objc_allocWithZone(off_1E77217D8) init];
  *&v2[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___state] = 0;
  if (qword_1EB17AE10 != -1)
  {
    swift_once();
  }

  *&v2[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___progress] = dword_1EB1EB190;
  *&v2[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_availabilityReporter] = 0;
  *&v2[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_highlightAnalysisStatus] = 0;
  v9 = &v2[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_highlightAnalysisObservation];
  *v9 = 0;
  v9[1] = 0;
  v2[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_monitoringEnabled] = 1;
  v10 = OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor____lazy_storage___updateInterval;
  v11 = sub_1A524BEC4();
  (*(*(v11 - 8) + 56))(&v2[v10], 1, 1, v11);
  sub_1A5241604();
  v2[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_feature] = v6;
  *&v2[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_photoLibrary] = a2;
  v22.receiver = v2;
  v22.super_class = ObjectType;
  v12 = a2;
  v13 = objc_msgSendSuper2(&v22, sel_init);
  if (v6 == 7)
  {
    sub_1A488DC40(v12);
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB126A10);
    v14 = [swift_getObjCClassFromMetadata() sharedInstance];
    if ([v14 forceShowProcessingUI] & 1) != 0 || (objc_msgSend(v14, sel_forceHideProcessingUI))
    {

      v12 = v14;
    }

    else
    {
      v15 = [objc_opt_self() sharedScheduler];
      v16 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = v6;
      *(v17 + 24) = v16;
      *(v17 + 32) = v12;
      v21[4] = sub_1A4890948;
      v21[5] = v17;
      v21[0] = MEMORY[0x1E69E9820];
      v21[1] = 1107296256;
      v21[2] = sub_1A3C2E0D0;
      v21[3] = &block_descriptor_291;
      v18 = _Block_copy(v21);
      v19 = v12;

      [v15 scheduleMainQueueTask_];

      _Block_release(v18);
      v12 = v15;
    }
  }

  return v13;
}

void sub_1A488DC40(uint64_t a1)
{
  sub_1A48921B4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21[-v4];
  v6 = *(v1 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_feature);
  if (v6 > 3)
  {
    if (v6 - 4 >= 3)
    {
      v9 = *sub_1A3EC727C();
      goto LABEL_10;
    }
  }

  else
  {
    if (v6 - 1 < 3)
    {
      sub_1A3C52C70(0, &qword_1EB126A10);
      v7 = [swift_getObjCClassFromMetadata() sharedInstance];
      v8 = [v7 useFeatureAvailabilityReporter];

      if (!v8)
      {
        return;
      }

      v9 = 4;
      goto LABEL_10;
    }

    sub_1A3C52C70(0, &qword_1EB126A10);
    v13 = [swift_getObjCClassFromMetadata() sharedInstance];
    v14 = [v13 useFeatureAvailabilityReporter];

    if (v14)
    {
      v9 = 6;
LABEL_10:
      v10 = [objc_allocWithZone(MEMORY[0x1E69789D0]) initWithPhotoLibrary_];
      v11 = 0;
      v12 = &OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_availabilityReporter;
      goto LABEL_11;
    }
  }

  v10 = [objc_opt_self() sharedStatusForLibrary_];
  v9 = 0;
  v11 = 1;
  v12 = &OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_highlightAnalysisStatus;
LABEL_11:
  v15 = *v12;
  v16 = *(v1 + v15);
  *(v1 + v15) = v10;

  v23 = v1;
  v22 = v1;
  sub_1A52415B4();
  v17 = *(v1 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_highlightAnalysisStatus);
  if (v17)
  {
    swift_allocObject();
    swift_unknownObjectWeakInit();
    v17;

    sub_1A524D1A4();
  }

  if (v11)
  {
    sub_1A488F4A0();
  }

  else
  {
    v18 = sub_1A524CCB4();
    (*(*(v18 - 8) + 56))(v5, 1, 1, v18);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v19;
    v20[5] = v9;
    sub_1A3DCC930(0, 0, v5, &unk_1A536C2E0, v20);
  }
}

uint64_t static LemonadeFeatureAvailabilityMonitor.sharedStatus(feature:for:)(char *a1, void *a2)
{
  v4 = *a1;
  v13 = 0;
  if (qword_1EB17AD58 != -1)
  {
    swift_once();
  }

  v5 = qword_1EB17AD60;
  v6 = swift_allocObject();
  *(v6 + 16) = v2;
  *(v6 + 24) = v4;
  *(v6 + 32) = a2;
  *(v6 + 40) = &v13;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1A48909BC;
  *(v7 + 24) = v6;
  aBlock[4] = sub_1A3C7146C;
  aBlock[5] = v7;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C71444;
  aBlock[3] = &block_descriptor_14_8;
  v8 = _Block_copy(aBlock);
  v9 = a2;

  dispatch_sync(v5, v8);
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
  }

  else
  {
    v11 = v13;
    if (v13)
    {

      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A488E180()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A4092F30();
  (*(v1 + 16))(v3, v4, v0);
  v5 = sub_1A524D224();
  v6 = sub_1A5246F04();
  if (os_log_type_enabled(v6, v5))
  {
    v7 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v7 = 136315138;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong || (v9 = Strong, swift_getKeyPath(), v13 = v9, sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor), sub_1A52415D4(), , v10 = *&v9[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___state], v9, !v10) || v10 == 2 || v10 == 1)
    {
      sub_1A3C2EF94();
    }

    v13 = v10;
    result = sub_1A524EB44();
    __break(1u);
  }

  else
  {

    return (*(v1 + 8))(v3, v0);
  }

  return result;
}

uint64_t LemonadeProcessingFeatureState.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x616974696E696E55;
    case 2:
      return 0x64656873696E6946;
    case 1:
      return 0x69737365636F7250;
  }

  result = sub_1A524EB44();
  __break(1u);
  return result;
}

void sub_1A488E50C()
{
  sub_1A48921B4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v14 - v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_feature);
    if (v5 > 3)
    {
      if (v5 - 4 >= 3)
      {
        v8 = *sub_1A3EC727C();
        goto LABEL_12;
      }
    }

    else
    {
      if (v5 - 1 < 3)
      {
        sub_1A3C52C70(0, &qword_1EB126A10);
        v6 = [swift_getObjCClassFromMetadata() sharedInstance];
        v7 = [v6 useFeatureAvailabilityReporter];

        if (v7)
        {
          v8 = 4;
LABEL_12:
          v11 = sub_1A524CCB4();
          (*(*(v11 - 8) + 56))(v2, 1, 1, v11);
          v12 = swift_allocObject();
          swift_unknownObjectWeakInit();
          v13 = swift_allocObject();
          v13[2] = 0;
          v13[3] = 0;
          v13[4] = v12;
          v13[5] = v8;
          sub_1A3DCC930(0, 0, v2, &unk_1A536C350, v13);

          return;
        }

LABEL_8:

        return;
      }

      sub_1A3C52C70(0, &qword_1EB126A10);
      v9 = [swift_getObjCClassFromMetadata() sharedInstance];
      v10 = [v9 useFeatureAvailabilityReporter];

      if (v10)
      {
        v8 = 6;
        goto LABEL_12;
      }
    }

    sub_1A488F4A0();
    goto LABEL_8;
  }
}

uint64_t sub_1A488E760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A488E780, 0, 0);
}

uint64_t sub_1A488E780()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = sub_1A488E870;
    v3 = v0[6];

    return sub_1A488EA4C(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1A488E870()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1A488E9E8;
  }

  else
  {
    v2 = sub_1A488E984;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A488E984()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A488E9E8()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A488EA4C(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = sub_1A5246F24();
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  sub_1A48921B4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v2[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A488EB74, 0, 0);
}

uint64_t sub_1A488EB74()
{
  v1 = *(v0[20] + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_availabilityReporter);
  v0[26] = v1;
  if (v1)
  {
    v2 = v0[19];
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1A488EF44;
    v3 = swift_continuation_init();
    sub_1A403E2DC();
    v0[17] = v4;
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1A4039D80;
    v0[13] = &block_descriptor_37_6;
    v0[14] = v3;
    [v1 availabilityForFeature:v2 completionHandler:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v6 = v0[22];
    v5 = v0[23];
    v7 = v0[21];
    v8 = sub_1A4092F30();
    (*(v6 + 16))(v5, v8, v7);
    LOBYTE(v7) = sub_1A524D244();
    v9 = sub_1A5246F04();
    if (os_log_type_enabled(v9, v7))
    {
      v10 = swift_slowAlloc();
      swift_slowAlloc();
      *v10 = 136315138;
      sub_1A3C2EF94();
    }

    v12 = v0[22];
    v11 = v0[23];
    v13 = v0[21];

    (*(v12 + 8))(v11, v13);

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1A488EF44()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1A488F408;
  }

  else
  {
    v2 = sub_1A488F054;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A488F054()
{
  v1 = v0[18];
  v2 = v0[19];
  v3 = *sub_1A3EC727C();
  v4 = v0[25];
  if (v3 == v2)
  {
    v5 = sub_1A524CCB4();
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A524CC54();

    v7 = v1;
    v8 = sub_1A524CC44();
    v9 = swift_allocObject();
    v10 = MEMORY[0x1E69E85E0];
    v9[2] = v8;
    v9[3] = v10;
    v9[4] = v6;
    v9[5] = v7;

    v11 = &unk_1A536C318;
    v12 = v4;
    v13 = v9;
  }

  else
  {
    v14 = [v1 isAvailable];
    v15 = sub_1A524CCB4();
    (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1A524CC54();

    v17 = sub_1A524CC44();
    v18 = v0[25];
    if (v14)
    {
      v19 = swift_allocObject();
      v20 = MEMORY[0x1E69E85E0];
      v19[2] = v17;
      v19[3] = v20;
      v19[4] = v16;

      v21 = &unk_1A536C308;
    }

    else
    {
      v19 = swift_allocObject();
      v22 = MEMORY[0x1E69E85E0];
      v19[2] = v17;
      v19[3] = v22;
      v19[4] = v16;

      v21 = &unk_1A536C2F8;
    }

    v11 = v21;
    v12 = v18;
    v13 = v19;
  }

  sub_1A3EA52F4(0, 0, v12, v11, v13);
  v23 = v0[24];
  v24 = v0[21];
  v25 = v0[22];

  v26 = sub_1A4092F30();
  (*(v25 + 16))(v23, v26, v24);
  v27 = sub_1A524D224();
  v28 = v1;
  v29 = sub_1A5246F04();
  v30 = os_log_type_enabled(v29, v27);
  v31 = v0[26];
  if (v30)
  {
    v32 = swift_slowAlloc();
    *v32 = 67109120;
    *(v32 + 4) = [v28 isAvailable];

    _os_log_impl(&dword_1A3C1C000, v29, v27, "Feature availability: %{BOOL}d", v32, 8u);
    MEMORY[0x1A590EEC0](v32, -1, -1);
  }

  else
  {

    v28 = v31;
  }

  (*(v0[22] + 8))(v0[24], v0[21]);

  v33 = v0[1];

  return v33();
}

uint64_t sub_1A488F408()
{
  v1 = *(v0 + 208);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1A488F4A0()
{
  v1 = sub_1A5246F24();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A48921B4(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v26 - v6;
  v8 = *(v0 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor_highlightAnalysisStatus);
  if (v8)
  {
    v26[0] = v8;
    v9 = [v26[0] state];
    if (v9 == 1)
    {
      v20 = sub_1A524CCB4();
      (*(*(v20 - 8) + 56))(v7, 1, 1, v20);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1A524CC54();

      v22 = sub_1A524CC44();
      v23 = swift_allocObject();
      v24 = MEMORY[0x1E69E85E0];
      v23[2] = v22;
      v23[3] = v24;
      v23[4] = v21;

      sub_1A3D4D930(0, 0, v7, &unk_1A536C330, v23);
    }

    else if (v9 == 2)
    {
      v10 = sub_1A524CCB4();
      (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
      v11 = swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_1A524CC54();
      v12 = v26[0];

      v13 = sub_1A524CC44();
      v14 = swift_allocObject();
      v15 = MEMORY[0x1E69E85E0];
      v14[2] = v13;
      v14[3] = v15;
      v14[4] = v11;
      v14[5] = v12;

      sub_1A3EA52F4(0, 0, v7, &unk_1A536C340, v14);
    }

    else
    {
      v25 = v26[0];
    }
  }

  else
  {
    v16 = sub_1A4092F30();
    (*(v2 + 16))(v4, v16, v1);
    v17 = sub_1A524D244();
    v18 = sub_1A5246F04();
    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v26[1] = swift_slowAlloc();
      *v19 = 136315138;
      sub_1A3C2EF94();
    }

    (*(v2 + 8))(v4, v1);
  }
}

unint64_t LemonadeProcessingFeature.description.getter()
{
  v1 = *v0;
  v2 = 0x656C706F6550;
  v3 = 0x2064657461727543;
  if (v1 != 6)
  {
    v3 = 0x686372616553;
  }

  v4 = 0x7370697254;
  if (v1 != 4)
  {
    v4 = 0x73746E657645;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x7370756F7247;
  if (v1 != 2)
  {
    v5 = 0x2065736F62726556;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1A488FB14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1A524CC54();
  v5[8] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A488FBB0, v7, v6);
}

uint64_t sub_1A488FBB0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(v0 + 56) progress];
    sub_1A488FC60(v2);
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A488FC60(float a1)
{
  sub_1A488C00C();
  if (v3 >= a1)
  {
    swift_getKeyPath();
    sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor);
    sub_1A52415D4();

    if (*(v1 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___progress) == a1)
    {
      v5 = 1;
      return sub_1A488C230(v5);
    }

    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1A52415C4();

    v5 = 1;
LABEL_10:
    sub_1A488C584();
    return sub_1A488C230(v5);
  }

  if (qword_1EB17AE10 != -1)
  {
    swift_once();
  }

  v4 = *&dword_1EB1EB190;
  swift_getKeyPath();
  sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor);
  sub_1A52415D4();

  if (*(v1 + OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___progress) != v4)
  {
    v6 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v6);
    sub_1A52415C4();

    v5 = 2;
    goto LABEL_10;
  }

  v5 = 2;
  return sub_1A488C230(v5);
}

uint64_t sub_1A488FF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_1A524CC54();
  *(v4 + 72) = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A488FFBC, v6, v5);
}

uint64_t sub_1A488FFBC()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (qword_1EB17AE10 != -1)
    {
      swift_once();
    }

    v3 = *&dword_1EB1EB190;
    swift_getKeyPath();
    *(v0 + 40) = v2;
    sub_1A4891BD0(&qword_1EB1295C8, type metadata accessor for LemonadeFeatureAvailabilityMonitor);
    sub_1A52415D4();

    if (*&v2[OBJC_IVAR___PXLemonadeFeatureAvailabilityMonitor___progress] != v3)
    {
      swift_getKeyPath();
      v4 = swift_task_alloc();
      *(v4 + 16) = v2;
      *(v4 + 24) = v3;
      *(v0 + 40) = v2;
      sub_1A52415C4();

      sub_1A488C584();
    }
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    sub_1A488C230(2);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1A48901C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  sub_1A524CC54();
  v5[8] = sub_1A524CC44();
  v7 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A4890264, v7, v6);
}

uint64_t sub_1A4890264()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [*(v0 + 56) fractionOfAllAssetsWithMediaAnalysisInSearchIndex];
    *&v2 = v2;
    sub_1A488FC60(*&v2);
  }

  **(v0 + 40) = Strong == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A4890318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A48903B0, v6, v5);
}

uint64_t sub_1A48903B0()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1A488C230(2);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A4890450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_1A524CC54();
  v4[7] = sub_1A524CC44();
  v6 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A48904E8, v6, v5);
}

uint64_t sub_1A48904E8()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    sub_1A488C230(1);
  }

  **(v0 + 40) = Strong == 0;
  v2 = *(v0 + 8);

  return v2();
}