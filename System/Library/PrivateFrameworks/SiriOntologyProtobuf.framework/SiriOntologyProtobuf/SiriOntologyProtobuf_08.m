uint64_t Google_Protobuf_Timestamp.unknownFields.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_2685BA80C(v2, v3);
}

uint64_t Google_Protobuf_Timestamp.unknownFields.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_2685B593C(*(v1 + 16), *(v1 + 24));
  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

double Google_Protobuf_Timestamp.init()@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_26868A5E0;
  return result;
}

uint64_t static Google_Protobuf_Timestamp._protobuf_nameMap.getter@<X0>(void *a1@<X8>)
{
  if (qword_28028BDC0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028D380;
  v2 = qword_28028D388;
  v3 = unk_28028D390;
  *a1 = qword_28028D378;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t Google_Protobuf_Timestamp.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  result = v7(a2, a3);
  if (!v4)
  {
    while ((v9 & 1) == 0)
    {
      if (result == 1)
      {
        (*(a3 + 96))(v3, a2, a3);
      }

      else if (result == 2)
      {
        (*(a3 + 72))(v3 + 8, a2, a3);
      }

      result = v7(a2, a3);
    }
  }

  return result;
}

uint64_t sub_26862C28C(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  if (a2)
  {
    MEMORY[0x26D61D8F0](1);
    result = MEMORY[0x26D61D920](a2);
  }

  if (a3)
  {
    MEMORY[0x26D61D8F0](2);
    result = MEMORY[0x26D61D920](a3);
  }

  v10 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v10 != 2)
    {
      return result;
    }

    v11 = *(a4 + 16);
    v12 = *(a4 + 24);
LABEL_12:
    if (v11 == v12)
    {
      return result;
    }

    return sub_268689844();
  }

  if (v10)
  {
    v11 = a4;
    v12 = a4 >> 32;
    goto LABEL_12;
  }

  if ((a5 & 0xFF000000000000) != 0)
  {
    return sub_268689844();
  }

  return result;
}

uint64_t sub_26862C34C(uint64_t result, unint64_t a2, int a3, uint64_t a4, unint64_t a5)
{
  v9 = result;
  if (!a2 || (result = sub_268636ED8(a2, 1), !v5))
  {
    if (!a3 || (result = sub_2686440C0(a3, 2), !v5))
    {
      v10 = a5 >> 62;
      if ((a5 >> 62) > 1)
      {
        if (v10 != 2)
        {
          return result;
        }

        v11 = *(a4 + 16);
        v12 = *(a4 + 24);
      }

      else
      {
        if (!v10)
        {
          if ((a5 & 0xFF000000000000) == 0)
          {
            return result;
          }

          goto LABEL_13;
        }

        v11 = a4;
        v12 = a4 >> 32;
      }

      if (v11 == v12)
      {
        return result;
      }

LABEL_13:
      if (*(v9 + 64) == 1)
      {
        return sub_26863B108(a4, a5);
      }
    }
  }

  return result;
}

uint64_t Google_Protobuf_Timestamp.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  if (!*v3 || (result = (*(a3 + 32))(*v3, 1, a2, a3), !v4))
  {
    if (!v8 || (result = (*(a3 + 24))(v8, 2, a2, a3), !v4))
    {
      sub_2685BA80C(v9, v10);
      UnknownStorage.traverse<A>(visitor:)(a1, a2, a3);
      return sub_2685B593C(v9, v10);
    }
  }

  return result;
}

uint64_t Google_Protobuf_Timestamp.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_26862C28C(&v6, v1, v2, v4, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

double sub_26862C5A8@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_26868A5E0;
  return result;
}

uint64_t sub_26862C60C@<X0>(void *a1@<X8>)
{
  if (qword_28028BDC0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_28028D380;
  v2 = qword_28028D388;
  v3 = unk_28028D390;
  *a1 = qword_28028D378;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
}

uint64_t sub_26862C6B8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_26862C28C(&v6, v1, v2, v4, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

__n128 sub_26862C770(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = a1[3];
  v13 = a1[2];
  v14 = v7;
  v15 = *(a1 + 8);
  v8 = a1[1];
  v11 = *a1;
  v12 = v8;
  sub_26862C28C(&v11, v3, v4, v5, v6);
  v9 = v14;
  a1[2] = v13;
  a1[3] = v9;
  *(a1 + 8) = v15;
  result = v12;
  *a1 = v11;
  a1[1] = result;
  return result;
}

uint64_t sub_26862C7F4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  sub_268689E94();
  v8 = v13;
  v9 = v14;
  v10 = v15;
  v6 = v11;
  v7 = v12;
  sub_26862C28C(&v6, v1, v2, v4, v3);
  v14 = v9;
  v15 = v10;
  v12 = v7;
  v13 = v8;
  v11 = v6;
  return sub_268689EF4();
}

uint64_t _s20SiriOntologyProtobuf07Google_C10_TimestampV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a2 + 16);
  v4 = *(a2 + 24);
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  sub_2685BA80C(v7, v6);
  sub_2685BA80C(v5, v4);
  v8 = sub_2686131DC(v7, v6, v5, v4);
  sub_2685B593C(v5, v4);
  sub_2685B593C(v7, v6);
  return v8 & 1;
}

unint64_t sub_26862C950(uint64_t a1)
{
  result = sub_26862C978();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26862C978()
{
  result = qword_28028D398;
  if (!qword_28028D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D398);
  }

  return result;
}

unint64_t sub_26862C9CC(uint64_t a1)
{
  *(a1 + 8) = sub_26862C9FC();
  result = sub_26862CA50();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_26862C9FC()
{
  result = qword_28028D3A0;
  if (!qword_28028D3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D3A0);
  }

  return result;
}

unint64_t sub_26862CA50()
{
  result = qword_28028D3A8;
  if (!qword_28028D3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D3A8);
  }

  return result;
}

unint64_t sub_26862CAA8()
{
  result = qword_28028D3B0;
  if (!qword_28028D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D3B0);
  }

  return result;
}

uint64_t sub_26862CAFC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_26862CB50(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy50_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_26862CBCC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 50))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_26862CC14(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 50) = 1;
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

    *(result + 50) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26862CC74@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v17 = 1;
  sub_2685B1724(a1, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(v13, v16);
    __swift_project_boxed_opaque_existential_1(v16, v16[3]);
    swift_getDynamicType();
    (*(v16[4] + 8))(v12);
    __swift_destroy_boxed_opaque_existential_1(a1);
    result = __swift_destroy_boxed_opaque_existential_1(v16);
    v8 = v12[0];
    v9 = v12[1];
    v10 = v17;
    *a3 = MEMORY[0x277D84F90];
    *(a3 + 8) = 0;
    *(a3 + 9) = v10;
    *(a3 + 16) = v8;
    *(a3 + 32) = v9;
    *(a3 + 48) = v5;
    *(a3 + 49) = v6;
  }

  else
  {
    v14 = 0;
    memset(v13, 0, sizeof(v13));
    sub_2685B2E64(v13, &qword_28028D3C8, &unk_2686902F0);
    sub_2685D104C();
    swift_allocError();
    *v11 = 4;
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t sub_26862CDF8(uint64_t a1)
{
  v2 = *(v1 + 49);
  v3 = *(v1 + 24);
  v4 = *(v3 + 16);
  if (v2 != 1)
  {
    if (v4)
    {
      v14 = sub_2685B351C(a1);
      if (v15)
      {
        v16 = *(v3 + 56) + 80 * v14;
        v12 = *(v16 + 32);
        if (v12 >> 8 <= 0xFE)
        {
          v11 = *(v16 + 16);
          v10 = *(v16 + 24);
          v13 = (v12 >> 8) & 1;
          v8 = *v16;
          v9 = *(v16 + 8);
          goto LABEL_10;
        }
      }
    }

LABEL_8:
    sub_2685D104C();
    swift_allocError();
    *v17 = 4;
    return swift_willThrow();
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  v5 = sub_2685B351C(a1);
  if ((v6 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(v3 + 56) + 80 * v5;
  v8 = *(v7 + 40);
  v9 = *(v7 + 48);
  v11 = *(v7 + 56);
  v10 = *(v7 + 64);
  v12 = *(v7 + 72);
  LOBYTE(v13) = *(v7 + 73);
LABEL_10:
  sub_2685C255C(v11, v10, v12, v13);
  sub_268633554(v8, v9);
  return sub_2686314C8(v11, v10, v12, v13);
}

uint64_t sub_26862CF18(int a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = a1;
    if (a1 < 0)
    {
      v7 = *v2;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_2685B3F48(0, *(v7 + 2) + 1, 1, v7);
        *v2 = v7;
      }

      v9 = *(v7 + 2);
      v10 = *(v7 + 3);
      v11 = v9 + 1;
      if (v9 >= v10 >> 1)
      {
        v15 = v9 + 1;
        v12 = v7;
        v13 = *(v7 + 2);
        v14 = sub_2685B3F48((v10 > 1), v9 + 1, 1, v12);
        v9 = v13;
        v11 = v15;
        v7 = v14;
      }

      *(v7 + 2) = v11;
      v7[v9 + 32] = 45;
      *v2 = v7;
      v6 = -v6;
    }

    return sub_2686328AC(v6);
  }

  return result;
}

uint64_t sub_26862CFF4(uint64_t a1, uint64_t a2, void (*a3)(char **, char *), uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v11 = *(a5 - 8);
  v45 = a4;
  v46 = v11;
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](a1, a2);
  v14 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v37 - v16;
  result = sub_26862CDF8(v18);
  if (!v6)
  {
    v44 = v17;
    v38 = v12;
    v20 = *v5;
    v21 = *v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v20;
    v43 = a3;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_28:
      v20 = sub_2685B3F48(0, *(v20 + 2) + 1, 1, v20);
      *v7 = v20;
    }

    v24 = *(v20 + 2);
    v23 = *(v20 + 3);
    if (v24 >= v23 >> 1)
    {
      v20 = sub_2685B3F48((v23 > 1), v24 + 1, 1, v20);
    }

    *(v20 + 2) = v24 + 1;
    v20[v24 + 32] = 91;
    *v7 = v20;
    *(v7 + 4) = 256;
    if (sub_268689B74())
    {
      v25 = 0;
      v26 = 0;
      v41 = (v46 + 32);
      v42 = (v46 + 16);
      v39 = v7;
      v40 = (v46 + 8);
      do
      {
        v27 = sub_268689B64();
        sub_268689B24();
        if (v27)
        {
          v20 = v44;
          (*(v46 + 16))(v44, a1 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v25, a5);
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            goto LABEL_27;
          }
        }

        else
        {
          result = sub_268689D14();
          if (v38 != 8)
          {
            __break(1u);
            return result;
          }

          v47 = result;
          v33 = v44;
          (*v42)(v44, &v47, a5);
          v20 = v33;
          swift_unknownObjectRelease();
          v28 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
LABEL_27:
            __break(1u);
            goto LABEL_28;
          }
        }

        (*v41)(v14, v20, a5);
        if (v26)
        {
          v29 = *v7;
          v30 = swift_isUniquelyReferenced_nonNull_native();
          *v7 = v29;
          if ((v30 & 1) == 0)
          {
            v29 = sub_2685B3F48(0, *(v29 + 2) + 1, 1, v29);
            *v7 = v29;
          }

          v32 = *(v29 + 2);
          v31 = *(v29 + 3);
          if (v32 >= v31 >> 1)
          {
            v29 = sub_2685B3F48((v31 > 1), v32 + 1, 1, v29);
          }

          *(v29 + 2) = v32 + 1;
          v29[v32 + 32] = 44;
          v7 = v39;
          *v39 = v29;
        }

        v43(v7, v14);
        (*v40)(v14, a5);
        ++v25;
        v26 = 1;
      }

      while (v28 != sub_268689B74());
    }

    v34 = *v7;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v7 = v34;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v34 + 16) + 1, 1, v34);
      v34 = result;
      *v7 = result;
    }

    v36 = *(v34 + 16);
    v35 = *(v34 + 24);
    if (v36 >= v35 >> 1)
    {
      result = sub_2685B3F48((v35 > 1), v36 + 1, 1, v34);
      v34 = result;
    }

    *(v34 + 16) = v36 + 1;
    *(v34 + v36 + 32) = 93;
    *v7 = v34;
    *(v7 + 4) = 44;
  }

  return result;
}

uint64_t sub_26862D404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  result = sub_26862CDF8(a2);
  if (!v5)
  {
    if ((*(v4 + 48) & 1) != 0 || (sub_2685C23CC(a3, a4, v31), v32 == 255))
    {
      v10 = (*(a4 + 40))(a3, a4);
      if ((v10 & 0x8000000000000000) != 0)
      {
        v11 = v10;
        v12 = *v4;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v6 = v12;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v12 = sub_2685B3F48(0, *(v12 + 2) + 1, 1, v12);
          *v6 = v12;
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        if (v15 >= v14 >> 1)
        {
          v12 = sub_2685B3F48((v14 > 1), v15 + 1, 1, v12);
        }

        *(v12 + 2) = v15 + 1;
        v12[v15 + 32] = 45;
        *v6 = v12;
        v10 = -v11;
      }

      return sub_2686328AC(v10);
    }

    else
    {
      v16 = v31[0];
      v17 = v31[1];
      v18 = *v6;
      v19 = swift_isUniquelyReferenced_nonNull_native();
      *v6 = v18;
      if ((v19 & 1) == 0)
      {
        v18 = sub_2685B3F48(0, *(v18 + 2) + 1, 1, v18);
        *v6 = v18;
      }

      v20 = *(v18 + 2);
      v21 = *(v18 + 3);
      v22 = v20 + 1;
      if (v20 >= v21 >> 1)
      {
        v28 = v18;
        v29 = *(v18 + 2);
        v30 = sub_2685B3F48((v21 > 1), v20 + 1, 1, v28);
        v20 = v29;
        v18 = v30;
      }

      *(v18 + 2) = v22;
      v23 = &v18[v20];
      v23[32] = 34;
      *v6 = v18;
      sub_2685B403C(v16, v17, v23);
      v24 = *v6;
      v25 = swift_isUniquelyReferenced_nonNull_native();
      *v6 = v24;
      if ((v25 & 1) == 0)
      {
        v24 = sub_2685B3F48(0, *(v24 + 2) + 1, 1, v24);
        *v6 = v24;
      }

      v27 = *(v24 + 2);
      v26 = *(v24 + 3);
      if (v27 >= v26 >> 1)
      {
        v24 = sub_2685B3F48((v26 > 1), v27 + 1, 1, v24);
      }

      result = sub_2685B2E64(v31, &qword_28028D3B8, &qword_268692270);
      *(v24 + 2) = v27 + 1;
      v24[v27 + 32] = 34;
      *v6 = v24;
    }
  }

  return result;
}

uint64_t sub_26862D664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_26862CDF8(a2);
  if (!v5)
  {
    v9 = *(v4 + 49);
    v12[0] = *(v4 + 48);
    v12[1] = v9;
    v10 = Message.jsonUTF8Data(options:)(v12, a3, a4);
    return sub_268668CF8(v10, v11);
  }

  return result;
}

uint64_t sub_26862D6E4(uint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (v3)
  {
    return result;
  }

  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
    *v2 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v6[v9 + 32] = 91;
  *v2 = v6;
  *(v2 + 8) = 256;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 32);
    if ((~LODWORD(v11) & 0x7F800000) != 0)
    {
      v14 = sub_268689BE4();
      sub_2686689EC(v14, v15);
      v16 = v10 - 1;
      if (v10 == 1)
      {
LABEL_16:
        v6 = *v2;
        goto LABEL_17;
      }
    }

    else
    {
      if ((LODWORD(v11) & 0x7FFFFF) != 0)
      {
        v12 = "NaN";
        v13 = 5;
      }

      else if (v11 >= 0.0)
      {
        v12 = "Infinity";
        v13 = 10;
      }

      else
      {
        v12 = "-Infinity";
        v13 = 11;
      }

      sub_2685B403C(v12, v13, LODWORD(v11));
      v16 = v10 - 1;
      if (v10 == 1)
      {
        goto LABEL_16;
      }
    }

    v19 = (a1 + 36);
    do
    {
      v22 = *v19;
      v23 = *v2;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v23;
      if ((v24 & 1) == 0)
      {
        v23 = sub_2685B3F48(0, *(v23 + 2) + 1, 1, v23);
        *v2 = v23;
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      if (v26 >= v25 >> 1)
      {
        v23 = sub_2685B3F48((v25 > 1), v26 + 1, 1, v23);
      }

      *(v23 + 2) = v26 + 1;
      v23[v26 + 32] = 44;
      *v2 = v23;
      if ((~LODWORD(v22) & 0x7F800000) != 0)
      {
        v20 = sub_268689BE4();
        sub_2686689EC(v20, v21);
      }

      else if ((LODWORD(v22) & 0x7FFFFF) != 0)
      {
        sub_2685B403C("NaN", 5, LODWORD(v22));
      }

      else if (v22 >= 0.0)
      {
        sub_2685B403C("Infinity", 10, LODWORD(v22));
      }

      else
      {
        sub_2685B403C("-Infinity", 11, LODWORD(v22));
      }

      ++v19;
      --v16;
    }

    while (v16);
    goto LABEL_16;
  }

LABEL_17:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
    v6 = result;
    *v2 = result;
  }

  v18 = *(v6 + 2);
  v17 = *(v6 + 3);
  if (v18 >= v17 >> 1)
  {
    result = sub_2685B3F48((v17 > 1), v18 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v18 + 1;
  v6[v18 + 32] = 93;
  *v2 = v6;
  *(v2 + 8) = 44;
  return result;
}

uint64_t sub_26862D9BC(uint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (v3)
  {
    return result;
  }

  v6 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
    *v2 = v6;
  }

  v9 = *(v6 + 2);
  v8 = *(v6 + 3);
  if (v9 >= v8 >> 1)
  {
    v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
  }

  *(v6 + 2) = v9 + 1;
  v6[v9 + 32] = 91;
  *v2 = v6;
  *(v2 + 8) = 256;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = *(a1 + 32);
    if ((~v11 & 0x7FF0000000000000) != 0)
    {
      v14 = sub_268689BD4();
      sub_2686689EC(v14, v15);
      v16 = v10 - 1;
      if (v10 == 1)
      {
LABEL_16:
        v6 = *v2;
        goto LABEL_17;
      }
    }

    else
    {
      if ((v11 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        v12 = "NaN";
        v13 = 5;
      }

      else if (*(a1 + 32) >= 0.0)
      {
        v12 = "Infinity";
        v13 = 10;
      }

      else
      {
        v12 = "-Infinity";
        v13 = 11;
      }

      sub_2685B403C(v12, v13, v11);
      v16 = v10 - 1;
      if (v10 == 1)
      {
        goto LABEL_16;
      }
    }

    v19 = (a1 + 40);
    do
    {
      v22 = *v19;
      v23 = *v2;
      v24 = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v23;
      if ((v24 & 1) == 0)
      {
        v23 = sub_2685B3F48(0, *(v23 + 2) + 1, 1, v23);
        *v2 = v23;
      }

      v26 = *(v23 + 2);
      v25 = *(v23 + 3);
      if (v26 >= v25 >> 1)
      {
        v23 = sub_2685B3F48((v25 > 1), v26 + 1, 1, v23);
      }

      *(v23 + 2) = v26 + 1;
      v23[v26 + 32] = 44;
      *v2 = v23;
      if ((~*&v22 & 0x7FF0000000000000) != 0)
      {
        v20 = sub_268689BD4();
        sub_2686689EC(v20, v21);
      }

      else if ((*&v22 & 0xFFFFFFFFFFFFFLL) != 0)
      {
        sub_2685B403C("NaN", 5, *&v22);
      }

      else if (v22 >= 0.0)
      {
        sub_2685B403C("Infinity", 10, *&v22);
      }

      else
      {
        sub_2685B403C("-Infinity", 11, *&v22);
      }

      ++v19;
      --v16;
    }

    while (v16);
    goto LABEL_16;
  }

LABEL_17:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v6;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
    v6 = result;
    *v2 = result;
  }

  v18 = *(v6 + 2);
  v17 = *(v6 + 3);
  if (v18 >= v17 >> 1)
  {
    result = sub_2685B3F48((v17 > 1), v18 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 2) = v18 + 1;
  v6[v18 + 32] = 93;
  *v2 = v6;
  *(v2 + 8) = 44;
  return result;
}

