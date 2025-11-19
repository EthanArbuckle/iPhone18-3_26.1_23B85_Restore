uint64_t TTSVBError.init(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  v8 = type metadata accessor for TTSVBError(0);
  result = sub_233144E3C(a2, a4 + *(v8 + 20), type metadata accessor for TTSVBError.Reason);
  *(a4 + *(v8 + 24)) = a3;
  return result;
}

uint64_t TTSVBError.init(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(*(type metadata accessor for TTSVBError.Reason(0) - 8) + 64);
  v13 = (MEMORY[0x28223BE20])();
  v15 = (&v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = 0;
  if (a4)
  {
    *v15 = a3;
    v15[1] = a4;
    swift_storeEnumTagMultiPayload();
    sub_233144E3C(v15, v17, type metadata accessor for TTSVBError.Reason);
  }

  else
  {
    swift_storeEnumTagMultiPayload();
  }

  v18 = type metadata accessor for TTSVBError(0);
  result = sub_233144E3C(v17, a6 + *(v18 + 20), type metadata accessor for TTSVBError.Reason);
  *(a6 + *(v18 + 24)) = a5;
  return result;
}

uint64_t static TTSVBError.map(_:_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B38, &unk_2332909A0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v19 - v8;
  v10 = *a2;
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v19[1] = a1;
  v13 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
  v14 = type metadata accessor for TTSVBError(0);
  v15 = swift_dynamicCast();
  v16 = *(*(v14 - 8) + 56);
  if (v15)
  {
    v16(v9, 0, 1, v14);
    return sub_233144E3C(v9, a3, type metadata accessor for TTSVBError);
  }

  else
  {
    v16(v9, 1, 1, v14);
    sub_233121E04(v9, &qword_27DDE1B38, &unk_2332909A0);
    v18 = *(v14 + 20);
    type metadata accessor for TTSVBError.Reason(0);
    swift_storeEnumTagMultiPayload();
    sub_233144054(v10, v11, v12);
    result = sub_23328CA6C();
    *a3 = v10;
    *(a3 + 8) = v11;
    *(a3 + 16) = v12;
    *(a3 + *(v14 + 24)) = result;
  }

  return result;
}

void static TTSVBError.perform<A>(_:orThrow:)(void (*a1)(void), uint64_t a2, void (*a3)(void))
{
  a1();
  if (v3)
  {
    type metadata accessor for TTSVBError(0);
    sub_23314400C(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    a3();
    swift_willThrow();
  }
}

void static TTSVBError.perform<A>(_:errorTransform:)(void (*a1)(void), uint64_t a2, void (*a3)(void *))
{
  a1();
  if (v3)
  {
    type metadata accessor for TTSVBError(0);
    sub_23314400C(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    a3(v3);
    swift_willThrow();
  }
}

void static TTSVBError.perform<A>(_:problem:reason:)(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19 = a4;
  v7 = type metadata accessor for TTSVBError.Reason(0);
  v8 = *(*(v7 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v7 - 8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 16);
  a1(v9);
  if (v4)
  {
    sub_23314406C(v19, v11, type metadata accessor for TTSVBError.Reason);
    sub_233144054(v12, v13, v14);
    v19 = sub_23328CA6C();
    v15 = type metadata accessor for TTSVBError(0);
    sub_23314400C(&qword_280D3A0B0, type metadata accessor for TTSVBError);
    swift_allocError();
    v17 = v16;
    *v16 = v12;
    *(v16 + 8) = v13;
    *(v16 + 16) = v14;
    sub_233144E3C(v11, v16 + *(v15 + 20), type metadata accessor for TTSVBError.Reason);
    *(v17 + *(v15 + 24)) = v19;
    swift_willThrow();
  }
}

uint64_t static TTSVBError.unwrap<A>(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v8 = sub_23328E00C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v12 = v15 - v11;
  (*(v9 + 16))(v15 - v11, a1, v8);
  v13 = *(a3 - 8);
  if ((*(v13 + 48))(v12, 1, a3) != 1)
  {
    return (*(v13 + 32))(a4, v12, a3);
  }

  (*(v9 + 8))(v12, v8);
  type metadata accessor for TTSVBError(0);
  sub_23314400C(&qword_280D3A0B0, type metadata accessor for TTSVBError);
  swift_allocError();
  a2();
  return swift_willThrow();
}

uint64_t static TTSVBError.unwrap<A>(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26 = a5;
  v27 = a3;
  v8 = type metadata accessor for TTSVBError.Reason(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23328E00C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v26 - v16;
  v18 = *(a2 + 8);
  v28 = *a2;
  v19 = *(a2 + 16);
  (*(v13 + 16))(&v26 - v16, a1, v12, v15);
  v20 = *(a4 - 8);
  if ((*(v20 + 48))(v17, 1, a4) != 1)
  {
    return (*(v20 + 32))(v26, v17, a4);
  }

  (*(v13 + 8))(v17, v12);
  sub_23314406C(v27, v11, type metadata accessor for TTSVBError.Reason);
  v21 = type metadata accessor for TTSVBError(0);
  sub_23314400C(&qword_280D3A0B0, type metadata accessor for TTSVBError);
  swift_allocError();
  v23 = v22;
  v24 = v28;
  *v22 = v28;
  *(v22 + 8) = v18;
  *(v22 + 16) = v19;
  sub_233144E3C(v11, v22 + *(v21 + 20), type metadata accessor for TTSVBError.Reason);
  *(v23 + *(v21 + 24)) = 0;
  swift_willThrow();
  return sub_233144054(v24, v18, v19);
}

void __swiftcall TTSVBError.convertToNSError()(NSError *__return_ptr retstr)
{
  sub_233145024(MEMORY[0x277D84F90]);
  v1 = *MEMORY[0x277CCA450];
  v2 = sub_23328D98C();
  v4 = v3;
  v5 = MEMORY[0x277D837D0];
  v28 = MEMORY[0x277D837D0];
  *&v27 = 0xD000000000000011;
  *(&v27 + 1) = 0x80000002332A5420;
  sub_233145134(&v27, v26);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_23314474C(v26, v2, v4, isUniquelyReferenced_nonNull_native);

  strcpy(&v27, "Error Code: ");
  BYTE13(v27) = 0;
  HIWORD(v27) = -5120;
  v7 = *(type metadata accessor for TTSVBError(0) + 20);
  *&v26[0] = TTSVBError.Reason.errorCode.getter();
  v8 = sub_23328E51C();
  MEMORY[0x23839B7E0](v8);

  v9 = v27;
  v10 = *MEMORY[0x277CCA470];
  v11 = sub_23328D98C();
  v13 = v12;
  v28 = v5;
  v27 = v9;
  sub_233145134(&v27, v26);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_23314474C(v26, v11, v13, v14);

  v15 = *MEMORY[0x277CCA068];
  v16 = sub_23328D98C();
  v18 = v17;
  v19 = TTSVBError.description.getter();
  v28 = v5;
  *&v27 = v19;
  *(&v27 + 1) = v20;
  sub_233145134(&v27, v26);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_23314474C(v26, v16, v18, v21);

  v22 = TTSVBError.Reason.errorCode.getter();
  v23 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  v24 = sub_23328D95C();
  v25 = sub_23328D87C();

  [v23 initWithDomain:v24 code:v22 userInfo:v25];
}

void TTSVBError.hash(into:)()
{
  v1 = v0;
  v6 = *v0;
  v7 = *(v0 + 16);
  TTSVBError.Problem.hash(into:)();
  v2 = type metadata accessor for TTSVBError(0);
  v3 = v0 + *(v2 + 20);
  TTSVBError.Reason.hash(into:)();
  v4 = *(v1 + *(v2 + 24));
  if (v4)
  {
    sub_23328E63C();
    v5 = v4;
    sub_23328DFEC();
  }

  else
  {
    sub_23328E63C();
  }
}

uint64_t TTSVBError.hashValue.getter()
{
  v1 = v0;
  sub_23328E61C();
  v7 = *v0;
  v8 = *(v0 + 16);
  TTSVBError.Problem.hash(into:)();
  v2 = type metadata accessor for TTSVBError(0);
  v3 = v0 + *(v2 + 20);
  TTSVBError.Reason.hash(into:)();
  v4 = *(v1 + *(v2 + 24));
  sub_23328E63C();
  if (v4)
  {
    v5 = v4;
    sub_23328DFEC();
  }

  return sub_23328E66C();
}

uint64_t sub_23312D13C(uint64_t a1)
{
  strcpy(v5, "Error Code: ");
  BYTE5(v5[1]) = 0;
  HIWORD(v5[1]) = -5120;
  v2 = v1 + *(a1 + 20);
  TTSVBError.Reason.errorCode.getter();
  v3 = sub_23328E51C();
  MEMORY[0x23839B7E0](v3);

  return v5[0];
}

uint64_t sub_23312D1F0(uint64_t a1)
{
  v3 = v1;
  sub_23328E61C();
  v8 = *v1;
  v9 = *(v1 + 16);
  TTSVBError.Problem.hash(into:)();
  v4 = v1 + *(a1 + 20);
  TTSVBError.Reason.hash(into:)();
  v5 = *(v3 + *(a1 + 24));
  sub_23328E63C();
  if (v5)
  {
    v6 = v5;
    sub_23328DFEC();
  }

  return sub_23328E66C();
}

void sub_23312D2A0(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v8 = *v2;
  v9 = *(v2 + 16);
  TTSVBError.Problem.hash(into:)();
  v5 = v2 + *(a2 + 20);
  TTSVBError.Reason.hash(into:)();
  v6 = *(v4 + *(a2 + 24));
  if (v6)
  {
    sub_23328E63C();
    v7 = v6;
    sub_23328DFEC();
  }

  else
  {
    sub_23328E63C();
  }
}

uint64_t sub_23312D364(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_23328E61C();
  v9 = *v2;
  v10 = *(v2 + 16);
  TTSVBError.Problem.hash(into:)();
  v5 = v2 + *(a2 + 20);
  TTSVBError.Reason.hash(into:)();
  v6 = *(v4 + *(a2 + 24));
  sub_23328E63C();
  if (v6)
  {
    v7 = v6;
    sub_23328DFEC();
  }

  return sub_23328E66C();
}

unint64_t sub_23312D458(char a1)
{
  result = 0x6D6F74737563;
  switch(a1)
  {
    case 1:
      result = 0x6669636570736E75;
      break;
    case 2:
    case 22:
    case 30:
      result = 0xD000000000000018;
      break;
    case 3:
    case 16:
      result = 0xD00000000000001FLL;
      break;
    case 4:
    case 11:
      result = 0xD00000000000001DLL;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    case 6:
    case 26:
    case 28:
      result = 0xD000000000000014;
      break;
    case 7:
    case 21:
    case 23:
    case 24:
      result = 0xD000000000000017;
      break;
    case 8:
    case 20:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0xD000000000000016;
      break;
    case 10:
      result = 0xD000000000000016;
      break;
    case 12:
    case 19:
      result = 0xD000000000000013;
      break;
    case 13:
    case 17:
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 14:
      result = 0xD00000000000001BLL;
      break;
    case 15:
      result = 0xD00000000000001CLL;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 27:
      result = 0xD000000000000016;
      break;
    case 29:
      result = 0xD000000000000027;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23312D724@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23315064C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23312D758(uint64_t a1)
{
  v2 = sub_233147CDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312D794(uint64_t a1)
{
  v2 = sub_233147CDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312D7DC(uint64_t a1)
{
  v2 = sub_233148564();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312D818(uint64_t a1)
{
  v2 = sub_233148564();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312D854(uint64_t a1)
{
  v2 = sub_2331484BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312D890(uint64_t a1)
{
  v2 = sub_2331484BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312D8CC(uint64_t a1)
{
  v2 = sub_233147ED4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312D908(uint64_t a1)
{
  v2 = sub_233147ED4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312D944(uint64_t a1)
{
  v2 = sub_233147E80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312D980(uint64_t a1)
{
  v2 = sub_233147E80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312D9BC(uint64_t a1)
{
  v2 = sub_233147D84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312D9F8(uint64_t a1)
{
  v2 = sub_233147D84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DA34(uint64_t a1)
{
  v2 = sub_233148318();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DA70(uint64_t a1)
{
  v2 = sub_233148318();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DAAC(uint64_t a1)
{
  v2 = sub_233148078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DAE8(uint64_t a1)
{
  v2 = sub_233148078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DB24(uint64_t a1)
{
  v2 = sub_2331480CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DB60(uint64_t a1)
{
  v2 = sub_2331480CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DB9C(uint64_t a1)
{
  v2 = sub_233147FD0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DBD8(uint64_t a1)
{
  v2 = sub_233147FD0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DC14(uint64_t a1)
{
  v2 = sub_233148510();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DC50(uint64_t a1)
{
  v2 = sub_233148510();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DC8C(uint64_t a1)
{
  v2 = sub_233148174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DCC8(uint64_t a1)
{
  v2 = sub_233148174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DD04(uint64_t a1)
{
  v2 = sub_233147D30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DD40(uint64_t a1)
{
  v2 = sub_233147D30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DD7C(uint64_t a1)
{
  v2 = sub_233148120();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DDB8(uint64_t a1)
{
  v2 = sub_233148120();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DDF4(uint64_t a1)
{
  v2 = sub_233147F28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DE30(uint64_t a1)
{
  v2 = sub_233147F28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DE6C(uint64_t a1)
{
  v2 = sub_233148414();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DEA8(uint64_t a1)
{
  v2 = sub_233148414();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DEE4(uint64_t a1)
{
  v2 = sub_23314836C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DF20(uint64_t a1)
{
  v2 = sub_23314836C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DF5C(uint64_t a1)
{
  v2 = sub_233148024();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312DF98(uint64_t a1)
{
  v2 = sub_233148024();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312DFD4(uint64_t a1)
{
  v2 = sub_2331482C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E010(uint64_t a1)
{
  v2 = sub_2331482C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E04C(uint64_t a1)
{
  v2 = sub_233147F7C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E088(uint64_t a1)
{
  v2 = sub_233147F7C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E0C4(uint64_t a1)
{
  v2 = sub_2331481C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E100(uint64_t a1)
{
  v2 = sub_2331481C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E13C(uint64_t a1)
{
  v2 = sub_233148468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E178(uint64_t a1)
{
  v2 = sub_233148468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E1B4(uint64_t a1)
{
  v2 = sub_2331483C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E1F0(uint64_t a1)
{
  v2 = sub_2331483C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E238(uint64_t a1)
{
  v2 = sub_2331485B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E274(uint64_t a1)
{
  v2 = sub_2331485B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E2B0(uint64_t a1)
{
  v2 = sub_23314860C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E2EC(uint64_t a1)
{
  v2 = sub_23314860C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E328(uint64_t a1)
{
  v2 = sub_233148660();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E364(uint64_t a1)
{
  v2 = sub_233148660();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E3A0(uint64_t a1)
{
  v2 = sub_233148270();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E3DC(uint64_t a1)
{
  v2 = sub_233148270();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E418(uint64_t a1)
{
  v2 = sub_23314821C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E454(uint64_t a1)
{
  v2 = sub_23314821C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E490(uint64_t a1)
{
  v2 = sub_233147E2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E4CC(uint64_t a1)
{
  v2 = sub_233147E2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E508(uint64_t a1)
{
  v2 = sub_233147DD8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E544(uint64_t a1)
{
  v2 = sub_233147DD8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E580(uint64_t a1)
{
  v2 = sub_233148708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E5BC(uint64_t a1)
{
  v2 = sub_233148708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23312E5F8(uint64_t a1)
{
  v2 = sub_2331486B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23312E634(uint64_t a1)
{
  v2 = sub_2331486B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBError.Problem.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B50, &qword_2332909B0);
  v206 = *(v3 - 8);
  v207 = v3;
  v4 = *(v206 + 64);
  MEMORY[0x28223BE20](v3);
  v205 = &v124 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B58, &qword_2332909B8);
  v203 = *(v6 - 8);
  v204 = v6;
  v7 = *(v203 + 64);
  MEMORY[0x28223BE20](v6);
  v202 = &v124 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B60, &qword_2332909C0);
  v200 = *(v9 - 8);
  v201 = v9;
  v10 = *(v200 + 64);
  MEMORY[0x28223BE20](v9);
  v199 = &v124 - v11;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B68, &qword_2332909C8);
  v197 = *(v198 - 8);
  v12 = *(v197 + 64);
  MEMORY[0x28223BE20](v198);
  v196 = &v124 - v13;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B70, &qword_2332909D0);
  v194 = *(v195 - 8);
  v14 = *(v194 + 64);
  MEMORY[0x28223BE20](v195);
  v193 = &v124 - v15;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B78, &qword_2332909D8);
  v191 = *(v192 - 8);
  v16 = *(v191 + 64);
  MEMORY[0x28223BE20](v192);
  v190 = &v124 - v17;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B80, &qword_2332909E0);
  v188 = *(v189 - 8);
  v18 = *(v188 + 64);
  MEMORY[0x28223BE20](v189);
  v187 = &v124 - v19;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B88, &qword_2332909E8);
  v185 = *(v186 - 8);
  v20 = *(v185 + 64);
  MEMORY[0x28223BE20](v186);
  v184 = &v124 - v21;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B90, &qword_2332909F0);
  v182 = *(v183 - 8);
  v22 = *(v182 + 64);
  MEMORY[0x28223BE20](v183);
  v181 = &v124 - v23;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B98, &qword_2332909F8);
  v179 = *(v180 - 8);
  v24 = *(v179 + 64);
  MEMORY[0x28223BE20](v180);
  v178 = &v124 - v25;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BA0, &qword_233290A00);
  v176 = *(v177 - 8);
  v26 = *(v176 + 64);
  MEMORY[0x28223BE20](v177);
  v175 = &v124 - v27;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BA8, &qword_233290A08);
  v173 = *(v174 - 8);
  v28 = *(v173 + 64);
  MEMORY[0x28223BE20](v174);
  v172 = &v124 - v29;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BB0, &qword_233290A10);
  v170 = *(v171 - 8);
  v30 = *(v170 + 64);
  MEMORY[0x28223BE20](v171);
  v169 = &v124 - v31;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BB8, &qword_233290A18);
  v167 = *(v168 - 8);
  v32 = *(v167 + 64);
  MEMORY[0x28223BE20](v168);
  v166 = &v124 - v33;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BC0, &qword_233290A20);
  v164 = *(v165 - 8);
  v34 = *(v164 + 64);
  MEMORY[0x28223BE20](v165);
  v163 = &v124 - v35;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BC8, &qword_233290A28);
  v161 = *(v162 - 8);
  v36 = *(v161 + 64);
  MEMORY[0x28223BE20](v162);
  v160 = &v124 - v37;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BD0, &qword_233290A30);
  v158 = *(v159 - 8);
  v38 = *(v158 + 64);
  MEMORY[0x28223BE20](v159);
  v157 = &v124 - v39;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BD8, &qword_233290A38);
  v155 = *(v156 - 8);
  v40 = *(v155 + 64);
  MEMORY[0x28223BE20](v156);
  v154 = &v124 - v41;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BE0, &qword_233290A40);
  v152 = *(v153 - 8);
  v42 = *(v152 + 64);
  MEMORY[0x28223BE20](v153);
  v151 = &v124 - v43;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BE8, &qword_233290A48);
  v149 = *(v150 - 8);
  v44 = *(v149 + 64);
  MEMORY[0x28223BE20](v150);
  v148 = &v124 - v45;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BF0, &qword_233290A50);
  v146 = *(v147 - 8);
  v46 = *(v146 + 64);
  MEMORY[0x28223BE20](v147);
  v145 = &v124 - v47;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1BF8, &qword_233290A58);
  v143 = *(v144 - 8);
  v48 = *(v143 + 64);
  MEMORY[0x28223BE20](v144);
  v142 = &v124 - v49;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C00, &qword_233290A60);
  v140 = *(v141 - 8);
  v50 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v139 = &v124 - v51;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C08, &qword_233290A68);
  v137 = *(v138 - 8);
  v52 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v136 = &v124 - v53;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C10, &qword_233290A70);
  v134 = *(v135 - 8);
  v54 = *(v134 + 64);
  MEMORY[0x28223BE20](v135);
  v133 = &v124 - v55;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C18, &qword_233290A78);
  v131 = *(v132 - 8);
  v56 = *(v131 + 64);
  MEMORY[0x28223BE20](v132);
  v130 = &v124 - v57;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C20, &qword_233290A80);
  v212 = *(v58 - 8);
  v213 = v58;
  v59 = *(v212 + 64);
  MEMORY[0x28223BE20](v58);
  v211 = &v124 - v60;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C28, &qword_233290A88);
  v209 = *(v61 - 8);
  v210 = v61;
  v62 = *(v209 + 64);
  MEMORY[0x28223BE20](v61);
  v64 = &v124 - v63;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C30, &qword_233290A90);
  v128 = *(v129 - 8);
  v65 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v127 = &v124 - v66;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C38, &qword_233290A98);
  v125 = *(v126 - 8);
  v67 = *(v125 + 64);
  MEMORY[0x28223BE20](v126);
  v124 = &v124 - v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C40, &qword_233290AA0);
  v208 = *(v69 - 8);
  v70 = *(v208 + 64);
  MEMORY[0x28223BE20](v69);
  v72 = &v124 - v71;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C48, &qword_233290AA8);
  v74 = *(v73 - 8);
  v215 = v73;
  v216 = v74;
  v75 = *(v74 + 64);
  MEMORY[0x28223BE20](v73);
  v77 = &v124 - v76;
  v78 = v1[1];
  v217 = *v1;
  v79 = *(v1 + 16);
  v80 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_233147CDC();
  v214 = v77;
  sub_23328E69C();
  if (v79 > 1)
  {
    if (v79 == 2)
    {
      v219 = 4;
      sub_2331485B8();
      v84 = v211;
      v86 = v214;
      v85 = v215;
      sub_23328E45C();
      v87 = v213;
      sub_23328E49C();
      (*(v212 + 8))(v84, v87);
      return (*(v216 + 8))(v86, v85);
    }

    else
    {
      switch(v217)
      {
        case 1:
          v219 = 2;
          sub_233148660();
          v111 = v127;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v128 + 8);
          v95 = v111;
          v96 = &v161;
          goto LABEL_36;
        case 2:
          v219 = 5;
          sub_233148564();
          v107 = v130;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v131 + 8);
          v95 = v107;
          v96 = &v164;
          goto LABEL_36;
        case 3:
          v219 = 6;
          sub_233148510();
          v109 = v133;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v134 + 8);
          v95 = v109;
          v96 = &v167;
          goto LABEL_36;
        case 4:
          v219 = 7;
          sub_2331484BC();
          v103 = v136;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v137 + 8);
          v95 = v103;
          v96 = &v170;
          goto LABEL_36;
        case 5:
          v219 = 8;
          sub_233148468();
          v114 = v139;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v140 + 8);
          v95 = v114;
          v96 = &v173;
          goto LABEL_36;
        case 6:
          v219 = 9;
          sub_233148414();
          v117 = v142;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v143 + 8);
          v95 = v117;
          v96 = &v176;
          goto LABEL_36;
        case 7:
          v219 = 10;
          sub_2331483C0();
          v110 = v145;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v146 + 8);
          v95 = v110;
          v96 = &v179;
          goto LABEL_36;
        case 8:
          v219 = 11;
          sub_23314836C();
          v120 = v148;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v149 + 8);
          v95 = v120;
          v96 = &v182;
          goto LABEL_36;
        case 9:
          v219 = 12;
          sub_233148318();
          v105 = v151;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v152 + 8);
          v95 = v105;
          v96 = &v185;
          goto LABEL_36;
        case 10:
          v219 = 13;
          sub_2331482C4();
          v119 = v154;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v155 + 8);
          v95 = v119;
          v96 = &v188;
          goto LABEL_36;
        case 11:
          v219 = 14;
          sub_233148270();
          v102 = v157;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v158 + 8);
          v95 = v102;
          v96 = &v191;
          goto LABEL_36;
        case 12:
          v219 = 15;
          sub_23314821C();
          v104 = v160;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v161 + 8);
          v95 = v104;
          v96 = &v194;
          goto LABEL_36;
        case 13:
          v219 = 16;
          sub_2331481C8();
          v116 = v163;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v164 + 8);
          v95 = v116;
          v96 = &v197;
          goto LABEL_36;
        case 14:
          v219 = 17;
          sub_233148174();
          v101 = v166;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v167 + 8);
          v95 = v101;
          v96 = &v200;
          goto LABEL_36;
        case 15:
          v219 = 18;
          sub_233148120();
          v108 = v169;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v170 + 8);
          v95 = v108;
          v96 = &v203;
          goto LABEL_36;
        case 16:
          v219 = 19;
          sub_2331480CC();
          v100 = v172;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v173 + 8);
          v95 = v100;
          v96 = &v206;
          goto LABEL_36;
        case 17:
          v219 = 20;
          sub_233148078();
          v112 = v175;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v176 + 8);
          v95 = v112;
          v96 = &v209;
          goto LABEL_36;
        case 18:
          v219 = 21;
          sub_233148024();
          v118 = v178;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v179 + 8);
          v95 = v118;
          v96 = &v212;
          goto LABEL_36;
        case 19:
          v219 = 22;
          sub_233147FD0();
          v122 = v181;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v182 + 8);
          v95 = v122;
          v96 = &v215;
          goto LABEL_36;
        case 20:
          v219 = 23;
          sub_233147F7C();
          v113 = v184;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v185 + 8);
          v95 = v113;
          v96 = &v217;
          goto LABEL_36;
        case 21:
          v219 = 24;
          sub_233147F28();
          v115 = v187;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v188 + 8);
          v95 = v115;
          v96 = &v218;
          goto LABEL_36;
        case 22:
          v219 = 25;
          sub_233147ED4();
          v121 = v190;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v191 + 8);
          v95 = v121;
          v96 = &v220;
          goto LABEL_36;
        case 23:
          v219 = 26;
          sub_233147E80();
          v123 = v193;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v194 + 8);
          v95 = v123;
          v96 = &v221;
          goto LABEL_36;
        case 24:
          v219 = 27;
          sub_233147E2C();
          v106 = v196;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          (*(v197 + 8))(v106, v198);
          return (*(v216 + 8))(v93, v92);
        case 25:
          v219 = 28;
          sub_233147DD8();
          v97 = v199;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v99 = v200;
          v98 = v201;
          goto LABEL_40;
        case 26:
          v219 = 29;
          sub_233147D84();
          v97 = v202;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v99 = v203;
          v98 = v204;
          goto LABEL_40;
        case 27:
          v219 = 30;
          sub_233147D30();
          v97 = v205;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v99 = v206;
          v98 = v207;
LABEL_40:
          (*(v99 + 8))(v97, v98);
          break;
        default:
          v219 = 1;
          sub_2331486B4();
          v91 = v124;
          v93 = v214;
          v92 = v215;
          sub_23328E45C();
          v94 = *(v125 + 8);
          v95 = v91;
          v96 = &v158;
LABEL_36:
          v94(v95, *(v96 - 32));
          break;
      }

      return (*(v216 + 8))(v93, v92);
    }
  }

  else if (v79)
  {
    v219 = 3;
    sub_23314860C();
    v89 = v214;
    v88 = v215;
    sub_23328E45C();
    v90 = v210;
    sub_23328E48C();
    (*(v209 + 8))(v64, v90);
    return (*(v216 + 8))(v89, v88);
  }

  else
  {
    v219 = 0;
    sub_233148708();
    v81 = v214;
    v82 = v215;
    sub_23328E45C();
    sub_23328E48C();
    (*(v208 + 8))(v72, v69);
    return (*(v216 + 8))(v81, v82);
  }
}

uint64_t TTSVBError.Problem.hash(into:)()
{
  if (*(v0 + 16) > 1u)
  {
    if (*(v0 + 16) == 2)
    {
      MEMORY[0x23839C380](4);
      return sub_23328E63C();
    }

    else
    {
      switch(*v0)
      {
        case 1:
          v4 = 2;
          break;
        case 2:
          v4 = 5;
          break;
        case 3:
          v4 = 6;
          break;
        case 4:
          v4 = 7;
          break;
        case 5:
          v4 = 8;
          break;
        case 6:
          v4 = 9;
          break;
        case 7:
          v4 = 10;
          break;
        case 8:
          v4 = 11;
          break;
        case 9:
          v4 = 12;
          break;
        case 0xALL:
          v4 = 13;
          break;
        case 0xBLL:
          v4 = 14;
          break;
        case 0xCLL:
          v4 = 15;
          break;
        case 0xDLL:
          v4 = 16;
          break;
        case 0xELL:
          v4 = 17;
          break;
        case 0xFLL:
          v4 = 18;
          break;
        case 0x10:
          v4 = 19;
          break;
        case 0x11:
          v4 = 20;
          break;
        case 0x12:
          v4 = 21;
          break;
        case 0x13:
          v4 = 22;
          break;
        case 0x14:
          v4 = 23;
          break;
        case 0x15:
          v4 = 24;
          break;
        case 0x16:
          v4 = 25;
          break;
        case 0x17:
          v4 = 26;
          break;
        case 0x18:
          v4 = 27;
          break;
        case 0x19:
          v4 = 28;
          break;
        case 0x1ALL:
          v4 = 29;
          break;
        case 0x1BLL:
          v4 = 30;
          break;
        default:
          v4 = 1;
          break;
      }

      return MEMORY[0x23839C380](v4);
    }
  }

  else
  {
    v1 = *(v0 + 8);
    if (*(v0 + 16))
    {
      v2 = 3;
    }

    else
    {
      v2 = 0;
    }

    MEMORY[0x23839C380](v2);

    return sub_23328DA3C();
  }
}

uint64_t TTSVBError.Problem.hashValue.getter()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_23328E61C();
  TTSVBError.Problem.hash(into:)();
  return sub_23328E66C();
}

uint64_t TTSVBError.Problem.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v267 = a2;
  v266 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C50, &qword_233290AB0);
  v235 = *(v266 - 8);
  v3 = *(v235 + 64);
  MEMORY[0x28223BE20](v266);
  v261 = v172 - v4;
  v234 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C58, &qword_233290AB8);
  v233 = *(v234 - 8);
  v5 = *(v233 + 64);
  MEMORY[0x28223BE20](v234);
  v260 = v172 - v6;
  v232 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C60, &qword_233290AC0);
  v231 = *(v232 - 8);
  v7 = *(v231 + 64);
  MEMORY[0x28223BE20](v232);
  v259 = v172 - v8;
  v230 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C68, &qword_233290AC8);
  v229 = *(v230 - 8);
  v9 = *(v229 + 64);
  MEMORY[0x28223BE20](v230);
  v258 = v172 - v10;
  v228 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C70, &qword_233290AD0);
  v227 = *(v228 - 8);
  v11 = *(v227 + 64);
  MEMORY[0x28223BE20](v228);
  v257 = v172 - v12;
  v226 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C78, &qword_233290AD8);
  v225 = *(v226 - 8);
  v13 = *(v225 + 64);
  MEMORY[0x28223BE20](v226);
  v256 = v172 - v14;
  v224 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C80, &qword_233290AE0);
  v223 = *(v224 - 8);
  v15 = *(v223 + 64);
  MEMORY[0x28223BE20](v224);
  v255 = v172 - v16;
  v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C88, &qword_233290AE8);
  v221 = *(v222 - 8);
  v17 = *(v221 + 64);
  MEMORY[0x28223BE20](v222);
  v254 = v172 - v18;
  v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C90, &qword_233290AF0);
  v219 = *(v220 - 8);
  v19 = *(v219 + 64);
  MEMORY[0x28223BE20](v220);
  v253 = v172 - v20;
  v218 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1C98, &qword_233290AF8);
  v217 = *(v218 - 8);
  v21 = *(v217 + 64);
  MEMORY[0x28223BE20](v218);
  v252 = v172 - v22;
  v216 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CA0, &qword_233290B00);
  v215 = *(v216 - 8);
  v23 = *(v215 + 64);
  MEMORY[0x28223BE20](v216);
  v251 = v172 - v24;
  v214 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CA8, &qword_233290B08);
  v213 = *(v214 - 8);
  v25 = *(v213 + 64);
  MEMORY[0x28223BE20](v214);
  v250 = v172 - v26;
  v212 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CB0, &qword_233290B10);
  v211 = *(v212 - 8);
  v27 = *(v211 + 64);
  MEMORY[0x28223BE20](v212);
  v249 = v172 - v28;
  v210 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CB8, &qword_233290B18);
  v209 = *(v210 - 8);
  v29 = *(v209 + 64);
  MEMORY[0x28223BE20](v210);
  v248 = v172 - v30;
  v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CC0, &qword_233290B20);
  v207 = *(v208 - 8);
  v31 = *(v207 + 64);
  MEMORY[0x28223BE20](v208);
  v247 = v172 - v32;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CC8, &qword_233290B28);
  v205 = *(v206 - 8);
  v33 = *(v205 + 64);
  MEMORY[0x28223BE20](v206);
  v246 = v172 - v34;
  v204 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CD0, &qword_233290B30);
  v203 = *(v204 - 8);
  v35 = *(v203 + 64);
  MEMORY[0x28223BE20](v204);
  v245 = v172 - v36;
  v202 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CD8, &qword_233290B38);
  v201 = *(v202 - 8);
  v37 = *(v201 + 64);
  MEMORY[0x28223BE20](v202);
  v244 = v172 - v38;
  v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CE0, &qword_233290B40);
  v199 = *(v200 - 8);
  v39 = *(v199 + 64);
  MEMORY[0x28223BE20](v200);
  v243 = v172 - v40;
  v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CE8, &qword_233290B48);
  v197 = *(v198 - 8);
  v41 = *(v197 + 64);
  MEMORY[0x28223BE20](v198);
  v242 = v172 - v42;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CF0, &qword_233290B50);
  v195 = *(v196 - 8);
  v43 = *(v195 + 64);
  MEMORY[0x28223BE20](v196);
  v241 = v172 - v44;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1CF8, &qword_233290B58);
  v193 = *(v194 - 8);
  v45 = *(v193 + 64);
  MEMORY[0x28223BE20](v194);
  v265 = v172 - v46;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D00, &qword_233290B60);
  v191 = *(v192 - 8);
  v47 = *(v191 + 64);
  MEMORY[0x28223BE20](v192);
  v239 = v172 - v48;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D08, &qword_233290B68);
  v189 = *(v190 - 8);
  v49 = *(v189 + 64);
  MEMORY[0x28223BE20](v190);
  v264 = v172 - v50;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D10, &qword_233290B70);
  v187 = *(v188 - 8);
  v51 = *(v187 + 64);
  MEMORY[0x28223BE20](v188);
  v240 = v172 - v52;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D18, &qword_233290B78);
  v185 = *(v186 - 8);
  v53 = *(v185 + 64);
  MEMORY[0x28223BE20](v186);
  v237 = v172 - v54;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D20, &qword_233290B80);
  v178 = *(v184 - 8);
  v55 = *(v178 + 64);
  MEMORY[0x28223BE20](v184);
  v238 = v172 - v56;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D28, &qword_233290B88);
  v262 = *(v183 - 8);
  v57 = *(v262 + 64);
  MEMORY[0x28223BE20](v183);
  v263 = v172 - v58;
  v182 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D30, &qword_233290B90);
  v181 = *(v182 - 8);
  v59 = *(v181 + 64);
  MEMORY[0x28223BE20](v182);
  v236 = v172 - v60;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D38, &qword_233290B98);
  v179 = *(v180 - 8);
  v61 = *(v179 + 64);
  MEMORY[0x28223BE20](v180);
  v63 = v172 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D40, &qword_233290BA0);
  v177 = *(v64 - 8);
  v65 = *(v177 + 64);
  MEMORY[0x28223BE20](v64);
  v67 = v172 - v66;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D48, &qword_233290BA8);
  v69 = *(v68 - 8);
  v70 = *(v69 + 64);
  MEMORY[0x28223BE20](v68);
  v72 = v172 - v71;
  v73 = a1[3];
  v74 = a1[4];
  v268 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v73);
  sub_233147CDC();
  v75 = v269;
  sub_23328E68C();
  if (v75)
  {
LABEL_69:
    v159 = v268;
    return __swift_destroy_boxed_opaque_existential_0(v159);
  }

  v174 = v67;
  v175 = v63;
  v173 = v64;
  v76 = v263;
  v77 = v264;
  v78 = v265;
  v176 = 0;
  v80 = v266;
  v79 = v267;
  v269 = v69;
  v81 = v72;
  v82 = sub_23328E44C();
  if (*(v82 + 16) != 1 || (v83 = *(v82 + 32), v83 == 31))
  {
    v89 = sub_23328E29C();
    swift_allocError();
    v91 = v90;
    v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D50, &qword_233290BB0) + 48);
    *v91 = &type metadata for TTSVBError.Problem;
    sub_23328E39C();
    sub_23328E28C();
    (*(*(v89 - 8) + 104))(v91, *MEMORY[0x277D84160], v89);
    swift_willThrow();
    (*(v269 + 8))(v81, v68);
