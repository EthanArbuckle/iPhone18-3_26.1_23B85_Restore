unint64_t sub_26C08FE58()
{
  result = qword_280B5A8E0;
  if (!qword_280B5A8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B5A8E0);
  }

  return result;
}

unint64_t sub_26C08FEBC()
{
  result = qword_2804794B0;
  if (!qword_2804794B0)
  {
    type metadata accessor for Statement();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804794B0);
  }

  return result;
}

unint64_t sub_26C08FF10(uint64_t a1)
{
  result = sub_26C08FEBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26C08FF3C()
{
  result = qword_2804794B8;
  if (!qword_2804794B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804794C0, &qword_26C0ACD80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804794B8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Cursor(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 16))
  {
    return (*a1 + 2);
  }

  if (*a1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t storeEnumTagSinglePayload for Cursor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    if (a3 >= 2)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

uint64_t + infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  return sub_26C06F45C(a1, a2, &qword_280479410, &qword_26C0AC868, 31868, sub_26C085EB8);
}

{
  return sub_26C06F45C(a1, a2, &qword_280479430, &qword_26C0AC888, 31868, sub_26C085F08);
}

uint64_t + infix(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  return sub_26C090278(a1, a2, a3, &qword_280479410, &qword_26C0AC868, sub_26C085EB8);
}

{
  return sub_26C090278(a1, a2, a3, &qword_280479430, &qword_26C0AC888, sub_26C085F08);
}

uint64_t + infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479430, &qword_26C0AC888);
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v5;
  v13[1] = v4;
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479410, &qword_26C0AC868);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  sub_26C085F08(inited, 1, 31868, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479410, &qword_26C0AC868);
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v5;
  v13[1] = v4;
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479430, &qword_26C0AC888);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  sub_26C085F08(inited, 1, 31868, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_26C090278(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v15[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v15[4] = &protocol witness table for Expression<A>;
  v15[0] = v10;
  v15[1] = v9;
  v15[2] = v11;
  v14[3] = MEMORY[0x277D837D0];
  v14[4] = &protocol witness table for String;
  v14[0] = a2;
  v14[1] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v15, inited + 32);
  sub_26C06B6BC(v14, inited + 72);

  a6(inited, 1, 31868, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t + infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C090438(a1, a2, 0, a3);
}

{
  return sub_26C090614(a1, a2, 0, a3);
}

{
  return sub_26C090710(a1, a2, 0, a3);
}

{
  return sub_26C09154C(a1, a2, 0, a3);
}

uint64_t + infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C090518(a1, a2, a3, a4, 0, a5);
}

{
  return sub_26C0907FC(a1, a2, a3, a4, 0, a5);
}

uint64_t - infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C090438(a1, a2, 1, a3);
}

{
  return sub_26C090614(a1, a2, 1, a3);
}

{
  return sub_26C090710(a1, a2, 1, a3);
}

{
  return sub_26C09154C(a1, a2, 1, a3);
}

uint64_t - infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C090518(a1, a2, a3, a4, 1, a5);
}

{
  return sub_26C0907FC(a1, a2, a3, a4, 1, a5);
}

uint64_t * infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C090438(a1, a2, 5, a3);
}

{
  return sub_26C090614(a1, a2, 5, a3);
}

{
  return sub_26C090710(a1, a2, 5, a3);
}

{
  return sub_26C09154C(a1, a2, 5, a3);
}

uint64_t * infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C090518(a1, a2, a3, a4, 5, a5);
}

{
  return sub_26C0907FC(a1, a2, a3, a4, 5, a5);
}

uint64_t / infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C090438(a1, a2, 6, a3);
}

{
  return sub_26C090614(a1, a2, 6, a3);
}

{
  return sub_26C090710(a1, a2, 6, a3);
}

{
  return sub_26C09154C(a1, a2, 6, a3);
}

uint64_t sub_26C090438@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W5>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v15 = type metadata accessor for Expression();
  v16 = &protocol witness table for Expression<A>;
  v14[0] = v7;
  v14[1] = v6;
  v14[2] = v8;
  v13[3] = v15;
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v10;
  v13[1] = v9;
  v13[2] = v11;

  sub_26C06E7EC(v14, v13, 1, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t / infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C090518(a1, a2, a3, a4, 6, a5);
}

{
  return sub_26C0907FC(a1, a2, a3, a4, 6, a5);
}

uint64_t sub_26C090518@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W5>, uint64_t *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  v18[3] = type metadata accessor for Expression();
  v18[4] = &protocol witness table for Expression<A>;
  v18[0] = v12;
  v18[1] = v11;
  v18[2] = v13;
  v14 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);

  sub_26C06E7EC(v18, v17, 1, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_26C090614@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W5>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  sub_26C0ABAF0();
  v14[3] = type metadata accessor for Expression();
  v14[4] = &protocol witness table for Expression<A>;
  v14[0] = v6;
  v14[1] = v5;
  v14[2] = v7;
  v13[3] = type metadata accessor for Expression();
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v9;
  v13[1] = v8;
  v13[2] = v10;

  sub_26C06E7EC(v14, v13, 1, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_26C090710@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W5>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  sub_26C0ABAF0();
  v15 = type metadata accessor for Expression();
  v16 = &protocol witness table for Expression<A>;
  v14[0] = v7;
  v14[1] = v6;
  v14[2] = v8;
  v13[3] = v15;
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v10;
  v13[1] = v9;
  v13[2] = v11;

  sub_26C06E7EC(v14, v13, 1, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_26C0907FC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W5>, uint64_t *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  sub_26C0ABAF0();
  v18[3] = type metadata accessor for Expression();
  v18[4] = &protocol witness table for Expression<A>;
  v18[0] = v12;
  v18[1] = v11;
  v18[2] = v13;
  v14 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);

  sub_26C06E7EC(v18, v17, 1, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t % infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C0909A8(a1, a2, 7, a3);
}

{
  return sub_26C090A90(a1, a2, 7, a3);
}

{
  return sub_26C090B8C(a1, a2, 7, a3);
}

{
  return sub_26C0919CC(a1, a2, 7, a3);
}

uint64_t % infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06D4A0(a1, a2, a3, a4, 7, a5);
}

{
  return sub_26C090C78(a1, a2, a3, a4, 7, a5);
}

uint64_t << infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C0909A8(a1, a2, 8, a3);
}

{
  return sub_26C090A90(a1, a2, 8, a3);
}

{
  return sub_26C090B8C(a1, a2, 8, a3);
}

{
  return sub_26C0919CC(a1, a2, 8, a3);
}

uint64_t << infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06D4A0(a1, a2, a3, a4, 8, a5);
}

{
  return sub_26C090C78(a1, a2, a3, a4, 8, a5);
}

uint64_t >> infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C0909A8(a1, a2, 9, a3);
}

{
  return sub_26C090A90(a1, a2, 9, a3);
}

{
  return sub_26C090B8C(a1, a2, 9, a3);
}

{
  return sub_26C0919CC(a1, a2, 9, a3);
}

uint64_t >> infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06D4A0(a1, a2, a3, a4, 9, a5);
}

{
  return sub_26C090C78(a1, a2, a3, a4, 9, a5);
}

uint64_t & infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C0909A8(a1, a2, 10, a3);
}

{
  return sub_26C090A90(a1, a2, 10, a3);
}

{
  return sub_26C090B8C(a1, a2, 10, a3);
}

{
  return sub_26C0919CC(a1, a2, 10, a3);
}

uint64_t | infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C0909A8(a1, a2, 11, a3);
}

{
  return sub_26C090A90(a1, a2, 11, a3);
}

{
  return sub_26C090B8C(a1, a2, 11, a3);
}

{
  return sub_26C0919CC(a1, a2, 11, a3);
}

uint64_t sub_26C0909A8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W4>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v15 = type metadata accessor for Expression();
  v16 = &protocol witness table for Expression<A>;
  v14[0] = v7;
  v14[1] = v6;
  v14[2] = v8;
  v13[3] = v15;
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v10;
  v13[1] = v9;
  v13[2] = v11;

  sub_26C06E7EC(v14, v13, 1, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t | infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06D4A0(a1, a2, a3, a4, 11, a5);
}

{
  return sub_26C090C78(a1, a2, a3, a4, 11, a5);
}

uint64_t sub_26C090A90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W4>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v9 = *a2;
  v8 = a2[1];
  v10 = a2[2];
  sub_26C0ABAF0();
  v14[3] = type metadata accessor for Expression();
  v14[4] = &protocol witness table for Expression<A>;
  v14[0] = v6;
  v14[1] = v5;
  v14[2] = v7;
  v13[3] = type metadata accessor for Expression();
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v9;
  v13[1] = v8;
  v13[2] = v10;

  sub_26C06E7EC(v14, v13, 1, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_26C090B8C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W4>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  sub_26C0ABAF0();
  v15 = type metadata accessor for Expression();
  v16 = &protocol witness table for Expression<A>;
  v14[0] = v7;
  v14[1] = v6;
  v14[2] = v8;
  v13[3] = v15;
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v10;
  v13[1] = v9;
  v13[2] = v11;

  sub_26C06E7EC(v14, v13, 1, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t sub_26C090C78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v12 = *a1;
  v11 = a1[1];
  v13 = a1[2];
  sub_26C0ABAF0();
  v18[3] = type metadata accessor for Expression();
  v18[4] = &protocol witness table for Expression<A>;
  v18[0] = v12;
  v18[1] = v11;
  v18[2] = v13;
  v14 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);

  sub_26C06E7EC(v18, v17, 1, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(v17);
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t ^ infix<A>(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_26C090E80(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

{
  return sub_26C090E80(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

{
  return sub_26C090E80(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

{
  return sub_26C090E80(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

uint64_t ^ infix<A>(_:_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return sub_26C091074(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

{
  return sub_26C091074(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

uint64_t sub_26C090E80(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *, uint64_t *), void (*a6)(uint64_t *__return_ptr, uint64_t *, uint64_t), void (*a7)(uint64_t *__return_ptr, uint64_t *, void *, uint64_t), void (*a8)(uint64_t *, uint64_t *, uint64_t))
{
  v11 = a1[1];
  v12 = a1[2];
  v13 = *a2;
  v14 = a2[1];
  v15 = a2[2];
  v29 = *a1;
  v10 = v29;
  v30 = v11;
  v31 = v12;
  v23 = v13;
  v24 = v14;
  v25 = v15;
  a5(&v26, &v29, &v23);
  v23 = v26;
  v24 = v27;
  v25 = v28;
  a6(&v29, &v23, a3);

  v26 = v29;
  v27 = v30;
  v28 = v31;
  v20 = v10;
  v21 = v11;
  v22 = v12;
  v19[0] = v13;
  v19[1] = v14;
  v19[2] = v15;
  a7(&v23, &v20, v19, a3);
  v20 = v23;
  v21 = v24;
  v22 = v25;
  a8(&v26, &v20, a3);
}

uint64_t sub_26C091074(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t *), void (*a6)(uint64_t *__return_ptr, uint64_t *, uint64_t), void (*a7)(uint64_t *__return_ptr, uint64_t *, uint64_t, uint64_t, uint64_t), void (*a8)(uint64_t *, uint64_t *, uint64_t))
{
  v13 = a1[1];
  v15 = a1[2];
  v27 = *a1;
  v14 = v27;
  v28 = v13;
  v29 = v15;
  a5(&v24, &v27);
  v21 = v24;
  v22 = v25;
  v23 = v26;
  a6(&v27, &v21, a3);

  v24 = v27;
  v25 = v28;
  v26 = v29;
  v18 = v14;
  v19 = v13;
  v20 = v15;
  a7(&v21, &v18, a2, a3, a4);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  a8(&v24, &v18, a3);
}

uint64_t sub_26C0911AC@<X0>(void *a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v5 = sub_26C06E8B8(a2);
  sub_26C06E288(a1, v5, v6, a3);
}

uint64_t + infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  return sub_26C0913C0(a1, a2, a3, &qword_280479410, &qword_26C0AC868, sub_26C085EB8);
}

{
  return sub_26C0913C0(a1, a2, a3, &qword_280479430, &qword_26C0AC888, sub_26C085F08);
}

uint64_t sub_26C0913C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, void (*a6)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v8 = *a3;
  v7 = a3[1];
  v9 = a3[2];
  v13[3] = MEMORY[0x277D837D0];
  v13[4] = &protocol witness table for String;
  v13[0] = a1;
  v13[1] = a2;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  a6(inited, 1, 31868, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t + infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091648(a1, a2, a3, a4, 0, a5);
}

{
  return sub_26C091740(a1, a2, a3, a4, 0, a5);
}

uint64_t - infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091648(a1, a2, a3, a4, 1, a5);
}

{
  return sub_26C091740(a1, a2, a3, a4, 1, a5);
}

uint64_t * infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091648(a1, a2, a3, a4, 5, a5);
}

{
  return sub_26C091740(a1, a2, a3, a4, 5, a5);
}

uint64_t sub_26C09154C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W5>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v14[3] = type metadata accessor for Expression();
  v14[4] = &protocol witness table for Expression<A>;
  v14[0] = v7;
  v14[1] = v6;
  v14[2] = v8;
  sub_26C0ABAF0();
  v13[3] = type metadata accessor for Expression();
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v10;
  v13[1] = v9;
  v13[2] = v11;

  sub_26C06E7EC(v14, v13, 1, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t / infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091648(a1, a2, a3, a4, 6, a5);
}

{
  return sub_26C091740(a1, a2, a3, a4, 6, a5);
}

uint64_t sub_26C091648@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W5>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v16[3] = type metadata accessor for Expression();
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v11;
  v16[1] = v10;
  v16[2] = v12;

  sub_26C06E7EC(v17, v16, 1, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_26C091740@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W5>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_26C0ABAF0();
  v16[3] = type metadata accessor for Expression();
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v11;
  v16[1] = v10;
  v16[2] = v12;

  sub_26C06E7EC(v17, v16, 1, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t - prefix<A>(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v7[3] = type metadata accessor for Expression();
  v7[4] = &protocol witness table for Expression<A>;
  v7[0] = v4;
  v7[1] = v3;
  v7[2] = v5;

  sub_26C0911AC(v7, 1, a2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  sub_26C0ABAF0();
  v7[3] = type metadata accessor for Expression();
  v7[4] = &protocol witness table for Expression<A>;
  v7[0] = v4;
  v7[1] = v3;
  v7[2] = v5;

  sub_26C0911AC(v7, 1, a2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t % infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091AC8(a1, a2, a3, a4, 7, a5);
}

{
  return sub_26C091BC0(a1, a2, a3, a4, 7, a5);
}

uint64_t << infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091AC8(a1, a2, a3, a4, 8, a5);
}

{
  return sub_26C091BC0(a1, a2, a3, a4, 8, a5);
}

uint64_t >> infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091AC8(a1, a2, a3, a4, 9, a5);
}

{
  return sub_26C091BC0(a1, a2, a3, a4, 9, a5);
}

uint64_t & infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091AC8(a1, a2, a3, a4, 10, a5);
}

{
  return sub_26C091BC0(a1, a2, a3, a4, 10, a5);
}

uint64_t sub_26C0919CC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char a3@<W4>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v14[3] = type metadata accessor for Expression();
  v14[4] = &protocol witness table for Expression<A>;
  v14[0] = v7;
  v14[1] = v6;
  v14[2] = v8;
  sub_26C0ABAF0();
  v13[3] = type metadata accessor for Expression();
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v10;
  v13[1] = v9;
  v13[2] = v11;

  sub_26C06E7EC(v14, v13, 1, a3, a4);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return __swift_destroy_boxed_opaque_existential_1(v14);
}

uint64_t | infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C091AC8(a1, a2, a3, a4, 11, a5);
}

{
  return sub_26C091BC0(a1, a2, a3, a4, 11, a5);
}

uint64_t sub_26C091AC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v16[3] = type metadata accessor for Expression();
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v11;
  v16[1] = v10;
  v16[2] = v12;

  sub_26C06E7EC(v17, v16, 1, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_26C091BC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t *a6@<X8>)
{
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v13 = *(a4 + 8);
  v17[3] = a3;
  v17[4] = v13;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v17);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_26C0ABAF0();
  v16[3] = type metadata accessor for Expression();
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v11;
  v16[1] = v10;
  v16[2] = v12;

  sub_26C06E7EC(v17, v16, 1, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t ~ prefix<A>(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v7[3] = type metadata accessor for Expression();
  v7[4] = &protocol witness table for Expression<A>;
  v7[0] = v4;
  v7[1] = v3;
  v7[2] = v5;

  sub_26C0911AC(v7, 12, a2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  sub_26C0ABAF0();
  v7[3] = type metadata accessor for Expression();
  v7[4] = &protocol witness table for Expression<A>;
  v7[0] = v4;
  v7[1] = v3;
  v7[2] = v5;

  sub_26C0911AC(v7, 12, a2);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

uint64_t ^ infix<A>(_:_:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_26C091EE0(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

{
  return sub_26C091EE0(a1, a2, a3, a4, & infix<A>(_:_:), ~ prefix<A>(_:), | infix<A>(_:_:), & infix<A>(_:_:));
}

uint64_t sub_26C091EE0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t *__return_ptr, uint64_t, uint64_t *), void (*a6)(uint64_t *__return_ptr, uint64_t *, uint64_t), void (*a7)(uint64_t *__return_ptr, uint64_t, uint64_t *, uint64_t, uint64_t), void (*a8)(uint64_t *, uint64_t *, uint64_t))
{
  v13 = a2[1];
  v15 = a2[2];
  v27 = *a2;
  v14 = v27;
  v28 = v13;
  v29 = v15;
  a5(&v24, a1, &v27);
  v21 = v24;
  v22 = v25;
  v23 = v26;
  a6(&v27, &v21, a3);

  v24 = v27;
  v25 = v28;
  v26 = v29;
  v18 = v14;
  v19 = v13;
  v20 = v15;
  a7(&v21, a1, &v18, a3, a4);
  v18 = v21;
  v19 = v22;
  v20 = v23;
  a8(&v24, &v18, a3);
}

uint64_t == infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 61, 0xE100000000000000, a5);
}

{
  return sub_26C09275C(a1, a2, a3, a4, 61, 0xE100000000000000, 21321, a5, 0xE200000000000000);
}

uint64_t === infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C071FFC(a1, a2, 21321, 0xE200000000000000, a3);
}

{
  return sub_26C092CF0(a1, a2, 21321, 0xE200000000000000, a3);
}

{
  return sub_26C092E5C(a1, a2, 21321, 0xE200000000000000, a3);
}

{
  return sub_26C092FC8(a1, a2, 21321, 0xE200000000000000, a3);
}

uint64_t === infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 21321, 0xE200000000000000, a5);
}

{
  return sub_26C0922B4(a1, a2, a3, a4, 21321, 0xE200000000000000, 21321, a5, 0xE200000000000000);
}

uint64_t === infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 21321, 0xE200000000000000, a5);
}

{
  return sub_26C09275C(a1, a2, a3, a4, 21321, 0xE200000000000000, 21321, a5, 0xE200000000000000);
}

uint64_t != infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C071FFC(a1, a2, 15649, 0xE200000000000000, a3);
}

{
  return sub_26C092CF0(a1, a2, 15649, 0xE200000000000000, a3);
}

{
  return sub_26C092E5C(a1, a2, 15649, 0xE200000000000000, a3);
}

{
  return sub_26C092FC8(a1, a2, 15649, 0xE200000000000000, a3);
}

uint64_t != infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 15649, 0xE200000000000000, a5);
}

{
  return sub_26C09275C(a1, a2, a3, a4, 15649, 0xE200000000000000, 0x544F4E205349, a5, 0xE600000000000000);
}

uint64_t !== infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C071FFC(a1, a2, 0x544F4E205349, 0xE600000000000000, a3);
}

{
  return sub_26C092CF0(a1, a2, 0x544F4E205349, 0xE600000000000000, a3);
}

{
  return sub_26C092E5C(a1, a2, 0x544F4E205349, 0xE600000000000000, a3);
}

{
  return sub_26C092FC8(a1, a2, 0x544F4E205349, 0xE600000000000000, a3);
}

uint64_t !== infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, a5);
}

{
  return sub_26C0922B4(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, 0x544F4E205349, a5, 0xE600000000000000);
}