uint64_t sub_26862DC94(uint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      *v2 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = 91;
    *v2 = v6;
    *(v2 + 8) = 256;
    v10 = *(a1 + 16);
    if (v10)
    {
      sub_2686328AC(*(a1 + 32));
      v11 = v10 - 1;
      if (v10 != 1)
      {
        v14 = (a1 + 36);
        do
        {
          v16 = *v14++;
          v15 = v16;
          v17 = *v2;
          v18 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v17;
          if ((v18 & 1) == 0)
          {
            v17 = sub_2685B3F48(0, *(v17 + 2) + 1, 1, v17);
            *v2 = v17;
          }

          v20 = *(v17 + 2);
          v19 = *(v17 + 3);
          if (v20 >= v19 >> 1)
          {
            v17 = sub_2685B3F48((v19 > 1), v20 + 1, 1, v17);
          }

          *(v17 + 2) = v20 + 1;
          v17[v20 + 32] = 44;
          *v2 = v17;
          sub_2686328AC(v15);
          --v11;
        }

        while (v11);
      }

      v6 = *v2;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
      *v2 = result;
    }

    v13 = *(v6 + 2);
    v12 = *(v6 + 3);
    if (v13 >= v12 >> 1)
    {
      result = sub_2685B3F48((v12 > 1), v13 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v13 + 1;
    v6[v13 + 32] = 93;
    *v2 = v6;
    *(v2 + 8) = 44;
  }

  return result;
}

uint64_t sub_26862DE9C(void *a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
      *v2 = result;
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      result = sub_2685B3F48((v7 > 1), v8 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v8 + 1;
    v6[v8 + 32] = 91;
    *v2 = v6;
    *(v2 + 8) = 256;
    v9 = a1[2];
    if (v9)
    {
      v10 = a1[4];
      *v2 = v6;
      v12 = *(v6 + 2);
      v11 = *(v6 + 3);
      if (v12 >= v11 >> 1)
      {
        v27 = v10;
        v6 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v6);
        v10 = v27;
      }

      *(v6 + 2) = v12 + 1;
      v6[v12 + 32] = 34;
      *v2 = v6;
      sub_2686328AC(v10);
      v6 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v6;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
        v6 = result;
        *v2 = result;
      }

      v14 = *(v6 + 2);
      v13 = *(v6 + 3);
      if (v14 >= v13 >> 1)
      {
        result = sub_2685B3F48((v13 > 1), v14 + 1, 1, v6);
        v6 = result;
      }

      *(v6 + 2) = v14 + 1;
      v6[v14 + 32] = 34;
      *v2 = v6;
      v15 = v9 - 1;
      if (v15)
      {
        v18 = a1 + 5;
        do
        {
          v20 = *v18++;
          v19 = v20;
          *v2 = v6;
          v22 = *(v6 + 2);
          v21 = *(v6 + 3);
          if (v22 >= v21 >> 1)
          {
            v28 = v19;
            v6 = sub_2685B3F48((v21 > 1), v22 + 1, 1, v6);
            v19 = v28;
          }

          *(v6 + 2) = v22 + 1;
          v6[v22 + 32] = 44;
          *v2 = v6;
          v24 = *(v6 + 2);
          v23 = *(v6 + 3);
          if (v24 >= v23 >> 1)
          {
            v29 = v19;
            v6 = sub_2685B3F48((v23 > 1), v24 + 1, 1, v6);
            v19 = v29;
          }

          *(v6 + 2) = v24 + 1;
          v6[v24 + 32] = 34;
          *v2 = v6;
          sub_2686328AC(v19);
          v6 = *v2;
          result = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v6;
          if ((result & 1) == 0)
          {
            result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
            v6 = result;
            *v2 = result;
          }

          v26 = *(v6 + 2);
          v25 = *(v6 + 3);
          if (v26 >= v25 >> 1)
          {
            result = sub_2685B3F48((v25 > 1), v26 + 1, 1, v6);
            v6 = result;
          }

          *(v6 + 2) = v26 + 1;
          v6[v26 + 32] = 34;
          *v2 = v6;
          --v15;
        }

        while (v15);
      }
    }

    *v2 = v6;
    v17 = *(v6 + 2);
    v16 = *(v6 + 3);
    if (v17 >= v16 >> 1)
    {
      result = sub_2685B3F48((v16 > 1), v17 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v17 + 1;
    v6[v17 + 32] = 93;
    *v2 = v6;
    *(v2 + 8) = 44;
  }

  return result;
}

uint64_t sub_26862E1DC(uint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      *v2 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = 91;
    *v2 = v6;
    *(v2 + 8) = 256;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a1 + 32);
      if ((v11 & 0x80000000) != 0)
      {
        v12 = *v2;
        v13 = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v12;
        if ((v13 & 1) == 0)
        {
          v12 = sub_2685B3F48(0, *(v12 + 2) + 1, 1, v12);
          *v2 = v12;
        }

        v15 = *(v12 + 2);
        v14 = *(v12 + 3);
        v16 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          v31 = sub_2685B3F48((v14 > 1), v15 + 1, 1, v12);
          v16 = v15 + 1;
          v12 = v31;
        }

        *(v12 + 2) = v16;
        v12[v15 + 32] = 45;
        *v2 = v12;
        v11 = -v11;
      }

      sub_2686328AC(v11);
      v17 = v10 - 1;
      if (v17)
      {
        v20 = (a1 + 36);
        do
        {
          v22 = *v20++;
          v21 = v22;
          v23 = *v2;
          v24 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v23;
          if ((v24 & 1) == 0)
          {
            v23 = sub_2685B3F48(0, *(v23 + 2) + 1, 1, v23);
            *v2 = v23;
          }

          v26 = *(v23 + 2);
          v25 = *(v23 + 3);
          if (v26 >= v25 >> 1)
          {
            v23 = sub_2685B3F48((v25 > 1), v26 + 1, 1, v23);
          }

          *(v23 + 2) = v26 + 1;
          v23[v26 + 32] = 44;
          *v2 = v23;
          if ((v21 & 0x80000000) != 0)
          {
            v27 = *v2;
            v28 = swift_isUniquelyReferenced_nonNull_native();
            *v2 = v27;
            if ((v28 & 1) == 0)
            {
              v27 = sub_2685B3F48(0, *(v27 + 2) + 1, 1, v27);
              *v2 = v27;
            }

            v30 = *(v27 + 2);
            v29 = *(v27 + 3);
            if (v30 >= v29 >> 1)
            {
              v27 = sub_2685B3F48((v29 > 1), v30 + 1, 1, v27);
            }

            *(v27 + 2) = v30 + 1;
            v27[v30 + 32] = 45;
            *v2 = v27;
            v21 = -v21;
          }

          sub_2686328AC(v21);
          --v17;
        }

        while (v17);
      }

      v6 = *v2;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
      *v2 = result;
    }

    v19 = *(v6 + 2);
    v18 = *(v6 + 3);
    if (v19 >= v18 >> 1)
    {
      result = sub_2685B3F48((v18 > 1), v19 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v19 + 1;
    v6[v19 + 32] = 93;
    *v2 = v6;
    *(v2 + 8) = 44;
  }

  return result;
}

uint64_t sub_26862E500(uint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
      *v2 = result;
    }

    v8 = *(v6 + 2);
    v7 = *(v6 + 3);
    if (v8 >= v7 >> 1)
    {
      result = sub_2685B3F48((v7 > 1), v8 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v8 + 1;
    v6[v8 + 32] = 91;
    *v2 = v6;
    *(v2 + 8) = 256;
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = 0;
      v11 = (a1 + 32);
      do
      {
        v13 = *v11++;
        v12 = v13;
        if (v10)
        {
          *v2 = v6;
          v15 = *(v6 + 2);
          v14 = *(v6 + 3);
          if (v15 >= v14 >> 1)
          {
            v26 = v12;
            v6 = sub_2685B3F48((v14 > 1), v15 + 1, 1, v6);
            v12 = v26;
          }

          *(v6 + 2) = v15 + 1;
          v6[v15 + 32] = 44;
        }

        *v2 = v6;
        v17 = *(v6 + 2);
        v16 = *(v6 + 3);
        v18 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          v25 = v12;
          v6 = sub_2685B3F48((v16 > 1), v17 + 1, 1, v6);
          v12 = v25;
        }

        *(v6 + 2) = v18;
        v6[v17 + 32] = 34;
        *v2 = v6;
        if ((v12 & 0x8000000000000000) != 0)
        {
          v19 = *(v6 + 3);
          v20 = v17 + 2;
          if (v20 > (v19 >> 1))
          {
            v27 = v12;
            v6 = sub_2685B3F48((v19 > 1), v20, 1, v6);
            v12 = v27;
          }

          *(v6 + 2) = v20;
          v6[v18 + 32] = 45;
          *v2 = v6;
          v12 = -v12;
        }

        sub_2686328AC(v12);
        v6 = *v2;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v6;
        if ((result & 1) == 0)
        {
          result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
          v6 = result;
          *v2 = result;
        }

        v22 = *(v6 + 2);
        v21 = *(v6 + 3);
        if (v22 >= v21 >> 1)
        {
          result = sub_2685B3F48((v21 > 1), v22 + 1, 1, v6);
          v6 = result;
        }

        *(v6 + 2) = v22 + 1;
        v6[v22 + 32] = 34;
        *v2 = v6;
        v10 = 1;
        --v9;
      }

      while (v9);
    }

    *v2 = v6;
    v24 = *(v6 + 2);
    v23 = *(v6 + 3);
    if (v24 >= v23 >> 1)
    {
      result = sub_2685B3F48((v23 > 1), v24 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v24 + 1;
    v6[v24 + 32] = 93;
    *v2 = v6;
    *(v2 + 8) = 44;
  }

  return result;
}

uint64_t sub_26862E7C8(uint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      *v2 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = 91;
    *v2 = v6;
    *(v2 + 8) = 256;
    v10 = *(a1 + 16);
    if (v10)
    {
      v11 = *(a1 + 32);
      if (v11)
      {
        v12 = "true";
        v13 = 4;
      }

      else
      {
        v12 = "false";
        v13 = 5;
      }

      sub_2685B403C(v12, v13, v11);
      v14 = v10 - 1;
      if (v10 != 1)
      {
        v17 = (a1 + 33);
        do
        {
          v20 = *v17;
          v21 = *v2;
          v22 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v21;
          if ((v22 & 1) == 0)
          {
            v21 = sub_2685B3F48(0, *(v21 + 2) + 1, 1, v21);
            *v2 = v21;
          }

          v24 = *(v21 + 2);
          v23 = *(v21 + 3);
          if (v24 >= v23 >> 1)
          {
            v21 = sub_2685B3F48((v23 > 1), v24 + 1, 1, v21);
          }

          *(v21 + 2) = v24 + 1;
          v21[v24 + 32] = 44;
          *v2 = v21;
          if (v20)
          {
            v18 = "true";
            v19 = 4;
          }

          else
          {
            v18 = "false";
            v19 = 5;
          }

          sub_2685B403C(v18, v19, &v21[v24]);
          ++v17;
          --v14;
        }

        while (v14);
      }

      v6 = *v2;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
      *v2 = result;
    }

    v16 = *(v6 + 2);
    v15 = *(v6 + 3);
    if (v16 >= v15 >> 1)
    {
      result = sub_2685B3F48((v15 > 1), v16 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v16 + 1;
    v6[v16 + 32] = 93;
    *v2 = v6;
    *(v2 + 8) = 44;
  }

  return result;
}

uint64_t sub_26862EA1C(void *a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      *v2 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = 91;
    *v2 = v6;
    *(v2 + 8) = 256;
    v10 = a1[2];
    if (v10)
    {
      v12 = a1[4];
      v11 = a1[5];

      sub_268631D18(v12, v11);

      v13 = v10 - 1;
      if (v10 != 1)
      {
        v16 = a1 + 7;
        do
        {
          v18 = *(v16 - 1);
          v17 = *v16;
          v19 = *v2;

          v20 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v19;
          if ((v20 & 1) == 0)
          {
            v19 = sub_2685B3F48(0, *(v19 + 2) + 1, 1, v19);
            *v2 = v19;
          }

          v22 = *(v19 + 2);
          v21 = *(v19 + 3);
          if (v22 >= v21 >> 1)
          {
            v19 = sub_2685B3F48((v21 > 1), v22 + 1, 1, v19);
          }

          *(v19 + 2) = v22 + 1;
          v19[v22 + 32] = 44;
          *v2 = v19;
          sub_268631D18(v18, v17);

          v16 += 2;
          --v13;
        }

        while (v13);
      }

      v6 = *v2;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      v6 = result;
      *v2 = result;
    }

    v15 = *(v6 + 2);
    v14 = *(v6 + 3);
    if (v15 >= v14 >> 1)
    {
      result = sub_2685B3F48((v14 > 1), v15 + 1, 1, v6);
      v6 = result;
    }

    *(v6 + 2) = v15 + 1;
    v6[v15 + 32] = 93;
    *v2 = v6;
    *(v2 + 8) = 44;
  }

  return result;
}

uint64_t sub_26862EC5C(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v47 = *MEMORY[0x277D85DE8];
  result = sub_26862CDF8(a2);
  if (v3)
  {
    goto LABEL_52;
  }

  v7 = *v2;
  v8 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v7;
  if ((result & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_3:
  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    result = sub_2685B3F48((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 2) = v10 + 1;
  v7[v10 + 32] = 91;
  *v4 = v7;
  *(v4 + 4) = 256;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = (a1 + 40);
    do
    {
      a1 = *(v13 - 1);
      v14 = *v13;
      sub_2685BA80C(a1, *v13);
      if (v12)
      {
        *v4 = v7;
        v16 = *(v7 + 2);
        v15 = *(v7 + 3);
        if (v16 >= v15 >> 1)
        {
          v7 = sub_2685B3F48((v15 > 1), v16 + 1, 1, v7);
        }

        *(v7 + 2) = v16 + 1;
        v7[v16 + 32] = 44;
      }

      *v4 = v7;
      v18 = *(v7 + 2);
      v17 = *(v7 + 3);
      if (v18 >= v17 >> 1)
      {
        v7 = sub_2685B3F48((v17 > 1), v18 + 1, 1, v7);
      }

      *(v7 + 2) = v18 + 1;
      v7[v18 + 32] = 34;
      *v4 = v7;
      v19 = v14 >> 62;
      if ((v14 >> 62) > 1)
      {
        if (v19 != 2)
        {
          goto LABEL_44;
        }

        v21 = *(a1 + 16);
        v20 = *(a1 + 24);
        v22 = __OFSUB__(v20, v21);
        v23 = v20 - v21;
        if (v22)
        {
          goto LABEL_54;
        }

        if (v23 < 1)
        {
          goto LABEL_44;
        }
      }

      else if (v19)
      {
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
LABEL_59:
          result = sub_2685B3F48(0, *(v7 + 2) + 1, 1, v7);
          v7 = result;
          *v4 = result;
          goto LABEL_3;
        }

        if (HIDWORD(a1) - a1 < 1)
        {
          goto LABEL_44;
        }
      }

      else if (!BYTE6(v14))
      {
        goto LABEL_44;
      }

      if (v19 == 2)
      {
        v29 = *(a1 + 16);
        v28 = *(a1 + 24);
        v7 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
        v24 = sub_268689764();
        if (v24)
        {
          v7 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
          v30 = sub_268689794();
          if (__OFSUB__(v29, v30))
          {
            goto LABEL_57;
          }

          v24 += v29 - v30;
        }

        v22 = __OFSUB__(v28, v29);
        v31 = v28 - v29;
        if (v22)
        {
          goto LABEL_56;
        }

        v32 = sub_268689784();
        if (v32 >= v31)
        {
          v27 = v31;
        }

        else
        {
          v27 = v32;
        }

LABEL_39:
        v33 = v27 + v24;
        if (v24)
        {
          v34 = v33;
        }

        else
        {
          v34 = 0;
        }

        sub_26863298C(v24, v34, v4);
        goto LABEL_44;
      }

      if (v19 == 1)
      {
        if (a1 >> 32 < a1)
        {
          goto LABEL_55;
        }

        v24 = sub_268689764();
        if (v24)
        {
          v7 = (v14 & 0x3FFFFFFFFFFFFFFFLL);
          v25 = sub_268689794();
          if (__OFSUB__(a1, v25))
          {
            goto LABEL_58;
          }

          v24 += a1 - v25;
        }

        v26 = sub_268689784();
        if (v26 >= (a1 >> 32) - a1)
        {
          v27 = (a1 >> 32) - a1;
        }

        else
        {
          v27 = v26;
        }

        goto LABEL_39;
      }

      v41 = a1;
      v42 = v14;
      v43 = BYTE2(v14);
      v44 = BYTE3(v14);
      v45 = BYTE4(v14);
      v46 = BYTE5(v14);
      sub_26863298C(&v41, &v41 + BYTE6(v14), v4);
LABEL_44:
      v7 = *v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v4 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v7 = sub_2685B3F48(0, *(v7 + 2) + 1, 1, v7);
        *v4 = v7;
      }

      v37 = *(v7 + 2);
      v36 = *(v7 + 3);
      if (v37 >= v36 >> 1)
      {
        v7 = sub_2685B3F48((v36 > 1), v37 + 1, 1, v7);
      }

      v13 += 2;
      result = sub_2685B593C(a1, v14);
      *(v7 + 2) = v37 + 1;
      v7[v37 + 32] = 34;
      *v4 = v7;
      v12 = 1;
      --v11;
    }

    while (v11);
  }

  *v4 = v7;
  v39 = *(v7 + 2);
  v38 = *(v7 + 3);
  if (v39 >= v38 >> 1)
  {
    result = sub_2685B3F48((v38 > 1), v39 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 2) = v39 + 1;
  v7[v39 + 32] = 93;
  *v4 = v7;
  *(v4 + 4) = 44;
LABEL_52:
  v40 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26862F0C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v7[2] = a3;
  v7[3] = a4;
  v8 = v5;
  return sub_26862CFF4(a1, a2, sub_26863150C, v7, a3);
}

uint64_t sub_26862F10C(char **a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  if ((a3 & 1) != 0 || (sub_2685C23CC(a4, a5, v34), v35 == 255))
  {
    v8 = (*(a5 + 40))(a4, a5);
    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = v8;
      v10 = *a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a1 = v10;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v10 = sub_2685B3F48(0, *(v10 + 2) + 1, 1, v10);
        *a1 = v10;
      }

      v12 = *(v10 + 2);
      v13 = *(v10 + 3);
      v14 = v12 + 1;
      if (v12 >= v13 >> 1)
      {
        v28 = v10;
        v29 = *(v10 + 2);
        v30 = sub_2685B3F48((v13 > 1), v12 + 1, 1, v28);
        v12 = v29;
        v10 = v30;
      }

      *(v10 + 2) = v14;
      v10[v12 + 32] = 45;
      *a1 = v10;
      v8 = -v9;
    }

    return sub_2686328AC(v8);
  }

  else
  {
    v16 = v34[0];
    v17 = v34[1];
    v18 = *a1;
    v19 = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v18;
    if ((v19 & 1) == 0)
    {
      v18 = sub_2685B3F48(0, *(v18 + 2) + 1, 1, v18);
      *a1 = v18;
    }

    v20 = *(v18 + 2);
    v21 = *(v18 + 3);
    v22 = v20 + 1;
    if (v20 >= v21 >> 1)
    {
      v36 = v20 + 1;
      v31 = v18;
      v32 = v20;
      v33 = sub_2685B3F48((v21 > 1), v20 + 1, 1, v31);
      v20 = v32;
      v22 = v36;
      v18 = v33;
    }

    *(v18 + 2) = v22;
    v23 = &v18[v20];
    v23[32] = 34;
    *a1 = v18;
    sub_2685B403C(v16, v17, v23);
    v24 = *a1;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    *a1 = v24;
    if ((v25 & 1) == 0)
    {
      v24 = sub_2685B3F48(0, *(v24 + 2) + 1, 1, v24);
      *a1 = v24;
    }

    v27 = *(v24 + 2);
    v26 = *(v24 + 3);
    if (v27 >= v26 >> 1)
    {
      v24 = sub_2685B3F48((v26 > 1), v27 + 1, 1, v24);
    }

    result = sub_2685B2E64(v34, &qword_28028D3B8, &qword_268692270);
    *(v24 + 2) = v27 + 1;
    v24[v27 + 32] = 34;
    *a1 = v24;
  }

  return result;
}

uint64_t sub_26862F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 48);
  v6 = *(v4 + 49);
  v8[2] = a3;
  v8[3] = a4;
  v9 = v5;
  v10 = v6;
  return sub_26862CFF4(a1, a2, sub_2686314D8, v8, a3);
}

uint64_t sub_26862F3B4(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  v8 = a3 & 0x101;
  result = Message.jsonUTF8Data(options:)(&v8, a4, a5);
  if (!v5)
  {
    return sub_268668CF8(result, v7);
  }

  return result;
}

