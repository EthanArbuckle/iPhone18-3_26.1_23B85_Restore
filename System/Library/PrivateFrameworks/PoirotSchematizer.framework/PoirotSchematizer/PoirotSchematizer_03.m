uint64_t get_enum_tag_for_layout_string_17PoirotSchematizer0B0V23RepeatableFieldIteratorV5StateO(uint64_t a1)
{
  v1 = ((*(a1 + 64) >> 57) >> 5) | (4 * ((*(a1 + 64) >> 57) & 0x18 | *(a1 + 64) & 7));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_1D8C502F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 72))
  {
    return (*a1 + 125);
  }

  v3 = ((*(a1 + 64) >> 57) >> 5) | (4 * ((*(a1 + 64) >> 57) & 0x18 | *(a1 + 64) & 7));
  v4 = v3 ^ 0x7F;
  v5 = 126 - v3;
  if (v4 >= 0x7D)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D8C5035C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 56) = 0;
      *(result + 64) = ((32 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 2) | (((32 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 2)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D8C503D0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 72))
  {
    return (*a1 + 126);
  }

  v3 = (((*(a1 + 64) >> 57) >> 5) | (4 * ((*(a1 + 64) >> 57) & 0x18 | *(a1 + 64) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D8C5042C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *(result + 56) = 0;
      *(result + 64) = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1D8C504A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 72))
  {
    return (*a1 + 125);
  }

  v3 = (((*(a1 + 64) >> 57) >> 5) | (4 * ((*(a1 + 64) >> 57) & 0x18 | *(a1 + 64) & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8C504FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 56) = 0;
      *(result + 64) = ((32 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 2) | (((32 * (a2 ^ 0x7F)) | ((a2 ^ 0x7F) >> 2)) << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

double sub_1D8C5055C(uint64_t a1, unsigned int a2)
{
  if (a2 > 0x7D)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 - 126;
  }

  else if (a2)
  {
    v2 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
    *(a1 + 56) = 0;
    *(a1 + 64) = (v2 | (v2 << 57)) & 0xF000000000000007;
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Schematizer.RepeatableFieldIterator.Bookmark(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for Schematizer.RepeatableFieldIterator.Bookmark(uint64_t result, int a2, int a3)
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Schematizer.RepeatableFieldIterator.ArrayType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Schematizer.RepeatableFieldIterator.ArrayType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D8C50688(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8C506A4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1D8C506D8(uint64_t a1)
{
  result = MEMORY[0x1DA725700](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1D8C47844(&v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C507F4(uint64_t *a1)
{
  v2 = a1[1];
  v58 = *a1;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 16) = sub_1D8C2EA84(MEMORY[0x1E69E7CC0]);
  v56 = (v1 + 16);
  v55 = v1;
  *(v1 + 24) = sub_1D8C2EAAC(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB048, &qword_1D8C85C48);
  result = sub_1D8C85214();
  v5 = result;
  v6 = 0;
  v8 = v2 + 64;
  v7 = *(v2 + 64);
  v57 = v2;
  v9 = 1 << *(v2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & v7;
  v12 = (v9 + 63) >> 6;
  v13 = result + 64;
  if ((v10 & v7) != 0)
  {
    do
    {
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = (*(v57 + 48) + 16 * v17);
      v19 = *v18;
      result = v18[1];
      v20 = (*(v57 + 56) + 32 * v17);
      v21 = *v20;
      v22 = v20[1];
      v24 = v20[2];
      v23 = v20[3];
      *(v13 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v25 = (v5[6] + 16 * v17);
      *v25 = v19;
      v25[1] = result;
      v26 = v5[7] + 40 * v17;
      *v26 = v21;
      *(v26 + 8) = v22;
      *(v26 + 16) = v24;
      *(v26 + 24) = v23;
      *(v26 + 32) = 0;
      v27 = v5[2];
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v5[2] = v29;

      sub_1D8C2C5D0(v22, v24);
    }

    while (v11);
  }

  v15 = v6;
  while (1)
  {
    v6 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (v6 >= v12)
    {
      break;
    }

    v16 = *(v8 + 8 * v6);
    ++v15;
    if (v16)
    {
      v14 = __clz(__rbit64(v16));
      v11 = (v16 - 1) & v16;
      goto LABEL_10;
    }
  }

  swift_beginAccess();
  v30 = *v56;
  *v56 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB040, &qword_1D8C85C40);
  result = sub_1D8C85214();
  v31 = result;
  v32 = 0;
  v33 = *(v58 + 64);
  v34 = 1 << *(v58 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & v33;
  v37 = (v34 + 63) >> 6;
  v38 = result + 64;
  if ((v35 & v33) == 0)
  {
LABEL_17:
    v40 = v32;
    while (1)
    {
      v32 = v40 + 1;
      if (__OFADD__(v40, 1))
      {
        goto LABEL_27;
      }

      if (v32 >= v37)
      {

        swift_beginAccess();
        v54 = *(v55 + 24);
        *(v55 + 24) = v31;

        return v55;
      }

      v41 = *(v58 + 64 + 8 * v32);
      ++v40;
      if (v41)
      {
        v39 = __clz(__rbit64(v41));
        v36 = (v41 - 1) & v41;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v39 = __clz(__rbit64(v36));
    v36 &= v36 - 1;
LABEL_22:
    v42 = v39 | (v32 << 6);
    v43 = (*(v58 + 48) + 16 * v42);
    v44 = *v43;
    result = v43[1];
    v45 = (*(v58 + 56) + 32 * v42);
    v46 = *v45;
    v47 = v45[1];
    v48 = v45[2];
    v49 = v45[3];
    *(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
    v50 = (v31[6] + 16 * v42);
    *v50 = v44;
    v50[1] = result;
    v51 = v31[7] + 40 * v42;
    *v51 = v46;
    *(v51 + 8) = v47;
    *(v51 + 16) = v48;
    *(v51 + 24) = v49;
    *(v51 + 32) = 0;
    v52 = v31[2];
    v28 = __OFADD__(v52, 1);
    v53 = v52 + 1;
    if (v28)
    {
      break;
    }

    v31[2] = v53;

    result = sub_1D8C2C5D0(v48, v49);
    if (!v36)
    {
      goto LABEL_17;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D8C50B68(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  swift_beginAccess();
  v8 = *(v2 + 24);
  if (*(v8 + 16) && (v9 = sub_1D8C4668C(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 40 * v9;
    v4 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    v15 = *(v11 + 32);
    swift_endAccess();
    if (v15)
    {
    }

    else
    {
      v22[0] = v4;
      v22[1] = v12;
      v22[2] = v14;
      v22[3] = v13;
      type metadata accessor for ProtoMessageSchema();
      swift_allocObject();
      sub_1D8C2F1C8(v4, v12, v14, v13, 0);
      sub_1D8C2F1C8(v4, v12, v14, v13, 0);

      v17 = sub_1D8C7737C(a1, a2, v22, v5, &off_1F5450D10);
      if (v3)
      {
        sub_1D8C512FC(v4, v12, v14, v13, 0);
      }

      else
      {
        v23 = v17;
        v24 = 0;
        v25 = 0;
        v26 = 1;
        v21 = v17;
        swift_beginAccess();

        v18 = *(v5 + 24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *(v5 + 24);
        *(v5 + 24) = 0x8000000000000000;
        sub_1D8C7521C(&v23, a1, a2, isUniquelyReferenced_nonNull_native);

        *(v5 + 24) = v27;
        swift_endAccess();
        sub_1D8C512FC(v4, v12, v14, v13, 0);
        return v21;
      }
    }
  }

  else
  {
    swift_endAccess();
    sub_1D8C2F8AC();
    swift_allocError();
    *v16 = a1;
    *(v16 + 8) = a2;
    *(v16 + 16) = 0;
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1D8C50DB4(uint64_t a1, uint64_t a2)
{
  v5 = v2;
  swift_beginAccess();
  v8 = *(v2 + 16);
  if (*(v8 + 16) && (v9 = sub_1D8C4668C(a1, a2), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 40 * v9;
    v4 = *v11;
    v12 = *(v11 + 8);
    v14 = *(v11 + 16);
    v13 = *(v11 + 24);
    v15 = *(v11 + 32);
    swift_endAccess();
    if (v15)
    {
    }

    else
    {
      v22[0] = v4;
      v22[1] = v12;
      v22[2] = v14;
      v22[3] = v13;
      type metadata accessor for ProtoEnumSchema();
      swift_allocObject();
      sub_1D8C2F230(v4, v12, v14, v13, 0);
      sub_1D8C2F230(v4, v12, v14, v13, 0);

      v17 = sub_1D8C4702C(a1, a2, v22, v5, &off_1F5450D10);
      if (v3)
      {
        sub_1D8C51294(v4, v12, v14, v13, 0);
      }

      else
      {
        v23 = v17;
        v24 = 0;
        v25 = 0;
        v26 = 1;
        v21 = v17;
        swift_beginAccess();

        v18 = *(v5 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = *(v5 + 16);
        *(v5 + 16) = 0x8000000000000000;
        sub_1D8C75258(&v23, a1, a2, isUniquelyReferenced_nonNull_native);

        *(v5 + 16) = v27;
        swift_endAccess();
        sub_1D8C51294(v4, v12, v14, v13, 0);
        return v21;
      }
    }
  }

  else
  {
    swift_endAccess();
    sub_1D8C2F8AC();
    swift_allocError();
    *v16 = a1;
    *(v16 + 8) = a2;
    *(v16 + 16) = 1;
    swift_willThrow();
  }

  return v4;
}

unint64_t sub_1D8C51004()
{
  sub_1D8C85124();

  swift_beginAccess();
  v3 = *(*(v0 + 24) + 16);
  v1 = sub_1D8C85274();
  MEMORY[0x1DA7255C0](v1);

  return 0xD00000000000001ALL;
}

uint64_t sub_1D8C510B4()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8C51128(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1D8C51170(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8C511C8()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return sub_1D8C506D8(v2);
}

uint64_t sub_1D8C51204()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return sub_1D8C506D8(v2);
}

uint64_t sub_1D8C51294(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    sub_1D8C2C670(a2, a3);
  }
}

uint64_t sub_1D8C512FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
  }

  else
  {

    return sub_1D8C2C670(a3, a4);
  }
}

uint64_t sub_1D8C51364(__int128 *a1)
{
  v1 = *a1;
  if (qword_1EDED2EC8 != -1)
  {
    v6 = *a1;
    swift_once();
    v1 = v6;
  }

  v8 = qword_1ECAAB298;
  v9 = unk_1ECAAB2A0;
  v7 = v1;

  v2.messages._rawValue = &v7;
  SchemaManifest.combining(with:)(v2);
  v3 = v8;

  if (!v4)
  {
    type metadata accessor for ProtoSchemaStore();
    v3 = swift_allocObject();
    sub_1D8C507F4(&v10);
  }

  return v3;
}

uint64_t sub_1D8C51474(uint64_t result)
{
  if (result < 8 || (result & 6) == 6)
  {
    v1 = result;
    sub_1D8C36A64();
    swift_allocError();
    *v2 = xmmword_1D8C86190;
    *(v2 + 16) = 2;
    swift_willThrow();
    return v1;
  }

  return result;
}

uint64_t sub_1D8C51504(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v60 = MEMORY[0x1E69E7CC0];
  sub_1D8C5DF94(0, v1, 0);
  v2 = v60;
  v4 = -1 << *(v3 + 32);
  v37 = v3 + 64;
  result = sub_1D8C850C4();
  if (result < 0 || (v6 = result, result >= 1 << *(v3 + 32)))
  {
LABEL_24:
    __break(1u);
  }

  else
  {
    v38 = *(v3 + 36);
    v34 = v3 + 72;
    v35 = v1;
    v7 = 1;
    v36 = v3;
    while (1)
    {
      v8 = v6 >> 6;
      if ((*(v37 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        break;
      }

      if (v38 != *(v3 + 36))
      {
        goto LABEL_26;
      }

      v9 = *(v3 + 56);
      v10 = (*(v3 + 48) + 16 * v6);
      v12 = *v10;
      v11 = v10[1];
      v13 = (v9 + (v6 << 6));
      v14 = v13[3];
      v16 = *v13;
      v15 = v13[1];
      v44[2] = v13[2];
      v44[3] = v14;
      v44[0] = v16;
      v44[1] = v15;
      v17 = *v13;
      v18 = v13[1];
      v19 = v13[3];
      v42 = v13[2];
      v43 = v19;
      v40 = v17;
      v41 = v18;
      v47 = v42;
      v48 = v19;
      v45 = v17;
      v46 = v18;
      v49[0] = v12;
      v49[1] = v11;
      v50 = v17;
      v51 = v18;
      v52 = v42;
      v53 = v19;
      swift_bridgeObjectRetain_n();
      sub_1D8C2EE54(v44, v39);
      sub_1D8C2EE54(&v45, v39);
      sub_1D8C51FD4(v49, &qword_1ECAAAFE8, &qword_1D8C85AD0);
      v55[0] = v45;
      v55[1] = v46;
      v55[2] = v47;
      v55[3] = v48;
      v54[0] = v12;
      v54[1] = v11;
      v56 = v45;
      v57 = v46;
      v58 = v47;
      v59 = v48;

      sub_1D8C2EE54(v55, v39);
      result = sub_1D8C51FD4(v54, &qword_1ECAAAFE8, &qword_1D8C85AD0);
      v60 = v2;
      v21 = *(v2 + 16);
      v20 = *(v2 + 24);
      if (v21 >= v20 >> 1)
      {
        result = sub_1D8C5DF94((v20 > 1), v21 + 1, 1);
        v2 = v60;
      }

      *(v2 + 16) = v21 + 1;
      v22 = v2 + 80 * v21;
      *(v22 + 32) = v12;
      *(v22 + 40) = v11;
      v23 = v56;
      v24 = v57;
      v25 = v59;
      *(v22 + 80) = v58;
      *(v22 + 96) = v25;
      *(v22 + 48) = v23;
      *(v22 + 64) = v24;
      v3 = v36;
      v26 = 1 << *(v36 + 32);
      if (v6 >= v26)
      {
        goto LABEL_27;
      }

      v27 = *(v37 + 8 * v8);
      if ((v27 & (1 << v6)) == 0)
      {
        goto LABEL_28;
      }

      if (v38 != *(v36 + 36))
      {
        goto LABEL_29;
      }

      v28 = v27 & (-2 << (v6 & 0x3F));
      if (v28)
      {
        v6 = __clz(__rbit64(v28)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v8 << 6;
        v30 = v8 + 1;
        v31 = (v34 + 8 * v8);
        while (v30 < (v26 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            result = sub_1D8C32654(v6, v38, 0);
            v6 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        result = sub_1D8C32654(v6, v38, 0);
        v6 = v26;
      }

LABEL_19:
      if (v7 == v35)
      {
        return v2;
      }

      if ((v6 & 0x8000000000000000) == 0)
      {
        ++v7;
        if (v6 < 1 << *(v36 + 32))
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1D8C51838(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = result;
    for (i = (a3 + 40); ; i += 2)
    {
      v7 = *i;
      v8[0] = *(i - 1);
      v8[1] = v7;

      v5(v8);
      if (v3)
      {
        break;
      }

      if (!--v4)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t MessageManifest.isFlat.getter()
{
  v1 = *v0;
  v2 = *v0 + 64;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v0 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    while (1)
    {
      v9 = v8;
LABEL_8:
      v10 = __clz(__rbit64(v5)) | (v9 << 6);
      v11 = (*(v1 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = (*(v1 + 56) + (v10 << 6));
      v16 = v14[2];
      v15 = v14[3];
      v17 = v14[1];
      v25[0] = *v14;
      v25[1] = v17;
      v25[2] = v16;
      v25[3] = v15;
      *&v26 = v13;
      *(&v26 + 1) = v12;
      v27 = v25[0];
      v28 = v17;
      v29 = v16;
      v30 = v15;
      if ((v16 & 1) != 0 || LOBYTE(v25[0]) == 9)
      {
        break;
      }

      v5 &= v5 - 1;

      sub_1D8C2EE54(v25, &v20);
      result = sub_1D8C51FD4(&v26, &qword_1ECAAAFE8, &qword_1D8C85AD0);
      v8 = v9;
      if (!v5)
      {
        goto LABEL_5;
      }
    }

    v22 = v28;
    v23 = v29;
    v24 = v30;
    v20 = v26;
    v21 = v27;

    sub_1D8C2EE54(v25, &v19);

    v31 = v20;
    v32 = v21;
    v33 = v22;
    v34 = v23;
    v35 = v24;
    v18 = *(&v20 + 1) == 0;
LABEL_13:
    sub_1D8C51FD4(&v31, &qword_1ECAAB220, &qword_1D8C86F68);
    return v18;
  }

  else
  {
LABEL_5:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v31 = 0u;
        v18 = 1;
        goto LABEL_13;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MessageManifest.makeFieldsSelectStatementString(forTable:column:extraColumns:)(Swift::String forTable, Swift::String column, Swift::OpaquePointer extraColumns)
{
  object = column._object;
  countAndFlagsBits = column._countAndFlagsBits;
  v8 = forTable._object;
  v9 = forTable._countAndFlagsBits;
  v10 = *v3;
  v11 = sub_1D8C84DE4();
  if (!v4)
  {
    v44 = countAndFlagsBits;
    v45 = object;
    v46 = v9;
    v47 = v8;
    v13 = *(extraColumns._rawValue + 2);
    v14 = MEMORY[0x1E69E7CC0];
    if (v13)
    {
      v15 = (extraColumns._rawValue + 40);
      v16 = *(extraColumns._rawValue + 2);
      do
      {
        v18 = *(v15 - 1);
        v17 = *v15;

        sub_1D8C84DE4();

        v15 += 2;
        --v16;
      }

      while (v16);
      v53 = v10;
      v48 = v14;
      sub_1D8C5DF74(0, v13, 0);
      v19 = (extraColumns._rawValue + 40);
      do
      {
        v20 = *(v19 - 1);
        v21 = *v19;
        *&v50[0] = 8224;
        *(&v50[0] + 1) = 0xE200000000000000;

        MEMORY[0x1DA7255C0](v20, v21);

        v22 = v50[0];
        v48 = v14;
        v24 = *(v14 + 16);
        v23 = *(v14 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D8C5DF74((v23 > 1), v24 + 1, 1);
          v14 = v48;
        }

        *(v14 + 16) = v24 + 1;
        *(v14 + 16 * v24 + 32) = v22;
        v19 += 2;
        --v13;
      }

      while (v13);
      v10 = v53;
    }

    *&v50[0] = sub_1D8C51504(v10);

    sub_1D8C51F68(v50);

    v25 = *&v50[0];
    v26 = *(*&v50[0] + 16);
    if (v26)
    {
      v27 = 0;
      v53 = MEMORY[0x1E69E7CC0];
      do
      {
        v28 = 80 * v27 + 32;
        v29 = v27;
        while (1)
        {
          if (v29 >= *(v25 + 16))
          {
            __break(1u);
            MEMORY[0x1DA725E90](0);

            __break(1u);
            goto LABEL_27;
          }

          v50[0] = *(v25 + v28);
          v30 = *(v25 + v28 + 16);
          v31 = *(v25 + v28 + 32);
          v32 = *(v25 + v28 + 64);
          v51 = *(v25 + v28 + 48);
          v52 = v32;
          v50[1] = v30;
          v50[2] = v31;
          v33 = v50[0];
          sub_1D8C34EF8(v50, &v48);
          sub_1D8C84DE4();
          if ((v51 & 1) == 0)
          {
            break;
          }

          ++v29;
          sub_1D8C51FD4(v50, &qword_1ECAAB068, &unk_1D8C87380);
          v28 += 80;
          if (v26 == v29)
          {
            goto LABEL_24;
          }
        }

        v48 = 0;
        v49 = 0xE000000000000000;
        sub_1D8C85124();

        v48 = 0x285445475F502020;
        v49 = 0xE800000000000000;
        MEMORY[0x1DA7255C0](v44, v45);
        MEMORY[0x1DA7255C0](2564140, 0xE300000000000000);
        MEMORY[0x1DA7255C0](v33, *(&v33 + 1));
        MEMORY[0x1DA7255C0](0x205341202927, 0xE600000000000000);
        MEMORY[0x1DA7255C0](v33, *(&v33 + 1));
        sub_1D8C51FD4(v50, &qword_1ECAAB068, &unk_1D8C87380);
        v34 = v48;
        v43 = v49;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v53 = sub_1D8C4AAA0(0, *(v53 + 2) + 1, 1, v53);
        }

        v36 = *(v53 + 2);
        v35 = *(v53 + 3);
        if (v36 >= v35 >> 1)
        {
          v53 = sub_1D8C4AAA0((v35 > 1), v36 + 1, 1, v53);
        }

        v27 = v29 + 1;
        v37 = v53;
        *(v53 + 2) = v36 + 1;
        v38 = &v37[16 * v36];
        *(v38 + 4) = v34;
        *(v38 + 5) = v43;
      }

      while (v26 - 1 != v29);
    }

    else
    {
      v53 = MEMORY[0x1E69E7CC0];
    }

LABEL_24:

    *&v50[0] = v14;
    sub_1D8C4B134(v53);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB228, &qword_1D8C877F0);
    sub_1D8C52AF8();
    v39 = sub_1D8C84D54();
    v41 = v40;

    *&v50[0] = 0;
    *(&v50[0] + 1) = 0xE000000000000000;
    sub_1D8C85124();

    *&v50[0] = 0xA5443454C4553;
    *(&v50[0] + 1) = 0xE700000000000000;
    MEMORY[0x1DA7255C0](v39, v41);

    MEMORY[0x1DA7255C0](0x204D4F52460ALL, 0xE600000000000000);
    MEMORY[0x1DA7255C0](v46, v47);
    v12 = *(&v50[0] + 1);
    v11 = *&v50[0];
  }

LABEL_27:
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t sub_1D8C51F68(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8C7C490(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_1D8C52034(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D8C51FD4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D8C52034(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D8C85264();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB068, &unk_1D8C87380);
        v5 = sub_1D8C84F84();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D8C5224C(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D8C5213C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D8C5213C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 80 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = *v10;
      v11 = (v10 - 80);
      v12 = *v10 == *(v10 - 80) && *(v10 + 8) == *(v10 - 72);
      if (v12 || (result = sub_1D8C852A4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 80;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v18 = *(v10 + 32);
      v19 = *(v10 + 48);
      v20 = *(v10 + 64);
      v16 = *v10;
      v17 = *(v10 + 16);
      v13 = *(v10 - 32);
      *(v10 + 32) = *(v10 - 48);
      *(v10 + 48) = v13;
      *(v10 + 64) = *(v10 - 16);
      v14 = *(v10 - 64);
      *v10 = *v11;
      *(v10 + 16) = v14;
      v10 -= 80;
      v11[3] = v19;
      v11[4] = v20;
      v11[1] = v17;
      v11[2] = v18;
      *v11 = v16;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D8C5224C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v97 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_107:
    v97 = *v97;
    if (!v97)
    {
      goto LABEL_145;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_139:
      result = sub_1D8C7C468(v9);
      v9 = result;
    }

    v86 = v9 + 16;
    v87 = *(v9 + 2);
    if (v87 >= 2)
    {
      while (1)
      {
        v88 = *v6;
        if (!*v6)
        {
          goto LABEL_143;
        }

        v89 = &v9[16 * v87];
        v6 = *v89;
        v90 = &v86[2 * v87];
        v91 = v90[1];
        sub_1D8C5289C((v88 + 80 * *v89), (v88 + 80 * *v90), (v88 + 80 * v91), v97);
        if (v5)
        {
        }

        if (v91 < v6)
        {
          goto LABEL_131;
        }

        if (v87 - 2 >= *v86)
        {
          goto LABEL_132;
        }

        *v89 = v6;
        *(v89 + 1) = v91;
        v92 = *v86 - v87;
        if (*v86 < v87)
        {
          goto LABEL_133;
        }

        v87 = *v86 - 1;
        result = memmove(v90, v90 + 2, 16 * v92);
        *v86 = v87;
        v6 = a3;
        if (v87 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v11 = *v6;
      v12 = (*v6 + 80 * v8);
      result = *v12;
      v13 = v12[1];
      v14 = (*v6 + 80 * v10);
      if (result == *v14 && v13 == v14[1])
      {
        v16 = 0;
      }

      else
      {
        result = sub_1D8C852A4();
        v16 = result;
      }

      v8 = v10 + 2;
      if (v10 + 2 < v7)
      {
        v17 = (v11 + 80 * v10 + 88);
        v18 = v17;
        do
        {
          result = v17[9];
          v20 = v18[10];
          v18 += 10;
          v19 = v20;
          if (result == *(v17 - 1) && v19 == *v17)
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_1D8C852A4();
            if ((v16 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v8;
          v17 = v18;
        }

        while (v7 != v8);
        v8 = v7;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v8 < v10)
        {
          goto LABEL_136;
        }

        if (v10 < v8)
        {
          v22 = 80 * v8 - 80;
          v23 = v10;
          v24 = 80 * v10;
          v25 = v8;
          v94 = v23;
          do
          {
            if (v23 != --v25)
            {
              v27 = *v6;
              if (!*v6)
              {
                goto LABEL_142;
              }

              v26 = (v27 + v22);
              v103 = *(v27 + v24 + 32);
              v105 = *(v27 + v24 + 48);
              v107 = *(v27 + v24 + 64);
              v99 = *(v27 + v24);
              v101 = *(v27 + v24 + 16);
              result = memmove((v27 + v24), (v27 + v22), 0x50uLL);
              v26[2] = v103;
              v26[3] = v105;
              v26[4] = v107;
              *v26 = v99;
              v26[1] = v101;
            }

            ++v23;
            v22 -= 80;
            v24 += 80;
          }

          while (v23 < v25);
          v10 = v94;
        }
      }
    }

    v28 = v6[1];
    if (v8 < v28)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_135;
      }

      if (v8 - v10 < a4)
      {
        break;
      }
    }

LABEL_56:
    if (v8 < v10)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D8C4A268(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v40 = *(v9 + 2);
    v39 = *(v9 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_1D8C4A268((v39 > 1), v40 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v41;
    v42 = &v9[16 * v40];
    *(v42 + 4) = v10;
    *(v42 + 5) = v8;
    v43 = *v97;
    if (!*v97)
    {
      goto LABEL_144;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v9 + 4);
          v46 = *(v9 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_76:
          if (v48)
          {
            goto LABEL_122;
          }

          v61 = &v9[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_125;
          }

          v67 = &v9[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_128;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_129;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_97;
          }

          goto LABEL_90;
        }

        v71 = &v9[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_90:
        if (v66)
        {
          goto LABEL_124;
        }

        v74 = &v9[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_127;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_97:
        v82 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
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
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        if (!*v6)
        {
          goto LABEL_141;
        }

        v83 = *&v9[16 * v82 + 32];
        v84 = *&v9[16 * v44 + 40];
        sub_1D8C5289C((*v6 + 80 * v83), (*v6 + 80 * *&v9[16 * v44 + 32]), (*v6 + 80 * v84), v43);
        if (v5)
        {
        }

        if (v84 < v83)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D8C7C468(v9);
        }

        if (v82 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v85 = &v9[16 * v82];
        *(v85 + 4) = v83;
        *(v85 + 5) = v84;
        result = sub_1D8C7C3DC(v44);
        v41 = *(v9 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v9[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_120;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_121;
      }

      v56 = &v9[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_123;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_126;
      }

      if (v60 >= v52)
      {
        v78 = &v9[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_130;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_97;
      }

      goto LABEL_76;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_107;
    }
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_137;
  }

  v93 = v5;
  if (v10 + a4 >= v28)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = v10 + a4;
  }

  if (v5 < v10)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  if (v8 == v5)
  {
LABEL_55:
    v5 = v93;
    goto LABEL_56;
  }

  v29 = *v6;
  v30 = *v6 + 80 * v8;
  v95 = v10;
  v31 = v10 - v8;
LABEL_44:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 80);
    v35 = *v33 == *(v33 - 80) && *(v33 + 8) == *(v33 - 72);
    if (v35 || (result = sub_1D8C852A4(), (result & 1) == 0))
    {
LABEL_43:
      ++v8;
      v30 += 80;
      --v31;
      if (v8 != v5)
      {
        goto LABEL_44;
      }

      v8 = v5;
      v6 = a3;
      v10 = v95;
      goto LABEL_55;
    }

    if (!v29)
    {
      break;
    }

    v104 = *(v33 + 32);
    v106 = *(v33 + 48);
    v108 = *(v33 + 64);
    v100 = *v33;
    v102 = *(v33 + 16);
    v36 = *(v33 - 32);
    *(v33 + 32) = *(v33 - 48);
    *(v33 + 48) = v36;
    *(v33 + 64) = *(v33 - 16);
    v37 = *(v33 - 64);
    *v33 = *v34;
    *(v33 + 16) = v37;
    v33 -= 80;
    v34[3] = v106;
    v34[4] = v108;
    v34[1] = v102;
    v34[2] = v104;
    *v34 = v100;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

uint64_t sub_1D8C5289C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 80;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 80;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[80 * v9] <= a4)
    {
      memmove(a4, __dst, 80 * v9);
    }

    v12 = &v4[80 * v9];
    if (v8 < 80)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v14 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v14 && (sub_1D8C852A4() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 80;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 80;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 80;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    memmove(v7, v13, 0x50uLL);
    goto LABEL_9;
  }

  if (a4 != __src || &__src[80 * v11] <= a4)
  {
    memmove(a4, __src, 80 * v11);
  }

  v12 = &v4[80 * v11];
  if (v10 >= 80 && v6 > v7)
  {
LABEL_24:
    v15 = v6 - 80;
    v5 -= 80;
    v16 = v12;
    do
    {
      v17 = *(v16 - 10);
      v18 = *(v16 - 9);
      v16 -= 80;
      v19 = v17 == *(v6 - 10) && v18 == *(v6 - 9);
      if (!v19 && (sub_1D8C852A4() & 1) != 0)
      {
        if (v5 + 80 != v6)
        {
          memmove(v5, v6 - 80, 0x50uLL);
        }

        if (v12 <= v4 || (v6 -= 80, v15 <= v7))
        {
          v6 = v15;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      if (v5 + 80 != v12)
      {
        memmove(v5, v16, 0x50uLL);
      }

      v5 -= 80;
      v12 = v16;
    }

    while (v16 > v4);
    v12 = v16;
  }

LABEL_39:
  v20 = (v12 - v4) / 80;
  if (v6 != v4 || v6 >= &v4[80 * v20])
  {
    memmove(v6, v4, 80 * v20);
  }

  return 1;
}

unint64_t sub_1D8C52AF8()
{
  result = qword_1ECAAB230;
  if (!qword_1ECAAB230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAB228, &qword_1D8C877F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB230);
  }

  return result;
}

uint64_t sub_1D8C52B5C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, char **a4@<X8>)
{
  v5 = v4;
  v7 = *a3;
  v6 = a3[1];
  v88 = a1;
  v89 = a2;
  sub_1D8C46638();
  v8 = sub_1D8C85074();

  v80 = *(v8 + 16);
  if (!v80)
  {
    v11 = MEMORY[0x1E69E7CC0];
LABEL_29:

    *a4 = v11;
    a4[1] = v7;
    a4[2] = v6;
    return result;
  }

  v9 = 0;
  v10 = (v8 + 40);
  v11 = MEMORY[0x1E69E7CC0];
  v12 = v6;
  v13 = v7;
  v81 = v8;
  while (v9 < *(v8 + 16))
  {
    if (v12 >> 62 != 1)
    {

      sub_1D8C2F8AC();
      swift_allocError();
      v70 = xmmword_1D8C86F80;
LABEL_33:
      *v69 = v70;
      *(v69 + 16) = 8;
      swift_willThrow();
      return sub_1D8C2BBF0(v13, v12);
    }

    v86 = v11;
    v90 = v5;
    v18 = *(v10 - 1);
    v17 = *v10;
    v84 = v10;
    v19 = v12 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1D8C2B50C(v13, v12);
    v20 = sub_1D8C535D0(93, 0xE100000000000000, v18, v17);
    v87 = v13;
    v85 = v9;
    v83 = v21;
    if (v21)
    {
      ObjectType = swift_getObjectType();
      v23 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
      swift_unknownObjectRetain();
      v24 = v90;
      v23(v18, v17, ObjectType, v19);
      v5 = v24;
      if (v24)
      {
        sub_1D8C2BBF0(v13, v12);

        sub_1D8C2BBF0(v13, v12);
        sub_1D8C2BBF0(v13, v12);
        goto LABEL_41;
      }

      v26 = v25;
      v27 = v12;
      sub_1D8C2BBF0(v13, v12);

      v28 = swift_getObjectType();
      v29 = *(v26 + 16);
      swift_unknownObjectRetain();
      LOBYTE(v29) = v29(v28, v26);
      swift_unknownObjectRelease();
      if (v29)
      {
        sub_1D8C2BBF0(v13, v12);

        sub_1D8C2F8AC();
        swift_allocError();
        *v71 = xmmword_1D8C86FB0;
        *(v71 + 16) = 8;
        swift_willThrow();
        sub_1D8C2BBF0(v13, v12);
        return swift_unknownObjectRelease();
      }

      (*(v26 + 56))(&v88, v28, v26);
      sub_1D8C2BBF0(v13, v12);
      v30 = v88;
      v6 = v89;
      v31 = (*(v26 + 48))(v28, v26);
      v11 = v86;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D8C4A884(0, *(v86 + 2) + 1, 1, v86);
      }

      v90 = v30;
      v33 = *(v11 + 2);
      v32 = *(v11 + 3);
      v34 = v33 + 1;
      if (v33 >= v32 >> 1)
      {
        v11 = sub_1D8C4A884((v32 > 1), v33 + 1, 1, v11);
      }

      v14 = 0;
    }

    else
    {
      v35 = v20;
      sub_1D8C535D0(91, 0xE100000000000000, v18, v17);
      if (v36)
      {
        sub_1D8C2BBF0(v13, v12);

        sub_1D8C2F8AC();
        swift_allocError();
        v70 = xmmword_1D8C86FA0;
        goto LABEL_33;
      }

      v79 = v35;
      v82 = v12;

      v37 = sub_1D8C84F14();
      v39 = v38;
      v41 = v40;
      v43 = v42;

      v44 = v13;
      v45 = swift_getObjectType();
      swift_unknownObjectRetain();
      v46 = MEMORY[0x1DA725550](v37, v39, v41, v43);
      v48 = v47;

      v49 = v90;
      (*(v19 + 56))(v46, v48, v45, v19);
      v90 = v49;
      if (v49)
      {
        sub_1D8C2BBF0(v44, v82);

        sub_1D8C2BBF0(v44, v82);
        sub_1D8C2BBF0(v44, v82);
      }

      v51 = v50;
      sub_1D8C2BBF0(v44, v82);

      v52 = swift_getObjectType();
      v53 = *(v51 + 16);
      swift_unknownObjectRetain();
      LOBYTE(v53) = v53(v52, v51);
      swift_unknownObjectRelease();
      if ((v53 & 1) == 0)
      {
        sub_1D8C2BBF0(v87, v82);

        sub_1D8C2F8AC();
        swift_allocError();
        *v72 = xmmword_1D8C86F90;
        *(v72 + 16) = 8;
        swift_willThrow();
        v73 = v87;
        v74 = v82;
        goto LABEL_39;
      }

      if (v79 >> 14 < sub_1D8C84E44() >> 14)
      {
        goto LABEL_43;
      }

      v54 = sub_1D8C84F14();
      v56 = v55;
      v58 = v57;
      v60 = v59;

      if (!((v54 ^ v56) >> 14))
      {
        goto LABEL_44;
      }

      v61 = v90;
      v62 = sub_1D8C53C58(v54, v56, v58, v60, 10);
      if ((v63 & 0x100) != 0)
      {
        v62 = sub_1D8C536C0(v54, v56, v58, v60, 10);
      }

      v64 = v62;
      v65 = v63;

      if (v65)
      {
        v75 = v87;
        v76 = v82;
        sub_1D8C2BBF0(v87, v82);
        goto LABEL_38;
      }

      v27 = v82;
      v11 = v86;
      (*(v51 + 56))(&v88, v52, v51);
      v5 = v61;
      if (v61)
      {
        swift_unknownObjectRelease();
        sub_1D8C2BBF0(v87, v82);
        sub_1D8C2BBF0(v87, v82);
LABEL_41:
      }

      sub_1D8C2BBF0(v87, v82);
      v66 = v88;
      v6 = v89;
      v31 = (*(v51 + 48))(v52, v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D8C4A884(0, *(v86 + 2) + 1, 1, v86);
      }

      v90 = v66;
      v33 = *(v11 + 2);
      v67 = *(v11 + 3);
      v34 = v33 + 1;
      if (v33 >= v67 >> 1)
      {
        v11 = sub_1D8C4A884((v67 > 1), v33 + 1, 1, v11);
      }

      v14 = v64;
    }

    swift_unknownObjectRelease();
    v15 = v27;
    v9 = v85 + 1;
    sub_1D8C2BBF0(v87, v15);
    *(v11 + 2) = v34;
    v16 = &v11[24 * v33];
    *(v16 + 4) = v31;
    *(v16 + 5) = v14;
    v16[48] = (v83 & 1) == 0;
    v10 = v84 + 2;
    v12 = v6;
    v7 = v90;
    v13 = v90;
    v8 = v81;
    if (v80 == v85 + 1)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  v75 = v87;
  v76 = v82;
  sub_1D8C2BBF0(v87, v82);

LABEL_38:

  sub_1D8C2F8AC();
  swift_allocError();
  *v77 = xmmword_1D8C86FA0;
  *(v77 + 16) = 8;
  swift_willThrow();
  v73 = v75;
  v74 = v76;
LABEL_39:
  sub_1D8C2BBF0(v73, v74);
  return swift_unknownObjectRelease();
}

__n128 FieldPathAndType.init(fieldPath:type:)@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  result = *a2;
  *(a3 + 8) = *a2;
  return result;
}

uint64_t FieldPathAndType.fieldPath.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t FieldPathAndType.type.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D8C2B50C(v2, v3);
}

uint64_t FieldPathAndType.type.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1D8C2BBF0(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t sub_1D8C53538(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D8C53580(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D8C535D0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v4 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = 4 * v4;
  v8 = 15;
  while (sub_1D8C84EF4() != a1 || v9 != a2)
  {
    v10 = sub_1D8C852A4();

    if (v10)
    {
      return v8;
    }

    v8 = sub_1D8C84E44();
    if (v7 == v8 >> 14)
    {
      return 0;
    }
  }

  return v8;
}

unsigned __int8 *sub_1D8C536C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1D8C53D24();

  result = sub_1D8C84F04();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1D8C7ABF8();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1D8C85144();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1D8C53C58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1D8C85144();
  }

  result = sub_1D8C53D78(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unint64_t sub_1D8C53D24()
{
  result = qword_1ECAAB238;
  if (!qword_1ECAAB238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB238);
  }

  return result;
}

uint64_t sub_1D8C53D78(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1D8C7B064(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1D8C84EA4();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1D8C7B064(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1D8C7B064(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1D8C84EA4();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_1D8C541E4()
{
  v1 = *v0;
  sub_1D8C853B4();
  sub_1D8C853D4();
  return sub_1D8C853E4();
}

uint64_t sub_1D8C54258()
{
  v1 = *v0;
  sub_1D8C853B4();
  sub_1D8C853D4();
  return sub_1D8C853E4();
}

uint64_t sub_1D8C5429C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D8C5447C(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ProtoWireType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ProtoWireType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D8C54428()
{
  result = qword_1ECAAB240;
  if (!qword_1ECAAB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB240);
  }

  return result;
}

uint64_t sub_1D8C5447C(uint64_t result)
{
  if (result >= 6u)
  {
    return 6;
  }

  else
  {
    return result;
  }
}

uint64_t EnumSchema.name.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(*(v2 + 8) + 8))(ObjectType);
}

uint64_t EnumSchemaDescribing.asPublic()@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
  return swift_unknownObjectRetain();
}

uint64_t EnumSchema.options.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 24))(ObjectType, v2);
}

uint64_t EnumSchema.valueSet.getter()
{
  v1 = *v0;
  v2 = v0[1];
  ObjectType = swift_getObjectType();
  return (*(v2 + 16))(ObjectType, v2);
}

Swift::Int __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnumSchema.value(withName:)(Swift::String withName)
{
  object = withName._object;
  countAndFlagsBits = withName._countAndFlagsBits;
  v4 = *v1;
  v5 = v1[1];
  ObjectType = swift_getObjectType();
  return (*(v5 + 40))(countAndFlagsBits, object, ObjectType, v5);
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> EnumSchema.name(forValue:)(Swift::Int forValue)
{
  v3 = *v1;
  v4 = v1[1];
  ObjectType = swift_getObjectType();
  v6 = (*(v4 + 48))(forValue, ObjectType, v4);
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t sub_1D8C546FC(uint64_t a1)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    while (1)
    {
      v10 = v9;
LABEL_8:
      v11 = __clz(__rbit64(v6)) | (v10 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v13 = v12[1];
      v14 = *(*(a1 + 56) + 8 * v11);
      v15[0] = *v12;
      v15[1] = v13;
      v15[2] = v14;

      sub_1D8C59254(v15);
      if (v1)
      {
        break;
      }

      v6 &= v6 - 1;

      v9 = v10;
      if (!v6)
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
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
      }

      v6 = *(v3 + 8 * v10);
      ++v9;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t SchematizedData.asUnsafe<A>(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_getObjectType();
  v3 = v0[4];
  v4 = v0[5];
  return MessageSchemaDescribing.schematizing<A>(data:block:)();
}

uint64_t SchematizedData.asJSONData()()
{
  v2 = v0[2];
  v3 = v0[3];
  swift_getObjectType();
  v4 = v0[4];
  v5 = v0[5];
  result = MessageSchemaDescribing.schematizing<A>(data:block:)();
  if (!v1)
  {
    return v7;
  }

  return result;
}

uint64_t SchematizedData.messageSchemaImpl.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return swift_unknownObjectRetain();
}

uint64_t SchematizedData.data.getter()
{
  v1 = *(v0 + 32);
  sub_1D8C2C5E4(v1, *(v0 + 40));
  return v1;
}

uint64_t SchematizedData.messageSchema.getter@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_getObjectType();
  return MessageSchemaDescribing.asPublic()(v3, a1);
}

uint64_t sub_1D8C54A48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  ObjectType = swift_getObjectType();
  result = (*(v9 + 56))(a2, a3, ObjectType, v9);
  if (!v4)
  {
    v15 = v14;
    v16 = swift_getObjectType();
    (*(v15 + 56))(&v56, v16, v15);
    v17 = v56;
    v18 = (*(v15 + 48))(v16, v15);
    v19 = v11 - v10;
    if (!v10)
    {
      v19 = 0;
    }

    *&v56 = v10;
    *(&v56 + 1) = v11;
    v58 = 0;
    v57 = v19;
    v59 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_1D8C861A0;
    *(v20 + 32) = v18;
    *(v20 + 40) = 0;
    *(v20 + 48) = 0;
    *v53 = v20;
    *&v53[8] = v17;
    sub_1D8C2B50C(v17, *(&v17 + 1));
    sub_1D8C2B670(v53, 0, v60);
    swift_unknownObjectRelease();
    sub_1D8C2BBF0(v17, *(&v17 + 1));

    sub_1D8C2BBF0(v17, *(&v17 + 1));
    if (v60[40] == 255)
    {
      result = sub_1D8C51FD4(v60, &qword_1ECAAB138, &unk_1D8C86900);
      *a4 = 0u;
      *(a4 + 16) = 0u;
      v22 = -256;
    }

    else
    {
      sub_1D8C29EAC(v60, &v56);
      if (v59 > 4u)
      {
        if (v59 > 7u)
        {
          if (v59 == 8)
          {
            sub_1D8C2AA1C(&v56, v53);
            v32 = v54;
            v33 = v55;
            __swift_project_boxed_opaque_existential_1(v53, v54);
            v34 = (*(v33 + 24))(v32, v33);
            v36 = v35;
            __swift_destroy_boxed_opaque_existential_1(v53);
            result = sub_1D8C2AB08(v60);
            *a4 = v34;
            *(a4 + 8) = v36;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
            v22 = 2048;
          }

          else if (v59 == 9)
          {
            sub_1D8C2AA1C(&v56, v53);
            v24 = v54;
            v25 = v55;
            __swift_project_boxed_opaque_existential_1(v53, v54);
            v26 = (*(v25 + 16))(v24, v25);
            v28 = v27;
            __swift_destroy_boxed_opaque_existential_1(v53);
            result = sub_1D8C2AB08(v60);
            *a4 = v26;
            *(a4 + 8) = v28;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
            v22 = 2304;
          }

          else
          {
            v54 = MEMORY[0x1E69E6290];
            v55 = MEMORY[0x1E6969DF8];
            v52 = v56;
            *v53 = v57;
            v41 = __swift_project_boxed_opaque_existential_1(v53, MEMORY[0x1E69E6290]);
            v42 = *v41;
            if (*v41 && (v43 = v41[1], v44 = &v43[-v42], v43 != v42))
            {
              if (v44 <= 14)
              {
                v45 = sub_1D8C45074(*v41, v43);
                v46 = v49 & 0xFFFFFFFFFFFFFFLL;
                swift_unknownObjectRetain();
              }

              else
              {
                swift_unknownObjectRetain();
                if (v44 >= 0x7FFFFFFF)
                {
                  v45 = sub_1D8C45134(v42, v43);
                  v46 = v50 | 0x8000000000000000;
                }

                else
                {
                  v45 = sub_1D8C2B5D0(v42, v43);
                  v46 = v48 | 0x4000000000000000;
                }
              }
            }

            else
            {
              swift_unknownObjectRetain();
              v45 = 0;
              v46 = 0xC000000000000000;
            }

            __swift_destroy_boxed_opaque_existential_1(v53);
            swift_unknownObjectRelease();
            type metadata accessor for SchematizedData();
            v47 = swift_allocObject();
            *(v47 + 16) = v52;
            *(v47 + 32) = v45;
            *(v47 + 40) = v46;
            result = sub_1D8C2AB08(v60);
            *a4 = v47;
            *(a4 + 8) = 0;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
            v22 = 2560;
          }
        }

        else if (v59 == 5)
        {
          v31 = v56;
          result = sub_1D8C2AB08(v60);
          *a4 = v31;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
          v22 = 1280;
        }

        else if (v59 == 6)
        {
          v21 = v56;
          result = sub_1D8C2AB08(v60);
          *a4 = v21;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
          v22 = 1536;
        }

        else
        {
          v51 = v56;
          v39 = v57;
          v40 = v58;
          result = sub_1D8C2AB08(v60);
          v22 = v40 | 0x700;
          *a4 = v51;
          *(a4 + 16) = v39;
        }

        goto LABEL_13;
      }

      if (v59 > 1u)
      {
        if (v59 == 2)
        {
          v30 = v56;
          result = sub_1D8C2AB08(v60);
          *a4 = v30;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
          v22 = 512;
        }

        else if (v59 == 3)
        {
          v23 = v56;
          result = sub_1D8C2AB08(v60);
          *a4 = v23;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
          v22 = 768;
        }

        else
        {
          v37 = v56;
          result = sub_1D8C2AB08(v60);
          *a4 = v37;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
          v22 = 1024;
        }

        goto LABEL_13;
      }

      if (!v59)
      {
        v29 = v56;
        result = sub_1D8C2AB08(v60);
        *a4 = v29;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        return result;
      }

      v38 = v56;
      result = sub_1D8C2AB08(v60);
      *a4 = v38;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      v22 = 256;
    }

LABEL_13:
    *(a4 + 32) = v22;
  }

  return result;
}

uint64_t UnsafeSchematizedData.value(forFieldName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v8 = *v3;
  v9 = v3[1];
  v10 = v3[2];
  v11 = v3[3];
  ObjectType = swift_getObjectType();
  result = (*(v9 + 56))(a1, a2, ObjectType, v9);
  if (!v4)
  {
    v15 = v14;
    v16 = swift_getObjectType();
    (*(v15 + 56))(&v23, v16, v15);
    v18 = v23;
    v17 = v24;
    v19 = (*(v15 + 48))(v16, v15);
    v20 = v11 - v10;
    if (!v10)
    {
      v20 = 0;
    }

    v23 = v10;
    v24 = v11;
    v26 = 0;
    v27 = 0;
    v25 = v20;
    v28 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D8C861A0;
    *(v21 + 32) = v19;
    *(v21 + 40) = 0;
    *(v21 + 48) = 0;
    v22[0] = v21;
    v22[1] = v18;
    v22[2] = v17;
    sub_1D8C2B50C(v18, v17);
    sub_1D8C2B670(v22, 0, a3);
    swift_unknownObjectRelease();
    sub_1D8C2BBF0(v18, v17);

    return sub_1D8C2BBF0(v18, v17);
  }

  return result;
}

uint64_t SchematizedData.value(forField:)(__int128 *a1)
{
  v7 = *a1;
  v2 = v1[2];
  v3 = v1[3];
  swift_getObjectType();
  v5 = v1[4];
  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB248, &unk_1D8C87210);
  return MessageSchemaDescribing.schematizing<A>(data:block:)();
}

void *sub_1D8C5523C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(&v47, ObjectType, a2);
  if (!v3)
  {
    v10 = v47;
    v11 = (*(a2 + 48))(ObjectType, a2);
    v12 = v7 - v6;
    if (!v6)
    {
      v12 = 0;
    }

    *&v47 = v6;
    *(&v47 + 1) = v7;
    v49 = 0;
    v48 = v12;
    v50 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB200, &unk_1D8C86760);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D8C861A0;
    *(v13 + 32) = v11;
    *(v13 + 40) = 0;
    *(v13 + 48) = 0;
    *v44 = v13;
    *&v44[8] = v10;
    sub_1D8C2B670(v44, 0, v51);

    sub_1D8C2BBF0(v10, *(&v10 + 1));
    if (v51[40] == 255)
    {
      result = sub_1D8C51FD4(v51, &qword_1ECAAB138, &unk_1D8C86900);
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = -256;
    }

    else
    {
      sub_1D8C29EAC(v51, &v47);
      if (v50 <= 4u)
      {
        if (v50 <= 1u)
        {
          v21 = v47;
          if (v50)
          {
            result = sub_1D8C2AB08(v51);
            *a3 = v21;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
            *(a3 + 24) = 0;
            *(a3 + 32) = 256;
          }

          else
          {
            result = sub_1D8C2AB08(v51);
            *a3 = v21;
            *(a3 + 8) = 0;
            *(a3 + 16) = 0;
            *(a3 + 24) = 0;
            *(a3 + 32) = 0;
          }
        }

        else if (v50 == 2)
        {
          v22 = v47;
          result = sub_1D8C2AB08(v51);
          *a3 = v22;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *(a3 + 24) = 0;
          *(a3 + 32) = 512;
        }

        else if (v50 == 3)
        {
          v15 = v47;
          result = sub_1D8C2AB08(v51);
          *a3 = v15;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *(a3 + 24) = 0;
          *(a3 + 32) = 768;
        }

        else
        {
          v29 = v47;
          result = sub_1D8C2AB08(v51);
          *a3 = v29;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *(a3 + 24) = 0;
          *(a3 + 32) = 1024;
        }
      }

      else if (v50 > 7u)
      {
        if (v50 == 8)
        {
          sub_1D8C2AA1C(&v47, v44);
          v24 = v45;
          v25 = v46;
          __swift_project_boxed_opaque_existential_1(v44, v45);
          v26 = (*(v25 + 24))(v24, v25);
          v28 = v27;
          __swift_destroy_boxed_opaque_existential_1(v44);
          result = sub_1D8C2AB08(v51);
          *a3 = v26;
          *(a3 + 8) = v28;
          *(a3 + 16) = 0;
          *(a3 + 24) = 0;
          *(a3 + 32) = 2048;
        }

        else if (v50 == 9)
        {
          sub_1D8C2AA1C(&v47, v44);
          v16 = v45;
          v17 = v46;
          __swift_project_boxed_opaque_existential_1(v44, v45);
          v18 = (*(v17 + 16))(v16, v17);
          v20 = v19;
          __swift_destroy_boxed_opaque_existential_1(v44);
          result = sub_1D8C2AB08(v51);
          *a3 = v18;
          *(a3 + 8) = v20;
          *(a3 + 16) = 0;
          *(a3 + 24) = 0;
          *(a3 + 32) = 2304;
        }

        else
        {
          v45 = MEMORY[0x1E69E6290];
          v46 = MEMORY[0x1E6969DF8];
          v43 = v47;
          *v44 = v48;
          v32 = __swift_project_boxed_opaque_existential_1(v44, MEMORY[0x1E69E6290]);
          v33 = *v32;
          if (*v32 && (v34 = v32[1], v35 = &v34[-v33], v34 != v33))
          {
            if (v35 <= 14)
            {
              v36 = sub_1D8C45074(*v32, v34);
              v37 = v40 & 0xFFFFFFFFFFFFFFLL;
              swift_unknownObjectRetain();
            }

            else
            {
              swift_unknownObjectRetain();
              if (v35 >= 0x7FFFFFFF)
              {
                v36 = sub_1D8C45134(v33, v34);
                v37 = v41 | 0x8000000000000000;
              }

              else
              {
                v36 = sub_1D8C2B5D0(v33, v34);
                v37 = v39 | 0x4000000000000000;
              }
            }
          }

          else
          {
            swift_unknownObjectRetain();
            v36 = 0;
            v37 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(v44);
          swift_unknownObjectRelease();
          type metadata accessor for SchematizedData();
          v38 = swift_allocObject();
          *(v38 + 16) = v43;
          *(v38 + 32) = v36;
          *(v38 + 40) = v37;
          result = sub_1D8C2AB08(v51);
          *a3 = v38;
          *(a3 + 8) = 0;
          *(a3 + 16) = 0;
          *(a3 + 24) = 0;
          *(a3 + 32) = 2560;
        }
      }

      else if (v50 == 5)
      {
        v23 = v47;
        result = sub_1D8C2AB08(v51);
        *a3 = v23;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = 1280;
      }

      else if (v50 == 6)
      {
        v14 = v47;
        result = sub_1D8C2AB08(v51);
        *a3 = v14;
        *(a3 + 8) = 0;
        *(a3 + 16) = 0;
        *(a3 + 24) = 0;
        *(a3 + 32) = 1536;
      }

      else
      {
        v42 = v47;
        v30 = v48;
        v31 = v49;
        result = sub_1D8C2AB08(v51);
        *a3 = v42;
        *(a3 + 16) = v30;
        *(a3 + 32) = v31 | 0x700;
      }
    }
  }

  return result;
}

uint64_t sub_1D8C55750()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_getObjectType();
  v4 = v0[4];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB248, &unk_1D8C87210);
  return MessageSchemaDescribing.schematizing<A>(data:block:)();
}

uint64_t sub_1D8C55804@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  v12 = v11 - v10;
  if (!v10)
  {
    v12 = 0;
  }

  *&v56 = a1[2];
  *(&v56 + 1) = v11;
  v58 = 0;
  v57 = v12;
  v59 = 1;
  swift_getObjectType();
  MessageSchemaDescribing.asPublic()(v9, &v53);
  v55[0] = v53;
  v55[1] = *(&v53 + 1) | 0x4000000000000000;

  result = sub_1D8C52B5C(a2, a3, v55, &v49);
  if (!v4)
  {
    v14 = *(&v49 + 1);
    v15 = v50;
    if (!*(v49 + 16))
    {
      sub_1D8C2F8AC();
      swift_allocError();
      *v18 = 0xD000000000000011;
      *(v18 + 8) = 0x80000001D8C8BBA0;
      *(v18 + 16) = 5;
      swift_willThrow();

      return sub_1D8C2BBF0(v14, v15);
    }

    v53 = v49;
    v54 = v50;
    sub_1D8C2B670(&v53, 0, v60);

    sub_1D8C2BBF0(v14, v15);
    if (v60[40] == 255)
    {
      result = sub_1D8C51FD4(v60, &qword_1ECAAB138, &unk_1D8C86900);
      *a4 = 0u;
      *(a4 + 16) = 0u;
      v17 = -256;
    }

    else
    {
      sub_1D8C29EAC(v60, &v56);
      if (v59 > 4u)
      {
        if (v59 > 7u)
        {
          if (v59 == 8)
          {
            sub_1D8C2AA1C(&v56, &v49);
            v28 = v51;
            v29 = v52;
            __swift_project_boxed_opaque_existential_1(&v49, v51);
            v30 = (*(v29 + 24))(v28, v29);
            v32 = v31;
            __swift_destroy_boxed_opaque_existential_1(&v49);
            result = sub_1D8C2AB08(v60);
            *a4 = v30;
            *(a4 + 8) = v32;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
            v17 = 2048;
          }

          else if (v59 == 9)
          {
            sub_1D8C2AA1C(&v56, &v49);
            v20 = v51;
            v21 = v52;
            __swift_project_boxed_opaque_existential_1(&v49, v51);
            v22 = (*(v21 + 16))(v20, v21);
            v24 = v23;
            __swift_destroy_boxed_opaque_existential_1(&v49);
            result = sub_1D8C2AB08(v60);
            *a4 = v22;
            *(a4 + 8) = v24;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
            v17 = 2304;
          }

          else
          {
            v51 = MEMORY[0x1E69E6290];
            v52 = MEMORY[0x1E6969DF8];
            v48 = v56;
            v49 = v57;
            v37 = __swift_project_boxed_opaque_existential_1(&v49, MEMORY[0x1E69E6290]);
            v38 = *v37;
            if (*v37 && (v39 = v37[1], v40 = &v39[-v38], v39 != v38))
            {
              if (v40 <= 14)
              {
                v41 = sub_1D8C45074(*v37, v39);
                v42 = v45 & 0xFFFFFFFFFFFFFFLL;
                swift_unknownObjectRetain();
              }

              else
              {
                swift_unknownObjectRetain();
                if (v40 >= 0x7FFFFFFF)
                {
                  v41 = sub_1D8C45134(v38, v39);
                  v42 = v46 | 0x8000000000000000;
                }

                else
                {
                  v41 = sub_1D8C2B5D0(v38, v39);
                  v42 = v44 | 0x4000000000000000;
                }
              }
            }

            else
            {
              swift_unknownObjectRetain();
              v41 = 0;
              v42 = 0xC000000000000000;
            }

            __swift_destroy_boxed_opaque_existential_1(&v49);
            swift_unknownObjectRelease();
            type metadata accessor for SchematizedData();
            v43 = swift_allocObject();
            *(v43 + 16) = v48;
            *(v43 + 32) = v41;
            *(v43 + 40) = v42;
            result = sub_1D8C2AB08(v60);
            *a4 = v43;
            *(a4 + 8) = 0;
            *(a4 + 16) = 0;
            *(a4 + 24) = 0;
            v17 = 2560;
          }
        }

        else if (v59 == 5)
        {
          v27 = v56;
          result = sub_1D8C2AB08(v60);
          *a4 = v27;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
          v17 = 1280;
        }

        else if (v59 == 6)
        {
          v16 = v56;
          result = sub_1D8C2AB08(v60);
          *a4 = v16;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
          v17 = 1536;
        }

        else
        {
          v47 = v56;
          v35 = v57;
          v36 = v58;
          result = sub_1D8C2AB08(v60);
          v17 = v36 | 0x700;
          *a4 = v47;
          *(a4 + 16) = v35;
        }

        goto LABEL_13;
      }

      if (v59 > 1u)
      {
        if (v59 == 2)
        {
          v26 = v56;
          result = sub_1D8C2AB08(v60);
          *a4 = v26;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
          v17 = 512;
        }

        else if (v59 == 3)
        {
          v19 = v56;
          result = sub_1D8C2AB08(v60);
          *a4 = v19;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
          v17 = 768;
        }

        else
        {
          v33 = v56;
          result = sub_1D8C2AB08(v60);
          *a4 = v33;
          *(a4 + 8) = 0;
          *(a4 + 16) = 0;
          *(a4 + 24) = 0;
          v17 = 1024;
        }

        goto LABEL_13;
      }

      if (!v59)
      {
        v25 = v56;
        result = sub_1D8C2AB08(v60);
        *a4 = v25;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        *(a4 + 24) = 0;
        *(a4 + 32) = 0;
        return result;
      }

      v34 = v56;
      result = sub_1D8C2AB08(v60);
      *a4 = v34;
      *(a4 + 8) = 0;
      *(a4 + 16) = 0;
      *(a4 + 24) = 0;
      v17 = 256;
    }

LABEL_13:
    *(a4 + 32) = v17;
  }

  return result;
}

uint64_t SchematizedData.forEachValue(ofFieldName:block:)()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_getObjectType();
  v3 = v0[4];
  v4 = v0[5];
  return MessageSchemaDescribing.schematizing<A>(data:block:)();
}

uint64_t sub_1D8C55D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6)
{
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  result = (*(v14 + 56))(a3, a4, ObjectType, v14);
  if (!v6)
  {
    v18 = v12 - v11;
    if (!v11)
    {
      v18 = 0;
    }

    v19[0] = v11;
    v19[1] = v12;
    v19[3] = 0;
    v19[4] = 0;
    v19[2] = v18;
    v20 = 1;
    sub_1D8C44054(result, v17, v19, a5, a6);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t SchematizedData.values(forFieldName:)()
{
  v2 = v0[2];
  v3 = v0[3];
  swift_getObjectType();
  v5 = v0[4];
  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB250, &unk_1D8C87220);
  result = MessageSchemaDescribing.schematizing<A>(data:block:)();
  if (!v1)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1D8C55F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v20 = MEMORY[0x1E69E7CC0];
  v11 = *(a2 + 16);
  v12 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  v14 = (*(v12 + 56))(a3, a4, ObjectType, v12);
  if (v5)
  {
  }

  v16 = v10 - v9;
  if (!v9)
  {
    v16 = 0;
  }

  v18[0] = v9;
  v18[1] = v10;
  v18[3] = 0;
  v18[4] = 0;
  v18[2] = v16;
  v19 = 1;
  sub_1D8C38D30(v14, v15, v18, &v20);
  result = swift_unknownObjectRelease();
  *a5 = v20;
  return result;
}

uint64_t SchematizedData.forEachValue(ofField:block:)(__int128 *a1)
{
  v7 = *a1;
  v2 = v1[2];
  v3 = v1[3];
  swift_getObjectType();
  v4 = v1[4];
  v5 = v1[5];
  return MessageSchemaDescribing.schematizing<A>(data:block:)();
}

uint64_t SchematizedData.forEachValue(_:)()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_getObjectType();
  v3 = v0[4];
  v4 = v0[5];
  return MessageSchemaDescribing.schematizing<A>(data:block:)();
}

void *sub_1D8C56138(uint64_t *a1, void (*a2)(void), uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = v9 - v8;
  if (!v8)
  {
    v10 = 0;
  }

  v13[0] = a1[2];
  v13[1] = v9;
  v13[3] = 0;
  v13[4] = 0;
  v13[2] = v10;
  v14 = 1;
  ObjectType = swift_getObjectType();
  result = (*(v7 + 40))(ObjectType, v7);
  if (!v3)
  {
    sub_1D8C42D20(result, v13, a2, a3);
  }

  return result;
}

uint64_t SchematizedData.forEachValue(matchingFieldPath:block:)()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_getObjectType();
  v3 = v0[4];
  v4 = v0[5];
  return MessageSchemaDescribing.schematizing<A>(data:block:)();
}

uint64_t sub_1D8C56284(__int128 *a1, uint64_t a2, unint64_t a3, void (*a4)(unsigned __int128 *), uint64_t a5)
{
  v11 = *a1;
  v8 = *(a1 + 2);
  v9 = *(a1 + 3);
  v15 = 0;
  result = sub_1D8C60F88(a2, a3);
  if (!v5)
  {
    v12 = v11;
    v13 = v8;
    v14 = v9;
    sub_1D8C4449C(&v12, result, &v15, a4, a5);
  }

  return result;
}

uint64_t SchematizedData.firstValue(matchingFieldPath:predicate:)()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_getObjectType();
  v4 = v0[4];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB248, &unk_1D8C87210);
  return MessageSchemaDescribing.schematizing<A>(data:block:)();
}

uint64_t sub_1D8C563D8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = a1[1];
  v45 = *a1;
  v46 = v8;
  result = UnsafeSchematizedData.firstValue(matchingFieldPath:predicate:)(a2, a3, a4, a5, v49);
  if (!v6)
  {
    if (v49[40] == 255)
    {
      result = sub_1D8C51FD4(v49, &qword_1ECAAB138, &unk_1D8C86900);
      *a6 = 0u;
      *(a6 + 16) = 0u;
      v11 = -256;
    }

    else
    {
      sub_1D8C29EAC(v49, &v45);
      if (v48 <= 4u)
      {
        if (v48 <= 1u)
        {
          if (!v48)
          {
            v18 = v45;
            result = sub_1D8C2AB08(v49);
            *a6 = v18;
            *(a6 + 8) = 0;
            *(a6 + 16) = 0;
            *(a6 + 24) = 0;
            *(a6 + 32) = 0;
            return result;
          }

          v27 = v45;
          result = sub_1D8C2AB08(v49);
          *a6 = v27;
          *(a6 + 8) = 0;
          *(a6 + 16) = 0;
          *(a6 + 24) = 0;
          v11 = 256;
        }

        else if (v48 == 2)
        {
          v19 = v45;
          result = sub_1D8C2AB08(v49);
          *a6 = v19;
          *(a6 + 8) = 0;
          *(a6 + 16) = 0;
          *(a6 + 24) = 0;
          v11 = 512;
        }

        else if (v48 == 3)
        {
          v12 = v45;
          result = sub_1D8C2AB08(v49);
          *a6 = v12;
          *(a6 + 8) = 0;
          *(a6 + 16) = 0;
          *(a6 + 24) = 0;
          v11 = 768;
        }

        else
        {
          v26 = v45;
          result = sub_1D8C2AB08(v49);
          *a6 = v26;
          *(a6 + 8) = 0;
          *(a6 + 16) = 0;
          *(a6 + 24) = 0;
          v11 = 1024;
        }
      }

      else if (v48 > 7u)
      {
        if (v48 == 8)
        {
          sub_1D8C2AA1C(&v45, &v42);
          v21 = v43;
          v22 = v44;
          __swift_project_boxed_opaque_existential_1(&v42, v43);
          v23 = (*(v22 + 24))(v21, v22);
          v25 = v24;
          __swift_destroy_boxed_opaque_existential_1(&v42);
          result = sub_1D8C2AB08(v49);
          *a6 = v23;
          *(a6 + 8) = v25;
          *(a6 + 16) = 0;
          *(a6 + 24) = 0;
          v11 = 2048;
        }

        else if (v48 == 9)
        {
          sub_1D8C2AA1C(&v45, &v42);
          v13 = v43;
          v14 = v44;
          __swift_project_boxed_opaque_existential_1(&v42, v43);
          v15 = (*(v14 + 16))(v13, v14);
          v17 = v16;
          __swift_destroy_boxed_opaque_existential_1(&v42);
          result = sub_1D8C2AB08(v49);
          *a6 = v15;
          *(a6 + 8) = v17;
          *(a6 + 16) = 0;
          *(a6 + 24) = 0;
          v11 = 2304;
        }

        else
        {
          v43 = MEMORY[0x1E69E6290];
          v44 = MEMORY[0x1E6969DF8];
          v41 = v45;
          v42 = v46;
          v30 = __swift_project_boxed_opaque_existential_1(&v42, MEMORY[0x1E69E6290]);
          v31 = *v30;
          if (*v30 && (v32 = v30[1], v33 = &v32[-v31], v32 != v31))
          {
            if (v33 <= 14)
            {
              v34 = sub_1D8C45074(*v30, v32);
              v35 = v38 & 0xFFFFFFFFFFFFFFLL;
              swift_unknownObjectRetain();
            }

            else
            {
              swift_unknownObjectRetain();
              if (v33 >= 0x7FFFFFFF)
              {
                v34 = sub_1D8C45134(v31, v32);
                v35 = v39 | 0x8000000000000000;
              }

              else
              {
                v34 = sub_1D8C2B5D0(v31, v32);
                v35 = v37 | 0x4000000000000000;
              }
            }
          }

          else
          {
            swift_unknownObjectRetain();
            v34 = 0;
            v35 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v42);
          swift_unknownObjectRelease();
          type metadata accessor for SchematizedData();
          v36 = swift_allocObject();
          *(v36 + 16) = v41;
          *(v36 + 32) = v34;
          *(v36 + 40) = v35;
          result = sub_1D8C2AB08(v49);
          *a6 = v36;
          *(a6 + 8) = 0;
          *(a6 + 16) = 0;
          *(a6 + 24) = 0;
          v11 = 2560;
        }
      }

      else if (v48 == 5)
      {
        v20 = v45;
        result = sub_1D8C2AB08(v49);
        *a6 = v20;
        *(a6 + 8) = 0;
        *(a6 + 16) = 0;
        *(a6 + 24) = 0;
        v11 = 1280;
      }

      else if (v48 == 6)
      {
        v10 = v45;
        result = sub_1D8C2AB08(v49);
        *a6 = v10;
        *(a6 + 8) = 0;
        *(a6 + 16) = 0;
        *(a6 + 24) = 0;
        v11 = 1536;
      }

      else
      {
        v40 = v45;
        v28 = v46;
        v29 = v47;
        result = sub_1D8C2AB08(v49);
        v11 = v29 | 0x700;
        *a6 = v40;
        *(a6 + 16) = v28;
      }
    }

    *(a6 + 32) = v11;
  }

  return result;
}

uint64_t UnsafeSchematizedData.firstValue(matchingFieldPath:predicate:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *v5;
  v8 = v5[1];
  v10 = v5[2];
  v11 = v5[3];
  *a5 = 0u;
  *(a5 + 16) = 0u;
  *(a5 + 32) = 0;
  *(a5 + 40) = -1;
  if (!a4)
  {
    LOBYTE(v49[0]) = 0;
    v16 = sub_1D8C60F88(a1, a2);
    if (!v6)
    {
      v41 = v9;
      v42 = v8;
      v43 = v10;
      v44 = v11;
      sub_1D8C44684(&v41, v16, v49, a5);
    }

    return sub_1D8C51FD4(a5, &qword_1ECAAB138, &unk_1D8C86900);
  }

  v40 = a3;

  result = sub_1D8C60F88(a1, a2);
  if (v6)
  {

    return sub_1D8C51FD4(a5, &qword_1ECAAB138, &unk_1D8C86900);
  }

  v34 = v11;
  v35 = v10;
  v33 = *(result + 16);
  if (v33)
  {
    v37 = &v30;
    v18 = *(result + 32);
    v17 = *(result + 40);
    v31 = *(result + 48);
    v39 = result;
    v48 = *(result + 56);
    ObjectType = swift_getObjectType();
    v36 = *(v8 + 56);
    swift_bridgeObjectRetain_n();

    v32 = v18;
    v38 = v17;
    v20 = v36(v18, v17, ObjectType, v8);
    v22 = v21;
    v23 = swift_getObjectType();
    v24 = (*(v22 + 16))(v23, v22);
    v25 = v48;
    LOBYTE(v49[0]) = v24 & v48 & 1;
    v47 = 0;
    v26 = v33 == 1;
    v27 = v34 - v35;
    v41 = v35;
    v42 = v34;
    if (!v35)
    {
      v27 = 0;
    }

    v44 = 0;
    v45 = 0;
    v43 = v27;
    v46 = 1;
    v28 = v39;
    swift_bridgeObjectRetain_n();

    v29 = v38;

    sub_1D8C3F908(v20, v22, &v41, &v47, v32, v29, v31, v25, v26, v28, v49, v40, a4, a5);

    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SchematizedData.value(forOneofName:)()
{
  v1 = v0[2];
  v2 = v0[3];
  swift_getObjectType();
  v4 = v0[4];
  v3 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB258, &qword_1D8C87230);
  return MessageSchemaDescribing.schematizing<A>(data:block:)();
}

uint64_t sub_1D8C56B54@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v42 = a5;
  v8 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v10 = a1[3];
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  ObjectType = swift_getObjectType();
  result = (*(v13 + 72))(a3, a4, ObjectType, v13);
  if (!v5)
  {
    v17 = v42;
    v18 = v10 - v11;
    if (!v11)
    {
      v18 = 0;
    }

    v35[0] = v11;
    v35[1] = v10;
    v35[3] = 0;
    v35[4] = 0;
    v35[2] = v18;
    v36 = 1;
    v19 = v16;
    v20 = swift_getObjectType();
    v21 = (*(v19 + 24))(v20, v19);
    v22 = sub_1D8C62444(v21, MEMORY[0x1E69E7CC0], v35);

    if ((v22 & 0x100000000) != 0)
    {
      swift_unknownObjectRelease();
      v38 = 0u;
      memset(v39, 0, 25);
      v37 = 0u;
    }

    else
    {
      v23 = swift_getObjectType();
      v24 = (*(v9 + 64))(v22 >> 3, v23, v9);
      v26 = v25;
      v27 = swift_getObjectType();
      (*(v26 + 56))(&v32, v27, v26);
      v31 = v32;
      v28 = sub_1D8C29E98(v22);
      sub_1D8C29F08(&v31, v28, &v33);
      swift_unknownObjectRelease();
      sub_1D8C2BBF0(v31, *(&v31 + 1));
      v38 = v33;
      v39[0] = v34[0];
      *(v39 + 9) = *(v34 + 9);
      *&v37 = v24;
      *(&v37 + 1) = v26;
      if (v24)
      {
        FieldValueImpl.asPublic()(v40);
        result = sub_1D8C3D128(&v37);
        v29 = v41;
        v30 = v40[1];
        *v17 = v40[0];
        *(v17 + 16) = v30;
        *(v17 + 32) = v40[2];
        *(v17 + 48) = v29;
        return result;
      }
    }

    result = sub_1D8C51FD4(&v37, &qword_1ECAAB290, &unk_1D8C872D0);
    *(v17 + 48) = 0;
    *(v17 + 16) = 0u;
    *(v17 + 32) = 0u;
    *v17 = 0u;
  }

  return result;
}

uint64_t SchematizedData.fieldSchema(forOneof:)(__int128 *a1)
{
  v7 = *a1;
  v2 = v1[2];
  v3 = v1[3];
  swift_getObjectType();
  v5 = v1[4];
  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB260, &qword_1D8C87238);
  return MessageSchemaDescribing.schematizing<A>(data:block:)();
}

double sub_1D8C56EB4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, void *a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = v9 - v8;
  if (!v8)
  {
    v10 = 0;
  }

  *&v22 = a1[2];
  *(&v22 + 1) = v9;
  v24 = 0;
  v25 = 0;
  v23 = v10;
  v26 = 1;
  ObjectType = swift_getObjectType();
  v12 = (*(a2 + 24))(ObjectType, a2);
  v13 = sub_1D8C62444(v12, MEMORY[0x1E69E7CC0], &v22);

  if (!v3)
  {
    if ((v13 & 0x100000000) != 0)
    {
      *a3 = 0;
      a3[1] = 0;
    }

    else
    {
      v15 = (*(a2 + 40))(v13 >> 3, ObjectType, a2);
      v17 = v16;
      v18 = v15;
      v19 = swift_getObjectType();
      (*(v6 + 56))(v18, v17, v19, v6);
      v21 = v20;

      swift_getObjectType();
      FieldSchemaDescribing.asPublic()(v21, &v22);
      swift_unknownObjectRelease();
      result = *&v22;
      *a3 = v22;
    }
  }

  return result;
}

uint64_t UnsafeSchematizedData.fieldSchema(forOneof:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v5 = v2[1];
  v7 = v2[2];
  v8 = v2[3];
  v9 = v8 - v7;
  if (!v7)
  {
    v9 = 0;
  }

  v19[0] = v2[2];
  v19[1] = v8;
  v19[3] = 0;
  v19[4] = 0;
  v19[2] = v9;
  v20 = 1;
  ObjectType = swift_getObjectType();
  v11 = (*(a2 + 24))(ObjectType, a2);
  v12 = sub_1D8C62444(v11, MEMORY[0x1E69E7CC0], v19);

  if (!v3)
  {
    if ((v12 & 0x100000000) != 0)
    {
      return 0;
    }

    else
    {
      v13 = (*(a2 + 40))(v12 >> 3, ObjectType, a2);
      v15 = v14;
      v16 = v13;
      v17 = swift_getObjectType();
      v5 = (*(v5 + 56))(v16, v15, v17, v5);
    }
  }

  return v5;
}

uint64_t SchematizedData.value(forOneof:)(__int128 *a1)
{
  v7 = *a1;
  v2 = v1[2];
  v3 = v1[3];
  swift_getObjectType();
  v5 = v1[4];
  v4 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB258, &qword_1D8C87230);
  return MessageSchemaDescribing.schematizing<A>(data:block:)();
}

uint64_t sub_1D8C5727C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = v9 - v8;
  if (!v8)
  {
    v10 = 0;
  }

  v27[0] = a1[2];
  v27[1] = v9;
  v27[3] = 0;
  v27[4] = 0;
  v27[2] = v10;
  v28 = 1;
  ObjectType = swift_getObjectType();
  v12 = (*(a2 + 24))(ObjectType, a2);
  v13 = sub_1D8C62444(v12, MEMORY[0x1E69E7CC0], v27);

  if (!v3)
  {
    if ((v13 & 0x100000000) != 0)
    {
      v30 = 0u;
      memset(v31, 0, 25);
      v29 = 0u;
    }

    else
    {
      v15 = swift_getObjectType();
      v16 = (*(v6 + 64))(v13 >> 3, v15, v6);
      v18 = v17;
      v19 = swift_getObjectType();
      (*(v18 + 56))(&v24, v19, v18);
      v23 = v24;
      v20 = sub_1D8C29E98(v13);
      sub_1D8C29F08(&v23, v20, &v25);
      sub_1D8C2BBF0(v23, *(&v23 + 1));
      v30 = v25;
      v31[0] = v26[0];
      *(v31 + 9) = *(v26 + 9);
      *&v29 = v16;
      *(&v29 + 1) = v18;
      if (v16)
      {
        FieldValueImpl.asPublic()(v32);
        result = sub_1D8C3D128(&v29);
        v21 = v33;
        v22 = v32[1];
        *a3 = v32[0];
        *(a3 + 16) = v22;
        *(a3 + 32) = v32[2];
        *(a3 + 48) = v21;
        return result;
      }
    }

    result = sub_1D8C51FD4(&v29, &qword_1ECAAB290, &unk_1D8C872D0);
    *(a3 + 48) = 0;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
  }

  return result;
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SchematizedData.asJSON()()
{
  v2 = v0[2];
  v3 = v0[3];
  swift_getObjectType();
  v4 = v0[4];
  v5 = v0[5];
  v6 = MessageSchemaDescribing.schematizing<A>(data:block:)();
  if (!v1)
  {
    v6 = v9;
    v7 = v10;
  }

  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

void *SchematizedData.deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_1D8C2C684(v0[4], v0[5]);
  return v0;
}

uint64_t SchematizedData.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_1D8C2C684(v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8C5757C(_OWORD *a1, uint64_t (*a2)(_OWORD *))
{
  v2 = a1[1];
  v4[0] = *a1;
  v4[1] = v2;
  return a2(v4);
}

uint64_t sub_1D8C575B8(_OWORD *a1)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6);
}

uint64_t SchematizedData.getArray(matchingFieldPath:)()
{
  v2 = v0[2];
  v3 = v0[3];
  swift_getObjectType();
  v5 = v0[4];
  v4 = v0[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB250, &unk_1D8C87220);
  result = MessageSchemaDescribing.schematizing<A>(data:block:)();
  if (!v1)
  {
    return v7;
  }

  return result;
}

uint64_t sub_1D8C576B8@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v61 = *MEMORY[0x1E69E9840];
  v45 = *a1;
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  v8 = MEMORY[0x1E69E7CC0];
  *&v54 = MEMORY[0x1E69E7CC0];
  LOBYTE(v51) = 0;
  v9 = sub_1D8C60F88(a2, a3);
  if (!v4)
  {
    v58 = v45;
    v59 = v6;
    v60 = v7;
    sub_1D8C4485C(&v58, v9, &v51, &v54);

    v12 = *(v54 + 16);
    if (!v12)
    {

      *a4 = MEMORY[0x1E69E7CC0];
      goto LABEL_4;
    }

    v44 = a4;
    v50 = v8;
    v13 = v54;
    sub_1D8C5E058(0, v12, 0);
    v14 = v50;
    v15 = v13 + 32;
    while (1)
    {
      sub_1D8C29EAC(v15, &v58);
      sub_1D8C29EAC(&v58, &v54);
      v16 = v57;
      if (v57 <= 4u)
      {
        if (v57 <= 1u || v57 != 2 && v57 != 3)
        {
          sub_1D8C2AB08(&v58);
          v17 = 0;
          v18 = 0;
          v19 = v54;
          v20 = 0uLL;
          goto LABEL_27;
        }
      }

      else
      {
        if (v57 > 7u)
        {
          if (v57 == 8)
          {
            sub_1D8C2AA1C(&v54, &v51);
            v25 = v52;
            v26 = v53;
            __swift_project_boxed_opaque_existential_1(&v51, v52);
            v19 = (*(v26 + 24))(v25, v26);
            v28 = v27;
            sub_1D8C2AB08(&v58);
            __swift_destroy_boxed_opaque_existential_1(&v51);
            v17 = v28;
            v18 = 0;
            v20 = 0uLL;
          }

          else
          {
            if (v57 == 9)
            {
              sub_1D8C2AA1C(&v54, &v51);
              v21 = v52;
              v22 = v53;
              __swift_project_boxed_opaque_existential_1(&v51, v52);
              v19 = (*(v22 + 16))(v21, v22);
              v24 = v23;
              sub_1D8C2AB08(&v58);
              __swift_destroy_boxed_opaque_existential_1(&v51);
              v17 = v24;
              v18 = 0;
            }

            else
            {
              v52 = MEMORY[0x1E69E6290];
              v53 = MEMORY[0x1E6969DF8];
              v46 = v54;
              v51 = v55;
              v29 = __swift_project_boxed_opaque_existential_1(&v51, MEMORY[0x1E69E6290]);
              v30 = *v29;
              if (*v29 && (v31 = v29[1], v32 = v31 - v30, v31 != v30))
              {
                if (v32 <= 14)
                {
                  memset(__dst, 0, sizeof(__dst));
                  v49 = v31 - v30;
                  memcpy(__dst, v30, v31 - v30);
                  swift_unknownObjectRetain();
                  sub_1D8C2AB08(&v58);
                  v33 = *__dst;
                  v34 = v43 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v49 << 16)) << 32);
                  v43 = v34;
                }

                else
                {
                  v38 = sub_1D8C846C4();
                  v39 = *(v38 + 48);
                  v40 = *(v38 + 52);
                  swift_allocObject();
                  swift_unknownObjectRetain();
                  v41 = sub_1D8C84674();
                  sub_1D8C2AB08(&v58);
                  if (v32 >= 0x7FFFFFFF)
                  {
                    sub_1D8C84714();
                    v33 = swift_allocObject();
                    *(v33 + 16) = 0;
                    *(v33 + 24) = v32;
                    v34 = v41 | 0x8000000000000000;
                  }

                  else
                  {
                    v33 = v32 << 32;
                    v34 = v41 | 0x4000000000000000;
                  }
                }
              }

              else
              {
                swift_unknownObjectRetain();
                sub_1D8C2AB08(&v58);
                v33 = 0;
                v34 = 0xC000000000000000;
              }

              __swift_destroy_boxed_opaque_existential_1(&v51);
              swift_unknownObjectRelease();
              type metadata accessor for SchematizedData();
              v19 = swift_allocObject();
              v17 = 0;
              v18 = 0;
              *(v19 + 16) = v46;
              *(v19 + 32) = v33;
              *(v19 + 40) = v34;
            }

            v20 = 0uLL;
          }

          goto LABEL_27;
        }

        if (v57 != 5)
        {
          if (v57 == 6)
          {
            sub_1D8C2AB08(&v58);
            v17 = 0;
            v18 = 0;
            v19 = v54;
            v20 = 0uLL;
          }

          else
          {
            sub_1D8C2AB08(&v58);
            v17 = *(&v54 + 1);
            v19 = v54;
            v20 = v55;
            v18 = v56;
          }

          goto LABEL_27;
        }
      }

      sub_1D8C2AB08(&v58);
      v17 = 0;
      v18 = 0;
      v20 = 0uLL;
      v19 = v54;
LABEL_27:
      v50 = v14;
      v36 = *(v14 + 16);
      v35 = *(v14 + 24);
      if (v36 >= v35 >> 1)
      {
        v42 = v17;
        v47 = v20;
        sub_1D8C5E058((v35 > 1), v36 + 1, 1);
        v20 = v47;
        v17 = v42;
        v14 = v50;
      }

      *(v14 + 16) = v36 + 1;
      v37 = v14 + 40 * v36;
      *(v37 + 32) = v19;
      *(v37 + 40) = v17;
      *(v37 + 48) = v20;
      *(v37 + 64) = v18;
      *(v37 + 65) = v16;
      v15 += 48;
      if (!--v12)
      {

        *v44 = v14;
        goto LABEL_4;
      }
    }
  }

LABEL_4:
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t UnsafeSchematizedData.getArray(matchingFieldPath:)(uint64_t a1, unint64_t a2)
{
  v9 = *v2;
  v4 = *(v2 + 2);
  v5 = *(v2 + 3);
  v6 = MEMORY[0x1E69E7CC0];
  v14 = MEMORY[0x1E69E7CC0];
  v13 = 0;
  v7 = sub_1D8C60F88(a1, a2);
  if (v3)
  {
  }

  else
  {
    v10 = v9;
    v11 = v4;
    v12 = v5;
    sub_1D8C4485C(&v10, v7, &v13, &v14);

    return v14;
  }

  return v6;
}

__n128 UnsafeSchematizedData.asPublic()()
{
  v14 = MEMORY[0x1E69E6290];
  v15 = MEMORY[0x1E6969DF8];
  v12 = *v0;
  v13 = v0[1];
  v1 = __swift_project_boxed_opaque_existential_1(&v13, MEMORY[0x1E69E6290]);
  v2 = *v1;
  if (*v1 && (v3 = v1[1], v4 = &v3[-v2], v3 != v2))
  {
    if (v4 <= 14)
    {
      v5 = sub_1D8C45074(*v1, v3);
      v6 = v10 & 0xFFFFFFFFFFFFFFLL;
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      if (v4 >= 0x7FFFFFFF)
      {
        v5 = sub_1D8C45134(v2, v3);
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        v5 = sub_1D8C2B5D0(v2, v3);
        v6 = v9 | 0x4000000000000000;
      }
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v5 = 0;
    v6 = 0xC000000000000000;
  }

  __swift_destroy_boxed_opaque_existential_1(&v13);
  type metadata accessor for SchematizedData();
  v7 = swift_allocObject();
  result = v12;
  *(v7 + 16) = v12;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  return result;
}

uint64_t UnsafeSchematizedData.forEachFieldValue(withName:block:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  v9 = *v4;
  v10 = v4[1];
  v12 = v4[2];
  v11 = v4[3];
  ObjectType = swift_getObjectType();
  result = (*(v10 + 56))(a1, a2, ObjectType, v10);
  if (!v5)
  {
    sub_1D8C3A368(result, v15, a3, a4);
    return swift_unknownObjectRelease();
  }

  return result;
}

char *UnsafeSchematizedData.getArray(forFieldName:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  v17 = MEMORY[0x1E69E7CC0];
  ObjectType = swift_getObjectType();
  v11 = (*(v7 + 56))(a1, a2, ObjectType, v7);
  if (v3)
  {
  }

  v13 = v9 - v8;
  if (!v8)
  {
    v13 = 0;
  }

  v15[0] = v8;
  v15[1] = v9;
  v15[3] = 0;
  v15[4] = 0;
  v15[2] = v13;
  v16 = 1;
  sub_1D8C39B3C(v11, v12, v15, &v17);
  swift_unknownObjectRelease();
  return v17;
}

__n128 sub_1D8C57F10(uint64_t a1, char **a2)
{
  sub_1D8C29EAC(a1, &v10);
  v3 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1D8C4ACC8(0, *(v3 + 2) + 1, 1, v3);
    *a2 = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1D8C4ACC8((v5 > 1), v6 + 1, 1, v3);
    *a2 = v3;
  }

  *(v3 + 2) = v6 + 1;
  v7 = &v3[48 * v6];
  result = v10;
  v9 = v11[0];
  *(v7 + 57) = *(v11 + 9);
  *(v7 + 2) = result;
  *(v7 + 3) = v9;
  return result;
}

uint64_t sub_1D8C57FE0(uint64_t a1, char **a2)
{
  sub_1D8C29EAC(a1, &v11);
  v3 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = sub_1D8C4ACC8(0, *(v3 + 2) + 1, 1, v3);
    *a2 = v3;
  }

  v6 = *(v3 + 2);
  v5 = *(v3 + 3);
  if (v6 >= v5 >> 1)
  {
    v3 = sub_1D8C4ACC8((v5 > 1), v6 + 1, 1, v3);
    *a2 = v3;
  }

  *(v3 + 2) = v6 + 1;
  v7 = &v3[48 * v6];
  v8 = v11;
  v9 = v12[0];
  *(v7 + 57) = *(v12 + 9);
  *(v7 + 2) = v8;
  *(v7 + 3) = v9;
  return 1;
}

uint64_t UnsafeSchematizedData.getAnyQueriable(matchingFieldPath:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v12 = *v3;
  v7 = *(v3 + 2);
  v6 = *(v3 + 3);
  v17 = MEMORY[0x1E69E7CC0];
  v16 = 0;
  v8 = sub_1D8C60F88(a1, a2);
  if (v4)
  {
  }

  v13 = v12;
  v14 = v7;
  v15 = v6;
  sub_1D8C4488C(&v13, v8, &v16, &v17);

  v10 = v17;
  if (v16)
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB268, &qword_1D8C87240);
    *(a3 + 24) = result;
    *a3 = v10;
    return result;
  }

  v11 = *(v17 + 16);
  if (v11 <= 1)
  {
    if (v11)
    {
      sub_1D8C5998C(v17 + 32, a3);
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C581B8(uint64_t a1, char **a2)
{
  sub_1D8C29EAC(a1, &v39);
  if (v43 <= 4u)
  {
    if (v43 <= 1u)
    {
      if (v43)
      {
        v11 = MEMORY[0x1E69E7668];
      }

      else
      {
        v11 = MEMORY[0x1E69E72F0];
      }

      v45 = v11;
      LODWORD(v44) = v39;
      goto LABEL_30;
    }

    if (v43 == 2)
    {
      v4 = v39;
      v5 = MEMORY[0x1E69E7360];
    }

    else
    {
      if (v43 != 3)
      {
        v45 = MEMORY[0x1E69E6448];
        LODWORD(v44) = v39;
        goto LABEL_30;
      }

      v4 = v39;
      v5 = MEMORY[0x1E69E76D8];
    }

    v45 = v5;
    *&v44 = v4;
  }

  else if (v43 > 7u)
  {
    if (v43 == 8)
    {
      sub_1D8C2AA1C(&v39, v35);
      v12 = v36;
      v13 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v8 = (*(v13 + 24))(v12, v13);
      v10 = MEMORY[0x1E69E6158];
    }

    else
    {
      if (v43 != 9)
      {
        v21 = v40;
        v22 = v41;
        v23 = type metadata accessor for QueryableMessage();
        v34 = v39;
        v24 = objc_allocWithZone(v23);
        v25 = &v24[OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data];
        *v25 = v34;
        *(v25 + 2) = v21;
        *(v25 + 3) = v22;
        v38.receiver = v24;
        v38.super_class = v23;
        swift_unknownObjectRetain();
        v26 = objc_msgSendSuper2(&v38, sel_init);
        v45 = v23;
        swift_unknownObjectRelease();
        *&v44 = v26;
        goto LABEL_30;
      }

      sub_1D8C2AA1C(&v39, v35);
      v6 = v36;
      v7 = v37;
      __swift_project_boxed_opaque_existential_1(v35, v36);
      v8 = (*(v7 + 16))(v6, v7);
      v10 = MEMORY[0x1E6969080];
    }

    v45 = v10;
    *&v44 = v8;
    *(&v44 + 1) = v9;
    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else if (v43 == 5)
  {
    v45 = MEMORY[0x1E69E63B0];
    *&v44 = v39;
  }

  else if (v43 == 6)
  {
    v45 = MEMORY[0x1E69E6370];
    LOBYTE(v44) = v39;
  }

  else
  {
    v14 = v40;
    v15 = v41;
    v16 = v42;
    if (v42)
    {
      v17 = *(&v39 + 1);
      ObjectType = swift_getObjectType();
      v19 = (*(v17 + 48))(v14, ObjectType, v17);
      if (v2)
      {
        swift_unknownObjectRelease();
        sub_1D8C31E4C(v14, v15, 1);
        return 1;
      }

      v27 = v19;
      v28 = v20;
    }

    else
    {

      v27 = v14;
      v28 = v15;
    }

    v45 = MEMORY[0x1E69E6158];
    swift_unknownObjectRelease();
    sub_1D8C31E4C(v14, v15, v16);
    *&v44 = v27;
    *(&v44 + 1) = v28;
  }

LABEL_30:
  sub_1D8C59AD8(&v44, v46);
  v29 = *a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v29;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v29 = sub_1D8C4ADE4(0, *(v29 + 2) + 1, 1, v29);
    *a2 = v29;
  }

  v32 = *(v29 + 2);
  v31 = *(v29 + 3);
  if (v32 >= v31 >> 1)
  {
    v29 = sub_1D8C4ADE4((v31 > 1), v32 + 1, 1, v29);
    *a2 = v29;
  }

  *(v29 + 2) = v32 + 1;
  sub_1D8C59AD8(v46, &v29[32 * v32 + 32]);
  return 1;
}

uint64_t sub_1D8C58544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D8C29EAC(a1, &v19);
  if (v22 == 10)
  {
    v6 = v20;
    v7 = v21;
    v8 = type metadata accessor for QueryableMessage();
    v17 = v19;
    v9 = objc_allocWithZone(v8);
    v10 = &v9[OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data];
    *v10 = v17;
    *(v10 + 2) = v6;
    *(v10 + 3) = v7;
    v18.receiver = v9;
    v18.super_class = v8;
    swift_unknownObjectRetain();
    v11 = objc_msgSendSuper2(&v18, sel_init);
    sub_1D8C437A8();
    v12 = sub_1D8C84FF4();
    v13 = [v12 evaluateWithObject_];
    swift_unknownObjectRelease();

    if (v13)
    {
      sub_1D8C51FD4(a4, &qword_1ECAAB138, &unk_1D8C86900);
      sub_1D8C29EAC(a1, a4);
      v14 = 0;
    }

    else
    {
      v14 = 1;
    }
  }

  else
  {
    sub_1D8C2AB08(&v19);
    sub_1D8C2F8AC();
    swift_allocError();
    *v15 = 0xD00000000000002ELL;
    *(v15 + 8) = 0x80000001D8C8BB40;
    *(v15 + 16) = 7;
    swift_willThrow();
  }

  return v14 & 1;
}

uint64_t UnsafeSchematizedData.value(forOneofName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v9 = *v3;
  v8 = v3[1];
  v11 = v3[2];
  v10 = v3[3];
  ObjectType = swift_getObjectType();
  v13 = a2;
  v14 = ObjectType;
  result = (*(v8 + 72))(a1, v13);
  if (!v4)
  {
    v34 = v14;
    v17 = v10 - v11;
    if (!v11)
    {
      v17 = 0;
    }

    v32[0] = v11;
    v32[1] = v10;
    v32[3] = 0;
    v32[4] = 0;
    v32[2] = v17;
    v33 = 1;
    v18 = v16;
    v19 = swift_getObjectType();
    v20 = (*(v18 + 24))(v19, v18);
    v21 = sub_1D8C62444(v20, MEMORY[0x1E69E7CC0], v32);

    if ((v21 & 0x100000000) != 0)
    {
      result = swift_unknownObjectRelease();
      *(a3 + 41) = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 32) = 0u;
      *a3 = 0u;
    }

    else
    {
      v22 = (*(v8 + 64))(v21 >> 3, v34, v8);
      v24 = v23;
      v25 = swift_getObjectType();
      (*(v24 + 56))(&v29, v25, v24);
      v28 = v29;
      v26 = sub_1D8C29E98(v21);
      sub_1D8C29F08(&v28, v26, &v30);
      swift_unknownObjectRelease();
      result = sub_1D8C2BBF0(v28, *(&v28 + 1));
      v27 = v31[0];
      *(a3 + 16) = v30;
      *(a3 + 32) = v27;
      *(a3 + 41) = *(v31 + 9);
      *a3 = v22;
      *(a3 + 8) = v24;
    }
  }

  return result;
}

uint64_t UnsafeSchematizedData.fieldSchema(forOneofName:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[2];
  v9 = v2[3];
  ObjectType = swift_getObjectType();
  v11 = v7;
  (*(v6 + 72))(a1, a2, ObjectType, v6);
  if (!v3)
  {
    v13 = v12;
    v14 = v9 - v8;
    if (!v8)
    {
      v14 = 0;
    }

    v20[0] = v8;
    v20[1] = v9;
    v20[3] = 0;
    v20[4] = 0;
    v20[2] = v14;
    v21 = 1;
    v15 = swift_getObjectType();
    v16 = (*(v13 + 24))(v15, v13);
    v18 = sub_1D8C62444(v16, MEMORY[0x1E69E7CC0], v20);

    if ((v18 & 0x100000000) != 0)
    {
      swift_unknownObjectRelease();
      return 0;
    }

    else
    {
      v19 = (*(v13 + 40))(v18 >> 3, v15, v13);
      v11 = (*(v6 + 56))(v19);

      swift_unknownObjectRelease();
    }
  }

  return v11;
}

uint64_t UnsafeSchematizedData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB270, &qword_1D8C87248);
  v18 = *(v3 - 8);
  v19 = v3;
  v4 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - v5;
  v7 = *v1;
  v8 = v1[1];
  v10 = v1[2];
  v9 = v1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8C35C54();
  sub_1D8C85404();
  v22 = sub_1D8C2EC1C(MEMORY[0x1E69E7CC0]);
  v12 = v9 - v10;
  if (!v10)
  {
    v12 = 0;
  }

  v20[0] = v10;
  v20[1] = v9;
  v20[3] = 0;
  v20[4] = 0;
  v20[2] = v12;
  v21 = 1;
  ObjectType = swift_getObjectType();
  v14 = v17[1];
  v15 = (*(v8 + 40))(ObjectType, v8);
  if (!v14)
  {
    sub_1D8C432AC(v15, v20, &v22, v6);

    sub_1D8C546FC(v22);
  }

  return (*(v18 + 8))(v6, v19);
}

uint64_t sub_1D8C58CC4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  sub_1D8C29EAC((a1 + 2), v50);
  ObjectType = swift_getObjectType();
  v9 = (*(*(v7 + 8) + 8))();
  v11 = v10;
  if ((*(v7 + 16))(ObjectType, v7))
  {
    v12 = *a2;
    if (*(*a2 + 16) && (v13 = sub_1D8C4668C(v9, v11), (v14 & 1) != 0))
    {
      v15 = *(*(v12 + 56) + 8 * v13);
    }

    else
    {
      v15 = MEMORY[0x1E69E7CC0];
    }

    sub_1D8C29EAC(v50, &v46);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1D8C4ACC8(0, *(v15 + 2) + 1, 1, v15);
    }

    v36 = *(v15 + 2);
    v35 = *(v15 + 3);
    if (v36 >= v35 >> 1)
    {
      v15 = sub_1D8C4ACC8((v35 > 1), v36 + 1, 1, v15);
    }

    *(v15 + 2) = v36 + 1;
    v37 = &v15[48 * v36];
    v38 = v46;
    v39 = v47[0];
    *(v37 + 57) = *(v47 + 9);
    *(v37 + 2) = v38;
    *(v37 + 3) = v39;
    v40 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v46 = *a2;
    *a2 = 0x8000000000000000;
    sub_1D8C76068(v15, v9, v11, isUniquelyReferenced_nonNull_native);

    *a2 = v46;
    return sub_1D8C2AB08(v50);
  }

  *&v46 = v9;
  *(&v46 + 1) = v11;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB270, &qword_1D8C87248);
  sub_1D8C59A84();
  sub_1D8C85254();
  if (!v3)
  {
    swift_bridgeObjectRelease_n();
    return sub_1D8C2AB08(v50);
  }

  if (qword_1ECAAAFD0 != -1)
  {
    swift_once();
  }

  v17 = sub_1D8C84D24();
  __swift_project_value_buffer(v17, qword_1ECAAC470);

  MEMORY[0x1DA725EA0](v3);
  v18 = sub_1D8C84D04();
  v19 = sub_1D8C85004();

  MEMORY[0x1DA725E90](v3);
  if (os_log_type_enabled(v18, v19))
  {
    v44 = v16;
    v20 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *&v46 = v43;
    *v20 = 136315394;
    *(v20 + 4) = sub_1D8C6CD94(v9, v11, &v46);
    *(v20 + 12) = 2080;
    ErrorValue = swift_getErrorValue();
    v45 = a3;
    v22 = *(*(v48 - 8) + 64);
    MEMORY[0x1EEE9AC00](ErrorValue);
    (*(v24 + 16))(&v42 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
    v25 = sub_1D8C84DD4();
    v27 = sub_1D8C6CD94(v25, v26, &v46);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_1D8C28000, v18, v19, "Sch: Error encoding %s: %s", v20, 0x16u);
    v28 = v43;
    swift_arrayDestroy();
    MEMORY[0x1DA725FF0](v28, -1, -1);
    MEMORY[0x1DA725FF0](v20, -1, -1);
  }

  *&v46 = 0;
  *(&v46 + 1) = 0xE000000000000000;
  sub_1D8C85124();

  *&v46 = 0xD000000000000014;
  *(&v46 + 1) = 0x80000001D8C8BE40;
  MEMORY[0x1DA7255C0](v9, v11);

  MEMORY[0x1DA7255C0](8250, 0xE200000000000000);
  v29 = swift_getErrorValue();
  v30 = *(*(v49 - 8) + 64);
  MEMORY[0x1EEE9AC00](v29);
  (*(v32 + 16))(&v42 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_1D8C84DD4();
  MEMORY[0x1DA7255C0](v33);

  *&v46 = v9;
  *(&v46 + 1) = v11;
  sub_1D8C85244();

  MEMORY[0x1DA725E90](v3);

  return sub_1D8C2AB08(v50);
}

uint64_t sub_1D8C59254(uint64_t *a1)
{
  v3 = *a1;
  v2 = a1[1];
  v30 = a1[2];
  v28 = v3;
  v29 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB270, &qword_1D8C87248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB278, &qword_1D8C872C8);
  sub_1D8C59A00();
  result = sub_1D8C85254();
  if (v1)
  {
    if (qword_1ECAAAFD0 != -1)
    {
      swift_once();
    }

    v25 = v4;
    v6 = sub_1D8C84D24();
    __swift_project_value_buffer(v6, qword_1ECAAC470);

    MEMORY[0x1DA725EA0](v1);
    v7 = sub_1D8C84D04();
    v8 = sub_1D8C85004();

    MEMORY[0x1DA725E90](v1);
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v9 = 136315394;
      *(v9 + 4) = sub_1D8C6CD94(v3, v2, &v28);
      *(v9 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      v23[1] = v23;
      v11 = *(*(v26 - 8) + 64);
      MEMORY[0x1EEE9AC00](ErrorValue);
      (*(v13 + 16))(v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
      v14 = sub_1D8C84DD4();
      v16 = sub_1D8C6CD94(v14, v15, &v28);

      *(v9 + 14) = v16;
      _os_log_impl(&dword_1D8C28000, v7, v8, "Sch: Error encoding %s: %s", v9, 0x16u);
      v17 = v24;
      swift_arrayDestroy();
      MEMORY[0x1DA725FF0](v17, -1, -1);
      MEMORY[0x1DA725FF0](v9, -1, -1);
    }

    v28 = 0;
    v29 = 0xE000000000000000;
    sub_1D8C85124();

    v28 = 0xD000000000000014;
    v29 = 0x80000001D8C8BE40;
    MEMORY[0x1DA7255C0](v3, v2);
    MEMORY[0x1DA7255C0](8250, 0xE200000000000000);
    v18 = swift_getErrorValue();
    v19 = *(*(v27 - 8) + 64);
    MEMORY[0x1EEE9AC00](v18);
    (*(v21 + 16))(v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
    v22 = sub_1D8C84DD4();
    MEMORY[0x1DA7255C0](v22);

    v28 = v3;
    v29 = v2;

    sub_1D8C85244();

    return MEMORY[0x1DA725E90](v1);
  }

  return result;
}

void *sub_1D8C59778(uint64_t a1)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = v7 - v6;
  if (!v6)
  {
    v8 = 0;
  }

  v10[0] = *(a1 + 16);
  v10[1] = v7;
  v10[3] = 0;
  v10[4] = 0;
  v10[2] = v8;
  v11 = 1;
  return sub_1D8C44054(v3, v2, v10, v4, v5);
}

uint64_t sub_1D8C59808(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6);
}

uint64_t sub_1D8C59864@<X0>(__int128 *a1@<X0>, Swift::String *a2@<X8>)
{
  v6 = *a1;
  v7 = a1[1];
  v4 = UnsafeSchematizedData.asJSON()();
  result = v4._countAndFlagsBits;
  if (!v5)
  {
    *a2 = v4;
  }

  return result;
}

void *sub_1D8C59918@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = a1[1];
  v9[0] = *a1;
  v9[1] = v7;
  result = v5(&v10, v9);
  if (!v3)
  {
    *a2 = v10;
  }

  return result;
}

uint64_t sub_1D8C5998C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_1D8C59A00()
{
  result = qword_1ECAAB280;
  if (!qword_1ECAAB280)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAB278, &qword_1D8C872C8);
    sub_1D8C59A84();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB280);
  }

  return result;
}

unint64_t sub_1D8C59A84()
{
  result = qword_1ECAAB288;
  if (!qword_1ECAAB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB288);
  }

  return result;
}

_OWORD *sub_1D8C59AD8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t SchemaStoreDescribing.asPublic()@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
  return swift_unknownObjectRetain();
}

uint64_t sub_1D8C59B24(uint64_t a1)
{
  v6 = v1;
  v37 = MEMORY[0x1E69E7CC8];
  v40 = MEMORY[0x1E69E7CC8];
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v12 << 6);
    v16 = *(a1 + 56) + 40 * v15;
    v5 = *v16;
    v4 = *(v16 + 8);
    v3 = *(v16 + 16);
    v2 = *(v16 + 24);
    if (*(v16 + 32) == 1)
    {
      v17 = (*(a1 + 48) + 16 * v15);
      v35 = *v17;
      v36 = v17[1];
      sub_1D8C2F1C8(v5, v4, v3, v2, 1);
      sub_1D8C2F1C8(v5, v4, v3, v2, 1);

      sub_1D8C76DD0(v5, v39);
      if (v6)
      {
        goto LABEL_26;
      }

      v33 = v39[1];
      v34 = v39[0];
      v18 = v37;
      v19 = *(v37 + 16);
      if (*(v37 + 24) <= v19)
      {
        sub_1D8C734B4(v19 + 1, 1);
        v18 = v40;
      }

      v37 = v18;
      v20 = *(v18 + 40);
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v22 = v37 + 64;
      v23 = -1 << *(v37 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v37 + 64 + 8 * (v24 >> 6))) != 0)
      {
        v26 = __clz(__rbit64((-1 << v24) & ~*(v37 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
        v6 = 0;
      }

      else
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        v6 = 0;
        do
        {
          if (++v25 == v28 && (v27 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = *(v22 + 8 * v25);
        }

        while (v30 == -1);
        v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      }

      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v31 = (*(v37 + 48) + 16 * v26);
      *v31 = v35;
      v31[1] = v36;
      v32 = (*(v37 + 56) + 32 * v26);
      *v32 = v34;
      v32[1] = v33;
      ++*(v37 + 16);
      sub_1D8C512FC(v5, v4, v3, v2, 1);
    }

    else
    {
      sub_1D8C2F1C8(v5, v4, v3, v2, 0);
      sub_1D8C512FC(v5, v4, v3, v2, 0);
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_27;
    }

    v10 = *(v7 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:

  sub_1D8C512FC(v5, v4, v3, v2, 1);

LABEL_27:

  return v37;
}

uint64_t sub_1D8C59E44(uint64_t a1)
{
  v6 = v1;
  v38 = MEMORY[0x1E69E7CC8];
  v43 = MEMORY[0x1E69E7CC8];
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v12 << 6);
    v16 = *(a1 + 56) + 40 * v15;
    v5 = *v16;
    v4 = *(v16 + 8);
    v3 = *(v16 + 16);
    v2 = *(v16 + 24);
    if (*(v16 + 32) == 1)
    {
      v17 = (*(a1 + 48) + 16 * v15);
      v36 = *v17;
      v37 = v17[1];
      sub_1D8C2F230(v5, v4, v3, v2, 1);
      sub_1D8C2F230(v5, v4, v3, v2, 1);

      sub_1D8C61B40(v5, &off_1F54505C8, &v40);
      if (v6)
      {
        goto LABEL_26;
      }

      v35 = v41;
      v33 = v42;
      v34 = v40;
      v18 = v38;
      v19 = *(v38 + 16);
      if (*(v38 + 24) <= v19)
      {
        sub_1D8C737B4(v19 + 1, 1);
        v18 = v43;
      }

      v38 = v18;
      v20 = *(v18 + 40);
      sub_1D8C853B4();
      sub_1D8C84E24();
      result = sub_1D8C853E4();
      v22 = v38 + 64;
      v23 = -1 << *(v38 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v38 + 64 + 8 * (v24 >> 6))) != 0)
      {
        v26 = __clz(__rbit64((-1 << v24) & ~*(v38 + 64 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
        v6 = 0;
      }

      else
      {
        v27 = 0;
        v28 = (63 - v23) >> 6;
        v6 = 0;
        do
        {
          if (++v25 == v28 && (v27 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v29 = v25 == v28;
          if (v25 == v28)
          {
            v25 = 0;
          }

          v27 |= v29;
          v30 = *(v22 + 8 * v25);
        }

        while (v30 == -1);
        v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      }

      *(v22 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      v31 = (*(v38 + 48) + 16 * v26);
      *v31 = v36;
      v31[1] = v37;
      v32 = *(v38 + 56) + 32 * v26;
      *v32 = v34;
      *(v32 + 8) = v35;
      *(v32 + 24) = v33;
      ++*(v38 + 16);
      sub_1D8C51294(v5, v4, v3, v2, 1);
    }

    else
    {
      sub_1D8C2F230(v5, v4, v3, v2, 0);
      sub_1D8C51294(v5, v4, v3, v2, 0);
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_27;
    }

    v10 = *(v7 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_26:

  sub_1D8C51294(v5, v4, v3, v2, 1);

LABEL_27:

  return v38;
}

PoirotSchematizer::SchemaManifest __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SchemaStoreDescribing.manifestSelf()()
{
  v2 = v0;
  v3 = v1;
  swift_unknownObjectRetain();
  v4 = sub_1D8C4CFA8(v2, v3);
  result.enums._rawValue = v5;
  result.messages._rawValue = v4;
  return result;
}

PoirotSchematizer::SchemaManifest __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SchemaStoreDescribing.manifestEngagementsOnly()()
{
  v3 = v0;
  if (object_getClass(v1) != _TtC17PoirotSchematizer16ProtoSchemaStore || v1 == 0)
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v5 = 0xD000000000000023;
    *(v5 + 8) = 0x80000001D8C8BE60;
    *(v5 + 16) = 2;
    v6 = swift_willThrow();
  }

  else
  {
    swift_beginAccess();
    v8 = v1[3];
    swift_unknownObjectRetain();

    v10 = sub_1D8C59B24(v9);

    if (v2)
    {
      v6 = swift_unknownObjectRelease();
    }

    else
    {
      swift_beginAccess();
      v11 = v1[2];

      v13 = sub_1D8C59E44(v12);
      swift_unknownObjectRelease();

      *v3 = v10;
      v3[1] = v13;
    }
  }

  result.enums._rawValue = v7;
  result.messages._rawValue = v6;
  return result;
}

uint64_t sub_1D8C5A394()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2A8, &unk_1D8C87370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8C87300;
  *(inited + 32) = 0xD000000000000021;
  *(inited + 40) = 0x80000001D8C8BE90;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB178, &unk_1D8C863A0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D8C861A0;
  *(v1 + 32) = 1701603686;
  *(v1 + 40) = 0xE400000000000000;
  *(v1 + 48) = 9;
  *(v1 + 56) = 0xD000000000000023;
  *(v1 + 64) = 0x80000001D8C8BEC0;
  *(v1 + 72) = 1;
  *(v1 + 80) = 1;
  *(v1 + 84) = 0;
  *(v1 + 88) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v1 + 96) = xmmword_1D8C86390;
  v2 = sub_1D8C2E464(v1);
  swift_setDeallocating();
  sub_1D8C34F68(v1 + 32);
  swift_deallocClassInstance();
  sub_1D8C2C670(0, 0xF000000000000000);
  v3 = MEMORY[0x1E69E7CC0];
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  *(inited + 64) = xmmword_1D8C86390;
  *(inited + 80) = 0xD000000000000023;
  *(inited + 88) = 0x80000001D8C8BEC0;
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D8C87310;
  *(v4 + 32) = 1701667182;
  *(v4 + 40) = 0xE400000000000000;
  *(v4 + 96) = xmmword_1D8C86390;
  *(v4 + 48) = 8;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 72) = 1;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 88) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v4 + 96) = xmmword_1D8C86390;
  *(v4 + 112) = 0x6567616B636170;
  *(v4 + 120) = 0xE700000000000000;
  *(v4 + 176) = xmmword_1D8C86390;
  *(v4 + 128) = 8;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 2;
  *(v4 + 160) = 0;
  *(v4 + 164) = 0;
  *(v4 + 168) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v4 + 176) = xmmword_1D8C86390;
  strcpy((v4 + 192), "message_type");
  *(v4 + 205) = 0;
  *(v4 + 206) = -5120;
  *(v4 + 256) = xmmword_1D8C86390;
  *(v4 + 208) = 9;
  *(v4 + 216) = 0xD00000000000001FLL;
  *(v4 + 224) = 0x80000001D8C8BBE0;
  *(v4 + 232) = 4;
  *(v4 + 240) = 1;
  *(v4 + 244) = 0;
  *(v4 + 248) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v4 + 256) = xmmword_1D8C86390;
  *(v4 + 272) = 0x7079745F6D756E65;
  *(v4 + 280) = 0xE900000000000065;
  *(v4 + 336) = xmmword_1D8C86390;
  *(v4 + 288) = 9;
  *(v4 + 296) = 0xD000000000000023;
  *(v4 + 304) = 0x80000001D8C8BA90;
  *(v4 + 312) = 5;
  *(v4 + 320) = 1;
  *(v4 + 324) = 0;
  *(v4 + 328) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v4 + 336) = xmmword_1D8C86390;
  *(v4 + 352) = 0x6F69736E65747865;
  *(v4 + 360) = 0xE90000000000006ELL;
  *(v4 + 416) = xmmword_1D8C86390;
  *(v4 + 368) = 9;
  *(v4 + 376) = 0xD000000000000024;
  *(v4 + 384) = 0x80000001D8C8BB10;
  *(v4 + 392) = 7;
  *(v4 + 400) = 1;
  *(v4 + 404) = 0;
  *(v4 + 408) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v4 + 416) = xmmword_1D8C86390;
  v5 = sub_1D8C2E464(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB068, &unk_1D8C87380);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D8C2C670(0, 0xF000000000000000);
  *(inited + 96) = v5;
  *(inited + 104) = MEMORY[0x1E69E7CC0];
  *(inited + 112) = xmmword_1D8C86390;
  *(inited + 128) = 0xD00000000000001FLL;
  *(inited + 136) = 0x80000001D8C8BBE0;
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D8C87320;
  *(v6 + 32) = 1701667182;
  *(v6 + 40) = 0xE400000000000000;
  *(v6 + 96) = xmmword_1D8C86390;
  *(v6 + 48) = 8;
  *(v6 + 56) = 0;
  *(v6 + 64) = 0;
  *(v6 + 72) = 1;
  *(v6 + 80) = 0;
  *(v6 + 84) = 0;
  *(v6 + 88) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v6 + 96) = xmmword_1D8C86390;
  *(v6 + 112) = 0x646C656966;
  *(v6 + 120) = 0xE500000000000000;
  *(v6 + 176) = xmmword_1D8C86390;
  *(v6 + 128) = 9;
  *(v6 + 136) = 0xD000000000000024;
  *(v6 + 144) = 0x80000001D8C8BB10;
  *(v6 + 152) = 2;
  *(v6 + 160) = 1;
  *(v6 + 164) = 0;
  *(v6 + 168) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v6 + 176) = xmmword_1D8C86390;
  *(v6 + 192) = 0x745F64657473656ELL;
  *(v6 + 200) = 0xEB00000000657079;
  *(v6 + 256) = xmmword_1D8C86390;
  *(v6 + 208) = 9;
  *(v6 + 216) = 0xD00000000000001FLL;
  *(v6 + 224) = 0x80000001D8C8BBE0;
  *(v6 + 232) = 3;
  *(v6 + 240) = 1;
  *(v6 + 244) = 0;
  *(v6 + 248) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v6 + 256) = xmmword_1D8C86390;
  *(v6 + 272) = 0x7079745F6D756E65;
  *(v6 + 280) = 0xE900000000000065;
  *(v6 + 336) = xmmword_1D8C86390;
  *(v6 + 288) = 9;
  *(v6 + 296) = 0xD000000000000023;
  *(v6 + 304) = 0x80000001D8C8BA90;
  *(v6 + 312) = 4;
  *(v6 + 320) = 1;
  *(v6 + 324) = 0;
  *(v6 + 328) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v6 + 336) = xmmword_1D8C86390;
  *(v6 + 352) = 0x6F69736E65747865;
  *(v6 + 360) = 0xE90000000000006ELL;
  *(v6 + 416) = xmmword_1D8C86390;
  *(v6 + 368) = 9;
  *(v6 + 376) = 0xD000000000000024;
  *(v6 + 384) = 0x80000001D8C8BB10;
  *(v6 + 392) = 6;
  *(v6 + 400) = 1;
  *(v6 + 404) = 0;
  *(v6 + 408) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v6 + 416) = xmmword_1D8C86390;
  *(v6 + 432) = 0x736E6F6974706FLL;
  *(v6 + 440) = 0xE700000000000000;
  *(v6 + 496) = xmmword_1D8C86390;
  *(v6 + 448) = 9;
  *(v6 + 456) = 0xD00000000000001ELL;
  *(v6 + 464) = 0x80000001D8C8BD60;
  *(v6 + 472) = 7;
  *(v6 + 480) = 0;
  *(v6 + 484) = 0;
  *(v6 + 488) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v6 + 496) = xmmword_1D8C86390;
  *(v6 + 512) = 0x65645F666F656E6FLL;
  *(v6 + 520) = 0xEA00000000006C63;
  *(v6 + 576) = xmmword_1D8C86390;
  *(v6 + 528) = 9;
  *(v6 + 536) = 0xD000000000000024;
  *(v6 + 544) = 0x80000001D8C8BB70;
  *(v6 + 552) = 8;
  *(v6 + 560) = 1;
  *(v6 + 564) = 0;
  *(v6 + 568) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v6 + 576) = xmmword_1D8C86390;
  v7 = sub_1D8C2E464(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D8C2C670(0, 0xF000000000000000);
  *(inited + 144) = v7;
  *(inited + 152) = MEMORY[0x1E69E7CC0];
  *(inited + 160) = xmmword_1D8C86390;
  *(inited + 176) = 0xD000000000000023;
  *(inited + 184) = 0x80000001D8C8BA90;
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D8C87330;
  *(v8 + 32) = 1701667182;
  *(v8 + 40) = 0xE400000000000000;
  *(v8 + 48) = 8;
  *(v8 + 56) = 0;
  *(v8 + 64) = 0;
  *(v8 + 72) = 1;
  *(v8 + 80) = 0;
  *(v8 + 84) = 0;
  *(v8 + 88) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v8 + 96) = xmmword_1D8C86390;
  *(v8 + 112) = 0x65756C6176;
  *(v8 + 120) = 0xE500000000000000;
  *(v8 + 128) = 9;
  *(v8 + 136) = 0xD000000000000028;
  *(v8 + 144) = 0x80000001D8C8BAC0;
  *(v8 + 152) = 2;
  *(v8 + 160) = 1;
  *(v8 + 164) = 0;
  *(v8 + 168) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v8 + 176) = xmmword_1D8C86390;
  *(v8 + 192) = 0x736E6F6974706FLL;
  *(v8 + 200) = 0xE700000000000000;
  *(v8 + 208) = 9;
  *(v8 + 216) = 0xD00000000000001BLL;
  *(v8 + 224) = 0x80000001D8C8BCD0;
  *(v8 + 232) = 3;
  *(v8 + 240) = 0;
  *(v8 + 244) = 0;
  *(v8 + 248) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v8 + 256) = xmmword_1D8C86390;
  v9 = sub_1D8C2E464(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D8C2C670(0, 0xF000000000000000);
  *(inited + 192) = v9;
  *(inited + 200) = MEMORY[0x1E69E7CC0];
  *(inited + 208) = xmmword_1D8C86390;
  *(inited + 224) = 0xD000000000000028;
  *(inited + 232) = 0x80000001D8C8BAC0;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D8C87330;
  *(v10 + 32) = 1701667182;
  *(v10 + 40) = 0xE400000000000000;
  *(v10 + 48) = 8;
  *(v10 + 56) = 0;
  *(v10 + 64) = 0;
  *(v10 + 72) = 1;
  *(v10 + 80) = 0;
  *(v10 + 84) = 0;
  *(v10 + 88) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v10 + 96) = xmmword_1D8C86390;
  *(v10 + 112) = 0x7265626D756ELL;
  *(v10 + 120) = 0xE600000000000000;
  *(v10 + 128) = 4;
  *(v10 + 136) = 0;
  *(v10 + 144) = 0;
  *(v10 + 152) = 2;
  *(v10 + 160) = 0;
  *(v10 + 164) = 0;
  *(v10 + 168) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v10 + 176) = xmmword_1D8C86390;
  *(v10 + 192) = 0x736E6F6974706FLL;
  *(v10 + 200) = 0xE700000000000000;
  *(v10 + 208) = 9;
  *(v10 + 216) = 0xD000000000000020;
  *(v10 + 224) = 0x80000001D8C8BCF0;
  *(v10 + 232) = 3;
  *(v10 + 240) = 0;
  *(v10 + 244) = 0;
  *(v10 + 248) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v10 + 256) = xmmword_1D8C86390;
  v11 = sub_1D8C2E464(v10);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D8C2C670(0, 0xF000000000000000);
  *(inited + 240) = v11;
  *(inited + 248) = MEMORY[0x1E69E7CC0];
  *(inited + 256) = xmmword_1D8C86390;
  *(inited + 272) = 0xD000000000000024;
  *(inited + 280) = 0x80000001D8C8BB10;
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D8C87340;
  *(v12 + 32) = 1701667182;
  *(v12 + 40) = 0xE400000000000000;
  *(v12 + 96) = xmmword_1D8C86390;
  *(v12 + 48) = 8;
  *(v12 + 56) = 0;
  *(v12 + 64) = 0;
  *(v12 + 72) = 1;
  *(v12 + 80) = 0;
  *(v12 + 84) = 0;
  *(v12 + 88) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v12 + 96) = xmmword_1D8C86390;
  *(v12 + 112) = 0x6565646E65747865;
  *(v12 + 120) = 0xE800000000000000;
  *(v12 + 176) = xmmword_1D8C86390;
  *(v12 + 128) = 8;
  *(v12 + 136) = 0;
  *(v12 + 144) = 0;
  *(v12 + 152) = 2;
  *(v12 + 160) = 0;
  *(v12 + 164) = 0;
  *(v12 + 168) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v12 + 176) = xmmword_1D8C86390;
  *(v12 + 192) = 0x7265626D756ELL;
  *(v12 + 200) = 0xE600000000000000;
  *(v12 + 256) = xmmword_1D8C86390;
  *(v12 + 208) = 4;
  *(v12 + 216) = 0;
  *(v12 + 224) = 0;
  *(v12 + 232) = 3;
  *(v12 + 240) = 0;
  *(v12 + 244) = 0;
  *(v12 + 248) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v12 + 256) = xmmword_1D8C86390;
  *(v12 + 272) = 0x6C6562616CLL;
  *(v12 + 280) = 0xE500000000000000;
  *(v12 + 336) = xmmword_1D8C86390;
  *(v12 + 288) = 12;
  *(v12 + 296) = 0xD00000000000002ALL;
  *(v12 + 304) = 0x80000001D8C8BEF0;
  *(v12 + 312) = 4;
  *(v12 + 320) = 0;
  *(v12 + 324) = 0;
  *(v12 + 328) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v12 + 336) = xmmword_1D8C86390;
  *(v12 + 352) = 1701869940;
  *(v12 + 360) = 0xE400000000000000;
  *(v12 + 416) = xmmword_1D8C86390;
  *(v12 + 368) = 12;
  *(v12 + 376) = 0xD000000000000029;
  *(v12 + 384) = 0x80000001D8C8BF20;
  *(v12 + 392) = 5;
  *(v12 + 400) = 0;
  *(v12 + 404) = 0;
  *(v12 + 408) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v12 + 416) = xmmword_1D8C86390;
  *(v12 + 432) = 0x6D616E5F65707974;
  *(v12 + 440) = 0xE900000000000065;
  *(v12 + 496) = xmmword_1D8C86390;
  *(v12 + 448) = 8;
  *(v12 + 456) = 0;
  *(v12 + 464) = 0;
  *(v12 + 472) = 6;
  *(v12 + 480) = 0;
  *(v12 + 484) = 0;
  *(v12 + 488) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v12 + 496) = xmmword_1D8C86390;
  *(v12 + 512) = 0x736E6F6974706FLL;
  *(v12 + 520) = 0xE700000000000000;
  *(v12 + 576) = xmmword_1D8C86390;
  *(v12 + 528) = 9;
  *(v12 + 536) = 0xD00000000000001CLL;
  *(v12 + 544) = 0x80000001D8C8BD20;
  *(v12 + 552) = 8;
  *(v12 + 560) = 0;
  *(v12 + 564) = 0;
  *(v12 + 568) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v12 + 576) = xmmword_1D8C86390;
  *(v12 + 592) = 0x6E695F666F656E6FLL;
  *(v12 + 600) = 0xEB00000000786564;
  *(v12 + 656) = xmmword_1D8C86390;
  *(v12 + 608) = 4;
  *(v12 + 616) = 0;
  *(v12 + 624) = 0;
  *(v12 + 632) = 9;
  *(v12 + 640) = 0;
  *(v12 + 644) = 0;
  *(v12 + 648) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v12 + 656) = xmmword_1D8C86390;
  v13 = sub_1D8C2E464(v12);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D8C2C670(0, 0xF000000000000000);
  *(inited + 288) = v13;
  v14 = MEMORY[0x1E69E7CC0];
  *(inited + 296) = MEMORY[0x1E69E7CC0];
  *(inited + 304) = xmmword_1D8C86390;
  *(inited + 320) = 0xD000000000000024;
  *(inited + 328) = 0x80000001D8C8BB70;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D8C861D0;
  *(v15 + 32) = 1701667182;
  *(v15 + 40) = 0xE400000000000000;
  *(v15 + 48) = 8;
  *(v15 + 56) = 0;
  *(v15 + 64) = 0;
  *(v15 + 72) = 1;
  *(v15 + 80) = 0;
  *(v15 + 84) = 0;
  *(v15 + 88) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v15 + 96) = xmmword_1D8C86390;
  *(v15 + 112) = 0x736E6F6974706FLL;
  *(v15 + 120) = 0xE700000000000000;
  *(v15 + 128) = 9;
  *(v15 + 136) = 0xD00000000000001CLL;
  *(v15 + 144) = 0x80000001D8C8BD40;
  *(v15 + 152) = 2;
  *(v15 + 160) = 0;
  *(v15 + 164) = 0;
  *(v15 + 168) = 1;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v15 + 176) = xmmword_1D8C86390;
  v16 = sub_1D8C2E464(v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  sub_1D8C2C670(0, 0xF000000000000000);
  *(inited + 336) = v16;
  *(inited + 344) = v14;
  *(inited + 352) = xmmword_1D8C86390;
  *(inited + 368) = 0xD00000000000001ELL;
  *(inited + 376) = 0x80000001D8C8BD60;
  v17 = sub_1D8C2E464(v14);
  sub_1D8C2C670(0, 0xF000000000000000);
  *(inited + 384) = v17;
  *(inited + 392) = v14;
  *(inited + 400) = xmmword_1D8C86390;
  *(inited + 416) = 0xD00000000000001CLL;
  *(inited + 424) = 0x80000001D8C8BD20;
  v18 = sub_1D8C2E464(v14);
  sub_1D8C2C670(0, 0xF000000000000000);
  *(inited + 432) = v18;
  *(inited + 440) = v14;
  *(inited + 448) = xmmword_1D8C86390;
  *(inited + 464) = 0xD00000000000001CLL;
  *(inited + 472) = 0x80000001D8C8BD40;
  v19 = sub_1D8C2E464(v14);
  sub_1D8C2C670(0, 0xF000000000000000);
  *(inited + 480) = v19;
  *(inited + 488) = v14;
  *(inited + 496) = xmmword_1D8C86390;
  *(inited + 512) = 0xD00000000000001BLL;
  *(inited + 520) = 0x80000001D8C8BCD0;
  v20 = sub_1D8C2E464(v14);
  sub_1D8C2C670(0, 0xF000000000000000);
  *(inited + 528) = v20;
  *(inited + 536) = v14;
  *(inited + 544) = xmmword_1D8C86390;
  *(inited + 560) = 0xD000000000000020;
  *(inited + 568) = 0x80000001D8C8BCF0;
  v21 = sub_1D8C2E464(v14);
  sub_1D8C2C670(0, 0xF000000000000000);
  *(inited + 576) = v21;
  *(inited + 584) = v14;
  *(inited + 592) = xmmword_1D8C86390;
  v22 = sub_1D8C2E600(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2B0, &unk_1D8C87C10);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2B8, &unk_1D8C87390);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D8C861D0;
  *(v23 + 32) = 0xD00000000000002ALL;
  *(v23 + 40) = 0x80000001D8C8BEF0;
  v24 = sub_1D8C2E870(&unk_1F544FC60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB0B0, &qword_1D8C866F0);
  swift_arrayDestroy();
  v25 = sub_1D8C2E858(v14);
  *(v23 + 56) = xmmword_1D8C86390;
  sub_1D8C2E858(v14);
  *(v23 + 48) = v24;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v23 + 56) = xmmword_1D8C86390;

  *(v23 + 72) = v25;
  *(v23 + 80) = 0xD000000000000029;
  *(v23 + 88) = 0x80000001D8C8BF20;
  v26 = sub_1D8C2E870(&unk_1F544FCC8);
  swift_arrayDestroy();
  v27 = sub_1D8C2E858(v14);
  *(v23 + 104) = xmmword_1D8C86390;
  sub_1D8C2E858(v14);
  *(v23 + 96) = v26;
  sub_1D8C2C670(0, 0xF000000000000000);
  *(v23 + 104) = xmmword_1D8C86390;

  *(v23 + 120) = v27;
  v28 = sub_1D8C2E72C(v23);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB2C0, &qword_1D8C873A0);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_1ECAAB298 = v22;
  unk_1ECAAB2A0 = v28;
  return result;
}