uint64_t sub_26C0922B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v36 = a6;
  v37 = a7;
  v35 = a5;
  v39 = a4;
  v40 = a8;
  v12 = sub_26C0ABAF0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v34 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v20 = *(a3 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x28223BE20](v17);
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1[1];
  v38 = *a1;
  v25 = a1[2];
  (*(v13 + 16))(v19, a2, v12);
  if ((*(v20 + 48))(v19, 1, a3) == 1)
  {
    (*(v13 + 8))(v19, v12);
    v26 = type metadata accessor for Expression();
    v47 = v26;
    v48 = &protocol witness table for Expression<A>;
    v44 = v38;
    v45 = v24;
    v46 = v25;
    v27 = v34;
    (*(v20 + 56))(v34, 1, 1, a3);
    v42 = v26;
    v43 = &protocol witness table for Expression<A>;

    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    ExpressionType<>.init(value:)(v27, v26, WitnessTable, v39, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    sub_26C06B6BC(&v44, inited + 32);
    sub_26C06B6BC(v41, inited + 72);
    sub_26C085EE0(inited, 1, v37, a9, v40);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  else
  {
    (*(v20 + 32))(v23, v19, a3);
    v47 = type metadata accessor for Expression();
    v48 = &protocol witness table for Expression<A>;
    v44 = v38;
    v45 = v24;
    v46 = v25;
    v30 = *(v39 + 8);
    v42 = a3;
    v43 = v30;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v41);
    (*(v20 + 16))(boxed_opaque_existential_1, v23, a3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_26C0AC580;
    sub_26C06B6BC(&v44, v32 + 32);
    sub_26C06B6BC(v41, v32 + 72);

    sub_26C085EE0(v32, 1, v35, v36, v40);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    (*(v20 + 8))(v23, a3);
  }

  __swift_destroy_boxed_opaque_existential_1(v41);
  return __swift_destroy_boxed_opaque_existential_1(&v44);
}

uint64_t !== infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, a5);
}

{
  return sub_26C09275C(a1, a2, a3, a4, 0x544F4E205349, 0xE600000000000000, 0x544F4E205349, a5, 0xE600000000000000);
}

uint64_t sub_26C09275C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v35 = a6;
  v36 = a7;
  v34 = a5;
  v38 = a4;
  v40 = a8;
  v12 = sub_26C0ABAF0();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v34 - v19;
  v21 = *(a3 - 8);
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v18);
  v24 = &v34 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a2[1];
  v37 = *a2;
  v39 = v25;
  v26 = a2[2];
  (*(v13 + 16))(v20, a1, v12);
  if ((*(v21 + 48))(v20, 1, a3) == 1)
  {
    (*(v13 + 8))(v20, v12);
    v27 = type metadata accessor for Expression();
    (*(v21 + 56))(v17, 1, 1, a3);
    v47 = v27;
    v48 = &protocol witness table for Expression<A>;
    WitnessTable = swift_getWitnessTable();
    swift_getWitnessTable();
    ExpressionType<>.init(value:)(v17, v27, WitnessTable, v38, v46);
    v44 = v27;
    v45 = &protocol witness table for Expression<A>;
    v41 = v37;
    v42 = v39;
    v43 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    sub_26C06B6BC(v46, inited + 32);
    sub_26C06B6BC(&v41, inited + 72);

    sub_26C085EE0(inited, 1, v36, a9, v40);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  else
  {
    (*(v21 + 32))(v24, v20, a3);
    v30 = *(v38 + 8);
    v47 = a3;
    v48 = v30;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v46);
    (*(v21 + 16))(boxed_opaque_existential_1, v24, a3);
    v44 = type metadata accessor for Expression();
    v45 = &protocol witness table for Expression<A>;
    v41 = v37;
    v42 = v39;
    v43 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    v32 = swift_initStackObject();
    *(v32 + 16) = xmmword_26C0AC580;
    sub_26C06B6BC(v46, v32 + 32);
    sub_26C06B6BC(&v41, v32 + 72);

    sub_26C085EE0(v32, 1, v34, v35, v40);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    (*(v21 + 8))(v24, a3);
  }

  __swift_destroy_boxed_opaque_existential_1(&v41);
  return __swift_destroy_boxed_opaque_existential_1(v46);
}

uint64_t > infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C071FFC(a1, a2, 62, 0xE100000000000000, a3);
}

{
  return sub_26C092CF0(a1, a2, 62, 0xE100000000000000, a3);
}

{
  return sub_26C092E5C(a1, a2, 62, 0xE100000000000000, a3);
}

{
  return sub_26C092FC8(a1, a2, 62, 0xE100000000000000, a3);
}

uint64_t > infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 62, 0xE100000000000000, a5);
}

{
  return sub_26C093130(a1, a2, a3, a4, 62, 0xE100000000000000, a5);
}

uint64_t > infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 62, 0xE100000000000000, a5);
}

{
  return sub_26C093428(a1, a2, a3, a4, 62, 0xE100000000000000, a5);
}

uint64_t >= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C071FFC(a1, a2, 15678, 0xE200000000000000, a3);
}

{
  return sub_26C092CF0(a1, a2, 15678, 0xE200000000000000, a3);
}

{
  return sub_26C092E5C(a1, a2, 15678, 0xE200000000000000, a3);
}

{
  return sub_26C092FC8(a1, a2, 15678, 0xE200000000000000, a3);
}

uint64_t >= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 15678, 0xE200000000000000, a5);
}

{
  return sub_26C093130(a1, a2, a3, a4, 15678, 0xE200000000000000, a5);
}

uint64_t >= infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 15678, 0xE200000000000000, a5);
}

{
  return sub_26C093428(a1, a2, a3, a4, 15678, 0xE200000000000000, a5);
}

uint64_t < infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C071FFC(a1, a2, 60, 0xE100000000000000, a3);
}

{
  return sub_26C092CF0(a1, a2, 60, 0xE100000000000000, a3);
}

{
  return sub_26C092E5C(a1, a2, 60, 0xE100000000000000, a3);
}

{
  return sub_26C092FC8(a1, a2, 60, 0xE100000000000000, a3);
}

uint64_t < infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 60, 0xE100000000000000, a5);
}

{
  return sub_26C093130(a1, a2, a3, a4, 60, 0xE100000000000000, a5);
}

uint64_t < infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 60, 0xE100000000000000, a5);
}

{
  return sub_26C093428(a1, a2, a3, a4, 60, 0xE100000000000000, a5);
}

uint64_t <= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  return sub_26C071FFC(a1, a2, 15676, 0xE200000000000000, a3);
}

{
  return sub_26C092CF0(a1, a2, 15676, 0xE200000000000000, a3);
}

{
  return sub_26C092E5C(a1, a2, 15676, 0xE200000000000000, a3);
}

{
  return sub_26C092FC8(a1, a2, 15676, 0xE200000000000000, a3);
}

uint64_t sub_26C092CF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  v17[3] = type metadata accessor for Expression();
  v17[4] = &protocol witness table for Expression<A>;
  v17[0] = v8;
  v17[1] = v7;
  v17[2] = v9;
  sub_26C0ABAF0();
  v16[3] = type metadata accessor for Expression();
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v11;
  v16[1] = v10;
  v16[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v17, inited + 32);
  sub_26C06B6BC(v16, inited + 72);

  sub_26C085EE0(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_26C092E5C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v11 = *a2;
  v10 = a2[1];
  v12 = a2[2];
  sub_26C0ABAF0();
  v17[3] = type metadata accessor for Expression();
  v17[4] = &protocol witness table for Expression<A>;
  v17[0] = v8;
  v17[1] = v7;
  v17[2] = v9;
  v16[3] = type metadata accessor for Expression();
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v11;
  v16[1] = v10;
  v16[2] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v17, inited + 32);
  sub_26C06B6BC(v16, inited + 72);

  sub_26C085EE0(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t sub_26C092FC8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t *a5@<X8>)
{
  v9 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v12 = *a2;
  v11 = a2[1];
  v13 = a2[2];
  sub_26C0ABAF0();
  v18 = type metadata accessor for Expression();
  v19 = &protocol witness table for Expression<A>;
  v17[0] = v9;
  v17[1] = v8;
  v17[2] = v10;
  v16[3] = v18;
  v16[4] = &protocol witness table for Expression<A>;
  v16[0] = v12;
  v16[1] = v11;
  v16[2] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v17, inited + 32);
  sub_26C06B6BC(v16, inited + 72);

  sub_26C085EE0(inited, 1, a3, a4, a5);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v16);
  return __swift_destroy_boxed_opaque_existential_1(v17);
}

uint64_t <= infix<A>(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C06DFDC(a1, a2, a3, a4, 15676, 0xE200000000000000, a5);
}

{
  return sub_26C093130(a1, a2, a3, a4, 15676, 0xE200000000000000, a5);
}

uint64_t sub_26C093130@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v14 = *a1;
  v13 = a1[1];
  v15 = a1[2];
  sub_26C0ABAF0();
  v21[3] = type metadata accessor for Expression();
  v21[4] = &protocol witness table for Expression<A>;
  v21[0] = v14;
  v21[1] = v13;
  v21[2] = v15;
  v16 = *(a4 + 8);
  v20[3] = a3;
  v20[4] = v16;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a2, a3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v21, inited + 32);
  sub_26C06B6BC(v20, inited + 72);

  sub_26C085EE0(inited, 1, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v20);
  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t <= infix<A>(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  return sub_26C0932B4(a1, a2, a3, a4, 15676, 0xE200000000000000, a5);
}

{
  return sub_26C093428(a1, a2, a3, a4, 15676, 0xE200000000000000, a5);
}

uint64_t sub_26C0932B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = *(a4 + 8);
  v20[3] = a3;
  v20[4] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  v19[3] = type metadata accessor for Expression();
  v19[4] = &protocol witness table for Expression<A>;
  v19[0] = v13;
  v19[1] = v12;
  v19[2] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v20, inited + 32);
  sub_26C06B6BC(v19, inited + 72);

  sub_26C06E254(inited, 1, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t sub_26C093428@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t *a7@<X8>)
{
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v15 = *(a4 + 8);
  v20[3] = a3;
  v20[4] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v20);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_1, a1, a3);
  sub_26C0ABAF0();
  v19[3] = type metadata accessor for Expression();
  v19[4] = &protocol witness table for Expression<A>;
  v19[0] = v13;
  v19[1] = v12;
  v19[2] = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v20, inited + 32);
  sub_26C06B6BC(v19, inited + 72);

  sub_26C085EE0(inited, 1, a5, a6, a7);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v19);
  return __swift_destroy_boxed_opaque_existential_1(v20);
}

void *sub_26C0935A0@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v16 = a1[2];

  sub_26C0ABB30();

  MEMORY[0x26D69A890](0xD000000000000010, 0x800000026C0AE280);
  v15 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  v10 = *(a3 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v10(a2, a3);
  v13 = *(sub_26C0AB820() + 36);
  *(inited + 96) = AssociatedTypeWitness;
  *(inited + 104) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 72));
  v10(a2, a3);
  result = sub_26C085C94(inited);
  *a4 = v7;
  a4[1] = v15;
  a4[2] = v16;
  return result;
}

void *sub_26C093764@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  sub_26C0ABB30();

  MEMORY[0x26D69A890](0x4E41203F203D3E20, 0xEA00000000002044);
  MEMORY[0x26D69A890](v6, v7);
  MEMORY[0x26D69A890](1059077152, 0xE400000000000000);
  v17 = v7;
  v18 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC5C0;
  v10 = *(a3 + 56);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(inited + 56) = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(inited + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v10(a2, a3);
  v20 = v8;

  sub_26C085C94(inited);

  sub_26C085C94(v13);
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_26C0AC5C0;
  v15 = *(sub_26C0ABA80() + 36);
  *(v14 + 56) = AssociatedTypeWitness;
  *(v14 + 64) = AssociatedConformanceWitness;
  __swift_allocate_boxed_opaque_existential_1((v14 + 32));
  v10(a2, a3);
  result = sub_26C085C94(v14);
  *a4 = v18;
  a4[1] = v17;
  a4[2] = v20;
  return result;
}

void *~= infix<A>(_:_:)@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, void *a4@<X8>)
{
  return sub_26C093A14(a1, a2, a3, 0x3F203D3C20, a4, 0xE500000000000000);
}

{
  return sub_26C093A14(a1, a2, a3, 1059077152, a4, 0xE400000000000000);
}

{
  return sub_26C093A14(a1, a2, a3, 0x3F203D3E20, a4, 0xE500000000000000);
}

