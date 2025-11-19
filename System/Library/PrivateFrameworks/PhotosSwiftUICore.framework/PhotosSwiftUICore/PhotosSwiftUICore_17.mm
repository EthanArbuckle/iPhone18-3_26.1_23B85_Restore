void (*sub_1C113C8B8())(void *a1)
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosMockVideoPlayer___observationRegistrar;
  *v2 = v0;
  v5 = sub_1C113CF44();
  OUTLINED_FUNCTION_1_6(v5);

  *v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v2[7] = sub_1C113C720(v2);
  return sub_1C113C970;
}

uint64_t sub_1C113C9C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1C113CA18();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1C113CA18()
{
  swift_getKeyPath();
  sub_1C113CF44();
  OUTLINED_FUNCTION_6();

  OUTLINED_FUNCTION_7_4();
  return *(v0 + 33);
}

uint64_t sub_1C113CA80(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 33) = a2;
  return result;
}

void (*sub_1C113CAD4())(void *a1)
{
  v3 = OUTLINED_FUNCTION_4_1();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_3_4(v4);
  swift_getKeyPath();
  v2[5] = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosMockVideoPlayer___observationRegistrar;
  *v2 = v0;
  v5 = sub_1C113CF44();
  OUTLINED_FUNCTION_1_6(v5);

  *v2 = v1;
  swift_getKeyPath();
  OUTLINED_FUNCTION_2_3();

  v2[7] = sub_1C113C97C();
  return sub_1C113CB8C;
}

void *sub_1C113CB98()
{
  swift_getKeyPath();
  sub_1C113CF44();
  OUTLINED_FUNCTION_6();

  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

void sub_1C113CC00(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1C113C3BC(v1);
}

void sub_1C113CC30(uint64_t a1, void *a2)
{
  v2 = *(a1 + 40);
  *(a1 + 40) = a2;
  v3 = a2;
}

void sub_1C113CC64()
{
  v0 = sub_1C113CB98();
  if (v0)
  {
  }

  else
  {
    v1 = objc_opt_self();
    v2 = swift_allocObject();
    swift_weakInit();
    v5[4] = sub_1C113D438;
    v5[5] = v2;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 1107296256;
    v5[2] = sub_1C10CB7AC;
    v5[3] = &block_descriptor_11;
    v3 = _Block_copy(v5);

    v4 = [v1 scheduledTimerWithTimeInterval:1 repeats:v3 block:0.03];
    _Block_release(v3);
    sub_1C113C3BC(v4);
  }
}

uint64_t sub_1C113CD98()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1C113CE38();
  }

  return result;
}

void sub_1C113CDF0()
{
  v0 = sub_1C113CB98();
  [v0 invalidate];

  sub_1C113C3BC(0);
}

uint64_t sub_1C113CE38()
{
  v1 = sub_1C113C53C() + 0.03;
  v2 = *(v0 + 16);
  if (v2 < v1)
  {
    v1 = v1 - v2;
  }

  return sub_1C113C1AC(v1);
}

unint64_t sub_1C113CF44()
{
  result = qword_1EBE94A50;
  if (!qword_1EBE94A50)
  {
    type metadata accessor for PhotosMockVideoPlayer();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94A50);
  }

  return result;
}

uint64_t type metadata accessor for PhotosMockVideoPlayer()
{
  result = qword_1EBE94A58;
  if (!qword_1EBE94A58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL sub_1C113CFE8(unint64_t a1, unint64_t a2)
{
  v2 = (a1 | a2) == 0;
  if (a1 && a2)
  {
    sub_1C0FE7B20();
    v5 = a1;
    v6 = a2;
    v2 = sub_1C12666B0();
  }

  return (v2 & 1) == 0;
}

uint64_t PhotosMockVideoPlayer.deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosMockVideoPlayer___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMockVideoPlayer.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore21PhotosMockVideoPlayer___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C113D194()
{
  result = sub_1C1261F70();
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

unint64_t sub_1C113D3D4()
{
  result = qword_1EBE94A68;
  if (!qword_1EBE94A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94A70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94A68);
  }

  return result;
}

uint64_t View.photosShapeOverlay<A>(color:shape:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v20 = a5;
  v19 = a3;
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PhotosShapeOverlay();
  OUTLINED_FUNCTION_0();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v18 - v15;
  (*(v8 + 16))(v10, a2, a4);
  sub_1C113D7B8(v10, a1, a4, v16);

  MEMORY[0x1C68EE920](v16, v19, v11, v20);
  return (*(v13 + 8))(v16, v11);
}

uint64_t sub_1C113D624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  (*(v12 + 16))(&v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v13, v10);
  (*(v6 + 16))(v8, a1, a4);
  return sub_1C12629B0();
}

uint64_t sub_1C113D7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  (*(*(a3 - 8) + 32))(a4, a1);
  result = type metadata accessor for PhotosShapeOverlay();
  *(a4 + *(result + 36)) = a2;
  return result;
}

uint64_t PhotosShapeOverlay.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a1;
  v39 = a3;
  v36 = *(a2 + 16);
  v4 = sub_1C100AE3C();
  v34 = *(a2 + 24);
  v35 = v4;
  v42 = MEMORY[0x1E6981EF8];
  v43 = v36;
  v44 = v4;
  v45 = v34;
  v5 = sub_1C12638F0();
  OUTLINED_FUNCTION_0();
  v37 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - v8;
  OUTLINED_FUNCTION_4_43();
  WitnessTable = swift_getWitnessTable();
  v42 = v5;
  v43 = MEMORY[0x1E69815C0];
  v44 = WitnessTable;
  v45 = MEMORY[0x1E6981568];
  v10 = sub_1C12629C0();
  OUTLINED_FUNCTION_0();
  v32 = v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = v29 - v13;
  OUTLINED_FUNCTION_1_39();
  swift_getWitnessTable();
  sub_1C1263DE0();
  OUTLINED_FUNCTION_3_38();
  v29[0] = swift_getWitnessTable();
  v29[1] = sub_1C12633A0();
  v15 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v31 = v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = v29 - v21;
  v23 = v33;
  sub_1C113DBC8(v33, 0, MEMORY[0x1E6981EF8], v36, v9);
  v42 = *(v23 + *(a2 + 36));
  sub_1C113D624(&v42, 256, v5, MEMORY[0x1E69815C0]);
  (*(v37 + 8))(v9, v5);
  v24 = OUTLINED_FUNCTION_6_30();
  sub_1C12659A0();
  sub_1C1264F80();
  (*(v32 + 8))(v14, v10);
  OUTLINED_FUNCTION_5_3();
  v25 = swift_getWitnessTable();
  v40 = v24;
  v41 = v25;
  OUTLINED_FUNCTION_4_0();
  v26 = swift_getWitnessTable();
  sub_1C0FDBA4C(v19, v15, v26);
  v27 = *(v31 + 8);
  v27(v19, v15);
  sub_1C0FDBA4C(v22, v15, v26);
  return (v27)(v22, v15);
}

uint64_t sub_1C113DBC8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, v14);
  (*(v10 + 16))(v12, a1, a4);
  return sub_1C113E0A8(v16, v12, a2, a3, a4, a5);
}

uint64_t sub_1C113DDA0(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C113DEDC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C113E0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v10 = sub_1C12638F0();
  result = (*(*(a5 - 8) + 32))(a6 + *(v10 + 52), a2, a5);
  *(a6 + *(v10 + 56)) = a3;
  return result;
}

uint64_t sub_1C113E18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_1C1264700();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[2] = a4;
  v15[3] = a3;
  type metadata accessor for PhotosCircularButton();
  if (qword_1EDE7AB18 != -1)
  {
    swift_once();
  }

  v15[1] = qword_1EDE9B648;
  (*(v11 + 104))(v13, *MEMORY[0x1E6980EF8], v10);
  sub_1C100D418();
  sub_1C1262BD0();
  *a5 = a1;
  a5[1] = a2;
  a5[2] = sub_1C1262C90();
  result = sub_1C1262C90();
  a5[3] = result;
  return result;
}

uint64_t PhotosCircularButton.init<A, B>(symbolName:foregroundStyle:backgroundStyle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, void *a6@<X8>)
{
  OUTLINED_FUNCTION_1();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  v13 = v12 - v11;
  v34 = v14;
  OUTLINED_FUNCTION_1();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13();
  v20 = v19 - v18;
  v21 = sub_1C1264700();
  OUTLINED_FUNCTION_1();
  v23 = v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  v27 = v26 - v25;
  type metadata accessor for PhotosCircularButton();
  if (qword_1EDE7AB18 != -1)
  {
    swift_once();
  }

  (*(v23 + 104))(v27, *MEMORY[0x1E6980EF8], v21);
  sub_1C100D418();
  sub_1C1262BD0();
  *a6 = a1;
  a6[1] = a2;
  (*(v16 + 16))(v20, a3, v34);
  a6[2] = sub_1C1262C90();
  (*(v9 + 16))(v13, a4, a5);
  v28 = sub_1C1262C90();
  (*(v9 + 8))(a4, a5);
  result = (*(v16 + 8))(a3, v34);
  a6[3] = v28;
  return result;
}

uint64_t type metadata accessor for PhotosCircularButton()
{
  result = qword_1EBE94AD0;
  if (!qword_1EBE94AD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosCircularButton.init(symbolName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_1C1263070();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  sub_1C1263060();
  v7 = sub_1C1262C90();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AB8);
  sub_1C0FDB6D4(&qword_1EDE76D58, &qword_1EBE94AB8);
  v8 = sub_1C1262C90();
  return sub_1C113E18C(a1, a2, v7, v8, a3);
}

double PhotosCircularButton.makeBody(configuration:)@<D0>(uint64_t *a1@<X8>)
{
  *a1 = sub_1C12659A0();
  a1[1] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AC0);
  sub_1C113E844(v1, (a1 + *(v4 + 44)));
  type metadata accessor for PhotosCircularButton();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90C30);
  sub_1C1262BF0();
  sub_1C1262BF0();
  sub_1C12659A0();
  sub_1C1262C80();
  v5 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AC8) + 36));
  *v5 = v7;
  v5[1] = v8;
  result = *&v9;
  v5[2] = v9;
  return result;
}

uint64_t sub_1C113E844@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v37 = a2;
  v36 = sub_1C1264680();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AF8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = (&v32 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B00);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v34 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v12 = *(a1 + 24);
  v32 = &v32 - v13;
  v33 = v12;

  v14 = sub_1C1265320();
  v15 = (v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90D30) + 36));
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0) + 28);
  v17 = *MEMORY[0x1E69816E0];
  v18 = sub_1C1265340();
  (*(*(v18 - 8) + 104))(v15 + v16, v17, v18);
  *v15 = swift_getKeyPath();
  *v7 = v14;
  v19 = *(a1 + 16);
  *(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B08) + 36)) = v19;

  sub_1C1264530();
  v20 = v36;
  (*(v3 + 104))(v5, *MEMORY[0x1E6980EA8], v36);
  v21 = sub_1C12646C0();

  (*(v3 + 8))(v5, v20);
  KeyPath = swift_getKeyPath();
  v23 = (v7 + *(v35 + 36));
  *v23 = KeyPath;
  v23[1] = v21;
  sub_1C12645B0();
  sub_1C113EE04();
  v24 = v32;
  sub_1C1264990();
  sub_1C113EF74(v7);
  v25 = *(v9 + 16);
  v26 = v34;
  v25(v34, v24, v8);
  v27 = v37;
  *v37 = v33;
  *(v27 + 4) = 256;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B28);
  v25(&v28[*(v29 + 48)], v26, v8);
  v30 = *(v9 + 8);

  v30(v24, v8);
  v30(v26, v8);
}

uint64_t sub_1C113EC44()
{
  result = MEMORY[0x1C68F0CE0]();
  v1 = 32.0;
  if (!result)
  {
    v1 = 30.0;
  }

  qword_1EDE9B648 = *&v1;
  return result;
}

void sub_1C113ECC0()
{
  sub_1C100D3BC();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

unint64_t sub_1C113ED4C()
{
  result = qword_1EBE94AE0;
  if (!qword_1EBE94AE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94AC8);
    sub_1C0FDB6D4(&qword_1EBE94AE8, &qword_1EBE94AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94AE0);
  }

  return result;
}

unint64_t sub_1C113EE04()
{
  result = qword_1EBE94B10;
  if (!qword_1EBE94B10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94AF8);
    sub_1C113EEBC();
    sub_1C0FDB6D4(&qword_1EDE7B930, &qword_1EBE933F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94B10);
  }

  return result;
}

unint64_t sub_1C113EEBC()
{
  result = qword_1EBE94B18;
  if (!qword_1EBE94B18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94B08);
    sub_1C100DB54();
    sub_1C0FDB6D4(&qword_1EDE7BA58, &qword_1EBE94B20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94B18);
  }

  return result;
}

uint64_t sub_1C113EF74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94AF8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1C113EFDC()
{
  qword_1EDE7C280 = &type metadata for FallbackValues;
  unk_1EDE7C288 = &off_1F40793E8;
  v0 = swift_allocObject();
  qword_1EDE7C268 = v0;
  result = 0.75;
  *(v0 + 16) = xmmword_1C12BAF80;
  *(v0 + 32) = vdupq_n_s64(0x4059000000000000uLL);
  *(v0 + 48) = 0x4059000000000000;
  return result;
}

uint64_t photosCollectionTitleOverlaySettings.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDE7C260 != -1)
  {
    OUTLINED_FUNCTION_0_51();
  }

  swift_beginAccess();
  return sub_1C0FDB0A8(&qword_1EDE7C268, a1);
}

uint64_t photosCollectionTitleOverlaySettings.setter(uint64_t *a1)
{
  if (qword_1EDE7C260 != -1)
  {
    OUTLINED_FUNCTION_0_51();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(&qword_1EDE7C268, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t (*photosCollectionTitleOverlaySettings.modify())()
{
  if (qword_1EDE7C260 != -1)
  {
    OUTLINED_FUNCTION_0_51();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t View.selectionStyle(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1C0FDB0A8(a1, v6);
  __src[0] = swift_getKeyPath();
  sub_1C0FFCFE4(__src);
  memcpy(v7, __src, sizeof(v7));
  KeyPath = swift_getKeyPath();
  v9 = 0;
  v10 = swift_getKeyPath();
  v11 = 0;
  v12 = swift_getKeyPath();
  v13 = 0;
  MEMORY[0x1C68EE920](v6, a2, &type metadata for PhotosSelectionStyle, a3);
  return sub_1C113F314(v6);
}

uint64_t sub_1C113F350()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 256);
  v6 = *(v0 + 264);

  if ((v6 & 1) == 0)
  {
    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return v5;
}

uint64_t sub_1C113F490()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = *(v0 + 272);
  if (*(v0 + 280) != 1)
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v5, 0);
    (*(v2 + 8))(v4, v1);
    if (v11[0])
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1C113F350();
    sub_1C0FDB0A8(v0, v11);
    PhotosSelection.isItemSelected(_:)();
    v6 = v8;

    sub_1C0FD1A5C(v11, &qword_1EBE91420);
    return v6 & 1;
  }

  if ((v5 & 1) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = 0;
  return v6 & 1;
}

BOOL sub_1C113F634()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v8[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = *(v0 + 288);
  if (*(v0 + 296) != 1)
  {

    sub_1C1266420();
    v6 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v5, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v5) = v8[15];
  }

  return (v5 & 1) == 0;
}

uint64_t sub_1C113F780()
{
  v0 = sub_1C1263AE0();
  MEMORY[0x1EEE9AC00](v0);
  if (sub_1C113F490())
  {
    sub_1C1263AD0();
    sub_1C10A06DC();
  }

  else
  {
    sub_1C1265170();
  }

  return sub_1C1262C90();
}

uint64_t PhotosSelectionStyle.body(content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B30);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-v8 - 8];
  v10 = sub_1C113F634();
  sub_1C113F350();
  sub_1C0FDB0A8(v2, v22);
  PhotosSelection.isItemSelected(_:)();
  v12 = v11;

  sub_1C0FD1A5C(v22, &qword_1EBE91420);
  if (v10 || (v12 & 1) == 0)
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B38);
  OUTLINED_FUNCTION_3();
  (*(v14 + 16))(v9, a1);
  *&v9[*(v7 + 44)] = v13;
  v15 = sub_1C12659A0();
  v17 = v16;
  v18 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B40) + 36);
  sub_1C113FA08(v10, v3, v12 & 1, v18);
  v19 = (v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B48) + 36));
  *v19 = v15;
  v19[1] = v17;
  return sub_1C0FDB71C(v9, a2, &qword_1EBE94B30);
}

uint64_t sub_1C113FA08@<X0>(int a1@<W0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v47) = a3;
  LODWORD(v51) = a1;
  v52 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B50);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v44 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B58);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v44 - v9;
  v11 = sub_1C12637E0();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v48);
  v15 = &v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_1C1263310();
  MEMORY[0x1EEE9AC00](v49);
  v50 = &v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B60);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  if (v51)
  {
    v44 = &v44 - v21;
    v47 = v10;
    v51 = v5;
    memcpy(v57, (a2 + 40), 0xD1uLL);
    memcpy(v58, (a2 + 40), 0xD1uLL);
    if (sub_1C100D688(v58) == 1)
    {
      nullsub_1(v58);
      memcpy(v54, v57, sizeof(v54));
      v22 = nullsub_1(v54);
      memcpy(v56, v22, sizeof(v56));
      memcpy(v55, v57, 0xD1uLL);
      v23 = nullsub_1(v55);
      sub_1C100D690(v23, &v53);
    }

    else
    {
      nullsub_1(v58);
      memcpy(v54, v57, sizeof(v54));
      nullsub_1(v54);
      memcpy(v55, v57, 0xD1uLL);
      nullsub_1(v55);

      sub_1C1266420();
      v28 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(v57, &qword_1EBE91C80);
      (*(v45 + 8))(v13, v46);
    }

    memcpy(v55, v56, 0xD0uLL);
    sub_1C100C7D0(v55);
    v29 = v55[0];
    v30 = *(v48 + 20);
    v31 = *MEMORY[0x1E697F468];
    v32 = sub_1C12639D0();
    (*(*(v32 - 8) + 104))(&v15[v30], v31, v32);
    *v15 = v29;
    *(v15 + 1) = v29;
    v33 = v50;
    sub_1C107CD70(v15, v50);
    *(v33 + *(v49 + 20)) = 0xC004000000000000;
    v34 = sub_1C113F780();
    sub_1C1262B10();
    sub_1C10A061C(v33, v19);
    v35 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A30) + 36)];
    v36 = *&v54[16];
    *v35 = *v54;
    *(v35 + 1) = v36;
    *(v35 + 4) = *&v54[32];
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A38);
    *&v19[*(v37 + 52)] = v34;
    *&v19[*(v37 + 56)] = 256;
    v38 = sub_1C12659A0();
    v40 = v39;
    sub_1C10A0680(v33);
    v41 = &v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92A40) + 36)];
    *v41 = v38;
    v41[1] = v40;
    v26 = &qword_1EBE94B60;
    v42 = v44;
    sub_1C0FDB71C(v19, v44, &qword_1EBE94B60);
    sub_1C0FDB800(v42, v47, &qword_1EBE94B60);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EDE7BD08, &qword_1EBE94B60);
    sub_1C1140F78();
    sub_1C1263C20();
    v27 = v42;
  }

  else
  {
    *v7 = sub_1C12659A0();
    v7[1] = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B68);
    sub_1C11400FC(v47 & 1, a2, v7 + *(v25 + 44));
    *(v7 + *(v5 + 36)) = 0;
    v26 = &qword_1EBE94B50;
    sub_1C0FDB800(v7, v10, &qword_1EBE94B50);
    swift_storeEnumTagMultiPayload();
    sub_1C0FDB6D4(&qword_1EDE7BD08, &qword_1EBE94B60);
    sub_1C1140F78();
    sub_1C1263C20();
    v27 = v7;
  }

  return sub_1C0FD1A5C(v27, v26);
}

uint64_t sub_1C11400FC@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v56 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B78);
  MEMORY[0x1EEE9AC00](v5);
  v55 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v46 - v10);
  v12 = sub_1C12637E0();
  v50 = *(v12 - 8);
  v51 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1C1263320();
  MEMORY[0x1EEE9AC00](v52);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B88);
  MEMORY[0x1EEE9AC00](v53);
  v18 = &v46 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B90);
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v46 - v26;
  if (a1)
  {
    v46 = v24;
    v47 = v25;
    v49 = v5;
    memcpy(v61, (a2 + 40), 0xD1uLL);
    v48 = a2;
    memcpy(v62, (a2 + 40), 0xD1uLL);
    if (sub_1C100D688(v62) == 1)
    {
      nullsub_1(v62);
      memcpy(v58, v61, 0xD1uLL);
      v28 = nullsub_1(v58);
      memcpy(v60, v28, sizeof(v60));
      memcpy(v59, v61, 0xD1uLL);
      v29 = nullsub_1(v59);
      sub_1C100D690(v29, &v57);
    }

    else
    {
      nullsub_1(v62);
      memcpy(v58, v61, 0xD1uLL);
      nullsub_1(v58);
      memcpy(v59, v61, 0xD1uLL);
      nullsub_1(v59);

      sub_1C1266420();
      v32 = sub_1C1264410();
      sub_1C1262620();

      sub_1C12637D0();
      swift_getAtKeyPath();
      sub_1C0FD1A5C(v61, &qword_1EBE91C80);
      (*(v50 + 8))(v14, v51);
    }

    memcpy(v59, v60, 0xD0uLL);
    sub_1C100C7D0(v59);
    v33 = v59[0];
    v34 = *(v52 + 20);
    v35 = *MEMORY[0x1E697F468];
    v36 = sub_1C12639D0();
    (*(*(v36 - 8) + 104))(&v16[v34], v35, v36);
    *v16 = v33;
    *(v16 + 1) = v33;
    v37 = sub_1C1265150();
    sub_1C107CD70(v16, v18);
    v38 = v53;
    *&v18[*(v53 + 52)] = v37;
    *&v18[*(v38 + 56)] = 256;
    sub_1C0FDB71C(v18, v22, &qword_1EBE94B88);
    *&v22[*(v46 + 36)] = 0x3FC999999999999ALL;
    sub_1C0FDB71C(v22, v27, &qword_1EBE94B90);
    *v11 = sub_1C12659A0();
    v11[1] = v39;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94B98);
    sub_1C1140788(v11 + *(v40 + 44));
    v41 = v47;
    sub_1C0FDB800(v27, v47, &qword_1EBE94B90);
    v42 = v54;
    sub_1C0FDB800(v11, v54, &qword_1EBE94B80);
    v43 = v55;
    sub_1C0FDB800(v41, v55, &qword_1EBE94B90);
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BA0);
    sub_1C0FDB800(v42, v43 + *(v44 + 48), &qword_1EBE94B80);
    sub_1C0FD1A5C(v11, &qword_1EBE94B80);
    sub_1C0FD1A5C(v27, &qword_1EBE94B90);
    sub_1C0FD1A5C(v42, &qword_1EBE94B80);
    sub_1C0FD1A5C(v41, &qword_1EBE94B90);
    v45 = v56;
    sub_1C0FDB71C(v43, v56, &qword_1EBE94B78);
    return __swift_storeEnumTagSinglePayload(v45, 0, 1, v49);
  }

  else
  {
    v30 = v56;

    return __swift_storeEnumTagSinglePayload(v30, 1, 1, v5);
  }
}

uint64_t sub_1C1140788@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_1C12650F0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v44[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BA8);
  v6 = v5 - 8;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v44[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BB0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v44[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BB8);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v44[-v15];
  v49 = sub_1C12652F0();
  v48 = sub_1C12650E0();
  KeyPath = swift_getKeyPath();
  v46 = sub_1C1140C14();
  v45 = sub_1C1264470();
  (*(v2 + 104))(v4, *MEMORY[0x1E69814C8], v1);
  v17 = sub_1C1265250();
  v18 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BC0) + 36)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE933A0) + 28);
  v20 = *MEMORY[0x1E69816C0];
  v21 = sub_1C1265340();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  v22 = KeyPath;
  *v8 = v49;
  *(v8 + 1) = v22;
  v23 = v46;
  *(v8 + 2) = v48;
  *(v8 + 3) = v23;
  v8[32] = v45;
  *(v8 + 33) = 256;
  *(v8 + 5) = v17;
  *(v8 + 6) = 0x4014000000000000;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *&v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BC8) + 36)] = 0x3FF0000000000000;
  v8[*(v6 + 44)] = sub_1C12644C0();
  sub_1C1265970();
  sub_1C1263390();
  sub_1C0FDB71C(v8, v12, &qword_1EBE94BA8);
  memcpy(&v12[*(v10 + 44)], __src, 0x70uLL);
  LOBYTE(v19) = sub_1C12644C0();
  sub_1C12628A0();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1C0FDB71C(v12, v16, &qword_1EBE94BB0);
  v32 = &v16[*(v14 + 44)];
  *v32 = v19;
  *(v32 + 1) = v25;
  *(v32 + 2) = v27;
  *(v32 + 3) = v29;
  *(v32 + 4) = v31;
  v32[40] = 0;
  LOBYTE(v19) = sub_1C1264490();
  sub_1C12628A0();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  v41 = v50;
  sub_1C0FDB71C(v16, v50, &qword_1EBE94BB8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BD0);
  v43 = v41 + *(result + 36);
  *v43 = v19;
  *(v43 + 8) = v34;
  *(v43 + 16) = v36;
  *(v43 + 24) = v38;
  *(v43 + 32) = v40;
  *(v43 + 40) = 0;
  return result;
}

uint64_t sub_1C1140C14()
{
  v0 = UIAccessibilityDarkerSystemColorsEnabled();
  sub_1C1008F18();
  sub_1C12650E0();
  v1 = sub_1C1266680();
  v2 = v1;
  if (!v0)
  {
    [v1 px_luminance];
    if (v11 <= 0.85)
    {
      goto LABEL_3;
    }

LABEL_5:
    v10 = sub_1C1265160();
    goto LABEL_6;
  }

  v3 = objc_opt_self();
  v4 = [v3 blackColor];
  [v2 px:v4 contrastRatioToColor:?];
  v6 = v5;

  v7 = [v3 whiteColor];
  [v2 px:v7 contrastRatioToColor:?];
  v9 = v8;

  if (v9 < v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  v10 = sub_1C1265190();
LABEL_6:
  v12 = v10;

  return v12;
}

uint64_t sub_1C1140D28(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 297))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1140D68(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 297) = 1;
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

    *(result + 297) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C1140E08()
{
  result = qword_1EDE77250;
  if (!qword_1EDE77250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94B40);
    sub_1C1140EC0();
    sub_1C0FDB6D4(&qword_1EDE76FB8, &qword_1EBE94B48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77250);
  }

  return result;
}

unint64_t sub_1C1140EC0()
{
  result = qword_1EDE7BF10;
  if (!qword_1EDE7BF10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94B30);
    sub_1C0FDB6D4(&qword_1EDE7BB30, &qword_1EBE94B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE7BF10);
  }

  return result;
}

unint64_t sub_1C1140F78()
{
  result = qword_1EDE772E0;
  if (!qword_1EDE772E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94B50);
    sub_1C0FDB6D4(&qword_1EDE76BA8, &qword_1EBE94B70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE772E0);
  }

  return result;
}

uint64_t sub_1C1141034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v88 = a2;
  v5 = sub_1C1265870();
  OUTLINED_FUNCTION_0();
  v86 = v6;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v85 = v9 - v8;
  v10 = type metadata accessor for PhotosKeySelection();
  v81 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v83 = v11;
  v84 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C1263820();
  OUTLINED_FUNCTION_0();
  v77 = v13;
  v78 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13();
  v76 = v15 - v14;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BD8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_34();
  v73 = v17;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BE0);
  OUTLINED_FUNCTION_0();
  v75 = v18;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_34();
  v74 = v20;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BE8);
  OUTLINED_FUNCTION_0();
  v79 = v21;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_34();
  v90 = v23;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BF0);
  OUTLINED_FUNCTION_0();
  v82 = v24;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_34();
  v80 = v26;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BF8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_34();
  v92 = v28;
  v29 = sub_1C12637E0();
  OUTLINED_FUNCTION_0();
  v31 = v30;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  v35 = v34 - v33;
  v36 = *v2;
  if (*(v2 + 8) != 1)
  {

    sub_1C1266420();
    v65 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v36, 0);
    (*(v31 + 8))(v35, v29);
    if (v95 != 1)
    {
      goto LABEL_3;
    }

