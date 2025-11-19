__n128 sub_1000011A0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 sub_1000011C4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1000011D8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000011F8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 24) = v3;
  return result;
}

__n128 sub_10000125C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_100001290(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 152))
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

uint64_t sub_1000012D8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
      *(result + 152) = 1;
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

    *(result + 152) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_10000134C()
{
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD000000000000028, 0x80000001000972A0, 0, 0, 0, 0xE000000000000000, v2, v1, 1, &_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage, 0, &_swiftEmptyArrayStorage);
  xmmword_1000B61D0 = v2[6];
  unk_1000B61E0 = v2[7];
  xmmword_1000B61F0 = v2[8];
  qword_1000B6200 = v3;
  xmmword_1000B6190 = v2[2];
  unk_1000B61A0 = v2[3];
  xmmword_1000B61B0 = v2[4];
  unk_1000B61C0 = v2[5];
  result = *v2;
  xmmword_1000B6170 = v2[0];
  unk_1000B6180 = v2[1];
  return result;
}

uint64_t sub_10000140C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 104);
  v29 = *(a3 + 88);
  v30 = v7;
  v8 = *(a3 + 136);
  v31 = *(a3 + 120);
  v32 = v8;
  v9 = sub_1000021C0(&qword_1000B47E0, &qword_10008E998);
  OptionGroup.wrappedValue.getter(v9, &v33);
  v10 = sub_1000054E4();
  v37 = v33;
  v38 = v34;
  v11 = &unk_10008E9A0;
  sub_100002BCC(&v37, &qword_1000B47E8, &unk_10008E9A0);
  v39 = v35;
  v40 = v36;
  sub_100002BCC(&v39, &qword_1000B47E8, &unk_10008E9A0);
  if (v10 == 2)
  {
    v12 = 0;
    if (*(a1 + 40))
    {
      goto LABEL_3;
    }

    goto LABEL_8;
  }

  result = *(a1 + 40);
  if (!result)
  {
    __break(1u);
    return result;
  }

  result = sub_100004444();
  if (!v3)
  {
    v12 = result;
    if (*(a1 + 40))
    {
LABEL_3:
      v11 = swift_allocObject();
      v11[2] = &_swiftEmptyArrayStorage;
      v13 = swift_allocObject();
      *(v13 + 16) = sub_100002310;
      *(v13 + 24) = v11;
      *&v29 = sub_100002350;
      *(&v29 + 1) = v13;
      swift_retain_n();
      v14 = swift_reflection_iterateMetadataAllocations();

      if (v14)
      {

        v15 = String.init(cString:)();
        v17 = v16;
        sub_100002388();
        swift_allocError();
        *v18 = v15;
        v18[1] = v17;
        swift_willThrow();
      }

      goto LABEL_9;
    }

LABEL_8:
    __break(1u);
LABEL_9:

    swift_beginAccess();
    v20 = v11[2];

    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = (v20 + 48);
      do
      {
        if (v22 >= *(v20 + 16))
        {
          __break(1u);
        }

        ++v22;
        v24 = *v23;
        v25 = *(v23 - 1);
        v26 = *(v23 - 4);
        v27 = v25;
        v28 = v24;
        sub_10000170C(&v26, a1, a2, a3, v12);
        v23 += 6;
      }

      while (v21 != v22);
    }
  }

  return result;
}

uint64_t sub_10000170C(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *(a2 + 40);
  if (result)
  {
    v8 = *a1;
    v9 = *(a1 + 1);
    v10 = a1[4];
    if (swift_reflection_metadataAllocationTagName())
    {
      v11 = String.init(cString:)();
      v13 = v12;
    }

    else
    {
      v13 = 0xE90000000000003ELL;
      v11 = 0x6E776F6E6B6E753CLL;
    }

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_10008E640;
    _StringGuts.grow(_:)(48);

    *&v40 = 0xD00000000000001ALL;
    *(&v40 + 1) = 0x8000000100097260;
    sub_1000023DC();
    v15._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 9071406774580000;
    v16._object = 0xE700000000000000;
    String.append(_:)(v16);
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 0x203A67617420;
    v18._object = 0xE600000000000000;
    String.append(_:)(v18);
    *&v44 = __PAIR64__(HIDWORD(v10), v8);
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 10272;
    v20._object = 0xE200000000000000;
    String.append(_:)(v20);
    v21._countAndFlagsBits = v11;
    v21._object = v13;
    String.append(_:)(v21);

    v22._countAndFlagsBits = 41;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23 = v40;
    *(v14 + 56) = &type metadata for String;
    *(v14 + 32) = v23;
    print(_:separator:terminator:)();

    v24 = *(a4 + 104);
    v40 = *(a4 + 88);
    v41 = v24;
    v25 = *(a4 + 136);
    v42 = *(a4 + 120);
    v43 = v25;
    v26 = sub_1000021C0(&qword_1000B47E0, &qword_10008E998);
    OptionGroup.wrappedValue.getter(v26, &v44);
    v27 = sub_1000054E4();
    v48 = v44;
    v49 = v45;
    sub_100002BCC(&v48, &qword_1000B47E8, &unk_10008E9A0);
    v40 = v46;
    LOBYTE(v41) = v47;
    result = sub_100002BCC(&v40, &qword_1000B47E8, &unk_10008E9A0);
    if (v27 != 2)
    {
      if (a5 && *(a5 + 16) && (v28 = sub_10001F92C(v9), (v29 & 1) != 0))
      {
        v30 = *(*(a5 + 56) + 8 * v28);
        v31 = swift_allocObject();
        *(v31 + 16) = xmmword_10008E640;
        swift_unknownObjectRetain();

        v33 = sub_1000102F4(v32, v27 & 1, a2, a3);
        v35 = v34;

        swift_unknownObjectRelease();
        v36 = v31;
        *(v31 + 56) = &type metadata for String;
        *(v31 + 32) = v33;
      }

      else
      {
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_10008E640;
        v35 = 0x8000000100097280;
        *(v36 + 56) = &type metadata for String;
        *(v36 + 32) = 0xD00000000000001ALL;
      }

      *(v36 + 40) = v35;
      print(_:separator:terminator:)();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100001B04()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100001B78()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t sub_100001BBC()
{
  if (*v0)
  {
    result = 0xD000000000000010;
  }

  else
  {
    result = 0x736E6F6974706FLL;
  }

  *v0;
  return result;
}

uint64_t sub_100001BFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001000972D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100001CF8(uint64_t a1)
{
  v2 = sub_100002AE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100001D34(uint64_t a1)
{
  v2 = sub_100002AE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100001D70@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B46D0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B6170, v2);
}

uint64_t sub_100001DE4()
{
  v1 = *(v0 + 112);
  v32 = *(v0 + 96);
  v33 = v1;
  v34 = *(v0 + 128);
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);
  v28 = *(v0 + 32);
  v29 = v2;
  v4 = *(v0 + 48);
  v5 = *(v0 + 80);
  v30 = *(v0 + 64);
  v31 = v5;
  v6 = *(v0 + 16);
  v27[0] = *v0;
  v27[1] = v6;
  v17[2] = v28;
  v17[3] = v4;
  v17[4] = v30;
  v35 = *(v0 + 144);
  v18 = *(v0 + 80);
  v17[0] = v27[0];
  v17[1] = v3;
  v7 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  OptionGroup.wrappedValue.getter(v7, v19);
  v8 = v19[0];
  v9 = v19[1];
  v10 = v20;
  v11 = v21;
  v12 = v22;
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v36 = v26;
  sub_100002250(v27, v17);
  sub_10000648C(v8, v9, v10, v11, v12, v13, v27);
  sub_100002288(v27);
  sub_1000022B8(v8, v9, v10);
  sub_1000022C8(v11, v12, v13);
  return sub_1000022C8(v14, v15, v36);
}

double sub_100001F28@<D0>(uint64_t a1@<X8>)
{
  v2 = ArgumentVisibility.default.unsafeMutableAddressor();
  v3 = *v2;
  v4 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v3, &type metadata for UniversalOptions, v4, v20);
  v15 = v20[2];
  v16 = v20[3];
  v17 = v20[4];
  *&v18[0] = v21;
  v13 = v20[0];
  v14 = v20[1];
  LOBYTE(v2) = *v2;
  v5 = sub_1000024E0();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v2, &type metadata for BacktraceOptions, v5, v18 + 8);
  v27 = v18[3];
  v6 = v19;
  v24 = v16;
  v25 = v17;
  v26 = v18[0];
  v22 = v13;
  v23 = v14;
  v7 = v18[2];
  *(a1 + 96) = v18[1];
  *(a1 + 112) = v7;
  *(a1 + 128) = v27;
  *(a1 + 144) = v6;
  v8 = v24;
  v9 = v25;
  v10 = v26;
  *(a1 + 32) = v15;
  *(a1 + 48) = v8;
  *(a1 + 64) = v9;
  *(a1 + 80) = v10;
  result = *&v22;
  v12 = v23;
  *a1 = v22;
  *(a1 + 16) = v12;
  return result;
}

double sub_100002054@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100002534(a1, v9);
  if (!v2)
  {
    v5 = v9[7];
    *(a2 + 96) = v9[6];
    *(a2 + 112) = v5;
    *(a2 + 128) = v9[8];
    *(a2 + 144) = v10;
    v6 = v9[3];
    *(a2 + 32) = v9[2];
    *(a2 + 48) = v6;
    v7 = v9[5];
    *(a2 + 64) = v9[4];
    *(a2 + 80) = v7;
    result = *v9;
    v8 = v9[1];
    *a2 = v9[0];
    *(a2 + 16) = v8;
  }

  return result;
}

unint64_t sub_1000020C8(uint64_t a1)
{
  result = sub_1000020F0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000020F0()
{
  result = qword_1000B47C8;
  if (!qword_1000B47C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B47C8);
  }

  return result;
}

unint64_t sub_100002144(uint64_t a1)
{
  result = sub_10000216C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000216C()
{
  result = qword_1000B47D0;
  if (!qword_1000B47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B47D0);
  }

  return result;
}

uint64_t sub_1000021C0(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1000022B8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1000022C8(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1000022D8()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100002318()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100002350(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return v2(*a1, *(a1 + 1), a1[4]);
}

unint64_t sub_100002388()
{
  result = qword_1000B47F0;
  if (!qword_1000B47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B47F0);
  }

  return result;
}

unint64_t sub_1000023DC()
{
  result = qword_1000B4800;
  if (!qword_1000B4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4800);
  }

  return result;
}

unint64_t sub_10000248C()
{
  result = qword_1000B4808;
  if (!qword_1000B4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4808);
  }

  return result;
}

unint64_t sub_1000024E0()
{
  result = qword_1000B4810;
  if (!qword_1000B4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4810);
  }

  return result;
}

double sub_100002534@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = sub_1000021C0(&qword_1000B4818, &qword_10008E9B0);
  v4 = *(v3 - 8);
  v36 = v3;
  v37 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v95 = &v32 - v6;
  v7 = ArgumentVisibility.default.unsafeMutableAddressor();
  v8 = *v7;
  v9 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v8, &type metadata for UniversalOptions, v9, v93);
  v89 = v93[2];
  v90 = v93[3];
  v91 = v93[4];
  v92 = v94;
  v87 = v93[0];
  v88 = v93[1];
  LOBYTE(v7) = *v7;
  v10 = sub_1000024E0();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v7, &type metadata for BacktraceOptions, v10, &v74);
  v40 = v74;
  v41 = v75;
  v11 = *&v76[0];
  v12 = BYTE8(v76[0]);
  v39 = BYTE9(v76[0]);
  v86[0] = *(v76 + 10);
  v13 = *(&v76[1] + 1);
  *(v86 + 6) = *&v76[1];
  v14 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_100002AE4();
  v15 = v38;
  v16 = *(&v40 + 1);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v17 = v41;
  if (v15)
  {
    sub_100002B38(a1);
    v76[0] = v89;
    v76[1] = v90;
    v77 = v91;
    v74 = v87;
    v75 = v88;
    v78 = v92;
    v79 = v40;
    *v80 = v16;
    *&v80[8] = v17;
    v81 = v11;
    v82 = v12;
    v83 = v39;
    *&v84[6] = *(v86 + 6);
    *v84 = v86[0];
    v85 = v13;
    sub_100002288(&v74);
  }

  else
  {
    v32 = v11;
    v33 = a1;
    v34 = v12;
    v38 = v13;
    sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
    v67 = 0;
    sub_100002C2C(&qword_1000B4828, &qword_1000B47D8, &qword_10008E990);
    v18 = v36;
    v19 = v95;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v61 = v70;
    v62 = v71;
    v63 = v72;
    v64 = v73;
    v59 = v68;
    v60 = v69;
    v65[2] = v89;
    v65[3] = v90;
    v65[4] = v91;
    v66 = v92;
    v65[0] = v87;
    v65[1] = v88;
    sub_100002BCC(v65, &qword_1000B47D8, &qword_10008E990);
    v89 = v61;
    v90 = v62;
    v91 = v63;
    v92 = v64;
    v87 = v59;
    v88 = v60;
    sub_1000021C0(&qword_1000B47E0, &qword_10008E998);
    v52 = 1;
    sub_100002C2C(&qword_1000B4830, &qword_1000B47E0, &qword_10008E998);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v37 + 8))(v19, v18);
    sub_100002C80(v40, *(&v40 + 1), v41, *(&v41 + 1), v32, v34, v39 & 1);

    v20 = v54;
    *(&v41 + 1) = *(&v55 + 1);
    v21 = v55;
    v22 = HIBYTE(v56);
    v86[0] = *v57;
    v23 = v58;
    *(v86 + 6) = *&v57[6];
    v95 = 0;
    v44 = v61;
    v45 = v62;
    v46 = v63;
    v42 = v59;
    v43 = v60;
    *&v47 = v64;
    *(&v47 + 1) = v53;
    v24 = v53;
    v48 = v54;
    v49 = v55;
    LOWORD(v50) = v56;
    v25 = v56;
    *(&v50 + 1) = *&v57[6];
    v51 = v58;
    *(&v50 + 2) = *v57;
    sub_100002250(&v42, &v74);
    sub_100002B38(v33);
    v76[0] = v61;
    v76[1] = v62;
    v77 = v63;
    v74 = v59;
    v75 = v60;
    v78 = v64;
    v79 = v24;
    *v80 = v20;
    *&v80[16] = v21;
    v81 = *(&v41 + 1);
    v82 = v25;
    v83 = v22;
    *&v84[6] = *(v86 + 6);
    *v84 = v86[0];
    v85 = v23;
    sub_100002288(&v74);
    v26 = v49;
    v27 = v35;
    *(v35 + 96) = v48;
    *(v27 + 112) = v26;
    *(v27 + 128) = v50;
    *(v27 + 144) = v51;
    v28 = v45;
    *(v27 + 32) = v44;
    *(v27 + 48) = v28;
    v29 = v47;
    *(v27 + 64) = v46;
    *(v27 + 80) = v29;
    result = *&v42;
    v31 = v43;
    *v27 = v42;
    *(v27 + 16) = v31;
  }

  return result;
}

void *sub_100002AA0(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_100002AE4()
{
  result = qword_1000B4820;
  if (!qword_1000B4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4820);
  }

  return result;
}

uint64_t sub_100002B38(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_100002B84(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_100002BCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_1000021C0(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_100002C2C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100002C80(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  if (a7)
  {
  }

  else
  {
    sub_1000022C8(a1, a2, a3 & 1);

    return sub_1000022C8(a4, a5, a6 & 1);
  }
}

uint64_t getEnumTagSinglePayload for DumpRawMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DumpRawMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100002E64(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 648))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100002E84(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 632) = 0u;
    *(result + 504) = 0u;
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
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 648) = v3;
  return result;
}

unint64_t sub_100002F70()
{
  result = qword_1000B4840;
  if (!qword_1000B4840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4840);
  }

  return result;
}