void *sub_26C093A14@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X7>, void *a5@<X8>, uint64_t a6)
{
  v10 = a1[2];
  v14 = *a1;
  v15 = a1[1];

  MEMORY[0x26D69A890](a4, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC5C0;
  v12 = *(a3 + 56);
  *(inited + 56) = swift_getAssociatedTypeWitness();
  *(inited + 64) = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v12(a2, a3);
  result = sub_26C085C94(inited);
  *a5 = v14;
  a5[1] = v15;
  a5[2] = v10;
  return result;
}

uint64_t sub_26C093B6C(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v17 = &protocol witness table for Expression<A>;
  v15[0] = v7;
  v15[1] = v6;
  v15[2] = v8;
  v14[3] = v16;
  v14[4] = &protocol witness table for Expression<A>;
  v14[0] = v10;
  v14[1] = v9;
  v14[2] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v15, inited + 32);
  sub_26C06B6BC(v14, inited + 72);

  a5(inited, 1, 4476481, 0xE300000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v14);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t && infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v5;
  v13[1] = v4;
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  sub_26C085EE0(inited, 1, 4476481, 0xE300000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v5;
  v13[1] = v4;
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  sub_26C085EE0(inited, 1, 4476481, 0xE300000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t && infix(_:_:)(uint64_t *a1, char a2)
{
  return sub_26C093FE4(a1, a2, &qword_280479390, &qword_26C0AD880, sub_26C06E254);
}

{
  return sub_26C093FE4(a1, a2, &qword_280479398, &qword_26C0AC610, sub_26C085EE0);
}

uint64_t sub_26C093FE4(uint64_t *a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v8;
  v13[1] = v7;
  v13[2] = v9;
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12[3] = MEMORY[0x277D839B0];
  v12[4] = &protocol witness table for Bool;
  LOBYTE(v12[0]) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  a5(inited, 1, 4476481, 0xE300000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t && infix(_:_:)(char a1, uint64_t *a2)
{
  return sub_26C09416C(a1, a2, &qword_280479390, &qword_26C0AD880, sub_26C06E254);
}

{
  return sub_26C09416C(a1, a2, &qword_280479398, &qword_26C0AC610, sub_26C085EE0);
}

uint64_t sub_26C09416C(char a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v12[3] = MEMORY[0x277D839B0];
  v12[4] = &protocol witness table for Bool;
  LOBYTE(v12[0]) = a1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11[4] = &protocol witness table for Expression<A>;
  v11[0] = v7;
  v11[1] = v6;
  v11[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v12, inited + 32);
  sub_26C06B6BC(v11, inited + 72);

  a5(inited, 1, 4476481, 0xE300000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t sub_26C0942A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_26C08D8D8(a1);
  sub_26C06E254(v7, 1, a2, a3, a4);
}

uint64_t || infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  return sub_26C06F45C(a1, a2, &qword_280479390, &qword_26C0AD880, 21071, sub_26C06E254);
}

{
  return sub_26C06F45C(a1, a2, &qword_280479398, &qword_26C0AC610, 21071, sub_26C085EE0);
}

uint64_t || infix(_:_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v5;
  v13[1] = v4;
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  sub_26C085EE0(inited, 1, 21071, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v5;
  v13[1] = v4;
  v13[2] = v6;
  v12[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
  v12[4] = &protocol witness table for Expression<A>;
  v12[0] = v8;
  v12[1] = v7;
  v12[2] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  sub_26C085EE0(inited, 1, 21071, 0xE200000000000000, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t || infix(_:_:)(uint64_t *a1, char a2)
{
  return sub_26C094634(a1, a2, &qword_280479390, &qword_26C0AD880, sub_26C06E254);
}

{
  return sub_26C094634(a1, a2, &qword_280479398, &qword_26C0AC610, sub_26C085EE0);
}

uint64_t sub_26C094634(uint64_t *a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];
  v13[4] = &protocol witness table for Expression<A>;
  v13[0] = v8;
  v13[1] = v7;
  v13[2] = v9;
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v12[3] = MEMORY[0x277D839B0];
  v12[4] = &protocol witness table for Bool;
  LOBYTE(v12[0]) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v13, inited + 32);
  sub_26C06B6BC(v12, inited + 72);

  a5(inited, 1, 21071, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v12);
  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t || infix(_:_:)(char a1, uint64_t *a2)
{
  return sub_26C0947B8(a1, a2, &qword_280479390, &qword_26C0AD880, sub_26C06E254);
}

{
  return sub_26C0947B8(a1, a2, &qword_280479398, &qword_26C0AC610, sub_26C085EE0);
}

uint64_t sub_26C0947B8(char a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, void (*a5)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v12[3] = MEMORY[0x277D839B0];
  v12[4] = &protocol witness table for Bool;
  LOBYTE(v12[0]) = a1;
  v11[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v11[4] = &protocol witness table for Expression<A>;
  v11[0] = v7;
  v11[1] = v6;
  v11[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC580;
  sub_26C06B6BC(v12, inited + 32);
  sub_26C06B6BC(v11, inited + 72);

  a5(inited, 1, 21071, 0xE200000000000000);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  swift_arrayDestroy();
  __swift_destroy_boxed_opaque_existential_1(v11);
  return __swift_destroy_boxed_opaque_existential_1(v12);
}

uint64_t ! prefix(_:)(uint64_t *a1)
{
  return sub_26C094958(a1, &qword_280479390, &qword_26C0AD880, sub_26C06E24C);
}

{
  return sub_26C094958(a1, &qword_280479398, &qword_26C0AC610, sub_26C06E24C);
}

uint64_t sub_26C094958(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(uint64_t *, uint64_t, unint64_t))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v9[3] = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9[4] = &protocol witness table for Expression<A>;
  v9[0] = v6;
  v9[1] = v5;
  v9[2] = v7;

  a4(v9, 542396238, 0xE400000000000000);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

double sub_26C094A50@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

uint64_t sub_26C094AD8@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_26C094BC8(uint64_t *a1, uint64_t *a2)
{
  swift_beginAccess();
  v4 = *a1;
  v5 = *a2;

  return v4;
}

uint64_t sub_26C094C2C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  swift_beginAccess();
  v8 = *a4;
  *a3 = a1;
  *a4 = a2;
}

uint64_t sub_26C094D24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  swift_beginAccess();
  v6 = *a3;
  v7 = *a4;

  return v6;
}

void Connection.createFunction(_:argumentCount:deterministic:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  if (a4)
  {
    v14 = -1;
  }

  else
  {
    v14 = a3;
    if (a3 < 0)
    {
LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
      return;
    }
  }

  v15 = swift_allocObject();
  v15[2] = a6;
  v15[3] = a7;
  aBlock[4] = sub_26C097AA8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26C097C9C;
  aBlock[3] = &block_descriptor;
  v16 = _Block_copy(aBlock);

  if (a5)
  {
    v17 = 2049;
  }

  else
  {
    v17 = 1;
  }

  swift_beginAccess();
  v18 = *(v8 + 16);
  if (!v18)
  {
    goto LABEL_17;
  }

  if (v14 > 0x7FFFFFFF)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = sub_26C0AB8B0();
  sqlite3_create_function_v2(v18, (v19 + 32), v14, v17, v16, sub_26C097D24, 0, 0, 0);

  swift_beginAccess();
  if (!*(*(v8 + 72) + 16) || (sub_26C06772C(a1, a2), (v20 & 1) == 0))
  {
    swift_endAccess();
    v21 = sub_26C099074(MEMORY[0x277D84F90]);
    swift_beginAccess();

    v22 = *(v8 + 72);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v8 + 72);
    *(v8 + 72) = 0x8000000000000000;
    sub_26C098C54(v21, a1, a2, isUniquelyReferenced_nonNull_native);

    *(v8 + 72) = v30;
  }

  swift_endAccess();
  swift_beginAccess();
  v25 = sub_26C097D7C(aBlock, a1, a2);
  if (*v24)
  {
    v26 = v24;
    _Block_copy(v16);
    v27 = *v26;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v26;
    *v26 = 0x8000000000000000;
    sub_26C098B08(v16, v14, v28);
    *v26 = v29;
  }

  (v25)(aBlock, 0);
  swift_endAccess();
  _Block_release(v16);
}

uint64_t Connection.handle.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0950CC@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  switch(result)
  {
    case 9:
      *a2 = 2;
      break;
    case 0x12:
      *a2 = 0;
      break;
    case 0x17:
      *a2 = 1;
      break;
    default:
      sub_26C0ABB30();

      v2 = sub_26C0ABC60();
      MEMORY[0x26D69A890](v2);

      result = sub_26C0ABBE0();
      __break(1u);
      break;
  }

  return result;
}

uint64_t Connection.Operation.hashValue.getter()
{
  v1 = *v0;
  sub_26C0ABD60();
  MEMORY[0x26D69AD00](v1);
  return sub_26C0ABD80();
}

uint64_t Connection.__allocating_init(_:readonly:)(void *a1, int a2)
{
  v4 = swift_allocObject();
  Connection.init(_:readonly:)(a1, a2);
  return v4;
}

uint64_t Connection.init(_:readonly:)(void *a1, int a2)
{
  v26 = a2;
  v25 = sub_26C0ABAC0();
  v23 = *(v25 - 8);
  v4 = *(v23 + 64);
  MEMORY[0x28223BE20](v25);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26C0AB7D0();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = sub_26C0ABA90();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v11 = a1[1];
  v22[2] = *a1;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  v12 = (v2 + 16);
  *(v2 + 48) = 0u;
  v13 = MEMORY[0x277D84F98];
  *(v2 + 64) = 0;
  *(v2 + 72) = v13;
  *(v2 + 80) = v13;
  v22[1] = sub_26C06CD30();
  v27 = MEMORY[0x277D84F90];
  sub_26C099168();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804794E0, &qword_26C0AD050);
  sub_26C0991C0();
  sub_26C0ABB00();
  sub_26C0AB7C0();
  (*(v23 + 104))(v6, *MEMORY[0x277D85260], v25);
  *(v2 + 88) = sub_26C0ABAE0();
  *(v2 + 96) = 0;
  *(v2 + 104) = 1;
  if (v26)
  {
    v14 = 65537;
  }

  else
  {
    v14 = 65542;
  }

  v15 = sub_26C0AB8B0();

  swift_beginAccess();
  v16 = v24;
  v17 = sqlite3_open_v2((v15 + 32), v12, v14, 0);
  swift_endAccess();

  v18 = v29;
  sub_26C0678E0(v17, 0);
  if (v18)
  {
  }

  else
  {
    v19 = qword_280B5AF70;
    v20 = *(v16 + 88);
    if (v19 != -1)
    {
      swift_once();
    }

    v27 = sub_26C06CD98();
    v28 = 0;
    sub_26C0ABAB0();
  }

  return v16;
}

uint64_t Connection.Location.description.getter()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *v0;
  }

  if (v1 != 1)
  {
    v3 = v0[1];
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x3A79726F6D656D3ALL;
  }

  sub_26C099224(*v0, v1);
  return v4;
}

uint64_t Connection.__allocating_init(_:readonly:)(uint64_t a1, uint64_t a2, int a3)
{
  v6[1] = a2;
  v6[0] = a1;
  v4 = swift_allocObject();
  Connection.init(_:readonly:)(v6, a3);
  return v4;
}

sqlite3 *Connection.deinit()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    sqlite3_close(result);
    _Block_release(*(v0 + 32));
    _Block_release(*(v0 + 40));
    _Block_release(*(v0 + 48));
    _Block_release(*(v0 + 56));
    _Block_release(*(v0 + 64));
    v2 = *(v0 + 72);

    v3 = *(v0 + 80);

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Connection.__deallocating_deinit()
{
  Connection.deinit();

  return swift_deallocClassInstance();
}

sqlite3 *Connection.readonly.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return (sqlite3_db_readonly(result, 0) == 1);
  }

  __break(1u);
  return result;
}

sqlite3 *Connection.lastInsertRowid.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    return sqlite3_last_insert_rowid(result);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C095868(int (*a1)(void))
{
  swift_beginAccess();
  result = *(v1 + 16);
  if (result)
  {
    return a1();
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Connection.execute(_:)(Swift::String a1)
{
  sub_26C06CD30();
  if (qword_280B5AF70 != -1)
  {
    swift_once();
  }

  sub_26C0ABAA0();
  v2 = sub_26C06CD98();
  if ((v8 & 1) != 0 || v7 != v2)
  {
    v6 = *(v1 + 88);
    sub_26C0ABAD0();
  }

  else
  {
    swift_beginAccess();
    v3 = *(v1 + 16);
    if (v3)
    {
      v4 = sub_26C0AB8B0();
      v5 = sqlite3_exec(v3, (v4 + 32), 0, 0, 0);

      sub_26C0678E0(v5, 0);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_26C095A28@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  result = swift_beginAccess();
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = sub_26C0AB8B0();
    v8 = sqlite3_exec(v6, (v7 + 32), 0, 0, 0);

    result = sub_26C0678E0(v8, 0);
    if (!v2)
    {
      *a2 = v8;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Connection.prepare(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  type metadata accessor for Statement();
  swift_allocObject();

  v7 = sub_26C066FF0(v6);

  if (v5 && !v3)
  {
    v8 = sub_26C06A5F0(a3);

    return v8;
  }

  return v7;
}

{
  v5 = v3;
  type metadata accessor for Statement();
  swift_allocObject();

  sub_26C066FF0(v7);

  if (!v4)
  {
    v5 = sub_26C06A5F0(a3);
  }

  return v5;
}

{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_26C066FF0(v5);

  if (!v3)
  {
    v7 = Statement.bind(_:)(a3);

    return v7;
  }

  return result;
}

sqlite3 *Connection.run(_:_:)(uint64_t a1, uint64_t a2, sqlite3 *a3)
{
  return sub_26C095D14(a1, a2, a3);
}

{
  return Connection.run(_:_:)(a1, a2, a3);
}

sqlite3 *sub_26C095D14(uint64_t a1, uint64_t a2, sqlite3 *a3)
{
  type metadata accessor for Statement();
  swift_allocObject();

  sub_26C066FF0(v5);

  if (!v3)
  {
    a3 = Statement.run(_:)(a3);
  }

  return a3;
}

sqlite3 *Connection.run(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for Statement();
  v6 = swift_allocObject();

  v8 = v6;
  sub_26C066FF0(v7);

  if (!v4)
  {
    Statement.bind(_:)(a3);
    v8 = Statement.run(_:)(MEMORY[0x277D84F90]);
  }

  return v8;
}

sqlite3 *Connection.vacuum()()
{
  v1 = v0;
  type metadata accessor for Statement();
  swift_allocObject();

  sub_26C066FF0(v2);

  if (!v0)
  {
    v1 = Statement.run(_:)(MEMORY[0x277D84F90]);
  }

  return v1;
}

uint64_t Connection.scalar(_:_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_26C095F94(a1, a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v10[14] = *MEMORY[0x277D85DE8];
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_26C066FF0(v5);

  if (!v2)
  {
    v7 = Statement.bind(_:)(a1);
    swift_beginAccess();
    sqlite3_reset(*(v7 + 16));
    Statement.step()();
    if (!v8)
    {
      Statement.row.getter(v10);
      Cursor.subscript.getter(0, a2);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return result;
}

{
  v4 = *MEMORY[0x277D85DE8];
  result = Connection.scalar(_:_:)(a1, a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26C095F94@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v11[14] = *MEMORY[0x277D85DE8];
  type metadata accessor for Statement();
  swift_initStackObject();

  sub_26C066FF0(v5);

  if (!v2)
  {
    v7 = sub_26C06A5F0(a1);
    swift_beginAccess();
    v8 = *(v7 + 16);

    sqlite3_reset(v8);
    Statement.step()();
    if (!v9)
    {
      Statement.row.getter(v11);
      Cursor.subscript.getter(0, a2);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
  return result;
}

SwiftSQLite::Connection::TransactionMode_optional __swiftcall Connection.TransactionMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_26C0ABC20();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t Connection.TransactionMode.rawValue.getter()
{
  v1 = 0x54414944454D4D49;
  if (*v0 != 1)
  {
    v1 = 0x564953554C435845;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4445525245464544;
  }
}

uint64_t sub_26C0962D8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x54414944454D4D49;
  if (v2 != 1)
  {
    v3 = 0x564953554C435845;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x4445525245464544;
  }

  if (v2)
  {
    v5 = 0xE900000000000045;
  }

  else
  {
    v5 = 0xE800000000000000;
  }

  v6 = 0x54414944454D4D49;
  if (*a2 != 1)
  {
    v6 = 0x564953554C435845;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x4445525245464544;
  }

  if (*a2)
  {
    v8 = 0xE900000000000045;
  }

  else
  {
    v8 = 0xE800000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26C0ABC70();
  }

  return v9 & 1;
}

uint64_t sub_26C0963CC()
{
  v1 = *v0;
  sub_26C0ABD60();
  sub_26C0AB8D0();

  return sub_26C0ABD80();
}

uint64_t sub_26C096478()
{
  *v0;
  *v0;
  sub_26C0AB8D0();
}

uint64_t sub_26C096510()
{
  v1 = *v0;
  sub_26C0ABD60();
  sub_26C0AB8D0();

  return sub_26C0ABD80();
}

void sub_26C0965C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x54414944454D4D49;
  if (v2 != 1)
  {
    v4 = 0x564953554C435845;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x4445525245464544;
  }

  if (!v5)
  {
    v3 = 0xE900000000000045;
  }

  *a1 = v6;
  a1[1] = v3;
}

uint64_t Connection.savepoint(_:block:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v15[2] = *MEMORY[0x277D85DE8];
  v6 = sub_26C067104(39, 0xE100000000000000);
  strcpy(v15, "SAVEPOINT ");
  BYTE3(v15[1]) = 0;
  HIDWORD(v15[1]) = -369098752;
  MEMORY[0x26D69A890](v6);

  v8 = v15[0];
  v7 = v15[1];
  strcpy(v15, "RELEASE ");
  MEMORY[0x26D69A890](v8, v7);
  strcpy(v15, "ROLLBACK TO ");
  HIWORD(v15[1]) = -5120;
  MEMORY[0x26D69A890](v8, v7);
  sub_26C06CD30();
  if (qword_280B5AF70 != -1)
  {
    swift_once();
  }

  sub_26C0ABAA0();
  v9 = sub_26C06CD98();
  if ((v15[1] & 1) != 0 || v15[0] != v9)
  {
    v11 = *(v3 + 88);
    sub_26C0ABAD0();
  }

  else
  {
    type metadata accessor for Statement();
    swift_initStackObject();

    sub_26C066FF0(v10);
    if (!v4)
    {

      Statement.run(_:)(MEMORY[0x277D84F90]);

      a3(v14);
      swift_initStackObject();

      sub_26C066FF0(v3);

      Statement.run(_:)(MEMORY[0x277D84F90]);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return result;
}

Swift::Void __swiftcall Connection.interrupt()()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  if (v1)
  {
    sqlite3_interrupt(v1);
  }

  else
  {
    __break(1u);
  }
}

sqlite3 *Connection.busyTimeout.setter(double a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
  swift_beginAccess();
  result = *(v1 + 16);
  if (!result)
  {
    goto LABEL_9;
  }

  v4 = a1 * 1000.0;
  if (COERCE__INT64(fabs(a1 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v4 > -2147483650.0)
  {
    if (v4 < 2147483650.0)
    {
      return sqlite3_busy_timeout(result, v4);
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

sqlite3 *(*Connection.busyTimeout.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_26C096BC0;
}

sqlite3 *sub_26C096BC0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if (a2)
  {
    return result;
  }

  v5 = *(a1 + 24);
  swift_beginAccess();
  result = *(v5 + 16);
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = *(*(a1 + 24) + 24) * 1000.0;
  if (COERCE__INT64(fabs(v6)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (v6 <= -2147483650.0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v6 >= 2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  return sqlite3_busy_timeout(result, v6);
}

void Connection.busyHandler(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v10[4] = sub_26C099258;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_26C096DEC;
    v10[3] = &block_descriptor_7;
    v6 = _Block_copy(v10);
    sub_26C0732F4(a1);

    swift_beginAccess();
    v7 = *(v2 + 16);
    if (v7)
    {
      sqlite3_busy_handler(v7, sub_26C096E3C, v6);
      sub_26C073304(a1);
LABEL_6:
      v9 = *(v2 + 32);
      *(v2 + 32) = v6;
      _Block_release(v9);
      return;
    }

    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = *(v2 + 16);
    if (v8)
    {
      sqlite3_busy_handler(v8, 0, 0);
      v6 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_26C096DEC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = v4(a2);

  return v5;
}

void sub_26C096E4C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v10[4] = sub_26C09971C;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_26C096FB4;
    v10[3] = &block_descriptor_54;
    v6 = _Block_copy(v10);
    sub_26C0732F4(a1);

    swift_beginAccess();
    v7 = *(v2 + 16);
    if (v7)
    {
      sqlite3_trace_v2(v7, 1u, sub_26C097008, v6);
      sub_26C073304(a1);
LABEL_6:
      v9 = *(v2 + 40);
      *(v2 + 40) = v6;
      _Block_release(v9);
      return;
    }

    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = *(v2 + 16);
    if (v8)
    {
      sqlite3_trace_v2(v8, 0, 0, 0);
      v6 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_26C096FB4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_26C097008(int a1, uint64_t a2, sqlite3_stmt *pStmt)
{
  if (pStmt)
  {
    v4 = sqlite3_expanded_sql(pStmt);
    if (v4)
    {
      v5 = v4;
      (*(a2 + 16))(a2, v4);
      sqlite3_free(v5);
    }
  }

  return 0;
}

void Connection.updateHook(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v10[4] = sub_26C099288;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_26C097268;
    v10[3] = &block_descriptor_13;
    v6 = _Block_copy(v10);
    sub_26C0732F4(a1);

    swift_beginAccess();
    v7 = *(v2 + 16);
    if (v7)
    {
      sqlite3_update_hook(v7, sub_26C0972E0, v6);
      sub_26C073304(a1);
LABEL_6:
      v9 = *(v2 + 48);
      *(v2 + 48) = v6;
      _Block_release(v9);
      return;
    }

    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = *(v2 + 16);
    if (v8)
    {
      sqlite3_update_hook(v8, 0, 0);
      v6 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_26C0971C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  sub_26C0950CC(a1, &v13);
  v7 = sub_26C0AB910();
  v9 = v8;
  v10 = sub_26C0AB910();
  a5(&v13, v7, v9, v10, v11, a4);
}

uint64_t sub_26C097268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 32);
  v9 = *(a1 + 40);

  v10(a2, a3, a4, a5);
}

uint64_t sub_26C0972E0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    if (a4)
    {
      return (*(result + 16))();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void Connection.commitHook(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v10[4] = sub_26C099290;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_26C09745C;
    v10[3] = &block_descriptor_19;
    v6 = _Block_copy(v10);
    sub_26C0732F4(a1);

    swift_beginAccess();
    v7 = *(v2 + 16);
    if (v7)
    {
      sqlite3_commit_hook(v7, sub_26C09749C, v6);
      sub_26C073304(a1);
LABEL_6:
      v9 = *(v2 + 56);
      *(v2 + 56) = v6;
      _Block_release(v9);
      return;
    }

    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = *(v2 + 16);
    if (v8)
    {
      sqlite3_commit_hook(v8, 0, 0);
      v6 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_26C09745C(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v4 = v1(v3);

  return v4;
}

void Connection.rollbackHook(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
    v10[4] = sub_26C0992E4;
    v10[5] = v5;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_26C097608;
    v10[3] = &block_descriptor_25;
    v6 = _Block_copy(v10);
    sub_26C0732F4(a1);

    swift_beginAccess();
    v7 = *(v2 + 16);
    if (v7)
    {
      sqlite3_rollback_hook(v7, sub_26C09764C, v6);
      sub_26C073304(a1);
LABEL_6:
      v9 = *(v2 + 64);
      *(v2 + 64) = v6;
      _Block_release(v9);
      return;
    }

    __break(1u);
  }

  else
  {
    swift_beginAccess();
    v8 = *(v2 + 16);
    if (v8)
    {
      sqlite3_rollback_hook(v8, 0, 0);
      v6 = 0;
      goto LABEL_6;
    }
  }

  __break(1u);
}

uint64_t sub_26C097608(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_26C097658(uint64_t a1, int a2, uint64_t a3, void (*a4)(void *__return_ptr, void), int a5)
{
  if (a2 < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v5 = a1;
  v8 = MEMORY[0x277D84F90];
  if (a2)
  {
    v23 = a4;
    v10 = a2;
    v26[0] = MEMORY[0x277D84F90];
    v6 = v26;
    sub_26C088980(0, a2, 0);
    v11 = 0;
    v8 = v26[0];
    v5 = 40;
    while (v10 != v11)
    {
      v25[0] = v11;
      sub_26C097AB0(v25, a3, &v28);
      v26[0] = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        v6 = v26;
        sub_26C088980((v12 > 1), v13 + 1, 1);
        v8 = v26[0];
      }

      ++v11;
      *(v8 + 16) = v13 + 1;
      v14 = v8 + 40 * v13;
      v15 = v28;
      v16 = v29;
      *(v14 + 64) = v30;
      *(v14 + 32) = v15;
      *(v14 + 48) = v16;
      if (v10 == v11)
      {
        a4 = v23;
        v5 = a1;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_9:
  LODWORD(v6) = a5;
  a4(&v28, v8);
  sub_26C06DF6C(&v28, v26);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {

      LODWORD(v6) = v25[0];
      v17 = *(v25[0] + 16);
      if (v17 >> 31)
      {
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      sqlite3_result_blob(v5, (v25[0] + 32), v17, 0);

      return sub_26C071BDC(&v28);
    }
  }

  else
  {
    sub_26C071BDC(v26);
  }

  sub_26C06DF6C(&v28, v26);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {

      sqlite3_result_double(v5, *v25);
      return sub_26C071BDC(&v28);
    }
  }

  else
  {
    sub_26C071BDC(v26);
  }

  sub_26C06DF6C(&v28, v26);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {

      sqlite3_result_int64(v5, v25[0]);
      return sub_26C071BDC(&v28);
    }
  }

  else
  {
    sub_26C071BDC(v26);
  }

  sub_26C06DF6C(&v28, v26);
  if (v27)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479438, &unk_26C0ACEA0);
    if (swift_dynamicCast())
    {

      v18 = sub_26C0AB8E0();
      if (v18 >= 0xFFFFFFFF80000000)
      {
        LODWORD(v6) = v18;
        if (v18 <= 0x7FFFFFFF)
        {
          if (qword_280B5AF20 == -1)
          {
LABEL_27:
            v19 = qword_280B5B228;
            v20 = sub_26C0AB8B0();

            sqlite3_result_text(v5, (v20 + 32), v6, v19);

            return sub_26C071BDC(&v28);
          }

LABEL_37:
          swift_once();
          goto LABEL_27;
        }

LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

LABEL_35:
      __break(1u);
      goto LABEL_36;
    }
  }

  else
  {
    sub_26C071BDC(v26);
  }

  if (!*(&v29 + 1))
  {

    sqlite3_result_null(v5);
    return sub_26C071BDC(&v28);
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  sub_26C0ABB30();

  v25[0] = 0xD000000000000019;
  v25[1] = 0x800000026C0AE470;
  sub_26C06DF6C(&v28, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  v22 = sub_26C0AB890();
  MEMORY[0x26D69A890](v22);

  result = sub_26C0ABBE0();
  __break(1u);
  return result;
}

void sub_26C097AB0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a2)
  {
    __break(1u);
    goto LABEL_17;
  }

  v4 = *(a2 + 8 * *a1);
  v5 = sqlite3_value_type(v4);
  if (v5 > 2)
  {
    if (v5 != 3)
    {
      if (v5 == 5)
      {
        *(a3 + 32) = 0;
        *a3 = 0u;
        *(a3 + 16) = 0u;
        return;
      }

      if (v5 != 4)
      {
        goto LABEL_19;
      }

      v9 = sqlite3_value_blob(v4);
      if (v9)
      {
        v10 = v9;
        v11 = sqlite3_value_bytes(v4);
        *(a3 + 24) = &type metadata for Blob;
        *(a3 + 32) = &protocol witness table for Blob;
        Blob.init(bytes:length:)(v10, v11, a3);
        return;
      }

LABEL_18:
      __break(1u);
LABEL_19:
      sub_26C0ABB30();

      v13 = sub_26C0ABC60();
      MEMORY[0x26D69A890](v13);

      sub_26C0ABBE0();
      __break(1u);
      return;
    }

    if (sqlite3_value_text(v4))
    {
      v7 = sub_26C0AB920();
      *(a3 + 24) = MEMORY[0x277D837D0];
      *(a3 + 32) = &protocol witness table for String;
      *a3 = v7;
      *(a3 + 8) = v8;
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v5 == 1)
  {
    v6 = sqlite3_value_int64(v4);
    *(a3 + 24) = MEMORY[0x277D84A28];
    *(a3 + 32) = &protocol witness table for Int64;
    *a3 = v6;
    return;
  }

  if (v5 != 2)
  {
    goto LABEL_19;
  }

  v12 = sqlite3_value_double(v4);
  *(a3 + 24) = MEMORY[0x277D839F8];
  *(a3 + 32) = &protocol witness table for Double;
  *a3 = v12;
}

uint64_t sub_26C097C9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8(a2, a3, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26C097D24(sqlite3_context *a1)
{
  v1 = *(sqlite3_user_data(a1) + 2);

  return v1();
}

void (*sub_26C097D7C(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_26C098510(v6, a2, a3);
  return sub_26C097E04;
}

void sub_26C097E04(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

void Connection.createCollation(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  aBlock[4] = sub_26C09930C;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26C0980CC;
  aBlock[3] = &block_descriptor_31;
  v12 = _Block_copy(aBlock);

  swift_beginAccess();
  v13 = *(v6 + 16);
  if (v13)
  {
    v14 = sub_26C0AB8B0();
    collation_v2 = sqlite3_create_collation_v2(v13, (v14 + 32), 1, v12, sub_26C098128, 0);

    sub_26C0678E0(collation_v2, 0);
    if (!v5)
    {
      swift_beginAccess();

      _Block_copy(v12);
      v16 = *(v6 + 80);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *(v6 + 80);
      *(v6 + 80) = 0x8000000000000000;
      sub_26C098DD0(v12, a1, a2, isUniquelyReferenced_nonNull_native);

      *(v6 + 80) = v19;
      swift_endAccess();
    }

    _Block_release(v12);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_26C09802C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = sub_26C0AB920();
  v6 = v5;
  v7 = sub_26C0AB920();
  v9 = a3(v4, v6, v7, v8);

  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v9 <= 0x7FFFFFFF)
  {
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0980CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = v6(a2, a3);

  return v7;
}

uint64_t sub_26C098128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 && a5)
  {
    v6 = *(a1 + 16);

    return v6();
  }

  else
  {
    result = sub_26C0ABBE0();
    __break(1u);
  }

  return result;
}

uint64_t sub_26C0981AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479500, &qword_26C0AD368);
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_26C0AB7B0();
  qword_280B5AF78 = result;
  return result;
}

sqlite3 *Connection.description.getter()
{
  swift_beginAccess();
  result = *(v0 + 16);
  if (result)
  {
    result = sqlite3_db_filename(result, 0);
    if (result)
    {
      return sub_26C0AB910();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

sqlite3 *sub_26C098248()
{
  v1 = *v0;
  swift_beginAccess();
  result = *(v1 + 16);
  if (result)
  {
    result = sqlite3_db_filename(result, 0);
    if (result)
    {
      return sub_26C0AB910();
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0982A4()
{
  v1 = v0[1];
  if (v1 == 1)
  {
    v2 = 0;
  }

  else
  {
    v2 = *v0;
  }

  if (v1 != 1)
  {
    v3 = v0[1];
  }

  if (v1)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0x3A79726F6D656D3ALL;
  }

  sub_26C099224(*v0, v1);
  return v4;
}

void *sub_26C098300()
{
  result = sub_26C098F4C(&unk_287CC7940);
  off_280B5B0A8 = result;
  return result;
}

const char *Result.description.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 4);
  v4 = v0[3];
  if (v4)
  {

    sub_26C0ABB30();

    MEMORY[0x26D69A890](10272, 0xE200000000000000);
    swift_beginAccess();
    result = sqlite3_sql(*(v4 + 16));
    if (result)
    {
      v6 = sub_26C0AB910();
      MEMORY[0x26D69A890](v6);

      MEMORY[0x26D69A890](0x3A65646F63282029, 0xE900000000000020);
      v7 = sub_26C0ABC60();
      MEMORY[0x26D69A890](v7);

      MEMORY[0x26D69A890](41, 0xE100000000000000);

      return v2;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v9 = *v0;

    MEMORY[0x26D69A890](0x203A65646F632820, 0xE800000000000000);
    v8 = sub_26C0ABC60();
    MEMORY[0x26D69A890](v8);

    MEMORY[0x26D69A890](41, 0xE100000000000000);
    return v9;
  }

  return result;
}

unint64_t sub_26C0984CC(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_26C0ABD50();

  return sub_26C098A9C(a1, v4);
}

void (*sub_26C098510(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x50uLL);
  }

  v8 = v7;
  *a1 = v7;
  v9 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8[8] = sub_26C0988B8(v8);
  v8[9] = sub_26C09861C(v8 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_26C0985BC;
}

void sub_26C0985BC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_26C09861C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_26C06772C(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_26C0A9680();
      v13 = v21;
      goto LABEL_11;
    }

    sub_26C0A8FD4(v18, a4 & 1);
    v22 = *v5;
    v13 = sub_26C06772C(a2, a3);
    if ((v19 & 1) == (v23 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_26C0ABCF0();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v24 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v24 = 0;
  }

  *v11 = v24;
  return sub_26C098774;
}

void sub_26C098774(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 40);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[4];
    v6 = *v2[3];
    if ((*a1)[5])
    {
      goto LABEL_9;
    }

    v8 = v2[1];
    v7 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v9 = (v6[6] + 16 * v5);
    *v9 = v8;
    v9[1] = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[2];
      v6[2] = v4;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[4];
      v13 = *v2[3];
      sub_26C099768(*(v13 + 48) + 16 * v12);
      sub_26C0988EC(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[4];
  v6 = *v2[3];
  if ((v4 & 1) == 0)
  {
    v15 = v2[1];
    v14 = v2[2];
    v6[(v5 >> 6) + 8] |= 1 << v5;
    v16 = (v6[6] + 16 * v5);
    *v16 = v15;
    v16[1] = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:
  v19 = *v2;

  free(v2);
}

uint64_t (*sub_26C0988B8(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_26C0988E0;
}

uint64_t sub_26C0988EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C0ABB10() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_26C0ABD60();

      sub_26C0AB8D0();
      v13 = sub_26C0ABD80();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_26C098A9C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void sub_26C098B08(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_26C0984CC(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_26C0A8D64(v14, a3 & 1);
      v18 = *v4;
      v9 = sub_26C0984CC(a2);
      if ((v15 & 1) != (v19 & 1))
      {
LABEL_16:
        sub_26C0ABCF0();
        __break(1u);
        return;
      }
    }

    else
    {
      v17 = v9;
      sub_26C0A9524();
      v9 = v17;
    }
  }

  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v20[(v9 >> 6) + 8] |= 1 << v9;
    *(v20[6] + 8 * v9) = a2;
    *(v20[7] + 8 * v9) = a1;
    v23 = v20[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v20[2] = v24;
      return;
    }

    goto LABEL_15;
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * v9);
  *(v21 + 8 * v9) = a1;

  _Block_release(v22);
}

uint64_t sub_26C098C54(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26C06772C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26C0A8FD4(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26C06772C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_26C0ABCF0();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_26C0A9680();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

void sub_26C098DD0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_26C06772C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_26C0A927C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_26C06772C(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        sub_26C0ABCF0();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_26C0A97F0();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    _Block_release(v24);
    return;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v26 = v22[2];
  v15 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v27;
}

uint64_t sub_26C098F4C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804794F8, &qword_26C0AD360);
    v3 = sub_26C0ABB20();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = *(v3 + 40);
    v8 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v12 = *(v6 + 4 * v4);
      result = MEMORY[0x26D69ACD0](v7, v12, 4);
      v14 = result & v8;
      v15 = (result & v8) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v8);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 4 * v14) != v12)
        {
          v14 = (v14 + 1) & v8;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 4 * v14) = v12;
        v9 = *(v3 + 16);
        v10 = __OFADD__(v9, 1);
        v11 = v9 + 1;
        if (v10)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v11;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_26C099074(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479508, &unk_26C0AD370);
  v3 = sub_26C0ABC10();
  v5 = a1[4];
  v4 = a1[5];
  result = sub_26C0984CC(v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x277D84F98];
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    *(v3[7] + 8 * result) = v4;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    _Block_copy(v4);
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v8 - 1);
    v4 = *v8;
    result = sub_26C0984CC(v5);
    v8 += 2;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_26C099168()
{
  result = qword_280B5B048;
  if (!qword_280B5B048)
  {
    sub_26C0ABA90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B5B048);
  }

  return result;
}

unint64_t sub_26C0991C0()
{
  result = qword_280B5B090;
  if (!qword_280B5B090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804794E0, &qword_26C0AD050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B5B090);
  }

  return result;
}

uint64_t sub_26C099224(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_26C099238@<X0>(_DWORD *a1@<X8>)
{
  v2 = v1[3];
  v3 = v1[4];
  return sub_26C095A28(v1[2], a1);
}

uint64_t sub_26C099258(int a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(a1) & 1;
}

uint64_t sub_26C099290()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v1();
  return 0;
}

uint64_t sub_26C0992E4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

unint64_t sub_26C099318()
{
  result = qword_2804794E8;
  if (!qword_2804794E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804794E8);
  }

  return result;
}

unint64_t sub_26C099370()
{
  result = qword_2804794F0;
  if (!qword_2804794F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804794F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11SwiftSQLite10ConnectionC8LocationO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26C099440(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C099494(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_26C0994F0(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JoinType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for JoinType(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_26C09967C(uint64_t a1, int a2)
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

uint64_t sub_26C0996C4(uint64_t result, int a2, int a3)
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

uint64_t sub_26C09971C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = sub_26C0AB920();
  v2(v3);
}

uint64_t QueryType.insert(or:encodable:userInfo:otherSetters:)(char *a1, void *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = type metadata accessor for SQLiteEncoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  v8[2] = MEMORY[0x277D84F90];
  v8[3] = v9;
  v8[4] = a3;
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v14[3] = v7;
  v14[4] = sub_26C09FD70(&qword_280479510, type metadata accessor for SQLiteEncoder);
  v14[0] = v8;

  sub_26C0AB7F0();
  if (v3)
  {

    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v14);
    v15 = v6;
    swift_beginAccess();
    v13._rawValue = v8[2];

    sub_26C06FE94(v12);
    QueryType.insert(or:_:)(&v15, v13);
  }
}

SwiftSQLite::Insert __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> QueryType.insertMany(_:userInfo:otherSetters:)(Swift::OpaquePointer _, Swift::OpaquePointer userInfo, Swift::OpaquePointer otherSetters)
{
  v4 = *(_._rawValue + 2);
  v5 = MEMORY[0x277D84F90];
  if (!v4)
  {
    v8._rawValue = MEMORY[0x277D84F90];
LABEL_22:
    QueryType.insertMany(_:)(v8);

    goto LABEL_26;
  }

  v32 = MEMORY[0x277D84F90];
  sub_26C0889E0(0, v4, 0);
  v8._rawValue = v32;
  v9 = _._rawValue + 32;
  while (1)
  {
    v28 = v4;
    rawValue = v8._rawValue;
    v27 = v9;
    sub_26C06B6BC(v9, v31);
    v10 = type metadata accessor for SQLiteEncoder();
    v11 = swift_allocObject();
    v11[2]._rawValue = v5;
    v11[3]._rawValue = v5;
    v11[4]._rawValue = userInfo._rawValue;
    __swift_project_boxed_opaque_existential_1(v31, v31[3]);
    v30[3] = v10;
    v30[4] = sub_26C09FD70(&qword_280479510, type metadata accessor for SQLiteEncoder);
    v30[0] = v11;

    sub_26C0AB7F0();
    if (v3)
    {

      __swift_destroy_boxed_opaque_existential_1(v30);
      __swift_destroy_boxed_opaque_existential_1(v31);

      goto LABEL_26;
    }

    __swift_destroy_boxed_opaque_existential_1(v30);
    isUniquelyReferenced_nonNull_native = swift_beginAccess();
    v15 = v11[2]._rawValue;
    v16 = *(otherSetters._rawValue + 2);
    v17 = *(v15 + 16);
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v19 = *(v15 + 24) >> 1, v19 >= v18))
    {
      v8._rawValue = rawValue;
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v23 = v17 + v16;
      }

      else
      {
        v23 = v17;
      }

      isUniquelyReferenced_nonNull_native = sub_26C06FF8C(isUniquelyReferenced_nonNull_native, v23, 1, v15);
      v15 = isUniquelyReferenced_nonNull_native;
      v19 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      v8._rawValue = rawValue;
      if (!v16)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    if (v19 - *(v15 + 16) < v16)
    {
      goto LABEL_24;
    }

    swift_arrayInitWithCopy();

    v20 = *(v15 + 16);
    v21 = __OFADD__(v20, v16);
    v22 = v20 + v16;
    if (v21)
    {
      goto LABEL_25;
    }

    *(v15 + 16) = v22;
LABEL_16:

    __swift_destroy_boxed_opaque_existential_1(v31);
    v32 = v8._rawValue;
    v25 = *(v8._rawValue + 2);
    v24 = *(v8._rawValue + 3);
    if (v25 >= v24 >> 1)
    {
      sub_26C0889E0((v24 > 1), v25 + 1, 1);
      v8._rawValue = v32;
    }

    *(v8._rawValue + 2) = v25 + 1;
    *(v8._rawValue + v25 + 4) = v15;
    v9 = v27 + 40;
    v4 = v28 - 1;
    v5 = MEMORY[0x277D84F90];
    if (v28 == 1)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result.bindings._rawValue = v14;
  result.template._object = v13;
  result.template._countAndFlagsBits = isUniquelyReferenced_nonNull_native;
  return result;
}

uint64_t QueryType.upsert(_:userInfo:otherSetters:onConflictOf:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  v9 = type metadata accessor for SQLiteEncoder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  v10[2] = MEMORY[0x277D84F90];
  v10[3] = v11;
  v10[4] = a2;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19[3] = v9;
  v19[4] = sub_26C09FD70(&qword_280479510, type metadata accessor for SQLiteEncoder);
  v19[0] = v10;

  sub_26C0AB7F0();
  if (v6)
  {

    return __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v19);
    swift_beginAccess();
    v20 = v10[2];

    sub_26C06FE94(v14);
    QueryType.upsert(_:onConflictOf:)(v20, a3, a4, a5, a6);
  }
}

uint64_t sub_26C099F00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v9 = type metadata accessor for SQLiteEncoder();
  v10 = swift_allocObject();
  v11 = MEMORY[0x277D84F90];
  v10[2] = MEMORY[0x277D84F90];
  v10[3] = v11;
  v10[4] = a2;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v18[3] = v9;
  v18[4] = sub_26C09FD70(&qword_280479510, type metadata accessor for SQLiteEncoder);
  v18[0] = v10;

  sub_26C0AB7F0();
  if (v6)
  {

    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v18);
    swift_beginAccess();
    v19 = v10[2];

    sub_26C06FE94(v14);
    a6(v19, a4, a5);
  }
}

uint64_t Row.decode<A>(userInfo:)(uint64_t a1)
{
  v4 = *v1;
  v3 = v1[1];
  type metadata accessor for SQLiteDecoder();
  v5 = swift_allocObject();
  v6 = MEMORY[0x277D84F90];
  v5[2] = v4;
  v5[3] = v3;
  v5[4] = v6;
  v5[5] = a1;
  sub_26C09FD70(qword_280479518, type metadata accessor for SQLiteDecoder);

  return sub_26C0ABA30();
}

uint64_t Row.decoder(userInfo:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = type metadata accessor for SQLiteDecoder();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84F90];
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v9;
  v8[5] = a1;
  a2[3] = v7;
  a2[4] = sub_26C09FD70(qword_280479518, type metadata accessor for SQLiteDecoder);
  *a2 = v8;
}

uint64_t sub_26C09A254(uint64_t a1)
{
  result = swift_allocObject();
  v3 = MEMORY[0x277D84F90];
  *(result + 16) = a1;
  *(result + 24) = v3;
  return result;
}

uint64_t sub_26C09A348()
{
  v1 = v0[2];
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  sub_26C0ABD90();
  v4 = sub_26C067104(34, 0xE100000000000000);
  v6 = v5;

  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479430, &qword_26C0AC888);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26C0AC5C0;
  *(v8 + 32) = 0u;
  *(v8 + 48) = 0u;
  *(v8 + 64) = 0;
  swift_beginAccess();
  v9 = *(v1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_26C06FF8C(0, *(v9 + 2) + 1, 1, v9);
    *(v1 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_26C06FF8C((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v13 = &v9[80 * v12];
  *(v13 + 4) = v4;
  *(v13 + 5) = v6;
  *(v13 + 6) = MEMORY[0x277D84F90];
  *(v13 + 7) = v7;
  *(v13 + 8) = &protocol witness table for Expression<A>;
  *(v13 + 9) = 63;
  *(v13 + 10) = 0xE100000000000000;
  *(v13 + 11) = v8;
  *(v13 + 12) = v7;
  *(v13 + 13) = &protocol witness table for Expression<A>;
  *(v1 + 16) = v9;
  return swift_endAccess();
}

uint64_t sub_26C09A544(char a1)
{
  v3 = v1[2];
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  sub_26C0ABD90();
  v6 = sub_26C067104(34, 0xE100000000000000);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479390, &qword_26C0AD880);
  swift_beginAccess();
  v10 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_26C06FF8C(0, *(v10 + 2) + 1, 1, v10);
    *(v3 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_26C06FF8C((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[80 * v13];
  v15 = MEMORY[0x277D84F90];
  *(v14 + 4) = v6;
  *(v14 + 5) = v8;
  *(v14 + 6) = v15;
  *(v14 + 7) = v9;
  *(v14 + 8) = &protocol witness table for Expression<A>;
  v14[72] = a1 & 1;
  v16 = MEMORY[0x277D839B0];
  *(v14 + 11) = *&v18[15];
  *(v14 + 12) = v16;
  *(v14 + 73) = *v18;
  *(v14 + 13) = &protocol witness table for Bool;
  *(v3 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_26C09A6EC(float a1)
{
  v3 = v1[2];
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  sub_26C0ABD90();
  v6 = sub_26C067104(34, 0xE100000000000000);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479658, &qword_26C0AD878);
  swift_beginAccess();
  v10 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_26C06FF8C(0, *(v10 + 2) + 1, 1, v10);
    *(v3 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_26C06FF8C((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[80 * v13];
  *(v14 + 4) = v6;
  *(v14 + 5) = v8;
  *(v14 + 6) = MEMORY[0x277D84F90];
  *(v14 + 7) = v9;
  *(v14 + 8) = &protocol witness table for Expression<A>;
  *(v14 + 9) = a1;
  v15 = MEMORY[0x277D839F8];
  *(v14 + 5) = v17;
  *(v14 + 12) = v15;
  *(v14 + 13) = &protocol witness table for Double;
  *(v3 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_26C09A88C(double a1)
{
  v3 = v1[2];
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 88);
  sub_26C0ABD90();
  v6 = sub_26C067104(34, 0xE100000000000000);
  v8 = v7;

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479658, &qword_26C0AD878);
  swift_beginAccess();
  v10 = *(v3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v3 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_26C06FF8C(0, *(v10 + 2) + 1, 1, v10);
    *(v3 + 16) = v10;
  }

  v13 = *(v10 + 2);
  v12 = *(v10 + 3);
  if (v13 >= v12 >> 1)
  {
    v10 = sub_26C06FF8C((v12 > 1), v13 + 1, 1, v10);
  }

  *(v10 + 2) = v13 + 1;
  v14 = &v10[80 * v13];
  *(v14 + 4) = v6;
  *(v14 + 5) = v8;
  *(v14 + 6) = MEMORY[0x277D84F90];
  *(v14 + 7) = v9;
  *(v14 + 8) = &protocol witness table for Expression<A>;
  *(v14 + 9) = a1;
  v15 = MEMORY[0x277D839F8];
  *(v14 + 5) = v17;
  *(v14 + 12) = v15;
  *(v14 + 13) = &protocol witness table for Double;
  *(v3 + 16) = v10;
  return swift_endAccess();
}

uint64_t sub_26C09AA28(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = *(*v2 + 80);
  v7 = *(*v2 + 88);
  sub_26C0ABD90();
  v8 = sub_26C067104(34, 0xE100000000000000);
  v10 = v9;

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479410, &qword_26C0AC868);
  swift_beginAccess();
  v12 = *(v5 + 16);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 16) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = sub_26C06FF8C(0, *(v12 + 2) + 1, 1, v12);
    *(v5 + 16) = v12;
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = sub_26C06FF8C((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  v16 = &v12[80 * v15];
  *(v16 + 4) = v8;
  *(v16 + 5) = v10;
  *(v16 + 6) = MEMORY[0x277D84F90];
  *(v16 + 7) = v11;
  *(v16 + 8) = &protocol witness table for Expression<A>;
  *(v16 + 9) = a1;
  v17 = MEMORY[0x277D837D0];
  *(v16 + 10) = a2;
  *(v16 + 12) = v17;
  *(v16 + 13) = &protocol witness table for String;
  *(v5 + 16) = v12;
  return swift_endAccess();
}

uint64_t sub_26C09ABBC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92[2] = a4;
  v7 = *v4;
  v96 = a2;
  v97 = v7;
  v8 = sub_26C0AB880();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v92[1] = v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479630, &qword_26C0AD850);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v93 = v92 - v13;
  v14 = sub_26C0AB710();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v94 = v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a3 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x28223BE20](v17);
  v23 = v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = *(v19 + 16);
  v95 = a1;
  v24(v92 - v25, a1, a3);
  if (swift_dynamicCast())
  {
    v26 = v98;
    v27 = v99;
    v28 = v4[2];
    v29 = *(v97 + 80);
    v30 = *(v97 + 88);
    sub_26C0ABD90();
    v31 = sub_26C067104(34, 0xE100000000000000);
    v33 = v32;

    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479650, &qword_26C0AD870);
    swift_beginAccess();
    v35 = *(v28 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v28 + 16) = v35;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v35 = sub_26C06FF8C(0, *(v35 + 2) + 1, 1, v35);
      *(v28 + 16) = v35;
    }

    v38 = *(v35 + 2);
    v37 = *(v35 + 3);
    if (v38 >= v37 >> 1)
    {
      v35 = sub_26C06FF8C((v37 > 1), v38 + 1, 1, v35);
    }

    *(v35 + 2) = v38 + 1;
    v39 = &v35[80 * v38];
    *(v39 + 4) = v31;
    *(v39 + 5) = v33;
    *(v39 + 6) = MEMORY[0x277D84F90];
    *(v39 + 7) = v34;
    *(v39 + 8) = &protocol witness table for Expression<A>;
    *(v39 + 9) = v26;
    *(v39 + 10) = v27;
    *(v39 + 12) = MEMORY[0x277CC9318];
    *(v39 + 13) = &protocol witness table for Data;
    *(v28 + 16) = v35;
    return swift_endAccess();
  }

  else
  {
    v41 = v4;
    v42 = v97;
    v24(v23, v95, a3);
    v43 = v93;
    v44 = swift_dynamicCast();
    v45 = *(v15 + 56);
    v46 = v14;
    if (v44)
    {
      v45(v43, 0, 1, v14);
      v95 = v15;
      (*(v15 + 32))(v94, v43, v14);
      v47 = v41[2];
      v48 = *(v42 + 80);
      v49 = *(v42 + 88);
      sub_26C0ABD90();
      v97 = sub_26C067104(34, 0xE100000000000000);
      v51 = v50;

      if (qword_280B5A8E8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v52 = qword_280B5A8F0;
      v53 = sub_26C0AB6F0();
      v54 = [v52 stringFromDate_];

      v55 = sub_26C0AB840();
      v57 = v56;

      v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479410, &qword_26C0AC868);
      swift_beginAccess();
      v59 = *(v47 + 16);
      v60 = swift_isUniquelyReferenced_nonNull_native();
      *(v47 + 16) = v59;
      v61 = v46;
      if ((v60 & 1) == 0)
      {
        v59 = sub_26C06FF8C(0, *(v59 + 2) + 1, 1, v59);
        *(v47 + 16) = v59;
      }

      v63 = *(v59 + 2);
      v62 = *(v59 + 3);
      if (v63 >= v62 >> 1)
      {
        v59 = sub_26C06FF8C((v62 > 1), v63 + 1, 1, v59);
      }

      *(v59 + 2) = v63 + 1;
      v64 = &v59[80 * v63];
      *(v64 + 4) = v97;
      *(v64 + 5) = v51;
      *(v64 + 6) = MEMORY[0x277D84F90];
      *(v64 + 7) = v58;
      *(v64 + 8) = &protocol witness table for Expression<A>;
      *(v64 + 9) = v55;
      v65 = MEMORY[0x277D837D0];
      *(v64 + 10) = v57;
      *(v64 + 12) = v65;
      *(v64 + 13) = &protocol witness table for String;
      *(v47 + 16) = v59;
      swift_endAccess();
      return (*(v95 + 8))(v94, v61);
    }

    else
    {
      v45(v43, 1, 1, v14);
      sub_26C0A0CEC(v43);
      v66 = sub_26C0AB680();
      v67 = *(v66 + 48);
      v68 = *(v66 + 52);
      swift_allocObject();
      sub_26C0AB670();
      v69 = v100;
      v70 = sub_26C0AB660();
      v72 = v71;

      if (!v69)
      {
        v100 = 0;
        sub_26C0AB870();
        v95 = v72;
        v73 = sub_26C0AB860();
        v75 = v74;
        v76 = v41[2];
        v77 = *(v42 + 80);
        v78 = *(v42 + 88);
        sub_26C0ABD90();
        v79 = sub_26C067104(34, 0xE100000000000000);
        v97 = v80;

        v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479430, &qword_26C0AC888);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793B8, &unk_26C0ACE90);
        v82 = swift_allocObject();
        v83 = v82;
        *(v82 + 16) = xmmword_26C0AC5C0;
        if (v75)
        {
          v84 = &protocol witness table for String;
          v85 = MEMORY[0x277D837D0];
        }

        else
        {
          v73 = 0;
          v85 = 0;
          v84 = 0;
          *(v82 + 48) = 0;
        }

        *(v82 + 32) = v73;
        *(v82 + 40) = v75;
        *(v82 + 56) = v85;
        *(v82 + 64) = v84;
        swift_beginAccess();
        v86 = *(v76 + 16);
        v87 = swift_isUniquelyReferenced_nonNull_native();
        *(v76 + 16) = v86;
        if ((v87 & 1) == 0)
        {
          v86 = sub_26C06FF8C(0, *(v86 + 2) + 1, 1, v86);
          *(v76 + 16) = v86;
        }

        v89 = *(v86 + 2);
        v88 = *(v86 + 3);
        if (v89 >= v88 >> 1)
        {
          v86 = sub_26C06FF8C((v88 > 1), v89 + 1, 1, v86);
        }

        *(v86 + 2) = v89 + 1;
        v90 = &v86[80 * v89];
        v91 = v97;
        *(v90 + 4) = v79;
        *(v90 + 5) = v91;
        *(v90 + 6) = MEMORY[0x277D84F90];
        *(v90 + 7) = v81;
        *(v90 + 8) = &protocol witness table for Expression<A>;
        *(v90 + 9) = 63;
        *(v90 + 10) = 0xE100000000000000;
        *(v90 + 11) = v83;
        *(v90 + 12) = v81;
        *(v90 + 13) = &protocol witness table for Expression<A>;
        *(v76 + 16) = v86;
        swift_endAccess();
        return sub_26C0710CC(v70, v95);
      }
    }
  }

  return result;
}

uint64_t sub_26C09B3FC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v11 = v6[2];
  v12 = *(*v6 + 80);
  v13 = *(*v6 + 88);
  sub_26C0ABD90();
  v14 = sub_26C067104(34, 0xE100000000000000);
  v16 = v15;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_beginAccess();
  v18 = *(v11 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v11 + 16) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_26C06FF8C(0, *(v18 + 2) + 1, 1, v18);
    *(v11 + 16) = v18;
  }

  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    v18 = sub_26C06FF8C((v20 > 1), v21 + 1, 1, v18);
  }

  *(v18 + 2) = v21 + 1;
  v22 = &v18[80 * v21];
  v23 = MEMORY[0x277D84F90];
  *(v22 + 4) = v14;
  *(v22 + 5) = v16;
  *(v22 + 6) = v23;
  *(v22 + 7) = v17;
  *(v22 + 8) = &protocol witness table for Expression<A>;
  *(v22 + 9) = a1;
  *(v22 + 5) = v26;
  *(v22 + 12) = a5;
  *(v22 + 13) = a6;
  *(v11 + 16) = v18;
  return swift_endAccess();
}

uint64_t sub_26C09B640()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_26C09B8F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 80);
  v12 = *(a4 + 88);
  v13 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return a6(a1, a2, a3, v13, a5);
}

uint64_t sub_26C09B988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return sub_26C0ABCE0();
}

uint64_t sub_26C09B9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  v4 = *(a3 + 88);
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return sub_26C0ABCC0();
}

uint64_t sub_26C09BA50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  v5 = *(a4 + 88);
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return sub_26C0ABCB0();
}

uint64_t sub_26C09BC70(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return a5(a1 & 0x1FF, a2, v11, a4);
}

uint64_t sub_26C09BD04(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return a5(a1 & 0x1FFFF, a2, v11, a4);
}

uint64_t sub_26C09BD98(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return a5(a1 | ((HIDWORD(a1) & 1) << 32), a2, v11, a4);
}

uint64_t sub_26C09BE34(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 80);
  v12 = *(a4 + 88);
  v13 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return a6(a1, a2 & 1, a3, v13, a5);
}

uint64_t sub_26C09BED0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a5 + 80);
  v14 = *(a5 + 88);
  v15 = type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return a7(a1, a2, a3 & 1, a4, v15, a6);
}

uint64_t sub_26C09BF50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  return sub_26C0ABCD0();
}

uint64_t sub_26C09C050()
{
  type metadata accessor for SQLiteEncoder.SQLiteKeyedEncodingContainer();
  v1 = swift_allocObject();
  v2 = MEMORY[0x277D84F90];
  *(v1 + 16) = v0;
  *(v1 + 24) = v2;

  swift_getWitnessTable();
  return sub_26C0ABC40();
}

uint64_t sub_26C09C0F4()
{
  v1 = v0[2];

  v2 = v0[3];

  v3 = v0[4];

  return swift_deallocClassInstance();
}

__n128 sub_26C09C228(__n128 *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  result = *a1;
  *(v2 + 24) = *a1;
  return result;
}

uint64_t sub_26C09C26C()
{
  v4 = v0[3];
  v3 = *(*v0 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479638, &qword_26C0AD858);
  sub_26C0A0DB8();
  v1 = sub_26C0AB990();

  return v1;
}

uint64_t sub_26C09C338()
{
  v5 = v0[3];
  v6 = v0[4];
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 88);

  sub_26C0ABD90();
  v3 = sub_26C0A1B18();

  return v3 & 1;
}

uint64_t sub_26C09C41C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_26C0ABD90();
  v5 = sub_26C067104(34, 0xE100000000000000);
  v7 = v6;

  v8 = sub_26C09C4F4(v5, v7, MEMORY[0x277D84F90], v1, v2);

  return v8 & 1;
}

uint64_t sub_26C09C4F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  v11 = sub_26C09D478(a1, a2, a3, a4, a5);

  if (v5 || v11 != 2)
  {
  }

  else
  {
    sub_26C072E10();
    swift_allocError();
    *v12 = a1;
    *(v12 + 8) = a2;
    *(v12 + 16) = 0;
    *(v12 + 24) = 3;
    swift_willThrow();
  }

  return v11 & 1;
}

uint64_t sub_26C09C5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  v11 = sub_26C09D8D0(a1, a2, a3, a4, a5);
  v13 = v12;

  if (v5 || (v13 & 1) == 0)
  {
  }

  else
  {
    sub_26C072E10();
    swift_allocError();
    *v14 = a1;
    *(v14 + 8) = a2;
    *(v14 + 16) = 0;
    *(v14 + 24) = 3;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_26C09C6D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  sub_26C09D8D0(a1, a2, a3, a4, a5);
  v12 = v11;

  if (v5 || (v12 & 1) == 0)
  {
  }

  sub_26C072E10();
  swift_allocError();
  *v13 = a1;
  *(v13 + 8) = a2;
  *(v13 + 16) = 0;
  *(v13 + 24) = 3;
  return swift_willThrow();
}

uint64_t sub_26C09C7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_bridgeObjectRetain_n();

  v11 = sub_26C09DD70(a1, a2, a3, a4, a5);
  v13 = v12;

  if (v5 || v13)
  {
  }

  else
  {
    sub_26C072E10();
    swift_allocError();
    *v15 = a1;
    *(v15 + 8) = a2;
    *(v15 + 16) = 0;
    *(v15 + 24) = 3;
    swift_willThrow();
  }

  return v11;
}

uint64_t sub_26C09C8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  swift_bridgeObjectRetain_n();

  sub_26C09E668(a1, a2, a3, a4, &v14);

  if (v5)
  {
  }

  v12 = v15;
  if (v15 >> 60 == 15)
  {
    sub_26C0A0CD8(v14, v15);
    sub_26C072E10();
    swift_allocError();
    *v13 = a1;
    *(v13 + 8) = a2;
    *(v13 + 16) = 0;
    *(v13 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    *a5 = v14;
    a5[1] = v12;
  }

  return result;
}

uint64_t sub_26C09C9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479630, &qword_26C0AD850);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v19 - v13;
  swift_bridgeObjectRetain_n();

  sub_26C09E1FC(a1, a2, a3, a4, v14);

  if (v5)
  {
  }

  v16 = sub_26C0AB710();
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v14, 1, v16) == 1)
  {
    sub_26C0A0CEC(v14);
    sub_26C072E10();
    swift_allocError();
    *v18 = a1;
    *(v18 + 8) = a2;
    *(v18 + 16) = 0;
    *(v18 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    return (*(v17 + 32))(a5, v14, v16);
  }
}

uint64_t sub_26C09CBB4()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_26C0ABD90();
  v5 = sub_26C067104(34, 0xE100000000000000);
  v7 = v6;

  v8 = sub_26C09C5E8(v5, v7, MEMORY[0x277D84F90], v1, v2);

  return v8;
}

uint64_t sub_26C09CC8C()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_26C0ABD90();
  v5 = sub_26C067104(34, 0xE100000000000000);
  v7 = v6;

  sub_26C09C6D4(v5, v7, MEMORY[0x277D84F90], v1, v2);
}

double sub_26C09CD88()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_26C0ABD90();
  v5 = sub_26C067104(34, 0xE100000000000000);
  v7 = v6;

  sub_26C09C6D4(v5, v7, MEMORY[0x277D84F90], v1, v2);
  v9 = v8;

  return v9;
}

uint64_t sub_26C09CE68()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = *(*v0 + 80);
  v4 = *(*v0 + 88);
  sub_26C0ABD90();
  v5 = sub_26C067104(34, 0xE100000000000000);
  v7 = v6;

  v8 = sub_26C09C7CC(v5, v7, MEMORY[0x277D84F90], v1, v2);

  return v8;
}