uint64_t static Descriptor.manifest.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDED2EC8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1ECAAB2A0;
  *a1 = qword_1ECAAB298;
  a1[1] = v1;
}

double SchemaManifest.init(withPoirotDSCData:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __int128 *a3@<X8>)
{
  if (qword_1EDED2EC8 != -1)
  {
    swift_once();
  }

  v8 = xmmword_1ECAAB298;
  type metadata accessor for ProtoSchemaStore();
  swift_allocObject();

  sub_1D8C507F4(&v8);
  if (v3)
  {
    sub_1D8C2C684(a1, a2);
  }

  else
  {
    sub_1D8C50B68(0xD000000000000021, 0x80000001D8C8BE90);
    sub_1D8C67E10(a1, a2, &v8);

    result = *&v8;
    *a3 = v8;
  }

  return result;
}

uint64_t SchemaManifest.init(withSwiftProtobufDSCData:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v7 = sub_1D8C84CB4();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = sub_1D8C84914();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v18 - v15;
  v20 = a1;
  v21 = a2;
  v19 = 0;
  memset(v18, 0, sizeof(v18));
  sub_1D8C2C5E4(a1, a2);
  sub_1D8C84CA4();
  sub_1D8C4B27C();
  sub_1D8C84CF4();
  if (v3)
  {
    return sub_1D8C2C684(a1, a2);
  }

  (*(v10 + 16))(v14, v16, v9);
  sub_1D8C7E610(v14, v18);
  (*(v10 + 8))(v16, v9);
  result = sub_1D8C2C684(a1, a2);
  *a3 = v18[0];
  return result;
}