unint64_t sub_100002FC8()
{
  result = qword_1000B4848;
  if (!qword_1000B4848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4848);
  }

  return result;
}

unint64_t sub_100003020()
{
  result = qword_1000B4850;
  if (!qword_1000B4850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4850);
  }

  return result;
}

uint64_t sub_10000307C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 352))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000309C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 344) = 0;
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
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 352) = v3;
  return result;
}

uint64_t sub_100003140(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 296))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003160(uint64_t result, int a2, int a3)
{
  if (a2)
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
    *(result + 264) = 0u;
    *(result + 280) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 296) = v3;
  return result;
}

uint64_t sub_1000031EC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 152))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 56);
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

uint64_t sub_100003248(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 152) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

__n128 sub_1000032D4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000032F8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 76))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003318(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 76) = v3;
  return result;
}

__n128 sub_10000336C(uint64_t a1, __int128 *a2)
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

uint64_t sub_100003398(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 104))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000033B8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 104) = v3;
  return result;
}

__n128 sub_100003410(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_10000343C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 144))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10000345C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 144) = v3;
  return result;
}

uint64_t sub_1000034C0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000034E0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

__n128 sub_10000351C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100003528(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100003548(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

__n128 sub_100003588(uint64_t a1, uint64_t a2)
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

uint64_t sub_10000359C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000035BC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

void sub_100003634(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_100003690(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000036B4(uint64_t a1, int a2)
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

uint64_t sub_1000036FC(uint64_t result, int a2, int a3)
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

double sub_100003760()
{
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD00000000000003ELL, 0x80000001000972F0, 0, 0, 0, 0xE000000000000000, v2, v1, 1, &_swiftEmptyArrayStorage, &_swiftEmptyArrayStorage, 0, &_swiftEmptyArrayStorage);
  xmmword_1000B6268 = v2[6];
  unk_1000B6278 = v2[7];
  xmmword_1000B6288 = v2[8];
  qword_1000B6298 = v3;
  xmmword_1000B6228 = v2[2];
  unk_1000B6238 = v2[3];
  xmmword_1000B6248 = v2[4];
  unk_1000B6258 = v2[5];
  result = *v2;
  xmmword_1000B6208 = v2[0];
  unk_1000B6218 = v2[1];
  return result;
}

void sub_100003820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 40))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return;
  }

  v4 = 0xE90000000000003ELL;
  v5 = 0x6E776F6E6B6E753CLL;
  v6 = *(a3 + 40);
  if (swift_reflection_typeRefForMetadata() && (v7 = swift_reflection_copyNameForTypeRef()) != 0)
  {
    v8 = v7;
    v9 = String.init(cString:)();
    v11 = v10;
    free(v8);
  }

  else
  {
    v9 = 0x6E776F6E6B6E753CLL;
    v11 = 0xE90000000000003ELL;
  }

  if (!*(a3 + 40))
  {
    goto LABEL_13;
  }

  v12 = swift_reflection_copyDemangledNameForProtocolDescriptor();
  if (v12)
  {
    v13 = v12;
    v5 = String.init(cString:)();
    v4 = v14;
    free(v13);
  }

  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10008E640;
  _StringGuts.grow(_:)(19);

  strcpy(v21, "Conformance: ");
  HIWORD(v21[1]) = -4864;
  v16._countAndFlagsBits = v9;
  v16._object = v11;
  String.append(_:)(v16);

  v17._countAndFlagsBits = 8250;
  v17._object = 0xE200000000000000;
  String.append(_:)(v17);
  v18._countAndFlagsBits = v5;
  v18._object = v4;
  String.append(_:)(v18);

  v19 = v21[0];
  v20 = v21[1];
  *(v15 + 56) = &type metadata for String;
  *(v15 + 32) = v19;
  *(v15 + 40) = v20;
  print(_:separator:terminator:)();
}

Swift::Int sub_1000039FC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_100003A68()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100003AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100003B54(uint64_t a1)
{
  v2 = sub_100004134();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100003B90(uint64_t a1)
{
  v2 = sub_100004134();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100003BCC@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B46D8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B6208, v2);
}

uint64_t sub_100003C3C()
{
  v1 = v0[3];
  v24 = v0[2];
  v25 = v1;
  v26 = v0[4];
  v27 = *(v0 + 10);
  v2 = v0[1];
  v22 = *v0;
  v23 = v2;
  v3 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  OptionGroup.wrappedValue.getter(v3, &v13);
  v4 = v13;
  v5 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v28 = v21;
  sub_100007028(v13, v14, v15, v16, v17, v18);
  sub_1000022B8(v4, v5, v6);
  sub_1000022C8(v7, v8, v9);
  return sub_1000022C8(v10, v11, v28);
}

double sub_100003D38@<D0>(uint64_t a1@<X8>)
{
  v2 = *ArgumentVisibility.default.unsafeMutableAddressor();
  v3 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v2, &type metadata for UniversalOptions, v3, v7);
  v4 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v4;
  *(a1 + 64) = v7[4];
  *(a1 + 80) = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  return result;
}

double sub_100003DB4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100003F08(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_100003E10(uint64_t a1)
{
  result = sub_100003E38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100003E38()
{
  result = qword_1000B48B0;
  if (!qword_1000B48B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48B0);
  }

  return result;
}

unint64_t sub_100003E8C(uint64_t a1)
{
  result = sub_100003EB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100003EB4()
{
  result = qword_1000B48B8;
  if (!qword_1000B48B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48B8);
  }

  return result;
}

uint64_t sub_100003F08@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1000021C0(&qword_1000B48C0, &qword_10008EE78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  v9 = *ArgumentVisibility.default.unsafeMutableAddressor();
  v10 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v9, &type metadata for UniversalOptions, v10, v28);
  v11 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_100004134();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004188(v28);
    return sub_100002B38(a1);
  }

  else
  {
    v12 = v29;
    sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
    sub_1000041F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    sub_100004188(v28);
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v16 = v22;
    v17 = v23;
    result = sub_100002B38(a1);
    v14 = v19;
    *(v12 + 32) = v18;
    *(v12 + 48) = v14;
    *(v12 + 64) = v20;
    *(v12 + 80) = v21;
    v15 = v17;
    *v12 = v16;
    *(v12 + 16) = v15;
  }

  return result;
}

unint64_t sub_100004134()
{
  result = qword_1000B48C8;
  if (!qword_1000B48C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48C8);
  }

  return result;
}

uint64_t sub_100004188(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000041F0()
{
  result = qword_1000B4828;
  if (!qword_1000B4828)
  {
    sub_100002B84(&qword_1000B47D8, &qword_10008E990);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4828);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DumpConformanceCache.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DumpConformanceCache.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_100004340()
{
  result = qword_1000B48D0;
  if (!qword_1000B48D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48D0);
  }

  return result;
}

unint64_t sub_100004398()
{
  result = qword_1000B48D8;
  if (!qword_1000B48D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48D8);
  }

  return result;
}

unint64_t sub_1000043F0()
{
  result = qword_1000B48E0;
  if (!qword_1000B48E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48E0);
  }

  return result;
}

uint64_t sub_100004444()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_100024B2C(&_swiftEmptyArrayStorage);
  v1 = swift_allocObject();
  *(v1 + 16) = sub_1000053DC;
  *(v1 + 24) = v0;
  swift_retain_n();
  v2 = swift_reflection_iterateMetadataAllocationBacktraces();

  if (v2)
  {
    v3 = String.init(cString:)();
    v5 = v4;
    sub_100002388();
    swift_allocError();
    *v6 = v3;
    v6[1] = v5;
    swift_willThrow();
  }

  else
  {

    swift_beginAccess();
    v3 = *(v0 + 16);
  }

  return v3;
}

