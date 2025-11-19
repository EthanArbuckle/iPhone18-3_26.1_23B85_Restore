uint64_t OrderedIdentifiedSet.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F1CD194(a1, a2, a3);
  v8 = a3 + 16;
  v7 = *(a3 + 16);
  v6 = *(v8 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a2, AssociatedTypeWitness);
  v10 = sub_25F305C1C();
  v11 = *(*(v10 - 8) + 8);

  return v11(a1, v10);
}

void (*OrderedIdentifiedSet.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x48uLL);
  }

  v9 = v8;
  *a1 = v8;
  *v8 = a3;
  v8[1] = v3;
  v10 = *(a3 + 16);
  v11 = sub_25F305C1C();
  v9[2] = v11;
  v12 = *(v11 - 8);
  v9[3] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v12 + 64));
    v14 = malloc(v13);
  }

  v9[5] = v14;
  v15 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[6] = AssociatedTypeWitness;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = v17;
  v9[7] = v17;
  if (v7)
  {
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v19 = malloc(*(v17 + 64));
  }

  v9[8] = v19;
  (*(v18 + 16))();
  v21 = *v3;
  OrderedIdentifiedSet.subscript.getter(a2, a3);
  return sub_25F1CABF4;
}

void sub_25F1CABF4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[1];
  v10 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (*(v8 + 16))((*a1)[4], v5, v10);
    sub_25F1CD194(v7, v3, v11);
    (*(v4 + 8))(v3, v6);
    v12 = *(v8 + 8);
    v12(v7, v10);
    v12(v5, v10);
  }

  else
  {
    sub_25F1CD194((*a1)[5], v3, v11);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v10);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

double OrderedIdentifiedSet.init()@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v5 = sub_25F3052DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OrderedDictionary.init(dictionaryLiteral:)(v5, AssociatedTypeWitness, a1, AssociatedConformanceWitness, &v8);
  result = *&v8;
  *a2 = v8;
  return result;
}

double OrderedIdentifiedSet.init<A>(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v9 = sub_25F3052DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OrderedDictionary.init(dictionaryLiteral:)(v9, AssociatedTypeWitness, a2, AssociatedConformanceWitness, &v12);
  type metadata accessor for OrderedDictionary();
  sub_25F30518C();
  (*(*(a3 - 8) + 8))(a1, a3);
  result = *&v13;
  *a4 = v13;
  return result;
}

uint64_t sub_25F1CAF6C(uint64_t a1, uint64_t a2)
{
  v15[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(AssociatedTypeWitness - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v15 - v6;
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  sub_25F305FDC();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for OrderedDictionary();
  OrderedDictionary.updateValue(_:forKey:)(a2, v7, v13, v12);
  (*(v4 + 8))(v7, AssociatedTypeWitness);
  return (*(v9 + 8))(v12, v8);
}

double OrderedIdentifiedSet.init(arrayLiteral:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = a1;
  v5 = sub_25F30539C();
  swift_getWitnessTable();
  OrderedIdentifiedSet.init<A>(_:)(&v7, a2, v5, &v8);
  result = *&v8;
  *a3 = v8;
  return result;
}

BOOL OrderedIdentifiedSet.contains(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v19 = sub_25F305C1C();
  v5 = *(v19 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v19);
  v8 = &v18 - v7;
  v9 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v18 - v13;
  sub_25F305FDC();
  v20 = *v2;
  swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for OrderedDictionary();
  OrderedDictionary.subscript.getter(v14, v15);
  (*(v11 + 8))(v14, AssociatedTypeWitness);
  v16 = (*(*(v4 - 8) + 48))(v8, 1, v4) != 1;
  (*(v5 + 8))(v8, v19);
  return v16;
}

uint64_t OrderedIdentifiedSet.insert(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v14 - v10;
  sub_25F305FDC();
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for OrderedDictionary();
  OrderedDictionary.updateValue(_:forKey:)(a1, v11, v12, a3);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t OrderedIdentifiedSet.remove(_:)@<X0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v12 - v8;
  sub_25F305FDC();
  swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for OrderedDictionary();
  OrderedDictionary.removeValue(forKey:)(v9, v10, a2);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

Swift::Void __swiftcall OrderedIdentifiedSet.removeAll()()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for OrderedDictionary();

  OrderedDictionary.removeAll()();
}

double OrderedIdentifiedSet.filter(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v10 = *v4;
  v9 = v4[1];
  v11 = *(a3 + 16);
  v12 = *(a3 + 24);

  OrderedIdentifiedSet.init()(v11, &v17);
  v15[6] = v10;
  v15[7] = v9;
  v15[2] = v11;
  v15[3] = v12;
  v15[4] = a1;
  v15[5] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for OrderedDictionary();
  OrderedDictionary.filter(_:)(sub_25F1CD394, v15, v13, &v16);

  if (!v5)
  {
    result = *&v16;
    *a4 = v16;
  }

  return result;
}

uint64_t OrderedIdentifiedSet.append<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  OrderedIdentifiedSet.init<A>(_:)(v7, v10, a3, &v13);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for OrderedDictionary();
  OrderedDictionary.append(contentsOf:)(&v13, v11);
}

uint64_t OrderedIdentifiedSet.subtract<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v5 = *(a2 + 16);
  v43 = *(v5 - 8);
  v6 = *(v43 + 64);
  MEMORY[0x28223BE20](a1);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_25F305C1C();
  v35 = *(v39 - 8);
  v9 = *(v35 + 64);
  v10 = MEMORY[0x28223BE20](v39);
  v38 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - v13;
  v15 = *(a3 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v12);
  v18 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = *(AssociatedTypeWitness - 8);
  v20 = *(v36 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v22 = &v35 - v21;
  (*(v15 + 16))(v18, a1, a3);
  sub_25F3050DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = v22;
  v42 = AssociatedTypeWitness;
  v24 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v25 = v43;
  v26 = *(v43 + 48);
  if (v26(v14, 1, v5) != 1)
  {
    v37 = *(v25 + 32);
    v27 = (v35 + 8);
    v43 = v25 + 32;
    v28 = (v25 + 8);
    do
    {
      v37(v8, v14, v5);
      v29 = v5;
      v30 = v26;
      v31 = v24;
      v32 = v38;
      OrderedIdentifiedSet.remove(_:)(v40, v38);
      v33 = v32;
      v24 = v31;
      v26 = v30;
      v5 = v29;
      (*v27)(v33, v39);
      (*v28)(v8, v29);
      sub_25F305CDC();
    }

    while (v26(v14, 1, v29) != 1);
  }

  return (*(v36 + 8))(v41, v42);
}

double OrderedIdentifiedSet.formIntersection<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  Sequence<>.identified()(a3, a4, *(a2 + 24), &v13);
  v12[1] = *v4;
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  v9 = sub_25F3052DC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OrderedDictionary.init(dictionaryLiteral:)(v9, AssociatedTypeWitness, v7, AssociatedConformanceWitness, v12);
  type metadata accessor for OrderedDictionary();
  swift_getWitnessTable();
  sub_25F30518C();

  result = *&v13;
  *v5 = v13;
  return result;
}

uint64_t sub_25F1CBF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a3;
  v44 = a1;
  v9 = sub_25F305C1C();
  v39 = *(v9 - 8);
  v40 = v9;
  v10 = *(v39 + 64);
  v11 = MEMORY[0x28223BE20](v9);
  v43 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v17 = *(TupleTypeMetadata2 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v41 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v37 - v22;
  v24 = *(a4 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v21);
  v47 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v17 + 16);
  v42 = a2;
  v38 = v27;
  v27(v23, a2, TupleTypeMetadata2);
  v28 = *(TupleTypeMetadata2 + 48);
  v48 = v46;
  v45 = v28;
  v46 = a6;
  v29 = type metadata accessor for IdentifiedSet();
  IdentifiedSet.subscript.getter(v23, v29);
  if ((*(v24 + 48))(v14, 1, a4) == 1)
  {
    (*(v39 + 8))(v14, v40);
    (*(v24 + 8))(&v23[v45], a4);
    return (*(*(AssociatedTypeWitness - 8) + 8))(v23, AssociatedTypeWitness);
  }

  else
  {
    (*(v24 + 32))(v47, v14, a4);
    v31 = *(v24 + 8);
    v31(&v23[v45], a4);
    (*(*(AssociatedTypeWitness - 8) + 8))(v23, AssociatedTypeWitness);
    v32 = v41;
    v38(v41, v42, TupleTypeMetadata2);
    v33 = *(TupleTypeMetadata2 + 48);
    v34 = v43;
    v35 = v47;
    (*(v24 + 16))(v43, v47, a4);
    (*(v24 + 56))(v34, 0, 1, a4);
    swift_getAssociatedConformanceWitness();
    v36 = type metadata accessor for OrderedDictionary();
    OrderedDictionary.subscript.setter(v34, v32, v36);
    v31(v35, a4);
    return (v31)(v32 + v33, a4);
  }
}

uint64_t sub_25F1CC420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t)@<X4>, void *a6@<X8>)
{
  v12 = *v6;
  v13 = v6[1];
  *a6 = v12;
  a6[1] = v13;

  return a5(a1, a2, a3, a4);
}

uint64_t OrderedIdentifiedSet.ids.getter(uint64_t a1)
{
  v5 = *v1;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for OrderedDictionary();
  sub_25F1F3320();
}

uint64_t sub_25F1CC57C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v8 = *v2;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = type metadata accessor for OrderedDictionary();
  return a2(v6);
}

Swift::Int __swiftcall OrderedIdentifiedSet.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t OrderedIdentifiedSet.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 + 16);
  v6 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v15 - v11;
  v15 = *v3;
  swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for OrderedDictionary();
  OrderedDictionary.subscript.getter(v12, a3, a1, v13);
  return (*(v9 + 8))(v12, AssociatedTypeWitness);
}

uint64_t sub_25F1CC77C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = OrderedIdentifiedSet.endIndex.getter(a1);
  *a2 = result;
  return result;
}

uint64_t (*sub_25F1CC7A4(uint64_t **a1, uint64_t *a2, uint64_t a3))()
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
  v6[4] = sub_25F1CC874(v6, *a2, a3);
  return sub_25F1CD510;
}

void sub_25F1CC82C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*sub_25F1CC874(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  v10 = *(a3 + 16);
  *(v8 + 16) = v10;
  v11 = *(v10 - 8);
  *(v8 + 24) = v11;
  v12 = *(v11 + 64);
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(v12);
  }

  *(v9 + 32) = v13;
  *v9 = *v3;
  OrderedIdentifiedSet.subscript.getter(a2, a3, v13);
  return sub_25F1CC970;
}

void sub_25F1CC970(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  (*(*(*a1 + 24) + 8))(v2, *(*a1 + 16));
  free(v2);

  free(v1);
}

__n128 sub_25F1CC9D4@<Q0>(__n128 *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = 0;
  return result;
}

uint64_t sub_25F1CC9E4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F1CCA38()
{
  swift_getWitnessTable();
  v1 = sub_25F2B6F1C();
  v3 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static OrderedIdentifiedSet<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v4 = a1[1];
  v5 = *a2;
  v6 = a2[1];
  v11[0] = *a1;
  v11[1] = v4;
  v10[0] = v5;
  v10[1] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  LOBYTE(AssociatedConformanceWitness) = static OrderedDictionary<>.== infix(_:_:)(v11, v10, AssociatedTypeWitness, a3, AssociatedConformanceWitness);

  return AssociatedConformanceWitness & 1;
}

uint64_t sub_25F1CCBAC(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 24);
  return static OrderedIdentifiedSet<>.== infix(_:_:)(a1, a2, *(a3 + 16));
}

uint64_t sub_25F1CCBBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_25F30531C())
  {
    sub_25F30635C();
    v13 = sub_25F30634C();
  }

  else
  {
    v13 = MEMORY[0x277D84F98];
  }

  result = sub_25F30531C();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_25F3052FC())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_25F30601C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_25F281E0C(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

uint64_t sub_25F1CCEA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  (*(v16 + 16))(&v18 - v15, a2, AssociatedTypeWitness);
  (*(v8 + 16))(v11, a1, v7);
  swift_getAssociatedConformanceWitness();
  sub_25F304B4C();
  return sub_25F304B9C();
}

uint64_t sub_25F1CD088(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_25F1C86F0(a1, a2, v2[6], v2[7], v2[2]);
}

uint64_t sub_25F1CD194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v20 - v10;
  v12 = *(a3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v16 = &v20 - v15;
  (*(v17 + 16))(&v20 - v15, a2, AssociatedTypeWitness);
  (*(v8 + 16))(v11, a1, v7);
  swift_getAssociatedConformanceWitness();
  v18 = type metadata accessor for OrderedDictionary();
  return OrderedDictionary.subscript.setter(v11, v16, v18);
}

uint64_t sub_25F1CD374(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_25F1CAF6C(a1, a2);
}

uint64_t sub_25F1CD394(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);
  return v3(a2) & 1;
}

uint64_t sub_25F1CD448()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F1CD49C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t SendableAnyHashable.init<A>(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v20 = a3;
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](a1);
  a4[3] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v12 = *(v8 + 16);
  v12(boxed_opaque_existential_1, a1, a2);
  v12((&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0)), a1, a2);
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  v15 = *(v8 + 32);
  v15(v14 + v13, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[4] = sub_25F1CD6EC;
  a4[5] = v14;
  v15(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v16 = swift_allocObject();
  v17 = v20;
  *(v16 + 16) = a2;
  *(v16 + 24) = v17;
  result = (v15)(v16 + v13, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  a4[6] = sub_25F1CD9EC;
  a4[7] = v16;
  return result;
}

uint64_t sub_25F1CD6EC()
{
  v1 = *(v0 + 24);
  v2 = v0 + ((*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80));
  return sub_25F304BDC();
}

uint64_t sub_25F1CD744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v22[-v11];
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v10);
  v16 = &v22[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25F1B7118(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53428, &qword_25F309000);
  v17 = swift_dynamicCast();
  v18 = *(v13 + 56);
  if (v17)
  {
    v18(v12, 0, 1, a3);
    (*(v13 + 32))(v16, v12, a3);
    v19 = *(a4 + 8);
    v20 = sub_25F304DCC();
    (*(v13 + 8))(v16, a3);
  }

  else
  {
    v18(v12, 1, 1, a3);
    (*(v8 + 8))(v12, v7);
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t objectdestroyTm_0()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 64);
  (*(v1 + 8))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)));

  return swift_deallocObject();
}

uint64_t SendableAnyHashable.hash(into:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t SendableAnyHashable.description.getter()
{
  sub_25F1B7118(v0, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53428, &qword_25F309000);
  return sub_25F304E7C();
}

uint64_t SendableAnyHashable.hashValue.getter()
{
  sub_25F30671C();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v1(v4);
  return sub_25F30676C();
}

uint64_t sub_25F1CDB10()
{
  sub_25F30671C();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v1(v4);
  return sub_25F30676C();
}

uint64_t sub_25F1CDB58()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

uint64_t sub_25F1CDB80()
{
  sub_25F30671C();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v1(v4);
  return sub_25F30676C();
}

unint64_t sub_25F1CDBC8()
{
  result = qword_27FD53430[0];
  if (!qword_27FD53430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD53430);
  }

  return result;
}

uint64_t sub_25F1CDC1C()
{
  sub_25F1B7118(v0, &v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53428, &qword_25F309000);
  return sub_25F304E7C();
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_25F1CDCA8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F1CDCF0(uint64_t result, int a2, int a3)
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

uint64_t CommandLineArgumentConsumer.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CommandLineArgumentConsumer.limit.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t CommandLineArgumentConsumer.aggregate.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return v1;
}

uint64_t CommandLineArgumentConsumer.init(_:limit:aggregate:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if ((a4 & 1) != 0 || a3)
  {
    *a7 = result;
    *(a7 + 8) = a2;
    *(a7 + 16) = a3;
    *(a7 + 24) = a4 & 1;
    *(a7 + 32) = a5;
    *(a7 + 40) = a6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CommandLineArgumentConsumer.init(_:string:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = 1;
  *(a4 + 24) = 0;
  *(a4 + 32) = sub_25F1CDE08;
  *(a4 + 40) = a3;
  return result;
}

uint64_t CommandLineArgumentConsumer.init(_:strings:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 24) = 1;
  *(a4 + 32) = sub_25F1CDF80;
  *(a4 + 40) = a3;
  return result;
}

uint64_t sub_25F1CDE7C(uint64_t a1, uint64_t a2, uint64_t a3)
{

  v5 = swift_modifyAtWritableKeyPath();
  v7 = v6;
  v8 = *v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_25F2EFB20(0, *(v8 + 2) + 1, 1, v8);
    *v7 = v8;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    v8 = sub_25F2EFB20((v10 > 1), v11 + 1, 1, v8);
    *v7 = v8;
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[16 * v11];
  *(v12 + 4) = a2;
  *(v12 + 5) = a3;
  return v5(&v14, 0);
}

uint64_t CommandLineArgumentConsumer.shortUsage.getter(uint64_t result)
{
  v2 = v1[1];
  v19 = *v1;
  v20 = v2;
  v21 = v1[2];
  if (BYTE8(v2))
  {
    v3 = sub_25F304C0C();
    MEMORY[0x25F8D7130](v3);

    MEMORY[0x25F8D7130](93, 0xE100000000000000);
    return 91;
  }

  else
  {
    v4 = v20;
    if (v20 == 1)
    {
      return sub_25F304C0C();
    }

    else if ((v20 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (v20)
      {
        v17 = MEMORY[0x277D84F90];
        v5 = result;
        sub_25F1BD008(0, v20, 0);
        v6 = 0;
        v7 = v17;
        v8 = *(v5 + 16);
        do
        {
          v9 = sub_25F1CE148(v6, &v19);
          v18 = v7;
          v12 = *(v7 + 16);
          v11 = *(v7 + 24);
          if (v12 >= v11 >> 1)
          {
            v14 = v9;
            v15 = v10;
            sub_25F1BD008((v11 > 1), v12 + 1, 1);
            v10 = v15;
            v9 = v14;
            v7 = v18;
          }

          ++v6;
          *(v7 + 16) = v12 + 1;
          v13 = v7 + 16 * v12;
          *(v13 + 32) = v9;
          *(v13 + 40) = v10;
        }

        while (v4 != v6);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52F80, &qword_25F309110);
      sub_25F1C3498();
      v16 = sub_25F304CAC();

      return v16;
    }
  }

  return result;
}

uint64_t sub_25F1CE148(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  result = sub_25F304C0C();
  if (__OFADD__(a1, 1))
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    v7 = sub_25F3064DC();
    v9 = v8;

    MEMORY[0x25F8D7130](v7, v9);

    return v6;
  }

  return result;
}

uint64_t sub_25F1CE1F0()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
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

uint64_t sub_25F1CE240(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25F1CE288(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_25F1CE300(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v17[3] = a2;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v7 = 0;
    v8 = a4 & 0xFFFFFFFFFFFFFFLL;
    v9 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
    do
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        v12 = sub_25F305F9C();
        v14 = v13;
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v17[0] = a3;
          v17[1] = v8;
          v11 = v17 + v7;
        }

        else
        {
          v10 = v9;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = sub_25F30605C();
          }

          v11 = (v10 + v7);
        }

        v12 = *v11;
        if ((*v11 & 0x80000000) == 0)
        {
          goto LABEL_15;
        }

        v16 = (__clz(v12 ^ 0xFF) - 24);
        if (v16 <= 2)
        {
          if (v16 != 1)
          {
            v12 = v11[1] & 0x3F | ((v12 & 0x1F) << 6);
            v14 = 2;
            goto LABEL_16;
          }

LABEL_15:
          v14 = 1;
          goto LABEL_16;
        }

        if (v16 == 3)
        {
          v12 = ((v12 & 0xF) << 12) | ((v11[1] & 0x3F) << 6) | v11[2] & 0x3F;
          v14 = 3;
        }

        else
        {
          v12 = ((v12 & 0xF) << 18) | ((v11[1] & 0x3F) << 12) | ((v11[2] & 0x3F) << 6) | v11[3] & 0x3F;
          v14 = 4;
        }
      }

LABEL_16:
      if (v12 < 0x80)
      {
        v17[0] = v12;
        v15 = sub_25F304EFC();
        MEMORY[0x25F8D7120](v15);
      }

      v7 += v14;
    }

    while (v7 < v4);
  }
}

