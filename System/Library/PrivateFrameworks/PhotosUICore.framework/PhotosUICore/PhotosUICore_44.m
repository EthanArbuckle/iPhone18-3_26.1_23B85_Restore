uint64_t sub_1A41B56E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v29 = a2;
  v30 = a3;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v28 - v13;
  v15 = qword_1EB134210;

  v16 = sub_1A41ACDEC();

  v17 = sub_1A524D264();
  v18 = *sub_1A486DB9C();
  if (os_log_type_enabled(v18, v17))
  {
    v28[1] = v15;
    v28[2] = a4;
    v28[0] = v18;
    swift_unknownObjectRetain();
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v19 = 134349826;
    *(v19 + 4) = v16;
    *(v19 + 12) = 2082;
    v20 = [a1 uuid];
    result = swift_unknownObjectRelease();
    if (v20)
    {
      sub_1A524C674();

      sub_1A3C2EF94();
    }

    __break(1u);
  }

  else
  {
    v22 = sub_1A524CCB4();
    (*(*(v22 - 8) + 56))(v14, 1, 1, v22);
    v23 = *(v7 + qword_1EB134218);
    v24 = *(v7 + v15);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v23;
    *(v25 + 40) = a1;
    *(v25 + 48) = v16;
    *(v25 + 56) = v24;
    v26 = v30;
    *(v25 + 64) = v29;
    *(v25 + 72) = a5;
    *(v25 + 80) = a6;
    *(v25 + 88) = v26;
    *(v25 + 96) = a4;
    swift_unknownObjectRetain();

    v27 = sub_1A3D4D930(0, 0, v14, &unk_1A53224E8, v25);
    sub_1A3EE1368(v27, MEMORY[0x1E69E7CA8] + 8);

    sub_1A41AF744();

    return v16;
  }

  return result;
}

uint64_t sub_1A41B5B6C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A41B5C0C@<X0>(void *a1@<X8>)
{
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request();
  result = sub_1A524C484();
  v3 = 0;
  if (v4 != 1)
  {
    sub_1A524C454();
    result = sub_1A524C494();
    v3 = v4;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1A41B5CE8()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 8);
  v7 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A3CA8098;

  return sub_1A41B1864(v7, v8, v9, v10, v11, v2, v3, v4, v5, v6);
}

uint64_t sub_1A41B5DCC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41B210C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A41B5E88()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = v0[6];
  v5 = v0[7];
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = *(v0 + 10);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A3CA8098;

  return sub_1A41B1EC4(v4, v5, v9, v10, v11, v2, v3, v6, v7, v8);
}

uint64_t sub_1A41B5F60(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = sub_1A524D264();
  v9 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v9, v8))
  {
    return v7(a1, a2);
  }

  v15 = a2;
  v10 = v9;
  swift_unknownObjectRetain();
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  *v11 = 134349314;
  *(v11 + 4) = v6;
  *(v11 + 12) = 2082;
  v13 = [v5 uuid];
  result = swift_unknownObjectRelease();
  if (v13)
  {
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41B60E8@<X0>(BOOL *a1@<X8>)
{
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request();
  result = sub_1A524C484();
  if (v3 != 1)
  {
    result = sub_1A41B617C(v3);
  }

  *a1 = v3 != 1;
  return result;
}

uint64_t sub_1A41B617C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1A41B618C()
{
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request();
  sub_1A524C454();
  return sub_1A524C494();
}

uint64_t sub_1A41B6210()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41B0B0C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A41B6324()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41B13B8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A41B63E0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41B116C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A41B649C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1A3CB69F0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A41B64F8()
{
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request();
  sub_1A524C484();
  if (v1 == 1)
  {
    return sub_1A5247884();
  }

  sub_1A41B617C(v1);
  sub_1A524C454();

  return sub_1A524C494();
}

uint64_t sub_1A41B65D4()
{
  v1 = *(v0 + 16);
  sub_1A3C5D688(0, &qword_1EB1261A0, &qword_1EB126530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  v7 = sub_1A524C674();
  v8 = v3;
  sub_1A524E384();
  swift_getErrorValue();
  *(inited + 96) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v7, v8);
  v5 = sub_1A3DAED90(inited);
  swift_setDeallocating();
  sub_1A41B6C90(inited + 32, &qword_1EB126530);
  v1(0, 0xF000000000000000, 0, 0, 0, v5);
}

uint64_t sub_1A41B6728()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[6];
  v4 = sub_1A524D264();
  v5 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v5, v4))
  {
    return v3(v0[8], v0[9], v0[10], v0[11], 0, 0);
  }

  v6 = v5;
  swift_unknownObjectRetain();
  v7 = swift_slowAlloc();
  swift_slowAlloc();
  *v7 = 134349314;
  *(v7 + 4) = v2;
  *(v7 + 12) = 2082;
  v8 = [v1 uuid];
  result = swift_unknownObjectRelease();
  if (v8)
  {
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41B68AC@<X0>(uint64_t *a1@<X8>)
{
  v2 = qword_1EB134200++;
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request();
  sub_1A524C454();
  result = sub_1A524C494();
  *a1 = v2;
  return result;
}

uint64_t sub_1A41B6944()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = v0[7];
  v6 = v0[8];
  v7 = *(v0 + 9);
  v8 = *(v0 + 10);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A3CA8098;

  return sub_1A41ACEE0(v5, v6, v9, v10, v11, v2, v3, v4, v7, v8);
}

void sub_1A41B6A28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_1A3C34400(255, &qword_1EB126160);
    v9 = a4(a1, a3, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroy_58Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1A41B6AE8()
{
  v1 = *(v0 + 16);
  sub_1A3C5D688(0, &qword_1EB1261A0, &qword_1EB126530);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  v7 = sub_1A524C674();
  v8 = v3;
  sub_1A524E384();
  swift_getErrorValue();
  *(inited + 96) = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(*(v8 - 8) + 16))(boxed_opaque_existential_1, v7, v8);
  v5 = sub_1A3DAED90(inited);
  swift_setDeallocating();
  sub_1A41B6C90(inited + 32, &qword_1EB126530);
  v1(0, v5);
}

void sub_1A41B6C2C(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v4)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A41B6C90(uint64_t a1, unint64_t *a2)
{
  sub_1A41B6C2C(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A41B6CEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v16 = *(v0 + 56);
  sub_1A3C5D688(0, &qword_1EB1261F0, &qword_1EB126F70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v7;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = v2;
  v8 = sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A41B6C90(inited + 32, &qword_1EB126F70);
  v9 = sub_1A524D264();
  v10 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v10, v9))
  {
    sub_1A41AF384(v8);
  }

  v11 = v1;
  v12 = v10;
  swift_unknownObjectRetain();
  v13 = swift_slowAlloc();
  v14 = swift_slowAlloc();
  *v13 = 134349570;
  *(v13 + 4) = v3;
  *(v13 + 12) = 2082;
  v15 = [v4 uuid];
  swift_unknownObjectRelease();
  if (v15)
  {
    sub_1A524C674();

    sub_1A3C2EF94();
  }

  __break(1u);
}

void sub_1A41B6F54(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    v3 = sub_1A524E7A4();
    if (!v4)
    {
      atomic_store(v3, a2);
    }
  }
}

uint64_t sub_1A41B6FD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A41B7020(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1A41B70EC()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  v6 = (v4 + *(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41B364C(v7, v8, v9, v0 + v3, v0 + v4, v0 + v6);
}

uint64_t objectdestroy_130Tm()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (v5 + *(v8 + 80) + 48) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_1A41B74C0()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  v6 = (v4 + *(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41B442C(v7, v8, v9, v0 + v3, v0 + v4, v0 + v6);
}

uint64_t sub_1A41B76B8()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  v6 = (v4 + *(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = v0 + v4;
  v8 = *(v0 + v4);
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1A3D60150;

  return sub_1A41B2D18(v11, v12, v13, v0 + v3, v8, v9, v10, v0 + v6);
}

uint64_t sub_1A41B7884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;
  sub_1A41B78D0();
  result = SendableTransfer.init(wrappedValue:)(&v5, v3, &v6);
  *a2 = v6;
  return result;
}

void sub_1A41B78D0()
{
  if (!qword_1EB1265A0)
  {
    sub_1A41B7928();
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1265A0);
    }
  }
}

unint64_t sub_1A41B7928()
{
  result = qword_1EB1265B0;
  if (!qword_1EB1265B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1265B0);
  }

  return result;
}

uint64_t sub_1A41B798C()
{
  if (*v0 && ([*v0 respondsToSelector_] & 1) != 0)
  {
    v1 = [swift_unknownObjectRetain_n() uniqueGadgetIdentifier];
    v2 = sub_1A524C674();
    swift_unknownObjectRelease_n();

    return v2;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

unint64_t sub_1A41B7A70()
{
  result = qword_1EB12AE10;
  if (!qword_1EB12AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AE10);
  }

  return result;
}

unint64_t sub_1A41B7AC8()
{
  result = qword_1EB12AE08;
  if (!qword_1EB12AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AE08);
  }

  return result;
}

unint64_t sub_1A41B7B20()
{
  result = qword_1EB12ADF0;
  if (!qword_1EB12ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ADF0);
  }

  return result;
}

void sub_1A41B7B78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 && ([v2 respondsToSelector_] & 1) != 0)
  {
    v4 = [swift_unknownObjectRetain() uniqueGadgetIdentifier];
    v5 = sub_1A524C674();
    v7 = v6;
    swift_unknownObjectRelease();

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

void sub_1A41B7C58()
{
  sub_1A41B7CE0();

    ;
  }
}

void sub_1A41B7C94()
{
  sub_1A41B7CE0();

    ;
  }
}

unint64_t sub_1A41B7CE0()
{
  result = qword_1EB12ADF8;
  if (!qword_1EB12ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ADF8);
  }

  return result;
}

