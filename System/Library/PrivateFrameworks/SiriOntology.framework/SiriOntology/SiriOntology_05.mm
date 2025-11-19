uint64_t sub_1C057D240(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(v4 + 16) + 48);
  if (*(v6 + 16))
  {

    v9 = sub_1C0516A8C(a1, a2);
    if (v10)
    {
      v11 = *(*(v6 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1C057E268(a4, v11);

  return v12;
}

uint64_t CodeGenBase.__allocating_init(from:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  CodeGenBase.init(from:)(a1);
  return v2;
}

uint64_t *CodeGenBase.init(from:)(uint64_t *a1)
{
  v4 = *v1;
  sub_1C0526080(a1, v10);
  sub_1C051B318(v10);
  if (v2)
  {
    goto LABEL_11;
  }

  if (!v5)
  {
    sub_1C057F43C();
    swift_allocError();
    swift_willThrow();
LABEL_10:

LABEL_11:
    __swift_destroy_boxed_opaque_existential_1(a1);
    type metadata accessor for CodeGenBase();
    swift_deallocPartialClassInstance();
    return v1;
  }

  v6 = _s12SiriOntology25UsoBuilderConversionUtilsO013convertEntityd2ToH006entityD0AA0cH0CSgAA0chD0C_tFZ_0();
  if (!v6)
  {
    sub_1C057F43C();
    swift_allocError();
    swift_willThrow();
LABEL_9:

    goto LABEL_10;
  }

  v7 = v6;

  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)(v8, v4, v4, v10);

  if (!v10[0])
  {
    sub_1C057F43C();
    swift_allocError();
    swift_willThrow();

    goto LABEL_9;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  v1[2] = v7;
  return v1;
}

uint64_t sub_1C057D4F4(void *a1)
{
  v3 = *(v1 + 16);

  sub_1C0523914(a1, v3);
}

uint64_t sub_1C057D548()
{
  v1 = *(*(*(v0 + 16) + 48) + 24);
  swift_unownedRetainStrong();
  v2 = *(v1 + 112);

  return v2;
}

uint64_t sub_1C057D59C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 32);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (v8 >> 62)
  {
    result = sub_1C095DCDC();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    return 0;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C68DDAD0](0, v8);
    goto LABEL_8;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

LABEL_8:

    v11 = *(v10 + 24);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v12 = *(v11 + 104);

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C057D6D0(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 32);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (v8 >> 62)
  {
    result = sub_1C095DCDC();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    return 0;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C68DDAD0](0, v8);
    goto LABEL_8;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

LABEL_8:

    v11 = *(v10 + 24);
    swift_unownedRetainStrong();
    v12 = *(v11 + 112);

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C057D7E8(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 32);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_11;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (v8 >> 62)
  {
    result = sub_1C095DCDC();
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_11:

    return 0;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C68DDAD0](0, v8);
    goto LABEL_8;
  }

  if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v8 + 32);

LABEL_8:

    v11 = *(v10 + 24);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v12 = *(v11 + 120);

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C057D91C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(*(v4 + 16) + 32);
  if (*(v6 + 16))
  {
    v9 = a4;
    v10 = *(*(v4 + 16) + 32);

    v11 = sub_1C0516A8C(a1, a2);
    if (v12)
    {
      v13 = *(*(v6 + 56) + 8 * v11);

      if (v13 >> 62)
      {
        result = sub_1C095DCDC();
        if (result)
        {
          goto LABEL_5;
        }
      }

      else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_5:
        if ((v13 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1C68DDAD0](0, v13);
        }

        else
        {
          if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return result;
          }

          v15 = *(v13 + 32);
        }

        goto LABEL_13;
      }
    }

    v15 = 0;
LABEL_13:
    a4 = v9;
    goto LABEL_14;
  }

  v15 = 0;
LABEL_14:
  sub_1C057DA48(v15, a3, a4);
}

uint64_t sub_1C057DA48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a1)
  {
    v5 = MEMORY[0x1E69E6158];
    if (a2 == MEMORY[0x1E69E6158])
    {
      sub_1C0519574();
      v10 = &qword_1EBE168C0;
      v11 = &qword_1C096DC90;
    }

    else
    {
      v5 = MEMORY[0x1E69E7360];
      if (a2 != MEMORY[0x1E69E7360])
      {
        v6 = type metadata accessor for UsoEntity();
        v7 = sub_1C0518BC4();
        if (v6 == a2)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE173F0, &qword_1C0970C88);
          v13 = swift_dynamicCast();
          return (*(*(a2 - 8) + 56))(a3, v13 ^ 1u, 1, a2);
        }

        else
        {
          static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)(v7, a2, a2, a3);
        }
      }

      v14 = *(a1 + 16);
      Node.int64Value.getter();
      v10 = &qword_1EBE173E8;
      v11 = &unk_1C0970D70;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
    v12 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a3, v12 ^ 1u, 1, v5);
  }

  v9 = *(*(a2 - 8) + 56);

  return v9(a3, 1, 1, a2);
}

uint64_t sub_1C057DC4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(v3 + 16) + 32);
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v8 = *(*(v3 + 16) + 32);

  v9 = sub_1C0516A8C(a1, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(*(v5 + 56) + 8 * v9);

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1C68DDAD0](0, v11);
    goto LABEL_8;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);

LABEL_8:

LABEL_13:
    v14 = sub_1C057DD64(v13, a3);

    return v14;
  }

  __break(1u);
  return result;
}

char *sub_1C057DD64(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C095DB0C();
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v41 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v41 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v21 = &v41 - v20;
  if (!a1)
  {
    return 0;
  }

  v42 = v19;
  result = sub_1C0518574();
  if (!result)
  {
    return result;
  }

  v23 = result;
  v24 = *(result + 4);
  if (a2 == MEMORY[0x1E69E6158])
  {
    if (v24)
    {
      v27 = *(result + 4);

      v28 = sub_1C0519574();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    *&v43 = v28;
    *(&v43 + 1) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
    v34 = MEMORY[0x1E69E6158];
    v35 = swift_dynamicCast();
    (*(v4 + 56))(v21, v35 ^ 1u, 1, v34);
    type metadata accessor for CodeGenExpression();
    v36 = v42;
    (*(v42 + 16))(v18, v21, v8);
    v37 = sub_1C057E778(v23, v18);
    (*(v36 + 8))(v21, v8);
    return v37;
  }

  if (a2 == MEMORY[0x1E69E7360])
  {
    if (v24)
    {
      v43 = *(v24 + 16);
      v31 = Node.int64Value.getter();
    }

    else
    {
      v31 = 0;
      v32 = 1;
    }

    *&v43 = v31;
    BYTE8(v43) = v32 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
    v38 = MEMORY[0x1E69E7360];
    v39 = swift_dynamicCast();
    (*(v4 + 56))(v15, v39 ^ 1u, 1, v38);
    type metadata accessor for CodeGenExpression();
    v40 = v42;
    (*(v42 + 16))(v18, v15, v8);
    v37 = sub_1C057E778(v23, v18);
    (*(v40 + 8))(v15, v8);
    return v37;
  }

  v25 = *(result + 4);

  sub_1C057DA48(v26, a2, v12);

  if ((*(v4 + 48))(v12, 1, a2) == 1)
  {

    (*(v42 + 8))(v12, v8);
    return 0;
  }

  v33 = *(v4 + 32);
  v33(v7, v12, a2);
  type metadata accessor for CodeGenExpression();
  v33(v18, v7, a2);
  (*(v4 + 56))(v18, 0, 1, a2);
  return sub_1C057E778(v23, v18);
}

uint64_t sub_1C057E1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*(v4 + 16) + 32);
  if (*(v6 + 16))
  {

    v9 = sub_1C0516A8C(a1, a2);
    if (v10)
    {
      v11 = *(*(v6 + 56) + 8 * v9);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1C057E268(a4, v11);

  return v12;
}

uint64_t sub_1C057E268(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  type metadata accessor for CodeGenListEntry();
  result = sub_1C095D9BC();
  v12 = result;
  if (!(a2 >> 62))
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_4;
    }

    return v12;
  }

  result = sub_1C095DCDC();
  v5 = result;
  if (!result)
  {
    return v12;
  }

LABEL_4:
  if (v5 >= 1)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {

      v6 = 0;
      do
      {
        v7 = MEMORY[0x1C68DDAD0](v6++, a2);
        v8 = swift_allocObject();
        *(v8 + 16) = a1;
        *(v8 + 24) = v7;
        sub_1C095D9FC();
        sub_1C095D9EC();
      }

      while (v5 != v6);
    }

    else
    {
      v9 = (a2 + 32);

      do
      {
        v10 = *v9++;
        v11 = swift_allocObject();
        *(v11 + 16) = a1;
        *(v11 + 24) = v10;
        sub_1C095D9FC();

        sub_1C095D9EC();
        --v5;
      }

      while (v5);
    }

    return v12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C057E3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C095DB0C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v22 - v8;
  v10 = *(v2 + 16);
  v11 = v10[3];
  v22 = v10[2];
  v23 = v11;

  sub_1C095D92C();
  v12 = *(a1 - 8);
  if ((*(v12 + 48))(v9, 1, a1) != 1)
  {
    (*(v12 + 32))(a2, v9, a1);
    return (*(v12 + 56))(a2, 0, 1, a1);
  }

  (*(v6 + 8))(v9, v5);
  v13 = v10[4];
  if (!*(v13 + 16))
  {
    return (*(v12 + 56))(a2, 1, 1, a1);
  }

  v14 = v10[4];

  v15 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v16 & 1) == 0)
  {
    goto LABEL_14;
  }

  v17 = *(*(v13 + 56) + 8 * v15);

  if (v17 >> 62)
  {
    result = sub_1C095DCDC();
    if (result)
    {
      goto LABEL_6;
    }

LABEL_14:

    return (*(v12 + 56))(a2, 1, 1, a1);
  }

  if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v17 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v17 + 32);
  }

  v20 = sub_1C0518BC4();

  if (v20)
  {
    v21 = *(v20 + 24);
    v22 = *(v20 + 16);
    v23 = v21;

    sub_1C095D92C();
  }

  return (*(v12 + 56))(a2, 1, 1, a1);
}

uint64_t CodeGenBase.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t CodeGenBase.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C057E6F0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 96))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1C057E72C(void *a1)
{
  v3 = *(*v1 + 16);

  sub_1C0523914(a1, v3);
}

char *sub_1C057E778(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  v8 = *v7;
  *(v7 + 2) = a1;
  v9 = *(v8 + 96);
  v10 = *(v8 + 80);
  v11 = sub_1C095DB0C();
  (*(*(v11 - 8) + 32))(&v7[v9], a2, v11);
  return v7;
}

uint64_t sub_1C057E828()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);

  return v2;
}

uint64_t sub_1C057E85C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 80);
  v5 = sub_1C095DB0C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v1 + v3, v5);
}

char *CodeGenExpression.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = *(*v0 + 96);
  v4 = *(v1 + 80);
  v5 = sub_1C095DB0C();
  (*(*(v5 - 8) + 8))(&v0[v3], v5);
  return v0;
}

uint64_t CodeGenExpression.__deallocating_deinit()
{
  CodeGenExpression.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1C057E9E4(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2;
  return result;
}

uint64_t CodeGenListEntry.deinit()
{
  v1 = *(v0 + 24);

  return v0;
}

uint64_t CodeGenListEntry.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

unint64_t sub_1C057EAB4(unsigned int a1)
{
  v3 = MEMORY[0x1C68DDE60](*(v1 + 40), a1, 4);

  return sub_1C057ED14(a1, v3);
}

unint64_t sub_1C057EAFC(void *a1)
{
  v3 = *(v1 + 40);
  sub_1C095DFEC();
  v4 = a1[5];
  v5 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v4);
  (*(v5 + 8))(v4, v5);
  sub_1C095D7BC();

  v6 = a1[5];
  v7 = a1[6];
  __swift_project_boxed_opaque_existential_1(a1 + 2, v6);
  (*(v7 + 16))(v6, v7);
  sub_1C095E00C();
  v8 = sub_1C095E03C();

  return sub_1C057ED80(a1, v8);
}

unint64_t sub_1C057EBF0(uint64_t *a1)
{
  v3 = *(v1 + 40);
  sub_1C095DFEC();
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  sub_1C095D7BC();
  sub_1C095D7BC();
  if (v8 && (sub_1C095E00C(), v8[3]))
  {
    v9 = v8[8];
    v17 = v8[9];
    v11 = v8[6];
    v10 = v8[7];
    v13 = v8[4];
    v12 = v8[5];
    v14 = v8[2];
    sub_1C095E00C();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
    sub_1C095D7BC();
  }

  else
  {
    sub_1C095E00C();
  }

  v15 = sub_1C095E03C();

  return sub_1C057EE7C(a1, v15);
}