uint64_t sub_25F1CE4AC(uint64_t a1, uint64_t a2, unint64_t a3, unsigned int *a4)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v9 = 0;
    v10 = a3 & 0xFFFFFFFFFFFFFFLL;
    v11 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
    do
    {
      if ((a3 & 0x1000000000000000) != 0)
      {
        v12 = sub_25F305F9C();
      }

      else
      {
        if ((a3 & 0x2000000000000000) != 0)
        {
          v19[0] = a2;
          v19[1] = v10;
          v16 = v19 + v9;
        }

        else
        {
          v15 = v11;
          if ((a2 & 0x1000000000000000) == 0)
          {
            v15 = sub_25F30605C();
          }

          v16 = (v15 + v9);
        }

        v12 = *v16;
        if ((*v16 & 0x80000000) == 0)
        {
          goto LABEL_21;
        }

        v17 = (__clz(v12 ^ 0xFF) - 24);
        if (v17 <= 2)
        {
          if (v17 != 1)
          {
            v12 = v16[1] & 0x3F | ((v12 & 0x1F) << 6);
            v13 = 2;
            goto LABEL_7;
          }

LABEL_21:
          v13 = 1;
          goto LABEL_7;
        }

        if (v17 == 3)
        {
          v12 = ((v12 & 0xF) << 12) | ((v16[1] & 0x3F) << 6) | v16[2] & 0x3F;
          v13 = 3;
        }

        else
        {
          v12 = ((v12 & 0xF) << 18) | ((v16[1] & 0x3F) << 12) | ((v16[2] & 0x3F) << 6) | v16[3] & 0x3F;
          v13 = 4;
        }
      }

LABEL_7:
      if (v12 >= a1)
      {
        v14 = a1;
      }

      else
      {
        v14 = v12;
      }

      if (v12 >= *a4)
      {
        a1 = v14;
      }

      else
      {
        a1 = a1;
      }

      v9 += v13;
    }

    while (v9 < v5);
  }

  return a1;
}

unint64_t sub_25F1CE62C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = sub_25F2E2504(a1, a3, a4);
  v8 = sub_25F2E2504(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_25F304EDC();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = sub_25F30605C();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = sub_25F304EEC();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = sub_25F30605C();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

uint64_t sub_25F1CE83C(uint64_t result)
{
  if (result <= 0x19)
  {
    return sub_25F304EFC();
  }

  v1 = result + 39;
  if (result >= 0xFFFFFFD9)
  {
    __break(1u);
    return result;
  }

  result = 0;
  if (HIWORD(v1) <= 0x10u && (v1 & 0xFFFFF800) != 0xD800)
  {
    return sub_25F304EFC();
  }

  return result;
}

uint64_t sub_25F1CE948(uint64_t result, unsigned int a2, char a3)
{
  v3 = result >> 1;
  if (a3)
  {
    v3 = result / 0x2BC;
  }

  if (!a2)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = v3 / a2 + v3;
  if (v4 >= 0x1C8)
  {
    v5 = 0;
    while (1)
    {
      v6 = v5 + 36;
      if (v5 >= 0xFFFFFFDC)
      {
        break;
      }

      v7 = v4 / 0x23;
      v5 += 36;
      v8 = v4 >> 3;
      v4 /= 0x23u;
      if (v8 <= 0x7CA)
      {
        v4 = v7;
        goto LABEL_10;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  v6 = 0;
LABEL_10:
  v9 = 36 * v4 / (v4 + 38);
  result = v6 + v9;
  if (__CFADD__(v6, v9))
  {
    goto LABEL_14;
  }

  return result;
}

int64_t _s20PreviewsFoundationOS8PunycodeO6encode6stringSSSgSS_tFZ_0(uint64_t a1, unint64_t a2)
{
  v3 = a1;
  v64 = 128;
  sub_25F1CE300(0, 0xE000000000000000, a1, a2);
  v4 = 0;
  v6 = v5;
  v7 = 0;
  v62 = 0;
  v63 = 0xE000000000000000;
  result = sub_25F304F2C();
  if (result < 0)
  {
    goto LABEL_107;
  }

  v9 = result;
  if (HIDWORD(result))
  {
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
    return result;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v10 = v3 & 0xFFFFFFFFFFFFLL;
  }

  v11 = 7;
  if (((a2 >> 60) & ((v3 & 0x800000000000000) == 0)) != 0)
  {
    v11 = 11;
  }

  v12 = v11 | (v10 << 16);
  if (sub_25F1CE62C(0xFuLL, v12, v3, a2) <= result)
  {
    v47 = 0;
    v46 = 0xE000000000000000;
LABEL_85:
    v48 = HIBYTE(v46) & 0xF;
    if ((v46 & 0x2000000000000000) == 0)
    {
      v48 = v47 & 0xFFFFFFFFFFFFLL;
    }

    if (v48)
    {
      v49 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v49 = 0;
      }

      if (v49)
      {
        v60 = 0;
        v61 = v6;
        MEMORY[0x25F8D7130](95, 0xE100000000000000);
        MEMORY[0x25F8D7130](v47, v46);

        return v60;
      }

      else
      {

        return v47;
      }
    }

    else
    {
    }

    return v4;
  }

  v57 = 0;
  v59 = v9;
  v55 = v10;
  v13 = 72;
  v14 = 128;
LABEL_10:
  result = sub_25F1CE4AC(1114111, v3, a2, &v64);
  v56 = result;
  if (result < v14)
  {
    goto LABEL_109;
  }

  if (v59 == -1)
  {
    goto LABEL_110;
  }

  v15 = (result - v14) * (v59 + 1);
  if ((v15 & 0xFFFFFFFF00000000) != 0)
  {
    goto LABEL_111;
  }

  v16 = (v57 + v15);
  if (__CFADD__(v57, v15))
  {
    goto LABEL_95;
  }

  v17 = v55;
  if (!v55)
  {
    goto LABEL_80;
  }

  v50 = v12;
  v51 = v7;
  v52 = v6;

  v18 = 0;
  v19 = v56;
  v53 = v9;
  v54 = v3;
  while (1)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_25F305F9C();
      v21 = v20;
      v22 = result == v19;
      if (result < v19)
      {
        break;
      }

      goto LABEL_28;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v60 = v3;
      v61 = a2 & 0xFFFFFFFFFFFFFFLL;
      v24 = &v60 + v18;
    }

    else
    {
      v23 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((v3 & 0x1000000000000000) == 0)
      {
        v23 = sub_25F30605C();
      }

      v24 = (v23 + v18);
    }

    result = *v24;
    if ((*v24 & 0x80000000) == 0)
    {
      goto LABEL_27;
    }

    v45 = (__clz(result ^ 0xFF) - 24);
    if (v45 <= 2)
    {
      if (v45 != 1)
      {
        result = v24[1] & 0x3F | ((result & 0x1F) << 6);
        v21 = 2;
        v22 = result == v19;
        if (result < v19)
        {
          break;
        }

        goto LABEL_28;
      }

LABEL_27:
      v21 = 1;
      v22 = result == v19;
      if (result < v19)
      {
        break;
      }

      goto LABEL_28;
    }

    if (v45 == 3)
    {
      result = ((result & 0xF) << 12) | ((v24[1] & 0x3F) << 6) | v24[2] & 0x3F;
      v21 = 3;
      v22 = result == v19;
      if (result < v19)
      {
        break;
      }

      goto LABEL_28;
    }

    result = ((result & 0xF) << 18) | ((v24[1] & 0x3F) << 12) | ((v24[2] & 0x3F) << 6) | v24[3] & 0x3F;
    v21 = 4;
    v22 = result == v19;
    if (result < v19)
    {
      break;
    }

LABEL_28:
    if (v22)
    {
      v25 = v16;
      v26 = 36;
      v58 = v25;
      while (1)
      {
        v27 = v26 + 36;
        if (v26 < 0xFFFFFFDC)
        {
          break;
        }

        if (v13 < v26)
        {
          v27 = -1;
LABEL_35:
          if (v13 >= 0xFFFFFFE6)
          {
            goto LABEL_103;
          }

          if (v26 >= v13 + 26)
          {
            if (v25 < 0x1A)
            {
              goto LABEL_67;
            }

            v28 = 26;
          }

          else
          {
            v28 = v26 - v13;
            if (v26 < v13)
            {
              goto LABEL_105;
            }

            if (v25 < v28)
            {
LABEL_67:
              v43 = sub_25F1CE83C(v25);
              if (!v44)
              {
                goto LABEL_94;
              }

              MEMORY[0x25F8D7120](v43);

              if (v59 != -1)
              {
                v9 = v53;
                v13 = sub_25F1CE948(v58, v59 + 1, v59 == v53);
                v16 = 0;
                ++v59;
                v3 = v54;
                v17 = v55;
                v19 = v56;
                goto LABEL_16;
              }

LABEL_106:
              __break(1u);
LABEL_107:
              __break(1u);
              goto LABEL_108;
            }
          }

          goto LABEL_46;
        }

        if (!v25)
        {
          goto LABEL_67;
        }

        v26 = -1;
        v28 = 1;
LABEL_47:
        v29 = v25 - v28;
        if (v25 < v28)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
          goto LABEL_106;
        }

        v30 = 36 - v28;
        if (v28 > 0x24)
        {
          goto LABEL_100;
        }

        if (!v30)
        {
          goto LABEL_101;
        }

        v25 = v29 / v30;
        v31 = v29 % v30;
        v32 = __CFADD__(v28, v31);
        v33 = v28 + v31;
        if (v32)
        {
          goto LABEL_102;
        }

        if (v33 > 0x19)
        {
          v32 = __CFADD__(v33, 39);
          v34 = v33 + 39;
          if (v32)
          {
            goto LABEL_104;
          }

          if (v34 >> 11 == 27 || v34 > 0x10FFFF)
          {
            goto LABEL_94;
          }

          if (v34 > 0x7F)
          {
            v38 = (v34 & 0x3F) << 8;
            v39 = (v34 >> 6) + v38 + 33217;
            v40 = (v38 | (v34 >> 6) & 0x3F) << 8;
            v41 = (v34 >> 18) + ((v40 | (v34 >> 12) & 0x3F) << 8) - 2122219023;
            v42 = (v34 >> 12) + v40 + 8487393;
            if (HIWORD(v34))
            {
              v42 = v41;
            }

            if (v34 >= 0x800)
            {
              v36 = v42;
            }

            else
            {
              v36 = v39;
            }

            goto LABEL_60;
          }
        }

        else
        {
          v34 = v33 + 97;
        }

        v36 = v34 + 1;
LABEL_60:
        v60 = (v36 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v36) >> 3))));
        v37 = sub_25F304EFC();
        MEMORY[0x25F8D7120](v37);

        if (v26 == -1)
        {
          goto LABEL_67;
        }
      }

      if (v13 < v26)
      {
        goto LABEL_35;
      }

      if (!v25)
      {
        goto LABEL_67;
      }

      v28 = 1;
LABEL_46:
      v26 = v27;
      goto LABEL_47;
    }

LABEL_16:
    v18 += v21;
    if (v18 >= v17)
    {

      v6 = v52;
      v12 = v50;
      v7 = v51;
LABEL_80:
      if (v16 == -1)
      {
        goto LABEL_112;
      }

      v14 = v56 + 1;
      if (v56 == -1)
      {
        goto LABEL_113;
      }

      v57 = v16 + 1;
      v64 = v56 + 1;
      if (sub_25F1CE62C(0xFuLL, v12, v3, a2) <= v59)
      {
        v47 = v62;
        v46 = v63;
        goto LABEL_85;
      }

      goto LABEL_10;
    }
  }

  if (v16 != -1)
  {
    v16 = (v16 + 1);
    goto LABEL_16;
  }

LABEL_94:

LABEL_95:

  return 0;
}

uint64_t Sequence.pairs.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7);
  return (*(v4 + 32))(a2, v7, a1);
}

uint64_t PairSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = sub_25F305C1C();
  v19 = *(v5 - 8);
  v6 = *(v19 + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v19 - v8;
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v7);
  v13 = &v19 - v12;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25F305CDC();
  if ((*(v10 + 48))(v9, 1, AssociatedTypeWitness) == 1)
  {
    (*(v19 + 8))(v9, v5);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v20, 1, 1, TupleTypeMetadata2);
  }

  else
  {
    (*(v10 + 32))(v13, v9, AssociatedTypeWitness);
    v16 = swift_getTupleTypeMetadata2();
    v17 = *(v16 + 48);
    v18 = v20;
    (*(v10 + 16))(v20, v13, AssociatedTypeWitness);
    sub_25F305CDC();
    (*(v10 + 8))(v13, AssociatedTypeWitness);
    return (*(*(v16 - 8) + 56))(v18, 0, 1, v16);
  }
}

uint64_t sub_25F1CF3EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);

  return v5(a2, a1, AssociatedTypeWitness);
}

uint64_t PairSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v7 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v15 = &v17 - v14;
  (*(v5 + 16))(v9, v2, v4);
  sub_25F3050DC();
  return (*(v12 + 32))(a2, v15, AssociatedTypeWitness);
}

uint64_t sub_25F1CF624@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  PairSequence.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25F1CF68C(uint64_t a1, uint64_t a2)
{
  v4 = sub_25F2E7F78(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t sub_25F1CF6FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F1CF76C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_25F1CF8AC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t sub_25F1CFACC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F1CFB4C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
LABEL_23:
    v15 = *(v8 + 48);

    return v15(a1);
  }

  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v13 = ((a2 - v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v13))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v13 < 2)
    {
LABEL_22:
      if (v9)
      {
        goto LABEL_23;
      }

      return 0;
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_22;
  }

LABEL_11:
  v14 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v14 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return v9 + (v10 | v14) + 1;
}

void sub_25F1CFCE0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (a3 <= v10)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 - v10 + ~(-1 << (8 * v11))) >> (8 * v11)) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v10 < a2)
  {
    v13 = ~v10 + a2;
    if (v11 < 4)
    {
      v14 = (v13 >> (8 * v11)) + 1;
      if (v11)
      {
        v17 = v13 & ~(-1 << (8 * v11));
        bzero(a1, v11);
        if (v11 != 3)
        {
          if (v11 == 2)
          {
            *a1 = v17;
            if (v12 > 1)
            {
LABEL_39:
              if (v12 == 2)
              {
                *&a1[v11] = v14;
              }

              else
              {
                *&a1[v11] = v14;
              }

              return;
            }
          }

          else
          {
            *a1 = v13;
            if (v12 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *a1 = v17;
        a1[2] = BYTE2(v17);
      }

      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v12)
    {
      a1[v11] = v14;
    }

    return;
  }

  if (v12 > 1)
  {
    if (v12 != 2)
    {
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_28;
    }

    *&a1[v11] = 0;
  }

  else if (v12)
  {
    a1[v11] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return;
  }

LABEL_28:
  v18 = *(v9 + 56);

  v18(a1, a2);
}

uint64_t FulfillOnceState.__allocating_init(waitingState:initializationCallsite:initializationInfo:failureMode:thingDescription:actionPastParticiple:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = sub_25F1D1EE4(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*(*(v9 + 80) - 8) + 8))(a1);
  return v11;
}

uint64_t FulfillOnceState.updateWaitingState<A>(update:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  v16 = v3[19];
  *&v10 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FulfillOnce.swift";
  *(&v10 + 1) = 123;
  v11 = 2;
  v12 = xmmword_25F309320;
  v13 = "updateWaitingState(update:)";
  v14 = 27;
  v15 = 2;
  v9[2] = *(v4 + 80);
  v9[3] = *(v4 + 88);
  v9[4] = a3;
  v9[5] = a1;
  v9[6] = a2;
  type metadata accessor for FulfillOnceState.State();
  v5 = sub_25F30476C();
  updated = type metadata accessor for FulfillOnceState.WaitingStateUpdateResult();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v10, sub_25F1D1F88, v9, v5, updated, WitnessTable);
}

uint64_t FulfillOnceState.fulfill(callsite:makeFulfilledState:ifAlreadyFulfilled:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = a1[1];
  v21 = *a1;
  v22 = v7;
  v23[0] = a1[2];
  *(v23 + 9) = *(a1 + 41);
  v24 = v5[19];
  *&v15 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FulfillOnce.swift";
  *(&v15 + 1) = 123;
  v16 = 2;
  v17 = xmmword_25F309330;
  v18 = "fulfill(callsite:makeFulfilledState:ifAlreadyFulfilled:)";
  v19 = 56;
  v20 = 2;
  v14[2] = a2;
  v14[3] = a3;
  v14[6] = a4;
  v14[7] = a5;
  v8 = *(v6 + 80);
  v9 = *(v6 + 88);
  type metadata accessor for FulfillOnceState.State();
  v10 = sub_25F30476C();
  v11 = type metadata accessor for FulfillOnceState.FulfillmentOutcome();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v15, sub_25F1D1FDC, v14, v10, v11, WitnessTable);
}