uint64_t sub_26C09CF48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = v4;
  v55[3] = a3;
  v9 = *v4;
  v10 = sub_26C0AB880();
  v57 = *(v10 - 8);
  v58 = v10;
  v11 = *(v57 + 64);
  MEMORY[0x28223BE20](v10);
  v56 = v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_26C0AB710();
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v20 = v55 - v19;
  if (a1 == MEMORY[0x277CC9318])
  {
    v39 = v4[3];
    v40 = v4[4];
    v41 = *(v9 + 80);
    v42 = *(v9 + 88);
    sub_26C0ABD90();
    v43 = sub_26C067104(34, 0xE100000000000000);
    v45 = v44;

    v46 = v61;
    sub_26C09C8C0(v43, v45, v39, v40, &v60);
    if (v46)
    {
      goto LABEL_10;
    }

    return swift_dynamicCast();
  }

  v55[0] = v18;
  v55[1] = a4;
  v55[2] = a2;
  v21 = v4[4];
  v59 = v4[3];
  v22 = *(v9 + 80);
  v23 = *(v9 + 88);
  sub_26C0ABD90();
  v24 = sub_26C067104(34, 0xE100000000000000);
  v26 = v25;

  if (v13 == a1)
  {
    v47 = v61;
    sub_26C09C9DC(v24, v26, v59, v21, v20);
    if (v47)
    {
      goto LABEL_10;
    }

    (*(v55[0] + 32))(v17, v20, v13);
    return swift_dynamicCast();
  }

  v27 = v61;
  sub_26C09DD70(v24, v26, MEMORY[0x277D84F90], v59, v21);
  if (v27)
  {
LABEL_10:
  }

  v29 = v28;

  if (!v29)
  {
    v34 = sub_26C0ABB60();
    swift_allocError();
    v36 = v49;
    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840) + 48);
    *v36 = a1;
    v51 = v5[2];

    sub_26C0ABB50();
    v38 = MEMORY[0x277D84160];
    goto LABEL_15;
  }

  v30 = v56;
  sub_26C0AB870();
  v31 = sub_26C0AB850();
  v33 = v32;

  (*(v57 + 8))(v30, v58);
  if (v33 >> 60 == 15)
  {
    v34 = sub_26C0ABB60();
    swift_allocError();
    v36 = v35;
    v37 = v5[2];

    sub_26C0ABB50();
    v38 = MEMORY[0x277D84168];
LABEL_15:
    (*(*(v34 - 8) + 104))(v36, *v38, v34);
    return swift_willThrow();
  }

  v52 = sub_26C0AB650();
  v53 = *(v52 + 48);
  v54 = *(v52 + 52);
  swift_allocObject();
  sub_26C0AB640();
  sub_26C0AB630();

  return sub_26C0A0CD8(v31, v33);
}