uint64_t sub_1000045C8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x73736572646461;
  if (v2 != 1)
  {
    v4 = 1702521203;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 6775156;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x73736572646461;
  if (*a2 != 1)
  {
    v8 = 1702521203;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 6775156;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_1000046B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100004748()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1000047C8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100004858@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100005358(*a1);
  *a2 = result;
  return result;
}

void sub_100004888(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x73736572646461;
  if (v2 != 1)
  {
    v5 = 1702521203;
    v4 = 0xE400000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 6775156;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000048D8()
{
  v1 = 0x73736572646461;
  if (*v0 != 1)
  {
    v1 = 1702521203;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6775156;
  }
}

unint64_t sub_100004924@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100005358(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100004958(uint64_t a1)
{
  v2 = sub_100004B80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100004994(uint64_t a1)
{
  v2 = sub_100004B80();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t swift_metadata_allocation.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v12[1] = a3;
  v5 = sub_1000021C0(&qword_1000B48E8, qword_10008EF98);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - v8;
  v10 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_100004B80();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v3)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v14 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100004B80()
{
  result = qword_1000B48F0;
  if (!qword_1000B48F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48F0);
  }

  return result;
}

unint64_t sub_100004C14()
{
  result = qword_1000B48F8;
  if (!qword_1000B48F8)
  {
    type metadata accessor for swift_metadata_allocation(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B48F8);
  }

  return result;
}

uint64_t _s10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100004E2C()
{
  result = qword_1000B4900;
  if (!qword_1000B4900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4900);
  }

  return result;
}

unint64_t sub_100004E84()
{
  result = qword_1000B4908;
  if (!qword_1000B4908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4908);
  }

  return result;
}

unint64_t sub_100004EDC()
{
  result = qword_1000B4910;
  if (!qword_1000B4910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4910);
  }

  return result;
}

uint64_t CommandConfiguration.commandName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_100004F70(int a1, uint64_t a2, int a3, uint64_t a4)
{
  swift_beginAccess();
  v8 = *(a4 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a4 + 16) = v8;
  if ((result & 1) == 0)
  {
    result = sub_10000EAD0(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
    *(a4 + 16) = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_10000EAD0((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 24 * v11;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = a3;
  *(a4 + 16) = v8;
  return result;
}

uint64_t sub_100005054(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4)
{
  if (a2)
  {
    v8 = sub_10001FBC4(a2, 0);
    memcpy(v8 + 32, a3, 8 * a2);
  }

  else
  {
    v8 = &_swiftEmptyArrayStorage;
  }

  swift_beginAccess();
  v9 = *(a4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(a4 + 16);
  *(a4 + 16) = 0x8000000000000000;
  sub_1000210C8(v8, a1, isUniquelyReferenced_nonNull_native);
  *(a4 + 16) = v12;
  return swift_endAccess();
}

uint64_t sub_100005118()
{
  result = swift_reflection_typeRefForMetadata();
  if (result)
  {
    result = swift_reflection_copyNameForTypeRef();
    if (result)
    {
      v1 = result;
      String.init(cString:)();
      free(v1);
      v2._object = 0x8000000100097330;
      v2._countAndFlagsBits = 0xD00000000000001DLL;
      LOBYTE(v1) = String.hasPrefix(_:)(v2);

      if ((v1 & 1) == 0)
      {
        return 0;
      }

      result = swift_reflection_typeRefForMetadata();
      if (!result)
      {
        return result;
      }

      if (swift_reflection_genericArgumentCountOfTypeRef() == 1)
      {
        result = swift_reflection_genericArgumentOfTypeRef();
        if (result)
        {
          swift_reflection_infoForTypeRef();
          return v3 == 13;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100005218(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v3 = *a3;
    v4 = *(a3 + 8);
    v5 = a2;
    v6 = result;

    v3(&v6, &v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100005278(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = *(result + 16);
    v3 = *(result + 8);
    v4 = *a2;
    v5 = *(a2 + 8);
    v6 = *result;
    v7 = v3;
    v8 = v2;

    v4(&v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000052E8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a4)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a3)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v4 = *a4;
  v5 = *(a4 + 8);
  v7 = a2;
  v8 = result;
  v6 = a3;

  v4(&v8, &v7, &v6);
}

unint64_t sub_100005358(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1000A9F20, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000053A4()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000053E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000541C(void *a1, void *a2, void *a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  return v4(*a1, *a2, *a3);
}

uint64_t sub_100005450(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100005498(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000054E4()
{
  v4 = *(v0 + 24);
  v5 = *(v0 + 40);
  v1 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
  Flag.wrappedValue.getter(v1, &v3);
  if (v3)
  {
    return 1;
  }

  v4 = *v0;
  v5 = *(v0 + 16);
  Flag.wrappedValue.getter(v1, &v3);
  if (v3)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_100005588()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  *&v15 = *v0;
  *(&v15 + 1) = v2;
  v16 = v3;
  v4 = sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
  Argument.wrappedValue.getter(v4, v13);
  if (v14)
  {

    v5 = *(v0 + 64);
    v15 = *(v0 + 3);
    v16 = v5;
    v6 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v6, v13);
    if (v13[0])
    {
      goto LABEL_8;
    }
  }

  *&v15 = v1;
  *(&v15 + 1) = v2;
  v16 = v3;
  Argument.wrappedValue.getter(v4, v13);
  if (v14)
  {

    goto LABEL_6;
  }

  v7 = *(v0 + 64);
  v15 = *(v0 + 3);
  v16 = v7;
  v8 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
  Flag.wrappedValue.getter(v8, v13);
  if ((v13[0] & 1) == 0)
  {
LABEL_8:
    sub_10000A4E8();
    swift_allocError();
    *v12 = 0xD000000000000031;
    v12[1] = 0x8000000100097410;
    return swift_willThrow();
  }

LABEL_6:
  v9 = *(v0 + 64);
  v15 = *(v0 + 3);
  v16 = v9;
  v10 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
  result = Flag.wrappedValue.getter(v10, v13);
  if (v13[0] == 1)
  {
    LOBYTE(v15) = v13[0];
    return Option.wrappedValue.setter(&v15, v10);
  }

  return result;
}

uint64_t sub_100005760()
{
  v1 = 0x70726F436B726F66;
  if (*v0 != 1)
  {
    v1 = 7105633;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6950724F656D616ELL;
  }
}

uint64_t sub_1000057BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000A53C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000057E4(uint64_t a1)
{
  v2 = sub_10000BD38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100005820(uint64_t a1)
{
  v2 = sub_10000BD38();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_10000585C@<Q0>(uint64_t a1@<X8>)
{
  sub_10000A664(v4);
  v2 = v4[3];
  *(a1 + 32) = v4[2];
  *(a1 + 48) = v2;
  *(a1 + 64) = v5;
  result = v4[1];
  *a1 = v4[0];
  *(a1 + 16) = result;
  return result;
}

__n128 sub_1000058C4@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000A824(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7;
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

uint64_t sub_100005950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x636172746B636162 && a2 == 0xE900000000000065;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x636172746B636162 && a2 == 0xED0000676E6F4C65)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_100005A34(uint64_t a1)
{
  v2 = sub_10000BCE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100005A70(uint64_t a1)
{
  v2 = sub_10000BCE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t (*sub_100005AAC@<X0>(uint64_t a1@<X8>))(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v2._object = 0x8000000100097570;
  v2._countAndFlagsBits = 0xD000000000000026;
  ArgumentHelp.init(stringLiteral:)(&v14, v2);
  v17 = v14;
  v3 = static NameSpecification.long.getter();
  v4 = Flag<A>.init(wrappedValue:name:help:)(0, v3, &v17);
  v6 = v5;
  v8 = v7;
  v9._countAndFlagsBits = 0xD00000000000002ELL;
  v9._object = 0x80000001000975A0;
  ArgumentHelp.init(stringLiteral:)(&v15, v9);
  v16 = v15;
  v10 = static NameSpecification.long.getter();
  result = Flag<A>.init(wrappedValue:name:help:)(0, v10, &v16);
  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v8 & 1;
  *(a1 + 24) = result;
  *(a1 + 32) = v12;
  *(a1 + 40) = v13 & 1;
  return result;
}

double sub_100005BB8@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10000ADBC(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_100005BFC()
{
  v1 = 0x64656C676E616DLL;
  v2 = 0x7972616D6D7573;
  if (*v0 != 2)
  {
    v2 = 0x694674757074756FLL;
  }

  if (*v0)
  {
    v1 = 1852797802;
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

uint64_t sub_100005C74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10000B23C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100005CA8(uint64_t a1)
{
  v2 = sub_10000BC90();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100005CE4(uint64_t a1)
{
  v2 = sub_10000BC90();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100005D20@<D0>(_OWORD *a1@<X8>)
{
  sub_10000B3A8(v5);
  v2 = v5[3];
  a1[2] = v5[2];
  a1[3] = v2;
  a1[4] = v6[0];
  *(a1 + 73) = *(v6 + 9);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  a1[1] = v4;
  return result;
}

double sub_100005D70@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10000B5E4(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    a2[2] = v7[2];
    a2[3] = v5;
    a2[4] = v8[0];
    *(a2 + 73) = *(v8 + 9);
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    a2[1] = v6;
  }

  return result;
}

unint64_t sub_100005DC4()
{
  sub_1000021C0(&qword_1000B4930, &qword_10008F2D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_10008F230;
  v1 = sub_100006294();
  *(v0 + 32) = &type metadata for DumpConformanceCache;
  *(v0 + 40) = v1;
  v2 = sub_1000062E8();
  *(v0 + 48) = &type metadata for DumpRawMetadata;
  *(v0 + 56) = v2;
  v3 = sub_10000633C();
  *(v0 + 64) = &type metadata for DumpGenericMetadata;
  *(v0 + 72) = v3;
  v4 = sub_100006390();
  *(v0 + 80) = &type metadata for DumpCacheNodes;
  *(v0 + 88) = v4;
  v5 = sub_1000063E4();
  *(v0 + 96) = &type metadata for DumpArrays;
  *(v0 + 104) = v5;
  result = sub_100006438();
  *(v0 + 112) = &type metadata for DumpConcurrency;
  *(v0 + 120) = result;
  qword_1000B62A0 = v0;
  return result;
}

double sub_100005E78()
{
  if (qword_1000B46E0 != -1)
  {
    swift_once();
  }

  *&v2 = 0;
  *(&v2 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD000000000000018, 0x8000000100097350, 0, 0, 0, 0xE000000000000000, v3, v2, 1, v0, &_swiftEmptyArrayStorage, 0, &_swiftEmptyArrayStorage);
  xmmword_1000B6308 = v3[6];
  unk_1000B6318 = v3[7];
  xmmword_1000B6328 = v3[8];
  qword_1000B6338 = v4;
  xmmword_1000B62C8 = v3[2];
  unk_1000B62D8 = v3[3];
  xmmword_1000B62E8 = v3[4];
  unk_1000B62F8 = v3[5];
  result = *v3;
  xmmword_1000B62A8 = v3[0];
  unk_1000B62B8 = v3[1];
  return result;
}

uint64_t sub_100005F7C@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B46E8 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B62A8, v2);
}

int main(int argc, const char **argv, const char **envp)
{
  v3 = sub_1000060E8();
  static ParsableCommand.parseAsRoot(_:)(0, v3, v7);
  v4 = v8;
  v5 = v9;
  sub_100006190(v7, v8);
  (*(v5 + 32))(v4, v5);
  sub_100002B38(v7);
  return 0;
}

unint64_t sub_1000060E8()
{
  result = qword_1000B4918;
  if (!qword_1000B4918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4918);
  }

  return result;
}

unint64_t sub_10000613C()
{
  result = qword_1000B4920;
  if (!qword_1000B4920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4920);
  }

  return result;
}

uint64_t sub_100006190(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1000061F0(uint64_t a1)
{
  result = sub_100006218();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100006218()
{
  result = qword_1000B4928;
  if (!qword_1000B4928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4928);
  }

  return result;
}

unint64_t sub_10000626C(uint64_t a1)
{
  result = sub_10000613C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100006294()
{
  result = qword_1000B4938;
  if (!qword_1000B4938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4938);
  }

  return result;
}

unint64_t sub_1000062E8()
{
  result = qword_1000B4940;
  if (!qword_1000B4940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4940);
  }

  return result;
}

unint64_t sub_10000633C()
{
  result = qword_1000B4948;
  if (!qword_1000B4948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4948);
  }

  return result;
}

unint64_t sub_100006390()
{
  result = qword_1000B4950;
  if (!qword_1000B4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4950);
  }

  return result;
}

unint64_t sub_1000063E4()
{
  result = qword_1000B4958;
  if (!qword_1000B4958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4958);
  }

  return result;
}

unint64_t sub_100006438()
{
  result = qword_1000B4960;
  if (!qword_1000B4960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4960);
  }

  return result;
}

uint64_t sub_10000648C(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7)
{
  v8 = v7;
  v65 = a1;
  v66 = a2;
  v67 = a3 & 1;
  v10 = sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
  Argument.wrappedValue.getter(v10, &v69);
  v11 = v70;
  if (v70)
  {
    v12 = v69;
    if (sub_100011618(v69, v70))
    {

      v13 = getpid();
    }

    else
    {
      if (qword_1000B4720 != -1)
      {
        swift_once();
      }

      v46 = off_1000B6510;
      v47 = String._bridgeToObjectiveC()();
      v13 = v46();

      if (!v13)
      {
        sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
        v56 = swift_allocObject();
        *(v56 + 16) = xmmword_10008E640;
        _StringGuts.grow(_:)(28);

        v65 = 0xD00000000000001ALL;
        v66 = 0x80000001000973F0;
        v57._countAndFlagsBits = v12;
        v57._object = v11;
        String.append(_:)(v57);

        *(v56 + 56) = &type metadata for String;
        *(v56 + 32) = 0xD00000000000001ALL;
        *(v56 + 40) = 0x80000001000973F0;
        if (qword_1000B46F8 == -1)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      }
    }

    v65 = a4;
    v66 = a5;
    v67 = a6 & 1;
    v48 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v48, &v69);
    v49 = v69;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    v50 = sub_10000D6A4(v13, v49);
    if (v50)
    {
      sub_10000140C(v50, &off_1000B4C00, a7);
    }

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_10008E640;
    _StringGuts.grow(_:)(44);

    v65 = 0xD00000000000002ALL;
    v66 = 0x80000001000973C0;
    LODWORD(v69) = v13;
    v55._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v55);

    *(v54 + 56) = &type metadata for String;
    *(v54 + 32) = 0xD00000000000002ALL;
    *(v54 + 40) = 0x80000001000973C0;
    if (qword_1000B46F8 == -1)
    {
LABEL_34:
      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();
    }

LABEL_38:
    swift_once();
    goto LABEL_34;
  }

  v14 = sub_1000123E8();
  if (!v14)
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_10008E640;
    v53 = 0x8000000100097370;
    *(v52 + 56) = &type metadata for String;
    *(v52 + 32) = 0xD00000000000001FLL;
LABEL_31:
    *(v52 + 40) = v53;
    if (qword_1000B46F8 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v15 = *(v14 + 2);
  if (!v15)
  {
LABEL_27:

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_10008E640;
    *(v52 + 56) = &type metadata for String;
    v53 = 0xE000000000000000;
    *(v52 + 32) = 0;
    goto LABEL_31;
  }

  v71 = 0;
  v16 = 0;
  v60 = v14 + 32;
  v61 = a6;
  v59 = v15;
  while (1)
  {
    v17 = *&v60[4 * v16++];
    v65 = 91;
    v66 = 0xE100000000000000;
    v69 = v71;
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 47;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v69 = v16;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 47;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v69 = v15;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 93;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v25 = v65;
    v24 = v66;
    v65 = a4;
    v66 = a5;
    v67 = a6 & 1;
    v26 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v26, &v69);
    v27 = v69;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    v28 = sub_10000D6A4(v17, v27);
    if (!v28)
    {
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10008F240;
      *(v40 + 56) = &type metadata for String;
      *(v40 + 32) = v25;
      *(v40 + 40) = v24;
      v65 = 0;
      v66 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v65 = 0xD00000000000002DLL;
      v66 = 0x8000000100097390;
      LODWORD(v69) = v17;
      v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v41);

      v42 = v65;
      v43 = v66;
      *(v40 + 88) = &type metadata for String;
      *(v40 + 64) = v42;
      *(v40 + 72) = v43;
      if (qword_1000B46F8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();

      v15 = v59;
      a6 = v61;
      goto LABEL_17;
    }

    v29 = v28;
    v62 = v8;
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10008F240;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 32) = v25;
    *(v30 + 40) = v24;
    v69 = 0;
    v70 = 0xE000000000000000;
    v31._countAndFlagsBits = sub_10000CFA4();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 40;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *sub_100007DE4(&v65) = *(v29 + 20);
    _print_unlocked<A, B>(_:_:)();
    sub_100002B38(&v65);
    v33._countAndFlagsBits = 41;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v34 = v69;
    v35 = v70;
    *(v30 + 88) = &type metadata for String;
    *(v30 + 64) = v34;
    *(v30 + 72) = v35;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    sub_10000140C(v29, &off_1000B4C00, a7);
    v8 = v62;
    if (!v62)
    {
      break;
    }

    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10008E640;
    v65 = 0;
    v66 = 0xE000000000000000;
    v37._countAndFlagsBits = 2108704;
    v37._object = 0xE300000000000000;
    String.append(_:)(v37);
    v69 = v62;
    sub_1000021C0(&qword_1000B4978, &qword_10008F2E0);
    _print_unlocked<A, B>(_:_:)();
    v38 = v65;
    v39 = v66;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 32) = v38;
    *(v36 + 40) = v39;
    swift_beginAccess();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    v8 = 0;
    a6 = v61;
LABEL_16:

    v15 = v59;
LABEL_17:
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_10008E640;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 32) = 1261460251;
    *(v45 + 40) = 0xE400000000000000;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    if (v15 == v16)
    {
      goto LABEL_27;
    }
  }

  v44 = __OFADD__(v71++, 1);
  a6 = v61;
  if (!v44)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_32:
  swift_beginAccess();
  sub_100007D90();
  print<A>(_:separator:terminator:to:)();
  swift_endAccess();
}

char *sub_100007028(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6)
{
  v79 = a1;
  v80 = a2;
  v81 = a3 & 1;
  v6 = sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
  Argument.wrappedValue.getter(v6, &v83);
  v7 = v84;
  if (!v84)
  {
    v10 = sub_1000123E8();
    if (!v10)
    {
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v68 = swift_allocObject();
      *(v68 + 16) = xmmword_10008E640;
      *(v68 + 56) = &type metadata for String;
      *(v68 + 32) = 0xD00000000000001FLL;
      *(v68 + 40) = 0x8000000100097370;
      goto LABEL_36;
    }

    v11 = *(v10 + 2);
    if (!v11)
    {
LABEL_30:

      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v63 = swift_allocObject();
      *(v63 + 16) = xmmword_10008E640;
      *(v63 + 56) = &type metadata for String;
      *(v63 + 32) = 0;
      *(v63 + 40) = 0xE000000000000000;
      if (qword_1000B46F8 == -1)
      {
        goto LABEL_31;
      }

      goto LABEL_40;
    }

    v78 = 0;
    v12 = 0;
    v74 = v10 + 32;
    v73 = *(v10 + 2);
    while (1)
    {
      v13 = *&v74[4 * v12++];
      v79 = 91;
      v80 = 0xE100000000000000;
      v83 = v78;
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 47;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      v83 = v12;
      v16._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v16);

      v17._countAndFlagsBits = 47;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      v83 = v11;
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 93;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v21 = v79;
      v20 = v80;
      v79 = a4;
      v80 = a5;
      v81 = a6 & 1;
      v22 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
      Flag.wrappedValue.getter(v22, &v83);
      v23 = v83;
      type metadata accessor for DarwinRemoteProcess();
      swift_allocObject();
      v24 = sub_10000D6A4(v13, v23);
      if (v24)
      {
        v25 = v24;
        v7 = sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_10008F240;
        *(v26 + 56) = &type metadata for String;
        *(v26 + 32) = v21;
        *(v26 + 40) = v20;
        v83 = 0;
        v84 = 0xE000000000000000;
        v27._countAndFlagsBits = sub_10000CFA4();
        String.append(_:)(v27);

        v28._countAndFlagsBits = 40;
        v28._object = 0xE100000000000000;
        String.append(_:)(v28);
        swift_getObjectType();
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        *sub_100007DE4(&v79) = *(v25 + 5);
        _print_unlocked<A, B>(_:_:)();
        sub_100002B38(&v79);
        v29._countAndFlagsBits = 41;
        v29._object = 0xE100000000000000;
        String.append(_:)(v29);
        v30 = v83;
        v31 = v84;
        *(v26 + 88) = &type metadata for String;
        *(v26 + 64) = v30;
        *(v26 + 72) = v31;
        if (qword_1000B46F8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        v8 = sub_100007D90();
        print<A>(_:separator:terminator:to:)();
        swift_endAccess();

        if (!*(v25 + 5))
        {
          __break(1u);
        }

        v32 = swift_allocObject();
        *(v32 + 16) = v25;
        *(v32 + 24) = &off_1000B4C00;
        v33 = swift_allocObject();
        *(v33 + 16) = sub_100007E80;
        *(v33 + 24) = v32;
        v79 = sub_100007E88;
        v80 = v33;

        v34 = swift_reflection_iterateConformanceCache();

        if (v34)
        {
          v35 = String.init(cString:)();
          v37 = v36;
          sub_100002388();
          v38 = swift_allocError();
          *v39 = v35;
          v39[1] = v37;
          swift_willThrow();

          v40 = swift_allocObject();
          *(v40 + 16) = xmmword_10008E640;
          v79 = 0;
          v80 = 0xE000000000000000;
          v41._countAndFlagsBits = 2108704;
          v41._object = 0xE300000000000000;
          String.append(_:)(v41);
          v83 = v38;
          sub_1000021C0(&qword_1000B4978, &qword_10008F2E0);
          _print_unlocked<A, B>(_:_:)();
          v42 = v79;
          v43 = v80;
          *(v40 + 56) = &type metadata for String;
          *(v40 + 32) = v42;
          *(v40 + 40) = v43;
          swift_beginAccess();
          print<A>(_:separator:terminator:to:)();
          swift_endAccess();
        }

        else
        {

          if (__OFADD__(v78++, 1))
          {
            __break(1u);
LABEL_39:
            swift_once();
LABEL_23:
            v50 = off_1000B6510;
            v51 = String._bridgeToObjectiveC()();
            v9 = v50();

            if (v9)
            {

              goto LABEL_25;
            }

            sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
            v69 = swift_allocObject();
            *(v69 + 16) = xmmword_10008E640;
            v79 = 0;
            v80 = 0xE000000000000000;
            _StringGuts.grow(_:)(28);

            v79 = 0xD00000000000001ALL;
            v80 = 0x80000001000973F0;
            v70._countAndFlagsBits = v8;
            v70._object = v7;
            String.append(_:)(v70);

            v71 = v79;
            v72 = v80;
            *(v69 + 56) = &type metadata for String;
            *(v69 + 32) = v71;
            *(v69 + 40) = v72;
LABEL_36:
            if (qword_1000B46F8 == -1)
            {
LABEL_31:
              swift_beginAccess();
              sub_100007D90();
              print<A>(_:separator:terminator:to:)();
              swift_endAccess();
            }

LABEL_40:
            swift_once();
            goto LABEL_31;
          }
        }

        v11 = v73;
      }

      else
      {
        sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_10008F240;
        *(v44 + 56) = &type metadata for String;
        *(v44 + 32) = v21;
        *(v44 + 40) = v20;
        v79 = 0;
        v80 = 0xE000000000000000;
        _StringGuts.grow(_:)(47);

        v79 = 0xD00000000000002DLL;
        v80 = 0x8000000100097390;
        LODWORD(v83) = v13;
        v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v45);

        v46 = v79;
        v47 = v80;
        *(v44 + 88) = &type metadata for String;
        *(v44 + 64) = v46;
        *(v44 + 72) = v47;
        if (qword_1000B46F8 != -1)
        {
          swift_once();
        }

        swift_beginAccess();
        sub_100007D90();
        print<A>(_:separator:terminator:to:)();
        swift_endAccess();
      }

      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_10008E640;
      *(v49 + 56) = &type metadata for String;
      *(v49 + 32) = 1261460251;
      *(v49 + 40) = 0xE400000000000000;
      if (qword_1000B46F8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();

      if (v11 == v12)
      {
        goto LABEL_30;
      }
    }
  }

  v8 = v83;
  if ((sub_100011618(v83, v84) & 1) == 0)
  {
    if (qword_1000B4720 != -1)
    {
      goto LABEL_39;
    }

    goto LABEL_23;
  }

  v9 = getpid();
LABEL_25:
  v79 = a4;
  v80 = a5;
  v81 = a6 & 1;
  v52 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
  Flag.wrappedValue.getter(v52, &v83);
  v53 = v83;
  type metadata accessor for DarwinRemoteProcess();
  swift_allocObject();
  result = sub_10000D6A4(v9, v53);
  if (!result)
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_10008E640;
    v79 = 0;
    v80 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v79 = 0xD00000000000002ALL;
    v80 = 0x80000001000973C0;
    LODWORD(v83) = v9;
    v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v65);

    v66 = v79;
    v67 = v80;
    *(v64 + 56) = &type metadata for String;
    *(v64 + 32) = v66;
    *(v64 + 40) = v67;
    if (qword_1000B46F8 == -1)
    {
      goto LABEL_31;
    }

    goto LABEL_40;
  }

  v55 = result;
  if (*(result + 5))
  {
    v56 = swift_allocObject();
    *(v56 + 16) = v55;
    *(v56 + 24) = &off_1000B4C00;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_10000C25C;
    *(v57 + 24) = v56;
    v79 = sub_10000C280;
    v80 = v57;

    v58 = swift_reflection_iterateConformanceCache();

    if (v58)
    {
      v59 = String.init(cString:)();
      v61 = v60;
      sub_100002388();
      swift_allocError();
      *v62 = v59;
      v62[1] = v61;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_100007D90()
{
  result = qword_1000B4970;
  if (!qword_1000B4970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4970);
  }

  return result;
}

uint64_t *sub_100007DE4(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_100007E48()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007E90()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100007F20(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6, void (*a7)(void))
{
  v8 = v7;
  v64 = a1;
  v65 = a2;
  v66 = a3 & 1;
  v10 = sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
  Argument.wrappedValue.getter(v10, &v68);
  v11 = v69;
  if (v69)
  {
    v12 = v68;
    if (sub_100011618(v68, v69))
    {

      v13 = getpid();
    }

    else
    {
      if (qword_1000B4720 != -1)
      {
        swift_once();
      }

      v46 = off_1000B6510;
      v47 = String._bridgeToObjectiveC()();
      v13 = v46();

      if (!v13)
      {
        sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
        v55 = swift_allocObject();
        *(v55 + 16) = xmmword_10008E640;
        _StringGuts.grow(_:)(28);

        v64 = 0xD00000000000001ALL;
        v65 = 0x80000001000973F0;
        v56._countAndFlagsBits = v12;
        v56._object = v11;
        String.append(_:)(v56);

        *(v55 + 56) = &type metadata for String;
        *(v55 + 32) = 0xD00000000000001ALL;
        *(v55 + 40) = 0x80000001000973F0;
        if (qword_1000B46F8 == -1)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      }
    }

    v64 = a4;
    v65 = a5;
    v66 = a6 & 1;
    v48 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v48, &v68);
    v49 = v68;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    if (sub_10000D6A4(v13, v49))
    {
      a7();
    }

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v53 = swift_allocObject();
    *(v53 + 16) = xmmword_10008E640;
    _StringGuts.grow(_:)(44);

    v64 = 0xD00000000000002ALL;
    v65 = 0x80000001000973C0;
    LODWORD(v68) = v13;
    v54._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v54);

    *(v53 + 56) = &type metadata for String;
    *(v53 + 32) = 0xD00000000000002ALL;
    *(v53 + 40) = 0x80000001000973C0;
    if (qword_1000B46F8 == -1)
    {
LABEL_34:
      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();
    }

LABEL_38:
    swift_once();
    goto LABEL_34;
  }

  v14 = sub_1000123E8();
  if (!v14)
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10008E640;
    v52 = 0x8000000100097370;
    *(v51 + 56) = &type metadata for String;
    *(v51 + 32) = 0xD00000000000001FLL;
LABEL_31:
    *(v51 + 40) = v52;
    if (qword_1000B46F8 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v15 = *(v14 + 2);
  if (!v15)
  {
LABEL_27:

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v51 = swift_allocObject();
    *(v51 + 16) = xmmword_10008E640;
    *(v51 + 56) = &type metadata for String;
    v52 = 0xE000000000000000;
    *(v51 + 32) = 0;
    goto LABEL_31;
  }

  v70 = 0;
  v16 = 0;
  v59 = v14 + 32;
  v60 = a6;
  v58 = v15;
  while (1)
  {
    v17 = *&v59[4 * v16++];
    v64 = 91;
    v65 = 0xE100000000000000;
    v68 = v70;
    v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v18);

    v19._countAndFlagsBits = 47;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v68 = v16;
    v20._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v20);

    v21._countAndFlagsBits = 47;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v68 = v15;
    v22._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v22);

    v23._countAndFlagsBits = 93;
    v23._object = 0xE100000000000000;
    String.append(_:)(v23);
    v25 = v64;
    v24 = v65;
    v64 = a4;
    v65 = a5;
    v66 = a6 & 1;
    v26 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v26, &v68);
    v27 = v68;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    v28 = sub_10000D6A4(v17, v27);
    if (!v28)
    {
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_10008F240;
      *(v40 + 56) = &type metadata for String;
      *(v40 + 32) = v25;
      *(v40 + 40) = v24;
      v64 = 0;
      v65 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v64 = 0xD00000000000002DLL;
      v65 = 0x8000000100097390;
      LODWORD(v68) = v17;
      v41._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v41);

      v42 = v64;
      v43 = v65;
      *(v40 + 88) = &type metadata for String;
      *(v40 + 64) = v42;
      *(v40 + 72) = v43;
      if (qword_1000B46F8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();

      v15 = v58;
      a6 = v60;
      goto LABEL_17;
    }

    v29 = v28;
    v61 = v8;
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10008F240;
    *(v30 + 56) = &type metadata for String;
    *(v30 + 32) = v25;
    *(v30 + 40) = v24;
    v68 = 0;
    v69 = 0xE000000000000000;
    v31._countAndFlagsBits = sub_10000CFA4();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 40;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *sub_100007DE4(&v64) = *(v29 + 5);
    _print_unlocked<A, B>(_:_:)();
    sub_100002B38(&v64);
    v33._countAndFlagsBits = 41;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    v34 = v68;
    v35 = v69;
    *(v30 + 88) = &type metadata for String;
    *(v30 + 64) = v34;
    *(v30 + 72) = v35;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    (a7)(v29, &off_1000B4C00);
    v8 = v61;
    if (!v61)
    {
      break;
    }

    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10008E640;
    v64 = 0;
    v65 = 0xE000000000000000;
    v37._countAndFlagsBits = 2108704;
    v37._object = 0xE300000000000000;
    String.append(_:)(v37);
    v68 = v61;
    sub_1000021C0(&qword_1000B4978, &qword_10008F2E0);
    _print_unlocked<A, B>(_:_:)();
    v38 = v64;
    v39 = v65;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 32) = v38;
    *(v36 + 40) = v39;
    swift_beginAccess();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    v8 = 0;
    a6 = v60;
LABEL_16:

    v15 = v58;
LABEL_17:
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_10008E640;
    *(v45 + 56) = &type metadata for String;
    *(v45 + 32) = 1261460251;
    *(v45 + 40) = 0xE400000000000000;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    if (v15 == v16)
    {
      goto LABEL_27;
    }
  }

  v44 = __OFADD__(v70++, 1);
  a6 = v60;
  if (!v44)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_32:
  swift_beginAccess();
  sub_100007D90();
  print<A>(_:separator:terminator:to:)();
  swift_endAccess();
}

void *sub_100008AC4(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, int a6)
{
  v67 = a6;
  v61 = a1;
  v62 = a2;
  v63 = a3 & 1;
  v6 = sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
  Argument.wrappedValue.getter(v6, &v65);
  v7 = v66;
  if (v66)
  {
    v8 = v65;
    if ((sub_100011618(v65, v66) & 1) == 0)
    {
      if (qword_1000B4720 != -1)
      {
        goto LABEL_39;
      }

      goto LABEL_22;
    }

    v9 = getpid();
    while (1)
    {
      v61 = a4;
      v62 = a5;
      v63 = v67 & 1;
      v43 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
      Flag.wrappedValue.getter(v43, &v65);
      v44 = v65;
      type metadata accessor for DarwinRemoteProcess();
      swift_allocObject();
      result = sub_10000D6A4(v9, v44);
      if (!result)
      {
        break;
      }

      v7 = result;
      v45 = result[5];
      if (!v45)
      {
        goto LABEL_42;
      }

      if (object_getClass(result) == _TtC13swift_inspect19DarwinRemoteProcess)
      {
        type metadata accessor for ConcurrencyDumper();
        swift_allocObject();
        swift_unknownObjectRetain();
        sub_10001B3A4(v45, v7);
        v46 = sub_10001CD2C();
        sub_10001E474(v46);
        sub_10001F3A0();
      }

LABEL_38:
      __break(1u);
LABEL_39:
      swift_once();
LABEL_22:
      v41 = off_1000B6510;
      v42 = String._bridgeToObjectiveC()();
      v9 = v41();

      if (!v9)
      {
        sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
        v53 = swift_allocObject();
        *(v53 + 16) = xmmword_10008E640;
        v61 = 0;
        v62 = 0xE000000000000000;
        _StringGuts.grow(_:)(28);

        v61 = 0xD00000000000001ALL;
        v62 = 0x80000001000973F0;
        v54._countAndFlagsBits = v8;
        v54._object = v7;
        String.append(_:)(v54);

        v55 = v61;
        v56 = v62;
        *(v53 + 56) = &type metadata for String;
        *(v53 + 32) = v55;
        *(v53 + 40) = v56;
        goto LABEL_34;
      }
    }

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_10008E640;
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    v61 = 0xD00000000000002ALL;
    v62 = 0x80000001000973C0;
    LODWORD(v65) = v9;
    v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v49);

    v50 = v61;
    v51 = v62;
    *(v48 + 56) = &type metadata for String;
    *(v48 + 32) = v50;
    *(v48 + 40) = v51;
    if (qword_1000B46F8 != -1)
    {
      goto LABEL_29;
    }

    goto LABEL_35;
  }

  v10 = sub_1000123E8();
  if (!v10)
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_10008E640;
    *(v52 + 56) = &type metadata for String;
    *(v52 + 32) = 0xD00000000000001FLL;
    *(v52 + 40) = 0x8000000100097370;
LABEL_34:
    if (qword_1000B46F8 == -1)
    {
      goto LABEL_35;
    }

    goto LABEL_29;
  }

  v11 = *(v10 + 2);
  if (!v11)
  {
LABEL_28:

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10008E640;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 32) = 0;
    *(v47 + 40) = 0xE000000000000000;
    if (qword_1000B46F8 == -1)
    {
LABEL_35:
      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();
    }

LABEL_29:
    swift_once();
    goto LABEL_35;
  }

  v12 = 0;
  v13 = 0;
  v58 = v10 + 32;
  v8 = &DarwinRemoteProcess;
  v57 = *(v10 + 2);
  while (1)
  {
    v14 = *&v58[4 * v13++];
    v61 = 91;
    v62 = 0xE100000000000000;
    v65 = v12;
    v15._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v15);

    v16._countAndFlagsBits = 47;
    v16._object = 0xE100000000000000;
    String.append(_:)(v16);
    v65 = v13;
    v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 47;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v65 = v11;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 93;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v22 = v61;
    v21 = v62;
    v61 = a4;
    v62 = a5;
    v63 = v67 & 1;
    v23 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v23, &v65);
    v24 = v65;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    v25 = sub_10000D6A4(v14, v24);
    if (v25)
    {
      break;
    }

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_10008F240;
    *(v36 + 56) = &type metadata for String;
    *(v36 + 32) = v22;
    *(v36 + 40) = v21;
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(47);

    v61 = 0xD00000000000002DLL;
    v62 = 0x8000000100097390;
    LODWORD(v65) = v14;
    v37._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v37);

    v38 = v61;
    v39 = v62;
    *(v36 + 88) = &type metadata for String;
    *(v36 + 64) = v38;
    *(v36 + 72) = v39;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    v11 = v57;
LABEL_17:
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v40 = swift_allocObject();
    *(v40 + 16) = xmmword_10008E640;
    *(v40 + 56) = &type metadata for String;
    *(v40 + 32) = 1261460251;
    *(v40 + 40) = 0xE400000000000000;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    if (v11 == v13)
    {
      goto LABEL_28;
    }
  }

  v26 = v25;
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10008F240;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 32) = v22;
  *(v7 + 40) = v21;
  v65 = 0;
  v66 = 0xE000000000000000;
  v27._countAndFlagsBits = sub_10000CFA4();
  String.append(_:)(v27);

  v28._countAndFlagsBits = 40;
  v28._object = 0xE100000000000000;
  String.append(_:)(v28);
  swift_getObjectType();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *sub_100007DE4(&v61) = *(v26 + 20);
  _print_unlocked<A, B>(_:_:)();
  sub_100002B38(&v61);
  v29._countAndFlagsBits = 41;
  v29._object = 0xE100000000000000;
  String.append(_:)(v29);
  v30 = v65;
  v31 = v66;
  *(v7 + 88) = &type metadata for String;
  *(v7 + 64) = v30;
  *(v7 + 72) = v31;
  if (qword_1000B46F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_100007D90();
  print<A>(_:separator:terminator:to:)();
  swift_endAccess();

  v33 = *(v26 + 40);
  if (v33)
  {
    v11 = v57;
    if (object_getClass(v26) != _TtC13swift_inspect19DarwinRemoteProcess)
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    type metadata accessor for ConcurrencyDumper();
    swift_allocObject();
    swift_unknownObjectRetain();
    sub_10001B3A4(v33, v26);
    v34 = sub_10001CD2C();
    sub_10001E474(v34);
    sub_10001F3A0();

    if (__OFADD__(v12++, 1))
    {
      goto LABEL_37;
    }

    goto LABEL_17;
  }

  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_10000957C(uint64_t a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, char a6, uint64_t a7, uint64_t *a8, uint64_t *a9)
{
  v10 = v9;
  v68 = a1;
  v69 = a2;
  v70 = a3 & 1;
  v11 = sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
  Argument.wrappedValue.getter(v11, &v72);
  v12 = v73;
  if (v73)
  {
    v13 = v72;
    if (sub_100011618(v72, v73))
    {

      v14 = getpid();
    }

    else
    {
      if (qword_1000B4720 != -1)
      {
        swift_once();
      }

      v48 = off_1000B6510;
      v49 = String._bridgeToObjectiveC()();
      v14 = v48();

      if (!v14)
      {
        sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_10008E640;
        _StringGuts.grow(_:)(28);

        v68 = 0xD00000000000001ALL;
        v69 = 0x80000001000973F0;
        v59._countAndFlagsBits = v13;
        v59._object = v12;
        String.append(_:)(v59);

        *(v58 + 56) = &type metadata for String;
        *(v58 + 32) = 0xD00000000000001ALL;
        *(v58 + 40) = 0x80000001000973F0;
        if (qword_1000B46F8 == -1)
        {
          goto LABEL_34;
        }

        goto LABEL_38;
      }
    }

    v68 = a4;
    v69 = a5;
    v70 = a6 & 1;
    v50 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v50, &v72);
    v51 = v72;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    v52 = sub_10000D6A4(v14, v51);
    if (v52)
    {
      sub_10001416C(v52, &off_1000B4C00, a7, a8, a9);
    }

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_10008E640;
    _StringGuts.grow(_:)(44);

    v68 = 0xD00000000000002ALL;
    v69 = 0x80000001000973C0;
    LODWORD(v72) = v14;
    v57._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v57);

    *(v56 + 56) = &type metadata for String;
    *(v56 + 32) = 0xD00000000000002ALL;
    *(v56 + 40) = 0x80000001000973C0;
    if (qword_1000B46F8 == -1)
    {
LABEL_34:
      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();
    }

LABEL_38:
    swift_once();
    goto LABEL_34;
  }

  v15 = sub_1000123E8();
  if (!v15)
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_10008E640;
    v55 = 0x8000000100097370;
    *(v54 + 56) = &type metadata for String;
    *(v54 + 32) = 0xD00000000000001FLL;