unint64_t sub_1C057ED14(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1C057ED80(uint64_t a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    do
    {
      v8 = *(*(v6 + 48) + 8 * v5);
      v9 = v8[5];
      v10 = v8[6];
      __swift_project_boxed_opaque_existential_1(v8 + 2, v9);
      v11 = *(v10 + 24);

      v12 = v11(a1 + 16, v9, v10);

      if (v12)
      {
        break;
      }

      v5 = (v5 + 1) & v7;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C057EE7C(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = a1[1];
    v8 = a1[2];
    v48 = v8;
    v49 = *a1;
    v47 = a1[3];
    v9 = a1[4];
    v39 = v2 + 64;
    v43 = ~v4;
    do
    {
      v10 = (*(v2 + 48) + 40 * v5);
      v11 = v10[2];
      v12 = v10[3];
      v13 = v10[4];
      v14 = *v10 == v49 && v10[1] == v7;
      if (v14 || (sub_1C095DF3C() & 1) != 0)
      {
        v15 = v11 == v48 && v12 == v47;
        if (v15 || (sub_1C095DF3C() & 1) != 0)
        {
          if (!v13)
          {
            if (!v9)
            {
              return v5;
            }

            goto LABEL_4;
          }

          if (v9)
          {
            v16 = v13[1];
            v17 = v13[2];
            v18 = v13[4];
            v72 = v13[3];
            v73 = v18;
            v70 = v16;
            v71 = v17;
            v19 = v9[1];
            v20 = v9[2];
            v21 = v9[4];
            v74[2] = v9[3];
            v74[3] = v21;
            v74[0] = v19;
            v74[1] = v20;
            v67 = v71;
            v68 = v72;
            v69 = v73;
            v22 = *(&v19 + 1);
            v23 = v9[3];
            v64 = v9[2];
            v65 = v23;
            v66 = v9[4];
            v46 = v70;
            if (!*(&v70 + 1))
            {
              if (!*(&v19 + 1))
              {
                v55 = v70;
                v56 = v71;
                v57 = v72;
                v58 = v73;
                sub_1C057F900(&v70, v54);
                sub_1C057F900(v74, v54);
                sub_1C05145B4(&v55, &qword_1EBE16D80, &qword_1C0970448);
                return v5;
              }

              v45 = v19;
              v30 = 0;

              sub_1C057F900(&v70, &v55);
              sub_1C057F900(v74, &v55);
              goto LABEL_31;
            }

            v55 = v70;
            v57 = v72;
            v58 = v73;
            v56 = v71;
            if (!*(&v19 + 1))
            {
              v45 = v19;
              v30 = *(&v70 + 1);

              sub_1C057F900(&v70, v54);
              sub_1C057F900(v74, v54);
              sub_1C057F900(&v55, v54);

              v2 = v38;
              v3 = v39;
LABEL_31:
              *&v55 = v46;
              *(&v55 + 1) = v30;
              v56 = v67;
              v57 = v68;
              v58 = v69;
              v59 = v45;
              v60 = v22;
              v61 = v64;
              v62 = v65;
              v63 = v66;
              sub_1C05145B4(&v55, &qword_1EBE16D88, &qword_1C0970450);

              v6 = v43;
              v7 = v37;
              goto LABEL_4;
            }

            v40 = *(&v58 + 1);
            v42 = *(&v57 + 1);
            v44 = *(&v56 + 1);
            v24 = v56;
            v35 = v57;
            v33 = v58;
            v54[0] = v19;
            v54[2] = v65;
            v54[3] = v66;
            v54[1] = v64;
            v25 = v64;
            v34 = v65;
            v26 = *(&v66 + 1);
            v32 = v66;
            v41 = *(&v70 + 1);
            if (v70 == v19 || (v27 = v56, v28 = sub_1C095DF3C(), v24 = v27, (v28)) && (__PAIR128__(v44, v24) == v25 || (sub_1C095DF3C()))
            {
              v29 = v26;
              v6 = v43;
              if (__PAIR128__(v42, v35) == v34 || (sub_1C095DF3C() & 1) != 0)
              {
                v2 = v38;
                v3 = v39;
                if (v33 == v32 && v40 == v29)
                {

                  sub_1C057F900(&v70, v50);
                  sub_1C057F900(v74, v50);
                  sub_1C057F900(&v55, v50);
                  v36 = 1;
                }

                else
                {
                  v36 = sub_1C095DF3C();

                  sub_1C057F900(&v70, v50);
                  sub_1C057F900(v74, v50);
                  sub_1C057F900(&v55, v50);
                }
              }

              else
              {

                sub_1C057F900(&v70, v50);
                sub_1C057F900(v74, v50);
                sub_1C057F900(&v55, v50);
                v36 = 0;
                v2 = v38;
                v3 = v39;
              }
            }

            else
            {

              sub_1C057F900(&v70, v50);
              sub_1C057F900(v74, v50);
              sub_1C057F900(&v55, v50);
              v36 = 0;
              v2 = v38;
              v3 = v39;
              v6 = v43;
            }

            sub_1C05145B4(v54, &qword_1EBE16D80, &qword_1C0970448);

            v50[0] = v46;
            v50[1] = v41;
            v51 = v67;
            v52 = v68;
            v53 = v69;
            sub_1C05145B4(v50, &qword_1EBE16D80, &qword_1C0970448);

            if (v36)
            {
              return v5;
            }
          }
        }
      }

LABEL_4:
      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1C057F43C()
{
  result = qword_1EBE17360[0];
  if (!qword_1EBE17360[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EBE17360);
  }

  return result;
}

uint64_t sub_1C057F670(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = sub_1C095DB0C();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C057F900(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D80, &qword_1C0970448);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C0581370(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  if (a1)
  {
    v4 = v3;
    v5 = qword_1ED5CE288;

    if (v5 != -1)
    {
      swift_once();
    }

    v6 = qword_1ED5DA968;
    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    if (*(qword_1ED5DA968 + 16) && (v9 = *(a1 + 24), , v10 = sub_1C0516A8C(v8, v7), v12 = v11, , (v12 & 1) != 0) && (v13 = *(*(v6 + 56) + 8 * v10), v13 == v4))
    {
LABEL_14:
      (*(v13 + 88))(a1);
      result = swift_dynamicCastClass();
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (qword_1ED5CE280 != -1)
      {
        swift_once();
      }

      v14 = qword_1ED5DA960;
      if (*(qword_1ED5DA960 + 16))
      {

        v15 = sub_1C0516A8C(v8, v7);
        v17 = v16;

        if (v17)
        {
          v18 = *(*(v14 + 56) + 8 * v15);
          v19 = *(v18 + 16);
          v20 = (v18 + 32);
          while (v19)
          {
            v21 = *v20++;
            v13 = v21;
            --v19;
            if (v21 == v4)
            {
              goto LABEL_14;
            }
          }
        }
      }
    }
  }

  return 0;
}

void *sub_1C0581508(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = sub_1C095DBBC();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  else
  {
    return sub_1C058B498(&v5, v3, *(a1 + 36), 0, a1);
  }
}

uint64_t sub_1C0581588(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 32);
  if (!*(v3 + 16))
  {
    goto LABEL_15;
  }

  v6 = *(*(v2 + 16) + 32);

  v7 = sub_1C0516A8C(a1, a2);
  if ((v8 & 1) == 0)
  {
    goto LABEL_14;
  }

  v9 = *(*(v3 + 56) + 8 * v7);

  if (!(v9 >> 62))
  {
    if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1C68DDAD0](0, v9);
LABEL_8:

    if (v11)
    {
      v13 = *(v11 + 16);
      Node.int64Value.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE173E8, &unk_1C0970D70);
      if (swift_dynamicCast())
      {
        v12 = v14;
      }

      else
      {
        v12 = 0;
      }

      goto LABEL_16;
    }

LABEL_15:
    v12 = 0;
LABEL_16:

    return v12;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v11 = *(v9 + 32);

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C058170C(uint64_t a1, uint64_t a2)
{
  v3 = *(*(v2 + 16) + 32);
  if (!*(v3 + 16))
  {
    return 0;
  }

  v6 = sub_1C0516A8C(a1, a2);
  if ((v7 & 1) == 0)
  {
    goto LABEL_14;
  }

  v8 = *(*(v3 + 56) + 8 * v6);

  if (!(v8 >> 62))
  {
    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_14:

    return 0;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_5:
  if ((v8 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1C68DDAD0](0, v8);
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v10 = *(v8 + 32);
  }

  if (!v10)
  {
    return 0;
  }

  sub_1C0519574();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE168C0, &qword_1C096DC90);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0583270(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(*(v3 + 16) + 32);
  if (!*(v5 + 16))
  {
    goto LABEL_12;
  }

  v8 = *(*(v3 + 16) + 32);

  v9 = sub_1C0516A8C(a1, a2);
  if ((v10 & 1) == 0)
  {
    goto LABEL_11;
  }

  v11 = *(*(v5 + 56) + 8 * v9);

  if (!(v11 >> 62))
  {
    if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_11:

LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

LABEL_5:
  if ((v11 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1C68DDAD0](0, v11);
    goto LABEL_8;
  }

  if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v11 + 32);

LABEL_8:

LABEL_13:
    v14 = a3(v13);

    return v14;
  }

  __break(1u);
  return result;
}

char sub_1C058339C@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_Number.DefinedValues.init(rawValue:)(v6);
  v8 = v20;
  if (v20 != 15)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 15;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = v3[4];

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }

    v14 = *(v13 + 32);
  }

  v15 = sub_1C0518BC4();

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = *(v15 + 16);
  v17 = *(v15 + 24);

  v18._countAndFlagsBits = v16;
  v18._object = v17;
  UsoEntity_common_Number.DefinedValues.init(rawValue:)(v18);

  return v7;
}

char sub_1C05835E8@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_commonStock_StockAttribute.DefinedValues.init(rawValue:)(v6);
  v8 = v20;
  if (v20 != 20)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 20;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = v3[4];

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }

    v14 = *(v13 + 32);
  }

  v15 = sub_1C0518BC4();

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = *(v15 + 16);
  v17 = *(v15 + 24);

  v18._countAndFlagsBits = v16;
  v18._object = v17;
  UsoEntity_commonStock_StockAttribute.DefinedValues.init(rawValue:)(v18);

  return v7;
}

char sub_1C058378C@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_MonthOfYear.DefinedValues.init(rawValue:)(v6);
  v8 = v20;
  if (v20 != 12)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 12;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = v3[4];

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }

    v14 = *(v13 + 32);
  }

  v15 = sub_1C0518BC4();

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = *(v15 + 16);
  v17 = *(v15 + 24);

  v18._countAndFlagsBits = v16;
  v18._object = v17;
  UsoEntity_common_MonthOfYear.DefinedValues.init(rawValue:)(v18);

  return v7;
}

char sub_1C0583918@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_appleMessage_MessageAttribute.DefinedValues.init(rawValue:)(v6);
  v8 = v20;
  if (v20 != 35)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 35;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = v3[4];

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }

    v14 = *(v13 + 32);
  }

  v15 = sub_1C0518BC4();

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = *(v15 + 16);
  v17 = *(v15 + 24);

  v18._countAndFlagsBits = v16;
  v18._object = v17;
  UsoEntity_appleMessage_MessageAttribute.DefinedValues.init(rawValue:)(v18);

  return v7;
}

char sub_1C0583AD0@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_MeasurementUnit.DefinedValues.init(rawValue:)(v6);
  v8 = v20;
  if (v20 != 54)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 54;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = v3[4];

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }

    v14 = *(v13 + 32);
  }

  v15 = sub_1C0518BC4();

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = *(v15 + 16);
  v17 = *(v15 + 24);

  v18._countAndFlagsBits = v16;
  v18._object = v17;
  UsoEntity_common_MeasurementUnit.DefinedValues.init(rawValue:)(v18);

  return v7;
}

void *sub_1C0583C9C@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v19, v6, v7);
  v9 = v19;
  if (v19 != 10)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 10;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = v5[4];

  v12 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = sub_1C0518BC4();

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  a1(v17, v18);
}

char sub_1C0583E58@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_DateTimeRange.DefinedValues.init(rawValue:)(v6);
  v8 = v20;
  if (v20 != 25)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 25;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = v3[4];

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }

    v14 = *(v13 + 32);
  }

  v15 = sub_1C0518BC4();

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = *(v15 + 16);
  v17 = *(v15 + 24);

  v18._countAndFlagsBits = v16;
  v18._object = v17;
  UsoEntity_common_DateTimeRange.DefinedValues.init(rawValue:)(v18);

  return v7;
}

char sub_1C0584080@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_TimeUnit.DefinedValues.init(rawValue:)(v6);
  v8 = v20;
  if (v20 != 13)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 13;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = v3[4];

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }

    v14 = *(v13 + 32);
  }

  v15 = sub_1C0518BC4();

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = *(v15 + 16);
  v17 = *(v15 + 24);

  v18._countAndFlagsBits = v16;
  v18._object = v17;
  UsoEntity_common_TimeUnit.DefinedValues.init(rawValue:)(v18);

  return v7;
}

void *sub_1C05842A8@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v19, v6, v7);
  v9 = v19;
  if (v19 != 9)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 9;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = v5[4];

  v12 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = sub_1C0518BC4();

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  a1(v17, v18);
}

char sub_1C05844EC@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_MediaItemType.DefinedValues.init(rawValue:)(v6);
  v8 = v20;
  if (v20 != 36)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 36;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = v3[4];

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }

    v14 = *(v13 + 32);
  }

  v15 = sub_1C0518BC4();

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = *(v15 + 16);
  v17 = *(v15 + 24);

  v18._countAndFlagsBits = v16;
  v18._object = v17;
  UsoEntity_common_MediaItemType.DefinedValues.init(rawValue:)(v18);

  return v7;
}

char sub_1C0584890@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_appleEmail_EmailAttribute.DefinedValues.init(rawValue:)(v6);
  v8 = v20;
  if (v20 != 11)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 11;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = v3[4];

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }

    v14 = *(v13 + 32);
  }

  v15 = sub_1C0518BC4();

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = *(v15 + 16);
  v17 = *(v15 + 24);

  v18._countAndFlagsBits = v16;
  v18._object = v17;
  UsoEntity_appleEmail_EmailAttribute.DefinedValues.init(rawValue:)(v18);

  return v7;
}

void *sub_1C0584A94@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v19, v6, v7);
  v9 = v19;
  if (v19 != 8)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 8;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = v5[4];

  v12 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = sub_1C0518BC4();

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  a1(v17, v18);
}

void *sub_1C0584CF0@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v19, v6, v7);
  v9 = v19;
  if (v19 != 34)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 34;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = v5[4];

  v12 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = sub_1C0518BC4();

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  a1(v17, v18);
}

void *sub_1C0584ED8@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v19, v6, v7);
  v9 = v19;
  if (v19 != 7)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 7;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = v5[4];

  v12 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = sub_1C0518BC4();

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  a1(v17, v18);
}

char sub_1C058507C@<W0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  LOBYTE(v7) = UsoEntity_common_AttachmentType.DefinedValues.init(rawValue:)(v6);
  v8 = v20;
  if (v20 != 43)
  {
    goto LABEL_17;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_16:
    v8 = 43;
LABEL_17:
    *a1 = v8;
    return v7;
  }

  v10 = v3[4];

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_15;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v7 = sub_1C095DCDC();
  if (!v7)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
  }

  else
  {
    if (!*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return v7;
    }

    v14 = *(v13 + 32);
  }

  v15 = sub_1C0518BC4();

  if (!v15)
  {
    goto LABEL_16;
  }

  v16 = *(v15 + 16);
  v17 = *(v15 + 24);

  v18._countAndFlagsBits = v16;
  v18._object = v17;
  UsoEntity_common_AttachmentType.DefinedValues.init(rawValue:)(v18);

  return v7;
}

uint64_t sub_1C058521C@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6 = sub_1C095DD6C();

  if (!v6)
  {
    v18 = 0;
    goto LABEL_16;
  }

  v8 = v3[4];
  if (!*(v8 + 16))
  {
LABEL_15:
    v18 = 1;
    goto LABEL_16;
  }

  v9 = v3[4];

  v10 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v11 & 1) == 0)
  {
    goto LABEL_14;
  }

  v12 = *(*(v8 + 56) + 8 * v10);

  if (!(v12 >> 62))
  {
    if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

LABEL_14:

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_6:
  if ((v12 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v12);
LABEL_9:

    v14 = sub_1C0518BC4();

    if (v14)
    {
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);

      v17 = sub_1C095DD6C();

      v18 = v17 != 0;
LABEL_16:
      *a1 = v18;
      return result;
    }

    goto LABEL_15;
  }

  if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(v12 + 32);

    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C05853C8@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[2];
  v5 = v3[3];

  v6 = sub_1C095DD6C();

  if (!v6)
  {
    v8 = 0;
    goto LABEL_23;
  }

  if (v6 == 1)
  {
    v8 = 1;
LABEL_23:
    *a1 = v8;
    return result;
  }

  v9 = v3[4];
  if (!*(v9 + 16))
  {
LABEL_22:
    v8 = 2;
    goto LABEL_23;
  }

  v10 = v3[4];

  v11 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v12 & 1) == 0)
  {
    goto LABEL_21;
  }

  v13 = *(*(v9 + 56) + 8 * v11);

  if (!(v13 >> 62))
  {
    if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_9;
    }

    goto LABEL_21;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_21:

    goto LABEL_22;
  }

LABEL_9:
  if ((v13 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v13);
LABEL_12:

    v15 = sub_1C0518BC4();

    if (v15)
    {
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);

      v18 = sub_1C095DD6C();

      if (v18 == 1)
      {
        v8 = 1;
      }

      else
      {
        v8 = 2;
      }

      if (!v18)
      {
        v8 = 0;
      }

      goto LABEL_23;
    }

    goto LABEL_22;
  }

  if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(v13 + 32);

    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C058559C@<X0>(void (*a1)(uint64_t, uint64_t)@<X1>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  v8 = sub_1C095DD6C();

  if (v8 <= 2)
  {
    *a2 = v8;
    return result;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
    goto LABEL_17;
  }

  v11 = v5[4];

  v12 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_16:

    goto LABEL_17;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = sub_1C0518BC4();

  if (!v16)
  {
LABEL_17:
    *a2 = 3;
    return result;
  }

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  a1(v17, v18);
}

uint64_t sub_1C0585764@<X0>(void (*a1)(uint64_t, uint64_t)@<X1>, _BYTE *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  v8 = sub_1C095DD6C();

  if (v8 <= 3)
  {
    *a2 = v8;
    return result;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
    goto LABEL_17;
  }

  v11 = v5[4];

  v12 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v13 & 1) == 0)
  {
    goto LABEL_16;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_16:

    goto LABEL_17;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
    goto LABEL_16;
  }

LABEL_7:
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = sub_1C0518BC4();

  if (!v16)
  {
LABEL_17:
    *a2 = 4;
    return result;
  }

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  a1(v17, v18);
}

void *sub_1C0585924@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v19, v6, v7);
  v9 = v19;
  if (v19 != 14)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 14;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = v5[4];

  v12 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = sub_1C0518BC4();

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  a1(v17, v18);
}

void *sub_1C0585AE0@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v19, v6, v7);
  v9 = v19;
  if (v19 != 6)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 6;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = v5[4];

  v12 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = sub_1C0518BC4();

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  a1(v17, v18);
}