unint64_t sub_26C09D478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + 16);
  swift_bridgeObjectRetain_n();
  if (!v10)
  {
    v48 = v5;
LABEL_8:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v11 = sub_26C06772C(a1, a2);
  if (v12)
  {
    v13 = v11;
    swift_bridgeObjectRelease_n();
    return sub_26C09FA5C(*(*(a4 + 56) + 8 * v13), a4, a5);
  }

  v15 = *(a4 + 16);
  v48 = v5;
  if (!v15)
  {
    goto LABEL_8;
  }

  v52 = sub_26C072BB4(v15, 0);
  v50 = sub_26C072C38(v55, v52 + 4, v15, a4);
  v5 = v55[0];

  sub_26C072D90();
  if (v50 != v15)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v16 = v52;
LABEL_9:
  v46 = a5;
  v47 = a4;
  v17 = v16[2];
  if (v17)
  {
    v18 = 0;
    v19 = v16 + 5;
    v51 = v16[2];
    v44 = v17 - 1;
    v20 = MEMORY[0x277D84F90];
    v53 = v16;
    v45 = v16 + 5;
    do
    {
      v49 = v20;
      v21 = &v19[2 * v18];
      v22 = v18;
      while (1)
      {
        if (v22 >= v16[2])
        {
          __break(1u);
          goto LABEL_38;
        }

        v23 = *(v21 - 1);
        v24 = *v21;
        v18 = v22 + 1;
        v55[0] = 46;
        v55[1] = 0xE100000000000000;

        v25 = a1;
        v26 = a1;
        v27 = a2;
        MEMORY[0x26D69A890](v26, a2);
        v28 = sub_26C0AB940();

        if (v28)
        {
          break;
        }

        v21 += 2;
        ++v22;
        v16 = v53;
        a2 = v27;
        a1 = v25;
        if (v51 == v18)
        {
          v20 = v49;
          goto LABEL_23;
        }
      }

      v29 = v49;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v56 = v49;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26C06B938(0, *(v49 + 2) + 1, 1);
        v29 = v56;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        sub_26C06B938((v31 > 1), v32 + 1, 1);
        v29 = v56;
      }

      *(v29 + 2) = v32 + 1;
      v33 = &v29[16 * v32];
      *(v33 + 4) = v23;
      *(v33 + 5) = v24;
      v19 = v45;
      a2 = v27;
      a1 = v25;
      v16 = v53;
      v20 = v29;
    }

    while (v44 != v22);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

LABEL_23:

  v34 = *(v20 + 2);

  if (v34)
  {
    if (v34 == 1)
    {

      if (*(v20 + 2))
      {
        if (*(v47 + 16))
        {
          v5 = v20;
          v35 = *(v20 + 5);
          v36 = *(v5 + 4);

          v37 = sub_26C06772C(v36, v35);
          v39 = v38;

          if (v39)
          {
            return sub_26C09FA5C(*(*(v47 + 56) + 8 * v37), v47, v46);
          }

          goto LABEL_40;
        }
      }

      else
      {
LABEL_38:
        __break(1u);
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v42 = 2;
LABEL_36:
    sub_26C072E10();
    swift_allocError();
    *v43 = a1;
    *(v43 + 8) = a2;
    *(v43 + 16) = v20;
    *(v43 + 24) = v42;
    return swift_willThrow();
  }

  v40 = *(v47 + 16);
  if (v40)
  {
    v41 = sub_26C072BB4(*(v47 + 16), 0);
    v54 = sub_26C072C38(v55, v41 + 4, v40, v47);
    v5 = v55[0];

    sub_26C072D90();
    if (v54 != v40)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v55[0] = v41;
  v5 = v48;
  sub_26C0AA298(v55);
  if (!v48)
  {
    v20 = v55[0];
    v42 = 1;
    goto LABEL_36;
  }

LABEL_43:
  MEMORY[0x26D69B350](v5);

  __break(1u);
  return result;
}

uint64_t sub_26C09D8D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 + 16);
  swift_bridgeObjectRetain_n();
  if (!v9)
  {
LABEL_6:
    v52 = a1;
    v49 = a2;
    v44 = v5;
LABEL_10:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v10 = sub_26C06772C(a1, a2);
  if (v11)
  {
    v12 = v10;
    swift_bridgeObjectRelease_n();
    v13 = *(*(a4 + 56) + 8 * v12);
    if ((v13 & 0x8000000000000000) != 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v14 = a5;
    if (v13 < *(a5 + 16))
    {
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_6;
  }

  v44 = v5;
  v15 = *(a4 + 16);
  v52 = a1;
  v49 = a2;
  if (!v15)
  {
    goto LABEL_10;
  }

  v43 = sub_26C072BB4(v15, 0);
  v47 = sub_26C072C38(v51, v43 + 4, v15, a4);
  v5 = v51[0];

  sub_26C072D90();
  if (v47 != v15)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v16 = v43;
LABEL_11:
  v45 = a4;
  v17 = v16[2];
  if (v17)
  {
    v18 = 0;
    v19 = v16 + 5;
    v20 = MEMORY[0x277D84F90];
    do
    {
      v48 = v20;
      v21 = &v19[2 * v18];
      v22 = v18;
      while (1)
      {
        if (v22 >= v16[2])
        {
          __break(1u);
          goto LABEL_44;
        }

        v24 = *(v21 - 1);
        v23 = *v21;
        v18 = v22 + 1;
        v51[0] = 46;
        v51[1] = 0xE100000000000000;

        MEMORY[0x26D69A890](v52, v49);
        v25 = sub_26C0AB940();

        if (v25)
        {
          break;
        }

        v21 += 2;
        ++v22;
        if (v17 == v18)
        {
          v20 = v48;
          goto LABEL_25;
        }
      }

      v20 = v48;
      v50 = v48;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26C06B938(0, *(v48 + 2) + 1, 1);
        v20 = v48;
      }

      v27 = *(v20 + 2);
      v26 = *(v20 + 3);
      if (v27 >= v26 >> 1)
      {
        sub_26C06B938((v26 > 1), v27 + 1, 1);
        v20 = v48;
      }

      *(v20 + 2) = v27 + 1;
      v28 = &v20[16 * v27];
      *(v28 + 4) = v24;
      *(v28 + 5) = v23;
      v19 = v16 + 5;
    }

    while (v17 - 1 != v22);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

LABEL_25:

  v29 = *(v20 + 2);

  if (!v29)
  {

    v30 = *(v45 + 16);
    v31 = v52;
    if (v30)
    {
      v38 = sub_26C072BB4(*(v45 + 16), 0);
      v39 = sub_26C072C38(v51, v38 + 4, v30, v45);

      sub_26C072D90();
      if (v39 != v30)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      v38 = MEMORY[0x277D84F90];
    }

    v5 = v44;
    v51[0] = v38;
    sub_26C0AA298(v51);
    if (v44)
    {
LABEL_51:
      MEMORY[0x26D69B350](v5);

      __break(1u);
      return result;
    }

    v41 = v51[0];
    v40 = 1;
LABEL_42:
    sub_26C072E10();
    swift_allocError();
    *v42 = v31;
    *(v42 + 8) = v49;
    *(v42 + 16) = v41;
    *(v42 + 24) = v40;
    return swift_willThrow();
  }

  v30 = v20;
  v31 = v52;
  if (v29 != 1)
  {
LABEL_38:
    v40 = 2;
    v41 = v30;
    goto LABEL_42;
  }

  if (!*(v20 + 2))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (!*(v45 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v5 = v20;
  v32 = *(v20 + 5);
  v33 = *(v20 + 4);

  v34 = sub_26C06772C(v33, v32);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v13 = *(*(v45 + 56) + 8 * v34);
  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v14 = a5;
  if (v13 >= *(a5 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_32:
  sub_26C06DF6C(v14 + 40 * v13 + 32, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  if (swift_dynamicCast())
  {
    return v50;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C09DD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a4 + 16);
  swift_bridgeObjectRetain_n();
  if (!v10)
  {
LABEL_6:
    v46 = a4;
    v52 = a2;
    v44 = v5;
LABEL_10:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v11 = sub_26C06772C(a1, a2);
  if (v12)
  {
    v13 = v11;
    swift_bridgeObjectRelease_n();
    v14 = *(*(a4 + 56) + 8 * v13);
    if ((v14 & 0x8000000000000000) != 0)
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    if (v14 < *(a5 + 16))
    {
      goto LABEL_32;
    }

    __break(1u);
    goto LABEL_6;
  }

  v44 = v5;
  v15 = *(a4 + 16);
  v46 = a4;
  v52 = a2;
  if (!v15)
  {
    goto LABEL_10;
  }

  v16 = sub_26C072BB4(v15, 0);
  v48 = sub_26C072C38(v51, v16 + 4, v15, a4);
  v5 = v51[0];

  sub_26C072D90();
  if (v48 != v15)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v17 = v16;
LABEL_11:
  v45 = a5;
  v49 = a1;
  v18 = v17[2];
  if (v18)
  {
    v19 = 0;
    v20 = v17 + 5;
    v21 = MEMORY[0x277D84F90];
    do
    {
      v47 = v21;
      v22 = &v20[2 * v19];
      v23 = v19;
      while (1)
      {
        if (v23 >= v17[2])
        {
          __break(1u);
          goto LABEL_44;
        }

        v24 = *(v22 - 1);
        v25 = *v22;
        v19 = v23 + 1;
        v51[0] = 46;
        v51[1] = 0xE100000000000000;

        MEMORY[0x26D69A890](v49, v52);
        v26 = sub_26C0AB940();

        if (v26)
        {
          break;
        }

        v22 += 2;
        ++v23;
        if (v18 == v19)
        {
          v21 = v47;
          goto LABEL_25;
        }
      }

      v21 = v47;
      v50 = v47;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26C06B938(0, v47[2] + 1, 1);
        v21 = v47;
      }

      v28 = v21[2];
      v27 = v21[3];
      if (v28 >= v27 >> 1)
      {
        sub_26C06B938((v27 > 1), v28 + 1, 1);
        v21 = v47;
      }

      v21[2] = v28 + 1;
      v29 = &v21[2 * v28];
      v29[4] = v24;
      v29[5] = v25;
      v20 = v17 + 5;
    }

    while (v18 - 1 != v23);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

LABEL_25:

  v30 = v21[2];
  v31 = v52;

  if (!v30)
  {

    v39 = *(v46 + 16);
    if (v39)
    {
      v40 = sub_26C072BB4(*(v46 + 16), 0);
      v32 = sub_26C072C38(v51, v40 + 4, v39, v46);

      sub_26C072D90();
      if (v32 != v39)
      {
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      v40 = MEMORY[0x277D84F90];
    }

    v5 = v44;
    v51[0] = v40;
    sub_26C0AA298(v51);
    if (v44)
    {
LABEL_51:
      MEMORY[0x26D69B350](v5);

      __break(1u);
      return result;
    }

    v42 = v51[0];
    v41 = 1;
LABEL_42:
    sub_26C072E10();
    swift_allocError();
    *v43 = v49;
    *(v43 + 8) = v31;
    *(v43 + 16) = v42;
    *(v43 + 24) = v41;
    return swift_willThrow();
  }

  v32 = v21;
  if (v30 != 1)
  {
LABEL_38:
    v41 = 2;
    v42 = v32;
    goto LABEL_42;
  }

  if (!v21[2])
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  a5 = v45;
  if (!*(v46 + 16))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v33 = v21[4];
  v34 = v21[5];

  v35 = sub_26C06772C(v33, v34);
  v37 = v36;

  if ((v37 & 1) == 0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = *(*(v46 + 56) + 8 * v35);
  if ((v14 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v14 >= *(v45 + 16))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

LABEL_32:
  sub_26C06DF6C(a5 + 40 * v14 + 32, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  if (swift_dynamicCast())
  {
    return v50;
  }

  else
  {
    return 0;
  }
}

void sub_26C09E1FC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v11 = *(a3 + 16);
  swift_bridgeObjectRetain_n();
  if (!v11)
  {
    v49 = v5;
LABEL_8:
    v16 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v12 = sub_26C06772C(a1, a2);
  if (v13)
  {
    v14 = v12;
    swift_bridgeObjectRelease_n();
    sub_26C09FAEC(*(*(a3 + 56) + 8 * v14), a4, a5);
    return;
  }

  v15 = *(a3 + 16);
  v49 = v5;
  if (!v15)
  {
    goto LABEL_8;
  }

  v53 = sub_26C072BB4(v15, 0);
  v51 = sub_26C072C38(v56, v53 + 4, v15, a3);
  v5 = v56[0];

  sub_26C072D90();
  if (v51 != v15)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v16 = v53;
LABEL_9:
  v46 = a4;
  v47 = a5;
  v48 = a3;
  v17 = v16[2];
  if (v17)
  {
    v18 = 0;
    v19 = v16 + 5;
    v52 = v16[2];
    v44 = v17 - 1;
    v20 = MEMORY[0x277D84F90];
    v54 = v16;
    v45 = v16 + 5;
    do
    {
      v50 = v20;
      v21 = &v19[2 * v18];
      v22 = v18;
      while (1)
      {
        if (v22 >= v16[2])
        {
          __break(1u);
          goto LABEL_38;
        }

        v24 = *(v21 - 1);
        v23 = *v21;
        v18 = v22 + 1;
        v56[0] = 46;
        v56[1] = 0xE100000000000000;

        v25 = a1;
        v26 = a1;
        v27 = a2;
        MEMORY[0x26D69A890](v26, a2);
        v28 = sub_26C0AB940();

        if (v28)
        {
          break;
        }

        v21 += 2;
        ++v22;
        v16 = v54;
        a2 = v27;
        a1 = v25;
        if (v52 == v18)
        {
          v20 = v50;
          goto LABEL_23;
        }
      }

      v29 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57 = v50;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26C06B938(0, *(v50 + 2) + 1, 1);
        v29 = v57;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        sub_26C06B938((v31 > 1), v32 + 1, 1);
        v29 = v57;
      }

      *(v29 + 2) = v32 + 1;
      v33 = &v29[16 * v32];
      *(v33 + 4) = v24;
      *(v33 + 5) = v23;
      v19 = v45;
      a2 = v27;
      a1 = v25;
      v16 = v54;
      v20 = v29;
    }

    while (v44 != v22);
  }

  else
  {
    v20 = MEMORY[0x277D84F90];
  }

LABEL_23:

  v34 = *(v20 + 2);

  if (v34)
  {
    if (v34 == 1)
    {

      if (*(v20 + 2))
      {
        if (*(v48 + 16))
        {
          v5 = v20;
          v35 = *(v20 + 5);
          v36 = *(v5 + 4);

          v37 = sub_26C06772C(v36, v35);
          v39 = v38;

          if (v39)
          {
            sub_26C09FAEC(*(*(v48 + 56) + 8 * v37), v46, v47);
            return;
          }

          goto LABEL_40;
        }
      }

      else
      {
LABEL_38:
        __break(1u);
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v42 = 2;
LABEL_36:
    sub_26C072E10();
    swift_allocError();
    *v43 = a1;
    *(v43 + 8) = a2;
    *(v43 + 16) = v20;
    *(v43 + 24) = v42;
    swift_willThrow();
    return;
  }

  v40 = *(v48 + 16);
  if (v40)
  {
    v41 = sub_26C072BB4(*(v48 + 16), 0);
    v55 = sub_26C072C38(v56, v41 + 4, v40, v48);
    v5 = v56[0];

    sub_26C072D90();
    if (v55 != v40)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
    v41 = MEMORY[0x277D84F90];
  }

  v56[0] = v41;
  v5 = v49;
  sub_26C0AA298(v56);
  if (!v49)
  {
    v20 = v56[0];
    v42 = 1;
    goto LABEL_36;
  }

LABEL_43:
  MEMORY[0x26D69B350](v5);

  __break(1u);
}

unint64_t sub_26C09E668@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v11 = *(a3 + 16);
  swift_bridgeObjectRetain_n();
  if (!v11)
  {
    v50 = v5;
LABEL_8:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  v12 = sub_26C06772C(a1, a2);
  if (v13)
  {
    v14 = v12;
    swift_bridgeObjectRelease_n();
    return sub_26C09FC84(*(*(a3 + 56) + 8 * v14), a4, a5);
  }

  v16 = *(a3 + 16);
  v50 = v5;
  if (!v16)
  {
    goto LABEL_8;
  }

  v54 = sub_26C072BB4(v16, 0);
  v52 = sub_26C072C38(v57, v54 + 4, v16, a3);
  v5 = v57[0];

  sub_26C072D90();
  if (v52 != v16)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v17 = v54;
LABEL_9:
  v47 = a4;
  v48 = a5;
  v49 = a3;
  v18 = v17[2];
  if (v18)
  {
    v19 = 0;
    v20 = v17 + 5;
    v53 = v17[2];
    v45 = v18 - 1;
    v21 = MEMORY[0x277D84F90];
    v55 = v17;
    v46 = v17 + 5;
    do
    {
      v51 = v21;
      v22 = &v20[2 * v19];
      v23 = v19;
      while (1)
      {
        if (v23 >= v17[2])
        {
          __break(1u);
          goto LABEL_38;
        }

        v25 = *(v22 - 1);
        v24 = *v22;
        v19 = v23 + 1;
        v57[0] = 46;
        v57[1] = 0xE100000000000000;

        v26 = a1;
        v27 = a1;
        v28 = a2;
        MEMORY[0x26D69A890](v27, a2);
        v29 = sub_26C0AB940();

        if (v29)
        {
          break;
        }

        v22 += 2;
        ++v23;
        v17 = v55;
        a2 = v28;
        a1 = v26;
        if (v53 == v19)
        {
          v21 = v51;
          goto LABEL_23;
        }
      }

      v30 = v51;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v58 = v51;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_26C06B938(0, *(v51 + 2) + 1, 1);
        v30 = v58;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        sub_26C06B938((v32 > 1), v33 + 1, 1);
        v30 = v58;
      }

      *(v30 + 2) = v33 + 1;
      v34 = &v30[16 * v33];
      *(v34 + 4) = v25;
      *(v34 + 5) = v24;
      v20 = v46;
      a2 = v28;
      a1 = v26;
      v17 = v55;
      v21 = v30;
    }

    while (v45 != v23);
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

LABEL_23:

  v35 = *(v21 + 2);

  if (v35)
  {
    if (v35 == 1)
    {

      if (*(v21 + 2))
      {
        if (*(v49 + 16))
        {
          v5 = v21;
          v36 = *(v21 + 5);
          v37 = *(v5 + 4);

          v38 = sub_26C06772C(v37, v36);
          v40 = v39;

          if (v40)
          {
            return sub_26C09FC84(*(*(v49 + 56) + 8 * v38), v47, v48);
          }

          goto LABEL_40;
        }
      }

      else
      {
LABEL_38:
        __break(1u);
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    v43 = 2;
LABEL_36:
    sub_26C072E10();
    swift_allocError();
    *v44 = a1;
    *(v44 + 8) = a2;
    *(v44 + 16) = v21;
    *(v44 + 24) = v43;
    return swift_willThrow();
  }

  v41 = *(v49 + 16);
  if (v41)
  {
    v42 = sub_26C072BB4(*(v49 + 16), 0);
    v56 = sub_26C072C38(v57, v42 + 4, v41, v49);
    v5 = v57[0];

    sub_26C072D90();
    if (v56 != v41)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  else
  {
    v42 = MEMORY[0x277D84F90];
  }

  v57[0] = v42;
  v5 = v50;
  sub_26C0AA298(v57);
  if (!v50)
  {
    v21 = v57[0];
    v43 = 1;
    goto LABEL_36;
  }

LABEL_43:
  MEMORY[0x26D69B350](v5);

  __break(1u);
  return result;
}

uint64_t sub_26C09EAD4()
{
  v1 = sub_26C0ABB60();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 16);

  sub_26C0ABB50();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84168], v1);
  return swift_willThrow();
}

uint64_t sub_26C09EB94()
{
  v1 = sub_26C0ABB60();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 16);

  sub_26C0ABB50();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84168], v1);
  return swift_willThrow();
}

uint64_t sub_26C09EC54()
{
  v1 = sub_26C0ABB60();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 16);

  sub_26C0ABB50();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84168], v1);
  return swift_willThrow();
}

uint64_t sub_26C09ED14()
{
  v1 = sub_26C0ABB60();
  swift_allocError();
  v3 = v2;
  v4 = *(v0 + 16);

  sub_26C0ABB50();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84168], v1);
  return swift_willThrow();
}

void *sub_26C09EDD4()
{
  v1 = v0[2];

  v3 = v0[3];
  v2 = v0[4];

  return v0;
}

uint64_t sub_26C09EE0C()
{
  sub_26C09EDD4();

  return swift_deallocClassInstance();
}

uint64_t sub_26C09F0C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return a4(a1, v9, a3);
}

uint64_t sub_26C09F148(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return sub_26C0ABC90();
}

uint64_t sub_26C09F19C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return sub_26C0ABC80();
}

uint64_t sub_26C09F3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return a4(a1, v9, a3) & 0x1FF;
}

uint64_t sub_26C09F444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return a4(a1, v9, a3) & 0x1FFFF;
}

uint64_t sub_26C09F4E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  v10 = a4(a1, v9, a3);
  return v10 | ((HIDWORD(v10) & 1) << 32);
}

uint64_t sub_26C09F584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  v10 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  result = a4(a1, v10, a3);
  if (v4)
  {
    return v12;
  }

  return result;
}

uint64_t sub_26C09F618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  v10 = type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  result = a4(a1, v10, a3);
  if (v4)
  {
    return v12;
  }

  return result;
}