LABEL_31:
    *(v54 + 40) = v55;
    if (qword_1000B46F8 != -1)
    {
      goto LABEL_37;
    }

    goto LABEL_32;
  }

  v16 = *(v15 + 2);
  if (!v16)
  {
LABEL_27:

    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_10008E640;
    *(v54 + 56) = &type metadata for String;
    v55 = 0xE000000000000000;
    *(v54 + 32) = 0;
    goto LABEL_31;
  }

  v67 = 0;
  v17 = 0;
  v63 = v15 + 32;
  v60 = *(v15 + 2);
  while (1)
  {
    v18 = *&v63[4 * v17++];
    v68 = 91;
    v69 = 0xE100000000000000;
    v72 = v67;
    v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 47;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v72 = v17;
    v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 47;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v72 = v16;
    v23._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v23);

    v24._countAndFlagsBits = 93;
    v24._object = 0xE100000000000000;
    String.append(_:)(v24);
    v25 = v68;
    v26 = v69;
    v68 = a4;
    v69 = a5;
    v70 = a6 & 1;
    v27 = sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    Flag.wrappedValue.getter(v27, &v72);
    v28 = v72;
    type metadata accessor for DarwinRemoteProcess();
    swift_allocObject();
    v29 = sub_10000D6A4(v18, v28);
    v74 = v10;
    if (!v29)
    {
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v42 = swift_allocObject();
      *(v42 + 16) = xmmword_10008F240;
      *(v42 + 56) = &type metadata for String;
      *(v42 + 32) = v25;
      *(v42 + 40) = v26;
      v68 = 0;
      v69 = 0xE000000000000000;
      _StringGuts.grow(_:)(47);

      v68 = 0xD00000000000002DLL;
      v69 = 0x8000000100097390;
      LODWORD(v72) = v18;
      v43._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v43);

      v44 = v68;
      v45 = v69;
      *(v42 + 88) = &type metadata for String;
      *(v42 + 64) = v44;
      *(v42 + 72) = v45;
      if (qword_1000B46F8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();

      v10 = v74;
      goto LABEL_17;
    }

    v30 = v29;
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_10008F240;
    *(v31 + 56) = &type metadata for String;
    *(v31 + 32) = v25;
    *(v31 + 40) = v26;
    v72 = 0;
    v73 = 0xE000000000000000;
    v32._countAndFlagsBits = sub_10000CFA4();
    String.append(_:)(v32);

    v33._countAndFlagsBits = 40;
    v33._object = 0xE100000000000000;
    String.append(_:)(v33);
    swift_getObjectType();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    *sub_100007DE4(&v68) = *(v30 + 20);
    _print_unlocked<A, B>(_:_:)();
    sub_100002B38(&v68);
    v34._countAndFlagsBits = 41;
    v34._object = 0xE100000000000000;
    String.append(_:)(v34);
    v35 = v72;
    v36 = v73;
    *(v31 + 88) = &type metadata for String;
    *(v31 + 64) = v35;
    *(v31 + 72) = v36;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    v37 = v74;
    sub_10001416C(v30, &off_1000B4C00, a7, a8, a9);
    v10 = v37;
    if (!v37)
    {
      break;
    }

    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_10008E640;
    v68 = 0;
    v69 = 0xE000000000000000;
    v39._countAndFlagsBits = 2108704;
    v39._object = 0xE300000000000000;
    String.append(_:)(v39);
    v72 = v37;
    sub_1000021C0(&qword_1000B4978, &qword_10008F2E0);
    _print_unlocked<A, B>(_:_:)();
    v40 = v68;
    v41 = v69;
    *(v38 + 56) = &type metadata for String;
    *(v38 + 32) = v40;
    *(v38 + 40) = v41;
    swift_beginAccess();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    v10 = 0;
    v16 = v60;