uint64_t sub_1D8C5B8AC()
{
  v2 = *v0;
  v3 = v0[1];
  *&v7 = v2;
  v4 = sub_1D8C51364(&v7);
  if (!v1)
  {
    *&v7 = v2;
    *(&v7 + 1) = v3;
    v5 = sub_1D8C8130C(v4, &off_1F5450D10);
    v2 = *(v5 + 32);
    sub_1D8C2C5E4(v2, *(v5 + 40));
  }

  return v2;
}

__int128 *SchemaManifest.toDSCDataWithSwiftProtobuf()()
{
  v2 = sub_1D8C84914();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v0;
  v7 = &v9;
  sub_1D8C327B0();
  if (!v1)
  {
    sub_1D8C4B27C();
    v7 = sub_1D8C84CE4();
    (*(v3 + 8))(v6, v2);
  }

  return v7;
}

uint64_t get_enum_tag_for_layout_string_17PoirotSchematizer22SchemaManifestDSCErrorO(uint64_t a1)
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

uint64_t Reader.read(fieldPathAndType:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  if (*(*a1 + 16))
  {
    v4 = *a1;
    v5 = *(a1 + 1);
    return sub_1D8C2B670(&v4, 0, a2);
  }

  else
  {
    sub_1D8C2F8AC();
    swift_allocError();
    *v3 = 0xD000000000000011;
    *(v3 + 8) = 0x80000001D8C8BBA0;
    *(v3 + 16) = 5;
    return swift_willThrow();
  }
}