uint64_t sub_26C09F684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  return sub_26C0ABCA0();
}

uint64_t sub_26C09F794()
{
  type metadata accessor for SQLiteDecoder.SQLiteKeyedDecodingContainer();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_allocObject();
  v3[2] = MEMORY[0x277D84F90];
  v3[3] = v2;
  v3[4] = v1;

  swift_getWitnessTable();
  return sub_26C0ABC30();
}

uint64_t sub_26C09F84C()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[4];

  v4 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_26C09F8D4()
{
  v1 = *v0;
  v2 = sub_26C0ABB60();
  swift_allocError();
  v4 = v3;
  v5 = *(v1 + 32);

  sub_26C0ABB50();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84168], v2);
  return swift_willThrow();
}

uint64_t sub_26C09F998()
{
  v1 = *v0;
  v2 = sub_26C0ABB60();
  swift_allocError();
  v4 = v3;
  v5 = *(v1 + 32);

  sub_26C0ABB50();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x277D84168], v2);
  return swift_willThrow();
}

unint64_t sub_26C09FA5C(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v7 = v3;
  v8 = v4;
  sub_26C06DF6C(a3 + 40 * result + 32, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  if (swift_dynamicCast())
  {
    return v5 != 0;
  }

  else
  {
    return 2;
  }
}

void sub_26C09FAEC(unint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v3 = a3;
  if (*(a2 + 16) <= a1)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  sub_26C06DF6C(a2 + 40 * a1 + 32, v9);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  if (!swift_dynamicCast())
  {
    v7 = 1;
    goto LABEL_8;
  }

  if (qword_280B5A8E8 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  swift_beginAccess();
  v4 = qword_280B5A8F0;
  v5 = sub_26C0AB830();
  v6 = [v4 dateFromString_];

  if (v6)
  {
    sub_26C0AB700();

    v7 = 0;
LABEL_8:
    v8 = sub_26C0AB710();
    (*(*(v8 - 8) + 56))(v3, v7, 1, v8);
    return;
  }

  __break(1u);
}

unint64_t sub_26C09FC84@<X0>(unint64_t result@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(a2 + 16) <= result)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_26C06DF6C(a2 + 40 * result + 32, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
  if (swift_dynamicCast())
  {
    v4 = sub_26C06C7A0(v7);
    v6 = v5;
  }

  else
  {

    v4 = 0;
    v6 = 0xF000000000000000;
  }

  *a3 = v4;
  a3[1] = v6;
  return result;
}

uint64_t sub_26C09FD70(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_26C09FE58(char a1)
{
  v3 = sub_26C0ABB80();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838) + 48);
  *(v5 + 24) = MEMORY[0x277D84900];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_26C0ABB50();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D841A8], v3);
  return swift_willThrow();
}

uint64_t sub_26C09FF44(__int16 a1)
{
  v3 = sub_26C0ABB80();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838) + 48);
  *(v5 + 24) = MEMORY[0x277D84958];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_26C0ABB50();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D841A8], v3);
  return swift_willThrow();
}

uint64_t sub_26C0A0030(int a1)
{
  v3 = sub_26C0ABB80();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838) + 48);
  *(v5 + 24) = MEMORY[0x277D849A8];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_26C0ABB50();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D841A8], v3);
  return swift_willThrow();
}

uint64_t sub_26C0A011C(uint64_t a1)
{
  v3 = sub_26C0ABB80();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838) + 48);
  v5[3] = MEMORY[0x277D83E88];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_26C0ABB50();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D841A8], v3);
  return swift_willThrow();
}

uint64_t sub_26C0A0208(char a1)
{
  v3 = sub_26C0ABB80();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838) + 48);
  *(v5 + 24) = MEMORY[0x277D84B78];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_26C0ABB50();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D841A8], v3);
  return swift_willThrow();
}

uint64_t sub_26C0A02F4(__int16 a1)
{
  v3 = sub_26C0ABB80();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838) + 48);
  *(v5 + 24) = MEMORY[0x277D84C58];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_26C0ABB50();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D841A8], v3);
  return swift_willThrow();
}

uint64_t sub_26C0A03E0(int a1)
{
  v3 = sub_26C0ABB80();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838) + 48);
  *(v5 + 24) = MEMORY[0x277D84CC0];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_26C0ABB50();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D841A8], v3);
  return swift_willThrow();
}

uint64_t sub_26C0A04CC(uint64_t a1)
{
  v3 = sub_26C0ABB80();
  swift_allocError();
  v5 = v4;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479620, &qword_26C0AD838) + 48);
  v5[3] = MEMORY[0x277D84D38];
  *v5 = a1;
  v7 = *(v1 + 24);

  sub_26C0ABB50();
  (*(*(v3 - 8) + 104))(v5, *MEMORY[0x277D841A8], v3);
  return swift_willThrow();
}

uint64_t sub_26C0A05B8()
{
  v1 = sub_26C0ABB60();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840) + 48);
  *v3 = MEMORY[0x277D84900];
  v5 = *(v0 + 16);

  sub_26C0ABB50();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84160], v1);
  return swift_willThrow();
}

uint64_t sub_26C0A069C()
{
  v1 = sub_26C0ABB60();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840) + 48);
  *v3 = MEMORY[0x277D84958];
  v5 = *(v0 + 16);

  sub_26C0ABB50();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84160], v1);
  return swift_willThrow();
}

uint64_t sub_26C0A0780()
{
  v1 = sub_26C0ABB60();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840) + 48);
  *v3 = MEMORY[0x277D849A8];
  v5 = *(v0 + 16);

  sub_26C0ABB50();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84160], v1);
  return swift_willThrow();
}