LABEL_16:

LABEL_17:
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_10008E640;
    *(v47 + 56) = &type metadata for String;
    *(v47 + 32) = 1261460251;
    *(v47 + 40) = 0xE400000000000000;
    if (qword_1000B46F8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    sub_100007D90();
    print<A>(_:separator:terminator:to:)();
    swift_endAccess();

    if (v16 == v17)
    {
      goto LABEL_27;
    }
  }

  v46 = __OFADD__(v67++, 1);
  v16 = v60;
  if (!v46)
  {
    goto LABEL_16;
  }

  __break(1u);
LABEL_37:
  swift_once();
LABEL_32:
  swift_beginAccess();
  sub_100007D90();
  print<A>(_:separator:terminator:to:)();
  swift_endAccess();
}

__n128 sub_10000A10C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_10000A130(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 89))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000A178(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 sub_10000A1E4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10000A1F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000A240(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

__n128 sub_10000A2A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10000A2C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 65))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_10000A30C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_10000A374(uint64_t a1)
{
  result = sub_10000A39C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000A39C()
{
  result = qword_1000B4980;
  if (!qword_1000B4980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4980);
  }

  return result;
}

unint64_t sub_10000A3F0(uint64_t a1)
{
  result = sub_10000A418();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000A418()
{
  result = qword_1000B4988;
  if (!qword_1000B4988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4988);
  }

  return result;
}

unint64_t sub_10000A46C(uint64_t a1)
{
  result = sub_10000A494();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000A494()
{
  result = qword_1000B4990;
  if (!qword_1000B4990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4990);
  }

  return result;
}

unint64_t sub_10000A4E8()
{
  result = qword_1000B4998;
  if (!qword_1000B4998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4998);
  }

  return result;
}

uint64_t sub_10000A53C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6950724F656D616ELL && a2 == 0xE900000000000064;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70726F436B726F66 && a2 == 0xEA00000000006573 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7105633 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t (*sub_10000A664@<X0>(uint64_t a1@<X8>))(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v2._countAndFlagsBits = 0xD00000000000002DLL;
  v2._object = 0x8000000100097450;
  ArgumentHelp.init(stringLiteral:)(&v19, v2);
  v24 = v19;
  Argument.init<A>(help:completion:)(&v24, 0, 0, 255, &type metadata for String, &protocol witness table for String, &v23);
  abstract = v23.abstract;
  countAndFlagsBits = v23.discussion._countAndFlagsBits;
  v5.base = *ArgumentVisibility.default.unsafeMutableAddressor();
  v6._countAndFlagsBits = 0xD000000000000023;
  v6._object = 0x8000000100097480;
  v7._countAndFlagsBits = 0xD000000000000090;
  v7._object = 0x80000001000974B0;
  ArgumentHelp.init(_:discussion:valueName:visibility:)(&v20, v6, v7, 0, v5);
  v23 = v20;
  v8 = static NameSpecification.long.getter();
  v9 = Flag<A>.init(wrappedValue:name:help:)(0, v8, &v23);
  v11 = v10;
  v13 = v12;
  v14._object = 0x8000000100097550;
  v14._countAndFlagsBits = 0xD000000000000014;
  ArgumentHelp.init(stringLiteral:)(&v21, v14);
  v22 = v21;
  v15 = static NameSpecification.long.getter();
  result = Flag<A>.init(wrappedValue:name:help:)(0, v15, &v22);
  *a1 = abstract;
  *(a1 + 16) = countAndFlagsBits;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 40) = v13 & 1;
  *(a1 + 48) = result;
  *(a1 + 56) = v18;
  *(a1 + 64) = v17 & 1;
  return result;
}

uint64_t sub_10000A824@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v38 = a2;
  v3 = sub_1000021C0(&qword_1000B49D8, &qword_10008F748);
  v39 = *(v3 - 8);
  v40 = v3;
  v4 = *(v39 + 64);
  __chkstk_darwin(v3);
  v6 = &v35 - v5;
  v7._countAndFlagsBits = 0xD00000000000002DLL;
  v7._object = 0x8000000100097450;
  ArgumentHelp.init(stringLiteral:)(&v55, v7);
  v60 = v55;
  Argument.init<A>(help:completion:)(&v60, 0, 0, 255, &type metadata for String, &protocol witness table for String, &v52);
  v43 = v52;
  v44 = v53;
  LODWORD(v45) = v54;
  v8.base = *ArgumentVisibility.default.unsafeMutableAddressor();
  v9._countAndFlagsBits = 0xD000000000000023;
  v9._object = 0x8000000100097480;
  v10._countAndFlagsBits = 0xD000000000000090;
  v10._object = 0x80000001000974B0;
  ArgumentHelp.init(_:discussion:valueName:visibility:)(&v56, v9, v10, 0, v8);
  v59 = v56;
  v11 = static NameSpecification.long.getter();
  v47 = Flag<A>.init(wrappedValue:name:help:)(0, v11, &v59);
  v61 = v12;
  v41 = v13;
  v14._object = 0x8000000100097550;
  v14._countAndFlagsBits = 0xD000000000000014;
  ArgumentHelp.init(stringLiteral:)(&v57, v14);
  v58 = v57;
  v15 = static NameSpecification.long.getter();
  v16 = Flag<A>.init(wrappedValue:name:help:)(0, v15, &v58);
  v18 = v17;
  v20 = v19;
  v21 = a1[3];
  v22 = a1[4];
  v46 = a1;
  sub_100002AA0(a1, v21);
  sub_10000BD38();
  v23 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    sub_1000022C8(v16, v18, v20 & 1);
    sub_1000022B8(v43, v44, v45);
    sub_1000022C8(v47, v61, v41 & 1);
    return sub_100002B38(v46);
  }

  else
  {
    v36 = v20;
    v42 = v16;
    v37 = v18;
    v24 = v41;
    sub_1000021C0(&qword_1000B4968, &qword_10008F2D8);
    v51 = 0;
    sub_10000BD8C(&qword_1000B49E8, &qword_1000B4968, &qword_10008F2D8);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000022B8(v43, v44, v45);
    v25 = v52;
    v45 = v53;
    LODWORD(v44) = v54;
    sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    v51 = 1;
    v26 = v40;
    sub_10000BD8C(&qword_1000B49B0, &qword_1000B47E8, &unk_10008E9A0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v42;
    v43 = v25;
    sub_1000022C8(v47, v61, v24 & 1);
    v30 = v52;
    v29 = v53;
    LODWORD(v61) = v54;
    v51 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v39 + 8))(v6, v26);
    sub_1000022C8(v27, v37, v36 & 1);
    v31 = v52;
    v32 = v53;
    v50 = v44;
    v49 = v61;
    v48 = v54;
    result = sub_100002B38(v46);
    v33 = v38;
    v34 = v45;
    *v38 = v43;
    v33[1] = v34;
    *(v33 + 16) = v50;
    v33[3] = v30;
    v33[4] = v29;
    *(v33 + 40) = v49;
    v33[6] = v31;
    v33[7] = v32;
    *(v33 + 64) = v48;
  }

  return result;
}

uint64_t sub_10000ADBC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v36 = a2;
  v39 = sub_1000021C0(&qword_1000B49C8, &qword_10008F740);
  v38 = *(v39 - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(v39);
  v5 = &v34 - v4;
  v6._object = 0x8000000100097570;
  v6._countAndFlagsBits = 0xD000000000000026;
  ArgumentHelp.init(stringLiteral:)(&v47, v6);
  v50 = v47;
  v7 = static NameSpecification.long.getter();
  v40 = Flag<A>.init(wrappedValue:name:help:)(0, v7, &v50);
  v41 = v8;
  v10 = v9;
  v11._countAndFlagsBits = 0xD00000000000002ELL;
  v11._object = 0x80000001000975A0;
  ArgumentHelp.init(stringLiteral:)(&v48, v11);
  v49 = v48;
  v12 = static NameSpecification.long.getter();
  v13 = Flag<A>.init(wrappedValue:name:help:)(0, v12, &v49);
  v15 = v14;
  v17 = v16;
  v18 = a1[3];
  v19 = a1[4];
  v51 = a1;
  sub_100002AA0(a1, v18);
  sub_10000BCE4();
  v37 = v5;
  v20 = v42;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    sub_1000022C8(v13, v15, v17 & 1);
    sub_1000022C8(v40, v41, v10 & 1);
    return sub_100002B38(v51);
  }

  else
  {
    HIDWORD(v34) = v17;
    v35 = v13;
    v42 = v15;
    v21 = v40;
    v22 = v41;
    sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    v43 = 0;
    sub_10000BD8C(&qword_1000B49B0, &qword_1000B47E8, &unk_10008E9A0);
    v23 = v37;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000022C8(v21, v22, v10 & 1);
    v24 = v44;
    v25 = v45;
    v26 = v46;
    v43 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v35;
    v28 = BYTE4(v34);
    (*(v38 + 8))(v23, v39);
    sub_1000022C8(v27, v42, v28 & 1);
    v30 = v44;
    v31 = v45;
    v32 = v46;
    result = sub_100002B38(v51);
    v33 = v36;
    *v36 = v24;
    v33[1] = v25;
    *(v33 + 16) = v26;
    v33[3] = v30;
    v33[4] = v31;
    *(v33 + 40) = v32;
  }

  return result;
}

uint64_t sub_10000B23C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64656C676E616DLL && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1852797802 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7972616D6D7573 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x694674757074756FLL && a2 == 0xEA0000000000656CLL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

__n128 sub_10000B3A8@<Q0>(uint64_t a1@<X8>)
{
  v2._countAndFlagsBits = 0xD000000000000020;
  v2._object = 0x80000001000975D0;
  ArgumentHelp.init(stringLiteral:)(&v29, v2);
  v36 = v29;
  v3 = static NameSpecification.long.getter();
  v26 = Flag<A>.init(wrappedValue:name:help:)(0, v3, &v36);
  v5 = v4;
  v7 = v6;
  v8._countAndFlagsBits = 0x4A2074757074754FLL;
  v8._object = 0xEB000000004E4F53;
  ArgumentHelp.init(stringLiteral:)(&v30, v8);
  v35 = v30;
  v9 = static NameSpecification.long.getter();
  v10 = Flag<A>.init(wrappedValue:name:help:)(0, v9, &v35);
  v12 = v11;
  v14 = v13;
  v15._countAndFlagsBits = 0xD00000000000002BLL;
  v15._object = 0x8000000100097600;
  ArgumentHelp.init(stringLiteral:)(&v31, v15);
  v34 = v31;
  v16 = static NameSpecification.long.getter();
  v17 = Flag<A>.init(wrappedValue:name:help:)(0, v16, &v34);
  v19 = v18;
  v21 = v20;
  v22._object = 0x8000000100097630;
  v22._countAndFlagsBits = 0xD000000000000010;
  ArgumentHelp.init(stringLiteral:)(&v32, v22);
  v33 = v32;
  v23 = static NameSpecification.long.getter();
  v24 = static ExitCode.success.getter();
  Option.init<A>(wrappedValue:name:parsing:help:completion:)(v23, v24, &v33, 0, 0, 255, &type metadata for String, &protocol witness table for String, &v27);
  result = v27;
  v37 = v28;
  *a1 = v26;
  *(a1 + 8) = v5;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v10;
  *(a1 + 32) = v12;
  *(a1 + 40) = v14 & 1;
  *(a1 + 48) = v17;
  *(a1 + 56) = v19;
  *(a1 + 64) = v21 & 1;
  *(a1 + 72) = result;
  *(a1 + 88) = v37;
  return result;
}