__n128 FulfillOnceState.initializationCallsite.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  *(a1 + 32) = *(v1 + 48);
  result = *(v1 + 57);
  *(a1 + 41) = result;
  return result;
}

uint64_t FulfillOnceState.thing.getter()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t FulfillOnceState.action.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return v1;
}

uint64_t FulfillOnceState.init(waitingState:initializationCallsite:initializationInfo:failureMode:thingDescription:actionPastParticiple:)(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *v9;
  v12 = sub_25F1D1D10(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  (*(*(*(v11 + 80) - 8) + 8))(a1);
  return v12;
}

uint64_t FulfillOnceState.__allocating_init<>(initializationCallsite:initializationInfo:failureMode:thingDescription:actionPastParticiple:)(__int128 *a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v14 = a1[1];
  v20[0] = *a1;
  v20[1] = v14;
  v21[0] = a1[2];
  *(v21 + 9) = *(a1 + 41);
  v15 = *(a4 + 16);
  v18 = *a4;
  v19 = v15;
  v16 = swift_allocObject();
  return sub_25F1D1D10(v16, v20, a2, a3, &v18, a5, a6, a7, a8);
}

uint64_t FulfillOnceState.deinit()
{
  v1 = v0;
  v2 = *(*v0 + 80);
  v3 = *(*v0 + 88);
  v4 = type metadata accessor for FulfillOnceState.State();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v34 - v7;
  v37 = *(v0 + 152);
  *&v44 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FulfillOnce.swift";
  *(&v44 + 1) = 123;
  v45[0] = 2;
  *&v45[8] = xmmword_25F309340;
  *&v45[24] = "deinit";
  *&v45[32] = 6;
  v45[40] = 2;
  v9 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v44, v9, WitnessTable);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(*(v2 - 8) + 8))(v8, v2);
    v11 = *(v0 + 128);
    v36 = *(v0 + 120);
    v12 = *(v0 + 144);
    v35 = *(v0 + 136);
    v13 = *(v0 + 32);
    v41 = *(v0 + 16);
    v42 = v13;
    v43[0] = *(v0 + 48);
    *(v43 + 9) = *(v0 + 57);
    v14 = *(v0 + 80);
    if (v14)
    {
      v15 = *(v0 + 88);

      v16 = sub_25F1D2078(v14);
      v17 = v14(v16);
      v19 = v18;
      sub_25F1AC3AC(v14);
    }

    else
    {

      v17 = 0;
      v19 = 0;
    }

    v21 = *(v1 + 104);
    v22 = *(v1 + 112);
    v37 = *(v1 + 96);
    v20 = v37;
    v38 = v21;
    v39 = v22;
    v23 = *(v1 + 32);
    v44 = *(v1 + 16);
    *v45 = v23;
    *&v45[16] = *(v1 + 48);
    *&v45[25] = *(v1 + 57);
    type metadata accessor for FulfillOnceState.Unfulfilled();
    swift_getWitnessTable();
    v24 = swift_allocError();
    *v25 = v36;
    *(v25 + 8) = v11;
    *(v25 + 16) = v35;
    *(v25 + 24) = v12;
    v26 = *(v43 + 9);
    v28 = v42;
    v27 = v43[0];
    *(v25 + 32) = v41;
    *(v25 + 48) = v28;
    *(v25 + 64) = v27;
    *(v25 + 73) = v26;
    *(v25 + 89) = *v40;
    *(v25 + 92) = *&v40[3];
    *(v25 + 96) = v17;
    *(v25 + 104) = v19;
    sub_25F1D2054(v20, v21, v22);
    sub_25F1D07A0(&v44, v24);
    sub_25F1D2018(v37, v38, v39);
  }

  v29 = *(v1 + 88);
  sub_25F1AC3AC(*(v1 + 80));
  sub_25F1D2018(*(v1 + 96), *(v1 + 104), *(v1 + 112));
  v30 = *(v1 + 128);

  v31 = *(v1 + 144);

  v32 = *(v1 + 152);

  return v1;
}

void sub_25F1D07A0(uint64_t a1, void *a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v39[0] = *(a1 + 17);
  *(v39 + 3) = *(a1 + 20);
  v6 = *(a1 + 24);
  v38[0] = *(a1 + 32);
  *(v38 + 9) = *(a1 + 41);
  v7 = *v2;
  v8 = *(v2 + 8);
  if (!*(v2 + 16))
  {
    v17 = *(v2 + 8);
    (v7)();
    return;
  }

  if (*(v2 + 16) == 1)
  {
    if (qword_281561A38 != -1)
    {
      swift_once();
    }

    v9 = sub_25F30479C();
    __swift_project_value_buffer(v9, qword_281561A40);

    oslog = sub_25F30477C();
    v10 = sub_25F305A0C();
    sub_25F1D2018(v7, v8, 1);
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v37 = v12;
      *v11 = 136446466;
      *(v11 + 4) = sub_25F1C53AC(v7, v8, &v37);
      *(v11 + 12) = 2082;
      v31 = v4;
      v32 = v3;
      v33 = v5;
      *v34 = v39[0];
      *&v34[3] = *(v39 + 3);
      v35 = v6;
      v36[0] = v38[0];
      *(v36 + 9) = *(v38 + 9);
      v13 = Callsite.description.getter();
      v15 = sub_25F1C53AC(v13, v14, &v37);

      *(v11 + 14) = v15;
      _os_log_impl(&dword_25F1A2000, oslog, v10, "FulfillOnce failure: %{public}s, callsite: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x25F8D9510](v12, -1, -1);
      v16 = v11;
LABEL_13:
      MEMORY[0x25F8D9510](v16, -1, -1);

      return;
    }
  }

  else
  {
    if (v7 | v8)
    {
      if (v7 ^ 1 | v8)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
        sub_25F30619C();
        sub_25F30627C();
        __break(1u);
      }

      else
      {
        v31 = v4;
        v32 = v3;
        v33 = v5;
        *v34 = *(a1 + 17);
        *&v34[3] = *(a1 + 20);
        v35 = v6;
        v36[0] = *(a1 + 32);
        *(v36 + 9) = *(a1 + 41);
        sub_25F213F98(&v31);
      }

      return;
    }

    if (qword_281561A38 != -1)
    {
      swift_once();
    }

    v19 = sub_25F30479C();
    __swift_project_value_buffer(v19, qword_281561A40);
    v20 = a2;
    oslog = sub_25F30477C();
    v21 = sub_25F305A0C();

    if (os_log_type_enabled(oslog, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v37 = v24;
      *v22 = 138412546;
      v25 = a2;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 4) = v26;
      *v23 = v26;
      *(v22 + 12) = 2080;
      v31 = v4;
      v32 = v3;
      v33 = v5;
      *v34 = v39[0];
      *&v34[3] = *(v39 + 3);
      v35 = v6;
      v36[0] = v38[0];
      *(v36 + 9) = *(v38 + 9);
      v27 = Callsite.description.getter();
      v29 = sub_25F1C53AC(v27, v28, &v37);

      *(v22 + 14) = v29;
      _os_log_impl(&dword_25F1A2000, oslog, v21, "FulfillOnce failure: %@, callsite: %s", v22, 0x16u);
      sub_25F1D313C(v23);
      MEMORY[0x25F8D9510](v23, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x25F8D9510](v24, -1, -1);
      v16 = v22;
      goto LABEL_13;
    }
  }
}

uint64_t FulfillOnceState.__deallocating_deinit()
{
  FulfillOnceState.deinit();

  return MEMORY[0x2821FE8D8](v0, 160, 7);
}

uint64_t sub_25F1D0C64@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v20 = a3;
  v21 = a2;
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for FulfillOnceState.State();
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x28223BE20](v14);
  v17 = &v20 - v16;
  (*(v18 + 16))(&v20 - v16, a1, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(*(a5 - 8) + 32))(a6, v17, a5);
    type metadata accessor for FulfillOnceState.WaitingStateUpdateResult();
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    (*(v10 + 32))(v13, v17, a4);
    v21(v13);
    type metadata accessor for FulfillOnceState.WaitingStateUpdateResult();
    swift_storeEnumTagMultiPayload();
    sub_25F1D0EC4(a1, v13, a4);
    return (*(v10 + 8))(v13, a4);
  }
}

uint64_t sub_25F1D0EC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FulfillOnceState.State();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v12 - v9;
  (*(*(a3 - 8) + 16))(&v12 - v9, a2, a3);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 40))(a1, v10, v6);
}

uint64_t FulfillOnceState.snapshot.getter()
{
  v1 = *v0;
  v13 = v0[19];
  *&v7 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FulfillOnce.swift";
  *(&v7 + 1) = 123;
  v8 = 2;
  v9 = xmmword_25F309350;
  v10 = "snapshot";
  v11 = 8;
  v12 = 2;
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  type metadata accessor for FulfillOnceState.State();
  v4 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  return SynchronousAccessProviding<>.peek(callsite:)(&v7, v4, WitnessTable);
}

uint64_t sub_25F1D10C4@<X0>(uint64_t a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, void (*a6)(char *, _OWORD *)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v59 = a7;
  v60 = a6;
  v55 = a3;
  v56 = a2;
  v61 = a8;
  v62 = *(*(*a5 + 88) - 8);
  v11 = *(v62 + 64);
  v12 = MEMORY[0x28223BE20](a1);
  v58 = &v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v57 = &v53 - v15;
  v17 = *(v16 + 80);
  v75 = *(v17 - 8);
  v18 = *(v75 + 64);
  MEMORY[0x28223BE20](v14);
  v20 = &v53 - v19;
  v63 = v21;
  v22 = type metadata accessor for FulfillOnceState.State();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v53 - v25;
  (*(v23 + 16))(&v53 - v25, a1, v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v75 = v17;
    v27 = v63;
    v28 = &v26[*(swift_getTupleTypeMetadata2() + 48)];
    *(v74 + 9) = *(v28 + 41);
    v29 = *(v28 + 1);
    v72 = *v28;
    v73 = v29;
    v74[0] = *(v28 + 2);
    v30 = v62;
    v31 = v58;
    (*(v62 + 32))(v58, v26, v27);
    v32 = *(a5 + 96);
    v33 = *(a5 + 104);
    v34 = *(a5 + 112);
    v35 = swift_allocObject();
    *(v35 + 16) = a5;
    v36 = v73;
    *(v35 + 24) = v72;
    *(v35 + 40) = v36;
    *(v35 + 56) = v74[0];
    *(v35 + 65) = *(v74 + 9);
    v37 = *a4;
    v38 = a4[1];
    *(v35 + 88) = *a4;
    *(v35 + 104) = v38;
    v39 = a4[2];
    *(v35 + 120) = v39;
    v40 = *(a4 + 41);
    *(v35 + 129) = v40;
    v67[0] = v37;
    v67[1] = v38;
    v68[0] = v39;
    *(v68 + 9) = v40;
    *&v69 = v32;
    *(&v69 + 1) = v33;
    LOBYTE(v70) = v34;
    *(&v70 + 1) = sub_25F1D31A4;
    v71 = v35;
    v65[4] = v69;
    v65[5] = v70;
    v66 = v35;
    v65[0] = v37;
    v65[1] = v38;
    v65[2] = v68[0];
    v65[3] = v68[1];
    sub_25F1D2054(v32, v33, v34);

    v41 = v64;
    v60(v31, v65);
    (*(v30 + 8))(v31, v27);
    result = sub_25F1D31B4(v67);
    if (!v41)
    {
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      return (*(*(TupleTypeMetadata2 - 8) + 56))(v61, 1, 1, TupleTypeMetadata2);
    }
  }

  else
  {
    (*(v23 + 8))(a1, v22);
    v44 = v20;
    v54 = v20;
    v60 = *(v75 + 32);
    v75 += 32;
    (v60)(v20, v26, v17);
    v45 = v57;
    v56(v44);
    v46 = v63;
    v47 = (a1 + *(swift_getTupleTypeMetadata2() + 48));
    v48 = v62;
    (*(v62 + 16))(a1, v45, v46);
    v49 = a4[1];
    *v47 = *a4;
    v47[1] = v49;
    v47[2] = a4[2];
    *(v47 + 41) = *(a4 + 41);
    swift_storeEnumTagMultiPayload();
    v50 = swift_getTupleTypeMetadata2();
    v51 = *(v50 + 48);
    v52 = v61;
    (v60)(v61, v54, v17);
    (*(v48 + 32))(v52 + v51, v45, v46);
    return (*(*(v50 - 8) + 56))(v52, 0, 1, v50);
  }

  return result;
}

__n128 sub_25F1D163C(uint64_t *a1, __int128 *a2, __int128 *a3)
{
  v4 = a1[15];
  v3 = a1[16];
  v6 = a1[17];
  v5 = a1[18];
  v23 = *a2;
  v24 = a2[1];
  *v25 = a2[2];
  *&v25[9] = *(a2 + 41);
  v20 = *a3;
  v21 = a3[1];
  *v22 = a3[2];
  *&v22[9] = *(a3 + 41);
  v17 = *(a1 + 1);
  v18 = *(a1 + 2);
  *v19 = *(a1 + 3);
  *&v19[9] = *(a1 + 57);
  v7 = a1[10];
  v8 = *a1;
  if (v7)
  {
    v9 = a1[11];

    v11 = v7(v10);
    v7 = v12;
  }

  else
  {

    v11 = 0;
  }

  v13 = *(v8 + 80);
  v14 = *(v8 + 88);
  type metadata accessor for FulfillOnceState.Overfulfilled();
  swift_getWitnessTable();
  swift_allocError();
  *v15 = v4;
  *(v15 + 8) = v3;
  *(v15 + 16) = v6;
  *(v15 + 24) = v5;
  *(v15 + 32) = v23;
  *(v15 + 48) = v24;
  *(v15 + 64) = *v25;
  *(v15 + 73) = *&v25[9];
  *(v15 + 137) = *&v22[9];
  *(v15 + 112) = v21;
  *(v15 + 128) = *v22;
  *(v15 + 96) = v20;
  result = v17;
  *(v15 + 201) = *&v19[9];
  *(v15 + 176) = v18;
  *(v15 + 192) = *v19;
  *(v15 + 160) = v17;
  *(v15 + 224) = v11;
  *(v15 + 232) = v7;
  return result;
}

uint64_t FulfillOnceState.fulfill<>(callsite:ifAlreadyFulfilled:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(*v3 + 80);
  v5[2] = a2;
  v5[3] = a3;
  return FulfillOnceState.fulfill(callsite:makeFulfilledState:ifAlreadyFulfilled:)(a1, nullsub_2, v6, sub_25F1D2088, v5);
}

uint64_t sub_25F1D1840(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v2;
  v11[0] = *(a2 + 32);
  *(v11 + 9) = *(a2 + 41);
  v3 = *(a2 + 72);
  v5 = *(a2 + 88);
  v4 = *(a2 + 96);
  v6 = *(a2 + 80);
  v12 = *(a2 + 64);
  v13 = v3;
  v14 = v6;
  v7 = sub_25F1D2054(v12, v3, v6);
  v8 = v5(v7);
  sub_25F1D07A0(v10, v8);

  return sub_25F1D2018(v12, v13, v14);
}

uint64_t sub_25F1D18D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v10 = *(v0 + 2);
  v11 = *(v0 + 3);
  *v12 = *(v0 + 4);
  *&v12[9] = *(v0 + 73);
  v6 = v0[12];
  v5 = v0[13];

  sub_25F305FAC();
  MEMORY[0x25F8D7130](v1, v2);
  MEMORY[0x25F8D7130](0xD00000000000001FLL, 0x800000025F317710);
  MEMORY[0x25F8D7130](v3, v4);
  MEMORY[0x25F8D7130](0x616974696E490A2ELL, 0xEF203A64657A696CLL);
  v7 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v7);

  MEMORY[0x25F8D7130](10, 0xE100000000000000);
  if (v5)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  if (!v5)
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x25F8D7130](v8, v5);

  return 0;
}

uint64_t sub_25F1D1A18()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v12 = *(v0 + 2);
  v13 = *(v0 + 3);
  *v14 = *(v0 + 4);
  *&v14[9] = *(v0 + 73);
  *&v17[9] = *(v0 + 137);
  v16 = *(v0 + 7);
  *v17 = *(v0 + 8);
  v15 = *(v0 + 6);
  *&v20[9] = *(v0 + 201);
  v19 = *(v0 + 11);
  *v20 = *(v0 + 12);
  v18 = *(v0 + 10);
  v6 = v0[28];
  v5 = v0[29];

  sub_25F305FAC();
  MEMORY[0x25F8D7130](v1, v2);
  MEMORY[0x25F8D7130](0x2073617720, 0xE500000000000000);
  MEMORY[0x25F8D7130](v3, v4);
  MEMORY[0x25F8D7130](0xD00000000000001CLL, 0x800000025F317740);
  MEMORY[0x25F8D7130](v3, v4);
  MEMORY[0x25F8D7130](8250, 0xE200000000000000);
  v7 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v7);

  MEMORY[0x25F8D7130](10, 0xE100000000000000);
  MEMORY[0x25F8D7130](v3, v4);
  MEMORY[0x25F8D7130](0x203A6E6961676120, 0xE800000000000000);
  v8 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v8);

  MEMORY[0x25F8D7130](0x6C616974696E490ALL, 0xEE00203A64657A69);
  v9 = Callsite.description.getter();
  MEMORY[0x25F8D7130](v9);

  MEMORY[0x25F8D7130](10, 0xE100000000000000);
  if (v5)
  {
    v10 = v6;
  }

  else
  {
    v10 = 0;
  }

  if (!v5)
  {
    v5 = 0xE000000000000000;
  }

  MEMORY[0x25F8D7130](v10, v5);

  return 0;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> OverfulfillHandle.throwError()()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v1();
  swift_willThrow();
}

Swift::Void __swiftcall OverfulfillHandle.assert()()
{
  v1 = *(v0 + 16);
  v11[0] = *v0;
  v11[1] = v1;
  v12[0] = *(v0 + 32);
  *(v12 + 9) = *(v0 + 41);
  v2 = *(v0 + 72);
  v4 = *(v0 + 88);
  v3 = *(v0 + 96);
  v5 = *(v0 + 80);
  v13 = *(v0 + 64);
  v14 = v2;
  v15 = v5;
  v6 = sub_25F1D2054(v13, v2, v5);
  v7 = v4(v6);
  sub_25F1D07A0(v11, v7);

  v8 = v13;
  v9 = v14;
  v10 = v15;

  sub_25F1D2018(v8, v9, v10);
}