uint64_t sub_26862F414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v106 = a2;
  v102 = a1;
  v98 = *(a6 + 8);
  v94 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v80 = *(AssociatedTypeWitness - 8);
  v10 = *(v80 + 64);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness, v11);
  v95 = v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v14);
  v97 = v78 - v15;
  v99 = *(a5 + 8);
  v96 = a3;
  v16 = swift_getAssociatedTypeWitness();
  v79 = *(v16 - 8);
  v17 = *(v79 + 64);
  v19 = MEMORY[0x28223BE20](v16, v18);
  v107 = v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v21);
  v23 = v78 - v22;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = sub_268689C74();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = v78 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v34 = v78 - v33;
  v35 = v113;
  result = sub_26862CDF8(v106);
  if (v35)
  {
    return result;
  }

  v103 = v26;
  v104 = TupleTypeMetadata2;
  v105 = v34;
  v106 = 0;
  v89 = v31;
  v83 = v25;
  v81 = v23;
  v113 = AssociatedTypeWitness;
  sub_2686689EC(123, 0xE100000000000000);
  v37 = *v6;
  v38 = *(v6 + 8);
  v39 = *(v6 + 9);
  v40 = *(v6 + 48);
  v41 = *(v6 + 49);
  v110 = 0uLL;
  LOWORD(v111) = 256;
  v78[2] = v37;
  *(&v111 + 1) = v37;
  LOBYTE(v112) = v38;
  BYTE1(v112) = v39;
  BYTE2(v112) = v40;
  HIBYTE(v112) = v41;
  v78[0] = v6;
  if ((v102 & 0xC000000000000001) != 0)
  {
    v42 = sub_268689D84();
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = v42 | 0x8000000000000000;
  }

  else
  {
    v47 = -1 << *(v102 + 32);
    v44 = ~v47;
    v43 = v102 + 64;
    v48 = -v47;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v45 = v49 & *(v102 + 64);
    v46 = v102;
  }

  v50 = v97;
  v51 = v83;
  v52 = v104;
  v53 = v105;
  v54 = v103;
  v104 = (v79 + 32);
  v103 = (v80 + 32);
  v91 = v52 - 1;
  v78[1] = v44;
  v93 = (v44 + 64) >> 6;
  v78[4] = v79 + 16;
  v78[3] = v80 + 16;
  v90 = v54 + 4;
  v87 = v99 + 48;
  v82 = v98 + 48;
  v84 = (v80 + 8);
  v85 = (v79 + 8);

  v55 = 0;
  v88 = v43;
  v92 = v46;
  v86 = v16;
  while (1)
  {
    v100 = v55;
    v101 = v45;
    if ((v46 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_268689D94())
    {
      v58 = v81;
      sub_268689E04();
      swift_unknownObjectRelease();
      v59 = v113;
      sub_268689E04();
      swift_unknownObjectRelease();
      v57 = v100;
      v102 = v101;
LABEL_22:
      v64 = *(v52 + 12);
      v65 = v52;
      v66 = v89;
      (*v104)(v89, v58, v16);
      (*v103)(&v66[v64], v50, v59);
      v67 = 0;
      v61 = v57;
      v51 = v83;
      v53 = v105;
      v68 = v102;
      goto LABEL_26;
    }

    v67 = 1;
    v61 = v100;
    v68 = v101;
LABEL_25:
    v65 = v52;
    v66 = v89;
LABEL_26:
    v69 = *(v65 - 1);
    (*(v69 + 56))(v66, v67, 1, v65);
    (*v90)(v53, v66, v51);
    if ((*(v69 + 48))(v53, 1, v65) == 1)
    {
      sub_2686265DC();

      v75 = v112;
      v76 = BYTE1(v112);
      v77 = v78[0];
      *v78[0] = *(&v111 + 1);
      *(v77 + 8) = v75;
      *(v77 + 9) = v76;
      return sub_2686689EC(125, 0xE100000000000000);
    }

    v52 = v65;
    v70 = *(v65 + 12);
    v71 = v107;
    v72 = v86;
    (*v104)(v107, v53);
    v73 = v95;
    (*v103)(v95, &v53[v70], v113);
    v74 = v106;
    (*(v99 + 48))(v71, 1, &v110, &type metadata for JSONMapEncodingVisitor, &off_287929C68);
    if (v74)
    {
      sub_2686265DC();
      (*v84)(v73, v113);
      (*v85)(v107, v72);
      v108[0] = v110;
      v108[1] = v111;
      v109 = v112;
      return sub_2685D9A5C(v108);
    }

    (*(v98 + 48))(v73, 2, &v110, &type metadata for JSONMapEncodingVisitor, &off_287929C68);
    v46 = v92;
    v106 = 0;
    (*v84)(v73, v113);
    v16 = v72;
    result = (*v85)(v107, v72);
    v55 = v61;
    v45 = v68;
    v50 = v97;
    v53 = v105;
    v43 = v88;
  }

  if (v45)
  {
    v56 = v45;
    v57 = v55;
    v58 = v81;
LABEL_21:
    v102 = (v56 - 1) & v56;
    v63 = __clz(__rbit64(v56)) | (v57 << 6);
    (*(v79 + 16))(v58, *(v46 + 48) + *(v79 + 72) * v63, v16);
    v59 = v113;
    (*(v80 + 16))(v50, *(v46 + 56) + *(v80 + 72) * v63, v113);
    goto LABEL_22;
  }

  if (v93 <= v55 + 1)
  {
    v60 = v55 + 1;
  }

  else
  {
    v60 = v93;
  }

  v61 = v60 - 1;
  v62 = v55;
  v58 = v81;
  while (1)
  {
    v57 = v62 + 1;
    if (__OFADD__(v62, 1))
    {
      break;
    }

    if (v57 >= v93)
    {
      v68 = 0;
      v67 = 1;
      v51 = v83;
      goto LABEL_25;
    }

    v56 = *(v43 + 8 * v57);
    ++v62;
    if (v56)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26862FDC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v100 = a6;
  v110 = a2;
  v108 = a1;
  v86 = *(a4 - 8);
  v8 = *(v86 + 64);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v102 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v103 = &v79 - v12;
  v104 = *(v13 + 8);
  v101 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  v16 = *(v85 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v79 - v22;
  v109 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = sub_268689C74();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v79 - v33;
  v35 = v116;
  result = sub_26862CDF8(v110);
  if (v35)
  {
    return result;
  }

  v105 = v26;
  v98 = v34;
  v94 = v31;
  v88 = v25;
  v87 = v23;
  v110 = v20;
  v99 = AssociatedTypeWitness;
  v116 = 0;
  sub_2686689EC(123, 0xE100000000000000);
  v37 = *v6;
  v38 = *(v6 + 8);
  v39 = *(v6 + 9);
  v40 = *(v6 + 48);
  v41 = *(v6 + 49);
  v113 = 0uLL;
  LOWORD(v114) = 256;
  v82 = v37;
  *(&v114 + 1) = v37;
  LOBYTE(v115) = v38;
  BYTE1(v115) = v39;
  BYTE2(v115) = v40;
  HIBYTE(v115) = v41;
  v80 = v6;
  if ((v108 & 0xC000000000000001) != 0)
  {
    v42 = sub_268689D84();
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = v42 | 0x8000000000000000;
  }

  else
  {
    v47 = -1 << *(v108 + 32);
    v44 = ~v47;
    v43 = v108 + 64;
    v48 = -v47;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v45 = v49 & *(v108 + 64);
    v46 = v108;
  }

  v50 = v99;
  v51 = v103;
  v52 = v88;
  v106 = (v86 + 32);
  v107 = (v85 + 32);
  v96 = TupleTypeMetadata2 - 8;
  v81 = v44;
  v53 = (v44 + 64) >> 6;
  v84 = v85 + 16;
  v83 = v86 + 16;
  v95 = (v105 + 32);
  v91 = v104 + 48;
  v89 = (v86 + 8);
  v90 = (v85 + 8);

  v54 = 0;
  v93 = v43;
  for (i = v46; ; v46 = i)
  {
    v97 = v45;
    v105 = v54;
    if ((v46 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_268689D94())
    {
      v57 = v87;
      sub_268689E04();
      swift_unknownObjectRelease();
      v58 = v109;
      sub_268689E04();
      swift_unknownObjectRelease();
      v56 = v105;
      v108 = v45;
LABEL_22:
      v64 = *(TupleTypeMetadata2 + 48);
      v65 = v94;
      (*v107)(v94, v57, v50);
      (*v106)(&v65[v64], v51, v58);
      v66 = 0;
      v60 = v56;
      v52 = v88;
      goto LABEL_26;
    }

    v66 = 1;
    v67 = v45;
    v60 = v105;
    v108 = v67;
LABEL_25:
    v65 = v94;
LABEL_26:
    v68 = *(TupleTypeMetadata2 - 8);
    (*(v68 + 56))(v65, v66, 1, TupleTypeMetadata2);
    v69 = v98;
    (*v95)(v98, v65, v52);
    if ((*(v68 + 48))(v69, 1, TupleTypeMetadata2) == 1)
    {
      sub_2686265DC();

      v76 = v115;
      v77 = BYTE1(v115);
      v78 = v80;
      *v80 = *(&v114 + 1);
      *(v78 + 8) = v76;
      *(v78 + 9) = v77;
      return sub_2686689EC(125, 0xE100000000000000);
    }

    v70 = *(TupleTypeMetadata2 + 48);
    v71 = v110;
    (*v107)(v110, v69, v50);
    v72 = &v69[v70];
    v73 = v102;
    v74 = v109;
    (*v106)(v102, v72, v109);
    v75 = v116;
    (*(v104 + 48))(v71, 1, &v113, &type metadata for JSONMapEncodingVisitor, &off_287929C68);
    if (v75)
    {
      sub_2686265DC();
      (*v89)(v73, v74);
      (*v90)(v110, v99);
      v111[0] = v113;
      v111[1] = v114;
      v112 = v115;
      return sub_2685D9A5C(v111);
    }

    sub_2685D80D0(v74, v100, &v117);
    v116 = 0;
    (*v89)(v73, v74);
    v50 = v99;
    result = (*v90)(v110, v99);
    v54 = v60;
    v45 = v108;
    v51 = v103;
    v43 = v93;
  }

  if (v45)
  {
    v55 = v45;
    v56 = v54;
    v57 = v87;
LABEL_21:
    v108 = (v55 - 1) & v55;
    v62 = __clz(__rbit64(v55)) | (v56 << 6);
    (*(v85 + 16))(v57, *(v46 + 48) + *(v85 + 72) * v62, v50);
    v63 = *(v46 + 56) + *(v86 + 72) * v62;
    v58 = v109;
    (*(v86 + 16))(v51, v63, v109);
    goto LABEL_22;
  }

  if (v53 <= v54 + 1)
  {
    v59 = v54 + 1;
  }

  else
  {
    v59 = v53;
  }

  v60 = v59 - 1;
  v61 = v54;
  v57 = v87;
  while (1)
  {
    v56 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v56 >= v53)
    {
      v108 = 0;
      v66 = 1;
      v52 = v88;
      goto LABEL_25;
    }

    v55 = *(v43 + 8 * v56);
    ++v61;
    if (v55)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268630718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v100 = a6;
  v110 = a2;
  v108 = a1;
  v86 = *(a4 - 8);
  v8 = *(v86 + 64);
  v9 = MEMORY[0x28223BE20](a1, a2);
  v102 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v103 = &v79 - v12;
  v104 = *(v13 + 8);
  v101 = v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v85 = *(AssociatedTypeWitness - 8);
  v16 = *(v85 + 64);
  v18 = MEMORY[0x28223BE20](AssociatedTypeWitness, v17);
  v20 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v79 - v22;
  v109 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v25 = sub_268689C74();
  v26 = *(v25 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v25, v28);
  v31 = &v79 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v34 = &v79 - v33;
  v35 = v116;
  result = sub_26862CDF8(v110);
  if (v35)
  {
    return result;
  }

  v105 = v26;
  v98 = v34;
  v94 = v31;
  v88 = v25;
  v87 = v23;
  v110 = v20;
  v99 = AssociatedTypeWitness;
  v116 = 0;
  sub_2686689EC(123, 0xE100000000000000);
  v37 = *v6;
  v38 = *(v6 + 8);
  v39 = *(v6 + 9);
  v40 = *(v6 + 48);
  v41 = *(v6 + 49);
  v113 = 0uLL;
  LOWORD(v114) = 256;
  v82 = v37;
  *(&v114 + 1) = v37;
  LOBYTE(v115) = v38;
  BYTE1(v115) = v39;
  BYTE2(v115) = v40;
  HIBYTE(v115) = v41;
  v80 = v6;
  if ((v108 & 0xC000000000000001) != 0)
  {
    v42 = sub_268689D84();
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = v42 | 0x8000000000000000;
  }

  else
  {
    v47 = -1 << *(v108 + 32);
    v44 = ~v47;
    v43 = v108 + 64;
    v48 = -v47;
    if (v48 < 64)
    {
      v49 = ~(-1 << v48);
    }

    else
    {
      v49 = -1;
    }

    v45 = v49 & *(v108 + 64);
    v46 = v108;
  }

  v50 = v99;
  v51 = v103;
  v52 = v88;
  v106 = (v86 + 32);
  v107 = (v85 + 32);
  v96 = TupleTypeMetadata2 - 8;
  v81 = v44;
  v53 = (v44 + 64) >> 6;
  v84 = v85 + 16;
  v83 = v86 + 16;
  v95 = (v105 + 32);
  v91 = v104 + 48;
  v89 = (v86 + 8);
  v90 = (v85 + 8);

  v54 = 0;
  v93 = v43;
  for (i = v46; ; v46 = i)
  {
    v97 = v45;
    v105 = v54;
    if ((v46 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_268689D94())
    {
      v57 = v87;
      sub_268689E04();
      swift_unknownObjectRelease();
      v58 = v109;
      sub_268689E04();
      swift_unknownObjectRelease();
      v56 = v105;
      v108 = v45;
LABEL_22:
      v64 = *(TupleTypeMetadata2 + 48);
      v65 = v94;
      (*v107)(v94, v57, v50);
      (*v106)(&v65[v64], v51, v58);
      v66 = 0;
      v60 = v56;
      v52 = v88;
      goto LABEL_26;
    }

    v66 = 1;
    v67 = v45;
    v60 = v105;
    v108 = v67;
LABEL_25:
    v65 = v94;
LABEL_26:
    v68 = *(TupleTypeMetadata2 - 8);
    (*(v68 + 56))(v65, v66, 1, TupleTypeMetadata2);
    v69 = v98;
    (*v95)(v98, v65, v52);
    if ((*(v68 + 48))(v69, 1, TupleTypeMetadata2) == 1)
    {
      sub_2686265DC();

      v76 = v115;
      v77 = BYTE1(v115);
      v78 = v80;
      *v80 = *(&v114 + 1);
      *(v78 + 8) = v76;
      *(v78 + 9) = v77;
      return sub_2686689EC(125, 0xE100000000000000);
    }

    v70 = *(TupleTypeMetadata2 + 48);
    v71 = v110;
    (*v107)(v110, v69, v50);
    v72 = &v69[v70];
    v73 = v102;
    v74 = v109;
    (*v106)(v102, v72, v109);
    v75 = v116;
    (*(v104 + 48))(v71, 1, &v113, &type metadata for JSONMapEncodingVisitor, &off_287929C68);
    if (v75)
    {
      sub_2686265DC();
      (*v89)(v73, v74);
      (*v90)(v110, v99);
      v111[0] = v113;
      v111[1] = v114;
      v112 = v115;
      return sub_2685D9A5C(v111);
    }

    sub_2685D7F44(&v117);
    v116 = 0;
    (*v89)(v73, v74);
    v50 = v99;
    result = (*v90)(v110, v99);
    v54 = v60;
    v45 = v108;
    v51 = v103;
    v43 = v93;
  }

  if (v45)
  {
    v55 = v45;
    v56 = v54;
    v57 = v87;
LABEL_21:
    v108 = (v55 - 1) & v55;
    v62 = __clz(__rbit64(v55)) | (v56 << 6);
    (*(v85 + 16))(v57, *(v46 + 48) + *(v85 + 72) * v62, v50);
    v63 = *(v46 + 56) + *(v86 + 72) * v62;
    v58 = v109;
    (*(v86 + 16))(v51, v63, v109);
    goto LABEL_22;
  }

  if (v53 <= v54 + 1)
  {
    v59 = v54 + 1;
  }

  else
  {
    v59 = v53;
  }

  v60 = v59 - 1;
  v61 = v54;
  v57 = v87;
  while (1)
  {
    v56 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v56 >= v53)
    {
      v108 = 0;
      v66 = 1;
      v52 = v88;
      goto LABEL_25;
    }

    v55 = *(v43 + 8 * v56);
    ++v61;
    if (v55)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_268631064(uint64_t a1, float a2)
{
  result = sub_26862CDF8(a1);
  if (!v2)
  {
    return sub_2686317B0(a2);
  }

  return result;
}

uint64_t sub_2686310A4(uint64_t a1, double a2)
{
  result = sub_26862CDF8(a1);
  if (!v2)
  {
    return sub_26863183C(a2);
  }

  return result;
}

uint64_t sub_2686310E4(unint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v2)
  {
    return sub_268631A50(a1);
  }

  return result;
}

uint64_t sub_268631120(unint64_t a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v3)
  {
    v6 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_2685B3F48(0, *(v6 + 2) + 1, 1, v6);
      *v2 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    v6[v9 + 32] = 34;
    *v2 = v6;
    sub_2686328AC(a1);
    v10 = *v2;
    result = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v10;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v10 + 16) + 1, 1, v10);
      v10 = result;
      *v2 = result;
    }

    v12 = *(v10 + 16);
    v11 = *(v10 + 24);
    if (v12 >= v11 >> 1)
    {
      result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v10);
      v10 = result;
    }

    *(v10 + 16) = v12 + 1;
    *(v10 + v12 + 32) = 34;
    *v2 = v10;
  }

  return result;
}

uint64_t sub_268631268(unsigned int a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v2)
  {
    return sub_2686328AC(a1);
  }

  return result;
}

uint64_t sub_2686312A4(char a1, uint64_t a2)
{
  result = sub_26862CDF8(a2);
  if (!v2)
  {
    if (a1)
    {
      v6 = "true";
      v7 = 4;
    }

    else
    {
      v6 = "false";
      v7 = 5;
    }

    return sub_2685B403C(v6, v7, v5);
  }

  return result;
}

uint64_t sub_268631354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t))
{
  result = sub_26862CDF8(a3);
  if (!v6)
  {
    return a6(a1, a2);
  }

  return result;
}

uint64_t sub_2686314C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2686314D8(uint64_t a1, uint64_t a2)
{
  if (*(v2 + 33))
  {
    v3 = 256;
  }

  else
  {
    v3 = 0;
  }

  return sub_26862F3B4(a1, a2, v3 | *(v2 + 32), *(v2 + 16), *(v2 + 24));
}

uint64_t AnyUnpackError.hashValue.getter()
{
  v1 = *v0;
  sub_268689E94();
  MEMORY[0x26D61D8F0](v1);
  return sub_268689EF4();
}

unint64_t sub_268631648()
{
  result = qword_28028D3D0;
  if (!qword_28028D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28028D3D0);
  }

  return result;
}

double UnknownStorage.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_26868A5E0;
  return result;
}

uint64_t UnknownStorage.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *v3;
  v5 = v3[1];
  v6 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v6)
    {
      if (result == result >> 32)
      {
        return result;
      }
    }

    else if ((v5 & 0xFF000000000000) == 0)
    {
      return result;
    }

    return (*(a3 + 448))(result);
  }

  if (v6 == 2 && *(result + 16) != *(result + 24))
  {
    return (*(a3 + 448))(result);
  }

  return result;
}