LABEL_7:
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94C00);
    OUTLINED_FUNCTION_3();
    (*(v67 + 16))(v92, a1, v66);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_2_46();
    sub_1C0FDB6D4(v68, &qword_1EBE94C00);
    v69 = sub_1C11420BC();
    v95 = v89;
    v96 = v69;
    v70 = OUTLINED_FUNCTION_4_44();
    v95 = v94;
    v96 = v70;
    v71 = OUTLINED_FUNCTION_3_39();
    v95 = v93;
    v96 = v71;
    OUTLINED_FUNCTION_5_29();
    return sub_1C1263C20();
  }

  if (v36)
  {
    goto LABEL_7;
  }

LABEL_3:
  v72[0] = v29;
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94C00);
  OUTLINED_FUNCTION_3();
  v39 = *(v38 + 16);
  v40 = v73;
  v72[1] = v41;
  v39(v73, a1);
  v42 = v89;
  v43 = v40 + *(v89 + 36);
  *v43 = KeyPath;
  *(v43 + 8) = 1;
  v44 = v76;
  sub_1C1263810();
  v45 = sub_1C11420BC();
  v46 = v74;
  sub_1C1265070();
  (*(v77 + 8))(v44, v78);
  sub_1C11421A0(v40);
  v95 = v42;
  v96 = v45;
  v47 = OUTLINED_FUNCTION_4_44();
  v48 = v94;
  sub_1C1264D00();
  (*(v75 + 8))(v46, v48);
  v49 = *(v3 + 16);
  LOBYTE(v48) = *(v3 + 24);

  if ((v48 & 1) == 0)
  {
    sub_1C1266420();
    v50 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v31 + 8))(v35, v72[0]);
    v49 = v95;
  }

  v51 = *(v49 + 16);

  v52 = v84;
  sub_1C1142208(v3, v84);
  v53 = (*(v81 + 80) + 16) & ~*(v81 + 80);
  v54 = swift_allocObject();
  sub_1C114226C(v52, v54 + v53);
  v55 = v85;
  sub_1C1141B80();
  v95 = v94;
  v96 = v47;
  v56 = OUTLINED_FUNCTION_3_39();
  v57 = v80;
  v58 = v93;
  v59 = v90;
  MEMORY[0x1C68EE2F0](v51, v55, sub_1C11422D0, v54, v93, v56);

  (*(v86 + 8))(v55, v5);
  (*(v79 + 8))(v59, v58);
  v60 = v82;
  v61 = v87;
  (*(v82 + 16))(v92, v57, v87);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_2_46();
  sub_1C0FDB6D4(v62, v63);
  v95 = v58;
  v96 = v56;
  OUTLINED_FUNCTION_5_29();
  sub_1C1263C20();
  return (*(v60 + 8))(v57, v61);
}

uint64_t sub_1C11418D0()
{
  sub_1C1142398();
  sub_1C12637F0();
  return v1;
}

uint64_t sub_1C1141948@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = sub_1C1263150();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C12637E0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 24);

  if ((v11 & 1) == 0)
  {
    sub_1C1266420();
    v12 = sub_1C1264410();
    v16 = v3;
    v13 = v12;
    sub_1C1262620();

    v3 = v16;
    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v8 + 8))(v10, v7);
  }

  type metadata accessor for PhotosKeySelection();
  sub_1C0FD7674(v6);
  sub_1C112D468();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C1141B80()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94C08);
  sub_1C1265870();
  *(swift_allocObject() + 16) = xmmword_1C12A3440;
  sub_1C1265850();
  sub_1C1265860();
  sub_1C1142350(&unk_1EDE7B7A0, MEMORY[0x1E697D760]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94C10);
  sub_1C0FDB6D4(&qword_1EDE7B710, &qword_1EBE94C10);
  return sub_1C1266870();
}

uint64_t View.photosKeySelection(scrollViewProxy:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PhotosKeySelection();
  OUTLINED_FUNCTION_3();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13();
  v10 = v9 - v8;
  v12 = *(v11 + 28);
  sub_1C1263240();
  OUTLINED_FUNCTION_3();
  (*(v13 + 16))(v10 + v12, a1);
  *v10 = swift_getKeyPath();
  *(v10 + 8) = 0;
  *(v10 + 16) = swift_getKeyPath();
  *(v10 + 24) = 0;
  v14 = *(v6 + 24);
  *(v10 + v14) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE904D0);
  swift_storeEnumTagMultiPayload();
  MEMORY[0x1C68EE920](v10, a2, v6, a3);
  return sub_1C1141E8C(v10);
}

uint64_t type metadata accessor for PhotosKeySelection()
{
  result = qword_1EDE82878;
  if (!qword_1EDE82878)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C1141E8C(uint64_t a1)
{
  v2 = type metadata accessor for PhotosKeySelection();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1C1141F10()
{
  sub_1C1141FFC();
  if (v0 <= 0x3F)
  {
    sub_1C114204C(319, &qword_1EDE77638, type metadata accessor for PhotosSelectionCoordinator);
    if (v1 <= 0x3F)
    {
      sub_1C114204C(319, &qword_1EDE77570, MEMORY[0x1E697E7E0]);
      if (v2 <= 0x3F)
      {
        sub_1C1263240();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C1141FFC()
{
  if (!qword_1EDE77540)
  {
    v0 = sub_1C1262A70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE77540);
    }
  }
}

void sub_1C114204C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1C11420BC()
{
  result = qword_1EDE77438;
  if (!qword_1EDE77438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94BD8);
    sub_1C0FDB6D4(&qword_1EDE7BB40, &qword_1EBE94C00);
    sub_1C0FDB6D4(&unk_1EDE7B900, &qword_1EBE91BF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE77438);
  }

  return result;
}

uint64_t sub_1C11421A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94BD8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C1142208(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosKeySelection();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C114226C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosKeySelection();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C11422D0@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PhotosKeySelection() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1C1141948(v4, a1);
}

uint64_t sub_1C1142350(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C1142398()
{
  result = qword_1EDE78C18;
  if (!qword_1EDE78C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE78C18);
  }

  return result;
}

unint64_t sub_1C11423FC()
{
  result = qword_1EDE76ED8;
  if (!qword_1EDE76ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94C18);
    sub_1C0FDB6D4(&qword_1EDE7BB40, &qword_1EBE94C00);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94BE8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94BE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94BD8);
    sub_1C11420BC();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE76ED8);
  }

  return result;
}

uint64_t PhotosMockSelectableItem.__allocating_init(selectionIdentifier:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_1C1261F60();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  return v4;
}

uint64_t PhotosMockSelectableItem.init(selectionIdentifier:)(uint64_t a1, uint64_t a2)
{
  sub_1C1261F60();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

uint64_t sub_1C1142614(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_1C1266D50() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C11429A4();
  }
}

uint64_t sub_1C1142708@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C1142774();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1C1142734(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C1142614(v1, v2);
}

uint64_t sub_1C1142774()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_0_52(&qword_1EBE94C28);
  sub_1C1261F30();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

void (*sub_1C1142810(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x40uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_getKeyPath();
  v3[5] = OBJC_IVAR____TtC17PhotosSwiftUICore24PhotosMockSelectableItem___observationRegistrar;
  *v3 = v1;
  v3[6] = OUTLINED_FUNCTION_0_52(&qword_1EBE94C28);
  sub_1C1261F30();

  *v3 = v1;
  swift_getKeyPath();
  sub_1C1261F50();

  v3[7] = sub_1C109E940();
  return sub_1C114290C;
}

void sub_1C114290C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_1C1261F40();

  free(v1);
}

uint64_t type metadata accessor for PhotosMockSelectableItem()
{
  result = qword_1EBE94C40;
  if (!qword_1EBE94C40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PhotosMockSelectableItem.deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore24PhotosMockSelectableItem___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t PhotosMockSelectableItem.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC17PhotosSwiftUICore24PhotosMockSelectableItem___observationRegistrar;
  sub_1C1261F70();
  OUTLINED_FUNCTION_4_2();
  (*(v2 + 8))(v0 + v1);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1C1142BAC(uint64_t a1)
{
  result = sub_1C1142C24(&qword_1EBE94C30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C1142C24(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for PhotosMockSelectableItem();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C1142C70()
{
  result = sub_1C1261F70();
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

id OneUpVideoScrubber.makeUIView(context:)()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  v3 = [objc_allocWithZone(MEMORY[0x1E69585E0]) initWithSource_];
  swift_unknownObjectRelease();
  _s17PhotosSwiftUICore18OneUpVideoScrubberV12updateUIView_7contextySo22AVMediaTimelineControlC_0B2UI0I20RepresentableContextVyACGtF_0(v3);
  return v3;
}

void _s17PhotosSwiftUICore18OneUpVideoScrubberV12updateUIView_7contextySo22AVMediaTimelineControlC_0B2UI0I20RepresentableContextVyACGtF_0(void *a1)
{
  v3 = sub_1C12629F0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  [a1 setUserInteractionEnabled_];
  v10 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  [a1 setSource_];
  swift_unknownObjectRelease();
  [a1 setDelegate_];
  swift_unknownObjectRelease();
  [a1 setFineScrubbingStyle_];
  v12 = [objc_opt_self() hiddenConfiguration];
  v13 = [objc_opt_self() defaultConfiguration];
  sub_1C114352C();
  v14 = sub_1C12239D8();

  [v13 setExtendedDynamicRangeGain_];
  sub_1C114367C(v9);
  (*(v4 + 104))(v6, *MEMORY[0x1E697DBA8], v3);
  v15 = sub_1C12629D0();
  v16 = *(v4 + 8);
  v16(v6, v3);
  v16(v9, v3);
  if (v15)
  {
    v17 = objc_opt_self();
    v18 = [v17 effectWithStyle_];
    v19 = [v17 effectWithStyle_];
LABEL_7:
    v31 = v19;
    [v13 setCurrentValueVisualEffect_];

    [v13 setMaxValueVisualEffect_];
    [v13 setLabelsConfiguration_];
    [a1 setConfiguration_];

    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92360);
  v20 = swift_allocObject();
  v32 = xmmword_1C12BB700;
  *(v20 + 16) = xmmword_1C12BB700;
  v21 = objc_opt_self();
  v22 = [v21 secondaryLabelColor];
  v23 = objc_opt_self();
  v24 = [v23 effectCompositingColor_];

  if (!v24)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1C1143C64();
  *(v20 + 32) = v24;
  v25 = objc_opt_self();
  *(v20 + 40) = [v25 effectWithStyle_];
  v26 = sub_1C114386C(v20);
  if (!v26)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v27 = v26;
  v28 = swift_allocObject();
  *(v28 + 16) = v32;
  v18 = v27;
  v29 = [v21 tertiarySystemFillColor];
  v30 = [v23 effectCompositingColor_];

  if (!v30)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  *(v28 + 32) = v30;
  *(v28 + 40) = [v25 effectWithStyle_];
  v19 = sub_1C114386C(v28);
  if (v19)
  {
    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
}

uint64_t type metadata accessor for OneUpVideoScrubber()
{
  result = qword_1EDE7D670;
  if (!qword_1EDE7D670)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C11433D4()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for OneUpVideoScrubber() + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_1C1266420();
    v7 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1008DBC(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_1C114352C()
{
  v1 = sub_1C12637E0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = (v0 + *(type metadata accessor for OneUpVideoScrubber() + 28));
  v6 = *v5;
  v7 = *(v5 + 8);

  if ((v7 & 1) == 0)
  {
    sub_1C1266420();
    v8 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    (*(v2 + 8))(v4, v1);
    return v10[1];
  }

  return v6;
}

uint64_t sub_1C114367C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C12637E0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for OneUpVideoScrubber();
  sub_1C101268C(v1 + *(v10 + 20), v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1C12629F0();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_1C1266420();
    v13 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

id sub_1C114386C(uint64_t a1)
{
  if (a1)
  {
    sub_1C1143C64();
    v1 = sub_1C12660A0();
  }

  else
  {
    v1 = 0;
  }

  v2 = [swift_getObjCClassFromMetadata() effectCombiningEffects_];

  return v2;
}

uint64_t sub_1C11438F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1143C20(&qword_1EDE7D688);

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1C1143974(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C1143C20(&qword_1EDE7D688);

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1C11439F4()
{
  sub_1C1143C20(&qword_1EDE7D688);
  sub_1C1263BD0();
  __break(1u);
}

void sub_1C1143A60()
{
  sub_1C1143B4C();
  if (v0 <= 0x3F)
  {
    sub_1C1143BA4(319, &qword_1EDE77590, MEMORY[0x1E697DBD0]);
    if (v1 <= 0x3F)
    {
      sub_1C1141FFC();
      if (v2 <= 0x3F)
      {
        sub_1C1143BA4(319, &qword_1EDE775E0, type metadata accessor for OneUpChromeSpec);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1C1143B4C()
{
  result = qword_1EDE78668[0];
  if (!qword_1EDE78668[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EDE78668);
  }

  return result;
}

void sub_1C1143BA4(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C1262A70();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C1143C20(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for OneUpVideoScrubber();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C1143C64()
{
  result = qword_1EDE7B690;
  if (!qword_1EDE7B690)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE7B690);
  }

  return result;
}

uint64_t PhotosPlaybackOverlay.init(model:configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  result = sub_1C1266610();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = (v7 == 2) | v7 & 1;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  *(a4 + 40) = result;
  *(a4 + 48) = v9;
  *(a4 + 52) = v10;
  *(a4 + 56) = v11;
  return result;
}

uint64_t sub_1C1143D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, void *a6@<X8>)
{
  if (a5)
  {
    v11 = sub_1C1263AA0();
    v19[0] = 1;
    sub_1C1143F9C(a1, a2, a3 & 1, a4, __src);
    memcpy(__dst, __src, 0xB1uLL);
    memcpy(v14, __src, 0xB1uLL);
    sub_1C102EFA0(__dst, v20, &qword_1EBE94D30);
    sub_1C0F9E21C(v14, &qword_1EBE94D30);
    memcpy(&v20[7], __dst, 0xB1uLL);
    v15[0] = v11;
    v15[1] = 0;
    LOBYTE(v15[2]) = v19[0];
    memcpy(&v15[2] + 1, v20, 0xB8uLL);
    v16[0] = v11;
    v16[1] = 0;
    v17 = v19[0];
    memcpy(v18, v20, sizeof(v18));
    sub_1C102EFA0(v15, __src, &qword_1EBE94D18);
    sub_1C0F9E21C(v16, &qword_1EBE94D18);
    memcpy(v20, v15, 0xC9uLL);
    sub_1C11462CC(v20);
  }

  else
  {
    sub_1C11462C0(v20);
  }

  memcpy(v19, v20, 0xCAuLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94D18);
  sub_1C0FDB6D4(&qword_1EBE94D20, &qword_1EBE94D18);
  sub_1C1263C20();
  memcpy(v19, __src, 0xCAuLL);
  memcpy(a6, __src, 0xCAuLL);
  memcpy(v20, __src, 0xCAuLL);
  sub_1C102EFA0(v19, v16, &qword_1EBE94D28);
  return sub_1C0F9E21C(v20, &qword_1EBE94D28);
}

uint64_t sub_1C1143F9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1C12638E0();
  v40 = 1;
  sub_1C11442E4(a1, a2, a3 & 1, a4, __src);
  memcpy(__dst, __src, 0x59uLL);
  memcpy(v44, __src, 0x59uLL);
  sub_1C102EFA0(__dst, v37, &qword_1EBE94D38);
  sub_1C0F9E21C(v44, &qword_1EBE94D38);
  memcpy(&v39[7], __dst, 0x59uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C12A3440;
  LOBYTE(a1) = sub_1C12644A0();
  *(v11 + 32) = a1;
  v12 = sub_1C12644C0();
  *(v11 + 33) = v12;
  v13 = sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != a1)
  {
    v13 = sub_1C12644B0();
  }

  sub_1C12644B0();
  if (sub_1C12644B0() != v12)
  {
    v13 = sub_1C12644B0();
  }

  v26[0] = v10;
  v26[1] = 0;
  v14 = v40;
  LOBYTE(v26[2]) = v40;
  memcpy(&v26[2] + 1, v39, 0x60uLL);
  sub_1C12628A0();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  memcpy(v42, v26, 0x71uLL);
  v41 = 0;
  v27[0] = v10;
  v27[1] = 0;
  v28 = v14;
  memcpy(v29, v39, sizeof(v29));
  sub_1C102EFA0(v26, __src, &qword_1EBE94D40);
  sub_1C0F9E21C(v27, &qword_1EBE94D40);
  memcpy(v30, v42, 0x78uLL);
  LOBYTE(v30[15]) = v13;
  v30[16] = v16;
  v30[17] = v18;
  v30[18] = v20;
  v30[19] = v22;
  LOBYTE(v30[20]) = v41;
  memcpy(v31, v42, 0x78uLL);
  v31[120] = v13;
  v32 = v16;
  v33 = v18;
  v34 = v20;
  v35 = v22;
  v36 = v41;
  sub_1C102EFA0(v30, __src, &qword_1EBE94D48);
  sub_1C0F9E21C(v31, &qword_1EBE94D48);
  memcpy(__src, v30, 0xA1uLL);
  v25[168] = 1;
  memcpy(v37, v30, 0xA1uLL);
  memcpy(&v25[7], v30, 0xA1uLL);
  *a5 = 0;
  *(a5 + 8) = 1;
  memcpy((a5 + 9), v25, 0xA8uLL);
  sub_1C102EFA0(v37, v24, &qword_1EBE94D48);
  return sub_1C0F9E21C(__src, &qword_1EBE94D48);
}

uint64_t sub_1C11442E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1C1264490();
  sub_1C12628A0();
  __dst[0] = a3 & 1;
  v27[0] = 0;
  __src[0] = a1;
  __src[1] = a2;
  LOBYTE(__src[2]) = a3 & 1;
  __src[3] = a4;
  LOBYTE(__src[4]) = v10;
  __src[5] = v11;
  __src[6] = v12;
  __src[7] = v13;
  __src[8] = v14;
  LOBYTE(__src[9]) = 0;
  v18[0] = a1;
  v18[1] = a2;
  v19 = a3 & 1;
  v20 = a4;
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v25 = v14;
  v26 = 0;
  sub_1C0FDB850(a1, a2, a3 & 1);

  sub_1C102EFA0(__src, v28, &qword_1EBE92060);
  sub_1C0F9E21C(v18, &qword_1EBE92060);
  memcpy(__dst, __src, 0x49uLL);
  memcpy(v27, __src, 0x49uLL);
  memcpy(v28, __src, 0x49uLL);
  v16[80] = 0;
  memcpy(a5, v28, 0x50uLL);
  *(a5 + 80) = 0x4049000000000000;
  *(a5 + 88) = 0;
  sub_1C102EFA0(v27, v16, &qword_1EBE92060);
  return sub_1C0F9E21C(__dst, &qword_1EBE92060);
}

void *PhotosPlaybackOverlay.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v18[0] = *v1;
  v18[1] = v3;
  v4 = v1[3];
  v18[2] = v1[2];
  v18[3] = v4;
  v5 = sub_1C12659A0();
  v7 = v6;
  sub_1C11445CC(v18, __src);
  memcpy(__dst, __src, 0x1C2uLL);
  memcpy(v20, __src, 0x1C2uLL);
  sub_1C102EFA0(__dst, &v16, &qword_1EBE94C58);
  sub_1C0F9E21C(v20, &qword_1EBE94C58);
  memcpy(__src, __dst, 0x1C2uLL);
  v8 = sub_1C12631E0();
  v9 = sub_1C1264470();
  v10 = *(&v18[0] + 1);
  ObjectType = swift_getObjectType();
  v12 = *(v10 + 8);
  if (v12(ObjectType, v10))
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  v14 = v12(ObjectType, v10) & 1;
  *a1 = v5;
  *(a1 + 8) = v7;
  result = memcpy((a1 + 16), __src, 0x1C2uLL);
  *(a1 + 472) = v8;
  *(a1 + 480) = v9;
  *(a1 + 488) = v13;
  *(a1 + 496) = v14;
  return result;
}

uint64_t sub_1C11445CC@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v35 = *a1;
  if (*(a1 + 16) == 1)
  {
    swift_unknownObjectRetain();
    v34 = sub_1C1263AA0();
    v45[112] = 1;
    sub_1C1144B34(a1, __src);
    memcpy(__dst, __src, sizeof(__dst));
    memcpy(v47, __src, sizeof(v47));
    sub_1C102EFA0(__dst, v50, &qword_1EBE94D00);
    sub_1C0F9E21C(v47, &qword_1EBE94D00);
    memcpy(&v45[7], __dst, 0x68uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE917F8);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1C12A3440;
    v5 = sub_1C12644A0();
    *(v4 + 32) = v5;
    v6 = sub_1C12644C0();
    *(v4 + 33) = v6;
    v7 = sub_1C12644B0();
    sub_1C12644B0();
    if (sub_1C12644B0() != v5)
    {
      v7 = sub_1C12644B0();
    }

    sub_1C12644B0();
    if (sub_1C12644B0() != v6)
    {
      v7 = sub_1C12644B0();
    }

    sub_1C12628A0();
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v15 = v14;
    v45[120] = 0;
    v33 = sub_1C1264490();
    sub_1C12628A0();
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;
    v45[128] = 0;
    v32 = sub_1C1265190();
    v24 = a1[4];
    if (v24)
    {
      __src[0] = a1[3];
      __src[1] = v24;
      sub_1C0FDB9AC();

      v25 = sub_1C12648F0();
      v27 = v26;
      v29 = v28;
      sub_1C1143D14(v25, v26, v28 & 1, v30, 1, v36);
      sub_1C0FDB8E8(v25, v27, v29 & 1);

      memcpy(__src, v36, 0xCAuLL);
      nullsub_1(__src);
      memcpy(v40, __src, 0xCAuLL);
    }

    else
    {
      sub_1C1146290(v40);
    }

    memcpy(v39, v40, 0xCAuLL);
    v48[0] = v34;
    v48[1] = 0;
    LOBYTE(v48[2]) = 1;
    memcpy(&v48[2] + 1, v45, 0x6FuLL);
    LOBYTE(v48[16]) = v7;
    *(&v48[16] + 1) = *v44;
    HIDWORD(v48[16]) = *&v44[3];
    v48[17] = v9;
    v48[18] = v11;
    v48[19] = v13;
    v48[20] = v15;
    LOBYTE(v48[21]) = 0;
    *(&v48[21] + 1) = *v43;
    HIDWORD(v48[21]) = *&v43[3];
    LOBYTE(v48[22]) = v33;
    *(&v48[22] + 1) = *v42;
    HIDWORD(v48[22]) = *&v42[3];
    v48[23] = v17;
    v48[24] = v19;
    v48[25] = v21;
    v48[26] = v23;
    LOBYTE(v48[27]) = 0;
    *(&v48[27] + 1) = *v41;
    HIDWORD(v48[27]) = *&v41[3];
    v48[28] = v32;
    memcpy(v37, v48, 0xE8uLL);
    memcpy(v38, v40, 0xCAuLL);
    memcpy(&v37[232], v40, 0xCAuLL);
    sub_1C102EFA0(v48, __src, &qword_1EBE94D08);
    sub_1C102EFA0(v38, __src, &qword_1EBE94D10);
    sub_1C0F9E21C(v39, &qword_1EBE94D10);
    v49[0] = v34;
    v49[1] = 0;
    LOBYTE(v49[2]) = 1;
    memcpy(&v49[2] + 1, v45, 0x6FuLL);
    LOBYTE(v49[16]) = v7;
    *(&v49[16] + 1) = *v44;
    HIDWORD(v49[16]) = *&v44[3];
    v49[17] = v9;
    v49[18] = v11;
    v49[19] = v13;
    v49[20] = v15;
    LOBYTE(v49[21]) = 0;
    *(&v49[21] + 1) = *v43;
    HIDWORD(v49[21]) = *&v43[3];
    LOBYTE(v49[22]) = v33;
    *(&v49[22] + 1) = *v42;
    HIDWORD(v49[22]) = *&v42[3];
    v49[23] = v17;
    v49[24] = v19;
    v49[25] = v21;
    v49[26] = v23;
    LOBYTE(v49[27]) = 0;
    *(&v49[27] + 1) = *v41;
    HIDWORD(v49[27]) = *&v41[3];
    v49[28] = v32;
    sub_1C0F9E21C(v49, &qword_1EBE94D08);
    memcpy(v50, v37, 0x1B2uLL);
    nullsub_1(v50);
    memcpy(__src, v50, 0x1B2uLL);
  }

  else
  {
    sub_1C1146288(__src);
    swift_unknownObjectRetain();
  }

  memcpy(v50, __src, 0x1B2uLL);
  memcpy(v49, __src, 0x1B2uLL);
  *a2 = v35;
  memcpy(a2 + 1, __src, 0x1B2uLL);
  swift_unknownObjectRetain();
  sub_1C102EFA0(v49, v48, &qword_1EBE94CF8);
  sub_1C0F9E21C(v50, &qword_1EBE94CF8);
  return swift_unknownObjectRelease();
}

uint64_t sub_1C1144B34@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  swift_unknownObjectRetain();
  v5 = sub_1C12638E0();
  result = swift_unknownObjectRetain_n();
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;
  *(a2 + 40) = 0;
  *(a2 + 48) = 1;
  *(a2 + 56) = v3;
  *(a2 + 64) = v4;
  *(a2 + 72) = 0;
  *(a2 + 80) = 1;
  *(a2 + 88) = v3;
  *(a2 + 96) = v4;
  return result;
}

uint64_t sub_1C1144BC4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C1263270();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94CA8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14[-v9];
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v15 = a1;
  v16 = a2;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94CB0);
  sub_1C1145EDC();
  sub_1C1265480();
  v12 = &v10[*(v8 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE92EC0);
  sub_1C12633C0();
  *v12 = swift_getKeyPath();
  sub_1C1263260();
  sub_1C114615C();
  sub_1C1146240(&qword_1EBE94CE8, MEMORY[0x1E697C1D8]);
  sub_1C12649F0();
  (*(v5 + 8))(v7, v4);
  return sub_1C0F9E21C(v10, &qword_1EBE94CA8);
}

uint64_t sub_1C1144E30(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = (*(a2 + 48))(v7, ObjectType, a2);
  *v5 = !*v5;
  return v4(v7, 0);
}

double sub_1C1144EB4@<D0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  sub_1C1144F30(a1, a2);
  sub_1C12659A0();
  sub_1C1262C80();
  v3 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94CB0) + 36));
  *v3 = v5;
  v3[1] = v6;
  result = *&v7;
  v3[2] = v7;
  return result;
}

uint64_t sub_1C1144F30@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = sub_1C1265C00();
  v26 = *(v4 - 8);
  v27 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C1265BE0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v24 - v15;
  ObjectType = swift_getObjectType();
  (*(a1 + 32))(ObjectType, a1);
  v25 = sub_1C12652F0();
  v18 = sub_1C1264590();
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v18);
  v19 = sub_1C1264630();
  sub_1C0F9E21C(v16, &qword_1EBE96550);
  KeyPath = swift_getKeyPath();
  sub_1C1265BD0();
  sub_1C1265BC0();
  v21 = *(v8 + 8);
  v21(v13, v7);
  sub_1C1265BF0();
  v22 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94CC8) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90A50);
  sub_1C1146240(&qword_1EBE94CF0, MEMORY[0x1E6982178]);
  sub_1C1263430();
  (*(v26 + 8))(v6, v27);
  v21(v10, v7);
  result = swift_getKeyPath();
  *v22 = result;
  *a2 = v25;
  a2[1] = KeyPath;
  a2[2] = v19;
  return result;
}