uint64_t sub_25F1D1D10(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v36 = a7;
  v37 = a8;
  v34 = a4;
  v35 = a6;
  v14 = *(*v9 + 80);
  v15 = *(*v9 + 88);
  v33 = a9;
  v16 = type metadata accessor for FulfillOnceState.State();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - v19;
  v21 = a2[1];
  v38 = *a2;
  v39 = v21;
  v40[0] = a2[2];
  *(v40 + 9) = *(a2 + 41);
  v23 = *a5;
  v22 = a5[1];
  LOBYTE(a5) = *(a5 + 16);
  (*(*(v14 - 8) + 16))(&v32 - v19, a1, v14);
  swift_storeEnumTagMultiPayload();
  v24 = sub_25F203E0C(v20, v16);
  (*(v17 + 8))(v20, v16);
  *(v9 + 152) = v24;
  v25 = v39;
  *(v9 + 16) = v38;
  *(v9 + 32) = v25;
  *(v9 + 48) = v40[0];
  *(v9 + 57) = *(v40 + 9);
  v26 = v34;
  v27 = v35;
  *(v9 + 80) = a3;
  *(v9 + 88) = v26;
  *(v9 + 96) = v23;
  *(v9 + 104) = v22;
  *(v9 + 112) = a5;
  v28 = v36;
  v29 = v37;
  *(v9 + 120) = v27;
  *(v9 + 128) = v28;
  v30 = v33;
  *(v9 + 136) = v29;
  *(v9 + 144) = v30;
  return v9;
}