double Reader.readScalar(fieldNumber:type:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  v7 = sub_1D8C29BDC(a1);
  if (!v3)
  {
    if ((v7 & 0x100000000) != 0)
    {
      *(a3 + 32) = 0;
      result = 0.0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = -1;
    }

    else
    {
      v10[0] = v5;
      v10[1] = v6;
      v9 = sub_1D8C29E98(v7);
      sub_1D8C29F08(v10, v9, a3);
    }
  }

  return result;
}

unint64_t sub_1D8C5BC14@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = v5[2];
  v8 = v5[3];
  if (v8 >= v9)
  {
LABEL_37:
    *(a5 + 25) = 0u;
    *a5 = 0u;
    *(a5 + 16) = 0u;
    v27 = 2;
LABEL_38:
    *(a5 + 41) = v27;
    return result;
  }

  v12 = result;
  v13 = a3[1];
  v14 = a3[2];
  v50 = *a3;
  v15 = *v5;
  v35 = v5[1];
  v36 = v13;
  v16 = v35 - *v5;
  v39 = v13 - 13;
  v40 = v14 >> 62;
  v37 = v14;
  v38 = (v13 >= 0xD) + v14 + 0x7FFFFFFFFFFFFFFFLL;
  v41 = *v5 + 1;
  while (1)
  {
    if (v15)
    {
      v17 = v16;
      if (v8 >= v16)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_56;
      }

      v17 = 0;
    }

    result = *(v15 + v8);
    v18 = v8 + 1;
    if ((result & 0x8000000000000000) != 0)
    {
      if (v18 >= v17)
      {
        goto LABEL_56;
      }

      result &= 0x7Fu;
      v19 = (v41 + v8);
      v18 = v8 + 2;
      v20 = 7;
      while (1)
      {
        v21 = *v19++;
        result |= (v21 & 0x7F) << v20;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        if (v18 < v17)
        {
          ++v18;
          v22 = v20 > 0x38;
          v20 += 7;
          if (!v22)
          {
            continue;
          }
        }

        goto LABEL_56;
      }

      v5[3] = v18;
      if (result > 0xFFFFFFFE)
      {
        goto LABEL_56;
      }
    }

    else
    {
      v5[3] = v18;
    }

    LODWORD(v23) = result & 7;
    if (result < 8 || v23 >= 6)
    {
      goto LABEL_56;
    }

    if (v12 != result >> 3)
    {
      goto LABEL_27;
    }

    v25 = *(v50 + 16) - 1;
    if (v23 != 2)
    {
      if (v25 == a2)
      {
        goto LABEL_25;
      }

      sub_1D8C2F8AC();
      swift_allocError();
      *v28 = 0xD00000000000004BLL;
      *(v28 + 8) = 0x80000001D8C8BFE0;
      v29 = 5;
LABEL_57:
      *(v28 + 16) = v29;
      return swift_willThrow();
    }

    if (v25 == a2)
    {
      LOBYTE(v23) = v40;
      if (v40 != 1)
      {
        if (v40 != 2)
        {
          break;
        }

        LOBYTE(v23) = v38;
        v25 = v39;
        if (__PAIR128__(v38, v39) >= 2)
        {
          break;
        }
      }
    }