uint64_t LemonadeCurationKind.description.getter()
{
  v1 = *v0;
  v2 = 0x74726F6873;
  v3 = 0x6D6F74737563;
  v4 = 0x6169726F74696465;
  if (v1 != 4)
  {
    v4 = 7105633;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D756964656DLL;
  if (v1 != 1)
  {
    v5 = 1735290732;
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

uint64_t LemonadeCurationKind.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A41B7E80()
{
  v1 = *v0;
  v2 = 0x74726F6873;
  v3 = 0x6D6F74737563;
  v4 = 0x6169726F74696465;
  if (v1 != 4)
  {
    v4 = 7105633;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D756964656DLL;
  if (v1 != 1)
  {
    v5 = 1735290732;
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

uint64_t LemonadeCurationKind.representativeSystemImageName.getter()
{
  v1 = *v0;
  if (v1 < 4)
  {
    return 0;
  }

  v3 = sub_1A524C8D4();
  sub_1A524C7D4();
  return v3;
}

unint64_t LemonadeCurationKind.listedSystemImageName.getter()
{
  v1 = *v0;
  sub_1A3C7E8B0();
  v2 = [swift_getObjCClassFromMetadata() sharedInstance];
  v3 = [v2 enableSolariumDetailsView];

  if (v3)
  {
    if (v1 >= 4)
    {
      v6 = sub_1A524C8D4();
      sub_1A524C7D4();
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = 0xD000000000000012;
    if (v1 != 4)
    {
      v5 = 0x672E657261757173;
    }

    if (v1 >= 4)
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A41B8178()
{
  v1 = *v0;
  v2 = 0x74726F6853;
  v3 = 0x6D6F74737543;
  v4 = 0x6169726F74696445;
  if (v1 != 4)
  {
    v4 = 7105601;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D756964654DLL;
  if (v1 != 1)
  {
    v5 = 1735290700;
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

uint64_t LemonadeCurationKind.accessibilityLabelString.getter()
{
  if (*v0 >= 4u)
  {
    return sub_1A3C38BD4();
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1A41B828C()
{
  result = qword_1EB134300;
  if (!qword_1EB134300)
  {
    sub_1A41B82E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134300);
  }

  return result;
}

void sub_1A41B82E4()
{
  if (!qword_1EB126F38)
  {
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126F38);
    }
  }
}

uint64_t sub_1A41B8384(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A41B8404@<X0>(uint64_t a1@<X8>)
{
  sub_1A41BB70C();
  v4 = v3;
  v15 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharedLibraryInvitationViewModel(0);
  sub_1A41B8384(&qword_1EB134310, type metadata accessor for SharedLibraryInvitationViewModel);
  v7 = sub_1A5247EB4();
  v8 = (*(*v7 + 112))(v7);

  if (v8 & 1) != 0 || (type metadata accessor for SharedAlbumsInvitationsViewModel(0), sub_1A41B8384(&qword_1EB134318, type metadata accessor for SharedAlbumsInvitationsViewModel), v9 = sub_1A5247EB4(), v10 = (*(*v9 + 120))(v9), , (v10))
  {
    *v6 = sub_1A5249574();
    *(v6 + 1) = 0;
    v6[16] = 1;
    sub_1A41C597C(0, &qword_1EB1343C8, sub_1A41BB7A0);
    sub_1A41B86D8(v1, &v6[*(v11 + 44)]);
    sub_1A41C437C(v6, a1, sub_1A41BB70C);
    return (*(v15 + 56))(a1, 0, 1, v4);
  }

  else
  {
    v13 = *(v15 + 56);

    return v13(a1, 1, 1, v4);
  }
}

uint64_t sub_1A41B86D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v73 = a2;
  sub_1A41BBB88();
  v70 = v3;
  v69 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v65 = v62 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41BBB54(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v72 = v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v71 = v62 - v8;
  sub_1A41BB8E8(0);
  v64 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41BB8A0(0);
  v67 = v12;
  v66 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v63 = v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41BB808(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v68 = v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v62 - v17;
  v19 = *a1;
  type metadata accessor for SharedLibraryInvitationViewModel(0);
  sub_1A41B8384(&qword_1EB134310, type metadata accessor for SharedLibraryInvitationViewModel);
  v20 = sub_1A5247EB4();
  v21 = (*(*v20 + 112))(v20);

  if (v21)
  {
    v62[1] = v19;
    v22 = sub_1A5247EB4();
    v23 = (*(*v22 + 136))();

    sub_1A524BC74();
    sub_1A5248AD4();
    sub_1A41BB910();
    v25 = &v11[*(v24 + 36)];
    v26 = *(sub_1A5248A14() + 20);
    v27 = *MEMORY[0x1E697F468];
    v28 = sub_1A52494A4();
    (*(*(v28 - 8) + 104))(&v25[v26], v27, v28);
    __asm { FMOV            V0.2D, #25.0 }

    *v25 = _Q0;
    sub_1A3E42C88();
    *&v25[*(v34 + 36)] = 256;
    v35 = v77;
    *(v11 + 56) = v78;
    v36 = v80;
    *(v11 + 72) = v79;
    *(v11 + 88) = v36;
    *(v11 + 104) = v81;
    v37 = v76;
    *(v11 + 8) = v75;
    *(v11 + 24) = v37;
    *v11 = v23;
    *(v11 + 40) = v35;
    v38 = [objc_opt_self() blackColor];
    v39 = [v38 colorWithAlphaComponent_];

    v40 = sub_1A524B284();
    v41 = &v11[*(v64 + 36)];
    *v41 = v40;
    *(v41 + 8) = xmmword_1A5322920;
    *(v41 + 3) = 0x4020000000000000;
    v82 = *(a1 + 3);
    v83 = *(a1 + 40);
    v42 = swift_allocObject();
    v43 = *(a1 + 1);
    *(v42 + 16) = *a1;
    *(v42 + 32) = v43;
    *(v42 + 48) = *(a1 + 2);
    *(v42 + 64) = a1[6];
    sub_1A41C612C();
    sub_1A41C6134(&v82, v74, sub_1A41C619C);
    sub_1A41BB9A4();
    swift_unknownObjectRetain();
    v44 = v63;
    sub_1A524AA84();

    sub_1A41C2C70(v11, sub_1A41BB8E8);
    v45 = v66;
    v46 = v67;
    (*(v66 + 32))(v18, v44, v67);
    (*(v45 + 56))(v18, 0, 1, v46);
  }

  else
  {
    (*(v66 + 56))(v18, 1, 1, v67);
  }

  v47 = v18;
  type metadata accessor for SharedAlbumsInvitationsViewModel(0);
  sub_1A41B8384(&qword_1EB134318, type metadata accessor for SharedAlbumsInvitationsViewModel);
  v48 = sub_1A5247EB4();
  v49 = (*(*v48 + 120))(v48);

  if (v49)
  {
    v50 = sub_1A5247EB4();
    v51 = (*(*v50 + 144))(v50);

    *&v75 = v51;
    swift_getKeyPath();
    sub_1A41BBCB0(0);
    sub_1A41BBD04(0, &qword_1EB1343A0, sub_1A41BBD68);
    sub_1A41B8384(&qword_1EB1343B0, sub_1A41BBCB0);
    sub_1A41B8384(&qword_1EB1343B8, type metadata accessor for SharedAlbumInvitation);
    sub_1A41C5EA4();
    v52 = v65;
    sub_1A524B9B4();
    v53 = v69;
    v54 = v71;
    v55 = v70;
    (*(v69 + 32))(v71, v52, v70);
    v56 = 0;
  }

  else
  {
    v56 = 1;
    v54 = v71;
    v55 = v70;
    v53 = v69;
  }

  (*(v53 + 56))(v54, v56, 1, v55);
  v57 = v68;
  sub_1A41C5E3C(v47, v68, sub_1A41BB808);
  v58 = v72;
  sub_1A41C6134(v54, v72, sub_1A41BBB54);
  v59 = v73;
  sub_1A41C5E3C(v57, v73, sub_1A41BB808);
  sub_1A41BB7D4(0);
  sub_1A41C6134(v58, v59 + *(v60 + 48), sub_1A41BBB54);
  sub_1A41C2C70(v54, sub_1A41BBB54);
  sub_1A41C59E8(v47, sub_1A41BB808);
  sub_1A41C2C70(v58, sub_1A41BBB54);
  return sub_1A41C59E8(v57, sub_1A41BB808);
}

void sub_1A41B9090(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A41BBD68();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;

  v9 = sub_1A524C634();
  v10 = [objc_opt_self() systemImageNamed_];

  if (v10)
  {
    sub_1A41C27C0(sub_1A41C6230, v8, v30);
    v11 = v7 + *(v5 + 36);
    v12 = *(sub_1A5248A14() + 20);
    v13 = *MEMORY[0x1E697F468];
    v14 = sub_1A52494A4();
    (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
    __asm { FMOV            V0.2D, #25.0 }

    *v11 = _Q0;
    sub_1A3E42C88();
    *&v11[*(v20 + 36)] = 256;
    v21 = v30[7];
    v7[6] = v30[6];
    v7[7] = v21;
    v7[8] = v30[8];
    v22 = v30[3];
    v7[2] = v30[2];
    v7[3] = v22;
    v23 = v30[5];
    v7[4] = v30[4];
    v7[5] = v23;
    v24 = v30[1];
    *v7 = v30[0];
    v7[1] = v24;
    v25 = [objc_opt_self() blackColor];
    v26 = [v25 colorWithAlphaComponent_];

    v27 = sub_1A524B284();
    sub_1A41C6238(v7, a2);
    sub_1A41BBD04(0, &qword_1EB1343A0, sub_1A41BBD68);
    v29 = a2 + *(v28 + 36);
    *v29 = v27;
    *(v29 + 8) = xmmword_1A5322920;
    *(v29 + 24) = 0x4020000000000000;
  }

  else
  {
    __break(1u);
  }
}

id sub_1A41B92E4(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(PXSharedLibraryInvitationView) init];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 secondarySystemBackgroundColor];
  [v5 setBackgroundColor_];

  v7 = [a2 invitation];
  if (v7)
  {
    v8 = [v7 owner];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  [v5 setOwner_];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1A41B93E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A41C5690();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A41B944C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A41C5690();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A41B94B0()
{
  sub_1A41C5690();
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A41B94D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result & 1;
  return result;
}

void sub_1A41B95C0(uint64_t *a1)
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
  *(v3 + 40) = swift_getKeyPath();
  *(v4 + 48) = swift_getKeyPath();
  *(v4 + 32) = v1;

  sub_1A41C2940();
  sub_1A5245704();
}

id sub_1A41B9688()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32SharedLibraryInvitationViewModel_sharedLibraryStatusProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A41B96DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore32SharedLibraryInvitationViewModel_sharedLibraryStatusProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1A41B97D4()
{
  v0 = sub_1A41C2B38(0, &qword_1EB1343D8, type metadata accessor for SharedLibraryInvitationViewModel, sub_1A41C2940);
  MEMORY[0x1EEE9AC00](v0);
  type metadata accessor for SharedLibraryInvitationViewModel(0);
  sub_1A41C2940();
  sub_1A5245754();
}

uint64_t SharedLibraryInvitationViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32SharedLibraryInvitationViewModel__shouldDisplay;
  v2 = sub_1A41C2B38(0, &qword_1EB1343D8, type metadata accessor for SharedLibraryInvitationViewModel, sub_1A41C2940);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t SharedLibraryInvitationViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32SharedLibraryInvitationViewModel__shouldDisplay;
  v2 = sub_1A41C2B38(0, &qword_1EB1343D8, type metadata accessor for SharedLibraryInvitationViewModel, sub_1A41C2940);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1A41B9C0C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore32SharedLibraryInvitationViewModel_observable);
  *a1 = v2;
  return v2;
}

uint64_t sub_1A41B9C80@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharedLibraryInvitationViewModel(0);
  result = sub_1A52478D4();
  *a1 = result;
  return result;
}

uint64_t sub_1A41B9CEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result & 1;
  return result;
}

void sub_1A41B9DAC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  a3(KeyPath);

  sub_1A5245714();
}

void sub_1A41B9E68(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  a4(KeyPath);

  sub_1A5245724();
}

void sub_1A41B9EF4(uint64_t *a1)
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
  *(v3 + 40) = swift_getKeyPath();
  *(v4 + 48) = swift_getKeyPath();
  *(v4 + 32) = v1;

  sub_1A41C2A9C();
  sub_1A5245704();
}

void sub_1A41B9FC0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);

  free(v1);
}

uint64_t sub_1A41BA030()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A41BA0A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41BA144()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void (*sub_1A41BA1B4(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t sub_1A41BA258()
{
  swift_beginAccess();
  sub_1A41BB83C(0, &qword_1EB1343E8, sub_1A41BBCB0, MEMORY[0x1E695C070]);
  sub_1A52479B4();
  return swift_endAccess();
}

uint64_t sub_1A41BA2F0(uint64_t a1)
{
  sub_1A41BB83C(0, &qword_1EB1343F0, sub_1A41BBCB0, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1A41BB83C(0, &qword_1EB1343E8, sub_1A41BBCB0, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_1A41BA46C(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41BB83C(0, &qword_1EB1343F0, sub_1A41BBCB0, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__invitations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41BB83C(0, &qword_1EB1343E8, sub_1A41BBCB0, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

uint64_t sub_1A41BA638@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

void (*sub_1A41BA6EC(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t sub_1A41BA7B4(uint64_t a1)
{
  sub_1A41C2AD0(0, &qword_1EB134408, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134400, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_1A41BA934(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C2AD0(0, &qword_1EB134408, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__feedManager;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134400, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

void sub_1A41BAAE4()
{
  v6 = sub_1A52413E4();
  MEMORY[0x1EEE9AC00](v6);
  v5[11] = v5 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D9C6F4();
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1A52414C4();
  v5[2] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5[3] = v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A41C2B38(0, &qword_1EB134410, type metadata accessor for SharedAlbumsInvitationsViewModel, sub_1A41C2A9C);
  MEMORY[0x1EEE9AC00](v4);
  LOBYTE(v7) = 0;
  v8 = 1;
  type metadata accessor for SharedAlbumsInvitationsViewModel(0);
  sub_1A41C2A9C();
  sub_1A5245754();
}

void sub_1A41BB70C()
{
  if (!qword_1EB134320)
  {
    sub_1A41BB7A0(255);
    sub_1A41B8384(&qword_1EB1343C0, sub_1A41BB7A0);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134320);
    }
  }
}

void sub_1A41BB83C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A41BB910()
{
  if (!qword_1EB134350)
  {
    sub_1A41C3728(255, &qword_1EB134358, &type metadata for SharedLibraryInvitationView, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A3E42C88();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134350);
    }
  }
}

unint64_t sub_1A41BB9A4()
{
  result = qword_1EB134360;
  if (!qword_1EB134360)
  {
    sub_1A41BB8E8(255);
    sub_1A41C5F78(&qword_1EB134368, sub_1A41BB910, sub_1A41BBA54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134360);
  }

  return result;
}

unint64_t sub_1A41BBA54()
{
  result = qword_1EB134370;
  if (!qword_1EB134370)
  {
    sub_1A41C3728(255, &qword_1EB134358, &type metadata for SharedLibraryInvitationView, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A41BBB00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134370);
  }

  return result;
}

unint64_t sub_1A41BBB00()
{
  result = qword_1EB134378;
  if (!qword_1EB134378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134378);
  }

  return result;
}

void sub_1A41BBB88()
{
  if (!qword_1EB134390)
  {
    sub_1A41BBCB0(255);
    type metadata accessor for SharedAlbumInvitation(255);
    sub_1A41BBD04(255, &qword_1EB1343A0, sub_1A41BBD68);
    sub_1A41B8384(&qword_1EB1343B0, sub_1A41BBCB0);
    sub_1A41B8384(&qword_1EB1343B8, type metadata accessor for SharedAlbumInvitation);
    v0 = sub_1A524B9D4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134390);
    }
  }
}

void sub_1A41BBD04(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

void sub_1A41BBD68()
{
  if (!qword_1EB1343A8)
  {
    sub_1A3E42C88();
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1343A8);
    }
  }
}

void sub_1A41BBDC8(void *a1)
{
  swift_allocObject();
  swift_beginAccess();
  sub_1A3C52C70(0, &qword_1EB126AC0);
  v2 = a1;
  sub_1A52479A4();
  swift_endAccess();
  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A41BC120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + *a1);
  v8 = swift_allocObject();
  swift_weakInit();
  v10[4] = a3;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3DC72D4;
  v10[3] = a4;
  v9 = _Block_copy(v10);

  [v7 performChanges_];
  _Block_release(v9);
}

uint64_t SharedAlbumsInvitationsViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__shouldDisplay;
  v2 = sub_1A41C2B38(0, &qword_1EB134410, type metadata accessor for SharedAlbumsInvitationsViewModel, sub_1A41C2A9C);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__invitations;
  sub_1A41BB83C(0, &qword_1EB1343E8, sub_1A41BBCB0, MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__feedManager;
  sub_1A41C2AD0(0, &qword_1EB134400, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C070]);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SharedAlbumsInvitationsViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__shouldDisplay;
  v2 = sub_1A41C2B38(0, &qword_1EB134410, type metadata accessor for SharedAlbumsInvitationsViewModel, sub_1A41C2A9C);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__invitations;
  sub_1A41BB83C(0, &qword_1EB1343E8, sub_1A41BBCB0, MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__feedManager;
  sub_1A41C2AD0(0, &qword_1EB134400, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C070]);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1A41BC580@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel_observable);
  *a1 = v2;
  return v2;
}

uint64_t sub_1A41BC5F4@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharedAlbumsInvitationsViewModel(0);
  result = sub_1A52478D4();
  *a1 = result;
  return result;
}

void sub_1A41BC660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), void (*a6)(void))
{
  a5(0);
  a6();

  sub_1A5245C54();
}

uint64_t sub_1A41BC6E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

uint64_t (*sub_1A41BC798(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F60710;
}

uint64_t sub_1A41BC860(uint64_t a1)
{
  sub_1A41C2AD0(0, &unk_1EB134420, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134418, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_1A41BC9E0(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C2AD0(0, &unk_1EB134420, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__sharedAlbum;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134418, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41BCB90;
}

uint64_t sub_1A41BCB94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A41BCC08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A41BCCBC()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void (*sub_1A41BCD38(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t sub_1A41BCDF8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1A41C57B0(0, a2, a3, MEMORY[0x1E695C070]);
  sub_1A52479B4();
  return swift_endAccess();
}

uint64_t sub_1A41BCEAC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  sub_1A41C57B0(0, a2, a3, MEMORY[0x1E695C060]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v8);
  (*(v10 + 16))(&v14 - v12, a1, v9, v11);
  swift_beginAccess();
  sub_1A41C57B0(0, a5, a3, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v10 + 8))(a1, v9);
}

uint64_t (*sub_1A41BD00C(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C57B0(0, &qword_1EB134430, MEMORY[0x1E69E6158], MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__albumTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C57B0(0, &qword_1EB1249C8, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

uint64_t sub_1A41BD1C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

void (*sub_1A41BD274(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t sub_1A41BD33C(uint64_t a1)
{
  sub_1A41C2AD0(0, &unk_1EB134440, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134438, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_1A41BD4BC(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C2AD0(0, &unk_1EB134440, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__inviter;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134438, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

uint64_t sub_1A41BD680@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A41BD73C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t (*sub_1A41BD820(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C57B0(0, &qword_1EB134450, MEMORY[0x1E69E6370], MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__ownerIsVetted;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C57B0(0, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

uint64_t sub_1A41BD9D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41BDA98()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void (*sub_1A41BDB04(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t sub_1A41BDBCC(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1A41C2AD0(0, a2, a3, a4, MEMORY[0x1E695C070]);
  sub_1A52479B4();
  return swift_endAccess();
}

uint64_t sub_1A41BDC64(uint64_t a1)
{
  sub_1A41C2AD0(0, &qword_1EB134460, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134458, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_1A41BDDE4(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C2AD0(0, &qword_1EB134460, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__avatarImage;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134458, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

uint64_t sub_1A41BDFA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41BE064()
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void (*sub_1A41BE0D0(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t (*sub_1A41BE1B4(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C57B0(0, &qword_1EB134450, MEMORY[0x1E69E6370], MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__stateChange;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C57B0(0, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

void sub_1A41BE354(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1A52479C4();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1A52479C4();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t sub_1A41BE4BC()
{
  v1 = (*(*v0 + 128))();
  v2 = [v1 uuid];

  sub_1A524C674();
  sub_1A524C794();
}

uint64_t sub_1A41BE560()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__sharedAlbum;
  v2 = MEMORY[0x1E695C070];
  sub_1A41C2AD0(0, &qword_1EB134418, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__albumTitle;
  v5 = MEMORY[0x1E695C070];
  sub_1A41C57B0(0, &qword_1EB1249C8, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__inviter;
  sub_1A41C2AD0(0, &qword_1EB134438, &qword_1EB12C1B0, off_1E771F698, v2);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__ownerIsVetted;
  sub_1A41C57B0(0, &qword_1EB128B30, MEMORY[0x1E69E6370], v5);
  v11 = v10;
  v12 = *(*(v10 - 8) + 8);
  v12(v0 + v9, v10);
  v13 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__avatarImage;
  sub_1A41C2AD0(0, &qword_1EB134458, &qword_1EB126630, 0x1E69DCAB8, v2);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v12(v0 + OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__stateChange, v11);

  return swift_deallocClassInstance();
}

uint64_t sub_1A41BE7D0()
{
  sub_1A524EC94();
  (*(*v0 + 424))(v2);
  return sub_1A524ECE4();
}

uint64_t sub_1A41BE8D0()
{
  sub_1A524EC94();
  (*(**v0 + 424))(v2);
  return sub_1A524ECE4();
}

uint64_t sub_1A41BE938(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*(**a1 + 128))();
  v4 = [v3 uuid];

  v5 = sub_1A524C674();
  v7 = v6;

  v8 = (*(*v2 + 128))();
  v9 = [v8 uuid];

  v10 = sub_1A524C674();
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1A524EAB4();
  }

  return v14 & 1;
}

uint64_t sub_1A41BEA60@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SharedAlbumInvitation(0);
  result = sub_1A52478D4();
  *a1 = result;
  return result;
}

uint64_t sub_1A41BEAA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A41C2CD0(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A41C4110(0);
  v8 = v7;
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation);
  v9 = *sub_1A5247EB4();
  v10 = (*(v9 + 368))();

  if ((v10 & 1) == 0)
  {
    *v6 = sub_1A524BC74();
    v6[1] = v13;
    sub_1A41C597C(0, &qword_1EB134640, sub_1A41C2DC0);
    v15 = v6 + *(v14 + 44);
    *v15 = sub_1A5249584();
    *(v15 + 1) = 0;
    v15[16] = 1;
    sub_1A41C597C(0, &unk_1EB134648, sub_1A41C2E54);
    sub_1A41BEFA4(v2, &v15[*(v16 + 44)]);
  }

  v11 = *(v18 + 56);

  return v11(a1, 1, 1, v8);
}

void sub_1A41BEFA4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  sub_1A41C3E14(0);
  v14 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v12[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  sub_1A41C3320();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v16 = &v12[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v13 = sub_1A524B9A4();
  v19 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v17 = &v12[-v11];
  v21 = sub_1A5249314();
  v22[544] = 1;
  sub_1A41BF6F0(a1, v22);
}

void sub_1A41BF6F0(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_1A524B554();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 24);
  v56 = a1;
  v83 = v7;
  sub_1A41C2AD0(0, &qword_1EB134470, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A524B524();
  (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
  v63 = sub_1A524B5C4();

  (*(v4 + 8))(v6, v3);
  sub_1A524BC74();
  sub_1A52481F4();
  LOBYTE(v83) = 1;
  v66 = v69;
  v67 = v70;
  v68 = v71;
  v62 = sub_1A5249584();
  v65 = 1;
  *&v83 = sub_1A3C38BD4();
  *(&v83 + 1) = v8;
  v57 = sub_1A3D5F9DC();
  v9 = sub_1A524DFA4();
  v11 = v10;

  *&v77 = v9;
  *(&v77 + 1) = v11;
  v12 = sub_1A524A464();
  v14 = v13;
  LOBYTE(v11) = v15;
  sub_1A524B3D4();
  v16 = sub_1A524A364();
  v18 = v17;
  LOBYTE(v4) = v19;

  sub_1A3E04DF4(v12, v14, v11 & 1);

  sub_1A524A1A4();
  v20 = sub_1A524A344();
  v22 = v21;
  LOBYTE(v11) = v23;
  sub_1A3E04DF4(v16, v18, v4 & 1);

  sub_1A524A244();
  v24 = sub_1A524A3C4();
  v59 = v25;
  v60 = v24;
  v58 = v26;
  v61 = v27;

  sub_1A3E04DF4(v20, v22, v11 & 1);

  v28 = sub_1A3C38BD4();
  v55[2] = v29;
  v55[3] = v28;
  sub_1A41BB83C(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1A52FC9F0;
  v55[1] = *v56;
  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation);
  v31 = sub_1A5247EB4();
  v32 = (*(*v31 + 224))(v31);

  v33 = [v32 displayNameWithAddressAppended_];

  v34 = sub_1A524C674();
  v36 = v35;

  *(v30 + 56) = MEMORY[0x1E69E6158];
  v37 = sub_1A3D710E8();
  *(v30 + 64) = v37;
  *(v30 + 32) = v34;
  *(v30 + 40) = v36;
  v38 = sub_1A5247EB4();
  v39 = (*(*v38 + 176))(v38);
  v41 = v40;

  *(v30 + 96) = MEMORY[0x1E69E6158];
  *(v30 + 104) = v37;
  *(v30 + 72) = v39;
  *(v30 + 80) = v41;
  v42 = sub_1A524C6B4();
  v44 = v43;

  *&v83 = v42;
  *(&v83 + 1) = v44;
  v45 = sub_1A524A464();
  v47 = v46;
  LOBYTE(v37) = v48;
  sub_1A524A0E4();
  v49 = sub_1A524A3C4();
  v51 = v50;
  LOBYTE(v36) = v52;
  v54 = v53;

  sub_1A3E04DF4(v45, v47, v37 & 1);

  sub_1A524BC04();
  sub_1A52481F4();
  *&v77 = v49;
  *(&v77 + 1) = v51;
  LOBYTE(v78) = v36 & 1;
  *(&v78 + 1) = v72[0];
  DWORD1(v78) = *(v72 + 3);
  *(&v78 + 1) = v54;
  v79 = v73;
  v80 = v74;
  v81 = v75;
  v92 = v78;
  v91 = v77;
  v95 = v75;
  v94 = v74;
  v93 = v73;
  v76 = v58 & 1;
  v82 = 256;
  v96 = 256;
  *&v83 = v49;
  *(&v83 + 1) = v51;
  v84 = v36 & 1;
  *&v85[3] = *(v72 + 3);
  *v85 = v72[0];
  v86 = v54;
  v88 = v74;
  v89 = v75;
  v87 = v73;
  v90 = 256;
  sub_1A3E75E68(v60, v59, v58 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41C0258@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v124 = a2;
  sub_1A41C3C98(0);
  v122 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v109[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A41C4180(0, &qword_1EB1345A0, sub_1A41C3C98, sub_1A41C3D74);
  v123 = v6;
  v128 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v121 = &v109[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v126 = &v109[-v9];
  sub_1A41C34F4(0);
  v112 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v109[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A41C4180(0, &qword_1EB134528, sub_1A41C34F4, sub_1A41C37E8);
  v120 = v13;
  v127 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v119 = &v109[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v15);
  v125 = &v109[-v16];
  v131 = sub_1A3C38BD4();
  v132 = v17;
  v18 = swift_allocObject();
  v19 = a1[7];
  v18[7] = a1[6];
  v18[8] = v19;
  v18[9] = a1[8];
  v20 = a1[3];
  v18[3] = a1[2];
  v18[4] = v20;
  v21 = a1[5];
  v18[5] = a1[4];
  v18[6] = v21;
  v22 = a1[1];
  v18[1] = *a1;
  v18[2] = v22;
  sub_1A41C43E4(a1, v130);
  v118 = sub_1A3D5F9DC();
  sub_1A524B754();
  v23 = sub_1A524A054();
  sub_1A5247BC4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1A41C369C();
  v117 = v32;
  v33 = &v12[*(v32 + 36)];
  *v33 = v23;
  *(v33 + 1) = v25;
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v33[40] = 0;
  v34 = sub_1A524A0C4();
  sub_1A5247BC4();
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v42 = v41;
  sub_1A41C3674(0);
  v115 = v43;
  v44 = &v12[*(v43 + 36)];
  *v44 = v34;
  *(v44 + 1) = v36;
  *(v44 + 2) = v38;
  *(v44 + 3) = v40;
  *(v44 + 4) = v42;
  v44[40] = 0;
  sub_1A41BBD04(0, &qword_1EB134550, sub_1A41C3674);
  v114 = v45;
  *&v12[*(v45 + 36)] = 256;
  v46 = sub_1A524B3C4();
  v47 = sub_1A524A064();
  sub_1A41C35BC();
  v116 = v48;
  v49 = &v12[*(v48 + 36)];
  *v49 = v46;
  v49[8] = v47;
  v50 = *(a1 + 16);
  sub_1A41C30BC(0, &qword_1EB134540, sub_1A41C35BC, sub_1A3E42C88);
  v113 = v51;
  v52 = &v12[*(v51 + 36)];
  v111 = sub_1A5248A14();
  v53 = *(v111 + 20);
  v110 = *MEMORY[0x1E697F468];
  v54 = v110;
  v55 = sub_1A52494A4();
  v56 = *(*(v55 - 8) + 104);
  v56(&v52[v53], v54, v55);
  *v52 = v50;
  *(v52 + 1) = v50;
  sub_1A3E42C88();
  v58 = v57;
  *&v52[*(v57 + 36)] = 256;
  v59 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  sub_1A41C3598(0);
  v62 = &v12[*(v61 + 36)];
  *v62 = KeyPath;
  v62[1] = v59;
  v63 = sub_1A524A0E4();
  v64 = swift_getKeyPath();
  v65 = &v12[*(v112 + 36)];
  *v65 = v64;
  v65[1] = v63;
  sub_1A524A1A4();
  sub_1A41C37E8();
  v66 = v125;
  sub_1A524A8F4();
  sub_1A41C2C70(v12, sub_1A41C34F4);
  v131 = sub_1A3C38BD4();
  v132 = v67;
  v68 = swift_allocObject();
  v69 = a1[7];
  v68[7] = a1[6];
  v68[8] = v69;
  v68[9] = a1[8];
  v70 = a1[3];
  v68[3] = a1[2];
  v68[4] = v70;
  v71 = a1[5];
  v68[5] = a1[4];
  v68[6] = v71;
  v72 = a1[1];
  v68[1] = *a1;
  v68[2] = v72;
  sub_1A41C43E4(a1, v130);
  sub_1A524B754();
  LOBYTE(v12) = sub_1A524A054();
  sub_1A5247BC4();
  v73 = &v5[*(v117 + 36)];
  *v73 = v12;
  *(v73 + 1) = v74;
  *(v73 + 2) = v75;
  *(v73 + 3) = v76;
  *(v73 + 4) = v77;
  v73[40] = 0;
  LOBYTE(v12) = sub_1A524A0C4();
  sub_1A5247BC4();
  v78 = &v5[*(v115 + 36)];
  *v78 = v12;
  *(v78 + 1) = v79;
  *(v78 + 2) = v80;
  *(v78 + 3) = v81;
  *(v78 + 4) = v82;
  v78[40] = 0;
  *&v5[*(v114 + 36)] = 256;
  v83 = [objc_opt_self() secondarySystemFillColor];
  v84 = sub_1A524B284();
  v85 = sub_1A524A064();
  v86 = &v5[*(v116 + 36)];
  *v86 = v84;
  v86[8] = v85;
  v87 = &v5[*(v113 + 36)];
  v56(&v87[*(v111 + 20)], v110, v55);
  *v87 = v50;
  *(v87 + 1) = v50;
  *&v87[*(v58 + 36)] = 256;
  v88 = sub_1A524A0E4();
  v89 = swift_getKeyPath();
  v90 = &v5[*(v122 + 36)];
  *v90 = v89;
  v90[1] = v88;
  sub_1A524A1A4();
  sub_1A41C3D74();
  v91 = v126;
  sub_1A524A8F4();
  sub_1A41C2C70(v5, sub_1A41C3C98);
  v130[0] = 1;
  v92 = *(v127 + 16);
  v93 = v119;
  v94 = v120;
  v92(v119, v66, v120);
  LOBYTE(v131) = 1;
  v95 = *(v128 + 16);
  v96 = v121;
  v97 = v123;
  v95(v121, v91, v123);
  v129 = 1;
  v98 = v130[0];
  v99 = v124;
  *v124 = 0;
  *(v99 + 8) = v98;
  sub_1A41C33E8();
  v101 = v100;
  v92(v99 + v100[12], v93, v94);
  v102 = v99 + v101[16];
  v103 = v131;
  *v102 = 0;
  v102[8] = v103;
  v95(v99 + v101[20], v96, v97);
  v104 = v99 + v101[24];
  v105 = v129;
  *v104 = 0;
  v104[8] = v105;
  v106 = *(v128 + 8);
  v106(v126, v97);
  v107 = *(v127 + 8);
  v107(v125, v94);
  v106(v96, v97);
  return (v107)(v93, v94);
}

void sub_1A41C0BE4(char a1, id a2)
{
  if (a1)
  {
    v4 = [a2 photoLibrary];
    if (v4)
    {
      v5 = v4;
      v6 = objc_opt_self();
      v7 = [v6 sharedAlbumsEnabledForPhotoLibrary_];

      if (!v7)
      {
        v37 = v2[5];
        LOBYTE(aBlock) = 0;
        v17 = MEMORY[0x1E6981790];
        sub_1A41C57B0(0, &unk_1EB134658, &type metadata for SharedAlbumInvitationView.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
        sub_1A524B6B4();
        v37 = *(v2 + 40);
        LOBYTE(aBlock) = 1;
        sub_1A41C57B0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v17);
        sub_1A524B6B4();
        return;
      }

      v8 = [a2 photoLibrary];
      if (v8)
      {
        v9 = v8;
        v10 = [v6 hasReachedLimitOfAcceptedSharedAlbumsInPhotoLibrary_];

        if ((v10 & 1) == 0)
        {
          v18 = swift_allocObject();
          v19 = v2[7];
          v18[7] = v2[6];
          v18[8] = v19;
          v18[9] = v2[8];
          v20 = v2[3];
          v18[3] = v2[2];
          v18[4] = v20;
          v21 = v2[5];
          v18[5] = v2[4];
          v18[6] = v21;
          v22 = v2[1];
          v18[1] = *v2;
          v18[2] = v22;
          v42 = sub_1A41C441C;
          v43 = v18;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v40 = sub_1A3D6084C;
          v41 = &block_descriptor_60_3;
          v23 = _Block_copy(&aBlock);
          sub_1A41C43E4(v2, &v37);

          [v6 acceptInvitationToSharedAlbum:a2 completionHandler:v23];
          _Block_release(v23);
          type metadata accessor for SharedAlbumInvitation(0);
          sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation);
          v24 = sub_1A5247EB4();
          v25 = *sub_1A5247EB4();
          v26 = (*(v25 + 368))();

          (*(*v24 + 376))((v26 & 1) == 0);

          return;
        }

        v11 = v2;
        PHCollection.title.getter();
        if (v12)
        {
          v13 = sub_1A524C634();
        }

        else
        {
          v13 = 0;
        }

        v27 = [objc_opt_self() errorForReachingMaxSubscriptionLimitWithAlbumTitle_];

        if (v27)
        {
          sub_1A41BB83C(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1A52F8E10;
          v29 = sub_1A5240B74();
          *(v28 + 56) = sub_1A3C52C70(0, &qword_1EB12C740);
          *(v28 + 64) = sub_1A3C3A220(&unk_1EB134668, &qword_1EB12C740);
          *(v28 + 32) = v29;
          sub_1A3C52C70(0, &qword_1EB12B140);
          v30 = sub_1A524DED4();
          sub_1A524D264();
          sub_1A5246DE4();

          v37 = v11[5];
          LOBYTE(aBlock) = 1;
          v31 = MEMORY[0x1E6981790];
          sub_1A41C57B0(0, &unk_1EB134658, &type metadata for SharedAlbumInvitationView.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
          sub_1A524B6B4();
          v37 = *(v11 + 40);
          LOBYTE(aBlock) = 1;
          sub_1A41C57B0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v31);
          sub_1A524B6B4();
          swift_getErrorValue();
          v32 = sub_1A524EBE4();
          v37 = *(v11 + 56);
          v33 = *(v11 + 9);
          aBlock = v37;
          v44 = v33;
          v38 = v33;
          v36[2] = v32;
          v36[3] = v34;
          sub_1A3F30668(&aBlock, v36);
          v35 = MEMORY[0x1E69E6158];
          sub_1A41C56E4(&v44, v36, &qword_1EB134678, &unk_1EB134680, MEMORY[0x1E69E6158]);
          sub_1A41C57B0(0, &unk_1EB13A670, v35, v31);
          sub_1A524B6B4();

          sub_1A3C651B8(&aBlock);
          sub_1A41C46C4(&v44);
          return;
        }

LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  [objc_opt_self() declineInvitationToSharedAlbum:a2 completionHandler:0];
  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation);
  v14 = sub_1A5247EB4();
  v15 = *sub_1A5247EB4();
  v16 = (*(v15 + 368))();

  (*(*v14 + 376))((v16 & 1) == 0);
}

void sub_1A41C1334(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A41C3728(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v59 = v4;
  v61 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v51 = &v50 - v5;
  sub_1A41C3F80();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v60 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v50 - v9;
  sub_1A3C38BD4();
  sub_1A41BB83C(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F8E10;
  v11 = *(a1 + 8);
  v56 = *a1;
  v55 = v11;
  v54 = *(a1 + 16);
  v53 = type metadata accessor for SharedAlbumInvitation(0);
  v52 = sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation);
  v12 = sub_1A5247EB4();
  v13 = (*(*v12 + 224))(v12);

  v14 = [v13 displayAddress];

  v15 = sub_1A524C674();
  v17 = v16;

  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1A3D710E8();
  *(v10 + 32) = v15;
  *(v10 + 40) = v17;
  v18 = sub_1A524C6B4();
  v20 = v19;

  v62[0] = v18;
  v62[1] = v20;
  v50 = sub_1A3D5F9DC();
  v21 = sub_1A524A464();
  v23 = v22;
  v25 = v24;
  v26 = [objc_opt_self() secondaryLabelColor];
  sub_1A524B284();
  v27 = sub_1A524A364();
  v29 = v28;
  v57 = v30;
  v32 = v31;

  v33 = v25 & 1;
  v34 = v58;
  sub_1A3E04DF4(v21, v23, v33);
  v35 = v59;

  v36 = *sub_1A5247EB4();
  LOBYTE(v11) = (*(v36 + 272))();

  v37 = 1;
  if ((v11 & 1) == 0)
  {
    v62[18] = sub_1A3C38BD4();
    v62[19] = v38;
    v39 = swift_allocObject();
    v40 = *(a1 + 112);
    v39[7] = *(a1 + 96);
    v39[8] = v40;
    v39[9] = *(a1 + 128);
    v41 = *(a1 + 48);
    v39[3] = *(a1 + 32);
    v39[4] = v41;
    v42 = *(a1 + 80);
    v39[5] = *(a1 + 64);
    v39[6] = v42;
    v43 = *(a1 + 16);
    v39[1] = *a1;
    v39[2] = v43;
    sub_1A41C43E4(a1, v62);
    v44 = v51;
    sub_1A524B754();
    (*(v61 + 32))(v34, v44, v35);
    v37 = 0;
  }

  (*(v61 + 56))(v34, v37, 1, v35);
  v45 = v60;
  sub_1A41C6134(v34, v60, sub_1A41C3F80);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v27;
  *(a2 + 24) = v29;
  v46 = v57 & 1;
  *(a2 + 32) = v57 & 1;
  *(a2 + 40) = v32;
  sub_1A41C3EFC();
  v48 = v47;
  sub_1A41C6134(v45, a2 + *(v47 + 64), sub_1A41C3F80);
  v49 = a2 + *(v48 + 80);
  *v49 = 0;
  *(v49 + 8) = 1;
  sub_1A3E75E68(v27, v29, v46);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41C194C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524B274();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v52 - v9;
  sub_1A41BB83C(0, &qword_1EB1347B0, MEMORY[0x1E697D628], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v52 - v12;
  v57 = *(a1 + 80);
  sub_1A41C57B0(0, &unk_1EB134658, &type metadata for SharedAlbumInvitationView.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v56)
  {
    if (v56 == 1)
    {
      v57 = *(a1 + 56);
      v58 = *(a1 + 72);
      sub_1A41C57B0(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      v57 = v56;
      sub_1A3D5F9DC();
      sub_1A524A464();
      (*(v5 + 56))(v13, 1, 1, v4);
      return sub_1A524B224();
    }

    *&v57 = sub_1A3C38BD4();
    *(&v57 + 1) = v38;
    sub_1A3D5F9DC();
    v55 = sub_1A524A464();
    v54 = v39;
    v53 = v40;
    *&v57 = sub_1A3C38BD4();
    *(&v57 + 1) = v41;
    v42 = sub_1A524A464();
    v44 = v43;
    v46 = v45;
    v47 = swift_allocObject();
    v48 = *(a1 + 112);
    v47[7] = *(a1 + 96);
    v47[8] = v48;
    v47[9] = *(a1 + 128);
    v49 = *(a1 + 48);
    v47[3] = *(a1 + 32);
    v47[4] = v49;
    v50 = *(a1 + 80);
    v47[5] = *(a1 + 64);
    v47[6] = v50;
    v51 = *(a1 + 16);
    v47[1] = *a1;
    v47[2] = v51;
    sub_1A41C43E4(a1, &v57);
    sub_1A524B244();

    sub_1A3E04DF4(v42, v44, v46 & 1);

    sub_1A524B254();
  }

  else
  {
    v53 = sub_1A3C38BD4();
    v52[1] = v15;
    sub_1A41BB83C(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A52FC9F0;
    v55 = a2;
    type metadata accessor for SharedAlbumInvitation(0);
    sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation);
    v17 = sub_1A5247EB4();
    v18 = (*(*v17 + 224))(v17);
    v54 = v7;
    v19 = v18;

    v20 = [v19 displayNameWithAddressAppended_];

    v21 = sub_1A524C674();
    v52[0] = v10;
    v22 = v21;
    v24 = v23;

    *(v16 + 56) = MEMORY[0x1E69E6158];
    v25 = sub_1A3D710E8();
    *(v16 + 64) = v25;
    *(v16 + 32) = v22;
    *(v16 + 40) = v24;
    v26 = sub_1A5247EB4();
    v27 = (*(*v26 + 176))(v26);
    v29 = v28;

    *(v16 + 96) = MEMORY[0x1E69E6158];
    *(v16 + 104) = v25;
    *(v16 + 72) = v27;
    *(v16 + 80) = v29;
    v30 = sub_1A524C6B4();
    v32 = v31;

    *&v57 = v30;
    *(&v57 + 1) = v32;
    sub_1A3D5F9DC();
    sub_1A524A464();
    *&v57 = sub_1A3C38BD4();
    *(&v57 + 1) = v33;
    v34 = sub_1A524A464();
    v36 = v35;
    LOBYTE(v29) = v37;
    sub_1A524B264();
    sub_1A3E04DF4(v34, v36, v29 & 1);

    sub_1A524B254();
  }

  return sub_1A524B234();
}

id sub_1A41C2084()
{
  v0 = objc_opt_self();

  return [v0 navigateToDestination:4 completion:0];
}

void sub_1A41C20C4(uint64_t a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 96);
  v31 = v6;
  v32 = *(a1 + 104);
  if (v32 == 1)
  {
    v7 = v6;
  }

  else
  {

    sub_1A524D254();
    v8 = sub_1A524A014();
    sub_1A5246DF4();

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A41C5754(&v31, &qword_1EB124830, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0]);
    (*(v3 + 8))(v5, v2);
    v7 = v29[0];
  }

  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation);
  v9 = sub_1A5247EB4();
  v10 = (*(*v9 + 224))(v9);

  v11 = [v10 displayAddress];

  if (!v11)
  {
    sub_1A524C674();
    v11 = sub_1A524C634();
  }

  v13 = PXDisplayCollectionDetailedCountsMake(v12);
  v15 = v14;
  v28 = objc_opt_self();
  v16 = sub_1A5247EB4();
  v17 = (*(*v16 + 224))(v16);

  v18 = [v17 firstName];

  v19 = sub_1A5247EB4();
  v20 = (*(*v19 + 224))(v19);

  v21 = [v20 lastName];

  v22 = swift_allocObject();
  v23 = *(a1 + 112);
  v22[7] = *(a1 + 96);
  v22[8] = v23;
  v22[9] = *(a1 + 128);
  v24 = *(a1 + 48);
  v22[3] = *(a1 + 32);
  v22[4] = v24;
  v25 = *(a1 + 80);
  v22[5] = *(a1 + 64);
  v22[6] = v25;
  v26 = *(a1 + 16);
  v22[1] = *a1;
  v22[2] = v26;
  aBlock[4] = sub_1A41C5800;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A41C254C;
  aBlock[3] = &block_descriptor_110_1;
  v27 = _Block_copy(aBlock);
  sub_1A41C43E4(a1, v29);

  [v28 requestPersonImageWithTargetSize:0 displayScale:v11 isRTL:0 matchingEmail:v18 orPhone:v21 withFirstName:1 lastName:v13 prefersPhotosImage:v15 withCompletion:{v7, v27}];
  _Block_release(v27);
}

void sub_1A41C254C(uint64_t a1, void *a2, void *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = *(a1 + 32);

  v18 = a2;
  v16 = a3;
  v17 = a4;
  v15(a2, a3, a4, a5, a6, a7, a8);
}

void sub_1A41C2678(uint64_t a1, void *a2)
{
  v3 = *(*a1 + 136);
  v4 = v3();
  v5 = [v4 invitation];

  if (v5)
  {
    v6 = v3();
    v7 = sub_1A524C634();
    PXSharedLibraryViewInvitation(v6, v5, 0, a2, v7, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB12B140);
    v7 = sub_1A524DED4();
    sub_1A524D264();
    sub_1A5246DE4();
  }
}

double sub_1A41C27C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1A3C52C70(0, &qword_1EB126630);
  sub_1A524B694();
  sub_1A524B694();
  sub_1A524B694();
  sub_1A524B694();
  KeyPath = swift_getKeyPath();
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 17) = v8;
  *(a3 + 20) = *(&v8 + 3);
  *(a3 + 24) = v8;
  *(a3 + 40) = v8;
  *(a3 + 41) = 0;
  *(a3 + 44) = 0;
  *(a3 + 48) = *(&v8 + 1);
  *(a3 + 56) = v8;
  *(a3 + 72) = v9;
  *(a3 + 80) = v8;
  *(a3 + 84) = *&v11[3];
  *(a3 + 81) = *v11;
  *(a3 + 88) = *(&v8 + 1);
  *(a3 + 96) = KeyPath;
  *(a3 + 104) = 0;
  *(a3 + 105) = *v10;
  *(a3 + 108) = *&v10[3];
  result = 60.0;
  *(a3 + 112) = xmmword_1A5322930;
  *(a3 + 128) = xmmword_1A5322940;
  return result;
}

uint64_t sub_1A41C2974()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 192))(result);
  }

  return result;
}

uint64_t sub_1A41C29E8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*(*result + 136))(result);
    ShouldDisplayInvitation = PXSharedLibraryShouldDisplayInvitation(v2);

    (*(*v1 + 120))(ShouldDisplayInvitation);
  }

  return result;
}

void sub_1A41C2AD0(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_1A41C2B38(uint64_t a1, uint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  result = *a2;
  if (!*a2)
  {
    a3(255);
    a4();
    sub_1A5245764();
  }

  return result;
}

uint64_t sub_1A41C2BB0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = (*(*result + 192))(result);
    v3 = [v2 numberOfInvitationsReceived];

    (*(*v1 + 128))(v3 > 0);
  }

  return result;
}

uint64_t sub_1A41C2C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A41C2D2C()
{
  if (!qword_1EB134488)
  {
    sub_1A41C2DC0();
    sub_1A41B8384(&qword_1EB1345F8, sub_1A41C2DC0);
    v0 = sub_1A524B8B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134488);
    }
  }
}

void sub_1A41C2DC0()
{
  if (!qword_1EB134490)
  {
    sub_1A41C2E54(255);
    sub_1A41B8384(&qword_1EB1345F0, sub_1A41C2E54);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134490);
    }
  }
}

void sub_1A41C2E88()
{
  if (!qword_1EB1344A0)
  {
    sub_1A41C2F1C(255);
    sub_1A524B9A4();
    sub_1A41C3320();
    sub_1A41C3E14(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1344A0);
    }
  }
}

void sub_1A41C2F44()
{
  if (!qword_1EB1344B0)
  {
    sub_1A41C2FD8(255);
    sub_1A41B8384(&qword_1EB134508, sub_1A41C2FD8);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1344B0);
    }
  }
}

void sub_1A41C3040(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A41C30BC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A41C3130()
{
  if (!qword_1EB1344D0)
  {
    sub_1A41C31C4(255);
    sub_1A41B8384(&qword_1EB134500, sub_1A41C31C4);
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1344D0);
    }
  }
}

void sub_1A41C31F8()
{
  if (!qword_1EB1344E0)
  {
    sub_1A41C3728(255, &qword_1EB128710, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    sub_1A41C3294();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1344E0);
    }
  }
}

void sub_1A41C3294()
{
  if (!qword_1EB1344F0)
  {
    sub_1A41C3728(255, &qword_1EB140F90, MEMORY[0x1E6981148], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1344F0);
    }
  }
}

void sub_1A41C3320()
{
  if (!qword_1EB134510)
  {
    sub_1A41C33B4(255);
    sub_1A41B8384(&qword_1EB1345B8, sub_1A41C33B4);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134510);
    }
  }
}

void sub_1A41C33E8()
{
  if (!qword_1EB134520)
  {
    sub_1A41C4180(255, &qword_1EB134528, sub_1A41C34F4, sub_1A41C37E8);
    sub_1A41C4180(255, &qword_1EB1345A0, sub_1A41C3C98, sub_1A41C3D74);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB134520);
    }
  }
}

void sub_1A41C3514(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A41C377C(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A41C35BC()
{
  if (!qword_1EB134548)
  {
    sub_1A41BBD04(255, &qword_1EB134550, sub_1A41C3674);
    sub_1A41C3728(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134548);
    }
  }
}

void sub_1A41C369C()
{
  if (!qword_1EB134560)
  {
    sub_1A41C3728(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134560);
    }
  }
}

void sub_1A41C3728(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A41C377C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A41C57B0(255, a3, a4, MEMORY[0x1E69E6720]);
    v5 = sub_1A5249F44();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1A41C37E8()
{
  result = qword_1EB134568;
  if (!qword_1EB134568)
  {
    sub_1A41C34F4(255);
    sub_1A41C38B8(&qword_1EB134570, sub_1A41C3598, sub_1A41C395C);
    sub_1A41C3C48(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134568);
  }

  return result;
}

uint64_t sub_1A41C38B8(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A41C3C48(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41C395C()
{
  result = qword_1EB134578;
  if (!qword_1EB134578)
  {
    sub_1A41C30BC(255, &qword_1EB134540, sub_1A41C35BC, sub_1A3E42C88);
    sub_1A41C3A3C();
    sub_1A41B8384(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134578);
  }

  return result;
}

unint64_t sub_1A41C3A3C()
{
  result = qword_1EB134580;
  if (!qword_1EB134580)
  {
    sub_1A41C35BC();
    sub_1A41C3ABC();
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134580);
  }

  return result;
}

unint64_t sub_1A41C3ABC()
{
  result = qword_1EB134588;
  if (!qword_1EB134588)
  {
    sub_1A41BBD04(255, &qword_1EB134550, sub_1A41C3674);
    sub_1A41C3B90(&qword_1EB134590, sub_1A41C3674, sub_1A41C3C14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134588);
  }

  return result;
}

uint64_t sub_1A41C3B90(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

uint64_t sub_1A41C3C48(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A41C377C(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A41C3CBC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A41C30BC(255, &qword_1EB134540, sub_1A41C35BC, sub_1A3E42C88);
    sub_1A41C377C(255, a3, a4, a5);
    v9 = sub_1A5248804();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_1A41C3D74()
{
  result = qword_1EB1345B0;
  if (!qword_1EB1345B0)
  {
    sub_1A41C3C98(255);
    sub_1A41C395C();
    sub_1A41C3C48(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1345B0);
  }

  return result;
}

void sub_1A41C3E34()
{
  if (!qword_1EB1345C8)
  {
    sub_1A41C3EC8(255);
    sub_1A41B8384(&qword_1EB1345E8, sub_1A41C3EC8);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1345C8);
    }
  }
}

void sub_1A41C3EFC()
{
  if (!qword_1EB1345D8)
  {
    sub_1A41C3F80();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1345D8);
    }
  }
}

void sub_1A41C3F80()
{
  if (!qword_1EB127470)
  {
    sub_1A41C3728(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB127470);
    }
  }
}

void sub_1A41C4004()
{
  if (!qword_1EB134600)
  {
    sub_1A41C4098();
    sub_1A41C38B8(&qword_1EB1284B0, sub_1A41C4098, sub_1A3E43880);
    v0 = sub_1A5249724();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134600);
    }
  }
}

void sub_1A41C4098()
{
  if (!qword_1EB1284A8)
  {
    sub_1A41C377C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1284A8);
    }
  }
}

void sub_1A41C4180(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A41C420C()
{
  result = qword_1EB134620;
  if (!qword_1EB134620)
  {
    sub_1A41C2CD0(255);
    sub_1A41C42BC();
    sub_1A41B8384(&qword_1EB134638, sub_1A41C4004);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134620);
  }

  return result;
}

unint64_t sub_1A41C42BC()
{
  result = qword_1EB134628;
  if (!qword_1EB134628)
  {
    sub_1A41C2D04(255);
    sub_1A41B8384(&qword_1EB134630, sub_1A41C2D2C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134628);
  }

  return result;
}

uint64_t sub_1A41C437C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A41C441C(int a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    v5 = sub_1A524D244();
    v6 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = v6;
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1A3C1C000, v7, v5, "Failed to subscribe to shared stream: %@", v8, 0xCu);
      sub_1A3CB65E4(v9);
      MEMORY[0x1A590EEC0](v9, -1, -1);
      MEMORY[0x1A590EEC0](v8, -1, -1);
    }

    v18 = *(v2 + 96);
    LOBYTE(v17) = 1;
    v12 = MEMORY[0x1E6981790];
    sub_1A41C57B0(0, &unk_1EB134658, &type metadata for SharedAlbumInvitationView.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v13 = sub_1A3C38BD4();
    v18 = *(v2 + 72);
    v19 = *(v2 + 88);
    *&v17 = v13;
    *(&v17 + 1) = v14;
    sub_1A41C57B0(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v12);
    sub_1A524B6B4();
    v17 = *(v2 + 56);
    v18 = v17;
    v16[15] = 1;
    v20 = *(&v17 + 1);
    v15 = MEMORY[0x1E69E6370];
    sub_1A41C56E4(&v20, v16, &qword_1EB1248C0, &unk_1EB1248D0, MEMORY[0x1E69E6370]);
    sub_1A41C57B0(0, &qword_1EB1274B0, v15, v12);
    sub_1A524B6B4();

    sub_1A41C5754(&v18, &qword_1EB1274B0, v15, v12);
  }
}

void sub_1A41C4658(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_1A41C57B0(255, a3, a4, MEMORY[0x1E697DB98]);
    v5 = sub_1A524DF24();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A41C46C4(uint64_t a1)
{
  sub_1A41C4658(0, &qword_1EB134678, &unk_1EB134680, MEMORY[0x1E69E6158]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A41C475C()
{
  result = qword_1EB134690;
  if (!qword_1EB134690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134690);
  }

  return result;
}

unint64_t sub_1A41C47B4()
{
  result = qword_1EB134698;
  if (!qword_1EB134698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134698);
  }

  return result;
}

unint64_t sub_1A41C480C()
{
  result = qword_1EB1346A0;
  if (!qword_1EB1346A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346A0);
  }

  return result;
}

unint64_t sub_1A41C4864()
{
  result = qword_1EB1346A8;
  if (!qword_1EB1346A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346A8);
  }

  return result;
}

unint64_t sub_1A41C48BC()
{
  result = qword_1EB1346B0;
  if (!qword_1EB1346B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346B0);
  }

  return result;
}

unint64_t sub_1A41C495C()
{
  result = qword_1EB1346C0;
  if (!qword_1EB1346C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346C0);
  }

  return result;
}

unint64_t sub_1A41C49B4()
{
  result = qword_1EB1346C8;
  if (!qword_1EB1346C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346C8);
  }

  return result;
}

unint64_t sub_1A41C4A0C()
{
  result = qword_1EB1346D0;
  if (!qword_1EB1346D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346D0);
  }

  return result;
}

unint64_t sub_1A41C4A64()
{
  result = qword_1EB1346D8;
  if (!qword_1EB1346D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346D8);
  }

  return result;
}

unint64_t sub_1A41C4ABC()
{
  result = qword_1EB1346E0;
  if (!qword_1EB1346E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346E0);
  }

  return result;
}

unint64_t sub_1A41C4B14()
{
  result = qword_1EB1346E8;
  if (!qword_1EB1346E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346E8);
  }

  return result;
}

unint64_t sub_1A41C4BF8()
{
  result = qword_1EB1346F8;
  if (!qword_1EB1346F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346F8);
  }

  return result;
}

unint64_t sub_1A41C4C98()
{
  result = qword_1EB134708;
  if (!qword_1EB134708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134708);
  }

  return result;
}

uint64_t sub_1A41C4D08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A41C4D50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A41C4DC4()
{
  result = sub_1A41C2B38(319, &qword_1EB1343D8, type metadata accessor for SharedLibraryInvitationViewModel, sub_1A41C2940);
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

void sub_1A41C4F38()
{
  sub_1A41C2B38(319, &qword_1EB134410, type metadata accessor for SharedAlbumsInvitationsViewModel, sub_1A41C2A9C);
  if (v0 <= 0x3F)
  {
    sub_1A41BB83C(319, &qword_1EB1343E8, sub_1A41BBCB0, MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1A41C2AD0(319, &qword_1EB134400, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1A41C51A8()
{
  sub_1A41C2AD0(319, &qword_1EB134418, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E695C070]);
  if (v0 <= 0x3F)
  {
    sub_1A41C57B0(319, &qword_1EB1249C8, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
    if (v1 <= 0x3F)
    {
      sub_1A41C2AD0(319, &qword_1EB134438, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E695C070]);
      if (v2 <= 0x3F)
      {
        sub_1A41C57B0(319, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
        if (v3 <= 0x3F)
        {
          sub_1A41C2AD0(319, &qword_1EB134458, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E695C070]);
          if (v4 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1A41C53FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
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

uint64_t sub_1A41C5444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A41C5530(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
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

unint64_t sub_1A41C55E0()
{
  result = qword_1EB134798;
  if (!qword_1EB134798)
  {
    sub_1A41C4110(255);
    sub_1A41C2CD0(255);
    sub_1A41C420C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134798);
  }

  return result;
}

unint64_t sub_1A41C5690()
{
  result = qword_1EB1347A0;
  if (!qword_1EB1347A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1347A0);
  }

  return result;
}

uint64_t sub_1A41C56E4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  sub_1A41C4658(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1A41C5754(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1A41C57B0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1A41C57B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A41C5800(uint64_t result)
{
  if (result)
  {
    v1 = result;
    sub_1A41C2AD0(0, &qword_1EB134470, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E6981790]);
    v2 = v1;
    return sub_1A524B6B4();
  }

  return result;
}

void sub_1A41C5888()
{
  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation);
  v0 = sub_1A5247EB4();
  v1 = (*(*v0 + 128))(v0);

  [objc_opt_self() markInvitationToSharedAlbumAsSpam:v1 completionHandler:0];
}

void sub_1A41C597C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
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

uint64_t sub_1A41C59E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A41C5A48()
{
  v0 = MEMORY[0x1E6981790];
  sub_1A41C57B0(0, &unk_1EB134658, &type metadata for SharedAlbumInvitationView.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A41C57B0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v0);
  return sub_1A524B6B4();
}

void sub_1A41C5B04()
{
  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation);
  v0 = sub_1A5247EB4();
  v1 = (*(*v0 + 128))(v0);

  sub_1A41C0BE4(1, v1);
}

uint64_t objectdestroy_53Tm()
{
  sub_1A3C333F8();

  sub_1A3DD15BC(*(v0 + 112), *(v0 + 120));

  return swift_deallocObject();
}

void sub_1A41C5C6C()
{
  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation);
  v0 = sub_1A5247EB4();
  v4 = (*(*v0 + 128))(v0);

  [objc_opt_self() declineInvitationToSharedAlbum:v4 completionHandler:0];
  v1 = sub_1A5247EB4();
  v2 = *sub_1A5247EB4();
  v3 = (*(v2 + 368))();

  (*(*v1 + 376))((v3 & 1) == 0);
}

uint64_t sub_1A41C5E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A41C5EA4()
{
  result = qword_1EB1347C8;
  if (!qword_1EB1347C8)
  {
    sub_1A41BBD04(255, &qword_1EB1343A0, sub_1A41BBD68);
    sub_1A41C5F78(&qword_1EB1347D0, sub_1A41BBD68, sub_1A41C602C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1347C8);
  }

  return result;
}

uint64_t sub_1A41C5F78(unint64_t *a1, void (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A41B8384(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41C602C()
{
  result = qword_1EB1347D8;
  if (!qword_1EB1347D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1347D8);
  }

  return result;
}

uint64_t sub_1A41C6080()
{
  type metadata accessor for SharedLibraryInvitationViewModel(0);
  sub_1A41B8384(&qword_1EB134310, type metadata accessor for SharedLibraryInvitationViewModel);
  v1 = sub_1A5247EB4();
  sub_1A41C2678(v1, *(v0 + 64));
}

uint64_t sub_1A41C6134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A41C619C()
{
  if (!qword_1EB1347E0)
  {
    type metadata accessor for SharedAlbumsInvitationsViewModel(255);
    sub_1A41B8384(&qword_1EB134318, type metadata accessor for SharedAlbumsInvitationsViewModel);
    v0 = sub_1A5247ED4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1347E0);
    }
  }
}

uint64_t sub_1A41C6238(uint64_t a1, uint64_t a2)
{
  sub_1A41BBD68();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A41C62E0()
{
  result = qword_1EB1347F0;
  if (!qword_1EB1347F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1347F0);
  }

  return result;
}

uint64_t sub_1A41C634C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1A41C62E0();
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = v1;
  v5 = v2;

  return sub_1A52481D4();
}

void sub_1A41C63F4()
{
  if (!qword_1EB134800)
  {
    sub_1A41C62E0();
    v0 = sub_1A52481E4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134800);
    }
  }
}

void type metadata accessor for AVLayerVideoGravity()
{
  if (!qword_1EB134808)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB134808);
    }
  }
}

uint64_t sub_1A41C649C()
{
  sub_1A41C6630(&qword_1EB134828, type metadata accessor for AVLayerVideoGravity);
  sub_1A41C6630(&qword_1EB134830, type metadata accessor for AVLayerVideoGravity);

  return sub_1A524E7E4();
}

uint64_t sub_1A41C6630(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_1A41C6678(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  [a1 setPlayer_];

  return [a1 setVideoGravity_];
}

double sub_1A41C66CC()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  return v0[2];
}

uint64_t sub_1A41C67E0(double a1)
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
    (*(*v1 + 264))(v5);
  }

  return result;
}

void (*sub_1A41C68E4(uint64_t *a1))(void *a1)
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
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28PXModelDeliveryProgressState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A41CBAA0(&qword_1EB134838, type metadata accessor for PXModelDeliveryProgressState);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030();
  return sub_1A41C6A34;
}

uint64_t sub_1A41C6A60()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  return v0[3];
}