uint64_t sub_1C11452A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  swift_unknownObjectRetain();
  sub_1C12659A0();
  sub_1C1262C80();
  LOBYTE(a2) = sub_1C12644D0();
  result = sub_1C12628A0();
  *a3 = sub_1C1145EC4;
  *(a3 + 8) = v6;
  *(a3 + 16) = v12;
  *(a3 + 24) = v13;
  *(a3 + 32) = v14;
  *(a3 + 40) = v15;
  *(a3 + 48) = v16;
  *(a3 + 56) = v17;
  *(a3 + 64) = a2;
  *(a3 + 72) = v8;
  *(a3 + 80) = v9;
  *(a3 + 88) = v10;
  *(a3 + 96) = v11;
  *(a3 + 104) = 0;
  return result;
}

double sub_1C11453A0@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v4 = sub_1C1263AB0();
  v5 = sub_1C12638E0();
  sub_1C11454A0(a1, v12);
  v6 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94CA0) + 36);
  v7 = *MEMORY[0x1E697F468];
  v8 = sub_1C12639D0();
  (*(*(v8 - 8) + 104))(v6, v7, v8);
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91F88) + 36)) = 256;
  *a2 = v4;
  *(a2 + 8) = v5;
  v9 = v12[1];
  *(a2 + 16) = v12[0];
  *(a2 + 32) = v9;
  result = *&v13;
  v11 = v14;
  *(a2 + 48) = v13;
  *(a2 + 64) = v11;
  return result;
}

double sub_1C11454A0@<D0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.8 alpha:0.8];
  v4 = _s7SwiftUI5ColorV06PhotosA6UICoreE08platformC0ACSo7UIColorC_tcfC_0();
  v8 = sub_1C1265190();
  sub_1C0FDB76C();
  v5 = sub_1C1265270();
  sub_1C1262D40();
  ObjectType = swift_getObjectType();
  sub_1C11455C0(ObjectType, a1);
  sub_1C12659A0();
  sub_1C1262C80();
  *a2 = v4;
  *(a2 + 8) = v5;
  *(a2 + 16) = v8;
  *(a2 + 24) = v9;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  result = *&v12;
  *(a2 + 48) = v12;
  return result;
}

double sub_1C11455C0(uint64_t a1, uint64_t a2)
{
  (*(a2 + 56))();
  sub_1C1266620();
  v5 = v4;
  (*(a2 + 80))(a1, a2);
  sub_1C1266620();
  return v5 / v6;
}

uint64_t sub_1C114563C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  ObjectType = swift_getObjectType();
  result = (*(a1 + 56))(ObjectType, a1);
  *a2 = result;
  *(a2 + 8) = v6;
  *(a2 + 12) = v7;
  *(a2 + 16) = v8;
  return result;
}

double sub_1C11456A0@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  ObjectType = swift_getObjectType();
  v5 = (*(a1 + 56))(ObjectType, a1);
  v7 = v6;
  v9 = v8;
  v10 = HIDWORD(v6);
  v11 = (*(a1 + 80))(ObjectType, a1);
  rhs.epoch = v12;
  lhs.value = v5;
  lhs.timescale = v7;
  lhs.flags = v10;
  lhs.epoch = v9;
  rhs.value = v11;
  rhs.timescale = v13;
  rhs.flags = v14;
  CMTimeSubtract(&v17, &lhs, &rhs);
  epoch = v17.epoch;
  result = *&v17.timescale;
  *a2 = v17.value;
  *(a2 + 8) = result;
  *(a2 + 16) = epoch;
  return result;
}

uint64_t sub_1C114577C@<X0>(CMTimeValue a1@<X0>, unint64_t a2@<X1>, CMTimeEpoch a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE96550);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - v9;
  v11 = sub_1C1264700();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29[2] = sub_1C11459B8(a1, a2, a3);
  v29[3] = v15;
  sub_1C0FDB9AC();
  v16 = sub_1C12648F0();
  v18 = v17;
  v20 = v19;
  (*(v12 + 104))(v14, *MEMORY[0x1E6980F20], v11);
  v21 = sub_1C1264590();
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v21);
  sub_1C1264620();
  sub_1C1264640();
  sub_1C0F9E21C(v10, &qword_1EBE96550);
  (*(v12 + 8))(v14, v11);
  v22 = sub_1C1264870();
  v24 = v23;
  LOBYTE(v10) = v25;
  v27 = v26;

  sub_1C0FDB8E8(v16, v18, v20 & 1);

  *a4 = v22;
  *(a4 + 8) = v24;
  *(a4 + 16) = v10 & 1;
  *(a4 + 24) = v27;
  return result;
}

uint64_t sub_1C11459B8(CMTimeValue a1, unint64_t a2, CMTimeEpoch a3)
{
  v4 = a2;
  v6 = HIDWORD(a2);
  if (qword_1EBE8FCF8 != -1)
  {
    swift_once();
  }

  time.value = a1;
  time.timescale = v4;
  time.flags = v6;
  time.epoch = a3;
  v7 = [qword_1EBE94C50 stringFromTimeInterval_];
  if (!v7)
  {
    return 63;
  }

  v8 = v7;
  v9 = sub_1C1265EA0();

  return v9;
}

uint64_t sub_1C1145AC8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C1145B08(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for PhotosPlaybackOverlayConfiguration(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C1145C44()
{
  result = qword_1EBE94C60;
  if (!qword_1EBE94C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94C68);
    sub_1C1145CD0();
    sub_1C1069CEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94C60);
  }

  return result;
}

unint64_t sub_1C1145CD0()
{
  result = qword_1EBE94C70;
  if (!qword_1EBE94C70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94C78);
    sub_1C1145D5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94C70);
  }

  return result;
}

unint64_t sub_1C1145D5C()
{
  result = qword_1EBE94C80;
  if (!qword_1EBE94C80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94C88);
    sub_1C0FDB6D4(&qword_1EBE94C90, &qword_1EBE94C98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94C80);
  }

  return result;
}

unint64_t sub_1C1145EDC()
{
  result = qword_1EBE94CB8;
  if (!qword_1EBE94CB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94CB0);
    sub_1C1145F68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94CB8);
  }

  return result;
}

unint64_t sub_1C1145F68()
{
  result = qword_1EBE94CC0;
  if (!qword_1EBE94CC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94CC8);
    sub_1C1062140();
    sub_1C0FDB6D4(&qword_1EBE90A90, &qword_1EBE90A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94CC0);
  }

  return result;
}

id sub_1C1146020()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696AB70]) init];
  result = [v0 setUnitsStyle_];
  qword_1EBE94C50 = v0;
  return result;
}

uint64_t sub_1C1146094(uint64_t a1)
{
  v2 = sub_1C12633D0();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1C1263630();
}

unint64_t sub_1C114615C()
{
  result = qword_1EBE94CD0;
  if (!qword_1EBE94CD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94CA8);
    sub_1C0FDB6D4(&qword_1EBE94CD8, &qword_1EBE94CE0);
    sub_1C0FDB6D4(&unk_1EDE7B940, &unk_1EBE92EC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94CD0);
  }

  return result;
}

uint64_t sub_1C1146240(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C11462E4()
{
  result = qword_1EBE94D50;
  if (!qword_1EBE94D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94D50);
  }

  return result;
}

unint64_t sub_1C1146338()
{
  result = qword_1EBE94D58;
  if (!qword_1EBE94D58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94D60);
    sub_1C11463C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94D58);
  }

  return result;
}

unint64_t sub_1C11463C4()
{
  result = qword_1EBE94D68;
  if (!qword_1EBE94D68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94D70);
    sub_1C0FDB6D4(&qword_1EBE94D78, qword_1EBE94D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94D68);
  }

  return result;
}

uint64_t sub_1C11464A0()
{
  v0 = sub_1C1265560();
  if (v1 <= 0x3F)
  {
    v0 = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      type metadata accessor for SpringModel.State();
      v0 = sub_1C1266790();
      if (v3 <= 0x3F)
      {
        v0 = sub_1C1261F70();
        if (v4 <= 0x3F)
        {
          return swift_initClassMetadata2();
        }
      }
    }
  }

  return v0;
}

uint64_t sub_1C1146628(char a1)
{
  v2 = *(*v1 + 120);
  v3 = a1 & 1;
  result = sub_1C0FA8038();
  if (result)
  {
    MEMORY[0x1EEE9AC00](result);
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C11481E0();
  }

  else
  {
    *(v1 + v2) = v3;
  }

  return result;
}

uint64_t sub_1C114676C(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 80);
  OUTLINED_FUNCTION_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13[-v8];
  sub_1C1147098(&v13[-v8]);
  v10 = *(v6 + 8);
  v10(v9, v4);
  v16 = v4;
  OUTLINED_FUNCTION_20();
  v17 = *(v11 + 88);
  swift_getKeyPath();
  v14 = v1;
  v15 = a1;
  sub_1C11481E0();

  return v10(a1, v4);
}

uint64_t sub_1C11468C8()
{
  v1 = *(*v0 + 80);
  v69 = *(*v0 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v59 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v51 = &v50 - v2;
  v3 = sub_1C1266790();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v58 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v65 = &v50 - v4;
  v61 = type metadata accessor for SpringModel.State();
  v56 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v55 = &v50 - v5;
  v6 = sub_1C1266790();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v50 - v8;
  v10 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v54 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - v14;
  v64 = v3;
  v67 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v50 - v21;
  sub_1C1147210(v15);
  sub_1C12627B0();
  v53 = v10;
  v23 = *(v10 + 8);
  v24 = v0;
  v25 = AssociatedTypeWitness;
  v52 = v23;
  v23(v15, v1);
  v63 = v22;
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v25);
  v26 = *(*v0 + 128);
  swift_beginAccess();
  v27 = *(v7 + 16);
  v60 = v24;
  v28 = v61;
  v27(v9, v24 + v26, v6);
  if (__swift_getEnumTagSinglePayload(v9, 1, v28))
  {
    (*(v7 + 8))(v9, v6);
    v29 = 1;
    v30 = v66;
  }

  else
  {
    v32 = v55;
    v31 = v56;
    (*(v56 + 16))(v55, v9, v28);
    (*(v7 + 8))(v9, v6);
    v33 = v54;
    (*(v53 + 16))(v54, v32, v1);
    (*(v31 + 8))(v32, v28);
    v30 = v66;
    sub_1C12627B0();
    v52(v33, v1);
    v29 = 0;
  }

  __swift_storeEnumTagSinglePayload(v30, v29, 1, v25);
  v34 = v67;
  v35 = *(TupleTypeMetadata2 + 48);
  v36 = *(v67 + 16);
  v37 = v64;
  v38 = v65;
  v39 = v63;
  v36(v65, v63, v64);
  v36((v38 + v35), v30, v37);
  if (__swift_getEnumTagSinglePayload(v38, 1, v25) == 1)
  {
    v40 = *(v34 + 8);
    v40(v30, v37);
    v40(v39, v37);
    if (__swift_getEnumTagSinglePayload(v38 + v35, 1, v25) == 1)
    {
      return (v40)(v38, v37);
    }

    goto LABEL_9;
  }

  v42 = v57;
  v36(v57, v38, v37);
  if (__swift_getEnumTagSinglePayload(v38 + v35, 1, v25) == 1)
  {
    v43 = *(v67 + 8);
    v43(v66, v37);
    v43(v39, v37);
    (*(v59 + 8))(v42, v25);
LABEL_9:
    (*(v58 + 8))(v38, TupleTypeMetadata2);
    return sub_1C1146628(0);
  }

  v44 = v37;
  v45 = v59;
  v46 = v51;
  (*(v59 + 32))(v51, v38 + v35, v25);
  swift_getAssociatedConformanceWitness();
  v47 = sub_1C1265DE0();
  v48 = *(v45 + 8);
  v48(v46, v25);
  v49 = *(v67 + 8);
  v49(v66, v44);
  v49(v39, v44);
  v48(v42, v25);
  result = (v49)(v38, v44);
  if ((v47 & 1) == 0)
  {
    return sub_1C1146628(0);
  }

  return result;
}

uint64_t sub_1C1147098@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  return (*(*(*(v5 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_1C1147130(uint64_t a1)
{
  OUTLINED_FUNCTION_20();
  v4 = *(v3 + 112);
  swift_beginAccess();
  OUTLINED_FUNCTION_20();
  v6 = *(v5 + 80);
  v7 = *(v6 - 8);
  (*(v7 + 24))(v1 + v4, a1, v6);
  swift_endAccess();
  sub_1C11468C8();
  return (*(v7 + 8))(a1, v6);
}

uint64_t sub_1C1147210@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_10_2();
  swift_getKeyPath();
  sub_1C1148148();

  return sub_1C1147098(a1);
}

uint64_t sub_1C1147290(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = &v6 - v2;
  (*(v4 + 16))(&v6 - v2, v1);
  return sub_1C114676C(v3);
}

uint64_t sub_1C1147350(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v3 = v6 - v2;
  (*(v4 + 16))(v6 - v2, v1);
  return sub_1C1147130(v3);
}

uint64_t sub_1C114741C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v128 = a1;
  v124 = a2;
  v4 = *v2;
  v5 = sub_1C1261DE0();
  OUTLINED_FUNCTION_1();
  v120 = v6;
  MEMORY[0x1EEE9AC00](v7);
  v121 = v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v4 + 80);
  OUTLINED_FUNCTION_1();
  v114 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_3_8();
  v122 = v14;
  MEMORY[0x1EEE9AC00](v15);
  v126 = v99 - v16;
  v17 = *(v4 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_1();
  v125 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_30();
  v23 = v21 - v22;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_3_8();
  v129 = v25;
  MEMORY[0x1EEE9AC00](v26);
  v131 = v9;
  v132 = v99 - v27;
  v130 = v17;
  v28 = type metadata accessor for SpringModel.State();
  v29 = sub_1C1266790();
  OUTLINED_FUNCTION_1();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v32);
  v34 = v99 - v33;
  OUTLINED_FUNCTION_1();
  v127 = v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = v99 - v37;
  v39 = v4;
  v41 = v40;
  v42 = v3 + *(v39 + 128);
  swift_beginAccess();
  v43 = *(v41 + 16);
  v117 = v41 + 16;
  v116 = v43;
  v43(v34, v42, v29);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v34, 1, v28);
  v123 = v5;
  v118 = v41;
  if (EnumTagSinglePayload == 1)
  {
    (*(v41 + 8))(v34, v29);
    v45 = v126;
    sub_1C1147210(v126);
    v46 = v131;
    swift_getAssociatedConformanceWitness();
    sub_1C1266B90();
    sub_1C12627C0();
    v47 = v122;
    sub_1C1147210(v122);
    v48 = v121;
    (*(v120 + 16))(v121, v128, v123);
    v49 = v115;
    sub_1C1147FD8(v47, v45, v48, v46, v115);
    __swift_storeEnumTagSinglePayload(v49, 0, 1, v28);
    swift_beginAccess();
    v50 = OUTLINED_FUNCTION_9_27();
    v51(v50, v49, v29);
    swift_endAccess();
    v52 = v28;
    v53 = v127;
  }

  else
  {
    v106 = v42;
    v108 = v29;
    (*(v127 + 32))(v38, v34, v28);
    sub_1C1261D60();
    v54 = v131;
    sub_1C12627B0();
    v105 = v28;
    v55 = *(v28 + 36);
    v111 = v38;
    v102 = &v38[v55];
    sub_1C12627B0();
    v56 = v126;
    sub_1C1147210(v126);
    sub_1C12627B0();
    v57 = *(v114 + 8);
    v110 = v114 + 8;
    v109 = v57;
    v57(v56, v54);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1C1265540();
    v60 = v125 + 1;
    v59 = v125[1];
    v59(v23, AssociatedTypeWitness);
    sub_1C1263360();
    v62 = fabs(v61);
    v99[1] = *(*v3 + 104);
    sub_1C12627B0();
    v101 = AssociatedConformanceWitness;
    sub_1C1263360();
    v64 = v63;
    v59(v23, AssociatedTypeWitness);
    v107 = v3;
    v104 = v60;
    v103 = v59;
    if (v62 <= v64)
    {
      sub_1C1263360();
      v69 = v68;
      v70 = v126;
      sub_1C1147210(v126);
      sub_1C12627B0();
      OUTLINED_FUNCTION_7_32();
      v71();
      sub_1C1263360();
      v73 = v72;
      v59(v23, AssociatedTypeWitness);
      v74 = vabdd_f64(v69, v73);
      sub_1C12627B0();
      sub_1C1263360();
      v76 = v75;
      v59(v23, AssociatedTypeWitness);
      v67 = v70;
      if (v74 <= v76)
      {
        sub_1C1147210(v70);
        sub_1C12627B0();
        OUTLINED_FUNCTION_7_32();
        v77();
        v78 = v132;
        v59(v132, AssociatedTypeWitness);
        v79 = v125[4];
        v79(v78, v23, AssociatedTypeWitness);
        sub_1C1266B90();
        v80 = v129;
        v59(v129, AssociatedTypeWitness);
        v65 = v23;
        v66 = AssociatedTypeWitness;
        v79(v80, v23, AssociatedTypeWitness);
        LODWORD(v101) = 1;
      }

      else
      {
        v65 = v23;
        v66 = AssociatedTypeWitness;
        LODWORD(v101) = 0;
      }
    }

    else
    {
      v65 = v23;
      v66 = AssociatedTypeWitness;
      LODWORD(v101) = 0;
      v67 = v126;
    }

    v81 = *(v114 + 16);
    v82 = v131;
    (v81)(v67, v111, v131);
    v83 = v125[2];
    v100 = v66;
    v83(v65, v132, v66);
    sub_1C12627C0();
    v84 = v122;
    v81();
    v83(v65, v129, v66);
    sub_1C12627C0();
    v85 = v112;
    (v81)(v112, v67, v82);
    v86 = v113;
    v87 = v84;
    (v81)(v113, v84, v82);
    v88 = v121;
    (*(v120 + 16))(v121, v128, v123);
    v89 = v115;
    sub_1C1147FD8(v85, v86, v88, v82, v115);
    v52 = v105;
    __swift_storeEnumTagSinglePayload(v89, 0, 1, v105);
    v42 = v106;
    swift_beginAccess();
    v90 = OUTLINED_FUNCTION_9_27();
    v29 = v108;
    v91(v90, v89, v108);
    swift_endAccess();
    sub_1C1146628(v101);
    v92 = v87;
    v93 = v109;
    v109(v92, v82);
    v93(v67, v82);
    v94 = v100;
    v95 = v103;
    v103(v129, v100);
    v95(v132, v94);
    v53 = v127;
    (*(v127 + 8))(v111, v52);
  }

  v96 = v124;
  v97 = v119;
  v116(v119, v42, v29);
  result = __swift_getEnumTagSinglePayload(v97, 1, v52);
  if (result != 1)
  {
    return (*(v53 + 32))(v96, v97, v52);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C1147FD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(*(a4 - 8) + 32);
  v9(a5, a1, a4);
  v10 = type metadata accessor for SpringModel.State();
  v9(a5 + *(v10 + 36), a2, a4);
  v11 = *(v10 + 40);
  sub_1C1261DE0();
  OUTLINED_FUNCTION_3();
  v13 = *(v12 + 32);

  return v13(a5 + v11, a3);
}

uint64_t sub_1C11480C8()
{
  OUTLINED_FUNCTION_10_2();
  swift_getKeyPath();
  sub_1C1148148();

  OUTLINED_FUNCTION_10_2();
  return *(v0 + *(v1 + 120));
}

uint64_t sub_1C1148148()
{
  OUTLINED_FUNCTION_1_40();
  swift_getWitnessTable();
  return sub_1C1261F30();
}

uint64_t sub_1C11481E0()
{
  OUTLINED_FUNCTION_1_40();
  swift_getWitnessTable();
  return sub_1C1261F20();
}

char *sub_1C11482B0()
{
  v1 = *v0;
  v2 = qword_1EBEA4888;
  sub_1C1265560();
  OUTLINED_FUNCTION_3();
  (*(v3 + 8))(&v0[v2]);
  OUTLINED_FUNCTION_10_2();
  v5 = *(v1 + 80);
  v6 = *(*(v5 - 8) + 8);
  v6(&v0[*(v4 + 104)], v5);
  OUTLINED_FUNCTION_10_2();
  v6(&v0[*(v7 + 112)], v5);
  OUTLINED_FUNCTION_10_2();
  v9 = *(v8 + 128);
  type metadata accessor for SpringModel.State();
  sub_1C1266790();
  OUTLINED_FUNCTION_3();
  (*(v10 + 8))(&v0[v9]);
  OUTLINED_FUNCTION_10_2();
  v12 = *(v11 + 144);
  sub_1C1261F70();
  OUTLINED_FUNCTION_3();
  (*(v13 + 8))(&v0[v12]);
  return v0;
}

uint64_t sub_1C1148438()
{
  sub_1C11482B0();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1C11484C0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = sub_1C1261DE0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C1148548(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1C1261DE0();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  if (v10 <= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = *(v9 + 84);
  }

  v12 = *(v6 + 64);
  v13 = *(v6 + 80);
  v14 = *(v9 + 80);
  if (!a2)
  {
    return 0;
  }

  v15 = v8;
  v16 = v12 + v13;
  if (a2 <= v11)
  {
LABEL_25:
    if (v7 >= v10)
    {
      v24 = a1;
      v10 = v7;
      v15 = v5;
    }

    else
    {
      v24 = (((a1 + v16) & ~v13) + v12 + v14) & ~v14;
    }

    return __swift_getEnumTagSinglePayload(v24, v10, v15);
  }

  v17 = ((v12 + v14 + (v16 & ~v13)) & ~v14) + *(*(v8 - 8) + 64);
  v18 = 8 * v17;
  if (v17 <= 3)
  {
    v20 = ((a2 - v11 + ~(-1 << v18)) >> v18) + 1;
    if (HIWORD(v20))
    {
      v19 = *(a1 + v17);
      if (!v19)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v20 > 0xFF)
    {
      v19 = *(a1 + v17);
      if (!*(a1 + v17))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v20 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v19 = *(a1 + v17);
  if (!*(a1 + v17))
  {
    goto LABEL_24;
  }

LABEL_14:
  v21 = (v19 - 1) << v18;
  if (v17 > 3)
  {
    v21 = 0;
  }

  if (v17)
  {
    if (v17 <= 3)
    {
      v22 = v17;
    }

    else
    {
      v22 = 4;
    }

    switch(v22)
    {
      case 2:
        v23 = *a1;
        break;
      case 3:
        v23 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v23 = *a1;
        break;
      default:
        v23 = *a1;
        break;
    }
  }

  else
  {
    v23 = 0;
  }

  return v11 + (v23 | v21) + 1;
}

void sub_1C1148798(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = sub_1C1261DE0();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v8 + 64);
  v15 = *(v8 + 80);
  v16 = v14 + v15;
  v17 = *(v11 + 80);
  v18 = ((v14 + v17 + ((v14 + v15) & ~v15)) & ~v17) + *(*(v10 - 8) + 64);
  v19 = 8 * v18;
  if (a3 <= v13)
  {
    v20 = 0;
  }

  else if (v18 <= 3)
  {
    v24 = ((a3 - v13 + ~(-1 << v19)) >> v19) + 1;
    if (HIWORD(v24))
    {
      v20 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v20 = v25;
      }

      else
      {
        v20 = 0;
      }
    }
  }

  else
  {
    v20 = 1;
  }

  if (v13 >= a2)
  {
    v23 = ~v15;
    switch(v20)
    {
      case 1:
        a1[v18] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v18] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v18] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 >= v12)
          {
            v27 = a1;
            v28 = a2;
            v12 = v9;
            v10 = v7;
          }

          else
          {
            v27 = ((&a1[v16] & v23) + v14 + v17) & ~v17;
            v28 = a2;
          }

          __swift_storeEnumTagSinglePayload(v27, v28, v12, v10);
        }

        break;
    }
  }

  else
  {
    v21 = ~v13 + a2;
    if (v18 < 4)
    {
      v22 = (v21 >> v19) + 1;
      if (v18)
      {
        v26 = v21 & ~(-1 << v19);
        bzero(a1, v18);
        if (v18 == 3)
        {
          *a1 = v26;
          a1[2] = BYTE2(v26);
        }

        else if (v18 == 2)
        {
          *a1 = v26;
        }

        else
        {
          *a1 = v21;
        }
      }
    }

    else
    {
      bzero(a1, v18);
      *a1 = v21;
      v22 = 1;
    }

    switch(v20)
    {
      case 1:
        a1[v18] = v22;
        break;
      case 2:
        *&a1[v18] = v22;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v18] = v22;
        break;
      default:
        return;
    }
  }
}

_BYTE *storeEnumTagSinglePayload for PhotosPrefetchable(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1C1148B74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE953D8);
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v0);
  v1 = OUTLINED_FUNCTION_22_8();
  sub_1C0FE5654(v1, v2, &qword_1EBE953D8);
  return sub_1C1263650();
}

uint64_t static PhotosSearchOverlayViewComponent.== infix(_:_:)(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  switch(*a1)
  {
    case 2:
      if (v2 == 2)
      {
        goto LABEL_13;
      }

      goto LABEL_15;
    case 3:
      if (v2 != 3)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 4:
      if (v2 != 4)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 5:
      if (v2 != 5)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 6:
      if (v2 != 6)
      {
        goto LABEL_15;
      }

      goto LABEL_13;
    case 7:
      if (v2 != 7)
      {
        goto LABEL_15;
      }

LABEL_13:
      v3 = 1;
      break;
    default:
      if ((v2 - 2) >= 6)
      {
        v3 = v2 ^ *a1 ^ 1;
      }

      else
      {
LABEL_15:
        v3 = 0;
      }

      break;
  }

  return v3 & 1;
}

uint64_t PhotosSearchOverlayViewComponent.hash(into:)()
{
  switch(*v0)
  {
    case 2:
      v1 = 0;
      goto LABEL_8;
    case 3:
      v1 = 1;
      goto LABEL_8;
    case 4:
      v1 = 2;
      goto LABEL_8;
    case 5:
      v1 = 4;
      goto LABEL_8;
    case 6:
      v1 = 5;
      goto LABEL_8;
    case 7:
      v1 = 6;
LABEL_8:
      result = MEMORY[0x1C68F07E0](v1);
      break;
    default:
      MEMORY[0x1C68F07E0](3);
      result = sub_1C1266EB0();
      break;
  }

  return result;
}

uint64_t PhotosSearchOverlayViewComponent.hashValue.getter()
{
  v1 = *v0;
  sub_1C1266E90();
  switch(v1)
  {
    case 2:
      v2 = 0;
      goto LABEL_8;
    case 3:
      v2 = 1;
      goto LABEL_8;
    case 4:
      v2 = 2;
      goto LABEL_8;
    case 5:
      v2 = 4;
      goto LABEL_8;
    case 6:
      v2 = 5;
      goto LABEL_8;
    case 7:
      v2 = 6;
LABEL_8:
      MEMORY[0x1C68F07E0](v2);
      break;
    default:
      MEMORY[0x1C68F07E0](3);
      sub_1C1266EB0();
      break;
  }

  return sub_1C1266EE0();
}

uint64_t sub_1C1148E1C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952E0);
  sub_1C1265610();
  return v1;
}

uint64_t sub_1C1148E78()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  MEMORY[0x1C68EEF20](&v5, v3);
  return v5;
}

uint64_t sub_1C1148F2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  sub_1C1265610();
  return v1;
}

__n128 sub_1C1148F88@<Q0>(__n128 *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952D8);
  sub_1C1265610();
  result = v5;
  a1->n128_u64[0] = v3;
  a1->n128_u64[1] = v4;
  a1[1] = v5;
  a1[2].n128_u8[0] = v6;
  return result;
}

uint64_t sub_1C1149068()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v6 = *(v0 + 136);
  v7 = v1;
  v8 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92B68);
  MEMORY[0x1C68EEF20](&v5, v3);
  return v5;
}