LABEL_25:
    if (!a4)
    {
      *a5 = result;
      v27 = 1;
      goto LABEL_38;
    }

    if (__OFSUB__(a4--, 1))
    {
      __break(1u);
LABEL_50:
      if (v25 < v16)
      {
        v23 &= 0x7Fu;
        v32 = (v15 + v18 + 1);
        v25 = v18 + 2;
        v33 = 7;
        while (1)
        {
          v34 = *v32++;
          v23 |= (v34 & 0x7F) << v33;
          if ((v34 & 0x80) == 0)
          {
            goto LABEL_44;
          }

          if (v25 < v16)
          {
            ++v25;
            v22 = v33 > 0x38;
            v33 += 7;
            if (!v22)
            {
              continue;
            }
          }

          goto LABEL_56;
        }
      }

      goto LABEL_56;
    }

LABEL_27:
    result = sub_1D8C452D0(result);
    if (v6)
    {
      return result;
    }

    v8 = v5[3];
    if (v8 >= v9)
    {
      goto LABEL_37;
    }
  }

  if (v15)
  {
    if (v18 >= v16)
    {
      goto LABEL_56;
    }
  }

  else
  {
    if ((v18 & 0x8000000000000000) == 0)
    {
      goto LABEL_56;
    }

    v16 = 0;
  }

  v23 = *(v15 + v18);
  v25 = v18 + 1;
  if (v23 < 0)
  {
    goto LABEL_50;
  }