LABEL_68:
    swift_unknownObjectRelease();
    goto LABEL_69;
  }

  v172[1] = v82;
  v84 = v262;
  switch(v83)
  {
    case 1:
      v270 = 1;
      sub_2331486B4();
      v125 = v175;
      v126 = v176;
      sub_23328E38C();
      if (v126)
      {
        goto LABEL_67;
      }

      (*(v179 + 8))(v125, v180);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v169 = 0;
      v170 = 0;
      v171 = 3;
      goto LABEL_72;
    case 2:
      v270 = 2;
      sub_233148660();
      v114 = v236;
      v115 = v176;
      sub_23328E38C();
      if (v115)
      {
        goto LABEL_67;
      }

      (*(v181 + 8))(v114, v182);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 1;
      goto LABEL_72;
    case 3:
      v270 = 3;
      sub_23314860C();
      v118 = v76;
      v119 = v176;
      sub_23328E38C();
      if (v119)
      {
        goto LABEL_67;
      }

      v120 = v81;
      v121 = v183;
      v122 = sub_23328E3CC();
      v123 = v269;
      v162 = *(v84 + 8);
      v163 = v122;
      v165 = v164;
      v162(v118, v121);
      (*(v123 + 8))(v120, v68);
      swift_unknownObjectRelease();
      v169 = v163;
      v170 = v165;
      v171 = 1;
      goto LABEL_72;
    case 4:
      v270 = 4;
      sub_2331485B8();
      v101 = v238;
      v102 = v176;
      sub_23328E38C();
      if (v102)
      {
        goto LABEL_67;
      }

      v103 = v81;
      v104 = v184;
      v105 = sub_23328E3DC();
      v106 = v269;
      v161 = v105;
      (*(v178 + 8))(v101, v104);
      (*(v106 + 8))(v103, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v169 = v161 & 1;
      v171 = 2;
      goto LABEL_72;
    case 5:
      v270 = 5;
      sub_233148564();
      v131 = v237;
      v132 = v176;
      sub_23328E38C();
      if (v132)
      {
        goto LABEL_67;
      }

      (*(v185 + 8))(v131, v186);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 2;
      goto LABEL_72;
    case 6:
      v270 = 6;
      sub_233148510();
      v137 = v240;
      v138 = v176;
      sub_23328E38C();
      if (v138)
      {
        goto LABEL_67;
      }

      (*(v187 + 8))(v137, v188);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v169 = 3;
      v171 = 3;
      goto LABEL_72;
    case 7:
      v270 = 7;
      sub_2331484BC();
      v124 = v176;
      sub_23328E38C();
      if (v124)
      {
        goto LABEL_67;
      }

      (*(v189 + 8))(v77, v190);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 4;
      goto LABEL_72;
    case 8:
      v270 = 8;
      sub_233148468();
      v143 = v239;
      v144 = v176;
      sub_23328E38C();
      if (v144)
      {
        goto LABEL_67;
      }

      (*(v191 + 8))(v143, v192);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 5;
      goto LABEL_72;
    case 9:
      v270 = 9;
      sub_233148414();
      v109 = v176;
      sub_23328E38C();
      if (v109)
      {
        goto LABEL_67;
      }

      (*(v193 + 8))(v78, v194);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 6;
      goto LABEL_72;
    case 10:
      v270 = 10;
      sub_2331483C0();
      v141 = v241;
      v142 = v176;
      sub_23328E38C();
      if (v142)
      {
        goto LABEL_67;
      }

      (*(v195 + 8))(v141, v196);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 7;
      goto LABEL_72;
    case 11:
      v270 = 11;
      sub_23314836C();
      v99 = v242;
      v100 = v176;
      sub_23328E38C();
      if (v100)
      {
        goto LABEL_67;
      }

      (*(v197 + 8))(v99, v198);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 8;
      goto LABEL_72;
    case 12:
      v270 = 12;
      sub_233148318();
      v107 = v243;
      v108 = v176;
      sub_23328E38C();
      if (v108)
      {
        goto LABEL_67;
      }

      (*(v199 + 8))(v107, v200);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 9;
      goto LABEL_72;
    case 13:
      v270 = 13;
      sub_2331482C4();
      v135 = v244;
      v136 = v176;
      sub_23328E38C();
      if (v136)
      {
        goto LABEL_67;
      }

      (*(v201 + 8))(v135, v202);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 10;
      goto LABEL_72;
    case 14:
      v270 = 14;
      sub_233148270();
      v97 = v245;
      v98 = v176;
      sub_23328E38C();
      if (v98)
      {
        goto LABEL_67;
      }

      (*(v203 + 8))(v97, v204);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 11;
      goto LABEL_72;
    case 15:
      v270 = 15;
      sub_23314821C();
      v116 = v246;
      v117 = v176;
      sub_23328E38C();
      if (v117)
      {
        goto LABEL_67;
      }

      (*(v205 + 8))(v116, v206);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 12;
      goto LABEL_72;
    case 16:
      v270 = 16;
      sub_2331481C8();
      v95 = v247;
      v96 = v176;
      sub_23328E38C();
      if (v96)
      {
        goto LABEL_67;
      }

      (*(v207 + 8))(v95, v208);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 13;
      goto LABEL_72;
    case 17:
      v270 = 17;
      sub_233148174();
      v127 = v248;
      v128 = v176;
      sub_23328E38C();
      if (v128)
      {
        goto LABEL_67;
      }

      (*(v209 + 8))(v127, v210);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 14;
      goto LABEL_72;
    case 18:
      v270 = 18;
      sub_233148120();
      v139 = v249;
      v140 = v176;
      sub_23328E38C();
      if (v140)
      {
        goto LABEL_67;
      }

      (*(v211 + 8))(v139, v212);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 15;
      goto LABEL_72;
    case 19:
      v270 = 19;
      sub_2331480CC();
      v149 = v250;
      v150 = v176;
      sub_23328E38C();
      if (v150)
      {
        goto LABEL_67;
      }

      (*(v213 + 8))(v149, v214);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 16;
      goto LABEL_72;
    case 20:
      v270 = 20;
      sub_233148078();
      v129 = v251;
      v130 = v176;
      sub_23328E38C();
      if (v130)
      {
        goto LABEL_67;
      }

      (*(v215 + 8))(v129, v216);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 17;
      goto LABEL_72;
    case 21:
      v270 = 21;
      sub_233148024();
      v133 = v252;
      v134 = v176;
      sub_23328E38C();
      if (v134)
      {
        goto LABEL_67;
      }

      (*(v217 + 8))(v133, v218);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 18;
      goto LABEL_72;
    case 22:
      v270 = 22;
      sub_233147FD0();
      v147 = v253;
      v148 = v176;
      sub_23328E38C();
      if (v148)
      {
        goto LABEL_67;
      }

      (*(v219 + 8))(v147, v220);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 19;
      goto LABEL_72;
    case 23:
      v270 = 23;
      sub_233147F7C();
      v151 = v254;
      v152 = v176;
      sub_23328E38C();
      if (v152)
      {
        goto LABEL_67;
      }

      (*(v221 + 8))(v151, v222);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 20;
      goto LABEL_72;
    case 24:
      v270 = 24;
      sub_233147F28();
      v112 = v255;
      v113 = v176;
      sub_23328E38C();
      if (v113)
      {
        goto LABEL_67;
      }

      (*(v223 + 8))(v112, v224);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 21;
      goto LABEL_72;
    case 25:
      v270 = 25;
      sub_233147ED4();
      v110 = v256;
      v111 = v176;
      sub_23328E38C();
      if (v111)
      {
        goto LABEL_67;
      }

      (*(v225 + 8))(v110, v226);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 22;
      goto LABEL_72;
    case 26:
      v270 = 26;
      sub_233147E80();
      v157 = v257;
      v158 = v176;
      sub_23328E38C();
      if (v158)
      {
        goto LABEL_67;
      }

      (*(v227 + 8))(v157, v228);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 23;
      goto LABEL_72;
    case 27:
      v270 = 27;
      sub_233147E2C();
      v93 = v258;
      v94 = v176;
      sub_23328E38C();
      if (v94)
      {
        goto LABEL_67;
      }

      (*(v229 + 8))(v93, v230);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 24;
      goto LABEL_72;
    case 28:
      v270 = 28;
      sub_233147DD8();
      v153 = v259;
      v154 = v176;
      sub_23328E38C();
      if (v154)
      {
        goto LABEL_67;
      }

      (*(v231 + 8))(v153, v232);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 25;
      goto LABEL_72;
    case 29:
      v270 = 29;
      sub_233147D84();
      v155 = v260;
      v156 = v176;
      sub_23328E38C();
      if (v156)
      {
        goto LABEL_67;
      }

      (*(v233 + 8))(v155, v234);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 26;
      goto LABEL_72;
    case 30:
      v270 = 30;
      sub_233147D30();
      v145 = v261;
      v146 = v176;
      sub_23328E38C();
      if (v146)
      {
        goto LABEL_67;
      }

      (*(v235 + 8))(v145, v80);
      (*(v269 + 8))(v81, v68);
      swift_unknownObjectRelease();
      v170 = 0;
      v171 = 3;
      v169 = 27;
      goto LABEL_72;
    default:
      v270 = 0;
      sub_233148708();
      v85 = v174;
      v86 = v176;
      sub_23328E38C();
      if (v86)
      {
LABEL_67:
        (*(v269 + 8))(v81, v68);
        goto LABEL_68;
      }

      v87 = v81;
      v88 = v173;
      v166 = sub_23328E3CC();
      v168 = v167;
      (*(v177 + 8))(v85, v88);
      (*(v269 + 8))(v87, v68);
      swift_unknownObjectRelease();
      v169 = v166;
      v170 = v168;
      v171 = 0;
LABEL_72:
      v159 = v268;
      *v79 = v169;
      *(v79 + 8) = v170;
      *(v79 + 16) = v171;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_0(v159);
}

uint64_t sub_233132D0C()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_23328E61C();
  TTSVBError.Problem.hash(into:)();
  return sub_23328E66C();
}