uint64_t sub_10000B5E4@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)(uint64_t a1, unint64_t a2, uint64_t a3)@<X8>)
{
  v45 = a2;
  v3 = sub_1000021C0(&qword_1000B49A0, &unk_10008F730);
  v46 = *(v3 - 8);
  v47 = v3;
  v4 = *(v46 + 64);
  __chkstk_darwin(v3);
  v6 = &v42 - v5;
  v7._countAndFlagsBits = 0xD000000000000020;
  v7._object = 0x80000001000975D0;
  ArgumentHelp.init(stringLiteral:)(&v66, v7);
  v73 = v66;
  v8 = static NameSpecification.long.getter();
  v52 = Flag<A>.init(wrappedValue:name:help:)(0, v8, &v73);
  v53 = v9;
  v51 = v10;
  v11._countAndFlagsBits = 0x4A2074757074754FLL;
  v11._object = 0xEB000000004E4F53;
  ArgumentHelp.init(stringLiteral:)(&v67, v11);
  v72 = v67;
  v12 = static NameSpecification.long.getter();
  v55 = Flag<A>.init(wrappedValue:name:help:)(0, v12, &v72);
  v56 = v13;
  LODWORD(v54) = v14;
  v15._countAndFlagsBits = 0xD00000000000002BLL;
  v15._object = 0x8000000100097600;
  ArgumentHelp.init(stringLiteral:)(&v68, v15);
  v71 = v68;
  v16 = static NameSpecification.long.getter();
  v49 = Flag<A>.init(wrappedValue:name:help:)(0, v16, &v71);
  v74 = v17;
  v48 = v18;
  v19._object = 0x8000000100097630;
  v19._countAndFlagsBits = 0xD000000000000010;
  ArgumentHelp.init(stringLiteral:)(&v69, v19);
  v70 = v69;
  v20 = static NameSpecification.long.getter();
  v21 = static ExitCode.success.getter();
  Option.init<A>(wrappedValue:name:parsing:help:completion:)(v20, v21, &v70, 0, 0, 255, &type metadata for String, &protocol witness table for String, &v63);
  v23 = v63;
  v22 = v64;
  v24 = v65;
  v25 = a1[3];
  v26 = a1[4];
  v57 = a1;
  sub_100002AA0(a1, v25);
  sub_10000BC90();
  v27 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v27)
  {
    sub_1000022B8(v23, v22, v24);
    sub_1000022C8(v52, v53, v51 & 1);
    sub_1000022C8(v55, v56, v54 & 1);
    sub_1000022C8(v49, v74, v48 & 1);
    return sub_100002B38(v57);
  }

  else
  {
    v43 = v23;
    v44 = v22;
    LODWORD(v50) = v24;
    v28 = v48;
    v29 = v49;
    sub_1000021C0(&qword_1000B47E8, &unk_10008E9A0);
    v62 = 0;
    sub_10000BD8C(&qword_1000B49B0, &qword_1000B47E8, &unk_10008E9A0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000022C8(v52, v53, v51 & 1);
    v52 = v63;
    v53 = v64;
    v51 = v65;
    v62 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    sub_1000022C8(v55, v56, v54 & 1);
    v31 = v63;
    v30 = v64;
    LODWORD(v56) = v65;
    v62 = 2;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v54 = v31;
    v55 = v30;
    sub_1000022C8(v29, v74, v28 & 1);
    v49 = v63;
    v74 = v64;
    v48 = v65;
    sub_1000021C0(&qword_1000B49B8, &unk_1000907E0);
    v62 = 3;
    sub_10000BD8C(&qword_1000B49C0, &qword_1000B49B8, &unk_1000907E0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    LOBYTE(v29) = v50;
    v34 = v43;
    v33 = v44;
    v36 = v52;
    v35 = v53;
    (*(v46 + 8))(v6, v47);
    sub_1000022B8(v34, v33, v29);
    v37 = v63;
    v38 = v64;
    v61 = v51;
    v60 = v56;
    v59 = v48;
    v58 = v65;
    result = sub_100002B38(v57);
    v39 = v45;
    *v45 = v36;
    v39[1] = v35;
    *(v39 + 16) = v61;
    v40 = v55;
    v39[3] = v54;
    v39[4] = v40;
    *(v39 + 40) = v60;
    v41 = v74;
    v39[6] = v49;
    v39[7] = v41;
    *(v39 + 64) = v59;
    v39[9] = v37;
    v39[10] = v38;
    *(v39 + 88) = v58;
  }

  return result;
}

unint64_t sub_10000BC90()
{
  result = qword_1000B49A8;
  if (!qword_1000B49A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49A8);
  }

  return result;
}

unint64_t sub_10000BCE4()
{
  result = qword_1000B49D0;
  if (!qword_1000B49D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49D0);
  }

  return result;
}

unint64_t sub_10000BD38()
{
  result = qword_1000B49E0;
  if (!qword_1000B49E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49E0);
  }

  return result;
}

uint64_t sub_10000BD8C(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_100002B84(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenericMetadataOptions.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GenericMetadataOptions.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10000BF48()
{
  result = qword_1000B49F0;
  if (!qword_1000B49F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49F0);
  }

  return result;
}

unint64_t sub_10000BFA0()
{
  result = qword_1000B49F8;
  if (!qword_1000B49F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B49F8);
  }

  return result;
}

unint64_t sub_10000BFF8()
{
  result = qword_1000B4A00;
  if (!qword_1000B4A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A00);
  }

  return result;
}

unint64_t sub_10000C050()
{
  result = qword_1000B4A08;
  if (!qword_1000B4A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A08);
  }

  return result;
}

unint64_t sub_10000C0A8()
{
  result = qword_1000B4A10;
  if (!qword_1000B4A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A10);
  }

  return result;
}

unint64_t sub_10000C100()
{
  result = qword_1000B4A18;
  if (!qword_1000B4A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A18);
  }

  return result;
}

unint64_t sub_10000C158()
{
  result = qword_1000B4A20;
  if (!qword_1000B4A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A20);
  }

  return result;
}

unint64_t sub_10000C1B0()
{
  result = qword_1000B4A28;
  if (!qword_1000B4A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A28);
  }

  return result;
}

unint64_t sub_10000C208()
{
  result = qword_1000B4A30;
  if (!qword_1000B4A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A30);
  }

  return result;
}

double sub_10000C294()
{
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD000000000000034, 0x8000000100097660, 0, 0, 0, 0xE000000000000000, v2, v1, 1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, _swiftEmptyArrayStorage);
  xmmword_1000B63A0 = v2[6];
  unk_1000B63B0 = v2[7];
  xmmword_1000B63C0 = v2[8];
  qword_1000B63D0 = v3;
  xmmword_1000B6360 = v2[2];
  unk_1000B6370 = v2[3];
  xmmword_1000B6380 = v2[4];
  unk_1000B6390 = v2[5];
  result = *v2;
  xmmword_1000B6340 = v2[0];
  *algn_1000B6350 = v2[1];
  return result;
}

uint64_t sub_10000C354(uint64_t a1, uint64_t a2)
{
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10008FA80;
  *(v4 + 32) = 0x73736572646441;
  *(v4 + 40) = 0xE700000000000000;
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = 1702521171;
  *(v4 + 72) = 0xE400000000000000;
  *(v4 + 88) = &type metadata for String;
  *(v4 + 96) = 0x746E756F43;
  *(v4 + 104) = 0xE500000000000000;
  *(v4 + 152) = &type metadata for String;
  *(v4 + 120) = &type metadata for String;
  *(v4 + 128) = 0x7373616C43207349;
  *(v4 + 136) = 0xE800000000000000;
  print(_:separator:terminator:)();

  v13 = a1;
  v14 = a2;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_10000CBB4;
  *(v5 + 24) = &v12;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_10000CBCC;
  *(v6 + 24) = v5;
  v11[0] = sub_100007E88;
  v11[1] = v6;
  v7 = *(a1 + 16);
  v8 = qword_1000B47A8;

  if (v8 != -1)
  {
    swift_once();
  }

  off_1000B6598(v7, v11, 1, sub_10000E170);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000C87C(uint64_t a1)
{
  v2 = sub_10000CE38();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10000C8B8(uint64_t a1)
{
  v2 = sub_10000CE38();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10000C8F4@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B46F0 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B6340, v2);
}

uint64_t sub_10000C964()
{
  v1 = v0[3];
  v24 = v0[2];
  v25 = v1;
  v26 = v0[4];
  v27 = *(v0 + 10);
  v2 = v0[1];
  v22 = *v0;
  v23 = v2;
  v3 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  OptionGroup.wrappedValue.getter(v3, &v13);
  v4 = v13;
  v5 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v28 = v21;
  sub_100007EC8(v13, v14, v15, v16, v17, v18);
  sub_1000022B8(v4, v5, v6);
  sub_1000022C8(v7, v8, v9);
  return sub_1000022C8(v10, v11, v28);
}

double sub_10000CA60@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10000CC0C(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_10000CABC(uint64_t a1)
{
  result = sub_10000CAE4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000CAE4()
{
  result = qword_1000B4A38;
  if (!qword_1000B4A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A38);
  }

  return result;
}

unint64_t sub_10000CB38(uint64_t a1)
{
  result = sub_10000CB60();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10000CB60()
{
  result = qword_1000B4A40;
  if (!qword_1000B4A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A40);
  }

  return result;
}

uint64_t sub_10000CBD4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10000CC0C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1000021C0(&qword_1000B4A48, &qword_10008FC78);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = *ArgumentVisibility.default.unsafeMutableAddressor();
  v10 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v9, &type metadata for UniversalOptions, v10, v28);
  v11 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_10000CE38();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004188(v28);
    return sub_100002B38(a1);
  }

  else
  {
    v12 = v29;
    sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
    sub_1000041F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    sub_100004188(v28);
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v16 = v22;
    v17 = v23;
    result = sub_100002B38(a1);
    v14 = v19;
    *(v12 + 32) = v18;
    *(v12 + 48) = v14;
    *(v12 + 64) = v20;
    *(v12 + 80) = v21;
    v15 = v17;
    *v12 = v16;
    *(v12 + 16) = v15;
  }

  return result;
}

unint64_t sub_10000CE38()
{
  result = qword_1000B4A50;
  if (!qword_1000B4A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A50);
  }

  return result;
}

unint64_t sub_10000CEA0()
{
  result = qword_1000B4A58;
  if (!qword_1000B4A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A58);
  }

  return result;
}

unint64_t sub_10000CEF8()
{
  result = qword_1000B4A60;
  if (!qword_1000B4A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A60);
  }

  return result;
}

unint64_t sub_10000CF50()
{
  result = qword_1000B4A68;
  if (!qword_1000B4A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4A68);
  }

  return result;
}

unint64_t sub_10000CFA4()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 24);
    v2 = *(v0 + 32);
  }

  else
  {
    v3 = sub_100011218(*(v0 + 20));
    if (v4)
    {
      v1 = v3;
    }

    else
    {
      v1 = 0xD000000000000011;
    }

    v5 = *(v0 + 32);
    if (v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0x8000000100097830;
    }

    *(v0 + 24) = v1;
    *(v0 + 32) = v6;
  }

  return v1;
}

char *sub_10000D030()
{
  if (*(v0 + 96))
  {
    v1 = *(v0 + 96);
  }

  else
  {
    v1 = sub_10000D08C();
    v2 = *(v0 + 96);
    *(v0 + 96) = v1;
  }

  return v1;
}

char *sub_10000D08C()
{
  v1 = *(v0 + 16);
  type metadata accessor for DarwinRemoteProcess.PortList();
  swift_allocObject();
  v2 = sub_10000E194(v1);
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = *(v2 + 2);
  if (!v3 || (v4 = *(v2 + 3)) == 0)
  {

    return _swiftEmptyArrayStorage;
  }

  v5 = 4 * v4;
  v6 = _swiftEmptyArrayStorage;
  do
  {
    v9 = *v3;
    *object_addr = 0;
    v30 = 0;
    v31 = 0;
    thread_info_outCnt = 6;
    v10 = thread_info(v9, 4u, object_addr, &thread_info_outCnt);
    if (v10)
    {
      v11 = v10;
      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_10008E640;
      *object_type = 0;
      v27 = 0xE000000000000000;
      _StringGuts.grow(_:)(48);

      *object_type = 0xD000000000000023;
      v27 = 0x80000001000977D0;
      v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 8250;
      v14._object = 0xE200000000000000;
      String.append(_:)(v14);
      if (!mach_error_string(v11))
      {
        __break(1u);
      }

      v15._countAndFlagsBits = String.init(cString:)();
      String.append(_:)(v15);

      v16._countAndFlagsBits = 2016421920;
      v16._object = 0xE400000000000000;
      String.append(_:)(v16);
      sub_10000F9E8();
      v17._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v17);

      v18._countAndFlagsBits = 41;
      v18._object = 0xE100000000000000;
      String.append(_:)(v18);
      v19 = *object_type;
      v20 = v27;
      *(v12 + 56) = &type metadata for String;
      *(v12 + 32) = v19;
      *(v12 + 40) = v20;
      print(_:separator:terminator:)();
    }

    else
    {
      v7 = *object_addr;
      v8 = v30;
      object_addr[0] = 0;
      object_type[0] = 0;
      if (!mach_port_kernel_object(mach_task_self_, v9, object_type, object_addr))
      {
        v21 = object_addr[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_10000EBEC(0, *(v6 + 2) + 1, 1, v6);
        }

        v23 = *(v6 + 2);
        v22 = *(v6 + 3);
        if (v23 >= v22 >> 1)
        {
          v6 = sub_10000EBEC((v22 > 1), v23 + 1, 1, v6);
        }

        *(v6 + 2) = v23 + 1;
        v24 = &v6[24 * v23];
        *(v24 + 4) = v7;
        *(v24 + 5) = v8;
        *(v24 + 12) = v21;
        v24[52] = 0;
      }
    }

    ++v3;
    v5 -= 4;
  }

  while (v5);

  return v6;
}

size_t sub_10000D570(size_t result, uint64_t a2)
{
  if (!result)
  {
    __break(1u);
    return result;
  }

  v3 = *(result + 16);
  v4 = qword_1000B4798;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = off_1000B6588(v3, a2);
  if (v5)
  {
    v6 = strlen(v5);

    result = v6;
    if ((v6 & 0x8000000000000000) == 0)
    {
      return result;
    }

    __break(1u);
  }

  return 0;
}

