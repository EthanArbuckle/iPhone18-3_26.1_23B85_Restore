void **sub_29B0CD0D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0D5364();
  CxxSequence.makeIterator()(a1, v2, a2);
  return sub_29A3C73E0(v6);
}

void **sub_29B0CD1B8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0D5C58();
  CxxSequence.makeIterator()(a1, v2, a2);
  return sub_29A419524(v6);
}

uint64_t *sub_29B0CD29C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0D6548();
  CxxSequence.makeIterator()(a1, v2, a2);
  return sub_29B0CC7C0(v6);
}

void **sub_29B0CD380@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0D6E00();
  CxxSequence.makeIterator()(a1, v2, a2);
  return sub_29B0CC65C(v6);
}

void **sub_29B0CD464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0D76B8();
  CxxSequence.makeIterator()(a1, v2, a2);
  return sub_29B0CC4F8(v6);
}

uint64_t *sub_29B0CD548@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0D7F70();
  CxxSequence.makeIterator()(a1, v2, a2);
  return sub_29B0CC250(v6);
}

void **sub_29B0CD62C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0D8828();
  CxxSequence.makeIterator()(a1, v2, a2);
  return sub_29B0CC0E0(v6);
}

void **sub_29B0CD710@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0D90E0();
  CxxSequence.makeIterator()(a1, v2, a2);
  return sub_29B0CBF7C(v6);
}

void **sub_29B0CD7F4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0D9998();
  CxxSequence.makeIterator()(a1, v2, a2);
  return sub_29B0CBCBC(v6);
}