uint64_t sub_233132D64()
{
  v2 = *v0;
  v3 = *(v0 + 16);
  sub_23328E61C();
  TTSVBError.Problem.hash(into:)();
  return sub_23328E66C();
}

uint64_t TTSVBError.Reason.localizedTitle.getter()
{
  v1 = type metadata accessor for TTSVBError.Reason(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23314406C(v0, v4, type metadata accessor for TTSVBError.Reason);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 63)
  {
    if (EnumCaseMultiPayload == 53 || EnumCaseMultiPayload == 62 || EnumCaseMultiPayload == 63)
    {
      goto LABEL_7;
    }

LABEL_9:
    sub_233144DDC(v4, type metadata accessor for TTSVBError.Reason);
    return 0;
  }

  if ((EnumCaseMultiPayload - 64) >= 2)
  {
    goto LABEL_9;
  }

LABEL_7:
  v6 = sub_23328D95C();
  v7 = TTSVBSupportLocString(v6);

  v8 = sub_23328D98C();
  return v8;
}

uint64_t TTSVBError.Reason.localizedDescription.getter()
{
  v1 = type metadata accessor for TTSVBError.Reason(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23314406C(v0, v4, type metadata accessor for TTSVBError.Reason);
  v5 = swift_getEnumCaseMultiPayload() - 53;
  if (v5 <= 0xC && (((1 << v5) & 0x1A01) != 0 || v5 == 10))
  {
    v6 = sub_23328D95C();
    v7 = TTSVBSupportLocString(v6);

    v8 = sub_23328D98C();
  }

  else
  {
    sub_233144DDC(v4, type metadata accessor for TTSVBError.Reason);
    return 0;
  }

  return v8;
}

uint64_t TTSVBError.Reason.localizedActionTitle.getter()
{
  v1 = type metadata accessor for TTSVBError.Reason(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23314406C(v0, v4, type metadata accessor for TTSVBError.Reason);
  v5 = swift_getEnumCaseMultiPayload() - 53;
  if (v5 > 0xC)
  {
    goto LABEL_9;
  }

  if (((1 << v5) & 0x1A01) != 0)
  {
    v6 = MobileGestalt_get_current_device();
    if (v6)
    {
      v7 = v6;
      MobileGestalt_get_wapiCapability();
    }

    goto LABEL_7;
  }

  if (v5 != 10)
  {
LABEL_9:
    sub_233144DDC(v4, type metadata accessor for TTSVBError.Reason);
    return 0;
  }

LABEL_7:
  v8 = sub_23328D95C();
  v9 = TTSVBSupportLocString(v8);

  v10 = sub_23328D98C();
  return v10;
}

unint64_t sub_2331332C0(char a1)
{
  result = 0x6D6F74737563;
  switch(a1)
  {
    case 1:
      return 0x6669636570736E75;
    case 2:
      return 0x456E776F6E6B6E75;
    case 3:
      return 0xD000000000000010;
    case 4:
    case 27:
    case 46:
    case 63:
      v3 = 5;
      goto LABEL_35;
    case 5:
      v3 = 11;
      goto LABEL_35;
    case 6:
      return 0xD000000000000010;
    case 7:
    case 58:
      return 0xD000000000000011;
    case 8:
    case 37:
    case 48:
      return 0xD000000000000021;
    case 9:
    case 19:
    case 42:
    case 51:
      return 0xD00000000000001CLL;
    case 10:
    case 11:
    case 29:
    case 49:
    case 61:
      return 0xD000000000000017;
    case 12:
    case 16:
    case 38:
      v3 = 9;
      goto LABEL_35;
    case 13:
    case 17:
    case 30:
      return 0xD000000000000014;
    case 14:
    case 18:
    case 65:
      return 0xD00000000000001ELL;
    case 15:
    case 50:
    case 62:
      return 0xD000000000000018;
    case 20:
      return 0x726F745361746164;
    case 21:
      return 0xD000000000000024;
    case 22:
      return 0xD000000000000025;
    case 23:
      return 0xD000000000000026;
    case 24:
    case 39:
    case 44:
    case 45:
    case 66:
      return 0xD00000000000001FLL;
    case 25:
    case 40:
    case 60:
      v3 = 10;
      goto LABEL_35;
    case 26:
      return 0xD000000000000023;
    case 28:
      return 0xD000000000000010;
    case 31:
    case 34:
      return 0xD000000000000012;
    case 32:
      return 0xD000000000000010;
    case 33:
      return 0xD000000000000010;
    case 35:
    case 36:
    case 41:
      return 0xD000000000000013;
    case 43:
    case 59:
      v3 = 13;
LABEL_35:
      result = v3 | 0xD000000000000010;
      break;
    case 47:
    case 53:
      result = 0xD000000000000022;
      break;
    case 52:
      result = 0xD000000000000010;
      break;
    case 54:
      result = 0x536B736944776F6CLL;
      break;
    case 55:
      result = 0xD000000000000010;
      break;
    case 56:
    case 57:
      result = 0xD000000000000016;
      break;
    case 64:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_233133840(uint64_t a1)
{
  v2 = sub_233149CB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313387C(uint64_t a1)
{
  v2 = sub_233149CB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331338B8(uint64_t a1)
{
  v2 = sub_233148B4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331338F4(uint64_t a1)
{
  v2 = sub_233148B4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133930(uint64_t a1)
{
  v2 = sub_233149524();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313396C(uint64_t a1)
{
  v2 = sub_233149524();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331339A8(uint64_t a1)
{
  v2 = sub_233149968();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331339E4(uint64_t a1)
{
  v2 = sub_233149968();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133A20(uint64_t a1)
{
  v2 = sub_233149BB4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133A5C(uint64_t a1)
{
  v2 = sub_233149BB4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133A98(uint64_t a1)
{
  v2 = sub_233149B60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133AD4(uint64_t a1)
{
  v2 = sub_233149B60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_233133B9C(uint64_t a1)
{
  v2 = sub_2331489FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133BD8(uint64_t a1)
{
  v2 = sub_2331489FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133C24(uint64_t a1)
{
  v2 = sub_233148A50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133C60(uint64_t a1)
{
  v2 = sub_233148A50();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t _s31TextToSpeechVoiceBankingSupport14RecordingStateO9hashValueSivg_0()
{
  v1 = *v0;
  sub_23328E61C();
  MEMORY[0x23839C380](v1);
  return sub_23328E66C();
}

uint64_t sub_233133D2C()
{
  v1 = *v0;
  sub_23328E61C();
  MEMORY[0x23839C380](v1);
  return sub_23328E66C();
}

uint64_t sub_233133D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_233150FB4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_233133DAC(uint64_t a1)
{
  v2 = sub_23314875C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133DE8(uint64_t a1)
{
  v2 = sub_23314875C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133E24@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

uint64_t sub_233133E54(uint64_t a1)
{
  v2 = sub_233148E40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133E90(uint64_t a1)
{
  v2 = sub_233148E40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133EE4()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_233133F10(uint64_t a1)
{
  v2 = sub_23314932C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133F4C(uint64_t a1)
{
  v2 = sub_23314932C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233133F88(uint64_t a1)
{
  v2 = sub_233148E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233133FC4(uint64_t a1)
{
  v2 = sub_233148E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134000(uint64_t a1)
{
  v2 = sub_2331499BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313403C(uint64_t a1)
{
  v2 = sub_2331499BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134078(uint64_t a1)
{
  v2 = sub_233149AB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331340B4(uint64_t a1)
{
  v2 = sub_233149AB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331340F0(uint64_t a1)
{
  v2 = sub_233149A10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313412C(uint64_t a1)
{
  v2 = sub_233149A10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134168(uint64_t a1)
{
  v2 = sub_233149134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331341A4(uint64_t a1)
{
  v2 = sub_233149134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331341E0(uint64_t a1)
{
  v2 = sub_233149A64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313421C(uint64_t a1)
{
  v2 = sub_233149A64();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134258(uint64_t a1)
{
  v2 = sub_233149284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134294(uint64_t a1)
{
  v2 = sub_233149284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331342D0(uint64_t a1)
{
  v2 = sub_233149620();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313430C(uint64_t a1)
{
  v2 = sub_233149620();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134348(uint64_t a1)
{
  v2 = sub_233149038();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134384(uint64_t a1)
{
  v2 = sub_233149038();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331343C0(uint64_t a1)
{
  v2 = sub_233149380();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331343FC(uint64_t a1)
{
  v2 = sub_233149380();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134438(uint64_t a1)
{
  v2 = sub_233149230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134474(uint64_t a1)
{
  v2 = sub_233149230();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331344B0(uint64_t a1)
{
  v2 = sub_233148C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331344EC(uint64_t a1)
{
  v2 = sub_233148C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134528(uint64_t a1)
{
  v2 = sub_233149428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134564(uint64_t a1)
{
  v2 = sub_233149428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331345A0(uint64_t a1)
{
  v2 = sub_233148FE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331345DC(uint64_t a1)
{
  v2 = sub_233148FE4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134618(uint64_t a1)
{
  v2 = sub_2331490E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134654(uint64_t a1)
{
  v2 = sub_2331490E0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134690(uint64_t a1)
{
  v2 = sub_23314908C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331346CC(uint64_t a1)
{
  v2 = sub_23314908C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134708(uint64_t a1)
{
  v2 = sub_2331497C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134744(uint64_t a1)
{
  v2 = sub_2331497C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134780(uint64_t a1)
{
  v2 = sub_233149770();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331347BC(uint64_t a1)
{
  v2 = sub_233149770();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331347F8(uint64_t a1)
{
  v2 = sub_2331492D8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134834(uint64_t a1)
{
  v2 = sub_2331492D8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134870(uint64_t a1)
{
  v2 = sub_233149188();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331348AC(uint64_t a1)
{
  v2 = sub_233149188();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331348E8(uint64_t a1)
{
  v2 = sub_233149674();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134924(uint64_t a1)
{
  v2 = sub_233149674();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134960(uint64_t a1)
{
  v2 = sub_233148C9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23313499C(uint64_t a1)
{
  v2 = sub_233148C9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331349D8(uint64_t a1)
{
  v2 = sub_23314986C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134A14(uint64_t a1)
{
  v2 = sub_23314986C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134A50(uint64_t a1)
{
  v2 = sub_233148F3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134A8C(uint64_t a1)
{
  v2 = sub_233148F3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134AC8(uint64_t a1)
{
  v2 = sub_233148EE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134B04(uint64_t a1)
{
  v2 = sub_233148EE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134B40(uint64_t a1)
{
  v2 = sub_2331498C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134B7C(uint64_t a1)
{
  v2 = sub_2331498C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134BBC(uint64_t a1)
{
  v2 = sub_2331491DC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134BF8(uint64_t a1)
{
  v2 = sub_2331491DC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134C34(uint64_t a1)
{
  v2 = sub_233149DAC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134C70(uint64_t a1)
{
  v2 = sub_233149DAC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134CAC(uint64_t a1)
{
  v2 = sub_23314971C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134CE8(uint64_t a1)
{
  v2 = sub_23314971C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134D24(uint64_t a1)
{
  v2 = sub_2331494D0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134D60(uint64_t a1)
{
  v2 = sub_2331494D0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134D9C(uint64_t a1)
{
  v2 = sub_233148BA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134DD8(uint64_t a1)
{
  v2 = sub_233148BA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134E14(uint64_t a1)
{
  v2 = sub_23314947C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134E50(uint64_t a1)
{
  v2 = sub_23314947C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134E8C(uint64_t a1)
{
  v2 = sub_233148AF8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134EC8(uint64_t a1)
{
  v2 = sub_233148AF8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134F04(uint64_t a1)
{
  v2 = sub_233148AA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233134F40(uint64_t a1)
{
  v2 = sub_233148AA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233134F7C()
{
  if (*v0)
  {
    result = 0x6465726975716572;
  }

  else
  {
    result = 0x6C62616C69617661;
  }

  *v0;
  return result;
}

uint64_t sub_233134FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065;
  if (v6 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6465726975716572 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_2331350A0(uint64_t a1)
{
  v2 = sub_233148900();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331350DC(uint64_t a1)
{
  v2 = sub_233148900();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135118(uint64_t a1)
{
  v2 = sub_233148BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135154(uint64_t a1)
{
  v2 = sub_233148BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135190@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_23313525C(uint64_t a1)
{
  v2 = sub_2331493D4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135298(uint64_t a1)
{
  v2 = sub_2331493D4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331352D4(uint64_t a1)
{
  v2 = sub_233148858();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135310(uint64_t a1)
{
  v2 = sub_233148858();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23313534C(uint64_t a1)
{
  v2 = sub_2331487B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135388(uint64_t a1)
{
  v2 = sub_2331487B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331353C4()
{
  if (*v0)
  {
    result = 28532;
  }

  else
  {
    result = 1836020326;
  }

  *v0;
  return result;
}

uint64_t sub_2331353EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1836020326 && a2 == 0xE400000000000000;
  if (v5 || (sub_23328E54C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23328E54C();

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

uint64_t sub_2331354C0(uint64_t a1)
{
  v2 = sub_2331488AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331354FC(uint64_t a1)
{
  v2 = sub_2331488AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135538(uint64_t a1)
{
  v2 = sub_233149B0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135574(uint64_t a1)
{
  v2 = sub_233149B0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331355B0(uint64_t a1)
{
  v2 = sub_233149818();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331355EC(uint64_t a1)
{
  v2 = sub_233149818();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135628(uint64_t a1)
{
  v2 = sub_233149C5C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135664(uint64_t a1)
{
  v2 = sub_233149C5C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331356A0(uint64_t a1)
{
  v2 = sub_233148954();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331356DC(uint64_t a1)
{
  v2 = sub_233148954();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135724(uint64_t a1)
{
  v2 = sub_2331489A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135760(uint64_t a1)
{
  v2 = sub_2331489A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23313579C(uint64_t a1)
{
  v2 = sub_233149C08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331357D8(uint64_t a1)
{
  v2 = sub_233149C08();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135814(uint64_t a1)
{
  v2 = sub_233148D44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135850(uint64_t a1)
{
  v2 = sub_233148D44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23313588C(uint64_t a1)
{
  v2 = sub_2331495CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331358C8(uint64_t a1)
{
  v2 = sub_2331495CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135904(uint64_t a1)
{
  v2 = sub_2331496C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135940(uint64_t a1)
{
  v2 = sub_2331496C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23313597C(uint64_t a1)
{
  v2 = sub_233148F90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2331359B8(uint64_t a1)
{
  v2 = sub_233148F90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2331359F4(uint64_t a1)
{
  v2 = sub_233148DEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135A30(uint64_t a1)
{
  v2 = sub_233148DEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135A6C(uint64_t a1)
{
  v2 = sub_233149914();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135AA8(uint64_t a1)
{
  v2 = sub_233149914();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135AE4(uint64_t a1)
{
  v2 = sub_233149D04();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135B20(uint64_t a1)
{
  v2 = sub_233149D04();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135B5C(uint64_t a1)
{
  v2 = sub_233149D58();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135B98(uint64_t a1)
{
  v2 = sub_233149D58();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135BD4(uint64_t a1)
{
  v2 = sub_233148CF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135C10(uint64_t a1)
{
  v2 = sub_233148CF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_233135CCC(uint64_t a1)
{
  v2 = sub_233148D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135D08(uint64_t a1)
{
  v2 = sub_233148D98();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_233135D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701667182 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23328E54C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_233135DCC(uint64_t a1)
{
  v2 = sub_233149578();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_233135E08(uint64_t a1)
{
  v2 = sub_233149578();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TTSVBError.Reason.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D58, &qword_233290BB8);
  v522 = *(v2 - 8);
  v523 = v2;
  v3 = *(v522 + 64);
  MEMORY[0x28223BE20](v2);
  v519 = &v325 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D60, &qword_233290BC0);
  v517 = *(v5 - 8);
  v518 = v5;
  v6 = *(v517 + 64);
  MEMORY[0x28223BE20](v5);
  v515 = &v325 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D68, &qword_233290BC8);
  v520 = *(v8 - 8);
  v521 = v8;
  v9 = *(v520 + 64);
  MEMORY[0x28223BE20](v8);
  v516 = &v325 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D70, &qword_233290BD0);
  v513 = *(v11 - 8);
  v514 = v11;
  v12 = *(v513 + 64);
  MEMORY[0x28223BE20](v11);
  v510 = &v325 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D78, &qword_233290BD8);
  v511 = *(v14 - 8);
  v512 = v14;
  v15 = *(v511 + 64);
  MEMORY[0x28223BE20](v14);
  v509 = &v325 - v16;
  v506 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D80, &qword_233290BE0);
  v505 = *(v506 - 8);
  v17 = *(v505 + 64);
  MEMORY[0x28223BE20](v506);
  v503 = &v325 - v18;
  v508 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D88, &qword_233290BE8);
  v507 = *(v508 - 8);
  v19 = *(v507 + 64);
  MEMORY[0x28223BE20](v508);
  v504 = &v325 - v20;
  v502 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D90, &qword_233290BF0);
  v501 = *(v502 - 8);
  v21 = *(v501 + 64);
  MEMORY[0x28223BE20](v502);
  v500 = &v325 - v22;
  v496 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D98, &qword_233290BF8);
  v495 = *(v496 - 8);
  v23 = *(v495 + 64);
  MEMORY[0x28223BE20](v496);
  v494 = &v325 - v24;
  v499 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DA0, &qword_233290C00);
  v498 = *(v499 - 8);
  v25 = *(v498 + 64);
  MEMORY[0x28223BE20](v499);
  v497 = &v325 - v26;
  v493 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DA8, &qword_233290C08);
  v492 = *(v493 - 8);
  v27 = *(v492 + 64);
  MEMORY[0x28223BE20](v493);
  v491 = &v325 - v28;
  v490 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DB0, &qword_233290C10);
  v489 = *(v490 - 8);
  v29 = *(v489 + 64);
  MEMORY[0x28223BE20](v490);
  v487 = &v325 - v30;
  v485 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DB8, &qword_233290C18);
  v484 = *(v485 - 8);
  v31 = *(v484 + 64);
  MEMORY[0x28223BE20](v485);
  v481 = &v325 - v32;
  v479 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DC0, &qword_233290C20);
  v478 = *(v479 - 8);
  v33 = *(v478 + 64);
  MEMORY[0x28223BE20](v479);
  v476 = &v325 - v34;
  v488 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DC8, &qword_233290C28);
  v486 = *(v488 - 8);
  v35 = *(v486 + 64);
  MEMORY[0x28223BE20](v488);
  v483 = &v325 - v36;
  v482 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DD0, &qword_233290C30);
  v480 = *(v482 - 8);
  v37 = *(v480 + 64);
  MEMORY[0x28223BE20](v482);
  v477 = &v325 - v38;
  v473 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DD8, &qword_233290C38);
  v472 = *(v473 - 8);
  v39 = *(v472 + 64);
  MEMORY[0x28223BE20](v473);
  v470 = &v325 - v40;
  v475 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DE0, &qword_233290C40);
  v474 = *(v475 - 8);
  v41 = *(v474 + 64);
  MEMORY[0x28223BE20](v475);
  v471 = &v325 - v42;
  v467 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DE8, &qword_233290C48);
  v466 = *(v467 - 8);
  v43 = *(v466 + 64);
  MEMORY[0x28223BE20](v467);
  v464 = &v325 - v44;
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DF0, &qword_233290C50);
  v462 = *(v463 - 8);
  v45 = *(v462 + 64);
  MEMORY[0x28223BE20](v463);
  v460 = &v325 - v46;
  v469 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1DF8, &qword_233290C58);
  v468 = *(v469 - 8);
  v47 = *(v468 + 64);
  MEMORY[0x28223BE20](v469);
  v465 = &v325 - v48;
  v457 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E00, &qword_233290C60);
  v456 = *(v457 - 8);
  v49 = *(v456 + 64);
  MEMORY[0x28223BE20](v457);
  v455 = &v325 - v50;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E08, &qword_233290C68);
  v459 = *(v461 - 8);
  v51 = *(v459 + 64);
  MEMORY[0x28223BE20](v461);
  v458 = &v325 - v52;
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E10, &qword_233290C70);
  v453 = *(v454 - 8);
  v53 = *(v453 + 64);
  MEMORY[0x28223BE20](v454);
  v451 = &v325 - v54;
  v449 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E18, &qword_233290C78);
  v448 = *(v449 - 8);
  v55 = *(v448 + 64);
  MEMORY[0x28223BE20](v449);
  v445 = &v325 - v56;
  v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E20, &qword_233290C80);
  v442 = *(v443 - 8);
  v57 = *(v442 + 64);
  MEMORY[0x28223BE20](v443);
  v440 = &v325 - v58;
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E28, &qword_233290C88);
  v450 = *(v452 - 8);
  v59 = *(v450 + 64);
  MEMORY[0x28223BE20](v452);
  v447 = &v325 - v60;
  v446 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E30, &qword_233290C90);
  v444 = *(v446 - 8);
  v61 = *(v444 + 64);
  MEMORY[0x28223BE20](v446);
  v441 = &v325 - v62;
  v434 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E38, &qword_233290C98);
  v433 = *(v434 - 8);
  v63 = *(v433 + 64);
  MEMORY[0x28223BE20](v434);
  v430 = &v325 - v64;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E40, &qword_233290CA0);
  v438 = *(v439 - 8);
  v65 = *(v438 + 64);
  MEMORY[0x28223BE20](v439);
  v437 = &v325 - v66;
  v436 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E48, &qword_233290CA8);
  v435 = *(v436 - 8);
  v67 = *(v435 + 64);
  MEMORY[0x28223BE20](v436);
  v432 = &v325 - v68;
  v421 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E50, &qword_233290CB0);
  v420 = *(v421 - 8);
  v69 = *(v420 + 64);
  MEMORY[0x28223BE20](v421);
  v418 = &v325 - v70;
  v427 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E58, &qword_233290CB8);
  v424 = *(v427 - 8);
  v71 = *(v424 + 64);
  MEMORY[0x28223BE20](v427);
  v423 = &v325 - v72;
  v431 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E60, &qword_233290CC0);
  v429 = *(v431 - 8);
  v73 = *(v429 + 64);
  MEMORY[0x28223BE20](v431);
  v428 = &v325 - v74;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E68, &qword_233290CC8);
  v425 = *(v426 - 8);
  v75 = *(v425 + 64);
  MEMORY[0x28223BE20](v426);
  v422 = &v325 - v76;
  v415 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E70, &qword_233290CD0);
  v414 = *(v415 - 8);
  v77 = *(v414 + 64);
  MEMORY[0x28223BE20](v415);
  v413 = &v325 - v78;
  v419 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E78, &qword_233290CD8);
  v417 = *(v419 - 8);
  v79 = *(v417 + 64);
  MEMORY[0x28223BE20](v419);
  v416 = &v325 - v80;
  v412 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E80, &qword_233290CE0);
  v411 = *(v412 - 8);
  v81 = *(v411 + 64);
  MEMORY[0x28223BE20](v412);
  v410 = &v325 - v82;
  v409 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E88, &qword_233290CE8);
  v408 = *(v409 - 8);
  v83 = *(v408 + 64);
  MEMORY[0x28223BE20](v409);
  v407 = &v325 - v84;
  v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E90, &qword_233290CF0);
  v405 = *(v406 - 8);
  v85 = *(v405 + 64);
  MEMORY[0x28223BE20](v406);
  v404 = &v325 - v86;
  v403 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1E98, &qword_233290CF8);
  v402 = *(v403 - 8);
  v87 = *(v402 + 64);
  MEMORY[0x28223BE20](v403);
  v401 = &v325 - v88;
  v400 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EA0, &qword_233290D00);
  v399 = *(v400 - 8);
  v89 = *(v399 + 64);
  MEMORY[0x28223BE20](v400);
  v398 = &v325 - v90;
  v397 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EA8, &qword_233290D08);
  v396 = *(v397 - 8);
  v91 = *(v396 + 64);
  MEMORY[0x28223BE20](v397);
  v395 = &v325 - v92;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EB0, &qword_233290D10);
  v393 = *(v394 - 8);
  v93 = *(v393 + 64);
  MEMORY[0x28223BE20](v394);
  v392 = &v325 - v94;
  v391 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EB8, &qword_233290D18);
  v390 = *(v391 - 8);
  v95 = *(v390 + 64);
  MEMORY[0x28223BE20](v391);
  v388 = &v325 - v96;
  v386 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EC0, &qword_233290D20);
  v385 = *(v386 - 8);
  v97 = *(v385 + 64);
  MEMORY[0x28223BE20](v386);
  v382 = &v325 - v98;
  v380 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EC8, &qword_233290D28);
  v379 = *(v380 - 8);
  v99 = *(v379 + 64);
  MEMORY[0x28223BE20](v380);
  v377 = &v325 - v100;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1ED0, &qword_233290D30);
  v387 = *(v389 - 8);
  v101 = *(v387 + 64);
  MEMORY[0x28223BE20](v389);
  v384 = &v325 - v102;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1ED8, &qword_233290D38);
  v381 = *(v383 - 8);
  v103 = *(v381 + 64);
  MEMORY[0x28223BE20](v383);
  v378 = &v325 - v104;
  v371 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EE0, &qword_233290D40);
  v370 = *(v371 - 8);
  v105 = *(v370 + 64);
  MEMORY[0x28223BE20](v371);
  v368 = &v325 - v106;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EE8, &qword_233290D48);
  v375 = *(v376 - 8);
  v107 = *(v375 + 64);
  MEMORY[0x28223BE20](v376);
  v374 = &v325 - v108;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EF0, &qword_233290D50);
  v372 = *(v373 - 8);
  v109 = *(v372 + 64);
  MEMORY[0x28223BE20](v373);
  v369 = &v325 - v110;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1EF8, &qword_233290D58);
  v366 = *(v367 - 8);
  v111 = *(v366 + 64);
  MEMORY[0x28223BE20](v367);
  v364 = &v325 - v112;
  v362 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F00, &qword_233290D60);
  v361 = *(v362 - 8);
  v113 = *(v361 + 64);
  MEMORY[0x28223BE20](v362);
  v358 = &v325 - v114;
  v356 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F08, &qword_233290D68);
  v355 = *(v356 - 8);
  v115 = *(v355 + 64);
  MEMORY[0x28223BE20](v356);
  v353 = &v325 - v116;
  v365 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F10, &qword_233290D70);
  v363 = *(v365 - 8);
  v117 = *(v363 + 64);
  MEMORY[0x28223BE20](v365);
  v360 = &v325 - v118;
  v359 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F18, &qword_233290D78);
  v357 = *(v359 - 8);
  v119 = *(v357 + 64);
  MEMORY[0x28223BE20](v359);
  v354 = &v325 - v120;
  v352 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F20, &qword_233290D80);
  v351 = *(v352 - 8);
  v121 = *(v351 + 64);
  MEMORY[0x28223BE20](v352);
  v350 = &v325 - v122;
  v349 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F28, &qword_233290D88);
  v348 = *(v349 - 8);
  v123 = *(v348 + 64);
  MEMORY[0x28223BE20](v349);
  v347 = &v325 - v124;
  v346 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F30, &qword_233290D90);
  v345 = *(v346 - 8);
  v125 = *(v345 + 64);
  MEMORY[0x28223BE20](v346);
  v344 = &v325 - v126;
  v343 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F38, &qword_233290D98);
  v342 = *(v343 - 8);
  v127 = *(v342 + 64);
  MEMORY[0x28223BE20](v343);
  v341 = &v325 - v128;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F40, &qword_233290DA0);
  v339 = *(v340 - 8);
  v129 = *(v339 + 64);
  MEMORY[0x28223BE20](v340);
  v338 = &v325 - v130;
  v337 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F48, &qword_233290DA8);
  v336 = *(v337 - 8);
  v131 = *(v336 + 64);
  MEMORY[0x28223BE20](v337);
  v335 = &v325 - v132;
  v334 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F50, &qword_233290DB0);
  v333 = *(v334 - 8);
  v133 = *(v333 + 64);
  MEMORY[0x28223BE20](v334);
  v332 = &v325 - v134;
  v331 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F58, &qword_233290DB8);
  v330 = *(v331 - 8);
  v135 = *(v330 + 64);
  MEMORY[0x28223BE20](v331);
  v329 = &v325 - v136;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F60, &qword_233290DC0);
  v326 = *(v137 - 8);
  v138 = *(v326 + 64);
  MEMORY[0x28223BE20](v137);
  v140 = &v325 - v139;
  v328 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F68, &qword_233290DC8);
  v327 = *(v328 - 8);
  v141 = *(v327 + 64);
  MEMORY[0x28223BE20](v328);
  v143 = &v325 - v142;
  v144 = type metadata accessor for TTSVBError.Reason(0);
  v145 = *(*(v144 - 8) + 64);
  MEMORY[0x28223BE20](v144);
  v147 = (&v325 - ((v146 + 15) & 0xFFFFFFFFFFFFFFF0));
  v528 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1F70, &qword_233290DD0);
  v524 = *(v528 - 8);
  v148 = *(v524 + 64);
  MEMORY[0x28223BE20](v528);
  v150 = &v325 - v149;
  v151 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23314875C();
  v527 = v150;
  v152 = v147;
  sub_23328E69C();
  sub_23314406C(v526, v147, type metadata accessor for TTSVBError.Reason);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v264 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v265 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 10;
      sub_233149A64();
      v191 = v354;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v359;
      sub_23328E4DC();
      v195 = &v389;
      goto LABEL_76;
    case 2u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v250 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v251 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 11;
      sub_233149A10();
      v191 = v360;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v365;
      sub_23328E4DC();
      v195 = &v395;
      goto LABEL_76;
    case 3u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v260 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v261 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 15;
      sub_2331498C0();
      v191 = v369;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v373;
      sub_23328E4DC();
      v195 = &v404;
      goto LABEL_76;
    case 4u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v224 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v225 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 16;
      sub_23314986C();
      v191 = v374;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v376;
      sub_23328E4DC();
      v195 = &v407;
      goto LABEL_76;
    case 5u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v275 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v276 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 18;
      sub_2331497C4();
      v191 = v378;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v383;
      sub_23328E4DC();
      v195 = &v413;
      goto LABEL_76;
    case 6u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v283 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v284 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 19;
      sub_233149770();
      v191 = v384;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v389;
      sub_23328E4DC();
      v195 = &v419;
      goto LABEL_76;
    case 7u:
      v263 = *v147;
      v262 = v147[1];
      LOBYTE(v530) = 25;
      sub_233149578();
      v247 = v398;
      v156 = v527;
      v155 = v528;
      sub_23328E45C();
      v248 = v400;
      sub_23328E48C();

      v249 = &v431;
      goto LABEL_71;
    case 8u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v289 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v290 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 26;
      sub_233149524();
      v191 = v401;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v403;
      sub_23328E4DC();
      v195 = &v434;
      goto LABEL_76;
    case 9u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v241 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v242 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 27;
      sub_2331494D0();
      v191 = v404;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v406;
      sub_23328E4DC();
      v195 = &v437;
      goto LABEL_76;
    case 0xAu:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v287 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v288 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 28;
      sub_23314947C();
      v191 = v407;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v409;
      sub_23328E4DC();
      v195 = &v440;
      goto LABEL_76;
    case 0xBu:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v221 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v222 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 29;
      sub_233149428();
      v191 = v410;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v412;
      sub_23328E4DC();
      v195 = &v443;
      goto LABEL_76;
    case 0xCu:
      v229 = (v147 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990) + 48));
      v230 = v229[1];
      v523 = *v229;
      v231 = sub_23328CC9C();
      v526 = &v325;
      v232 = *(v231 - 8);
      v233 = *(v232 + 64);
      MEMORY[0x28223BE20](v231);
      v235 = &v325 - ((v234 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v232 + 32))(v235);
      LOBYTE(v530) = 30;
      sub_2331493D4();
      v236 = v416;
      v238 = v527;
      v237 = v528;
      sub_23328E45C();
      LOBYTE(v530) = 0;
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v239 = v419;
      v240 = v525;
      sub_23328E4DC();
      if (!v240)
      {
        LOBYTE(v530) = 1;
        sub_23328E48C();
      }

      (*(v417 + 8))(v236, v239);
      (*(v232 + 8))(v235, v231);
      return (*(v524 + 8))(v238, v237);
    case 0xDu:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v281 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v282 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 31;
      sub_233149380();
      v191 = v413;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v415;
      sub_23328E4DC();
      v195 = &v446;
      goto LABEL_76;
    case 0xEu:
      v197 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      v198 = sub_23328CC9C();
      v526 = &v325;
      v199 = *(v198 - 8);
      v200 = *(v199 + 64);
      MEMORY[0x28223BE20](v198);
      v201 = &v325 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0);
      v522 = v199;
      v202 = *(v199 + 32);
      v203 = v202(v201, v152, v198);
      v523 = &v325;
      MEMORY[0x28223BE20](v203);
      v204 = v201;
      v202(v201, (v152 + v197), v198);
      LOBYTE(v530) = 32;
      sub_23314932C();
      v205 = v422;
      v206 = v527;
      v207 = v528;
      sub_23328E45C();
      LOBYTE(v530) = 0;
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v208 = v426;
      v209 = v525;
      sub_23328E4DC();
      if (v209)
      {
        v210 = &v457;
        goto LABEL_40;
      }

      LOBYTE(v530) = 1;
      sub_23328E4DC();
      v323 = &v457;
      goto LABEL_91;
    case 0xFu:
      v252 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      v198 = sub_23328CC9C();
      v526 = &v325;
      v253 = *(v198 - 8);
      v254 = *(v253 + 64);
      MEMORY[0x28223BE20](v198);
      v201 = &v325 - ((v254 + 15) & 0xFFFFFFFFFFFFFFF0);
      v522 = v253;
      v255 = *(v253 + 32);
      v256 = v255(v201, v152, v198);
      v523 = &v325;
      MEMORY[0x28223BE20](v256);
      v204 = v201;
      v255(v201, (v152 + v252), v198);
      LOBYTE(v530) = 33;
      sub_2331492D8();
      v205 = v428;
      v206 = v527;
      v207 = v528;
      sub_23328E45C();
      LOBYTE(v530) = 0;
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v208 = v431;
      v257 = v525;
      sub_23328E4DC();
      if (v257)
      {
        v210 = &v461;
LABEL_40:
        (*(*(v210 - 32) + 8))(v205, v208);
        v258 = *(v522 + 8);
        v258(v204, v198);
        v258(v201, v198);
        return (*(v524 + 8))(v206, v207);
      }

      else
      {
        LOBYTE(v530) = 1;
        sub_23328E4DC();
        v323 = &v461;
LABEL_91:
        (*(*(v323 - 32) + 8))(v205, v208);
        v324 = *(v522 + 8);
        v324(v204, v198);
        v324(v201, v198);
        return (*(v524 + 8))(v527, v528);
      }

    case 0x10u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v188 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v189 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 34;
      sub_233149284();
      v191 = v423;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v427;
      sub_23328E4DC();
      v195 = &v456;
      goto LABEL_76;
    case 0x11u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v269 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v270 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 36;
      sub_2331491DC();
      v191 = v432;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v436;
      sub_23328E4DC();
      v195 = &v467;
      goto LABEL_76;
    case 0x12u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v285 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v286 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 37;
      sub_233149188();
      v191 = v437;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v439;
      sub_23328E4DC();
      v195 = &v470;
      goto LABEL_76;
    case 0x13u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v304 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v305 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 39;
      sub_2331490E0();
      v191 = v441;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v446;
      sub_23328E4DC();
      v195 = &v476;
      goto LABEL_76;
    case 0x14u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v272 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v273 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 40;
      sub_23314908C();
      v191 = v447;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v452;
      sub_23328E4DC();
      v195 = &v482;
      goto LABEL_76;
    case 0x15u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v279 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v280 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 44;
      sub_233148F3C();
      v191 = v458;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v461;
      sub_23328E4DC();
      v195 = &v491;
      goto LABEL_76;
    case 0x16u:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v301 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v302 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 46;
      sub_233148E94();
      v191 = v465;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v469;
      sub_23328E4DC();
      v195 = &v500;
      goto LABEL_76;
    case 0x17u:
      v186 = sub_23328CE8C();
      v187 = *(v186 - 8);
      v309 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v310 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 49;
      sub_233148D98();
      v191 = v471;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F80, MEMORY[0x28220C0A0]);
      v194 = v475;
      sub_23328E4DC();
      v195 = &v506;
      goto LABEL_76;
    case 0x18u:
      v246 = *v147;
      v245 = v147[1];
      LOBYTE(v530) = 50;
      sub_233148D44();
      v247 = v470;
      v156 = v527;
      v155 = v528;
      sub_23328E45C();
      v248 = v473;
      sub_23328E48C();

      v249 = &v504;
      goto LABEL_71;
    case 0x19u:
      v186 = sub_23328CE8C();
      v187 = *(v186 - 8);
      v243 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v244 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 51;
      sub_233148CF0();
      v191 = v477;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F80, MEMORY[0x28220C0A0]);
      v194 = v482;
      sub_23328E4DC();
      v195 = &v512;
      goto LABEL_76;
    case 0x1Au:
      v186 = sub_23328CC9C();
      v187 = *(v186 - 8);
      v316 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v317 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 52;
      sub_233148C9C();
      v191 = v483;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F88, MEMORY[0x28220BDF8]);
      v194 = v488;
      sub_23328E4DC();
      v195 = &v518;
      goto LABEL_76;
    case 0x1Bu:
      v177 = *v147;
      v178 = *(v147 + 2);
      LOBYTE(v530) = 57;
      sub_233148AF8();
      v179 = v497;
      v181 = v527;
      v180 = v528;
      sub_23328E45C();
      LOBYTE(v530) = 0;
      v182 = v499;
      v183 = v525;
      sub_23328E4AC();
      if (!v183)
      {
        LOBYTE(v530) = 1;
        sub_23328E4FC();
      }

      (*(v498 + 8))(v179, v182);
      return (*(v524 + 8))(v181, v180);
    case 0x1Cu:
      v312 = *v147;
      v311 = v147[1];
      LOBYTE(v530) = 59;
      sub_233148A50();
      v247 = v500;
      v156 = v527;
      v155 = v528;
      sub_23328E45C();
      v248 = v502;
      sub_23328E48C();

      v249 = &v532;
      goto LABEL_71;
    case 0x1Du:
      v186 = sub_23328CE8C();
      v187 = *(v186 - 8);
      v313 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v314 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 60;
      sub_2331489FC();
      v191 = v504;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F80, MEMORY[0x28220C0A0]);
      v194 = v508;
      sub_23328E4DC();
      v195 = &v534;
LABEL_76:
      v268 = *(v195 - 32);
      goto LABEL_77;
    case 0x1Eu:
      v292 = *v147;
      v291 = v147[1];
      LOBYTE(v530) = 61;
      sub_2331489A8();
      v247 = v503;
      v156 = v527;
      v155 = v528;
      sub_23328E45C();
      v248 = v506;
      sub_23328E48C();

      v249 = &v533;
LABEL_71:
      (*(*(v249 - 32) + 8))(v247, v248);
      return (*(v524 + 8))(v156, v155);
    case 0x1Fu:
      v186 = sub_23328CE8C();
      v187 = *(v186 - 8);
      v266 = *(v187 + 64);
      MEMORY[0x28223BE20](v186);
      v190 = &v325 - ((v267 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v187 + 32))(v190, v147, v186);
      LOBYTE(v530) = 62;
      sub_233148954();
      v191 = v509;
      v193 = v527;
      v192 = v528;
      sub_23328E45C();
      sub_233149EA8(&qword_27DDE1F80, MEMORY[0x28220C0A0]);
      v194 = v512;
      sub_23328E4DC();
      v268 = v511;
LABEL_77:
      (*(v268 + 8))(v191, v194);
      (*(v187 + 8))(v190, v186);
      return (*(v524 + 8))(v193, v192);
    case 0x20u:
      v294 = *v147;
      v293 = v147[1];
      LOBYTE(v530) = 63;
      sub_233148900();
      v295 = v510;
      v297 = v527;
      v296 = v528;
      sub_23328E45C();
      LOBYTE(v530) = 0;
      v298 = v514;
      v299 = v525;
      sub_23328E4EC();
      if (!v299)
      {
        LOBYTE(v530) = 1;
        sub_23328E4EC();
      }

      (*(v513 + 8))(v295, v298);
      return (*(v524 + 8))(v297, v296);
    case 0x21u:
      v212 = *v147;
      v211 = v147[1];
      v213 = v147[3];
      v526 = v147[2];
      LOBYTE(v530) = 64;
      sub_2331488AC();
      v214 = v516;
      v216 = v527;
      v215 = v528;
      sub_23328E45C();
      v530 = v212;
      v531 = v211;
      v529 = 0;
      sub_233148804();
      v217 = v521;
      v218 = v525;
      sub_23328E4DC();
      if (v218)
      {

        (*(v520 + 8))(v214, v217);
        (*(v524 + 8))(v216, v215);
      }

      else
      {

        v530 = v526;
        v531 = v213;
        v529 = 1;
        sub_23328E4DC();
        (*(v520 + 8))(v214, v217);
        (*(v524 + 8))(v216, v215);
      }

    case 0x22u:
      v185 = *v147;
      v184 = v147[1];
      LOBYTE(v530) = 65;
      sub_233148858();
      v172 = v515;
      v174 = v527;
      v173 = v528;
      sub_23328E45C();
      v530 = v185;
      v531 = v184;
      sub_233148804();
      v175 = v518;
      sub_23328E4DC();
      v176 = v517;
      goto LABEL_15;
    case 0x23u:
      v171 = *v147;
      v170 = v147[1];
      LOBYTE(v530) = 66;
      sub_2331487B0();
      v172 = v519;
      v174 = v527;
      v173 = v528;
      sub_23328E45C();
      v530 = v171;
      v531 = v170;
      sub_233148804();
      v175 = v523;
      sub_23328E4DC();
      v176 = v522;
LABEL_15:
      (*(v176 + 8))(v172, v175);
      (*(v524 + 8))(v174, v173);

    case 0x24u:
      LOBYTE(v530) = 1;
      sub_233149D58();
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v326 + 8))(v140, v137);
      return (*(v524 + 8))(v160, v159);
    case 0x25u:
      LOBYTE(v530) = 2;
      sub_233149D04();
      v163 = v329;
      v164 = v527;
      v165 = v528;
      sub_23328E45C();
      (*(v330 + 8))(v163, v331);
      return (*(v524 + 8))(v164, v165);
    case 0x26u:
      LOBYTE(v530) = 3;
      sub_233149CB0();
      v315 = v332;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v333 + 8))(v315, v334);
      return (*(v524 + 8))(v160, v159);
    case 0x27u:
      LOBYTE(v530) = 4;
      sub_233149C5C();
      v303 = v335;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v336 + 8))(v303, v337);
      return (*(v524 + 8))(v160, v159);
    case 0x28u:
      LOBYTE(v530) = 5;
      sub_233149C08();
      v226 = v338;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v339 + 8))(v226, v340);
      return (*(v524 + 8))(v160, v159);
    case 0x29u:
      LOBYTE(v530) = 6;
      sub_233149BB4();
      v271 = v341;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v342 + 8))(v271, v343);
      return (*(v524 + 8))(v160, v159);
    case 0x2Au:
      LOBYTE(v530) = 7;
      sub_233149B60();
      v307 = v344;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v345 + 8))(v307, v346);
      return (*(v524 + 8))(v160, v159);
    case 0x2Bu:
      LOBYTE(v530) = 8;
      sub_233149B0C();
      v161 = v347;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v348 + 8))(v161, v349);
      return (*(v524 + 8))(v160, v159);
    case 0x2Cu:
      LOBYTE(v530) = 9;
      sub_233149AB8();
      v196 = v350;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v351 + 8))(v196, v352);
      return (*(v524 + 8))(v160, v159);
    case 0x2Du:
      LOBYTE(v530) = 12;
      sub_2331499BC();
      v300 = v353;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v355 + 8))(v300, v356);
      return (*(v524 + 8))(v160, v159);
    case 0x2Eu:
      LOBYTE(v530) = 13;
      sub_233149968();
      v321 = v358;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v361 + 8))(v321, v362);
      return (*(v524 + 8))(v160, v159);
    case 0x2Fu:
      LOBYTE(v530) = 14;
      sub_233149914();
      v168 = v364;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v366 + 8))(v168, v367);
      return (*(v524 + 8))(v160, v159);
    case 0x30u:
      LOBYTE(v530) = 17;
      sub_233149818();
      v219 = v368;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v370 + 8))(v219, v371);
      return (*(v524 + 8))(v160, v159);
    case 0x31u:
      LOBYTE(v530) = 20;
      sub_23314971C();
      v223 = v377;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v379 + 8))(v223, v380);
      return (*(v524 + 8))(v160, v159);
    case 0x32u:
      LOBYTE(v530) = 21;
      sub_2331496C8();
      v158 = v382;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v385 + 8))(v158, v386);
      return (*(v524 + 8))(v160, v159);
    case 0x33u:
      LOBYTE(v530) = 22;
      sub_233149674();
      v322 = v388;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v390 + 8))(v322, v391);
      return (*(v524 + 8))(v160, v159);
    case 0x34u:
      LOBYTE(v530) = 23;
      sub_233149620();
      v320 = v392;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v393 + 8))(v320, v394);
      return (*(v524 + 8))(v160, v159);
    case 0x35u:
      LOBYTE(v530) = 24;
      sub_2331495CC();
      v167 = v395;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v396 + 8))(v167, v397);
      return (*(v524 + 8))(v160, v159);
    case 0x36u:
      LOBYTE(v530) = 35;
      sub_233149230();
      v318 = v418;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v420 + 8))(v318, v421);
      return (*(v524 + 8))(v160, v159);
    case 0x37u:
      LOBYTE(v530) = 38;
      sub_233149134();
      v319 = v430;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v433 + 8))(v319, v434);
      return (*(v524 + 8))(v160, v159);
    case 0x38u:
      LOBYTE(v530) = 41;
      sub_233149038();
      v169 = v440;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v442 + 8))(v169, v443);
      return (*(v524 + 8))(v160, v159);
    case 0x39u:
      LOBYTE(v530) = 42;
      sub_233148FE4();
      v306 = v445;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v448 + 8))(v306, v449);
      return (*(v524 + 8))(v160, v159);
    case 0x3Au:
      LOBYTE(v530) = 43;
      sub_233148F90();
      v220 = v451;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v453 + 8))(v220, v454);
      return (*(v524 + 8))(v160, v159);
    case 0x3Bu:
      LOBYTE(v530) = 45;
      sub_233148EE8();
      v308 = v455;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v456 + 8))(v308, v457);
      return (*(v524 + 8))(v160, v159);
    case 0x3Cu:
      LOBYTE(v530) = 47;
      sub_233148E40();
      v227 = v460;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v462 + 8))(v227, v463);
      return (*(v524 + 8))(v160, v159);
    case 0x3Du:
      LOBYTE(v530) = 48;
      sub_233148DEC();
      v274 = v464;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v466 + 8))(v274, v467);
      return (*(v524 + 8))(v160, v159);
    case 0x3Eu:
      LOBYTE(v530) = 53;
      sub_233148C48();
      v278 = v476;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v478 + 8))(v278, v479);
      return (*(v524 + 8))(v160, v159);
    case 0x3Fu:
      LOBYTE(v530) = 54;
      sub_233148BF4();
      v259 = v481;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v484 + 8))(v259, v485);
      return (*(v524 + 8))(v160, v159);
    case 0x40u:
      LOBYTE(v530) = 55;
      sub_233148BA0();
      v228 = v487;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v489 + 8))(v228, v490);
      return (*(v524 + 8))(v160, v159);
    case 0x41u:
      LOBYTE(v530) = 56;
      sub_233148B4C();
      v277 = v491;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v492 + 8))(v277, v493);
      return (*(v524 + 8))(v160, v159);
    case 0x42u:
      LOBYTE(v530) = 58;
      sub_233148AA4();
      v162 = v494;
      v160 = v527;
      v159 = v528;
      sub_23328E45C();
      (*(v495 + 8))(v162, v496);
      return (*(v524 + 8))(v160, v159);
    default:
      v154 = *v147;
      v153 = v147[1];
      LOBYTE(v530) = 0;
      sub_233149DAC();
      v156 = v527;
      v155 = v528;
      sub_23328E45C();
      v157 = v328;
      sub_23328E48C();

      (*(v327 + 8))(v143, v157);
      return (*(v524 + 8))(v156, v155);
  }
}

uint64_t TTSVBError.Reason.hash(into:)()
{
  v1 = v0;
  v2 = type metadata accessor for TTSVBError.Reason(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = (&v106 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_23314406C(v1, v5, type metadata accessor for TTSVBError.Reason);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v66 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 10;
      goto LABEL_71;
    case 2u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v55 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 11;
      goto LABEL_71;
    case 3u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v62 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 15;
      goto LABEL_71;
    case 4u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v38 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 16;
      goto LABEL_71;
    case 5u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v74 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 18;
      goto LABEL_71;
    case 6u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v80 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v81 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 19;
      goto LABEL_71;
    case 7u:
      v64 = *v5;
      v65 = *(v5 + 1);
      v8 = 25;
      goto LABEL_65;
    case 8u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v86 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 26;
      goto LABEL_71;
    case 9u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v48 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 27;
      goto LABEL_71;
    case 0xAu:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v84 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 28;
      goto LABEL_71;
    case 0xBu:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v36 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 29;
      goto LABEL_71;
    case 0xCu:
      v40 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990) + 48));
      v42 = *v40;
      v41 = v40[1];
      v43 = sub_23328CC9C();
      v44 = *(v43 - 8);
      v45 = *(v44 + 64);
      MEMORY[0x28223BE20](v43);
      v47 = &v106 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v44 + 32))(v47, v5, v43);
      MEMORY[0x23839C380](30);
      sub_233149EA8(&qword_27DDE1FA0, MEMORY[0x28220BDF8]);
      sub_23328D8CC();
      sub_23328DA3C();

      return (*(v44 + 8))(v47, v43);
    case 0xDu:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v78 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 31;
      goto LABEL_71;
    case 0xEu:
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      v24 = sub_23328CC9C();
      v107 = &v106;
      v25 = *(v24 - 8);
      v26 = v25[8];
      MEMORY[0x28223BE20](v24);
      v27 = &v106 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      v28 = v25[4];
      v29 = v28(v27, v5, v24);
      v106 = &v106;
      MEMORY[0x28223BE20](v29);
      v30 = v27;
      v28(v27, (v5 + v23), v24);
      v31 = 32;
      goto LABEL_35;
    case 0xFu:
      v57 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      v24 = sub_23328CC9C();
      v107 = &v106;
      v25 = *(v24 - 8);
      v58 = v25[8];
      MEMORY[0x28223BE20](v24);
      v27 = &v106 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
      v59 = v25[4];
      v60 = v59(v27, v5, v24);
      v106 = &v106;
      MEMORY[0x28223BE20](v60);
      v30 = v27;
      v59(v27, (v5 + v57), v24);
      v31 = 33;
LABEL_35:
      MEMORY[0x23839C380](v31);
      sub_233149EA8(&qword_27DDE1FA0, MEMORY[0x28220BDF8]);
      sub_23328D8CC();
      sub_23328D8CC();
      v61 = v25[1];
      v61(v30, v24);
      return (v61)(v27, v24);
    case 0x10u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v19 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 34;
      goto LABEL_71;
    case 0x11u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v70 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 36;
      goto LABEL_71;
    case 0x12u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v82 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 37;
      goto LABEL_71;
    case 0x13u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v94 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 39;
      goto LABEL_71;
    case 0x14u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v72 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 40;
      goto LABEL_71;
    case 0x15u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v76 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 44;
      goto LABEL_71;
    case 0x16u:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v92 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 46;
      goto LABEL_71;
    case 0x17u:
      v17 = sub_23328CE8C();
      v18 = *(v17 - 8);
      v96 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v52 = 49;
      goto LABEL_68;
    case 0x18u:
      v53 = *v5;
      v54 = *(v5 + 1);
      v8 = 50;
      goto LABEL_65;
    case 0x19u:
      v17 = sub_23328CE8C();
      v18 = *(v17 - 8);
      v50 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v52 = 51;
      goto LABEL_68;
    case 0x1Au:
      v17 = sub_23328CC9C();
      v18 = *(v17 - 8);
      v104 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v22 = 52;
LABEL_71:
      MEMORY[0x23839C380](v22);
      v102 = &qword_27DDE1FA0;
      v103 = MEMORY[0x28220BDF8];
      goto LABEL_72;
    case 0x1Bu:
      v13 = *v5;
      v14 = *(v5 + 2);
      MEMORY[0x23839C380](57);
      v15 = 0.0;
      if (v13 != 0.0)
      {
        v15 = v13;
      }

      MEMORY[0x23839C3B0](*&v15);
      return sub_23328E64C();
    case 0x1Cu:
      v98 = *v5;
      v99 = *(v5 + 1);
      v8 = 59;
      goto LABEL_65;
    case 0x1Du:
      v17 = sub_23328CE8C();
      v18 = *(v17 - 8);
      v100 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v52 = 60;
      goto LABEL_68;
    case 0x1Eu:
      v88 = *v5;
      v89 = *(v5 + 1);
      v8 = 61;
      goto LABEL_65;
    case 0x1Fu:
      v17 = sub_23328CE8C();
      v18 = *(v17 - 8);
      v68 = *(v18 + 64);
      MEMORY[0x28223BE20](v17);
      v21 = &v106 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 32))(v21, v5, v17);
      v52 = 62;
LABEL_68:
      MEMORY[0x23839C380](v52);
      v102 = &qword_27DDE1F98;
      v103 = MEMORY[0x28220C0A0];
LABEL_72:
      sub_233149EA8(v102, v103);
      sub_23328D8CC();
      return (*(v18 + 8))(v21, v17);
    case 0x20u:
      v90 = *v5;
      v91 = *(v5 + 1);
      MEMORY[0x23839C380](63);
      MEMORY[0x23839C3B0](*&v90);
      return MEMORY[0x23839C3B0](v91);
    case 0x21u:
      v33 = *v5;
      v32 = *(v5 + 1);
      v35 = v5[2];
      v34 = *(v5 + 3);
      MEMORY[0x23839C380](64);
      v108 = v33;
      v109 = v32;
      sub_233149E00();
      sub_23328D8CC();

      v108 = v35;
      v109 = v34;
      sub_23328D8CC();
      goto LABEL_66;
    case 0x22u:
      v11 = *v5;
      v10 = *(v5 + 1);
      v12 = 65;
      goto LABEL_16;
    case 0x23u:
      v11 = *v5;
      v10 = *(v5 + 1);
      v12 = 66;
LABEL_16:
      MEMORY[0x23839C380](v12);
      v108 = v11;
      v109 = v10;
      sub_233149E00();
      sub_23328D8CC();
      goto LABEL_66;
    case 0x24u:
      v9 = 1;
      goto LABEL_78;
    case 0x25u:
      v9 = 2;
      goto LABEL_78;
    case 0x26u:
      v9 = 3;
      goto LABEL_78;
    case 0x27u:
      v9 = 4;
      goto LABEL_78;
    case 0x28u:
      v9 = 5;
      goto LABEL_78;
    case 0x29u:
      v9 = 6;
      goto LABEL_78;
    case 0x2Au:
      v9 = 7;
      goto LABEL_78;
    case 0x2Bu:
      v9 = 8;
      goto LABEL_78;
    case 0x2Cu:
      v9 = 9;
      goto LABEL_78;
    case 0x2Du:
      v9 = 12;
      goto LABEL_78;
    case 0x2Eu:
      v9 = 13;
      goto LABEL_78;
    case 0x2Fu:
      v9 = 14;
      goto LABEL_78;
    case 0x30u:
      v9 = 17;
      goto LABEL_78;
    case 0x31u:
      v9 = 20;
      goto LABEL_78;
    case 0x32u:
      v9 = 21;
      goto LABEL_78;
    case 0x33u:
      v9 = 22;
      goto LABEL_78;
    case 0x34u:
      v9 = 23;
      goto LABEL_78;
    case 0x35u:
      v9 = 24;
      goto LABEL_78;
    case 0x36u:
      v9 = 35;
      goto LABEL_78;
    case 0x37u:
      v9 = 38;
      goto LABEL_78;
    case 0x38u:
      v9 = 41;
      goto LABEL_78;
    case 0x39u:
      v9 = 42;
      goto LABEL_78;
    case 0x3Au:
      v9 = 43;
      goto LABEL_78;
    case 0x3Bu:
      v9 = 45;
      goto LABEL_78;
    case 0x3Cu:
      v9 = 47;
      goto LABEL_78;
    case 0x3Du:
      v9 = 48;
      goto LABEL_78;
    case 0x3Eu:
      v9 = 53;
      goto LABEL_78;
    case 0x3Fu:
      v9 = 54;
      goto LABEL_78;
    case 0x40u:
      v9 = 55;
      goto LABEL_78;
    case 0x41u:
      v9 = 56;
      goto LABEL_78;
    case 0x42u:
      v9 = 58;
LABEL_78:
      result = MEMORY[0x23839C380](v9);
      break;
    default:
      v6 = *v5;
      v7 = *(v5 + 1);
      v8 = 0;
LABEL_65:
      MEMORY[0x23839C380](v8);
      sub_23328DA3C();
LABEL_66:

      break;
  }

  return result;
}

uint64_t TTSVBError.Reason.hashValue.getter()
{
  sub_23328E61C();
  TTSVBError.Reason.hash(into:)();
  return sub_23328E66C();
}

uint64_t TTSVBError.Reason.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v757 = a2;
  v682 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FA8, &qword_233290DD8);
  v684 = *(v682 - 8);
  v3 = *(v684 + 64);
  MEMORY[0x28223BE20](v682);
  v748 = &v520 - v4;
  v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FB0, &qword_233290DE0);
  v760 = *(v681 - 8);
  v5 = *(v760 + 64);
  MEMORY[0x28223BE20](v681);
  v747 = &v520 - v6;
  v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FB8, &qword_233290DE8);
  v689 = *(v683 - 8);
  v7 = *(v689 + 64);
  MEMORY[0x28223BE20](v683);
  v749 = &v520 - v8;
  v680 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FC0, &qword_233290DF0);
  v688 = *(v680 - 8);
  v9 = *(v688 + 64);
  MEMORY[0x28223BE20](v680);
  v746 = &v520 - v10;
  v679 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FC8, &qword_233290DF8);
  v678 = *(v679 - 8);
  v11 = *(v678 + 64);
  MEMORY[0x28223BE20](v679);
  v745 = &v520 - v12;
  v677 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FD0, &qword_233290E00);
  v676 = *(v677 - 8);
  v13 = *(v676 + 64);
  MEMORY[0x28223BE20](v677);
  v744 = &v520 - v14;
  v675 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FD8, &qword_233290E08);
  v674 = *(v675 - 8);
  v15 = *(v674 + 64);
  MEMORY[0x28223BE20](v675);
  v743 = &v520 - v16;
  v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FE0, &qword_233290E10);
  v672 = *(v673 - 8);
  v17 = *(v672 + 64);
  MEMORY[0x28223BE20](v673);
  v742 = &v520 - v18;
  v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FE8, &qword_233290E18);
  v668 = *(v669 - 8);
  v19 = *(v668 + 64);
  MEMORY[0x28223BE20](v669);
  v740 = &v520 - v20;
  v671 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FF0, &qword_233290E20);
  v670 = *(v671 - 8);
  v21 = *(v670 + 64);
  MEMORY[0x28223BE20](v671);
  v741 = &v520 - v22;
  v667 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1FF8, &qword_233290E28);
  v666 = *(v667 - 8);
  v23 = *(v666 + 64);
  MEMORY[0x28223BE20](v667);
  v739 = &v520 - v24;
  v665 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2000, &qword_233290E30);
  v664 = *(v665 - 8);
  v25 = *(v664 + 64);
  MEMORY[0x28223BE20](v665);
  v738 = &v520 - v26;
  v663 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2008, &qword_233290E38);
  v662 = *(v663 - 8);
  v27 = *(v662 + 64);
  MEMORY[0x28223BE20](v663);
  v737 = &v520 - v28;
  v659 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2010, &qword_233290E40);
  v658 = *(v659 - 8);
  v29 = *(v658 + 64);
  MEMORY[0x28223BE20](v659);
  v735 = &v520 - v30;
  v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2018, &qword_233290E48);
  v660 = *(v661 - 8);
  v31 = *(v660 + 64);
  MEMORY[0x28223BE20](v661);
  v736 = &v520 - v32;
  v657 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2020, &qword_233290E50);
  v656 = *(v657 - 8);
  v33 = *(v656 + 64);
  MEMORY[0x28223BE20](v657);
  v756 = &v520 - v34;
  v655 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2028, &qword_233290E58);
  v654 = *(v655 - 8);
  v35 = *(v654 + 64);
  MEMORY[0x28223BE20](v655);
  v734 = &v520 - v36;
  v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2030, &qword_233290E60);
  v652 = *(v653 - 8);
  v37 = *(v652 + 64);
  MEMORY[0x28223BE20](v653);
  v755 = &v520 - v38;
  v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2038, &qword_233290E68);
  v650 = *(v651 - 8);
  v39 = *(v650 + 64);
  MEMORY[0x28223BE20](v651);
  v733 = &v520 - v40;
  v647 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2040, &qword_233290E70);
  v646 = *(v647 - 8);
  v41 = *(v646 + 64);
  MEMORY[0x28223BE20](v647);
  v732 = &v520 - v42;
  v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2048, &qword_233290E78);
  v648 = *(v649 - 8);
  v43 = *(v648 + 64);
  MEMORY[0x28223BE20](v649);
  v754 = &v520 - v44;
  v643 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2050, &qword_233290E80);
  v642 = *(v643 - 8);
  v45 = *(v642 + 64);
  MEMORY[0x28223BE20](v643);
  v731 = &v520 - v46;
  v645 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2058, &qword_233290E88);
  v644 = *(v645 - 8);
  v47 = *(v644 + 64);
  MEMORY[0x28223BE20](v645);
  v753 = &v520 - v48;
  v641 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2060, &qword_233290E90);
  v640 = *(v641 - 8);
  v49 = *(v640 + 64);
  MEMORY[0x28223BE20](v641);
  v730 = &v520 - v50;
  v639 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2068, &qword_233290E98);
  v638 = *(v639 - 8);
  v51 = *(v638 + 64);
  MEMORY[0x28223BE20](v639);
  v729 = &v520 - v52;
  v635 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2070, &qword_233290EA0);
  v634 = *(v635 - 8);
  v53 = *(v634 + 64);
  MEMORY[0x28223BE20](v635);
  v727 = &v520 - v54;
  v637 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2078, &qword_233290EA8);
  v636 = *(v637 - 8);
  v55 = *(v636 + 64);
  MEMORY[0x28223BE20](v637);
  v728 = &v520 - v56;
  v633 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2080, &qword_233290EB0);
  v632 = *(v633 - 8);
  v57 = *(v632 + 64);
  MEMORY[0x28223BE20](v633);
  v726 = &v520 - v58;
  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2088, &qword_233290EB8);
  v628 = *(v629 - 8);
  v59 = *(v628 + 64);
  MEMORY[0x28223BE20](v629);
  v724 = &v520 - v60;
  v631 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2090, &qword_233290EC0);
  v630 = *(v631 - 8);
  v61 = *(v630 + 64);
  MEMORY[0x28223BE20](v631);
  v725 = &v520 - v62;
  v627 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2098, &qword_233290EC8);
  v626 = *(v627 - 8);
  v63 = *(v626 + 64);
  MEMORY[0x28223BE20](v627);
  v723 = &v520 - v64;
  v621 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20A0, &qword_233290ED0);
  v620 = *(v621 - 8);
  v65 = *(v620 + 64);
  MEMORY[0x28223BE20](v621);
  v719 = &v520 - v66;
  v624 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20A8, &qword_233290ED8);
  v623 = *(v624 - 8);
  v67 = *(v623 + 64);
  MEMORY[0x28223BE20](v624);
  v721 = &v520 - v68;
  v625 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20B0, &qword_233290EE0);
  v687 = *(v625 - 8);
  v69 = *(v687 + 64);
  MEMORY[0x28223BE20](v625);
  v722 = &v520 - v70;
  v622 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20B8, &qword_233290EE8);
  v686 = *(v622 - 8);
  v71 = *(v686 + 64);
  MEMORY[0x28223BE20](v622);
  v720 = &v520 - v72;
  v618 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20C0, &qword_233290EF0);
  v617 = *(v618 - 8);
  v73 = *(v617 + 64);
  MEMORY[0x28223BE20](v618);
  v717 = &v520 - v74;
  v619 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20C8, &qword_233290EF8);
  v685 = *(v619 - 8);
  v75 = *(v685 + 64);
  MEMORY[0x28223BE20](v619);
  v718 = &v520 - v76;
  v616 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20D0, &qword_233290F00);
  v615 = *(v616 - 8);
  v77 = *(v615 + 64);
  MEMORY[0x28223BE20](v616);
  v716 = &v520 - v78;
  v614 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20D8, &qword_233290F08);
  v613 = *(v614 - 8);
  v79 = *(v613 + 64);
  MEMORY[0x28223BE20](v614);
  v715 = &v520 - v80;
  v612 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20E0, &qword_233290F10);
  v611 = *(v612 - 8);
  v81 = *(v611 + 64);
  MEMORY[0x28223BE20](v612);
  v752 = &v520 - v82;
  v610 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20E8, &qword_233290F18);
  v609 = *(v610 - 8);
  v83 = *(v609 + 64);
  MEMORY[0x28223BE20](v610);
  v714 = &v520 - v84;
  v608 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20F0, &qword_233290F20);
  v607 = *(v608 - 8);
  v85 = *(v607 + 64);
  MEMORY[0x28223BE20](v608);
  v713 = &v520 - v86;
  v606 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE20F8, &qword_233290F28);
  v605 = *(v606 - 8);
  v87 = *(v605 + 64);
  MEMORY[0x28223BE20](v606);
  v712 = &v520 - v88;
  v604 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2100, &qword_233290F30);
  v603 = *(v604 - 8);
  v89 = *(v603 + 64);
  MEMORY[0x28223BE20](v604);
  v711 = &v520 - v90;
  v602 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2108, &qword_233290F38);
  v601 = *(v602 - 8);
  v91 = *(v601 + 64);
  MEMORY[0x28223BE20](v602);
  v710 = &v520 - v92;
  v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2110, &qword_233290F40);
  v599 = *(v600 - 8);
  v93 = *(v599 + 64);
  MEMORY[0x28223BE20](v600);
  v709 = &v520 - v94;
  v596 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2118, &qword_233290F48);
  v595 = *(v596 - 8);
  v95 = *(v595 + 64);
  MEMORY[0x28223BE20](v596);
  v707 = &v520 - v96;
  v598 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2120, &qword_233290F50);
  v597 = *(v598 - 8);
  v97 = *(v597 + 64);
  MEMORY[0x28223BE20](v598);
  v708 = &v520 - v98;
  v594 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2128, &qword_233290F58);
  v593 = *(v594 - 8);
  v99 = *(v593 + 64);
  MEMORY[0x28223BE20](v594);
  v706 = &v520 - v100;
  v590 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2130, &qword_233290F60);
  v589 = *(v590 - 8);
  v101 = *(v589 + 64);
  MEMORY[0x28223BE20](v590);
  v705 = &v520 - v102;
  v592 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2138, &qword_233290F68);
  v591 = *(v592 - 8);
  v103 = *(v591 + 64);
  MEMORY[0x28223BE20](v592);
  v751 = &v520 - v104;
  v588 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2140, &qword_233290F70);
  v587 = *(v588 - 8);
  v105 = *(v587 + 64);
  MEMORY[0x28223BE20](v588);
  v704 = &v520 - v106;
  v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2148, &qword_233290F78);
  v585 = *(v586 - 8);
  v107 = *(v585 + 64);
  MEMORY[0x28223BE20](v586);
  v703 = &v520 - v108;
  v584 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2150, &qword_233290F80);
  v583 = *(v584 - 8);
  v109 = *(v583 + 64);
  MEMORY[0x28223BE20](v584);
  v702 = &v520 - v110;
  v580 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2158, &qword_233290F88);
  v579 = *(v580 - 8);
  v111 = *(v579 + 64);
  MEMORY[0x28223BE20](v580);
  v701 = &v520 - v112;
  v582 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2160, &qword_233290F90);
  v581 = *(v582 - 8);
  v113 = *(v581 + 64);
  MEMORY[0x28223BE20](v582);
  v750 = &v520 - v114;
  v578 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2168, &qword_233290F98);
  v577 = *(v578 - 8);
  v115 = *(v577 + 64);
  MEMORY[0x28223BE20](v578);
  v700 = &v520 - v116;
  v576 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2170, &qword_233290FA0);
  v575 = *(v576 - 8);
  v117 = *(v575 + 64);
  MEMORY[0x28223BE20](v576);
  v699 = &v520 - v118;
  v574 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2178, &qword_233290FA8);
  v573 = *(v574 - 8);
  v119 = *(v573 + 64);
  MEMORY[0x28223BE20](v574);
  v698 = &v520 - v120;
  v572 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2180, &qword_233290FB0);
  v571 = *(v572 - 8);
  v121 = *(v571 + 64);
  MEMORY[0x28223BE20](v572);
  v697 = &v520 - v122;
  v570 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2188, &qword_233290FB8);
  v569 = *(v570 - 8);
  v123 = *(v569 + 64);
  MEMORY[0x28223BE20](v570);
  v696 = &v520 - v124;
  v567 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2190, &qword_233290FC0);
  v568 = *(v567 - 8);
  v125 = *(v568 + 64);
  MEMORY[0x28223BE20](v567);
  v759 = &v520 - v126;
  v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2198, &qword_233290FC8);
  v565 = *(v566 - 8);
  v127 = *(v565 + 64);
  MEMORY[0x28223BE20](v566);
  v693 = &v520 - v128;
  v564 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE21A0, &qword_233290FD0);
  v563 = *(v564 - 8);
  v129 = *(v563 + 64);
  MEMORY[0x28223BE20](v564);
  v695 = &v520 - v130;
  v562 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE21A8, &qword_233290FD8);
  v561 = *(v562 - 8);
  v131 = *(v561 + 64);
  MEMORY[0x28223BE20](v562);
  v694 = &v520 - v132;
  v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE21B0, &qword_233290FE0);
  v558 = *(v560 - 8);
  v133 = *(v558 + 64);
  MEMORY[0x28223BE20](v560);
  v692 = &v520 - v134;
  v559 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE21B8, &qword_233290FE8);
  v557 = *(v559 - 8);
  v135 = *(v557 + 64);
  MEMORY[0x28223BE20](v559);
  v691 = &v520 - v136;
  v761 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE21C0, &qword_233290FF0);
  v758 = *(v761 - 8);
  v137 = *(v758 + 64);
  MEMORY[0x28223BE20](v761);
  v765 = &v520 - v138;
  v762 = type metadata accessor for TTSVBError.Reason(0);
  v139 = *(*(v762 - 8) + 64);
  v140 = MEMORY[0x28223BE20](v762);
  v535 = (&v520 - ((v141 + 15) & 0xFFFFFFFFFFFFFFF0));
  v142 = MEMORY[0x28223BE20](v140);
  v534 = (&v520 - v143);
  v144 = MEMORY[0x28223BE20](v142);
  v529 = (&v520 - v145);
  v146 = MEMORY[0x28223BE20](v144);
  v528 = (&v520 - v147);
  v148 = MEMORY[0x28223BE20](v146);
  v556 = &v520 - v149;
  v150 = MEMORY[0x28223BE20](v148);
  v533 = (&v520 - v151);
  v152 = MEMORY[0x28223BE20](v150);
  v555 = &v520 - v153;
  v154 = MEMORY[0x28223BE20](v152);
  v532 = (&v520 - v155);
  v156 = MEMORY[0x28223BE20](v154);
  v527 = (&v520 - v157);
  v158 = MEMORY[0x28223BE20](v156);
  v554 = &v520 - v159;
  v160 = MEMORY[0x28223BE20](v158);
  v553 = &v520 - v161;
  v162 = MEMORY[0x28223BE20](v160);
  v531 = (&v520 - v163);
  v164 = MEMORY[0x28223BE20](v162);
  v550 = &v520 - v165;
  v166 = MEMORY[0x28223BE20](v164);
  v549 = &v520 - v167;
  v168 = MEMORY[0x28223BE20](v166);
  v548 = &v520 - v169;
  v170 = MEMORY[0x28223BE20](v168);
  v547 = &v520 - v171;
  v172 = MEMORY[0x28223BE20](v170);
  v546 = &v520 - v173;
  v174 = MEMORY[0x28223BE20](v172);
  v545 = &v520 - v175;
  v176 = MEMORY[0x28223BE20](v174);
  v544 = &v520 - v177;
  v178 = MEMORY[0x28223BE20](v176);
  v543 = &v520 - v179;
  v180 = MEMORY[0x28223BE20](v178);
  v552 = &v520 - v181;
  v182 = MEMORY[0x28223BE20](v180);
  v551 = &v520 - v183;
  v184 = MEMORY[0x28223BE20](v182);
  v542 = &v520 - v185;
  v186 = MEMORY[0x28223BE20](v184);
  v690 = &v520 - v187;
  v188 = MEMORY[0x28223BE20](v186);
  v541 = &v520 - v189;
  v190 = MEMORY[0x28223BE20](v188);
  v540 = &v520 - v191;
  v192 = MEMORY[0x28223BE20](v190);
  v539 = &v520 - v193;
  v194 = MEMORY[0x28223BE20](v192);
  v538 = &v520 - v195;
  v196 = MEMORY[0x28223BE20](v194);
  v530 = (&v520 - v197);
  v198 = MEMORY[0x28223BE20](v196);
  v537 = &v520 - v199;
  v200 = MEMORY[0x28223BE20](v198);
  v536 = &v520 - v201;
  v202 = MEMORY[0x28223BE20](v200);
  v204 = &v520 - v203;
  v205 = MEMORY[0x28223BE20](v202);
  v207 = &v520 - v206;
  v208 = MEMORY[0x28223BE20](v205);
  v210 = &v520 - v209;
  v211 = MEMORY[0x28223BE20](v208);
  v213 = &v520 - v212;
  v214 = MEMORY[0x28223BE20](v211);
  v216 = &v520 - v215;
  MEMORY[0x28223BE20](v214);
  v218 = &v520 - v217;
  v220 = a1[3];
  v219 = a1[4];
  v763 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v220);
  sub_23314875C();
  v221 = v764;
  sub_23328E68C();
  if (v221)
  {
    v222 = v763;
  }

  else
  {
    v521 = v216;
    v526 = v213;
    v522 = v210;
    v523 = v207;
    v524 = v204;
    v224 = v759;
    v223 = v760;
    v764 = 0;
    v525 = v218;
    v225 = v761;
    v226 = v765;
    v227 = sub_23328E44C();
    if (*(v227 + 16) != 1 || (v228 = *(v227 + 32), v228 == 67))
    {
      v238 = sub_23328E29C();
      swift_allocError();
      v240 = v239;
      v241 = v225;
      v242 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1D50, &qword_233290BB0) + 48);
      *v240 = v762;
      sub_23328E39C();
      sub_23328E28C();
      (*(*(v238 - 8) + 104))(v240, *MEMORY[0x277D84160], v238);
      swift_willThrow();
      (*(v758 + 8))(v226, v241);