uint64_t sub_10000D61C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {

    if (!a2)
    {

      return 0;
    }

    if ((a3 & 0x8000000000000000) == 0)
    {
      v5 = static String._fromUTF8Repairing(_:)();
      v6 = sub_10000D3C8(v5);

      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_10000D6A4(mach_port_t pid, char a2)
{
  v3 = v2;
  v6 = *v3;
  v3[12] = 0;
  v3[4] = 0;
  v3[5] = 0;
  v3[3] = 0;
  *(v3 + 5) = pid;
  task = 0;
  v7 = task_for_pid(mach_task_self_, pid, &task);
  if (v7)
  {
    v8 = v7;
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_10008E640;
    aBlock = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    aBlock = 0xD00000000000001BLL;
    v54 = 0x8000000100097850;
    corpse_task_port = pid;
    v10._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v10);

    v11._countAndFlagsBits = 8250;
    v11._object = 0xE200000000000000;
    String.append(_:)(v11);
    result = mach_error_string(v8);
    if (result)
    {
      v13._countAndFlagsBits = String.init(cString:)();
      String.append(_:)(v13);

      v14._countAndFlagsBits = 32;
      v14._object = 0xE100000000000000;
      String.append(_:)(v14);
      v15._countAndFlagsBits = 30768;
      v15._object = 0xE200000000000000;
      String.append(_:)(v15);
      corpse_task_port = v8;
      sub_10000F9E8();
LABEL_4:
      v16._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v16);

      v17 = aBlock;
      v18 = v54;
      *(v9 + 56) = &type metadata for String;
      *(v9 + 32) = v17;
      *(v9 + 40) = v18;
      if (qword_1000B46F8 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      sub_100007D90();
      print<A>(_:separator:terminator:to:)();
      swift_endAccess();
      goto LABEL_7;
    }

    __break(1u);
    goto LABEL_49;
  }

  if (sub_10000E7A0())
  {
    v21 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v22 = [objc_msgSend(v21 initWithTask:{task), "shouldAnalyzeWithCorpse"}];
    swift_unknownObjectRelease();
    if ((a2 & 1) == 0 && (v22 & 1) == 0)
    {
      goto LABEL_32;
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_32;
  }

  corpse_task_port = 0;
  v23 = task_generate_corpse(task, &corpse_task_port);
  if (v23 == 6)
  {
    sleep(1u);
    v25 = task_generate_corpse(task, &corpse_task_port);
    if (v25)
    {
      LODWORD(v24) = v25;
      if (v25 != 6)
      {
        goto LABEL_45;
      }

      sleep(2u);
      v26 = task_generate_corpse(task, &corpse_task_port);
      if (v26)
      {
        LODWORD(v24) = v26;
        if (v26 != 6)
        {
          goto LABEL_45;
        }

        sleep(4u);
        v27 = task_generate_corpse(task, &corpse_task_port);
        if (v27)
        {
          LODWORD(v24) = v27;
          if (v27 != 6)
          {
            goto LABEL_45;
          }

          sleep(8u);
          v28 = task_generate_corpse(task, &corpse_task_port);
          if (v28)
          {
            LODWORD(v24) = v28;
            if (v28 != 6)
            {
              goto LABEL_45;
            }

            sleep(0x10u);
            v29 = task_generate_corpse(task, &corpse_task_port);
            if (v29)
            {
              LODWORD(v24) = v29;
              if (v29 != 6)
              {
                goto LABEL_45;
              }

              sleep(0x20u);
              goto LABEL_32;
            }
          }
        }
      }
    }
  }

  else
  {
    LODWORD(v24) = v23;
    if (v23)
    {
      goto LABEL_45;
    }
  }

  if (qword_1000B47A0 != -1)
  {
    swift_once();
  }

  off_1000B6590();
  mach_port_deallocate(mach_task_self_, task);
  task = corpse_task_port;
LABEL_32:
  *(v3 + 4) = task;
  if (qword_1000B4730 != -1)
  {
    swift_once();
  }

  v3[6] = off_1000B6520();
  v3[7] = v30;
  if (qword_1000B4738 != -1)
  {
    swift_once();
  }

  v31 = off_1000B6528;
  v3[8] = off_1000B6528();
  v3[9] = v32;
  if (qword_1000B4780 != -1)
  {
    swift_once();
  }

  if (off_1000B6570())
  {
    sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_10008E640;
    aBlock = 0;
    v54 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    aBlock = 543451504;
    v54 = 0xE400000000000000;
    corpse_task_port = pid;
    v34._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v34);

    v35._countAndFlagsBits = 0xD000000000000028;
    v35._object = 0x80000001000978D0;
    String.append(_:)(v35);
    v36 = aBlock;
    v37 = v54;
    *(v33 + 56) = &type metadata for String;
    *(v33 + 32) = v36;
    *(v33 + 40) = v37;
    print(_:separator:terminator:)();
LABEL_7:

    v19 = v3[4];

    v20 = v3[12];

    swift_deallocPartialClassInstance();
    return 0;
  }

  v3[10] = (v31)(v3[6], v3[7], "libswift_Concurrency.dylib", 0x8000000000000000);
  v3[11] = v38;
  v39 = *(v3 + 4);
  sub_100019CF4();

  ReflectionContextWithDataLayout = swift_reflection_createReflectionContextWithDataLayout();
  if (!ReflectionContextWithDataLayout)
  {

    return 0;
  }

  v3[5] = ReflectionContextWithDataLayout;
  v41 = v3[6];
  v42 = v3[7];
  if (qword_1000B4770 != -1)
  {
    swift_once();
  }

  v24 = off_1000B6560;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_10000FAC8;
  *(v43 + 24) = v3;
  v57 = sub_10000FAE0;
  v58 = v43;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10000E868;
  v56 = &unk_1000AB478;
  v44 = _Block_copy(&aBlock);

  v24(v41, v42, 0x8000000000000000, v44);
  _Block_release(v44);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if ((isEscapingClosureAtFileLocation & 1) == 0)
  {
    return v3;
  }

  __break(1u);
LABEL_45:
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10008E640;
  aBlock = 0;
  v54 = 0xE000000000000000;
  _StringGuts.grow(_:)(39);

  aBlock = 0xD00000000000001ELL;
  v54 = 0x8000000100097900;
  v46._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v46);

  v47._countAndFlagsBits = 8250;
  v47._object = 0xE200000000000000;
  String.append(_:)(v47);
  result = mach_error_string(v24);
  if (result)
  {
    v48._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v48);

    v49._countAndFlagsBits = 32;
    v49._object = 0xE100000000000000;
    String.append(_:)(v49);
    v50._countAndFlagsBits = 30768;
    v50._object = 0xE200000000000000;
    String.append(_:)(v50);
    sub_10000F9E8();
    goto LABEL_4;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t sub_10000DFB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_1000B4778 != -1)
  {
    swift_once();
  }

  v4 = off_1000B6568();
  v5 = *(a3 + 40);

  return _swift_reflection_addImage(v5, v4);
}

uint64_t sub_10000E048()
{
  v1 = *(v0 + 16);
  if (qword_1000B47A0 != -1)
  {
    v7 = *(v0 + 16);
    swift_once();
  }

  off_1000B6590();
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  if (qword_1000B4728 != -1)
  {
    v8 = *(v0 + 48);
    v9 = *(v0 + 56);
    swift_once();
  }

  off_1000B6518();
  mach_port_deallocate(mach_task_self_, *(v0 + 16));
  v4 = *(v0 + 32);

  v5 = *(v0 + 96);

  return swift_deallocClassInstance();
}

char *sub_10000E194(task_inspect_t a1)
{
  v2 = v1;
  act_list = 0;
  act_listCnt = 0;
  v3 = task_threads(a1, &act_list, &act_listCnt);
  if (!v3)
  {
    v11 = act_listCnt;
    *(v1 + 16) = act_list;
    *(v1 + 24) = v11;
    return v2;
  }

  v4 = v3;
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_10008E640;
  _StringGuts.grow(_:)(47);

  result = mach_error_string(v4);
  if (result)
  {
    v7._countAndFlagsBits = String.init(cString:)();
    String.append(_:)(v7);

    v8._countAndFlagsBits = 2016421920;
    v8._object = 0xE400000000000000;
    String.append(_:)(v8);
    sub_10000F9E8();
    v9._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
    String.append(_:)(v9);

    v10._countAndFlagsBits = 41;
    v10._object = 0xE100000000000000;
    String.append(_:)(v10);
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = 0xD000000000000026;
    *(v5 + 40) = 0x8000000100097800;
    print(_:separator:terminator:)();

    type metadata accessor for DarwinRemoteProcess.PortList();
    swift_deallocPartialClassInstance();
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E368()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (!v1)
  {
LABEL_5:
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v2 >> 62))
    {
      goto LABEL_7;
    }

    __break(1u);
    return result;
  }

  if (v2)
  {
    v3 = 4 * v2;
    v4 = *(v0 + 16);
    do
    {
      v5 = *v4++;
      result = mach_port_deallocate(mach_task_self_, v5);
      v3 -= 4;
    }

    while (v3);
    goto LABEL_5;
  }

LABEL_7:
  vm_deallocate(mach_task_self_, v1, 4 * v2);

  return swift_deallocClassInstance();
}

__n128 initializeBufferWithCopyOfBuffer for DarwinRemoteProcess.ThreadInfo(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for DarwinRemoteProcess.ThreadInfo(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DarwinRemoteProcess.ThreadInfo(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 21) = v3;
  return result;
}

unint64_t sub_10000E4AC()
{
  result = qword_1000B4BF0;
  if (!qword_1000B4BF0)
  {
    sub_100002B84(&qword_1000B4BF8, qword_10008FE48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4BF0);
  }

  return result;
}

uint64_t sub_10000E510@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = *(v3 + 24);

  v7 = v4 + 4 * v5;
  if (!v4)
  {
    v7 = 0;
  }

  *a1 = v4;
  a1[1] = v7;
  return result;
}

uint64_t sub_10000E564()
{
  v1 = sub_10000F700(*v0);

  return v1;
}

uint64_t sub_10000E5C0(int **a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 16);
  v9 = *(v4 + 24);

  v11 = &v8[v9];
  if (!v8)
  {
    v11 = 0;
  }

  if (!a2)
  {
LABEL_13:
    a3 = 0;
    goto LABEL_15;
  }

  if (!a3)
  {
LABEL_15:
    *a1 = v8;
    a1[1] = v11;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    while (v8 && v8 != v11)
    {
      v13 = *v8++;
      *(a2 + 4 * v12) = v13;
      if (a3 - 1 == v12)
      {
        goto LABEL_15;
      }

      if (__OFADD__(++v12, 1))
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    a3 = v12;
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

uint64_t sub_10000E6DC(mach_port_name_t name)
{
  v3 = *(v1 + 16);
  *object_addr = 0;
  if (mach_port_kernel_object(v3, name, object_addr, &object_addr[1]))
  {
    return 0;
  }

  v4 = object_addr[1];
  v5 = sub_10000D030();
  v6 = *(v5 + 2);
  if (!v6)
  {
LABEL_8:

    return 0;
  }

  v7 = v5 + 52;
  while ((*v7 & 1) != 0 || *(v7 - 1) != v4)
  {
    v7 += 24;
    if (!--v6)
    {
      goto LABEL_8;
    }
  }

  v8 = *(v7 - 20);

  return v8;
}

uint64_t sub_10000E7A0()
{
  v0 = String.utf8CString.getter();
  v1 = objc_getClass((v0 + 32));

  if (v1)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    sub_1000021C0(&qword_1000B4CD8, &qword_10008FF30);
    if (swift_dynamicCast())
    {
      return v3;
    }
  }

  else
  {
    sub_10000FB2C(v6);
  }

  return 0;
}

char *sub_10000E898(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CE8, &qword_10008FF40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_10000E9B0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CE0, &qword_10008FF38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 648);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[648 * v8])
    {
      memmove(v12, v13, 648 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 648 * v8);
  }

  return v10;
}

char *sub_10000EAD0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CF0, &qword_10008FF48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 24 * v8);
  }

  return v10;
}