uint64_t sub_25F1D2018(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_25F1D2054(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 1)
  {
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t sub_25F1D2078(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_25F1D2088(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(a2 + 80);
  v9[4] = *(a2 + 64);
  v9[5] = v5;
  v10 = *(a2 + 96);
  v6 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v6;
  v7 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v7;
  return v3(v9);
}

uint64_t sub_25F1D2198(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_getTupleTypeMetadata2();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F1D2228(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = ((*(*(*(a3 + 24) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 57;
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_25F1D235C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (((*(*(*(a4 + 24) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 57 > v5)
  {
    v5 = ((*(*(*(a4 + 24) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 57;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25F1D2530(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F1D25AC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 32) - 8) + 64))
  {
    v3 = *(*(*(a3 + 32) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_25F1D26D4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 32) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25F1D289C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata2;
}

uint64_t sub_25F1D2900(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v12 = *(v7 + 80);
  if (v10)
  {
    v13 = *(*(v6 - 8) + 64);
  }

  else
  {
    v13 = *(*(v6 - 8) + 64) + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v14 = *(*(*(a3 + 16) - 8) + 64) + v12;
  v15 = a2 - v11;
  if (a2 > v11)
  {
    v16 = v13 + (v14 & ~v12);
    v17 = 8 * v16;
    if (v16 > 3)
    {
      goto LABEL_12;
    }

    v19 = ((v15 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v19))
    {
      v18 = *(a1 + v16);
      if (v18)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v19 <= 0xFF)
      {
        if (v19 < 2)
        {
          goto LABEL_32;
        }

LABEL_12:
        v18 = *(a1 + v16);
        if (!*(a1 + v16))
        {
          goto LABEL_32;
        }

LABEL_19:
        v20 = (v18 - 1) << v17;
        if (v16 > 3)
        {
          v20 = 0;
        }

        if (v16)
        {
          if (v16 <= 3)
          {
            v21 = v16;
          }

          else
          {
            v21 = 4;
          }

          if (v21 > 2)
          {
            if (v21 == 3)
            {
              v22 = *a1 | (*(a1 + 2) << 16);
            }

            else
            {
              v22 = *a1;
            }
          }

          else if (v21 == 1)
          {
            v22 = *a1;
          }

          else
          {
            v22 = *a1;
          }
        }

        else
        {
          v22 = 0;
        }

        return v11 + (v22 | v20) + 1;
      }

      v18 = *(a1 + v16);
      if (*(a1 + v16))
      {
        goto LABEL_19;
      }
    }
  }

LABEL_32:
  if (v10 < 2)
  {
    return 0;
  }

  if (v5 >= v9)
  {
    v24 = (*(v4 + 48))(a1, v5);
  }

  else
  {
    v24 = (*(v8 + 48))((a1 + v14) & ~v12, v9, v6);
  }

  if (v24 >= 2)
  {
    return v24 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_25F1D2B18(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = *(a4 + 24);
  v10 = *(v9 - 8);
  v11 = *(v10 + 84);
  v12 = *(v7 + 64);
  v13 = *(v10 + 80);
  if (v11 <= v8)
  {
    v14 = *(v7 + 84);
  }

  else
  {
    v14 = *(v10 + 84);
  }

  if (v14)
  {
    v15 = v14 - 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = v12 + v13;
  v17 = ((v12 + v13) & ~v13) + *(*(v9 - 8) + 64);
  if (v14)
  {
    v18 = v17;
  }

  else
  {
    v18 = v17 + 1;
  }

  v19 = a3 >= v15;
  v20 = a3 - v15;
  if (v20 == 0 || !v19)
  {
    goto LABEL_22;
  }

  if (v18 > 3)
  {
    v6 = 1;
    if (v15 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v21 = ((v20 + ~(-1 << (8 * v18))) >> (8 * v18)) + 1;
  if (!HIWORD(v21))
  {
    if (v21 < 0x100)
    {
      v22 = 1;
    }

    else
    {
      v22 = 2;
    }

    if (v21 >= 2)
    {
      v6 = v22;
    }

    else
    {
      v6 = 0;
    }

LABEL_22:
    if (v15 < a2)
    {
      goto LABEL_23;
    }

    goto LABEL_32;
  }

  v6 = 4;
  if (v15 < a2)
  {
LABEL_23:
    v23 = ~v15 + a2;
    if (v18 < 4)
    {
      v24 = (v23 >> (8 * v18)) + 1;
      if (v18)
      {
        v25 = v23 & ~(-1 << (8 * v18));
        bzero(a1, v18);
        if (v18 != 3)
        {
          if (v18 == 2)
          {
            *a1 = v25;
            if (v6 > 1)
            {
LABEL_65:
              if (v6 == 2)
              {
                *&a1[v18] = v24;
              }

              else
              {
                *&a1[v18] = v24;
              }

              return;
            }
          }

          else
          {
            *a1 = v23;
            if (v6 > 1)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        *a1 = v25;
        a1[2] = BYTE2(v25);
      }

      if (v6 > 1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v23;
      v24 = 1;
      if (v6 > 1)
      {
        goto LABEL_65;
      }
    }

LABEL_62:
    if (v6)
    {
      a1[v18] = v24;
    }

    return;
  }

LABEL_32:
  if (v6 > 1)
  {
    if (v6 != 2)
    {
      *&a1[v18] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_39;
    }

    *&a1[v18] = 0;
LABEL_38:
    if (!a2)
    {
      return;
    }

    goto LABEL_39;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

  a1[v18] = 0;
  if (!a2)
  {
    return;
  }

LABEL_39:
  if (v14 >= 2)
  {
    if (a2 >= v14)
    {
      if (v17 <= 3)
      {
        v28 = ~(-1 << (8 * v17));
      }

      else
      {
        v28 = -1;
      }

      if (v17)
      {
        v29 = v28 & (a2 - v14);
        if (v17 <= 3)
        {
          v30 = v17;
        }

        else
        {
          v30 = 4;
        }

        bzero(a1, v17);
        if (v30 > 2)
        {
          if (v30 == 3)
          {
            *a1 = v29;
            a1[2] = BYTE2(v29);
          }

          else
          {
            *a1 = v29;
          }
        }

        else if (v30 == 1)
        {
          *a1 = v29;
        }

        else
        {
          *a1 = v29;
        }
      }
    }

    else if (v8 >= v11)
    {
      v31 = *(v7 + 56);
      v32 = a2 + 1;

      v31(a1, v32);
    }

    else
    {
      v26 = *(v10 + 56);
      v27 = a2 + 1;

      v26(&a1[v16] & ~v13, v27, v11, v9);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_20PreviewsFoundationOS22FulfillmentFailureModeO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_25F1D2EA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_25F1D2EF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_25F1D2F34(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
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

uint64_t sub_25F1D2F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F1D2FD0(uint64_t result, int a2, int a3)
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
      *(result + 88) = (a2 - 1);
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

uint64_t sub_25F1D3038()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_25F1D3098(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_25F1D30E0(uint64_t result, int a2, int a3)
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

uint64_t sub_25F1D313C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53838, &qword_25F309710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F1D31FC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy240_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  v7 = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  result = a2[11];
  v11 = a2[12];
  v12 = a2[14];
  *(a1 + 208) = a2[13];
  *(a1 + 224) = v12;
  *(a1 + 176) = result;
  *(a1 + 192) = v11;
  return result;
}

uint64_t sub_25F1D327C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 240))
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

uint64_t sub_25F1D32C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 232) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 240) = 1;
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

    *(result + 240) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F1D3358@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, __int128 *a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t, _OWORD *)@<X5>, _BYTE *a6@<X8>)
{
  if (*(a1 + 57))
  {
    v31 = a6;
    v11 = *(a4 + 96);
    v12 = *(a4 + 104);
    v13 = *(a4 + 112);
    v15 = swift_allocObject();
    *(v15 + 16) = a4;
    v16 = *(a1 + 16);
    *(v15 + 24) = *a1;
    *(v15 + 40) = v16;
    *(v15 + 56) = *(a1 + 32);
    *(v15 + 65) = *(a1 + 41);
    v17 = *a3;
    v18 = a3[1];
    *(v15 + 88) = *a3;
    *(v15 + 104) = v18;
    v19 = a3[2];
    *(v15 + 120) = v19;
    v20 = *(a3 + 41);
    *(v15 + 129) = v20;
    v26[0] = v17;
    v26[1] = v18;
    *v27 = v19;
    *&v27[9] = v20;
    *&v28 = v11;
    *(&v28 + 1) = v12;
    LOBYTE(v29) = v13;
    *(&v29 + 1) = sub_25F1D3EE0;
    v30 = v15;
    v24[4] = v28;
    v24[5] = v29;
    v25 = v15;
    v24[0] = v17;
    v24[1] = v18;
    v24[2] = *v27;
    v24[3] = *&v27[16];
    sub_25F1D2054(v11, v12, v13);

    a5(v21, v24);
    result = sub_25F1D31B4(v26);
    if (!v6)
    {
      *v31 = 1;
    }
  }

  else
  {
    result = a2();
    v23 = a3[1];
    *a1 = *a3;
    *(a1 + 16) = v23;
    *(a1 + 32) = a3[2];
    *(a1 + 41) = *(a3 + 41);
    *(a1 + 57) = 1;
    *a6 = 0;
  }

  return result;
}

uint64_t sub_25F1D357C@<X0>(__int128 *a1@<X0>, void (*a2)(void *__return_ptr, __int128 *)@<X1>, __int128 *a3@<X3>, uint64_t a4@<X4>, void (*a5)(uint64_t *, __int128 *)@<X5>, uint64_t *a6@<X7>, uint64_t a7@<X8>, uint64_t *a8, uint64_t a9, uint64_t a10)
{
  v13 = a1[1];
  v53 = *a1;
  v54 = v13;
  v57 = *(a1 + 32);
  v14 = a1[3];
  v55 = a1[2];
  v56 = v14;
  v15 = v53;
  v16 = v54;
  if ((v57 & 0x100) != 0)
  {
    v46 = v53;
    v17 = *(a4 + 96);
    v18 = *(a4 + 104);
    v19 = *(a4 + 112);
    v21 = swift_allocObject();
    *(v21 + 16) = a4;
    *(v21 + 24) = *(&v15 + 1);
    *(v21 + 32) = v16;
    *(v21 + 40) = *(a1 + 24);
    *(v21 + 56) = *(a1 + 40);
    *(v21 + 65) = *(a1 + 49);
    v22 = *a3;
    v23 = a3[1];
    *(v21 + 88) = *a3;
    *(v21 + 104) = v23;
    v24 = a3[2];
    *(v21 + 120) = v24;
    v25 = *(a3 + 41);
    *(v21 + 129) = v25;
    *(v49 + 9) = v25;
    v47 = v22;
    v48 = v23;
    v49[0] = v24;
    *&v50 = v17;
    *(&v50 + 1) = v18;
    LOBYTE(v51) = v19;
    *(&v51 + 1) = a10;
    v52 = v21;
    v43 = v50;
    v44 = v51;
    v45 = v21;
    v39 = v22;
    v40 = v23;
    v41 = v24;
    v42 = v49[1];
    sub_25F1B7174(&v53, v38, a6, a8);
    sub_25F1D2054(v17, v18, v19);

    v26 = v58;
    a5(&v46, &v39);

    result = sub_25F1D31B4(&v47);
    if (!v26)
    {
      *a7 = 0u;
      *(a7 + 16) = 0u;
    }
  }

  else
  {
    v28 = a1[3];
    v49[0] = a1[2];
    v49[1] = v28;
    LOWORD(v50) = *(a1 + 32);
    v29 = a1[1];
    v47 = *a1;
    v48 = v29;
    sub_25F1B7174(&v53, &v39, a6, a8);
    sub_25F1AF698(&v47, a6, a8);
    v39 = v15;
    *&v40 = v16;
    a2(v38, &v39);
    v31 = a3[1];
    *(a1 + 8) = *a3;
    v32 = v38[0];
    *a1 = v38[0];
    *(a1 + 24) = v31;
    *(a1 + 40) = a3[2];
    *(a1 + 49) = *(a3 + 41);
    *(a1 + 65) = 1;
    v33 = v40;
    *a7 = v39;
    *(a7 + 16) = v33;
    *(a7 + 24) = v32;
  }

  return result;
}

__n128 sub_25F1D37C8(uint64_t a1, __int128 *a2, _OWORD *a3, uint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v11 = *(a1 + 128);
  v12 = *(a1 + 136);
  v13 = *(a1 + 144);
  v27 = v12;
  v28 = *(a1 + 120);
  v29 = *(a1 + 16);
  v30 = *(a1 + 32);
  *v31 = *(a1 + 48);
  *&v31[9] = *(a1 + 57);
  v14 = *(a1 + 80);
  if (v14)
  {
    v15 = *(a1 + 88);

    v17 = v14(v16);
    v14 = v18;
  }

  else
  {

    v17 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  sub_25F1D3F1C(a6, a4, a5);
  swift_allocError();
  *v19 = v28;
  *(v19 + 8) = v11;
  *(v19 + 16) = v27;
  *(v19 + 24) = v13;
  v21 = a2[1];
  v20 = a2[2];
  v22 = *a2;
  *(v19 + 73) = *(a2 + 41);
  *(v19 + 48) = v21;
  *(v19 + 64) = v20;
  *(v19 + 32) = v22;
  v23 = *(a3 + 41);
  v25 = a3[1];
  v24 = a3[2];
  *(v19 + 96) = *a3;
  *(v19 + 112) = v25;
  *(v19 + 128) = v24;
  *(v19 + 137) = v23;
  *(v19 + 176) = v30;
  *(v19 + 192) = *v31;
  *(v19 + 201) = *&v31[9];
  result = v29;
  *(v19 + 160) = v29;
  *(v19 + 224) = v17;
  *(v19 + 232) = v14;
  return result;
}

uint64_t AutoCancelling.wrappedValue.setter(uint64_t a1)
{
  v2 = *(v1 + 16);
  *(v1 + 16) = a1;
}

uint64_t (*AutoCancelling.wrappedValue.modify(void *a1))(uint64_t *a1)
{
  *a1 = *(v1 + 16);
  a1[1] = v1;

  return sub_25F1D3978;
}

uint64_t sub_25F1D3978(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 16);
  *(v1 + 16) = v2;
}

uint64_t AutoCancelling.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t AutoCancelling.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t AutoCancelling.deinit()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  v12 = v2;
  if (v2)
  {
    v4 = 0;
    v5 = (v1 + 48);
    while (v4 < *(v1 + 16))
    {
      v6 = *(v5 - 2);
      v7 = *(v5 - 1);
      v8 = *v5;
      v14 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AutoCancelling.swift";
      v15 = 126;
      v16 = 2;
      v17 = xmmword_25F3097F0;
      v18 = "deinit";
      v19 = 6;
      v20 = 2;
      v9 = *(v8 + 152);
      MEMORY[0x28223BE20](result);

      os_unfair_lock_lock(v9 + 19);
      sub_25F1D3DD4(&v9[4], &v13);
      os_unfair_lock_unlock(v9 + 19);
      if ((v13 & 1) == 0)
      {
        v6();
      }

      ++v4;

      v5 += 3;
      if (v12 == v4)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:

    v10 = *(v11 + 16);

    return v11;
  }

  return result;
}

uint64_t AutoCancelling.__deallocating_deinit()
{
  AutoCancelling.deinit();

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

double AutoCancelling.projectedValue.getter@<D0>(uint64_t a1@<X8>)
{
  *&v5 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AutoCancelling.swift";
  *(&v5 + 1) = 126;
  v6 = 2;
  v7 = xmmword_25F309800;
  v8 = "projectedValue";
  v9 = 14;
  v10 = 2;

  CancellationToken.init(callsite:didCancel:)(&v5, sub_25F1D3DEC, v1, &v11);
  v3 = v12;
  result = *&v11;
  *a1 = v11;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F1D3C40(uint64_t result)
{
  v1 = *(result + 16);
  *(result + 16) = MEMORY[0x277D84F90];
  v8 = *(v1 + 16);
  if (!v8)
  {
  }

  v2 = 0;
  v3 = (v1 + 48);
  while (v2 < *(v1 + 16))
  {
    v5 = *(v3 - 2);
    v4 = *(v3 - 1);
    v6 = *v3;
    v10 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/AutoCancelling.swift";
    v11 = 126;
    v12 = 2;
    v13 = xmmword_25F309810;
    v14 = "projectedValue";
    v15 = 14;
    v16 = 2;
    v7 = *(v6 + 152);
    MEMORY[0x28223BE20](result);

    os_unfair_lock_lock(v7 + 19);
    sub_25F1D3F70(&v7[4], &v9);
    os_unfair_lock_unlock(v7 + 19);
    if ((v9 & 1) == 0)
    {
      v5();
    }

    ++v2;

    v3 += 3;
    if (v8 == v2)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_25F1D3EBC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 56);
  return sub_25F1D3358(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), *(v2 + 48), a2);
}

uint64_t sub_25F1D3F1C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25F1D3F88(uint64_t result, void *a2)
{
  v46 = *(result + 16);
  if (v46)
  {
    v2 = a2;
    v3 = 0;
    v45 = result + 32;
LABEL_5:
    v6 = *(v45 + 8 * v3);
    v48 = v3 + 1;
    swift_bridgeObjectRetain_n();
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v55 = *v2;
    *v2 = 0x8000000000000000;
    v50 = v6 + 64;
    v51 = v6;
    v10 = -1 << *(v6 + 32);
    if (-v10 < 64)
    {
      v11 = ~(-1 << -v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v6 + 64);
    v47 = -1 << *(v6 + 32);
    v49 = (63 - v10) >> 6;

    for (i = 0; ; i = v20)
    {
      v19 = v12;
      v20 = i;
      if (!v12)
      {
        break;
      }

LABEL_16:
      v4 = v9;
      v53 = isUniquelyReferenced_nonNull_native;
      v22 = __clz(__rbit64(v19)) | (v20 << 6);
      v23 = (*(v51 + 48) + 16 * v22);
      v25 = *v23;
      v24 = v23[1];
      v26 = *(v51 + 56) + 24 * v22;
      v27 = *v26;
      v28 = *(v26 + 8);
      v29 = *(v26 + 16);

      sub_25F1B708C(v27, v28, v29);

      sub_25F1B708C(v27, v28, v29);

      sub_25F1D4C04(v27, v28, v29);
      if (!v24)
      {
LABEL_4:
        sub_25F1BF034();

        v2 = a2;
        v5 = *a2;
        *a2 = v4;

        v3 = v48;
        if (v48 == v46)
        {
          return result;
        }

        goto LABEL_5;
      }

      v52 = v28;
      v30 = v29;
      v31 = v4;
      v32 = sub_25F219234(v25, v24);
      v34 = v4[2];
      v35 = (v33 & 1) == 0;
      v36 = __OFADD__(v34, v35);
      v37 = v34 + v35;
      if (v36)
      {
        goto LABEL_28;
      }

      v38 = v33;
      if (v31[3] >= v37)
      {
        if ((v53 & 1) == 0)
        {
          v54 = v32;
          sub_25F21D8C8();
          v32 = v54;
        }
      }

      else
      {
        sub_25F219C5C(v37, v53 & 1);
        v32 = sub_25F219234(v25, v24);
        if ((v38 & 1) != (v39 & 1))
        {
          goto LABEL_30;
        }
      }

      v12 = (v19 - 1) & v19;
      v9 = v55;
      if (v38)
      {
        v14 = v32;

        v15 = v55[7] + 24 * v14;
        v16 = *v15;
        v17 = *(v15 + 8);
        *v15 = v27;
        *(v15 + 8) = v52;
        v18 = *(v15 + 16);
        *(v15 + 16) = v30;
        sub_25F1D4C04(v16, v17, v18);
      }

      else
      {
        v55[(v32 >> 6) + 8] |= 1 << v32;
        v40 = (v55[6] + 16 * v32);
        *v40 = v25;
        v40[1] = v24;
        v41 = v55[7] + 24 * v32;
        *v41 = v27;
        *(v41 + 8) = v52;
        *(v41 + 16) = v30;
        v42 = v55[2];
        v36 = __OFADD__(v42, 1);
        v43 = v42 + 1;
        if (v36)
        {
          goto LABEL_29;
        }

        v55[2] = v43;
      }

      isUniquelyReferenced_nonNull_native = 1;
    }

    v21 = i;
    while (1)
    {
      v20 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v20 >= v49)
      {
        v4 = v9;
        goto LABEL_4;
      }

      v19 = *(v50 + 8 * v20);
      ++v21;
      if (v19)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_25F30665C();
    __break(1u);
  }

  return result;
}

uint64_t AnalyticsLogger.logEvent(identifierSuffix:makeFields:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = a3();
  (*(a6 + 8))(a1, a2, v10, a5, a6);
}

unint64_t sub_25F1D438C(uint64_t a1)
{
  v3 = sub_25F1B57B0(MEMORY[0x277D84F90]);
  sub_25F1D3F88(a1, &v3);
  return v3;
}

unint64_t static AnalyticsFieldBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = a1;
  v10 = inited + 32;
  if (a4)
  {
    v11 = a3;
  }

  else
  {
    v11 = 0;
  }

  if (a4)
  {
    v12 = 0;
  }

  else
  {
    v12 = 5;
  }

  *(inited + 40) = a2;
  *(inited + 48) = v11;
  *(inited + 56) = a4;
  *(inited + 64) = v12;

  v13 = sub_25F1B57B0(v9);
  swift_setDeallocating();
  sub_25F1D4B20(v10);
  return v13;
}

unint64_t static AnalyticsFieldBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  if ((a5 & 0x100) != 0)
  {
    v9 = 0;
    v10 = 0;
    v11 = 5;
  }

  else
  {
    v9 = sub_25F305FFC();
    v11 = 0;
  }

  *(inited + 48) = v9;
  *(inited + 56) = v10;
  *(inited + 64) = v11;
  v12 = sub_25F1B57B0(inited);
  swift_setDeallocating();
  sub_25F1D4B20(inited + 32);
  return v12;
}

unint64_t static AnalyticsFieldBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  v6 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  v8 = inited;
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = a1;
  v9 = inited + 32;
  if (v6 == 2)
  {
    v10 = 5;
  }

  else
  {
    v10 = 1;
  }

  *(inited + 40) = a2;
  *(inited + 48) = a3 & 1;
  *(inited + 56) = 0;
  *(inited + 64) = v10;

  v11 = sub_25F1B57B0(v8);
  swift_setDeallocating();
  sub_25F1D4B20(v9);
  return v11;
}

unint64_t static AnalyticsFieldBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = a1;
  v10 = inited + 32;
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  if (a4)
  {
    v12 = 5;
  }

  else
  {
    v12 = 2;
  }

  *(inited + 40) = a2;
  *(inited + 48) = v11;
  *(inited + 56) = 0;
  *(inited + 64) = v12;

  v13 = sub_25F1B57B0(v9);
  swift_setDeallocating();
  sub_25F1D4B20(v10);
  return v13;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  v9 = inited;
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = a1;
  v10 = inited + 32;
  if (a4)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3;
  }

  if (a4)
  {
    v12 = 5;
  }

  else
  {
    v12 = 3;
  }

  *(inited + 40) = a2;
  *(inited + 48) = v11;
  *(inited + 56) = 0;
  *(inited + 64) = v12;

  v13 = sub_25F1B57B0(v9);
  swift_setDeallocating();
  sub_25F1D4B20(v10);
  return v13;
}

uint64_t static AnalyticsFieldBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  result = swift_initStackObject();
  v9 = result;
  *(result + 16) = xmmword_25F3077D0;
  *(result + 32) = a1;
  v10 = result + 32;
  *(result + 40) = a2;
  if (a4)
  {
    *(result + 48) = 0;
    *(result + 56) = 0;
    v11 = 5;
LABEL_5:
    *(result + 64) = v11;

    v12 = sub_25F1B57B0(v9);
    swift_setDeallocating();
    sub_25F1D4B20(v10);
    return v12;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    *(result + 48) = a3;
    *(result + 56) = 0;
    v11 = 2;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

unint64_t static AnalyticsFieldBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;

  sub_25F1D4B88(a3, a4);
  sub_25F1D4B9C(a3, a4);
  *(inited + 32) = a1;
  if (a4 >> 60 == 15)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  if (a4 >> 60 == 15)
  {
    v10 = 0;
  }

  else
  {
    v10 = a4;
  }

  *(inited + 40) = a2;
  *(inited + 48) = v9;
  if (a4 >> 60 == 15)
  {
    v11 = 5;
  }

  else
  {
    v11 = 4;
  }

  *(inited + 56) = v10;
  *(inited + 64) = v11;
  sub_25F1D4B88(a3, a4);
  v12 = sub_25F1B57B0(inited);
  swift_setDeallocating();
  sub_25F1D4B20(inited + 32);
  return v12;
}

unint64_t static AnalyticsFieldBuilder.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;

  sub_25F1B708C(a3, a4, a5);
  sub_25F1D4C04(a3, a4, a5);
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  sub_25F1B708C(a3, a4, a5);

  *(inited + 48) = a3;
  *(inited + 56) = a4;
  *(inited + 64) = a5;
  v11 = sub_25F1B57B0(inited);
  swift_setDeallocating();
  sub_25F1D4B20(inited + 32);
  return v11;
}

unint64_t static AnalyticsFieldBuilder.buildExpression<A>(_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53900, qword_25F309890);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = a1;
  *(inited + 40) = a2;

  *(inited + 48) = sub_25F30685C();
  *(inited + 56) = v5;
  *(inited + 64) = 0;
  v6 = sub_25F1B57B0(inited);
  swift_setDeallocating();
  sub_25F1D4B20(inited + 32);
  return v6;
}

uint64_t sub_25F1D4B20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53908, qword_25F30D670);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F1D4B88(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F1B70AC(a1, a2);
  }

  return a1;
}

uint64_t sub_25F1D4B9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_25F1D4BB0(a1, a2);
  }

  return a1;
}

uint64_t sub_25F1D4BB0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_25F1D4C04(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_25F1D4BB0(result, a2);
  }

  if (!a3)
  {
  }

  return result;
}

uint64_t Ref.hashValue.getter()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  return sub_25F30676C();
}

uint64_t sub_25F1D4D28()
{
  sub_25F30671C();
  Ref.hash(into:)();
  return sub_25F30676C();
}

uint64_t Set.insert<A>(_:)()
{
  swift_unknownObjectRetain();
  v0 = sub_25F30568C();
  swift_unknownObjectRelease();
  return v0 & 1;
}

uint64_t Set.remove<A>(_:)()
{
  swift_unknownObjectRetain();
  sub_25F30569C();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t Set.contains<A>(_:)()
{
  type metadata accessor for Ref();
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  v0 = sub_25F3056BC();
  swift_unknownObjectRelease();
  return v0 & 1;
}

uint64_t Set.forEach<A>(_:)()
{
  type metadata accessor for Ref();
  swift_getWitnessTable();
  sub_25F3056FC();
  swift_getWitnessTable();
  return sub_25F3051BC();
}

uint64_t sub_25F1D4F6C(void *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  return v2(*a1);
}

uint64_t sub_25F1D4FBC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t DepthFirstRecursiveIterator.init(rootElements:dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecursiveIterator = type metadata accessor for DepthFirstRecursiveIterator();
  *(a5 + *(RecursiveIterator + 36)) = 0;
  (*(v10 + 16))(v13, a1, a4);
  sub_25F3050DC();
  result = (*(v10 + 8))(a1, a4);
  v16 = (a5 + *(RecursiveIterator + 40));
  *v16 = a2;
  v16[1] = a3;
  return result;
}

uint64_t DepthFirstRecursiveIterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = sub_25F305C1C();
  v60 = *(v6 - 8);
  v61 = v6;
  v7 = *(v60 + 64);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v55 - v9;
  v64 = *(a1 - 8);
  v11 = *(v64 + 64);
  v12 = MEMORY[0x28223BE20](v8);
  v63 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v59 = &v55 - v15;
  MEMORY[0x28223BE20](v14);
  v62 = &v55 - v16;
  v72 = *(a1 + 24);
  v73 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(AssociatedTypeWitness - 8);
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v65 = &v55 - v20;
  v21 = sub_25F305C1C();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v21);
  v70 = &v55 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v69 = &v55 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v55 - v28;
  v30 = *(a1 + 36);
  v31 = *(v2 + v30);
  v74 = v2;
  v68 = a1;
  v66 = v10;
  v57 = v31;
  v58 = v30;
  if (v31)
  {
    sub_25F305ECC();
  }

  else
  {
    (*(v18 + 56))(a2, 1, 1, AssociatedTypeWitness);
  }

  v32 = *(v22 + 16);
  v71 = a2;
  v32(v29, a2, v21);
  v67 = v18;
  v33 = *(v18 + 48);
  v75 = AssociatedTypeWitness;
  v34 = v33(v29, 1, AssociatedTypeWitness);
  v35 = *(v22 + 8);
  result = v35(v29, v21);
  if (v34 == 1)
  {
    v56 = v32;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v37 = v69;
    sub_25F305CDC();
    v38 = v71;
    v35(v71, v21);
    (*(v22 + 32))(v38, v37, v21);
    v39 = v70;
    v56(v70, v38, v21);
    if (v33(v39, 1, v75) == 1)
    {
      return v35(v39, v21);
    }

    else
    {
      v40 = v67;
      v41 = v65;
      (*(v67 + 32))(v65, v39, v75);
      v42 = v68;
      v43 = v74;
      v44 = v74 + *(v68 + 40);
      v45 = *v44;
      v46 = *(v44 + 8);
      v47 = v66;
      (*v44)(v41);
      v48 = v73;
      v49 = *(v73 - 8);
      if ((*(v49 + 48))(v47, 1, v73) == 1)
      {
        (*(v60 + 8))(v47, v61);
        return (*(v40 + 8))(v41, v75);
      }

      else
      {
        v50 = v59;
        Sequence.depthFirstRecursiveIterator(dataSource:)(v45, v46, v48, v72);
        (*(v49 + 8))(v47, v48);
        v51 = v64;
        v52 = v62;
        (*(v64 + 32))(v62, v50, v42);
        (*(v51 + 16))(v63, v52, v42);
        swift_getWitnessTable();
        v53 = v75;
        v54 = sub_25F305EEC();
        (*(v51 + 8))(v52, v42);
        (*(v40 + 8))(v41, v53);

        *(v43 + v58) = v54;
      }
    }
  }

  return result;
}

uint64_t BreadthFirstRecursiveIterator.init(rootElements:dataSource:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  RecursiveIterator = type metadata accessor for BreadthFirstRecursiveIterator();
  v15 = *(RecursiveIterator + 36);
  swift_getAssociatedTypeWitness();
  *(a5 + v15) = sub_25F3052DC();
  (*(v10 + 16))(v13, a1, a4);
  sub_25F3050DC();
  result = (*(v10 + 8))(a1, a4);
  v17 = (a5 + *(RecursiveIterator + 40));
  *v17 = a2;
  v17[1] = a3;
  return result;
}

uint64_t BreadthFirstRecursiveIterator.next()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v84 = a2;
  v4 = *(a1 + 16);
  v62 = sub_25F305C1C();
  v61 = *(v62 - 8);
  v5 = *(v61 + 64);
  MEMORY[0x28223BE20](v62);
  v63 = &v57 - v6;
  v7 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v68 = *(AssociatedTypeWitness - 8);
  v9 = *(v68 + 64);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v65 = &v57 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v77 = sub_25F305C1C();
  v69 = *(v77 - 8);
  v12 = *(v69 + 64);
  v13 = MEMORY[0x28223BE20](v77);
  v15 = &v57 - v14;
  v66 = *(v11 - 8);
  v16 = *(v66 + 64);
  v17 = MEMORY[0x28223BE20](v13);
  v59 = &v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v57 = &v57 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v58 = &v57 - v22;
  MEMORY[0x28223BE20](v21);
  v76 = &v57 - v23;
  v24 = sub_25F305C1C();
  v25 = *(v24 - 8);
  v26 = v25[8];
  v27 = MEMORY[0x28223BE20](v24);
  v67 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v75 = &v57 - v30;
  MEMORY[0x28223BE20](v29);
  v32 = &v57 - v31;
  v60 = v7;
  v64 = v4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = v84;
  v78 = v2;
  v74 = AssociatedConformanceWitness;
  sub_25F305CDC();
  v81 = v25[2];
  v82 = v25 + 2;
  v81(v32, v34, v24);
  v35 = *(v68 + 48);
  v83 = AssociatedTypeWitness;
  v79 = v35;
  v80 = v68 + 48;
  v36 = v35(v32, 1, AssociatedTypeWitness);
  v85 = v25[1];
  v86 = v25 + 1;
  if (v36 == 1)
  {
    v37 = (v66 + 48);
    v72 = (v66 + 24);
    v73 = (v66 + 32);
    v70 = (v25 + 4);
    v71 = (v66 + 8);
    v69 += 8;
    while (1)
    {
      v85(v32, v24);
      v39 = a1;
      v40 = v78;
      v87 = *(v78 + *(a1 + 36));
      v41 = sub_25F30539C();
      swift_getWitnessTable();
      if (sub_25F30588C())
      {
        break;
      }

      Array.popFirst()(v41, v15);
      if ((*v37)(v15, 1, v11) == 1)
      {
        (*v69)(v15, v77);
        v38 = v84;
      }

      else
      {
        v42 = v40;
        v43 = v76;
        (*v73)(v76, v15, v11);
        (*v72)(v42, v43, v11);
        v44 = v75;
        sub_25F305CDC();
        (*v71)(v43, v11);
        v38 = v84;
        v85(v84, v24);
        (*v70)(v38, v44, v24);
      }

      v81(v32, v38, v24);
      if (v79(v32, 1, v83) != 1)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    v39 = a1;
    v85(v32, v24);
  }

  v45 = v67;
  v81(v67, v84, v24);
  v46 = v83;
  if (v79(v45, 1, v83) == 1)
  {
    return (v85)(v45, v24);
  }

  v48 = v68;
  v49 = v65;
  (*(v68 + 32))(v65, v45, v46);
  v50 = v78 + *(v39 + 40);
  v51 = *(v50 + 8);
  v52 = v63;
  (*v50)(v49);
  if ((*(*(v64 - 8) + 48))(v52, 1, v64) == 1)
  {
    (*(v61 + 8))(v52, v62);
  }

  else
  {
    v53 = v57;
    sub_25F3050DC();
    v54 = v66;
    v55 = v58;
    (*(v66 + 32))(v58, v53, v11);
    (*(v54 + 16))(v59, v55, v11);
    v56 = *(v39 + 36);
    sub_25F30539C();
    sub_25F30533C();
    (*(v54 + 8))(v55, v11);
  }

  return (*(v48 + 8))(v49, v46);
}

uint64_t sub_25F1D6224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v5);

  return a5(v13, a1, a2, a3, a4);
}

unint64_t sub_25F1D6320(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_25F305EDC();
    result = sub_25F305C1C();
    if (v5 <= 0x3F)
    {
      result = sub_25F1D67AC();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25F1D6410(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *((((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_25F1D65B0(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v10 < 0x7FFFFFFF)
      {
        v21 = ((((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v21 = a2 & 0x7FFFFFFF;
          v21[1] = 0;
        }

        else
        {
          *v21 = (a2 - 1);
        }
      }

      else
      {
        v20 = *(v9 + 56);

        v20(a1, a2);
      }

      return;
    }
  }

  if (((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

unint64_t sub_25F1D67AC()
{
  result = qword_27FD53A10[0];
  if (!qword_27FD53A10[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_27FD53A10);
  }

  return result;
}

unint64_t sub_25F1D67FC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  result = swift_getAssociatedTypeWitness();
  if (v4 <= 0x3F)
  {
    result = sub_25F30539C();
    if (v5 <= 0x3F)
    {
      result = sub_25F1D67AC();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_25F1D68B0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v7 = a3 + 16;
  v6 = *(a3 + 16);
  v5 = *(v7 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  if (v10 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v11 >= a2)
  {
    goto LABEL_28;
  }

  v13 = ((((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v14 = v13 & 0xFFFFFFF8;
  if ((v13 & 0xFFFFFFF8) != 0)
  {
    v15 = 2;
  }

  else
  {
    v15 = a2 - v11 + 1;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v18 = *(a1 + v13);
      if (!v18)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v17 || (v18 = *(a1 + v13)) == 0)
  {
LABEL_28:
    if (v10 < 0x7FFFFFFF)
    {
      v22 = *((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v22 >= 0xFFFFFFFF)
      {
        LODWORD(v22) = -1;
      }

      return (v22 + 1);
    }

    else
    {
      v21 = *(v9 + 48);

      return v21(a1);
    }
  }

  v20 = v18 - 1;
  if (v14)
  {
    v20 = 0;
    LODWORD(v14) = *a1;
  }

  return v11 + (v14 | v20) + 1;
}

void sub_25F1D6A48(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(a4 + 16);
  v7 = *(a4 + 24);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 64);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = ((((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v12 >= a3)
  {
    v16 = 0;
    v17 = a2 - v12;
    if (a2 <= v12)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a3 - v12 + 1;
    }

    else
    {
      v14 = 2;
    }

    if (v14 >= 0x10000)
    {
      v15 = 4;
    }

    else
    {
      v15 = 2;
    }

    if (v14 < 0x100)
    {
      v15 = 1;
    }

    if (v14 >= 2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = a2 - v12;
    if (a2 <= v12)
    {
LABEL_17:
      if (v16 > 1)
      {
        if (v16 != 2)
        {
          *(a1 + v13) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_33;
        }

        *(a1 + v13) = 0;
      }

      else if (v16)
      {
        *(a1 + v13) = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return;
      }

LABEL_33:
      if (v10 < 0x7FFFFFFF)
      {
        v21 = ((a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v22 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v22 = (a2 - 1);
        }

        *v21 = v22;
      }

      else
      {
        v20 = *(v9 + 56);

        v20(a1, a2);
      }

      return;
    }
  }

  if (((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 1;
  }

  if (((((v11 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v19 = ~v12 + a2;
    bzero(a1, v13);
    *a1 = v19;
  }

  if (v16 > 1)
  {
    if (v16 == 2)
    {
      *(a1 + v13) = v18;
    }

    else
    {
      *(a1 + v13) = v18;
    }
  }

  else if (v16)
  {
    *(a1 + v13) = v18;
  }
}

uint64_t sub_25F1D6C6C(_OWORD *a1, void (*a2)(uint64_t))
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v4 = *(v2 + 80);
  sub_25F1D6CC0(v6, a2);
  return v8;
}

uint64_t sub_25F1D6CC0(_OWORD *a1, void (*a2)(uint64_t))
{
  type metadata accessor for Future();
  sub_25F1D6D74(a1);
  v5 = v4;

  swift_dynamicCast();
  a2(v5);
}

uint64_t sub_25F1D6D74(_OWORD *a1)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v3 = *(v1 + 80);
  type metadata accessor for PromiseFuture();
  swift_allocObject();
  v4 = sub_25F1D6F1C(v6);
  type metadata accessor for Promise();
  *(swift_allocObject() + 16) = v4;
}

uint64_t static Future.create(dsoHandle:file:line:column:function:_:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void (*a10)(uint64_t))
{
  *&v13 = a2;
  *(&v13 + 1) = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v19 = a9;
  v10 = sub_25F1D6D74(&v13);
  a10(v11);

  return v10;
}

uint64_t sub_25F1D6EE8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_25F1D6F1C(_OWORD *a1)
{
  v3 = *(*v1 + 200);
  v4 = type metadata accessor for FutureState();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v13 - v7;
  v9 = a1[1];
  v13[0] = *a1;
  v13[1] = v9;
  v14[0] = a1[2];
  *(v14 + 9) = *(a1 + 41);
  v10 = type metadata accessor for FutureTermination();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = sub_25F203E0C(v8, v4);
  (*(v5 + 8))(v8, v4);
  v1[13] = v11;
  return sub_25F2E95EC(v13);
}

uint64_t sub_25F1D7070(_OWORD *a1)
{
  v3 = *(*v1 + 200);
  v4 = type metadata accessor for FutureTermination();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = (&v11 - v7);
  v9 = a1[1];
  *v8 = *a1;
  v8[1] = v9;
  v8[2] = a1[2];
  *(v8 + 41) = *(a1 + 41);
  swift_storeEnumTagMultiPayload();
  sub_25F1D7174(v8);
  return (*(v5 + 8))(v8, v4);
}

void sub_25F1D71EC(id a1, char a2)
{
  v4 = a1;
  if (a2)
  {
    a1 = a1;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  *&v9 = v4;
  v11[25] = v5;
  v6 = *(v2 + 104);
  MEMORY[0x28223BE20](a1);

  os_unfair_lock_lock((v6 + 76));
  sub_25F1D97F8((v6 + 16), &v8);
  os_unfair_lock_unlock((v6 + 76));
  v7 = v8;

  if (v7)
  {
    v12[0] = v9;
    v12[1] = v10;
    *v13 = *v11;
    *&v13[10] = *&v11[10];
    sub_25F1C0934(v12);
  }

  sub_25F1D9424(v4, a2 & 1);
}

uint64_t sub_25F1D7358(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v6 = (&v17 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7);
  v10 = (&v17 - v9);
  sub_25F1D9220(a1, v6);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    *v10 = *v6;
  }

  else
  {
    sub_25F1D932C(v6, v10);
  }

  v11 = swift_storeEnumTagMultiPayload();
  v12 = *(v1 + 104);
  MEMORY[0x28223BE20](v11);
  *(&v17 - 2) = v10;
  v13 = *(*v12 + *MEMORY[0x277D841D0] + 16);
  v14 = (*(*v12 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v12 + v14));
  sub_25F1D9290(v12 + v13, &v18);
  os_unfair_lock_unlock((v12 + v14));
  v15 = v18;

  if (v15)
  {
    sub_25F1C0AC8(v10);
  }

  return sub_25F1D92C4(v10);
}

void sub_25F1D75B4(void *a1, uint64_t a2, char a3)
{
  *&v10 = a1;
  *(&v10 + 1) = a2;
  v12[25] = a3 & 1;
  v7 = *(v3 + 104);
  sub_25F1D93AC(a1, a2, a3 & 1);

  os_unfair_lock_lock((v7 + 76));
  sub_25F1D9390((v7 + 16), &v9);
  os_unfair_lock_unlock((v7 + 76));
  v8 = v9;

  if (v8)
  {
    v13[0] = v10;
    v13[1] = v11;
    *v14 = *v12;
    *&v14[10] = *&v12[10];
    sub_25F1C0E30(v13);
  }

  sub_25F1D93BC(a1, a2, a3 & 1);
}

uint64_t sub_25F1D7710()
{
  v1 = *(*v0 + 200);
  v2 = type metadata accessor for FutureTermination();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v9 - v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v7 = sub_25F30678C();
  sub_25F3020F8(v7, v6);
  sub_25F1D7174(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_25F1D782C()
{
  v1 = *(*v0 + 200);
  v2 = type metadata accessor for FutureTermination();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = (&v9 - v5);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v7 = sub_25F30678C();
  sub_25F3020F8(v7, v6);
  sub_25F1D7960(v6);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_25F1D7960(uint64_t a1)
{
  v4 = *v1;
  v15 = v1[13];
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/PromiseFuture.swift";
  *(&v9 + 1) = 125;
  v10 = 2;
  v11 = xmmword_25F309AC0;
  v12 = "tryTransition(to:)";
  v13 = 18;
  v14 = 2;
  v8[2] = *(v4 + 200);
  v8[3] = a1;
  type metadata accessor for FutureState();
  v5 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v9, sub_25F1D91EC, v8, v5, MEMORY[0x277D839B0], WitnessTable);

  if (!v2 && v16 == 1)
  {
    return sub_25F2EA104(a1);
  }

  return result;
}

uint64_t sub_25F1D7AA4@<X0>(uint64_t a1@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v28 = a3;
  v29 = a2;
  v4 = type metadata accessor for FutureTermination();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v27 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v26 - v12;
  v14 = type metadata accessor for FutureState();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - v17;
  (*(v15 + 16))(&v26 - v17, a1, v14);
  if ((*(v5 + 48))(v18, 1, v4) == 1)
  {
    (*(v15 + 8))(a1, v14);
    (*(v5 + 16))(a1, v29, v4);
    result = (*(v5 + 56))(a1, 0, 1, v4);
    *v28 = 1;
  }

  else
  {
    v20 = v28;
    (*(v5 + 32))(v13, v18, v4);
    v21 = FutureTermination.isCompleted.getter(v4);
    v22 = v29;
    if (v21 && FutureTermination.isCompleted.getter(v4))
    {
      v23 = *(v5 + 16);
      v23(v11, v13, v4);
      v24 = v27;
      v23(v27, v22, v4);
      type metadata accessor for PromiseFuture.TransitionError();
      swift_getWitnessTable();
      swift_allocError();
      sub_25F1D7E00(v11, v24, v25);
      swift_willThrow();
      return (*(v5 + 8))(v13, v4);
    }

    else
    {
      result = (*(v5 + 8))(v13, v4);
      *v20 = 0;
    }
  }

  return result;
}

uint64_t sub_25F1D7E00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for FutureTermination();
  v9 = *(*(v6 - 8) + 32);
  (v9)((v6 - 8), a3, a1, v6);
  v7 = a3 + *(type metadata accessor for PromiseFuture.TransitionError() + 28);

  return v9(v7, a2, v6);
}

uint64_t sub_25F1D7EC8(uint64_t a1)
{
  sub_25F305FAC();
  MEMORY[0x25F8D7130](0xD00000000000001ELL, 0x800000025F317900);
  v2 = *(a1 + 16);
  type metadata accessor for FutureTermination();
  swift_getWitnessTable();
  sub_25F30654C();
  MEMORY[0x25F8D7130](544175136, 0xE400000000000000);
  v3 = *(a1 + 28);
  sub_25F30654C();
  MEMORY[0x25F8D7130](46, 0xE100000000000000);
  return 0;
}

uint64_t sub_25F1D7FD0()
{
  v0 = Future.deinit();
  v1 = *(v0 + 104);

  return MEMORY[0x2821FE8D8](v0, 112, 7);
}

uint64_t Promise.track(future:on:)(uint64_t result, uint64_t *a2)
{
  if (*(v2 + 16) != result)
  {
    v3 = result;
    v4 = a2[1];
    v6 = *a2;
    v5 = v6;
    v7 = v4;

    Future.observeCompletion(on:_:)(&v6, sub_25F1D8EEC, v2);

    v6 = v5;
    v7 = v4;

    Future.observeCancelation(on:_:)(&v6, sub_25F1D8F10, v2);

    v6 = v5;
    v7 = v4;

    Future.observeCancelation(on:_:)(&v6, sub_25F1D8F58, v3);
  }

  return result;
}

uint64_t Promise.cancel(callsite:)(_OWORD *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = *(v1 + 16);
  return sub_25F1D7070(v5);
}

uint64_t Promise.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t Promise.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t Promise.observeCancelation(on:_:)(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6 = *a1;
  return Future.observeCancelation(on:_:)(&v6, a2, a3);
}

uint64_t Promise.succeed(with:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v4 = sub_25F30678C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v11 - v7;
  (*(*(v3 - 8) + 16))(&v11 - v7, a1, v3);
  swift_storeEnumTagMultiPayload();
  v9 = v1[2];
  sub_25F1D7710();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Promise.fail(with:)(void *a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v4 = sub_25F30678C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  *(&v12 - v7) = a1;
  swift_storeEnumTagMultiPayload();
  v9 = a1;
  v10 = v1[2];
  sub_25F1D7710();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Promise<A>.trySucceed()()
{
  v2 = *(v0 + 16);
  v9[25] = 0;
  v3 = *(v2 + 104);

  os_unfair_lock_lock((v3 + 76));
  sub_25F1D8FF8((v3 + 16), &v6);
  os_unfair_lock_unlock((v3 + 76));
  if (v1)
  {
  }

  v5 = v6;

  if (v5)
  {
    v10[0] = v7;
    v10[1] = v8;
    v11[0] = *v9;
    *(v11 + 10) = *&v9[10];
    return sub_25F1C0934(v10);
  }

  return result;
}

uint64_t Promise.trySucceed(with:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v4 = sub_25F30678C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = v11 - v7;
  (*(*(v3 - 8) + 16))(v11 - v7, a1, v3);
  swift_storeEnumTagMultiPayload();
  v9 = v1[2];
  sub_25F1D782C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Promise.tryFail(with:)(void *a1)
{
  v3 = *(*v1 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v4 = sub_25F30678C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - v7;
  *(&v12 - v7) = a1;
  swift_storeEnumTagMultiPayload();
  v9 = a1;
  v10 = v1[2];
  sub_25F1D782C();
  return (*(v5 + 8))(v8, v4);
}

uint64_t Promise.fulfill(on:handler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_25F30490C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_25F30494C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v12);
  v16 = v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = swift_allocObject();
  v17[2] = v4;
  v17[3] = a2;
  v17[4] = a3;
  aBlock[4] = sub_25F1D9010;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1D8C38;
  aBlock[3] = &block_descriptor;
  v18 = _Block_copy(aBlock);

  sub_25F30492C();
  v20[1] = MEMORY[0x277D84F90];
  sub_25F1D9034();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
  sub_25F1D908C();
  sub_25F305E5C();
  MEMORY[0x25F8D7C70](0, v16, v11, v18);
  _Block_release(v18);
  (*(v8 + 8))(v11, v7);
  (*(v13 + 8))(v16, v12);
}

uint64_t sub_25F1D8ADC(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 80);
  v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v8 = sub_25F30678C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = &v15[-v11];
  v16 = v6;
  v17 = a2;
  v18 = a3;
  sub_25F1BFDA0(sub_25F1D9810, v7, &v15[-v11]);
  v13 = a1[2];
  sub_25F1D7710();
  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_25F1D8C38(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t Promise.fulfill(handler:)(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 80);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  v7 = sub_25F30678C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v11 = &v14[-v10];
  v15 = v5;
  v16 = a1;
  v17 = a2;
  sub_25F1BFDA0(sub_25F1D90F0, v6, &v14[-v10]);
  v12 = v2[2];
  sub_25F1D7710();
  return (*(v8 + 8))(v11, v7);
}

BOOL sub_25F1D8DD4@<W0>(_OWORD *a1@<X0>, _OWORD *a2@<X1>, _BYTE *a3@<X8>)
{
  v5 = a2[1];
  v7[0] = *a2;
  v7[1] = v5;
  v8[0] = a2[2];
  *(v8 + 10) = *(a2 + 42);
  result = sub_25F2C10D0(a1, v7);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

BOOL sub_25F1D8E28@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_25F2C12EC(a1, a2);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_25F1D8E58(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, void (*a9)(uint64_t))
{
  *&v12 = a1;
  *(&v12 + 1) = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v10 = *(v9 + 80);
  sub_25F1D6CC0(&v12, a9);
  return v19;
}

uint64_t sub_25F1D8EB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *&v9 = a1;
  *(&v9 + 1) = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = a7;
  v15 = a8;
  return sub_25F1D6D74(&v9);
}

uint64_t sub_25F1D8F10(_OWORD *a1)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = *(v1 + 16);
  return sub_25F1D7070(v5);
}

uint64_t sub_25F1D8F58(_OWORD *a1)
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  v5[0] = a1[2];
  *(v5 + 9) = *(a1 + 41);
  return (*(*v1 + 192))(v4);
}

uint64_t sub_25F1D8FB4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *&v11 = a1;
  *(&v11 + 1) = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v9 = *(v8 + 16);
  return sub_25F1D7070(&v11);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_25F1D9034()
{
  result = qword_27FD53A98;
  if (!qword_27FD53A98)
  {
    sub_25F30490C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD53A98);
  }

  return result;
}

unint64_t sub_25F1D908C()
{
  result = qword_27FD53AA8[0];
  if (!qword_27FD53AA8[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD53AA0, &qword_25F30C7D0);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD53AA8);
  }

  return result;
}

uint64_t sub_25F1D9220(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53BB0, &unk_25F309BA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_25F1D9290@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_25F2C12EC(a1, *(v2 + 16));
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_25F1D92C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD53BB8, &qword_25F311350);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F1D932C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CrashReport(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_25F1D93AC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void sub_25F1D93BC(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

BOOL sub_25F1D93CC@<W0>(_OWORD *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[1];
  v8[0] = *v5;
  v8[1] = v6;
  v9[0] = v5[2];
  *(v9 + 10) = *(v5 + 42);
  result = sub_25F2C10D0(a1, v8);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

void sub_25F1D9424(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_25F1D9430(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = type metadata accessor for FutureTermination();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F1D94A0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (v4 <= 0x39)
  {
    v4 = 57;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = *(v3 + 80) & 0xF8 | 7;
  v6 = ((v4 + 1 + v5) & ~v5) + v4 + 1;
  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v10 < 2)
    {
LABEL_25:
      v12 = *(a1 + v4);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_14:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return (v6 | v11) + 254;
}

void sub_25F1D95FC(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  if (v6 <= 0x39)
  {
    v6 = 57;
  }

  v7 = *(v5 + 80) & 0xF8 | 7;
  v8 = ((v6 + 1 + v7) & ~v7) + v6 + 1;
  if (a3 < 0xFE)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 253) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFD)
  {
    v10 = a2 - 254;
    if (v8 >= 4)
    {
      bzero(a1, v8);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v8)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_39:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v6] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_24;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t BiMap.init(_:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v89 = a3;
  v67 = a6;
  v11 = sub_25F305C1C();
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v75 = v66 - v14;
  v72 = *(a3 - 8);
  v15 = *(v72 + 64);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v71 = *(a2 - 8);
  v19 = *(v71 + 64);
  MEMORY[0x28223BE20](v16);
  v88 = v66 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v85 = sub_25F305C1C();
  v21 = *(v85 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v85);
  v86 = v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v84 = v66 - v25;
  swift_getTupleTypeMetadata2();
  v26 = sub_25F3052DC();
  v77 = a4;
  v27 = sub_25F1CCBBC(v26, a2, a3, a4);

  *&v95 = v27;
  swift_getTupleTypeMetadata2();
  v28 = sub_25F3052DC();
  v78 = a5;
  v29 = sub_25F1CCBBC(v28, a3, a2, a5);

  *(&v95 + 1) = v29;
  if ((a1 & 0xC000000000000001) != 0)
  {
    result = sub_25F30625C();
    v31 = 0;
    v32 = 0;
    v33 = 0;
    a1 = result | 0x8000000000000000;
  }

  else
  {
    v34 = -1 << *(a1 + 32);
    v31 = a1 + 64;
    v32 = ~v34;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v33 = v36 & *(a1 + 64);
  }

  v37 = 0;
  v38 = (v71 + 32);
  v39 = (v72 + 32);
  v40 = TupleTypeMetadata2;
  v82 = TupleTypeMetadata2 - 8;
  v66[1] = v32;
  v41 = (v32 + 64) >> 6;
  v70 = v71 + 16;
  v69 = v72 + 16;
  v80 = (v21 + 32);
  v74 = (v72 + 56);
  v76 = a2;
  v73 = a1;
  v83 = v31;
  v68 = (v71 + 32);
  while (1)
  {
    v81 = v33;
    v79 = v37;
    if ((a1 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_25F30626C())
    {
      sub_25F30655C();
      swift_unknownObjectRelease();
      v49 = v89;
      sub_25F30655C();
      swift_unknownObjectRelease();
      v43 = v37;
      v38 = v68;
      v90 = v33;
      v40 = TupleTypeMetadata2;
      goto LABEL_20;
    }

    v51 = 1;
    v65 = v33;
    v45 = v37;
    v90 = v65;
    v47 = v86;
    v40 = TupleTypeMetadata2;
LABEL_21:
    v52 = *(v40 - 8);
    (*(v52 + 56))(v47, v51, 1, v40);
    v53 = v84;
    (*v80)(v84, v47, v85);
    if ((*(v52 + 48))(v53, 1, v40) == 1)
    {
      result = sub_25F1BF034();
      *v67 = v95;
      return result;
    }

    v54 = *(v40 + 48);
    v55 = v88;
    v56 = v53;
    v57 = v53;
    a2 = v76;
    (*v38)(v88, v56, v76);
    v58 = &v57[v54];
    v59 = a1;
    v60 = v18;
    v61 = v75;
    v62 = v89;
    (*v39)(v75, v58, v89);
    (*v74)(v61, 0, 1, v62);
    v91 = a2;
    v92 = v62;
    v93 = v77;
    v94 = v78;
    v63 = type metadata accessor for BiMap();
    v64 = v61;
    v18 = v60;
    a1 = v59;
    v40 = TupleTypeMetadata2;
    result = BiMap.subscript.setter(v64, v55, v63);
    v37 = v45;
    v33 = v90;
    v31 = v83;
  }

  v42 = v33;
  v43 = v37;
  if (v33)
  {
LABEL_17:
    v90 = (v42 - 1) & v42;
    v48 = __clz(__rbit64(v42)) | (v43 << 6);
    (*(v71 + 16))(v88, *(a1 + 48) + *(v71 + 72) * v48, a2);
    v49 = v89;
    (*(v72 + 16))(v18, *(a1 + 56) + *(v72 + 72) * v48, v89);
LABEL_20:
    v50 = *(v40 + 48);
    v47 = v86;
    (*v38)();
    (*v39)(&v47[v50], v18, v49);
    v51 = 0;
    v45 = v43;
    a1 = v73;
    goto LABEL_21;
  }

  if (v41 <= v37 + 1)
  {
    v44 = v37 + 1;
  }

  else
  {
    v44 = v41;
  }

  v45 = v44 - 1;
  v46 = v37;
  v47 = v86;
  while (1)
  {
    v43 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v43 >= v41)
    {
      v90 = 0;
      v51 = 1;
      goto LABEL_21;
    }

    v42 = *(v31 + 8 * v43);
    ++v46;
    if (v42)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
  return result;
}

uint64_t BiMap.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v63 = a1;
  v6 = a3[2];
  v65 = *(v6 - 8);
  v7 = *(v65 + 64);
  MEMORY[0x28223BE20](a1);
  v59 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_25F305C1C();
  v49 = *(v55 - 8);
  v9 = *(v49 + 64);
  MEMORY[0x28223BE20](v55);
  v11 = &v48 - v10;
  v12 = a3[3];
  v62 = sub_25F305C1C();
  v64 = *(v62 - 8);
  v13 = *(v64 + 64);
  v14 = MEMORY[0x28223BE20](v62);
  v58 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v57 = &v48 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v48 - v19;
  v21 = *(v12 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v18);
  v50 = &v48 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v60 = &v48 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v48 - v27;
  v29 = *v3;
  v54 = a3[4];
  sub_25F304B8C();
  v56 = *(v21 + 48);
  v30 = v56(v20, 1, v12);
  v52 = v11;
  v53 = a3;
  v51 = v21;
  v61 = v3;
  if (v30 == 1)
  {
    v31 = v64;
    (*(v64 + 8))(v20, v62);
    v32 = v31;
  }

  else
  {
    (*(v21 + 32))(v28, v20, v12);
    v33 = a3[5];
    sub_25F304B4C();
    sub_25F304A8C();
    (*(v49 + 8))(v11, v55);
    (*(v21 + 8))(v28, v12);
    v32 = v64;
  }

  v34 = v6;
  v49 = *(v65 + 16);
  (v49)(v59, a2, v6);
  v55 = a2;
  v35 = *(v32 + 16);
  v37 = v62;
  v36 = v63;
  v35(v57, v63, v62);
  sub_25F304B4C();
  v38 = v36;
  sub_25F304B9C();
  v39 = v58;
  v35(v58, v38, v37);
  if (v56(v39, 1, v12) == 1)
  {
    (*(v65 + 8))(v55, v6);
    v40 = *(v64 + 8);
    v40(v38, v37);
    return (v40)(v39, v37);
  }

  else
  {
    v42 = v51;
    v43 = v60;
    (*(v51 + 32))(v60, v39, v12);
    (*(v42 + 16))(v50, v43, v12);
    v44 = v52;
    v45 = v55;
    (v49)(v52, v55, v34);
    v46 = v65;
    (*(v65 + 56))(v44, 0, 1, v34);
    v47 = v53[5];
    sub_25F304B4C();
    sub_25F304B9C();
    (*(v46 + 8))(v45, v34);
    (*(v64 + 8))(v63, v37);
    return (*(v42 + 8))(v60, v12);
  }
}

{
  sub_25F1DC648(a1, a2, a3);
  (*(*(a3[2] - 8) + 8))(a2);
  v6 = a3[3];
  v7 = sub_25F305C1C();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

{
  v65 = a1;
  v6 = a3[3];
  v67 = *(v6 - 8);
  v7 = *(v67 + 64);
  MEMORY[0x28223BE20](a1);
  v64 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25F305C1C();
  v50 = *(v9 - 8);
  v10 = *(v50 + 64);
  MEMORY[0x28223BE20](v9);
  v12 = &v50 - v11;
  v13 = a3[2];
  v66 = sub_25F305C1C();
  v60 = *(v66 - 8);
  v14 = *(v60 + 64);
  v15 = MEMORY[0x28223BE20](v66);
  v62 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v61 = &v50 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v50 - v20;
  v22 = *(v13 - 8);
  v23 = *(v22 + 64);
  v24 = MEMORY[0x28223BE20](v19);
  v51 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v63 = &v50 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v50 - v28;
  v30 = *(v3 + 8);
  v59 = v3 + 8;
  v56 = a3[5];
  sub_25F304B8C();
  v57 = *(v22 + 48);
  v58 = v22 + 48;
  v31 = v57(v21, 1, v13);
  v54 = a3;
  v55 = v3;
  v52 = v22;
  v53 = v12;
  if (v31 == 1)
  {
    v32 = v60;
    (*(v60 + 8))(v21, v66);
  }

  else
  {
    (*(v22 + 32))(v29, v21, v13);
    v33 = a3[4];
    sub_25F304B4C();
    sub_25F304A8C();
    (*(v50 + 8))(v12, v9);
    (*(v22 + 8))(v29, v13);
    v32 = v60;
  }

  v34 = v13;
  v50 = *(v67 + 16);
  (v50)(v64, a2, v6);
  v60 = a2;
  v35 = *(v32 + 16);
  v37 = v65;
  v36 = v66;
  v35(v61, v65, v66);
  sub_25F304B4C();
  v38 = v32;
  sub_25F304B9C();
  v39 = v62;
  v35(v62, v37, v36);
  if (v57(v39, 1, v34) == 1)
  {
    (*(v67 + 8))(v60, v6);
    v40 = *(v38 + 8);
    v40(v37, v36);
    return (v40)(v39, v36);
  }

  else
  {
    v42 = v34;
    v43 = v52;
    v44 = v63;
    (*(v52 + 32))(v63, v39, v42);
    (*(v43 + 16))(v51, v44, v42);
    v45 = v53;
    v46 = v60;
    (v50)(v53, v60, v6);
    v47 = v6;
    v48 = v67;
    (*(v67 + 56))(v45, 0, 1, v47);
    v49 = v54[4];
    sub_25F304B4C();
    sub_25F304B9C();
    (*(v48 + 8))(v46, v47);
    (*(v38 + 8))(v37, v36);
    return (*(v43 + 8))(v63, v42);
  }
}

uint64_t BiMap.subscript.getter(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return sub_25F304B8C();
}

{
  v3 = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  return sub_25F304B8C();
}

{
  v3 = *(v2 + 8);
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[5];
  return sub_25F304B8C();
}

uint64_t sub_25F1DA544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 32);
  v7 = *(a3 + a4 - 8);
  v20 = *(a3 + a4 - 24);
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v20 - v12;
  v14 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v16 = &v20 - v15;
  (*(v17 + 16))(&v20 - v15, a3, v6);
  (*(v9 + 16))(v13, a1, v8);
  v21 = v6;
  v22 = v20;
  v23 = v7;
  v18 = type metadata accessor for BiMap();
  return BiMap.subscript.setter(v13, v16, v18);
}

void (*BiMap.subscript.modify(void *a1, uint64_t a2, void *a3))(uint64_t **a1, char a2)
{
  v6 = MEMORY[0x277D84FD8];
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
  *v7 = a3;
  v7[1] = v3;
  v9 = a3[3];
  v10 = sub_25F305C1C();
  v8[2] = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  v13 = v6;
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v11 + 64));
    v14 = malloc(v12);
  }

  v8[5] = v14;
  v15 = a3[2];
  v8[6] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v8[7] = v16;
  v18 = *(v16 + 64);
  if (v13)
  {
    v8[8] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v8[8] = malloc(*(v16 + 64));
    v19 = malloc(v18);
  }

  v8[9] = v19;
  (*(v17 + 16))();
  v20 = *v3;
  v21 = a3[4];
  sub_25F304B8C();
  return sub_25F1DA8DC;
}

{
  v6 = MEMORY[0x277D84FD8];
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
  *v7 = a3;
  v7[1] = v3;
  v9 = a3[2];
  v10 = sub_25F305C1C();
  v8[2] = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  v13 = v6;
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v11 + 64));
    v14 = malloc(v12);
  }

  v8[5] = v14;
  v15 = a3[3];
  v8[6] = v15;
  v16 = *(v15 - 8);
  v17 = v16;
  v8[7] = v16;
  v18 = *(v16 + 64);
  if (v13)
  {
    v8[8] = swift_coroFrameAlloc();
    v19 = swift_coroFrameAlloc();
  }

  else
  {
    v8[8] = malloc(*(v16 + 64));
    v19 = malloc(v18);
  }

  v8[9] = v19;
  (*(v17 + 16))();
  v20 = *(v3 + 8);
  v21 = a3[5];
  sub_25F304B8C();
  return sub_25F1DB700;
}

uint64_t sub_25F1DA908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + a4 - 32);
  v9 = *(a3 + a4 - 16);
  v6 = type metadata accessor for BiMap();
  return sub_25F1DC648(a1, a3, v6);
}

void (*BiMap.subscript.modify(void *a1, uint64_t a2, void *a3))(void ***a1, char a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x48uLL);
  }

  v8 = v7;
  *a1 = v7;
  *v7 = a3;
  v7[1] = v3;
  v9 = a3[3];
  v10 = sub_25F305C1C();
  v8[2] = v10;
  v11 = *(v10 - 8);
  v8[3] = v11;
  v12 = *(v11 + 64);
  if (v6)
  {
    v8[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(*(v11 + 64));
    v13 = malloc(v12);
  }

  v8[5] = v13;
  v14 = a3[2];
  v8[6] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v8[7] = v15;
  if (v6)
  {
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v17 = malloc(*(v15 + 64));
  }

  v8[8] = v17;
  (*(v16 + 16))();
  v18 = *v3;
  v19 = a3[4];
  sub_25F304B8C();
  return sub_25F1DABD0;
}

void sub_25F1DABD0(void ***a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[7];
  v3 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v8 = (*a1)[3];
  v7 = (*a1)[4];
  v9 = (*a1)[1];
  v10 = (*a1)[2];
  v11 = **a1;
  if (a2)
  {
    (v8[2])((*a1)[4], v5, v10);
    sub_25F1DC648(v7, v3, v11);
    (v4[1])(v3, v6);
    v12 = v8[1];
    v12(v7, v10);
    v12(v5, v10);
  }

  else
  {
    sub_25F1DC648((*a1)[5], v3, v11);
    (v4[1])(v3, v6);
    (v8[1])(v5, v10);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_25F1DAD20(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = *(a2 + a3 - 32);
  v9 = *(a2 + a3 - 16);
  v10 = *a1;
  v6 = type metadata accessor for BiMap();
  return a4(a2, v6);
}

uint64_t sub_25F1DAD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a3 + a4;
  v7 = *(a3 + a4 - 32);
  v8 = *(a3 + a4 - 8);
  v9 = sub_25F305C1C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v21 - v13;
  v21 = *(v6 - 24);
  v15 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v12);
  v17 = &v21 - v16;
  (*(v18 + 16))(&v21 - v16, a3);
  (*(v10 + 16))(v14, a1, v9);
  v22 = v7;
  v23 = v21;
  v24 = v8;
  v19 = type metadata accessor for BiMap();
  return BiMap.subscript.setter(v14, v17, v19);
}

void sub_25F1DB718(uint64_t **a1, char a2, void (*a3)(void *, void *, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[8];
  v6 = (*a1)[9];
  if (a2)
  {
    v7 = v4[7];
    v9 = v4[4];
    v8 = v4[5];
    v10 = v4[2];
    v11 = v4[3];
    v12 = *v4;
    v14 = v4[1];
    v15 = v4[6];
    (*(v11 + 16))(v9, v8, v10);
    (*(v7 + 32))(v5, v6, v15);
    a3(v9, v5, v12);
    (*(v11 + 8))(v8, v10);
  }

  else
  {
    v9 = v4[4];
    v8 = v4[5];
    v13 = v4[1];
    a3(v8, v6, *v4);
  }

  free(v6);
  free(v5);
  free(v8);
  free(v9);

  free(v4);
}

uint64_t sub_25F1DB86C@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void)@<X1>, void *a3@<X8>)
{
  *a3 = a2(*v3, a1[2], a1[3], a1[4]);
}

uint64_t BiMap.description.getter(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_25F304A7C();
}

uint64_t BiMap.init(dictionaryLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v12 = sub_25F305C1C();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x28223BE20](v12 - 8);
  v45 = &v38 - v15;
  v41 = *(a2 - 8);
  v16 = *(v41 + 64);
  MEMORY[0x28223BE20](v14);
  v44 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = *(TupleTypeMetadata2 - 8);
  v38 = *(v19 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v49 = &v38 - v20;
  v21 = sub_25F3052DC();
  v47 = a4;
  v22 = sub_25F1CCBBC(v21, a2, a3, a4);

  v51 = v22;
  swift_getTupleTypeMetadata2();
  v23 = sub_25F3052DC();
  v46 = a2;
  v48 = a5;
  v24 = sub_25F1CCBBC(v23, a3, a2, a5);

  v52 = v24;
  if (sub_25F30531C())
  {
    v25 = 0;
    v42 = *(TupleTypeMetadata2 + 48);
    v43 = (v19 + 16);
    v41 += 32;
    v39 = a6;
    v40 = a3 - 8;
    v26 = v46;
    while (1)
    {
      v27 = sub_25F3052FC();
      sub_25F30528C();
      if (v27)
      {
        (*(v19 + 16))(v49, a1 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v25, TupleTypeMetadata2);
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          goto LABEL_10;
        }
      }

      else
      {
        result = sub_25F30601C();
        if (v38 != 8)
        {
          __break(1u);
          return result;
        }

        v50[0] = result;
        (*v43)(v49, v50, TupleTypeMetadata2);
        swift_unknownObjectRelease();
        v28 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
LABEL_10:
          __break(1u);
LABEL_11:

          v22 = v51;
          v24 = v52;
          a6 = v39;
          goto LABEL_13;
        }
      }

      v29 = v19;
      v30 = v44;
      v31 = v49;
      (*v41)(v44, v49, v26);
      v32 = *(a3 - 8);
      v33 = &v31[v42];
      v34 = v45;
      (*(v32 + 32))(v45, v33, a3);
      (*(v32 + 56))(v34, 0, 1, a3);
      v50[0] = v26;
      v50[1] = a3;
      v50[2] = v47;
      v50[3] = v48;
      v35 = type metadata accessor for BiMap();
      v36 = v30;
      v19 = v29;
      BiMap.subscript.setter(v34, v36, v35);
      ++v25;
      if (v28 == sub_25F30531C())
      {
        goto LABEL_11;
      }
    }
  }

LABEL_13:
  *a6 = v22;
  a6[1] = v24;
  return result;
}

uint64_t BiMap.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  swift_getTupleTypeMetadata2();
  v10 = sub_25F3052DC();
  v11 = sub_25F1CCBBC(v10, a1, a2, a3);

  *a5 = v11;
  swift_getTupleTypeMetadata2();
  v12 = sub_25F3052DC();
  v13 = sub_25F1CCBBC(v12, a2, a1, a4);

  a5[1] = v13;
  return result;
}

uint64_t BiMap.count.getter(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  return sub_25F304ADC();
}

void BiMap.isEmpty.getter(void *a1)
{
  v2 = *v1;
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  JUMPOUT(0x25F8D6CD0);
}

uint64_t BiMap.index(after:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *v4;
  v6 = a4[2];
  v7 = a4[3];
  v8 = a4[4];
  return sub_25F304AEC();
}

uint64_t BiMap.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = *v6;
  v8 = a6[2];
  v9 = a6[3];
  v11 = a6[4];
  return sub_25F304BAC();
}

uint64_t BiMap.makeIterator()@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = sub_25F30625C();
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = v5 | 0x8000000000000000;
  }

  else
  {
    v10 = -1;
    v11 = -1 << *(v3 + 32);
    v7 = ~v11;
    v6 = v3 + 64;
    v12 = -v11;
    if (v12 < 64)
    {
      v10 = ~(-1 << v12);
    }

    v8 = v10 & *(v3 + 64);
    v9 = *v1;
  }

  *a1 = v9;
  a1[1] = v6;
  a1[2] = v7;
  a1[3] = 0;
  a1[4] = v8;
}

void (*sub_25F1DBF7C(void *a1, uint64_t a2, void *a3))(void *a1)
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
  v6[4] = BiMap.subscript.modify(v6, a2, a3);
  return sub_25F1DC004;
}

void sub_25F1DC004(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

double sub_25F1DC04C@<D0>(uint64_t a1@<X8>)
{
  BiMap.makeIterator()(v7);
  v4 = *v1;
  v3 = v1[1];

  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v8;
  return result;
}

uint64_t sub_25F1DC0A8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FC7A8](a1, WitnessTable);
}

uint64_t sub_25F1DC0FC()
{
  swift_getWitnessTable();
  v1 = sub_25F2B6F1C();
  v3 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_25F1DC198@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  result = a1();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  return result;
}

void (*sub_25F1DC1CC(uint64_t *a1, uint64_t a2, void *a3))(uint64_t *a1, uint64_t a2)
{
  v6 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x40uLL);
  }

  v8 = v7;
  *a1 = v7;
  v10 = a3[2];
  v9 = a3[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8[4] = TupleTypeMetadata2;
  v12 = *(TupleTypeMetadata2 - 8);
  v8[5] = v12;
  if (v6)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v12 + 64));
  }

  v14 = v13;
  v8[6] = v13;
  v15 = sub_25F1DC3DC(v8, *a2, *(a2 + 8), *(a2 + 16), a3);
  v17 = v16;
  v8[7] = v15;
  (*(*(v10 - 8) + 16))(v14);
  (*(*(v9 - 8) + 16))(v14 + *(TupleTypeMetadata2 + 48), v17, v9);
  return sub_25F1DC364;
}

void sub_25F1DC364(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  (*(*(*a1 + 40) + 8))(*(*a1 + 48), *(*a1 + 32));
  v4 = *(v3 + 48);
  (*(v3 + 56))(v3, a2);
  free(v4);

  free(v3);
}

void (*sub_25F1DC3DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5))(void *a1)
{
  v8 = a5[2];
  v9 = a5[3];
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *a1 = TupleTypeMetadata2;
  v11 = *(TupleTypeMetadata2 - 8);
  a1[1] = v11;
  if (MEMORY[0x277D84FD8])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(*(v11 + 64));
  }

  a1[2] = v12;
  v13 = *v5;
  v14 = *(TupleTypeMetadata2 + 48);
  v16 = a5[4];
  sub_25F304BAC();
  return sub_25F1DC510;
}

void sub_25F1DC510(void *a1)
{
  v1 = a1[2];
  (*(a1[1] + 8))(v1, *a1);

  free(v1);
}

uint64_t sub_25F1DC564@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = BiMap.index(after:)(*a1, *(a1 + 8), *(a1 + 16), a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  return result;
}

uint64_t sub_25F1DC5A4(uint64_t a1, void *a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = BiMap.index(after:)(*a1, v4, v5, a2);
  v8 = v7;
  v10 = v9;
  result = sub_25F1AC3CC(v3, v4, v5);
  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10 & 1;
  return result;
}

uint64_t sub_25F1DC648(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3[3];
  v7 = sub_25F305C1C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v18 - v11;
  v13 = *(*(a3[2] - 8) + 64);
  MEMORY[0x28223BE20](v10);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a2);
  (*(v8 + 16))(v12, a1, v7);
  return BiMap.subscript.setter(v12, v15, a3);
}

uint64_t sub_25F1DC7B8(uint64_t a1)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_25F1DC850()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_witness_table_SHRzSHR_r0_lSD4KeysVyxq__GSlHPyHCTm(void *a1, void (*a2)(uint64_t, void, void, void))
{
  a2(255, *a1, a1[1], a1[2]);

  return swift_getWitnessTable();
}

uint64_t Range.fullyContains(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(a2 + 24);
  if ((sub_25F304CEC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 36);
  return sub_25F304CEC() & 1;
}

uint64_t Dictionary.nextUniqueKeyUsing(_:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v28 = a2;
  v29 = a5;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_25F305C1C();
  v14 = *(v27 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v27);
  v18 = &v24 - v17;
  v25 = a1;
  a1(v16);
  v26 = a4 - 8;
  v19 = (v14 + 8);
  v20 = (v10 + 8);
  for (i = (v10 + 32); ; (*i)(a6, v13, a3))
  {
    sub_25F304B8C();
    v22 = (*(*(a4 - 8) + 48))(v18, 1, a4);
    result = (*v19)(v18, v27);
    if (v22 == 1)
    {
      break;
    }

    v25(result);
    (*v20)(a6, a3);
  }

  return result;
}

uint64_t sub_25F1DCBB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = a2;
  v19 = a6;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v17 - v14;
  result = a4(a3);
  if (!v7)
  {
    (*(v12 + 16))(v15, a3, TupleTypeMetadata2);
    (*(*(a7 - 8) + 32))(v18, &v15[*(TupleTypeMetadata2 + 48)], a7);
    return (*(*(v19 - 8) + 8))(v15);
  }

  return result;
}

uint64_t sub_25F1DCD48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  v6 = *(v3 + 40);
  v7 = *(v3 + 48);
  return sub_25F1DCBB8(a1, a2, a3, *(v3 + 56), *(v3 + 64), *(v3 + 16), *(v3 + 24));
}

uint64_t sub_25F1DCDC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t, void *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v16[8] = a2;
  v16[9] = a3;
  v16[2] = a4;
  v16[3] = a5;
  v16[4] = a6;
  v16[5] = a7;
  v16[6] = a8;
  v16[7] = a1;
  v13 = sub_25F304B4C();
  WitnessTable = swift_getWitnessTable();
  return a10(a9, v16, v13, a6, a5, WitnessTable, a8);
}

uint64_t sub_25F1DCE84@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v24 = a6;
  v25 = a7;
  v23 = a3;
  v26 = a8;
  v13 = sub_25F305C1C();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v17 = &v22 - v16;
  result = a2(a1);
  if (!v8)
  {
    MEMORY[0x28223BE20](result);
    v19 = v24;
    *(&v22 - 6) = v23;
    *(&v22 - 5) = a4;
    *(&v22 - 4) = a5;
    *(&v22 - 3) = v19;
    *(&v22 - 2) = v25;
    *(&v22 - 1) = a1;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    sub_25F20977C(sub_25F1DD21C, (&v22 - 8), MEMORY[0x277D84A98], TupleTypeMetadata2, v21, v26);
    return (*(v14 + 8))(v17, v13);
  }

  return result;
}

uint64_t sub_25F1DD05C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v19 = a2;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v15 = &v18 - v14;
  v16 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(a5 - 8) + 16))(a6, a1, a5);
  (*(v12 + 16))(v15, v19, TupleTypeMetadata2);
  (*(*(a4 - 8) + 32))(a6 + v16, &v15[*(TupleTypeMetadata2 + 48)], a4);
  return (*(*(a3 - 8) + 8))(v15, a3);
}

uint64_t sub_25F1DD21C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[5];
  v4 = v2[6];
  return sub_25F1DD05C(a1, v2[7], v2[2], v2[3], v2[4], a2);
}

uint64_t SynchronousAccessProviding<>.peek(callsite:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v11[0] = a1[2];
  *(v11 + 9) = *(a1 + 41);
  v9[2] = a2;
  v9[3] = a3;
  v6 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v6(v10, sub_25F1DD6AC, v9, AssociatedTypeWitness, a2, a3);
}

uint64_t SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  return (*(a6 + 24))(v8, a2, a3, a5, a4);
}

uint64_t SynchronousAccessProviding<>.syncUpdate(callsite:to:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[1];
  v11[0] = *a1;
  v11[1] = v6;
  v12[0] = a1[2];
  *(v12 + 9) = *(a1 + 41);
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a2;
  v7 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return v7(v11, sub_25F1DD730, v10, AssociatedTypeWitness, a3, a4);
}

uint64_t SynchronousAccessProviding.syncRead<A>(defaultCallsite:_:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a1[1];
  v8[0] = *a1;
  v8[1] = v6;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  return (*(a6 + 16))(v8, a2, a3, a5, a4);
}

uint64_t SynchronousAccessProviding.syncSetValue<A>(at:to:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1;
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  v6 = *(v5 + *MEMORY[0x277D84308] + 8);
  v9[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/SynchronousAccessProviding.swift";
  v9[1] = 138;
  v10 = 2;
  v11 = xmmword_25F309E80;
  v12 = "syncSetValue(at:to:)";
  v13 = 20;
  v14 = 2;
  return (*(a4 + 24))(v9, sub_25F1DD7F4, v8, v6, a3);
}

uint64_t sub_25F1DD544@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(*a2 + *MEMORY[0x277D84308] + 8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](a1);
  v10 = &v14[-v9];
  v11 = swift_readAtKeyPath();
  v12 = *(v7 + 16);
  v12(a4);
  v11(v14, 0);
  (v12)(v10, a3, v6);
  return swift_setAtWritableKeyPath();
}

uint64_t sub_25F1DD6AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = *(v2 + 16);
  v5 = *(v2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a2, a1, AssociatedTypeWitness);
}

uint64_t sub_25F1DD730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 32))(a2, a1, AssociatedTypeWitness);
  return (*(v9 + 16))(a1, v7, AssociatedTypeWitness);
}