uint64_t sub_1C114911C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - v10;
  sub_1C0FE5654(v2 + *(a1 + 196), &v15 - v10, &unk_1EBE91930);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_1C12629F0();
    return (*(*(v12 - 8) + 32))(a2, v11, v12);
  }

  else
  {
    sub_1C1266420();
    v14 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();

    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C1149320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  sub_1C0FE5654(v2 + *(a1 + 204), &v14 - v10, &qword_1EBE90428);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_1C0FE4040(v11, a2, &qword_1EBE902F0);
  }

  sub_1C1266420();
  v13 = sub_1C1264410();
  sub_1C1262620();

  sub_1C12637D0();
  swift_getAtKeyPath();

  return (*(v6 + 8))(v8, v5);
}

void sub_1C1149504(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C12637E0();
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v2 + *(a1 + 208);
  v12 = *v10;
  v11 = *(v10 + 8);
  v14 = *(v10 + 16);
  v13 = *(v10 + 24);
  v15 = *(v10 + 32);
  v16 = *(v10 + 40);
  if (*(v10 + 42) == 1)
  {
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v14;
    *(a2 + 24) = v13;
    *(a2 + 32) = v15;
    *(a2 + 40) = v16;
  }

  else
  {
    v20 = v6;
    v17 = v7;
    HIDWORD(v19) = v16;

    sub_1C1266420();
    v18 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C1022584(v12, v11, v14, v13, v15, HIDWORD(v19), 0);
    (*(v17 + 8))(v9, v20);
  }
}

void sub_1C11496A0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1C12637E0();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + *(a1 + 212);
  v10 = *v9;
  if (*(v9 + 8) == 1)
  {
    *a2 = v10;
  }

  else
  {

    sub_1C1266420();
    v11 = sub_1C1264410();
    sub_1C1262620();

    sub_1C12637D0();
    swift_getAtKeyPath();
    sub_1C0FA03F4(v10, 0);
    (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_1C1149804()
{
  sub_1C1266E90();
  PhotosSearchOverlayViewComponent.hash(into:)();
  return sub_1C1266EE0();
}

uint64_t sub_1C1149880()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1149944()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1149A08()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1149ACC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE95B10);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1149B90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD0);
  sub_1C1265420();
  return v1;
}

uint64_t sub_1C1149C70()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE93690);
  sub_1C1265410();
  return v1;
}

uint64_t sub_1C1149CC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95CD0);
  sub_1C1265420();
  return v1;
}

double sub_1C1149DA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952A0);
  sub_1C1265420();
  return v1;
}

double sub_1C1149E68()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  sub_1C1265420();
  return v1;
}

double sub_1C1149F28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  sub_1C1265420();
  return v1;
}

double sub_1C1149FE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  sub_1C1265420();
  return v1;
}

double sub_1C114A0A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  sub_1C1265420();
  return v1;
}

double sub_1C114A168()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  sub_1C1265420();
  return v1;
}

double sub_1C114A228()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  sub_1C1265420();
  return v1;
}

double sub_1C114A2E8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE931B8);
  sub_1C1265420();
  return v1;
}

double sub_1C114A3A8(uint64_t a1)
{
  v2 = sub_1C1149FE8();
  sub_1C1149504(a1, v5);
  v3 = 0.0;
  if ((v5[20] & 0x80000000) != 0)
  {
    v3 = sub_1C1149E68();
  }

  return v2 - v3;
}

uint64_t sub_1C114A404(uint64_t a1)
{
  v3 = sub_1C1263EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v25[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v25[-v17];
  sub_1C1149504(a1, v29);
  if ((v30 & 0x80000000) == 0)
  {
    v19 = sub_1C114A168();
    return *&v19;
  }

  v27 = v1;
  sub_1C1149320(a1, v18);
  v21 = *MEMORY[0x1E697FF40];
  v28 = v4;
  (*(v4 + 104))(v15, v21, v3);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
  v22 = *(v7 + 48);
  sub_1C0FE5654(v18, v9, &qword_1EBE902F0);
  sub_1C0FE5654(v15, &v9[v22], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
  {
    sub_1C0F9E27C(v15, &qword_1EBE902F0);
    sub_1C0F9E27C(v18, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v9[v22], 1, v3) == 1)
    {
      sub_1C0F9E27C(v9, &qword_1EBE902F0);
LABEL_13:
      v19 = sub_1C114A0A8();
      return *&v19;
    }

    goto LABEL_9;
  }

  sub_1C0FE5654(v9, v12, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v9[v22], 1, v3) == 1)
  {
    sub_1C0F9E27C(v15, &qword_1EBE902F0);
    sub_1C0F9E27C(v18, &qword_1EBE902F0);
    (*(v28 + 8))(v12, v3);
LABEL_9:
    sub_1C0F9E27C(v9, &qword_1EBE902E8);
    return 0;
  }

  v23 = v28;
  (*(v28 + 32))(v6, &v9[v22], v3);
  sub_1C1162924(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
  v26 = sub_1C1265DE0();
  v24 = *(v23 + 8);
  v24(v6, v3);
  sub_1C0F9E27C(v15, &qword_1EBE902F0);
  sub_1C0F9E27C(v18, &qword_1EBE902F0);
  v24(v12, v3);
  sub_1C0F9E27C(v9, &qword_1EBE902F0);
  if (v26)
  {
    goto LABEL_13;
  }

  return 0;
}

double sub_1C114A868(uint64_t a1)
{
  v3 = sub_1C1263EB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v24[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v24[-v17];
  sub_1C1149504(a1, v28);
  if (v29 < 0)
  {
    v26 = v1;
    sub_1C1149320(a1, v18);
    v20 = *MEMORY[0x1E697FF40];
    v27 = v4;
    (*(v4 + 104))(v15, v20, v3);
    __swift_storeEnumTagSinglePayload(v15, 0, 1, v3);
    v21 = *(v7 + 48);
    sub_1C0FE5654(v18, v9, &qword_1EBE902F0);
    sub_1C0FE5654(v15, &v9[v21], &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(v9, 1, v3) == 1)
    {
      sub_1C0F9E27C(v15, &qword_1EBE902F0);
      sub_1C0F9E27C(v18, &qword_1EBE902F0);
      if (__swift_getEnumTagSinglePayload(&v9[v21], 1, v3) == 1)
      {
        sub_1C0F9E27C(v9, &qword_1EBE902F0);
        return sub_1C114A0A8();
      }

      goto LABEL_7;
    }

    sub_1C0FE5654(v9, v12, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v9[v21], 1, v3) == 1)
    {
      sub_1C0F9E27C(v15, &qword_1EBE902F0);
      sub_1C0F9E27C(v18, &qword_1EBE902F0);
      (*(v27 + 8))(v12, v3);
LABEL_7:
      sub_1C0F9E27C(v9, &qword_1EBE902E8);
      return result;
    }

    v22 = v27;
    (*(v27 + 32))(v6, &v9[v21], v3);
    sub_1C1162924(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
    v25 = sub_1C1265DE0();
    v23 = *(v22 + 8);
    v23(v6, v3);
    sub_1C0F9E27C(v15, &qword_1EBE902F0);
    sub_1C0F9E27C(v18, &qword_1EBE902F0);
    v23(v12, v3);
    sub_1C0F9E27C(v9, &qword_1EBE902F0);
    if (v25)
    {
      return sub_1C114A0A8();
    }
  }

  return result;
}

uint64_t sub_1C114ACC0(uint64_t a1)
{
  sub_1C1149504(a1, v2);
  if ((v2[20] & 0x80000000) != 0)
  {
    return 0;
  }

  else
  {
    return sub_1C114A168();
  }
}

double sub_1C114AD18(uint64_t a1)
{
  v3 = *(v1 + 184);
  if (*(v3 + 16) && (sub_1C1266E90(), MEMORY[0x1C68F07E0](3), sub_1C1266EB0(), v4 = sub_1C1266EE0(), v6 = -1 << *(v3 + 32), v7 = v4 & ~v6, ((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0))
  {
    v8 = ~v6;
    while (1)
    {
      v9 = *(*(v3 + 48) + v7);
      if ((v9 - 2) >= 6 && (v9 & 1) == 0)
      {
        break;
      }

      v7 = (v7 + 1) & v8;
      if (((*(v3 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    sub_1C1149504(a1, v10);
    if (v11 < 0)
    {
      return sub_1C114A228();
    }
  }

  return result;
}

uint64_t sub_1C114AE1C()
{
  v1 = *(v0 + 184);
  if (!*(v1 + 16))
  {
    return sub_1C114A2E8();
  }

  sub_1C1266E90();
  MEMORY[0x1C68F07E0](4);
  v2 = sub_1C1266EE0();
  v3 = -1 << *(v1 + 32);
  v4 = v2 & ~v3;
  if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return sub_1C114A2E8();
  }

  v5 = ~v3;
  while (*(*(v1 + 48) + v4) != 5)
  {
    v4 = (v4 + 1) & v5;
    if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return sub_1C114A2E8();
    }
  }

  return 0;
}

BOOL sub_1C114AEF4()
{
  v1 = *(v0 + 184);
  if (!*(v1 + 16))
  {
    return *(*(v0 + 168) + 16) != 0;
  }

  sub_1C1266E90();
  MEMORY[0x1C68F07E0](0);
  v2 = sub_1C1266EE0();
  v3 = -1 << *(v1 + 32);
  v4 = v2 & ~v3;
  if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
  {
    return *(*(v0 + 168) + 16) != 0;
  }

  v5 = ~v3;
  while (*(*(v1 + 48) + v4) != 2)
  {
    v4 = (v4 + 1) & v5;
    if (((*(v1 + 56 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
    {
      return *(*(v0 + 168) + 16) != 0;
    }
  }

  return 0;
}

void PhotosSearchOverlayView.init(searchText:isEditing:selectedSuggestionIndex:selectedRange:canShowSearchSuggestions:searchSuggestions:initialSuggestions:recentSuggestions:hiddenComponents:scrolledToEdges:placeholder:content:titleLabel:bottomLabel:radarButton:doneAction:backAction:initialSuggestionSelectionHandler:recentSuggestionSelectionHandler:clearRecentSearchesHandler:intialSuggestionsOnAppearHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, __int128 a24, uint64_t a25, uint64_t a26, char a27, __int128 a28, __int128 a29, __int128 a30, __int128 a31, __int128 a32, __int128 a33, __int128 a34, __int128 a35, __int128 a36, __int128 a37, uint64_t a38, uint64_t a39)
{
  OUTLINED_FUNCTION_23();
  v40 = v39;
  v73 = v41;
  v72 = v42;
  v71 = v43;
  v70 = v44;
  v69 = v45;
  v47 = v46;
  v49 = v48;
  v68 = *v50;
  v51 = *(v50 + 2);
  v52 = *(v50 + 3);
  v53 = *(v50 + 32);
  v54 = *(v50 + 5);
  v55 = type metadata accessor for PhotosSearchOverlayView();
  v56 = v55[49];
  *(v49 + v56) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE91930);
  swift_storeEnumTagMultiPayload();
  v57 = v55[50];
  *(v49 + v57) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE90428);
  swift_storeEnumTagMultiPayload();
  v58 = v55[51];
  *(v49 + v58) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v59 = v49 + v55[52];
  *v59 = swift_getKeyPath();
  *(v59 + 8) = 0u;
  *(v59 + 24) = 0u;
  *(v59 + 39) = 0;
  v60 = v49 + v55[53];
  *v60 = swift_getKeyPath();
  *(v60 + 8) = 0;
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_22_14();
  OUTLINED_FUNCTION_72_0();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_22_14();
  v61 = sub_1C1149C70();
  OUTLINED_FUNCTION_71_0(v61, v62, v63);
  v64 = sub_1C1149C70();
  OUTLINED_FUNCTION_71_0(v64, v65, v66);
  sub_1C1265410();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_26_10();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_2_47();
  OUTLINED_FUNCTION_19_17();
  OUTLINED_FUNCTION_2_47();
  *v49 = v47;
  *(v49 + 8) = v69;
  *(v49 + 16) = v70;
  *(v49 + 24) = v71;
  *(v49 + 32) = v72;
  *(v49 + 40) = v73;
  v67 = *(v40 + 16);
  *(v49 + 48) = *v40;
  *(v49 + 64) = v67;
  *(v49 + 80) = *(v40 + 32);
  *(v49 + 88) = v68;
  *(v49 + 104) = v51;
  *(v49 + 112) = v52;
  *(v49 + 120) = v53;
  *(v49 + 128) = v54;
  *(v49 + 136) = a21;
  *(v49 + 144) = a22;
  *(v49 + 152) = a23;
  *(v49 + 160) = a24;
  *(v49 + 176) = a25;
  *(v49 + 184) = a26;
  *(v49 + 192) = a27;
  *(v49 + 200) = a28;
  *(v49 + 216) = a29;
  *(v49 + 232) = a30;
  *(v49 + 248) = a31;
  *(v49 + 264) = a32;
  *(v49 + 280) = a33;
  *(v49 + 296) = a34;
  *(v49 + 312) = a35;
  *(v49 + 328) = a36;
  *(v49 + 344) = a37;
  *(v49 + 360) = a38;
  *(v49 + 368) = a39;
  OUTLINED_FUNCTION_22_0();
}

void PhotosSearchOverlayView.body.getter()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v130 = v3;
  OUTLINED_FUNCTION_0();
  v141 = v0;
  v142 = v4;
  v143 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_4();
  v140 = v7;
  v192 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EA0);
  *&v151 = v2[2];
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EA8);
  OUTLINED_FUNCTION_11_0();
  v8 = sub_1C1263190();
  OUTLINED_FUNCTION_20_0();
  v9 = sub_1C1263E60();
  v10 = sub_1C1263190();
  v11 = v2[8];
  v147 = v2;
  *&v148 = v11;
  v190 = v11;
  v191 = MEMORY[0x1E6980A30];
  v12 = MEMORY[0x1E697E858];
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_11();
  OUTLINED_FUNCTION_67();
  v16 = sub_1C10239B0(v14, v15);
  v188 = WitnessTable;
  v189 = v16;
  v17 = swift_getWitnessTable();
  *&v145 = MEMORY[0x1E697FEC8];
  v186 = swift_getWitnessTable();
  v187 = MEMORY[0x1E697E5C0];
  v18 = swift_getWitnessTable();
  v175 = v8;
  v176 = v10;
  v177 = v17;
  v178 = v18;
  *&v144 = MEMORY[0x1E6981480];
  OUTLINED_FUNCTION_52_2();
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EB8);
  *&v150 = v2[4];
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  v136 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  OUTLINED_FUNCTION_37();
  sub_1C1263190();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  v131 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_37();
  sub_1C1263190();
  OUTLINED_FUNCTION_28_10();
  sub_1C1263E60();
  OUTLINED_FUNCTION_26();
  v19 = sub_1C1263190();
  OUTLINED_FUNCTION_1_1();
  v139 = v20;
  v184 = swift_getWitnessTable();
  v185 = MEMORY[0x1E6980A30];
  v146 = v12;
  v21 = swift_getWitnessTable();
  v182 = swift_getWitnessTable();
  v183 = MEMORY[0x1E697E5C0];
  v22 = swift_getWitnessTable();
  v175 = v9;
  v176 = v19;
  v177 = v21;
  v178 = v22;
  OUTLINED_FUNCTION_52_2();
  v194 = swift_getOpaqueTypeMetadata2();
  v23 = v147;
  v132 = v147[3];
  v24 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC8);
  *&v149 = v23[6];
  sub_1C1266790();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  v25 = sub_1C12654C0();
  v26 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED0);
  v137 = v23[9];
  v138 = v26;
  v181 = v137;
  OUTLINED_FUNCTION_17();
  v135 = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_11();
  v27 = swift_getWitnessTable();
  v28 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED8);
  v29 = sub_1C1263C40();
  v30 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EE0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90560);
  OUTLINED_FUNCTION_15_2();
  v33 = sub_1C10239B0(v32, &qword_1EBE90560);
  v34 = sub_1C114C53C();
  v175 = v31;
  v176 = &type metadata for PhotosMaterialToolbarTextButtonStyle;
  v177 = v33;
  v178 = v34;
  OUTLINED_FUNCTION_14_20();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v175 = v30;
  v176 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_13_22();
  v36 = swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_17();
  v39 = sub_1C1162924(v37, v38);
  v175 = v28;
  v176 = v29;
  v177 = v36;
  v178 = v39;
  OUTLINED_FUNCTION_11_25();
  v40 = swift_getOpaqueTypeConformance2();
  v175 = v24;
  v176 = v25;
  v177 = v138;
  v178 = v135;
  v179 = v27;
  v180 = v40;
  OUTLINED_FUNCTION_52_2();
  v41 = type metadata accessor for PhotosNotchToolbar();
  OUTLINED_FUNCTION_10_27();
  v42 = swift_getWitnessTable();
  v175 = v41;
  v176 = v42;
  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_52_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  v133 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8);
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  v138 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF0);
  v43 = v132;
  sub_1C1263190();
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_6_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_42_3();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_11_0();
  sub_1C12654C0();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF8);
  OUTLINED_FUNCTION_20_0();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_6_0();
  v44 = sub_1C1262C50();
  OUTLINED_FUNCTION_34_7();
  v45 = swift_getWitnessTable();
  v175 = v44;
  v176 = v45;
  OUTLINED_FUNCTION_33_8();
  OUTLINED_FUNCTION_52_2();
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F00);
  v46 = v147[7];
  v175 = v147[5];
  v176 = v46;
  *&v47 = v151;
  *(&v47 + 1) = v43;
  v151 = v47;
  *&v47 = v150;
  *(&v47 + 1) = v175;
  v150 = v47;
  *&v47 = v149;
  *(&v47 + 1) = v46;
  v149 = v47;
  *&v47 = v148;
  *(&v47 + 1) = v137;
  v148 = v47;
  v48 = v147[13];
  v134 = v147[11];
  v135 = v48;
  v177 = v134;
  v178 = v48;
  OUTLINED_FUNCTION_52_2();
  v49 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  OUTLINED_FUNCTION_20_0();
  sub_1C1263E60();
  OUTLINED_FUNCTION_37();
  v50 = sub_1C1263190();
  OUTLINED_FUNCTION_39_5();
  v51 = swift_getWitnessTable();
  v173 = swift_getWitnessTable();
  v174 = MEMORY[0x1E697E5C0];
  v52 = swift_getWitnessTable();
  v175 = v49;
  v176 = v50;
  v177 = v51;
  v178 = v52;
  OUTLINED_FUNCTION_52_2();
  swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_65_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_42_3();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  OUTLINED_FUNCTION_11_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1263190();
  OUTLINED_FUNCTION_22();
  sub_1C1266790();
  OUTLINED_FUNCTION_22();
  sub_1C12652C0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F08);
  OUTLINED_FUNCTION_6_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_11_0();
  sub_1C1263C30();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  OUTLINED_FUNCTION_18_12();
  OUTLINED_FUNCTION_6_0();
  sub_1C12655A0();
  OUTLINED_FUNCTION_20_0();
  sub_1C1263190();
  OUTLINED_FUNCTION_28_10();
  v53 = sub_1C1263190();
  OUTLINED_FUNCTION_37();
  sub_1C1263E60();
  OUTLINED_FUNCTION_26();
  v54 = sub_1C1263190();
  v171 = swift_getWitnessTable();
  v55 = MEMORY[0x1E6980A30];
  v172 = MEMORY[0x1E6980A30];
  v169 = swift_getWitnessTable();
  v170 = v55;
  v56 = swift_getWitnessTable();
  v167 = swift_getWitnessTable();
  v168 = MEMORY[0x1E697E5C0];
  v57 = swift_getWitnessTable();
  v175 = v53;
  v176 = v54;
  v177 = v56;
  v178 = v57;
  OUTLINED_FUNCTION_52_2();
  v195 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  v58 = sub_1C12655C0();
  OUTLINED_FUNCTION_0();
  v120 = v59;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_34();
  v136 = v61;
  v119[1] = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v121 = v62;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_34();
  v137 = v64;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  v122 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v125 = v65;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_34();
  v138 = v67;
  v124 = sub_1C1263190();
  OUTLINED_FUNCTION_1();
  v128 = v68;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_34();
  v139 = v70;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F10);
  v127 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v129 = v71;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_1_3();
  v123 = v73;
  MEMORY[0x1EEE9AC00](v74);
  v126 = v119 - v75;
  sub_1C1265980();
  v152 = v151;
  v153 = v150;
  v154 = v149;
  v155 = v148;
  v76 = v147;
  *&v77 = v147[10];
  *(&v77 + 1) = v134;
  *&v78 = v147[12];
  *(&v78 + 1) = v135;
  v144 = v78;
  v145 = v77;
  v156 = v77;
  v157 = v78;
  v158 = v141;
  sub_1C12655B0();
  v79 = v142;
  v134 = *(v142 + 16);
  v135 = v142 + 16;
  v80 = v140;
  OUTLINED_FUNCTION_56();
  v81();
  v133 = *(v79 + 80);
  v82 = (v133 + 112) & ~v133;
  v83 = swift_allocObject();
  v84 = OUTLINED_FUNCTION_18_25(v83);
  v85 = *(v79 + 32);
  v142 = v79 + 32;
  v132 = v85;
  v87 = v80;
  (v85)(v86 + v82, v80, v76, v84);
  OUTLINED_FUNCTION_13_0();
  v88 = swift_getWitnessTable();
  v89 = v136;
  sub_1C1264FF0();

  (*(v120 + 8))(v89, v58);
  v90 = v141;
  v91 = v134;
  v134(v87, v141, v76);
  v131 = v82;
  v92 = swift_allocObject();
  OUTLINED_FUNCTION_18_25(v92);
  OUTLINED_FUNCTION_56();
  v132();
  v165 = v88;
  v166 = MEMORY[0x1E69805D0];
  v120 = swift_getWitnessTable();
  v136 = sub_1C0FF9EE4();
  sub_1C1264C40();

  v93 = OUTLINED_FUNCTION_61_1();
  v94(v93);
  v95 = v140;
  v91(v140, v90, v147);
  v96 = swift_allocObject();
  OUTLINED_FUNCTION_18_25(v96);
  OUTLINED_FUNCTION_80_0();
  v97 = v132;
  v132();
  OUTLINED_FUNCTION_20_4();
  v137 = v98;
  v100 = sub_1C10239B0(v99, &qword_1EBE94EC0);
  v163 = v120;
  v164 = v100;
  v101 = swift_getWitnessTable();
  sub_1C1264C40();

  v102 = OUTLINED_FUNCTION_61_1();
  v103(v102);
  v134(v95, v141, v147);
  v104 = swift_allocObject();
  OUTLINED_FUNCTION_18_25(v104);
  OUTLINED_FUNCTION_80_0();
  v97();
  v161 = v101;
  v162 = v100;
  v105 = v124;
  v106 = swift_getWitnessTable();
  v107 = v123;
  v108 = v139;
  sub_1C1264C40();

  (*(v128 + 8))(v108, v105);
  v109 = sub_1C10239B0(&qword_1EBE94F18, &qword_1EBE94F10);
  v159 = v106;
  v160 = v109;
  v110 = v127;
  swift_getWitnessTable();
  v111 = v126;
  OUTLINED_FUNCTION_80_0();
  sub_1C0FDBA4C(v112, v113, v114);
  v115 = *(v129 + 8);
  v115(v107, v110);
  OUTLINED_FUNCTION_80_0();
  sub_1C0FDBA4C(v116, v117, v118);
  v115(v111, v110);
  OUTLINED_FUNCTION_22_0();
}

unint64_t sub_1C114C53C()
{
  result = qword_1EBE94EE8;
  if (!qword_1EBE94EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE94EE8);
  }

  return result;
}