LABEL_44:
  v5[3] = v25;
  if ((v23 & 0x80000000) != 0)
  {
LABEL_56:
    sub_1D8C36A64();
    swift_allocError();
    *v28 = xmmword_1D8C86190;
    v29 = 2;
    goto LABEL_57;
  }

  if (__OFADD__(v25, v23 & 0x7FFFFFFF))
  {
    __break(1u);
  }

  else
  {
    v44 = v15;
    v45 = v35;
    v46 = v25 + (v23 & 0x7FFFFFFF);
    v47 = v25;
    v48 = 0;
    v49 = 1;
    v5[4] = v46;
    *(v5 + 40) = 0;
    if (a4 <= 0)
    {
      v31 = v36;
      v30 = v37;
LABEL_60:
      v42 = v31;
      v43 = v30;
      result = sub_1D8C6DE1C(&v42, a5);
      if (!v6)
      {
        *(a5 + 41) = 0;
      }
    }

    else
    {
      v31 = v36;
      v30 = v37;
      v42 = v36;
      v43 = v37;
      result = sub_1D8C6E644(&v42, a4);
      if (!v6)
      {
        goto LABEL_60;
      }
    }

    v5[3] = v47;
  }

  return result;
}

uint64_t FieldValueImpl.asPublic()@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[1];
  v4 = *v1;
  swift_getObjectType();
  FieldSchemaDescribing.asPublic()(v3, &v36);
  v28 = v36;
  result = sub_1D8C29EAC((v1 + 2), &v32);
  v6 = v35;
  if (v35 <= 4u)
  {
    if (v35 <= 1u)
    {
      v7 = v28;
    }

    else
    {
      v7 = v28;
      if (v35 == 2 || v35 == 3)
      {
        v8 = 0;
        v9 = 0;
        v11 = 0uLL;
        v10 = v32;
        goto LABEL_25;
      }
    }

    v8 = 0;
    v9 = 0;
    v10 = v32;
    v11 = 0uLL;
    goto LABEL_25;
  }

  if (v35 > 7u)
  {
    if (v35 == 8)
    {
      sub_1D8C2AA1C(&v32, v29);
      v16 = v30;
      v17 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v14 = (*(v17 + 24))(v16, v17);
    }

    else
    {
      if (v35 != 9)
      {
        v30 = MEMORY[0x1E69E6290];
        v31 = MEMORY[0x1E6969DF8];
        v27 = v32;
        *v29 = v33;
        v18 = __swift_project_boxed_opaque_existential_1(v29, MEMORY[0x1E69E6290]);
        v19 = *v18;
        if (*v18 && (v20 = v18[1], v21 = &v20[-v19], v20 != v19))
        {
          if (v21 <= 14)
          {
            v22 = sub_1D8C45074(*v18, v20);
            v23 = v25 & 0xFFFFFFFFFFFFFFLL;
            swift_unknownObjectRetain();
          }

          else
          {
            swift_unknownObjectRetain();
            if (v21 >= 0x7FFFFFFF)
            {
              v22 = sub_1D8C45134(v19, v20);
              v23 = v26 | 0x8000000000000000;
            }

            else
            {
              v22 = sub_1D8C2B5D0(v19, v20);
              v23 = v24 | 0x4000000000000000;
            }
          }
        }

        else
        {
          swift_unknownObjectRetain();
          v22 = 0;
          v23 = 0xC000000000000000;
        }

        __swift_destroy_boxed_opaque_existential_1(v29);
        swift_unknownObjectRelease();
        type metadata accessor for SchematizedData();
        result = swift_allocObject();
        v10 = result;
        v8 = 0;
        v9 = 0;
        *(result + 16) = v27;
        *(result + 32) = v22;
        *(result + 40) = v23;
        goto LABEL_23;
      }

      sub_1D8C2AA1C(&v32, v29);
      v12 = v30;
      v13 = v31;
      __swift_project_boxed_opaque_existential_1(v29, v30);
      v14 = (*(v13 + 16))(v12, v13);
    }

    v10 = v14;
    v8 = v15;
    result = __swift_destroy_boxed_opaque_existential_1(v29);
    v9 = 0;
LABEL_23:
    v11 = 0uLL;
    goto LABEL_24;
  }

  if (v35 == 5)
  {
    v8 = 0;
    v9 = 0;
    v11 = 0uLL;
    v10 = v32;
LABEL_24:
    v7 = v28;
    goto LABEL_25;
  }

  v7 = v28;
  if (v35 == 6)
  {
    v8 = 0;
    v9 = 0;
    v10 = v32;
    v11 = 0uLL;
  }

  else
  {
    v8 = *(&v32 + 1);
    v10 = v32;
    v11 = v33;
    v9 = v34;
  }

LABEL_25:
  *a1 = v7;
  *(a1 + 16) = v10;
  *(a1 + 24) = v8;
  *(a1 + 32) = v11;
  *(a1 + 48) = v9;
  *(a1 + 49) = v6;
  return result;
}

uint64_t FieldValue.value.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 48);
  *(a1 + 32) = v6;
  v7 = *(v1 + 49);
  *(a1 + 33) = v7;
  return sub_1D8C5C2AC(v2, v3, v4, v5, v6, v7);
}

uint64_t FieldValueImpl.fieldSchema.getter()
{
  v1 = *v0;
  v2 = v0[1];
  return swift_unknownObjectRetain();
}