uint64_t sub_1A41C6AE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41C6B74(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[3] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 264))(v5);
  }

  return result;
}

void (*sub_1A41C6C6C(uint64_t *a1))(void *a1)
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
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28PXModelDeliveryProgressState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A41CBAA0(&qword_1EB134838, type metadata accessor for PXModelDeliveryProgressState);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4();
  return sub_1A41C6DBC;
}

uint64_t sub_1A41C6DC8()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  return v0[4];
}

uint64_t sub_1A41C6E48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41C6EDC(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[4] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x1EEE9AC00](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 264))(v5);
  }

  return result;
}

void (*sub_1A41C6FD4(uint64_t *a1))(void *a1)
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
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28PXModelDeliveryProgressState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A41CBAA0(&qword_1EB134838, type metadata accessor for PXModelDeliveryProgressState);
  sub_1A52415F4();

  v4[7] = sub_1A4197AC8();
  return sub_1A41C7124;
}

uint64_t sub_1A41C7270()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore28PXModelDeliveryProgressState___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1A41C730C()
{
  v0 = swift_allocObject();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 0;
  sub_1A5241604();
  return v0;
}

void sub_1A41C7358()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1AE678);
  __swift_project_value_buffer(v0, qword_1EB1AE678);
  sub_1A5246EF4();
}