void *sub_1C0585C9C@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, char *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = v5[2];
  v7 = v5[3];

  result = (a1)(&v19, v6, v7);
  v9 = v19;
  if (v19 != 5)
  {
    goto LABEL_17;
  }

  v10 = v5[4];
  if (!*(v10 + 16))
  {
LABEL_16:
    v9 = 5;
LABEL_17:
    *a2 = v9;
    return result;
  }

  v11 = v5[4];

  v12 = sub_1C0516A8C(0x5664656E69666564, 0xEC00000065756C61);
  if ((v13 & 1) == 0)
  {
    goto LABEL_15;
  }

  v14 = *(*(v10 + 56) + 8 * v12);

  if (!(v14 >> 62))
  {
    if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  result = sub_1C095DCDC();
  if (!result)
  {
LABEL_15:

    goto LABEL_16;
  }

LABEL_6:
  if ((v14 & 0xC000000000000001) != 0)
  {
    MEMORY[0x1C68DDAD0](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v15 = *(v14 + 32);
  }

  v16 = sub_1C0518BC4();

  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = *(v16 + 16);
  v18 = *(v16 + 24);

  a1(v17, v18);
}

char *static UsoConversionUtils.convertUserDialogActToTasks(userDialogAct:)(uint64_t a1)
{
  v84 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  v2 = *(*(v84 - 8) + 64);
  v3 = MEMORY[0x1EEE9AC00](v84);
  v80 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v82 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6 - 8);
  v81 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v83 = &v77 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v77 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v78 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v77 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v77 - v21;
  v23 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  v24 = *(*(v23 - 8) + 64);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v77 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v87 = *(v27 - 8);
  v28 = *(v87 + 64);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v85 = (&v77 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v29);
  v79 = &v77 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v77 - v33;
  v91 = a1;
  sub_1C05149F8(a1, v22, &qword_1EBE17408, &unk_1C0993370);
  v35 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v88 = v36 + 48;
  v89 = v37;
  if (v37(v22, 1, v35) == 1)
  {
    sub_1C05145B4(v22, &qword_1EBE17408, &unk_1C0993370);
LABEL_5:
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v38 = v87;
    (*(v87 + 56))(&v26[*(v23 + 20)], 1, 1, v27);
    goto LABEL_6;
  }

  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C058D1B0(v22, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_5;
  }

  sub_1C058D220(v22, v26, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
  v38 = v87;
LABEL_6:
  sub_1C05149F8(&v26[*(v23 + 20)], v13, &qword_1EBE17400, &unk_1C0970CA0);
  v39 = *(v38 + 48);
  v40 = v39(v13, 1, v27);
  v90 = v39;
  if (v40 == 1)
  {
    v41 = MEMORY[0x1E69E7CC0];
    *v34 = MEMORY[0x1E69E7CC0];
    *(v34 + 1) = v41;
    *(v34 + 2) = v41;
    *(v34 + 3) = v41;
    v42 = &v34[*(v27 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    sub_1C058D1B0(v26, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    v43 = *(v27 + 36);
    v44 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v44 - 8) + 56))(&v34[v43], 1, 1, v44);
    v45 = v39(v13, 1, v27);
    v46 = v34;
    if (v45 != 1)
    {
      sub_1C05145B4(v13, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C058D1B0(v26, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    v46 = v34;
    sub_1C058D220(v13, v34, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  sub_1C05149F8(v91, v20, &qword_1EBE17408, &unk_1C0993370);
  v47 = v89(v20, 1, v35);
  v48 = v82;
  if (v47 == 1)
  {
    sub_1C05145B4(v20, &qword_1EBE17408, &unk_1C0993370);
    v49 = v84;
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v49 = v84;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C058D220(v20, v48, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
      goto LABEL_16;
    }

    sub_1C058D1B0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  }

  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v51 = *(v49 + 20);
  v52 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  (*(*(v52 - 8) + 56))(v48 + v51, 1, 1, v52);
  (*(v38 + 56))(v48 + *(v49 + 24), 1, 1, v27);
LABEL_16:
  v53 = &unk_1C0970CA0;
  v54 = v83;
  sub_1C05149F8(v48 + *(v49 + 24), v83, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C058D1B0(v48, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
  v55 = v90(v54, 1, v27);
  sub_1C05145B4(v54, &qword_1EBE17400, &unk_1C0970CA0);
  if (v55 == 1)
  {
    goto LABEL_29;
  }

  v56 = v78;
  sub_1C05149F8(v91, v78, &qword_1EBE17408, &unk_1C0993370);
  if (v89(v56, 1, v35) == 1)
  {
    sub_1C05145B4(v56, &qword_1EBE17408, &unk_1C0993370);
    v53 = v80;
    v57 = v81;
LABEL_23:
    v59 = v79;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v60 = *(v49 + 20);
    v61 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    (*(*(v61 - 8) + 56))(&v53[v60], 1, 1, v61);
    (*(v87 + 56))(&v53[*(v49 + 24)], 1, 1, v27);
    goto LABEL_24;
  }

  v58 = swift_getEnumCaseMultiPayload();
  v53 = v80;
  v57 = v81;
  if (v58 != 1)
  {
    sub_1C058D1B0(v56, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_23;
  }

  sub_1C058D220(v56, v80, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
  v59 = v79;
LABEL_24:
  sub_1C05149F8(&v53[*(v49 + 24)], v57, &qword_1EBE17400, &unk_1C0970CA0);
  v62 = v90;
  if (v90(v57, 1, v27) == 1)
  {
    v63 = MEMORY[0x1E69E7CC0];
    *v59 = MEMORY[0x1E69E7CC0];
    *(v59 + 1) = v63;
    *(v59 + 2) = v63;
    *(v59 + 3) = v63;
    v64 = &v59[*(v27 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    sub_1C058D1B0(v53, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
    sub_1C058D1B0(v46, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v65 = *(v27 + 36);
    v66 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v66 - 8) + 56))(&v59[v65], 1, 1, v66);
    if (v62(v57, 1, v27) != 1)
    {
      sub_1C05145B4(v57, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    sub_1C058D1B0(v53, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
    sub_1C058D1B0(v46, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C058D220(v57, v59, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  sub_1C058D220(v59, v46, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
LABEL_29:
  if (qword_1EBE154C8 != -1)
  {
    swift_once();
  }

  type metadata accessor for UsoGraphVocabManager();
  inited = swift_initStackObject();
  v68 = MEMORY[0x1E69E7CC0];
  *(inited + 16) = sub_1C051DE48(MEMORY[0x1E69E7CC0]);
  *(inited + 24) = sub_1C051DA50(v68);
  v69 = v85;
  sub_1C058D0FC(v46, v85, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);

  v70 = v86;
  v71 = sub_1C0798000(v69, inited);
  if (v70)
  {
    sub_1C058D1B0(v46, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    swift_setDeallocating();
    v72 = *(inited + 16);

    v73 = *(inited + 24);
  }

  else
  {
    v53 = _s12SiriOntology18UsoConversionUtilsO19convertGraphToTasks5graphSayAA0C4TaskCGAA0G0C_tFZ_0(v71);

    swift_setDeallocating();
    v74 = *(inited + 16);

    v75 = *(inited + 24);

    sub_1C058D1B0(v46, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  return v53;
}

uint64_t static UsoConversionUtils.convertUserDialogActToTasks(userDialogAct:)()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    v1 = v0;
    swift_unknownObjectRetain();
    v2 = [v1 task];
    USOSerializedGraph.usoSerializedGraphToUsoGraphSiriNl()();
    v4 = v3;

    if (v4)
    {
      v5 = _s12SiriOntology18UsoConversionUtilsO19convertGraphToTasks5graphSayAA0C4TaskCGAA0G0C_tFZ_0(v4);
      swift_unknownObjectRelease();

      return v5;
    }

    swift_unknownObjectRelease();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t static UsoConversionUtils.extractFirstEntityFromGraph(graph:)(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 32);
  result = swift_unownedRetainStrong();
  if (!v2)
  {
LABEL_39:
    __break(1u);
    return result;
  }

  swift_unownedRetain();

  *&v28[0] = a1;
  *(&v28[0] + 1) = v2;
  v27[0] = 0;
  v27[1] = 0;
  v30[0] = 0;
  v30[1] = 0;
  v4 = sub_1C0519A28(v28, v27, v30);

  swift_unownedRelease();
  v5 = _s12SiriOntology18UsoConversionUtilsO19convertGraphToTasks5graphSayAA0C4TaskCGAA0G0C_tFZ_0(a1);
  v6 = v5;
  if (v5 >> 62)
  {
    if (!sub_1C095DCDC())
    {
      goto LABEL_27;
    }
  }

  else if (!*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = v6 & 0xC000000000000001;
  if ((v6 & 0xC000000000000001) != 0)
  {
    v25 = MEMORY[0x1C68DDAD0](0, v6);
    v10 = *(v25 + 16);
    v9 = *(v25 + 24);

    swift_unknownObjectRelease();
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_32;
    }

    v8 = *(v6 + 32);
    v10 = *(v8 + 16);
    v9 = *(v8 + 24);
  }

  if (v10 == 0x627265566F6ELL && v9 == 0xE600000000000000)
  {
  }

  else
  {
    v11 = sub_1C095DF3C();

    if ((v11 & 1) == 0)
    {
      goto LABEL_27;
    }
  }

  if (v7)
  {
    v12 = MEMORY[0x1C68DDAD0](0, v6);
    goto LABEL_15;
  }

  if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_32:
    __break(1u);
LABEL_33:
    result = sub_1C095DCDC();
    if (result)
    {
      goto LABEL_22;
    }

    goto LABEL_34;
  }

  v12 = *(v6 + 32);

LABEL_15:
  v13 = *(v12 + 48);

  v14 = *(v13 + 16);

  if (v14 == 1)
  {

    if (v7)
    {
      v15 = MEMORY[0x1C68DDAD0](0, v6);
    }

    else
    {
      v15 = *(v6 + 32);
    }

    v16 = *(v15 + 48);

    sub_1C0581508(v16);
    v18 = v17;
    v4 = v19;

    if (!v18)
    {
      return 0;
    }

    v6 = v4 & 0xFFFFFFFFFFFFFF8;
    if (!(v4 >> 62))
    {
      result = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
LABEL_22:
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1C68DDAD0](0, v4);
          goto LABEL_25;
        }

        if (*(v6 + 16))
        {
          v20 = *(v4 + 32);

LABEL_25:

LABEL_29:
          v24 = sub_1C0518BC4();

          return v24;
        }

        __break(1u);
        goto LABEL_39;
      }

      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_27:

  if (*(v4 + 16) == 1)
  {
    v21 = *(v4 + 48);
    v22 = *(v4 + 80);
    v23 = *(v4 + 96);
    v28[2] = *(v4 + 64);
    v28[3] = v22;
    v29 = v23;
    v28[0] = *(v4 + 32);
    v28[1] = v21;
    sub_1C05149F8(v28, v27, &unk_1EBE17410, qword_1C0970CB0);

    v26 = v29;

    type metadata accessor for UsoValue();
    *(swift_allocObject() + 16) = v26;
    goto LABEL_29;
  }

LABEL_34:

  return 0;
}

uint64_t static UsoConversionUtils.arrayOfNonPrimitives(usoEntity:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CD0];
  v1 = sub_1C0586DA4(a1, &v3);

  return v1;
}

uint64_t sub_1C0586DA4(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  if (qword_1ED5D7CA0 != -1)
  {
LABEL_80:
    v57 = a1;
    swift_once();
    a1 = v57;
  }

  if (v3 == xmmword_1ED5D7CA8 && v4 == *(&xmmword_1ED5D7CA8 + 1))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = a1;
  if (sub_1C095DF3C())
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (qword_1ED5BDED8 != -1)
  {
    swift_once();
  }

  v7 = v3 == xmmword_1ED5BDEE0 && v4 == *(&xmmword_1ED5BDEE0 + 1);
  if (v7 || (sub_1C095DF3C() & 1) != 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1C0970C90;
  v74 = v9;
  *(v9 + 32) = v6;
  v10 = *(*(v6 + 48) + 24);
  swift_unownedRetainStrong();
  v11 = *(v10 + 56);

  v3 = a2;
  sub_1C051DFC8(v76, v11);
  v4 = *(v6 + 32);
  v65 = v4 + 64;
  v12 = 1 << *(v4 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v4 + 64);
  v64 = (v12 + 63) >> 6;

  v15 = 0;
  v16 = &qword_1EBE174E8;
  v17 = &qword_1C0970D80;
LABEL_19:
  v19 = v64;
  v18 = v65;
  do
  {
    if (!v14)
    {
      while (1)
      {
        v20 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          break;
        }

        if (v20 >= v19)
        {

          return v74;
        }

        v14 = *(v18 + 8 * v20);
        ++v15;
        if (v14)
        {
          v15 = v20;
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_80;
    }

LABEL_25:
    v21 = *(*(v4 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (v21 >> 62)
    {
      v23 = v16;
      v3 = v17;
      a1 = sub_1C095DCDC();
      v17 = v3;
      v19 = v64;
      v18 = v65;
      v22 = a1;
      v16 = v23;
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v14 &= v14 - 1;
  }

  while (!v22);
  v58 = v4;
  v24 = v21 & 0xC000000000000001;
  v62 = v21 + 32;
  v63 = v21 & 0xFFFFFFFFFFFFFF8;

  v25 = 0;
  v66 = v21 & 0xC000000000000001;
  v67 = v22;
  v59 = v21;
  v60 = a2;
  while (1)
  {
    if (v24)
    {
      result = MEMORY[0x1C68DDAD0](v25, v21);
      v3 = result;
      v26 = __OFADD__(v25++, 1);
      if (v26)
      {
        break;
      }

      goto LABEL_37;
    }

    if (v25 >= *(v63 + 16))
    {
      goto LABEL_84;
    }

    v3 = *(v62 + 8 * v25);

    v26 = __OFADD__(v25++, 1);
    if (v26)
    {
      break;
    }

LABEL_37:
    v27 = sub_1C0518BC4();
    if (v27)
    {
      v70 = v3;
      v71 = v25;
      v28 = *a2;
      v73 = v27;
      v29 = *(*(v27 + 48) + 24);
      v30 = *(swift_unownedRetainStrong() + 56);

      if (!*(v28 + 16) || (v31 = *(v28 + 40), v32 = sub_1C095DFDC(), v33 = -1 << *(v28 + 32), v34 = v32 & ~v33, ((*(v28 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0))
      {
LABEL_43:
        v36 = sub_1C0586DA4(v73, a2);
        v37 = v36;
        v38 = v36 >> 62;
        if (v36 >> 62)
        {
          v39 = sub_1C095DCDC();
        }

        else
        {
          v39 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v40 = v74 >> 62;
        if (v74 >> 62)
        {
          result = sub_1C095DCDC();
        }

        else
        {
          result = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v69 = v39;
        v26 = __OFADD__(result, v39);
        v41 = result + v39;
        if (v26)
        {
          goto LABEL_82;
        }

        v72 = v37;
        if (swift_isUniquelyReferenced_nonNull_bridgeObject())
        {
          if (!v40)
          {
            v42 = v74 & 0xFFFFFFFFFFFFFF8;
            if (v41 <= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              result = v74;
              goto LABEL_57;
            }

            goto LABEL_54;
          }
        }

        else if (!v40)
        {
          v42 = v74 & 0xFFFFFFFFFFFFFF8;
LABEL_54:
          v43 = *(v42 + 16);
LABEL_56:
          result = sub_1C095DC4C();
          v42 = result & 0xFFFFFFFFFFFFFF8;
LABEL_57:
          v44 = *(v42 + 16);
          v68 = v42;
          v45 = (*(v42 + 24) >> 1) - v44;
          v74 = result;
          if (v38)
          {
            v48 = sub_1C095DCDC();
            if (v48)
            {
              v49 = v48;
              result = sub_1C095DCDC();
              if (v45 < result)
              {
                goto LABEL_87;
              }

              v61 = result;
              if (v49 < 1)
              {
                goto LABEL_88;
              }

              v75 = v68 + 8 * v44 + 32;
              sub_1C058D308();
              v50 = 0;
              do
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E8, &qword_1C0970D80);
                v51 = v49;
                v52 = sub_1C058B410(v76, v50, v72);
                v54 = *v53;

                (v52)(v76, 0);
                v49 = v51;
                *(v75 + 8 * v50++) = v54;
              }

              while (v51 != v50);
              v21 = v59;
              a2 = v60;
              v24 = v66;
              v22 = v67;
              v3 = v70;
              v25 = v71;
              v47 = v68;
              v46 = v61;
LABEL_67:

              if (v46 < v69)
              {
                goto LABEL_83;
              }

              if (v46 > 0)
              {
                v55 = *(v47 + 16);
                v26 = __OFADD__(v55, v46);
                v56 = v55 + v46;
                if (v26)
                {
                  goto LABEL_85;
                }

                *(v47 + 16) = v56;
              }

LABEL_72:

              goto LABEL_30;
            }
          }

          else
          {
            v46 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v46)
            {
              if (v45 < v46)
              {
                goto LABEL_86;
              }

              v47 = v42;
              type metadata accessor for UsoEntity();
              swift_arrayInitWithCopy();
              v24 = v66;
              v22 = v67;
              v3 = v70;
              v25 = v71;
              goto LABEL_67;
            }
          }

          v3 = v70;
          v24 = v66;
          v22 = v67;
          v25 = v71;
          if (v69 > 0)
          {
            goto LABEL_83;
          }

          goto LABEL_72;
        }

        sub_1C095DCDC();
        goto LABEL_56;
      }

      v35 = ~v33;
      while (*(*(v28 + 48) + 8 * v34) != v30)
      {
        v34 = (v34 + 1) & v35;
        if (((*(v28 + 56 + ((v34 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v34) & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v25 = v71;
      if (v71 == v22)
      {
LABEL_77:

        v16 = &qword_1EBE174E8;
        v17 = &qword_1C0970D80;
        v4 = v58;
        goto LABEL_19;
      }
    }

    else
    {
LABEL_30:

      if (v25 == v22)
      {
        goto LABEL_77;
      }
    }
  }

  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
LABEL_86:
  __break(1u);
LABEL_87:
  __break(1u);
LABEL_88:
  __break(1u);
  return result;
}

unint64_t static UsoConversionUtils.convertToFloat(from:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C051D6F4();
  v5 = MEMORY[0x1E69E6158];
  v6 = sub_1C095DB8C();
  v27 = a1;
  v28 = a2;
  v25 = 46;
  v26 = 0xE100000000000000;
  v7 = sub_1C095DB8C();
  if (v6)
  {
    if (v7)
    {
      v27 = 44;
      v28 = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v7);
      v21 = &v27;
      v8 = sub_1C058B30C(sub_1C058D088, &v19, a1, a2);
      if ((v9 & 1) == 0)
      {
        v10 = v8;
        v27 = 46;
        v28 = 0xE100000000000000;
        MEMORY[0x1EEE9AC00](v8);
        v21 = &v27;
        v11 = sub_1C058B30C(sub_1C058D36C, &v19, a1, a2);
        if ((v12 & 1) == 0 && v11 >> 14 < v10 >> 14)
        {
          v27 = a1;
          v28 = a2;
          v25 = 46;
          v26 = 0xE100000000000000;
          v23 = 0;
          v24 = 0xE000000000000000;
          v21 = v4;
          v22 = v4;
          v19 = v5;
          v20 = v4;
          v27 = sub_1C095DB6C();
          v28 = v13;
          v25 = 44;
          v26 = 0xE100000000000000;
          v23 = 46;
          v24 = 0xE100000000000000;
          v21 = v4;
          v22 = v4;
          v19 = v5;
          v20 = v4;
          a1 = sub_1C095DB6C();
          a2 = v14;

          goto LABEL_14;
        }
      }

      v27 = a1;
      v28 = a2;
      v25 = 44;
      v26 = 0xE100000000000000;
      v23 = 0;
      v24 = 0xE000000000000000;
      v21 = v4;
      v22 = v4;
      goto LABEL_13;
    }

    v27 = a1;
    v28 = a2;
    v25 = 44;
    v26 = 0xE100000000000000;
    v23 = 46;
    v24 = 0xE100000000000000;
  }

  else
  {
    if ((v7 & 1) == 0)
    {

      goto LABEL_14;
    }

    v27 = a1;
    v28 = a2;
    v25 = 44;
    v26 = 0xE100000000000000;
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  v21 = v4;
  v22 = v4;
LABEL_13:
  v19 = v5;
  v20 = v4;
  a1 = sub_1C095DB6C();
  a2 = v15;
LABEL_14:
  LODWORD(v27) = 0;
  v16 = sub_1C058B52C(a1, a2);

  v17 = v27;
  LOBYTE(v27) = !v16;
  if (!v16)
  {
    v17 = 0;
  }

  return v17 | (!v16 << 32);
}

BOOL static UsoConversionUtils.isDecimalPercentage(_:)(uint64_t a1)
{
  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_Decimal))
  {
    sub_1C058521C(&v4);
    v1 = v4;

    return !v1;
  }

  else
  {
    return 0;
  }
}

float static UsoConversionUtils.preciseRound(_:_:)(float a1)
{
  MEMORY[0x1C68DD980](10.0);
  sub_1C095D18C();
  v2 = sub_1C095DAFC();
  sub_1C095DA3C();
  v4 = v3;

  return roundf(v4 * a1) / v4;
}

unint64_t static UsoConversionUtils.resolveEntityAsPercent(entity:smallAmount:largeAmount:)(uint64_t a1, float a2, float a3)
{
  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_Number))
  {
    sub_1C058339C(&v16);
    if (v16 == 15)
    {

      goto LABEL_4;
    }

    if (v16 <= 4u)
    {
      if (v16 > 1u)
      {
        if (v16 != 2 && v16 != 3)
        {
          goto LABEL_30;
        }
      }

      else if (v16)
      {

        LOBYTE(v13) = 0;
        LODWORD(v7) = 1094713344;
        return v7 | (v13 << 32);
      }
    }

    else if (v16 <= 9u)
    {
      if (v16 != 5 && v16 != 6)
      {
        goto LABEL_30;
      }
    }

    else if (v16 != 10 && v16 != 12 && v16 != 13)
    {
LABEL_30:
      v7 = static UsoConversionUtils.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(a1, 0.0, 100.0, a2, a3);

      v13 = HIDWORD(v7) & 1;
      return v7 | (v13 << 32);
    }

    LOBYTE(v13) = 0;
    LODWORD(v7) = 1120403456;
    return v7 | (v13 << 32);
  }

LABEL_4:
  v6 = static UsoConversionUtils.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(a1, 0.0, 100.0, a2, a3);
  LODWORD(v7) = v6;
  if ((v6 & 0x100000000) != 0)
  {
    LOBYTE(v13) = 1;
    return v7 | (v13 << 32);
  }

  v8 = *&v6;
  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_Decimal))
  {
    sub_1C058521C(&v17);
    v9 = v17;

    if (!v9)
    {
      goto LABEL_32;
    }
  }

  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_MultipliedNumber))
  {
    v10 = sub_1C0583270(0x696C7069746C756DLL, 0xEA00000000007265, sub_1C06029F0);
    if (!v10)
    {
LABEL_29:

      goto LABEL_33;
    }

    v11 = *(v10 + 16);

    if (!sub_1C0581370(v12, type metadata accessor for UsoEntity_common_Decimal))
    {
LABEL_12:

      goto LABEL_29;
    }

    sub_1C058521C(&v18);
    if (v18)
    {

      goto LABEL_12;
    }

LABEL_32:
    v8 = v8 * 100.0;
  }

LABEL_33:
  LOBYTE(v13) = 0;
  v14 = 100.0;
  if (v8 <= 100.0)
  {
    v14 = v8;
  }

  if (v8 < 0.0)
  {
    v14 = 0.0;
  }

  *&v7 = v14;
  return v7 | (v13 << 32);
}

unint64_t static UsoConversionUtils.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(uint64_t a1, float a2, float a3, float a4, float a5)
{
  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_Number))
  {
    v10 = sub_1C058339C(v46);
    if (v46[0] != 15)
    {
      switch(v46[0])
      {
        case 1:

          v14 = 0;
          v16 = 12.0;
          goto LABEL_53;
        case 2:

          v14 = 0;
          v16 = 1000.0;
          goto LABEL_53;
        case 3:

          v14 = 0;
          v16 = 1.0e12;
          goto LABEL_53;
        case 4:
          v40 = a3 * 0.5;
          v38 = a2 * 0.5;
          goto LABEL_48;
        case 5:

          v14 = 0;
          v16 = 1000000.0;
          goto LABEL_53;
        case 6:

          v14 = 0;
          v16 = 100000.0;
          goto LABEL_53;
        case 7:
          goto LABEL_51;
        case 8:
          v38 = a3 * a4;
          v39 = 1.0 - a4;
          goto LABEL_47;
        case 9:

          v14 = 0;
          v16 = a3;
          goto LABEL_53;
        case 0xA:

          v14 = 0;
          v16 = 10000.0;
          goto LABEL_53;
        case 0xB:
          v38 = a3 * a5;
          v39 = 1.0 - a5;
LABEL_47:
          v40 = v39 * a2;
LABEL_48:
          v41 = v38 + v40;
          MEMORY[0x1C68DD980](v10, 10.0);
          sub_1C095D18C();
          v42 = sub_1C095DAFC();
          sub_1C095DA3C();
          v44 = v43;

          v14 = 0;
          v15 = roundf(v41 * v44) / v44;
          goto LABEL_49;
        case 0xC:

          v14 = 0;
          v16 = 100.0;
          goto LABEL_53;
        case 0xD:

          v14 = 0;
          v16 = 10000000.0;
          goto LABEL_53;
        case 0xE:

          v14 = 0;
          v16 = a2;
          goto LABEL_53;
        default:

          v14 = 0;
          v16 = 1000000000.0;
          goto LABEL_53;
      }
    }
  }

  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_Integer))
  {
    v11 = sub_1C0581588(0x5672656765746E69, 0xEC00000065756C61);
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      v14 = 0;
      v15 = v11;
LABEL_49:
      v16 = v15;
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  if (sub_1C0581370(a1, type metadata accessor for UsoEntity_common_Decimal))
  {
    sub_1C058521C(v48);
    if (!v48[0])
    {

      v14 = 0;
      v16 = 0.01;
      goto LABEL_53;
    }

    v17 = sub_1C058170C(0x6163696E6F6E6163, 0xEF676E697274536CLL);
    if (v18)
    {
      v47 = 0.0;
      v19 = sub_1C058B52C(v17, v18);

      if (v19)
      {
        v16 = v47;
      }

      else
      {
        v16 = 0.0;
      }

      v14 = !v19;
      goto LABEL_53;
    }

LABEL_51:

    goto LABEL_52;
  }

  if (!sub_1C0581370(a1, type metadata accessor for UsoEntity_common_MixedFraction))
  {
    if (!sub_1C0581370(a1, type metadata accessor for UsoEntity_common_MultipliedNumber))
    {
      goto LABEL_52;
    }

    v22 = sub_1C0583270(0x65756C6176, 0xE500000000000000, sub_1C06029F0);
    if (v22)
    {
      v23 = v22;
      v24 = sub_1C0583270(0x696C7069746C756DLL, 0xEA00000000007265, sub_1C06029F0);
      if (v24)
      {
        v25 = *(v24 + 16);

        v27 = static UsoConversionUtils.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(v26, a2, a3, 0.1, 0.3);

        if ((v27 & 0x100000000) == 0)
        {
          v28 = *(v23 + 16);

          v30 = static UsoConversionUtils.resolveEntityAsFloat(entity:minValue:maxValue:smallAmount:largeAmount:)(v29, a2, a3, 0.1, 0.3);

          if ((v30 & 0x100000000) == 0)
          {
            v14 = 0;
            v15 = *&v27 * *&v30;
            goto LABEL_49;
          }

LABEL_52:
          v16 = 0.0;
          v14 = 1;
          goto LABEL_53;
        }
      }

      else
      {
      }
    }

    goto LABEL_51;
  }

  v20 = sub_1C0581588(0xD000000000000010, 0x80000001C09CC420);
  v14 = v21;
  if (v21)
  {
    v16 = 0.0;
  }

  else
  {
    if (!v20)
    {
      goto LABEL_51;
    }

    v31 = v20;
    v32 = sub_1C0581588(0x6F746172656D756ELL, 0xEE0065756C615672);
    if (v33)
    {
      v32 = 1.0;
    }

    v16 = v32 / v31;
  }

  v34 = sub_1C0581588(0x6C6156656C6F6877, 0xEA00000000006575);
  v36 = v35;

  if ((v36 & 1) == 0)
  {
    v37 = v16;
    if (v14)
    {
      v37 = 0.0;
    }

    v16 = v37 + v34;
    v14 = 0;
  }

LABEL_53:
  v48[1] = v14 & 1;
  return LODWORD(v16) | ((v14 & 1) << 32);
}

uint64_t Siri_Nl_Core_Protocol_UUID.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  v4 = a2 + *(type metadata accessor for Siri_Nl_Core_Protocol_UUID() + 28);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  *(a2 + 8) = bswap64(sub_1C095D1BC());
  v6 = bswap64(v5);
  v7 = sub_1C095D1DC();
  result = (*(*(v7 - 8) + 8))(a1, v7);
  *a2 = v6;
  return result;
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.taskId.getter@<X0>(void *a1@<X8>)
{
  v192 = a1;
  v186 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  v1 = *(*(v186 - 8) + 64);
  MEMORY[0x1EEE9AC00](v186);
  v191 = &v155 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  v3 = *(*(v184 - 8) + 64);
  MEMORY[0x1EEE9AC00](v184);
  v190 = &v155 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  v5 = *(*(v182 - 8) + 64);
  MEMORY[0x1EEE9AC00](v182);
  v189 = &v155 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v180 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0);
  v7 = *(*(v180 - 8) + 64);
  MEMORY[0x1EEE9AC00](v180);
  v188 = &v155 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v178 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  v9 = *(*(v178 - 8) + 64);
  MEMORY[0x1EEE9AC00](v178);
  v187 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  v11 = *(*(v177 - 8) + 64);
  MEMORY[0x1EEE9AC00](v177);
  v185 = &v155 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  v13 = *(*(v176 - 8) + 64);
  MEMORY[0x1EEE9AC00](v176);
  v183 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  v15 = *(*(v175 - 8) + 64);
  MEMORY[0x1EEE9AC00](v175);
  v181 = &v155 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  v17 = *(*(v174 - 8) + 64);
  MEMORY[0x1EEE9AC00](v174);
  v179 = &v155 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v19 - 8);
  v164 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v173 = &v155 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v163 = &v155 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v172 = &v155 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v162 = &v155 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v171 = &v155 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v161 = &v155 - v34;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v170 = &v155 - v36;
  v37 = MEMORY[0x1EEE9AC00](v35);
  v160 = &v155 - v38;
  v39 = MEMORY[0x1EEE9AC00](v37);
  v169 = &v155 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v159 = &v155 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v168 = &v155 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  v158 = &v155 - v46;
  v47 = MEMORY[0x1EEE9AC00](v45);
  v167 = &v155 - v48;
  v49 = MEMORY[0x1EEE9AC00](v47);
  v157 = &v155 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v165 = &v155 - v52;
  v53 = MEMORY[0x1EEE9AC00](v51);
  v156 = &v155 - v54;
  v55 = MEMORY[0x1EEE9AC00](v53);
  v57 = &v155 - v56;
  v58 = MEMORY[0x1EEE9AC00](v55);
  v155 = &v155 - v59;
  MEMORY[0x1EEE9AC00](v58);
  v61 = &v155 - v60;
  v62 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62);
  v166 = &v155 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v66 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65 - 8);
  v68 = &v155 - v67;
  v69 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v70 = *(v69 - 8);
  v71 = *(v70 + 64);
  v72 = MEMORY[0x1EEE9AC00](v69);
  v74 = &v155 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v72);
  v76 = &v155 - v75;
  sub_1C05149F8(v193, v68, &qword_1EBE17408, &unk_1C0993370);
  if ((*(v70 + 48))(v68, 1, v69) == 1)
  {
    sub_1C05145B4(v68, &qword_1EBE17408, &unk_1C0993370);
    v77 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
    return (*(*(v77 - 8) + 56))(v192, 1, 1, v77);
  }

  else
  {
    sub_1C058D220(v68, v76, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C058D0FC(v76, v74, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v79 = v76;
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v81 = v183;
        sub_1C058D220(v74, v183, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
        v104 = *(v176 + 20);
        v105 = v167;
        sub_1C05149F8(v81 + v104, v167, &qword_1EBE17420, &qword_1C0993380);
        v84 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
        v85 = *(v84 - 8);
        v86 = *(v85 + 48);
        v106 = v86(v105, 1, v84);
        sub_1C05145B4(v105, &qword_1EBE17420, &qword_1C0993380);
        if (v106 == 1)
        {
          v88 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued;
          goto LABEL_23;
        }

        v124 = v158;
        sub_1C05149F8(v81 + v104, v158, &qword_1EBE17420, &qword_1C0993380);
        v139 = v86(v124, 1, v84);
        v126 = v192;
        if (v139 == 1)
        {
          *v192 = 0;
          *(v126 + 8) = 0;
          *(v126 + 16) = 0;
          *(v126 + 24) = 1;
          v140 = v126 + *(v84 + 28);
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v128 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued;
          goto LABEL_47;
        }

        v153 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued;
        goto LABEL_65;
      case 2u:
        v193 = v76;
        v89 = v166;
        sub_1C058D220(v74, v166, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
        v90 = *(v62 + 20);
        sub_1C05149F8(v89 + v90, v61, &qword_1EBE17420, &qword_1C0993380);
        v91 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
        v92 = *(v91 - 8);
        v93 = *(v92 + 48);
        v94 = v93(v61, 1, v91);
        sub_1C05145B4(v61, &qword_1EBE17420, &qword_1C0993380);
        if (v94 == 1)
        {
          sub_1C058D1B0(v89, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
          sub_1C058D1B0(v193, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
          return (*(v92 + 56))(v192, 1, 1, v91);
        }

        else
        {
          v129 = v155;
          sub_1C05149F8(v89 + v90, v155, &qword_1EBE17420, &qword_1C0993380);
          v130 = v93(v129, 1, v91);
          v131 = v192;
          if (v130 == 1)
          {
            *v192 = 0;
            *(v131 + 8) = 0;
            *(v131 + 16) = 0;
            *(v131 + 24) = 1;
            v132 = v131 + *(v91 + 28);
            _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
            sub_1C058D1B0(v89, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
            sub_1C058D1B0(v193, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            if (v93(v129, 1, v91) != 1)
            {
              sub_1C05145B4(v129, &qword_1EBE17420, &qword_1C0993380);
            }
          }

          else
          {
            sub_1C058D1B0(v89, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
            sub_1C058D1B0(v193, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            sub_1C058D220(v129, v131, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
          }

          return (*(v92 + 56))(v131, 0, 1, v91);
        }

      case 3u:
        v81 = v187;
        sub_1C058D220(v74, v187, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
        v110 = *(v178 + 20);
        v111 = v169;
        sub_1C05149F8(v81 + v110, v169, &qword_1EBE17420, &qword_1C0993380);
        v84 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
        v85 = *(v84 - 8);
        v86 = *(v85 + 48);
        v112 = v86(v111, 1, v84);
        sub_1C05145B4(v111, &qword_1EBE17420, &qword_1C0993380);
        if (v112 == 1)
        {
          v88 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected;
          goto LABEL_23;
        }

        v124 = v160;
        sub_1C05149F8(v81 + v110, v160, &qword_1EBE17420, &qword_1C0993380);
        v143 = v86(v124, 1, v84);
        v126 = v192;
        if (v143 == 1)
        {
          *v192 = 0;
          *(v126 + 8) = 0;
          *(v126 + 16) = 0;
          *(v126 + 24) = 1;
          v144 = v126 + *(v84 + 28);
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v128 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected;
          goto LABEL_47;
        }

        v153 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected;
        goto LABEL_65;
      case 4u:
        v81 = v185;
        sub_1C058D220(v74, v185, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
        v113 = *(v177 + 20);
        v114 = v168;
        sub_1C05149F8(v81 + v113, v168, &qword_1EBE17420, &qword_1C0993380);
        v84 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
        v85 = *(v84 - 8);
        v86 = *(v85 + 48);
        v115 = v86(v114, 1, v84);
        sub_1C05145B4(v114, &qword_1EBE17420, &qword_1C0993380);
        if (v115 == 1)
        {
          v88 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated;
          goto LABEL_23;
        }

        v124 = v159;
        sub_1C05149F8(v81 + v113, v159, &qword_1EBE17420, &qword_1C0993380);
        v145 = v86(v124, 1, v84);
        v126 = v192;
        if (v145 == 1)
        {
          *v192 = 0;
          *(v126 + 8) = 0;
          *(v126 + 16) = 0;
          *(v126 + 24) = 1;
          v146 = v126 + *(v84 + 28);
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v128 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated;
          goto LABEL_47;
        }

        v153 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated;
        goto LABEL_65;
      case 5u:
        v81 = v181;
        sub_1C058D220(v74, v181, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
        v107 = *(v175 + 20);
        v108 = v165;
        sub_1C05149F8(v81 + v107, v165, &qword_1EBE17420, &qword_1C0993380);
        v84 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
        v85 = *(v84 - 8);
        v86 = *(v85 + 48);
        v109 = v86(v108, 1, v84);
        sub_1C05145B4(v108, &qword_1EBE17420, &qword_1C0993380);
        if (v109 == 1)
        {
          v88 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled;
          goto LABEL_23;
        }

        v124 = v157;
        sub_1C05149F8(v81 + v107, v157, &qword_1EBE17420, &qword_1C0993380);
        v141 = v86(v124, 1, v84);
        v126 = v192;
        if (v141 == 1)
        {
          *v192 = 0;
          *(v126 + 8) = 0;
          *(v126 + 16) = 0;
          *(v126 + 24) = 1;
          v142 = v126 + *(v84 + 28);
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v128 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled;
          goto LABEL_47;
        }

        v153 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled;
        goto LABEL_65;
      case 6u:
        v193 = v76;
        v120 = v191;
        sub_1C058D220(v74, v191, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
        v121 = *(v186 + 20);
        v122 = v173;
        sub_1C05149F8(v120 + v121, v173, &qword_1EBE17420, &qword_1C0993380);
        v84 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
        v85 = *(v84 - 8);
        v86 = *(v85 + 48);
        v123 = v86(v122, 1, v84);
        sub_1C05145B4(v122, &qword_1EBE17420, &qword_1C0993380);
        if (v123 == 1)
        {
          sub_1C058D1B0(v120, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
          v119 = v193;
          goto LABEL_24;
        }

        v124 = v164;
        sub_1C05149F8(v120 + v121, v164, &qword_1EBE17420, &qword_1C0993380);
        v150 = v86(v124, 1, v84);
        v126 = v192;
        v151 = v193;
        if (v150 == 1)
        {
          *v192 = 0;
          *(v126 + 8) = 0;
          *(v126 + 16) = 0;
          *(v126 + 24) = 1;
          v152 = v126 + *(v84 + 28);
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          sub_1C058D1B0(v120, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
          v149 = v151;
          goto LABEL_48;
        }

        sub_1C058D1B0(v120, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
        v154 = v151;
        goto LABEL_66;
      case 7u:
        v193 = v76;
        v98 = v179;
        sub_1C058D220(v74, v179, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
        v99 = *(v174 + 20);
        sub_1C05149F8(v98 + v99, v57, &qword_1EBE17420, &qword_1C0993380);
        v100 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
        v101 = *(v100 - 8);
        v102 = *(v101 + 48);
        v103 = v102(v57, 1, v100);
        sub_1C05145B4(v57, &qword_1EBE17420, &qword_1C0993380);
        if (v103 == 1)
        {
          sub_1C058D1B0(v98, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
          sub_1C058D1B0(v193, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
          return (*(v101 + 56))(v192, 1, 1, v100);
        }

        else
        {
          v135 = v156;
          sub_1C05149F8(v98 + v99, v156, &qword_1EBE17420, &qword_1C0993380);
          v136 = v102(v135, 1, v100);
          v137 = v192;
          if (v136 == 1)
          {
            *v192 = 0;
            *(v137 + 8) = 0;
            *(v137 + 16) = 0;
            *(v137 + 24) = 1;
            v138 = v137 + *(v100 + 28);
            _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
            sub_1C058D1B0(v98, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
            sub_1C058D1B0(v193, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            if (v102(v135, 1, v100) != 1)
            {
              sub_1C05145B4(v135, &qword_1EBE17420, &qword_1C0993380);
            }
          }

          else
          {
            sub_1C058D1B0(v98, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
            sub_1C058D1B0(v193, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            sub_1C058D220(v135, v137, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
          }

          return (*(v101 + 56))(v137, 0, 1, v100);
        }

      case 8u:
        v81 = v190;
        sub_1C058D220(v74, v190, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
        v116 = *(v184 + 20);
        v117 = v172;
        sub_1C05149F8(v81 + v116, v172, &qword_1EBE17420, &qword_1C0993380);
        v84 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
        v85 = *(v84 - 8);
        v86 = *(v85 + 48);
        v118 = v86(v117, 1, v84);
        sub_1C05145B4(v117, &qword_1EBE17420, &qword_1C0993380);
        if (v118 == 1)
        {
          v88 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed;
          goto LABEL_23;
        }

        v124 = v163;
        sub_1C05149F8(v81 + v116, v163, &qword_1EBE17420, &qword_1C0993380);
        v147 = v86(v124, 1, v84);
        v126 = v192;
        if (v147 == 1)
        {
          *v192 = 0;
          *(v126 + 8) = 0;
          *(v126 + 16) = 0;
          *(v126 + 24) = 1;
          v148 = v126 + *(v84 + 28);
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v128 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed;
          goto LABEL_47;
        }

        v153 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed;
        goto LABEL_65;
      case 9u:
        v81 = v189;
        sub_1C058D220(v74, v189, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
        v82 = *(v182 + 20);
        v83 = v171;
        sub_1C05149F8(v81 + v82, v171, &qword_1EBE17420, &qword_1C0993380);
        v84 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
        v85 = *(v84 - 8);
        v86 = *(v85 + 48);
        v87 = v86(v83, 1, v84);
        sub_1C05145B4(v83, &qword_1EBE17420, &qword_1C0993380);
        if (v87 == 1)
        {
          v88 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause;
          goto LABEL_23;
        }

        v124 = v162;
        sub_1C05149F8(v81 + v82, v162, &qword_1EBE17420, &qword_1C0993380);
        v125 = v86(v124, 1, v84);
        v126 = v192;
        if (v125 == 1)
        {
          *v192 = 0;
          *(v126 + 8) = 0;
          *(v126 + 16) = 0;
          *(v126 + 24) = 1;
          v127 = v126 + *(v84 + 28);
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          v128 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause;
          goto LABEL_47;
        }

        v153 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause;
        goto LABEL_65;
      case 0xAu:
        v81 = v188;
        sub_1C058D220(v74, v188, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
        v95 = *(v180 + 24);
        v96 = v170;
        sub_1C05149F8(v81 + v95, v170, &qword_1EBE17420, &qword_1C0993380);
        v84 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
        v85 = *(v84 - 8);
        v86 = *(v85 + 48);
        v97 = v86(v96, 1, v84);
        sub_1C05145B4(v96, &qword_1EBE17420, &qword_1C0993380);
        if (v97 == 1)
        {
          v88 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded;
LABEL_23:
          sub_1C058D1B0(v81, v88);
          v119 = v79;
LABEL_24:
          sub_1C058D1B0(v119, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
          result = (*(v85 + 56))(v192, 1, 1, v84);
        }

        else
        {
          v124 = v161;
          sub_1C05149F8(v81 + v95, v161, &qword_1EBE17420, &qword_1C0993380);
          v133 = v86(v124, 1, v84);
          v126 = v192;
          if (v133 == 1)
          {
            *v192 = 0;
            *(v126 + 8) = 0;
            *(v126 + 16) = 0;
            *(v126 + 24) = 1;
            v134 = v126 + *(v84 + 28);
            _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
            v128 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded;
LABEL_47:
            sub_1C058D1B0(v81, v128);
            v149 = v79;
LABEL_48:
            sub_1C058D1B0(v149, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            if (v86(v124, 1, v84) != 1)
            {
              sub_1C05145B4(v124, &qword_1EBE17420, &qword_1C0993380);
            }
          }

          else
          {
            v153 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded;
LABEL_65:
            sub_1C058D1B0(v81, v153);
            v154 = v79;
LABEL_66:
            sub_1C058D1B0(v154, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            sub_1C058D220(v124, v126, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
          }

          result = (*(v85 + 56))(v126, 0, 1, v84);
        }

        break;
      default:
        sub_1C058D1B0(v76, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        v80 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
        (*(*(v80 - 8) + 56))(v192, 1, 1, v80);
        return sub_1C058D1B0(v74, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    }
  }

  return result;
}

id Siri_Nl_Core_Protocol_UserDialogAct.convertToUserDialogAct()()
{
  v1 = v0;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v45 = *(v2 - 8);
  v46 = v2;
  v3 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v42 - v9;
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v47 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v42 - v16;
  v18 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v42 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v42 - v24;
  sub_1C05149F8(v1, v17, &qword_1EBE17408, &unk_1C0993370);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1C05145B4(v17, &qword_1EBE17408, &unk_1C0993370);
    return 0;
  }

  sub_1C058D220(v17, v25, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  sub_1C058D0FC(v25, v23, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1C058D1B0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v26 = v23;
LABEL_7:
    sub_1C058D1B0(v26, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    return 0;
  }

  v27 = v23;
  v28 = v47;
  sub_1C058D220(v27, v47, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
  v29 = *(v11 + 20);
  sub_1C05149F8(v28 + v29, v10, &qword_1EBE17400, &unk_1C0970CA0);
  v30 = v46;
  v31 = *(v45 + 48);
  v32 = v31(v10, 1, v46);
  sub_1C05145B4(v10, &qword_1EBE17400, &unk_1C0970CA0);
  if (v32 == 1)
  {
    sub_1C058D1B0(v28, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    v26 = v25;
    goto LABEL_7;
  }

  v34 = v43;
  sub_1C05149F8(v28 + v29, v43, &qword_1EBE17400, &unk_1C0970CA0);
  if (v31(v34, 1, v30) == 1)
  {
    v35 = MEMORY[0x1E69E7CC0];
    v36 = v44;
    *v44 = MEMORY[0x1E69E7CC0];
    *(v36 + 1) = v35;
    *(v36 + 2) = v35;
    *(v36 + 3) = v35;
    v37 = &v36[*(v30 + 32)];
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    v38 = *(v30 + 36);
    v39 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
    (*(*(v39 - 8) + 56))(&v36[v38], 1, 1, v39);
    if (v31(v34, 1, v30) != 1)
    {
      sub_1C05145B4(v34, &qword_1EBE17400, &unk_1C0970CA0);
    }
  }

  else
  {
    v36 = v44;
    sub_1C058D220(v34, v44, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  }

  v40 = _sSo18USOSerializedGraphC12SiriOntologyE9fromProto05protoB0AbC0c21_Nl_Core_Protocol_UsoB0V_tFZ_0(v36);
  sub_1C058D1B0(v36, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v41 = [objc_allocWithZone(SIRINLUUserStatedTask) initWithTask_];

  sub_1C058D1B0(v28, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
  sub_1C058D1B0(v25, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  return v41;
}

void __swiftcall Siri_Nl_Core_Protocol_UserParse.convertToUserParse()(SIRINLUUserParse *__return_ptr retstr)
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v89 = *(v2 - 8);
  v90 = v2;
  v3 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v84 = (&v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v101 = (&v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v92 = &v83 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v83 - v13;
  v99 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  v14 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v105 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v83 - v18;
  v20 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v102 = &v83 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v104 = &v83 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v27 = *(*(v26 - 8) + 64);
  v28 = MEMORY[0x1EEE9AC00](v26 - 8);
  v83 = &v83 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v85 = &v83 - v30;
  v88 = sub_1C095D1DC();
  v87 = *(v88 - 8);
  v31 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v88);
  v33 = &v83 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v38 = &v83 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v1;
  v39 = *v1;
  v107 = MEMORY[0x1E69E7CC0];
  v40 = *(v39 + 16);
  v86 = v33;
  if (v40)
  {
    v41 = v39 + ((*(v36 + 80) + 32) & ~*(v36 + 80));
    v42 = (v21 + 48);
    v106 = *(v36 + 72);
    v95 = v5;
    v96 = (v6 + 48);
    v93 = MEMORY[0x1E69E7CC0];
    v94 = v19;
    v43 = v102;
    v44 = v104;
    v97 = v42;
    v98 = v20;
    while (1)
    {
      sub_1C058D0FC(v41, v38, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
      sub_1C05149F8(v38, v19, &qword_1EBE17408, &unk_1C0993370);
      if ((*v42)(v19, 1, v20) == 1)
      {
        sub_1C05145B4(v19, &qword_1EBE17408, &unk_1C0993370);
      }

      else
      {
        sub_1C058D220(v19, v44, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        sub_1C058D0FC(v44, v43, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        if (swift_getEnumCaseMultiPayload())
        {
          sub_1C058D1B0(v44, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
          sub_1C058D1B0(v43, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        }

        else
        {
          v45 = v105;
          sub_1C058D220(v43, v105, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
          v46 = v95;
          v47 = v100;
          v48 = *(v99 + 20);
          sub_1C05149F8(v45 + v48, v100, &qword_1EBE17400, &unk_1C0970CA0);
          v103 = *v96;
          LODWORD(v45) = v103(v47, 1, v46);
          sub_1C05145B4(v47, &qword_1EBE17400, &unk_1C0970CA0);
          if (v45 != 1)
          {
            v49 = v92;
            sub_1C05149F8(v105 + v48, v92, &qword_1EBE17400, &unk_1C0970CA0);
            v50 = v103(v49, 1, v46);
            v51 = v46;
            v52 = v101;
            if (v50 == 1)
            {
              v53 = MEMORY[0x1E69E7CC0];
              *v101 = MEMORY[0x1E69E7CC0];
              v52[1] = v53;
              v52[2] = v53;
              v52[3] = v53;
              v54 = v52 + *(v51 + 32);
              _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
              v55 = *(v51 + 36);
              v56 = type metadata accessor for Siri_Nl_Core_Protocol_SemVer();
              v57 = v101 + v55;
              v58 = v92;
              v52 = v101;
              (*(*(v56 - 8) + 56))(v57, 1, 1, v56);
              v59 = v103(v58, 1, v51);
              v42 = v97;
              v19 = v94;
              if (v59 != 1)
              {
                sub_1C05145B4(v58, &qword_1EBE17400, &unk_1C0970CA0);
              }
            }

            else
            {
              sub_1C058D220(v49, v101, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
              v42 = v97;
              v19 = v94;
            }

            v60 = _sSo18USOSerializedGraphC12SiriOntologyE9fromProto05protoB0AbC0c21_Nl_Core_Protocol_UsoB0V_tFZ_0(v52);
            sub_1C058D1B0(v52, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
            [objc_allocWithZone(SIRINLUUserStatedTask) initWithTask_];

            sub_1C058D1B0(v105, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
            sub_1C058D1B0(v104, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
            v61 = sub_1C058D1B0(v38, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
            MEMORY[0x1C68DD810](v61);
            if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1C095D9AC();
            }

            sub_1C095D9DC();
            v93 = v107;
            v20 = v98;
            v43 = v102;
            v44 = v104;
            goto LABEL_10;
          }

          sub_1C058D1B0(v105, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
          v44 = v104;
          sub_1C058D1B0(v104, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
          v42 = v97;
          v20 = v98;
          v43 = v102;
          v19 = v94;
        }
      }

      sub_1C058D1B0(v38, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
LABEL_10:
      v41 += v106;
      if (!--v40)
      {
        goto LABEL_20;
      }
    }
  }

  v93 = MEMORY[0x1E69E7CC0];
LABEL_20:
  v62 = v91;
  v63 = v91[1];
  v64 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0) + 32);
  v65 = v85;
  sub_1C05149F8(v62 + v64, v85, &qword_1EBE17420, &qword_1C0993380);
  v66 = v90;
  v67 = *(v89 + 48);
  v68 = v67(v65, 1, v90);
  sub_1C05145B4(v65, &qword_1EBE17420, &qword_1C0993380);
  if (v68 == 1)
  {
    v69 = v86;
    sub_1C095D1CC();
    v70 = v88;
    v71 = v87;
  }

  else
  {
    v72 = v83;
    sub_1C05149F8(v62 + v64, v83, &qword_1EBE17420, &qword_1C0993380);
    v73 = v67(v72, 1, v66);
    v71 = v87;
    if (v73 == 1)
    {
      v74 = v84;
      *v84 = 0;
      v74[1] = 0;
      v74[2] = 0;
      *(v74 + 24) = 1;
      v75 = v74 + *(v66 + 28);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v76 = v67(v72, 1, v66);
      v70 = v88;
      if (v76 != 1)
      {
        sub_1C05145B4(v72, &qword_1EBE17420, &qword_1C0993380);
      }
    }

    else
    {
      v74 = v84;
      sub_1C058D220(v72, v84, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      v70 = v88;
    }

    v69 = v86;
    Siri_Nl_Core_Protocol_UUID.uuid.getter();
    sub_1C058D1B0(v74, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  }

  v77 = *(v62 + 2);
  v78 = *(v62 + 3);
  v79 = objc_allocWithZone(SIRINLUUserParse);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17428, &qword_1C0970CC8);
  v80 = sub_1C095D98C();

  v81 = sub_1C095D19C();
  v82 = sub_1C095D74C();
  [v79 initWithUserDialogActs:v80 probability:v81 nsUUID:v82 parserId:v63];

  (*(v71 + 8))(v69, v70);
}

SIRINLURequestID __swiftcall Siri_Nl_Core_Protocol_RequestID.convertToRequestId()()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = objc_allocWithZone(SIRINLURequestID);
  v6 = sub_1C095D74C();
  v7 = sub_1C095D74C();
  v8 = [v5 initWithIdAsString:v6 connectionID:v7];

  v12 = v8;
  result._connectionID = v11;
  result._nluRequestId = v10;
  result._idAsString = v9;
  result.super.isa = v12;
  return result;
}

void __swiftcall Siri_Nl_Core_Protocol_NluResponse.convertToResponse()(SIRINLUResponse *__return_ptr retstr)
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  v49 = *(v2 - 8);
  v3 = *(v49 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_RequestID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17430, &qword_1C0970CD0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x1EEE9AC00](v11 - 8);
  v48 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48 - v15;
  v17 = *(type metadata accessor for Siri_Nl_Core_Protocol_NluResponse(0) + 28);
  v50 = v1;
  v18 = v1 + v17;
  v19 = v6;
  sub_1C05149F8(v18, v16, &qword_1EBE17430, &qword_1C0970CD0);
  v20 = *(v7 + 48);
  v21 = v20(v16, 1, v19);
  sub_1C05145B4(v16, &qword_1EBE17430, &qword_1C0970CD0);
  if (v21 == 1)
  {
    v22 = objc_allocWithZone(SIRINLURequestID);
    v23 = sub_1C095D74C();
    v24 = sub_1C095D74C();
    v25 = [v22 initWithIdAsString:v23 connectionID:v24];

    v26 = v50;
  }

  else
  {
    v26 = v50;
    v27 = v48;
    sub_1C05149F8(v50 + v17, v48, &qword_1EBE17430, &qword_1C0970CD0);
    if (v20(v27, 1, v19) == 1)
    {
      *v10 = 0;
      *(v10 + 1) = 0xE000000000000000;
      *(v10 + 2) = 0;
      *(v10 + 3) = 0xE000000000000000;
      v28 = &v10[*(v19 + 24)];
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v29 = v19;
      v30 = *(v19 + 28);
      v31 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
      (*(*(v31 - 8) + 56))(&v10[v30], 1, 1, v31);
      if (v20(v27, 1, v29) != 1)
      {
        sub_1C05145B4(v27, &qword_1EBE17430, &qword_1C0970CD0);
      }
    }

    else
    {
      sub_1C058D220(v27, v10, type metadata accessor for Siri_Nl_Core_Protocol_RequestID);
    }

    v32 = *v10;
    v33 = *(v10 + 1);
    v34 = *(v10 + 2);
    v35 = *(v10 + 3);
    v36 = objc_allocWithZone(SIRINLURequestID);
    v37 = sub_1C095D74C();
    v38 = sub_1C095D74C();
    v25 = [v36 initWithIdAsString:v37 connectionID:v38];

    sub_1C058D1B0(v10, type metadata accessor for Siri_Nl_Core_Protocol_RequestID);
  }

  v39 = *v26;
  v51 = MEMORY[0x1E69E7CC0];
  v40 = *(v39 + 16);
  if (v40)
  {
    v41 = v39 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v42 = *(v49 + 72);
    do
    {
      sub_1C058D0FC(v41, v5, type metadata accessor for Siri_Nl_Core_Protocol_UserParse);
      Siri_Nl_Core_Protocol_UserParse.convertToUserParse()(v43);
      v44 = sub_1C058D1B0(v5, type metadata accessor for Siri_Nl_Core_Protocol_UserParse);
      MEMORY[0x1C68DD810](v44);
      if (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v45 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C095D9AC();
      }

      sub_1C095D9DC();
      v41 += v42;
      --v40;
    }

    while (v40);
  }

  v46 = objc_allocWithZone(SIRINLUResponse);
  sub_1C058D164();
  v47 = sub_1C095D98C();

  [v46 initWithRequestId:v25 parses:v47];
}

uint64_t SIRINLUUserDialogAct.taskId.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UUID();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

unint64_t sub_1C058B30C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3;
  }

  v7 = 7;
  if (((a4 >> 60) & ((a3 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v8 = v7 | (v6 << 16);
  while (1)
  {
    if (v8 < 0x4000)
    {
      return 0;
    }

    v8 = sub_1C095D7DC();
    v13[0] = sub_1C095D8BC();
    v13[1] = v9;
    v10 = a1(v13);
    if (v4)
    {
      break;
    }

    v11 = v10;

    if (v11)
    {
      return v8;
    }
  }

  return v8;
}

uint64_t (*sub_1C058B410(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1C68DDAD0](a2, a3);
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
    *v3 = v5;
    return sub_1C058B490;
  }

  __break(1u);
  return result;
}

void *sub_1C058B498(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + 8 * a2);

    return v6;
  }

LABEL_8:
  __break(1u);
  return result;
}

BOOL sub_1C058B52C(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v3 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v3 >= 0x21 || ((0x100003E01uLL >> v3) & 1) == 0)
      {
LABEL_10:
        v5 = _swift_stdlib_strtof_clocale();
        return v5 && *v5 == 0;
      }

      return 0;
    }
  }

  sub_1C095DC0C();
  if (!v2)
  {
    return v7;
  }

  return v4;
}

unint64_t sub_1C058B660(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1C095DD5C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1C0516A8C(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1C058B754(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17440, &unk_1C09789D0);
    v3 = sub_1C095DD5C();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_1C057EAFC(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C058B84C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17458, &unk_1C0970D00);
    v3 = sub_1C095DD5C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1C0516A8C(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C058B950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17450, &qword_1C0970CF8);
    v3 = sub_1C095DD5C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C0516A8C(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C058BA64(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174D0, &qword_1C0970D58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174D8, &unk_1C0970D60);
    v8 = sub_1C095DD5C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1C05149F8(v10, v6, &qword_1EBE174D0, &qword_1C0970D58);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1C0516A8C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues(0);
      result = sub_1C058D220(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Com_Apple_Siri_Product_Proto_StatefulValues);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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

unint64_t sub_1C058BC4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174C0, &qword_1C0970D48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174C8, &qword_1C0970D50);
    v8 = sub_1C095DD5C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1C05149F8(v10, v6, &qword_1EBE174C0, &qword_1C0970D48);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1C0516A8C(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos(0);
      result = sub_1C058D220(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Com_Apple_Siri_Product_Proto_MultiCardinalStateCombos);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
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

unint64_t sub_1C058BE34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174B0, &qword_1C0970D38);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174B8, &qword_1C0970D40);
    v8 = sub_1C095DD5C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_1C05149F8(v10, v6, &qword_1EBE174B0, &qword_1C0970D38);
      v12 = *v6;
      result = sub_1C057EAB4(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 4 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList(0);
      result = sub_1C058D220(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for Com_Apple_Siri_Product_Proto_IntegerList);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
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

unint64_t sub_1C058C00C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174A8, &qword_1C0970D30);
    v3 = sub_1C095DD5C();
    for (i = (a1 + 36); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C057EAB4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C058C0E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17498, &unk_1C0970D20);
    v3 = sub_1C095DD5C();

    for (i = (a1 + 72); ; i += 6)
    {
      v5 = *(i - 5);
      v6 = *(i - 4);
      v8 = *(i - 3);
      v7 = *(i - 2);
      v10 = *(i - 1);
      v9 = *i;

      result = sub_1C0516A8C(v5, v6);
      if (v12)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v3[6] + 16 * result);
      *v13 = v5;
      v13[1] = v6;
      v14 = (v3[7] + 32 * result);
      *v14 = v8;
      v14[1] = v7;
      v14[2] = v10;
      v14[3] = v9;
      v15 = v3[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v3[2] = v17;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1C058C208(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE172D0, &qword_1C0970AC0);
    v3 = sub_1C095DD5C();
    for (i = (a1 + 40); ; i += 4)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1C0514E38(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 4 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void *sub_1C058C2FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17480, &qword_1C0970A70);
  v3 = sub_1C095DD5C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_1C057EAB4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 4 * v9) = v4;
    v12 = v3[7] + 16 * v9;
    *v12 = v5;
    *(v12 + 8) = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v5 = *(v11 - 2);
    v17 = *v11;

    v9 = sub_1C057EAB4(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C058C430(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1C095DD5C();
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_1C057EAB4(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 56);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 4 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 2);
    v17 = *v12;

    v10 = sub_1C057EAB4(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C058C538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17470, &qword_1C0982390);
  v3 = sub_1C095DD5C();
  v4 = *(a1 + 32);
  v12 = *(a1 + 40);
  result = sub_1C0514E38(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v12;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;

    swift_unownedRetain();
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v7 - 1);
    v12 = *v7;
    result = sub_1C0514E38(v4);
    v7 = (v7 + 24);
    if (v11)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void *sub_1C058C658(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17228, &qword_1C0970A00);
  v3 = sub_1C095DD5C();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1C0514E38(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = a1 + 7;
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1C0514E38(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s12SiriOntology18UsoConversionUtilsO19convertGraphToTasks5graphSayAA0C4TaskCGAA0G0C_tFZ_0(uint64_t a1)
{
  v113 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v2 = *(a1 + 32);
  swift_unownedRetainStrong();
  if (!v2)
  {
    goto LABEL_65;
  }

  swift_unownedRetain();

  *&v108 = a1;
  *(&v108 + 1) = v2;
  v103 = 0uLL;
  v98 = 0uLL;
  v3 = sub_1C0519A28(&v108, &v103, &v98);

  swift_unownedRelease();
  v94 = *(v3 + 16);
  if (!v94)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v4 = 0;
  v93 = v3 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v88 = v3;
  while (1)
  {
    v95 = v4;
    v6 = (v93 + 80 * v4);
    v7 = v6[1];
    v8 = v6[2];
    v9 = v6[3];
    v112 = v6[4];
    v10 = *v6;
    v110 = v8;
    v111 = v9;
    v108 = v10;
    v109 = v7;
    v11 = v112;
    sub_1C05149F8(&v108, &v103, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C05149F8(&v108, &v103, &unk_1EBE17410, qword_1C0970CB0);

    swift_unownedRelease();
    v13 = *(&v109 + 1);
    v12 = v110;

    sub_1C0514A70(&v108);
    if (qword_1ED5BD000 != -1)
    {
      swift_once();
    }

    if (v13 == qword_1ED5BD008 && v12 == unk_1ED5BD010)
    {
    }

    else
    {
      v14 = sub_1C095DF3C();

      if ((v14 & 1) == 0)
      {
        goto LABEL_26;
      }
    }

    sub_1C05149F8(&v108, &v103, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v108);
    swift_unownedRetainStrong();
    v15 = *(*(&v11 + 1) + 64);
    v16 = *(*(&v11 + 1) + 72);

    swift_unownedRelease();
    *&v103 = v15;
    *(&v103 + 1) = v16;
    *&v98 = 14906;
    *(&v98 + 1) = 0xE200000000000000;
    sub_1C051D6F4();
    v17 = sub_1C095DB3C();

    if (v17[2] != 2)
    {

LABEL_26:
      sub_1C05145B4(&v108, &unk_1EBE17410, qword_1C0970CB0);
      goto LABEL_55;
    }

    v18 = v17[5];
    *&v103 = v17[4];
    *(&v103 + 1) = v18;

    v19 = sub_1C095D8DC();
    if (v17[2] < 2uLL)
    {
      goto LABEL_64;
    }

    v91 = v20;
    v92 = v19;
    v22 = v17[6];
    v21 = v17[7];

    *&v103 = v22;
    *(&v103 + 1) = v21;
    v23 = sub_1C095D8DC();
    v89 = v24;
    v90 = v23;
    v25 = MEMORY[0x1E69E7CC0];
    v102 = sub_1C05178E0(MEMORY[0x1E69E7CC0], &qword_1EBE17490, &qword_1C0970AD0);
    swift_beginAccess();
    v26 = *(v11 + 16);
    v27 = *(v26 + 16);
    if (v27)
    {
      v28 = *(v11 + 16);

      swift_beginAccess();
      v29 = v27 - 1;
      for (i = 32; ; i += 64)
      {
        v31 = *(v26 + i + 48);
        v33 = *(v26 + i);
        v32 = *(v26 + i + 16);
        v105 = *(v26 + i + 32);
        v106 = v31;
        v103 = v33;
        v104 = v32;
        v34 = v33;
        swift_unownedRetainStrong();
        v35 = *(*(&v11 + 1) + 56);
        sub_1C0514AC4(&v103, &v98);

        if (v34 == v35 && (v36 = *(v11 + 24), *(v36 + 16)) && (v37 = sub_1C0514E38(*(&v103 + 1)), (v38 & 1) != 0))
        {
          v39 = *(*(v36 + 56) + 8 * v37);

          swift_unownedRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1C05198E0(0, v25[2] + 1, 1, v25);
          }

          v41 = v25[2];
          v40 = v25[3];
          if (v41 >= v40 >> 1)
          {
            v25 = sub_1C05198E0((v40 > 1), v41 + 1, 1, v25);
          }

          v100 = v105;
          v101 = v106;
          v42 = v103;
          v98 = v103;
          v99 = v104;
          v25[2] = v41 + 1;
          v43 = &v25[10 * v41];
          v44 = v99;
          v45 = v101;
          *(v43 + 4) = v100;
          *(v43 + 5) = v45;
          *(v43 + 2) = v42;
          *(v43 + 3) = v44;
          v43[12] = v11;
          v43[13] = v39;
          if (!v29)
          {
LABEL_27:

            break;
          }
        }

        else
        {
          sub_1C0514A70(&v103);
          if (!v29)
          {
            goto LABEL_27;
          }
        }

        --v29;
      }
    }

    v46 = sub_1C0519EEC(v25);

    v47 = *(v46 + 16);
    if (v47)
    {
      break;
    }

LABEL_52:

    v83 = v102;
    type metadata accessor for UsoTask();
    v84 = swift_allocObject();
    v84[2] = v92;
    v84[3] = v91;
    v84[4] = v90;
    v84[5] = v89;
    v84[6] = v83;

    MEMORY[0x1C68DD810](v85);
    v3 = v88;
    if (*((v113 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v113 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v86 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_1C095D9AC();
    }

    sub_1C095D9DC();
    sub_1C05145B4(&v108, &unk_1EBE17410, qword_1C0970CB0);

    v5 = v113;

LABEL_55:
    v4 = v95 + 1;
    if (v95 + 1 == v94)
    {

      return v5;
    }

    if (v4 >= *(v3 + 16))
    {
      goto LABEL_63;
    }
  }

  v48 = 0;
  v96 = v46;
  v97 = v47 - 1;
  v49 = 32;
  do
  {
    v50 = *(v46 + v49 + 16);
    v51 = *(v46 + v49 + 32);
    v52 = *(v46 + v49 + 48);
    v107 = *(v46 + v49 + 64);
    v53 = *(v46 + v49);
    v105 = v51;
    v106 = v52;
    v103 = v53;
    v104 = v50;
    v54 = v107;
    sub_1C05149F8(&v103, &v98, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C05149F8(&v103, &v98, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v103);
    type metadata accessor for UsoValue();
    v55 = swift_allocObject();
    *(v55 + 16) = v54;
    sub_1C05149F8(&v103, &v98, &unk_1EBE17410, qword_1C0970CB0);

    swift_unownedRelease();
    v57 = *(&v104 + 1);
    v56 = v105;

    sub_1C0514A70(&v103);
    v58 = v102;
    if (!*(v102 + 16) || (sub_1C0516A8C(v57, v56), (v59 & 1) == 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE174E0, &unk_1C0975370);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1C0970C90;
      *(v64 + 32) = v55;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v98 = v58;
      v102 = 0x8000000000000000;
      v67 = sub_1C0516A8C(v57, v56);
      v68 = *(v58 + 16);
      v69 = (v66 & 1) == 0;
      v70 = v68 + v69;
      if (__OFADD__(v68, v69))
      {
        goto LABEL_61;
      }

      v71 = v66;
      if (*(v58 + 24) < v70)
      {
        sub_1C051A220(v70, isUniquelyReferenced_nonNull_native);
        v72 = sub_1C0516A8C(v57, v56);
        if ((v71 & 1) != (v73 & 1))
        {
          goto LABEL_66;
        }

        v67 = v72;
        if ((v71 & 1) == 0)
        {
          goto LABEL_46;
        }

LABEL_44:

        v74 = v98;
        v75 = *(v98 + 56);
        v76 = *(v75 + 8 * v67);
        *(v75 + 8 * v67) = v64;

        sub_1C05145B4(&v103, &unk_1EBE17410, qword_1C0970CB0);
        v102 = v74;
LABEL_48:
        v46 = v96;
        goto LABEL_49;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        if (v66)
        {
          goto LABEL_44;
        }
      }

      else
      {
        sub_1C066FC80();
        if (v71)
        {
          goto LABEL_44;
        }
      }

LABEL_46:
      v77 = v98;
      *(v98 + 8 * (v67 >> 6) + 64) |= 1 << v67;
      v78 = (v77[6] + 16 * v67);
      *v78 = v57;
      v78[1] = v56;
      *(v77[7] + 8 * v67) = v64;

      sub_1C05145B4(&v103, &unk_1EBE17410, qword_1C0970CB0);
      v79 = v77[2];
      v80 = __OFADD__(v79, 1);
      v81 = v79 + 1;
      if (v80)
      {
        goto LABEL_62;
      }

      v77[2] = v81;
      v102 = v77;
      goto LABEL_48;
    }

    v61 = sub_1C07A8CC0(&v98, v57, v56);
    if (*v60)
    {
      v62 = v60;

      MEMORY[0x1C68DD810](v63);
      if (*((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v82 = *((*v62 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_1C095D9AC();
      }

      sub_1C095D9DC();
    }

    (v61)(&v98, 0);

    sub_1C05145B4(&v103, &unk_1EBE17410, qword_1C0970CB0);

LABEL_49:
    if (v97 == v48)
    {
      goto LABEL_52;
    }

    ++v48;
    v49 += 80;
  }

  while (v48 < *(v46 + 16));
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

uint64_t sub_1C058D0A4(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1C095DF3C() & 1;
  }
}

uint64_t sub_1C058D0FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1C058D164()
{
  result = qword_1EBE17438;
  if (!qword_1EBE17438)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE17438);
  }

  return result;
}

uint64_t sub_1C058D1B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C058D220(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

_BYTE *sub_1C058D288@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    v8 = *(v2 + 16);
    result = _swift_stdlib_strtof_clocale();
    if (result)
    {
      v9 = *result == 0;
    }

    else
    {
      v9 = 0;
    }

    *a2 = v9;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t sub_1C058D308()
{
  result = qword_1EBE174F0;
  if (!qword_1EBE174F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE174E8, &qword_1C0970D80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE174F0);
  }

  return result;
}

uint64_t UtteranceAlignment.init(asrHypothesisIndex:spans:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t static UtteranceAlignment.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_1C055B00C(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1C058D3C8()
{
  if (*v0)
  {
    result = 0x736E617073;
  }

  else
  {
    result = 0xD000000000000012;
  }

  *v0;
  return result;
}

uint64_t sub_1C058D404@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001C09CC440 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x736E617073 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1C095DF3C();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1C058D500(uint64_t a1)
{
  v2 = sub_1C058D748();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C058D53C(uint64_t a1)
{
  v2 = sub_1C058D748();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UtteranceAlignment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17520, &qword_1C0970DB0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v12 - v7;
  v9 = *v1;
  v12[0] = *(v1 + 1);
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C058D748();
  sub_1C095E05C();
  v14 = 0;
  sub_1C095DEEC();
  if (!v2)
  {
    v12[1] = v12[0];
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17530, &qword_1C0970DB8);
    sub_1C058E52C(&qword_1EBE17538, sub_1C058D79C);
    sub_1C095DECC();
  }

  return (*(v5 + 8))(v8, v4);
}

unint64_t sub_1C058D748()
{
  result = qword_1EBE17528;
  if (!qword_1EBE17528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17528);
  }

  return result;
}

unint64_t sub_1C058D79C()
{
  result = qword_1EBE17540;
  if (!qword_1EBE17540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17540);
  }

  return result;
}

uint64_t UtteranceAlignment.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1C095E01C();

  return sub_1C056D100(a1, v4);
}

uint64_t UtteranceAlignment.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1C095DFEC();
  sub_1C095E01C();
  sub_1C056D100(v4, v2);
  return sub_1C095E03C();
}

uint64_t UtteranceAlignment.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17548, &qword_1C0970DC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C058D748();
  sub_1C095E04C();
  if (!v2)
  {
    v16 = 0;
    v11 = sub_1C095DE2C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17530, &qword_1C0970DB8);
    v15 = 1;
    sub_1C058E52C(&qword_1EBE17550, sub_1C058E5A4);
    sub_1C095DDFC();
    (*(v6 + 8))(v9, v5);
    v12 = v14[1];
    *a2 = v11;
    *(a2 + 8) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C058DAA4()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1C095DFEC();
  sub_1C095E01C();
  sub_1C056D100(v4, v2);
  return sub_1C095E03C();
}

uint64_t sub_1C058DB04(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 1);
  sub_1C095E01C();

  return sub_1C056D100(a1, v4);
}

uint64_t sub_1C058DB54()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1C095DFEC();
  sub_1C095E01C();
  sub_1C056D100(v4, v2);
  return sub_1C095E03C();
}

uint64_t sub_1C058DBE0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    return sub_1C055B00C(*(a1 + 8), *(a2 + 8));
  }

  else
  {
    return 0;
  }
}

uint64_t UtteranceSpan.init(startIndex:endIndex:startUnicodeScalarIndex:endUnicodeScalarIndex:startMilliSeconds:endMilliSeconds:)@<X0>(uint64_t result@<X0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, _DWORD *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

unint64_t sub_1C058DC48()
{
  v1 = *v0;
  v2 = 0x646E497472617473;
  v3 = 0xD000000000000015;
  v4 = 0x696C6C694D646E65;
  if (v1 == 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000017;
  if (v1 == 1)
  {
    v5 = 0x7865646E49646E65;
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

uint64_t sub_1C058DD20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C058EC48(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C058DD54(uint64_t a1)
{
  v2 = sub_1C058E640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C058DD90(uint64_t a1)
{
  v2 = sub_1C058E640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t UtteranceSpan.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17560, &qword_1C0970DC8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v14 - v7;
  v10 = *v1;
  v9 = v1[1];
  v11 = v1[3];
  v14[6] = v1[2];
  v14[7] = v9;
  LODWORD(v7) = v1[5];
  v14[4] = v1[4];
  v14[5] = v11;
  v14[3] = v7;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C058E640();
  sub_1C095E05C();
  v20 = 0;
  sub_1C095DEEC();
  if (v2)
  {
    return (*(v5 + 8))(v8, v4);
  }

  v19 = 1;
  sub_1C095DEEC();
  v18 = 2;
  sub_1C095DEEC();
  v17 = 3;
  sub_1C095DEEC();
  v16 = 4;
  sub_1C095DEDC();
  v15 = 5;
  sub_1C095DEDC();
  return (*(v5 + 8))(v8, v4);
}

uint64_t UtteranceSpan.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  return sub_1C095E01C();
}

uint64_t UtteranceSpan.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1C095DFEC();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  return sub_1C095E03C();
}

uint64_t UtteranceSpan.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17570, &qword_1C0970DD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C058E640();
  sub_1C095E04C();
  if (!v2)
  {
    v25 = 0;
    v11 = sub_1C095DE2C();
    v24 = 1;
    v12 = sub_1C095DE2C();
    v23 = 2;
    v19 = sub_1C095DE2C();
    v22 = 3;
    v18 = sub_1C095DE2C();
    v21 = 4;
    v17 = sub_1C095DE0C();
    v20 = 5;
    v16 = sub_1C095DE0C();
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v12;
    v14 = v18;
    a2[2] = v19;
    a2[3] = v14;
    v15 = v16;
    a2[4] = v17;
    a2[5] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1C058E340()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1C095DFEC();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  return sub_1C095E03C();
}

uint64_t sub_1C058E3E4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  return sub_1C095E01C();
}

uint64_t sub_1C058E458()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_1C095DFEC();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  sub_1C095E01C();
  return sub_1C095E03C();
}

uint64_t sub_1C058E52C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE17530, &qword_1C0970DB8);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C058E5A4()
{
  result = qword_1EBE17558;
  if (!qword_1EBE17558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17558);
  }

  return result;
}

BOOL _s12SiriOntology13UtteranceSpanV2eeoiySbAC_ACtFZ_0(int32x4_t *a1, int32x4_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vceqq_s32(*a1, *a2))) & 1) != 0 && a1[1].i32[0] == a2[1].i32[0])
  {
    return a1[1].i32[1] == a2[1].i32[1];
  }

  return result;
}

unint64_t sub_1C058E640()
{
  result = qword_1EBE17568;
  if (!qword_1EBE17568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17568);
  }

  return result;
}

unint64_t sub_1C058E698()
{
  result = qword_1EBE17578;
  if (!qword_1EBE17578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17578);
  }

  return result;
}

unint64_t sub_1C058E6F0()
{
  result = qword_1EBE17580;
  if (!qword_1EBE17580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17580);
  }

  return result;
}

uint64_t sub_1C058E744(uint64_t a1, int a2)
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

uint64_t sub_1C058E78C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy24_4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UtteranceSpan(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for UtteranceSpan(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for UtteranceSpan.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UtteranceSpan.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for UtteranceAlignment.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

unint64_t sub_1C058EA3C()
{
  result = qword_1EBE17588;
  if (!qword_1EBE17588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17588);
  }

  return result;
}

unint64_t sub_1C058EA94()
{
  result = qword_1EBE17590;
  if (!qword_1EBE17590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17590);
  }

  return result;
}

unint64_t sub_1C058EAEC()
{
  result = qword_1EBE17598;
  if (!qword_1EBE17598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE17598);
  }

  return result;
}

unint64_t sub_1C058EB44()
{
  result = qword_1EBE175A0;
  if (!qword_1EBE175A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE175A0);
  }

  return result;
}

unint64_t sub_1C058EB9C()
{
  result = qword_1EBE175A8;
  if (!qword_1EBE175A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE175A8);
  }

  return result;
}

unint64_t sub_1C058EBF4()
{
  result = qword_1EBE175B0;
  if (!qword_1EBE175B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE175B0);
  }

  return result;
}

uint64_t sub_1C058EC48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E497472617473 && a2 == 0xEA00000000007865;
  if (v4 || (sub_1C095DF3C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7865646E49646E65 && a2 == 0xE800000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001C09CC460 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C09CC480 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001C09CC4A0 == a2 || (sub_1C095DF3C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696C6C694D646E65 && a2 == 0xEF73646E6F636553)
  {

    return 5;
  }

  else
  {
    v6 = sub_1C095DF3C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1C058EE60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "angeQualifier_MiddleOf";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0xD000000000000027;
    }

    else
    {
      v5 = 0xD00000000000002CLL;
    }

    if (v3 == 2)
    {
      v4 = "andConfirmation_DontDelete";
    }

    else
    {
      v4 = "andConfirmation_ShowAll";
    }
  }

  else
  {
    if (a1)
    {
      v4 = "andConfirmation_DeleteOnce";
    }

    else
    {
      v4 = "angeQualifier_MiddleOf";
    }

    v5 = 0xD00000000000002ALL;
  }

  v6 = "andConfirmation_DontDelete";
  v7 = 0xD000000000000027;
  if (a2 != 2)
  {
    v7 = 0xD00000000000002CLL;
    v6 = "andConfirmation_ShowAll";
  }

  if (a2)
  {
    v2 = "andConfirmation_DeleteOnce";
  }

  if (a2 <= 1u)
  {
    v8 = 0xD00000000000002ALL;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v6;
  }

  if (v5 == v8 && (v4 | 0x8000000000000000) == (v9 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C095DF3C();
  }

  return v10 & 1;
}

uint64_t sub_1C058EF70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000023;
  v3 = "ntQualifier_EndOf";
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = "angeQualifier_HalfOf";
    v12 = 0xD000000000000026;
    if (a1 == 6)
    {
      v12 = 0xD000000000000023;
    }

    else
    {
      v11 = "angeQualifier_AllOf";
    }

    v13 = "angeQualifier_EndOf";
    v14 = 0xD000000000000029;
    if (a1 != 4)
    {
      v14 = 0xD000000000000024;
      v13 = "angeQualifier_LaterPartOf";
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = "angeQualifier_StartOf";
    v6 = 0xD00000000000002BLL;
    if (a1 != 2)
    {
      v6 = 0xD000000000000023;
      v5 = "angeQualifier_EarlierPartOf";
    }

    v7 = "angeQualifier_RestOf";
    v8 = 0xD000000000000025;
    if (!a1)
    {
      v8 = 0xD000000000000024;
      v7 = "ntQualifier_EndOf";
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "angeQualifier_HalfOf";
      }

      else
      {
        v3 = "angeQualifier_AllOf";
        v2 = 0xD000000000000026;
      }
    }

    else if (a2 == 4)
    {
      v3 = "angeQualifier_EndOf";
      v2 = 0xD000000000000029;
    }

    else
    {
      v3 = "angeQualifier_LaterPartOf";
      v2 = 0xD000000000000024;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "angeQualifier_StartOf";
      v2 = 0xD00000000000002BLL;
    }

    else
    {
      v3 = "angeQualifier_EarlierPartOf";
    }
  }

  else if (a2)
  {
    v3 = "angeQualifier_RestOf";
    v2 = 0xD000000000000025;
  }

  else
  {
    v2 = 0xD000000000000024;
  }

  if (v9 == v2 && (v10 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1C095DF3C();
  }

  return v15 & 1;
}

uint64_t sub_1C058F16C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000023;
  v3 = "tionTrigger_TextMessageReceived";
  if (a1 > 3u)
  {
    v4 = "ntQualifier_Minimum";
    if (a1 == 6)
    {
      v10 = 0xD000000000000023;
    }

    else
    {
      v10 = 0xD000000000000021;
    }

    if (a1 != 6)
    {
      v4 = "ntQualifier_Average";
    }

    v6 = "ntQualifier_Possible";
    if (a1 != 4)
    {
      v6 = "ntQualifier_Maximum";
    }

    v8 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v9 = 0xD000000000000023;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = "ntQualifier_Remaining";
    if (a1 == 2)
    {
      v5 = 0xD000000000000023;
    }

    else
    {
      v5 = 0xD000000000000024;
    }

    if (a1 != 2)
    {
      v4 = "ntQualifier_StartOf";
    }

    v6 = "ntQualifier_Total";
    v7 = 0xD000000000000025;
    if (!a1)
    {
      v7 = 0xD000000000000021;
      v6 = "tionTrigger_TextMessageReceived";
    }

    v8 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }
  }

  if (v8)
  {
    v11 = v6;
  }

  else
  {
    v11 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v3 = "ntQualifier_Minimum";
        goto LABEL_40;
      }

      v3 = "ntQualifier_Average";
      goto LABEL_39;
    }

    if (a2 == 4)
    {
      v3 = "ntQualifier_Possible";
    }

    else
    {
      v3 = "ntQualifier_Maximum";
    }
  }

  else
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v3 = "ntQualifier_Total";
        v2 = 0xD000000000000025;
        goto LABEL_40;
      }

LABEL_39:
      v2 = 0xD000000000000021;
      goto LABEL_40;
    }

    if (a2 == 2)
    {
      v3 = "ntQualifier_Remaining";
    }

    else
    {
      v3 = "ntQualifier_StartOf";
      v2 = 0xD000000000000024;
    }
  }

LABEL_40:
  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C095DF3C();
  }

  return v12 & 1;
}

uint64_t sub_1C058F348(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000028;
  v3 = "ntUnitType_SpeedUnit";
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = "tionTrigger_TextMessageSent";
    v14 = "tionTrigger_FaceTimeSent";
    v15 = 0xD00000000000002CLL;
    if (a1 != 8)
    {
      v15 = 0xD00000000000002FLL;
      v14 = "tionTrigger_FaceTimeReceived";
    }

    if (a1 == 7)
    {
      v15 = 0xD000000000000028;
    }

    else
    {
      v13 = v14;
    }

    v16 = "tionTrigger_CommunicationSent";
    v17 = 0xD00000000000002BLL;
    if (a1 == 5)
    {
      v17 = 0xD000000000000028;
    }

    else
    {
      v16 = "tionTrigger_CallReceived";
    }

    if (a1 <= 6u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v15;
    }

    if (v4 <= 6)
    {
      v12 = v16;
    }

    else
    {
      v12 = v13;
    }
  }

  else
  {
    v5 = 0xD000000000000031;
    v6 = "tionTrigger_CallSent";
    v7 = 0xD000000000000025;
    v8 = "tionTrigger_EmailSent";
    v9 = 0xD00000000000002DLL;
    if (a1 == 3)
    {
      v9 = 0xD000000000000029;
    }

    else
    {
      v8 = "tionTrigger_EmailReceived";
    }

    if (a1 != 2)
    {
      v7 = v9;
      v6 = v8;
    }

    v10 = "unicationReceived";
    if (a1)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v10 = "ntUnitType_SpeedUnit";
    }

    if (a1 <= 1u)
    {
      v11 = v5;
    }

    else
    {
      v11 = v7;
    }

    if (v4 <= 1)
    {
      v12 = v10;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v3 = "tionTrigger_CommunicationSent";
      }

      else
      {
        v3 = "tionTrigger_CallReceived";
        v2 = 0xD00000000000002BLL;
      }
    }

    else if (a2 == 7)
    {
      v3 = "tionTrigger_TextMessageSent";
    }

    else if (a2 == 8)
    {
      v3 = "tionTrigger_FaceTimeSent";
      v2 = 0xD00000000000002CLL;
    }

    else
    {
      v3 = "tionTrigger_FaceTimeReceived";
      v2 = 0xD00000000000002FLL;
    }
  }

  else if (a2 <= 1u)
  {
    if (a2)
    {
      v3 = "unicationReceived";
      v2 = 0xD000000000000024;
    }

    else
    {
      v2 = 0xD000000000000031;
    }
  }

  else if (a2 == 2)
  {
    v3 = "tionTrigger_CallSent";
    v2 = 0xD000000000000025;
  }

  else if (a2 == 3)
  {
    v3 = "tionTrigger_EmailSent";
    v2 = 0xD000000000000029;
  }

  else
  {
    v3 = "tionTrigger_EmailReceived";
    v2 = 0xD00000000000002DLL;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v18 = 1;
  }

  else
  {
    v18 = sub_1C095DF3C();
  }

  return v18 & 1;
}

uint64_t sub_1C058F5B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "DateTime_Weekdays";
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000025;
    }

    else
    {
      v4 = 0xD000000000000024;
    }

    if (v3 == 2)
    {
      v5 = "ntUnitType_DistanceUnit";
    }

    else
    {
      v5 = "ntUnitType_WeightUnit";
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0xD000000000000027;
    }

    else
    {
      v4 = 0xD000000000000025;
    }

    if (v3)
    {
      v5 = "ntUnitType_EnergyUnit";
    }

    else
    {
      v5 = "DateTime_Weekdays";
    }
  }

  if (a2 > 1u)
  {
    v2 = "ntUnitType_DistanceUnit";
    v6 = "ntUnitType_WeightUnit";
    v7 = 0xD000000000000024;
    v8 = a2 == 2;
  }

  else
  {
    v6 = "ntUnitType_EnergyUnit";
    v7 = 0xD000000000000027;
    v8 = a2 == 0;
  }

  if (v8)
  {
    v9 = 0xD000000000000025;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v2;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && (v5 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1C095DF3C();
  }

  return v11 & 1;
}

uint64_t sub_1C058F6C0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000021;
  v3 = "common_CalendarEventType_Event";
  v4 = a1;
  v5 = 0xD000000000000024;
  if (a1 == 4)
  {
    v5 = 0xD000000000000022;
    v6 = "tionMode_SendCopy";
  }

  else
  {
    v6 = "tionMode_SharePlay";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000021;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v8 = "tionMode_Airdrop";
  }

  else
  {
    v8 = v6;
  }

  if (a1 == 1)
  {
    v9 = 0xD000000000000021;
  }

  else
  {
    v9 = 0xD000000000000020;
  }

  if (v4 == 1)
  {
    v10 = "tionMode_Namedrop";
  }

  else
  {
    v10 = "tionMode_Together";
  }

  if (!v4)
  {
    v9 = 0xD000000000000021;
    v10 = "common_CalendarEventType_Event";
  }

  if (v4 <= 2)
  {
    v11 = v10;
  }

  else
  {
    v9 = v7;
    v11 = v8;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v3 = "tionMode_Airdrop";
    }

    else if (a2 == 4)
    {
      v2 = 0xD000000000000022;
      v3 = "tionMode_SendCopy";
    }

    else
    {
      v2 = 0xD000000000000024;
      v3 = "tionMode_SharePlay";
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v3 = "tionMode_Namedrop";
    }

    else
    {
      v2 = 0xD000000000000020;
      v3 = "tionMode_Together";
    }
  }

  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1C095DF3C();
  }

  return v12 & 1;
}

uint64_t sub_1C058F81C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = "ventType_Meeting";
      v3 = 0xD000000000000024;
    }

    else
    {
      v4 = "ventType_Appointment";
      v3 = 0xD00000000000001ELL;
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD000000000000020;
    }

    else
    {
      v3 = 0xD000000000000021;
    }

    if (v2)
    {
      v4 = "ventType_Conflict";
    }

    else
    {
      v4 = "rection_Rightward";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD000000000000024;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (a2 == 2)
    {
      v6 = "ventType_Meeting";
    }

    else
    {
      v6 = "ventType_Appointment";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD000000000000020;
    }

    else
    {
      v5 = 0xD000000000000021;
    }

    if (a2)
    {
      v6 = "ventType_Conflict";
    }

    else
    {
      v6 = "rection_Rightward";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C095DF3C();
  }

  return v7 & 1;
}

uint64_t sub_1C058F94C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001FLL;
  v3 = "common_SettingValueType_Target";
  if (a1 == 5)
  {
    v4 = 0xD00000000000001CLL;
  }

  else
  {
    v4 = 0xD000000000000021;
  }

  if (a1 == 5)
  {
    v5 = "rection_Leftward";
  }

  else
  {
    v5 = "common_SpatialDirection_Down";
  }

  if (a1 == 3)
  {
    v6 = 0xD00000000000001FLL;
  }

  else
  {
    v6 = 0xD000000000000020;
  }

  if (a1 == 3)
  {
    v7 = "common_SpatialDirection_Farther";
  }

  else
  {
    v7 = "common_SpatialDirection_Further";
  }

  if (a1 <= 4u)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  if (a1 > 4u)
  {
    v7 = v5;
  }

  if (a1 == 1)
  {
    v9 = 0xD00000000000001ELL;
  }

  else
  {
    v9 = 0xD00000000000001FLL;
  }

  if (a1 == 1)
  {
    v10 = "common_SpatialDirection_Up";
  }

  else
  {
    v10 = "common_SpatialDirection_Nearer";
  }

  if (!a1)
  {
    v9 = 0xD00000000000001ALL;
    v10 = "common_SettingValueType_Target";
  }

  v11 = a1 <= 2u;
  if (a1 <= 2u)
  {
    v12 = v9;
  }

  else
  {
    v12 = v8;
  }

  if (v11)
  {
    v7 = v10;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD00000000000001ELL;
        v3 = "common_SpatialDirection_Up";
      }

      else
      {
        v3 = "common_SpatialDirection_Nearer";
      }
    }

    else
    {
      v2 = 0xD00000000000001ALL;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD00000000000001CLL;
      v3 = "rection_Leftward";
    }

    else
    {
      v2 = 0xD000000000000021;
      v3 = "common_SpatialDirection_Down";
    }
  }

  else if (a2 == 3)
  {
    v3 = "common_SpatialDirection_Farther";
  }

  else
  {
    v2 = 0xD000000000000020;
    v3 = "common_SpatialDirection_Further";
  }

  if (v12 == v2 && (v7 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C095DF3C();
  }

  return v13 & 1;
}

uint64_t sub_1C058FAE4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 0xD00000000000001ELL;
    }

    else
    {
      v3 = 0xD00000000000001FLL;
    }

    if (v2 == 2)
    {
      v4 = "common_ReactionCategory_Emoji";
    }

    else
    {
      v4 = "common_ReactionCategory_Memoji";
    }
  }

  else
  {
    if (a1)
    {
      v3 = 0xD00000000000001DLL;
    }

    else
    {
      v3 = 0xD00000000000001FLL;
    }

    if (v2)
    {
      v4 = "common_ReactionCategory_Genmoji";
    }

    else
    {
      v4 = "Version_Soundtrack";
    }
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v5 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = 0xD00000000000001FLL;
    }

    if (a2 == 2)
    {
      v6 = "common_ReactionCategory_Emoji";
    }

    else
    {
      v6 = "common_ReactionCategory_Memoji";
    }
  }

  else
  {
    if (a2)
    {
      v5 = 0xD00000000000001DLL;
    }

    else
    {
      v5 = 0xD00000000000001FLL;
    }

    if (a2)
    {
      v6 = "common_ReactionCategory_Genmoji";
    }

    else
    {
      v6 = "Version_Soundtrack";
    }
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1C095DF3C();
  }

  return v7 & 1;
}

uint64_t sub_1C058FBF4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001DLL;
  v3 = "nStatus_NotCompleted";
  if (a1 > 3u)
  {
    v5 = "ureMode_SpatialVideo";
    v10 = 0xD000000000000026;
    if (a1 != 6)
    {
      v10 = 0xD000000000000027;
      v5 = "ureMode_AudioRecording";
    }

    v7 = "common_MediaCaptureMode_Selfie";
    v11 = 0xD000000000000024;
    if (a1 == 4)
    {
      v11 = 0xD00000000000001DLL;
    }

    else
    {
      v7 = "common_MediaCaptureMode_Video";
    }

    v8 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v9 = v11;
    }

    else
    {
      v9 = v10;
    }
  }

  else
  {
    v4 = 0xD000000000000022;
    v5 = "ureMode_SpatialPhoto";
    if (a1 == 2)
    {
      v6 = 0xD00000000000001DLL;
    }

    else
    {
      v6 = 0xD00000000000001ELL;
    }

    if (a1 != 2)
    {
      v5 = "common_MediaCaptureMode_Photo";
    }

    v7 = "ureMode_Screenshot";
    if (a1)
    {
      v4 = 0xD000000000000024;
    }

    else
    {
      v7 = "nStatus_NotCompleted";
    }

    v8 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v9 = v4;
    }

    else
    {
      v9 = v6;
    }
  }

  if (v8)
  {
    v12 = v7;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v3 = "common_MediaCaptureMode_Selfie";
        goto LABEL_40;
      }

      v13 = "common_MediaCaptureMode_SpatialVideo";
      goto LABEL_37;
    }

    if (a2 == 6)
    {
      v3 = "ureMode_SpatialVideo";
      v2 = 0xD000000000000026;
    }

    else
    {
      v3 = "ureMode_AudioRecording";
      v2 = 0xD000000000000027;
    }
  }

  else
  {
    if (a2 <= 1u)
    {
      if (!a2)
      {
        v2 = 0xD000000000000022;
        goto LABEL_40;
      }

      v13 = "common_MediaCaptureMode_SpatialPhoto";
LABEL_37:
      v3 = (v13 - 32);
      v2 = 0xD000000000000024;
      goto LABEL_40;
    }

    if (a2 == 2)
    {
      v3 = "ureMode_SpatialPhoto";
    }

    else
    {
      v3 = "common_MediaCaptureMode_Photo";
      v2 = 0xD00000000000001ELL;
    }
  }

LABEL_40:
  if (v9 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1C095DF3C();
  }

  return v14 & 1;
}

uint64_t sub_1C058FDE8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001DLL;
  v3 = "common_SearchQualifier_Another";
  v4 = a1;
  if (a1 <= 3u)
  {
    v12 = "common_SpatialPosition_Left";
    v13 = 0xD000000000000022;
    if (a1 != 2)
    {
      v13 = 0xD00000000000001ALL;
      v12 = "sition_BottomRight";
    }

    v14 = "common_SpatialPosition_Right";
    v15 = 0xD00000000000001BLL;
    if (!a1)
    {
      v15 = 0xD00000000000001CLL;
      v14 = "common_SearchQualifier_Another";
    }

    if (a1 <= 1u)
    {
      v10 = v15;
    }

    else
    {
      v10 = v13;
    }

    if (v4 <= 1)
    {
      v11 = v14;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v5 = "sition_BottomLeft";
    v6 = "common_SpatialPosition_TopLeft";
    v7 = 0xD00000000000001FLL;
    if (a1 != 7)
    {
      v7 = 0xD00000000000001DLL;
      v6 = "common_SpatialPosition_TopRight";
    }

    if (a1 == 6)
    {
      v7 = 0xD00000000000001ELL;
    }

    else
    {
      v5 = v6;
    }

    v8 = "common_SpatialPosition_Top";
    v9 = 0xD000000000000021;
    if (a1 == 4)
    {
      v9 = 0xD00000000000001DLL;
    }

    else
    {
      v8 = "common_SpatialPosition_Center";
    }

    if (a1 <= 5u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    if (v4 <= 5)
    {
      v11 = v8;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 != 4)
      {
        v3 = "common_SpatialPosition_Center";
        v2 = 0xD000000000000021;
        goto LABEL_44;
      }

      v16 = "common_SpatialPosition_Center";
    }

    else
    {
      if (a2 == 6)
      {
        v3 = "sition_BottomLeft";
        v2 = 0xD00000000000001ELL;
        goto LABEL_44;
      }

      if (a2 == 7)
      {
        v3 = "common_SpatialPosition_TopLeft";
        v2 = 0xD00000000000001FLL;
        goto LABEL_44;
      }

      v16 = "common_SpatialPosition_Bottom";
    }

    v3 = (v16 - 32);
    goto LABEL_44;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v3 = "common_SpatialPosition_Left";
      v2 = 0xD000000000000022;
    }

    else
    {
      v3 = "sition_BottomRight";
      v2 = 0xD00000000000001ALL;
    }
  }

  else if (a2)
  {
    v3 = "common_SpatialPosition_Right";
    v2 = 0xD00000000000001BLL;
  }

  else
  {
    v2 = 0xD00000000000001CLL;
  }

LABEL_44:
  if (v10 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1C095DF3C();
  }

  return v17 & 1;
}

uint64_t sub_1C059001C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ELL;
  v3 = "common_OffsetDirection_Before";
  if (a1 > 3u)
  {
    v4 = "lifier_Personalized";
    if (a1 != 6)
    {
      v4 = "common_SearchQualifier_Exactly";
    }

    v6 = "common_SearchQualifier_NewToMe";
    v10 = 0xD000000000000023;
    if (a1 == 4)
    {
      v10 = 0xD00000000000001ALL;
    }

    else
    {
      v6 = "common_SearchQualifier_New";
    }

    v8 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v9 = v10;
    }

    else
    {
      v9 = 0xD00000000000001ELL;
    }
  }

  else
  {
    v4 = "lifier_Approximate";
    if (a1 == 2)
    {
      v5 = 0xD00000000000001FLL;
    }

    else
    {
      v5 = 0xD00000000000001ELL;
    }

    if (a1 != 2)
    {
      v4 = "common_SearchQualifier_Favorite";
    }

    v6 = "common_SearchQualifier_Old";
    v7 = 0xD000000000000022;
    if (!a1)
    {
      v7 = 0xD00000000000001ALL;
      v6 = "common_OffsetDirection_Before";
    }

    v8 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v5;
    }
  }

  if (v8)
  {
    v11 = v6;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v3 = "common_SearchQualifier_Old";
        v2 = 0xD000000000000022;
      }

      else
      {
        v2 = 0xD00000000000001ALL;
      }

      goto LABEL_39;
    }

    if (a2 == 2)
    {
      v3 = "lifier_Approximate";
      v2 = 0xD00000000000001FLL;
      goto LABEL_39;
    }

    v12 = "common_SearchQualifier_NewToMe";
LABEL_38:
    v3 = (v12 - 32);
    goto LABEL_39;
  }

  if (a2 > 5u)
  {
    if (a2 == 6)
    {
      v12 = "common_SearchQualifier_Exactly";
    }

    else
    {
      v12 = "common_SearchQualifier_Another";
    }

    goto LABEL_38;
  }

  if (a2 == 4)
  {
    v3 = "common_SearchQualifier_NewToMe";
    v2 = 0xD00000000000001ALL;
  }

  else
  {
    v3 = "common_SearchQualifier_New";
    v2 = 0xD000000000000023;
  }

LABEL_39:
  if (v9 == v2 && (v11 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1C095DF3C();
  }

  return v13 & 1;
}