char *sub_10000EBEC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4C80, &qword_10008FED8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_10000ED10(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000021C0(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

char *sub_10000EE0C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CF8, &qword_10008FF50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10000EF18(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4D10, &unk_10008FF68);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[80 * v8])
    {
      memmove(v12, v13, 80 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000F038(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000021C0(&qword_1000B4D00, &qword_10008FF58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B4D08, &qword_10008FF60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000F180(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000021C0(&qword_1000B4C98, &qword_10008FEF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 120);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[15 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 120 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B4CA0, &qword_10008FEF8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10000F2C8(void *result, int64_t a2, char a3, void *a4)
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
    sub_1000021C0(&qword_1000B4CA8, &unk_10008FF00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[16 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 7);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000021C0(&qword_1000B4CB0, &qword_100090F80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10000F3FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4C88, &qword_10008FEE0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_10000F508(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4C90, &qword_10008FEE8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10000F5FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1000021C0(&qword_1000B4CC8, &qword_10008FF20);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_10000F700(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = *(result + 24);
    v3 = _swiftEmptyArrayStorage;
    v4 = 0;
    if (v2)
    {
      v5 = &_swiftEmptyArrayStorage[4];
      v6 = 4 * v2;
      while (1)
      {
        v7 = *v1;
        if (!v4)
        {
          v8 = v3[3];
          if (((v8 >> 1) + 0x4000000000000000) < 0)
          {
            goto LABEL_29;
          }

          v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
          if (v9 <= 1)
          {
            v10 = 1;
          }

          else
          {
            v10 = v9;
          }

          sub_1000021C0(&qword_1000B4C70, &unk_10008FEC8);
          v11 = swift_allocObject();
          v12 = j__malloc_size(v11);
          v13 = v12 - 32;
          if (v12 < 32)
          {
            v13 = v12 - 29;
          }

          v14 = v13 >> 2;
          v11[2] = v10;
          v11[3] = 2 * (v13 >> 2);
          v15 = (v11 + 4);
          v16 = v3[3] >> 1;
          if (v3[2])
          {
            if (v11 != v3 || v15 >= v3 + 4 * v16 + 32)
            {
              memmove(v11 + 4, v3 + 4, 4 * v16);
            }

            v3[2] = 0;
          }

          v5 = (v15 + 4 * v16);
          v4 = (v14 & 0x7FFFFFFFFFFFFFFFLL) - v16;

          v3 = v11;
        }

        v18 = __OFSUB__(v4--, 1);
        if (v18)
        {
          break;
        }

        ++v1;
        *v5++ = v7;
        v6 -= 4;
        if (!v6)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }
  }

  else
  {
    v4 = 0;
    v3 = _swiftEmptyArrayStorage;
  }

LABEL_24:
  v19 = v3[3];
  if (v19 < 2)
  {
    return v3;
  }

  v20 = v19 >> 1;
  v18 = __OFSUB__(v20, v4);
  v21 = v20 - v4;
  if (!v18)
  {
    v3[2] = v21;
    return v3;
  }

LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_10000F86C(int a1, _BYTE *a2)
{
  if (!a2)
  {
    return 0;
  }

  result = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      *a2 = 0;
    }

    else
    {
      if (a1 != 4)
      {
        return result;
      }

      *a2 = &_mh_execute_header;
    }

    return 1;
  }

  if (a1 < 2)
  {
    *a2 = 8;
    return 1;
  }

  if (a1 == 2)
  {
    *a2 = sub_10000FB20();
    return 1;
  }

  return result;
}

uint64_t sub_10000F8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    __break(1u);
  }

  if (a3 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = *(a1 + 16);
    v8 = 0;
    if (qword_1000B4790 == -1)
    {
      goto LABEL_4;
    }
  }

  swift_once();
LABEL_4:
  v6 = off_1000B6580();

  if (v6)
  {
    return 0;
  }

  else
  {
    return v8;
  }
}

unint64_t sub_10000F9E8()
{
  result = qword_1000B4C78;
  if (!qword_1000B4C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4C78);
  }

  return result;
}

uint64_t sub_10000FA3C(uint64_t result, uint64_t a2, unsigned int a3)
{
  if (result)
  {
    if (a3)
    {
      v5 = *result;
      v4 = *(result + 8);
      v6 = a3;

      v7 = (a2 + 8);
      do
      {
        v8 = *(v7 - 1);
        v9 = *v7;
        v10 = v8;
        v5(&v10, &v9);
        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10000FAE0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10000FB08(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10000FB2C(uint64_t a1)
{
  v2 = sub_1000021C0(&qword_1000B4CD0, &qword_10008FF28);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10000FB98()
{
  result = qword_1000B4D20;
  if (!qword_1000B4D20)
  {
    sub_100002B84(&qword_1000B4D18, &qword_10008FF78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D20);
  }

  return result;
}

uint64_t sub_100010300()
{
  v1 = *v0;
  v2 = String.utf8CString.getter();
  fputs((v2 + 32), v1);
}

uint64_t sub_10001034C()
{
  result = stderr.getter();
  qword_1000B63D8 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Std.File(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for Std.File(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = 0;
    }
  }

  return result;
}

double sub_100010418()
{
  *&v1 = 0;
  *(&v1 + 1) = 0xE000000000000000;
  CommandConfiguration.init(commandName:abstract:usage:discussion:version:shouldDisplay:subcommands:groupedSubcommands:defaultSubcommand:helpNames:aliases:)(0, 0, 0xD000000000000028, 0x8000000100097920, 0, 0, 0, 0xE000000000000000, v2, v1, 1, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 0, _swiftEmptyArrayStorage);
  xmmword_1000B6440 = v2[6];
  unk_1000B6450 = v2[7];
  xmmword_1000B6460 = v2[8];
  qword_1000B6470 = v3;
  xmmword_1000B6400 = v2[2];
  unk_1000B6410 = v2[3];
  xmmword_1000B6420 = v2[4];
  unk_1000B6430 = v2[5];
  result = *v2;
  xmmword_1000B63E0 = v2[0];
  *algn_1000B63F0 = v2[1];
  return result;
}

uint64_t sub_1000104D8(uint64_t a1)
{
  sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10008F230;
  *(v2 + 32) = 0x73736572646441;
  *(v2 + 40) = 0xE700000000000000;
  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = 6775124;
  *(v2 + 72) = 0xE300000000000000;
  *(v2 + 88) = &type metadata for String;
  *(v2 + 96) = 0x656D614E20676154;
  *(v2 + 104) = 0xE800000000000000;
  *(v2 + 120) = &type metadata for String;
  *(v2 + 128) = 1702521171;
  *(v2 + 136) = 0xE400000000000000;
  *(v2 + 152) = &type metadata for String;
  *(v2 + 160) = 1952867660;
  *(v2 + 168) = 0xE400000000000000;
  *(v2 + 216) = &type metadata for String;
  *(v2 + 184) = &type metadata for String;
  *(v2 + 192) = 0x7468676952;
  *(v2 + 200) = 0xE500000000000000;
  print(_:separator:terminator:)();

  if (!*(a1 + 40))
  {
    goto LABEL_10;
  }

  v3 = swift_allocObject();
  *(v3 + 16) = _swiftEmptyArrayStorage;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_100002310;
  *(v4 + 24) = v3;
  v20 = sub_100010E78;
  v21 = v4;
  swift_retain_n();
  v5 = swift_reflection_iterateMetadataAllocations();

  if (v5)
  {
    v6 = String.init(cString:)();
    v8 = v7;
    sub_100002388();
    swift_allocError();
    *v9 = v6;
    v9[1] = v8;
    swift_willThrow();
  }

  swift_beginAccess();
  v11 = *(v3 + 16);

  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = (v11 + 48);
    while (v13 < *(v11 + 16))
    {
      ++v13;
      v15 = *v14;
      v16 = *(v14 - 1);
      v17 = *(v14 - 4);
      v18 = v16;
      v19 = v15;
      sub_1000107C0(&v17, a1);
      v14 += 6;
      if (v12 == v13)
      {
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }
}

uint64_t sub_1000107C0(int *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 1);
  v5 = a1[4];
  v6 = *(a2 + 40);
  result = swift_reflection_metadataAllocationCacheNode();
  if (result)
  {
    result = *(a2 + 40);
    if (result)
    {
      if (swift_reflection_metadataAllocationTagName())
      {
        v8 = String.init(cString:)();
        v10 = v9;
      }

      else
      {
        v10 = 0xE90000000000003ELL;
        v8 = 0x6E776F6E6B6E753CLL;
      }

      sub_1000021C0(&qword_1000B47F8, &qword_10008EE70);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_10008E640;
      _StringGuts.grow(_:)(17);

      sub_1000023DC();
      v12._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v12);

      v13._countAndFlagsBits = 9;
      v13._object = 0xE100000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 9;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      v16._countAndFlagsBits = v8;
      v16._object = v10;
      String.append(_:)(v16);

      v17._countAndFlagsBits = 9;
      v17._object = 0xE100000000000000;
      String.append(_:)(v17);
      v18._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v18);

      v19._countAndFlagsBits = 9;
      v19._object = 0xE100000000000000;
      String.append(_:)(v19);
      v20._countAndFlagsBits = 30768;
      v20._object = 0xE200000000000000;
      String.append(_:)(v20);
      v21._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v21);

      v22._countAndFlagsBits = 9;
      v22._object = 0xE100000000000000;
      String.append(_:)(v22);
      v23._countAndFlagsBits = 30768;
      v23._object = 0xE200000000000000;
      String.append(_:)(v23);
      v24._countAndFlagsBits = String.init<A>(_:radix:uppercase:)();
      String.append(_:)(v24);

      *(v11 + 56) = &type metadata for String;
      *(v11 + 32) = 30768;
      *(v11 + 40) = 0xE200000000000000;
      print(_:separator:terminator:)();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100010AD0(uint64_t a1)
{
  v2 = sub_1000110AC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100010B0C(uint64_t a1)
{
  v2 = sub_1000110AC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100010B48@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_1000B4700 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_100002430(&xmmword_1000B63E0, v2);
}

uint64_t sub_100010BB8()
{
  v1 = v0[3];
  v24 = v0[2];
  v25 = v1;
  v26 = v0[4];
  v27 = *(v0 + 10);
  v2 = v0[1];
  v22 = *v0;
  v23 = v2;
  v3 = sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
  OptionGroup.wrappedValue.getter(v3, &v13);
  v4 = v13;
  v5 = v14;
  v6 = v15;
  v7 = v16;
  v8 = v17;
  v9 = v18;
  v10 = v19;
  v11 = v20;
  v28 = v21;
  sub_100007EF4(v13, v14, v15, v16, v17, v18);
  sub_1000022B8(v4, v5, v6);
  sub_1000022C8(v7, v8, v9);
  return sub_1000022C8(v10, v11, v28);
}

double sub_100010CB4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100010E80(a1, v7);
  if (!v2)
  {
    v5 = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v8;
    result = *v7;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_100010D10(uint64_t a1)
{
  result = sub_100010D38();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100010D38()
{
  result = qword_1000B4D28;
  if (!qword_1000B4D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D28);
  }

  return result;
}

unint64_t sub_100010D8C(uint64_t a1)
{
  result = sub_100010DB4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100010DB4()
{
  result = qword_1000B4D30;
  if (!qword_1000B4D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D30);
  }

  return result;
}

uint64_t sub_100010E08()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100010E40()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100010E80@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = sub_1000021C0(&qword_1000B4D38, &qword_1000901D8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v16 - v7;
  v9 = *ArgumentVisibility.default.unsafeMutableAddressor();
  v10 = sub_10000248C();
  OptionGroup.init(title:visibility:)(0, 0xE000000000000000, v9, &type metadata for UniversalOptions, v10, v28);
  v11 = a1[4];
  sub_100002AA0(a1, a1[3]);
  sub_1000110AC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_100004188(v28);
    return sub_100002B38(a1);
  }

  else
  {
    v12 = v29;
    sub_1000021C0(&qword_1000B47D8, &qword_10008E990);
    sub_1000041F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    sub_100004188(v28);
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v16 = v22;
    v17 = v23;
    result = sub_100002B38(a1);
    v14 = v19;
    *(v12 + 32) = v18;
    *(v12 + 48) = v14;
    *(v12 + 64) = v20;
    *(v12 + 80) = v21;
    v15 = v17;
    *v12 = v16;
    *(v12 + 16) = v15;
  }

  return result;
}

unint64_t sub_1000110AC()
{
  result = qword_1000B4D40;
  if (!qword_1000B4D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D40);
  }

  return result;
}

unint64_t sub_100011114()
{
  result = qword_1000B4D48;
  if (!qword_1000B4D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D48);
  }

  return result;
}

unint64_t sub_10001116C()
{
  result = qword_1000B4D50;
  if (!qword_1000B4D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D50);
  }

  return result;
}

unint64_t sub_1000111C4()
{
  result = qword_1000B4D58;
  if (!qword_1000B4D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000B4D58);
  }

  return result;
}

uint64_t sub_100011218(int a1)
{
  v4 = 0;
  memset(buffer, 0, sizeof(buffer));
  v1 = proc_pidinfo(a1, 3, 0, buffer, 136);
  result = 0;
  if (v1 == 136)
  {
    return static String._fromUTF8Repairing(_:)();
  }

  return result;
}

unint64_t sub_100011618(uint64_t a1, unint64_t a2)
{
  v4 = static CommandLine.arguments.getter();
  if (!v4[2])
  {
    goto LABEL_9;
  }

  v6 = v4[4];
  v5 = v4[5];

  v7 = v6 == a1 && v5 == a2;
  if (v7 || (v8 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v8 & 1) != 0))
  {

    v9 = 1;
    return v9 & 1;
  }

  v24[0] = 47;
  v24[1] = 0xE100000000000000;
  __chkstk_darwin(v8);
  v23[2] = v24;
  v10 = sub_100012214(sub_100012318, v23, v6, v5);
  if (v11)
  {
LABEL_9:

    v9 = 0;
    return v9 & 1;
  }

  sub_1000117E4(v10, v6, v5);
  v14 = v13;

  result = Substring.index(_:offsetBy:limitedBy:)();
  if (v15)
  {
    result = v14;
  }

  if (v14 >> 14 >= result >> 14)
  {
    v16 = Substring.subscript.getter();
    v18 = v17;
    v20 = v19;
    v22 = v21;

    v9 = sub_100012370(v16, v18, v20, v22, a1, a2);

    return v9 & 1;
  }

  __break(1u);
  return result;
}

unint64_t sub_1000117E4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.subscript.getter();
  }

  __break(1u);
  return result;
}

Swift::Int sub_100011830(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100024A6C(v2);
  }

  v3 = *(v2 + 2);
  v15[0] = (v2 + 32);
  v15[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2;
      do
      {
        v11 = v8;
        v12 = v10;
        do
        {
          if (*(v12 + 18) >= *(v12 + 180))
          {
            break;
          }

          memcpy(__dst, v12 + 680, sizeof(__dst));
          memcpy(v12 + 680, v12 + 32, 0x288uLL);
          result = memcpy(v12 + 32, __dst, 0x288uLL);
          v12 -= 648;
        }

        while (!__CFADD__(v11++, 1));
        ++v9;
        v10 += 648;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      type metadata accessor for kinfo_proc(0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = &_swiftEmptyArrayStorage;
    }

    __dst[0] = v7 + 4;
    __dst[1] = v6;
    sub_1000119B8(__dst, v16, v15, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1000119B8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v85 = result;
  v88 = a3;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = &_swiftEmptyArrayStorage;
LABEL_90:
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_130;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_124:
      result = sub_10002299C(v7);
      v7 = result;
    }

    v76 = v7 + 2;
    v77 = v7[2];
    if (v77 >= 2)
    {
      while (*v88)
      {
        v78 = &v7[2 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_100011FA4((*v88 + 648 * *v78), (*v88 + 648 * *v80), (*v88 + 648 * v81), v86);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_116;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_117;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_118;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_128;
    }
  }

  v6 = 0;
  v7 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*v88 + 648 * v6 + 40);
      v10 = 648 * v8;
      v11 = *v88 + 648 * v8;
      v12 = *(v11 + 40);
      v13 = v8 + 2;
      v14 = (v11 + 1336);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v17 = (v12 < v9) ^ (v15 >= *v14);
        ++v13;
        v14 += 162;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_121;
      }

      if (v8 < v6)
      {
        v18 = 648 * v6 - 648;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v21 = *v88;
            if (!*v88)
            {
              goto LABEL_127;
            }

            memcpy(__dst, (v21 + v10), sizeof(__dst));
            memmove((v21 + v10), (v21 + v18), 0x288uLL);
            result = memcpy((v21 + v18), __dst, 0x288uLL);
          }

          ++v20;
          v18 -= 648;
          v10 += 648;
        }

        while (v20 < v19);
        v5 = v88[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_120;
      }

      if (v6 - v8 < a4)
      {
        break;
      }
    }

LABEL_39:
    if (v6 < v8)
    {
      goto LABEL_119;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10000E99C(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v29 = v7[2];
    v28 = v7[3];
    v30 = v29 + 1;
    if (v29 >= v28 >> 1)
    {
      result = sub_10000E99C((v28 > 1), v29 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v30;
    v31 = v7 + 4;
    v32 = &v7[2 * v29 + 4];
    *v32 = v8;
    v32[1] = v6;
    v86 = *v85;
    if (!*v85)
    {
      goto LABEL_129;
    }

    if (v29)
    {
      while (1)
      {
        v33 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v34 = v7[4];
          v35 = v7[5];
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_59:
          if (v37)
          {
            goto LABEL_106;
          }

          v50 = &v7[2 * v30];
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_108;
          }

          v56 = &v31[2 * v33];
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_113;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v33 = v30 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v30 < 2)
        {
          goto LABEL_114;
        }

        v60 = &v7[2 * v30];
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_74:
        if (v55)
        {
          goto LABEL_110;
        }

        v63 = &v31[2 * v33];
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_112;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_81:
        if (v33 - 1 >= v30)
        {
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
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
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
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (!*v88)
        {
          goto LABEL_126;
        }

        v71 = &v31[2 * v33 - 2];
        v72 = *v71;
        v73 = &v31[2 * v33];
        v74 = v73[1];
        sub_100011FA4((*v88 + 648 * *v71), (*v88 + 648 * *v73), (*v88 + 648 * v74), v86);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_101;
        }

        if (v33 > v7[2])
        {
          goto LABEL_102;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = v7[2];
        if (v33 >= v75)
        {
          goto LABEL_103;
        }

        v30 = v75 - 1;
        result = memmove(&v31[2 * v33], v73 + 2, 16 * (v75 - 1 - v33));
        v7[2] = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = &v31[2 * v30];
      v39 = *(v38 - 8);
      v40 = *(v38 - 7);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_104;
      }

      v43 = *(v38 - 6);
      v42 = *(v38 - 5);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_105;
      }

      v45 = &v7[2 * v30];
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_107;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_109;
      }

      if (v49 >= v41)
      {
        v67 = &v31[2 * v33];
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_115;
        }

        if (v36 < v70)
        {
          v33 = v30 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_3:
    v5 = v88[1];
    if (v6 >= v5)
    {
      goto LABEL_90;
    }
  }

  if (__OFADD__(v8, a4))
  {
    goto LABEL_122;
  }

  v86 = v7;
  if (v8 + a4 >= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = (v8 + a4);
  }

  if (v7 < v8)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (v6 == v7)
  {
LABEL_38:
    v7 = v86;
    goto LABEL_39;
  }

  v22 = *v88;
  v23 = *v88 + 648 * v6 - 648;
  v83 = v8;
  v24 = v8 - v6;
LABEL_31:
  v25 = v24;
  v26 = v23;
  while (1)
  {
    if (v26[10] >= v26[172])
    {
LABEL_30:
      ++v6;
      v23 += 648;
      --v24;
      if (v6 != v7)
      {
        goto LABEL_31;
      }

      v6 = v7;
      v8 = v83;
      goto LABEL_38;
    }

    if (!v22)
    {
      break;
    }

    memcpy(__dst, v26 + 162, sizeof(__dst));
    memcpy(v26 + 162, v26, 0x288uLL);
    result = memcpy(v26, __dst, 0x288uLL);
    v26 -= 162;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
  return result;
}