uint64_t sub_1A41C73C8@<X0>(uint64_t a1@<X8>)
{
  sub_1A41CB7A4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController____lazy_storage___progressView;
  swift_beginAccess();
  sub_1A41CB7F8(v1 + v9, v8, sub_1A41CB7A4);
  v10 = type metadata accessor for PXModelDeliveryProgressView(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_1A41CB8C4(v8, a1);
  }

  sub_1A41CB98C(v8, sub_1A41CB7A4);
  swift_beginAccess();
  v12 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressConfiguration;
  swift_beginAccess();
  LOBYTE(v12) = *(v1 + v12);

  sub_1A41C75EC(v13, v12, a1);
  sub_1A41CB7F8(a1, v5, type metadata accessor for PXModelDeliveryProgressView);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1A41CB860(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1A41C75EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524C634();
  v10 = PELocalizedString();

  v11 = sub_1A524C674();
  v13 = v12;

  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  v14 = sub_1A524C634();
  v15 = PELocalizedString();

  v16 = sub_1A524C674();
  v18 = v17;

  *(a3 + 32) = v16;
  *(a3 + 40) = v18;
  *(a3 + 48) = PFOSVariantHasInternalUI();
  v19 = [objc_opt_self() px_dynamicHighlightColor];
  *(a3 + 56) = sub_1A524B284();
  *(a3 + 64) = sub_1A524A254();
  sub_1A524A184();
  v20 = sub_1A524A154();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = sub_1A524A1B4();
  sub_1A41CB98C(v8, sub_1A3E75D84);
  *(a3 + 72) = v21;
  v22 = *(type metadata accessor for PXModelDeliveryProgressView(0) + 48);
  *(a3 + v22) = swift_getKeyPath();
  sub_1A41CB928(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1A41C7838(uint64_t a1)
{
  sub_1A41CB7A4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CB8C4(a1, v5);
  v6 = type metadata accessor for PXModelDeliveryProgressView(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController____lazy_storage___progressView;
  swift_beginAccess();
  sub_1A41CB860(v5, v1 + v7);
  return swift_endAccess();
}

void (*sub_1A41C7928(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  sub_1A41CB7A4(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v5[7] = v8;
  v9 = type metadata accessor for PXModelDeliveryProgressView(0);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v5[10] = v11;
  sub_1A41C73C8(v11);
  return sub_1A41C7A3C;
}

void sub_1A41C7A3C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = ((*a1)[9] + 56);
  v4 = (*a1)[10];
  v5 = (*a1)[7];
  v6 = (*a1)[8];
  v7 = (*a1)[6];
  if (a2)
  {
    sub_1A41CB7F8(v2[10], v2[7], type metadata accessor for PXModelDeliveryProgressView);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController____lazy_storage___progressView;
    swift_beginAccess();
    sub_1A41CB860(v5, v7 + v8);
    swift_endAccess();
    sub_1A41CB98C(v4, type metadata accessor for PXModelDeliveryProgressView);
  }

  else
  {
    sub_1A41CB8C4(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController____lazy_storage___progressView;
    swift_beginAccess();
    sub_1A41CB860(v5, v7 + v9);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

void sub_1A41C7BA0()
{
  v1 = v0;
  v2 = sub_1A5249F84();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for PXModelDeliveryProgressView(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = UIViewController.pxView.getter();
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor_];

  if (qword_1EB1AE670 != -1)
  {
    swift_once();
  }

  v11 = sub_1A5246F24();
  __swift_project_value_buffer(v11, qword_1EB1AE678);
  v12 = sub_1A5246F04();
  v13 = sub_1A524D234();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1A3C1C000, v12, v13, "setupProgressView", v14, 2u);
    MEMORY[0x1A590EEC0](v14, -1, -1);
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  sub_1A41CBA0C();
  sub_1A41CB7F8(v8, v5, type metadata accessor for PXModelDeliveryProgressView);
  v15 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v5);
  sub_1A41CB98C(v8, type metadata accessor for PXModelDeliveryProgressView);
  v16 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressHostingViewController;
  swift_beginAccess();
  v17 = *(v1 + v16);
  *(v1 + v16) = v15;
  v18 = v15;

  v19 = v18;
  v20 = UIViewController.pxView.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v9;
  v22 = v20;
  v23 = v9;
  UIViewController.px_addChild(_:constraints:)(v19, sub_1A41CBAE8);

  v24 = [v19 view];

  if (v24)
  {
    [v24 invalidateIntrinsicContentSize];

    v25 = v19;
    sub_1A5249F64();
    sub_1A52495E4();

    [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1A41C7F80(uint64_t a1, double a2)
{
  v3 = v2;
  sub_1A3DB4F20();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressState;
  swift_beginAccess();
  v10 = *&v2[v9];
  v11 = 0.0;
  v12 = 1.0;
  if (a2 <= 1.0)
  {
    v12 = a2;
  }

  if (a2 >= 0.0)
  {
    v11 = v12;
  }

  if (a1 == 1)
  {
    v13 = -1.0;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(*v10 + 144);

  v14(v15, v13);

  v16 = *(**&v3[v9] + 192);

  v16(a1);

  v17 = sub_1A524CCB4();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_1A524CC54();
  v18 = v3;
  v19 = sub_1A524CC44();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  sub_1A3EA52F4(0, 0, v8, &unk_1A5323A80, v20);
}

uint64_t sub_1A41C8178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a4;
  v4[11] = sub_1A524CC54();
  v4[12] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A41C8214, v6, v5);
}

uint64_t sub_1A41C8214()
{
  swift_unknownObjectWeakInit();

  return MEMORY[0x1EEE6DFA0](sub_1A41C8280, 0, 0);
}

uint64_t sub_1A41C8280()
{
  *(v0 + 120) = sub_1A524CC44();
  v2 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41C830C, v2, v1);
}

uint64_t sub_1A41C830C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressHostingViewController;
    swift_beginAccess();
    v4 = *&v2[v3];
    v5 = v4 == 0;
    if (v4)
    {
      v6 = v4;

      v2 = [v6 view];
      if (!v2)
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v7, v8, v9);
      }

      [v2 invalidateIntrinsicContentSize];
    }
  }

  else
  {
    v5 = 1;
  }

  **(v0 + 72) = v5;
  MEMORY[0x1A590F020](v0 + 64);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v7 = sub_1A41C8428;

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1A41C8428()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A41C84EC(char a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressConfiguration;
  v3 = (a1 & 1) != 0;
  swift_beginAccess();
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressHostingViewController;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = [v5 view];
    if (v6)
    {
      v7 = v6;
      [v6 invalidateIntrinsicContentSize];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1A41C85F4(uint64_t a1)
{
  v2 = v1;
  if (qword_1EB1AE670 != -1)
  {
    swift_once();
  }

  v4 = sub_1A5246F24();
  __swift_project_value_buffer(v4, qword_1EB1AE678);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D234();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_1A3C1C000, v5, v6, "setErrorState: %ld", v7, 0xCu);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressState;
  swift_beginAccess();
  v9 = *(**(v2 + v8) + 240);

  v9(a1);

  v10 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressHostingViewController;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (v11)
  {
    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      [v12 invalidateIntrinsicContentSize];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1A41C87F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController____lazy_storage___progressView;
  v7 = type metadata accessor for PXModelDeliveryProgressView(0);
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressState;
  type metadata accessor for PXModelDeliveryProgressState(0);
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = 0;
  sub_1A5241604();
  *&v3[v8] = v9;
  v3[OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressConfiguration] = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressHostingViewController] = 0;
  if (a2)
  {
    v10 = sub_1A524C634();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for PXModelDeliveryProgressViewController(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_1A41C8984(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController____lazy_storage___progressView;
  v4 = type metadata accessor for PXModelDeliveryProgressView(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressState;
  type metadata accessor for PXModelDeliveryProgressState(0);
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  sub_1A5241604();
  *&v1[v5] = v6;
  v1[OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressConfiguration] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressHostingViewController] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PXModelDeliveryProgressViewController(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1A41C8AB4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PXModelDeliveryProgressViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1A41C8B5C(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[3] = a1;
  sub_1A41CBDE8(0);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A41CCF4C();
  v5 = *(v4 - 8);
  v19[1] = v4;
  v19[2] = v5;
  MEMORY[0x1EEE9AC00](v4);
  sub_1A41CBE24(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(**v1 + 232))(v7);
  v11 = sub_1A41C8FAC(v10);
  v13 = v12;
  v15 = v14;
  v17 = v16;
  *v9 = sub_1A5249574();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_1A41CD34C();
  sub_1A41C9184(v2, *&v11, v13, v15, v17, &v9[*(v18 + 44)]);
}

id sub_1A41C8FAC(uint64_t a1)
{
  if (a1 <= 2)
  {
    if (a1 != 1)
    {
      v1 = 0;
      if (a1 != 2)
      {
        return v1;
      }
    }

    goto LABEL_11;
  }

  if (a1 != 3)
  {
    v1 = 0;
    if (a1 != 4)
    {
      return v1;
    }

LABEL_11:
    v4 = sub_1A524C634();
    v5 = PELocalizedString();

    v1 = sub_1A524C674();
    v6 = sub_1A524C634();
    v7 = PELocalizedString();

    sub_1A524C674();
    return v1;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    MobileGestalt_get_wapiCapability();

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1A41C9184(double *a1@<X0>, double a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v115 = a4;
  v116 = a5;
  v113 = a2;
  v114 = a3;
  v125 = a6;
  v126 = a1;
  v6 = MEMORY[0x1E697F948];
  sub_1A41CBEFC(0, &qword_1EB134A28, sub_1A41CC40C, sub_1A41CCB04, MEMORY[0x1E697F948]);
  v118 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v120 = &v80 - v8;
  sub_1A41CC40C();
  v119 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A52498E4();
  v99 = *(v11 - 8);
  v100 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CCAB0(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v96 = *(v13 - 8);
  v97 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v93 = &v80 - v14;
  sub_1A41CC9B0();
  v94 = *(v15 - 8);
  v95 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v92 = &v80 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CC91C();
  v91 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v90 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CC8D4(0);
  v89 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v101 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v88 = &v80 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v102 = &v80 - v24;
  sub_1A41CC3C4(0);
  v124 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v117 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CBEFC(0, &qword_1EB134A30, sub_1A41CBF80, sub_1A41CC3C4, v6);
  v121 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v123 = &v80 - v28;
  sub_1A41CBF80(0);
  v122 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v111 = (&v80 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = sub_1A5249B14();
  v85 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v84 = &v80 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CC170();
  v110 = v32;
  v86 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v112 = &v80 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CBEFC(0, &qword_1EB134A38, sub_1A41CC06C, sub_1A41CC170, v6);
  v106 = v34;
  MEMORY[0x1EEE9AC00](v34);
  v108 = &v80 - v35;
  v107 = sub_1A5249CC4();
  v82 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v104 = &v80 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411848C();
  v38 = v37;
  v105 = *(*&v37 - 8);
  MEMORY[0x1EEE9AC00](*&v37);
  v40 = &v80 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CC06C();
  v42 = v41;
  v83 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v80 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CC024(0);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v47 = &v80 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v48);
  v51 = &v80 - v50;
  v52 = *v126;
  v53 = **v126;
  v54 = *(v53 + 232);
  v55 = v53 + 232;
  if ((v54)(v49))
  {
    if (v54() == 1)
    {
      v112 = sub_1A5249314();
      v128 = v113;
      v129 = v114;
      sub_1A3D5F9DC();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v110 = v55;
    v111 = v54;
    v87 = v52;
    v112 = sub_1A5249314();
    v128 = v113;
    v129 = v114;
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v56 = v104;
  v81 = v44;
  v57 = v112;
  v118 = v42;
  v119 = v47;
  v120 = v51;
  v58 = (*(*v52 + 184))();
  v87 = v52;
  if (v58 == 1)
  {
    sub_1A5248074();
    v59 = v56;
    sub_1A5249CB4();
    v60 = sub_1A41CBAA0(&qword_1EB1289A0, sub_1A411848C);
    v61 = sub_1A41CBAA0(&qword_1EB134898, MEMORY[0x1E697C9C8]);
    v62 = v81;
    v63 = v38;
    v64 = v107;
    sub_1A524A8B4();
    (*(v82 + 8))(v59, v64);
    (*(v105 + 8))(v40, COERCE_DOUBLE(*&v63));
    v65 = v83;
    v66 = v118;
    (*(v83 + 16))(v108, v62, v118);
    swift_storeEnumTagMultiPayload();
    v128 = v63;
    v129 = v64;
    v130 = v60;
    v131 = v61;
    swift_getOpaqueTypeConformance2();
    v67 = sub_1A41CBAA0(&qword_1EB1348A8, MEMORY[0x1E697C8B8]);
    v128 = v63;
    v129 = v109;
    v130 = v60;
    v131 = v67;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    (*(v65 + 8))(v81, v66);
    v68 = v126;
  }

  else
  {
    v128 = (*(*v52 + 136))();
    LOBYTE(v129) = 0;
    v127 = 0x3FF0000000000000;
    sub_1A3F93828();
    v69 = v40;
    sub_1A5248064();
    v68 = v126;

    v70 = v84;
    sub_1A5249B04();
    v116 = sub_1A41CBAA0(&qword_1EB1289A0, sub_1A411848C);
    v117 = sub_1A41CBAA0(&qword_1EB1348A8, MEMORY[0x1E697C8B8]);
    v71 = v57;
    v72 = v109;
    sub_1A524A8B4();
    (*(v85 + 8))(v70, v72);
    (*(v105 + 8))(v69, COERCE_DOUBLE(*&v38));
    v73 = v86;
    v74 = v110;
    (*(v86 + 16))(v108, v71, v110);
    swift_storeEnumTagMultiPayload();
    v75 = sub_1A41CBAA0(&qword_1EB134898, MEMORY[0x1E697C9C8]);
    v128 = v38;
    v129 = v107;
    v76 = v116;
    v130 = v116;
    v131 = v75;
    swift_getOpaqueTypeConformance2();
    v128 = v38;
    v129 = v72;
    v130 = v76;
    v131 = v117;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    (*(v73 + 8))(v112, v74);
  }

  v77 = sub_1A524BC74();
  v117 = v78;
  v118 = v77;
  v79 = *(v68 + 3);
  v128 = v68[2];
  v129 = v79;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A41CB310()
{
  if (qword_1EB1AE670 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();
  __swift_project_value_buffer(v0, qword_1EB1AE678);
  v1 = sub_1A5246F04();
  v2 = sub_1A524D234();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A3C1C000, v1, v2, "Launching storage panel by request of user", v3, 2u);
    MEMORY[0x1A590EEC0](v3, -1, -1);
  }

  v4 = objc_opt_self();

  return [v4 navigateToDestination:2 completion:0];
}

void sub_1A41CB418(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v3 = sub_1A524BBA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524BB94();
  sub_1A41CD068(0);
  v8 = a2 + *(v7 + 36);
  sub_1A524BBC4();
  (*(v4 + 8))(v6, v3);
  sub_1A41CD0B0();
  v10 = v9;
  v11 = (v8 + *(v9 + 52));
  v12 = sub_1A5248A14();
  v13 = *(v12 + 20);
  v14 = *MEMORY[0x1E697F468];
  v15 = sub_1A52494A4();
  v16 = *(*(v15 - 8) + 104);
  v16(&v11[v13], v14, v15);
  __asm { FMOV            V0.2D, #20.0 }

  v25 = _Q0;
  *v11 = _Q0;
  *(v8 + *(v10 + 56)) = 256;
  sub_1A41CDB10(v26, a2, sub_1A41CBDE8);
  sub_1A41CBEFC(0, &qword_1EB1349B8, sub_1A41CD068, sub_1A3E42C88, MEMORY[0x1E697E830]);
  v23 = (a2 + *(v22 + 36));
  v16(&v23[*(v12 + 20)], v14, v15);
  *v23 = v25;
  sub_1A3E42C88();
  *&v23[*(v24 + 36)] = 256;
}

void sub_1A41CB648(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A41CD44C(0);
  v5 = a2 + *(v4 + 36);
  sub_1A524BBB4();
  v6 = sub_1A524A064();
  sub_1A41CD494(0);
  *(v5 + *(v7 + 36)) = v6;
  sub_1A41CCF4C();
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  sub_1A41CBEFC(0, &qword_1EB1349F8, sub_1A41CD44C, sub_1A3E42C88, MEMORY[0x1E697E830]);
  v10 = (a2 + *(v9 + 36));
  v11 = *(sub_1A5248A14() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1A52494A4();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #20.0 }

  *v10 = _Q0;
  sub_1A3E42C88();
  *&v10[*(v19 + 36)] = 256;
}

uint64_t sub_1A41CB7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41CB860(uint64_t a1, uint64_t a2)
{
  sub_1A41CB7A4(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41CB8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PXModelDeliveryProgressView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A41CB928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A41CB98C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A41CBA0C()
{
  if (!qword_1EB134848)
  {
    type metadata accessor for PXModelDeliveryProgressView(255);
    sub_1A41CBAA0(&qword_1EB134850, type metadata accessor for PXModelDeliveryProgressView);
    v0 = type metadata accessor for PXSwiftUIHostingViewController();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134848);
    }
  }
}

uint64_t sub_1A41CBAA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1A41CBAE8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1A41CDBE0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A531C940;
  v4 = [v2 topAnchor];
  v5 = [v1 safeAreaLayoutGuide];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v3 + 32) = v7;
  v8 = [v2 rightAnchor];
  v9 = [v1 safeAreaLayoutGuide];
  v10 = [v9 rightAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v3 + 40) = v11;
  v12 = [v2 leftAnchor];
  v13 = [v1 safeAreaLayoutGuide];
  v14 = [v13 leftAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v3 + 48) = v15;
  v16 = [v2 bottomAnchor];
  v17 = [v1 safeAreaLayoutGuide];
  v18 = [v17 bottomAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v3 + 56) = v19;
  return v3;
}

uint64_t sub_1A41CBD48(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A41C8178(a1, v5, v6, v4);
}

void sub_1A41CBE54()
{
  if (!qword_1EB134868)
  {
    sub_1A41CBEFC(255, &qword_1EB134870, sub_1A41CBF80, sub_1A41CC3C4, MEMORY[0x1E697F960]);
    sub_1A41CCD7C();
    v0 = sub_1A524B894();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134868);
    }
  }
}

void sub_1A41CBEFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A41CBFB4()
{
  if (!qword_1EB134880)
  {
    sub_1A41CC024(255);
    sub_1A41CC274(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB134880);
    }
  }
}

void sub_1A41CC06C()
{
  if (!qword_1EB134890)
  {
    sub_1A411848C();
    sub_1A5249CC4();
    sub_1A41CBAA0(&qword_1EB1289A0, sub_1A411848C);
    sub_1A41CBAA0(&qword_1EB134898, MEMORY[0x1E697C9C8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB134890);
    }
  }
}

void sub_1A41CC170()
{
  if (!qword_1EB1348A0)
  {
    sub_1A411848C();
    sub_1A5249B14();
    sub_1A41CBAA0(&qword_1EB1289A0, sub_1A411848C);
    sub_1A41CBAA0(&qword_1EB1348A8, MEMORY[0x1E697C8B8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1348A0);
    }
  }
}

void sub_1A41CC2EC()
{
  if (!qword_1EB1348C0)
  {
    sub_1A41CBEFC(255, &qword_1EB1348C8, sub_1A4137648, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    sub_1A41CCAB0(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1348C0);
    }
  }
}

void sub_1A41CC40C()
{
  if (!qword_1EB1348D8)
  {
    sub_1A41CCBA0(255, &qword_1EB1348E0, sub_1A41CC4A8, sub_1A41CC700, sub_1A41CC8D4);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1348D8);
    }
  }
}

void sub_1A41CC4D8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1A41CDBE0(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A41CC5D8()
{
  if (!qword_1EB134900)
  {
    sub_1A41CC66C(255);
    sub_1A41CBAA0(&qword_1EB134918, sub_1A41CC66C);
    v0 = sub_1A524B784();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134900);
    }
  }
}

void sub_1A41CC6A0()
{
  if (!qword_1EB134910)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB134910);
    }
  }
}

void sub_1A41CC784()
{
  if (!qword_1EB134930)
  {
    sub_1A41CC800(255, &qword_1EB134938, sub_1A41CC898);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134930);
    }
  }
}

void sub_1A41CC800(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A41CCAB0(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A41CC91C()
{
  if (!qword_1EB134950)
  {
    sub_1A41CC9B0();
    sub_1A41CCAB0(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134950);
    }
  }
}

void sub_1A41CC9B0()
{
  if (!qword_1EB134958)
  {
    sub_1A41CCAB0(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A52498E4();
    sub_1A3D6E520();
    sub_1A41CBAA0(&qword_1EB141DF0, MEMORY[0x1E697C720]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB134958);
    }
  }
}

void sub_1A41CCAB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

void sub_1A41CCB04()
{
  if (!qword_1EB134960)
  {
    sub_1A41CCBA0(255, &qword_1EB134968, sub_1A41CC590, sub_1A41CCC3C, sub_1A41CCCE0);
    v0 = sub_1A524BE24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134960);
    }
  }
}

void sub_1A41CCBA0(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1A41CCC3C()
{
  if (!qword_1EB134970)
  {
    sub_1A41CBEFC(255, &qword_1EB134978, sub_1A41CC898, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134970);
    }
  }
}

void sub_1A41CCCE0()
{
  if (!qword_1EB134980)
  {
    sub_1A41CBEFC(255, &qword_1EB134978, sub_1A41CC898, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    v0 = sub_1A524DF24();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134980);
    }
  }
}

unint64_t sub_1A41CCD7C()
{
  result = qword_1EB134988;
  if (!qword_1EB134988)
  {
    sub_1A41CBEFC(255, &qword_1EB134870, sub_1A41CBF80, sub_1A41CC3C4, MEMORY[0x1E697F960]);
    sub_1A41CBAA0(&qword_1EB134990, sub_1A41CBF80);
    sub_1A41CCE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134988);
  }

  return result;
}

unint64_t sub_1A41CCE70()
{
  result = qword_1EB134998;
  if (!qword_1EB134998)
  {
    sub_1A41CC3C4(255);
    sub_1A41CBAA0(&qword_1EB1349A0, sub_1A41CC40C);
    sub_1A41CBAA0(&qword_1EB1349A8, sub_1A41CCB04);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134998);
  }

  return result;
}