uint64_t sub_29B0CD898@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0DB8A8(v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0CD944@<X0>(uint64_t *a1@<X8>)
{
  sub_29B0DB9EC();
  result = CxxRandomAccessCollection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_29B0CD980@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0DB9EC();
  result = CxxRandomAccessCollection.endIndex.getter(a1, v2);
  *a2 = result;
  return result;
}

void (*sub_29B0CD9BC(std::string **a1, uint64_t *a2))(void **a1, char a2)
{
  v4 = sub_29B0BAF2C(0x28uLL);
  *a1 = v4;
  v4[1].__r_.__value_.__l.__size_ = sub_29B0CDA38(v4, *a2);
  return sub_29B0BA34C;
}

void (*sub_29B0CDA38(std::string *a1, uint64_t a2))(std::string *a1)
{
  v3 = sub_29B0DB938(v2, a2);
  std::string::basic_string(a1, v3);
  return sub_29B0CDAB0;
}

uint64_t sub_29B0CDB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v26 = a1;
  v48 = a2;
  v27 = "Fatal error";
  v28 = "Range requires lowerBound <= upperBound";
  v29 = "Swift/Range.swift";
  v54 = a2;
  v49 = *(a3 + 8);
  v30 = MEMORY[0x29EDC9C20];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v40 = 0;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v32 = (*(*(TupleTypeMetadata2 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v4 = MEMORY[0x2A1C7C4A8](v49, v48, AssociatedTypeWitness);
  v33 = v20 - v32;
  v34 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x2A1C7C4A8](v4, v6, v7);
  v35 = v20 - v34;
  v36 = *(v9 - 8);
  v37 = v9 - 8;
  v38 = (v36[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x2A1C7C4A8](v8, v10, v9);
  v51 = v20 - v38;
  v39 = (v12 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v11, v13, v14);
  v50 = v20 - v39;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v41 = type metadata accessor for Range();
  v43 = *(*(v41 - 8) + 64);
  v42 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  v16 = MEMORY[0x2A1C7C4A8](v48, v49, v15);
  v44 = v20 - v42;
  v45 = (v43 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v16, v17, v18);
  v46 = v20 - v45;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if ((dispatch thunk of static Comparable.<= infix(_:_:)() & 1) == 0)
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  v23 = v36[4];
  v22 = v36 + 4;
  v23(v35, v50, AssociatedTypeWitness);
  v23(v35 + *(TupleTypeMetadata2 + 48), v51, AssociatedTypeWitness);
  sub_29B0DAA94(v35, v33, AssociatedTypeWitness, TupleTypeMetadata2);
  v20[0] = v33 + *(TupleTypeMetadata2 + 48);
  (v23)(v46);
  v21 = v36[1];
  v20[1] = v36 + 1;
  v21(v20[0], AssociatedTypeWitness);
  sub_29B0DAB30(v35, v33, AssociatedTypeWitness, TupleTypeMetadata2);
  v23(v46 + *(v41 + 36), (v33 + *(TupleTypeMetadata2 + 48)), AssociatedTypeWitness);
  v21(v33, AssociatedTypeWitness);
  dispatch thunk of Collection._failEarlyRangeCheck(_:bounds:)();
  sub_29B0DA948(v46, AssociatedTypeWitness, v41);
  v24 = type metadata accessor for Slice();
  (*(*(v48 - 8) + 16))(v25 + *(v24 + 40), v47);
  sub_29B0DA724(v26, v44, AssociatedTypeWitness, v41);
  v23(v25, v44, AssociatedTypeWitness);
  return (v23)(v25 + *(v24 + 36), &v44[*(v41 + 36)], AssociatedTypeWitness);
}

uint64_t sub_29B0CE318@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0DB240(v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0CE3A8@<X0>(uint64_t *a1@<X8>)
{
  sub_29B0DB828();
  result = CxxRandomAccessCollection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_29B0CE3E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0DB828();
  result = CxxRandomAccessCollection.endIndex.getter(a1, v2);
  *a2 = result;
  return result;
}

void sub_29B0CE420(pxrInternal__aapl__pxrReserved__::TfToken **a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  sub_29B0CE49C(v3, *a2);
}

uint64_t sub_29B0CE78C@<X0>(uint64_t *a1@<X8>)
{
  sub_29B0DB720();
  result = CxxRandomAccessCollection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_29B0CE7C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0DB720();
  result = CxxRandomAccessCollection.endIndex.getter(a1, v2);
  *a2 = result;
  return result;
}

void (*sub_29B0CE804(void *a1, uint64_t *a2))(void **a1, char a2)
{
  v4 = sub_29B0BAF2C(0x28uLL);
  *a1 = v4;
  v4[4] = sub_29B0CE880(v4, *a2);
  return sub_29B0BA34C;
}

_DWORD *(*sub_29B0CE880(_DWORD *a1, uint64_t a2))(_DWORD *a1)
{
  v3 = sub_29B0DB30C(v2, a2);
  sub_29B0B975C(a1, v3);
  return sub_29B0CE8F0;
}

uint64_t sub_29B0CEB10@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0DB058(v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0CEBA0@<X0>(uint64_t *a1@<X8>)
{
  sub_29B0DB618();
  result = CxxRandomAccessCollection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_29B0CEBDC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0DB618();
  result = CxxRandomAccessCollection.endIndex.getter(a1, v2);
  *a2 = result;
  return result;
}

void (*sub_29B0CEC18(void *a1, uint64_t *a2))(void **a1, char a2)
{
  v6 = sub_29B0BAF2C(0x38uLL);
  *a1 = v6;
  v6[6] = sub_29B0CED1C(v6, *a2);
  v6[4] = v2;
  v6[5] = v3;
  return sub_29B0CECA0;
}

void sub_29B0CECA0(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[6](v2, 1);
  }

  else
  {
    v2[6](v2, 0);
  }

  free(v2);
}

uint64_t sub_29B0CEFC8@<X0>(uint64_t *a1@<X8>)
{
  sub_29B0DB510();
  result = CxxRandomAccessCollection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_29B0CF004@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0DB510();
  result = CxxRandomAccessCollection.endIndex.getter(a1, v2);
  *a2 = result;
  return result;
}

void sub_29B0CF040(void *a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  sub_29B0CF0BC(v3, *a2);
}

uint64_t sub_29B0CF3B4@<X0>(uint64_t *a1@<X8>)
{
  sub_29B0DB3B8();
  result = CxxRandomAccessCollection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_29B0CF3F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0DB3B8();
  result = CxxRandomAccessCollection.endIndex.getter(a1, v2);
  *a2 = result;
  return result;
}

void sub_29B0CF42C(void *a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  sub_29B0CF0BC(v3, *a2);
}

uint64_t sub_29B0CF6E8@<X0>(uint64_t *a1@<X8>)
{
  sub_29B0DB1A0();
  result = CxxRandomAccessCollection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_29B0CF724@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0DB1A0();
  result = CxxRandomAccessCollection.endIndex.getter(a1, v2);
  *a2 = result;
  return result;
}

void (*sub_29B0CF760(void *a1, uint64_t *a2))(void **a1, char a2)
{
  v12 = sub_29B0BAF2C(0x38uLL);
  *a1 = v12;
  v2 = sub_29B0CF87C(v12, *a2);
  v4 = v3;
  v6 = v5;
  v12[4] = v2;
  v8 = *v7;
  v9 = v7[1];
  *(v12 + 10) = v4;
  *(v12 + 11) = v6;
  *(v12 + 12) = v8;
  *(v12 + 13) = v9;
  return sub_29B0CF800;
}

void sub_29B0CF800(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

void (*sub_29B0CF87C(_DWORD *a1, uint64_t a2))()
{
  v3 = sub_29B0DB0F4(v2, a2);
  v4 = *(v3 + 12);
  *a1 = *(v3 + 8);
  a1[1] = v4;
  return sub_29B0BA188;
}

uint64_t sub_29B0CFAD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0DAD68(v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0CFB68@<X0>(uint64_t *a1@<X8>)
{
  sub_29B0DAFD8();
  result = CxxRandomAccessCollection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_29B0CFBA4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0DAFD8();
  result = CxxRandomAccessCollection.endIndex.getter(a1, v2);
  *a2 = result;
  return result;
}

void (*sub_29B0CFBE0(void *a1, uint64_t *a2))(void **a1, char a2)
{
  v4 = sub_29B0BAF2C(0x28uLL);
  *a1 = v4;
  v4[4] = sub_29B0CFC5C(v4, *a2);
  return sub_29B0BA34C;
}

uint64_t (*sub_29B0CFC5C(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  v3 = sub_29B0DAE04(v2, a2);
  sub_29A58CB08(a1, v3);
  return sub_29B0CFCCC;
}

uint64_t sub_29B0CFF4C@<X0>(uint64_t *a1@<X8>)
{
  sub_29B0DAEB0();
  result = CxxRandomAccessCollection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_29B0CFF88@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0DAEB0();
  result = CxxRandomAccessCollection.endIndex.getter(a1, v2);
  *a2 = result;
  return result;
}

void sub_29B0CFFC4(void *a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  sub_29B0D0040(v3, *a2);
}

uint64_t sub_29B0D02D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0DA64C(v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0D0360@<X0>(uint64_t *a1@<X8>)
{
  sub_29B0DAC80();
  result = CxxRandomAccessCollection.startIndex.getter();
  *a1 = result;
  return result;
}

uint64_t sub_29B0D039C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = sub_29B0DAC80();
  result = CxxRandomAccessCollection.endIndex.getter(a1, v2);
  *a2 = result;
  return result;
}

void sub_29B0D03D8(void *a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  sub_29B0D0454(v3, *a2);
}

void sub_29B0D0454(void *a1, uint64_t a2)
{
  v5 = sub_29B0BAF2C(0x88uLL);
  *a1 = v5;
  sub_29B0DABCC(v4, a2);
  sub_29B0CB86C(v5);
}

void sub_29B0D04FC(uint64_t *a1)
{
  v1 = *a1;
  sub_29B0C5104(*a1);
  free(v1);
}

uint64_t sub_29B0D0728@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_29B0D075C(*a1, *a2);
  *a3 = result;
  return result;
}

void sub_29B0D07F8(std::string *a1, uint64_t a2)
{
  v4 = sub_29B0DB938(v2, a2);
  std::string::basic_string(&v5, a1);
  std::string::~string(v4);
  sub_29B0C0434(v4, &v5);
  std::string::~string(&v5);
  std::string::~string(a1);
}

void (*sub_29B0D0860(std::string ***a1, uint64_t *a2))(void **a1, char a2)
{
  v4 = sub_29B0BAF2C(0x28uLL);
  *a1 = v4;
  v4[4] = sub_29B0D08DC(v4, *a2);
  return sub_29B0BA0D0;
}

void (*sub_29B0D08DC(std::string **a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v7 = sub_29B0BAF2C(0x70uLL);
  *a1 = v7;
  v7[4].__r_.__value_.__l.__size_ = v6;
  v7[4].__r_.__value_.__r.__words[0] = a2;
  v2 = sub_29B0DB938(v6, a2);
  std::string::basic_string(v7, v2);
  return sub_29B0D0994;
}

void sub_29B0D0994(uint64_t *a1, char a2)
{
  v4 = *a1;
  if (a2)
  {
    std::string::basic_string((v4 + 24), v4);
    v2 = sub_29B0DB938(*(v4 + 104), *(v4 + 96));
    std::string::basic_string((v4 + 48), (v4 + 24));
    std::string::~string(v2);
    sub_29B0C0434(v2, v4 + 48);
    std::string::~string((v4 + 48));
    std::string::~string((v4 + 24));
  }

  else
  {
    v3 = sub_29B0DB938(*(v4 + 104), *(v4 + 96));
    std::string::basic_string((v4 + 72), v4);
    std::string::~string(v3);
    sub_29B0C0434(v3, v4 + 72);
    std::string::~string((v4 + 72));
  }

  std::string::~string(v4);
  free(v4);
}

uint64_t sub_29B0D0AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Slice();
  swift_getWitnessTable();
  _writeBackMutableSlice<A, B>(_:bounds:slice:)();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = type metadata accessor for Range();
  sub_29B0DA948(a2, AssociatedTypeWitness, v3);
  return sub_29B0DA9CC(a1, AssociatedTypeWitness, a3, v8);
}

void (*sub_29B0D0BD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

void (*sub_29B0D0C60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t **a1, char a2)
{
  v10 = sub_29B0BAF2C(0x50uLL);
  *a1 = v10;
  v10[2] = v4;
  v10[1] = a4;
  *v10 = a3;
  v5 = type metadata accessor for Slice();
  v10[3] = v5;
  v8 = *(*(v5 - 8) + 64);
  v10[4] = sub_29B0BAF2C(v8);
  v17 = sub_29B0BAF2C(v8);
  v10[5] = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10[6] = AssociatedTypeWitness;
  swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for Range();
  v10[7] = v12;
  v9 = *(*(v12 - 8) + 64);
  v10[8] = sub_29B0BAF2C(v9);
  v6 = sub_29B0BAF2C(v9);
  v10[9] = v6;
  sub_29B0DA724(a2, v6, AssociatedTypeWitness, v12);
  sub_29B0CDB30(a2, a3, a4, v17);
  return sub_29B0D0E48;
}

void sub_29B0D0E48(uint64_t **a1, char a2)
{
  v18 = *a1;
  if (a2)
  {
    v14 = v18[9];
    v15 = v18[8];
    v10 = v18[7];
    v11 = v18[6];
    v16 = v18[5];
    v17 = v18[4];
    v13 = v18[3];
    v12 = *v18;
    sub_29B0DA7C0(v16, v17, v11, *v18, v13);
    sub_29B0DA8AC(v14, v15, v11, v10);
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    sub_29B0DA948(v15, v11, v10);
    sub_29B0DA9CC(v17, v11, v12, v13);
    sub_29B0DA9CC(v16, v11, v12, v13);
    free(v14);
    free(v15);
    free(v16);
    free(v17);
  }

  else
  {
    v6 = v18[9];
    v7 = v18[8];
    v2 = v18[7];
    v3 = v18[6];
    v8 = v18[5];
    v9 = v18[4];
    v5 = v18[3];
    v4 = *v18;
    swift_getWitnessTable();
    _writeBackMutableSlice<A, B>(_:bounds:slice:)();
    sub_29B0DA948(v6, v3, v2);
    sub_29B0DA9CC(v8, v3, v4, v5);
    free(v6);
    free(v7);
    free(v8);
    free(v9);
  }

  free(v18);
}

uint64_t sub_29B0D1220@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_29B0D1254(*a1, *a2);
  *a3 = result;
  return result;
}

void sub_29B0D1350(pxrInternal__aapl__pxrReserved__::TfToken ***a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  sub_29B0D13CC(v3, *a2);
}

void sub_29B0D13CC(pxrInternal__aapl__pxrReserved__::TfToken **a1, uint64_t a2)
{
  v6 = sub_29B0BAF2C(0x30uLL);
  *a1 = v6;
  *(v6 + 5) = v4;
  *(v6 + 4) = a2;
  v2 = sub_29B0DB30C(v4, a2);
  sub_29B0C1C90(v6, v2);
}

void sub_29B0D147C(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    sub_29B0DB30C(*(v2 + 40), *(v2 + 32));
    sub_29B0C1C90((v2 + 24), v2);
  }

  sub_29B0C1C90((v2 + 8), v2);
}

void (*sub_29B0D1570(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

uint64_t sub_29B0D1678@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_29B0D16AC(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_29B0D16AC(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  return sub_29B0DB2C0(&v4, &v3);
}

_DWORD *sub_29B0D1700(_DWORD *a1, uint64_t a2)
{
  v4 = sub_29B0DB30C(v2, a2);
  sub_29B0B975C(&v6, a1);
  sub_29A1DCEA8(v4);
  sub_29B0B82B8(v4, &v6);
  sub_29A1DCEA8(&v6);
  return sub_29A1DCEA8(a1);
}

void (*sub_29B0D1760(void *a1, uint64_t *a2))(void **a1, char a2)
{
  v4 = sub_29B0BAF2C(0x28uLL);
  *a1 = v4;
  v4[4] = sub_29B0D17DC(v4, *a2);
  return sub_29B0BA0D0;
}

void (*sub_29B0D17DC(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v6 = sub_29B0BAF2C(0x30uLL);
  *a1 = v6;
  v6[1] = v5;
  *v6 = a2;
  v2 = sub_29B0DB30C(v5, a2);
  sub_29B0B975C(v6 + 4, v2);
  return sub_29B0D1894;
}

void sub_29B0D1894(uint64_t *a1, char a2)
{
  v6 = *a1;
  if (a2)
  {
    v2 = *(v6 + 8);
    v3 = *v6;
    sub_29B0B975C((v6 + 24), (v6 + 16));
    v4 = sub_29B0DB30C(v2, v3);
    sub_29B0B975C((v6 + 32), (v6 + 24));
    sub_29A1DCEA8(v4);
    sub_29B0B82B8(v4, (v6 + 32));
    sub_29A1DCEA8((v6 + 32));
    sub_29A1DCEA8((v6 + 24));
  }

  else
  {
    v5 = sub_29B0DB30C(*(v6 + 8), *v6);
    sub_29B0B975C((v6 + 40), (v6 + 16));
    sub_29A1DCEA8(v5);
    sub_29B0B82B8(v5, (v6 + 40));
    sub_29A1DCEA8((v6 + 40));
  }

  sub_29A1DCEA8((v6 + 16));
  free(v6);
}

void (*sub_29B0D1998(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

uint64_t sub_29B0D1AA0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_29B0D1AD4(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_29B0D1AD4(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  return sub_29B0DB0A8(&v4, &v3);
}

double sub_29B0D1B80(uint64_t a1, double a2, double a3)
{
  v4 = sub_29B0DB0F4(v3, a1);
  result = a2;
  *v4 = a2;
  v4[1] = a3;
  return result;
}

void (*sub_29B0D1BC0(void *a1, uint64_t *a2))(void **a1, char a2)
{
  v4 = sub_29B0BAF2C(0x28uLL);
  *a1 = v4;
  v4[4] = sub_29B0D1C3C(v4, *a2);
  return sub_29B0BA0D0;
}

double (*sub_29B0D1C3C(void *a1, uint64_t a2))(double *a1, char a2)
{
  a1[3] = v2;
  a1[2] = a2;
  v3 = sub_29B0DB0F4(v2, a2);
  v4 = v3[1];
  *a1 = *v3;
  a1[1] = v4;
  return sub_29B0D1CC0;
}

double sub_29B0D1CC0(double *a1, char a2)
{
  if (a2)
  {
    v5 = *a1;
    v6 = a1[1];
    v4 = sub_29B0DB0F4(*(a1 + 3), *(a1 + 2));
    result = v6;
    *v4 = v5;
    v4[1] = v6;
  }

  else
  {
    v7 = *a1;
    v8 = a1[1];
    v2 = sub_29B0DB0F4(*(a1 + 3), *(a1 + 2));
    result = v8;
    *v2 = v7;
    v2[1] = v8;
  }

  return result;
}

void (*sub_29B0D1D50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

void sub_29B0D1EE0(void *a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  sub_29B0D1F5C(v3, *a2);
}

void sub_29B0D1F5C(void *a1, uint64_t a2)
{
  v5 = sub_29B0BAF2C(0x30uLL);
  *a1 = v5;
  v5[5] = v4;
  v5[4] = a2;
  sub_29B0DB30C(v4, a2);
  sub_29B0CC3E4();
}

void sub_29B0D2014(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    sub_29B0DB30C(*(*a1 + 40), *(*a1 + 32));
    sub_29B0CC3E4();
  }

  sub_29B0CC3E4();
}

void (*sub_29B0D212C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

void sub_29B0D2234(void *a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  sub_29B0D22B0(v3, *a2);
}

void sub_29B0D22B0(void *a1, uint64_t a2)
{
  v5 = sub_29B0BAF2C(0x30uLL);
  *a1 = v5;
  v5[5] = v4;
  v5[4] = a2;
  sub_29B0DB30C(v4, a2);
  sub_29B0CC3E4();
}

void (*sub_29B0D2368(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

float sub_29B0D249C(uint64_t a1, float a2, float a3, float a4, float a5)
{
  v6 = sub_29B0DB0F4(v5, a1);
  result = a2;
  *v6 = a2;
  v6[1] = a3;
  v6[2] = a4;
  v6[3] = a5;
  return result;
}

void (*sub_29B0D24F4(void *a1, uint64_t *a2))(void **a1, char a2)
{
  v4 = sub_29B0BAF2C(0x28uLL);
  *a1 = v4;
  v4[4] = sub_29B0D2570(v4, *a2);
  return sub_29B0BA0D0;
}

float (*sub_29B0D2570(uint64_t a1, uint64_t a2))(uint64_t a1, char a2)
{
  *(a1 + 8) = v2;
  *a1 = a2;
  v3 = sub_29B0DB0F4(v2, a2);
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *(a1 + 16) = *v3;
  *(a1 + 20) = v4;
  *(a1 + 24) = v5;
  *(a1 + 28) = v6;
  return sub_29B0D2608;
}

float sub_29B0D2608(uint64_t a1, char a2)
{
  if (a2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 20);
    v7 = *(a1 + 24);
    v8 = *(a1 + 28);
    v4 = sub_29B0DB0F4(*(a1 + 8), *a1);
    result = v8;
    *v4 = v5;
    *(v4 + 1) = v6;
    *(v4 + 2) = v7;
    v4[3] = v8;
  }

  else
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 20);
    v11 = *(a1 + 24);
    v12 = *(a1 + 28);
    v2 = sub_29B0DB0F4(*(a1 + 8), *a1);
    result = v12;
    *v2 = v9;
    *(v2 + 1) = v10;
    *(v2 + 2) = v11;
    v2[3] = v12;
  }

  return result;
}

void (*sub_29B0D26D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

uint64_t sub_29B0D27E0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_29B0D2814(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_29B0D2814(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  return sub_29B0DADB8(&v4, &v3);
}

void sub_29B0D28B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_29B0DAE04(v2, a2);
  sub_29A58CB08(v5, a1);
  sub_29A5888DC(v3);
  sub_29B0C3BDC(v3, v5);
}

void (*sub_29B0D2918(void *a1, uint64_t *a2))(void **a1, char a2)
{
  v4 = sub_29B0BAF2C(0x28uLL);
  *a1 = v4;
  v4[4] = sub_29B0D2994(v4, *a2);
  return sub_29B0BA0D0;
}

void (*sub_29B0D2994(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  v7 = sub_29B0BAF2C(0x90uLL);
  *a1 = v7;
  v7[17] = v5;
  v7[16] = a2;
  v2 = sub_29B0DAE04(v5, a2);
  sub_29A58CB08(v7, v2);
  return sub_29B0D2A44;
}

void sub_29B0D2A44(uint64_t *a1, char a2)
{
  v6 = *a1;
  if ((a2 & 1) == 0)
  {
    v5 = sub_29B0DAE04(*(v6 + 136), *(v6 + 128));
    sub_29A58CB08(v6 + 96, v6);
    sub_29A5888DC(v5);
    sub_29B0C3BDC(v5, (v6 + 96));
  }

  v2 = *(v6 + 136);
  v3 = *(v6 + 128);
  sub_29A58CB08(v6 + 32, v6);
  v4 = sub_29B0DAE04(v2, v3);
  sub_29A58CB08(v6 + 64, v6 + 32);
  sub_29A5888DC(v4);
  sub_29B0C3BDC(v4, (v6 + 64));
}

void (*sub_29B0D2B38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

void sub_29B0D2CBC(void *a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  sub_29B0D2D38(v3, *a2);
}

void sub_29B0D2D38(void *a1, uint64_t a2)
{
  v6 = sub_29B0BAF2C(0x90uLL);
  *a1 = v6;
  v6[17] = v4;
  v6[16] = a2;
  v2 = sub_29B0DAE04(v4, a2);
  sub_29B0CBE80(v6, v2);
}

void sub_29B0D2DE8(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    sub_29B0DAE04(*(v2 + 136), *(v2 + 128));
    sub_29B0CBE80((v2 + 96), v2);
  }

  sub_29B0CBE80((v2 + 32), v2);
}

void (*sub_29B0D2EDC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

uint64_t sub_29B0D2FE4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_29B0D3018(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t sub_29B0D3018(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  return sub_29B0DA6D8(&v4, &v3);
}

void sub_29B0D3124(void *a1, uint64_t *a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  sub_29B0D31A0(v3, *a2);
}

void sub_29B0D31A0(void *a1, uint64_t a2)
{
  v5 = sub_29B0BAF2C(0x230uLL);
  *a1 = v5;
  v5[69] = v4;
  v5[68] = a2;
  sub_29B0DABCC(v4, a2);
  sub_29B0CB86C(v5);
}

void sub_29B0D3258(uint64_t *a1, char a2)
{
  v2 = *a1;
  if ((a2 & 1) == 0)
  {
    sub_29B0DABCC(*(v2 + 552), *(v2 + 544));
    sub_29B0CB86C(v2 + 408);
  }

  sub_29B0CB86C(v2 + 136);
}

void (*sub_29B0D3360(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void **a1, char a2)
{
  v8 = sub_29B0BAF2C(0x28uLL);
  *a1 = v8;
  v8[4] = sub_29B0D0C60(v8, a2, a3, a4);
  return sub_29B0BA0D0;
}

void (*sub_29B0D3468(std::string **a1))(void **a1, char a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  v3[1].__r_.__value_.__l.__size_ = sub_29B0D34DC(v3, *v1);
  return sub_29B0BA34C;
}

void (*sub_29B0D34DC(std::string *a1, std::string::size_type a2))(std::string *a1)
{
  a1[1].__r_.__value_.__r.__words[0] = a2;
  v2 = sub_29B0BCBCC(&a1[1]);
  std::string::basic_string(a1, v2);
  return sub_29B0D3548;
}

uint64_t sub_29B0D3588@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0D35B8(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0D35B8(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = a1;
  sub_29B0DBA6C(v2);
  return v2[0];
}

unint64_t sub_29B0D3668()
{
  v2 = qword_2A14FA9B8;
  if (!qword_2A14FA9B8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____()
{
  v4 = qword_2A14FAF88;
  if (!qword_2A14FAF88)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF88);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0D3798()
{
  v2 = qword_2A14FA9C0;
  if (!qword_2A14FA9C0)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9C0);
    return WitnessTable;
  }

  return v2;
}

void sub_29B0D3818(pxrInternal__aapl__pxrReserved__::TfToken **a1)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  sub_29B0D388C(v2, *v1);
}

void sub_29B0D388C(pxrInternal__aapl__pxrReserved__::TfToken *a1, uint64_t a2)
{
  *(a1 + 1) = a2;
  v2 = sub_29B0BCBCC(a1 + 8);
  sub_29B0C1C90(a1, v2);
}

uint64_t sub_29B0D3930@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0D3960(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0D3960(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = a1;
  sub_29B0DB438(v2);
  return v2[0];
}

void (*sub_29B0D39E0(void *a1))(void **a1, char a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  v3[4] = sub_29B0D3A54(v3, *v1);
  return sub_29B0BA34C;
}

_DWORD *(*sub_29B0D3A54(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  v2 = sub_29B0BCBCC(a1);
  sub_29B0B975C((a1 + 8), v2);
  return sub_29B0BA42C;
}

void (*sub_29B0D3B00(void *a1))(void **a1, char a2)
{
  v5 = sub_29B0BAF2C(0x38uLL);
  *a1 = v5;
  v5[6] = sub_29B0D3B80(v5, *v1);
  v5[4] = v2;
  v5[5] = v3;
  return sub_29B0CECA0;
}

void (*sub_29B0D3B80(void *a1, uint64_t a2))()
{
  *a1 = a2;
  sub_29B0BCBCC(a1);
  return sub_29B0BA188;
}

uint64_t sub_29B0D3BD8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0D3C08(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0D3C08(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = a1;
  sub_29B0DB220(v2);
  return v2[0];
}

void sub_29B0D3C88(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  sub_29B0D3CFC(v2, *v1);
}

void sub_29B0D3CFC(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = a2;
  sub_29B0BCBCC(a1 + 8);
  sub_29B0CC3E4();
}

void sub_29B0D3DF0(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  sub_29B0D3CFC(v2, *v1);
}

void (*sub_29B0D3EAC(void *a1))(void **a1, char a2)
{
  v11 = sub_29B0BAF2C(0x38uLL);
  *a1 = v11;
  v2 = sub_29B0D3F44(v11, *v1);
  v4 = v3;
  v6 = v5;
  v11[4] = v2;
  v8 = *v7;
  v9 = v7[1];
  *(v11 + 10) = v4;
  *(v11 + 11) = v6;
  *(v11 + 12) = v8;
  *(v11 + 13) = v9;
  return sub_29B0CF800;
}

void (*sub_29B0D3F44(uint64_t a1, uint64_t a2))()
{
  *a1 = a2;
  v2 = sub_29B0BCBCC(a1);
  v3 = *(v2 + 12);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 12) = v3;
  return sub_29B0BA188;
}

void (*sub_29B0D3FF8(void *a1))(void **a1, char a2)
{
  v3 = sub_29B0BAF2C(0x28uLL);
  *a1 = v3;
  v3[4] = sub_29B0D406C(v3, *v1);
  return sub_29B0BA34C;
}

void (*sub_29B0D406C(void *a1, uint64_t a2))(uint64_t *a1)
{
  v6 = sub_29B0BAF2C(0x28uLL);
  *a1 = v6;
  v6[4] = a2;
  v2 = sub_29B0BCBCC((v6 + 4));
  sub_29A58CB08(v6, v2);
  return sub_29B0D40FC;
}

void sub_29B0D40FC(uint64_t *a1)
{
  v1 = *a1;
  sub_29A5888DC(*a1);
  free(v1);
}

uint64_t sub_29B0D4148@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0D4178(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0D4178(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = a1;
  sub_29B0DAF30(v2);
  return v2[0];
}

void sub_29B0D41F8(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  sub_29B0D426C(v2, *v1);
}

void sub_29B0D426C(void *a1, uint64_t a2)
{
  v5 = sub_29B0BAF2C(0x28uLL);
  *a1 = v5;
  v5[4] = a2;
  v2 = sub_29B0BCBCC((v5 + 4));
  sub_29B0CBE80(v5, v2);
}

void sub_29B0D42FC(uint64_t *a1)
{
  v1 = *a1;
  sub_29A5B6480(*a1);
  free(v1);
}

void sub_29B0D4390(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  sub_29B0D4404(v2, *v1);
}

void sub_29B0D4404(void *a1, uint64_t a2)
{
  v4 = sub_29B0BAF2C(0x90uLL);
  *a1 = v4;
  v4[17] = a2;
  sub_29B0BCBCC((v4 + 17));
  sub_29B0CB86C(v4);
}

void sub_29B0D449C(uint64_t *a1)
{
  v1 = *a1;
  sub_29B0C5104(*a1);
  free(v1);
}

uint64_t sub_29B0D44E8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29B0D4518(*v1);
  *a1 = result;
  return result;
}

uint64_t sub_29B0D4518(uint64_t a1)
{
  v2[1] = a1;
  v2[0] = a1;
  sub_29B0DAD48(v2);
  return v2[0];
}

unint64_t sub_29B0D4610()
{
  v2 = qword_2A14FA9C8;
  if (!qword_2A14FA9C8)
  {
    sub_29B0B7EBC(&qword_2A14FA9A8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D46C8()
{
  v2 = qword_2A14FA9D0;
  if (!qword_2A14FA9D0)
  {
    sub_29B0B7EBC(&qword_2A14FA610);
    sub_29B0C5E48();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4784()
{
  v2 = qword_2A14FA9D8;
  if (!qword_2A14FA9D8)
  {
    sub_29B0B7EBC(&qword_2A14FA9A8);
    sub_29B0D481C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D481C()
{
  v2 = qword_2A14FA9E0;
  if (!qword_2A14FA9E0)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D48B4()
{
  v2 = qword_2A14FA9E8;
  if (!qword_2A14FA9E8)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D494C()
{
  v2 = qword_2A14FA9F0;
  if (!qword_2A14FA9F0)
  {
    sub_29B0B7EBC(&qword_2A14FA9A8);
    sub_29B0D49E4();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D49E4()
{
  v2 = qword_2A14FA9F8;
  if (!qword_2A14FA9F8)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FA9F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4A7C()
{
  v2 = qword_2A14FAA00;
  if (!qword_2A14FAA00)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4B2C()
{
  v2 = qword_2A14FAA08;
  if (!qword_2A14FAA08)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4BDC()
{
  v2 = qword_2A14FAA10;
  if (!qword_2A14FAA10)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4C74()
{
  v2 = qword_2A14FAA18;
  if (!qword_2A14FAA18)
  {
    sub_29B0B7EBC(&qword_2A14FAA20);
    sub_29B0D4D0C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4D0C()
{
  v2 = qword_2A14FAA28;
  if (!qword_2A14FAA28)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4DA4()
{
  v2 = qword_2A14FAA30;
  if (!qword_2A14FAA30)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA30);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.TfToken__()
{
  v4 = qword_2A14FAF80;
  if (!qword_2A14FAF80)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF80);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0D4ED4()
{
  v2 = qword_2A14FAA38;
  if (!qword_2A14FAA38)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D4FB4()
{
  v2 = qword_2A14FAA40;
  if (!qword_2A14FAA40)
  {
    sub_29B0B7EBC(&qword_2A14FAA20);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D506C()
{
  v2 = qword_2A14FAA48;
  if (!qword_2A14FAA48)
  {
    sub_29B0B7EBC(&qword_2A14FAA20);
    sub_29B0D5104();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5104()
{
  v2 = qword_2A14FAA50;
  if (!qword_2A14FAA50)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D519C()
{
  v2 = qword_2A14FAA58;
  if (!qword_2A14FAA58)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5234()
{
  v2 = qword_2A14FAA60;
  if (!qword_2A14FAA60)
  {
    sub_29B0B7EBC(&qword_2A14FAA20);
    sub_29B0D52CC();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D52CC()
{
  v2 = qword_2A14FAA68;
  if (!qword_2A14FAA68)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5364()
{
  v2 = qword_2A14FAA70;
  if (!qword_2A14FAA70)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5414()
{
  v2 = qword_2A14FAA78;
  if (!qword_2A14FAA78)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D54DC()
{
  v2 = qword_2A14FAA80;
  if (!qword_2A14FAA80)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5574()
{
  v2 = qword_2A14FAA88;
  if (!qword_2A14FAA88)
  {
    sub_29B0B7EBC(&qword_2A14FAA90);
    sub_29B0D560C();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D560C()
{
  v2 = qword_2A14FAA98;
  if (!qword_2A14FAA98)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAA98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D56A4()
{
  v2 = qword_2A14FAAA0;
  if (!qword_2A14FAAA0)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAA0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfPath__()
{
  v4 = qword_2A14FAF78;
  if (!qword_2A14FAF78)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF78);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0D57D4()
{
  v2 = qword_2A14FAAA8;
  if (!qword_2A14FAAA8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D58A8()
{
  v2 = qword_2A14FAAB0;
  if (!qword_2A14FAAB0)
  {
    sub_29B0B7EBC(&qword_2A14FAA90);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5960()
{
  v2 = qword_2A14FAAB8;
  if (!qword_2A14FAAB8)
  {
    sub_29B0B7EBC(&qword_2A14FAA90);
    sub_29B0D59F8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D59F8()
{
  v2 = qword_2A14FAAC0;
  if (!qword_2A14FAAC0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5A90()
{
  v2 = qword_2A14FAAC8;
  if (!qword_2A14FAAC8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5B28()
{
  v2 = qword_2A14FAAD0;
  if (!qword_2A14FAAD0)
  {
    sub_29B0B7EBC(&qword_2A14FAA90);
    sub_29B0D5BC0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5BC0()
{
  v2 = qword_2A14FAAD8;
  if (!qword_2A14FAAD8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5C58()
{
  v2 = qword_2A14FAAE0;
  if (!qword_2A14FAAE0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5D08()
{
  v2 = qword_2A14FAAE8;
  if (!qword_2A14FAAE8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5DB8()
{
  v2 = qword_2A14FAAF0;
  if (!qword_2A14FAAF0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5E50()
{
  v2 = qword_2A14FAAF8;
  if (!qword_2A14FAAF8)
  {
    sub_29B0B7EBC(&qword_2A14FAB00);
    sub_29B0D5EE8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAAF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5EE8()
{
  v2 = qword_2A14FAB08;
  if (!qword_2A14FAB08)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D5F80()
{
  v2 = qword_2A14FAB10;
  if (!qword_2A14FAB10)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB10);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__()
{
  v4 = qword_2A14FAF70;
  if (!qword_2A14FAF70)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF70);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0D60B0()
{
  v2 = qword_2A14FAB18;
  if (!qword_2A14FAB18)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB18);
    return WitnessTable;
  }

  return v2;
}

BOOL sub_29B0D6130(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  return sub_29B0DAD00(&v4, &v3);
}

unint64_t sub_29B0D6198()
{
  v2 = qword_2A14FAB20;
  if (!qword_2A14FAB20)
  {
    sub_29B0B7EBC(&qword_2A14FAB00);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6250()
{
  v2 = qword_2A14FAB28;
  if (!qword_2A14FAB28)
  {
    sub_29B0B7EBC(&qword_2A14FAB00);
    sub_29B0D62E8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D62E8()
{
  v2 = qword_2A14FAB30;
  if (!qword_2A14FAB30)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6380()
{
  v2 = qword_2A14FAB38;
  if (!qword_2A14FAB38)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6418()
{
  v2 = qword_2A14FAB40;
  if (!qword_2A14FAB40)
  {
    sub_29B0B7EBC(&qword_2A14FAB00);
    sub_29B0D64B0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D64B0()
{
  v2 = qword_2A14FAB48;
  if (!qword_2A14FAB48)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6548()
{
  v2 = qword_2A14FAB50;
  if (!qword_2A14FAB50)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D65F8()
{
  v2 = qword_2A14FAB58;
  if (!qword_2A14FAB58)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D66A8()
{
  v2 = qword_2A14FAB60;
  if (!qword_2A14FAB60)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6740()
{
  v2 = qword_2A14FAB68;
  if (!qword_2A14FAB68)
  {
    sub_29B0B7EBC(&qword_2A14FAB70);
    sub_29B0D67D8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D67D8()
{
  v2 = qword_2A14FAB78;
  if (!qword_2A14FAB78)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6870()
{
  v2 = qword_2A14FAB80;
  if (!qword_2A14FAB80)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB80);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___()
{
  v4 = qword_2A14FAF68;
  if (!qword_2A14FAF68)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF68);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0D69A0()
{
  v2 = qword_2A14FAB88;
  if (!qword_2A14FAB88)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6A50()
{
  v2 = qword_2A14FAB90;
  if (!qword_2A14FAB90)
  {
    sub_29B0B7EBC(&qword_2A14FAB70);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6B08()
{
  v2 = qword_2A14FAB98;
  if (!qword_2A14FAB98)
  {
    sub_29B0B7EBC(&qword_2A14FAB70);
    sub_29B0D6BA0();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAB98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6BA0()
{
  v2 = qword_2A14FABA0;
  if (!qword_2A14FABA0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6C38()
{
  v2 = qword_2A14FABA8;
  if (!qword_2A14FABA8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6CD0()
{
  v2 = qword_2A14FABB0;
  if (!qword_2A14FABB0)
  {
    sub_29B0B7EBC(&qword_2A14FAB70);
    sub_29B0D6D68();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6D68()
{
  v2 = qword_2A14FABB8;
  if (!qword_2A14FABB8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6E00()
{
  v2 = qword_2A14FABC0;
  if (!qword_2A14FABC0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6EB0()
{
  v2 = qword_2A14FABC8;
  if (!qword_2A14FABC8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6F60()
{
  v2 = qword_2A14FABD0;
  if (!qword_2A14FABD0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D6FF8()
{
  v2 = qword_2A14FABD8;
  if (!qword_2A14FABD8)
  {
    sub_29B0B7EBC(&qword_2A14FABE0);
    sub_29B0D7090();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7090()
{
  v2 = qword_2A14FABE8;
  if (!qword_2A14FABE8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7128()
{
  v2 = qword_2A14FABF0;
  if (!qword_2A14FABF0)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___()
{
  v4 = qword_2A14FAF60;
  if (!qword_2A14FAF60)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF60);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0D7258()
{
  v2 = qword_2A14FABF8;
  if (!qword_2A14FABF8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FABF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7308()
{
  v2 = qword_2A14FAC00;
  if (!qword_2A14FAC00)
  {
    sub_29B0B7EBC(&qword_2A14FABE0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D73C0()
{
  v2 = qword_2A14FAC08;
  if (!qword_2A14FAC08)
  {
    sub_29B0B7EBC(&qword_2A14FABE0);
    sub_29B0D7458();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7458()
{
  v2 = qword_2A14FAC10;
  if (!qword_2A14FAC10)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D74F0()
{
  v2 = qword_2A14FAC18;
  if (!qword_2A14FAC18)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7588()
{
  v2 = qword_2A14FAC20;
  if (!qword_2A14FAC20)
  {
    sub_29B0B7EBC(&qword_2A14FABE0);
    sub_29B0D7620();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7620()
{
  v2 = qword_2A14FAC28;
  if (!qword_2A14FAC28)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D76B8()
{
  v2 = qword_2A14FAC30;
  if (!qword_2A14FAC30)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7768()
{
  v2 = qword_2A14FAC38;
  if (!qword_2A14FAC38)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7818()
{
  v2 = qword_2A14FAC40;
  if (!qword_2A14FAC40)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D78B0()
{
  v2 = qword_2A14FAC48;
  if (!qword_2A14FAC48)
  {
    sub_29B0B7EBC(&qword_2A14FAC50);
    sub_29B0D7948();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7948()
{
  v2 = qword_2A14FAC58;
  if (!qword_2A14FAC58)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D79E0()
{
  v2 = qword_2A14FAC60;
  if (!qword_2A14FAC60)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC60);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.GfVec4f__()
{
  v4 = qword_2A14FAF58;
  if (!qword_2A14FAF58)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF58);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0D7B10()
{
  v2 = qword_2A14FAC68;
  if (!qword_2A14FAC68)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7BC0()
{
  v2 = qword_2A14FAC70;
  if (!qword_2A14FAC70)
  {
    sub_29B0B7EBC(&qword_2A14FAC50);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7C78()
{
  v2 = qword_2A14FAC78;
  if (!qword_2A14FAC78)
  {
    sub_29B0B7EBC(&qword_2A14FAC50);
    sub_29B0D7D10();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7D10()
{
  v2 = qword_2A14FAC80;
  if (!qword_2A14FAC80)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7DA8()
{
  v2 = qword_2A14FAC88;
  if (!qword_2A14FAC88)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7E40()
{
  v2 = qword_2A14FAC90;
  if (!qword_2A14FAC90)
  {
    sub_29B0B7EBC(&qword_2A14FAC50);
    sub_29B0D7ED8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7ED8()
{
  v2 = qword_2A14FAC98;
  if (!qword_2A14FAC98)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAC98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D7F70()
{
  v2 = qword_2A14FACA0;
  if (!qword_2A14FACA0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8020()
{
  v2 = qword_2A14FACA8;
  if (!qword_2A14FACA8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D80D0()
{
  v2 = qword_2A14FACB0;
  if (!qword_2A14FACB0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8168()
{
  v2 = qword_2A14FACB8;
  if (!qword_2A14FACB8)
  {
    sub_29B0B7EBC(&qword_2A14FACC0);
    sub_29B0D8200();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8200()
{
  v2 = qword_2A14FACC8;
  if (!qword_2A14FACC8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8298()
{
  v2 = qword_2A14FACD0;
  if (!qword_2A14FACD0)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACD0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdAttribute__()
{
  v4 = qword_2A14FAF50;
  if (!qword_2A14FAF50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF50);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0D83C8()
{
  v2 = qword_2A14FACD8;
  if (!qword_2A14FACD8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8478()
{
  v2 = qword_2A14FACE0;
  if (!qword_2A14FACE0)
  {
    sub_29B0B7EBC(&qword_2A14FACC0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8530()
{
  v2 = qword_2A14FACE8;
  if (!qword_2A14FACE8)
  {
    sub_29B0B7EBC(&qword_2A14FACC0);
    sub_29B0D85C8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D85C8()
{
  v2 = qword_2A14FACF0;
  if (!qword_2A14FACF0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8660()
{
  v2 = qword_2A14FACF8;
  if (!qword_2A14FACF8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FACF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D86F8()
{
  v2 = qword_2A14FAD00;
  if (!qword_2A14FAD00)
  {
    sub_29B0B7EBC(&qword_2A14FACC0);
    sub_29B0D8790();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8790()
{
  v2 = qword_2A14FAD08;
  if (!qword_2A14FAD08)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8828()
{
  v2 = qword_2A14FAD10;
  if (!qword_2A14FAD10)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D88D8()
{
  v2 = qword_2A14FAD18;
  if (!qword_2A14FAD18)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8988()
{
  v2 = qword_2A14FAD20;
  if (!qword_2A14FAD20)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8A20()
{
  v2 = qword_2A14FAD28;
  if (!qword_2A14FAD28)
  {
    sub_29B0B7EBC(&qword_2A14FAD30);
    sub_29B0D8AB8();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8AB8()
{
  v2 = qword_2A14FAD38;
  if (!qword_2A14FAD38)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD38);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8B50()
{
  v2 = qword_2A14FAD40;
  if (!qword_2A14FAD40)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD40);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdRelationship__()
{
  v4 = qword_2A14FAF48;
  if (!qword_2A14FAF48)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF48);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0D8C80()
{
  v2 = qword_2A14FAD48;
  if (!qword_2A14FAD48)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD48);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8D30()
{
  v2 = qword_2A14FAD50;
  if (!qword_2A14FAD50)
  {
    sub_29B0B7EBC(&qword_2A14FAD30);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8DE8()
{
  v2 = qword_2A14FAD58;
  if (!qword_2A14FAD58)
  {
    sub_29B0B7EBC(&qword_2A14FAD30);
    sub_29B0D8E80();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD58);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8E80()
{
  v2 = qword_2A14FAD60;
  if (!qword_2A14FAD60)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8F18()
{
  v2 = qword_2A14FAD68;
  if (!qword_2A14FAD68)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD68);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D8FB0()
{
  v2 = qword_2A14FAD70;
  if (!qword_2A14FAD70)
  {
    sub_29B0B7EBC(&qword_2A14FAD30);
    sub_29B0D9048();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9048()
{
  v2 = qword_2A14FAD78;
  if (!qword_2A14FAD78)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D90E0()
{
  v2 = qword_2A14FAD80;
  if (!qword_2A14FAD80)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9190()
{
  v2 = qword_2A14FAD88;
  if (!qword_2A14FAD88)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9240()
{
  v2 = qword_2A14FAD90;
  if (!qword_2A14FAD90)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D92D8()
{
  v2 = qword_2A14FAD98;
  if (!qword_2A14FAD98)
  {
    sub_29B0B7EBC(&qword_2A14FADA0);
    sub_29B0D9370();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAD98);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9370()
{
  v2 = qword_2A14FADA8;
  if (!qword_2A14FADA8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9408()
{
  v2 = qword_2A14FADB0;
  if (!qword_2A14FADB0)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADB0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__()
{
  v4 = qword_2A14FAF40;
  if (!qword_2A14FAF40)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FAF40);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0D9538()
{
  v2 = qword_2A14FADB8;
  if (!qword_2A14FADB8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D95E8()
{
  v2 = qword_2A14FADC0;
  if (!qword_2A14FADC0)
  {
    sub_29B0B7EBC(&qword_2A14FADA0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D96A0()
{
  v2 = qword_2A14FADC8;
  if (!qword_2A14FADC8)
  {
    sub_29B0B7EBC(&qword_2A14FADA0);
    sub_29B0D9738();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9738()
{
  v2 = qword_2A14FADD0;
  if (!qword_2A14FADD0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D97D0()
{
  v2 = qword_2A14FADD8;
  if (!qword_2A14FADD8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9868()
{
  v2 = qword_2A14FADE0;
  if (!qword_2A14FADE0)
  {
    sub_29B0B7EBC(&qword_2A14FADA0);
    sub_29B0D9900();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9900()
{
  v2 = qword_2A14FADE8;
  if (!qword_2A14FADE8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADE8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9998()
{
  v2 = qword_2A14FADF0;
  if (!qword_2A14FADF0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9A48()
{
  v2 = qword_2A14FADF8;
  if (!qword_2A14FADF8)
  {
    type metadata accessor for std.__1.__wrap_iter_UnsafePointer_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FADF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9AF8()
{
  v2 = qword_2A14FAE00;
  if (!qword_2A14FAE00)
  {
    sub_29B0B7EBC(&qword_2A14FAE08);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9B98()
{
  v2 = qword_2A14FAE10;
  if (!qword_2A14FAE10)
  {
    sub_29B0B7EBC(&qword_2A14FAE18);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9C38()
{
  v2 = qword_2A14FAE20;
  if (!qword_2A14FAE20)
  {
    sub_29B0B7EBC(&qword_2A14FAE28);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9CD8()
{
  v2 = qword_2A14FAE30;
  if (!qword_2A14FAE30)
  {
    sub_29B0B7EBC(&qword_2A14FAE38);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE30);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9D78()
{
  v2 = qword_2A14FAE40;
  if (!qword_2A14FAE40)
  {
    sub_29B0B7EBC(&qword_2A14FAE48);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE40);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9E18()
{
  v2 = qword_2A14FAE50;
  if (!qword_2A14FAE50)
  {
    sub_29B0B7EBC(&qword_2A14FAE58);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE50);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9EB8()
{
  v2 = qword_2A14FAE60;
  if (!qword_2A14FAE60)
  {
    sub_29B0B7EBC(&qword_2A14FAE68);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9F58()
{
  v2 = qword_2A14FAE70;
  if (!qword_2A14FAE70)
  {
    sub_29B0B7EBC(&qword_2A14FAE78);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0D9FF8()
{
  v2 = qword_2A14FAE80;
  if (!qword_2A14FAE80)
  {
    sub_29B0B7EBC(&qword_2A14FAE88);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE80);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA098()
{
  v2 = qword_2A14FAE90;
  if (!qword_2A14FAE90)
  {
    sub_29B0B7EBC(&qword_2A14FAE98);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAE90);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA120()
{
  v2 = qword_2A14FAEA0;
  if (!qword_2A14FAEA0)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA1A0()
{
  v2 = qword_2A14FAEA8;
  if (!qword_2A14FAEA8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEA8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA220()
{
  v2 = qword_2A14FAEB0;
  if (!qword_2A14FAEB0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA2A0()
{
  v2 = qword_2A14FAEB8;
  if (!qword_2A14FAEB8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEB8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA320()
{
  v2 = qword_2A14FAEC0;
  if (!qword_2A14FAEC0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA3A0()
{
  v2 = qword_2A14FAEC8;
  if (!qword_2A14FAEC8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA420()
{
  v2 = qword_2A14FAED0;
  if (!qword_2A14FAED0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAED0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA4A0()
{
  v2 = qword_2A14FAED8;
  if (!qword_2A14FAED8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAED8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA520()
{
  v2 = qword_2A14FAEE0;
  if (!qword_2A14FAEE0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DA5A0()
{
  v2 = qword_2A14FAEE8;
  if (!qword_2A14FAEE8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEE8);
    return WitnessTable;
  }

  return v2;
}

void __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> sub_29B0DA674(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  sub_29B088180(a1);
}

uint64_t sub_29B0DA724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a3 - 8) + 16);
  v8();
  (v8)(a2 + *(a4 + 36), a1 + *(a4 + 36), a3);
  return a2;
}

uint64_t sub_29B0DA7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *(*(a3 - 8) + 16);
  v7();
  (v7)(a2 + *(a5 + 36), a1 + *(a5 + 36), a3);
  (*(*(a4 - 8) + 16))(a2 + *(a5 + 40), a1 + *(a5 + 40));
  return a2;
}

uint64_t sub_29B0DA8AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a3 - 8) + 32);
  v8();
  (v8)(a2 + *(a4 + 36), a1 + *(a4 + 36), a3);
  return a2;
}

uint64_t sub_29B0DA948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(a2 - 8) + 8);
  v6();
  (v6)(a1 + *(a3 + 36), a2);
  return a1;
}

uint64_t sub_29B0DA9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(a2 - 8) + 8);
  v6();
  (v6)(a1 + *(a4 + 36), a2);
  (*(*(a3 - 8) + 8))(a1 + *(a4 + 40));
  return a1;
}

uint64_t sub_29B0DAA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a3 - 8) + 16);
  v8();
  (v8)(a2 + *(a4 + 48), a1 + *(a4 + 48), a3);
  return a2;
}

uint64_t sub_29B0DAB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(*(a3 - 8) + 32);
  v8();
  (v8)(a2 + *(a4 + 48), a1 + *(a4 + 48), a3);
  return a2;
}

unint64_t sub_29B0DAC80()
{
  v2 = qword_2A14FAEF0;
  if (!qword_2A14FAEF0)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdGeomXformOp__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEF0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DAEB0()
{
  v2 = qword_2A14FAEF8;
  if (!qword_2A14FAEF8)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdRelationship_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdRelationship__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAEF8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DAFD8()
{
  v2 = qword_2A14FAF00;
  if (!qword_2A14FAF00)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.UsdAttribute_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.UsdAttribute__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DB1A0()
{
  v2 = qword_2A14FAF08;
  if (!qword_2A14FAF08)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.GfVec4f_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.GfVec4f__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DB3B8()
{
  v2 = qword_2A14FAF10;
  if (!qword_2A14FAF10)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPrimSpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF10);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DB510()
{
  v2 = qword_2A14FAF18;
  if (!qword_2A14FAF18)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec__ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfHandle_pxrInternal__aapl__pxrReserved__.SdfPropertySpec___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF18);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DB618()
{
  v2 = qword_2A14FAF20;
  if (!qword_2A14FAF20)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfLayerOffset_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfLayerOffset__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF20);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DB720()
{
  v2 = qword_2A14FAF28;
  if (!qword_2A14FAF28)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.SdfPath_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.SdfPath__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF28);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0DB828()
{
  v2 = qword_2A14FAF30;
  if (!qword_2A14FAF30)
  {
    type metadata accessor for std.__1.vector_pxrInternal__aapl__pxrReserved__.TfToken_ std.__1.allocator_pxrInternal__aapl__pxrReserved__.TfToken__();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF30);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0DB900(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  return sub_29B0E481C(&v4, &v3);
}

unint64_t sub_29B0DB9EC()
{
  v2 = qword_2A14FAF38;
  if (!qword_2A14FAF38)
  {
    type metadata accessor for std.__1.vector_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ std.__1.allocator_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF38);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0DBAB8(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  if (!(*(v5 + 48))(a1, 1))
  {
    (*(v5 + 8))(a1, a2);
  }

  return a1;
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttributeQuery>>::__generic_construct[abi:ne200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttributeQuery>,(std::__variant_detail::_Trait)1> const&>(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  sub_29A754560(a1);
  result = sub_29B0C5854(v5);
  if ((result & 1) == 0)
  {
    v4 = sub_29B0C5884(v5);
    v3 = v6;
    result = sub_29B0DBD98(v4, &v3, v5);
    *(v6 + 120) = v4;
  }

  return result;
}

uint64_t sub_29B0DBD98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = xmmword_2A20B6098;
  v5 = *sub_29B0DBE84(&v7, a1);
  v6 = v9;
  sub_29B088388();
  return v5(v6, v3);
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttributeQuery>>::__generic_construct[abi:ne200100]<std::__variant_detail::__move_constructor<std::__variant_detail::__traits<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttributeQuery>,(std::__variant_detail::_Trait)1>>(uint64_t a1, uint64_t a2)
{
  v6 = a1;
  v5 = a2;
  sub_29A754560(a1);
  result = sub_29B0C5854(v5);
  if ((result & 1) == 0)
  {
    v4 = sub_29B0C5884(v5);
    v3 = v6;
    result = sub_29B0DC468(v4, &v3, v5);
    *(v6 + 120) = v4;
  }

  return result;
}

uint64_t sub_29B0DC468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = xmmword_2A20B60A8;
  v5 = *sub_29B0DBE84(&v7, a1);
  v6 = v9;
  sub_29B088388();
  return v5(v6, v3);
}

void **sub_29B0DC8D4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A7544DC(v3);
  return a1;
}

void sub_29B0DC9A0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A754AB4(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0DCBCC(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DCDD0(&v6, a1, a4);
  v7 = sub_29B0DCE10(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0DCC34(uint64_t result, uint64_t a2)
{
  *result = a2;
  *(result + 8) = 0;
  return result;
}

void *sub_29B0DCD28(void *a1, void *a2)
{
  if (sub_29B0DCD80(&v6, a2, a1))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_29B0DCE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A754AFC(a1, v9, v8, v5);
  return sub_29B0DCF74(a4, v6);
}

void *sub_29B0DCEC4(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 136 * a3;
  return result;
}

uint64_t sub_29B0DCF10(uint64_t a1, uint64_t a2)
{
  v6[2] = a1;
  v6[1] = a2;
  sub_29B0C0D80();
  v6[0] = v2;
  sub_29B0C0D80();
  v5 = v3;
  return sub_29B0DCFB4(v6, &v5);
}

void *sub_29B0DD030(void *result, void *a2, void *a3)
{
  *result = *a2;
  result[1] = *a3;
  return result;
}

uint64_t sub_29B0DD14C(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A7544DC(a1);
  }

  return a1;
}

void *sub_29B0DD198(void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  *result = *a2;
  result[1] = a2[1];
  result[2] = a2[2];
  a2[2] = 0;
  a2[1] = 0;
  *a2 = 0;
  return result;
}

void **sub_29B0DD230(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A5BBBBC(v3);
  return a1;
}

void sub_29B0DD2D0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship*,pxrInternal__aapl__pxrReserved__::UsdRelationship*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B0DD410(a1);
  }

  sub_29B0DCBB0(v7);
  return sub_29B0DD52C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdRelationship*,pxrInternal__aapl__pxrReserved__::UsdRelationship*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B0DD638(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0DD638(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B0DD700(a1, v9, v8, v5);
  return sub_29B0DD7F4(a4, v6);
}

void *sub_29B0DD6BC(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 32 * a3;
  return result;
}

uint64_t sub_29B0DD700(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::UsdRelationship&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B0DD920(v7);
  return v5;
}

__n128 *sub_29B0DD834@<X0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v6 = a2;
  v5 = a1;
  v3 = *a1;
  v4 = a1[1].n128_u64[0];
  return sub_29B0DD950(a2, &v3);
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::UsdRelationship&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::UsdRelationship&>();
}

{
    ;
  }
}

__n128 sub_29B0DD988(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  a1[1].n128_u8[8] = 0;
  return result;
}

void *sub_29B0DD9B8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *result = a2;
  result[1] = a3;
  result[2] = a4;
  return result;
}

uint64_t sub_29B0DDA78(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A5BBBBC(a1);
  }

  return a1;
}

void **sub_29B0DDAC4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A5BB908(v3);
  return a1;
}

void sub_29B0DDB3C(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute*,pxrInternal__aapl__pxrReserved__::UsdAttribute*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A15A71C(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdAttribute*,pxrInternal__aapl__pxrReserved__::UsdAttribute*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0DDD08(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__construct_at_end<pxrInternal__aapl__pxrReserved__::UsdAttribute*,pxrInternal__aapl__pxrReserved__::UsdAttribute*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DD5F8(&v6, a1, a4);
  v7 = sub_29B0DDDC0(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0DDDC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B0DDE44(a1, v9, v8, v5);
  return sub_29B0DDF38(a4, v6);
}

uint64_t sub_29B0DDE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttribute&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B0DDFB0(v7);
  return v5;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttribute&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttribute&>();
}

{
    ;
  }
}

uint64_t sub_29B0DE014(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A5BB908(a1);
  }

  return a1;
}

uint64_t *sub_29B0DE060(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B0DE0A8(v3);
  return a1;
}

void sub_29B0DE0A8(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B0DE12C(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B0DE1B0(*a1);
    sub_29B0DE178(v3, v2, v1);
  }
}

void sub_29B0DE12C(uint64_t *a1)
{
  sub_29B0DB058(a1);
  sub_29B0DE1D8(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B0DE1D8(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B0DE2C0(void *a1, uint64_t a2, unint64_t a3)
{
  if (sub_29B0886D8(a3))
  {
    sub_29B0886F4(a1, a3);
  }

  else
  {
    sub_29B088724(a1);
  }
}

void sub_29B0DE328(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f*,pxrInternal__aapl__pxrReserved__::GfVec4f*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfVec4f*,pxrInternal__aapl__pxrReserved__::GfVec4f*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0DE4F4(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__construct_at_end<pxrInternal__aapl__pxrReserved__::GfVec4f*,pxrInternal__aapl__pxrReserved__::GfVec4f*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B0DE600(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0DE600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B0DE6C8(a1, v9, v8, v5);
  return sub_29B0DE704(a4, v6);
}

void *sub_29B0DE684(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 16 * a3;
  return result;
}

uint64_t sub_29B0DE7D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B0DE888(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B0DE8D4(v17, v11);
  v8 = sub_29B0DE704(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B0DE904(const void *a1, uint64_t a2, char *a3)
{
  v7[1] = a1;
  v7[0] = a2;
  v6 = a3;
  v5 = (a2 - a1) / 16;
  sub_29B0DE988(a3, a1, v5);
  v4 = &v6[16 * v5];
  return sub_29B0DCFB4(v7, &v4);
}

void *sub_29B0DE988(void *a1, const void *a2, uint64_t a3)
{
  if (a3)
  {
    memmove(a1, a2, 16 * (a3 - 1) + 16);
  }

  return a1;
}

uint64_t sub_29B0DEA40(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B0DE0A8(a1);
  }

  return a1;
}

void *pxrInternal__aapl__pxrReserved__::TfDelegatedCountPtr<pxrInternal__aapl__pxrReserved__::Sdf_Identity>::_IncrementIfValid(void *result)
{
  if (*result)
  {
    pxrInternal__aapl__pxrReserved__::TfDelegatedCountIncrement();
  }

  return result;
}

void **sub_29B0DECA4(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A1F19E8(v3);
  return a1;
}

void sub_29B0DED70(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>*,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29B0DEEB0(a1);
  }

  sub_29B0DCBB0(v7);
  return sub_29B0DEFCC(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>*,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DF098(&v6, a1, a4);
  v7 = sub_29B0DF0D8(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0DF0D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B0DF1A0(a1, v9, v8, v5);
  return sub_29B0DF294(a4, v6);
}

void *sub_29B0DF15C(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 8 * a3;
  return result;
}

uint64_t sub_29B0DF1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B0DF30C(v7);
  return v5;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>&>();
}

{
    ;
  }
}

void std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>&>()
{
  sub_29B0CC3E4();
}

{
    ;
  }
}

uint64_t sub_29B0DF370(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B0DF3C4(a1);
  }

  return a1;
}

BOOL sub_29B0DF3C4(uint64_t a1)
{
  v5[2] = a1;
  v3 = *a1;
  sub_29B0DF4A4(v5, **(a1 + 16));
  sub_29B0DF4A4(v4, **(a1 + 8));
  return sub_29B0DF430(v3, v5[0], v5[1], v4[0], v4[1]);
}

BOOL sub_29B0DF430(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v6[0] = a4;
  v6[1] = a5;
  result = sub_29B0DF4DC(v7, v6);
  if (result)
  {
    sub_29B0DF524(v7);
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>,0>();
  }

  return result;
}

void *sub_29B0DF5F8(void *result, uint64_t a2)
{
  *result = a2;
  result[1] = a2;
  return result;
}

uint64_t sub_29B0DF674(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A1F19E8(a1);
  }

  return a1;
}

void **sub_29B0DF6C0(void **a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29A1F19E8(v3);
  return a1;
}

void sub_29B0DF738(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A00C968(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0DEFCC(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DF098(&v6, a1, a4);
  v7 = sub_29B0DF98C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0DF98C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B0DFA10(a1, v9, v8, v5);
  return sub_29B0DFB04(a4, v6);
}

uint64_t sub_29B0DFA10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B0DFB7C(v7);
  return v5;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>&>();
}

{
    ;
  }
}

void std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>&>()
{
  sub_29B0CC3E4();
}

{
    ;
  }
}

uint64_t sub_29B0DFBE0(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B0DFC34(a1);
  }

  return a1;
}

BOOL sub_29B0DFC34(uint64_t a1)
{
  v5[2] = a1;
  v3 = *a1;
  sub_29B0DF4A4(v5, **(a1 + 16));
  sub_29B0DF4A4(v4, **(a1 + 8));
  return sub_29B0DFCA0(v3, v5[0], v5[1], v4[0], v4[1]);
}

BOOL sub_29B0DFCA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v6[0] = a4;
  v6[1] = a5;
  result = sub_29B0DF4DC(v7, v6);
  if (result)
  {
    sub_29B0DFD14(v7);
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>,0>();
  }

  return result;
}

uint64_t *sub_29B0DFD78(uint64_t *a1)
{
  v3[1] = a1;
  sub_29B0883E4(v3, a1);
  sub_29B0DFDC0(v3);
  return a1;
}

void sub_29B0DFDC0(uint64_t **a1)
{
  if (**a1)
  {
    sub_29B0DFE44(*a1);
    sub_29B08850C();
    v3 = *a1;
    v2 = **a1;
    v1 = sub_29B0DE1B0(*a1);
    sub_29B0DFE90(v3, v2, v1);
  }
}

void sub_29B0DFE44(uint64_t *a1)
{
  sub_29B0DB058(a1);
  sub_29B0DFEC8(a1, *a1);
  sub_29B088624();
}

uint64_t sub_29B0DFEC8(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 8))
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>();
  }

  *(result + 8) = a2;
  return result;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>()
{
  sub_29B088624();
}

{
    ;
  }
}

void sub_29B0DFFB0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A0D0518(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0E017C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,pxrInternal__aapl__pxrReserved__::SdfLayerOffset*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DE5C0(&v6, a1, a4);
  v7 = sub_29B0E0234(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0E0234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B0E02B8(a1, v9, v8, v5);
  return sub_29B0E02F4(a4, v6);
}

uint64_t sub_29B0E03C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v13 = sub_29B0DCF10(a1, a2);
  v14 = v3;
  v7 = v3;
  sub_29B0C0D80();
  v11 = sub_29B0DE888(&v10, v13, v7, v4);
  v12 = v5;
  v9 = sub_29B0E0478(v17, v11);
  v8 = sub_29B0E02F4(v15, v12);
  return sub_29B0DCFB4(&v9, &v8);
}

uint64_t sub_29B0E04A8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29B0DFDC0(a1);
  }

  return a1;
}

void sub_29B0E0524(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A00C968(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0E06F0(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_at_end<pxrInternal__aapl__pxrReserved__::SdfPath*,pxrInternal__aapl__pxrReserved__::SdfPath*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DF098(&v6, a1, a4);
  v7 = sub_29B0E07A8(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0E07A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A1E2158(a1, v9, v8, v5);
  return sub_29B0E082C(a4, v6);
}

uint64_t sub_29B0E08D8(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A1E234C(a1);
  }

  return a1;
}

void sub_29B0E0980(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>,void,0>();
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__init_with_size[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A00C968(a1, v8);
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0E0B4C(v7);
}

void *std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_at_end<pxrInternal__aapl__pxrReserved__::TfToken*,pxrInternal__aapl__pxrReserved__::TfToken*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0DF098(&v6, a1, a4);
  v7 = sub_29B0E0C04(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0E0C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29B0E0C88(a1, v9, v8, v5);
  return sub_29B0E0D7C(a4, v6);
}

uint64_t sub_29B0E0C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a4;
  sub_29B0DD884(&v6, a1, &v8, &v9);
  sub_29B0DD834(&v6, v7);
  if (v11 != v10)
  {
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken&,0>();
  }

  sub_29B0DD904(v7);
  v5 = v9;
  sub_29B0E0DF4(v7);
  return v5;
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken&>();
}

{
    ;
  }
}

uint64_t sub_29B0E0E58(uint64_t a1)
{
  if ((*(a1 + 24) & 1) == 0)
  {
    sub_29B0E0EAC(a1);
  }

  return a1;
}

BOOL sub_29B0E0EAC(uint64_t a1)
{
  v5[2] = a1;
  v3 = *a1;
  sub_29B0DF4A4(v5, **(a1 + 16));
  sub_29B0DF4A4(v4, **(a1 + 8));
  return sub_29B0E0F18(v3, v5[0], v5[1], v4[0], v4[1]);
}

BOOL sub_29B0E0F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[0] = a2;
  v7[1] = a3;
  v6[0] = a4;
  v6[1] = a5;
  result = sub_29B0DF4DC(v7, v6);
  if (result)
  {
    sub_29B0E0F8C(v7);
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken,0>();
  }

  return result;
}

uint64_t sub_29B0E0FF0(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A124AB0(a1);
  }

  return a1;
}

void sub_29B0E10C0(void *a1)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  std::allocator_traits<std::allocator<std::string>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::string>,void,0>();
}

void std::allocator_traits<std::allocator<std::string>>::select_on_container_copy_construction[abi:ne200100]<std::allocator<std::string>,void,0>()
{
  ;
}

{
    ;
  }
}

uint64_t std::vector<std::string>::__init_with_size[abi:ne200100]<std::string*,std::string*>(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0883E4(&v6, a1);
  sub_29B0DCAE0(v6, v7);
  if (v8)
  {
    sub_29A012BFC(a1, v8);
    std::vector<std::string>::__construct_at_end<std::string*,std::string*>();
  }

  sub_29B0DCBB0(v7);
  return sub_29B0E128C(v7);
}

void *std::vector<std::string>::__construct_at_end<std::string*,std::string*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  sub_29B0E135C(&v6, a1, a4);
  v7 = sub_29B0E139C(a1, v10, v9, v7);
  return sub_29B0DCE94(&v6);
}

uint64_t sub_29B0E139C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = sub_29B0DCF10(a2, a3);
  v8 = v4;
  sub_29B0C0D80();
  v6 = sub_29A09601C(a1, v9, v8, v5);
  return sub_29B0E146C(a4, v6);
}

void *sub_29B0E1420(void *result, uint64_t a2, uint64_t a3)
{
  *result = a2;
  result[1] = *(a2 + 8);
  result[2] = *(a2 + 8) + 24 * a3;
  return result;
}

uint64_t sub_29B0E1574(uint64_t a1)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    sub_29A012C90(a1);
  }

  return a1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::emplace_back<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&>(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DCDD0(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&>(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0DA64C(a1);
  sub_29B0E1814(a1);
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp,pxrInternal__aapl__pxrReserved__::UsdGeomXformOp const&>();
}

{
    ;
  }
}

void sub_29B0E1908(uint64_t *a1, uint64_t *a2)
{
  sub_29B08850C();
  v8 = a2[1] - 136 * ((a1[1] - *a1) / 136);
  sub_29B088388();
  v5 = v2;
  sub_29B088388();
  v6 = v3;
  sub_29B088388();
  sub_29A7B9D50(a1, v5, v6, v4);
  a2[1] = v8;
  a1[1] = *a1;
  sub_29B0E1B90(a1, a2 + 1);
  sub_29B0E1B90(a1 + 1, a2 + 2);
  sub_29B0E1B90(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_29B0DA64C(a1);
  sub_29B088624();
}

void *sub_29B0E1A70(void *a1, void *a2)
{
  if (sub_29B0DCD80(&v6, a1, a2))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

void **sub_29B0E1AC8(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = a2;
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    *a1 = sub_29A58E664(a1[4], a2);
    v9 = v4;
  }

  else
  {
    *a1 = 0;
  }

  v5 = *a1 + 136 * a3;
  a1[2] = v5;
  a1[1] = v5;
  a1[3] = *a1 + 136 * v9;
  return a1;
}

uint64_t *sub_29B0E1B90(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdGeomXformOp*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::emplace_back<pxrInternal__aapl__pxrReserved__::UsdRelationship const&>(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdRelationship const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DD5F8(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::UsdRelationship const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdRelationship const&>(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0DAD68(a1);
  sub_29B0E1ED4(a1);
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::UsdRelationship const&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::UsdRelationship>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship,pxrInternal__aapl__pxrReserved__::UsdRelationship const&>();
}

{
    ;
  }
}

void sub_29B0E1FC8(uint64_t *a1, uint64_t *a2)
{
  sub_29B08850C();
  v8 = a2[1] + 32 * ((a1[1] - *a1) / -32);
  sub_29B088388();
  v5 = v2;
  sub_29B088388();
  v6 = v3;
  sub_29B088388();
  sub_29A5BBCB4(a1, v5, v6, v4);
  a2[1] = v8;
  a1[1] = *a1;
  sub_29B0E1B90(a1, a2 + 1);
  sub_29B0E1B90(a1 + 1, a2 + 2);
  sub_29B0E1B90(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_29B0DAD68(a1);
  sub_29B088624();
}

void **sub_29B0E2100(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = a2;
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    *a1 = sub_29A10CB10(a1[4], a2);
    v9 = v4;
  }

  else
  {
    *a1 = 0;
  }

  v5 = *a1 + 32 * a3;
  a1[2] = v5;
  a1[1] = v5;
  a1[3] = *a1 + 32 * v9;
  return a1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdRelationship>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdRelationship*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::emplace_back<pxrInternal__aapl__pxrReserved__::UsdAttribute const&>(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdAttribute const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DD5F8(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttribute const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::UsdAttribute const&>(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0DAD68(a1);
  sub_29B0E2490(a1);
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttribute const&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::UsdAttribute>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute,pxrInternal__aapl__pxrReserved__::UsdAttribute const&>();
}

{
    ;
  }
}

void sub_29B0E253C(uint64_t *a1, uint64_t *a2)
{
  sub_29B08850C();
  v8 = a2[1] + 32 * ((a1[1] - *a1) / -32);
  sub_29B088388();
  v5 = v2;
  sub_29B088388();
  v6 = v3;
  sub_29B088388();
  sub_29A5BBA00(a1, v5, v6, v4);
  a2[1] = v8;
  a1[1] = *a1;
  sub_29B0E1B90(a1, a2 + 1);
  sub_29B0E1B90(a1 + 1, a2 + 2);
  sub_29B0E1B90(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_29B0DAD68(a1);
  sub_29B088624();
}

void std::vector<pxrInternal__aapl__pxrReserved__::UsdAttribute>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::UsdAttribute*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::emplace_back<pxrInternal__aapl__pxrReserved__::GfVec4f const&>(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::GfVec4f const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DE5C0(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f,pxrInternal__aapl__pxrReserved__::GfVec4f const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::GfVec4f const&>(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0DB058(a1);
  sub_29B0E293C(a1);
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f,pxrInternal__aapl__pxrReserved__::GfVec4f const&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f,pxrInternal__aapl__pxrReserved__::GfVec4f const&>();
}

{
    ;
  }
}

__n128 std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f,pxrInternal__aapl__pxrReserved__::GfVec4f const&>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void sub_29B0E2A30(uint64_t *a1, uint64_t *a2)
{
  sub_29B08850C();
  v7 = a2[1] + 16 * ((a1[1] - *a1) / -16);
  sub_29B088388();
  v4 = v2;
  sub_29B088388();
  v5 = v3;
  sub_29B088388();
  sub_29B0E2C24(a1, v4, v5);
  a2[1] = v7;
  a1[1] = *a1;
  sub_29B0E1B90(a1, a2 + 1);
  sub_29B0E1B90(a1 + 1, a2 + 2);
  sub_29B0E1B90(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_29B0DB058(a1);
  sub_29B088624();
}

void **sub_29B0E2B68(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = a2;
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    *a1 = sub_29A017BD4(a1[4], a2);
    v9 = v4;
  }

  else
  {
    *a1 = 0;
  }

  v5 = *a1 + 16 * a3;
  a1[2] = v5;
  a1[1] = v5;
  a1[3] = *a1 + 16 * v9;
  return a1;
}

void *sub_29B0E2C24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B088388();
  __dst = v3;
  sub_29B088388();
  return memcpy(__dst, v4, 16 * ((a3 - a2) / 16));
}

void **sub_29B0E2C88(void **a1)
{
  sub_29B0E2D08(a1);
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    v4 = sub_29B0E2D34(a1);
    sub_29B0DE178(v2, v3, v4);
  }

  return a1;
}

uint64_t sub_29B0E2D8C(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 16))
  {
    *(result + 16) -= 16;
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::GfVec4f>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f,0>();
  }

  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::GfVec4f>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::GfVec4f*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::emplace_back<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&>(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DF098(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&>(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0DB240(a1);
  sub_29B0E3070(a1);
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&>();
}

{
    ;
  }
}

void std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec> const&>()
{
  sub_29B0CC3E4();
}

{
    ;
  }
}

void **sub_29B0E3194(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = a2;
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    *a1 = sub_29A00C9BC(a1[4], a2);
    v9 = v4;
  }

  else
  {
    *a1 = 0;
  }

  v5 = *a1 + 8 * a3;
  a1[2] = v5;
  a1[1] = v5;
  a1[3] = *a1 + 8 * v9;
  return a1;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPrimSpec>*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::emplace_back<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&>(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DF098(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&>(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0DB240(a1);
  sub_29B0E34B8(a1);
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&>();
}

{
    ;
  }
}

void std::allocator<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>,pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec> const&>()
{
  sub_29B0CC3E4();
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfHandle<pxrInternal__aapl__pxrReserved__::SdfPropertySpec>*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::emplace_back<pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DE5C0(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0DB058(a1);
  sub_29B0E37C0(a1);
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>();
}

{
    ;
  }
}

__n128 std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,pxrInternal__aapl__pxrReserved__::SdfLayerOffset const&>(uint64_t a1, __n128 *a2, __n128 *a3)
{
  result = *a3;
  *a2 = *a3;
  return result;
}

void **sub_29B0E389C(void **a1)
{
  sub_29B0E391C(a1);
  if (*a1)
  {
    v2 = a1[4];
    v3 = *a1;
    v4 = sub_29B0E2D34(a1);
    sub_29B0DFE90(v2, v3, v4);
  }

  return a1;
}

uint64_t sub_29B0E3978(uint64_t result, uint64_t a2)
{
  if (a2 != *(result + 16))
  {
    *(result + 16) -= 16;
    sub_29B088388();
    std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>>::destroy[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset,0>();
  }

  return result;
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfLayerOffset>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfLayerOffset*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::emplace_back<pxrInternal__aapl__pxrReserved__::SdfPath const&>(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DF098(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::SdfPath const&>(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0DB240(a1);
  sub_29B0E3C5C(a1);
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::SdfPath>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath,pxrInternal__aapl__pxrReserved__::SdfPath const&>();
}

{
    ;
  }
}

void sub_29B0E3D08(uint64_t *a1, uint64_t *a2)
{
  sub_29B08850C();
  v8 = a2[1] + 8 * ((a1[1] - *a1) / -8);
  sub_29B088388();
  v5 = v2;
  sub_29B088388();
  v6 = v3;
  sub_29B088388();
  sub_29A1E291C(a1, v5, v6, v4);
  a2[1] = v8;
  a1[1] = *a1;
  sub_29B0E1B90(a1, a2 + 1);
  sub_29B0E1B90(a1 + 1, a2 + 2);
  sub_29B0E1B90(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_29B0DB240(a1);
  sub_29B088624();
}

void std::vector<pxrInternal__aapl__pxrReserved__::SdfPath>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::SdfPath*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::emplace_back<pxrInternal__aapl__pxrReserved__::TfToken const&>(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const&>();
  }

  std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__construct_one_at_end[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0DF098(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&,0>();
}

void std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__emplace_back_slow_path<pxrInternal__aapl__pxrReserved__::TfToken const&>(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0DB240(a1);
  sub_29B0E4114(a1);
}

void std::allocator_traits<std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&,0>()
{
  std::allocator<pxrInternal__aapl__pxrReserved__::TfToken>::construct[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken,pxrInternal__aapl__pxrReserved__::TfToken const&>();
}

{
    ;
  }
}

void std::vector<pxrInternal__aapl__pxrReserved__::TfToken>::__add_alignment_assumption[abi:ne200100]<pxrInternal__aapl__pxrReserved__::TfToken*,0>()
{
  ;
}

{
    ;
  }
}

void std::vector<std::string>::emplace_back<std::string const&>(uint64_t a1)
{
  if (*(a1 + 8) < *(a1 + 16))
  {
    std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>();
  }

  std::vector<std::string>::__emplace_back_slow_path<std::string const&>();
}

void std::vector<std::string>::__construct_one_at_end[abi:ne200100]<std::string const&>(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[3] = a2;
  sub_29B0E135C(v2, a1, 1);
  sub_29B088388();
  std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,std::string const&,0>();
}

void std::vector<std::string>::__emplace_back_slow_path<std::string const&>(void *a1, uint64_t a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0DB8A8(a1);
  sub_29B0E44C4(a1);
}

void std::allocator_traits<std::allocator<std::string>>::construct[abi:ne200100]<std::string,std::string const&,0>()
{
  std::allocator<std::string>::construct[abi:ne200100]<std::string,std::string const&>();
}

{
    ;
  }
}

void sub_29B0E45B8(uint64_t *a1, uint64_t *a2)
{
  sub_29B08850C();
  v7 = a2[1] - 24 * ((a1[1] - *a1) / 24);
  sub_29B088388();
  v4 = v2;
  sub_29B088388();
  v5 = v3;
  sub_29B088388();
  sub_29B0E47B8(a1, v4, v5);
  a2[1] = v7;
  a1[1] = *a1;
  sub_29B0E1B90(a1, a2 + 1);
  sub_29B0E1B90(a1 + 1, a2 + 2);
  sub_29B0E1B90(a1 + 2, a2 + 3);
  *a2 = a2[1];
  sub_29B0DB8A8(a1);
  sub_29B088624();
}

void **sub_29B0E46F0(void **a1, unint64_t a2, uint64_t a3, void *a4)
{
  v9 = a2;
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    *a1 = sub_29A012C48(a1[4], a2);
    v9 = v4;
  }

  else
  {
    *a1 = 0;
  }

  v5 = *a1 + 24 * a3;
  a1[2] = v5;
  a1[1] = v5;
  a1[3] = *a1 + 24 * v9;
  return a1;
}

void *sub_29B0E47B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29B088388();
  __dst = v3;
  sub_29B088388();
  return memcpy(__dst, v4, 24 * ((a3 - a2) / 24));
}

void std::vector<std::string>::__add_alignment_assumption[abi:ne200100]<std::string*,0>()
{
  ;
}

{
    ;
  }
}

uint64_t sub_29B0E48F4(uint64_t a1)
{
  v9 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = AssociatedTypeWitness - 8;
  v3 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v9, AssociatedTypeWitness);
  v4 = &v2 - v3;
  (*(v6 + 16))();
  (*(v6 + 40))(v5, v4, AssociatedTypeWitness);
  return (*(v6 + 8))(v9, AssociatedTypeWitness);
}

uint64_t sub_29B0E4A24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 16))(a2, v2 + v5);
}

uint64_t sub_29B0E4AA4(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v6 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = AssociatedTypeWitness - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](AssociatedTypeWitness, v11, AssociatedTypeWitness);
  v7 = &v4 - v5;
  (*(v8 + 16))();
  (*(v8 + 40))(v2 + *(v6 + 36), v7, AssociatedTypeWitness);
  return (*(v8 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_29B0E4C38(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v6 = a2;
  v10 = *(a2 + 16);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v7 = &v4 - v5;
  (*(v8 + 16))();
  (*(v8 + 40))(v2 + *(v6 + 40), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_29B0E4D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v21 = a6;
  v28 = a1;
  v27 = a2;
  v24 = a3;
  v33 = a4;
  v12 = a5;
  v38 = 0;
  v37 = 0;
  v36 = 0;
  v35 = 0;
  v39 = a4;
  v22 = *(a4 - 8);
  v23 = a4 - 8;
  v11 = (*(v22 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1, a5, a4);
  v20 = &v10 - v11;
  v13 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = *(AssociatedTypeWitness - 8);
  v26 = AssociatedTypeWitness - 8;
  v14 = (v25[8] + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v13, v33, v12);
  v17 = &v10 - v14;
  v34 = type metadata accessor for _OpenUSD_Iterator();
  v6 = MEMORY[0x2A1C7C4A8](v17, v28, AssociatedTypeWitness);
  v31 = &v10 - v7;
  v38 = &v10 - v7;
  v37 = v8;
  v36 = v27;
  v35 = v24;
  v16 = v25[2];
  v15 = v25 + 2;
  v16(v6);
  v19 = v25[4];
  v18 = v25 + 4;
  v19(v31, v17, AssociatedTypeWitness);
  (v16)(v17, v27, AssociatedTypeWitness);
  v19(v31 + *(v34 + 36), v17, AssociatedTypeWitness);
  (*(v22 + 16))(v20, v24, v33);
  (*(v22 + 32))(v31 + *(v34 + 40), v20, v33);
  sub_29B0DA7C0(v31, v21, AssociatedTypeWitness, v33, v34);
  (*(v22 + 8))(v24, v33);
  v30 = v25[1];
  v29 = v25 + 1;
  v30(v27, AssociatedTypeWitness);
  v30(v28, AssociatedTypeWitness);
  return sub_29B0DA9CC(v31, AssociatedTypeWitness, v33, v34);
}

uint64_t _OpenUSD_Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v8 = a2;
  v19 = a1;
  v24 = &protocol descriptor for _OpenUSD_Sequence;
  v36 = 0;
  v35 = 0;
  v25 = *(a1 + 24);
  v22 = *(a1 + 16);
  v37 = v22;
  v10 = 0;
  v23 = &protocol requirements base descriptor for _OpenUSD_Sequence;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = AssociatedTypeWitness - 8;
  v14 = (*(v12 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](0, v25, v22);
  v15 = &v8 - v14;
  v36 = &v8 - v14;
  v31 = swift_getAssociatedTypeWitness();
  v27 = *(v31 - 8);
  v28 = v31 - 8;
  v17 = *(v27 + 64);
  v16 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v31, v3, v31);
  v29 = &v8 - v16;
  v18 = (v17 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](&v8 - v16, v4, v5);
  v30 = &v8 - v18;
  v35 = v2;
  v21 = *(v27 + 16);
  v20 = v27 + 16;
  v21();
  (v21)(v29, v2 + *(v19 + 36), v31);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v27 + 8);
  v32 = v27 + 8;
  v33(v29, v31);
  v33(v30, v31);
  if (v34)
  {
    return (*(v12 + 56))(v8, 1, 1, AssociatedTypeWitness);
  }

  (v21)(v30, v9, v31);
  (*(AssociatedConformanceWitness + 24))(v31);
  v7 = v29;
  v33(v30, v31);
  (v21)(v7, v9, v31);
  (*(AssociatedConformanceWitness + 32))(v31);
  v33(v29, v31);
  (*(v27 + 40))(v9, v30, v31);
  (*(v12 + 16))(v8, v15, AssociatedTypeWitness);
  (*(v12 + 56))(v8, 0, 1, AssociatedTypeWitness);
  return (*(v12 + 8))(v15, AssociatedTypeWitness);
}

uint64_t _OpenUSD_Sequence<>.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v17 = a3;
  v20 = a1;
  v21 = a2;
  v23 = 0;
  v24 = a1;
  v14 = *(a1 - 8);
  v15 = a1 - 8;
  v11 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1, a2, a1);
  v19 = &v11 - v11;
  v12 = (*(*(swift_getAssociatedTypeWitness() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x2A1C7C4A8](v20, v21, v4);
  v18 = &v11 - v12;
  v13 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x2A1C7C4A8](v5, v7, &v11 - v12);
  v22 = &v11 - v13;
  v23 = v3;
  (*(v9 + 40))(v8);
  (*(v21 + 48))(v20);
  (*(v14 + 16))(v19, v16, v20);
  return sub_29B0E4D50(v22, v18, v19, v20, v21, v17);
}

_DWORD *sub_29B0E5788@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_29B0E973C();
  _OpenUSD_Sequence<>.makeIterator()(a1, v2, a2);
  return sub_29A5AAB1C(v6);
}

void sub_29B0E5850()
{
  v3 = v0;
  sub_29B0E8D90(v1, v0);
  sub_29B0E8E34(v2, v1);
  sub_29A5AAAE4(v1);
  pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::operator++();
}

_DWORD *sub_29B0E591C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = sub_29B0E95E0();
  _OpenUSD_Sequence<>.makeIterator()(a1, v2, a2);
  return sub_29A5B8A54(v6);
}

void sub_29B0E59B4()
{
  v3 = v0;
  sub_29B0E8D90(v1, v0);
  sub_29B0E8E34(v2, v1);
  sub_29A5B8A1C(v1);
  pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::operator++();
}

uint64_t pxrInternal__aapl__pxrReserved__.VtDictionary.__insertUnsafe(_:)(uint64_t a1)
{
  v5 = a1;
  v4 = v1;
  Overlay::_insert(&v3);
  return v3;
}

void *sub_29B0E5C70@<X0>(void *a1@<X8>)
{
  result = a1;
  sub_29B0E954C(a1);
  return result;
}

uint64_t sub_29B0E5C8C@<X0>(uint64_t *a1@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__.VtDictionary.__findUnsafe(_:)();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B0E5CCC@<X0>(uint64_t *a1@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__.VtDictionary.__findMutatingUnsafe(_:)();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B0E5D0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__.VtDictionary.__insertUnsafe(_:)(a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3 & 1;
  return result;
}

uint64_t **sub_29B0E5D60@<X0>(const void **a1@<X0>, uint64_t ***a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::erase(v2, a1);
  *a2 = result;
  return result;
}

uint64_t *sub_29B0E5DA4@<X0>(uint64_t a1@<X0>, uint64_t **a2@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__.VtDictionary.__eraseUnsafe(_:)(*a1, *(a1 + 8));
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t sub_29B0E5DFC@<X0>(uint64_t *a1@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::begin(v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29B0E5E68@<X0>(uint64_t *a1@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_29B0E5ED4@<X0>(uint64_t *a1@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__::VtDictionary::end(v1);
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_29B0E5F40(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  sub_29B0E6044(v2, *v1, v1[1]);
}

void sub_29B0E5FC8(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

void sub_29B0E6044(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29B0BAF2C(0x38uLL);
  *a1 = v6;
  v6[5] = a2;
  v6[6] = a3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::operator*();
}

void sub_29B0E610C(uint64_t *a1)
{
  v1 = *a1;
  sub_29A1855F0(*a1);
  free(v1);
}

void sub_29B0E62D0(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  sub_29B0E63D4(v2, *v1, v1[1]);
}

void sub_29B0E6358(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v2[4](v2, 1);
  }

  else
  {
    v2[4](v2, 0);
  }

  free(v2);
}

void sub_29B0E63D4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29B0BAF2C(0xE0uLL);
  *a1 = v6;
  v6[26] = a2;
  v6[27] = a3;
  v6[20] = a2;
  v6[21] = a3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::operator*();
}

void sub_29B0E6494(void **a1, char a2)
{
  v4 = *a1;
  if ((a2 & 1) == 0)
  {
    v2 = *(v4 + 27);
    *(v4 + 24) = *(v4 + 26);
    *(v4 + 25) = v2;
    pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::operator*();
  }

  sub_29B0E87A4(v4 + 5, v4);
  v3 = *(v4 + 27);
  *(v4 + 22) = *(v4 + 26);
  *(v4 + 23) = v3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::operator*();
}

void sub_29B0E65D4(void *a1)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  sub_29B0E665C(v2, *v1, v1[1]);
}

void sub_29B0E665C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_29B0BAF2C(0x38uLL);
  *a1 = v6;
  v6[5] = a2;
  v6[6] = a3;
  pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::operator*();
}

uint64_t std.__1.map<pxrInternal__aapl__pxrReserved__.TfToken, pxrInternal__aapl__pxrReserved__.VtValue, pxrInternal__aapl__pxrReserved__.TfDictionaryLessThan, std.__1.allocator<std.__1.pair<__cxxConst<pxrInternal__aapl__pxrReserved__.TfToken>, pxrInternal__aapl__pxrReserved__.VtValue>>>.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v8[2] = *MEMORY[0x29EDCA608];
  v8[0] = 0;
  v8[1] = 0;
  v7 = a1;
  v6 = v2;
  v5 = 0;
  Overlay::_operatorSubscript(v2, a1, &v5, v8);
  if (v5)
  {
    sub_29B0C04A4(a2, v8);
    *(a2 + 16) = 0;
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
  }

  return sub_29A3D65BC(v8);
}

void sub_29B0E68CC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object, uint64_t a10, uint64_t a11)
{
  if (a2)
  {
    __break(1u);
    JUMPOUT(0x29B0E68E0);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29B0E692C@<X0>(std::string *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  sub_29B0C0434(a3, a1);
  std::string::~string(a1);
  sub_29B0C046C((a3 + 24), a2);
  return sub_29A3D65BC(a2);
}

void sub_29B0E69E0(std::string *__str)
{
  std::string::basic_string(&v3, __str);
  std::string::~string(v2);
  sub_29B0C0434(v2, &v3);
  std::string::~string(&v3);
  std::string::~string(__str);
}

void (*protocol witness for CxxPair.first.modify in conformance std.__1.pair<__cxxConst<std.__1.basic_string<CChar, std.__1.char_traits<CChar>, std.__1.allocator<CChar>>>, pxrInternal__aapl__pxrReserved__.VtValue>(void *a1))(void **a1, char a2)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  v2[4] = sub_29B0BA14C();
  return sub_29B0BA0D0;
}

unint64_t sub_29B0E6AC8()
{
  v2 = qword_2A14FAF90;
  if (!qword_2A14FAF90)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSubtreeIterator();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF90);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSubtreeIterator()
{
  v4 = qword_2A14FB050;
  if (!qword_2A14FB050)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB050);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0E6BE0(uint64_t a1)
{
  result = sub_29B0E6C0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0E6C0C()
{
  v2 = qword_2A14FAF98;
  if (!qword_2A14FAF98)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSubtreeRange();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAF98);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSubtreeRange()
{
  v4 = qword_2A14FB048;
  if (!qword_2A14FB048)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB048);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0E6D3C()
{
  v2 = qword_2A14FAFA0;
  if (!qword_2A14FAFA0)
  {
    sub_29B0B7EBC(&qword_2A14FAFA8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFA0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E6DC4(uint64_t a1)
{
  result = sub_29B0E6DF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0E6DF0()
{
  v2 = qword_2A14FAFB0;
  if (!qword_2A14FAFB0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSubtreeIterator();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFB0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E6E88()
{
  v2 = qword_2A14FAFB8;
  if (!qword_2A14FAFB8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSiblingIterator();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFB8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSiblingIterator()
{
  v4 = qword_2A14FB040;
  if (!qword_2A14FB040)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB040);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0E6FA0(uint64_t a1)
{
  result = sub_29B0E6FCC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0E6FCC()
{
  v2 = qword_2A14FAFC0;
  if (!qword_2A14FAFC0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSiblingRange();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFC0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSiblingRange()
{
  v4 = qword_2A14FB038;
  if (!qword_2A14FB038)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB038);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0E70FC()
{
  v2 = qword_2A14FAFC8;
  if (!qword_2A14FAFC8)
  {
    sub_29B0B7EBC(&qword_2A14FAFD0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFC8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E7184(uint64_t a1)
{
  result = sub_29B0E71B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_29B0E71B0()
{
  v2 = qword_2A14FAFD8;
  if (!qword_2A14FAFD8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSiblingIterator();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFD8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E7248()
{
  v2 = qword_2A14FAFE0;
  if (!qword_2A14FAFE0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFE0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E72E0()
{
  v2 = qword_2A14FAFE8;
  if (!qword_2A14FAFE8)
  {
    type metadata accessor for std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFE8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_()
{
  v4 = qword_2A14FB030;
  if (!qword_2A14FB030)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB030);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0E7410()
{
  v2 = qword_2A14FAFF0;
  if (!qword_2A14FAFF0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_const_iterator_std.__1.__tree_const_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFF0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_const_iterator_std.__1.__tree_const_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___()
{
  v4 = qword_2A14FB028;
  if (!qword_2A14FB028)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB028);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0E7540()
{
  v2 = qword_2A14FAFF8;
  if (!qword_2A14FAFF8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafeMutablePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_iterator_std.__1.__tree_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FAFF8);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafeMutablePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_iterator_std.__1.__tree_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___()
{
  v4 = qword_2A14FB020;
  if (!qword_2A14FB020)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB020);
      return v1;
    }
  }

  return v4;
}

unint64_t sub_29B0E7670()
{
  v2 = qword_2A14FB000;
  if (!qword_2A14FB000)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_const_iterator_std.__1.__tree_const_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E7708()
{
  v2 = qword_2A14FB008;
  if (!qword_2A14FB008)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafeMutablePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_iterator_std.__1.__tree_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB008);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E77A0()
{
  v2 = qword_2A14FB010;
  if (!qword_2A14FB010)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafeMutablePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_iterator_std.__1.__tree_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong___();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB010);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0E7850()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (v0 <= 0x3F)
  {
    AssociatedTypeWitness = swift_checkMetadataState();
    if (v1 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return AssociatedTypeWitness;
}

unint64_t sub_29B0E7998(char *a1, char *a2, uint64_t a3)
{
  v12 = *(*(a3 - 8) + 80);
  if ((v12 & 0x20000) != 0)
  {
    v7 = *a2;

    *a1 = v7;
    return *a1 + ((v12 + 16) & ~v12);
  }

  else
  {
    v6 = *(a3 + 16);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v5 = *(*(AssociatedTypeWitness - 8) + 16);
    v5(a1, a2);
    (v5)(&a1[*(a3 + 36)], &a2[*(a3 + 36)], AssociatedTypeWitness);
    (*(*(v6 - 8) + 16))(&a1[*(a3 + 40)], &a2[*(a3 + 40)]);
    return a1;
  }
}

uint64_t sub_29B0E7B2C(uint64_t a1, uint64_t a2)
{
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 8);
  v4(a1);
  (v4)(a1 + *(a2 + 36), AssociatedTypeWitness);
  return (*(*(v7 - 8) + 8))(a1 + *(a2 + 40));
}

uint64_t sub_29B0E7C20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 16);
  v5(a1, a2);
  (v5)(a1 + *(a3 + 36), a2 + *(a3 + 36), AssociatedTypeWitness);
  (*(*(v8 - 8) + 16))(a1 + *(a3 + 40), a2 + *(a3 + 40));
  return a1;
}

uint64_t sub_29B0E7D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 24);
  v5(a1, a2);
  (v5)(a1 + *(a3 + 36), a2 + *(a3 + 36), AssociatedTypeWitness);
  (*(*(v8 - 8) + 24))(a1 + *(a3 + 40), a2 + *(a3 + 40));
  return a1;
}

uint64_t sub_29B0E7E48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 32);
  v5(a1, a2);
  (v5)(a1 + *(a3 + 36), a2 + *(a3 + 36), AssociatedTypeWitness);
  (*(*(v8 - 8) + 32))(a1 + *(a3 + 40), a2 + *(a3 + 40));
  return a1;
}

uint64_t sub_29B0E7F5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(*(AssociatedTypeWitness - 8) + 40);
  v5(a1, a2);
  (v5)(a1 + *(a3 + 36), a2 + *(a3 + 36), AssociatedTypeWitness);
  (*(*(v8 - 8) + 40))(a1 + *(a3 + 40), a2 + *(a3 + 40));
  return a1;
}

uint64_t sub_29B0E8098(uint64_t a1, unsigned int a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (a2 == *(*(AssociatedTypeWitness - 8) + 84))
  {
    return (*(*(AssociatedTypeWitness - 8) + 48))(a1, a2, AssociatedTypeWitness);
  }

  else
  {
    v4 = *(a3 + 16);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 40), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_29B0E8238(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = swift_getAssociatedTypeWitness();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  v5 = *(a4 + 16);
  if (a3 == *(*(v5 - 8) + 84))
  {
    return (*(*(v5 - 8) + 56))(a1 + *(a4 + 40), a2, a2, v5);
  }

  __break(1u);
  return result;
}

__n128 sub_29B0E83B0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  return result;
}

uint64_t sub_29B0E83C4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 24))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 16) & 0xFE) != 0)
      {
        v3 = (*(a1 + 16) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B0E84E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    if (a3 > 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for std.__1.pair_pxrInternal__aapl__pxrReserved__.VtDictionary.Iterator_UnsafeMutablePointer_std.__1.map_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue_ std.__1.less_Void__ std.__1.allocator_std.__1.pair___cxxConst_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar____ pxrInternal__aapl__pxrReserved__.VtValue_____ std.__1.__map_iterator_std.__1.__tree_iterator_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_std.__1.__tree_node_std.__1.__value_type_std.__1.basic_string_CChar_ std.__1.char_traits_CChar__ std.__1.allocator_CChar___ pxrInternal__aapl__pxrReserved__.VtValue__ UnsafeMutablePointer_Void____ CLong____ CBool_()
{
  v4 = qword_2A14FB018;
  if (!qword_2A14FB018)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB018);
      return v1;
    }
  }

  return v4;
}

void *sub_29B0E87DC(void *a1, __int128 *a2)
{
  sub_29A1855F0(a1);
  sub_29B0E87A4(a1, a2);
  return a1;
}

std::string *sub_29B0E8890(std::string *a1, const std::string *a2)
{
  sub_29A1855F0(a1);
  sub_29B0E8858(a1, a2);
  sub_29A1855F0(a2);
  return a1;
}

_DWORD *sub_29B0E8950(_DWORD *a1, uint64_t a2)
{
  sub_29A5B8A54(a1);
  sub_29B0E8918(a1, a2);
  return a1;
}

_DWORD *sub_29B0E89F4(_DWORD *a1, _DWORD *a2)
{
  sub_29A5B8A54(a1);
  sub_29B0E89BC(a1, a2);
  sub_29A5B8A54(a2);
  return a1;
}

uint64_t sub_29B0E8A34(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 80))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 32) & 0xFE) != 0)
      {
        v3 = (*(a1 + 32) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B0E8B58(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 56) = 0;
    *(result + 64) = 0;
    *(result + 72) = 0;
    if (a3 > 0xFE)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 32) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

__n128 *sub_29B0E8DC8(__n128 *a1, __n128 *a2)
{
  sub_29A5B8A1C(a1);
  sub_29B0E8D90(a1, a2);
  return a1;
}

__n128 *sub_29B0E8E6C(__n128 *a1, __n128 *a2)
{
  sub_29A5B8A1C(a1);
  sub_29B0E8E34(a1, a2);
  sub_29A5B8A1C(a2);
  return a1;
}

uint64_t sub_29B0E8EAC(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 40))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 32) & 0xFE) != 0)
      {
        v3 = (*(a1 + 32) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B0E8FD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    if (a3 > 0xFE)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

_DWORD *sub_29B0E91CC(_DWORD *a1, uint64_t a2)
{
  sub_29A5AAB1C(a1);
  sub_29B0E8918(a1, a2);
  return a1;
}

_DWORD *sub_29B0E9238(_DWORD *a1, _DWORD *a2)
{
  sub_29A5AAB1C(a1);
  sub_29B0E89BC(a1, a2);
  sub_29A5AAB1C(a2);
  return a1;
}

__n128 *sub_29B0E9290(__n128 *a1, __n128 *a2)
{
  sub_29A5AAAE4(a1);
  sub_29B0E8D90(a1, a2);
  return a1;
}

__n128 *sub_29B0E92FC(__n128 *a1, __n128 *a2)
{
  sub_29A5AAAE4(a1);
  sub_29B0E8E34(a1, a2);
  sub_29A5AAAE4(a2);
  return a1;
}

uint64_t sub_29B0E9394(void *a1)
{
  sub_29B0C04A4(v4, a1);
  sub_29A3D65BC(v3 + 24);
  sub_29B0C046C((v3 + 24), v4);
  sub_29A3D65BC(v4);
  return sub_29A3D65BC(a1);
}

void (*sub_29B0E93FC(void *a1))(void **a1, char a2)
{
  v2 = sub_29B0BAF2C(0x28uLL);
  *a1 = v2;
  v2[4] = sub_29B0E946C();
  return sub_29B0BA0D0;
}

void pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::operator++()
{
  pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::operator++()
{
  pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment();
}

{
    ;
  }
}

unint64_t sub_29B0E95E0()
{
  v2 = qword_2A14FB058;
  if (!qword_2A14FB058)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSiblingRange();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB058);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0E973C()
{
  v2 = qword_2A14FB060;
  if (!qword_2A14FB060)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimSubtreeRange();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB060);
    return WitnessTable;
  }

  return v2;
}

std::string *sub_29B0E9874(std::string *a1, const std::string *a2)
{
  std::string::basic_string(a1, a2);
  sub_29B0C046C(a1[1].__r_.__value_.__r.__words, a2[1].__r_.__value_.__r.__words);
  return a1;
}

uint64_t sub_29B0E98C0(uint64_t a1, uint64_t a2)
{
  sub_29B0E8D90(a1, a2);
  sub_29B0E8D90((a1 + 40), (a2 + 40));
  return a1;
}

uint64_t sub_29B0E990C(uint64_t a1, uint64_t a2)
{
  sub_29B0E8E34(a1, a2);
  sub_29B0E8E34((a1 + 40), (a2 + 40));
  return a1;
}

__n128 sub_29B0E9958(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = a2->n128_u64[0];
  sub_29B0B975C(&a1->n128_u32[2], &a2->n128_u32[2]);
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  return result;
}

__n128 sub_29B0E99B8(__n128 *a1, __n128 *a2)
{
  a1->n128_u64[0] = a2->n128_u64[0];
  sub_29B0B82B8(&a1->n128_u32[2], &a2->n128_u32[2]);
  result = a2[1];
  a1[1] = result;
  a1[2].n128_u64[0] = a2[2].n128_u64[0];
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> *,std::__map_iterator<std::__tree_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment(uint64_t *a1)
{
  v5[12] = a1;
  if (!a1[1])
  {
    v1 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/vt/dictionary.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/vt/dictionary.h", v1, 0x2F);
  }

  v3 = sub_29B0E9B2C(a1);
  v5[0] = sub_29B0E9B5C();
  result = sub_29B0E9AFC(v3, v5);
  if (result)
  {
    a1[1] = 0;
  }

  return result;
}

uint64_t sub_29B0E9B5C()
{
  v1 = sub_29B0BCC78();
  sub_29B0BCCB0(&v2, v1);
  return v2;
}

BOOL pxrInternal__aapl__pxrReserved__::VtDictionary::Iterator<std::map<std::string,pxrInternal__aapl__pxrReserved__::VtValue> const*,std::__map_const_iterator<std::__tree_const_iterator<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,std::__tree_node<std::__value_type<std::string,pxrInternal__aapl__pxrReserved__::VtValue>,void *> *,long>>>::increment(uint64_t *a1)
{
  v5[12] = a1;
  if (!a1[1])
  {
    v1 = j__strrchr("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/vt/dictionary.h", 47);
    FunctionLite::substringFromPreviousDelim("/Library/Caches/com.apple.xbs/Sources/USDLib/USD/pxr/base/vt/dictionary.h", v1, 0x2F);
  }

  v3 = sub_29B0E9B2C(a1);
  v5[0] = sub_29B0E9B5C();
  result = sub_29B0E9AFC(v3, v5);
  if (result)
  {
    a1[1] = 0;
  }

  return result;
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::increment(pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator *this)
{
  pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>()
{
  pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>();
}

{
    ;
  }
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfPath::operator=()
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_MoveToNextSiblingOrParent<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  v4 = a4;
  pxrInternal__aapl__pxrReserved__::Usd_IsInstanceProxy<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>();
}

void pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetNextSibling(pxrInternal__aapl__pxrReserved__::Usd_PrimData *this)
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::BitsAs<BOOL>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_EvalPredicate<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>()
{
  pxrInternal__aapl__pxrReserved__::Usd_PrimFlagsPredicate::_Eval<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetParentLink(pxrInternal__aapl__pxrReserved__::Usd_PrimData *this)
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::BitsAs<BOOL>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::SdfPath::IsEmpty(pxrInternal__aapl__pxrReserved__::SdfPath *this)
{
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator BOOL();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetName(pxrInternal__aapl__pxrReserved__::Usd_PrimData *this)
{
  pxrInternal__aapl__pxrReserved__::Usd_PrimData::GetPath(this);
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_PrimData::IsPrototype(pxrInternal__aapl__pxrReserved__::Usd_PrimData *this)
{
  pxrInternal__aapl__pxrReserved__::Usd_PrimData::IsInPrototype(this);
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::BitsAs<BOOL>()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::_GetBits();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::Get()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::_GetPtr();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::_GetBits()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::_AsInt();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::_GetBitMask()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::GetMaxValue();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::GetMaxValue()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::_GetAlign();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::_GetPtr()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::Usd_PrimData>::_AsInt();
}

{
    ;
  }
}

uint64_t sub_29B0EA5F0(uint64_t a1, unint64_t a2, char a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  if (a2 >= 0xF)
  {
    sub_29A0F26E4("bitset set argument out of range");
  }

  v6[0] = sub_29B0C54F4(a1, v8);
  v6[1] = v3;
  sub_29B0EA7C8(v6, v7 & 1);
  return a1;
}

uint64_t sub_29B0EA670(uint64_t *a1, void *a2)
{
  v3 = *a1;
  sub_29B0EA82C(&v3, a2);
  return v3;
}

uint64_t sub_29B0EA6B0(uint64_t a1, uint64_t a2)
{
  v13 = sub_29B0EA970(a1, 0);
  LODWORD(v9) = v2;
  v12 = sub_29B0EA970(a1, 0xFuLL);
  LODWORD(v8) = v3;
  v11 = sub_29B0EA970(a2, 0);
  LODWORD(v7) = v4;
  return sub_29B0EA890(v13, v9, v12, v8, v11, v7);
}

void sub_29B0EA7A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, _Unwind_Exception *exception_object)
{
  if (a2)
  {
    sub_299FEDEEC(a1);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_29B0EA7C8(uint64_t result, char a2)
{
  if (a2)
  {
    **result |= *(result + 8);
  }

  else
  {
    **result &= ~*(result + 8);
  }

  return result;
}

uint64_t sub_29B0EA890(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (a2 == a6)
  {
    v7 = sub_29A58C574(a1, a2, a3, a4, a5) & 1;
  }

  else
  {
    v7 = sub_29B0EA9CC(a1, a2, a3, a4, a5, a6) & 1;
  }

  return v7 & 1;
}

uint64_t sub_29B0EA9CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v27 = a1;
  v28 = a2;
  v26[0] = a3;
  v26[1] = a4;
  v24 = a5;
  v25 = a6;
  v23 = 64;
  v22 = sub_29B0EAF00(v26, &v27);
  if (v22 <= 0)
  {
    goto LABEL_27;
  }

  if (!v28)
  {
LABEL_14:
    v12 = 64 - v25;
    v11 = -1 << v25;
    while (v22 >= 64)
    {
      v10 = *v27;
      if ((*v24 & v11) != v10 << v25)
      {
        v29 = 0;
        return v29 & 1;
      }

      if ((*++v24 & ~v11) != v10 >> v12)
      {
        v29 = 0;
        return v29 & 1;
      }

      v22 -= 64;
      ++v27;
    }

    if (v22 > 0)
    {
      v11 = 0xFFFFFFFFFFFFFFFFLL >> (64 - v22);
      v9 = *v27 & v11;
      v7 = v12;
      v8 = *sub_29B0EAF48(&v22, &v7);
      v11 = (-1 << v25) & (0xFFFFFFFFFFFFFFFFLL >> (v12 - v8));
      if ((*v24 & v11) != v9 << v25)
      {
        v29 = 0;
        return v29 & 1;
      }

      v24 += (v8 + v25) / 0x40;
      LODWORD(v25) = (v8 + v25) % 0x40;
      v22 -= v8;
      if (v22 > 0)
      {
        v11 = 0xFFFFFFFFFFFFFFFFLL >> (64 - v22);
        if ((*v24 & v11) != v9 >> v8)
        {
          v29 = 0;
          return v29 & 1;
        }
      }
    }

LABEL_27:
    v29 = 1;
    return v29 & 1;
  }

  v21 = 64 - v28;
  v19 = (64 - v28);
  v20 = *sub_29B0EAF48(&v19, &v22);
  v22 -= v20;
  v18 = (-1 << v28) & (0xFFFFFFFFFFFFFFFFLL >> (v21 - v20));
  v17 = *v27 & v18;
  v16 = 64 - v25;
  v14 = v20;
  v13 = (64 - v25);
  v15 = *sub_29B0DCCB8(&v14, &v13);
  v18 = (-1 << v25) & (0xFFFFFFFFFFFFFFFFLL >> (v16 - v15));
  if (v25 <= v28)
  {
    if ((*v24 & v18) != v17 >> (v28 - v25))
    {
      v29 = 0;
      return v29 & 1;
    }

    goto LABEL_9;
  }

  if ((*v24 & v18) == v17 << (v25 - v28))
  {
LABEL_9:
    v24 += (v15 + v25) / 0x40;
    LODWORD(v25) = (v15 + v25) % 0x40;
    v20 -= v15;
    if (v20 > 0)
    {
      v18 = 0xFFFFFFFFFFFFFFFFLL >> (64 - v20);
      if ((*v24 & v18) != v17 >> (v28 + v15))
      {
        v29 = 0;
        return v29 & 1;
      }

      LODWORD(v25) = v20;
    }

    ++v27;
    goto LABEL_14;
  }

  v29 = 0;
  return v29 & 1;
}

void *sub_29B0EAF78(void *a1, void *a2)
{
  if (sub_29B0EAFD0(&v6, a2, a1))
  {
    return a2;
  }

  else
  {
    return a1;
  }
}

uint64_t sub_29B0EB040(uint64_t result, uint64_t a2, int a3)
{
  *result = a2;
  *(result + 8) = a3;
  return result;
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_PrimData::IsInPrototype(pxrInternal__aapl__pxrReserved__::Usd_PrimData *this)
{
  v3[2] = this;
  v3[0] = sub_29B0C54F4(this + 56, 12);
  v3[1] = v1;
  return sub_29B0C5534(v3);
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(uint64_t a1, _DWORD *a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0BD6A4(&v2, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPrimTag,24u,8u,16384u>::Handle,true,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::swap();
}

void pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::operator=(uint64_t a1, _DWORD *a2)
{
  v4 = a1;
  v3 = a2;
  sub_29B0BD6DC(&v2, a2);
  pxrInternal__aapl__pxrReserved__::Sdf_PathNodeHandleImpl<pxrInternal__aapl__pxrReserved__::Sdf_Pool<pxrInternal__aapl__pxrReserved__::Sdf_PathPropTag,24u,8u,16384u>::Handle,false,pxrInternal__aapl__pxrReserved__::Sdf_PathNode const>::swap();
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator::dereference(pxrInternal__aapl__pxrReserved__::UsdPrimSiblingIterator *this@<X0>, uint64_t a2@<X8>)
{
  v2[2] = a2;
  v2[1] = this;
  sub_29B0EB238(v2, *this);
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::increment(pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator *this)
{
  pxrInternal__aapl__pxrReserved__::Usd_MoveToChild<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_MoveToChild<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>()
{
  pxrInternal__aapl__pxrReserved__::Usd_MoveToChild<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>();
}

{
    ;
  }
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::Usd_MoveToChild<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v6 = a2;
  v5 = a3;
  v4 = a4;
  pxrInternal__aapl__pxrReserved__::Usd_IsInstanceProxy<pxrInternal__aapl__pxrReserved__::Usd_PrimData const*>();
}

BOOL pxrInternal__aapl__pxrReserved__::Usd_PrimData::IsInstance(pxrInternal__aapl__pxrReserved__::Usd_PrimData *this)
{
  v3[2] = this;
  v3[0] = sub_29B0C54F4(this + 56, 8);
  v3[1] = v1;
  return sub_29B0C5534(v3);
}

void pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator::dereference(pxrInternal__aapl__pxrReserved__::UsdPrimSubtreeIterator *this@<X0>, uint64_t a2@<X8>)
{
  v2[2] = a2;
  v2[1] = this;
  sub_29B0EB238(v2, *this);
}

void __swiftcall pxrInternal__aapl__pxrReserved__.SdfPath.init(_:)(Swift::String a1)
{
  v2 = v1;
  v6 = 0;
  v5 = a1;
  sub_29B0C1740(a1._countAndFlagsBits, a1._object, &v3);
  pxrInternal__aapl__pxrReserved__::SdfPath::SdfPath(&v4, &v3);
  std::string::~string(&v3);
  sub_29B0B82B8(&v6, &v4);
  sub_29A1DCEA8(&v4);
  sub_29B0B975C(v2, &v6);
  sub_29A1DCEA8(&v6);
}

uint64_t String.init(_:)(pxrInternal__aapl__pxrReserved__::SdfPath *a1)
{
  v8 = 0;
  v9 = 0;
  v7 = a1;
  pxrInternal__aapl__pxrReserved__::SdfPath::GetAsString(a1, &v6);
  v4 = sub_29B0EB85C(&v6);
  v3 = v1;

  v8 = v4;
  v9 = v3;
  sub_29A1DCEA8(a1);
  sub_29B0C2DBC();
  return v4;
}

uint64_t sub_29B0EB85C(std::string *a1)
{
  sub_29B0EB9FC(a1);
  v5 = v1;
  v2 = sub_29B0C0EF0(a1);
  v3.value._rawValue = v5;
  v7 = sub_29B0EBABC(sub_29B0EBA24, 0, v3, v2);
  std::string::~string(a1);
  return v7;
}

void pxrInternal__aapl__pxrReserved__::TfToken::GetStringCopy(pxrInternal__aapl__pxrReserved__::TfToken *this)
{
  pxrInternal__aapl__pxrReserved__::TfToken::GetString(this);
}

{
    ;
  }
}

uint64_t sub_29B0EBA24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_29B0EBC88(a1, a2);
  result = static String._fromUTF8Repairing(_:)();
  *a3 = result;
  a3[1] = v4;
  return result;
}

uint64_t sub_29B0EBABC(void (*a1)(uint64_t *__return_ptr, void *, uint64_t), uint64_t a2, Swift::OpaquePointer_optional a3, uint64_t a4)
{
  if (!a3.value._rawValue)
  {
    a1(&v9, 0, 0);
    if (!v8)
    {
      return v9;
    }

    goto LABEL_7;
  }

  Int.init(bitPattern:)(a3);
  if ((a4 & 0x8000000000000000) == 0)
  {
    a1(&v9, a3.value._rawValue, a4);
    if (!v8)
    {
      return v9;
    }

LABEL_7:
    __break(1u);
    return v9;
  }

  result = _fatalErrorMessage(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_29B0EBC88(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v2 = result;
  }

  else
  {
    v2 = 0;
  }

  if ((a2 * 1) >> 64 != a2 >> 63)
  {
    goto LABEL_11;
  }

  if (a2 < 0)
  {
    result = _fatalErrorMessage(_:_:file:line:flags:)();
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  if (a2)
  {
    if (!v2)
    {
      _fatalErrorMessage(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  return v2;
}

void pxrInternal__aapl__pxrReserved__::TfToken::GetString(pxrInternal__aapl__pxrReserved__::TfToken *this)
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::Get();
}

{
    ;
  }
}

void pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::Get()
{
  pxrInternal__aapl__pxrReserved__::TfPointerAndBits<pxrInternal__aapl__pxrReserved__::TfToken::_Rep const>::_GetPtr();
}

{
    ;
  }
}

uint64_t sub_29B0EBEE4(uint64_t a1)
{
  if (sub_29B0C0ECC(a1))
  {
    return sub_29B0BCBCC(a1);
  }

  sub_29B0C0DA8();
  return v1;
}

void __swiftcall pxrInternal__aapl__pxrReserved__.UsdPrimRange.makeIterator()()
{
  v2 = v0;
  v4 = v1;
  sub_29B0EC0D8(v3, v1);
  Overlay::UsdPrimRangeIteratorWrapper::UsdPrimRangeIteratorWrapper(v2, v3);
  sub_29A58BD10(v3);
}

__C::pxrInternal__aapl__pxrReserved__::UsdPrim_optional __swiftcall Overlay.UsdPrimRangeIteratorWrapper.next()()
{
  memset(v2, 0, sizeof(v2));
  v3 = v0;
  Overlay::UsdPrimRangeIteratorWrapper::advanceAndGetCurrent(v0, v2);
  sub_29B0C4E0C();
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdPrimRange.withIterator()()
{
  v3 = v0;
  sub_29B0EC0D8(v2, v0);
  return sub_29B0ED804(v2);
}

unint64_t sub_29B0EC26C()
{
  v2 = qword_2A14FB068;
  if (!qword_2A14FB068)
  {
    type metadata accessor for Overlay.UsdPrimRangeIteratorWrapper();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB068);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for Overlay.UsdPrimRangeIteratorWrapper()
{
  v4 = qword_2A14FB080;
  if (!qword_2A14FB080)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB080);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B0EC3C4(uint64_t a1, uint64_t a2)
{
  sub_29A58BD10(a1);
  sub_29B0EC0D8(a1, a2);
  return a1;
}

uint64_t sub_29B0EC468(uint64_t a1, uint64_t a2)
{
  sub_29A58BD10(a1);
  sub_29B0EC430(a1, a2);
  sub_29A58BD10(a2);
  return a1;
}

uint64_t sub_29B0EC4A8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 40) & 0xFE) != 0)
      {
        v3 = (*(a1 + 40) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B0EC5CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 40) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdPrimRange()
{
  v4 = qword_2A14FB070;
  if (!qword_2A14FB070)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB070);
      return v1;
    }
  }

  return v4;
}

uint64_t type metadata accessor for Overlay()
{
  v4 = qword_2A14FB078;
  if (!qword_2A14FB078)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB078);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B0EC990(uint64_t a1, uint64_t a2)
{
  sub_29B0EC900(a1);
  sub_29B0EC958(a1, a2);
  return a1;
}

uint64_t sub_29B0ECA34(uint64_t a1, uint64_t a2)
{
  sub_29B0EC900(a1);
  sub_29B0EC9FC(a1, a2);
  sub_29B0EC900(a2);
  return a1;
}

uint64_t sub_29B0ECA74(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 56))
    {
      v4 = *a1 + 254;
    }

    else
    {
      v3 = -1;
      if ((*(a1 + 44) & 0xFE) != 0)
      {
        v3 = (*(a1 + 44) + 2147483646) & 0x7FFFFFFF;
      }

      v4 = v3;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_29B0ECB98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    if (a3 > 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 > 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 44) = (a2 - 1) & 1 | (2 * (((a2 - 1) >> 1) + 1));
    }
  }

  return result;
}

__n128 sub_29B0ECD84(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0B975C((a1 + 16), (a2 + 16));
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 37);
  *(a1 + 37) = result;
  return result;
}

__n128 sub_29B0ECDE4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0B82B8((a1 + 16), (a2 + 16));
  *(a1 + 24) = *(a2 + 24);
  result = *(a2 + 37);
  *(a1 + 37) = result;
  return result;
}

uint64_t sub_29B0ECE44(uint64_t a1)
{
  sub_29A58BBB4(a1 + 16);
  sub_29B0882A0(a1);
  return a1;
}

uint64_t sub_29B0ECE80(uint64_t a1, uint64_t a2)
{
  sub_29B0ECEDC(a1, a2);
  sub_29B0ECF14(a1 + 16, a2 + 16);
  result = a1;
  *(a1 + 48) = *(a2 + 48) & 1;
  return result;
}

void *sub_29B0ECF4C(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  if (a1[1])
  {
    sub_29B0ECFB8(a1[1]);
  }

  return a1;
}

uint64_t sub_29B0ED03C(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0B975C((a1 + 16), (a2 + 16));
  result = a1;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t sub_29B0ED09C(uint64_t a1, uint64_t a2)
{
  sub_29B0ED0F8(a1, a2);
  sub_29B0ED130(a1 + 16, a2 + 16);
  result = a1;
  *(a1 + 48) = *(a2 + 48) & 1;
  return result;
}

void *sub_29B0ED168(void *result, void *a2)
{
  *result = *a2;
  result[1] = a2[1];
  *a2 = 0;
  a2[1] = 0;
  return result;
}

uint64_t sub_29B0ED1A8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  sub_29B0B82B8((a1 + 16), (a2 + 16));
  result = a1;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 28) = *(a2 + 28);
  return result;
}

uint64_t sub_29B0ED208@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v5 = v1 + *(*v1 + 88);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 16))(a1, v5);
  return swift_endAccess();
}

uint64_t sub_29B0ED2C8(uint64_t a1)
{
  v10 = a1;
  v11 = *(*v1 + 80);
  v8 = *(v11 - 8);
  v9 = v11 - 8;
  v4 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1, a1, v11);
  v6 = &v3 - v4;
  (*(v8 + 16))();
  v5 = v1 + *(*v1 + 88);
  v7 = &v12;
  swift_beginAccess();
  (*(v8 + 40))(v5, v6, v11);
  swift_endAccess();
  return (*(v8 + 8))(v10, v11);
}

uint64_t sub_29B0ED528(uint64_t a1)
{
  v9 = a1;
  v12 = 0;
  v11 = 0;
  v8 = *(*v1 + 80);
  v13 = v8;
  v6 = *(v8 - 8);
  v7 = v8 - 8;
  v4 = (*(v6 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v5 = &v4 - v4;
  v12 = v2;
  v11 = v1;
  (*(v6 + 16))();
  (*(v6 + 32))(v1 + *(*v1 + 88), v5, v8);
  (*(v6 + 8))(v9, v8);
  return v10;
}

uint64_t sub_29B0ED7C8(uint64_t a1)
{

  *v1 = a1;
}

uint64_t sub_29B0ED804(uint64_t a1)
{
  v6 = 0;
  v5 = a1;
  sub_29B0B7DC8(&qword_2A14FB088);
  pxrInternal__aapl__pxrReserved__.UsdPrimRange.makeIterator()();
  v3 = sub_29B0ED4DC(v4);

  v6 = v3;
  sub_29A58BD10(a1);
  sub_29B0DBA8C();
  return v3;
}

uint64_t Overlay.UsdPrimRangeIteratedSequence.Iterator.next()@<X0>(uint64_t a1@<X8>)
{
  v13 = v1;
  v5 = *v1;

  v4 = (*(*v5 + 112))();
  Overlay.UsdPrimRangeIteratorWrapper.next()();
  v4();

  v11 = v6;
  v8 = sub_29B0B7DC8(&qword_2A14FB090);
  v2 = sub_29B0B7DC8(&qword_2A14FB098);
  sub_29B0EDABC(sub_29B0EDA90, v10, v8, MEMORY[0x29EDC9F80], v2, v9, a1);
  return sub_29B0EDDF8(v12);
}

uint64_t sub_29B0EDA28@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;

  *a3 = nullsub_1(v4);
  return sub_29A58CB08((a3 + 1), a1);
}

uint64_t sub_29B0EDABC@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v19 = a7;
  v20 = a1;
  v21 = a2;
  v22 = a3;
  v23 = a4;
  v24 = a5;
  v26 = a6;
  v40 = a4;
  v39 = a5;
  v27 = *(a4 - 8);
  v28 = a4 - 8;
  v29 = (*(v27 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x2A1C7C4A8](v7, a2, a3);
  v30 = v18 - v29;
  v36 = *(v9 + 16);
  v38 = v36;
  v34 = *(v36 - 8);
  v35 = v36 - 8;
  v31 = (*(v34 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x2A1C7C4A8](v8, v18 - v29, v36);
  v32 = v18 - v31;
  v33 = (*(*(v11 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v13 = MEMORY[0x2A1C7C4A8](v10, v18 - v31, v12);
  v37 = v18 - v33;
  sub_29B0EE1D0(v13, v18 - v33, v14, v15);
  if ((*(v34 + 48))(v37, 1, v36) == 1)
  {
    result = (*(*(v24 - 8) + 56))(v19, 1);
    v18[1] = v25;
  }

  else
  {
    (*(v34 + 32))(v32, v37, v36);
    v17 = v25;
    v20(v32, v30);
    v18[0] = v17;
    (*(v34 + 8))(v32, v36);
    if (v17)
    {
      return (*(v27 + 32))(v26, v30, v23);
    }

    else
    {
      (*(*(v24 - 8) + 56))(v19, 0, 1);
      return v18[0];
    }
  }

  return result;
}

uint64_t sub_29B0EDDF8(uint64_t a1)
{
  if ((*(a1 + 32) & 1) == 0)
  {
    sub_29A57F434(a1);
  }

  return a1;
}

Swift::Bool __swiftcall Overlay.UsdPrimRangeIteratedSequence.Iterator.View.IsPostVisit()()
{
  v1 = v0;
  v5 = v0;

  (*(*v1 + 96))(v1);

  IsPostVisit = Overlay::UsdPrimRangeIteratorWrapper::IsPostVisit(v4);
  sub_29B0EC900(v4);
  return IsPostVisit;
}

Swift::Void __swiftcall Overlay.UsdPrimRangeIteratedSequence.Iterator.View.PruneChildren()()
{
  v1 = v0;
  v5 = v0;

  v3 = (*(*v1 + 112))(v4);
  Overlay::UsdPrimRangeIteratorWrapper::PruneChildren(v2);
  v3();
}

unint64_t sub_29B0EDFA4()
{
  v2 = qword_2A14FB0A0;
  if (!qword_2A14FB0A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0A0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0EE088()
{
  inited = swift_checkMetadataState();
  if (v0 <= 0x3F)
  {
    inited = swift_initClassMetadata2();
    if (!inited)
    {
      return 0;
    }
  }

  return inited;
}

void *sub_29B0EE1D0(const void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a3 - 8);
  if ((*(v9 + 48))(a1, 1))
  {
    memcpy(a2, a1, *(*(a4 - 8) + 64));
  }

  else
  {
    (*(v9 + 16))(a2, a1, a3);
    (*(v9 + 56))(a2, 0, 1, a3);
  }

  return a2;
}

double pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(from:)(void *a1)
{
  v24 = 0.0;
  v20 = 0;
  v21 = 0;
  v19 = 0.0;
  v23[5] = a1;
  sub_29B0EE810(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v17)
  {

    v13 = 0.0;
    v14 = 1;
  }

  else
  {
    sub_29B0EE810(v23, v23[3]);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v15 = v1;
    sub_29B0EE914(v23);
    v13 = v15;
    v14 = 0;
  }

  if (v14)
  {
    sub_29B0EE810(a1, a1[3]);
    dispatch thunk of Decoder.singleValueContainer()();
    sub_29B0EE810(v22, v22[3]);
    v11 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v12 = v2;
    sub_29B0EE914(v22);
    if (v12)
    {
      v20 = v11;
      v21 = v12;
      countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("nan", 3uLL, 1)._countAndFlagsBits;
      v10 = MEMORY[0x29C2B97C0](v11, v12, countAndFlagsBits);

      if (v10)
      {
        pxrInternal__aapl__pxrReserved__::UsdTimeCode::Default(v10);
      }
    }

    v8 = type metadata accessor for DecodingError();
    swift_allocError();
    v7 = v4;
    sub_29B0B7DC8(&qword_2A14FB0A8);
    *v7 = type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode();
    sub_29B0B7DC8(&qword_2A14FB0B0);
    _allocateUninitializedArray<A>(_:)();
    String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("", 0, 1);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v8 - 8) + 104))(v7, *MEMORY[0x29EDC9DB8]);
    swift_willThrow();
    sub_29B0EE914(a1);
    return v9;
  }

  else
  {
    v19 = v13;
    v18 = 0.0;
    sub_29B0EE9E0(&v18, v13);
    v24 = v18;
    v6 = v18;
    sub_29B0EE914(a1);
    return v6;
  }
}

void *sub_29B0EE810(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode()
{
  v4 = qword_2A14FB118;
  if (!qword_2A14FB118)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v4 = ForeignTypeMetadata;
    if (!v0)
    {
      v1 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_2A14FB118);
      return v1;
    }
  }

  return v4;
}

uint64_t sub_29B0EE914(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

double pxrInternal__aapl__pxrReserved__::UsdTimeCode::Default(pxrInternal__aapl__pxrReserved__::UsdTimeCode *this)
{
  v1 = sub_29B0F1FF4();
  sub_29B0EE9E0(&v3, v1);
  return v3;
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.encode(to:)(void *a1, double a2)
{
  v3[7] = a1;
  *&v3[6] = a2;
  sub_29B0EE810(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  *v3 = a2;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v3);
}

void pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(pxrInternal__aapl__pxrReserved__::UsdTimeCode *this)
{
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::IsDefault(this);
}

{
    ;
  }
}

uint64_t sub_29B0EEC7C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

void sub_29B0EECFC(void *a1@<X0>, double *a2@<X8>)
{
  v4 = pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(from:)(a1);
  if (!v2)
  {
    *a2 = v4;
  }
}

void __swiftcall pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(integerLiteral:)(Swift::Int integerLiteral)
{
  v1[2] = 0.0;
  *&v1[1] = integerLiteral;
  v1[0] = 0.0;
  sub_29B0EE9E0(v1, integerLiteral);
}

void __swiftcall pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(floatLiteral:)(Swift::Double floatLiteral)
{
  v1[2] = 0.0;
  v1[1] = floatLiteral;
  v1[0] = 0.0;
  sub_29B0EE9E0(v1, floatLiteral);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdTimeCode.init<A>(exactly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  v15 = a2;
  v16 = a3;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v23 = a2;
  v14 = *(a2 - 8);
  v12 = a2 - 8;
  v13 = (*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a3, a1, a2);
  v17 = &v6 - v13;
  v21 = v3;
  (*(v14 + 16))();
  v18 = sub_29B0EF04C(v17, v15);
  if (v4)
  {
    (*(v14 + 8))(v11, v15);
    v8 = 0;
    v9 = 1;
  }

  else
  {
    v10 = v18;
    v20 = v18;
    v19 = 0;
    sub_29B0EE9E0(&v19, *&v18);
    v7 = v19;
    v22 = v19;
    (*(v14 + 8))(v11, v15);
    v8 = v7;
    v9 = 0;
  }

  return v8;
}

uint64_t sub_29B0EF04C(uint64_t a1, uint64_t a2)
{
  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    sub_29B0F1F04();
    sub_29B0F1F7C();
    v5 = static BinaryFloatingPoint<>._convert<A>(from:)();
    (*(*(a2 - 8) + 8))(a1);
    if ((v5 & 1) == 0)
    {
      return 0;
    }

    v8 = v13;
    return *&v8;
  }

  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v6 = dispatch thunk of BinaryInteger._lowWord.getter();
    v2.n128_f64[0] = v6;
    v7 = v6;
    if (v6 >= 9.22337204e18)
    {
      goto LABEL_4;
    }

    if (((*&v7 >> 52) & 0x7FFLL) == 0x7FF)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v2.n128_u64[0] = 0xC3E0000000000001;
    if (v7 <= -9.22337204e18)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    (*(*(a2 - 8) + 8))(a1, v2);
    if (v7 != v6)
    {
      return 0;
    }

    v8 = v6;
    return *&v8;
  }

  v9 = dispatch thunk of BinaryInteger._lowWord.getter();
  v2.n128_f64[0] = v9;
  v10 = v9;
  if (v9 < 1.84467441e19)
  {
    if (((*&v10 >> 52) & 0x7FFLL) == 0x7FF)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v2.n128_u64[0] = -1.0;
    if (v10 <= -1.0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    (*(*(a2 - 8) + 8))(a1, v2);
    if (v10 != v9)
    {
      return 0;
    }

    v8 = v9;
    return *&v8;
  }

LABEL_4:
  (*(*(a2 - 8) + 8))(a1, v2.n128_f64[0]);
  return 0;
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.magnitude.getter(double a1)
{
  *&v1[2] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void static pxrInternal__aapl__pxrReserved__.UsdTimeCode.* infix(_:_:)(double a1, double a2)
{
  *&v2[3] = a1;
  *&v2[2] = a2;
  *v2 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v2);
}

uint64_t sub_29B0EF5F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = pxrInternal__aapl__pxrReserved__.UsdTimeCode.init<A>(exactly:)(a1, a2, a3);
  *a4 = result;
  *(a4 + 8) = v5 & 1;
  return result;
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.round(_:)(uint64_t a1)
{
  v5 = a1;
  v4[3] = "Fatal error";
  v4[4] = "Unexpectedly found nil while unwrapping an Optional value";
  v4[5] = "Swift/FloatingPointTypes.swift";
  v13 = 0;
  v12 = 0;
  v11[1] = 0;
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v7 = *(v6 - 8);
  v8 = v6 - 8;
  v9 = (*(v7 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = v4 - v9;
  v13 = MEMORY[0x2A1C7C4A8](v5, v2, v3);
  v12 = v1;
  v11[0] = *v1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v11);
}

void static pxrInternal__aapl__pxrReserved__.UsdTimeCode./ infix(_:_:)(double a1, double a2)
{
  *&v2[3] = a1;
  *&v2[2] = a2;
  *v2 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v2);
}

void static pxrInternal__aapl__pxrReserved__.UsdTimeCode.- infix(_:_:)(double a1, double a2)
{
  *&v2[3] = a1;
  *&v2[2] = a2;
  *v2 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v2);
}

void static pxrInternal__aapl__pxrReserved__.UsdTimeCode.+ infix(_:_:)(double a1, double a2)
{
  *&v2[3] = a1;
  *&v2[2] = a2;
  *v2 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v2);
}

double pxrInternal__aapl__pxrReserved__.UsdTimeCode.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1;
  v10 = a2;
  v6[1] = a3;
  v14 = 0.0;
  v13 = 0;
  v15 = a2;
  v8 = *(a2 - 8);
  v9 = a2 - 8;
  v6[0] = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a3, a1, a2);
  v6[2] = v6 - v6[0];
  v13 = v3;
  (*(v8 + 16))();
  Double.init<A>(_:)();
  v12 = 0.0;
  sub_29B0EE9E0(&v12, v4);
  v11 = v12;
  v14 = v12;
  (*(v8 + 8))(v7, v10);
  return v11;
}

void __swiftcall pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(_:)(Swift::Int a1)
{
  v1[2] = 0.0;
  *&v1[1] = a1;
  v1[0] = 0.0;
  sub_29B0EE9E0(v1, a1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(sign:exponent:significand:)(char a1, uint64_t a2, double a3)
{
  v5 = 0;
  v4 = a1 & 1;
  v3[3] = a2;
  *&v3[2] = a3;
  *v3 = a3;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v3);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.exponent.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

double static pxrInternal__aapl__pxrReserved__.UsdTimeCode.signalingNaN.getter()
{
  static Double.signalingNaN.getter();
  v2 = 0.0;
  sub_29B0EE9E0(&v2, v0);
  return v2;
}

double static pxrInternal__aapl__pxrReserved__.UsdTimeCode.infinity.getter()
{
  static Double.infinity.getter();
  v2 = 0.0;
  sub_29B0EE9E0(&v2, v0);
  return v2;
}

double static pxrInternal__aapl__pxrReserved__.UsdTimeCode.greatestFiniteMagnitude.getter()
{
  static Double.greatestFiniteMagnitude.getter();
  v2 = 0.0;
  sub_29B0EE9E0(&v2, v0);
  return v2;
}

double static pxrInternal__aapl__pxrReserved__.UsdTimeCode.pi.getter()
{
  static Double.pi.getter();
  v2 = 0.0;
  sub_29B0EE9E0(&v2, v0);
  return v2;
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.ulp.getter(double a1)
{
  *&v1[2] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

double static pxrInternal__aapl__pxrReserved__.UsdTimeCode.leastNormalMagnitude.getter()
{
  static Double.leastNormalMagnitude.getter();
  v2 = 0.0;
  sub_29B0EE9E0(&v2, v0);
  return v2;
}

double static pxrInternal__aapl__pxrReserved__.UsdTimeCode.leastNonzeroMagnitude.getter()
{
  static Double.leastNonzeroMagnitude.getter();
  v2 = 0.0;
  sub_29B0EE9E0(&v2, v0);
  return v2;
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.sign.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.significand.getter(double a1)
{
  *&v1[2] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.formRemainder(dividingBy:)(double a1)
{
  v2[1] = 0;
  v4 = a1;
  v3 = v1;
  v2[0] = *v1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v2);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.formTruncatingRemainder(dividingBy:)(double a1)
{
  v2[1] = 0;
  v4 = a1;
  v3 = v1;
  v2[0] = *v1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v2);
}

Swift::Void __swiftcall pxrInternal__aapl__pxrReserved__.UsdTimeCode.formSquareRoot()()
{
  v1[1] = 0;
  v2 = v0;
  v1[0] = *v0;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.addProduct(_:_:)(double a1, double a2)
{
  v3[1] = 0;
  v6 = a1;
  v5 = a2;
  v4 = v2;
  v3[0] = *v2;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v3);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.nextUp.getter(double a1)
{
  *&v1[2] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

BOOL pxrInternal__aapl__pxrReserved__.UsdTimeCode.isLess(than:)(double a1, double a2, uint64_t a3, uint64_t a4, const pxrInternal__aapl__pxrReserved__::UsdTimeCode *a5)
{
  *&v7[2] = a1;
  *&v7[1] = a2;
  *v7 = a2;
  v6 = a1;
  return Overlay::__operatorLess(v7, &v6, a5);
}

uint64_t pxrInternal__aapl__pxrReserved__.UsdTimeCode.isLessThanOrEqualTo(_:)(double a1, double a2, uint64_t a3, uint64_t a4, const pxrInternal__aapl__pxrReserved__::UsdTimeCode *a5)
{
  *&v13[2] = a1;
  *&v13[1] = a2;
  *v13 = a2;
  v12 = a1;
  if (Overlay::__operatorLess(v13, &v12, a5))
  {
    v7 = 1;
  }

  else
  {
    v11 = a2;
    v10 = a1;
    v7 = Overlay::__operatorEqualsEquals(&v11, &v10, v5);
  }

  return v7 & 1;
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isNormal.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isFinite.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isZero.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isSubnormal.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isInfinite.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isNaN.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isSignalingNaN.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.isCanonical.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

double pxrInternal__aapl__pxrReserved__.UsdTimeCode.init(sign:exponentBitPattern:significandBitPattern:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v6 = a1 & 1;
  *&v5[2] = a2;
  *&v5[1] = a3;
  Double.init(sign:exponentBitPattern:significandBitPattern:)();
  v5[0] = 0.0;
  sub_29B0EE9E0(v5, v3);
  return v5[0];
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.exponentBitPattern.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.significandBitPattern.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.binade.getter(double a1)
{
  *&v1[2] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

void pxrInternal__aapl__pxrReserved__.UsdTimeCode.significandWidth.getter(double a1)
{
  *&v1[1] = a1;
  *v1 = a1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(v1);
}

double *sub_29B0F10B0@<X0>(double *a1@<X8>, double a2@<D0>)
{
  result = a1;
  sub_29B0EEA18(a1, a2);
  return result;
}

void __swiftcall pxrInternal__aapl__pxrReserved__.UsdTimeCode.distance(to:)()
{
  v4 = v0;
  v3 = v1;
  v2 = v1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(&v2);
}

void __swiftcall pxrInternal__aapl__pxrReserved__.UsdTimeCode.advanced(by:)()
{
  v4 = v0;
  v3 = v1;
  v2 = v1;
  pxrInternal__aapl__pxrReserved__::UsdTimeCode::GetValue(&v2);
}

unint64_t sub_29B0F1344()
{
  v2 = qword_2A14FB0B8;
  if (!qword_2A14FB0B8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F13DC()
{
  v2 = qword_2A14FB0C0;
  if (!qword_2A14FB0C0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1474()
{
  v2 = qword_2A14FB0C8;
  if (!qword_2A14FB0C8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F150C()
{
  v2 = qword_2A14FB0D0;
  if (!qword_2A14FB0D0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F15A4()
{
  v2 = qword_2A14FB0D8;
  if (!qword_2A14FB0D8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F163C()
{
  v2 = qword_2A14FB0E0;
  if (!qword_2A14FB0E0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F16D4()
{
  v2 = qword_2A14FB0E8;
  if (!qword_2A14FB0E8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1784()
{
  v2 = qword_2A14FB0F0;
  if (!qword_2A14FB0F0)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0F0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F181C()
{
  v2 = qword_2A14FB0F8;
  if (!qword_2A14FB0F8)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB0F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F18B4()
{
  v2 = qword_2A14FB100;
  if (!qword_2A14FB100)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB100);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1944()
{
  v2 = qword_2A14FB108;
  if (!qword_2A14FB108)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB108);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1AA4()
{
  v2 = qword_2A14FB110;
  if (!qword_2A14FB110)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB110);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_29B0F1BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v13 = a3;
  v9 = a4;
  v14 = a3;
  v10 = *(a3 - 8);
  v11 = a3 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a2, a1, a3);
  v12 = &v5 - v6;
  (*(v10 + 32))();
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_29B0F1D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  v8 = a2;
  v13 = a3;
  v9 = a4;
  v14 = a3;
  v10 = *(a3 - 8);
  v11 = a3 - 8;
  v6 = (*(v10 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a2, a1, a3);
  v12 = &v5 - v6;
  (*(v10 + 32))();
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  return (*(v10 + 8))(v12, v13);
}

unint64_t sub_29B0F1E0C()
{
  v2 = qword_2A14FB120;
  if (!qword_2A14FB120)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB120);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1E84()
{
  v2 = qword_2A14FB128;
  if (!qword_2A14FB128)
  {
    type metadata accessor for pxrInternal__aapl__pxrReserved__.UsdTimeCode();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB128);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1F04()
{
  v2 = qword_2A14FB130;
  if (!qword_2A14FB130)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB130);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_29B0F1F7C()
{
  v2 = qword_2A14FB138;
  if (!qword_2A14FB138)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_2A14FB138);
    return WitnessTable;
  }

  return v2;
}

uint64_t static _VtArray_Equatable.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v25 = a1;
  v38 = a2;
  v40 = a3;
  v39 = a4;
  v5 = v4;
  v6 = v25;
  v29 = v5;
  v26 = "Fatal error";
  v27 = "Range requires lowerBound <= upperBound";
  v28 = "Swift/Range.swift";
  v52 = 0;
  v51 = 0;
  v50 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v42 = 0;
  v53 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v31 = *(AssociatedTypeWitness - 8);
  v32 = AssociatedTypeWitness - 8;
  v34 = *(v31 + 64);
  v33 = (v34 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x2A1C7C4A8](v40, v39, v7);
  v35 = &v15[-v33];
  v36 = v33;
  v10 = MEMORY[0x2A1C7C4A8](v8, v9, &v15[-v33]);
  v37 = &v15[-v36];
  v52 = v6;
  v51 = v38;
  v50 = v11;
  v41 = (*(v12 + 32))(v10);
  v13 = (*(v39 + 32))(v40);
  if (v41 == v13)
  {
    v24 = (*(v39 + 32))(v40);
    if (v24 < 0)
    {
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    v45 = 0;
    v46 = v24;
    v23 = sub_29B0B7DC8(&qword_2A14FA610);
    sub_29B0C5DA4();
    Collection<>.makeIterator()();
    while (1)
    {
      sub_29B0B7DC8(&qword_2A14FA628);
      IndexingIterator.next()();
      v22 = v43;
      if (v44)
      {
        break;
      }

      v21 = v22;
      v17 = v22;
      v42 = v22;
      (*(v39 + 40))();
      (*(v39 + 40))(v17, v40);
      swift_getAssociatedConformanceWitness();
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      v19 = *(v31 + 8);
      v18 = v31 + 8;
      v19(v35, AssociatedTypeWitness);
      v19(v37, AssociatedTypeWitness);
      if ((v20 & 1) == 0)
      {
        v16 = 0;
        return v16 & 1;
      }
    }

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t _VtArray_ExpressibleByArrayLiteral<>.init(arrayLiteral:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v15 = a4;
  v32 = a1;
  v30 = a2;
  v20 = a3;
  v34 = MEMORY[0x29EDC9A88];
  v42 = 0;
  v41 = 0;
  v40 = 0;
  v35 = v39;
  v39[0] = 0;
  v39[1] = 0;
  v43 = a2;
  v31 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(AssociatedTypeWitness - 8);
  v17 = AssociatedTypeWitness - 8;
  v18 = (*(v16 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](0, AssociatedTypeWitness, v4);
  v19 = &v14 - v18;
  v42 = &v14 - v18;
  v21 = (*(*(type metadata accessor for Optional() - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v6 = MEMORY[0x2A1C7C4A8](v30, v20, v5);
  v22 = &v14 - v21;
  v26 = *(v6 - 8);
  v27 = v6 - 8;
  v24 = *(v26 + 64);
  v23 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x2A1C7C4A8](v6, v7, &v14 - v21);
  v29 = &v14 - v23;
  v25 = (v24 + 15) & 0xFFFFFFFFFFFFFFF0;
  v11 = MEMORY[0x2A1C7C4A8](v8, v9, v10);
  v28 = &v14 - v25;
  v41 = &v14 - v25;
  v40 = v32;
  (*(v12 + 24))(v11);
  (*(v26 + 32))(v28, v29, v30);

  v38 = v32;
  v36 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  Collection<>.makeIterator()();
  while (1)
  {
    type metadata accessor for IndexingIterator();
    IndexingIterator.next()();
    if ((*(v16 + 48))(v22, 1, AssociatedTypeWitness) == 1)
    {
      break;
    }

    (*(v16 + 32))(v19, v22, AssociatedTypeWitness);
    (*(v20 + 32))(v19, v30);
    (*(v16 + 8))(v19, AssociatedTypeWitness);
  }

  sub_29B0B7F30();
  (*(v26 + 16))(v15, v28, v30);

  return (*(v26 + 8))(v28, v30);
}

uint64_t _VtArray_CustomStringConvertible.description.getter(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v20 = v2;
  v3 = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("[", 1uLL, 1);
  v17 = a1;
  v18 = a2;
  v19 = sub_29B0C6190(sub_29B0F2B2C, v16, a1, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9F80], *(a2 + 16), MEMORY[0x29EDC9F90], v15);
  String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(", ", 2uLL, 1);
  sub_29B0B7DC8(&qword_2A14FA630);
  sub_29B0C6D54();
  v8 = BidirectionalCollection<>.joined(separator:)();
  v9 = v4;

  sub_29B0B7F30();
  v10 = MEMORY[0x29C2B97A0](v3._countAndFlagsBits, v3._object, v8, v9);
  v11 = v5;

  countAndFlagsBits = String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)("]", 1uLL, 1)._countAndFlagsBits;
  v12 = MEMORY[0x29C2B97A0](v10, v11, countAndFlagsBits);

  return v12;
}

uint64_t sub_29B0F2A7C@<X0>(uint64_t *a1@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a1 = result;
  a1[1] = v2;
  return result;
}

uint64_t sub_29B0F2B90(uint64_t a1, uint64_t a2)
{
  v11 = a1;
  v6 = a2;
  v10 = *(a2 + 16);
  v8 = *(v10 - 8);
  v9 = v10 - 8;
  v5 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8]();
  v7 = &v4 - v5;
  (*(v8 + 16))();
  (*(v8 + 40))(v2 + *(v6 + 40), v7, v10);
  return (*(v8 + 8))(v11, v10);
}

uint64_t sub_29B0F2CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v19 = a6;
  v16 = a1;
  v17 = a2;
  v22 = a3;
  v24 = a4;
  v13 = a5;
  v12[1] = &protocol descriptor for _VtArray_Sequence;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v30 = a4;
  v20 = *(a4 - 8);
  v21 = a4 - 8;
  v12[0] = (*(v20 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](a1, a4, a5);
  v18 = v12 - v12[0];
  v14 = 0;
  v25 = type metadata accessor for _VtArray_Sequence_Iterator();
  v15 = (*(*(v25 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v14, v13, v24);
  v23 = v12 - v15;
  v29 = v12 - v15;
  v28 = v16;
  swift_getAssociatedTypeWitness();
  v6 = v16;
  v7 = v17;
  v8 = v20;
  v9 = v23;
  v10 = v18;
  v27 = v17;
  v26 = v22;
  *v23 = 0;
  *(v9 + 1) = 0;
  *v9 = v6;
  *(v9 + 1) = v7;
  (*(v8 + 16))(v10);
  (*(v20 + 32))(&v23[*(v25 + 40)], v18, v24);
  sub_29B0F2F00(v23, v19, v24, v25);
  (*(v20 + 8))(v22, v24);
  return sub_29B0F2F78(v23, v24, v25);
}

char *sub_29B0F2F00(char *a1, char *a2, uint64_t a3, uint64_t a4)
{
  *a2 = *a1;
  *(a2 + 1) = *(a1 + 1);
  (*(*(a3 - 8) + 16))(&a2[*(a4 + 40)], &a1[*(a4 + 40)]);
  return a2;
}

uint64_t _VtArray_Sequence_Iterator.next()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v16 = a2;
  v28 = 0;
  v27 = 0;
  v29 = *(a1 + 16);
  v18 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v20 = type metadata accessor for Optional();
  v21 = (*(*(v20 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x2A1C7C4A8](v20, v3, v4);
  v22 = &v12 - v21;
  v28 = &v12 - v21;
  v27 = v2;
  v23 = *v2;
  v5 = v2[1];
  v25 = v23;
  v26 = v5;
  if (v23)
  {
    v24 = v23;
    if (v26)
    {
      v15 = v24 == v26;
      goto LABEL_7;
    }

    goto LABEL_9;
  }

  if (v26)
  {
LABEL_9:
    v15 = 0;
    goto LABEL_7;
  }

  v15 = 1;
LABEL_7:
  if (v15)
  {
    return (*(*(AssociatedTypeWitness - 8) + 56))(v16, 1);
  }

  if (*v17)
  {
    v7 = *v17;
    v13 = *(AssociatedTypeWitness - 8);
    v14 = AssociatedTypeWitness - 8;
    (*(v13 + 16))(v22, v7);
    (*(v13 + 56))(v22, 0, 1, AssociatedTypeWitness);
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v22, 1);
  }

  if (*v17)
  {
    v12 = *v17 + *(*(AssociatedTypeWitness - 8) + 72);
  }

  else
  {
    v12 = 0;
  }

  v8 = v20;
  v9 = AssociatedTypeWitness;
  v10 = v22;
  v11 = v16;
  *v17 = v12;
  sub_29B0F32A4(v10, v11, v9, v8);
  return sub_29B0DBAB8(v22, AssociatedTypeWitness);
}