uint64_t sub_26C0A0864()
{
  v1 = sub_26C0ABB60();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840) + 48);
  *v3 = MEMORY[0x277D83E88];
  v5 = *(v0 + 16);

  sub_26C0ABB50();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84160], v1);
  return swift_willThrow();
}

uint64_t sub_26C0A0948()
{
  v1 = sub_26C0ABB60();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840) + 48);
  *v3 = MEMORY[0x277D84B78];
  v5 = *(v0 + 16);

  sub_26C0ABB50();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84160], v1);
  return swift_willThrow();
}

uint64_t sub_26C0A0A2C()
{
  v1 = sub_26C0ABB60();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840) + 48);
  *v3 = MEMORY[0x277D84C58];
  v5 = *(v0 + 16);

  sub_26C0ABB50();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84160], v1);
  return swift_willThrow();
}

uint64_t sub_26C0A0B10()
{
  v1 = sub_26C0ABB60();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840) + 48);
  *v3 = MEMORY[0x277D84CC0];
  v5 = *(v0 + 16);

  sub_26C0ABB50();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84160], v1);
  return swift_willThrow();
}

uint64_t sub_26C0A0BF4()
{
  v1 = sub_26C0ABB60();
  swift_allocError();
  v3 = v2;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479628, &unk_26C0AD840) + 48);
  *v3 = MEMORY[0x277D84D38];
  v5 = *(v0 + 16);

  sub_26C0ABB50();
  (*(*(v1 - 8) + 104))(v3, *MEMORY[0x277D84160], v1);
  return swift_willThrow();
}

uint64_t sub_26C0A0CD8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26C0710CC(a1, a2);
  }

  return a1;
}

uint64_t sub_26C0A0CEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479630, &qword_26C0AD850);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26C0A0D54(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *a1;
  v5 = a1[1];

  return sub_26C0ABDA0();
}

unint64_t sub_26C0A0DB8()
{
  result = qword_280479640;
  if (!qword_280479640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280479638, &qword_26C0AD858);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280479640);
  }

  return result;
}

uint64_t sub_26C0A0E5C@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1)
  {

    return sub_26C070730(0, a2, a3, a4);
  }

  else
  {
    v6 = *(a3 + 16);
    v6(v14, a2, a3);
    v9 = v14[5];

    sub_26C06B68C(v14);
    if (!v9)
    {
      v6(v13, a2, a3);

      sub_26C06B68C(v13);
    }

    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    a4[4] = &protocol witness table for Expression<A>;
    v10 = sub_26C067104(34, 0xE100000000000000);
    v12 = v11;

    *a4 = v10;
    a4[1] = v12;
    a4[2] = MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_26C0A0F9C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE90000000000004ELL;
  v3 = 0x4F49544341204F4ELL;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0x5443495254534552;
    }

    else
    {
      v5 = 0x4F49544341204F4ELL;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE90000000000004ELL;
    }
  }

  else if (a1 == 2)
  {
    v6 = 0xE800000000000000;
    v5 = 0x4C4C554E20544553;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x4146454420544553;
    }

    else
    {
      v5 = 0x45444143534143;
    }

    if (v4 == 3)
    {
      v6 = 0xEB00000000544C55;
    }

    else
    {
      v6 = 0xE700000000000000;
    }
  }

  v7 = 0xE800000000000000;
  v8 = 0x4C4C554E20544553;
  v9 = 0x4146454420544553;
  v10 = 0xEB00000000544C55;
  if (a2 != 3)
  {
    v9 = 0x45444143534143;
    v10 = 0xE700000000000000;
  }

  if (a2 != 2)
  {
    v8 = v9;
    v7 = v10;
  }

  if (a2)
  {
    v3 = 0x5443495254534552;
    v2 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v8;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v7;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_26C0ABC70();
  }

  return v13 & 1;
}

uint64_t sub_26C0A1130(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x4B4341424C4C4F52;
    }

    else
    {
      v4 = 0x4543414C504552;
    }

    if (v2)
    {
      v3 = 0xE800000000000000;
    }

    else
    {
      v3 = 0xE700000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE500000000000000;
    v4 = 0x54524F4241;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1279869254;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x45524F4E4749;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x4B4341424C4C4F52;
    }

    else
    {
      v9 = 0x4543414C504552;
    }

    if (a2)
    {
      v8 = 0xE800000000000000;
    }

    else
    {
      v8 = 0xE700000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1279869254;
    if (a2 != 3)
    {
      v6 = 0x45524F4E4749;
      v5 = 0xE600000000000000;
    }

    if (a2 == 2)
    {
      v7 = 0x54524F4241;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE500000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_26C0ABC70();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

SwiftSQLite::Insert __swiftcall QueryType.insert(_:)(Swift::OpaquePointer a1)
{
  v7 = 5;
  v4 = sub_26C0700AC(&v7, a1._rawValue, v1, v2, v3);
  result.bindings._rawValue = v6;
  result.template._object = v5;
  result.template._countAndFlagsBits = v4;
  return result;
}

SwiftSQLite::Insert __swiftcall QueryType.insertMany(_:)(Swift::OpaquePointer a1)
{
  v7 = 5;
  v4 = sub_26C0A3D04(&v7, a1._rawValue, v1, v2, v3);
  result.bindings._rawValue = v6;
  result.template._object = v5;
  result.template._countAndFlagsBits = v4;
  return result;
}

uint64_t QueryType.upsert(_:onConflictOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v7 = a2;
  v33 = a2;

  v10 = sub_26C0A4D38(sub_26C0A4D18, v32, a1);
  v11 = *(v10 + 16);
  if (v11)
  {
    v29 = a5;
    v30 = v7;
    v31 = a3;
    v40 = MEMORY[0x277D84F90];
    sub_26C088A20(0, v11, 0);
    v12 = v40;
    v13 = v10 + 32;
    do
    {
      sub_26C06FE38(v13, v37);
      sub_26C06B6BC(v37, v34);
      v14 = sub_26C067104(34, 0xE100000000000000);
      v16 = v15;
      sub_26C06B6BC(v34, v38);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C0AC580;
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(inited + 56) = v18;
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = v14;
      *(inited + 40) = v16;
      *(inited + 48) = MEMORY[0x277D84F90];
      v20 = v35;
      v19 = v36;
      __swift_project_boxed_opaque_existential_1(v34, v35);
      v21 = *(v19 + 8);
      *(inited + 96) = v18;
      *(inited + 104) = &protocol witness table for Expression<A>;
      v21(v20, v19);
      sub_26C0688D8(inited, v39 + 1);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayDestroy();
      sub_26C0717EC(v37);
      __swift_destroy_boxed_opaque_existential_1(v34);
      v40 = v12;
      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_26C088A20((v22 > 1), v23 + 1, 1);
        v12 = v40;
      }

      *(v12 + 16) = v23 + 1;
      v24 = (v12 + 80 * v23);
      v24[2] = v38[0];
      v25 = v38[1];
      v26 = v39[0];
      v27 = v39[2];
      v24[5] = v39[1];
      v24[6] = v27;
      v24[3] = v25;
      v24[4] = v26;
      v13 += 80;
      --v11;
    }

    while (v11);

    v7 = v30;
    a3 = v31;
    a5 = v29;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  QueryType.upsert(_:onConflictOf:set:)(a1, v7, v12, a3, a4, a5);
}

SwiftSQLite::Update __swiftcall QueryType.update(_:)(Swift::OpaquePointer a1)
{
  v5 = v2;
  v6 = v1;
  v43 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v61 = &protocol witness table for Expression<A>;
  v57 = 0x455441445055;
  v58 = 0xE600000000000000;
  v9 = MEMORY[0x277D84F90];
  v59 = MEMORY[0x277D84F90];
  v60 = v8;
  sub_26C070730(0, v6, v5, v62);
  v62[8] = v8;
  v62[9] = &protocol witness table for Expression<A>;
  v62[5] = 5522771;
  v62[6] = 0xE300000000000000;
  v62[7] = v9;
  v10 = *(a1._rawValue + 2);
  if (v10)
  {
    v40 = v6;
    v41 = v5;
    v42 = v4;
    *&v45[0] = v9;
    sub_26C07272C(0, v10, 0);
    v11 = a1._rawValue + 32;
    v44 = xmmword_26C0AC580;
    do
    {
      sub_26C06FE38(v11, &v48);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = v44;
      sub_26C06B6BC(&v48, inited + 32);
      sub_26C06B6BC(&v51, inited + 72);
      sub_26C0688D8(inited, &v52);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      swift_arrayDestroy();
      sub_26C0717EC(&v48);
      *&v45[0] = v9;
      v14 = *(v9 + 16);
      v13 = *(v9 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26C07272C((v13 > 1), v14 + 1, 1);
      }

      v15 = v54;
      v16 = v55;
      v17 = __swift_mutable_project_boxed_opaque_existential_1(&v52, v54);
      v18 = *(*(v15 - 8) + 64);
      MEMORY[0x28223BE20](v17);
      v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v21 + 16))(v20);
      sub_26C072778(v14, v20, v45, v15, v16);
      __swift_destroy_boxed_opaque_existential_1(&v52);
      v9 = *&v45[0];
      v11 += 80;
      --v10;
    }

    while (v10);
    v5 = v41;
    v6 = v40;
  }

  sub_26C0688D8(v9, v63);

  sub_26C071840(v5, &v64);
  sub_26C0A3164(v6, v5, &v65);
  sub_26C0A32FC(v5, &v66);
  v22 = MEMORY[0x277D84F90];
  for (i = 32; i != 312; i += 40)
  {
    sub_26C067878(&v56[i], &v48, &qword_280479360, &qword_26C0AC5D8);
    v45[0] = v48;
    v45[1] = v49;
    v46 = v50;
    if (*(&v49 + 1))
    {
      sub_26C06A3A8(v45, &v52);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47[0] = v22;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v22 = sub_26C06A384(0, v22[2] + 1, 1, v22);
        v47[0] = v22;
      }

      v26 = v22[2];
      v25 = v22[3];
      if (v26 >= v25 >> 1)
      {
        v22 = sub_26C06A384((v25 > 1), v26 + 1, 1, v22);
        v47[0] = v22;
      }

      v27 = v54;
      v28 = v55;
      v29 = __swift_mutable_project_boxed_opaque_existential_1(&v52, v54);
      v30 = *(*(v27 - 8) + 64);
      MEMORY[0x28223BE20](v29);
      v32 = &v40 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v33 + 16))(v32);
      sub_26C06A410(v26, v32, v47, v27, v28);
      __swift_destroy_boxed_opaque_existential_1(&v52);
    }

    else
    {
      sub_26C06A56C(v45, &qword_280479360, &qword_26C0AC5D8);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
  swift_arrayDestroy();
  sub_26C0688D8(v22, &v48);

  v34 = *(&v49 + 1);
  v35 = v50;
  __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
  (*(v35 + 8))(&v52, v34, v35);
  v36 = v43;
  *v43 = v52;
  *(v36 + 1) = v53;
  v37 = __swift_destroy_boxed_opaque_existential_1(&v48);
  result.bindings._rawValue = v39;
  result.template._object = v38;
  result.template._countAndFlagsBits = v37;
  return result;
}

uint64_t sub_26C0A1B18()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = sub_26C067104(34, 0xE100000000000000);
  if (!*(v2 + 16))
  {

    return 0;
  }

  v6 = sub_26C06772C(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v10 = *(*(v2 + 56) + 8 * v6);
  if ((v10 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v10 < *(v3 + 16))
  {
    sub_26C067878(v3 + 40 * v10 + 32, v12, &qword_2804793C0, &qword_26C0AC810);
    v11 = v13 != 0;
    sub_26C06A56C(v12, &qword_2804793C0, &qword_26C0AC810);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_26C0A1C5C(void (*a1)(void *, void *), uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C0AC5C0;
  memset(v12, 0, sizeof(v12));
  memset(v11, 0, sizeof(v11));
  *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(v9 + 64) = &protocol witness table for Expression<A>;
  a1(v12, v11);
  sub_26C0714E8(a5, v9, a3, a3, *(a4 + 8), *(a4 + 8));
}

uint64_t SchemaType.select<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_26C0A1D78(a1, a2, a3, a4, a5, 0);
}

{
  return sub_26C0A1E84(a1, a2, a3, a4, a5, 0);
}

uint64_t SchemaType.select<A>(distinct:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return sub_26C0A1D78(a1, a2, a3, a4, a5, 1);
}

{
  return sub_26C0A1E84(a1, a2, a3, a4, a5, 1);
}

uint64_t sub_26C0A1D78(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26C0AC5C0;
  *(v12 + 56) = type metadata accessor for Expression();
  *(v12 + 64) = &protocol witness table for Expression<A>;
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;
  *(v12 + 48) = v11;
  v13 = type metadata accessor for ScalarQuery();
  v14 = *(a4 + 8);

  sub_26C0714E8(a6, v12, a2, v13, v14, &protocol witness table for ScalarQuery<A>);
}

uint64_t sub_26C0A1E84(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26C0AC5C0;
  sub_26C0ABAF0();
  *(v12 + 56) = type metadata accessor for Expression();
  *(v12 + 64) = &protocol witness table for Expression<A>;
  *(v12 + 32) = v10;
  *(v12 + 40) = v9;
  *(v12 + 48) = v11;
  v13 = type metadata accessor for ScalarQuery();
  v14 = *(a4 + 8);

  sub_26C0714E8(a6, v12, a2, v13, v14, &protocol witness table for ScalarQuery<A>);
}

uint64_t SchemaType.count.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  v15 = &protocol witness table for Expression<A>;
  v11 = 42;
  v12 = 0xE100000000000000;
  v13 = MEMORY[0x277D84F90];
  v14 = v4;
  MEMORY[0x26D69A890](40, 0xE100000000000000);
  v5 = __swift_project_boxed_opaque_existential_1(&v11, v14);
  v6 = v11;
  v7 = v12;

  MEMORY[0x26D69A890](v6, v7);

  MEMORY[0x26D69A890](41, 0xE100000000000000);
  v8 = v5[2];

  __swift_destroy_boxed_opaque_existential_1(&v11);
  v11 = 0x746E756F63;
  v12 = 0xE500000000000000;
  v13 = v8;
  SchemaType.select<A>(_:)(&v11, a1, MEMORY[0x277D83B88], a2, v9);
}

uint64_t QueryType.union(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  sub_26C06B6BC(a1, v17);
  v8 = (*(a3 + 32))(v16, a2, a3);
  v10 = v9;
  v11 = *(v9 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v10 + 160) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_26C072810(0, v11[2] + 1, 1, v11);
    *(v10 + 160) = v11;
  }

  v14 = v11[2];
  v13 = v11[3];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_26C072810((v13 > 1), v14 + 1, 1, v11);
    *(v10 + 160) = v11;
  }

  v11[2] = v14 + 1;
  sub_26C06A3A8(v17, &v11[5 * v14 + 4]);
  return v8(v16, 0);
}

uint64_t QueryType.join(_:on:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *a2;
  v9 = a2[1];
  v11 = a2[2];

  v14 = 1;
  v13[0] = v10;
  v13[1] = v9;
  v13[2] = v11;
  QueryType.join(_:_:on:)(&v14, a1, v13, a3, a4, a5);
}

uint64_t QueryType.join(_:on:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  v9 = 1;
  v7 = v5;
  v8 = *(a2 + 8);
  return QueryType.join(_:_:on:)(&v9, a1, &v7, a3, a4, a5);
}

uint64_t QueryType.where(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = a1[2];

  v11[0] = v8;
  v11[1] = v7;
  v11[2] = v9;
  QueryType.filter(_:)(v11, a2, a3, a4);
}

uint64_t QueryType.where(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  return QueryType.filter(_:)(&v5, a2, a3, a4);
}

uint64_t sub_26C0A241C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  (*(*(a3 - 8) + 16))(a5, v5);
  v12 = *(a4 + 32);

  sub_26C06E874(v9, v10);
  v13 = v12(v20, a3, a4);
  v15 = v14[12];
  v16 = v14[13];
  v17 = v14[14];
  v18 = v14[15];
  v14[12] = a1;
  v14[13] = v9;
  v14[14] = v10;
  v14[15] = v11;
  sub_26C0AB250(v15, v16, v17);
  return v13(v20, 0);
}

uint64_t QueryType.group(_:having:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  return sub_26C0A254C(a1, a2, a3, a4, QueryType.group(_:having:));
}

{
  return sub_26C0A254C(a1, a2, a3, a4, QueryType.group(_:having:));
}

uint64_t sub_26C0A254C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t))
{
  v10 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_26C0AC5C0;
  sub_26C06B6BC(a1, v11 + 32);
  v13 = v10;
  v14 = *(a2 + 1);
  a5(v11, &v13, a3, a4);
}

uint64_t _s11SwiftSQLite9QueryTypePAAE5group_6havingxSayAA11Expressible_pG_AA10ExpressionVySbGtF_0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a2[1];
  v10 = a2[2];
  v14 = *a2;
  v15 = v9;
  v16 = v10;

  sub_26C0A241C(a1, &v14, a3, a4, a5);
  v11 = v14;
  v12 = v15;

  return sub_26C06E9FC(v11, v12);
}

uint64_t QueryType.order(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a2 - 8) + 16))(a4, v4, a2);
  v8 = *(a3 + 32);

  v9 = v8(v13, a2, a3);
  v11 = *(v10 + 128);
  *(v10 + 128) = a1;

  return v9(v13, 0);
}

uint64_t QueryType.limit(_:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  v10 = (*(a4 + 32))(v13, a3, a4);
  *(v11 + 136) = a1;
  *(v11 + 144) = a2;
  *(v11 + 152) = 0;
  return v10(v13, 0);
}

uint64_t sub_26C0A2854@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C0AC590;
  v6 = *(a2 + 16);
  v6(v15, a1, a2);
  sub_26C06B68C(v15);
  if (LOBYTE(v15[0]))
  {
    v7 = 0x44205443454C4553;
  }

  else
  {
    v7 = 0x5443454C4553;
  }

  if (LOBYTE(v15[0]))
  {
    v8 = 0xEF54434E49545349;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
  *(inited + 56) = v9;
  *(inited + 64) = &protocol witness table for Expression<A>;
  *(inited + 32) = v7;
  v10 = MEMORY[0x277D84F90];
  *(inited + 40) = v8;
  *(inited + 48) = v10;
  v6(v14, a1, a2);
  v11 = v14[1];

  sub_26C06B68C(v14);
  sub_26C0688D8(v11, (inited + 72));

  *(inited + 136) = v9;
  *(inited + 144) = &protocol witness table for Expression<A>;
  *(inited + 112) = 1297044038;
  *(inited + 120) = 0xE400000000000000;
  *(inited + 128) = v10;
  sub_26C070730(1, a1, a2, (inited + 152));
  sub_26C0688D8(inited, a3);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
  return swift_arrayDestroy();
}

uint64_t sub_26C0A2A2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v51);
  v7 = v51[8];

  sub_26C06B68C(v51);
  v8 = *(v7 + 16);

  if (v8)
  {
    v35 = a3;
    (v6)(v50, a1, a2);
    v10 = v50[8];

    sub_26C06B68C(v50);
    v11 = *(v10 + 16);
    if (v11)
    {
      v49 = MEMORY[0x277D84F90];
      result = sub_26C07272C(0, v11, 0);
      v12 = 0;
      v13 = v10 + 32;
      v14 = v49;
      v36 = xmmword_26C0AC590;
      v37 = v11;
      v38 = v10;
      while (v12 < *(v10 + 16))
      {
        sub_26C067878(v13, v48, &qword_2804793E0, &qword_26C0AC830);
        sub_26C067878(v48, &v39, &qword_2804793E0, &qword_26C0AC830);
        v15 = v39;
        sub_26C06A3A8(&v40, v45);
        sub_26C06A3A8(&v43, v44);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
        v16 = swift_allocObject();
        *(v16 + 16) = v36;
        v39 = 0;
        *&v40 = 0xE000000000000000;
        if (v15)
        {
          if (v15 == 1)
          {
            v17 = 0x52454E4E49;
          }

          else
          {
            v17 = 0x54554F205446454CLL;
          }

          if (v15 == 1)
          {
            v18 = 0xE500000000000000;
          }

          else
          {
            v18 = 0xEA00000000005245;
          }
        }

        else
        {
          v18 = 0xE500000000000000;
          v17 = 0x53534F5243;
        }

        MEMORY[0x26D69A890](v17, v18);

        MEMORY[0x26D69A890](0x4E494F4A20, 0xE500000000000000);
        v19 = v39;
        v20 = v40;
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
        *(v16 + 56) = v21;
        *(v16 + 64) = &protocol witness table for Expression<A>;
        *(v16 + 32) = v19;
        *(v16 + 40) = v20;
        v22 = MEMORY[0x277D84F90];
        *(v16 + 48) = MEMORY[0x277D84F90];
        v23 = v46;
        v24 = v47;
        __swift_project_boxed_opaque_existential_1(v45, v46);
        sub_26C070730(1, v23, v24, (v16 + 72));
        *(v16 + 136) = v21;
        *(v16 + 144) = &protocol witness table for Expression<A>;
        *(v16 + 112) = 20047;
        *(v16 + 120) = 0xE200000000000000;
        *(v16 + 128) = v22;
        sub_26C06B6BC(v44, v16 + 152);
        sub_26C0688D8(v16, &v39);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        __swift_destroy_boxed_opaque_existential_1(v44);
        __swift_destroy_boxed_opaque_existential_1(v45);
        sub_26C06A56C(v48, &qword_2804793E0, &qword_26C0AC830);
        v49 = v14;
        v26 = *(v14 + 16);
        v25 = *(v14 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_26C07272C((v25 > 1), v26 + 1, 1);
        }

        ++v12;
        v27 = v41;
        v28 = v42;
        v29 = __swift_mutable_project_boxed_opaque_existential_1(&v39, v41);
        v30 = *(*(v27 - 8) + 64);
        MEMORY[0x28223BE20](v29);
        v32 = &v34 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v33 + 16))(v32);
        sub_26C072778(v26, v32, &v49, v27, v28);
        result = __swift_destroy_boxed_opaque_existential_1(&v39);
        v14 = v49;
        v13 += 88;
        v10 = v38;
        if (v37 == v12)
        {

          goto LABEL_19;
        }
      }

      __break(1u);
    }

    else
    {

      v14 = MEMORY[0x277D84F90];
LABEL_19:
      sub_26C0688D8(v14, v35);
    }
  }

  else
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t JoinType.rawValue.getter()
{
  v1 = 0x52454E4E49;
  if (*v0 != 1)
  {
    v1 = 0x54554F205446454CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x53534F5243;
  }
}