uint64_t sub_1C114C590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v234 = a1;
  v235 = a8;
  v240 = a7;
  v237 = a6;
  v239 = a5;
  v246 = a4;
  v245 = a3;
  v243 = a2;
  v222 = a9;
  v236 = a14;
  v238 = a13;
  v244 = a12;
  v242 = a11;
  v241 = a10;
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC8);
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  v232 = MEMORY[0x1E6981F48];
  swift_getWitnessTable();
  sub_1C12654C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED0);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED8);
  sub_1C1263C40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90560);
  sub_1C10239B0(&qword_1EBE90930, &qword_1EBE90560);
  sub_1C114C53C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1C1162924(&qword_1EDE76E08, MEMORY[0x1E697C658]);
  v269 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  type metadata accessor for PhotosNotchToolbar();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  sub_1C1263190();
  v229 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8);
  sub_1C1263190();
  v231 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF0);
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF8);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C1262C50();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  v230 = v15;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F00);
  v16 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  sub_1C1263E60();
  v17 = sub_1C1263190();
  v18 = swift_getWitnessTable();
  v233 = MEMORY[0x1E697FEC8];
  v293 = swift_getWitnessTable();
  v294 = MEMORY[0x1E697E5C0];
  v227 = MEMORY[0x1E697E858];
  v265 = v16;
  v266 = v17;
  v267 = v18;
  v268 = swift_getWitnessTable();
  v228 = MEMORY[0x1E6981480];
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1266790();
  sub_1C1263190();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1266790();
  sub_1C12652C0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F08);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263C30();
  swift_getTupleTypeMetadata2();
  v205 = sub_1C1265B00();
  v203 = swift_getWitnessTable();
  v19 = sub_1C12655A0();
  v209 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v202 = &v175 - v20;
  v21 = sub_1C1263190();
  v214 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v212 = &v175 - v22;
  v23 = sub_1C1263190();
  v218 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v217 = &v175 - v24;
  sub_1C1263E60();
  v25 = sub_1C1263190();
  v211 = v19;
  v201 = swift_getWitnessTable();
  v291 = v201;
  v292 = MEMORY[0x1E6980A30];
  v26 = MEMORY[0x1E6980A30];
  v216 = v21;
  v204 = swift_getWitnessTable();
  v289 = v204;
  v290 = v26;
  v27 = swift_getWitnessTable();
  v287 = swift_getWitnessTable();
  v288 = MEMORY[0x1E697E5C0];
  v28 = swift_getWitnessTable();
  v219 = v23;
  v265 = v23;
  v210 = v25;
  v266 = v25;
  v207 = v28;
  v208 = v27;
  v267 = v27;
  v268 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v213 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v220 = &v175 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v206 = &v175 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v215 = &v175 - v33;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EB8);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210);
  sub_1C1263190();
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  v34 = sub_1C1265B00();
  v193 = swift_getWitnessTable();
  v194 = v34;
  v35 = sub_1C12655A0();
  v195 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v192 = &v175 - v36;
  v37 = sub_1C1263190();
  v198 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v197 = &v175 - v38;
  sub_1C1263E60();
  v39 = sub_1C1263190();
  v196 = v35;
  v188 = swift_getWitnessTable();
  v285 = v188;
  v286 = MEMORY[0x1E6980A30];
  v40 = swift_getWitnessTable();
  v283 = swift_getWitnessTable();
  v284 = MEMORY[0x1E697E5C0];
  v41 = swift_getWitnessTable();
  v200 = v37;
  v265 = v37;
  v190 = v39;
  v191 = v40;
  v266 = v39;
  v267 = v40;
  v189 = v41;
  v268 = v41;
  v231 = swift_getOpaqueTypeMetadata2();
  v229 = *(v231 - 8);
  MEMORY[0x1EEE9AC00](v231);
  v232 = &v175 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v230 = &v175 - v44;
  v45 = v243;
  v181 = *(v243 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v179 = &v175 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_1C1263190();
  v223 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v178 = &v175 - v49;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EA8);
  v176 = v48;
  v50 = sub_1C1263190();
  v185 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v177 = &v175 - v51;
  sub_1C1263E60();
  v52 = sub_1C1263190();
  v53 = v235;
  v281 = v235;
  v282 = MEMORY[0x1E6980A30];
  v54 = swift_getWitnessTable();
  v175 = v54;
  v55 = sub_1C10239B0(&qword_1EBE94EB0, &qword_1EBE94EA8);
  v279 = v54;
  v280 = v55;
  v56 = swift_getWitnessTable();
  v277 = swift_getWitnessTable();
  v278 = MEMORY[0x1E697E5C0];
  v57 = swift_getWitnessTable();
  v186 = v50;
  v265 = v50;
  v183 = v56;
  v184 = v52;
  v266 = v52;
  v267 = v56;
  v182 = v57;
  v268 = v57;
  v228 = swift_getOpaqueTypeMetadata2();
  v224 = *(v228 - 8);
  MEMORY[0x1EEE9AC00](v228);
  v227 = &v175 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v59);
  v180 = &v175 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v233 = &v175 - v62;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94EA0);
  MEMORY[0x1EEE9AC00](v63);
  v226 = &v175 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v175 - v66;
  v265 = v45;
  v266 = v245;
  v267 = v246;
  v268 = v239;
  v269 = v237;
  OpaqueTypeConformance2 = v240;
  v271 = v53;
  v68 = v53;
  v272 = v241;
  v273 = v242;
  v274 = v244;
  v275 = v238;
  v69 = v236;
  v276 = v236;
  v70 = type metadata accessor for PhotosSearchOverlayView();
  v71 = v234;
  sub_1C114E3B8(v70, v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94FF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94FF8);
  v73 = sub_1C1160464();
  v265 = v72;
  v266 = v73;
  swift_getOpaqueTypeConformance2();
  v74 = sub_1C10F4FC0();
  v75 = sub_1C1170094();
  v199 = v63;
  v76 = *(v63 + 36);
  v225 = v67;
  v77 = &v67[v76];
  *v77 = v74;
  v77[8] = v75;
  v78 = *(v71 + 216);
  v79 = sub_1C114A3A8(v70);
  v80 = COERCE_DOUBLE(sub_1C114ACC0(v70));
  if (v81)
  {
    v82 = 0.0;
  }

  else
  {
    v82 = v80;
  }

  v83 = COERCE_DOUBLE(sub_1C114AE1C());
  if (v84)
  {
    v85 = 0.0;
  }

  else
  {
    v85 = v83;
  }

  sub_1C114AD18(v70);
  v87 = v86;
  if (v88)
  {
    v87 = 0.0;
  }

  v89 = v85 + v87;
  v187 = v70;
  sub_1C114A868(v70);
  v90 = v179;
  v78(v79 + v82, 0.0, v89, 0.0);
  v91 = v243;
  sub_1C10F4FC0();
  sub_1C1170094();
  v92 = v178;
  sub_1C1264BF0();
  (v181[1])(v90, v91);
  v247 = v91;
  v248 = v245;
  v249 = v246;
  v93 = v239;
  v250 = v239;
  v251 = v237;
  v252 = v240;
  v253 = v68;
  v254 = v241;
  v255 = v242;
  v256 = v244;
  v257 = v238;
  v258 = v69;
  v259 = v71;
  v94 = v177;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95078);
  sub_1C1160868();
  v95 = v176;
  sub_1C10A0734();
  sub_1C1264F60();
  v96 = (*(v223 + 8))(v92, v95);
  if (qword_1EBE8FC78 != -1)
  {
    v96 = swift_once();
  }

  v181 = &v175;
  v223 = qword_1EBEA4868;
  MEMORY[0x1EEE9AC00](v96);
  v97 = v245;
  *(&v175 - 14) = v243;
  *(&v175 - 13) = v97;
  *(&v175 - 12) = v246;
  *(&v175 - 11) = v93;
  v98 = v240;
  *(&v175 - 10) = v237;
  *(&v175 - 9) = v98;
  v99 = v241;
  *(&v175 - 8) = v235;
  *(&v175 - 7) = v99;
  v100 = v244;
  *(&v175 - 6) = v242;
  *(&v175 - 5) = v100;
  *(&v175 - 4) = v238;
  *(&v175 - 3) = v69;
  *(&v175 - 2) = v234;
  v101 = swift_checkMetadataState();
  v102 = v180;
  v103 = v186;
  v105 = v182;
  v104 = v183;
  sub_1C1265030();
  (*(v185 + 8))(v94, v103);
  v265 = v103;
  v266 = v101;
  v267 = v104;
  v268 = v105;
  v183 = MEMORY[0x1E6981480];
  v106 = swift_getOpaqueTypeConformance2();
  v107 = v228;
  v184 = v106;
  sub_1C0FDBA4C(v102, v228, v106);
  v185 = *(v224 + 8);
  v186 = v224 + 8;
  v108 = (v185)(v102, v107);
  MEMORY[0x1EEE9AC00](v108);
  v109 = v245;
  *(&v175 - 14) = v243;
  *(&v175 - 13) = v109;
  *(&v175 - 12) = v246;
  *(&v175 - 11) = v93;
  v111 = v236;
  v110 = v237;
  v112 = v240;
  *(&v175 - 10) = v237;
  *(&v175 - 9) = v112;
  v113 = v235;
  v114 = v241;
  *(&v175 - 8) = v235;
  *(&v175 - 7) = v114;
  *(&v175 - 6) = v242;
  *(&v175 - 5) = v100;
  *(&v175 - 4) = v238;
  *(&v175 - 3) = v111;
  *(&v175 - 2) = v234;
  sub_1C10A7F5C();
  v115 = v192;
  sub_1C1265590();
  sub_1C12631F0();
  v116 = v196;
  sub_1C1170094();
  v117 = v197;
  sub_1C1264BF0();
  v118 = (*(v195 + 8))(v115, v116);
  MEMORY[0x1EEE9AC00](v118);
  v119 = v245;
  *(&v175 - 14) = v243;
  *(&v175 - 13) = v119;
  v120 = v239;
  *(&v175 - 12) = v246;
  *(&v175 - 11) = v120;
  v121 = v240;
  *(&v175 - 10) = v110;
  *(&v175 - 9) = v121;
  v122 = v241;
  *(&v175 - 8) = v113;
  *(&v175 - 7) = v122;
  v123 = v244;
  *(&v175 - 6) = v242;
  *(&v175 - 5) = v123;
  v124 = v238;
  *(&v175 - 4) = v238;
  *(&v175 - 3) = v111;
  *(&v175 - 2) = v234;
  v125 = swift_checkMetadataState();
  v126 = v232;
  v127 = v200;
  v128 = v191;
  v129 = v189;
  sub_1C1265030();
  (*(v198 + 1))(v117, v127);
  v265 = v127;
  v266 = v125;
  v267 = v128;
  v268 = v129;
  v130 = swift_getOpaqueTypeConformance2();
  v131 = v231;
  v197 = v130;
  sub_1C0FDBA4C(v126, v231, v130);
  v132 = *(v229 + 8);
  v200 = v229 + 8;
  v198 = v132;
  v133 = (v132)(v126, v131);
  MEMORY[0x1EEE9AC00](v133);
  v134 = v245;
  *(&v175 - 14) = v243;
  *(&v175 - 13) = v134;
  v135 = v239;
  *(&v175 - 12) = v246;
  *(&v175 - 11) = v135;
  v136 = v240;
  *(&v175 - 10) = v237;
  *(&v175 - 9) = v136;
  v137 = v234;
  v138 = v241;
  *(&v175 - 8) = v235;
  *(&v175 - 7) = v138;
  v139 = v244;
  *(&v175 - 6) = v242;
  *(&v175 - 5) = v139;
  v140 = v236;
  *(&v175 - 4) = v124;
  *(&v175 - 3) = v140;
  *(&v175 - 2) = v137;
  sub_1C10A7F5C();
  v141 = v202;
  sub_1C1265590();
  sub_1C12631F0();
  v142 = v187;
  v143 = v137;
  sub_1C1149504(v187, &v265);
  if (OpaqueTypeConformance2 < 0)
  {
    sub_1C12644B0();
  }

  else
  {
    sub_1C1264470();
  }

  v144 = v211;
  v145 = v212;
  sub_1C1264BF0();
  (*(v209 + 8))(v141, v144);
  sub_1C1263200();
  v146 = v143;
  sub_1C1149504(v142, &v265);
  if (OpaqueTypeConformance2 < 0)
  {
    sub_1C1264480();
  }

  else
  {
    sub_1C12644B0();
  }

  v147 = v216;
  v148 = v217;
  sub_1C1264BF0();
  v149 = (*(v214 + 8))(v145, v147);
  MEMORY[0x1EEE9AC00](v149);
  v150 = v245;
  *(&v175 - 14) = v243;
  *(&v175 - 13) = v150;
  v151 = v239;
  *(&v175 - 12) = v246;
  *(&v175 - 11) = v151;
  *(&v175 - 10) = v237;
  *(&v175 - 9) = v136;
  v152 = v241;
  *(&v175 - 8) = v235;
  *(&v175 - 7) = v152;
  v153 = v244;
  *(&v175 - 6) = v242;
  *(&v175 - 5) = v153;
  v154 = v236;
  *(&v175 - 4) = v238;
  *(&v175 - 3) = v154;
  *(&v175 - 2) = v146;
  v155 = swift_checkMetadataState();
  v157 = v206;
  v156 = v207;
  v158 = v219;
  v159 = v208;
  sub_1C1265030();
  (*(v218 + 8))(v148, v158);
  v265 = v158;
  v266 = v155;
  v267 = v159;
  v268 = v156;
  v246 = swift_getOpaqueTypeConformance2();
  v160 = v215;
  v161 = OpaqueTypeMetadata2;
  sub_1C0FDBA4C(v157, OpaqueTypeMetadata2, v246);
  v162 = v213;
  v163 = *(v213 + 8);
  v163(v157, v161);
  v164 = v163;
  v245 = v163;
  v165 = v226;
  sub_1C0FE5654(v225, v226, &qword_1EBE94EA0);
  v265 = v165;
  v166 = v227;
  v167 = v228;
  (*(v224 + 16))(v227, v233, v228);
  v266 = v166;
  v168 = v230;
  v169 = v231;
  v170 = v232;
  (*(v229 + 16))(v232, v230, v231);
  v267 = v170;
  v171 = v220;
  (*(v162 + 16))(v220, v160, v161);
  v268 = v171;
  v264[0] = v199;
  v264[1] = v167;
  v264[2] = v169;
  v264[3] = v161;
  v260 = sub_1C11609D0();
  v261 = v184;
  v262 = v197;
  v263 = v246;
  sub_1C119EE80(&v265, 4, v264);
  v164(v160, v161);
  v172 = v198;
  v198(v168, v169);
  v173 = v185;
  (v185)(v233, v167);
  sub_1C0F9E27C(v225, &qword_1EBE94EA0);
  v245(v171, v161);
  v172(v232, v169);
  v173(v227, v167);
  return sub_1C0F9E27C(v226, &qword_1EBE94EA0);
}

uint64_t sub_1C114E3B8@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = *(a1 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v58 = v4;
  v60 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94FF8);
  MEMORY[0x1EEE9AC00](v61);
  v6 = (&v56 - v5);
  v7 = sub_1C12629F0();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  sub_1C114911C(a1, &v56 - v12);
  v14 = *MEMORY[0x1E697DBB8];
  v56 = *(v8 + 104);
  v56(v10, v14, v7);
  v15 = sub_1C12629D0();
  v16 = *(v8 + 8);
  v16(v10, v7);
  v57 = v16;
  v16(v13, v7);
  v59 = v2;
  if ((v15 & 1) == 0)
  {
    goto LABEL_14;
  }

  v17 = *(v2 + 184);
  if (!*(v17 + 16))
  {
    goto LABEL_14;
  }

  sub_1C1266E90();
  MEMORY[0x1C68F07E0](0);
  v18 = sub_1C1266EE0();
  v19 = v17 + 56;
  v20 = -1 << *(v17 + 32);
  v21 = v18 & ~v20;
  if (((*(v17 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
  {
    goto LABEL_14;
  }

  v22 = ~v20;
  while (*(*(v17 + 48) + v21) != 2)
  {
    v21 = (v21 + 1) & v22;
    if (((*(v19 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  if (*(v17 + 16) && (sub_1C1266E90(), MEMORY[0x1C68F07E0](1), v23 = sub_1C1266EE0(), v24 = -1 << *(v17 + 32), v25 = v23 & ~v24, ((*(v19 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0))
  {
    v26 = ~v24;
    v27 = *(v17 + 48);
    do
    {
      v28 = *(v27 + v25);
      v29 = v28 == 3;
      if (v28 == 3)
      {
        break;
      }

      v25 = (v25 + 1) & v26;
    }

    while (((*(v19 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) != 0);
  }

  else
  {
LABEL_14:
    v29 = 0;
  }

  v30 = v59;
  v31 = sub_1C1149880();
  v32 = 0.0;
  if (sub_1C1149880())
  {
    sub_1C114911C(a1, v13);
    v56(v10, *MEMORY[0x1E697DBA8], v7);
    v33 = sub_1C12629D0();
    v34 = v10;
    v35 = v31;
    v36 = v57;
    v57(v34, v7);
    v36(v13, v7);
    v31 = v35;
    if (v33)
    {
      v32 = 0.0;
    }

    else
    {
      v32 = 0.05;
    }
  }

  LODWORD(v57) = sub_1C1264470();
  v37 = sub_1C1149880();
  LODWORD(v56) = sub_1C1264470();
  if (qword_1EBE8FC78 != -1)
  {
    swift_once();
  }

  v38 = 0.4;
  if (v29)
  {
    v38 = 0.7;
  }

  if (v37)
  {
    v39 = v38;
  }

  else
  {
    v39 = 0.0;
  }

  if (v31)
  {
    v40 = 30.0;
  }

  else
  {
    v40 = 0.0;
  }

  v41 = qword_1EBEA4868;
  v42 = v30;
  v43 = sub_1C1149880() & 1;
  KeyPath = swift_getKeyPath();
  v45 = (v6 + *(v61 + 36));
  v46 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE91808) + 28);
  swift_retain_n();
  sub_1C12658C0();
  v47 = sub_1C1265900();
  __swift_storeEnumTagSinglePayload(v45 + v46, 0, 1, v47);
  *v45 = KeyPath;
  *v6 = v40;
  v6[2] = v32;
  *(v6 + 12) = v57;
  v6[4] = v39;
  *(v6 + 20) = v56;
  *(v6 + 3) = v41;
  *(v6 + 32) = v43;
  *(v6 + 5) = v41;
  *(v6 + 48) = v29;
  v48 = v62;
  v49 = v60;
  (*(v62 + 16))(v60, v42, a1);
  v50 = (*(v48 + 80) + 112) & ~*(v48 + 80);
  v51 = swift_allocObject();
  v52 = a1[2];
  *(v51 + 1) = a1[1];
  *(v51 + 2) = v52;
  v53 = a1[4];
  *(v51 + 3) = a1[3];
  *(v51 + 4) = v53;
  v54 = a1[6];
  *(v51 + 5) = a1[5];
  *(v51 + 6) = v54;
  (*(v48 + 32))(&v51[v50], v49, a1);
  sub_1C1160464();
  sub_1C1264AF0();

  return sub_1C0F9E27C(v6, &qword_1EBE94FF8);
}

uint64_t sub_1C114E9A8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95308);
  sub_1C10239B0(&qword_1EBE95310, &qword_1EBE95308);
  *a8 = sub_1C10A7F5C();
  *(a8 + 8) = 0;
  *(a8 + 16) = 1;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95318);
  sub_1C114EB58(a1, a2, a3, a4, a5, a6, a7, a8 + *(v16 + 44), a9, a10, a11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95090);
  sub_1C10239B0(&qword_1EBE95088, &qword_1EBE95090);
  v17 = sub_1C10F4FC0();
  v18 = sub_1C1170094();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95078);
  v20 = a8 + *(result + 36);
  *v20 = v17;
  *(v20 + 8) = v18;
  return result;
}

uint64_t sub_1C114EB58@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, __int128 a9, __int128 a10, uint64_t a11)
{
  v60 = a3;
  v58 = a2;
  v72 = a8;
  v59 = a10;
  v57 = a9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95320);
  v71 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v64 = &v57 - v16;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95328) - 8;
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v57 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v67 = &v57 - v21;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95330);
  v63 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v23 = &v57 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95338);
  v25 = v24 - 8;
  MEMORY[0x1EEE9AC00](v24);
  v65 = &v57 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v57 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v61 = &v57 - v31;
  *&v73 = a1;
  *(&v73 + 1) = v58;
  *&v74 = v60;
  *(&v74 + 1) = a4;
  *&v75 = a5;
  *(&v75 + 1) = a6;
  v76 = a7;
  v77 = v57;
  v78 = v59;
  v79 = a11;
  v32 = type metadata accessor for PhotosSearchOverlayView();
  sub_1C114F264(v32, v23);
  sub_1C1149E68();
  sub_1C114A3A8(v32);
  sub_1C114A404(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95340);
  v34 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95348);
  v35 = sub_1C11627C8(&qword_1EBE95350, &qword_1EBE95340, &unk_1C12BC378, sub_1C1162868);
  v36 = sub_1C116296C();
  *&v73 = v33;
  *(&v73 + 1) = v34;
  *&v74 = v35;
  *(&v74 + 1) = v36;
  swift_getOpaqueTypeConformance2();
  v37 = v62;
  sub_1C10A0734();
  sub_1C1262C80();
  (*(v63 + 32))(v29, v23, v37);
  v38 = &v29[*(v25 + 44)];
  v39 = v81;
  *v38 = v80;
  *(v38 + 1) = v39;
  *(v38 + 2) = v82;
  v40 = v61;
  sub_1C0FE4040(v29, v61, &qword_1EBE95338);
  v41 = v64;
  sub_1C114FA14(v32);
  sub_1C1149F28();
  sub_1C114AE1C();
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95380);
  v43 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE95388);
  v44 = sub_1C1162A24();
  v45 = sub_1C1162B68();
  *&v73 = v42;
  *(&v73 + 1) = v43;
  *&v74 = v44;
  *(&v74 + 1) = v45;
  swift_getOpaqueTypeConformance2();
  v46 = v69;
  sub_1C10A0734();
  sub_1C1262C80();
  v47 = v66;
  (*(v71 + 32))(v66, v41, v46);
  v48 = (v47 + *(v68 + 44));
  v49 = v74;
  *v48 = v73;
  v48[1] = v49;
  v48[2] = v75;
  v50 = v67;
  sub_1C0FE4040(v47, v67, &qword_1EBE95328);
  v51 = v65;
  sub_1C0FE5654(v40, v65, &qword_1EBE95338);
  v52 = v70;
  sub_1C0FE5654(v50, v70, &qword_1EBE95328);
  v53 = v72;
  sub_1C0FE5654(v51, v72, &qword_1EBE95338);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE953D0);
  v55 = v53 + *(v54 + 48);
  *v55 = 0;
  *(v55 + 8) = 1;
  sub_1C0FE5654(v52, v53 + *(v54 + 64), &qword_1EBE95328);
  sub_1C0F9E27C(v50, &qword_1EBE95328);
  sub_1C0F9E27C(v40, &qword_1EBE95338);
  sub_1C0F9E27C(v52, &qword_1EBE95328);
  return sub_1C0F9E27C(v51, &qword_1EBE95338);
}

uint64_t sub_1C114F264@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v55 = a2;
  v4 = sub_1C1263EB0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v47 = &v45[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v45[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v56 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v45[-v14];
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45[-v17];
  v49 = type metadata accessor for PhotosBlurLegibilityGradientSpec(0);
  MEMORY[0x1EEE9AC00](v49);
  v20 = &v45[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = type metadata accessor for PhotosBlurLegibilityGradient(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v50 = &v45[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95360);
  MEMORY[0x1EEE9AC00](v51);
  v24 = &v45[-v23];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95340);
  MEMORY[0x1EEE9AC00](v53);
  v52 = &v45[-v25];
  v54 = v2;
  sub_1C1149320(a1, v18);
  v26 = *MEMORY[0x1E697FF40];
  v48 = v5;
  (*(v5 + 104))(v15, v26, v4);
  __swift_storeEnumTagSinglePayload(v15, 0, 1, v4);
  v27 = *(v8 + 56);
  sub_1C0FE5654(v18, v10, &qword_1EBE902F0);
  sub_1C0FE5654(v15, &v10[v27], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v10, 1, v4) == 1)
  {
    sub_1C0F9E27C(v15, &qword_1EBE902F0);
    sub_1C0F9E27C(v18, &qword_1EBE902F0);
    if (__swift_getEnumTagSinglePayload(&v10[v27], 1, v4) == 1)
    {
      sub_1C0F9E27C(v10, &qword_1EBE902F0);
      v28 = 50.0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1C0FE5654(v10, v56, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v10[v27], 1, v4) == 1)
  {
    sub_1C0F9E27C(v15, &qword_1EBE902F0);
    sub_1C0F9E27C(v18, &qword_1EBE902F0);
    (*(v48 + 8))(v56, v4);
LABEL_6:
    sub_1C0F9E27C(v10, &qword_1EBE902E8);
    v28 = 20.0;
    goto LABEL_10;
  }

  v29 = v48;
  v30 = &v10[v27];
  v31 = v47;
  (*(v48 + 32))(v47, v30, v4);
  sub_1C1162924(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
  v46 = sub_1C1265DE0();
  v32 = *(v29 + 8);
  v32(v31, v4);
  sub_1C0F9E27C(v15, &qword_1EBE902F0);
  sub_1C0F9E27C(v18, &qword_1EBE902F0);
  v32(v56, v4);
  sub_1C0F9E27C(v10, &qword_1EBE902F0);
  if (v46)
  {
    v28 = 50.0;
  }

  else
  {
    v28 = 20.0;
  }

LABEL_10:
  v33 = v52;
  v34 = &v20[*(v49 + 40)];
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE945C0);
  v36 = *(v35 + 48);
  *v34 = sub_1C1265160();
  v37 = *MEMORY[0x1E6981DF0];
  v38 = sub_1C1265A90();
  (*(*(v38 - 8) + 104))(v34 + v36, v37, v38);
  __swift_storeEnumTagSinglePayload(v34, 0, 1, v35);
  *v20 = 1;
  *(v20 + 1) = 0x3FF8000000000000;
  *(v20 + 2) = v28;
  *(v20 + 3) = 1;
  *(v20 + 4) = 0;
  v20[40] = 0;
  v39 = v50;
  PhotosBlurLegibilityGradient.init(spec:)(v20, v50);
  sub_1C1162C38(v39, v24);
  v24[*(v51 + 36)] = 0;
  sub_1C1162868();
  sub_1C1264CE0();
  v40 = sub_1C0F9E27C(v24, &qword_1EBE95360);
  if (qword_1EBE8FC80 != -1)
  {
    v40 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v40);
  v41 = a1[2];
  *&v45[-112] = a1[1];
  *&v45[-96] = v41;
  v42 = a1[4];
  *&v45[-80] = a1[3];
  *&v45[-64] = v42;
  v43 = a1[6];
  *&v45[-48] = a1[5];
  *&v45[-32] = v43;
  *&v45[-16] = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95348);
  sub_1C11627C8(&qword_1EBE95350, &qword_1EBE95340, &unk_1C12BC378, sub_1C1162868);
  sub_1C116296C();
  sub_1C1265030();
  return sub_1C0F9E27C(v33, &qword_1EBE95340);
}

uint64_t sub_1C114FA14(_OWORD *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE953A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95380);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v26 - v7;
  sub_1C1265B70();
  v10 = v9;
  v12 = v11;
  sub_1C1265B80();
  v26[1] = v10;
  v26[2] = v12;
  v26[3] = v13;
  v26[4] = v14;
  v26[5] = 0x3FE6666666666666;
  v27 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE953B0);
  sub_1C1162ADC();
  sub_1C1264CE0();
  v15 = *(v1 + 184);
  v16 = 1.0;
  if (*(v15 + 16))
  {
    sub_1C1266E90();
    MEMORY[0x1C68F07E0](4);
    v17 = sub_1C1266EE0();
    v18 = -1 << *(v15 + 32);
    v19 = v17 & ~v18;
    if ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19))
    {
      v20 = ~v18;
      while (*(*(v15 + 48) + v19) != 5)
      {
        v19 = (v19 + 1) & v20;
        if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v16 = 0.0;
    }
  }

LABEL_8:
  v21 = sub_1C0FE4040(v5, v8, &qword_1EBE953A0);
  *&v8[*(v6 + 36)] = v16;
  if (qword_1EBE8FC80 != -1)
  {
    v21 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v21);
  v22 = a1[2];
  *&v26[-14] = a1[1];
  *&v26[-12] = v22;
  v23 = a1[4];
  *&v26[-10] = a1[3];
  *&v26[-8] = v23;
  v24 = a1[6];
  *&v26[-6] = a1[5];
  *&v26[-4] = v24;
  v26[-2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95388);
  sub_1C1162A24();
  sub_1C1162B68();
  sub_1C1265030();
  return sub_1C0F9E27C(v8, &qword_1EBE95380);
}

uint64_t sub_1C114FD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v31 = a7;
  v32 = a8;
  v33 = a2;
  v34 = a1;
  v35 = a9;
  v30 = a13;
  v29 = a11;
  v28 = a10;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EA8);
  sub_1C1263190();
  sub_1C1263E60();
  v17 = sub_1C1263190();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - v22;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = v31;
  v43 = v32;
  v44 = v28;
  v45 = v29;
  v46 = a12;
  v47 = v30;
  type metadata accessor for PhotosSearchOverlayView();
  sub_1C1149880();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264F50();
  v36 = WitnessTable;
  v37 = MEMORY[0x1E697E5C0];
  v25 = swift_getWitnessTable();
  sub_1C0FDBA4C(v20, v17, v25);
  v26 = *(v18 + 8);
  v26(v20, v17);
  sub_1C0FDBA4C(v23, v17, v25);
  return (v26)(v23, v17);
}

uint64_t sub_1C114FF94@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  v40 = a7;
  v39 = a6;
  v38 = a5;
  v36 = a4;
  v33 = a2;
  v32 = a1;
  v42 = a8;
  v37 = a12;
  v35 = a11;
  v34 = a9;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210);
  v41 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  v13 = sub_1C1263190();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v31 - v18;
  v20 = sub_1C1264490();
  sub_1C12644B0();
  v21 = sub_1C12644B0();
  v47 = v32;
  v48 = v33;
  v22 = v21 != v20;
  v49 = a3;
  v50 = v36;
  v51 = v38;
  v52 = v39;
  v53 = v40;
  v54 = v34;
  v55 = a10;
  v56 = v35;
  v57 = v37;
  v23 = type metadata accessor for PhotosSearchOverlayView();
  sub_1C1150388(v22, v23, v16);
  v46[6] = a10;
  v46[7] = MEMORY[0x1E697E5C0];
  WitnessTable = swift_getWitnessTable();
  v25 = sub_1C10239B0(&qword_1EDE7BC78, &qword_1EBE91210);
  v46[4] = WitnessTable;
  v46[5] = v25;
  v26 = swift_getWitnessTable();
  v27 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0);
  v46[2] = v26;
  v46[3] = v27;
  v28 = swift_getWitnessTable();
  sub_1C0FDBA4C(v16, v13, v28);
  v29 = *(v14 + 8);
  v29(v16, v13);
  v47 = 0;
  LOBYTE(v48) = 1;
  v49 = 0xBFF0000000000000;
  v46[0] = &v47;
  (*(v14 + 16))(v16, v19, v13);
  v46[1] = v16;
  v45[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94EB8);
  v45[1] = v13;
  v43 = sub_1C11626F8();
  v44 = v28;
  sub_1C119EE80(v46, 2, v45);
  v29(v19, v13);
  return (v29)(v16, v13);
}