LABEL_9:
      swift_unknownObjectRelease();
      v222 = v763;
    }

    else
    {
      v520 = v227;
      v229 = v226;
      v230 = v526;
      switch(v228)
      {
        case 1:
          LOBYTE(v769) = 1;
          sub_233149D58();
          v352 = v692;
          v353 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v353)
          {
            goto LABEL_142;
          }

          (*(v558 + 8))(v352, v560);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 2:
          LOBYTE(v769) = 2;
          sub_233149D04();
          v338 = v694;
          v339 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v339)
          {
            goto LABEL_142;
          }

          (*(v561 + 8))(v338, v562);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 3:
          LOBYTE(v769) = 3;
          sub_233149CB0();
          v348 = v695;
          v349 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v349)
          {
            goto LABEL_142;
          }

          (*(v563 + 8))(v348, v564);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 4:
          LOBYTE(v769) = 4;
          sub_233149C5C();
          v311 = v693;
          v312 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v312)
          {
            goto LABEL_142;
          }

          (*(v565 + 8))(v311, v566);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 5:
          LOBYTE(v769) = 5;
          sub_233149C08();
          v371 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v371)
          {
            goto LABEL_142;
          }

          (*(v568 + 8))(v224, v567);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 6:
          LOBYTE(v769) = 6;
          sub_233149BB4();
          v386 = v696;
          v387 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v387)
          {
            goto LABEL_142;
          }

          (*(v569 + 8))(v386, v570);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 7:
          LOBYTE(v769) = 7;
          sub_233149B60();
          v350 = v697;
          v351 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v351)
          {
            goto LABEL_142;
          }

          (*(v571 + 8))(v350, v572);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 8:
          LOBYTE(v769) = 8;
          sub_233149B0C();
          v395 = v698;
          v396 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v396)
          {
            goto LABEL_142;
          }

          (*(v573 + 8))(v395, v574);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 9:
          LOBYTE(v769) = 9;
          sub_233149AB8();
          v329 = v699;
          v330 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v330)
          {
            goto LABEL_142;
          }

          (*(v575 + 8))(v329, v576);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 10:
          LOBYTE(v769) = 10;
          sub_233149A64();
          v393 = v700;
          v394 = v764;
          sub_23328E38C();
          if (v394)
          {
            (*(v758 + 8))(v229, v225);
            goto LABEL_9;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v469 = v578;
          sub_23328E41C();
          v470 = v393;
          v471 = v758;
          (*(v577 + 8))(v470, v469);
          (*(v471 + 8))(v229, v225);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v251 = v525;
          sub_233144E3C(v230, v525, type metadata accessor for TTSVBError.Reason);
          v233 = v763;
          goto LABEL_150;
        case 11:
          LOBYTE(v769) = 11;
          sub_233149A10();
          v302 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v302)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v303 = v522;
          v304 = v582;
          v305 = v750;
          sub_23328E41C();
          v306 = v758;
          (*(v581 + 8))(v305, v304);
          (*(v306 + 8))(v229, v761);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v480 = v303;
          goto LABEL_149;
        case 12:
          LOBYTE(v769) = 12;
          sub_2331499BC();
          v327 = v701;
          v328 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v328)
          {
            goto LABEL_142;
          }

          (*(v579 + 8))(v327, v580);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 13:
          LOBYTE(v769) = 13;
          sub_233149968();
          v384 = v702;
          v385 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v385)
          {
            goto LABEL_142;
          }

          (*(v583 + 8))(v384, v584);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 14:
          LOBYTE(v769) = 14;
          sub_233149914();
          v290 = v703;
          v291 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v291)
          {
            goto LABEL_142;
          }

          (*(v585 + 8))(v290, v586);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 15:
          LOBYTE(v769) = 15;
          sub_2331498C0();
          v340 = v704;
          v341 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v341)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v523;
          v342 = v588;
          sub_23328E41C();
          (*(v587 + 8))(v340, v342);
          (*(v758 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 16:
          LOBYTE(v769) = 16;
          sub_23314986C();
          v282 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v282)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v524;
          v283 = v592;
          v284 = v751;
          sub_23328E41C();
          v285 = v758;
          (*(v591 + 8))(v284, v283);
          (*(v285 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 17:
          LOBYTE(v769) = 17;
          sub_233149818();
          v359 = v705;
          v360 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v360)
          {
            goto LABEL_142;
          }

          (*(v589 + 8))(v359, v590);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 18:
          LOBYTE(v769) = 18;
          sub_2331497C4();
          v388 = v706;
          v389 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v389)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v536;
          v390 = v594;
          sub_23328E41C();
          v391 = v388;
          v392 = v758;
          (*(v593 + 8))(v391, v390);
          (*(v392 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 19:
          LOBYTE(v769) = 19;
          sub_233149770();
          v416 = v708;
          v417 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v417)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v537;
          v418 = v598;
          sub_23328E41C();
          v419 = v416;
          v420 = v758;
          (*(v597 + 8))(v419, v418);
          (*(v420 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 20:
          LOBYTE(v769) = 20;
          sub_23314971C();
          v363 = v707;
          v364 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v364)
          {
            goto LABEL_142;
          }

          (*(v595 + 8))(v363, v596);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 21:
          LOBYTE(v769) = 21;
          sub_2331496C8();
          v382 = v709;
          v383 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v383)
          {
            goto LABEL_142;
          }

          (*(v599 + 8))(v382, v600);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 22:
          LOBYTE(v769) = 22;
          sub_233149674();
          v409 = v710;
          v410 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v410)
          {
            goto LABEL_142;
          }

          (*(v601 + 8))(v409, v602);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 23:
          LOBYTE(v769) = 23;
          sub_233149620();
          v433 = v711;
          v434 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v434)
          {
            goto LABEL_142;
          }

          (*(v603 + 8))(v433, v604);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 24:
          LOBYTE(v769) = 24;
          sub_2331495CC();
          v336 = v712;
          v337 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v337)
          {
            goto LABEL_142;
          }

          (*(v605 + 8))(v336, v606);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 25:
          LOBYTE(v769) = 25;
          sub_233149578();
          v331 = v713;
          v332 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v332)
          {
            goto LABEL_142;
          }

          v333 = v608;
          v334 = sub_23328E3CC();
          v335 = v758;
          v484 = v483;
          (*(v607 + 8))(v331, v333);
          (*(v335 + 8))(v229, v225);
          swift_unknownObjectRelease();
          v485 = v530;
          *v530 = v334;
          *(v485 + 8) = v484;
          swift_storeEnumTagMultiPayload();
          v251 = v525;
          sub_233144E3C(v485, v525, type metadata accessor for TTSVBError.Reason);
          v486 = v757;
          goto LABEL_151;
        case 26:
          LOBYTE(v769) = 26;
          sub_233149524();
          v447 = v714;
          v448 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v448)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v538;
          v449 = v610;
          sub_23328E41C();
          v450 = v447;
          v451 = v758;
          (*(v609 + 8))(v450, v449);
          (*(v451 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 27:
          LOBYTE(v769) = 27;
          sub_2331494D0();
          v273 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v273)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v539;
          v274 = v612;
          v275 = v752;
          sub_23328E41C();
          v276 = v758;
          (*(v611 + 8))(v275, v274);
          (*(v276 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 28:
          LOBYTE(v769) = 28;
          sub_23314947C();
          v435 = v715;
          v436 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v436)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v540;
          v437 = v614;
          sub_23328E41C();
          v438 = v435;
          v439 = v758;
          (*(v613 + 8))(v438, v437);
          (*(v439 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 29:
          LOBYTE(v769) = 29;
          sub_233149428();
          v440 = v716;
          v441 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v441)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v541;
          v442 = v616;
          sub_23328E41C();
          v443 = v440;
          v444 = v758;
          (*(v615 + 8))(v443, v442);
          (*(v444 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 30:
          LOBYTE(v769) = 30;
          sub_2331493D4();
          v397 = v718;
          v398 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v398)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          LOBYTE(v769) = 0;
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v399 = v619;
          v400 = v397;
          sub_23328E41C();
          v401 = v758;
          LOBYTE(v769) = 1;
          v499 = sub_23328E3CC();
          v764 = 0;
          v759 = v513;
          v760 = v499;
          v514 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990);
          v515 = v690;
          v516 = &v690[*(v514 + 48)];
          (*(v685 + 8))(v400, v399);
          (*(v401 + 8))(v229, v225);
          swift_unknownObjectRelease();
          v517 = v759;
          *v516 = v760;
          *(v516 + 1) = v517;
          swift_storeEnumTagMultiPayload();
          v251 = v525;
          sub_233144E3C(v515, v525, type metadata accessor for TTSVBError.Reason);
          v486 = v757;
          goto LABEL_151;
        case 31:
          LOBYTE(v769) = 31;
          sub_233149380();
          v354 = v717;
          v355 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v355)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v542;
          v356 = v618;
          sub_23328E41C();
          v357 = v354;
          v358 = v758;
          (*(v617 + 8))(v357, v356);
          (*(v358 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 32:
          LOBYTE(v769) = 32;
          sub_23314932C();
          v402 = v720;
          v403 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v403)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          LOBYTE(v769) = 0;
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v294 = v551;
          v404 = v622;
          v405 = v402;
          sub_23328E41C();
          v406 = v758;
          v500 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
          LOBYTE(v769) = 1;
          sub_23328E41C();
          (*(v686 + 8))(v405, v404);
          (*(v406 + 8))(v229, v761);
          swift_unknownObjectRelease();
          goto LABEL_154;
        case 33:
          LOBYTE(v769) = 33;
          sub_2331492D8();
          v292 = v722;
          v293 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v293)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          LOBYTE(v769) = 0;
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v294 = v552;
          v295 = v625;
          v296 = v292;
          sub_23328E41C();
          v297 = v758;
          v479 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
          LOBYTE(v769) = 1;
          sub_23328E41C();
          (*(v687 + 8))(v296, v295);
          (*(v297 + 8))(v229, v761);
          swift_unknownObjectRelease();
LABEL_154:
          swift_storeEnumTagMultiPayload();
          v510 = v294;
          goto LABEL_147;
        case 34:
          LOBYTE(v769) = 34;
          sub_233149284();
          v277 = v721;
          v278 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v278)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v543;
          v279 = v624;
          sub_23328E41C();
          v280 = v277;
          v281 = v758;
          (*(v623 + 8))(v280, v279);
          (*(v281 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 35:
          LOBYTE(v769) = 35;
          sub_233149230();
          v266 = v719;
          v267 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v267)
          {
            goto LABEL_142;
          }

          (*(v620 + 8))(v266, v621);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 36:
          LOBYTE(v769) = 36;
          sub_2331491DC();
          v268 = v723;
          v269 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v269)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v544;
          v270 = v627;
          sub_23328E41C();
          v271 = v268;
          v272 = v758;
          (*(v626 + 8))(v271, v270);
          (*(v272 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 37:
          LOBYTE(v769) = 37;
          sub_233149188();
          v254 = v725;
          v255 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v255)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v545;
          v257 = v631;
          sub_23328E41C();
          v258 = v254;
          v259 = v758;
          (*(v630 + 8))(v258, v257);
          (*(v259 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 38:
          LOBYTE(v769) = 38;
          sub_233149134();
          v445 = v724;
          v446 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v446)
          {
            goto LABEL_142;
          }

          (*(v628 + 8))(v445, v629);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 39:
          LOBYTE(v769) = 39;
          sub_2331490E0();
          v411 = v726;
          v412 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v412)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v546;
          v413 = v633;
          sub_23328E41C();
          v414 = v411;
          v415 = v758;
          (*(v632 + 8))(v414, v413);
          (*(v415 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 40:
          LOBYTE(v769) = 40;
          sub_23314908C();
          v313 = v728;
          v314 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v314)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v547;
          v315 = v637;
          sub_23328E41C();
          v316 = v313;
          v317 = v758;
          (*(v636 + 8))(v316, v315);
          (*(v317 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 41:
          LOBYTE(v769) = 41;
          sub_233149038();
          v361 = v727;
          v362 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v362)
          {
            goto LABEL_142;
          }

          (*(v634 + 8))(v361, v635);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 42:
          LOBYTE(v769) = 42;
          sub_233148FE4();
          v425 = v729;
          v426 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v426)
          {
            goto LABEL_142;
          }

          (*(v638 + 8))(v425, v639);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 43:
          LOBYTE(v769) = 43;
          sub_233148F90();
          v249 = v730;
          v250 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v250)
          {
            goto LABEL_142;
          }

          (*(v640 + 8))(v249, v641);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 44:
          LOBYTE(v769) = 44;
          sub_233148F3C();
          v286 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v286)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v548;
          v287 = v645;
          v288 = v753;
          sub_23328E41C();
          v289 = v758;
          (*(v644 + 8))(v288, v287);
          (*(v289 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 45:
          LOBYTE(v769) = 45;
          sub_233148EE8();
          v407 = v731;
          v408 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v408)
          {
            goto LABEL_142;
          }

          (*(v642 + 8))(v407, v643);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 46:
          LOBYTE(v769) = 46;
          sub_233148E94();
          v461 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v461)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v549;
          v462 = v649;
          v463 = v754;
          sub_23328E41C();
          v464 = v758;
          (*(v648 + 8))(v463, v462);
          (*(v464 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 47:
          LOBYTE(v769) = 47;
          sub_233148E40();
          v262 = v732;
          v263 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v263)
          {
            goto LABEL_142;
          }

          (*(v646 + 8))(v262, v647);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 48:
          LOBYTE(v769) = 48;
          sub_233148DEC();
          v298 = v733;
          v299 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v299)
          {
            goto LABEL_142;
          }

          (*(v650 + 8))(v298, v651);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 49:
          LOBYTE(v769) = 49;
          sub_233148D98();
          v307 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v307)
          {
            goto LABEL_142;
          }

          sub_23328CE8C();
          sub_233149EA8(&qword_27DDE21D0, MEMORY[0x28220C0A0]);
          v256 = v550;
          v308 = v653;
          v309 = v755;
          sub_23328E41C();
          v310 = v758;
          (*(v652 + 8))(v309, v308);
          (*(v310 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 50:
          LOBYTE(v769) = 50;
          sub_233148D44();
          v243 = v734;
          v244 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v244)
          {
            goto LABEL_142;
          }

          v245 = v655;
          v246 = sub_23328E3CC();
          v247 = v243;
          v248 = v758;
          v475 = v246;
          v477 = v476;
          (*(v654 + 8))(v247, v245);
          (*(v248 + 8))(v229, v225);
          swift_unknownObjectRelease();
          v493 = v531;
          *v531 = v475;
          v493[1] = v477;
          goto LABEL_146;
        case 51:
          LOBYTE(v769) = 51;
          sub_233148CF0();
          v465 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v465)
          {
            goto LABEL_142;
          }

          sub_23328CE8C();
          sub_233149EA8(&qword_27DDE21D0, MEMORY[0x28220C0A0]);
          v256 = v553;
          v472 = v657;
          v473 = v756;
          sub_23328E41C();
          v474 = v758;
          (*(v656 + 8))(v473, v472);
          (*(v474 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 52:
          LOBYTE(v769) = 52;
          sub_233148C9C();
          v456 = v736;
          v457 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v457)
          {
            goto LABEL_142;
          }

          sub_23328CC9C();
          sub_233149EA8(&qword_27DDE21D8, MEMORY[0x28220BDF8]);
          v256 = v554;
          v458 = v661;
          sub_23328E41C();
          v459 = v456;
          v460 = v758;
          (*(v660 + 8))(v459, v458);
          (*(v460 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 53:
          LOBYTE(v769) = 53;
          sub_233148C48();
          v260 = v735;
          v261 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v261)
          {
            goto LABEL_142;
          }

          (*(v658 + 8))(v260, v659);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 54:
          LOBYTE(v769) = 54;
          sub_233148BF4();
          v452 = v737;
          v453 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v453)
          {
            goto LABEL_142;
          }

          (*(v662 + 8))(v452, v663);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 55:
          LOBYTE(v769) = 55;
          sub_233148BA0();
          v454 = v738;
          v455 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v455)
          {
            goto LABEL_142;
          }

          (*(v664 + 8))(v454, v665);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 56:
          LOBYTE(v769) = 56;
          sub_233148B4C();
          v264 = v739;
          v265 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v265)
          {
            goto LABEL_142;
          }

          (*(v666 + 8))(v264, v667);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
          goto LABEL_136;
        case 57:
          LOBYTE(v769) = 57;
          sub_233148AF8();
          v421 = v741;
          v422 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v422)
          {
            goto LABEL_142;
          }

          LOBYTE(v769) = 0;
          v423 = v671;
          sub_23328E3EC();
          v424 = v758;
          v502 = v501;
          LOBYTE(v769) = 1;
          v518 = sub_23328E43C();
          (*(v670 + 8))(v421, v423);
          (*(v424 + 8))(v229, v225);
          swift_unknownObjectRelease();
          v519 = v527;
          *v527 = v502;
          *(v519 + 2) = v518;
          goto LABEL_155;
        case 58:
          LOBYTE(v769) = 58;
          sub_233148AA4();
          v300 = v740;
          v301 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v301)
          {
            goto LABEL_142;
          }

          (*(v668 + 8))(v300, v669);
          (*(v758 + 8))(v226, v225);
          swift_unknownObjectRelease();
          v251 = v525;