void sub_1A41CCF4C()
{
  if (!qword_1EB1349B0)
  {
    sub_1A41CBDE8(255);
    sub_1A41CBEFC(255, &qword_1EB1349B8, sub_1A41CD068, sub_1A3E42C88, MEMORY[0x1E697E830]);
    sub_1A41CD16C();
    sub_1A41CD53C(&qword_1EB1349E0, &qword_1EB1349B8, sub_1A41CD068, sub_1A41CD29C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1349B0);
    }
  }
}

void sub_1A41CD0B0()
{
  if (!qword_1EB122090)
  {
    sub_1A524BBF4();
    sub_1A5248A14();
    sub_1A41CBAA0(&qword_1EB128090, MEMORY[0x1E697EAF0]);
    v0 = sub_1A5249FC4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB122090);
    }
  }
}

unint64_t sub_1A41CD16C()
{
  result = qword_1EB1349C8;
  if (!qword_1EB1349C8)
  {
    sub_1A41CBDE8(255);
    sub_1A41CD1EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1349C8);
  }

  return result;
}

unint64_t sub_1A41CD1EC()
{
  result = qword_1EB1349D0;
  if (!qword_1EB1349D0)
  {
    sub_1A41CBE24(255);
    sub_1A41CBAA0(&qword_1EB1349D8, sub_1A41CBE54);
    sub_1A4010C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1349D0);
  }

  return result;
}