uint64_t sub_1C1150388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v60 = a3;
  v59 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v52 = v7;
  v50 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C1263190();
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v47 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210);
  v17 = sub_1C1263190();
  v55 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v47 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  v57 = v17;
  v51 = sub_1C1263190();
  v58 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v54 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v56 = &v47 - v22;
  v23 = a1;
  (*(v4 + 248))(a1, v21);
  v53 = v4;
  v24 = *(v4 + 184);
  if (*(v24 + 16))
  {
    sub_1C1266E90();
    MEMORY[0x1C68F07E0](4);
    v25 = sub_1C1266EE0();
    v26 = -1 << *(v24 + 32);
    v27 = v25 & ~v26;
    v28 = v48;
    if ((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
    {
      v29 = ~v26;
      do
      {
        if (*(*(v24 + 48) + v27) == 5)
        {
          break;
        }

        v27 = (v27 + 1) & v29;
      }

      while (((*(v24 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) != 0);
    }
  }

  else
  {
    v28 = v48;
  }

  v30 = *(a2 + 80);
  sub_1C1264F50();
  (*(v10 + 8))(v13, v9);
  if (qword_1EBE8FC80 != -1)
  {
    swift_once();
  }

  v67 = v23 & 1;
  v65 = v30;
  v66 = MEMORY[0x1E697E5C0];
  WitnessTable = swift_getWitnessTable();
  v32 = v49;
  sub_1C1265040();
  (*(v28 + 8))(v16, v14);
  v33 = v59;
  v34 = v50;
  (*(v59 + 16))(v50, v53, a2);
  v35 = (*(v33 + 80) + 112) & ~*(v33 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = *(a2 + 16);
  *(v36 + 32) = v9;
  *(v36 + 40) = *(a2 + 40);
  *(v36 + 56) = *(a2 + 56);
  *(v36 + 72) = *(a2 + 72);
  *(v36 + 80) = v30;
  *(v36 + 88) = *(a2 + 88);
  *(v36 + 104) = *(a2 + 104);
  (*(v33 + 32))(v36 + v35, v34, a2);
  v37 = sub_1C10239B0(&qword_1EDE7BC78, &qword_1EBE91210);
  v63 = WitnessTable;
  v64 = v37;
  v38 = v57;
  v39 = swift_getWitnessTable();
  sub_1C0FF9EE4();
  v40 = v54;
  sub_1C1264C40();

  (*(v55 + 8))(v32, v38);
  v41 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0);
  v61 = v39;
  v62 = v41;
  v42 = v51;
  v43 = swift_getWitnessTable();
  v44 = v56;
  sub_1C0FDBA4C(v40, v42, v43);
  v45 = *(v58 + 8);
  v45(v40, v42);
  sub_1C0FDBA4C(v44, v42, v43);
  return (v45)(v44, v42);
}

uint64_t sub_1C1150A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v31 = a7;
  v32 = a8;
  v33 = a2;
  v34 = a1;
  v35 = a9;
  v30 = a13;
  v29 = a11;
  v28 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EB8);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE91210);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1263E60();
  v17 = sub_1C1263190();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - v22;
  v38 = a3;
  v39 = a4;
  v40 = a5;
  v41 = a6;
  v42 = v31;
  v43 = v32;
  v44 = v28;
  v45 = v29;
  v46 = a12;
  v47 = v30;
  type metadata accessor for PhotosSearchOverlayView();
  sub_1C1149880();
  WitnessTable = swift_getWitnessTable();
  sub_1C1264F50();
  v36 = WitnessTable;
  v37 = MEMORY[0x1E697E5C0];
  v25 = swift_getWitnessTable();
  sub_1C0FDBA4C(v20, v17, v25);
  v26 = *(v18 + 8);
  v26(v20, v17);
  sub_1C0FDBA4C(v23, v17, v25);
  return (v26)(v23, v17);
}

uint64_t sub_1C1150DD8@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, ValueMetadata *a3@<X2>, void (*a4)(void, void)@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, ValueMetadata *a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, void (*a12)(void, void), uint64_t a13, unint64_t a14)
{
  v127 = a4;
  v128 = a8;
  v119 = a5;
  v120 = a7;
  v134 = a6;
  v123 = a2;
  v144 = a1;
  v132 = a9;
  v126 = a11;
  v124 = a10;
  v122 = a14;
  v125 = a13;
  v121 = a12;
  v145 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  sub_1C1263190();
  sub_1C1266790();
  v171 = a5;
  v172 = a7;
  v173 = a12;
  v174 = a14;
  v17 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  sub_1C1263E60();
  v18 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v183 = swift_getWitnessTable();
  v184 = MEMORY[0x1E697E5C0];
  v20 = swift_getWitnessTable();
  v171 = v17;
  v172 = v18;
  v173 = WitnessTable;
  v174 = v20;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  v138 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8);
  sub_1C1263190();
  sub_1C1266790();
  sub_1C12652C0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F08);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v21 = sub_1C12655A0();
  v113 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v112 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v111 = &v110 - v24;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF0);
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  v117 = a3;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF8);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v25 = sub_1C1262C50();
  v26 = swift_getWitnessTable();
  v171 = v25;
  v172 = v26;
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F00);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v139 = sub_1C12655A0();
  v141 = sub_1C1263190();
  v142 = sub_1C1263190();
  v27 = sub_1C1266790();
  v116 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v115 = &v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v114 = &v110 - v30;
  v143 = v31;
  v146 = v21;
  v32 = sub_1C1263C30();
  v130 = *(v32 - 8);
  v131 = v32;
  MEMORY[0x1EEE9AC00](v32);
  v129 = &v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v140 = &v110 - v35;
  v36 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC8);
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v37 = sub_1C12654C0();
  v137 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED0);
  v136 = swift_getWitnessTable();
  v38 = swift_getWitnessTable();
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED8);
  v40 = sub_1C1263C40();
  v41 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EE0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90560);
  v43 = sub_1C10239B0(&qword_1EBE90930, &qword_1EBE90560);
  v44 = sub_1C114C53C();
  v171 = v42;
  v172 = &type metadata for PhotosMaterialToolbarTextButtonStyle;
  v173 = v43;
  v174 = v44;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v171 = v41;
  v172 = OpaqueTypeConformance2;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = sub_1C1162924(&qword_1EDE76E08, MEMORY[0x1E697C658]);
  v171 = v39;
  v172 = v40;
  v173 = v46;
  v174 = v47;
  v48 = swift_getOpaqueTypeConformance2();
  v171 = v36;
  v172 = v37;
  v173 = v137;
  v174 = v136;
  v175 = v38;
  v176 = v48;
  v49 = type metadata accessor for PhotosNotchToolbar();
  v136 = swift_getWitnessTable();
  v137 = v49;
  v171 = v49;
  v172 = v136;
  swift_getOpaqueTypeMetadata2();
  v50 = sub_1C1263190();
  v110 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v110 - v51;
  v53 = sub_1C1263190();
  v54 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v56 = &v110 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v110 - v58;
  v138 = sub_1C1266790();
  v135 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138);
  v61 = &v110 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v62);
  v145 = &v110 - v63;
  v171 = v123;
  v172 = v117;
  v173 = v127;
  v174 = v119;
  v175 = v134;
  v176 = v120;
  v177 = v128;
  v178 = v124;
  v179 = v126;
  v180 = v121;
  v181 = v125;
  v182 = v122;
  v64 = type metadata accessor for PhotosSearchOverlayView();
  v65 = sub_1C1149880();
  v118 = v50;
  v133 = v53;
  if ((v65 & 1) != 0 && !sub_1C1149850(v64))
  {
    sub_1C11522CC();
    if (qword_1EBE8FC60 != -1)
    {
      swift_once();
    }

    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E58);
    v128 = __swift_project_value_buffer(v134, qword_1EBEA4848);
    v171 = v137;
    v172 = v136;
    v70 = swift_getOpaqueTypeConformance2();
    v71 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0);
    v149 = v70;
    v150 = v71;
    v127 = MEMORY[0x1E697E858];
    v72 = swift_getWitnessTable();
    v73 = sub_1C1263840();
    v74 = sub_1C1162924(&qword_1EDE7BC98, MEMORY[0x1E697F260]);
    v171 = v73;
    v172 = v74;
    swift_getOpaqueTypeConformance2();
    sub_1C122D670();
    (*(v110 + 8))(v52, v50);
    v75 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8);
    v147 = v72;
    v148 = v75;
    v76 = v133;
    v77 = swift_getWitnessTable();
    sub_1C0FDBA4C(v56, v76, v77);
    v78 = *(v54 + 8);
    v78(v56, v76);
    sub_1C0FDBA4C(v59, v76, v77);
    v78(v59, v76);
    (*(v54 + 32))(v61, v56, v76);
    __swift_storeEnumTagSinglePayload(v61, 0, 1, v76);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v61, 1, 1, v53);
    v171 = v137;
    v172 = v136;
    v66 = swift_getOpaqueTypeConformance2();
    v67 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0);
    v170[9] = v66;
    v170[10] = v67;
    v68 = swift_getWitnessTable();
    v69 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8);
    v170[7] = v68;
    v170[8] = v69;
    swift_getWitnessTable();
  }

  v79 = v143;
  sub_1C1170030(v61, v145);
  v80 = *(v135 + 8);
  v134 = v61;
  v127 = v80;
  v128 = v135 + 8;
  v80(v61, v138);
  sub_1C1149504(v64, &v171);
  v81 = MEMORY[0x1E697E5D8];
  v82 = v146;
  if (v176 < 0)
  {
    v90 = v112;
    sub_1C1153A98(v64, v112);
    v91 = swift_getWitnessTable();
    v92 = v111;
    sub_1C0FDBA4C(v90, v82, v91);
    v144 = *(v113 + 8);
    v144(v90, v146);
    sub_1C0FDBA4C(v92, v146, v91);
    v154 = swift_getWitnessTable();
    v155 = MEMORY[0x1E697E5D8];
    v93 = swift_getWitnessTable();
    v94 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8);
    v152 = v93;
    v153 = v94;
    v151 = swift_getWitnessTable();
    swift_getWitnessTable();
    v89 = v140;
    sub_1C1112E18();
    v95 = v144;
    v144(v90, v146);
    v95(v92, v146);
  }

  else
  {
    v83 = v115;
    sub_1C1152CA8(v64, v115);
    v170[5] = swift_getWitnessTable();
    v170[6] = v81;
    v84 = swift_getWitnessTable();
    v85 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8);
    v170[3] = v84;
    v170[4] = v85;
    v170[2] = swift_getWitnessTable();
    v86 = swift_getWitnessTable();
    v87 = v114;
    sub_1C0FDBA4C(v83, v79, v86);
    v88 = *(v116 + 8);
    v88(v83, v79);
    sub_1C0FDBA4C(v87, v79, v86);
    swift_getWitnessTable();
    v89 = v140;
    sub_1C1112D68();
    v88(v83, v79);
    v88(v87, v79);
  }

  v96 = v134;
  v97 = v138;
  (*(v135 + 16))(v134, v145, v138);
  v171 = v96;
  v98 = v129;
  v99 = v130;
  v100 = v131;
  (*(v130 + 16))(v129, v89, v131);
  v172 = v98;
  v170[0] = v97;
  v170[1] = v100;
  v168 = v137;
  v169 = v136;
  v101 = swift_getOpaqueTypeConformance2();
  v102 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0);
  v166 = v101;
  v167 = v102;
  v103 = swift_getWitnessTable();
  v104 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8);
  v164 = v103;
  v165 = v104;
  v163 = swift_getWitnessTable();
  v168 = swift_getWitnessTable();
  v161 = swift_getWitnessTable();
  v162 = MEMORY[0x1E697E5D8];
  v159 = swift_getWitnessTable();
  v160 = v104;
  v158 = swift_getWitnessTable();
  v105 = swift_getWitnessTable();
  v106 = swift_getWitnessTable();
  v156 = v105;
  v157 = v106;
  v169 = swift_getWitnessTable();
  sub_1C119EE80(&v171, 2, v170);
  v107 = *(v99 + 8);
  v107(v140, v100);
  v108 = v127;
  v127(v145, v97);
  v107(v98, v100);
  return v108(v96, v97);
}

void sub_1C11522CC()
{
  OUTLINED_FUNCTION_23();
  v99 = v0;
  v2 = v1;
  v93 = v3;
  OUTLINED_FUNCTION_0();
  v109 = v4;
  v108 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_46_4();
  OUTLINED_FUNCTION_11_1(v7);
  v107 = *(v8 + 24);
  v9 = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC8);
  v98 = *(v2 + 48);
  sub_1C1266790();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_28();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_22();
  sub_1C1265B00();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_12_2();
  v10 = sub_1C12654C0();
  v100 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED0);
  v11.i64[0] = v98;
  v104 = v11;
  v96 = *(v2 + 72);
  v118 = v96;
  OUTLINED_FUNCTION_17();
  v85 = v9;
  WitnessTable = swift_getWitnessTable();
  OUTLINED_FUNCTION_1_11();
  v84 = v10;
  v82 = swift_getWitnessTable();
  *&v106 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED8);
  sub_1C1263C40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90560);
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_67();
  sub_1C10239B0(v12, v13);
  sub_1C114C53C();
  OUTLINED_FUNCTION_14_20();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_13_22();
  swift_getOpaqueTypeConformance2();
  OUTLINED_FUNCTION_12_17();
  sub_1C1162924(v14, v15);
  OUTLINED_FUNCTION_11_25();
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v114 = v100;
  v115 = WitnessTable;
  v116 = v82;
  v117 = OpaqueTypeConformance2;
  v80 = type metadata accessor for PhotosNotchToolbar();
  OUTLINED_FUNCTION_1();
  v87 = v16;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v18);
  OUTLINED_FUNCTION_10_27();
  v81 = swift_getWitnessTable();
  v112 = v80;
  v113 = v81;
  OUTLINED_FUNCTION_9_28();
  v88 = v19;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  OUTLINED_FUNCTION_1();
  v90 = v20;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_34();
  OUTLINED_FUNCTION_11_1(v22);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  v91 = sub_1C1263190();
  OUTLINED_FUNCTION_0();
  v92 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_3_0();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_11_1(&v72 - v26);
  v27 = v109;
  v28 = v109 + 16;
  v103 = *(v109 + 16);
  v29 = v97;
  v30 = v99;
  v103(v97, v99, v2);
  v95 = *(v27 + 80);
  v31 = (v95 + 112) & ~v95;
  v32 = swift_allocObject();
  v94 = *(v2 + 16);
  *&v33 = v94;
  v34 = v107;
  *(&v33 + 1) = v107;
  v74 = *(v2 + 96);
  v102 = *(v2 + 104);
  v35 = v102;
  *(v32 + 96) = v74;
  *(v32 + 104) = v35;
  v106 = *(v2 + 32);
  v36 = v106;
  *(v32 + 16) = v33;
  *(v32 + 32) = v36;
  v105 = *(v2 + 56);
  v37 = vzip1q_s64(v104, v105);
  *&v36 = vdupq_laneq_s64(v105, 1).u64[0];
  *(&v36 + 1) = v96;
  *(v32 + 48) = v37;
  *(v32 + 64) = v36;
  v37.i64[0] = *(&v36 + 1);
  v73 = v37;
  v104 = *(v2 + 80);
  *(v32 + 80) = v104;
  v38 = *(v27 + 32);
  v109 = v27 + 32;
  v101 = v38;
  v72 = *(v2 + 88);
  v38(v32 + v31, v29, v2);
  v75 = v28;
  v103(v29, v30, v2);
  v39 = swift_allocObject();
  v40 = v94;
  *(v39 + 16) = v94;
  *(v39 + 24) = v34;
  v41 = v105;
  *(v39 + 32) = v106;
  v42 = v98;
  *(v39 + 48) = v98;
  *(v39 + 56) = v41;
  v43 = vzip1q_s64(v73, v104);
  *(v39 + 88) = v72;
  *(v39 + 72) = v43;
  *(v39 + 104) = v102;
  v44 = v97;
  OUTLINED_FUNCTION_74_0();
  v45();
  v103(v44, v30, v2);
  v46 = swift_allocObject();
  v47 = v107;
  *(v46 + 16) = v40;
  *(v46 + 24) = v47;
  v48 = v105;
  *(v46 + 32) = v106;
  *(v46 + 48) = v42;
  *(v46 + 56) = v48;
  v49 = v96;
  *(v46 + 72) = v96;
  *(v46 + 80) = v104;
  v50 = v74;
  v51 = v102;
  *(v46 + 96) = v74;
  *(v46 + 104) = v51;
  OUTLINED_FUNCTION_74_0();
  v52();
  PhotosNotchToolbar.init(content:leadingContent:trailingContent:)(sub_1C1160A98, v32, sub_1C1160AB0, v39, sub_1C1160AC8, v46, v77);
  sub_1C1264420();
  sub_1C12659A0();
  v53 = v76;
  v54 = v80;
  v55 = v81;
  sub_1C1264DB0();
  v56 = OUTLINED_FUNCTION_61_1();
  v57(v56);
  v103(v44, v99, v2);
  v58 = swift_allocObject();
  v59 = v107;
  *(v58 + 16) = v94;
  *(v58 + 24) = v59;
  v60 = v105;
  *(v58 + 32) = v106;
  *(v58 + 48) = v98;
  *(v58 + 56) = v60;
  *(v58 + 72) = v49;
  *(v58 + 80) = v104;
  v61 = v102;
  *(v58 + 96) = v50;
  *(v58 + 104) = v61;
  OUTLINED_FUNCTION_74_0();
  v62();
  v112 = v54;
  v113 = v55;
  v63 = swift_getOpaqueTypeConformance2();
  sub_1C0FF9EE4();
  v64 = v79;
  v65 = OpaqueTypeMetadata2;
  sub_1C1264C40();

  (*(v90 + 8))(v53, v65);
  OUTLINED_FUNCTION_20_4();
  v67 = sub_1C10239B0(v66, &qword_1EBE94EC0);
  v110 = v63;
  v111 = v67;
  OUTLINED_FUNCTION_4_0();
  v68 = v91;
  v69 = swift_getWitnessTable();
  v70 = v89;
  sub_1C0FDBA4C(v64, v68, v69);
  v71 = *(v92 + 8);
  v71(v64, v68);
  sub_1C0FDBA4C(v70, v68, v69);
  v71(v70, v68);
  OUTLINED_FUNCTION_22_0();
}

uint64_t sub_1C1152CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v95 = a2;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E58);
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v76 = &v71 - v3;
  v4 = *(a1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF0);
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  v91 = v4;
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF8);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v5 = sub_1C1262C50();
  WitnessTable = swift_getWitnessTable();
  v100 = v5;
  v101 = WitnessTable;
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F00);
  v7 = *(a1 + 56);
  v8 = *(a1 + 88);
  v9 = *(a1 + 104);
  v82 = *(a1 + 40);
  v100 = v82;
  v101 = v7;
  v83 = v7;
  v84 = v8;
  v102 = v8;
  v103 = v9;
  v85 = v9;
  v10 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  sub_1C1263E60();
  v11 = sub_1C1263190();
  v12 = swift_getWitnessTable();
  v113 = swift_getWitnessTable();
  v114 = MEMORY[0x1E697E5C0];
  v13 = swift_getWitnessTable();
  v100 = v10;
  v101 = v11;
  v102 = v12;
  v103 = v13;
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  v79 = swift_getWitnessTable();
  v14 = sub_1C12655A0();
  v81 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v80 = &v71 - v15;
  v16 = sub_1C1263190();
  v88 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v78 = &v71 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8);
  v93 = v16;
  v18 = sub_1C1263190();
  v90 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v89 = &v71 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v86 = &v71 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v87 = &v71 - v23;
  v24 = sub_1C1266790();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v71 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v71 - v29;
  v31 = v94;
  v32 = sub_1C1149880();
  v33 = MEMORY[0x1E697E5D8];
  if (v32)
  {
    v74 = v25;
    v72 = v30;
    v73 = v24;
    v92 = v14;
    MEMORY[0x1EEE9AC00](v32);
    v34 = v91;
    *(&v71 - 14) = *(a1 + 16);
    *(&v71 - 13) = v34;
    v35 = v82;
    *(&v71 - 12) = *(a1 + 32);
    *(&v71 - 11) = v35;
    v36 = v83;
    *(&v71 - 10) = *(a1 + 48);
    *(&v71 - 9) = v36;
    *(&v71 - 4) = *(a1 + 64);
    v37 = v84;
    *(&v71 - 6) = *(a1 + 80);
    *(&v71 - 5) = v37;
    v38 = v85;
    *(&v71 - 4) = *(a1 + 96);
    *(&v71 - 3) = v38;
    *(&v71 - 2) = v31;
    sub_1C10A7F5C();
    v39 = v80;
    sub_1C1265590();
    v40 = v92;
    sub_1C1264460();
    v41 = swift_getWitnessTable();
    v42 = v78;
    sub_1C1264FB0();
    (*(v81 + 8))(v39, v40);
    v43 = *(v31 + 184);
    v44 = v93;
    v45 = v27;
    if (*(v43 + 16) && (sub_1C1266E90(), MEMORY[0x1C68F07E0](1), v46 = sub_1C1266EE0(), v47 = -1 << *(v43 + 32), v48 = v46 & ~v47, ((*(v43 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) != 0))
    {
      v49 = ~v47;
      while (*(*(v43 + 48) + v48) != 3)
      {
        v48 = (v48 + 1) & v49;
        if (((*(v43 + 56 + ((v48 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v48) & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      if (qword_1EBE8FC60 != -1)
      {
        swift_once();
      }

      v67 = v77;
      v68 = __swift_project_value_buffer(v77, qword_1EBEA4848);
      (*(v75 + 16))(v76, v68, v67);
      v69 = sub_1C1263840();
      v70 = sub_1C1162924(&qword_1EDE7BC98, MEMORY[0x1E697F260]);
      v100 = v69;
      v101 = v70;
      swift_getOpaqueTypeConformance2();
      sub_1C1262CE0();
      v50 = MEMORY[0x1E697E5D8];
      v45 = v27;
    }

    else
    {
LABEL_7:
      if (qword_1EBE8FC68 != -1)
      {
        swift_once();
      }

      v50 = MEMORY[0x1E697E5D8];
    }

    v51 = v42;
    v98 = v41;
    v99 = v50;
    v52 = swift_getWitnessTable();
    v53 = v86;
    sub_1C12649D0();

    (*(v88 + 8))(v51, v44);
    v54 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8);
    v96 = v52;
    v97 = v54;
    v55 = swift_getWitnessTable();
    v56 = v87;
    sub_1C0FDBA4C(v53, v18, v55);
    v57 = v90;
    v58 = *(v90 + 8);
    v58(v53, v18);
    v59 = v89;
    sub_1C0FDBA4C(v56, v18, v55);
    v58(v56, v18);
    (*(v57 + 32))(v45, v59, v18);
    __swift_storeEnumTagSinglePayload(v45, 0, 1, v18);
    v30 = v72;
    sub_1C1170030(v45, v72);
    v60 = *(v74 + 8);
    v24 = v73;
    v60(v45, v73);
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v27, 1, 1, v18);
    v111 = swift_getWitnessTable();
    v112 = v33;
    v61 = swift_getWitnessTable();
    v62 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8);
    v109 = v61;
    v110 = v62;
    swift_getWitnessTable();
    sub_1C1170030(v27, v30);
    v60 = *(v25 + 8);
    v60(v27, v24);
  }

  v107 = swift_getWitnessTable();
  v108 = MEMORY[0x1E697E5D8];
  v63 = swift_getWitnessTable();
  v64 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8);
  v105 = v63;
  v106 = v64;
  v104 = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  sub_1C0FDBA4C(v30, v24, v65);
  return (v60)(v30, v24);
}

uint64_t sub_1C1153A98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  v67 = *(a1 + 24);
  sub_1C1263190();
  sub_1C1266790();
  v68 = *(a1 + 40);
  v66 = *(a1 + 56);
  v93 = v68;
  v94 = v66;
  v4 = *(a1 + 88);
  v63 = *(a1 + 104);
  v5 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  sub_1C1263E60();
  v6 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v91 = swift_getWitnessTable();
  v92 = MEMORY[0x1E697E5C0];
  v62 = MEMORY[0x1E697E858];
  v93 = v5;
  v94 = v6;
  v95 = WitnessTable;
  v96 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  v52 = sub_1C12655A0();
  v51 = sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8);
  v53 = sub_1C1263190();
  v54 = sub_1C1266790();
  v8 = sub_1C12652C0();
  v60 = v8;
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F08);
  swift_getTupleTypeMetadata2();
  v57 = sub_1C1265B00();
  v56 = swift_getWitnessTable();
  v9 = sub_1C12655A0();
  v61 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v40 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v49 = &v40 - v14;
  v59 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v48 = &v40 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v40 - v18;
  v50 = &v40 - v18;
  v41 = v2;
  sub_1C1149320(a1, &v40 - v18);
  v20 = *(a1 + 16);
  v44 = *(a1 + 32);
  v45 = v20;
  *&v21 = v20;
  *(&v21 + 1) = v67;
  *&v22 = v44;
  *(&v22 + 1) = v68;
  v46 = v22;
  v47 = v21;
  v78 = v21;
  v79 = v22;
  v23 = *(a1 + 48);
  *&v21 = v23;
  *(&v21 + 1) = v66;
  v24 = *(a1 + 80);
  v25 = *(a1 + 96);
  *&v22 = v24;
  *(&v22 + 1) = v4;
  *&v26 = v25;
  v27 = v63;
  *(&v26 + 1) = v63;
  v42 = v26;
  v43 = v22;
  v82 = v22;
  v83 = v26;
  v84 = v2;
  v85 = v19;
  v65 = *(a1 + 64);
  v80 = v21;
  v81 = v65;
  v89 = swift_getWitnessTable();
  v90 = MEMORY[0x1E697E5D8];
  v28 = swift_getWitnessTable();
  v29 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8);
  v87 = v28;
  v88 = v29;
  v86 = swift_getWitnessTable();
  swift_getWitnessTable();
  v30 = v48;
  sub_1C12652B0();
  v39 = v27;
  v31 = v49;
  v32 = v66;
  sub_1C115A7C0(v41, v45, v67, v44, v68, v23, v66, v65, v49, *(&v65 + 1), v24, v4, v25, v39);
  v69 = v47;
  v70 = v46;
  v71 = v23;
  v72 = v32;
  v73 = v65;
  v74 = v43;
  v75 = v42;
  v76 = v30;
  v77 = v31;
  v33 = v30;
  sub_1C10A7F5C();
  v34 = v55;
  sub_1C1265590();
  v35 = swift_getWitnessTable();
  v36 = v58;
  sub_1C0FDBA4C(v34, v9, v35);
  v37 = *(v61 + 8);
  v37(v34, v9);
  sub_1C0FDBA4C(v36, v9, v35);
  v37(v36, v9);
  sub_1C0F9E27C(v31, &qword_1EBE94F08);
  (*(v59 + 8))(v33, v60);
  return sub_1C0F9E27C(v50, &qword_1EBE902F0);
}

uint64_t sub_1C11541C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v44 = a8;
  v31 = a7;
  v43 = a6;
  v36 = a5;
  v40 = a4;
  v34 = a3;
  v37 = a2;
  v38 = a1;
  v39 = a9;
  v33 = a10;
  v35 = a13;
  v42 = a14;
  v32 = a11;
  v41 = a12;
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC8);
  sub_1C1266790();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED0);
  swift_getWitnessTable();
  WitnessTable = swift_getWitnessTable();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94ED8);
  sub_1C1263C40();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EE0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE90560);
  sub_1C10239B0(&qword_1EBE90930, &qword_1EBE90560);
  sub_1C114C53C();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_1C1162924(&qword_1EDE76E08, MEMORY[0x1E697C658]);
  v51 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  type metadata accessor for PhotosNotchToolbar();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8);
  sub_1C1263190();
  v30[1] = sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF0);
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF8);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C1262C50();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1C1263190();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F00);
  v15 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  sub_1C1263E60();
  v16 = sub_1C1263190();
  v17 = swift_getWitnessTable();
  v58 = swift_getWitnessTable();
  v59 = MEMORY[0x1E697E5C0];
  v30[0] = MEMORY[0x1E697E858];
  v47 = v15;
  v48 = v16;
  v49 = v17;
  v50 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1266790();
  v18 = v40;
  sub_1C1263190();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1266790();
  sub_1C12652C0();
  sub_1C1263190();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F08);
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263C30();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12655A0();
  sub_1C1263190();
  sub_1C1263190();
  sub_1C1263E60();
  v19 = sub_1C1263190();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v25 = v30 - v24;
  v47 = v34;
  v48 = v18;
  v49 = v36;
  v50 = v43;
  v51 = v31;
  OpaqueTypeConformance2 = v44;
  v53 = v33;
  v54 = v32;
  v55 = v41;
  v56 = v35;
  v57 = v42;
  type metadata accessor for PhotosSearchOverlayView();
  sub_1C1149880();
  v26 = swift_getWitnessTable();
  sub_1C1264F50();
  v45 = v26;
  v46 = MEMORY[0x1E697E5C0];
  v27 = swift_getWitnessTable();
  sub_1C0FDBA4C(v22, v19, v27);
  v28 = *(v20 + 8);
  v28(v22, v19);
  sub_1C0FDBA4C(v25, v19, v27);
  return (v28)(v25, v19);
}