LABEL_136:
          swift_storeEnumTagMultiPayload();
          goto LABEL_150;
        case 59:
          LOBYTE(v769) = 59;
          sub_233148A50();
          v427 = v742;
          v428 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v428)
          {
            goto LABEL_142;
          }

          v429 = v673;
          v430 = sub_23328E3CC();
          v431 = v427;
          v432 = v758;
          v503 = v430;
          v505 = v504;
          (*(v672 + 8))(v431, v429);
          (*(v432 + 8))(v229, v225);
          swift_unknownObjectRelease();
          v493 = v532;
          *v532 = v503;
          v493[1] = v505;
          goto LABEL_146;
        case 60:
          LOBYTE(v769) = 60;
          sub_2331489FC();
          v318 = v743;
          v319 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v319)
          {
            goto LABEL_142;
          }

          sub_23328CE8C();
          sub_233149EA8(&qword_27DDE21D0, MEMORY[0x28220C0A0]);
          v256 = v555;
          v320 = v675;
          sub_23328E41C();
          v321 = v318;
          v322 = v758;
          (*(v674 + 8))(v321, v320);
          (*(v322 + 8))(v229, v225);
          swift_unknownObjectRelease();
          goto LABEL_148;
        case 61:
          LOBYTE(v769) = 61;
          sub_2331489A8();
          v365 = v744;
          v366 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v366)
          {
            goto LABEL_142;
          }

          v367 = v677;
          v368 = sub_23328E3CC();
          v369 = v365;
          v370 = v758;
          v494 = v368;
          v496 = v495;
          (*(v676 + 8))(v369, v367);
          (*(v370 + 8))(v229, v225);
          swift_unknownObjectRelease();
          v493 = v533;
          *v533 = v494;
          v493[1] = v496;
          goto LABEL_146;
        case 62:
          LOBYTE(v769) = 62;
          sub_233148954();
          v377 = v745;
          v378 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v378)
          {
            goto LABEL_142;
          }

          sub_23328CE8C();
          sub_233149EA8(&qword_27DDE21D0, MEMORY[0x28220C0A0]);
          v256 = v556;
          v379 = v679;
          sub_23328E41C();
          v380 = v377;
          v381 = v758;
          (*(v678 + 8))(v380, v379);
          (*(v381 + 8))(v229, v225);
          swift_unknownObjectRelease();