unint64_t sub_1A41CD29C()
{
  result = qword_1EB1349E8;
  if (!qword_1EB1349E8)
  {
    sub_1A41CD068(255);
    sub_1A41CD16C();
    sub_1A41CBAA0(&qword_1EB122098, sub_1A41CD0B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1349E8);
  }

  return result;
}

void sub_1A41CD34C()
{
  if (!qword_1EB1349F0)
  {
    sub_1A41CBEFC(255, &qword_1EB134870, sub_1A41CBF80, sub_1A41CC3C4, MEMORY[0x1E697F960]);
    v0 = sub_1A52483B4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1349F0);
    }
  }
}

uint64_t sub_1A41CD3F8@<X0>(void *a1@<X8>)
{
  result = sub_1A5248F44();
  *a1 = v3;
  return result;
}

void sub_1A41CD4D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1A41CD53C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A41CBEFC(255, a2, a3, sub_1A3E42C88, MEMORY[0x1E697E830]);
    a4();
    sub_1A41CBAA0(&qword_1EB128A00, sub_1A3E42C88);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41CD614()
{
  result = qword_1EB134A10;
  if (!qword_1EB134A10)
  {
    sub_1A41CD44C(255);
    sub_1A41CBDE8(255);
    sub_1A41CBEFC(255, &qword_1EB1349B8, sub_1A41CD068, sub_1A3E42C88, MEMORY[0x1E697E830]);
    sub_1A41CD16C();
    sub_1A41CD53C(&qword_1EB1349E0, &qword_1EB1349B8, sub_1A41CD068, sub_1A41CD29C);
    swift_getOpaqueTypeConformance2();
    sub_1A41CBAA0(&qword_1EB127B08, sub_1A41CD494);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134A10);
  }

  return result;
}

uint64_t sub_1A41CD78C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A41CD7F0()
{
  result = qword_1EB134A18;
  if (!qword_1EB134A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134A18);
  }

  return result;
}

uint64_t sub_1A41CD868()
{
  result = sub_1A5241614();
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

void sub_1A41CD924()
{
  sub_1A41CB7A4(319);
  if (v0 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A41CD9FC()
{
  type metadata accessor for PXModelDeliveryProgressState(319);
  if (v0 <= 0x3F)
  {
    sub_1A41CB928(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A41CDB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41CDB78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A41CDBE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A41CDC30()
{
  sub_1A3C52C70(0, &qword_1EB12B140);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1EBBE8 = result;
  return result;
}

uint64_t sub_1A41CDC9C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EBBF0);
  __swift_project_value_buffer(v0, qword_1EB1EBBF0);
  if (qword_1EB1AEA10 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB1EBBE8;
  return sub_1A5246F34();
}

uint64_t sub_1A41CDD60()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB1EBC08);
  __swift_project_value_buffer(v4, qword_1EB1EBC08);
  if (qword_1EB1AEA18 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB1EBBF0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

uint64_t sub_1A41CDED4(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = a2(0);
  }

  else
  {
    swift_once();
    v4 = a2(0);
  }

  return __swift_project_value_buffer(v4, a3);
}

id ParallaxImageViewWrapper.makeUIView(context:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];

  v4 = [v3 layer];
  [v4 setContents_];

  if (v1)
  {
    sub_1A3C52C70(0, &qword_1EB1205C0);

    v5 = sub_1A524DBC4();
    [v3 setBackgroundColor_];
  }

  return v3;
}

void ParallaxImageViewWrapper.updateUIView(_:context:)(void *a1)
{
  v4 = *v1;
  v3 = v1[1];

  v5 = [a1 layer];
  [v5 setContents_];

  if (v3)
  {
    sub_1A3C52C70(0, &qword_1EB1205C0);

    v6 = sub_1A524DBC4();
    [a1 setBackgroundColor_];
  }
}

uint64_t sub_1A41CE0F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_1A41CE100()
{
  result = qword_1EB134A40;
  if (!qword_1EB134A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134A40);
  }

  return result;
}

void sub_1A41CE158(void *a1)
{
  v4 = *v1;
  v3 = v1[1];

  v5 = [a1 layer];
  [v5 setContents_];

  if (v3)
  {
    sub_1A3C52C70(0, &qword_1EB1205C0);

    v6 = sub_1A524DBC4();
    [a1 setBackgroundColor_];
  }
}

uint64_t sub_1A41CE238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A41CE348();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A41CE29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A41CE348();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A41CE300()
{
  sub_1A41CE348();
  sub_1A52496F4();
  __break(1u);
}

unint64_t sub_1A41CE348()
{
  result = qword_1EB134A48;
  if (!qword_1EB134A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134A48);
  }

  return result;
}

unint64_t sub_1A41CE3A8()
{
  result = sub_1A41D2A40(MEMORY[0x1E69E7CC0]);
  qword_1EB167BF8 = result;
  return result;
}

uint64_t sub_1A41CE3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1A3D6CDE0();
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D2FBC(0, &qword_1EB122D40, sub_1A3D6CE98, sub_1A3D6CDE0, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1A3D6CE98();
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    v18 = a1;
    sub_1A3CA3BA4(0, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
    sub_1A3CA39F8(&qword_1EB1290D0);
    sub_1A3CA39F8(&qword_1EB124D98);

    sub_1A5242894();
    (*(v13 + 16))(v10, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_1A41D2ED0(&unk_1EB124EA0, sub_1A3D6CE98);
    sub_1A41D2ED0(&qword_1EB128FF8, sub_1A3D6CDE0);
    sub_1A5249744();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v18 = a1;
    sub_1A3CA3BA4(0, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
    sub_1A3CA39F8(&qword_1EB1290D0);

    sub_1A5243E44();
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_1A41D2ED0(&unk_1EB124EA0, sub_1A3D6CE98);
    sub_1A41D2ED0(&qword_1EB128FF8, sub_1A3D6CDE0);
    sub_1A5249744();
    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1A41CE888(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (MEMORY[0x1A590D320]())
  {
    v8 = *(a1 + 16);
    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(a4);
  }

  v10 = a2;
  v11 = a3;
  v9 = sub_1A3C4433C();
  sub_1A3C66934(&v10, &type metadata for LemonadeMediaTypesFeature.ShelfProvider, v9);

  LemonadePhotosPagingAssetCollectionGridConfiguration.init(itemListManager:initialItem:defaultSectionBodyStyle:selectionCoordinator:)(a4);
}

uint64_t sub_1A41CE9A0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if ([a1 px_isMediaTypesFolder])
  {
    v9 = sub_1A42E6C64(a3, a4);
    *a5 = a2;
    a5[1] = v9;
    a5[2] = v10;
    v11 = type metadata accessor for LemonadeNavigationDestination();
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(a5, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for LemonadeNavigationDestination();
    v14 = *(*(v13 - 8) + 56);

    return v14(a5, 1, 1, v13);
  }
}

uint64_t sub_1A41CEADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = sub_1A42E6C64(a2, a3);
  *a4 = a1;
  a4[1] = v6;
  a4[2] = v7;
  v8 = type metadata accessor for LemonadeNavigationDestination();
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(a4, 0, 1, v8);
}

uint64_t sub_1A41CEB94()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D2F18(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  PhotosObservableListCellModel.keyAsset.getter(v7);
  memset(v10, 0, sizeof(v10));
  v11 = 1;
  v8 = sub_1A52429A4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
  return sub_1A5243ED4();
}

uint64_t sub_1A41CEDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3CA3924(&qword_1EB125C60, &qword_1EB12A800, type metadata accessor for PhotoKitItem);

  return sub_1A4201830(a1, a2, a3, v6);
}

void sub_1A41CEE7C(uint64_t *a1)
{
  v3 = type metadata accessor for LemonadeNavigationDestination();
  MEMORY[0x1EEE9AC00](v3);
  sub_1A41CE888(*a1, *v1, *(v1 + 8), (&v5 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0)));
}

unint64_t sub_1A41CEFE0(uint64_t a1)
{
  v2 = sub_1A3C442E8();

  return sub_1A42E6E80(a1, v2);
}

id sub_1A41CF01C(uint64_t a1)
{
  v1 = [*(a1 + 16) px_virtualCollections];
  v2 = [v1 mediaTypesCollectionList];

  return v2;
}

uint64_t sub_1A41CF074@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  *a2 = v3;
  v4 = *(type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0) + 20);
  v5 = v3;
  v6 = sub_1A437C480();
  return sub_1A437C488(v6, a2 + v4);
}