uint64_t UnknownStorage.data.getter()
{
  v1 = *v0;
  sub_2685BA80C(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_2686317B0(float a1)
{
  if ((~LODWORD(a1) & 0x7F800000) != 0)
  {
    v3 = sub_268689BE4();

    return sub_2686689EC(v3, v4);
  }

  else
  {
    if ((LODWORD(a1) & 0x7FFFFF) != 0)
    {
      v1 = "NaN";
      v2 = 5;
    }

    else if (a1 >= 0.0)
    {
      v1 = "Infinity";
      v2 = 10;
    }

    else
    {
      v1 = "-Infinity";
      v2 = 11;
    }

    return sub_2685B403C(v1, v2, LODWORD(a1));
  }
}

uint64_t sub_26863183C(double a1)
{
  if ((~*&a1 & 0x7FF0000000000000) != 0)
  {
    v3 = sub_268689BD4();

    return sub_2686689EC(v3, v4);
  }

  else
  {
    if ((*&a1 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v1 = "NaN";
      v2 = 5;
    }

    else if (a1 >= 0.0)
    {
      v1 = "Infinity";
      v2 = 10;
    }

    else
    {
      v1 = "-Infinity";
      v2 = 11;
    }

    return sub_2685B403C(v1, v2, *&a1);
  }
}

uint64_t sub_2686318C8(int a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    *v1 = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v3 = sub_2685B3F48((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v7;
  v3[v6 + 32] = 34;
  *v1 = v3;
  v8 = a1;
  if (a1 < 0)
  {
    v9 = *(v3 + 3);
    v10 = v6 + 2;
    if ((v6 + 2) > (v9 >> 1))
    {
      v15 = v8;
      v3 = sub_2685B3F48((v9 > 1), v10, 1, v3);
      v8 = v15;
    }

    *(v3 + 2) = v10;
    v3[v7 + 32] = 45;
    *v1 = v3;
    v8 = -v8;
  }

  sub_2686328AC(v8);
  v11 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v11;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v11 + 16) + 1, 1, v11);
    v11 = result;
    *v1 = result;
  }

  v14 = *(v11 + 16);
  v13 = *(v11 + 24);
  if (v14 >= v13 >> 1)
  {
    result = sub_2685B3F48((v13 > 1), v14 + 1, 1, v11);
    v11 = result;
  }

  *(v11 + 16) = v14 + 1;
  *(v11 + v14 + 32) = 34;
  *v1 = v11;
  return result;
}

uint64_t sub_268631A50(unint64_t a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    *v1 = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  v7 = v6 + 1;
  if (v6 >= v5 >> 1)
  {
    v3 = sub_2685B3F48((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v7;
  v3[v6 + 32] = 34;
  *v1 = v3;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v8 = *(v3 + 3);
    v9 = v6 + 2;
    if (v9 > (v8 >> 1))
    {
      v3 = sub_2685B3F48((v8 > 1), v9, 1, v3);
    }

    *(v3 + 2) = v9;
    v3[v7 + 32] = 45;
    *v1 = v3;
    a1 = -a1;
  }

  sub_2686328AC(a1);
  v10 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v10;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
    *v1 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_2685B3F48((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 16) = v13 + 1;
  *(v10 + v13 + 32) = 34;
  *v1 = v10;
  return result;
}

uint64_t sub_268631BCC(char a1)
{
  v3 = *v1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_2685B3F48(0, *(v3 + 2) + 1, 1, v3);
    *v1 = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_2685B3F48((v5 > 1), v6 + 1, 1, v3);
  }

  *(v3 + 2) = v6 + 1;
  v3[v6 + 32] = 34;
  *v1 = v3;
  if (a1)
  {
    v7 = "true";
    v8 = 4;
  }

  else
  {
    v7 = "false";
    v8 = 5;
  }

  sub_2685B403C(v7, v8, &v3[v6]);
  v9 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v9;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *v1 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  *(v9 + v12 + 32) = 34;
  *v1 = v9;
  return result;
}

uint64_t sub_268631D18(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_104;
  }

  while (1)
  {
    v9 = *(v6 + 16);
    v8 = *(v6 + 24);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_2685B3F48((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 16) = v9 + 1;
    *(v6 + v9 + 32) = 34;
    *v3 = v6;
    v10 = (a2 & 0x2000000000000000) != 0 ? HIBYTE(a2) & 0xF : a1 & 0xFFFFFFFFFFFFLL;
    if (!v10)
    {
      break;
    }

    v11 = 0;
    v63 = v10;
    v64 = v3;
    v62 = a1;
    v12 = a2 & 0xFFFFFFFFFFFFFFLL;
    v13 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        v17 = sub_268689CD4();
        v6 = v18;
        if (v17 <= 11)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v65[0] = a1;
        v65[1] = v12;
        v16 = v65 + v11;
      }

      else
      {
        v15 = v13;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v15 = sub_268689D24();
        }

        v16 = v15 + v11;
      }

      v17 = *v16;
      if ((*v16 & 0x80000000) == 0)
      {
LABEL_27:
        v6 = 1;
        if (*v16 <= 0xBu)
        {
          goto LABEL_28;
        }

        goto LABEL_18;
      }

      v20 = (__clz(v17 ^ 0xFF) - 24);
      if (v20 > 2)
      {
        break;
      }

      if (v20 == 1)
      {
        goto LABEL_27;
      }

      v16 = *(v16 + 1) & 0x3F | ((v17 & 0x1F) << 6);
      v17 = v16;
      v6 = 2;
      if (v16 <= 11)
      {
        goto LABEL_28;
      }

LABEL_18:
      v19 = a1;
      if (v17 > 33)
      {
        if (v17 == 34)
        {
          v14 = "\\"";
        }

        else
        {
          if (v17 != 92)
          {
            goto LABEL_37;
          }

          v14 = "\\\";
        }
      }

      else if (v17 == 12)
      {
        v14 = "\\f";
      }

      else
      {
        if (v17 != 13)
        {
          goto LABEL_37;
        }

        v14 = "\\r";
      }

LABEL_10:
      sub_2685B403C(v14, 2, v16);
      a1 = v19;
LABEL_11:
      v11 += v6;
      if (v11 >= v10)
      {

        v6 = *v3;
        goto LABEL_96;
      }
    }

    if (v20 == 3)
    {
      v32 = *(v16 + 1);
      v16 = *(v16 + 2);
      v17 = ((v17 & 0xF) << 12) | ((v32 & 0x3F) << 6) | v16 & 0x3F;
      v6 = 3;
      if (v17 <= 11)
      {
        goto LABEL_28;
      }

      goto LABEL_18;
    }

    v42 = *(v16 + 1);
    v43 = *(v16 + 2);
    v16 = *(v16 + 3);
    v17 = ((v17 & 0xF) << 18) | ((v42 & 0x3F) << 12) | ((v43 & 0x3F) << 6) | v16 & 0x3F;
    v6 = 4;
    if (v17 > 11)
    {
      goto LABEL_18;
    }

LABEL_28:
    if (v17 == 8)
    {
      v14 = "\\b";
      v19 = a1;
      goto LABEL_10;
    }

    v19 = a1;
    if (v17 == 9)
    {
      v14 = "\\t";
      goto LABEL_10;
    }

    if (v17 == 10)
    {
      v14 = "\\n";
      goto LABEL_10;
    }

LABEL_37:
    if (v17 >= 0x20)
    {
      v16 = v17 - 160;
      if (v16 < 0xFFFFFFDF)
      {
        if (v17 > 0x7E)
        {
          a1 = v19;
          if (v17 <= 0x7FF)
          {
            v21 = *v3;
            v47 = swift_isUniquelyReferenced_nonNull_native();
            *v3 = v21;
            if ((v47 & 1) == 0)
            {
              v21 = sub_2685B3F48(0, *(v21 + 2) + 1, 1, v21);
              *v3 = v21;
            }

            v49 = *(v21 + 2);
            v48 = *(v21 + 3);
            v50 = v49 + 1;
            if (v49 >= v48 >> 1)
            {
              v21 = sub_2685B3F48((v48 > 1), v49 + 1, 1, v21);
            }

            *(v21 + 2) = v50;
            v21[v49 + 32] = (v17 >> 6) | 0xC0;
            *v3 = v21;
            v51 = *(v21 + 3);
            if ((v49 + 2) > (v51 >> 1))
            {
              v21 = sub_2685B3F48((v51 > 1), v49 + 2, 1, v21);
            }

            v52 = v17 & 0x3F | 0x80;
            *(v21 + 2) = v49 + 2;
            v53 = &v21[v50];
          }

          else
          {
            if (v17 - 0x10000 >= 0xFFFF0800)
            {
              v21 = *v3;
              v54 = swift_isUniquelyReferenced_nonNull_native();
              *v3 = v21;
              if ((v54 & 1) == 0)
              {
                v21 = sub_2685B3F48(0, *(v21 + 2) + 1, 1, v21);
                *v3 = v21;
              }

              v56 = *(v21 + 2);
              v55 = *(v21 + 3);
              v57 = v56 + 1;
              if (v56 >= v55 >> 1)
              {
                v21 = sub_2685B3F48((v55 > 1), v56 + 1, 1, v21);
              }

              *(v21 + 2) = v57;
              v21[v56 + 32] = (v17 >> 12) | 0xE0;
              *v3 = v21;
              v58 = *(v21 + 3);
              v29 = v56 + 2;
              if ((v56 + 2) > (v58 >> 1))
              {
                v21 = sub_2685B3F48((v58 > 1), v56 + 2, 1, v21);
              }

              *(v21 + 2) = v29;
              v21[v57 + 32] = (v17 >> 6) & 0x3F | 0x80;
              *v3 = v21;
              v30 = *(v21 + 3);
              v31 = v56 + 3;
            }

            else
            {
              if ((((v17 >> 18) + 240) & 0x100) != 0)
              {
                goto LABEL_103;
              }

              v21 = *v3;
              v22 = swift_isUniquelyReferenced_nonNull_native();
              *v3 = v21;
              if ((v22 & 1) == 0)
              {
                v21 = sub_2685B3F48(0, *(v21 + 2) + 1, 1, v21);
                *v3 = v21;
              }

              v24 = *(v21 + 2);
              v23 = *(v21 + 3);
              v25 = v24 + 1;
              if (v24 >= v23 >> 1)
              {
                v21 = sub_2685B3F48((v23 > 1), v24 + 1, 1, v21);
              }

              *(v21 + 2) = v25;
              v21[v24 + 32] = (v17 >> 18) - 16;
              *v3 = v21;
              v26 = *(v21 + 3);
              v27 = v24 + 2;
              if ((v24 + 2) > (v26 >> 1))
              {
                v21 = sub_2685B3F48((v26 > 1), v24 + 2, 1, v21);
              }

              *(v21 + 2) = v27;
              v21[v25 + 32] = (v17 >> 12) & 0x3F | 0x80;
              *v3 = v21;
              v28 = *(v21 + 3);
              v29 = v24 + 3;
              if ((v24 + 3) > (v28 >> 1))
              {
                v21 = sub_2685B3F48((v28 > 1), v24 + 3, 1, v21);
              }

              *(v21 + 2) = v29;
              v21[v27 + 32] = (v17 >> 6) & 0x3F | 0x80;
              *v3 = v21;
              v30 = *(v21 + 3);
              v31 = v24 + 4;
            }

            if (v31 > (v30 >> 1))
            {
              v21 = sub_2685B3F48((v30 > 1), v31, 1, v21);
            }

            v52 = v17 & 0x3F | 0x80;
            *(v21 + 2) = v31;
            v53 = &v21[v29];
          }

          v53[32] = v52;
          *v3 = v21;
          v10 = v63;
          goto LABEL_94;
        }

        v35 = *v3;
        v44 = swift_isUniquelyReferenced_nonNull_native();
        *v3 = v35;
        a1 = v19;
        if ((v44 & 1) == 0)
        {
          v35 = sub_2685B3F48(0, *(v35 + 2) + 1, 1, v35);
          *v3 = v35;
        }

        v46 = *(v35 + 2);
        v45 = *(v35 + 3);
        if (v46 >= v45 >> 1)
        {
          v35 = sub_2685B3F48((v45 > 1), v46 + 1, 1, v35);
        }

        *(v35 + 2) = v46 + 1;
        v35[v46 + 32] = v17;
LABEL_75:
        *v3 = v35;
LABEL_94:
        v13 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v12 = a2 & 0xFFFFFFFFFFFFFFLL;
        goto LABEL_11;
      }
    }

    a1 = v3;
    sub_2685B403C("\\u00", 4, v16);
    if (qword_28028BDD0 != -1)
    {
      swift_once();
    }

    v33 = off_28028D3E0;
    v34 = v17 >> 4;
    if (*(off_28028D3E0 + 2) > v34)
    {
      a1 = *(off_28028D3E0 + v34 + 32);
      v35 = *v3;
      v36 = swift_isUniquelyReferenced_nonNull_native();
      *v3 = v35;
      if ((v36 & 1) == 0)
      {
        v35 = sub_2685B3F48(0, *(v35 + 2) + 1, 1, v35);
        *v3 = v35;
      }

      v3 = *(v35 + 2);
      v37 = *(v35 + 3);
      v38 = v3 + 1;
      if (v3 >= v37 >> 1)
      {
        v35 = sub_2685B3F48((v37 > 1), v3 + 1, 1, v35);
      }

      *(v35 + 2) = v38;
      *(v3 + v35 + 32) = a1;
      *v64 = v35;
      if (v33[2] <= (v17 & 0xF))
      {
        goto LABEL_102;
      }

      v39 = *(v33 + (v17 & 0xF) + 32);
      v40 = *(v35 + 3);
      v41 = v3 + 2;
      if (v3 + 2 > (v40 >> 1))
      {
        v35 = sub_2685B3F48((v40 > 1), v3 + 2, 1, v35);
      }

      v10 = v63;
      v3 = v64;
      a1 = v62;
      *(v35 + 2) = v41;
      v38[v35 + 32] = v39;
      goto LABEL_75;
    }

    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
LABEL_104:
    v6 = sub_2685B3F48(0, *(v6 + 16) + 1, 1, v6);
    *v3 = v6;
  }

LABEL_96:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
    *v3 = result;
  }

  v61 = *(v6 + 16);
  v60 = *(v6 + 24);
  if (v61 >= v60 >> 1)
  {
    result = sub_2685B3F48((v60 > 1), v61 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v61 + 1;
  *(v6 + v61 + 32) = 34;
  *v3 = v6;
  return result;
}

uint64_t sub_268632578(uint64_t a1, unint64_t a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    result = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 34;
  *v2 = v5;
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      if (!BYTE6(a2))
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < 1)
      {
        goto LABEL_13;
      }

      goto LABEL_12;
    }

LABEL_22:
    __break(1u);
    return result;
  }

  if (v9 == 2)
  {
    v11 = *(a1 + 16);
    v10 = *(a1 + 24);
    v12 = __OFSUB__(v10, v11);
    v13 = v10 - v11;
    if (v12)
    {
      __break(1u);
      goto LABEL_22;
    }

    if (v13 >= 1)
    {
LABEL_12:
      sub_268633388(a1, a2, v2);
      v5 = *v2;
    }
  }

LABEL_13:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v15 = *(v5 + 2);
  v14 = *(v5 + 3);
  if (v15 >= v14 >> 1)
  {
    result = sub_2685B3F48((v14 > 1), v15 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v15 + 1;
  v5[v15 + 32] = 34;
  *v2 = v5;
  return result;
}

char *sub_268632720()
{
  result = sub_268632740();
  off_28028D3D8 = result;
  return result;
}

char *sub_268632740()
{
  v7 = MEMORY[0x277D84F90];
  sub_268668B04(23105);
  sub_268668B04(31329);
  sub_268668B04(14640);
  v0 = v7;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_2685B3F48(0, *(v7 + 16) + 1, 1, v7);
  }

  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_2685B3F48((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v0[v2 + 32] = 43;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    v0 = sub_2685B3F48((v1 > 1), v5, 1, v0);
  }

  *(v0 + 2) = v5;
  v0[v4 + 32] = 47;
  return v0;
}

uint64_t sub_268632858()
{
  v1 = MEMORY[0x277D84F90];
  sub_268668B04(14640);
  result = sub_268668B04(17985);
  off_28028D3E0 = v1;
  return result;
}

uint64_t sub_2686328AC(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    sub_2686328AC(a1 / 0xA);
  }

  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v3 + 16) + 1, 1, v3);
    v3 = result;
    *v1 = result;
  }

  v6 = *(v3 + 16);
  v5 = *(v3 + 24);
  if (v6 >= v5 >> 1)
  {
    result = sub_2685B3F48((v5 > 1), v6 + 1, 1, v3);
    v3 = result;
  }

  *(v3 + 16) = v6 + 1;
  *(v3 + v6 + 32) = (a1 % 0xA) | 0x30;
  *v1 = v3;
  return result;
}

uint64_t sub_26863298C(uint64_t result, uint64_t a2, char **a3)
{
  if (!result)
  {
    return result;
  }

  v8 = result;
  v9 = a2 - result;
  if (a2 - result < 1)
  {
    return result;
  }

  v10 = a3;
  v11 = 0;
  v12 = 0;
  do
  {
    if (v12 == 3)
    {
      if (qword_28028BDC8 != -1)
      {
        swift_once();
      }

      v3 = off_28028D3D8;
      v12 = (v11 >> 18) & 0x3F;
      if (v12 >= *(off_28028D3D8 + 2))
      {
        goto LABEL_84;
      }

      v6 = off_28028D3D8 + 32;
      v13 = *(off_28028D3D8 + v12 + 32);
      v4 = *v10;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v10 = v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v4 = sub_2685B3F48(0, *(v4 + 16) + 1, 1, v4);
        *v10 = v4;
      }

      v10 = *(v4 + 16);
      v15 = *(v4 + 24);
      if (v10 >= v15 >> 1)
      {
        v4 = sub_2685B3F48((v15 > 1), v10 + 1, 1, v4);
        *a3 = v4;
      }

      *(v4 + 16) = v10 + 1;
      *(v10 + v4 + 32) = v13;
      v12 = (v11 >> 12) & 0x3F;
      if (v12 >= v3[2])
      {
        goto LABEL_85;
      }

      v4 = *a3;
      v16 = *(v6 + v12);
      v17 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v4;
      if ((v17 & 1) == 0)
      {
        v4 = sub_2685B3F48(0, *(v4 + 16) + 1, 1, v4);
        *a3 = v4;
      }

      v10 = *(v4 + 16);
      v18 = *(v4 + 24);
      if (v10 >= v18 >> 1)
      {
        v4 = sub_2685B3F48((v18 > 1), v10 + 1, 1, v4);
        *a3 = v4;
      }

      *(v4 + 16) = v10 + 1;
      *(v10 + v4 + 32) = v16;
      v12 = (v11 >> 6) & 0x3F;
      if (v12 >= v3[2])
      {
        goto LABEL_86;
      }

      v4 = *a3;
      v7 = *(v6 + v12);
      v19 = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v4;
      if ((v19 & 1) == 0)
      {
        v4 = sub_2685B3F48(0, *(v4 + 16) + 1, 1, v4);
        *a3 = v4;
      }

      v10 = *(v4 + 16);
      v20 = *(v4 + 24);
      if (v10 >= v20 >> 1)
      {
        v4 = sub_2685B3F48((v20 > 1), v10 + 1, 1, v4);
        *a3 = v4;
      }

      *(v4 + 16) = v10 + 1;
      *(v10 + v4 + 32) = v7;
      v12 = v11 & 0x3F;
      if (v12 >= v3[2])
      {
        goto LABEL_87;
      }

      v10 = a3;
      v4 = *a3;
      LOBYTE(v3) = *(v6 + v12);
      result = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v4;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v4 + 16) + 1, 1, v4);
        v4 = result;
        *a3 = result;
      }

      v22 = *(v4 + 16);
      v21 = *(v4 + 24);
      v5 = (v22 + 1);
      if (v22 >= v21 >> 1)
      {
        result = sub_2685B3F48((v21 > 1), v22 + 1, 1, v4);
        v4 = result;
        *a3 = result;
      }

      v12 = 0;
      v23 = 0;
      *(v4 + 16) = v5;
      *(v4 + v22 + 32) = v3;
    }

    else
    {
      v23 = v11;
    }

    if (__OFADD__(v12++, 1))
    {
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
      goto LABEL_88;
    }

    v25 = *v8++;
    v4 = v25;
    v11 = v25 | (v23 << 8);
    --v9;
  }

  while (v9);
  if (v12 == 1)
  {
    v26 = v11 << 16;
    if (qword_28028BDC8 == -1)
    {
LABEL_69:
      v5 = off_28028D3D8;
      v53 = (v26 >> 18) & 0x3F;
      if (v53 < *(off_28028D3D8 + 2))
      {
        v4 = off_28028D3D8 + 32;
        v11 = *(off_28028D3D8 + v53 + 32);
        v8 = *v10;
        v54 = swift_isUniquelyReferenced_nonNull_native();
        *v10 = v8;
        if ((v54 & 1) == 0)
        {
          goto LABEL_96;
        }

        goto LABEL_71;
      }

      __break(1u);
LABEL_92:
      swift_once();
      goto LABEL_35;
    }

LABEL_90:
    swift_once();
    goto LABEL_69;
  }

  if (v12 == 2)
  {
    v26 = v11 << 8;
    if (qword_28028BDC8 != -1)
    {
      swift_once();
    }

    v4 = off_28028D3D8;
    v42 = (v26 >> 18) & 0x3F;
    if (v42 < *(off_28028D3D8 + 2))
    {
      v5 = off_28028D3D8 + 32;
      v11 = *(off_28028D3D8 + v42 + 32);
      v8 = *v10;
      v43 = swift_isUniquelyReferenced_nonNull_native();
      *v10 = v8;
      if ((v43 & 1) == 0)
      {
        goto LABEL_94;
      }

      goto LABEL_56;
    }

    __break(1u);
    goto LABEL_90;
  }

  if (v12 != 3)
  {
    return result;
  }

  v6 = v23 << 8;
  if (qword_28028BDC8 != -1)
  {
    goto LABEL_92;
  }

LABEL_35:
  v26 = off_28028D3D8;
  v27 = (v6 >> 18) & 0x3F;
  if (v27 < *(off_28028D3D8 + 2))
  {
    v5 = off_28028D3D8 + 32;
    v7 = *(off_28028D3D8 + v27 + 32);
    v8 = *v10;
    v28 = swift_isUniquelyReferenced_nonNull_native();
    *v10 = v8;
    if (v28)
    {
      goto LABEL_37;
    }

    goto LABEL_98;
  }

  __break(1u);
LABEL_94:
  v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
  *v10 = v8;
LABEL_56:
  v10 = *(v8 + 2);
  v44 = *(v8 + 3);
  if (v10 >= v44 >> 1)
  {
    v8 = sub_2685B3F48((v44 > 1), v10 + 1, 1, v8);
    *a3 = v8;
  }

  *(v8 + 2) = v10 + 1;
  *(v10 + v8 + 32) = v11;
  v45 = (v26 >> 12) & 0x3F;
  if (v45 < *(v4 + 16))
  {
    v30 = a3;
    v8 = *a3;
    LOBYTE(v11) = v5[v45];
    v46 = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if (v46)
    {
      goto LABEL_60;
    }

    goto LABEL_100;
  }

  __break(1u);
LABEL_96:
  v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
  *v10 = v8;
LABEL_71:
  v10 = *(v8 + 2);
  v55 = *(v8 + 3);
  if (v10 >= v55 >> 1)
  {
    v8 = sub_2685B3F48((v55 > 1), v10 + 1, 1, v8);
    *a3 = v8;
  }

  *(v8 + 2) = v10 + 1;
  *(v10 + v8 + 32) = v11;
  v56 = (v26 >> 12) & 0x30;
  if (v56 < *(v5 + 2))
  {
    v48 = a3;
    v8 = *a3;
    LOBYTE(v26) = *(v4 + v56);
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if (result)
    {
      goto LABEL_75;
    }

    goto LABEL_102;
  }

  __break(1u);
LABEL_98:
  v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
  *v10 = v8;
LABEL_37:
  v30 = *(v8 + 2);
  v29 = *(v8 + 3);
  if (v30 >= v29 >> 1)
  {
    v8 = sub_2685B3F48((v29 > 1), v30 + 1, 1, v8);
    *a3 = v8;
  }

  *(v8 + 2) = v30 + 1;
  *(v30 + v8 + 32) = v7;
  v31 = (v6 >> 12) & 0x3F;
  if (v31 >= *(v26 + 16))
  {
    __break(1u);
LABEL_100:
    v8 = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
    *v30 = v8;
LABEL_60:
    v48 = *(v8 + 2);
    v47 = *(v8 + 3);
    if (v48 >= v47 >> 1)
    {
      v8 = sub_2685B3F48((v47 > 1), v48 + 1, 1, v8);
      *a3 = v8;
    }

    *(v8 + 2) = v48 + 1;
    *(v48 + v8 + 32) = v11;
    v49 = (v26 >> 6) & 0x3C;
    if (v49 < *(v4 + 16))
    {
      v36 = a3;
      v32 = *a3;
      LOBYTE(v26) = v5[v49];
      result = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v32;
      if (result)
      {
LABEL_64:
        v51 = *(v32 + 2);
        v50 = *(v32 + 3);
        if (v51 >= v50 >> 1)
        {
          result = sub_2685B3F48((v50 > 1), v51 + 1, 1, v32);
          v32 = result;
          *a3 = result;
        }

        *(v32 + 2) = v51 + 1;
        v32[v51 + 32] = v26;
        v10 = a3;
        v8 = *a3;
        v4 = *(*a3 + 2);
        v52 = *(*a3 + 3);
        v9 = v4 + 1;
        if (v4 < v52 >> 1)
        {
          LOBYTE(v3) = 61;
          goto LABEL_81;
        }

        result = sub_2685B3F48((v52 > 1), v4 + 1, 1, *a3);
        v8 = result;
        LOBYTE(v3) = 61;
LABEL_106:
        *v10 = v8;
        goto LABEL_81;
      }

LABEL_104:
      result = sub_2685B3F48(0, *(v32 + 2) + 1, 1, v32);
      v32 = result;
      *v36 = result;
      goto LABEL_64;
    }

    __break(1u);
LABEL_102:
    result = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
    v8 = result;
    *v48 = result;
LABEL_75:
    v58 = *(v8 + 2);
    v57 = *(v8 + 3);
    if (v58 >= v57 >> 1)
    {
      result = sub_2685B3F48((v57 > 1), v58 + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    *(v8 + 2) = v58 + 1;
    v8[v58 + 32] = v26;
    v10 = a3;
    v59 = *a3;
    v3 = *(*a3 + 2);
    v60 = *(*a3 + 3);
    if (v3 >= v60 >> 1)
    {
      result = sub_2685B3F48((v60 > 1), v3 + 1, 1, v59);
      v59 = result;
      *a3 = result;
    }

    *(v59 + 2) = v3 + 1;
    v61 = v3 + v59;
    LOBYTE(v3) = 61;
    v61[32] = 61;
    v8 = *a3;
LABEL_80:
    v4 = *(v8 + 2);
    v12 = *(v8 + 3);
    v9 = v4 + 1;
    if (v4 < v12 >> 1)
    {
LABEL_81:
      *(v8 + 2) = v9;
      v8[v4 + 32] = v3;
      return result;
    }

LABEL_88:
    result = sub_2685B3F48((v12 > 1), v9, 1, v8);
    v8 = result;
    goto LABEL_106;
  }

  v32 = *a3;
  v33 = v5[v31];
  v34 = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v32;
  if ((v34 & 1) == 0)
  {
    v32 = sub_2685B3F48(0, *(v32 + 2) + 1, 1, v32);
    *a3 = v32;
  }

  v36 = *(v32 + 2);
  v35 = *(v32 + 3);
  if (v36 >= v35 >> 1)
  {
    v32 = sub_2685B3F48((v35 > 1), v36 + 1, 1, v32);
    *a3 = v32;
  }

  *(v32 + 2) = v36 + 1;
  *(v36 + v32 + 32) = v33;
  v37 = (v11 >> 6) & 0x3F;
  if (v37 >= *(v26 + 16))
  {
    __break(1u);
    goto LABEL_104;
  }

  v38 = *a3;
  v39 = v5[v37];
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v38;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v38 + 2) + 1, 1, v38);
    v38 = result;
    *a3 = result;
  }

  v41 = *(v38 + 2);
  v40 = *(v38 + 3);
  if (v41 >= v40 >> 1)
  {
    result = sub_2685B3F48((v40 > 1), v41 + 1, 1, v38);
    v38 = result;
    *a3 = result;
  }

  *(v38 + 2) = v41 + 1;
  v38[v41 + 32] = v39;
  if ((v4 & 0x3F) < *(v26 + 16))
  {
    v10 = a3;
    v8 = *a3;
    LOBYTE(v3) = v5[v4 & 0x3F];
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v8;
    if ((result & 1) == 0)
    {
      result = sub_2685B3F48(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
      *a3 = result;
    }

    goto LABEL_80;
  }

  __break(1u);
  return result;
}