uint64_t sub_1D8C5C2AC(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4, char a5, unsigned __int8 a6)
{
  if (a6 > 8u)
  {
    if (a6 == 9)
    {

      return sub_1D8C2C5E4(result, a2);
    }

    else if (a6 == 10)
    {
    }
  }

  else if (a6 == 7)
  {
    swift_unknownObjectRetain();

    return sub_1D8C3510C(a3, a4, a5 & 1);
  }

  else if (a6 == 8)
  {
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

uint64_t sub_1D8C5C37C(uint64_t *a1, int a2)
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

uint64_t sub_1D8C5C3C4(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D8C5C440(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1D8C5C488(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SchematizedDataComposer.compose()()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v0[2];
  v38 = v4;
  ObjectType = swift_getObjectType();
  v6 = *(v3 + 48);

  v7 = v6(ObjectType, v3);
  if (v1)
  {
    goto LABEL_18;
  }

  v8 = v7;
  v9 = *(v7 + 16);
  if (v9)
  {
    v33 = MEMORY[0x1E69E7CC0];
    sub_1D8C5E014(0, v9, 0);
    v10 = 32;
    v11 = v33;
    do
    {
      v12 = *(v8 + v10);
      v33 = v11;
      v13 = *(v11 + 2);
      v14 = *(v11 + 3);
      v31 = v12;
      swift_unknownObjectRetain();
      if (v13 >= v14 >> 1)
      {
        sub_1D8C5E014((v14 > 1), v13 + 1, 1);
        v11 = v33;
      }

      *(v11 + 2) = v13 + 1;
      *&v11[16 * v13 + 32] = v31;
      v10 += 16;
      --v9;
    }

    while (v9);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
  }

  v37 = v11;
  MEMORY[0x1EEE9AC00](v15);
  v4 = (*(v3 + 96))(sub_1D8C5E034);
  v16 = v38;
  if (!*(v38 + 16))
  {

    return v4;
  }

  v33 = 0;
  v34 = 0xE000000000000000;
  sub_1D8C85124();

  v35 = 0x3A6567617373654DLL;
  v36 = 0xE900000000000020;
  MessageSchemaDescribing.asPublic()(v3, &v33);
  v17 = v34;
  v18 = swift_getObjectType();
  v19 = (*(*(v17 + 8) + 8))(v18);
  v21 = v20;
  swift_unknownObjectRelease();
  MEMORY[0x1DA7255C0](v19, v21);

  MEMORY[0x1DA7255C0](0x73646C656966202CLL, 0xEA0000000000203ALL);
  v22 = *(v16 + 16);
  if (!v22)
  {

    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_16;
  }

  v23 = sub_1D8C5DED0(*(v16 + 16), 0);
  v32 = sub_1D8C60284(&v33, v23 + 4, v22, v16);
  swift_bridgeObjectRetain_n();
  sub_1D8C2F110();
  if (v32 == v22)
  {
LABEL_16:
    v33 = v23;
    sub_1D8C5F834(&v33);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB228, &qword_1D8C877F0);
    sub_1D8C52AF8();
    v24 = sub_1D8C84D54();
    v26 = v25;

    MEMORY[0x1DA7255C0](v24, v26);

    v27 = v35;
    v28 = v36;
    sub_1D8C603DC();
    swift_allocError();
    *v29 = v27;
    *(v29 + 8) = v28;
    *(v29 + 16) = 0;
    swift_willThrow();

LABEL_18:

    return v4;
  }

  __break(1u);
  MEMORY[0x1DA725E90](0);

  __break(1u);
  return result;
}

uint64_t SchematizedDataComposer.messageSchema.getter@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  swift_getObjectType();
  return MessageSchemaDescribing.asPublic()(v3, a1);
}

__n128 SchematizedDataComposer.init(messageSchema:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  a2[1].n128_u64[0] = MEMORY[0x1DA725490](16, MEMORY[0x1E69E6158], &type metadata for SchematizedDataComposer.Container, MEMORY[0x1E69E6168]);
  result = *a1;
  *a2 = *a1;
  return result;
}

unint64_t SchematizedDataComposer.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = v3[2];
  if (*(v6 + 16) && (v8 = result, v9 = *v4, v10 = v4[1], result = sub_1D8C4668C(result, a2), (v11 & 1) != 0))
  {
    v12 = *(v6 + 56) + 40 * result;
    v13 = *v12;
    v14 = *(v12 + 32);
    if (v14 < 0)
    {

      sub_1D8C85124();

      v23[2] = 0x3A6567617373654DLL;
      v23[3] = 0xE900000000000020;
      swift_getObjectType();
      MessageSchemaDescribing.asPublic()(v10, v23);
      v18 = v23[1];
      ObjectType = swift_getObjectType();
      v20 = (*(*(v18 + 8) + 8))(ObjectType);
      v22 = v21;
      swift_unknownObjectRelease();
      MEMORY[0x1DA7255C0](v20, v22);

      MEMORY[0x1DA7255C0](0x20646C656966202CLL, 0xE800000000000000);
      MEMORY[0x1DA7255C0](v8, a2);
      MEMORY[0x1DA7255C0](0xD000000000000013, 0x80000001D8C8C060);
      result = sub_1D8C851F4();
      __break(1u);
    }

    else
    {
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      v17 = *(v12 + 8);
      *a3 = v13;
      *(a3 + 8) = v17;
      *(a3 + 16) = v15;
      *(a3 + 24) = v16;
      *(a3 + 32) = v14;

      return sub_1D8C5C2AC(v13, v17, v15, v16, v14, BYTE1(v14));
    }
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = -256;
  }

  return result;
}

double sub_1D8C5CB84@<D0>(__int128 *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 2);
  v6 = *a2;
  v5 = a2[1];
  v12 = *a1;
  v13 = v4;
  SchematizedDataComposer.subscript.getter(v6, v5, v10);
  v7 = v11;
  result = *v10;
  v9 = v10[1];
  *a3 = v10[0];
  *(a3 + 16) = v9;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_1D8C5CBE0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *(a1 + 32);
  if (v9 >> 8 <= 0xFE)
  {
    v10 = *a1;
  }

  else
  {
    v10 = 0;
  }

  if (v9 >> 8 <= 0xFE)
  {
    v11 = *(a1 + 8);
  }

  else
  {
    v11 = 0;
  }

  if (v9 >> 8 <= 0xFE)
  {
    v12 = *(a1 + 16);
  }

  else
  {
    v12 = 0;
  }

  if (v9 >> 8 <= 0xFE)
  {
    v13 = *(a1 + 24);
  }

  else
  {
    v13 = 0;
  }

  if (v9 >> 8 <= 0xFE)
  {
    v14 = *(a1 + 32);
  }

  else
  {
    v14 = -4096;
  }

  *&v16 = v10;
  *(&v16 + 1) = v11;
  v17 = v12;
  v18 = v13;
  v19 = v14;

  sub_1D8C60444(v5, v6, v7, v8, v9);
  return sub_1D8C6E80C(&v16, v3, v4);
}

uint64_t SchematizedDataComposer.subscript.setter(__int128 *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 16);
  if (v5 >> 8 <= 0xFE)
  {
    v7 = a1[1];
    v12 = *a1;
    v13 = v7;
    v14 = v5;
    v8 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v3 + 16);
    sub_1D8C7590C(&v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 16) = v11;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v12);

    return sub_1D8C31D74(v12, *(&v12 + 1), v13, *(&v13 + 1), v14);
  }

  return result;
}

void (*SchematizedDataComposer.subscript.modify(void *a1, unint64_t a2, uint64_t a3))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x90uLL);
  }

  *a1 = v7;
  v7[16] = a3;
  v7[17] = v3;
  v7[15] = a2;
  v9 = *v3;
  v10 = *(v3 + 2);
  SchematizedDataComposer.subscript.getter(a2, a3, (v7 + 10));
  return sub_1D8C5CDFC;
}

void sub_1D8C5CDFC(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[56];
    v4 = *(v2 + 16);
    v5 = *(v2 + 17);
    v6 = *(v2 + 15);
    if (v3 >> 8 <= 0xFE)
    {
      v14 = *(v2 + 12);
      v13 = *(v2 + 13);
      v16 = *(v2 + 10);
      v15 = *(v2 + 11);
      *v2 = v16;
      *(v2 + 1) = v15;
      *(v2 + 2) = v14;
      *(v2 + 3) = v13;
      v2[16] = v3;

      sub_1D8C60444(v16, v15, v14, v13, v3);
      v17 = *(v5 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v5 + 16);
      sub_1D8C7590C(v2, v6, v4, isUniquelyReferenced_nonNull_native);

      *(v5 + 16) = v22;
    }

    else
    {
      v7 = *(v2 + 16);

      sub_1D8C75164(v6, v4, &v22);

      sub_1D8C31D74(v22, v23, v24, v25, v26);
    }

    sub_1D8C60430(*(v2 + 10), *(v2 + 11), *(v2 + 12), *(v2 + 13), v2[56]);
  }

  else
  {
    v8 = v2[56];
    v9 = *(v2 + 16);
    v10 = *(v2 + 17);
    v11 = *(v2 + 15);
    if (v8 >> 8 <= 0xFE)
    {
      v19 = *(v2 + 6);
      *(v2 + 20) = *(v2 + 5);
      *(v2 + 28) = v19;
      v2[36] = v8;

      v20 = *(v10 + 16);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      v22 = *(v10 + 16);
      sub_1D8C7590C((v2 + 20), v11, v9, v21);

      *(v10 + 16) = v22;
    }

    else
    {
      v12 = *(v2 + 16);

      sub_1D8C75164(v11, v9, &v22);

      sub_1D8C31D74(v22, v23, v24, v25, v26);
    }
  }

  free(v2);
}