uint64_t sub_1A41CF0C0()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A41D2ED0(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A41CF170()
{
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A41D2ED0(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524C794();
}

uint64_t sub_1A41CF218()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext();
  sub_1A41D2ED0(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A41CF2C4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  sub_1A41D4A48(0, &qword_1EB134A50, MEMORY[0x1E69C2098]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A41D2F9C(0);
  v30 = v7;
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D2FBC(0, &qword_1EB134A60, sub_1A41D3040, sub_1A41D2F9C, MEMORY[0x1E697F948]);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v29 = v25 - v11;
  v12 = sub_1A5243284();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D3040();
  v28 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v20 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x540);
    v25[1] = a3;
    v26 = a2;
    v20();
    v31 = a1;

    sub_1A52426E4();
    (*(v13 + 104))(v15, *MEMORY[0x1E69C23E0], v12);

    sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
    sub_1A3CA3BA4(0, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    sub_1A5243EC4();
    sub_1A3D6ECFC();
    sub_1A41D2ED0(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    sub_1A5242AA4();
    v21 = v28;
    (*(v17 + 16))(v29, v19, v28);
    swift_storeEnumTagMultiPayload();
    sub_1A41D2ED0(&qword_1EB134A70, sub_1A41D3040);
    sub_1A41D2ED0(&qword_1EB134A78, sub_1A41D2F9C);
    sub_1A5249744();

    return (*(v17 + 8))(v19, v21);
  }

  else
  {
    v31 = a1;
    sub_1A3CA3BA4(0, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    sub_1A5243EC4();
    sub_1A3D6EC6C();
    sub_1A3D6ECFC();
    sub_1A41D2ED0(&qword_1EB128FE0, MEMORY[0x1E69C2928]);

    sub_1A5242A24();

    sub_1A5242A34();
    v23 = v26;
    v24 = v30;
    (v26[2])(v29, v9, v30);
    swift_storeEnumTagMultiPayload();
    sub_1A41D2ED0(&qword_1EB134A70, sub_1A41D3040);
    sub_1A41D2ED0(&qword_1EB134A78, sub_1A41D2F9C);
    sub_1A5249744();
    return v23[1](v9, v24);
  }
}

uint64_t sub_1A41CF9D0()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D2F18(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  PhotosObservableAlbum.keyAsset.getter();
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  v7 = sub_1A52429A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
  return sub_1A5243ED4();
}

uint64_t sub_1A41CFBB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8))
  {
    v6 = sub_1A437C79C();
    return sub_1A3CA5F64(v6, a1, type metadata accessor for LemonadeFeedBodyStyle);
  }

  else
  {
    v8 = sub_1A43A1D44();
    sub_1A3CA5F64(v8, v5, type metadata accessor for LemonadeItemsLayoutSpec.Style);
    v9 = sub_1A3DC1AF8();
    return sub_1A437C3B8(v5, 5, v9, v10 & 1, a1);
  }
}

uint64_t sub_1A41CFCF4()
{
  sub_1A41D4294();

  return sub_1A3C47918();
}

void sub_1A41CFD30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = a1;
  sub_1A3CA3BA4(0, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
  sub_1A3CA39F8(&qword_1EB1290D0);

  v24 = a2;
  sub_1A5243E44();
  KeyPath = swift_getKeyPath();
  sub_1A41D2FBC(0, &qword_1EB1242C8, sub_1A3D6CDE0, sub_1A3D6D7F4, MEMORY[0x1E697E830]);
  v9 = (a2 + *(v8 + 36));
  sub_1A3D6D7F4(0);
  v22 = *(v10 + 28);
  v11 = v2;
  sub_1A3CA5F64(v2, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
  sub_1A524CC54();
  v12 = sub_1A524CC44();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1A3CA2558(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
  sub_1A3CA5F64(v2, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
  v16 = sub_1A524CC44();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = MEMORY[0x1E69E85E0];
  sub_1A3CA2558(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v13, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
  sub_1A524BB24();
  v18 = v22;
  sub_1A524B944();
  sub_1A3D6D85C(0);
  (*(*(v19 - 8) + 56))(v9 + v18, 0, 1, v19);
  *v9 = KeyPath;
  v20 = sub_1A41D2C60(*v11);
  LOBYTE(v13) = (*(*v20 + 152))(v20);

  sub_1A41D346C();
  *(v24 + *(v21 + 36)) = (v13 & 1) == 0;
}

uint64_t sub_1A41D00B4(uint64_t a1, void **a2)
{
  v3 = sub_1A524BB24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A41D2C60(*a2);
  (*(v4 + 104))(v6, *MEMORY[0x1E697D708], v3);
  v8 = sub_1A524BB04();
  (*(v4 + 8))(v6, v3);
  (*(*v7 + 160))(v8 & 1);
}

void sub_1A41D01F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (MEMORY[0x1A590D320]())
  {
    v7 = *(a1 + 16);
    v8 = *(a2 + 40);
    if (v8)
    {
      (*((*MEMORY[0x1E69E7D40] & *v8) + 0x2D0))(v7);
    }

    else
    {
      v13 = v7;
    }

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(a3);
  }

  v9 = type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0);
  v10 = sub_1A41D2ED0(&qword_1EB129D90, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
  v11 = sub_1A3C66934(v3, v9, v10);
  v12 = *(a2 + 40);
  if (v12)
  {
    (*((*MEMORY[0x1E69E7D40] & *v12) + 0x2D0))(v11);
  }

  LemonadePhotosPagingAssetCollectionGridConfiguration.init(itemListManager:initialItem:defaultSectionBodyStyle:selectionCoordinator:)(a3);
}

uint64_t sub_1A41D039C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v22 = a1;
  v24 = a2;
  sub_1A41D4EB8(0, &qword_1EB12B708, sub_1A3D6DDB0, sub_1A3D6E940);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  sub_1A3D6E940();
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A3D6DDB0();
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249834();
  v27 = v2;
  sub_1A41D2FBC(0, &qword_1EB12B718, sub_1A3D6DE64, sub_1A3D6E100, MEMORY[0x1E697F960]);
  sub_1A3D6E5A4();
  sub_1A5247F24();
  sub_1A5249824();
  v25 = v2;
  v26 = v22;
  sub_1A3C37060(0, &qword_1EB12B780, &type metadata for LemonadeTransientCollectionSortingUtilities.ResetButton, MEMORY[0x1E69E6720]);
  sub_1A3D6E9D4();
  sub_1A5247F24();
  v17 = *(v23 + 48);
  (*(v14 + 16))(v5, v16, v13);
  (*(v8 + 16))(&v5[v17], v10, v7);
  v18 = v24;
  sub_1A52495D4();
  (*(v8 + 8))(v10, v7);
  (*(v14 + 8))(v16, v13);
  sub_1A3D6EB9C();
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_1A41D075C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  sub_1A41D4214(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v62 - v4;
  sub_1A3D6E2C8();
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D3848();
  v76 = v7;
  v74 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6E100();
  v81 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D2FBC(0, &qword_1EB12B8D8, sub_1A3D6DE64, sub_1A3D6E100, MEMORY[0x1E697F948]);
  v79 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v62 - v12;
  v13 = type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0);
  v77 = *(v13 - 8);
  v14 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DF58();
  v19 = v18;
  v63 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DF10(0);
  v64 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D3708();
  v67 = v25;
  v65 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DE64();
  v78 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v66 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A41D2C60(*a1);
  v31 = (*(*v30 + 152))(v30);

  if (v31)
  {
    sub_1A5247B44();
    sub_1A3CA5F64(a1, &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
    v32 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v33 = swift_allocObject();
    sub_1A3CA2558(&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
    MEMORY[0x1A5906A80](v17, sub_1A41D4BD0, v33);
    v83 = sub_1A3C38BD4();
    v84 = v34;
    sub_1A41D2ED0(&qword_1EB121B60, sub_1A3D6DF58);
    sub_1A3D5F9DC();
    sub_1A524AC94();

    (*(v63 + 8))(v21, v19);
    sub_1A41D3988(0, &qword_1EB12B738, sub_1A3D6DF10, sub_1A3D6E020);
    v36 = v35;
    v37 = sub_1A3D6E020();
    v38 = sub_1A5243474();
    v39 = sub_1A41D2ED0(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    v40 = v64;
    v83 = v64;
    v84 = v38;
    v85 = v37;
    v86 = v39;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1A524A4C4();
    sub_1A3CA5F04(v24, sub_1A3D6DF10);
    v83 = v40;
    v84 = v36;
    v85 = v37;
    v86 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v43 = v66;
    v42 = v67;
    sub_1A524AA94();
    (*(v65 + 8))(v27, v42);
    v44 = sub_1A3D6DE64;
    sub_1A41D4DF0(v43, v80, sub_1A3D6DE64);
  }

  else
  {
    v83 = sub_1A3C38BD4();
    v84 = v45;
    sub_1A3CA5F64(a1, &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
    v46 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v47 = swift_allocObject();
    sub_1A3CA2558(&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
    sub_1A3D5F9DC();
    v48 = v68;
    sub_1A524B754();
    v83 = sub_1A3C38BD4();
    v84 = v49;
    sub_1A3D6E520();
    v50 = v70;
    v51 = v71;
    sub_1A524AC94();

    (*(v69 + 8))(v48, v50);
    sub_1A41D3988(0, &qword_1EB12B758, sub_1A3D6E2C8, sub_1A3D6E470);
    v53 = v52;
    v54 = sub_1A3D6E470();
    v55 = sub_1A5243474();
    v56 = sub_1A41D2ED0(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    v57 = v73;
    v83 = v73;
    v84 = v55;
    v85 = v54;
    v86 = v56;
    v58 = swift_getOpaqueTypeConformance2();
    v59 = v72;
    sub_1A524A4C4();
    sub_1A3CA5F04(v51, sub_1A3D6E2C8);
    v83 = v57;
    v84 = v53;
    v85 = v54;
    v86 = v58;
    swift_getOpaqueTypeConformance2();
    v43 = v75;
    v60 = v76;
    sub_1A524AA94();
    (*(v74 + 8))(v59, v60);
    v44 = sub_1A3D6E100;
    sub_1A41D4DF0(v43, v80, sub_1A3D6E100);
  }

  swift_storeEnumTagMultiPayload();
  sub_1A3D6E668();
  sub_1A3D6E7D4();
  sub_1A5249744();
  return sub_1A41D4E58(v43, v44);
}

uint64_t sub_1A41D12F4(uint64_t a1, void (*a2)(void), void (*a3)(void))
{
  v5 = sub_1A5243474();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D74();
  a2(0);
  a3();
  sub_1A41D2ED0(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  sub_1A524A944();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A41D1440(uint64_t a1, uint64_t a2, char a3)
{
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    *(v7 + 24) = a2;
    sub_1A3E565A8(v12);
    if (v3)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a3 & 1;
      }

      __break(1u);
    }

    a3 = v12[0];
    v9 = swift_isEscapingClosureAtFileLocation();

    if ((v9 & 1) == 0)
    {
      return a3 & 1;
    }

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v11 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v11);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

uint64_t sub_1A41D15F8(void **a1)
{
  v1 = sub_1A41D2C60(*a1);
  v2 = (*(*v1 + 168))(v5);
  *v3 = !*v3;
  v2(v5, 0);
}

uint64_t sub_1A41D1688()
{
  sub_1A3CA3BA4(0, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
  sub_1A3CA39F8(&qword_1EB1290D0);

  return sub_1A5243E44();
}

uint64_t sub_1A41D1750()
{
  sub_1A524CC54();
  v3 = v0;
  return sub_1A41D1440(sub_1A41D50C0, &v2, "PhotosUICore/LemonadeMediaTypesFeature.swift") & 1;
}

uint64_t sub_1A41D17C8()
{
  sub_1A41D2ED0(&qword_1EB129D88, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);

  return sub_1A3C47918();
}

uint64_t sub_1A41D1894()
{
  sub_1A41D4A48(0, &qword_1EB134A50, MEMORY[0x1E69C2098]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A3CA3BA4(0, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
  sub_1A5243EC4();
  sub_1A3D6EC6C();
  sub_1A3D6ECFC();
  sub_1A41D2ED0(&qword_1EB128FE0, MEMORY[0x1E69C2928]);

  sub_1A5242A24();

  return sub_1A5242A34();
}

uint64_t sub_1A41D1A6C()
{
  sub_1A41D2ED0(&qword_1EB134AA0, type metadata accessor for LemonadeMediaTypesFeature.MacFeedProvider);

  return sub_1A3C47918();
}

unint64_t sub_1A41D1AD8()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D2F18(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  result = sub_1A5242704();
  if (result >> 62)
  {
    v9 = result;
    v10 = sub_1A524E2B4();
    result = v9;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

    memset(v12, 0, sizeof(v12));
    v13 = 1;
    v11 = sub_1A52429A4();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
    return sub_1A5243ED4();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1A41D1D40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = MEMORY[0x1A590D320]();
  if (v14)
  {
    v16 = *(a1 + 16);
    v17 = *(a2 + 40);
    if (v17)
    {
      (*((*MEMORY[0x1E69E7D40] & *v17) + 0x2D0))(v16);
    }

    else
    {
      v21 = v16;
    }

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(a7);
  }

  v22[0] = a3;
  v22[1] = a4;
  v18 = a5(v14, v15);
  v19 = sub_1A3C66934(v22, a6, v18);
  v20 = *(a2 + 40);
  if (v20)
  {
    (*((*MEMORY[0x1E69E7D40] & *v20) + 0x2D0))(v19);
  }

  LemonadePhotosPagingAssetCollectionGridConfiguration.init(itemListManager:initialItem:defaultSectionBodyStyle:selectionCoordinator:)(a7);
}

void sub_1A41D1EE0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v9 = *a1;
  type metadata accessor for LemonadeMediaTypesItemListManager();
  v10 = v9;

  sub_1A4A19AF0(v10, a2, a5, a6);
}

uint64_t sub_1A41D1F54(uint64_t a1)
{
  sub_1A41D2F18(0, &qword_1EB134A80, sub_1A41D3DBC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v7 - v3;
  v7[1] = a1;
  sub_1A3CA3BA4(0, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
  sub_1A5243EC4();
  sub_1A3D6EC6C();
  sub_1A3D6ECFC();
  sub_1A41D2ED0(&qword_1EB128FE0, MEMORY[0x1E69C2928]);

  sub_1A5242A44();
  sub_1A41D3DBC(0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  return sub_1A5242A54();
}

uint64_t sub_1A41D21A8()
{
  sub_1A41D473C();

  return sub_1A3C47918();
}

id sub_1A41D21E4()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 mediaTypesCollectionList];

  return v2;
}

uint64_t sub_1A41D223C(uint64_t a1, int a2)
{
  v3 = v2;
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1A41D4F34();
  v39 = a2;
  result = sub_1A524E774();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    v38 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v6 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1A41D2ED0(&qword_1EB126058, MEMORY[0x1E6968FB0]);
      result = sub_1A524C4A4();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v6 = v37;
      v9 = v38;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1A41D2608(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1A3D6B1D0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1A41D27D4();
      goto LABEL_7;
    }

    sub_1A41D223C(v17, a3 & 1);
    v22 = sub_1A3D6B1D0(a2);
    if ((v18 & 1) == (v23 & 1))
    {
      v14 = v22;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_1A3D6B910(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void *sub_1A41D27D4()
{
  v1 = v0;
  v31 = sub_1A5240E64();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D4F34();
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || result >= v3 + 64 + 8 * v7)
    {
      result = memmove(result, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;

        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v27 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

unint64_t sub_1A41D2A40(uint64_t a1)
{
  sub_1A41D4EB8(0, &qword_1EB126040, MEMORY[0x1E6968FB0], type metadata accessor for LemonadeMediaTypesEditableListModel);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A41D4F34();
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A41D4FE0(v10, v6, &qword_1EB126040, MEMORY[0x1E6968FB0], type metadata accessor for LemonadeMediaTypesEditableListModel);
      result = sub_1A3D6B1D0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A5240E64();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A41D2C60(void *a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  if (qword_1EB167BF0 != -1)
  {
    swift_once();
  }

  v7 = [a1 photoLibraryURL];
  sub_1A5240DE4();

  swift_beginAccess();
  v8 = qword_1EB167BF8;
  if (!*(qword_1EB167BF8 + 16) || (v9 = sub_1A3D6B1D0(v6), (v10 & 1) == 0))
  {
    swift_endAccess();
    (*(v3 + 8))(v6, v2);
    type metadata accessor for LemonadeMediaTypesEditableListModel();
    v13 = a1;
    sub_1A4A1BA84();
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = *(v3 + 8);

  v12(v6, v2);
  return v11;
}

uint64_t sub_1A41D2ED0(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A41D2F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A41D2FBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A41D3040()
{
  if (!qword_1EB134A68)
  {
    sub_1A3CA3BA4(255, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    sub_1A5243EC4();
    sub_1A3D6ECFC();
    sub_1A41D2ED0(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    v0 = sub_1A5242A94();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB134A68);
    }
  }
}

unint64_t sub_1A41D313C()
{
  result = qword_1EB129D80;
  if (!qword_1EB129D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129D80);
  }

  return result;
}

uint64_t sub_1A41D3190@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0) - 8);
  v4 = sub_1A41D2C60(*(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80))));
  v5 = (*(*v4 + 152))(v4);

  v6 = sub_1A524BB24();
  v7 = *(*(v6 - 8) + 104);
  v8 = MEMORY[0x1E697D708];
  if ((v5 & 1) == 0)
  {
    v8 = MEMORY[0x1E697D710];
  }

  v9 = *v8;

  return v7(a1, v9, v6);
}

uint64_t objectdestroyTm_32()
{
  v1 = (type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[7];
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3D6D890(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v3 + 24), *(v3 + 32), *(v3 + 40));
    sub_1A3C47A98();
    v6 = *(v5 + 64);
    v7 = sub_1A5242C84();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    if (*(v3 + 40) >= 3uLL)
    {
    }

    if (*(v3 + 56) >= 3uLL)
    {
    }

    sub_1A3C4208C(*(v3 + 72), *(v3 + 80), *(v3 + 88));
  }

  return swift_deallocObject();
}

uint64_t sub_1A41D33FC(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1A41D00B4(a1, v4);
}

void sub_1A41D346C()
{
  if (!qword_1EB12B700)
  {
    sub_1A41D2FBC(255, &qword_1EB1242C8, sub_1A3D6CDE0, sub_1A3D6D7F4, MEMORY[0x1E697E830]);
    v0 = sub_1A5248804();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB12B700);
    }
  }
}

uint64_t sub_1A41D3510()
{
  v0 = sub_1A524C624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A5243424();
  if (!v6)
  {
    v5 = sub_1A3C38BD4();
  }

  v7 = v5;
  v8 = sub_1A5243414();
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    sub_1A524C5F4();
    sub_1A524C5E4();
    sub_1A524C5D4();

    sub_1A524C5E4();
    v12[1] = v10;
    sub_1A524C5C4();
    sub_1A524C5E4();
    sub_1A524C614();
    v7 = sub_1A524C774();
    (*(v1 + 8))(v3, v0);
  }

  return v7;
}

void sub_1A41D3708()
{
  if (!qword_1EB12B728)
  {
    sub_1A3D6DF10(255);
    sub_1A41D3988(255, &qword_1EB12B738, sub_1A3D6DF10, sub_1A3D6E020);
    sub_1A3D6E020();
    sub_1A5243474();
    sub_1A41D2ED0(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12B728);
    }
  }
}

void sub_1A41D3848()
{
  if (!qword_1EB12B750)
  {
    sub_1A3D6E2C8();
    sub_1A41D3988(255, &qword_1EB12B758, sub_1A3D6E2C8, sub_1A3D6E470);
    sub_1A3D6E470();
    sub_1A5243474();
    sub_1A41D2ED0(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12B750);
    }
  }
}

void sub_1A41D3988(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_1A5243474();
    a4();
    sub_1A41D2ED0(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A41D3A70(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = **(v1 + 16);
  v5 = sub_1A41D2C60(v4);
  v6 = (*(*v5 + 152))(v5);

  if (v6)
  {
    v7 = [v4 px_virtualCollections];
    v8 = [v7 mediaTypesCollectionList];

    v9 = v3;
    PXDisplayCollectionDetailedCountsMake(v8);
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_1A41D3BC0()
{
  v0 = sub_1A524C624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A52426E4();
  if (!v6)
  {
    v5 = sub_1A3C38BD4();
  }

  v7 = v5;
  sub_1A3D71010();
  v8 = sub_1A5242724();
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    sub_1A524C5F4();
    sub_1A524C5E4();
    sub_1A524C5D4();

    sub_1A524C5E4();
    v12[1] = v10;
    sub_1A524C5C4();
    sub_1A524C5E4();
    sub_1A524C614();
    v7 = sub_1A524C774();
    (*(v1 + 8))(v3, v0);
  }

  return v7;
}

uint64_t sub_1A41D3DDC()
{
  v0 = sub_1A524C624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A52426E4();
  if (!v6)
  {
    v5 = sub_1A3C38BD4();
  }

  v7 = v5;
  sub_1A3D71010();
  v8 = sub_1A5242724();
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    sub_1A524C5F4();
    sub_1A524C5E4();
    sub_1A524C5D4();

    sub_1A524C5E4();
    v12[1] = v10;
    sub_1A524C5C4();
    sub_1A524C5E4();
    sub_1A524C614();
    v7 = sub_1A524C774();
    (*(v1 + 8))(v3, v0);
  }

  return v7;
}

unint64_t sub_1A41D3FD8()
{
  result = qword_1EB134A90;
  if (!qword_1EB134A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134A90);
  }

  return result;
}

uint64_t sub_1A41D40B0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_1A3C37A4C(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41D41C0()
{
  result = qword_1EB134A98;
  if (!qword_1EB134A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134A98);
  }

  return result;
}

void sub_1A41D4214(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
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

unint64_t sub_1A41D4294()
{
  result = qword_1EB129D78;
  if (!qword_1EB129D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129D78);
  }

  return result;
}

unint64_t sub_1A41D4314(uint64_t a1)
{
  result = sub_1A41D313C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A41D444C(uint64_t a1)
{
  result = sub_1A41D2ED0(&qword_1EB129D90, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A41D4604(uint64_t a1)
{
  result = sub_1A41D2ED0(&qword_1EB134AA8, type metadata accessor for LemonadeMediaTypesFeature.MacFeedProvider);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A41D473C()
{
  result = qword_1EB134AB0;
  if (!qword_1EB134AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134AB0);
  }

  return result;
}

unint64_t sub_1A41D47BC(uint64_t a1)
{
  result = sub_1A41D3FD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A41D4904()
{
  result = qword_1EB134AB8;
  if (!qword_1EB134AB8)
  {
    sub_1A41D2FBC(255, &qword_1EB134AC0, sub_1A41D3040, sub_1A41D2F9C, MEMORY[0x1E697F960]);
    sub_1A41D2ED0(&qword_1EB134A70, sub_1A41D3040);
    sub_1A41D2ED0(&qword_1EB134A78, sub_1A41D2F9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134AB8);
  }

  return result;
}

void sub_1A41D4A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A3CA3BA4(255, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    v9[0] = v6;
    v9[1] = sub_1A5243EC4();
    v9[2] = sub_1A3D6EC6C();
    v9[3] = sub_1A3D6ECFC();
    v9[4] = sub_1A41D2ED0(&qword_1EB128FE0, MEMORY[0x1E69C2928]);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1A41D4B58@<X0>(_BYTE *a1@<X8>)
{
  v3 = sub_1A41D2C60(**(v1 + 16));
  v4 = (*(*v3 + 152))(v3);

  *a1 = v4 & 1;
  return result;
}

uint64_t objectdestroy_101Tm()
{
  v1 = (type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3D6D890(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v3 + 24), *(v3 + 32), *(v3 + 40));
    sub_1A3C47A98();
    v6 = *(v5 + 64);
    v7 = sub_1A5242C84();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    if (*(v3 + 40) >= 3uLL)
    {
    }

    if (*(v3 + 56) >= 3uLL)
    {
    }

    sub_1A3C4208C(*(v3 + 72), *(v3 + 80), *(v3 + 88));
  }

  return swift_deallocObject();
}

uint64_t sub_1A41D4D50(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  sub_1A524CC54();
  v6[2] = v4;
  return sub_1A3C67884(a1, v6);
}

uint64_t sub_1A41D4DF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41D4E58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A41D4EB8(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t), void (*a4)(uint64_t))
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

void sub_1A41D4F34()
{
  if (!qword_1EB1204A0)
  {
    sub_1A5240E64();
    type metadata accessor for LemonadeMediaTypesEditableListModel();
    sub_1A41D2ED0(&qword_1EB126058, MEMORY[0x1E6968FB0]);
    v0 = sub_1A524E7A4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB1204A0);
    }
  }
}

uint64_t sub_1A41D4FE0(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t), void (*a5)(uint64_t))
{
  sub_1A41D4EB8(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t PickerMode.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

id PickerConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void PickerConfiguration.init()()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR___PXPickerConfiguration_clientBundleIdentifier);
  *v2 = 0;
  v2[1] = 0;
  v3 = OBJC_IVAR___PXPickerConfiguration_assetsFilterPredicate;
  *(v0 + OBJC_IVAR___PXPickerConfiguration_assetsFilterPredicate) = 0;
  *(v0 + OBJC_IVAR___PXPickerConfiguration_selectionCoordinator) = 0;
  *(v0 + OBJC_IVAR___PXPickerConfiguration_selectionDelegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR___PXPickerConfiguration_preselectedLocalIdentifiers) = 0;
  v4 = OBJC_IVAR___PXPickerConfiguration_includedLocalIdentifiers;
  *(v0 + OBJC_IVAR___PXPickerConfiguration_includedLocalIdentifiers) = 0;
  v5 = OBJC_IVAR___PXPickerConfiguration_disabledLocalIdentifiers;
  *(v0 + OBJC_IVAR___PXPickerConfiguration_disabledLocalIdentifiers) = 0;
  v6 = (v0 + OBJC_IVAR___PXPickerConfiguration_navigationTitle);
  *v6 = 0;
  v6[1] = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_targetAlbum) = 0;
  v7 = (v1 + OBJC_IVAR___PXPickerConfiguration_targetAlbumName);
  *v7 = 0;
  v7[1] = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_sourceAlbum) = 0;
  v8 = (v1 + OBJC_IVAR___PXPickerConfiguration_prompt);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_collectionList) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_allowDeselectionOfPreselectedItems) = 1;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_allowsSwipeToSelect) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_assetAspectRatio) = 0;
  swift_beginAccess();
  v9 = *(v1 + v3);
  *(v1 + v3) = 0;

  swift_beginAccess();
  *v2 = 0;
  v2[1] = 0;

  *(v1 + OBJC_IVAR___PXPickerConfiguration_collectionsAspectRatio) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_desiredCollectionSuggestions) = 0;
  swift_beginAccess();
  *(v1 + v5) = 0;

  *(v1 + OBJC_IVAR___PXPickerConfiguration_displayMode) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_disableAutoPlaybackInPreview) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludedCollections) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeDuplicates) = 1;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeHiddenAlbum) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeMapAlbum) = 1;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeRecentlyDeleted) = 1;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeRecovered) = 1;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeSharedAlbums) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_excludeEmptyAlbums) = 1;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_hasClearBackgroundColor) = 0;
  swift_beginAccess();
  *(v1 + v4) = 0;

  *(v1 + OBJC_IVAR___PXPickerConfiguration_includeFeaturedCollections) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isForAlbumPicker) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isForAssetPicker) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isForCollectionsPicker) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isForSharedAlbumPicker) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isForSharedCollectionPicker) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isLimitedLibraryPicker) = 0;
  *(v1 + OBJC_IVAR___PXPickerConfiguration_isSidebarVisible) = 0;
  swift_beginAccess();
  *v6 = 0;
  v6[1] = 0;

  swift_beginAccess();
  swift_beginAccess();
  sub_1A5244244();
  swift_allocObject();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41D5648@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1C8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D570C()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_sourceType;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D5750(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_sourceType;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D5800@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1E0))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A41D595C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x1F8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D5A24()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_hasClearBackgroundColor;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D5A68(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_hasClearBackgroundColor;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

void *sub_1A41D5B18@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x210))(&v4);
  *a2 = v4;
  return result;
}