LABEL_148:
          swift_storeEnumTagMultiPayload();
          v480 = v256;
          goto LABEL_149;
        case 63:
          LOBYTE(v769) = 63;
          sub_233148900();
          v343 = v746;
          v344 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v344)
          {
            goto LABEL_142;
          }

          LOBYTE(v769) = 0;
          v345 = v680;
          v346 = sub_23328E42C();
          v347 = v758;
          v487 = v346;
          LOBYTE(v769) = 1;
          v488 = sub_23328E42C();
          v489 = v343;
          v511 = v488;
          (*(v688 + 8))(v489, v345);
          (*(v347 + 8))(v229, v225);
          swift_unknownObjectRelease();
          v512 = v528;
          *v528 = v487;
          v512[1] = v511;
          swift_storeEnumTagMultiPayload();
          v480 = v512;
          goto LABEL_149;
        case 64:
          LOBYTE(v769) = 64;
          sub_2331488AC();
          v323 = v749;
          v324 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v324)
          {
            goto LABEL_142;
          }

          LOBYTE(v767) = 0;
          sub_233149E54();
          v325 = v683;
          sub_23328E41C();
          v326 = v758;
          v764 = v769;
          v481 = v323;
          v482 = v770;
          v766 = 1;
          sub_23328E41C();
          (*(v689 + 8))(v481, v325);
          (*(v326 + 8))(v229, v225);
          swift_unknownObjectRelease();
          v507 = v767;
          v508 = v768;
          v509 = v529;
          *v529 = v764;
          v509[1] = v482;
          v509[2] = v507;
          v509[3] = v508;
          swift_storeEnumTagMultiPayload();
          v510 = v509;
          goto LABEL_147;
        case 65:
          v372 = v223;
          LOBYTE(v769) = 65;
          sub_233148858();
          v373 = v747;
          v374 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v374)
          {
            goto LABEL_142;
          }

          sub_233149E54();
          v375 = v681;
          sub_23328E41C();
          v376 = v758;
          (*(v372 + 8))(v373, v375);
          (*(v376 + 8))(v229, v225);
          swift_unknownObjectRelease();
          v497 = v770;
          v498 = v534;
          *v534 = v769;
          v498[1] = v497;
          swift_storeEnumTagMultiPayload();
          v480 = v498;
          goto LABEL_149;
        case 66:
          LOBYTE(v769) = 66;
          sub_2331487B0();
          v252 = v748;
          v253 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v253)
          {
            (*(v758 + 8))(v229, v225);
            swift_unknownObjectRelease();
            v222 = v233;
            return __swift_destroy_boxed_opaque_existential_0(v222);
          }

          sub_233149E54();
          v466 = v682;
          sub_23328E41C();
          v467 = v252;
          v468 = v758;
          (*(v684 + 8))(v467, v466);
          (*(v468 + 8))(v229, v225);
          swift_unknownObjectRelease();
          v478 = v770;
          v519 = v535;
          *v535 = v769;
          v519[1] = v478;