void sub_1C1154CB4(id a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }
}

uint64_t sub_1C1154CF0@<X0>(void *a1@<X8>)
{
  result = sub_1C1262D20();
  *a1 = v3;
  return result;
}

uint64_t sub_1C1154D34@<X0>(void *a1@<X8>)
{
  result = sub_1C1262D20();
  *a1 = v3;
  return result;
}

uint64_t sub_1C1154E3C@<X0>(BOOL *a1@<X8>)
{
  sub_1C1262D40();
  v3 = v2;
  result = sub_1C1262D40();
  *a1 = v5 < v3;
  return result;
}

unint64_t sub_1C1154F78()
{
  result = qword_1EBE94F20[0];
  if (!qword_1EBE94F20[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE94F20);
  }

  return result;
}

uint64_t sub_1C1155020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void (*a13)(void, void), uint64_t a14)
{
  v102 = a1;
  v103 = a8;
  v100 = a6;
  v107 = a3;
  v108 = a4;
  v106 = a2;
  v94 = a9;
  v109 = a13;
  v105 = a11;
  v104 = a10;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94F00);
  v96 = a5;
  v101 = a7;
  v98 = a12;
  v99 = a14;
  v16 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  sub_1C1263E60();
  v17 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v145 = swift_getWitnessTable();
  v146 = MEMORY[0x1E697E5C0];
  v133 = v16;
  v134 = v17;
  v135 = WitnessTable;
  v136 = swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  swift_getTupleTypeMetadata2();
  v88 = sub_1C1265B00();
  v89 = swift_getWitnessTable();
  v93 = sub_1C12655A0();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v92 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v90 = &v78 - v21;
  v133 = v106;
  v134 = v107;
  v135 = v108;
  v136 = a5;
  v137 = v100;
  v138 = a7;
  v139 = v103;
  v140 = v104;
  v141 = v105;
  v142 = a12;
  v143 = v109;
  v144 = a14;
  v22 = type metadata accessor for PhotosSearchOverlayView();
  v86 = *(v22 - 8);
  v87 = v22;
  v84 = *(v86 + 64);
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v78 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF0);
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  swift_getTupleTypeMetadata2();
  sub_1C1265B00();
  swift_getWitnessTable();
  sub_1C12654C0();
  sub_1C1266790();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF8);
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  v78 = swift_getWitnessTable();
  v24 = sub_1C1262C50();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v78 - v26;
  v28 = swift_getWitnessTable();
  v133 = v24;
  v134 = v28;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v30 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v32 = &v78 - v31;
  v33 = sub_1C1263190();
  v80 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v79 = &v78 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  v81 = v33;
  v85 = sub_1C1263190();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v95 = &v78 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v97 = &v78 - v37;
  sub_1C1264420();
  v110 = v106;
  v111 = v107;
  v112 = v108;
  v113 = v96;
  v114 = v100;
  v115 = v101;
  v116 = v103;
  v117 = v104;
  v118 = v105;
  v119 = v98;
  v120 = v109;
  v121 = v99;
  v122 = v102;
  sub_1C1262C40();
  if (qword_1EBE8FD00 != -1)
  {
    swift_once();
  }

  v38 = sub_1C1263D00();
  __swift_project_value_buffer(v38, qword_1EBE94E88);
  sub_1C1264BA0();
  (*(v25 + 8))(v27, v24);
  sub_1C1264490();
  v133 = v24;
  v134 = v28;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v40 = v79;
  sub_1C1264FB0();
  (*(v30 + 8))(v32, OpaqueTypeMetadata2);
  v42 = v86;
  v41 = v87;
  v43 = v82;
  (*(v86 + 16))(v82, v102, v87);
  v44 = (*(v42 + 80) + 112) & ~*(v42 + 80);
  v45 = swift_allocObject();
  v46 = v107;
  *(v45 + 2) = v106;
  *(v45 + 3) = v46;
  v47 = v96;
  *(v45 + 4) = v108;
  *(v45 + 5) = v47;
  v49 = v100;
  v48 = v101;
  *(v45 + 6) = v100;
  *(v45 + 7) = v48;
  v51 = v103;
  v50 = v104;
  *(v45 + 8) = v103;
  *(v45 + 9) = v50;
  v52 = v98;
  *(v45 + 10) = v105;
  *(v45 + 11) = v52;
  v53 = v99;
  *(v45 + 12) = v109;
  *(v45 + 13) = v53;
  (*(v42 + 32))(&v45[v44], v43, v41);
  v131 = OpaqueTypeConformance2;
  v132 = MEMORY[0x1E697E5D8];
  v54 = v81;
  v55 = swift_getWitnessTable();
  sub_1C0FF9EE4();
  v56 = v95;
  sub_1C1264C40();

  (*(v80 + 8))(v40, v54);
  v57 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0);
  v129 = v55;
  v130 = v57;
  v58 = v85;
  v84 = swift_getWitnessTable();
  sub_1C0FDBA4C(v56, v58, v84);
  v59 = v83;
  v60 = *(v83 + 8);
  v86 = v83 + 8;
  v87 = v60;
  v61 = (v60)(v56, v58);
  MEMORY[0x1EEE9AC00](v61);
  v62 = v107;
  *(&v78 - 14) = v106;
  *(&v78 - 13) = v62;
  v63 = v96;
  *(&v78 - 12) = v108;
  *(&v78 - 11) = v63;
  v64 = v101;
  *(&v78 - 10) = v49;
  *(&v78 - 9) = v64;
  v65 = v104;
  v66 = v105;
  *(&v78 - 8) = v51;
  *(&v78 - 7) = v65;
  v67 = v98;
  *(&v78 - 6) = v66;
  *(&v78 - 5) = v67;
  v68 = v99;
  *(&v78 - 4) = v109;
  *(&v78 - 3) = v68;
  *(&v78 - 2) = v102;
  sub_1C10A7F5C();
  v69 = v92;
  sub_1C1265590();
  v70 = v93;
  v71 = swift_getWitnessTable();
  v72 = v90;
  sub_1C0FDBA4C(v69, v70, v71);
  v73 = v91;
  v109 = *(v91 + 8);
  v109(v69, v70);
  v74 = v95;
  (*(v59 + 16))(v95, v97, v58);
  v133 = v74;
  (*(v73 + 16))(v69, v72, v70);
  v127 = 0;
  v128 = 1;
  v134 = v69;
  v135 = &v127;
  v126[0] = v58;
  v126[1] = v70;
  v126[2] = MEMORY[0x1E6981840];
  v123 = v84;
  v124 = v71;
  v125 = MEMORY[0x1E6981838];
  sub_1C119EE80(&v133, 3, v126);
  v75 = v109;
  v109(v72, v70);
  v76 = v87;
  v87(v97, v58);
  v75(v69, v70);
  return v76(v74, v58);
}

uint64_t sub_1C1155BE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v86 = a8;
  v101 = a6;
  v102 = a7;
  v112 = a5;
  v110 = a4;
  v108 = a2;
  v98 = a9;
  v113 = a14;
  v111 = a13;
  v109 = a12;
  v107 = a11;
  v106 = a10;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94EF8);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &WitnessTable - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v95 = &WitnessTable - v18;
  swift_getTupleTypeMetadata2();
  v19 = sub_1C1265B00();
  WitnessTable = swift_getWitnessTable();
  v81 = v19;
  v20 = sub_1C12654C0();
  v82 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v84 = &WitnessTable - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v83 = &WitnessTable - v23;
  v105 = v24;
  v94 = sub_1C1266790();
  v91 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v26 = &WitnessTable - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v104 = &WitnessTable - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EF0);
  sub_1C1263190();
  swift_getTupleTypeMetadata3();
  sub_1C1265B00();
  swift_getWitnessTable();
  v29 = sub_1C12654C0();
  v30 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v32 = &WitnessTable - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &WitnessTable - v34;
  v114 = v108;
  v115 = a3;
  v99 = a3;
  v36 = v86;
  v116 = v110;
  v117 = v112;
  v118 = v101;
  v119 = v102;
  v120 = v86;
  v121 = v106;
  v122 = v107;
  v123 = v109;
  v124 = v111;
  v125 = v113;
  v126 = a1;
  sub_1C1012734();
  sub_1C12654B0();
  v37 = swift_getWitnessTable();
  v103 = v35;
  v87 = v37;
  sub_1C0FDBA4C(v32, v29, v37);
  v88 = v30;
  v38 = *(v30 + 8);
  v92 = v32;
  v93 = v29;
  v89 = v38;
  v90 = v30 + 8;
  v38(v32, v29);
  v100 = a1;
  v39 = *(a1 + 184);
  if (*(v39 + 16) && (sub_1C1266E90(), MEMORY[0x1C68F07E0](3), sub_1C1266EB0(), v40 = sub_1C1266EE0(), v41 = -1 << *(v39 + 32), v42 = v40 & ~v41, ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) != 0))
  {
    v43 = ~v41;
    while (1)
    {
      v44 = *(*(v39 + 48) + v42);
      if ((v44 - 2) >= 6 && (v44 & 1) == 0)
      {
        break;
      }

      v42 = (v42 + 1) & v43;
      if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    MEMORY[0x1EEE9AC00](v40);
    v69 = v99;
    *(&WitnessTable - 14) = v108;
    *(&WitnessTable - 13) = v69;
    v70 = v112;
    *(&WitnessTable - 12) = v110;
    *(&WitnessTable - 11) = v70;
    v45 = v101;
    *(&WitnessTable - 10) = v101;
    v46 = v102;
    *(&WitnessTable - 9) = v102;
    *(&WitnessTable - 8) = v36;
    v47 = v36;
    v71 = v107;
    *(&WitnessTable - 7) = v106;
    *(&WitnessTable - 6) = v71;
    v72 = v111;
    *(&WitnessTable - 5) = v109;
    *(&WitnessTable - 4) = v72;
    v73 = v100;
    *(&WitnessTable - 3) = v113;
    *(&WitnessTable - 2) = v73;
    sub_1C1012734();
    v74 = v84;
    sub_1C12654B0();
    v75 = v105;
    v76 = swift_getWitnessTable();
    v77 = v74;
    sub_1C0FDBA4C(v74, v75, v76);
    v78 = v82;
    v81 = *(v82 + 8);
    v81(v77, v75);
    v79 = v83;
    sub_1C0FDBA4C(v83, v75, v76);
    v81(v79, v75);
    (*(v78 + 32))(v26, v84, v75);
    __swift_storeEnumTagSinglePayload(v26, 0, 1, v75);
  }

  else
  {
LABEL_7:
    v45 = v101;
    v46 = v102;
    v47 = v36;
    __swift_storeEnumTagSinglePayload(v26, 1, 1, v105);
    swift_getWitnessTable();
  }

  v48 = v104;
  sub_1C1170030(v26, v104);
  v49 = v26;
  v50 = v91;
  v102 = *(v91 + 8);
  v51 = v49;
  v52 = v94;
  v102();
  v132 = v108;
  v133 = v99;
  v134 = v110;
  v135 = v112;
  v136 = v45;
  v137 = v46;
  v138 = v47;
  v139 = v106;
  v140 = v107;
  v141 = v109;
  v142 = v111;
  v143 = v113;
  v53 = type metadata accessor for PhotosSearchOverlayView();
  v54 = v95;
  sub_1C1156D44(v53, v95);
  v55 = sub_1C1264490();
  sub_1C12628A0();
  v56 = v96;
  v57 = v54 + *(v96 + 36);
  *v57 = v55;
  *(v57 + 8) = v58;
  *(v57 + 16) = v59;
  *(v57 + 24) = v60;
  *(v57 + 32) = v61;
  *(v57 + 40) = 0;
  v63 = v92;
  v62 = v93;
  (*(v88 + 16))(v92, v103, v93);
  v132 = v63;
  v64 = *(v50 + 16);
  v85 = v51;
  v64(v51, v48, v52);
  v133 = v51;
  v65 = v97;
  sub_1C0FE5654(v54, v97, &qword_1EBE94EF8);
  v134 = v65;
  v131[0] = v62;
  v131[1] = v52;
  v131[2] = v56;
  v128 = v87;
  v127 = swift_getWitnessTable();
  v129 = swift_getWitnessTable();
  v130 = sub_1C1162590();
  sub_1C119EE80(&v132, 3, v131);
  sub_1C0F9E27C(v54, &qword_1EBE94EF8);
  v66 = v102;
  (v102)(v104, v52);
  v67 = v89;
  v89(v103, v62);
  sub_1C0F9E27C(v65, &qword_1EBE94EF8);
  (v66)(v85, v52);
  return v67(v63, v62);
}

uint64_t sub_1C11564F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v66 = a8;
  *(&v65 + 1) = a7;
  *&v65 = a6;
  v63 = a5;
  v61 = a4;
  v57 = a2;
  v71 = a9;
  v64 = a13;
  v62 = a12;
  v59 = a11;
  v69 = sub_1C1263190();
  v70 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v67 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v68 = &v53 - v17;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95188);
  MEMORY[0x1EEE9AC00](v60);
  v19 = &v53 - v18;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94EF0);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v53 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v53 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v72 = &v53 - v25;
  v58 = *(a3 - 8);
  v26 = v58;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v53 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v73 = &v53 - v31;
  v56 = *(a1 + 192);
  v32 = sub_1C1264480();
  sub_1C12644B0();
  v33 = sub_1C12644B0();
  *&__src[0] = v57;
  *(&__src[0] + 1) = a3;
  v34 = v33 != v32;
  *&__src[1] = v61;
  *(&__src[1] + 1) = v63;
  __src[2] = v65;
  *&__src[3] = v66;
  *(&__src[3] + 1) = a10;
  __src[4] = v59;
  *&__src[5] = v62;
  *(&__src[5] + 1) = v64;
  v35 = type metadata accessor for PhotosSearchOverlayView();
  sub_1C1156C0C(v34, 0, v35);
  sub_1C0FDBA4C(v29, a3, a10);
  v36 = *(v26 + 8);
  v36(v29, a3);
  *(&v65 + 1) = v36;
  v66 = v26 + 8;
  sub_1C1156D44(v35, v19);
  sub_1C1161460();
  sub_1C10A0734();
  sub_1C1263390();
  sub_1C0FE4040(v19, v23, &qword_1EBE95188);
  memcpy(&v23[*(v75 + 36)], __src, 0x70uLL);
  sub_1C0FE4040(v23, v72, &qword_1EBE94EF0);
  LOBYTE(v19) = sub_1C1264480();
  sub_1C12644B0();
  v37 = sub_1C12644B0() != v19;
  sub_1C1156C0C(v37, 0, v35);
  v38 = v67;
  v54 = a10;
  sub_1C1264EC0();
  v36(v29, a3);
  v39 = sub_1C1089F7C();
  v80[3] = a10;
  v80[4] = v39;
  v40 = v69;
  WitnessTable = swift_getWitnessTable();
  v42 = v68;
  sub_1C0FDBA4C(v38, v40, WitnessTable);
  v43 = v70;
  v44 = *(v70 + 8);
  v44(v38, v40);
  v45 = *(v58 + 16);
  v46 = v29;
  v55 = v29;
  v47 = v29;
  v48 = a3;
  v45(v47, v73, a3);
  v80[0] = v46;
  v49 = v72;
  v50 = v74;
  sub_1C0FE5654(v72, v74, &qword_1EBE94EF0);
  v80[1] = v50;
  (*(v43 + 16))(v38, v42, v40);
  v80[2] = v38;
  v79[0] = v48;
  v79[1] = v75;
  v79[2] = v40;
  v76 = v54;
  v77 = sub_1C116266C();
  v78 = WitnessTable;
  sub_1C119EE80(v80, 3, v79);
  v44(v42, v40);
  sub_1C0F9E27C(v49, &qword_1EBE94EF0);
  v51 = *(&v65 + 1);
  (*(&v65 + 1))(v73, v48);
  v44(v38, v40);
  sub_1C0F9E27C(v74, &qword_1EBE94EF0);
  return v51(v55, v48);
}

uint64_t sub_1C1156C0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v16 - v11;
  (*(v3 + 232))(v10);
  v13 = *(a3 + 72);
  sub_1C0FDBA4C(v9, v5, v13);
  v14 = *(v6 + 8);
  v14(v9, v5);
  sub_1C0FDBA4C(v12, v5, v13);
  return (v14)(v12, v5);
}

uint64_t sub_1C1156D44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v112 = a2;
  v132 = a1;
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v131 = v6;
  v7 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE952A8);
  OUTLINED_FUNCTION_0();
  v108 = v9;
  v109 = v8;
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_34();
  v116 = v11;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95198);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_19();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_34();
  v110 = v13;
  v14 = v2[23];
  if (!*(v14 + 16))
  {
    v99 = 0;
LABEL_16:
    LODWORD(v105) = 0;
    goto LABEL_17;
  }

  sub_1C1266E90();
  MEMORY[0x1C68F07E0](3);
  sub_1C1266EB0();
  sub_1C1266EE0();
  OUTLINED_FUNCTION_51_4();
  if (v16)
  {
    v17 = *(v14 + 48);
    while (1)
    {
      v18 = *(v17 + v15);
      if (v18 - 2) >= 6 && (v18)
      {
        break;
      }

      OUTLINED_FUNCTION_59_0();
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v20 = 1;
  }

  else
  {
LABEL_7:
    v20 = 0;
  }

  v21 = *(v14 + 16);
  v99 = v20;
  if (!v21)
  {
    goto LABEL_16;
  }

  sub_1C1266E90();
  MEMORY[0x1C68F07E0](3);
  sub_1C1266EB0();
  sub_1C1266EE0();
  OUTLINED_FUNCTION_51_4();
  if ((v23 & 1) == 0)
  {
    goto LABEL_16;
  }

  v24 = *(v14 + 48);
  while (1)
  {
    v25 = *(v24 + v22);
    if ((v25 - 2) >= 6 && (v25 & 1) == 0)
    {
      break;
    }

    OUTLINED_FUNCTION_59_0();
    if ((v26 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  LODWORD(v105) = 1;
LABEL_17:
  v27 = v132;
  v28 = sub_1C1148E1C();
  v103 = v29;
  v104 = v28;
  v102 = v30;
  v31 = sub_1C1148F2C();
  v100 = v32;
  v101 = v31;
  v98 = v33;
  v118 = v2;
  v34 = v4 + 16;
  v130 = *(v4 + 16);
  v130(v7, v2, v27);
  sub_1C1266200();
  v35 = sub_1C12661F0();
  v36 = v4;
  v37 = *(v4 + 80);
  v117 = (v37 + 128) & ~v37;
  v38 = swift_allocObject();
  v39 = MEMORY[0x1E69E85E0];
  v38[2] = v35;
  v38[3] = v39;
  v40 = v27[3];
  v113 = v27[2];
  v38[4] = v113;
  v38[5] = v40;
  v128 = v27[4];
  v129 = v40;
  v41 = v27[5];
  v38[6] = v128;
  v38[7] = v41;
  v126 = v27[6];
  v127 = v41;
  v42 = v27[7];
  v38[8] = v126;
  v38[9] = v42;
  v124 = v27[8];
  v125 = v42;
  v43 = v27[9];
  v38[10] = v124;
  v38[11] = v43;
  v122 = v27[10];
  v123 = v43;
  v44 = v27[11];
  v38[12] = v122;
  v38[13] = v44;
  v120 = v27[12];
  v121 = v44;
  v119 = v27[13];
  v45 = v119;
  v38[14] = v120;
  v38[15] = v45;
  v46 = *(v36 + 32);
  v47 = v117;
  (v46)(v38 + v117, v7, v27);
  v115 = v34;
  v130(v7, v118, v27);
  v48 = sub_1C12661F0();
  v114 = v37;
  v49 = swift_allocObject();
  v49[2] = v48;
  v50 = v113;
  v49[3] = MEMORY[0x1E69E85E0];
  v49[4] = v50;
  v51 = v128;
  v49[5] = v129;
  v49[6] = v51;
  v52 = v126;
  v49[7] = v127;
  v49[8] = v52;
  v53 = v124;
  v49[9] = v125;
  v49[10] = v53;
  v54 = v122;
  v49[11] = v123;
  v49[12] = v54;
  v55 = v120;
  v49[13] = v121;
  v49[14] = v55;
  v49[15] = v119;
  v111 = v7;
  v117 = v36 + 32;
  v106 = v46;
  (v46)(v49 + v47, v7, v27);
  sub_1C1265620();
  v96 = v133[1];
  v97 = v133[0];
  v95 = LOBYTE(v133[2]);
  v56 = v118;
  sub_1C1148F88(v140);
  v57 = v56;
  sub_1C1149000();
  v94 = *v134;
  v92 = *&v134[24];
  v93 = *&v134[16];
  v91 = v134[32];
  v58 = v56[26];
  v89 = v56[25];
  v90 = *&v134[40];
  v87 = v56[20];
  KeyPath = swift_getKeyPath();
  v138 = 0;
  type metadata accessor for PhotosSearchBarWithSuggestionViewModel(0);
  swift_allocObject();

  v135 = PhotosSearchBarWithSuggestionViewModel.init(searchBarLeadingInset:searchBarTrailingInset:)();
  sub_1C1265410();
  v85 = v137;
  v86 = v136;
  v59 = v99;
  v60 = v98 & 1;
  *&v139[7] = v140[0];
  *&v139[23] = v140[1];
  v139[39] = v141;
  v98 = v138;
  v61 = v105;
  v62 = v99 | v105;
  v63 = swift_getKeyPath();
  v64 = swift_allocObject();
  v65 = 1.0;
  v66 = *&v139[16];
  v67 = 0.5;
  if (!v59)
  {
    v67 = 1.0;
  }

  *&v134[65] = *v139;
  v68 = 0.0;
  if (!v61)
  {
    v68 = v67;
  }

  *(v64 + 16) = v62;
  *v134 = v104;
  *&v134[8] = v103;
  *&v134[16] = v102;
  *&v134[24] = v101;
  *&v134[32] = v100;
  v134[40] = v60;
  *&v134[48] = v97;
  *&v134[56] = v96;
  v134[64] = v95;
  *&v134[81] = v66;
  *&v134[97] = *&v139[32];
  *&v134[112] = v94;
  *&v134[128] = v93;
  *&v134[136] = v92;
  v134[144] = v91;
  *&v134[152] = v90;
  *&v134[160] = v89;
  *&v134[168] = v58;
  *&v134[176] = v87;
  memset(&v134[184], 0, 48);
  *&v134[232] = KeyPath;
  memset(&v134[240], 0, 34);
  v134[274] = v98;
  *&v134[280] = v86;
  *&v134[288] = v85;
  *&v134[296] = v63;
  *&v134[304] = sub_1C1023064;
  *&v134[312] = v64;
  *&v134[320] = v68;
  if (sub_1C114AEF4())
  {
    sub_1C1149504(v132, v133);
    if (SLOWORD(v133[5]) < 0)
    {
      v65 = 0.95;
    }

    else
    {
      v65 = 1.0;
    }
  }

  v69 = ~v114;
  v136 = v65;
  v70 = sub_1C114AEF4();
  v105 = v69;
  if (v70)
  {
    v71 = sub_1C1149A08();
  }

  else
  {
    v71 = 1;
  }

  LOBYTE(v135) = v71 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE951A0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE951A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE951B0);
  sub_1C116168C();
  sub_1C1161824();
  sub_1C10239B0(&qword_1EBE951F0, &qword_1EBE951B0);
  sub_1C1264C30();
  memcpy(v133, v134, sizeof(v133));
  sub_1C0F9E27C(v133, &qword_1EBE951A0);
  v72 = v111;
  v73 = v132;
  v130(v111, v57, v132);
  v74 = swift_allocObject();
  v75 = OUTLINED_FUNCTION_29_8(v74);
  v76 = v106;
  v106(v75);
  v77 = v110;
  (*(v108 + 32))(v110, v116, v109);
  v78 = (v77 + *(v107 + 36));
  *v78 = sub_1C1162220;
  v78[1] = v74;
  v130(v72, v118, v73);
  v79 = swift_allocObject();
  v80 = OUTLINED_FUNCTION_29_8(v79);
  v76(v80);
  v81 = v112;
  sub_1C0FE4040(v77, v112, &qword_1EBE95198);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95188);
  v83 = (v81 + *(result + 36));
  *v83 = sub_1C115EA94;
  v83[1] = 0;
  v83[2] = sub_1C1162324;
  v83[3] = v79;
  return result;
}

uint64_t sub_1C11576DC@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, __int128 a11, uint64_t a12, uint64_t a13)
{
  v33 = a7;
  v34 = a8;
  v32 = a6;
  v30 = a5;
  v35 = a9;
  v31 = a13;
  v29 = a12;
  v28 = a11;
  v16 = *(a3 - 1);
  MEMORY[0x1EEE9AC00](a1);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  v22 = sub_1C1264480();
  sub_1C12644B0();
  v23 = sub_1C12644B0();
  v41 = a2;
  v42 = a3;
  v24 = v23 != v22;
  v43 = a4;
  v44 = v30;
  v45 = v32;
  v46 = v33;
  v47 = v34;
  v48 = a10;
  v49 = v28;
  v50 = v29;
  v51 = v31;
  v25 = type metadata accessor for PhotosSearchOverlayView();
  sub_1C1156C0C(v24, 0, v25);
  sub_1C0FDBA4C(v18, a3, a10);
  v26 = *(v16 + 8);
  v26(v18, a3);
  (*(v16 + 16))(v18, v21, a3);
  v39 = 0;
  v40 = 1;
  v41 = v18;
  v42 = &v39;
  v38[0] = a3;
  v38[1] = MEMORY[0x1E6981840];
  v36 = a10;
  v37 = MEMORY[0x1E6981838];
  sub_1C119EE80(&v41, 2, v38);
  v26(v21, a3);
  return (v26)(v18, a3);
}

uint64_t sub_1C115793C@<X0>(uint64_t a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v47 = a8;
  v38 = a7;
  v46 = a6;
  v45 = a4;
  v42 = a3;
  v40 = a2;
  v48 = a1;
  v49 = a9;
  v44 = a11;
  v41 = a10;
  v39 = a14;
  v43 = a13;
  v15 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  sub_1C1263E60();
  v16 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v65 = swift_getWitnessTable();
  v66 = MEMORY[0x1E697E5C0];
  v36 = swift_getWitnessTable();
  v53 = v15;
  v54 = v16;
  v55 = WitnessTable;
  v56 = v36;
  v35 = MEMORY[0x1E6981480];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v18 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v20 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v33 - v22;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94F00);
  MEMORY[0x1EEE9AC00](v34);
  v25 = &v33 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v33 - v27;
  v53 = v40;
  v54 = v42;
  v55 = v45;
  v56 = a5;
  v57 = v46;
  v58 = v38;
  v59 = v47;
  v60 = v41;
  v61 = v44;
  v62 = a12;
  v63 = v43;
  v64 = v39;
  v29 = type metadata accessor for PhotosSearchOverlayView();
  sub_1C1157D8C(v29, v28);
  sub_1C115818C(v29, v20);
  v53 = v15;
  v54 = v16;
  v55 = WitnessTable;
  v56 = v36;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1C0FDBA4C(v20, OpaqueTypeMetadata2, OpaqueTypeConformance2);
  v31 = *(v18 + 8);
  v31(v20, OpaqueTypeMetadata2);
  sub_1C0FE5654(v28, v25, &qword_1EBE94F00);
  v53 = v25;
  (*(v18 + 16))(v20, v23, OpaqueTypeMetadata2);
  v54 = v20;
  v52[0] = v34;
  v52[1] = OpaqueTypeMetadata2;
  v50 = sub_1C1162450();
  v51 = OpaqueTypeConformance2;
  sub_1C119EE80(&v53, 2, v52);
  v31(v23, OpaqueTypeMetadata2);
  sub_1C0F9E27C(v28, &qword_1EBE94F00);
  v31(v20, OpaqueTypeMetadata2);
  return sub_1C0F9E27C(v25, &qword_1EBE94F00);
}