uint64_t sub_1A41D5B8C(char *a1, void **a2)
{
  v2 = *a2;
  v4 = *a1;
  return (*((*MEMORY[0x1E69E7D40] & *v2) + 0x218))(&v4);
}

uint64_t sub_1A41D5BFC@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_displayMode;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_1A41D5C50(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR___PXPickerConfiguration_displayMode;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1A41D5D00@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x228))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D5DC8()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isLimitedLibraryPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D5E0C(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isLimitedLibraryPicker;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D5EBC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x240))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D5F84()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_reverseSortOrder;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D5FC8(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_reverseSortOrder;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D6078@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x258))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D60DC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x260);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A41D614C()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_assetsFilterPredicate;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A41D6198(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_assetsFilterPredicate;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D6250@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x270))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D6318()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_disableAutoPlaybackInPreview;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D635C(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_disableAutoPlaybackInPreview;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D640C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x288))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D6470(uint64_t a1, void **a2)
{
  v2 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x290);

  return v2(v3);
}

uint64_t sub_1A41D6524(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_photosSelection;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D65DC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2A0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D66A4()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_selectionModeEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D66E8(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_selectionModeEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D6798@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2B8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D685C()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_selectionLimit;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D68A0(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_selectionLimit;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D6958@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2D0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D69BC(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2D8);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A41D6A2C()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_selectionCoordinator;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A41D6A78(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_selectionCoordinator;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D6B30@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x2E8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A41D6B94(uint64_t a1, void **a2)
{
  v2 = *(a1 + 8);
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x2F0);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_1A41D6C60(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR___PXPickerConfiguration_selectionDelegate;
  swift_beginAccess();
  *(v4 + 8) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1A41D6CCC(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___PXPickerConfiguration_selectionDelegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_1A3FE25C0;
}

uint64_t sub_1A41D6D6C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x300))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D6E34()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_showCheckmarkOnSourceAlbum;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D6E78(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_showCheckmarkOnSourceAlbum;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D6F28@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x318))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D6FF0()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_allowsSwipeToSelect;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D7034(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_allowsSwipeToSelect;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D70E4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x330))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D71AC()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_wantsNumberedSelectionStyle;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D71F0(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_wantsNumberedSelectionStyle;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D72A0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x348))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D7368()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_allowDeselectionOfPreselectedItems;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D73AC(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_allowDeselectionOfPreselectedItems;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D745C@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x360))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D75A4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x378))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D76EC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x390))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D7834@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3A8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A41D7990@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3C0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D7A58()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_showNavigationBar;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D7A9C(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_showNavigationBar;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D7B4C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3D8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D7C14()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isSidebarVisible;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D7C58(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isSidebarVisible;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D7D08@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x3F0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D7DD0()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isForAssetPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D7E14(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isForAssetPicker;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1A41D7F88()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_assetAspectRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D7FCC(double a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_assetAspectRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D807C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x420))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D8144()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeSharedAlbums;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D8188(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeSharedAlbums;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D8238@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x438))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D8300()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeHiddenAlbum;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D8344(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeHiddenAlbum;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D83F4@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x450))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D84BC()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeEmptyAlbums;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D8500(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeEmptyAlbums;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D85B0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x468))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D8678()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isForAlbumPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D86BC(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isForAlbumPicker;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D876C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x480))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D8834()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isForSharedAlbumPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D8878(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isForSharedAlbumPicker;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D8928@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x498))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D89F0()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isForSharedCollectionPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D8A34(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isForSharedCollectionPicker;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D8AE4@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4B0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D8B48(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4B8);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A41D8BB8()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_targetAlbum;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A41D8C04(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_targetAlbum;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D8CBC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4C8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A41D8E18@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4E0))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D8E7C(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x4E8);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A41D8EEC()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_sourceAlbum;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A41D8F38(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_sourceAlbum;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D8FF0@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x4F8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D90B8()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_scrollToSourceAlbumWhenPresented;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D90FC(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_scrollToSourceAlbumWhenPresented;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D91AC@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x510))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A41D935C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x528))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D9424()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_wantsPets;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D9468(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_wantsPets;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1A41D95DC()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_collectionsAspectRatio;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D9620(double a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_collectionsAspectRatio;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D96D0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x558))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41D9734(id *a1, void **a2)
{
  v2 = *a1;
  v3 = *((*MEMORY[0x1E69E7D40] & **a2) + 0x560);
  v4 = *a1;
  return v3(v2);
}

void *sub_1A41D97A4()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_collectionList;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A41D97F0(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_collectionList;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A41D98A8@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x570))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D9970()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeRecentlyDeleted;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D99B4(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeRecentlyDeleted;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D9A64@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x588))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D9B2C()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeDuplicates;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D9B70(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeDuplicates;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D9C20@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5A0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D9CE8()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeMapAlbum;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D9D2C(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeMapAlbum;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D9DDC@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5B8))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41D9EA4()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludeRecovered;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41D9EE8(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludeRecovered;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41D9F98@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5D0))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41DA060()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_isForCollectionsPicker;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41DA0A4(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_isForCollectionsPicker;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41DA154@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x5E8))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41DA218()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_desiredCollectionSuggestions;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41DA25C(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_desiredCollectionSuggestions;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41DA30C@<X0>(void **a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x600))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41DA3D4()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_includeFeaturedCollections;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41DA418(char a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_includeFeaturedCollections;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41DA4C8@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x1E69E7D40] & **a1) + 0x618))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41DA58C()
{
  v1 = OBJC_IVAR___PXPickerConfiguration_excludedCollections;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A41DA5D0(uint64_t a1)
{
  v3 = OBJC_IVAR___PXPickerConfiguration_excludedCollections;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A41DA720(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7D40];
  v4 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x1C8))();
  if (v4 > 6)
  {
    return 1;
  }

  if (((1 << v4) & 0x65) == 0)
  {
    return a1 != 16;
  }

  result = (*((*v3 & *v1) + 0x618))();
  if (((result | a1) & 0x8000000000000000) == 0)
  {
    return (a1 & ~result) == 0;
  }

  __break(1u);
  return result;
}

BOOL sub_1A41DA7FC(_BOOL8 result, uint64_t a2)
{
  if (((a2 | result) & 0x8000000000000000) == 0)
  {
    return (result & ~a2) == 0;
  }

  __break(1u);
  return result;
}

id PickerConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PickerConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A41DA968()
{
  result = qword_1EB134C50;
  if (!qword_1EB134C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134C50);
  }

  return result;
}

uint64_t sub_1A41DCC5C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata accessor for LemonadeMemoriesCreationButton()
{
  result = qword_1EB17CED0;
  if (!qword_1EB17CED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A41DCEA0@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  sub_1A41DD738(0, &qword_1EB134CA8, sub_1A41DD6FC, MEMORY[0x1E6981E70], MEMORY[0x1E697F948]);
  v65 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v66 = &v49 - v3;
  v4 = type metadata accessor for LemonadeMemoriesCreationButton();
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v56 = v5;
  v57 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D93850();
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41DD6FC(0);
  v64 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v61 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A52453A4();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v62 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v63 = &v49 - v14;
  sub_1A41DDA30(0, &qword_1EB128F90, MEMORY[0x1E69C14A0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v49 - v19;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v49 - v23;
  v25 = v1;
  v26 = *(v1 + *(v4 + 28));
  if (v26)
  {
    (*(*v26 + 192))(v22);
    (*(v11 + 56))(v20, 0, 1, v10);
  }

  else
  {
    (*(v11 + 56))(v20, 1, 1, v10);
  }

  sub_1A475C0F0(v20, v24);
  v27 = MEMORY[0x1E69C14A0];
  sub_1A3C690A8(v20, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
  v28 = *(*(v25 + *(v4 + 24)) + OBJC_IVAR____TtC12PhotosUICore25LemonadeNavigationContext_presentationContext);
  sub_1A41DEDAC(v24, v17, &qword_1EB128F90, v27, MEMORY[0x1E69E6720]);
  if ((*(v11 + 48))(v17, 1, v10) == 1)
  {
    sub_1A3C690A8(v17, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
LABEL_10:
    swift_storeEnumTagMultiPayload();
    sub_1A41DDA94();
    sub_1A5249744();
    return sub_1A3C690A8(v24, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
  }

  v29 = *(v11 + 32);
  v30 = v63;
  v29(v63, v17, v10);
  if ((static LemonadeMemoriesCreationAvailabilityUtils.shouldShowMemoryCreationButton(for:)() & 1) == 0 || (LOBYTE(v68[0]) = v28, !sub_1A475C390(v68)))
  {
    (*(v11 + 8))(v30, v10);
    goto LABEL_10;
  }

  v31 = *(v11 + 16);
  v53 = v11 + 16;
  v54 = v31;
  v32 = v62;
  v31(v62, v30, v10);
  v33 = v57;
  sub_1A41DEE84(v25, v57, type metadata accessor for LemonadeMemoriesCreationButton);
  v34 = *(v11 + 80);
  v52 = ((v34 + 16) & ~v34) + v12;
  v35 = (v34 + 16) & ~v34;
  v50 = v35;
  v51 = v34 | 7;
  v36 = (v52 + *(v55 + 80)) & ~*(v55 + 80);
  v37 = swift_allocObject();
  v29((v37 + v35), v32, v10);
  sub_1A41DEE1C(v33, v37 + v36, type metadata accessor for LemonadeMemoriesCreationButton);
  v38 = v58;
  sub_1A524B704();
  sub_1A41DD8E4();
  v39 = sub_1A41DD9E8(&qword_1EB127490, sub_1A3D93850);
  v40 = sub_1A5243474();
  v41 = sub_1A41DD9E8(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
  v42 = v60;
  v68[0] = v60;
  v68[1] = v40;
  v68[2] = v39;
  v68[3] = v41;
  swift_getOpaqueTypeConformance2();
  v43 = v61;
  sub_1A524A4C4();
  (*(v59 + 8))(v38, v42);
  v44 = v62;
  v45 = v63;
  v54(v62, v63, v10);
  v46 = swift_allocObject();
  v29((v46 + v50), v44, v10);
  v47 = (v43 + *(v64 + 36));
  *v47 = sub_1A41DEA14;
  v47[1] = v46;
  v47[2] = 0;
  v47[3] = 0;
  sub_1A3CE2A94(v43, v66);
  swift_storeEnumTagMultiPayload();
  sub_1A41DDA94();
  sub_1A5249744();
  sub_1A3CE2AF8(v43);
  (*(v11 + 8))(v45, v10);
  return sub_1A3C690A8(v24, &qword_1EB128F90, MEMORY[0x1E69C14A0]);
}

void sub_1A41DD738(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1A41DD7A4()
{
  if (!qword_1EB134CB8)
  {
    sub_1A3D93850();
    sub_1A41DD8E4();
    sub_1A41DD9E8(&qword_1EB127490, sub_1A3D93850);
    sub_1A5243474();
    sub_1A41DD9E8(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB134CB8);
    }
  }
}

void sub_1A41DD8E4()
{
  if (!qword_1EB121F10)
  {
    sub_1A3D93850();
    sub_1A5243474();
    sub_1A41DD9E8(&qword_1EB127490, sub_1A3D93850);
    sub_1A41DD9E8(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v1)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB121F10);
    }
  }
}

uint64_t sub_1A41DD9E8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1A41DDA30(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1A41DDA94()
{
  result = qword_1EB134CC0;
  if (!qword_1EB134CC0)
  {
    sub_1A41DD6FC(255);
    sub_1A3D93850();
    sub_1A41DD8E4();
    sub_1A41DD9E8(&qword_1EB127490, sub_1A3D93850);
    sub_1A5243474();
    sub_1A41DD9E8(&qword_1EB124D90, MEMORY[0x1E69C24C8]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134CC0);
  }

  return result;
}

uint64_t sub_1A41DDC00()
{
  v0 = sub_1A52453A4();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, *MEMORY[0x1E69C1498], v0, v2);
  v5 = sub_1A5245394();
  result = (*(v1 + 8))(v4, v0);
  if (v5)
  {
    objc_opt_self();
    sub_1A40365B0();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return result;
}