uint64_t sub_25F1DD7F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return sub_25F1DD544(a1, *(v2 + 32), *(v2 + 40), a2);
}

uint64_t Assertion.invalidationHandle.getter()
{
  sub_25F1DEEFC();
}

uint64_t Assertion.__allocating_init(_:description:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  Assertion.init(_:description:)(a1, a2, a3);
  return v6;
}

uint64_t sub_25F1DD914(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for InvalidationHandle();
  v8 = swift_allocObject();
  type metadata accessor for SingleFireEvent();
  swift_allocObject();
  *(v8 + 96) = SingleFireEvent.init(description:)(0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53CC0, &unk_25F309FC0);
  v9 = swift_allocObject();
  *(v9 + 28) = 0;
  *(v9 + 16) = MEMORY[0x277D84F90];
  *(v9 + 24) = 0;
  *(v8 + 104) = v9;
  *(v8 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift";
  *(v8 + 24) = 121;
  *(v8 + 32) = 2;
  *(v8 + 40) = xmmword_25F309F50;
  *(v8 + 56) = "Assertion";
  *(v8 + 64) = 9;
  *(v8 + 72) = 2;
  *(v8 + 80) = 0;
  *(v8 + 88) = 0;
  v3[2] = v8;
  v3[3] = a2;
  v3[4] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53D58, &qword_25F30A078);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = a1;
  v3[5] = v10;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v4;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_25F1DF0D0;
  *(v12 + 24) = v11;
  v20 = sub_25F1DF1A4;
  v21 = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_25F1DEA90;
  v19 = &block_descriptor_13;
  v13 = _Block_copy(aBlock);
  swift_retain_n();

  v14 = a1;

  [v14 setInvalidationHandler_];
  _Block_release(v13);

  v15 = *(*(*(v4 + 16) + 96) + 16);
  swift_retain_n();
  os_unfair_lock_lock((v15 + 32));
  sub_25F1DF0E4((v15 + 16), aBlock);
  os_unfair_lock_unlock((v15 + 32));
  v16 = aBlock[0];
  if (aBlock[0])
  {
    sub_25F2FC288(aBlock);

    sub_25F1DF100(v16);
  }

  else
  {
    if (v19)
    {
      sub_25F1DE3C4(v4);
    }
  }

  return v4;
}