uint64_t sub_26C0A2EF0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v14);
  v4 = v15;
  v3 = v16;
  v6 = v17;
  v5 = v18;
  sub_26C0AB1F8(v15, v16, v17);
  result = sub_26C06B68C(v14);
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 32) = 0x59422050554F5247;
    *(inited + 56) = v9;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v10 = MEMORY[0x277D84F90];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v10;
    sub_26C0688D8(v4, (inited + 72));
    sub_26C0688D8(inited, v13);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();

    if (v6)
    {
      v11 = swift_initStackObject();
      *(v11 + 16) = xmmword_26C0AC580;
      sub_26C06B6BC(v13, v11 + 32);
      v12 = swift_initStackObject();
      *(v12 + 16) = xmmword_26C0AC580;
      *(v12 + 56) = v9;
      *(v12 + 64) = &protocol witness table for Expression<A>;
      *(v12 + 32) = 0x474E49564148;
      *(v12 + 40) = 0xE600000000000000;
      *(v12 + 48) = MEMORY[0x277D84F90];
      *(v12 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479398, &qword_26C0AC610);
      *(v12 + 104) = &protocol witness table for Expression<A>;
      *(v12 + 72) = v3;
      *(v12 + 80) = v6;
      *(v12 + 88) = v5;
      sub_26C0688D8(v12, (v11 + 72));
      swift_setDeallocating();
      swift_arrayDestroy();
      sub_26C0688D8(v11, a2);
      swift_setDeallocating();
      swift_arrayDestroy();
      return __swift_destroy_boxed_opaque_existential_1(v13);
    }

    else
    {
      return sub_26C06A3A8(v13, a2);
    }
  }

  else
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

double sub_26C0A3164@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v15);
  v7 = v15[16];

  sub_26C06B68C(v15);
  v8 = *(v7 + 16);

  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C0AC580;
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(inited + 32) = 0x594220524544524FLL;
    *(inited + 56) = v10;
    *(inited + 64) = &protocol witness table for Expression<A>;
    v11 = MEMORY[0x277D84F90];
    *(inited + 40) = 0xE800000000000000;
    *(inited + 48) = v11;
    (v6)(v14, a1, a2);
    v12 = v14[16];

    sub_26C06B68C(v14);
    sub_26C0688D8(v12, (inited + 72));

    sub_26C0688D8(inited, a3);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_26C0A32FC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  (*(a1 + 16))(v10);
  result = sub_26C06B68C(v10);
  if (v12)
  {
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v4 = v11;
    v5 = sub_26C0ABC60();
    MEMORY[0x26D69A890](v5);

    if (v4)
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(a2 + 32) = &protocol witness table for Expression<A>;
      *a2 = 0x2054494D494CLL;
      *(a2 + 8) = 0xE600000000000000;
      *(a2 + 16) = MEMORY[0x277D84F90];
      *(a2 + 24) = result;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C0AC580;
      v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
      *(inited + 56) = v7;
      *(inited + 64) = &protocol witness table for Expression<A>;
      *(inited + 32) = 0x2054494D494CLL;
      v8 = MEMORY[0x277D84F90];
      *(inited + 40) = 0xE600000000000000;
      *(inited + 48) = v8;
      v9 = sub_26C0ABC60();
      MEMORY[0x26D69A890](v9);

      *(inited + 96) = v7;
      *(inited + 104) = &protocol witness table for Expression<A>;
      *(inited + 72) = 0x2054455346464FLL;
      *(inited + 80) = 0xE700000000000000;
      *(inited + 88) = v8;
      sub_26C0688D8(inited, a2);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
      return swift_arrayDestroy();
    }
  }

  return result;
}

uint64_t sub_26C0A3500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v6(v87);
  v7 = v87[20];

  sub_26C06B68C(v87);
  v8 = *(v7 + 16);

  if (!v8)
  {
    *(a3 + 32) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  (v6)(v83, a1, a2);
  v85[8] = v83[8];
  v85[9] = v83[9];
  v86 = v84;
  v85[4] = v83[4];
  v85[5] = v83[5];
  v85[6] = v83[6];
  v85[7] = v83[7];
  v85[0] = v83[0];
  v85[1] = v83[1];
  v85[2] = v83[2];
  v85[3] = v83[3];
  v10 = v84;

  sub_26C06B68C(v85);
  v11 = *(v10 + 16);
  if (!v11)
  {

    v14 = MEMORY[0x277D84F90];
LABEL_33:
    sub_26C0688D8(v14, a3);
  }

  v12 = MEMORY[0x277D84F90];
  v82 = MEMORY[0x277D84F90];
  sub_26C07272C(0, v11, 0);
  v63[1] = v10;
  v13 = v10 + 32;
  v14 = v82;
  while (1)
  {
    v66 = v14;
    v67 = v13;
    sub_26C06B6BC(v13, v74);
    v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    v70 = &protocol witness table for Expression<A>;
    v68[0] = 0x4E4F494E55;
    v68[1] = 0xE500000000000000;
    v68[2] = v12;
    v65 = v69;
    v15 = v75;
    v16 = v76;
    v17 = __swift_project_boxed_opaque_existential_1(v74, v75);
    v72 = v15;
    v73 = *(v16 + 8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
    (*(*(v15 - 8) + 16))(boxed_opaque_existential_1, v17, v15);
    v19 = v69;
    v20 = v70;
    __swift_project_boxed_opaque_existential_1(v68, v69);
    (v20[1])(&v77, v19, v20);
    v22 = v77;
    v21 = v78;
    v23 = v79;

    v24 = sub_26C068CD4(0, 1, 1, v12);
    v26 = *(v24 + 2);
    v25 = *(v24 + 3);
    if (v26 >= v25 >> 1)
    {
      v24 = sub_26C068CD4((v25 > 1), v26 + 1, 1, v24);
    }

    *(v24 + 2) = v26 + 1;
    v27 = &v24[16 * v26];
    *(v27 + 4) = v22;
    *(v27 + 5) = v21;
    v28 = v23[2];

    result = sub_26C068DE4(0, v28, 1, v12);
    v29 = result;
    if (!v23[2])
    {
      break;
    }

    if ((*(result + 24) >> 1) - *(result + 16) < v28)
    {
      goto LABEL_37;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
    swift_arrayInitWithCopy();

    if (v28)
    {
      v30 = v29[2];
      v31 = __OFADD__(v30, v28);
      v32 = v30 + v28;
      if (v31)
      {
        goto LABEL_39;
      }

      v29[2] = v32;
    }

LABEL_12:
    v64 = v11;
    v33 = a3;

    v34 = v72;
    v35 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    (*(v35 + 8))(&v77, v34, v35);
    v37 = v77;
    v36 = v78;
    v38 = v79;
    v39 = *(v24 + 2);
    v40 = *(v24 + 3);

    if (v39 >= v40 >> 1)
    {
      result = sub_26C068CD4((v40 > 1), v39 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v39 + 1;
    v41 = &v24[16 * v39];
    *(v41 + 4) = v37;
    *(v41 + 5) = v36;
    v42 = v38[2];
    v43 = v29[2];
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      goto LABEL_35;
    }

    v45 = v29[3] >> 1;

    if (v45 < v44)
    {
      if (v43 <= v44)
      {
        v62 = v43 + v42;
      }

      else
      {
        v62 = v43;
      }

      result = sub_26C068DE4(1, v62, 1, v29);
      v29 = result;
      v43 = *(result + 16);
      v46 = v38[2];
      v45 = *(result + 24) >> 1;
    }

    else
    {
      v46 = v42;
    }

    a3 = v33;
    v47 = v64;
    if (v46)
    {
      if ((v45 - v43) < v42)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804793C0, &qword_26C0AC810);
      swift_arrayInitWithCopy();

      if (v42)
      {
        v48 = v29[2];
        v31 = __OFADD__(v48, v42);
        v49 = v48 + v42;
        if (v31)
        {
          goto LABEL_40;
        }

        v29[2] = v49;
      }
    }

    else
    {

      if (v42)
      {
        goto LABEL_36;
      }
    }

    v77 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479408, &qword_26C0AC858);
    sub_26C068F2C(&qword_280B5B098, &qword_280479408, &qword_26C0AC858);
    v50 = sub_26C0AB810();
    v52 = v51;

    v80 = v65;
    v81 = &protocol witness table for Expression<A>;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
    swift_arrayDestroy();
    v77 = v50;
    v78 = v52;
    v79 = v29;
    __swift_destroy_boxed_opaque_existential_1(v74);
    v82 = v66;
    v54 = *(v66 + 16);
    v53 = *(v66 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_26C07272C((v53 > 1), v54 + 1, 1);
    }

    v55 = v80;
    v56 = v81;
    v57 = __swift_mutable_project_boxed_opaque_existential_1(&v77, v80);
    v58 = *(*(v55 - 8) + 64);
    MEMORY[0x28223BE20](v57);
    v60 = v63 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v61 + 16))(v60);
    sub_26C072778(v54, v60, &v82, v55, v56);
    __swift_destroy_boxed_opaque_existential_1(&v77);
    v14 = v82;
    v13 = v67 + 40;
    v11 = v47 - 1;
    v12 = MEMORY[0x277D84F90];
    if (!v11)
    {

      goto LABEL_33;
    }
  }

  if (!v28)
  {
    goto LABEL_12;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t QueryType.alias(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 16))(a5, v5);
  v10 = *(a4 + 16);
  v10(v23, a3, a4);
  v12 = v23[2];
  v11 = v23[3];

  sub_26C06B68C(v23);
  v10(v24, a3, a4);
  v14 = v24[6];
  v13 = v24[7];

  sub_26C06B68C(v24);
  v15 = (*(a4 + 32))(v22, a3, a4);
  v17 = v16;
  v18 = v16[3];
  v16[2] = v12;
  v16[3] = v11;

  v19 = v17[5];
  v17[4] = a1;
  v17[5] = a2;

  v20 = v17[7];
  v17[6] = v14;
  v17[7] = v13;

  return v15(v22, 0);
}

void *sub_26C0A3D04@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *(a2 + 16);
  if (v5)
  {
    v80 = a3;
    v81 = a4;
    v79 = a5;
    v78 = *a1;
    v7 = a2 + 32;
    v6 = *(a2 + 32);
    v8 = *(v6 + 16);
    v9 = MEMORY[0x277D84F90];
    v83 = v5;
    if (v8)
    {
      *&v88[0] = MEMORY[0x277D84F90];

      sub_26C07272C(0, v8, 0);
      v10 = v9;
      v11 = v6 + 32;
      do
      {
        sub_26C06FE38(v11, &v91);
        sub_26C06B6BC(&v91, &v95);
        sub_26C0717EC(&v91);
        *&v88[0] = v10;
        v13 = *(v10 + 16);
        v12 = *(v10 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_26C07272C((v12 > 1), v13 + 1, 1);
        }

        v14 = v97;
        v15 = v98;
        v16 = __swift_mutable_project_boxed_opaque_existential_1(&v95, v97);
        v17 = *(*(v14 - 8) + 64);
        MEMORY[0x28223BE20](v16);
        v19 = &v76 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v20 + 16))(v19);
        sub_26C072778(v13, v19, v88, v14, v15);
        __swift_destroy_boxed_opaque_existential_1(&v95);
        v10 = *&v88[0];
        v11 += 80;
        --v8;
      }

      while (v8);
      v77 = *&v88[0];

      v9 = MEMORY[0x277D84F90];
    }

    else
    {
      v77 = MEMORY[0x277D84F90];
    }

    v95 = v9;
    result = sub_26C0889A0(0, v83, 0);
    v22 = v83;
    v23 = 0;
    v24 = v95;
    v87 = xmmword_26C0AC5C0;
    v82 = v7;
    do
    {
      if (v23 == v22)
      {
        goto LABEL_59;
      }

      result = *(v7 + 8 * v23);
      v25 = result[2];
      if (v25)
      {
        v85 = v23;
        v86 = v24;
        v26 = (result + 4);
        v84 = result;

        v27 = v9;
        while (1)
        {
          sub_26C06FE38(v26, &v91);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479380, &qword_26C0AC5F8);
          inited = swift_initStackObject();
          *(inited + 16) = v87;
          sub_26C06B6BC(&v94, inited + 32);
          v29 = v27[2];

          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || (v30 = v27[3] >> 1, v31 = v27, v30 <= v29))
          {
            result = sub_26C06A384(result, v29 + 1, 1, v27);
            v31 = result;
            v30 = result[3] >> 1;
          }

          if (v30 <= v31[2])
          {
            break;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479388, &unk_26C0AC600);
          swift_arrayInitWithCopy();

          sub_26C0717EC(&v91);

          ++v31[2];
          v26 += 80;
          v27 = v31;
          if (!--v25)
          {

            v9 = MEMORY[0x277D84F90];
            v24 = v86;
            v7 = v82;
            v22 = v83;
            v23 = v85;
            goto LABEL_23;
          }
        }

        __break(1u);
LABEL_59:
        __break(1u);
        return result;
      }

      v31 = v9;
LABEL_23:
      v95 = v24;
      v33 = *(v24 + 16);
      v32 = *(v24 + 24);
      if (v33 >= v32 >> 1)
      {
        v85 = v23;
        result = sub_26C0889A0((v32 > 1), v33 + 1, 1);
        v23 = v85;
        v22 = v83;
        v24 = v95;
      }

      ++v23;
      *(v24 + 16) = v33 + 1;
      *(v24 + 8 * v33 + 32) = v31;
    }

    while (v23 != v22);
    v86 = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479368, &qword_26C0AC5E0);
    v34 = swift_allocObject();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479358, &qword_26C0AC5D0);
    *(v34 + 32) = 0x545245534E49;
    v83 = v34 + 32;
    *(v34 + 56) = v35;
    *(v34 + 64) = &protocol witness table for Expression<A>;
    *(v34 + 40) = 0xE600000000000000;
    *(v34 + 48) = v9;
    if (v78 == 5)
    {
      *(v34 + 104) = 0;
      *(v34 + 88) = 0u;
      *(v34 + 72) = 0u;
      v36 = v80;
    }

    else
    {
      v37 = 0xE600000000000000;
      v38 = 0x45524F4E4749;
      *&v91 = 2118223;
      *(&v91 + 1) = 0xE300000000000000;
      v39 = 0xE500000000000000;
      v40 = 0x54524F4241;
      if (v78 == 3)
      {
        v38 = 1279869254;
        v37 = 0xE400000000000000;
      }

      if (v78 != 2)
      {
        v40 = v38;
        v39 = v37;
      }

      v41 = 0xE700000000000000;
      v42 = 0x4543414C504552;
      if (v78)
      {
        v42 = 0x4B4341424C4C4F52;
        v41 = 0xE800000000000000;
      }

      if (v78 <= 1)
      {
        v43 = v42;
      }

      else
      {
        v43 = v40;
      }

      if (v78 <= 1)
      {
        v44 = v41;
      }

      else
      {
        v44 = v39;
      }

      v36 = v80;
      MEMORY[0x26D69A890](v43, v44);

      v45 = v91;
      *(v34 + 96) = v35;
      *(v34 + 104) = &protocol witness table for Expression<A>;
      *(v34 + 72) = v45;
      *(v34 + 88) = v9;
    }

    *(v34 + 136) = v35;
    *(v34 + 144) = &protocol witness table for Expression<A>;
    *(v34 + 112) = 1330925129;
    *(v34 + 120) = 0xE400000000000000;
    *(v34 + 128) = v9;
    v46 = v81;
    sub_26C070730(0, v36, v81, (v34 + 152));
    *(v34 + 216) = v35;
    *(v34 + 224) = &protocol witness table for Expression<A>;
    sub_26C0688D8(v77, &v91);

    sub_26C06E24C((v34 + 192), &v91, 0, 0xE000000000000000);
    __swift_destroy_boxed_opaque_existential_1(&v91);
    *(v34 + 256) = v35;
    *(v34 + 264) = &protocol witness table for Expression<A>;
    *(v34 + 232) = 0x5345554C4156;
    *(v34 + 240) = 0xE600000000000000;
    *(v34 + 248) = v9;
    v47 = *(v86 + 16);
    if (v47)
    {
      v82 = v34;
      v90 = v9;
      sub_26C07272C(0, v47, 0);
      v48 = 32;
      v49 = v90;
      v84 = v35;
      do
      {
        v85 = v49;
        *&v87 = v47;
        v50 = *(v86 + v48);

        sub_26C0688D8(v51, &v91);
        *&v88[0] = 40;
        *(&v88[0] + 1) = 0xE100000000000000;
        v53 = *(&v92 + 1);
        v52 = v93;
        __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
        v54 = v52[1];
        v54(&v95, v53, v52);
        v55 = v95;
        v56 = v96;

        MEMORY[0x26D69A890](v55, v56);

        MEMORY[0x26D69A890](41, 0xE100000000000000);
        v57 = v88[0];
        v49 = v85;
        v54(&v95, v53, v52);
        v58 = *(&v96 + 1);

        __swift_destroy_boxed_opaque_existential_1(&v91);
        v90 = v49;
        v60 = *(v49 + 16);
        v59 = *(v49 + 24);
        if (v60 >= v59 >> 1)
        {
          sub_26C07272C((v59 > 1), v60 + 1, 1);
          v49 = v90;
        }

        v91 = v57;
        *(&v92 + 1) = v84;
        v93 = &protocol witness table for Expression<A>;
        *&v92 = v58;
        *(v49 + 16) = v60 + 1;
        sub_26C06A3A8(&v91, v49 + 40 * v60 + 32);
        v48 += 8;
        v47 = v87 - 1;
      }

      while (v87 != 1);

      v46 = v81;
      v34 = v82;
    }

    else
    {

      v49 = MEMORY[0x277D84F90];
    }

    sub_26C0688D8(v49, (v34 + 272));

    sub_26C071840(v46, v34 + 312);
    v61 = MEMORY[0x277D84F90];
    for (i = 32; i != 352; i += 40)
    {
      sub_26C067878(v34 + i, &v91, &qword_280479360, &qword_26C0AC5D8);
      v88[1] = v92;
      v88[0] = v91;
      v89 = v93;
      if (*(&v92 + 1))
      {
        sub_26C06A3A8(v88, &v95);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v90 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v61 = sub_26C06A384(0, v61[2] + 1, 1, v61);
          v90 = v61;
        }

        v65 = v61[2];
        v64 = v61[3];
        if (v65 >= v64 >> 1)
        {
          v61 = sub_26C06A384((v64 > 1), v65 + 1, 1, v61);
          v90 = v61;
        }

        v66 = v97;
        v67 = v98;
        v68 = __swift_mutable_project_boxed_opaque_existential_1(&v95, v97);
        v69 = *(*(v66 - 8) + 64);
        MEMORY[0x28223BE20](v68);
        v71 = &v76 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v72 + 16))(v71);
        sub_26C06A410(v65, v71, &v90, v66, v67);
        __swift_destroy_boxed_opaque_existential_1(&v95);
      }

      else
      {
        sub_26C06A56C(v88, &qword_280479360, &qword_26C0AC5D8);
      }
    }

    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280479360, &qword_26C0AC5D8);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_26C0688D8(v61, &v91);

    v73 = *(&v92 + 1);
    v74 = v93;
    __swift_project_boxed_opaque_existential_1(&v91, *(&v92 + 1));
    (v74[1])(&v95, v73, v74);
    v75 = v79;
    *v79 = v95;
    *(v75 + 1) = v96;
    return __swift_destroy_boxed_opaque_existential_1(&v91);
  }

  else
  {

    return QueryType.insert()();
  }
}