uint64_t SchematizedDataComposer.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2[2];
  if (!*(v4 + 16))
  {
    return 0;
  }

  v5 = *v3;
  v6 = v3[1];
  v9 = sub_1D8C4668C(a1, a2);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = *(v4 + 56) + 40 * v9;
  v12 = *(v11 + 32);
  if (v12 < 0)
  {
  }

  sub_1D8C5C2AC(*v11, *(v11 + 8), *(v11 + 16), *(v11 + 24), v12, BYTE1(v12));
  sub_1D8C85124();

  v19[2] = 0x3A6567617373654DLL;
  v19[3] = 0xE900000000000020;
  swift_getObjectType();
  MessageSchemaDescribing.asPublic()(v6, v19);
  v14 = v19[1];
  ObjectType = swift_getObjectType();
  v16 = (*(*(v14 + 8) + 8))(ObjectType);
  v18 = v17;
  swift_unknownObjectRelease();
  MEMORY[0x1DA7255C0](v16, v18);

  MEMORY[0x1DA7255C0](0x20646C656966202CLL, 0xE800000000000000);
  MEMORY[0x1DA7255C0](a1, a2);
  MEMORY[0x1DA7255C0](0xD000000000000012, 0x80000001D8C8C080);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v5 = *v2;
  v15 = *(v2 + 1);
  result = SchematizedDataComposer.subscript.getter(a1, a2);
  if (result)
  {
    v7 = result;
    v8 = *(result + 16);
    if (v8)
    {
      v16 = MEMORY[0x1E69E7CC0];
      sub_1D8C85184();
      v9 = 0;
      v10 = (v7 + 65);
      while (v9 < *(v7 + 16))
      {
        if (*v10 != 10)
        {
          goto LABEL_11;
        }

        ++v9;
        v11 = *(v10 - 33);

        sub_1D8C85154();
        v12 = *(v16 + 16);
        sub_1D8C85194();
        sub_1D8C851A4();
        sub_1D8C85164();
        v10 += 40;
        if (v8 == v9)
        {

          return v16;
        }
      }

      __break(1u);
LABEL_11:
      sub_1D8C85124();

      ObjectType = swift_getObjectType();
      v14 = (*(*(v15 + 8) + 8))(ObjectType);
      MEMORY[0x1DA7255C0](v14);

      MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
      MEMORY[0x1DA7255C0](a1, a2);
      result = sub_1D8C851F4();
      __break(1u);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return result;
}

{
  v5 = a2;
  v7 = *v2;
  v29 = *(v2 + 8);
  v8 = SchematizedDataComposer.subscript.getter(a1, a2);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 16);
  if (!v9)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v27 = a1;
  v28 = v5;
  v35 = MEMORY[0x1E69E7CC0];
  v30 = v8;
  sub_1D8C5DF74(0, v9, 0);
  v11 = v30;
  v12 = 0;
  v34 = v9;
  v13 = v35;
  v14 = (v30 + 65);
  v15 = 17;
  while (v12 < *(v11 + 16))
  {
    v7 = *(v14 - 33);
    v4 = *(v14 - 25);
    v3 = *(v14 - 17);
    v5 = *(v14 - 9);
    LOBYTE(v9) = *(v14 - 1);
    v10 = *v14;
    if (v10 == 7)
    {
      if (v15 != 17 && v15 != 12)
      {
        goto LABEL_23;
      }

      if (*(v14 - 1))
      {
        v16 = *(v14 - 33);
        ObjectType = swift_getObjectType();
        v31 = *(v4 + 48);
        v32 = ObjectType;
        v33 = v9;
        sub_1D8C5C2AC(v7, v4, v3, v5, v9, 7u);
        swift_unknownObjectRetain();
        sub_1D8C3510C(v3, v5, 1);
        v18 = v31(v3, v32, v4);
        v20 = v19;
        sub_1D8C31D98(v7, v4, v3, v5, v33, 7u);
        sub_1D8C31D98(v7, v4, v3, v5, v33, 7u);
        v15 = 12;
        v7 = v18;
        v4 = v20;
        v11 = v30;
      }

      else
      {
        sub_1D8C3510C(*(v14 - 17), *(v14 - 9), 0);
        v15 = 12;
        v7 = v3;
        v4 = v5;
      }
    }

    else
    {
      if (v10 != 8)
      {
        goto LABEL_25;
      }

      if (v15 != 17 && v15 != 8)
      {
        goto LABEL_24;
      }

      v21 = *(v14 - 25);

      v15 = 8;
    }

    v9 = *(v35 + 16);
    v22 = *(v35 + 24);
    v5 = v9 + 1;
    if (v9 >= v22 >> 1)
    {
      sub_1D8C5DF74((v22 > 1), v9 + 1, 1);
      v11 = v30;
    }

    ++v12;
    *(v35 + 16) = v5;
    v23 = v35 + 16 * v9;
    *(v23 + 32) = v7;
    *(v23 + 40) = v4;
    v14 += 40;
    if (v34 == v12)
    {

      return v13;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1D8C5C2AC(v7, v4, v3, v5, v9, v10);
  sub_1D8C85124();

  v25 = swift_getObjectType();
  v26 = (*(*(v29 + 8) + 8))(v25);
  MEMORY[0x1DA7255C0](v26);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](v27, v28);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v5 = *v2;
  v17 = *(v2 + 1);
  v6 = SchematizedDataComposer.subscript.getter(a1, a2);
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  v8 = *(v6 + 16);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v19 = MEMORY[0x1E69E7CC0];
  sub_1D8C5E0F8(0, v8, 0);
  v9 = 0;
  v10 = v19;
  v11 = v7 + 32;
  while (v9 < *(v7 + 16))
  {
    if (*(v11 + 33) != 9)
    {
      goto LABEL_14;
    }

    v18 = *v11;
    sub_1D8C2C5E4(*v11, *(v11 + 8));
    v13 = *(v19 + 16);
    v12 = *(v19 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1D8C5E0F8((v12 > 1), v13 + 1, 1);
    }

    ++v9;
    *(v19 + 16) = v13 + 1;
    *(v19 + 16 * v13 + 32) = v18;
    v11 += 40;
    if (v8 == v9)
    {

      return v10;
    }
  }

  __break(1u);
LABEL_14:
  sub_1D8C85124();

  ObjectType = swift_getObjectType();
  v16 = (*(*(v17 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v16);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v6 = a2;
  v8 = *v2;
  v30 = *(v2 + 8);
  v9 = SchematizedDataComposer.subscript.getter(a1, a2);
  if (!v9)
  {
    return 0;
  }

  v10 = *(v9 + 16);
  if (v10)
  {
    v29 = v6;
    v35 = MEMORY[0x1E69E7CC0];
    v31 = v9;
    v34 = *(v9 + 16);
    sub_1D8C5E118(0, v10, 0);
    v12 = v34;
    v13 = v31;
    v14 = 0;
    v15 = v35;
    v16 = (v31 + 65);
    do
    {
      if (v14 >= *(v13 + 16))
      {
        __break(1u);
LABEL_25:
        sub_1D8C5C2AC(v4, v3, v6, v8, v5, v11);
        sub_1D8C85124();

        ObjectType = swift_getObjectType();
        v23 = (*(*(v30 + 8) + 8))(ObjectType);
        v25 = v24;
        MEMORY[0x1DA7255C0](v23);

        MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
        MEMORY[0x1DA7255C0](a1, v29);
        while (1)
        {
          sub_1D8C851F4();
          __break(1u);
          sub_1D8C31D98(v4, v3, v25, v8, v5, 7u);

          sub_1D8C31D98(v4, v3, v25, v8, v5, 7u);

          sub_1D8C85124();
          MEMORY[0x1DA7255C0](0x20726F727245, 0xE600000000000000);
          swift_getErrorValue();
          sub_1D8C85284();
          MEMORY[0x1DA7255C0](0x7268742073616820, 0xED0000203A6E776FLL);
          v26 = swift_getObjectType();
          v27 = (*(*(v30 + 8) + 8))(v26);
          v25 = v28;
          MEMORY[0x1DA7255C0](v27);

          MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
          MEMORY[0x1DA7255C0](a1, v29);
        }
      }

      v4 = *(v16 - 33);
      v3 = *(v16 - 25);
      v6 = *(v16 - 17);
      v8 = *(v16 - 9);
      v5 = *(v16 - 1);
      v11 = *v16;
      if (v11 <= 1)
      {
        if (*v16)
        {
          if (v11 != 1)
          {
            goto LABEL_25;
          }

          v4 = v4;
        }

        else
        {
          v4 = v4;
        }
      }

      else if (v11 - 2 >= 2)
      {
        if (v11 == 7)
        {
          if (*(v16 - 1))
          {
            v4 = *(v16 - 17);
          }

          else
          {
            v17 = *(v16 - 33);
            v18 = swift_getObjectType();
            v32 = *(v3 + 40);
            v33 = v18;
            sub_1D8C5C2AC(v4, v3, v6, v8, v5, 7u);
            swift_unknownObjectRetain();
            sub_1D8C3510C(v6, v8, 0);
            v19 = v32(v6, v8, v33, v3);
            sub_1D8C31D98(v4, v3, v6, v8, v5, 7u);
            sub_1D8C31D98(v4, v3, v6, v8, v5, 7u);
            v4 = v19;
            v13 = v31;
            v12 = v34;
          }
        }

        else
        {
          if (v11 != 6)
          {
            goto LABEL_25;
          }

          v4 = *(v16 - 33) & 1;
        }
      }

      v8 = *(v35 + 16);
      v20 = *(v35 + 24);
      v6 = v8 + 1;
      if (v8 >= v20 >> 1)
      {
        sub_1D8C5E118((v20 > 1), v8 + 1, 1);
        v12 = v34;
        v13 = v31;
      }

      ++v14;
      *(v35 + 16) = v6;
      *(v35 + 8 * v8 + 32) = v4;
      v16 += 40;
    }

    while (v12 != v14);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v15;
}

{
  v6 = *v2;
  v20 = *(v2 + 1);
  v7 = SchematizedDataComposer.subscript.getter(a1, a2);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v21 = MEMORY[0x1E69E7CC0];
  v19 = v7;
  sub_1D8C5E148(0, v8, 0);
  v10 = v19;
  v11 = 0;
  v12 = v21;
  v13 = (v19 + 65);
  while (v11 < *(v10 + 16))
  {
    v3 = *(v13 - 33);
    v9 = *v13;
    if (v9 != 6)
    {
      goto LABEL_14;
    }

    v15 = *(v21 + 16);
    v14 = *(v21 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D8C5E148((v14 > 1), v15 + 1, 1);
      v10 = v19;
    }

    ++v11;
    *(v21 + 16) = v15 + 1;
    *(v21 + v15 + 32) = v3 & 1;
    v13 += 40;
    if (v8 == v11)
    {

      return v12;
    }
  }

  __break(1u);
LABEL_14:
  sub_1D8C5C2AC(v3, *(v13 - 25), *(v13 - 17), *(v13 - 9), *(v13 - 1), v9);
  sub_1D8C85124();

  ObjectType = swift_getObjectType();
  v18 = (*(*(v20 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v18);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v6 = *v2;
  v20 = *(v2 + 1);
  v7 = SchematizedDataComposer.subscript.getter(a1, a2);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v21 = MEMORY[0x1E69E7CC0];
  v19 = v7;
  sub_1D8C5E168(0, v8, 0);
  v10 = v19;
  v11 = 0;
  v12 = v21;
  v13 = (v19 + 65);
  while (v11 < *(v10 + 16))
  {
    v3 = *(v13 - 33);
    v9 = *v13;
    if (*v13)
    {
      goto LABEL_14;
    }

    v15 = *(v21 + 16);
    v14 = *(v21 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D8C5E168((v14 > 1), v15 + 1, 1);
      v10 = v19;
    }

    ++v11;
    *(v21 + 16) = v15 + 1;
    *(v21 + 4 * v15 + 32) = v3;
    v13 += 40;
    if (v8 == v11)
    {

      return v12;
    }
  }

  __break(1u);
LABEL_14:
  sub_1D8C5C2AC(v3, *(v13 - 25), *(v13 - 17), *(v13 - 9), *(v13 - 1), v9);
  sub_1D8C85124();

  ObjectType = swift_getObjectType();
  v18 = (*(*(v20 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v18);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v6 = *v2;
  v20 = *(v2 + 1);
  v7 = SchematizedDataComposer.subscript.getter(a1, a2);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v21 = MEMORY[0x1E69E7CC0];
  v19 = v7;
  sub_1D8C5E198(0, v8, 0);
  v10 = v19;
  v11 = 0;
  v12 = v21;
  v13 = (v19 + 65);
  while (v11 < *(v10 + 16))
  {
    v3 = *(v13 - 33);
    v9 = *v13;
    if (v9 != 2)
    {
      goto LABEL_14;
    }

    v15 = *(v21 + 16);
    v14 = *(v21 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D8C5E198((v14 > 1), v15 + 1, 1);
      v10 = v19;
    }

    ++v11;
    *(v21 + 16) = v15 + 1;
    *(v21 + 8 * v15 + 32) = v3;
    v13 += 40;
    if (v8 == v11)
    {

      return v12;
    }
  }

  __break(1u);
LABEL_14:
  sub_1D8C5C2AC(v3, *(v13 - 25), *(v13 - 17), *(v13 - 9), *(v13 - 1), v9);
  sub_1D8C85124();

  ObjectType = swift_getObjectType();
  v18 = (*(*(v20 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v18);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v6 = *v2;
  v20 = *(v2 + 1);
  v7 = SchematizedDataComposer.subscript.getter(a1, a2);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v21 = MEMORY[0x1E69E7CC0];
  v19 = v7;
  sub_1D8C5E1C8(0, v8, 0);
  v10 = v19;
  v11 = 0;
  v12 = v21;
  v13 = (v19 + 65);
  while (v11 < *(v10 + 16))
  {
    v3 = *(v13 - 33);
    v9 = *v13;
    if (v9 != 1)
    {
      goto LABEL_14;
    }

    v15 = *(v21 + 16);
    v14 = *(v21 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D8C5E1C8((v14 > 1), v15 + 1, 1);
      v10 = v19;
    }

    ++v11;
    *(v21 + 16) = v15 + 1;
    *(v21 + 4 * v15 + 32) = v3;
    v13 += 40;
    if (v8 == v11)
    {

      return v12;
    }
  }

  __break(1u);
LABEL_14:
  sub_1D8C5C2AC(v3, *(v13 - 25), *(v13 - 17), *(v13 - 9), *(v13 - 1), v9);
  sub_1D8C85124();

  ObjectType = swift_getObjectType();
  v18 = (*(*(v20 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v18);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v6 = *v2;
  v20 = *(v2 + 1);
  v7 = SchematizedDataComposer.subscript.getter(a1, a2);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v21 = MEMORY[0x1E69E7CC0];
  v19 = v7;
  sub_1D8C5E1F8(0, v8, 0);
  v10 = v19;
  v11 = 0;
  v12 = v21;
  v13 = (v19 + 65);
  while (v11 < *(v10 + 16))
  {
    v3 = *(v13 - 33);
    v9 = *v13;
    if (v9 != 3)
    {
      goto LABEL_14;
    }

    v15 = *(v21 + 16);
    v14 = *(v21 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D8C5E1F8((v14 > 1), v15 + 1, 1);
      v10 = v19;
    }

    ++v11;
    *(v21 + 16) = v15 + 1;
    *(v21 + 8 * v15 + 32) = v3;
    v13 += 40;
    if (v8 == v11)
    {

      return v12;
    }
  }

  __break(1u);
LABEL_14:
  sub_1D8C5C2AC(v3, *(v13 - 25), *(v13 - 17), *(v13 - 9), *(v13 - 1), v9);
  sub_1D8C85124();

  ObjectType = swift_getObjectType();
  v18 = (*(*(v20 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v18);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v6 = *v2;
  v20 = *(v2 + 1);
  v7 = SchematizedDataComposer.subscript.getter(a1, a2);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v21 = MEMORY[0x1E69E7CC0];
  v19 = v7;
  sub_1D8C5E228(0, v8, 0);
  v10 = v19;
  v11 = 0;
  v12 = v21;
  v13 = (v19 + 65);
  while (v11 < *(v10 + 16))
  {
    v3 = *(v13 - 33);
    v9 = *v13;
    if (v9 != 4)
    {
      goto LABEL_14;
    }

    v15 = *(v21 + 16);
    v14 = *(v21 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D8C5E228((v14 > 1), v15 + 1, 1);
      v10 = v19;
    }

    ++v11;
    *(v21 + 16) = v15 + 1;
    *(v21 + 4 * v15 + 32) = v3;
    v13 += 40;
    if (v8 == v11)
    {

      return v12;
    }
  }

  __break(1u);
LABEL_14:
  sub_1D8C5C2AC(v3, *(v13 - 25), *(v13 - 17), *(v13 - 9), *(v13 - 1), v9);
  sub_1D8C85124();

  ObjectType = swift_getObjectType();
  v18 = (*(*(v20 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v18);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v6 = *v2;
  v20 = *(v2 + 1);
  v7 = SchematizedDataComposer.subscript.getter(a1, a2);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v7 + 16);
  if (!v8)
  {

    return MEMORY[0x1E69E7CC0];
  }

  v21 = MEMORY[0x1E69E7CC0];
  v19 = v7;
  sub_1D8C5E248(0, v8, 0);
  v10 = v19;
  v11 = 0;
  v12 = v21;
  v13 = (v19 + 65);
  while (v11 < *(v10 + 16))
  {
    v3 = *(v13 - 33);
    v9 = *v13;
    if (v9 != 5)
    {
      goto LABEL_14;
    }

    v15 = *(v21 + 16);
    v14 = *(v21 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D8C5E248((v14 > 1), v15 + 1, 1);
      v10 = v19;
    }

    ++v11;
    *(v21 + 16) = v15 + 1;
    *(v21 + 8 * v15 + 32) = v3;
    v13 += 40;
    if (v8 == v11)
    {

      return v12;
    }
  }

  __break(1u);
LABEL_14:
  sub_1D8C5C2AC(v3, *(v13 - 25), *(v13 - 17), *(v13 - 9), *(v13 - 1), v9);
  sub_1D8C85124();

  ObjectType = swift_getObjectType();
  v18 = (*(*(v20 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v18);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a1, a2);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

uint64_t sub_1D8C5D178(void *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  if (*a1)
  {
    v5 = 0x8000;
  }

  else
  {
    v5 = -4096;
  }

  v7 = *a1;
  v8 = 0;
  v9 = 0;
  v10 = v5;

  return sub_1D8C6E80C(&v7, v3, v4);
}

uint64_t SchematizedDataComposer.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v10 = a1;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0x8000;
    v6 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v3 + 16);
    sub_1D8C7590C(&v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 16) = v9;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v10);

    return sub_1D8C31D74(v10, v11, v12, v13, v14);
  }

  return result;
}

{
  v4 = v3;
  v7 = *v3;
  v8 = v3[1];
  ObjectType = swift_getObjectType();
  MessageSchemaDescribing.asPublic()(v8, &v50);
  v10 = v51;
  v11 = swift_getObjectType();
  (*(v10 + 56))(a2, a3, v11, v10);
  v13 = v12;
  swift_getObjectType();
  FieldSchemaDescribing.asPublic()(v13, &v52);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = v53;
  v15 = swift_getObjectType();
  (*(v14 + 56))(&v50, v15, v14);
  v17 = v50;
  v16 = v51;
  if (!(v51 >> 62))
  {
    if (a1)
    {
      v18 = *(a1 + 16);
      if (v18)
      {
        v44 = a3;
        v46 = v3;
        v52 = MEMORY[0x1E69E7CC0];
        sub_1D8C5E058(0, v18, 0);
        v19 = v52;
        v20 = (a1 + 40);
        do
        {
          v21 = *(v20 - 1);
          v22 = *v20;

          sub_1D8C2B50C(v17, v16);
          v52 = v19;
          v24 = *(v19 + 16);
          v23 = *(v19 + 24);
          if (v24 >= v23 >> 1)
          {
            sub_1D8C5E058((v23 > 1), v24 + 1, 1);
            v19 = v52;
          }

          *(v19 + 16) = v24 + 1;
          v25 = v19 + 40 * v24;
          *(v25 + 32) = v17;
          *(v25 + 40) = v16;
          *(v25 + 48) = v21;
          *(v25 + 56) = v22;
          *(v25 + 64) = 1792;
          v20 += 2;
          --v18;
        }

        while (v18);

        a3 = v44;
        v4 = v46;
      }

      else
      {

        v19 = MEMORY[0x1E69E7CC0];
      }

      v52 = v19;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0x8000;
      v37 = v4[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v4[2];
      sub_1D8C7590C(&v52, a2, a3, isUniquelyReferenced_nonNull_native);
      swift_unknownObjectRelease();

      v39 = v17;
      v40 = v16;
LABEL_26:
      result = sub_1D8C2BBF0(v39, v40);
      v4[2] = v49;
      return result;
    }

    sub_1D8C75164(a2, a3, &v52);

    sub_1D8C31D74(v52, v53, v54, v55, v56);
    swift_unknownObjectRelease();
    v34 = v17;
    v35 = v16;
    return sub_1D8C2BBF0(v34, v35);
  }

  if (v51 >> 62 == 2 && v50 == 13 && v51 == 0x8000000000000000)
  {
    if (a1)
    {
      v47 = v3;
      v26 = *(a1 + 16);
      if (v26)
      {
        v45 = a3;
        v52 = MEMORY[0x1E69E7CC0];
        sub_1D8C5E058(0, v26, 0);
        v27 = v52;
        v28 = (a1 + 40);
        do
        {
          v30 = *(v28 - 1);
          v29 = *v28;
          v52 = v27;
          v32 = *(v27 + 16);
          v31 = *(v27 + 24);

          if (v32 >= v31 >> 1)
          {
            sub_1D8C5E058((v31 > 1), v32 + 1, 1);
            v27 = v52;
          }

          *(v27 + 16) = v32 + 1;
          v33 = v27 + 40 * v32;
          *(v33 + 32) = v30;
          *(v33 + 40) = v29;
          *(v33 + 48) = 0;
          *(v33 + 56) = 0;
          *(v33 + 64) = 2048;
          v28 += 2;
          --v26;
        }

        while (v26);

        a3 = v45;
      }

      else
      {

        v27 = MEMORY[0x1E69E7CC0];
      }

      v52 = v27;
      v53 = 0;
      v54 = 0;
      v55 = 0;
      v56 = 0x8000;
      v4 = v47;
      v41 = v47[2];
      v42 = swift_isUniquelyReferenced_nonNull_native();
      v49 = v47[2];
      sub_1D8C7590C(&v52, a2, a3, v42);
      swift_unknownObjectRelease();

      v39 = 13;
      v40 = 0x8000000000000000;
      goto LABEL_26;
    }

    sub_1D8C75164(a2, a3, &v52);

    sub_1D8C31D74(v52, v53, v54, v55, v56);
    swift_unknownObjectRelease();
    v34 = 13;
    v35 = 0x8000000000000000;
    return sub_1D8C2BBF0(v34, v35);
  }

  v52 = 0;
  v53 = 0xE000000000000000;
  sub_1D8C85124();

  v52 = 0x73696D2065707954;
  v53 = 0xEF203A686374616DLL;
  v43 = (*(*(v8 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v43);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](a2, a3);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    v8 = *(a1 + 16);
    if (v8)
    {
      v20 = v3;
      v23 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v8, 0);
      v9 = v23;
      v10 = (a1 + 40);
      do
      {
        v11 = *(v10 - 1);
        v12 = *v10;
        sub_1D8C2C5E4(v11, *v10);
        v23 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D8C5E058((v13 > 1), v14 + 1, 1);
          v9 = v23;
        }

        v10 += 2;
        *(v9 + 16) = v14 + 1;
        v15 = v9 + 40 * v14;
        *(v15 + 32) = v11;
        *(v15 + 40) = v12;
        *(v15 + 48) = 0;
        *(v15 + 56) = 0;
        *(v15 + 64) = 2304;
        --v8;
      }

      while (v8);

      v4 = v20;
      v5 = a3;
      v6 = a2;
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v23 = v9;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0x8000;
    v17 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1D8C7590C(&v23, v6, v5, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v22;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v23);

    return sub_1D8C31D74(v23, v24, v25, v26, v27);
  }

  return result;
}

{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  if (!a1)
  {
    sub_1D8C75164(a2, a3, &v97);

    return sub_1D8C31D74(v97, v98, v99, v100, v101);
  }

  v8 = *v3;
  v7 = v3[1];
  ObjectType = swift_getObjectType();
  MessageSchemaDescribing.asPublic()(v7, &v96);
  v10 = *(&v96 + 1);
  v11 = swift_getObjectType();
  (*(v10 + 56))(v6, v5, v11, v10);
  v13 = v12;
  swift_getObjectType();
  FieldSchemaDescribing.asPublic()(v13, &v97);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v14 = v98;
  v15 = swift_getObjectType();
  (*(v14 + 56))(&v96, v15, v14);
  v16 = v96;
  if (!(*(&v96 + 1) >> 62))
  {
    v91 = v3;
    v17 = *(a1 + 16);
    if (v17)
    {
      v87 = v6;
      v84 = v5;
      v97 = MEMORY[0x1E69E7CC0];
      swift_unknownObjectRetain();
      sub_1D8C5E058(0, v17, 0);
      v18 = a1;
      v19 = 32;
      v20 = v97;
      do
      {
        v21 = *(v18 + v19);
        sub_1D8C2B50C(v16, *(&v16 + 1));
        v97 = v20;
        v23 = *(v20 + 16);
        v22 = *(v20 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D8C5E058((v22 > 1), v23 + 1, 1);
          v18 = a1;
          v20 = v97;
        }

        *(v20 + 16) = v23 + 1;
        v24 = v20 + 40 * v23;
        *(v24 + 32) = v16;
        *(v24 + 48) = v21;
        *(v24 + 56) = 0;
        *(v24 + 64) = 1793;
        v19 += 8;
        --v17;
      }

      while (v17);

      v5 = v84;
      v6 = v87;
    }

    else
    {
      sub_1D8C2B50C(v96, *(&v96 + 1));

      v20 = MEMORY[0x1E69E7CC0];
    }

    v97 = v20;
    v98 = 0;
    v99 = 0;
    v100 = 0;
    v101 = 0x8000;
    v4 = v91;
    v48 = v91[2];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v95 = v91[2];
    sub_1D8C7590C(&v97, v6, v5, isUniquelyReferenced_nonNull_native);
    swift_unknownObjectRelease();

    sub_1D8C2BBF0(v16, *(&v16 + 1));
LABEL_38:
    result = sub_1D8C2BBF0(v16, *(&v16 + 1));
    v50 = v95;
LABEL_69:
    v4[2] = v50;
    return result;
  }

  if (*(&v96 + 1) >> 62 == 2)
  {
    if (__PAIR128__(0x8000000000000000, 2) >= v96)
    {
      if (!(v96 | *(&v96 + 1) ^ 0x8000000000000000))
      {
        goto LABEL_30;
      }

      if (*(&v96 + 1) != 0x8000000000000000 || v96 != 1)
      {
        if (*(&v96 + 1) != 0x8000000000000000 || v96 != 2)
        {
          goto LABEL_74;
        }

        goto LABEL_30;
      }
    }

    else
    {
      v26 = v96 - 5;
      if ((v96 - 5) <= 7)
      {
        v92 = v3;
        if (((1 << v26) & 0x15) != 0)
        {
          v27 = *(a1 + 16);
          if (v27)
          {
            v88 = v6;
            v85 = v5;
            v97 = MEMORY[0x1E69E7CC0];
            sub_1D8C5E058(0, v27, 0);
            v28 = 0;
            v29 = v97;
            v30 = *(v97 + 16);
            v31 = 40 * v30;
            do
            {
              v32 = *(a1 + 32 + 8 * v28);
              v97 = v29;
              v33 = *(v29 + 24);
              v34 = v30 + v28 + 1;
              if (v30 + v28 >= v33 >> 1)
              {
                sub_1D8C5E058((v33 > 1), v30 + v28 + 1, 1);
                v29 = v97;
              }

              ++v28;
              *(v29 + 16) = v34;
              v35 = v29 + v31;
              *(v35 + 32) = v32;
              *(v35 + 40) = 0;
              *(v35 + 48) = 0;
              *(v35 + 56) = 0;
              v31 += 40;
              *(v35 + 64) = 512;
            }

            while (v27 != v28);
LABEL_45:

            v5 = v85;
            v6 = v88;
LABEL_47:
            v97 = v29;
            v98 = 0;
            v99 = 0;
            v100 = 0;
            v101 = 0x8000;
            v4 = v3;
LABEL_68:
            v78 = v4[2];
            v79 = swift_isUniquelyReferenced_nonNull_native();
            *&v96 = v4[2];
            sub_1D8C7590C(&v97, v6, v5, v79);
            swift_unknownObjectRelease();

            v50 = v96;
            goto LABEL_69;
          }

          goto LABEL_46;
        }

        if (((1 << v26) & 0xA) != 0)
        {
          v51 = *(a1 + 16);
          if (v51)
          {
            v88 = v6;
            v85 = v5;
            v97 = MEMORY[0x1E69E7CC0];
            sub_1D8C5E058(0, v51, 0);
            v52 = 0;
            v29 = v97;
            v53 = *(v97 + 16);
            v54 = 40 * v53;
            do
            {
              v55 = *(a1 + 32 + 8 * v52);
              v97 = v29;
              v56 = *(v29 + 24);
              v57 = v53 + v52 + 1;
              if (v53 + v52 >= v56 >> 1)
              {
                sub_1D8C5E058((v56 > 1), v53 + v52 + 1, 1);
                v29 = v97;
              }

              ++v52;
              *(v29 + 16) = v57;
              v58 = v29 + v54;
              *(v58 + 32) = v55;
              *(v58 + 40) = 0;
              *(v58 + 48) = 0;
              *(v58 + 56) = 0;
              v54 += 40;
              *(v58 + 64) = 768;
            }

            while (v51 != v52);
            goto LABEL_45;
          }

LABEL_46:

          v29 = MEMORY[0x1E69E7CC0];
          goto LABEL_47;
        }

        if (v96 == 12)
        {
          v59 = *(a1 + 16);
          if (v59)
          {
            v89 = v6;
            v86 = v5;
            v97 = MEMORY[0x1E69E7CC0];
            sub_1D8C5E058(0, v59, 0);
            v60 = 0;
            v61 = v97;
            v62 = *(v97 + 16);
            v63 = 40 * v62;
            do
            {
              v64 = *(a1 + 32 + 8 * v60);
              v97 = v61;
              v65 = *(v61 + 24);
              v66 = v62 + v60 + 1;
              if (v62 + v60 >= v65 >> 1)
              {
                sub_1D8C5E058((v65 > 1), v62 + v60 + 1, 1);
                v61 = v97;
              }

              ++v60;
              *(v61 + 16) = v66;
              v67 = v61 + v63;
              *(v67 + 32) = v64 != 0;
              *(v67 + 40) = 0;
              *(v67 + 48) = 0;
              *(v67 + 56) = 0;
              *(v67 + 64) = 1536;
              v63 += 40;
            }

            while (v59 != v60);

            v5 = v86;
            v6 = v89;
            v4 = v92;
          }

          else
          {

            v61 = MEMORY[0x1E69E7CC0];
          }

          v97 = v61;
          v98 = 0;
          v99 = 0;
          v100 = 0;
          v101 = 0x8000;
          v82 = v4[2];
          v83 = swift_isUniquelyReferenced_nonNull_native();
          v95 = v4[2];
          sub_1D8C7590C(&v97, v6, v5, v83);
          swift_unknownObjectRelease();

          goto LABEL_38;
        }
      }

      if (*(&v96 + 1) != 0x8000000000000000 || v96 != 3)
      {
        if (*(&v96 + 1) != 0x8000000000000000 || v96 != 4)
        {
          goto LABEL_74;
        }

LABEL_30:
        v38 = *(a1 + 16);
        if (v38)
        {
          v39 = v3;
          v97 = MEMORY[0x1E69E7CC0];
          sub_1D8C5E058(0, v38, 0);
          v40 = v97;
          v41 = *(v97 + 16);
          v42 = 40 * v41;
          v43 = 32;
          do
          {
            v44 = *(a1 + v43);
            v97 = v40;
            v45 = *(v40 + 24);
            v46 = v41 + 1;
            if (v41 >= v45 >> 1)
            {
              sub_1D8C5E058((v45 > 1), v41 + 1, 1);
              v40 = v97;
            }

            *(v40 + 16) = v46;
            v47 = v40 + v42;
            *(v47 + 32) = v44;
            *(v47 + 40) = 0;
            v42 += 40;
            *(v47 + 48) = 0;
            *(v47 + 56) = 0;
            v43 += 8;
            v41 = v46;
            *(v47 + 64) = 0;
            --v38;
          }

          while (v38);

          v4 = v39;
          goto LABEL_67;
        }

LABEL_66:

        v40 = MEMORY[0x1E69E7CC0];
LABEL_67:
        v97 = v40;
        v98 = 0;
        v99 = 0;
        v100 = 0;
        v101 = 0x8000;
        goto LABEL_68;
      }
    }

    v69 = *(a1 + 16);
    if (v69)
    {
      v90 = v6;
      v93 = v3;
      v70 = v5;
      v97 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v69, 0);
      v71 = 0;
      v40 = v97;
      v72 = *(v97 + 16);
      v73 = 40 * v72;
      do
      {
        v74 = *(a1 + 32 + 8 * v71);
        v97 = v40;
        v75 = *(v40 + 24);
        v76 = v72 + v71 + 1;
        if (v72 + v71 >= v75 >> 1)
        {
          sub_1D8C5E058((v75 > 1), v72 + v71 + 1, 1);
          v40 = v97;
        }

        ++v71;
        *(v40 + 16) = v76;
        v77 = v40 + v73;
        *(v77 + 32) = v74;
        *(v77 + 40) = 0;
        *(v77 + 48) = 0;
        *(v77 + 56) = 0;
        v73 += 40;
        *(v77 + 64) = 256;
      }

      while (v69 != v71);

      v5 = v70;
      v6 = v90;
      v4 = v93;
      goto LABEL_67;
    }

    goto LABEL_66;
  }

LABEL_74:
  v97 = 0;
  v98 = 0xE000000000000000;
  sub_1D8C85124();

  v97 = 0x73696D2065707954;
  v98 = 0xEF203A686374616DLL;
  v81 = (*(*(v7 + 8) + 8))(ObjectType);
  MEMORY[0x1DA7255C0](v81);

  MEMORY[0x1DA7255C0](0x3A646C656966202CLL, 0xE900000000000020);
  MEMORY[0x1DA7255C0](v6, v5);
  result = sub_1D8C851F4();
  __break(1u);
  return result;
}

{
  v4 = v3;
  if (a1)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v22 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v7, 0);
      v8 = a1;
      v9 = v22;
      v10 = *(v22 + 16);
      v11 = 40 * v10;
      v12 = 32;
      do
      {
        v13 = *(v8 + v12);
        v22 = v9;
        v14 = *(v9 + 24);
        v15 = v10 + 1;
        if (v10 >= v14 >> 1)
        {
          sub_1D8C5E058((v14 > 1), v10 + 1, 1);
          v8 = a1;
          v9 = v22;
        }

        *(v9 + 16) = v15;
        v16 = v9 + v11;
        *(v16 + 32) = v13;
        *(v16 + 40) = 0;
        v11 += 40;
        *(v16 + 48) = 0;
        *(v16 + 56) = 0;
        ++v12;
        v10 = v15;
        *(v16 + 64) = 1536;
        --v7;
      }

      while (v7);
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v22 = v9;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0x8000;
    v18 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v4 + 16);
    sub_1D8C7590C(&v22, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v21;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v22);

    return sub_1D8C31D74(v22, v23, v24, v25, v26);
  }

  return result;
}

{
  v4 = v3;
  if (a1)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v22 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v7, 0);
      v9 = a1;
      v10 = v22;
      v11 = *(v22 + 16);
      v12 = 40 * v11;
      v13 = 32;
      do
      {
        v14 = *(v9 + v13);
        v22 = v10;
        v15 = *(v10 + 24);
        v16 = v11 + 1;
        if (v11 >= v15 >> 1)
        {
          sub_1D8C5E058((v15 > 1), v11 + 1, 1);
          v9 = a1;
          v10 = v22;
        }

        *(v10 + 16) = v16;
        v17 = v10 + v12;
        *(v17 + 32) = v14;
        *(v17 + 40) = 0;
        v12 += 40;
        *(v17 + 48) = 0;
        *(v17 + 56) = 0;
        v13 += 4;
        v11 = v16;
        *(v17 + 64) = 0;
        --v7;
      }

      while (v7);
    }

    else
    {

      v10 = MEMORY[0x1E69E7CC0];
    }

    v22 = v10;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0x8000;
    v19 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v4 + 16);
    sub_1D8C7590C(&v22, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v21;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v22);

    return sub_1D8C31D74(v22, v23, v24, v25, v26);
  }

  return result;
}

{
  return sub_1D8C65EF0(a1, a2, a3, 2);
}

{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v23 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v7, 0);
      v8 = 0;
      v9 = v23;
      v10 = *(v23 + 16);
      v11 = 40 * v10;
      do
      {
        v12 = *(a1 + 32 + 4 * v8);
        v23 = v9;
        v13 = *(v9 + 24);
        v14 = v10 + v8 + 1;
        if (v10 + v8 >= v13 >> 1)
        {
          sub_1D8C5E058((v13 > 1), v10 + v8 + 1, 1);
          v9 = v23;
        }

        ++v8;
        *(v9 + 16) = v14;
        v15 = v9 + v11;
        *(v15 + 32) = v12;
        *(v15 + 40) = 0;
        *(v15 + 48) = 0;
        *(v15 + 56) = 0;
        v11 += 40;
        *(v15 + 64) = 256;
      }

      while (v7 != v8);

      v6 = a2;
      v5 = a3;
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v23 = v9;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0x8000;
    v17 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1D8C7590C(&v23, v6, v5, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v22;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v23);

    return sub_1D8C31D74(v23, v24, v25, v26, v27);
  }

  return result;
}

{
  return sub_1D8C65EF0(a1, a2, a3, 3);
}

{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v23 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v7, 0);
      v8 = 0;
      v9 = v23;
      v10 = *(v23 + 16);
      v11 = 40 * v10;
      do
      {
        v12 = *(a1 + 32 + 4 * v8);
        v23 = v9;
        v13 = *(v9 + 24);
        v14 = v10 + v8 + 1;
        if (v10 + v8 >= v13 >> 1)
        {
          sub_1D8C5E058((v13 > 1), v10 + v8 + 1, 1);
          v9 = v23;
        }

        ++v8;
        *(v9 + 16) = v14;
        v15 = v9 + v11;
        *(v15 + 32) = v12;
        *(v15 + 40) = 0;
        *(v15 + 48) = 0;
        *(v15 + 56) = 0;
        v11 += 40;
        *(v15 + 64) = 1024;
      }

      while (v7 != v8);

      v6 = a2;
      v5 = a3;
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v23 = v9;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0x8000;
    v17 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1D8C7590C(&v23, v6, v5, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v22;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v23);

    return sub_1D8C31D74(v23, v24, v25, v26, v27);
  }

  return result;
}

{
  v4 = v3;
  v5 = a3;
  v6 = a2;
  if (a1)
  {
    v7 = *(a1 + 16);
    if (v7)
    {
      v23 = MEMORY[0x1E69E7CC0];
      sub_1D8C5E058(0, v7, 0);
      v8 = 0;
      v9 = v23;
      v10 = *(v23 + 16);
      v11 = 40 * v10;
      do
      {
        v12 = *(a1 + 32 + 8 * v8);
        v23 = v9;
        v13 = *(v9 + 24);
        v14 = v10 + v8 + 1;
        if (v10 + v8 >= v13 >> 1)
        {
          sub_1D8C5E058((v13 > 1), v10 + v8 + 1, 1);
          v9 = v23;
        }

        ++v8;
        *(v9 + 16) = v14;
        v15 = v9 + v11;
        *(v15 + 32) = v12;
        *(v15 + 40) = 0;
        *(v15 + 48) = 0;
        *(v15 + 56) = 0;
        v11 += 40;
        *(v15 + 64) = 1280;
      }

      while (v7 != v8);

      v6 = a2;
      v5 = a3;
    }

    else
    {

      v9 = MEMORY[0x1E69E7CC0];
    }

    v23 = v9;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0x8000;
    v17 = *(v4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *(v4 + 16);
    sub_1D8C7590C(&v23, v6, v5, isUniquelyReferenced_nonNull_native);

    *(v4 + 16) = v22;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v23);

    return sub_1D8C31D74(v23, v24, v25, v26, v27);
  }

  return result;
}

{
  if ((a1 & 0x100000000) != 0)
  {
    sub_1D8C75164(a2, a3, &v10);

    return sub_1D8C31D74(v10, v11, v12, v13, v14);
  }

  else
  {
    v10 = a1;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v5 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v3 + 16);
    sub_1D8C7590C(&v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 16) = v9;
  }

  return result;
}

{
  if (a1)
  {
    v10 = a1;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 2560;
    v6 = *(v3 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v3 + 16);
    sub_1D8C7590C(&v10, a2, a3, isUniquelyReferenced_nonNull_native);

    *(v3 + 16) = v9;
  }

  else
  {
    sub_1D8C75164(a2, a3, &v10);

    return sub_1D8C31D74(v10, v11, v12, v13, v14);
  }

  return result;
}

{
  return sub_1D8C71894(a1, a2, a3, 256);
}

{
  return sub_1D8C71894(a1, a2, a3, 1024);
}