uint64_t sub_268633388(uint64_t a1, unint64_t a2, char **a3)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v3 != 2)
    {
      memset(v9, 0, 14);
      v4 = v9;
      goto LABEL_9;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    if (!v3)
    {
      v9[0] = a1;
      LOWORD(v9[1]) = a2;
      BYTE2(v9[1]) = BYTE2(a2);
      BYTE3(v9[1]) = BYTE3(a2);
      BYTE4(v9[1]) = BYTE4(a2);
      BYTE5(v9[1]) = BYTE5(a2);
      v4 = v9 + BYTE6(a2);
LABEL_9:
      result = sub_26863298C(v9, v4, a3);
      goto LABEL_10;
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  result = sub_2686334B0(v5, v6, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
LABEL_10:
  v8 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2686334B0(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  result = sub_268689764();
  v8 = result;
  if (result)
  {
    result = sub_268689794();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = sub_268689784();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v12 + v8;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  return sub_26863298C(v8, v14, a4);
}

uint64_t sub_268633554(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if ((*(v2 + 9) & 1) == 0)
  {
    v6 = *(v2 + 8);
    v7 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
      *v2 = v5;
    }

    v10 = *(v5 + 2);
    v9 = *(v5 + 3);
    if (v10 >= v9 >> 1)
    {
      v5 = sub_2685B3F48((v9 > 1), v10 + 1, 1, v5);
    }

    *(v5 + 2) = v10 + 1;
    v5[v10 + 32] = v6;
    *v2 = v5;
  }

  v11 = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((v11 & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v13 = *(v5 + 2);
  v12 = *(v5 + 3);
  if (v13 >= v12 >> 1)
  {
    v5 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v5);
  }

  *(v5 + 2) = v13 + 1;
  v5[v13 + 32] = 34;
  *v2 = v5;
  sub_2685B403C(a1, a2, &v5[v13]);
  v14 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v14;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v14 + 16) + 1, 1, v14);
    v14 = result;
    *v2 = result;
  }

  v17 = *(v14 + 16);
  v16 = *(v14 + 24);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    result = sub_2685B3F48((v16 > 1), v17 + 1, 1, v14);
    v14 = result;
  }

  *(v14 + 16) = v18;
  *(v14 + v17 + 32) = 34;
  *v2 = v14;
  v19 = *(v14 + 24);
  v20 = v17 + 2;
  if (v20 > (v19 >> 1))
  {
    result = sub_2685B3F48((v19 > 1), v20, 1, v14);
    v14 = result;
  }

  *(v14 + 16) = v20;
  *(v14 + v18 + 32) = 58;
  *v2 = v14;
  *(v2 + 8) = 44;
  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_268633774(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2686337BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26863381C(uint64_t a1, float a2)
{
  v7 = *MEMORY[0x277D85DE8];
  result = sub_2685B628C(a1, 5u);
  v5 = *v2;
  *v5 = a2;
  *v2 = v5 + 1;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268633894(uint64_t a1, double a2)
{
  v7 = *MEMORY[0x277D85DE8];
  result = sub_2685B628C(a1, 1u);
  v5 = *v2;
  *v5 = a2;
  *v2 = v5 + 1;
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26863390C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = (*(a4 + 40))(a3, a4);
  sub_2685B628C(a2, 0);
  return sub_2685B630C(v5);
}

uint64_t sub_268633984(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2685B628C(a2, 3u);
  result = (*(a4 + 72))(v4, &type metadata for BinaryEncodingVisitor, &off_28792D5D8, a3, a4);
  if (!v5)
  {
    return sub_2685B628C(a2, 4u);
  }

  return result;
}

uint64_t sub_268633A30(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (v4 >> 61)
  {
    __break(1u);
  }

  result = sub_2685B62D0(4 * v4);
  if (v4)
  {
    v6 = *v2;
    if (v4 >= 8 && v6 - a1 - 32 >= 0x20)
    {
      v7 = v4 & 0x1FFFFFFFFFFFFFF8;
      v8 = &v6[v4 & 0x1FFFFFFFFFFFFFF8];
      v13 = v6 + 4;
      v14 = (a1 + 48);
      v15 = v4 & 0x1FFFFFFFFFFFFFF8;
      do
      {
        v16 = *v14;
        *(v13 - 1) = *(v14 - 1);
        *v13 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 8;
      }

      while (v15);
      if (v4 == v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = 0;
      v8 = *v2;
    }

    v9 = v4 - v7;
    v10 = (a1 + 4 * v7 + 32);
    do
    {
      v11 = *v10++;
      *v8++ = v11;
      --v9;
    }

    while (v9);
LABEL_8:
    *v2 = v8;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268633B38(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (v4 >> 60)
  {
    __break(1u);
  }

  result = sub_2685B62D0(8 * v4);
  if (v4)
  {
    v6 = *v2;
    if (v4 >= 6 && v6 - a1 - 32 >= 0x20)
    {
      v7 = v4 & 0xFFFFFFFFFFFFFFCLL;
      v8 = &v6[v4 & 0xFFFFFFFFFFFFFFCLL];
      v13 = v6 + 2;
      v14 = (a1 + 48);
      v15 = v4 & 0xFFFFFFFFFFFFFFCLL;
      do
      {
        v16 = *v14;
        *(v13 - 1) = *(v14 - 1);
        *v13 = v16;
        v13 += 2;
        v14 += 2;
        v15 -= 4;
      }

      while (v15);
      if (v4 == v7)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v7 = 0;
      v8 = *v2;
    }

    v9 = v4 - v7;
    v10 = (a1 + 8 * v7 + 32);
    do
    {
      v11 = *v10++;
      *v8++ = v11;
      --v9;
    }

    while (v9);
LABEL_8:
    *v2 = v8;
  }

  v12 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_268633C40(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return sub_2685B62D0(0);
  }

  result = 0;
  v6 = 0;
  v7 = a1 + 32;
  do
  {
    v8 = *(v7 + 4 * v6);
    if ((v8 & 0x80000000) != 0)
    {
      v9 = 10;
    }

    else if (v8 > 0x7F)
    {
      if (v8 >= 0x4000)
      {
        if (v8 >> 28)
        {
          v10 = 5;
        }

        else
        {
          v10 = 4;
        }

        if (v8 >= 0x200000)
        {
          v9 = v10;
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
    }

    v11 = __OFADD__(result, v9);
    result += v9;
    if (v11)
    {
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (v4 != v6);
  result = sub_2685B62D0(result);
  v12 = 0;
  v13 = *v2;
  do
  {
    v15 = *(v7 + 4 * v12);
    if (v15 < 0x80)
    {
      LODWORD(v14) = *(v7 + 4 * v12);
    }

    else
    {
      do
      {
        *v13++ = v15 | 0x80;
        v14 = v15 >> 7;
        v16 = v15 >> 14;
        v15 >>= 7;
      }

      while (v16);
    }

    ++v12;
    *v13++ = v14;
  }

  while (v12 != v4);
  *v2 = v13;
  return result;
}

uint64_t sub_268633D50(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return sub_2685B62D0(0);
  }

  result = 0;
  v6 = 0;
  v7 = a1 + 32;
  do
  {
    v8 = (2 * *(v7 + 4 * v6)) ^ (*(v7 + 4 * v6) >> 31);
    if (v8 >= 0x80)
    {
      if (v8 >> 14)
      {
        if (v8 >= 0x200000)
        {
          if (v8 >> 28)
          {
            v9 = 5;
          }

          else
          {
            v9 = 4;
          }
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
    }

    v10 = __OFADD__(result, v9);
    result += v9;
    if (v10)
    {
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (v4 != v6);
  result = sub_2685B62D0(result);
  v11 = 0;
  v12 = *v2;
  do
  {
    v14 = (2 * *(v7 + 4 * v11)) ^ (*(v7 + 4 * v11) >> 63);
    if (v14 < 0x80)
    {
      LOBYTE(v13) = (2 * *(v7 + 4 * v11)) ^ (*(v7 + 4 * v11) >> 63);
    }

    else
    {
      do
      {
        *v12++ = v14 | 0x80;
        v13 = v14 >> 7;
        v15 = v14 >> 14;
        v14 >>= 7;
      }

      while (v15);
    }

    ++v11;
    *v12++ = v13;
  }

  while (v11 != v4);
  *v2 = v12;
  return result;
}

uint64_t sub_268633E68(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return sub_2685B62D0(0);
  }

  result = 0;
  v6 = 0;
  v7 = a1 + 32;
  do
  {
    v8 = (2 * *(v7 + 8 * v6)) ^ (*(v7 + 8 * v6) >> 63);
    if (v8 < 0x80)
    {
      v9 = 1;
      goto LABEL_18;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = 10;
      goto LABEL_18;
    }

    if (!(v8 >> 35))
    {
      if (v8 < 0x200000)
      {
        v9 = 2;
        if (v8 >= 0x4000)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v9 = 4;
LABEL_16:
      if (!(v8 >> 28))
      {
        goto LABEL_18;
      }

LABEL_17:
      ++v9;
      goto LABEL_18;
    }

    if (v8 >> 49)
    {
      v8 >>= 28;
      v9 = 8;
      goto LABEL_16;
    }

    v9 = 6;
    if (v8 >> 42)
    {
      goto LABEL_17;
    }

LABEL_18:
    v10 = __OFADD__(result, v9);
    result += v9;
    if (v10)
    {
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (v4 != v6);
  result = sub_2685B62D0(result);
  v11 = 0;
  v12 = *v2;
  do
  {
    v14 = (2 * *(v7 + 8 * v11)) ^ (*(v7 + 8 * v11) >> 63);
    if (v14 < 0x80)
    {
      LOBYTE(v13) = (2 * *(v7 + 8 * v11)) ^ (*(v7 + 8 * v11) >> 63);
    }

    else
    {
      do
      {
        *v12++ = v14 | 0x80;
        v13 = v14 >> 7;
        v15 = v14 >> 14;
        v14 >>= 7;
      }

      while (v15);
    }

    ++v11;
    *v12++ = v13;
  }

  while (v11 != v4);
  *v2 = v12;
  return result;
}

uint64_t sub_268633FB0(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return sub_2685B62D0(0);
  }

  result = 0;
  v6 = 0;
  v7 = a1 + 32;
  do
  {
    v8 = *(v7 + 4 * v6);
    if (v8 >= 0x80)
    {
      if (v8 >> 14)
      {
        if (v8 >> 28)
        {
          v10 = 5;
        }

        else
        {
          v10 = 4;
        }

        if (v8 >= 0x200000)
        {
          v9 = v10;
        }

        else
        {
          v9 = 3;
        }
      }

      else
      {
        v9 = 2;
      }
    }

    else
    {
      v9 = 1;
    }

    v11 = __OFADD__(result, v9);
    result += v9;
    if (v11)
    {
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (v4 != v6);
  result = sub_2685B62D0(result);
  v12 = 0;
  v13 = *v2;
  do
  {
    v15 = *(v7 + 4 * v12);
    if (v15 < 0x80)
    {
      LODWORD(v14) = *(v7 + 4 * v12);
    }

    else
    {
      do
      {
        *v13++ = v15 | 0x80;
        v14 = v15 >> 7;
        v16 = v15 >> 14;
        v15 >>= 7;
      }

      while (v16);
    }

    ++v12;
    *v13++ = v14;
  }

  while (v12 != v4);
  *v2 = v13;
  return result;
}

uint64_t sub_2686340B4(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  if (!v4)
  {
    return sub_2685B62D0(0);
  }

  result = 0;
  v6 = 0;
  v7 = a1 + 32;
  do
  {
    v8 = *(v7 + 8 * v6);
    if (v8 < 0x80)
    {
      v9 = 1;
      goto LABEL_18;
    }

    if ((v8 & 0x8000000000000000) != 0)
    {
      v9 = 10;
      goto LABEL_18;
    }

    if (!(v8 >> 35))
    {
      if (v8 < 0x200000)
      {
        v9 = 2;
        if (v8 >= 0x4000)
        {
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      v9 = 4;
LABEL_16:
      if (!(v8 >> 28))
      {
        goto LABEL_18;
      }

LABEL_17:
      ++v9;
      goto LABEL_18;
    }

    if (v8 >> 49)
    {
      v8 >>= 28;
      v9 = 8;
      goto LABEL_16;
    }

    v9 = 6;
    if (v8 >> 42)
    {
      goto LABEL_17;
    }

LABEL_18:
    v10 = __OFADD__(result, v9);
    result += v9;
    if (v10)
    {
      __break(1u);
      return result;
    }

    ++v6;
  }

  while (v4 != v6);
  result = sub_2685B62D0(result);
  v11 = 0;
  v12 = *v2;
  do
  {
    v14 = *(v7 + 8 * v11);
    if (v14 < 0x80)
    {
      v13 = *(v7 + 8 * v11);
    }

    else
    {
      do
      {
        *v12++ = v14 | 0x80;
        v13 = v14 >> 7;
        v15 = v14 >> 14;
        v14 >>= 7;
      }

      while (v15);
    }

    ++v11;
    *v12++ = v13;
  }

  while (v11 != v4);
  *v2 = v12;
  return result;
}

uint64_t sub_2686341EC(uint64_t a1, uint64_t a2)
{
  sub_2685B628C(a2, 2u);
  v4 = *(a1 + 16);
  result = sub_2685B62D0(v4);
  if (v4)
  {
    v6 = *v2;
    if (v4 >= 0x20 && &v6[-2] - a1 >= 0x20)
    {
      v7 = v4 & 0x7FFFFFFFFFFFFFE0;
      v8 = (v6 + (v4 & 0x7FFFFFFFFFFFFFE0));
      v12 = a1 + 63;
      v13.i64[0] = 0x101010101010101;
      v13.i64[1] = 0x101010101010101;
      v14 = v4 & 0x7FFFFFFFFFFFFFE0;
      do
      {
        v15 = *(v12 - 15);
        *v6 = vandq_s8(*(v12 - 31), v13);
        v6[1] = vandq_s8(v15, v13);
        v6 += 2;
        v12 += 32;
        v14 -= 32;
      }

      while (v14);
      if (v4 == v7)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = 0;
      v8 = *v2;
    }

    v9 = v4 - v7;
    v10 = (v7 + a1 + 32);
    do
    {
      v11 = *v10++;
      v8->i8[0] = v11;
      v8 = (v8 + 1);
      --v9;
    }

    while (v9);
LABEL_7:
    *v2 = v8;
  }

  return result;
}

uint64_t sub_2686343B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v39 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v11;
  MEMORY[0x28223BE20](v10, v12);
  v14 = &v33 - v13;
  v34 = v4;
  sub_2685B628C(v15, 2u);
  if (!sub_268689B74())
  {
    goto LABEL_23;
  }

  v16 = 0;
  v17 = 0;
  v36 = *(a4 + 40);
  v37 = a4 + 40;
  v38 = (v8 + 16);
  v35 = (v8 + 8);
  while (1)
  {
    v18 = sub_268689B64();
    sub_268689B24();
    if (v18)
    {
      v19 = a4;
      (*(v8 + 16))(v14, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v16, a3);
      a4 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      goto LABEL_5;
    }

    result = sub_268689D14();
    if (v33 != 8)
    {
      goto LABEL_40;
    }

    v19 = a4;
    v40 = result;
    (*v38)(v14, &v40, a3);
    swift_unknownObjectRelease();
    a4 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

LABEL_5:
    v20 = v36(a3, v19);
    result = (*v35)(v14, a3);
    v22 = 4;
    if (v20 >> 28)
    {
      v22 = 5;
    }

    if (v20 < 0x200000)
    {
      v22 = 3;
    }

    if (v20 < 0x4000)
    {
      v22 = 2;
    }

    if (v20 <= 0x7F)
    {
      v22 = 1;
    }

    if ((v20 & 0x80000000) != 0)
    {
      v22 = 10;
    }

    v23 = __OFADD__(v17, v22);
    v17 += v22;
    if (v23)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      return result;
    }

    ++v16;
    v24 = a4 == sub_268689B74();
    a4 = v19;
    if (v24)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_23:
  v17 = 0;
LABEL_24:
  v25 = v34;
  sub_2685B62D0(v17);
  result = sub_268689B74();
  if (!result)
  {
    return result;
  }

  v26 = 0;
  v27 = *v25;
  v36 = *(a4 + 40);
  v37 = a4 + 40;
  v38 = (v8 + 16);
  while (2)
  {
    v29 = sub_268689B64();
    sub_268689B24();
    if (v29)
    {
      result = (*(v8 + 16))(v39, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v26, a3);
      v23 = __OFADD__(v26++, 1);
      if (v23)
      {
        break;
      }

      goto LABEL_30;
    }

    result = sub_268689D14();
    if (v33 != 8)
    {
      goto LABEL_41;
    }

    v40 = result;
    (*v38)(v39, &v40, a3);
    result = swift_unknownObjectRelease();
    v23 = __OFADD__(v26++, 1);
    if (!v23)
    {
LABEL_30:
      v30 = v39;
      v31 = v36(a3, a4);
      (*(v8 + 8))(v30, a3);
      if (v31 < 0x80)
      {
        LOBYTE(v28) = v31;
      }

      else
      {
        do
        {
          *v27++ = v31 | 0x80;
          v28 = v31 >> 7;
          v32 = v31 >> 14;
          v31 >>= 7;
        }

        while (v32);
      }

      *v27++ = v28;
      result = sub_268689B74();
      if (v26 == result)
      {
        goto LABEL_37;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_37:
  *v34 = v27;
  return result;
}

uint64_t sub_2686347D8(unint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v99 = *(a6 + 8);
  v96 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  v13 = *(v75 + 64);
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness, v14);
  v103 = v73 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v88 = v73 - v18;
  v100 = *(a5 + 8);
  v98 = a3;
  v19 = swift_getAssociatedTypeWitness();
  v74 = *(v19 - 8);
  v20 = *(v74 + 64);
  v22 = MEMORY[0x28223BE20](v19, v21);
  v106 = v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v24);
  v77 = v73 - v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v86 = sub_268689C74();
  v26 = *(v86 - 8);
  v27 = *(v26 + 64);
  v29 = MEMORY[0x28223BE20](v86, v28);
  v31 = v73 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29, v32);
  v85 = v73 - v33;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v34 = sub_268689D84();
    v35 = 0;
    v36 = 0;
    v105 = 0;
    v89 = v34 | 0x8000000000000000;
  }

  else
  {
    v37 = -1 << *(a1 + 32);
    v36 = ~v37;
    v35 = a1 + 64;
    v38 = -v37;
    if (v38 < 64)
    {
      v39 = ~(-1 << v38);
    }

    else
    {
      v39 = -1;
    }

    v105 = v39 & *(a1 + 64);
    v89 = a1;
  }

  v94 = (v74 + 32);
  v93 = (v75 + 32);
  v83 = TupleTypeMetadata2 - 8;
  v73[1] = v36;
  v87 = (v36 + 64) >> 6;
  v73[3] = v74 + 16;
  v73[2] = v75 + 16;
  v82 = (v26 + 32);
  v79 = 8 * (a2 & 0x1FFFFFFF);
  v78 = v79 | 2;
  v97 = v100 + 48;
  v95 = v99 + 48;
  v80 = (v75 + 8);
  v81 = (v74 + 8);

  v41 = 0;
  v102 = v7;
  v42 = v103;
  v43 = v88;
  v76 = v31;
  for (i = v35; ; v35 = i)
  {
    v90 = v41;
    if ((v89 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_268689D94())
    {
      sub_268689E04();
      swift_unknownObjectRelease();
      sub_268689E04();
      swift_unknownObjectRelease();
      v46 = v90;
      v92 = v105;
LABEL_22:
      v7 = v102;
      v52 = *(TupleTypeMetadata2 + 48);
      v31 = v76;
      (*v94)();
      (*v93)(&v31[v52], v43, AssociatedTypeWitness);
      v53 = 0;
      v48 = v46;
      v42 = v103;
      goto LABEL_23;
    }

    v53 = 1;
    v48 = v90;
    v92 = v105;
    v7 = v102;
LABEL_23:
    v54 = TupleTypeMetadata2;
    v55 = *(TupleTypeMetadata2 - 8);
    (*(v55 + 56))(v31, v53, 1, TupleTypeMetadata2);
    v56 = v85;
    (*v82)(v85, v31, v86);
    if ((*(v55 + 48))(v56, 1, v54) == 1)
    {
      return sub_2686265DC();
    }

    v57 = *(TupleTypeMetadata2 + 48);
    (*v94)(v106, v56, v19);
    (*v93)(v42, &v56[v57], AssociatedTypeWitness);
    v58 = *v7;
    if (v79 < 0x80)
    {
      LOBYTE(v61) = v78;
      v60 = v101;
    }

    else
    {
      v59 = v78;
      v60 = v101;
      do
      {
        *v58++ = v59 | 0x80;
        v61 = v59 >> 7;
        v62 = v59 >> 14;
        v59 >>= 7;
      }

      while (v62);
    }

    *v58 = v61;
    v63 = v58 + 1;
    *v102 = v63;
    v107 = 0;
    v64 = *(v100 + 48);
    v64(v106, 1, &v107, &type metadata for BinaryEncodingSizeVisitor);
    if (v60)
    {
      v101 = v60;
      v72 = v103;
      sub_2686265DC();
      (*v80)(v72, AssociatedTypeWitness);
      return (*v81)(v106, v19);
    }

    v65 = v19;
    v66 = AssociatedTypeWitness;
    v67 = *(v99 + 48);
    v67(v103, 2, &v107, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
    v91 = v48;
    v68 = v107;
    if (v107 < 0x80)
    {
      LOBYTE(v69) = v107;
    }

    else
    {
      do
      {
        *v63++ = v68 | 0x80;
        v69 = v68 >> 7;
        v70 = v68 >> 14;
        v68 >>= 7;
      }

      while (v70);
    }

    *v63 = v69;
    v71 = v102;
    *v102 = v63 + 1;
    v7 = v71;
    (v64)(v106, 1, v71, &type metadata for BinaryEncodingVisitor, &off_28792D5D8);
    v42 = v103;
    v67(v103, 2, v7, &type metadata for BinaryEncodingVisitor, &off_28792D5D8);
    v101 = 0;
    AssociatedTypeWitness = v66;
    (*v80)(v42, v66);
    v19 = v65;
    result = (*v81)(v106, v65);
    v41 = v91;
    v105 = v92;
    v43 = v88;
  }

  if (v105)
  {
    v44 = v105;
    v45 = v105;
    v46 = v41;
LABEL_21:
    v105 = v45;
    v92 = (v44 - 1) & v44;
    v50 = __clz(__rbit64(v44)) | (v46 << 6);
    v51 = v89;
    (*(v74 + 16))(v77, *(v89 + 48) + *(v74 + 72) * v50, v19);
    (*(v75 + 16))(v43, *(v51 + 56) + *(v75 + 72) * v50, AssociatedTypeWitness);
    goto LABEL_22;
  }

  if (v87 <= v41 + 1)
  {
    v47 = v41 + 1;
  }

  else
  {
    v47 = v87;
  }

  v48 = v47 - 1;
  v49 = v41;
  while (1)
  {
    v46 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v46 >= v87)
    {
      v92 = 0;
      v53 = 1;
      goto LABEL_23;
    }

    v44 = *(v35 + 8 * v46);
    ++v49;
    if (v44)
    {
      v45 = v105;
      goto LABEL_21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26863514C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v98 = a6;
  v96 = a2;
  v73 = *(a4 - 8);
  v10 = *(v73 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v101 = v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v13);
  v77 = v71 - v14;
  v99 = *(v15 + 8);
  v97 = v16;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v72 = *(AssociatedTypeWitness - 8);
  v18 = *(v72 + 64);
  v20 = MEMORY[0x28223BE20](AssociatedTypeWitness, v19);
  v22 = v71 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v23);
  v75 = v71 - v24;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v87 = sub_268689C74();
  v26 = *(*(v87 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v87, v27);
  v30 = v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28, v31);
  v34 = v71 - v33;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v35 = v32;
    v36 = sub_268689D84();
    v32 = v35;
    v37 = 0;
    v38 = 0;
    v90 = 0;
    v88 = v36 | 0x8000000000000000;
  }

  else
  {
    v39 = -1 << *(a1 + 32);
    v38 = ~v39;
    v37 = a1 + 64;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v90 = v41 & *(a1 + 64);
    v88 = a1;
  }

  v92 = (v72 + 32);
  v91 = (v73 + 32);
  v85 = TupleTypeMetadata2 - 8;
  v71[0] = v38;
  v42 = (v38 + 64) >> 6;
  v71[2] = v72 + 16;
  v71[1] = v73 + 16;
  v84 = (v32 + 32);
  v80 = 8 * (v96 & 0x1FFFFFFF);
  v79 = v80 | 2;
  v96 = v99 + 48;
  v78 = v98 + 40;
  v81 = (v73 + 8);
  v82 = (v72 + 8);

  v44 = 0;
  v83 = AssociatedTypeWitness;
  v76 = v22;
  v74 = v30;
  v95 = v34;
  v86 = v37;
  v45 = v90;
  while (1)
  {
    v89 = v44;
    v90 = v45;
    if ((v88 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (!sub_268689D94())
    {
      v56 = 1;
      v93 = v89;
      v94 = v90;
      goto LABEL_22;
    }

    sub_268689E04();
    swift_unknownObjectRelease();
    v48 = v77;
    sub_268689E04();
    swift_unknownObjectRelease();
    v47 = v89;
    v94 = v90;
LABEL_21:
    v55 = *(TupleTypeMetadata2 + 48);
    v30 = v74;
    (*v92)();
    (*v91)(&v30[v55], v48, a4);
    v56 = 0;
    v93 = v47;
    v22 = v76;
LABEL_22:
    v34 = v95;
LABEL_23:
    v57 = *(TupleTypeMetadata2 - 8);
    (*(v57 + 56))(v30, v56, 1, TupleTypeMetadata2);
    (*v84)(v34, v30, v87);
    if ((*(v57 + 48))(v34, 1, TupleTypeMetadata2) == 1)
    {
      return sub_2686265DC();
    }

    v58 = *(TupleTypeMetadata2 + 48);
    (*v92)(v22, v34, AssociatedTypeWitness);
    (*v91)(v101, &v34[v58], a4);
    v59 = *v7;
    if (v80 < 0x80)
    {
      LOBYTE(v62) = v79;
      v61 = v100;
    }

    else
    {
      v60 = v79;
      v61 = v100;
      do
      {
        *v59++ = v60 | 0x80;
        v62 = v60 >> 7;
        v63 = v60 >> 14;
        v60 >>= 7;
      }

      while (v63);
    }

    *v59 = v62;
    v64 = v59 + 1;
    *v7 = v64;
    v102 = 0;
    v65 = *(v99 + 48);
    v65(v22, 1, &v102, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
    if (v61)
    {
      v100 = v61;
      sub_2686265DC();
      (*v81)(v101, a4);
      return (*v82)(v22, v83);
    }

    sub_268623B8C(v101, 2, a4, v98);
    v66 = v102;
    if (v102 < 0x80)
    {
      LOBYTE(v67) = v102;
    }

    else
    {
      do
      {
        *v64++ = v66 | 0x80;
        v67 = v66 >> 7;
        v68 = v66 >> 14;
        v66 >>= 7;
      }

      while (v68);
    }

    *v64 = v67;
    *v7 = (v64 + 1);
    v65(v22, 1, v7, &type metadata for BinaryEncodingVisitor, &off_28792D5D8);
    v100 = 0;
    v69 = v101;
    v70 = (*(v98 + 40))(a4);
    sub_2685B628C(2, 0);
    sub_2685B630C(v70);
    (*v81)(v69, a4);
    AssociatedTypeWitness = v83;
    result = (*v82)(v22, v83);
    v44 = v93;
    v45 = v94;
    v34 = v95;
    v37 = v86;
  }

  if (v45)
  {
    v46 = v45;
    v47 = v44;
LABEL_20:
    v94 = (v46 - 1) & v46;
    v52 = __clz(__rbit64(v46)) | (v47 << 6);
    v53 = v88;
    (*(v72 + 16))(v75, *(v88 + 48) + *(v72 + 72) * v52, AssociatedTypeWitness);
    v54 = *(v53 + 56) + *(v73 + 72) * v52;
    v48 = v77;
    (*(v73 + 16))(v77, v54, a4);
    goto LABEL_21;
  }

  if (v42 <= v44 + 1)
  {
    v49 = v44 + 1;
  }

  else
  {
    v49 = v42;
  }

  v50 = v49 - 1;
  v51 = v44;
  while (1)
  {
    v47 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v47 >= v42)
    {
      v93 = v50;
      v94 = 0;
      v56 = 1;
      goto LABEL_23;
    }

    v46 = *(v37 + 8 * v47);
    ++v51;
    if (v46)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2686359BC(unint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v92 = a6;
  v99 = a2;
  v71 = *(a4 - 8);
  v10 = *(v71 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v13 = v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v74 = v69 - v15;
  v96 = *(v16 + 8);
  v94 = v17;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v18 = *(v70 + 64);
  v19 = MEMORY[0x28223BE20](AssociatedTypeWitness, AssociatedTypeWitness);
  v21 = v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v22);
  v73 = v69 - v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v85 = sub_268689C74();
  v25 = *(*(v85 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v85, v26);
  v29 = v69 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27, v30);
  v84 = v69 - v32;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v33 = v31;
    v34 = sub_268689D84();
    v31 = v33;
    v35 = 0;
    v36 = 0;
    v87 = 0;
    v37 = v34 | 0x8000000000000000;
  }

  else
  {
    v38 = -1 << *(a1 + 32);
    v36 = ~v38;
    v35 = a1 + 64;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v87 = v40 & *(a1 + 64);
    v37 = a1;
  }

  v91 = (v70 + 32);
  v90 = (v71 + 32);
  v81 = TupleTypeMetadata2 - 8;
  v69[0] = v36;
  v41 = (v36 + 64) >> 6;
  v69[2] = v70 + 16;
  v69[1] = v71 + 16;
  v80 = (v31 + 32);
  v77 = 8 * (v99 & 0x1FFFFFFF);
  v76 = v77 | 2;
  v93 = v96 + 48;
  v78 = (v71 + 8);
  v79 = (v70 + 8);

  v43 = 0;
  v95 = v13;
  v99 = v7;
  v75 = v21;
  v72 = v29;
  v82 = v37;
  v83 = v35;
  v44 = v87;
  v86 = 0;
  if ((v37 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (v44)
  {
    v45 = v44;
    v46 = v43;
LABEL_19:
    v89 = (v45 - 1) & v45;
    v51 = __clz(__rbit64(v45)) | (v46 << 6);
    (*(v70 + 16))(v73, *(v37 + 48) + *(v70 + 72) * v51, AssociatedTypeWitness);
    v47 = v74;
    (*(v71 + 16))(v74, *(v37 + 56) + *(v71 + 72) * v51, a4);
    goto LABEL_20;
  }

  if (v41 <= v43 + 1)
  {
    v48 = v43 + 1;
  }

  else
  {
    v48 = v41;
  }

  v49 = v48 - 1;
  v50 = v43;
  while (1)
  {
    v46 = v50 + 1;
    if (__OFADD__(v50, 1))
    {
      __break(1u);
      return result;
    }

    if (v46 >= v41)
    {
      break;
    }

    v45 = *(v35 + 8 * v46);
    ++v50;
    if (v45)
    {
      goto LABEL_19;
    }
  }

  v88 = v49;
  v89 = 0;
  v53 = 1;
  while (1)
  {
    v54 = *(TupleTypeMetadata2 - 8);
    (*(v54 + 56))(v29, v53, 1, TupleTypeMetadata2);
    v55 = v84;
    (*v80)(v84, v29, v85);
    if ((*(v54 + 48))(v55, 1, TupleTypeMetadata2) == 1)
    {
      return sub_2686265DC();
    }

    v56 = *(TupleTypeMetadata2 + 48);
    (*v91)(v21, v55, AssociatedTypeWitness);
    (*v90)(v13, &v55[v56], a4);
    v57 = *v7;
    if (v77 < 0x80)
    {
      LOBYTE(v60) = v76;
      v59 = v97;
    }

    else
    {
      v58 = v76;
      v59 = v97;
      do
      {
        *v57++ = v58 | 0x80;
        v60 = v58 >> 7;
        v61 = v58 >> 14;
        v58 >>= 7;
      }

      while (v61);
    }

    *v57 = v60;
    v62 = v57 + 1;
    *v99 = v62;
    v100 = 0;
    v63 = *(v96 + 48);
    v63(v21, 1, &v100, &type metadata for BinaryEncodingSizeVisitor, &off_28792CAA8);
    v35 = v83;
    if (v59)
    {
      v97 = v59;
      v68 = v95;
      sub_2686265DC();
      (*v78)(v68, a4);
      return (*v79)(v21, AssociatedTypeWitness);
    }

    sub_268624240(v95, 2, a4, v92);
    v64 = v100;
    if (v100 < 0x80)
    {
      LOBYTE(v65) = v100;
    }

    else
    {
      do
      {
        *v62++ = v64 | 0x80;
        v65 = v64 >> 7;
        v66 = v64 >> 14;
        v64 >>= 7;
      }

      while (v66);
    }

    *v62 = v65;
    v67 = v99;
    *v99 = v62 + 1;
    v7 = v67;
    v63(v21, 1, v67, &type metadata for BinaryEncodingVisitor, &off_28792D5D8);
    v13 = v95;
    sub_2685B61CC(v95, 2, a4, v92);
    v97 = 0;
    (*v78)(v13, a4);
    result = (*v79)(v21, AssociatedTypeWitness);
    v43 = v88;
    v44 = v89;
    v37 = v82;
    v86 = v88;
    v87 = v89;
    if ((v82 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    if (sub_268689D94())
    {
      sub_268689E04();
      swift_unknownObjectRelease();
      v47 = v74;
      sub_268689E04();
      swift_unknownObjectRelease();
      v46 = v86;
      v89 = v87;
LABEL_20:
      v52 = *(TupleTypeMetadata2 + 48);
      v29 = v72;
      (*v91)();
      (*v90)(&v29[v52], v47, a4);
      v53 = 0;
      v88 = v46;
      v7 = v99;
      v21 = v75;
      continue;
    }

    v53 = 1;
    v88 = v86;
    v89 = v87;
    v7 = v99;
  }
}

uint64_t sub_268636254(int a1, uint64_t a2)
{
  v2 = (2 * a1) ^ (a1 >> 63);
  sub_2685B628C(a2, 0);
  return sub_2685B630C(v2);
}

uint64_t sub_268636298(uint64_t a1, uint64_t a2)
{
  v2 = (2 * a1) ^ (a1 >> 63);
  sub_2685B628C(a2, 0);
  return sub_2685B630C(v2);
}

uint64_t sub_2686362D8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = sub_2685B628C(a3, 2u);
  v6 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v6 != 2)
    {
      result = 0;
      goto LABEL_11;
    }

    v8 = *(a1 + 16);
    v7 = *(a1 + 24);
    result = v7 - v8;
    if (!__OFSUB__(v7, v8))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v6)
  {
    result = BYTE6(a2);
LABEL_11:
    sub_2685B62D0(result);
    return sub_2685CFF98(a1, a2);
  }

  if (!__OFSUB__(HIDWORD(a1), a1))
  {
    result = HIDWORD(a1) - a1;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_26863647C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v7 = *v3;
  result = sub_2685DC814(&v7, a2, a3, v5);
  if (!v4)
  {
    *v3 = v7;
  }

  return result;
}

uint64_t sub_2686364E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *v4;
  *v8 = 4107;
  *v4 = v8 + 1;
  sub_2685B62D0(a2);
  v9 = *v4;
  *v9 = 26;
  *v4 = v9 + 1;
  result = sub_2685B59A8(a3, a4);
  if (!v5)
  {
    sub_2685B62D0(result);
    v12 = *v4;
    result = (*(a4 + 72))(&v12, &type metadata for BinaryEncodingVisitor, &off_28792D5D8, a3, a4);
    v11 = v12;
    *v12 = 12;
    *v4 = v11 + 1;
  }

  return result;
}

uint64_t sub_2686365F0(int a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_2685B8ADC(a1, a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26863663C(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x277D85DE8];
  result = sub_2685B8B50(a1, a2);
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

unint64_t sub_2686366F0(uint64_t a1)
{
  if (a1 % 86400 >= 0)
  {
    v1 = a1 % 86400;
  }

  else
  {
    v1 = (a1 % 86400) + 86400;
  }

  v2 = sub_268649914(v1, 60) % 60;
  if (v2 >= 0)
  {
    v3 = v2;
  }

  else
  {
    v3 = (v2 + 60);
  }

  return sub_268649914(v1, 3600) | (v3 << 32);
}

uint64_t sub_2686367AC(uint64_t a1)
{
  v1 = __OFADD__(a1, 0x3118A41200);
  result = a1 + 0x3118A41200;
  if (v1)
  {
    __break(1u);
    goto LABEL_31;
  }

  result = sub_268649940(result, 86400);
  v3 = result + 1401;
  if (__OFADD__(result, 1401))
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((result - 0x2000000000000000) >> 62 != 3)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v1 = __OFADD__(274277, 4 * result);
  result = 4 * result + 274277;
  if (v1)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v4 = sub_268649940(result, 146097);
  v5 = (v4 * 3) >> 64;
  result = 3 * v4;
  if (v5 != result >> 63)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  result = sub_268649940(result, 4);
  v6 = v3 + result;
  if (__OFADD__(v3, result))
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v1 = __OFSUB__(v6, 38);
  v7 = v6 - 38;
  if (v1)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if ((v7 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v8 = (4 * v7) | 3;
  if (v8 % 1461 >= 0)
  {
    v9 = v8 % 1461;
  }

  else
  {
    v9 = v8 % 1461 + 1461;
  }

  result = sub_268649940(v9, 4);
  v10 = 5 * result;
  if ((result * 5) >> 64 != (5 * result) >> 63)
  {
    goto LABEL_38;
  }

  v11 = v10 + 2;
  v12 = ((v10 + 2) * 0x358AE0358AE0358BLL) >> 64;
  v13 = v11 - 153 * ((v12 >> 5) + (v12 >> 63));
  if (v13 >= 0)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 153;
  }

  result = sub_268649940(v14, 5);
  v15 = result + 1;
  if (__OFADD__(result, 1))
  {
    goto LABEL_39;
  }

  result = sub_268649940(v11, 153);
  if (__OFADD__(result, 2))
  {
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v16 = (result + 2) % 12;
  if (v16 >= 0)
  {
    v17 = (result + 2) % 12;
  }

  else
  {
    v17 = v16 + 12;
  }

  result = sub_268649940(v8, 1461);
  v18 = result - 4716;
  if (__OFADD__(result, -4716))
  {
    goto LABEL_41;
  }

  result = sub_268649940(13 - v17, 12);
  v19 = v18 + result;
  if (__OFADD__(v18, result))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v19 > 0x7FFFFFFF)
  {
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (v15 < 0xFFFFFFFF80000000 || v19 < 0xFFFFFFFF80000000)
  {
    goto LABEL_44;
  }

  if (v15 <= 0x7FFFFFFF)
  {
    return ((v18 + result) | (v17 << 32)) + 0x100000000;
  }

LABEL_45:
  __break(1u);
  return result;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_268636A0C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_268636A54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_268636AB8()
{
  result = sub_2685B2EC4(&unk_287927AE0);
  qword_28028D3E8 = result;
  return result;
}

uint64_t sub_268636AE0(uint64_t result, uint64_t a2)
{
  if (result)
  {
    if (a2 - result >= 1)
    {
      v16 = v2;
      v17 = v3;
      v5 = 0;
      memset(v4, 0, sizeof(v4));
      v7 = 1;
      memset(v8, 0, sizeof(v8));
      v9 = 0;
      v10 = 1;
      v14 = xmmword_26868BD70;
      v15 = xmmword_26868BD70;
      v6[0] = result;
      v6[1] = a2 - result;
      v6[2] = result;
      v6[3] = 0;
      sub_2685B2B0C(v4, v8 + 8);
      v11 = 100;
      v12 = 0;
      v13 = 100;
      sub_26863BAB0(v6);
      return sub_2685B4BE4(v6);
    }
  }

  return result;
}

uint64_t sub_268636B98(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = a2 - result;
  if (a2 - result < 1)
  {
    return result;
  }

  v63 = a3;
  sub_2685B42A0(a3, v43);
  v10 = v48;
  v11 = v49;
  sub_2685B2978(&v45[8], v39);
  v54 = 1;
  memset(v55, 0, sizeof(v55));
  v56 = 0;
  v57 = 1;
  v61 = xmmword_26868BD70;
  v62 = xmmword_26868BD70;
  v53[0] = v6;
  v53[1] = v7;
  v53[2] = v6;
  v53[3] = 0;
  sub_2685B2B0C(v39, &v55[8]);
  v58 = v10;
  v59 = v11;
  v60 = v10;
  v12 = v50;
  sub_2685B4BE4(v43);
  v60 = v12;
  do
  {
    sub_2685B36C0();
    if (v5)
    {
      sub_2685B403C(": ", 2, v14);
      v29 = *a4;
      v28 = a4[1];
      sub_2685BA80C(v29, v28);
      sub_2686637F4(v29, v28);
      sub_2685B593C(v29, v28);
      v30 = *a5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a5 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_2685B3F48(0, *(v30 + 2) + 1, 1, v30);
        *a5 = v30;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      if (v33 >= v32 >> 1)
      {
        *a5 = sub_2685B3F48((v32 > 1), v33 + 1, 1, v30);
      }

      MEMORY[0x26D61DC90](v5);
      v34 = *a5;
      *(v34 + 2) = v33 + 1;
      v34[v33 + 32] = 10;
      return sub_2685B4BE4(v53);
    }
  }

  while ((v13 & 1) == 0);
  v15 = *a4;
  v16 = a4[1];
  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    result = v63;
    if (v17 == 2)
    {
      v21 = v15 + 16;
      v19 = *(v15 + 16);
      v20 = *(v21 + 8);
      v18 = v20 - v19;
      if (__OFSUB__(v20, v19))
      {
        __break(1u);
        goto LABEL_25;
      }
    }

    else
    {
      v18 = 0;
    }

LABEL_16:
    sub_2685B42A0(result, v39);
    v24 = v40[7];
    v25 = v41;
    sub_2685B2978(v40, v38);
    v44 = 1;
    memset(v45, 0, sizeof(v45));
    v46 = 0;
    v47 = 1;
    v51 = xmmword_26868BD70;
    v52 = xmmword_26868BD70;
    v43[0] = v6;
    v43[1] = v18;
    v43[2] = v6;
    v43[3] = 0;
    sub_2685B2B0C(v38, &v45[8]);
    v48 = v24;
    v49 = v25;
    v50 = v24;
    v26 = v42;
    sub_2685B4BE4(v39);
    v50 = v26;
    sub_2686636FC(v27);
    sub_26863BAB0(v43);
    sub_2685B4D0C(*(*(a5 + 8) + 16) - 1);
    sub_2685B4D0C(*(*(a5 + 8) + 16) - 1);
    v35 = *(a5 + 8);

    sub_2685B3560(v36);
    sub_2685B403C("}\n", 2, v37);
    sub_2685B4BE4(v43);
    return sub_2685B4BE4(v53);
  }

  result = v63;
  if (!v17)
  {
    v18 = BYTE6(v16);
    goto LABEL_16;
  }

  v22 = __OFSUB__(HIDWORD(v15), v15);
  v23 = HIDWORD(v15) - v15;
  if (!v22)
  {
    v18 = v23;
    goto LABEL_16;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_268636ED8(unint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  if ((a1 & 0x8000000000000000) != 0)
  {
    v5 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v2 = v5;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
      *v2 = v5;
    }

    v8 = *(v5 + 2);
    v7 = *(v5 + 3);
    if (v8 >= v7 >> 1)
    {
      v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
    }

    *(v5 + 2) = v8 + 1;
    v5[v8 + 32] = 45;
    *v2 = v5;
    a1 = -a1;
  }

  sub_268663B88(a1);
  v9 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v9;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *v2 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  *(v9 + v12 + 32) = 10;
  *v2 = v9;
  return result;
}

uint64_t sub_268637030(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v8);
  sub_268663A4C(a1, a3, a4);
  v9 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v9;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v9 + 16) + 1, 1, v9);
    v9 = result;
    *v4 = result;
  }

  v12 = *(v9 + 16);
  v11 = *(v9 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
    v9 = result;
  }

  *(v9 + 16) = v12 + 1;
  *(v9 + v12 + 32) = 10;
  *v4 = v9;
  return result;
}

uint64_t sub_26863710C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2685B301C(v14);
  sub_2686636FC(v15);
  v50[3] = a3;
  v50[4] = a4;
  v35 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
  v17 = *(v10 + 16);
  v38 = a1;
  v17(boxed_opaque_existential_1, a1, a3);
  v18 = *v4;
  v19 = v6[1];
  v40 = *(v6 + 64);
  sub_2685B1724(v50, &v42);
  v56 = v18;

  v41 = v19;

  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v47, &v51);
    __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
    swift_getDynamicType();
    (*(v53 + 8))(&v42);
    __swift_destroy_boxed_opaque_existential_1(&v51);
    v36 = v43;
    v21 = v42;
    v22 = &v53 + 8;
  }

  else
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v37 = 0u;
    sub_2685B2E64(&v47, &qword_28028D3C8, &unk_2686902F0);
    v21 = 0uLL;
    v22 = &v52 + 8;
  }

  *(v22 - 16) = v21;
  v39 = v5;
  sub_2685B1724(v50, &v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v20 = *(&v48 + 1);
    v23 = v49;
    __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
    (*(v23 + 16))(&v42, v20, v23);
    v24 = v42;
    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  else
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    sub_2685B2E64(&v47, &qword_28028D3F8, &unk_268690680);
    v24 = 0;
  }

  v25 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v50);
  sub_2685B2FBC(0);

  *&v51 = v56;
  *(&v51 + 1) = v41;
  v52 = v37;
  v53 = v36;
  *&v54 = v25;
  *(&v54 + 1) = v24;
  v55 = v40;
  v17(v13, v38, a3);
  if (!swift_dynamicCast())
  {
    v28 = v39;
    (*(v35 + 72))(&v51, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, a3);
    v27 = v28;
    if (!v28)
    {
LABEL_22:
      v29 = v51;

      *v6 = v29;
      sub_2685B4D0C(*(*(&v29 + 1) + 16) - 1);
      sub_2685B4D0C(*(v6[1] + 16) - 1);
      v30 = v6[1];

      sub_2685B3560(v31);
      sub_2685B403C("}\n", 2, v32);
      v44 = v53;
      v45 = v54;
      v46 = v55;
      v43 = v52;
      v42 = v51;
      return sub_2685B4DEC(&v42);
    }

    swift_unexpectedError();
    __break(1u);
LABEL_15:
    if (v26 != 2 || *(v13 + 16) == *(v13 + 24))
    {
      goto LABEL_21;
    }

LABEL_19:
    if (v40)
    {
      goto LABEL_20;
    }

LABEL_21:
    sub_2685B593C(v13, v20);

    goto LABEL_22;
  }

  v20 = *(&v42 + 1);
  v13 = v42;
  sub_26866A568(&v51);
  v26 = v20 >> 62;
  v27 = v39;
  if ((v20 >> 62) > 1)
  {
    goto LABEL_15;
  }

  if (v26)
  {
    if (v13 == v13 >> 32)
    {
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  if ((v20 & 0xFF000000000000) == 0 || !v40)
  {
    goto LABEL_21;
  }

LABEL_20:
  sub_26863B108(v13, v20);
  if (!v27)
  {
    goto LABEL_21;
  }

  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_26863768C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 32); ; ++i)
    {
      v6 = *i;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v7);
      if ((~LODWORD(v6) & 0x7F800000) == 0)
      {
        break;
      }

      v9 = sub_268689BE4();
      sub_2686689EC(v9, v10);
LABEL_12:
      v12 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v12;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v12 + 16) + 1, 1, v12);
        v12 = result;
        *v2 = result;
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_2685B3F48((v13 > 1), v14 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v14 + 1;
      *(v12 + v14 + 32) = 10;
      *v2 = v12;
      if (!--v3)
      {
        return result;
      }
    }

    if ((LODWORD(v6) & 0x7FFFFF) != 0)
    {
      v8 = "nan";
    }

    else
    {
      if (v6 < 0.0)
      {
        v8 = "-inf";
        v11 = 4;
LABEL_11:
        sub_2685B403C(v8, v11, LODWORD(v6));
        goto LABEL_12;
      }

      v8 = "inf";
    }

    v11 = 3;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_2686377E4(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 32); ; ++i)
    {
      v6 = *i;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v7);
      if ((~*&v6 & 0x7FF0000000000000) == 0)
      {
        break;
      }

      v9 = sub_268689BD4();
      sub_2686689EC(v9, v10);
LABEL_12:
      v12 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v12;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v12 + 16) + 1, 1, v12);
        v12 = result;
        *v2 = result;
      }

      v14 = *(v12 + 16);
      v13 = *(v12 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_2685B3F48((v13 > 1), v14 + 1, 1, v12);
        v12 = result;
      }

      *(v12 + 16) = v14 + 1;
      *(v12 + v14 + 32) = 10;
      *v2 = v12;
      if (!--v3)
      {
        return result;
      }
    }

    if ((*&v6 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v8 = "nan";
    }

    else
    {
      if (v6 < 0.0)
      {
        v8 = "-inf";
        v11 = 4;
LABEL_11:
        sub_2685B403C(v8, v11, *&v6);
        goto LABEL_12;
      }

      v8 = "inf";
    }

    v11 = 3;
    goto LABEL_11;
  }

  return result;
}

uint64_t sub_26863793C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v7);
      sub_268663B88(v6);
      v8 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v8;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
        *v2 = result;
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_2685B3F48((v9 > 1), v10 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = 10;
      *v2 = v8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_268637A40(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5++;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v7);
      sub_268663B88(v6);
      v8 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v8;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v8 + 16) + 1, 1, v8);
        v8 = result;
        *v2 = result;
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);
      if (v10 >= v9 >> 1)
      {
        result = sub_2685B3F48((v9 > 1), v10 + 1, 1, v8);
        v8 = result;
      }

      *(v8 + 16) = v10 + 1;
      *(v8 + v10 + 32) = 10;
      *v2 = v8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_268637B44(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v8);
      if ((v7 & 0x80000000) != 0)
      {
        v9 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
          *v2 = v9;
        }

        v12 = *(v9 + 2);
        v11 = *(v9 + 3);
        if (v12 >= v11 >> 1)
        {
          v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
        }

        *(v9 + 2) = v12 + 1;
        v9[v12 + 32] = 45;
        *v2 = v9;
        v6 = -v6;
      }

      sub_268663B88(v6);
      v13 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v13;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
        *v2 = result;
      }

      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_2685B3F48((v14 > 1), v15 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 16) = v15 + 1;
      *(v13 + v15 + 32) = 10;
      *v2 = v13;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_268637CD0(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v8);
      if ((v7 & 0x8000000000000000) != 0)
      {
        v9 = *v2;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v2 = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = sub_2685B3F48(0, *(v9 + 2) + 1, 1, v9);
          *v2 = v9;
        }

        v12 = *(v9 + 2);
        v11 = *(v9 + 3);
        if (v12 >= v11 >> 1)
        {
          v9 = sub_2685B3F48((v11 > 1), v12 + 1, 1, v9);
        }

        *(v9 + 2) = v12 + 1;
        v9[v12 + 32] = 45;
        *v2 = v9;
        v6 = -v6;
      }

      sub_268663B88(v6);
      v13 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v13;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v13 + 16) + 1, 1, v13);
        v13 = result;
        *v2 = result;
      }

      v15 = *(v13 + 16);
      v14 = *(v13 + 24);
      if (v15 >= v14 >> 1)
      {
        result = sub_2685B3F48((v14 > 1), v15 + 1, 1, v13);
        v13 = result;
      }

      *(v13 + 16) = v15 + 1;
      *(v13 + v15 + 32) = 10;
      *v2 = v13;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_268637E5C(uint64_t result, uint64_t a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5;
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v7);
      if (v6)
      {
        v8 = "true";
      }

      else
      {
        v8 = "false";
      }

      if (v6)
      {
        v9 = 4;
      }

      else
      {
        v9 = 5;
      }

      sub_2685B403C(v8, v9, 4);
      v10 = *v2;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v10;
      if ((result & 1) == 0)
      {
        result = sub_2685B3F48(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
        *v2 = result;
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_2685B3F48((v11 > 1), v12 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 16) = v12 + 1;
      *(v10 + v12 + 32) = 10;
      *v2 = v10;
      ++v5;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_268637F7C(uint64_t result, uint64_t a2)
{
  v4 = v3;
  v40[2] = *MEMORY[0x277D85DE8];
  v5 = *(result + 16);
  if (v5)
  {
    v6 = v2;
    v7 = (result + 40);
    do
    {
      v8 = *(v7 - 1);
      v9 = *v7;
      sub_2685BA80C(v8, *v7);
      sub_2685B301C(a2);
      sub_2685B403C(": ", 2, v10);
      v11 = *v6;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v6 = v11;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = sub_2685B3F48(0, *(v11 + 2) + 1, 1, v11);
        *v6 = v11;
      }

      v14 = *(v11 + 2);
      v13 = *(v11 + 3);
      if (v14 >= v13 >> 1)
      {
        v11 = sub_2685B3F48((v13 > 1), v14 + 1, 1, v11);
      }

      *(v11 + 2) = v14 + 1;
      v11[v14 + 32] = 34;
      *v6 = v11;
      v15 = (v9 >> 62);
      if ((v9 >> 62) > 1)
      {
        if (v15 == 2)
        {
          v38 = v4;
          v19 = *(v8 + 16);
          v18 = *(v8 + 24);
          v20 = sub_268689764();
          if (v20)
          {
            v21 = sub_268689794();
            if (__OFSUB__(v19, v21))
            {
              goto LABEL_41;
            }

            v20 += v19 - v21;
          }

          v22 = __OFSUB__(v18, v19);
          v23 = v18 - v19;
          if (v22)
          {
            goto LABEL_40;
          }

          v24 = sub_268689784();
          if (v24 >= v23)
          {
            v25 = v23;
          }

          else
          {
            v25 = v24;
          }

LABEL_25:
          v15 = (v25 + v20);
          if (v20)
          {
            v16 = v15;
          }

          else
          {
            v16 = 0;
          }

          v17 = v20;
          v28 = v6;
          v29 = v38;
          goto LABEL_31;
        }

        memset(v40, 0, 14);
        v17 = v40;
        v16 = v40;
      }

      else
      {
        if (v15)
        {
          v38 = v4;
          if (v8 >> 32 < v8)
          {
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
          }

          v20 = sub_268689764();
          if (v20)
          {
            v26 = sub_268689794();
            if (__OFSUB__(v8, v26))
            {
              goto LABEL_42;
            }

            v20 += v8 - v26;
          }

          v27 = sub_268689784();
          if (v27 >= (v8 >> 32) - v8)
          {
            v25 = (v8 >> 32) - v8;
          }

          else
          {
            v25 = v27;
          }

          goto LABEL_25;
        }

        v40[0] = v8;
        LOWORD(v40[1]) = v9;
        BYTE2(v40[1]) = BYTE2(v9);
        BYTE3(v40[1]) = BYTE3(v9);
        BYTE4(v40[1]) = BYTE4(v9);
        BYTE5(v40[1]) = BYTE5(v9);
        v15 = v40;
        v16 = v40 + BYTE6(v9);
        v17 = v40;
      }

      v28 = v6;
      v29 = v4;
LABEL_31:
      sub_268663EDC(v17, v16, v28, v15);
      v4 = v29;
      v30 = *v6;
      v31 = swift_isUniquelyReferenced_nonNull_native();
      *v6 = v30;
      if ((v31 & 1) == 0)
      {
        v30 = sub_2685B3F48(0, *(v30 + 2) + 1, 1, v30);
        *v6 = v30;
      }

      v33 = *(v30 + 2);
      v32 = *(v30 + 3);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v30 = sub_2685B3F48((v32 > 1), v33 + 1, 1, v30);
      }

      *(v30 + 2) = v34;
      v30[v33 + 32] = 34;
      *v6 = v30;
      v35 = *(v30 + 3);
      v36 = v33 + 2;
      if (v36 > (v35 >> 1))
      {
        v30 = sub_2685B3F48((v35 > 1), v36, 1, v30);
      }

      v7 += 2;
      result = sub_2685B593C(v8, v9);
      *(v30 + 2) = v36;
      v30[v34 + 32] = 10;
      *v6 = v30;
      --v5;
    }

    while (v5);
  }

  v37 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_2686382FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = a2;
  v23 = a4;
  v24 = *(a3 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v19 = v8;
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_268689B74();
  if (!result)
  {
    return result;
  }

  v11 = 0;
  v20 = (v24 + 8);
  v21 = (v24 + 16);
  while (1)
  {
    v12 = sub_268689B64();
    sub_268689B24();
    if ((v12 & 1) == 0)
    {
      break;
    }

    result = (*(v24 + 16))(v9, a1 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v11, a3);
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_16;
    }

LABEL_5:
    sub_2685B301C(v22);
    sub_2685B403C(": ", 2, v14);
    sub_268663A4C(v9, a3, v23);
    v15 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_2685B3F48(0, *(v15 + 2) + 1, 1, v15);
      *v4 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      v15 = sub_2685B3F48((v17 > 1), v18 + 1, 1, v15);
      *v4 = v15;
    }

    (*v20)(v9, a3);
    *(v15 + 2) = v18 + 1;
    v15[v18 + 32] = 10;
    *v4 = v15;
    result = sub_268689B74();
    ++v11;
    if (v13 == result)
    {
      return result;
    }
  }

  result = sub_268689D14();
  if (v19 != 8)
  {
    goto LABEL_17;
  }

  v25 = result;
  (*v21)(v9, &v25, a3);
  result = swift_unknownObjectRelease();
  v13 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_5;
  }