uint64_t sub_1C1157D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v54 = a1;
  v55 = a2;
  v4 = (a1 - 8);
  v53 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v51 = v5;
  v52 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C1263AA0();
  v67 = 1;
  v7 = *(v4 + 3);
  v8 = *(v4 + 4);
  v10 = v4[5];
  v9 = *(v4 + 6);
  v11 = *(v4 + 7);
  v12 = *(v4 + 8);
  v13 = *(v4 + 9);
  v14 = *(v4 + 10);
  v15 = *(v4 + 11);
  v16 = *(v4 + 12);
  v17 = *(v4 + 13);
  v56 = *(v4 + 14);
  v57 = v17;
  *(&v44 + 1) = v17;
  v58 = v16;
  *&v44 = v16;
  v59 = v15;
  *(&v43 + 1) = v15;
  v60 = v14;
  *&v43 = v14;
  v63 = v11;
  v64 = v9;
  v61 = v13;
  v62 = v12;
  sub_1C115EB1C(v3, v7, v8, v10, v9, v11, v12, v13, v70, v43, v44, v56);
  memcpy(v68, v70, 0xB1uLL);
  memcpy(v69, v70, 0xB1uLL);
  sub_1C0FE5654(v68, v65, &qword_1EBE95228);
  sub_1C0F9E27C(v69, &qword_1EBE95228);
  memcpy(&v66[7], v68, 0xB1uLL);
  v65[0] = v6;
  v65[1] = 0;
  LOBYTE(v65[2]) = v67;
  v18 = memcpy(&v65[2] + 1, v66, 0xB8uLL);
  if (qword_1EBE8FC78 != -1)
  {
    v18 = swift_once();
  }

  v50 = &v46;
  v49 = qword_1EBEA4868;
  MEMORY[0x1EEE9AC00](v18);
  *(&v46 - 14) = v7;
  *(&v46 - 13) = v8;
  v20 = v63;
  v19 = v64;
  *(&v46 - 12) = v10;
  *(&v46 - 11) = v19;
  v21 = v61;
  v22 = v62;
  *(&v46 - 10) = v20;
  *(&v46 - 9) = v22;
  *(&v46 - 8) = v21;
  v23 = v59;
  *(&v46 - 7) = v60;
  *&v43 = v23;
  *(&v43 + 1) = v58;
  *&v44 = v57;
  *(&v44 + 1) = v56;
  v45 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95230);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95238);
  v47 = v3;
  sub_1C10239B0(&qword_1EBE95240, &qword_1EBE95230);
  v48 = v7;
  sub_1C1161A54();
  v24 = v10;
  v25 = v8;
  v26 = v55;
  sub_1C1265030();
  memcpy(v70, v65, 0xC9uLL);
  sub_1C0F9E27C(v70, &qword_1EBE95230);
  v28 = v52;
  v27 = v53;
  v29 = v54;
  (*(v53 + 16))(v52, v47, v54);
  v30 = (*(v27 + 80) + 112) & ~*(v27 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = v48;
  *(v31 + 3) = v25;
  v33 = v63;
  v32 = v64;
  v31[4] = v24;
  *(v31 + 5) = v32;
  v35 = v61;
  v34 = v62;
  *(v31 + 6) = v33;
  *(v31 + 7) = v34;
  v37 = v59;
  v36 = v60;
  *(v31 + 8) = v35;
  *(v31 + 9) = v36;
  v39 = v57;
  v38 = v58;
  *(v31 + 10) = v37;
  *(v31 + 11) = v38;
  v40 = v56;
  *(v31 + 12) = v39;
  *(v31 + 13) = v40;
  (*(v27 + 32))(v31 + v30, v28, v29);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE94F00);
  v42 = (v26 + *(result + 36));
  *v42 = sub_1C1161B0C;
  v42[1] = v31;
  return result;
}

uint64_t sub_1C115818C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v67 = a2;
  v5 = *(a1 + 56);
  v6 = *(a1 + 88);
  v7 = *(a1 + 104);
  v62 = *(a1 + 40);
  v68 = v62;
  v69 = v5;
  v65 = v6;
  v70 = v6;
  v71 = v7;
  v8 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  v66 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v52 - v9;
  sub_1C1263E60();
  v11 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v72 = swift_getWitnessTable();
  v73 = MEMORY[0x1E697E5C0];
  v13 = swift_getWitnessTable();
  v64 = v8;
  v68 = v8;
  v69 = v11;
  v58 = v11;
  v70 = WitnessTable;
  v71 = v13;
  v57 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v59 = *(OpaqueTypeMetadata2 - 8);
  v60 = OpaqueTypeMetadata2;
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v55 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v56 = &v52 - v17;
  v54 = v3[22];

  v18 = sub_1C1149944();
  v19 = v3[23];
  v20 = *(v19 + 16);
  v63 = v10;
  v61 = WitnessTable;
  if (v20 && (sub_1C1266E90(), MEMORY[0x1C68F07E0](2), v21 = sub_1C1266EE0(), v22 = -1 << *(v19 + 32), v23 = v21 & ~v22, ((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0))
  {
    v24 = v5;
    v25 = ~v22;
    v26 = v18;
    do
    {
      v27 = *(*(v19 + 48) + v23);
      v28 = v27 != 4;
      if (v27 == 4)
      {
        break;
      }

      v23 = (v23 + 1) & v25;
    }

    while (((*(v19 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
  }

  else
  {
    v24 = v5;
    v28 = 1;
    v26 = v18;
  }

  v29 = v3[43];
  v30 = v3[44];
  v31 = v3[41];
  v32 = v3[42];
  sub_1C0FCF1B4(v29);
  sub_1C0FCF1B4(v31);
  v51 = v7;
  v33 = v26 & 1;
  v34 = v65;
  v49 = v24;
  v50 = v65;
  v53 = v3;
  v35 = v63;
  v36 = v31;
  v37 = v62;
  v38 = PhotosSearchRecentSuggestionsView_deprecated.init(recentSuggestions:isLandscape:canShowClearButton:clearRecentSearchesHandler:selectionHandler:)(v33, v28, v29, v30, v36, v32, v63);
  if (qword_1EBE8FC78 != -1)
  {
    v38 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v38);
  *(&v52 - 7) = *(a1 + 16);
  *(&v52 - 12) = *(a1 + 32);
  *(&v52 - 11) = v37;
  *(&v52 - 10) = *(a1 + 48);
  *(&v52 - 9) = v24;
  *(&v52 - 4) = *(a1 + 64);
  *(&v52 - 6) = *(a1 + 80);
  *(&v52 - 5) = v34;
  v49 = *(a1 + 96);
  v50 = v7;
  v51 = v53;
  v39 = swift_checkMetadataState();
  v40 = v55;
  v41 = v64;
  v42 = v61;
  v43 = v57;
  sub_1C1265030();
  (*(v66 + 8))(v35, v41);
  v68 = v41;
  v69 = v39;
  v70 = v42;
  v71 = v43;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v45 = v56;
  v46 = v60;
  sub_1C0FDBA4C(v40, v60, OpaqueTypeConformance2);
  v47 = *(v59 + 8);
  v47(v40, v46);
  sub_1C0FDBA4C(v45, v46, OpaqueTypeConformance2);
  return (v47)(v45, v46);
}

uint64_t sub_1C11586B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v149 = a8;
  v148 = a7;
  v147 = a6;
  v145 = a5;
  v143 = a4;
  v142 = a3;
  v127 = a2;
  v150 = a1;
  v137 = a9;
  v138 = a15;
  v146 = a14;
  v144 = a13;
  v139 = a12;
  v141 = a11;
  v140 = a10;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE92E58);
  v116 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v111 - v17;
  v136 = sub_1C1263EB0();
  v125 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v119 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  MEMORY[0x1EEE9AC00](v121);
  v135 = &v111 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v120 = &v111 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v111 - v23;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  sub_1C1263190();
  sub_1C1266790();
  v164 = a6;
  v165 = a8;
  v166 = a13;
  v167 = a15;
  v25 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  sub_1C1263E60();
  v26 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v176 = swift_getWitnessTable();
  v177 = MEMORY[0x1E697E5C0];
  v28 = swift_getWitnessTable();
  v164 = v25;
  v165 = v26;
  v166 = WitnessTable;
  v167 = v28;
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  sub_1C1263190();
  swift_getTupleTypeMetadata2();
  v29 = sub_1C1265B00();
  v30 = swift_getWitnessTable();
  v124 = v29;
  v122 = v30;
  v31 = sub_1C12655A0();
  v126 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v123 = &v111 - v32;
  v33 = sub_1C1263190();
  v131 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v129 = &v111 - v34;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE914F8);
  v35 = sub_1C1263190();
  v133 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v132 = &v111 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v128 = &v111 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v130 = &v111 - v40;
  v41 = sub_1C1266790();
  v42 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v111 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v111 - v46;
  v164 = v142;
  v165 = v143;
  v166 = v145;
  v167 = v147;
  v168 = v148;
  v169 = v149;
  v170 = v140;
  v171 = v141;
  v172 = v139;
  v173 = v144;
  v174 = v146;
  v175 = v138;
  type metadata accessor for PhotosSearchOverlayView();
  v48 = sub_1C1149880();
  v49 = MEMORY[0x1E697E5D8];
  if ((v48 & 1) == 0)
  {
    __swift_storeEnumTagSinglePayload(v44, 1, 1, v35);
    v162 = swift_getWitnessTable();
    v163 = v49;
    v57 = swift_getWitnessTable();
    v58 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8);
    v160 = v57;
    v161 = v58;
    swift_getWitnessTable();
    sub_1C1170030(v44, v47);
    v59 = *(v42 + 8);
    v59(v44, v41);
    goto LABEL_19;
  }

  v113 = v44;
  v115 = v42;
  v114 = v47;
  v112 = v33;
  v134 = v31;
  v111 = sub_1C1263AB0();
  v50 = v125;
  v51 = v136;
  (*(v125 + 104))(v24, *MEMORY[0x1E697FF40], v136);
  __swift_storeEnumTagSinglePayload(v24, 0, 1, v51);
  v52 = *(v121 + 48);
  v53 = v127;
  v54 = v135;
  sub_1C0FE5654(v127, v135, &qword_1EBE902F0);
  sub_1C0FE5654(v24, v54 + v52, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v54, 1, v51) == 1)
  {
    sub_1C0F9E27C(v24, &qword_1EBE902F0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v54 + v52, 1, v51);
    v56 = v129;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C0F9E27C(v54, &qword_1EBE902F0);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  v60 = v50;
  v61 = v120;
  sub_1C0FE5654(v54, v120, &qword_1EBE902F0);
  v62 = __swift_getEnumTagSinglePayload(v54 + v52, 1, v51);
  v56 = v129;
  if (v62 == 1)
  {
    sub_1C0F9E27C(v24, &qword_1EBE902F0);
    (*(v60 + 8))(v61, v136);
LABEL_8:
    sub_1C0F9E27C(v54, &qword_1EBE902E8);
    goto LABEL_10;
  }

  v63 = v54 + v52;
  v64 = v129;
  v65 = v61;
  v66 = v119;
  v67 = v136;
  (*(v60 + 32))(v119, v63, v136);
  sub_1C1162924(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
  LODWORD(v121) = sub_1C1265DE0();
  v68 = *(v60 + 8);
  v68(v66, v67);
  sub_1C0F9E27C(v24, &qword_1EBE902F0);
  v69 = v65;
  v56 = v64;
  v68(v69, v67);
  sub_1C0F9E27C(v135, &qword_1EBE902F0);
LABEL_10:
  v70 = v134;
  MEMORY[0x1EEE9AC00](v145);
  *(&v111 - 14) = v72;
  *(&v111 - 13) = v71;
  *(&v111 - 12) = v73;
  *(&v111 - 11) = v74;
  *(&v111 - 10) = v76;
  *(&v111 - 9) = v75;
  *(&v111 - 8) = v78;
  *(&v111 - 7) = v77;
  *(&v111 - 6) = v139;
  *(&v111 - 5) = v79;
  v80 = v138;
  *(&v111 - 4) = v81;
  *(&v111 - 3) = v80;
  *(&v111 - 2) = v53;
  v82 = v150;
  *(&v111 - 1) = v150;
  v83 = v123;
  sub_1C1265590();
  sub_1C1264460();
  v84 = swift_getWitnessTable();
  sub_1C1264FB0();
  (*(v126 + 8))(v83, v70);
  v85 = *(v82 + 184);
  v86 = v112;
  v87 = v115;
  v88 = MEMORY[0x1E697E5D8];
  if (*(v85 + 16) && (sub_1C1266E90(), MEMORY[0x1C68F07E0](1), v89 = sub_1C1266EE0(), v88 = MEMORY[0x1E697E5D8], v90 = -1 << *(v85 + 32), v91 = v89 & ~v90, ((*(v85 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) != 0))
  {
    v92 = ~v90;
    while (*(*(v85 + 48) + v91) != 3)
    {
      v91 = (v91 + 1) & v92;
      if (((*(v85 + 56 + ((v91 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v91) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (qword_1EBE8FC60 != -1)
    {
      swift_once();
    }

    v107 = v118;
    v108 = __swift_project_value_buffer(v118, qword_1EBEA4848);
    (*(v116 + 16))(v117, v108, v107);
    v109 = sub_1C1263840();
    v110 = sub_1C1162924(&qword_1EDE7BC98, MEMORY[0x1E697F260]);
    v164 = v109;
    v165 = v110;
    swift_getOpaqueTypeConformance2();
    sub_1C1262CE0();
    v87 = v115;
    v88 = MEMORY[0x1E697E5D8];
  }

  else
  {
LABEL_15:
    if (qword_1EBE8FC68 != -1)
    {
      swift_once();
    }
  }

  v153 = v84;
  v154 = v88;
  v93 = swift_getWitnessTable();
  v94 = v128;
  sub_1C12649D0();

  (*(v131 + 8))(v56, v86);
  v95 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8);
  v151 = v93;
  v152 = v95;
  v96 = swift_getWitnessTable();
  v97 = v130;
  sub_1C0FDBA4C(v94, v35, v96);
  v98 = v133;
  v99 = *(v133 + 8);
  v99(v94, v35);
  v100 = v132;
  sub_1C0FDBA4C(v97, v35, v96);
  v99(v97, v35);
  v101 = v113;
  (*(v98 + 32))(v113, v100, v35);
  __swift_storeEnumTagSinglePayload(v101, 0, 1, v35);
  v102 = v101;
  v47 = v114;
  sub_1C1170030(v101, v114);
  v59 = *(v87 + 8);
  v59(v102, v41);
LABEL_19:
  v158 = swift_getWitnessTable();
  v159 = MEMORY[0x1E697E5D8];
  v103 = swift_getWitnessTable();
  v104 = sub_1C10239B0(&unk_1EDE7BB70, &qword_1EBE914F8);
  v156 = v103;
  v157 = v104;
  v155 = swift_getWitnessTable();
  v105 = swift_getWitnessTable();
  sub_1C0FDBA4C(v47, v41, v105);
  return (v59)(v47, v41);
}

uint64_t sub_1C11597E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(void, void)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v128 = a7;
  v126 = a5;
  v124 = a3;
  v129 = a2;
  v108 = a1;
  v123 = a9;
  v127 = a14;
  v125 = a12;
  v132 = a11;
  v18 = type metadata accessor for PhotosSearchRecentSuggestionsView_deprecated();
  sub_1C1263E60();
  v19 = sub_1C1263190();
  WitnessTable = swift_getWitnessTable();
  v153 = swift_getWitnessTable();
  v154 = MEMORY[0x1E697E5C0];
  v119 = v18;
  v141 = v18;
  v142 = v19;
  v118 = v19;
  v117 = WitnessTable;
  v143 = WitnessTable;
  v144 = swift_getWitnessTable();
  v114 = v144;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v115 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v113 = &v93 - v22;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBE93030);
  v112 = OpaqueTypeMetadata2;
  v122 = sub_1C1263190();
  v116 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v121 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v120 = &v93 - v25;
  v141 = v124;
  v142 = a4;
  v143 = v126;
  v144 = a6;
  v103 = a6;
  v145 = v128;
  v146 = a8;
  v105 = a8;
  v101 = a10;
  v147 = a10;
  v148 = v132;
  v149 = v125;
  v150 = a13;
  v102 = a13;
  v151 = v127;
  v152 = a15;
  v104 = a15;
  v111 = type metadata accessor for PhotosSearchOverlayView();
  v95 = *(v111 - 8);
  v93 = *(v95 + 64);
  MEMORY[0x1EEE9AC00](v111);
  v94 = &v93 - v26;
  v97 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v96 = &v93 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE94EC0);
  v106 = a4;
  v29 = sub_1C1263190();
  v100 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v99 = &v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31);
  v98 = &v93 - v32;
  v33 = sub_1C1263EB0();
  v34 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v93 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902E8);
  v38 = v37 - 8;
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v93 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE902F0);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v43 = &v93 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v93 - v45;
  v130 = v29;
  v107 = sub_1C1266790();
  v109 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v110 = &v93 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v48);
  v131 = &v93 - v50;
  (*(v34 + 104))(v46, *MEMORY[0x1E697FF40], v33, v49);
  __swift_storeEnumTagSinglePayload(v46, 0, 1, v33);
  v51 = *(v38 + 56);
  sub_1C0FE5654(v108, v40, &qword_1EBE902F0);
  sub_1C0FE5654(v46, &v40[v51], &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(v40, 1, v33) == 1)
  {
    sub_1C0F9E27C(v46, &qword_1EBE902F0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v40[v51], 1, v33);
    v53 = v130;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C0F9E27C(v40, &qword_1EBE902F0);
      v54 = v132;
      v55 = v129;
      v56 = v111;
LABEL_9:
      v60 = sub_1C1264480();
      sub_1C12644B0();
      v61 = sub_1C12644B0() != v60;
      v62 = v96;
      sub_1C1156C0C(v61, 0, v56);
      v63 = v95;
      v64 = v94;
      (*(v95 + 16))(v94, v55, v56);
      v65 = (*(v63 + 80) + 112) & ~*(v63 + 80);
      v66 = swift_allocObject();
      v67 = v106;
      *(v66 + 2) = v124;
      *(v66 + 3) = v67;
      v68 = v103;
      *(v66 + 4) = v126;
      *(v66 + 5) = v68;
      v69 = v105;
      *(v66 + 6) = v128;
      *(v66 + 7) = v69;
      *(v66 + 8) = v101;
      *(v66 + 9) = v54;
      v70 = v102;
      *(v66 + 10) = v125;
      *(v66 + 11) = v70;
      v71 = v104;
      *(v66 + 12) = v127;
      *(v66 + 13) = v71;
      (*(v63 + 32))(&v66[v65], v64, v56);
      sub_1C0FF9EE4();
      v72 = v99;
      sub_1C1264C40();

      (*(v97 + 8))(v62, v67);
      v73 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0);
      v133 = v54;
      v134 = v73;
      v74 = swift_getWitnessTable();
      v75 = v98;
      sub_1C0FDBA4C(v72, v53, v74);
      v76 = v100;
      v77 = *(v100 + 8);
      v77(v72, v53);
      sub_1C0FDBA4C(v75, v53, v74);
      v77(v75, v53);
      v57 = v110;
      (*(v76 + 32))(v110, v72, v53);
      __swift_storeEnumTagSinglePayload(v57, 0, 1, v53);
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1C0FE5654(v40, v43, &qword_1EBE902F0);
  if (__swift_getEnumTagSinglePayload(&v40[v51], 1, v33) == 1)
  {
    sub_1C0F9E27C(v46, &qword_1EBE902F0);
    (*(v34 + 8))(v43, v33);
    v53 = v130;
LABEL_6:
    sub_1C0F9E27C(v40, &qword_1EBE902E8);
    v54 = v132;
    v56 = v111;
    goto LABEL_7;
  }

  (*(v34 + 32))(v36, &v40[v51], v33);
  sub_1C1162924(&qword_1EDE7BAB0, MEMORY[0x1E697FF50]);
  LODWORD(v108) = sub_1C1265DE0();
  v59 = *(v34 + 8);
  v59(v36, v33);
  sub_1C0F9E27C(v46, &qword_1EBE902F0);
  v59(v43, v33);
  sub_1C0F9E27C(v40, &qword_1EBE902F0);
  v54 = v132;
  v55 = v129;
  v53 = v130;
  v56 = v111;
  if (v108)
  {
    goto LABEL_9;
  }

LABEL_7:
  v57 = v110;
  __swift_storeEnumTagSinglePayload(v110, 1, 1, v53);
  v58 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0);
  v140[4] = v54;
  v140[5] = v58;
  swift_getWitnessTable();
LABEL_10:
  sub_1C1170030(v57, v131);
  v78 = v109;
  v79 = *(v109 + 8);
  v127 = v109 + 8;
  v128 = v79;
  v80 = v107;
  v79(v57, v107);
  v81 = v113;
  sub_1C115818C(v56, v113);
  v141 = v119;
  v142 = v118;
  v143 = v117;
  v144 = v114;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v83 = v121;
  v84 = v112;
  sub_1C1264B60();
  (*(v115 + 8))(v81, v84);
  v85 = sub_1C10239B0(&qword_1EDE7BB68, &unk_1EBE93030);
  v140[2] = OpaqueTypeConformance2;
  v140[3] = v85;
  v86 = v122;
  v129 = swift_getWitnessTable();
  v87 = v120;
  sub_1C0FDBA4C(v83, v86, v129);
  v88 = v116;
  v89 = *(v116 + 8);
  v89(v83, v86);
  (*(v78 + 16))(v57, v131, v80);
  v141 = v57;
  (*(v88 + 16))(v83, v87, v86);
  v142 = v83;
  v140[0] = v80;
  v140[1] = v86;
  v90 = sub_1C10239B0(&qword_1EDE7BAA0, &qword_1EBE94EC0);
  v136 = v132;
  v137 = v90;
  v135 = swift_getWitnessTable();
  v138 = swift_getWitnessTable();
  v139 = v129;
  sub_1C119EE80(&v141, 2, v140);
  v89(v87, v86);
  v91 = v128;
  v128(v131, v80);
  v89(v83, v86);
  return v91(v57, v80);
}

uint64_t sub_1C115A7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *&v91 = a1;
  v93 = a9;
  v89 = a11;
  *&v90 = a8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE950F8);
  MEMORY[0x1EEE9AC00](v92);
  v83 = (&v72 - v20);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95100);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v75 = &v72 - v22;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95108);
  MEMORY[0x1EEE9AC00](v84);
  v73 = &v72 - v23;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95110);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v86 = &v72 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v87 = &v72 - v28;
  v74 = a2;
  v94 = a2;
  v95 = a3;
  v76 = a3;
  v29 = v89;
  v78 = a4;
  v96 = a4;
  v97 = a5;
  v80 = a5;
  v82 = a6;
  v98 = a6;
  v99 = a7;
  v30 = a7;
  v31 = v90;
  v100 = v90;
  v101 = a10;
  v102 = v89;
  v103 = a12;
  v77 = a12;
  v79 = a13;
  v104 = a13;
  v105 = a14;
  v81 = a14;
  v32 = type metadata accessor for PhotosSearchOverlayView();
  v33 = *(v32 - 1);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v72 - v34;
  v36 = v91;
  if ((sub_1C1149880() & 1) == 0)
  {
    v56 = v92;
    v55 = v93;
    v57 = 1;
    return __swift_storeEnumTagSinglePayload(v55, v57, 1, v56);
  }

  (*(v33 + 16))(v35, v36, v32);
  v37 = (*(v33 + 80) + 112) & ~*(v33 + 80);
  v38 = swift_allocObject();
  v39 = v76;
  *(v38 + 2) = v74;
  *(v38 + 3) = v39;
  v40 = v80;
  *(v38 + 4) = v78;
  *(v38 + 5) = v40;
  *(v38 + 6) = v82;
  *(v38 + 7) = v30;
  *(v38 + 8) = v31;
  *(v38 + 9) = a10;
  v41 = v77;
  *(v38 + 10) = v29;
  *(v38 + 11) = v41;
  v42 = v81;
  *(v38 + 12) = v79;
  *(v38 + 13) = v42;
  (*(v33 + 32))(&v38[v37], v35, v32);
  v43 = v75;
  sub_1C115AF50(v32, v75);
  LOBYTE(v37) = sub_1C1264490();
  v44 = sub_1C12644B0();
  sub_1C12644B0();
  if (sub_1C12644B0() != v37)
  {
    v44 = sub_1C12644B0();
  }

  v45 = *(v36 + 184);
  v47 = v92;
  v46 = v93;
  if (*(v45 + 16))
  {
    sub_1C1266E90();
    MEMORY[0x1C68F07E0](4);
    v48 = sub_1C1266EE0();
    v49 = -1 << *(v45 + 32);
    v50 = v48 & ~v49;
    if ((*(v45 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
    {
      v51 = ~v49;
      while (*(*(v45 + 48) + v50) != 5)
      {
        v50 = (v50 + 1) & v51;
        if (((*(v45 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
        {
          goto LABEL_9;
        }
      }

      goto LABEL_12;
    }
  }

LABEL_9:
  sub_1C114AE1C();
  if ((v52 & 1) == 0)
  {
LABEL_12:
    v54 = v73;
    sub_1C12628A0();
    v53 = 0;
    *(&v59 + 1) = v58;
    *(&v61 + 1) = v60;
    v90 = v59;
    v91 = v61;
    goto LABEL_13;
  }

  v90 = 0u;
  v91 = 0u;
  v53 = 1;
  v54 = v73;
LABEL_13:
  sub_1C0FE4040(v43, v54, &qword_1EBE95100);
  v62 = v54 + *(v84 + 36);
  *v62 = v44;
  v63 = v91;
  *(v62 + 24) = v90;
  *(v62 + 8) = v63;
  *(v62 + 40) = v53;
  if (qword_1EBE8FC78 != -1)
  {
    swift_once();
  }

  v64 = qword_1EBEA4868;
  v65 = v86;
  v66 = &v86[*(v85 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95118);
  sub_1C1261E10();
  *v66 = v64;
  sub_1C0FE4040(v54, v65, &qword_1EBE95108);
  v67 = v87;
  sub_1C0FE4040(v65, v87, &qword_1EBE95110);
  v68 = v88;
  sub_1C0FE5654(v67, v88, &qword_1EBE95110);
  v69 = v83;
  *v83 = 0;
  *(v69 + 8) = 1;
  *(v69 + 16) = 0xC000000000000000;
  *(v69 + 24) = sub_1C116302C;
  *(v69 + 32) = 0;
  *(v69 + 40) = sub_1C1161170;
  *(v69 + 48) = v38;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE95120);
  sub_1C0FE5654(v68, v69 + *(v70 + 48), &qword_1EBE95110);

  sub_1C0F9E27C(v67, &qword_1EBE95110);
  sub_1C0F9E27C(v68, &qword_1EBE95110);

  sub_1C0FE4040(v69, v46, &qword_1EBE950F8);
  v55 = v46;
  v57 = 0;
  v56 = v47;
  return __swift_storeEnumTagSinglePayload(v55, v57, 1, v56);
}