uint64_t Assertion.init(_:description:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = *v3;
  type metadata accessor for InvalidationHandle();
  v10 = swift_allocObject();
  type metadata accessor for SingleFireEvent();
  swift_allocObject();
  *(v10 + 96) = SingleFireEvent.init(description:)(0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53CC0, &unk_25F309FC0);
  v11 = swift_allocObject();
  *(v11 + 28) = 0;
  *(v11 + 16) = MEMORY[0x277D84F90];
  *(v11 + 24) = 0;
  *(v10 + 104) = v11;
  *(v10 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift";
  *(v10 + 24) = 121;
  *(v10 + 32) = 2;
  *(v10 + 40) = xmmword_25F309F50;
  *(v10 + 56) = "Assertion";
  *(v10 + 64) = 9;
  *(v10 + 72) = 2;
  *(v10 + 80) = 0;
  *(v10 + 88) = 0;
  v3[2] = v10;
  v3[3] = a2;
  v3[4] = a3;
  v18 = a1;
  v12 = *(v8 + 80);
  v13 = sub_25F305C1C();

  *(v4 + 40) = sub_25F203E0C(&v18, v13);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v4;
  v15 = *(v8 + 88);
  v16 = *(v15 + 8);

  v16(sub_25F1DEF04, v14, v12, v15);

  v18 = v4;

  Invalidatable.onInvalidation(_:)(sub_25F1DEF10, v4, v9, &protocol witness table for Assertion<A>);

  swift_unknownObjectRelease();
  return v4;
}

void sub_25F1DDE60(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_281561A38 != -1)
  {
    swift_once();
  }

  v8 = sub_25F30479C();
  __swift_project_value_buffer(v8, qword_281561A40);

  v9 = a1;
  v10 = sub_25F30477C();
  v11 = sub_25F3059EC();

  if (os_log_type_enabled(v10, v11))
  {
    v20 = a4;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *&v21 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_25F1C53AC(a2, a3, &v21);
    *(v12 + 12) = 2080;
    v14 = 0xE000000000000000;
    if (a1)
    {
      *&v25 = 0;
      *(&v25 + 1) = 0xE000000000000000;
      MEMORY[0x25F8D7130](8250, 0xE200000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
      sub_25F30619C();
      v14 = *(&v25 + 1);
      v15 = v25;
    }

    else
    {
      v15 = 0;
    }

    v16 = sub_25F1C53AC(v15, v14, &v21);

    *(v12 + 14) = v16;
    _os_log_impl(&dword_25F1A2000, v10, v11, "Assertion %{public}s invalidated%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v13, -1, -1);
    MEMORY[0x25F8D9510](v12, -1, -1);

    a4 = v20;
  }

  else
  {
  }

  v17 = *(a4 + 16);
  v21 = *(v17 + 80);
  memmove(v22, (v17 + 16), 0x39uLL);
  *&v23 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift";
  *(&v23 + 1) = 121;
  LOBYTE(v24[0]) = 2;
  *(v24 + 8) = xmmword_25F309F60;
  *(&v24[1] + 1) = "init(_:description:)";
  *&v24[2] = 20;
  BYTE8(v24[2]) = 2;
  v18 = sub_25F1DF180(&v21);
  v31 = v24[0];
  v32[0] = v24[1];
  *(v32 + 9) = *(&v24[1] + 9);
  v27 = v22[1];
  v28 = v22[2];
  v29 = v22[3];
  v30 = v23;
  v25 = v21;
  v26 = v22[0];
  v19 = *(v17 + 96);
  MEMORY[0x28223BE20](v18);
  sub_25F2FBF68(sub_25F1DF198);
}

uint64_t sub_25F1DE158(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4)
{
  v7 = *a4;
  if (qword_281561A38 != -1)
  {
    swift_once();
  }

  v8 = sub_25F30479C();
  __swift_project_value_buffer(v8, qword_281561A40);

  v9 = a1;
  v10 = sub_25F30477C();
  v11 = sub_25F3059EC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v16 = v13;
    *v12 = 136446466;
    *(v12 + 4) = sub_25F1C53AC(a2, a3, &v16);
    *(v12 + 12) = 2080;
    if (a1)
    {
      MEMORY[0x25F8D7130](8250, 0xE200000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
      sub_25F30619C();
    }

    v14 = sub_25F1C53AC(0, 0xE000000000000000, &v16);

    *(v12 + 14) = v14;
    _os_log_impl(&dword_25F1A2000, v10, v11, "Assertion %{public}s invalidated%s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x25F8D9510](v13, -1, -1);
    MEMORY[0x25F8D9510](v12, -1, -1);
  }

  return sub_25F2C3EFC("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift", 121, 2, 34, 28, "init(_:description:)", 20, 2, v7, &protocol witness table for Assertion<A>);
}

void sub_25F1DE3C4(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3[1] = 0;
  os_unfair_lock_lock((v1 + 24));
  sub_25F1DF144((v1 + 16), v3);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v3[0];
  [v3[0] invalidate];
}

uint64_t sub_25F1DE43C(uint64_t *a1)
{
  v1 = *a1;
  v2 = *a1;
  v16 = a1[5];
  *&v10 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/Assertion.swift";
  *(&v10 + 1) = 121;
  v11 = 2;
  v12 = xmmword_25F309F70;
  v13 = "init(_:description:)";
  v14 = 20;
  v15 = 2;
  v9 = 0;
  v3 = *(v1 + 80);
  sub_25F305C1C();
  v4 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  result = SynchronousAccessProviding<>.syncUpdate(callsite:to:)(&v10, &v9, v4, WitnessTable);
  if (v17)
  {
    v7 = *(v2 + 88);
    v8 = *(v7 + 16);
    swift_unknownObjectRetain();
    v8(v3, v7);
    return swift_unknownObjectRelease_n();
  }

  return result;
}