LABEL_16:
  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_268638584(uint64_t a1, uint64_t a2, void (*a3)(char *, void *), uint64_t a4, uint64_t a5)
{
  v45 = a3;
  v46 = a4;
  v8 = *(a5 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](a1, a2);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = v11;
  MEMORY[0x28223BE20](v10, v13);
  v47 = &v40 - v14;
  sub_2685B301C(v15);
  sub_2685B403C(": ", 2, v16);
  v17 = *v5;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48 = v5;
  *v5 = v17;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_25:
    v17 = sub_2685B3F48(0, *(v17 + 2) + 1, 1, v17);
    *v48 = v17;
  }

  v20 = *(v17 + 2);
  v19 = *(v17 + 3);
  if (v20 >= v19 >> 1)
  {
    v17 = sub_2685B3F48((v19 > 1), v20 + 1, 1, v17);
  }

  *(v17 + 2) = v20 + 1;
  v17[v20 + 32] = 91;
  *v48 = v17;
  if (sub_268689B74())
  {
    v21 = sub_268689B64();
    sub_268689B24();
    v44 = (v8 + 16);
    if (v21)
    {
      v22 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v23 = v47;
      v43 = *(v8 + 16);
      v43(v47, v22, a5);
    }

    else
    {
      result = sub_268689D14();
      if (v40 != 8)
      {
LABEL_28:
        __break(1u);
        return result;
      }

      v49 = result;
      v39 = v47;
      v43 = *v44;
      v43(v47, &v49, a5);
      v23 = v39;
      swift_unknownObjectRelease();
    }

    v41 = *(v8 + 32);
    v42 = v8 + 32;
    v41(v12, v23, a5);
    v45(v12, v48);
    v17 = *(v8 + 8);
    (v17)(v12, a5);
    if (sub_268689B74() != 1)
    {
      v31 = 1;
      do
      {
        v32 = sub_268689B64();
        sub_268689B24();
        if (v32)
        {
          v33 = v8;
          v34 = v47;
          v43(v47, a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v31, a5);
          v8 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_24;
          }
        }

        else
        {
          result = sub_268689D14();
          if (v40 != 8)
          {
            goto LABEL_28;
          }

          v33 = v8;
          v49 = result;
          v38 = v47;
          v43(v47, &v49, a5);
          v34 = v38;
          swift_unknownObjectRelease();
          v8 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
LABEL_24:
            __break(1u);
            goto LABEL_25;
          }
        }

        v41(v12, v34, a5);
        v35 = v48;
        sub_2685B403C(", ", 2, v36);
        v45(v12, v35);
        (v17)(v12, a5);
        ++v31;
        v37 = v8 == sub_268689B74();
        v8 = v33;
      }

      while (!v37);
    }
  }

  v24 = v48;
  v25 = *v48;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v24 = v25;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v25 + 16) + 1, 1, v25);
    v25 = result;
    *v48 = result;
  }

  v28 = *(v25 + 16);
  v27 = *(v25 + 24);
  v29 = v28 + 1;
  if (v28 >= v27 >> 1)
  {
    result = sub_2685B3F48((v27 > 1), v28 + 1, 1, v25);
    v25 = result;
  }

  *(v25 + 16) = v29;
  *(v25 + v28 + 32) = 93;
  *v48 = v25;
  v30 = *(v25 + 24);
  if ((v28 + 2) > (v30 >> 1))
  {
    result = sub_2685B3F48((v30 > 1), v28 + 2, 1, v25);
    v25 = result;
  }

  *(v25 + 16) = v28 + 2;
  *(v25 + v29 + 32) = 10;
  *v48 = v25;
  return result;
}