LABEL_155:
          swift_storeEnumTagMultiPayload();
          v480 = v519;
LABEL_149:
          v251 = v525;
          sub_233144E3C(v480, v525, type metadata accessor for TTSVBError.Reason);
LABEL_150:
          v486 = v757;
          goto LABEL_151;
        default:
          LOBYTE(v769) = 0;
          sub_233149DAC();
          v231 = v691;
          v232 = v764;
          sub_23328E38C();
          v233 = v763;
          if (v232)
          {
LABEL_142:
            (*(v758 + 8))(v229, v225);
            swift_unknownObjectRelease();
          }

          else
          {
            v234 = v559;
            v235 = sub_23328E3CC();
            v236 = v231;
            v237 = v758;
            v490 = v235;
            v492 = v491;
            (*(v557 + 8))(v236, v234);
            (*(v237 + 8))(v229, v225);
            swift_unknownObjectRelease();
            v493 = v521;
            *v521 = v490;
            v493[1] = v492;
LABEL_146:
            swift_storeEnumTagMultiPayload();
            v510 = v493;
LABEL_147:
            v251 = v525;
            sub_233144E3C(v510, v525, type metadata accessor for TTSVBError.Reason);
            v486 = v757;
LABEL_151:
            sub_233144E3C(v251, v486, type metadata accessor for TTSVBError.Reason);
          }

          v222 = v233;
          break;
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v222);
}

uint64_t sub_233143B20()
{
  sub_23328E61C();
  TTSVBError.Reason.hash(into:)();
  return sub_23328E66C();
}

uint64_t sub_233143B64()
{
  sub_23328E61C();
  TTSVBError.Reason.hash(into:)();
  return sub_23328E66C();
}

uint64_t sub_233143BD8(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v8 = MEMORY[0x277D84F90];
    sub_23328E2DC();
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE1B40, &unk_23329A7A0);
      sub_233144EEC(0, &qword_280D3A208, 0x277CCA9B8);
      swift_dynamicCast();
      sub_23328E2BC();
      v7 = *(v8 + 16);
      sub_23328E2EC();
      sub_23328E2FC();
      sub_23328E2CC();
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_233143CEC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_23328E19C();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *v1;
  if (!(*v1 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v6 = __OFADD__(v5, v3);
    result = v5 + v3;
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v4 < 0)
  {
    v14 = *v1;
  }

  v15 = sub_23328E19C();
  v6 = __OFADD__(v15, v3);
  result = v15 + v3;
  if (v6)
  {
    goto LABEL_15;
  }

LABEL_5:
  sub_2331442D8(result);
  v8 = *v1;
  v9 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_233144AAC(v9 + 8 * *(v9 + 0x10) + 32, (*(v9 + 0x18) >> 1) - *(v9 + 0x10), a1);
  v11 = v10;

  if (v11 < v3)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v11 < 1)
  {
LABEL_9:
    *v1 = v8;
    return result;
  }

  v12 = *(v9 + 16);
  v6 = __OFADD__(v12, v11);
  v13 = v12 + v11;
  if (!v6)
  {
    *(v9 + 16) = v13;
    goto LABEL_9;
  }

LABEL_17:
  __break(1u);
  return result;
}

void *sub_233143DDC(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_23314412C(result, v11, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A90, &unk_233290970);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = v3[2];
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    v3[2] = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_233143EE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DDE22B0, &qword_233297B80);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_23314400C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_233144054(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_23314406C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2331440F4(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_23314412C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2298, &qword_233297608);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1A90, &unk_233290970);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_233144260(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_23328E61C();
  sub_23328DA3C();
  v6 = sub_23328E66C();

  return sub_2331443DC(a1, a2, v6);
}

uint64_t sub_2331442D8(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    sub_23328E19C();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = sub_23328E27C();
  *v1 = result;
  return result;
}

uint64_t sub_233144378(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_23328E19C();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return sub_23328E27C();
}