uint64_t sub_268638A64(uint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 32);
    if ((~LODWORD(v10) & 0x7F800000) != 0)
    {
      v12 = sub_268689BE4();
      sub_2686689EC(v12, v13);
      v15 = v9 - 1;
      if (v9 == 1)
      {
LABEL_16:
        v5 = *v2;
        goto LABEL_17;
      }

      goto LABEL_24;
    }

    if ((LODWORD(v10) & 0x7FFFFF) != 0)
    {
      v11 = "nan";
    }

    else
    {
      if (v10 < 0.0)
      {
        v11 = "-inf";
        v16 = 4;
        goto LABEL_15;
      }

      v11 = "inf";
    }

    v16 = 3;
LABEL_15:
    sub_2685B403C(v11, v16, LODWORD(v10));
    v15 = v9 - 1;
    if (v9 == 1)
    {
      goto LABEL_16;
    }

LABEL_24:
    v23 = (a1 + 36);
    while (1)
    {
      v26 = *v23;
      sub_2685B403C(", ", 2, v14);
      if ((~LODWORD(v26) & 0x7F800000) != 0)
      {
        v24 = sub_268689BE4();
        sub_2686689EC(v24, v25);
      }

      else
      {
        if ((LODWORD(v26) & 0x7FFFFF) != 0)
        {
          v27 = "nan";
LABEL_33:
          sub_2685B403C(v27, 3, LODWORD(v26));
          goto LABEL_26;
        }

        if (v26 >= 0.0)
        {
          v27 = "inf";
          goto LABEL_33;
        }

        sub_2685B403C("-inf", 4, LODWORD(v26));
      }

LABEL_26:
      ++v23;
      if (!--v15)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v19 = *(v5 + 2);
  v18 = *(v5 + 3);
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    result = sub_2685B3F48((v18 > 1), v19 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v20;
  v5[v19 + 32] = 93;
  *v2 = v5;
  v21 = *(v5 + 3);
  v22 = v19 + 2;
  if (v22 > (v21 >> 1))
  {
    result = sub_2685B3F48((v21 > 1), v22, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v22;
  v5[v20 + 32] = 10;
  *v2 = v5;
  return result;
}

uint64_t sub_268638D0C(uint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 32);
    if ((~v10 & 0x7FF0000000000000) != 0)
    {
      v12 = sub_268689BD4();
      sub_2686689EC(v12, v13);
      v15 = v9 - 1;
      if (v9 == 1)
      {
LABEL_16:
        v5 = *v2;
        goto LABEL_17;
      }

      goto LABEL_24;
    }

    if ((v10 & 0xFFFFFFFFFFFFFLL) != 0)
    {
      v11 = "nan";
    }

    else
    {
      if (*(a1 + 32) < 0.0)
      {
        v11 = "-inf";
        v16 = 4;
        goto LABEL_15;
      }

      v11 = "inf";
    }

    v16 = 3;
LABEL_15:
    sub_2685B403C(v11, v16, v10);
    v15 = v9 - 1;
    if (v9 == 1)
    {
      goto LABEL_16;
    }

LABEL_24:
    v23 = (a1 + 40);
    while (1)
    {
      v26 = *v23;
      sub_2685B403C(", ", 2, v14);
      if ((~*&v26 & 0x7FF0000000000000) != 0)
      {
        v24 = sub_268689BD4();
        sub_2686689EC(v24, v25);
      }

      else
      {
        if ((*&v26 & 0xFFFFFFFFFFFFFLL) != 0)
        {
          v27 = "nan";
LABEL_33:
          sub_2685B403C(v27, 3, *&v26);
          goto LABEL_26;
        }

        if (v26 >= 0.0)
        {
          v27 = "inf";
          goto LABEL_33;
        }

        sub_2685B403C("-inf", 4, *&v26);
      }

LABEL_26:
      ++v23;
      if (!--v15)
      {
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v19 = *(v5 + 2);
  v18 = *(v5 + 3);
  v20 = v19 + 1;
  if (v19 >= v18 >> 1)
  {
    result = sub_2685B3F48((v18 > 1), v19 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v20;
  v5[v19 + 32] = 93;
  *v2 = v5;
  v21 = *(v5 + 3);
  v22 = v19 + 2;
  if (v22 > (v21 >> 1))
  {
    result = sub_2685B3F48((v21 > 1), v22, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v22;
  v5[v20 + 32] = 10;
  *v2 = v5;
  return result;
}

uint64_t sub_268638FB4(uint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_268663B88(*(a1 + 32));
    v11 = v9 - 1;
    if (v11)
    {
      v12 = (a1 + 36);
      do
      {
        v13 = *v12++;
        sub_2685B403C(", ", 2, v10);
        sub_268663B88(v13);
        --v11;
      }

      while (v11);
    }

    v5 = *v2;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v16 = *(v5 + 2);
  v15 = *(v5 + 3);
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    result = sub_2685B3F48((v15 > 1), v16 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v17;
  v5[v16 + 32] = 93;
  *v2 = v5;
  v18 = *(v5 + 3);
  v19 = v16 + 2;
  if (v19 > (v18 >> 1))
  {
    result = sub_2685B3F48((v18 > 1), v19, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v19;
  v5[v17 + 32] = 10;
  *v2 = v5;
  return result;
}

uint64_t sub_268639184(void *a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = a1[2];
  if (v9)
  {
    sub_268663B88(a1[4]);
    v11 = v9 - 1;
    if (v11)
    {
      v12 = a1 + 5;
      do
      {
        v13 = *v12++;
        sub_2685B403C(", ", 2, v10);
        sub_268663B88(v13);
        --v11;
      }

      while (v11);
    }

    v5 = *v2;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v16 = *(v5 + 2);
  v15 = *(v5 + 3);
  v17 = v16 + 1;
  if (v16 >= v15 >> 1)
  {
    result = sub_2685B3F48((v15 > 1), v16 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v17;
  v5[v16 + 32] = 93;
  *v2 = v5;
  v18 = *(v5 + 3);
  v19 = v16 + 2;
  if (v19 > (v18 >> 1))
  {
    result = sub_2685B3F48((v18 > 1), v19, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v19;
  v5[v17 + 32] = 10;
  *v2 = v5;
  return result;
}

uint64_t sub_268639354(uint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = *(a1 + 32);
    if ((v10 & 0x80000000) != 0)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if ((v11 & 1) == 0)
      {
        v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
        *v2 = v5;
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v5[v13 + 32] = 45;
      *v2 = v5;
      v10 = -v10;
    }

    sub_268663B88(v10);
    v15 = v9 - 1;
    if (v15)
    {
      v22 = (a1 + 36);
      do
      {
        v24 = *v22++;
        v23 = v24;
        sub_2685B403C(", ", 2, v14);
        if ((v24 & 0x80000000) != 0)
        {
          v25 = *v2;
          v26 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v25;
          if ((v26 & 1) == 0)
          {
            v25 = sub_2685B3F48(0, *(v25 + 2) + 1, 1, v25);
            *v2 = v25;
          }

          v28 = *(v25 + 2);
          v27 = *(v25 + 3);
          if (v28 >= v27 >> 1)
          {
            v25 = sub_2685B3F48((v27 > 1), v28 + 1, 1, v25);
          }

          *(v25 + 2) = v28 + 1;
          v25[v28 + 32] = 45;
          *v2 = v25;
          v23 = -v23;
        }

        sub_268663B88(v23);
        --v15;
      }

      while (v15);
    }

    v5 = *v2;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v18 = *(v5 + 2);
  v17 = *(v5 + 3);
  v19 = v18 + 1;
  if (v18 >= v17 >> 1)
  {
    result = sub_2685B3F48((v17 > 1), v18 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v19;
  v5[v18 + 32] = 93;
  *v2 = v5;
  v20 = *(v5 + 3);
  v21 = v18 + 2;
  if (v21 > (v20 >> 1))
  {
    result = sub_2685B3F48((v20 > 1), v21, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v21;
  v5[v19 + 32] = 10;
  *v2 = v5;
  return result;
}

uint64_t sub_268639648(void *a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = a1[2];
  if (v9)
  {
    v10 = a1[4];
    if ((v10 & 0x8000000000000000) != 0)
    {
      v11 = swift_isUniquelyReferenced_nonNull_native();
      *v2 = v5;
      if ((v11 & 1) == 0)
      {
        v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
        *v2 = v5;
      }

      v13 = *(v5 + 2);
      v12 = *(v5 + 3);
      if (v13 >= v12 >> 1)
      {
        v5 = sub_2685B3F48((v12 > 1), v13 + 1, 1, v5);
      }

      *(v5 + 2) = v13 + 1;
      v5[v13 + 32] = 45;
      *v2 = v5;
      v10 = -v10;
    }

    sub_268663B88(v10);
    v15 = v9 - 1;
    if (v15)
    {
      v22 = a1 + 5;
      do
      {
        v24 = *v22++;
        v23 = v24;
        sub_2685B403C(", ", 2, v14);
        if ((v24 & 0x8000000000000000) != 0)
        {
          v25 = *v2;
          v26 = swift_isUniquelyReferenced_nonNull_native();
          *v2 = v25;
          if ((v26 & 1) == 0)
          {
            v25 = sub_2685B3F48(0, *(v25 + 2) + 1, 1, v25);
            *v2 = v25;
          }

          v28 = *(v25 + 2);
          v27 = *(v25 + 3);
          if (v28 >= v27 >> 1)
          {
            v25 = sub_2685B3F48((v27 > 1), v28 + 1, 1, v25);
          }

          *(v25 + 2) = v28 + 1;
          v25[v28 + 32] = 45;
          *v2 = v25;
          v23 = -v23;
        }

        sub_268663B88(v23);
        --v15;
      }

      while (v15);
    }

    v5 = *v2;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v18 = *(v5 + 2);
  v17 = *(v5 + 3);
  v19 = v18 + 1;
  if (v18 >= v17 >> 1)
  {
    result = sub_2685B3F48((v17 > 1), v18 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v19;
  v5[v18 + 32] = 93;
  *v2 = v5;
  v20 = *(v5 + 3);
  v21 = v18 + 2;
  if (v21 > (v20 >> 1))
  {
    result = sub_2685B3F48((v20 > 1), v21, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v21;
  v5[v19 + 32] = 10;
  *v2 = v5;
  return result;
}

uint64_t sub_26863993C(uint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    *v2 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
  }

  *(v5 + 2) = v8 + 1;
  v5[v8 + 32] = 91;
  *v2 = v5;
  v9 = *(a1 + 16);
  if (v9)
  {
    if (*(a1 + 32))
    {
      v10 = "true";
    }

    else
    {
      v10 = "false";
    }

    if (*(a1 + 32))
    {
      v11 = 4;
    }

    else
    {
      v11 = 5;
    }

    sub_2685B403C(v10, v11, 4);
    v13 = v9 - 1;
    if (v13)
    {
      v14 = (a1 + 33);
      do
      {
        v16 = *v14++;
        v15 = v16;
        sub_2685B403C(", ", 2, v12);
        if (v16)
        {
          v18 = "true";
        }

        else
        {
          v18 = "false";
        }

        if (v15)
        {
          v19 = 4;
        }

        else
        {
          v19 = 5;
        }

        sub_2685B403C(v18, v19, v17);
        --v13;
      }

      while (v13);
    }

    v5 = *v2;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v22 = *(v5 + 2);
  v21 = *(v5 + 3);
  v23 = v22 + 1;
  if (v22 >= v21 >> 1)
  {
    result = sub_2685B3F48((v21 > 1), v22 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v23;
  v5[v22 + 32] = 93;
  *v2 = v5;
  v24 = *(v5 + 3);
  v25 = v22 + 2;
  if (v25 > (v24 >> 1))
  {
    result = sub_2685B3F48((v24 > 1), v25, 1, v5);
    v5 = result;
  }

  *(v5 + 2) = v25;
  v5[v23 + 32] = 10;
  *v2 = v5;
  return result;
}

uint64_t sub_268639B40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[2] = a3;
  v5[3] = a4;
  return sub_268638584(a1, a2, sub_26863C22C, v5, a3);
}

uint64_t sub_268639B80(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  v39 = v10;
  v40 = v6;
  if (v9)
  {
    while (1)
    {
      v44 = v4;
      v13 = v12;
LABEL_9:
      v14 = __clz(__rbit64(v9)) | (v13 << 6);
      v15 = (*(a1 + 48) + 16 * v14);
      v16 = v15[1];
      v43 = *v15;
      v17 = (*(a1 + 56) + 24 * v14);
      v19 = *v17;
      v18 = v17[1];
      v20 = v17[2];

      v21 = v19;
      v22 = v19;
      v23 = v16;
      sub_2685BA80C(v22, v18);
      v55 = v20;

      if (!v16)
      {
      }

      sub_2685B301C(a2);
      sub_2686636FC(v24);
      if (qword_28028BDD8 != -1)
      {
        swift_once();
      }

      v25 = qword_28028D3E8;
      v26 = *a3;
      v27 = a3[1];
      v28 = *(a3 + 64);

      sub_2685B2FBC(0);
      v51 = 0u;
      v52 = 0u;
      *&v53 = v25;

      *(&v53 + 1) = 0;
      *&v50 = v26;
      *(&v50 + 1) = v27;
      v54 = v28;
      sub_2685B301C(1);
      sub_2685B403C(": ", 2, v29);
      sub_2685B43A4(v43, v23);
      v30 = v50;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_2685B3F48(0, *(v30 + 2) + 1, 1, v30);
      }

      v32 = *(v30 + 2);
      v31 = *(v30 + 3);
      if (v32 >= v31 >> 1)
      {
        v30 = sub_2685B3F48((v31 > 1), v32 + 1, 1, v30);
      }

      *(v30 + 2) = v32 + 1;
      v30[v32 + 32] = 10;
      *&v50 = v30;
      sub_268674784(v21, v18, v55, 2);
      v33 = v21;
      v4 = v44;
      if (v44)
      {

        sub_2685B593C(v33, v18);

        v47 = v52;
        v48 = v53;
        v49 = v54;
        v45 = v50;
        v46 = v51;
        return sub_2685B4DEC(&v45);
      }

      v9 &= v9 - 1;
      v35 = *(&v50 + 1);
      v34 = v50;

      *a3 = v34;
      a3[1] = v35;
      sub_2685B4D0C(*(v35 + 16) - 1);
      sub_2685B4D0C(*(a3[1] + 16) - 1);
      v36 = a3[1];

      sub_2685B3560(v37);
      sub_2685B403C("}\n", 2, v38);
      sub_2685B593C(v33, v18);

      v47 = v52;
      v48 = v53;
      v49 = v54;
      v45 = v50;
      v46 = v51;
      result = sub_2685B4DEC(&v45);
      v12 = v13;
      v10 = v39;
      v6 = v40;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        v44 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_268639F30(unint64_t a1, uint64_t a2, void (*a3)(__int128 *, char *, char *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v86 = a4;
  v85 = a3;
  v84 = a2;
  v75 = *(a6 - 8);
  v10 = *(v75 + 64);
  v11 = MEMORY[0x28223BE20](a1, a2);
  v13 = v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v77 = v73 - v16;
  v74 = *(v17 - 8);
  v18 = *(v74 + 64);
  v20 = MEMORY[0x28223BE20](v15, v19);
  v83 = v73 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20, v22);
  v24 = v73 - v23;
  v94 = v25;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v93 = sub_268689C74();
  v27 = *(v93 - 8);
  v28 = *(v27 + 64);
  v30 = MEMORY[0x28223BE20](v93, v29);
  MEMORY[0x28223BE20](v30, v31);
  v88 = v32;
  v92 = v73 - v33;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v34 = sub_268689D84();
    v35 = 0;
    v36 = 0;
    v96 = 0;
    v37 = v34 | 0x8000000000000000;
  }

  else
  {
    v38 = -1 << *(a1 + 32);
    v36 = ~v38;
    v35 = a1 + 64;
    v39 = -v38;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    else
    {
      v40 = -1;
    }

    v96 = v40 & *(a1 + 64);
    v37 = a1;
  }

  v98 = (v74 + 32);
  v97 = (v75 + 32);
  v90 = TupleTypeMetadata2 - 8;
  v73[0] = v36;
  v41 = (v36 + 64) >> 6;
  v73[2] = v74 + 16;
  v73[1] = v75 + 16;
  v89 = (v27 + 32);
  v81 = (v75 + 8);
  v82 = (v74 + 8);

  v43 = 0;
  v44 = v94;
  v76 = v13;
  v91 = v35;
  v87 = v37;
  v78 = v41;
  v45 = v96;
  v80 = v24;
  v79 = TupleTypeMetadata2;
  while (1)
  {
    v96 = v45;
    v95 = v43;
    if ((v37 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (sub_268689D94())
    {
      sub_268689E04();
      swift_unknownObjectRelease();
      v48 = v77;
      sub_268689E04();
      swift_unknownObjectRelease();
      v47 = v95;
      v100 = v96;
LABEL_21:
      v53 = *(TupleTypeMetadata2 + 48);
      v54 = v88;
      (*v98)(v88, v24, a5);
      (*v97)((v54 + v53), v48, v44);
      v55 = 0;
      v99 = v47;
      v13 = v76;
      goto LABEL_25;
    }

    v55 = 1;
    v99 = v95;
    v100 = v96;
LABEL_24:
    v54 = v88;
LABEL_25:
    v56 = *(TupleTypeMetadata2 - 8);
    (*(v56 + 56))(v54, v55, 1, TupleTypeMetadata2);
    v57 = v92;
    (*v89)(v92, v54, v93);
    if ((*(v56 + 48))(v57, 1, TupleTypeMetadata2) == 1)
    {
      return sub_2686265DC();
    }

    v58 = *(TupleTypeMetadata2 + 48);
    v59 = v83;
    v60 = a5;
    (*v98)(v83, v57, a5);
    (*v97)(v13, &v57[v58], v44);
    sub_2685B301C(v84);
    sub_2686636FC(v61);
    v62 = v13;
    if (qword_28028BDD8 != -1)
    {
      swift_once();
    }

    v63 = qword_28028D3E8;
    v64 = *v7;
    v65 = v7[1];
    v66 = *(v7 + 64);

    sub_2685B2FBC(0);
    v107 = 0u;
    v108 = 0u;
    *&v109 = v63;

    *(&v109 + 1) = 0;
    *&v106 = v64;
    *(&v106 + 1) = v65;
    v110 = v66;
    v67 = v111;
    v85(&v106, v59, v62);
    v35 = v91;
    if (v67)
    {
      sub_2686265DC();
      (*v81)(v62, v94);
      (*v82)(v59, v60);
      v103 = v108;
      v104 = v109;
      v105 = v110;
      v101 = v106;
      v102 = v107;
      return sub_2685B4DEC(&v101);
    }

    v111 = 0;
    v69 = *(&v106 + 1);
    v68 = v106;

    *v7 = v68;
    v7[1] = v69;
    sub_2685B4D0C(*(v69 + 16) - 1);
    sub_2685B4D0C(*(v7[1] + 16) - 1);
    v70 = v7[1];

    sub_2685B3560(v71);
    sub_2685B403C("}\n", 2, v72);
    v44 = v94;
    (*v81)(v62, v94);
    a5 = v60;
    (*v82)(v59, v60);
    v103 = v108;
    v104 = v109;
    v105 = v110;
    v101 = v106;
    v102 = v107;
    result = sub_2685B4DEC(&v101);
    v43 = v99;
    v45 = v100;
    v13 = v62;
    v24 = v80;
    TupleTypeMetadata2 = v79;
    v37 = v87;
    v41 = v78;
  }

  if (v45)
  {
    v46 = v45;
    v47 = v43;
LABEL_20:
    v100 = (v46 - 1) & v46;
    v52 = __clz(__rbit64(v46)) | (v47 << 6);
    (*(v74 + 16))(v24, *(v37 + 48) + *(v74 + 72) * v52, a5);
    v48 = v77;
    (*(v75 + 16))(v77, *(v37 + 56) + *(v75 + 72) * v52, v44);
    goto LABEL_21;
  }

  if (v41 <= v43 + 1)
  {
    v49 = v43 + 1;
  }

  else
  {
    v49 = v41;
  }

  v50 = v49 - 1;
  v51 = v43;
  while (1)
  {
    v47 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      break;
    }

    if (v47 >= v41)
    {
      v99 = v50;
      v100 = 0;
      v55 = 1;
      goto LABEL_24;
    }

    v46 = *(v35 + 8 * v47);
    ++v51;
    if (v46)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26863A874(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v9 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(a6 + 8);
  v12 = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_268639F30(a1, a2, sub_26863C20C, v14, AssociatedTypeWitness, v12);
}

uint64_t sub_26863A974(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, a4);
  if (!v7)
  {
    return (*(*(a7 + 8) + 48))(a3, 2, a1, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, a5);
  }

  return result;
}

uint64_t sub_26863AA2C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v9 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_268639F30(a1, a2, sub_26863C1EC, v12, AssociatedTypeWitness, a4);
}

uint64_t sub_26863AAFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, a4);
  if (!v7)
  {
    return sub_268637030(a3, 2, a5, a7);
  }

  return result;
}

uint64_t sub_26863AB90(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v13[6] = a7;
  v10 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_268639F30(a1, a2, sub_26863C1C8, v13, AssociatedTypeWitness, a4);
}

uint64_t sub_26863AC64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(*(a6 + 8) + 48))(a2, 1, a1, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, a4);
  if (!v7)
  {
    return sub_26863710C(a3, 2, a5, a7);
  }

  return result;
}

uint64_t sub_26863ACF8(uint64_t a1, float a2)
{
  sub_2685B301C(a1);
  sub_2685B403C(": ", 2, v4);
  sub_26866393C(a2);
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + v8 + 32) = 10;
  *v2 = v5;
  return result;
}

uint64_t sub_26863ADC8(uint64_t a1, double a2)
{
  sub_2685B301C(a1);
  sub_2685B403C(": ", 2, v4);
  sub_2686639C4(a2);
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + v8 + 32) = 10;
  *v2 = v5;
  return result;
}

uint64_t sub_26863AE98(unint64_t a1, uint64_t a2)
{
  sub_2685B301C(a2);
  sub_2685B403C(": ", 2, v4);
  sub_268663B88(a1);
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if ((result & 1) == 0)
  {
    result = sub_2685B3F48(0, *(v5 + 16) + 1, 1, v5);
    v5 = result;
    *v2 = result;
  }

  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  if (v8 >= v7 >> 1)
  {
    result = sub_2685B3F48((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
  }

  *(v5 + 16) = v8 + 1;
  *(v5 + v8 + 32) = 10;
  *v2 = v5;
  return result;
}

uint64_t sub_26863B0E0(uint64_t result, unint64_t a2)
{
  if (*(v2 + 64) == 1)
  {
    return sub_26863B108(result, a2);
  }

  return result;
}

uint64_t sub_26863B108(uint64_t result, unint64_t a2)
{
  v26 = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      *(&v14 + 6) = 0;
      *&v14 = 0;
      result = sub_268636AE0(&v14, &v14);
      goto LABEL_10;
    }

    v3 = *(result + 16);
    v4 = *(result + 24);
    goto LABEL_8;
  }

  if (v2)
  {
    v3 = result;
    v4 = result >> 32;
    if (result >> 32 < result)
    {
      __break(1u);
    }

LABEL_8:
    result = sub_26863B2BC(v3, v4);
    goto LABEL_10;
  }

  v6 = result;
  v7 = a2;
  v8 = BYTE2(a2);
  v9 = BYTE3(a2);
  v10 = BYTE4(a2);
  v11 = BYTE5(a2);
  if (BYTE6(a2))
  {
    memset(v12, 0, sizeof(v12));
    v17 = 1;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v20 = 1;
    v24 = xmmword_26868BD70;
    v25 = xmmword_26868BD70;
    v13 = 0;
    *&v14 = &v6;
    *(&v14 + 1) = BYTE6(a2);
    v15 = &v6;
    v16 = 0;
    sub_2685B2B0C(v12, v18 + 8);
    v21 = 100;
    v22 = 0;
    v23 = 100;
    sub_26863BAB0(&v14);
    result = sub_2685B4BE4(&v14);
  }

LABEL_10:
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t sub_26863B2BC(uint64_t a1, uint64_t a2)
{
  result = sub_268689764();
  v5 = result;
  if (result)
  {
    result = sub_268689794();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 += a1 - result;
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = sub_268689784();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v9 + v5;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  return sub_268636AE0(v5, v11);
}

uint64_t sub_26863B360(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v56[3] = a5;
  v56[4] = a6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v13 = *(a4 + 8);

  sub_2685B3560(v14);
  v15 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v15;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v15 = sub_2685B3F48(0, *(v15 + 2) + 1, 1, v15);
    *a4 = v15;
  }

  v18 = *(v15 + 2);
  v17 = *(v15 + 3);
  if (v18 >= v17 >> 1)
  {
    v15 = sub_2685B3F48((v17 > 1), v18 + 1, 1, v15);
  }

  *(v15 + 2) = v18 + 1;
  v15[v18 + 32] = 91;
  *a4 = v15;

  sub_2686689EC(a2, a3);
  v19 = *a4;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *a4 = v19;
  if ((v20 & 1) == 0)
  {
    v19 = sub_2685B3F48(0, *(v19 + 2) + 1, 1, v19);
    *a4 = v19;
  }

  v22 = *(v19 + 2);
  v21 = *(v19 + 3);
  if (v22 >= v21 >> 1)
  {
    v19 = sub_2685B3F48((v21 > 1), v22 + 1, 1, v19);
  }

  *(v19 + 2) = v22 + 1;
  v19[v22 + 32] = 93;
  *a4 = v19;
  sub_2686636FC(&v19[v22]);
  sub_2685B1724(v56, v50);
  v23 = *a4;
  v24 = *(a4 + 8);
  v25 = *(a4 + 64);
  sub_2685B1724(v50, &v40);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028C090, &qword_26868A790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3C0, &unk_268693140);
  if (swift_dynamicCast())
  {
    sub_2685B17CC(&v47, &v51);
    __swift_project_boxed_opaque_existential_1(&v51, *(&v52 + 1));
    swift_getDynamicType();
    (*(v53 + 8))(&v40);
    __swift_destroy_boxed_opaque_existential_1(&v51);
    v38 = v41;
    v39 = v40;
  }

  else
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    v39 = 0u;
    sub_2685B2E64(&v47, &qword_28028D3C8, &unk_2686902F0);
    v38 = 0u;
  }

  sub_2685B1724(v50, &v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28028D3F0, &qword_268693150);
  if (swift_dynamicCast())
  {
    v27 = *(&v48 + 1);
    v26 = v49;
    __swift_project_boxed_opaque_existential_1(&v47, *(&v48 + 1));
    (*(v26 + 16))(&v40, v27, v26);
    v28 = v40;
    __swift_destroy_boxed_opaque_existential_1(&v47);
  }

  else
  {
    v49 = 0;
    v47 = 0u;
    v48 = 0u;
    sub_2685B2E64(&v47, &qword_28028D3F8, &unk_268690680);
    v28 = 0;
  }

  v29 = sub_2685B2EC4(MEMORY[0x277D84F90]);
  __swift_destroy_boxed_opaque_existential_1(v50);
  sub_2685B2FBC(0);

  *&v51 = v23;
  *(&v51 + 1) = v24;
  v53 = v38;
  v52 = v39;
  *&v54 = v29;
  *(&v54 + 1) = v28;
  v55 = v25;
  sub_2685B1724(v56, &v40);
  if (swift_dynamicCast())
  {
    v30 = v45;
    v31 = v46;
    sub_26866A568(&v51);
    v32 = v31 >> 62;
    if ((v31 >> 62) > 1)
    {
      if (v32 != 2 || *(v30 + 16) == *(v30 + 24))
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (!v32)
      {
        if ((v31 & 0xFF000000000000) == 0 || !v25)
        {
          goto LABEL_28;
        }

        goto LABEL_27;
      }

      if (v30 == v30 >> 32)
      {
LABEL_28:
        sub_2685B593C(v30, v31);

        goto LABEL_29;
      }
    }

    if (v25)
    {
LABEL_27:
      sub_26863B108(v30, v31);
      goto LABEL_28;
    }

    goto LABEL_28;
  }

  (*(a6 + 72))(&v51, &type metadata for TextFormatEncodingVisitor, &off_28792DA88, a5, a6);
LABEL_29:
  v33 = v51;

  *a4 = v33;
  sub_2685B4D0C(*(*(&v33 + 1) + 16) - 1);
  sub_2685B4D0C(*(*(a4 + 8) + 16) - 1);
  v34 = *(a4 + 8);

  sub_2685B3560(v35);
  sub_2685B403C("}\n", 2, v36);
  v42 = v53;
  v43 = v54;
  v44 = v55;
  v40 = v51;
  v41 = v52;
  sub_2685B4DEC(&v40);
  return __swift_destroy_boxed_opaque_existential_1(v56);
}