unint64_t sub_2331443DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_23328E54C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_233144494(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2288, &unk_233299A90);
  v36 = a2;
  result = sub_23328E34C();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_233145134(v25, v37);
      }

      else
      {
        sub_23311B0C0(v25, v37);
      }

      v26 = *(v8 + 40);
      sub_23328E61C();
      sub_23328DA3C();
      result = sub_23328E66C();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_233145134(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

_OWORD *sub_23314474C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_233144260(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_233144908();
      v11 = v19;
      goto LABEL_8;
    }

    sub_233144494(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_233144260(a2, a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = sub_23328E5AC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v23);

    return sub_233145134(a1, v23);
  }

  else
  {
    sub_23314489C(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_23314489C(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_233145134(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_233144908()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2288, &unk_233299A90);
  v2 = *v0;
  v3 = sub_23328E33C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_23311B0C0(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_233145134(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_233144AAC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23328E19C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_23328E19C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23315246C(&qword_27DDE22A8, &qword_27DDE22A0, &unk_233297610);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE22A0, &unk_233297610);
            v9 = sub_233144C60(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_233144EEC(0, &qword_280D3A208, 0x277CCA9B8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_233144C60(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23839BFC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_233144CE0;
  }

  __break(1u);
  return result;
}

uint64_t sub_233144CE8()
{
  v0 = sub_23328E37C();

  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_233144D34()
{
  result = qword_27DDE1AC0;
  if (!qword_27DDE1AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1AC0);
  }

  return result;
}

unint64_t sub_233144D88()
{
  result = qword_27DDE1AC8;
  if (!qword_27DDE1AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1AC8);
  }

  return result;
}

uint64_t sub_233144DDC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_233144E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_233144EA4()
{
  result = qword_27DDE1AD8;
  if (!qword_27DDE1AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1AD8);
  }

  return result;
}

uint64_t sub_233144EEC(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

unint64_t sub_233144F34()
{
  result = qword_27DDE1AF8;
  if (!qword_27DDE1AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1AF8);
  }

  return result;
}

unint64_t sub_233144F88()
{
  result = qword_27DDE1B08;
  if (!qword_27DDE1B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1B08);
  }

  return result;
}

unint64_t sub_233144FD0()
{
  result = qword_27DDE1B20;
  if (!qword_27DDE1B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDE1B20);
  }

  return result;
}

unint64_t sub_233145024(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2288, &unk_233299A90);
    v3 = sub_23328E35C();
    v4 = a1 + 32;

    while (1)
    {
      sub_2331523FC(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_233144260(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_233145134(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

_OWORD *sub_233145134(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t _s31TextToSpeechVoiceBankingSupport10TTSVBErrorV7ProblemO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v19 = *a1;
      switch(v3)
      {
        case 1:
          if (v7 != 3 || v5 != 1 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v14 = 1;
          sub_2331220AC(1, 0, 3u);
          return v14 & 1;
        case 2:
          if (v7 != 3 || v5 != 2 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 2;
          goto LABEL_274;
        case 3:
          if (v7 != 3 || v5 != 3 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 3;
          goto LABEL_274;
        case 4:
          if (v7 != 3 || v5 != 4 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 4;
          goto LABEL_274;
        case 5:
          if (v7 != 3 || v5 != 5 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 5;
          goto LABEL_274;
        case 6:
          if (v7 != 3 || v5 != 6 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 6;
          goto LABEL_274;
        case 7:
          if (v7 != 3 || v5 != 7 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 7;
          goto LABEL_274;
        case 8:
          if (v7 != 3 || v5 != 8 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 8;
          goto LABEL_274;
        case 9:
          if (v7 != 3 || v5 != 9 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 9;
          goto LABEL_274;
        case 10:
          if (v7 != 3 || v5 != 10 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 10;
          goto LABEL_274;
        case 11:
          if (v7 != 3 || v5 != 11 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 11;
          goto LABEL_274;
        case 12:
          if (v7 != 3 || v5 != 12 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 12;
          goto LABEL_274;
        case 13:
          if (v7 != 3 || v5 != 13 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 13;
          goto LABEL_274;
        case 14:
          if (v7 != 3 || v5 != 14 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 14;
          goto LABEL_274;
        case 15:
          if (v7 != 3 || v5 != 15 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 15;
          goto LABEL_274;
        case 16:
          if (v7 != 3 || v5 != 16 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 16;
          goto LABEL_274;
        case 17:
          if (v7 != 3 || v5 != 17 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 17;
          goto LABEL_274;
        case 18:
          if (v7 != 3 || v5 != 18 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 18;
          goto LABEL_274;
        case 19:
          if (v7 != 3 || v5 != 19 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 19;
          goto LABEL_274;
        case 20:
          if (v7 != 3 || v5 != 20 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 20;
          goto LABEL_274;
        case 21:
          if (v7 != 3 || v5 != 21 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 21;
          goto LABEL_274;
        case 22:
          if (v7 != 3 || v5 != 22 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 22;
          goto LABEL_274;
        case 23:
          if (v7 != 3 || v5 != 23 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 23;
          goto LABEL_274;
        case 24:
          if (v7 != 3 || v5 != 24 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 24;
          goto LABEL_274;
        case 25:
          if (v7 != 3 || v5 != 25 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 25;
          goto LABEL_274;
        case 26:
          if (v7 != 3 || v5 != 26 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 26;
          goto LABEL_274;
        case 27:
          if (v7 != 3 || v5 != 27 || v6 != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 27;
          goto LABEL_274;
        default:
          if (v7 != 3 || (v6 | v5) != 0)
          {
            goto LABEL_20;
          }

          sub_2331220AC(*a1, v2, 3u);
          v21 = 0;
LABEL_274:
          v22 = 0;
          v23 = 3;
          break;
      }

LABEL_275:
      sub_2331220AC(v21, v22, v23);
      v14 = 1;
      return v14 & 1;
    }

    if (v7 != 2)
    {
      goto LABEL_20;
    }

    sub_2331220AC(*a1, v2, 2u);
    sub_2331220AC(v5, v6, 2u);
    v14 = v5 ^ v3 ^ 1;
  }

  else
  {
    if (!*(a1 + 16))
    {
      if (!*(a2 + 16))
      {
        v8 = *a1;
        if (v3 != v5 || v2 != v6)
        {
          v10 = sub_23328E54C();
          sub_233144054(v5, v6, 0);
          sub_233144054(v3, v2, 0);
          sub_2331220AC(v3, v2, 0);
          v11 = v5;
          v12 = v6;
          v13 = 0;
LABEL_18:
          sub_2331220AC(v11, v12, v13);
          return v10 & 1;
        }

        sub_233144054(v8, v2, 0);
        sub_233144054(v3, v2, 0);
        sub_2331220AC(v3, v2, 0);
        v21 = v3;
        v22 = v2;
        v23 = 0;
        goto LABEL_275;
      }

      goto LABEL_19;
    }

    if (v7 != 1)
    {
LABEL_19:
      v18 = *(a1 + 8);

LABEL_20:
      sub_233144054(v5, v6, v7);
      sub_2331220AC(v3, v2, v4);
      sub_2331220AC(v5, v6, v7);
      v14 = 0;
      return v14 & 1;
    }

    if (v3 != v5 || v2 != v6)
    {
      v16 = *a1;
      v10 = sub_23328E54C();
      sub_233144054(v5, v6, 1u);
      sub_233144054(v3, v2, 1u);
      sub_2331220AC(v3, v2, 1u);
      v11 = v5;
      v12 = v6;
      v13 = 1;
      goto LABEL_18;
    }

    v14 = 1;
    sub_233144054(*a1, v2, 1u);
    sub_233144054(v3, v2, 1u);
    sub_2331220AC(v3, v2, 1u);
    sub_2331220AC(v3, v2, 1u);
  }

  return v14 & 1;
}

uint64_t _s31TextToSpeechVoiceBankingSupport10TTSVBErrorV6ReasonO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v293 = a1;
  v294 = a2;
  v292 = type metadata accessor for TTSVBError.Reason(0);
  v2 = *(*(v292 - 1) + 64);
  v3 = MEMORY[0x28223BE20](v292);
  v287 = (&v263 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = MEMORY[0x28223BE20](v3);
  v286 = (&v263 - v6);
  v7 = MEMORY[0x28223BE20](v5);
  v285 = (&v263 - v8);
  v9 = MEMORY[0x28223BE20](v7);
  v291 = (&v263 - v10);
  v11 = MEMORY[0x28223BE20](v9);
  v289 = &v263 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v280 = (&v263 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v288 = &v263 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v275 = (&v263 - v18);
  v19 = MEMORY[0x28223BE20](v17);
  v290 = (&v263 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v284 = &v263 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v283 = &v263 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v270 = (&v263 - v26);
  v27 = MEMORY[0x28223BE20](v25);
  v282 = &v263 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v281 = &v263 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v278 = &v263 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v276 = &v263 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v274 = &v263 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v273 = &v263 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v272 = &v263 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v271 = &v263 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v279 = &v263 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v277 = &v263 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v268 = &v263 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v269 = &v263 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v267 = &v263 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v266 = &v263 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v265 = &v263 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v264 = &v263 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v61 = (&v263 - v60);
  v62 = MEMORY[0x28223BE20](v59);
  v263 = &v263 - v63;
  v64 = MEMORY[0x28223BE20](v62);
  v66 = &v263 - v65;
  v67 = MEMORY[0x28223BE20](v64);
  v69 = &v263 - v68;
  v70 = MEMORY[0x28223BE20](v67);
  v72 = &v263 - v71;
  v73 = MEMORY[0x28223BE20](v70);
  v75 = &v263 - v74;
  v76 = MEMORY[0x28223BE20](v73);
  v78 = &v263 - v77;
  MEMORY[0x28223BE20](v76);
  v80 = (&v263 - v79);
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE2278, &unk_2332975F0);
  v82 = *(*(v81 - 8) + 64);
  v83 = MEMORY[0x28223BE20](v81 - 8);
  v85 = &v263 - v84;
  v86 = &v263 + *(v83 + 56) - v84;
  sub_23314406C(v293, &v263 - v84, type metadata accessor for TTSVBError.Reason);
  v295 = v86;
  sub_23314406C(v294, v86, type metadata accessor for TTSVBError.Reason);
  v294 = v85;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v192 = v294;
      sub_23314406C(v294, v78, type metadata accessor for TTSVBError.Reason);
      v193 = v295;
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v195 = sub_23328CC9C();
      v196 = v195;
      v197 = *(v195 - 8);
      v198 = v197;
      if (EnumCaseMultiPayload != 1)
      {
        (*(v197 + 8))(v78, v195);
        v87 = v192;
        goto LABEL_128;
      }

      v199 = *(v197 + 64);
      MEMORY[0x28223BE20](v195);
      v201 = &v263 - ((v200 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v198 + 32))(v201, v193, v196);
      v99 = sub_23328CC2C();
      v202 = *(v198 + 8);
      v202(v201, v196);
      v202(v78, v196);
      sub_233144DDC(v192, type metadata accessor for TTSVBError.Reason);
      return v99 & 1;
    case 2u:
      v87 = v294;
      sub_23314406C(v294, v75, type metadata accessor for TTSVBError.Reason);
      v168 = v295;
      v169 = swift_getEnumCaseMultiPayload();
      v170 = sub_23328CC9C();
      v171 = v170;
      v172 = *(v170 - 8);
      v173 = v172;
      if (v169 == 2)
      {
        v174 = *(v172 + 64);
        MEMORY[0x28223BE20](v170);
        v176 = &v263 - ((v175 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v173 + 32))(v176, v168, v171);
        v99 = sub_23328CC2C();
        v177 = *(v173 + 8);
        v177(v176, v171);
        v177(v75, v171);
        goto LABEL_115;
      }

      (*(v172 + 8))(v75, v170);
      goto LABEL_128;
    case 3u:
      v87 = v294;
      sub_23314406C(v294, v72, type metadata accessor for TTSVBError.Reason);
      v180 = v295;
      v181 = swift_getEnumCaseMultiPayload();
      v182 = sub_23328CC9C();
      v183 = v182;
      v184 = *(v182 - 8);
      v185 = v184;
      if (v181 == 3)
      {
        v186 = *(v184 + 64);
        MEMORY[0x28223BE20](v182);
        v188 = &v263 - ((v187 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v185 + 32))(v188, v180, v183);
        v189 = sub_23328CC2C();
        v190 = *(v185 + 8);
        v190(v188, v183);
        v191 = v72;
        v99 = v189;
        v190(v191, v183);
        goto LABEL_115;
      }

      (*(v184 + 8))(v72, v182);
      goto LABEL_128;
    case 4u:
      v87 = v294;
      sub_23314406C(v294, v69, type metadata accessor for TTSVBError.Reason);
      v104 = v295;
      v133 = swift_getEnumCaseMultiPayload();
      v106 = sub_23328CC9C();
      v107 = v106;
      v108 = *(v106 - 8);
      if (v133 != 4)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 5u:
      v87 = v294;
      sub_23314406C(v294, v66, type metadata accessor for TTSVBError.Reason);
      v206 = v295;
      v207 = swift_getEnumCaseMultiPayload();
      v208 = sub_23328CC9C();
      v209 = v208;
      v210 = *(v208 - 8);
      v211 = v210;
      if (v207 == 5)
      {
        v212 = *(v210 + 64);
        MEMORY[0x28223BE20](v208);
        v214 = &v263 - ((v213 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v211 + 32))(v214, v206, v209);
        v99 = sub_23328CC2C();
        v215 = *(v211 + 8);
        v215(v214, v209);
        v215(v66, v209);
        goto LABEL_115;
      }

      (*(v210 + 8))(v66, v208);
      goto LABEL_128;
    case 6u:
      v87 = v294;
      v218 = v263;
      sub_23314406C(v294, v263, type metadata accessor for TTSVBError.Reason);
      v219 = v295;
      v220 = swift_getEnumCaseMultiPayload();
      v221 = sub_23328CC9C();
      v222 = v221;
      v223 = *(v221 - 8);
      v224 = v223;
      if (v220 != 6)
      {
        goto LABEL_138;
      }

      v225 = *(v223 + 64);
      MEMORY[0x28223BE20](v221);
      v227 = &v263 - ((v226 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v224 + 32))(v227, v219, v222);
      v99 = sub_23328CC2C();
      v228 = *(v224 + 8);
      v228(v227, v222);
      v228(v218, v222);
      goto LABEL_115;
    case 7u:
      v87 = v294;
      sub_23314406C(v294, v61, type metadata accessor for TTSVBError.Reason);
      v166 = *v61;
      v165 = v61[1];
      v167 = v295;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_127;
      }

      goto LABEL_104;
    case 8u:
      v87 = v294;
      v218 = v264;
      sub_23314406C(v294, v264, type metadata accessor for TTSVBError.Reason);
      v231 = v295;
      v232 = swift_getEnumCaseMultiPayload();
      v221 = sub_23328CC9C();
      v233 = v221;
      v223 = *(v221 - 8);
      v234 = v223;
      if (v232 == 8)
      {
        v235 = *(v223 + 64);
        MEMORY[0x28223BE20](v221);
        v237 = &v263 - ((v236 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v234 + 32))(v237, v231, v233);
        v99 = sub_23328CC2C();
        v238 = *(v234 + 8);
        v238(v237, v233);
        v238(v218, v233);
        goto LABEL_115;
      }

LABEL_138:
      (*(v223 + 8))(v218, v221);
      goto LABEL_128;
    case 9u:
      v87 = v294;
      v150 = v265;
      sub_23314406C(v294, v265, type metadata accessor for TTSVBError.Reason);
      v151 = v295;
      v152 = swift_getEnumCaseMultiPayload();
      v153 = sub_23328CC9C();
      v154 = v153;
      v155 = *(v153 - 8);
      v156 = v155;
      if (v152 == 9)
      {
        v157 = *(v155 + 64);
        MEMORY[0x28223BE20](v153);
        v159 = &v263 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v156 + 32))(v159, v151, v154);
        v99 = sub_23328CC2C();
        v160 = *(v156 + 8);
        v160(v159, v154);
        v160(v150, v154);
        goto LABEL_115;
      }

      (*(v155 + 8))(v150, v153);
      goto LABEL_128;
    case 0xAu:
      v87 = v294;
      v69 = v266;
      sub_23314406C(v294, v266, type metadata accessor for TTSVBError.Reason);
      v104 = v295;
      v230 = swift_getEnumCaseMultiPayload();
      v106 = sub_23328CC9C();
      v107 = v106;
      v108 = *(v106 - 8);
      if (v230 != 10)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0xBu:
      v87 = v294;
      v69 = v267;
      sub_23314406C(v294, v267, type metadata accessor for TTSVBError.Reason);
      v104 = v295;
      v132 = swift_getEnumCaseMultiPayload();
      v106 = sub_23328CC9C();
      v107 = v106;
      v108 = *(v106 - 8);
      if (v132 != 11)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0xCu:
      v87 = v294;
      v134 = v269;
      sub_23314406C(v294, v269, type metadata accessor for TTSVBError.Reason);
      v135 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B10, &unk_233290990) + 48);
      v136 = *(v134 + v135);
      v137 = *(v134 + v135 + 8);
      v138 = v295;
      if (swift_getEnumCaseMultiPayload() != 12)
      {

        v260 = sub_23328CC9C();
        (*(*(v260 - 8) + 8))(v134, v260);
        goto LABEL_128;
      }

      v140 = *&v138[v135];
      v139 = *&v138[v135 + 8];
      v141 = sub_23328CC9C();
      v142 = *(v141 - 8);
      v143 = *(v142 + 64);
      MEMORY[0x28223BE20](v141);
      v145 = &v263 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v142 + 32))(v145);
      v146 = sub_23328CC2C();
      v147 = v134;
      v148 = v146;
      v149 = *(v142 + 8);
      v149(v147, v141);
      if ((v148 & 1) == 0)
      {
        v149(v145, v141);

        goto LABEL_141;
      }

      if (v136 == v140 && v137 == v139)
      {

        v149(v145, v141);
      }

      else
      {
        v262 = sub_23328E54C();

        v149(v145, v141);
        if ((v262 & 1) == 0)
        {
          goto LABEL_141;
        }
      }

      v258 = v294;
      goto LABEL_125;
    case 0xDu:
      v87 = v294;
      v69 = v268;
      sub_23314406C(v294, v268, type metadata accessor for TTSVBError.Reason);
      v104 = v295;
      v217 = swift_getEnumCaseMultiPayload();
      v106 = sub_23328CC9C();
      v107 = v106;
      v108 = *(v106 - 8);
      if (v217 != 13)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0xEu:
      v87 = v294;
      v109 = v277;
      sub_23314406C(v294, v277, type metadata accessor for TTSVBError.Reason);
      v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      if (swift_getEnumCaseMultiPayload() == 14)
      {
        goto LABEL_26;
      }

      goto LABEL_55;
    case 0xFu:
      v87 = v294;
      v109 = v279;
      sub_23314406C(v294, v279, type metadata accessor for TTSVBError.Reason);
      v110 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDE1B18, &qword_23329B0D0) + 48);
      if (swift_getEnumCaseMultiPayload() != 15)
      {
LABEL_55:
        v178 = sub_23328CC9C();
        v179 = *(*(v178 - 8) + 8);
        v179(v109 + v110, v178);
        v179(v109, v178);
        goto LABEL_128;
      }

LABEL_26:
      v111 = sub_23328CC9C();
      v293 = &v263;
      v112 = v109;
      v113 = *(v111 - 8);
      v114 = v113[8];
      MEMORY[0x28223BE20](v111);
      v115 = &v263 - ((v114 + 15) & 0xFFFFFFFFFFFFFFF0);
      v116 = v113[4];
      v117 = v116(v115);
      v292 = &v263;
      MEMORY[0x28223BE20](v117);
      v118 = (v116)(v115, v112 + v110, v111);
      v291 = &v263;
      MEMORY[0x28223BE20](v118);
      (v116)(v115, &v295[v110], v111);
      v119 = sub_23328CC2C();
      v120 = v113[1];
      v120(v112, v111);
      if (v119)
      {
        v99 = sub_23328CC2C();
        v120(v115, v111);
        v120(v115, v111);
        v120(v115, v111);
        sub_233144DDC(v294, type metadata accessor for TTSVBError.Reason);
        return v99 & 1;
      }

      v120(v115, v111);
      v120(v115, v111);
      v120(v115, v111);
LABEL_141:
      sub_233144DDC(v294, type metadata accessor for TTSVBError.Reason);
      goto LABEL_129;
    case 0x10u:
      v87 = v294;
      v69 = v271;
      sub_23314406C(v294, v271, type metadata accessor for TTSVBError.Reason);
      v104 = v295;
      v105 = swift_getEnumCaseMultiPayload();
      v106 = sub_23328CC9C();
      v107 = v106;
      v108 = *(v106 - 8);
      if (v105 != 16)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x11u:
      v87 = v294;
      v69 = v272;
      sub_23314406C(v294, v272, type metadata accessor for TTSVBError.Reason);
      v104 = v295;
      v204 = swift_getEnumCaseMultiPayload();
      v106 = sub_23328CC9C();
      v107 = v106;
      v108 = *(v106 - 8);
      if (v204 != 17)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x12u:
      v87 = v294;
      v69 = v273;
      sub_23314406C(v294, v273, type metadata accessor for TTSVBError.Reason);
      v104 = v295;
      v229 = swift_getEnumCaseMultiPayload();
      v106 = sub_23328CC9C();
      v107 = v106;
      v108 = *(v106 - 8);
      if (v229 != 18)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x13u:
      v87 = v294;
      v69 = v274;
      sub_23314406C(v294, v274, type metadata accessor for TTSVBError.Reason);
      v104 = v295;
      v243 = swift_getEnumCaseMultiPayload();
      v106 = sub_23328CC9C();
      v107 = v106;
      v108 = *(v106 - 8);
      if (v243 != 19)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x14u:
      v87 = v294;
      v69 = v276;
      sub_23314406C(v294, v276, type metadata accessor for TTSVBError.Reason);
      v104 = v295;
      v205 = swift_getEnumCaseMultiPayload();
      v106 = sub_23328CC9C();
      v107 = v106;
      v108 = *(v106 - 8);
      if (v205 != 20)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x15u:
      v87 = v294;
      v69 = v278;
      sub_23314406C(v294, v278, type metadata accessor for TTSVBError.Reason);
      v104 = v295;
      v216 = swift_getEnumCaseMultiPayload();
      v106 = sub_23328CC9C();
      v107 = v106;
      v108 = *(v106 - 8);
      if (v216 != 21)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x16u:
      v87 = v294;
      v69 = v281;
      sub_23314406C(v294, v281, type metadata accessor for TTSVBError.Reason);
      v104 = v295;
      v242 = swift_getEnumCaseMultiPayload();
      v106 = sub_23328CC9C();
      v107 = v106;
      v108 = *(v106 - 8);
      if (v242 != 22)
      {
        goto LABEL_116;
      }

      goto LABEL_113;
    case 0x17u:
      v87 = v294;
      v69 = v282;
      sub_23314406C(v294, v282, type metadata accessor for TTSVBError.Reason);
      v161 = v295;
      v244 = swift_getEnumCaseMultiPayload();
      v163 = sub_23328CE8C();
      v107 = v163;
      v108 = *(v163 - 8);
      if (v244 != 23)
      {
        goto LABEL_116;
      }

      goto LABEL_110;
    case 0x18u:
      v87 = v294;
      v164 = v270;
      sub_23314406C(v294, v270, type metadata accessor for TTSVBError.Reason);
      v166 = *v164;
      v165 = v164[1];
      v167 = v295;
      if (swift_getEnumCaseMultiPayload() != 24)
      {
        goto LABEL_127;
      }

      goto LABEL_104;
    case 0x19u:
      v87 = v294;
      v69 = v283;
      sub_23314406C(v294, v283, type metadata accessor for TTSVBError.Reason);
      v161 = v295;
      v162 = swift_getEnumCaseMultiPayload();
      v163 = sub_23328CE8C();
      v107 = v163;
      v108 = *(v163 - 8);
      if (v162 != 25)
      {
        goto LABEL_116;
      }

      goto LABEL_110;
    case 0x1Au:
      v87 = v294;
      v69 = v284;
      sub_23314406C(v294, v284, type metadata accessor for TTSVBError.Reason);
      v104 = v295;
      v254 = swift_getEnumCaseMultiPayload();
      v106 = sub_23328CC9C();
      v107 = v106;
      v108 = *(v106 - 8);
      if (v254 != 26)
      {
        goto LABEL_116;
      }

LABEL_113:
      v255 = *(v108 + 64);
      MEMORY[0x28223BE20](v106);
      v252 = &v263 - ((v256 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v108 + 32))(v252, v104, v107);
      v253 = sub_23328CC2C();
      goto LABEL_114;
    case 0x1Bu:
      v87 = v294;
      v97 = v290;
      sub_23314406C(v294, v290, type metadata accessor for TTSVBError.Reason);
      v98 = *(v97 + 2);
      if (swift_getEnumCaseMultiPayload() != 27)
      {
        goto LABEL_128;
      }

      if (*v290 != *v295)
      {
        goto LABEL_143;
      }

      v99 = v98 == *(v295 + 2);
      goto LABEL_115;
    case 0x1Cu:
      v87 = v294;
      v245 = v275;
      sub_23314406C(v294, v275, type metadata accessor for TTSVBError.Reason);
      v166 = *v245;
      v165 = v245[1];
      v167 = v295;
      if (swift_getEnumCaseMultiPayload() == 28)
      {
        goto LABEL_104;
      }

      goto LABEL_127;
    case 0x1Du:
      v87 = v294;
      v69 = v288;
      sub_23314406C(v294, v288, type metadata accessor for TTSVBError.Reason);
      v161 = v295;
      v249 = swift_getEnumCaseMultiPayload();
      v163 = sub_23328CE8C();
      v107 = v163;
      v108 = *(v163 - 8);
      if (v249 == 29)
      {
        goto LABEL_110;
      }

      goto LABEL_116;
    case 0x1Eu:
      v87 = v294;
      v239 = v280;
      sub_23314406C(v294, v280, type metadata accessor for TTSVBError.Reason);
      v166 = *v239;
      v165 = v239[1];
      v167 = v295;
      if (swift_getEnumCaseMultiPayload() != 30)
      {
        goto LABEL_127;
      }

LABEL_104:
      v246 = *v167;
      v247 = v167[1];
      if (v166 == v246 && v165 == v247)
      {
        goto LABEL_106;
      }

      v248 = sub_23328E54C();

      if ((v248 & 1) == 0)
      {
        goto LABEL_143;
      }

      goto LABEL_124;
    case 0x1Fu:
      v87 = v294;
      v69 = v289;
      sub_23314406C(v294, v289, type metadata accessor for TTSVBError.Reason);
      v161 = v295;
      v203 = swift_getEnumCaseMultiPayload();
      v163 = sub_23328CE8C();
      v107 = v163;
      v108 = *(v163 - 8);
      if (v203 != 31)
      {
LABEL_116:
        (*(v108 + 8))(v69, v107);
        goto LABEL_128;
      }

LABEL_110:
      v250 = *(v108 + 64);
      MEMORY[0x28223BE20](v163);
      v252 = &v263 - ((v251 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v108 + 32))(v252, v161, v107);
      v253 = sub_23328CE5C();
LABEL_114:
      v99 = v253;
      v257 = *(v108 + 8);
      v257(v252, v107);
      v257(v69, v107);
      goto LABEL_115;
    case 0x20u:
      v87 = v294;
      v240 = v291;
      sub_23314406C(v294, v291, type metadata accessor for TTSVBError.Reason);
      v241 = *(v240 + 8);
      if (swift_getEnumCaseMultiPayload() != 32)
      {
        goto LABEL_128;
      }

      if (*v291 != *v295)
      {
        goto LABEL_143;
      }

      v99 = v241 == *(v295 + 1);
      goto LABEL_115;
    case 0x21u:
      v87 = v294;
      v121 = v285;
      sub_23314406C(v294, v285, type metadata accessor for TTSVBError.Reason);
      v123 = v121[1];
      v122 = v121[2];
      v124 = v121[3];
      v125 = v295;
      if (swift_getEnumCaseMultiPayload() != 33)
      {

LABEL_127:

LABEL_128:
        sub_233121E04(v87, &qword_27DDE2278, &unk_2332975F0);
        goto LABEL_129;
      }

      v126 = *v121;
      v127 = *v125;
      v128 = v125[1];
      v130 = v125[2];
      v129 = v125[3];
      v131 = sub_233128650();

      if ((v131 & 1) == 0)
      {

        goto LABEL_143;
      }

LABEL_21:
      v99 = sub_233128650();

LABEL_115:
      sub_233144DDC(v87, type metadata accessor for TTSVBError.Reason);
      return v99 & 1;
    case 0x22u:
      v87 = v294;
      v94 = v286;
      sub_23314406C(v294, v286, type metadata accessor for TTSVBError.Reason);
      v100 = v94[1];
      v96 = v295;
      if (swift_getEnumCaseMultiPayload() == 34)
      {
        goto LABEL_20;
      }

      goto LABEL_127;
    case 0x23u:
      v87 = v294;
      v94 = v287;
      sub_23314406C(v294, v287, type metadata accessor for TTSVBError.Reason);
      v95 = v94[1];
      v96 = v295;
      if (swift_getEnumCaseMultiPayload() != 35)
      {
        goto LABEL_127;
      }

LABEL_20:
      v101 = *v94;
      v102 = *v96;
      v103 = v96[1];
      goto LABEL_21;
    case 0x24u:
      v93 = swift_getEnumCaseMultiPayload() == 36;
      goto LABEL_122;
    case 0x25u:
      v93 = swift_getEnumCaseMultiPayload() == 37;
      goto LABEL_122;
    case 0x26u:
      v93 = swift_getEnumCaseMultiPayload() == 38;
      goto LABEL_122;
    case 0x27u:
      v93 = swift_getEnumCaseMultiPayload() == 39;
      goto LABEL_122;
    case 0x28u:
      v93 = swift_getEnumCaseMultiPayload() == 40;
      goto LABEL_122;
    case 0x29u:
      v93 = swift_getEnumCaseMultiPayload() == 41;
      goto LABEL_122;
    case 0x2Au:
      v93 = swift_getEnumCaseMultiPayload() == 42;
      goto LABEL_122;
    case 0x2Bu:
      v93 = swift_getEnumCaseMultiPayload() == 43;
      goto LABEL_122;
    case 0x2Cu:
      v93 = swift_getEnumCaseMultiPayload() == 44;
      goto LABEL_122;
    case 0x2Du:
      v93 = swift_getEnumCaseMultiPayload() == 45;
      goto LABEL_122;
    case 0x2Eu:
      v93 = swift_getEnumCaseMultiPayload() == 46;
      goto LABEL_122;
    case 0x2Fu:
      v93 = swift_getEnumCaseMultiPayload() == 47;
      goto LABEL_122;
    case 0x30u:
      v93 = swift_getEnumCaseMultiPayload() == 48;
      goto LABEL_122;
    case 0x31u:
      v93 = swift_getEnumCaseMultiPayload() == 49;
      goto LABEL_122;
    case 0x32u:
      v93 = swift_getEnumCaseMultiPayload() == 50;
      goto LABEL_122;
    case 0x33u:
      v93 = swift_getEnumCaseMultiPayload() == 51;
      goto LABEL_122;
    case 0x34u:
      v93 = swift_getEnumCaseMultiPayload() == 52;
      goto LABEL_122;
    case 0x35u:
      v93 = swift_getEnumCaseMultiPayload() == 53;
      goto LABEL_122;
    case 0x36u:
      v93 = swift_getEnumCaseMultiPayload() == 54;
      goto LABEL_122;
    case 0x37u:
      v93 = swift_getEnumCaseMultiPayload() == 55;
      goto LABEL_122;
    case 0x38u:
      v93 = swift_getEnumCaseMultiPayload() == 56;
      goto LABEL_122;
    case 0x39u:
      v93 = swift_getEnumCaseMultiPayload() == 57;
      goto LABEL_122;
    case 0x3Au:
      v93 = swift_getEnumCaseMultiPayload() == 58;
      goto LABEL_122;
    case 0x3Bu:
      v93 = swift_getEnumCaseMultiPayload() == 59;
      goto LABEL_122;
    case 0x3Cu:
      v93 = swift_getEnumCaseMultiPayload() == 60;
      goto LABEL_122;
    case 0x3Du:
      v93 = swift_getEnumCaseMultiPayload() == 61;
      goto LABEL_122;
    case 0x3Eu:
      v93 = swift_getEnumCaseMultiPayload() == 62;
      goto LABEL_122;
    case 0x3Fu:
      v93 = swift_getEnumCaseMultiPayload() == 63;
      goto LABEL_122;
    case 0x40u:
      v93 = swift_getEnumCaseMultiPayload() == 64;
      goto LABEL_122;
    case 0x41u:
      v93 = swift_getEnumCaseMultiPayload() == 65;
      goto LABEL_122;
    case 0x42u:
      v93 = swift_getEnumCaseMultiPayload() == 66;
LABEL_122:
      v87 = v294;
      if (!v93)
      {
        goto LABEL_128;
      }

      goto LABEL_124;
    default:
      v87 = v294;
      sub_23314406C(v294, v80, type metadata accessor for TTSVBError.Reason);
      v89 = *v80;
      v88 = v80[1];
      v90 = v295;
      if (swift_getEnumCaseMultiPayload())
      {
        goto LABEL_127;
      }

      v91 = *v90;
      v92 = v90[1];
      if (v89 == v91 && v88 == v92)
      {
LABEL_106:

        goto LABEL_124;
      }

      v261 = sub_23328E54C();

      if (v261)
      {
LABEL_124:
        v258 = v87;
LABEL_125:
        sub_233144DDC(v258, type metadata accessor for TTSVBError.Reason);
        v99 = 1;
        return v99 & 1;
      }

LABEL_143:
      sub_233144DDC(v87, type metadata accessor for TTSVBError.Reason);
LABEL_129:
      v99 = 0;
      return v99 & 1;
  }
}

uint64_t _s31TextToSpeechVoiceBankingSupport10TTSVBErrorV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v20 = *a1;
  v21 = v4;
  v22 = v5;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v17 = *a2;
  v18 = v6;
  v19 = v7;
  sub_233144054(v20, v4, v5);
  sub_233144054(v17, v6, v7);
  v8 = _s31TextToSpeechVoiceBankingSupport10TTSVBErrorV7ProblemO2eeoiySbAE_AEtFZ_0(&v20, &v17);
  sub_2331220AC(v17, v18, v19);
  sub_2331220AC(v20, v21, v22);
  if (v8)
  {
    v9 = type metadata accessor for TTSVBError(0);
    if (_s31TextToSpeechVoiceBankingSupport10TTSVBErrorV6ReasonO2eeoiySbAE_AEtFZ_0(a1 + *(v9 + 20), a2 + *(v9 + 20)))
    {
      v10 = *(v9 + 24);
      v11 = *(a1 + v10);
      v12 = *(a2 + v10);
      if (v11)
      {
        if (v12)
        {
          sub_233144EEC(0, &qword_280D3A208, 0x277CCA9B8);
          v13 = v12;
          v14 = v11;
          v15 = sub_23328DFDC();

          if (v15)
          {
            return 1;
          }
        }
      }

      else if (!v12)
      {
        return 1;
      }
    }
  }

  return 0;
}